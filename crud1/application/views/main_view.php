<html>
<head>
<title>Insert Update Delete Data Using Codeigniter</title>
<link rel="stylesheet" href="<?= base_url();?>assets/css/bootstrap.min.css" />
<script src="<?=base_url();?>assets/js/jquery.js"></script>

</head>
<body>
<h3 class="text-center">Insert Update Delete Data Using Codeigniter</h3>

<div class="container">
<br/><br/><br/>
	<form action="<?= base_url();?>main/form_validation" method="post">
	<?php
		if($this->uri->segment(2) == "inserted")
		{
			echo '<p class="text-success">Data Inserted</p>';
		}
		if($this->uri->segment(2) == "updated")
		{
			echo '<p class="text-success">Data Updated</p>';
		}
		if($this->uri->segment(2) == "deleted")
		{
			echo '<p class="text-success">Data Deleted</p>';
		}
	
	?>
	<?php
	if(isset($user_data))
	{
		foreach($user_data->result() as $row)
		{
		
	?>
		<div class="form-group">
			<label>Enter First Name</label>
			<input type="text" name="first_name" value="<?php echo $row->first_name;?>" class="form-control">
			<span class="text-danger"><?php echo form_error("first_name"); ?></span>
		</div>
		<div class="form-group">
			<label>Enter Last Name</label>
			<input type="text" name="last_name" value="<?php echo $row->last_name;?>" class="form-control">
			<span class="text-danger"><?php echo form_error("last_name"); ?></span>
		</div>
		
		<div class="form-group">
			<input type="hidden" name="hidden_id" value="<?php echo $row->id; ?>">
			<input type="submit" name="update" value="Update" class="btn btn-primary">
		</div>
		<?php
		}
	}
	else
	{
		?>
		<div class="form-group">
			<label>Enter First Name</label>
			<input type="text" name="first_name" value="<?=set_value('first_name')?>" class="form-control">
			<span class="text-danger"><?php echo form_error("first_name"); ?></span>
		</div>
		<div class="form-group">
			<label>Enter Last Name</label>
			<input type="text" name="last_name" value="<?=set_value('last_name')?>" class="form-control">
			<span class="text-danger"><?php echo form_error("last_name"); ?></span>
		</div>
		
		<div class="form-group">
			<input type="submit" name="insert" value="Insert" class="btn btn-primary">
		</div>
	<?php 
	}
	?>
	</form>
	<br/><br/>
	<h3 class="text-center">Fetch Data from Table using Codeigniter</h3>
	<br/><br/>
		<div class="table-reponsive">
			<table class="table table-bordered">
				<tr>
					<th>ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
				<?php 
				if($fetch_data->num_rows() > 0)
				{
					foreach($fetch_data->result() as $row)
					{
				?>
				<tr>
					<td><?php echo $row->id; ?></td>
					<td><?php echo $row->first_name; ?></td>
					<td><?php echo $row->last_name; ?></td>
					<td><a href="<?php echo base_url();?>main/update_data/<?php echo $row->id; ?>">Update</a></td>
					<td><a class="delete_data" href="#" id="<?php echo $row->id;?>">Delete</a></td>
				</tr>
					<?php }
				}
				else
				{
					?>
					<tr>
						<td cols="5">No Record Founds</td>
					</tr>
					<?php
				}
					?>
			</table>
		</div>

</div>
<script>
$(document).ready(function(){
	$('.delete_data').click(function(){
		var id = $(this).attr("id");
		if(confirm("Are You Sure You Want To Delete Data ?"))
		{
			window.location="<?php echo base_url();	?>main/delete_data/"+id;
		}
		else
		{
			return false;
		}
	});
});

</script>
</body>
</html>