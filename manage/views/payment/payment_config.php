<div class="panel panel-default">
    <div class="panel-heading">
        <h2><?php echo empty($key)?'':$key; ?></h2>
    </div>
    <div class="panel-body">
        <form class="form-horizontal" name="edit_form" id="edit_form" action="<?php echo site_url($this_controller.'/my_config_do');?>" method="post">
            <input type="hidden" name="key" value="<?php echo empty($key)?'':$key; ?>">
            <?php if(!empty($data)){ foreach($data as $k=>$v){ ?>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input"><?php echo $v['title'];?></label>
                <div class="col-lg-10 col-md-10">
                    <input type="text" class="form-control" name="<?php echo $k.'[value]';?>" value="<?php echo $v['value'];?>" placeholder="<?php echo $v['remark'];?>">
                </div>
            </div>
            <input type="hidden" name="<?php echo $k.'[title]';?>" value="<?php echo empty($v['title'])?'':$v['title']; ?>">
            <input type="hidden" name="<?php echo $k.'[type]';?>" value="<?php echo empty($v['type'])?'':$v['type']; ?>">
            <input type="hidden" name="<?php echo $k.'[remark]';?>" value="<?php echo empty($v['remark'])?'':$v['remark']; ?>">
            <?php }} ?>
        </form>
    </div>
    <div class="panel-footer">
        <input type="button" class="btn btn-sm btn-success" value="确认" onclick="config_do()">
        <input type="button" class="btn btn-sm btn-danger" value="返回" onclick="back()">
    </div>
</div>
