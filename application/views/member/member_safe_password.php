<form class="form-horizontal" id="base_form" method="post" action="<?php echo site_url('member/safe_password_do')?>">
    <div class="form-group">
        <div class="col-lg-2 col-md-2 control-label" for="text-input">密码</div>
        <div class="col-lg-10 col-md-10">
            <input class="form-control" id="password" name="password" type="password" value="" placeholder="密码" maxlength="50">
            <span id="m_password" class="error-block"></span>
        </div>
    </div>
    <div class="form-group">
        <div class="col-lg-2 col-md-2 control-label" for="text-input">新密码</div>
        <div class="col-lg-10 col-md-10">
            <input class="form-control" id="password_new" name="password_new" type="password" value="" placeholder="新密码" maxlength="50">
            <span id="m_password_new" class="error-block"></span>
        </div>
    </div>
    <div class="form-group">
        <div class="col-lg-2 col-md-2 control-label" for="text-input">确认新密码</div>
        <div class="col-lg-10 col-md-10">
            <input class="form-control" id="password_new2" name="password_new2" type="password" value="" placeholder="再次输入新密码" maxlength="50">
            <span id="m_password_new2" class="error-block"></span>
        </div>
    </div>

    <div class="form-group">
        <div class="col-lg-2 col-md-2 control-label" for="text-input"></div>
        <div class="col-lg-10 col-md-10">
            <input class="btn btn-primary" id="submit_btn" type="button" onclick="form_submit();" value="保存">
            <a class="btn btn-default" href="<?php echo site_url('member/safe');?>">返回</a>
            <span id="message" class="error-block"></span>
        </div>
    </div>
</form>

<script type="text/javascript">
    function form_submit(){
        $('#base_form').ajaxSubmit({
            beforeSubmit: function(){
                var password = $("#password").authen({err_name:'旧密码',min_length:2,max_length:50,empty:false});
                var password2 = true;
                if( password ){
                    password2 = $("#password").authen({
                        type:'functions',
                        functions:function(val){
                            var mark = false;
                            $.ajax({
                                type : "GET",
                                async : false,
                                url : "<?php echo site_url('member/safe_password_check');?>",
                                data : { value:val },
                                success : function(msg){
                                    if(msg == 1){
                                        mark = true;
                                    }
                                }
                            });
                            if(mark){
                                return '密码错误';
                            }
                            return true;
                        },
                        empty:false
                    });
                }
                var password_new = $("#password_new").authen({reg:'password',err_name:'新密码',min_length:6,max_length:20,empty:false});
                var password_new2 = $("#password_new2").authen({reg:'password2',err_name:'新密码',pwd_id:'password_new',empty:false});

                var back = password && password2 && password_new && password_new2;
                if(back){
                    $("#submit_btn").attr("disabled","disabled");
                }
                return back;
            },
            success: function (msg) {
                if(msg){
                    var msgobj = eval("("+ msg +")");
                    $("#submit_btn").removeAttr("disabled");
                    if( msgobj.sta == 1 ){
                        ming_alert(msgobj.msg,2);
                        location.href = "<?php echo site_url('member/safe');?>";
                    }else{
                        ming_alert(msgobj.msg,1);
                    }
                }
            }
        });
    }
</script>