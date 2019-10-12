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
                            <form class="form-horizontal" action="http://www.seantheme.com/" method="POST">
								<div id="wizard">
									<ol>
										<li>
										    General Info
										    <small></small>
										</li>
										<li>
										    Loading Information
										    <small></small>
										</li>
										<li>
										    Discharge Monitoring
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
												<label class="control-label col-md-4">Vessel:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="vessel" placeholder="Vessel">
												</div>
											  </div>
											  <div class="form-group">
												<label class="control-label col-md-4">Voyage:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="voyage" placeholder="Voyage">
												</div>
											  </div>
											  <div class="form-group">
												<label class="control-label col-md-4">Supplier:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="supplier" placeholder="Supplier">
												</div>
											  </div>
											  <div class="form-group">
												<label class="control-label col-md-4">Landing Port:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="landing_port" placeholder="Landing Port">
												</div>
											  </div>
											  <div class="form-group">
												<label class="control-label col-md-4">Landing Date:</label>
												<div class='input-group date' id='datetimepicker1'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>	
												
											  </div>
											   <script type="text/javascript">
            $(function() {
    $('#datetimepicker1').datetimepicker({
      format: 'DD-MM-YYYY',
	  pickTime: false
    });
  });
        </script>
											  <div class="form-group">
												<label class="control-label col-md-4">Discharge Port:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="discharge_port" placeholder="Discharge Port">
												</div>
											  </div>
											  <div class="form-group">
												<label class="control-label col-md-4">Discharge Date:</label>
												<div class='input-group date' id='datetimepicker3'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>	
												
											  </div>
											   <script type="text/javascript">
            $(function() {
    $('#datetimepicker3').datetimepicker({
		format: 'DD-MM-YYYY'
      pickTime: false
    });
  });
        </script>
											   <div class="form-group">
												<label class="control-label col-md-4">Bill Of loading No:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="bill_of_loading" placeholder="Bill Of loading No">
												</div>
											  </div>
											  <div class="form-group">
												<label class="control-label col-md-4">Bill Of loading date:</label>
												<div class='input-group date' id='datetimepicker3'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>	
												
											  </div>
											   <script type="text/javascript">
            $(function() {
    $('#datetimepicker3').datetimepicker({
		format: 'DD-MM-YYYY'
      pickTime: false
    });
  });
        </script>
 
                                                <!-- end col-4 -->

                                            </div>
                                            <!-- end row -->
										</fieldset>
									</div>
									<!-- end wizard step-1 -->
									<!-- begin wizard step-2 -->
									<div>
										<fieldset>
                                            <legend class="pull-left width-full">Time Log</legend>
                                            <!-- begin row -->
                                            <div class="row col-md-5">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-4">Vessel Arrive Terminal:</label>
												<div class='input-group date' id='timelog'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											   <div class="form-group">
												<label class="control-label col-md-4">Vessel Anchoraged:</label>
												<div class='input-group date' id='timelog2'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog2').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Notice of Readiness Tendered:</label>
												<div class='input-group date' id='timelog3'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog3').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Notice of Readiness Accepted:</label>
												<div class='input-group date' id='timelog4'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog4').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Pilot on Board for Berthing:</label>
												<div class='input-group date' id='timelog5'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog5').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Anchors Aweigh:</label>
												<div class='input-group date' id='timelog6'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog6').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">First Line:</label>
												<div class='input-group date' id='timelog7'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog7').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Vessel Berthed:</label>
												<div class='input-group date' id='timelog8'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog8').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Surveyor on Board:</label>
												<div class='input-group date' id='timelog9'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog9').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Key Meeting:</label>
												<div class='input-group date' id='timelog10'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog10').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Deballasting (Comm. – Compl.):</label>
												<div class='input-group date' id='timelog11'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog11').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Sea Valve Sealed:</label>
												<div class='input-group date' id='timelog12'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog12').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Tanks Inspection (Comm. – Compl.):</label>
												<div class='input-group date' id='timelog13'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog13').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Hose/Loading Arm Connected:</label>
												<div class='input-group date' id='timelog14'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog14').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Loading Commenced:</label>
												<div class='input-group date' id='timelog15'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog15').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Loading Completed:</label>
												<div class='input-group date' id='timelog16'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog16').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Hose/Loading Arm Disconnected:</label>
												<div class='input-group date' id='timelog17'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog17').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Sampling After Loading (Comm. – Compl.):</label>
												<div class='input-group date' id='timelog18'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog18').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Ullages and Water Dips (Comm. – Compl.):</label>
												<div class='input-group date' id='timelog19'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog20').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Documents On Board:</label>
												<div class='input-group date' id='timelog20'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog20').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Vessel Schedule to Unberth:</label>
												<div class='input-group date' id='timelog21'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog21').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">ETA Next Port   :</label>
												<div class='input-group date' id='timelog22'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#timelog22').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											
 
                                                <!-- end col-4 -->

                                            </div>
                                            <!-- end row -->
										</fieldset>
										
										<fieldset>
											<legend class="pull-left width-full">Figure</legend>
											<!-- begin row -->
                                            <div class="row">
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2"></label>
												<div class="col-md-2">
												 K/L Obsv
												</div>
												<div class="col-md-2">
												 K/L @15 oC
												</div>
												<div class="col-md-2">
												  BBls @60 oF
												</div>
												<div class="col-md-2">
												  Metric Ton
												</div>
												<div class="col-md-2">
												  Long Ton
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">Bill of Lading:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="fig_bilandingkl" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="fig_bilandingkl15oc" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="fig_bilandingls60oc" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="fig_bilandingmetricton" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="fig_bilandinglongton" placeholder="...">
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">Vessel Loaded:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="fig_vesloadkl" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="fig_vesloadkl15oc" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="fig_vesloadls60oc" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="fig_vesloadmetricton" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="fig_vesloadlongton" placeholder="...">
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">Differences:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="fig_differkl" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="fig_differkl15oc" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="fig_differls60oc" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="fig_differmetricton" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="fig_differlongton" placeholder="...">
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">% tase:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="fig_tasekl" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="fig_tasekl15oc" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="fig_tasels60oc" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="fig_tasemetricton" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="fig_taselongton" placeholder="...">
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
                                               
										</fieldset>
										<br>
										<fieldset>
											<legend class="pull-left width-full">General Note</legend>
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">OBQ:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="obq" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="obq2" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="obq3" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="obq4" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="obq5" placeholder="...">
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-5">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-4">Stowage Plan:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="stowage_plan" placeholder="Stowage Plan">
												</div>
											  </div>
											  <div class="form-group">
												<label class="control-label col-md-4">Density:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="density" placeholder="Density">
												</div>
											  </div>
											  <div class="form-group">
												<label class="control-label col-md-4">Free Water:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="free_water" placeholder="Free Water">
												</div>
											  </div>
											  <div class="form-group">
												<label class="control-label col-md-4">VEF:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="vef" placeholder="VEF">
												</div>
											  </div>											 
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">Arrival Draft:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="load_ad_fwd" placeholder="FWD">
												</div>
												<div class="col-md-2">
												  M
												</div>
												<div class="col-md-2">
												  
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="load_ad_fwt" placeholder="AFT">
												</div>
												<div class="col-md-2">
												  M
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">Depature Draft:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="load_dep_draft_fwd" placeholder="FWD">
												</div>
												<div class="col-md-2">
												  M
												</div>
												<div class="col-md-2">
												  
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="load_dep_draft_aft" placeholder="AFT">
												</div>
												<div class="col-md-2">
												  M
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-5">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-4">Slops:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="slops" placeholder="Slops">
												</div>
											  </div>																						 
                                            </div>
                                            <!-- end row -->

										</fieldset>
									</div>
									<!-- end wizard step-2 -->
									<!-- begin wizard step-3 -->
									<div>
										<fieldset>
                                            <legend class="pull-left width-full">Time Log</legend>
                                            <!-- begin row -->
                                            <div class="row col-md-5">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-4">Vessel Arrive Terminal:</label>
												<div class='input-group date' id='disdistimelog'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											   <div class="form-group">
												<label class="control-label col-md-4">Vessel Anchoraged:</label>
												<div class='input-group date' id='distimelog2'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog2').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Notice of Readiness Tendered:</label>
												<div class='input-group date' id='distimelog3'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog3').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Notice of Readiness Accepted:</label>
												<div class='input-group date' id='distimelog4'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog4').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Pilot on Board for Berthing:</label>
												<div class='input-group date' id='distimelog5'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog5').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Anchors Aweigh:</label>
												<div class='input-group date' id='distimelog6'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog6').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">First Line:</label>
												<div class='input-group date' id='distimelog7'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog7').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Vessel Berthed:</label>
												<div class='input-group date' id='distimelog8'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog8').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Surveyor on Board:</label>
												<div class='input-group date' id='distimelog9'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog9').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Key Meeting:</label>
												<div class='input-group date' id='distimelog10'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog10').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Deballasting (Comm. – Compl.):</label>
												<div class='input-group date' id='distimelog11'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog11').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Sea Valve Sealed:</label>
												<div class='input-group date' id='distimelog12'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog12').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Tanks Inspection (Comm. – Compl.):</label>
												<div class='input-group date' id='distimelog13'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog13').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Hose/Loading Arm Connected:</label>
												<div class='input-group date' id='distimelog14'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog14').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Loading Commenced:</label>
												<div class='input-group date' id='distimelog15'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog15').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Loading Completed:</label>
												<div class='input-group date' id='distimelog16'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog16').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Hose/Loading Arm Disconnected:</label>
												<div class='input-group date' id='distimelog17'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog17').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Sampling After Loading (Comm. – Compl.):</label>
												<div class='input-group date' id='distimelog18'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog18').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Ullages and Water Dips (Comm. – Compl.):</label>
												<div class='input-group date' id='distimelog19'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog20').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Documents On Board:</label>
												<div class='input-group date' id='distimelog20'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog20').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">Vessel Schedule to Unberth:</label>
												<div class='input-group date' id='distimelog21'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog21').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											<div class="form-group">
												<label class="control-label col-md-4">ETA Next Port   :</label>
												<div class='input-group date' id='distimelog22'>
													<input type='text' data-format="dd-MM-yyyy" class="form-control" />
													<span class="input-group-addon">
														<span class="glyphicon glyphicon-calendar"></span>
													</span>
												</div>												
											  </div>
											   <script type="text/javascript">
														$(function() {
												$('#distimelog22').datetimepicker({
													format: 'DD-MM-YYYY'
												  pickTime: false
												});
											  });
													</script>
											
 
                                                <!-- end col-4 -->

                                            </div>
                                            <!-- end row -->
										</fieldset>
										
										<fieldset>
											<legend class="pull-left width-full">Figure</legend>
											<!-- begin row -->
                                            <div class="row">
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2"></label>
												<div class="col-md-2">
												 K/L Obsv
												</div>
												<div class="col-md-2">
												 K/L @15 oC
												</div>
												<div class="col-md-2">
												  BBls @60 oF
												</div>
												<div class="col-md-2">
												  Metric Ton
												</div>
												<div class="col-md-2">
												  Long Ton
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2"><b>Loading Port</b></label>									
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">Bill of Lading:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_billandingkl" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_billandingkl15" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_billandingbb60" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_billandingmeton" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_billandinglongton" placeholder="...">
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">Ship Figure (AL):</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_ship_figkl" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_ship_figkl15" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_ship_figbb60" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_ship_figmeton" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_ship_figlongton" placeholder="...">
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">Differences:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_differkl" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_differkl15" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_differbb60" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_differmeton" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_differlongton" placeholder="...">
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">% tase:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_tassekl" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_tassekl15" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_tassebb60" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_tassemeton" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_tasselongton" placeholder="...">
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2"><b>In Transit</b></label>									
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">Ship Figure (AL):</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_trans_ship_figalkl" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_trans_ship_figalkl15" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_trans_ship_figalbb60" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_trans_ship_figalmeton" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_trans_ship_figallongton" placeholder="...">
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">Ship Figure (BD):</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_trans_ship_figbdkl" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_trans_ship_figbdkl15" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_trans_ship_figbdbb60" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_trans_ship_figbdmeton" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_trans_ship_figbdlongton" placeholder="...">
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">Shore Received:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_trans_shore_reckl" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_trans_shore_reckl15" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_trans_shore_recbb60" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_trans_shore_recmeton" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_trans_shore_reclongton" placeholder="...">
												</div>
											  </div>
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">% tase:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_trans_tasekl" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_trans_tasekl15" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_trans_tasebb60" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_trans_tasemeton" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_trans_taselongton" placeholder="...">
												</div>
											  </div>
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2"><b>Discharge Port</b></label>									
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">Ship Figure (BD):</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_ship_figbdkl" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_ship_figbdkl15" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_ship_figbdbb60" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_ship_figbdmeton" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_ship_figbdlongton" placeholder="...">
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">Shore Received:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_sh_rec_figkl" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_sh_rec_figkl15" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_sh_rec_figbb60" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_sh_rec_figmeton" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_sh_rec_figlongton" placeholder="...">
												</div>
											  </div>
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">Differences:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_diffkl" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_diffkl15" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_diffbb60" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_diffmeton" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_difflongton" placeholder="...">
												</div>
											  </div>
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">% tase:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_tasekl" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_tasekl15" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_tasebb60" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_tasemeton" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_taselongton" placeholder="...">
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2"><b>OutTurn</b></label>									
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">Bill of Lading:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_outbilandkl" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_outbilandkl15" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_outbilandbb60" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_outbilandmeton" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_outbilandlongton" placeholder="...">
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">Shore Received:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_outsreckl" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_outsreckl15" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_outsrecbb60" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_outsrecmeton" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_outsreclongton" placeholder="...">
												</div>
											  </div>
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">Differences:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_outdiffkl" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_outdiffkl15" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_outdiffbb60" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_outdiffmeton" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_outdifflongton" placeholder="...">
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">% tase:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_outtasekl" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_outtasekl15" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_outtasebb60" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_outtasemeton" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_outtaselongton" placeholder="...">
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
                                               
										</fieldset>
										<br>
										<fieldset>
											<legend class="pull-left width-full">General Note</legend>
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">ROB:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="rob1" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="rob2" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="rob3" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="rob4" placeholder="...">
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="rob5" placeholder="...">
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-5">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-4">Stowage Plan:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="dis_stowage_plan" placeholder="Stowage Plan">
												</div>
											  </div>
											  <div class="form-group">
												<label class="control-label col-md-4">Density:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="dis_density" placeholder="Density">
												</div>
											  </div>
											  <div class="form-group">
												<label class="control-label col-md-4">Free Water:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="dis_free_water" placeholder="Free Water">
												</div>
											  </div>
											  <div class="form-group">
												<label class="control-label col-md-4">VEF:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="dis_vef" placeholder="VEF">
												</div>
											  </div>											 
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">Arrival Draft:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="arival_draft_fwd" placeholder="Arrival Draft">
												</div>
												<div class="col-md-2">
												  M
												</div>
												<div class="col-md-2">
												  
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="arival_draft_aft" placeholder="AFT">
												</div>
												<div class="col-md-2">
												  M
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-12">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-2">Depature Draft:</label>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_dep_draft_fwd" placeholder="FWD">
												</div>
												<div class="col-md-2">
												  M
												</div>
												<div class="col-md-2">
												  
												</div>
												<div class="col-md-2">
												  <input type="text" class="form-control" id="dis_dep_draft_aft" placeholder="AFT">
												</div>
												<div class="col-md-2">
												  M
												</div>
											  </div>											  
                                            </div>
                                            <!-- end row -->
											
											<!-- begin row -->
                                            <div class="row col-md-5">
                                                <!-- begin col-4 -->
                                               <div class="form-group">
												<label class="control-label col-md-4">Slops:</label>
												<div class="col-md-8">
												  <input type="text" class="form-control" id="dis_slops" placeholder="Slops">
												</div>
											  </div>																						 
                                            </div>
                                            <!-- end row -->

										</fieldset>
										
									</div>
									<!-- end wizard step-3 -->
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