<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
<?php $this->load->view('base/header_nav'); ?>
<?php $this->load->view('base/header_menu'); ?>
<div class="container" id="site_main">
    <div id="main_content">
        <div class="row">
            <div class="col-md-12">
                <div id="main_alert" class="alert" style="display:none;">
                    <button type="button" class="close" data-dismiss="alert" 
                        aria-hidden="true">
                        &times;
                    </button>
                    <span id="main_alert_content"></span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default panel-shadow">
                    <div class="panel-heading">
                        我的购物车
                    </div>
                    <div class="panel-body">
                        <ul class="list-group">
                            <?php if(!empty($data)){ foreach($data as $v){ ?>
                            <li class="list-group-item list-group-item-full" id="cart_tr_<?php echo $v['id'];?>">
                                <div class="cart_default_img">
                                    <a href="<?php echo site_url('goods/my_show?id='.$v['goods_id']);?>"><img src="<?php echo base_url($v['image']);?>"/></a>
                                </div>
                                <div class="cart_default_content_top">
                                    <a href="<?php echo site_url('goods/my_show?id='.$v['goods_id']);?>"><?php echo $v['name'];?></a>
                                </div>
                                <div class="cart_default_content_top_right">
                                    <a href="javascript:cart_del2(<?php echo $v['id'];?>)"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a>
                                </div>
                                <div class="cart_default_content_bottom">
                                    <span>￥<?php echo $v['money'];?></span>
                                </div>
                                <div class="cart_default_content_bottom_right">
                                    <div class="btn-group" role="group" aria-label="...">
                                        <button type="button" class="btn btn-default btn-sm cart_num_minus"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span></button>
                                        <input id="cart_num_<?php echo $v['id'];?>" data="<?php echo $v['id'];?>" data-num="<?php echo $v['amount'];?>" type="text" class="btn btn-default btn-input btn-sm cart_num" value="<?php echo $v['amount'];?>">
                                        <button type="button" class="btn btn-default btn-sm cart_num_plus"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span></button>
                                    </div>
                                </div>
                            </li>
                            <?php }} ?>
                        </ul>
                        <div>
                            总共<span id="cart_amount"></span>件商品，总价(不包含运费)：<span class="error-block">￥<span id="cart_money"></span></span>
                            <a href="<?php echo site_url('cart/checkout');?>" type="button" class="btn btn-primary pull-right" >去结算</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
//入口方法
function init(){
    cart_refresh2();
}
//购物车刷新
function cart_refresh2(){
    $.ajax({
        type : "GET",
        async : true,
        url : "<?php echo site_url('cart/cart_refresh');?>",
        data : { },
        success : function(msg){
            if(msg){
                var msgobj = eval("("+ msg +")");
                if( msgobj.sta == 1 ){
                    var amount = 0;
                    var money = 0;
                    for( var i=0;i<msgobj.dat.length;i++ ){
                        amount += parseInt(msgobj.dat[i].amount);
                        var money_li = parseFloat(msgobj.dat[i].money) * parseInt(msgobj.dat[i].amount);
                        money += money_li;
                        //$("#cart_money_"+msgobj.dat[i].id).html(money_li);
                    }
                    $("#cart_amount").html(amount);
                    $("#cart_money").html(money);
                }
            }
        }
    });
}
//购物车删除
function cart_del2(id){
    $.ajax({
        type : "GET",
        async : true,
        url : "<?php echo site_url('cart/cart_del');?>",
        data : { id:id },
        success : function(msg){
            var msgobj = eval("("+ msg +")");
            if( msgobj.sta == 1 ){
                $("#cart_tr_"+id).remove();
                cart_refresh2();
            }
            ming_alert(msgobj.msg,msgobj.sta);
        }
    });
}
//购物车数量修改
function cart_num2(id,num){
    if( id == '' || num == '' ){
        return false;
    }
    $.ajax({
        type : "GET",
        async : true,
        url : "<?php echo site_url('cart/cart_num');?>",
        data : { id:id,num:num },
        success : function(msg){
            var msgobj = eval("("+ msg +")");
            if( msgobj.sta == 1 ){
                $("#cart_num_"+id).val(num);
                $("#cart_num_"+id).attr('data-num',num);
                cart_refresh2();
            }else{
                ming_alert(msgobj.msg);
            }
        }
    });
}
$(document).ready(function(){
    init();
    $(".cart_num_minus").on('click',function(){
        var num = parseInt($(this).next().val());
        var id = $(this).next().attr('data');
        if( num > 1 ){
            cart_num2(id,num-1);
        }
    });
    $(".cart_num_plus").on('click',function(){
        var num = parseInt($(this).prev().val());
        var id = $(this).prev().attr('data');
        cart_num2(id,num+1);
    });
    $(".cart_num").on('change',function(){
        var val = $(this).val();
        var val_old = $(this).attr('data-num');
        var id = $(this).attr('data');
        var reg = /^[1-9]\d*$/;
        if (reg.test(val)) {
            cart_num2(id,val);
        }else{
            $(this).val(val_old);
            ming_alert('输入有误');
        }
    });
});
</script>
<?php $this->load->view('base/footer'); ?>