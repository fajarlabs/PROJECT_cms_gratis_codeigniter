<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">File Manager Management <small>Function to edit upload file</small></h1>
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
                    	<a href="<?php echo base_url(); ?>index.php/file_manager/add" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-plus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">File Manager Management - Table</h4>
                </div>
                <div class="panel-body" style="overflow-x: hidden;">
                	<br />
                	<?php echo form_open_multipart('file_manager/update/'.@$id,array('id' => 'form_add')); ?>
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
							<?php echo anchor('/file_manager','Back', array('title' => 'Back to File Manager list', 'class' => 'btn btn-sm btn-primary')); ?>
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