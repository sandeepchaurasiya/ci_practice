<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Shop | E-Shopper</title>
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
							<li><a href="<?= base_url();?>product/index"><i class="fa fa-crosshairs"></i> Product</a></li>
								<li><a href="<?= base_url();?>product/cart"><i class="fa fa-shopping-cart"></i> Cart <span class="badge badge-secondary"><?= $this->cart->total_items(); ?></span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
	</header>
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-12 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Features Items</h2>
						<?php 
						foreach($product->result() as $row){
							echo '
							<div class="col-sm-3">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="'.base_url().'images/'.$row->product_image.'" alt="" />
										<h2>$ '.$row->product_price.'</h2>
										<p>'.$row->product_name.'</p>
										<button href="" class="btn btn-default add-to-cart add_cart" data-productid = "'.$row->product_id.'" data-productname = "'.$row->product_name.'" data-productprice="'.$row->product_price.'" data-productimg="'.$row->product_image.'">
										<i class="fa fa-shopping-cart"></i>Add to cart
										</button>
									</div>
								</div>
							</div>
						</div>
							';
						}
						?>
						
					</div><!--features_items-->
				</div>
			</div>
		</div>
	</section>
	
    <script src="<?=base_url();?>front-assets/js/jquery.js"></script>
	<script src="<?=base_url();?>front-assets/js/price-range.js"></script>
    <script src="<?=base_url();?>front-assets/js/jquery.scrollUp.min.js"></script>
	<script src="<?=base_url();?>front-assets/js/bootstrap.min.js"></script>
    <script src="<?=base_url();?>front-assets/js/jquery.prettyPhoto.js"></script>
    <script src="<?=base_url();?>front-assets/js/main.js"></script>
	<script>
	$(document).ready(function(){
		
		$('.add_cart').click(function(){
			//alert($(this).data("productid"));
			var product_id = $(this).data("productid");
			var product_name = $(this).data("productname");
			var product_price = $(this).data("productprice");
			var product_img = $(this).data("productimg");
			
			$.ajax({
				url:"<?php echo base_url();?>product/add",
				method:"POST",
				data : {product_id:product_id,product_name:product_name,product_price:product_price,product_img:product_img},
			success:function(data){
				location.reload();
				//alert(data);
			}			
			});
		});
	});
	</script>
</body>
</html>