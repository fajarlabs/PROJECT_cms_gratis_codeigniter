	<?php if(!isset($basic) || ($basic == false)) : ?>
		<!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
	</div>
	<?php endif; ?>

	<!-- end page container -->
	<!-- ================== BEGIN BASE JS ================== -->

	<?php echo script_tag('assets/admin/js/jquery-1.12.4.js') ?>
	<?php echo script_tag('assets/admin/plugins/sweetalert/dist/sweetalert.min.js'); ?>
	<!--[if lt IE 9]>
		<?php echo script_tag('assets/admin/color-admin/assets/crossbrowserjs/html5shiv.js'); ?>
		<?php echo script_tag('assets/admin/color-admin/assets/crossbrowserjs/respond.min.js'); ?>
		<?php echo script_tag('assets/admin/color-admin/assets/crossbrowserjs/excanvas.min.js'); ?>
	<![endif]-->
	<?php echo script_tag('assets/admin/plugins/jQuery-slimScroll-1.3.8/jquery.slimscroll.min.js') ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/jquery-cookie/jquery.cookie.js') ?>
	<!-- ================== END BASE JS ================== -->	
  
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/gritter/js/jquery.gritter.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/flot/jquery.flot.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/flot/jquery.flot.time.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/flot/jquery.flot.resize.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/flot/jquery.flot.pie.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/sparkline/jquery.sparkline.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/jquery-jvectormap/jquery-jvectormap-world-mill-en.js'); ?>
	<?php echo script_tag('assets/admin/plugins/jQuery-autoComplete-master/jquery.auto-complete.min.js'); ?>
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
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/bootstrap-wizard/js/bwizard.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/js/form-wizards.demo.min.js'); ?>
	<?php //echo script_tag('assets/admin/js/decimal.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/js/form-plugins.demo.min.js'); ?>

	<!-- ================== BEGIN CDN BASE JS ================== -->
	<?php echo script_tag(base_url().'assets/admin/plugins/bootstrap-fileinput/js/fileinput.min.js'); ?>
	<?php echo script_tag(base_url().'assets/admin/plugins/moment/min/moment.min.js'); ?>

	<?php echo script_tag('assets/admin/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js'); ?>
	<?php echo script_tag(base_url().'assets/admin/plugins/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js'); ?>
	<?php echo script_tag('assets/admin/js/jquery-ui.js') ?>
	<?php echo script_tag('assets/admin/color-admin/assets/plugins/bootstrap/js/bootstrap.min.js'); ?>
	<?php echo script_tag('assets/admin/color-admin/assets/js/apps.min.js'); ?>

	<?php echo $html_js; ?>

	<script type="text/javascript">
		// global initialize
		$(document).ready(function(){
			// Do not modify format indonesia
			$('.datepicker').datepicker({dateFormat:'dd/mm/yy'});

			$('.timepicker').timepicker({defaultTime: '0:00',showMeridian: false,minuteStep: 1,showSeconds: false,showMeridian: false});

			var dg = $("#dg");
			dg.datagrid("enableFilter");
					
			/*$('.datetimepicker').datetimepicker({
				format: 'DD/MM/YYYY HH:mm'
			});
			$(".tdatetimepicker").mask("00/00/0000 00:00", {placeholder: "__/__/____ __:__"});
			*/

			$.get('<?php e(base_url()); ?>index.php/running_text/footer_list_rest',function(result) {
				if(result.total > 0) {
					try {
						 $.each(result.rows, function(index,value) {
						 	var add_css = "";
						 	if((result.total-1) == index) {
						 		add_css = "last";
						 	}
						 	$('#webTicker').append('<li class="'+add_css+'"><span class="blink_me"  style="color:#ff0000;">'+value.CLIENT_SITE_NAME+'</span> <small style="color:000;">['+value.DISPLAY_START_TIME+'] </small>'+value.MESSAGE+'</li>');
						 });

						 if(result.rows < 1) {
						 	$('#footer-division').hide();
						 }
					} catch(err) {

					}
					$('#webTicker').webTicker();
				} else {
					$('#webTicker').hide();
				}
			});
		});

	$('.contract_autocomplete').autoComplete({
	    source: function(term, response){
	        $.getJSON('<?php echo base_url(); ?>index.php/form_entry/search_kontrak', { q: term }, function(data){ response(data); });
	    }
	});
	</script>

<!-- RANDOM -->
<script type="text/javascript">
	function random_id() {
		return Math.floor(Math.random()*90000) + 10000;
	}
</script>

<!-- SURVEYOR -->
<script type="text/javascript">

	function initSurveyor(e,r,refid) {
		$(e).autocomplete({
	      source: function( request, response ) {
	      		var loc =$('#'+r).val();
		 		$.ajax({
		          url: "<?php echo base_url(); ?>index.php/cv/get_surveyor",
		          dataType: "json",
		          data: {
		            q: request.term,
		            l: loc
		          },
		          success: function( data ) {
		            response( data );
		          }
		        });
	      },
	      minLength: 1,
	      select: function( event, ui ) {
		    var label = ui.item.label;
		    var value = ui.item.value;
			$("#"+refid).val(ui.item.id);
		    // tukar value jadi label
		    ui.item.value = label;
	      },
	      open: function() {
	      },
	      close: function() {
	      }
	    });	
	}

	// fungsi untuk tambah elemen surveyor
	function add_tb_surveyor() {
		var xcv = random_id();
		var element_surveyor = "<tr><td><select id=\"loc_"+xcv+"\" style=\"height:24px;\" name=\"type_location[]\"><option value=\"0\">--Choose Level--</option><option value=\"1\">Pusat</option><option value=\"2\">Cabang</option></select>";
		element_surveyor += "<input class=\"autocomplete_text\" onkeydown=\"initSurveyor(this,'loc_"+xcv+"','surveyor_id_"+xcv+"')\" id=\"autocomplete_"+xcv+"\" style=\"width:300px;margin-bottom: 3px;\" type=\"text\" name=\"surveyor_in_charge[]\" />";
		element_surveyor += "<input type=\"hidden\" name=\"surveyor_id[]\" id=\"surveyor_id_"+xcv+"\" />";
		element_surveyor += "<a onclick=\"delete_tb_surveyor(this)\" style=\"margin-top:-2px;\" href=\"javascript:;\" class=\"btn btn-danger btn-xs\"><i class=\"fa fa-minus\"></i></a></td></tr>";

		$("#tb_surveyor").append(element_surveyor);
	}

	// fungsi untuk menghapus elemen surveyor
	function delete_tb_surveyor(e) {
		$(e).parent().remove();
	}

	add_tb_surveyor();
</script>

<!-- PRODUCT -->
<script type="text/javascript">
	function initProduct(e,r,refid) {
	    $(e).autocomplete({
	      source: function( request, response ) {
		 		$.ajax({
		          url: "<?php echo base_url(); ?>index.php/product/get_product",
		          dataType: "json",
		          data: {
		            q: request.term
		          },
		          success: function( data ) {
		            response( data );
		          }
		        });
	      },
	      minLength: 1,
	      select: function( event, ui ) {
		    var label = ui.item.label;
		    var value = ui.item.value;
			$("#"+refid).val(ui.item.id);
		    // tukar value jadi label
		    ui.item.value = label;
	      },
	      open: function() {
	      },
	      close: function() {
	      }
	    });
	}

	// fungsi untuk menambahkan produk
	function add_tb_product() {
		var xcp = random_id();
		var element_product = "<tr><td style=\"padding-top:2px;\">";
		element_product += "<input class=\"autocomplete_text\" onkeydown=\"initProduct(this,'product_"+xcp+"','product_id_"+xcp+"')\" id=\"product_"+xcp+"\" style=\"width:300px;\" type=\"text\" name=\"product[]\"/>";
		element_product += "<input type=\"hidden\" name=\"product_id[]\" id=\"product_id_"+xcp+"\" />";
		element_product += "<a onclick=\"delete_tb_product(this)\" style=\"margin-top:-2px;\" href=\"javascript:;\" class=\"btn btn-danger btn-xs\"><i class=\"fa fa-minus\"></i></a>";
		element_product += "</td></tr>";

		$("#tb_product").append(element_product);
	}

	// fungsi untuk menghapus produk
	function delete_tb_product(e) {
		$(e).parent().remove();
	}

	// fungsi untuk periksa parameter yang dipakai untuk element
	function check_product(e) {
		var select_product = $(e).val();
		if(select_product == "single_product") {
			$("#tb_product tr").remove();
			$("#tb_product").show();
			$("#id_tb_product").hide();
			$("#lbl_product").show();
			add_tb_product();
		}
		if(select_product == "multi_product") {
			$("#tb_product tr").remove();
			$("#tb_product").show();
			$("#id_tb_product").show();
			$("#lbl_product").show();
			add_tb_product();
		}
	}
</script>

<!-- Multiport -->
<script type="text/javascript">

	function initPort(e,r,refid) {
	    $(e).autocomplete({
	      source: function( request, response ) {
		 		$.ajax({
		          url: "<?php echo base_url(); ?>index.php/port/get_port",
		          dataType: "json",
		          data: {
		            q: request.term
		          },
		          success: function( data ) {
		            response( data );
		          }
		        });
	      },
	      minLength: 1,
	      select: function( event, ui ) {
		    var label = ui.item.label;
		    var value = ui.item.value;
			$("#"+refid).val(ui.item.id);
		    // tukar value jadi label
		    ui.item.value = label;
	      },
	      open: function() {
	      },
	      close: function() {
	      }
	    });
	}

	// fungsi untuk check port
	function check_port(e) {
		var select_port = $(e).val();
		if(select_port == "single_port") {
			$("#id_tb_port").hide();
			$("#tb_port tr").remove();
			add_tb_port();
		}
		if(select_port == "multi_port") {
			$("#id_tb_port").show();
			$("#tb_port tr").remove();
			add_tb_port();
		}
	}

	// fungsi untuk menambahkan element html port
    function add_tb_port() {
		var xpp = random_id();

		// inisialisasi element html port
		var element_port = "<tr><td style=\"padding-top:2px;\">";
		element_port += "<input class=\"autocomplete_text\" onkeydown=\"initPort(this,'port_"+xpp+"','port_id_"+xpp+"')\" id=\"port_"+xpp+"\" type=\"text\" style=\"width:300px;\" name=\"port_terminal[]\" />";
		element_port += "<input type=\"hidden\" name=\"port_id[]\" id=\"port_id_"+xpp+"\" />";
		element_port += "<a onclick=\"delete_tb_port(this)\" style=\"margin-top:-2px;\" href=\"javascript:;\" class=\"btn btn-danger btn-xs\"><i class=\"fa fa-minus\"></i> </a>";
		element_port += "</td></tr>";
    	$("#tb_port").append(element_port);
    }

    // fungsi untuk hapus elemen html port
    function delete_tb_port(e) {
    	$(e).parent().remove();
    }
</script>

<!-- Vessel -->
<script type="text/javascript">
	function initVessel(e,r,refid) {
	    $(e).autocomplete({
			source: function( request, response ) {
				$.ajax({
			    	url: "<?php echo base_url(); ?>index.php/vessel/get_vessel",
			    	dataType: "json",
			    	data: {
			        	q: request.term
			      	},
			    	success: function( data ) {
			        	response( data );
			    	}
			    });
			},
			minLength: 1,
			select: function( event, ui ) {
				var label = ui.item.label;
				var value = ui.item.value;
				// insert vessel id
				$('#'+refid).val(ui.item.id);
				// tukar value jadi label
				ui.item.value = label;
			},
			open: function( event, ui) {
			},
			close: function() {
			},change: function(event, ui) {
				var label = ui.item.label;
				var value = ui.item.value;
				// tukar value jadi label
				ui.item.value = label;
			}
		});
	}
</script>

<!-- CLIENTS -->
<script type="text/javascript">
	function initClient(e,r,refid) {
	    $(e).autocomplete({
			source: function( request, response ) {
				$.ajax({
			    	url: "<?php echo base_url(); ?>index.php/form_entry/get_client",
			    	dataType: "json",
			    	data: {
			        	q: request.term
			      	},
			    	success: function( data ) {
			        	response( data );
			    	}
			    });
			},
			minLength: 1,
			select: function( event, ui ) {
				var label = ui.item.label;
				var value = ui.item.value;
				$("#"+refid).val(ui.item.id);
				// tukar value jadi label
				ui.item.value = label;
			},
			open: function( event, ui) {
			},
			close: function() {
			},change: function(event, ui) {
				var label = ui.item.label;
				var value = ui.item.value;
				// tukar value jadi label
				ui.item.value = label;
			}
		});
	}
</script>

<!-- AREA -->
<script type="text/javascript">
	function initArea(e,r,refid) {
	    $(e).autocomplete({
			source: function( request, response ) {
				$.ajax({
			    	url: "<?php echo base_url(); ?>index.php/form_entry/get_area",
			    	dataType: "json",
			    	data: {
			        	q: request.term
			      	},
			    	success: function( data ) {
			        	response( data );
			    	}
			    });
			},
			minLength: 1,
			select: function( event, ui ) {
				var label = ui.item.label;
				var value = ui.item.value;
				$("#"+refid).val(ui.item.id);
				// tukar value jadi label
				ui.item.value = label;
			},
			open: function( event, ui) {
			},
			close: function() {
			},change: function(event, ui) {
				var label = ui.item.label;
				var value = ui.item.value;
				// tukar value jadi label
				ui.item.value = label;
			}
		});
	}
</script>


</body>

</html>