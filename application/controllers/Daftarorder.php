<?php

class Daftarorder extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        checkAuth();
        $this->load->library('ssp');
        $this->load->model('daftarorder_model');
        $this->load->model('biodata_model');
        $this->load->library('form_validation');
        $this->load->helper('url');
        $this->load->library('user_agent');
    }

    function index()
    {
        $title = 'daftarorder';
        $dataa = array(
            'parent' => 'daftarorder',
            'title' => $title,
        );

        $dataa['data'] = $this->daftarorder_model->tampil_data();
        $this->template->load('template/templatedashboard', 'daftarorder/daftarorder_view', $dataa);
    }

    public function daftarorderList()
    {
        // POST data
        $postData = $this->input->post();
        // Get data
        $data = $this->daftarorder_model->getdaftarorder($postData);
        echo json_encode($data);
    }

    function cancel($kode)
    {
        $this->daftarorder_model->cancel_data($kode);
        redirect('home', 'refresh');
    }

    public function ajax_list()
    {
        $list = $this->daftarorder_model->get_datatables();
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $a) {

            $id_daftarorder = $a->id_order;
            if ($a->status == '0') {
                $status = "<label class='label label-md label-danger'>Menunggu pemeriksaan</label>";
            } else if ($a->status == '1') {
                $status = "<label class='label label-md label-warning'>Sedang dikerjakan</label>";
            } else {
                $status = "<label class='label label-md label-success'>Selesai</label>";
            }

            //--------------------- STATUS ---------------------
            
            $no++;
            $row = array();
            $row[] = $no;
            $row[] = $a->nama;
            $row[] = format_indo($a->tgl_order);
            $row[] = $a->detail;
            $row[] = $a->prioritas;
            $row[] = $status;
            $data[] = $row;
        }

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->daftarorder_model->count_all(),
            "recordsFiltered" => $this->daftarorder_model->count_filtered(),
            "data" => $data,
        );
        //output to json format
        echo json_encode($output);
    }
}

