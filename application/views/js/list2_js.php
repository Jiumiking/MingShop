<script src="<?php echo base_url('application/js/page.js');?>"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $(".thumbnail").find("div.thumbnail-img-div").each(function(){
            $(this).height($(this).width());
        });
        $(window).resize(function(){
            $(".thumbnail").find("div.thumbnail-img-div").each(function(){
                $(this).height($(this).width());
            });
        });

        $(window).scroll(function(){
            if($(document).height() - $(window).height() - $(document).scrollTop() < 20){
                if( pagelist.pageCount>pagelist.filter['page'] ){
                    pagelist.nextPage();
                }
            }
        });
    });

    //分页
    var pagelist = new PageList("<?php echo site_url($this_controller.'/my_page');?>",<?php echo empty($this_setting['page_number'])?10:$this_setting['page_number'];?>);
    pagelist.pageCount = <?php echo $pages['page_count']?>;
    pagelist.pageCallback = function(data){
        data = eval("("+ data +")");
        var $boxes = $( data.list_content );
        $("#list_content").append( $boxes );
        $(".thumbnail").find("div.thumbnail-img-div").each(function(){
            $(this).height($(this).width());
        });
    }
</script>