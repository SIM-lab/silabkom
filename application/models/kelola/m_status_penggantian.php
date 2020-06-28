<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_status_penggantian extends CI_Model {
 
public function getData($value='') {
    $this->db->select('*');    
    $this->db->from('kelola_penggantian');
    $this->db->join('master_bahan', 'kelola_penggantian.id = master_bahan.id');
    $this->db->join('master_nama_alat', 'kelola_penggantian.id = master_nama_alat.id');
    $query = $this->db->get();
}

}