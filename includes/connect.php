<?php
    $servername = "localhost";
    $username = "root";
    $password = "mysql";
    $database = "mystore";

    // Create connection
    $con = new mysqli($servername, $username, $password, $database);

    // Check connection
    if ($con->connect_error) {
        die("Connection failed: " . $con->connect_error);
    }
    //else{
    //     echo "Connected successfully";
    // }
?>
