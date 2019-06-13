<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Dashboard_model extends CI_Model{ 

	 function admin_login($username,$password)
    {
        $this->db->where('username',$username);
        $this->db->where('password',$password);
        $query = $this->db->get('admin_login');
        
        if($query->num_rows() > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
	function fetch_product()
	{	
	$query = $this->db->get("product");
	return $query;
	}
	function insert_pro($data){
		$this->db->insert('product',$data);
	}
	function delete_prod($id)
	{
		$this->db->where('product_id',$id);
		$this->db->delete('product');
	}
	
	
    //Insert Registration Form
    function insert_reg($reg_data) {
        $this->db->insert('user_login', $reg_data);
        return true;
    }
    //Fetch Login Form
    function fetch_log($log_data) {
        $this->db->select('user_id');
        $this->db->where('email', $log_data["email"]);
        $this->db->where('password', $log_data["password"]);
        $query = $this->db->get('user_login')->result();

        if (!empty($query)) {
            $this->session->set_userdata('login_id', $query[0]->user_id);
            return true;
        } else {
            return false;
        }
    }
    //Fetch Profile Data
    function fetch_user_data($profile_id)
    {
        $this->db->where('user_id',$profile_id);
        $query = $this->db->get('user_login');
        return $query;
    }
    //Upload Profile File Data
    function insert_file($output)
    {
        $this->db->insert('upload_file',$output);
    }
    //Update Profile
    function update_profile($profile_id, $profile_data)
    {
        $this->db->where("user_id", $profile_id);  
        $this->db->update("user_login", $profile_data);
    }
    //Insert Created Cases  
    function create_cases($com_data){
        $this->db->insert('com_cases', $com_data);
        $insertId = $this->db->insert_id();
        return  $insertId;
    }
    //Insert Cases File
    function insert_cases_file($output){
         $this->db->insert('upload_file',$output);
    }
}
?>