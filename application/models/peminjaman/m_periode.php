<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_periode extends CI_Model {

	    //select->read
		public function getData($value='')
		{
			$this->db->from('peminjaman_periode ma');
			$this->db->order_by('ma.id', 'desc');
			return $this->db->get();
		}
	
		//insert->create
		public function insertData($data='')
		{
			
			$this->db->insert('peminjaman_periode',$data);
		   
		}
		//update
		public function updateData($data='')
		{
			 $this->db->where('id',$data['id']);
				$this->db->update('peminjaman_periode',$data);
		}
		//delete
		public function deleteData($id='')
		{
			$this->db->where('id', $id);
			$this->db->delete('peminjaman_periode');
		}
	
}

/* End of file m_satuan.php */
/* Location: ./application/models/master/m_satuan.php */