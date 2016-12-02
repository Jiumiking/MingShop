<?php
/**
 * Created by PhpStorm.
 * User: Ming
 * Date: 2016/8/15
 * Time: 10:51
 */
class Mdl_article extends MY_Model{
    /**
     * Mdl_goods constructor.
     */
    public function __construct(){
        parent::__construct();
        $this->my_select_field = 'id,category_id,name,title,image,read_times,date_add,date_edit,status';
        $this->my_table = 'article';
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
                if( $key == 'name' ){
                    $return .= ' AND '.$key." LIKE '%$value%'";
                }else{
                    $return .= ' AND '.$key." = '$value'";
                }

            }
        }
        return $return;
    }
    /**
     * 内容获取by goods_id
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function detail_get( $id ){
        if( empty($id) ){
            return false;
        }
        $sql = "
            SELECT
                id,article_id,detail
            FROM
                {$this->db->dbprefix('article_detail')}
            WHERE
                article_id = '$id'
        ";
        $query = $this->db->query($sql);
        $data = $query->row_array();
        return $data;
    }
    /**
     * 内容更新
     * @access  public
     * @param   mixed
     * @return  mixed
     */
    public function detail_edit( $id, $detail ){
        if( empty($id) ){
            return false;
        }
        $date = $this->detail_get( $id );
        if( $date ){
            return $this->db->update( 'article_detail', array('detail'=>$detail, 'date_edit'=>date('Y-m-d H:i:s')), array('article_id' => $id) );
        }else{
            return $this->db->insert( 'article_detail', array( 'article_id'=>$id, 'detail'=>$detail, 'date_add'=>date('Y-m-d H:i:s') ) );
        }
    }
}