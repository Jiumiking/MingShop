<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
    <div class="panel panel-default">
        <div class="panel-body">
            <table class="table table-bordered table-striped table-condensed table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>名称</th>
                        <th>符号</th>
                        <th>创建时间</th>
                        <th>修改时间</th>
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
                url : "<?php echo site_url('payment/status_edit');?>",
                data : { id:id,status:status },
                success : function(msg){
                    if(msg){
                        var msgobj = eval("("+ msg +")");
                        ming_alert(msgobj.msg,msgobj.sta);
                        pagelist.loadPage();
                        //back();
                    }
                }
            });
        }
        //修改配置
        function config( id ){
            $.ajax({
                type : "GET",
                async : true,
                url : "<?php echo site_url($this_controller.'/my_config');?>",
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
        //修改配置 执行
        function config_do(){
            $('#edit_form').ajaxSubmit({
                success: function (msg) {
                    if(msg){
                        var msgobj = eval("("+ msg +")");
                        ming_alert(msgobj.msg, msgobj.sta);
                        pagelist.loadPage();
                        back();
                    }
                }
            });
        }
    </script>
<?php $this->load->view('base/footer'); ?>