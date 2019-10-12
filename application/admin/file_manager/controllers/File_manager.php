<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class File_manager extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("user/User_model","user/User_group_model","menu/Menu_model","File_manager_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script src="https://cdnjs.cloudflare.com/ajax/libs/clipboard.js/1.7.1/clipboard.min.js"></script>
			<script>
				$(document).ready(function() {
					App.init();
				});

				function copyToClipboard(e) {
					var dataCopy = "copy"+$(e).attr("data-copy");

					var clipboard = new Clipboard("."+dataCopy);

					clipboard.on("success", function(e) {
					    alert("Successfully copy link");
					});

					clipboard.on("error", function(e) {
					    alert("Error copy link");
					});

				}

				$("#file_upload").fileinput({previewClass:"","showUpload": false});
				$("#file_upload").trigger("change");

				function newFileManager()
				{
					window.open("'.base_url().'index.php/file_manager/add","_self");
				}

				function editFileManager()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/file_manager/edit/"+row.FILE_MANAGER_ID,"_self");
				}

				function destroyFileManager()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/file_manager/delete/"+row.FILE_MANAGER_ID,"_self");
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
		$this->data['title'] = "File Manager Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('file_manager_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "File Manager Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('file_manager_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title'] = "File Manager Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->File_manager_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('file_manager_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
        $config['upload_path']   = './uploads/file_manager';
        $config['allowed_types'] = 'gif|jpg|png|pdf|xlsx|xls|doc|docs|txt';
        $config['max_size']      = 5000; // 5Mb
        $config['max_width']     = 4000;
        $config['max_height']    = 4000;
        $field_upload_name       = 'file_upload';

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload($field_upload_name)) {
                $msg_upload = array('error' => $this->upload->display_errors());
        } else {
                $msg_upload = array('upload_data' => $this->upload->data());
        }

		$title   = $this->input->post('title');

		$insert = array(
			'TITLE'     => stripslashes($title),
			'NAME'      => @$msg_upload['upload_data']['file_name'],
			'SIZE'      => @$msg_upload['upload_data']['file_size'],
			'EXTENSION' => @$msg_upload['upload_data']['file_ext'],
			'PATH'      => 'uploads/file_manager/'.@$msg_upload['upload_data']['file_name'],
			'TYPE'      => @$msg_upload['upload_data']['file_type'],
			'IS_DELETE' => 0,
		);

		$this->File_manager_model->save($insert);
		$this->session->set_flashdata('error_message', alert_success('Upload file is succeded.'));
		redirect("file_manager");	
	}

	public function update($id=0) 
	{
        $config['upload_path']   = './uploads/file_manager';
        $config['allowed_types'] = 'gif|jpg|png|pdf|xlsx|xls|doc|docs|txt|zip';
        $config['max_size']      = 5000; // 5Mb
        $config['max_width']     = 4000;
        $config['max_height']    = 4000;
        $field_upload_name       = 'file_upload';

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload($field_upload_name)) {
                $msg_upload = array('error' => $this->upload->display_errors());
        } else {
                $msg_upload = array('upload_data' => $this->upload->data());
        }

		$title   = $this->input->post('title');

		$insert = array(
			'TITLE'     => stripslashes($title),
			'NAME'      => @$msg_upload['upload_data']['file_name'],
			'SIZE'      => @$msg_upload['upload_data']['file_size'],
			'EXTENSION' => @$msg_upload['upload_data']['file_ext'],
			'PATH'      => 'uploads/file_manager/'.@$msg_upload['upload_data']['file_name'],
			'TYPE'      => @$msg_upload['upload_data']['file_type'],
			'IS_DELETE' => 0,
		);

		if(isset($msg_upload['error'])) {
			$insert = array(
				'TITLE'     => stripslashes($title),
				'IS_DELETE' => 0,
			);
			$this->File_manager_model->update($insert,$id);
			$this->session->set_flashdata('error_message', alert_danger('Error upload file because extension file is rejected, but Updating is succeded.'));
			redirect("file_manager");
		} else {
			$this->session->set_flashdata('error_message', alert_success('Upload file is succeded.'));
			redirect("file_manager");
		}
	}

	public function page_list_rest()
	{
		$query = $this->File_manager_model->get_all_items();
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();

		$result = $query->result();
		if(is_array($result)) {
			$total = count($result);
			for($i=0; $i < $total; $i++) {
				$result[$i]->PATH = '
				<button onclick="copyToClipboard(this);" data-copy="'.$i.'" class="copy'.$i.' btn btn-xs btn-success" data-clipboard-text="'.base_url().$result[$i]->PATH.'"><i class="fa fa-copy"></i> Copy Link</button>
				<a target="_blank" class="btn btn-success btn-xs" href="'.base_url().$result[$i]->PATH.'"><i class="fa fa-eye"> View</i></a>';
			}
		}
		$json_object->rows  = @$query->result();
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function delete($id)
	{
		$this->File_manager_model->delete_by_id($id);
		redirect('file_manager');
	}
}