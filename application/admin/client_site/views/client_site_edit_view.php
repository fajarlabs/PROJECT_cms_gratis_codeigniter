<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->

	<!-- begin page-header -->
	<h1 class="page-header">Client Site Management <small>Function to edit client site</small></h1>
	<!-- end page-header -->

	<!-- begin row -->
	<div class="row">
	    <!-- begin col-12 -->
	    <div class="col-xs-12">
	        <!-- begin panel -->
            <div class="panel panel-inverse">
                <div class="panel-heading">
                    <div class="panel-heading-btn">
                    	<a href="<?php echo base_url(); ?>index.php/client_site/add" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-plus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Client Site Management - Table</h4>
                </div>
                <div class="panel-body" style="overflow-x: hidden;">
                	<br />
                	<?php echo form_open('client_site/update/'.$id,array('id' => 'form_add')); ?>
					<table class="table table-striped  table-bordered">
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Client Site Name*') ?></td>
							<td><?php echo form_input(array('value' => @$item->result()[0]->CLIENT_SITE_NAME,'type' => 'text', 'name' => 'client_site_name','class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Client Logo*') ?></td>
							<td><?php echo form_input(array('value' => @$item->result()[0]->CLIENT_LOGO,'type' => 'text', 'name' => 'client_logo','class' => 'form-control','required' => 'required','placeholder' => 'URL Image Logo')); ?>
									<a onclick="showModalFileManager()" style="margin-top:3px;" class="btn btn-xs btn-primary" href="javascript:;">
									   <i class="fa fa-copy"></i> Change URL from File Manager
									</a>
							</td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Client Logo Width*') ?></td>
							<td><?php echo form_input(array('value' => @$item->result()[0]->CLIENT_LOGO_WIDTH,'type' => 'text', 'name' => 'client_logo_width','class' => 'form-control','required' => 'required','placeholder' => '.px')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Client Logo Height*') ?></td>
							<td><?php echo form_input(array('value' => @$item->result()[0]->CLIENT_LOGO_HEIGHT,'type' => 'text', 'name' => 'client_logo_height','class' => 'form-control','required' => 'required','placeholder' => '.px')); ?></td>
						</tr>
						<tr>
							<td width="150px" style="padding-top:15px;"><?php echo form_label('Client Wallpaper*') ?></td>
							<td><?php echo form_input(array('value' => @$item->result()[0]->CLIENT_WALLPAPER,'type' => 'text', 'name' => 'client_wallpaper','class' => 'form-control','required' => 'required','placeholder' => 'URL Image Wallpaper')); ?>
									<a onclick="showModalFileManager()" style="margin-top:3px;" class="btn btn-xs btn-primary" href="javascript:;">
									   <i class="fa fa-copy"></i> Change URL from File Manager
									</a>
							</td>
						</tr>
						<tr style="display: none;">
							<td colspan="2"><?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?></td>
						</tr>
						<tr>
							<td colspan="2">
							<?php echo anchor('/client_site','Back', array('title' => 'Back to Client Site list', 'class' => 'btn btn-sm btn-primary')); ?>
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