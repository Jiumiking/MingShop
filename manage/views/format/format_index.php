<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
<div class="panel panel-default">
    <div class="panel-body">
        <div class="table-search">
            <button type="button" class="btn btn-success btn-sm" onclick="edit('')">新增</button>
        </div>
        <table class="table table-bordered table-striped table-condensed table-hover">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>规格名称</th>
                    <th>描述</th>
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
<script type="text/javascript">
//编辑验证函数
function edit_authen(){
    var name = $("#name").authen({reg:'nickname',err_name:'名称',min_length:2,max_length:20,empty:false});
    var back = name;
    return back;
}
function value_add(){
    var cnt = $("#value_btn").attr('cnt');
    $("#value_td").append('<div class="input-group"><input class="form-control" type="text" name="value['+cnt+'][name]" value=""><span class="input-group-btn"><button type="button" class="btn btn-danger" onclick="p_del(this)"><i class="fa fa-times"></i></button></span></div>');
    cnt++;
    $("#value_btn").attr('cnt',cnt);
}
function p_del(obj){
    $(obj).parent().parent().remove();
}
</script>
<?php $this->load->view('base/footer'); ?>