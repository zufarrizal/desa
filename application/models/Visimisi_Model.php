<?php

class Visimisi_Model extends CI_model
{
    public function getAllVisimisi()
    {
        return $this->db->get('visimisi')->result_array();
    }

    public function deleteVisimisi($id)
    {
        $this->db->delete('visimisi', ['id_visimisi' => $id]);
    }

    public function getVisimisiById($id)
    {
        return $this->db->get_where('visimisi', ['id_visimisi' => $id])->row_array();
    }
}
