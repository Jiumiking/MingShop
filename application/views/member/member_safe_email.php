<form class="form-horizontal" id="base_form" method="post" action="<?php echo site_url('member/safe_email_do')?>">
    <div class="form-group">
        <div class="col-lg-2 col-md-2 control-label" for="text-input">邮箱地址</div>
        <div class="col-lg-10 col-md-10">
            <input class="form-control" id="email" name="email" type="email" value="" placeholder="email" maxlength="50" onkeydown="javascript:if(event.keyCode == 13){return false;}">
            <span id="m_email" class="error-block"></span>
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
                var email = $("#email").authen({err_name:'邮箱',reg:'email',empty:false});
                if(email){
                    $("#submit_btn").attr("disabled","disabled");
                }
                return email;
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