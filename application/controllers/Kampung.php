<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kampung extends CI_Controller {

	// Load database
	public function __construct()
	{
		parent::__construct();
		$this->load->model('kampung_model');
	}

	// Main page
	public function index()	{
		$site 		= $this->konfigurasi_model->listing();
		$populer	= $this->kampung_model->populer();
		
		// kampung dan paginasi
		$this->load->library('pagination');
		$config['base_url'] 		= base_url().'kampung/index/';
		$config['total_rows'] 		= count(array($this->kampung_model->total()));
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
		$config['first_url'] 		= base_url().'kampung/';
		$this->pagination->initialize($config); 
		$page 		= ($this->uri->segment(3)) ? ($this->uri->segment(3) - 1) * $config['per_page'] : 0;
		$kampung 	= $this->kampung_model->kampung($config['per_page'], $page);

		$data = array(	'title'		=> 'Kampung - '.$site->namaweb,
						'deskripsi'	=> 'Kampung - '.$site->namaweb,
						'keywords'	=> 'Kampung - '.$site->namaweb,
						'pagin' 	=> $this->pagination->create_links(),
						'kampung'	=> $kampung,
						'site'		=> $site,
						'populer'	=> $populer,
						'isi'		=> 'kampung/list');
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
			redirect(base_url('kampung/search?s='.$keywords),'refresh');
		}else{
			redirect(base_url('kampung'),'refresh');
		}
	}

	// Search
	public function search()
	{
		$this->load->helper('security');
		$keyword 	= xss_clean($_GET['s']);
		$keywords	= encode_php_tags($keyword);
		$populer	= $this->kampung_model->populer();

		if($keywords=="") {
			redirect(base_url('kampung'),'refresh');
		}

		$site 		= $this->konfigurasi_model->listing();
		
		// Kampung dan paginasi
		// Kampung dan paginasi
		$this->load->library('pagination');
		$config['base_url'] 		= base_url().'kampung/search?s='.$keywords.'/index/';
		$config['total_rows'] 		= count(array($this->kampung_model->total_search($keywords)));
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
		$config['first_url'] 		= base_url().'kampung/search?s='.$keywords;
		$this->pagination->initialize($config); 
		$page 		= ($this->uri->segment(3)) ? ($this->uri->segment(3) - 1) * $config['per_page'] : 0;
		$kampung 	= $this->kampung_model->search($keywords,$config['per_page'], $page);

		$data = array(	'title'		=> 'Hasil pencarian: '.$keywords,
						'deskripsi'	=> 'Kampung - '.$site->namaweb,
						'keywords'	=> 'Kampung - '.$site->namaweb,
						'pagin' 	=> $this->pagination->create_links(),
						'kampung'	=> $kampung,
						'site'		=> $site,
						'populer'	=> $populer,
						'isi'		=> 'kampung/list');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	// Read kampung detail
	public function read($slug_kampung)	{
		$site 		= $this->konfigurasi_model->listing();
		$kampung 	= $this->kampung_model->read($slug_kampung);
		$listing 	= $this->kampung_model->listing_read();

		if(count(array($kampung)) < 1) {
			redirect(base_url('oops'),'refresh');
		}

		// Update hit
		// if($kampung) {
		// 	$newhits 	= $kampung->hits + 1;
		// 	$hit 		= array(	'id_kampung'	=> $kampung->id_kampung,
		// 							'hits'			=> $newhits);
		// 	$this->kampung_model->update_hit($hit);
		// }
		//  End update hit

		$data = array(	'title'		=> $kampung->judul_kampung,
						'deskripsi'	=> $kampung->judul_kampung,
						'keywords'	=> $kampung->judul_kampung,
						'kampung'	=> $kampung,
						'listing'	=> $listing,
						'site'		=> $site,
						'isi'		=> 'kampung/read');
		$this->load->view('layout/wrapper', $data, FALSE);
	}

	// about 'kampung' kampung detail
	// public function kampung($slug_kampung)	{
	// 	$site 		= $this->konfigurasi_model->listing();
	// 	$kampung 	= $this->kampung_model->read($slug_kampung);
	// 	$kampung 	= $this->nav_model->nav_kampung();

	// 	if(count(array($kampung)) < 1) {
	// 		redirect(base_url('oops'),'refresh');
	// 	}

	// 	$listing 	= $this->kampung_model->listing_kampung();

	// 	$data = array(	'title'		=> $kampung->judul_kampung,
	// 					'deskripsi'	=> $kampung->judul_kampung,
	// 					'keywords'	=> $kampung->judul_kampung,
	// 					'kampung'	=> $kampung,
	// 					'site'		=> $site,
	// 					'listing'	=> $kampung,
	// 					'isi'		=> 'kampung/kampung');
	// 	$this->load->view('layout/wrapper', $data, FALSE);
	// }

}

/* End of file Kampung.php */
/* Location: ./application/controllers/Kampung.php */