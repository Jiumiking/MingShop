<nav class="navbar hidden-xs" id="site-menu">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="<?php echo site_url();?>">
                <img alt="Brand" src="<?php echo empty($this_setting['logo_name'])?'':base_url('/uploads/logo/'.$this_setting['logo_name']);?>">
            </a>
        </div>
        
        <ul class="nav navbar-nav ">
            <li><a href="<?php echo site_url('goods/my_list');?>">全部产品</a></li>
            <li><a href="<?php echo site_url('weixin/likes');?>">图片上传</a></li>
        </ul>
        <form class="navbar-form navbar-right" role="search">
            <div class="input-group">
                <input type="text" name="search" class="form-control" placeholder="找什么？">
                <span class="input-group-btn">
                    <button type="button" class="btn btn-primary">搜索</button>
                </span>
            </div>
        </form>
    </div><!-- /.container-fluid -->
</nav>