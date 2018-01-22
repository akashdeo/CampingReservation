<?php
if ($_SERVER ["REQUEST_METHOD"] == "POST") {
	
	include 'get_db_con.php';
	include 'json_encode.php';
	include 'clean_input.php';
	

	$name = clean_input ( $_POST ["name"] );
	$email_id = clean_input ( $_POST ["email"] );
	$password = password_hash(clean_input ( $_POST ["pass"] ),PASSWORD_DEFAULT);
	$username = clean_input ( $_POST ["username"] );
	// insert new user
	$sql = "INSERT into users_db (
		username,name,password,email_address,role)
			VALUES ('" . $username . "','" . $name . "','" . $password . "','" . $email_id . "', 'user' )";
	if ($conn->query ( $sql ) === TRUE){
		echo '<script type="text/javascript">';
		echo 'window.location.href = "index.php";';
		echo '</script>';
		exit ();
	}
	else
	{
		echo '<script type="text/javascript">';
		echo "alert('cannot register');";
		echo 'window.location.href = "login.html";';
		echo '</script>';
		exit ();
	}			
	
	
}
?>