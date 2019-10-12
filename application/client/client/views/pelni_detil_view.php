<!-- begin #content -->
<div id="content" class="content">
   <!-- begin breadcrumb -->
   <ol class="breadcrumb pull-right">
      <li><a href="javascript:;">Home</a></li>
      <li class="active">General Form</li>
   </ol>
   <!-- end breadcrumb -->
   <!-- begin page-header -->
   <h1 class="page-header">General Form <small>Wizard for general info, time sheet, quality, quantity & remarks.</small></h1>
   <!-- end page-header -->
   <!-- begin front message -->
   <?php echo (isset($front_message) ? $front_message : ""); ?>
   <!-- end front message -->
   <!-- begin row -->
   <div class="row">
      <!-- begin col-12 -->
      <div class="col-md-12">
         <!-- begin panel -->
         <div class="panel panel-inverse">
            <div class="panel-heading">
               <div class="panel-heading-btn">
                  <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                  <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                  <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                  <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
               </div>
               <h4 class="panel-title">Form Wizards</h4>
            </div>
            <div class="panel-body">
              
			         <div>
					 <?php foreach($get_item->result() as $row) { ?>
                        <fieldset>
                           <legend class="pull-left width-full">General Info</legend> 
						   <?php // echo form_open_multipart('client/method/pelni_update',array('id' => 'form_add')); ?>

                           <!-- begin row -->
						<table class="table table-striped  table-bordered">
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Vessel / Receiver*') ?></td>
							<td><?php $vessel = $row->VESSEL_NAME; echo $vessel; ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Barge / Transporter*') ?></td>
							<td><?php $barge = $row->BARGE_NAME; echo $barge; ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Port*') ?></td>
							<td><?php $port = $row->PORT_NAME; echo $port; ?></td>
						</tr>						
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Date of loading to Barge') ?></td>
							<td>
								<?php 
								$dtbarge=date("m/d/Y", strtotime($row->date_loading_barge));
								echo form_input(array('type' => 'text', 'name' => 'date_loading_barge','class' => 'form-control datebox', 'style' => 'width:100%; height:33px;color:#000 !important;', 'value' => $dtbarge, 'readonly'=>'true')); ?>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Date of loading to Pelni') ?></td>
							<td>								
								<?php 
								$dtpel=date("m/d/Y", strtotime($row->date_loading_pelni));
								echo form_input(array('type' => 'text', 'name' => 'date_loading_pelni','class' => 'form-control datebox', 'style' => 'width:100%; height:33px;color:#000 !important;', 'value' => $dtpel, 'readonly'=>'true')); ?>
							</td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Date Expired of flowmeter Terminal') ?></td>
						<td>							
							<?php
							$dterm=date("m/d/Y", strtotime($row->def_terminal));
							echo form_input(array('type' => 'text', 'name' => 'def_terminal','class' => 'form-control datebox', 'style' => 'width:100%; height:33px;color:#000 !important;', 'value' => $dterm, 'readonly'=>'true')); ?>
						</td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Date Expired of flowmeter Barge') ?></td>
						<td>							
							<?php 
							$dbarge=date("m/d/Y", strtotime($row->def_barge));
							echo form_input(array('type' => 'text', 'name' => 'def_barge','class' => 'form-control datebox', 'style' => 'width:100%; height:33px;color:#000 !important;', 'value' => $dbarge, 'readonly'=>'true')); ?>
						</td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Date Expired of flowmeter Ship') ?></td>
						<td>							
							<?php
							$dship=date("m/d/Y", strtotime($row->def_ship));
							echo form_input(array('type' => 'text', 'name' => 'def_ship','class' => 'form-control datebox', 'style' => 'width:100%; height:33px;color:#000 !important;', 'value' => $dship, 'readonly'=>'true')); ?>
						</td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Delivery Order KL') ?></td>
						<td><?php $deliv_order_kl=$row->deliv_order_kl;						
						echo form_input(array('type' => 'text', 'name' => 'deliv_order_kl','class' => 'form-control','required' => 'required', 'value' => $deliv_order_kl, 'readonly'=>'true')); ?></td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Delivery Order KL 15<sup>o</sup>C') ?></td>
						<td><?php $deliv_order_kl15=$row->deliv_order_kl15;
						 echo form_input(array('type' => 'text', 'name' => 'deliv_order_kl15','class' => 'form-control','required' => 'required', 'value' => $deliv_order_kl15, 'readonly'=>'true')); ?></td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Barge Fix After Loading KL') ?></td>
						<td><?php $bar_fig_afterload_kl=$row->bar_fig_afterload_kl;
						echo form_input(array('type' => 'text', 'name' => 'bar_fig_afterload_kl','class' => 'form-control','required' => 'required', 'value' => $bar_fig_afterload_kl, 'readonly'=>'true')); ?></td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Barge Fix After Loading KL 15<sup>o</sup>C') ?></td>
						<td><?php $bar_fig_afterload_kl15=$row->bar_fig_afterload_kl15;
						echo form_input(array('type' => 'text', 'name' => 'bar_fig_afterload_kl15','class' => 'form-control','required' => 'required', 'value' => $bar_fig_afterload_kl15, 'readonly'=>'true')); ?></td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Barge Fig. Before Discharge KL') ?></td>
						<td><?php $bar_fig_bfdc_kl=$row->bar_fig_bfdc_kl;
						echo form_input(array('type' => 'text', 'name' => 'bar_fig_bfdc_kl','class' => 'form-control','required' => 'required', 'value' => $bar_fig_bfdc_kl, 'readonly'=>'true')); ?></td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Barge Fig. Before Discharge KL 15 <sup>o</sup>C') ?></td>
						<td><?php $bar_fig_bfdc_kl15=$row->bar_fig_bfdc_kl15;
						echo form_input(array('type' => 'text', 'name' => 'bar_fig_bfdc_kl15','class' => 'form-control','required' => 'required', 'value' => $bar_fig_bfdc_kl15, 'readonly'=>'true')); ?></td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Barge Fig. After Discharge KL') ?></td>
						<td><?php $bar_fig_afdc_kl=$row->bar_fig_afdc_kl;
						echo form_input(array('type' => 'text', 'name' => 'bar_fig_afdc_kl','class' => 'form-control','required' => 'required', 'value' => $bar_fig_afdc_kl, 'readonly'=>'true')); ?></td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Barge Fig. After Discharge KL 15 <sup>o</sup>C') ?></td>
						<td><?php $bar_fig_afdc_kl15=$row->bar_fig_afdc_kl15;
						echo form_input(array('type' => 'text', 'name' => 'bar_fig_afdc_kl15','class' => 'form-control','required' => 'required', 'value' => $bar_fig_afdc_kl15, 'readonly'=>'true')); ?></td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Ship Received (PELNI) KL') ?></td>
						<td><?php $ship_rec_kl=$row->ship_rec_kl;
						echo form_input(array('type' => 'text', 'name' => 'ship_rec_kl','class' => 'form-control','required' => 'required', 'value' => $ship_rec_kl, 'readonly'=>'true', 'readonly'=>'true')); ?></td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Ship Received (PELNI) KL 15 <sup>o</sup>C') ?></td>
						<td><?php $ship_rec_kl15=$row->ship_rec_kl15;
						echo form_input(array('type' => 'text', 'name' => 'ship_rec_kl15','class' => 'form-control','required' => 'required', 'value' => $ship_rec_kl15, 'readonly'=>'true')); ?></td>
						</tr>	
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Remarks*') ?></td>
							<td><?php 
							$remark=$row->remarks;
							$upload_file=$row->upload_file; 
							echo form_label($remark); ?></td>
						</tr>
						 
						<tr>
							<td colspan="2"> <img src="<?php echo base_url().'upload/profile/'.$upload_file ?>" /></td>
						</tr>
						
						<?php } ?>
					</table>

                              <!-- end col-4 -->
                              <div class="clearfix space-height-10"></div>
                   
                           <!-- end row -->
                        </fieldset>
                     </div>
                     <!-- end wizard step-1 -->
                 
					 <?php // echo form_close(); ?>
          <table style="width:100%;min-height:400px">
                        
                            <tr>
                                <th width="20">Diff KL</th>
                                <th width="20">Load. R1 %</th>
                                <th width="20">Diff KL</th>
                                <th width="20">Transit. R2 %</th>
                                <th width="20">Diff KL</th>
                                <th width="20">Disch. R3 %</th>
								<th width="20">Diff KL</th>
                                <th width="20">Outt. R4 %</th>								
							</tr>
                       
						    <tr>
							<?php// foreach($get_item_formula) { ?>
                                <td width="20"><?php echo round($get_item_formula['diff_kl_r1'] , 3); ?></td>
								<td width="20"><?php echo round($get_item_formula['r1'], 2); ?></td>
								<td width="20"><?php echo round($get_item_formula['diff_kl_r2'], 2); ?></td>
								<td width="20"><?php echo round($get_item_formula['r2'], 2); ?></td>
								<td width="20"><?php echo round($get_item_formula['diff_kl_r3'], 2); ?></td>
								<td width="20"><?php echo round($get_item_formula['r3'], 2); ?></td>
								<td width="20"><?php echo round($get_item_formula['diff_kl_r4'], 2); ?></td>
								<td width="20"><?php echo round($get_item_formula['r4'], 2); ?></td>
                               
							<?php// } ?>								
                            </tr>
						
                    </table>
            
            </div>
         </div>
         <!-- end panel -->
      </div>
      <!-- end col-12 -->
   </div>
   <!-- end row -->  
</div>
<!-- end #content -->