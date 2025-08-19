<style type="text/css">
	*
	{
		margin: 0;
		padding: 0;
	}
	table
	{
		text-align: center;
	}
	th,tr,td
	{
		padding: 10px;
		margin: 10px;
	}
	img
	{
		width: 100px;
		height: 100px;
	}	
	a
	{
		text-decoration: none;
		border: 1px solid black;
		background: red;
		color: white;
		padding: 10px;
	}
	.BUY
	{
		background: blue;
	}
</style>
<?php
session_start();
if(!isset($_SESSION['username']))
{
	echo "<script>
	alert('please enter your login');
	window.location.href='Login.php';
	</script>";
	exit;
}
$username=$_SESSION['username'];
include "../db_conn.php";
$qry="select * from cart where Name='$username'";
$result=mysqli_query($con,$qry);
?>
<center>
	<h2>Cart Item</h2>
	<table border="1" cellspacing="10" cellpadding="20">
		<tr>
			<th>Image</th>
			<th>Product Name</th>
			<th>Size</th>
			<th>Price</th>
			<th>Qty</th>
			<th>Total</th>
			<th>Action</th>
		</tr>
	
<?php
while ($row = mysqli_fetch_assoc($result)) {
    echo "<tr>
    <td><img src='../uploads/{$row['images']}' alt='Product Image'></td>
            <td>{$row['title']}</td>
            <td>{$row['size']}</td>
            <td>{$row['price']}</td>
            <td>{$row['qty']}</td>
            <td>{$row['total']}</td>
            <td>
                <a href='cart_delete.php?table=cart&id={$row['p_id']}'>Delete</a>
                <a href='check_out.php?table=cart&id={$row['p_id']}'class='BUY'>BUY NOW</a>
            </td>
          </tr>";
}
?>

	</table>
</center>