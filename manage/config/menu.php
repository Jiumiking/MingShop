<?php

$config['menu'] = array(
    array('name'=>'首页', 'icon'=>'fa fa-home', 'key'=>'home', 'link'=>'home',),
    array('name'=>'系统管理', 'icon'=>'fa fa-cogs', 'key'=>'setting', 'link'=>'',
        'sons' => array(
            array('name'=>'系统设置', 'icon'=>'fa fa-cog', 'key'=>'setting/setting_base', 'link'=>'setting/setting_base'),
            array('name'=>'日志管理', 'icon'=>'fa fa-save', 'key'=>'log/my_list', 'link'=>'log/my_list'),
        ),
    ),
    array('name'=>'用户管理', 'icon'=>'fa fa-users', 'key'=>'user','link'=>'',
        'sons' => array(
            array('name'=>'用户管理', 'icon'=>'fa fa-male', 'key'=>'user/my_list', 'link'=>'user/my_list',
                'auth' => array(
                    array('name'=>'编辑', 'key'=>'user/my_edit'),
                    array('name'=>'删除', 'key'=>'user/my_del'),
                    array('name'=>'修改密码', 'key'=>'user/change_pwd'),
                    array('name'=>'锁定', 'key'=>'user/lock'),
                ),
            ),
            array('name'=>'角色管理', 'icon'=>'fa fa-female', 'key'=>'role/my_list', 'link'=>'role/my_list'),
        ),
    ),
    array('name'=>'商品管理', 'icon'=>'fa fa-briefcase', 'key'=>'goods','link'=>'',
        'sons' => array(
            array('name'=>'商品管理', 'icon'=>'fa fa-briefcase', 'key'=>'goods/my_list', 'link'=>'goods/my_list',
                'auth' => array(
                    array('name'=>'编辑', 'key'=>'goods/my_edit'),
                    array('name'=>'删除', 'key'=>'goods/my_del'),
                ),
            ),
            array('name'=>'分类管理', 'icon'=>'fa fa-align-justify', 'key'=>'category/my_list', 'link'=>'category/my_list',
                'auth' => array(
                    array('name'=>'编辑', 'key'=>'category/my_edit'),
                    array('name'=>'删除', 'key'=>'category/my_del'),
                ),
            ),
            array('name'=>'类型管理', 'icon'=>'fa fa-ellipsis-h', 'key'=>'goods_type/my_list', 'link'=>'goods_type/my_list',
                'auth' => array(
                    array('name'=>'编辑', 'key'=>'goods_type/my_edit'),
                    array('name'=>'删除', 'key'=>'goods_type/my_del'),
                ),
            ),
            array('name'=>'规格管理', 'icon'=>'fa fa-ellipsis-v', 'key'=>'format/my_list', 'link'=>'format/my_list',
                'auth' => array(
                    array('name'=>'编辑', 'key'=>'format/my_edit'),
                    array('name'=>'删除', 'key'=>'format/my_del'),
                ),
            ),
            array('name'=>'品牌管理', 'icon'=>'fa fa-apple', 'key'=>'brand/my_list', 'link'=>'brand/my_list',
                'auth' => array(
                    array('name'=>'编辑', 'key'=>'brand/my_edit'),
                    array('name'=>'删除', 'key'=>'brand/my_del'),
                ),
            ),
        ),
    ),
    array('name'=>'文章管理', 'icon'=>'fa fa-file', 'key'=>'article','link'=>'',
        'sons' => array(
            array('name'=>'文章管理', 'icon'=>'fa fa-file', 'key'=>'article/my_list', 'link'=>'article/my_list',
                'auth' => array(
                    array('name'=>'编辑', 'key'=>'article/my_edit'),
                    array('name'=>'删除', 'key'=>'article/my_del'),
                ),
            ),
            array('name'=>'文章分类', 'icon'=>'fa fa-align-justify', 'key'=>'article_category/my_list', 'link'=>'article_category/my_list',
                'auth' => array(
                    array('name'=>'编辑', 'key'=>'article_category/my_edit'),
                    array('name'=>'删除', 'key'=>'article_category/my_del'),
                ),
            ),
        ),
    ),
    array('name'=>'会员管理', 'icon'=>'fa fa-user', 'key'=>'member/my_list', 'link'=>'member/my_list',
        'auth' => array(
            array('name'=>'编辑', 'key'=>'member/my_edit'),
            array('name'=>'删除', 'key'=>'member/my_del'),
        ),
    ),
    array('name'=>'订单管理', 'icon'=>'fa fa-th-list', 'key'=>'order/my_list', 'link'=>'order/my_list',
        'auth' => array(
            array('name'=>'编辑', 'key'=>'order/my_edit'),
            array('name'=>'删除', 'key'=>'order/my_del'),
        ),
    ),
    array('name'=>'评论管理', 'icon'=>'fa fa-comments', 'key'=>'comment/my_list','link'=>'comment/my_list',
        'auth' => array(
            array('name'=>'审核', 'key'=>'comment/status_edit'),
            array('name'=>'删除', 'key'=>'comment/my_del'),
        ),
    ),
);