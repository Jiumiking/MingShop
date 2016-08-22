<div class="panel panel-default">
    <div class="panel-heading">
        <h2>详情</h2>
    </div>
    <div class="panel-body">
        <dl class="dl-horizontal">
            <dt>名称：</dt>
            <dd><?php echo empty($data['name_real'])?'':$data['name_real']; ?></dd>
            <dt>昵称：</dt>
            <dd><?php echo empty($data['name_nick'])?'':$data['name_nick']; ?></dd>
            <dt>性别：</dt>
            <dd><?php if( empty($data['sex']) || $data['sex'] == '1' ){ echo '男'; }else{echo '女';} ?></dd>
            <dt>手机号码：</dt>
            <dd><?php echo empty($data['phone'])?'':$data['phone']; ?></dd>
            <dt>邮箱：</dt>
            <dd><?php echo empty($data['email'])?'':$data['email']; ?></dd>
            <dt>微信：</dt>
            <dd><?php echo empty($data['weixin'])?'':$data['weixin']; ?></dd>
            <dt>QQ：</dt>
            <dd><?php echo empty($data['qq'])?'':$data['qq']; ?></dd>
            <dt>生日：</dt>
            <dd><?php echo empty($data['birthday'])?'':$data['birthday']; ?></dd>
            <dt>地址：</dt>
            <dd>
                <table class="table table-bordered table-striped table-condensed table-hover">
                    <tr>
                        <th>地区</th>
                        <th>地址</th>
                        <th>联系人</th>
                        <th>联系号码</th>
                    </tr>
                    <?php if(!empty($data_member_address)){foreach($data_member_address as $k=>$v){ ?>
                    <tr>
                        <td>
                            <?php foreach($data_address as $vv){ if( (!empty($v['province']) && $v['province']==$vv['number']) || (!empty($v['city']) && $v['city']==$vv['number']) || (!empty($v['area']) && $v['area']==$vv['number']) ){
                                echo $vv['name'].'&nbsp;&nbsp;';
                            }} ?>
                        </td>
                        <td><?php echo empty($v['detail'])?'':$v['detail']; ?></td>
                        <td><?php echo empty($v['phone'])?'':$v['phone']; ?></td>
                        <td><?php echo empty($v['person'])?'':$v['person']; ?></td>
                    </tr>
                    <?php }} ?>
                </table>
            </dd>
            <dt></dt>
            <dd><input type="button" class="btn btn-sm btn-danger" value="返回" onclick="back()"></dd>
        </dl>

    </div>
</div>
