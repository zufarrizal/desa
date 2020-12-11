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
        $data['user'] = $this->session->userdata('username');
        if ($data['user'] == null) {
            return redirect('auth');
        }

        $id = 1;
        $data['visimisi'] = $this->Visimisi_Model->getVisimisiById($id);
        $this->form_validation->set_rules('visimisi', 'Visi Misi', 'required|trim');

        if ($this->form_validation->run() == false) {
            $data['title'] = "Visi & Misi";
            $this->load->view('layout/header', $data);
            $this->load->view('visimisi/index', $data);
            $this->load->view('layout/footer');
        } else {
            $id = $this->input->post('id_visimisi');
            $visimisi = $this->input->post('visimisi');

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
            $this->db->set('visimisi', $visimisi);

            $this->db->where('id_visimisi', $id);
            $this->db->update('visimisi');
            redirect('visimisi');
        }
    }
}
