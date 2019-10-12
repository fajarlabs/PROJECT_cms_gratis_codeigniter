<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_model extends CI_Model 
{

	private $table = "INFO_CLIENT";

	public function get_all_items()
	{
        return $this->db->get($this->table);
	}
	
	public  function sum_sl_gsv_klobs($product_id=0,$intervention_id=0,$clients='',$area='',$month='',$year=''){
		$this->db->select(' sum("SL_GSV_KLOBS"::INT) as total ');
        $this->db->from('FORM_ENTRY_FIELD');
		
		if(($product_id != '0') || (!empty($product_id)) ) {
            $this->db->where('PRODUCT_TYPE', (string)$product_id); 
        }
        if(($intervention_id != '0') || (!empty($intervention_id)) ) {
            $this->db->where('SELECT_INTERVENTION',(string)$intervention_id); 
        }
        if(!empty($clients)) {
            $this->db->like('LOWER("CLIENTS")', strtolower($clients)); 
        }
        if(($area != '0') || (!empty($area)) ) {
            $this->db->like('LOWER("AREA")', strtolower($area)); 
        }
        if(!empty($month)) {
            if($month != 'undefined') {
                $this->db->where('to_char("CREATE_TIME", \'MM\')=', $month);
            }
        }
        if(!empty($year)) {
            if($year != 'undefined'){
                $this->db->where('to_char("CREATE_TIME", \'YYYY\')=', $year);
            }
        } 
		
        return $this->db->get()->result();
		 
	}
	
	public  function count_frekuensi($product_id=0,$intervention_id=0,$clients='',$area='',$month='',$year=''){
		$this->db->select(' count("SELECT_INTERVENTION") as total ');
        $this->db->from('FORM_ENTRY_FIELD');
		
		if(($product_id != '0') || (!empty($product_id)) ) {
            $this->db->where('PRODUCT_TYPE', (string)$product_id); 
        }
        if(($intervention_id != '0') || (!empty($intervention_id)) ) {
            $this->db->where('SELECT_INTERVENTION',(string)$intervention_id); 
        }
        if(!empty($clients)) {
            $this->db->like('LOWER("CLIENTS")', strtolower($clients)); 
        }
        if(($area != '0') || (!empty($area)) ) {
            $this->db->like('LOWER("AREA")', strtolower($area)); 
        }
        if(!empty($month)) {
            if($month != 'undefined') {
                $this->db->where('to_char("CREATE_TIME", \'MM\')=', $month);
            }
        }
        if(!empty($year)) {
            if($year != 'undefined'){
                $this->db->where('to_char("CREATE_TIME", \'YYYY\')=', $year);
            }
        } 
		
		return $this->db->get();
	}

	// untuk perhitungan GSV KLOBS bisa jadi nanti berubah
	// menggunakan GSV KLOBS ini tidak tetap sebagai acuan karena jenis intervensi yg berbeda-beda
	public  function count_kl_area($product_id=0,$intervention_id=0,$clients='',$area='',$port_terminal='',$month='',$year=''){
		$this->db->select('SUM((0 || "BL_GSV_KLOBS")::integer) as total_bl, AVG(NULLIF("SL_VS_BOL_R1_KLOBS", \'\')::float) as rata_losses ');
        $this->db->from('FORM_ENTRY_FIELD');
		
		if(($product_id != '0') || (!empty($product_id)) ) {
            $this->db->where('PRODUCT_TYPE', (string)$product_id); 
        }
        if(($intervention_id != '0') || (!empty($intervention_id)) ) {
            $this->db->where('SELECT_INTERVENTION',(string)$intervention_id); 
        }
        if(!empty($clients)) {
            $this->db->like('LOWER("CLIENTS")', strtolower($clients)); 
        }
        if(($area != '0') || (!empty($area)) ) {
            $this->db->like('LOWER("AREA")', strtolower($area)); 
		}
        if(($port_terminal != '0') || (!empty($port_terminal)) ) {
            $this->db->like('LOWER("PORT_TERMINAL")', strtolower($port_terminal)); 
		}
        if(!empty($month)) {
            if($month != 'undefined') {
                $this->db->where('to_char("CREATE_TIME", \'MM\')=', $month);
            }
        }
        if(!empty($year)) {
            if($year != 'undefined'){
                $this->db->where('to_char("CREATE_TIME", \'YYYY\')=', $year);
            }
        } 
		
        return $this->db->get();
		 
	}
	
	public  function get_product_name_except(){
		$this->db->select('*');
        $this->db->from('MASTER_PRODUCT');
		$ID = array('15', '20');
        $this->db->where_in('PRODUCT_ID', $ID);
        return $this->db->get()->result();
	}
	
    public  function get_table_name($table,$col_name='',$order_type='',$where_col='',$where_data='') {
        $this->db->select('*');
        $this->db->from($table);
        if(!empty($where_col) and !empty($where_data)){    
            $this->db->where($where_col, $where_data);
        }
        if(!empty($col_name) and !empty($order_type)){
          $this->db->order_by($col_name, $order_type);
        }  

        return $this->db->get()->result();
    } 

     public  function get_table_group_by($table,$col_name='') {
        $this->db->select($col_name);
        $this->db->from($table);
        $this->db->group_by($col_name);
        return $this->db->get()->result();
    } 

    public  function get_table_name_one($table) {
        $this->db->select('*');
        $this->db->from($table);
		$this->db->limit('1');
        return $this->db->get()->result();
    }
	
	

	public function loading_stats($month='',$year='',$intervensi='',$cst_id='',$produk='',$lokasi_kerja='') 
	{
		/* field acuan */
		/**
		 * loading product
		 * Ship's Loaded vs Bill of Lading (R1)
		 * SL_VS_BOL_R1_KLOBS
		 * SL_VS_BOL_R1_KL15
		 * SL_VS_BOL_R1_BBLS
		 * SL_VS_BOL_R1_LONGTON
		 * SL_VS_BOL_R1_METRICTON
		 * 
		 * Ship's Loaded (VEF applied) vs Bill of Lading (R1)
		 * SL_VEF_APPLIED_VS_BOL_KLOBS
		 * SL_VEF_APPLIED_VS_BOL_KL15
		 * SL_VEF_APPLIED_VS_BOL_BBLS
		 * SL_VEF_APPLIED_VS_BOL_LONGTON
		 * SL_VEF_APPLIED_VS_BOL_METRICTON
		 */

		$str_produk = $produk != "" ? "AND \"PRODUCT\" LIKE '%$produk'" : "";
		$str_intervensi = $intervensi != "" ? "AND \"SELECT_INTERVENTION\"::int = '$intervensi'" : "";
		$str_clients = $cst_id != "" ? "AND \"CLIENTS\" LIKE '%$cst_id%'" : "";
		$str_lokasi_kerja = $lokasi_kerja != "" ? "AND \"AREA\" LIKE '%$lokasi_kerja%'" : "";
		
		$str_date="";
		if($month!='' and $year!=''){
			$my_date = $year."-".$month."-01";
			$str_date = ' AND "CREATE_TIME"  >= DATE \''.$my_date.'\' AND "CREATE_TIME" < DATE \''.$my_date.'\' ';
		}
		$sql = 'SELECT "AREA", 
				SUM(cast("SL_VS_BOL_R1_KLOBS" as double precision)) "R1_KLOBS",
				SUM(cast("SL_VS_BOL_R1_KL15" as double precision)) "R1_KL15",
				SUM(cast("SL_VS_BOL_R1_BBLS" as double precision)) "R1_BBLS",
				SUM(cast("SL_VS_BOL_R1_LONGTON" as double precision)) "R1_LONGTON",
				SUM(cast("SL_VS_BOL_R1_METRICTON" as double precision)) "R1_METRICTON",
				SUM(cast("SL_VEF_APPLIED_VS_BOL_KLOBS" as double precision)) "R1_VEF_KLOBS",
				SUM(cast("SL_VEF_APPLIED_VS_BOL_KL15" as double precision)) "R1_VEF_KL15",
				SUM(cast("SL_VEF_APPLIED_VS_BOL_BBLS" as double precision)) "R1_VEF_BBLS",
				SUM(cast("SL_VEF_APPLIED_VS_BOL_LONGTON" as double precision)) "R1_VEF_LONGTON",
				SUM(cast("SL_VEF_APPLIED_VS_BOL_METRICTON" as double precision)) "R1_VEF_METRICTON"
				FROM "FORM_ENTRY_FIELD"
				WHERE "IS_DELETE" = \'0\' 
				'.$str_produk.'  
				'.$str_intervensi.'  
				'.$str_clients.'  
				'.$str_lokasi_kerja.'  
				'.$str_date.'  
				GROUP BY "AREA"';

		return $this->db->query($sql);
	}

	public function discharge_stats($month='',$year='',$intervensi=0,$cst_id='',$produk='',$lokasi_kerja='') 
	{
		/* field acuan */
		/**
		 * Ship's Loaded vs Bill of Lading (R1)
		 * SLVS_BOL_R1_KLOBS
		 * SLVS_BOL_R1_KL15
		 * SLVS_BOL_R1_BBLS
		 * SLVS_BOL_R1_LONGTON
		 * SLVS_BOL_R1_METRICTON
		 * 
		 * Ship's Fig. After Loading vs Ship's Fig. Before Discharge (R2)
		 * SFAL_VS_SFBD_R2_KLOBS
		 * SFAL_VS_SFBD_R2_KL15
		 * SFAL_VS_SFBD_R2_BBLS
		 * SFAL_VS_SFBD_R2_LONGTON
		 * SFAL_VS_SFBD_R2_METRICTON
		 *
		 * Ship's Fig. Before Discharge vs Shore Received (R3)
		 * SFBD_VS_SR_R3_KLOBS
		 * SFBD_VS_SR_R3_KL15
		 * SFBD_VS_SR_R3_BBLS
		 * SFBD_VS_SR_R3_LONGTON
		 * SFBD_VS_SR_R3_METRICTON
		 *
		 * Shore Received vs Bill of Lading (R4)
		 * SR_VS_BOL_R4_KLOBS
		 * SR_VS_BOL_R4_KL15
		 * SR_VS_BOL_R4_BBLS
		 * SR_VS_BOL_R4_LONGTON
		 * SR_VS_BOL_R4_METRICTON
		 */
		$str_produk = $produk != "" ? "AND \"PRODUCT\" LIKE '%$produk'" : "";
		$str_intervensi = $intervensi != "" ? "AND \"SELECT_INTERVENTION\" = '$intervensi'" : "";
		$str_clients = $cst_id != "" ? "AND \"CLIENTS\" LIKE '%$cst_id%'" : "";
		$str_lokasi_kerja = $lokasi_kerja != "" ? "AND \"AREA\" LIKE '%$lokasi_kerja%'" : "";
		
		$str_date="";
		if($month!='' and $year!=''){
			$my_date = $year."-".$month."-01";
			$str_date = ' AND "CREATE_TIME"  >= DATE \''.$my_date.'\' AND "CREATE_TIME" < DATE \''.$my_date.'\' ';
		}
		$sql = 'SELECT "AREA", 
				SUM(cast("SLVS_BOL_R1_KLOBS" as double precision)) "R1_KLOBS",
				SUM(cast("SLVS_BOL_R1_KL15" as double precision)) "R1_KL15",
				SUM(cast("SLVS_BOL_R1_BBLS" as double precision)) "R1_BBLS",
				SUM(cast("SLVS_BOL_R1_LONGTON" as double precision)) "R1_LONGTON",
				SUM(cast("SLVS_BOL_R1_METRICTON" as double precision)) "R1_METRICTON",

				SUM(cast("SFAL_VS_SFBD_R2_KLOBS" as double precision)) "R2_KLOBS",
				SUM(cast("SFAL_VS_SFBD_R2_KL15" as double precision)) "R2_KL15",
				SUM(cast("SFAL_VS_SFBD_R2_BBLS" as double precision)) "R2_BBLS",
				SUM(cast("SFAL_VS_SFBD_R2_LONGTON" as double precision)) "R2_LONGTON",
				SUM(cast("SFAL_VS_SFBD_R2_METRICTON" as double precision)) "R2_METRICTON",

				SUM(cast("SFBD_VS_SR_R3_KLOBS" as double precision)) "R3_KLOBS",
				SUM(cast("SFBD_VS_SR_R3_KL15" as double precision)) "R3_KL15",
				SUM(cast("SFBD_VS_SR_R3_BBLS" as double precision)) "R3_BBLS",
				SUM(cast("SFBD_VS_SR_R3_LONGTON" as double precision)) "R3_LONGTON",
				SUM(cast("SFBD_VS_SR_R3_METRICTON" as double precision)) "R3_METRICTON",

				SUM(cast("SR_VS_BOL_R4_KLOBS" as double precision)) "R4_KLOBS",
				SUM(cast("SR_VS_BOL_R4_KL15" as double precision)) "R4_KL15",
				SUM(cast("SR_VS_BOL_R4_BBLS" as double precision)) "R4_BBLS",
				SUM(cast("SR_VS_BOL_R4_LONGTON" as double precision)) "R4_LONGTON",
				SUM(cast("SR_VS_BOL_R4_METRICTON" as double precision)) "R4_METRICTON"

				FROM "FORM_ENTRY_FIELD"
				WHERE "IS_DELETE" = \'0\' 
				'.$str_produk.'  
				'.$str_intervensi.'  
				'.$str_clients.'  
				'.$str_lokasi_kerja.'  
				'.$str_date.'  
				GROUP BY "AREA"';

		return $this->db->query($sql);
	}
}

