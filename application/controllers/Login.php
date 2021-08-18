<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	// load model
	public function __construct()
	{
		parent::__construct();
		$this->load->model('user_model');
		
		
	}

	// Login page
	public function index()
	{
		check_already_login();
		// Validasi input
		$this->form_validation->set_rules('email','Email','required',
			array(	'required'	=> '%s harus diisi'));

		$this->form_validation->set_rules('password','Password','required',
			array(	'required'	=> '%s harus diisi'));

		if($this->form_validation->run()) {
			$email 	= strip_tags($this->input->post('email'));
			$password 	= strip_tags($this->input->post('password'));
			// Proses ke simple login
			$this->simple_login->login($email,$password);
		}
		// End validasi

		$data = array(	'title'		=> 'Login Admin');
		$this->load->view('login/list', $data, FALSE);
	}

	// Logout
	public function logout()
	{
		// Panggil library logout
		$this->simple_login->logout();
	}

}

/* End of file Login.php */
/* Location: ./application/controllers/Login.php */