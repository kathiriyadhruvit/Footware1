<?php 
include "../db_conn.php";
$qry="select * from cart";
$result=mysqli_query($con,$qry);
?>
   <table>
      Cart Item
      <tr>
         <th>Image</th>
         <th>Product_Name</th>
         <th>Product_Size</th>
         <th>Product_Price</th>
         <th>Qty</th>
         <th>Grand_Total</th>
      </tr>
<?php 
   while($row=mysql_fetch_assoc($result))
{?>
   <tr>
      <td><img src="../uploads/"><?php row['images'];?></td>
      <td><?php $row['title'];?></td>
      <td><?php $row['size'];?></td>
      <td><?php $row['price'];?></td>
      <td><?php $row['qty'];?></td>
      <td><?php $row['total'];?></td>
   </tr>
<?php
}
?>
</table>