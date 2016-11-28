<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
<?php $this->load->view('base/header_nav'); ?>
<?php $this->load->view('base/header_menu'); ?>
    <div class="container" id="site_main">
        <div id="main_content">
            <div class="row">
                <div class="col-md-12">
                        <h4><?php echo empty($data['name'])?'':$data['name'];?></h4>
                        <?php if(!empty($data['title'])){ ?>
                            <p><small><?php echo empty($data['title'])?'':''.$data['title'];?></small></p>
                        <?php } ?>
                        <p><small><?php echo $data['date_add'];?></small></p>
<!--                    <blockquote>-->
<!--                        <p>--><?php //echo empty($data['name'])?'':$data['name'];?><!--</p>-->
<!--                        --><?php //if(!empty($data['title'])){ ?>
<!--                            <small>--><?php //echo empty($data['title'])?'':''.$data['title'];?><!--</small>-->
<!--                        --><?php //} ?>
<!--                        <small>--><?php //echo $data['date_add'];?><!--</small>-->
<!--                    </blockquote>-->

                    <?php if(!empty($data['image'])){ ?>
                    <div class="show_img">
                        <img src="<?php echo $data['image'];?>"/>
                    </div>
                    <?php } ?>
                    <div id="goods_info_detail">
                        <?php echo $data_detail['detail'];?>
                    </div>


                    <ul class="nav tab-menu nav-tabs">
                        <li role="presentation" class="active"><a data-toggle="tab" href="#goods_info_comment">评论</a></li>
                    </ul>
                    <div id="goods_info_comment">
                    </div>

                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function(){
            init();
        });
        //入口方法
        function init(){
            comment_load();
        }
        //加载评论
        function comment_load(){
            $.ajax({
                type : "GET",
                async : true,
                url : "<?php echo site_url('comment/ajax_show');?>",
                data : { otype:1, oid:<?php echo $data['id'];?> },
                success : function(msg){
                    if(msg){
                        var msgobj = eval("("+ msg +")");
                        if(msgobj.sta == '1'){
                            $('#goods_info_comment').html(msgobj.dat);
                        }
                    }
                }
            });
        }
    </script>
<?php $this->load->view('base/footer'); ?>