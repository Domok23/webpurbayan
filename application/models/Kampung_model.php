<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kampung_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	// Listing data
	public function listing() {
		$this->db->select('kampung.*, users.nama');
		$this->db->from('kampung');
		// Join 
		$this->db->join('users','users.id_user = kampung.id_user','LEFT');
		// End join
		$this->db->order_by('id_kampung','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data
	public function dasbor() {
		$this->db->select('kampung.*, users.nama');
		$this->db->from('kampung');
		// Join 
		$this->db->join('users','users.id_user = kampung.id_user','LEFT');
		// End join
		$this->db->order_by('id_kampung','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data
	public function bulanan($bulan) {
		$this->db->select('kampung.*, users.nama');
		$this->db->from('kampung');
		// Join
		$this->db->join('users','users.id_user = kampung.id_user','LEFT');
		// End join
		$this->db->where('DATE_FORMAT(kampung.tanggal,"%Y-%m")',$bulan);
		$this->db->order_by('hits','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data
	public function tahunan($tahun) {
		$this->db->select('kampung.*, users.nama');
		$this->db->from('kampung');
		// Join
		$this->db->join('users','users.id_user = kampung.id_user','LEFT');
		// End join
		$this->db->where('DATE_FORMAT(kampung.tanggal,"%Y")',$tahun);
		$this->db->order_by('hits','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Kunjungan kampung teramai
	public function populer()
	{
		$this->db->select('*');
		$this->db->from('kampung');
		$this->db->where(array(	'kampung.status_kampung'	=> 'Publish'));
		$this->db->order_by('hits','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Kunjungan kampung teramai
	public function hits()
	{
		$this->db->select('*');
		$this->db->from('kampung');
		$this->db->order_by('hits','DESC');
		$this->db->limit(100);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing status admin
	public function status_admin($status_kampung) {
		$this->db->select('kampung.*, users.nama');
		$this->db->from('kampung');
		// Join dg 2 tabel
		$this->db->join('users','users.id_user = kampung.id_user','LEFT');
		// End join
		$this->db->where(array(	'kampung.status_kampung'	=> $status_kampung));
		$this->db->order_by('id_kampung','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing jenis admin
	public function jenis_admin($jenis_kampung) {
		$this->db->select('kampung.*, users.nama');
		$this->db->from('kampung');
		// Join 
		$this->db->join('users','users.id_user = kampung.id_user','LEFT');
		// End join
		$this->db->where(array(	'kampung.jenis_kampung'	=> $jenis_kampung));
		$this->db->order_by('id_kampung','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing author
	public function author_admin($id_user) {
		$this->db->select('kampung.*, users.nama');
		$this->db->from('kampung');
		// Join dg 2 tabel
		$this->db->join('users','users.id_user = kampung.id_user','LEFT');
		// End join
		$this->db->where(array(	'kampung.id_user'	=> $id_user));
		$this->db->order_by('id_kampung','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	
	// Listing kampung
	public function kampung($limit,$start) {
		$this->db->select('kampung.*, 
					users.nama
					');
		$this->db->from('kampung');
		// Join 
		$this->db->join('users','users.id_user = kampung.id_user','LEFT');
		// End join
		$this->db->where(array(	'kampung.status_kampung'	=> 'Publish',
								'kampung.jenis_kampung'	=> 'Kampung'));
		$this->db->order_by('kampung.tanggal_publish','DESC');
		$this->db->limit($limit,$start);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing total
	public function total() {
		$this->db->select('kampung.*, users.nama');
		$this->db->from('kampung');
		// Join dg 2 tabel
		$this->db->join('users','users.id_user = kampung.id_user','LEFT');
		// End join
		$this->db->where(array(	'kampung.status_kampung'	=> 'Publish',
								'kampung.jenis_kampung'	=> 'Kampung'));
		$this->db->order_by('id_kampung','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// search kampung
	public function search($keywords,$limit,$start) {
		$this->db->select('kampung.*, 
					users.nama
					');
		$this->db->from('kampung');
		// Join 
		$this->db->join('users','users.id_user = kampung.id_user','LEFT');
		// End join
		$this->db->where(array(	'kampung.status_kampung'	=> 'Publish',
								'kampung.jenis_kampung'	=> 'Kampung'));
		$this->db->like('kampung.judul_kampung',$keywords);
		$this->db->or_like('kampung.isi',$keywords);
		$this->db->group_by('id_kampung');
		$this->db->order_by('id_kampung','DESC');
		$this->db->limit($limit,$start);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing total
	public function total_search($keywords) {
		$this->db->select('kampung.*, users.nama');
		$this->db->from('kampung');
		// Join dg 2 tabel
		
		$this->db->join('users','users.id_user = kampung.id_user','LEFT');
		// End join
		$this->db->where(array(	'kampung.status_kampung'	=> 'Publish',
								'kampung.jenis_kampung'	    => 'Kampung'));
		$this->db->like('kampung.judul_kampung',$keywords);
		$this->db->or_like('kampung.isi',$keywords);
		$this->db->group_by('id_kampung');
		$this->db->order_by('id_kampung','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing read
	public function listing_read() {
		$this->db->select('kampung.*, users.nama');
		$this->db->from('kampung');
		// Join dg 2 tabel
		$this->db->join('users','users.id_user = kampung.id_user','LEFT');
		// End join
		$this->db->where(array(	'kampung.status_kampung'	=> 'Publish',
								'kampung.jenis_kampung'	=> 'Kampung'));
		$this->db->order_by('id_kampung','DESC');
		$this->db->limit(10);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing kampung
	public function listing_kampung() {
		$this->db->select('kampung.*, users.nama');
		$this->db->from('kampung');
		// Join dg 2 tabel
		$this->db->join('users','users.id_user = kampung.id_user','LEFT');
		// End join
		$this->db->where(array(	'kampung.status_kampung'	=> 'Publish',
								'kampung.jenis_kampung'	=> 'Kampung'));
		$this->db->order_by('id_kampung','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing headline
	public function listing_headline() {
		$this->db->select('kampung.*, 
					users.nama
					');
		$this->db->from('kampung');
		// Join dg 2 tabel
		$this->db->join('users','users.id_user = kampung.id_user','LEFT');
		// End join
		$this->db->where(array(	'kampung.status_kampung'	=> 'Publish',
								'kampung.jenis_kampung'	=> 'Headline Kampung'));
		$this->db->order_by('id_kampung','DESC');
		$this->db->limit(9);
		$query = $this->db->get();
		return $query->result();
	}


	// Read data
	public function read($slug_kampung) {
		$this->db->select('kampung.*, 
					users.nama
					');
		$this->db->from('kampung');
		// Join
		$this->db->join('users','users.id_user = kampung.id_user','LEFT');
		$this->db->where('slug_kampung',$slug_kampung);
		$this->db->order_by('id_kampung','DESC');
		$query = $this->db->get();
		return $query->row();
	}

	// Detail data
	public function detail($id_kampung) {
		$this->db->select('*');
		$this->db->from('kampung');
		$this->db->where('id_kampung',$id_kampung);
		$this->db->order_by('id_kampung','DESC');
		$query = $this->db->get();
		return $query->row();
	}

	// Tambah
	public function tambah($data) {
		$this->db->insert('kampung',$data);
	}

	// Edit
	public function edit($data) {
		$this->db->where('id_kampung',$data['id_kampung']);
		$this->db->update('kampung',$data);
	}

	// Edit hit
	public function update_hit($hit) {
		$this->db->where('id_kampung',$hit['id_kampung']);
		$this->db->update('kampung',$hit);
	}

	// Delete
	public function delete($data) {
		$this->db->where('id_kampung',$data['id_kampung']);
		$this->db->delete('kampung',$data);
	}
}

/* End of file Kampung_model.php */
/* Location: ./application/models/Kampung_model.php */