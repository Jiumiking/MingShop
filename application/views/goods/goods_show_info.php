<h3><?php echo empty($data['name'])?'':$data['name'];?></h3>
<small><?php echo empty($data['title'])?'':$data['title'];?></small>
<h4 class="error-block alert alert-success">￥<span id="goods_info_money"><?php echo empty($data['money_out'])?'':$data['money_out'];?></span></h4>
<div>
<?php if(!empty($type_format)){ foreach($type_format as $k=>$v){ ?>
    <div class="mb10">
    <?php if(!empty($v['format'])){ ?>
        <div class="">
        <?php echo $v['format']['name'];?>
        </div>
    <?php } ?>
    <?php if(!empty($v['format_value'])){ foreach($v['format_value'] as $vv){ ?>
        <a href="javascript:void(0);" class="box" name="format<?php echo $k;?>" data="<?php echo $vv['id'];?>" onclick="format_check(this)" <?php if($v['format']['id'] == 1){//颜色 ?>style="background-color:rgb(<?php echo $vv['remark']?>)"<?php } ?> title="<?php echo $vv['name'];?>">
        <?php if($v['format']['id'] != 1){//非颜色 ?>
        <?php echo $vv['name'];?>
        <?php } ?>
        </a>
    <?php }} ?>
    </div>
<?php }} ?>
</div>
<input type="hidden" name="goods_amout_id" id="goods_info_amount_id" value="">
<div>
    <input type="button" class="btn btn-primary" value="加入购物车" onclick="cart_add()"><small>库存<span id="goods_info_amount"></span></small>
</div>
