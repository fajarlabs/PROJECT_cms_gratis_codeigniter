<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>

	<title><?php e(@$title); ?></title>
	<?php e(meta(array('name' => 'viewport', 'content' => 'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no'))); ?>
	<?php e(meta('author', 'Fajar,Wibi,Fajri')); ?>
	<?php e(meta('description', 'Site build using codeigniter 3')); ?>
	<?php e(meta('Content-type', 'text/html; charset=utf-8', 'equiv')); ?>
	<?php e(meta(array('name' => 'robots', 'content' => 'no-cache'))); ?>

	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<?php e(link_tag('http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700')); ?>
	<?php e(link_tag('assets/admin/color-admin/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css')); ?>
	<?php e(link_tag('assets/admin/color-admin/assets/plugins/bootstrap/css/bootstrap.min.css')); ?>
	<?php e(link_tag('assets/admin/color-admin/assets/plugins/font-awesome/css/font-awesome.min.css')); ?>
	<?php e(link_tag('assets/admin/color-admin/assets/css/animate.min.css')); ?>
	<?php e(link_tag('assets/admin/color-admin/assets/css/style.min.css')); ?>
	<?php e(link_tag('assets/admin/color-admin/assets/css/style-responsive.min.css')); ?>
	<?php e(link_tag('assets/admin/color-admin/assets/css/theme/default.css"')); ?>
	<?php e(link_tag('assets/admin/color-admin/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.css')); ?>
	<?php e(link_tag('assets/admin/color-admin/assets/plugins/bootstrap-datepicker/css/datepicker.css')); ?>
	<?php e(link_tag('assets/admin/color-admin/assets/plugins/gritter/css/jquery.gritter.css')); ?>
	<?php e(link_tag('assets/admin/plugins/jquery-ui-1.12.1/jquery-ui.min.css')); ?>
	<?php e(link_tag('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css')); ?>
	<?php e(link_tag('assets/admin/plugins/easyui/themes/bootstrap/easyui.css')); ?>
	<?php e(link_tag('assets/admin/plugins/easyui/themes/icon.css')); ?>
	<?php e(link_tag('assets/admin/plugins/easyui/themes/color.css')); ?>
	<?php e(link_tag('assets/admin/plugins/select2-3.5.4/select2.css')); ?>
	<?php e(link_tag('assets/admin/plugins/lightbox2-master/dist/css/lightbox.min.css')); ?>
	<?php e(link_tag('assets/admin/color-admin/assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css')); ?>
	<?php e(link_tag('assets/admin/color-admin/assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css')); ?>

	<link rel="stylesheet" href="https://openlayers.org/en/v4.4.2/css/ol.css" type="text/css">
	
	<link href="https://fonts.googleapis.com/css?family=Work+Sans" rel="stylesheet">
	<style type="text/css">
		/* page size font */
		.pagination-page-list {
		    color: #000 !important;
		}

		/* marquee */
		.marquee-sibling {
			padding: 0;
			background: #da1f18;
			width: 7%;
			height: 30px;
			line-height: 30px;
			font-size: 14px;
			font-weight: bold;
			color: #FFF;
			text-align: center;
			float: left;
			left: 0;
			z-index: 2000;
		}

		/* override webticker */
		#webTicker {
			background: #f1f1f1;
		}
		#webTicker li {
			font-size: 12px;
		}

		/* override datagrid search box */
		.datagrid-view .datagrid-editable-input {
			color:#666;
			border-radius:5px;
		}

		html,body {
			font-family: 'Work Sans', sans-serif !important;
		}

		.sidebar, .sidebar-bg {
		    background: url('https://wallpapersite.com/images/pages/pic_w/2687.jpg') !important	;
		    background-size: cover !important;
		    left: 0;
		    width: 220px;
		    top: 0;
		    bottom: 0;
		}

		.sidebar .nav > li.nav-profile {
		    padding: 20px;
		    color: #fff;
		    background: #006699;
			-webkit-box-shadow: -1px 2px 11px 1px rgba(0,0,0,0.75);
			-moz-box-shadow: -1px 2px 11px 1px rgba(0,0,0,0.75);
			box-shadow: -1px 2px 11px 1px rgba(0,0,0,0.75);
		}

		.sidebar .nav > li.nav-header {
		    margin: 0;
		    padding: 10px 20px;
		    line-height: 20px;
		    font-size: 11px;
		    color: #fff;
		}

		.sidebar .sub-menu {
		    padding: 10px 0 10px 30px;
		    margin: 0;
		    background: #006699;
		    position: relative;
		    display: none;
		}

		.sidebar .nav > li.expand > a, .sidebar .nav > li > a:focus, .sidebar .nav > li > a:hover {
			background: rgb(17,83,163); /* Old browsers */
			background: -moz-linear-gradient(top, rgba(17,83,163,1) 0%, rgba(3,91,186,1) 50%, rgba(2,111,206,1) 100%); /* FF3.6-15 */
			background: -webkit-linear-gradient(top, rgba(17,83,163,1) 0%,rgba(3,91,186,1) 50%,rgba(2,111,206,1) 100%); /* Chrome10-25,Safari5.1-6 */
			background: linear-gradient(to bottom, rgba(17,83,163,1) 0%,rgba(3,91,186,1) 50%,rgba(2,111,206,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
			filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#1153a3', endColorstr='#026fce',GradientType=0 ); /* IE6-9 */
		}

		

		.sidebar .nav > li > a {
		    line-height: 20px;
		    color: #fff;
		    background: rgb(44,98,165); /* Old browsers */
		    background: -moz-linear-gradient(top, rgba(44,98,165,1) 0%, rgba(26,121,206,1) 50%, rgba(36,132,207,1) 100%); /* FF3.6-15 */
		    background: -webkit-linear-gradient(top, rgba(44,98,165,1) 0%,rgba(26,121,206,1) 50%,rgba(36,132,207,1) 100%); /* Chrome10-25,Safari5.1-6 */
		    background: linear-gradient(to bottom, rgba(44,98,165,1) 0%,rgba(26,121,206,1) 50%,rgba(36,132,207,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
		    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#2c62a5', endColorstr='#2484cf',GradientType=0 ); /* IE6-9 */
		}

		.sidebar .sub-menu > li > a {
		    padding: 5px 20px;
		    display: block;
		    font-weight: 300;
		    color: #d2cece;
		    text-decoration: none;
		    position: relative;
		}

		.sidebar .nav > li.nav-profile .info small {
		    display: block;
		    color: #e1e1e1;
		}

		/* override footer */
		footer {
			padding:0 !important;
		}
	</style>

	<!-- =================== BEGIN BASE CDN ======================== -->
	<?php e(link_tag('https://cdnjs.cloudflare.com/ajax/libs/bootstrap-fileinput/4.4.5/css/fileinput.min.css')); ?>
	<?php e(@$html_css); ?>
	<!-- ================== BEGIN BASE JS ================== -->
	<?php e(script_tag('assets/admin/color-admin/assets/plugins/pace/pace.min.js')); ?>

</head>
<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade in"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin #page-container -->
	<img id="displayed" style="display:none" src="<?php echo get_app_ss_wallpaper() ?>">
	<div id="page-container" class="fade page-sidebar-fixed page-header-fixed">
		<!-- begin #header -->
			<div id="header" class="header navbar navbar-default navbar-fixed-top" style="background-image: url('<?php echo base_url(); ?>assets/admin/images/bg-header.png');background-size:cover;">
			<!-- begin container-fluid -->
			<div class="container-fluid">
				<!-- begin mobile sidebar expand / collapse button -->
				<div class="navbar-header">
					<a href="<?php e(base_url()); ?>" class="navbar-brand"><img style="margin-top:-10px;margin-left:-10px;" src="<?php echo get_client_logo(); ?>" width="<?php echo get_client_logo_width(); ?>" /></a>
					<button type="button" class="navbar-toggle" data-click="sidebar-toggled">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!-- end mobile sidebar expand / collapse button -->
				
				<!-- begin header navigation right -->
				<ul class="nav navbar-nav navbar-right">
					<li style="display: none; ">
						<form class="navbar-form full-width">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Search something.." />
								<button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
							</div>
						</form>
					</li>
					<li style="display: none;"  class="dropdown">
						<a href="javascript:;" data-toggle="dropdown" class="dropdown-toggle f-s-14">
							<i class="fa fa-bell-o"></i>
							<span class="label">0</span>
						</a>
					</li>
					<li class="dropdown navbar-user">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
							<img src="<?php e(get_client_photo()); ?>" alt="<?php e( get_client_firstname().' '.get_client_lastname()); ?>" /> 
							<span style="color:#fff;" class="hidden-xs"><?php e(get_client_firstname().' '.get_client_lastname()); ?> </span> <b class="caret"></b>
						</a>
						<ul class="dropdown-menu animated fadeInLeft">
							<li class="arrow"></li>
							<li><a href="<?php e(base_url()); ?>index.php/client/logout/">Log Out</a></li>
						</ul>
					</li>
				</ul>
				<!-- end header navigation right -->
			</div>
			<!-- end container-fluid -->
		</div>
		<!-- end #header -->
		
		<!-- begin #sidebar -->
		<div id="sidebar" class="sidebar">
			<!-- begin sidebar scrollbar -->
			<div data-scrollbar="true" data-height="100%">
				<!-- begin sidebar user -->
				<ul class="nav">
					<li class="nav-profile">
						<div class="image">
							<a href="javascript:;"><img src="<?php e(get_client_photo()); ?>" alt="<?php e(get_client_username()); ?>" /></a>
						</div>
						<div class="info">
							<?php e(get_client_firstname().' '.get_client_lastname()); ?>
							<small><?php e(get_client_site_name()); ?></small>
						</div>
					</li>
				</ul>
				<ul class="nav">
					<li class="nav-header">Navigation</li>
					<?php tree_menu_client(); ?>
					<li id="logout" class="has-sub">
						<a href="<?php e(base_url()); ?>index.php/client/logout/">
							<i class="fa fa-sign-out"></i> 
							<span>Logout</span>
						</a>
					</li>
					<li><a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify" target="_top"><i class="fa fa-angle-double-left"></i></a></li>
				</ul>
				<!-- end sidebar nav -->
			</div>
			<!-- end sidebar scrollbar -->
		</div>
		<div class="sidebar-bg"></div>
		<!-- end #sidebar -->
		