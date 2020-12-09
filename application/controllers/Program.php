<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Program extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Program_Model');
    }
    public function index()
    {
        $id = 1;
        $data['program'] = $this->Program_Model->getProgramById($id);
        $data['title'] = "Program Desa";
        $this->load->view('layout/header', $data);
        $this->load->view('program/index', $data);
        $this->load->view('layout/footer');
    }
}
