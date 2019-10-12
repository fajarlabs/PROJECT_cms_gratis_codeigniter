<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SR_Rest extends CI_Controller {

	public function __construct() {
		parent::__construct();
	}

	public function get_all_with_pagination($page=0) {
		$this->load->model("std_ref/Stdref_model");
		$query = $this->Stdref_model->get_all_items();

		header('Content-type: application/json');
		echo json_encode($query->result());
	}
}