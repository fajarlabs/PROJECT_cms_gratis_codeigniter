<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->

	<!-- begin page-header -->
	<h1 class="page-header">Log Monitoring <small>Function to monitoring admin activity</small></h1>
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
                         <a href="<?php echo base_url(); ?>index.php/log_monitoring/clear_all" onclick="return confirm('Delete all data and permanently. Are you sure?')" class="btn btn-xs btn-icon btn-circle btn-danger"><i class="fa fa-trash"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Log Monitoring Admin - Table</h4>
                </div>
                <div class="panel-body">
				    <table id="dg" class="easyui-datagrid" style="width:100%;min-height:400px"
				            url="<?php echo base_url(); ?>index.php/log_monitoring/page_list_rest"
				            toolbar="#toolbar" pagination="true"
				            rownumbers="true" fitColumns="true" singleSelect="true">
				        <thead>
				            <tr>
                                <th field="ACTIVITY" width="30">Activity</th>
                                <th field="USERNAME" width="30">Username</th>
				                <th field="METHOD" width="30">Method</th>
                                <th field="CREATE_TIME" width="30">Create Time</th>
                                <th field="IP" width="30">IP</th>
                                <th field="DETAIL" style="width:auto;">Detail</th>
				            </tr>
				        </thead>
				    </table>
                </div>
            </div>
        </div>
    </div>
</div>