<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class modul extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_modul');
    }
	public function index()
	{
		$this->fungsi->check_previleges('modul');
		$data['modyar'] = $this->m_modul->getData();
		$this->load->view('master/modul/v_modul_list',$data);
	}
	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Nama modul";
		$subheader = "modul";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/modul/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/modul/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}
	public function show_addForm()
	{
		$this->fungsi->check_previleges('modul');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_modul',
					'label' => 'nama_modul',
					'rules' => 'required'
				),
				array(
					'field'	=> 'keterangan',
					'label' => 'keterangan',
					'rules' => 'trim|required'
				),
				array(
					'field'	=> 'tipe',
					'label' => 'tipe',
					'rules' => ''
				),
				array(
					'field'	=> 'ukuran',
					'label' => 'ukuran',
					'rules' => ''
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			
			$data['status'] = '';
			$this->load->view('master/modul/v_modul_add',$data);
		}
		else
		{

			$upload_folder = get_upload_folder('./files/');

			$config['upload_path'] = $upload_folder;
			$config['allowed_types'] = 'gif|jpg|jpeg|png|doc|xls|ppt|pdf|txt|csv';
			$config['max_size']	= '5000';
			$config['max_width']  = '1024';
			$config['max_height']  = '768';
			$config['encrypt_name']  = true;

		    $this->load->library('upload', $config);
		    $err = "";
		    $msg = "";
		    if ( ! $this->upload->do_upload('ufile'))
		    {
		      $err = $this->upload->display_errors('<span class="error_string">','</span>');
		    }
		    else
		    {
		      $data = $this->upload->data();
		      /***********************/
		      // CREATE THUMBNAIL 100x100 - maintain aspect ratio
		      /**********************/
		      $config['image_library'] = 'gd2';
		      $config['source_image'] = $upload_folder.$data['file_name'];
		      $config['maintain_ratio'] = TRUE;
		      $config['width'] = 100;
		      $config['height'] = 100;

		      $this->load->library('image_lib', $config);

		      if ( ! $this->image_lib->resize())
		      {
		        $err = $this->image_lib->display_errors('<span class="error_string">','</span>');
		      }
		      else
		      {
	
		      	$datapost = array(
				'nama_modul'     => $this->input->post('nama_modul'), 
				'keterangan' => $this->input->post('keterangan'),
				'ufile'   => substr($upload_folder,2).$data['file_name'], 
				'tipe'    => $this->input->post('tipe'), 
				'ukuran'   => $this->input->post('ukuran'), 
				);
		        $this->m_user->insertData($datapost);
				$this->fungsi->catat($datapost,"Menambah Master user dengan data sbb:",true);
				$data['msg'] = "user Baru Disimpan....";
				echo json_encode($data);
				
		      }
		    }
			
		}
	}
	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('modul');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_modul',
					'label' => 'nama_modul',
					'rules' => 'required'
				),
				array(
					'field'	=> 'keterangan',
					'label' => 'keterangan',
					'rules' => 'trim|required'
				),
				array(
					'field'	=> 'tipe',
					'label' => 'tipe',
					'rules' => ''
				),
				array(
					'field'	=> 'ukuran',
					'label' => 'ukuran',
					'rules' => ''
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('master_modul',array('id'=>$id));
			$data['status'] = '';
			$this->load->view('master/modul/v_modul_edit',$data);
		}
		else
		{

			$upload_folder = get_upload_folder('./files/');

			$config['upload_path'] = $upload_folder;
			$config['allowed_types'] = 'gif|jpg|jpeg|png|doc|xls|ppt|pdf|txt|csv';
			$config['max_size']	= '5000';
			$config['max_width']  = '1024';
			$config['max_height']  = '768';
			$config['encrypt_name']  = true;

		    $this->load->library('upload', $config);
		    $err = "";
		    $msg = "";
		    if ( ! $this->upload->do_upload('ufile'))
		    {
		      $err = $this->upload->display_errors('<span class="error_string">','</span>');
		    }
		    else
		    {
		      $data = $this->upload->data();
		      /***********************/
		      // CREATE THUMBNAIL 100x100 - maintain aspect ratio
		      /**********************/
		      $config['image_library'] = 'gd2';
		      $config['source_image'] = $upload_folder.$data['file_name'];
		      $config['maintain_ratio'] = TRUE;
		      $config['width'] = 100;
		      $config['height'] = 100;

		      $this->load->library('image_lib', $config);

		      if ( ! $this->image_lib->resize())
		      {
		        $err = $this->image_lib->display_errors('<span class="error_string">','</span>');
		      }
		      else
		      {
	
		      	$datapost = array(
				'nama_modul'     => $this->input->post('nama_modul'), 
				'keterangan' => $this->input->post('keterangan'),
				'ufile'   => substr($upload_folder,2).$data['file_name'], 
				'tipe'    => $this->input->post('tipe'), 
				'ukuran'   => $this->input->post('ukuran'), 
				);
		        $this->m_user->insertData($datapost);
				$this->fungsi->catat($datapost,"Menambah Master user dengan data sbb:",true);
				$data['msg'] = "user Baru Disimpan....";
				echo json_encode($data);
				
		      }
		    }
			
		}
	}

	
	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_modul->deleteData($id);
		redirect('admin');
    }
   

}

/* End of file modul.php */
/* Location: ./application/controllers/master/modul.php */