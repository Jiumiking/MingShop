<?php if(!empty($data)){ foreach($data as $info){ ?>
<div class="col-xs-6 col-sm-4 col-md-3 masonry-list">
    <div class="thumbnail">
        <div class="thumbnail-img-div">
            <a href="<?php echo site_url('weixin_likes/my_show?id='.$info['id']);?>">
            <img src="<?php echo base_url('uploads/weixin/'.$info['image']);?>" />
            </a>
        </div>
        <div class="caption-sm">
            <h5><a href="<?php echo site_url('weixin_likes/my_show?id='.$info['id']);?>"><?php echo $info['id'].'号：'.$info['member_name'];?></a></h5>
        </div>
    </div>
</div>
<?php }} ?>