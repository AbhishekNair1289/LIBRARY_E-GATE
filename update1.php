
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Update</title>
	<link rel="stylesheet" href="update.css" />
</head>
<body>
	<div id=forms>
	<div class= "forms  form1">
		<div class="header">PUNCH OUT</div>
			<form method="post" action="">
				<label for="roll_no">Roll No:</label><br>
				<input type="text" class="form_input" id="roll_no" name="roll_no"><br><br>
				<input type="submit" value="Submit">
			</form>
	</div>

	
</div>
	<div class="header  header2">DATABASE LOGS</div>
<div id="bottom">
<table class="content-table">
  <thead>
    <tr>
      <th>Date</th>
      <th>Name</th>
      <th>Roll No</th>
      <th>Designation</th>
      <th>Check-In</th>
      <th>Check-Out</th>
      <th>Time Spent</th>

    </tr>
  </thead>
  <tbody>


<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "db_library";
$conn = mysqli_connect($servername,$username,$password,$database);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
   }


$sql    = "SELECT * FROM log ORDER by s_no";



$result =  $conn->query($sql);

while($row = $result->fetch_assoc()){
  echo "<tr>
      <td>" . $row['date']. "</td> 
      <td>" . $row["name"] . "</td>
      <td>" . $row["roll_no"] . "</td>
      <td>" . $row["designation"] . "</td>
      <td>" . $row["check_in"] . "</td>
      <td>" . $row["check_out"] . "</td>
      <td>" . $row["time_spent"] . "</td>
      </tr>";
    } 


if (!empty($_POST["roll_no"])) {
    $sql2    = "delete FROM log where roll_no='" . $_POST['roll_no']. "' and time_spent is null";    
    if(mysqli_query($conn, $sql2))
    {
    mysqli_close($conn);
  	} 
 
} ?>
    

  </tbody>
</table>
</div>


</body>
</html>