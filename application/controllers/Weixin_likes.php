<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 前台控制器
 * @category    controller
 * @author      ming.king
 * @date        2016/7/22
 */
class Weixin_likes extends P_Controller{
    /**
     * 构造函数
     *
     * @access  public
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        $this->load->model('mdl_weixin_likes_up');
    }
    /**
     * 微信API公用接口
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function weixin_api(){
        $wx_cfg['appId'] = empty($this->this_setting['wx_app_id'])?'':$this->this_setting['wx_app_id'];
        $wx_cfg['appSecret'] = empty($this->this_setting['wx_app_secret'])?'':$this->this_setting['wx_app_secret'];
        $wx_cfg['basePath'] = $this->config->item('upload_path');
        $this->load->library( 'WeixinApi', $wx_cfg );
        $wx_config = $this->weixinapi->getSignPackage();
        $this->this_view_data['wx_config'] = $wx_config;
    }
    /**
     * 图片点赞活动 参与
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function my_add(){
        $this->weixin_api();
        $this->load->view( $this->this_controller.'/'.$this->this_controller.'_likes_add',$this->this_view_data );
    }
    /**
     * 图片点赞活动 上传图片
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function my_add_image(){
        if( empty($_GET['id']) ){
            $this->ajax_data['msg'] = '上传失败';
            $this->ajax_end();
        }
        if( $file_name = $this->weixinapi->saveMedia($_GET['id']) ){
            $this->ajax_data['msg'] = '上传成功';
            $this->ajax_data['dat'] = $file_name;
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
        if( empty($id) ){
            $this->ajax_data['msg'] = '参数错误';
            $this->ajax_end();
        }
        $data = $this->mdl_weixin_likes_up->my_selects( 0,0,array('member_id'=>$this->this_user['id']) );
        $mark = false;
        if( empty($data) ){
            $data_insert['member_id'] = $this->this_user['id'];
            $data_insert['weixin_likes_id'] = $id;
            $data_insert['status'] = 1;
            if( $this->mdl_weixin_likes_up->my_insert( $data_insert ) ){
                $mark = true;
            }
        }else{
            $this->ajax_data['msg'] = '你已经赞了作品"'.$data[0]['weixin_likes_id'].'",不能再赞了';
            $this->ajax_end();
        }
        if( $mark ){
            $count = $this->mdl_weixin_likes_up->my_count( array('weixin_likes_id'=>$id, 'status'=>1) );
            $this->ajax_data['dat'] = $count;
            $this->ajax_data['sta'] = '1';
            $this->ajax_data['msg'] = '操作成功';
        }
        $this->ajax_end();
    }
}