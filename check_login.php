<?php
    session_start();
	include("conn.php");
	if(isset($_POST['login'])){
        $Username = $_POST['Username'];
        $Password = $conn->real_escape_string($_POST['Password']);
        

        $sql="SELECT * FROM user WHERE Username = '".$Username."' AND Password = '".$Password."'";
        $result = $conn->query($sql);


        
        if($result->num_rows > 0){
            $row = $result->fetch_assoc();
            
            $_SESSION["id"] = $row["id"];
            $_SESSION["Name"] = $row["Name"];
            $_SESSION["Status"] = $row["Status"];
           
            
        
            if($row["Status"] == "ADMIN")
			{
				header("location:home.php");
			}
			if($row["Status"] == "USER")
			{
				header("location:user.php");
			}
        }else{
            echo "<script>";
			echo "alert('รหัสผ่านไม่ถูกต้องค่ะ');";
			echo "window.location.href='index.php';";
			echo "</script>";
            
        }
    }
    $conn->close();
