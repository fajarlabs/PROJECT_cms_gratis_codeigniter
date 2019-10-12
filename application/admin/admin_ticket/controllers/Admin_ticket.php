<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_ticket extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Admin_ticket_model","Admin_message_model"));

		$this->data['html_css'] = '
		<style>
		.chat
		{
			list-style: none;
			margin: 0;
			padding: 0;
		}
		
		.chat li
		{
			margin-bottom: 10px;
			padding-bottom: 5px;
			border-bottom: 1px dotted #B3A9A9;
		}
		
		.chat li.left .chat-body
		{
			margin-left: 60px;
		}
		
		.chat li.right .chat-body
		{
			margin-right: 60px;
		}
		
		
		.chat li .chat-body p
		{
			margin: 0;
			color: #777777;
		}
		
		.panel .slidedown .glyphicon, .chat .glyphicon
		{
			margin-right: 5px;
		}
		
		.panel-chat
		{
			padding-top:15px;
			overflow-y: scroll;
			height: 300px;
			padding-bottom:15px;
			margin-left:2px;
		}
		
		::-webkit-scrollbar-track
		{
			-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
			background-color: #F5F5F5;
		}
		
		::-webkit-scrollbar
		{
			width: 12px;
			background-color: #F5F5F5;
		}
		
		::-webkit-scrollbar-thumb
		{
			-webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
			background-color: #555;
		}
		</style>				
		';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
          App.init();
          setTimeout(function(){
            $("input[name=\'FUNCTION\']").css("display", "none"); 
            $("input[name=\'IS_TICKET_READ\']").css("display", "none"); 
            $("input[name=\'IS_TICKET_OPEN\']").css("display", "none"); 
          },1000);
        });

				function newAdminTicket()
				{
					window.open("'.base_url().'index.php/admin_ticket/add","_self");
				}

				function editAdminTicket()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/admin_ticket/edit/"+row.CLIENT_TICKET_ID,"_self");
				}

				function destroyAdminTicket()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/admin_ticket/delete/"+row.CLIENT_TICKET_ID,"_self");
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
		$this->data['title'] = "Admin Ticket Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('admin_ticket_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function reply($reply_id='')
	{
		// update is_ticket_read and admin_read_id
		$this->Admin_ticket_model->update(array("ADMIN_READ_ID" => get_admin_userid(), "IS_TICKET_READ" => 1),$reply_id);
		
		// get ticket
		$this->data['ticket_query'] = $this->Admin_ticket_model->get_item_by_id($reply_id);

		// get message 
		$this->data['message_query'] = $this->Admin_message_model->get_item_by_ticket_id($reply_id);

		$this->data['title'] = "Admin Ticket Management";
		$this->data['reply_id'] = $reply_id;
		$this->load->view('admin/header',$this->data);
		$this->load->view('admin_reply_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Admin Ticket Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('admin_ticket_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Admin Ticket Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Admin_ticket_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('admin_ticket_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
		$admin_ticket_name = $this->input->post('admin_ticket_name');
		$admin_ticket_description = $this->input->post('admin_ticket_description');

		$insert = array(
			'CLIENT_TICKET_NAME' => stripslashes($admin_ticket_name),
      'CLIENT_TICKET_DESCRIPTION' => stripslashes($admin_ticket_description),
      'USER_ID' => get_client_user_id(),
			'IS_DELETE'   => 0,
		);

		$this->Admin_ticket_model->save($insert);
		$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		redirect("admin_ticket");	
	}

	public function set_closed($reply_id='') {

		$insert = array(
			'IS_TICKET_OPEN' => 1
		);

		$this->Admin_ticket_model->update($insert,$reply_id);
		$this->session->set_flashdata('error_message', alert_success('ticket have been closed.'));
		redirect("admin_ticket");
	}

	public function reply_save($reply_id='')
	{
		$client_ticket_description = $this->input->post('admin_ticket_description');
		$insert = array(
			'CLIENT_TICKET_ID' => $reply_id, 
			'CLIENT_TICKET_MESSAGE' => stripslashes($client_ticket_description),
			'ADMIN_ID' => get_admin_userid()
		);

		$message_id = $this->Admin_message_model->save($insert);

		$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		redirect("admin_ticket/reply/".$reply_id);
	}

	public function update($id=0) 
	{
		$admin_ticket_name   = $this->input->post('admin_ticket_name');
		$admin_ticket_description   = $this->input->post('admin_ticket_description');

		$insert = array(
			'CLIENT_TICKET_NAME' => stripslashes($admin_ticket_name),
			'CLIENT_TICKET_DESCRIPTION' => stripslashes($admin_ticket_description),
			'IS_DELETE'     => 0,
		);

		$this->Admin_ticket_model->update($insert,$id);
		$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		redirect("admin_ticket");
	}

	public function page_list_rest()
	{
		$query = $this->Admin_ticket_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		

		$result = $query->result();
		if(is_array($result)) {
			$total = count($result);
			for($i=0; $i < $total; $i++) {
        		$ticket_read = $result[$i]->IS_TICKET_READ;
				$ticket_open = $result[$i]->IS_TICKET_OPEN;
				
				$ticket_element = '';
				if($result[$i]->IS_TICKET_OPEN == 0) :
					$ticket_element = '<a class="btn-xs btn btn-warning" onclick="return confirm(\'Are you sure?\')" href="'.base_url().'index.php/admin_ticket/set_closed/'.$result[$i]->CLIENT_TICKET_ID.'"><i class="fa fa-close"></i> Closed</a>';
					$ticket_element .= ' <a class="btn-xs btn btn-primary" href="'.base_url().'index.php/admin_ticket/reply/'.$result[$i]->CLIENT_TICKET_ID.'"><i class="fa fa-envelope-o" aria-hidden="true"></i>
					View & Reply</a>';
				else :
					$ticket_element .= '<a class="btn-xs btn btn-primary" href="'.base_url().'index.php/admin_ticket/reply/'.$result[$i]->CLIENT_TICKET_ID.'"><i class="fa fa-envelope-o" aria-hidden="true"></i>
					View</a>';
				endif;

          		$result[$i]->FUNCTION = $ticket_element.' <a class="btn-xs btn btn-danger" onclick="return confirm(\'Are you sure?\')" href="'.base_url().'index.php/admin_ticket/delete/'.$result[$i]->CLIENT_TICKET_ID.'"><i class="fa fa-trash-o"></i> Remove</a>';

			}
		}
		
		$json_object->rows  = @$result;
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function delete($id)
	{
		$this->Admin_ticket_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('admin_ticket');
	}
}