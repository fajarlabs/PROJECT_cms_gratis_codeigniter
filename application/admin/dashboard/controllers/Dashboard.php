<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends MY_Controller 
{

	private $data = array();

	public function __construct() 
	{
		parent::__construct();
		$this->data['html_css'] = '
			<style>
				.form-horizontal .control-label{
				/*  text-align:right; */
					text-align:left;
					background-color:#ffa;
				}
			</style>
			<link href="'.base_url().'assets/admin/color-admin/assets/plugins/bootstrap-datepicker/css/datepicker.css" rel="stylesheet" />
			<link href="'.base_url().'assets/admin/color-admin/assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />';
    	$this->data['html_js'] = '
			<script src="'.base_url().'assets/admin/plugins/highchart/highcharts.js"></script>
			<script src="'.base_url().'assets/admin/plugins/highchart/exporting.js"></script>
			<script src="'.base_url().'assets/admin/color-admin/assets/js/dashboard.min.js"></script>
			<script src="'.base_url().'assets/admin/color-admin/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/moment-timezone/0.5.13/moment-timezone-with-data-2012-2022.min.js"></script>
			<script>
				$(document).ready(function() {
					App.init();
					Dashboard.init();
					$("#dashboard").addClass("active");
					Highcharts.chart("chart_temperature", {
					    chart: {
					        type: "line"
					    },
					    title: {
					        text: "Monthly Average Temperature"
					    },
					    subtitle: {
					        text: "Source: Cloud AWS"
					    },
					    xAxis: {
					        categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
					    },
					    yAxis: {
					        title: {
					            text: "Temperature (°C)"
					        }
					    },
					    plotOptions: {
					        line: {
					            dataLabels: {
					                enabled: true
					            },
					            enableMouseTracking: false
					        }
					    },
					    series: [{
					        name: "Ruang Server",
					        data: [7.0, 6.9, 9.5, 14.5, 18.4, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
					    }, {
					        name: "Ruang Gardu",
					        data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
					    }]
					});

					var datapoints = [
						{ 
							"name":"device1",
							"time": "2019-06-28T01:04Z",
							"value": 2.0
						}, 
						{
							"name":"device1",
							"time": "2019-06-28T12:15Z",
							"value": 2.2
						}, 
						{
							"name":"device1",
							"time": "2019-06-28T18:00Z",
							"value": 3.0
						}
					]

					let startTimePoint = moment(datapoints[0].time);
					let endTimePoint = moment(datapoints[2].time);
					let min = moment(startTimePoint).tz("Asia/Jakarta");
					let max = moment(endTimePoint).tz("Asia/Jakarta");
					Highcharts.chart("timeseries", {
					  title: {
					      text: "Temperature Hourly"
					  },
					  xAxis: {
						min: min.valueOf(),
					    max: max.valueOf(),
					    type: "datetime",	
					    tickInterval: 3600 * 1000	// ticks every hour
					  },
					  yAxis: {
					    title: {
						    text: "Temperature (°C)"
						}
					  },
					  series: [
					  {
					  	name: "Water Controller",
					    type: "spline",
					    data: datapoints.map(item => {
					      return {
					        id: String(item.time),
					        name: String(item.name),
					        x: moment(item.time).tz("Asia/Jakarta"),
					        y: item.value
					      }
					    })
					  }]
					});
				});
			</script>';
			
		$this->data['osess'] = $this->session->userdata("osess");
	}

	public function index()
	{ 	
		$this->data['title'] 		= "Dashboard";
		$this->load->view("admin/header",$this->data);
		$this->load->view("dashboard", $this->data);
		$this->load->view("admin/footer", $this->data);
	}
}
