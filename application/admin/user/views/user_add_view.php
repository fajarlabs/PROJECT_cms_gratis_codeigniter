<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">User Management <small>Form to create user</small></h1>
	<!-- end page-header -->

    <!-- begin front message -->
    <?php echo (isset($front_message) ? $front_message : ""); ?>
    <!-- end front message -->

	<!-- begin row -->
	<div class="row">
	    <!-- begin col-12 -->
	    <div class="col-xs-12">
	        <!-- begin panel -->
            <div class="panel panel-inverse">
                <div class="panel-heading">
                    <div class="panel-heading-btn">
                    	<a href="<?php echo base_url(); ?>index.php/user/add" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-plus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">User Management - Table</h4>
                </div>
                <div class="panel-body" style="overflow-x: hidden;">
                	<br />
                	<?php echo form_open_multipart('user/save',array('id' => 'form_add')); ?>
					<table class="table table-striped  table-bordered">
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Username*') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'name' => 'username','class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Email*') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'name' => 'email','class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Firstname*') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'name' => 'firstname','class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Lastname') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'name' => 'lastname','class' => 'form-control')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Phone') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'name' => 'phone','class' => 'form-control')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Password*') ?></td>
							<td><?php echo form_input(array('type' => 'password', 'name' => 'password','class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Confirm Password*') ?></td>
							<td><?php echo form_input(array('type' => 'password', 'name' => 'confirm_password','class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Function Access*') ?></td>
							<td><?php
							$dropdown_user_group = array();
							if($user_group->num_rows() > 0) {
								foreach($user_group->result() as $row_user_group) {
									$dropdown_user_group[$row_user_group->GROUP_NAME] = $row_user_group->GROUP_NAME;
								}
							}
							echo form_dropdown('function_access', $dropdown_user_group, '', 'class="form-control"'); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Status*') ?></td>
							<td><?php echo form_dropdown('status', array('Y'=> 'Yes', 'N' => 'No'), '', 'class="form-control"'); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Remark') ?></td>
							<td><?php echo form_textarea(array('name' => 'remark', 'class' => 'form-control')) ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Upload Photo') ?></td>
							<td>
								<?php echo form_upload(array('type' => 'file', 'name' => 'photo_upload','class' => 'file','id' => 'upload_photo')); ?>
							</td>
						</tr>
						<tr style="display: none;">
							<td colspan="2"><?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td colspan="2">
							<?php echo anchor('/user','Back', array('title' => 'Back to user list', 'class' => 'btn btn-sm btn-primary')); ?>
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