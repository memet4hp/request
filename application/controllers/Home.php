<?php

class Home extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
         
        $this->load->model('Home_model');
        $this->load->library('form_validation');
    }

    function index()
    {
        $title = 'Dashboard';
        $data = array(
            'title' => $title,
        );

        foreach ($this->Home_model->statistik_month()->result_array() as $row) {
            $data['grafik'][] = (float)$row['Januari'];
            $data['grafik'][] = (float)$row['Februari'];
            $data['grafik'][] = (float)$row['Maret'];
            $data['grafik'][] = (float)$row['April'];
            $data['grafik'][] = (float)$row['Mei'];
            $data['grafik'][] = (float)$row['Juni'];
            $data['grafik'][] = (float)$row['Juli'];
            $data['grafik'][] = (float)$row['Agustus'];
            $data['grafik'][] = (float)$row['September'];
            $data['grafik'][] = (float)$row['Oktober'];
            $data['grafik'][] = (float)$row['November'];
            $data['grafik'][] = (float)$row['Desember'];
        }

        $data['data'] = $this->Home_model->tampil_data();

        $kd_level_user = $this->session->userdata('id_level_user');

        if ($kd_level_user == 1) {
            $this->template->load('templates/layoutbackend', 'home/home_view', $data);
		}
        else if ($kd_level_user == 0) {
            redirect('order');
		}
        else {

        }
        
    }
}
