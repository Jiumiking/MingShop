<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
<div class="panel panel-default">
    <div class="panel-body">
        <div class="table-search">
            <select name="filter">
                <option value="name_nick">昵称</option>
            </select>
            <input type="text" name="value" value="">&nbsp;&nbsp;
            <button type="button" class="btn btn-primary btn-sm" name="search">搜索</button>
        </div>
        <table class="table table-bordered table-striped table-condensed table-hover">
            <thead>
                <tr>
                    <th>上传者</th>
                    <th width="20%">照片</th>
                    <th width="50%">内容</th>
                    <th>赞</th>
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