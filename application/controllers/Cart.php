<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 控制器
 * @package     CI
 * @subpackage  Controllers
 * @category    Controllers
 * @author      ming.king
 */
class Cart extends M_Controller{
    /**
     * 构造函数
     * @access  public
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        $this->this_view_data['menu'] = 'cart';
        $this->load->model('mdl_cart');
        $this->load->model('mdl_payment');
        $this->load->model('mdl_goods');
        $this->load->model('mdl_format');
        $this->load->model('mdl_address');
        $this->load->model('mdl_member_address');
    }
    /**
     * 默认首页
     * @access  public
     * @return  void
     */
    public function index(){
        $data = $this->mdl_cart->my_selects( 0,0,array('member_id'=>$this->this_user['id']) );
        $this->this_view_data['data'] = $data;
        //$this->this_view_data['data_json'] = json_encode($data);
        $this->load->view( 'cart/cart_index',$this->this_view_data);
    }
    /**
     * 结算
     * @access  public
     * @return  mixed
     */
    public function checkout(){
        $this->this_view_data['data_payment'] = $this->mdl_payment->my_selects();
        $this->this_view_data['data_address'] = $this->mdl_address->my_selects();
        $data_cart = $this->mdl_cart->my_selects( 0,0,array('member_id'=>$this->this_user['id']) );
        $goods_count = 0;
        $goods_money = 0;
        if( !empty($data_cart) ){
            foreach( $data_cart as $v ){
                $goods_count += $v['amount'];
                $goods_money += $v['amount'] * $v['money'];
            }
        }
        $this->this_view_data['data_cart'] = $data_cart;
        $this->this_view_data['goods_count'] = $goods_count;
        $this->this_view_data['goods_money'] = $goods_money;
        $data_member_address_all = $this->mdl_member_address->my_selects( 0,0,array('member_id'=>$this->this_user['id']) );
        $data_member_address = array();
        if( !empty($data_member_address_all) ){
            foreach( $data_member_address_all as $k=>$v ){
                if( $v['status'] == 2 ){
                    $data_member_address = $data_member_address_all[$k];
                    break;
                }
            }
            if( empty($data_member_address) ){
                $data_member_address = $data_member_address_all[0];
            }
        }
        $shipping_type = 0;
        if( !empty($data_member_address) ){
            $shipping_type = $this->mdl_member_address->shipping_type($data_member_address['id']);
        }
        $this->this_view_data['data_member_address'] = $data_member_address;
        $this->this_view_data['shipping_type'] = $shipping_type;
        $this->load->view( 'cart/cart_checkout',$this->this_view_data);
    }
    /**
     * ajax 购物车刷新
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function cart_refresh(){
        if( empty($this->this_user['id']) ){
            $this->ajax_end();
        }
        $data_cart = $this->mdl_cart->my_selects( 0,0,array('member_id'=>$this->this_user['id']) );
        if( empty($data_cart) ){
            $this->ajax_end();
        }
        $this->ajax_data['sta'] = 1;
        $this->ajax_data['dat'] = $data_cart;
        $this->ajax_end();
    }
    /**
     * ajax 加入购物车
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function cart_add(){
        if( empty($_GET['id']) ){
            $this->ajax_data['msg'] = '加入购物车失败,找不到库存';
            $this->ajax_end();
        }

        $data_amount = $this->mdl_goods->amount_get($_GET['id'],false);
        if( empty($data_amount) ){
            $this->ajax_data['msg'] = '加入购物车失败,找不到库存';
            $this->ajax_end();
        }
        if( $data_amount['amount'] <= 0 ){
            $this->ajax_data['msg'] = '加入购物车失败,库存不够';
            $this->ajax_end();
        }

        $data_cart = $this->mdl_cart->my_selects( 0,0,array('member_id'=>$this->this_user['id'],'goods_amount_id'=>$_GET['id']) );
        if( !empty($data_cart) ){
            $back = $this->mdl_cart->my_update( $data_cart[0]['id'],array('amount'=>$data_cart[0]['amount']+1) ); //更新
            $this->ajax_data['dat'] = $data_cart[0]['id'];
        }else{
            $data['member_id'] = $this->this_user['id'];
            $data['goods_id'] = $data_amount['goods_id'];
            $data['goods_amount_id'] = $data_amount['id'];
            $data['money'] = $data_amount['money'];
            $data['amount'] = 1;
            $data['date_add'] = time();

            $data_goods = $this->mdl_goods->my_select($data_amount['goods_id']);
            $data['name'] = $data_goods['name'];
            $data['image'] = $data_goods['image'];
            for( $i=1;$i<=5;$i++ ){
                if( !empty($data_amount['format'.$i]) ){
                    $data_format = $this->mdl_format->value_select($data_amount['format'.$i]);
                    if( !empty($data_format) ){
                        $data['name'] .= ' '.$data_format['name'];
                    }
                }
            }
            $back = $this->mdl_cart->my_insert( $data ); //新插入
            if( $back ){
                $this->ajax_data['dat'] = $this->db->insert_id();
            }
        }

        if( !$back ){
            $this->ajax_data['msg'] = '加入购物车失败';
            $this->ajax_end();
        }
        $this->ajax_data['sta'] = 1;
        $this->ajax_data['msg'] = '加入购物车成功';
        
        $this->ajax_end();
    }
    /**
     * 加入购物车
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function cart_add_success(){
        $data = array();
        if( !empty($_GET['id']) ){
            $data = $this->mdl_cart->my_select( $_GET['id'] );
        }
        $this->this_view_data['data'] = $data;
        //echo '<pre>';print_r($data);exit;
        $this->load->view( 'cart/cart_success',$this->this_view_data);
    }
    /**
     * ajax 删除购物车商品
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function cart_del(){
        if( empty($_GET['id']) ){
            $this->ajax_data['msg'] = '数据有误';
            $this->ajax_end();
        }

        $data_cart = $this->mdl_cart->my_select( $_GET['id'] );
        if( empty($data_cart) ){
            $this->ajax_data['msg'] = '已经删除';
            $this->ajax_end();
        }
        $back = $this->mdl_cart->my_delete( $_GET['id'] );
        if( $back ){
            $this->ajax_data['sta'] = 1;
            $this->ajax_data['msg'] = '删除成功';
        }
        $this->ajax_end();
    }
    /**
     * ajax 修改购物车商品数量
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function cart_num(){
        if( empty($_GET['id']) || empty($_GET['num']) ){
            $this->ajax_data['msg'] = '数据有误';
            $this->ajax_end();
        }

        $data_cart = $this->mdl_cart->my_select( $_GET['id'] );
        if( empty($data_cart) ){
            $this->ajax_data['msg'] = '数据有误';
            $this->ajax_end();
        }
        $data_amount = $this->mdl_goods->amount_get( $data_cart['goods_amount_id'], false );
        if( empty($data_amount['amount']) || $data_amount['amount']<$_GET['num'] ){
            $this->ajax_data['msg'] = '库存不足';
            $this->ajax_end();
        }

        $back = $this->mdl_cart->my_update( $_GET['id'],array('amount'=>$_GET['num']) );
        if( $back ){
            $this->ajax_data['sta'] = 1;
            $this->ajax_data['msg'] = '修改成功';
        }
        $this->ajax_end();
    }
}