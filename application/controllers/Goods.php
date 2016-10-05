<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 前台控制器
 * @category    controller
 * @author      ming.king
 * @date        2016/7/22
 */
class Goods extends P_Controller{
    /**
     * 构造函数
     *
     * @access  public
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        $this->this_view_data['menu'] = 'goods';
        $this->load->model('mdl_goods');
        $this->load->model('mdl_goods_type');
        $this->load->model('mdl_category');
        $this->load->model('mdl_format');
        $this->this_view_data['data_goods_type'] = $this->mdl_goods_type->my_selects();

        $data_category = $this->mdl_category->my_selects(0,0,array(),'id ASC');
        $this->load->library('tree');
        $this->tree->setTree($data_category, 'id', 'parent_id', 'name');
        $this->this_view_data['data_category'] = $this->tree->getLists();
    }
    /**
     * 详情
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function my_show(){
        if( empty($_GET['id']) ){
            redirect( site_url() );
        }
        $this->this_view_data['data'] = $this->mdl_goods->my_select( $_GET['id'] );
        $this->this_view_data['data_detail'] = $this->mdl_goods->detail_get( $_GET['id'] );
        $goods_format = $this->mdl_goods->amount_get( $_GET['id'] );

        if( !empty($this->this_view_data['data']['type_id']) ){
            $type = $this->mdl_goods_type->my_select($this->this_view_data['data']['type_id']);
            $type_format = array();
            if( !empty($type) ){
                for( $i=1;$i<=5;$i++ ){
                    if( !empty($type['format'.$i]) ){
                        $type_format[$i]['id'] = $type['format'.$i];
                        $type_format[$i]['format'] = $this->mdl_format->my_select( $type['format'.$i] );
                    }
                }
            }
        }
        foreach( $type_format as $k=>$v ){
            $cnt = array();
            foreach( $goods_format as $vv ){
                if( !in_array($vv['format'.$k],$cnt) ){
                    $cnt[] = $vv['format'.$k];
                    $type_format[$k]['format_value'][] = $this->mdl_format->value_select( $vv['format'.$k] );
                }
            }
        }
        $this->this_view_data['goods_format'] = json_encode($goods_format);
        $this->this_view_data['type_format'] = $type_format;

//        $this->load->model('mdl_comment');
//        $this->this_view_data['comment_type'] = 2;
//        $this->this_view_data['data_comment'] = $this->mdl_comment->my_selects( 0,0,array('object_type'=>2,'object_id'=>$_GET['id']) );
        //echo '<pre>';print_r($this->this_view_data['goods_format']);exit;
        //echo '<pre>';print_r($this->this_view_data['data_comment']);exit;
        $this->load->view( $this->this_controller.'/'.$this->this_controller.'_show',$this->this_view_data );
    }
}