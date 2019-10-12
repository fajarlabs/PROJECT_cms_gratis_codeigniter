<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Article extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Article_model","article_category/Article_category_model","tag/Article_tag_model","tag/Tag_model"));
		$this->data['html_css'] = '';
    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newArticle()
				{
					window.open("'.base_url().'index.php/article/add","_self");
				}

				function editArticle()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/article/edit/"+row.ARTICLE_ID,"_self");
				}

				function destroyArticle()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/article/delete/"+row.ARTICLE_ID,"_self");
					}
				}

				function activeArticle()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/article/active/"+row.ARTICLE_ID,"_self");
				}

				function deactiveArticle()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/article/deactive/"+row.ARTICLE_ID,"_self");
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
				    createTag: function (tag) {
				        return {
				            id: tag.term,
				            text: tag.term,
				            isNew : true
				        };
				    },
				    ajax: {
				        url: "'.base_url().'index.php/tag/tag_supply_rest",
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

				// init tinymce
				tinymce.init({
				    selector : "#content_article",
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
		$this->load->view('article_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$query_category = $this->Article_category_model->get_all_items();
		$category_list  = array();
		if($query_category->num_rows() > 0) {
			foreach($query_category->result() as $row) {
				$category_list[$row->ARTICLE_CATEGORY_ID] = $row->CATEGORY_NAME;
			}
		}
		$this->data['title'] = "Page Static Management";
		$this->data['article_category'] = $category_list;
		$this->load->view('admin/header',$this->data);
		$this->load->view('article_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$query_category = $this->Article_category_model->get_all_items();
		$category_list  = array();
		if($query_category->num_rows() > 0) {
			foreach($query_category->result() as $row) {
				$category_list[$row->ARTICLE_CATEGORY_ID] = $row->CATEGORY_NAME;
			}
		}

		$tag_query = $this->Article_tag_model->get_item_by_ref($id);
		$tag_list = array();
		if($tag_query->num_rows() > 0) {
			foreach($tag_query->result() as $row_tag) {
				$o = new stdClass();
				$o->id   = $row_tag->TAG_ID;
				$o->text = $row_tag->TAG_NAME;
				$tag_list[] = $o;
			}
		}

		$this->data['html_js'] .= '
			<script>
				/* selected tags version Select2 3.5.3 */
			    var preload_data = '.json_encode($tag_list).';
				$("#tags").select2("data", preload_data );
			</script>';
		$this->data['id']    = $id;
		$this->data['title'] = "Page Static Management";
		$this->data['item']  = $this->Article_model->get_item_by_id($id);
		$this->data['article_category'] = $category_list;

		$this->load->view('admin/header',$this->data);
		$this->load->view('article_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
		$article_title       = $this->input->post('title');
		$category_article_id = $this->input->post('category_article_id');
		$article_content     = $this->input->post('content');
		$article_status      = $this->input->post('status');
		$article_tags        = @explode(',',$this->input->post('tags'));

		$array_col_val = array(
			'ARTICLE_CATEGORY_ID' => $category_article_id,
			'TITLE'               => $article_title,
			'CONTENT'             => $article_content,
			'STATUS'              => $article_status,
			'IS_DELETE'           => 0
		);
		$article_id = $this->Article_model->save($array_col_val);

		foreach($article_tags as $key_tag => $val_tag) {
			if(is_numeric($val_tag)) {
				// save tag article by article id
				// this is for detail tags
				$array_col_val_tag = array (
					'ARTICLE_ID' => $article_id,
					'TAG_ID'     => (int)$val_tag
				);

				$this->Article_tag_model->save($array_col_val_tag);

			} else {
				// create new tag and save id
				$arry_col_val_tag = array(
					'TAG_NAME'  => $val_tag,
					'IS_DELETE' => 0
				);
				$tag_id = $this->Tag_model->save($arry_col_val_tag);

				// after create new tag is finish then
				// save tag article by article id
				// this is for detail tags
				$array_col_val_tag = array (
					'ARTICLE_ID' => $article_id,
					'TAG_ID'     => (int)$tag_id
				);

				$this->Article_tag_model->save($array_col_val_tag);

			}
		}

		$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		redirect("article");
	}

	public function update($id=0)
	{
		$article_title       = $this->input->post('title');
		$category_article_id = $this->input->post('category_article_id');
		$article_content     = $this->input->post('content');
		$article_status      = $this->input->post('status');
		$article_tags        = @explode(',',$this->input->post('tags'));

		// clear all tags
		$this->Article_tag_model->delete_by_ref($id);

		foreach($article_tags as $key_tag => $val_tag) {
			if(is_numeric($val_tag)) {
				// save tag article by article id
				// this is for detail tags
				$array_col_val_tag = array (
					'ARTICLE_ID' => $id,
					'TAG_ID'     => (int)$val_tag
				);

				$this->Article_tag_model->save($array_col_val_tag);

			} else {
				// create new tag and save id
				$arry_col_val_tag = array(
					'TAG_NAME'  => $val_tag,
					'IS_DELETE' => 0
				);
				$tag_id = $this->Tag_model->save($arry_col_val_tag);

				// after create new tag is finish then
				// save tag article by article id
				// this is for detail tags
				$array_col_val_tag = array (
					'ARTICLE_ID' => $id,
					'TAG_ID'     => (int)$tag_id
				);

				$this->Article_tag_model->save($array_col_val_tag);

			}
		}

		$array_col_val = array(
			'ARTICLE_CATEGORY_ID' => $category_article_id,
			'TITLE'               => $article_title,
			'CONTENT'             => $article_content,
			'STATUS'              => $article_status,
			'IS_DELETE'           => 0
		);

		$this->Article_model->update($array_col_val,$id);

		$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		redirect("article");
	}

	public function delete($id=0)
	{
		$this->Article_model->delete_by_id($id);
		$this->Article_tag_model->delete_by_ref($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect("article");
	}

	public function active($id=0)
	{
		$this->Article_model->update(array('STATUS' => 'Y'), $id);
		$this->session->set_flashdata('error_message', alert_success('Active succeded.'));
		redirect("article");
	}

	public function deactive($id=0)
	{
		$this->Article_model->update(array('STATUS' => 'N'), $id);
		$this->session->set_flashdata('error_message', alert_success('Deactive succeded.'));
		redirect("article");
	}

	public function page_list_rest()
	{
		$query = $this->Article_model->get_all_items();
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
			}
		}
		
		$json_object->rows  = @$result;
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}
}