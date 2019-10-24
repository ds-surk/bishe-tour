<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>i 旅行 首页</title>
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" type="image/x-icon" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/star-rating/star-rating.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/cityselect.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">



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
							<img src="../images/img/erweima_1126.jpg" height="102" width="102" alt="">
							<p>手机扫码快速下载</p>
							<p>App享受最多50% 优惠力度</p>
						</div>
					</li>
					<li class="i-top-phone i-top-wei">
						<a href="#"><i class="icon-comments"></i></a>
						<div class="i-top-app i-top-app-wei">
							<img src="../images/img/erweima_1126.jpg" height="102" width="102" alt="">
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
				<li class="current"><a href="index.html" ><i class="icon-home"></i>首页</a></li>
				<li><a href="travel/index.html"><i class="icon-globe"></i>旅游</a></li>
				<li><a href="tavern/index.html"><i class="icon-hospital"></i>酒店</a></li>
				<li><a href="flyTicket.html"><i class="icon-plane"></i>机票</a></li>
				<!-- <li><a href="#"><i class="icon-credit-card"></i>门票</a></li> -->
				<li><a href="strategy/index.html"><i class="icon-book"></i>攻略</a></li>
			</ul>
			<div class="i-nav-login">
			    <a href="#" style="margin-right:60px">${user.UName},欢迎登陆爱旅行网站！！！</a> 
				<a href="login">注销</a>				
				<span>|</span>
				<a href="newPassword">修改密码</a>
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
	   			<li class="cur show travel clearfix">
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
	   			<li class="fly clearfix">
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
			
<!-- 特卖汇开始 -->
<div class="i-sale clearfix">
	<ul>
		<li class="i-line sale-show i-sale-wrapone">
			<a href="javascript:;">特卖汇</a>
			<div class="i-sale-one">
				<div class="i-sale-top clearfix">
					<a class="i-sale-cur" href="javascript:;">精选</a>
					<a href="javascript:;">周边当地游</a>
					<a href="javascript:;">当地玩乐</a>
					<a class="i-sale-more" href="#">更多优惠特卖 ></a>
				</div>
				<!-- 1 -->
				<div class="sale-con i_show">
					<ul class="i-sale-con clearfix">
						<li>
							<a href="travel/travel_message.html"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.有机会品尝哈根达斯冰激凌</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="travel/travel_message.html"> 
								<img src="../images/img/sale02_1212.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>巴厘岛7日5晚自由行</h3>
									<p>【秒杀】五星豪庭，三星价格1月特惠。初冬的期盼，暖流的感动。</p>
								</div>
							</a>
						</li>
						<li>
							<a href="travel/travel_message.html"> 
								<img src="../images/img/sale03_1212.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>韩国首尔5日4晚跟团游</h3>
									<p>【好评如潮】寒假预售商圈五花，2整天自由，赠送乐天世界门票，八色烤肉</p>
								</div>
							</a>
						</li>
						<li>
							<a href="travel/travel_message.html"> 
								<img src="../images/img/sale04_1212.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>马尔代夫6日自由行·6日4晚</h3>
									<p>往返含税机票，全球顶级海岛蜜月婚纱圣地</p>
								</div>
							</a>
						</li>
						<li>
							<a href="travel/travel_message.html"> 
								<img src="../images/img/sale05_1212.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>香港5日自由行·仅含往返机票</h3>
									<p>星光大道+天星小轮+太平山顶+维多利亚港领略动感之都的魅力</p>
								</div>
							</a>
						</li>
						<li>
							<a href="travel/travel_message.html"> 
								<img src="../images/img/sale06_1212.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>新加坡5日4晚自由行</h3>
									<p>新加坡5日4晚自由行【错峰周末游】赠送价值800元机场往返专车接送，1晚金沙奢华体验，独享360°无边泳池，一场视觉饕餮盛宴。</p>
								</div>
							</a>
						</li>
					</ul>
					<div class="i-sale-tg">
						<a href="#"><img src="../images/img/sale-t1129.jpg" alt=""></a>
					</div>
				</div>

				<!-- 2 -->

				<div class="sale-con">
					<ul class="i-sale-con clearfix">
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>222台湾环岛8日7晚跟团游.团游团游团游甩尾特甩尾特甩尾特</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.团游团游团游甩尾特甩尾特甩尾特</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.团游团游团游甩尾特甩尾特甩尾特</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.团游团游团游甩尾特甩尾特甩尾特</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
					</ul>
					<div class="i-sale-tg">
						<a href="#"><img src="../images/img/sale-t1129.jpg" alt=""></a>
					</div>
				</div>

				<!-- 3 -->

				<div class="sale-con">
					<ul class="i-sale-con clearfix">
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>333台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
					</ul>
					<div class="i-sale-tg">
						<a href="#"><img src="../images/img/sale-t1129.jpg" alt=""></a>
					</div>
				</div>

			</div>
		</li>
		<li class="i-sale-wraptwo">
		 <a href="javascript:;">出境旅游</a>
			<div class="i-sale-one">
				<div class="i-sale-top clearfix">
					<a class="i-sale-cur" href="javascript:;">精选</a>
					<a href="javascript:;">周边当地游</a>
					<a class="i-sale-more" href="#">更多优惠特卖 ></a>
				</div>
				<!-- 1 -->
				<div class="sale-con i_show">
					<ul class="i-sale-con clearfix">
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>77台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
					</ul>
					<div class="i-sale-tg">
						<a href="#"><img src="../images/img/sale-t1129.jpg" alt=""></a>
					</div>
				</div>

				<!-- 2 -->

				<div class="sale-con">
					<ul class="i-sale-con clearfix">
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>66台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
					</ul>
					<div class="i-sale-tg">
						<a href="#"><img src="../images/img/sale-t1129.jpg" alt=""></a>
					</div>
				</div>

			</div>
		</li>
		<li class="i-sale-wrapthree">
		<a href="javascript:;">国内旅游</a>
			<div class="i-sale-one">
				<div class="i-sale-top clearfix">
					<a class="i-sale-cur" href="javascript:;">精选</a>
					<a href="javascript:;">当地玩乐</a>
					<a class="i-sale-more" href="#">更多优惠特卖 ></a>
				</div>
				<!-- 1 -->
				<div class="sale-con i_show">
					<ul class="i-sale-con clearfix">
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>44台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
					</ul>
					<div class="i-sale-tg">
						<a href="#"><img src="../images/img/sale-t1129.jpg" alt=""></a>
					</div>
				</div>

				<!-- 2 -->

				<div class="sale-con">
					<ul class="i-sale-con clearfix">
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>55台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
		全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
					</ul>
					<div class="i-sale-tg">
						<a href="#"><img src="../images/img/sale-t1129.jpg" alt=""></a>
					</div>
				</div>

			</div>
		</li>
	</ul>
</div>
<!-- 特卖汇结束 -->

<!-- 酒店开始 -->
<div class="i-sale i-hotel clearfix">
	<ul>
		<li class="i-line sale-show i-sale-wrapone">
			<a href="javascript:;">海外酒店</a>
			<div class="i-sale-one">
				<div class="i-sale-top clearfix">
					<a class="i-sale-cur" href="javascript:;">热门城市</a>
					<a href="javascript:;">上海</a>
					<a href="javascript:;">深圳</a>
				</div>
				<!-- 1 -->
				<div class="sale-con i_show">
					<ul class="i-sale-con clearfix">
						<li>
							<a href="hotelDetail.html"> 
								<img class="lazy" src="../images/icon/lazyload279-173.gif" data-original="images/img/hotel279174_01_xxx1213.jpg" height="174" width="279" alt="">
									<h4>【巴黎】卢浮宫凯悦酒店(Hotel Du Louvre, a Hyatt Hotel Paris)</h4>
									<span class="i-price">
										<em>¥</em>2908 <i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 689</span>
							</a>
						</li>
						<li>
							<a href="hotelDetail.html"> 
								<img class="lazy" src="../images/icon/lazyload279-173.gif" data-original="../images/img/hotel279174_02_xxx1213.jpg" height="174" width="279" alt="">
									<h4>【东京】威斯汀酒店(The Westin Tokyo)</h4>
									<span class="i-price">
										<em>¥</em>2105<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 536</span>
							</a>
						</li>
						<li>
							<a href="hotelDetail.html"> 
								<img class="lazy" src="../images/icon/lazyload279-173.gif" data-original="../images/img/hotel279174_03_xxx1213.jpg" height="174" width="279" alt="">
									<h4>【吉隆坡】千禧大酒店(Grand Millennium Kuala Lumpur)</h4>
									<span class="i-price">
										<em>¥</em>459<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 255</span>
							</a>
						</li>
						<li>
							<a href="hotelDetail.html"> 
								<img class="lazy" src="../images/icon/lazyload279-173.gif" data-original="../images/img/hotel279174_04_xxx1213.jpg" height="174" width="279" alt="">
									<h4>【曼谷】索菲特曼谷素坤逸酒店(Sofitel Bangkok Sukhumvit)</h4>
									<span class="i-price">
										<em>¥</em>1213<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 632</span>
							</a>
						</li>
						<li>
							<a href="hotelDetail.html"> 
								<img class="lazy" src="../images/icon/lazyload279-173.gif" data-original="../images/img/hotel279174_05_xxx1213.jpg" height="174" width="279" alt="">
									<h4>【首尔】东大门天空花园帝宫店(Hotel Skypark Kingstown dongdaemun Seoul)</h4>
									<span class="i-price">
										<em>¥</em>889<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 365</span>
							</a>
						</li>
						<li>
							<a href="hotelDetail.html"> 
								<img class="lazy" src="../images/icon/lazyload279-173.gif" data-original="../images/img/hotel279174_06_xxx1213.jpg" height="174" width="279" alt="">
									<h4>【新加坡】文华东方酒店(Mandarin Oriental Singapore)</h4>
									<span class="i-price">
										<em>¥</em>1025<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 269</span>
							</a>
						</li>
					</ul>
					<div class="i-sale-tg">
						<a href="#"><img class="lazy" src="../images/icon/lazyload278-518.gif" data-original="../images/img/jiudian_t_278518_xxx1130.jpg" height="518" width="278" alt=""></a>
					</div>
				</div>

				<!-- 2 -->

				<div class="sale-con">
					<ul class="i-sale-con clearfix">
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
					</ul>
					<div class="i-sale-tg">
						<a href="#"><img src="../images/img/sale-t1129.jpg" alt=""></a>
					</div>
				</div>

				<!-- 3 -->

				<div class="sale-con">
					<ul class="i-sale-con clearfix">
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>333台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
					</ul>
					<div class="i-sale-tg">
						<a href="#"><img src="../images/img/sale-t1129.jpg" alt=""></a>
					</div>
				</div>
			</div>
		</li>
		<li class="i-sale-wraptwo">
		 <a href="javascript:;">热门城市酒店</a>
			<div class="i-sale-one">
				<div class="i-sale-top clearfix">
					<a class="i-sale-cur" href="javascript:;">精选</a>
					<a href="javascript:;">周边当地游</a>
				</div>
				<!-- 1 -->
				<div class="sale-con i_show">
					<ul class="i-sale-con clearfix">
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>22【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
					</ul>
					<div class="i-sale-tg">
						<a href="#"><img src="../images/img/sale-t1129.jpg" alt=""></a>
					</div>
				</div>

			<!-- 	2 -->

				<div class="sale-con">
					<ul class="i-sale-con clearfix">
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>66台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
					</ul>
					<div class="i-sale-tg">
						<a href="#"><img src="../images/img/sale-t1129.jpg" alt=""></a>
					</div>
				</div>

			</div>
		</li>
		<li class="i-sale-wrapthree">
			<a href="javascript:;">当季热门目的地</a>
			<div class="i-sale-one">
				<div class="i-sale-top clearfix">
					<a class="i-sale-cur" href="javascript:;">精选</a>
					<a href="javascript:;">当地玩乐</a>
				</div>
				<!-- 1 -->
				<div class="sale-con i_show">
					<ul class="i-sale-con clearfix">
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>33【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
					</ul>
					<div class="i-sale-tg">
						<a href="#"><img src="../images/img/sale-t1129.jpg" alt=""></a>
					</div>
				</div>

				<!-- 2 -->

				<div class="sale-con">
					<ul class="i-sale-con clearfix">
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>55台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
					</ul>
					<div class="i-sale-tg">
						<a href="#"><img src="../images/img/sale-t1129.jpg" alt=""></a>
					</div>
				</div>

			</div>
		</li>

		<li class="i-sale-wrapfour">
			<a href="javascript:;">特色酒店推荐</a>
			<div class="i-sale-one">
				<div class="i-sale-top clearfix">
					<a class="i-sale-cur" href="javascript:;">精选</a>
					<a href="javascript:;">当地玩乐</a>
				</div>
				<!-- 1 -->
				<div class="sale-con i_show">
					<ul class="i-sale-con clearfix">
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>44【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/jiudian279174_xxx1130.jpg" height="174" width="279" alt="">
									<h4>【北京】四季青元海景酒店</h4>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
									<span class="item-count">已售 2666</span>
							</a>
						</li>
					</ul>
					<div class="i-sale-tg">
						<a href="#"><img src="../images/img/sale-t1129.jpg" alt=""></a>
					</div>
				</div>

				<!-- 2 -->

				<div class="sale-con">
					<ul class="i-sale-con clearfix">
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>55台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/sale1129.jpg" height="255" width="279" alt="">
								<div class="i-sale-p">
									<h3>台湾环岛8日7晚跟团游.甩尾特...</h3>
									<p>五星航空台湾环岛8日+3晚五花酒店+温泉酒店+特色酒店+苏花火车
			全球五星级航空公司【港龙、国泰】专业承载，更有机会品尝哈根达斯冰激凌！</p>
								</div>
							</a>
						</li>
					</ul>
					<div class="i-sale-tg">
						<a href="#"><img src="../images/img/sale-t1129.jpg" alt=""></a>
					</div>
				</div>

			</div>
		</li>
	</ul>

	<div class="i-sale-hotel">
		<a class="i-sale-more" href="#">更多酒店 ></a>
	</div>
	
</div>
<!-- 酒店结束 -->

<!-- 酒店下方推广广告开始 -->
<div class="i-push clearfix">
	<div class="i-push-left"><a href="#"><img class="lazy" src="../images/icon/lazyload281-171.gif" data-original="../images/img/jd_bottom_xxx1130_11.jpg" height="171" width="281" alt=""></a></div>
	<div class="i-push-right"><a href="#"><img class="lazy" src="../images/icon/lazyload856-171.gif" data-original="../images/img/jd_bottom_xxx1130.jpg" height="171" width="856" alt=""></a></div>
</div>
<!-- 酒店下方推广广告结束 -->

<!-- 机票开始 -->
<div class="i-sale i-ticket i-ticketF clearfix">
	<ul>    
		<li class="i-line sale-show i-sale-wrapone">
			<a href="javascript:;">国际特价机票</a>
			<div class="i-sale-one">
				<div class="i-sale-top clearfix">
					<a class="i-sale-cur" href="javascript:;">北京</a>
					<a href="javascript:;">上海</a>
					<a href="javascript:;">深圳</a>
				</div>				
				<!-- 1 -->
				<div class="sale-con i_show">
					<ul class="i-sale-con clearfix">
						<li>
							<a href="flyTicketList.html"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="flyTicketList.html"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>新加坡</p>
								<p class="item-time">
								  12月23日 - 12月26日
								</p>
								<p class="item-num">
								   仅剩 562 席
								</p>
									<span class="i-price">
										<em>¥</em>562<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="flyTicketList.html"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>莫斯科</p>
								<p class="item-time">
								  1月04日 - 1月09日
								</p>
								<p class="item-num">
								   仅剩 231 席
								</p>
									<span class="i-price">
										<em>¥</em>1027<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li class="ticket-clr">
							<a href="flyTicketList.html"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>罗马</p>
								<p class="item-time">
								  12月29日 - 1月05日
								</p>
								<p class="item-num">
								   仅剩 120 席
								</p>
									<span class="i-price">
										<em>¥</em>653<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="flyTicketList.html"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>圣彼得堡</p>
								<p class="item-time">
								  1月02日 - 1月08日
								</p>
								<p class="item-num">
								   仅剩 89 席
								</p>
									<span class="i-price">
										<em>¥</em>369<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="flyTicketList.html"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>法兰克福</p>
								<p class="item-time">
								  12月28日 - 1月06日
								</p>
								<p class="item-num">
								   仅剩 79 席
								</p>
									<span class="i-price">
										<em>¥</em>609<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="flyTicketList.html"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>济州岛</p>
								<p class="item-time">
								  12月16日 - 12月23日
								</p>
								<p class="item-num">
								   仅剩 201 席
								</p>
									<span class="i-price">
										<em>¥</em>800<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li class="ticket-clr">
							<a href="flyTicketList.html"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>普吉岛</p>
								<p class="item-time">
								  1月04日 - 1月11日
								</p>
								<p class="item-num">
								   仅剩 306 席
								</p>
									<span class="i-price">
										<em>¥</em>929<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="flyTicketList.html"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>旧金山</p>
								<p class="item-time">
								  1月11日 - 1月15日
								</p>
								<p class="item-num">
								   仅剩 392 席
								</p>
									<span class="i-price">
										<em>¥</em>867<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="flyTicketList.html"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>芝加哥</p>
								<p class="item-time">
								  1月20日 - 1月27日
								</p>
								<p class="item-num">
								   仅剩 216 席
								</p>
									<span class="i-price">
										<em>¥</em>689<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="flyTicketList.html"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>多伦多</p>
								<p class="item-time">
								  12月25日 - 1月06日
								</p>
								<p class="item-num">
								   仅剩 119 席
								</p>
									<span class="i-price">
										<em>¥</em>1153<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li class="ticket-clr">
							<a href="flyTicketList.html"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>开罗</p>
								<p class="item-time">
								  12月15日 - 12月18日
								</p>
								<p class="item-num">
								   仅剩 203 席
								</p>
									<span class="i-price">
										<em>¥</em>1598<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
					</ul>
					<div class="i-sale-tg">
						<a href="#"><img class="lazy" src="../images/icon/lazyload278-518.gif" data-original="../images/img/ticket278518-xxx1201.jpg" height="518" width="278" alt=""></a>
					</div>
				</div>

				<!-- 2 -->
				<div class="sale-con">
					<ul class="i-sale-con clearfix">
						<li>
							<a href="#"> 
								<p class="item-pos">2北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li class="ticket-clr">
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li class="ticket-clr">
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li class="ticket-clr">
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
					</ul>
					<div class="i-sale-tg">
						<a href="#"><img src="../images/img/ticket278518-xxx1201.jpg" height="518" width="278" alt=""></a>
					</div>
				</div>

				<!-- 3 -->
				<div class="sale-con">
					<ul class="i-sale-con clearfix">
						<li>
							<a href="#"> 
								<p class="item-pos">3北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li class="ticket-clr">
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li class="ticket-clr">
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li class="ticket-clr">
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
					</ul>
					<div class="i-sale-tg">
						<a href="#"><img src="../images/img/ticket278518-xxx1201.jpg" height="518" width="278" alt=""></a>
					</div>
				</div>
			</div>
		</li>
		<li class="i-sale-wraptwo">
		 <a href="javascript:;">国内特价机票</a>
			<div class="i-sale-one">
				<div class="i-sale-top clearfix">
					<a class="i-sale-cur" href="javascript:;">精选</a>
					<a href="javascript:;">周边当地游</a>
				</div>
				<!-- 1 -->
				<div class="sale-con i_show">
					<ul class="i-sale-con clearfix">
						<li>
							<a href="#"> 
								<p class="item-pos">1北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li class="ticket-clr">
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li class="ticket-clr">
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li class="ticket-clr">
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
					</ul>
					<div class="i-sale-tg">
						<a href="#"><img src="../images/img/ticket278518-xxx1201.jpg" height="518" width="278" alt=""></a>
					</div>
				</div>

				<!-- 2 -->
				<div class="sale-con">
					<ul class="i-sale-con clearfix">
						<li>
							<a href="#"> 
								<p class="item-pos">2北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li class="ticket-clr">
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li class="ticket-clr">
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li>
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
						<li class="ticket-clr">
							<a href="#"> 
								<p class="item-pos">北京<span class="ticket-arr"></span>纽约</p>
								<p class="item-time">
								  12月05日 - 12月12日
								</p>
								<p class="item-num">
								   仅剩 264 席
								</p>
									<span class="i-price">
										<em>¥</em>885<i class="i-price-info">起</i>
									</span>
							</a>
						</li>
					</ul>
					<div class="i-sale-tg">
						<a href="#"><img src="../images/img/ticket278518-xxx1201.jpg" height="518" width="278" alt=""></a>
					</div>
				</div>

			</div>
		</li>
	</ul>

	<div class="i-sale-hotel">
		<a class="i-sale-more" href="#">更多特价机票 ></a>
	</div>
	
</div>
<!-- 机票结束 -->

<!-- 攻略开始 -->
<div class="i-sale i-idea i-ideaF clearfix">
	<ul>        
		<li class="i-line sale-show">
			<a href="javascript:;">旅游攻略</a>
			<div class="i-sale-one">
				<!-- 1 -->
				<div class="sale-con i_show">

					<div class="i-idea-left">
						<dl class="i-idea-keyword">
							<dt>热门城市</dt>
							<dd><a href="#">西藏</a></dd>
							<dd><a href="#">云南</a></dd>
							<dd><a href="#">四川</a></dd>
							<dd><a href="#">海南</a></dd>
							<dd><a href="#">江苏</a></dd>
							<dd><a href="#">浙江</a></dd>
							<dd><a href="#">新疆</a></dd>
							<dd><a href="#">陕西</a></dd>
							<dd><a href="#">山西</a></dd>
							<dd><a href="#">广西</a></dd>
							<dd><a href="#">宁夏</a></dd>
							<dd><a href="#">河南</a></dd>
							<dd><a href="#">湖北</a></dd>
							<dd><a href="#">湖南</a></dd>
							<dd><a href="#">青海</a></dd>
							<dd><a href="#">贵州</a></dd>
							<dd><a href="#">内蒙古</a></dd>
							<dd><a href="#">安徽</a></dd>
							<dd><a href="#">山东</a></dd>
							<dd><a href="#">广东</a></dd>
							<dd><a href="#">江西</a></dd>
							<dd><a href="#">河北</a></dd>
							<dd><a href="#">甘肃</a></dd>
							<dd><a href="#">福建</a></dd>
							<dd><a href="#">辽宁</a></dd>
							<dd><a href="#">黑龙江</a></dd>

						</dl>

						<dl class="i-idea-keyword i-idea-keywordtwo">
							<dt>热门景点</dt>
							<dd><a href="#">丽江</a></dd>
							<dd><a href="#">马尔代夫</a></dd>
							<dd><a href="#">三亚</a></dd>
							<dd><a href="#">九寨沟</a></dd>
							<dd><a href="#">普陀山</a></dd>
							<dd><a href="#">少林寺</a></dd>
							<dd><a href="#">乌镇</a></dd>
							<dd><a href="#">鼓浪屿</a></dd>
							<dd><a href="#">九华山</a></dd>
							<dd><a href="#">五台山</a></dd>
							<dd><a href="#">凤凰古城</a></dd>
							<dd><a href="#">迪拜</a></dd>
							<dd><a href="#">灵山大佛</a></dd>
							<dd><a href="#">世纪欢乐园</a></dd>
							<dd><a href="#">大同悬空寺</a></dd>
							<dd><a href="#">西湖</a></dd>
							<dd><a href="#">周庄</a></dd>
							<dd><a href="#">爱琴海</a></dd>

						</dl>
					</div>
					<ul class="i-sale-con clearfix">
						<li>
							<div class="i-idea-tj">
								<span></span>
								<a href="travel/travel_message.html"> 
								<img class="lazy" src="../images/icon/lazyload279-173.gif" data-original="../images/img/lygl01_0314.jpg" height="173" width="279" alt=""></a>
							</div>
							<h4>稻城亚丁</h4><input id="input-21f" value="3" class="rating" min=0 max=5 step=0.5 data-size="xs" >
							<span class="item-count">1032人去过  987人想去</span>
						</li>
						<li>
							<div class="i-idea-tj">
							 	<span></span>
							 	<a href="travel/travel_message.html"> 
									<img class="lazy" src="../images/icon/lazyload279-173.gif" data-original="../images/img/lygl02_0314.jpg" height="173" width="279" alt="">
								</a>
							</div>
							<h4>九寨沟</h4><input id="input-21f" value="2" class="rating" min=0 max=5 step=0.5 data-size="xs" >
							<span class="item-count">562人去过  876想去</span>		
						</li>
						<li>
							<div class="i-idea-tj">
								<span></span>
								<a href="travel/travel_message.html"> 
									<img class="lazy" src="../images/icon/lazyload279-173.gif" data-original="../images/img/lygl03_0314.jpg" height="173" width="279" alt="">
								</a>
							</div>
							<h4>青海湖</h4><input id="input-21f" value="1" class="rating" min=0 max=5 step=0.5 data-size="xs" >
							<span class="item-count">721人去过  560人想去</span>
						</li>
						<li>
							<div class="i-idea-tj">
								<span></span>
								<a href="travel/travel_message.html"> 
									<img class="lazy" src="../images/icon/lazyload279-173.gif" data-original="../images/img/lygl04_0314.jpg" height="173" width="279" alt="">
								</a>
							</div>
							<h4>乌镇</h4><input id="input-21f" value="2" class="rating" min=0 max=5 step=0.5 data-size="xs" >
							<span class="item-count">902人去过  683人想去</span>
						</li>
						<li>
						<div class="i-idea-tj">
							<span></span>
							<a href="travel/travel_message.html"> 
								<img class="lazy" src="../images/icon/lazyload279-173.gif" data-original="../images/img/lygl05_0314.jpg" height="173" width="279" alt="">
							</a>
						</div>
						<h4>婺源</h4><input id="input-21f" value="5" class="rating" min=0 max=5 step=0.5 data-size="xs" >
							<span class="item-count">896人去过  596人想去</span>	
						</li>
						<li>
						<div class="i-idea-tj">
							<span></span>
							<a href="travel/travel_message.html"> 
								<img class="lazy" src="../images/icon/lazyload279-173.gif" data-original="../images/img/lygl06_0314.jpg" height="173" width="279" alt="">
							</a>
						</div>
							<h4>香格里拉</h4><input id="input-21f" value="1" class="rating" min=0 max=5 step=0.5 data-size="xs" >
							<span class="item-count">632人去过  803人想去</span>
						</li>
					</ul>
					
				</div>				
			</div>
		</li>
		<li>
			<a href="javascript:;">旅游攻略</a>
			<div class="i-sale-one">
				<!-- 1 -->
				<div class="sale-con i_show">

					<div class="i-idea-left">
						<dl class="i-idea-keyword">
							<dt>11热门城市</dt>
							<dd><a href="#">西藏</a></dd>
							<dd><a href="#">云南</a></dd>
							<dd><a href="#">四川</a></dd>
							<dd><a href="#">海南</a></dd>
							<dd><a href="#">江苏</a></dd>
							<dd><a href="#">浙江</a></dd>
							<dd><a href="#">新疆</a></dd>
							<dd><a href="#">陕西</a></dd>
							<dd><a href="#">山西</a></dd>
							<dd><a href="#">广西</a></dd>
							<dd><a href="#">宁夏</a></dd>
							<dd><a href="#">河南</a></dd>
							<dd><a href="#">湖北</a></dd>
							<dd><a href="#">湖南</a></dd>
							<dd><a href="#">青海</a></dd>
							<dd><a href="#">贵州</a></dd>
							<dd><a href="#">内蒙古</a></dd>
							<dd><a href="#">安徽</a></dd>
							<dd><a href="#">山东</a></dd>
							<dd><a href="#">广东</a></dd>
							<dd><a href="#">江西</a></dd>
							<dd><a href="#">河北</a></dd>
							<dd><a href="#">甘肃</a></dd>
							<dd><a href="#">福建</a></dd>
							<dd><a href="#">辽宁</a></dd>
							<dd><a href="#">黑龙江</a></dd>

						</dl>

						<dl class="i-idea-keyword i-idea-keywordtwo">
							<dt>热门景点</dt>
							<dd><a href="#">丽江</a></dd>
							<dd><a href="#">马尔代夫</a></dd>
							<dd><a href="#">三亚</a></dd>
							<dd><a href="#">九寨沟</a></dd>
							<dd><a href="#">普陀山</a></dd>
							<dd><a href="#">少林寺</a></dd>
							<dd><a href="#">乌镇</a></dd>
							<dd><a href="#">鼓浪屿</a></dd>
							<dd><a href="#">九华山</a></dd>
							<dd><a href="#">五台山</a></dd>
							<dd><a href="#">凤凰古城</a></dd>
							<dd><a href="#">迪拜</a></dd>
							<dd><a href="#">灵山大佛</a></dd>
							<dd><a href="#">世纪欢乐园</a></dd>
							<dd><a href="#">大同悬空寺</a></dd>
							<dd><a href="#">西湖</a></dd>
							<dd><a href="#">周庄</a></dd>
							<dd><a href="#">爱琴海</a></dd>

						</dl>
					</div>
					<ul class="i-sale-con clearfix">
						<li>
							<a href="#"> 
								<img src="../images/img/idea279173_xxx1201.jpg" height="173" width="279" alt=""></a>
									<h4>西双版纳</h4><input id="input-21f" value="3" class="rating" min=0 max=5 step=0.5 data-size="xs" >
									<span class="item-count">560人去过  934人想去</span>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/idea279173_xxx1201.jpg" height="173" width="279" alt=""></a>
									<h4>西双版纳</h4><input id="input-21f" value="2" class="rating" min=0 max=5 step=0.5 data-size="xs" >
									<span class="item-count">560人去过  934人想去</span>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/idea279173_xxx1201.jpg" height="173" width="279" alt=""></a>
									<h4>西双版纳</h4><input id="input-21f" value="1" class="rating" min=0 max=5 step=0.5 data-size="xs" >
									<span class="item-count">560人去过  934人想去</span>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/idea279173_xxx1201.jpg" height="173" width="279" alt=""></a>
									<h4>西双版纳</h4><input id="input-21f" value="2" class="rating" min=0 max=5 step=0.5 data-size="xs" >
									<span class="item-count">560人去过  934人想去</span>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/idea279173_xxx1201.jpg" height="173" width="279" alt=""></a>
									<h4>西双版纳</h4><input id="input-21f" value="5" class="rating" min=0 max=5 step=0.5 data-size="xs" >
									<span class="item-count">560人去过  934人想去</span>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/idea279173_xxx1201.jpg" height="173" width="279" alt=""></a>
									<h4>西双版纳</h4><input id="input-21f" value="1" class="rating" min=0 max=5 step=0.5 data-size="xs" >
									<span class="item-count">560人去过  934人想去</span>
						</li>
					</ul>
					
				</div>				
			</div>
		</li>

		<li>
			<a href="javascript:;">旅游攻略</a>
			<div class="i-sale-one">
				<!-- 1 -->
				<div class="sale-con i_show">

					<div class="i-idea-left">
						<dl class="i-idea-keyword">
							<dt>22热门城市</dt>
							<dd><a href="#">西藏</a></dd>
							<dd><a href="#">云南</a></dd>
							<dd><a href="#">四川</a></dd>
							<dd><a href="#">海南</a></dd>
							<dd><a href="#">江苏</a></dd>
							<dd><a href="#">浙江</a></dd>
							<dd><a href="#">新疆</a></dd>
							<dd><a href="#">陕西</a></dd>
							<dd><a href="#">山西</a></dd>
							<dd><a href="#">广西</a></dd>
							<dd><a href="#">宁夏</a></dd>
							<dd><a href="#">河南</a></dd>
							<dd><a href="#">湖北</a></dd>
							<dd><a href="#">湖南</a></dd>
							<dd><a href="#">青海</a></dd>
							<dd><a href="#">贵州</a></dd>
							<dd><a href="#">内蒙古</a></dd>
							<dd><a href="#">安徽</a></dd>
							<dd><a href="#">山东</a></dd>
							<dd><a href="#">广东</a></dd>
							<dd><a href="#">江西</a></dd>
							<dd><a href="#">河北</a></dd>
							<dd><a href="#">甘肃</a></dd>
							<dd><a href="#">福建</a></dd>
							<dd><a href="#">辽宁</a></dd>
							<dd><a href="#">黑龙江</a></dd>

						</dl>

						<dl class="i-idea-keyword i-idea-keywordtwo">
							<dt>热门景点</dt>
							<dd><a href="#">丽江</a></dd>
							<dd><a href="#">马尔代夫</a></dd>
							<dd><a href="#">三亚</a></dd>
							<dd><a href="#">九寨沟</a></dd>
							<dd><a href="#">普陀山</a></dd>
							<dd><a href="#">少林寺</a></dd>
							<dd><a href="#">乌镇</a></dd>
							<dd><a href="#">鼓浪屿</a></dd>
							<dd><a href="#">九华山</a></dd>
							<dd><a href="#">五台山</a></dd>
							<dd><a href="#">凤凰古城</a></dd>
							<dd><a href="#">迪拜</a></dd>
							<dd><a href="#">灵山大佛</a></dd>
							<dd><a href="#">世纪欢乐园</a></dd>
							<dd><a href="#">大同悬空寺</a></dd>
							<dd><a href="#">西湖</a></dd>
							<dd><a href="#">周庄</a></dd>
							<dd><a href="#">爱琴海</a></dd>

						</dl>
					</div>
					<ul class="i-sale-con clearfix">
						<li>
							<a href="#"> 
								<img src="../images/img/idea279173_xxx1201.jpg" height="173" width="279" alt=""></a>
									<h4>西双版纳</h4><input id="input-21f" value="3" class="rating" min=0 max=5 step=0.5 data-size="xs" >
									<span class="item-count">560人去过  934人想去</span>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/idea279173_xxx1201.jpg" height="173" width="279" alt=""></a>
									<h4>西双版纳</h4><input id="input-21f" value="2" class="rating" min=0 max=5 step=0.5 data-size="xs" >
									<span class="item-count">560人去过  934人想去</span>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/idea279173_xxx1201.jpg" height="173" width="279" alt=""></a>
									<h4>西双版纳</h4><input id="input-21f" value="1" class="rating" min=0 max=5 step=0.5 data-size="xs" >
									<span class="item-count">560人去过  934人想去</span>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/idea279173_xxx1201.jpg" height="173" width="279" alt=""></a>
									<h4>西双版纳</h4><input id="input-21f" value="2" class="rating" min=0 max=5 step=0.5 data-size="xs" >
									<span class="item-count">560人去过  934人想去</span>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/idea279173_xxx1201.jpg" height="173" width="279" alt=""></a>
									<h4>西双版纳</h4><input id="input-21f" value="5" class="rating" min=0 max=5 step=0.5 data-size="xs" >
									<span class="item-count">560人去过  934人想去</span>
						</li>
						<li>
							<a href="#"> 
								<img src="../images/img/idea279173_xxx1201.jpg" height="173" width="279" alt=""></a>
									<h4>西双版纳</h4><input id="input-21f" value="1" class="rating" min=0 max=5 step=0.5 data-size="xs" >
									<span class="item-count">560人去过  934人想去</span>
						</li>
					</ul>
					
				</div>				
			</div>
		</li>

	</ul>

	<div class="i-sale-hotel">
		<a class="i-sale-more" href="#">更多旅游攻略 ></a>
	</div>
	
</div>
<!-- 攻略结束 -->


<!-- 电梯导航开始 -->
<div class="i-floor">
	<ul>
		<li class="act">
			<i class="icon-globe"></i>
			<span>特卖汇</span>
		</li>
		<li>
			<i class="icon-hospital"></i>
			<span>酒店</span>
		</li>
		<li>
			<i class="icon-plane"></i>
			<span>机票</span>
		</li>
		<li>
			<i class="icon-book"></i>
			<span>攻略</span>
		</li>
	</ul>
</div>
<!-- 电梯导航结束 -->

<!-- 攻略下方推广广告开始 -->
<div class="i-push clearfix">
	<div class="i-push-left"><a href="#"><img class="lazy" src="../images/icon/lazyload281-171.gif" data-original="../images/img/gl_bottom_xxx1130_07.jpg" height="171" width="281" alt=""></a></div>
	<div class="i-push-right"><a href="#"><img class="lazy" src="../images/icon/lazyload856-171.gif" data-original="../images/img/gl_bottom_xxx1130.jpg" height="171" width="856" alt=""></a></div>
</div>
<!-- 攻略下方推广广告结束 -->

<!-- 旅游局合作开始 -->
<div class="i_cooperation">
	<div class="i_area">
		<div class="i_tit clearfix">
			<h2>旅游局合作</h2>
			<span><a href="#">更多旅游局合作 ></a></span>
		</div>
		<div class="i_organization">
			<ul class="clearfix">
				<li>
					<a href="#">
					<img src="../images/icon/Ireland.jpg" height="40" width="100" alt="">
					<p>澳大利亚旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/jp_jiuzhou.jpg" height="40" width="100" alt="">
					<p>福建旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/jp_jiuzhou.jpg" height="40" width="100" alt="">
					<p>葡萄牙旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/jiangsulogo.jpg" height="40" width="100" alt="">
					<p>以色列旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/Korea.jpg" height="40" width="100" alt="">
					<p>海南省旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/letianlogo.jpg" height="40" width="100" alt="">
					<p>南通市旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/liaoning.jpg" height="40" width="100" alt="">
					<p>柳州旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/Liuzhou.jpg" height="40" width="100" alt="">
					<p>夏威夷旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/Nanjing.jpg" height="40" width="100" alt="">
					<p>洛杉矶旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/nantong.jpg" height="40" width="100" alt="">
					<p>德阳市旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/new_austr.jpg" height="40" width="100" alt="">
					<p>新西兰旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/jp_jiuzhou.jpg" height="40" width="100" alt="">
					<p>澳大利亚旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/jp_jiuzhou.jpg" height="40" width="100" alt="">
					<p>澳大利亚旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/Nanjing.jpg" height="40" width="100" alt="">
					<p>柏林旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/Korea.jpg" height="40" width="100" alt="">
					<p>海南省旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/letianlogo.jpg" height="40" width="100" alt="">
					<p>南通市旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/liaoning.jpg" height="40" width="100" alt="">
					<p>柳州旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/Liuzhou.jpg" height="40" width="100" alt="">
					<p>夏威夷旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/Nanjing.jpg" height="40" width="100" alt="">
					<p>洛杉矶旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/nantong.jpg" height="40" width="100" alt="">
					<p>德阳市旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/new_austr.jpg" height="40" width="100" alt="">
					<p>新西兰旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/jp_jiuzhou.jpg" height="40" width="100" alt="">
					<p>福建旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/jp_jiuzhou.jpg" height="40" width="100" alt="">
					<p>葡萄牙旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/jiangsulogo.jpg" height="40" width="100" alt="">
					<p>以色列旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/Korea.jpg" height="40" width="100" alt="">
					<p>海南省旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/letianlogo.jpg" height="40" width="100" alt="">
					<p>南通市旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/liaoning.jpg" height="40" width="100" alt="">
					<p>柳州旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/Liuzhou.jpg" height="40" width="100" alt="">
					<p>夏威夷旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="images/icon/Nanjing.jpg" height="40" width="100" alt="">
					<p>洛杉矶旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/nantong.jpg" height="40" width="100" alt="">
					<p>德阳市旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/new_austr.jpg" height="40" width="100" alt="">
					<p>新西兰旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/jp_jiuzhou.jpg" height="40" width="100" alt="">
					<p>澳大利亚旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/jp_jiuzhou.jpg" height="40" width="100" alt="">
					<p>澳大利亚旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/jiangsulogo.jpg" height="40" width="100" alt="">
					<p>以色列旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/Korea.jpg" height="40" width="100" alt="">
					<p>海南省旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/letianlogo.jpg" height="40" width="100" alt="">
					<p>南通市旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/liaoning.jpg" height="40" width="100" alt="">
					<p>柳州旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/Liuzhou.jpg" height="40" width="100" alt="">
					<p>夏威夷旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/Nanjing.jpg" height="40" width="100" alt="">
					<p>洛杉矶旅游局</p>
					</a>
				</li>
				<li>
					<a href="#">
					<img src="../images/icon/nantong.jpg" height="40" width="100" alt="">
					<p>德阳市旅游局</p>
					</a>
				</li>

				
			</ul>
		</div>
	</div>
</div>
<!-- 旅游局合作结束 -->

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
				<img src="../images/icon/i_wechat_11.jpg" alt="">
				<span>微信公众平台</span>
			</div>
			<div class="i_APP">
				<img src="../images/icon/i_APP_11.jpg" alt="">
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

</body>
</html>

<script src="lib/jquery-1.11.1.min.js"></script>
<script src="lib/cityselect.js"></script>
<script src="lib/My97DatePicker/WdatePicker.js"></script>
<script src="lib/star-rating/star-rating.js"></script>
<script src="lib/jquery.lazyload.js"></script>

<script src="js/common.js"></script>
<script src="js/index.js"></script>


