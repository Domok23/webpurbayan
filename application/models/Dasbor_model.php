<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dasbor_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	// Total berita
	public function berita()
	{
		$this->db->select('COUNT(*) AS total');
		$this->db->from('berita');
		$query = $this->db->get();
		return $query->row();
	}

	// Total kampung
	public function kampung()
	{
		$this->db->select('COUNT(*) AS total');
		$this->db->from('kampung');
		$query = $this->db->get();
		return $query->row();
	}

	// Total UMKM
	public function umkm()
	{
		$this->db->select('COUNT(*) AS total');
		$this->db->from('umkm');
		$query = $this->db->get();
		return $query->row();
	}

	// Total galeri
	public function galeri()
	{
		$this->db->select('COUNT(*) AS total');
		$this->db->from('galeri');
		$query = $this->db->get();
		return $query->row();
	}

	// Total user
	public function user()
	{
		$this->db->select('COUNT(*) AS total');
		$this->db->from('users');
		$query = $this->db->get();
		return $query->row();
	}


	// Total kunjungan
	public function kunjungan()
	{
		$this->db->select('hari, COUNT(*) AS total');
		$this->db->from('kunjungan');
		$this->db->group_by('hari');
		$this->db->order_by('hari', 'desc');
		$this->db->limit(14);
		$query = $this->db->get();
		return $query->result();
	}

}

/* End of file Dasboar_model.php */
/* Location: ./application/models/Dasboar_model.php */