<?php
class Main_model extends CI_Model
{
	public function insert_data($data)
	{
		$this->db->insert("tbl_user", $data);
	}
	function fetch_data()
	{
		//$query = $this->db->query("SELECT * FROM tbl_user ");  
		$this->db->select("*");
		$this->db->from("tbl_user");
		$query = $this->db->get();
		return $query;
	}
	function delete_data($id)
	{
		//DELETE FROM tbl_user WHERE id = $id 
		$this->db->where('id', $id);
		$this->db->delete('tbl_user');
	}
	function fetch_single_data($user_data)
	{
		$this->db->where("id",$user_data);
		$query = $this->db->get("tbl_user");
		return $query;

	}
	function update_data($data,$id)
	{
		$this->db->where("id",$id);
		$this->db->update("tbl_user",$data);
		//UPDATE tbl_user SET first_name = '$first_name', last_name = '$last_name' WHERE id = '$id'  

	}
}

?>