<?php

class Transitfile extends CI_Controller
{
	private $filename = "import_data"; // nama file .csv

	function __construct()
	{
		parent::__construct();
		checkAuth();
		$this->load->library('ssp');
		$this->load->model('model_transitfile');
		$this->load->library('form_validation');
		$this->load->helper('url');
	}

	public function index(){
 
		$this->load->library('session');
		$quser = 'SELECT COUNT(*) AS hasil FROM log_duplo where status = "Tersedia Untuk Analisa"'  ;
		$data['listbatchtersedia'] = $this->db->query($quser)->row_array();
		$quser = 'SELECT COUNT(*) AS hasil FROM tabel_data where status = "Menunggu"';
		$data['suratmasuk'] = $this->db->query($quser)->row_array();

		$quser = 'SELECT COUNT(*) AS hasil FROM tabel_data where status = "Sample Diterima Admin"';
		$data['suratditerima'] = $this->db->query($quser)->row_array();

		$quser = 'SELECT COUNT(*) AS hasil FROM tabel_data where status = "Menunggu Konfirmasi Batch"';
		$data['suratdisample'] = $this->db->query($quser)->row_array();

		$quser = 'SELECT COUNT(*) AS hasil FROM table_sample where status = "Menunggu Konfirmasi Batch"';
		$data['samplemasuk'] = $this->db->query($quser)->row_array();

		$quser = 'SELECT COUNT(*) AS hasil FROM table_sample';
		$data['sampledelete'] = $this->db->query($quser)->row_array();

		$quser = 'SELECT COUNT(*) AS hasil FROM log_duplo where status = "Analisa"';
		$data['listbatch'] = $this->db->query($quser)->row_array();

		$quser = 'SELECT COUNT(*) AS hasil FROM table_batch where status = "Siap Untuk Analisa"';
		$data['batch'] = $this->db->query($quser)->row_array();
		$quser = 'SELECT COUNT(DISTINCT(id_reg)-1) AS hasil FROM table_batch';
		$data['laporan'] = $this->db->query($quser)->row_array();
		$data['file'] = $this->model_transitfile->tampildata();
		$this->template->load('template/templatecustom', 'transit/view', $data);
	}

	public function download($id){
		$this->load->helper('download');
		$fileinfo = $this->model_transitfile->download($id);
		$file = 'uploads/transitfile/'.$fileinfo['filename'];
		force_download($file, NULL);
	}

	public function delete(){
		$id = $this->uri->segment(3);
		if (!empty($id)) {
			$this->db->where('id', $id);
			$this->db->delete('table_transitfile');
	}
	redirect('transitfile');
	}

	public function insert(){
		//load session library to use flashdata
			$this->load->library('session');
	  
		 //Check if file is not empty
			if(!empty($_FILES['upload']['name'])){
			  $config['upload_path'] = 'uploads/transitfile/';
				  //restrict uploads to this mime types
			  $config['allowed_types'] = 'xlsx|xls';
			  $config['file_name'] = $_FILES['upload']['name'];
			  
				  //Load upload library and initialize configuration
			  $this->load->library('upload', $config);
			  $this->upload->initialize($config);
			  
			  if($this->upload->do_upload('upload')){
				  $uploadData = $this->upload->data();
				  $filename = $uploadData['file_name'];
	  
		  //set file data to insert to database
				  $file['description'] = $this->input->post('description');
				  $file['date'] = $this->input->post('date');
				  $file['filename'] = $filename;
	  
				  $query = $this->model_transitfile->insertfile($file);
				  if($query){
					  
					 $this->session->set_flashdata('success','File uploaded successfully');
					 redirect('transitfile');	
				 }
				 else{
					  
					 $this->session->set_flashdata('error','File uploaded but not inserted to database');
					 redirect('transitfile');	
				 }
	  
			 }else{
			  
			   $this->session->set_flashdata('error','Cannot upload file.');
			   redirect('transitfile');	 
		   }
	   }else{
		   
		  $this->session->set_flashdata('error','Cannot upload empty file.');
		  redirect('transitfile');	
	  }
	  
	  }

	
}
