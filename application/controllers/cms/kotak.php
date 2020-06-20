<?php
class Kotak extends CI_Controller {
 
	public function __construct()
	{
		parent::__construct();
		$this->load->model('cms/m_kotak');
	}
	public function index()
	{
		$this->fungsi->check_previleges('kotak');
		$data['kutak'] = $this->m_kotak->getData();
		$this->load->view('kotak/kotak',$data);
	}
	public function lab()
	{
		$this->fungsi->check_previleges('lab');
		$lab['lab'] = $this->m_kotak->lab();
		$this->load->view('kotak/kotak', $lab);
	}
	public function alat()
	{
		$this->fungsi->check_previleges('kotak');
		$data['kotak'] = $this->m_kotak->alat();
		$this->load->view('kotak', $data);
	}
	
}