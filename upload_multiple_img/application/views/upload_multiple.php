<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>Upload Multiple Files in Codeigniter using Ajax JQuery</title>
	<link rel="stylesheet" href="<?= base_url();?>assets/bootstrap/css/bootstrap.min.css" />
	<script type="text/javascript" src="<?= base_url();?>assets/bootstrap/js/jquery.js"></script>
</head>
<body>
	<div class="container">
 <br /><br /><br />
 <h3 align="center">Upload Multiple Files in Codeigniter using Ajax JQuery</h3><br />
 
 <div class="col-md-6" align="right">
  <label>Select Multiple Files</label>
 </div>
 <div class="col-md-6">
  <input type="file" name="files" id="files" multiple />
 </div>
 <div style="clear:both"></div>
 <br />
 <br />
 <div id="uploaded_images"></div>
</div>
</body>
</html>
<script type="text/javascript">
$(document).ready(function(){
	$("#files").change(function(){
		var file = $("#files")[0].files;
		var error = '';
		var form_data = new FormData();
		for(var count = 0; count<files.length; count++)
		{
			error += "Invalid" + count + " Image File";
		}
		if(jQuery.inArray(extension, ['gif','png','jpg','jpeg']) == -1)
		{
			error += "Invalid " + count + " Image File";
		}
		else
		{
			form_data.append("files[]",files[count]);
		}
	
		if(error == "")
		{
			$.ajax({
				url:"<?php echo base_url(); ?>upload_multiple/upload",
				method:"POST",
				data:form_data,
				contentType:false,
				cache:false,
				processData:false,
				beforeSend:function()
				{
					$('#uploaded_images').html("<label class='text-success'>Uploading.....</label>");
				},
				success:function(data)
				{
					$('#uploded_images').html(data);
					$('#files').val('');
				}
				
			});
		}
	else{
		alert(error);
		}
	});
});
</script>