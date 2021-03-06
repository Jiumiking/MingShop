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
class M_Controller extends P_Controller{
    /**
     * 构造函数
     * @access  public
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        if( !$this->session->this_user ){
            if(isset($_SERVER["HTTP_X_REQUESTED_WITH"]) && strtolower($_SERVER["HTTP_X_REQUESTED_WITH"])=="xmlhttprequest"){ 
                // ajax 请求的处理方式
                $this->ajax_data['msg'] = '请先登录';
                $this->ajax_end();
            }else{ 
                // 正常请求的处理方式
                $this->session->set_flashdata('msg', '请先登录');
                redirect( site_url('sign/signin') );
            };
        }
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
class P_Controller extends CI_Controller{
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
    protected $ajax_data = array(
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
     * 输出变量
     * @var object
     * @access  public
     **/
    protected $this_view_data = array();
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
        $this->load->model('mdl_setting');
        $this->get_this_setting();

        $this->this_controller = $this->uri->rsegment(1);
        $this->this_model = 'Mdl_'.$this->this_controller;
        if( file_exists(APPPATH.'models/'.$this->this_model.'.php') ){
            $this->load->model( $this->this_model );
        }
        $this->this_page_size = empty($this->this_setting['page_number'])?10:$this->this_setting['page_number'];
        $this->this_view_data['this_controller'] = $this->this_controller;
        $this->this_user_set();
    }
    /**
     * 检查用户是否登录
     * @access  protected
     * @return  void
     */
    private function this_user_set(){
        if ( $this->session->this_user ){
            $this->this_user = $this->session->this_user;
            $this->this_view_data['this_user'] = $this->session->this_user;
        }
    }
    /**
     * 用户信息更新
     * @access  protected
     * @return  bool
     */
    protected function this_user_reset(){
        if ( $this->session->this_user ){
            $this->load->model('mdl_member');
            $this_user = $this->mdl_member->my_select($this->session->this_user['id']);
            if( !empty($this_user) ){
                $this->session->this_user = $this_user;
                $this->this_user_set();
            }
        }
    }
    /**
     * 接口结束返回
     * @access  protected
     * @return  bool
     */
    protected function ajax_end(){
        echo json_encode($this->ajax_data);
        exit;
    }
    /**
     * 配置信息
     * @access  protected
     * @return  void
     */
    private function get_this_setting(){
        $this->this_setting = $this->mdl_setting->get_settings();
        $this->this_view_data['this_setting'] = $this->this_setting;
    }
    /**
     * 列表
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function my_list(){
        $this->this_view_data['data'] = $this->{$this->this_model}->my_selects($this->this_page_size);
        $count = $this->{$this->this_model}->my_count();
        $this->this_view_data['pages'] = array(
            'page_count' => ceil($count/$this->this_page_size)==0?1:ceil($count/$this->this_page_size) ,
            'count' => $count
        );
        $this->load->view( $this->this_controller.'/'.$this->this_controller.'_list',$this->this_view_data);
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
        $this->this_view_data['data'] = $this->{$this->this_model}->my_selects( $this->this_page_size, ($page-1)*$this->this_page_size, $filter );
        $this->ajax_data['list_content'] = $this->load->view( $this->this_controller.'/'.$this->this_controller.'_tb', $this->this_view_data, true );
        $this->ajax_data['page'] = $page;
        $this->ajax_data['count'] = $this->{$this->this_model}->my_count($filter);
        $this->ajax_data['page_count'] = ceil($this->ajax_data['count']/$this->this_page_size)==0?1:ceil($this->ajax_data['count']/$this->this_page_size);
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
            $this->this_view_data['data'] = $this->{$this->this_model}->my_select( $_GET['id'] );
        }
        $this->load->view( $this->this_controller.'/'.$this->this_controller.'_show', $this->this_view_data );
    }
    /**
     * 状态ajax
     * @access  public
     * @return  void
     */
    public function my_status(){
        if( empty($_GET['id']) ){
            $this->ajax_views['msg'] = $this->config->item(0,'default_ajax_status');
            $this->ajax_end();
        }
        $data['status'] = empty($_GET['status'])?0:$_GET['status'];
        if( $this->{$this->this_model}->my_update( $_GET['id'], $data) ){
            $this->ajax_views['sta'] = '1';
            $this->ajax_views['msg'] = $this->config->item(1,'default_ajax_status');
        }else{
            $this->ajax_views['msg'] = $this->config->item(2,'default_ajax_status');
        }
        $this->ajax_end();
    }
    /**
     * 跳转方法
     * @access  protected
     * @return  void
     */
    protected function jump_url($url='', $message='跳转中！', $time=3){
        $this_view_data['url'] = empty($url)?$_SERVER['HTTP_REFERER']:$url;
        $this_view_data['message'] = $message;
        $this_view_data['time'] = $time;
        $retrun = $this->load->view('base/jump_url',$this_view_data,true);
        echo $retrun;
        exit;
    }
}