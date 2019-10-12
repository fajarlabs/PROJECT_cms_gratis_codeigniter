<?php 

/*
|--------------------------------------------------------------------------------|
|
| GLOBAL FUNCTION
|
|--------------------------------------------------------------------------------|
*/

if(!function_exists('get_filter_timelog')) {
	function get_filter_timelog($product_id=0,$intervention_id=0) {
		$result = array();
		$result['TIME'] = [];
		$result['DATE'] = [];
		$result['REMARKS'] = [];
		$CI =& get_instance();
		$CI->load->model(array('element_connection/Element_connection_model'));
		$query = $CI->Element_connection_model->get_item_by_product_intervention($product_id,$intervention_id);
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				$element_fields = $row->ELEMENT_FIELDS;
				$element_decode = json_decode($element_fields);
				if(count($element_decode) > 0) {
					foreach($element_decode as $key => $val) {
						if (stripos($val, "TIME_") !== false) {
							$result['TIME'][] = $val;
						}
						if (stripos($val, "DATE_") !== false) {
							$result['DATE'][] = $val;
						}
						if (stripos($val, "REMARKS_") !== false) {
							$result['REMARKS'][] = $val;
						}
					}
				}
			}

			$result_final = array();
			$total = count($result['TIME']);
			if($total > 0) {
				if(isset($result['TIME'])) {
					foreach($result['TIME'] as $kt => $vt) {
						$result_final[$kt] = array();
						$result_final[$kt][] = $vt;
						$result_final[$kt][] = $result['DATE'][$kt];
						$result_final[$kt][] = $result['REMARKS'][$kt];
					}
				}
			}

			return $result_final;
		}

		
	}
}

if(!function_exists('get_notify')) {
	function get_notify() {
		$CI =& get_instance();
		$CI->load->model("running_text/Running_text_model");
		$query = $CI->Running_text_model->get_all_items();
		$json_object = new stdClass();		
		$result = $query->result();
		if(is_array($result)) {
			$total = count($result);
			for($i=0; $i < $total; $i++) {
				$date1 = new DateTime("now");
				$date2 = new DateTime($result[$i]->DISPLAY_START_TIME);
				$date3 = new DateTime($result[$i]->DISPLAY_STOP_TIME);

				// convert start time
				$start_time = @DateTime::createFromFormat('Y-m-d H:i:s', $result[$i]->DISPLAY_START_TIME);
				$start_time = @$start_time->format('d/m/Y H:i');

				// convert stop time
				$stop_time  = @DateTime::createFromFormat('Y-m-d H:i:s', $result[$i]->DISPLAY_STOP_TIME);
				$stop_time  = @$stop_time->format('d/m/Y H:i');

				// jika tanggal hari ini lebih dari atau sama dengan tanggal mulai
				if($date1 >= $date2) {
					$result[$i]->DISPLAY_START_TIME = $start_time;
					$result[$i]->DISPLAY_STOP_TIME  = $stop_time;
				}

				if($date1 < $date2) {
					unset($result[$i]);	
					continue;
				}

				if($date1 > $date3) {
					unset($result[$i]);		
					continue;
				}

				$result[$i]->MESSAGE = strip_tags($result[$i]->MESSAGE);
			}
		}
		$json_object->total = count($result);
		$json_object->rows  = @$result;
		return $json_object;
	}
}

if(!function_exists('init_slider'))
{
	function init_slider()
	{
		$ul = "";
		$CI =& get_instance();
		$CI->load->model(array('slider/Slider_model','slider/Slider_detail_model'));
		$query = $CI->Slider_model->get_item_active();
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				$query_detail = $CI->Slider_detail_model->get_items_by_ref($row->SLIDER_ID);
				if($query_detail->num_rows() > 0) {
					foreach($query_detail->result() as $row_detail) {
						$image_element = '
				          <div data-slide-bg="'.base_url().$row_detail->PATH.'" class="swiper-slide">
				            <div class="swiper-slide-caption">
				              <div class="shell">
				                <div class="range range-sm-center">
				                  <div class="cell-sm-11 cell-md-10 cell-lg-9">
				                    <h2 data-caption-animate="fadeInUp" data-caption-delay="0s" class="slider-header">'.$row_detail->TITLE.'</h2>
				                    <p data-caption-animate="fadeInUp" data-caption-delay="100" class="text-bigger slider-text">'.$row_detail->CONTENT.'</p>
				                    <div style="display:none;" class="group-xl-responsive offset-top-30 offset-sm-top-45"><a data-caption-animate="fadeInUp" data-caption-delay="250" href="#" data-custom-scroll-to="section-start-journey" class="btn btn-xl btn-white-outline-variant-1">Start a journey</a><a data-caption-animate="fadeInUp" data-caption-delay="250" href="#" class="btn btn-xl btn-primary-contrast">get business now</a></div>
				                  </div>
				                </div>
				              </div>
				            </div>
				          </div>';
						$ul .= $image_element;
					}
				}
			}
		}
		$ul .= "";

		echo $ul;
	}
}

if(!function_exists('init_field_access'))
{
	function init_field_access($client_site_id=0, $title_menu='')
	{
		$CI =& get_instance();
		$CI->load->model(array('client_template/Client_template_access_model','client_menu/Client_menu_model'));
		$query_menu = $CI->Client_menu_model->get_menu_by_title($title_menu);
		$menu_id = 0;
		if($query_menu->num_rows() > 0) {
			$menu_id = $query_menu->result()[0]->MENU_ID;
		}
		$query = $CI->Client_template_access_model->get_field_name_access($client_site_id,$menu_id);

		$collect_field = array();
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				$collect_field [$row->FIELD_NAME] = $row->ACCESS_STATUS == 1 ? true : false;
			}
		}
		
		return $collect_field;
	}
}

if(!function_exists('website_menu'))
{
	function _get_parent_menu($reference=0)
	{
		$CI =& get_instance();
		$str_menu = array();
		$CI->db->where("REFERENCE",$reference);
		$CI->db->where("SHOW",1);
		$CI->db->order_by("WEIGHT", "asc");
		$objectResult = $CI->db->get('WEBSITE_MENU');
		if($objectResult->num_rows() > 0) {
			$str_menu = $objectResult->result_object();
		}

		return $str_menu;			
	}

	function website_menu($reference = 0, $property = array())
	{
		$CI =& get_instance();
		$str_menu = "";
		$arrayMenu = _get_parent_menu($reference);

		if(count($arrayMenu) > 0) {
			foreach($arrayMenu as $key => $val) {
				if(count(_get_parent_menu($val->MENU_ID)) > 0) {
					$str_menu .= "<li class='".@$property['LI_CLASS']."'><a class='".@$property['A_WITH_SUB_CLASS']."' href='javascript:;'>".$val->TITLE." ".@$property['ICON_AFTER_TITLE_SUB_CLASS']."</a><ul class='".@$property['UL_SUB_CLASS']."'>".website_menu($val->MENU_ID,@$property)."</ul></li>";
				} else {
                    $url = '';
                    if(!preg_match('/^(https?:\/\/)/',$val->URL)) {
                        // clear for tag /
                        $url = base_url().'index.php/'.$val->URL;
                    } else {
                    	$url = $val->URL;
                    }
					$str_menu .= "<li><a class='".@$property['A_WITHOUT_SUB_CLASS']."' data-title=\"".trim(strip_tags($val->TITLE))."\"  href=\"".$url."\">".$val->TITLE."</a></li>";
				}
			}
		}

		return $str_menu;
	}
}

if(!function_exists('e'))
{
	function e($str='')
	{
		echo isset($str) ? $str : '';
	}
}

if(!function_exists('script_tag'))
{
    function script_tag($src='', $type="text/javascript", $lang="javascript")
    {
    	if(preg_match('/^(https?:\/\/)/',$src)) {
    		return '<script type="'.$type.'" language="'.$lang.'" src="'.$src.'"></script>'."\n";
    	} else {
			return '<script type="'.$type.'" language="'.$lang.'" src="'.base_url().$src.'"></script>'."\n";
    	}
    }
}

if(!function_exists('tree_menu_admin'))
{
	function tree_menu_admin()
	{
		$CI =& get_instance();
		$CI->load->model('menu/Menu_model');
		if(!empty(get_admin_username())) {
			echo $CI->Menu_model->build_menu(1,get_admin_username());
		}
	}
}

if(!function_exists('tree_menu_client'))
{
	function tree_menu_client()
	{
		$CI =& get_instance();
		$CI->load->model('client_menu/Client_menu_model');
		if(!empty(get_client_username())) {
			echo $CI->Client_menu_model->build_menu(1, get_client_username(),0,get_client_site_id());
		}
	}
}

/*
|--------------------------------------------------------------------------------|
|
| ADMIN SETTING FUNCTION
|
|--------------------------------------------------------------------------------|
*/
if(!function_exists('get_admin_setting'))
{
	function get_admin_setting($setting_name) 
	{
		$CI =& get_instance();
		$CI->load->model('setting/Setting_model');
		return $CI->Setting_model->get_item_by_name($setting_name);
	} 
}

if(!function_exists('get_app_name'))
{
	function get_app_name() 
	{
		return get_admin_setting('APP_NAME');
	} 
}

if(!function_exists('get_app_wallpaper'))
{
	function get_app_wallpaper() 
	{
		return get_admin_setting('APP_WALLPAPER');
	} 
}

if(!function_exists('get_app_ss_timeout'))
{
	function get_app_ss_timeout() 
	{
		return get_admin_setting('APP_SCREEN_SAVER_TIMEOUT');
	} 
}

if(!function_exists('get_app_ss_wallpaper'))
{
	function get_app_ss_wallpaper() 
	{
		return get_admin_setting('APP_SCREEN_SAVER_IMAGE');
	} 
}

if(!function_exists('get_app_brand_width'))
{
	function get_app_brand_width() 
	{
		return get_admin_setting('APP_BRAND_WIDTH');
	} 
}

if(!function_exists('get_app_brand_height'))
{
	function get_app_brand_height() 
	{
		return get_admin_setting('APP_BRAND_HEIGHT');
	} 
}

if(!function_exists('get_app_brand_logo'))
{
	function get_app_brand_logo() 
	{
		return get_admin_setting('APP_BRAND_LOGO');
	} 
}

/*
|--------------------------------------------------------------------------------|
|
| ADMIN SESSION FUNCTION
|
|--------------------------------------------------------------------------------|
*/

if(!function_exists('get_admin_session'))
{
	function get_admin_session() 
	{
		$CI =& get_instance();
		$CI->load->library('session');
		return $CI->session->userdata('oadmin');
	} 
}

if(!function_exists('get_admin_userid'))
{
	function get_admin_userid() 
	{
		$oadmin = get_admin_session();
		return isset($oadmin) ? $oadmin->admin_userid : '';
	} 
}

if(!function_exists('get_admin_username'))
{
	function get_admin_username() 
	{
		$oadmin = get_admin_session();
		return isset($oadmin) ? $oadmin->admin_username : '';
	} 
}

if(!function_exists('get_admin_firstname'))
{
	function get_admin_firstname() 
	{
		$oadmin = get_admin_session();
		return isset($oadmin) ? $oadmin->admin_firstname : '';
	} 
}

if(!function_exists('get_admin_lastname'))
{
	function get_admin_lastname() 
	{
		$oadmin = get_admin_session();
		return isset($oadmin) ? $oadmin->admin_lastname : '';
	} 
}

if(!function_exists('get_admin_email'))
{
	function get_admin_email() 
	{
		$oadmin = get_admin_session();
		return isset($oadmin) ? $oadmin->admin_email : '';
	} 
}

if(!function_exists('get_admin_phone_number'))
{
	function get_admin_phone_number() 
	{
		$oadmin = get_admin_session();
		return isset($oadmin) ? $oadmin->admin_phone_number : '';
	} 
}

if(!function_exists('get_admin_photo'))
{
	function get_admin_photo() 
	{
		$oadmin = get_admin_session();
		return isset($oadmin) ? $oadmin->admin_photo : '';
	} 
}

if(!function_exists('get_admin_status'))
{
	function get_admin_status() 
	{
		$oadmin = get_admin_session();
		return isset($oadmin) ? $oadmin->admin_status : '';
	} 
}

if(!function_exists('get_admin_inquiry_access'))
{
	function get_admin_inquiry_access() 
	{
		$oadmin = get_admin_session();
		return isset($oadmin) ? $oadmin->admin_function_access : '';
	} 
}

if(!function_exists('get_admin_inquiry_access'))
{
	function get_admin_inquiry_access() 
	{
		$oadmin = get_admin_session();
		return isset($oadmin) ? $oadmin->admin_inquiry_access : '';
	} 
}

/*
|--------------------------------------------------------------------------------|
|
| POSTGRES FUNCTION
|
|--------------------------------------------------------------------------------|
*/

if(!function_exists('get_uuid_postgres'))
{
	function get_uuid_postgres() 
	{
		$CI =& get_instance();
		$query = $CI->db->query('SELECT gen_random_uuid() as gen');
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				return $row->gen;
			}
		}
		
		return '';
	} 
}

/*
|--------------------------------------------------------------------------------|
|
| CLIENT QUERY FUNCTION
|
|--------------------------------------------------------------------------------|
*/
if(!function_exists('get_client_name_by_id'))
{
	function get_client_name_by_id($user_id=0) 
	{
		$CI =& get_instance();
		$query = $CI->db->query('SELECT CONCAT_WS(\' \',"FIRST_NAME", "LAST_NAME") as fullname FROM "APP_CLIENT_USER" WHERE "USER_ID" = \''.$user_id.'\'');
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				return $row->fullname;
			}
		}
		
		return '';
	} 
}

if(!function_exists('get_admin_name_by_id'))
{
	function get_admin_name_by_id($user_id=0) 
	{
		$CI =& get_instance();
		$query = $CI->db->query('SELECT CONCAT_WS(\' \',"FIRST_NAME", "LAST_NAME") as fullname FROM "APP_USER" WHERE "USER_ID" = \''.$user_id.'\'');
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				return $row->fullname;
			}
		}
		
		return '';
	} 
}

if(!function_exists('get_client_foto_by_id'))
{
	function get_client_foto_by_id($user_id=0) 
	{
		$CI =& get_instance();
		$query = $CI->db->query('SELECT \''.base_url().'uploads/client_profile/\' || "PHOTO" as photo_profile FROM "APP_CLIENT_USER" WHERE "USER_ID" = \''.$user_id.'\'');
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				return $row->photo_profile;
			}
		}
		
		return '';
	} 
}

if(!function_exists('get_admin_foto_by_id'))
{
	function get_admin_foto_by_id($user_id=0) 
	{
		$CI =& get_instance();
		$query = $CI->db->query('SELECT \''.base_url().'uploads/profile/\' || "PHOTO" as photo_profile FROM "APP_USER" WHERE "USER_ID" = \''.$user_id.'\'');
		if($query->num_rows() > 0) {
			foreach($query->result() as $row) {
				return $row->photo_profile;
			}
		}
		
		return '';
	} 
}

/*
|--------------------------------------------------------------------------------|
|
| CLIENT SESSION FUNCTION
|
|--------------------------------------------------------------------------------|
*/

if(!function_exists('get_client_session'))
{
	function get_client_session() 
	{
		$CI =& get_instance();
		return $CI->session->userdata('oclient');
	} 
}

if(!function_exists('get_client_user_id'))
{
	function get_client_user_id() 
	{
		$oclient = get_client_session();
		return isset($oclient) ? $oclient->client_user_id : '';
	} 
}

if(!function_exists('get_client_username'))
{
	function get_client_username() 
	{
		$oclient = get_client_session();
		return isset($oclient) ? $oclient->client_username : '';
	} 
}

if(!function_exists('get_client_firstname'))
{
	function get_client_firstname() 
	{
		$oclient = get_client_session();
		return isset($oclient) ? $oclient->client_firstname : '';
	} 
}

if(!function_exists('get_client_lastname'))
{
	function get_client_lastname() 
	{
		$oclient = get_client_session();
		return isset($oclient) ? $oclient->client_lastname : '';
	} 
}

if(!function_exists('get_client_email'))
{
	function get_client_email() 
	{
		$oclient = get_client_session();
		return isset($oclient) ? $oclient->client_email : '';
	} 
}

if(!function_exists('get_client_photo'))
{
	function get_client_photo() 
	{
		$oclient = get_client_session();
		return isset($oclient) ? $oclient->client_photo : '';
	} 
}

if(!function_exists('get_client_phone_number'))
{
	function get_client_phone_number() 
	{
		$oclient = get_client_session();
		return isset($oclient) ? $oclient->client_phone_number : '';
	} 
}

if(!function_exists('get_client_created_time'))
{
	function get_client_created_time() 
	{
		$oclient = get_client_session();
		return isset($oclient) ? $oclient->client_created_time : '';
	} 
}

if(!function_exists('get_client_modify_time'))
{
	function get_client_modify_time() 
	{
		$oclient = get_client_session();
		return isset($oclient) ? $oclient->client_modify_time : '';
	} 
}

if(!function_exists('get_client_status'))
{
	function get_client_status() 
	{
		$oclient = get_client_session();
		return isset($oclient) ? $oclient->client_status : '';
	} 
}

if(!function_exists('get_client_site_id'))
{
	function get_client_site_id() 
	{
		$oclient = get_client_session();
		return isset($oclient) ? $oclient->client_site_id : '';
	} 
}

if(!function_exists('get_client_site_name'))
{
	function get_client_site_name() 
	{
		$oclient = get_client_session();
		return isset($oclient) ? $oclient->client_site_name : '';
	} 
}

if(!function_exists('get_client_logo'))
{
	function get_client_logo() 
	{
		$oclient = get_client_session();
		return isset($oclient) ? $oclient->client_logo : '';
	} 
}

if(!function_exists('get_client_logo_height'))
{
	function get_client_logo_height() 
	{
		$oclient = get_client_session();
		return isset($oclient) ? $oclient->client_logo_height : '';
	} 
}

if(!function_exists('get_client_logo_width'))
{
	function get_client_logo_width() 
	{
		$oclient = get_client_session();
		return isset($oclient) ? $oclient->client_logo_width : '';
	} 
}

if(!function_exists('get_client_wallpaper'))
{
	function get_client_wallpaper() 
	{
		$oclient = get_client_session();
		return isset($oclient) ? $oclient->client_wallpaper : '';
	} 
}

if(!function_exists('get_client_group_name'))
{
	function get_client_group_name() 
	{
		$oclient = get_client_session();
		return isset($oclient) ? $oclient->client_group_name : '';
	} 
}

if(!function_exists('get_client_group_id'))
{
	function get_client_group_id() 
	{
		$oclient = get_client_session();
		return isset($oclient) ? $oclient->client_group_id : '';
	} 
}

function check_exist($var){
	$result="";
	if(!empty($var)){
		if($var=="0.000"){
			$result="0";
		}
		else {
			$result=$var;
		}
	}
	else {
		$result="-";
	}
	return $result;
}
function check_exist_date($var){
	if($var=="1970-01-01"){
		return " - ";
	}
	else {
		return (!empty($var) ? convert_date($var,'d/m/Y')  : ' - ');
	}
	
}
/*
|--------------------------------------------------------------------------------|
|
| POSTGRES FUNCTION
|
|--------------------------------------------------------------------------------|
*/
function time_since($str_timestamp=NULL) {
	$since = time() - strtotime($str_timestamp);
    $chunks = array(
        array(60 * 60 * 24 * 365 , 'year'),
        array(60 * 60 * 24 * 30 , 'month'),
        array(60 * 60 * 24 * 7, 'week'),
        array(60 * 60 * 24 , 'day'),
        array(60 * 60 , 'hour'),
        array(60 , 'minute'),
        array(1 , 'second')
    );

    for ($i = 0, $j = count($chunks); $i < $j; $i++) {
        $seconds = $chunks[$i][0];
        $name = $chunks[$i][1];
        if (($count = floor($since / $seconds)) != 0) {
            break;
        }
    }

    $print = ($count == 1) ? '1 '.$name : "$count {$name}s";
    return $print;
}

?>