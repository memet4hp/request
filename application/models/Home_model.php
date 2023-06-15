<?php

class Home_model extends CI_Model
{

	public function __construct()
	{
		$this->load->database();
	}

	function tampil_data()
	{
		$this->db->select('*');
		$this->db->order_by('tanggal_order', 'desc');
		$this->db->from('tabel_data');
		$query =  $this->db->get();
		return $query;
	}

	function statistik_month()
	{
		$year = date('Y');
		$sql = $this->db->query("select
		ifnull((SELECT count(id_order) FROM (tabel_data)WHERE((Month(tanggal_order)=1)AND (YEAR(tanggal_order)=$year))),0) AS `Januari`,
		ifnull((SELECT count(id_order) FROM (tabel_data)WHERE((Month(tanggal_order)=2)AND (YEAR(tanggal_order)=$year))),0) AS `Februari`,
		ifnull((SELECT count(id_order) FROM (tabel_data)WHERE((Month(tanggal_order)=3)AND (YEAR(tanggal_order)=$year))),0) AS `Maret`,
		ifnull((SELECT count(id_order) FROM (tabel_data)WHERE((Month(tanggal_order)=4)AND (YEAR(tanggal_order)=$year))),0) AS `April`,
		ifnull((SELECT count(id_order) FROM (tabel_data)WHERE((Month(tanggal_order)=5)AND (YEAR(tanggal_order)=$year))),0) AS `Mei`,
		ifnull((SELECT count(id_order) FROM (tabel_data)WHERE((Month(tanggal_order)=6)AND (YEAR(tanggal_order)=$year))),0) AS `Juni`,
		ifnull((SELECT count(id_order) FROM (tabel_data)WHERE((Month(tanggal_order)=7)AND (YEAR(tanggal_order)=$year))),0) AS `Juli`,
		ifnull((SELECT count(id_order) FROM (tabel_data)WHERE((Month(tanggal_order)=8)AND (YEAR(tanggal_order)=$year))),0) AS `Agustus`,
		ifnull((SELECT count(id_order) FROM (tabel_data)WHERE((Month(tanggal_order)=9)AND (YEAR(tanggal_order)=$year))),0) AS `September`,
		ifnull((SELECT count(id_order) FROM (tabel_data)WHERE((Month(tanggal_order)=10)AND (YEAR(tanggal_order)=$year))),0) AS `Oktober`,
		ifnull((SELECT count(id_order) FROM (tabel_data)WHERE((Month(tanggal_order)=11)AND (YEAR(tanggal_order)=$year))),0) AS `November`,
		ifnull((SELECT count(id_order) FROM (tabel_data)WHERE((Month(tanggal_order)=12)AND (YEAR(tanggal_order)=$year))),0) AS `Desember`
		from tabel_data GROUP BY YEAR(tanggal_order) ");

		return $sql;
	}
}
