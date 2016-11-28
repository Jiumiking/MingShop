<?php if(!empty($data_comment)){ foreach($data_comment as $k=>$v){ ?>
    <div class="media">
        <div class="media-left">
            <a href="#">
                <img class="media-object" src="<?php echo base_url('uploads/default_user.png');?>" data-holder-rendered="true">
            </a>
        </div>
        <div class="media-body">
            <h5 class="media-heading">
                <a href="javascript:void(0);"><?php echo empty($v['member_name'])?'':$v['member_name'];?></a>
                <div class="fr">
                    <small id="comment_up_num_<?php echo $v['id'];?>"><?php echo empty($v['up'])?'':$v['up'];?></small>
                    <a class="sm" href="javascript:comment_up(<?php echo $v['id'];?>)" title="赞"><li class="fa fa-thumbs-up <?php if(!empty($data_comment_up)){ foreach($data_comment_up as $u){ if($u['comment_id'] == $v['id']){ ?>primary-block<?php break; }}} ?>" id="comment_up_fa_<?php echo $v['id'];?>"></li></a>
                </div>
            </h5>
            <?php echo empty($v['content'])?'':$v['content'];?>
            <div class="sm">
                <small>
                    <?php echo $v['date_add'];?>
                    <a class="sm" href="javascript:comment_replay(<?php echo $v['id'];?>)">回复</a>
                </small>
            </div>
            <div id="comment_replay_<?php echo $v['id'];?>" class="hiden">
                <textarea class="form-control" rows="3" placeholder="写下你的评论..."></textarea>
                <div class="mt10">
                    <input type="button" class="btn btn-default btn-sm" value="取消" onclick="comment_hide(<?php echo $v['id'];?>)">
                    <input type="button" class="btn btn-primary btn-sm" value="确定" onclick="comment_submit( <?php echo $v['id'];?>, <?php echo $v['id'];?>, <?php echo $v['member_id'];?>)">
                </div>
            </div>

            <?php if(!empty($v['children'])){ foreach($v['children'] as $kk=>$vv){ ?>
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object"  src="<?php echo base_url('uploads/default_user.png');?>" data-holder-rendered="true">
                        </a>
                    </div>
                    <div class="media-body">
                        <h5 class="media-heading">
                            <a href="javascript:void(0);"><?php echo empty($vv['member_name'])?'':$vv['member_name'];?></a>
                            <?php if(!empty($vv['replay_name'])){ echo '<span class="sm">回复</span><a href="javascript:void(0);">'.$vv['replay_name'].'</a>'; } ?>
                            <div class="fr">
                                <small id="comment_up_num_<?php echo $vv['id'];?>"><?php echo empty($vv['up'])?'':$vv['up'];?></small>
                                <a class="sm" href="javascript:comment_up(<?php echo $vv['id'];?>)" title="赞"><li class="fa fa-thumbs-up <?php if(!empty($data_comment_up)){ foreach($data_comment_up as $u){ if($u['comment_id'] == $vv['id']){ ?>primary-block<?php break; }}} ?>" id="comment_up_fa_<?php echo $vv['id'];?>"></li></a>
                            </div>
                        </h5>
                        <?php echo empty($vv['content'])?'':$vv['content'];?>
                        <div class="sm">
                            <small>
                                <?php echo $vv['date_add'];?>
                                <a class="sm" href="javascript:comment_replay(<?php echo $vv['id'];?>)">回复</a>
                            </small>
                        </div>
                        <div id="comment_replay_<?php echo $vv['id'];?>" class="hiden">
                            <textarea class="form-control" rows="3" placeholder="写下你的评论..."></textarea>
                            <div class="mt10">
                                <input type="button" class="btn btn-default btn-sm" value="取消" onclick="comment_hide(<?php echo $vv['id'];?>)">
                                <input type="button" class="btn btn-primary btn-sm" value="确定" onclick="comment_submit( <?php echo $vv['id'];?>, <?php echo $v['id'];?>, <?php echo $vv['member_id'];?>)">
                            </div>
                        </div>
                    </div>
                </div>
            <?php }} ?>
        </div>
    </div>
<?php }} ?>
<div class="mt20" id="comment_replay_0">
    <textarea class="form-control" rows="3" placeholder="写下你的评论..."></textarea>
    <div class="mt10">
        <input type="button" class="btn btn-primary btn-sm" value="确定" onclick="comment_submit(0,0,0)">
    </div>
</div>

<script type="text/javascript">
    var comment = [];
    comment.otype = '<?php echo $otype;?>';
    comment.oid = '<?php echo $oid;?>';
    //显示评论输入框
    function comment_replay( id ){
        $("#comment_replay_"+id).show();
    }
    //隐藏评论输入框
    function comment_hide( id ){
        if( id != 0 ){
            $("#comment_replay_"+id).hide();
        }
    }
    //评论提交
    function comment_submit( id, pid, mid ){
        var content = $("#comment_replay_"+id).find('textarea').val();
        $.ajax({
            type : "POST",
            async : true,
            url : "<?php echo site_url('comment/my_add');?>",
            data : { oid:comment.oid, otype:comment.otype, pid:pid, mid:mid, content:content },
            success : function(msg){
                if(msg){
                    var msgobj = eval("("+ msg +")");
                    if(msgobj.sta == '1'){
                        ming_alert('评论成功，等待审核',1);
                        comment_hide( id );
                    }else{
                        ming_alert(msgobj.msg);
                    }
                }
            }
        });
    }
    //赞
    function comment_up( id ){
        var type = 1;
        if( $("#comment_up_fa_"+id).hasClass('primary-block') ){
            type = 2;
        }
        $.ajax({
            type : "POST",
            async : true,
            url : "<?php echo site_url('comment/ajax_up');?>",
            data : { id:id, type:type },
            success : function(msg){
                if(msg){
                    var msgobj = eval("("+ msg +")");
                    if(msgobj.sta == '1'){
                        if( type == 1 ){
                            $("#comment_up_fa_"+id).addClass('primary-block')
                        }else{
                            $("#comment_up_fa_"+id).removeClass('primary-block')
                        }
                        $("#comment_up_num_"+id).html(msgobj.dat);
                    }else{
                        ming_alert(msgobj.msg);
                    }
                }
            }
        });
    }
</script>
