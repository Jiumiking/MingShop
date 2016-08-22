<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
<?php $this->load->view('base/header_nav'); ?>
<?php $this->load->view('base/header_menu'); ?>
<div class="container" id="site_main">
    
    <div class="row">
        <div class="col-md-3" id="main_menu">
            <?php $this->load->view('goods/goods_category'); ?>
        </div>
        <div class="col-md-9 " id="main_content">
            <div class="row">
            <?php $this->load->view('goods/goods_tb'); ?>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
$(document).ready(function(){
    $(".thumbnail").find("div.thumbnail-img-div").each(function(){
        $(this).height($(this).width());
    });
    $(window).resize(function(){
        $(".thumbnail").find("div.thumbnail-img-div").each(function(){
            $(this).height($(this).width());
        });
    });
});
</script>
<?php $this->load->view('base/footer'); ?>