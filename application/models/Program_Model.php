<?php

class Program_Model extends CI_model
{
    public function getAllProgram()
    {
        return $this->db->get('program')->result_array();
    }

    public function deleteProgram($id)
    {
        $this->db->delete('program', ['id_program' => $id]);
    }

    public function getProgramById($id)
    {
        return $this->db->get_where('program', ['id_program' => $id])->row_array();
    }
}
