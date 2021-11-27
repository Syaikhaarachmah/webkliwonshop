<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {
	public function data_transaksi_limit() {
		$this->db->limit(5);
		$this->db->order_by('transaksi_tgl_pesan', 'DESC');
		$this->db->where('transaksi_userid', $this->session->userdata('userid'));
		return $this->db->get('tb_transaksi')->result_array();
	}

	public function data_transaksi() {
		$this->db->order_by('transaksi_tgl_pesan', 'DESC');
		$this->db->where('transaksi_userid', $this->session->userdata('userid'));
		return $this->db->get('tb_transaksi')->result_array();
	}

	public function detail_transaksi($id) {
		$this->db->select('*');
		$this->db->from('tb_transaksi');
		$this->db->join('tb_detail_transaksi', 'tb_detail_transaksi.d_transaksi_id = tb_transaksi.transaksi_id');
		$this->db->join('tb_produk', 'tb_produk.produk_id = tb_detail_transaksi.d_transaksi_item');
		$this->db->join('tb_users', 'tb_users.user_id = tb_transaksi.transaksi_userid');
		$this->db->where('transaksi_id', $id);
		$this->db->where('transaksi_userid', $this->session->userdata('userid'));
		return $this->db->get();
	}

	public function _cekpas() {
		$nama = ucwords($this->input->post('nama'));
		$email = strtolower($this->input->post('email'));
		$sandi = $this->input->post('password');
		$cekpassw = $this->db->get_where('tb_users',['user_id' => $this->session->userdata('userid')])->row_array();

		if(password_verify($sandi, $cekpassw['user_sandi'])) {
			$data = array (
				'user_nama'			=>   $nama,
				'user_email'		=>   $email
			);
		
			$this->db->where('user_id', $this->session->userdata('userid'));
			$this->db->update('tb_users', $data);
			$this->session->set_flashdata('flash', 'Profil anda berhasil diperbaharui');
			redirect('user/profil');
		}else {
			$this->session->set_flashdata('error','Konfirmasi password salah, silahkan coba lagi');
			redirect('user/profil');
		}
	}

	public function data_komentar() {
		$this->db->select('*');
		$this->db->from('tb_komentar');
		$this->db->join('tb_produk', 'tb_produk.produk_id = tb_komentar.komentar_proid');
		$this->db->order_by('komentar_tgl', 'DESC');
		$this->db->where('komentar_userid', $this->session->userdata('userid'));
		return $this->db->get()->result_array();
	}

	public function del_komentar($id) {
		$this->db->where('komentar_id', $id);
		$this->db->delete('tb_komentar');
	}

	public function data_wishlist() {
		$this->db->select('*');
		$this->db->from('tb_wishlist');
		$this->db->join('tb_produk', 'tb_produk.produk_id = tb_wishlist.list_proid');
		$this->db->order_by('list_tgl', 'DESC');
		$this->db->where('list_userid', $this->session->userdata('userid'));
		return $this->db->get()->result_array();
	}

	public function del_wishlist($id) {
		$this->db->where('list_id', $id);
		$this->db->delete('tb_wishlist');
	}

	public function cek_ganti_password() {
		$sandi = $this->input->post('sandi');
		$sandi1 = password_hash($this->input->post('sandi1'), PASSWORD_DEFAULT);
		$cek = $this->db->get_where('tb_users',['user_id' => $this->session->userdata('userid')])->row_array();

		if(password_verify($sandi, $cek['user_sandi'])) {
			$this->db->set('user_sandi', $sandi1);
			$this->db->where('user_id', $this->session->userdata('userid'));
			$this->db->update('tb_users');
			$this->session->set_flashdata('flash', 'Sandi anda berhasil diperbaharui');
			redirect('user/ganti_password');
		}else {
			$this->session->set_flashdata('error', 'Konfirmasi kata sandi salah');
			redirect('user/ganti_password');
		}
	}
}