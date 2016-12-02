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
                    <i class="glyphicon glyphicon-search"></i>
                </button>

                <?php if($info['status'] == 1){ ?>
                <button type="button" class="btn btn-danger btn-xs" title="取消" onclick="status('<?php echo $info['id'];?>','0')" >
                    <i class="glyphicon glyphicon-remove "></i>
                </button>
                <?php }else if( $info['status'] == 2 ){ ?>
                    <button type="button" class="btn btn-danger btn-xs" title="发货" onclick="send('<?php echo $info['id'];?>')" >
                        <i class="glyphicon glyphicon-envelope"></i>
                    </button>
                <?php }else if( $info['status'] == 3 ){ ?>
                    <button type="button" class="btn btn-danger btn-xs" title="完成" onclick="done('<?php echo $info['id'];?>')" >
                        <i class="glyphicon glyphicon-ok"></i>
                    </button>
                <?php } ?>
            </td>
        </tr>
    <?php } ?>
<?php }else{ ?>
    <tr>
        <td colspan="9">未找到有效数据</td>
    </tr>
<?php } ?>