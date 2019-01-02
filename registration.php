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
	<title>Registration Page</title>
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
	<h1 class="text-center">Registration Page</h1>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
			<div id="result"></div>
			<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" id="registration">
				<label for="">Name*</label> 
				<input type="text" name="name" class="form-control" id="name" /><br />
				<label for="">Phone No.*</label>
				<input type="text" name="number" class="form-control" id="number" placeholder="000-0000-0000" /><br />
				<label for="">Email*</label>
				<input type="text" name="email" class="form-control" id="email" /><br />
				<label for="">Password*</label>
				<input type="password" name="password" class="form-control" id="password" /><br />
				<label for="">Confirm Password*</label>
				<input type="password" name="cnf_password" class="form-control" id="cnf_password" /><br />
				<br />
				<input type="submit" name="submit" class="btn btn-primary" value="Submit" />
				<a href="login.php" class="btn btn-success">Login</a>
			</form>
			</div>
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
	$(document).ready(function (){
		var value = $('#password').val();
		var email_check = $('#email').val();
		var con_number = $('#number').val();
		
		$.validator.addMethod("pwcheck", function(value) {
		   return /^[A-Za-z0-9\d=!\-@._*]*$/.test(value) // consists of only these
			   && /[a-z]/.test(value) // has a lowercase letter
			   && /\d/.test(value) // has a digit
		});
		
		$.validator.addMethod("emailcheck", function(email_check) {
		   return /^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/i.test(email_check) // consists of only these
		});
		
		$.validator.addMethod("connumber", function(con_number) {
		   return /^[0-9]{3}-[0-9]{4}-[0-9]{4}$/.test(con_number) // consists of only these
		});
		
		function pageRedirect()
		{
			$(location).attr('href','http://localhost/sandeep/registration/login.php');
		}
		$("#registration").validate
		({
			rules:
			{
				name:"required",
				number:
				{
					required:true,
					//number:true,
					connumber:true
					//minlength:10
					//maxlength:12
				},
				email:{
					required:true,
					email:true,
					emailcheck:true
				},
				password:
				{
					required:true,
					minlength:8,
					pwcheck: true
				},
				cnf_password:{
					required:true,
					minlength:8,
					equalTo:"#password"
				},
			},
			messages:
			{
				name:"Name is required",
				number:{
					required:"Phone number is required.",
					//number:"Please enter only number.",
					connumber:"Please Enter Contact Number In Valid Formate."
					//minlength:"Please Enter Minimum 10 Digits of Number"
					//maxlength:"Please Enter Maximum 12 Digits of Number"
				},
				email:{
					required:"Email Is Required",
					email:"Please Enter Valid Email Address.",
					emailcheck:"Please Enter Valid Email Address."
				},
				password:{
					required:"Password Is required.",
					minlength:"Please Enter at least 8 Character Password.",
					pwcheck :"Please enter at least 1 number, 1 lowercase character and 1 uppercase character."
				},
				cnf_password:
				{
					required:"Confirm Password is Required.",
					minlength:"Please Enter at least 8 Character of Password.",
					equalTo:"Your Password is dose not Matched."
				},
			},
			submitHandler:function(form){
				$.ajax({
					url:"register_insert.php",
					type:"POST",
					data:$("form").serialize(),
					success:function(data){
						$("#result").html(data);
						$(form)[0].reset();
						if(data = true)
						{
							setTimeout(pageRedirect, 2000);
						}
						
					}
				});
			}
		});
	});
</script>