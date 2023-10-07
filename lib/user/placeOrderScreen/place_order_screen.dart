import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shop_zone/user/global/global.dart';
import 'package:shop_zone/user/models/cart.dart';
import 'package:shop_zone/user/userPreferences/current_user.dart';
import '../../api_key.dart';
import '../sellersScreens/home_screen.dart';
import 'package:http/http.dart' as http;

class PlaceOrderScreen extends StatefulWidget {
  final String? addressID;
  final int? totalAmount;
  final String? sellerUID;
  final String? cartId;
  final Carts? model;

  PlaceOrderScreen({
    this.sellerUID,
    this.addressID,
    this.totalAmount,
    this.cartId,
    this.model,
  });

  @override
  State<PlaceOrderScreen> createState() => _PlaceOrderScreenState();
}

class _PlaceOrderScreenState extends State<PlaceOrderScreen> {
  String orderId = DateTime.now().millisecondsSinceEpoch.toString();
  final CurrentUser currentUserController = Get.put(CurrentUser());

  late String userName;
  late String userEmail;
  late String userID;

  Future<bool> saveOrderToBackend(Map<String, dynamic> orderData) async {
    try {
      var response = await http.post(
        Uri.parse(API.saveOrder),
        body: jsonEncode(orderData),
        headers: {"Content-Type": "application/json"},
      );

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        if (!data["success"]) {
          print("Server Error: ${data['message']}");
        }
        return data["success"];
      } else {
        print("HTTP Error: ${response.statusCode}");
        return false;
      }
    } catch (e) {
      print("Error in saveOrderToBackend: ${e.toString()}");
      return false;
    }
  }

  Future<void> removeItemFromCart() async {
    try {
      final response = await http.post(
        Uri.parse(API.deleteItemFromCart),
        body: {
          'userId': userID,
          'itemId': widget.model?.itemID,
        },
      );

      if (response.statusCode == 200) {
        Fluttertoast.showToast(msg: 'Item removed successfully!');
      } else {
        Fluttertoast.showToast(msg: 'Failed to remove item. Please try again.');
      }
    } catch (e) {
      print("Error in removeItemFromCart: ${e.toString()}");
      Fluttertoast.showToast(msg: 'Error removing item from cart.');
    }
  }

  Future<void> orderDetails() async {
    try {
      bool isSaved = await saveOrderToBackend({
        "addressID": widget.addressID,
        "totalAmount": widget.model?.totalPrice,
        "orderBy": userID,
        "productIDs": widget.model?.cartId,
        "paymentDetails": "Cash On Delivery",
        "orderTime": DateTime.now()
            .toString()
            .split('.')[0], // Format: 2023-08-25 10:40:32
        "orderId": orderId,
        "isSuccess": true,
        "sellerUID": widget.model?.sellerUID,
        "status": "normal",
        "itemQuantity": widget.model?.itemCounter,
        "itemID": widget.model?.itemID,
      });

      if (isSaved) {
        await sendNotificationToSeller(
          widget.model?.sellerUID,
          orderId,
        );
        await removeItemFromCart();
        Fluttertoast.showToast(msg: "Order placed successfully.");
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      } else {
        Fluttertoast.showToast(msg: "Error saving order");
      }
    } catch (e) {
      Fluttertoast.showToast(msg: "Error in orderDetails: ${e.toString()}");
    }
  }

  sendNotificationToSeller(sellerUID, userOrderID) async {
    //!--------------------------------------------------------
    if (sellerUID == null) {
      print("sellerUID is null");
      return;
    }
    print("sellerUID is ${sellerUID}");
    String sellerDeviceToken = await getSellerDeviceTokenFromAPI(sellerUID);

    
    if (sellerDeviceToken.isNotEmpty) {
print("-----------------------------------notification-----------------------------------");
      notificationFormat(
        sellerDeviceToken,
        userOrderID,
        userName,
      );
    }
  }

  Future<String> getSellerDeviceTokenFromAPI(String sellerUID) async {
    final response = await http.get(
      Uri.parse('${API.getSellerDeviceTokenInUserApp}?sellerUID=$sellerUID'),
    );
    // print("================================================================");
    // print('${API.getSellerDeviceTokenInUserApp}?sellerUID=$sellerUID');

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      if (data['sellerDeviceToken'] != null) {
        // print("-----------------------------------------------------------------------------------");
        // print('seller device token${data['sellerDeviceToken']}');
        return data['sellerDeviceToken'].toString();
      }
      print('seller device token${data}');
    } else {
      // Handle the error accordingly
      print('Failed to load seller device token');
    }

    return "";
  }

  notificationFormat(sellerDeviceToken, getUserOrderID, userName) {
    Map<String, String> headerNotification = {
      'Content-Type': 'application/json',
      'Authorization': fcmServerToken,
    };

    Map bodyNotification = {
      'body':
          "Dear seller, New Order (# $getUserOrderID) has placed Successfully from user $userName. \nPlease Check Now",
      'title': "New Order",
    };

    Map dataMap = {
      "click_action": "FLUTTER_NOTIFICATION_CLICK",
      "id": "1",
      "status": "done",
      "userOrderId": getUserOrderID,
    };

    Map officialNotificationFormat = {
      'notification': bodyNotification,
      'data': dataMap,
      'priority': 'high',
      'to': sellerDeviceToken,
    };

    http.post(
      Uri.parse("https://fcm.googleapis.com/fcm/send"),
      headers: headerNotification,
      body: jsonEncode(officialNotificationFormat),
    );
  }

  @override
  void initState() {
    super.initState();
    currentUserController.getUserInfo().then((_) {
      setUserInfo();
      setState(() {});
    });
  }

  void setUserInfo() {
    userName = currentUserController.user.user_name;
    userEmail = currentUserController.user.user_email;
    userID = currentUserController.user.user_id.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/delivery.png"),
          const SizedBox(
            height: 12,
          ),
          ElevatedButton(
            onPressed: orderDetails,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            child: const Text("Place Order Now"),
          ),
        ],
      ),
    );
  }
}
