<?php

class Tracing2 extends CI_Controller
{


    function __construct()
    {
        parent::__construct();
        checkAuth();
        $this->load->library('ssp');
        $this->load->model('Tracing_model');
        $this->load->model('reserve_model');
        $this->load->model('biodata_model');
        $this->load->library('form_validation');
        $this->load->helper('url');
        $this->load->library('user_agent');
    }

    function index()
    {
        $title = 'Reservation';
        $dataa = array(
            'parent' => 'Reservation',
            'title' => $title,
        );
        // $dataa['data'] = $this->reserve_model->getUser();
        $dataa['data'] = $this->Tracing_model->tampil_data();
        $this->template->load('template/templatedashboard', 'Tracing2/Tracing_view', $dataa);
    }

    public function reservationList(){

        // POST data
        $postData = $this->input->post();
        // Get data
        $data = $this->Tracing_model->getReservation($postData);

        echo json_encode($data);
      }


     


    // .---------------------------------------------------------------------------------------------------------


   
}
