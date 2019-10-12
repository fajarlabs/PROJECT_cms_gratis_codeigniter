<!-- begin #content -->
<div id="content" class="content">

	<!-- begin breadcrumb -->
	<?php echo create_breadcrumb('Home'); ?>
	<!-- end breadcrumb -->
	
	<!-- begin page-header -->
	<h1 class="page-header">Map Point <small>Function to show maps & point</small></h1>
	<!-- end page-header -->

	<!-- begin row -->
	<div class="row">
	    <!-- begin col-12 -->
	    <div class="col-xs-12">
	        <!-- begin panel -->
            <div id="panel" class="panel panel-inverse">
                <div class="panel-heading">
                    <div class="panel-heading-btn">	
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                        <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                    </div>
                    <h4 class="panel-title">Map Point</h4>
                </div>
                <div id="map" class="panel-body" style="width:100%;height:auto;">
                </div>

                <div id="map-modal" class="modal fade" role="dialog">
                  <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Map Point</h4>
                      </div>
                      <div class="modal-body" style="height:100%;overflow:hidden;">
                            <iframe src="" style="zoom:0.60" width="99.6%" height="270px" frameborder="0"></iframe>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                      </div>
                    </div>

                  </div>
                </div>
            </div>
        </div>
    </div>
</div>