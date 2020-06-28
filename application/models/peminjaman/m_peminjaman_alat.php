<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_peminjaman_alat extends CI_Model {

    //select->read
	public function getData($value='')
	{
		$this->db->select('peminjaman_alat.*, master_nama_alat.nama_alat');
		$this->db->from('peminjaman_alat');
		$this->db->join('master_nama_alat', 'master_nama_alat.id = peminjaman_alat.nama_alat');
		return $this->db->get();
	}

    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('peminjaman_alat',$data);
       
	}
    //update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('peminjaman_alat',$data);
	}
    //delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('peminjaman_alat');
	}

}