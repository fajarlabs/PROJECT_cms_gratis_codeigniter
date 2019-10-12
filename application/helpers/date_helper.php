<?php 

/*
|--------------------------------------------------------------------------------|
|
| GLOBAL FUNCTION
|
|--------------------------------------------------------------------------------|
*/

function convert_date($date,$format){  
		$newDate=""; 
		if($date==null or $date==""){
			return "";
		}
		else {
			$date = str_replace('/', '-', $date);
			$newDate =  date('Y-m-d', strtotime($date));
		}
	    return($newDate);
}


function convertDateDBFormat($str_date='',$choose=0) {

	// 2018-04-18 to 18/04/2018
	if($choose == 1) {
		$dex = explode('-',$str_date);
		if(count($dex) == 3) {
			return $dex[2].'/'.$dex[1].'/'.$dex[0];
		}
		return '';
	}
}

?>