<?php $default_status = $this->config->item('default_status'); ?>
<?php if(!empty($data)){ ?>
<?php foreach($data as $info){ ?>
<tr>
    <td><?php echo $info['name']; ?></td>
    <td>
    <?php if(!empty($data_category)){
    foreach( $data_category as $k=>$v ){
        if( $k == $info['category_id'] ){
            echo $v;
        }
    }
    } ?>
    </td>
    <td><?php echo $info['read_times']; ?></td>
    <td><?php echo $info['date_add']; ?></td>
    <td><?php echo empty($default_status[$info['status']])?'':$default_status[$info['status']]; ?></td>
    <td>
        <?php if( !empty($info['status']) && $info['status'] == '1' ){ ?>
            <button type="button" class="btn btn-success btn-xs" title="禁止" onclick="status('<?php echo $info['id'];?>','2')" >
                <i class="fa fa-chevron-down "></i>
            </button>
        <?php }else{ ?>
            <button type="button" class="btn btn-danger btn-xs" title="使用" onclick="status('<?php echo $info['id'];?>','1')" >
                <i class="fa fa-chevron-up "></i>
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
    <td colspan="5">未找到有效数据</td>
</tr>
<?php } ?>