<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Datagraph_model extends CI_Model 
{

	private $table = "INFO_CLIENT";

	public function get_all_items()
	{
        return $this->db->get($this->table);
	}

    public  function get_data($search) 
    {
		$date_start = date("Y-m-d", strtotime($search['date_start']));
		$date_end = date("Y-m-d", strtotime($search['date_end']));
		
		/* $this->db->select('a.*,b.BARGE_NAME, a.DATE_LOADING_CLIENT as DLC');
		$this->db->from('INFO_CLIENT a');
		$this->db->join('MASTER_BARGE b', 'b.BARGE_ID = a.BARGE' , 'left');		
		$this->db->where('a.DATE_LOADING_CLIENT >=', $date_start); 
		$this->db->where('a.DATE_LOADING_CLIENT <=', $date_end);
		$this->db->where('a.CLIENT_SITE_ID', $search['SITE_ID']);	
		return $this->db->get(); */
		
		  $sql='SELECT a.*, "b"."VESSEL_NAME", "c"."PORT_NAME", "d"."BARGE_NAME", "a"."DATE_LOADING_CLIENT" as "DLC",
	                TO_CHAR("a"."DATE_LOADING_BARGE", \'dd/MM/yyyy\') as dlb, TO_CHAR("a"."DATE_LOADING_CLIENT", \'dd/MM/yyyy\') as dlp, 
					TO_CHAR("a"."DEF_TERMINAL", \'dd/MM/yyyy\') as dt, TO_CHAR("a"."DEF_BARGE", \'dd/MM/yyyy\') as db, 
					TO_CHAR("a"."DEF_SHIP", \'dd/MM/yyyy\') as ds,
					case when 
					"a"."BAR_FIG_AFTERLOAD_KL"+"a"."OBQ_KL"+"a"."DELIV_ORDER_KL" = 0 then 0 
					else ("a"."BAR_FIG_AFTERLOAD_KL" - "a"."OBQ_KL" - "a"."DELIV_ORDER_KL" / "a"."DELIV_ORDER_KL" * 100 * "a"."DELIV_ORDER_KL"/100) end as diff_kl_r1,
					
					case when 
					"a"."BAR_FIG_AFTERLOAD_KL"+"a"."OBQ_KL"+"a"."DELIV_ORDER_KL" = 0 then 0 
					else ("a"."BAR_FIG_AFTERLOAD_KL" - "a"."OBQ_KL" - "a"."DELIV_ORDER_KL" / "a"."DELIV_ORDER_KL"* 100) end as r1,
					
					case when 
					"a"."BAR_FIG_BFDC_KL"+"a"."BAR_FIG_AFTERLOAD_KL"+"a"."DELIV_ORDER_KL" = 0 then 0 
					else ("a"."BAR_FIG_BFDC_KL" - "a"."BAR_FIG_AFTERLOAD_KL" / "a"."DELIV_ORDER_KL"* 100 * "a"."DELIV_ORDER_KL"/100) end as diff_kl_r2,
					
					case when 
					"a"."BAR_FIG_BFDC_KL"+"a"."BAR_FIG_AFTERLOAD_KL"+"a"."DELIV_ORDER_KL" = 0 then 0 
					else ("a"."BAR_FIG_BFDC_KL" - "a"."BAR_FIG_AFTERLOAD_KL" / "a"."DELIV_ORDER_KL"* 100) end as r2,

					case when 
					"a"."SHIP_REC_KL"+"a"."BAR_FIG_BFDC_KL"+"a"."BAR_FIG_AFDC_KL"+"a"."DELIV_ORDER_KL" = 0 then 0 
					else ("a"."SHIP_REC_KL" - "a"."BAR_FIG_BFDC_KL" - "a"."BAR_FIG_AFDC_KL" / "a"."DELIV_ORDER_KL"* 100 * "a"."DELIV_ORDER_KL"/100) end as diff_kl_r3,
					
					case when 
					"a"."SHIP_REC_KL"+"a"."BAR_FIG_BFDC_KL"+"a"."BAR_FIG_AFDC_KL"+"a"."DELIV_ORDER_KL" = 0 then 0 
					else ("a"."SHIP_REC_KL" - "a"."BAR_FIG_BFDC_KL" - "a"."BAR_FIG_AFDC_KL" / "a"."DELIV_ORDER_KL"* 100) end as r3, 
					
					case when 
					"a"."SHIP_REC_KL"+"a"."DELIV_ORDER_KL" = 0 then 0 
					else ("a"."SHIP_REC_KL" - "a"."DELIV_ORDER_KL" / "a"."DELIV_ORDER_KL" * 100 * "a"."DELIV_ORDER_KL"/100) end as diff_kl_r4,
					
					case when 
					"a"."SHIP_REC_KL"+"a"."DELIV_ORDER_KL" = 0 then 0 
					else ("a"."SHIP_REC_KL" - "a"."DELIV_ORDER_KL" / "a"."DELIV_ORDER_KL" * 100) end as r4
			FROM "INFO_CLIENT" a  
			LEFT JOIN "MASTER_VESSEL" b ON "b"."VESSEL_ID" = "a"."VESSEL"
			LEFT JOIN "MASTER_PORT" c ON "c"."PORT_ID" = "a"."PORT"
			LEFT JOIN "MASTER_BARGE" d ON "d"."BARGE_ID" = "a"."BARGE"
			WHERE "a"."DATE_LOADING_CLIENT" >= \''.$date_start.'\' AND "a"."DATE_LOADING_CLIENT" <= \''.$date_end.'\' AND "a"."CLIENT_SITE_ID" = \''.get_client_site_id().'\'
			ORDER BY "a"."ID_INFO" ASC'; 	
		return $this->db->query($sql);
		//$query=$this->db->query($sql);
		//return $query->result_array();
    }
	
	public  function get_data_spec_client() 
    {
		/* $this->db->select('a.*,b.BARGE_NAME, a.DATE_LOADING_CLIENT as DLC');
		$this->db->from('INFO_CLIENT a');
		$this->db->join('MASTER_BARGE b', 'b.BARGE_ID = a.BARGE' , 'left');		
		$this->db->where('a.DATE_LOADING_CLIENT >=', $date_start); 
		$this->db->where('a.DATE_LOADING_CLIENT <=', $date_end);
		$this->db->where('a.CLIENT_SITE_ID', $search['SITE_ID']);	
		return $this->db->get(); */
		
		  $sql='SELECT a.*, "b"."VESSEL_NAME", "c"."PORT_NAME", "d"."BARGE_NAME", "a"."DATE_LOADING_CLIENT" as "DLC",
	                TO_CHAR("a"."DATE_LOADING_BARGE", \'dd/MM/yyyy\') as dlb, TO_CHAR("a"."DATE_LOADING_CLIENT", \'dd/MM/yyyy\') as dlp, 
					TO_CHAR("a"."DEF_TERMINAL", \'dd/MM/yyyy\') as dt, TO_CHAR("a"."DEF_BARGE", \'dd/MM/yyyy\') as db, 
					TO_CHAR("a"."DEF_SHIP", \'dd/MM/yyyy\') as ds,
					case when 
					"a"."BAR_FIG_AFTERLOAD_KL"+"a"."OBQ_KL"+"a"."DELIV_ORDER_KL" = 0 then 0 
					else ("a"."BAR_FIG_AFTERLOAD_KL" - "a"."OBQ_KL" - "a"."DELIV_ORDER_KL" / "a"."DELIV_ORDER_KL" * 100 * "a"."DELIV_ORDER_KL"/100) end as diff_kl_r1,
					
					case when 
					"a"."BAR_FIG_AFTERLOAD_KL"+"a"."OBQ_KL"+"a"."DELIV_ORDER_KL" = 0 then 0 
					else ("a"."BAR_FIG_AFTERLOAD_KL" - "a"."OBQ_KL" - "a"."DELIV_ORDER_KL" / "a"."DELIV_ORDER_KL"* 100) end as r1,
					
					case when 
					"a"."BAR_FIG_BFDC_KL"+"a"."BAR_FIG_AFTERLOAD_KL"+"a"."DELIV_ORDER_KL" = 0 then 0 
					else ("a"."BAR_FIG_BFDC_KL" - "a"."BAR_FIG_AFTERLOAD_KL" / "a"."DELIV_ORDER_KL"* 100 * "a"."DELIV_ORDER_KL"/100) end as diff_kl_r2,
					
					case when 
					"a"."BAR_FIG_BFDC_KL"+"a"."BAR_FIG_AFTERLOAD_KL"+"a"."DELIV_ORDER_KL" = 0 then 0 
					else ("a"."BAR_FIG_BFDC_KL" - "a"."BAR_FIG_AFTERLOAD_KL" / "a"."DELIV_ORDER_KL"* 100) end as r2,

					case when 
					"a"."SHIP_REC_KL"+"a"."BAR_FIG_BFDC_KL"+"a"."BAR_FIG_AFDC_KL"+"a"."DELIV_ORDER_KL" = 0 then 0 
					else ("a"."SHIP_REC_KL" - "a"."BAR_FIG_BFDC_KL" - "a"."BAR_FIG_AFDC_KL" / "a"."DELIV_ORDER_KL"* 100 * "a"."DELIV_ORDER_KL"/100) end as diff_kl_r3,
					
					case when 
					"a"."SHIP_REC_KL"+"a"."BAR_FIG_BFDC_KL"+"a"."BAR_FIG_AFDC_KL"+"a"."DELIV_ORDER_KL" = 0 then 0 
					else ("a"."SHIP_REC_KL" - "a"."BAR_FIG_BFDC_KL" - "a"."BAR_FIG_AFDC_KL" / "a"."DELIV_ORDER_KL"* 100) end as r3, 
					
					case when 
					"a"."SHIP_REC_KL"+"a"."DELIV_ORDER_KL" = 0 then 0 
					else ("a"."SHIP_REC_KL" - "a"."DELIV_ORDER_KL" / "a"."DELIV_ORDER_KL" * 100 * "a"."DELIV_ORDER_KL"/100) end as diff_kl_r4,
					
					case when 
					"a"."SHIP_REC_KL"+"a"."DELIV_ORDER_KL" = 0 then 0 
					else ("a"."SHIP_REC_KL" - "a"."DELIV_ORDER_KL" / "a"."DELIV_ORDER_KL" * 100) end as r4
			FROM "INFO_CLIENT" a  
			LEFT JOIN "MASTER_VESSEL" b ON "b"."VESSEL_ID" = "a"."VESSEL"
			LEFT JOIN "MASTER_PORT" c ON "c"."PORT_ID" = "a"."PORT"
			LEFT JOIN "MASTER_BARGE" d ON "d"."BARGE_ID" = "a"."BARGE"
			WHERE "a"."CLIENT_SITE_ID" = \''.get_client_site_id().'\'
			ORDER BY "a"."ID_INFO" ASC'; 	
		return $this->db->query($sql);
		//$query=$this->db->query($sql);
		//return $query->result_array();
    }
}

