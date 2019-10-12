
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
          <h4 class="panel-title"><?php e($site_name); ?> - Data Report </h4>
        </div>
        <div class="panel-body" style="background-color:#D1DFED;overflow-x: hidden; alignment-baseline:middle;">
        <table align="center" border="0">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr >
    <td>&nbsp;</td>
    <td align="center">
    <table border="1" cellspacing="20" cellpadding="10" style="background-color: white;">
    <tr><td style="padding-left:20px;">
    <table width="700" border="0">
  <tr>
    <td width="307"><img src="<?php echo base_url(); ?>/assets/admin/images/logo_suco_report.png" width="150px"/></td>
    <td class="span" colspan="6"><strong>PT. SUPERINTENDING COMPANY OF INDONESIA<br>SBU Hulu Migas Dan Produk Migas<br>
    BUNKER VESSEL SUMMARY</strong></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
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
    <td class="span">File Order</td>
    <td class="span">:</td>
    <td class="span" colspan="5">
    <?php echo check_exist($item->result()[0]->FILE_ORDER) ?></td>
  </tr>
  <tr>
    <td class="span">IWO</td>
    <td class="span">:</td>
    <td class="span" colspan="5">
    <?php echo check_exist($item->result()[0]->IWO) ?></td>
  </tr>
   <tr>
    <td class="span">Vessel</td>
    <td class="span">:</td>
    <td class="span" colspan="5"><?php echo @$item->result()[0]->VESSEL; ?></td>
  </tr>
  <tr>
    <td class="span">Product Type</td>
    <td class="span">:</td>
    <td class="span" colspan="5"><?php echo @$item->result()[0]->PRODUCT_TYPE; ?></td>
  </tr>
  <tr>
    <td class="span">Location</td>
    <td class="span">:</td>
    <td class="span" colspan="5"><?php echo @$item->result()[0]->AREA; ?></td>
  </tr>
  <tr>
    <td class="span" valign="top">Product      </td>
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
  ?>
    
  </td>
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
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td class="span"><strong>A. TIME  LOG</strong></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td class="span"><strong>Description</strong></td>
    <td>&nbsp;</td>
    <td class="span"><strong>Date</strong></td>
    <td></td>
    <td class="span"><strong>Time</strong></td>
    <td class="span" colspan="2"><strong>Remarks/Delays/Etc</strong></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
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
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="7">&nbsp;</td>
  </tr>
  <tr>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center">K/L Obsv.</td>
    <td class="span" align="center">K/L @15 oC</td>
    <td class="span" align="center">Metric Ton</td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <?php 
      $INITIAL_READOUT_KLOBS = number_format((float)$item->result()[0]->INITIAL_READOUT_KLOBS, 3, '.', '');
      $INITIAL_READOUT_KL15 = number_format((float)$item->result()[0]->INITIAL_READOUT_KL15, 3, '.', '');
      $INITIAL_READOUT_METRIC_TONS = number_format((float)$item->result()[0]->INITIAL_READOUT_METRIC_TONS, 3, '.', '');
    ?>  
    <td class="span">Initial Readout</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php echo check_exist($INITIAL_READOUT_KLOBS); ?></td>
    <td class="span" align="center"><?php echo check_exist($INITIAL_READOUT_KL15); ?> </td>
    <td class="span" align="center"><?php echo check_exist($INITIAL_READOUT_METRIC_TONS); ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
   <?php 
      $FINAL_READOUT_KLOBS = number_format((float)$item->result()[0]->FINAL_READOUT_KLOBS, 3, '.', '');
      $FINAL_READOUT_KL15 = number_format((float)$item->result()[0]->FINAL_READOUT_KL15, 3, '.', '');
      $FINAL_READOUT_METRIC_TONS = number_format((float)$item->result()[0]->FINAL_READOUT_METRIC_TONS, 3, '.', '');
    ?>  
    <tr>
    <td class="span">Final Readout</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php echo check_exist($FINAL_READOUT_KLOBS); ?></td>
    <td class="span" align="center"><?php echo check_exist($FINAL_READOUT_KL15); ?> </td>
    <td class="span" align="center"><?php echo check_exist($FINAL_READOUT_METRIC_TONS); ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
    <?php 
      $DIFFERENCE_KLOBS = number_format((float)$item->result()[0]->DIFFERENCE_KLOBS, 3, '.', '');
      $DIFFERENCE_KL15 = number_format((float)$item->result()[0]->DIFFERENCE_KL15, 3, '.', '');
      $DIFFERENCE_METRIC_TONS = number_format((float)$item->result()[0]->DIFFERENCE_METRIC_TONS, 3, '.', '');
    ?>  
    <td class="span">Difference</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php echo check_exist($DIFFERENCE_KLOBS); ?></td>
    <td class="span" align="center"><?php echo check_exist($DIFFERENCE_KL15); ?> </td>
    <td class="span" align="center"><?php echo check_exist($DIFFERENCE_METRIC_TONS); ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>
  <tr>
      <?php 
      $METER_FACTOR_KLOBS = number_format((float)$item->result()[0]->METER_FACTOR_KLOBS, 3, '.', '');
    ?>  
    <td class="span">Meter Factor</td>
    <td class="span">&nbsp;</td>
    <td align="center" class="span"><?php echo check_exist($METER_FACTOR_KLOBS); ?></td>
    <td colspan="4" class="span"></td>
  </tr> 
  <tr>
    <td colspan="7" class="span" style="height:20px"></td>
  </tr>

   <tr>
    <?php 
      $CORD_VOL_DELIVERED_KLOBS = number_format((float)$item->result()[0]->CORD_VOL_DELIVERED_KLOBS, 3, '.', '');
      $CORD_VOL_DELIVERED_KL15 = number_format((float)$item->result()[0]->CORD_VOL_DELIVERED_KL15, 3, '.', '');
      $CORD_VOL_DELIVERED_METRIC_TONS = number_format((float)$item->result()[0]->CORD_VOL_DELIVERED_METRIC_TONS, 3, '.', '');
    ?>  
    <td class="span">Cord Vol Deliverd</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php echo check_exist($CORD_VOL_DELIVERED_KLOBS); ?></td>
    <td class="span" align="center"><?php echo check_exist($CORD_VOL_DELIVERED_KL15); ?> </td>
    <td class="span" align="center"><?php echo check_exist($CORD_VOL_DELIVERED_METRIC_TONS); ?></td>
    <td class="span">&nbsp;</td>
    <td class="span">&nbsp;</td>
  </tr>

  <tr>
      <?php 
      $DENSITY15DEG_KLOBS = number_format((float)$item->result()[0]->DENSITY15DEG_KLOBS, 3, '.', '');
    ?>  
    <td class="span">Density 15</td>
    <td class="span">&nbsp;</td>
    <td align="center" class="span"><?php echo check_exist($DENSITY15DEG_KLOBS); ?></td>
    <td colspan="4" class="span"></td>
  </tr> 

<tr>
    <?php 
      $SUPPLY_LOSS_KLOBS = number_format((float)$item->result()[0]->SUPPLY_LOSS_KLOBS, 3, '.', '');
      $SUPPLY_LOSS_KL15 = number_format((float)$item->result()[0]->SUPPLY_LOSS_KL15, 3, '.', '');
      $SUPPLY_LOSS_METRIC_TONS = number_format((float)$item->result()[0]->SUPPLY_LOSS_METRIC_TONS, 3, '.', '');
    ?>  
    <td class="span">Supply Loss</td>
    <td class="span">&nbsp;</td>
    <td class="span" align="center"><?php echo check_exist($SUPPLY_LOSS_KLOBS); ?></td>
    <td class="span" align="center"><?php echo check_exist($SUPPLY_LOSS_KL15); ?> </td>
    <td class="span" align="center"><?php echo check_exist($SUPPLY_LOSS_METRIC_TONS); ?></td>
    <td class="span" align="center"></td>
    <td class="span" align="center"></td>
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
    <td colspan="7" class="span" style="height:20px"></td>
  </tr>


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