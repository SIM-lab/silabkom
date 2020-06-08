<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class m_kotak extends CI_Model {

	    //select->read
		public function getData($value='')
		{
			$this->db->from('master_kotak ma');
			$this->db->order_by('ma.id', 'desc');
			return $this->db->get();
		}
        public function lab($value=''){
            return $this->db->query("SELECT lab from master_kotak");
    
        }
        public function alat($value=''){
            return $this->db->query("SELECT alat from master_kotak");
        }
        public function bahan($value=''){
            return $this->db->query("SELECT lab from master_kotak");
        }
    
}

/* End of file m_kotak.php */
/* Location: ./application/models/master/m_kotak.php */