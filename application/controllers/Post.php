<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Post extends CI_Controller
{
    public function index()
    {
        $data['title'] = "Desa Ambal";
        $this->load->view('post/index', $data);
    }
}
