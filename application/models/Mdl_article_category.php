<?php
/**
 * Created by PhpStorm.
 * User: Ming
 * Date: 2016/8/15
 * Time: 11:03
 */
class Mdl_article_category extends MY_Model{
    /**
     * Mdl_goods constructor.
     */
    public function __construct(){
        parent::__construct();
        $this->my_select_field = 'id,name,parent_id,sort,date_add,date_edit,status';
        $this->my_table = 'article_category';
        $this->my_order_by = 'id ASC';
    }
    /**
     * 选择父类时的数据
     * @access  private
     * @param   mixed
     * @return  mixed
     */
    public function options($except = NULL){
        $data = $this->my_selects(0,0,array());
        $this->load->library('tree');
        $this->tree->setTree($data, 'id', 'parent_id', 'name');
        $option = $this->tree->getOptions(5, 0, $except, '|___');
        return $option;
    }
}