<?php if(!empty($data)){ ?>
<?php foreach($data as $info){ ?>
<tr>
    <td><?php echo $info['member_name'];?></td>
    <td class="width100"><?php if(!empty($info['image'])){?><img src="<?php echo $this->config->item('front_url').'/uploads/weixin/'.$info['image'];?>"/><?php } ?>
    </td>
    <td><?php echo $info['content'];?></td>
    <td><?php echo $info['up']; ?></td>
    <td><?php echo $info['date_add']; ?></td>
    <td><?php echo empty($comment_status[$info['status']])?'':$comment_status[$info['status']]; ?></td>
    <td>
        <?php if($info['status'] == 0){ ?>
            <button type="button" class="btn btn-danger btn-xs" title="使用" onclick="status('<?php echo $info['id'];?>','1')" >
                <i class="fa fa-chevron-up"></i>
            </button>
            <button type="button" class="btn btn-success btn-xs" title="禁止" onclick="status('<?php echo $info['id'];?>','2')" >
                <i class="fa fa-chevron-down"></i>
            </button>
        <?php }else if($info['status'] == 1){ ?>
            <button type="button" class="btn btn-success btn-xs" title="禁止" onclick="status('<?php echo $info['id'];?>','2')" >
                <i class="fa fa-chevron-down"></i>
            </button>
        <?php }else if($info['status'] == 2){ ?>
            <button type="button" class="btn btn-danger btn-xs" title="使用" onclick="status('<?php echo $info['id'];?>','1')" >
                <i class="fa fa-chevron-up"></i>
            </button>
        <?php } ?>

        <button type="button" class="btn btn-danger btn-xs" title="删除" onclick="del('<?php echo $info['id'];?>')" >
            <i class="fa fa-trash-o "></i>
        </button>
    </td>
</tr>
<?php } ?>
<?php }else{ ?>
<tr>
    <td colspan="7">未找到有效数据</td>
</tr>
<?php } ?>