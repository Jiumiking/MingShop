<div class="col-lg-12">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h2><i class="fa fa-indent red"></i><strong>编辑</strong></h2>
        </div>
        <div class="panel-body">
            <form class="form-horizontal" name="edit_form" id="edit_form" action="<?php echo site_url($this_controller.'/my_edit_do');?>" method="post">
                <input type="hidden" name="id" value="<?php echo empty($data['id'])?'':$data['id']; ?>">
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">类型名称</label>
                    <div class="col-lg-10 col-md-10">
                        <input type="text" class="form-control" name="name" id="name" value="<?php echo empty($data['name'])?'':$data['name']; ?>" placeholder="输入类型名称">
                        <span class="error-block" id="m_name"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">规格1</label>
                    <div class="col-lg-10 col-md-10">
                        <select class="form-control" name="format1" id="format1">
                            <option value="0">请选择</option>
                            <?php if(!empty($data_format)){ ?>
                            <?php foreach($data_format as $key=>$value){ ?>
                            <option value="<?php echo $value['id'];?>" <?php if(!empty($data['format1']) && $data['format1']==$value['id'] ){ ?> selected="selected" <?php } ?>><?php echo $value['name'];?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
                        <span class="error-block" id="m_format1"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">规格2</label>
                    <div class="col-lg-10 col-md-10">
                        <select class="form-control" name="format2" id="format2">
                            <option value="0">请选择</option>
                            <?php if(!empty($data_format)){ ?>
                            <?php foreach($data_format as $key=>$value){ ?>
                            <option value="<?php echo $value['id'];?>" <?php if(!empty($data['format2']) && $data['format2']==$value['id'] ){ ?> selected="selected" <?php } ?>><?php echo $value['name'];?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
                        <span class="error-block" id="m_format2"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">规格3</label>
                    <div class="col-lg-10 col-md-10">
                        <select class="form-control" name="format3" id="format3">
                            <option value="0">请选择</option>
                            <?php if(!empty($data_format)){ ?>
                            <?php foreach($data_format as $key=>$value){ ?>
                            <option value="<?php echo $value['id'];?>" <?php if(!empty($data['format3']) && $data['format3']==$value['id'] ){ ?> selected="selected" <?php } ?>><?php echo $value['name'];?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
                        <span class="error-block" id="m_format3"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">规格4</label>
                    <div class="col-lg-10 col-md-10">
                        <select class="form-control" name="format4" id="format4">
                            <option value="0">请选择</option>
                            <?php if(!empty($data_format)){ ?>
                            <?php foreach($data_format as $key=>$value){ ?>
                            <option value="<?php echo $value['id'];?>" <?php if(!empty($data['format4']) && $data['format4']==$value['id'] ){ ?> selected="selected" <?php } ?>><?php echo $value['name'];?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
                        <span class="error-block" id="m_format4"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">规格5</label>
                    <div class="col-lg-10 col-md-10">
                        <select class="form-control" name="format5" id="format5">
                            <option value="0">请选择</option>
                            <?php if(!empty($data_format)){ ?>
                            <?php foreach($data_format as $key=>$value){ ?>
                            <option value="<?php echo $value['id'];?>" <?php if(!empty($data['format5']) && $data['format5']==$value['id'] ){ ?> selected="selected" <?php } ?>><?php echo $value['name'];?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
                        <span class="error-block" id="m_format5"></span>
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