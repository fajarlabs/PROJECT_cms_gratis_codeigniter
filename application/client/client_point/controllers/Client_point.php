<?php

class Client_point extends MY_Controller
{
	private $data = array();

	public function  __construct()
	{
		parent::__construct();
		//kick if session is expired
		if(empty(get_client_session())) {
			$this->session->set_flashdata('error_message', alert_success('Session expired'));
			redirect('company');
		}

		$this->load->model(array('Client_point_model','icon/Icon_model','client_site/Client_site_model','cabang/Cabang_model'));

		$this->data['csrf'] = array(
					'name' => $this->security->get_csrf_token_name(),
					'hash' => $this->security->get_csrf_hash()
				);
		$this->data['icon_list'] = $this->Icon_model->get_all_items();
		$this->data['site_list'] = $this->Client_site_model->get_all_items();
		$this->data['cabang_list'] = $this->Cabang_model->get_all_items();

		// https://openlayers.org/en/latest/examples/draw-features.html
		$this->data['html_css'] = '
			<link rel="stylesheet" href="https://openlayers.org/en/v4.4.2/css/ol.css" type="text/css" />
			<link rel="stylesheet" href="http://www.marghoobsuleman.com/mywork/jcomponents/image-dropdown/samples/css/msdropdown/dd.css" type="text/css" />
    		<style>
    			.textbox .textbox-text {
    				color : #000;
    			}

    			.textbox {
    				border : 1px solid #CCD0D6;
    			}

				.form-horizontal .control-label{
				/*  text-align:right; */
					text-align:left;
					background-color:#ffa;
				}

				.ol-touch .rotate-north {
				  top: 80px;
				}
				.ol-mycontrol {
				    background-color: rgba(255, 255, 255, 0.4);
				    border-radius: 4px;
				    padding: 2px;
				    position: absolute;
				    width:auto;
				    top: 5px;
				    left:40px;
				}
			</style>
			<link href="'.base_url().'assets/admin/color-admin/assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
			<link href="'.base_url().'assets/admin/color-admin/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />';
		$this->data['html_js'] = '
			<script src="https://openlayers.org/en/v4.4.2/build/ol.js"></script>
			<script src="http://www.marghoobsuleman.com/mywork/jcomponents/image-dropdown/samples/js/msdropdown/jquery.dd.min.js"></script>
			<script src="'.base_url().'assets/admin/color-admin/assets/js/dashboard.min.js"></script>
			<script src="'.base_url().'assets/admin/color-admin/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
			<script type="text/javascript">

				// select image dropdown
				$("#icon_menu").msDropDown();

				function geolocationAddress()
				{
					var lat = parseFloat($("input[name=latitude]").val());
					var lon = parseFloat($("input[name=longitude]").val());

					var result = "";
					$.ajaxSetup({async:false});
					$.get("http://maps.googleapis.com/maps/api/geocode/json?latlng="+lat+","+lon+"&sensor=true",function(response) {
						if(response.status == "OK") {
							result = response.results[0].formatted_address;
						}
					});
					$.ajaxSetup({async:true});

					return result;
				}

				function reGeolocationAddress()
				{
					$("textarea[name=description]").text("");
					var address = geolocationAddress();
					$("textarea[name=description]").text(address);
				}

				function clearDescription()
				{
					$("textarea[name=description]").text("");
				}

				function newData()
				{
					window.open("'.base_url().'index.php/client_point/create","_self");
				}

				function editData()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/client_point/edit/"+row.ID_INFO,"_self");
				}

				function deleteData()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/client_point/delete/"+row.ID_INFO,"_self");
				}

				function viewData()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/client_point/view/"+row.ID_INFO,"_self");
				}	
			</script>
			<script src="'.base_url().'assets/admin/js/decimal.js"></script>
			<script>

				$(document).ready(function() {
					try {
						App.init();

						// datagrid
						var dg = $("#dg")
						dg.datagrid({
						  pagination:true,
						  remoteFilter:true
						});
						dg.datagrid("enableFilter");
				    
					} catch(err) {
						console.log(err);
					}
				});

				function newMapPoint()
				{
					window.open("'.base_url().'index.php/client_point/add","_self");
				}

				function editMapPoint()
				{
					var row = $("#dg").datagrid("getSelected");
					window.open("'.base_url().'index.php/client_point/edit/"+row.ID,"_self");
				}

				function destroyMapPoint()
				{
					if(confirm("Are you sure ?")) {
						var row = $("#dg").datagrid("getSelected");
						window.open("'.base_url().'index.php/client_point/delete/"+row.ID,"_self");
					}
				}

				function showModalFileManager(action=0,latitude=0,longitude=0) {
					$("#map-modal").modal("show");
					if(action == 1) {
						$("#map-modal").find("iframe").attr("src","'.base_url().'index.php/client_point/view_list");
					}

					if(action == 2) {
						$("#map-modal").find("iframe").attr("src","'.base_url().'index.php/client_point/add?lat="+latitude+"&lon="+longitude);
					}
				}

				window.app = {};
				var app = window.app;
				var draw;

				/**
				 * @constructor
				 * @extends {ol.control.Control}
				 * @param {Object=} opt_options Control options.
				 */
				app.CustomToolbarControl = function(opt_options) {

				  var options = opt_options || {};

				  var btnReset = document.createElement("button");
				  btnReset.innerHTML = "<i class=\"fa fa-refresh\"></i> Reset";

				  var btnRecords = document.createElement("button");
				  btnRecords.innerHTML = "<i class=\"fa fa-list\"></i> Records";
				  btnRecords.onclick = function(e) {
					showModalFileManager(1);				  	
				  }
				    
				  var source = new ol.source.Vector({wrapX: false});
				  var btnPoint = document.createElement("button");
				  btnPoint.innerHTML = "<i class=\"fa fa-plus\"></i> Create Point";
				  btnPoint.onclick = function(e){
				  	if(!draw) {
					    draw = new ol.interaction.Draw({
					        source: source,
					        type: "Point"
					    });
					    map.addInteraction(draw);
					  	btnPoint.innerHTML = "<i class=\"fa fa-trash-o\"></i> Remove Point";
				  	} else {
				  		map.removeInteraction(draw);
				  		btnPoint.innerHTML = "<i class=\"fa fa-plus\"></i> Create Point";
				  		draw = null;
				  	}
				  }
				    
				  var selectList = document.createElement("select");
				  selectList.id = "mySelect";
				  selectList.onchange = function(e){
				  	    vectorSource.clear();
				        $.get("'.base_url().'index.php/client_point/get_point/"+this.value,function(json) {
				      	if(json.total > 0) {
				      		for(var i=0; i < json.total; i++) {
								var iconStyle = new ol.style.Style({
								    image: new ol.style.Icon({
								        anchor: [0.5, 46],
								        anchorXUnits: "fraction",
								        anchorYUnits: "pixels",
								        opacity: 0.75,
								        src: "'.base_url().'uploads/icon_files/"+json.rows[i].UPLOAD_FILE
								    }),
								    text: new ol.style.Text({
								        font: "12px Calibri,sans-serif",
								        fill: new ol.style.Fill({ color: "#000" }),
								        stroke: new ol.style.Stroke({
								            color: "#fff", width: 2
								        }),
								        text: json.rows[i].NAME
								    })
								});
								var longitude = parseFloat(json.rows[i].LONGITUDE);
								var latitude  = parseFloat(json.rows[i].LATITUDE);

							    var feature = new ol.Feature(new ol.geom.Point(ol.proj.transform([longitude, latitude], "EPSG:4326","EPSG:3857")));
							    feature.setStyle(iconStyle);
							    vectorSource.addFeature(feature);
				      		}
				      	}
				      });
				  }
				  var array = ["--Filter By--","Port","Vessel","Barge","Cabang"];
				  for (var i = 0; i < array.length; i++) {
				    var option = document.createElement("option");
				    option.value = array[i];
				    option.text = array[i];
				    selectList.appendChild(option);
					}

				  var this_ = this;
				  var handleRotateNorth = function(e) {
				    this_.getMap().getView().setRotation(0);
				  };

				  var element = document.createElement("div");
				  element.className = "ol-unselectable ol-mycontrol";
				  element.appendChild(btnReset);
				  element.appendChild(btnRecords);
				  element.appendChild(selectList);
				  element.appendChild(btnPoint);

				  ol.control.Control.call(this, {
				    element: element,
				    target: options.target
				  });

				};
				ol.inherits(app.CustomToolbarControl, ol.control.Control);

				var vectorSource = new ol.source.Vector();
				var vectorLayer = new ol.layer.Vector({
				      source: vectorSource
				    });
				var map = new ol.Map({
				    layers: [
				      new ol.layer.Tile({
				        source: new ol.source.OSM()
				      }),
				      vectorLayer
				    ],
				    target: "map",
				    controls: ol.control.defaults({
				      attributionOptions: /** @type {olx.control.AttributionOptions} */ ({
				        collapsible: false
				      })
				    }).extend([
					    new app.CustomToolbarControl()
					  ]),
				    view: new ol.View({
				      center: ol.proj.fromLonLat([117.9622061250001 ,-1.129142371871339]),
				      zoom: 5
				    })
				});

				map.on("click", function(evt){
					if(draw) {
					   var lonlat = ol.proj.transform(evt.coordinate, "EPSG:3857", "EPSG:4326");
					   var lon = lonlat[0];
					   var lat = lonlat[1];
					   showModalFileManager(2,lat,lon);
					}
				});

			</script> 
			';
	}

	public function index()
	{
		$this->load->view('client/header',$this->data);
		$this->load->view('client_point_view',$this->data);
		$this->load->view('client/footer',$this->data);
	}

	public function view_list()
	{
		$this->data['basic'] = true;
		$this->load->view('admin/header',$this->data);
		$this->load->view('client_point_list_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}


	public function page_list_rest()
	{
		$query = $this->Client_point_model->get_all_item_by_siteid(get_client_site_id());
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$json_object->rows  = @$query->result();
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function get_point($type="")
	{
		$type = strtolower($type);
		$query = $this->Client_point_model->get_by_type($type,get_client_site_id());
		$json_object = new stdClass();
		$json_object->total = @$query->num_rows();		
		$json_object->rows  = @$query->result();
		header('Content-Type: application/json');
		echo json_encode($json_object);
	}

	public function add()
	{
		$this->data['html_js'] .= '
			<script type="text/javascript">
				var address = geolocationAddress();
				$("textarea[name=description]").text(address);
			</script>
		';
		$this->data['basic'] = true;
		$this->data['title'] = "Map Point Management";
		$this->data['lat']   = $this->input->get("lat");
		$this->data['lon']   = $this->input->get("lon");
		$this->load->view('admin/header',$this->data);
		$this->load->view('client_point_add_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function edit($id=0)
	{
		$this->data['basic'] = true;
		$this->data['title'] = "Map Point Management";
		$this->data['id']    = $id;
		$this->data['item']  = $this->Client_point_model->get_item_by_id($id);
		$this->load->view('admin/header',$this->data);
		$this->load->view('client_point_edit_view',$this->data);
		$this->load->view('admin/footer',$this->data);
	}

	public function save()
	{
		$name       = $this->input->post('name');
		$type       = $this->input->post('type');
		$latitude   = $this->input->post('latitude');
		$longitude  = $this->input->post('longitude');
		$icon_id    = (int)$this->input->post('icon_id');
		$site_id    = (int)$this->input->post('site_id');
		$cabang_id  = (int)$this->input->post('cabang_id');

		$insert = array(
			'NAME'      => stripslashes($name),
			'TYPE'      => stripslashes($type),
			'LATITUDE'  => stripslashes($latitude),
			'LONGITUDE' => stripslashes($longitude),
			'ICON_ID'   => stripslashes($icon_id),
			'SITE_ID'   => stripslashes($site_id),
			'CABANG_ID' => stripslashes($cabang_id),
			'SESS_SITE_ID' => get_client_site_id()
		);

		$this->Client_point_model->save($insert);
		$this->session->set_flashdata('error_message', alert_success('Save succeded.'));
		redirect("client_point/view_list");	
	}

	public function update($id=0) 
	{
		$name      = $this->input->post('name');
		$type      = $this->input->post('type');
		$latitude  = $this->input->post('latitude');
		$longitude = $this->input->post('longitude');
		$icon_id   = (int)$this->input->post('icon_id');
		$site_id   = (int)$this->input->post('site_id');
		$cabang_id = (int)$this->input->post('cabang_id');

		$insert = array(
			'NAME'      => stripslashes($name),
			'TYPE'      => stripslashes($type),
			'LATITUDE'  => stripslashes($latitude),
			'LONGITUDE' => stripslashes($longitude),
			'ICON_ID'   => stripslashes($icon_id),
			'SITE_ID'   => stripslashes($site_id),
			'CABANG_ID' => stripslashes($cabang_id)
		);

		$this->Client_point_model->update($insert,$id);
		$this->session->set_flashdata('error_message', alert_success('Update succeded.'));
		redirect("client_point/view_list");
	}

	public function delete($id)
	{
		$this->Client_point_model->delete_by_id($id);
		$this->session->set_flashdata('error_message', alert_success('Delete succeded.'));
		redirect("client_point/view_list");
	}
}