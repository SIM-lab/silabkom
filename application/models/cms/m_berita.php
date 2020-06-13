<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_berita extends CI_Model {

    //select->read
	public function getData($value='')
	{
		$this->db->from('cms_berita ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}

    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('cms_berita',$data);
       
	}
    //update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('cms_berita',$data);
	}
    //delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('cms_berita');
	}

}