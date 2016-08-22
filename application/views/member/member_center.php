<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
<?php $this->load->view('base/header_nav'); ?>
<?php $this->load->view('base/header_menu'); ?>
<div class="container" id="site_main">
    <div class="row">
        <div class="col-md-3" id="main_menu">
            <?php $this->load->view('member/member_left'); ?>
        </div>
        <div class="col-md-9" id="main_content">
            <div class="row">
                <?php
                if( !empty($member_menu) ){
                    $this->load->view('member/member_'.$member_menu);
                 }
                ?>
            </div>
        </div>
    </div>
</div>
<?php $this->load->view('base/footer'); ?>