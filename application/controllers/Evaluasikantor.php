<?php

class evaluasikantor extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        checkAuth();
        $this->load->library('ssp');
        $this->load->model('evaluasikantor_model');
        $this->load->model('biodata_model');
        $this->load->library('form_validation');
        $this->load->helper('url');
        $this->load->library('user_agent');
    }

    function index()
    {

        $dataa['data'] = $this->evaluasikantor_model->tampil_data();
        $this->template->load('template/templatedashboard', 'evaluasikantor/evaluasikantor_view', $dataa);
    }


    function edit()
    {
        if (isset($_POST['simpan'])) {
            $data = array(
                'tgl_mulaidikerjakan'            => $this->input->post('tgl_mulaidikerjakan', TRUE),
                'tgl_selesaidikerjakan'            => $this->input->post('tgl_selesaidikerjakan', TRUE),
                'sisamaterial'            => $this->input->post('sisamaterial', TRUE),
                // 'konfirmasi'            => $this->input->post('konfirmasi', TRUE),
                // 'ketidaksesuaian'                 => $this->input->post('ketidaksesuaian', TRUE),
                'status'                 => 2,
            );

            $this->db->where('id_order', $_POST['id_order']);
            $this->db->update("tabel_data", $data);
            $this->session->set_flashdata('success', 'evaluasikantor Telah Selesai!');
            redirect('evaluasikantor');
        } else {
            $id           = $this->uri->segment(3);
            $data['data'] = $this->db->get_where('tabel_data', array('id_order' => $id))->row_array();
            $this->template->load('template/templatedashboard', 'evaluasikantor/evaluasikantor_edit', $data);
        }
    }

    function reevaluasikantor()
    {
        if (isset($_POST['simpan'])) {
            $data = array(
                'tgl_selesaiulang'            => $this->input->post('tgl_selesaiulang', TRUE),
                'konfirmasi' => 0,
                'statusevaluasikantor'                 => 0,
            );

            $this->db->where('id_order', $_POST['id_order']);
            $this->db->update("tabel_data", $data);
            $this->session->set_flashdata('success', 'evaluasikantor Telah Selesai!');
            redirect('evaluasikantor');
        } else {
            $id           = $this->uri->segment(3);
            $data['data'] = $this->db->get_where('tabel_data', array('id_order' => $id))->row_array();
            $this->template->load('template/templatedashboard', 'evaluasikantor/evaluasikantor_reevaluasikantor', $data);
        }
    }

    public function ajax_list()
    {
        $list = $this->evaluasikantor_model->get_datatables();
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $a) {

            $kode = $a->id_order;

            if ($a->status == '0') {
                $status = "<label class='label label-md label-danger'>Menunggu pengerjaan</label>";
            } else if ($a->status == '1') {
                $status = "<label class='label label-md label-warning'>Sedang dikerjakan</label>";
            } else if ($a->status == '2') {
                $status = "<label class='label label-md label-warning'>Menunggu evaluasi User</label>";
            }

            if ($a->statusevaluasi == '0') {
                $se =  "<button class='btn btn-sm btn-gradient-secondary'> Menunggu evaluasi</button>";
            } else if ($a->statusevaluasi == '1') {
                $se =  "<button class='btn btn-sm btn-gradient-secondary'> Selesai evaluasi </button>";
            } else {
                $se =  "<button class='btn btn-sm btn-gradient-success'>Tidak Sesuai</button>";
            }


            if ($a->konfirmasi == '0') {
                $aksi = "<button class='btn btn-sm btn-gradient-secondary'><i class='fa fa-spinner'></button>";
            } else if ($a->konfirmasi == '1') { 
                $aksi =  "<button class='btn btn-sm btn-gradient-secondary'><i class='fa fa-check'></button>";
            } else {
                $aksi = anchor("evaluasikantor/reevaluasikantor/{$kode}", " <i class='fa fa-warning'>  Pengerjaan kembali </i>", ['class' => 'btn btn-sm btn-gradient-primary  ', 'title' => 'Lakukan evaluasikantor']);
            }

            //--------------------- STATUS ---------------------

            $no++;
            $row = array();
            $row[] = $no;
            // $row[] = $a->jenisrumah;
            $row[] = $a->nama;
            $row[] = format_indo($a->tgl_order);
            $row[] = $a->detail;
            $row[] = $a->prioritas;
            $row[] = $status;
            $row[] = $se;
            $row[] = $aksi;
            $data[] = $row;
        }

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->evaluasikantor_model->count_all(),
            "recordsFiltered" => $this->evaluasikantor_model->count_filtered(),
            "data" => $data,
        );
        //output to json format
        echo json_encode($output);
    }
}
