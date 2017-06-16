<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="table-search">
                <select name="filter">
                    <option value="order_no">订单号</option>
                    <option value="phone">用户手机号</option>
                    <option value="email">用户邮箱</option>
                    <option value="name_nick">用户昵称</option>
                    <option value="name_real">用户姓名</option>
                    <option value="accept_name">收货人</option>
                    <option value="accept_phone">收货手机号</option>
                </select>
                <input type="text" name="value" value="">&nbsp;&nbsp;
                <select name="status">
                    <option value="">状态</option>
                    <?php if(!empty($order_status)){ foreach($order_status as $k=>$v){ ?>
                        <option value="<?php echo $k;?>"><?php echo $v;?></option>
                    <?php }} ?>
                </select>
                <button type="button" class="btn btn-primary btn-sm" name="search">搜索</button>
            </div>
            <table class="table table-bordered table-striped table-condensed table-hover">
                <thead>
                    <tr>
                        <th>订单编号</th>
                        <th>会员</th>
                        <th>支付方式</th>
                        <th>实际支付</th>
                        <th>收货人</th>
                        <th>城市</th>
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
                当前<input class="page-input" type="text" onkeypress="pagelist.changePage(event,this)" id="pg_page" maxlength="10" value="1"/>页,
                共<span id="pg_page_count"><?php echo $pages['page_count']?></span>页，
                <span id="pg_count"><?php echo $pages['count']?></span>条记录
                <a href="javascript:pagelist.lastPage();">上一页</a>
                <a href="javascript:pagelist.nextPage();">下一页</a>
            </div>
        </div>
    </div>
<?php $this->load->view('base/list_js'); ?>
    <script type="text/javascript">
        //发货
        function send( id ){
            $.ajax({
                type : "GET",
                async : true,
                url : "<?php echo site_url($this_controller.'/send');?>",
                data : { id:id },
                success : function(msg){
                    if(msg){
                        var msgobj = eval("("+ msg +")");
                        if(msgobj.sta == '1'){
                            $('#div_show').html(msgobj.dat);
                            $('#div_show').show();
                            $('#div_content').hide();
                        }else{
                            ming_alert(msgobj.msg);
                        }
                    }
                }
            });
        }
        //完成订单
        function done( id ){
            $.ajax({
                type : "GET",
                async : true,
                url : "<?php echo site_url($this_controller.'/done');?>",
                data : { id:id },
                success : function(msg){
                    if(msg){
                        var msgobj = eval("("+ msg +")");
                        ming_alert(msgobj.msg,msgobj.sta);
                        pagelist.loadPage();
                        back();
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