<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Simple_login
{
	protected $CI;

	public function __construct()
	{
        $this->CI =& get_instance();
		// load user model
		$this->CI->load->model('user_model');
	}

	// Fungsi login
	public function login()
	{
		// Check user yang login
		$user_login = $this->CI->user_model->login();
		// Kalau ada, maka masuk ke halaman dashboard
		if($user_login) {
			$id_user 		= $user_login->id_user;
			$email 			= $user_login->email;
			$nama 			= $user_login->nama;
			$akses_level 	= $user_login->akses_level;
			// Create session utk login
			$this->CI->session->set_userdata('id_user',$id_user);
			$this->CI->session->set_userdata('email',$email);
			$this->CI->session->set_userdata('nama',$nama);
			$this->CI->session->set_userdata('akses_level',$akses_level);
			// Lalu redirect masuk ke halaman dashboard
			$this->CI->session->set_flashdata('sukses', 'Anda berhasil login');
			// Periksa user mengakses halaman mana sebelumnya
			$this->CI->session->userdata('pengalihan');
			redirect(base_url('admin/dasbor'),'refresh');
			
		}else{
			// Kalau ga ada user yg cocok, suruh login lagi
			$this->CI->session->set_flashdata('warning', 'Email/password salah');
			redirect(base_url('login'),'refresh');
		}
		return $user_login;
	}

	// Fungsi logout
	public function logout()
	{
		// Meng-unset semua session
		$this->CI->session->unset_userdata('id_user');
		$this->CI->session->unset_userdata('email');
		$this->CI->session->unset_userdata('nama');
		$this->CI->session->unset_userdata('akses_level');
		$this->CI->session->unset_userdata('pengalihan');
		session_destroy();
		// Redirect ke halaman login
		$this->CI->session->set_flashdata('sukses', 'Anda berhasil logout');
		redirect(base_url('login'),'refresh');
	}

	// Fungsi check login: seseorang sudah login atau belum
	public function check_login()
	{
		// Check status login (kita ambil status email)
		if($this->CI->session->userdata('email') == "" &&
			$this->CI->session->userdata('akses_level') == "") 
			{
				$this->CI->session->set_flashdata('warning', 'Anda belum login');
				redirect(base_url('login'),'refresh');
			}
	}
}

/* End of file Simple_login.php */
/* Location: ./application/libraries/Simple_login.php */
