<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
<?php $this->load->view('base/header_nav'); ?>
<?php $this->load->view('base/header_menu'); ?>
    <div class="container" id="site_main">
        <div class="row">
            <div class="col-md-12" id="main_menu">
                <input type="button" class="btn btn-default" value="选择图片" onclick="choose_image()">
                <div id="wx_image_show">

                </div>
            </div>
        </div>
    </div>
<?php $this->load->view('js/wx_js'); ?>
<?php $this->load->view('base/footer'); ?>