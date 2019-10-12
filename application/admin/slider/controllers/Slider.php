<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Slider extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();

		$this->load->model(array("slider/Slider_model","slider/Slider_detail_model","user/User_group_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>

				$(document).ready(function() {
					App.init();
				});

				function newSlider()
				{
					window.open("'.base_url().'index.php/slider/add","_self");
				}

				function editSlider()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/slider/edit/"+row.SLIDER_ID,"_self");
				}

				function destroySlider()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/slider/delete/"+row.SLIDER_ID,"_self");
					}
				}

				function activeSlider()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/slider/active_slider/"+row.SLIDER_ID,"_self");
				}

				function deactiveSlider()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/slider/disable_slider/"+row.SLIDER_ID,"_self");
				}

				function add_element(arg_content="", arg_title="",arg_upload="",arg_slider_detail_id=0)
				{
					var date = new Date();
					var unic = date.getTime();
					
					// clone form
					var bf   = $("#base-form").clone();

					// get element upload
					var fupload   = bf.find("#fupload");
					var upload_id = "id_upload_"+unic;
					fupload.attr("id",upload_id);

					// get element title
					var input_title = bf.find("#input_title");
					var title_id    = "id_title_"+unic;
					input_title.attr("id",title_id);	
					input_title.attr("value",arg_title);

					// get element anchor 
					var anchor_preview = bf.find("#anchor_id");
					var anchor_id      = "id_anchor_"+unic;
					anchor_preview.attr("id",anchor_id);	
					anchor_preview.attr("href",arg_upload);	
					anchor_preview.attr("data-lightbox","roadtrip");
					anchor_preview.attr("data-title",arg_title);
					anchor_preview.attr("style","");

					// get slider preview
					var image_preview    = bf.find("#slider_preview");
					var image_preview_id = "id_image_preview_"+unic;
					image_preview.attr("id",image_preview_id);	
					image_preview.attr("src",arg_upload);

					// get slider detail id
					var input_hidden = bf.find("#slider_detail_id");
					var hidden_id    = "id_slider_detail_"+unic;
					input_hidden.attr("id",hidden_id);	
					input_hidden.attr("value",arg_slider_detail_id);

					// get element textarea tinymce
					var content    = bf.find("#content");
					content.html(arg_content);
					var content_id = "id_content_"+unic;
					content.attr("id",content_id);
					
					// set to paper form
					var pf   = $("#paper-form");
					pf.prepend("<tr><td>"+bf.html()+"</td></tr>");

					// init upload
					$("#"+upload_id).fileinput({previewClass:"","showUpload": false});
					$("#"+upload_id).trigger("change");

					// init tinymce
					tinymce.init({
					    selector : "#"+content_id,
					    forced_root_block : "",
					    plugins: [
					        "advlist autolink lists link image charmap print preview anchor",
					        "searchreplace visualblocks code fullscreen",
					        "insertdatetime media table contextmenu paste"
					    ],
					    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | code"
					});

				}

				function remove_element(e)
				{
					$(e).parent().parent().remove();
				}
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
		$this->data['title'] = "Slider Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('slider_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function add()
	{
		$this->data['title'] = "Slider Management";
		$this->load->view('admin/header',$this->data);
		$this->load->view('slider_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['title']    = "Slider Management";
		$this->data['item']     = $this->Slider_model->get_item_by_id($id);
		$this->data['id']       = $id;
		$this->data['html_js'] .= '
			<script>
				$(document).ready(function() {
					$.get("'.base_url().'index.php/slider/get_item_by_id_rest/'.$id.'",function(result) {
						var count_result = result.length;
						for(var i=0; i < count_result; i++) {
							add_element(result[i].CONTENT, result[i].TITLE,"'.base_url().'"+result[i].PATH,result[i].SLIDER_DETAIL_ID);
						}
					});
				});
			</script>
		';

		$this->load->view('admin/header',$this->data);
		$this->load->view('slider_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function delete($id=0)
	{
		// header delete
		$this->Slider_model->delete_by_id($id);
		// file detail delete
		$this->Slider_detail_model->delete_by_ref($id);

		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect("slider");
	}

	public function save()
	{

        $config['upload_path']   = './uploads/slider';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $config['max_size']      = 100000; // 100Mb
        $config['max_width']     = 4000;
        $config['max_height']    = 4000;

		$this->load->library('upload', $config);
		$multiple_files = $this->upload->do_multi_upload('photo_upload');

		if($multiple_files) {
	        $slider_name    = $this->input->post("slider_name");
	        $array_title    = $this->input->post("title");
	        $array_upload   = $multiple_files;
	        $array_content  = $this->input->post("content");

	        $count_title    = count($array_title);
	        $count_upload   = count($array_upload);
	        $count_content  = count($array_content);

	        $match_equals  = ($count_title+$count_upload+$count_content) / 3;

	        if(($count_title == $match_equals) && ($count_upload == $match_equals) && ($count_content == $match_equals)) {
	      		
	      		// Save header title slider image
		        $array_col_val_slider = array(
		        	'NAME'      => $slider_name,
		        	'STATUS'    => 'N',
		        	'IS_DELETE' => 0
		        );

		        $website_slider_id = $this->Slider_model->save($array_col_val_slider);

		        for($i=0; $i < $match_equals; $i++) {
			        // Save detail content slider
			        // multiple data
			        $array_col_val_slider_detail = array(
			        	'SLIDER_ID' => $website_slider_id,
			        	'TITLE'     => @$array_title[$i],
			        	'CONTENT'   => @$array_content[$i],
			        	'FILE_NAME' => @$multiple_files[$i]['file_name'],
			        	'PATH'      => 'uploads/slider/'.@$multiple_files[$i]['file_name'],
			        	'STATUS'    => 'N',
			        	'IS_DELETE' => 0
			        );

			        $this->Slider_detail_model->save($array_col_val_slider_detail);
		    	}

		        $this->session->set_flashdata('error_message', alert_success('Upload file succeded.'));
		        redirect("slider");
	        } else {
	    		$this->session->set_flashdata('error_message', alert_danger('Sorry, upload is aborted, because your file not corret. Please try again!'));
	    		redirect("slider");
	    	}
    	}

    	$this->session->set_flashdata('error_message', alert_danger('Sorry, upload canceled. Please check your file extension before uploading.'));
    	redirect("slider");
	}

	public function update($id=0) 
	{

        $config['upload_path']   = './uploads/slider';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $config['max_size']      = 100000; // 100Mb
        $config['max_width']     = 4000;
        $config['max_height']    = 4000;

		$this->load->library('upload', $config);

		// multiple data
        $slider_name     = $this->input->post("slider_name");
        $array_title     = $this->input->post("title");
        $array_content   = $this->input->post("content");
        $array_detail_id = $this->input->post("slider_detail_id");

        $multiple_files  = array();
        // multiple files
		$array_upload   = reArrayFiles($_FILES['photo_upload']);
        $filesCount = count($array_upload);
        for($i = 0; $i < $filesCount; $i++) {

        	/* RE-INITIALIZE $_FILES & UPLOAD AGAIN */
        	/* userfile is default variable value set from codeigniter */
            $_FILES['userfile']['name']     = $_FILES['photo_upload']['name'][$i];
            $_FILES['userfile']['type']     = $_FILES['photo_upload']['type'][$i];
            $_FILES['userfile']['tmp_name'] = $_FILES['photo_upload']['tmp_name'][$i];
            $_FILES['userfile']['error']    = $_FILES['photo_upload']['error'][$i];
            $_FILES['userfile']['size']     = $_FILES['photo_upload']['size'][$i];

            if($this->upload->do_upload()) {
        		$multiple_files[] = $this->upload->data();
            } else {
            	$multiple_files[] = $this->upload->display_errors();
            }
        }

        // header file
		$name    = $this->input->post('slider_name');

		$insert = array(
			'NAME'     => stripslashes($name),
			'IS_DELETE' => 0,
		);

		$this->Slider_model->update($insert,$id);

		/* clear old data if not in array_detail_id */
		$this->Slider_detail_model->delete_by_ref_not_in($array_detail_id,$id);

		/* selection file is same */
        $count_title     = count($array_title);
        $count_upload    = count($multiple_files);
        $count_content   = count($array_content);
        $count_detail_id = count($array_detail_id);

        $match_equals  = ($count_title+$count_upload+$count_content+$count_detail_id) / 4;

        $error_message = array();

        if(($count_title == $match_equals) && ($count_upload == $match_equals) && ($count_content == $match_equals) && ($count_detail_id == $match_equals)) {

	        for($i=0; $i < $match_equals; $i++) {
		        // Save detail content slider
		        // multiple data
		        $array_col_val_slider_detail = array(
		        	'SLIDER_ID' => (int)$id,
		        	'TITLE'     => isset($array_title[$i]) ? $array_title[$i] : '' ,
		        	'CONTENT'   => isset($array_content[$i]) ? $array_content[$i] : '',
		        	'FILE_NAME' => isset($multiple_files[$i]['file_name']) ? $multiple_files[$i]['file_name'] : '' ,
		        	'PATH'      => 'uploads/slider/'.(isset($multiple_files[$i]['file_name']) ? $multiple_files[$i]['file_name'] : '' )
		        );

		        /* unset if no upload photo or file */
		        if(!isset($multiple_files[$i]['file_name'])) {
		        	unset($array_col_val_slider_detail['FILE_NAME']);
		        	unset($array_col_val_slider_detail['PATH']);
		        	$error_message[] = $array_upload[$i];
		        }

		        $slider_detail_id = (int)$array_detail_id[$i];

		        if($this->Slider_detail_model->get_item_by_id($slider_detail_id)->num_rows() > 0) {
		        	$this->Slider_detail_model->update($array_col_val_slider_detail,$slider_detail_id);
		        } else {
		        	$this->Slider_detail_model->save($array_col_val_slider_detail);
		        }

		        
	    	}
        }

        if(count($error_message) >0) {
        	$msg_error = '';
        	$number    = 1;
        	foreach($error_message as $key => $val) {
        		if(!empty($val['name']) && !empty($val['type'])) {
        			$msg_error .= $number.'.) <strong>File name : </strong>'.$val['name'].', <strong>because file type : </strong>'.$val['type'].'<br />';
        			$number++;
        		}
        	}

        	if(empty($msg_error)) {
         		$msg_error .= alert_success('Upload file succeded.');
        	} else {
        		$msg_error = alert_danger('<strong>Upload is aborted : </strong><br /> '.$msg_error);
        	}

         } else {
         	$msg_error .= alert_success('Upload file succeded.');
         }

         $this->session->set_flashdata('error_message', $msg_error);

		redirect("slider");
	}

	public function page_list_rest()
	{
		$query = $this->Slider_model->get_all_items(100,0);
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

	public function get_item_by_id_rest($ref_id=0)
	{
		$query = $this->Slider_detail_model->get_items_by_ref($ref_id);
		header('Content-Type: application/json');
		echo json_encode($query->result());
	}

	public function active_slider($id=0)
	{
		// disable all data
		$this->Slider_model->update_all(array('STATUS'   => 'N'));
		$this->Slider_detail_model->update_all(array('STATUS'   => 'N'));

		// active data
		$this->Slider_model->update(array('STATUS'   => 'Y'),$id);
		$this->Slider_detail_model->update_all_by_ref(array('STATUS'   => 'Y'),$id);

		$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		redirect("slider");
	}

	public function disable_slider($id=0)
	{
		// disable all data
		$this->Slider_model->update_all(array('STATUS'   => 'N'));
		$this->Slider_detail_model->update_all(array('STATUS'   => 'N'));

		// disable data
		$this->Slider_model->update(array('STATUS'   => 'N'),$id);
		$this->Slider_detail_model->update_all_by_ref(array('STATUS'   => 'N'),$id);

		$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		redirect("slider");
	}
}