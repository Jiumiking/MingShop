<div class="panel panel-default">
    <div class="panel-heading">
        <h2>编辑</h2>
    </div>
    <div class="panel-body">
        <form class="form-horizontal" name="edit_form" id="edit_form" action="<?php echo site_url($this_controller.'/my_edit_do');?>" method="post">
            <input type="hidden" name="id" value="<?php echo empty($data['id'])?'':$data['id']; ?>">
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">文章分类</label>
                <div class="col-lg-10 col-md-10">
                    <select class="form-control" name="category_id" id="category_id">
                        <option value="">请选择</option>
                        <?php if(!empty($data_category)){ ?>
                        <?php foreach($data_category as $k=>$v){ ?>
                        <option value="<?php echo $k;?>" <?php if(!empty($data['category_id']) && $data['category_id']==$k ){ ?> selected="selected" <?php } ?>><?php echo $v;?></option>
                        <?php } ?>
                        <?php } ?>
                    </select>
                    <span class="error-block" id="m_category_id"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">文章标题</label>
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
                <label class="col-lg-2 col-md-2 control-label" for="text-input">封面图片</label>
                <div class="col-lg-10 col-md-10">
                    <button type="button" class="btn btn-primary btn-sm" onclick="mingImg();">
                       图片管理
                    </button>
                    <div id="img_show">
                        <?php if(!empty($data['image'])){ ?>
                        <div class="col-md-2 col-sm-3 col-xs-4 img-item" ><input type="hidden" name="image" value="<?php echo $data['image'];?>"><img class="img-thumbnail" src="<?php echo $data['image'];?>" alt="Sample Image"></div>
                        <?php } ?>
                    </div>
                    <span class="error-block" id="m_image"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">详情</label>
                <div class="col-lg-10 col-md-10">
                    <script id="detail" name="detail" type="text/plain"><?php echo empty($data_detail['detail'])?'':$data_detail['detail']; ?></script>
                    <span class="error-block" id="m_detail"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2 control-label" for="text-input">状态</label>
                <div class="col-lg-10 col-md-10">
                    <label class="radio-inline" >
                        <input name="status" type="radio" value="1" <?php if( !isset($data['status']) || $data['status'] == '1' ){ ?> checked="checked" <?php } ?>>
                        有效
                    </label>
                    <label class="radio-inline">
                        <input name="status" type="radio" value="0" <?php if( isset($data['status']) && $data['status'] == '0' ){ ?> checked="checked" <?php } ?>>
                        无效
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