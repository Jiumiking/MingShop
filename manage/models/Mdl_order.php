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
     * 详情
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function my_select( $id = '' ){
        if( empty( $id ) ){
            return false;
        }
        $sql = "
            SELECT
                o.id,o.order_no,o.member_id,o.money_goods,o.money_preferential,o.money_shipping,o.money_end,o.payment_id,o.accept_name,o.accept_province,o.accept_city,o.accept_area,o.accept_detail,o.accept_phone,o.remark,o.date_add,o.date_edit,o.date_pay,o.date_send,o.date_end,o.status
                ,m.name_real,m.name_nick
                ,p.name AS payment_name
            FROM
                {$this->db->dbprefix($this->my_table)} AS o
                LEFT JOIN {$this->db->dbprefix('member')} AS m ON m.id = o.member_id
                LEFT JOIN {$this->db->dbprefix('payment')} AS p ON p.id = o.payment_id
            WHERE
                o.id = '$id'
        ";
        $query = $this->db->query($sql);
        $data = $query->row_array();
        return $data;
    }
    /**
     * 列表
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function my_selects( $num=0, $limit=0, $where=array(), $order_by='id DESC' ){
        $_where = '';
        if( !empty($where) ){
            $_where = $this->my_where($where);
        }
        $_limit = '';
        if( !empty($num) ){
            $_limit = "LIMIT $limit,$num";
        }
        $sql = "
            SELECT
                o.id,o.order_no,o.member_id,o.money_goods,o.money_preferential,o.money_shipping,o.money_end,o.payment_id,o.accept_name,o.accept_province,o.accept_city,o.accept_area,o.accept_detail,o.accept_phone,o.remark,o.date_add,o.date_edit,o.date_pay,o.date_send,o.date_end,o.status
                ,m.name_real,m.name_nick
                ,p.name AS payment_name
            FROM
                {$this->db->dbprefix($this->my_table)} AS o
                LEFT JOIN {$this->db->dbprefix('member')} AS m ON m.id = o.member_id
                LEFT JOIN {$this->db->dbprefix('payment')} AS p ON p.id = o.payment_id
            WHERE
                1
                $_where
            ORDER BY
                $order_by
            $_limit
        ";
        $query = $this->db->query($sql);
        $data = $query->result_array();
        return $data;
    }
    /**
     * 列表数量
     *
     * @param   mixed
     * @return  object
     */
    public function my_count( $where=array() ){
        $_where = '';
        if(!empty($where)){
            $_where = $this->my_where($where);
        }
        $sql = "
            SELECT
                count(1) AS count
            FROM
                {$this->db->dbprefix($this->my_table)} AS o
                LEFT JOIN {$this->db->dbprefix('member')} AS m ON m.id = o.member_id
                LEFT JOIN {$this->db->dbprefix('payment')} AS p ON p.id = o.payment_id
            WHERE
                1
                $_where
        ";
        $query = $this->db->query($sql);
        $data = $query->row_array();
        if(!empty($data['count'])){
            return $data['count'];
        }
        return 0;
    }
    /**
     * 列表条件处理
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    protected function my_where( $where=array() ){
        if(empty($where)){
            return '';
        }
        $return = '';
        foreach($where as $key=>$value){
            if( !empty($value) || $value == 0 ){
                $this->sql_value($value);
                if( $key=='order_no' || $key=='accept_name' || $key=='accept_phone' ){
                    $return .= ' AND o.'.$key." LIKE '%$value%'";
                }else if($key=='name_real' || $key=='name_nick' || $key=='phone' || $key=='email'){
                    $return .= ' AND m.'.$key." LIKE '%$value%'";
                }else{
                    $return .= ' AND o.'.$key." = '$value'";
                }
            }
        }
        return $return;
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