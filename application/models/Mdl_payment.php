<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * CI后台model
 * @category    model
 * @author      ming.king
 * @date        2015/11/26
 */
class Mdl_payment extends MY_Model{
    /**
     * 构造函数
     *
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        $this->my_select_field = 'id,name,`key`,date_add,date_edit,status';
        $this->my_table = 'payment';
        $this->my_order_by = 'id ASC';
    }
}