<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<?php echo (isset($breadcrumb) ? $breadcrumb : ""); ?>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header">Pelni Data <small>Function to data pelni</small></h1>
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
                    	<a href="<?php echo base_url(); ?>index.php/user/add" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-plus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Pelni - Table</h4>
                </div>
                <div class="panel-body" style="overflow-x: hidden;">

                    <table id="dg" class="easyui-datagrid" style="width:100%;min-height:400px"
                            url="<?php echo base_url(); ?>index.php/client/page/list-pelni-data"
                            toolbar="#toolbar" pagination="true"
                            rownumbers="true" fitColumns="true" singleSelect="true">
                        <thead>
                            <tr>
                                <th field="vessel" width="30">Vessel</th>
                                <th field="barge" width="30">Barge</th>
                                <th field="port" width="20">Port</th>
                                <th field="date_loading_barge" width="20">date loading barge</th>
                                <th field="date_loading_pelni" width="20" align="center">date loading pelni</th>
								<th field="def_terminal" width="20" align="center">Date Expired of flowmeter Terminal</th>
								<th field="id_info"></th>
							</tr>
                        </thead>
						<tbody>
						<?php foreach($all_items->result() as $row) { ?>
						    <tr>
                                <td width="30"><?php echo $row->VESSEL_NAME; ?></td>
                                <td width="30"><?php echo $row->BARGE_NAME; ?></td>
                                <td width="20"><?php echo $row->PORT_NAME; ?></td>
                                <td width="20"><?php echo (($row->dlb=='01/01/1970') ? '' : $row->dlb); ?></td>
                                <td width="20"><?php echo (($row->dlp=='01/01/1970') ? '' : $row->dlp); ?></td>
								<td width="20"><?php echo (($row->dt=='01/01/1970') ? '' : $row->dt); ?></td>
								<td><?php echo $row->id_info; ?></td>
                            </tr>
						<?php } ?>
						</tbody>
                    </table>
                    <div id="toolbar">
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newDataPelni()">Add</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editDataPelni()">Edit</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="deleteDataPelni()">Remove</a>
                        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" plain="true" onclick="viewDataPelni()">View</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>