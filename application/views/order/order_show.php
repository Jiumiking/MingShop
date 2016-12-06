<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
<?php $this->load->view('base/header_nav'); ?>
<?php $this->load->view('base/header_menu'); ?>
<div class="container" id="site_main">
    <div id="main_content">
        <div class="row">
            <div class="col-md-12">
                <div id="main_alert" class="alert" style="display:none;">
                    <span id="main_alert_content"></span>
                </div>
            </div>
        </div>
        <div class="row" id="main_content_1">
            <form class="form-horizontal" id="order_form" method="post" action="<?php echo site_url('order/order_edit');?>">
                <div class="col-md-12">
                    <div class="panel panel-default panel-shadow">
                        <div class="panel-heading">
                            商品清单
                        </div>
                        <div class="panel-body">
                            <ul class="list-group">
                                <?php if(!empty($data['goods'])){ foreach($data['goods'] as $k=>$v){ ?>
                                    <li class="list-group-item list-group-item-full">
                                        <div class="cart_default_img">
                                            <a href="<?php echo site_url('goods/my_show?id='.$v['goods_id']);?>"><img src="<?php echo base_url($v['image']);?>"/></a>
                                        </div>
                                        <div class="cart_default_content_top">
                                            <a href="<?php echo site_url('goods/my_show?id='.$v['goods_id']);?>"><?php echo $v['goods_name'];?></a>
                                        </div>
                                        <div class="cart_default_content_bottom">
                                            <span>￥<?php echo $v['money'];?><?php echo ' x'.$v['amount'];?></span>
                                        </div>
                                    </li>
                                <?php }} ?>
                            </ul>
                        </div>
                    </div>

                    <div class="panel panel-default panel-shadow">
                        <div class="panel-heading">
                            基本信息
                        </div>
                        <div class="panel-body">
                            <dl class="dl-horizontal">
                                <dt>订单号：</dt>
                                <dd><?php echo empty($data['order_no'])?'':$data['order_no'];?></dd>
                                <dt>商品总额：</dt>
                                <dd>￥<?php echo empty($data['money_goods'])?0:$data['money_goods'];?></dd>
                                <dt>优惠额度：</dt>
                                <dd>￥<?php echo empty($data['money_preferential'])?'':$data['money_preferential'];?></dd>
                                <dt>配送费用：</dt>
                                <dd>￥<?php echo empty($data['money_shipping'])?'':$data['money_shipping'];?></dd>
                                <dt>实际支付：</dt>
                                <dd>￥<?php echo empty($data['money_end'])?'':$data['money_end'];?></dd>
                                <dt>支付方式：</dt>
                                <dd>
                                    <?php if($data['status'] == 1){ ?>
                                        <div class="btn-group" data-toggle="buttons">
                                            <?php if(!empty($data_payment)){ foreach($data_payment as $v){  ?>
                                                <label class="btn btn-info <?php if(!empty($data['payment_id']) && $data['payment_id']==$v['id']){ ?> active <?php } ?>">
                                                    <input type="radio" name="payment" value="<?php echo $v['id'];?>" ><?php echo $v['name'];?>
                                                </label>
                                            <?php }} ?>
                                        </div>
                                    <?php }else{ ?>
                                        <?php if(!empty($data_payment)){ foreach($data_payment as $v){  ?>
                                            <?php if(!empty($data['payment_id']) && $data['payment_id']==$v['id']){ echo $v['name']; } ?>
                                        <?php }} ?>
                                    <?php } ?>

                                </dd>
                                <dt>收货地址：</dt>
                                <dd>
                                    <?php echo empty($data['accept_province'])?'':$data['accept_province'];?>&nbsp;
                                    <?php echo empty($data['accept_city'])?'':$data['accept_city'];?>&nbsp;
                                    <?php echo empty($data['accept_area'])?'':$data['accept_area'];?>&nbsp;
                                    <?php echo empty($data['accept_detail'])?'':$data['accept_detail'];?>
                                </dd>
                                <dt>收货人：</dt>
                                <dd><?php echo empty($data['accept_name'])?'':$data['accept_name'];?></dd>
                                <dt>收货号码：</dt>
                                <dd><?php echo empty($data['accept_phone'])?'':$data['accept_phone'];?></dd>
                                <dt>备注：</dt>
                                <dd><?php echo empty($data['remark'])?'':$data['remark'];?></dd>
                                <dt>下单时间：</dt>
                                <dd><?php echo empty($data['date_add'])?'':$data['date_add'];?></dd>
                                <dt>支付时间：</dt>
                                <dd><?php echo empty($data['date_pay'])?'':$data['date_pay'];?></dd>
                                <dt>发货时间：</dt>
                                <dd><?php echo empty($data['date_send'])?'':$data['date_send'];?></dd>
                                <dt>完成时间：</dt>
                                <dd><?php echo empty($data['date_end'])?'':$data['date_end'];?></dd>
                                <dt>订单状态：</dt>
                                <dd><?php echo $order_status[$data['status']];?></dd>
                            </dl>
                        </div>
                    </div>

                    <div class="row cart_checkout">
                        <div class="text-right">
                            <input type="hidden" name="id" value="<?php echo $data['id'];?>">
                            <input type="button" class="btn btn-default" onclick="back()" value="返回">
                            <?php if($data['status'] == 1){ ?>
                            <input type="button" class="btn btn-danger" id="order_form_btn" onclick="status('<?php echo $data['id'];?>','0')" value="取消订单">
                            <input type="button" class="btn btn-primary" id="order_form_btn" onclick="order_form_submit()" value="去支付">
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div class="row">
            <div class="col-md-12" style="display:none;" id="main_content_2">
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">

//生成订单
function order_form_submit(){
    $('#order_form').submit();
}
//返回
function back(){
    location.href = "<?php echo site_url('member/center');?>";
}
</script>
<?php $this->load->view('base/footer'); ?>