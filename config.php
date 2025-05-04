<?php
// Database connection details
$servername = "localhost"; // MySQL server
$username = "root"; // MySQL username
$password = ""; // MySQL password
$dbname = "university_website"; // Database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
// echo "CONNECTION SUCCESSFULL !!!";
?>
