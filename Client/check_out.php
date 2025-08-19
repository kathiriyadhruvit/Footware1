<style type="text/css">
    form
    {
         text-align: center;
        height: auto;
        width: 30%;
        background: skyblue;
        margin-left: 450px;
        margin-top: 10px;
    }

    h2
    {
        text-align: center;
        text-decoration: underline;
    }
    input[type=submit]
    {
        padding:10px 20px;
        font-size: 15px;
        margin-bottom: 10px;
        border: 1px solid black;
        color: white;
        background: blue;
        border-radius: 10px;
        opacity: 0.7;
    }
    input[type=submit]:hover
    {
        opacity: 1;
        box-shadow: 1px 1px 2px black;
    }
</style>
<?php
include "../Client/header.php";
include "../db_conn.php";
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $qry="SELECT * FROM cart WHERE p_id = $id";
    $result = mysqli_query($con,$qry);

    if ($row = mysqli_fetch_assoc($result)) {
?>
<!DOCTYPE html>
<html>
<head>
    <title>A To Z Footwear</title>
</head>
<body>
    
        <h2>Conform Your Order</h2>
    <form action="../php/check_out.php" method="post">
    <img src="../uploads/<?php echo $row['images'];?>" width="200px" height="200px">
    
    <input type="hidden" name="p_id" value="<?php echo $row['p_id']; ?>">
    <input type="hidden" name="images" value="<?php echo $row['images']; ?>">
    <input type="hidden" name="title" value="<?php echo $row['title']; ?>">
    <input type="hidden" name="size" value="<?php echo $row['size']; ?>">
    <input type="hidden" name="price" value="<?php echo $row['price']; ?>">
    <input type="hidden" name="qty" value="<?php echo $row['qty']; ?>">
    <input type="hidden" name="total" value="<?php echo $row['total']; ?>">

    <p>Title: <?php echo $row['title']; ?></p>
    <p>Size: <?php echo $row['size']; ?></p>
    <p>Price: <?php echo $row['price']; ?></p>
    <p>Qty: <?php echo $row['qty']; ?></p>
    <p>Total: <?php echo $row['total']; ?></p>

    <p>Payment Method:
        <select name="payment_method" required>
            <option value="">Select Payment Method</option>
            <option value="Cash on Delivery">Cash on Delivery</option>
        </select>
    </p>
    <lable>Address:</lable>
    <input type="address" name="address" placeholder="Enter Address" required /><br>
    <input type="submit" value="Buy Now" name="submit">
</form>

</body>
</html>
<?php
    } else {
        echo "Product not found.";
    }
} else {
    echo "Invalid request.";
}
?>
