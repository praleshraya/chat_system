<?php 
		$host ="localhost";
		$user ="root";
		$pass ="";
		$db_name="chat";

//pdo method 
		$db = new mysqli($host,$user,$pass,$db_name);

//date format
		function formatDate($date)
		{
			return date('g:i a', strtotime($date));
		}
?>