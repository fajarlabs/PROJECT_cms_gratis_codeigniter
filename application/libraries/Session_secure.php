<?php
class Session_secure {
	public function active_or_redirect($page_redirect="") {
		$CI =& get_instance();
		$oadmin = $CI->session->userdata("oadmin");
		if(!isset($oadmin)) {
			redirect($page_redirect);
		}
	}
} ?>