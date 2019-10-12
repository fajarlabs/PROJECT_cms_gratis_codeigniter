<?php
require('assets/admin/tcpdf/tcpdf.php');

// Extend the TCPDF class to create custom Header and Footer
class MYPDF extends TCPDF {

    //Page header
    public function Header() {
        // Logo
        $image_file = K_PATH_IMAGES.'logo_suco_report.png';
        $this->Image($image_file, 20, 10, 25, '', 'PNG', '', 'T', false, 300, '', false, false, 0, false, false, false);
       
	   // Set font
        $this->SetFont('helvetica', 'B', 15);
        // Title
		$SetTitle='PT. SUPERINTENDING COMPANY OF INDONESIA';
		$subtitle='SBU Hulu Migas Dan Produk Migas';

		$this->Cell(0, 0, $SetTitle, 0, 1, 'C', 0, '', 0);
	  
		$this->SetFont('helvetica', 'B', 10);
		$this->Cell(0, 0, $subtitle, 0, 1, 'C', 0, '', 1);
		
		$style = array('width' => 0.2, 'cap' => 'butt', 'join' => 'miter', 'dash' => 0, 'color' => array(0, 0, 0));

		$this->Line(200, 25, 15, 25, $style);
    }  
}

	
?>