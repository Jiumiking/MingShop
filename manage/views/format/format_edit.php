<div class="panel panel-default">
    <div class="panel-heading">
        <h2>编辑</h2>
    </div>
    <div class="panel-body">
        <form class="form-horizontal" name="edit_form" id="edit_form" action="<?php echo site_url($this_controller.'/my_edit_do');?>" method="post">
            <input type="hidden" name="id" value="<?php echo empty($data['id'])?'':$data['id']; ?>">
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">规格名称</label>
                <div class="col-lg-10 col-md-10">
                    <input type="text" class="form-control" name="name" id="name" value="<?php echo empty($data['name'])?'':$data['name']; ?>" placeholder="输入规格名称">
                    <span class="error-block" id="m_name"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">描述</label>
                <div class="col-lg-10 col-md-10">
                    <textarea class="form-control" name="remark" id="remark" rows="3" cols="30"><?php echo empty($data['remark'])?'':$data['remark']; ?></textarea>
                    <span class="error-block" id="m_remark"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">可选值</label>
                <div class="col-lg-10 col-md-10" id="value_td">
                    <button id="value_btn" type="button" class="btn btn-success btn-sm" title="新增" cnt="<?php echo count($data_value);?>" onclick="value_add()" >新增</button>
                    <?php foreach($data_value as $k=>$v){ ?>
                    <div class="input-group">
                        <input type="hidden" name="value[<?php echo $k;?>][id]" value="<?php echo $v['id'];?>">
                        <input class="form-control" type="text" name="value[<?php echo $k;?>][name]" value="<?php echo $v['name'];?>">
                        <span class="input-group-btn">
                            <button type="button" class="btn btn-danger" onclick="p_del(this)"><i class="fa fa-times"></i></button>
                        </span>
                    </div>
                    <?php } ?>
                </div>
            </div>
        </form>
    </div>
    <div class="panel-footer">
        <input type="button" class="btn btn-sm btn-success" value="确认" onclick="edit_do()">
        <input type="button" class="btn btn-sm btn-danger" value="返回" onclick="back()">
    </div>
</div>