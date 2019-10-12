<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends MY_Controller 
{

	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("client_site/Client_site_model","Login_model","setting/Setting_model"));
	}

	public function index()
	{
		/* Activate CSRF */
		$this->security->csrf_verify();
		
		$data = array();
		$data['error_message'] = $this->session->flashdata('login_message');
		$data['client_site'] = $this->Client_site_model->get_all_items();
		$data['csrf'] = array(
			'name' => $this->security->get_csrf_token_name(),
			'hash' => $this->security->get_csrf_hash()
		);

		$this->load->view("login_view",$data);
	}

	public function auth() 
	{

		/* Attempt sementara no limit */
		$attempt = ((int) $this->session->userdata("attempt"))+1;

		/* If attempt > 3 do something */
		if($attempt > 3) { 
			/* do something */
		}

		$this->session->set_userdata("attempt",$attempt);

		/* Get data form login form */
		$username = $this->input->post("un");
		$password = $this->input->post("ps");

		/* Set rules */
		$this->form_validation->set_rules('un', 'Username', 'trim|required|min_length[3]|max_length[12]');
		$this->form_validation->set_rules('ps', 'Password', 'trim|required|min_length[3]|max_length[12]');

		/* Form validation */
		if ($this->form_validation->run() == FALSE)  {

			$this->session->set_userdata("attempt",1);
			$this->session->set_flashdata('login_message', '<i class="fa fa-info-circle"></i> Username or password incorrect, please try again!');
			redirect("login");

		} else {

			/* checking database */
			$result_login = $this->Login_model->user_check($username,$password);
			if($result_login->num_rows > 0) {

				foreach($result_login->result as $row) {
					/*
					|--------------------------------------------------|
					|
					| DO NOT CHANGE IS DANGEROUS 
					|
					|--------------------------------------------------|
					*/
					$o = new stdClass();
					$o->admin_userid          = $row->USER_ID;
					$o->admin_username        = $row->USERNAME;
					$o->admin_firstname       = $row->FIRST_NAME;
					$o->admin_lastname        = $row->LAST_NAME;
					$o->admin_email           = $row->EMAIL;
					$o->admin_phone_number    = $row->PHONE;
					$o->admin_photo           = $row->PHOTO;
					$o->admin_status          = $row->STATUS;
					$o->admin_function_access = $row->FUNCTION_ACCESS;
					$o->admin_inquiry_access  = $row->INQUIRY_ACCESS;

					// get all setting
					$query_setting = $this->Setting_model->get_all_items();

					$this->session->set_userdata("oadmin",$o);

					break; /* one iterate only */
				}

				/* clear session attempt */
				$this->session->unset_userdata("attempt");

				redirect("dashboard");

			} else {
				
				$this->session->set_flashdata('login_message', '<i class="fa fa-info-circle"></i> Username or password incorrect, please try again!');
				redirect("login?attempt=".$attempt);
			}
		}
	}
}