<?php

class Tracing extends CI_Controller
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
        $this->template->load('template/templatedashboard', 'Tracing/Tracing_view', $dataa);
    }

    public function reservationList()
    {
        // POST data
        $postData = $this->input->post();
        // Get data
        $data = $this->Tracing_model->getReservation($postData);

        echo json_encode($data);
    }

    public function ajax_list()
    {
        $this->load->model('Tracing_model_new', 'Trace_new');
        $list = $this->Trace_new->get_datatables();
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $key) {
            if ($key->approve == '0') {
                $status =  '<label class="badge badge-warning">Waiting</label>';
            } else if ($key->approve == '1') {
                $status = '<label class="badge badge-success">Approved</label>';
            } else if ($key->approve == '2') {
                $status = '<label class="badge badge-danger">Canceled</label>';
            } else {
                $status =  '<label class="badge badge-warning">' . $key->note . '</label>';
            }
            $no++;
            $row = array();
            $row[] = $no;
            $row[] = date('d-m-Y', strtotime($key->tanggal));
            $row[] = date('g:i A', strtotime($key->start)) . ' - ' . date('g:i A', strtotime($key->end));
            $row[] = $key->meeting_room;
            $row[] = $key->scope;
            $row[] = $key->subject;
            $row[] = $key->user;
            $row[] = $key->dept;
            $row[] = $key->participan;
            $row[] = $key->teleconference;
            $row[] = $status;
            $row[] = $key->note;
            $row[] = "";

            $data[] = $row;
        }

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->Trace_new->count_all(),
            "recordsFiltered" => $this->Trace_new->count_filtered(),
            "data" => $data,
        );
        echo json_encode($output);
    }





    // .---------------------------------------------------------------------------------------------------------



}
