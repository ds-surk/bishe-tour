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
         <div class="login_toolbox" >
			<a class="login_username" href="login">登陆</a>
			|
			<a class="login_kefu" href="#">客服中心</a>
		</div>
     </header>
     <!-- 主体部分开始 -->
      <section >
    	<aside class="i-register-left clearfix">
    		
    		<div class="i-reg-bottom cur">
    			<form class="fromOne" action="modifyPassword" method="post" 
    			enctype="application/x-www-form-urlencoded" onsubmit="return yyyy()">
					<div class="i_pwd"  style="display:none">
						邮箱号<input name="email" type="text" class="email" value="${user.getEmail()}"/> 
					</div>
					<div class="i_pwd">
						旧密码  <input name="oldpassword" type="password" class="oldpassword" placeholder="请输入旧密码" />
						<span style="margin-bottom: 20px;color:red">${msg}</span> 
					</div>
					<div class="i_pwd">
						新密码  <input name="newpassword" type="password" class="newpasswordone" placeholder="请输入新密码" />
						<span></span>
					</div>
					<div class="i_pwd"style="margin-left: -36px">
						确认新密码  <input name="confirmnewpassword" type="password" class="newpasswordtwo"  placeholder="请确认新密码"/><span></span> 
					</div>
					
					<div class="i-reg-sub">
					<input type="submit" value="确认修改" />				
					</div>					
    			</form>
    		</div>    		
    	</asid >
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
<script src="../js/newpassword.js"></script>


