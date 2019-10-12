<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Article_category extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("user/User_model","user/User_group_model","menu/Menu_model","article_category/Article_category_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newArticleCategory()
				{
					window.open("'.base_url().'index.php/article_category/add","_self");
				}

				function editArticleCategory()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/article_category/edit/"+row.ARTICLE_CATEGORY_ID,"_self");
				}

				function destroyArticleCategory()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/article_category/delete/"+row.ARTICLE_CATEGORY_ID,"_self");
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
		$this->data['title'] = "Article Category Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('article_category_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Article Category Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('article_category_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "Article Category Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Article_category_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('article_category_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
		$category_name   = $this->input->post('category_name');

		$insert = array(
			'CATEGORY_NAME' => stripslashes($category_name),
			'IS_DELETE'     => 0,
		);

		$this->Article_category_model->save($insert);
		redirect("article_category");	
	}

	public function update($id=0) 
	{
		$category_name   = $this->input->post('category_name');

		$insert = array(
			'CATEGORY_NAME' => stripslashes($category_name),
			'IS_DELETE'     => 0,
		);

		$this->Article_category_model->update($insert,$id);
		redirect("article_category");
	}

	public function page_list_rest()
	{
		$query = $this->Article_category_model->get_all_items();
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
		$this->Article_category_model->update($array_col_val,$id);
		redirect('article_category');
	}

	public function release($id)
	{
		$array_col_val = array(
			'STATUS' => 'Y'
		);
		$this->Article_category_model->update($array_col_val,$id);
		redirect('article_category');	
	}

	public function delete($id)
	{
		$this->Article_category_model->delete_by_id($id);
		redirect('article_category');
	}
}