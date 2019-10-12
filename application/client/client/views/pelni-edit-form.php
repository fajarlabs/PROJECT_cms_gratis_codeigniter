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
              
			   <?php echo form_open_multipart('client/method/pelni_update',array('id' => 'form_add')); ?>
                  <div id="wizard">
                     <ol style="padding-left: 0px;">
                        <li>
                           General Info
                           <small></small>
                        </li>
                        <li>
                           Document Upload
                           <small></small>
                        </li>
                     </ol>
                     <!-- begin wizard step-1 -->
                     <div>
					 <?php foreach($get_item->result() as $row) { ?>
                        <fieldset>
                           <legend class="pull-left width-full">General Info</legend> 
						  

                           <!-- begin row -->
						<table class="table table-striped  table-bordered">
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Vessel / Receiver*') ?></td>
							<td><?php 
							$setvessel=$row->vessel;
							echo form_dropdown('vessel', $list_vessel, $setvessel, 'class="form-control"'); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Barge / Transporter*') ?></td>
							<td><?php 
							$setbarge=$row->barge;
							echo form_dropdown('barge', array('1'=> 'Standard', '2' => 'Pipe'), $setbarge, 'class="form-control"'); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Port*') ?></td>
							<td><?php
							$setport=$row->port;
							echo form_dropdown('port', $list_port, $setport, 'class="form-control"'); ?></td>
						</tr>						
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Date of loading to Barge') ?></td>
							<td>
								<?php 
								$dtbarge=date("m/d/Y", strtotime($row->date_loading_barge));
								echo form_input(array('type' => 'text', 'name' => 'date_loading_barge','class' => 'form-control datebox', 'style' => 'width:100%; height:33px;color:#000 !important;', 'value' => $dtbarge)); ?>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Date of loading to Pelni') ?></td>
							<td>								
								<?php 
								$dtpel=date("m/d/Y", strtotime($row->date_loading_pelni));
								echo form_input(array('type' => 'text', 'name' => 'date_loading_pelni','class' => 'form-control datebox', 'style' => 'width:100%; height:33px;color:#000 !important;', 'value' => $dtpel)); ?>
							</td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Date Expired of flowmeter Terminal') ?></td>
						<td>							
							<?php
							$dterm=date("m/d/Y", strtotime($row->def_terminal));
							echo form_input(array('type' => 'text', 'name' => 'def_terminal','class' => 'form-control datebox', 'style' => 'width:100%; height:33px;color:#000 !important;', 'value' => $dterm)); ?>
						</td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Date Expired of flowmeter Barge') ?></td>
						<td>							
							<?php 
							$dbarge=date("m/d/Y", strtotime($row->def_barge));
							echo form_input(array('type' => 'text', 'name' => 'def_barge','class' => 'form-control datebox', 'style' => 'width:100%; height:33px;color:#000 !important;', 'value' => $dbarge)); ?>
						</td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Date Expired of flowmeter Ship') ?></td>
						<td>							
							<?php
							$dship=date("m/d/Y", strtotime($row->def_ship));
							echo form_input(array('type' => 'text', 'name' => 'def_ship','class' => 'form-control datebox', 'style' => 'width:100%; height:33px;color:#000 !important;', 'value' => $dship)); ?>
						</td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Delivery Order KL') ?></td>
						<td><?php $deliv_order_kl=$row->deliv_order_kl;						
						echo form_input(array('type' => 'text', 'name' => 'deliv_order_kl','class' => 'form-control','required' => 'required', 'value' => $deliv_order_kl)); ?></td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Delivery Order KL 15<sup>o</sup>C') ?></td>
						<td><?php $deliv_order_kl15=$row->deliv_order_kl15;
						 echo form_input(array('type' => 'text', 'name' => 'deliv_order_kl15','class' => 'form-control','required' => 'required', 'value' => $deliv_order_kl15)); ?></td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('OBQ on Barge KL') ?></td>
						<td><?php 
						$obq_kl=$row->obq_kl;
						echo form_input(array('type' => 'text', 'name' => 'obq_kl','class' => 'form-control','required' => 'required', 'value' => $obq_kl)); ?></td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('OBQ on Barge KL 15<sup>o</sup>C') ?></td>
						<td><?php $obq_kl15=$row->obq_kl15;
						echo form_input(array('type' => 'text', 'name' => 'obq_kl15','class' => 'form-control','required' => 'required', 'value' => $obq_kl15)); ?></td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Barge Fix After Loading KL') ?></td>
						<td><?php $bar_fig_afterload_kl=$row->bar_fig_afterload_kl;
						echo form_input(array('type' => 'text', 'name' => 'bar_fig_afterload_kl','class' => 'form-control','required' => 'required', 'value' => $bar_fig_afterload_kl)); ?></td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Barge Fix After Loading KL 15<sup>o</sup>C') ?></td>
						<td><?php $bar_fig_afterload_kl15=$row->bar_fig_afterload_kl15;
						echo form_input(array('type' => 'text', 'name' => 'bar_fig_afterload_kl15','class' => 'form-control','required' => 'required', 'value' => $bar_fig_afterload_kl15)); ?></td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Barge Fig. Before Discharge KL') ?></td>
						<td><?php $bar_fig_bfdc_kl=$row->bar_fig_bfdc_kl;
						echo form_input(array('type' => 'text', 'name' => 'bar_fig_bfdc_kl','class' => 'form-control','required' => 'required', 'value' => $bar_fig_bfdc_kl)); ?></td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Barge Fig. Before Discharge KL 15 <sup>o</sup>C') ?></td>
						<td><?php $bar_fig_bfdc_kl15=$row->bar_fig_bfdc_kl15;
						echo form_input(array('type' => 'text', 'name' => 'bar_fig_bfdc_kl15','class' => 'form-control','required' => 'required', 'value' => $bar_fig_bfdc_kl15)); ?></td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Barge Fig. After Discharge KL') ?></td>
						<td><?php $bar_fig_afdc_kl=$row->bar_fig_afdc_kl;
						echo form_input(array('type' => 'text', 'name' => 'bar_fig_afdc_kl','class' => 'form-control','required' => 'required', 'value' => $bar_fig_afdc_kl)); ?></td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Barge Fig. After Discharge KL 15 <sup>o</sup>C') ?></td>
						<td><?php $bar_fig_afdc_kl15=$row->bar_fig_afdc_kl15;
						echo form_input(array('type' => 'text', 'name' => 'bar_fig_afdc_kl15','class' => 'form-control','required' => 'required', 'value' => $bar_fig_afdc_kl15)); ?></td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Ship Received (PELNI) KL') ?></td>
						<td><?php $ship_rec_kl=$row->ship_rec_kl;
						echo form_input(array('type' => 'text', 'name' => 'ship_rec_kl','class' => 'form-control','required' => 'required', 'value' => $ship_rec_kl)); ?></td>
						</tr>
						<tr>
						<td width="150px" style="padding-top:15px;"><?php echo form_label('Ship Received (PELNI) KL 15 <sup>o</sup>C') ?></td>
						<td><?php $ship_rec_kl15=$row->ship_rec_kl15;
						echo form_input(array('type' => 'text', 'name' => 'ship_rec_kl15','class' => 'form-control','required' => 'required', 'value' => $ship_rec_kl15)); ?></td>
						</tr>	
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Remarks*') ?></td>
							<td><?php 
							$remark=$row->remarks;
							echo form_textarea(array('id'=>'mytextarea','type' => 'text', 'name' => 'remarks','class' => 'form-control' , 'value' => $remark)); ?></td>
						</tr>
						
						<tr style="display: none;">
							<td colspan="2"><?php $id_info=$row->id_info;
							echo form_hidden('id_info', $id_info); ?></td>
						</tr>
						<tr>
							<td colspan="2">
							<?php // echo anchor('/user','Back', array('title' => 'Back to user list', 'class' => 'btn btn-sm btn-primary')); ?>
							<?php //echo form_submit('form_user_submit', 'Submit Form', 'class="btn btn-sm btn-primary"');?>
							</td>
						</tr>
					</table>


                              <!-- end col-4 -->
                              <div class="clearfix space-height-10"></div>

                   
                           <!-- end row -->
                        </fieldset>
					 <?php } ?>
                     </div>
                     <!-- end wizard step-1 -->
                     <!-- begin wizard step-4 -->
                     <div>
                        <fieldset>
                           <legend class="pull-left width-full">Upload</legend>
                           <!-- begin row -->
                           <div class="row">
                              <div class="col-xs-12">
                                 <table id="tbl_upload_list" class="table">
                                    <tr>
                                       <th>File Name</th>
                                       
                                    </tr>
                                    <tr>
                                      
                                       <td>
                                        <?php echo form_upload(array('type' => 'file', 'name' => 'upload_file','class' => 'file')); ?>
                                       </td>
                                      
                                    </tr>
									<tr>
										<td><?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?></td>
									</tr>
									<tr>
							<td colspan="2">
							<?php echo anchor('/client/page/list-pelni-data','Back', array('title' => 'Back to user list', 'class' => 'btn btn-sm btn-primary')); ?>
							<?php echo form_submit('form_user_submit', 'Submit Form', 'class="btn btn-sm btn-primary"');?>
							</td>
						</tr>
                                 </table>
                              </div>
                           </div>
                        </fieldset>
                       
                     </div>
					
                     <!-- end wizard step-4 -->
                  </div>
             <?php echo form_close(); ?>
            </div>
         </div>
         <!-- end panel -->
      </div>
      <!-- end col-12 -->
   </div>
   <!-- end row -->  
  
</div>
<!-- end #content -->