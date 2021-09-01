<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('konfigurasi_model');
		$this->load->model('berita_model');
		$this->load->model('kampung_model');
		$this->load->model('galeri_model');
		$this->load->model('umkm_model');
	}

	public function index()
	{
		$site 			= $this->konfigurasi_model->listing();
		$slider 		= $this->galeri_model->slider();
		$headline		= $this->berita_model->listing_headline();
		$kategori_galeri= $this->galeri_model->kategori();
		$kampung		= $this->nav_model->nav_kampung();
		$umkm		= $this->nav_model->nav_umkm();

		// Berita dan paginasi
		$this->load->library('pagination');
		$config['base_url'] 		= base_url().'home/index/';
		$config['total_rows'] 		= count($this->berita_model->total());
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
		$config['per_page'] 		= 8;
		$config['first_url'] 		= base_url().'home/';
		$this->pagination->initialize($config); 
		$page 		= ($this->uri->segment(3)) ? ($this->uri->segment(3) - 1) * $config['per_page'] : 0;
		$berita 	= $this->berita_model->berita($config['per_page'], $page);

		$data = array(	'title'				=> $site->namaweb.' - '.$site->tagline,
						'site'				=> $site,
						'slider'			=> $slider,
						'headline'			=> $headline,
						'pagin' 			=> $this->pagination->create_links(),
						'berita'			=> $berita,
						'kategori_galeri'	=> $kategori_galeri,
						'kampung'			=> $kampung,
						'umkm'				=> $umkm,
						'isi'				=> 'home/list'
			);
		$this->load->view('layout/wrapper', $data);
	}

	// Oops
	public function oops()
	{
		$site 			= $this->konfigurasi_model->listing();

		$data = array(	'title'				=> 'Not found',
						'site'				=> $site,
						'isi'				=> 'home/oops'
			);
		$this->load->view('layout/wrapper', $data);
	}
}

/* End of file Home.php */
/* Location: ./application/controllers/Home.php */