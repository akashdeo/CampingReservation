<?php
if ($_SERVER ["REQUEST_METHOD"] == "GET") {
	include 'get_db_con.php';
	include 'json_encode.php';
	include 'clean_input.php';

	$sql = "SELECT * from camps_db";
	$resultset = $conn->query ( $sql );
	
	
	include 'close_db_con.php';

	$rs = array ();
	$rs = addToArr($resultset,$rs);
	$rs = addToArr($resultset1,$rs);
	$rs = addToArr($resultset2,$rs);
	$rs = addToArr($resultset3,$rs);
	$rs = addToArr($resultset4,$rs);

	$json_data = json_encode ( $rs );
	echo $json_data;
}
?>