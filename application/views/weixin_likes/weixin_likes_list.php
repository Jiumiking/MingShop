<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
<?php $this->load->view('base/header_nav'); ?>
<?php $this->load->view('base/header_menu'); ?>
<div class="container" id="site_main">
    <a href="<?php echo site_url('weixin_likes/my_add');?>" class="btn btn-default" >参加活动</a>
<!--    <div class="row mt10" id="main_content">-->
        <div class="row mt20" id="list_content">
            <?php $this->load->view('weixin_likes/weixin_likes_tb'); ?>
        </div>
<!--    </div>-->
</div>
<?php $this->load->view('js/list_js'); ?>
<?php $this->load->view('base/footer'); ?>