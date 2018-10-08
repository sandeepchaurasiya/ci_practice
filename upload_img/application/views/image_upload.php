<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title><?php echo $title; ?></title>
	<link rel="stylesheet" href="<?= base_url();?>assets/bootstrap/css/bootstrap.min.css" />
	<script type="text/javascript" src="<?= base_url();?>assets/bootstrap/js/jquery.js"></script>
</head>
<body>
	<div class="container">
	<br /><br /><br />
	<h3 class="text-center"><?php echo $title; ?></h3><br /><br /><br />
		<form method="post" enctype="multipart/form-data" id="upload_form" class="text-center">
			<input type="file" name="image_file" id="image_file" />
			<br />
			<br />
			<br />
			<input type="submit" value="Upload" name="upload" id="upload" class="btn btn-info" />
		</form>
		<br /><br />
		<div id="uploaded_image">
		
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
$(document).ready(function(){
	$('#upload_form').on('submit', function(e){
		e.preventDefault();
		if($('#image_file').val() == "")
		{
			alert("Please Select the File !!");
		}
		else
		{
			$.ajax({
				url:"<?php echo base_url();?>main/ajax_upload",
				method:"POST",
				data:new FormData(this),
				contentType:false,
				cache:false,
				processData:false,
				success:function(data)
				{
					$('#uploaded_image').html(data);
				}
				
			});
		}
			
		
	});
	
	
});

</script>