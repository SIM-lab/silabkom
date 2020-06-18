<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_status_penggantian extends CI_Model {
 
public function getData($value='') {
 $this->db->select('*');
 $this->db->from('master_nama_alat');
 $this->db->join('kelola_penggantian','kelola_penggantian.nama_barang=master_nama_alat.nama_alat');
 $query = $this->db->get();
 return $query->result();
}

}