<?php
session_start();

header('Content-Type: application/json'); // Return JSON response

$response = [
    'isLoggedIn' => false,
];

if (isset($_SESSION['user_id'])) {
    $response['isLoggedIn'] = true;
    $response['user_name'] = $_SESSION['user_name']; // Optional: Send user info
}

echo json_encode($response);
?>
