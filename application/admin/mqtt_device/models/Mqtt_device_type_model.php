<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mqtt_device_type_model extends CI_Model 
{

	private $table = "MQTT_DEVICE_TYPE";

	public function get_all_items()
	{
        $this->db->select('*');
        $this->db->from($this->table);
        return $this->db->get();
	}

    public  function get_item_by_id($id) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('MQTT_DEVICE_TYPE_ID', $id); 
		return $this->db->get();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('MQTT_DEVICE_TYPE_ID' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('MQTT_DEVICE_TYPE_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }
}
