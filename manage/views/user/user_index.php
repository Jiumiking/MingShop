<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>

<div class="col-lg-12">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h2><i class="fa fa-indent red"></i><strong></strong></h2>
        </div>
        <div class="panel-body">
            <div class="table-search">
                <select name="filter">
                    <option value="name_real">姓名</option>
                    <option value="name">用户名</option>
                    <option value="phone">手机号</option>
                    <option value="email">邮箱</option>
                </select>
                <input type="text" name="value" value="">&nbsp;&nbsp;
                <select name="role">
                    <option value="0">角色</option>
                    <?php if(!empty($data_role)){ ?>
                    <?php foreach( $data_role as $value ){ ?>
                    <option value="<?php echo $value['id']; ?>"><?php echo $value['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                </select>
                <button type="button" class="btn btn-success btn-sm" onclick="edit('')">新增</button>
                <button type="button" class="btn btn-primary btn-sm" name="search">搜索</button>
            </div>
            <table class="table table-bordered table-striped table-condensed table-hover">
                <thead>
                    <tr>
                        <th>用户名</th>
                        <th>姓名</th>
                        <th>手机号</th>
                        <th>邮箱</th>
                        <th>角色</th>
                        <th>添加时间</th>
                        <th>密码错误次数</th>
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
</div>

<?php $this->load->view('base/list_js'); ?>
<script type="text/javascript">
//编辑验证函数
function edit_authen(){
    var password = true;
    var password2 = true;
    var name = $("#name").authen({reg:'username',err_name:'用户名',min_length:2,max_length:20,empty:false});
    var name_real = $("#name_real").authen({reg:'nickname',err_name:'姓名',min_length:2,max_length:20,empty:false});
    var phone = $("#phone").authen({reg:'mobile',err_name:'手机号',min_length:2,max_length:20,empty:true});
    var email = $("#email").authen({reg:'email',err_name:'邮箱',min_length:2,max_length:50,empty:true});
    var role = $("#role").authen({err_name:'角色',empty:false});

    if( undefined != $('#password').val() ){
        password = $("#password").authen({reg:'password',err_name:'密码',min_length:6,max_length:20,empty:false});
        password2 = $("#password2").authen({reg:'password2',pwd_id:'password',min_length:6,max_length:20,empty:false});
    }

    var back = name && name_real && phone && email && role && password && password2;
    return back;
}
$(document).ready(function(){
    //搜索
    $("[name='search']").click(function(){
        var filter = $("[name='filter']").val();
        var value = $("[name='value']").val();
        var role = $("[name='role']").val();
        pagelist.filter['page'] = 1;
        pagelist.filter['name_real'] = undefined;
        pagelist.filter['name'] = undefined;
        pagelist.filter['phone'] = undefined;
        pagelist.filter['email'] = undefined;
        pagelist.filter[filter] = value;
        pagelist.filter['role'] = role;
        pagelist.loadPage();
    });
});
//锁定/解锁
function lock( id,status ){
    $.ajax({
        type : "GET",
        async : false,
        url : "<?php echo site_url('user/lock');?>",
        data : { id:id,status:status },
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
</script>
<?php $this->load->view('base/footer'); ?>