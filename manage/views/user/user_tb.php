<?php if(!empty($data)){ ?>
<?php foreach($data as $info){ ?>
<tr>
    <td><?php echo $info['name']; ?></td>
    <td><?php echo $info['name_real']; ?></td>
    <td><?php echo $info['phone']; ?></td>
    <td><?php echo $info['email']; ?></td>
    <td>
    <?php if(!empty($data_role)){ ?>
    <?php foreach($data_role as $value){ ?>
     <?php if( $value['id'] == $info['role'] ){ echo $value['name']; } ?>
    <?php } ?>
    <?php } ?>
    </td>
    <td><?php echo $info['date_add']; ?></td>
    <td><?php echo $info['password_times']; ?></td>
    <td><?php if($info['status'] == '1'){echo '有效';}else if($info['status'] == '2'){echo '锁定';}else if($info['status'] == '3'){echo '注销';} ?></td>
    <td>
        <button type="button" class="btn btn-primary btn-xs" title="修改密码" onclick="change_user_pwd('<?php echo $info['id'];?>')" >
            <i class="fa fa-key "></i>
        </button>
        <?php if($info['id'] != '100'){ ?>
        <button type="button" class="btn btn-primary btn-xs" title="编辑" onclick="edit('<?php echo $info['id'];?>')" >
            <i class="fa fa-edit "></i>
        </button>
        <button type="button" class="btn btn-danger btn-xs" title="删除" onclick="del('<?php echo $info['id'];?>')" >
            <i class="fa fa-trash-o "></i>
        </button>
        <?php } ?>
        <?php if( !empty($info['status']) && $info['status'] == '1' ){ ?>
        <button type="button" class="btn btn-primary btn-xs" title="锁定" onclick="lock('<?php echo $info['id'];?>','2')" >
            <i class="fa fa-lock "></i>
        </button>
        <?php }else{ ?>
        <button type="button" class="btn btn-primary btn-xs" title="解锁" onclick="lock('<?php echo $info['id'];?>','1')" >
            <i class="fa fa-unlock "></i>
        </button>
        <?php } ?>
    </td>
</tr>
<?php } ?>
<?php }else{ ?>
<tr>
    <td colspan="9">未找到有效数据!</td>
</tr>
<?php } ?>