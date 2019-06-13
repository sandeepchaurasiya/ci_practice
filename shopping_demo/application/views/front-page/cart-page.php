<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Cart | E-Shopper</title>
    <link href="<?=base_url();?>front-assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?=base_url();?>front-assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="<?=base_url();?>front-assets/css/prettyPhoto.css" rel="stylesheet">
    <link href="<?=base_url();?>front-assets/css/price-range.css" rel="stylesheet">
    <link href="<?=base_url();?>front-assets/css/animate.css" rel="stylesheet">
	<link href="<?=base_url();?>front-assets/css/main.css" rel="stylesheet">
	<link href="<?=base_url();?>front-assets/css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?=base_url();?>front-assets/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?=base_url();?>front-assets/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?=base_url();?>front-assets/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<?=base_url();?>front-assets/images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-md-4 clearfix">
						
					</div>
					<div class="col-md-8 clearfix">
						<div class="shop-menu clearfix pull-right">
							<ul class="nav navbar-nav">
								<li><a href="<?=base_url();?>product/index"><i class="fa fa-crosshairs"></i> Product</a></li>
								<li><a href="<?=base_url();?>product/cart"><i class="fa fa-shopping-cart"></i> Cart <span class="badge badge-secondary"><?= $this->cart->total_items(); ?></span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	</header><!--/header-->

	<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li class="active">Shopping Cart</li>
				</ol>
			</div>
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Item</td>
							<td class="description">Description</td>
							<td class="price">Price</td>
							<td class="quantity">Quantity</td>
							<td class="total">Total</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
					<?php //print_r($);
					$count = 0;
	foreach($cart_data as $items)
  {
   $count++;
   echo '
	<tr>
		<td class="cart_product">
			<a href=""><img src="'.base_url().'images/'.$items["image"].'" alt="" height="110px" width="110px"></a>
		</td>
		<td class="cart_description">
			<h4><a href="">'.$items['name'].'</a></h4>
		</td>
		<td class="cart_price">
			<p>$ '.$items["price"].'.00</p>
		</td>
		<td class="cart_quantity">
			<div class="cart_quantity_button">
				
				<input class="cart_quantity_input qty_no" type="number" id="'.$items["rowid"].'"  name="quantity" value="'.$items["qty"].'" autocomplete="off" size="2">
				
			</div>
		</td>
		<td class="cart_total">
			<p class="cart_total_price">$ '.$items["subtotal"].'.00</p>
		</td>
		<td class="cart_delete">
			<a class="cart_quantity_delete remove" id="'.$items["rowid"].'" href=""><i class="fa fa-times"></i></a>
		</td>
	</tr>
   ';
  }?>
  <tr>
  <td></td>
  	<td></td>
  	<td><?php if($count == 0)
  {
	echo '<h3>Cart is Empty</h3>';
  }?></td>
  </tr>
  <tr>
  	<td></td>
  	<td></td>
  	<td></td>
  	<td class="cart_description"><h4><a href="">Total</a></h4></td>
  	<td><p class="cart_total_price">$ <?php echo $this->cart->total();?>.00</p></td>
  	<td></td>
  </tr>

					</tbody>
				</table>
				
			</div>
			<div class="text-right"><a class="btn btn-default check_out btn-lg" href="<?=base_url();?>product/clear">Check Out</a></div>
		</div>
		
	</section> <!--/#cart_items-->
	
    <script src="<?=base_url();?>front-assets/js/jquery.js"></script>
	<script src="<?=base_url();?>front-assets/js/bootstrap.min.js"></script>
	<script src="<?=base_url();?>front-assets/js/jquery.scrollUp.min.js"></script>
    <script src="<?=base_url();?>front-assets/js/jquery.prettyPhoto.js"></script>
    <script src="<?=base_url();?>front-assets/js/main.js"></script>
	<script>
	$(document).ready(function(){
$('.remove').click(function(){
  var row_id = $(this).attr("id");
  if(confirm("Are you sure you want to remove this?"))
  {
   $.ajax({
    url:"<?php echo base_url(); ?>product/remove",
    method:"POST",
    data:{row_id:row_id},
    success:function(data)
    {
		location.reload();
    }
   });
  }
  else
  {
   return false;
  }
 });
 });
 
 $('.qty_no').bind('keyup mouseup', function () {
	 var value = $(this).val();
	 var rowid = $(this).attr("id");
	 //alert(rowid);
	 $.ajax({
		 url:"<?php echo base_url();?>product/qty_update",
		 method:"POST",
		 data:{value:value,rowid:rowid},
		 success:function(data){
			// alert(data);
			location.reload();
		 }
	 });
 });
	</script>
</body>
</html>