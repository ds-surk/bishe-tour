<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
    <meta charset="UTF-8">
    <title>旅行首页</title>
    <link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/reset.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/common.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/lib/cityselect/cityselect.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/lib/bootstrap/css/bootstrap-theme.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/lib/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/index.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/travel.css"/>
    <script src="${pageContext.request.contextPath }/lib/jquery-2.1.4.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/lib/cityselect/cityselect.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/lib/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
<!-- 头部开始 -->
<div class="i-top clearfix">
    <div class="i-top-wrap">
        <div class="i-logo fl">
            <a href="#" title="i旅行">i旅行</a>
        </div>
        <div class="i-hotline fr">
            <ul>
                <li><a href="#">客服中心</a></li>
                <li>|</li>
                <li><a href="#">24小时热线：400-855-6666</a></li>
                <li class="i-top-phone">
                    <a href="#"><i class="icon-mobile-phone"></i></a>
                    <div class="i-top-app i-top-appL">
                        <img src="${pageContext.request.contextPath }/images/img/erweima_1126.jpg" height="102" width="102" alt="">
                        <p>手机扫码快速下载</p>
                        <p>App享受最多50% 优惠力度</p>
                    </div>
                </li>
                <li class="i-top-phone i-top-wei">
                    <a href="#"><i class="icon-comments"></i></a>
                    <div class="i-top-app i-top-app-wei">
                        <img src="${pageContext.request.contextPath }/images/img/erweima_1126.jpg" height="102" width="102" alt="">
                        <p>i旅行微信公众号: <a href="#">ilvxing</a></p>
                        <p>手机扫一扫，享受专属福利</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- 头部结束 -->

<!-- nav开始 -->
<div class="i-nav clearfix">
    <div class="i-nav-wrap">
        <ul>
            <li><a href="../index.html" class=""><i class="icon-home"></i>首页</a></li>
            <li><a href="../travel/index.html" class="current"><i class="icon-globe"></i>旅游</a></li>
            <li class="current"><a href="./index.html"><i class="icon-hospital"></i>酒店</a></li>
            <li><a href="../flyTicket.html"><i class="icon-plane"></i>机票</a></li>
            <!-- <li><a href="#"><i class="icon-credit-card"></i>门票</a></li> -->
            <li><a href="../strategy/index.html"><i class="icon-book"></i>攻略</a></li>
        </ul>
        <div class="i-nav-login">
            <a href="../login.html">登陆</a>
            <span>|</span>
            <a href="../register.html">注册</a>
        </div>
    </div>
</div>
