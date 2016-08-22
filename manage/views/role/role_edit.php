<div class="panel panel-default">
    <div class="panel-heading">
        <h2>编辑</h2>
    </div>
    <div class="panel-body">
        <form class="form-horizontal" name="edit_form" id="edit_form" action="<?php echo site_url($this_controller.'/my_edit_do');?>" method="post">
            <input type="hidden" name="id" value="<?php echo empty($data['id'])?'':$data['id']; ?>">
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">角色名称</label>
                <div class="col-lg-10 col-md-10">
                    <input type="text" class="form-control" name="name" id="name" value="<?php echo empty($data['name'])?'':$data['name']; ?>" placeholder="输入名称">
                    <span class="error-block" id="m_name"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">父角色</label>
                <div class="col-lg-10 col-md-10">
                    <select name="parent_id" class="form-control">
                        <option value="0">请选择</option>
                        <?php if( !empty($data_role) ){ ?>
                        <?php foreach($data_role as $value){ ?>
                        <option value="<?php echo $value['id'];?>" <?php if(!empty($data['parent_id']) && $data['parent_id'] == $value['id']){ ?>selected="selected"<?php } ?>><?php echo $value['name'];?></option>
                        <?php } ?>
                        <?php } ?>
                    </select>
                    <span class="error-block" id="m_role"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">备注</label>
                <div class="col-lg-10 col-md-10">
                    <input type="text" class="form-control" name="remark" id="remark" value="<?php echo empty($data['remark'])?'':$data['remark']; ?>" placeholder="输入备注">
                    <span class="error-block" id="m_remark"></span>
                </div>
            </div>
            <br>
        </form>
    </div>
    <div class="panel-footer">
        <input type="button" class="btn btn-sm btn-success" value="确认" onclick="edit_do()">
        <input type="button" class="btn btn-sm btn-danger" value="返回" onclick="back()">
    </div>
</div>