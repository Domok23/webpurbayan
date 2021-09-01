<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Umkm extends CI_Controller {

	// Load database
	public function __construct()
	{
		parent::__construct();
		$this->load->model('umkm_model');
	}

	// Main page
	public function index()	{
		$site 		= $this->konfigurasi_model->listing();
		$populer	= $this->umkm_model->populer();
		
		// umkm dan paginasi
		$this->load->library('pagination');
		$config['base_url'] 		= base_url().'umkm/index/';
		$config['total_rows'] 		= count(array($this->umkm_model->total()));
		$config['use_page_numbers'] = TRUE;
		$config['num_links'] 		= 5;
		$config['uri_segment'] 		= 3;
		$config['full_tag_open'] 	= '<ul class="pagination">';
        $config['full_tag_close'] 	= '</ul>';
        $config['first_link'] 		= '&laquo; Awal';
        $config['first_tag_open'] 	= '<li class="prev page">';
        $config['first_tag_close'] 	= '</li>';

        $config['last_link'] 		= 'Akhir &raquo;';
        $config['last_tag_open'] 	= '<li class="next page">';
        $config['last_tag_close'] 	= '</li>';

        $config['next_link'] 		= 'Selanjutnya &rarr;';
        $config['next_tag_open'] 	= '<li class="next page">';
        $config['next_tag_close'] 	= '</li>';

        $config['prev_link'] 		= '&larr; Sebelumnya';
        $config['prev_tag_open'] 	= '<li class="prev page">';
        $config['prev_tag_close'] 	= '</li>';

        $config['cur_tag_open'] 	= '<li class="active"><a href="">';
        $config['cur_tag_close'] 	= '</a></li>';

        $config['num_tag_open'] 	= '<li class="page">';
        $config['num_tag_close'] 	= '</li>';
		$config['per_page'] 		= 10;
		$config['first_url'] 		= base_url().'umkm/';
		$this->pagination->initialize($config); 
		$page 		= ($this->uri->segment(3)) ? ($this->uri->segment(3) - 1) * $config['per_page'] : 0;
		$umkm 	= $this->umkm_model->umkm($config['per_page'], $page);

		$data = array(	'title'		=> 'UMKM - '.$site->namaweb,
						'deskripsi'	=> 'UMKM - '.$site->namaweb,
						'keywords'	=> 'UMKM - '.$site->namaweb,
						'pagin' 	=> $this->pagination->create_links(),
						'umkm'	=> $umkm,
						'site'		=> $site,
						'populer'	=> $populer,
						'isi'		=> 'umkm/list');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	// Search
	public function cari()
	{
		$this->load->helper('security');
		$s 			= $this->input->post('s');
		$keyword 	= xss_clean($s);
		$keywords	= encode_php_tags($keyword);

		if($keywords!="") {
			redirect(base_url('umkm/search?s='.$keywords),'refresh');
		}else{
			redirect(base_url('umkm'),'refresh');
		}
	}

	// Search
	public function search()
	{
		$this->load->helper('security');
		$keyword 	= xss_clean($_GET['s']);
		$keywords	= encode_php_tags($keyword);
		$populer	= $this->umkm_model->populer();

		if($keywords=="") {
			redirect(base_url('umkm'),'refresh');
		}

		$site 		= $this->konfigurasi_model->listing();
		
		// umkm dan paginasi
		$this->load->library('pagination');
		$config['base_url'] 		= base_url().'umkm/search?s='.$keywords.'/index/';
		$config['total_rows'] 		= count(array($this->umkm_model->total_search($keywords)));
		$config['use_page_numbers'] = TRUE;
		$config['num_links'] 		= 5;
		$config['uri_segment'] 		= 3;
		$config['full_tag_open'] 	= '<ul class="pagination">';
        $config['full_tag_close'] 	= '</ul>';
        $config['first_link'] 		= '&laquo; Awal';
        $config['first_tag_open'] 	= '<li class="prev page">';
        $config['first_tag_close'] 	= '</li>';

        $config['last_link'] 		= 'Akhir &raquo;';
        $config['last_tag_open'] 	= '<li class="next page">';
        $config['last_tag_close'] 	= '</li>';

        $config['next_link'] 		= 'Selanjutnya &rarr;';
        $config['next_tag_open'] 	= '<li class="next page">';
        $config['next_tag_close'] 	= '</li>';

        $config['prev_link'] 		= '&larr; Sebelumnya';
        $config['prev_tag_open'] 	= '<li class="prev page">';
        $config['prev_tag_close'] 	= '</li>';

        $config['cur_tag_open'] 	= '<li class="active"><a href="">';
        $config['cur_tag_close'] 	= '</a></li>';

        $config['num_tag_open'] 	= '<li class="page">';
        $config['num_tag_close'] 	= '</li>';
		$config['per_page'] 		= 10;
		$config['first_url'] 		= base_url().'umkm/search?s='.$keywords;
		$this->pagination->initialize($config); 
		$page 		= ($this->uri->segment(3)) ? ($this->uri->segment(3) - 1) * $config['per_page'] : 0;
		$umkm 	= $this->umkm_model->search($keywords,$config['per_page'], $page);

		$data = array(	'title'		=> 'Hasil pencarian: '.$keywords,
						'deskripsi'	=> 'UMKM - '.$site->namaweb,
						'keywords'	=> 'UMKM - '.$site->namaweb,
						'pagin' 	=> $this->pagination->create_links(),
						'umkm'	=> $umkm,
						'site'		=> $site,
						'populer'	=> $populer,
						'isi'		=> 'umkm/list');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	// Read umkm detail
	public function read($slug_umkm)	{
		$site 		= $this->konfigurasi_model->listing();
		$umkm 	= $this->umkm_model->read($slug_umkm);
		$listing 	= $this->umkm_model->listing_read();

		if(count(array($umkm)) < 1) {
			redirect(base_url('oops'),'refresh');
		}

		// Update hit
		// if($umkm) {
		// 	$newhits 	= $umkm->hits + 1;
		// 	$hit 		= array(	'id_umkm'	=> $umkm->id_umkm,
		// 							'hits'			=> $newhits);
		// 	$this->umkm_model->update_hit($hit);
		// }
		//  End update hit

		$data = array(	'title'		=> $umkm->judul_umkm,
						'deskripsi'	=> $umkm->judul_umkm,
						'keywords'	=> $umkm->judul_umkm,
						'umkm'	=> $umkm,
						'listing'	=> $listing,
						'site'		=> $site,
						'isi'		=> 'umkm/read');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	// about 'umkm' umkm detail
	// public function umkm($slug_umkm)	{
	// 	$site 		= $this->konfigurasi_model->listing();
	// 	$umkm 	= $this->umkm_model->read($slug_umkm);
	// 	$umkm 	= $this->nav_model->nav_umkm();

	// 	if(count(array($umkm)) < 1) {
	// 		redirect(base_url('oops'),'refresh');
	// 	}

	// 	$listing 	= $this->umkm_model->listing_umkm();

	// 	$data = array(	'title'		=> $umkm->judul_umkm,
	// 					'deskripsi'	=> $umkm->judul_umkm,
	// 					'keywords'	=> $umkm->judul_umkm,
	// 					'umkm'	=> $umkm,
	// 					'site'		=> $site,
	// 					'listing'	=> $umkm,
	// 					'isi'		=> 'umkm/umkm');
	// 	$this->load->view('layout/wrapper', $data, FALSE);
	// }

}

/* End of file Umkm.php */
/* Location: ./application/controllers/Umkm.php */