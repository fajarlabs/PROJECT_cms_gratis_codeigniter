<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Client Access <small>Form to create client menu permissions</small></h1>
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
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Client Access - Table</h4>
                </div>
                <div class="panel-body" style="background:#f1f1f1;overflow-x: hidden;">
                	<br />
						<form id="form_client_access_add" class="form-horizontal" method="post" action="<?php echo base_url(); ?>index.php/client_access/save">

							<div class="form-group">
								<label class="control-label col-xs-2" for="fullname">User
									Group * </label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="group_name" name="group_name" value="" />
								</div>
							</div>
							<div class="form-group" style="background: #f1f1f1;">
								<label class="control-label col-xs-2" for="fullname">Tree Menu
									* </label>
								<div class="col-xs-9">
									<table id="tt" class="easyui-treegrid fixedtable"
										data-options="url:'<?php echo base_url(); ?>index.php/client_access/client_access_rest?grpus=<?php echo isset($group_id) ? $group_id : 0; ?>',method: 'get',idField:'id',treeField:'title',onLoadSuccess:function(){$('.easyui-treegrid').treegrid('expandAll');}"
										width="100%">

										<thead>
											<tr>
												<th field="title" width="53%">Menu Name</th>
												<th field="read" align="center" width="10%">Read</th>
												<th field="add" align="center" width="10%">Add</th>
												<th field="edit" align="center" width="10%">Edit</th>
												<th field="delete" align="center" width="10%">Delete</th>
												<th field="checkrow" align="center" width="5%">&nbsp;</th>
												<th field="uncheckrow" align="center" width="5%">&nbsp;</th>
											</tr>
										</thead>
									</table>
								</div>
							</div>


							<div class="col-sm-offset-2 col-sm-10">
								<button type="button" class="btn btn-primary btn-sm button-back"
									onclick="window.location.href='<?php echo base_url(); ?>index.php/client_access'; return false"
									style="width: 100px">
									<i class="fa fa-arrow-left" style="margin-right: 10px"></i>
									Back
								</button>
								<input type="hidden" name="<?php echo $csrf['name']; ?>" value="<?php echo $csrf['hash'];?>" />
								<input type="submit" class="btn btn-primary btn-sm button-submit"
									value="Save" style="width: 100px;">
							</div>
						</form>

						<br /><br />
                </div>
            </div>
        </div>
    </div>
</div>