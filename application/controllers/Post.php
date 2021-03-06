<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Post extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Visimisi_Model');
        $this->load->model('Program_Model');
        $this->load->model('Tentang_Model');
        $this->load->model('Struktur_Model');
        $this->load->model('Berita_Model');
    }

    public function index()
    {
        $data['tentang'] = $this->Tentang_Model->getTentangById(1);
        $data['berita'] = $this->db->order_by('id_berita', "desc")->get('berita')->result_array();
        $data['program'] = $this->Program_Model->getAllProgram();

        $data['title'] = "Desa Benerkulon";
        $this->load->view('layout/p_header', $data);
        $this->load->view('post/index', $data);
        $this->load->view('layout/p_footer');
    }

    public function berita($id)
    {
        $data['tentang'] = $this->Tentang_Model->getTentangById(1);
        $data['berita'] = $this->Berita_Model->getBeritaById($id);
        $data['program'] = $this->Program_Model->getAllProgram();

        $data['title'] = "Desa Benerkulon";
        $this->load->view('layout/p_header', $data);
        $this->load->view('post/berita', $data);
        $this->load->view('layout/p_footer');
    }

    public function visimisi()
    {
        $data['tentang'] = $this->Tentang_Model->getTentangById(1);
        $data['berita'] = $this->Berita_Model->getAllBerita();
        $data['program'] = $this->Program_Model->getAllProgram();

        $data['visimisi'] = $this->Visimisi_Model->getVisimisiById(1);
        $data['title'] = "Desa Benerkulon";
        $this->load->view('layout/p_header', $data);
        $this->load->view('post/visimisi', $data);
        $this->load->view('layout/p_footer');
    }

    public function struktur()
    {
        $id = 1;
        $data['tentang'] = $this->Tentang_Model->getTentangById(1);
        $data['berita'] = $this->Berita_Model->getAllBerita();
        $data['program'] = $this->Program_Model->getAllProgram();

        $data['struktur'] = $this->Struktur_Model->getStrukturById(1);
        $data['title'] = "Desa Benerkulon";
        $this->load->view('layout/p_header', $data);
        $this->load->view('post/struktur', $data);
        $this->load->view('layout/p_footer');
    }

    public function program()
    {
        $id = 1;
        $data['tentang'] = $this->Tentang_Model->getTentangById(1);
        $data['berita'] = $this->Berita_Model->getAllBerita();
        $data['program'] = $this->Program_Model->getAllProgram();

        $data['programs'] = $this->Program_Model->getProgramById(1);
        $data['title'] = "Desa Benerkulon";
        $this->load->view('layout/p_header', $data);
        $this->load->view('post/program', $data);
        $this->load->view('layout/p_footer');
    }

    public function tentang()
    {
        $data['berita'] = $this->Berita_Model->getAllBerita();
        $data['program'] = $this->Program_Model->getAllProgram();

        $data['tentang'] = $this->Tentang_Model->getTentangById(1);
        $data['title'] = "Desa Benerkulon";
        $this->load->view('layout/p_header', $data);
        $this->load->view('post/tentang', $data);
        $this->load->view('layout/p_footer');
    }
}
