<?php

class Kategori_Model extends CI_model
{
    public function getAllKategori()
    {
        return $this->db->get('kategori')->result_array();
    }

    public function deleteKategori($id)
    {
        $this->db->delete('kategori', ['id_kategori' => $id]);
    }

    public function getKategoriById($id)
    {
        return $this->db->get_where('kategori', ['id_kategori' => $id])->row_array();
    }
}
