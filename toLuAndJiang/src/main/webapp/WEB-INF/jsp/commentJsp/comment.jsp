<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>景点评论</title>
		<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="lib/star-rating/star-rating.css">
		<link rel="stylesheet" href="css/cityselect.css">
		<link rel="stylesheet" href="lib/calendar/calendar.css">
		<link rel="stylesheet" href="css/reset.css">
		<link rel="stylesheet" href="css/common.css">
		<link rel="stylesheet" href="css/travalBooking.css">

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
							<img src="images/img/erweima_1126.jpg" height="102" width="102" alt="">
							<p>手机扫码快速下载</p>
							<p>App享受最多50% 优惠力度</p>
						</div>
					</li>
					<li class="i-top-phone i-top-wei">
						<a href="#"><i class="icon-comments"></i></a>
						<div class="i-top-app i-top-app-wei">
							<img src="images/img/erweima_1126.jpg" height="102" width="102" alt="">
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
				<li><a href="index.html" ><i class="icon-home"></i>首页</a></li>
				<li><a href="travel/index.html"><i class="icon-globe"></i>旅游</a></li>
				<li><a href="tavern/index.html"><i class="icon-hospital"></i>酒店</a></li>
				<li><a href="flyTicket.html"><i class="icon-plane"></i>机票</a></li>
				<!-- <li><a href="#"><i class="icon-credit-card"></i>门票</a></li> -->
				<li class="current"><a href="comment_index"><i class="icon-book"></i>攻略</a></li>
			</ul>
			<div class="i-nav-login">
				<a href="login.html">登陆</a>
				<span>|</span>
				<a href="register.html">注册</a>
			</div>
		</div>
	</div>
<!-- nav结束 -->

<!-- 主体部分开始 -->
<div class="main">
	<!-- 主体上部分开始 -->
	<div class="main-top clearfix">
	
	</div>
	<!-- 主体上部分结束 -->


	<!-- 主体底部部分开始 -->
	<div class="main-bottom">
	
		<!-- 费用部分 -->
	<div class="i_cost_wrap">
		<div class="i_area">
			<div class="i_title clearfix">
				<a href="#charge" class="i_current">景点介绍</a>
				<a href="#notice">预留</a>
				<a href="#assess">用户点评（<b>271</b>）</a>
				<a href="#comment">发表评论</a>
			</div>
			<!-- 吸顶效果 -->
			<div class="i_title fixTop clearfix">
				<a href="#charge" class="i_current">景点介绍</a>
				<a href="#notice">预留</a>
				<a href="#assess">用户点评（<b>271</b>）</a>
				<a href="#comment">发表评论</a>
			</div>

			<div class="i_con">

			<!-- 1 -->
				<div class="i_cost_con" id="charge">
					<p class="i_line"></p>
					<div class="i_cost clearfix">
						<span class="i_icon1">
							<h4>景点介绍</h4>
							<i class="icon-credit-card"></i>
						</span>
						<div class="i_left">
							
						</div>
								
						
						<div class="i_cost_list">
							
	
												
						</div>
					</div>

				</div>
				<!-- 2 -->
				<div class="i_cost_con i_notice_con" id="notice">
					<p class="i_line"></p>
					<div class="i_cost clearfix">
						<span class="i_icon1">
							<h4>预留</h4>
							<i class="icon-bell-alt"></i>
						</span>
						
					</div>

				</div>
				<!-- 3 -->
				<div class="i_cost_con i_comment_con" id="assess">
					<p class="i_line"></p>
					<div class="i_cost clearfix">
						<span class="i_icon1">
							<h4>用户点评</h4>
							<i class="icon-user"></i>
						</span>
						<div class="i_grade">
							<div class="i_total_grade clearfix">
								<div class="i_left">
									<b>4.9</b>
									<span>总体评分</span>
								</div>
								<div class="i_right">
									<ul class="process">
										<li>
										5分
										<span class="num">(260)</span>
										<span class="processbar">
											<em class="bar"></em>
										</span>
										</li>
										<li>
										4分
										<span class="num">(10)</span>
										<span class="processbar">
											<em class="bar_two"></em>
										</span>
										</li>
										<li>
										3分
										<span class="num">(0)</span>
										<span class="processbar">
											<em></em>
										</span>
										</li>
										<li>
										2分
										<span class="num">(1)</span>
										<span class="processbar">
											<em class="bar_three"></em>
										</span>
										</li>
										<li>
										1分
										<span class="num">(0)</span>
										<span class="processbar">
											<em></em>
										</span>
										</li>
									</ul>		
								</div>

							</div>

							<div class="i_grade_list">
								<ul class="score_list">
									<li class="list_cur">
										<a href="#">
											全部评论
											<span>(110)</span>
										</a>
									</li>
									<li>
										<a href="#">
											5分
											<span>(110)</span>
										</a>
									</li>
									<li>
										<a href="#">
											4分
											<span>(110)</span>
										</a>
									</li>
									<li>
										<a href="#">
											3分
											<span>(110)</span>
										</a>
									</li>
									<li>
										<a href="#">
											2分
											<span>(110)</span>
										</a>
									</li>
									<li>
										<a href="#">
											1分
											<span>(110)</span>
										</a>
									</li>
									<li>
										<a href="#">
											图片
											<span>(110)</span>
										</a>
									</li>
								</ul>

								<div class="all_data">
									<ul class="comment_list">
										<li>
											<div class="author ">
												<a href="javascript:;">
													<i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i>
												</a>
												<strong>5分</strong>
												<p>
													思****209
												</p>
												<span>
													情侣出游
												</span>
											</div>
											<p class="comment_info">
												<span>导游讲解：很满意    </span>
												<span>交通线路：很满意</span>
												<span>住宿餐食：很满意</span>
											</p>
											<p class="comment_detail">
												内容（略）
											</p>
											<div class="comment_pic_list">
												<a href="#"><img src="images/icon/pic_list100100_xxx1212_03.jpg" height="100" width="100" alt=""></a>
												<a href="#"><img src="images/icon/pic_list100100_xxx1212_05.jpg" height="100" width="100" alt=""></a>
												<a href="#"><img src="images/icon/pic_list100100_xxx1212_07.jpg" height="100" width="100" alt=""></a>
												<a href="#"><img src="images/icon/pic_list100100_xxx1212_09.jpg" height="100" width="100" alt=""></a>

											</div>

											<p class="detail_comment_tips">
												<a href="#">2016-09-05 18:47</a>
												<a href="#">来自：i 旅行</a>
											</p>


										</li>
									</ul>

									<ul class="comment_list">
										<li>
											<div class="author ">
												<a href="javascript:;">
													<i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i>
												</a>
												<strong>5分</strong>
												<p>
													思****209
												</p>
												<span>
													情侣出游
												</span>
											</div>
											<p class="comment_info">
												<span>导游讲解：很满意    </span>
												<span>交通线路：很满意</span>
												<span>住宿餐食：很满意</span>
											</p>
											<p class="comment_detail">
												内容（略）
											</p>

											<p class="detail_comment_tips">
												<a href="#">2016-09-05 18:47</a>
												<a href="#">来自：i 旅行</a>
											</p>


										</li>
									</ul>

									<ul class="comment_list">
										<li>
											<div class="author ">
												<a href="javascript:;">
													<i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i>
												</a>
												<strong>5分</strong>
												<p>
													思****209
												</p>
												<span>
													情侣出游
												</span>
											</div>
											<p class="comment_info">
												<span>导游讲解：很满意    </span>
												<span>交通线路：很满意</span>
												<span>住宿餐食：很满意</span>
											</p>
											<p class="comment_detail">
												内容（略）
											</p>

											<p class="detail_comment_tips">
												<a href="#">2016-09-05 18:47</a>
												<a href="#">来自：i 旅行</a>
											</p>


										</li>
									</ul>

									<ul class="comment_list">
										<li>
											<div class="author ">
												<a href="javascript:;">
													<i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i><i class="icon-star"></i>
												</a>
												<strong>5分</strong>
												<p>
													思****209
												</p>
												<span>
													情侣出游
												</span>
											</div>
											<p class="comment_info">
												<span>导游讲解：很满意    </span>
												<span>交通线路：很满意</span>
												<span>住宿餐食：很满意</span>
											</p>
											<p class="comment_detail">
												内容（略）
											</p>

											<p class="detail_comment_tips">
												<a href="#">2016-09-05 18:47</a>
												<a href="#">来自：i 旅行</a>
											</p>


										</li>
									</ul>

								</div>
							</div>
						

						</div>
						
					</div>
					
				</div>
				<!-- 4 -->
				<div class="i_cost_con i_comment_con" id="comment">
					<p class="i_line"></p>
						<div class="i_cost clearfix">
							<span class="i_icon1">
								<h4>发表评论</h4>
								<i class="icon-user"></i>
							</span>
							<div class="i_grade">
							<div class="i_total_grade clearfix">
								<div class="i_left">
									<b> </b>
								</div>
								<div class="i_right">
									<ul class="process">
										<li>
											<form action="comment" method="post" enctype="multipart/form-data">
												评分：<div class="item-bottom">
															<input id="input-21f" name="star" class="rating" min=0 max=5 step=0.5 data-size="xs" >
														</div>
												评论：<textarea type="text" placeholder="请输入评论" rows="5" cols="100" name="comment"></textarea><br>
												晒图：<input type="file" name="file"><br>
														<input type="submit" value="发表">
											</form>
										
										</li>
									</ul>		
								</div>

							</div>

						</div>				
					</div>
				</div>
			</div>
		</div>
	</div>

	</div>
	<!-- 主体底部部分结束 -->

</div>

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
				<img src="images/icon/i_wechat_11.jpg" alt="">
				<span>微信公众平台</span>
			</div>
			<div class="i_APP">
				<img src="images/icon/i_APP_11.jpg" alt="">
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
			<li><a href="#"><img src="images/icon/icon1126_11.jpg" height="32" width="88" alt=""></a></li>
			<li><a href="#"><img src="images/icon/icon1126_13.jpg" height="32" width="88" alt=""></a></li>
			<li><a href="#"><img src="images/icon/icon1126_15.jpg" height="32" width="88" alt=""></a></li>
			<li><a href="#"><img src="images/icon/icon1126_17.jpg" height="32" width="88" alt=""></a></li>
			<li><a href="#"><img src="images/icon/icon1126_19.jpg" height="32" width="88" alt=""></a></li>
			<li><a href="#"><img src="images/icon/icon1126_21.jpg" height="32" width="88" alt=""></a></li>
			<li><a href="#"><img src="images/icon/icon1126_23.jpg" height="32" width="88" alt=""></a></li>
			<li><a href="#"><img src="images/icon/icon1126_25.jpg" height="32" width="128" alt=""></a></li>
			<li><a href="#"><img src="images/icon/icon1126_27.jpg" height="32" width="102" alt=""></a></li>
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
<script src="lib/calendar/calendar.js"></script>

<script src="js/common.js"></script>
<script src="js/travelBooking.js"></script>

