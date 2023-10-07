<?php
include '../db_config.php';
$uid = $_POST['uid'];
$token = $_POST['token'];

if ($uid && $token) {
    $stmt = $connectNow->prepare("UPDATE sellers_table SET sellerDeviceToken = ? WHERE seller_id = ?");
    $stmt->bind_param("ss", $token, $uid);

    if ($stmt->execute()) {
        echo json_encode(["success" => true]);
    } else {
        echo json_encode(["success" => false, "error" => $stmt->error]);
    }

    $stmt->close();
} else {
    echo json_encode(["success" => false, "error" => "Invalid data"]);
}

$connectNow->close();
?>
