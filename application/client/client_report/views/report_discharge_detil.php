<!-- begin #content -->
<div id="content" class="content">
	<!-- marquee text -->  
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->

  <style type="text/css">
  .span {
     font-family: OpenSans-Regular;
     font-size : 16px;
     src: url('<?php echo base_url(); ?>assets/fonts/OpenSans/OpenSans-Regular.ttf'); 
  } 
</style>
	
	<!-- begin page-header -->
	<h1 class="page-header"><?php e($site_name); ?><small> Report data <?php e($site_name); ?></small></h1>
	<!-- end page-header -->
 

	<!-- begin row -->
	<div class="row">
		<!-- begin col-12 -->
		<div class="col-xs-12">
			<!-- begin panel -->
			<div class="panel panel-inverse">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="<?php echo base_url(); ?>index.php/form_entry/index" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-reply"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title"><?php e($site_name); ?> - Data Report</h4>
				</div>
				<div class="panel-body" style="background-color:#D1DFED;overflow-x: hidden; alignment-baseline:middle;">
				<table align="center" border="0">
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr >
    <td class="span">&nbsp;</td>
    <td align="center" class="span">
    <table border="1" cellspacing="20" cellpadding="10" style="background-color: white;">
    <tr><td style="padding-left:20px;">    
    <table width="700" border="0">
  <tr>
    <td width="307"><img src="<?php echo base_url(); ?>/assets/admin/images/logo_suco_report.png" width="150px"/></td>
    <td class="span" colspan="6"><strong>PT. SUPERINTENDING COMPANY OF INDONESIA<br>SBU Hulu Migas Dan Produk Migas<br>DISCHARGE SUMMARY</strong></td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td width="21">&nbsp;</td>
    <td width="109">&nbsp;</td>
    <td width="104">&nbsp;</td>
    <td width="144">&nbsp;</td>
    <td width="97">&nbsp;</td>
    <td width="88">&nbsp;</td>
  </tr>
  <tr>
    <td class="span" colspan="7"><strong>I. GENERAL  INFORMATION</strong></td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
    <tr>
    <td class="span">Referensi</td>
    <td class="span">:</td>
    <td class="span" colspan="5">REPORT-00000<?php echo check_exist($item->result()[0]->ID) ?>
    </td>
  </tr>
  <tr>
    <td class="span">Principal</td>
    <td class="span">:</td>
    <td class="span" colspan="5">
      <?php 
        $data_pr ="";
        $arr_pr =  json_decode(@$item->result()[0]->KONTRAK);
        foreach ($arr_pr as $key => $value) {
          $data_pr .=$value.", ";
        }
        echo  rtrim($data_pr, ', ');
      ?>
    </td>
  </tr>
  <tr>
    <td class="span">FILE Order</td>
    <td class="span">:</td>
    <td class="span" colspan="5"><?php echo check_exist($item->result()[0]->FILE_ORDER) ?></td>
  </tr> 
  <tr>
    <td class="span">IWO</td>
    <td class="span">:</td>
    <td class="span" colspan="5"><?php echo check_exist($item->result()[0]->IWO) ?></td>
  </tr> 
  <tr>
    <td class="span">Vessel</td>
    <td class="span">:</td>
    <td class="span" colspan="5"><?php echo @$item->result()[0]->VESSEL; ?></td>
  </tr>
  <tr>
    <td class="span">Voyage</td>
    <td class="span">:</td>
    <td class="span" colspan="5">
    <?php 
      $data_voy ="";
      $arr_voy =  json_decode( @$item->result()[0]->VOY);
      foreach ($arr_voy as $key => $value) {
        $data_voy .=$value.", ";
      }
      echo  rtrim($data_voy, ', ');
    ?>
    </td>
  </tr>
  <tr>
    <td class="span">Location</td>
    <td class="span">:</td>
    <td class="span" colspan="5"><?php echo @$item->result()[0]->AREA; ?></td>
  </tr>
    <tr>
    <td class="span" valign="top">Product</td>
    <td class="span" valign="top">:</td>
    <td class="span" colspan="2" align="left" valign="top"><?php 
	$arr_prod=json_decode(@$item->result()[0]->PRODUCT);
	if (is_array($arr_prod) || is_object($arr_prod))
	{
	$take=0;
	echo'<ol>';
	foreach($arr_prod as $key => $value){
		 $take='<li>'.$value.'</li>';
		echo $take;
		}
	 echo'</ol>';
	} else {
		echo @$item->result()[0]->PRODUCT;
	}
	?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Loading Date</td>
    <td class="span">:</td>
    <td class="span" colspan="2">
      <?php echo check_exist_date($item->result()[0]->LOADING_START_DATE) ?> &nbsp;
      <?php echo check_exist($item->result()[0]->LOADING_START_TIME) ?>
    </td>
    <td class="span" colspan="3">s/d &nbsp;
      <?php echo check_exist_date($item->result()[0]->LOADING_COMPLETE_DATE) ?>
      <?php echo check_exist($item->result()[0]->LOADING_COMPLETE_TIME) ?>
    </td>
  </tr>
  <tr>
    <td class="span">Discharge Date</td>
    <td class="span">:</td>
     <td class="span" colspan="2">
      <?php echo check_exist_date($item->result()[0]->DISCHARGE_START_DATE) ?> &nbsp;
      <?php echo check_exist($item->result()[0]->DISCHARGE_START_TIME) ?>
    </td>
    <td class="span" colspan="3">s/d &nbsp;
      <?php echo check_exist_date($item->result()[0]->DISCHARGE_COMPLETE_DATE) ?>
      <?php echo check_exist($item->result()[0]->DISCHARGE_COMPLETE_TIME) ?>
    </td>
  </tr>
  <tr>
    <td class="span">Bill of Lading No</td>
    <td class="span">:</td>
    <td class="span">-</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Bill of Lading Date</td>
    <td class="span">:</td>
    <td class="span"><?php echo check_exist_date($item->result()[0]->BL_START_DATE); ?></td>
    <td class="span"><?php echo check_exist($item->result()[0]->BL_START_TIME); ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span" valign="top">Surveyor in charge</td>
    <td class="span" valign="top">:</td>
    <td class="span" colspan="5"> <?php 
	$tes=json_decode(@$item->result()[0]->SURVEYOR_IN_CHARGE);		
	if (is_array($tes) || is_object($tes))
	{	
	$take=0;
	echo'<ol>';
	foreach($tes as $key => $value){
		 $take='<li>'.$value.'</li>';
		echo $take;
		}
	 echo'</ol>';	
	}  else {
		echo @$item->result()[0]->SURVEYOR_IN_CHARGE;
	}
	?></td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span" colspan="7"><strong>II. DISCHARGE MONITORING</strong></td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span"><strong>A. TIME  LOG</strong></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span"><strong>Description</strong></td>
    <td class="span">&nbsp;</td>
    <td class="span"><strong>Date</strong></td>
    <td class="span"></td>
    <td class="span"><strong>Time</strong></td>
    <td class="span" colspan="2"><strong>Remarks/Delays/Etc</strong></td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <?php  foreach($el_connection_timelog as $key => $value){  
		 $label = str_replace('_',' ',substr($value[0],5));
  ?>
  <tr>
    <td class="span"><?php echo ucwords(strtolower($label)); ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo check_exist_date($item->result()[0]->$value[1]); ?></td>
    <td class="span">&nbsp;</td>
    <td class="span"><?php echo check_exist($item->result()[0]->$value[0]); ?></td>
    <td class="span" colspan="2"><?php echo check_exist($item->result()[0]->$value[2]); ?></td>
  </tr>
<?php 	} ?>
  <tr>
    <td class="span">Remarks</td>
    <td class="span">:</td>
    <td class="span" colspan="5">
      <?php echo check_exist($item->result()[0]->ACTIVITIES_REMARKS); ?></td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span"><strong>B. QUANTITY</strong></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center">K/L Obsv.</td>
    <td class="span" align="center">K/L @15 oC</td>
    <td class="span" align="center">BBls @60 oF</td>
    <td class="span" align="center">Metric Ton</td>
    <td class="span" align="center">Long Ton</td>
  </tr>
  <tr>
    <td class="span"><strong>BL Figure</strong></td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center">&nbsp;</td>
    <td class="span" align="center">&nbsp;</td>
    <td class="span" align="center">&nbsp;</td>
    <td class="span" align="center">&nbsp;</td>
    <td class="span" align="center">&nbsp;</td>
  </tr>
  <tr>
      <?php 
      $BL_GSV_KLOBS = number_format((float)$item->result()[0]->BL_GSV_KLOBS, 3, '.', '');
      $BL_GSV_KL15 = number_format((float)$item->result()[0]->BL_GSV_KL15, 3, '.', '');
      $BL_GSV_BBLS = number_format((float)$item->result()[0]->BL_GSV_BBLS, 3, '.', '');
      $BL_GSV_METRICTON = number_format((float)$item->result()[0]->BL_GSV_METRICTON, 3, '.', '');
      $BL_GSV_LONGTON = number_format((float)$item->result()[0]->BL_GSV_LONGTON, 3, '.', '');
    ?>
    <td class="span">Gross Standard Volume</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php echo check_exist($BL_GSV_KLOBS); ?></td>
    <td class="span" align="center"><?php echo check_exist($BL_GSV_KL15); ?> </td>
    <td class="span" align="center"><?php echo check_exist($BL_GSV_BBLS); ?></td>
    <td class="span" align="center"><?php echo check_exist($BL_GSV_METRICTON); ?></td>
    <td class="span" align="center"><?php echo check_exist($BL_GSV_LONGTON); ?></td>
  </tr>
  <tr>
    <?php 
      $BL_NSV_KLOBS = number_format((float)$item->result()[0]->BL_NSV_KLOBS, 3, '.', '');
      $BL_NSV_KL15 = number_format((float)$item->result()[0]->BL_NSV_KL15, 3, '.', '');
      $BL_NSV_BBLS = number_format((float)$item->result()[0]->BL_NSV_BBLS, 3, '.', '');
      $BL_NSV_METRICTON = number_format((float)$item->result()[0]->BL_NSV_METRICTON, 3, '.', '');
      $BL_NSV_LONGTON = number_format((float)$item->result()[0]->BL_NSV_LONGTON, 3, '.', '');
    ?>
    <td class="span">Net Standard Volume</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php echo check_exist($BL_NSV_KLOBS); ?></td>
    <td class="span" align="center"><?php echo check_exist($BL_NSV_KL15); ?></td>
    <td class="span" align="center"><?php echo check_exist($BL_NSV_BBLS); ?></td>
    <td class="span" align="center"><?php echo check_exist($BL_NSV_METRICTON); ?></td>
    <td class="span" align="center"><?php echo check_exist($BL_NSV_LONGTON); ?></td>
  </tr>
  <tr>
    <td class="span">BL Figure based on</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center">
    <?php if(@$item->result()[0]->BL_FLOW_METER=="Y") { ?>
      <i style="color:green" class="fa fa-check"></i> 
    <?php } else { ?>
      <i style="color:red" class="fa fa-check"></i> 
    <?php }  ?><br>Flow Meter</td>
    <td class="span" align="center">
    <?php if(@$item->result()[0]->BL_SHORE_TANK=="Y") { ?>
      <i style="color:green" class="fa fa-check"></i> 
    <?php } else { ?>
      <i style="color:red" class="fa fa-times"></i> 
    <?php }  ?><br>Shore Tank</td>
    <td class="span" align="center">
      <?php if(@$item->result()[0]->BL_SHIP_TANK=="Y") { ?>
      <i style="color:green" class="fa fa-check"></i> 
    <?php } else { ?>
      <i style="color:red" class="fa fa-times"></i> 
    <?php }  ?><br>Ship Tank</td>
    <td class="span" align="center"><?php //echo @$item->result()[0]->BL_SFAL_METRICTON; ?></td>
    <td class="span" align="center"><?php //echo @$item->result()[0]->BL_SFAL_LONGTON; ?></td>
  </tr>
  <tr>
     <?php 
      $SFAL_KLOBS = number_format((float)$item->result()[0]->SFAL_KLOBS, 3, '.', '');
      $SFAL_KL15 = number_format((float)$item->result()[0]->SFAL_KL15, 3, '.', '');
      $SFAL_BBLS = number_format((float)$item->result()[0]->SFAL_BBLS, 3, '.', '');
      $SFAL_METRICTON = number_format((float)$item->result()[0]->SFAL_METRICTON, 3, '.', '');
      $SFAL_LONGTON = number_format((float)$item->result()[0]->SFAL_LONGTON, 3, '.', '');
    ?>
    <td class="span">Ship's Figure After Loading (SFAL)</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php echo check_exist($SFAL_KLOBS); ?></td>
    <td class="span" align="center"><?php echo check_exist($SFAL_KL15); ?> </td>
    <td class="span" align="center"><?php echo check_exist($SFAL_BBLS); ?></td>
    <td class="span" align="center"><?php echo check_exist($SFAL_METRICTON); ?></td>
    <td class="span" align="center"><?php echo check_exist($SFAL_LONGTON); ?></td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span"><strong>Shore Figure</strong></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <?php 
      $SF_SQ_KLOBS = number_format((float)$item->result()[0]->SF_SQ_KLOBS, 3, '.', '');
      $SF_SQ_KL15 = number_format((float)$item->result()[0]->SF_SQ_KL15, 3, '.', '');
      $SF_SQ_BBLS = number_format((float)$item->result()[0]->SF_SQ_BBLS, 3, '.', '');
      $SF_SQ_METRICTON = number_format((float)$item->result()[0]->SF_SQ_METRICTON, 3, '.', '');
      $SF_SQ_LONGTON = number_format((float)$item->result()[0]->SF_SQ_LONGTON, 3, '.', '');
    ?>
    <td class="span">Shore Quantity</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php echo check_exist($SF_SQ_KLOBS); ?></td>
    <td class="span" align="center"><?php echo check_exist($SF_SQ_KL15); ?></td>
    <td class="span" align="center"><?php echo check_exist($SF_SQ_BBLS); ?></td>
    <td class="span" align="center"><?php echo check_exist($SF_SQ_METRICTON); ?></td>
    <td class="span" align="center"><?php echo check_exist($SF_SQ_LONGTON); ?></td>
  </tr>
  <tr>
    <?php 
      $SF_GSV_KLOBS = number_format((float)$item->result()[0]->SF_GSV_KLOBS, 3, '.', '');
      $SF_GSV_KL15 = number_format((float)$item->result()[0]->SF_GSV_KL15, 3, '.', '');
      $SF_GSV_BBLS = number_format((float)$item->result()[0]->SF_GSV_BBLS, 3, '.', '');
      $SF_GSV_METRICTON = number_format((float)$item->result()[0]->SF_GSV_METRICTON, 3, '.', '');
      $SF_GSV_LONGTON = number_format((float)$item->result()[0]->SF_GSV_LONGTON, 3, '.', '');
    ?>
    <td class="span">Gross Standard Volume</td>
    <td class="span">&nbsp;</td>
    <td align="center" class="span"><?php echo check_exist($SF_GSV_KLOBS); ?></td>
    <td align="center" class="span"><?php echo check_exist($SF_GSV_KL15); ?></td>
    <td align="center" class="span"><?php echo check_exist($SF_GSV_BBLS); ?></td>
    <td align="center" class="span"><?php echo check_exist($SF_GSV_METRICTON); ?></td>
    <td align="center" class="span"><?php echo check_exist($SF_GSV_LONGTON); ?> </td>
  </tr>
  <tr>
    <?php 
      $SF_NSV_KLOBS = number_format((float)$item->result()[0]->SF_NSV_KLOBS, 3, '.', '');
      $SF_NSV_KL15 = number_format((float)$item->result()[0]->SF_NSV_KL15, 3, '.', '');
      $SF_NSV_BBLS = number_format((float)$item->result()[0]->SF_NSV_BBLS, 3, '.', '');
      $SF_NSV_METRICTON = number_format((float)$item->result()[0]->SF_NSV_METRICTON, 3, '.', '');
      $SF_NSV_LONGTON = number_format((float)$item->result()[0]->SF_NSV_LONGTON, 3, '.', '');
    ?>
    <td class="span">Net Standard Volume</td>
    <td class="span">&nbsp;</td>
    <td align="center" class="span"><?php echo check_exist($SF_NSV_KLOBS); ?></td>
    <td align="center" class="span"><?php echo check_exist($SF_NSV_KL15); ?></td>
    <td align="center" class="span"><?php echo check_exist($SF_NSV_BBLS); ?></td>
    <td align="center" class="span"><?php echo check_exist($SF_NSV_METRICTON); ?></td>
    <td align="center" class="span"><?php echo check_exist($SF_NSV_LONGTON); ?> </td>
  </tr>
  <tr>
     <?php 
      $SF_SFAL_KLOBS = number_format((float)$item->result()[0]->SF_SFAL_KLOBS, 3, '.', '');
      $SF_SFAL_KL15 = number_format((float)$item->result()[0]->SF_SFAL_KL15, 3, '.', '');
      $SF_SFAL_BBLS = number_format((float)$item->result()[0]->SF_SFAL_BBLS, 3, '.', '');
      $SF_SFAL_METRICTON = number_format((float)$item->result()[0]->SF_SFAL_METRICTON, 3, '.', '');
      $SF_SFAL_LONGTON = number_format((float)$item->result()[0]->SF_SFAL_LONGTON, 3, '.', '');
    ?>
    <td class="span">Ship's Figure After Loading (SFAL)</td>
    <td class="span">&nbsp;</td>
    <td align="center" class="span"><?php echo check_exist($SF_SFAL_KLOBS); ?></td>
    <td align="center" class="span"><?php echo check_exist($SF_SFAL_KL15); ?></td>
    <td align="center" class="span"><?php echo check_exist($SF_SFAL_BBLS); ?></td>
    <td align="center" class="span"><?php echo check_exist($SF_SFAL_METRICTON); ?></td>
    <td align="center" class="span"><?php echo check_exist($SF_SFAL_LONGTON); ?> </td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span"><strong>Ship Figure</strong></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <?php 
      $SFBD_TOV_KLOBS = number_format((float)$item->result()[0]->SFBD_TOV_KLOBS, 3, '.', '');
      $SFBD_TOV_KL15 = number_format((float)$item->result()[0]->SFBD_TOV_KL15, 3, '.', '');
      $SFBD_TOV_BBLS = number_format((float)$item->result()[0]->SFBD_TOV_BBLS, 3, '.', '');
      $SFBD_TOV_METRICTON = number_format((float)$item->result()[0]->SFBD_TOV_METRICTON, 3, '.', '');
      $SFBD_TOV_LONGTON = number_format((float)$item->result()[0]->SFBD_TOV_LONGTON, 3, '.', '');
    ?>
    <td class="span">Ship Figure Before Discharge - TOV</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php echo check_exist($SFBD_TOV_KLOBS); ?></td>
    <td class="span" align="center"><?php echo check_exist($SFBD_TOV_KL15); ?></td>
    <td class="span" align="center"><?php echo check_exist($SFBD_TOV_BBLS); ?></td>
    <td class="span" align="center"><?php echo check_exist($SFBD_TOV_METRICTON); ?></td>
    <td class="span" align="center"><?php echo check_exist($SFBD_TOV_LONGTON); ?></td>
  </tr>
  <tr>
     <?php 
      $FREE_WATER_KLOBS = number_format((float)$item->result()[0]->FREE_WATER_KLOBS, 3, '.', '');
      $FREE_WATER_KL15 = number_format((float)$item->result()[0]->FREE_WATER_KL15, 3, '.', '');
      $FREE_WATER_BBLS = number_format((float)$item->result()[0]->FREE_WATER_BBLS, 3, '.', '');
      $FREE_WATER_METRICTON = number_format((float)$item->result()[0]->FREE_WATER_METRICTON, 3, '.', '');
      $FREE_WATER_LONGTON = number_format((float)$item->result()[0]->FREE_WATER_LONGTON, 3, '.', '');
    ?>
    <td class="span">Free Water</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php echo check_exist($FREE_WATER_KLOBS); ?></td>
    <td class="span" align="center"><?php echo check_exist($FREE_WATER_KL15); ?></td>
    <td class="span" align="center"><?php echo check_exist($FREE_WATER_BBLS); ?></td>
    <td class="span" align="center"><?php echo check_exist($FREE_WATER_METRICTON); ?></td>
    <td class="span" align="center"><?php echo check_exist($FREE_WATER_LONGTON); ?></td>
  </tr>
  <?php 
      $ROBQ_KLOBS = number_format((float)$item->result()[0]->ROBQ_KLOBS, 3, '.', '');
      $ROBQ_KL15 = number_format((float)$item->result()[0]->ROBQ_KL15, 3, '.', '');
      $ROBQ_BBLS = number_format((float)$item->result()[0]->ROBQ_BBLS, 3, '.', '');
      $ROBQ_METRICTON = number_format((float)$item->result()[0]->ROBQ_METRICTON, 3, '.', '');
      $ROBQ_LONGTON = number_format((float)$item->result()[0]->ROBQ_LONGTON, 3, '.', '');
    ?>
  <tr>
    <td class="span">Remaining On Board Quantity</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php echo check_exist($ROBQ_KLOBS); ?></td>
    <td class="span" align="center"><?php echo check_exist($ROBQ_KL15); ?></td>
    <td class="span" align="center"><?php echo check_exist($ROBQ_BBLS); ?></td>
    <td class="span" align="center"><?php echo check_exist($ROBQ_METRICTON); ?></td>
    <td class="span" align="center"><?php echo check_exist($ROBQ_LONGTON); ?>  </td>
  <tr>
  <tr>
    <?php 
      $SFBD_NSV_KLOBS = number_format((float)$item->result()[0]->SFBD_NSV_KLOBS, 3, '.', '');
      $SFBD_NSV_KL15 = number_format((float)$item->result()[0]->SFBD_NSV_KL15, 3, '.', '');
      $SFBD_NSV_BBLS = number_format((float)$item->result()[0]->SFBD_NSV_BBLS, 3, '.', '');
      $SFBD_NSV_METRICTON = number_format((float)$item->result()[0]->SFBD_NSV_METRICTON, 3, '.', '');
      $SFBD_NSV_LONGTON = number_format((float)$item->result()[0]->SFBD_NSV_LONGTON, 3, '.', '');
    ?>
    <td class="span">Ship Figure Before Discharge - NSV</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php echo check_exist($SFBD_NSV_KLOBS); ?></td>
    <td class="span" align="center"><?php echo check_exist($SFBD_NSV_KL15); ?></td>
    <td class="span" align="center"><?php echo check_exist($SFBD_NSV_BBLS); ?></td>
    <td class="span" align="center"><?php echo check_exist($SFBD_NSV_METRICTON); ?></td>
    <td class="span" align="center"><?php echo check_exist($SFBD_NSV_LONGTON); ?>  </td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span"><strong>Discrepancy</strong></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">Ship's Loaded vs Bill of Lading (R1)</td>
    <td class="span">&nbsp;</td>
    <?php 
      $SLVS_BOL_R1_KLOBS = number_format((float)$item->result()[0]->SLVS_BOL_R1_KLOBS, 3, '.', '');
      $SLVS_BOL_R1_KL15 = number_format((float)$item->result()[0]->SLVS_BOL_R1_KL15, 3, '.', '');
      $SLVS_BOL_R1_BBLS = number_format((float)$item->result()[0]->SLVS_BOL_R1_BBLS, 3, '.', '');
      $SLVS_BOL_R1_METRICTON = number_format((float)$item->result()[0]->SLVS_BOL_R1_METRICTON, 3, '.', '');
      $SLVS_BOL_R1_LONGTON = number_format((float)$item->result()[0]->SLVS_BOL_R1_LONGTON, 3, '.', '');
    ?>

    <td class="span" align="center"><?php echo check_exist($SLVS_BOL_R1_KLOBS); ?></td>
    <td class="span" align="center"><?php echo check_exist($SLVS_BOL_R1_KL15); ?></td>
    <td class="span" align="center"><?php echo check_exist($SLVS_BOL_R1_BBLS); ?></td>
    <td class="span" align="center"><?php echo check_exist($SLVS_BOL_R1_METRICTON); ?></td>
    <td class="span" align="center"><?php echo check_exist($SLVS_BOL_R1_LONGTON); ?>  </td>
  </tr>
  <tr>
    <td class="span">Ship's Fig. After Loading vs Ship's Fig. Before Discharge (R2)</td>
    <td class="span">&nbsp;</td>
     <?php 
      $SFAL_VS_SFBD_R2_KLOBS = number_format((float)$item->result()[0]->SFAL_VS_SFBD_R2_KLOBS, 3, '.', '');
      $SFAL_VS_SFBD_R2_KL15 = number_format((float)$item->result()[0]->SFAL_VS_SFBD_R2_KL15, 3, '.', '');
      $SFAL_VS_SFBD_R2_BBLS = number_format((float)$item->result()[0]->SFAL_VS_SFBD_R2_BBLS, 3, '.', '');
      $SFAL_VS_SFBD_R2_METRICTON = number_format((float)$item->result()[0]->SFAL_VS_SFBD_R2_METRICTON, 3, '.', '');
      $SFAL_VS_SFBD_R2_LONGTON = number_format((float)$item->result()[0]->SFAL_VS_SFBD_R2_LONGTON, 3, '.', '');
    ?>
    <td class="span" align="center"><?php echo check_exist($SFAL_VS_SFBD_R2_KLOBS); ?></td>
    <td class="span" align="center"><?php echo check_exist($SFAL_VS_SFBD_R2_KL15); ?></td>
    <td class="span" align="center"><?php echo check_exist($SFAL_VS_SFBD_R2_BBLS); ?></td>
    <td class="span" align="center"><?php echo check_exist($SFAL_VS_SFBD_R2_METRICTON); ?></td>
    <td class="span" align="center"><?php echo check_exist($SFAL_VS_SFBD_R2_LONGTON); ?>  </td>
  </tr>
  <tr>
    <td class="span">Ship's Fig. Before Discharge vs Shore Received (R3)</td>
    <td class="span">&nbsp;</td>
    <?php 
      $SFBD_VS_SR_R3_KLOBS = number_format((float)$item->result()[0]->SFBD_VS_SR_R3_KLOBS, 3, '.', '');
      $SFBD_VS_SR_R3_KL15 = number_format((float)$item->result()[0]->SFBD_VS_SR_R3_KL15, 3, '.', '');
      $SFBD_VS_SR_R3_BBLS = number_format((float)$item->result()[0]->SFBD_VS_SR_R3_BBLS, 3, '.', '');
      $SFBD_VS_SR_R3_METRICTON = number_format((float)$item->result()[0]->SFBD_VS_SR_R3_METRICTON, 3, '.', '');
      $SFBD_VS_SR_R3_LONGTON = number_format((float)$item->result()[0]->SFBD_VS_SR_R3_LONGTON, 3, '.', '');
    ?>
    <td class="span" align="center"><?php echo check_exist($SFBD_VS_SR_R3_KLOBS); ?></td>
    <td class="span" align="center"><?php echo check_exist($SFBD_VS_SR_R3_KL15); ?></td>
    <td class="span" align="center"><?php echo check_exist($SFBD_VS_SR_R3_BBLS); ?></td>
    <td class="span" align="center"><?php echo check_exist($SFBD_VS_SR_R3_METRICTON); ?></td>
    <td class="span" align="center"><?php echo check_exist($SFBD_VS_SR_R3_LONGTON); ?>  </td>
  </tr>
  <tr>
    <td class="span">Shore Received vs Bill of Lading (R4)</td>
   <td class="span">&nbsp;</td>
    <?php 
      $SR_VS_BOL_R4_KLOBS = number_format((float)$item->result()[0]->SR_VS_BOL_R4_KLOBS, 3, '.', '');
      $SR_VS_BOL_R4_KL15 = number_format((float)$item->result()[0]->SR_VS_BOL_R4_KL15, 3, '.', '');
      $SR_VS_BOL_R4_BBLS = number_format((float)$item->result()[0]->SR_VS_BOL_R4_BBLS, 3, '.', '');
      $SR_VS_BOL_R4_LONGTON = number_format((float)$item->result()[0]->SR_VS_BOL_R4_LONGTON, 3, '.', '');
      $SR_VS_BOL_R4_METRICTON = number_format((float)$item->result()[0]->SR_VS_BOL_R4_METRICTON, 3, '.', '');
    ?>
    <td class="span" align="center"><?php echo check_exist($SR_VS_BOL_R4_KLOBS); ?></td>
    <td class="span" align="center"><?php echo check_exist($SR_VS_BOL_R4_KL15); ?></td>
    <td class="span" align="center"><?php echo check_exist($SR_VS_BOL_R4_BBLS); ?></td>
    <td class="span" align="center"><?php echo check_exist($SR_VS_BOL_R4_METRICTON); ?></td>
    <td class="span" align="center"><?php echo check_exist($SR_VS_BOL_R4_LONGTON); ?>  </td>
  </tr>
  <tr>
    <td colspan="7" class="span">Sample Source  : <?php echo check_exist($item->result()[0]->SAMPLE_SOURCE); ?> </td>
  </tr> 
  <tr>
    <td colspan="7" class="span">Date of Analysis  : <?php echo check_exist_date($item->result()[0]->DATE_OF_ANALYSIS); ?> </td>
  </tr>
  <tr>
    <td class="span"><strong>Quality</strong></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7" class="span">Sample Source  : <?php echo check_exist($item->result()[0]->SAMPLE_SOURCE); ?> </td>
  </tr> 
  <tr>
    <td colspan="7" class="span">Date of Analysis  : <?php echo check_exist_date($item->result()[0]->DATE_OF_ANALYSIS); ?> </td>
  </tr>
  <tr>
    <td colspan="7" class="span">Certificate Of Quality  : 
		<?php 
			$arr_prod=json_decode(@$item->result()[0]->FSOQ);
			if (is_array($arr_prod) || is_object($arr_prod)){
			$lines="";
			foreach($arr_prod as $key => $value){
				$lines .=  '<a target="_blank" style="text-decoration:none" href="/uploads/form_entry/'.$value.'">'.$value.'</a>, ';
			}
				echo trim($lines, ", ");
			} else {
				echo '<a target="_blank" style="text-decoration:none" href="/uploads/form_entry/'.@$item->result()[0]->FSOQ.'">'.@$item->result()[0]->FSOQ.'</a>';
			}
			?>
	</td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span"><strong>C. REMARKS  NOTE</strong></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span"><strong>Non Nominated Tanks</strong></td>
    <td class="span"></td>
    <td class="span" colspan="2"></td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">Notice of Apparent Discrepancies issued?</td>
    <td class="span"></td>
    <td class="span" colspan="3"><?php echo ucwords(@$item->result()[0]->RN_NOTICE_ISSUE) ?>
	<?php
		if(@$item->result()[0]->RN_NOTICE_ISSUE_DESCRIPTION!='""'){
			echo ' - <a target="_blank" style="text-decoration:none" href="/uploads/form_entry/'.str_replace('"','',@$item->result()[0]->RN_NOTICE_ISSUE_DESCRIPTION).'">'. str_replace('"','',@$item->result()[0]->RN_NOTICE_ISSUE_DESCRIPTION).'</a>';
		}
	?>
	</td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">Letter of Protests isued? </td>
    <td class="span"></td>
    <td class="span" colspan="3"><?php echo ucwords(@$item->result()[0]->RN_LETTER_ISSUE) ?>
	<?php
		if(@$item->result()[0]->RN_LETTER_ISSUE_DESCRIPTION!='""'){
			echo ' - <a target="_blank" style="text-decoration:none" href="/uploads/form_entry/'.str_replace('"','',@$item->result()[0]->RN_LETTER_ISSUE_DESCRIPTION).'">'.str_replace('"','',@$item->result()[0]->RN_LETTER_ISSUE_DESCRIPTION).'</a>';
		}
	?>
	</td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">Statement of Facts issued?</td>
    <td class="span"></td>
    <td class="span" colspan="3">
	<?php echo ucwords(@$item->result()[0]->RN_STATEMENT_ISSUE) ?>
	<?php
		if(@$item->result()[0]->RN_STATEMENT_ISSUE_DESCRIPTION!='""'){
			echo ' - <a target="_blank" style="text-decoration:none" href="/uploads/form_entry/'.str_replace('"','',@$item->result()[0]->RN_STATEMENT_ISSUE_DESCRIPTION).'">'.str_replace('"','',@$item->result()[0]->RN_STATEMENT_ISSUE_DESCRIPTION).'</a>';
		}
	?>
	</td>
    <td class="span" colspan="2">
	</td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span"><strong>Bunker onboard</strong></td>
    <td class="span"></td>
    <td class="span" colspan="2"></td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
   <tr>
    <td class="span">On Arrival</td>
    <td class="span">:</td>
    <td class="span" colspan="2">MFO/metric ton &nbsp; <?php echo check_exist($item->result()[0]->BO_MFO_ON_ARRIVAL); ?></td>
    <td class="span" colspan="2">MDO/metric ton &nbsp; <?php echo check_exist($item->result()[0]->BO_MDO_ON_ARRIVAL); ?></td>
    <td class="span">&nbsp;</td>
  </tr> 
  <tr>
    <td class="span">On Departure</td>
    <td class="span">:</td>
    <td class="span" colspan="2">MFO/metric ton &nbsp; <?php echo check_exist($item->result()[0]->BO_MFO_ON_DEPARTURE); ?></td>
    <td class="span" colspan="2">MDO/metric ton &nbsp; <?php echo check_exist($item->result()[0]->BO_MDO_ON_DEPARTURE); ?></td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span"><strong>Ships & Sea Condition</strong></td>
    <td class="span"></td>
    <td class="span" colspan="2"></td>
    <td class="span" colspan="2"></td>
    <td class="span"></td>
  </tr>
  <tr>
    <td class="span">On Arrival</td>
    <td class="span">:</td>
    <td class="span" colspan="2">DRAFT/meter FWD &nbsp; <?php echo check_exist($item->result()[0]->SC_ON_ARRIVAL_DRAFT_FWD); ?></td>
    <td class="span" colspan="2">DRAFT/meter AFT &nbsp; <?php echo check_exist($item->result()[0]->SC_ON_ARRIVAL_DRAFT_AFT); ?></td>
    <td class="span">LIST &nbsp; <?php echo check_exist($item->result()[0]->SC_ON_ARRIVAL_DRAFT_LIST); ?></td>
  </tr> 
  <tr>
      <td class="span">On Departure</td>
      <td class="span">:</td>
      <td class="span" colspan="2">DRAFT/meter FWD &nbsp; <?php echo check_exist($item->result()[0]->SC_ON_DEPARTURE_DRAFT_FWD); ?></td>
      <td class="span" colspan="2">DRAFT/meter AFT &nbsp; <?php echo check_exist($item->result()[0]->SC_ON_DEPARTURE_DRAFT_AFT); ?></td>
      <td class="span">LIST &nbsp; <?php echo check_exist($item->result()[0]->SC_ON_DEPARTURE_DRAFT_LIST); ?></td>
  </tr>
    <tr>
      <td class="span" colspan="1">Ships & Sea Condition</td>
      <td class="span" colspan="1">:</td>
      <td class="span" colspan="5"><?php echo check_exist($item->result()[0]->SC); ?></td>
    </tr>
    <tr style="height:100px"> 
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  
  
  
</table>
 </td></tr>
    </table></td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
</table>

				
					
				</div>
		</div>
	</div>
</div>
</div>