<?php

	class Model_activity extends CI_Model
	{

		public $table ="trials";
		
		
		function tampil_trials(){

		// 		$a = date("Y-01-01");
		// $b = date("Y-12-31");
		// $hasil = $this->db->query("select * from tabel_libur  where tanggal >= '$a' AND tanggal <= '$b' order by tanggal asc");
		// return $hasil;
        $hasil = $this->db->query("select * from tabel_log WHERE DATE(log_date) >= CURDATE() - INTERVAL 30 DAY order by log_date desc");
        return $hasil;

		
		// $a = date("Y-m") ;
		// $this->db->select('*');
		// $this->db->from('tabel_log');
		// $this->db->order_by('log_date');
		// $this->db->where('SUBSTRING(tabel_log.log_date,1,7) >=' , $a);
		// $query =  $this->db->get();
		// return $query;
		}


	}
?>