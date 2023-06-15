<?php

class infoorder extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
         
        $this->load->library('ssp');
        $this->load->model('infoorder_model');
        $this->load->model('biodata_model');
        $this->load->library('form_validation');
        $this->load->helper('url');
        $this->load->library('user_agent');
    }

    function index()
    {
        $dataa['data'] = $this->infoorder_model->tampil_data();
        $this->template->load('template/templatedashboard2', 'infoorder/infoorder_view', $dataa);
    }

    public function daftarorderList()
    {
        // POST data
        $postData = $this->input->post();
        // Get data
        $data = $this->infoorder_model->getdaftarorder($postData);
        echo json_encode($data);
    }

    function edit()
    {
        if (isset($_POST['simpan'])) {
            $konfirmasi           = $this->input->post('konfirmasi');    
                $data = array(
                    'konfirmasi'            => 1,
                    'ketidaksesuaian'                 => $this->input->post('ketidaksesuaian', TRUE),
                    'status'                 => 3,
                    'statusevaluasi'                 => 1,
                );
                $data2 = array(
                    'konfirmasi'            => 2,
                    'ketidaksesuaian'                 => $this->input->post('ketidaksesuaian', TRUE),
                    'status'                 => 2,
                    'statusevaluasi'                 => 2,

                );

            $this->db->where('id_order', $_POST['id_order']);

            if ($konfirmasi == 'Sesuai'){
                $this->db->update("tabel_data", $data);
            }
            else {
                $this->db->update("tabel_data", $data2);
            }
            $this->session->set_flashdata('success', 'Evaluasi Tersimpan!');
            redirect('infoorder');
        } else {
            $id           = $this->uri->segment(3);
            $data['data'] = $this->db->get_where('tabel_data', array('id_order' => $id))->row_array();
            $this->template->load('template/templatedashboard', 'infoorder/infoorder_edit', $data);
        }
    }

    function detail()
    {   
            $id           = $this->uri->segment(3);
            $data['data'] = $this->db->get_where('tabel_data', array('id_order' => $id))->row_array();
            $this->template->load('template/templatedashboard', 'infoorder/infoorder_detail', $data);   
    }

    public function ajax_list()
    {
        $list = $this->infoorder_model->get_datatables();
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $a) {

            $id_daftarorder = $a->id_order;
            if ($a->status == '0') {
                $status = "<label class='label label-md label-danger'>Menunggu pemeriksaan</label>";
            } else if ($a->status == '1') {
                $status = "<label class='label label-md label-warning'>Sedang dikerjakan</label>";
            }
            else if ($a->status == '2') {
                $status = "<label class='label label-md label-warning'>Evaluasi User</label>";
            }
             else {
                $status = "<label class='label label-md label-success'>Selesai</label>";
                }

            $kode = $a->id_order;

            if ($a->statusevaluasi == '0' && $a->status == '2') {
                $evaluasi = anchor("infoorder/edit/{$kode}", "  Evaluasi ", ['class' => 'btn btn-sm btn-gradient-danger  ', 'target' => '_blank', 'title' => 'Lakukan pengerjaan']);
            } else {
                $evaluasi =  "<button class='btn btn-sm btn-gradient-secondary'> </button>";
            }


            $aksi = anchor("infoorder/detail/{$kode}", " <i class='fa fa-info-circle' >  Detail </i>", ['class' => 'btn btn-sm btn-gradient-primary  ', 'target'=>'_blank','title' => 'Lakukan pengerjaan']);


            //--------------------- STATUS ---------------------
            
            $no++;
            $row = array();
            $row[] = $no;
            $row[] = $a->jenis;
            $row[] = $a->jenisrumah;
            $row[] = $a->nama;
            $row[] = $a->nik;
            $row[] = format_indo($a->tgl_order);
            $row[] = $a->detail;
            $row[] = $a->prioritas;
            $row[] = $status;
            $row[] = $evaluasi;
            $row[] = $aksi;
            $data[] = $row;
        }

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->infoorder_model->count_all(),
            "recordsFiltered" => $this->infoorder_model->count_filtered(),
            "data" => $data,
        );
        //output to json format
        echo json_encode($output);
    }
}

