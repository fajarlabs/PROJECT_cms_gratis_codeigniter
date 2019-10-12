<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Icon extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Icon_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newIcon()
				{
					window.open("'.base_url().'index.php/icon/add","_self");
				}

				function editIcon()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/icon/edit/"+row.ID,"_self");
				}

				function destroyIcon()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/icon/delete/"+row.ID,"_self");
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
		$this->data['title'] = "Icon Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('icon_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Icon Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('icon_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Icon Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Icon_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('icon_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
        $config['upload_path']          = './uploads/icon_files';
        $config['allowed_types']        = 'gif|jpg|jpeg|png|doc|docx|txt|xls|xlsx|pdf|rar|zip|gzip';
        $config['max_size']             = 5000; // 5Mb

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('file_upload')) {
                $msg_upload = array('error' => $this->upload->display_errors());
        } else {
                $msg_upload = array('upload_data' => $this->upload->data());
        }

		$name = $this->input->post('nama');

		if(isset($msg_upload['error'])) {
			$this->session->set_flashdata('error_message', alert_danger('Save failed. '.$msg_upload['error']));
		} else {
			$array_col_val = array(
				'NAMA' => $name,
				'UPLOAD_FILE' => (is_array($msg_upload) ? $msg_upload['upload_data']['file_name'] : ''),
				'IS_DELETE'   => 0,
			);

			$this->Icon_model->save($array_col_val);
			$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		}
		redirect("icon");	
	}

	public function update($id=0) 
	{
		$name     = $this->input->post('nama');

        $config['upload_path']   = './uploads/icon_files';
        $config['allowed_types'] = 'gif|jpg|jpeg|png|doc|docx|txt|xls|xlsx|pdf|rar|zip|gzip';
        $config['max_size']      = 5000; // 5Mb

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('file_upload')) {
            $msg_upload = array('error' => $this->upload->display_errors());
        } else {
            $msg_upload = array('upload_data' => $this->upload->data());
        }

		$array_col_val = array(
			'NAMA' => $name,
			'UPLOAD_FILE' => (isset($msg_upload['upload_data']) ? $msg_upload['upload_data']['file_name'] : ''),
			'IS_DELETE'   => 0,
		);

		if(isset($msg_upload['error'])) {
			unset($array_col_val['UPLOAD_FILE']);
		}

		$this->Icon_model->update($array_col_val,$id);

		if(isset($msg_upload['error'])) {
			$this->session->set_flashdata('error_message', alert_danger('Update succeded but found error : '.$msg_upload['error']));
		} else {
			$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		}
		
		redirect("icon");
	}

	public function page_list_rest()
	{
		$query = $this->Icon_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$result = $query->result();
		if(is_array($result)) {
			$total = count($result);
			for($i=0; $i < $total; $i++) {
				$result[$i]->UPLOAD_FILE = '<img src="'.base_url().'uploads/icon_files/'.$result[$i]->UPLOAD_FILE.'" style="width:24px;height:24px;" />';
			}
		}
		
		$json_object->rows  = @$result;
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function delete($id)
	{
		$this->Icon_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect("icon");
	}
}