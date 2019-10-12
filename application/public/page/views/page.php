<?php 
$error_404 = '
	<!--content-->
	<section class="section_offset">
		<div class="container clearfix">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 m_xs_bottom_30">
					<img src="'.base_url().'assets/public/error404/images/error-404.png" />
				</div>
			</div>
		</div>
	</section>';

if($page->num_rows() > 0) {
	foreach($page->result() as $row) {
		if($row->STATUS == 'Y') {	
			echo html_entity_decode(stripslashes($row->CONTENT));
		} else {
			echo $error_404;
		}
	}
} else {
	echo $error_404;
}

?>