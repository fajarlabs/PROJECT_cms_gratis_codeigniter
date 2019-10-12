<?php

class Client_report extends CI_Controller
{
	private $data = array();

	public function  __construct()
	{
		parent::__construct();
		$this->load->model(array("report/Report_model","client_site/Client_site_model"));
		$this->load->helper(array("cetak_report_helper"));
		// kick if session is expired
		if(empty(get_client_session())) {
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

			</script>';
	}

	public function index()
	{
        $this->data['site_id']     = get_client_site_id();
        $this->data['site_name']   = get_client_site_name();

		$this->load->view('client/header',$this->data);
		$this->load->view('client_report',$this->data);
		$this->load->view('client/footer',$this->data);
	}

	public function list_rest()
	{
		/* get datagrid limit offset */
		$page   = $this->input->post('page');
		$rows   = $this->input->post('rows');
		$offset = $page < 2 ? 1 : $page;
		$offset = ($rows * $offset) - $rows; 
		$filterRules = $this->input->post('filterRules');
		
		if($filterRules==""){	
			$filterRules = '[{"field":"CLIENT","op":"contains","value":"'.strtolower($_GET['client']).'"}]';
		}
		else if($filterRules=="[]"){	
			$filterRules = '[{"field":"CLIENT","op":"contains","value":"'.strtolower($_GET['client']).'"}]';
		}
		else {
			$filterRules	= str_replace("[","",$filterRules);
			$filterRules	= str_replace("]","",$filterRules);
			$client = ',{"field":"CLIENT","op":"contains","value":"'.strtolower($_GET['client']).'"}';
			$filterRules .= $client;
			$filterRules = "[".$filterRules."]";
		}
		
		
		
		/* get query */
		$total = 0;
		$json_object = new stdClass();
		
		$query_items = @$this->Report_model->get_all_items($offset,$rows,$filterRules);
		$array_list  = array();
		if($query_items->num_rows() > 0) {

			$i=0;
			foreach($query_items->result() as $row) {
				if($i > 2) {
					break;
				}
				$row->KONTRAK = implode(", ",json_decode($row->KONTRAK));
				$row->SPK = implode(", ",json_decode($row->SPK));
				$row->SURVEYOR_IN_CHARGE = implode(", ",json_decode($row->SURVEYOR_IN_CHARGE));
				$row->CTIME  = date('d-m-Y H:i:s',strtotime($row->CTIME));
				$row->FUNGSI = '<a href="'.base_url().'index.php/client_report/detil/'.$row->FEFID.'" class="btn btn-primary btn-xs"><i class="fa fa-eye"> View</i></a> '; 
				$row->FUNGSI .= '<a href="javascript:;" onclick="callModal('.$row->FEFID.')" class="btn btn-success btn-xs"><i class="fa fa-print"></i> Print</a>'; 
				$row->PRODUCT_TYPE = $this->get_product_name($row->PRODUCT_TYPE);
				$row->SELECT_CARGO = ucwords(str_replace("_", " ", $row->SELECT_CARGO));
				$array_list[] = $row;
				$i++;
			}
		}
		$json_object->rows = $array_list;
		$json_object->total = $this->Report_model->count_all_items($this->session->userdata("site_id"),$filterRules);

		header('Content-Type: application/json');
		echo json_encode($json_object);
	}
	
	public function get_product_name($id){
				$data ="";
				$arr = $this->Report_model->get_product_name($id);
				foreach ($arr as $key => $value) {
				 	$data =  $value->PRODUCT_NAME;
				}
			return $data;
	}

	
	public function detil($id_item)
	{
        $query_site = $this->Client_site_model->get_item_by_id($this->input->post("site_id"));
        if($query_site->num_rows() > 0) {
        	foreach($query_site->result() as $row) {
        		$this->session->set_userdata('site_id',$row->CLIENT_SITE_ID);
        		$this->session->set_userdata('site_name',$row->CLIENT_SITE_NAME);
        	}
        }

		$intervensi_id="";
		$product_type="";	
		$intervention=$this->Report_model->get_intervention($id_item);
		if($intervention->num_rows() > 0) {
        	foreach($intervention->result() as $row) {
        		$intervensi_id	= $row->SELECT_INTERVENTION;		
        		$product_type	= $row->PRODUCT_TYPE;	
        	}
        }
        // $intervensi = 25;
		switch($intervensi_id){
			case 14:	// loading
				$tplreport='report_loading_detil';
				break;
			case 15:   // discharge
				$tplreport='report_discharge_detil';
				break;
			case 25:   // bunker vessel
				$tplreport='report_bunker_vessel_detil';
				break;
			case 21:   // bunker pipe
				$tplreport='report_bunker_pipe_detil';
				break;
		}
		$this->data['onclick_report'] = "../cetak/$id_item"; // button report		
        $this->data['site_id']     = $this->session->userdata("site_id");
        $this->data['site_name']   = $this->session->userdata("site_name");
		$this->data['item']  = $this->Report_model->get_item_primary($id_item);
		$this->data['el_connection_timelog']  = get_filter_timelog($product_type,$intervensi_id);
		$this->data['form_layout'] = 'list';
		$this->load->view('client/header',$this->data);
		$this->load->view($tplreport,$this->data);
		$this->load->view('client/footer',$this->data);
	}
	
	public function cetak($id_item)
	{
		
		$query_site = $this->Report_model->get_item_primary($id_item);
        if($query_site->num_rows() > 0) {
			$intervensi_id="";
			$product_type="";
			$intervention=$this->Report_model->get_intervention($id_item);
			if($intervention->num_rows() > 0) {
				foreach($intervention->result() as $row) {
					$intervensi_id	= $row->SELECT_INTERVENTION;		
					$product_type	= $row->PRODUCT_TYPE;		
				}
			}
			$this->data['el_connection_timelog']  = get_filter_timelog($product_type,$intervensi_id);
        	foreach($query_site->result() as $row) {
        		$ref="REPORT-00000".check_exist($row->ID);

        		//Principal
        		$data_pr ="";
			      $arr_pr =  json_decode($row->KONTRAK);
			      foreach ($arr_pr as $key => $value) {
			        $data_pr .=$value.", ";
			      }
			     $kontrak = rtrim($data_pr, ', ');

			     //Voyage
			    $data_voy ="";
			      $arr_voy =  json_decode($row->VOY);
			      foreach ($arr_voy as $key => $value) {
			        $data_voy .=$value.", ";
			      }
			     $voyage =  rtrim($data_voy, ', '); 
 
				$file_order	= check_exist($row->FILE_ORDER);
				$iwo		= check_exist($row->IWO);
				$area		= check_exist($row->AREA);
				$vessel		= check_exist($row->VESSEL);
				$prodak		= check_exist($row->PRODUCT);
				
				$lsd_start_date=check_exist_date($row->LOADING_START_DATE);
				$lsd_start_time=check_exist($row->LOADING_START_TIME);
				$lsd_end_date=check_exist_date($row->LOADING_COMPLETE_DATE);
				$lsd_end_time=check_exist($row->LOADING_COMPLETE_TIME);
				
				$dsc_start_date=check_exist_date($row->DISCHARGE_START_DATE);
				$dsc_start_time=check_exist_date($row->DISCHARGE_START_TIME);
				$dsc_end_date=check_exist_date($row->DISCHARGE_COMPLETE_DATE);
				$dsc_end_time=check_exist($row->DISCHARGE_COMPLETE_TIME);
				
				$bl_start_date=check_exist_date($row->BL_START_DATE);
				
				$surveyoric=$row->SURVEYOR_IN_CHARGE;
				$lcd=$row->lcd;
				$blsd=$row->blsd;
				
			$time_log_data='';
			 foreach($this->data['el_connection_timelog'] as $key => $value){  
						$label = str_replace('_',' ',substr($value[0],5));
				$time_log_data .='<tr>
					<td class="span">'.ucwords(strtolower($label)).'</td>
					<td class="span">&nbsp;</td>
					<td class="span">'.check_exist_date($row->$value[1]).'</td>
					<td class="span">&nbsp;</td>
					<td class="span">'.check_exist($row->$value[0]).'</td>
					<td class="span" colspan="2">'.check_exist($row->$value[2]).'</td>
				  </tr>';
					}

				
				
				$bl_flow_meter		= ($row->BL_FLOW_METER=="Y"  ? "V"  : "X");
				$bl_shore_tank		= ($row->BL_SHORE_TANK=="Y"  ? "V"  : "X");
				$bl_ship_tank		= ($row->BL_SHIP_TANK=="Y"  ? "V"  : "X");
				
				$bl_quantity_klobs	= check_exist(number_format((float)$row->BL_QUANTITY_KLOBS, 3, '.', ''));
				$bl_quantity_kl15 	= check_exist(number_format((float)$row->BL_QUANTITY_KL15, 3, '.', ''));
				$bl_quantity_bbls 	= check_exist(number_format((float)$row->BL_QUANTITY_BBLS, 3, '.', ''));
				$bl_quantity_metricton = check_exist(number_format((float)$row->BL_QUANTITY_METRICTON, 3, '.', ''));
				$bl_quantity_longton  =  check_exist(number_format((float)$row->BL_QUANTITY_LONGTON, 3, '.', ''));
				
				$bl_gsv_klobs	= check_exist(number_format((float)$row->BL_QUANTITY_KLOBS, 3, '.', ''));
				$bl_gsv_kl15 	= check_exist(number_format((float)$row->BL_QUANTITY_KL15, 3, '.', ''));
				$bl_gsv_bbls  	= check_exist(number_format((float)$row->BL_QUANTITY_BBLS, 3, '.', ''));
				$bl_gsv_metricton = check_exist(number_format((float)$row->BL_QUANTITY_METRICTON, 3, '.', ''));
				$bl_gsv_longton  =  check_exist(number_format((float)$row->BL_QUANTITY_LONGTON, 3, '.', ''));
				
				$bl_nsv_klobs	= check_exist(number_format((float)$row->BL_NSV_KLOBS, 3, '.', ''));
				$bl_nsv_kl15 	= check_exist(number_format((float)$row->BL_NSV_KL15, 3, '.', ''));
				$bl_nsv_bbls 	= check_exist(number_format((float)$row->BL_NSV_BBLS, 3, '.', ''));
				$bl_nsv_metricton = check_exist(number_format((float)$row->BL_NSV_METRICTON, 3, '.', ''));
				$bl_nsv_longton  =  check_exist(number_format((float)$row->BL_NSV_LONGTON, 3, '.', ''));
				
				$bl_15_derajat_cel	= check_exist(number_format((float)$row->BL_15_DERAJAT_CELCIUS, 3, '.', ''));
				
				$sf_quantity_klobs = check_exist(number_format((float)$row->SF_QUANTITY_KLOBS, 3, '.', ''));
				$sf_quantity_kl15 = check_exist(number_format((float)$row->SF_QUANTITY_KL15, 3, '.', ''));
				$sf_quantity_bbls = check_exist(number_format((float)$row->SF_QUANTITY_BBLS, 3, '.', ''));
				$sf_quantity_metricton = check_exist(number_format((float)$row->SF_QUANTITY_METRICTON, 3, '.', ''));
				$sf_quantity_longton =  check_exist(number_format((float)$row->SF_QUANTITY_LONGTON, 3, '.', ''));
				
				$st_nomination =  check_exist(number_format((float)$row->ST_NOMINATION, 3, '.', ''));
				
				
				$obq_quantity_klobs = check_exist(number_format((float)$row->OBQ_QUANTITY_KLOBS, 3, '.', ''));
				$obq_quantity_kl15 = check_exist(number_format((float)$row->OBQ_QUANTITY_KL15, 3, '.', ''));
				$obq_quantity_bbls = check_exist(number_format((float)$row->OBQ_QUANTITY_BBLS, 3, '.', ''));
				$obq_quantity_metricton = check_exist(number_format((float)$row->OBQ_QUANTITY_METRICTON, 3, '.', ''));
				$obq_quantity_longton = check_exist(number_format((float)$row->OBQ_QUANTITY_LONGTON, 3, '.', ''));
				
				
				$sfal_tov_klobs = check_exist(number_format((float)$row->SFAL_TOV_KLOBS, 3, '.', ''));
				$sfal_tov_kl15 = check_exist(number_format((float)$row->SFAL_TOV_KL15, 3, '.', ''));
				$sfal_tov_bbls = check_exist(number_format((float)$row->SFAL_TOV_BBLS, 3, '.', ''));
				$sfal_tov_metricton = check_exist(number_format((float)$row->SFAL_TOV_METRICTON, 3, '.', ''));
				$sfal_tov_longton = check_exist(number_format((float)$row->SFAL_TOV_LONGTON, 3, '.', ''));				
				
				$fwal_klobs = check_exist(number_format((float)$row->FWAL_KLOBS, 3, '.', ''));
			    $fwal_kl15 = check_exist(number_format((float)$row->FWAL_KL15, 3, '.', ''));
			    $fwal_bbls = check_exist(number_format((float)$row->FWAL_BBLS, 3, '.', ''));
			    $fwal_metricton = check_exist(number_format((float)$row->FWAL_METRICTON, 3, '.', ''));
			    $fwal_longton = check_exist(number_format((float)$row->FWAL_LONGTON, 3, '.', ''));
			    
				$vef_loading_bbls = check_exist(number_format((float)$row->VEF_LOADING_BBLS, 3, '.', ''));
				$sl_applied_vefl_bbls = check_exist(number_format((float)$row->SL_APPLIED_VEFL_BBLS, 3, '.', ''));
				
				$sl_vs_bol_r1_klobs =  check_exist(number_format((float)$row->SL_VS_BOL_R1_KLOBS, 3, '.', ''));
				$sl_vs_bol_r1_kl15 =  check_exist(number_format((float)$row->SL_VS_BOL_R1_KL15, 3, '.', ''));
				$sl_vs_bol_r1_bbls =  check_exist(number_format((float)$row->SL_VS_BOL_R1_BBLS, 3, '.', ''));
				$sl_vs_bol_r1_metricton =  check_exist(number_format((float)$row->SL_VS_BOL_R1_METRICTON, 3, '.', ''));
				$sl_vs_bol_r1_longton =  check_exist(number_format((float)$row->SL_VS_BOL_R1_LONGTON, 3, '.', ''));
				
				$sl_vef_applied_vs_bol_klobs 	=  check_exist(number_format((float)$row->SL_VEF_APPLIED_VS_BOL_KLOBS, 3, '.', ''));
				$sl_vef_applied_vs_bol_kl15 	=  check_exist(number_format((float)$row->SL_VEF_APPLIED_VS_BOL_KL15, 3, '.', ''));
				$sl_vef_applied_vs_bol_bbls 	=  check_exist(number_format((float)$row->SL_VEF_APPLIED_VS_BOL_BBLS, 3, '.', ''));
				$sl_vef_applied_vs_bol_metricton =  check_exist(number_format((float)$row->SL_VEF_APPLIED_VS_BOL_METRICTON, 3, '.', ''));
				$sl_vef_applied_vs_bol_longton 	 =  check_exist(number_format((float)$row->SL_VEF_APPLIED_VS_BOL_LONGTON, 3, '.', ''));
				
				
				$sfal_vs_sfbd_r2_klobs 	=  check_exist(number_format((float)$row->SFAL_VS_SFBD_R2_KLOBS, 3, '.', ''));
				$sfal_vs_sfbd_r2_kl15 	=  check_exist(number_format((float)$row->SFAL_VS_SFBD_R2_KL15, 3, '.', ''));
				$sfal_vs_sfbd_r2_bbls 	=  check_exist(number_format((float)$row->SFAL_VS_SFBD_R2_BBLS, 3, '.', ''));
				$sfal_vs_sfbd_r2_metricton =  check_exist(number_format((float)$row->SFAL_VS_SFBD_R2_METRICTON, 3, '.', ''));
				$sfal_vs_sfbd_r2_longton 	 =  check_exist(number_format((float)$row->SFAL_VS_SFBD_R2_LONGTON, 3, '.', ''));
				
				
				$sfbd_vs_sr_r3_klobs = check_exist(number_format((float)$row->SFBD_VS_SR_R3_KLOBS, 3, '.', ''));
				$sfbd_vs_sr_r3_kl15 = check_exist(number_format((float)$row->SFBD_VS_SR_R3_KL15, 3, '.', ''));
				$sfbd_vs_sr_r3_bbls = check_exist(number_format((float)$row->SFBD_VS_SR_R3_BBLS, 3, '.', ''));
				$sfbd_vs_sr_r3_metricton = check_exist(number_format((float)$row->SFBD_VS_SR_R3_METRICTON, 3, '.', ''));
				$sfbd_vs_sr_r3_longton = check_exist(number_format((float)$row->SFBD_VS_SR_R3_LONGTON, 3, '.', ''));
				
				$sr_vs_bol_r4_klobs = check_exist(number_format((float)$row->SR_VS_BOL_R4_KLOBS, 3, '.', ''));
				$sr_vs_bol_r4_kl15 = check_exist(number_format((float)$row->SR_VS_BOL_R4_KL15, 3, '.', ''));
				$sr_vs_bol_r4_bbls = check_exist(number_format((float)$row->SR_VS_BOL_R4_BBLS, 3, '.', ''));
				$sr_vs_bol_r4_longton = check_exist(number_format((float)$row->SR_VS_BOL_R4_LONGTON, 3, '.', ''));
				$sr_vs_bol_r4_metricton = check_exist(number_format((float)$row->SR_VS_BOL_R4_METRICTON, 3, '.', ''));
			
				
			    $sfal_klobs = check_exist(number_format((float)$row->SFAL_KLOBS, 3, '.', ''));
			    $sfal_kl15 = check_exist(number_format((float)$row->SFAL_KL15, 3, '.', ''));
			    $sfal_bbls = check_exist(number_format((float)$row->SFAL_BBLS, 3, '.', ''));
			    $sfal_metricton = check_exist(number_format((float)$row->SFAL_METRICTON, 3, '.', ''));
			    $sfal_longton = check_exist(number_format((float)$row->SFAL_LONGTON, 3, '.', ''));
				
				$sf_sq_klobs = check_exist(number_format((float)$row->SF_SQ_KLOBS, 3, '.', ''));
			    $sf_sq_kl15 = check_exist(number_format((float)$row->SF_SQ_KL15, 3, '.', ''));
			    $sf_sq_bbls = check_exist(number_format((float)$row->SF_SQ_BBLS, 3, '.', ''));
			    $sf_sq_metricton = check_exist(number_format((float)$row->SF_SQ_METRICTON, 3, '.', ''));
			    $sf_sq_longton = check_exist(number_format((float)$row->SF_SQ_LONGTON, 3, '.', ''));
				
				$sf_gsv_klobs = check_exist(number_format((float)$row->SF_GSV_KLOBS, 3, '.', ''));
				$sf_gsv_kl15 = check_exist(number_format((float)$row->SF_GSV_KL15, 3, '.', ''));
				$sf_gsv_bbls = check_exist(number_format((float)$row->SF_GSV_BBLS, 3, '.', ''));
				$sf_gsv_metricton = check_exist(number_format((float)$row->SF_GSV_METRICTON, 3, '.', ''));
				$sf_gsv_longton = check_exist(number_format((float)$row->SF_GSV_LONGTON, 3, '.', ''));
				
				$sf_nsv_klobs = check_exist(number_format((float)$row->SF_NSV_KLOBS, 3, '.', ''));
			    $sf_nsv_kl15 = check_exist(number_format((float)$row->SF_NSV_KL15, 3, '.', ''));
				$sf_nsv_bbls = check_exist(number_format((float)$row->SF_NSV_BBLS, 3, '.', ''));
				$sf_nsv_metricton = check_exist(number_format((float)$row->SF_NSV_METRICTON, 3, '.', ''));
				$sf_nsv_longton = check_exist(number_format((float)$row->SF_NSV_LONGTON, 3, '.', ''));
				
				
				$density15deg_klobs = check_exist(number_format((float)$row->DENSITY15DEG_KLOBS, 3, '.', ''));
				
				$cord_vol_delivered_klobs = check_exist(number_format((float)$row->CORD_VOL_DELIVERED_KLOBS, 3, '.', ''));
			    $cord_vol_delivered_kl15 = check_exist(number_format((float)$row->CORD_VOL_DELIVERED_KL15, 3, '.', ''));
				$cord_vol_delivered_metric_tons = check_exist(number_format((float)$row->CORD_VOL_DELIVERED_METRIC_TONS, 3, '.', ''));
				
				
				$supply_loss_klobs = check_exist(number_format((float)$row->SUPPLY_LOSS_KLOBS, 3, '.', ''));
			    $supply_loss_kl15 = check_exist(number_format((float)$row->SUPPLY_LOSS_KL15, 3, '.', ''));
				$supply_loss_metric_tons = check_exist(number_format((float)$row->SUPPLY_LOSS_METRIC_TONS, 3, '.', ''));
				
				$initial_readout_klobs = check_exist(number_format((float)$row->INITIAL_READOUT_KLOBS, 3, '.', ''));
			    $initial_readout_kl15 = check_exist(number_format((float)$row->INITIAL_READOUT_KL15, 3, '.', ''));
				$initial_readout_metric_tons = check_exist(number_format((float)$row->INITIAL_READOUT_METRIC_TONS, 3, '.', ''));
				
				$final_readout_klobs = check_exist(number_format((float)$row->FINAL_READOUT_KLOBS, 3, '.', ''));
			    $final_readout_kl15 = check_exist(number_format((float)$row->FINAL_READOUT_KL15, 3, '.', ''));
				$final_readout_metric_tons = check_exist(number_format((float)$row->FINAL_READOUT_METRIC_TONS, 3, '.', ''));
				
				$difference_klobs = check_exist(number_format((float)$row->DIFFERENCE_KLOBS, 3, '.', ''));
			    $difference_kl15 = check_exist(number_format((float)$row->DIFFERENCE_KL15, 3, '.', ''));
				$difference_metric_tons = check_exist(number_format((float)$row->DIFFERENCE_METRIC_TONS, 3, '.', ''));
				
				$meter_factor_klobs = check_exist(number_format((float)$row->METER_FACTOR_KLOBS, 3, '.', ''));
				
				
				$sf_sfal_klobs = check_exist(number_format((float)$row->SF_SFAL_KLOBS, 3, '.', ''));
				$sf_sfal_kl15 = check_exist(number_format((float)$row->SF_SFAL_KL15, 3, '.', ''));
				$sf_sfal_bbls = check_exist(number_format((float)$row->SF_SFAL_BBLS, 3, '.', ''));
				$sf_sfal_metricton = check_exist(number_format((float)$row->SF_SFAL_METRICTON, 3, '.', ''));
				$sf_sfal_longton = check_exist(number_format((float)$row->SF_SFAL_LONGTON, 3, '.', ''));
				
				$sfbd_tov_klobs = check_exist(number_format((float)$row->SFBD_TOV_KLOBS, 3, '.', ''));
				$sfbd_tov_kl15 = check_exist(number_format((float)$row->SFBD_TOV_KL15, 3, '.', ''));
				$sfbd_tov_bbls = check_exist(number_format((float)$row->SFBD_TOV_BBLS, 3, '.', ''));
				$sfbd_tov_metricton = check_exist(number_format((float)$row->SFBD_TOV_METRICTON, 3, '.', ''));
				$sfbd_tov_longton = check_exist(number_format((float)$row->SFBD_TOV_LONGTON, 3, '.', ''));
				
				$free_water_klobs = check_exist(number_format((float)$row->FREE_WATER_KLOBS, 3, '.', ''));
				$free_water_kl15 = check_exist(number_format((float)$row->FREE_WATER_KL15, 3, '.', ''));
				$free_water_bbls = check_exist(number_format((float)$row->FREE_WATER_BBLS, 3, '.', ''));
				$free_water_metricton = check_exist(number_format((float)$row->FREE_WATER_METRICTON, 3, '.', ''));
				$free_water_longton = check_exist(number_format((float)$row->FREE_WATER_LONGTON, 3, '.', ''));
				
				$robq_klobs = check_exist(number_format((float)$row->ROBQ_KLOBS, 3, '.', ''));
				$robq_kl15 = check_exist(number_format((float)$row->ROBQ_KL15, 3, '.', ''));
				$robq_bbls = check_exist(number_format((float)$row->ROBQ_BBLS, 3, '.', ''));
				$robq_metricton = check_exist(number_format((float)$row->ROBQ_METRICTON, 3, '.', ''));
				$robq_longton = check_exist(number_format((float)$row->ROBQ_LONGTON, 3, '.', ''));
				
			    $sfbd_nsv_klobs = number_format((float)$row->SFBD_NSV_KLOBS, 3, '.', '');
			    $sfbd_nsv_kl15 = number_format((float)$row->SFBD_NSV_KL15, 3, '.', '');
			    $sfbd_nsv_bbls = number_format((float)$row->SFBD_NSV_BBLS, 3, '.', '');
			    $sfbd_nsv_metricton = number_format((float)$row->SFBD_NSV_METRICTON, 3, '.', '');
			    $sfbd_nsv_longton = number_format((float)$row->SFBD_NSV_LONGTON, 3, '.', '');
				
				$activities_remarks =  check_exist($row->ACTIVITIES_REMARKS);
				$ship_sea_cond =  check_exist($row->SC);
				
				$bo_mfo_on_arrival =  check_exist($row->BO_MFO_ON_ARRIVAL);
				$bo_mdo_on_arrival =  check_exist($row->BO_MDO_ON_ARRIVAL);
				
				$bo_mfo_on_departure =  check_exist($row->BO_MFO_ON_DEPARTURE);
				$bo_mdo_on_departure =  check_exist($row->BO_MDO_ON_DEPARTURE);
				
				$sc_on_arrival_draft_fwd =  check_exist($row->SC_ON_ARRIVAL_DRAFT_FWD);
				$sc_on_arrival_draft_aft =  check_exist($row->SC_ON_ARRIVAL_DRAFT_AFT);
				$sc_on_arrival_draft_list =  check_exist($row->SC_ON_ARRIVAL_DRAFT_LIST);
				
				$sc_on_departure_draft_fwd =  check_exist($row->SC_ON_DEPARTURE_DRAFT_FWD);
				$sc_on_departure_draft_aft =  check_exist($row->SC_ON_DEPARTURE_DRAFT_AFT);
				$sc_on_departure_draft_list =  check_exist($row->SC_ON_DEPARTURE_DRAFT_LIST);
				
				
				$sample_source =  check_exist($row->SAMPLE_SOURCE);
				$date_of_analysis =  check_exist_date($row->DATE_OF_ANALYSIS);
				$fsoq =  check_exist($row->FSOQ);
				$rn_notice_issue =  check_exist($row->RN_NOTICE_ISSUE);
				$rn_letter_issue =  check_exist($row->RN_LETTER_ISSUE);
				$rn_statement_issue =  check_exist($row->RN_STATEMENT_ISSUE);
				}
        }
	
	$arr_prod=json_decode($prodak);
	if (is_array($arr_prod) || is_object($arr_prod))
	{
	$product='';
	$i=1;
	foreach($arr_prod as $key => $value){
		 $product.= $i.'. '.$value.'<br>' ;		
		$i++;
		}
	} else {
		$product= $prodak;
	}
	
	$arr_survey=json_decode($surveyoric);
	if (is_array($arr_survey) || is_object($arr_survey))
	{
	$survey='';
	$i=1;
	foreach($arr_survey as $key => $value){
		 $survey.= $i.'. '.$value.'<br>' ;
		$i++;		
		}
	} else {
		$survey= $surveyoric;
	}
	



	// create new PDF document
$pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

// set auto page breaks
$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// set some language-dependent strings (optional)
if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
    require_once(dirname(__FILE__).'/lang/eng.php');
    $pdf->setLanguageArray($l);
}

// ---------------------------------------------------------

// set font
$pdf->SetFont('helvetica', 'B', 20);

// add a page
$pdf->AddPage();

$pdf->SetFont('helvetica', '', 8);

$intervention=$this->Report_model->get_intervention($id_item);
		if($intervention->num_rows() > 0) {
        	foreach($intervention->result() as $row) {
        		$intervensi=$row->SELECT_INTERVENTION;		
        	}
        }
		 //$intervensi = 25;
		switch($intervensi){
			case 14: // LOADING
				$tbl = <<<EOD
<table border="0">
    <tr>
    <td colspan="7"><strong>LOADING SUMMARY</strong></td>
  </tr>
 
  <tr>
    <td colspan="7"><strong>I. GENERAL  INFORMATION</strong></td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td>Referensi</td>
    <td>:</td>
    <td colspan="5">$ref</td>
  </tr>
  <tr>
    <td>Principal</td>
    <td>:</td>
    <td colspan="5">$kontrak</td>
  </tr>
  <tr>
    <td>File Order</td>
    <td>:</td>
    <td colspan="5">$file_order</td>
  </tr>
  <tr>
    <td>IWO</td>
    <td>:</td>
    <td colspan="5">$iwo</td>
  </tr>
  <tr>
    <td>Vessel</td>
    <td>:</td>
    <td colspan="5">$vessel</td>
  </tr>
  <tr>
    <td>Voyage</td>
    <td>:</td>
    <td colspan="5">$voyage</td>
  </tr>
  <tr>
    <td>Location</td>
    <td>:</td>
    <td colspan="5">$area</td>
  </tr>
  <tr>
    <td valign="top">Product</td>
    <td valign="top">:</td>
    <td colspan="2" align="left" valign="top">$product</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Loading Date</td>
    <td>:</td>
    <td colspan="2">$lsd_start_date</td>
    <td colspan="3">s/d 
	 $lsd_end_date
	 </td>
  </tr>
   <tr>
    <td class="span">Discharge Date</td>
    <td class="span">:</td>
    <td colspan="2">$dsc_start_date</td>
     <td colspan="3">s/d 
	 $dsc_end_date
	 </td>
  </tr>
  <tr>
    <td>Bill of Lading No</td>
    <td>:</td>
    <td>-</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Bill of Lading Date</td>
    <td>:</td>
    <td>$bl_start_date</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td valign="top">Surveyor in charge</td>
    <td valign="top">:</td>
    <td valign="top" colspan="5">$survey</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7"><strong>II. DISCHARGE MONITORING</strong></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>A. TIME  LOG</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>Description</strong></td>
    <td>&nbsp;</td>
    <td><strong>Date</strong></td>
    <td></td>
    <td><strong>Time</strong></td>
    <td colspan="2">Remarks/Delays/Etc</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  $time_log_data
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
  <td>Remarks</td>
  <td>&nbsp;</td>
  <td colspan=5>$activities_remarks</td>
 </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>B. QUANTITY</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td align="center">K/L Obsv.</td>
    <td align="center">K/L @15 oC</td>
    <td align="center">BBls @60 oF</td>
    <td align="center">Metric Ton</td>
    <td align="center">Long Ton</td>
  </tr>
  <tr>
    <td>BL Figure</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>BL Quantity</td>
    <td>&nbsp;</td>
    <td align="center">$bl_quantity_klobs</td>
    <td align="center">$bl_quantity_kl15</td>
    <td align="center">$bl_quantity_bbls</td>
    <td align="center">$bl_quantity_metricton</td>
    <td align="center">$bl_quantity_longton</td>
  </tr>
  <tr>
    <td>BL Figure based on</td>
    <td>&nbsp;</td>
    <td align="center">$bl_flow_meter <br/>Flow Meter</td>
    <td align="center">$bl_shore_tank <br/>Shore Tank</td>
    <td align="center">$bl_ship_tank <br/>Ship Tank</td>
    <td align="center"></td>
    <td align="center"></td>
  </tr>
  <tr>
    <td>DENSITY@15°C</td>
    <td>&nbsp;</td>
    <td align="center">$bl_15_derajat_cel</td>
    <td align="center" colspan="4"></td>
  </tr>
  <tr>
    <td align="center" colspan="7"></td>
  </tr>
  <tr>
    <td>Ship Figure</td>
    <td>&nbsp;</td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
    <td align="center"></td>
  </tr>
  <tr>
    <td>Onboard Quantity (OBQ)</td>
    <td>&nbsp;</td>
    <td align="center">$obq_quantity_klobs</td>
    <td align="center">$obq_quantity_kl15</td>
    <td align="center">$obq_quantity_bbls</td>
    <td align="center">$obq_quantity_metricton</td>
    <td align="center">$obq_quantity_longton</td>
  </tr>
  <tr>
    <td>Ship's Figure After Loading (SFAL) - TOV</td>
    <td>&nbsp;</td>
    <td align="center">$sfal_tov_klobs</td>
    <td align="center">$sfal_tov_kl15</td>
    <td align="center">$sfal_tov_bbls</td>
    <td align="center">$sfal_tov_metricton</td>
    <td align="center">$sfal_tov_longton</td>
  </tr>
  <tr>
    <td>Free Water After Loading</td>
    <td>&nbsp;</td>
    <td align="center">$fwal_klobs</td>
    <td align="center">$fwal_kl15</td>
    <td align="center">$fwal_bbls</td>
    <td align="center">$fwal_metricton</td>
    <td align="center">$fwal_longton</td>
  </tr>
  <tr>
    <td class="span">Vessel Experience Factor - Loading (VEF-L)</td>
    <td class="span">&nbsp;</td>
    <td align="center" class="span"> $vef_loading_bbls</td>
    <td colspan="4" class="span"></td>
  </tr>
  <tr>
    <td class="span">Ship's Loaded (applied VEF-L)</td>
    <td class="span">&nbsp;</td>
    <td align="center" class="span">$sl_applied_vefl_bbls</td>
    <td colspan="4" class="span"></td>
  </tr>
 <tr>
    <td align="center" colspan="7"></td>
  </tr>
  <tr>
    <td>Discrepancy</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Ship's Loaded vs Bill of Lading (R1)</td>
	<td>&nbsp;</td>
    <td>$sl_vs_bol_r1_klobs</td>
    <td>$sl_vs_bol_r1_kl15</td>
    <td>$sl_vs_bol_r1_bbls</td>
    <td>$sl_vs_bol_r1_metricton</td>
    <td>$sl_vs_bol_r1_longton</td>
  </tr>
  <tr>
    <td>Ship's Loaded (VEF applied) vs Bill of Lading (R1)</td>
    <td>&nbsp;</td>
    <td>$sl_vef_applied_vs_bol_klobs</td>
    <td>$sl_vef_applied_vs_bol_kl15</td>
    <td>$sl_vef_applied_vs_bol_bbls</td>
    <td>$sl_vef_applied_vs_bol_metricton</td>
    <td>$sl_vef_applied_vs_bol_longton</td>
  </tr>
  <tr>
    <td>Quality</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Sample Source  : $sample_source</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Date of Analysis   : $date_of_analysis</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  
  <tr>
    <td colspan="7" class="span" style="height:20px"></td>
  </tr>
  <tr>
    <td><strong>C. REMARKS  NOTE</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td class="span"><strong>Non Nominated Tanks</strong></td>
    <td class="span"></td>
    <td class="span" colspan="2"></td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr> 
  <tr>
    <td class="span">Notice of Apparent Discrepancies issued?</td>
    <td class="span">:</td>
    <td class="span" colspan="2">$rn_notice_issue</td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">Letter of Protests isued?</td>
    <td class="span">:</td>
    <td class="span" colspan="2">$rn_letter_issue</td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">Statement of Facts issued?</td>
    <td class="span">:</td>
    <td class="span" colspan="2">$rn_statement_issue</td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span"><strong>Bunker onboard</strong></td>
    <td class="span"></td>
    <td class="span" colspan="2"></td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">On Arrival</td>
    <td class="span">:</td>
    <td class="span" colspan="2">MFO/metric ton &nbsp; $bo_mfo_on_arrival</td>
    <td class="span" colspan="2">MDO/metric ton &nbsp; $bo_mdo_on_arrival</td>
    <td class="span">&nbsp;</td>
  </tr> 
 <tr>
    <td class="span">On Departure</td>
    <td class="span">:</td>
    <td class="span" colspan="2">MFO/metric ton &nbsp; $bo_mfo_on_departure</td>
    <td class="span" colspan="2">MDO/metric ton &nbsp; $bo_mdo_on_departure</td>
    <td class="span">&nbsp;</td>
  </tr>
   <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span"><strong>Ships & Sea Condition</strong></td>
    <td class="span"></td>
    <td class="span" colspan="2"></td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">On Arrival</td>
    <td class="span">:</td>
    <td class="span" colspan="2">DRAFT/meter FWD &nbsp;  $sc_on_arrival_draft_fwd</td>
    <td class="span" colspan="2">DRAFT/meter AFT &nbsp; $sc_on_arrival_draft_aft</td>
    <td class="span">LIST &nbsp; $sc_on_arrival_draft_list</td>
  </tr> 
   <tr>
      <td class="span">On Departure</td>
      <td class="span">:</td>
      <td class="span" colspan="2">DRAFT/meter FWD &nbsp; $sc_on_departure_draft_fwd</td>
      <td class="span" colspan="2">DRAFT/meter AFT &nbsp; $sc_on_departure_draft_aft</td>
      <td class="span">LIST &nbsp; $sc_on_departure_draft_list</td>
  </tr>
  <tr>
	<td class="span" colspan="1">Ships & Sea Condition</td>
      <td class="span" colspan="1">:</td>
      <td class="span" colspan="5">$ship_sea_cond</td>
 </tr>
 <tr style="height:100px"> 
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
</table>
EOD;
		break;
	
	case 15: // DISCHARGE
	$tbl = <<<EOD
<table border="0">
    <tr>
    <td colspan="7"><strong>DISCHARGE SUMMARY</strong></td>
  </tr>
 
  <tr>
    <td colspan="7"><strong>I. GENERAL  INFORMATION</strong></td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td>Referensi</td>
    <td>:</td>
    <td colspan="5">$ref</td>
  </tr>
  <tr>
    <td>Principal</td>
    <td>:</td>
    <td colspan="5">$kontrak</td>
  </tr>
  <tr>
    <td>File Order</td>
    <td>:</td>
    <td colspan="5">$file_order</td>
  </tr>
  <tr>
    <td>IWO</td>
    <td>:</td>
    <td colspan="5">$iwo</td>
  </tr>
  <tr>
    <td>Vessel</td>
    <td>:</td>
    <td colspan="5">$vessel</td>
  </tr>
  <tr>
    <td>Voyage</td>
    <td>:</td>
    <td colspan="5">$voyage</td>
  </tr>
  <tr>
    <td>Location</td>
    <td>:</td>
    <td colspan="5">$area</td>
  </tr>
  <tr>
    <td valign="top">Product</td>
    <td valign="top">:</td>
    <td colspan="2" align="left" valign="top">$product</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Loading Date</td>
    <td>:</td>
    <td colspan="2">$lsd_start_date</td>
    <td colspan="3">s/d 
	 $lsd_end_date
	 </td>
  </tr>
   <tr>
    <td class="span">Discharge Date</td>
    <td class="span">:</td>
    <td colspan="2">$dsc_start_date</td>
     <td colspan="3">s/d 
	 $dsc_end_date
	 </td>
  </tr>
  <tr>
    <td>Bill of Lading No</td>
    <td>:</td>
    <td>-</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Bill of Lading Date</td>
    <td>:</td>
    <td>$bl_start_date</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td valign="top">Surveyor in charge</td>
    <td valign="top">:</td>
    <td valign="top" colspan="5">$survey</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7"><strong>II. DISCHARGE MONITORING</strong></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>A. TIME  LOG</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>Description</strong></td>
    <td>&nbsp;</td>
    <td><strong>Date</strong></td>
    <td></td>
    <td><strong>Time</strong></td>
    <td colspan="2">Remarks/Delays/Etc</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   $time_log_data
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
  <td>Remarks</td>
  <td>&nbsp;</td>
  <td colspan=5>$activities_remarks</td>
 </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>B. QUANTITY</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td align="center">K/L Obsv.</td>
    <td align="center">K/L @15 oC</td>
    <td align="center">BBls @60 oF</td>
    <td align="center">Metric Ton</td>
    <td align="center">Long Ton</td>
  </tr>
  <tr>
    <td>BL Figure</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>BL Quantity<br/>Gross Standard Volume</td>
    <td>&nbsp;</td>
    <td align="center">$bl_gsv_klobs</td>
    <td align="center">$bl_gsv_kl15</td>
    <td align="center">$bl_gsv_bbls</td>
    <td align="center">$bl_gsv_metricton</td>
    <td align="center">$bl_gsv_longton</td>
  </tr>
  <tr>
    <td>Net Standard Volume</td>
    <td>&nbsp;</td>
    <td align="center">$bl_nsv_klobs</td>
    <td align="center">$bl_nsv_kl15</td>
    <td align="center">$bl_nsv_bbls</td>
    <td align="center">$bl_nsv_metricton</td>
    <td align="center">$bl_nsv_longton</td>
  </tr>
  <tr>
    <td>BL Figure based on</td>
    <td>&nbsp;</td>
    <td align="center">$bl_flow_meter <br/>Flow Meter</td>
    <td align="center">$bl_shore_tank <br/>Shore Tank</td>
    <td align="center">$bl_ship_tank <br/>Ship Tank</td>
    <td align="center"></td>
    <td align="center"></td>
  </tr>
  <tr>
    <td>Ship's Figure After Loading (SFAL)</td>
    <td>&nbsp;</td>
    <td align="center">$sfal_klobs</td>
    <td align="center">$sfal_kl15</td>
    <td align="center">$sfal_bbls</td>
    <td align="center">$sfal_metricton</td>
    <td align="center">$sfal_longton</td>
  </tr>
  <tr>
    <td>Shore Figure</td>
    <td>&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td>Shore Quantity</td>
    <td>&nbsp;</td>
    <td align="center">$sf_sq_klobs</td>
    <td align="center">$sf_sq_kl15</td>
    <td align="center">$sf_sq_bbls</td>
    <td align="center">$sf_sq_metricton</td>
    <td align="center">$sf_sq_longton</td>
  </tr>
  <tr>
    <td>Gross Standard Volume</td>
    <td>&nbsp;</td>
    <td align="center">$sf_gsv_klobs</td>
    <td align="center">$sf_gsv_kl15</td>
    <td align="center">$sf_gsv_bbls</td>
    <td align="center">$sf_gsv_metricton</td>
    <td align="center">$sf_gsv_longton</td>
  </tr>
  <tr>
    <td>Net Standard Volume</td>
    <td>&nbsp;</td>
    <td align="center">$sf_nsv_klobs</td>
    <td align="center">$sf_nsv_kl15</td>
    <td align="center">$sf_nsv_bbls</td>
    <td align="center">$sf_nsv_metricton</td>
    <td align="center">$sf_nsv_longton</td>
  </tr>
  <tr>
    <td>Ship's Figure After Loading (SFAL)</td>
    <td>&nbsp;</td>
    <td align="center">$sf_sfal_klobs</td>
    <td align="center">$sf_sfal_kl15</td>
    <td align="center">$sf_sfal_bbls</td>
    <td align="center">$sf_sfal_metricton</td>
    <td align="center">$sf_sfal_longton</td>
  </tr>
   <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Ship Figure</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Ship Figure Before Discharge - TOV</td>
	<td>&nbsp;</td>
    <td class="span">$sfbd_tov_klobs</td>
    <td class="span">$sfbd_tov_kl15</td>
    <td class="span">$sfbd_tov_bbls</td>
    <td class="span">$sfbd_tov_metricton</td>
    <td class="span">$sfbd_tov_longton</td>
  </tr>
  <tr>
    <td class="span">Free Water</td>
	<td>&nbsp;</td>
    <td class="span">$free_water_klobs</td>
    <td class="span">$free_water_kl15</td>
    <td class="span">$free_water_bbls</td>
    <td class="span">$free_water_metricton</td>
    <td class="span">$free_water_longton</td>
  </tr>
  <tr>
    <td class="span">Remaining On Board Quantity</td>
	<td>&nbsp;</td>
    <td class="span">$robq_klobs</td>
    <td class="span">$robq_kl15</td>
    <td class="span">$robq_bbls</td>
    <td class="span">$robq_metricton</td>
    <td class="span">$robq_longton</td>
  </tr>
  <tr>
    <td class="span">Ship Figure Before Discharge - NSV</td>
	<td>&nbsp;</td>
    <td class="span">$sfbd_nsv_klobs</td>
    <td class="span">$sfbd_nsv_kl15</td>
    <td class="span">$sfbd_nsv_bbls</td>
    <td class="span">$sfbd_nsv_metricton</td>
    <td class="span">$sfbd_nsv_longton</td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span"><strong>Discrepancy</strong></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td>Ship's Loaded vs Bill of Lading (R1)</td>
	<td>&nbsp;</td>
    <td>$sl_vs_bol_r1_klobs</td>
    <td>$sl_vs_bol_r1_kl15</td>
    <td>$sl_vs_bol_r1_bbls</td>
    <td>$sl_vs_bol_r1_metricton</td>
    <td>$sl_vs_bol_r1_longton</td>
  </tr>
  <tr>
    <td>Ship's Loaded (VEF applied) vs Bill of Lading (R1)</td>
    <td>&nbsp;</td>
    <td>$sl_vef_applied_vs_bol_klobs</td>
    <td>$sl_vef_applied_vs_bol_kl15</td>
    <td>$sl_vef_applied_vs_bol_bbls</td>
    <td>$sl_vef_applied_vs_bol_metricton</td>
    <td>$sl_vef_applied_vs_bol_longton</td>
  </tr>
  <tr>
    <td>Ship's Fig. After Loading vs Ship's Fig. Before Discharge (R2)</td>
    <td>&nbsp;</td>
    <td>$sfal_vs_sfbd_r2_klobs</td>
    <td>$sfal_vs_sfbd_r2_kl15</td>
    <td>$sfal_vs_sfbd_r2_bbls</td>
    <td>$sfal_vs_sfbd_r2_metricton</td>
    <td>$sfal_vs_sfbd_r2_longton</td>
  </tr>
  <tr>
    <td>Ship's Fig. Before Discharge vs Shore Received (R3)</td>
    <td>&nbsp;</td>
    <td>$sfbd_vs_sr_r3_klobs</td>
    <td>$sfbd_vs_sr_r3_kl15</td>
    <td>$sfbd_vs_sr_r3_bbls</td>
    <td>$sfbd_vs_sr_r3_metricton</td>
    <td>$sfbd_vs_sr_r3_longton</td>
  </tr>
  <tr>
    <td>Shore Received vs Bill of Lading (R4)</td>
    <td>&nbsp;</td>
    <td>$sr_vs_bol_r4_klobs</td>
    <td>$sr_vs_bol_r4_kl15</td>
    <td>$sr_vs_bol_r4_bbls</td>
    <td>$sr_vs_bol_r4_metricton</td>
    <td>$sr_vs_bol_r4_longton</td>
  </tr>
  <tr>
    <td>Quality</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Sample Source  : $sample_source</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Date of Analysis   : $date_of_analysis</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  
  <tr>
    <td colspan="7" class="span" style="height:20px"></td>
  </tr>
  <tr>
    <td><strong>C. REMARKS  NOTE</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td class="span"><strong>Non Nominated Tanks</strong></td>
    <td class="span"></td>
    <td class="span" colspan="2"></td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr> 
  <tr>
    <td class="span">Notice of Apparent Discrepancies issued?</td>
    <td class="span">:</td>
    <td class="span" colspan="2">$rn_notice_issue</td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">Letter of Protests isued?</td>
    <td class="span">:</td>
    <td class="span" colspan="2">$rn_letter_issue</td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">Statement of Facts issued?</td>
    <td class="span">:</td>
    <td class="span" colspan="2">$rn_statement_issue</td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
   <tr>
    <td class="span"><strong>Bunker onboard</strong></td>
    <td class="span"></td>
    <td class="span" colspan="2"></td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">On Arrival</td>
    <td class="span">:</td>
    <td class="span" colspan="2">MFO/metric ton &nbsp; $bo_mfo_on_arrival</td>
    <td class="span" colspan="2">MDO/metric ton &nbsp; $bo_mdo_on_arrival</td>
    <td class="span">&nbsp;</td>
  </tr> 
 <tr>
    <td class="span">On Departure</td>
    <td class="span">:</td>
    <td class="span" colspan="2">MFO/metric ton &nbsp; $bo_mfo_on_departure</td>
    <td class="span" colspan="2">MDO/metric ton &nbsp; $bo_mdo_on_departure</td>
    <td class="span">&nbsp;</td>
  </tr>
   <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span"><strong>Ships & Sea Condition</strong></td>
    <td class="span"></td>
    <td class="span" colspan="2"></td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">On Arrival</td>
    <td class="span">:</td>
    <td class="span" colspan="2">DRAFT/meter FWD &nbsp;  $sc_on_arrival_draft_fwd</td>
    <td class="span" colspan="2">DRAFT/meter AFT &nbsp; $sc_on_arrival_draft_aft</td>
    <td class="span">LIST &nbsp; $sc_on_arrival_draft_list</td>
  </tr> 
   <tr>
      <td class="span">On Departure</td>
      <td class="span">:</td>
      <td class="span" colspan="2">DRAFT/meter FWD &nbsp; $sc_on_departure_draft_fwd</td>
      <td class="span" colspan="2">DRAFT/meter AFT &nbsp; $sc_on_departure_draft_aft</td>
      <td class="span">LIST &nbsp; $sc_on_departure_draft_list</td>
  </tr>
  <tr>
	<td class="span" colspan="1">Ships & Sea Condition</td>
      <td class="span" colspan="1">:</td>
      <td class="span" colspan="5">$ship_sea_cond</td>
 </tr>
 <tr style="height:100px"> 
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
</table>
EOD;
				break;	
				
	case 25: // BUNKER VESSEL
	$tbl = <<<EOD
<table border="0">
    <tr>
    <td colspan="7"><strong>BUNKER VESSEL</strong></td>
  </tr>
 
  <tr>
    <td colspan="7"><strong>I. GENERAL  INFORMATION</strong></td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td>Referensi</td>
    <td>:</td>
    <td colspan="5">$ref</td>
  </tr>
  <tr>
    <td>Principal</td>
    <td>:</td>
    <td colspan="5">$kontrak</td>
  </tr>
  <tr>
    <td>File Order</td>
    <td>:</td>
    <td colspan="5">$file_order</td>
  </tr>
  <tr>
    <td>IWO</td>
    <td>:</td>
    <td colspan="5">$iwo</td>
  </tr>
  <tr>
    <td>Vessel</td>
    <td>:</td>
    <td colspan="5">$vessel</td>
  </tr>
  <tr>
    <td>Voyage</td>
    <td>:</td>
    <td colspan="5">$voyage</td>
  </tr>
  <tr>
    <td>Location</td>
    <td>:</td>
    <td colspan="5">$area</td>
  </tr>
  <tr>
    <td valign="top">Product</td>
    <td valign="top">:</td>
    <td colspan="2" align="left" valign="top">$product</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Loading Date</td>
    <td>:</td>
    <td colspan="2">$lsd_start_date</td>
    <td colspan="3">s/d 
	 $lsd_end_date
	 </td>
  </tr>
   <tr>
    <td class="span">Discharge Date</td>
    <td class="span">:</td>
    <td colspan="2">$dsc_start_date</td>
     <td colspan="3">s/d 
	 $dsc_end_date
	 </td>
  </tr>
  <tr>
    <td>Bill of Lading No</td>
    <td>:</td>
    <td>-</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Bill of Lading Date</td>
    <td>:</td>
    <td>$bl_start_date</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td valign="top">Surveyor in charge</td>
    <td valign="top">:</td>
    <td valign="top" colspan="5">$survey</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7"><strong>II. BUNKER VESSEL MONITORING</strong></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>A. TIME  LOG</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>Description</strong></td>
    <td>&nbsp;</td>
    <td><strong>Date</strong></td>
    <td></td>
    <td><strong>Time</strong></td>
    <td colspan="2">Remarks/Delays/Etc</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   $time_log_data
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
  <td>Remarks</td>
  <td>&nbsp;</td>
  <td colspan=5>$activities_remarks</td>
 </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>B. QUANTITY</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td align="center">K/L Obsv.</td>
    <td align="center">K/L @15 oC</td>
    <td align="center">BBls @60 oF</td>
    <td align="center">Metric Ton</td>
    <td align="center">Long Ton</td>
  </tr>
  <tr>
    <td>Initial Readout</td>
    <td>&nbsp;</td>
    <td align="center">$initial_readout_klobs</td>
    <td align="center">$initial_readout_kl15</td>
    <td align="center">$initial_readout_metric_tons</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td>Final Readout</td>
    <td>&nbsp;</td>
    <td align="center">$final_readout_klobs</td>
    <td align="center">$final_readout_kl15</td>
    <td align="center">$final_readout_metric_tons</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td>Difference</td>
    <td>&nbsp;</td>
    <td align="center">$difference_klobs</td>
    <td align="center">$difference_kl15</td>
    <td align="center">$difference_metric_tons</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td>Meter Factor</td>
    <td>&nbsp;</td>
    <td align="center" class="span">$meter_factor_klobs</td>
    <td colspan="4" class="span"></td>
  </tr>
  <tr>
    <td colspan="7" class="span" style="height:20px"></td>
  </tr>
  <tr>
    <td>Cord Vol Deliverd</td>
    <td>&nbsp;</td>
    <td align="center">$cord_vol_delivered_klobs</td>
    <td align="center">$cord_vol_delivered_kl15</td>
    <td align="center">$cord_vol_delivered_metric_tons</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
   <tr>
    <td>Density 15</td>
    <td>&nbsp;</td>
    <td align="center" class="span">$density15deg_klobs</td>
    <td colspan="4" class="span"></td>
  </tr>
  <tr>
    <td colspan="7" ></td>
  </tr>
   <tr>
    <td>Supply Loss</td>
    <td>&nbsp;</td>
    <td align="center">$supply_loss_klobs</td>
    <td align="center">$supply_loss_kl15</td>
    <td align="center">$supply_loss_metric_tons</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td><strong>C. REMARKS  NOTE</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td class="span"><strong>Non Nominated Tanks</strong></td>
    <td class="span"></td>
    <td class="span" colspan="2"></td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr> 
  <tr>
    <td class="span">Notice of Apparent Discrepancies issued?</td>
    <td class="span">:</td>
    <td class="span" colspan="2">$rn_notice_issue</td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">Letter of Protests isued?</td>
    <td class="span">:</td>
    <td class="span" colspan="2">$rn_letter_issue</td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">Statement of Facts issued?</td>
    <td class="span">:</td>
    <td class="span" colspan="2">$rn_statement_issue</td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
   <tr>
    <td class="span"><strong>Bunker onboard</strong></td>
    <td class="span"></td>
    <td class="span" colspan="2"></td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">On Arrival</td>
    <td class="span">:</td>
    <td class="span" colspan="2">MFO/metric ton &nbsp; $bo_mfo_on_arrival</td>
    <td class="span" colspan="2">MDO/metric ton &nbsp; $bo_mdo_on_arrival</td>
    <td class="span">&nbsp;</td>
  </tr> 
 <tr>
    <td class="span">On Departure</td>
    <td class="span">:</td>
    <td class="span" colspan="2">MFO/metric ton &nbsp; $bo_mfo_on_departure</td>
    <td class="span" colspan="2">MDO/metric ton &nbsp; $bo_mdo_on_departure</td>
    <td class="span">&nbsp;</td>
  </tr>
   <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span"><strong>Ships & Sea Condition</strong></td>
    <td class="span"></td>
    <td class="span" colspan="2"></td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">On Arrival</td>
    <td class="span">:</td>
    <td class="span" colspan="2">DRAFT/meter FWD &nbsp;  $sc_on_arrival_draft_fwd</td>
    <td class="span" colspan="2">DRAFT/meter AFT &nbsp; $sc_on_arrival_draft_aft</td>
    <td class="span">LIST &nbsp; $sc_on_arrival_draft_list</td>
  </tr> 
   <tr>
      <td class="span">On Departure</td>
      <td class="span">:</td>
      <td class="span" colspan="2">DRAFT/meter FWD &nbsp; $sc_on_departure_draft_fwd</td>
      <td class="span" colspan="2">DRAFT/meter AFT &nbsp; $sc_on_departure_draft_aft</td>
      <td class="span">LIST &nbsp; $sc_on_departure_draft_list</td>
  </tr>
  <tr>
	<td class="span" colspan="1">Ships & Sea Condition</td>
      <td class="span" colspan="1">:</td>
      <td class="span" colspan="5">$ship_sea_cond</td>
 </tr>
 <tr style="height:100px"> 
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
</table>
EOD;
				break;

	case 21: // BUNKER PIPE
	$tbl = <<<EOD
<table border="0">
    <tr>
    <td colspan="7"><strong>BUNKER PIPE</strong></td>
  </tr>
 
  <tr>
    <td colspan="7"><strong>I. GENERAL  INFORMATION</strong></td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td>Referensi</td>
    <td>:</td>
    <td colspan="5">$ref</td>
  </tr>
  <tr>
    <td>Principal</td>
    <td>:</td>
    <td colspan="5">$kontrak</td>
  </tr>
  <tr>
    <td>File Order</td>
    <td>:</td>
    <td colspan="5">$file_order</td>
  </tr>
  <tr>
    <td>IWO</td>
    <td>:</td>
    <td colspan="5">$iwo</td>
  </tr>
  <tr>
    <td>Vessel</td>
    <td>:</td>
    <td colspan="5">$vessel</td>
  </tr>
  <tr>
    <td>Voyage</td>
    <td>:</td>
    <td colspan="5">$voyage</td>
  </tr>
  <tr>
    <td>Location</td>
    <td>:</td>
    <td colspan="5">$area</td>
  </tr>
  <tr>
    <td valign="top">Product</td>
    <td valign="top">:</td>
    <td colspan="2" align="left" valign="top">$product</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Loading Date</td>
    <td>:</td>
    <td colspan="2">$lsd_start_date</td>
    <td colspan="3">s/d 
	 $lsd_end_date
	 </td>
  </tr>
   <tr>
    <td class="span">Discharge Date</td>
    <td class="span">:</td>
    <td colspan="2">$dsc_start_date</td>
     <td colspan="3">s/d 
	 $dsc_end_date
	 </td>
  </tr>
  <tr>
    <td>Bill of Lading No</td>
    <td>:</td>
    <td>-</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Bill of Lading Date</td>
    <td>:</td>
    <td>$bl_start_date</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td valign="top">Surveyor in charge</td>
    <td valign="top">:</td>
    <td valign="top" colspan="5">$survey</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7"><strong>II. BUNKER PIPE MONITORING</strong></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>A. TIME  LOG</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>Description</strong></td>
    <td>&nbsp;</td>
    <td><strong>Date</strong></td>
    <td></td>
    <td><strong>Time</strong></td>
    <td colspan="2">Remarks/Delays/Etc</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  $time_log_data
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
  <td>Remarks</td>
  <td>&nbsp;</td>
  <td colspan=5>$activities_remarks</td>
 </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><strong>B. QUANTITY</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td align="center">K/L Obsv.</td>
    <td align="center">K/L @15 oC</td>
    <td align="center">BBls @60 oF</td>
    <td align="center">Metric Ton</td>
    <td align="center">Long Ton</td>
  </tr>
  <tr>
    <td>Initial Readout</td>
    <td>&nbsp;</td>
    <td align="center">$initial_readout_klobs</td>
    <td align="center">$initial_readout_kl15</td>
    <td align="center">$initial_readout_metric_tons</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td>Final Readout</td>
    <td>&nbsp;</td>
    <td align="center">$final_readout_klobs</td>
    <td align="center">$final_readout_kl15</td>
    <td align="center">$final_readout_metric_tons</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td>Difference</td>
    <td>&nbsp;</td>
    <td align="center">$difference_klobs</td>
    <td align="center">$difference_kl15</td>
    <td align="center">$difference_metric_tons</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td>Meter Factor</td>
    <td>&nbsp;</td>
    <td align="center" class="span">$meter_factor_klobs</td>
    <td colspan="4" class="span"></td>
  </tr>
  <tr>
    <td colspan="7" class="span" style="height:20px"></td>
  </tr>
  <tr>
    <td>Cord Vol Deliverd</td>
    <td>&nbsp;</td>
    <td align="center">$cord_vol_delivered_klobs</td>
    <td align="center">$cord_vol_delivered_kl15</td>
    <td align="center">$cord_vol_delivered_metric_tons</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
   <tr>
    <td>Density 15</td>
    <td>&nbsp;</td>
    <td align="center" class="span">$density15deg_klobs</td>
    <td colspan="4" class="span"></td>
  </tr>
  <tr>
    <td colspan="7" ></td>
  </tr>
   <tr>
    <td>Supply Loss</td>
    <td>&nbsp;</td>
    <td align="center">$supply_loss_klobs</td>
    <td align="center">$supply_loss_kl15</td>
    <td align="center">$supply_loss_metric_tons</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td><strong>C. REMARKS  NOTE</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td class="span"><strong>Non Nominated Tanks</strong></td>
    <td class="span"></td>
    <td class="span" colspan="2"></td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr> 
  <tr>
    <td class="span">Notice of Apparent Discrepancies issued?</td>
    <td class="span">:</td>
    <td class="span" colspan="2">$rn_notice_issue</td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">Letter of Protests isued?</td>
    <td class="span">:</td>
    <td class="span" colspan="2">$rn_letter_issue</td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">Statement of Facts issued?</td>
    <td class="span">:</td>
    <td class="span" colspan="2">$rn_statement_issue</td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
   <tr>
    <td class="span"><strong>Bunker onboard</strong></td>
    <td class="span"></td>
    <td class="span" colspan="2"></td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">On Arrival</td>
    <td class="span">:</td>
    <td class="span" colspan="2">MFO/metric ton &nbsp; $bo_mfo_on_arrival</td>
    <td class="span" colspan="2">MDO/metric ton &nbsp; $bo_mdo_on_arrival</td>
    <td class="span">&nbsp;</td>
  </tr> 
 <tr>
    <td class="span">On Departure</td>
    <td class="span">:</td>
    <td class="span" colspan="2">MFO/metric ton &nbsp; $bo_mfo_on_departure</td>
    <td class="span" colspan="2">MDO/metric ton &nbsp; $bo_mdo_on_departure</td>
    <td class="span">&nbsp;</td>
  </tr>
   <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span"><strong>Ships & Sea Condition</strong></td>
    <td class="span"></td>
    <td class="span" colspan="2"></td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">On Arrival</td>
    <td class="span">:</td>
    <td class="span" colspan="2">DRAFT/meter FWD &nbsp;  $sc_on_arrival_draft_fwd</td>
    <td class="span" colspan="2">DRAFT/meter AFT &nbsp; $sc_on_arrival_draft_aft</td>
    <td class="span">LIST &nbsp; $sc_on_arrival_draft_list</td>
  </tr> 
   <tr>
      <td class="span">On Departure</td>
      <td class="span">:</td>
      <td class="span" colspan="2">DRAFT/meter FWD &nbsp; $sc_on_departure_draft_fwd</td>
      <td class="span" colspan="2">DRAFT/meter AFT &nbsp; $sc_on_departure_draft_aft</td>
      <td class="span">LIST &nbsp; $sc_on_departure_draft_list</td>
  </tr>
  <tr>
	<td class="span" colspan="1">Ships & Sea Condition</td>
      <td class="span" colspan="1">:</td>
      <td class="span" colspan="5">$ship_sea_cond</td>
 </tr>
 <tr style="height:100px"> 
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
</table>
EOD;
				break;
		}

// Table with rowspans and THEAD



$pdf->writeHTML($tbl, true, false, false, false, '');

// -----------------------------------------------------------------------------


//Close and output PDF document
$pdf->Output('CETAK_'.date('d_m_Y_h_i', time()).'.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+
	}

public function downloadexcel()  {
        //$subscribers = $this->phpexcel_model->get_users();
        //$query_items = $this->Report_model->get_all_items_to_excell($this->session->userdata("site_id"));
		$array_get = array();
		$intervention_name = $this->input->get("INTERVENTION_NAME");
		$product_type      = $this->input->get("PRODUCT_TYPE");
		$select_cargo      = $this->input->get("SELECT_CARGO");
		$kontrak           = $this->input->get("KONTRAK");
		$spk               = $this->input->get("SPK");
		$ctime             = $this->input->get("CTIME");

		if($intervention_name != "") {
			$o = new stdClass();
			$o->field = "INTERVENTION_NAME";
			$o->value = $intervention_name;
			$array_get[] = $o;
		}

		if($product_type != "") {
			$o = new stdClass();
			$o->field = "PRODUCT_TYPE";
			$o->value = $product_type;
			$array_get[] = $o;
		}

		if($select_cargo != "") {
			$o = new stdClass();
			$o->field = "SELECT_CARGO";
			$o->value = $select_cargo;
			$array_get[] = $o;
		}

		if($kontrak != "") {
			$o = new stdClass();
			$o->field = "KONTRAK";
			$o->value = $kontrak;
			$array_get[] = $o;
		}

		if($spk != "") {
			$o = new stdClass();
			$o->field = "SPK";
			$o->value = $spk;
			$array_get[] = $o;
		}

		if($ctime != "") {
			$o = new stdClass();
			$o->field = "CTIME";
			$o->value = $ctime;
			$array_get[] = $o;
		}

        $query_items = $this->Report_model->get_all_items_to_excell($this->session->userdata("site_id"),$array_get);

        require_once APPPATH . '/third_party/Phpexcel/Bootstrap.php';
        // Create new Spreadsheet object
        $spreadsheet = new \PhpOffice\PhpSpreadsheet\Spreadsheet();

// Set document properties
        $spreadsheet->getProperties()->setCreator('Sucofindo')
                ->setLastModifiedBy('Report Sucofindo')
                ->setTitle('Report Excell')
                ->setSubject('Data PhpExcel')
                ->setDescription('Data Hasil Cetak Excell');

        // add style to the header
        $styleArray = array(
                'font' => array(
                        'bold' => true,
                ),
                'alignment' => array(
                        'horizontal' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER,
                        'vertical' => \PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER,
                ),
                'borders' => array(
                        'top' => array(
                                'style' => \PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN,
                        ),
                ),
                'fill' => array(
                        'type' => \PhpOffice\PhpSpreadsheet\Style\Fill::FILL_GRADIENT_LINEAR,
                        'rotation' => 90,
                        'startcolor' => array(
                                'argb' => 'FFA0A0A0',
                        ),
                        'endcolor' => array(
                                'argb' => 'FFFFFFFF',
                        ),
                ),
        );
        $spreadsheet->getActiveSheet()->getStyle('A1:JP1')->applyFromArray($styleArray);


        // auto fit column to content

        foreach(range('A','JP') as $columnID) {
            $spreadsheet->getActiveSheet()->getColumnDimension($columnID)
                    ->setAutoSize(true);
        }
        // set the names of header cells
        $k=1;
        $spreadsheet->setActiveSheetIndex(0)
                ->setCellValue("A$k",'NO')
                ->setCellValue("B$k",'SC')
                ->setCellValue("C$k",'IWO')
                ->setCellValue("D$k",'SPK')
                ->setCellValue("E$k",'VOY')
                ->setCellValue("F$k",'AREA')
                ->setCellValue("G$k",'SUPPLIER')
                ->setCellValue("H$k",'BUYER')
                ->setCellValue("I$k",'SELLER')
                ->setCellValue("J$k",'TRADER')
                ->setCellValue("K$k",'KONTRAK')
                ->setCellValue("L$k",'PRODUCT')
                ->setCellValue("M$k",'DATE_NOR')
                ->setCellValue("N$k",'TIME_NOR')
                ->setCellValue("O$k",'FWAL_BBLS')
                ->setCellValue("P$k",'FWAL_KL15')
                ->setCellValue("Q$k",'FILE_ORDER')
                ->setCellValue("R$k",'FWAL_KLOBS')
                ->setCellValue("S$k",'REMARKS_NOR')
                ->setCellValue("T$k",'SELECT_PORT')
                ->setCellValue("U$k",'SHARING_FEE')
                ->setCellValue("V$k",'SL_GSV_BBLS')
                ->setCellValue("W$k",'SL_GSV_KL15')
                ->setCellValue("X$k",'DATE_BERTHED')
                ->setCellValue("Y$k",'FWAL_LONGTON')
                ->setCellValue("Z$k",'PRODUCT_TYPE')
                ->setCellValue("AA$k",'SELECT_CARGO')
                ->setCellValue("AB$k",'SL_GSV_KLOBS')
                ->setCellValue("AC$k",'TIME_BERTHED')
                ->setCellValue("AD$k",'BL_START_DATE')
                ->setCellValue("AE$k",'BL_START_TIME')
                ->setCellValue("AF$k",'DATE_ACCEPTED')
                ->setCellValue("AG$k",'DATE_CONTRACT')
                ->setCellValue("AH$k",'PORT_TERMINAL')
                ->setCellValue("AI$k",'SAMPLE_SOURCE')
                ->setCellValue("AJ$k",'SELECT_CLIENT')
                ->setCellValue("AK$k",'SFAL_TOV_BBLS')
                ->setCellValue("AL$k",'SFAL_TOV_KL15')
                ->setCellValue("AM$k",'ST_NOMINATION')
                ->setCellValue("AN$k",'TIME_ACCEPTED')
                ->setCellValue("AO$k",'DATE_COMMENCED')
                ->setCellValue("AP$k",'DATE_COMPLETED')
                ->setCellValue("AQ$k",'FWAL_METRICTON')
                ->setCellValue("AR$k",'SELECT_PRODUCT')
                ->setCellValue("AS$k",'SFAL_TOV_KLOBS')
                ->setCellValue("AT$k",'SL_GSV_LONGTON')
                ->setCellValue("AU$k",'TIME_COMMENCED')
                ->setCellValue("AV$k",'TIME_COMPLETED')
                ->setCellValue("AW$k",'DATE_ANCHORAGED')
                ->setCellValue("AX$k",'REMARKS_BERTHED')
                ->setCellValue("AY$k",'RN_LETTER_ISSUE')
                ->setCellValue("AZ$k",'RN_NOTICE_ISSUE')
                ->setCellValue("BA$k",'TIME_ANCHORAGED')
                ->setCellValue("BB$k",'BL_QUANTITY_BBLS')
                ->setCellValue("BC$k",'BL_QUANTITY_KL15')
                ->setCellValue("BD$k",'DATE_KEY_MEETING')
                ->setCellValue("BE$k",'DATE_OF_ANALYSIS')
                ->setCellValue("BF$k",'REMARKS_ACCEPTED')
                ->setCellValue("BG$k",'SF_QUANTITY_BBLS')
                ->setCellValue("BH$k",'SF_QUANTITY_KL15')
                ->setCellValue("BI$k",'SFAL_TOV_LONGTON')
                ->setCellValue("BJ$k",'SL_GSV_METRICTON')
                ->setCellValue("BK$k",'TIME_KEY_MEETING')
                ->setCellValue("BL$k",'VEF_LOADING_BBLS')
                ->setCellValue("BM$k",'BL_QUANTITY_KLOBS')
                ->setCellValue("BN$k",'BO_MDO_ON_ARRIVAL')
                ->setCellValue("BO$k",'BO_MFO_ON_ARRIVAL')
                ->setCellValue("BP$k",'OBQ_QUANTITY_BBLS')
                ->setCellValue("BQ$k",'OBQ_QUANTITY_KL15')
                ->setCellValue("BR$k",'REMARKS_COMMENCED')
                ->setCellValue("BS$k",'REMARKS_COMPLETED')
                ->setCellValue("BT$k",'SF_QUANTITY_KLOBS')
                ->setCellValue("BU$k",'SL_VS_BOL_R1_BBLS')
                ->setCellValue("BV$k",'SL_VS_BOL_R1_KL15')
                ->setCellValue("BW$k",'ACTIVITIES_REMARKS')
                ->setCellValue("BX$k",'DATE_LOISPKPOWONOA')
                ->setCellValue("BY$k",'DATE_VESSEL_SAILED')
                ->setCellValue("BZ$k",'LOADING_START_DATE')
                ->setCellValue("CA$k",'LOADING_START_TIME')
                ->setCellValue("CB$k",'OBQ_QUANTITY_KLOBS')
                ->setCellValue("CC$k",'REMARKS_ANCHORAGED')
                ->setCellValue("CD$k",'RN_STATEMENT_ISSUE')
                ->setCellValue("CE$k",'SFAL_TOV_METRICTON')
                ->setCellValue("CF$k",'SL_VS_BOL_R1_KLOBS')
                ->setCellValue("CG$k",'TIME_VESSEL_SAILED')
                ->setCellValue("CH$k",'BL_QUANTITY_LONGTON')
                ->setCellValue("CI$k",'BO_MDO_ON_DEPARTURE')
                ->setCellValue("CJ$k",'BO_MFO_ON_DEPARTURE')
                ->setCellValue("CK$k",'CLIENT_SITE_ID_FORM')
                ->setCellValue("CL$k",'DATE_HOSE_CONNECTED')
                ->setCellValue("CM$k",'DATE_VESSEL_ARRIVED')
                ->setCellValue("CN$k",'REMARKS_KEY_MEETING')
                ->setCellValue("CO$k",'SELECT_INTERVENTION')
                ->setCellValue("CP$k",'SF_QUANTITY_LONGTON')
                ->setCellValue("CQ$k",'TIME_HOSE_CONNECTED')
                ->setCellValue("CR$k",'TIME_VESSEL_ARRIVED')
                ->setCellValue("CS$k",'DISCHARGE_START_DATE')
                ->setCellValue("CT$k",'DISCHARGE_START_TIME')
                ->setCellValue("CU$k",'OBQ_QUANTITY_LONGTON')
                ->setCellValue("CV$k",'SL_APPLIED_VEFL_BBLS')
                ->setCellValue("CW$k",'SL_VS_BOL_R1_LONGTON')
                ->setCellValue("CX$k",'BL_15_DERAJAT_CELCIUS')
                ->setCellValue("CY$k",'BL_QUANTITY_METRICTON')
                ->setCellValue("CZ$k",'LOADING_COMPLETE_DATE')
                ->setCellValue("DA$k",'LOADING_COMPLETE_TIME')
                ->setCellValue("DB$k",'REMARKS_VESSEL_SAILED')
                ->setCellValue("DC$k",'DATE_DOCUMENTS_ONBOARD')
                ->setCellValue("DD$k",'DATE_LOADING_COMMENCED')
                ->setCellValue("DE$k",'DATE_LOADING_COMPLETED')
                ->setCellValue("DF$k",'DATE_SURVEYOR_ON_BOARD')
                ->setCellValue("DG$k",'OBQ_QUANTITY_METRICTON')
                ->setCellValue("DH$k",'REMARKS_HOSE_CONNECTED')
                ->setCellValue("DI$k",'REMARKS_VESSEL_ARRIVED')
                ->setCellValue("DJ$k",'SF_QUANTITY_METRICTON')
                ->setCellValue("DK$k",'SL_VS_BOL_R1_METRICTON')
                ->setCellValue("DL$k",'TIME_DOCUMENTS_ONBOARD')
                ->setCellValue("DM$k",'TIME_LOADING_COMMENCED')
                ->setCellValue("DN$k",'TIME_LOADING_COMPLETED')
                ->setCellValue("DO$k",'TIME_SURVEYOR_ON_BOARD')
                ->setCellValue("DP$k",'DATE_SAMPLING_COMMENCED')
                ->setCellValue("DQ$k",'DATE_SAMPLING_COMPLETED')
                ->setCellValue("DR$k",'DISCHARGE_COMPLETE_DATE')
                ->setCellValue("DS$k",'DISCHARGE_COMPLETE_TIME')
                ->setCellValue("DT$k",'SC_ON_ARRIVAL_DRAFT_AFT')
                ->setCellValue("DU$k",'SC_ON_ARRIVAL_DRAFT_FWD')
                ->setCellValue("DV$k",'TIME_SAMPLING_COMMENCED')
                ->setCellValue("DW$k",'TIME_SAMPLING_COMPLETED')
                ->setCellValue("DX$k",'DATE_CONNECTED_COMMENCED')
                ->setCellValue("DY$k",'DATE_CONNECTED_COMPLETED')
                ->setCellValue("DZ$k",'SC_ON_ARRIVAL_DRAFT_LIST')
                ->setCellValue("EA$k",'TIME_CONNECTED_COMMENCED')
                ->setCellValue("EB$k",'TIME_CONNECTED_COMPLETED')
                ->setCellValue("EC$k",'REMARKS_DOCUMENTS_ONBOARD')
                ->setCellValue("ED$k",'REMARKS_LOADING_COMMENCED')
                ->setCellValue("EE$k",'REMARKS_LOADING_COMPLETED')
                ->setCellValue("EF$k",'REMARKS_SURVEYOR_ON_BOARD')
                ->setCellValue("EG$k",'SC_ON_DEPARTURE_DRAFT_AFT')
                ->setCellValue("EH$k",'SC_ON_DEPARTURE_DRAFT_FWD')
                ->setCellValue("EI$k",'DATE_MEASUREMENT_COMMENCED')
                ->setCellValue("EJ$k",'DATE_MEASUREMENT_COMPLETED')
                ->setCellValue("EK$k",'REMARKS_SAMPLING_COMMENCED')
                ->setCellValue("EL$k",'REMARKS_SAMPLING_COMPLETED')
                ->setCellValue("EM$k",'SC_ON_DEPARTURE_DRAFT_LIST')
                ->setCellValue("EN$k",'SL_VEF_APPLIED_VS_BOL_BBLS')
                ->setCellValue("EO$k",'SL_VEF_APPLIED_VS_BOL_KL15')
                ->setCellValue("EP$k",'TIME_MEASUREMENT_COMMENCED')
                ->setCellValue("EQ$k",'TIME_MEASUREMENT_COMPLETED')
                ->setCellValue("ER$k",'REMARKS_CONNECTED_COMMENCED')
                ->setCellValue("ES$k",'REMARKS_CONNECTED_COMPLETED')
                ->setCellValue("ET$k",'SL_VEF_APPLIED_VS_BOL_KLOBS')
                ->setCellValue("EU$k",'REMARKS_MEASUREMENT_COMMENCED')
                ->setCellValue("EV$k",'REMARKS_MEASUREMENT_COMPLETED')
                ->setCellValue("EW$k",'SL_VEF_APPLIED_VS_BOL_LONGTON')
                ->setCellValue("EX$k",'SL_VEF_APPLIED_VS_BOL_METRICTON')
                ->setCellValue("EY$k",'IS_DELETE')
                ->setCellValue("EZ$k",'CREATE_TIME')
                ->setCellValue("FA$k",'CREATE_USER')
                ->setCellValue("FB$k",'MODIFY_TIME')
                ->setCellValue("FC$k",'MODIFY_USER')
                ->setCellValue("FD$k",'DELETE_TIME')
                ->setCellValue("FE$k",'CLIENT_SITE_ID')
                ->setCellValue("FF$k",'SF_GSV_KLOBS')
                ->setCellValue("FG$k",'SF_NSV_KLOBS')
                ->setCellValue("FH$k",'SF_FREE_WATER_AL_BBLS')
                ->setCellValue("FI$k",'SF_FREE_WATER_AL_KL15')
                ->setCellValue("FJ$k",'SF_SFAL_TOV_METRICTON')
                ->setCellValue("FK$k",'SL_APPLIED_VEFL_KLOBS')
                ->setCellValue("FL$k",'DATE_HOSE_DISCONNECTED')
                ->setCellValue("FM$k",'SF_FREE_WATER_AL_KLOBS')
                ->setCellValue("FN$k",'DATE_DISCHARGE_COMPLETED')
                ->setCellValue("FO$k",'DATE_INPECTION_COMMENCED')
                ->setCellValue("FP$k",'SF_FREE_WATER_AL_LONGTON')
                ->setCellValue("FQ$k",'TIME_DISCHARGE_COMMENCED')
                ->setCellValue("FR$k",'TIME_DISCHARGE_COMPLETED')
                ->setCellValue("FS$k",'TIME_INPECTION_COMMENCED')
                ->setCellValue("FT$k",'DATE_INSPECTION_COMPLETED')
                ->setCellValue("FU$k",'REMARKS_HOSE_DISCONNECTED')
                ->setCellValue("FV$k",'SL_APPLIED_VEFL_METRICTON')
                ->setCellValue("FW$k",'TIME_INSPECTION_COMPLETED')
                ->setCellValue("FX$k",'SF_FREE_WATER_AL_METRICTON')
                ->setCellValue("FY$k",'REMARKS_DISCHARGE_COMMENCED')
                ->setCellValue("FZ$k",'REMARKS_DISCHARGE_COMPLETED')
                ->setCellValue("GA$k",'REMARKS_INPECTION_COMMENCED')
                ->setCellValue("GB$k",'REMARKS_INSPECTION_COMPLETED')
                ->setCellValue("GC$k",'DATE_HOSE_CONNECTED_COMMENCED')
                ->setCellValue("GD$k",'DATE_HOSE_CONNECTED_COMPLETED')
                ->setCellValue("GE$k",'SL_VEF_APPLIED_VS_BOL_R1_BBLS')
                ->setCellValue("GF$k",'SL_VEF_APPLIED_VS_BOL_R1_KL15')
                ->setCellValue("GG$k",'TIME_HOSE_CONNECTED_COMMENCED')
                ->setCellValue("GH$k",'TIME_HOSE_CONNECTED_COMPLETED')
                ->setCellValue("GI$k",'SL_VEF_APPLIED_VS_BOL_R1_KLOBS')
                ->setCellValue("GJ$k",'SF_SHORE_TANKS_NOMINATION_KLOBS')
                ->setCellValue("GK$k",'DATE_CARGO_MEASUREMENT_COMMENCED')
                ->setCellValue("GL$k",'DATE_CARGO_MEASUREMENT_COMPLETED')
                ->setCellValue("GM$k",'REMARKS_HOSE_CONNECTED_COMMENCED')
                ->setCellValue("GN$k",'REMARKS_HOSE_CONNECTED_COMPLETED')
                ->setCellValue("GO$k",'SL_VEF_APPLIED_VS_BOL_R1_LONGTON')
                ->setCellValue("GP$k",'TIME_CARGO_MEASUREMENT_COMMENCED')
                ->setCellValue("GQ$k",'TIME_CARGO_MEASUREMENT_COMPLETED')
                ->setCellValue("GR$k",'SL_VEF_APPLIED_VS_BOL_R1_METRICTON')
                ->setCellValue("GS$k",'REMARKS_CARGO_MEASUREMENT_COMMENCED')
                ->setCellValue("GT$k",'REMARKS_CARGO_MEASUREMENT_COMPLETED')
                ->setCellValue("GU$k",'BL_FLOW_METER')
                ->setCellValue("GV$k",'BL_SHORE_TANK')
                ->setCellValue("GW$k",'BL_SHIP_TANK')
                ->setCellValue("GX$k",'FSOQ')
                ->setCellValue("GY$k",'SURVEYOR_IN_CHARGE')
                ->setCellValue("GZ$k",'RN_NOTICE_ISSUE_DESCRIPTION')
                ->setCellValue("HA$k",'RN_LETTER_ISSUE_DESCRIPTION')
                ->setCellValue("HB$k",'RN_STATEMENT_ISSUE_DESCRIPTION')
                ->setCellValue("HC$k",'DATE_A_AWEIGH')
                ->setCellValue("HD$k",'TIME_A_AWEIGH')
                ->setCellValue("HE$k",'DATE_POB')
                ->setCellValue("HF$k",'TIME_POB')
                ->setCellValue("HG$k",'DATE_BERTHING')
                ->setCellValue("HH$k",'TIME_BERTHING')
                ->setCellValue("HI$k",'DATE_SBD_COMMENCED')
                ->setCellValue("HJ$k",'DATE_SBD_COMPLETED')
                ->setCellValue("HK$k",'TIME_SBD_COMMENCED')
                ->setCellValue("HL$k",'TIME_SBD_COMPLETED')
                ->setCellValue("HM$k",'DATE_DISCHARGE_COMMENCED')
                ->setCellValue("HN$k",'DATE_TANKS_INS_COMMENCED')
                ->setCellValue("HO$k",'TIME_TANKS_INS_COMMENCED')
                ->setCellValue("HP$k",'DATE_TANKS_INS_COMPLETED')
                ->setCellValue("HQ$k",'TIME_TANKS_INS_COMPLETED')
                ->setCellValue("HR$k",'DATE_SVY_LEFT_VESSEL')
                ->setCellValue("HS$k",'TIME_SVY_LEFT_VESSEL')
                ->setCellValue("HT$k",'DATE_VESSEL_SAIL')
                ->setCellValue("HU$k",'TIME_VESSEL_SAIL')
                ->setCellValue("HV$k",'TIME_HOSE_DISCONNECTED')
                ->setCellValue("HW$k",'BL_SFAL_KLOBS')
                ->setCellValue("HX$k",'BL_SFAL_KL15')
                ->setCellValue("HY$k",'BL_SFAL_BBLS')
                ->setCellValue("HZ$k",'BL_SFAL_METRICTON')
                ->setCellValue("IA$k",'BL_SFAL_LONGTON')
                ->setCellValue("IB$k",'SF_SFAL_KLOBS')
                ->setCellValue("IC$k",'SF_SFAL_KL15')
                ->setCellValue("ID$k",'SF_SFAL_BBLS')
                ->setCellValue("IE$k",'SF_SFAL_METRICTON')
                ->setCellValue("IF$k",'SF_SFAL_LONGTON')
                ->setCellValue("IG$k",'SFBD_TOV_KLOBS')
                ->setCellValue("IH$k",'SFBD_TOV_KL15')

                ->setCellValue("II$k",'SFBD_TOV_BBLS')
                ->setCellValue("IJ$k",'SFBD_TOV_METRICTON')
                ->setCellValue("IK$k",'SFBD_TOV_LONGTON')
                ->setCellValue("IL$k",'SFBD_GSV_KLOBS')
                ->setCellValue("IM$k",'SFBD_GSV_KL15')
                ->setCellValue("IN$k",'SFBD_GSV_BBLS')
                ->setCellValue("IO$k",'SFBD_GSV_METRICTON')
                ->setCellValue("IP$k",'SFBD_GSV_LONGTON')
                ->setCellValue("IQ$k",'ROBQ_KLOBS')
                ->setCellValue("IR$k",'ROBQ_KL15')
                ->setCellValue("IS$k",'ROBQ_BBLS')
                ->setCellValue("IT$k",'ROBQ_METRICTON')
                ->setCellValue("IU$k",'ROBQ_LONGTON')

                ->setCellValue("IV$k",'VESSEL')

                ->setCellValue("IW$k",'SLVS_BOL_R1_KLOBS')
                ->setCellValue("IX$k",'SLVS_BOL_R1_KL15')
                ->setCellValue("IY$k",'SLVS_BOL_R1_BBLS')
                ->setCellValue("IZ$k",'SLVS_BOL_R1_LONGTON')
                ->setCellValue("JA$k",'SLVS_BOL_R1_METRICTON')

                ->setCellValue("JB$k",'SFAL_VS_SFBD_R2_KLOBS')
                ->setCellValue("JC$k",'SFAL_VS_SFBD_R2_KL15')
                ->setCellValue("JD$k",'SFAL_VS_SFBD_R2_BBLS')
                ->setCellValue("JE$k",'SFAL_VS_SFBD_R2_LONGTON')
                ->setCellValue("JF$k",'SFAL_VS_SFBD_R2_METRICTON')

                ->setCellValue("JG$k",'SFBD_VS_SR_R3_KLOBS')
                ->setCellValue("JH$k",'SFBD_VS_SR_R3_KL15')
                ->setCellValue("JI$k",'SFBD_VS_SR_R3_BBLS')
                ->setCellValue("JJ$k",'SFBD_VS_SR_R3_LONGTON')
                ->setCellValue("JK$k",'SFBD_VS_SR_R3_METRICTON')

                ->setCellValue("JL$k",'SR_VS_BOL_R4_KLOBS')
                ->setCellValue("JM$k",'SR_VS_BOL_R4_KL15')
                ->setCellValue("JN$k",'SR_VS_BOL_R4_BBLS')
                ->setCellValue("JO$k",'SR_VS_BOL_R4_LONGTON')
                ->setCellValue("JP$k",'SR_VS_BOL_R4_METRICTON');

        // Add some data
        $x  = 2;
        $no = 0;
        foreach($query_items as $sub){
        	$no++;
        	if(is_array(json_decode($sub['SURVEYOR_IN_CHARGE']))) $sub['SURVEYOR_IN_CHARGE'] = @implode(",",json_decode($sub['SURVEYOR_IN_CHARGE']));
        	if(is_array(json_decode($sub['SUPPLIER']))) $sub['SUPPLIER'] = @implode(",",json_decode($sub['SUPPLIER']));
        	if(is_array(json_decode($sub['BUYER']))) $sub['BUYER'] = @implode(",",json_decode($sub['BUYER']));
        	if(is_array(json_decode($sub['SELLER']))) $sub['SELLER'] = @implode(",",json_decode($sub['SELLER']));
        	if(is_array(json_decode($sub['TRADER']))) $sub['TRADER'] = @implode(",",json_decode($sub['TRADER']));
        	if(is_array(json_decode($sub['SHARING_FEE']))) $sub['SHARING_FEE'] = @implode(",",json_decode($sub['SHARING_FEE']));
        	if(is_array(json_decode($sub['PORT_TERMINAL']))) $sub['PORT_TERMINAL'] = @implode(",",json_decode($sub['PORT_TERMINAL']));
        	if($sub['DATE_NOR']      == '1970-01-01') $sub['DATE_NOR'] = '';
        	if($sub['DATE_BERTHED']  == '1970-01-01') $sub['DATE_BERTHED'] = '';
        	if($sub['BL_START_DATE'] == '1970-01-01') $sub['BL_START_DATE'] = '';
        	if($sub['DATE_ACCEPTED'] == '1970-01-01') $sub['DATE_ACCEPTED'] = '';
        	if($sub['DATE_CONTRACT'] == '1970-01-01') $sub['DATE_CONTRACT'] = '';
        	if($sub['DATE_COMMENCED'] == '1970-01-01') $sub['DATE_COMMENCED'] = '';
        	if($sub['DATE_COMPLETED'] == '1970-01-01') $sub['DATE_COMPLETED'] = '';	
        	if($sub['DATE_ANCHORAGED'] == '1970-01-01') $sub['DATE_ANCHORAGED'] = '';	
        	if($sub['DATE_KEY_MEETING'] == '1970-01-01') $sub['DATE_KEY_MEETING'] = '';	
        	if($sub['DATE_OF_ANALYSIS'] == '1970-01-01') $sub['DATE_OF_ANALYSIS'] = '';	
        	if($sub['DATE_VESSEL_ARRIVED'] == '1970-01-01') $sub['DATE_VESSEL_ARRIVED'] = '';	
        	if($sub['DISCHARGE_START_DATE'] == '1970-01-01') $sub['DISCHARGE_START_DATE'] = '';	
        	if($sub['LOADING_COMPLETE_DATE'] == '1970-01-01') $sub['LOADING_COMPLETE_DATE'] = '';	
        	if($sub['DATE_DOCUMENTS_ONBOARD'] == '1970-01-01') $sub['DATE_DOCUMENTS_ONBOARD'] = '';	
        	if($sub['DATE_LOADING_COMMENCED'] == '1970-01-01') $sub['DATE_LOADING_COMMENCED'] = '';	
        	if($sub['DATE_LOADING_COMPLETED'] == '1970-01-01') $sub['DATE_LOADING_COMPLETED'] = '';	
        	if($sub['DATE_SURVEYOR_ON_BOARD'] == '1970-01-01') $sub['DATE_SURVEYOR_ON_BOARD'] = '';	
        	if($sub['DATE_SAMPLING_COMMENCED'] == '1970-01-01') $sub['DATE_SAMPLING_COMMENCED'] = '';	
        	if($sub['DATE_SAMPLING_COMPLETED'] == '1970-01-01') $sub['DATE_SAMPLING_COMPLETED'] = '';	
        	if($sub['DISCHARGE_COMPLETE_DATE'] == '1970-01-01') $sub['DISCHARGE_COMPLETE_DATE'] = '';	
        	if($sub['DATE_CONNECTED_COMMENCED'] == '1970-01-01') $sub['DATE_CONNECTED_COMMENCED'] = '';	
        	if($sub['DATE_CONNECTED_COMPLETED'] == '1970-01-01') $sub['DATE_CONNECTED_COMPLETED'] = '';	
        	if($sub['DATE_MEASUREMENT_COMMENCED'] == '1970-01-01') $sub['DATE_MEASUREMENT_COMMENCED'] = '';	
        	if($sub['DATE_MEASUREMENT_COMPLETED'] == '1970-01-01') $sub['DATE_MEASUREMENT_COMPLETED'] = '';	
        	if($sub['DATE_HOSE_DISCONNECTED'] == '1970-01-01') $sub['DATE_HOSE_DISCONNECTED'] = '';	
        	if($sub['DATE_DISCHARGE_COMPLETED'] == '1970-01-01') $sub['DATE_DISCHARGE_COMPLETED'] = '';	
        	if($sub['DATE_INPECTION_COMMENCED'] == '1970-01-01') $sub['DATE_INPECTION_COMMENCED'] = '';	
        	if($sub['DATE_INSPECTION_COMPLETED'] == '1970-01-01') $sub['DATE_INSPECTION_COMPLETED'] = '';	
        	if($sub['DATE_HOSE_CONNECTED_COMMENCED'] == '1970-01-01') $sub['DATE_HOSE_CONNECTED_COMMENCED'] = '';	
        	if($sub['DATE_HOSE_CONNECTED_COMPLETED'] == '1970-01-01') $sub['DATE_HOSE_CONNECTED_COMPLETED'] = '';	
        	if($sub['DATE_CARGO_MEASUREMENT_COMMENCED'] == '1970-01-01') $sub['DATE_CARGO_MEASUREMENT_COMMENCED'] = '';	
        	if($sub['DATE_CARGO_MEASUREMENT_COMPLETED'] == '1970-01-01') $sub['DATE_CARGO_MEASUREMENT_COMPLETED'] = '';	
        	if($sub['DATE_LOISPKPOWONOA'] == '1970-01-01') $sub['DATE_LOISPKPOWONOA'] = '';	
        	if($sub['DATE_VESSEL_SAILED'] == '1970-01-01') $sub['DATE_VESSEL_SAILED'] = '';	
        	if($sub['LOADING_START_DATE'] == '1970-01-01') $sub['LOADING_START_DATE'] = '';	

        	$sub['BUYER']    = str_replace('"',"", $sub['BUYER']);
        	$sub['SELLER']   = str_replace('"',"", $sub['SELLER']);
        	$sub['TRADER']   = str_replace('"',"", $sub['TRADER']);
        	$sub['SUPPLIER'] = str_replace('"',"", $sub['SUPPLIER']);
        	$sub['PRODUCT']  = str_replace('"',"", $sub['PRODUCT']);
        	$sub['SHARING_FEE'] = str_replace('"',"", $sub['SHARING_FEE']);
        	$sub['PORT_TERMINAL'] = str_replace('"',"", $sub['PORT_TERMINAL']);

            $spreadsheet->setActiveSheetIndex(0)
                    ->setCellValue("A$x",$no)
                    ->setCellValue("B$x",$sub['SC'])
                    ->setCellValue("C$x",$sub['IWO'])
                    ->setCellValue("D$x",$sub['SPK'])
                    ->setCellValue("E$x",$sub['VOY'])
                    ->setCellValue("F$x",$sub['AREA'])
                    ->setCellValue("G$x",$sub['SUPPLIER'])
                    ->setCellValue("H$x",$sub['BUYER'])
                    ->setCellValue("I$x",$sub['SELLER'])
                    ->setCellValue("J$x",$sub['TRADER'])
                    ->setCellValue("K$x",$sub['KONTRAK'])
                    ->setCellValue("L$x",$sub['PRODUCT'])
                    ->setCellValue("M$x",$sub['DATE_NOR'])
                    ->setCellValue("N$x",$sub['TIME_NOR'])
                    ->setCellValue("O$x",$sub['FWAL_BBLS'])
                    ->setCellValue("P$x",$sub['FWAL_KL15'])
                    ->setCellValue("Q$x",$sub['FILE_ORDER'])
                    ->setCellValue("R$x",$sub['FWAL_KLOBS'])
                    ->setCellValue("S$x",$sub['REMARKS_NOR'])
                    ->setCellValue("T$x",$sub['SELECT_PORT'])
                    ->setCellValue("U$x",$sub['SHARING_FEE'])
                    ->setCellValue("V$x",$sub['SL_GSV_BBLS'])
                    ->setCellValue("W$x",$sub['SL_GSV_KL15'])
                    ->setCellValue("X$x",$sub['DATE_BERTHED'])
                    ->setCellValue("Y$x",$sub['FWAL_LONGTON'])
                    ->setCellValue("Z$x",$sub['PRODUCT_TYPE'])
                    ->setCellValue("AA$x",$sub['SELECT_CARGO'])
                    ->setCellValue("AB$x",$sub['SL_GSV_KLOBS'])
                    ->setCellValue("AC$x",$sub['TIME_BERTHED'])
                    ->setCellValue("AD$x",$sub['BL_START_DATE'])
                    ->setCellValue("AE$x",$sub['BL_START_TIME'])
                    ->setCellValue("AF$x",$sub['DATE_ACCEPTED'])
                    ->setCellValue("AG$x",$sub['DATE_CONTRACT'])
                    ->setCellValue("AH$x",$sub['PORT_TERMINAL'])
                    ->setCellValue("AI$x",$sub['SAMPLE_SOURCE'])
                    ->setCellValue("AJ$x",$sub['SELECT_CLIENT'])
                    ->setCellValue("AK$x",$sub['SFAL_TOV_BBLS'])
                    ->setCellValue("AL$x",$sub['SFAL_TOV_KL15'])
                    ->setCellValue("AM$x",$sub['ST_NOMINATION'])
                    ->setCellValue("AN$x",$sub['TIME_ACCEPTED'])
                    ->setCellValue("AO$x",$sub['DATE_COMMENCED'])
                    ->setCellValue("AP$x",$sub['DATE_COMPLETED'])
                    ->setCellValue("AQ$x",$sub['FWAL_METRICTON'])
                    ->setCellValue("AR$x",$sub['SELECT_PRODUCT'])
                    ->setCellValue("AS$x",$sub['SFAL_TOV_KLOBS'])
                    ->setCellValue("AT$x",$sub['SL_GSV_LONGTON'])
                    ->setCellValue("AU$x",$sub['TIME_COMMENCED'])
                    ->setCellValue("AV$x",$sub['TIME_COMPLETED'])
                    ->setCellValue("AW$x",$sub['DATE_ANCHORAGED'])
                    ->setCellValue("AX$x",$sub['REMARKS_BERTHED'])
                    ->setCellValue("AY$x",$sub['RN_LETTER_ISSUE'])
                    ->setCellValue("AZ$x",$sub['RN_NOTICE_ISSUE'])
                    ->setCellValue("BA$x",$sub['TIME_ANCHORAGED'])
                    ->setCellValue("BB$x",$sub['BL_QUANTITY_BBLS'])
                    ->setCellValue("BC$x",$sub['BL_QUANTITY_KL15'])
                    ->setCellValue("BD$x",$sub['DATE_KEY_MEETING'])
                    ->setCellValue("BE$x",$sub['DATE_OF_ANALYSIS'])
                    ->setCellValue("BF$x",$sub['REMARKS_ACCEPTED'])
                    ->setCellValue("BG$x",$sub['SF_QUANTITY_BBLS'])
                    ->setCellValue("BH$x",$sub['SF_QUANTITY_KL15'])
                    ->setCellValue("BI$x",$sub['SFAL_TOV_LONGTON'])
                    ->setCellValue("BJ$x",$sub['SL_GSV_METRICTON'])
                    ->setCellValue("BK$x",$sub['TIME_KEY_MEETING'])
                    ->setCellValue("BL$x",$sub['VEF_LOADING_BBLS'])
                    ->setCellValue("BM$x",$sub['BL_QUANTITY_KLOBS'])
                    ->setCellValue("BN$x",$sub['BO_MDO_ON_ARRIVAL'])
                    ->setCellValue("BO$x",$sub['BO_MFO_ON_ARRIVAL'])
                    ->setCellValue("BP$x",$sub['OBQ_QUANTITY_BBLS'])
                    ->setCellValue("BQ$x",$sub['OBQ_QUANTITY_KL15'])
                    ->setCellValue("BR$x",$sub['REMARKS_COMMENCED'])
                    ->setCellValue("BS$x",$sub['REMARKS_COMPLETED'])
                    ->setCellValue("BT$x",$sub['SF_QUANTITY_KLOBS'])
                    ->setCellValue("BU$x",$sub['SL_VS_BOL_R1_BBLS'])
                    ->setCellValue("BV$x",$sub['SL_VS_BOL_R1_KL15'])
                    ->setCellValue("BW$x",$sub['ACTIVITIES_REMARKS'])
                    ->setCellValue("BX$x",$sub['DATE_LOISPKPOWONOA'])
                    ->setCellValue("BY$x",$sub['DATE_VESSEL_SAILED'])
                    ->setCellValue("BZ$x",$sub['LOADING_START_DATE'])
                    ->setCellValue("CA$x",$sub['LOADING_START_TIME'])
                    ->setCellValue("CB$x",$sub['OBQ_QUANTITY_KLOBS'])
                    ->setCellValue("CC$x",$sub['REMARKS_ANCHORAGED'])
                    ->setCellValue("CD$x",$sub['RN_STATEMENT_ISSUE'])
                    ->setCellValue("CE$x",$sub['SFAL_TOV_METRICTON'])
                    ->setCellValue("CF$x",$sub['SL_VS_BOL_R1_KLOBS'])
                    ->setCellValue("CG$x",$sub['TIME_VESSEL_SAILED'])
                    ->setCellValue("CH$x",$sub['BL_QUANTITY_LONGTON'])
                    ->setCellValue("CI$x",$sub['BO_MDO_ON_DEPARTURE'])
                    ->setCellValue("CJ$x",$sub['BO_MFO_ON_DEPARTURE'])
                    ->setCellValue("CK$x",$sub['CLIENT_SITE_ID_FORM'])
                    ->setCellValue("CL$x",$sub['DATE_HOSE_CONNECTED'])
                    ->setCellValue("CM$x",$sub['DATE_VESSEL_ARRIVED'])
                    ->setCellValue("CN$x",$sub['REMARKS_KEY_MEETING'])
                    ->setCellValue("CO$x",$sub['SELECT_INTERVENTION'])
                    ->setCellValue("CP$x",$sub['SF_QUANTITY_LONGTON'])
                    ->setCellValue("CQ$x",$sub['TIME_HOSE_CONNECTED'])
                    ->setCellValue("CR$x",$sub['TIME_VESSEL_ARRIVED'])
                    ->setCellValue("CS$x",$sub['DISCHARGE_START_DATE'])
                    ->setCellValue("CT$x",$sub['DISCHARGE_START_TIME'])
                    ->setCellValue("CU$x",$sub['OBQ_QUANTITY_LONGTON'])
                    ->setCellValue("CV$x",$sub['SL_APPLIED_VEFL_BBLS'])
                    ->setCellValue("CW$x",$sub['SL_VS_BOL_R1_LONGTON'])
                    ->setCellValue("CX$x",$sub['BL_15_DERAJAT_CELCIUS'])
                    ->setCellValue("CY$x",$sub['BL_QUANTITY_METRICTON'])
                    ->setCellValue("CZ$x",$sub['LOADING_COMPLETE_DATE'])
                    ->setCellValue("DA$x",$sub['LOADING_COMPLETE_TIME'])
                    ->setCellValue("DB$x",$sub['REMARKS_VESSEL_SAILED'])
                    ->setCellValue("DC$x",$sub['DATE_DOCUMENTS_ONBOARD'])
                    ->setCellValue("DD$x",$sub['DATE_LOADING_COMMENCED'])
                    ->setCellValue("DE$x",$sub['DATE_LOADING_COMPLETED'])
                    ->setCellValue("DF$x",$sub['DATE_SURVEYOR_ON_BOARD'])
                    ->setCellValue("DG$x",$sub['OBQ_QUANTITY_METRICTON'])
                    ->setCellValue("DH$x",$sub['REMARKS_HOSE_CONNECTED'])
                    ->setCellValue("DI$x",$sub['REMARKS_VESSEL_ARRIVED'])
                    ->setCellValue("DJ$x",$sub['SF_QUANTITY_METRICTON'])
                    ->setCellValue("DK$x",$sub['SL_VS_BOL_R1_METRICTON'])
                    ->setCellValue("DL$x",$sub['TIME_DOCUMENTS_ONBOARD'])
                    ->setCellValue("DM$x",$sub['TIME_LOADING_COMMENCED'])
                    ->setCellValue("DN$x",$sub['TIME_LOADING_COMPLETED'])
                    ->setCellValue("DO$x",$sub['TIME_SURVEYOR_ON_BOARD'])
                    ->setCellValue("DP$x",$sub['DATE_SAMPLING_COMMENCED'])
                    ->setCellValue("DQ$x",$sub['DATE_SAMPLING_COMPLETED'])
                    ->setCellValue("DR$x",$sub['DISCHARGE_COMPLETE_DATE'])
                    ->setCellValue("DS$x",$sub['DISCHARGE_COMPLETE_TIME'])
                    ->setCellValue("DT$x",$sub['SC_ON_ARRIVAL_DRAFT_AFT'])
                    ->setCellValue("DU$x",$sub['SC_ON_ARRIVAL_DRAFT_FWD'])
                    ->setCellValue("DV$x",$sub['TIME_SAMPLING_COMMENCED'])
                    ->setCellValue("DW$x",$sub['TIME_SAMPLING_COMPLETED'])
                    ->setCellValue("DX$x",$sub['DATE_CONNECTED_COMMENCED'])
                    ->setCellValue("DY$x",$sub['DATE_CONNECTED_COMPLETED'])
                    ->setCellValue("DZ$x",$sub['SC_ON_ARRIVAL_DRAFT_LIST'])
                    ->setCellValue("EA$x",$sub['TIME_CONNECTED_COMMENCED'])
                    ->setCellValue("EB$x",$sub['TIME_CONNECTED_COMPLETED'])
                    ->setCellValue("EC$x",$sub['REMARKS_DOCUMENTS_ONBOARD'])
                    ->setCellValue("ED$x",$sub['REMARKS_LOADING_COMMENCED'])
                    ->setCellValue("EE$x",$sub['REMARKS_LOADING_COMPLETED'])
                    ->setCellValue("EF$x",$sub['REMARKS_SURVEYOR_ON_BOARD'])
                    ->setCellValue("EG$x",$sub['SC_ON_DEPARTURE_DRAFT_AFT'])
                    ->setCellValue("EH$x",$sub['SC_ON_DEPARTURE_DRAFT_FWD'])
                    ->setCellValue("EI$x",$sub['DATE_MEASUREMENT_COMMENCED'])
                    ->setCellValue("EJ$x",$sub['DATE_MEASUREMENT_COMPLETED'])
                    ->setCellValue("EK$x",$sub['REMARKS_SAMPLING_COMMENCED'])
                    ->setCellValue("EL$x",$sub['REMARKS_SAMPLING_COMPLETED'])
                    ->setCellValue("EM$x",$sub['SC_ON_DEPARTURE_DRAFT_LIST'])
                    ->setCellValue("EN$x",$sub['SL_VEF_APPLIED_VS_BOL_BBLS'])
                    ->setCellValue("EO$x",$sub['SL_VEF_APPLIED_VS_BOL_KL15'])
                    ->setCellValue("EP$x",$sub['TIME_MEASUREMENT_COMMENCED'])
                    ->setCellValue("EQ$x",$sub['TIME_MEASUREMENT_COMPLETED'])
                    ->setCellValue("ER$x",$sub['REMARKS_CONNECTED_COMMENCED'])
                    ->setCellValue("ES$x",$sub['REMARKS_CONNECTED_COMPLETED'])
                    ->setCellValue("ET$x",$sub['SL_VEF_APPLIED_VS_BOL_KLOBS'])
                    ->setCellValue("EU$x",$sub['REMARKS_MEASUREMENT_COMMENCED'])
                    ->setCellValue("EV$x",$sub['REMARKS_MEASUREMENT_COMPLETED'])
                    ->setCellValue("EW$x",$sub['SL_VEF_APPLIED_VS_BOL_LONGTON'])
                    ->setCellValue("EX$x",$sub['SL_VEF_APPLIED_VS_BOL_METRICTON'])
                    ->setCellValue("EY$x",$sub['IS_DELETE'])
                    ->setCellValue("EZ$x",$sub['CREATE_TIME'])
                    ->setCellValue("FA$x",$sub['CREATE_USER'])
                    ->setCellValue("FB$x",$sub['MODIFY_TIME'])
                    ->setCellValue("FC$x",$sub['MODIFY_USER'])
                    ->setCellValue("FD$x",$sub['DELETE_TIME'])
                    ->setCellValue("FE$x",$sub['CLIENT_SITE_ID'])
                    ->setCellValue("FF$x",$sub['SF_GSV_KLOBS'])
                    ->setCellValue("FG$x",$sub['SF_NSV_KLOBS'])
                    ->setCellValue("FH$x",$sub['SF_FREE_WATER_AL_BBLS'])
                    ->setCellValue("FI$x",$sub['SF_FREE_WATER_AL_KL15'])
                    ->setCellValue("FJ$x",$sub['SF_SFAL_TOV_METRICTON'])
                    ->setCellValue("FK$x",$sub['SL_APPLIED_VEFL_KLOBS'])
                    ->setCellValue("FL$x",$sub['DATE_HOSE_DISCONNECTED'])
                    ->setCellValue("FM$x",$sub['SF_FREE_WATER_AL_KLOBS'])
                    ->setCellValue("FN$x",$sub['DATE_DISCHARGE_COMPLETED'])
                    ->setCellValue("FO$x",$sub['DATE_INPECTION_COMMENCED'])
                    ->setCellValue("FP$x",$sub['SF_FREE_WATER_AL_LONGTON'])
                    ->setCellValue("FQ$x",$sub['TIME_DISCHARGE_COMMENCED'])
                    ->setCellValue("FR$x",$sub['TIME_DISCHARGE_COMPLETED'])
                    ->setCellValue("FS$x",$sub['TIME_INPECTION_COMMENCED'])
                    ->setCellValue("FT$x",$sub['DATE_INSPECTION_COMPLETED'])
                    ->setCellValue("FU$x",$sub['REMARKS_HOSE_DISCONNECTED'])
                    ->setCellValue("FV$x",$sub['SL_APPLIED_VEFL_METRICTON'])
                    ->setCellValue("FW$x",$sub['TIME_INSPECTION_COMPLETED'])
                    ->setCellValue("FX$x",$sub['SF_FREE_WATER_AL_METRICTON'])
                    ->setCellValue("FY$x",$sub['REMARKS_DISCHARGE_COMMENCED'])
                    ->setCellValue("FZ$x",$sub['REMARKS_DISCHARGE_COMPLETED'])
                    ->setCellValue("GA$x",$sub['REMARKS_INPECTION_COMMENCED'])
                    ->setCellValue("GB$x",$sub['REMARKS_INSPECTION_COMPLETED'])
                    ->setCellValue("GC$x",$sub['DATE_HOSE_CONNECTED_COMMENCED'])
                    ->setCellValue("GD$x",$sub['DATE_HOSE_CONNECTED_COMPLETED'])
                    ->setCellValue("GE$x",$sub['SL_VEF_APPLIED_VS_BOL_R1_BBLS'])
                    ->setCellValue("GF$x",$sub['SL_VEF_APPLIED_VS_BOL_R1_KL15'])
                    ->setCellValue("GG$x",$sub['TIME_HOSE_CONNECTED_COMMENCED'])
                    ->setCellValue("GH$x",$sub['TIME_HOSE_CONNECTED_COMPLETED'])
                    ->setCellValue("GI$x",$sub['SL_VEF_APPLIED_VS_BOL_R1_KLOBS'])
                    ->setCellValue("GJ$x",$sub['SF_SHORE_TANKS_NOMINATION_KLOBS'])
                    ->setCellValue("GK$x",$sub['DATE_CARGO_MEASUREMENT_COMMENCED'])
                    ->setCellValue("GL$x",$sub['DATE_CARGO_MEASUREMENT_COMPLETED'])
                    ->setCellValue("GM$x",$sub['REMARKS_HOSE_CONNECTED_COMMENCED'])
                    ->setCellValue("GN$x",$sub['REMARKS_HOSE_CONNECTED_COMPLETED'])
                    ->setCellValue("GO$x",$sub['SL_VEF_APPLIED_VS_BOL_R1_LONGTON'])
                    ->setCellValue("GP$x",$sub['TIME_CARGO_MEASUREMENT_COMMENCED'])
                    ->setCellValue("GQ$x",$sub['TIME_CARGO_MEASUREMENT_COMPLETED'])
                    ->setCellValue("GR$x",$sub['SL_VEF_APPLIED_VS_BOL_R1_METRICTON'])
                    ->setCellValue("GS$x",$sub['REMARKS_CARGO_MEASUREMENT_COMMENCED'])
                    ->setCellValue("GT$x",$sub['REMARKS_CARGO_MEASUREMENT_COMPLETED'])
                    ->setCellValue("GU$x",$sub['BL_FLOW_METER'])
                    ->setCellValue("GV$x",$sub['BL_SHORE_TANK'])
                    ->setCellValue("GW$x",$sub['BL_SHIP_TANK'])
                    ->setCellValue("GX$x",$sub['FSOQ'])
                    ->setCellValue("GY$x",$sub['SURVEYOR_IN_CHARGE'])
                    ->setCellValue("GZ$x",$sub['RN_NOTICE_ISSUE_DESCRIPTION'])
                    ->setCellValue("HA$x",$sub['RN_LETTER_ISSUE_DESCRIPTION'])
                    ->setCellValue("HB$x",$sub['RN_STATEMENT_ISSUE_DESCRIPTION'])
                    ->setCellValue("HC$x",$sub['DATE_A_AWEIGH'])
                    ->setCellValue("HD$x",$sub['TIME_A_AWEIGH'])
                    ->setCellValue("HE$x",$sub['DATE_POB'])
                    ->setCellValue("HF$x",$sub['TIME_POB'])
                    ->setCellValue("HG$x",$sub['DATE_BERTHING'])
                    ->setCellValue("HH$x",$sub['TIME_BERTHING'])
                    ->setCellValue("HI$x",$sub['DATE_SBD_COMMENCED'])
                    ->setCellValue("HJ$x",$sub['DATE_SBD_COMPLETED'])
                    ->setCellValue("HK$x",$sub['TIME_SBD_COMMENCED'])
                    ->setCellValue("HL$x",$sub['TIME_SBD_COMPLETED'])
                    ->setCellValue("HM$x",$sub['DATE_DISCHARGE_COMMENCED'])
                    ->setCellValue("HN$x",$sub['DATE_TANKS_INS_COMMENCED'])
                    ->setCellValue("HO$x",$sub['TIME_TANKS_INS_COMMENCED'])
                    ->setCellValue("HP$x",$sub['DATE_TANKS_INS_COMPLETED'])
                    ->setCellValue("HQ$x",$sub['TIME_TANKS_INS_COMPLETED'])
                    ->setCellValue("HR$x",$sub['DATE_SVY_LEFT_VESSEL'])
                    ->setCellValue("HS$x",$sub['TIME_SVY_LEFT_VESSEL'])
                    ->setCellValue("HT$x",$sub['DATE_VESSEL_SAIL'])
                    ->setCellValue("HU$x",$sub['TIME_VESSEL_SAIL'])
                    ->setCellValue("HV$x",$sub['TIME_HOSE_DISCONNECTED'])
                    ->setCellValue("HW$x",$sub['BL_SFAL_KLOBS'])
                    ->setCellValue("HX$x",$sub['BL_SFAL_KL15'])
                    ->setCellValue("HY$x",$sub['BL_SFAL_BBLS'])
                    ->setCellValue("HZ$x",$sub['BL_SFAL_METRICTON'])
                    ->setCellValue("IA$x",$sub['BL_SFAL_LONGTON'])
                    ->setCellValue("IB$x",$sub['SF_SFAL_KLOBS'])
                    ->setCellValue("IC$x",$sub['SF_SFAL_KL15'])
                    ->setCellValue("ID$x",$sub['SF_SFAL_BBLS'])
                    ->setCellValue("IE$x",$sub['SF_SFAL_METRICTON'])
                    ->setCellValue("IF$x",$sub['SF_SFAL_LONGTON'])
                    ->setCellValue("IG$x",$sub['SFBD_TOV_KLOBS'])
                    ->setCellValue("IH$x",$sub['SFBD_TOV_KL15'])
                    ->setCellValue("II$x",$sub['SFBD_TOV_BBLS'])
                    ->setCellValue("IJ$x",$sub['SFBD_TOV_METRICTON'])
                    ->setCellValue("IK$x",$sub['SFBD_TOV_LONGTON'])
                    ->setCellValue("IL$x",$sub['SFBD_GSV_KLOBS'])
                    ->setCellValue("IM$x",$sub['SFBD_GSV_KL15'])
                    ->setCellValue("IN$x",$sub['SFBD_GSV_BBLS'])
                    ->setCellValue("IO$x",$sub['SFBD_GSV_METRICTON'])
                    ->setCellValue("IP$x",$sub['SFBD_GSV_LONGTON'])
                    ->setCellValue("IQ$x",$sub['ROBQ_KLOBS'])
                    ->setCellValue("IR$x",$sub['ROBQ_KL15'])
                    ->setCellValue("IS$x",$sub['ROBQ_BBLS'])
                    ->setCellValue("IT$x",$sub['ROBQ_METRICTON'])
                    ->setCellValue("IU$x",$sub['ROBQ_LONGTON'])

                    ->setCellValue("IV$x",$sub['VESSEL'])

                    ->setCellValue("IW$x",$sub['SLVS_BOL_R1_KLOBS'])
                    ->setCellValue("IX$x",$sub['SLVS_BOL_R1_KL15'])
                    ->setCellValue("IY$x",$sub['SLVS_BOL_R1_BBLS'])
                    ->setCellValue("IZ$x",$sub['SLVS_BOL_R1_LONGTON'])
                    ->setCellValue("JA$x",$sub['SLVS_BOL_R1_METRICTON'])

                    ->setCellValue("JB$x",$sub['SFAL_VS_SFBD_R2_KLOBS'])
                    ->setCellValue("JC$x",$sub['SFAL_VS_SFBD_R2_KL15'])
                    ->setCellValue("JD$x",$sub['SFAL_VS_SFBD_R2_BBLS'])
                    ->setCellValue("JE$x",$sub['SFAL_VS_SFBD_R2_LONGTON'])
                    ->setCellValue("JF$x",$sub['SFAL_VS_SFBD_R2_METRICTON'])

                    ->setCellValue("JG$x",$sub['SFBD_VS_SR_R3_KLOBS'])
                    ->setCellValue("JH$x",$sub['SFBD_VS_SR_R3_KL15'])
                    ->setCellValue("JI$x",$sub['SFBD_VS_SR_R3_BBLS'])
                    ->setCellValue("JJ$x",$sub['SFBD_VS_SR_R3_LONGTON'])
                    ->setCellValue("JK$x",$sub['SFBD_VS_SR_R3_METRICTON'])

                    ->setCellValue("JL$x",$sub['SR_VS_BOL_R4_KLOBS'])
                    ->setCellValue("JM$x",$sub['SR_VS_BOL_R4_KL15'])
                    ->setCellValue("JN$x",$sub['SR_VS_BOL_R4_BBLS'])
                    ->setCellValue("JO$x",$sub['SR_VS_BOL_R4_LONGTON'])
                    ->setCellValue("JP$x",$sub['SR_VS_BOL_R4_METRICTON']);
            $x++;
        }
// Rename worksheet
        $spreadsheet->getActiveSheet()->setTitle('rekap_laporan_'.date('d_m_Y_h_i'));

// set right to left direction
//        $spreadsheet->getActiveSheet()->setRightToLeft(true);

// Set active sheet index to the first sheet, so Excel opens this as the first sheet
        $spreadsheet->setActiveSheetIndex(0);

// Redirect output to a client’s web browser (Excel2007)
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="rekap_laporan_'.date('d_m_Y_h_i').'.xlsx"');
        header('Cache-Control: max-age=0');
// If you're serving to IE 9, then the following may be needed
        header('Cache-Control: max-age=1');

// If you're serving to IE over SSL, then the following may be needed
        header('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
        header('Last-Modified: ' . gmdate('D, d M Y H:i:s') . ' GMT'); // always modified
        header('Cache-Control: cache, must-revalidate'); // HTTP/1.1
        header('Pragma: public'); // HTTP/1.0

        $writer = \PhpOffice\PhpSpreadsheet\IOFactory::createWriter($spreadsheet, 'Excel2007');
        $writer->save('php://output');
        exit;
        //  create new file and remove Compatibility mode from word title
    }

}