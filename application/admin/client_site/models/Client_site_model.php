<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Client_site_model extends CI_Model 
{

	private $table = "APP_CLIENT_SITE";

	public function get_all_items()
	{
        return $this->db->get($this->table);
	}

	public function search_by_client_name($site_name='') 
	{
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->like('LOWER("CLIENT_SITE_NAME")', strtolower($site_name)); 
		return $this->db->get();
	}

    public  function get_item_by_id($id) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('CLIENT_SITE_ID', $id); 
		return $this->db->get();
	}

    public  function get_item_by_name($name) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('CLIENT_SITE_NAME', $name); 
		return $this->db->get();
	}
	
	public function save_client_history($client='') 
	{
        $client  = trim($client);
        $array_col_val = array();
        $array_col_val['CLIENT_SITE_NAME'] = $client;

        if($this->get_item_by_name($client)->num_rows() < 1) {
            $this->db->insert($this->table,$array_col_val);
            return $this->db->insert_id('CLIENT_SITE_ID');    
        }

        return NULL;  
	}

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('CLIENT_SITE_ID' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('CLIENT_SITE_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }
}
