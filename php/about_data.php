<?php
include '../db_conn.php';
if ($_POST['submit'])
{
	$name=$_POST['nm'];
	$mo=$_POST['no'];
	$email=$_POST['em'];
	$msg=$_POST['msg'];
	$star=$_POST['review'];

	$qry=mysqli_query($con,"INSERT INTO review_data(Name,Mobile_No,Email,Message,Review) VALUES ('$name','$mo','$email','$msg','$star')");
	if($qry)
	{
		echo "<script>alert('Thank You For Review');
		window.location.href='../Client/About.php';
		</script>";
	}
	else
	{
		echo "Data Insert Not Success";
	}
}
else
{
	echo "Connection Problem";
}
?>