<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class tipe_laboratorium extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_tipe_laboratorium');
		$this->load->helper('file');
	}

	public function index()
	{
		$this->fungsi->check_previleges('tipe_laboratorium');
		$data['tipe_laboratorium'] = $this->m_tipe_laboratorium->getData();
		$this->load->view('master/tipe_laboratorium/v_tipe_laboratorium_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Tipe Laboratorium";
		$subheader = "tipe_laboratorium";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			
			$this->fungsi->run_js('load_silent("master/tipe_laboratorium/show_addForm/","#divsubcontent")');	
		} 
		else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/tipe_laboratorium/show_editForm/'.$base_kom.'","#divsubcontent")');
		}

	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('tipe_laboratorium');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama',
					'label' => 'Kode Komponen',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('master/tipe_laboratorium/v_tipe_laboratorium_add',$data);
		}
		else
		{

			$upload_folder = get_upload_folder('./files/');

			$config['upload_path']   = $upload_folder;
			$config['allowed_types'] = 'gif|jpg|jpeg|png';
			$config['max_size']      = '3072';
			// $config['max_width']     = '1024';
			// $config['max_height']    = '1024';
			$config['encrypt_name']  = true;

		    $this->load->library('upload', $config);
		    $err = "";
		    $msg = "";
		    if ( ! $this->upload->do_upload('foto'))
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
		      {$datapost = array(
				'id'                => $this->input->post('id'),  
				'jenis'       => $this->input->post('jenis'), 
				'foto'              => substr($upload_folder,2).$data['file_name'], 
				'koordinator'           => $this->input->post('koordinator'),
				'laboran'      => $this->input->post('laboran'), 
				'alamat'     => $this->input->post('alamat'), 
				'email'        => $this->input->post('email'), 
				'anggota'   => $this->input->post('anggota'),
				
				
				);
				$this->m_tipe_laboratorium->insertData($datapost);
				$this->fungsi->run_js('load_silent("master/tipe_laboratorium","#content")');
				$this->fungsi->catat($datapost,"Mengubah data instansi sbb:",true);
				$data['msg'] = "Data Instansi Diperbarui";
				echo json_encode($data);
		      }
		    }
			
		}
	}
	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('tipe_laboratorium');
		$this->load->library('form_validation');
		$config = array(
			array(
				'field'	=> 'id',
				'label' => '',
				'rules' => ''
			),
				array(
					'field'	=> 'nama',
					'label' => 'Kode Komponen',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('master_tipe_laboratorium',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/tipe_laboratorium/v_tipe_laboratorium_edit',$data);
		}
		else
		{

			$upload_folder = get_upload_folder('./files/');

			$config['upload_path']   = $upload_folder;
			$config['allowed_types'] = 'gif|jpg|jpeg|png';
			$config['max_size']      = '3072';
			// $config['max_width']     = '1024';
			// $config['max_height']    = '1024';
			$config['encrypt_name']  = true;

		    $this->load->library('upload', $config);
		    $err = "";
		    $msg = "";
		    if ( ! $this->upload->do_upload('foto'))
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
		      {$datapost = array(
				'id'                => $this->input->post('id'),  
				'jenis'       => $this->input->post('jenis'), 
				'foto'              => substr($upload_folder,2).$data['file_name'], 
				'koordinator'           => $this->input->post('koordinator'),
				'laboran'      => $this->input->post('laboran'), 
				'alamat'     => $this->input->post('alamat'), 
				'email'        => $this->input->post('email'), 
				'anggota'   => $this->input->post('anggota'),
								
				);
				$this->m_tipe_laboratorium->updateData($datapost);
				$this->fungsi->run_js('load_silent("master/tipe_laboratorium","#content")');
				$this->fungsi->catat($datapost,"Mengubah data instansi sbb:",true);
				$data['msg'] = "Data Instansi Diperbarui";
				echo json_encode($data);
		      }
		    }
			
		}
	}
	 
	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_tipe_laboratorium->deleteData($id);
		redirect('admin');
	}
}

/* End of file tipe_laboratorium.php */
/* Location: ./application/controllers/master/tipe_laboratorium.php */