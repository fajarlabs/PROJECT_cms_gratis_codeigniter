<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Log_monitoring extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Log_monitoring_model"));

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

		$this->data['error_message'] = $this->session->flashdata("error_message");
	}

	public function index()
	{
		$this->data['title'] = "Log Monitoring";
		$this->load->view('admin/header',$this->data);
		$this->load->view('log_monitoring_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function page_list_rest()
	{
		$query = $this->Log_monitoring_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$json_object->rows  = @$query->result();
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function clear_all() {
		$this->Log_monitoring_model->truncate_db();
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect("Log_monitoring");
	}
}