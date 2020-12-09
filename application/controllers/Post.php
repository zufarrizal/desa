<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Post extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Visimisi_Model');
    }

    public function index()
    {
        $data['title'] = "Desa Benerkulon";
        $this->load->view('layout/p_header', $data);
        $this->load->view('post/index', $data);
        $this->load->view('layout/p_footer');
    }

    public function berita()
    {
        $data['title'] = "Berita Desa Benerkulon";
        $this->load->view('layout/p_header', $data);
        $this->load->view('post/berita', $data);
        $this->load->view('layout/p_footer');
    }

    public function visimisi()
    {
        $id = 1;
        $data['visimisi'] = $this->Visimisi_Model->getVisimisiById($id);
        $data['title'] = "Visi Misi Desa Benerkulon";
        $this->load->view('layout/p_header', $data);
        $this->load->view('post/visimisi', $data);
        $this->load->view('layout/p_footer');
    }

    public function struktur()
    {
        $data['title'] = "Visi Misi Desa Benerkulon";
        $this->load->view('layout/p_header', $data);
        $this->load->view('post/struktur', $data);
        $this->load->view('layout/p_footer');
    }

    public function program()
    {
        $data['title'] = "Visi Misi Desa Benerkulon";
        $this->load->view('layout/p_header', $data);
        $this->load->view('post/program', $data);
        $this->load->view('layout/p_footer');
    }

    public function tentang()
    {
        $data['title'] = "Visi Misi Desa Benerkulon";
        $this->load->view('layout/p_header', $data);
        $this->load->view('post/tentang', $data);
        $this->load->view('layout/p_footer');
    }
}
