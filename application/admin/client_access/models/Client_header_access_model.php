<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Client_header_access_model extends CI_Model 
{

	private $table = "APP_CLIENT_HEADER_ACCESS";

	public function get_all_items()
	{
        return $this->db->get($this->table);
	}

    public function get_item_by_csi_menu_id_cti($client_site_id,$menu_id,$client_template_id)
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('CLIENT_SITE_ID', $client_site_id); 
        $this->db->where('MENU_ID', $menu_id); 
        $this->db->where('CLIENT_TEMPLATE_ID', $client_template_id); 
        return $this->db->get();
    }

    public function get_item_by_csi_menu_id($client_site_id,$menu_id)
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('CLIENT_SITE_ID', $client_site_id); 
        $this->db->where('MENU_ID', $menu_id); 
        return $this->db->get();
    }

    public  function get_item_by_id($id) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('HEADER_ACCESS_ID', $id); 
		return $this->db->get();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('HEADER_ACCESS_ID' => $id));
    }

    public function delete_by_csi_menu_id($client_site_id,$menu_id)
    {
        $this->db->delete($this->table, 
            array(
                'CLIENT_SITE_ID' => $client_site_id,
                'MENU_ID' => $menu_id
            )
        );
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('HEADER_ACCESS_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }
}
