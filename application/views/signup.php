<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
<?php $this->load->view('base/header_nav'); ?>
<?php $this->load->view('base/header_menu'); ?>
<div class="container" id="site_main">
    <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
        <form id="sign_form" method="post" action="<?php echo site_url('sign/signup_do')?>">
            <div class="form-group">
                <input class="form-control" id="phone" name="phone" type="text" value="" placeholder="手机号" maxlength="20">
                <span id="m_phone" class="error-block"></span>
            </div>
            <div class="form-group">
                <input class="form-control" id="password" name="password" type="password" value="" placeholder="密码" maxlength="50">
                <span id="m_password" class="error-block"></span>
            </div>
            <div class="form-group">
                <input class="form-control" id="password2" name="password2" type="password" value="" placeholder="再次输入密码" maxlength="50">
                <span id="m_password2" class="error-block"></span>
            </div>
            <div class="form-group">
                <input class="form-control haf" id="verification_code" type="text" placeholder="验证码"/>
                <div class="haf fr">
                    <img class="captcha" src="<?php echo site_url('sign/captcha_get');?>" id="cap" onclick="captcha_change();"/>
                </div>
                <span id="m_verification_code" class="error-block"></span>
            </div>
            <div class="form-group">
                <input class="form-control haf" id="phone_code" name="phone_code" type="text" value="" placeholder="短信验证码" maxlength="10">
                <input class="form-control btn-info haf fr" type="button" id="phone_code_btn" value="获取验证码" onclick="phone_code_get();">
                <span id="m_phone_code" class="error-block"></span>
            </div>
            <div class="form-group">
                <input class="form-control btn-primary" id="sign_btn" type="button" onclick="sign_submit();" value="立即注册">
            </div>
            <div class="form-group">
                有账号？去<a href="<?php echo site_url('sign/signin')?>" class="cp  mt5">登录</a>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript">
    function sign_submit(){
        var phone = true;
        var phone2 = true;
        var email = true;
        var email2 = true;

        phone = $("#phone").authen({reg:'mobile',err_name:'手机号码',min_length:2,max_length:20,empty:false});
        if( phone ){
            phone2 = $("#phone").authen({
                type:'functions',
                functions:function(val){
                    var mark = false;
                    $.ajax({
                        type : "GET",
                        async : false,
                        url : "<?php echo site_url('sign/phone_email_unique');?>",
                        data : { value:val },
                        success : function(msg){
                            if(msg == 1){
                                mark = true;
                            }
                        }
                    });
                    if(mark){
                        return '该手机号码已注册';
                    }
                    return true;
                },
                empty:false
            });
            if( !phone_code_check() ){//手机验证码验证
                return false;
            }
        }

        
        var password = $("#password").authen({reg:'password',err_name:'密码',min_length:6,max_length:20,empty:false});
        var password2 = $("#password2").authen({reg:'password2',pwd_id:'password',empty:false});

        if( !captcha_check() ){
            return false;
        }

        if( phone && phone2 && password && password2 ){
            $("#sign_form").submit();
            $("#submit_btn").attr("disabled","disabled");
        }
    }
    function captcha_change(){
        $("#cap").attr('src',"<?php echo site_url('sign/captcha_get');?>"+"?t="+Math.random());
    }
    function captcha_check() {
        var code = document.getElementById('verification_code').value;
        if ( code == '' ){
            $("#m_verification_code").html('请输入验证码');
            return false;
        }
        var mark = false;
        $.ajax({
            type: "GET",
            async: false,
            url: "<?php echo site_url('sign/captcha_check');?>",
            data: {code: code},
            success: function (msg) {
                if (msg) {
                    if (msg == '1') {
                        mark = true;
                        $("#m_verification_code").html('');
                    }else{
                        $("#m_verification_code").html('验证码错误或已过期');
                    }
                }
            }
        });
        return mark;
    }
    function phone_code_check(){return true;
        $("#m_phone_code").html('短信验证码错误或已过期');
        return false;
    }
    function phone_code_get(){
        if( !captcha_check() ){
            $("#verification_code").focus();
            return false;
        }
        phone_code_timer(60);
        $("#phone_code").focus();
        $("#phone_code_btn").attr("disabled","disabled");
    }
    function phone_code_timer(ss){
        var btn = $("#phone_code_btn");
        if( ss >= 0 ){
            btn.val("重新获取("+ss+")");
            ss--;
            setTimeout("phone_code_timer("+ss+")",1000);
        }else{
            btn.val("获取验证码");
            $("#phone_code_btn").removeAttr("disabled");
        }
    }
</script>
<?php $this->load->view('base/footer'); ?>