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
        $data['user'] = $this->session->userdata('username');
        if ($data['user'] == null) {
            return redirect('auth');
        }

        $data['berita'] = $this->db->order_by('id_berita', "desc")->get('berita')->result_array();
        $data['title'] = "Berita";
        $this->load->view('layout/header', $data);
        $this->load->view('berita/index', $data);
        $this->load->view('layout/footer');
    }

    public function tambah()
    {
        $data['user'] = $this->session->userdata('username');
        if ($data['user'] == null) {
            return redirect('auth');
        }

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
    public function ubah($id)
    {
        $data['user'] = $this->session->userdata('username');
        if ($data['user'] == null) {
            return redirect('auth');
        }

        $data['berita'] = $this->Berita_Model->getBeritaById($id);
        $data['kategori'] = $this->Kategori_Model->getAllKategori();

        $this->form_validation->set_rules('judul', 'Judul Berita', 'required|trim');
        $this->form_validation->set_rules('penulis', 'Penulis Berita', 'required|trim');
        $this->form_validation->set_rules('kategori', 'Kategori Berita', 'required|trim');
        $this->form_validation->set_rules('berita', 'Berita', 'required|trim');

        if ($this->form_validation->run() == false) {
            $data['title'] = "Ubah Berita";
            $this->load->view('layout/header', $data);
            $this->load->view('berita/ubah', $data);
            $this->load->view('layout/footer');
        } else {
            $id = $this->input->post('id_berita');
            $judul = $this->input->post('judul');
            $penulis = $this->input->post('penulis');
            $kategori = $this->input->post('kategori');
            $berita = $this->input->post('berita');
            $tanggal = $this->input->post('tanggal');

            $upload_image = $_FILES['image']['name'];

            if ($upload_image) {
                $config['allowed_types'] = 'gif|jpg|png|jpeg';
                $config['max_size']      = '5120';
                $config['upload_path']   = './assets/dist/img/';

                $this->load->library('upload', $config);

                if ($this->upload->do_upload('image')) {
                    $old_image = $data['user']['image'];
                    if ($old_image != 'default.jpg') {
                        unlink(FCPATH . '/assets/dist/img/' . $old_image);
                    }

                    $new_image = $this->upload->data('file_name');
                    $this->db->set('foto', $new_image);
                } else {
                    echo $this->upload->display_errors();
                }
            }

            $this->db->set('judul', $judul);
            $this->db->set('penulis', $penulis);
            $this->db->set('kategori', $kategori);
            $this->db->set('berita', $berita);
            $this->db->set('tanggal', $tanggal);

            $this->db->where('id_berita', $id);
            $this->db->update('berita');
            redirect('berita');
        }
    }

    public function hapus($id)
    {
        $data['user'] = $this->session->userdata('username');
        if ($data['user'] == null) {
            return redirect('auth');
        }

        $this->Berita_Model->deleteBerita($id);
        redirect('berita');
    }
}
