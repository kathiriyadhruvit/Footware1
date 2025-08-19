<?php
include '../db_conn.php';
session_start();

$username = $_POST['username'];
$password = $_POST['password'];

$qry = "SELECT * FROM login WHERE Name='$username' AND Password='$password'";
$result = mysqli_query($con, $qry);

if (mysqli_num_rows($result) == 1) {
    $row = mysqli_fetch_assoc($result);

    $_SESSION['username'] = $row['Name'];
    $_SESSION['userid'] = $row['id']; 

    header("Location: ../client/test.php");
    exit();
} else {
    header("Location: ../client/test.php?error=invalid");
    exit();
}
 