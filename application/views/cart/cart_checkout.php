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
            <form class="form-horizontal" id="order_form" method="post" action="<?php echo site_url('order/order_add');?>">
                <div class="col-md-12">
                    <div class="panel panel-default panel-shadow">
                        <div class="panel-heading">
                            商品清单
                        </div>
                        <div class="panel-body">
                            <ul class="list-group">
                                <?php if(!empty($data_cart)){ foreach($data_cart as $k=>$v){ ?>
                                <input type="hidden" name="order[cart][<?php echo $k;?>]" value="<?php echo $v['id'];?>">
                                <li class="list-group-item list-group-item-full">
                                    <div class="cart_default_img">
                                        <a href="<?php echo site_url('goods/my_show?id='.$v['goods_id']);?>"><img src="<?php echo base_url($v['image']);?>"/></a>
                                    </div>
                                    <div class="cart_default_content_top">
                                        <a href="<?php echo site_url('goods/my_show?id='.$v['goods_id']);?>"><?php echo $v['name'];?></a>
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
                            收货地址
                            <div class="panel-actions">
                                <a href="javascript:address_change();" class="btn btn-info btn-xs">选择地址</a>
                            </div>
                        </div>
                        <div class="panel-body">
                            <input type="hidden" name="order[address]" value="<?php echo empty($data_member_address['id'])?'':$data_member_address['id'];?>">
                            <dl class="dl-horizontal">
                                <dt>收货人：</dt>
                                <dd id="address_person"><?php echo empty($data_member_address['person'])?'':$data_member_address['person'];?></dd>
                                <dt>手机号码：</dt>
                                <dd id="address_phone"><?php echo empty($data_member_address['phone'])?'':$data_member_address['phone'];?></dd>
                                <dt>所在地区：</dt>
                                <dd id="address_address"><?php foreach($data_address as $vv){ if( (!empty($data_member_address['province']) && $data_member_address['province']==$vv['number']) || (!empty($data_member_address['city']) && $data_member_address['city']==$vv['number']) || (!empty($data_member_address['area']) && $data_member_address['area']==$vv['number']) ){
                                        echo $vv['name'].'&nbsp;&nbsp;';
                                    }} ?></dd>
                                <dt>详细地址：</dt>
                                <dd id="address_detail"><?php echo empty($data_member_address['detail'])?'':$data_member_address['detail'];?></dd>
                            </dl>
                        </div>
                    </div>
                    <div class="panel panel-default panel-shadow">
                        <div class="panel-heading">
                            支付方式
                        </div>
                        <div class="panel-body">
                            <div class="btn-group" data-toggle="buttons">
                                <?php if(!empty($data_payment)){ foreach($data_payment as $v){  ?>
                                    <label class="btn btn-info">
                                        <input type="radio" name="order[payment]" value="<?php echo $v['id'];?>" autocomplete="off"><?php echo $v['name'];?>
                                    </label>
                                <?php }} ?>
                            </div>
                        </div>
                    </div>

                    <div class="row cart_checkout">
                        <div class="col-lg-11 col-md-10 col-sm-9 col-xs-6 text-right">
                            商品数量：
                        </div>
                        <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6 text-right">
                            <?php echo $goods_count;?>
                        </div>
                        <div class="col-lg-11 col-md-10 col-sm-9 col-xs-6 text-right">
                            商品总额：
                        </div>
                        <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6 text-right">
                            ￥<?php echo $goods_money;?>
                        </div>
                        <div class="col-lg-11 col-md-10 col-sm-9 col-xs-6 text-right">
                            运费：
                        </div>
                        <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6 text-right">
                            ￥<span id="shipping_money_show"></span>
                        </div>
                        <div class="col-lg-11 col-md-10 col-sm-9 col-xs-6 text-right error-block">
                            应付总额：
                        </div>
                        <div class="col-lg-1 col-md-2 col-sm-3 col-xs-6 text-right error-block">
                            ￥<span id="money_show"></span>
                        </div>
                        <div class="text-right">
                            <input type="button" class="btn btn-default" onclick="back()" value="返回购物车">
                            <input type="button" class="btn btn-primary" id="order_form_btn" onclick="order_form_submit()" value="去支付">
<!--                            <a href="javascript:order_form_submit()" id="order_form_btn" class="btn btn-primary">去支付</a>-->
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
var ckot = [];
ckot.goods_money = parseFloat(<?php echo empty($goods_money)?0:$goods_money;?>);
ckot.goods_count = parseInt(<?php echo empty($goods_count)?0:$goods_count;?>);
ckot.shipping_type = parseInt(<?php echo empty($shipping_type)?0:$shipping_type;?>);
ckot.shipping_free = parseInt(<?php echo empty($this_setting['shipping_free'])?0:$this_setting['shipping_free'];?>);
ckot.shipping_jzh = parseInt(<?php echo empty($this_setting['shipping_jzh'])?0:$this_setting['shipping_jzh'];?>);
ckot.shipping_other = parseInt(<?php echo empty($this_setting['shipping_other'])?0:$this_setting['shipping_other'];?>);
//入口方法
function init(){
    if( ckot.goods_money >= ckot.shipping_free ){
        ckot.shipping_money = 0;
    }else{
        if( ckot.shipping_type == 1 ){
            ckot.shipping_money = ckot.shipping_jzh;
        }else{
            ckot.shipping_money = ckot.shipping_other;
        }
    }
    ckot.money = ckot.goods_money + ckot.shipping_money;
    $("#shipping_money_show").html(ckot.shipping_money);
    $("#money_show").html(ckot.money);
}
//地址更换
function address_change(){
    $.ajax({
        type : "GET",
        async : true,
        url : "<?php echo site_url('member/ajax_address');?>",
        data : { },
        success : function(msg){
            if(msg){
                var msgobj = eval("("+ msg +")");
                if( msgobj.sta == 1 ){
                    $("#main_content_1").hide();
                    $("#main_content_2").html(msgobj.dat);
                    $("#main_content_2").show();
                }
            }
        }
    });
}
//生成订单
function order_form_submit(){
    var back = true;
    var msg = '';

    var address = $("[name='order[address]']").val();
    if( address == undefined || address == '' ){
        back = false;
        msg += '请选择收货地址</br>';
    }
    var payment = $("[name='order[payment]']:checked").val();
    if( payment == undefined || payment == '' ){
        back = false;
        msg += '请选择支付方式</br>';
    }
    if(back){
        $("#order_form_btn").attr("disabled","disabled");
        $('#order_form').submit();
    }else{
        ming_alert(msg);
        //$('body,html').animate({scrollTop:0},500);
    }
}
//返回
function back(){
    location.href = "<?php echo site_url('cart');?>";
}
$(document).ready(function(){
    init();
});
</script>
<?php $this->load->view('base/footer'); ?>