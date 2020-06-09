<?php
defined('BASEPATH') or exit ('No direct script access allowed');

class M_kotak extends CI_Model{

	function edit_data($where,$kotak){
		return $this->db->get_where($kotak,$where);
 	}

 	function get_data($kotak){
 		return $this->db->get($kotak);
     }
     
	function lab() {
		return $this->db->query("SELECT lab from kotak ");

	}
}