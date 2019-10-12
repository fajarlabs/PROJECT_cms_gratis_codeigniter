<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Client_access extends MY_Controller 
{
	
	public function __construct() 
	{
		parent::__construct();

		$this->load->model(array("client_menu/Client_menu_model","client_user/Client_user_group_model","client_access/Client_access_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>

				$(document).ready(function() {
					App.init();
				});

				function check_row(menu_id) 
				{
					$("#read_"+menu_id).prop("checked", true);
					$("#add_"+menu_id).prop("checked", true);
					$("#edit_"+menu_id).prop("checked", true);
					$("#delete_"+menu_id).prop("checked", true);
				}

				function uncheck_row(menu_id) 
				{
					$("#read_"+menu_id).prop("checked", false);
					$("#add_"+menu_id).prop("checked", false);
					$("#edit_"+menu_id).prop("checked", false);
					$("#delete_"+menu_id).prop("checked", false);
				}

				$("#form_client_access_add").submit(function(e) {
					var group_name = $("#group_name").val();
					jQuery.ajaxSetup({async:false});

					var result = true;
					$.get("'.base_url().'index.php/client_access/check_group_rest/?group_name="+group_name,function(r) {
						if(r.status) {
							alert("Group name is exist, please change your group name!");
							$("#group_name").focus();
							result = false;
						}
					});
					return result;
				});

				function newClientAccess()
				{
					window.open("'.base_url().'index.php/client_access/add","_self");
				}

				function editClientAccess()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/client_access/edit/"+row.GROUP_ID,"_self");
				}

				function destroyClientAccess()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/client_access/delete/"+row.GROUP_ID,"_self");
					}
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
		$this->data['title']     = "Client Access List";
		$this->data['all_items'] = $this->Client_user_group_model->get_all_items();
		$this->load->view("admin/header",$this->data);
		$this->load->view("client_access_view",$this->data);
		$this->load->view("admin/footer",$this->data);
	}

	public function add() 
	{
		$this->data['title'] = "Client Access Add";
		$this->load->view("admin/header",$this->data);
		$this->load->view("client_access_add_view",$this->data);
		$this->load->view("admin/footer",$this->data);
	}

	public function edit($id = 0)
	{
		$this->data['title']    = "Client Access Edit";
		$this->data['item']     = $this->Client_user_group_model->get_item_by_id($id);
		$this->data['group_id'] = $id;
		$this->load->view("admin/header",$this->data);
		$this->load->view("client_access_edit_view",$this->data);
		$this->load->view("admin/footer",$this->data);
	}

	public function delete($id = 0)
	{
		$query_user_group = $this->Client_user_group_model->get_item_by_id($id);
		if($query_user_group->num_rows() > 0) {
			foreach($query_user_group->result() as $row_user_group) {
				/* delete user group */
				$this->Client_user_group_model->delete_by_id($row_user_group->GROUP_ID);
				$this->Client_access_model->delete_client_access_by_name($row_user_group->GROUP_NAME);
			}
		}

		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect("client_access");
	}

	public function save()
	{
		/* reset first */
		$group_name = $this->input->post("group_name");

		/* save group name */
		$this->Client_user_group_model->save($group_name);

		/* delete old data function access */
		$this->Client_access_model->delete_client_access_by_name($group_name);

		/* insert function access */
		$readpriv_array   = $this->input->post("Readpriv");
		$addpriv_array    = $this->input->post("Addpriv");
		$editpriv_array   = $this->input->post("Editpriv");
		$deletepriv_array = $this->input->post("Deletepriv");

		foreach($readpriv_array as $key_read => $val_read) {
			$this->Client_access_model->save_by_priv_menu_id("READ_PRIV",$val_read, $group_name);
		}

		foreach($addpriv_array as $key_add => $val_add) {
			$this->Client_access_model->save_by_priv_menu_id("ADD_PRIV",$val_add, $group_name);
		}

		foreach($editpriv_array as $key_edit => $val_edit) {
			$this->Client_access_model->save_by_priv_menu_id("EDIT_PRIV",$val_edit, $group_name);
		}

		foreach($deletepriv_array as $key_delete => $val_delete) {
			$this->Client_access_model->save_by_priv_menu_id("DELETE_PRIV",$val_delete, $group_name);
		}

		$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		redirect("client_access");

	}

	public function update($id=0)
	{
		$is_exist = FALSE;
		$query_user_group = $this->Client_user_group_model->get_item_by_id($id);

		$group_name = $this->input->post("group_name");

		if($query_user_group->num_rows() > 0) {
			foreach($query_user_group->result() as $row_check_group) {
				if($group_name == $row_check_group->GROUP_NAME) {
					$is_exist = TRUE;
				}
			}
		}

		/* create unix group name if group name is exist */
		if(!$is_exist) {
			$query_other_group = $this->Client_user_group_model->get_item_by_group_name($group_name);
			if($query_other_group->num_rows() > 0) {
				$group_name .= "_".rand(1,1000).time();
			}
		}
		

		$this->Client_user_group_model->update($id,$group_name);

		/* delete old data function access */
		$this->Client_access_model->delete_client_access_by_name($group_name);

		/* insert function access */
		$readpriv_array   = $this->input->post("Readpriv");
		$addpriv_array    = $this->input->post("Addpriv");
		$editpriv_array   = $this->input->post("Editpriv");
		$deletepriv_array = $this->input->post("Deletepriv");

		foreach($readpriv_array as $key_read => $val_read) {
			$this->Client_access_model->save_by_priv_menu_id("READ_PRIV",$val_read, $group_name);
		}

		foreach($addpriv_array as $key_add => $val_add) {
			$this->Client_access_model->save_by_priv_menu_id("ADD_PRIV",$val_add, $group_name);
		}

		foreach($editpriv_array as $key_edit => $val_edit) {
			$this->Client_access_model->save_by_priv_menu_id("EDIT_PRIV",$val_edit, $group_name);
		}

		foreach($deletepriv_array as $key_delete => $val_delete) {
			$this->Client_access_model->save_by_priv_menu_id("DELETE_PRIV",$val_delete, $group_name);
		}

		$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		redirect("client_access");
	}

	public function check_group_rest() 
	{
		$group_name = empty($this->input->get("group_name")) ? "" : $this->input->get("group_name");
		$query = $this->Client_user_group_model->get_item_by_group_name($group_name);

		$json_object = new stdClass();
		if($query->num_rows() > 0) {
			$json_object->status = true;
		} else {
			$json_object->status = false;
		}

		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function client_access_rest()
	{
		$json_array = array();
		$grpus      = empty($this->input->get("grpus")) ? 0 : $this->input->get("grpus");
		$id         = empty($this->input->get("id")) ? 0 : $this->input->get("id");
		$query_menu = $this->Client_menu_model->get_menu_by_reference($id);
		
		if($query_menu->num_rows() > 0) {

			foreach($query_menu->result() as $row_menu) {
				
				$query_menu_c = $this->Client_menu_model->get_menu_by_reference($row_menu->MENU_ID);

				$read_priv   = "";
				$add_priv    = "";
				$edit_priv   = "";
				$delete_priv = "";

				if($grpus != 0) {

					$query_user_group = $this->Client_user_group_model->get_item_by_id($grpus);

					foreach($query_user_group->result() as $row_user_group) {
						
						$query_client_access = $this->Client_access_model->get_client_access_by_name_menu_id($row_user_group->GROUP_NAME, $row_menu->MENU_ID);
					
						// die(print_r($query_client_access->result()));
						if($query_client_access->num_rows() > 0) {
							foreach($query_client_access->result() as $row_client_access) {
								if($row_client_access->READ_PRIV == 1) {
									$read_priv = "checked='checked'";
								}
								if($row_client_access->ADD_PRIV == 1) {
									$add_priv = "checked='checked'";
								}
								if($row_client_access->EDIT_PRIV == 1) {
									$edit_priv = "checked='checked'";
								}
								if($row_client_access->DELETE_PRIV == 1) {
									$delete_priv = "checked='checked'";
								}
							}
						}
					}
				}

				$json_object = new stdClass();
				$json_object->id    = $row_menu->MENU_ID;
				$json_object->title = $row_menu->TITLE;

				if($row_menu->REFERENCE == 0 || $query_menu_c->num_rows() > 0) {
					$json_object->state = "closed";
				} else {
					$json_object->state = "open";
				}

				$json_object->read   = "<input id='read_".$row_menu->MENU_ID."' type='checkbox' name='Readpriv[]' value='".$row_menu->MENU_ID."' ".$read_priv."/>";
				$json_object->add    = "<input id='add_".$row_menu->MENU_ID."' type='checkbox' name='Addpriv[]' value='".$row_menu->MENU_ID."' ".$add_priv."/>";
				$json_object->edit   = "<input id='edit_".$row_menu->MENU_ID."' type='checkbox' name='Editpriv[]' value='".$row_menu->MENU_ID."' ".$edit_priv."/>";
				$json_object->delete = "<input id='delete_".$row_menu->MENU_ID."' type='checkbox' name='Deletepriv[]' value='".$row_menu->MENU_ID."' ".$delete_priv."/>";
			
				$json_object->checkrow   = "<a style='color:#fff;' href=javascript:; onClick=\"check_row('".$row_menu->MENU_ID."')\"><i class=\"fa fa-check\"></i></a>"; 
				$json_object->uncheckrow = "<a style='color:#fff;' href=javascript:; onClick=\"uncheck_row('".$row_menu->MENU_ID."')\"><i class=\"fa fa-times\"></i></a>"; 

				$json_array[] = $json_object;
			}

			header('Content-Type: application/json');
			echo json_encode($json_array);
		}
	}

	public function client_access_list_rest()
	{
		$query = $this->Client_user_group_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();
		$json_object->rows  = @$query->result();
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}
}
