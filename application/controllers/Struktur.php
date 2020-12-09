<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Struktur extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Struktur_Model');
    }
    public function index()
    {
        $id = 1;
        $data['struktur'] = $this->Struktur_Model->getStrukturById($id);
        $data['title'] = "Struktur Desa";
        $this->load->view('layout/header', $data);
        $this->load->view('struktur/index', $data);
        $this->load->view('layout/footer');
    }
}
