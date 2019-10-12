<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Setting extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Setting_model"));
		$this->data['html_css'] = '';
    	$this->data['html_js']  = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				$("#filemanager-modal").on("show.bs.modal", function () {
				       $(this).find("iframe").attr("src","'.base_url().'index.php/file_manager_basic")
				});

				function showModalFileManager() {
					$("#filemanager-modal").modal("show");
				}
			</script>';	
		$this->data['csrf'] = array(
			'name' => $this->security->get_csrf_token_name(),
			'hash' => $this->security->get_csrf_hash()
		);

		$this->data['osess'] = $this->session->userdata("osess");
		$this->data['error_message'] = $this->session->flashdata("error_message");
	}

	public function index()
	{
		$this->data['title']        = "Setting Management";
		$this->data['setting_list'] = $this->Setting_model->get_all_items();
		$this->load->view('admin/header',$this->data);
		$this->load->view('setting_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
		$array_setting_id    = $this->input->post('setting_id');
		$array_setting_value = $this->input->post('setting_value');

		print_r($array_setting_value);
		$count_id = count($array_setting_id);
		for($i=0; $i < $count_id; $i++) {
			$array_col_val = array('SETTING_VALUE' => $array_setting_value[$i]);
			$this->Setting_model->update($array_col_val,$array_setting_id[$i]);
		}

		redirect("setting");	
	}	
}