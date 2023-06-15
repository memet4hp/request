<?php

class Admin extends CI_Controller
{

	function __construct()
	{
		parent::__construct();
		$this->load->library('user_agent');
		$this->load->model('login_model');
	}

	function index()
	{
		if ($this->session->userdata('authenticated')) // Jika user sudah login (Session authenticated ditemukan)
			redirect('page/welcome'); // Redirect ke page welcome
		$this->load->view('Admin/login');
	}

	function login()
	{
		if (isset($_POST['submit'])) {

			$username	= $this->input->post('username');
			$password 	= $this->input->post('password');
			$kd_level_user = $this->session->userdata('id_level_user');

			$loginUser		= $this->login_model->login($username, $password);

			if (!empty($loginUser)) {

				$this->session->set_userdata($loginUser);
				$this->session->set_userdata('login_data', $loginUser);
				$this->session->set_userdata('isAuth', 1);

				//----------- LOG ACTIVITY ------------------------------------------------------------------------------
				$browser = $this->agent->browser();
				$os = $this->agent->platform();
				$ip = $this->input->ip_address();
				// helper_log("login", "Login Aplikasi", "Login", "$ip", "$browser", "$os");
				// ------------------------------------------------------------------------------------------------------
				$a =  $this->session->userdata('nama_lengkap');  
				$b =  $this->session->userdata('id_level_user');  
				$this->session->set_flashdata('success', 'Welcome '.$a.' ');	
				 
					redirect('home');
				 
			} else {
				$this->session->set_flashdata('danger', 'Incorrect username or password.');
				redirect('Admin');
			}
		} else {
			redirect('Admin');
		}
	}

	function logout()
	{
		$this->session->sess_destroy();
		redirect('Admin/login', 'refresh');
	}
}
