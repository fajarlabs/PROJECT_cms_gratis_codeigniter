<?php

if (!function_exists('create_breadcrumb')) {

    function create_breadcrumb($initial_crumb = '', $initial_crumb_url = '') {

        $ci = &get_instance();

        $open_tag = '<ol class="breadcrumb pull-right">';
        $close_tag = '</ol>';
        $crumb_open_tag = '<li>';
        $active_crumb_open_tag = '<li class="active-crumb">';
        $crumb_close_tag = '</li>';
        $separator = '';

        $total_segments = $ci->uri->total_segments();

        $breadcrumbs = $open_tag;

        if ($initial_crumb != '') {
            $breadcrumbs .= $crumb_open_tag;
            $breadcrumbs .= create_crumb_href($initial_crumb, false, true) . $separator;
        }
        
        $segment = '';
        $crumb_href = '';
        
        for ($i = 1; $i <= $total_segments; $i++) {
            
            $segment = $ci->uri->segment($i);
            $crumb_href .= $ci->uri->segment($i) . '/';
            
            if ($total_segments > $i) {
                $breadcrumbs .= $crumb_open_tag;
                $breadcrumbs .= create_crumb_href($segment, $crumb_href);
                $breadcrumbs .= $separator;
            }else{
                $breadcrumbs .= $active_crumb_open_tag;
                $breadcrumbs .= create_crumb_href($segment, $crumb_href);
            }
            
            $breadcrumbs .= $crumb_close_tag;
        }

        $breadcrumbs .= $close_tag;

        return $breadcrumbs;
    }

}

if (!function_exists('create_crumb_href')) {


    function create_crumb_href($uri_segment, $crumb_href = false, $initial = false) {

        $ci = &get_instance();
        $base_url = $ci->config->base_url().'index.php/';
        
        $crumb_href = rtrim($crumb_href, '/');
        
        if($initial) {
            return '<a href="' . $base_url . '">' . strtolower(str_replace(array('-', '_'), ' ', $uri_segment)) . '</a>';
        }else{
            return '<a href="' . $base_url . $crumb_href . '">' . strtolower(str_replace(array('-', '_'), ' ', $uri_segment)) . '</a>';
        }
    }
}