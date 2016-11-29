<div class="panel panel-default">
    <div class="panel-heading">
        <h2>详情</h2>
    </div>
    <div class="panel-body">
        <dl class="dl-horizontal">
            <dt>订单号：</dt>
            <dd><?php echo empty($data['order_no'])?'':$data['order_no']; ?></dd>
            <dt>用户姓名：</dt>
            <dd><?php echo empty($data['name_real'])?'':$data['name_real']; ?></dd>
            <dt>用户昵称：</dt>
            <dd><?php echo empty($data['name_nick'])?'':$data['name_nick']; ?></dd>
            <dt>商品总价：</dt>
            <dd><?php echo empty($data['money_goods'])?'':$data['money_goods']; ?></dd>
            <dt>优惠价格：</dt>
            <dd><?php echo empty($data['money_preferential'])?'':$data['money_preferential']; ?></dd>
            <dt>配送费用：</dt>
            <dd><?php echo empty($data['money_shipping'])?'':$data['money_shipping']; ?></dd>
            <dt>实际支付：</dt>
            <dd><?php echo empty($data['money_end'])?'':$data['money_end']; ?></dd>
            <dt>支付方式：</dt>
            <dd><?php echo empty($data['payment_name'])?'':$data['payment_name']; ?></dd>
            <dt>省：</dt>
            <dd><?php echo empty($data['accept_province'])?'':$data['accept_province']; ?></dd>
            <dt>市：</dt>
            <dd><?php echo empty($data['accept_city'])?'':$data['accept_city']; ?></dd>
            <dt>区：</dt>
            <dd><?php echo empty($data['accept_area'])?'':$data['accept_area']; ?></dd>
            <dt>地址：</dt>
            <dd><?php echo empty($data['accept_address'])?'':$data['accept_address']; ?></dd>
            <dt>联系人：</dt>
            <dd><?php echo empty($data['accept_name'])?'':$data['accept_name']; ?></dd>
            <dt>联系号码：</dt>
            <dd><?php echo empty($data['accept_phone'])?'':$data['accept_phone']; ?></dd>
            <dt>备注：</dt>
            <dd><?php echo empty($data['remark'])?'':$data['remark']; ?></dd>
            <dt>创建时间：</dt>
            <dd><?php echo empty($data['date_add'])?'':$data['date_add']; ?></dd>
            <dt>支付时间：</dt>
            <dd><?php echo empty($data['date_pay'])?'':$data['date_pay']; ?></dd>
            <dt>发货时间：</dt>
            <dd><?php echo empty($data['date_send'])?'':$data['date_send']; ?></dd>
            <dt>完成时间：</dt>
            <dd><?php echo empty($data['date_end'])?'':$data['date_end']; ?></dd>
            <dt>订单状态：</dt>
            <dd>
                <?php echo $order_status[$data['status']];?>
            </dd>

            <dt>订单商品：</dt>
            <dd>
                <table class="table table-bordered table-striped table-condensed table-hover">
                    <tr>
                        <th>图片</th>
                        <th>商品名称</th>
                        <th>价格</th>
                        <th>数量</th>
                    </tr>
                    <?php if(!empty($data['goods'])){foreach($data['goods'] as $k=>$v){ ?>
                        <tr>
                            <td class="img-item-default">
                                <img src="<?php echo $v['image'];?>"/>
                            </td>
                            <td><?php echo empty($v['goods_name'])?'':$v['goods_name']; ?></td>
                            <td><?php echo empty($v['money'])?'':$v['money']; ?></td>
                            <td><?php echo empty($v['amount'])?'':$v['amount']; ?></td>
                        </tr>
                    <?php }} ?>
                </table>
            </dd>
            <dt></dt>
            <dd><input type="button" class="btn btn-sm btn-danger" value="返回" onclick="back()"></dd>
        </dl>

    </div>
</div>
