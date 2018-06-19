<?php
$servername = "127.0.0.1";
$username = "root";
$password = "eskimos5";

//create connection
$conn = new mysqli($servername, $username, $password);

//check connection
if ($conn->connect_error) {
	die ("Connection failed silly buns!: " . $conn->connect_error);
}
echo "Connected successfully";
echo "Hello from Sites Folder";
?>

