<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
    <?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->

	<!-- begin page-header -->
	<h1 class="page-header">Icon Management <small>Function to create icon</small></h1>
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
                    	<a href="<?php echo base_url(); ?>index.php/icon/add" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-plus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Icon Management - Table</h4>
                </div>
                <div class="panel-body">
				    <table id="dg" class="easyui-datagrid" style="width:100%;min-height:400px"
				            url="<?php echo base_url(); ?>index.php/icon/page_list_rest"
				            toolbar="#toolbar" pagination="true"
				            rownumbers="true" fitColumns="true" singleSelect="true">
				        <thead>
				            <tr>
                                <th field="NAMA" width="30">NAME</th>
                                <th field="UPLOAD_FILE" width="30">FILE</th>
				            </tr>
				        </thead>
				    </table>
                    <div id="toolbar">
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newIcon()">Add</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editIcon()">Edit</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyIcon()">Remove</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>