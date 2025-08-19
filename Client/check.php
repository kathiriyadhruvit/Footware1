<?php 
include '../db_conn.php';
session_start();

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Post the form data
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Protect against SQL injection (use prepared statements ideally)
    $qry = "SELECT * FROM login WHERE Name='$username' AND Password='$password'";
    $result = mysqli_query($con, $qry);

    if (mysqli_num_rows($result) == 1) {
        $_SESSION['username'] = $username;
        $_SESSION['password'] = $password;

        echo "<script>
            alert('Successfully logged in');
            window.location.href='../Admin/AdminPanel.php';
        </script>";
    } else {
        echo "<script>
            alert('Invalid username or password');
            window.location.href='test.php';
        </script>";
    }
} 
?>
