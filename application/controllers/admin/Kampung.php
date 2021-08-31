<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kampung extends CI_Controller {

	// Load database
	public function __construct()
	{
		parent::__construct();
		$this->load->model('kampung_model');
		$this->load->model('galeri_model');
		$this->log_user->add_log();
		// Tambahkan proteksi halaman
		$url_pengalihan = str_replace('index.php/', '', current_url());
		$pengalihan 	= $this->session->set_userdata('pengalihan',$url_pengalihan);
		// Ambil check login dari simple_login
		$this->simple_login->check_login($pengalihan);

	}

	// Halaman kampung
	public function index()	{
		$kampung = $this->kampung_model->listing();
		$site 	= $this->konfigurasi_model->listing();

		$data = array(	'title'			=> 'Kampung ('.count($kampung).')',
						'kampung'		=> $kampung,
						'site'			=> $site,
						'isi'			=> 'admin/kampung/list');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}

	// Halaman Galeri
	public function gambar()	{
		$galeri = $this->galeri_model->listing();
		$data = array(	'title'			=> 'Galeri',
						'galeri'		=> $galeri);
		$this->load->view('admin/kampung/gambar', $data, FALSE);		
	}

	// Jenis kampung
	public function jenis_kampung($jenis_kampung)	{
		$kampung = $this->kampung_model->jenis_admin($jenis_kampung);
		$data = array(	'title'			=> 'Jenis kampung: '.$jenis_kampung.' ('.count($kampung).')',
						'kampung'		=> $kampung,
						'isi'			=> 'admin/kampung/list');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}

	// Status kampung
	public function status_kampung($status_kampung)	{
		$kampung = $this->kampung_model->status_admin($status_kampung);
		$data = array(	'title'			=> 'Status kampung: '.$status_kampung.' ('.count($kampung).')',
						'kampung'		=> $kampung,
						'isi'			=> 'admin/kampung/list');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}

	// Proses
	public function proses()
	{
		$site 			= $this->konfigurasi_model->listing();
		$id_kampungnya 	= $this->input->post('id_kampung');

		// Check id_kampung kosong atau tidak
		if($id_kampungnya == "") {
			$this->session->set_flashdata('warning', 'Anda belum memilih data');
			redirect(base_url('admin/kampung'),'refresh');
		}

		// PROSES HAPUS MULTIPLE
		if(isset($_POST['hapus'])) {
			$inp 				= $this->input;
			$id_kampungnya		= $inp->post('id_kampung');

   			for($i=0; $i < sizeof($id_kampungnya);$i++) {
   				$kampung 	= $this->kampung_model->detail($id_kampungnya[$i]);
   				if($kampung->gambar !='') {
					unlink('./assets/upload/kampung/'.$kampung->gambar);
					unlink('./assets/upload/kampung/thumbs/'.$kampung->gambar);
				}
				$data = array(	'id_kampung'	=> $id_kampungnya[$i]);
   				$this->kampung_model->delete($data);
   			}

   			$this->session->set_flashdata('sukses', 'Data telah dihapus');
   			redirect(base_url('admin/kampung'),'refresh');
			   
   		// PROSES SETTING DRAFT
   		}elseif(isset($_POST['draft'])) {
   			$inp 				= $this->input;
			$id_kampungnya		= $inp->post('id_kampung');

   			for($i=0; $i < sizeof($id_kampungnya);$i++) {
   				$kampung 	= $this->kampung_model->detail($id_kampungnya[$i]);
				$data = array(	'id_kampung'		=> $id_kampungnya[$i],
								'status_kampung'	=> 'Draft');
   				$this->kampung_model->edit($data);
   			}

   			$this->session->set_flashdata('sukses', 'Data telah diset untuk tidak dipublikasikan');
   			redirect(base_url('admin/kampung'),'refresh');   
   		// PROSES SETTING PUBLISH
   		}elseif(isset($_POST['publish'])) {
   			$inp 				= $this->input;
			$id_kampungnya		= $inp->post('id_kampung');

   			for($i=0; $i < sizeof($id_kampungnya);$i++) {
   				$kampung 	= $this->kampung_model->detail($id_kampungnya[$i]);
				$data = array(	'id_kampung'		=> $id_kampungnya[$i],
								'status_kampung'	=> 'Publish');
   				$this->kampung_model->edit($data);
   			}

   			$this->session->set_flashdata('sukses', 'Data telah dipublikasikan');
   			redirect(base_url('admin/kampung'),'refresh');
   		}
	}


	// Author Kampung
	public function author($id_user)	{
		$kampung 	= $this->kampung_model->author_admin($id_user);
		$user 		= $this->user_model->detail($id_user);

		$data = array(	'title'			=> 'Penulis kampung: '.$user->nama.' ('.count($kampung).')',
						'kampung'		=> $kampung,
						'isi'			=> 'admin/kampung/list');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}

	// Tambah kampung
	public function tambah()	{
		// $this->session->set_userdata('upload_image_file_manager',true);
		$this->session->set_userdata('upload_image_file_manager',true);

		// Validasi
		$valid = $this->form_validation;

		$valid->set_rules('judul_kampung','Judul','trim|required|is_unique[kampung.judul_kampung]',
			array(	'required'	=> 'Nama harus diisi',
					'is_unique'	=> 'Kampung sudah terdaftar.'));

		$valid->set_rules('isi','Isi','required',
			array(	'required'	=> 'Profil kampung harus diisi'));

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

		$data = array(	'title'			=> 'Tambah Kampung',
						'error'    		=> $this->upload->display_errors(),
						'isi'			=> 'admin/kampung/tambah');
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
	        $slug 	= url_title($i->post('judul_kampung'),'dash',TRUE);

	        $data = array(	'id_user'		=> $this->session->userdata('id_user'),
	        				'slug_kampung'	=> $slug,
	        				'judul_kampung'	=> $i->post('judul_kampung'),
	        				'isi'			=> $i->post('isi'),
	        				'jenis_kampung'	=> $i->post('jenis_kampung'),
	        				'status_kampung'	=> $i->post('status_kampung'),
	        				'gambar'		=> $upload_data['uploads']['file_name'],
	        				'icon'			=> $i->post('icon'),
	        				'keywords'		=> $i->post('keywords'),
	        				'tanggal_publish'=> date('Y-m-d',strtotime($i->post('tanggal_publish'))).' '.$i->post('jam_publish'),
	        				// 'tanggal_mulai'		=> $i->post('tanggal_mulai'),
	        				// 'tanggal_selesai'		=> $i->post('tanggal_selesai'),
	        				'urutan'	=> $i->post('urutan'),
	        				'tanggal_post'	=> date('Y-m-d H:i:s'),
	        				);
	        $this->kampung_model->tambah($data);
	        $this->session->set_flashdata('sukses', 'Data telah ditambah');
	        redirect(base_url('admin/kampung/jenis_kampung/'.$i->post('jenis_kampung')),'refresh');
		}}else{
			$i 		= $this->input;
	        $slug 	= url_title($i->post('judul_kampung'),'dash',TRUE);

	        $data = array(	'id_user'		=> $this->session->userdata('id_user'),
	        				'slug_kampung'	=> $slug,
	        				'judul_kampung'	=> $i->post('judul_kampung'),
	        				'isi'			=> $i->post('isi'),
	        				'jenis_kampung'	=> $i->post('jenis_kampung'),
	        				'status_kampung'=> $i->post('status_kampung'),
	        				'icon'			=> $i->post('icon'),
	        				'keywords'		=> $i->post('keywords'),
	        				'tanggal_publish'=> date('Y-m-d',strtotime($i->post('tanggal_publish'))).' '.$i->post('jam_publish'),
	        				// 'tanggal_mulai'		=> $i->post('tanggal_mulai'),
	        				// 'tanggal_selesai'		=> $i->post('tanggal_selesai'),
	        				'urutan'	=> $i->post('urutan'),
	        				'tanggal_post'	=> date('Y-m-d H:i:s'),
	        				);
	        $this->kampung_model->tambah($data);
	        $this->session->set_flashdata('sukses', 'Data telah ditambah');
	        redirect(base_url('admin/kampung/jenis_kampung/'.$i->post('jenis_kampung')),'refresh');
		}}
		// End masuk database
		$data = array(	'title'			=> 'Tambah Kampung',
						'isi'			=> 'admin/kampung/tambah');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}

	// Edit kampung
	public function edit($id_kampung)	{
		$this->session->set_userdata('upload_image_file_manager',true);
		$kampung 	= $this->kampung_model->detail($id_kampung); 
		$this->session->set_userdata('upload_image_file_manager',true);
		
		// Validasi
		$valid = $this->form_validation;

		$valid->set_rules('judul_kampung','Judul','required',
			array(	'required'	=> 'Judul harus diisi'));

		$valid->set_rules('isi','Isi','required',
			array(	'required'	=> 'Isi kampung harus diisi'));

		if($valid->run()) {

			if(!empty($_FILES['gambar']['name'])) {

			$config['upload_path']   = './assets/upload/image/';
      		$config['allowed_types'] = 'gif|jpg|png|svg|jpeg';
      		$config['max_size']      = '12000'; // KB  
			$this->load->library('upload', $config);
      		if(! $this->upload->do_upload('gambar')) {
		// End validasi

		$data = array(	'title'			=> 'Edit Kampung',
						'kampung'		=> $kampung,
						'error'    		=> $this->upload->display_errors(),
						'isi'			=> 'admin/kampung/edit');
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
	        if($kampung->gambar != "") {
	        	unlink('./assets/upload/image/'.$kampung->gambar);
				unlink('./assets/upload/image/thumbs/'.$kampung->gambar);
	        }
	        // End hapus

	        $i 		= $this->input;
	        $slug 	= url_title($i->post('judul_kampung'),'dash',TRUE);

	        $data = array(	'id_kampung'		=> $id_kampung,
	        				'id_user'		=> $this->session->userdata('id_user'),
	        				'slug_kampung'	=> $slug,
	        				'judul_kampung'	=> $i->post('judul_kampung'),
	        				'isi'			=> $i->post('isi'),
	        				'jenis_kampung'	=> $i->post('jenis_kampung'),
	        				'status_kampung'=> $i->post('status_kampung'),
	        				'icon'			=> $i->post('icon'),
	        				'gambar'		=> $upload_data['uploads']['file_name'],
	        				'keywords'		=> $i->post('keywords'),
	        				'tanggal_publish'=> date('Y-m-d',strtotime($i->post('tanggal_publish'))).' '.$i->post('jam_publish'),
	        				// 'tanggal_mulai'		=> $i->post('tanggal_mulai'),
	        				// 'tanggal_selesai'		=> $i->post('tanggal_selesai'),
	        				'urutan'	=> $i->post('urutan'),
	        				);
	        $this->kampung_model->edit($data);
	        $this->session->set_flashdata('sukses', 'Data telah diedit');
	        redirect(base_url('admin/kampung/jenis_kampung/'.$i->post('jenis_kampung')),'refresh');
		}}else{
			$i 		= $this->input;
	        $slug 	= url_title($i->post('judul_kampung'),'dash',TRUE);

	        $data = array(	'id_kampung'	=> $id_kampung,
	        				'id_user'		=> $this->session->userdata('id_user'),
	        				'slug_kampung'	=> $slug,
	        				'judul_kampung'	=> $i->post('judul_kampung'),
	        				'isi'			=> $i->post('isi'),
	        				'jenis_kampung'	=> $i->post('jenis_kampung'),
	        				'status_kampung'	=> $i->post('status_kampung'),
	        				'icon'			=> $i->post('icon'),
	        				'keywords'		=> $i->post('keywords'),
	        				'tanggal_publish'=> date('Y-m-d',strtotime($i->post('tanggal_publish'))).' '.$i->post('jam_publish'),
	        				// 'tanggal_mulai'		=> $i->post('tanggal_mulai'),
	        				// 'tanggal_selesai'		=> $i->post('tanggal_selesai'),
	        				'urutan'	=> $i->post('urutan'),
	        				);
	        $this->kampung_model->edit($data);
	        $this->session->set_flashdata('sukses', 'Data telah diedit');
	        redirect(base_url('admin/kampung/jenis_kampung/'.$i->post('jenis_kampung')),'refresh');
		}}
		// End masuk database
		$data = array(	'title'			=> 'Edit Kampung',
						'kampung'		=> $kampung,
						'isi'			=> 'admin/kampung/edit');
		$this->load->view('admin/layout/wrapper', $data, FALSE);		
	}


	// Delete
	public function delete($id_kampung) {
		// Tambahkan proteksi halaman
		$url_pengalihan = str_replace('index.php/', '', current_url());
		$pengalihan 	= $this->session->set_userdata('pengalihan',$url_pengalihan);
		// Ambil check login dari simple_login
		$this->simple_login->check_login($pengalihan);

		
		$kampung = $this->kampung_model->detail($id_kampung);
		// Proses hapus gambar
		if($kampung->gambar != "") {
			unlink('./assets/upload/image/'.$kampung->gambar);
			unlink('./assets/upload/image/thumbs/'.$kampung->gambar);
		}
		// End hapus gambar
		$data = array('id_kampung'	=> $id_kampung);
		$this->kampung_model->delete($data);
	    $this->session->set_flashdata('sukses', 'Data telah dihapus');
	    redirect(base_url('admin/kampung'),'refresh');
	}
}

/* End of file Kampung.php */
/* Location: ./application/controllers/admin/Kampung.php */