<?php
	require('config/config.php');
	require('config/db.php');


	// Check For Submit
	if(isset($_POST['submit'])){
		// Get form data
		$username = mysqli_real_escape_string($conn,$_POST['username']);
		$password = mysqli_real_escape_string($conn,$_POST['password']);

		$query = "INSERT INTO account(username, password) VALUES('$username','$password')";

		if(mysqli_query($conn, $query)){
            header('Location: index.php');
		} else {
			echo 'ERROR: '. mysqli_error($conn);
		}
	}
?>


<?php include('inc/header.php'); ?>
<div class="container">
<br/>
  <h2>Register account</h2>

  <form method="POST" action="<?php $_SERVER['PHP_SELF']; ?>" class="was-validated">
    <div class="form-group">
      <label for="uname">Username:</label>
      <input type="text" class="form-control" id="username" placeholder="Enter username" name="username" required>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <div class="form-group">
      <label for="uname">Password</label>
      <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" required>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>
    <button type="submit" name="submit" value="Submit" class="btn btn-primary">Submit</button>
  </form>
</div>
<?php include('inc/footer.php'); ?>

