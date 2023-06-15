<?php

	class Biodata_model extends CI_Model
	
		{
		public $table ="tabel_biodata";
		
		function tampil_biodata(){
			$hasil = $this->db->query("select * from tabel_biodata order by nama asc");
        	return $hasil;
		}

		function save($data)
		{
	
			$data = array(
				//tabel di database => name di form
			 
				'nama'        	=> $this->input->post('nama', TRUE),		
				'nik'          		=> $this->input->post('nik', TRUE),	
				'department'          		=> $this->input->post('department', TRUE),
				'section'          		=> $this->input->post('section', TRUE),
				 
			);
			$this->db->insert($this->table, $data);
		}

	  	public function upload_file($filename){

			$this->load->library('upload'); // Load librari upload
		 	$config['upload_path'] = './excel/';
    		$config['allowed_types'] = 'xlsx';
    		$config['max_size']  = '0';
   			$config['overwrite'] = true;
			$config['file_name'] = $filename;
			$filenamee =  $_FILES['file']['name'];  
		    $this->upload->initialize($config); // Load konfigurasi uploadnya
		    if($this->upload->do_upload('file')){ // Lakukan upload dan Cek jika proses upload berhasil
		      $return = array('result' => 'success', 'file' => $this->upload->data(), 'error' => '');		      
			  return $return;
		    }else{
		      // Jika gagal :
		      $return = array('result' => 'failed', 'file' => '', 'error' => $this->upload->display_errors());
		      return $return;
		    }
		  }
		// Buat sebuah fungsi untuk melakukan insert lebih dari 1 data
		
		public function insert_multiple($data){
		    $this->db->insert_batch('tabel_biodata', $data);		
		}
	 

	}
	
?>