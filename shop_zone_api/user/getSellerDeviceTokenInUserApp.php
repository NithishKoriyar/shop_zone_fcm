<?php
header('Content-Type: application/json');

include '../db_config.php';

$sellerUID = $_GET['sellerUID'];

$stmt = $connectNow->prepare("SELECT sellerDeviceToken FROM sellers_table WHERE seller_id = ?");
$stmt->bind_param("s", $sellerUID);
$stmt->execute();

$result = $stmt->get_result();
$seller = $result->fetch_assoc();

if ($seller) {
    echo json_encode($seller);
} else {
    echo json_encode(["error" => "Seller not found"]);
}

$stmt->close();
$connectNow->close();
?>
