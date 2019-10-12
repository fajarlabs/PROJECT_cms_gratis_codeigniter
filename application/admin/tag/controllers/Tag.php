<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tag extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Tag_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newTag()
				{
					window.open("'.base_url().'index.php/tag/add","_self");
				}

				function editTag()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/tag/edit/"+row.TAG_ID,"_self");
				}

				function destroyTag()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/tag/delete/"+row.TAG_ID,"_self");
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
		$this->data['title'] = "Tag Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('tag_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Tag Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('tag_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Tag Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Tag_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('tag_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
		$tag_name   = $this->input->post('tag_name');

		$insert = array(
			'TAG_NAME'  => stripslashes($tag_name),
			'IS_DELETE' => 0,
		);

		$this->Tag_model->save($insert);

		$this->session->set_flashdata('error_message', alert_success('Save Succeded.'));
		redirect("tag");	
	}

	public function update($id=0) 
	{
		$tag_name   = $this->input->post('tag_name');

		$insert = array(
			'TAG_NAME'  => stripslashes($tag_name),
			'IS_DELETE' => 0,
		);

		$this->Tag_model->update($insert,$id);
		$this->session->set_flashdata('error_message', alert_success('Update Succeded.'));
		redirect("tag");	
	}

	public function page_list_rest()
	{
		$query = $this->Tag_model->get_all_items(100,0);
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$json_object->rows  = @$query->result();
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function suspend($id)
	{
		$array_col_val = array(
			'STATUS' => 'N'
		);
		$this->Tag_model->update($array_col_val,$id);
		redirect('tag');
	}

	public function release($id)
	{
		$array_col_val = array(
			'STATUS' => 'Y'
		);
		$this->Tag_model->update($array_col_val,$id);
		$this->session->set_flashdata('error_message', alert_success('Release Succeded.'));
		redirect("tag");	
	}

	public function delete($id)
	{
		$this->Tag_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete Succeded.'));
		redirect("tag");	
	}

	public function tag_supply_rest()
	{
		$json_array = array();
		$query = $this->Tag_model->get_all_items();
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				$json_object = new stdClass();
				$json_object->id   = $row->TAG_ID;
				$json_object->text = $row->TAG_NAME;
				$json_array[]      = $json_object; 
			}
		}
		header('Content-Type: application/json');
		echo json_encode($json_array);

	}
}