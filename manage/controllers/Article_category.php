<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 后台控制器
 * @category    controller
 * @author      ming.king
 * @date        2015/11/26
 */
class Article_category extends MY_Controller{
    /**
     * 构造函数
     *
     * @access  public
     * @return  void
     */
    public function __construct(){
        parent::__construct();
    }
    /**
     * 列表
     * @access  protected
     * @param   mixed
     * @return  mixed
     */
    public function my_list(){
        $this->_views['_js'][] = 'jquery.form';
        $data = $this->{$this->this_model}->my_selects(0,0,array());
        $this->load->library('tree');
        $this->tree->setTree($data, 'id', 'parent_id', 'name');
        $list = $this->tree->getLists();
        //echo '<pre>';print_r($list);exit;
        $this->_views['data'] = $list;
        $this->load->view( $this->this_controller.'/'.$this->this_controller.'_index',$this->_views);
    }
    /**
     * 编辑ajax
     * @access  protected
     * @param   mixed
     * @return  mixed
     */
    public function my_edit(){
        if( !empty($_GET['id']) ){
            $this->_views['data'] = $this->{$this->this_model}->my_select( $_GET['id'] );
        }
        $this->_views['data_option'] = $this->{$this->this_model}->options( empty($_GET['id'])?NULL:empty($_GET['id']) );
        $this->ajax_views['dat'] = $this->load->view( $this->this_controller.'/'.$this->this_controller.'_edit', $this->_views, true );
        $this->ajax_views['sta'] = '1';
        $this->ajax_views['msg'] = '获取成功';
        $this->ajax_end();
    }
}