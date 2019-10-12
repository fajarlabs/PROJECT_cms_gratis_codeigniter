<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Client_user_model extends CI_Model 
{

	private $table = "APP_CLIENT_USER";

	public function get_all_items()
	{
        $this->db->select('*');
        $this->db->from($this->table);
        return $this->db->get();
	}

	public function get_all_items_join_client_site_user_group()
	{
		$this->db->select('*');
		$this->db->from($this->table.' acu');
		$this->db->join('APP_CLIENT_SITE acs', 'acs.CLIENT_SITE_ID = acu.CLIENT_SITE_ID', 'left');
		$this->db->join('APP_CLIENT_USER_GROUP acug', 'acug.GROUP_NAME = acu.FUNCTION_ACCESS', 'left');
		return $this->db->get(); 
	}

	public function get_user_pass_client_id($username,$password)
	{
		$this->db->select('*');
		$this->db->from($this->table.' acu');
		$this->db->join('APP_CLIENT_SITE acs', 'acs.CLIENT_SITE_ID = acu.CLIENT_SITE_ID', 'left');
		$this->db->join('APP_CLIENT_USER_GROUP acug', 'acug.GROUP_NAME = acu.FUNCTION_ACCESS', 'left');
		$this->db->where('acu.USERNAME',$username);
		$this->db->where('acu.PASSWORD',$password);
		return $this->db->get(); 
	}

    public  function get_item_by_id($id) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('USER_ID', $id); 
		return $this->db->get();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('USER_ID' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('USER_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }
}
