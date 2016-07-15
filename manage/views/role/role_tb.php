<?php if(!empty($data)){ ?>
<?php foreach($data as $info){ ?>
<tr>
    <td><?php echo $info['id']; ?></td>
    <td><?php echo $info['name']; ?></td>
    <td><?php echo $info['parent_id']; ?></td>
    <td><?php echo $info['remark']; ?></td>
    <td>
        <?php if( $info['id'] != '1' ){ ?>
        <button type="button" class="btn btn-primary btn-xs" title="编辑" onclick="edit('<?php echo $info['id'];?>')" >
            <i class="fa fa-edit "></i>
        </button>
        <button type="button" class="btn btn-danger btn-xs" title="删除" onclick="del('<?php echo $info['id'];?>')" >
            <i class="fa fa-trash-o "></i>
        </button>
        <a href="javascript:void(0);" onclick="access('<?php echo $info['id'];?>')"><img src="<?php echo base_url('images/icon_setup.gif');?>" title="权限设置"></a>
        <?php } ?>
    </td>
</tr>
<?php } ?>
<?php }else{ ?>
<tr>
    <td colspan="5">未找到有效数据!</td>
</tr>
<?php } ?>