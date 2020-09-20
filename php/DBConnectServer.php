<?php
// PHP PDO Connection File.
// This file used to connect to a database.
// Include this file into your application as needed.

$serverName = 'localhost'; 	// the usual default name
$username = 'root'; 	//username of database
$password = ''; 	//password of database
$database = 'wdv341'; 	// name of database you will be accessing

try {
    $conn = new PDO("mysql:host=$serverName;dbname=$database", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }

?>