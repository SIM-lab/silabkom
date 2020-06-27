<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kelola_alat extends CI_Model
{
    public function getData()
    {
        $this->db->select('kelola_alat.*, master_nama_alat.nama_alat, master_satuan.nama, master_kategori_alat_bahan.jenis');
		$this->db->from('kelola_alat');
		$this->db->join('master_nama_alat', 'master_nama_alat.id = kelola_alat.nama_alat');
		$this->db->join('master_satuan', 'master_satuan.id = kelola_alat.nama_satuan');
		$this->db->join('master_kategori_alat_bahan', 'master_kategori_alat_bahan.id = kelola_alat.jenis');
		return $this->db->get();
    }

    public function insertData($data)
    {
        $this->db->insert('kelola_alat',$data);
    }

    public function updateData($data)
    {
        $this->db->where('id',$data['id']);
        $this->db->update('kelola_alat',$data);
    }
    public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('kelola_alat');
	}
}