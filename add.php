<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "db_library";
$conn = mysqli_connect($servername,$username,$password,$database);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
   }


$sql    = "insert into tbl_students(s_regno,s_name,s_dept,s_year,s_desg) values('".$_POST['roll_no']."','".$_POST['name']."','".$_POST['dept']."',".$_POST['year'].",'".$_POST['designation']."')";   

if ($conn->query($sql) === TRUE) {
  echo "data added successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

mysqli_close($conn); 
 
 ?>