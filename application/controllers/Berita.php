<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Berita extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Berita_Model');
        $this->load->model('Kategori_Model');
    }
    public function index()
    {
        $data['berita'] = $this->Berita_Model->getAllBerita();
        $data['title'] = "Berita";
        $this->load->view('layout/header', $data);
        $this->load->view('berita/index', $data);
        $this->load->view('layout/footer');
    }

    public function tambah()
    {
        $data['berita'] = $this->Berita_Model->getAllBerita();
        $data['kategori'] = $this->Kategori_Model->getAllKategori();

        $this->form_validation->set_rules('judul', 'Judul Berita', 'required|trim');
        $this->form_validation->set_rules('penulis', 'Penulis Berita', 'required|trim');
        $this->form_validation->set_rules('kategori', 'Kategori Berita', 'required|trim');
        $this->form_validation->set_rules('berita', 'Berita', 'required|trim');

        if ($this->form_validation->run() == false) {
            $data['title'] = "Tambah Berita";
            $this->load->view('layout/header', $data);
            $this->load->view('berita/tambah', $data);
            $this->load->view('layout/footer');
        } else {
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size']      = '5120';
            $config['upload_path']   = './assets/dist/img/';

            $this->load->library('upload', $config);
            $this->upload->do_upload('image');
            $new_image = $this->upload->data('file_name');

            $data = [
                'judul' => htmlspecialchars($this->input->post('judul', true)),
                'penulis' => htmlspecialchars($this->input->post('penulis', true)),
                'kategori' => htmlspecialchars($this->input->post('kategori', true)),
                'berita' => $this->input->post('berita'),
                'tanggal' => $this->input->post('tanggal'),
                'foto' => $new_image
            ];
            $this->db->insert('berita', $data);
            redirect('berita');
        }
    }
}
