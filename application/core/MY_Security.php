<?php

class MY_Security extends CI_Security 
{
    public function csrf_verify()
    {
    	$bypass_csrf = TRUE;

        if ($bypass_csrf) {
            return parent::csrf_verify();
        } else {
        	return $this->csrf_set_cookie();
            
        }
    }
}
