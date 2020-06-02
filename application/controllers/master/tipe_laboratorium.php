<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class tipe_laboratorium extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_tipe_laboratorium');
	}

	public function index()
	{
		$this->fungsi->check_previleges('tipe_laboratorium');
		$data['tipe_laboratorium'] = $this->m_tipe_laboratorium->getData();
		$this->load->view('master/tipe_laboratorium/v_tipe_laboratorium_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Tipe Laboratorium";
		$subheader = "tipe_laboratorium";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/tipe_laboratorium/show_addForm/","#divsubcontent")');	
		} 
		else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/tipe_laboratorium/show_editForm/'.$base_kom.'","#divsubcontent")');
		}

		}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('tipe_laboratorium');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'tipe_laboratorium',
					'label' => 'tipe_laboratorium',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('master/tipe_laboratorium/v_tipe_laboratorium_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','jenis','foto','koordinator','laboran','alamat','email','anggota'));
			$this->m_tipe_laboratorium->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/tipe_laboratorium","#content")');
			$this->fungsi->message_box("Data Master Tipe Laboratorium sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Master tipe_laboratorium dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('tipe_laboratorium');
		$this->load->library('form_validation');
		$config = array(
			array(
				'field'	=> 'id',
				'label' => 'wes mbarke',
				'rules' => ''
			),
				array(
					'field'	=> 'tipe_laboratorium',
					'label' => 'tipe_laboratorium',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('master_tipe_laboratorium',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/tipe_laboratorium/v_tipe_laboratorium_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','jenis','foto','koordinator','laboran','alamat','email','anggota'));
			$this->m_tipe_laboratorium->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/tipe_laboratorium","#content")');
			$this->fungsi->message_box("Data Master Tipe Laboratorium sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Master tipe_laboratorium dengan data sbb:",true);
		}
	}
	 
	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_tipe_laboratorium->deleteData($id);
		redirect('admin');
	}
}

/* End of file tipe_laboratorium.php */
/* Location: ./application/controllers/master/tipe_laboratorium.php */