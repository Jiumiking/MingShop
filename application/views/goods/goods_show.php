<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
<?php $this->load->view('base/header_nav'); ?>
<?php $this->load->view('base/header_menu'); ?>
<div class="container" id="site_main">
    <div id="main_content">
        <div class="row">
            <div class="col-md-6">
                <?php $this->load->view('goods/goods_show_img'); ?>
            </div>
            <div class="col-md-6">
                <div id="main_alert" class="alert alert-dismissable" style="display:none;">
                    <span id="main_alert_content"></span>
                </div>
                <?php $this->load->view('goods/goods_show_info'); ?>
            </div>
        </div>
        <div class="row mt20">
            <div class="col-md-12">
                <?php $this->load->view('goods/goods_show_detail'); ?>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
var goods_format = <?php echo $goods_format;?>;
$(document).ready(function(){
    init();
});
//入口方法
function init(){
    if( goods_format.length == 1 ){
        $("#goods_info_money").html(goods_format[0]['money']);
        $("#goods_info_amount").html(goods_format[0]['amount']);
        $("#goods_info_amount_id").val(goods_format[0]['id']);
    }
    comment_load();
}
//加载评论
function comment_load(){
    $.ajax({
        type : "GET",
        async : true,
        url : "<?php echo site_url('comment/ajax_show');?>",
        data : { otype:2, oid:<?php echo $data['id'];?> },
        success : function(msg){
            if(msg){
                var msgobj = eval("("+ msg +")");
                if(msgobj.sta == '1'){
                    $('#goods_info_comment').html(msgobj.dat);
                }
            }
        }
    });
}
//选择商品规格
function format_check(_this){
    $("[name='"+$(_this).attr('name')+"']").each(function(){
        $(this).removeClass('active');
    });
    $(_this).addClass('active');
    format_show();
}
//更新库存和价格
function format_show(){
    var format = [];
    for( var i=1;i<=5;i++ ){
        format[i] = format_val(i);
    }
    for( var i=0;i<goods_format.length;i++ ){
        var mk = true;
        for( var j=1;j<=5;j++ ){
            if( goods_format[i]['format'+j] != 0 && goods_format[i]['format'+j] != format[j] ){
                mk = false;
            }
        }
        if( mk ){
            $("#goods_info_money").html(goods_format[i]['money']);
            $("#goods_info_amount").html(goods_format[i]['amount']);
            $("#goods_info_amount_id").val(goods_format[i]['id']);
            break;
        }
    }
}
//获取规格值
function format_val(id){
    var val = 0;
    $("[name='format"+id+"']").each(function(){
        if( $(this).hasClass('active') ){
            val = $(this).attr('data');
        }
    });
    return val;
}
//加入购物车
function cart_add(){
    var amount_id = $("#goods_info_amount_id").val();
    if( amount_id == '' ){
        ming_alert('请先选择规格');
    }else{
        $.ajax({
            type : "GET",
            async : true,
            url : "<?php echo site_url('cart/cart_add');?>",
            data : { id:amount_id },
            success : function(msg){
                if(msg){
                    var msgobj = eval("("+ msg +")");
                    if( msgobj.sta == 0 ){
                        ming_alert(msgobj.msg);
                    }else if( msgobj.dat != '' ){
                        window.location.href = "<?php echo site_url('cart/cart_add_success?id="+msgobj.dat+"');?>";
                    }
                }
            }
        });
    }
}
</script>
<?php $this->load->view('base/footer'); ?>