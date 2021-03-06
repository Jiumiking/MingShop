<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 控制器
 * @package     CI
 * @subpackage  Controllers
 * @category    Controllers
 * @author      ming.king
 */
class Order extends M_Controller{
    /**
     * 构造函数
     * @access  public
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        $this->load->model('mdl_order');
        $this->load->model('mdl_order_goods');
        $this->load->model('mdl_cart');
        $this->load->model('mdl_payment');
        $this->load->model('mdl_goods');
        $this->load->model('mdl_format');
        $this->load->model('mdl_address');
        $this->load->model('mdl_member_address');
        $this->this_view_data['order_status'] = $this->config->item('order_status');
    }
    /**
     * 默认首页
     * @access  public
     * @return  void
     */
    public function index(){
    }
    /**
     * 订单支付
     * @access  public
     * @param   $order_id 订单id
     * @return  void
     */
    public function show( $order_id=0 ){
        $order_id = !empty($order_id)?$order_id:(empty($_GET['id'])?0:$_GET['id']);
        $data = $this->mdl_order->my_select($order_id);
        $this->mdl_order->order_goods($data);
        $this->this_view_data['data'] = $data;
        $this->this_view_data['data_payment'] = $this->mdl_payment->my_selects();
        //$this->this_view_data['data_json'] = json_encode($data);
        $this->load->view( 'order/order_show',$this->this_view_data);
    }
    /**
     * 新增订单
     * @access  public
     * @return  void
     */
    public function order_add(){
        /**地址**/
        if( empty($_POST['order']['address']) ){
            $this->session->set_flashdata('msg', '请选择地址');
            redirect( site_url('cart/index') );
        }
        $data_address = $this->mdl_address->my_selects();
        $data_member_address = $this->mdl_member_address->my_select( $_POST['order']['address'] );
        if( empty($data_member_address) ){
            $this->session->set_flashdata('msg', '请选择地址');
            redirect( site_url('cart/index') );
        }
        $insert_order['accept_name'] = $data_member_address['person'];
        $insert_order['accept_phone'] = $data_member_address['phone'];
        $insert_order['accept_detail'] = $data_member_address['detail'];
        foreach( $data_address as $v ){
            if( !empty($data_member_address['province']) && $data_member_address['province'] == $v['number'] ){
                $insert_order['accept_province'] = $v['name'];
            }
            if( !empty($data_member_address['city']) && $data_member_address['city'] == $v['number'] ){
                $insert_order['accept_city'] = $v['name'];
            }
            if( !empty($data_member_address['area']) && $data_member_address['area'] == $v['number'] ){
                $insert_order['accept_area'] = $v['name'];
            }
        }
        /**支付方式**/
        if( empty($_POST['order']['payment']) ){
            $this->session->set_flashdata('msg', '请选择支付方式');
            redirect( site_url('cart/index') );
        }
        $insert_order['payment_id'] = $_POST['order']['payment'];
        /**订单商品**/
        if( empty($_POST['order']['cart']) ){
            $this->session->set_flashdata('msg', '请选择商品');
            redirect( site_url('cart/index') );
        }
        $insert_order['money_goods'] = 0;
        foreach( $_POST['order']['cart'] as $k=>$v ){
            $data_cart = $this->mdl_cart->my_select($v);
            if( empty($data_cart) ){
                $this->session->set_flashdata('msg', '有无效商品');
                redirect( site_url('cart/index') );
            }
            $insert_order_goods[$k]['goods_id'] = $data_cart['goods_id'];
            $insert_order_goods[$k]['goods_amount_id'] = $data_cart['goods_amount_id'];
            $insert_order_goods[$k]['amount'] = $data_cart['amount'];
            $data_goods_amount = $this->mdl_goods->amount_get( $data_cart['goods_amount_id'], false );
            if( empty($data_goods_amount) ){
                $this->session->set_flashdata('msg', '有无效商品');
                redirect( site_url('cart/index') );
            }
            if( $data_goods_amount['amount'] < $data_cart['amount'] ){
                $this->session->set_flashdata('msg', $data_cart['name'].' 库存不足');
                redirect( site_url('cart/index') );
            }
            $undate_goods_amount[$k]['id'] = $data_cart['goods_amount_id'];
            $undate_goods_amount[$k]['amount'] = $data_goods_amount['amount'] - $data_cart['amount'];

            $insert_order_goods[$k]['money'] = $data_goods_amount['money'];
            $insert_order_goods[$k]['goods_name'] = $data_cart['name'];
            $insert_order['money_goods'] += $data_goods_amount['money']*$data_cart['amount'];
        }
        //配送邮费
        if( !empty($this->this_setting['shipping_free']) && $insert_order['money_goods'] > $this->this_setting['shipping_free'] ){
            $insert_order['money_shipping'] = 0;
        }else{
            $shipping_type = $this->mdl_member_address->shipping_type( $_POST['order']['address'] );
            if( $shipping_type == 1 ){
                $insert_order['money_shipping'] = empty($this->this_setting['shipping_jzh'])?0:$this->this_setting['shipping_jzh'];
            }else{
                $insert_order['money_shipping'] = empty($this->this_setting['shipping_other'])?0:$this->this_setting['shipping_other'];
            }
        }
        $insert_order['money_end'] = $insert_order['money_goods'] + $insert_order['money_shipping'];
        $insert_order['member_id'] = $this->this_user['id'];
        $insert_order['status'] = 1;
        $insert_order['order_no'] = $this->mdl_order->order_no_new();

        /**新建订单 begin**/
        $this->db->trans_start();
        /**插入订单表**/
        $this->mdl_order->my_insert( $insert_order );
        /**插入订单商品表**/
        $order_id = $this->db->insert_id();
        foreach( $insert_order_goods as $k=>$v ){
            $insert_order_goods[$k]['order_id'] = $order_id;
        }
        $this->mdl_order_goods->my_inserts( $insert_order_goods );
        /**更新商品库存**/
        foreach( $undate_goods_amount as $k=>$v ){
            $this->mdl_goods->amount_edit( $v['id'], $v );
        }
        /**更新购物车**/
        foreach( $_POST['order']['cart'] as $k=>$v ){
            $this->mdl_cart->my_delete( $v );
        }
        $this->db->trans_complete();
        /**新建订单 end**/

        if ($this->db->trans_status() === FALSE){//失败
            $this->session->set_flashdata('msg', '新建订单失败');
            redirect( site_url('cart/index') );
        }
        $this->order_pay( $order_id );
    }
    /**
     * 编辑订单
     * @access  public
     * @return  void
     */
    public function order_edit(){
        if( empty($_POST['id']) ){
            $this->session->set_flashdata('msg', $this->config->item(0,'default_ajax_status'));
            redirect( $_SERVER['HTTP_REFERER'] );
        }

        /**支付方式**/
        if( !empty($_POST['payment']) ){
            $data_update['payment_id'] = $_POST['payment'];
            /**插入订单表**/
            $this->mdl_order->my_update( $_POST['id'], $data_update );
        }
        $this->order_pay( $_POST['id'] );
    }
    /**
     * 订单支付
     * @access  public
     * @param   $order_id 订单id
     * @return  void
     */
    public function order_pay( $order_id=0 ){
        $order_id = !empty($order_id)?$order_id:(empty($_GET['id'])?0:$_GET['id']);
        if( empty($order_id) ){
            $this->session->set_flashdata('msg', '无效的订单');
            redirect( $_SERVER['HTTP_REFERER'] );
        }
        $data_order = $this->mdl_order->my_select($order_id);
        if( empty($data_order) ){
            $this->session->set_flashdata('msg', '无效的订单');
            redirect( $_SERVER['HTTP_REFERER'] );
        }
        if( $data_order['status'] > 1 ){
            $this->session->set_flashdata('msg', '该订单已付款');
            redirect( $_SERVER['HTTP_REFERER'] );
        }
        $data_payment = $this->mdl_payment->my_select($data_order['payment_id']);
        if( empty($data_payment) ){
            $this->session->set_flashdata('msg', '无效的支付方式');
            redirect( $_SERVER['HTTP_REFERER'] );
        }
        $pay_path = $this->config->item('base_path').'common/payment/'.$data_payment['key'];
        $pay_file = $pay_path.'/'.$data_payment['key'].'.php';
        if( !file_exists($pay_file) ){
            $this->session->set_flashdata('msg', '无效的支付方式');
            redirect( $_SERVER['HTTP_REFERER'] );
        }
        require_once("$pay_file");
        $pay_obj = new $data_payment['key'];
        $return_query = $pay_obj->query($data_order['order_no']);
        if( $return_query ){//已付款
            $this->mdl_order->my_update( $data_order['id'], array('status'=>2,'date_pay'=>date('Y-m-d H:i:s')) );
            $this->session->set_flashdata('msg', '支付成功');
            redirect( 'member' );
        }
        $return = $pay_obj->pay($data_order);
    }
    /**
     * 支付宝同步通知
     * @access  public
     * @return  void
     */
    public function return_alipay(){
        if( empty($_GET['out_trade_no']) ){
            $this->session->set_flashdata('msg', '参数错误');
            redirect( 'member' );
        }
        //商户订单号
        $order_no = htmlspecialchars($_GET['out_trade_no']);
        $data_order = $this->mdl_order->my_select_by_no($order_no);
        if( empty($data_order) ){
            $this->session->set_flashdata('msg', '无效的订单');
            redirect( 'member' );
        }
        $pay_path = $this->config->item('base_path').'common/payment/alipay';
        $pay_file = $pay_path.'/alipay.php';
        require_once("$pay_file");
        $pay_obj = new alipay();
        $return = $pay_obj->result_return();

        if( $return ){
            $this->mdl_order->my_update( $data_order['id'], array('status'=>2,'date_pay'=>date('Y-m-d H:i:s')) );
            $this->session->set_flashdata('msg', '支付成功');
        }else{
            $this->session->set_flashdata('msg', '支付失败');
        }
        redirect( 'member' );
    }
    /**
     * 支付宝异步通知
     * @access  public
     * @return  void
     */
    public function notify_alipay(){
        if( empty($_POST['out_trade_no']) ){
            return false;
        }
        //商户订单号
        $order_no = $_POST['out_trade_no'];
        $data_order = $this->mdl_order->my_select_by_no($order_no);
        if( empty($data_order) ){
            return false;
        }
        $pay_path = $this->config->item('base_path').'common/payment/alipay';
        $pay_file = $pay_path.'/alipay.php';
        require_once("$pay_file");
        $pay_obj = new alipay();
        $return = $pay_obj->result_notify();

        if( $return ){
            if($_POST['trade_status'] == 'TRADE_FINISHED') {
                //判断该笔订单是否在商户网站中已经做过处理
                //如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
                //请务必判断请求时的total_amount与通知时获取的total_fee为一致的
                //如果有做过处理，不执行商户的业务程序

                //注意：
                //退款日期超过可退款期限后（如三个月可退款），支付宝系统发送该交易状态通知
            }
            else if ($_POST['trade_status'] == 'TRADE_SUCCESS') {
                //判断该笔订单是否在商户网站中已经做过处理
                //如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
                //请务必判断请求时的total_amount与通知时获取的total_fee为一致的
                //如果有做过处理，不执行商户的业务程序
                //注意：
                //付款完成后，支付宝系统发送该交易状态通知
                if( $data_order['status'] == 1 && !empty($_POST['total_amount']) && $_POST['total_amount'] == $data_order['money_end'] ){//未付款
                    $this->mdl_order->my_update( $data_order['id'], array('status'=>2,'date_pay'=>date('Y-m-d H:i:s')) );
                }
            }
        }
    }
}