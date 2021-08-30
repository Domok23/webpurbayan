<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Nav_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}
	
	// Menu utama
	public function nav_menu() {
		$this->db->select('*');
		$this->db->from('menu');
		$this->db->order_by('urutan','ASC');
		$query = $this->db->get();
		return $query->result();
	}

	// Sub menu
	public function nav_sub_menu($id_menu) {
		$this->db->select('*');
		$this->db->from('sub_menu');
		$this->db->where('id_menu',$id_menu);
		$this->db->order_by('urutan','ASC');
		$query = $this->db->get();
		return $query->result();
	}
	

	// Navigasi profil
	// public function nav_profil() {
	// 	$this->db->select('*');
	// 	$this->db->from('berita');
	// 	$this->db->where(array(	'jenis_berita'	=> 'Profil',
	// 							'status_berita'	=> 'Publish'));
	// 	$this->db->order_by('urutan','ASC');
	// 	$query = $this->db->get();
	// 	return $query->result();
	// }
	
	// Navigasi berita
	public function nav_berita() {
		$this->db->select('*');
		$this->db->from('berita');
		$this->db->where(array(	'jenis_berita'	=> 'Berita',
								'status_berita'	=> 'Publish'));
		$this->db->order_by('urutan','ASC');
		$query = $this->db->get();
		return $query->result();
	}

	// Navigasi kampung
	public function nav_kampung() {
		$this->db->select('*');
		$this->db->from('kampung');
		$this->db->where(array(	'jenis_kampung'	=> 'Kampung',
								'status_kampung'	=> 'Publish'));
		$this->db->order_by('urutan','ASC');
		$query = $this->db->get();
		return $query->result();
	}

	// Navigasi topik
	public function nav_topik() {
		$this->db->select('*');
		$this->db->from('berita');
		$this->db->where(array(	'jenis_berita'	=> 'Topik Prioritas',
								'status_berita'	=> 'Publish'));
		$this->db->order_by('urutan','ASC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data slider
	public function nav_galeri() {
		$this->db->select('galeri.*, kategori_galeri.nama_kategori_galeri, kategori_galeri.slug_kategori_galeri');
		$this->db->from('galeri');
		// Join dg 2 tabel
		$this->db->join('kategori_galeri','kategori_galeri.id_kategori_galeri = galeri.id_kategori_galeri','LEFT');
		// End join
		$this->db->where('jenis_galeri','Galeri');
		$this->db->group_by('galeri.id_kategori_galeri');
		$this->db->order_by('id_galeri','DESC');
		$this->db->limit(8);
		$query = $this->db->get();
		return $query->result();
	}


	// Listing data
	public function nav_kategori_statistik() {
		$this->db->select('kategori_statistik.*, 
							statistik.id_statistik');
		$this->db->from('kategori_statistik');
		// Join dg 2 tabel
		$this->db->join('statistik','statistik.id_kategori_statistik = kategori_statistik.id_kategori_statistik');
		// End join
		$this->db->where('statistik.status_statistik','Publish');
		$this->db->group_by('kategori_statistik.id_kategori_statistik');
		$this->db->order_by('kategori_statistik.urutan','ASC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data
	public function nav_tahun_kategori_statistik($id_kategori_statistik) {
		$this->db->select('*');
		$this->db->from('statistik');
		$this->db->where(array(	'status_statistik'		=> 'Publish',
								'id_kategori_statistik'	=> $id_kategori_statistik));
		$this->db->group_by('tahun');
		$this->db->order_by('tahun','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data
	public function nav_bulan_kategori_statistik($id_kategori_statistik,$tahun) {
		$this->db->select('*');
		$this->db->from('statistik');
		$this->db->where(array(	'status_statistik'		=> 'Publish',
								'tahun'					=> $tahun,
								'id_kategori_statistik'	=> $id_kategori_statistik));
		$this->db->where('bulan <>','');
		$this->db->group_by('bulan');
		$this->db->order_by('id_statistik','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data
	public function nav_statistik() {
		$this->db->select('statistik.*, kategori_statistik.nama_kategori_statistik, users.first_name');
		$this->db->from('statistik');
		// Join dg 2 tabel
		$this->db->join('kategori_statistik','kategori_statistik.id_kategori_statistik = statistik.id_kategori_statistik','LEFT');
		$this->db->join('users','users.id = statistik.id_user','LEFT');
		// End join
		$this->db->where('statistik.status_statistik','Publish');
		$this->db->limit(10);
		$this->db->order_by('id_statistik','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data
	public function nav_tahun_statistik() {
		$this->db->select('*');
		$this->db->from('statistik');
		$this->db->where('status_statistik','Publish');
		$this->db->limit(10);
		$this->db->group_by('tahun');
		$this->db->order_by('tahun','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data
	public function nav_bulan_statistik($thn) {
		$this->db->select('*');
		$this->db->from('statistik');
		$this->db->where('status_statistik','Publish');
		$this->db->where('tahun',$thn);
		$this->db->where('bulan <>','');
		$this->db->limit(12);
		$this->db->group_by('bulan');
		$this->db->order_by('tahun','DESC');
		$query = $this->db->get();
		return $query->result();
	}

}

/* End of file Nav_model.php */
/* Location: ./application/models/Nav_model.php */