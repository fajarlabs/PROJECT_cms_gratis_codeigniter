<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_group_model extends CI_Model 
{

	private $table = "APP_USER_GROUP";

    public function get_all_items($limit=100,$offset=0)
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->limit($limit,$offset);
        return $this->db->get();
    }
	/**
	 * fungsi untuk mengambil menu berdasarkan reference 
	 */
    public  function get_item_by_id($group_id=0) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('GROUP_ID', $group_id); 
		return $this->db->get();
    }

    public  function get_item_by_group_name($group_name="") 
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('GROUP_NAME', $group_name); 
        return $this->db->get();
    }

    public function save($group_name)
    {
    	$array_column = array();
    	$array_column['GROUP_NAME']  = $group_name;
    	$array_column['IS_DELETE']   = 0;
    	$array_column['CREATE_TIME'] = null; // development
    	$array_column['CREATE_USER'] = null; // development
		$this->db->insert($this->table, $array_column);  
		return $this->db->insert_id();   	
    }

    public function update($id,$group_name)
    {
        $array_column = array();
        $array_column['GROUP_NAME']  = $group_name;
        $array_column['IS_DELETE']   = 0;
        $array_column['MODIFY_TIME'] = null; // development
        $array_column['MODIFY_USER'] = null; // development
        $this->db->where('GROUP_ID', $id);  
        $this->db->update($this->table, $array_column); 
        return $id;  
    }

    public function delete_by_id($id=0)
    {
        $this->db->where('GROUP_ID', $id);
        $this->db->delete($this->table);
    }
}
