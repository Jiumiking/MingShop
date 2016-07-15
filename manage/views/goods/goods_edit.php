<div class="col-lg-12">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h2><i class="fa fa-indent red"></i><strong>编辑</strong></h2>
        </div>
        <div class="panel-body">
            <form class="form-horizontal" name="edit_form" id="edit_form" action="<?php echo site_url($this_controller.'/my_edit_do');?>" method="post">
                <input type="hidden" name="id" value="<?php echo empty($data['id'])?'':$data['id']; ?>">
                <?php if(empty($data['id'])){ ?>
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">上下架</label>
                    <div class="col-lg-10 col-md-10">
                        <label class="radio-inline" >
                            <input name="status" type="radio" value="1" <?php if( empty($data['status']) || $data['status'] == '1' ){ ?> checked="checked" <?php } ?>>
                            上架
                        </label>
                        <label class="radio-inline">
                            <input name="status" type="radio" value="2" <?php if( !empty($data['status']) && $data['status'] == '2' ){ ?> checked="checked" <?php } ?>>
                            下架
                        </label>
                    </div>
                </div>
                <?php } ?>
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">商品类型</label>
                    <div class="col-lg-10 col-md-10">
                        <select class="form-control" name="type_id" id="type_id" onchange="type_change()">
                            <option value="">请选择</option>
                            <?php if(!empty($data_goods_type)){ ?>
                            <?php foreach($data_goods_type as $key=>$value){ ?>
                            <option value="<?php echo $value['id'];?>" <?php if(!empty($data['type_id']) && $data['type_id']==$value['id'] ){ ?> selected="selected" <?php } ?>><?php echo $value['name'];?></option>
                            <?php } ?>
                            <?php } ?>
                        </select>
                        <span class="error-block" id="m_type_id"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">商品名称</label>
                    <div class="col-lg-10 col-md-10">
                        <input type="text" class="form-control" name="name" id="name" value="<?php echo empty($data['name'])?'':$data['name']; ?>" placeholder="输入商品名称">
                        <span class="error-block" id="m_name"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">副标题</label>
                    <div class="col-lg-10 col-md-10">
                        <input type="text" class="form-control" name="title" id="title" value="<?php echo empty($data['title'])?'':$data['title']; ?>" placeholder="输入商品副标题">
                        <span class="error-block" id="m_title"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">成本价格</label>
                    <div class="col-lg-10 col-md-10">
                        <input type="text" class="form-control" name="money_in" id="money_in" value="<?php echo empty($data['money_in'])?'':$data['money_in']; ?>" placeholder="输入成本价格">
                        <span class="error-block" id="m_money_in"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">出售价格</label>
                    <div class="col-lg-10 col-md-10">
                        <input type="text" class="form-control" name="money_out" id="money_out" value="<?php echo empty($data['money_out'])?'':$data['money_out']; ?>" placeholder="输入出售价格">
                        <span class="error-block" id="m_money_out"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">商品规格</label>
                    <div class="col-lg-10 col-md-10">
                        <div id="format_div"></div>
                        <div id="format_value_div"></div>
                        <span class="error-block" id="m_format"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-2 col-md-2 control-label" for="text-input">详情</label>
                    <div class="col-lg-10 col-md-10">
                        <script id="detail" name="detail" type="text/plain"><?php echo empty($data_detail['detail'])?'':$data_detail['detail']; ?></script>
                        <span class="error-block" id="m_detail"></span>
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