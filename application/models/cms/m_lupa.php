<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_lupa extends CI_Model {

	    //select->read
		public function getData($value='')
		{
			$this->db->from('cms_lupa ma');
			$this->db->order_by('ma.id', 'desc');
			return $this->db->get();
		}
	
		//insert->create
		public function insertData($data='')
		{
			
			$this->db->insert('cms_lupa',$data);
		   
		}
	}