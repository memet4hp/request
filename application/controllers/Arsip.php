<?php

class arsip extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        checkAuth();
        $this->load->library('ssp');
        $this->load->model('arsip_model');
        $this->load->model('biodata_model');
        $this->load->library('form_validation');
        $this->load->helper('url');
        $this->load->library('user_agent');
    }

    function index()
    {
       
        $dataa['data'] = $this->arsip_model->tampil_data();
        $this->template->load('template/templatedashboard', 'arsip/arsip_view', $dataa);
    }

    public function daftarorderList()
    {
        // POST data
        $postData = $this->input->post();
        // Get data
        $data = $this->arsip_model->getdaftarorder($postData);
        echo json_encode($data);
    }

    function detail()
    {
   
            $id           = $this->uri->segment(3);
            $data['data'] = $this->db->get_where('tabel_data', array('id_order' => $id))->row_array();
            $this->template->load('template/templatedashboard', 'arsip/arsip_detail', $data);
        
    }

    public function ajax_list()
    {
        $list = $this->arsip_model->get_datatables();
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

            $kode = $a->id_order;
            $aksi = anchor("arsip/detail/{$kode}", " <i class='fa fa-info-circle'>  Detail </i>", ['class' => 'btn btn-sm btn-gradient-primary  ', 'title' => 'Lakukan pengerjaan']);


            //--------------------- STATUS ---------------------
            
            $no++;
            $row = array();
            $row[] = $no;
            $row[] = $a->jenis;
            $row[] = $a->nama;
            $row[] = format_indo($a->tgl_order);
            $row[] = $a->detail;
            $row[] = $a->prioritas;
            $row[] = $status;
            $row[] = $aksi;
            $data[] = $row;
        }

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->arsip_model->count_all(),
            "recordsFiltered" => $this->arsip_model->count_filtered(),
            "data" => $data,
        );
        //output to json format
        echo json_encode($output);
    }
}

