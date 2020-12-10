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

    public function tambah()
    {
        $this->form_validation->set_rules('kategori', 'Kategori Berita', 'required|trim');
        $this->form_validation->set_rules('keterangan', 'Keterangan Kategori', 'required|trim');

        if ($this->form_validation->run() == false) {
            $data['title'] = "Tambah Kategori";
            $this->load->view('layout/header', $data);
            $this->load->view('kategori/tambah', $data);
            $this->load->view('layout/footer');
        } else {
            $data = [
                'kategori' => htmlspecialchars($this->input->post('kategori', true)),
                'keterangan' => htmlspecialchars($this->input->post('keterangan', true)),
            ];
            $this->db->insert('kategori', $data);
            redirect('kategori');
        }
    }

    public function ubah($id)
    {
        $data['kategori'] = $this->Kategori_Model->getKategoriById($id);

        $this->form_validation->set_rules('kategori', 'Kategori Berita', 'required|trim');
        $this->form_validation->set_rules('keterangan', 'Keterangan Kategori', 'required|trim');

        if ($this->form_validation->run() == false) {
            $data['title'] = "Ubah Kategori";
            $this->load->view('layout/header', $data);
            $this->load->view('kategori/ubah', $data);
            $this->load->view('layout/footer');
        } else {
            $id = $this->input->post('id_kategori');
            $kategori = htmlspecialchars($this->input->post('kategori', true));
            $keterangan = htmlspecialchars($this->input->post('keterangan', true));

            $this->db->set('kategori', $kategori);
            $this->db->set('keterangan', $keterangan);

            $this->db->where('id_kategori', $id);
            $this->db->update('kategori');
            redirect('kategori');
        }
    }

    public function hapus($id)
    {
        $this->Kategori_Model->deleteKategori($id);
        redirect('kategori');
    }
}
