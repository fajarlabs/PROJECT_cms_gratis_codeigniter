<?php 

class Client extends MY_Controller 
{
	private $data = array();

	public function __construct() 
	{
		parent::__construct();

		$this->load->model(array("client_user/Client_user_model"));

		if(empty(get_client_session())) {
			$allow = array();

			// allow URI auth for login
			if($this->uri->segment(2) == 'auth'){
				$allow[$this->uri->segment(2)] = true;
			} 

			// if allow is empty client redirecting to client room
			if((count($allow) > 0) == false) {
				$this->session->set_flashdata('error_login_client', 'Please login first');
				redirect('/company/page/client-room');
			}
		}

		$this->data['html_css'] = '
    		<style>
    			.textbox .textbox-text {
    				color : #000;
    			}

    			.textbox {
    				border : 1px solid #CCD0D6;
    			}
    		</style>';
		    
			$this->data['html_css'] .= '.form-horizontal .control-label{
										  /* text-align:right; */
										  text-align:left;
										  background-color:#ffa;
										}';
		$this->data['html_js'] = '
			<script>
			    $(document).ready(function() {

			        App.init();
			        Dashboard.init();
			        FormWizard.init();
			        FormPlugins.init();
			        //$("#general-form").addClass("active");
			    });

				  $(".selectpicker").on("change", function(){
				    var selected = $(this).find("option:selected").val();
				    alert(selected);
				  });

				$(document).ready(function() {
					App.init();

					// masking 
					$(".format-date").mask("00/00/0000", {placeholder: "__/__/____"});

					// datebox + masking
					$(".datebox").datebox({  required:true }).datebox("textbox").mask("99/99/9999",{placeholder:" "}); 
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

				tinymce.init({
				    selector: "textarea",
				    plugins: [
				        "advlist autolink lists link image charmap print preview anchor",
				        "searchreplace visualblocks code fullscreen",
				        "insertdatetime media table contextmenu paste"
				    ],
				    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | code"

			</script>
			
			<script>
				$(document).ready(function() {
					App.init();
				});
				
				$("#upload_stuff").fileinput({previewClass:"","showUpload": false});
				$("#upload_stuff").trigger("change");
				
				function newDataPelni()
				{
					window.open("'.base_url().'index.php/client_form","_self");
				}

				function editDataPelni()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/client_form/edit/"+row.id_info,"_self");
				}

				function deleteDataPelni()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/client_form/delete/"+row.id_info,"_self");
					}
				}
				
				function viewDataPelni()
				{					
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/client_form/view/"+row.id_info,"_self");
				}	
			</script>';
	}

	public function index() 
	{
		$this->data['title'] = "Home";
		$this->data['oclient'] = $this->session->userdata("oclient");
		$this->load->view("client/header",$this->data);
		$this->load->view("home", $this->data);
		$this->load->view("client/footer", $this->data);
	}

	public function page($p="default") 
	{
		$this->data['oclient'] = $this->session->userdata("oclient");
		$this->load->view("client/header",$this->data);
		switch($p) {
			case "home" :
				$this->data['title'] = "Home";
				$this->load->view("home", $this->data);
			break;
			case "general-form" :
				$this->data['title'] = "General Form";
				$this->load->view("general-form", $this->data);
			break;
			case "list-pelni-data" :
			
		$this->load->model('InfoDao');	
		$this->data['title']     = "Data List";
		$this->data['all_items'] = $this->InfoDao->get_all_items(100,0);
		$this->load->view("pelni_data_view",$this->data);
		
			break;
			case "pelni-form" :
				$this->data['csrf'] = array(
					'name' => $this->security->get_csrf_token_name(),
					'hash' => $this->security->get_csrf_hash()
				);
				$this->data['html_js'] .= '<script type="text/javascript">
												$(function() {
												    $(".datepicker").datetimepicker({
												      format: "DD-MM-YYYY",
													  pickTime: false
												    });
												});
										   </script>';
				$this->load->model('InfoDao');
				$this->data['title'] = "Pelni Form";
				$this->data['list_vessel']=$this->InfoDao->get_all_vessel();
				$this->data['list_port']=$this->InfoDao->get_all_port();
				$this->load->view("pelni-form", $this->data);
			break;
			case "pelni-form-edit" :
				$this->data['csrf'] = array(
					'name' => $this->security->get_csrf_token_name(),
					'hash' => $this->security->get_csrf_hash()
				);
				$this->data['html_js'] .= '<script type="text/javascript">
												$(function() {
												    $(".datepicker").datetimepicker({
												      format: "DD-MM-YYYY",
													  pickTime: false
												    });
												});
										   </script>';
				$this->load->model('InfoDao');
				$this->data['title'] = "Edit Pelni Form";
				//$id=$this->input->get('id');
				$id = $this->uri->segment(4);				
				$this->data['get_item']=$this->InfoDao->get_pelni_by_id($id);
				$this->data['list_vessel']=$this->InfoDao->get_all_vessel();
				$this->data['list_port']=$this->InfoDao->get_all_port();
				$this->load->view("pelni-edit-form", $this->data);
			break;
			case "pelni-form-delete" :
				$this->load->model('InfoDao');
				$id = $this->uri->segment(4);	
				$this->InfoDao->delete_by_id($id);
				redirect('/client/page/list-pelni-data', 'refresh');				
			break;
			case "pelni-form-view" :
				$this->load->model('InfoDao');
				$this->data['title'] = "View Detil Data";
				$id = $this->uri->segment(4);
				$this->data['get_item']=$this->InfoDao->get_pelni_by_id($id);
				$this->data['get_item_formula']=$this->InfoDao->get_formula_pelni_by_id($id);
				$this->data['list_vessel']=$this->InfoDao->get_all_vessel();
				$this->data['list_port']=$this->InfoDao->get_all_port();
				$this->load->view("pelni_detil_view", $this->data);
			break;
			case "pertamina-form" :
				$this->data['csrf'] = array(
					'name' => $this->security->get_csrf_token_name(),
					'hash' => $this->security->get_csrf_hash()
				);
				$this->data['title'] = "Pertamina Form";
				$this->load->view("pertamina-form", $this->data);
			break;
			case "pelni-report" :
				$this->load->view("pelni-report", $this->data);
			break;
			case "pln-form" :
				$this->data['csrf'] = array(
					'name' => $this->security->get_csrf_token_name(),
					'hash' => $this->security->get_csrf_hash()
				);
				$this->data['title'] = "Pln Form";
				$this->load->view("pln-form", $this->data);
			break;
			default :
				$this->data['title'] = "Error 404";
				$this->load->view("error-404", $this->data);
			break;
		}
		$this->load->view("client/footer",$this->data);
	}

	public function method($m="default") 
	{
		switch($m) {
			case 'pelni_add' : 
				extract($this->input->post());
				$this->load->model('InfoDao');
				
				$this->form_validation->set_rules('vessel', 'Vessel', 'required');
				$this->form_validation->set_rules('port', 'Port', 'required');
				
				
		
				$date_loading_barge = date("Y-m-d", strtotime($date_loading_barge));
				$date_loading_pelni = date("Y-m-d", strtotime($date_loading_pelni));
				$def_terminal = date("Y-m-d", strtotime($def_terminal));
				$def_barge = date("Y-m-d", strtotime($def_barge));
				$def_ship = date("Y-m-d", strtotime($def_ship));
				
				/* $input=array(
					'VESSEL' => $vessel,
					'BARGE'  => $barge ,
					'PORT'   => $port,
					'DATE_LOADING_BARGE' => $date_loading_barge,
					'DATE_LOADING_PELNI' => $date_loading_pelni,
					'DEF_TERMINAL' => $def_terminal,
					'DEF_BARGE' => $def_barge,
					'DEF_SHIP' => $def_ship,
					'DELIV_ORDER_KL' => $deliv_order_kl ,
					'DELIV_ORDER_KL15' => $deliv_order_kl15 ,
					'OBQ_KL' => $obq_kl ,
					'OBQ_KL15' => $obq_kl15 ,
					'BAR_FIG_AFTERLOAD_KL' => $bar_fig_afterload_kl,
					'BAR_FIG_AFTERLOAD_KL15' => $bar_fig_afterload_kl15,
					'BAR_FIG_BFDC_KL' => $bar_fig_bfdc_kl,
					'BAR_FIG_BFDC_KL15' => $bar_fig_bfdc_kl15,
					'BAR_FIG_AFDC_KL' => $bar_fig_afdc_kl,
					'BAR_FIG_AFDC_KL15' => $bar_fig_afdc_kl15,
					'SHIP_REC_KL' => $ship_rec_kl,
					'SHIP_REC_KL15' => $ship_rec_kl15,
					'REMARKS' => $remarks,
					'CREATE_USER' => $create_user
				); */
				$config['upload_path']          = './uploads/profile';
				$config['allowed_types']        = 'gif|jpg|png';
				$config['max_size']             = 5000; // 5Mb
				$config['max_width']            = 1500;
				$config['max_height']           = 2100;

				$this->load->library('upload', $config);

				if ( ! $this->upload->do_upload('upload_file')) {
						$msg_upload = array('error' => $this->upload->display_errors());
				} else {
						$msg_upload = array('upload_data' => $this->upload->data());
				}
				
				$input=array(
					'vessel' => $vessel,
					'barge'  => $barge ,
					'port'   => $port,
					'date_loading_barge' => $date_loading_barge,
					'date_loading_pelni' => $date_loading_pelni,
					'def_terminal' => $def_terminal,
					'def_barge' => $def_barge,
					'def_ship' => $def_ship,
					'deliv_order_kl' => $deliv_order_kl ,
					'deliv_order_kl15' => $deliv_order_kl15 ,
					'obq_kl' => $obq_kl ,
					'obq_kl15' => $obq_kl15 ,
					'bar_fig_afterload_kl' => $bar_fig_afterload_kl,
					'bar_fig_afterload_kl15' => $bar_fig_afterload_kl15,
					'bar_fig_bfdc_kl' => $bar_fig_bfdc_kl,
					'bar_fig_bfdc_kl15' => $bar_fig_bfdc_kl15,
					'bar_fig_afdc_kl' => $bar_fig_afdc_kl,
					'bar_fig_afdc_kl15' => $bar_fig_afdc_kl15,
					'ship_rec_kl' => $ship_rec_kl,
					'ship_rec_kl15' => $ship_rec_kl15,
					'remarks' => $remarks,
					'create_user' => $create_user,
					'upload_file' => (is_array($msg_upload) ? $msg_upload['upload_data']['file_name'] : '')
				);
				
				$last_id = $this->InfoDao->save($input);
				$messge = array('message' => 'Data sukses diinput','class' => 'alert alert-success fade in');
				$this->session->set_flashdata('item', $messge);
				redirect('/client/page/list-pelni-data', 'refresh');
			break;
			case 'pelni_update' : 
				$id  = $this->input->post("id_info");
				extract($this->input->post());
				$this->load->model('InfoDao');
				
				$date_loading_barge = date("Y-m-d", strtotime($date_loading_barge));
				$date_loading_pelni = date("Y-m-d", strtotime($date_loading_pelni));
				$def_terminal = date("Y-m-d", strtotime($def_terminal));
				$def_barge = date("Y-m-d", strtotime($def_barge));
				$def_ship = date("Y-m-d", strtotime($def_ship));
				
				$config['upload_path']          = './uploads/profile';
				$config['allowed_types']        = 'gif|jpg|png';
				$config['max_size']             = 5000; // 5Mb
				$config['max_width']            = 1500;
				$config['max_height']           = 2100;

				$this->load->library('upload', $config);

				if ( ! $this->upload->do_upload('upload_file')) {
						$msg_upload = array('error' => $this->upload->display_errors());
				} else {
						$msg_upload = array('upload_data' => $this->upload->data());
				}
		
				$edit_data=array(
					'vessel' => $vessel,
					'barge'  => $barge ,
					'port'   => $port,
					'date_loading_barge' => $date_loading_barge,
					'date_loading_pelni' => $date_loading_pelni,
					'def_terminal' => $def_terminal,
					'def_barge' => $def_barge,
					'def_ship' => $def_ship,
					'deliv_order_kl' => $deliv_order_kl ,
					'deliv_order_kl15' => $deliv_order_kl15 ,
					'obq_kl' => $obq_kl ,
					'obq_kl15' => $obq_kl15 ,
					'bar_fig_afterload_kl' => $bar_fig_afterload_kl,
					'bar_fig_afterload_kl15' => $bar_fig_afterload_kl15,
					'bar_fig_bfdc_kl' => $bar_fig_bfdc_kl,
					'bar_fig_bfdc_kl15' => $bar_fig_bfdc_kl15,
					'bar_fig_afdc_kl' => $bar_fig_afdc_kl,
					'bar_fig_afdc_kl15' => $bar_fig_afdc_kl15,
					'ship_rec_kl' => $ship_rec_kl,
					'ship_rec_kl15' => $ship_rec_kl15,
					'remarks' => $remarks,
					'upload_file' => (is_array($msg_upload) ? $msg_upload['upload_data']['file_name'] : '')
				);
				
				if(isset($msg_upload['error'])) {
					unset($edit_data['upload_file']);
				}
		
				$last_id = $this->InfoDao->update($edit_data,$id);
				$messge = array('message' => 'Data sukses diinput','class' => 'alert alert-success fade in');
				$this->session->set_flashdata('item', $messge);
				redirect('/client/page/list-pelni-data', 'refresh');
			break;
			default : 
			break;
		}
	}

	public function auth() 
	{
		$username   = $this->input->post("un");
		$password   = $this->input->post("ps");
		$query_auth = $this->Client_user_model->get_user_pass_client_id($username, md5($password));
		
		if($query_auth->num_rows() > 0) {

			foreach($query_auth->result() as $row) {

				if($row->STATUS == 'N') {
					$this->session->set_flashdata('error_login_client', 'Your account is suspended!');
					redirect('company/page/client-room', 'refresh');
				}

				$o = new stdClass();
				$o->client_username      = $row->USERNAME;
				$o->client_firstname     = $row->FIRST_NAME;
				$o->client_lastname      = $row->LAST_NAME;
				$o->client_email         = $row->EMAIL;
				$o->client_phone_number  = $row->PHONE;
				$o->client_photo         = base_url().'uploads/profile/'.$row->PHOTO;
				$o->client_create_time   = $row->CREATE_TIME;
				$o->client_modify_time   = $row->MODIFY_TIME;
				$o->client_status        = $row->STATUS;
				$o->client_site_id       = $row->CLIENT_SITE_ID;
				$o->client_site_name     = $row->CLIENT_SITE_NAME;
				$o->client_logo          = $row->CLIENT_LOGO;
				$o->client_logo_height   = $row->CLIENT_LOGO_HEIGHT;
				$o->client_logo_width    = $row->CLIENT_LOGO_WIDTH;
				$o->client_wallpaper     = $row->CLIENT_WALLPAPER;
				$o->client_group_name    = $row->GROUP_NAME;
				$o->client_group_id      = $row->GROUP_ID;

				$this->session->set_userdata("oclient",$o);
			}	
			redirect('/client_dashboard', 'refresh');
		} else {
			$this->session->set_flashdata('error_login_client', 'Username or password incorrect !');
			redirect('/login', 'refresh');
		}
	}

	public function logout() 
	{
		$this->session->unset_userdata('oclient');
		redirect();
	}
}