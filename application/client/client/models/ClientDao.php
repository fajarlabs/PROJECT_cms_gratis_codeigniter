<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class ClientDao extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function clientCheck($username, $password, $client) {
		$this->db->where('username', $username);
		$this->db->where('client_name', $client);
		$this->db->where('password', md5($password));
		return $this->db->get('clients');
    }
}