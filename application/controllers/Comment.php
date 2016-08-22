<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 前台控制器
 * @category    controller
 * @author      ming.king
 * @date        2016/7/22
 */
class Comment extends P_Controller{
    /**
     * 构造函数
     *
     * @access  public
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        $this->load->model('mdl_comment_up');
    }
    /**
     * 评论详情 ajax
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function ajax_show(){
        $object_type = empty($_GET['otype'])?0:$_GET['otype'];
        $object_id = empty($_GET['oid'])?0:$_GET['oid'];
        if( empty($object_type) || empty($object_id) ){
            $this->ajax_data['msg'] = '参数错误';
            $this->ajax_end();
        }
        $this->this_view_data['otype'] = $object_type;
        $this->this_view_data['oid'] = $object_id;
        $this->this_view_data['data_comment'] = $this->{$this->this_model}->my_selects( 0,0,array('object_type'=>$object_type,'object_id'=>$object_id) );
        $this->this_view_data['data_comment_up'] = $this->mdl_comment_up->my_selects( 0,0,array('member_id'=>(empty($this->this_user['id'])?0:$this->this_user['id']),'status'=>1) );
        //echo '<pre>';print_r($this->this_view_data['data_comment_up']);exit;
        $this->ajax_data['dat'] = $this->load->view( $this->this_controller.'/'.$this->this_controller.'_default',$this->this_view_data, true );
        $this->ajax_data['sta'] = '1';
        $this->ajax_data['msg'] = '获取成功';
        $this->ajax_end();
    }
    /**
     * 新增评论
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function my_add(){
        if( empty($this->this_user['id']) ){
            $this->ajax_data['msg'] = '需要登录后才可以操作';
            $this->ajax_end();
        }
        $data['object_type'] = empty($_POST['otype'])?0:$_POST['otype'];
        $data['object_id'] = empty($_POST['oid'])?0:$_POST['oid'];
        $data['parent_id'] = empty($_POST['pid'])?0:$_POST['pid'];
        $data['replay_id'] = empty($_POST['mid'])?0:$_POST['mid'];
        $data['content'] = empty($_POST['content'])?0:$_POST['content'];
        if( empty($data['object_type']) || empty($data['object_id']) || empty($data['content']) ){
            $this->ajax_data['msg'] = '参数错误';
            $this->ajax_end();
        }
        $data['member_id'] = $this->this_user['id'];
        $data['status'] = 0;
        if($this->{$this->this_model}->my_insert($data)){
            $this->ajax_data['sta'] = '1';
            $this->ajax_data['msg'] = '获取成功';
        }
        $this->ajax_end();
    }
    /**
     * 赞
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function ajax_up(){
        if( empty($this->this_user['id']) ){
            $this->ajax_data['msg'] = '需要登录后才可以操作';
            $this->ajax_end();
        }
        $id = empty($_POST['id'])?0:$_POST['id'];
        $type = empty($_POST['type'])?0:$_POST['type'];
        if( empty($id) || empty($type) ){
            $this->ajax_data['msg'] = '参数错误';
            $this->ajax_end();
        }
        $data = $this->mdl_comment_up->my_selects( 0,0,array('comment_id'=>$id,'member_id'=>$this->this_user['id']) );
        $mark = false;
        if( $type == 1 ){//新增赞
            if( empty($data) ){
                $data_insert['member_id'] = $this->this_user['id'];
                $data_insert['comment_id'] = $id;
                $data_insert['status'] = 1;
                if( $this->mdl_comment_up->my_insert( $data_insert ) ){
                    $mark = true;
                }
            }else{
                if( $this->mdl_comment_up->my_update( $data[0]['id'], array('status'=>1) ) ){
                    $mark = true;
                }
            }
        }else{//撤销赞
            if( empty($data) ){
                $mark = true;
            }else{
                if( $this->mdl_comment_up->my_update( $data[0]['id'], array('status'=>0) ) ){
                    $mark = true;
                }
            }
        }
        if( $mark ){
            $count = $this->mdl_comment_up->my_count( array('comment_id'=>$id, 'status'=>1) );
            $this->ajax_data['dat'] = $count;
            $this->ajax_data['sta'] = '1';
            $this->ajax_data['msg'] = '操作成功';
        }
        $this->ajax_end();
    }
}