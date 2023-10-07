<?php
header('Content-Type: application/json');

include '../db_config.php';

$userUID = $_GET['userUID'];

$stmt = $connectNow->prepare("SELECT userDeviceToken FROM users_table WHERE user_id = ?");
$stmt->bind_param("s", $userUID);
$stmt->execute();

$result = $stmt->get_result();
$user = $result->fetch_assoc();

if ($user) {
    echo json_encode($user);
} else {
    echo json_encode(["error" => "User not found"]);
}

$stmt->close();
$connectNow->close();
?>
