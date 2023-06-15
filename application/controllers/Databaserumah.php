<?php

class databaserumah extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        // checkAuth();
        // $this->load->library('ssp');
        $this->load->model('databaserumah_model');
        $this->load->model('biodata_model');
        $this->load->library('form_validation');
        $this->load->helper('url');
        $this->load->library('user_agent');
    }

    function index()
    {
        $data['data'] = $this->databaserumah_model->tampil_data();
        $data['tahunrumah'] = $this->databaserumah_model->tampil_tahunrumah();
        $data['tiperumah'] = $this->databaserumah_model->tampil_tiperumah();
        $data['alokasirumah'] = $this->databaserumah_model->tampil_alokasirumah();
        $data['statusrumah'] = $this->databaserumah_model->tampil_statusrumah();
        $this->template->load('templates/layoutbackend', 'databaserumah/databaserumah_view', $data);
    }
 

    public function ajax_list()
    {
        $list = $this->databaserumah_model->get_datatables();
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $a) {

      
            
            //--------------------- STATUS ---------------------

            $no++;
            $row = array();
            $row[] = $a->no;
            $row[] = $a->id_rumah;
            $row[] = $a->user;
            $row[] = $a->dept;
            $row[] = $a->alokasi;
            $row[] = $a->tipe;
            $row[] = $a->tahun_rumah;
            $row[] = $a->status;
            
            
            $data[] = $row;
        }

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->databaserumah_model->count_all(),
            "recordsFiltered" => $this->databaserumah_model->count_filtered(),
            "data" => $data,
        );
        //output to json format
        echo json_encode($output);
    }

 
}