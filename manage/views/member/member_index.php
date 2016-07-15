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
                    <option value="phone">手机号码</option>
                    <option value="email">邮箱</option>
                    <option value="weixin">微信</option>
                    <option value="qq">QQ</option>
                    <option value="name_real">姓名</option>
                    <option value="name_nick">昵称</option>
                </select>
                <input type="text" name="value" value="">&nbsp;&nbsp;
                <button type="button" class="btn btn-success btn-sm" onclick="edit('')">新增</button>
                <button type="button" class="btn btn-primary btn-sm" name="search">搜索</button>
            </div>
            <table class="table table-bordered table-striped table-condensed table-hover">
                <thead>
                    <tr>
                        <th>姓名</th>
                        <th>昵称</th>
                        <th>手机号码</th>
                        <th>邮箱</th>
                        <th>性别</th>
                        <th>积分</th>
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
</div>

<?php $this->load->view('base/list_js'); ?>
<script type="text/javascript">
//编辑验证函数
function edit_authen(){
    var name_real = $("#name_real").authen({reg:'nickname',err_name:'名称',min_length:1,max_length:50,empty:false});
    var name_nick = $("#name_nick").authen({reg:'nickname',err_name:'昵称',min_length:1,max_length:50,empty:false});
    var phone = $("#phone").authen({reg:'mobile',err_name:'手机号码',empty:false});
    var email = $("#email").authen({reg:'email',err_name:'邮箱',empty:true});
    var back = name_real && name_nick && phone && email;
    return back;
}
$(document).ready(function(){
    //搜索
    $("[name='search']").click(function(){
        var filter = $("[name='filter']").val();
        var value = $("[name='value']").val();
        pagelist.filter['page'] = 1;
        pagelist.filter[filter] = value;
        pagelist.loadPage();
    });
});
</script>
<?php $this->load->view('base/footer'); ?>