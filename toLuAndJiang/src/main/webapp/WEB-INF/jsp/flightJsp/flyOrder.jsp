<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   	
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>机票列表页</title>
	<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cityselect.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/flyTicketList.css">
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
						<img src="${pageContext.request.contextPath}/images/img/erweima_1126.jpg" height="102" width="102" alt="">
						<p>手机扫码快速下载</p>
						<p>App享受最多50% 优惠力度</p>
					</div>
				</li>
				<li class="i-top-phone i-top-wei">
					<a href="#"><i class="icon-comments"></i></a>
					<div class="i-top-app i-top-app-wei">
						<img src="${pageContext.request.contextPath}/images/img/erweima_1126.jpg" height="102" width="102" alt="">
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
				<li><a href="${pageContext.request.contextPath}/index.html" ><i class="icon-home"></i>首页</a></li>
				<li><a href="${pageContext.request.contextPath}/travel/index.html"><i class="icon-globe"></i>旅游</a></li>
				<li><a href="${pageContext.request.contextPath}/tavern/index.html"><i class="icon-hospital"></i>酒店</a></li>
				<li class="current"><a href="ft"><i class="icon-plane"></i>机票</a></li>
				<!-- <li><a href="#"><i class="icon-credit-card"></i>门票</a></li> -->
				<li><a href="${pageContext.request.contextPath}/strategy/index.html"><i class="icon-book"></i>攻略</a></li>
			</ul>
			<div class="i-nav-login">
				<a href="${pageContext.request.contextPath}/login.html">登陆</a>
				<span>|</span>
				<a href="${pageContext.request.contextPath}/register.html">注册</a>
			</div>
		</div>
	</div>
<!-- nav结束 -->

<!-- 主体部分开始 -->
<div class="flylist-bd clearfix">
	<!-- from 开始 -->
	<form class="reSearchForm clearfix" id="form2" action="##" method="POST">
		<div class="flight-type">
			<div class="select_box">
                <span class="select_txt">单 程</span><i class="arr icon-angle-down"></i>
                <div class="option">
                    <a href="#">单 程</a>
                    <a href="#">往 返</a>
                    <a href="#">联 程</a>
                </div>
            </div>
			<div class="select_box select_pos">
                <span class="select_txt">舱位</span><i class="arr icon-angle-down"></i>
                <div class="option">
                    <a href="#">不 限</a>
                    <a href="#">经济舱</a>
                    <a href="#">商务舱</a>
                    <a href="#">头等舱</a>
                </div>
            </div>
		</div>
		
		<div class="flight_item">
			<span>从</span>
			<input class="cityone" placeholder="出发城市" type="text" id="citySelect_one">
			<i class="icon-map-marker"></i>
		</div>
		<div class="flight_item_change">
			<a class="ico_change" href="javascript:;"></a>
		</div>
		<div class="flight_item">
			<span>从</span>
			<input class="citytwo" placeholder="到达城市" type="text" id="citySelect_two">
			<i class="icon-map-marker"></i>
		</div>
		<div class="flight_item flight_clder">
			<span>出发</span>
			<input type="text" placeholder="2016-12-08" onfocus="WdatePicker({doubleCalendar:true,dateFmt:'yyyy-MM-dd',position:{left:-48,top:17}})">
			<i class="icon-calendar"></i>
		</div>
		<div class="flight_item flight_clder flight_cldertwo">
			<span>返回</span>
			<input type="text" placeholder="2016-12-20" onfocus="WdatePicker({doubleCalendar:true,dateFmt:'yyyy-MM-dd',position:{left:-130,top:17}})">
			<i class="icon-calendar"></i>
		</div>
		<div class="flight_submit">
			<button><i class="icon-search"></i></button><!-- 搜索 -->
		</div>
	</form>

	<!-- 吸顶开始 -->

	<form class="reSearchForm formpos clearfix">
		<div class="flight-type">
			<div class="select_box">
                <span class="select_txt">单 程</span><i class="arr icon-angle-down"></i>
                <div class="option">
                    <a href="#">单 程</a>
                    <a href="#">往 返</a>
                    <a href="#">联 程</a>
                </div>
            </div>
			<div class="select_box select_pos">
                <span class="select_txt">舱位</span><i class="arr icon-angle-down"></i>
                <div class="option">
                    <a href="#">不 限</a>
                    <a href="#">经济舱</a>
                    <a href="#">商务舱</a>
                    <a href="#">头等舱</a>
                </div>
            </div>
		</div>
		
		<div class="flight_item">
			<span>从</span>
			<input class="cityone" placeholder="出发城市" type="text" id="citySelect_three">
			<i class="icon-map-marker"></i>
		</div>
		<div class="flight_item_change">
			<a class="ico_change" href="javascript:;"></a>
		</div>
		<div class="flight_item">
			<span>从</span>
			<input class="citytwo" placeholder="到达城市" type="text" id="citySelect_four">
			<i class="icon-map-marker"></i>
		</div>
		<div class="flight_item flight_clder">
			<span>出发</span>
			<input type="text" placeholder="2016-12-08" onfocus="WdatePicker({doubleCalendar:true,dateFmt:'yyyy-MM-dd',position:{left:-48,top:17}})">
			<i class="icon-calendar"></i>
		</div>
		<div class="flight_item flight_clder flight_cldertwo">
			<span>返回</span>
			<input type="text" placeholder="2016-12-20" onfocus="WdatePicker({doubleCalendar:true,dateFmt:'yyyy-MM-dd',position:{left:-130,top:17}})">
			<i class="icon-calendar"></i>
		</div>
		<div class="flight_submit">
			<button><i class="icon-search"></i></button>
		</div>
	</form>
	<!-- 吸顶结束 -->
	<div class="searchHistory">
		<h3>历史查询：</h3>
		<p>
			单程 北京 - 上海 2016-10-25
		</p>
	</div>
	<!-- from 结束 -->
	
	<!-- 筛选部分开始 -->
	<div class="flight-left">
		<div class="flight-left-top">
			<h3>筛选</h3>
			<span>共60条航空信息</span>
			<i>清空全部</i>
		</div>
		<ul>
			<li>
				<i class="icon-time"></i><p>起飞时段</p><span class="arr-in icon-angle-right"></span>
				<ul class="flight-left-in">
					<li class="flight-left-infirst">
						<label>
							<input type="checkbox">上午(6-12点) 
							<span class="flight-left_price">
								<em>¥</em>400
							</span>
						</label>
					</li>
					<li>
						<label>
							<input type="checkbox">中午(12-18点) 
							<span class="flight-left_price">
								<em>¥</em>568
							</span>
						</label>
					</li>
					<li>
						<label>
							<input type="checkbox">晚上(18-24点) 
							<span class="flight-left_price">
								<em>¥</em>400
							</span>
						</label>
					</li>
				</ul>
			</li> 
			<li>
				<i class="icon-ok-sign"></i><p>航空公司</p><span class="arr-in icon-angle-right"></span>
				<ul class="flight-left-in">
					<li class="flight-left-infirst">
						<label>
							<input type="checkbox">东方航空 
							<span class="flight-left_price">
								<em>¥</em>400
							</span>
						</label>
					</li>
					<li>
						<label>
							<input type="checkbox">河北航空 
							<span class="flight-left_price">
								<em>¥</em>627
							</span>
						</label>
					</li>
					<li>
						<label>
							<input type="checkbox">海南航空 
							<span class="flight-left_price">
								<em>¥</em>760
							</span>
						</label>
					</li>
					<li>
						<label>
							<input type="checkbox">吉祥航空 
							<span class="flight-left_price">
								<em>¥</em>740
							</span>
						</label>
					</li>
					<li>
						<label>
							<input type="checkbox">南方航空 
							<span class="flight-left_price">
								<em>¥</em>760
							</span>
						</label>
					</li>
					<li>
						<label>
							<input type="checkbox">上海航空 
							<span class="flight-left_price">
								<em>¥</em>500
							</span>
						</label>
					</li>
				</ul>
			</li>
			<li>
				<i class="icon-bookmark-empty"></i><p>报销凭证</p><span class="arr-in icon-angle-right"></span>
				<ul class="flight-left-in">
					<li class="flight-left-infirst">
						<label>
							<input type="checkbox">行程单 
							<span class="flight-left_price">
								<em>¥</em>400
							</span>
						</label>
					</li>
					<li>
						<label>
							<input type="checkbox">发票 
							<span class="flight-left_price">
								<em>¥</em>495
							</span>
						</label>
					</li>
				</ul>
			</li>
			<li>
				<i class="icon-flag"></i><p>起飞机场</p><span class="arr-in icon-angle-right"></span>
				<ul class="flight-left-in">
					<li class="flight-left-infirst">
						<label>
							<input type="checkbox">首都 
							<span class="flight-left_price">
								<em>¥</em>400
							</span>
						</label>
					</li>
					<li>
						<label>
							<input type="checkbox">南苑 
							<span class="flight-left_price">
								<em>¥</em>595
							</span>
						</label>
					</li>
				</ul>
			</li>
			<li>
				<i class=" icon-coffee"></i><p>舱位</p><span class="arr-in icon-angle-right"></span>
				<ul class="flight-left-in">
					<li class="flight-left-infirst">
						<label>
							<input type="checkbox">经济舱 
							<span class="flight-left_price">
								<em>¥</em>400
							</span>
						</label>
					</li>
					<li>
						<label>
							<input type="checkbox">公务/头等舱 
							<span class="flight-left_price">
								<em>¥</em>695
							</span>
						</label>
					</li>
				</ul>
			</li>
			<li>
				<i class="icon-plane"></i><p>计划机型</p><span class="arr-in icon-angle-right"></span>
				<ul class="flight-left-in">
					<li class="flight-left-infirst">
						<label>
							<input type="checkbox">中型机
							<span class="flight-left_price">
								<em>¥</em>495
							</span>
						</label>
					</li>
					<li>
						<label>
							<input type="checkbox">大型机 
							<span class="flight-left_price">
								<em>¥</em>695
							</span>
						</label>
					</li>
				</ul>
			</li>
		</ul>
	
	</div>
	<!-- 筛选部分结束 -->

	<!-- 列表部分开始 -->
	<div class="flight-right">
	
		<div class="flight-right-con">
			

			<div class="sort-line clearfix">
				<ul>
					<li class="sort-info">航班信息</li>
					<li class="sort-start">出发时间</li>
					<li class="sort-time">到达时间</li>
					<li class="sort-stage">准点率</li>
					<li class="sort-price">最低价格</li>
				</ul>
			</div> 

			<div class="sort-list">
				<ul>
					
					<c:forEach items="${specialTicketsList}" var="sptList" varStatus="status">
					<li>
						<div class="sort-list-detail">
							<span class="sort-info-list">
								<h4>中国南方航空</h4>
								<p>${sptList.flightnumber} ${sptList.airtype}</p>
							</span>
							<span class="sort-start-list">
								<p>${sptList.chufatime}</p>
								<p>${sptList.chufacompany}</p>
							</span>
							<span class="sort-longarr">
								<i>${sptList.totaltime}</i>
								<i></i>
							</span>
							<span class="sort-start-list sort-time-list">
								<p>${sptList.daodatime}</p>
								<p>${sptList.daodacompany}</p>
							</span>
							<span class="sort-stage-list">
								<em>准点率</em><em>${sptList.zhundian}%</em>
							</span>
							<span class="sort-price-list">
								<i>￥</i>
								<i>${sptList.price}</i>
								<i>起</i>
							</span>
							<button class="sort-btnsubmit"><span>订票</span><i class="icon-angle-down"></i></button>
						</div>
						<div class="sort-list-detail-in">
							<div class="sort-detail-wrap">
								<div class="detail-wrap clearfix">
									<div class="detail-wrap-info">
										行程单 <span>|</span> <i>退改￥362起</i>
									</div>
									<div class="detail-wrap-sale">
										<span>6.2折</span>
									</div>
									<div class="detail-wrap-price">
										<span>￥</span><i>760</i>
									</div>
									<button>选定</button>
								</div>

								<div class="detail-wrap">
									<div class="detail-wrap-info">
										行程单 <span>|</span> <i>退改￥362起</i>
									</div>
									<div class="detail-wrap-sale">
										<span>5.6折</span>
									</div>
									<div class="detail-wrap-price">
										<span>￥</span><i>625</i>
									</div>
									<button>选定</button>
								</div>
								
								<div class="detail-wrap detail-wrap-fullprice">
									<div class="detail-wrap-info">
										行程单 <span>|</span> <i><a href="#">免费</a>改期</i>
									</div>
									<div class="detail-wrap-sale">
										<span>9.3折</span>
									</div>
									<div class="detail-wrap-price">
										<span>￥</span><i>769</i>
									</div>
									<button>选定</button>
								</div>

								<div class="detail-wrap detail-wrap-fullprice detail-wrap-online">
									<div class="detail-wrap-info">
										行程单 <span>|</span> <i><a href="#">免费</a>改期</i>
									</div>
									<div class="detail-wrap-sale">
										<span>全价</span>
									</div>
									<div class="detail-wrap-price">
										<span>￥</span><i>956</i>
									</div>
									<button>选定</button>
								</div>

							</div>

						</div>
					</li>
					</c:forEach>
					

				</ul>
			</div>

		</div>

		<!-- 分页 -->
	<div class="i_pagewrap clearfix">
		<div class="i_pages">
			<a href="javascript:;" class="i_prepage">上一页</a>
			<a href="#" class="i_current i_num">1</a>
			<a href="#" class="i_num">2</a>
			<a href="#" class="i_num">3</a>
			<a href="#" class="i_num">4</a>
			<a href="#" class="i_num">5</a>
			<a href="#" class="i_num">6</a>
			<a href="#" class="i_num">7</a>
			<a href="#" class="i_num">8</a>
			<span class="i_morepage">...</span>
			<a href="#" class="i_num">25</a>
			<a href="javascript:;" class="i_nextpage">下一页></a>
			<div class="i_skippage">
				<span>到</span>
				<input type="text">
				<span>页</span>
			</div>
			<a href="#" class="i_ensure">确定</a>		
		</div>

	<!-- 声明 -->
	 <div class="i_statement">
		<h3>航班信息免责声明:</h3>
		<p>i旅行网 提供的各类航班相关的信息，包括但不限于舱位价格、餐食、起降准点率等，来源于中国航信、全国各大机场、航空公司及相关部门公布数据。由于这些信息可能随时变化，以及网络传输问题，携程提供的此类信息可能并非最新或存在误差，因此仅供旅客作为一般参考，任何公司或个人不能将此作为i旅行做出任何承诺或做出任何保证的依据。</p>
		 <div class="i_shengming_pic">
			<img src="${pageContext.request.contextPath}/images/icon/i_shengming_pic_03.png" height="33" width="59" alt="">
			<p class="i_sm_wf">
				<span>数据信息由</span><br>
				<span>中国民航信息网络股份有限公司提供</span>
			</p>
		</div>
		</div>
	</div>  
   
</div>

	</div>
	<!-- 列表部分结束 -->

	


<!-- 主体部分结束 -->

<!-- 贴心的服务开始 -->
<div class="i_download">
	<div class="i_area clearfix">
		<div class="i_downleft">
			<h2>下载<i></i>手机客户端</h2>
			<p>
				特价机票、一折酒店、出行安全保障、预约担保<br/>
				最佳旅行路线、吃喝玩乐享在手

			</p>
			<a href="#">立刻下载</a>
		</div>
		<div class="i_downright">
			<div class='i_wechat'>
				<img src="${pageContext.request.contextPath}/images/icon/i_wechat_11.jpg" alt="">
				<span>微信公众平台</span>
			</div>
			<div class="i_APP">
				<img src="${pageContext.request.contextPath}/images/icon/i_APP_11.jpg" alt="">
				<span>APP下载</span>
			</div>
		</div>
	</div>
</div>
<div class="i_service clearfix">
	<div class="i_area">
		<ul>
			<li>
				<h3>贴心的服务</h3>
				<p>业内领先服务标准 用户保障服务</p>
			</li>
			<li>
				<h3>优质的价格</h3>
				<p>极具竞争力的价格 无任何隐形消费</p>
			</li>
			<li>
				<h3>4008-xxx-6666</h3>
				<p>24小时客服热线 无时不刻在您身边</p>
			</li>
			
		</ul>

		<dl>
			<dt>旅游资讯</dt>
			<dd>
				<a href="#">宾馆索引</a>
				<a href="#">攻略索引</a>
			</dd>
			<dd>
				<a href="#">机票索引</a>
				<a href="#">网站导航</a>
			</dd>
			<dd>
				<a href="#">机票索引</a>
				<a href="#">网站导航</a>
			</dd>
			<dd>
				<a href="#">机票索引</a>
				<a href="#">网站导航</a>
			</dd>
			<dd>
				<a href="#">企业差旅索引</a>
				
			</dd>
		</dl>

		<dl>
			<dt>加盟合作</dt>
			<dd>
				<a href="#">宾馆索引</a>
				<a href="#">攻略索引</a>
			</dd>
			<dd>
				<a href="#">机票索引</a>
				<a href="#">网站导航</a>
			</dd>
			<dd>
				<a href="#">机票索引</a>
				<a href="#">网站导航</a>
			</dd>
			<dd>
				<a href="#">机票索引</a>
				<a href="#">网站导航</a>
			</dd>
			<dd>
				<a href="#">企业差旅索引</a>
				
			</dd>
		</dl>

		<dl>
			<dt>关于我们</dt>
			<dd>
				<a href="#">宾馆索引</a>
				<a href="#">攻略索引</a>
			</dd>
			<dd>
				<a href="#">机票索引</a>
				<a href="#">网站导航</a>
			</dd>
			<dd>
				<a href="#">机票索引</a>
				<a href="#">网站导航</a>
			</dd>
			<dd>
				<a href="#">机票索引</a>
				<a href="#">网站导航</a>
			</dd>
			<dd>
				<a href="#">企业差旅索引</a>
				
			</dd>
		</dl>
	</div>
</div>
<!-- 贴心的服务结束 -->

<!-- footer开始 -->
<div class="i-footer clearfix">
	<div class="i-footer-wrap">
		<p>Copyright©1999-2016, ctrip.com. All rights reserved. | <a href="#">ICP证：沪B2</a></p>
		<p><span class="i-footer-hui"></span>沪公网备310105020000xx号</p>
		<p>旅游违法行为举报电话12318 丨服务质量投诉电话 962020 丨<a href="#">北京市旅游网站落实诚信建设主体责任承诺书</a></p>
		<ul>
			<li><a href="#"><img src="${pageContext.request.contextPath}/images/icon/icon1126_11.jpg" height="32" width="88" alt=""></a></li>
			<li><a href="#"><img src="${pageContext.request.contextPath}/images/icon/icon1126_13.jpg" height="32" width="88" alt=""></a></li>
			<li><a href="#"><img src="${pageContext.request.contextPath}/images/icon/icon1126_15.jpg" height="32" width="88" alt=""></a></li>
			<li><a href="#"><img src="${pageContext.request.contextPath}/images/icon/icon1126_17.jpg" height="32" width="88" alt=""></a></li>
			<li><a href="#"><img src="${pageContext.request.contextPath}/images/icon/icon1126_19.jpg" height="32" width="88" alt=""></a></li>
			<li><a href="#"><img src="${pageContext.request.contextPath}/images/icon/icon1126_21.jpg" height="32" width="88" alt=""></a></li>
			<li><a href="#"><img src="${pageContext.request.contextPath}/images/icon/icon1126_23.jpg" height="32" width="88" alt=""></a></li>
			<li><a href="#"><img src="${pageContext.request.contextPath}/images/icon/icon1126_25.jpg" height="32" width="128" alt=""></a></li>
			<li><a href="#"><img src="${pageContext.request.contextPath}/images/icon/icon1126_27.jpg" height="32" width="102" alt=""></a></li>
		</ul>
	</div>
</div>
<!-- footer结束 -->

</body>
</html>

<script src="${pageContext.request.contextPath}/lib/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/cityselect.js"></script>
<script src="${pageContext.request.contextPath}/lib/My97DatePicker/WdatePicker.js"></script>

<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script src="${pageContext.request.contextPath}/js/flyTicketList.js"></script>
