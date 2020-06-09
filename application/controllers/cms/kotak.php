<?php
class Kotak extends CI_Controller {
 
	public function __construct()
	{
		parent::__construct();
		$this->load->model('m_kotak');
	}
 
	public function lab()
	{
		$data['lab'] = $this->m_kotak->lab();
		$this->load->view('kotak', $data);
	}
}