<!--<script src="--><?php //echo base_url('application/js/jweixin-1.0.0.js');?><!--"></script>-->
<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript">
    wx.config({
        debug: true, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
        appId: '<?php echo empty($wx_config['appId'])?'':$wx_config['appId'];?>', // 必填，公众号的唯一标识
        timestamp: <?php echo empty($wx_config['timestamp'])?'':$wx_config['timestamp'];?>, // 必填，生成签名的时间戳
        nonceStr: '<?php echo empty($wx_config['nonceStr'])?'':$wx_config['nonceStr'];?>', // 必填，生成签名的随机串
        signature: '<?php echo empty($wx_config['signature'])?'':$wx_config['signature'];?>',// 必填，签名，见附录1
        jsApiList: ['chooseImage','previewImage','uploadImage','downloadImage'] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
    });
    wx.ready(function () {
        // 在这里调用 API
        alert('初始化成功');
    });
    function choose_image(){alert(1);
        wx.chooseImage({
            count: 1, // 默认9
            sizeType: ['original', 'compressed'], // 可以指定是原图还是压缩图，默认二者都有
            sourceType: ['album', 'camera'], // 可以指定来源是相册还是相机，默认二者都有
            success: function (res) {
                var localIds = res.localIds; // 返回选定照片的本地ID列表，localId可以作为img标签的src属性显示图片
                alert(localIds);
            }
        });
    }
</script>