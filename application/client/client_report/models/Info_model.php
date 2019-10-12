<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Info_model extends CI_Model {

	private $table = "pelni_info";

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
	
	public function get_all_items($limit=100,$offset=0)
	{					
        $this->db->select("a.*,b.VESSEL_NAME, c.PORT_NAME, d.BARGE_NAME, TO_CHAR(a.date_loading_barge, 'dd/MM/yyyy') as dlb, 
		TO_CHAR(a.date_loading_pelni, 'dd/MM/yyyy') as dlp, 
		TO_CHAR(a.def_terminal, 'dd/MM/yyyy') as dt,
		TO_CHAR(a.def_barge, 'dd/MM/yyyy') as db,
		TO_CHAR(a.def_ship, 'dd/MM/yyyy') as ds");
		$this->db->from("pelni_info a"); 
		$this->db->join("MASTER_VESSEL b", "b.VESSEL_ID=a.vessel", "left");
		$this->db->join("MASTER_PORT c", "c.PORT_ID=a.port", "left");
		$this->db->join("MASTER_BARGE d", "d.BARGE_ID=a.barge", "left");
		//$this->db->where('',$id);
		$this->db->order_by("a.id_info","asc");
		$this->db->limit($limit,$offset);	
		//$query = $this->db->get(); 
		return $this->db->get();
	}
	
	public function get_all_vessel()
    {
        $return = array();
        $query  = $this->db->get('MASTER_VESSEL')->result_array();
        if( is_array( $query ) && count( $query ) > 0 )
        {
            $return[''] = 'Pilih Vessel / Receiver';
            foreach($query as $row)
            {
                $return[$row['VESSEL_ID']] = $row['VESSEL_NAME'];
            }
        }
        return $return;
    }
	
	public function get_all_port()
    {
        $return = array();
        $query  = $this->db->get('MASTER_PORT')->result_array();
        if( is_array( $query ) && count( $query ) > 0 )
        {
            $return[''] = 'Pilih Port';
            foreach($query as $row)
            {
                $return[$row['PORT_ID']] = $row['PORT_NAME'];
            }
        }
        return $return;
    }
	
	public function get_pelni_by_id($id) 
    {	
	
	 $sql='SELECT a.*, "b"."VESSEL_NAME", "c"."PORT_NAME", "d"."BARGE_NAME", 
	                TO_CHAR("a"."DATE_LOADING_BARGE", \'dd/MM/yyyy\') as dlb, TO_CHAR("a"."DATE_LOADING_CLIENT", \'dd/MM/yyyy\') as dlp, 
					TO_CHAR("a"."DEF_TERMINAL", \'dd/MM/yyyy\') as dt, TO_CHAR("a"."DEF_BARGE", \'dd/MM/yyyy\') as db, 
					TO_CHAR("a"."DEF_SHIP", \'dd/MM/yyyy\') as ds
			FROM "INFO_CLIENT" a  
			LEFT JOIN "MASTER_VESSEL" b ON "b"."VESSEL_ID" = "a"."VESSEL"
			LEFT JOIN "MASTER_PORT" c ON "c"."PORT_ID" = "a"."PORT"
			LEFT JOIN "MASTER_BARGE" d ON "d"."BARGE_ID" = "a"."BARGE" WHERE "ID_INFO"='.$id.''; 
		
		return $this->db->query($sql);
    }
	
	public function get_formula_pelni_by_id($id) 
    {		
		/* $this->db->select('(bar_fig_afterload_kl - obq_kl - deliv_order_kl / deliv_order_kl* 100) as r1, 
		(bar_fig_afterload_kl - obq_kl - deliv_order_kl / deliv_order_kl* 100 * deliv_order_kl/100) as diff_kl_r1,
		(bar_fig_bfdc_kl - bar_fig_afterload_kl / deliv_order_kl* 100) as r2, 
		(bar_fig_bfdc_kl - bar_fig_afterload_kl / deliv_order_kl* 100 * deliv_order_kl/100) as diff_kl_r2,
		(ship_rec_kl - bar_fig_bfdc_kl - bar_fig_afdc_kl / deliv_order_kl* 100) as r3, 
		(ship_rec_kl - bar_fig_bfdc_kl - bar_fig_afdc_kl / deliv_order_kl* 100 * deliv_order_kl/100) as diff_kl_r3,
		(ship_rec_kl - deliv_order_kl / deliv_order_kl * 100) as r4,
		(ship_rec_kl - deliv_order_kl / deliv_order_kl * 100 * deliv_order_kl/100) as diff_kl_r4
		');
		$this->db->from($this->table);
		$this->db->where('id_info', $id);
		return $this->db->get(); */
		
		 $return = array();
		 $this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('id_info', $id);
        $query  = $this->db->get()->result_array();
        
            foreach($query as $row)
            {
                //$return[$row['PORT_ID']] = $row['PORT_NAME'];
				
				//$return['r1']=$row['bar_fig_afterload_kl'] - $row['obq_kl'] - $row['deliv_order_kl'] / $row['deliv_order_kl'] * 100;
				
				$return['diff_kl_r1'] = ($row['bar_fig_afterload_kl'] - $row['obq_kl'] - $row['deliv_order_kl'] / $row['deliv_order_kl']) * 100 * $row['deliv_order_kl']/100;
				$return['r1']         = ($row['bar_fig_afterload_kl'] - $row['obq_kl'] - $row['deliv_order_kl'] / $row['deliv_order_kl']) * 100;

				$return['diff_kl_r2'] = $row['bar_fig_bfdc_kl'] - $row['bar_fig_afterload_kl'] / $row['deliv_order_kl'] * 100 * $row['deliv_order_kl']/100;
				$return['r2']         = $row['bar_fig_bfdc_kl'] - $row['bar_fig_afterload_kl'] / $row['deliv_order_kl'] * 100;

				$return['diff_kl_r3'] = $row['ship_rec_kl'] - $row['bar_fig_bfdc_kl'] - $row['bar_fig_afdc_kl'] / $row['deliv_order_kl'] * 100 * $row['deliv_order_kl']/100;
				$return['r3']         = $row['ship_rec_kl'] - $row['bar_fig_bfdc_kl'] - $row['bar_fig_afdc_kl'] / $row['deliv_order_kl'] * 100;

				$return['diff_kl_r4'] = $row['ship_rec_kl'] - $row['deliv_order_kl'] / $row['deliv_order_kl'] * 100 * $row['deliv_order_kl']/100;
				$return['r4']         = $row['ship_rec_kl'] - $row['deliv_order_kl'] / $row['deliv_order_kl'] * 100;
				
            }
       
        return $return;
		
    }
	
	 public function update($edit_data = array(), $id)
    {
		$this->db->where('id_info', $id);
		$this->db->update($this->table, $edit_data); 
		$this->db->last_query();
		return $id;
    }
	
	public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('id_info' => $id));
    }
}