<?php 
error_reporting(0);
session_start();

// include 'AdminHeader.php';
if (isset($_SESSION['username']) && isset($_SESSION['password'])){
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>A to Z Footwear</title>
</head>
<style type="text/css">
	*
	{
		margin: 0;
		padding: 0;
		box-sizing: border-box;
	}
	header
	{
		background-color: cadetblue;
		display: flex;
	}
	h1
	{
		background-color: cadetblue;
		text-align: center;
	}
	nav
	{
		flex-flow: row;
		padding: 10px;
		margin-left: 500px;
	}
	a
	{
		text-decoration: none;
		border: 1px solid black;
		background-color: yellow;
		text-align: center;
		margin-right: 10px;
		padding: 5px;
	}
	a:hover
	{
		border-radius: 10px;
		background-color: blue;
		color: wheat;
	}
</style>
<body>
	<h1>A To Z <span>Footwear</span></h1>
	<header>

		<h2>Admin Panel</h2>
	<nav>
		<a href="Adminpanel.php">Dashboard</a>
		<a href="Add_Product_Form.php">Add Product</a>
		<a href="order_show.php">View Order</a>
		<a href="review.php">View Review</a>
		<a href="contact.php">Contact</a>
		<a href="logout.php">Logout</a>
	</nav>
</header>
	<div class="main">
		<h2>Welcome,Admin</h2>
	</div>
</body>
</html>
<?php
}
else 
{
    header("Location: login.php");
    exit;
}
?>
