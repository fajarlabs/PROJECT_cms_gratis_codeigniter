
                	<?php echo form_open_multipart('file_manager_basic/update/'.@$id,array('id' => 'form_add')); ?>
					<table class="table table-striped  table-bordered">
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Title*') ?></td>
							<td><?php echo form_input(array('value' => @$item->result()[0]->TITLE ,'type' => 'text', 'name' => 'title','class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('File Upload*') ?></td>
							<td><?php echo form_input(array('type' => 'file', 'name' => 'file_upload','class' => 'file','id' => 'file_upload')); ?>
								<div style="width: 100%; height:10px;">&nbsp;</div>
								<table class="table table-striped table-bordered">
									<tr>
										<th style="color:#000;">File Path</th>
										<th style="color:#000;">Size (KB)</th>
										<th style="color:#000;">Extension</th>
										<th style="color:#000;">Type</th>
									</tr>
									<tr>
										<td style="color:#000;"><a href="<?php echo base_url().@$item->result()[0]->PATH; ?>" class="btn btn-xs btn-success" target="_blank"><?php echo @$item->result()[0]->PATH; ?></a></td>
										<td style="color:#000;"><?php echo @$item->result()[0]->SIZE; ?></td>
										<td style="color:#000;"><?php echo @$item->result()[0]->EXTENSION; ?></td>
										<td style="color:#000;"><?php echo @$item->result()[0]->TYPE; ?></td>
									</tr>
								</table>
							</td>
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