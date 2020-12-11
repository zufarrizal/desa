<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Tentang extends CI_Controller
{
    public function __construct()
    {
        $data['users'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        if ($data['users'] == null) {
            return redirect('auth');
        }

        parent::__construct();
        $this->load->model('Tentang_Model');
    }
    public function index()
    {
        $id = 1;
        $data['tentang'] = $this->Tentang_Model->getTentangById($id);

        $this->form_validation->set_rules('tentang', 'Tentang', 'required|trim');

        if ($this->form_validation->run() == false) {
            $data['title'] = "Tentang Desa";
            $this->load->view('layout/header', $data);
            $this->load->view('tentang/index', $data);
            $this->load->view('layout/footer');
        } else {
            $id = $this->input->post('id_tentang');
            $tentang = $this->input->post('tentang');

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
            $this->db->set('tentang', $tentang);

            $this->db->where('id_tentang', $id);
            $this->db->update('tentang');
            redirect('tentang');
        }
    }
}
