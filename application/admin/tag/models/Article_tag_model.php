<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Article_tag_model extends CI_Model 
{

	private $table = "WEBSITE_TAG_ARTICLE";

	public function get_all_items()
	{
        $this->db->select('*');
        $this->db->from($this->table);
        return $this->db->get();
	}

    public  function get_item_by_id($id=0) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('TAG_ARTICLE_ID', $id); 
		return $this->db->get();
    }

    public function get_item_by_ref($ref_id=0)
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->join('WEBSITE_TAG', 'WEBSITE_TAG.TAG_ID = '.$this->table.'.TAG_ID');
        $this->db->where('ARTICLE_ID', $ref_id); 
        return $this->db->get();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_id($id=0)
    {
    	$this->db->delete($this->table, array('TAG_ARTICLE_ID' => $id));
    }

    public function delete_by_ref($ref_id=0)
    {
        $this->db->delete($this->table, array('ARTICLE_ID' => $ref_id));
    }

    public function update($array_col_val = array(), $id=0)
    {
		$this->db->where('TAG_ARTICLE_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }
}
