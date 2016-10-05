<?php 

if(!empty($data_category)){
    echo category_list($data_category);
}
function category_list($data,$deep=0){
    $html = '';
    if( !empty($data) ){
        foreach( $data as $k=>$v ){
            if( $v['status'] == '1' ){
                $html .= '<div class="sons_tr list-group-item pl_'.$deep.' '.($deep == 0?'':'hide').'" data="'.$v['parent_id'].'" data2="'.$v['id'].'">'.(!empty($v['sons'])?'<a href="javascript:void(0);" onclick="sons_control('.$v['id'].')"><li id="sons_li_'.$v['id'].'" class="fa fa-plus-square"></li></a>':'<li class="fa fa-circle"></li>').'<a href="javascript:void(0);" onclick="category('.$v['id'].')">'.$v['name'].'</a></div>';
                $html .= category_list($v['sons'],$deep+1);
            }
        }
    }
    return $html;
}
?>
<script type="text/javascript">
/*伸展，收缩*/
function sons_control(id){
    if($("#sons_li_"+id).hasClass('fa-plus-square')){//展开
        sons_li($("#sons_li_"+id),1);
        sons_sh(id,1);
    }else{
        sons_li($("#sons_li_"+id),2);
        sons_sh(id,2);
    }
    
}
function sons_sh(id,type){
    $(".sons_tr").each(function(){
        if( $(this).attr('data') == id ){//子孙
            if( type=='1' ){
                $(this).removeClass('hide');
            }else{
                $(this).addClass('hide');
                var this_id = $(this).attr('data2');
                sons_li($("#sons_li_"+this_id),2);
                sons_sh(this_id,type);
            }
        }
    });
}
function sons_li(obj,type){
    if(type==1){
        $(obj).removeClass('fa-plus-square');
        $(obj).addClass('fa-minus-square');
    }else{
        $(obj).addClass('fa-plus-square');
        $(obj).removeClass('fa-minus-square');
    }
}
/*伸展，收缩*/
function category(id){
    $(".sons_tr").each(function(){
        $(this).removeClass('active');
        if( $(this).attr('data2') == id ){
            $(this).addClass('active');
        }
    });
    pagelist.pageCallback = function(data){
        data = eval("("+ data +")");
        if( data.list_content == '' ){
            var $boxes = $( '<div>无</div>' );
        }else{
            var $boxes = $( data.list_content );
        }

        $("#list_content").html( $boxes );
        $(".thumbnail").find("div.thumbnail-img-div").each(function(){
            $(this).height($(this).width());
        });
        pagelist.pageCallback = function(data){
            data = eval("("+ data +")");
            var $boxes = $( data.list_content );
            $("#list_content").append( $boxes );
            $(".thumbnail").find("div.thumbnail-img-div").each(function(){
                $(this).height($(this).width());
            });
        }
    }
    pagelist.filter['category'] = id;
    pagelist.filter['page'] = 1;
    pagelist.loadPage();
}
</script>