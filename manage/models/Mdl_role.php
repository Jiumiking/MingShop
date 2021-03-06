<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * CI后台用户权限model
 *
 * @author	jinjunming
 * @date	2014/4/19   
 */
class Mdl_role extends MY_Model{
    /**
     * 构造函数
     *
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        $this->my_select_field = 'id,name,remark,parent_id';
        $this->my_table = 'role';
    }
    /**
     * 权限
     *
     * @access  public
     * @param   array
     * @return  boolen
     */
    public function access_get( $role_id='' ){
        if( empty($role_id) ){
            return false;
        }
        $sql = "
            SELECT
                `role_id`,`key`
            FROM
                {$this->db->dbprefix('role_access')}
            WHERE
                role_id='$role_id'
        ";
        $query = $this->db->query($sql);
        $info = $query->result_array();
        return $info;
    }
    /**
     * 权限保存
     *
     * @access  public
     * @param   array
     * @return  boolen
     */
    public function access_insert( $role_id='',$keys = array() ){
        if( empty($role_id) ){
            return false;
        }
        $this->db->delete( 'role_access', array('role_id'=>$role_id) );
        if( !empty($keys) ){
            $data = array();
            foreach($keys as $key=>$value){
                $data[$key]['role_id'] = $role_id;
                $data[$key]['key'] = $value;
            }
            return $this->db->insert_batch( 'role_access', $data );
        }
        return false;
    }
}