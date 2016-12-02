<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * CI后台model
 * @category    model
 * @author      ming.king
 * @date        2015/11/26
 */
class Mdl_weixin_likes extends MY_Model{
    /**
     * 构造函数
     *
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        $this->my_select_field = 'id,member_id,content,image,date_add,date_edit,status';
        $this->my_table = 'weixin_likes';
        $this->my_order_by = 'a.date_add DESC';
        $this->my_filter['status'] = 1;
        $this->load->model('mdl_weixin_likes_up');
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
                a.id,a.member_id,a.content,a.image,a.date_add,a.date_edit,a.status
                ,b.name_nick AS member_name
            FROM
                {$this->db->dbprefix($this->my_table)} AS a
                LEFT JOIN {$this->db->dbprefix('member')} AS b ON b.id = a.member_id
            WHERE
                a.id = '$id'
        ";
        $query = $this->db->query($sql);
        $data = $query->row_array();
        if( !empty($data) ){
            $data['up'] = $this->mdl_weixin_likes_up->my_count( array('weixin_likes_id'=>$data['id'],'status'=>1) );
        }
        return $data;
    }
    /**
     * 列表
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function my_selects( $num=0, $limit=0, $where=array(), $order_by='' ){
        $_where = '';
        $where = array_merge( $this->my_filter, $where );
        if( !empty($where) ){
            $_where = $this->my_where($where);
        }
        $_limit = '';
        if( !empty($num) ){
            $_limit = "LIMIT $limit,$num";
        }
        $sql = "
            SELECT
                a.id,a.member_id,a.content,a.image,a.date_add,a.date_edit,a.status
                ,b.name_nick AS member_name
            FROM
                {$this->db->dbprefix($this->my_table)} AS a
                LEFT JOIN {$this->db->dbprefix('member')} AS b ON b.id = a.member_id
            WHERE
                1
                $_where
            ORDER BY
                ".(empty($order_by)?$this->my_order_by:$order_by)."
            $_limit
        ";//ECHO $sql;exit;
        $query = $this->db->query($sql);
        $data = $query->result_array();
        $this->data_up_count($data);
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
        $where = array_merge( $this->my_filter, $where );
        if(!empty($where)){
            $_where = $this->my_where($where);
        }
        $sql = "
            SELECT
                count(1) AS count
            FROM
                {$this->db->dbprefix($this->my_table)} AS a
                LEFT JOIN {$this->db->dbprefix('member')} AS b ON b.id = a.member_id
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
            if( !empty($value) || $value == '0' ){
                $this->sql_value($value);
                if( $key == 'name_nick' ){
                    $return .= ' AND b.'.$key." LIKE '%$value%'";
                }else{
                    $return .= ' AND a.'.$key." = '$value'";
                }
            }
        }
        return $return;
    }
    /**
     * 赞的数量
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function data_up_count( &$data ){
        if( !empty($data) ){
            foreach($data as $k=>$v){
                $data[$k]['up'] = $this->mdl_weixin_likes_up->my_count( array('weixin_likes_id'=>$v['id'],'status'=>1) );
            }
        }
    }
}