<?php 

class Error404 extends MY_Controller 
{
	private $data = array();

	public function __construct() 
	{
		parent::__construct();
	}

	public function index()
	{
		$this->load->view('error404');
	}
}