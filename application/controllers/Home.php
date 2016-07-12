<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 控制器
 * @package     CI
 * @subpackage  Controllers
 * @category    Controllers
 * @author      ming.king
 */
class Home extends P_Controller{
    /**
     * 构造函数
     *
     * @access  public
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        $this->this_view_data['_js'][] = 'slider';
    }
    /**
     * 后台默认首页
     *
     * @access  public
     * @return  void
     */
    public function index(){
        $this->load->view('home',$this->this_view_data);
    }
}


