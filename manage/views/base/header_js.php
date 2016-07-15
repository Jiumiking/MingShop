<script type="text/javascript">
$(document).ready(function(){
    $("#base_web").click(function(){
        var url = "<?php echo $this->config->item('base_web');?>";
        if( url != '' ){
            window.location.href= "<?php echo $this->config->item('base_web');?>";
        }
    });
});
//修改密码
function change_user_pwd(id){
    if( id == '' ){
        return false;
    }
    $("#user_id_checked").val(id);
    $.ajax({
        type : "GET",
        async : true,
        url : "<?php echo site_url('user/change_pwd');?>",
        data : { id:id },
        success : function(msg){
            if(msg){
                var msgobj = eval("("+ msg +")");
                if(msgobj.sta == '1'){
                    $('#div_show').html(msgobj.dat);
                    $('#div_show').show();
                    $('#div_content').hide();
                }else{
                    alert(msgobj.msg);
                }
            }
        }
    });
}
//修改密码
function change_user_pwd_do(){
    var id = $('#user_id_checked').val();
    var pwd_o = $("#pwd_o").val();
    var pwd_n = $("#pwd_n").val();
    var pwd_n2 = $("#pwd_n2").val();

    var pwd_o_c = true;
    if(pwd_o != undefined){
        pwd_o_c = $("#pwd_o").authen({ //密码验证
            type:'functions',
            functions:function(val){
                var mark = false;
                $.ajax({
                    type : "GET",
                    async : false,
                    url : "<?php echo site_url('user/is_pwd');?>",
                    data : { id:id, pwd:pwd_o },
                    success : function(msg){
                        var msgobj = eval("("+ msg +")");
                        if(msgobj.sta == '1'){
                            mark = true;
                        }
                    }
                });
                if(!mark){
                    return '密码错误';
                }
                return true;
            },
            err_name:'原密码',
            empty:false
        });
    }
    
    var pwd_n_c = $("#pwd_n").authen({reg:'password',err_name:'密码',min_length:6,max_length:20,empty:false});
    var pwd_n2_c = $("#pwd_n2").authen({reg:'password2',pwd_id:'pwd_n',empty:false});
    if( pwd_o_c && pwd_n_c && pwd_n2_c){
        $.ajax({
            type : "GET",
            async : true,
            url : "<?php echo site_url('user/change_pwd_do');?>",
            data : { id:id,pwd:pwd_n },
            success : function(msg){
                var msgobj = eval("("+ msg +")");
                if(msgobj.sta == '1'){
                    alert('修改成功');
                    back();
                }else{
                    alert('修改失败');
                }
            }
        });
    }
}
//返回
function back(){
    $('#div_show').hide();
    $('#div_content').show();
}
</script>