<ul class="nav tab-menu nav-tabs">
    <li role="presentation" class="active"><a data-toggle="tab" href="#order_a">全部</a></li>
    <li role="presentation"><a data-toggle="tab" href="#order_1">待付<span class="badge"><?php echo empty($count_order_1)?'':$count_order_1;?></span></a></li>
    <li role="presentation"><a data-toggle="tab" href="#order_2">待发<span class="badge"><?php echo empty($count_order_2)?'':$count_order_2;?></span></a></li>
    <li role="presentation"><a data-toggle="tab" href="#order_3">待收<span class="badge"><?php echo empty($count_order_3)?'':$count_order_3;?></span></a></li>
    <li role="presentation"><a data-toggle="tab" href="#order_4">完成<span class="badge"><?php echo empty($count_order_4)?'':$count_order_4;?></span></a></li>
</ul>
<div class="tab-content">
    <div class="tab-pane active" id="order_a">
        <?php if(!empty($data_order_a)){ foreach($data_order_a as $v){ ?>
        <div class="panel panel-default panel-shadow">
            <div class="panel-heading">
                <a href="<?php echo site_url('order/show?id='.$v['id']);?>"><?php echo $v['order_no'];?></a>
                <div class="panel-actions">
                    <?php echo $order_status[$v['status']];?>
                </div>
            </div>
            <div class="panel-body">
                <ul class="list-group">
                    <?php if(!empty($v['goods'])){ foreach($v['goods'] as $vv){ ?>
                    <li class="list-group-item list-group-item-full" id="cart_tr_<?php echo $vv['id'];?>">
                        <div class="cart_default_img">
                            <a href="<?php echo site_url('goods/my_show?id='.$vv['goods_id']);?>"><img src="<?php echo base_url($vv['image']);?>"/></a>
                        </div>
                        <div class="cart_default_content_top">
                            <a href="<?php echo site_url('goods/my_show?id='.$vv['goods_id']);?>"><?php echo $vv['goods_name'];?></a>
                        </div>
                        <div class="cart_default_content_bottom">
                            <span>￥<?php echo $vv['money'];?></span>
                        </div>
                        <div class="cart_default_content_bottom_right">
                            x&nbsp;<?php echo $vv['amount'];?>
                        </div>
                    </li>
                    <?php }} ?>
                </ul>
                <?php echo $v['date_add'];?>
                <div class="fr">
                    实付：￥<?php echo $v['money_end'];?>
                </div>
            </div>
            <div class="panel-footer">
                <?php if($v['status'] == 1){ ?>
                    <input type="button" class="btn btn-primary" value="去付款" onclick="pay(<?php echo $v['id'];?>)">
                <?php } ?>
            </div>
        </div>
        <?php }}else{ ?>
        <div>
            当前没有订单。
        </div>
        <?php } ?>
    </div>
    <div class="tab-pane" id="order_1">
        <?php if(!empty($data_order_1)){ foreach($data_order_1 as $v){ ?>
        <div class="panel panel-default panel-shadow">
            <div class="panel-heading">
                <a href="<?php echo site_url('order/show?id='.$v['id']);?>"><?php echo $v['order_no'];?></a>
                <div class="panel-actions">
                    <?php echo $order_status[$v['status']];?>
                </div>
            </div>
            <div class="panel-body">
                <ul class="list-group">
                    <?php if(!empty($v['goods'])){ foreach($v['goods'] as $vv){ ?>
                    <li class="list-group-item list-group-item-full" id="cart_tr_<?php echo $vv['id'];?>">
                        <div class="cart_default_img">
                            <a href="<?php echo site_url('goods/my_show?id='.$vv['goods_id']);?>"><img src="<?php echo base_url($vv['image']);?>"/></a>
                        </div>
                        <div class="cart_default_content_top">
                            <a href="<?php echo site_url('goods/my_show?id='.$vv['goods_id']);?>"><?php echo $vv['goods_name'];?></a>
                        </div>
                        <div class="cart_default_content_bottom">
                            <span>￥<?php echo $vv['money'];?></span>
                        </div>
                        <div class="cart_default_content_bottom_right">
                            x&nbsp;<?php echo $vv['amount'];?>
                        </div>
                    </li>
                    <?php }} ?>
                </ul>
                <?php echo $v['date_add'];?>
                <div class="fr">
                    实付：￥<?php echo $v['money_end'];?>
                </div>
            </div>
            <div class="panel-footer">
                <?php if($v['status'] == 1){ ?>
                <input type="button" class="btn btn-primary" value="去付款" onclick="pay(<?php echo $v['id'];?>)">
                <?php } ?>
            </div>
        </div>
        <?php }}else{ ?>
        <div>
            当前没有订单。
        </div>
        <?php } ?>
    </div>
    <div class="tab-pane" id="order_2">
        <?php if(!empty($data_order_2)){ foreach($data_order_2 as $v){ ?>
        <div class="panel panel-default panel-shadow">
            <div class="panel-heading">
                <a href="<?php echo site_url('order/show?id='.$v['id']);?>"><?php echo $v['order_no'];?></a>
                <div class="panel-actions">
                    <?php echo $order_status[$v['status']];?>
                </div>
            </div>
            <div class="panel-body">
                <ul class="list-group">
                    <?php if(!empty($v['goods'])){ foreach($v['goods'] as $vv){ ?>
                    <li class="list-group-item list-group-item-full" id="cart_tr_<?php echo $vv['id'];?>">
                        <div class="cart_default_img">
                            <a href="<?php echo site_url('goods/my_show?id='.$vv['goods_id']);?>"><img src="<?php echo base_url($vv['image']);?>"/></a>
                        </div>
                        <div class="cart_default_content_top">
                            <a href="<?php echo site_url('goods/my_show?id='.$vv['goods_id']);?>"><?php echo $vv['goods_name'];?></a>
                        </div>
                        <div class="cart_default_content_bottom">
                            <span>￥<?php echo $vv['money'];?></span>
                        </div>
                        <div class="cart_default_content_bottom_right">
                            x&nbsp;<?php echo $vv['amount'];?>
                        </div>
                    </li>
                    <?php }} ?>
                </ul>
                <?php echo $v['date_add'];?>
                <div class="fr">
                    实付：￥<?php echo $v['money_end'];?>
                </div>
            </div>
        </div>
        <?php }}else{ ?>
        <div>
            当前没有订单。
        </div>
        <?php } ?>
    </div>
    <div class="tab-pane" id="order_3">
        <?php if(!empty($data_order_3)){ foreach($data_order_3 as $v){ ?>
        <div class="panel panel-default panel-shadow">
            <div class="panel-heading">
                <a href="<?php echo site_url('order/show?id='.$v['id']);?>"><?php echo $v['order_no'];?></a>
                <div class="panel-actions">
                    <?php echo $order_status[$v['status']];?>
                </div>
            </div>
            <div class="panel-body">
                <ul class="list-group">
                    <?php if(!empty($v['goods'])){ foreach($v['goods'] as $vv){ ?>
                    <li class="list-group-item list-group-item-full" id="cart_tr_<?php echo $vv['id'];?>">
                        <div class="cart_default_img">
                            <a href="<?php echo site_url('goods/my_show?id='.$vv['goods_id']);?>"><img src="<?php echo base_url($vv['image']);?>"/></a>
                        </div>
                        <div class="cart_default_content_top">
                            <a href="<?php echo site_url('goods/my_show?id='.$vv['goods_id']);?>"><?php echo $vv['goods_name'];?></a>
                        </div>
                        <div class="cart_default_content_bottom">
                            <span>￥<?php echo $vv['money'];?></span>
                        </div>
                        <div class="cart_default_content_bottom_right">
                            x&nbsp;<?php echo $vv['amount'];?>
                        </div>
                    </li>
                    <?php }} ?>
                </ul>
                <?php echo $v['date_add'];?>
                <div class="fr">
                    实付：￥<?php echo $v['money_end'];?>
                </div>
            </div>
        </div>
        <?php }}else{ ?>
        <div>
            当前没有订单。
        </div>
        <?php } ?>
    </div>
    <div class="tab-pane" id="order_4">
        <?php if(!empty($data_order_4)){ foreach($data_order_4 as $v){ ?>
        <div class="panel panel-default panel-shadow">
            <div class="panel-heading">
                <a href="<?php echo site_url('order/show?id='.$v['id']);?>"><?php echo $v['order_no'];?></a>
                <div class="panel-actions">
                    <?php echo $order_status[$v['status']];?>
                </div>
            </div>
            <div class="panel-body">
                <ul class="list-group">
                    <?php if(!empty($v['goods'])){ foreach($v['goods'] as $vv){ ?>
                    <li class="list-group-item list-group-item-full" id="cart_tr_<?php echo $vv['id'];?>">
                        <div class="cart_default_img">
                            <a href="<?php echo site_url('goods/my_show?id='.$vv['goods_id']);?>"><img src="<?php echo base_url($vv['image']);?>"/></a>
                        </div>
                        <div class="cart_default_content_top">
                            <a href="<?php echo site_url('goods/my_show?id='.$vv['goods_id']);?>"><?php echo $vv['goods_name'];?></a>
                        </div>
                        <div class="cart_default_content_bottom">
                            <span>￥<?php echo $vv['money'];?></span>
                        </div>
                        <div class="cart_default_content_bottom_right">
                            x&nbsp;<?php echo $vv['amount'];?>
                        </div>
                    </li>
                    <?php }} ?>
                </ul>
                <?php echo $v['date_add'];?>
                <div class="fr">
                    实付：￥<?php echo $v['money_end'];?>
                </div>
            </div>
        </div>
        <?php }}else{ ?>
        <div>
            当前没有订单。
        </div>
        <?php } ?>
    </div>
</div>
<script type="text/javascript">
    //去付款
    function pay(id){
        location.href = "<?php echo site_url('order/order_pay');?>"+"?id="+id;
    }
</script>