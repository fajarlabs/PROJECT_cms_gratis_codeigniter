<?php 

class Welcome extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Menu_model');
    }
    public function index()
    {
    	echo '<ul class="nav">
					<li class="nav-header">Menu</li>';
        echo $this->Menu_model->build_menu(1,'admin');
        echo '</ul>';
    }

}

?>