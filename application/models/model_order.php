<?php

class model_order extends CI_Model
{

	public $table = "tabel_data";

	public function getUser(){
		$hm = $this->db->order_by('nama', 'asc')->get('tabel_biodata');
        return $hm->result();
	}

	function buat_kode()
	{
		$this->db->select('RIGHT(tabel_data.id_order,4) as kode', FALSE);
		$this->db->order_by('id_order', 'DESC');
		$this->db->limit(1);
		$query = $this->db->get('tabel_data');      //cek dulu apakah ada sudah ada kode di tabel.    
		if ($query->num_rows() <> 0) {
			//jika kode ternyata sudah ada.      
			$data = $query->row();
			$kode = intval($data->kode) + 1;
		} else {
			//jika kode belum ada      
			$kode = 1;
		}
		$kodemax = str_pad($kode, 4, "0", STR_PAD_LEFT);
		$kodejadi = "2021-" . $kodemax;
		return $kodejadi;
	}

	public function get_nama()
	{
		$this->db->from('tabel_biodata');
		$this->db->order_by('nama', 'asc');
		$query =  $this->db->get();
		return $query->result();
	}

	 
	function cari($id)
	{
		$query = $this->db->get_where('tabel_biodata', array('nama' => $id));
		return $query;
	}

	public function cariUsermodel($kode){
        $hm = $this->db->where('nama', $kode)
		->order_by('nama', 'asc')->get('tabel_biodata');
        return $hm;
    }

	public function get_nik()
	{
		$this->db->from('tabel_biodata');
		$this->db->order_by('nik', 'asc');
        $this->db->where('nik !=' , '');
		$query =  $this->db->get();
		return $query->result();
	}

	public function get_department()
	{
		$this->db->from('tabel_biodata');
		$this->db->order_by('department', 'asc');
		$this->db->group_by('department');
        $this->db->where('department !=' , '');
		$query =  $this->db->get();
		return $query->result();
	}

    public function search_nik($kode){
        $hm = $this->db->where('nik', $kode)
		->order_by('nik', 'asc')->get('tabel_biodata');
        return $hm;
    }

    public function search_section($kode){
        $hm = $this->db->where('nik', $kode)
		->order_by('nik', 'asc')->get('tabel_biodata');
        return $hm;
    }

    public function search_department($kode){
        $hm = $this->db->where('nik', $kode)
		->order_by('nik', 'asc')->get('tabel_biodata');
        return $hm;
    }
}
