<?php

class pemeriksaanrumah extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        // checkAuth();
        // $this->load->library('ssp');
        $this->load->model('pemeriksaanrumah_model');
        $this->load->model('biodata_model');
        $this->load->library('form_validation');
        $this->load->helper('url');
        $this->load->library('user_agent');
    }

    function index()
    {
        $dataa['data'] = $this->pemeriksaanrumah_model->tampil_data();
        $this->template->load('templates/layoutbackend', 'pemeriksaanrumah/pemeriksaanrumah_view', $dataa);
    }

    function edit()
    {  
        if (isset($_POST['simpan'])) {
			$data = array(
				'tanggal_pemeriksaan'        	=> $this->input->post('tanggal_pemeriksaan', TRUE),
				'estimasi_waktu_pengadaan_material'        	=> $this->input->post('estimasi_waktu_pengadaan_material', TRUE),
				'estimasi_kebutuhan_material'        	=> $this->input->post('estimasi_kebutuhan_material', TRUE),
				'kategori_volume_kerja' 				=> $this->input->post('kategori_volume_kerja', TRUE),
				'estimasi_waktu_pengerjaan' 				=> $this->input->post('estimasi_waktu_pengerjaan', TRUE),
				'dikerjakan_dengan' 				=> $this->input->post('dikerjakan_dengan', TRUE),
				'petugas' 				=> $this->input->post('petugas', TRUE),
				'status' 				=> 1,			 
			);
                $this->db->where('id_order', $_POST['id_order']);
                $this->db->update("tabel_data", $data);
                $this->session->set_flashdata('success', 'Order diterima!');
                redirect('pemeriksaanrumah');            
        } else {
                $id           = $this->uri->segment(3);
                $data['data'] = $this->db->get_where('tabel_data', array('id_order' => $id))->row_array();
                $this->template->load('templates/layoutbackend', 'pemeriksaanrumah/pemeriksaanrumah_edit', $data);
        }
    }

    public function ajax_list()
    {
        $list = $this->pemeriksaanrumah_model->get_datatables();
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
                $aksi = anchor("pemeriksaanrumah/edit/{$kode}", " <i class='fa fa-warning'> periksa </i>", ['class' => 'btn btn-sm btn-primary  ', 'title' => 'Lakukan pemeriksaan']);
                $aksi2 = anchor("pemeriksaanrumah/delete/{$kode}", "<i class='fa fa-close'></i>", ['class' => 'btn btn-sm btn-secondary remove-data', 'title' => 'Tolak pemeriksaan']);
            } else if ($a->status == '1') {
                $aksi = "<button class='btn btn-md btn-secondary'><i class='fa fa-spinner'></button>";
            } else {
                $aksi =  "<button class='btn btn-md btn-secondary'><i class='fa fa-check'></button>";
            }

			$pdf2 = '<a href="pemeriksaanrumah/pdf/'.$kode.'"    class="btn btn-md btn-success" title="Print"> <i class="fa fa-file-pdf "></i> </a>';

            
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
			$row[] = $pdf2;

            
            $data[] = $row;
        }

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->pemeriksaanrumah_model->count_all(),
            "recordsFiltered" => $this->pemeriksaanrumah_model->count_filtered(),
            "data" => $data,
        );
        //output to json format
        echo json_encode($output);
    }


    function pdf($kode)
	{
		$kode           = $this->uri->segment(3);
		$data['data']    = $this->db->get_where('tabel_data', array('id_order' => $kode))->row_array();
	 
		$this->load->view('pemeriksaanrumah/pdf', $data);

	}
}