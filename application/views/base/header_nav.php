<nav class="navbar hidden-xs" id="site-navbar">
    <div class="container">
        <ul class="nav navbar-nav navbar-right">
            <?php if(empty($this_user)){ ?>
            <li><a href="<?php echo site_url('sign/signin');?>">登录</a></li>
            <li><a href="<?php echo site_url('sign/signup');?>">注册</a></li>
            <?php }else{ ?>
            <li class="dropdown">
                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php echo empty($this_user['name_nick'])?$this_user['phone']:$this_user['name_nick'];?><span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="<?php echo site_url('member/center');?>">个人中心</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="<?php echo site_url('sign/signout');?>">退出登录</a></li>
                </ul>
            </li>
            <?php } ?>
            <li class="dropdown" >
                <a id="cart_nav_a" href="javascript:void(0);" onclick="cart_refresh()" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">购物车(<span id="cart_nav_number">0</span>)</a>
                <ul class="dropdown-menu cart_nav_ul" id="cart_nav_content">
                    <p class="mt20">购物车中还没有商品，赶紧去选购吧</p>
                </ul>
            </li>
        </ul>
    </div><!-- /.container-fluid -->
</nav>