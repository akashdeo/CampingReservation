<?php
session_start ();
$username = $password = "";

if ($_SERVER ["REQUEST_METHOD"] == "POST") {
	$username = clean_input ( $_POST ["user"] );
	$password = clean_input ( $_POST ["password"] );
	echo $password;
	if ($username == "" || $password == "") {
		header ( "Location: login.html" );
		exit ();
	} else {
		// Get Connection to DB, mysql running on default port 3306 on google cloud
		include 'get_db_con.php';

		$sql = "select * from users_db where username= '" . $username."';";

		$resultset = $conn->query ( $sql );

		include 'close_db_con.php';
		//$hashed_password = password_hash(clean_input ( $password ),PASSWORD_DEFAULT);
		$row = $resultset->fetch_assoc ();
		if($row["role"]=="admin"){
			$_SESSION ["username"]==$row["username"];
				header("Location: login_admin.php");
				exit();
		}
		else{
		$pass = $row["password"];
		if ( $resultset->num_rows > 0 && password_verify($password,$pass)) {
			if($row ["role"] =="admin"){
				$_SESSION ["username"]==$row["username"];
				header("Location: login_admin.php");
				exit();
			}
			if ($row["role"] == "user"){
				$_SESSION ["username"] = $username;
				$_SESSION ["role"] = $row["role"];
				header ( "Location: dashboard.php" );
				exit ();
			}
			

		}
		else {
			session_destroy ();
			echo '<script type="text/javascript">';
			echo 'alert("Invalid User.");';
			echo 'window.location.href = "login.html";';
			echo '</script>';
			exit ();
		}
	}
	}
}
function clean_input($input) {
	$input = trim ( $input );
	$input = stripslashes ( $input );
	$input = htmlspecialchars ( $input );
	return $input;
}

?>
