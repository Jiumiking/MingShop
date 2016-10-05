<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * 后台控制器
 * @category    controller
 * @author      ming.king
 * @date        2015/11/26
 */
class Joke extends MY_Controller{
    /**
     * 构造函数
     *
     * @access  public
     * @return  void
     */
    public function __construct(){
        parent::__construct();
    }
    /*
     * 导入模板
     * @access  public
     */
    public function my_import_template(){
        $this->load->library('PHPExcel');
        $this->load->library('PHPExcel/IOFactory');
        // Set document properties
        $this->phpexcel->getProperties()->setCreator("Ming")
            ->setLastModifiedBy("Ming")
            ->setTitle("import")
            ->setSubject("import")
            ->setDescription("import")
            ->setKeywords("import")
            ->setCategory("import");
        // Add some data
        $this->phpexcel->setActiveSheetIndex(0)
            ->setCellValue('A1', '内容');
        // Rename worksheet
        $this->phpexcel->getActiveSheet()->setTitle('import');
        // Set active sheet index to the first sheet, so Excel opens this as the first sheet
        $this->phpexcel->setActiveSheetIndex(0);
        // Redirect output to a client’s web browser (Excel5)
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="joke.xls"');
        header('Cache-Control: max-age=0');
        // If you're serving to IE 9, then the following may be needed
        header('Cache-Control: max-age=1');
        // If you're serving to IE over SSL, then the following may be needed
        header ('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
        header ('Last-Modified: '.gmdate('D, d M Y H:i:s').' GMT'); // always modified
        header ('Cache-Control: cache, must-revalidate'); // HTTP/1.1
        header ('Pragma: public'); // HTTP/1.0
        $objWriter = IOFactory::createWriter($this->phpexcel, 'Excel5');
        $objWriter->save('php://output');
        exit;
    }
    /**
     * 导入
     * @access  public
     */
    public function my_import_do(){
        $this->ajax_views['msg'] = '开始时间：'.date('Y-m-d H:i:s').'<br>';
        $this->load->library('PHPExcel');
        //echo '<pre>';print_r($_FILES);exit;
        if ( $_FILES["file"]["type"] == "application/vnd.ms-excel" ){
            $file_type = 'Excel5';
        }else if( $_FILES["file"]["type"] == "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" ){
            $file_type = 'Excel2007';
        }else {
            $this->ajax_views['msg'] = '文件格式不支持';
            $this->ajax_end();
        }
        if ($_FILES["file"]["error"] > 0){
            $this->ajax_views['msg'] = $_FILES["file"]["error"];
            $this->ajax_end();
        }
        $file_name = $_FILES["file"]["tmp_name"];
//        $upload_path = $this->config->item('upload_path');
//        $file_name = $upload_path . $_FILES["file"]["name"];
//        $config['upload_path'] = $upload_path;
//        $config['allowed_types'] = $this->config->item('upload_exl_allowed_types');
//        $config['max_size'] = $this->config->item('upload_exl_max_size');
//        $config['overwrite'] = true;
//        $this->upload->initialize($config);
//        if ( @($this->upload->do_upload('file')) ){
//            $upload_back = $this->upload->data();
//            $data['file_name'] = $upload_back['file_name']; //上传后的文件名
//        }else{
//            $this->ajax_views['msg'] = $this->upload->display_errors();
//            $this->ajax_end();
//        }
        //exit;

        //导入phpExcel
        $this->load->library('PHPExcel/IOFactory');
        //设置php服务器可用内存，上传较大文件时可能会用到
        ini_set('max_execution_time', '0');
        ini_set('memory_limit', '1024M');

        $obj_reader = IOFactory::createReader($file_type);

        //设置只读，可取消类似"3.08E-05"之类自动转换的数据格式，避免写库失败
        $obj_reader->setReadDataOnly(true);

        $obj_phpexcel = $obj_reader->load($file_name);
        $data = $obj_phpexcel->getSheet(0)->toArray(null,true,true,true);
//echo '<pre>';print_r($data);exit;
        unset($data[1]);
        $this->ajax_views['msg'] .= '导入开始时间：'.date('Y-m-d H:i:s').'<br>';
        $data_insert = array();
        if( !empty($data) ){
            foreach( $data as $k=>$v ){
                if( !empty($v['A']) ){
                    $data_insert[$k]['content'] = $v['A'];
                }
            }
        }else{
            $this->ajax_views['msg'] = '无数据';
        }
        if( !empty($data_insert) ){
            if( $this->{$this->this_model}->my_inserts($data_insert) ){
                $this->ajax_views['msg'] .= '导入完成。<br>';
            }else{
                $this->ajax_views['msg'] .= '导入失败。<br>';
            }
        }else{
            $this->ajax_views['msg'] .= '无数据。<br>';
        }
        $this->ajax_views['msg'] .= '导入结束时间：'.date('Y-m-d H:i:s');
        $this->ajax_end();
    }
}