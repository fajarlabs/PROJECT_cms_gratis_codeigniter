<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Menu_model extends CI_Model 
{

	private $table = "APP_MENU";

	public function get_all_items()
	{
		return $this->db->get($this->table);
	}

    public  function get_menu_by_reference($reference=0) 
    {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('REFERENCE', $reference); 
		return $this->db->get();
    }

    public  function get_item_by_menu_id($menu_id=0) {
		$this->db->select('*');
		$this->db->from($this->table);
		$this->db->where('MENU_ID', $menu_id); 
		return $this->db->get();
    }

    public function save($array_col_val = array())
    {
    	$this->db->insert($this->table,$array_col_val);
    	return $this->db->insert_id();
    }

    public function delete_by_id($id)
    {
    	$this->db->delete($this->table, array('MENU_ID' => $id));
    }

    public function update($array_col_val = array(), $id)
    {
		$this->db->where('MENU_ID', $id);
		$this->db->update($this->table, $array_col_val); 
		return $id;
    }

    public function build_menu($menu_level=1,$username='', $menu_reference=0)
    {
        $root_menu = '';
        $num_child = 0;
        $menu_id   = 0;
        $target    = '';
        $image     = '';
        $url       = '';
        $remark    = '';
        $title     = '';

        $read      = 0;
        $add       = 0;
        $edit      = 0;
        $delete    = 0;

        $_has_sub  = '';
        $num_child = 0;

        $_target = '';
        $_image  = '';
        $_url_1  = '';
        $_url_2  = '';
        $_remark = '';
        $_title  = '';

        $_arrow   = '';

        $sql = 'SELECT "apf"."MENU_ID", 
                        "mnn".
                        "TARGET", 
                        "mnn"."IMAGE", 
                        "mnn"."URL", 
                        "mnn"."REMARK", 
                        "mnn"."TITLE" 
                  FROM "APP_MENU" mnn 
                  INNER JOIN "APP_FUNCTION_ACCESS" apf ON "mnn"."MENU_ID" = "apf"."MENU_ID" 
                  INNER JOIN "APP_USER" usr ON "apf"."NAME" = "usr"."FUNCTION_ACCESS" 
                  WHERE "mnn"."MENU_LEVEL" = \''.$menu_level.'\' AND "mnn"."REFERENCE" = \''.$menu_reference.'\' AND 
                        "mnn"."SHOW" = \'1\'AND "usr"."USERNAME" = \''.$username.'\' AND 
                        COALESCE ("apf"."IS_DELETE", 0) != 1 ORDER BY "WEIGHT" ASC';

        $query = $this->db->query($sql);
        
        if($query->num_rows() > 0) {

            if($menu_level > 1) {
                $root_menu .= '<ul class="sub-menu">';
            }

            foreach($query->result() as $row_menu) {

                if($row_menu->MENU_ID != null || $row_menu->MENU_ID != '') {
                    $menu_id = $row_menu->MENU_ID;
                } else {
                    $menu_id = 0;
                }

                $target  = $row_menu->TARGET;
                $image   = $row_menu->IMAGE;
                $url     = $row_menu->URL;
                $remark  = $row_menu->REMARK;
                $title   = $row_menu->TITLE;
                
                if($url == null) {
                    $url = '';
                }

                $sql_access = 'SELECT "afa"."READ_PRIV" , 
                                      "afa"."EDIT_PRIV" ,
                                      "afa"."DELETE_PRIV" ,
                                      "afa"."ADD_PRIV"
                               FROM "APP_USER" usr 
                               INNER JOIN "APP_FUNCTION_ACCESS" afa on "usr"."FUNCTION_ACCESS" = "afa"."NAME" 
                               WHERE "usr"."USERNAME" = \''.$username.'\' AND "afa"."MENU_ID" = \''.$menu_id.'\'';

                $query_access = $this->db->query($sql_access);

                if($query_access->num_rows() > 0) {

                    // get data read
                    foreach($query_access->result() as $row_access) {
                         if($row_access->READ_PRIV != null || $row_access != '') {
                            $read = $row_access->READ_PRIV;
                         } else {
                            $read = 0;
                         }
                    }

                    // if read is 1, show menu
                    if($read == 1) {
                        
                        // set target blank(new window) or self tab
                        if($target != null || $target != '') {
                            $_target = ' target="'.$target.'"';
                        }

                        $_arrow = '<b class="caret pull-right"></b>';

                        $sql_child   = 'SELECT * FROM "APP_MENU" where "REFERENCE" = \''.$menu_id.'\' AND "SHOW" = \'1\' AND coalesce("IS_DELETE",0) != \'1\'';
                        $query_child = $this->db->query($sql_child);

                        $_has_sub  = '';
                        $num_child = 0;
                        
                        if($query_child->num_rows() > 0) {
                            $_has_sub  = 'class="has-sub"';
                            $num_child = 1;
                        }

                        if(($url != null) || ($url != '')) {

                            // filter http or https
                            if(!preg_match('/^(https?:\/\/)/',$url)) {
                                // clear for tag /
                                $url = base_url().'index.php/'.str_replace("/", "", $url);
                            }

                            if($target == "_top") {
                                $_url_1 = '<a href="'.$url.'" '.$_target.' >'.$image;
                                $_url_2 = '</a>'; 
                            } else {
                                if(!empty($url)) {
                                    $_url_1 = '<a href="'.$url.'" '.$_target.'>'.$image;
                                } else {
                                    $_url_1 =  '<a href="'.$url.'" '.$_target.'>'.$image;
                                }

                                $_url_2 = "</a>";
                            }
                        } else {
                            $_url_1 = '<a href="javascript:;">'.$image;
                            $_url_2 = '</a>';   
                        }

                        if($num_child > 0) {
                            $root_menu .= '<li '.$_has_sub.'>'.$_url_1.' '.$_image.' <span>'.$title.'</span> '.$_arrow.' '.$_url_2;
                        } else {
                            $root_menu .= '<li>'.$_url_1.' '.$_image.' <span>'.$title.'</span> '.$_url_2;
                        }

                        $check_level = $menu_level + 1;

                        $sql_check_menu   = 'SELECT COUNT(*) FROM "APP_MENU" WHERE "MENU_LEVEL" = \''.$check_level.'\' AND "REFERENCE" = \''.$menu_id.'\'';
                        $query_check_menu = $this->db->query($sql_check_menu);
                        
                        if($query_check_menu->num_rows() > 0) {
                            $root_menu .= $this->build_menu($check_level, $username,$menu_id);
                        }

                        if($read == 1) {
                            $root_menu .= '</li>';
                        }
                    }
                }
            }

            if($menu_level > 1) {
                $root_menu .= '</ul>';
            }

        }


        return $root_menu;
    }

}
