<?php if(!empty($data)){ foreach($data as $info){ ?>
<div class="col-sm-6 col-md-3 masonry-list">
    <div class="thumbnail">
        <div class="thumbnail-img-div">
            <a href="<?php echo site_url('goods/my_show?id='.$info['id']);?>">
            <img src="<?php echo $info['image'];?>" />
            </a>
        </div>
        <div class="caption">
            <h5><a href="<?php echo site_url('goods/my_show?id='.$info['id']);?>"><?php echo $info['name'];?></a></h5>
            <small><?php echo $info['title'];?></small>
            <p class="error-block"><?php echo $info['money_out'];?></p>
        </div>
    </div>
</div>
<?php }}else{ ?>
<div class="col-sm-6 col-md-3 masonry-list">
      无
</div>
<?php } ?>
