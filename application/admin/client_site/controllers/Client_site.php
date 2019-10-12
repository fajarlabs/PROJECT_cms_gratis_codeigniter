<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Client_site extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Client_site_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				$("#filemanager-modal").on("show.bs.modal", function () {
				       $(this).find("iframe").attr("src","'.base_url().'index.php/file_manager_basic")
				});

				function showModalFileManager() {
					$("#filemanager-modal").modal("show");
				}

				function newClient_site()
				{
					window.open("'.base_url().'index.php/client_site/add","_self");
				}

				function editClient_site()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/client_site/edit/"+row.CLIENT_SITE_ID,"_self");
				}

				function destroyClient_site()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/client_site/delete/"+row.CLIENT_SITE_ID,"_self");
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
		$this->data['title'] = "Client site Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('client_site_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Client site Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('client_site_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Client site Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Client_site_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('client_site_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
		$client_site_name   = $this->input->post('client_site_name');
		$client_logo        = $this->input->post('client_logo');
		$client_logo_width  = $this->input->post('client_logo_width');
		$client_logo_height = $this->input->post('client_logo_height');
		$client_wallpaper   = $this->input->post('client_wallpaper');

		$insert = array(
			'CLIENT_SITE_NAME' => stripslashes($client_site_name),
			'CLIENT_LOGO' => stripslashes($client_logo),
			'CLIENT_LOGO_WIDTH' => stripslashes($client_logo_width),
			'CLIENT_LOGO_HEIGHT' => stripslashes($client_logo_height),
			'CLIENT_WALLPAPER' => stripslashes($client_wallpaper),
			'IS_DELETE'     => 0,
		);


		$this->Client_site_model->save($insert);
		$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		redirect("client_site");	
	}

	public function update($id=0) 
	{
		$client_site_name   = $this->input->post('client_site_name');
		$client_logo        = $this->input->post('client_logo');
		$client_logo_width  = $this->input->post('client_logo_width');
		$client_logo_height = $this->input->post('client_logo_height');
		$client_wallpaper   = $this->input->post('client_wallpaper');

		$insert = array(
			'CLIENT_SITE_NAME' => stripslashes($client_site_name),
			'CLIENT_LOGO' => stripslashes($client_logo),
			'CLIENT_LOGO_WIDTH' => stripslashes($client_logo_width),
			'CLIENT_LOGO_HEIGHT' => stripslashes($client_logo_height),
			'CLIENT_WALLPAPER' => stripslashes($client_wallpaper),
			'IS_DELETE'     => 0,
		);


		$this->Client_site_model->update($insert,$id);
		$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		redirect("client_site");
	}

	public function page_list_rest()
	{
		$query = $this->Client_site_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$json_object->rows  = @$query->result();
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function delete($id)
	{
		$this->Client_site_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('client_site');
	}
}