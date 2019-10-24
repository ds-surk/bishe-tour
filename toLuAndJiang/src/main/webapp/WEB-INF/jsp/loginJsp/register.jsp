<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
    <title>i旅行-注册页</title>
    <link rel="shortcuticon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" href="../css/reset.css">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/register.css"/>
</head>
<body>
<div class="travel-login">
     <header class="clearfix">
         <img src="../images/img/i-LOGO-02-01.png">
         <div class="login_toolbox">
			<a class="login_username" href="login">登陆</a>
			|
			<a class="login_kefu" href="#">客服中心</a>
		</div>
     </header>
     <!-- 主体部分开始 -->
     <section >
    	<aside class="i-register-left clearfix">
    		<div class="i-reg-top">
				<label>
					<input name="reg"  checked="checked" type="radio">手机注册
				</label> 
				<label>
					<input name="reg" type="radio">邮箱注册
				</label>
    		</div>
    		<div class="i-reg-bottom cur">
    			<form class="fromOne" action="doregister" method="post" onsubmit="alert(666);return submit11();">
					<div class="i_mobile">
						手机号  <input name="phone" type="text" placeholder="请输入手机号码" /><span></span>
					</div>
					<div class="i_pwd">
						登陆密码  <input name="password" type="password" placeholder="请输入密码" /><span></span>
					</div>
					
					<div class="i_check">
						验证码  <input class="yzm1" type="text" placeholder="请输入验证码" /><span id="chakeID1"></span>
						<div class="i_check_in"></div><i class="idCode">换一张</i>
					</div>
					<div class="i_lives">
						激活码  <input type="text" placeholder="请输入激活码" class="input1"/><span id="chakeID2"></span>
						<a class="otheridCode" >获取激活码</a><span class="active1"></span>
					</div>

					<div class="i-reg-check">
						<input id="i-reg-info" checked="checked" type="checkbox">
						<label for="i-reg-info">
						我已经阅读并同意遵守
						<a class="agreement" href="javascript:;">《i旅行用户服务协议》</a>
						</label>
					</div>
					<div class="i-reg-sub">
						<input class="submitOne" type="submit" value="同意协议并注册">
					</div>
    			</form>
    		</div>
    		<div class="i-reg-bottom">
    			<form class="fromTwo" action="doregister" method="post"  onsubmit="return submit11()">
					<div class="i_mobile i_mail">
						注册邮箱  <input name="email"  id="chekeEmail" type="text" 
						placeholder="请输入邮箱"/><sapn id="ffff" style="font-size:13px;margin-left:15px"></sapn>
						<span id="emailMessage" style="margin-left:10px "></span>
					</div>
					<div class="i_pwd">
						登陆密码  <input name="password" type="password" placeholder="请输入密码" /><span></span>
					</div>
					<div style="display:none">
						UID<input name="UID" type="text" id="uid"/>
					</div>
					<div class="i_check">
						验证码  <input class="yzm2" type="text" placeholder="请输入验证码"/><span id="chakeID3"></span>
						<div class="i_check_in"></div><i class="idCode">换一张</i>
					</div>
					<div class="i_lives">
						激活码  <input type="text" placeholder="请输入激活码" class="input2" name="input2"/><span id="chakeID4"></span>
						<a class="otheridCode" >获取激活码</a><span class="active2" style="display:none"></span>
					</div>

					<div class="i-reg-check">
						<input id="i-reg-info" checked="checked" type="checkbox">
						<label for="i-reg-info">
						我已经阅读并同意遵守
						<a class="agreement" href="javascript:;">《i旅行用户服务协议》</a>
						</label>
					</div>					
					<div class="i-reg-sub">
						<input class="submitTwo" type="submit" value="同意协议并注册">
					</div>
    			</form>
    		</div>

    	</aside>
    	<aside class="i-register-right"></aside>
     </section>
     <!-- 主体部分结束 -->

     <!-- footer开始 -->

     <footer>
         <div class="i-footer clearfix">
             <div class="i-footer-wrap">
                 <p>Copyright©1999-2016, ctrip.com. All rights reserved. | <a href="#">ICP证：沪B2</a></p>
                 <p><span class="i-footer-hui"></span>沪公网备310105020000xx号</p>
                 <p>旅游违法行为举报电话12318 丨服务质量投诉电话 962020 丨<a href="#">北京市旅游网站落实诚信建设主体责任承诺书</a></p>
                 <ul>
                     <li><a href="#"><img src="../images/icon/icon1126_11.jpg" height="32" width="88" alt=""></a></li>
                     <li><a href="#"><img src="../images/icon/icon1126_13.jpg" height="32" width="88" alt=""></a></li>
                     <li><a href="#"><img src="../images/icon/icon1126_15.jpg" height="32" width="88" alt=""></a></li>
                     <li><a href="#"><img src="../images/icon/icon1126_17.jpg" height="32" width="88" alt=""></a></li>
                     <li><a href="#"><img src="../images/icon/icon1126_19.jpg" height="32" width="88" alt=""></a></li>
                     <li><a href="#"><img src="../images/icon/icon1126_21.jpg" height="32" width="88" alt=""></a></li>
                     <li><a href="#"><img src="../images/icon/icon1126_23.jpg" height="32" width="88" alt=""></a></li>
                     <li><a href="#"><img src="../images/icon/icon1126_25.jpg" height="32" width="128" alt=""></a></li>
                     <li><a href="#"><img src="../images/icon/icon1126_27.jpg" height="32" width="102" alt=""></a></li>
                 </ul>
             </div>
         </div>
         <!-- footer结束 -->
     </footer>
 </div>
</body>
</html>
<script src="../lib/jquery-1.11.1.min.js"></script>
<script src="../lib/bootstrap/js/bootstrap.min.js"></script>
<script src="../js/common.js"></script>
<script src="../js/register.js"></script>

