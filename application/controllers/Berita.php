<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Berita extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Berita_Model');
    }
    public function index()
    {
        $data['berita'] = $this->Berita_Model->getAllBerita();
        $data['title'] = "Berita";
        $this->load->view('layout/header', $data);
        $this->load->view('berita/index', $data);
        $this->load->view('layout/footer');
    }
}