
<!DOCTYPE html>
<html lang="en" class="wide wow-animation">
<head>
<title>SecureIOT</title>
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<link rel="icon" href="<?php echo base_url(); ?>assets/public/business/images/favicon.html" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/public/business/css/css235b.css?family=Montserrat:400,700%7CLato:300,300italic,400,400italic,700,900%7CPlayfair+Display:700italic,900">
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/public/business/css/style.css">

<!-- Addon -->
<style type="text/css">
.rd-navbar-corporate-light.rd-navbar-static .rd-navbar-nav > li > a {
    font-size: 17px;
    padding: 7px 0;
}

<?php 
/* CSS untuk slide agar lebih keatas */
if(empty($this->uri->segment(1))) {
  //echo "#header-custom {
  //        height:0px !important;
  //     }";
} ?>

.rd-navbar-static .rd-navbar-nav > li > a, .rd-navbar-fullwidth .rd-navbar-nav > li > a {
    position: relative;
    padding: 5px 0;
    font-size: 13px;
    line-height: 1.2;
    color: #fff;
    font-weight: bold;
    background: transparent;
}

li {
  color:red;
}

</style>
</head>
<body style="">
<div class="page">
  <header class="page-head">
    <div class="rd-navbar-wrap">
      <nav style="background-color: #504de0;" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-static" data-stick-up-clone="false" data-md-stick-up-offset="53px" data-lg-stick-up-offset="53px" data-md-stick="true" data-lg-stick-up="true" class="rd-navbar rd-navbar-corporate-light">
        <div id="header-custom"  class="rd-navbar-inner">
          <div style="display:none;" class="rd-navbar-aside-wrap">
            <div  class="rd-navbar-aside">
              <div data-rd-navbar-toggle=".rd-navbar-aside" class="rd-navbar-aside-toggle"><span></span></div>
              <div class="rd-navbar-aside-content">
                <ul class="rd-navbar-aside-group list-units">
                  <li>
                    <div class="unit unit-horizontal unit-spacing-xs unit-middle">
                      <div class="unit-left"><span class="icon icon-xxs icon-primary material-icons-phone"></span></div>
                      <div class="unit-body"><a href="<?php echo base_url(); ?>assets/public/business/callto:#" class="link-secondary">+190089123</a></div>
                    </div>
                  </li>
                  <li>
                    <div class="unit unit-horizontal unit-spacing-xs unit-middle">
                      <div class="unit-left"><span class="icon icon-xxs icon-primary fa-envelope-o"></span></div>
                      <div class="unit-body"><a href="<?php echo base_url(); ?>assets/public/business/#ab88" class="link-secondary"><span class="__cf_email__" data-cfemail="81e8efe7eec1e5e4eceeede8efeaafeef3e6">philipjoan@gmail.com</span></a></div>
                    </div>
                  </li>
                </ul>
                <div class="rd-navbar-aside-group">
                  <ul class="list-inline list-inline-reset">
                    <li><a href="<?php echo base_url(); ?>assets/public/business/#" class="icon icon-circle icon-silver-chalice-filled icon-xxs-smallest fa fa-facebook"></a></li>
                    <li><a href="<?php echo base_url(); ?>assets/public/business/#" class="icon icon-circle icon-silver-chalice-filled icon-xxs-smallest fa fa-twitter"></a></li>
                    <li><a href="<?php echo base_url(); ?>assets/public/business/#" class="icon icon-circle icon-silver-chalice-filled icon-xxs-smallest fa fa-google-plus"></a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="rd-navbar-search">
              <form action="http://templateforest.top/business/search-results.html" method="GET" data-search-live="rd-search-results-live" data-search-live-count="6" class="rd-search">
                <div class="rd-search-inner">
                  <div class="form-group">
                    <label for="rd-search-form-input" class="form-label">Search...</label>
                    <input id="rd-search-form-input" type="text" name="s" autocomplete="off" class="form-control">
                  </div>
                  <button type="submit" class="rd-search-submit"></button>
                </div>
                <div id="rd-search-results-live" class="rd-search-results-live"></div>
              </form>
              <button data-rd-navbar-toggle=".rd-navbar-search, .rd-navbar-search-wrap" class="rd-navbar-search-toggle"></button>
            </div>
          </div>
          <div class="rd-navbar-group">
            <div class="rd-navbar-panel">
              <button data-rd-navbar-toggle=".rd-navbar-nav-wrap" class="rd-navbar-toggle"><span></span></button>
              <a href="<?php echo base_url(); ?>assets/public/business/index-variant-2.html" class="rd-navbar-brand brand">
              <span style="font-size: 30px;color:#f1f1f1;">{ Secure IOT Platform }<br /><br /></span>
              <br />
              <span style="margin-top:15px;margin-left:15px;font-size: 20px;color:#f1f1f1;">Platform for IoT needs</span> 
              </a> </div>
            <div class="rd-navbar-nav-wrap">
              <div class="rd-navbar-nav-inner">
                <ul class="rd-navbar-nav">
                    <?php e(website_menu(0,
                        array(
                            'LI_CLASS'                   => '',
                            'A_WITH_SUB_CLASS'           => '',
                            'ICON_AFTER_TITLE_SUB_CLASS' => '',
                            'UL_SUB_CLASS'               => 'rd-navbar-dropdown',
                            'A_WITHOUT_SUB_CLASS'        => ''
                        ))); ?>
                </ul>

              </div>
            </div>
          </div>
        </div>
      </nav>
    </div>
  </header>