<?php
	
	$servername = "localhost";
	$username = "root";
	$password = "";
	$DB = "searchengine";
	
	$connect = mysqli_connect($servername,$username,$password,$DB);
	
	if(!$connect)
	{
		die("Connection Failed".mysqli_connect_error());
	}
	

	
?>