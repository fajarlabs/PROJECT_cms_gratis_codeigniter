<?php 

class Template {

	public function breadcrumb($pre_html = "",$end_html = "",$array_crumb = array()) {
		if(is_array($array_crumb)) {
			if(count($array_crumb) > 0) {
				$count_flag = count($array_crumb);
				foreach($array_crumb as $crumbs) {
					$pre_html .= "<li ".($count_flag < 2 ? "class=\"active\"" : "").">".($count_flag > 1 ? "<a href=\"".$crumbs['link']."\">".$crumbs['text']."</a>" : $crumbs['text'])."</li>";
					$count_flag--;
				}
			}
		}
		$pre_html .= $end_html;
		return $pre_html;
	}
	
	public function view($template_array=array(),$data_array=array(),$data=array()) {
		$CI =& get_instance();
		
		if(is_array($data_array)) {
			if(count($data_array) > 0) {
				foreach($data_array as $data_key => $data_val) {
					$data[$data_key] = $data_val;
				}
			}
		}
		
		if(is_array($template_array)) {
			if(count($template_array) > 0) {
				foreach($template_array as $key => $val) {
					$CI->load->view($val,$data);
				}
			}
		}
	}
}