<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cabang extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Cabang_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newCabang()
				{
					window.open("'.base_url().'index.php/cabang/add","_self");
				}

				function editCabang()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/cabang/edit/"+row.CABANG_ID,"_self");
				}

				function destroyCabang()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/cabang/delete/"+row.CABANG_ID,"_self");
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
		$this->data['title'] = "Branch Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('cabang_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Branch Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('cabang_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Branch Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Cabang_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('cabang_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
		$cabang_name = $this->input->post('cabang_name');
		$cabang_description = $this->input->post('cabang_description');
		$address = $this->input->post('address');

		$insert = array(
			'BRANCH_NAME' => stripslashes($cabang_name),
			'BRANCH_DESCRIPTION' => stripslashes($cabang_description),
			'ADDRESS' => stripslashes($address),
			'IS_DELETE'   => 0,
		);

		$this->Cabang_model->save($insert);
		$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		redirect("cabang");	
	}

	public function update($id=0) 
	{
		$cabang_name   = $this->input->post('cabang_name');
		$cabang_description   = $this->input->post('cabang_description');
		$address = $this->input->post('address');

		$insert = array(
			'BRANCH_NAME' => stripslashes($cabang_name),
			'BRANCH_DESCRIPTION' => stripslashes($cabang_description),
			'ADDRESS' => stripslashes($address),
			'IS_DELETE'     => 0,
		);

		$this->Cabang_model->update($insert,$id);
		$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		redirect("cabang");
	}

	public function page_list_rest()
	{
		$query = $this->Cabang_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$json_object->rows  = @$query->result();
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function delete($id)
	{
		$this->Cabang_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('cabang');
	}
}