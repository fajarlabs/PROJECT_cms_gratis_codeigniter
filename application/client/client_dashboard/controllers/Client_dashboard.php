<?php

class Client_dashboard extends MY_Controller
{
	private $data = array();

	public function  __construct()
	{
		parent::__construct();
		// kick if session is expired
		$this->load->model(array("element_connection/Element_connection_model","client_site/Client_site_model","dashboard/Dashboard_model","form_entry/Form_entry_model"));
		if(empty(get_client_session())) {
			$this->session->set_flashdata('error_message', alert_success('Session expired'));
			redirect('company');
		}

		$this->data['csrf'] = array(
					'name' => $this->security->get_csrf_token_name(),
					'hash' => $this->security->get_csrf_hash()
				);
		// data master
		$this->data['html_css'] = '
    		<style>
    			.textbox .textbox-text {
    				color : #000;
    			}

    			.textbox {
    				border : 1px solid #CCD0D6;
    			}
    		</style>';
		    
		$this->data['html_css'] .= '
			<style>
				.form-horizontal .control-label{
					/*  text-align:right; */
						text-align:left;
						background-color:#ffa;
				}
			</style>
			<link href="'.base_url().'assets/admin/color-admin/assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
			<link href="'.base_url().'assets/admin/color-admin/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />';

		//echo $display;
		$this->data['html_js'] = '
			<script src="'.base_url().'assets/admin/color-admin/assets/js/dashboard.min.js"></script>
			<script src="'.base_url().'assets/admin/color-admin/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
			<script>
				$(document).ready(function() {
					App.init();
					Dashboard.init();
					$("#dashboard").addClass("active");
				});
				$( ".datepicker" ).datepicker({
				   format: "dd/mm/yyyy"
				});
			</script>
			<script src="https://code.highcharts.com/highcharts.js"></script>
			<script src="https://code.highcharts.com/modules/exporting.js"></script>';
	}

	public function index()
	{ 	
		$this->data['sites'] = $this->Client_site_model->get_all_items();
		$this->data['title'] = "Dashboard";
		$this->data['sites'] 		= $this->Client_site_model->get_all_items();
		$this->data['product'] 		= $this->Dashboard_model->get_table_name('MASTER_PRODUCT');
		$this->data['intervensi'] 	= $this->Dashboard_model->get_table_name('MASTER_INTERVENTION');
		$this->data['client'] 		= $this->Dashboard_model->get_table_name_one('FORM_ENTRY_FIELD');
		$this->data['area'] 		= $this->Dashboard_model->get_table_group_by('FORM_ENTRY_FIELD','AREA');
		$this->data['title'] 		= "Dashboard";
		$this->load->view("client/header",$this->data);
		$this->load->view("dashboard", $this->data);
		$this->load->view("client/footer", $this->data);
	}

	function export_excel(){
		header("Content-type: application/vnd-ms-excel");
		header("Content-Disposition: attachment; filename=Dashboard_Report-".date('ymdhis').".xls");

		$produk_id 	 	 = (int)$_POST['produk'];
		$intervention_id = (int)$_POST['intervensi'];
		$date_month  	 = $_POST['bulan'];
		$date_year   	 = $_POST['tahun'];
		$client  	 	 = $_POST['client'];
		$lokasi_kerja 	 = $_POST['lokasi_kerja'];
		$sql = 'SELECT * FROM "ELEMENT_CONNECTION" WHERE "PRODUCT_ID" = '.$produk_id.' AND  "INTERVENTION_ID" = '.$intervention_id.' ';
		$query = $this->db->query($sql);
		$col   =""; 
		foreach ($query->result() as $row){
		        $col = str_replace(['[',']'],'', $row->ELEMENT_FIELDS);
		}

		function isJSON($string){
			$data="";
		    if(is_string($string) && is_array(json_decode($string, true))){
		    	  $data_arr="";
		    	  $arr =  json_decode($string);
			      foreach ($arr as $key => $value) {
			        $data_arr .=$value.", ";
			      }
			      $data = rtrim($data_arr, ', ');
		    }
		    else {
			     $data = $string;
		    }  
		    return $data;
		}

		if(!empty($col)){
			echo "<table><tr style='height:70px'>
							<td valign='top'><img src='".base_url()."uploads/file_manager/logo_excel.jpg"."'></td>
							<td valign='bottom'><h3>Dashboard Report</h3></td>
						</tr>";
			echo "<table border='1'>";
			echo "<tr>";
				$array_col = explode(',', $col); 
				foreach($array_col as $value){
					echo "<th>".str_replace('"','', $value)."</th>";
				}
			echo"</tr>";
			$where ="";
			if(($produk_id != '0') || (!empty($produk_id)) ) {
	            $where .= ' AND "PRODUCT_TYPE" ='."'".$produk_id."'"; 
	        }
	        if(($intervention_id != '0') || (!empty($intervention_id)) ) {
	            $where .= ' AND "SELECT_INTERVENTION" ='."'".$intervention_id."'"; 
	        }
	        if((!empty($client))) {
	            $where .= ' AND LOWER("CLIENTS") ='."'".$strtolower($client)."'"; 
	        }
	        if(($lokasi_kerja != '0') || (!empty($lokasi_kerja)) ) {
	            $where .= ' AND LOWER("AREA") ='."'".$strtolower($lokasi_kerja)."'"; 
	        }

	        if(!empty($date_month)) {
	            $where .=' AND to_char("LOADING_START_DATE", \'MM\')  ='."'".$date_month."'"; 
	        }
	        if(!empty($date_year)) {
	            $where .=' AND to_char("LOADING_START_DATE", \'YYYY\')  ='."'".$date_year."'"; 
	        } 

			$sql2 = 'SELECT '.$col.' FROM "FORM_ENTRY_FIELD" WHERE 1=1  '.$where;
			$query2 = $this->db->query($sql2);
			foreach ($query2->result() as $row){
				echo "<tr>";
				$col = str_replace('"','',$col);
				$array_col2 = explode(',', $col); 
				foreach($array_col2 as $val){
					echo "<td>".isJSON($row->$val)."</td>";
				}
				echo"</tr>";
			}
			
			echo "</table>";
		}
		
	}
	
	public function grab_chart_port_terminal_detail() {
		// parameter data
		$product       = $this->input->get("produk");
		$intervensi    = $this->input->get("intervensi");
		$client        = $this->input->get("client");
		$area          = $this->input->get("area");
		$port_terminal = $this->input->get("port_terminal");
		$bulan         = $this->input->get("bulan");
		$tahun         = $this->input->get("tahun");

		// ini query untuk mendapatkan semua area berdasarkan parameter filter
		$query_all_area = $this->Form_entry_model->grab_area_detail($product,$intervensi,$client,$area,$port_terminal,$bulan,$tahun);
		
		// dapatkan semua area berdasarkan filter
		$area = array();
		if($query_all_area->num_rows() > 0) {
			foreach($query_all_area->result() as $row) {
				if(!in_array($row->AREA,$area)) {
					$area[] = $row->AREA;
				}
			}
		}
		$hijau="0";
		$kuning="0";
		$merah="0";
		$total_bbm    = array();
		$losses 	  = array();
		
		foreach($area as $ka => $va) {
			$query_bl = $this->Dashboard_model->count_kl_area($product,$intervensi,$client,$va,$port_terminal,$bulan,$tahun);
			if($query_bl->num_rows() > 0) {
				foreach($query_bl->result() as $row_bl) {
					$total_bbm[] = (float)$row_bl->total_bl;
					$losses[]    = (float)$row_bl->rata_losses;
					if($row_bl->rata_losses<0.3){
						$hijau += 1 ;
					}
					else if($row_bl->rata_losse==0.3){
						$kuning += 1 ;
					}
					else if($row_bl->rata_losse>0.3){
						$merah += 1 ;
					}
				}
			} else {
				$total_bbm = 0;
			}
		}
		$total_warna = $merah+$kuning+$hijau;
		
		$bagi_merah    = $merah/$total_warna;
		$bagi_kuning   = $kuning/$total_warna;
		$bagi_hijau    = $hijau/$total_warna;
		
		//error_reporting(null);
		$warna =array();
		$arr_return = array();
		$warna[0]['name'] = 'Greater than 0.3';
		$warna[0]['y']    = $bagi_merah;
		 
		$warna[1]['name'] = 'Equals 0.3';
		$warna[1]['y'] = $bagi_kuning;
		
		$warna[2]['name'] = 'Less than 0.3';
		$warna[2]['y'] = $bagi_hijau;
		$arr_return = $warna;
		$result = new stdClass();
		$result->warna    = $arr_return;

		header('Content-Type: application/json');
		echo json_encode($result);
	}
	
	public function grab_chart_information_detail() {
		// parameter data
		$product       = $this->input->get("produk");
		$intervensi    = $this->input->get("intervensi");
		$client        = $this->input->get("client");
		$area          = $this->input->get("area");
		$port_terminal = $this->input->get("port_terminal");
		$bulan         = $this->input->get("bulan");
		$tahun         = $this->input->get("tahun");

		// ini query untuk mendapatkan semua area berdasarkan parameter filter
		$query_all_area = $this->Form_entry_model->grab_area_detail($product,$intervensi,$client,$area,$port_terminal,$bulan,$tahun);
		// dapatkan semua area berdasarkan filter
		
		// area
		$area = array();
		if($query_all_area->num_rows() > 0) {
			foreach($query_all_area->result() as $row) {
				if(!in_array($row->AREA,$area)) {
					if(!empty($row->AREA))
						$area[] = $row->AREA;
				}
			}
		}		
		
		// surveyor in charges
		$surveyor_in_charges = array();
		if($query_all_area->num_rows() > 0) {
			foreach($query_all_area->result() as $row) {
				$data_surveyor = json_decode($row->SURVEYOR_IN_CHARGE);
				if (is_array($data_surveyor)) {
					foreach($data_surveyor as $ks => $vs) {
						if(!in_array($vs,$surveyor_in_charges)) {
							if(!empty($vs))
								$surveyor_in_charges[] = $vs;
						}
					}
				}
			}
		}

		// activities remarks
		$activities_remarks = array();
		if($query_all_area->num_rows() > 0) {
			foreach($query_all_area->result() as $row_activities) {
				if(!in_array($row_activities->ACTIVITIES_REMARKS,$activities_remarks)) {
					if(!empty($row_activities->ACTIVITIES_REMARKS))
						$activities_remarks[] = $row_activities->ACTIVITIES_REMARKS;
				}
			}
		}		

		// sea condition
		$sea_condition = array();
		if($query_all_area->num_rows() > 0) {
			foreach($query_all_area->result() as $row_sc) {
				if(!in_array($row_sc->SC,$sea_condition)) {
					if(!empty($row_sc->SC))
						$sea_condition[] = $row_sc->SC;
				}
			}
		}	
		
		// date_of_analysis
		$date_of_analysis = array();
		if($query_all_area->num_rows() > 0) {
			foreach($query_all_area->result() as $row_sc) {
				if(!in_array($row_sc->DATE_OF_ANALYSIS,$date_of_analysis)) {
					if(!empty($row_sc->DATE_OF_ANALYSIS))
						$date_of_analysis[] = date('d-m-Y', strtotime($row_sc->DATE_OF_ANALYSIS));
				}
			}
		}	
		

		// port terminal
		$port_terminal = array();
		if($query_all_area->num_rows() > 0) {
			foreach($query_all_area->result() as $row_port_terminal) {
				$data = json_decode($row_port_terminal->PORT_TERMINAL);
				if(is_array($data)) {
					if(count($data) > 0) {
						foreach($data as $k => $v) {
							if(!in_array($v,$port_terminal)) {
								if(!empty($v))
									$port_terminal[]=$v;
							}
						}
					}
				}
			}
		}			
		
		// product
		$product = array();
		if($query_all_area->num_rows() > 0) {
			foreach($query_all_area->result() as $row_product) {
				$data = json_decode($row_product->PRODUCT);
				if(is_array($data)) {
					if(count($data) > 0) {
						foreach($data as $k => $v) {
							if(!in_array($v,$product)) {
								if(!empty($v))
									$product[]=$v;
							}
						}
					}
				}
			}
		}	

		// vessel
		$vessel = array();
		if($query_all_area->num_rows() > 0) {
			foreach($query_all_area->result() as $row_vessel) {
				if(!in_array($row_vessel->VESSEL,$vessel)) {
					if(!empty($row_vessel->VESSEL))
						$vessel[] = $row_vessel->VESSEL;
				}
			}
		}	

		$result = new stdClass();
		$result->AREA                = $area;
		$result->SURVEYOR_IN_CHARGES = $surveyor_in_charges;
		$result->ACTIVITIES_REMARKS  = $activities_remarks;
		$result->SEA_CONDITION       = $sea_condition;
		$result->PORT_TERMINAL       = $port_terminal;
		$result->PRODUCT             = $product;
		$result->VESSEL              = $vessel;
		$result->DATE_OF_ANALYSIS    = $date_of_analysis;

		header('Content-Type: application/json');
		echo json_encode($result);

	}
	
	
	public function grab_chart_port_terminal() {
		// parameter data
		$product       = $this->input->get("produk");
		$intervensi    = $this->input->get("intervensi");
		$client        = $this->input->get("client");
		$area          = $this->input->get("area");
		$port_terminal = $this->input->get("port_terminal");
		$bulan         = $this->input->get("bulan");
		$tahun         = $this->input->get("tahun");
		// ini query untuk mendapatkan semua area berdasarkan parameter filter
		$query_all_area = $this->Form_entry_model->grab_area($product,$intervensi,$client,$area,$port_terminal,$bulan,$tahun);
		
		// dapatkan semua area berdasarkan filter
		$area = array();
		if($query_all_area->num_rows() > 0) {
			foreach($query_all_area->result() as $row) {
				if(!in_array($row->AREA,$area)) {
					$area[] = $row->AREA;
				}
			}
		}

		$total_bbm    = array();
		$losses = array();
		foreach($area as $ka => $va) {
			$query_bl = $this->Dashboard_model->count_kl_area($product,$intervensi,$client,$va,$port_terminal,$bulan,$tahun);
			if($query_bl->num_rows() > 0) {
				foreach($query_bl->result() as $row_bl) {
					$total_bbm[] = (float)$row_bl->total_bl;
					$losses[]    = (float)$row_bl->rata_losses; 
				}
			} else {
				$total_bbm = 0;
			}
		}

		$result = new stdClass();
		$result->area   = $area;
		$result->total  = $total_bbm;
		$result->losses = $losses;

		// setelah semua area didapatkan looping dapatkan semua port dan areanya
		// ini untuk looping semua port
		// $query_area = $this->Form_entry_model->grab_port_by_area($area);
		// $result = array();
		// if($query_area->num_rows() > 0) {
		// 	foreach($query_area->result() as $row) {
		// 		$data = json_decode($row->PORT_TERMINAL);
		// 		if(is_array($data)) {
		// 			if(count($data) > 0) {
		// 				foreach($data as $k => $v) {
		// 					if(!in_array($v,$result)) {
		// 						$result[]=$v;
		// 					}
		// 				}
		// 			}
		// 		}
		// 	}
		// }

		// // iterasi berdasarkan port terminal
		// foreach($result as $kr => $vr) {
		// 	echo $vr;
		// }

		header('Content-Type: application/json');
		echo json_encode($result);
	}
	
	public function chart_rest()
	{
		$produk_id 	 	 = (int)$this->input->get("produk");
		$intervention_id = (int)$this->input->get("intervensi");
		$date_month  	 = $this->input->get("bulan");
		$date_year   	 = $this->input->get("tahun");
		$client  	 	 = $this->input->get("client");
		$lokasi_kerja 	 = $this->input->get("lokasi_kerja");

		$element_timelog_id = '';
		$element_quality_id = '';
		$element_fields     = '';
		$element_r1 = '';
		$element_r2 = '';
		$element_r3 = '';
		$element_r4 = '';

		// initialize element connection
		$query_setup = $this->Element_connection_model->get_item_by_product_intervention($produk_id,$intervention_id);
		if($query_setup->num_rows() > 0) {
			foreach($query_setup->result() as $row_setup) {
				$element_timelog_id = json_decode($row_setup->ELEMENT_TIMELOG_ID);
				$element_quality_id = json_decode($row_setup->ELEMENT_QUALITY_ID);
				$element_fields     = get_split_element($row_setup->ELEMENT_FIELDS);
				$element_r1         = get_split_element($row_setup->ELEMENT_R1);
				$element_r2         = get_split_element($row_setup->ELEMENT_R2);
				$element_r3         = get_split_element($row_setup->ELEMENT_R3);
				$element_r4         = get_split_element($row_setup->ELEMENT_R4);
			}
		}
		
		// fungsi untuk mendapatkan header KLOBS,BBLS dll
		// patokan data SELECT "PRODUCT_TYPE","SELECT_INTERVENTION","CLIENTS","AREA","LOADING_START_DATE" FROM "FORM_ENTRY_FIELD"
		$headers = get_header_fields();
		$array_json = array();
		foreach($headers as $k => $v) {
			// R1
			if(isset($element_r1[$v])) {
				if((is_array($element_r1[$v])) && (count($element_r1[$v]) > 0) ) {
					foreach($element_r1[$v] as $k1 => $v1) {
						$q1 = $this->Form_entry_model->get_filter_chart($v1,$produk_id,$intervention_id,$client,$lokasi_kerja,$date_month,$date_year);
						//echo $this->db->last_query();
						if($q1->num_rows() > 0) {
							$data = array();
							$data[$v1] = array();
							foreach($q1->result() as $row1) {
								$v1 = strtoupper($v1);
								array_push($data[$v1],$row1->$v1);
							}
							$array_json[$v] = $data;
						}
					}
				}
			}
			// R2
			if(isset($element_r2[$v])) {
				if((is_array($element_r2[$v])) && (count($element_r2[$v]) > 0) ) {
					foreach($element_r2[$v] as $k2 => $v2) {
						$q2 = $this->Form_entry_model->get_filter_chart($v2,$produk_id,$intervention_id,$client,$lokasi_kerja,$date_month,$date_year);
						if($q2->num_rows() > 0) {
							$data = array();
							$data[$v2] = array();
							foreach($q2->result() as $row2) {
								$v2 = strtoupper($v2);
								array_push($data[$v2],$row1->$v2);
							}
							$array_json[$v] = $data;
						}
					}
				}	
			}
			// R3
			if(isset($element_r3[$v])) {
				if((is_array($element_r3[$v])) && (count($element_r3[$v]) > 0) ) {
					foreach($element_r3[$v] as $k3 => $v3) {
						$q3 = $this->Form_entry_model->get_filter_chart($v3,$produk_id,$intervention_id,$client,$lokasi_kerja,$date_month,$date_year);
						if($q3->num_rows() > 0) {
							$data = array();
							$data[$v3] = array();
							foreach($q3->result() as $row3) {
								$v3 = strtoupper($v3);
								array_push($data[$v3],$row1->$v3);
							}
							$array_json[$v] = $data;
						}
					}
				}
			}
			// R4
			if(isset($element_r4[$v])) {
				if((is_array($element_r4[$v])) && (count($element_r4[$v]) > 0) ) {
					foreach($element_r4[$v] as $k4 => $v4) {
						$q4 = $this->Form_entry_model->get_filter_chart($v4,$produk_id,$intervention_id,$client,$lokasi_kerja,$date_month,$date_year);
						if($q4->num_rows() > 0) {
							$data = array();
							$data[$v4] = array();
							foreach($q4->result() as $row4) {
								$v4 = strtoupper($v4);
								array_push($data[$v4],$row1->$v4);
							}
							$array_json[$v] = $data;
						}	
					}	
				}
			}
		}
		
		header('Content-Type: application/json');
		echo json_encode($array_json);
	}
}