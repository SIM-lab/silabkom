<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Blog extends CI_Controller{
    function __construct(){
        parent::__construct();
        $this->load->model('cms/m_berita');
    }
 
    function index(){
        $this->fungsi->check_previleges('berita');
		$data['berita'] = $this->m_berita->berita();
        $this->load->view('cms/berita/v_berita', $data);
    }

} 