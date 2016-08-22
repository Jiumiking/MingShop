<blockquote>
    <p>登录密码</p>
    <footer>为保护账户安全，建议您定期<a href="<?php echo site_url('member/safe_password')?>">修改密码</a></footer>
</blockquote>

<blockquote>
    <p>手机验证</p>
    <footer><?php if(!empty($this_user['phone'])){ echo substr($this_user['phone'],0,3).'*****'.substr($this_user['phone'],-3); }else{ echo '您还没有绑定手机号，建议立即<a href="'.site_url('member/safe_password').'">绑定</a>'; } ?></footer>
</blockquote>

<blockquote>
    <p>邮箱验证</p>
    <footer><?php if(!empty($this_user['email'])){ echo substr($this_user['email'],0,1).'*****'.substr($this_user['email'],strpos($this_user['email'],'@')-1); }else{ echo '您还没有绑定邮箱，建议立即<a href="'.site_url('member/safe_email').'">绑定</a>'; } ?></footer>
</blockquote>

<script type="text/javascript">

</script>