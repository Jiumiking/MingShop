<?php if(!empty($data)){ ?>
    <?php foreach($data as $info){ ?>
        <tr>
            <td><?php echo $info['order_no'];?></td>
            <td>
                <a href="javascript:show(<?php echo $info['member_id'];?>,'member')"><?php echo $info['name_nick']; ?>
            </td>
            <td><?php echo $info['payment_name'];?></td>
            <td><?php echo $info['money_end'];?></td>
            <td><?php echo $info['accept_name']; ?></td>
            <td><?php echo $info['accept_city']; ?></td>
            <td><?php echo $info['date_add']; ?></td>
            <td><?php echo empty($order_status[$info['status']])?'':$order_status[$info['status']]; ?></td>
            <td>
                <button type="button" class="btn btn-primary btn-xs" title="查看" onclick="show('<?php echo $info['id'];?>')" >
                    <i class="fa fa-search"></i>
                </button>

                <button type="button" class="btn btn-danger btn-xs" title="删除" onclick="del('<?php echo $info['id'];?>')" >
                    <i class="fa fa-trash-o "></i>
                </button>
            </td>
        </tr>
    <?php } ?>
<?php }else{ ?>
    <tr>
        <td colspan="9">未找到有效数据</td>
    </tr>
<?php } ?>