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
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('master/modul/v_modul_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('nama_modul','keterangan','modul','tipe','ukuran'));
			$this->m_modul->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/modul","#content")');
			$this->fungsi->message_box("Data Master Nama modul sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Master modul dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('modul');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'wes mbarke',
					'rules' => ''
				),
				array(
					'field'	=> 'nama_modul',
					'label' => 'nama_modul',
					'rules' => 'required'
                )

			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('master_modul',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/modul/v_modul_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','nama_modul','modul'));
			$this->m_modul->updateData($datapost);
			$this->fungsi->run_js('load_silent("master/modul","#content")');
			$this->fungsi->message_box("Data Master Nama modul sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Master modul dengan data sbb:",true);
		}
		
	}
	public function delete()
	{
		$id = $this->uri->segment(4);
		$this->m_modul->deleteData($id);
		redirect('admin');
    }
    public function download()
    {				
		force_download('uploads/mimiperi.pdf',NULL);
	}	

}

/* End of file modul.php */
/* Location: ./application/controllers/master/modul.php */