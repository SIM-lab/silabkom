<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_gambar_depan extends CI_Model {

	    //select->read
		public function getData($value='')
		{
			$this->db->from('master_gambar_depan ma');
			$this->db->order_by('ma.id', 'desc');
			return $this->db->get();
		}
	
		//insert->create
		public function insertData($data='')
		{
			
			$this->db->insert('master_gambar_depan',$data);
		   
		}
		//update
		public function updateData($data='')
		{
			 $this->db->where('id',$data['id']);
				$this->db->update('master_gambar_depan',$data);
		}
		//delete
		public function deleteData($id='')
		{
			$this->db->where('id', $id);
			$this->db->delete('master_gambar_depan');
		}
	
}

/* End of file m_gambar_depan.php */
/* Location: ./application/models/master/m_gambar_depan.php */