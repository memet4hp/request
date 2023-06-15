<?php

class pengerjaanrumah extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        // checkAuth();
        // $this->load->library('ssp');
        $this->load->model('pengerjaanrumah_model');
        $this->load->model('biodata_model');
        $this->load->library('form_validation');
        $this->load->helper('url');
        $this->load->library('user_agent');
    }

    function index()
    {

        $dataa['data'] = $this->pengerjaanrumah_model->tampil_data();
        $this->template->load('templates/layoutbackend', 'pengerjaanrumah/pengerjaanrumah_view', $dataa);
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
            $this->session->set_flashdata('success', 'pengerjaanrumah Telah Selesai!');
            redirect('pengerjaanrumah');
        } else {
            $id           = $this->uri->segment(3);
            $data['data'] = $this->db->get_where('tabel_data', array('id_order' => $id))->row_array();
            $this->template->load('templates/layoutbackend', 'pengerjaanrumah/pengerjaanrumah_edit', $data);
        }
    }

    public function ajax_list()
    {
        $list = $this->pengerjaanrumah_model->get_datatables();
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $a) {

            $kode = $a->id_order;

            if ($a->status == '0') {
                $status = "<label class='label label-md label-danger'>Menunggu pengerjaanrumah</label>";
            } else if ($a->status == '1') {
                $status = "<label class='label label-md label-warning'>Sedang dikerjakan</label>";
            } else if ($a->status == '2') {
                $status = "<label class='label label-md label-success'>Selesai</label>";
            }

          
            if ($a->status == '1') {
                $aksi = anchor("pengerjaanrumah/edit/{$kode}", " <i class='fa fa-warning'> pengerjaan </i>", ['class' => 'btn btn-sm btn-primary  ', 'title' => 'Lakukan pengerjaanrumah']);
            } else {
                $aksi =  "<button class='btn btn-sm btn-gradient-secondary'><i class='fa fa-check'></button>";
            }
            //--------------------- STATUS ---------------------

            $no++;
            $row = array();
            $row[] = $no;
            $row[] = $a->alokasi;
            $row[] = $a->nama_peminta;
            $row[] = tgl_biasa($a->tanggal_order);
            $row[] = $a->detail_order;
            $row[] = $a->prioritas;
            $row[] = $status;
            $row[] = $aksi;
            $data[] = $row;
 
        }

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->pengerjaanrumah_model->count_all(),
            "recordsFiltered" => $this->pengerjaanrumah_model->count_filtered(),
            "data" => $data,
        );
        //output to json format
        echo json_encode($output);
    }
}
