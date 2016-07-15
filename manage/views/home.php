<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
<div class="row">
    <div class="col-lg-12">
        <h3 class="page-header"><i class="fa fa-laptop"></i> Dashboard</h3>
        <ol class="breadcrumb">
            <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
            <li><i class="fa fa-laptop"></i>Dashboard</li>						  	
        </ol>
    </div>
</div>

<div class="row">
    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
        <div class="info-box red-bg">
            <i class="fa fa-thumbs-o-up"></i>
            <div class="count">356K</div>
            <div class="title">Order</div>						
        </div><!--/.info-box-->			
    </div><!--/.col-->
    
    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
        <div class="info-box green-bg">
            <i class="fa fa-cubes"></i>
            <div class="count">425K</div>
            <div class="title">Stock</div>						
        </div><!--/.info-box-->			
    </div><!--/.col-->
    
    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
        <div class="info-box blue-bg">
            <i class="fa fa-cloud-download"></i>
            <div class="count">325K</div>
            <div class="title">Download</div>						
        </div><!--/.info-box-->			
    </div><!--/.col-->
    
    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
        <div class="info-box magenta-bg">
            <i class="fa fa-shopping-cart"></i>
            <div class="count">259K</div>
            <div class="title">Purchased</div>						
        </div><!--/.info-box-->			
    </div><!--/.col-->		
    
</div><!--/.row-->
<?php $this->load->view('base/footer'); ?>