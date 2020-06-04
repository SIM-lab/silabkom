<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Periode extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('lab/m_periode');
	}

	public function index()
	{
		$this->fungsi->check_previleges('periode');
		$data['periode'] = $this->m_periode->getData();
		$this->load->view('peminjaman/periode/v_periode_list',$data);
    }
	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Peminjaman Periode";
		$subheader = "periode";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("peminjaman/periode/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("peminjaman/periode/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
    }
    public function show_addForm()
	{
		$this->fungsi->check_previleges('periode');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'periode',
					'label' => 'periode',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('peminjaman/periode/v_periode_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('nama_alat','merk','kondisi','id_status'));
			$this->m_periode->insertData($datapost);
			$this->fungsi->run_js('load_silent("peminjaman/periode","#content")');
			$this->fungsi->message_box("Data Peminjaman Periode sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Peminjaman Periode dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('periode');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'wes mbarke',
					'rules' => ''
				),
				array(
					'field'	=> 'periode',
					'label' => 'periode',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('peminjaman_periode',array('id'=>$id));
			$data['status']='';
			$this->load->view('peminjaman/periode/v_periode_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_alat','merk','kondisi','id_status'));
			$this->m_periode->updateData($datapost);
			$this->fungsi->run_js('load_silent("peminjaman/periode","#content")');
			$this->fungsi->message_box("Data Peminjaman Periode sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Peminjaman Periode dengan data sbb:",true);
		}
	}

	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_periode->deleteData($id);
		redirect('admin');
	}
}
	
