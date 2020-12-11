<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
    public function index()
    {
        $data['users'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        if ($data['users'] == null) {
            return redirect('auth');
        }

        $data['HKategori'] =  $this->db->get('kategori')->num_rows();
        $data['HBerita'] =  $this->db->get('berita')->num_rows();
        $data['title'] = "Dashboard";
        $this->load->view('layout/header', $data);
        $this->load->view('dashboard/index', $data);
        $this->load->view('layout/footer');
    }
}
