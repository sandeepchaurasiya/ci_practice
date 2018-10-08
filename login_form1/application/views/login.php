<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>Codeigniter | <?php echo $title;?></title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	
</head>
<body>
	<div class="container">
	<br /><br /><br />
	<form action="<?=base_url(); ?>main/form_validation" method="post">
		<div class="form-group">
			<label for="">Enter Username</label>
			<input type="text" name="username" value="<?php echo set_value('username');?>" class="form-control" />
			<span class="text-danger"><?php echo form_error('username');?></span>
		</div>
		<div class="form-group">	
			<label for="">Enter Password</label>
			<input type="password" name="password" value="<?php echo set_value('password');?>" class="form-control" />
			<span class="text-danger"><?php echo form_error('password');?></span>
		</div>
		<div class="form-group">
			<input type="submit" name="insert" value="Login" class="btn btn-info" />
			<?php 
			echo '<label class="text-danger">'.$this->session->flashdata("error").'</label>';
			?>
		</div>  
	</form>
	
	
	</div>
</body>
</html>