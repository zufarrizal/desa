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
        $data['user'] = $this->session->userdata('username');
        if ($data['user'] == null) {
            return redirect('auth');
        }

        $id = 1;
        $data['program'] = $this->Program_Model->getProgramById($id);

        $this->form_validation->set_rules('program', 'Program Desa', 'required|trim');

        if ($this->form_validation->run() == false) {
            $data['title'] = "Program Desa";
            $this->load->view('layout/header', $data);
            $this->load->view('program/index', $data);
            $this->load->view('layout/footer');
        } else {
            $id = $this->input->post('id_program');
            $program = $this->input->post('program');

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
            $this->db->set('program', $program);

            $this->db->where('id_program', $id);
            $this->db->update('program');
            redirect('program');
        }
    }
}
