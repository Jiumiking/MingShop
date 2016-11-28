<div class="panel">
    <?php if(!empty($ajax)){ ?>
    <a href="javascript:address_edit(0)" class="btn btn-info btn-xs">新增地址</a>
    <?php }else{ ?>
    <a class="btn btn-info" href="<?php echo site_url('member/address_edit');?>">新增地址</a>
    <?php } ?>
</div>
<?php if($data_member_address){ foreach($data_member_address as $v){ ?>
<div id="panel_<?php echo $v['id'];?>" class="panel panel-default">
    <div class="panel-heading">
        <?php echo empty($v['name'])?'':$v['name'];?>
        <div class="panel-actions">
            <?php if(!empty($ajax)){ ?>
            <a href="javascript:address_check(<?php echo $v['id'];?>)" class="btn btn-info btn-xs">选择</a>
            <a href="javascript:address_edit(<?php echo $v['id'];?>)" class="btn btn-info btn-xs">编辑</a>
            <?php }else{ ?>
            <a href="<?php echo site_url('member/address_edit?id='.$v['id']);?>" class="btn btn-info btn-xs">编辑</a>
            <?php } ?>
            <a href="javascript:void(0);" class="btn btn-info btn-xs" title="删除" onclick="address_del('<?php echo $v['id'];?>')">删除</a>
        </div>
    </div>
    <div class="panel-body">
        <dl class="dl-horizontal">
            <dt>收货人：</dt>
            <dd><?php echo empty($v['person'])?'':$v['person'];?></dd>
            <dt>手机号码：</dt>
            <dd><?php echo empty($v['phone'])?'':$v['phone'];?></dd>
            <dt>所在地区：</dt>
            <dd><?php foreach($data_address as $vv){ if( (!empty($v['province']) && $v['province']==$vv['number']) || (!empty($v['city']) && $v['city']==$vv['number']) || (!empty($v['area']) && $v['area']==$vv['number']) ){
                echo $vv['name'].'&nbsp;&nbsp;';
                }} ?></dd>
            <dt>详细地址：</dt>
            <dd><?php echo empty($v['detail'])?'':$v['detail'];?></dd>
        </dl>
    </div>
</div>
<?php }} ?>
<script type="text/javascript">
//删除地址
function address_del(id){
    if( confirm('确认删除？') ){
        $.ajax({
            type : "GET",
            async : true,
            url : "<?php echo site_url('member/address_del');?>",
            data : {id:id},
            success : function(msg){
                if(msg){
                    var msgobj = eval("("+ msg +")");
                    if( msgobj.sta == 1 ){
                        $("#panel_"+id).hide();
                    }
                    ming_alert(msgobj.msg,msgobj.sta);
                }
            }
        });
    }
}
//选择地址
function address_check(id){
    $.ajax({
        type : "GET",
        async : true,
        url : "<?php echo site_url('member/ajax_address_getone');?>",
        data : { id:id },
        success : function(msg){
            if(msg){
                var msgobj = eval("("+ msg +")");
                if( msgobj.sta == 1 ){
                    $("#main_content_1").show();
                    $("#main_content_2").html('');
                    $("#main_content_2").hide();

                    $("#address_person").html(msgobj.dat.person);
                    $("#address_phone").html(msgobj.dat.phone);
                    $("#address_address").html(msgobj.dat.address);
                    $("#address_detail").html(msgobj.dat.detail);
                    $("[name='address']").val(msgobj.dat.id);
                }
            }
        }
    });
}
//编辑地址
function address_edit(id){
    $.ajax({
        type : "GET",
        async : true,
        url : "<?php echo site_url('member/ajax_address_edit');?>",
        data : { id:id },
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
</script>