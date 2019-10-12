<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<head>

	<title><?php e(@$title); ?></title>

	<?php e(meta(array('name' => 'viewport', 'content' => 'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no'))); ?>
	<?php e(meta('author', 'Araka')); ?>
	<?php e(meta('description', 'Sucofindo')); ?>
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
	<?php e(link_tag('assets/admin/color-admin/assets/css/theme/default.css')); ?>
	<?php e(link_tag('assets/admin/color-admin/assets/plugins/jquery-jvectormap/jquery-jvectormap-1.2.2.css')); ?>
	<?php e(link_tag('assets/admin/color-admin/assets/plugins/bootstrap-datepicker/css/datepicker.css')); ?>
	<?php e(link_tag('assets/admin/color-admin/assets/plugins/gritter/css/jquery.gritter.css')); ?>
	<?php e(link_tag('assets/admin/color-admin/assets/plugins/jquery-ui-1.12.1/jquery-ui.min.css')); ?>
	<?php e(link_tag('assets/admin/css/bootstrap-datetimepicker.min.css')); ?>
	<?php e(link_tag('assets/admin/plugins/easyui/themes/bootstrap/easyui.css')); ?>
	<?php e(link_tag('assets/admin/plugins/easyui/themes/icon.css')); ?>
	<?php e(link_tag('assets/admin/plugins/easyui/themes/color.css')); ?>
	<?php e(link_tag('assets/admin/plugins/select2-3.5.4/select2.css')); ?>
	<?php e(link_tag('assets/admin/plugins/lightbox2-master/dist/css/lightbox.min.css')); ?>
	<?php e(link_tag('assets/admin/color-admin/assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css')); ?>
	<?php e(link_tag('assets/admin/color-admin/assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css')); ?>
	<?php e(link_tag('assets/admin/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css')); ?>
	<?php e(link_tag('assets/admin/plugins/jQuery-autoComplete-master/jquery.auto-complete.css')); ?>
	<?php e(link_tag('assets/admin/plugins/sweetalert/dist/sweetalert.css')); ?>

	<!-- Load jquery-UI css -->
	<?php e(link_tag('assets/admin/js/jquery-ui.css')); ?>
	<?php e(link_tag('assets/admin/js/jquery-ui.theme.css')); ?>


	<link href="https://fonts.googleapis.com/css?family=Work+Sans" rel="stylesheet">
	<style type="text/css">

		html,body {
			font-family: 'Work Sans', sans-serif !important;
		}
		
		.sidebar, .sidebar-bg {
		    background: url('<?php echo base_url(); ?>assets/admin/images/2687.jpg') !important	;
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

		.autocomplete_text{
			background-image: url(<?php echo base_url() ?>img/autocomplete_leftcap.gif);
			background-position: right;
			background-repeat: no-repeat;
		}

		.sidebar .nav > li.expand > a, .sidebar .nav > li > a:focus, .sidebar .nav > li > a:hover {
			/* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#607b99+0,77add6+50,aecce2+100 */
			background: rgb(96,123,153); /* Old browsers */
			background: -moz-linear-gradient(top, rgba(96,123,153,1) 0%, rgba(119,173,214,1) 50%, rgba(174,204,226,1) 100%); /* FF3.6-15 */
			background: -webkit-linear-gradient(top, rgba(96,123,153,1) 0%,rgba(119,173,214,1) 50%,rgba(174,204,226,1) 100%); /* Chrome10-25,Safari5.1-6 */
			background: linear-gradient(to bottom, rgba(96,123,153,1) 0%,rgba(119,173,214,1) 50%,rgba(174,204,226,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
			filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#607b99', endColorstr='#aecce2',GradientType=0 ); /* IE6-9 */
		    color: #fff;
		}

		.sidebar .nav > li > a {
		    line-height: 20px;
		    color: #fff;
			/* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#3b679e+0,2b88d9+50,7db9e8+100 */
			background: rgb(59,103,158); /* Old browsers */
			background: -moz-linear-gradient(top, rgba(59,103,158,1) 0%, rgba(43,136,217,1) 50%, rgba(125,185,232,1) 100%); /* FF3.6-15 */
			background: -webkit-linear-gradient(top, rgba(59,103,158,1) 0%,rgba(43,136,217,1) 50%,rgba(125,185,232,1) 100%); /* Chrome10-25,Safari5.1-6 */
			background: linear-gradient(to bottom, rgba(59,103,158,1) 0%,rgba(43,136,217,1) 50%,rgba(125,185,232,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
			filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#3b679e', endColorstr='#7db9e8',GradientType=0 ); /* IE6-9 */
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

		.pagination-page-list {
		    color: #000 !important;
		}

		.pagination .pagination-num {
			color: #000 !important;
		}
		/* web ticker */
		.marquee-sibling {
		    padding: 0;
			background: #cc0000;
		    width: 10%;
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

		.pace {
			display: none !important;
		}

		.blink_me {
		  animation: blinker 1s linear infinite;
		}

		@keyframes blinker {  
		  50% { opacity: 0; }
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
	<!-- ================== END BASE JS ================== -->

</head>
<body>
	<?php if(!isset($basic) || ($basic == false)) : ?>
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
					<a href="<?php echo base_url(); ?>" >
					<img style="margin-top:9px;" src="<?php e(get_app_brand_logo()); ?>" width="<?php e(get_app_brand_width()); ?>" height="<?php e(get_app_brand_height()); ?>" /></a>
					<button type="button" class="navbar-toggle" data-click="sidebar-toggled">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!-- end mobile sidebar expand / collapse button -->
				
				<!-- begin header navigation right -->
				<ul class="nav navbar-nav navbar-right">
					<li style="display: none;">
						<form class="navbar-form full-width">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Search something.." />
								<button type="submit" class="btn btn-search"><i class="fa fa-search"></i></button>
							</div>
						</form>
					</li>

					<li class="dropdown">
						<a title="Standard Reference" href="<?php echo base_url() ?>index.php/dashboard/standard_reference" class="f-s-14" >
							<i class="fa fa-book"></i>
						</a>	
					</li>
					<li class="dropdown">
						<?php $notify = get_notify(); ?>
						<a href="javascript:;" data-toggle="dropdown" class="dropdown-toggle f-s-14">
							<i class="fa fa-bell-o"></i>
							<span class="label"><?php echo $notify->total; ?></span>
						</a>
						<ul class="dropdown-menu media-list pull-right animated fadeInDown">
                            <!--li class="dropdown-header">Notifications (0)</li -->
                            <?php 
                            if($notify->total < 1) {
                            	echo "<li class=\"dropdown-header\">Notifications (0)</li>";
                            } else { 
                            	foreach($notify->rows as $row) {
                            		?>
		                            <li class="media">
		                                <a href="javascript:;">
		                                    <div class="media-left"><i class="fa fa-envelope-o media-object bg-red"></i></div>
		                                    <div class="media-body">
		                                        <h6 class="media-heading"><?php echo $row->MESSAGE; ?> <?php echo $row->CLIENT_SITE_NAME; ?></h6>
		                                        <div class="text-muted f-s-11">3 minutes ago</div>
		                                    </div>
		                                </a>
		                            </li>
                            		<?php 
                            	}

                            }?>
                        </ul>
						<!--ul class="dropdown-menu media-list pull-right animated fadeInDown">
                            <li class="dropdown-header">Notifications (0)</li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><i class="fa fa-envelope-o media-object bg-red"></i></div>
                                    <div class="media-body">
                                        <h6 class="media-heading">Server Error Reports</h6>
                                        <div class="text-muted f-s-11">3 minutes ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><img src="assets/admin/color-admin/assets/img/user-1.jpg" class="media-object" alt="" /></div>
                                    <div class="media-body">
                                        <h6 class="media-heading">John Smith</h6>
                                        <p>Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
                                        <div class="text-muted f-s-11">25 minutes ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><img src="assets/admin/color-admin/assets/img/user-2.jpg" class="media-object" alt="" /></div>
                                    <div class="media-body">
                                        <h6 class="media-heading">Olivia</h6>
                                        <p>Quisque pulvinar tellus sit amet sem scelerisque tincidunt.</p>
                                        <div class="text-muted f-s-11">35 minutes ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><i class="fa fa-plus media-object bg-green"></i></div>
                                    <div class="media-body">
                                        <h6 class="media-heading"> New User Registered</h6>
                                        <div class="text-muted f-s-11">1 hour ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="media">
                                <a href="javascript:;">
                                    <div class="media-left"><i class="fa fa-envelope media-object bg-blue"></i></div>
                                    <div class="media-body">
                                        <h6 class="media-heading"> New Email From John</h6>
                                        <div class="text-muted f-s-11">2 hour ago</div>
                                    </div>
                                </a>
                            </li>
                            <li class="dropdown-footer text-center">
                                <a href="javascript:;">View more</a>
                            </li>
						</ul-->
					</li>
					<li class="dropdown navbar-user">
						<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
							<img src="<?php e(base_url()); ?>uploads/profile/<?php e(get_admin_photo()); ?>" alt="<?php e(get_admin_firstname().' '.get_admin_lastname()); ?>" /> 
							<span style="color:#fff;" class="hidden-xs"><?php e(get_admin_firstname().' '.get_admin_lastname()); ?></span> <b class="caret"></b>
						</a>
						<ul class="dropdown-menu animated fadeInLeft">
							<li><a href="<?php echo base_url(); ?>index.php/logout/">Log Out</a></li>
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
							<a href="javascript:;"><img style="width:50px;" src="<?php echo base_url(); ?>uploads/profile/<?php e(get_admin_photo()); ?>" alt="" /></a>
						</div>
						<div class="info">
							<?php e(get_admin_firstname().' '.get_admin_lastname()); ?>
							<small>Administrator</small>
						</div>
					</li>
				</ul>
				<!-- end sidebar user -->
				<!-- begin sidebar nav -->
				<ul class="nav">
					<li class="nav-header">Navigation</li>
					<?php tree_menu_admin(); ?>
					<li id="logout" class="has-sub">
						<a href="<?php echo base_url(); ?>index.php/logout/">
							<i class="fa fa-sign-out"></i> 
							<span>Logout</span>
						</a>
					</li>
					<li><a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify" target="_top"><i class="fa fa-angle-double-left"></i></a></li>
			        <!-- end sidebar minify button -->
				</ul>
				<!-- end sidebar nav -->
			</div>
			<!-- end sidebar scrollbar -->
		</div>
		<div style="position:fixed;z-index: 1;width:100%;background: #f1f1f1;height:auto;-webkit-box-shadow: 0px 1px 5px -3px rgba(0,0,0,1);
-moz-box-shadow: 0px 1px 5px -3px rgba(0,0,0,1);
box-shadow: 0px 1px 5px -3px rgba(0,0,0,1);">
		<ul id="webTicker"></ul>
		</div>
		<div class="sidebar-bg"></div>
		<br />
		<!-- end #sidebar -->
	<?php endif; ?>	