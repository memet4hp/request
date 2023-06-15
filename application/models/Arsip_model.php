<?php

class arsip_model extends CI_Model
{
	var $table = 'tabel_data';
	var $column_order = array(null,'nama', 'tgl_order', 'detail', 'prioritas'); //set column field database for datatable orderable
	var $column_search = array('nama','tgl_order', 'detail', 'prioritas','status'); //set column field database for datatable searchable 
	var $order = array('tgl_order' => 'asc'); // default order

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	private function _get_datatables_query()
	{
		$input = $this->input->post();

		if ($input['prioritas'] == '') {
		} else {
			$this->db->like('prioritas', $input['prioritas']);
		}

		if ($input['status'] == '') {
		} else {
			$this->db->like('status', $input['status']);
		}

		if ($input['jenis'] == '') {
		} else {
			$this->db->like('jenis', $input['jenis']);
		}
	
		$this->db->from($this->table);

		$i = 0;

		foreach ($this->column_search as $item) // loop column 
		{
			if ($_POST['search']['value']) // if datatable send POST for search
			{
				if ($i === 0) // first loop
				{
					$this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$this->db->like($item, $_POST['search']['value']);
				} else {
					$this->db->or_like($item, $_POST['search']['value']);
				}
				if (count($this->column_search) - 1 == $i) //last loop
					$this->db->group_end(); //close bracket
			}
			$i++;
		}

		if (isset($_POST['order'])) // here order processing
		{
			$this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} else if (isset($this->order)) {
			$order = $this->order;
			$this->db->order_by(key($order), $order[key($order)]);
		}
	}

	function get_datatables()
	{
		$this->_get_datatables_query();
		if ($_POST['length'] != -1)
			$this->db->limit($_POST['length'], $_POST['start']);
			// $this->db->where('jenis', 'RUMAH');	 
			$this->db->where('status', '3');	 

		$this->db->order_by('tgl_order', 'asc');
		$query = $this->db->get();
		return $query->result();
	}

	function count_filtered()
	{
		$this->_get_datatables_query();
		$query = $this->db->get();
		return $query->num_rows();
	}

	function count_all()
	{
		$this->db->from($this->table);
		return $this->db->count_all_results();
	}

	function tampil_data()
	{
		$this->db->select('*');
		$this->db->from('tabel_data');
		$query =  $this->db->get();
		return $query;
	}

	

	function delete_data($kode)
	{
		$this->db->where('kode', $kode);
		return $this->db->delete('tabel_data');
	}
}
