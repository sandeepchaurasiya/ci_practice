<?php
class LiveTable_model extends CI_Model
{
	function load_data()
	{
		$this->db->order_by('id', 'DESC');
		$query = $this->db->get('sample_data1');
		return $query->result_array();
	}

	function insert($data)
	{
		$this->db->insert('sample_data1', $data);
	}

	function update($data, $id)
	{
		$this->db->where('id', $id);
		$this->db->update('sample_data1', $data);
	}

	function delete($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('sample_data1');
	}
}
?>