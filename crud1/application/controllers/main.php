<?php
defined('BASEPATH') OR exit('No direct script allowed');
class Main extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->library('form_validation');
	}
	public function index()
	{
		$this->load->model("main_model");
		$data["fetch_data"] = $this->main_model->fetch_data();
		$this->load->view('main_view',$data);
		}
	public function form_validation()
	{
	
		$this->form_validation->set_rules("first_name","First Name","required|alpha");
		$this->form_validation->set_rules("last_name","Last Name","required|alpha");
		
		if($this->form_validation->run())
		{
			$this->load->model("main_model");
			$data = array(
			"first_name" => $this->input->post("first_name"),
			"last_name" => $this->input->post("last_name"),
			);
			
			if($this->input->post("insert"))
			{
				$this->main_model->insert_data($data);
				redirect(base_url()."main/inserted");
			}
			if($this->input->post("update"))
			{
				$this->main_model->update_data($data,$this->input->post("hidden_id"));
				redirect(base_url().'main/updated');
			}
		}
		else
		{
			$this->index();
		}
		
	}
	public function inserted()
	{
		$this->index();
	}
	public function delete_data()
	{
		$id = $this->uri->segment(3);
		$this->load->model('main_model');
		$this->main_model->delete_data($id);
		redirect(base_url()."/main/deleted");
	}
	public function deleted()
	{
		$this->index();
	}
	 //base url - http://localhost/tutorial/codeigniter  
     //redirect url - http://localhost/tutorial/codeigniter/main/inserted  
    //main - segment(1)  
	//inserted - segment(2)  
	public function update_data()
	{
		$user_id = $this->uri->segment(3);
		$this->load->model("main_model");
		$data['user_data']=$this->main_model->fetch_single_data($user_id);
		$data['fetch_data'] = $this->main_model->fetch_data(); 
		$this->load->view("main_view", $data);
		
	}
	public function updated()
	{
		$this->index();
	}
	
}


?>