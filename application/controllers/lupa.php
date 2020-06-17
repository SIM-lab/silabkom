<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class lupa extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		// $this->fungsi->restrict();
		$this->load->model('cms/m_lupa');
	}

	public function index()
	{
		//$this->fungsi->check_previleges('semua');
		$data['lupa'] = $this->m_lupa->getData();
		$this->load->view('cms/lupa',$data);
    }


	public function add()
	{
		//$this->fungsi->check_previleges('semua');
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
			$this->fungsi->message_box("Sudah Terkirim, Silahkan Tunggu Beberapa Saat Lagi","success");
		}
	}
	public function send_email() {
		$this->load->library('email');
		$this->email->initialize(array(
			  'protocol' => 'smtp',
			  'smtp_host' => 'ssl://smtp.gmail.com',
			  'smtp_user' => 'sunankarebet@gmail.com',
			  'smtp_pass' => 'pangkurkalijaga1999',
			  'smtp_port' => 465,
			  'mailtype' => 'text',
			  'newline' => "\r\n" // kode yang harus di tulis pada konfigurasi controler email
		));

		$from = 'nama-email@stiki.ac.id';
		$nama = 'namanya';
		$to = 'sunankarebet@gmail.com';
		$subject = 'judul emailnya';
		$message = 'isi berita dari email';

		$this->email->from($from, $nama )
					->to($to)
					->subject($subject)
					->message($message);

		if ($this->email->send()) {
		   $this->session->set_flashdata('success', 'Email berhasil dikirim.');
		   redirect(current_url());
		} else {
		   show_error($this->email->print_debugger());
		}
	
	
}
}