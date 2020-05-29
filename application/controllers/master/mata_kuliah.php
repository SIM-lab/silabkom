<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class mata_kuliah extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_mata_kuliah');
	}

	public function index()
	{
		$this->fungsi->check_previleges('mata_kuliah');
		$data['mata_kuliah'] = $this->m_mata_kuliah->getData();
		$this->load->view('master/mata_kuliah/v_mata_kuliah_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Mata kuliah";
		$subheader = "mata_kuliah";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/mata_kuliah/show_addForm/","#divsubcontent")');
		}elseif ($base_kom=$this->uri->segment(5)) {
			$this->fungsi->run_js('load_silent("master/mata_kuliah/show_editForm/'.$base_kom.'","#divsubcontent")');
		}
		else{
			$base_koma=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/mata_kuliah/delete/'.$base_koma.'","#divsubcontent")');	
		}

	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('mata_kuliah');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'mata_kuliah',
					'label' => 'mata_kuliah',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('master/mata_kuliah/v_mata_kuliah_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode','mata_kuliah','sks'));
			$this->m_mata_kuliah->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/mata_kuliah","#content")');
			$this->fungsi->message_box("Data Master Nama Alat sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Master mata_kuliah dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('mata_kuliah');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'puyeng',
					'rules' => ''
				),
				array(
					'field'	=> 'mata_kuliah',
					'label' => 'mata_kuliah',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('master_mata_kuliah',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/mata_kuliah/v_mata_kuliah_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode','mata_kuliah','sks'));
			$this->m_mata_kuliah->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/mata_kuliah","#content")');
			$this->fungsi->message_box("Data Master Nama Alat sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Master mata_kuliah dengan data sbb:",true);
		}
	}
	public function delete($id='')
	{
		$this->fungsi->check_previleges('mata_kuliah');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'astaghfirullah',
					'rules' => ''
				),
				array(
					'field'	=> 'mata_kuliah',
					'label' => 'mata_kuliah',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['delete'] = $this->db->get_where('master_mata_kuliah');
			$data['status']='';
			//$this->load->view('master/mata_kuliah/v_mata_kuliah_delete',$data);
		}
		else
		{
			$datapost = get_post_data(array($id));
			$this->m_mata_kuliah->deleteData($datapost);
			$this->fungsi->run_js('load_silent("master/mata_kuliah","#content")');
			$this->fungsi->message_box("Data Master Nama Alat sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Master mata_kuliah dengan data sbb:",true);
		}
	}
}

/* End of file mata_kuliah.php */
/* Location: ./application/controllers/master/mata_kuliah.php */