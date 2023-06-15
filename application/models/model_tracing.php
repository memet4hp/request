<?php

class Model_tracing extends CI_Model
{

	public $table = "tabel_data";

	function tampil_data($id)
	{
		$this->db->select('*');
		$this->db->from('table_batch');
		$this->db->where('id_reg', $id);
		$query =  $this->db->get();

		return $query;
	}

	function ubah($data)
	{

		$kode	= $this->input->post('id_reg');
		$this->db->where('id_reg', $kode);
		$this->db->update('tabel_data', $data);
		return TRUE;
	}

	function printbukubesar($id)
	{
		$this->db->select('*');

		$this->db->from('table_batch');
		$this->db->where('id_reg', $id);
		// $this->db->where('status','Selesai');
		$query =  $this->db->get();

		return $query;
	}

	function tampil_tracingbyid($id)
	{
		$this->db->select('*');
		$this->db->group_by('id_reg');
		$this->db->distinct('id_reg');
		$this->db->from('tabel_data');
		$this->db->join('biodata', 'biodata.nama=tabel_data.pengirim');
		$this->db->where('status', 'Sample Diterima Admin');
		$this->db->where('kode', $id);
		$query =  $this->db->get();

		return $query;
	}

	function tampil_tracing()
	{
		$this->db->select('*');
		$this->db->group_by('id_reg');
		// $this->db->order_by('statusmemorandum');
		$this->db->distinct('id_reg');
		$this->db->from('tabel_data');
		$this->db->where_in('status', ['Tersedia Untuk Analisa', 'Analisa', 'Selesai', 'Selesai Dengan Catatan']);
		$this->db->join('biodata', 'biodata.nama=tabel_data.pengirim');
		$query =  $this->db->get();
		return $query;
	}

	function tampil_tracingmemorandum()
	{
		$this->db->select('*');
		$this->db->group_by('id_reg');
		$this->db->order_by('statusmemorandum');
		$this->db->distinct('id_reg');
		$this->db->from('tabel_data');
		$this->db->where_in('status', ['Tersedia Untuk Analisa', 'Analisa', 'Selesai', 'Selesai Dengan Catatan']);
		$this->db->join('biodata', 'biodata.nama=tabel_data.pengirim');
		$query =  $this->db->get();
		return $query;
	}

	function export_tracingbyid($id)
	{
		$this->db->select('*');
		$this->db->from('table_batch');
		// $this->db->join('biodata', 'biodata.nama=tabel_data.pengirim');
		$this->db->where('id_reg', $id);
		$query =  $this->db->get();

		return $query;
	}

	public function get_nama()
	{
		$query = $this->db->get('biodata')->result();
		return $query;
	}

	
	function export_excel($id)
	{
		$this->db->select('*');
		$this->db->from('table_batch');
		$this->db->where('id_reg', $id);
		// $this->db->where('status','Selesai');
		$query =  $this->db->get()->result();
		return $query;
	}

	function export_exceldataatas($id)
	{
		$this->db->select('*');
		$this->db->group_by('id_reg');
		$this->db->distinct('id_reg');
		$this->db->from('table_batch');
		$this->db->where('id_reg', $id);
		// $this->db->where('status','Selesai');
		$query =  $this->db->get()->result();
		return $query;
	}


	// Buat sebuah fungsi untuk melakukan insert lebih dari 1 data


}
