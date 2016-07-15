<div class="col-lg-12">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h2><i class="fa fa-indent red"></i><strong>编辑</strong></h2>
        </div>
        <div class="panel-body">
            <form class="form-horizontal" name="edit_form" id="edit_form" action="<?php echo site_url($this_controller.'/my_edit_do');?>" method="post">
                <input type="hidden" name="id" value="<?php echo empty($data['id'])?'':$data['id']; ?>">
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">品牌名称</label>
                    <div class="col-lg-10 col-md-10">
                        <input type="text" class="form-control" name="name" id="name" value="<?php echo empty($data['name'])?'':$data['name']; ?>" placeholder="输入品牌名称">
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
            </form>
        </div>
        <div class="panel-footer">
            <input type="button" class="btn btn-sm btn-success" value="确认" onclick="edit_do()">
            <input type="button" class="btn btn-sm btn-danger" value="返回" onclick="back()">
        </div>
    </div>
</div>