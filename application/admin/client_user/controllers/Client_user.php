<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Client_user extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("client_user/Client_user_model","client_user/Client_user_group_model","client_site/Client_site_model"));
		$this->data['html_css'] = '';
    	$this->data['html_js']  = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				$("#upload_photo").fileinput({previewClass:"","showUpload": false});
				$("#upload_photo").trigger("change");

				function newClient_user()
				{
					window.open("'.base_url().'index.php/client_user/add","_self");
				}

				function editClient_user()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/client_user/edit/"+row.USER_ID,"_self");
				}

				function destroyClient_user()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/client_user/delete/"+row.USER_ID,"_self");
					}
				}

				function lockClient_user()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/client_user/suspend/"+row.USER_ID,"_self");
				}

				function releaseClient_user()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/client_user/release/"+row.USER_ID,"_self");
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
		$this->data['title']     = "Client User Management List";
		$this->data['all_items'] = $this->Client_user_model->get_all_items();
		$this->load->view("admin/header",$this->data);
		$this->load->view("client_user_view",$this->data);
		$this->load->view("admin/footer",$this->data);
	}

	public function add()
	{
		$this->data['title']       = "Client User Management List";
		$this->data['user_group']  = $this->Client_user_group_model->get_all_items();
		$this->data['client_site'] = $this->Client_site_model->get_all_items();
		$this->load->view("admin/header",$this->data);
		$this->load->view("client_user_add_view",$this->data);
		$this->load->view("admin/footer",$this->data);
	}

	public function save()
	{

        $config['upload_path']          = './uploads/client_profile';
        $config['allowed_types']        = 'gif|jpg|png';
        $config['max_size']             = 5000; // 5Mb
        $config['max_width']            = 1500;
        $config['max_height']           = 2100;

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('photo_upload')) {
                $msg_upload = array('error' => $this->upload->display_errors());
        } else {
                $msg_upload = array('upload_data' => $this->upload->data());
        }

		$username   = $this->input->post("username");
		$email      = $this->input->post("email");
		$firstname  = $this->input->post("firstname");
		$lastname   = $this->input->post("lastname");
		$password   = $this->input->post("password");
		$confirm_pw = $this->input->post("confirm_password");
		$status     = $this->input->post("status");
		$func_accs  = $this->input->post("function_access");
		$phone      = $this->input->post("phone");
		$remark     = $this->input->post("remark");

		$array_col_val = array(
			'USERNAME'        => $username,
			'EMAIL'           => $email,
			'FIRST_NAME'      => $firstname,
			'LAST_NAME'       => $lastname,
			'PASSWORD'        => md5($password),
			'STATUS'          => $status,
			'FUNCTION_ACCESS' => $func_accs,
			'CLIENT_SITE_ID'  => $client_site_id,
			'IS_DELETE'       => 0,
			'CREATE_TIME'     => null,
			'CREATE_USER'     => '',
			'PHONE'           => $phone,
			'REMARK'          => $remark,
			'PHOTO'           => (is_array($msg_upload) ? $msg_upload['upload_data']['file_name'] : '')
		);

		$this->Client_user_model->save($array_col_val);

		$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		redirect('client_user');
	}

	public function edit($id=0)
	{
		$this->data['title']       = "Edit Client User Management";
		$this->data['item']        = $this->Client_user_model->get_item_by_id($id);
		$this->data['user_group']  = $this->Client_user_group_model->get_all_items();
		$this->data['id']          = $id;
		$this->data['client_site'] = $this->Client_site_model->get_all_items();
		$this->load->view("admin/header",$this->data);
		$this->load->view("client_user_edit_view",$this->data);
		$this->load->view("admin/footer",$this->data);
	}

	public function delete($id)
	{
		$this->Client_user_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('client_user');
	}

	public function update($id)
	{
        $config['upload_path']          = './uploads/client_profile';
        $config['allowed_types']        = 'gif|jpg|png';
        $config['max_size']             = 5000; // 5Mb
        $config['max_width']            = 1500;
        $config['max_height']           = 2100;

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('photo_upload')) {
                $msg_upload = array('error' => $this->upload->display_errors());
        } else {
                $msg_upload = array('upload_data' => $this->upload->data());
        }

		$username       = $this->input->post("username");
		$email          = $this->input->post("email");
		$firstname      = $this->input->post("firstname");
		$lastname       = $this->input->post("lastname");
		$password       = $this->input->post("password");
		$confirm_pw     = $this->input->post("confirm_password");
		$status         = $this->input->post("status");
		$func_accs      = $this->input->post("function_access");
		$phone          = $this->input->post("phone");
		$remark         = $this->input->post("remark");
		$client_site_id = $this->input->post("client_site_id");

		$array_col_val = array(
			'USERNAME'        => $username,
			'EMAIL'           => $email,
			'FIRST_NAME'      => $firstname,
			'LAST_NAME'       => $lastname,
			'PASSWORD'        => md5($password),
			'STATUS'          => $status,
			'FUNCTION_ACCESS' => $func_accs,
			'CLIENT_SITE_ID'  => $client_site_id,
			'IS_DELETE'       => 0,
			'CREATE_TIME'     => null,
			'CREATE_USER'     => '',
			'PHONE'           => $phone,
			'REMARK'          => $remark,
			'PHOTO'           => (is_array($msg_upload) ? $msg_upload['upload_data']['file_name'] : '')
		);

		if(isset($msg_upload['error'])) {
			unset($array_col_val['PHOTO']);
		}

		if(empty($password)) {
			unset($array_col_val['PASSWORD']);
		}

		$this->Client_user_model->update($array_col_val,$id);

		$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		redirect('client_user');
	}

	public function suspend($id)
	{
		$array_col_val = array(
			'STATUS'          => 'N'
		);
		$this->Client_user_model->update($array_col_val,$id);
		$this->session->set_flashdata('error_message', alert_success('Suspend succeded.'));
		redirect('client_user');
	}

	public function release($id)
	{
		$array_col_val = array(
			'STATUS'          => 'Y'
		);
		$this->session->set_flashdata('error_message', alert_success('Release succeded.'));
		$this->Client_user_model->update($array_col_val,$id);
		redirect('client_user');	
	}

	public function user_list_rest()
	{
		$query = $this->Client_user_model->get_all_items_join_client_site_user_group();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();

		$result = $query->result();
		if(is_array($result)) {
			$total = count($result);
			for($i=0; $i < $total; $i++) {
				if($result[$i]->STATUS == 'Y') {
					$result[$i]->STATUS = '<span class="badge badge-success">Active</span>';
				} else {
					$result[$i]->STATUS = '<span class="badge badge-danger">Suspend</span>';
				}
			}
		}
		
		$json_object->rows  = @$result;
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}
}
