<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Function_access_model extends CI_Model {

	private $table = "APP_FUNCTION_ACCESS";

	/**
	 * fungsi untuk mengambil function access berdasarkan username dan menu id
	 */
    public  function get_function_access_by_name_menu_id($name='',$menu_id=0) {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('NAME', $name); 
		$this->db->where('MENU_ID', $menu_id);
		return $this->db->get();
    }

    /**
     * Fungsi untuk menghapus / reset function access berdasarkan name / group_namenya
     */
    public function delete_function_access_by_name($name)
    {
		$this->db->where('NAME', $name);
		$this->db->delete($this->table); 
    }

    /**
     * Fungsi untuk simpan function access
     */
    public function save_by_priv_menu_id($column_priv,$menu_id,$name) 
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('NAME', $name); 
        $this->db->where('MENU_ID', $menu_id);
        $query = $this->db->get();

        if($query->num_rows() > 0) {
            foreach($query->result() as $row) {
                $array_column = array();
                $array_column[$column_priv] = 1;
                $this->db->where('ID', $row->ID);
                $this->db->update($this->table, $array_column);
            }
        } else {
            $array_column = array();
            $array_column['NAME']        = $name;
            $array_column['CREATE_USER'] = "";        // change this
            $array_column['CREATE_TIME'] = null;      // change this
            $array_column['MENU_ID']     = $menu_id;
            $array_column['IS_DELETE']   = 0;
            $array_column[$column_priv]  = 1;

        	$this->db->insert($this->table, $array_column); 
        	return $this->db->insert_id();
        }
    }
}
