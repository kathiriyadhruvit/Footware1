<?php
session_start(); 
include "../db_conn.php";

$name     = $_POST['Name'];
$password = $_POST['Password'];
$address  = $_POST['Address'];
$number   = $_POST['Mobileno'];
$email    = $_POST['Email'];
$gender   = $_POST['Gender'];

if (strlen($number) !== 10) 
{
    echo "<script>alert('Mobile number must be exactly 10 digits.'); window.location.href='../Client/test.php';</script>";
    exit;
} 
elseif (strlen($password) < 6) 
{
    echo "<script>alert('Password must be at least 6 characters.'); window.location.href='../Client/test.php';</script>";
    exit;
} 
else 
{
    $qry  = mysqli_query($con, "INSERT INTO signin(Name,Password,Address,Mobile_No,Email,Gender) VALUES('$name','$password','$address','$number','$email','$gender')");
    $qry1 = mysqli_query($con, "INSERT INTO login(Name,Password) VALUES('$name','$password')");

    if ($qry && $qry1) 
    {
        $_SESSION['username'] = $name;

        echo "<script>alert('Sign in Successfully'); window.location.href='../Client/test.php';</script>";
        exit;
    }
    else 
    {
        echo "<script>alert('Data not inserted.'); window.location.href='../Client/test.php';</script>";
        exit;
    }
}
?>
