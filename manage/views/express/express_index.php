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
                    <th>名称</th>
                    <th>符号</th>
                    <th>状态</th>
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
<?php $this->load->view('base/footer'); ?>