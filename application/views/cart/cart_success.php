<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
<?php $this->load->view('base/header_nav'); ?>
<?php $this->load->view('base/header_menu'); ?>
<div class="container" id="site_main">
    <div id="main_content">
        <div class="row">
            <div class="col-md-12">
                <?php if(!empty($data)){ ?>
                <div class="cart_img">
                    <img src="<?php echo base_url($data['image']);?>">
                </div>
                <div class="cart_content">
                    <h3 class="text-danger">
                        <li class="fa fa-check-circle"></li>
                        <span>商品已成功加入购物车</span>
                    </h3>
                    <p>
                        <?php echo $data['name'];?>
                    </p>
                </div>
                <div class="cart_btn">
                    <a type="button" class="btn btn-default" href="<?php echo $_SERVER['HTTP_REFERER'];?>">返回</a>
                    <a class="btn btn-primary" href="<?php echo site_url('cart/index');?>">去购物车结算</a>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">

</script>
<?php $this->load->view('base/footer'); ?>