<ul class="nav nav-pills nav-stacked">
    <li role="presentation" <?php if( !empty($member_menu) && $member_menu=='order' ){ ?>class="active"<?php } ?>><a href="<?php echo site_url('member/order');?>">我的订单</a></li>
    <li role="presentation" <?php if( !empty($member_menu) && $member_menu=='setting' ){ ?>class="active"<?php } ?>><a href="<?php echo site_url('member/setting');?>">个人设置</a></li>
    <li role="presentation" <?php if( !empty($member_menu) && substr($member_menu,0,4)=='safe' ){ ?>class="active"<?php } ?>><a href="<?php echo site_url('member/safe');?>">账户安全</a></li>
    <li role="presentation" <?php if( !empty($member_menu) && substr($member_menu,0,7)=='address' ){ ?>class="active"<?php } ?>><a href="<?php echo site_url('member/address');?>">收货地址</a></li>
</ul>