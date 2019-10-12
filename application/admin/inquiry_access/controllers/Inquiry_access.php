<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Inquiry_access extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("User_model","User_group_model","Menu_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});
			</script>';	
		$this->data['csrf'] = array(
			'name' => $this->security->get_csrf_token_name(),
			'hash' => $this->security->get_csrf_hash()
		);

		$this->data['osess'] = $this->session->userdata("osess");
	}

	public function index()
	{
		$this->data['title'] = "Inquiry Access Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('inquiry_access_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Inquiry Access Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('inquiry_access_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);	
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Inquiry Access Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('inquiry_access_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);	
	}

	public function delete($id)
	{
		$this->data['title'] = "Inquiry Access Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('inquiry_access_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);	
	}

	public function page_list_rest()
	{
		$json_object = new stdClass();
		$json_object->total = 3;
		$json_object->rows  = array();
		$node = new stdClass();
		$node->id = "100308";
		$node->page_title = "Pusat";
		$node->url = "http://localhost/sucofindo/index.php/home";
		$node->status = "Y";
		$node->function = '<button type="button" class="btn btn-primary btn-xs button-edit" onclick="window.location.href=\'http://localhost/sucofindo/index.php/inquiry_access/edit/1\'"><i class="glyphicon glyphicon-pencil"></i> Edit</button>&nbsp;<button type="button" class="btn btn-primary btn-xs button-edit" onclick="window.location.href=\'http://localhost/sucofindo/index.php/inquiry_access/delete/1\'"><i class="glyphicon glyphicon-trash"></i> Remove</button>';
		$json_object->rows[] = $node;
		$node = new stdClass();
		$node->id = "100308";
		$node->page_title = "Cabang";
		$node->url = "http://localhost/sucofindo/index.php/about_me";
		$node->status = "Y";
		$node->function = '<button type="button" class="btn btn-primary btn-xs button-edit" onclick="window.location.href=\'http://localhost/sucofindo/index.php/inquiry_access/edit/1\'"><i class="glyphicon glyphicon-pencil"></i> Edit</button>&nbsp;<button type="button" class="btn btn-primary btn-xs button-edit" onclick="window.location.href=\'http://localhost/sucofindo/index.php/inquiry_access/delete/1\'"><i class="glyphicon glyphicon-trash"></i> Remove</button>';
		$json_object->rows[] = $node;

		header('Content-Type: application/json');
		echo json_encode($json_object);
	}
}