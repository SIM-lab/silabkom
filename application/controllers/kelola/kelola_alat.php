<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class kelola_alat extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_kelola_alat');
		$this->load->model('master/m_nama_alat');
		$this->load->model('master/m_satuan');
		$this->load->model('master/m_kategori_alat_bahan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('kelola_alat');
		$data['kelola_alat'] = $this->m_kelola_alat->getData();
		$this->load->view('kelola/kelola_alat/v_kelola_alat_list',$data);
	}
    public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Kelola Alat";
		$subheader = "kelola_alat";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/kelola_alat/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/kelola_alat/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('kelola_alat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_alat',
					'label' => 'nama_alat',
					'rules' => 'required'
                ),
                array(
					'field'	=> 'nama_satuan',
					'label' => 'nama_satuan',
                    'rules' => 'required'
                )
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['nama_alat'] = $this->m_nama_alat->getData();
			$data['nama'] = $this->m_satuan->getData();
			$data['jenis'] = $this->m_kategori_alat_bahan->getData();
			$this->load->view('kelola/kelola_alat/v_kelola_alat_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('nama_alat','nama_satuan','jenis', 'merk', 'stok', 'kondisi',));
			$this->m_kelola_alat->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_alat","#content")');
			$this->fungsi->message_box("Data Kelola Alat sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Kelola kelola_alat dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('kelola_alat');
		$this->load->library('form_validation');
		$config = array(
			array(
				'field'	=> 'id',
				'label' => 'id',
				'rules' => ''
			),
			array(
				'field'	=> 'nama_alat',
				'label' => 'nama_alat',
				'rules' => 'required'
            ),
		);
	$this->form_validation->set_rules($config);
	$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('kelola_alat',array('id'=>$id));
			$data['nama_alat'] = $this->m_nama_alat->getData();
			$data['nama'] = $this->m_satuan->getData();
			$data['kategori'] = $this->m_kategori_alat_bahan->getData();
			$this->load->view('kelola/kelola_alat/v_kelola_alat_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_alat','nama_satuan','jenis', 'merk', 'stok', 'kondisi',));
			$this->m_kelola_alat->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_alat","#content")');
			$this->fungsi->message_box("Data Kelola Alat sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit kelola_alat dengan data sbb:",true);
		}
	}
	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_kelola_alat->deleteData($id);
		redirect('admin');
	}
}