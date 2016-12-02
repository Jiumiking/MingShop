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
        $this->load->model('mdl_express');
        $this->_views['data_payment'] = $this->mdl_payment->my_selects( 0,0,array('status'=>'1') );
        $this->_views['data_express'] = $this->mdl_express->my_selects( 0,0,array('status'=>'1') );
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
    /**
     * 发货ajax
     * @access  protected
     * @param   mixed
     * @return  mixed
     */
    public function send(){
        if( !empty($_GET['id']) ){
            $this->_views['data'] = $this->{$this->this_model}->my_select( $_GET['id'] );
        }
        $this->ajax_views['dat'] = $this->load->view( $this->this_controller.'/'.$this->this_controller.'_send', $this->_views, true );
        $this->ajax_views['sta'] = '1';
        $this->ajax_views['msg'] = $this->config->item(1,'default_ajax_status');
        $this->ajax_end();
    }
    /**
     * 发货执行ajax
     * @access  protected
     * @param   mixed
     * @return  mixed
     */
    public function send_do(){
        $data=$_POST;
        if( empty($data['id']) ){
            $this->ajax_views['msg'] = $this->config->item(0,'default_ajax_status');
            $this->ajax_end();
        }
        $data['status'] = 3;
        $data['date_send'] = date('Y-m-d H:i:s');
        $back = $this->{$this->this_model}->my_update( $data['id'],$data );
        if($back){
            $this->ajax_views['sta'] = '1';
            $this->ajax_views['msg'] = $this->config->item(1,'default_ajax_status');
        }
        $this->ajax_end();
    }
    /**
     * 订单完成ajax
     * @access  protected
     * @param   mixed
     * @return  mixed
     */
    public function done(){
        if( empty($_GET['id']) ){
            $this->ajax_views['msg'] = $this->config->item(0,'default_ajax_status');
            $this->ajax_end();
        }
        $data['status'] = 4;
        $data['date_end'] = date('Y-m-d H:i:s');
        $back = $this->{$this->this_model}->my_update( $_GET['id'],$data );
        if($back){
            $this->ajax_views['sta'] = '1';
            $this->ajax_views['msg'] = $this->config->item(1,'default_ajax_status');
        }
        $this->ajax_end();
    }
}