<?php
  $dbHost = 'grocy-database-service:3306';
$dbUsername = 'root';
$dbPassword = '989878';
$dbName = 'GROCERY';

// Connect to the database
$conn = mysqli_connect($dbHost, $dbUsername, $dbPassword, $dbName);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT name FROM entries ORDER BY id DESC LIMIT 1";
$result = mysqli_query($conn, $sql);  
$row = mysqli_fetch_array($result, MYSQLI_ASSOC);

echo "<script>alert('hello');</script>";
mysqli_close($conn);
  ?>
