<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 前台控制器
 * @category    controller
 * @author      ming.king
 * @date        2016/7/22
 */
class Weixin extends P_Controller{
    /**
     * 构造函数
     *
     * @access  public
     * @return  void
     */
    public function __construct(){
        parent::__construct();

        $wx_cfg['appId'] = empty($this->this_setting['wx_app_id'])?'':$this->this_setting['wx_app_id'];
        $wx_cfg['appSecret'] = empty($this->this_setting['wx_app_secret'])?'':$this->this_setting['wx_app_secret'];
        $wx_cfg['basePath'] = $this->config->item('upload_path');
        $this->load->library( 'WeixinApi', $wx_cfg );
        $wx_config = $this->weixinapi->getSignPackage();
        $this->this_view_data['wx_config'] = $wx_config;
//        $this->load->model('mdl_goods');
    }
    /**
     * 图片点赞活动
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function likes(){
//        echo '<pre>';print_r($this->this_view_data['wx_config']);exit;
        $this->load->view( $this->this_controller.'/'.$this->this_controller.'_likes',$this->this_view_data );
    }
    /**
     * 图片点赞活动 上传图片
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function likes_upload(){
        $this->load->view( $this->this_controller.'/'.$this->this_controller.'_likes_upload',$this->this_view_data );
    }
}