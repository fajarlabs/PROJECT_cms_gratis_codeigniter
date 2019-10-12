<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Client_menu extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Client_menu_model"));
		
		/* Activate CSRF */
		// $this->security->csrf_verify();

		$this->data['html_css'] = '
		<style>
			.textbox .textbox-text {
				color : #000;
			}
		</style>';
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
		$this->data['error_message'] = $this->session->flashdata("error_message");
	}

	public function index()
	{
		$this->data['title'] = "Client Menu Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('client_menu_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add($id=0)
	{
		$this->data['title'] = "Form Create Client Menu";
		$this->data['id']    = $id;
		$this->load->view('admin/header',$this->data);
		$this->load->view('client_menu_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Form Edit Client Menu";
		$this->data['item']  = $this->Client_menu_model->get_item_by_menu_id($id);
		$this->data['id']    = $id;
		$this->load->view('admin/header',$this->data);
		$this->load->view('client_menu_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
		$reference = $this->input->post("reference");
		$title     = $this->input->post("title");
		$url       = $this->input->post("url");
		$remark    = $this->input->post("remark");
		$target    = $this->input->post("target");
		$image     = $this->input->post("image");
		$weight    = $this->input->post("weight");
		$show      = $this->input->post("show");

		$reference = empty($reference) ? 0 : $reference;

		if($reference < 1) {
			$menu_level = 1;
		}  else {
			$query_reference = $this->Client_menu_model->get_item_by_menu_id($reference);
			if($query_reference->num_rows() > 0) {
				foreach($query_reference->result() as $row_reference) {
					$menu_level = $row_reference->MENU_LEVEL+1;
				}
			}
		}

		$array_col_val = array(
			'REFERENCE'   => empty($reference) ? 0 : $reference,
			'MENU_LEVEL'  => $menu_level,
			'TITLE'       => $title,
			'URL'         => $url,
			'REMARK'      => $remark,
			'TARGET'      => $target,
			'IMAGE'       => $image,
			'WEIGHT'      => $weight,
			'SHOW'        => $show,
			'IS_DELETE'   => 0,
			'CREATE_TIME' => null,
			'CREATE_USER' => ''
		);
		$this->Client_menu_model->save($array_col_val);

		$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		redirect('client_menu');
	}

	public function delete($id)
	{
		$this->Client_menu_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('client_menu');
	}

	public function update($id)
	{
		$reference = $this->input->post("reference");
		$title     = $this->input->post("title");
		$url       = $this->input->post("url");
		$remark    = $this->input->post("remark");
		$target    = $this->input->post("target");
		$image     = $this->input->post("image");
		$weight    = $this->input->post("weight");
		$show      = $this->input->post("show");


		if($reference < 1) {
			$menu_level = 1;
		}  else {
			$query_reference = $this->Client_menu_model->get_item_by_menu_id($reference);
			if($query_reference->num_rows() > 0) {
				foreach($query_reference->result() as $row_reference) {
					$menu_level = $row_reference->MENU_LEVEL+1;
				}
			}
		}

		$array_col_val = array(
			'REFERENCE'   => empty($reference) ? 0 : $reference,
			'MENU_LEVEL'  => $menu_level,			
			'TITLE'       => $title,
			'URL'         => $url,
			'REMARK'      => $remark,
			'TARGET'      => $target,
			'IMAGE'       => $image,
			'WEIGHT'      => $weight,
			'SHOW'        => $show,
			'IS_DELETE'   => 0,
			'MODIFY_TIME' => null,
			'MODIFY_USER' => ''
		);
		$this->Client_menu_model->update($array_col_val,$id);

		$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		redirect('client_menu');
	}

	public function list_menu_ref_rest()
	{
		$menu_arr          = array();
		$json_object       = new stdClass();
		$json_object->id   = 0;
		$json_object->text = "No Reference";  
		$all_items         = $this->Client_menu_model->get_all_items();

		if($all_items->num_rows() > 0) {
			foreach($all_items->result() as $row_menu) {
				if($row_menu->MENU_LEVEL == 1) {
					$json_object_all_items = new stdClass();
					$json_object_all_items->id   = $row_menu->MENU_ID;
					$json_object_all_items->text = $row_menu->TITLE;

					$menusc = $this->Client_menu_model->get_menu_by_reference($row_menu->MENU_ID);
					if($menusc->num_rows() > 0) {
						$array_child = array();
						foreach($menusc->result() as $row_menusc) {
							$jo_child       = new stdClass();
							$jo_child->id   = $row_menusc->MENU_ID;
							$jo_child->text = $row_menusc->TITLE;
							$array_child[]  = $jo_child;  
						}

						$json_object_all_items->children = $array_child;
					}

					$menu_arr[] = $json_object_all_items;
				}
			}
		}

		header('Content-Type: application/json');
		echo json_encode($menu_arr);
	}

	public function list_client_menu_rest()
	{	
		$id = empty($this->input->post("id")) ? 0 : $this->input->post("id");
		$json_array = array();
		$get_menu_ref = $this->Client_menu_model->get_menu_by_reference($id);
		
		if($get_menu_ref->num_rows() > 0) {
			
			foreach($get_menu_ref->result() as $row_menu_ref) {
				$menusc = $this->Client_menu_model->get_menu_by_reference($row_menu_ref->MENU_ID);

				$json_object        = new stdClass();
				$json_object->id    = $row_menu_ref->MENU_ID;
				$json_object->title = $row_menu_ref->TITLE; 

				if($menusc->num_rows() > 0) {
					$json_object->state = "closed";
				} else {
					$json_object->state = "open";
				}

				$json_object->weight    = $row_menu_ref->WEIGHT;

				if($row_menu_ref->SHOW == 1) {
					$json_object->show  = "Yes";
				} else {
					$json_object->show  = "No";
				}

				if($row_menu_ref->MENU_LEVEL <= 2) {
					$json_object->function = '
						<button type="button" class="btn btn-primary btn-xs button-edit" onClick="window.location.href=\''.base_url().'index.php/client_menu/add/'.$row_menu_ref->MENU_ID.'\'"><i class="glyphicon glyphicon-plus"></i> Add</button> 
						<button type="button" class="btn btn-primary btn-xs button-edit" onClick="window.location.href=\''.base_url().'index.php/client_menu/edit/'.$row_menu_ref->MENU_ID.'\'"><i class="glyphicon glyphicon-edit"></i> Edit</button>  
						<button type="button" class="btn btn-primary btn-xs button-delete" onClick="if (confirm(\'Are you sure you want to delete this data?\')) window.location.href=\''.base_url().'index.php/client_menu/delete/'.$row_menu_ref->MENU_ID.'\'"><i class="glyphicon glyphicon-remove"></i> Delete</button>';
				} else {
					$json_object->function = '
						<button type="button" class="btn btn-primary btn-xs button-edit" onClick="window.location.href=\''.base_url().'index.php/client_menu/edit/'.$row_menu_ref->MENU_ID.'\'"><i class="glyphicon glyphicon-edit"></i> Edit</button>  
						<button type="button" class="btn btn-primary btn-xs button-delete" onClick="if (confirm(\'Are you sure you want to delete this data?\')) window.location.href=\''.base_url().'index.php/client_menu/delete/'.$row_menu_ref->MENU_ID.'\'"><i class="glyphicon glyphicon-remove"></i> Delete</button>';
				}

				$json_array[] = $json_object;
			}
		}

		header('Content-Type: application/json');
		echo json_encode($json_array);
	}
}
