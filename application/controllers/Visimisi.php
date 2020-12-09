<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Visimisi extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Visimisi_Model');
    }
    public function index()
    {
        $id = 1;
        $data['visimisi'] = $this->Visimisi_Model->getVisimisiById($id);
        $data['title'] = "Visi & Misi";
        $this->load->view('layout/header', $data);
        $this->load->view('visimisi/index', $data);
        $this->load->view('layout/footer');
    }
}
