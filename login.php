<?php
session_start();
if(isset($_SESSION["emails"]))
{
	header("location:success.php");
}
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>Login Page</title>
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/additional-methods.min.js"></script>
  <style type="text/css">
  .error{
	  color:red;
  }
  </style>
</head>
<body>
	<h1 class="text-center">Login Page</h1>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
			<div id="result"></div>
			<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" id="login">
				<label for="">Email*</label>
				<input type="text" name="email" class="form-control" id="email" /><br />
				<label for="">Password*</label>
				<input type="password" name="password" class="form-control" id="password" /><br />
				<input type="submit" name="login" class="btn btn-primary" value="Submit" />
				<a href="registration.php" class="btn btn-success">Register</a>
			</form>
			</div>
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
$(document).ready(function (){
		var email_check = $('#email').val();
		$.validator.addMethod("emailcheck", function(email_check) {
		   return /^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/i.test(email_check) // consists of only these
		});
		$("#login").validate({
			rules:
			{
				email:{
					required:true,
					email:true,
					emailcheck:true
				},
				password:
				{
					required:true
				}
			},
			messages:
			{
				email:{
					required:"Email Is Required",
					email:"Please Enter Valid Email Address.",
					emailcheck:"Please Enter Valid Email Address."
				},
				password:{
					required:"Password Is required."
				}
			},
			submitHandler:function(form){
				$.ajax({
					url:"login_data.php",
					type:"POST",
					data:$("form").serialize(),
					success:function(data){
						$("#result").html(data);
					}
					
				});
			}
		});
	});
</script>
