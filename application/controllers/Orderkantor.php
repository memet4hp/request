<?php

class Orderkantor extends CI_Controller
{
	private $filename = "import_data"; // nama file .csv

	function __construct()
	{
		parent::__construct();
		checkAuth();
		$this->load->library('ssp');
		$this->load->model('orderkantor_model');
		$this->load->model('biodata_model');
		$this->load->library('form_validation');
		$this->load->helper('url');
		$this->load->library('user_agent');
	}

	function index()
	{
		 
		$dataa['data'] = $this->orderkantor_model->getUser();
		$dataa['kodeunik'] = $this->orderkantor_model->buat_kode();

		$this->template->load('template/templatedashboard', 'orderkantor/orderkantor_add', $dataa);
	}

	function add()
	{

		$ip = $this->input->ip_address();
		$browser = $this->agent->browser();
		$os = $this->agent->platform();

		if (isset($_POST['simpan'])) {
			$data = array(
				'nama'          		=> $this->input->post('nama', TRUE),
				'tgl_order'        	=> $this->input->post('tgl_order', TRUE),
				'detail'        	=> $this->input->post('detail', TRUE),
				'jenis'        	=> $this->input->post('jenis', TRUE),
				'prioritas'        	=> $this->input->post('prioritas', TRUE),
				'tahun' 				=> date('Y'),
				'bulan' 				=> date('m'),
				'ip' => $ip,
				'browser' => $browser,
				'os' => $os,
			);
			$this->db->insert("tabel_data", $data);
			$this->session->set_flashdata('success', 'Reservation saved!');
			redirect('orderkantor');
		}
	}

	function edit()
	{

	 
		if (isset($_POST['simpan'])) {
			$data = array(
				'tgl_pemeriksaan'        	=> $this->input->post('tgl_pemeriksaan', TRUE),
				'estimasi_pengadaan'        	=> $this->input->post('estimasi_pengadaan', TRUE),
				'estimasi_pengerjaan'        	=> $this->input->post('estimasi_pengerjaan', TRUE),
				'dikerjakandengan' 				=> $this->input->post('dikerjakandengan', TRUE),
				 
			);
			$this->db->insert("tabel_data", $data);
			$this->session->set_flashdata('success', 'Reservation saved!');
			redirect('pemeriksaan');
		}
	}

 
}
