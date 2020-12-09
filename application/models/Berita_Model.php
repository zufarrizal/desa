<?php

class Berita_Model extends CI_model
{
    public function getAllBerita()
    {
        return $this->db->get('berita')->result_array();
    }

    public function deleteBerita($id)
    {
        $this->db->delete('berita', ['id_berita' => $id]);
    }

    public function getBeritaById($id)
    {
        return $this->db->get_where('berita', ['id_berita' => $id])->row_array();
    }
}
