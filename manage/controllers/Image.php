<?php
/**
 * 图片管理
 * @category    controller
 * @author      ming.king
 * @date        2016/7/18
 */
class Image extends MY_Controller{
    private $upload_path = '';
    /**
     * 构造函数
     *
     * @access  public
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        $this->upload_path = $this->config->item('upload_path');

        $params = array('upload_path' => $this->upload_path);
        $this->load->library('mingimg', $params);
    }
    /**
     * 图片列表ajax
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function mi_list(){
        $list = $this->mingimg->get_images();
        //echo '<pre>';print_r($list);exit;
        $this->_views['list'] = $list;
        $this->ajax_views['dat'] = $this->load->view( 'base/ming_img', $this->_views, true );
        $this->ajax_views['sta'] = '1';
        $this->ajax_views['msg'] = '获取成功';
        $this->ajax_end();
    }
    /**
     * 图片上传ajax
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function mi_up(){
        
        if( !empty($_POST['img']) ){
            $return = $this->mingimg->up_image($_POST['img']);
            if( $return['state'] == 'SUCCESS' ){
                $this->ajax_views['dat'] = $return;
                $this->ajax_views['sta'] = '1';
                $this->ajax_views['msg'] = '上传成功';
            }
        }
        $this->ajax_end();
    }
}