<?php if(!empty($data)){ ?>
<?php foreach($data as $info){ ?>
<tr>
    <td><?php echo $info['name_real']; ?></td>
    <td><?php echo $info['name_nick']; ?></td>
    <td><?php echo $info['phone']; ?></td>
    <td><?php echo $info['email']; ?></td>
    <td><?php if($info['sex']=='0'){echo '保密';}else if($info['sex']=='1'){echo '男';}else if($info['sex']=='2'){echo '女';} ?></td>
    <td><?php echo $info['integral']; ?></td>
    <td><?php echo $info['date_add']; ?></td>
    <td>
        <button type="button" class="btn btn-primary btn-xs" title="查看" onclick="show('<?php echo $info['id'];?>')" >
            <i class="fa fa-search"></i>
        </button>
        <button type="button" class="btn btn-primary btn-xs" title="编辑" onclick="edit('<?php echo $info['id'];?>')" >
            <i class="fa fa-edit"></i>
        </button>
        <button type="button" class="btn btn-danger btn-xs" title="删除" onclick="del('<?php echo $info['id'];?>')" >
            <i class="fa fa-trash-o"></i>
        </button>
    </td>
</tr>
<?php } ?>
<?php }else{ ?>
<tr>
    <td colspan="8">未找到有效数据</td>
</tr>
<?php } ?>