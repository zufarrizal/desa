<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Tentang extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Tentang_Model');
    }
    public function index()
    {
        $id = 1;
        $data['tentang'] = $this->Tentang_Model->getTentangById($id);
        $data['title'] = "Tentang Desa";
        $this->load->view('layout/header', $data);
        $this->load->view('tentang/index', $data);
        $this->load->view('layout/footer');
    }
}
