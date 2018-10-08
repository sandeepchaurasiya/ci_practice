<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title><?php echo $title;?></title>
		  <link rel="stylesheet" href="<?= base_url();?>assets/bootstrap/css/bootstrap.min.css" />
	<script type="text/javascript" src="<?= base_url();?>assets/bootstrap/js/jquery.js"></script>
</head>
<body>
	 <div class="container" style="width:600px">  
           <br /><br /><br />  
           <h3><?php echo $title; ?></h3>  
           <br />  
           <label>Enter Email</label>  
           <input type="text" name="email" id="email" class="form-control" />  
           <span id="email_result"></span>  
           <br /><br />  
           <label>Enter Password</label>  
           <input type="text" name="password" id="password" class="form-control" />  
      </div>
</body>
</html>
<script type="text/javascript">
$(document).ready(function(){
	$("#email").change(function(){
		var email = $("#email").val();
		if(email != "")
		{
			$.ajax({
				url : "<?php echo base_url();?>main/check_email_avalibility",
				method : "POST",
				data : {email : email},
				success : function(data){
					$("#email_result").html(data);
				}
			});
		}
	});
});
</script>