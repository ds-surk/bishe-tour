<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   	
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>机票</title>
	<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cityselect.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/flyTicket.css">
	
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

<!-- i-banner开始 -->
<div class="banner clearfix">
	<!-- 全屏轮播部分开始 -->
	<ul class="banner_list">
        <li class="act banner-li1"><a href="#"></a></li>
        <li class="banner-li2"><a href="#"></a></li>
        <li class="banner-li3"><a href="#"></a></li>
        <li class="banner-li4"><a href="#"></a></li>
    </ul>
 	
   <!-- 全屏轮播部分结束 -->
   <!-- i-tab切换 -->
	<div class="i_area">
	<ol class="lb" >
    	<li class="li_1 cur"></li>
        <li></li>
        <li></li>
        <li></li>
   	 </ol>
	   <div class="i_tab">
	   		<ul class="i_tab_l ">
	   			<li class="travel clearfix">
	   				<a href="javascript:;">旅游</a>
	   				<div class="i_tab_r">
	   					<div class="i_box">
	   						<div class="i_title">
	   							<a href="javascript:;" class="line">特卖汇</a>
	   							<a href="javascript:;">出境旅游</a>
	   							<a href="javascript:;">国内旅游</a>
	   						</div>
	   						<!--1-->
	   						<div class="discount i_show">
	   							<form action="">
	   								<div class="i_destin">目的地  <input type="text" id="citySelect_one" placeholder="三亚" /></div>
	   								<div class="i_live">
	   									入住时间  <input  class="Wdate" type="text" placeholder="2016.12待定"  onfocus="WdatePicker({doubleCalendar:true,dateFmt:'yyyy-MM-dd'})"/>
	   									退房时间  <input type="text" class="Wdate" onfocus="WdatePicker({doubleCalendar:true,dateFmt:'yyyy-MM-dd'})"/>
	   								</div>
	   								<div class="i_rank">
	   								酒店级别  <select name="" id="">
		   									 	<option selected="selected" value="0">不限</option>
												<option value="5">五星级/豪华</option>
												<option value="4">四星级/高档</option>
												<option value="3">三星级/舒适</option>
												<option value="2">二星级以下/经济</option>
	   								     </select>
	   								</div>
	   								<div class="keyword">
	   									关键词 <input type="text" placeholder="海岛" />
	   									<div class="i_key">
		   									<a href="">温泉</a>、<a href="">亲子</a>、<a href="">自由行</a>、<a href="">名胜古迹</a>、<a href="">都市购物</a>
	   									</div>
	   									
	   								</div>
	   								<button class="i_btn">搜索行程 ></button>
	   							</form>
	   						</div>
	   						<!--2-->
	   						<div class="discount">
	   							<form action="">
	   								<div class="i_destin">目的地  <input type="text" id="citySelect_two" placeholder="三亚" /></div>
	   								<div class="i_live">
	   									入住时间  <input type="text" placeholder="2016.12待定" class="Wdate" onfocus="WdatePicker({doubleCalendar:true,dateFmt:'yyyy-MM-dd'})"/>
	   									退房时间  <input type="text" class="Wdate" onfocus="WdatePicker({doubleCalendar:true,dateFmt:'yyyy-MM-dd'})"/>
	   								</div>
	   								<div class="i_rank">
	   								酒店级别  <select name="" id="">
	   									 	<option selected="selected">不限</option>
											<option>五星级/豪华</option>
											<option>四星级/高档</option>
											<option>三星级/舒适</option>
											<option>二星级以下/经济</option>
	   								     </select>
	   								</div>
	   								<div class="keyword">
	   									关键词 <input type="text" placeholder="海岛" />
	   									<div class="i_key">
		   									<a href="#">泰国</a>、<a href="#">马尔代夫</a>、<a href="#">夏威夷</a>、<a href="#">美国</a>、<a href="#">东南亚</a>
										</div>
	   								</div>
	   								<button class="i_btn">搜索行程 ></button>
	   							</form>
	   						</div>
	   						<!--3-->
	   						<div class="discount">
	   							<form action="">
	   								<div class="i_destin">目的地  <input type="text" id="citySelect_three" placeholder="三亚" /></div>
	   								<div class="i_live">
	   									入住时间  <input type="text" placeholder="2016.12待定" class="Wdate" onfocus="WdatePicker({doubleCalendar:true,dateFmt:'yyyy-MM-dd'})"/>
	   									退房时间  <input type="text" class="Wdate" onfocus="WdatePicker({doubleCalendar:true,dateFmt:'yyyy-MM-dd'})"/>
	   								</div>
	   								<div class="i_rank">
	   								酒店级别  <select name="" id="">
	   									 	<option selected="selected">不限</option>
											<option>五星级/豪华</option>
											<option>四星级/高档</option>
											<option>三星级/舒适</option>
											<option>二星级以下/经济</option>
	   								     </select>
	   								</div>
	   								<div class="keyword">
	   									关键词 <input type="text" placeholder="海岛" />
	   									<div class="i_key">
		   									<a href="#">三亚</a>、<a href="#">厦门</a>、<a href="#">山东</a>、<a href="#">桂林</a>、<a href="#">东北</a>
	   									</div>
	   								</div>
	   								<button class="i_btn">搜索行程 ></button>
	   							</form>
	   						</div>
	   					</div>	
	   				</div>
	   			</li>
	   			<li class="hotel clearfix">
	   				<a href="javascript:;">酒店</a>
	   				<div class="i_tab_r">
	   					<div class="i_box">
	   						<div class="i_title">
	   							<a href="javascript:;" class="line">国内酒店</a>
	   							<a href="javascript:;">海外酒店</a>
	   							<a href="javascript:;">酒店团购</a>
	   						</div>
	   						<!--1-->
	   						<div class="discount i_show">
	   							<form action="">
	   								<div class="i_destin">目的地  <input type="text" id="citySelect_four" placeholder="三亚" /></div>
	   								<div class="i_live">
	   									入住时间  <input type="text" placeholder="2016.12待定" class="Wdate" onfocus="WdatePicker({doubleCalendar:true,dateFmt:'yyyy-MM-dd'})"/>
	   									退房时间  <input type="text" class="Wdate" onfocus="WdatePicker({doubleCalendar:true,dateFmt:'yyyy-MM-dd'})"/>
	   								</div>
	   								<div class="i_rank">
	   								酒店级别  <select name="" id="">
	   										<option selected="selected">不限</option>
											<option>五星级/豪华</option>
											<option>四星级/高档</option>
											<option>三星级/舒适</option>
											<option>二星级以下/经济</option>
	   								     </select>
	   								</div>
	   								<div class="keyword">
	   									关键词 <input type="text" placeholder="海岛" />
	   									<div class="i_key">
		   									<a href="">温泉</a>、<a href="">亲子</a>、<a href="">自由行</a>、<a href="">名胜古迹</a>、<a href="">都市购物</a>
	   									</div>
	   									
	   								</div>
	   								<button class="i_btn">搜索行程 ></button>
	   							</form>
	   						</div>
	   						<!--2-->
	   						<div class="discount">
	   							<form action="">
	   								<div class="i_destin">目的地  <input type="text" id="citySelect_five" placeholder="三亚" /></div>
	   								<div class="i_live">
	   									入住时间  <input type="text" placeholder="2016.12待定" />
	   									退房时间  <input type="text" />
	   								</div>
	   								<div class="i_rank">
	   								每间住客数  <select name="" id="">
	   									 	<option value="1"> 1成人 </option>
											<option value="2" selected="selected"> 2成人 </option>
											<option value="3"> 3成人 </option>
											<option value="4"> 4成人 </option>
											<option value="5"> 5成人 </option>
											<option value="6"> 6成人 </option>
											<option value="7"> 7成人 </option>
											<option value="8"> 8成人 </option>
	   								     </select>
	   								</div>
	   								<div class="keyword">
	   									关键词 <input type="text" placeholder="海岛" /> 
	   								</div>
	   								<button class="i_btn i_btn_hai">搜索行程 ></button>
	   							</form>
	   						</div>
	   						<!--3-->
	   						<div class="discount">
	   							<form action="">
	   								<div class="i-city">
	   									<p>
	   										<span>热门城市：</span>
	   										<a href="#">上海</a>
	   										<a href="#">广州</a>
	   										<a href="#">深圳</a>
	   										<a href="#">北京</a>
	   										<a href="#">成都</a>
	   										<a href="#">杭州</a>
	   										<a href="#">苏州</a>
	   										<a href="#">青岛</a>
	   									</p>
	   									<p>
	   										<span>热门团购：</span>
	   										<a href="#">度假公寓</a>
	   										<a href="#">别墅轰趴</a>
	   										<a href="#">住店游玩</a>
	   										<a href="#">情侣酒店</a>
	   										<a href="#">火车票专享</a>
	   									</p>
	   								</div>
	   								<div class="keyword">
	   									关键词 <input type="text" placeholder="(选填)商圈/景区/酒店品牌/酒店名称/关键字" />
	   								</div>
	   								<div class="keyword">
	   									目的地 <input type="text" />
	   								</div>
	   								<button class="i_btn">搜索行程 ></button>
	   							</form>
	   						</div>
	   					</div>
	   				</div>
	   			</li>
	   			<li class="cur show fly clearfix">
	   				<a href="javascript:;">机票</a>
	   					   				<div class="i_tab_r">
	   					<div class="i_box">
	   						<div class="i_title">
	   							<a href="javascript:;" class="line">国内机票</a>
	   							<a href="javascript:;">国际机票</a>
	   							<a href="javascript:;">发现低价</a>
	   						</div>
	   						<!--1-->
	   						<div class="discount i_show">
	   							<form action="">
	   								<div class="i_destin i_hang">航程类型
		   								<label>
											<input name="flightway"  checked="checked" type="radio">单程
										</label> 
										<label>
											<input name="flightway" type="radio">往返
										</label>
										<label>
											<input name="flightway" type="radio">多程
										</label>
		   							</div>
	   								<div class="i_live">
	   								出发城市  <input type="text" placeholder="北京" />第一程日期  <input type="text" placeholder="yy-mm-dd" class="Wdate" onfocus="WdatePicker({doubleCalendar:true,dateFmt:'yyyy-MM-dd'})"/>
	   								</div>
	   								<div class="i_rank i_live">
	   								中转城市  <input type="text" placeholder="上海" />第二程日期  <input type="text" placeholder="yy-mm-dd" class="Wdate" onfocus="WdatePicker({doubleCalendar:true,dateFmt:'yyyy-MM-dd'})"/>
	   								</div>
	   								<div class="keyword i-fly-keyword">
	   									到达城市 <input type="text" placeholder="广州" />
	   									<div class="i_key">
		   									<a href="">温泉</a>、<a href="">亲子</a>、<a href="">自由行</a>、<a href="">名胜古迹</a>、<a href="">都市购物</a>
	   									</div>
	   									
	   								</div>
	   								<button class="i_btn">搜索行程 ></button>
	   							</form>
	   						</div>
	   						<!--2-->
	   						<div class="discount">
	   							<form action="">
	   								<div class="i_destin i_hang">航程类型
		   								<label>
											<input name="flightway"  checked="checked" type="radio">单程
										</label> 
										<label>
											<input name="flightway" type="radio">往返
										</label>
										<label>
											<input name="flightway" type="radio">多程
										</label>
		   							</div>
	   								<div class="i_live">
	   									入住时间  <input type="text" placeholder="2016.12待定" class="Wdate" onfocus="WdatePicker({doubleCalendar:true,dateFmt:'yyyy-MM-dd'})"/>
	   									退房时间  <input type="text"  class="Wdate" onfocus="WdatePicker({doubleCalendar:true,dateFmt:'yyyy-MM-dd'})"/>
	   								</div>
	   								<div class="i_rank">
	   								每间住客数  <select name="" id="">
	   									 	<option value="1"> 1成人 </option>
											<option value="2" selected="selected"> 2成人 </option>
											<option value="3"> 3成人 </option>
											<option value="4"> 4成人 </option>
											<option value="5"> 5成人 </option>
											<option value="6"> 6成人 </option>
											<option value="7"> 7成人 </option>
											<option value="8"> 8成人 </option>
	   								     </select>
	   								</div>
	   								<div class="keyword">
	   									关键词 <input type="text" placeholder="海岛" /> 
	   								</div>
	   								<button class="i_btn i_btn_hai">搜索行程 ></button>
	   							</form>
	   						</div>
	   						<!--3-->
	   						<div class="discount">
	   							<form action="">
	   								<div class="i-city">
	   									<p>
	   										<span>热门城市：</span>
	   										<a href="#">上海</a>
	   										<a href="#">广州</a>
	   										<a href="#">深圳</a>
	   										<a href="#">北京</a>
	   										<a href="#">成都</a>
	   										<a href="#">杭州</a>
	   										<a href="#">苏州</a>
	   										<a href="#">青岛</a>
	   									</p>
	   									<p>
	   										<span>热门团购：</span>
	   										<a href="#">度假公寓</a>
	   										<a href="#">别墅轰趴</a>
	   										<a href="#">住店游玩</a>
	   										<a href="#">情侣酒店</a>
	   										<a href="#">火车票专享</a>
	   									</p>
	   								</div>
	   								<div class="keyword">
	   									关键词 <input type="text" placeholder="(选填)商圈/景区/酒店品牌/酒店名称/关键字" />
	   								</div>
	   								<div class="keyword">
	   									目的地 <input type="text" />
	   								</div>
	   								<button class="i_btn">搜索行程 ></button>
	   							</form>
	   						</div>
	   					</div>
	   				</div>
	   			</li>
	   			<li class="ticket clearfix">
	   				<a href="javascript:;">门票</a>
	   					<div class="i_tab_r">
	   						<div class="discount i-ticket">
	   							<form action="">
	   								<div class="i-city">
	   									<p>
	   										<span>热门城市：</span>
	   										<a href="#">上海</a>
	   										<a href="#">广州</a>
	   										<a href="#">深圳</a>
	   										<a href=	"#">北京</a>
	   										<a href="#">成都</a>
	   										<a href="#">杭州</a>
	   										<a href="#">苏州</a>
	   										<a href="#">青岛</a>
	   									</p>
	   									<p>
	   										<span>热门活动: </span>
	   										<a href="#">门票特权日</a>
	   										<a href="#">早秋赏景</a>
	   										<a href="#">国庆提前订</a>
	   										<a href="#">旅行WiFi</a>
	   										<a href="#">日本旅行卡</a>
	   									</p>
	   									<p>
	   										<span>热门团购：</span>
	   										<a href="#">度假公寓</a>
	   										<a href="#">别墅轰趴</a>
	   										<a href="#">住店游玩</a>
	   										<a href="#">情侣酒店</a>
	   										<a href="#">火车票专享</a>
	   									</p>
	   									<p>
	   										<span>热门推荐: </span>
	   										<a href="#">东方盐湖城</a>
	   										<a href="#">长隆海洋王国</a>
	   										<a href="#">圆明园</a>
	   										<a href="#">印象武隆</a>
	   									</p>
	   								</div>
	   								<div class="keyword">
	   									关键词 <input type="text" placeholder="(选填)商圈/景区/酒店品牌/酒店名称/关键字" />
	   								</div>
	   								<div class="keyword">
	   									目的地 <input type="text" id="citySelect_six" />
	   								</div>
	   								<button class="i_btn">搜索行程 ></button>
	   							</form>
	   					</div>	
	   				</div>
	   			</li>
	   			<li class="idea clearfix">
	   				<a href="javascript:;">攻略</a>
	   				<div class="i_tab_r">
	   					<div class="i_box">
	   						<div class="i_title">
	   							<a href="javascript:;" class="line">热门游记</a>
	   							<a href="javascript:;">精华游记</a>
	   							<a href="javascript:;">行程计划</a>
	   						</div>
	   						<!--1-->
	   						<div class="discount i_show">
	   							<form action="">
	   								<div class="i-city i-idea">
	   									<p>
	   										<span>热门城市：</span>
	   										<a href="#">上海</a>
	   										<a href="#">广州</a>
	   										<a href="#">深圳</a>
	   										<a href="#">北京</a>
	   										<a href="#">成都</a>
	   										<a href="#">杭州</a>
	   										<a href="#">苏州</a>
	   										<a href="#">青岛</a>
	   									</p>
	   									<p>
	   										<span>热门活动: </span>
	   										<a href="#">门票特权日</a>
	   										<a href="#">早秋赏景</a>
	   										<a href="#">国庆提前订</a>
	   										<a href="#">旅行WiFi</a>
	   										<a href="#">日本旅行卡</a>
	   									</p>
	   									<p>
	   										<span>热门团购：</span>
	   										<a href="#">度假公寓</a>
	   										<a href="#">别墅轰趴</a>
	   										<a href="#">住店游玩</a>
	   										<a href="#">情侣酒店</a>
	   										<a href="#">火车票专享</a>
	   									</p>
	   									<p>
	   										<span>热门推荐: </span>
	   										<a href="#">东方盐湖城</a>
	   										<a href="#">长隆海洋王国</a>
	   										<a href="#">圆明园</a>
	   										<a href="#">印象武隆</a>
	   									</p>
	   								</div>
	   								<div class="keyword">
	   									关键词 <input type="text" placeholder="(选填)商圈/景区/酒店品牌/酒店名称/关键字" />
	   								</div>
	   								<div class="keyword">
	   									目的地 <input type="text" id="citySelect_six" />
	   								</div>
	   								<button class="i_btn">搜索行程 ></button>
	   							</form>
	   					</div>
	   						<!--2-->
	   						<div class="discount">
	   							<form action="">
	   								<div class="i_destin">目的地  <input type="text" id="citySelect_five" placeholder="三亚" /></div>
	   								<div class="i_live">
	   									入住时间  <input type="text" placeholder="2016.12待定" class="Wdate" onfocus="WdatePicker({doubleCalendar:true,dateFmt:'yyyy-MM-dd'})"/>
	   									退房时间  <input type="text" class="Wdate" onfocus="WdatePicker({doubleCalendar:true,dateFmt:'yyyy-MM-dd'})"/>
	   								</div>
	   								<div class="i_rank">
	   								每间住客数  <select name="" id="">
	   									 	<option value="1"> 1成人 </option>
											<option value="2" selected="selected"> 2成人 </option>
											<option value="3"> 3成人 </option>
											<option value="4"> 4成人 </option>
											<option value="5"> 5成人 </option>
											<option value="6"> 6成人 </option>
											<option value="7"> 7成人 </option>
											<option value="8"> 8成人 </option>
	   								     </select>
	   								</div>
	   								<div class="keyword">
	   									关键词 <input type="text" placeholder="海岛" /> 
	   								</div>
	   								<button class="i_btn i_btn_hai">搜索行程 ></button>
	   							</form>
	   						</div>
	   						<!--3-->
	   						<div class="discount">
	   							<form action="">
	   								<div class="i-city">
	   									<p>
	   										<span>热门城市：</span>
	   										<a href="#">上海</a>
	   										<a href="#">广州</a>
	   										<a href="#">深圳</a>
	   										<a href="#">北京</a>
	   										<a href="#">成都</a>
	   										<a href="#">杭州</a>
	   										<a href="#">苏州</a>
	   										<a href="#">青岛</a>
	   									</p>
	   									<p>
	   										<span>热门团购：</span>
	   										<a href="#">度假公寓</a>
	   										<a href="#">别墅轰趴</a>
	   										<a href="#">住店游玩</a>
	   										<a href="#">情侣酒店</a>
	   										<a href="#">火车票专享</a>
	   									</p>
	   								</div>
	   								<div class="keyword">
	   									关键词 <input type="text" placeholder="(选填)商圈/景区/酒店品牌/酒店名称/关键字" />
	   								</div>
	   								<div class="keyword">
	   									目的地 <input type="text" />
	   								</div>
	   								<button class="i_btn">搜索行程 ></button>
	   							</form>
	   						</div>
	   					</div>
	   				</div>
	   			</li>
	   		</ul>
	   </div>
   </div>
</div>
<!-- i-banner结束 -->	

<!-- 机票折线图开始 -->
<section class="clearfix">
	<div class="i-brokenline">
		<i></i>
		<div class="i-brokenline-wrap">
			<h3>机票价格趋势查询</h3>
			<span></span>
		</div>
		<div class="i-brokenlinesearch">
			<form action="ftList" method="post">
				城市 <input type="text" id="citySelect_lineone" placeholder="出发城市" >-<input type="text" id="citySelect_linetwo" placeholder="达到城市">
				<input type="submit" value="搜索" /><!-- 搜索</button> -->
			</form>
		</div>
	</div>
	<div class="flodline" id="flodline">
		<!-- <div id="line" style="width:822px;height:492px;"></div> -->
	</div>
</section>
<!-- 机票折线图结束 -->


<!-- 航空公司促销开始 -->
<section class="clearfix">
	<div class="i-brokenline i-fly-sale">
		<i></i>
		<div class="i-brokenline-wrap">
			<h3>航空公司促销</h3>
			<span></span>
		</div>
		<a class="i-fly-salemore">更多促销信息 ></a>
	</div>
	<ul class="i-fly-salepro">
		<li>
			<a href="ftList"><img src="${pageContext.request.contextPath}/images/img/flyTicket_xxx1202_10.jpg" height="174" width="281" alt=""></a>
		</li>
		<li>
			<a href="ftList"><img src="${pageContext.request.contextPath}/images/img/ftyj01_0315_03.jpg" height="174" width="281" alt=""></a>
		</li>
		<li>
			<a href="ftList"><img src="${pageContext.request.contextPath}/images/img/ftyj01_0315_05.jpg" height="174" width="281" alt=""></a>
		</li>
		<li class="flylastli">
			<a href="ftList"><img src="${pageContext.request.contextPath}/images/img/ftyj01_0315_07.jpg" height="174" width="281" alt=""></a>
		</li>
	</ul>
	
</section>
<!-- 航空公司促销结束 -->


<!-- 特价机票汇总开始 -->
<section class="clearfix">
	<div class="i-brokenline i-fly-sale-sum">
		<i></i>
		<div class="i-brokenline-wrap">
			<h3>特价机票汇总</h3>
			<span></span>
		</div>

		<div class="i-brokenline-wrap-right">
			<div class="i-fly-sum-des">
			<form action="" method="post">
				  <select name="queryFlatformId" id="queryFlatformId" class="form-control">
				  <c:if test="${flatFormList != null }">
							<option selected="selected">--请选择--</option>
							<c:forEach var="orderStatesList" items="${flatFormList}">
									   		<option <c:if test="${orderStatesList.valueid == queryFlatformId }">selected="selected"</c:if>
									   		value="${orderStatesList.valueid}">${orderStatesList.statetype}</option>
									   </c:forEach>
							</c:if>
					     </select>	
					     <td><button type="submit" class="btn btn-primary" id="btn1"> 查 &nbsp;&nbsp;询 </button></td>	
					     <!-- <td><input type="text" name="begincity" placeholder="出发城市"/><br/></td> -->
					     
					     </form>	
			</div>
			<div class="i-fly-sum-month">
				  <select name="" id="">
							<option selected="selected">全部月份</option>
							<option>12月</option>
							<option>1月</option>
							<option>2月</option>
							<option>3月</option>
							<option>4月</option>
							<option>5月</option>
					     </select>			
			</div>
			<div class="i-fly-sum-hot">
				<a href="#">热门</a>
				<a href="#">国内特价机票</a>
				<a href="#">国外特价机票</a>
				<a href="#">亚洲</a>
				<a href="#">欧洲</a>
				<a href="#">美洲</a>
				<a href="#">非洲</a>
			</div>
			<a class="i-fly-salemore">更多特价机票 ></a>
		</div>

		
	</div>
	<!-- 特价机票 -->
	<div class="i-fly-sale-detail clearfix" id="spList">
		<ul>
		<c:forEach items="${specialTicketsList}" var="sptList" varStatus="status">
			<li>
				<a href="ftList" id="menu5">
				<c:choose>
				<c:when test = "${sptList.companyid == 5}">
					<span class="city">${sptList.begincity}<i></i>${sptList.destination}</span>
					<span class="sale">${sptList.discount}折</span>
					
					<span class="price">${sptList.price}元</span>
					
					</c:when>
					</c:choose>
				</a>
				<a href="ftList" id="menu1">
				<c:choose>
				<c:when test = "${sptList.companyid == 1}">
					<span class="city">${sptList.begincity}<i></i>${sptList.destination}</span>
					<span class="sale">${sptList.discount}折</span>
					
					<span class="price">${sptList.price}元</span>
					
					</c:when>
					</c:choose>
				</a>
				<a href="ftList" id="menu2">
				<c:choose>
				<c:when test = "${sptList.companyid == 2}">
					<span class="city">${sptList.begincity}<i></i>${sptList.destination}</span>
					<span class="sale">${sptList.discount}折</span>
					
					<span class="price">${sptList.price}元</span>
					
					</c:when>
					</c:choose>
				</a>
				<a href="ftList" id="menu3">
				<c:choose>
				<c:when test = "${sptList.companyid == 3}">
					<span class="city">${sptList.begincity}<i></i>${sptList.destination}</span>
					<span class="sale">${sptList.discount}折</span>
					
					<span class="price">${sptList.price}元</span>
					
					</c:when>
					</c:choose>
				</a>
				<a href="ftList" id="menu4">
				<c:choose>
				<c:when test = "${sptList.companyid == 4}">
					<span class="city">${sptList.begincity}<i></i>${sptList.destination}</span>
					<span class="sale">${sptList.discount}折</span>
					
					<span class="price">${sptList.price}元</span>
					
					</c:when>
					</c:choose>
				</a>
					<%-- <span class="data">${sptList.begintime}</span> --%>
					<%-- <span class="price">${sptList.price}元</span> --%>
			</li>
		</c:forEach>
		</ul>
	</div>
	
</section>
<!-- 特价机票汇总结束 -->



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
<script src="${pageContext.request.contextPath}/lib/echarts.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/My97DatePicker/WdatePicker.js"></script>

<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script src="${pageContext.request.contextPath}/js/flyTicket.js"></script>
<script src="${pageContext.request.contextPath}/js/flightJs/flySelect.js"></script>




