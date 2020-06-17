<?php
class Kotak extends CI_Controller {
 
	public function __construct()
	{
		parent::__construct();
		$this->load->model('cms/m_kotak');
	}
 
	public function lab()
	{
		$this->fungsi->check_previleges('kotak');
		$data['kotak'] = $this->m_kotak->lab();
		$this->load->view('kotak', $data);
	}
	public function alat()
	{
		$this->fungsi->check_previleges('kotak');
		$data['kotak'] = $this->m_kotak->alat();
		$this->load->view('kotak', $data);
	}
	
}