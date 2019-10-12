<?php 

function get_key_post() {
	$result = array();
	foreach ($_POST as $key => $value)
	{
		$result[] = $key;
	}

	return $result;
}

function get_key_files() {
	$result = array();
	foreach ($_FILES as $key => $value)
	{
		$result[] = $key;
	}

	return $result;
}

function get_key_type($name='',$table="FORM_ENTRY_FIELD") {
	$ci =& get_instance();
	$ci->load->dbforge();
	foreach($ci->db->field_data($table) as $key => $val) {
		if($val->name == $name) {
			return $val->type;
		}
	}
}

// fungsi untuk membuat folder baru
// ketika folder tersebut belum ada 
// pada folder uploads
function create_folder($path='./uploads/global',$chmod=0755) {
    if(!is_dir($path)) //create the folder if it's not already exists
    {
      mkdir($path,0755,TRUE);
    } 
}

// fungsi untuk periksa apakah files content
// berisi array atau bukan sebagai referensi
// agar bisa di set multiple upload atau single upload
function is_multiple_files($files) {
	if(isset($files)) {
		if(is_array($files)) {
			foreach($files as $key => $val) {
				if(is_array($val)) {
					return true;
				} else {
					return false;
				}
			}
		}
	}
}

function create_column_1d($ref) {
	if(isset($ref)) {
		
		if(!empty($ref)) {
			$ci =& get_instance();
			$ci->load->dbforge();
			
			if(is_array($ref)) {
				foreach($ref as $key => $value) {
					$col = strtoupper($value);
					if (!$ci->db->field_exists($col , 'FORM_ENTRY_FIELD'))
					{
						if(!is_numeric($col)) {
					   		$field = array($col => array('type' => 'TEXT'));
							$ci->dbforge->add_column('FORM_ENTRY_FIELD', $field);
						}
					}
				}
			} else {
				$col = strtoupper($ref);
				if (!$ci->db->field_exists($col , 'FORM_ENTRY_FIELD'))
				{
					if(!is_numeric($col)) {
				   		$field = array($col => array('type' => 'TEXT'));
						$ci->dbforge->add_column('FORM_ENTRY_FIELD', $field);
					}
				}
			}
		}
	}
}