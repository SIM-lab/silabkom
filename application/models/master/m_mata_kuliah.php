<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_mata_kuliah extends CI_Model {

    //select->read
	public function getData($value='')
	{
		$this->db->from('master_mata_kuliah ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}

    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('master_mata_kuliah',$data);
       
	}
    //update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('master_mata_kuliah',$data);
	}
    //delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('master_mata_kuliah');
	}

}

/* End of file m_nama_alat.php */
/* Location: ./application/models/master/m_nama_alat.php */