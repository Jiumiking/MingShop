<script type="text/javascript">
//购物车刷新
function cart_refresh(){
    $.ajax({
        type : "GET",
        async : true,
        url : "<?php echo site_url('cart/cart_refresh');?>",
        data : { },
        success : function(msg){
            if(msg){
                var msgobj = eval("("+ msg +")");
                if( msgobj.sta == 1 ){
                    $("#cart_nav_number").html( msgobj.dat.length );
                    var html = '';
                    var amount = 0;
                    var money = 0;
                    for( var i=0;i<msgobj.dat.length;i++ ){
                        var name = msgobj.dat[i].name;
                        if( name.length > 20 ){
                            name = name.substring(0,20)+'...';
                        }
                        name = '<a href="<?php echo site_url("goods/my_show?id='+msgobj.dat[i].goods_id+'");?>">'+name+'</a>';
                        amount += parseInt(msgobj.dat[i].amount);
                        money += parseFloat(msgobj.dat[i].money) * parseInt(msgobj.dat[i].amount);
                        html += '<div class="cart_nav_li"><div class="cart_nav_img"><a href="<?php echo site_url("goods/my_show?id='+msgobj.dat[i].goods_id+'");?>"><img src="'+msgobj.dat[i].image+'"></a></div><div class="cart_nav_content">'+name+'</div><div class="cart_nav_price">￥'+msgobj.dat[i].money+'x'+msgobj.dat[i].amount+'</br><a href="javascript:cart_del('+msgobj.dat[i].id+');">删除</a></div></div>';
                    }
                    html += '<div class="cart_nav_li"><div class="cart_nav_content">共'+amount+'件商品 ￥'+money+'</div><div class="cart_nav_price"><input type="button" href="" class="btn btn-primary" value="去购物车" onclick="cart_go()"></div></div>';
                    $("#cart_nav_content").html(html);
                }else{
                    $("#cart_nav_number").html('0');
                    $("#cart_nav_content").html('<p class="mt20">购物车中还没有商品，赶紧去选购吧</p>');
                }
            }
        }
    });
}
//购物车删除商品
function cart_del(id){
    $("#cart_nav_a").dropdown('toggle');
    $.ajax({
        type : "GET",
        async : true,
        url : "<?php echo site_url('cart/cart_del');?>",
        data : { id:id },
        success : function(msg){
            cart_refresh();
            
        }
    });
}
//去购物车
function cart_go(){
    window.location.href = '<?php echo site_url("cart/index");?>';
}
/**ming提示框
 * @param msg 提示信息
 * @param type 提示类型 1：错误提示，2：正确提示
 * @returns {boolean}
 */
var ming_alert_cnt = 1;
function ming_alert( msg, type ){
    if( typeof(msg) == 'undefined' ){
        return false;
    }
    if( typeof(type) == 'undefined' ){
        type = 0;
    }
    if( type == 1 ){
        var msg = '<div id="ming_alert_box'+ming_alert_cnt+'" class="alert alert-dismissable alert-success "><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><li class="fa fa-check-circle"></li><span>'+msg+'</span></div>';
    }else{
        var msg = '<div id="ming_alert_box'+ming_alert_cnt+'" class="alert alert-dismissable alert-danger "><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><li class="fa fa-exclamation-circle"></li><span>'+msg+'</span></div>';
    }
    $("#ming_alert").append(msg);
    setTimeout('ming_alert_hide('+ming_alert_cnt+');',3000);
    ming_alert_cnt++;
}
function ming_alert_hide(cnt){
    $("#ming_alert_box"+cnt).fadeOut(3000);
}
var msg = "<?php echo empty($_SESSION['msg'])?'':$_SESSION['msg'];?>";
$(document).ready(function(){
    cart_refresh();
    if( msg != '' ){
        ming_alert(msg,1);
    }
//    $("#site-navbar").find('.dropdown').hover(
//        function(){
//            $(this).addClass('open');
//        },
//        function(){
//            $(this).removeClass('open');
//        }
//    );
});
</script>