
<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "db_library";
$conn = mysqli_connect($servername,$username,$password,$database);
if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
   }

$file = $_FILES['csvfile']['tmp_name'];
$handle = fopen($file, "r");
$i=0;
$error=0;
while(($data = fgetcsv($handle,1000,","))!==false)
	{
	$i++;
	if($i==1)
		{
		continue;
		}
	$query = "INSERT INTO tbl_students(s_regno,s_name,s_dept,s_year,s_desg) VALUES('".$data[0]."','".$data[1]."','".$data[2]."',".$data[3].",'".$data[4]."')";
	$conn->query($query);
	echo "Error: ". $query.'<br>';
	echo "Error: ". $conn->error.'<br>';
	}

// 	if ( === TRUE) 
// 	{
// 		echo "Error: " . $sql . "<br>" . $conn->error;
// 	} 
// 	else 
// 	{
//   $error==1;
// 	}
	  
// 	}
// if($error==1){
// 	echo "<h1>data was not entered successfully</h1>";	
// }
// else
// {
// echo "<h1>data entered successfully</h1>";
// }
?>