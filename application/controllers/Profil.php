<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profil extends CI_Controller {

	// Database
	public function __construct()
	{
		parent::__construct();
        $this->load->model('konfigurasi_model');
	}

	// Main page Profil
	public function index()	{
		$site 			= $this->konfigurasi_model->listing();

		$data = array(	'title'		=> 'Profil '.$site->namaweb.' | '.$site->tagline,
						'deskripsi'	=> 'Profil '.$site->namaweb.' | '.$site->tagline.' '.$site->profil,
						'site'		=> $site,
						'isi'		=> 'profil/list');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

}

/* End of file Contact.php */
/* Location: ./application/controllers/Kontak.php */