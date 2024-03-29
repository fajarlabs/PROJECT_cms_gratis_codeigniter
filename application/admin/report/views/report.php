<!-- begin #content -->
<div id="content" class="content">
	<!-- marquee text -->  
	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	
	<!-- begin page-header -->
	<h1 class="page-header"><?php e($site_name); ?> Report <small>Function to show data logger for all device</small></h1>
	<!-- end page-header -->

	<!-- begin row -->
	<div class="row">
		<!-- begin col-12 -->
		<div class="col-xs-12">
			<!-- begin panel -->
			<div class="panel panel-inverse">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="<?php echo base_url(); ?>index.php/report" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-reply"></i></a>
						<a href="javascript:;" onclick="downloadReport()" class="btn btn-xs btn-icon btn-circle btn-primary" ><i class="fa fa-download"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">All Data Records</h4>
				</div>
				<div class="panel-body" style="overflow-x: hidden;">

					<table id="dg" class="easyui-datagrid" style="width:100%;min-height:400px"
					url="<?php echo base_url(); ?>index.php/report/list_rest"
					toolbar="#toolbar" pagination="true"
					rownumbers="true" fitColumns="true" singleSelect="true">
					<thead>
						<tr>
							<th field="CLIENT" width="50px" >CLIENT</th>
							<th field="LOCATION" width="50px" >LOCATION</th>
							<th field="DEVICE_CODE" width="50px" >DEVICE CODE</th>
							<th field="DATALOG" width="50px" >DATA LOGGER</th>
							<th field="FUNCTION" width="50px" align="center">FUNCTION</th>
						</tr>
					</thead>
				</table>
				 <!--<div id="mm" class="easyui-menu">
				    <div>Edit</div>
				    <div>Delete</div>
				  </div>-->
				<!--<div id="toolbar">
					<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newData()">Add</a>
					<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editData()">Edit</a>
					<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="deleteData()">Remove</a>
					<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" plain="true" onclick="viewData()">View</a>
				</div>-->
			</div>
		</div>
	</div>
</div>
</div>

<!-- Modal -->
<div id="exampleModalDownload" class="modal modal-wide fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body" style="overflow-y: hidden;overflow-x: hidden;">
    		<iframe id='iframe-download' src="" frameborder="0" style="width:100%;height:600px;"> Sorry your browser does not support inline frames.</iframe>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script type="text/javascript">
 (function defer() {
	    if (window.jQuery) {
		$("input[name=FUNGSI]").hide();
		$("input[name=CTIME]").attr("placeholder","dd-mm-yyyy hh:mm:ss");

		$(".modal-wide").on("show.bs.modal", function() {
		  var height = $(window).height();
		  $(this).find(".modal-body").css("max-height", height);
		});
    } else {
       setTimeout(function() { defer() }, 2000);
    }
 })();

 function callModal(id) {
 	$("#exampleModalDownload").modal("show");
 	$("#iframe-download").attr("src","<?php echo base_url(); ?>index.php/report/cetak/"+id);
 }

function downloadReport() {
	var str_query = "INTERVENTION_NAME="+encodeURI($("input[name=INTERVENTION_NAME]").val());
	str_query += "&PRODUCT_TYPE="+encodeURI($("input[name=PRODUCT_TYPE]").val());
	str_query += "&SELECT_CARGO="+encodeURI($("input[name=SELECT_CARGO]").val());
	str_query += "&KONTRAK="+encodeURI($("input[name=KONTRAK]").val());
	str_query += "&SPK="+encodeURI($("input[name=SPK]").val());
	str_query += "&CTIME="+encodeURI($("input[name=CTIME]").val());
	window.location.href = "<?php echo base_url(); ?>index.php/report/downloadexcel/?"+str_query;
 } 
</script>