<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Setting Management <small>Function to create setting</small></h1>
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
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Setting Management - Table</h4>
                </div>
                <div class="panel-body" style="overflow-x: hidden;">
                	<br />
                	<?php echo form_open_multipart('setting/save',array('id' => 'form_add')); ?>
					<table class="table table-striped  table-bordered">

						<?php 
						if($setting_list->num_rows() > 0) : 
							foreach($setting_list->result() as $row_setting) : 
								$filter_field = str_replace("_", " ", $row_setting->SETTING_NAME);
								$filter_field = ucwords(strtolower($filter_field));
								?>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label($filter_field.'*') ?></td>
							<td>
								<?php echo form_hidden('setting_id[]', $row_setting->SETTING_ID); ?>
								<?php echo form_input(array('type' => 'text', 'name' => 'setting_value[]','value' => $row_setting->SETTING_VALUE,'class' => 'form-control')); ?>
								
								<?php if(preg_match('/^(https?:\/\/)/',$row_setting->SETTING_VALUE)) {
									echo '<a onclick="showModalFileManager()" style="margin-top:3px;" class="btn btn-xs btn-primary" href="javascript:;">
									   <i class="fa fa-copy"></i> Change URL from File Manager
									</a>';
								} ?>
								</td>
						</tr>
					    <?php endforeach; 
					    endif; ?>


						<tr style="display: none;">
							<td colspan="2"><?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td colspan="2">
							<?php echo form_submit('form_user_submit', 'Submit Form', 'class="btn btn-sm btn-primary"');?>
							</td>
						</tr>
					</table>
					<!-- Modal -->
					<div id="filemanager-modal" class="modal fade" role="dialog">
					  <div class="modal-dialog">

					    <!-- Modal content-->
					    <div class="modal-content">
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal">&times;</button>
					        <h4 class="modal-title">File Manager</h4>
					      </div>
					      <div class="modal-body">
					       		<iframe src="" style="zoom:0.60" width="99.6%" height="250" frameborder="0"></iframe>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					      </div>
					    </div>

					  </div>
					</div>
					<?php echo form_close(); ?>
                </div>
            </div>
        </div>
    </div>
</div>