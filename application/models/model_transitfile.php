<?php

class Model_transitfile extends CI_Model
{

	public $table = "tabel_data";

	 
	public function download($id)
	{
		$query = $this->db->get_where('table_transitfile', array('id' => $id));
		return $query->row_array();
	}

	public function insertfile($file)
	{
		return $this->db->insert('table_transitfile', $file);
	}

	public function tampildata()
	{
		$query = $this->db->get('table_transitfile');
		return $query->result();
	}

	 
 


}
