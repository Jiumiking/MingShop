<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<?php $this->load->view('base/header'); ?>
<form class="form-horizontal" id="setting_tb">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h2>站点设置</h2>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <label class="col-lg-2 col-md-2  control-label" for="text-input">站点名称</label>
                <div class="col-lg-10 col-md-10">
                    <input class="form-control" id="station_name" name="station_name" type="text" value="<?php echo empty($this_setting['station_name'])?'':$this_setting['station_name']; ?>">
                    <input type="hidden" id="last_station_name" value="<?php echo empty($this_setting['station_name'])?'':$this_setting['station_name']; ?>">
                    <span class="error-block" id="m_station_name"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2  control-label" for="text-input">站点LOGO</label>
                <div class="col-lg-10 col-md-10">
                    <img id="logo_show" src="<?php echo empty($this_setting['logo_name'])?'':$this->config->item('front_url').'/uploads/logo/'.$this_setting['logo_name'];?>">
                    <input type="file" name="logo" id="logo" onchange="logo_change()">
                    <span class="error-block" id="m_logo"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2  control-label" for="text-input">登录验证码</label>
                <div class="col-lg-10 col-md-10">
                    <label class="radio-inline">
                        <input name="use_captcha" type="radio" value="1" <?php if( !empty($this_setting['use_captcha']) && $this_setting['use_captcha'] == '1' ){ ?> checked="checked" <?php } ?>">
                        开启
                    </label>
                    <label class="radio-inline">
                        <input name="use_captcha" type="radio" value="0" <?php if( empty($this_setting['use_captcha']) || $this_setting['use_captcha'] == '0' ){ ?> checked="checked" <?php } ?>">
                        关闭
                    </label>
                    <input type="hidden" id="last_use_captcha" value="<?php echo empty($this_setting['use_captcha'])?0:$this_setting['use_captcha']; ?>">
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2  control-label" for="text-input">分页数量</label>
                <div class="col-lg-10 col-md-10">
                    <input class="form-control" id="page_number" name="page_number" type="text" value="<?php echo empty($this_setting['page_number'])?'':$this_setting['page_number']; ?>">
                    <input type="hidden" id="last_page_number" value="<?php echo empty($this_setting['page_number'])?'':$this_setting['page_number']; ?>">
                    <span class="error-block" id="m_page_number"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2  control-label" for="text-input">登录密码错误次数</label>
                <div class="col-lg-10 col-md-10">
                    <input class="form-control" id="user_error_times" name="user_error_times" type="text" value="<?php echo empty($this_setting['user_error_times'])?'':$this_setting['user_error_times']; ?>">
                    <input type="hidden" id="last_user_error_times" value="<?php echo empty($this_setting['user_error_times'])?'':$this_setting['user_error_times']; ?>">
                    <span class="error-block" id="m_user_error_times"></span>
                </div>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h2>邮费设置</h2>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <label class="col-lg-2 col-md-2  control-label" for="text-input">免邮金额</label>
                <div class="col-lg-10 col-md-10">
                    <input class="form-control" id="shipping_free" name="shipping_free" type="text" value="<?php echo empty($this_setting['shipping_free'])?'':$this_setting['shipping_free']; ?>">
                    <input type="hidden" id="last_shipping_free" value="<?php echo empty($this_setting['shipping_free'])?'':$this_setting['shipping_free']; ?>">
                    <span class="error-block" id="m_shipping_free"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2  control-label" for="text-input">江浙沪邮费</label>
                <div class="col-lg-10 col-md-10">
                    <input class="form-control" id="shipping_jzh" name="shipping_jzh" type="text" value="<?php echo empty($this_setting['shipping_jzh'])?'':$this_setting['shipping_jzh']; ?>">
                    <input type="hidden" id="last_shipping_jzh" value="<?php echo empty($this_setting['shipping_jzh'])?'':$this_setting['shipping_jzh']; ?>">
                    <span class="error-block" id="m_shipping_jzh"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2  control-label" for="text-input">非江浙沪邮费</label>
                <div class="col-lg-10 col-md-10">
                    <input class="form-control" id="shipping_other" name="shipping_other" type="text" value="<?php echo empty($this_setting['shipping_other'])?'':$this_setting['shipping_other']; ?>">
                    <input type="hidden" id="last_shipping_other" value="<?php echo empty($this_setting['shipping_other'])?'':$this_setting['shipping_other']; ?>">
                    <span class="error-block" id="m_shipping_other"></span>
                </div>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <h2>API设置</h2>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <label class="col-lg-2 col-md-2  control-label" for="text-input">微信AppId</label>
                <div class="col-lg-10 col-md-10">
                    <input class="form-control" id="wx_app_id" name="wx_app_id" type="text" value="<?php echo empty($this_setting['wx_app_id'])?'':$this_setting['wx_app_id']; ?>">
                    <input type="hidden" id="last_shipping_free" value="<?php echo empty($this_setting['wx_app_id'])?'':$this_setting['wx_app_id']; ?>">
                    <span class="error-block" id="m_wx_app_id"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 col-md-2  control-label" for="text-input">微信AppSecret</label>
                <div class="col-lg-10 col-md-10">
                    <input class="form-control" id="wx_app_secret" name="wx_app_secret" type="text" value="<?php echo empty($this_setting['wx_app_secret'])?'':$this_setting['wx_app_secret']; ?>">
                    <input type="hidden" id="last_wx_app_secret" value="<?php echo empty($this_setting['wx_app_secret'])?'':$this_setting['wx_app_secret']; ?>">
                    <span class="error-block" id="m_wx_app_secret"></span>
                </div>
            </div>
        </div>
    </div>
</form>
<?php $this->load->view('setting/setting_js'); ?>
<?php $this->load->view('base/footer'); ?>