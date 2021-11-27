<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this->load->model('User_model');
		$this->load->model('Home_model');
		if($this->session->userdata('loginstatus') != '6484bbvnvfdswuieywor3443993') {
			redirect('account');
		}
	}

	public function index() {
		$data['title'] = 'Dashboard User';
		$data['profil'] = $this->Home_model->profil_toko();
		$data['keranjang'] = $this->cart->contents();
		$data['kategori'] = $this->Home_model->all_kategori();
		$data['transaksi'] = $this->User_model->data_transaksi_limit();
		$this->load->view('tema/home/header', $data);
		$this->load->view('user/index', $data);
		$this->load->view('tema/home/footer');
	}

	public function transaksi() {
		$data['title'] = 'Riwayat Transaksi Anda';
		$data['profil'] = $this->Home_model->profil_toko();
		$data['keranjang'] = $this->cart->contents();
		$data['kategori'] = $this->Home_model->all_kategori();
		$data['transaksi'] = $this->User_model->data_transaksi();
		$this->load->view('tema/home/header', $data);
		$this->load->view('user/transaksi', $data);
		$this->load->view('tema/home/footer');
	}


	public function detail($id) {
		if($this->uri->segment(3) == '') {
			redirect('user');
		}
		$data['title'] = 'Detail Transaksi';
		$data['profil'] = $this->Home_model->profil_toko();
		$data['keranjang'] = $this->cart->contents();
		$data['kategori'] = $this->Home_model->all_kategori();
		$data['dtransaksi'] = $this->User_model->detail_transaksi($id);
		$this->load->view('tema/home/header', $data);
		$this->load->view('user/detail', $data);
		$this->load->view('tema/home/footer');
	}

	public function profil() {
		$data['title'] = 'Profil Anda';
		$data['profil'] = $this->Home_model->profil_toko();
		$data['keranjang'] = $this->cart->contents();
		$data['kategori'] = $this->Home_model->all_kategori();
		$data['profilanda'] = $this->db->get_where('tb_users',['user_id' => $this->session->userdata('userid')])->row_array();
		$this->form_validation->set_rules('nama', 'nama', 'required|regex_match[/^([a-z ])+$/i]', [
					'required'	=>	'Kolom ini tidak boleh kosong',
					'regex_match'=>	'Nama harus berupa huruf']);
		$this->form_validation->set_rules('email', 'email', 'required|valid_email', [
					'required'	=>	'Kolom ini tidak boleh kosong',
					'valid_email'=>	'Email tidak valid']);
		$this->form_validation->set_rules('password', 'password', 'required', [
					'required'	=>	'Kolom ini tidak boleh kosong']);
		if($this->form_validation->run() == FALSE) {
			$this->load->view('tema/home/header', $data);
			$this->load->view('user/profil', $data);
			$this->load->view('tema/home/footer');
		}else {
			$this->User_model->_cekpas();
		}
	}

	public function komentar() {
		$data['title'] = 'Komentar Anda';
		$data['profil'] = $this->Home_model->profil_toko();
		$data['keranjang'] = $this->cart->contents();
		$data['kategori'] = $this->Home_model->all_kategori();
		$data['komentar'] = $this->User_model->data_komentar();
		$this->load->view('tema/home/header', $data);
		$this->load->view('user/komentar', $data);
		$this->load->view('tema/home/footer');
	}

	public function delete_komentar($id) {
		$this->User_model->del_komentar($id);
		$this->session->set_flashdata('flash', 'Komentar anda berhasil dihapus');
		redirect('user/komentar');
	}

	public function wishlist() {
		$data['title'] = 'Wishlist Tersimpan';
		$data['profil'] = $this->Home_model->profil_toko();
		$data['keranjang'] = $this->cart->contents();
		$data['kategori'] = $this->Home_model->all_kategori();
		$data['wishlist'] = $this->User_model->data_wishlist();
		$this->load->view('tema/home/header', $data);
		$this->load->view('user/wishlist', $data);
		$this->load->view('tema/home/footer');
	}

	public function delete_wishlist($id) {
		$this->User_model->del_wishlist($id);
		$this->session->set_flashdata('flash', 'Item terpilih berhasil dihapus');
		redirect('user/wishlist');
	}

	public function ganti_password() {
		$data['title'] = 'Ganti Password';
		$data['profil'] = $this->Home_model->profil_toko();
		$data['keranjang'] = $this->cart->contents();
		$data['kategori'] = $this->Home_model->all_kategori();
		$data['profilanda'] = $this->db->get_where('tb_users',['user_id' => $this->session->userdata('userid')])->row_array();
		$this->form_validation->set_rules('sandi2', 'sandi2', 'required|min_length[5]', [
					'required'	=>	'Kolom ini tidak boleh kosong',
					'min_length'=>	'Minimal 5 karakter']);
		$this->form_validation->set_rules('sandi1', 'sandi1', 'required|matches[sandi2]', [
					'required'	=>	'Kolom ini tidak boleh kosong',
					'matches'	=>	'Konfirmasi sandi baru harus sama']);
		$this->form_validation->set_rules('sandi', 'sandi', 'required', [
					'required'	=>	'Kolom ini tidak boleh kosong']);
		if($this->form_validation->run() == FALSE) {
			$this->load->view('tema/home/header', $data);
			$this->load->view('user/sandi', $data);
			$this->load->view('tema/home/footer');
		}else {
			$this->User_model->cek_ganti_password();
		}
	}
}