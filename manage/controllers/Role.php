<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 后台用户权限控制器
 *
 * @package     CI
 * @subpackage  Controllers
 * @category    Controllers
 * @author      jinjunming
 * @link        
 */
class Role extends MY_Controller{
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
     * ajax权限编辑
     *
     * @access  public
     * @return  void
     */
    public function access(){
        $id = empty($_GET['id'])?'':$_GET['id'];
        if( !empty($id) ){
            $this->_views['access_list'] = $this->mdl_role->access_get($id);
            $this->_views['role_id'] = $id;
            $this->ajax_views['sta'] = '1';
            $this->ajax_views['msg'] = '获取成功';
            $this->ajax_views['dat'] = $this->load->view('role/role_access',$this->_views,true);
        }
        $this->ajax_end();
    }
    /**
     * ajax权限编辑保存
     *
     * @access  public
     * @return  void
     */
    public function access_do(){
        //var_dump($_POST);exit;
        $data=$_POST;
        $keys = empty($data['key'])?'':$data['key'];//echo '<pre>';print_r($keys);exit;
        if( !empty($data['role_id']) ){
            $back = $this->mdl_role->access_insert( $data['role_id'],$keys );
        }
        if($back){
            $this->ajax_views['sta'] = '1';
            $this->ajax_views['msg'] = '保存成功';
        }
        $this->ajax_end();
    }
}