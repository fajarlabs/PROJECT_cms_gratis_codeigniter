<?php


function debug($var) 
{
	$time_start = round(microtime(true) * 1000);
	echo '<table border="1">';
	echo '<tr><td style="background:#ccc;" valign="top">';
	echo '<strong>Data : </strong><br/>';
	echo '</td><td style="background:#fff;" valign="top">';
	echo '<pre>';
	print_r($var);
	echo '<pre>';
	echo '</td></tr>';
	$time_end = round(microtime(true) * 1000);
	//dividing with 60 will give the execution time in minutes other wise seconds
	$execution_time = ($time_end - $time_start)/60;
	echo '<tr><td style="background:#ccc;" valign="top">';
	echo '<b>Total Execution Time:</b>';
	echo '</td><td style="background:#fff;" valign="top">';
	echo $execution_time;
	echo ' miliseconds.';
	echo '</td></tr>';
	echo '<tr><td style="background:#ccc;" valign="top">';
	echo '<strong>Backtrace : </strong>';
	echo '</td><td style="background:#fff;" valign="top">';
	echo '<pre>';
	print_r(debug_backtrace());
	echo '</pre>';
	echo '</td></tr>';
	echo '</table>';
	die();
}