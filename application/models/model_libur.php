<?php

class Model_libur extends CI_Model

{
	public $table = "tabel_libur";

	function tampil_libur()
	{

		// $a = date("Y-01-01");
		// $b = date("Y-12-31");
		// $hasil = $this->db->query("select * from tabel_libur  where tanggal >= '$a' AND tanggal <= '$b' order by tanggal asc");
		// return $hasil;

		$a = date("Y");
		$this->db->select('*');
		$this->db->from('tabel_libur');
		$this->db->order_by('tanggal');
		$this->db->where('SUBSTRING(tabel_libur.tanggal,1,4)', $a);
		$query =  $this->db->get();

		return $query;
	}

	function save($data)
	{
		$data = array(
			//tabel di database => name di form	 
			'tanggal'        	=> $this->input->post('tanggal', TRUE),
			'keterangan'        	=> $this->input->post('keterangan', TRUE),
		);
		$this->db->insert($this->table, $data);
	}

	public function upload_file($filename)
	{

		$this->load->library('upload'); // Load librari upload
		$config['upload_path'] = './excel/';
		$config['allowed_types'] = 'xlsx';
		$config['max_size']  = '0';
		$config['overwrite'] = true;
		$config['file_name'] = $filename;
		$filenamee =  $_FILES['file']['name'];
		$this->upload->initialize($config); // Load konfigurasi uploadnya
		if ($this->upload->do_upload('file')) { // Lakukan upload dan Cek jika proses upload berhasil
			$return = array('result' => 'success', 'file' => $this->upload->data(), 'error' => '');
			return $return;
		} else {
			// Jika gagal :
			$return = array('result' => 'failed', 'file' => '', 'error' => $this->upload->display_errors());
			return $return;
		}
	}
	// Buat sebuah fungsi untuk melakukan insert lebih dari 1 data		
	public function insert_multiple($data)
	{
		$this->db->insert_batch('libur', $data);
	}
}
