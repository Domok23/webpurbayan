<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Umkm extends CI_Controller {

	// Load database
	public function __construct()
	{
		parent::__construct();
		$this->load->model('umkm_model');
		$this->load->model('galeri_model');
		$this->log_user->add_log();
		// Tambahkan proteksi halaman
		$url_pengalihan = str_replace('index.php/', '', current_url());
		$pengalihan 	= $this->session->set_userdata('pengalihan',$url_pengalihan);
		// Ambil check login dari simple_login
		$this->simple_login->check_login($pengalihan);

	}

	// Halaman umkm
	public function index()	{
		$umkm = $this->umkm_model->listing();
		$site 	= $this->konfigurasi_model->listing();

		$data = array(	'title'			=> 'UMKM ('.count($umkm).')',
						'umkm'		=> $umkm,
						'site'			=> $site,
						'isi'			=> 'admin/umkm/list');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}

	// Halaman Galeri
	public function gambar()	{
		$galeri = $this->galeri_model->listing();
		$data = array(	'title'			=> 'Galeri',
						'galeri'		=> $galeri);
		$this->load->view('admin/umkm/gambar', $data, FALSE);		
	}

	// Jenis umkm
	public function jenis_umkm($jenis_umkm)	{
		$umkm = $this->umkm_model->jenis_admin($jenis_umkm);
		$data = array(	'title'			=> 'Jenis UMKM: '.$jenis_umkm.' ('.count($umkm).')',
						'umkm'		=> $umkm,
						'isi'			=> 'admin/umkm/list');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}

	// Status umkm
	public function status_umkm($status_umkm)	{
		$umkm = $this->umkm_model->status_admin($status_umkm);
		$data = array(	'title'			=> 'Status UMKM: '.$status_umkm.' ('.count($umkm).')',
						'umkm'		=> $umkm,
						'isi'			=> 'admin/umkm/list');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}

	// Proses
	public function proses()
	{
		$site 			= $this->konfigurasi_model->listing();
		$id_umkmnya 	= $this->input->post('id_umkm');

		// Check id_umkm kosong atau tidak
		if($id_umkmnya == "") {
			$this->session->set_flashdata('warning', 'Anda belum memilih data');
			redirect(base_url('admin/umkm'),'refresh');
		}

		// PROSES HAPUS MULTIPLE
		if(isset($_POST['hapus'])) {
			$inp 				= $this->input;
			$id_umkmnya		= $inp->post('id_umkm');

   			for($i=0; $i < sizeof($id_umkmnya);$i++) {
   				$umkm 	= $this->umkm_model->detail($id_umkmnya[$i]);
   				if($umkm->gambar !='') {
					unlink('./assets/upload/umkm/'.$umkm->gambar);
					unlink('./assets/upload/umkm/thumbs/'.$umkm->gambar);
				}
				$data = array(	'id_umkm'	=> $id_umkmnya[$i]);
   				$this->umkm_model->delete($data);
   			}

   			$this->session->set_flashdata('sukses', 'Data telah dihapus');
   			redirect(base_url('admin/umkm'),'refresh');
			   
   		// PROSES SETTING DRAFT
   		}elseif(isset($_POST['draft'])) {
   			$inp 				= $this->input;
			$id_umkmnya		= $inp->post('id_umkm');

   			for($i=0; $i < sizeof($id_umkmnya);$i++) {
   				$umkm 	= $this->umkm_model->detail($id_umkmnya[$i]);
				$data = array(	'id_umkm'		=> $id_umkmnya[$i],
								'status_umkm'	=> 'Draft');
   				$this->umkm_model->edit($data);
   			}

   			$this->session->set_flashdata('sukses', 'Data telah diset untuk tidak dipublikasikan');
   			redirect(base_url('admin/umkm'),'refresh');   
   		// PROSES SETTING PUBLISH
   		}elseif(isset($_POST['publish'])) {
   			$inp 				= $this->input;
			$id_umkmnya		= $inp->post('id_umkm');

   			for($i=0; $i < sizeof($id_umkmnya);$i++) {
   				$umkm 	= $this->umkm_model->detail($id_umkmnya[$i]);
				$data = array(	'id_umkm'		=> $id_umkmnya[$i],
								'status_umkm'	=> 'Publish');
   				$this->umkm_model->edit($data);
   			}

   			$this->session->set_flashdata('sukses', 'Data telah dipublikasikan');
   			redirect(base_url('admin/umkm'),'refresh');
   		}
	}


	// Author umkm
	public function author($id_user)	{
		$umkm 	= $this->umkm_model->author_admin($id_user);
		$user 		= $this->user_model->detail($id_user);

		$data = array(	'title'			=> 'Penulis UMKM: '.$user->nama.' ('.count($umkm).')',
						'umkm'		=> $umkm,
						'isi'			=> 'admin/umkm/list');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}

	// Tambah umkm
	public function tambah()	{
		// $this->session->set_userdata('upload_image_file_manager',true);
		$this->session->set_userdata('upload_image_file_manager',true);

		// Validasi
		$valid = $this->form_validation;

		$valid->set_rules('judul_umkm','Judul','required|is_unique[umkm.judul_umkm]',
			array(	'required'	=> 'Nama harus diisi',
					'is_unique'	=> 'UMKM sudah terdaftar.'));

		$valid->set_rules('isi','Isi','required',
			array(	'required'	=> 'Profil UMKM harus diisi'));

		$valid->set_rules('urutan','Urutan','required|trim',
			array(	'required'	=> 'Urutan harus diisi'));

		if($valid->run()) {
			if(!empty($_FILES['gambar']['name'])) {
			$config['upload_path']   = './assets/upload/image/';
      		$config['allowed_types'] = 'gif|jpg|png|svg|jpeg';
      		$config['max_size']      = '12000'; // KB  
			$this->load->library('upload', $config);
      		if(! $this->upload->do_upload('gambar')) {
		// End validasi

		$data = array(	'title'			=> 'Tambah UMKM',
						'error'    		=> $this->upload->display_errors(),
						'isi'			=> 'admin/umkm/tambah');
		$this->load->view('admin/layout/wrapper', $data, FALSE);
		// Masuk database
		}else{
			$upload_data        		= array('uploads' =>$this->upload->data());
	        // Image Editor
	        $config['image_library']  	= 'gd2';
	        $config['source_image']   	= './assets/upload/image/'.$upload_data['uploads']['file_name']; 
	        $config['new_image']     	= './assets/upload/image/thumbs/';
	        $config['create_thumb']   	= TRUE;
	        $config['quality']       	= "100%";
	        $config['maintain_ratio']   = TRUE;
	        $config['width']       		= 360; // Pixel
	        $config['height']       	= 360; // Pixel
	        $config['x_axis']       	= 0;
	        $config['y_axis']       	= 0;
	        $config['thumb_marker']   	= '';
	        $this->load->library('image_lib', $config);
	        $this->image_lib->resize();

	        $i 		= $this->input;
	        $slug 	= url_title($i->post('judul_umkm'),'dash',TRUE);

	        $data = array(	'id_user'		=> $this->session->userdata('id_user'),
	        				'slug_umkm'	=> $slug,
	        				'judul_umkm'	=> $i->post('judul_umkm'),
	        				'isi'			=> $i->post('isi'),
	        				'jenis_umkm'	=> $i->post('jenis_umkm'),
	        				'status_umkm'	=> $i->post('status_umkm'),
	        				'gambar'		=> $upload_data['uploads']['file_name'],
	        				'icon'			=> $i->post('icon'),
	        				'keywords'		=> $i->post('keywords'),
	        				'tanggal_publish'=> date('Y-m-d',strtotime($i->post('tanggal_publish'))).' '.$i->post('jam_publish'),
	        				// 'tanggal_mulai'		=> $i->post('tanggal_mulai'),
	        				// 'tanggal_selesai'		=> $i->post('tanggal_selesai'),
	        				'urutan'	=> $i->post('urutan'),
	        				'tanggal_post'	=> date('Y-m-d H:i:s'),
	        				);
	        $this->umkm_model->tambah($data);
	        $this->session->set_flashdata('sukses', 'Data telah ditambah');
	        redirect(base_url('admin/umkm/jenis_umkm/'.$i->post('jenis_umkm')),'refresh');
		}}else{
			$i 		= $this->input;
	        $slug 	= url_title($i->post('judul_umkm'),'dash',TRUE);

	        $data = array(	'id_user'		=> $this->session->userdata('id_user'),
	        				'slug_umkm'	=> $slug,
	        				'judul_umkm'	=> $i->post('judul_umkm'),
	        				'isi'			=> $i->post('isi'),
	        				'jenis_umkm'	=> $i->post('jenis_umkm'),
	        				'status_umkm'=> $i->post('status_umkm'),
	        				'icon'			=> $i->post('icon'),
	        				'keywords'		=> $i->post('keywords'),
	        				'tanggal_publish'=> date('Y-m-d',strtotime($i->post('tanggal_publish'))).' '.$i->post('jam_publish'),
	        				// 'tanggal_mulai'		=> $i->post('tanggal_mulai'),
	        				// 'tanggal_selesai'		=> $i->post('tanggal_selesai'),
	        				'urutan'	=> $i->post('urutan'),
	        				'tanggal_post'	=> date('Y-m-d H:i:s'),
	        				);
	        $this->umkm_model->tambah($data);
	        $this->session->set_flashdata('sukses', 'Data telah ditambah');
	        redirect(base_url('admin/umkm/jenis_umkm/'.$i->post('jenis_umkm')),'refresh');
		}}
		// End masuk database
		$data = array(	'title'			=> 'Tambah UMKM',
						'isi'			=> 'admin/umkm/tambah');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}

	// Edit umkm
	public function edit($id_umkm)	{
		$this->session->set_userdata('upload_image_file_manager',true);
		$umkm 	= $this->umkm_model->detail($id_umkm); 
		$this->session->set_userdata('upload_image_file_manager',true);
		
		// Validasi
		$valid = $this->form_validation;

		$valid->set_rules('judul_umkm','Judul','required',
			array(	'required'	=> 'Judul harus diisi'));

		$valid->set_rules('isi','Isi','required',
			array(	'required'	=> 'Isi UMKM harus diisi'));

		if($valid->run()) {

			if(!empty($_FILES['gambar']['name'])) {

			$config['upload_path']   = './assets/upload/image/';
      		$config['allowed_types'] = 'gif|jpg|png|svg|jpeg';
      		$config['max_size']      = '12000'; // KB  
			$this->load->library('upload', $config);
      		if(! $this->upload->do_upload('gambar')) {
		// End validasi

		$data = array(	'title'			=> 'Edit UMKM',
						'umkm'		=> $umkm,
						'error'    		=> $this->upload->display_errors(),
						'isi'			=> 'admin/umkm/edit');
		$this->load->view('admin/layout/wrapper', $data, FALSE);
		// Masuk database
		}else{
			$upload_data        		= array('uploads' =>$this->upload->data());
	        // Image Editor
	        $config['image_library']  	= 'gd2';
	        $config['source_image']   	= './assets/upload/image/'.$upload_data['uploads']['file_name']; 
	        $config['new_image']     	= './assets/upload/image/thumbs/';
	        $config['create_thumb']   	= TRUE;
	        $config['quality']       	= "100%";
	        $config['maintain_ratio']   = TRUE;
	        $config['width']       		= 360; // Pixel
	        $config['height']       	= 360; // Pixel
	        $config['x_axis']       	= 0;
	        $config['y_axis']       	= 0;
	        $config['thumb_marker']   	= '';
	        $this->load->library('image_lib', $config);
	        $this->image_lib->resize();

	        //Hapus gambar
	        if($umkm->gambar != "") {
	        	unlink('./assets/upload/image/'.$umkm->gambar);
				unlink('./assets/upload/image/thumbs/'.$umkm->gambar);
	        }
	        // End hapus

	        $i 		= $this->input;
	        $slug 	= url_title($i->post('judul_umkm'),'dash',TRUE);

	        $data = array(	'id_umkm'		=> $id_umkm,
	        				'id_user'		=> $this->session->userdata('id_user'),
	        				'slug_umkm'	=> $slug,
	        				'judul_umkm'	=> $i->post('judul_umkm'),
	        				'isi'			=> $i->post('isi'),
	        				'jenis_umkm'	=> $i->post('jenis_umkm'),
	        				'status_umkm'=> $i->post('status_umkm'),
	        				'icon'			=> $i->post('icon'),
	        				'gambar'		=> $upload_data['uploads']['file_name'],
	        				'keywords'		=> $i->post('keywords'),
	        				'tanggal_publish'=> date('Y-m-d',strtotime($i->post('tanggal_publish'))).' '.$i->post('jam_publish'),
	        				// 'tanggal_mulai'		=> $i->post('tanggal_mulai'),
	        				// 'tanggal_selesai'		=> $i->post('tanggal_selesai'),
	        				'urutan'	=> $i->post('urutan'),
	        				);
	        $this->umkm_model->edit($data);
	        $this->session->set_flashdata('sukses', 'Data telah diedit');
	        redirect(base_url('admin/umkm/jenis_umkm/'.$i->post('jenis_umkm')),'refresh');
		}}else{
			$i 		= $this->input;
	        $slug 	= url_title($i->post('judul_umkm'),'dash',TRUE);

	        $data = array(	'id_umkm'	=> $id_umkm,
	        				'id_user'		=> $this->session->userdata('id_user'),
	        				'slug_umkm'	=> $slug,
	        				'judul_umkm'	=> $i->post('judul_umkm'),
	        				'isi'			=> $i->post('isi'),
	        				'jenis_umkm'	=> $i->post('jenis_umkm'),
	        				'status_umkm'	=> $i->post('status_umkm'),
	        				'icon'			=> $i->post('icon'),
	        				'keywords'		=> $i->post('keywords'),
	        				'tanggal_publish'=> date('Y-m-d',strtotime($i->post('tanggal_publish'))).' '.$i->post('jam_publish'),
	        				// 'tanggal_mulai'		=> $i->post('tanggal_mulai'),
	        				// 'tanggal_selesai'		=> $i->post('tanggal_selesai'),
	        				'urutan'	=> $i->post('urutan'),
	        				);
	        $this->umkm_model->edit($data);
	        $this->session->set_flashdata('sukses', 'Data telah diedit');
	        redirect(base_url('admin/umkm/jenis_umkm/'.$i->post('jenis_umkm')),'refresh');
		}}
		// End masuk database
		$data = array(	'title'			=> 'Edit UMKM',
						'umkm'		=> $umkm,
						'isi'			=> 'admin/umkm/edit');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}


	// Delete
	public function delete($id_umkm) {
		// Tambahkan proteksi halaman
		$url_pengalihan = str_replace('index.php/', '', current_url());
		$pengalihan 	= $this->session->set_userdata('pengalihan',$url_pengalihan);
		// Ambil check login dari simple_login
		$this->simple_login->check_login($pengalihan);

		
		$umkm = $this->umkm_model->detail($id_umkm);
		// Proses hapus gambar
		if($umkm->gambar != "") {
			unlink('./assets/upload/image/'.$umkm->gambar);
			unlink('./assets/upload/image/thumbs/'.$umkm->gambar);
		}
		// End hapus gambar
		$data = array('id_umkm'	=> $id_umkm);
		$this->umkm_model->delete($data);
	    $this->session->set_flashdata('sukses', 'Data telah dihapus');
	    redirect(base_url('admin/umkm'),'refresh');
	}
}

/* End of file Umkm.php */
/* Location: ./application/controllers/admin/Umkm.php */