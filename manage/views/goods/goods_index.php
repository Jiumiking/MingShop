<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
<div class="panel panel-default">
    <div class="panel-body">
        <div class="table-search">
            <select name="filter">
                <option value="goods_no">商品编号</option>
                <option value="name">商品名称</option>
            </select>
            <input type="text" name="value" value="">&nbsp;&nbsp;
            <select name="type_id">
                <option value="">类型</option>
                <?php if(!empty($data_goods_type)){ ?>
                <?php foreach($data_goods_type as $key=>$value){ ?>
                <option value="<?php echo $value['id']; ?>"><?php echo $value['name']; ?></option>
                <?php } ?>
                <?php } ?>
            </select>
            <select name="status">
                <option value="">状态</option>
                <option value="1">上架</option>
                <option value="2">下架</option>
            </select>
            <button type="button" class="btn btn-success btn-sm" onclick="edit('')">新增</button>
            <button type="button" class="btn btn-primary btn-sm" name="search">搜索</button>
        </div>
        <table class="table table-bordered table-striped table-condensed table-hover">
            <thead>
                <tr>
                    <th>商品编号</th>
                    <th>商品名称</th>
                    <th>商品分类</th>
                    <th>商品类型</th>
                    <th>创建时间</th>
                    <th>上下架时间</th>
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
<script type="text/javascript" src="<?php echo base_url('third_party/ueditor/ueditor.config.js');?>"></script>
<script type="text/javascript" src="<?php echo base_url('third_party/ueditor/ueditor.all.min.js');?>"> </script>
<script type="text/javascript">
var data_format = [];//已有的规格
var type_format = [];//可选的规格
var type_format_value = [];//已选的规格
//编辑验证函数
function edit_authen(){
    var type = $("#type_id").authen({err_name:'商品类型',empty:false});
    var name = $("#name").authen({err_name:'商品名称',min_length:2,max_length:50,empty:false});
    var money_in = $("#money_in").authen({err_name:'成本价格',reg:'decmal4',empty:false});
    var money_out = $("#money_out").authen({err_name:'出售价格',reg:'decmal4',empty:false});
    var back = type && name && money_in && money_out;
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
                    type_change();
                }else{
                    alert(msgobj.msg);
                }
            }
        }
    });
}
//商品类型切换
function type_change(){
    var val = $("#type_id").val();
    var gid = $("[name='id']").val();
    $.ajax({
        type : "GET",
        async : true,
        url : "<?php echo site_url($this_controller.'/mi_format');?>",
        data : { id:val,gid:gid },
        success : function(msg){
            if(msg){
                var msgobj = eval("("+ msg +")");
                if(msgobj.sta == '1'){
                    type_format = msgobj.type_format;
                    $('#format_div').html(msgobj.dat);
                    $('#format_value_div').html('');
                    format_check();
                }else{
                    //alert(msgobj.msg);
                }
            }
        }
    });
}
//规格选择
function format_check(){
    if( typeof(type_format) == 'object' ){
        type_format_value = [];
        var mark = true;
        for(var i=0;i<type_format.length;i++){
            //alert(type_format[i]);
            var j = 0;
            type_format_value[i] = [];
            $("input[name='format["+type_format[i]['k']+"]']:checked").each(function(){
                type_format_value[i][j] = [];
                type_format_value[i][j]['k']= $(this).val();
                type_format_value[i][j]['v']= $(this).attr('data');
                j++;
            })
            if( type_format_value[i].length == 0 ){
                mark = false;
            }
        }
        if( mark ){
            var html = format_value_html();
            $('#format_value_div').html(html);
        }
    }
}
//规格表组合
function format_value_html(){
    var html = '<table class="table table-bordered table-striped table-condensed table-hover"><tr>';
    for(var i=0;i<type_format_value.length;i++){
        html += '<th>'+type_format[i]['v']+'</th>';
    }
    html += '<th>价格</th><th>库存</th></tr>';

    var eval_html = 'var k=0;';
    var eval_td = '';
    for(var i=0;i<type_format_value.length;i++){
        eval_html += "for(var j"+i+"=0;j"+i+"<type_format_value["+i+"].length;j"+i+"++){";
        eval_td += "<td><input type=\"hidden\" name=\"format_value['+k+'][format'+type_format["+i+"]['k']+']\" value=\"'+type_format_value["+i+"][j"+i+"]['k']+'\">'+type_format_value["+i+"][j"+i+"]['v']+'</td>";
    }

    eval_html += "var id='';var money='';var amount='';";
    if(data_format.length != 0){
        eval_html += "for(var i1=0;i1<data_format.length;i1++){ var mk=true; for(var i2=1;i2<6;i2++){ if(data_format[i1]['format'+i2] != 0 && data_format[i1]['format'+i2] != type_format_value[i2-1][eval('j'+(i2-1))]['k']){mk = false;} } if(mk){id=data_format[i1]['id'];money=data_format[i1]['money'];amount=data_format[i1]['amount'];} }";
    }

    eval_html += "html += '<tr>"+eval_td+"<td><input type=\"hidden\" name=\"format_value['+k+'][id]\" value=\"'+id+'\"><input type=\"text\" name=\"format_value['+k+'][money]\" value=\"'+money+'\"></td><td><input type=\"text\" name=\"format_value['+k+'][amount]\" value=\"'+amount+'\"></td></tr>';";
    eval_html += "k++;";

    for(var i=0;i<type_format_value.length;i++){
        eval_html += "}";
    }
    //console.log(eval_html);
    eval(eval_html);
    html += '</table>';
    return html;
}

$(document).ready(function(){
    //搜索
    $("[name='search']").click(function(){
        var filter = $("[name='filter']").val();
        var value = $("[name='value']").val();

        pagelist.filter['name'] = undefined;
        pagelist.filter['goods_no'] = undefined;
        pagelist.filter[filter] = value;
        pagelist.filter['type_id'] = $("[name='type_id']").val();
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
    return '<input type="hidden" name="image" value="'+src+'"><div class="img-item-default"><img src="'+src+'" alt="Sample Image"></div>';
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