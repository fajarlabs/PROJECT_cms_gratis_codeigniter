<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Menu Management <small>Function to edit menu</small></h1>
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
                    	<a href="<?php echo base_url(); ?>index.php/menu/add" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-plus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Menu Management - Table</h4>
                </div>
                <div class="panel-body">
					<form id="userRegisterForm" method="post" action="<?php echo base_url(); ?>index.php/menu/update/<?php echo @$id; ?>">

						<table class="table table-striped  table-bordered">
							<tr>
								<td width="150px" style="padding-top:15px;"><?php echo form_label('Reference') ?></td>
								<td><?php echo form_input(array('type' => 'text','style'=>'width: 100%; height: 35px;', 'name' => 'reference','class' => 'easyui-combotree form-control', 'data-options' => 'url:\''.base_url().'index.php/menu/list_menu_ref_rest\',method:\'get\',label:\'Select Menu Reference\',labelPosition:\'top\',value:\''.@$item->result()[0]->REFERENCE.'\'')); ?></td>
							</tr>
							<tr>
								<td width="150px" style="padding-top:15px;"><?php echo form_label('Title') ?></td>
								<td><?php echo form_input(array('value' => @$item->result()[0]->TITLE,'id' => 'title','type' => 'text', 'name' => 'title','class' => 'form-control','required' => 'required')); ?></td>
							</tr>
							<tr>
								<td width="150px" style="padding-top:15px;"><?php echo form_label('URL') ?></td>
								<td><?php echo form_input(array('value' => @$item->result()[0]->URL, 'id' => 'url','type' => 'text', 'name' => 'url','class' => 'form-control')); ?></td>
							</tr>
							<tr>
								<td width="150px" style="padding-top:15px;"><?php echo form_label('Remark') ?></td>
								<td><?php echo form_input(array('value' => @$item->result()[0]->REMARK,'id' => 'remark','type' => 'text', 'name' => 'remark','class' => 'form-control')); ?></td>
							</tr>
							<tr>
								<td width="150px" style="padding-top:15px;"><?php echo form_label('Target') ?></td>
								<td><?php echo form_input(array('value'=> @$item->result()[0]->TARGET,'id' => 'target','type' => 'text', 'name' => 'target','class' => 'form-control')); ?></td>
							</tr>
							<tr>
								<td width="150px" style="padding-top:15px;"><?php echo form_label('Font Icon') ?></td>
								<td><?php echo form_input(array('value' => @$item->result()[0]->IMAGE,'id' => 'image','type' => 'text', 'name' => 'image','class' => 'form-control')); ?></td>
							</tr>
							<tr>
								<td width="150px" style="padding-top:15px;"><?php echo form_label('Weight') ?></td>
								<td><?php echo form_input(array('value' => @$item->result()[0]->WEIGHT ,'id' => 'weight','type' => 'number', 'name' => 'weight','class' => 'form-control')); ?></td>
							</tr>
							<tr>
								<td width="150px" style="padding-top:15px;"><?php echo form_label('Show') ?></td>
								<td>
									<?php echo form_dropdown('show', array(1 => 'Yes', 0 => 'No'), @$item->result()[0]->SHOW, 'id="show" class="form-control"'); ?>
								</td>
							</tr>
							<tr style="display: none;">
								<td colspan="2"><?php echo form_input(array('type' => 'hidden', 'name' => $csrf['name'],'value' => $csrf['hash'],'class' => 'form-control','required' => 'required')); ?></td>
							</tr>
							<tr>
								<td colspan="2">
									<a href="<?php echo base_url(); ?>index.php/menu/" class="btn btn-primary btn-sm button-back">Back</a>
									<input type="submit" id="saveUser" class="btn btn-sm btn-primary"
										value="Save" />
								</td>
							</tr>
						</table>
					</form>
                </div>
            </div>
        </div>
    </div>
</div>