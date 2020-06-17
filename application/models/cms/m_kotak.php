<?php
defined('BASEPATH') or exit ('No direct script access allowed');

class M_kotak extends CI_Model{


	public function getData($value='')
	{
		$this->db->from('master_kotak ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}

     
	function lab() {
		return $this->db->query("SELECT lab from master_kotak limit 1 ")->row()->lab;
	
	}
	function alat() {
		return $this->db->query("SELECT alat from master_kotak limit 1 ")->row()->alat;
	
	}
	function bahan() {
		return $this->db->query("SELECT bahan from master_kotak limit 1 ")->row()->bahan;
	
	}

}