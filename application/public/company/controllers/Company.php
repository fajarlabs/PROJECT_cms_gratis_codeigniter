<?php 

/* huruf awal kelas usahakan besar, karena di server production case sensitif */
class Company extends CI_Controller 
{
	private $data = array();

	public function __construct() 
	{
		parent::__construct();
		$this->load->model(array("client_site/Client_site_model"));

		$this->data['csrf'] = array(
			'name' => $this->security->get_csrf_token_name(),
			'hash' => $this->security->get_csrf_hash()
		);
	}

	public function index() 
	{
		$this->load->view("public/header");
		$this->load->view("company");
		$this->load->view("public/footer");
	}

	public function page($p="default") 
	{
		$this->load->view("public/header");
		switch($p) {
			case "about-us" :
				$this->load->view("about-us");
			break;
			case "contact-us" :
				$this->load->view("contact-us");
			break;
			case "inspeksi-rig" :
				$this->load->view("inspeksi-rig");
			break;
			case "kalibrasi" :
				$this->load->view("kalibrasi");
			break;
			case "konsultasi" : 
				$this->load->view("konsultasi");
			break;
			case "octg" :
				$this->load->view("octg");
			break;
			case "survey-cargo" :
				$this->load->view("survey-cargo");
			break;
			case "client-room" :
				$this->data['client_site'] = $this->Client_site_model->get_all_items(); 
				$this->load->view("client-room",$this->data);
			break;
			default :
				$this->load->view("error-404");
			break;
		}
		$this->load->view("public/footer");
	}
}