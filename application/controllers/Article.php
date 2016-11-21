<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 前台控制器
 * @category    controller
 * @author      ming.king
 * @date        2015/11/26
 */
class Article extends P_Controller{
    /**
     * 构造函数
     *
     * @access  public
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        $this->load->model('mdl_article');
        $this->load->model('mdl_article_category');
        $this->_views['data_category'] = $this->mdl_article_category->options();
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
        $this->this_view_data['data'] = $this->mdl_article->my_select( $_GET['id'] );
        $this->this_view_data['data_detail'] = $this->mdl_article->detail_get( $_GET['id'] );


//        $this->load->model('mdl_comment');
//        $this->this_view_data['comment_type'] = 2;
//        $this->this_view_data['data_comment'] = $this->mdl_comment->my_selects( 0,0,array('object_type'=>2,'object_id'=>$_GET['id']) );
        //echo '<pre>';print_r($this->this_view_data['goods_format']);exit;
        //echo '<pre>';print_r($this->this_view_data['data_comment']);exit;
        $this->load->view( $this->this_controller.'/'.$this->this_controller.'_show',$this->this_view_data );
    }
}