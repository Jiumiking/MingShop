<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 后台控制器
 * @category    controller
 * @author      ming.king
 * @date        2015/11/26
 */
class Article extends MY_Controller{
    /**
     * 构造函数
     *
     * @access  public
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        $this->load->model('mdl_article_category');
        $this->load->library('upload');
        $this->_views['data_category'] = $this->mdl_article_category->options();
    }
    /**
     * 编辑ajax
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function my_edit(){
        $this->_views['data_category'] = $this->mdl_article_category->options();
        if( !empty($_GET['id']) ){
            $this->_views['data'] = $this->{$this->this_model}->my_select( $_GET['id'] );
            $this->_views['data_detail'] = $this->{$this->this_model}->detail_get( $_GET['id'] );
        }
        $this->ajax_views['dat'] = $this->load->view( $this->this_controller.'/'.$this->this_controller.'_edit', $this->_views, true );
        $this->ajax_views['sta'] = '1';
        $this->ajax_views['msg'] = '获取成功';
        $this->ajax_end();
    }
    /**
     * 编辑执行ajax
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function my_edit_do(){
        //echo '<pre>';print_r($_POST);exit;
        $id = empty($_POST['id'])?0:$_POST['id'];

        $data['status'] = empty($_POST['status'])?0:$_POST['status'];
        $data['category_id'] = empty($_POST['category_id'])?0:$_POST['category_id'];
        $data['name'] = empty($_POST['name'])?'':$_POST['name'];
        $data['title'] = empty($_POST['title'])?'':$_POST['title'];
        $data['image'] = empty($_POST['image'])?'':$_POST['image'];
        if( empty($data['category_id']) || empty($data['name']) ){
            $this->ajax_views['msg'] = '参数错误';
            $this->ajax_end();
        }

        $data_detail = empty($_POST['detail'])?'':$_POST['detail'];
        /**begin**/
        $this->db->trans_start();
        if( !empty($id) ){
            $back = $this->{$this->this_model}->my_update( $id,$data ); //更新
        }else{
            $back = $this->{$this->this_model}->my_insert( $data ); //新插入
            $id = $this->db->insert_id();
        }
        if($back){
            $this->{$this->this_model}->detail_edit( $id, $data_detail ); //保存内容
            $this->ajax_views['sta'] = '1';
            $this->ajax_views['msg'] = '操作成功';
        }
        $this->db->trans_complete();
        /**end**/
        $this->ajax_end();
    }
}