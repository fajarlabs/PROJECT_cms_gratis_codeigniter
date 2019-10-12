<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class PelniDao extends CI_Model {

	private $table = "pelni_info";

    public function __construct() {
        parent::__construct();
    }

    public function get_all_items() {
    	return $this->db->get($this->table);
	}

	public function get_item_by_id($id) {
		$this->db->where("id",$id);
		return $this->db->get($this->table);
	}

	public function add($data) {
		
		$this->db->insert($this->table, $data); 
	}

	public function update($vessel_name="", $vessel_type="", $id=0) {
		$data = array(
		   'vessel_name' => $vessel_name ,
		   'vessel_type' => $vessel_type 
		);

		$this->db->where('id', $id);
		$this->db->update($this->table, $data); 
	}

	public function delete($id=0) {
		$this->db->delete($this->table, array('id' => $id)); 
	}
}