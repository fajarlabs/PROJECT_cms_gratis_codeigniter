                	<?php echo form_open_multipart('map_point/save',array('id' => 'form_add')); ?>
					<table class="table table-striped  table-bordered">
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Name*') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'name' => 'name','class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Type*') ?></td>
							<td><?php
							$type_array = array();
							$type_array[]         = '--Select Type--';
							$type_array['cabang'] = 'Cabang';
							$type_array['port']   = 'Port';
							$type_array['barge']  = 'Barge';
							$type_array['vessel'] = 'Vessel';
							echo form_dropdown('type', $type_array, '', 'class="form-control"'); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Select Icon*'); ?></td>
							<td>
								<select name="icon_id" id="icon_menu" class="form-control">
									<?php 
									if($icon_list->num_rows() > 0) {
										foreach($icon_list->result() as $row_icon) {
											echo '<option value="'.$row_icon->ID.'" title="'.base_url().'uploads/icon_files/'.$row_icon->UPLOAD_FILE.'">'.$row_icon->NAMA.'</option>';
										}
									} ?>
								</select>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Select Branch*'); ?></td>
							<td>
								<select name="cabang_id" class="form-control">
									<?php 
									if($cabang_list->num_rows() > 0) {
										foreach($cabang_list->result() as $row_list) {
											echo '<option value="'.$row_list->CABANG_ID.'">'.$row_list->BRANCH_NAME.'</option>';
										}
									} ?>
								</select>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Select Site*'); ?></td>
							<td>
								<select name="site_id" class="form-control">
									<option value="0">--Select Site--</option>
									<?php 
									if($site_list->num_rows() > 0) {
										foreach($site_list->result() as $row_list) {
											echo '<option value="'.$row_list->CLIENT_SITE_ID.'">'.$row_list->CLIENT_SITE_NAME.'</option>';
										}
									} ?>
								</select>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Latitude*') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'name' => 'latitude','value' => @$lat,'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Longitude*') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'name' => 'longitude','value' => @$lon,'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Description*') ?></td>
							<td>
								<a onclick="clearDescription();" href="javascript:;" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> Clear</a> <a onclick="reGeolocationAddress();" href="javascript:;" class="btn btn-primary btn-xs"><i class="fa fa-refresh"></i> Reload address by latitude longitude</a>
								<div style="width:100%;height:5px;">&nbsp;</div>
								<?php echo form_textarea(array('type' => 'text', 'name' => 'description','class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr style="display: none;">
							<td colspan="2"><?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td colspan="2">
							<?php echo anchor('/map_point/view_list','Back', array('title' => 'Back to Bbm list', 'class' => 'btn btn-sm btn-primary')); ?>
							<?php echo form_submit('form_user_submit', 'Submit Form', 'class="btn btn-sm btn-primary"');?>
							</td>
						</tr>
					</table>
					<?php echo form_close(); ?>