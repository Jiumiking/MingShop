<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 前台控制器
 * @category    controller
 * @author      ming.king
 * @date        2016/7/22
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
        $this->this_view_data['menu'] = 'goods';
        $this->load->model('mdl_article');
        $this->load->model('mdl_article_category');

        $data_category = $this->mdl_article_category->my_selects(0,0,array(),'id ASC');
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
        $this->this_view_data['data'] = $this->mdl_article->my_select( $_GET['id'] );
        $this->this_view_data['data_detail'] = $this->mdl_article->detail_get( $_GET['id'] );

        $this->load->view( $this->this_controller.'/'.$this->this_controller.'_show',$this->this_view_data );
    }
}