<?php
$servername = "127.0.0.1";
$username = "root";
$password = "eskimos5";
$dbname = "db_lolstats";

//create connection
$conn = new mysqli($servername, $username, $password, $dbname);

//check connection
if ($conn->connect_error) {
	die ("Connection failed silly buns!: " . $conn->connect_error);
}
echo "Connected successfully";
echo "Hello from Sites Folder";

$sql = "SELECT * FROM champion";
if($result = $mysqli->query($sql)){
    if($result->num_rows > 0){
        echo "<table>";
            echo "<tr>";
                echo "<th>id</th>";
                echo "<th>name</th>";
                echo "<th>role</th>";
				echo "<th>tier</th>";
				echo "<th>win rate</th>";
            echo "</tr>";
        while($row = $result->fetch_array()){
            echo "<tr>";
                echo "<td>" . $row['id'] . "</td>";
                echo "<td>" . $row['name'] . "</td>";
                echo "<td>" . $row['role'] . "</td>";
				echo "<td>" . $row['tier'] . "</td>";
				echo "<td>" . $row['win rate'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
        // Free result set
        $result->free();
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . $mysqli->error;
}

?>

