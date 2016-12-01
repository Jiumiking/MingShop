<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * CI后台model
 * @category    model
 * @author      ming.king
 * @date        2015/11/26
 */
class Mdl_order extends MY_Model{
    /**
     * 构造函数
     *
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        $this->my_select_field = 'id,order_no,member_id,money_goods,money_preferential,money_shipping,money_end,payment_id,accept_name,accept_province,accept_city,accept_area,accept_detail,accept_phone,remark,date_add,date_edit,date_pay,date_send,date_end,status';
        $this->my_table = 'order';
    }
    /**
     * 详情 根据订单号
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function my_select_by_no( $order_no = '' ){
        if( empty( $order_no ) ){
            return false;
        }
        $sql = "
            SELECT
                {$this->my_select_field}
            FROM
                {$this->db->dbprefix($this->my_table)}
            WHERE
                order_no = '$order_no'
        ";
        $query = $this->db->query($sql);
        $data = $query->row_array();
        return $data;
    }
    /**
     * 获取一个新的订单号
     * @access  public
     * @return  string
     */
    public function order_no_new(){
        return 'o'.time().rand(10,99);
    }
    /**
     * 给订单加上商品信息
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function order_goods( &$order_info ){
        if( !empty($order_info['id']) ){
            $this->load->model('mdl_order_goods');
            $this->load->model('mdl_goods');
            $order_info['goods'] = $this->mdl_order_goods->my_selects(0,0,array('order_id'=>$order_info['id']));
            if( !empty($order_info['goods']) ){
                foreach( $order_info['goods'] as $k=>$v ){
                    $data_goods = $this->mdl_goods->my_select( $v['goods_id'] );
                    if( !empty($data_goods) ){
                        $order_info['goods'][$k]['image'] = $data_goods['image'];
                    }
                }
            }
        }
    }
    /**
     * 给订单列表加上商品信息
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function order_goodses( &$order_list ){
        if( !empty( $order_list ) ){
            foreach( $order_list as $k=>$v ){
                $this->order_goods($order_list[$k]);
            }
        }
    }
}