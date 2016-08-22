<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 后台控制器
 * @category    controller
 * @author      ming.king
 * @date        2015/11/26
 */
class Order extends MY_Controller{
    /**
     * 构造函数
     *
     * @access  public
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        $this->load->model('mdl_order_goods');
        $this->load->model('mdl_payment');
        $this->_views['data_payment'] = $this->mdl_payment->my_selects();
        $this->_views['order_status'] = $this->config->item('order_status');
    }
    /**
     * 查看ajax
     * @access  protected
     * @param   mixed
     * @return  mixed
     */
    public function my_show(){
        if( !empty($_GET['id']) ){
            $data = $this->{$this->this_model}->my_select( $_GET['id'] );
            $this->{$this->this_model}->order_goods($data);
            $this->_views['data'] = $data;
        }
        //echo '<pre>';print_r($this->_views['data_member_address']);exit;
        $this->ajax_views['dat'] = $this->load->view( $this->this_controller.'/'.$this->this_controller.'_show', $this->_views, true );
        $this->ajax_views['sta'] = '1';
        $this->ajax_views['msg'] = '获取成功';
        $this->ajax_end();
    }
}