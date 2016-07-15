<?php if(!empty($data)){ ?>
<?php foreach($data as $info){ ?>
<tr>
    <td><?php echo $info['id']; ?></td>
    <td><?php echo $info['name']; ?></td>
    <td>
        <?php
        for($i=1;$i<=5;$i++){
            if(!empty($info['format'.$i])){
                foreach($data_format as $v){
                    if($v['id'] == $info['format'.$i]){
                        echo $v['name'].' ';
                    }
                }
            }
        }
        ?>
    </td>
    <td>
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
    <td colspan="4">未找到有效数据</td>
</tr>
<?php } ?>