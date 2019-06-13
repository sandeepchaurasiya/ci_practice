<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends CI_Controller{
	function __construct(){
		parent :: __construct();
		$this->load->model("dashboard_model");
		$this->load->library('cart');
	}
	function index(){
		$data["product"] = $this->dashboard_model->fetch_product();
		$this->load->view("front-page/product-page",$data);
	}
	function add(){
		
		$data = array(
		"id" => $_POST["product_id"],
		"name" => $_POST["product_name"],
		"price" => $_POST["product_price"],
		"image" => $_POST["product_img"],
		"qty" => 1
		);
		$this->cart->insert($data);
	}
	function cart()
	{
		$cart_data["cart_data"] = $this->cart->contents();
		$this->load->view("front-page/cart-page",$cart_data);
	}
	function remove()
	{
	  $row_id = $_POST["row_id"];
	  $data = array(
	   'rowid'  => $row_id,
	   'qty'  => 0
	  );
	$this->cart->update($data);
	}
	function thankyou(){
		$this->load->view("thank-you");
	}
	function qty_update(){
		$row_id = $_POST["rowid"];
		$value = $_POST["value"];
		$data = array(
		'rowid' => $row_id,
		'qty' => $value
		);
		$this->cart->update($data);
		//print_r($data);
	}
	function clear(){ 
	  $this->cart->destroy(); 
		redirect(base_url().'product/thankyou');
	 }
}
?>