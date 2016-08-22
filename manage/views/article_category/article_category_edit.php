<div class="panel panel-default">
    <div class="panel-heading">
        <h2>编辑</h2>
    </div>
    <div class="panel-body">
        <form class="form-horizontal" name="edit_form" id="edit_form" action="<?php echo site_url($this_controller.'/my_edit_do');?>" method="post">
            <input type="hidden" name="id" value="<?php echo empty($data['id'])?'':$data['id']; ?>">
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">分类名称</label>
                <div class="col-lg-10 col-md-10">
                    <input type="text" class="form-control" name="name" id="name" value="<?php echo empty($data['name'])?'':$data['name']; ?>" placeholder="输入分类名称">
                    <span class="error-block" id="m_name"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">上级分类</label>
                <div class="col-lg-10 col-md-10">
                    <select class="form-control" name="parent_id" id="parent_id">
                        <option value="0">请选择</option>
                        <?php if(!empty($data_option)){ ?>
                        <?php foreach($data_option as $key=>$value){ ?>
                        <option value="<?php echo $key;?>" <?php if(!empty($data['parent_id']) && $data['parent_id']==$key ){ ?> selected="selected" <?php } ?>><?php echo $value;?></option>
                        <?php } ?>
                        <?php } ?>
                    </select>
                    <span class="error-block" id="m_format1"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">排序</label>
                <div class="col-lg-10 col-md-10">
                    <input type="text" class="form-control" name="sort" id="sort" value="<?php echo empty($data['sort'])?'0':$data['sort']; ?>" placeholder="">
                    <span class="error-block" id="m_sort"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">显示</label>
                <div class="col-lg-10 col-md-10">
                    <label class="radio-inline" >
                        <input name="status" type="radio" value="1" <?php if( !empty($data['status']) && $data['status'] == '1' ){ ?> checked="checked" <?php } ?>>
                        是
                    </label>
                    <label class="radio-inline">
                        <input name="status" type="radio" value="0" <?php if( empty($data['status']) ){ ?> checked="checked" <?php } ?>>
                        否
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