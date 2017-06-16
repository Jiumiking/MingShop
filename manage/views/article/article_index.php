<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
<div class="panel panel-default">
    <div class="panel-body">
        <div class="table-search">
            <select name="filter">
                <option value="name">文章标题</option>
            </select>
            <input type="text" name="value" value="">&nbsp;&nbsp;
            <select name="category_id">
                <option value="">文章分类</option>
                <?php if(!empty($data_category)){ ?>
                <?php foreach($data_category as $k=>$v){ ?>
                <option value="<?php echo $k; ?>"><?php echo $v; ?></option>
                <?php } ?>
                <?php } ?>
            </select>
            <select name="status">
                <option value="">状态</option>
                <option value="1">有效</option>
                <option value="0">无效</option>
            </select>
            <button type="button" class="btn btn-success btn-sm" onclick="edit('')">新增</button>
            <button type="button" class="btn btn-primary btn-sm" name="search">搜索</button>
        </div>
        <table class="table table-bordered table-striped table-condensed table-hover">
            <thead>
                <tr>
                    <th>文章标题</th>
                    <th>文章分类</th>
                    <th>阅读次数</th>
                    <th>创建时间</th>
                    <th>状态</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody id="list_content">
                <?php $this->load->view($this_controller.'/'.$this_controller.'_tb'); ?>
            </tbody>
        </table>
        <div>
            当前<input type="text" class="page-input" onkeypress="pagelist.changePage(event,this)" id="pg_page" maxlength="10" value="1"/>页,
            共<span id="pg_page_count"><?php echo $pages['page_count']?></span>页，
            <span id="pg_count"><?php echo $pages['count']?></span>条记录
            <a href="javascript:pagelist.lastPage();">上一页</a>
            <a href="javascript:pagelist.nextPage();">下一页</a>
        </div>
    </div>
</div>
<?php $this->load->view('base/list_js'); ?>
<script type="text/javascript" src="<?php echo base_url('third_party/ueditor/ueditor.config.js');?>"></script>
<script type="text/javascript" src="<?php echo base_url('third_party/ueditor/ueditor.all.min.js');?>"> </script>
<script type="text/javascript">
//编辑验证函数
function edit_authen(){
    var category_id = $("#category_id").authen({err_name:'文章分类',empty:false});
    var name = $("#name").authen({err_name:'文章标题',min_length:2,max_length:50,empty:false});
    var back = category_id && name;
    return back;
}
var ue;
//新增、编辑
function edit( id ){
    if( typeof(ue) != 'undefined' ){
        UE.getEditor('detail').destroy();
    }
    $.ajax({
        type : "GET",
        async : true,
        url : "<?php echo site_url($this_controller.'/my_edit');?>",
        data : { id:id },
        success : function(msg){
            if(msg){
                var msgobj = eval("("+ msg +")");
                if(msgobj.sta == '1'){
                    $('#div_show').html(msgobj.dat);
                    $('#div_show').show();
                    $('#div_content').hide();
                    data_format = msgobj.data_format;
                    ue = UE.getEditor('detail');
                }else{
                    alert(msgobj.msg);
                }
            }
        }
    });
}

$(document).ready(function(){
    //搜索
    $("[name='search']").click(function(){
        var filter = $("[name='filter']").val();
        var value = $("[name='value']").val();

        pagelist.filter['name'] = undefined;
        pagelist.filter[filter] = value;
        pagelist.filter['category_id'] = $("[name='category_id']").val();
        pagelist.filter['status'] = $("[name='status']").val();
        pagelist.loadPage();
    });
});

//图片选择操作
function mingImgCheck(obj){
    $("#img_manage").find(".img-item.selected").each(function(){
        $(this).removeClass('selected');
    });

    var has = $(obj).hasClass('selected');
    if(has){
        $(obj).removeClass('selected');
    }else{
        $(obj).addClass('selected');
    }
}
//图片选择后的显示
function mingImgShow(src){
    return '<div class="col-md-2 col-sm-3 col-xs-4 img-item" ><input type="hidden" name="image" value="'+src+'"><img class="img-thumbnail" src="'+src+'" alt="Sample Image"></div>';
}
//modal提交按钮
function myModalBtn(){
    if($("#img_upload").hasClass('active')){
        var id='img_upload';
    }else{
        var id='img_manage';
    }
    var html = '';
    $("#"+id).find(".img-item.selected").each(function(){
        html = mingImgShow($(this).children("img").first().attr('data'));
    });
    $("#img_show").html(html);
    $('#myModal').modal('hide');
}
</script>
<?php $this->load->view('base/footer'); ?>