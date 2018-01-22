<?php
	$conn = new mysqli ( "localhost", "root", "root","wpl_project");
	
	// check for connection
	if ($conn->connect_error) {
		die ( "Connection failed: " . $conn->connect_error );
	}
?>
