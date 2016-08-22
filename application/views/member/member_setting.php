<ul class="nav tab-menu nav-tabs">
    <li role="presentation" class="active"><a data-toggle="tab" href="#setting_base">基本设置</a></li>
    <li role="presentation"><a data-toggle="tab" href="#setting_img">头像设置</a></li>
</ul>
<div class="tab-content">
    <div class="tab-pane active" id="setting_base">
        <form class="form-horizontal" id="user_form" method="post" action="<?php echo site_url('member/setting_do')?>">
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">昵称</label>
                <div class="col-lg-10 col-md-10">
                    <input class="form-control" id="name_nick" name="member_data[name_nick]" type="text" value="<?php echo empty($this_user['name_nick'])?'':$this_user['name_nick']; ?>" placeholder="昵称" maxlength="20">
                    <span id="m_name_nick" class="error-block"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">姓名</label>
                <div class="col-lg-10 col-md-10">
                    <input class="form-control" id="name_real" name="member_data[name_real]" type="text" value="<?php echo empty($this_user['name_real'])?'':$this_user['name_real']; ?>" placeholder="真实姓名" maxlength="20">
                    <span id="m_name_real" class="error-block"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">性别</label>
                <div class="col-lg-10 col-md-10">
                    <label class="radio-inline" >
                        <input name="member_data[sex]" type="radio" value="0" <?php if( empty($this_user['sex']) ){ ?> checked="checked" <?php } ?>>
                        保密
                    </label>
                    <label class="radio-inline" >
                        <input name="member_data[sex]" type="radio" value="1" <?php if( !empty($this_user['sex']) && $this_user['sex'] == '1' ){ ?> checked="checked" <?php } ?>>
                        男
                    </label>
                    <label class="radio-inline">
                        <input name="member_data[sex]" type="radio" value="2" <?php if( !empty($this_user['sex']) && $this_user['sex'] == '2' ){ ?> checked="checked" <?php } ?>>
                        女
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">生日</label>
                <div class="col-lg-10 col-md-10">
                    <select name="member_data[birthday][year]" class="form-control select_il" id="birthday_year">
                        <option value="0">请选择</option>
                        <?php
                        for( $i=2015;$i>=1930;$i-- ){
                            echo "<option value='".$i."' ";
                            if(!empty($this_user['birthday']) && date('Y',strtotime($this_user['birthday']))==$i){
                                echo 'selected="selected"';
                            }
                            echo ">".$i."</option>";
                        }
                        ?>
                    </select>
                    <label class="ml5 mr5">年</label>
                    <select name="member_data[birthday][month]" class="form-control select_il" id="birthday_month">
                        <option value="0">请选择</option>
                        <?php
                        for( $i=1;$i<=12;$i++ ){
                            echo "<option value='".$i."' ";
                            if(!empty($this_user['birthday']) && date('m',strtotime($this_user['birthday']))==$i){
                                echo 'selected="selected"';
                            }
                            echo ">".$i."</option>";
                        }
                        ?>
                    </select>
                    <label class="ml5 mr5">月</label>
                    <select name="member_data[birthday][day]" class="form-control select_il" id="birthday_day">
                        <option value="0">请选择</option>
                        <?php
                        for( $i=1;$i<=31;$i++ ){
                            echo "<option value='".$i."' ";
                            if(!empty($this_user['birthday']) && date('d',strtotime($this_user['birthday']))==$i){
                                echo 'selected="selected"';
                            }
                            echo ">".$i."</option>";
                        }
                        ?>
                    </select>
                    <label class="ml5 mr5">日</label>
                    <span id="m_name_real" class="error-block"></span>
                </div>
            </div>

            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input"></label>
                <div class="col-lg-10 col-md-10">
                    <input type="hidden" name="member_data[id]" id="id" value="<?php echo empty($this_user['id'])?'0':$this_user['id']; ?>">
                    <input class="btn btn-primary" id="submit_btn" type="button" onclick="user_submit();" value="保存">
                    <span class="error-block" id="base_set_msg"></span>
                </div>
            </div>
        </form>
    </div>
    <div class="tab-pane" id="setting_img">
    123
    </div>
</div>
<script type="text/javascript">
    function user_submit(){
        $('#user_form').ajaxSubmit({
            beforeSubmit: function(){
                var name_nick = true;
                var name_nick2 = true;
                var name_real = true;
                name_nick = $("#name_nick").authen({reg:'nickname',err_name:'昵称',min_length:1,max_length:50,empty:false});
                name_real = $("#name_real").authen({reg:'nickname',err_name:'姓名',min_length:1,max_length:50,empty:false});
                if( name_nick ){
                    name_nick2 = $("#name_nick").authen({
                        type:'functions',
                        functions:function(val){
                            var mark = false;
                            $.ajax({
                                type : "GET",
                                async : false,
                                url : "<?php echo site_url('member/nick_unique');?>",
                                data : { value:val,id:$("#id").val() },
                                success : function(msg){
                                    if(msg == 1){
                                        mark = true;
                                    }
                                }
                            });
                            if(mark){
                                return '该昵称已使用';
                            }
                            return true;
                        },
                        empty:false
                    });
                }

                var back = name_nick && name_nick2 && name_real;
                if(back){
                    $("#submit_btn").attr("disabled","disabled");
                }
                return back;
            },
            success: function (msg) {
                if(msg){
                    var msgobj = eval("("+ msg +")");
                    if(msgobj.sta == 1){
                        ming_alert(msgobj.msg,2);
                    }else{
                        ming_alert(msgobj.msg,1);
                    }
                    $("#submit_btn").removeAttr("disabled");
                }
            }
        });
    }

</script>