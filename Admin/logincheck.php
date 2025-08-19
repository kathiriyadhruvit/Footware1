<?php 
include '../db_conn.php';
session_start();

$username = $_POST['username'];
$password = $_POST['password'];

$qry = "SELECT * FROM login WHERE Name='$username' AND Password='$password'";
$result = mysqli_query($con, $qry);

if (mysqli_num_rows($result) == 1) {
    // Set session variables
    $_SESSION['username'] = $username;
    $_SESSION['password'] = $password;
     echo "<script>
            alert('Successfully logged in');
            window.location.href='./Adminpanel.php';
        </script>";
    } else {
        echo "<script>
            alert('Invalid username or password');
            window.location.href='./login.php';
        </script>";
    }
?>
