<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 后台控制器
 * @category    controller
 * @author      ming.king
 * @date        2015/11/26
 */
class Express extends MY_Controller{
    /**
     * 构造函数
     *
     * @access  public
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        $this->_views['default_status'] = $this->config->item('default_status');
    }
    /**
     * 状态 ajax
     * @access  public
     * @return  void
     */
    public function status_edit(){
        if( empty($_GET['id']) || empty($_GET['status']) ){
            $this->ajax_views['msg'] = $this->config->item(0,'default_ajax_status');
            $this->ajax_end();
        }
        $data['status'] = $_GET['status'];
        if( $this->{$this->this_model}->my_update( $_GET['id'], $data) ){
            $this->ajax_views['sta'] = '1';
            $this->ajax_views['msg'] = $this->config->item(1,'default_ajax_status');
        }else{
            $this->ajax_views['msg'] = $this->config->item(2,'default_ajax_status');
        }
        $this->ajax_end();
    }
}