<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class lupa extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_lupa');
	}

	public function index()
	{
		$this->fungsi->check_previleges('lupa');
		$data['lupa'] = $this->m_lupa->getData();
		$this->load->view('cms/lupa',$data);
    }


	public function add()
	{
		$this->fungsi->check_previleges('lupa');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'lupa',
					'label' => 'lupa',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('cms/lupa',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','ussername','email','no'));
			$this->m_lupa->insertData($datapost);
			$this->fungsi->run_js('load_silent("cms/lupa","#content")');
			$this->fungsi->message_box("Data Master Nama Alat sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Master lupa dengan data sbb:",true);
		}
	}
	
	
}
