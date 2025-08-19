<?php 
include "header.php";
?>
<style type="text/css">
	form
	{
		text-align: center;
	}
	button
	{
		background: teal;
		color: white;
		padding: 5px 10px;
	}
</style>
<div class="form">
	<form>
		<h1>Registration Here</h1>
		
		
		<input type="text" name="Name" placeholder="Name" required><br>
		
		<input type="number" name="mb"placeholder="Mobile" required><br><br>
		
		
		<select required>
		<option>City</option>
		<option>Junagadh</option>
		<option>Rajkot</option>
		<option>Surat</option>
	</select><br>
	<input type="address" name="address" placeholder="Address" required><br>
	<button>Send</button>
	</form>
</div>
<?php include 'Footer.php';?>