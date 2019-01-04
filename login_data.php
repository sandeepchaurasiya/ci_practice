<?php
session_start();
if(isset($_SESSION["emails"]))
{
	header("location:success.php");
}

$conn = mysqli_connect("localhost","root","","test");
$err_output = '';
if(isset($_POST["login"]))
{
	if(empty($_POST["email"]))
	{
		$err_output .= "<span class = 'text-danger'>*Email Address is required.</span><br />";
	}
	else
	{
		$name = test_input($_POST["email"]);
	}
	if(empty($_POST["password"]))
	{
		$err_output .= "<span class = 'text-danger'>*Password is required.</span><br />";
	}
	else
	{
		$password = test_input($_POST["password"]);
	}
}
function test_input($data)
{
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars($data);
	return $data; 	
}
if($err_output == true)
{
	echo "<span class = 'text-danger'><b>*Required.</b></span> <br />".$err_output;
}
else
{
	$data = "SELECT `id` FROM `registration` WHERE `email` = '$name' AND `cnf_password` ='$password'";
	$qur = mysqli_query($conn,$data);
	$row = mysqli_num_rows($qur);
	if($row > 0)
	{
		$_SESSION['emails'] = $name;
		echo ("<script>
    window.location.href='success.php';
    </script>");
	}
	else
	{
		echo "<div class='alert alert-danger'>
				<strong>Error!</strong> Data Not Inserted.
			</div>";
			
	}
}

?>