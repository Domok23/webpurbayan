<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Akun extends CI_Controller {

	// load data
	public function __construct()
	{
		parent::__construct();
		$this->log_user->add_log();
		$this->load->model('user_model');
		// Tambahkan proteksi halaman
		$url_pengalihan = str_replace('index.php/', '', current_url());
		$pengalihan 	= $this->session->set_userdata('pengalihan',$url_pengalihan);
		// Ambil check login dari simple_login
		$this->simple_login->check_login($pengalihan);
	}

	// Main page akun
	public function index()
	{
		$id_user 	= $this->session->userdata('id_user');
		$user 		= $this->user_model->detail($id_user);

		// Validasi
		$valid = $this->form_validation;

		$valid->set_rules('nama','Nama Pengguna','required',
			array(	'required'	=> '%s harus diisi'));

		if($valid->run()) {
			if(!empty($_FILES['gambar']['name'])) {
			$config['upload_path'] 		= './assets/upload/user/';
			$config['allowed_types'] 	= 'gif|jpg|png|jpeg';
			$config['max_size']  		= '12000'; //KB
			$config['max_width']  		= '3000'; //Pixel
			$config['max_height']  		= '3000'; //Pixel
			$this->load->library('upload', $config);
			if ( ! $this->upload->do_upload('gambar')){
			// End validasi
			$data = array('title'	=> 'Profil Akun Anda: '.$this->session->userdata('nama'),
						'user'		=> $user,
						'error'		=> $this->upload->display_errors(),
						'isi'		=> 'admin/akun/list'
					);
			$this->load->view('admin/layout/wrapper', $data, FALSE);
			// Masuk database
			}else{
				$upload_data        		= array('uploads' =>$this->upload->data());
				// Image Editor
				$config['image_library']  	= 'gd2';
				$config['source_image']   	= './assets/upload/user/'.$upload_data['uploads']['file_name']; 
				$config['new_image']     	= './assets/upload/user/thumbs/';
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

				// Proses hapus gambar
			if($user->gambar != "") {
				unlink('./assets/upload/user/'.$user->gambar);
				unlink('./assets/upload/user/thumbs/'.$user->gambar);
			}
			// End hapus gambar
			
				$i = $this->input;
				$this->session->set_userdata('nama',$i->post('nama'));
				$data = array(	'id_user'			=> $id_user,
								'nama'				=> $i->post('nama'),
								'email'				=> $i->post('email'),
								'gambar'			=> $upload_data['uploads']['file_name'],
							);
				
				$this->user_model->edit($data);
				$this->session->set_flashdata('sukses', 'Data '.$user->nama.' telah diupdate');
				redirect(base_url('admin/akun'),'refresh');
		}}else{
			$i = $this->input;
			$this->session->set_userdata('nama',$i->post('nama'));
			$data = array(	'id_user'			=> $id_user,
							'nama'				=> $i->post('nama'),
							'email'				=> $i->post('email'),
						);
			$this->user_model->edit($data);
			$this->session->set_flashdata('sukses', 'Data '.$user->nama.' telah diupdate');
			redirect(base_url('admin/akun'),'refresh');
		}}
		// End masuk database
		$data = array(	'title'		=> 'Profil Akun Anda: '.$this->session->userdata('nama'),
						'user'		=> $user,
						'isi'		=> 'admin/akun/list'
					);
		$this->load->view('admin/layout/wrapper', $data, FALSE);
	}

	// Ganti Password
	public function password()
	{
		$id_user 	= $this->session->userdata('id_user');
		$user 		= $this->user_model->detail($id_user);

		// Validasi
		$valid = $this->form_validation;

		$valid->set_rules('current_password','Password saat ini','required|trim',
			array(	'required'		=> '%s harus diisi'));

		$valid->set_rules('new_password','Password baru','required|trim|min_length[6]|max_length[32]',
			array(	'required'		=> '%s harus diisi',
					'min_length'	=> '%s minimal 6 karakter',
					'max_length'	=> '%s maksimal 32 karakter'));

		$valid->set_rules('passconf', 'Konfirmasi password', 'required|matches[new_password]',
			array(	'required'	=> '%s harus diisi',
					'matches'	=> '%s tidak cocok. Pastikan password Anda sama'));

		if($valid->run()===FALSE) {
		// End validasi

		$data = array(	'title'		=> 'Password '.$this->session->userdata('nama'),
						'user'		=> $user,
						'isi'		=> 'admin/akun/password'
					);
		$this->load->view('admin/layout/wrapper', $data, FALSE);
		// Masuk database
		}else{
			$current_password = $this->input->post('current_password');
            $new_password = $this->input->post('new_password');
                if ($current_password == $new_password) {
                    $this->session->set_flashdata('warning', 'Password baru tidak bolah sama dengan password saat ini!');
					redirect(base_url('admin/akun/password'),'refresh');
                } 
				else {
					// password oke
					$i = $this->input;
					$this->session->set_userdata('nama',$i->post('nama'));
					$data = array(	'id_user'			=> $id_user,
									'password'			=> sha1($i->post('new_password')),
									'password_hint'		=> $i->post('new_password')
								);
					$this->user_model->edit($data);
					$this->session->set_flashdata('sukses', 'Password '.$user->nama.' telah diganti');
					redirect(base_url('admin/akun/password'),'refresh');
				}
			
		}
		
	}
}

/* End of file Akun.php */
/* Location: ./application/controllers/admin/Akun.php */