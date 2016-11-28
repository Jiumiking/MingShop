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
                1
                $_where
            ORDER BY
                ".(empty($order_by)?$this->my_order_by:$order_by)."
            $_limit
        ";//ECHO $sql;exit;
        $query = $this->db->query($sql);
        $data = $query->result_array();
        $this->data_up_count($data);
        $this->data_process($data);
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
            if( !empty($value) || $value == '0' ){
                $this->sql_value($value);
                if( $key == 'object_name' ){
                    $sql = '';
                    $object_type = 0;
                    if( !empty($where['object_type']) ){
                        if( $where['object_type'] == 1 ){
                            $sql = "
                                SELECT
                                    id
                                FROM
                                    {$this->db->dbprefix('article')}
                                WHERE
                                    name LIKE '%$value%'";
                            $object_type = 1;
                        }else if( $where['object_type'] == 2 ){
                            $sql = "
                                SELECT
                                    id
                                FROM
                                    {$this->db->dbprefix('goods')}
                                WHERE
                                    name LIKE '%$value%'";
                            $object_type = 2;
                        }
                        $query = $this->db->query($sql);
                        $data = $query->result_array();
                        $object_id[] = 0;
                        if( !empty($data) ){
                            foreach( $data as $k=>$v ){
                                $object_id[] = $v['id'];
                            }
                        }
                        $return .= " AND (c.object_id IN (".implode(',',$object_id).") AND c.object_type = $object_type)";
                    }else{
                        $sql1 = "
                                SELECT
                                    id
                                FROM
                                    {$this->db->dbprefix('article')}
                                WHERE
                                    name LIKE '%$value%'";
                        $sql2 = "
                                SELECT
                                    id
                                FROM
                                    {$this->db->dbprefix('goods')}
                                WHERE
                                    name LIKE '%$value%'";
                        $query1 = $this->db->query($sql1);
                        $data1 = $query1->result_array();
                        $object_id1[] = 0;
                        if( !empty($data1) ){
                            foreach( $data1 as $k=>$v ){
                                $object_id1[] = $v['id'];
                            }
                        }
                        $query2 = $this->db->query($sql2);
                        $data2 = $query2->result_array();
                        $object_id2[] = 0;
                        if( !empty($data2) ){
                            foreach( $data2 as $k=>$v ){
                                $object_id2[] = $v['id'];
                            }
                        }
                        $return .= " AND ((c.object_id IN (".implode(',',$object_id1).") AND c.object_type = 1) OR (c.object_id IN (".implode(',',$object_id2).") AND c.object_type = 2))";
                    }
                }else if( $key == 'content' ){
                    $return .= ' AND c.'.$key." LIKE '%$value%'";
                }else{
                    $return .= ' AND c.'.$key." = '$value'";
                }
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
                if( !empty($v['parent_id']) ){
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
                }else if( $v['object_type']==2 ){//商品评论
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