<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
<?php $this->load->view('base/header_nav'); ?>
<?php $this->load->view('base/header_menu'); ?>
<div class="container" id="site_main">
    <div class="row" id="main_content">
        <div class="col-md-6 mb10">
            <div class="show_img">
                <img src="<?php echo base_url('uploads/weixin/'.$data['image']);?>"/>
            </div>
        </div>
        <div class="col-md-6">
            
            <div class="fr" id="up_num">票数：<?php echo empty($data['up'])?0:$data['up'];?></div>
            <div>编号：<?php echo empty($data['id'])?'':$data['id'];?></div>
            <div>作者：<?php echo empty($data['member_name'])?'':$data['member_name'];?></div>
            <div class="mt10">
            <?php echo empty($data['content'])?'':nl2br($data['content']);?>
            </div>
            <div class="mt10">
                <input type="button" class="btn btn-primary" value="赞" onclick="up(<?php echo $data['id'];?>)">
                <a class="btn btn-default" href="<?php echo site_url('weixin_likes/my_list');?>">返回</a>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
//赞
function up( id ){
    $.ajax({
        type : "POST",
        async : true,
        url : "<?php echo site_url('weixin_likes/ajax_up');?>",
        data : { id:id },
        success : function(msg){
            if(msg){
                var msgobj = eval("("+ msg +")");
                if(msgobj.sta == '1'){
                    $("#up_num").html(msgobj.dat);
                    ming_alert(msgobj.msg,2);
                }else{
                    ming_alert(msgobj.msg,1);
                }
            }
        }
    });
}
</script>
<?php $this->load->view('base/footer'); ?>