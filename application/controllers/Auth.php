<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
    public function index()
    {
        $data['title'] = "Masuk";
        $this->load->view('auth/index', $data);
    }
}
