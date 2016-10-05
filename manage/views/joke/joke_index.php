<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
<div class="panel panel-default">
    <div class="panel-body">
        <div class="table-search">
            <select name="filter">
                <option value="content">内容</option>
            </select>
            <input type="text" name="value" value="">&nbsp;&nbsp;
            <button type="button" class="btn btn-success btn-sm" onclick="edit('')">新增</button>
            <button type="button" class="btn btn-success btn-sm" onclick="my_import()">导入</button>
            <button type="button" class="btn btn-primary btn-sm" name="search">搜索</button>
        </div>
        <table class="table table-bordered table-striped table-condensed table-hover">
            <thead>
                <tr>
                    <th>ID</th>
                    <th width="50%">内容</th>
                    <th>创建时间</th>
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
<script src="<?php echo base_url('js/ajaxfileupload.js');?>"></script>
<script type="text/javascript">
    $(document).ready(function(){
        //搜索
        $("[name='search']").click(function(){
            var filter = $("[name='filter']").val();
            var value = $("[name='value']").val();

            pagelist.filter['content'] = undefined;
            pagelist.filter[filter] = value;
            pagelist.loadPage();
        });
    });
    //编辑验证函数
    function edit_authen(){
        var content = $("#content").authen({err_name:'段子内容',empty:false});
        var back = content;
        return back;
    }
    //导入
    function my_import(){
        $.ajax({
            type : "GET",
            async : true,
            url : "<?php echo site_url($this_controller.'/my_import');?>",
            data : {},
            success : function(msg){
                if(msg){
                    var msgobj = eval("("+ msg +")");
                    if(msgobj.sta == '1'){
                        $('#div_show').html(msgobj.dat);
                        $('#div_show').show();
                        $('#div_content').hide();
                    }else{
                        ming_alert(msgobj.msg,msgobj.sta);
                    }
                }
            }
        });
    }
    function my_import_do(){
        var str = $("#file").val();
        if(str == '') return;
        var arr = new Array();
        arr = str.split(".");
        var file_type = arr[arr.length-1];
        if(file_type == 'xls' || file_type == 'xlsx'){
            my_import_up('file');
        }else{
            ming_alert('文件格式不支持');
        }
    }
    //ajax提交
    function my_import_up(file){
        $.ajaxFileUpload
        (
            {
                url:"<?php echo site_url('joke/my_import_do');?>",
                secureuri:true,
                fileElementId:file,
                dataType: 'json',
                data:{},
                success: function (data, status){
                    if(data){
                        ming_alert(data.msg,1);
                        pagelist.loadPage();
                        back();
                    }
                },
                error: function (data, status, e)
                {
                    if(data){
                        ming_alert(data.msg);
                    }
                    return false;
                }
            }
        )
        return false;
    }

</script>
<?php $this->load->view('base/footer'); ?>