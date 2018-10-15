<?php  
 class Main_model extends CI_Model  
 {  
      function test_main()  
      {  
           echo "This is model function";  
      }  
      function insert_data($data)  
      {  
           $this->db->insert("tbl_users", $data);  
      }  
      function fetch_data()  
      {  
           //$query = $this->db->get("tbl_users");  
           //select * from tbl_users  
           //$query = $this->db->query("SELECT * FROM tbl_users ORDER BY id DESC");  
		
           $this->db->select("*");  
           $this->db->from("tbl_users");  
           $query = $this->db->get();  
           return $query;  
      }  
      function delete_data($id){  
           $this->db->where("id", $id);  
           $this->db->delete("tbl_users");  
           //DELETE FROM tbl_users WHERE id = $id  
      }  
      function fetch_single_data($id)  
      {  
           $this->db->where("id", $id);  
           $query = $this->db->get("tbl_users");  
           return $query;  
           //Select * FROM tbl_users where id = '$id'  
      }  
      function update_data($data, $id)  
      {  
           $this->db->where("id", $id);  
           $this->db->update("tbl_users", $data);  
           //UPDATE tbl_users SET first_name = '$first_name', last_name = '$last_name' WHERE id = '$id'  
      } 
 }