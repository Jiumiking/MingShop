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
                    <input type="text" class="form-control" name="name" id="name" value="<?php echo empty($data['name'])?'':$data['name']; ?>" placeholder="输入名称">
                    <span class="error-block" id="m_name"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">符号</label>
                <div class="col-lg-10 col-md-10">
                    <input type="text" class="form-control" name="key" id="key" value="<?php echo empty($data['key'])?'':$data['key']; ?>" placeholder="输入符号">
                    <span class="error-block" id="m_name_key"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">启用</label>
                <div class="col-lg-10 col-md-10">
                    <label class="radio-inline" >
                        <input name="status" type="radio" value="1" <?php if( !empty($data['status']) && $data['status'] == '1' ){ ?> checked="checked" <?php } ?>>
                        启用
                    </label>
                    <label class="radio-inline">
                        <input name="status" type="radio" value="2" <?php if( empty($data['status']) || $data['status'] == '2' ){ ?> checked="checked" <?php } ?>>
                        禁用
                    </label>
                </div>
            </div>
        </form>
    </div>
    <div class="panel-footer">
        <input type="button" class="btn btn-sm btn-success" value="确认" onclick="edit_do()">
        <input type="button" class="btn btn-sm btn-danger" value="返回" onclick="back()">
    </div>
</div>
