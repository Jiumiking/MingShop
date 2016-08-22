<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
<div class="panel panel-default">
    <div class="panel-body">
        <div class="table-search">
            <select name="filter">
                <option value="object_name">评论对象</option>
                <option value="content">内容</option>
            </select>
            <input type="text" name="value" value="">&nbsp;&nbsp;
            <select name="object_type">
                <option value="">评论类型</option>
                <?php if(!empty($comment_type)){ foreach($comment_type as $k=>$v){ ?>
                    <option value="<?php echo $k;?>"><?php echo $v;?></option>
                <?php }} ?>
            </select>
            <select name="status">
                <option value="">状态</option>
                <?php if(!empty($comment_status)){ foreach($comment_status as $k=>$v){ ?>
                <option value="<?php echo $k;?>"><?php echo $v;?></option>
                <?php }} ?>
            </select>
            <button type="button" class="btn btn-primary btn-sm" name="search">搜索</button>
        </div>
        <table class="table table-bordered table-striped table-condensed table-hover">
            <thead>
                <tr>
                    <th>评论人</th>
                    <th>评论类型</th>
                    <th>评论对象</th>
                    <th>内容</th>
                    <th>顶</th>
                    <th>踩</th>
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
            当前<input type="text" onkeypress="pagelist.changePage(event,this)" id="pg_page" maxlength="10" size="1" value="1"/>页,
            共<span id="pg_page_count"><?php echo $pages['page_count']?></span>页，
            <span id="pg_count"><?php echo $pages['count']?></span>条记录
            <a href="javascript:pagelist.lastPage();">上一页</a>
            <a href="javascript:pagelist.nextPage();">下一页</a>
        </div>
    </div>
</div>
<?php $this->load->view('base/list_js'); ?>
<script type="text/javascript">
//上架下架
function status_edit( id,status ){
    $.ajax({
        type : "GET",
        async : true,
        url : "<?php echo site_url('comment/status_edit');?>",
        data : { id:id,status:status },
        success : function(msg){
            if(msg){
                var msgobj = eval("("+ msg +")");
                alert(msgobj.msg);
                pagelist.loadPage();
                //back();
            }
        }
    });
}

$(document).ready(function(){
    //搜索
    $("[name='search']").click(function(){
        var filter = $("[name='filter']").val();
        var value = $("[name='value']").val();

        pagelist.filter['object_name'] = undefined;
        pagelist.filter['content'] = undefined;
        pagelist.filter[filter] = value;
        pagelist.filter['object_type'] = $("[name='object_type']").val();
        pagelist.filter['status'] = $("[name='status']").val();
        pagelist.loadPage();
    });
});
</script>
<?php $this->load->view('base/footer'); ?>