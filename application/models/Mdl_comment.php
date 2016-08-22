<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * CI后台model
 * @category    model
 * @author      ming.king
 * @date        2015/11/26
 */
class Mdl_comment extends MY_Model{
    /**
     * 构造函数
     *
     * @return  void
     */
    public function __construct(){
        parent::__construct();
        $this->my_select_field = 'id,member_id,object_type,object_id,parent_id,replay_id,content,date_add,date_edit,status';
        $this->my_table = 'comment';
        $this->my_order_by = 'c.date_add ASC';
        $this->load->model('mdl_article');
        $this->load->model('mdl_goods');
        $this->load->model('mdl_comment_up');
    }
    /**
     * 列表
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function my_selects( $num=0, $limit=0, $where=array(), $order_by='' ){
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
                c.id,c.member_id,c.object_type,c.object_id,c.parent_id,c.replay_id,c.content,c.date_add,c.date_edit,c.status
                ,m.name_nick AS member_name,m.headpic AS member_headpic
                ,r.name_nick AS replay_name,r.headpic AS replay_headpic
            FROM
                {$this->db->dbprefix($this->my_table)} AS c
                LEFT JOIN {$this->db->dbprefix('member')} AS m ON m.id = c.member_id
                LEFT JOIN {$this->db->dbprefix('member')} AS r ON r.id = c.replay_id
            WHERE
                c.status = 1
                $_where
            ORDER BY
                ".(empty($order_by)?$this->my_order_by:$order_by)."
            $_limit
        ";
        $query = $this->db->query($sql);
        $data = $query->result_array();
        $this->data_up_count($data);
        $this->data_sort($data);
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
                {$this->db->dbprefix($this->my_table)} AS c
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
                $value = str_replace('.','\.',$value);
                $value = str_replace('%','\%',$value);
                $return .= ' AND c.'.$key." = '$value'";
            }
        }
        return $return;
    }
    /**
     * 排序
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function data_sort( &$data ){
        if( !empty($data) ){
            $data_new = array();
            foreach($data as $k=>$v){
                $data_new[$v['id']] = $v;
            }
            foreach($data_new as $k=>$v){
                if( !empty($v['parent_id']) && !empty($data_new[$v['parent_id']]) ){
                    $data_new[$v['parent_id']]['children'][$k] = $v;
                    unset( $data_new[$k] );
                }
            }
            $data = $data_new;
        }
    }
    /**
     * 排序
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function data_process( &$data ){
        if( !empty($data) ){
            foreach($data as $k=>$v){
                if( $v['object_type']==1 ){//文章评论
                    $data_object = $this->mdl_article->my_select($v['object_id']);
                }else if( $v['object_type']==2 ){
                    $data_object = $this->mdl_goods->my_select($v['object_id']);
                }
                $data[$k]['object_name'] = empty($data_object['name'])?'':$data_object['name'];
            }
        }
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
                $data[$k]['up'] = $this->mdl_comment_up->my_count( array('comment_id'=>$v['id'],'status'=>1) );
            }
        }
    }
}