<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 后台控制器
 * @category    controller
 * @author      ming.king
 * @date        2015/11/26
 */
class Payment extends MY_Controller{
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
     * 编辑配置ajax
     * @access  protected
     * @param   mixed
     * @return  mixed
     */
    public function my_config(){
        $config = array();
        if( empty($_GET['id']) ){
            $this->ajax_views['msg'] = $this->config->item(0,'default_ajax_status');
            $this->ajax_end();
        }
        $data_mysql = $this->{$this->this_model}->my_select( $_GET['id'] );
        if( empty($data_mysql['key']) ){
            $this->ajax_views['msg'] = $this->config->item(0,'default_ajax_status');
            $this->ajax_end();
        }
        $pay_path = $this->config->item('base_path').'common/payment/'.$data_mysql['key'];
        if( !file_exists($pay_path.'/config.php') ){
            $this->ajax_views['msg'] = '找不到配置文件';
            $this->ajax_end();
        }
        include($pay_path.'/config.php');
        if( empty($config) ){
            $this->ajax_views['msg'] = '配置文件错误';
            $this->ajax_end();
        }
        //            echo '<pre>';print_r($config);exit;
        $this->_views['data'] = $config;
        $this->_views['key'] = $data_mysql['key'];
        $this->ajax_views['dat'] = $this->load->view( $this->this_controller.'/'.$this->this_controller.'_config', $this->_views, true );
        $this->ajax_views['sta'] = '1';
        $this->ajax_views['msg'] = $this->config->item(1,'default_ajax_status');
        $this->ajax_end();
    }
    /**
     * 编辑配置执行ajax
     * @access  protected
     * @param   mixed
     * @return  mixed
     */
    public function my_config_do(){
        $data=$_POST;
        if( empty($data['key']) ){
            $this->ajax_views['msg'] = $this->config->item(0,'default_ajax_status');
            $this->ajax_end();
        }
        $pay_path = $this->config->item('base_path').'common/payment/'.$data['key'];
        if( !file_exists($pay_path.'/config.php') ){
            $this->ajax_views['msg'] = '找不到配置文件';
            $this->ajax_end();
        }
        unset($data['key']);
        $handle = fopen($pay_path.'/config.php','w');
        $code = '<?php'."\n".'$config = '.var_export($data,true).';';
        fwrite( $handle, $code );
        fclose($handle);
        $this->ajax_views['sta'] = '1';
        $this->ajax_views['msg'] = $this->config->item(1,'default_ajax_status');
        $this->ajax_end();
    }
}