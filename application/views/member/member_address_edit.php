<form class="form-horizontal" id="base_form" method="post" action="<?php echo site_url('member/address_edit_do')?>">
    <div class="form-group">
        <div class="col-lg-2 col-md-2 control-label" for="text-input">收货人</div>
        <div class="col-lg-10 col-md-10">
            <input class="form-control" id="person" name="person" type="text" value="<?php echo empty($data['person'])?'':$data['person'];?>" placeholder="收货人" maxlength="50">
            <span id="m_person" class="error-block"></span>
        </div>
    </div>
    <div class="form-group">
        <div class="col-lg-2 col-md-2 control-label" for="text-input">手机号码</div>
        <div class="col-lg-10 col-md-10">
            <input class="form-control" id="phone" name="phone" type="text" value="<?php echo empty($data['phone'])?'':$data['phone'];?>" placeholder="手机号码" maxlength="50">
            <span id="m_phone" class="error-block"></span>
        </div>
    </div>
    <div class="form-group">
        <div class="col-lg-2 col-md-2 control-label" for="text-input">所在地区</div>
        <div class="col-lg-10 col-md-10">
            <select class="form_select" name="province" id="province">
                <option value="">请选择</option>
            </select>
            <select class="form_select" name="city" id="city">
                <option value="">请选择</option>
            </select>
            <select class="form_select" name="area" id="area">
                <option value="">请选择</option>
            </select>
            <span id="m_province" class="error-block"></span>
            <span id="m_city" class="error-block"></span>
            <span id="m_area" class="error-block"></span>
        </div>
    </div>
    <div class="form-group">
        <div class="col-lg-2 col-md-2 control-label" for="text-input">详细地址</div>
        <div class="col-lg-10 col-md-10">
            <input class="form-control" id="detail" name="detail" type="text" value="<?php echo empty($data['detail'])?'':$data['detail'];?>" placeholder="详细地址" maxlength="100">
            <span id="m_detail" class="error-block"></span>
        </div>
    </div>
    <div class="form-group">
        <div class="col-lg-2 col-md-2 control-label" for="text-input">地址别名</div>
        <div class="col-lg-10 col-md-10">
            <input class="form-control" id="name" name="name" type="text" value="<?php echo empty($data['name'])?'':$data['name'];?>" placeholder="如：家、公司等" maxlength="20">
            <span id="m_name" class="error-block"></span>
        </div>
    </div>

    <div class="form-group">
        <label class="col-lg-2 col-md-2 control-label" for="text-input"></label>
        <div class="col-lg-10 col-md-10">
            <input type="hidden" name="id" value="<?php echo empty($data['id'])?'':$data['id'];?>">
            <input class="btn btn-primary" id="submit_btn" type="button" onclick="form_submit();" value="保存">
            <?php if(!empty($ajax)){ ?>
            <a class="btn btn-default" href="javascript:address_change()">返回</a>
            <?php }else{ ?>
            <a class="btn btn-default" href="<?php echo site_url('member/address');?>">返回</a>
            <?php } ?>
            <span id="message" class="error-block"></span>
        </div>
    </div>
</form>
<?php $this->load->view('base/address_js.php'); ?>
<script type="text/javascript">
function form_submit(){
    $('#base_form').ajaxSubmit({
        beforeSubmit: function(){
            var person = $("#person").authen({reg:'nickname',err_name:'收货人',min_length:2,max_length:20,empty:false});
            var phone = $("#phone").authen({reg:'mobile',err_name:'手机号码',empty:false});
            var province = $("#province").authen({err_name:'省',empty:false});
            var city = $("#city").authen({err_name:'市',empty:false});
            var area = $("#area").authen({err_name:'区',empty:false});
            var detail = $("#detail").authen({err_name:'详细地址',empty:false});
            var name = $("#name").authen({err_name:'地址别名',empty:false});

            var back = person && phone && province && city && area && detail && name;
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
                }else{
                    ming_alert(msgobj.msg,1);
                }
            }
        }
    });
}
//返回
function back(){
    <?php if(!empty($ajax)){ ?>
    address_change();
    <?php }else{ ?>
    window.location.href = "<?php echo site_url('member/address');?>";
    <?php } ?>
}
</script>