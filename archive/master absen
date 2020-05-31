<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Master_absen extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_master_absen');
	}

	public function index()
	{
		$this->fungsi->check_previleges('Absen');
		$data['master_absen'] = $this->m_master_absen->getData();
		$this->load->view('master/absen/v_absen_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Mata Kuliah";
		$subheader = "mata_kuliah";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/master_absen/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/master_absen/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('Absen');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'Hadir',
					'label' => 'Hadir',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('master/absen/v_absen_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('Kode_Lab','Tanggal','Hadir','tidak_hadir','keterangan','id_status'));
			$this->m_master_absen->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/master_absen","#content")');
			$this->fungsi->message_box("Data Master Absen sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Master master_absen dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('Absen');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'wes mbarke',
					'rules' => ''
				),
				array(
					'field'	=> 'Hadir',
					'label' => 'Hadir',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('master_absen',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/absen/v_absen_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','Kode_Lab','Tanggal','Hadir','tidak_hadir','keterangan','id_status'));
			$this->m_master_absen->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/master_absen","#content")');
			$this->fungsi->message_box("Data Master Absen sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Master master_absen dengan data sbb:",true);
		}
	}
}

/* End of file master_absen.php */
/* Location: ./application/controllers/master/master_absen.php */
