<?php
<?php
session_start();
if(isset($_SESSION["emails"]))
{
	header("location:success.php");
}
?>
$conn = mysqli_connect("localhost","root","","test");
$name = $number = $email = $password = $cnf_password = "";
//$nameErr = $contactErr = $emailErr = $passwordErr = $cnfpassErr = "";
$err_output = "";
if(isset($_POST["submit"]))
{
	if(empty($_POST["name"]))
		{
			$err_output .= "<span class = 'text-danger'>*Name is required.</span><br />";
		}
		else
		{
			$name = test_input($_POST["name"]);
		}
		if(empty($_POST["number"]))
		{
			$err_output .= "<span class = 'text-danger'>*Contact Number is required.</span><br />";
		}
		else
		{
			$number = test_input($_POST["number"]);
		}
		if(empty($_POST["email"]))
		{
			$err_output .= "<span class = 'text-danger'>*Email Address is required.</span><br />";
		}
		else
		{
			$email = test_input($_POST["email"]);
		}
		if(empty($_POST["password"]))
		{
			$err_output .= "<span class = 'text-danger'>*Password is required.</span><br />";
		}
		else
		{
			$password = test_input($_POST["password"]);
		}
		if(empty($_POST["cnf_password"]))
		{
			$err_output .= "<span class = 'text-danger'>*Confirm Password is required.</span><br />";
		}
		else
		{
			$cnf_password = test_input($_POST["cnf_password"]);
		}
}
	function test_input($data) 
	{
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars($data);
	return $data;
	}
	
	$insert_output = "";	
	
	if($err_output == true)
	{
		echo "<span class = 'text-danger'><b>*Required.</b></span> <br />".$err_output;
		return false;
	}
	else
	{
		$data = "INSERT INTO `registration`(`name`, `number`, `email`, `password`, `cnf_password`) VALUES ('".$name."','".$number."','".$email."','".$password."','".$cnf_password."')";
	
		$row = mysqli_query($conn,$data);
		if($row > 0)
		{
			echo "<div class='alert alert-success'>
					<strong>Success!</strong> Data successful Inserted.
				</div>";	
				return true;
		}
		else
		{
			echo "<div class='alert alert-danger'>
					<strong>Error!</strong> Data Not Inserted.
				</div>";
				return false;
				
		}
	}
?>




