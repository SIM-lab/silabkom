<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class kotak extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('cms/m_kotak');
	}

	public function index()
	{
		$this->fungsi->check_previleges('kotak');
		$data['kotak'] = $this->m_kotak->getData();
		$this->load->view('kotak',$data);
    }
}