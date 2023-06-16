<?php

class Order extends CI_Controller
{
    private $filename = "import_data"; // nama file .csv

    public function __construct()
    {
        parent::__construct();
        // checkAuth();

        $this->load->model('model_order');
        $this->load->model('biodata_model');
        $this->load->library('form_validation');
        $this->load->helper('url');
        $this->load->library('user_agent');
    }

    public function index()
    {
        $kd_level_user = $this->session->userdata('id_level_user');

        $data['data'] = $this->model_order->getUser();
        $data['kodeunik'] = $this->model_order->buat_kode();
        $data['nik'] = $this->model_order->get_nik();
        $data['department'] = $this->model_order->get_department();

        if ($kd_level_user == 1) {
            $this->template->load('templates/layoutbackend', 'order/order_add', $data);
        } else if ($kd_level_user == 0) {
            $this->template->load('templates/layoutbackend2', 'order/order_add', $data);
        }
    }

    public function add()
    {

        $ip = $this->input->ip_address();
        $browser = $this->agent->browser();
        $os = $this->agent->platform();

        if (isset($_POST['simpan'])) {
            $data = array(
                'nik_peminta' => $this->input->post('nik_peminta', true),
                'nama_peminta' => $this->input->post('nama_peminta', true),
                'section_peminta' => $this->input->post('section_peminta', true),
                'department_peminta' => $this->input->post('department_peminta', true),
                'hp_peminta' => $this->input->post('hp_peminta', true),
                'kategori_perbaikan' => $this->input->post('kategori_perbaikan', true),
                'jenis_perbaikan' => $this->input->post('jenis_perbaikan', true),
                'id_rumah' => $this->input->post('id_rumah', true),
                'alokasi' => $this->input->post('alokasi', true),
                'department_pemilik' => $this->input->post('department_pemilik', true),
                'prioritas' => $this->input->post('prioritas', true),
                'tanggal_order' => $this->input->post('tanggal_order', true),
                'tahun_layanan' => $this->input->post('tahun_layanan', true),
                'detail_order' => $this->input->post('detail_order', true),
                'status' => 0,
                'tahun' => date('Y'),
                'bulan' => date('m'),
                'ip' => $ip,
                'browser' => $browser,
                'os' => $os,
            );
            $this->db->insert("tabel_data", $data);
            $this->session->set_flashdata('success', 'Order berhasil terkirim!');
            redirect('order/sukses');
        } else {

            $data['data'] = $this->model_order->getUser();
            $data['kodeunik'] = $this->model_order->buat_kode();
            $data['nik'] = $this->model_order->get_nik();
            $data['department'] = $this->model_order->get_department();
            $this->template->load('templates/layoutbackend2', 'order/order_add', $data);

        }
    }

    public function sukses()
    {
        $this->template->load('templates/layoutbackend2', 'order/order_sukses');
    } //

    public function edit()
    {
        if (isset($_POST['simpan'])) {
            $data = array(
                'tgl_pemeriksaan' => $this->input->post('tgl_pemeriksaan', true),
                'estimasi_pengadaan' => $this->input->post('estimasi_pengadaan', true),
                'estimasi_pengerjaan' => $this->input->post('estimasi_pengerjaan', true),
                'dikerjakandengan' => $this->input->post('dikerjakandengan', true),
            );
            $this->db->insert("tabel_data", $data);
            $this->session->set_flashdata('success', 'Reservation saved!');
            redirect('pemeriksaan');
        }
    }

    public function search_nik()
    {
        $kode = $this->input->post('id');
        $anggota = $this->model_order->search_nik($kode);
        if ($anggota->num_rows() > 0) {
            $agt = $anggota->row_array();
            echo $agt['nama'];
        }
    }

    public function search_section()
    {
        $kode = $this->input->post('id');
        $anggota = $this->model_order->search_section($kode);
        if ($anggota->num_rows() > 0) {
            $agt = $anggota->row_array();
            echo $agt['section'];
        }
    }

    public function search_department()
    {
        $kode = $this->input->post('id');
        $anggota = $this->model_order->search_department($kode);
        if ($anggota->num_rows() > 0) {
            $agt = $anggota->row_array();
            echo $agt['department'];
        }
    }
}
