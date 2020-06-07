<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_tipe_laboratorium extends CI_Model {

	    //select->read
		public function getData($value='')
		{
			$this->db->from('master_tipe_laboratorium ma');
			$this->db->order_by('ma.id', 'desc');
			return $this->db->get();
		}
	
		//insert->create
		public function insertData($data='')
		{
			
			$this->db->insert('master_tipe_laboratorium',$data);
		   
		}
		//update
		public function updateData($data='')
		{
			 $this->db->where('id',$data['id']);
				$this->db->update('master_tipe_laboratorium',$data);
		}
		//delete
		public function deleteData($id='')
		{
			$this->db->where('id', $id);
			$this->db->delete('master_tipe_laboratorium');
		}
	
}

/* End of file M_tipe_laboratorium.php */
/* Location: ./application/models/master/M_tipe_laboratorium.php */