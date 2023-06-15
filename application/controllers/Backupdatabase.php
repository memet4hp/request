<?php

class Backupdatabase extends CI_Controller
{
	private $filename = "import_data"; // nama file .csv

	function __construct()
	{
		parent::__construct();
		//checkAksesModule();
		$this->load->library('ssp');
		$this->load->model('model_activity');

		$this->load->library('user_agent');
	}

	public function index()
	{
		$this->template->load('template/templatedashboard', 'admin/backupdatabase');
	}

	public function backup()
	{
		// Load the DB utility class
		$this->load->dbutil();

		// Backup your entire database and assign it to a variable
		$backup = $this->dbutil->backup();

		// nama file backup
		$namafile = "dblabsims-backup" . "-" . date("d-m-Y") . ".sql.gz";

		// Load the file helper and write the file to your server
		$this->load->helper('file');

		write_file(FCPATH . 'db_backup/' . $namafile, $backup);

		// Load the download helper and send the file to your desktop
		$this->load->helper('download');
		force_download($namafile, $backup);
	}
}
