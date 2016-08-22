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
                    <th>分类名称</th>
                    <th>排序</th>
                    <th>显示</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody id="list_content">
                <?php $this->load->view($this_controller.'/'.$this_controller.'_tb'); ?>
            </tbody>
        </table>
    </div>
</div>
<script type="text/javascript">
/*伸展，收缩*/
function sons_control(id){
    if($("#sons_li_"+id).hasClass('fa-plus-square')){//展开
        sons_li($("#sons_li_"+id),1);
        sons_sh(id,1);
    }else{
        sons_li($("#sons_li_"+id),2);
        sons_sh(id,2);
    }
    
}
function sons_sh(id,type){
    $(".sons_tr").each(function(){
        if( $(this).attr('data') == id ){//子孙
            if( type=='1' ){
                $(this).removeClass('hide');
            }else{
                $(this).addClass('hide');
                var this_id = $(this).attr('data2');
                sons_li($("#sons_li_"+this_id),2);
                sons_sh(this_id,type);
            }
        }
    });
}
function sons_li(obj,type){
    if(type==1){
        $(obj).removeClass('fa-plus-square');
        $(obj).addClass('fa-minus-square');
    }else{
        $(obj).addClass('fa-plus-square');
        $(obj).removeClass('fa-minus-square');
    }
}
/*伸展，收缩*/

//新增、编辑
function edit( id ){
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
                }else{
                    alert(msgobj.msg);
                }
            }
        }
    });
}
//新增、编辑 执行
function edit_do(){
    $('#edit_form').ajaxSubmit({
        beforeSubmit: function(){
            var back = edit_authen();
            if(back){
                $("#edit_submit_button").attr('disabled','disabled');
            }
            return back;
        },
        success: function (msg) {
            if(msg){
                var msgobj = eval("("+ msg +")");
                window.location.reload();
            }
        }
    });
}
//删除
function del( id ){
    if( confirm('确认删除?') ){
        $.ajax({
            type : "GET",
            async : true,
            url : "<?php echo site_url($this_controller.'/my_del');?>",
            data : { id:id },
            success : function(msg){
                if(msg){
                    var msgobj = eval("("+ msg +")");
                    alert(msgobj.msg);
                    pagelist.loadPage();
                    back();
                }
            }
        });
    }
}
//编辑验证函数
function edit_authen(){
    var name = $("#name").authen({reg:'nickname',err_name:'分类名称',min_length:2,max_length:20,empty:false});
    var back = name;
    return back;
}
</script>
<?php $this->load->view('base/footer'); ?>