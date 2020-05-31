<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_master_absen extends CI_Model {

    //select->read
	public function getData($value='')
	{
		$this->db->from('master_absen md');
		$this->db->order_by('md.id', 'desc');
		return $this->db->get();
	}

    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('master_absen',$data);
       
	}
    //update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('master_absen',$data);
	}
    //delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('master_absen');
	}

}

/* End of file m_master_absen.php */
/* Location: ./application/models/master/m_master_absen.php */
