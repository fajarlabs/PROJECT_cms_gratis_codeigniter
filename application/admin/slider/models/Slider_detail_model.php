<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Slider_detail_model extends CI_Model 
{

	private $table = "WEBSITE_SLIDER_DETAIL";

	public function get_all_items($limit=100,$offset=0)
	{
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->limit($limit,$offset);
        return $this->db->get();
	}

    public  function get_item_by_id($id=0) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('SLIDER_DETAIL_ID', $id); 
		return $this->db->get();
    }

    public  function get_items_by_ref($ref_id=0) 
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('SLIDER_ID', $ref_id); 
        return $this->db->get();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_ref_not_in($ref_array_id = array(),$ref_id=0)
    {
        $this->db->where('SLIDER_ID', $ref_id); 
        $this->db->where_not_in('SLIDER_DETAIL_ID',$ref_array_id);
        $this->db->delete($this->table);
        return $ref_array_id; 
    }

    public function delete_by_ref($ref_id=0)
    {
        $this->db->where('SLIDER_ID', $ref_id); 
        $this->db->delete($this->table);
        return $ref_id; 
    }

    public function delete_by_id($id=0)
    {
    	$this->db->delete($this->table, array('SLIDER_DETAIL_ID' => $id));
    }

    public function update($array_col_val = array(), $id=0)
    {
		$this->db->where('SLIDER_DETAIL_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }

    public function update_all($array_col_val = array())
    {
        $this->db->update($this->table, $array_col_val); 
    }

    public function update_all_by_ref($array_col_val=array(),$ref_id=0)
    {
        $this->db->where('SLIDER_ID', $ref_id);   
        $this->db->update($this->table, $array_col_val); 
    }
}
