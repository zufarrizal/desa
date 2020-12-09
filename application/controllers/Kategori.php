<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kategori extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Kategori_Model');
    }
    public function index()
    {
        $data['kategori'] = $this->Kategori_Model->getAllKategori();
        $data['title'] = "Kategori Berita";
        $this->load->view('layout/header', $data);
        $this->load->view('kategori/index', $data);
        $this->load->view('layout/footer');
    }
}
