<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 控制器
 * @package     CI
 * @subpackage  Controllers
 * @category    Controllers
 * @author      ming.king
 */
class Member extends M_Controller{
    private $allow_files = 'png|jpg|jpeg|gif|bmp';
    /**
     * 构造函数
     * @access  public
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        $this->this_view_data['menu'] = 'member';
        $this->load->model('mdl_member');
        $this->load->model('mdl_address');
        $this->load->model('mdl_member_address');
    }
    /**
     * 默认首页
     * @access  public
     * @return  void
     */
    public function index(){
        $this->center();
    }
    /**
     * 用户中心
     * @access  public
     * @return  void
     */
    public function center(){
        $this->order();
    }
    /**
     * 订单
     * @access  public
     * @return  void
     */
    public function order(){
        $this->load->model('mdl_order');
        $this->load->model('mdl_order_goods');
        $this->this_view_data['order_status'] = $this->config->item('order_status');
        $filter_a = array('member_id'=>$this->this_user['id']);
        $filter_1 = array('member_id'=>$this->this_user['id'],'status'=>1);//待付款
        $filter_2 = array('member_id'=>$this->this_user['id'],'status'=>2);//待发货
        $filter_3 = array('member_id'=>$this->this_user['id'],'status'=>3);//待收货
        $filter_4 = array('member_id'=>$this->this_user['id'],'status'=>4);//已完成
        $data_order_a = $this->mdl_order->my_selects( 10, 0, $filter_a );
        $data_order_1 = $this->mdl_order->my_selects( 10, 0, $filter_1 );
        $data_order_2 = $this->mdl_order->my_selects( 10, 0, $filter_2 );
        $data_order_3 = $this->mdl_order->my_selects( 10, 0, $filter_3 );
        $data_order_4 = $this->mdl_order->my_selects( 10, 0, $filter_4 );

        $this->mdl_order->order_goodses($data_order_a);
        $this->mdl_order->order_goodses($data_order_1);
        $this->mdl_order->order_goodses($data_order_2);
        $this->mdl_order->order_goodses($data_order_3);
        $this->mdl_order->order_goodses($data_order_4);

        $this->this_view_data['data_order_a'] = $data_order_a;
        $this->this_view_data['data_order_1'] = $data_order_1;
        $this->this_view_data['data_order_2'] = $data_order_2;
        $this->this_view_data['data_order_3'] = $data_order_3;
        $this->this_view_data['data_order_4'] = $data_order_4;
        //$this->this_view_data['count_order_a'] = $this->mdl_order->my_count( $filter_a );
        $this->this_view_data['count_order_1'] = $this->mdl_order->my_count( $filter_1 );
        $this->this_view_data['count_order_2'] = $this->mdl_order->my_count( $filter_2 );
        $this->this_view_data['count_order_3'] = $this->mdl_order->my_count( $filter_3 );
        $this->this_view_data['count_order_4'] = $this->mdl_order->my_count( $filter_4 );
        $this->this_view_data['member_menu'] = 'order';
        $this->load->view('member/member_center',$this->this_view_data);
    }
    /**
     * 个人设置
     * @access  public
     * @return  void
     */
    public function setting(){
        $this->this_view_data['member_menu'] = 'setting';
        $this->this_view_data['data_headpic'] = $this->get_headpics();
        $this->load->view('member/member_center',$this->this_view_data);
    }
    /**
     * 个人设置
     * @access  public
     * @return  void
     */
    public function setting_do(){
        $data['id'] = empty($_POST['member_data']['id'])?'':$_POST['member_data']['id'];
        $data['name_nick'] = empty($_POST['member_data']['name_nick'])?'':$_POST['member_data']['name_nick'];
        $data['name_real'] = empty($_POST['member_data']['name_real'])?'':$_POST['member_data']['name_real'];
        $data['sex'] = empty($_POST['member_data']['sex'])?'':$_POST['member_data']['sex'];
        if( empty($data['id']) || empty($data['name_nick']) || empty($data['name_real']) ){
            $this->ajax_data['msg'] = '无效的数据';
            $this->ajax_end();
        }
        if( !empty($_POST['member_data']['birthday']['year']) && !empty($_POST['member_data']['birthday']['month']) && !empty($_POST['member_data']['birthday']['day']) ){
            $data['birthday'] = $_POST['member_data']['birthday']['year'].'-'.$_POST['member_data']['birthday']['month'].'_'.$_POST['member_data']['birthday']['day'];
        }
        $member = $this->mdl_member->my_select_nick( $data['name_nick'], $data['id'] );
        if( !empty($member) ){
            $this->ajax_data['msg'] = '昵称已使用';
            $this->ajax_end();
        }
        if( $this->mdl_member->my_update( $data['id'],$data ) ){
            $this->ajax_data['sta'] = 1;
            $this->ajax_data['msg'] = '保存成功';
            $this->this_user_reset();
        }else{
            $this->ajax_data['msg'] = '保存失败';
        }
        $this->ajax_end();
    }
    /**
     * 获取所有的图片
     * @return mixed
     */
    public function get_headpics(){
        $path = $this->config->item('upload_path').'headpic';
        if (!is_dir($path)) return null;
        if(substr($path, strlen($path) - 1) != '/') $path .= '/';
        $handle = opendir($path);
        while (false !== ($file = readdir($handle))) {
            if ($file != '.' && $file != '..') {
                $path2 = $path . $file;
                if (!is_dir($path2)) {
                    if (preg_match("/\.(".$this->allow_files.")$/i", $file)) {
                        $files[] = array(
                            'url'=> substr($path2, strlen($_SERVER['DOCUMENT_ROOT'])),
                            'mtime'=> filemtime($path2)
                        );
                    }
                }
            }
        }
        return $files;
    }
    /**
     * 保存头像
     * @access  public
     * @return  void
     */
    public function headpic_save(){
        $data = empty($_GET['data'])?'':$_GET['data'];
        if( empty($data) ){
            $this->ajax_data['msg'] = '无效的数据';
            $this->ajax_end();
        }
        $data_array = explode('/',$data);
        if( $this->mdl_member->my_update( $this->this_user['id'],array('headpic'=>end($data_array)) ) ){
            $this->ajax_data['sta'] = 1;
            $this->ajax_data['msg'] = '保存成功';
            $this->this_user_reset();
        }else{
            $this->ajax_data['msg'] = '保存失败';
        }
        $this->ajax_end();
    }
    /**
     * 账户安全
     * @access  public
     * @return  void
     */
    public function safe(){
        $this->this_view_data['member_menu'] = 'safe';
        $this->load->view('member/member_center',$this->this_view_data);
    }
    /**
     * 账户安全 修改密码
     * @access  public
     * @return  void
     */
    public function safe_password(){
        $this->this_view_data['msg'] = $this->session->flashdata('msg');
        $this->this_view_data['member_menu'] = 'safe_password';
        $this->load->view('member/member_center',$this->this_view_data);
    }
    /**
     * 账户安全 修改密码
     * @access  public
     * @return  void
     */
    public function safe_password_do(){
        $data['password'] = empty($_POST['password'])?'':$_POST['password'];
        $data['password_new'] = empty($_POST['password_new'])?'':$_POST['password_new'];
        if( (empty($data['password']) && empty($data['password_new'])) ){
            $this->ajax_data['msg'] = '无效的数据';
            $this->ajax_end();
        }
        if( password_encrypt($_POST['password']) != $this->this_user['password'] ){
            $this->ajax_data['msg'] = '密码错误';
            $this->ajax_end();
        }
        if( $this->mdl_member->my_update($this->this_user['id'],array('password'=>password_encrypt($_POST['password_new']))) ){
            $this->ajax_data['sta'] = 1;
            $this->ajax_data['msg'] = '保存成功';
            $this->this_user_reset();
        }else{
            $this->ajax_data['msg'] = '保存失败';
        }
        $this->ajax_end();
    }
    /**
     * 账户安全 修改密码
     * @access  public
     * @return  void
     */
    public function safe_password_check(){
        if( empty($_GET['value']) ){
            echo '1';
            exit;
        }
        $password_md5 = password_encrypt($_GET['value']);
        if( $password_md5 == $this->this_user['password'] ){
            echo '2';
        }else{
            echo '1';
        }
        exit;
    }
    /**
     * 账户安全 邮箱
     * @access  public
     * @return  void
     */
    public function safe_email(){
        $this->this_view_data['msg'] = $this->session->flashdata('msg');
        $this->this_view_data['member_menu'] = 'safe_email';
        $this->load->view('member/member_center',$this->this_view_data);
    }
    /**
     * 账户安全 修改邮箱
     * @access  public
     * @return  void
     */
    public function safe_email_do(){
        if( empty($_POST['email']) ){
            $this->ajax_data['msg'] = '无效的数据';
            $this->ajax_end();
        }
        $member = $this->mdl_member->my_select_username($_POST['email']);
        if(!empty($member)){
            $this->ajax_data['msg'] = '该邮箱已注册';
            $this->ajax_end();
        }
        if( $this->mdl_member->my_update($this->this_user['id'],array('email'=>$_POST['email'])) ){
            $this->ajax_data['sta'] = 1;
            $this->ajax_data['msg'] = '保存成功';
            $this->this_user_reset();
        }else{
            $this->ajax_data['msg'] = '保存失败';
        }
        $this->ajax_end();
    }
    /**
     * 收货地址
     * @access  public
     * @return  void
     */
    public function address(){
        $this->this_view_data['data_address'] = $this->mdl_address->my_selects();
        $this->this_view_data['data_member_address'] = $this->mdl_member_address->my_selects(0,0,array('member_id'=>$this->this_user['id']));
        $this->this_view_data['member_menu'] = 'address';
        $this->load->view('member/member_center',$this->this_view_data);
    }
    /**
     * 收货地址 编辑
     * @access  public
     * @return  void
     */
    public function address_edit(){
        if( !empty($_GET['id']) ){
            $this->this_view_data['data'] = $this->mdl_member_address->my_select($_GET['id']);
        }
        $this->this_view_data['member_menu'] = 'address_edit';
        $this->load->view('member/member_center',$this->this_view_data);
    }
    /**
     * 收货地址 保存
     * @access  public
     * @return  void
     */
    public function address_edit_do(){
        $data['id'] = empty($_POST['id'])?'':$_POST['id'];
        $data['person'] = empty($_POST['person'])?'':$_POST['person'];
        $data['phone'] = empty($_POST['phone'])?'':$_POST['phone'];
        $data['province'] = empty($_POST['province'])?'':$_POST['province'];
        $data['city'] = empty($_POST['city'])?'':$_POST['city'];
        $data['area'] = empty($_POST['area'])?'':$_POST['area'];
        $data['detail'] = empty($_POST['detail'])?'':$_POST['detail'];
        $data['name'] = empty($_POST['name'])?'':$_POST['name'];
        $data['member_id'] = $this->this_user['id'];
        if( empty($data['person']) || empty($data['phone']) || empty($data['province']) || empty($data['city']) || empty($data['area']) || empty($data['detail']) ){
            $this->ajax_data['msg'] = '无效的数据';
            $this->ajax_end();
        }
        if( empty($data['id']) ){
            $data['date_add'] = time();
            $back = $this->mdl_member_address->my_insert( $data );
        }else{
            $data['date_edit'] = time();
            $back = $this->mdl_member_address->my_update( $data['id'],$data );
        }
        if( $back ){
            $this->ajax_data['sta'] = 1;
            $this->ajax_data['msg'] = '保存成功';
        }else{
            $this->ajax_data['msg'] = '保存失败';
        }
        $this->ajax_end();
    }
    /**
     * 收货地址 删除
     * @access  public
     * @return  void
     */
    public function address_del(){
        if( empty($_GET['id']) ){
            $this->ajax_data['msg'] = '无效的数据';
            $this->ajax_end();
        }
        $back = $this->mdl_member_address->my_delete($_GET['id']);
        if( $back ){
            $this->ajax_data['sta'] = 1;
            $this->ajax_data['msg'] = '删除成功';
        }
        $this->ajax_end();
    }
    /**
     * ajax 获取地区信息
     * @access  protected
     * @return  void
     */
    public function address_get(){
        $this->ajax_data['sta'] = 1;
        $this->ajax_data['msg'] = '获取成功';
        $this->ajax_data['dat'] = $this->mdl_address->my_selects();
        $this->ajax_end();
    }
    /**
     * ajax 收货地址 
     * @access  public
     * @return  void
     */
    public function ajax_address(){
        $this->this_view_data['ajax'] = 1;
        $this->this_view_data['data_address'] = $this->mdl_address->my_selects();
        $this->this_view_data['data_member_address'] = $this->mdl_member_address->my_selects(0,0,array('member_id'=>$this->this_user['id']));
        $this->ajax_data['dat'] = $this->load->view('member/member_address',$this->this_view_data,true);
        $this->ajax_data['sta'] = 1;
        $this->ajax_data['msg'] = '获取成功';
        $this->ajax_end();
    }
    /**
     * ajax 收货地址 编辑
     * @access  public
     * @return  void
     */
    public function ajax_address_edit(){
        if( !empty($_GET['id']) ){
            $this->this_view_data['data'] = $this->mdl_member_address->my_select($_GET['id']);
        }
        $this->this_view_data['ajax'] = 1;
        $this->ajax_data['dat'] = $this->load->view('member/member_address_edit',$this->this_view_data,true);
        $this->ajax_data['sta'] = 1;
        $this->ajax_data['msg'] = '获取成功';
        $this->ajax_end();
    }
    /**
     * ajax 收货地址获取一条 
     * @access  public
     * @return  void
     */
    public function ajax_address_getone(){
        if( empty($_GET['id']) ){
            $this->ajax_end();
        }
        $data_address = $this->mdl_address->my_selects();
        $data = $this->mdl_member_address->my_select( $_GET['id'] );
        if( !empty($data) ){
            $data['province_name'] = '';
            $data['city_name'] = '';
            $data['area_name'] = '';
            foreach( $data_address as $v ){
                if( $v['number'] == $data['province'] ){
                    $data['province_name'] = $v['name'];
                }
                if( $v['number'] == $data['city'] ){
                    $data['city_name'] = $v['name'];
                }
                if( $v['number'] == $data['area'] ){
                    $data['area_name'] = $v['name'];
                }
            }
        }
        $data['address'] = $data['province_name'].' '.$data['city_name'].' '.$data['area_name'];
        $this->ajax_data['dat'] = $data;
        $this->ajax_data['sta'] = 1;
        $this->ajax_data['msg'] = '获取成功';
        $this->ajax_end();
    }
    /**
     * ajax 昵称唯一性验证
     * @access  protected
     * @return  void
     */
    public function nick_unique(){
        if( empty($_GET['value']) ){
            echo 1;exit;
        }
        $id = empty($_GET['id'])?0:$_GET['id'];
        $member = $this->mdl_member->my_select_nick( $_GET['value'], $id );
        if( empty($member) ){
            echo 0;exit;
        }else{
            echo 1;exit;
        }
    }
    /**
     * ajax 手机号、邮箱唯一性验证
     * @access  protected
     * @return  void
     */
    public function phone_email_unique(){
        if( empty($_GET['value']) ){
            echo 1;exit;
        }
        $member = $this->mdl_member->my_select_username($_GET['value']);
        if( empty($member) ){
            echo 0;exit;
        }else{
            echo 1;exit;
        }
    }
}


