<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Running_text_model extends CI_Model 
{

	private $table = "RUNNING_TEXT";

	public function get_all_items()
	{
        $this->db->select('*');
        $this->db->from($this->table." rt");
        $this->db->join('APP_CLIENT_SITE acs', 'acs.CLIENT_SITE_ID = rt.CLIENT_SITE_ID', 'left');
        return $this->db->get();
	}

    public  function get_item_by_id($id) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('RUNNING_TEXT_ID', $id); 
		return $this->db->get();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('RUNNING_TEXT_ID' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('RUNNING_TEXT_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }
}
