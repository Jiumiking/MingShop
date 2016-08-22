<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
        <div class="btn-group btn-group-justified visible-xs btn-group-menu" role="group" aria-label="...">
            <a href="<?php echo site_url();?>" class="btn btn-default <?php echo (!empty($menu) && $menu=='home')?'active':'';?>" role="button"><li class="fa fa-home"></li></a>
            <a href="<?php echo site_url('goods/my_list');?>" class="btn btn-default <?php echo (!empty($menu) && $menu=='goods')?'active':'';?>" role="button"><li class="fa fa-bars"></li></a>
            <a href="<?php echo site_url('cart');?>" class="btn btn-default <?php echo (!empty($menu) && $menu=='cart')?'active':'';?>" role="button"><li class="fa fa-shopping-cart"></li></a>
            <a href="<?php echo site_url('member/center');?>" class="btn btn-default <?php echo (!empty($menu) && $menu=='member')?'active':'';?>" role="button"><li class="fa fa-user"></li></a>
        </div>
        <div class="modal fade" aria-labelledby="myModalTitle" aria-hidden="true" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalTitle">Base Title</h4>
                    </div>
                    <div class="modal-body" id="myModalbody">
                        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" id="myModalBtn" onclick="myModalBtn()">确定</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
        <div class="ming-alert" id="ming_alert">
        </div>
    </body>
</html>