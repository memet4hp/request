<?php

class Template extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        checkAuth();
        $this->load->library('ssp');
        // $this->load->model('model_daftarantrian');
        $this->load->model('model_data');
        $this->load->library('form_validation');
    }

    function index()
    {

        $quser = 'SELECT COUNT(*) AS hasil FROM tabel_data where status = "Menunggu"';
        $data['suratmasuk'] = $this->db->query($quser)->row_array();

        $quser = 'SELECT COUNT(*) AS hasil FROM tabel_data where status = "Sample Diterima Admin"';
        $data['suratditerima'] = $this->db->query($quser)->row_array();

        $quser = 'SELECT COUNT(DISTINCT(id_reg)) AS hasil FROM table_sample where status = "Menunggu Konfirmasi Batch"';
        $data['suratdisample'] = $this->db->query($quser)->row_array();

        $quser = 'SELECT COUNT(*) AS hasil FROM table_sample where status = "Menunggu Konfirmasi Batch"';
        $data['samplemasuk'] = $this->db->query($quser)->row_array();

        $quser = 'SELECT COUNT(DISTINCT(id_reg)-1) AS hasil FROM table_batch';
        $data['laporan'] = $this->db->query($quser)->row_array();

        $quser = 'SELECT COUNT(*) AS hasil FROM table_sample';
        $data['sampledelete'] = $this->db->query($quser)->row_array();

        // $quser = 'SELECT COUNT(DISTINCT batch) AS hasil FROM table_batch'  ;
        // $data['listbatch2'] = $this->db->query($quser)->row_array();

        $quser = 'SELECT COUNT(*) AS hasil FROM log_duplo where status = "Analisa"';
        $data['listbatch'] = $this->db->query($quser)->row_array();



        $quser = 'SELECT COUNT(*) AS hasil FROM table_batch where status = "Siap Untuk Analisa"';
        $data['batch'] = $this->db->query($quser)->row_array();
        $quser = 'SELECT COUNT(*) AS hasil FROM log_duplo where status = "Tersedia Untuk Analisa"';
        $data['batchtampil'] = $this->db->query($quser)->row_array();
        $data['data'] = $this->model_daftarantrian->tampil_daftarsample();
        $data['field'] = $this->model_daftarantrian->field();
        $data['field2'] = $this->model_data->field();

        $this->template->load('template', $data);
    }
}
