<?php
$sever="localhost";
 $user= "root";
 $pass = "12345678";
 $db ="beautician";

 $conn = new mysqli($sever, $user, $pass, $db);

 if($conn->connect_error){
		die("connection failed : ".$conn->connect_error);
}

?>