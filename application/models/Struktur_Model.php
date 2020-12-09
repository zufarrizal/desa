<?php

class Struktur_Model extends CI_model
{
    public function getAllStruktur()
    {
        return $this->db->get('struktur')->result_array();
    }

    public function deleteStruktur($id)
    {
        $this->db->delete('struktur', ['id_struktur' => $id]);
    }

    public function getStrukturById($id)
    {
        return $this->db->get_where('struktur', ['id_struktur' => $id])->row_array();
    }
}
