<!DOCTYPE HTML>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><?php echo empty($this_setting['station_name'])?'':$this_setting['station_name']; ?></title>
    <link href="<?php echo base_url('application/images/icon.ico');?>" type="image/x-icon" rel="shortcut icon" />

    <!-- Css files -->
    <link href="<?php echo base_url('application/third_party/bootstrap3/css/bootstrap.min.css');?>" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url('application/css/font-awesome.min.css');?>" rel="stylesheet" type="text/css">
    <link href="<?php echo base_url('application/css/style.min.css');?>" rel="stylesheet">
    <!--动态加载css-->
    <?php if(!empty($_css)){ ?>
    <?php foreach($_css as $css){ ?>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url('application/css/'.$css.'.css');?>" />
    <?php } ?>
    <?php } ?>

    <script src="<?php echo base_url('application/js/jquery.js');?>"></script>
    <script src="<?php echo base_url('application/third_party/bootstrap3/js/bootstrap.min.js');?>"></script>
    <script src="<?php echo base_url('application/js/authen.js');?>"></script>
    <script src="<?php echo base_url('application/js/jquery.form.js');?>"></script>
    <!--动态加载js-->
    <?php if(!empty($_js)){ ?>
    <?php foreach($_js as $js){ ?>
    <script src="<?php echo base_url('application/js/'.$js.'.js');?>"></script>
    <?php } ?>
    <?php } ?>
</head>
<body>
<?php $this->load->view('base/header_js'); ?>