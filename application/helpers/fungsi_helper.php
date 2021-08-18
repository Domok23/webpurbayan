<?php

function check_already_login(){
    $CI =& get_instance();
    $user_session = $CI->session->userdata('email');
    if($user_session){
        redirect(base_url('admin/dasbor'));
    }
}

function check_not_login(){
    $CI =& get_instance();
    $user_session = $CI->session->userdata('email');
    if($user_session){
        redirect(base_url('login'));
    }
}

function check_admin() {
    $CI =& get_instance();
    $CI->load->library('simple_login');
    if($CI->simple_login->login()->akses_level != 1 ){
        redirect('admin/dasbor');
    }
}