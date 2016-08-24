<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
<?php $this->load->view('base/header_nav'); ?>
<?php $this->load->view('base/header_menu'); ?>
    <div class="container" id="site_main">
        <div class="row">
            <div class="col-md-12" id="main_menu">
                <a href="<?php echo site_url('weixin/likes_add');?>" class="btn btn-default" >参加活动</a>
            </div>
        </div>
    </div>
<?php $this->load->view('base/footer'); ?>