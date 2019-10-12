<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_model extends CI_Model 
{
	private $table = "APP_USER";

    public function __construct() 
    {
        parent::__construct();
    }

    public function user_check($username, $password) 
    {
		$this->db->where('USERNAME', $username);
		$this->db->where('PASSWORD', md5($password));
		$query = $this->db->get($this->table);
		$o = new stdClass();
		$o->num_rows = $query->num_rows();
		$o->result   = $query->result();
		return $o;
    }
}