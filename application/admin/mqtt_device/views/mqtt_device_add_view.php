<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">MQTT Device Management <small>Function to create device data</small></h1>
	<!-- end page-header -->

	<!-- begin row -->
	<div class="row">
	    <!-- begin col-12 -->
	    <div class="col-xs-12">
	        <!-- begin panel -->
			<?php echo $error_message; ?>
            <div class="panel panel-inverse">
                <div class="panel-heading">
                    <div class="panel-heading-btn">
                    	<a href="<?php echo base_url(); ?>index.php/mqtt_device/add" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-plus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">MQTT Device Management - Table</h4>
                </div>
                <div class="panel-body" style="overflow-x: hidden;">
                	<br />
                	<?php echo form_open_multipart('mqtt_device/save',array('id' => 'form_add')); ?>
					<table class="table table-striped  table-bordered">
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('MQTT Device Name*') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'name' => 'mqtt_device_name','class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('MQTT Device Topic*') ?></td>
							<td>
								<div class="row">
									<div class="col-md-12">
										<?php echo form_input(array('type' => 'text', 'name' => 'mqtt_device_topic','class' => 'form-control',  'required' => 'required')); ?>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('MQTT Device Description') ?></td>
							<td><?php echo form_textarea(array('type' => 'text', 'name' => 'mqtt_device_desc','class' => 'form-control')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('MQTT Device Type') ?></td>
							<td>
								<?php 
									$options = array();
									if ($all_device_type->num_rows() > 0) {
										foreach($all_device_type->result() as $item) {
											$options[$item->MQTT_DEVICE_TYPE_ID] = $item->MQTT_DEVICE_TYPE_NAME;
										}
									}
									$add_tags = array (
										'class' => 'form-control',
										'style' => 'width:200px'
									);
									echo form_dropdown('mqtt_device_type', $options, 'esp',$add_tags);
								?>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Subscribe?') ?></td>
							<td>
								<?php 
									$options = array(
									        'Y' => 'Yes',
									        'N' => 'No',
									);
									$add_tags = array (
										'class' => 'form-control',
										'style' => 'width:100px'
									);
									echo form_dropdown('mqtt_device_subscribe', $options, 'N',$add_tags);
								?>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Publish?') ?></td>
							<td>
								<?php 
									$options = array(
									        'Y' => 'Yes',
									        'N' => 'No',
									);
									$add_tags = array (
										'class' => 'form-control',
										'style' => 'width:100px'
									);
									echo form_dropdown('mqtt_device_publish', $options, 'N',$add_tags);
								?>
							</td>
						</tr>
						<tr style="display: none;">
							<td colspan="2"><?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td colspan="2">
							<?php echo anchor('/mqtt_device','Back', array('title' => 'Back to MQTT Device list', 'class' => 'btn btn-sm btn-primary')); ?>
							<?php echo form_submit('form_user_submit', 'Submit Form', 'class="btn btn-sm btn-primary"');?>
							</td>
						</tr>
					</table>
					<?php echo form_close(); ?>
                </div>
            </div>
        </div>
    </div>
</div>