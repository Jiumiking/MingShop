<?php

$config['menu'] = array(
    array('name'=>'首页', 'icon'=>'fa fa-home', 'key'=>'home', 'link'=>'home',),
    array('name'=>'系统管理', 'icon'=>'fa fa-cogs', 'key'=>'setting', 'link'=>'',
        'sons' => array(
            array('name'=>'基本设置', 'icon'=>'fa fa-cog', 'key'=>'setting/setting_base', 'link'=>'setting/setting_base'),
            array('name'=>'日志管理', 'icon'=>'fa fa-save', 'key'=>'log/my_list', 'link'=>'log/my_list'),
        ),
    ),
    array('name'=>'用户管理', 'icon'=>'fa fa-users', 'key'=>'user','link'=>'',
        'sons' => array(
            array('name'=>'用户管理', 'icon'=>'fa fa-user', 'key'=>'user/my_list', 'link'=>'user/my_list',
                'auth' => array(
                    array('name'=>'用户编辑', 'key'=>'user/my_edit'),
                    array('name'=>'用户删除', 'key'=>'user/my_del'),
                    array('name'=>'用户修改密码', 'key'=>'user/change_pwd'),
                    array('name'=>'用户锁定', 'key'=>'user/lock'),
                ),
            ),
            array('name'=>'角色管理', 'icon'=>'fa fa-sitemap', 'key'=>'role/my_list', 'link'=>'role/my_list'),
        ),
    ),
    array('name'=>'会员管理', 'icon'=>'fa fa-male', 'key'=>'member/my_list', 'link'=>'member/my_list',),
    array('name'=>'商品管理', 'icon'=>'fa fa-gift', 'key'=>'goods','link'=>'',
        'sons' => array(
            array('name'=>'商品管理', 'icon'=>'fa fa-gift', 'key'=>'goods/my_list', 'link'=>'goods/my_list',
                'auth' => array(
                    array('name'=>'商品编辑', 'key'=>'goods/my_edit'),
                    array('name'=>'商品删除', 'key'=>'goods/my_del'),
                ),
            ),
            array('name'=>'类型管理', 'icon'=>'fa fa-ellipsis-h', 'key'=>'goods_type/my_list', 'link'=>'goods_type/my_list',
                'auth' => array(
                    array('name'=>'类型编辑', 'key'=>'goods_type/my_edit'),
                    array('name'=>'类型删除', 'key'=>'goods_type/my_del'),
                ),
            ),
            array('name'=>'规格管理', 'icon'=>'fa fa-ellipsis-v', 'key'=>'format/my_list', 'link'=>'format/my_list',
                'auth' => array(
                    array('name'=>'规格编辑', 'key'=>'format/my_edit'),
                    array('name'=>'规格删除', 'key'=>'format/my_del'),
                ),
            ),
            array('name'=>'品牌管理', 'icon'=>'fa fa-apple', 'key'=>'brand/my_list', 'link'=>'brand/my_list',
                'auth' => array(
                    array('name'=>'品牌编辑', 'key'=>'brand/my_edit'),
                    array('name'=>'品牌删除', 'key'=>'brand/my_del'),
                ),
            ),
        ),
    ),
);