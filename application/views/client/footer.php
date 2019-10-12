		<!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
	   
	</div>
	<!-- end page container -->

	<!-- end page container -->
	<!-- ================== BEGIN BASE JS ================== -->
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/jquery/jquery-1.9.1.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/jquery/jquery-migrate-1.1.0.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/bootstrap/js/bootstrap.min.js'); ?>
	<!--[if lt IE 9]>
		<?php echo script_tag('assets/admin/color-admin/assets/crossbrowserjs/html5shiv.js'); ?>
		<?php echo script_tag('assets/admin/color-admin/assets/crossbrowserjs/respond.min.js'); ?>
		<?php echo script_tag('assets/admin/color-admin/assets/crossbrowserjs/excanvas.min.js'); ?>
	<![endif]-->
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/slimscroll/jquery.slimscroll.min.js') ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/jquery-cookie/jquery.cookie.js') ?>
	<!-- ================== END BASE JS ================== -->	

	<?php echo script_tag('assets/admin/plugins/jquery-ui-1.12.1/jquery-ui.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/gritter/js/jquery.gritter.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/flot/jquery.flot.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/flot/jquery.flot.time.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/flot/jquery.flot.resize.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/flot/jquery.flot.pie.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/sparkline/jquery.sparkline.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/jquery-jvectormap/jquery-jvectormap-world-mill-en.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/js/dashboard.min.js'); ?>
	<?php echo script_tag('assets/admin/plugins/easyui/jquery.easyui.min.js'); ?>
	<?php echo script_tag('assets/admin/plugins/tinymce/js/tinymce/tinymce.min.js'); ?>
	<?php echo script_tag('assets/admin/plugins/select2-3.5.4/select2.min.js'); ?>
	<?php echo script_tag('assets/admin/plugins/jQuery-Mask-Plugin-master/dist/jquery.mask.min.js'); ?>
	<?php echo script_tag('assets/admin/plugins/lightbox2-master/dist/js/lightbox.min.js'); ?>
	<?php echo script_tag('assets/admin/plugins/webticker/jquery.webticker.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/DataTables/media/js/jquery.dataTables.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/js/table-manage-default.demo.min.js'); ?>
	<?php echo script_tag('assets/admin/plugins/datagrid-filter/datagrid-filter.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/js/apps.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/bootstrap-wizard/js/bwizard.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/js/form-wizards.demo.min.js'); ?>
	<?php //echo script_tag('assets/admin/js/decimal.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/js/form-plugins.demo.min.js'); ?>

	<!-- ================== BEGIN CDN BASE JS ================== -->
	<?php echo script_tag(base_url().'assets/admin/plugins/bootstrap-fileinput/js/fileinput.min.js'); ?>
	<?php echo script_tag(base_url().'assets/admin/plugins/moment/min/moment.min.js'); ?>
	<?php echo script_tag(base_url().'assets/admin/plugins/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js'); ?>

    <!-- The line below is only needed for old environments like Internet Explorer and Android 4.x -->
    <script src="https://cdn.polyfill.io/v2/polyfill.min.js?features=requestAnimationFrame,Element.prototype.classList,URL"></script>
    <script src="https://openlayers.org/en/v4.4.2/build/ol.js"></script>
    
	<!-- ================== END BASE JS ================== -->	
	<script type="text/javascript">

		$(document).ready(function(){
			$.get('<?php e(base_url()); ?>index.php/running_text/footer_list_rest',function(result) {
				
				if(result.total > 0) {
					try {
						 $.each(result.rows, function(key) {
						 	$('#webTicker').append('<li><i class="fa fa-bullhorn"></i> ('+result.rows[key].DISPLAY_START_TIME+') '+result.rows[key].MESSAGE+'</li>');
						 });

						 if(result.rows < 1) {
						 	$('#webTicker').parent().hide();
						 }
					} catch(err) {
						console.log(err);
						$('#webTicker').parent().hide();
					}
				}
				$('#webTicker').webTicker();
			});
		});
	</script>

	<?php echo @$html_js; ?>
</body>

</html>