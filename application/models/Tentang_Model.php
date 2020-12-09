<?php

class Tentang_Model extends CI_model
{
    public function getAllTentang()
    {
        return $this->db->get('tentang')->result_array();
    }

    public function deleteTentang($id)
    {
        $this->db->delete('tentang', ['id_tentang' => $id]);
    }

    public function getTentangById($id)
    {
        return $this->db->get_where('tentang', ['id_tentang' => $id])->row_array();
    }
}
