<div class="col-lg-12">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h2><i class="fa fa-indent red"></i><strong>编辑</strong></h2>
        </div>
        <div class="panel-body">
            <form class="form-horizontal" name="edit_form" id="edit_form" action="<?php echo site_url($this_controller.'/my_edit_do');?>" method="post">
                <input type="hidden" name="id" value="<?php echo empty($data['id'])?'':$data['id']; ?>">
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">用户名</label>
                    <div class="col-lg-10 col-md-10">
                        <input type="text" class="form-control" name="name" id="name" value="<?php echo empty($data['name'])?'':$data['name']; ?>" placeholder="输入用户名">
                        <span class="error-block" id="m_name"></span>
                    </div>
                </div>
                <?php if(empty($data['id'])){ ?>
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">密码</label>
                    <div class="col-lg-10 col-md-10">
                        <input type="password" name="password" id="password" value="" class="form-control" placeholder="输入密码">
                        <span class="error-block" id="m_password"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">确认密码</label>
                    <div class="col-lg-10 col-md-10">
                        <input type="password" name="password2" id="password2" value="" class="form-control" placeholder="再次输入密码">
                        <span class="error-block" id="m_password2"></span>
                    </div>
                </div>
                <?php } ?>
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">姓名</label>
                    <div class="col-lg-10 col-md-10">
                        <input type="text" class="form-control" name="name_real" id="name_real" value="<?php echo empty($data['name_real'])?'':$data['name_real']; ?>" placeholder="输入姓名">
                        <span class="error-block" id="m_name_real"></span>
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
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">角色</label>
                    <div class="col-lg-10 col-md-10">
                        <select name="role" id="role" class="form-control">
                            <option value="">请选择</option>
                            <?php if( !empty($data_role) ){ ?>
                            <?php foreach($data_role as $value){ ?>
                            <option value="<?php echo $value['id'];?>" <?php if( !empty($data['role']) && $data['role'] == $value['id'] ){ ?> selected="selected" <?php } ?> ><?php echo $value['name'];?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
                        <span class="error-block" id="m_role"></span>
                    </div>
                </div>
            </form>
        </div>
        <div class="panel-footer">
            <input type="button" class="btn btn-sm btn-success" value="确认" onclick="edit_do()">
            <input type="button" class="btn btn-sm btn-danger" value="返回" onclick="back()">
        </div>
    </div>
</div>