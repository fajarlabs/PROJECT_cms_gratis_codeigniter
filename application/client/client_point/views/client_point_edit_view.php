                	<?php echo form_open('client_point/update/'.$id,array('id' => 'form_add')); ?>
					<table class="table table-striped  table-bordered">
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Name*') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'name' => 'name','value' => @$item->result()[0]->NAME,'class' => 'form-control','required' => 'required')); ?></td>
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
							echo form_dropdown('type', $type_array, @$item->result()[0]->TYPE, 'class="form-control"'); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Select Icon*'); ?></td>
							<td>
								<select name="icon_id" id="icon_menu" class="form-control">
									<?php 
									if($icon_list->num_rows() > 0) {
										foreach($icon_list->result() as $row_icon) {
											$selected = @$item->result()[0]->ICON_ID == $row_icon->ID ? "selected" : "";
											echo '<option value="'.$row_icon->ID.'" title="'.base_url().'uploads/icon_files/'.$row_icon->UPLOAD_FILE.'" '.$selected .'>'.$row_icon->NAMA.'</option>';
										}
									} ?>
								</select>
							</td>
						</tr>
						<tr style="display:none;">
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Select Site*'); ?></td>
							<td>
								<input type="text" class="form-control" name="site_id" value="<?php echo get_client_site_id(); ?>" readonly="true"/>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Latitude*') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'name' => 'latitude','value' => @$item->result()[0]->LATITUDE,'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Longitude*') ?></td>
							<td><?php echo form_input(array('type' => 'text', 'name' => 'longitude','value' => @$item->result()[0]->LONGITUDE,'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr style="display: none;">
							<td colspan="2"><?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td colspan="2">
							<?php echo anchor('/client_point/view_list','Back', array('title' => 'Back to Bbm list', 'class' => 'btn btn-sm btn-primary')); ?>
							<?php echo form_submit('form_user_submit', 'Submit Form', 'class="btn btn-sm btn-primary"');?>
							</td>
						</tr>
					</table>
					<?php echo form_close(); ?>