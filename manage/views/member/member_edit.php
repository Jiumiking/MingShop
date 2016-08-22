<div class="panel panel-default">
    <div class="panel-heading">
        <h2>编辑</h2>
    </div>
    <div class="panel-body">
        <form class="form-horizontal" name="edit_form" id="edit_form" action="<?php echo site_url($this_controller.'/my_edit_do');?>" method="post">
            <input type="hidden" name="id" value="<?php echo empty($data['id'])?'':$data['id']; ?>">
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">名称</label>
                <div class="col-lg-10 col-md-10">
                    <input type="text" class="form-control" name="name_real" id="name_real" value="<?php echo empty($data['name_real'])?'':$data['name_real']; ?>" placeholder="输入名称">
                    <span class="error-block" id="m_name_real"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">昵称</label>
                <div class="col-lg-10 col-md-10">
                    <input type="text" class="form-control" name="name_nick" id="name_nick" value="<?php echo empty($data['name_nick'])?'':$data['name_nick']; ?>" placeholder="输入昵称">
                    <span class="error-block" id="m_name_nick"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">性别</label>
                <div class="col-lg-10 col-md-10">
                    <label class="radio-inline" >
                        <input name="sex" type="radio" value="0" <?php if( empty($data['sex']) ){ ?> checked="checked" <?php } ?>>
                        保密
                    </label>
                    <label class="radio-inline" >
                        <input name="sex" type="radio" value="1" <?php if( !empty($data['sex']) && $data['sex'] == '1' ){ ?> checked="checked" <?php } ?>>
                        男
                    </label>
                    <label class="radio-inline">
                        <input name="sex" type="radio" value="2" <?php if( !empty($data['sex']) && $data['sex'] == '2' ){ ?> checked="checked" <?php } ?>>
                        女
                    </label>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">手机号</label>
                <div class="col-lg-10 col-md-10">
                    <input type="text" class="form-control" name="phone" id="phone" value="<?php echo empty($data['phone'])?'':$data['phone']; ?>" placeholder="输入手机号">
                    <span class="error-block" id="m_phone"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">邮箱</label>
                <div class="col-lg-10 col-md-10">
                    <input type="text" class="form-control" name="email" id="email" value="<?php echo empty($data['email'])?'':$data['email']; ?>" placeholder="输入邮箱">
                    <span class="error-block" id="m_email"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">微信</label>
                <div class="col-lg-10 col-md-10">
                    <input type="text" class="form-control" name="weixin" id="weixin" value="<?php echo empty($data['weixin'])?'':$data['weixin']; ?>" placeholder="输入微信">
                    <span class="error-block" id="m_weixin"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">QQ</label>
                <div class="col-lg-10 col-md-10">
                    <input type="text" class="form-control" name="qq" id="qq" value="<?php echo empty($data['qq'])?'':$data['qq']; ?>" placeholder="输入QQ">
                    <span class="error-block" id="m_qq"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">生日</label>
                <div class="col-lg-10 col-md-10">
                    <input type="text" class="form-control" name="birthday" id="birthday" value="<?php echo empty($data['birthday'])?'':$data['birthday']; ?>" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',alwaysUseStartDate:true})" placeholder="输入生日">
                    <span class="error-block" id="m_email"></span>
                </div>
            </div>
        </form>
    </div>
    <div class="panel-footer">
        <input type="button" class="btn btn-sm btn-success" value="确认" onclick="edit_do()">
        <input type="button" class="btn btn-sm btn-danger" value="返回" onclick="back()">
    </div>
</div>
