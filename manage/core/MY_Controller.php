<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * CI后台控制器基类
 *
 * @package     CI
 * @subpackage  core
 * @category    core
 * @author      ming.king
 * @link        
 */		
 class MY_Controller extends Controller_base{
    /**
     * 保存当前登录用户的信息
     *
     * @var object
     * @access  public
     **/
    protected $this_user = NULL;
    /**
     * ajax返回数组
     *
     * @var string
     * @access  protected
     **/
    protected $ajax_views = array(
        'sta' => '0',
        'msg' => '操作失败',
        'dat' => '',
    );
    /**
     * 当前控制器
     * @access  protected
     **/
    protected $this_controller = '';
    /**
     * 当前model
     * @access  protected
     **/
    protected $this_model = '';
    /**
     * 每页数量
     * @access  protected
     **/
    protected $this_page_size = '';
    /**
     * 构造函数
     *
     * @access  public
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        $this->ini();
    }
    /**
     * 入口方法
     *
     * @access  public
     * @return  void
     */
    private function ini(){
        $this->load->model('mdl_role');
        $this->check_login();   //登录验证
        $this->check_auth();    //权限验证
        $this->this_controller = $this->uri->rsegment(1);
        $this->this_model = 'Mdl_'.$this->this_controller;
        if( file_exists(APPPATH.'models/'.$this->this_model.'.php') ){
            $this->load->model( $this->this_model );
        }
        $this->this_page_size = empty($this->this_setting['page_number'])?10:$this->this_setting['page_number'];
        $this->_views['_js'][] = 'authen';
        $this->_views['this_controller'] = $this->this_controller;
        $this->_views['data_role'] = $this->mdl_role->my_selects();
    }
    /**
     * 检查用户是否登录
     * @access  protected
     * @return  void
     */
    private function check_login(){
        if ( !$this->session->userdata('this_user')){
            redirect( site_url('login') );
        }else{
            $this->this_user = $this->session->userdata('this_user');
            $this->_views['this_user'] = $this->session->userdata('this_user');
        }
    }
    /**
     * 检查用户是否有访问权限
     * @access  protected
     * @return  void
     */
    private function check_auth(){
        $this->config->load('menu');
        $menu = $this->config->item('menu');
        $this->this_uri_string = $this->uri->uri_string;//当前访问key
        if($this->this_user['role'] != 1){ //非超级管理员
            $this->this_access = $this->mdl_role->access_get($this->this_user['role']);
            $access = false;
            if( !empty($this->this_access) ){
                foreach($this->this_access as $k=>$v){
                    if( $v['key'] == $this->this_uri_string ){
                        $access = true;
                        break;
                    }
                }
            }
            /**如果后缀是_do，前缀是is_/mi_的请求，直接通过**/
            $url_check_front = substr($this->uri->rsegment(2),0,3);
            $url_check_back = substr($this->uri->rsegment(2),-3);
            if( $url_check_front == 'is_' || $url_check_front == 'mi_' || $url_check_back == '_do' ){
                $access = true;
            }
            /**_do end**/
            if( !$access ){
                if(isset($_SERVER["HTTP_X_REQUESTED_WITH"]) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"])=="xmlhttprequest"){ 
                    // ajax 请求的处理方式 
                    $this->ajax_views['sta'] = '0';
                    $this->ajax_views['msg'] = '没有权限';
                    $this->ajax_end();
                }else{ 
                    // 正常请求的处理方式 
                    echo $this->load->view( 'errors/error500',$this->_views,true);
                    exit;
                };
            }
            foreach( $menu as $k=>$v ){
                foreach($this->this_access as $a){
                    $mark = false;
                    if( $v['key'] == $a['key'] ){
                        $mark = true;
                        break;
                    }
                }
                if($mark && !empty($v['sons'])){
                    foreach( $v['sons'] as $kk=>$vv ){
                        $mark2 = false;
                        if( $vv['key'] == $a['key'] ){
                            $mark2 = true;
                            break;
                        }
                    }
                    if(!$mark2){
                        unset($menu[$k]['sons'][$kk]);
                    }
                }else{
                    unset($menu[$k]);
                }
            }
        }
        $this->_views['menu'] = $menu;
        $this->get_bred();
    }
    /**
     * 面包屑
     * @access  protected
     * @return  void
     */
    private function get_bred(){
        $bred = array();
        if( !empty($this->this_uri_string) && !empty($this->_views['menu']) ){
            foreach( $this->_views['menu'] as $k=>$v ){
                $bred[0]['name'] = $v['name'];
                $bred[0]['icon'] = $v['icon'];
                if(!empty($v['link']) && $v['link']==$this->this_uri_string){
                    break;
                }elseif( !empty($v['sons']) ){
                    foreach( $v['sons'] as $kk=>$vv ){
                        if(!empty($vv['link']) && $vv['link']==$this->this_uri_string){
                            $bred[1]['name'] = $vv['name'];
                            $bred[1]['icon'] = $vv['icon'];
                            break 2;
                        }
                    }
                }
            }
        }
        //echo '<pre>';print_r($bred);exit;
        $this->_views['bred'] = $bred;
    }
    /**
     * 接口结束返回
     * @access  protected
     * @return  bool
     */
    protected function ajax_end(){
        echo json_encode($this->ajax_views);
        exit;
    }
    /**
     * 列表
     * @access  protected
     * @param   mixed
     * @return  mixed
     */
    public function my_list(){
        $this->_views['_js'][] = 'jquery.form';
        $this->_views['_js'][] = 'page';
        $this->_views['data'] = $this->{$this->this_model}->my_selects($this->this_page_size);
        $count = $this->{$this->this_model}->my_count();
        $this->_views['pages'] = array(
            'page_count' => ceil($count/$this->this_page_size)==0?1:ceil($count/$this->this_page_size) ,
            'count' => $count
        );
        $this->load->view( $this->this_controller.'/'.$this->this_controller.'_index',$this->_views);
    }
    /**
     * 列表分页ajax
     * @access  protected
     * @param   mixed
     * @return  mixed
     */
    public function my_page(){
        $page = empty($_POST['page'])?1:$_POST['page'];
        $filter = $_POST;
        unset($filter['page']);
        unset($filter['page_size']);
        $this->_views['data'] = $this->{$this->this_model}->my_selects( $this->this_page_size, ($page-1)*$this->this_page_size, $filter );
        $this->ajax_views['list_content'] = $this->load->view( $this->this_controller.'/'.$this->this_controller.'_tb', $this->_views, true );
        $this->ajax_views['page'] = $page;
        $this->ajax_views['count'] = $this->{$this->this_model}->my_count($filter);
        $this->ajax_views['page_count'] = ceil($this->ajax_views['count']/$this->this_page_size)==0?1:ceil($this->ajax_views['count']/$this->this_page_size);
        $this->ajax_end();
    }
    /**
     * 查看ajax
     * @access  protected
     * @param   mixed
     * @return  mixed
     */
    public function my_show(){
        if( !empty($_GET['id']) ){
            $this->_views['data'] = $this->{$this->this_model}->my_select( $_GET['id'] );
        }
        $this->ajax_views['dat'] = $this->load->view( $this->this_controller.'/'.$this->this_controller.'_show', $this->_views, true );
        $this->ajax_views['sta'] = '1';
        $this->ajax_views['msg'] = '获取成功';
        $this->ajax_end();
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
        $this->ajax_views['dat'] = $this->load->view( $this->this_controller.'/'.$this->this_controller.'_edit', $this->_views, true );
        $this->ajax_views['sta'] = '1';
        $this->ajax_views['msg'] = '获取成功';
        $this->ajax_end();
    }
    /**
     * 编辑执行ajax
     * @access  protected
     * @param   mixed
     * @return  mixed
     */
    public function my_edit_do(){
        $data=$_POST;
        if( !empty($data['id']) ){
            $back = $this->{$this->this_model}->my_update( $data['id'],$data );
        }else{
            $back = $this->{$this->this_model}->my_insert( $data );
        }
        if($back){
            $this->ajax_views['sta'] = '1';
            $this->ajax_views['msg'] = '操作成功';
        }
        $this->ajax_end();
    }
    /**
     * 删除ajax
     * @access  protected
     * @param   mixed
     * @return  mixed
     */
    public function my_del(){
        if( empty($_GET['id']) ){
            $this->ajax_views['msg'] = '参数错误';
            $this->ajax_end();
        }
        if( $this->{$this->this_model}->my_delete($_GET['id']) ){
            $this->ajax_views['sta'] = '1';
            $this->ajax_views['msg'] = '删除成功';
        }
        $this->ajax_end();
    }
     /*
      * 导入
      * @access  public
      */
     public function my_import(){
         $this->ajax_views['dat'] = $this->load->view( $this->this_controller.'/'.$this->this_controller.'_import', $this->_views, true );
         $this->ajax_views['sta'] = '1';
         $this->ajax_views['msg'] = '获取成功';
         $this->ajax_end();
     }
     /*
     * 导入模板
      * @access  public
     */
     public function my_import_template(){
     }
     /**
      * 导入
      * @access  public
      */
     public function my_import_do(){
     }
}
/**
 * 基类
 *
 * @package     CI
 * @subpackage  core
 * @category    core
 * @author      ming.king
 * @link        
 */
 class Controller_base extends CI_Controller{
     /**
     * 输出变量
     * @var object
     * @access  public
     **/
    protected $_views = array();
     /**
     * 保存当前设置信息
     * @var object
     * @access  public
     **/
    protected $this_setting = array();
     /**
     * 构造函数
     * @access  public
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        require_once('MY_Function.php');
        $this->load->library('session');
        $this->load->model('mdl_user');
        $this->load->model('mdl_setting');
        $this->get_setting();
    }
    /**
     * 配置信息
     * @access  protected
     * @return  void
     */
    private function get_setting(){
        $this->this_setting = $this->mdl_setting->get_settings();
        $this->_views['this_setting'] = $this->this_setting;
    }
    /**
     * 跳转方法
     * @access  protected
     * @return  void
     */
    protected function jump_url($url='', $message='跳转中！', $time=3){
        $data['url'] = empty($url)?$_SERVER['HTTP_REFERER']:$url;
        $data['message'] = $message;
        $data['time'] = $time;
        $retrun = $this->load->view('base/jump_url',$data,true);
        echo $retrun;
        exit;
    }
 }


/**
 * 接口基类
 * @package     CI
 * @subpackage  core
 * @category    core
 * @author      ming.king
 * @link        
 */
 class Interface_bace extends CI_Controller{
    /**
     * 系统设置信息
     *
     * @var array
     * @access  protected
     **/
    protected $this_setting = array();
    /**
     * 保存当前请求的所有信息
     *
     * @var array
     * @access  protected
     **/
    protected $interface_data = array();
    /**
     * 保存当前请求的账号
     *
     * @var string
     * @access  protected
     **/
    protected $ytwoopay_account = '';
    /**
     * 保存当前请求的密码
     *
     * @var string
     * @access  protected
     **/
    protected $ytwoopay_password = '';
    /**
     * 保存返回数组
     *
     * @var string
     * @access  protected
     **/
    protected $interface_views = array(
            'code' => '0',
            'msg' => '操作失败',
            'info' => array(),
        );
    /**
     * 构造函数
     *
     * @access  public
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        $this->load->library('session');
        $this->interface_data = empty($_POST)?'':$_POST;
        $this->ytwoopay_account = empty($_POST['ytwoopay_account'])?'':$_POST['ytwoopay_account'];
        $this->ytwoopay_password = empty($_POST['ytwoopay_password'])?'':$_POST['ytwoopay_password'];
        if( !$this->check_account() ){
            $this->interface_views['msg'] = '接口验证失败';
            $this->interface_end();
        }
        $this->get_setting();
        require_once('MY_Function.php');
    }
    /**
     * 检查商户账号是否有效
     *
     * @access  private
     * @return  bool
     */
    private function check_account(){
        $conf_ytwoopay_account = $this->config->item('ytwoopay_account');
        $conf_ytwoopay_password = $this->config->item('ytwoopay_password');
        if( $conf_ytwoopay_account == $this->ytwoopay_account && $conf_ytwoopay_password == $this->ytwoopay_password ){
            return true;
        }
        return false;
    }
    /**
     * 配置信息
     *
     * @access  protected
     * @return  void
     */
    private function get_setting(){
        $this->load->model('mdl_setting');
        $this->this_setting = $this->mdl_setting->get_settings();
    }
    /**
     * 接口结束返回
     *
     * @access  protected
     * @return  bool
     */
    protected function interface_end(){
        echo json_encode($this->interface_views);
        exit;
    }
}