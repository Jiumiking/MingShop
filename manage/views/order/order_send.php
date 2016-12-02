<div class="panel panel-default">
    <div class="panel-heading">
        <h2>发货</h2>
    </div>
    <div class="panel-body">
        <form class="form-horizontal" name="edit_form" id="edit_form" action="<?php echo site_url($this_controller.'/send_do');?>" method="post">
            <input type="hidden" name="id" value="<?php echo empty($data['id'])?'':$data['id']; ?>">
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">订单号</label>
                <div class="col-lg-10 col-md-10">
                    <input type="text" class="form-control" value="<?php echo empty($data['order_no'])?'':$data['order_no']; ?>" disabled>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">快递公司</label>
                <div class="col-lg-10 col-md-10">
                    <select name="express_id" id="express_id" class="form-control">
                        <option value="0">请选择</option>
                        <?php if( !empty($data_express) ){ ?>
                            <?php foreach($data_express as $v){ ?>
                                <option value="<?php echo $v['id'];?>" <?php if( !empty($data['express_id']) && $data['express_id'] == $v['id'] ){ ?> selected="selected" <?php } ?> ><?php echo $v['name'];?></option>
                            <?php } ?>
                        <?php } ?>
                    </select>
                    <span class="error-block" id="m_express_id"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">快递单号</label>
                <div class="col-lg-10 col-md-10">
                    <input type="text" class="form-control" name="express_no" id="express_no" value="<?php echo empty($data['express_no'])?'':$data['express_no']; ?>" placeholder="输入快递单号">
                    <span class="error-block" id="m_express_no"></span>
                </div>
            </div>
        </form>
    </div>
    <div class="panel-footer">
        <input type="button" class="btn btn-sm btn-success" value="确认" onclick="edit_do()">
        <input type="button" class="btn btn-sm btn-danger" value="返回" onclick="back()">
    </div>
</div>
