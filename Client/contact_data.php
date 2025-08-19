<?php
include "../db_conn.php";
$name=$_POST['Name'];
$email=$_POST['Email'];
$mo=$_POST['Mobile_No'];

$qry="insert into contact(Name,Email,Mobile_No)values('$name','$email','$mo')";
$result=mysqli_query($con,$qry);
if (isset($result))
{
	echo "<script>
	alert('contact record insert sucessfully');
	window.location.href='contact.php';
	</script>";
	
}
?>