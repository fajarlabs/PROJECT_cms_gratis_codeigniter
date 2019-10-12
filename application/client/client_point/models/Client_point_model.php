<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Client_point_model extends CI_Model 
{

	private $table = "MAP_POINT";

	public function get_all_items()
	{
        $this->db->select('*');
        $this->db->from($this->table);  

        return $this->db->get();
	}

    public function get_all_item_by_siteid($site_id=0)
    {
        $this->db->select('*');
        $this->db->from($this->table);  
        $this->db->where('SESS_SITE_ID',$site_id);
        return $this->db->get();
    }

    public function get_by_type($type,$sess_site_id=0)
    {
        $this->db->select('*');
        $this->db->from($this->table .' mp');
        $this->db->join('APP_CLIENT_SITE acs', 'acs.CLIENT_SITE_ID = mp.SITE_ID','left');
        $this->db->join('MASTER_ICON_MARKER mim', 'mim.ID = mp.ICON_ID','left');
        $this->db->where('mp.TYPE', $type);
        $this->db->where('mp.SESS_SITE_ID', $sess_site_id);
        return $this->db->get();
    }

    public  function get_item_by_id($id) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('ID', $id); 
		return $this->db->get();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('ID' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }
}
