<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Client extends MY_Controller 
{
	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("client_user/Client_user_model"));

		$this->data['html_css'] = '';

    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();
				});

				function newClient()
				{
					window.open("'.base_url().'index.php/client/add","_self");
				}

				function editClient()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/client/edit/"+row.CLIENT_ID,"_self");
				}

				function destroyClient()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/client/delete/"+row.CLIENT_ID,"_self");
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
	{}

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
				$o->client_user_id       = $row->USER_ID;
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