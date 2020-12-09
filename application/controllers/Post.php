<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Post extends CI_Controller
{
    public function index()
    {
        $data['title'] = "Desa Benerkulon";
        $this->load->view('post/index', $data);
    }
}
