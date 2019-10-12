<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Website_menu_model extends CI_Model 
{

	private $table = "WEBSITE_MENU";

	public function get_all_items()
	{
		return $this->db->get($this->table);
	}

    public  function get_menu_by_reference($reference=0) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('REFERENCE', $reference); 
		return $this->db->get();
    }

    public  function get_item_by_menu_id($menu_id=0) {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('MENU_ID', $menu_id); 
		return $this->db->get();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('MENU_ID' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('MENU_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }

}
