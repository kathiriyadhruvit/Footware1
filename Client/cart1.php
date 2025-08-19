<?php 
session_start();
error_reporting(0);
include 'header.php';
include '../db_conn.php';
$id=$_POST['p_id'];
$title=$_POST['title'];
$price=$_POST['price'];
$image=$_POST['image'];
$qty=$_POST['qty'];
$size=$_POST['size'];
$total=$qty*$price;
if(!isset($_SESSION['username']))
{
   header("Location:Login.php");
}

$qry="INSERT INTO cart (p_id,images,title,size,price,qty,total,Name) VALUES('$id','$image','$title','$size','$price','$qty','$total','{$_SESSION['username']}')";

$result =mysqli_query($con,$qry);
if($result)
{
   echo '<script>alert("Product Added in Cart");
   window.location.href="../Client/test.php";
   </script>';
}
?>