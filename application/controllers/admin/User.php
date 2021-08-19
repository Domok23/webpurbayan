<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	// Load model
	public function __construct()
	{
		parent::__construct();
		// Tambahkan proteksi halaman
		$url_pengalihan = str_replace('index.php/', '', current_url());
		$pengalihan 	= $this->session->set_userdata('pengalihan',$url_pengalihan);
		// Ambil check login dari simple_login
		$this->simple_login->check_login($pengalihan);
		$this->load->model('user_model');
		check_admin();
	}

	// Halaman utama
	public function index()
	{
		// Ambil data user
		$user 	= $this->user_model->listing();
		$total 	= $this->user_model->total();

		$data = array(	'title'		=> 'Admin & Wilayah ('.$total->total.' data)',
						'user'		=> $user,
						'isi'		=> 'admin/user/list'
					);
		$this->load->view('admin/layout/wrapper', $data, FALSE);
	}

	// Tambah
	public function tambah()
	{
		$user 	= $this->user_model->listing();
		// Validasi
		$validasi 	= $this->form_validation;

		$validasi->set_rules('nama','Nama User','required',
			array(	'required'		=> '%s harus diisi'));

		$validasi->set_rules('email','Email Pengguna','required|valid_email|is_unique[users.email]',
			array(	'required'	=> '%s harus diisi',
					'valid_email'	=> '%s tidak valid. Masukkan email yang benar.',
					'is_unique'		=> 'email sudah ada. Buat email baru'));

		$validasi->set_rules('password','Password','required|trim|min_length[6]|max_length[32]',
			array(	'required'		=> '%s harus diisi',
					'min_length'	=> '%s minimal 6 karakter',
					'max_length'	=> '%s maksimal 32 karakter'));

		if($validasi->run()===FALSE) {
		// End validasi

		$data = array(	'title'		=> 'Tambah User Baru',
						'user'		=> $user,
						'isi'		=> 'admin/user/tambah'
					);
		$this->load->view('admin/layout/wrapper', $data, FALSE);
		// Masuk ke database
		}else{
			$inp = $this->input;

			$data = array(	'id_user'		=> $inp->post('id_user'),
							'nama'			=> $inp->post('nama'),
							'email'			=> $inp->post('email'),
							'password'		=> sha1($inp->post('password')),
							'akses_level'	=> $inp->post('akses_level'),
							'keterangan'	=> $inp->post('keterangan'),
							'tanggal_post'	=> date('Y-m-d H:i:s')
						);
			$this->user_model->tambah($data);
			$this->session->set_flashdata('sukses', 'Data telah ditambahkan');
			redirect(base_url('admin/user'),'refresh');
		}
		// End masuk database
	}

	// Edit
	public function edit($id_user)
	{
		// Ambil data user yg akan diedit
		$user 		= $this->user_model->detail($id_user);

		// Validasi
		$validasi = $this->form_validation;

		$validasi->set_rules('nama','Nama Lengkap','required',
			array(	'required' => '%s harus diisi'));

		$validasi->set_rules('akses_level','Akses Level','required',
			array(	'required'	=> '%s harus diisi'));

		if($validasi->run()===FALSE) {
		// End validasi

		$data = array(	'title'		=> 'Edit User: '.$user->nama,
						'user'		=> $user,
						'isi'		=> 'admin/user/edit'
					);
		$this->load->view('admin/layout/wrapper', $data, FALSE);
		// Masuk ke database
		}else{
			$inp = $this->input;

			$data = array(	'id_user'		=> $id_user,
							'nama'			=> $inp->post('nama'),
							'email'			=> $inp->post('email'),
							'akses_level'	=> $inp->post('akses_level'),
							'keterangan'	=> $inp->post('keterangan'),
							'tanggal_post'	=> date('Y-m-d H:i:s')
						);
			$this->user_model->edit($data);
			$this->session->set_flashdata('sukses', 'Data telah diupdate');
			redirect(base_url('admin/user'),'refresh');
		}
		// End masuk database
	}

	// Proses
	public function proses()
	{
		$id_usernya	= $this->input->post('id_user');
		$pengalihan = $this->input->post('pengalihan');

		// Check id_user kosong atau tidak
		if($id_usernya == "") {
			$this->session->set_flashdata('warning', 'Anda belum memilih data');
			redirect($pengalihan,'refresh');
		}

		// Proses hapus jika klik tombol "hapus", jika ga ada yg kosong
		if(isset($_POST['hapus'])) {
			// Proses hapus diloop
			for($i=0;$i<sizeof($id_usernya);$i++)
			{
				$id_user = $id_usernya[$i];
				$data = array(	'id_user'		=> $id_user);
				$this->user_model->delete($data);
			}
			// End proses hapus
			$this->session->set_flashdata('sukses', 'Data telah dihapus');
			redirect($pengalihan,'refresh');
		}
	}

	// Delete
	public function delete($id_user)
	{
		$data = array('id_user' => $id_user);
		$this->user_model->delete($data);
		$this->session->set_flashdata('sukses', 'Data telah dihapus');
		redirect(base_url('admin/user'),'refresh');
	}
}

/* End of file User.php */
/* Location: ./application/controllers/admin/User.php */