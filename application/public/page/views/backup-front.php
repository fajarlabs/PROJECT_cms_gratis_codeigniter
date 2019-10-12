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
			/*
			echo '
		    <section class="section-60 section-sm-90 bg-gray-lighter" style="padding-top:3px;padding-bottom:1px;padding-left:1px;padding-right:1px;">
		    <div class="container">
			    <div class="col-xs-6">
			    	<br /><br />
			    	<span style="font-size:30px;">CONTACT</span>
			    	<br />
			    	<span style="font-weight:bold;font-size:20px;">TELP</span>
			    	<br />
			    	<span style="font-weight:bold;font-size:15px;"><u>(021)98876776</u></span>
			    	<br /><br />
			    	<span style="font-weight:bold;font-size:20px;">EMAIL</span>
			    	<br />
			    	<span style="font-weight:bold;font-size:15px;">sucofindo.migas.co.id</span>
			    	<br /><br />
			    	<span style="font-weight:bold;font-size:20px;">LOCATION</span>
			    	<br />
			    	<span style="font-weight:bold;font-size:15px;">Graha Sucofindo Lt. 1, Jl. Raya Pasar Minggu, Kav. 34, RT.4/RW.1, Pancoran, RT.4/RW.1, RT.4/RW.1, Pancoran, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12780</span>
			    </div>
			    <div class="col-xs-6">
			    	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.1674340275576!2d106.82345761424789!3d-6.241651962855403!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f3dc699c3b95%3A0x2a63f3400dfa49ed!2sSucofindo+Duren+Tiga!5e0!3m2!1sid!2sid!4v1519122872585" style="width:100%;" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
			    </div>
		    </div>
		    </section>';
		    */

			echo '
		    <section class="section-60 section-sm-90 bg-gray-lighter" style="padding-top:3px;padding-bottom:1px;padding-left:1px;padding-right:1px;">
		    <div class="container">
			    <div class="col-xs-12">
			    	<br /><br />
					<section class="section-60 section-sm-90 bg-gray-lighter" style="padding-top:3px;padding-bottom:1px;padding-left:1px;padding-right:1px;">
					<div class="shell">
					<div class="range">
					<div class="cell-xs-6 cell-sm-4 cell-md-3">
					<div class="thumbnail thumbnail-variant-1">
					<div class="thumbnail-image"><img src="http://localhost/assets/public/public/sucofindo/images/direksi/1.jpg" alt="" width="189" height="189">
					<div class="thumbnail-image-inner">&nbsp;</div>
					</div>
					<div class="thumbnail-caption">
					<h5 class="header"><a>Bachder Djohan Buddin</a></h5>
					<p>Presiden Direktur</p>
					</div>
					</div>
					</div>
					<div class="cell-xs-6 cell-sm-4 cell-md-3 offset-top-60 offset-xs-top-0">
					<div class="thumbnail thumbnail-variant-1">
					<div class="thumbnail-image"><img src="http://localhost/assets/public/public/sucofindo/images/direksi/2.jpg" alt="" width="189" height="189">
					<div class="thumbnail-image-inner">&nbsp;</div>
					</div>
					<div class="thumbnail-caption">
					<h5 class="header"><a>Mochamad Heru Riza Chakim</a></h5>
					<p>Direktur Komersial 1</p>
					</div>
					</div>
					</div>
					<div class="cell-xs-6 cell-sm-4 cell-md-3 offset-top-60 offset-sm-top-0">
					<div class="thumbnail thumbnail-variant-1">
					<div class="thumbnail-image"><img src="http://localhost/assets/public/public/sucofindo/images/direksi/3.jpg" alt="" width="189" height="189">
					<div class="thumbnail-image-inner">&nbsp;</div>
					</div>
					<div class="thumbnail-caption">
					<h5 class="header"><a>Sufrin Hannan</a></h5>
					<p>Direktur Komersial 2</p>
					</div>
					</div>
					</div>
					<div class="cell-xs-6 cell-sm-4 cell-md-3 offset-top-60 offset-md-top-0">
					<div class="thumbnail thumbnail-variant-1">
					<div class="thumbnail-image"><img src="http://localhost/assets/public/public/sucofindo/images/direksi/4.jpg" alt="" width="189" height="189">
					<div class="thumbnail-image-inner">&nbsp;</div>
					</div>
					<div class="thumbnail-caption">
					<h5 class="header"><a>Beni Agus Permana</a></h5>
					<p>Direktur Keuangan dan Perencanaan Strategis</p>
					</div>
					</div>
					</div>
					</div>
					</div>
					</section>

					<center>
					<button style="height:30px;padding-top:4px;" id="btn-selengkapnya" class="btn btn-sm btn-primary">Sedang memuat...</button>
					</center>

					<div id="div-selengkapnya" style="display:none;">
					<span style="font-size:30px;">Apa itu Sucofindo ?</span>
					<br /><br />

					<span style="font-size:17px;">Sucofindo adalah perusahaan inspeksi pertama di Indonesia. Sebagian besar sahamnya, yaitu 95 persen, dikuasai negara dan lima persen milik Societe Generale de Surveillance Holding SA (“SGS”). Sucofindo berdiri pada 22 Oktober 1956. Bisnis ini bermula dari kegiatan perdagangan terutama komoditas pertanian, dan kelancaran arus barang dan pengamanan devisa negara dalam perdagangan ekspor-impor. Seiring dengan perkembangan kebutuhan dunia usaha, Sucofindo melakukan langkah kreatif dan menawarkan inovasi jasa-jasa baru berbasis kompetensinya.</span>
					<br /><br />

					<span style="font-size:17px;">
					Bisnis jasa pertama yang dimiliki Sucofindo adalah cargo superintendence dan inspeksi. Kemudian melalui studi analisis dan inovasi, Sucofindo melakukan diversifikasi jasa sehingga lahirlah jasa-jasa warehousing dan forwarding, analytical laboratories, industrial and marine engineering, dan fumigation and industrial hygiene. Keanekaragaman jasa-jasa Sucofindo dikemas secara terpadu, jaringan kerja Laboratorium, cabang dan titik layanan di berbagai Kota di Indonesia serta didukung oleh 2.646 Tenaga Profesional yang ahli di bidangnya.
					</span>
					</div>
					<br /><br />
			    </div>
		    </div>
		    </section>
			<script type="text/javascript">
			 (function defer() {
				if (window.jQuery) {
				  var flag = false;
				  $("#btn-selengkapnya").html(\'Lihat Selengkapnya <i class="fas fa-angle-down"></i>\');
				  $("#btn-selengkapnya").on("click",function(){
				    if(!flag) {
				      $("#div-selengkapnya").slideDown();
				      $("#btn-selengkapnya").html(\'Sembunyikan Selengkapnya <i class="fas fa-angle-up"></i>\');
				      flag = true;
				    } else {
				      $("#div-selengkapnya").slideUp();
				      $("#btn-selengkapnya").html(\'Lihat Selengkapnya <i class="fas fa-angle-down"></i>\');
				      flag = false;
				    }
				  });
			    } else {
			       setTimeout(function() { defer() }, 2000);
			    }
			 })();

			</script>
		    ';
		} else {
			echo $error_404;
		}
	}
} else {
	echo $error_404;
}

?>