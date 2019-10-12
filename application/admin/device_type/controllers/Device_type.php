<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Device_type extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Device_type_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newMQTTDeviceType()
				{
					window.open("'.base_url().'index.php/device_type/add","_self");
				}

				function editMQTTDeviceType()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/device_type/edit/"+row.MQTT_DEVICE_TYPE_ID,"_self");
				}

				function destroyMQTTDeviceType()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/device_type/delete/"+row.MQTT_DEVICE_TYPE_ID,"_self");
					}
				}

				$("#tags").select2({
				    tags: true,
				    tokenSeparators: [","],
				    createSearchChoice: function (term) {
				        return {
				            id: $.trim(term),
				            text: $.trim(term) + " (new tag)"
				        };
				    },
				    ajax: {
				        url: "https://api.myjson.com/bins/444cr",
				        dataType: "json",
				        data: function(term, page) {
				            return {
				                q: term
				            };
				        },
				        results: function(data, page) {
				            return {
				                results: data
				            };
				        }
				    },

				    // Take default tags from the input value
				    initSelection: function (element, callback) {
				        var data = [];

				        function splitVal(string, separator) {
				            var val, i, l;
				            if (string === null || string.length < 1) return [];
				            val = string.split(separator);
				            for (i = 0, l = val.length; i < l; i = i + 1) val[i] = $.trim(val[i]);
				            return val;
				        }

				        $(splitVal(element.val(), ",")).each(function () {
				            data.push({
				                id: this,
				                text: this
				            });
				        });

				        callback(data);
				    },

				    // Some nice improvements:

				    // max tags is 3
				    // maximumSelectionSize: 3,

				    // override message for max tags
				    formatSelectionTooBig: function (limit) {
				        return "Max tags is only " + limit;
				    }
				});

				tinymce.init({
				    selector: "textarea",
				    plugins: [
				        "advlist autolink lists link image charmap print preview anchor",
				        "searchreplace visualblocks code fullscreen",
				        "insertdatetime media table contextmenu paste"
				    ],
				    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | code"
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
		$this->data['title'] = "Device Type Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('device_type_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Device Type Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('device_type_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Device Type Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Device_type_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('device_type_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
		$device_type_name = $this->input->post('device_type_name');
		$device_type_desc = $this->input->post('device_type_desc');

		$insert = array(
			'MQTT_DEVICE_TYPE_NAME' => stripslashes($device_type_name),
			'MQTT_DEVICE_TYPE_DESC' => stripslashes($device_type_desc),
			'IS_DELETE'   => 0,
		);

		$this->Device_type_model->save($insert);
		$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		redirect("device_type");	
	}

	public function update($id=0) 
	{
		$device_type_name = $this->input->post('device_type_name');
		$device_type_desc = $this->input->post('device_type_desc');

		$insert = array(
			'MQTT_DEVICE_TYPE_NAME' => stripslashes($device_type_name),
			'MQTT_DEVICE_TYPE_DESC' => stripslashes($device_type_desc),
			'IS_DELETE'   => 0,
		);

		$this->Device_type_model->update($insert,$id);
		$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		redirect("device_type");
	}

	public function page_list_rest()
	{
		$query = $this->Device_type_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$json_object->rows  = @$query->result();
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function delete($id)
	{
		$this->Device_type_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect("device_type");
	}
}