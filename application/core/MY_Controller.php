<?php

class MY_Controller extends CI_Controller
{
	public function  __construct()
	{
		parent::__construct();
		$this->load->model(array('log_monitoring/Log_monitoring_model','log_monitoring_client/Log_monitoring_client_model'));

		$class_name_uri = str_replace("/", "", $this->uri->slash_segment(1)); // like dashboard/

		// admin monitoring
		// if((!empty(get_admin_session()) || ($class_name_uri == 'login'))) {
		// 	$this->Log_monitoring_model->save(
		// 		array(
		// 			'CREATE_TIME' => date('Y-m-d H:i:s'),
		// 			'IP'          => $this->input->ip_address(),
		// 			'ACTIVITY'    => $class_name_uri,
		// 			'DETAIL'      => $this->uri->uri_string(),
		// 			'USERNAME'    => empty(get_admin_username()) ? 'Not Logged In' : get_admin_username(),
		// 			'METHOD'      => $this->input->server('REQUEST_METHOD')
		// 		)
		// 	);
		// } 

		// client monitoring
		// if((!empty(get_client_session()) || ($class_name_uri == 'client'))) {
		// 	$this->Log_monitoring_client_model->save(
		// 		array(
		// 			'CREATE_TIME'      => date('Y-m-d H:i:s'),
		// 			'IP'               => $this->input->ip_address(),
		// 			'ACTIVITY'         => $class_name_uri,
		// 			'DETAIL'           => $this->uri->uri_string(),
		// 			'USERNAME'         => empty(get_client_username()) ? 'Not Logged In' : get_client_username(),
		// 			'CLIENT_SITE_NAME' => get_client_site_name(),
		// 			'METHOD'           => $this->input->server('REQUEST_METHOD')
		// 		)
		// 	);
		// } 
	}
}
