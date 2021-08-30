<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Berita_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	// Listing data
	public function listing() {
		$this->db->select('berita.*, users.nama');
		$this->db->from('berita');
		// Join 
		$this->db->join('users','users.id_user = berita.id_user','LEFT');
		// End join
		$this->db->order_by('id_berita','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data
	public function dasbor() {
		$this->db->select('berita.*, users.nama');
		$this->db->from('berita');
		// Join 
		$this->db->join('users','users.id_user = berita.id_user','LEFT');
		// End join
		$this->db->order_by('id_berita','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data
	public function bulanan($bulan) {
		$this->db->select('berita.*, users.nama');
		$this->db->from('berita');
		// Join
		$this->db->join('users','users.id_user = berita.id_user','LEFT');
		// End join
		$this->db->where('DATE_FORMAT(berita.tanggal,"%Y-%m")',$bulan);
		$this->db->order_by('hits','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data
	public function tahunan($tahun) {
		$this->db->select('berita.*, users.nama');
		$this->db->from('berita');
		// Join
		$this->db->join('users','users.id_user = berita.id_user','LEFT');
		// End join
		$this->db->where('DATE_FORMAT(berita.tanggal,"%Y")',$tahun);
		$this->db->order_by('hits','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Kunjungan berita teramai
	public function populer()
	{
		$this->db->select('*');
		$this->db->from('berita');
		$this->db->where(array(	'berita.status_berita'	=> 'Publish'));
		$this->db->order_by('hits','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Kunjungan berita teramai
	public function hits()
	{
		$this->db->select('*');
		$this->db->from('berita');
		$this->db->order_by('hits','DESC');
		$this->db->limit(100);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing status admin
	public function status_admin($status_berita) {
		$this->db->select('berita.*, users.nama');
		$this->db->from('berita');
		// Join dg 2 tabel
		$this->db->join('users','users.id_user = berita.id_user','LEFT');
		// End join
		$this->db->where(array(	'berita.status_berita'	=> $status_berita));
		$this->db->order_by('id_berita','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing jenis admin
	public function jenis_admin($jenis_berita) {
		$this->db->select('berita.*, users.nama');
		$this->db->from('berita');
		// Join 
		$this->db->join('users','users.id_user = berita.id_user','LEFT');
		// End join
		$this->db->where(array(	'berita.jenis_berita'	=> $jenis_berita));
		$this->db->order_by('id_berita','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing author
	public function author_admin($id_user) {
		$this->db->select('berita.*, users.nama');
		$this->db->from('berita');
		// Join dg 2 tabel
		$this->db->join('users','users.id_user = berita.id_user','LEFT');
		// End join
		$this->db->where(array(	'berita.id_user'	=> $id_user));
		$this->db->order_by('id_berita','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	
	// Listing berita
	public function berita($limit,$start) {
		$this->db->select('berita.*, 
					users.nama
					');
		$this->db->from('berita');
		// Join 
		$this->db->join('users','users.id_user = berita.id_user','LEFT');
		// End join
		$this->db->where(array(	'berita.status_berita'	=> 'Publish',
								'berita.jenis_berita'	=> 'Berita'));
		$this->db->order_by('berita.tanggal_publish','DESC');
		$this->db->limit($limit,$start);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing total
	public function total() {
		$this->db->select('berita.*, users.nama');
		$this->db->from('berita');
		// Join dg 2 tabel
		$this->db->join('users','users.id_user = berita.id_user','LEFT');
		// End join
		$this->db->where(array(	'berita.status_berita'	=> 'Publish',
								'berita.jenis_berita'	=> 'Berita'));
		$this->db->order_by('id_berita','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing berita
	public function search($keywords,$limit,$start) {
		$this->db->select('berita.*, 
					users.nama
					');
		$this->db->from('berita');
		// Join 
		$this->db->join('users','users.id_user = berita.id_user','LEFT');
		// End join
		$this->db->where(array(	'berita.status_berita'	=> 'Publish',
								'berita.jenis_berita'	=> 'Berita'));
		$this->db->like('berita.judul_berita',$keywords);
		$this->db->or_like('berita.isi',$keywords);
		$this->db->group_by('id_berita');
		$this->db->order_by('id_berita','DESC');
		$this->db->limit($limit,$start);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing total
	public function total_search($keywords) {
		$this->db->select('berita.*, users.nama');
		$this->db->from('berita');
		// Join dg 2 tabel
		
		$this->db->join('users','users.id_user = berita.id_user','LEFT');
		// End join
		$this->db->where(array(	'berita.status_berita'	=> 'Publish',
								'berita.jenis_berita'	=> 'Berita'));
		$this->db->like('berita.judul_berita',$keywords);
		$this->db->or_like('berita.isi',$keywords);
		$this->db->group_by('id_berita');
		$this->db->order_by('id_berita','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing read
	public function listing_read() {
		$this->db->select('berita.*, users.nama');
		$this->db->from('berita');
		// Join dg 2 tabel
		$this->db->join('users','users.id_user = berita.id_user','LEFT');
		// End join
		$this->db->where(array(	'berita.status_berita'	=> 'Publish',
								'berita.jenis_berita'	=> 'Berita'));
		$this->db->order_by('id_berita','DESC');
		$this->db->limit(10);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing kampung
	// public function listing_kampung() {
	// 	$this->db->select('berita.*, users.nama');
	// 	$this->db->from('berita');
	// 	// Join dg 2 tabel
	// 	$this->db->join('users','users.id_user = berita.id_user','LEFT');
	// 	// End join
	// 	$this->db->where(array(	'berita.status_berita'	=> 'Publish',
	// 							'berita.jenis_berita'	=> 'Kampung'));
	// 	$this->db->order_by('id_berita','DESC');
	// 	$this->db->limit(20);
	// 	$query = $this->db->get();
	// 	return $query->result();
	// }

	// Listing headline
	public function listing_headline() {
		$this->db->select('berita.*, 
					users.nama
					');
		$this->db->from('berita');
		// Join dg 2 tabel
		$this->db->join('users','users.id_user = berita.id_user','LEFT');
		// End join
		$this->db->where(array(	'berita.status_berita'	=> 'Publish',
								'berita.jenis_berita'	=> 'Headline'));
		$this->db->order_by('id_berita','DESC');
		$this->db->limit(9);
		$query = $this->db->get();
		return $query->result();
	}

	// Read data
	public function read($slug_berita) {
		$this->db->select('berita.*, 
					users.nama
					');
		$this->db->from('berita');
		// Join
		$this->db->join('users','users.id_user = berita.id_user','LEFT');
		$this->db->where('slug_berita',$slug_berita);
		$this->db->order_by('id_berita','DESC');
		$query = $this->db->get();
		return $query->row();
	}

	// Detail data
	public function detail($id_berita) {
		$this->db->select('*');
		$this->db->from('berita');
		$this->db->where('id_berita',$id_berita);
		$this->db->order_by('id_berita','DESC');
		$query = $this->db->get();
		return $query->row();
	}

	// Tambah
	public function tambah($data) {
		$this->db->insert('berita',$data);
	}

	// Edit
	public function edit($data) {
		$this->db->where('id_berita',$data['id_berita']);
		$this->db->update('berita',$data);
	}

	// Edit hit
	public function update_hit($hit) {
		$this->db->where('id_berita',$hit['id_berita']);
		$this->db->update('berita',$hit);
	}

	// Delete
	public function delete($data) {
		$this->db->where('id_berita',$data['id_berita']);
		$this->db->delete('berita',$data);
	}
}

/* End of file Berita_model.php */
/* Location: ./application/models/Berita_model.php */