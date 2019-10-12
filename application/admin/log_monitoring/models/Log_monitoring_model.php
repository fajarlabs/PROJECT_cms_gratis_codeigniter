<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Log_monitoring_model extends CI_Model 
{

	private $table = "APP_LOG";

	public function get_all_items()
	{
        return $this->db->get($this->table);
	}

    public  function get_item_by_id($id) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('LOG_ID', $id); 
		return $this->db->get();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('LOG_ID' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('LOG_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }

    public function truncate_db() {
        $this->db->from('APP_LOG_CLIENT');
        $this->db->truncate();
    }
}
