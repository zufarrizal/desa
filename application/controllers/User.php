<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('User_Model');
    }

    public function index()
    {
        $data['users'] = $this->session->userdata('username');
        if ($data['users'] == null) {
            return redirect('auth');
        }
        $data['user'] = $this->User_Model->getUserById(1);
        $this->form_validation->set_rules('username', 'Username', 'required|trim');
        $this->form_validation->set_rules('password', 'Password', 'required|trim');

        if ($this->form_validation->run() == false) {
            $data['title'] = 'Admin';
            $this->load->view('layout/header', $data);
            $this->load->view('user/index', $data);
            $this->load->view('layout/footer');
        } else {
            $this->_admin();
        }
    }

    private function _admin()
    {
        $user = $this->User_Model->getUserById(1);
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $password1 = password_hash($this->input->post('password1'), PASSWORD_DEFAULT);

        if (password_verify($password, $user['password'])) {
            $this->db->set('username', $username);
            if ($password != null) {
                $this->db->set('password', $password1);
            }
            $data = [
                'username' => $username
            ];

            $this->db->where('id_user', 1);
            $this->db->update('user');
            $this->session->set_userdata($data);
            redirect('dashboard');
        } else {
            redirect('auth');
        }
    }
}
