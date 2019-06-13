<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_dashboard extends CI_Controller {

    function __construct() {
        parent::__construct();
		//if(!$this->session->userdata('username')){
		//	redirect(base_url());
		//}
        $this->load->model("dashboard_model");
		$this->load->library('form_validation');
    }
	 function index() {
        $this->load->view("admin_login");
    }
	function login_validation()
    {
       $this->form_validation->set_rules('username', 'Username', 'required|trim');
       $this->form_validation->set_rules('password', 'Password', 'required|trim');
       
       $this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
       
       if($this->form_validation->run())
       {
           $username = $this->input->post('username');
           $password = $this->input->post('password');
           
           if($this->dashboard_model->admin_login($username,$password))
           {
              $session_data = array(
                   'username' => $username
               );
               $this->session->set_userdata("username"); 
               redirect(base_url().'admin_dashboard/add_product');
           }
           else
           {
               $this->session->set_flashdata('error','<div class="alert alert-danger">Please Enter Valid Username and Password</div>');
               redirect(base_url().'admin_dashboard');
           }
        }
        else
        {
            $this->index();
        }
    }
	function add_product() {
        $this->load->view("add-product");
    }
	function product_validation(){
		if (empty($_FILES['prod_img']['name']))
			{
			   $this->form_validation->set_rules('prod_img', 'Product Image', 'required|trim');
			}
		
        $this->form_validation->set_rules('pro_name', 'Product Name', 'required|trim');
        $this->form_validation->set_rules('pro_price', 'Product Price', 'required|trim');
		
		$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
		
		if($this->form_validation->run() == FALSE){
			$this->add_product();
		}
		else{
			$this->load->library('upload');

        if (!empty($_FILES['prod_img']['name']))
        {
            $config['upload_path'] = './images/';
            $config['allowed_types'] = 'gif|jpg|png|jpeg';     

            $this->upload->initialize($config);

            if ($this->upload->do_upload('prod_img'))
            {
                $img = $this->upload->data();
				
				$data = array(
				'product_name' => $this->input->post('pro_name'),
				'product_price' => $this->input->post('pro_price'),
				'product_image' => $img['file_name']
				);
				//print_r($data);
                $this->dashboard_model->insert_pro($data);
				$this->session->set_flashdata('success_message','Product added Successfully !!!!');
				redirect(base_url().'admin_dashboard/add_product');
				
			}
			else
            {
                echo $this->upload->display_errors();

            }
		}
	}
}
   
	function all_product() {
		$data["product"] = $this->dashboard_model->fetch_product();
        $this->load->view("all-product",$data);
    }
	function delete_prod()  
      {  
		$id = $this->uri->segment(3);
        $this->dashboard_model->delete_prod($id);  
        redirect(base_url().'admin_dashboard/all_product');
      } 
function update_prod(){
	
}	  
    //Logout
    function logout() {
        $this->session->unset_userdata("username");
        redirect(base_url().'admin_dashboard');
    }

}

?>