<?php

class Info extends CI_Controller
{
	private $filename = "import_data"; // nama file .csv

	function __construct()
	{
		parent::__construct();
		// checkAuth();
		$this->load->library('ssp');
		$this->load->model('model_transitfile');
		$this->load->library('form_validation');
		$this->load->helper('url');
	}

	public function index(){
        $kd_level_user = $this->session->userdata('id_level_user');
 
		if ($kd_level_user == 1) {
			$this->template->load('template/templatedashboard', 'info/info_view');
		} else if ($kd_level_user == 0) {
			$this->template->load('template/templatedashboard2', 'info/info_view');
		}
	}



	
}
