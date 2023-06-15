<?php

class Biodata extends CI_Controller
{
	private $filename = "biodata"; // nama file .csv

	function __construct()
	{
		parent::__construct();
        checkAuth();
		//checkAksesModule();
		$this->load->library('ssp');
		$this->load->model('biodata_model');
		$this->load->library('form_validation');
	}

	function delete()
	{
		$trial_code = $this->uri->segment(3);
		if (!empty($trial_code)) {
			$this->db->where('id', $trial_code);
			$this->db->delete('tabel_biodata');
			helper_log("biodata", "Menghapus Data Biodata", "Biodata");
		}
		redirect('biodata');
	}


	function index()
	{
		$biodata['biodata'] = $this->biodata_model->tampil_biodata();
		$this->template->load('template/templatedashboard', 'biodata/view', $biodata);
	}

	function add()
	{
		if (isset($_POST['submit'])) {
			 
			$this->biodata_model->save();
			
			helper_log("add", "Menambahkan Trial", "Data");
			$this->session->set_flashdata('success', 'Success!');
			redirect('biodata');
		} else {
			// $data['kodeunik'] = $this->model_registrasi->buat_kode();	 
			$this->template->load('template/templatedashboard', 'biodata/add');
		}
	}

	function form()
	{
		$data = array(); // Buat variabel $data sebagai array

		if (isset($_POST['preview'])) { // Jika user menekan tombol Preview pada form
			// lakukan upload file dengan memanggil function upload yang ada di SiswaModel.php
			$upload  = $this->biodata_model->upload_file($this->filename);

			if ($upload['result'] == "success") { // Jika proses upload sukses
				// Load plugin PHPExcel nya
				include APPPATH . 'third_party/PHPExcel/PHPExcel.php';
				$excelreader = new PHPExcel_Reader_Excel2007();
				$loadexcel = $excelreader->load('excel/' . $this->filename . '.xlsx'); // Load file yang tadi diupload ke folder excel
				$sheet = $loadexcel->getActiveSheet()->toArray(null, true, true, true);
				$data['sheet'] = $sheet;
			} else { // Jika proses upload gagal
				$data['upload_error'] = $upload['error']; // Ambil pesan error uploadnya untuk dikirim ke file form dan ditampilkan
			}
		}
		$this->template->load('template/templatedashboard', 'biodata/form', $data);
	}

	function import()
	{
		// Load plugin PHPExcel nya
		include APPPATH . 'third_party/PHPExcel/PHPExcel.php';
		$excelreader = new PHPExcel_Reader_Excel2007();
		$loadexcel = $excelreader->load('excel/' . $this->filename . '.xlsx'); // Load file yang telah diupload ke folder excel
		$sheet = $loadexcel->getActiveSheet()->toArray("", true, true, true);
		$data = array();
		$numrow = 0;
		foreach ($sheet as $row) {
			// Cek $numrow apakah lebih dari 1
			// Artinya karena baris pertama adalah nama-nama kolom
			// Jadi dilewat saja, tidak usah dibiodata
			if ($numrow > 1) {
				// START -->
				// Skrip untuk mengambil value nya

				// Kita push (add) array data ke variabel data
				array_push($data, array(

					'nama' => $row['B'],
					'nik' => $row['C'],
					'section' => $row['D'],
					'department' => $row['E'],
				));
			}
			$numrow++; // Tambah 1 setiap kali looping
		}
		// Panggil fungsi insert_multiple yg telah kita buat sebelumnya di model
		$this->biodata_model->insert_multiple($data);
		redirect("biodata"); // Redirect ke halaman awal (ke controller siswa fungsi index)
	}

	public function edit()
	{
		$this->load->library('session');
		$this->form_validation->set_rules('id', 'id', 'required');
		$this->form_validation->set_rules('nik', 'nik', 'required');
		$this->form_validation->set_rules('nama', 'nama', 'required');
		$this->form_validation->set_rules('department', 'department', 'required');
		$this->form_validation->set_rules('section', 'section', 'required');
		if ($this->form_validation->run() == FALSE) {
			$this->session->set_flashdata('error', "Error!");
			redirect('Biodata');
		} else {
			$data = array(
				"nik" => $_POST['nik'],
				"nama" => $_POST['nama'],
				"section" => $_POST['section'],
				"department" => $_POST['department'],
			);
			$this->db->where('id', $_POST['id']);
			$this->db->update('tabel_biodata', $data);

			$this->session->set_flashdata('success', 'Success!');
			redirect('biodata');
		}
	}
}
