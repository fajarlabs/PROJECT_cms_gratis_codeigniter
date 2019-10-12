<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Running_text extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Running_text_model","client_site/Client_site_model"));

		$this->data['html_css'] = '
    		<style>
    			.textbox .textbox-text {
    				color : #000;
    			}

    			.textbox {
    				border : 1px solid #CCD0D6;
    			}

    		</style>';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newRunning_text()
				{
					window.open("'.base_url().'index.php/running_text/add","_self");
				}

				function editRunning_text()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/running_text/edit/"+row.RUNNING_TEXT_ID,"_self");
				}

				function destroyRunning_text()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/running_text/delete/"+row.RUNNING_TEXT_ID,"_self");
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

				$(".datetimebox").datetimepicker();


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
		$this->data['title'] = "Running Text Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('running_text_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Running Text Management";
		$this->data['client_site'] = $this->Client_site_model->get_all_items();
		$this->load->view('admin/header',$this->data);
		$this->load->view('running_text_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Running Text Management";
		$this->data['client_site'] = $this->Client_site_model->get_all_items();
		$this->data['id']    = $id;
		$this->data['item']  = $this->Running_text_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('running_text_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
		$message    = $this->input->post('message');
		$start_time = $this->input->post('start_time');
		$stop_time  = $this->input->post('stop_time');	
		$client_site_id = $this->input->post('client_site_id');

		/* convert datetime string datetime object */
		$start_time = DateTime::createFromFormat('d/m/Y H:i', $start_time);
		$start_time = $start_time->format('Y-m-d H:i:s');

		$stop_time  = DateTime::createFromFormat('d/m/Y H:i', $stop_time);
		$stop_time  = $stop_time->format('Y-m-d H:i:s');

		$insert = array(
			'MESSAGE'            => stripslashes($message),
			'DISPLAY_START_TIME' => $start_time,
			'DISPLAY_STOP_TIME'  => $stop_time,
			'CLIENT_SITE_ID'     => $client_site_id,
			'IS_DELETE'          => 0,
		);

		$this->Running_text_model->save($insert);
		$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		redirect("running_text");	
	}

	public function update($id=0) 
	{
		$message    = $this->input->post('message');
		$start_time = $this->input->post('start_time');
		$stop_time  = $this->input->post('stop_time');	
		$client_site_id = $this->input->post('client_site_id');

		/* convert datetime string datetime object */
		$start_time = DateTime::createFromFormat('d/m/Y H:i', $start_time);
		$start_time = $start_time->format('Y-m-d H:i:s');

		$stop_time  = DateTime::createFromFormat('d/m/Y H:i', $stop_time);
		$stop_time  = $stop_time->format('Y-m-d H:i:s');

		$insert = array(
			'MESSAGE'            => stripslashes($message),
			'DISPLAY_START_TIME' => $start_time,
			'DISPLAY_STOP_TIME'  => $stop_time,
			'CLIENT_SITE_ID'     => $client_site_id,
			'IS_DELETE'          => 0,
		);

		$this->Running_text_model->update($insert,$id);
		$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		redirect("running_text");	
	}

	public function page_list_rest()
	{
		$query = $this->Running_text_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$result = $query->result();
		if(is_array($result)) {
			$total = count($result);
			for($i=0; $i < $total; $i++) {

				$date1 = new DateTime("now");
				$date2 = new DateTime($result[$i]->DISPLAY_START_TIME);
				$date3 = new DateTime($result[$i]->DISPLAY_STOP_TIME);

				// convert start time
				$start_time = @DateTime::createFromFormat('Y-m-d H:i:s', $result[$i]->DISPLAY_START_TIME);
				$start_time = @$start_time->format('d/m/Y H:i');

				// convert stop time
				$stop_time  = @DateTime::createFromFormat('Y-m-d H:i:s', $result[$i]->DISPLAY_STOP_TIME);
				$stop_time  = @$stop_time->format('d/m/Y H:i');

				// jika tanggal hari ini lebih dari atau sama dengan tanggal mulai
				if($date1 >= $date2) {
					$result[$i]->DISPLAY_START_TIME = label_success($start_time);
					$result[$i]->DISPLAY_STOP_TIME  = label_success($stop_time);
				}

				if($date1 < $date2) {
					$result[$i]->DISPLAY_START_TIME = label_warning($start_time);
					$result[$i]->DISPLAY_STOP_TIME  = label_warning($stop_time);	
				}

				if($date1 > $date3) {
					$result[$i]->DISPLAY_START_TIME = label_danger($start_time);
					$result[$i]->DISPLAY_STOP_TIME  = label_danger($stop_time);	
				}

				$result[$i]->MESSAGE = strip_tags($result[$i]->MESSAGE);
			}
		}
		
		$json_object->rows  = @$result;
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function footer_list_rest()
	{
		$query = $this->Running_text_model->get_all_items();
		$json_object = new stdClass();	
		$result = $query->result();
		if(is_array($result)) {
			$total = count($result);
			for($i=0; $i < $total; $i++) {
				$date1 = new DateTime("now");
				$date2 = new DateTime($result[$i]->DISPLAY_START_TIME);
				$date3 = new DateTime($result[$i]->DISPLAY_STOP_TIME);

				// convert start time
				$start_time = @DateTime::createFromFormat('Y-m-d H:i:s', $result[$i]->DISPLAY_START_TIME);
				$start_time = @$start_time->format('d/m/Y H:i');

				// convert stop time
				$stop_time  = @DateTime::createFromFormat('Y-m-d H:i:s', $result[$i]->DISPLAY_STOP_TIME);
				$stop_time  = @$stop_time->format('d/m/Y H:i');

				// jika tanggal hari ini lebih dari atau sama dengan tanggal mulai
				if($date1 >= $date2) {
					$result[$i]->DISPLAY_START_TIME = $start_time;
					$result[$i]->DISPLAY_STOP_TIME  = $stop_time;
				}

				if($date1 < $date2) {
					unset($result[$i]);	
					continue;
				}

				if($date1 > $date3) {
					unset($result[$i]);		
					continue;
				}

				$result[$i]->MESSAGE = strip_tags($result[$i]->MESSAGE);
			}
		}
		$json_object->total = count($result);	
		$json_object->rows  = @$result;
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function delete($id)
	{
		$this->Running_text_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('running_text');
	}
}