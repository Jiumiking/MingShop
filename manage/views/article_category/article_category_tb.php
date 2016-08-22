<?php if(!empty($data)){ ?>
<?php echo sons($data);?>
<?php }else{ ?>
<tr>
    <td colspan="4">未找到有效数据</td>
</tr>
<?php } ?>


<?php
function sons($data,$deep=0){
    $html = '';
    if( !empty($data) ){
        foreach( $data as $k=>$v ){
            $html .= '
<tr class="sons_tr '.($deep == 0?'':'hide').'" data="'.$v['parent_id'].'" data2="'.$v['id'].'">
    <td class="pl_'.$deep.'">'.(!empty($v['sons'])?'<a href="javascript:void(0);" onclick="sons_control('.$v['id'].')"><li id="sons_li_'.$v['id'].'" class="fa fa-plus-square"></li></a>':'<li class="fa fa-circle"></li>').$v['name'].'</td>
    <td>'.$v['sort'].'</td>
    <td>
        '.(empty($v['status'])?'否':'是').'
    </td>
    <td>
        <button type="button" class="btn btn-primary btn-xs" title="编辑" onclick="edit('.$v['id'].')" >
            <i class="fa fa-edit "></i>
        </button>
        <button type="button" class="btn btn-danger btn-xs" title="删除" onclick="del('.$v['id'].')" >
            <i class="fa fa-trash-o "></i>
        </button>
    </td>
</tr>
            ';
            if(!empty($v['sons'])){
                $html .= sons($v['sons'],$deep+1);
            }
        }
    }
    return $html;
}
?>