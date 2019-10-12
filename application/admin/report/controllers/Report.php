<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Report extends MY_Controller
{
	private $data = array();

	public function  __construct()
	{
		parent::__construct();
		// kick if session is expired
		if(empty(get_admin_session())) {
			$this->session->set_flashdata('error_message', alert_success('Session expired'));
			redirect('company');
		}

		$this->data['csrf'] = array(
			'name' => $this->security->get_csrf_token_name(),
			'hash' => $this->security->get_csrf_hash()
		);
		$this->data['html_css'] = '
			<style>
				.modal.modal-wide .modal-dialog {
				  width: 90%;
				}
				.modal-wide .modal-body {
				  overflow-y: auto;
				}

				#exampleModalDownload .modal-body p { margin-bottom: 900px }
			</style>
		';
    	$this->data['html_js'] = '
			<script>
				$(document).ready(function() {
					App.init();

					// datagrid
					var dg = $("#dg")
					dg.datagrid({
					  pagination:true,
					  remoteFilter:true
					});
					dg.datagrid("enableFilter");
					dg.datagrid("removeFilterRule", "VESSEL_NAME");

				});
				
				$(function(){
				  $(\'#dg\').datagrid({
					data: data,
					singleSelect: true,
					onRowContextMenu: function(e,index,row){
					  $(this).datagrid(\'selectRow\',index);
					  e.preventDefault();
					  $(\'#mm\').menu(\'show\', {
						left:e.pageX,
						top:e.pageY
					  });
					}
				  })
				})
			</script>';
	}

	public function index()
	{

        $this->data['site_id']     = $this->session->userdata("site_id");
        $this->data['site_name']   = $this->session->userdata("site_name");

		$this->load->view('admin/header',$this->data);
		$this->load->view('report',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

}