<?php

class Pemeriksaankantor extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        // checkAuth();
        // $this->load->library('ssp');
        $this->load->model('pemeriksaankantor_model');
        $this->load->model('biodata_model');
        $this->load->library('form_validation');
        $this->load->helper('url');
        $this->load->library('user_agent');
    }

    function index()
    {
       

        $dataa['data'] = $this->pemeriksaankantor_model->tampil_data();
        $this->template->load('templates/layoutbackend', 'pemeriksaankantor/pemeriksaankantor_view', $dataa);
    }


    function edit()
    {  
        if (isset($_POST['simpan'])) {
			$data = array(
				'tgl_pemeriksaan'        	=> $this->input->post('tgl_pemeriksaan', TRUE),
				'estimasi_pengadaan'        	=> $this->input->post('estimasi_pengadaan', TRUE),
				'estimasi_pengerjaan'        	=> $this->input->post('estimasi_pengerjaan', TRUE),
				'dikerjakandengan' 				=> $this->input->post('dikerjakandengan', TRUE),
				'ketersediaan' 				=> $this->input->post('ketersediaan', TRUE),
				'status' 				=> 1,			 
			);

            $this->db->where('id_order', $_POST['id_order']);
                $this->db->update("tabel_data", $data);
                $this->session->set_flashdata('success', 'Telah diperiksa!');
                redirect('pemeriksaankantor');            
        } else {
            $id           = $this->uri->segment(3);
            $data['data'] = $this->db->get_where('tabel_data', array('id_order' => $id))->row_array();
            $this->template->load('template/templatedashboard', 'pemeriksaankantor/pemeriksaankantor_edit', $data);
        }
    }

    public function ajax_list()
    {
        $list = $this->pemeriksaankantor_model->get_datatables();
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $a) {

            $kode = $a->id_order;

            if ($a->status == '0') {
                $status = "<label class='label label-md label-danger'>Menunggu pemeriksaan</label>";
            } else if ($a->status == '1') {
                $status = "<label class='label label-md label-warning'>Sedang dikerjakan</label>";
            } else {
                $status = "<label class='label label-md label-success'>Selesai</label>";
            }

            if ($a->status == '0') {
                $aksi = anchor("pemeriksaankantor/edit/{$kode}", " <i class='fa fa-warning'> periksa </i>", ['class' => 'btn btn-sm btn-gradient-primary  ', 'title' => 'Lakukan pemeriksaan']);
                $aksi2 = anchor("pemeriksaankantor/delete/{$kode}", "<i class='fa fa-close'></i>", ['class' => 'btn btn-sm btn-gradient-secondary remove-data', 'title' => 'Tolak pemeriksaan']);
            } else if ($a->status == '1') {
                $aksi = "<button class='btn btn-sm btn-gradient-secondary'><i class='fa fa-spinner'></button>";
            } else {
                $aksi =  "<button class='btn btn-sm btn-gradient-secondary'><i class='fa fa-check'></button>";
            }

            //--------------------- STATUS ---------------------

            $no++;
            $row = array();
            $row[] = $no;
            $row[] = $a->nama_peminta;
            $row[] = $a->tanggal_order;
            $row[] = $a->detail_order;
            $row[] = $a->prioritas;
            $row[] = $status;
            $row[] = $aksi;
            $data[] = $row;
        }

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->pemeriksaankantor_model->count_all(),
            "recordsFiltered" => $this->pemeriksaankantor_model->count_filtered(),
            "data" => $data,
        );
        //output to json format
        echo json_encode($output);
    }
}
