<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sms_gateway extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array('Inbox_model','Outbox_model','Outbox_multipart_model', 'Phones_model', 'Sent_items_model','user/User_model'));

		$this->data['html_css'] = '';
    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
					grid_refresh();
				});

			    function grid_refresh() {
			       $("#dg").datagrid("reload"); // reload grid
			       setTimeout(grid_refresh, 15000); // schedule next refresh after 15sec
			    }

				function inbox_sms()
				{
					window.open("'.base_url().'index.php/sms_gateway/inbox_sms","_self");
				}

				function outbox_sms()
				{
					window.open("'.base_url().'index.php/sms_gateway/outbox_sms","_self");
				}

				function senditems_sms()
				{
					window.open("'.base_url().'index.php/sms_gateway/senditems_sms","_self");
				}

				function create_sms()
				{
		            $("#dlg").dialog("open").dialog("center").dialog("setTitle","Create SMS");
		            $("#fm").form("clear");
				}

				function delete_inbox()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/sms_gateway/inbox_delete/"+row.ID,"_self");
					}
				}

				function delete_outbox()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/sms_gateway/outbox_delete/"+row.ID,"_self");
					}
				}

				function delete_senditems()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/sms_gateway/senditems_delete/"+row.ID,"_self");
					}
				}

				function save_sms() 
				{
					var phone_number = $("#phone_number");
					var text_sms     = $("#text_sms");

					$.ajax({
					  type : "POST",
					  url : "'.base_url().'index.php/sms_gateway/send_sms",
					  data : $("#fm").serialize(),
					  dataType : "json",
					  success : function (response) {
					  	alert("Message sending");
					  },error : function(response) {
					  	alert(response);
					  }
					});

					phone_number.val("");
					text_sms.val("");

					$("#dlg").dialog("close");	
				}

				$("#contact").select2({
					placeholder: "Please select a contact",
				    tags: true,
				    tokenSeparators: [","],
				    createSearchChoice: function (term) {
				        return {
				            id: $.trim(term),
				            text: $.trim(term) + " (new phone)"
				        };
				    },
				    createTag: function (tag) {
				        return {
				            id: tag.term,
				            text: tag.term,
				            isNew : true
				        };
				    },
				    ajax: {
				        url: "'.base_url().'index.php/sms_gateway/contact_supply_rest",
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
		redirect('sms_gateway/inbox_sms');
	}

	public function inbox_sms()
	{
		$this->data['title'] = "SMS Gateway";
		$this->load->view('admin/header',$this->data);
		$this->load->view('sms_gateway_inbox_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function outbox_sms()
	{
		$this->data['title'] = "SMS Gateway";
		$this->load->view('admin/header',$this->data);
		$this->load->view('sms_gateway_outbox_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function senditems_sms()
	{
		$this->data['title'] = "SMS Gateway";
		$this->load->view('admin/header',$this->data);
		$this->load->view('sms_gateway_senditems_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function inbox_rest()
	{
		$query = $this->Inbox_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();
		$json_object->rows  = @$query->result();
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function inbox_delete($id=0)
	{
		$this->Inbox_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('sms_gateway/inbox_sms');
	}

	public function outbox_delete($id=0)
	{
		$this->Outbox_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('sms_gateway/outbox_sms');
	}

	public function senditems_delete($id=0)
	{
		$this->Sent_items_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('sms_gateway/senditems_sms');
	}

	public function outbox_rest()
	{
		$query = $this->Outbox_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();
		$json_object->rows  = @$query->result();
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function senditems_rest()
	{
		$query = $this->Sent_items_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();
		$json_object->rows  = @$query->result();
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function send_sms()
	{
		$contact_list = explode(",",$this->input->post('contact'));
		$error_list   = array();

		foreach($contact_list as $key => $val) {
			
			$val = trim($val);

			if(empty($val)) continue;

			// periksa panjang character
			// jika lebih dari 9 dan kurang dari 15 maka
			// kirim sms disini
			if((strlen($val) > 9) && (strlen($val)< 15)) {
				if((!empty($val)) || ($val != '')) {
					if(is_numeric($val)) {
						$this->Outbox_model->save(
							array(
								'DestinationNumber' => trim($row_query_contact->PHONE),
								'TextDecoded'       => $this->input->post('text_sms'),
								'CreatorID'         => 'Gammu'
							)
						);
					} else {
						$error_list[$key] = "$val is not valid number or not numeric ";
					}
				}
			} else {
				$query_search_contact = $this->User_model->get_item_by_id($val);
				if($query_search_contact->num_rows() > 0) {
					foreach($query_search_contact->result() as $row_query_contact) {
						if((!empty($row_query_contact->PHONE)) || ($row_query_contact->PHONE != '')) {
							if(is_numeric($row_query_contact->PHONE)) {
								$this->Outbox_model->save(
									array(
										'DestinationNumber' => trim($row_query_contact->PHONE),
										'TextDecoded'       => $this->input->post('text_sms'),
										'CreatorID'         => 'Gammu'
									)
								);
							} else {
								$error_list[$key] = "$val is not valid number or not numeric ";
							}
						} else {
							$error_list[$key] = "Number phone is not found ";
						}
					}
				} else {
					$error_list[$key] = "Number phone is not found";
				}
			}
		}
		header('Content-Type: application/json');
		$result = new stdClass();
		if(count($error_list) < 1) {
			$result->status = 'success';
			$result->error  = '';
		}

		if(count($error_list) > 0) {
			$result->status = 'success';
			$result->error  = $error_list;
		}
		echo json_encode($result);
	}

	public function contact_supply_rest()
	{
		$json_array = array();
		$query = $this->User_model->get_all_items();
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {

				$json_object = new stdClass();

				$is_phone_number = false;

				//eliminate every char except 0-9
				$justNums = preg_replace("/[^0-9]/", '', $row->PHONE);
				
				//if we have 10 digits left, it's probably valid.
				if (strlen($justNums) >= 10) $is_phone_number = true;

				if($is_phone_number) {
					$json_object->id   = $row->USER_ID;
					$json_object->text = $row->FIRST_NAME.' '.$row->LAST_NAME.', '.$row->PHONE;
					$json_array[]      = $json_object; 
				}
			}
		}
		header('Content-Type: application/json');
		echo json_encode($json_array);
	}
}