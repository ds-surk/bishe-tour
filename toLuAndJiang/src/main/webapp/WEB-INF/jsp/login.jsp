<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
    <title>i 旅行-登陆</title>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="../css/reset.css">
    <link rel="stylesheet" href="../css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/index.css"/>
    <link rel="stylesheet" href="../lib/bootstrap/css/bootstrap-theme.css"/>
    <link rel="stylesheet" href="../lib/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../css/login.css"/>
    <script src="../lib/jquery-1.11.1.min.js"></script>
    <script src="../lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="../js/common.js"></script>
    <script src="../js/util.js"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="./lib/html5shiv.min.js"></script>
    <script src="./lib/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<%
Cookie[] cookies=request.getCookies();
String email="";
if(cookies!=null) {
	for(int i=0;i<cookies.length;i++) {
		if(cookies[i].getName().equals("email")) {
			email=cookies[i].getValue();					
		}				
	}	
}
%>
 <div class="travel-login">
    <header>
        <img src="../images/img/i-LOGO-02-01.png">
    </header>
    <section>
        <div class="left-phone">
            <img src="../images/img/left-phone.png">
        </div>
        <div class="right-message">
            使用<img src="../images/img/i-LOGO-02-01.png">客户端<br>
            手机扫描安全登陆
        </div>
        <div class="right-message gray">
            1. 打开手机i旅行客户端并登陆i旅行账号<br>
            2. 在i旅行登陆页点击右上角扫码安全登陆<br>
            3. 使用i旅行客户端左上角扫描功能完成登陆<br>
        </div>
    </section>
    <aside>
        <div class="login-header">
            <div>
                <span>会员登陆</span>&nbsp;&nbsp;&nbsp;<a href="register"> 立即注册</a>，享积分换礼、返现等专属优惠！
            </div>
            <span class="right-erweima "></span>
        </div>
        <div class="login-body">
            <div id="staticOption">
                <form class="form-horizontal" action="dologin" method="post" onsubmit="return toSubmit()">
                    <fieldset>
                        <div class="form-group col-sm-12 margin-bt-30 margin-left-89">
                            <div class="controls" id="selectShowType">
                                <!-- Inline Radios -->
                                <label class="radio inline col-sm-4 ">
                                    <input type="radio" class="ie-input-button margin-left-79 " value="1" name="group"
                                           checked="checked">
                                    普通登陆
                                </label>
                                <label class="radio inline col-sm-4">
                                    <input type="radio" class="ie-input-button" value="2" name="group">
                                    手机动态密码登陆
                                </label>
                            </div>
                        </div>
                        <div class="form-group margin-left-100">
                            <div class="input-group input-group-lg col-sm-9">
                                <span class="input-group-addon"><i class="icon-user"></i></span>
                                <input type="text" id="username" class="form-control ie-input" 
                                       name="email" placeholder="请输入注册手机/注册邮箱" value="<%=email%>">
                            </div>                            
                        </div>

                        <div class="form-group margin-left-100">
                            <div class="input-group input-group-lg col-sm-9">
                                <span class="input-group-addon"><i class="icon-lock"></i></span>
                                <input type="password" id="password" class="form-control ie-input"
                                 name="password" placeholder="请输入密码">
                            </div>                       
                        </div>
                        <span>${msg}</span>
                        <div id="actionPass" class="form-group  margin-left-100 " style="display: none;">
                            <div class="controls col-sm-9">
                                <button class="btn btn-warning form-control">获取验证码</button>
                            </div>
                        </div>
                        <div id="staticPass" class="form-group margin-left-89">
                            <div class="controls input-group-lg col-sm-4 ">
                                <input type="text" id="loginCode" class="form-control ie-input" placeholder="验证码"
                                       class="input-xlarge search-query">
                                <p class="help-block"></p>
                            </div>
                            <div class="controls  input-group-lg col-sm-5">
                                <!-- <img src=".././images/img/yanzhengma.png" width="165px"> -->
                                <div class="i_check_in" name="yzm2"></div>
                            </div>
                            <div class="controls  col-sm-3 margin-bt-b30">
                                <label class="idCode" style="margin-top:4px">换一张</label>
                            </div>
                        </div>
                        <div id="message"></div>
                        <div class="form-group margin-left-100 ">
                            <div class="controls  col-sm-5">
                                <label class="checkbox inline" id="cccc">
                                    <input type="checkbox" class="ie-input-button" value="30天内自动登陆">
                                    30天内自动登陆
                                </label>
                            </div>
                            <div class="controls  col-sm-4" style="margin-top:7px">
                              <a href="backPassword">忘记密码？</a>
                            </div>
                        </div>
                        <div class="form-group margin-left-100 " id="showErrorMessage" style="display: none;">
                            <div class="controls  col-sm-9">
                                <label class="checkbox inline show-message">
                                    <i class="icon-exclamation-sign"></i>&nbsp;&nbsp;
                                    <div id="promptMessage" style="display: inline-block;">请输入注册手机或邮箱</div>
                                </label>
                            </div>
                        </div>
                    </fieldset>
                    <button type="submit" class="btn btn-success" 
                    style="width:300px;background-color: #d9534f;margin-left: 20px;">登     录</button>
                </form>
               <!-- <button class="btn btn-danger " id="login">登陆</button> -->
            </div>
            <div id="actionOption"  style="display: none;">
                <!--<div class="phone-erweima"></div>-->
                <img src="../images/img/phone-erwema.png" class="phone-erweima">
                <img src="../images/img/richScan.png" class="phone-richScan" >
                <img src="../images/img/erweima_1126.jpg" style="width: 350px;">
            </div>
        </div>
        <div class="login-footer">
            <div class="footer-message">
                您也可以用合作网站的帐号登陆去i旅行网
            </div>
            <div class="footer-label">
                <a><img src="../images/img/icon-sina.png"> 新浪微博</a>
                <a><img src="../images/img/icon-QQ.png">QQ</a>
                <a><img src="../images/img/icon-Wechat.png">微信</a>
                <a><img src="../images/img/icon-Baidu.png">百度</a>
            </div>
        </div>

    </aside>
    <footer><!-- footer开始 -->
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

<script>
    var isIE = !!window.ActiveXObject;
    var isIE6 = isIE && !window.XMLHttpRequest;
    var isIE8 = isIE && !!document.documentMode;
    var isIE7 = isIE && !isIE6 && !isIE8;
    var style = "  <style> .ie-input{ height: 45px !important;  } " +
            ".ie-input-button{height: 23px !important;}</style>";
    if (isIE) {
        document.write(style);
    }
</script>
<script src="../js/login.js"></script>
</body>
</html>