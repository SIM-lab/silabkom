<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kondisi extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('kondisi');
		$this->db->order_by('kondisi.id', 'desc');
		return $this->db->get();
	}
}