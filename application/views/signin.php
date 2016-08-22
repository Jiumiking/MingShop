<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
<?php $this->load->view('base/header_nav'); ?>
<?php $this->load->view('base/header_menu'); ?>
<div class="container" id="site_main">
    <div class="row">
        <div class="col-md-12">
            <div id="main_alert" class="alert" style="display:none;">
                <button type="button" class="close" data-dismiss="alert" 
                    aria-hidden="true">
                    &times;
                </button>
                <span id="main_alert_content"></span>
            </div>
        </div>
    </div>
    <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
        <form id="sign_form" method="post" action="<?php echo site_url('sign/signin_do')?>">
            <div class="form-group">
                <input class="form-control" id="username" name="username" type="text" class="text" value="" placeholder="手机号/邮箱" maxlength="50">
                <span id="m_username" class="error-block"></span>
            </div>
            
            <div class="form-group">
                <input class="form-control" id="password" name="password" type="password" value="" placeholder="密码" maxlength="50">
                <span id="m_password" class="error-block"></span>
            </div>
            <div class="form-group">
                <input class="form-control haf" id="verification_code" type="text" class="hf" placeholder="验证码"/>
                <img class="captcha haf" src="<?php echo site_url('sign/captcha_get');?>" id="cap" onclick="captcha_change();"/>
                <span id="m_verification_code" class="error-block"></span>
            </div>

            <div class="form-group">
                <input class="form-control btn-primary" id="sign_btn" type="button" onclick="sign_submit();" value="登录">
            </div>
        </form>
    </div>
</div>
<script type="text/javascript">
    function sign_submit(){
        var username = true;
        var password = true;
        username = $("#username").authen({reg:['mobile','email'],err_name:'手机号或邮箱',empty:false});
        password = $("#password").authen({err_name:'密码',empty:false});
        if( !captcha_check() ){
            return false;
        }
        if( username && password ){
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
    $("#username").keyup(function(event){
        if( event.keyCode == 13 ){
            sign_submit();
        }
    });
    $("#password").keyup(function(event){
        if( event.keyCode == 13 ){
            sign_submit();
        }
    });
    $("#verification_code").keyup(function(event){
        if( event.keyCode == 13 ){
            sign_submit();
        }
    });
</script>
<?php $this->load->view('base/footer'); ?>