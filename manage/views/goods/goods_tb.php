<?php if(!empty($data)){ ?>
<?php foreach($data as $info){ ?>
<tr>
    <td><?php echo $info['goods_no']; ?></td>
    <td><?php echo $info['name']; ?></td>
    <td>
    <?php if(!empty($data_goods_type)){
    foreach( $data_goods_type as $v ){
        if( $v['id'] == $info['type_id'] ){
            echo $v['name'];
        }
    }
    } ?>
    </td>
    <td><?php echo $info['date_add']; ?></td>
    <td><?php echo $info['date_status']; ?></td>
    <td><?php if($info['status'] == '1'){echo '上架';}else if($info['status'] == '2'){echo '下架';} ?></td>
    <td>
        <?php if( !empty($info['status']) && $info['status'] == '1' ){ ?>
        <button type="button" class="btn btn-primary btn-xs" title="下架" onclick="status_edit('<?php echo $info['id'];?>','2')" >
            <i class="fa fa-arrow-down "></i>
        </button>
        <?php }else{ ?>
        <button type="button" class="btn btn-primary btn-xs" title="上架" onclick="status_edit('<?php echo $info['id'];?>','1')" >
            <i class="fa fa-arrow-up "></i>
        </button>
        <?php } ?>
        <button type="button" class="btn btn-primary btn-xs" title="编辑" onclick="edit('<?php echo $info['id'];?>')" >
            <i class="fa fa-edit "></i>
        </button>
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