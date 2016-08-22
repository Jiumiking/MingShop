<div class="col-lg-12">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h2>修改密码</h2>
        </div>
        <div class="panel-body">
            <form action="" method="post" enctype="multipart/form-data" class="form-horizontal ">
                <?php if( !empty($old_show) ){ ?>
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">原密码</label>
                    <div class="col-lg-10 col-md-10">
                        <input type="hidden" name="pwd_uid" id="pwd_uid" value="">
                        <input type="password" name="pwd_o" id="pwd_o" value="" class="form-control" placeholder="输入原密码">
                        <span class="error-block" id="m_pwd_o"></span>
                    </div>
                </div>
                <?php } ?>
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">新密码</label>
                    <div class="col-lg-10 col-md-10">
                        <input type="password" name="pwd_n" id="pwd_n" value="" class="form-control" placeholder="输入新密码">
                        <span class="error-block" id="m_pwd_n"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">确认密码</label>
                    <div class="col-lg-10 col-md-10">
                        <input type="password" name="pwd_n2" id="pwd_n2" value="" class="form-control" placeholder="再次输入密码">
                        <span class="error-block" id="m_pwd_n2"></span>
                    </div>
                </div>
                <br>
            </form>
        </div>
        <div class="panel-footer">
            <input type="button" class="btn btn-sm btn-success" value="确认" onclick="change_user_pwd_do()">
            <input type="button" class="btn btn-sm btn-danger" value="返回" onclick="back()">
        </div>
    </div>
</div>