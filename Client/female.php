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
?>
<!-- database connection -->
<?php 
$con=mysqli_connect("localhost","root","","atozfootwear");
if(!$con)
{
        die("Connection faild");
}
$result=mysqli_query($con,"select * from female_product");
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>A To Z Footwear</title>
</head>
<body>
		<!-- bootstrap link -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
		<!-- bootstrap link -->

		<!-- stylesheet link -->
<link rel="stylesheet" type="text/css" href="../Css/female.css">
			<!-- stylesheet link -->

			<!-- navbar -->
<nav class="navbar navbar-expand-lg fixed-top">
  <a href="Project/Home.php"><h2 class="navbar-brand fs-3 mx-3">A To Z <span class="fs-5 text-dark">Footwear</span></h2></a>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="test.php">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="product.php">Mens</a>
      </li>
      <li class="nav-item active" id="menuactive">
        <a class="nav-link" href="female.php">Female</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="kids.php">Kids</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"><img src="../img/cart.svg" class="cart"></a>
      </li>
        </div>
    </ul>
  </div>
</nav>
		<!-- banner -->
		<div class="banner" >
			<img src="../img/female.jfif">
		</div>
		<!-- banner -->
	<div class="container">
		<div class="item">
			<h1> Female All Type Footwear</h1>
			<img src="../img/female1.jfif" style="width:100%;">
		</div>
										<!-- <div class="pro-1">
                        <img src="../img/Athleisure/women_1.webp" alt="product_1" class="pimg">
                        <h4>Title</h4>
                        <p>Description</p>
                        <span>oldPrice</span><span>NewPrice</span><br>
                        <button class="btn" id="btn">Buy Now</button>
                    </div> -->

                    <!-- product _2 start -->
                    <!-- <div class="pro-2">
                            <img src="../img/Athleisure/women_2.webp" alt="product_1"class="pimg">
                            <h4>Title</h4>
                            <p>Description</p>
                            <span>oldPrice</span><span>NewPrice</span><br>
                            <button class="btn" id="btn">Buy Now</button>
                    </div> -->
                    
                    <!-- product_3 start -->
                     <!-- <div class="pro-3">
                            <img src="../img/Athleisure/women_3.webp" alt="product_2" class="pimg">
                            <h4>Title</h4>
                            <p>Description</p>
                            <span>oldPrice</span><span>NewPrice</span><br>
                            <button class="btn" id="btn">Buy Now</button>
                    </div>
                  </div> -->
	<!-- admin side product -->
<div class="products">
<?php while($row = mysqli_fetch_assoc($result)) { ?>
        <div class="product">
            <img src="../uploads/<?= $row['images']; ?>" alt="Product image">
            <h3><?= $row['title']; ?></h3>
            <p><?= $row['description']; ?></p>
            <p>₹<?= $row['price']; ?></p>
            <a href="cart.php?p_id=<?= $row['p_id']; ?>&title=<?=($row['title']); ?>&price=<?= $row['price']; ?>&image=<?= $row['images']; ?>">
                <button class="btn">ADD TO CART</button>
            </a>
        </div>
    <?php } ?>
</div>
	
	<!-- javascript link -->
	<script src="script.js"></script><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<!-- javascript link -->
  <?php include 'Footer.php';?>
</body>
</html>	