<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * CI后台model
 * @category    model
 * @author      ming.king
 * @date        2015/11/26
 */
class Mdl_category extends MY_Model{
    /**
     * 构造函数
     *
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        $this->my_select_field .= ',name,parent_id,sort';
        $this->my_table = 'category';
    }
    /**
     * 选择父类时的数据
     * @access  private
     * @param   mixed
     * @return  mixed
     */
    public function options($except = NULL){
        $data = $this->my_selects(0,0,array(),'id ASC');
        $this->load->library('tree');
        $this->tree->setTree($data, 'id', 'parent_id', 'name');
        $option = $this->tree->getOptions(5, 0, $except, '|___');
        return $option;
    }
    /**
     * 选择父类时的数据
     * @access  private
     * @param   mixed
     * @return  mixed
     */
    public function children_get( $id ){
        $return = array();
        if( empty($id) ){
            return $return;
        }
        $data = $this->my_selects(0,0,array('parent_id'=>$id));
        if( !empty($data) ){
            foreach( $data as $v ){
                $return[] = $v['id'];
                $return = array_merge( $return, $this->children_get( $v['id'] ) );
            }
        }
        return $return;
    }
}