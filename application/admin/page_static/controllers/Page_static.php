<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Page_static extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("user/User_model","user/User_group_model","menu/Menu_model","page_static/Page_static_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newStaticPage()
				{
					window.open("'.base_url().'index.php/page_static/add","_self");
				}

				function editStaticPage()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/page_static/edit/"+row.PAGE_STATIC_ID,"_self");
				}

				function destroyStaticPage()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/page_static/delete/"+row.PAGE_STATIC_ID,"_self");
					}
				}

				function lockStaticPage()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/page_static/suspend/"+row.PAGE_STATIC_ID,"_self");
				}

				function releaseStaticPage()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/page_static/release/"+row.PAGE_STATIC_ID,"_self");
				}

				$("#title").on("keyup",function(){
					$("#url").empty().val($(this).val().toLowerCase().replace(/\s/g,"-"));
				});

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
				    relative_urls : false,
					remove_script_host : false,
					convert_urls : true,
					forced_root_block : "",
					extended_valid_elements:"script[language|type|src]",
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
		$this->data['title'] = "Page Static Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('page_static_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Page Static Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('page_static_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Page Static Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Page_static_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('page_static_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
		$title   = $this->input->post('title');
		$status  = $this->input->post('status');
		$content = $this->input->post('content');
		$url     = $this->input->post('url');

		$insert = array(
			'TITLE'     => stripslashes($title),
			'CONTENT'   => stripslashes($content),
			'SEO_TITLE' => str_replace(" ", "-", strtolower($title)),
			'STATUS'    => stripslashes($status),
			'URL'       => stripslashes($url),
			'IS_DELETE' => 0,
		);

		$this->Page_static_model->save($insert);

		$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		redirect("page_static");	
	}

	public function update($id=0) 
	{
		$title   = $this->input->post('title');
		$status  = $this->input->post('status');
		$content = $this->input->post('content');
		$url     = $this->input->post('url');

		$insert = array(
			'TITLE'     => stripslashes($title), 
			'SEO_TITLE' => str_replace(" ", "-", strtolower($title)),
			'CONTENT'   => stripslashes($content),
			'STATUS'    => stripslashes($status),
			'URL'       => stripslashes($url),
			'IS_DELETE' => 0,
		);
		$this->Page_static_model->update($insert,$id);

		$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		redirect("page_static");
	}

	public function page_list_rest()
	{
		$query = $this->Page_static_model->get_all_items(100,0);
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();

		$result = $query->result();
		if(is_array($result)) {
			$total = count($result);
			for($i=0; $i < $total; $i++) {
				if($result[$i]->STATUS == 'Y') {
					$result[$i]->STATUS = '<span class="badge badge-success">Active</span>';
				} else {
					$result[$i]->STATUS = '<span class="badge badge-danger">Suspend</span>';
				}

				$result[$i]->URL = "<a target='_blank' class='btn btn-xs btn-success' href='".base_url()."index.php/page/index/".$result[$i]->URL."'><i class='fa fa-eye'></i> View</a>";
			}
		}
		
		$json_object->rows  = @$result;
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function suspend($id)
	{
		$array_col_val = array(
			'STATUS' => 'N'
		);
		$this->Page_static_model->update($array_col_val,$id);

		$this->session->set_flashdata('error_message', alert_success('Suspend succeded.'));
		redirect('page_static');
	}

	public function release($id)
	{
		$array_col_val = array(
			'STATUS' => 'Y'
		);
		$this->Page_static_model->update($array_col_val,$id);

		$this->session->set_flashdata('error_message', alert_success('Release succeded.'));
		redirect('page_static');	
	}

	public function delete($id)
	{
		$this->Page_static_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect('page_static');
	}
}