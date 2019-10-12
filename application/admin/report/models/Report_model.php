<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Report_model extends CI_Model {

	private $table = "FORM_ENTRY_FIELD";

    public function __construct() {
        parent::__construct();
    }

    public function save($data = array()) {
    	if(is_array($data)) {
    		$this->db->insert($this->table, $data); 
    		return $this->db->insert_id();
    	}

    	return 0;
    }
	
	public function get_all_items($offset=0,$limit=0,$filter_rules=array())
	{				
        $query = "SELECT *, \"fef\".\"CREATE_TIME\" \"CTIME\", \"fef\".\"ID\" \"FEFID\" FROM \"$this->table\" \"fef\" ";
        $filter_rules = json_decode($filter_rules);
        $count = count($filter_rules);
        $cp_count = $count;
		$query .= "left join \"MASTER_INTERVENTION\" \"mi\" ON \"fef\".\"SELECT_INTERVENTION\" = \"mi\".\"ID\" WHERE ";
        
        if($count > 0) {
			foreach($filter_rules as $row) {
				if($row->field == "CTIME") {
					$array_datetime = explode(" ",$row->value);
					$array_endtime  = explode(" ",$row->value);

					if(count($array_datetime) > 1) {
						$array_date = explode("-",$array_datetime[0]);
						$array_date = array_reverse($array_date);
						$array_datetime[0] = implode("-",$array_date);
					}
					$array_datetime = implode(" ",$array_datetime);

					if(count($array_endtime) > 1) {
						$array_date = explode("-",$array_endtime[0]);
						$array_date = array_reverse($array_date);
						$array_endtime[0] = implode("-",$array_date);
						$array_endtime[1] = "23:59:59";
					}
					$array_endtime = implode(" ",$array_endtime);

					$query .= "\"fef\".\"CREATE_TIME\" >= timestamp '".$array_datetime."' AND \"fef\".\"CREATE_TIME\" < timestamp '".$array_endtime."' ";
				}
				if($row->field == "SPK") {
					$query .= "LOWER(fef.\"SPK\") LIKE '%".strtolower($row->value)."%' ";
				}
				if($row->field == "AREA") {
					$query .= "LOWER(fef.\"AREA\") LIKE '%".strtolower($row->value)."%' ";
				}
				if($row->field == "CLIENT") {
					$query .= "LOWER(fef.\"CLIENTS\") LIKE '%".strtolower($row->value)."%' ";
				}
				if($row->field == "KONTRAK") {
					$query .= "LOWER(fef.\"KONTRAK\") LIKE '%".strtolower($row->value)."%' ";
				}
				if($row->field == "INTERVENTION_NAME") {
					$query .= "LOWER(mi.\"INTERVENTION_NAME\")  LIKE '%".strtolower($row->value)."%' ";
				}
				if($row->field == "PRODUCT_TYPE") {
					$query .= "LOWER(fef.\"PRODUCT_TYPE\") LIKE '%".strtolower($row->value)."%' ";
				}
				if($row->field == "FILE_ORDER") {
					$query .=  "LOWER(fef.\"FILE_ORDER\") LIKE '%".strtolower($row->value)."%' ";
				}	
				if($row->field == "IWO") {
					$query .= "LOWER(fef.\"IWO\") LIKE  '%".strtolower($row->value)."%' ";
				}
				if($row->field == "SURVEYOR_IN_CHARGE") {
					$query .=  "LOWER(fef.\"SURVEYOR_IN_CHARGE\") LIKE  '%".strtolower($row->value)."%' ";
				}
				if($count > 1) {
					$query .= "AND ";
				}
				$count--;
			}
        }
		
        $query .= ($cp_count > 0 ? "AND " : " ")." \"fef\".\"IS_DELETE\" = '0' LIMIT $limit OFFSET $offset ";
        // echo $query;
		return $this->db->query($query);
	}
	
	  public  function get_product_name($id) 
	{
        $this->db->select('*');
        $this->db->from('MASTER_PRODUCT');
        $this->db->where('PRODUCT_ID', $id);   
        return $this->db->get()->result();
    }

	
	public  function get_item_primary($id_item) 
    {
		$sql='SELECT *, 
		to_char("LOADING_START_DATE", \'dd/MM/yyyy\') as lsd, 
		to_char("LOADING_COMPLETE_DATE", \'dd/MM/yyyy\') as lcd,
		to_char("BL_START_DATE", \'dd/MM/yyyy\') as blsd,
		to_char("DATE_VESSEL_ARRIVED", \'dd/MM/yyyy\') as dva,
		to_char("DATE_ANCHORAGED", \'dd/MM/yyyy\') as danchor,
		to_char("DATE_NOR", \'dd/MM/yyyy\') as danor,		
		to_char("DATE_ACCEPTED", \'dd/MM/yyyy\') as dacept,
		to_char("DATE_BERTHED", \'dd/MM/yyyy\') as daber,
		to_char("DATE_SURVEYOR_ON_BOARD", \'dd/MM/yyyy\') as dasubord,
		to_char("DATE_KEY_MEETING", \'dd/MM/yyyy\') as dkm,
		to_char("DATE_COMMENCED", \'dd/MM/yyyy\') as dacomenc,
		to_char("DATE_COMPLETED", \'dd/MM/yyyy\') as dacomplet,
		to_char("DATE_CONNECTED_COMMENCED", \'dd/MM/yyyy\') as daconmenced,		
		to_char("DATE_CONNECTED_COMPLETED", \'dd/MM/yyyy\') as daconpleted,
		to_char("DATE_LOADING_COMMENCED", \'dd/MM/yyyy\') as dlomenced,
		to_char("DATE_LOADING_COMPLETED", \'dd/MM/yyyy\') as dlocomplet,
		to_char("DATE_HOSE_CONNECTED", \'dd/MM/yyyy\') as dahoconeted,
		to_char("DATE_SAMPLING_COMMENCED", \'dd/MM/yyyy\') as dasamcomened,
		to_char("DATE_SAMPLING_COMPLETED", \'dd/MM/yyyy\') as dasamcomplet,		
		to_char("DATE_MEASUREMENT_COMMENCED", \'dd/MM/yyyy\') as damenced,
		to_char("DATE_MEASUREMENT_COMPLETED", \'dd/MM/yyyy\') as damencomplet,		
		to_char("DATE_DOCUMENTS_ONBOARD", \'dd/MM/yyyy\') as dadoon,
		to_char("DATE_VESSEL_SAILED", \'dd/MM/yyyy\') as davesa,
		to_char("DATE_POB", \'dd/MM/yyyy\') as dapob,
		to_char("DATE_A_AWEIGH", \'dd/MM/yyyy\') as daweigh,
		to_char("DATE_BERTHING", \'dd/MM/yyyy\') as daberth,
		to_char("DATE_INPECTION_COMMENCED", \'dd/MM/yyyy\') as daiinpcomenc,
		to_char("DATE_INSPECTION_COMPLETED", \'dd/MM/yyyy\') as daiinpcomplet,
		to_char("DATE_SBD_COMMENCED", \'dd/MM/yyyy\') as dasbdcomenced,
		to_char("DATE_SBD_COMPLETED", \'dd/MM/yyyy\') as dasbdcomplete,		
		to_char("DATE_DISCHARGE_COMMENCED", \'dd/MM/yyyy\') as dadisccomenc,
		to_char("DATE_DISCHARGE_COMPLETED", \'dd/MM/yyyy\') as dadiscomplet,
		to_char("DATE_HOSE_DISCONNECTED", \'dd/MM/yyyy\') as dahodis,
		to_char("DATE_TANKS_INS_COMMENCED", \'dd/MM/yyyy\') as datankinscomenced,
		to_char("DATE_TANKS_INS_COMPLETED", \'dd/MM/yyyy\') as datankinscomplete,
		to_char("DATE_SVY_LEFT_VESSEL", \'dd/MM/yyyy\') as dasvylevesel,
		to_char("DATE_VESSEL_SAIL", \'dd/MM/yyyy\') as dateveselsail
		
		FROM "FORM_ENTRY_FIELD" where "ID"='.$id_item.'';		
		return $this->db->query($sql);
    }
	
	public  function get_intervention($id_item) 
    {
		$this->db->select('SELECT_INTERVENTION,PRODUCT_TYPE');
		$this->db->from($this->table);
		$this->db->where('ID', $id_item); 
		return $this->db->get();
    }
	
	public function get_all_items_to_excell($site_id=0,$filter_rules=array())
    {      
        $query = "SELECT *, \"fef\".\"CREATE_TIME\" \"CTIME\", \"fef\".\"ID\" \"FEFID\" FROM \"$this->table\" \"fef\" ";
        $count = count($filter_rules);
        $cp_count = $count;
		$query .= "left join \"MASTER_INTERVENTION\" \"mi\" ON \"fef\".\"SELECT_INTERVENTION\" = \"mi\".\"ID\" WHERE ";
        
        if($count > 0) {
			foreach($filter_rules as $row) {
				if($row->field == "CTIME") {
					$array_datetime = explode(" ",$row->value);
					$array_endtime  = explode(" ",$row->value);

					if(count($array_datetime) > 1) {
						$array_date = explode("-",$array_datetime[0]);
						$array_date = array_reverse($array_date);
						$array_datetime[0] = implode("-",$array_date);
					}
					$array_datetime = implode(" ",$array_datetime);

					if(count($array_endtime) > 1) {
						$array_date = explode("-",$array_endtime[0]);
						$array_date = array_reverse($array_date);
						$array_endtime[0] = implode("-",$array_date);
						$array_endtime[1] = "23:59:59";
					}
					$array_endtime = implode(" ",$array_endtime);

					$query .= "\"fef\".\"CREATE_TIME\" >= timestamp '".$array_datetime."' AND \"fef\".\"CREATE_TIME\" < timestamp '".$array_endtime."' ";
				}
				if($row->field == "SPK") {
					$query .= "\"fef\".\"SPK\" LIKE '%".$row->value."%' ";
				}
				if($row->field == "AREA") {
					$query .= "\"fef\".\"AREA\" LIKE '%".$row->value."%' ";
				}
				if($row->field == "KONTRAK") {
					$query .= "\"fef\".\"KONTRAK\" LIKE '%".$row->value."%' ";
				}
				if($row->field == "FILE_ORDER") {
					$query .= "\"fef\".\"FILE_ORDER\" LIKE '%".$row->value."%' ";
				}	
				if($row->field == "IWO") {
					$query .= "\"fef\".\"IWO\" LIKE '%".$row->value."%' ";
				}
				if($row->field == "SURVEYOR_IN_CHARGE") {
					$query .= "\"fef\".\"SURVEYOR_IN_CHARGE\" LIKE '%".$row->value."%' ";
				}
				if($count > 1) {
					$query .= "AND ";
				}
				$count--;
			}
        }

        $query .= ($cp_count > 0 ? "AND " : " ")." \"fef\".\"CLIENT_SITE_ID\" = '$site_id' AND \"fef\".\"IS_DELETE\" = '0' ";
        return $this->db->query($query)->result_array();
    }
	
	public function count_all_items($filter_rules=array())
	{				
        $query = "SELECT *, \"fef\".\"CREATE_TIME\" \"CTIME\", \"fef\".\"ID\" \"FEFID\" FROM \"$this->table\" \"fef\" ";
        $filter_rules = json_decode($filter_rules);
        $count = count($filter_rules);
        $cp_count = $count;
		$query .= "left join \"MASTER_INTERVENTION\" \"mi\" ON \"fef\".\"SELECT_INTERVENTION\" = \"mi\".\"ID\" WHERE ";
        
        if($count > 0) {
			foreach($filter_rules as $row) {
				if($row->field == "CTIME") {
					$array_datetime = explode(" ",$row->value);
					$array_endtime  = explode(" ",$row->value);

					if(count($array_datetime) > 1) {
						$array_date = explode("-",$array_datetime[0]);
						$array_date = array_reverse($array_date);
						$array_datetime[0] = implode("-",$array_date);
					}
					$array_datetime = implode(" ",$array_datetime);

					if(count($array_endtime) > 1) {
						$array_date = explode("-",$array_endtime[0]);
						$array_date = array_reverse($array_date);
						$array_endtime[0] = implode("-",$array_date);
						$array_endtime[1] = "23:59:59";
					}
					$array_endtime = implode(" ",$array_endtime);

					$query .= "\"fef\".\"CREATE_TIME\" >= timestamp '".$array_datetime."' AND \"fef\".\"CREATE_TIME\" < timestamp '".$array_endtime."' ";
				}
				if($row->field == "SPK") {
					$query .= "\"fef\".\"SPK\" LIKE '%".$row->value."%' ";
				}
				if($row->field == "AREA") {
					$query .= "\"fef\".\"AREA\" LIKE '%".$row->value."%' ";
				}
				if($row->field == "KONTRAK") {
					$query .= "\"fef\".\"KONTRAK\" LIKE '%".$row->value."%' ";
				}
				if($row->field == "INTERVENTION_NAME") {
					$query .= "\"mi\".\"INTERVENTION_NAME\" LIKE '%".$row->value."%' ";
				}
				if($row->field == "PRODUCT_TYPE") {
					$query .= "\"fef\".\"PRODUCT_TYPE\" LIKE '%".$row->value."%' ";
				}
				if($row->field == "FILE_ORDER") {
					$query .= "\"fef\".\"FILE_ORDER\" LIKE '%".$row->value."%' ";
				}	
				if($row->field == "IWO") {
					$query .= "\"fef\".\"IWO\" LIKE '%".$row->value."%' ";
				}
				if($row->field == "SURVEYOR_IN_CHARGE") {
					$query .= "\"fef\".\"SURVEYOR_IN_CHARGE\" LIKE '%".$row->value."%' ";
				}
				if($count > 1) {
					$query .= "AND ";
				}
				$count--;
			}
        }

        $query .= ($cp_count > 0 ? "AND " : " ")." \"fef\".\"IS_DELETE\" = '0' ";
        return $this->db->query($query)->num_rows();
	}
		
}