<div class="panel panel-default">
    <div class="panel-heading">
        <h2>权限设置</h2>
    </div>
    <div class="panel-body">
        <form class="form-horizontal" name="edit_form" id="edit_form" action="<?php echo site_url('role/access_do');?>" method="post">
            <input type="hidden" name="role_id" id="role_id" value="<?php echo empty($role_id)?'':$role_id;?>">
            <div class="dd" style="width:100%;">
                <ol class="dd-list">
                    <?php if(!empty($menu)){ ?>
                    <?php foreach($menu as $k=>$v){?>
                    <li class="dd-item dd3-item" data-id="1">
                        <label class="dd-handle dd3-handle">
                            <input type="checkbox" name="key[]" value="<?php echo $v['key'];?>" 
                            <?php if(!empty($access_list)){ ?>
                            <?php foreach( $access_list as $ac){ ?>
                            <?php if($ac['key'] == $v['key']){?>checked="checked"<?php } ?>
                            <?php } ?>
                            <?php } ?>>
                        </label>
                        <div class="dd3-content"><?php echo $v['name'];?></div>
                        <?php if(!empty($v['sons'])){ ?>
                        <ol class="dd-list">
                            <?php foreach($v['sons'] as $kk=>$vv){?>
                            <li class="dd-item dd3-item" data-id="1">
                                <label class="dd-handle dd3-handle">
                                    <input type="checkbox" name="key[]" value="<?php echo $vv['key'];?>"
                                    <?php if(!empty($access_list)){ ?>
                                    <?php foreach( $access_list as $ac){ ?>
                                    <?php if($ac['key'] == $vv['key']){?>checked="checked"<?php } ?>
                                    <?php } ?>
                                    <?php } ?>>
                                </label>
                                <div class="dd3-content"><?php echo $vv['name'];?></div>
                                <?php if(!empty($vv['auth'])){ ?>
                                <ol class="dd-list">
                                    <?php foreach($vv['auth'] as $kkk=>$vvv){?>
                                    <li class="dd-item dd3-item" data-id="1">
                                        <label class="dd-handle dd3-handle">
                                            <input type="checkbox" name="key[]" value="<?php echo $vvv['key'];?>"
                                            <?php if(!empty($access_list)){ ?>
                                            <?php foreach( $access_list as $ac){ ?>
                                            <?php if($ac['key'] == $vvv['key']){?>checked="checked"<?php } ?>
                                            <?php } ?>
                                            <?php } ?>>
                                        </label>
                                        <div class="dd3-content"><?php echo $vvv['name'];?></div>
                                    </li>
                                    <?php } ?>
                                </ol>
                                <?php } ?>
                            </li>
                            <?php } ?>
                        </ol>
                        <?php } ?>
                    </li>
                    <?php } ?>
                    <?php } ?>
                </ol>
            </div>
        </form>
    </div>
    <div class="panel-footer">
        <input type="button" class="btn btn-sm btn-success" value="确认" onclick="access_do()">
        <input type="button" class="btn btn-sm btn-danger" value="返回" onclick="back()">
    </div>
</div>