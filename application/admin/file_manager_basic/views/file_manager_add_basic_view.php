
                	<?php echo form_open_multipart('file_manager_basic/save',array('id' => 'form_add')); ?>
					<table class="table table-striped  table-bordered">
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Title*') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'name' => 'title','class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('File Upload*') ?></td>
							<td><?php echo form_input(array('type' => 'file', 'name' => 'file_upload','class' => 'file','required' => 'required','id' => 'file_upload')); ?></td>
						</tr>
						<tr style="display: none;">
							<td colspan="2"><?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td colspan="2">
							<?php echo anchor('/file_manager_basic','Back', array('title' => 'Back to File Manager list', 'class' => 'btn btn-sm btn-primary')); ?>
							<?php echo form_submit('form_user_submit', 'Submit Form', 'class="btn btn-sm btn-primary"');?>
							</td>
						</tr>
					</table>
					<?php echo form_close(); ?>