<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_user');
	}

	public function index()
	{
		$this->fungsi->check_previleges('user');
		$data['user'] = $this->m_user->getData();
		$this->load->view('kelola/user/v_user_list',$data);
    }
    
	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Kelola User";
		$subheader = "user";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/user/show_addForm/","#divsubcontent")');	
		}else if($base_kom=$this->uri->segment(5)){
		
			$this->fungsi->run_js('load_silent("kelola/user/show_editForm/'.$base_kom.'","#divsubcontent")');	
			
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/user/show_deleteForm/'.$base_kom.'","#divsubcontent")');
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('user');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'no_induk',
					'label' => 'no_induk',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('kelola/user/v_user_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('no_induk','username','nama','email','no_telpon','level'));
			$this->m_user->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/user","#content")');
			$this->fungsi->message_box("Data Kelola User sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah kelola_user dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('user');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'wes mbarke',
					'rules' => ''
				),
				array(
					'field'	=> 'no_induk',
					'label' => 'no_induk',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('kelola_user',array('id'=>$id));
			$data['status']='';
			$this->load->view('kelola/user/v_user_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('no_induk','username','nama','email','no_telpon','level'));
			$this->m_user->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/user","#content")');
			$this->fungsi->message_box("Data Kelola User sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit kelola_user dengan data sbb:",true);
		}
	}
	public function show_deleteForm ($id='')
	{
		$this->fungsi->check_previleges('user');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'wes mbarke',
					'rules' => ''
				),
				array(
					'field'	=> 'no_induk',
					'label' => 'no_induk',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['delete'] = $this->db->get_where('kelola_user',array('id'=>$id));
			$data['status']='';
			$this->load->view('kelola/user/v_user_list',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','no_induk','username','nama','email','no_telpon','level'));
			$this->m_user->deleteData($datapost);
			$this->fungsi->run_js('load_silent("kelola/user","#content")');
			$this->fungsi->message_box("Data Kelola User sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit kelola_user dengan data sbb:",true);
		}
	}
	public function delete()
            {
                $id = $this->uri->segment(4);
                $this->m_user->deleteData($id);
				redirect('admin');
				$this->load->view('kelola/user/v_user_list');
            }	
	
}
