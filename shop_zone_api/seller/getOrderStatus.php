<?php
header('Content-Type: application/json');

include '../db_config.php';
$orderID = $_GET['orderID'];

$stmt = $connectNow->prepare("SELECT orderStatus FROM users_orders WHERE orderId = ?");
$stmt->bind_param("s", $orderID);
$stmt->execute();

$result = $stmt->get_result();
$order = $result->fetch_assoc();

if ($order) {
    echo json_encode($order);
} else {
    echo json_encode(["error" => "Order not found"]);
}

$stmt->close();
$connectNow->close();
?>
