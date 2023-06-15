<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Homepage extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model(array('Mod_homepage'));
        $this->load->library('user_agent');
    }

    public function index()
    {
        $this->load->view('homepage/homepage_view');
    } //end function index


    function add()
    {

        if (isset($_POST['simpan'])) {

            $config['upload_path']   = './uploads/photo/';
            $config['allowed_types'] = 'gif|jpg|jpeg|png'; //mencegah upload backdor
            $config['file_name']     = $this->upload->data("file_name");
            $this->upload->initialize($config);

            if (!$this->upload->do_upload('userfiles')) {
                echo $this->upload->display_errors();
                exit();
            }

            $upload = $this->upload->data();
            $filename = $upload['file_name'];

            $namadokumen = $this->input->post('supporting_document', true);
            $config2['allowed_types'] = 'xlxs|pdf';
            $config2['upload_path']   = './uploads/supporting_document/';
            $config2['file_name']     = $namadokumen;
            $this->upload->initialize($config2);

            if (!$this->upload->do_upload('supporting_document')) {
                echo $this->upload->display_errors();
                exit();
            }

            $upload = $this->upload->data();
            $filename2 = $upload['file_name'];

            $data = array(
                'ref_number'              => $this->input->post('ref_number', TRUE),
                'tanggal'              => $this->input->post('tanggal', TRUE),
                'intervention'            => $this->input->post('intervention', TRUE),
                'full_name'            => $this->input->post('full_name', TRUE),
                'position'            => $this->input->post('position', TRUE),
                'unit'            => $this->input->post('unit', TRUE),
                'company_email'            => $this->input->post('company_email', TRUE),
                'phone_homepageor'            => $this->input->post('phone_homepageor', TRUE),
                'phone_manager'            => $this->input->post('phone_manager', TRUE),
                'date_homepage'            => $this->input->post('date_homepage', TRUE),
                'description'            => $this->input->post('description', TRUE),
                'photo'            =>  $filename,
                'supporting_document'            => $filename2,
                'tahun'  => date('Y'),
            );
            $this->db->insert("tbl_data", $data);
            redirect('homepage');
        } else {


            $data = array(
                'ref_number'              => $this->input->post('ref_number', TRUE),
                'tanggal'              => $this->input->post('tanggal', TRUE),
                'intervention'            => $this->input->post('intervention', TRUE),
                'full_name'            => $this->input->post('full_name', TRUE),
                'position'            => $this->input->post('position', TRUE),
                'unit'            => $this->input->post('unit', TRUE),
                'company_email'            => $this->input->post('company_email', TRUE),
                'phone_homepageor'            => $this->input->post('phone_homepageor', TRUE),
                'phone_manager'            => $this->input->post('phone_manager', TRUE),
                'date_homepage'            => $this->input->post('date_homepage', TRUE),
                'description'            => $this->input->post('description', TRUE),
                'photo'            => '',
                'supporting_document'            => '',
                'tahun'  => date('Y'),
            );
            $this->db->insert("tbl_data", $data);
            redirect('homepage');
        }
    }
}
