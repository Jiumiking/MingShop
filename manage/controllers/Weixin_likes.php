<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 后台控制器
 * @category    controller
 * @author      ming.king
 * @date        2015/11/26
 */
class Weixin_likes extends MY_Controller{
    /**
     * 构造函数
     *
     * @access  public
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        $this->_views['comment_status'] = $this->config->item('comment_status');
    }
    /**
     * 状态 ajax
     * @access  public
     * @return  void
     */
    public function status_edit(){
        if( empty($_GET['id']) || empty($_GET['status']) ){
            $this->ajax_views['msg'] = '参数错误';
            $this->ajax_end();
        }
        $data['status'] = $_GET['status'];
        if( $this->{$this->this_model}->my_update( $_GET['id'], $data) ){
            $this->ajax_views['sta'] = '1';
            $this->ajax_views['msg'] = '操作成功';
        }else{
            $this->ajax_views['msg'] = '操作失败';
        }
        $this->ajax_end();
    }
}