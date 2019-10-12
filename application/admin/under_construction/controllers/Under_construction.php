<?php

class Under_construction extends CI_Controller
{
	public function  __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		$this->load->view('under_construction');
	}
}