<?php 

/* huruf awal kelas usahakan besar, karena di server production case sensitif */
class Page extends CI_Controller 
{
	private $data = array();

	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("Static_model"));

		$this->data['csrf'] = array(
			'name' => $this->security->get_csrf_token_name(),
			'hash' => $this->security->get_csrf_hash()
		);
	}

	public function index($seo_title='') 
	{
		$this->data['page'] = $this->Static_model->get_item_by_seo_title($seo_title);
		$this->load->view("public/header",$this->data);
		$this->load->view("page",$this->data);
		$this->load->view("public/footer",$this->data);
	}
}