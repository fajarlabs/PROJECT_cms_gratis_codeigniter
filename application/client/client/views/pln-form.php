        <!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li><a href="javascript:;">Home</a></li>
				<li class="active">General Form</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">General Form <small>Wizard for general info, time sheet, quality, quantity & remarks.</small></h1>
			<!-- end page-header -->
			<!-- begin front message -->
			<?php echo (isset($front_message) ? $front_message : ""); ?>
			<!-- end front message -->
			<!-- begin row -->
			<div class="row">
                <!-- begin col-12 -->
			    <div class="col-md-12">
			        <!-- begin panel -->
                    <div class="panel panel-inverse">
                        <div class="panel-heading">
                            <div class="panel-heading-btn">
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-repeat"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                                <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                            </div>
                            <h4 class="panel-title">Form Wizards</h4>
                        </div>
                        <div class="panel-body">
                            <form action="<?php echo base_url(); ?>index.php/input/add_data/" method="post" class="form-horizontal">
								<div id="wizard">
									<ol>
										<li>
										    General Info
										    <small></small>
										</li>
										<li>
                                            Document Upload
                                            <small></small>
                                        </li>
									</ol>
									<!-- begin wizard step-1 -->
									<div>
                                        <fieldset>
                                            <legend class="pull-left width-full">General Info</legend>
                                            <!-- begin row -->
                                            <div class="row col-md-5">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-4">Kapal:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="kapal" placeholder="Kapal">
												</div>
												<?php  echo form_error('vessel', '<label class="error-red">', '</label>'); ?>
											  </div>
											  <div class="form-group">
												<label class="control-label col-md-4">TGL BL:</label>
												<div class='input-group date' id='tgl_bl'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>	
												
											  </div>
											   <script type="text/javascript">
            $(function() {
    $('#tgl_bl').datetimepicker({
      format: 'DD-MM-YYYY',
	  pickTime: false
    });
  });
        </script>
											  <div class="form-group">
												<label class="control-label col-md-4">B/L OBS:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="bl_obs" placeholder="B/L OBS">
												</div>
											  </div>
											  
											  <div class="form-group">
												<label class="control-label col-md-4">B/L STD:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="bl_std" placeholder="B/L STD">
												</div>
											  </div>											  
											  <div class="form-group">
												<label class="control-label col-md-4">SAL OBS:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="sal_obs" placeholder="SAL OBS">
												</div>
											  </div>
											  
											  <div class="form-group">
												<label class="control-label col-md-4">SAL STD:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="sal_std" placeholder="SAL STD">
												</div>
											  </div>											  
											  <div class="form-group">
												<label class="control-label col-md-4">SBD OBS:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="sbd_obs" placeholder="SBD OBS">
												</div>
											  </div>
											
											   <div class="form-group">
												<label class="control-label col-md-4">SBD STD:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="sbd_std" placeholder="SBD STD">
												</div>
											  </div>											  
											  <div class="form-group">
												<label class="control-label col-md-4">OUT OBS:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="out_obs" placeholder="OUT OBS">
												</div>
											  </div>
											  
											  <div class="form-group">
												<label class="control-label col-md-4">OUT STD:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="out_std" placeholder="OUT STD">
												</div>
											  </div>
 
                                                <!-- end col-4 -->
												
												<div class="clearfix space-height-10"></div>
											<div class="row">
												<div class="col-md-4">
													<input type="hidden" name="<?php echo $csrf['name']; ?>" value="<?php echo $csrf['hash'];?>" />
													<a class="btn btn-primary btn-sm" href="<?php echo base_url(); ?>index.php/input/"><i class="fa fa-reply"></i> Back</a>
													<button type="submit" class="btn btn-success btn-sm">Submit</button>
												</div>
											</div>

                                            </div>
                                            <!-- end row -->
											
										</fieldset>
									</div>
									<!-- end wizard step-1 -->
									
                                    <!-- begin wizard step-4 -->
                                    <div>
                                        <fieldset>
                                            <legend class="pull-left width-full">Upload</legend>
                                            <!-- begin row -->
                                            <div class="row">
                                                <div class="col-xs-12">
                                                    <table class="table">
                                                        <tr>
                                                            <th>File Name</th>
                                                            <th colspan="2">&nbsp;</th>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <input type="text" class="form-control" name="filename[]" />
                                                            </td>
                                                            <td>
                                                                <input type="file" name="document_upload[]" style="height:35px;" placeholder="Document Upload" />
                                                            </td>
                                                            <td>
                                                                <button class="btn btn-sm btn-primary"> + </button>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                        </fieldset>
                                    </div>
                                    <!-- end wizard step-4 -->
									
								</div>
							</form>
                        </div>
                    </div>
                    <!-- end panel -->
                </div>
                <!-- end col-12 -->
            </div>
            <!-- end row -->
		</div>
		<!-- end #content -->