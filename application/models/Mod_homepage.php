<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Mod_homepage extends CI_Model
{
    function Aplikasi()
    {
        return $this->db->get('aplikasi');
    }

    function Auth($username, $password)
    {
        //menggunakan active record . untuk menghindari sql injection
        $this->db->where("username", $username);
        $this->db->where("password", $password);
        $this->db->where("is_active", 'Y');
        return $this->db->get("tbl_user");
    }

    function check_db($username)
    {
        return $this->db->get_where('tbl_user', array('username' => $username));
    }

    function generate_kode()
    {

        $this->db->select('LEFT(tbl_data.ref_number,4) as kode', false);
        $this->db->order_by('ref_number', 'DESC');
        $this->db->limit(1);
        $this->db->where('tahun', date('Y'));
        $query = $this->db->get('tbl_data');
        
        if ($query->num_rows() <> 0) {
            $data = $query->row();
            $kode = intval($data->kode) + 1;
        } else {
            $kode = 1;
        }

        $tahun = date('Y');
        $bulan = date('m');
        $kodemax = str_pad($kode, 4, "0", STR_PAD_LEFT);
        $kode =  $kodemax."/FI-SMARTRI" . "/" . $bulan . "/". $tahun;
        return $kode;

    }
}
