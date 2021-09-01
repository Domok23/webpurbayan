<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Umkm_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	// Listing data
	public function listing() {
		$this->db->select('umkm.*, users.nama');
		$this->db->from('umkm');
		// Join 
		$this->db->join('users','users.id_user = umkm.id_user','LEFT');
		// End join
		$this->db->order_by('id_umkm','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data
	public function dasbor() {
		$this->db->select('umkm.*, users.nama');
		$this->db->from('umkm');
		// Join 
		$this->db->join('users','users.id_user = umkm.id_user','LEFT');
		// End join
		$this->db->order_by('id_umkm','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data
	public function bulanan($bulan) {
		$this->db->select('umkm.*, users.nama');
		$this->db->from('umkm');
		// Join
		$this->db->join('users','users.id_user = umkm.id_user','LEFT');
		// End join
		$this->db->where('DATE_FORMAT(umkm.tanggal,"%Y-%m")',$bulan);
		$this->db->order_by('hits','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing data
	public function tahunan($tahun) {
		$this->db->select('umkm.*, users.nama');
		$this->db->from('umkm');
		// Join
		$this->db->join('users','users.id_user = umkm.id_user','LEFT');
		// End join
		$this->db->where('DATE_FORMAT(umkm.tanggal,"%Y")',$tahun);
		$this->db->order_by('hits','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Kunjungan umkm teramai
	public function populer()
	{
		$this->db->select('*');
		$this->db->from('umkm');
		$this->db->where(array(	'umkm.status_umkm'	=> 'Publish'));
		$this->db->order_by('hits','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Kunjungan umkm teramai
	public function hits()
	{
		$this->db->select('*');
		$this->db->from('umkm');
		$this->db->order_by('hits','DESC');
		$this->db->limit(100);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing status admin
	public function status_admin($status_umkm) {
		$this->db->select('umkm.*, users.nama');
		$this->db->from('umkm');
		// Join dg 2 tabel
		$this->db->join('users','users.id_user = umkm.id_user','LEFT');
		// End join
		$this->db->where(array(	'umkm.status_umkm' => $status_umkm));
		$this->db->order_by('id_umkm','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing jenis admin
	public function jenis_admin($jenis_umkm) {
		$this->db->select('umkm.*, users.nama');
		$this->db->from('umkm');
		// Join 
		$this->db->join('users','users.id_user = umkm.id_user','LEFT');
		// End join
		$this->db->where(array(	'umkm.jenis_umkm'	=> $jenis_umkm));
		$this->db->order_by('id_umkm','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing author
	public function author_admin($id_user) {
		$this->db->select('umkm.*, users.nama');
		$this->db->from('umkm');
		// Join dg 2 tabel
		$this->db->join('users','users.id_user = umkm.id_user','LEFT');
		// End join
		$this->db->where(array(	'umkm.id_user'	=> $id_user));
		$this->db->order_by('id_umkm','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	
	// Listing umkm
	public function umkm($limit,$start) {
		$this->db->select('umkm.*, 
					users.nama
					');
		$this->db->from('umkm');
		// Join 
		$this->db->join('users','users.id_user = umkm.id_user','LEFT');
		// End join
		$this->db->where(array(	'umkm.status_umkm' => 'Publish',
								'umkm.jenis_umkm'	 => 'Umkm'));
		$this->db->order_by('umkm.tanggal_publish','DESC');
		$this->db->limit($limit,$start);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing total
	public function total() {
		$this->db->select('umkm.*, users.nama');
		$this->db->from('umkm');
		// Join dg 2 tabel
		$this->db->join('users','users.id_user = umkm.id_user','LEFT');
		// End join
		$this->db->where(array(	'umkm.status_umkm'	=> 'Publish',
								'umkm.jenis_umkm'	=> 'Umkm'));
		$this->db->order_by('id_umkm','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// search umkm
	public function search($keywords,$limit,$start) {
		$this->db->select('umkm.*, 
					users.nama
					');
		$this->db->from('umkm');
		// Join 
		$this->db->join('users','users.id_user = umkm.id_user','LEFT');
		// End join
		$this->db->where(array(	'umkm.status_umkm'	=> 'Publish',
								'umkm.jenis_umkm'	=> 'Umkm'));
		$this->db->like('umkm.judul_umkm',$keywords);
		$this->db->or_like('umkm.isi',$keywords);
		$this->db->group_by('id_umkm');
		$this->db->order_by('id_umkm','DESC');
		$this->db->limit($limit,$start);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing total
	public function total_search($keywords) {
		$this->db->select('umkm.*, users.nama');
		$this->db->from('umkm');
		// Join dg 2 tabel
		
		$this->db->join('users','users.id_user = umkm.id_user','LEFT');
		// End join
		$this->db->where(array(	'umkm.status_umkm'	=> 'Publish',
								'umkm.jenis_umkm'	    => 'Umkm'));
		$this->db->like('umkm.judul_umkm',$keywords);
		$this->db->or_like('umkm.isi',$keywords);
		$this->db->group_by('id_umkm');
		$this->db->order_by('id_umkm','DESC');
		$query = $this->db->get();
		return $query->result();
	}

	// Listing read
	public function listing_read() {
		$this->db->select('umkm.*, users.nama');
		$this->db->from('umkm');
		// Join dg 2 tabel
		$this->db->join('users','users.id_user = umkm.id_user','LEFT');
		// End join
		$this->db->where(array(	'umkm.status_umkm' => 'Publish',
								'umkm.jenis_umkm'	 => 'Umkm'));
		$this->db->order_by('id_umkm','DESC');
		$this->db->limit(10);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing umkm
	public function listing_umkm() {
		$this->db->select('umkm.*, users.nama');
		$this->db->from('umkm');
		// Join dg 2 tabel
		$this->db->join('users','users.id_user = umkm.id_user','LEFT');
		// End join
		$this->db->where(array(	'umkm.status_umkm' => 'Publish',
								'umkm.jenis_umkm'	 => 'Umkm1'));
		$this->db->order_by('id_umkm','DESC');
		$this->db->limit(20);
		$query = $this->db->get();
		return $query->result();
	}

	// Listing headline
	public function listing_headline() {
		$this->db->select('umkm.*, 
					users.nama
					');
		$this->db->from('umkm');
		// Join dg 2 tabel
		$this->db->join('users','users.id_user = umkm.id_user','LEFT');
		// End join
		$this->db->where(array(	'umkm.status_umkm' => 'Publish',
								'umkm.jenis_umkm'	 => 'Headline Umkm'));
		$this->db->order_by('id_umkm','DESC');
		$this->db->limit(9);
		$query = $this->db->get();
		return $query->result();
	}


	// Read data
	public function read($slug_umkm) {
		$this->db->select('umkm.*, 
					users.nama
					');
		$this->db->from('umkm');
		// Join
		$this->db->join('users','users.id_user = umkm.id_user','LEFT');
		$this->db->where('slug_umkm',$slug_umkm);
		$this->db->order_by('id_umkm','DESC');
		$query = $this->db->get();
		return $query->row();
	}

	// Detail data
	public function detail($id_umkm) {
		$this->db->select('*');
		$this->db->from('umkm');
		$this->db->where('id_umkm',$id_umkm);
		$this->db->order_by('id_umkm','DESC');
		$query = $this->db->get();
		return $query->row();
	}

	// Tambah
	public function tambah($data) {
		$this->db->insert('umkm',$data);
	}

	// Edit
	public function edit($data) {
		$this->db->where('id_umkm',$data['id_umkm']);
		$this->db->update('umkm',$data);
	}

	// Edit hit
	public function update_hit($hit) {
		$this->db->where('id_umkm',$hit['id_umkm']);
		$this->db->update('umkm',$hit);
	}

	// Delete
	public function delete($data) {
		$this->db->where('id_umkm',$data['id_umkm']);
		$this->db->delete('umkm',$data);
	}
}

/* End of file Umkm_model.php */
/* Location: ./application/models/Umkm_model.php */