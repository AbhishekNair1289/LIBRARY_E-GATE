
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Home</title>
	<link rel="stylesheet" href="home.css">
</head>
<body>
<?php

session_start();
if ($_SESSION['LOGIN']=="LOGGED_OUT")
{
    header("Location: index.php");
    die();
}
?>

<a id="logout" href="index.php">LOG OUT</a>
<div class="main">
	<div id="menu">
		<span id="menu_text">MENU</span>
	</div>
	<div id="anim">
	</div>
	<div id="options">
		<div class="opt_container"><span class="no">01</span><a class="option" href="logs_info.php">  Logs</a></div><br>
		<div class="opt_container"><span class="no">02</span><a class="option" href="update.php">Update</a></div><br>
		<div class="opt_container"><span class="no">03</span><a class="option" href="statistics.html">Statistics</a></div><br>
		<div class="opt_container"><span class="no">04</span><a class="option" href="report_info.php">Report Generator</a></div><br>
		<div class="opt_container"><span class="no">05</span><a class="option" href="library_stats.html">Library Statistics</a></div>
	</div>

</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bodymovin/5.9.1/lottie.min.js" type="text/javascript">
</script>
<script>
	var animation = bodymovin.loadAnimation({
	container: document.getElementById('anim'),
	renderer:'svg',
	loop:true,
	autoplay:true,
	path:"anim1.json"
})
</script>
</body>
</html>