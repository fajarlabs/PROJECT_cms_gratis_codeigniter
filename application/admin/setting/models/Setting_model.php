<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Setting_model extends CI_Model 
{

	private $table = "APP_SETTING";

	/**
	 * Fungsi untuk mengambil item setting 
	 */
    public  function get_item_by_name($setting_name) 
    {
		$this->db->select('SETTING_VALUE');
		$this->db->from($this->table);
		$this->db->where('SETTING_NAME', $setting_name); 
		$query = $this->db->get();

		$result = "";
		foreach ($query->result() as $row) {
		    $result = $row->SETTING_VALUE;
		}

		return $result;
    }

    public function get_all_items() 
    {
    	return $this->db->get($this->table);
	}

    public  function get_item_by_id($id) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('SETTING_ID', $id); 
		return $this->db->get();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('SETTING_ID' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('SETTING_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }
}
