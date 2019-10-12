<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Mqtt_device extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Mqtt_device_model","Mqtt_device_type_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newMQTTDevice()
				{
					window.open("'.base_url().'index.php/mqtt_device/add","_self");
				}

				function editMQTTDevice()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/mqtt_device/edit/"+row.MQTT_DEVICE_ID,"_self");
				}

				function destroyMQTTDevice()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/mqtt_device/delete/"+row.MQTT_DEVICE_ID,"_self");
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
		$this->data['all_device_type'] = $this->Mqtt_device_type_model->get_all_items();
	}

	public function index()
	{
		$this->data['title'] = "MQTT Device Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('mqtt_device_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "MQTT Device Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('mqtt_device_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "MQTT Device Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Mqtt_device_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('mqtt_device_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
		$mqtt_device_name  = $this->input->post('mqtt_device_name');
		$mqtt_device_desc  = $this->input->post('mqtt_device_desc');
		$mqtt_device_topic = $this->input->post('mqtt_device_topic');
		$mqtt_device_type  = $this->input->post('mqtt_device_type');

		$insert = array(
			'MQTT_DEVICE_NAME' => stripslashes($mqtt_device_name),
			'MQTT_DEVICE_DESC' => stripslashes($mqtt_device_desc),
			'MQTT_DEVICE_TOPIC' => stripslashes($mqtt_device_topic),
			'MQTT_DEVICE_TYPE_ID' => stripslashes($mqtt_device_type),
			'IS_DELETE'   => 0,
		);

		$this->Mqtt_device_model->save($insert);
		$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		redirect("mqtt_device");	
	}

	public function update($id=0) 
	{
		$mqtt_device_name  = $this->input->post('mqtt_device_name');
		$mqtt_device_desc  = $this->input->post('mqtt_device_desc');
		$mqtt_device_topic = $this->input->post('mqtt_device_topic');
		$mqtt_device_type  = $this->input->post('mqtt_device_type');

		$insert = array(
			'MQTT_DEVICE_NAME' => stripslashes($mqtt_device_name),
			'MQTT_DEVICE_DESC' => stripslashes($mqtt_device_desc),
			'MQTT_DEVICE_TOPIC' => stripslashes($mqtt_device_topic),
			'MQTT_DEVICE_TYPE_ID' => stripslashes($mqtt_device_type),
			'IS_DELETE'   => 0,
		);

		$this->Mqtt_device_model->update($insert,$id);
		$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		redirect("mqtt_device");
	}

	public function page_list_rest()
	{
		$query = $this->Mqtt_device_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();	
		$result = @$query->result();
		if(is_array($result)) {
			$total = count($result);
			for($i=0; $i < $total; $i++) {
				$result[$i]->FUNCTION = '
				<button onclick="copyToClipboard(this);" data-copy="'.$i.'" class="copy'.$i.' btn btn-xs btn-success" data-clipboard-text="'.base_url().$result[$i]->MQTT_DEVICE_ID.'"><i class="fa fa-rocket"></i> Remote</button>
				<a target="_blank" class="btn btn-success btn-xs" href="'.base_url().$result[$i]->MQTT_DEVICE_ID.'"><i class="fa fa-eye"> View Log</i></a>';
			}
		}
		$json_object->rows  = @$query->result();
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function delete($id)
	{
		$this->Mqtt_device_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect("mqtt_device");
	}
}