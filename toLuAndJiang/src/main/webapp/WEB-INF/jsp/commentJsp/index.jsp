<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>攻略首页</title>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="css/reset.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/common.css"/>
    <link rel="stylesheet" href="lib/cityselect/cityselect.css"/>
    <link rel="stylesheet" href="css/index.css"/>
    <link rel="stylesheet" href="css/travel.css"/>
    <link rel="stylesheet" href="css/strategy.css"/>
    <script src="lib/jquery-2.1.4.min.js" type="text/javascript"></script>
    <script src="lib/cityselect/cityselect.js" type="text/javascript"></script>
    <script src="lib/echarts/echarts.min.js"></script>
    <script src="lib/echarts/shine.js"></script>
    <script src="lib/echarts/china.js"></script>
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
            <li><a href="../index.html" class=""><i class="icon-home"></i>首页</a></li>
            <li><a href="../travel/index.html" class="current"><i class="icon-globe"></i>旅游</a></li>
            <li ><a href="../tavern/index.html"><i class="icon-hospital"></i>酒店</a></li>
            <li><a href="../flyTicket.html"><i class="icon-plane"></i>机票</a></li>
             <!-- <li><a href="#"><i class="icon-credit-card"></i>门票</a></li> -->
            <li class="current"><a href="index"><i class="icon-book"></i>攻略</a></li>
        </ul>
        <div class="i-nav-login">
            <a href="../login.html">登陆</a>
            <span>|</span>
            <a href="../register.html">注册</a>
        </div>
    </div>
</div>
<!-- nav结束 -->
<div class="travel strategy">
    <div class="travel-head">
        <div class="travel-head-left">
            <div class="head-list-menu">
                <div class="border-hover">
                    <div class="menu-theme">主题旅游</div>
                    <div class="menu-sub">
                        <a>周边游</a>
                        <a>国内游</a>
                        <a>国外游</a>
                    </div>
                    <span>&gt;</span>
                    <div class="list-menu-border"></div>
                    <div class="menu-more">
                        <div class="menu-list">
                            <div class="menu-theme">周边旅游</div>
                            <div class="menu-sub">
                                <a>爸妈游</a>
                                <a>海岛游</a>
                                <a>蜜月游</a>
                            </div>
                        </div>
                        <div class="menu-list">
                            <div class="menu-theme">国内旅游</div>
                            <div class="menu-sub">
                                <a>故宫</a>
                                <a>上海迪士尼</a>
                                <a>长隆欢乐世界</a>
                            </div>
                        </div>
                        <div class="menu-list">
                            <div class="menu-theme">国外旅游</div>
                            <div class="menu-sub">
                                <a>马尔代夫</a>
                                <a>夏威夷</a>
                                <a>毛里求斯</a>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
            <div class="head-list-menu">
                <div class="border-hover">
                    <div class="menu-theme">热门旅游</div>
                    <div class="menu-sub">
                        <a>香港</a>
                        <a>澳门</a>
                        <a>台湾</a>
                    </div>
                    <span>&gt;</span>
                    <div class="list-menu-border"></div>
                    <div class="menu-more">
                        <div class="menu-list">
                            <div class="menu-theme">香港</div>
                            <div class="menu-sub">
                                <a>香港迪士尼</a>
                                <a>维多利亚港</a>
                                <a>南丫岛</a>
                                <a>尖沙咀</a>
                                <a>铜锣湾</a>
                            </div>
                        </div>
                        <div class="menu-list">
                            <div class="menu-theme">澳门</div>
                            <div class="menu-sub">
                                <a>大三巴牌坊</a>
                                <a>渔人码头</a>
                                <a>威尼斯人度假村</a>
                                <a>澳门博物馆</a>
                                <a>妈祖阁</a>
                            </div>
                        </div>
                        <div class="menu-list">
                            <div class="menu-theme">台湾</div>
                            <div class="menu-sub">
                                <a>台北</a>
                                <a>垦丁</a>
                                <a>七星潭</a>
                                <a>清水断崖</a>
                                <a>中正纪念堂</a>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
            <div class="head-list-menu">
                <div class="border-hover">
                    <div class="menu-theme">主题公园</div>
                    <div class="menu-sub">
                        <a>横店影视城</a>
                        <a>上海迪士尼</a>
                        <a>恐龙园</a>
                    </div>
                    <span>&gt;</span>
                    <div class="list-menu-border"></div>
                    <div class="menu-more">
                        <div class="menu-list">
                            <div class="menu-theme">横店影视城</div>
                            <div class="menu-sub">
                                <a>明清宫苑</a>
                                <a>秦王宫</a>
                                <a>清明上河图</a>
                                <a>华夏文化园</a>
                                <a>梦幻谷</a>
                            </div>
                        </div>
                        <div class="menu-list">
                            <div class="menu-theme">上海迪士尼</div>
                            <div class="menu-sub">
                                <a>米奇大街</a>
                                <a>奇想花园</a>
                                <a>梦幻世界</a>
                                <a>童话城堡</a>
                                <a>探险岛</a>
                            </div>
                        </div>
                        <div class="menu-list">
                            <div class="menu-theme">中华恐龙园</div>
                            <div class="menu-sub">
                                <a>中华恐龙馆</a>
                                <a>库克苏克峡谷</a>
                                <a>魔幻雨林</a>
                                <a>梦幻庄园</a>
								<a>嘻哈恐龙城</a>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
            <div class="head-list-menu">
                <div class="border-hover">
                    <div class="menu-theme">游山玩水</div>
                    <div class="menu-sub">
                        <a>江苏游</a>
                        <a>浙江游</a>
                        <a>上海游</a>
                    </div>
                    <span>&gt;</span>
                    <div class="list-menu-border"></div>
                    <div class="menu-more">
                        <div class="menu-list">
                            <div class="menu-theme">江苏游</div>
                            <div class="menu-sub">
                                <a>江苏锦溪</a>
                                <a>如皋古城</a>
                                <a>苏州园林</a>
                                <a>周庄古镇</a>
                                <a>夫子庙</a>
                            </div>
                        </div>
                        <div class="menu-list">
                            <div class="menu-theme">浙江游</div>
                            <div class="menu-sub">
                                <a>西湖雷峰塔</a>
                                <a>天目山</a>
                                <a>普陀山</a>
                                <a>乌镇</a>
                                <a>西塘古镇</a>
                            </div>
                        </div>
                        <div class="menu-list">
                            <div class="menu-theme">上海游</div>
                            <div class="menu-sub">
                                <a>外滩</a>
                                <a>城隍庙</a>
                                <a>崇明岛</a>
                                <a>顾村公园</a>
                                <a>武松古炮台</a>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
        <div class="travel-head-right strategy-center">
            <div class="travel-search">
                <div class="search">
                	<form action="methodDetail" method="post">
	                    <input type="text" placeholder="景点\地区\关键词...">
	                    <button type="submit" class="icon-search"></button>
                	</form>
                </div>
                <div class="travel-search-list none-style">
                    <div class="btn btn-default" type="text">
                        <i class="icon-map-marker"></i>
                        <input type="text" readonly id="travelCitySelect1" value="北京市">
						<i class="icon-angle-down"></i></div>
							               
                </div>
            </div>
          <div>
              <div class="banner ">
                  <div class="banner-border">
                      <div>
                          <ul class="banner_list">
                              <li class="act banner-li1"><a href="#"></a></li>
                              <li class="banner-li2"><a href="#"></a></li>
                              <li class="banner-li3"><a href="#"></a></li>
                              <li class="banner-li4"><a href="#"></a></li>
                          </ul>
                      </div>
                      <ol class="lb">
                          <li class="li_1 cur"></li>
                          <li></li>
                          <li></li>
                          <li></li>
                      </ol>
                  </div>
              </div>
              <div class="strategy-right">
                  <a href="#"><img src="images/img/strategy/strategy-00.png" alt=""></a>
                  <br>
                  <a href="#"><img src="images/img/strategy/strategy-01.png" alt=""></a>
              </div>
          </div>
        </div>

    </div>
    <div class="travel-body">
        <div class="strategy-map">
            <div id="linkForChina" style="width:740px;height: 600px;"></div>
            <div class="localtion-mes">
                <strong>青 海</strong>
                <br>
                预计游玩人数： 1.6w人次/天   拥堵 <br>
                建议游玩：4-10天
                <br>
                <br>
                茶卡盐湖   可可西里   孟达天池   互助北山   金银滩
                <br>
                <br>
                年保玉则   同仁   三江源
                <br>
                <br>
                <p>
                    青海省为我国青藏高原上的重要省份之一，因境内有全国最大的内陆咸水湖──青海湖，而得省名。
                </p>
                <br>
                <br>
                <p>
                    青海湖是中国最大的内陆咸水湖，面积4573平方公里，湖面高出海平面3,260米，是泰山顶峰的2倍。
                </p>
                <br>
                <br>
                <p>
                    最佳季节：5月-10月适宜。青海是高原大陆性气候，春秋两季有沙尘污染，形成扬尘天气。7月的青海湖边有大片油菜花，黄色的花海和一望无际的蓝色湖水，景色美不胜收，那时的气温不超过18摄氏度，气候舒适宜人。
                </p>
            </div>
        </div>
        <div class="strategy-list">
            <div class="strategy-list-header">
                <div>
                    月度推荐 <span> ● </span><span>开启滑雪之旅，这个冬天不太冷</span>
                </div>
                <img src="images/img/strategy/strategy-02.png" alt="">
            </div>
            <div class="strategy-list-body">
                <div class="strategy-tabs">
                    <ul class="tabs-header">
                        <li class="January"><span>一月</span> <span class=" icon-tra"></span><span>●</span></li>
                        <li class="February"><span>二月</span> <span class=" icon-tra"></span><span>●</span></li>
                        <li class="March"><span>三月</span> <span class=" icon-tra"></span><span>●</span></li>
                        <li class="April"><span>四月</span> <span class=" icon-tra"></span><span>●</span></li>
                        <li class="active"><span>五月</span> <span class=" icon-tra"></span><span>●</span></li>
                        <li class="June"><span>六月</span> <span class=" icon-tra"></span><span>●</span></li>
                        <li class="July"><span>七月</span> <span class=" icon-tra"></span><span>●</span></li>
                        <li class="August"><span>八月</span> <span class=" icon-tra"></span><span>●</span></li>
                        <li class="September"><span>九月</span> <span class=" icon-tra"></span><span>●</span></li>
                        <li class="October"><span>十月</span> <span class=" icon-tra"></span><span>●</span></li>
                        <li class="November"><span>十一月</span> <span class="icon-tra"></span><span>●</span></li>
                        <li class="December"><span>十二月</span> <span class="icon-tra"></span><span>●</span></li>
                    </ul>
                    <div class="tabs-body">
                        <a href=""><img src="images/img/strategy/city/aomen.JPG" alt=""><div>澳门</div></a>
                        <a href=""><img src="images/img/strategy/city/chongqing.jpg" alt=""><div>重庆</div></a>
                        <a href=""><img src="images/img/strategy/city/dalian.jpg" alt=""><div>大连</div></a>
                        <a href=""><img src="images/img/strategy/city/daocheng.JPG" alt=""><div>稻城</div></a>
                        <a href=""><img src="images/img/strategy/city/dunhuang.jpg" alt=""><div>敦煌</div></a>
                        <a href=""><img src="images/img/strategy/city/gaoxing.jpg" alt=""><div>高雄</div></a>
                        <a href=""><img src="images/img/strategy/city/guilin.jpg" alt=""><div>桂林</div></a>
                        <a href=""><img src="images/img/strategy/city/ningxia.jpg" alt=""><div>宁夏</div></a>
                        <br>
                        <a href=""><img src="images/img/strategy/city/guiyang.jpg" alt=""><div>贵阳</div></a>
                        <a href=""><img src="images/img/strategy/city/hangzhou.jpg" alt=""><div>杭州</div></a>
                        <a href=""><img src="images/img/strategy/city/hulunbeier.jpg" alt=""><div>呼伦贝尔</div></a>
                        <a href=""><img src="images/img/strategy/city/guilin.jpg" alt=""><div>吉林</div></a>
                        <a href=""><img src="images/img/strategy/city/lianyungang.jpg" alt=""><div>连云港</div></a>
                        <a href=""><img src="images/img/strategy/city/lijiang.JPG" alt=""><div>丽江</div></a>
                        <a href=""><img src="images/img/strategy/city/nanjing.jpg" alt=""><div>南京</div></a>
                        <a href=""><img src="images/img/strategy/city/ningbo.jpg" alt=""><div>宁波</div></a>
                    </div>
					<div class="tabs-June" style="display: none;">
                        <a href=""><img src="images/img/strategy/city/100l0g000000876eiE312_R_150_150.jpg" alt=""><div>青海湖</div></a>
                        <a href=""><img src="images/img/strategy/city/CggYGVadn8mAUdfqACJ8YpNFMNs670_R_150_150.jpg" alt=""><div>北戴河</div></a>
                        <a href=""><img src="images/img/strategy/city/Cghzf1W3PV-AOrwQAA7ZKt3mEtE664_R_150_150.jpg" alt=""><div>千岛湖</div></a>
                        <a href=""><img src="images/img/strategy/city/c8318f1546f54b188efdb42aae95f9a6_R_150_150.jpg" alt=""><div>泸沽湖</div></a>
                        <a href=""><img src="images/img/strategy/city/CghzflWwsHOAMni3AA2c-FPVxCk836_R_150_150.jpg" alt=""><div>张家界</div></a>
                        <a href=""><img src="images/img/strategy/city/CghzgFW2JSiAFNUPAAMldopiNoU463_R_150_150.jpg" alt=""><div>普陀山</div></a>
                        <a href=""><img src="images/img/strategy/city/CghzgFWxE2iAM40GABKw95-YrwQ752_R_150_150.jpg" alt=""><div>雁荡山</div></a>
                        <a href=""><img src="images/img/strategy/city/Cghzf1Wwz1eAA2Z6ABg5kHtgIgk585_R_150_150.jpg" alt=""><div>香格里拉</div></a>
                        <br>
                        <a href=""><img src="images/img/strategy/city/10030u000000jiv7a8454_R_150_150.jpg" alt=""><div>里约热内卢</div></a>
                        <a href=""><img src="images/img/strategy/city/CggYtFc5gvmALgmsABKDClSFbvg527_R_150_150.jpg" alt=""><div>布拉格</div></a>
                        <a href=""><img src="images/img/strategy/city/100o0h00000091xrn1C00_R_150_150.jpg" alt=""><div>法兰克福</div></a>
                        <a href=""><img src="images/img/strategy/city/CghzfFWwy5WAGoGaAB-GeixEcy4050_R_150_150.jpg" alt=""><div>芝加哥</div></a>
                        <a href=""><img src="images/img/strategy/city/5491a2e1683c40c6aa37a5433492eac0_R_150_150.jpg" alt=""><div>江原道</div></a>
                        <a href=""><img src="images/img/strategy/city/Cghzf1Wwsg2AfgmyACuITDnkFBs318_R_150_150.jpg" alt=""><div>斐济</div></a>
                        <a href=""><img src="images/img/strategy/city/100u0h00000091uoy0DD7_R_150_150.jpg" alt=""><div>吉隆坡</div></a>
                        <a href=""><img src="images/img/strategy/city/Cghzf1WxDO2AJoZKABNmlzoGyWY255_R_150_150.jpg" alt=""><div>皇后镇</div></a>
                    </div>
					<div class="tabs-July" style="display: none;">
                        <a href="../methodDetail1.html"><img src="images/img/strategy/city/100v0y000000mcrafF339_R_150_150.jpg" alt=""><div>北京</div></a>
                        <a href=""><img src="images/img/strategy/city/100f0e00000076pmrC805_R_150_150.jpg" alt=""><div>香港</div></a>
                        <a href=""><img src="images/img/strategy/city/100o0h000000907edD905_R_150_150.jpg" alt=""><div>台北</div></a>
                        <a href=""><img src="images/img/strategy/city/100k0h0000008rpf254E4_R_150_150.jpg" alt=""><div>澳门</div></a>
                        <a href=""><img src="images/img/strategy/city/CggYGlYgmgKAJDqHABa1BmjqnRc404_R_150_150.jpg" alt=""><div>三亚</div></a>
                        <a href=""><img src="images/img/strategy/city/100k0g0000007qkp5F0C3_R_150_150.jpg" alt=""><div>厦门</div></a>
                        <a href=""><img src="images/img/strategy/city/100e0h0000008rp39A12F_R_150_150.jpg" alt=""><div>上海</div></a>
                        <a href=""><img src="images/img/strategy/city/CggYGVXdMjCAYC76AE_wQZoMows816_R_150_150.jpg" alt=""><div>丽江</div></a>
                        <br>
                        <a href=""><img src="images/img/strategy/city/CggYG1Yt8dOAGxfcACY6W6iLGl4813_R_150_150.jpg" alt=""><div>首尔</div></a>
                        <a href=""><img src="images/img/strategy/city/100f0g00000087ngm6A83_R_150_150.jpg" alt=""><div>普吉岛</div></a>
                        <a href=""><img src="images/img/strategy/city/CghzfVWwp1SAD5gHACTpIEDO0sk435_R_150_150.jpg" alt=""><div>巴厘岛</div></a>
                        <a href=""><img src="images/img/strategy/city/CggYHFaMtSmAReATAAK59sPsJWo877_R_150_150.jpg" alt=""><div>马尔代夫</div></a>
                        <a href=""><img src="images/img/strategy/city/CghzgFWTqBuARe7bAAknq4pGU7Y522_R_150_150.jpg" alt=""><div>巴黎</div></a>
                        <a href=""><img src="images/img/strategy/city/100n0z000000nldvr384C_R_150_150.jpg" alt=""><div>毛里求斯</div></a>
                        <a href=""><img src="images/img/strategy/city/100u0n000000e0fpmBF3A_R_150_150.jpg" alt=""><div>迪拜</div></a>
                        <a href=""><img src="images/img/strategy/city/CggYr1b7RzaAMPieABR4cg55_x0910_R_150_150.jpg" alt=""><div>新加坡</div></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="strategy-list">
            <div class="strategy-list-header">
                <div>
                    热门目的地 <span> ● </span><span>走过多少地方 最美的还是这里</span>
                </div>
                <img src="images/img/strategy/strategy-03.png" alt="">
            </div>
            <div class="strategy-list-body localtion">
                <div class="strategy-tabs">
                    <ul  class="tabs-header" >
                        <li class="play"><span>当季游玩</span> </li>
                        <li class="honeymoon"><span>温馨蜜月</span> </li>
                        <li class="island"><span>海岛撒欢</span> </li>
                        <li class="shop"><span>血拼购物</span> </li>
                    </ul>
                    <div class="tabs-body2">
                        <a href=""><img src="images/img/strategy/city/pingyao.jpg" alt=""><div>平遥</div></a>
                        <a href=""><img src="images/img/strategy/city/rizhao.jpg" alt=""><div>日照</div></a>
                        <a href=""><img src="images/img/strategy/city/shanghai.jpg" alt=""><div>上海</div></a>
                        <a href=""><img src="images/img/strategy/city/suzhou.jpg" alt=""><div>苏州</div></a>
                        <a href=""><img src="images/img/strategy/city/taibei.jpg" alt=""><div>台北</div></a>
                        <a href=""><img src="images/img/strategy/city/weihai.jpg" alt=""><div>威海</div></a>
                        <a href=""><img src="images/img/strategy/city/wuxi.jpg" alt=""><div>无锡</div></a>
                        <a href=""><img src="images/img/strategy/city/wuzhen.jpg" alt=""><div>乌镇</div></a>
                        <br>
                        <a href=""><img src="images/img/strategy/city/xiamen.jpg" alt=""><div>厦门</div></a>
                        <a href=""><img src="images/img/strategy/city/xian.jpg" alt=""><div>西安</div></a>
                        <a href=""><img src="images/img/strategy/city/xianggang.JPG" alt=""><div>香港</div></a>
                        <a href=""><img src="images/img/strategy/city/xining.jpg" alt=""><div>西宁</div></a>
                        <a href=""><img src="images/img/strategy/city/yangshuo.jpg" alt=""><div>阳朔</div></a>
                        <a href=""><img src="images/img/strategy/city/yangzhou.jpg" alt=""><div>扬州</div></a>
                        <a href=""><img src="images/img/strategy/city/yili.JPG" alt=""><div>伊犁</div></a>
                        <a href=""><img src="images/img/strategy/city/zhangjiajie.jpg" alt=""><div>张家界</div></a>
                    </div>
					<div class="tabs-HM" style="display: none;">
                        <a href=""><img src="images/img/strategy/city/CghzflWwsHOAMni3AA2c-FPVxCk836_R_150_150.jpg" alt=""><div>张家界</div></a>
                        <a href=""><img src="images/img/strategy/city/Cghzf1Wwz1eAA2Z6ABg5kHtgIgk585_R_150_150.jpg" alt=""><div>香格里拉</div></a>
                        <a href=""><img src="images/img/strategy/city/CggYGlYgmgKAJDqHABa1BmjqnRc404_R_150_150.jpg" alt=""><div>三亚</div></a>
                        <a href=""><img src="images/img/strategy/city/yangzhou.jpg" alt=""><div>扬州</div></a>
                        <a href=""><img src="images/img/strategy/city/xiamen.jpg" alt=""><div>厦门</div></a>
                        <a href=""><img src="images/img/strategy/city/weihai.jpg" alt=""><div>威海</div></a>
                        <a href=""><img src="images/img/strategy/city/hangzhou.jpg" alt=""><div>杭州</div></a>
                        <a href=""><img src="images/img/strategy/city/xining.jpg" alt=""><div>西宁</div></a>
                        <br>
						<a href=""><img src="images/img/strategy/city/xianggang.JPG" alt=""><div>香港</div></a>
						<a href=""><img src="images/img/strategy/city/taibei.jpg" alt=""><div>台北</div></a>
						<a href=""><img src="images/img/strategy/city/CggYGVXdMjCAYC76AE_wQZoMows816_R_150_150.jpg" alt=""><div>丽江</div></a>
                        <a href=""><img src="images/img/strategy/city/xian.jpg" alt=""><div>西安</div></a>
                        <a href=""><img src="images/img/strategy/city/yili.JPG" alt=""><div>伊犁</div></a>
						<a href=""><img src="images/img/strategy/city/suzhou.jpg" alt=""><div>苏州</div></a>
						<a href=""><img src="images/img/strategy/city/yangshuo.jpg" alt=""><div>阳朔</div></a>
                        <a href=""><img src="images/img/strategy/city/dunhuang.jpg" alt=""><div>敦煌</div></a>
                    </div>
					<div class="tabs-island" style="display: none;">
                        <a href=""><img src="images/img/strategy/city/CghzgFW2JSiAFNUPAAMldopiNoU463_R_150_150.jpg" alt=""><div>普陀山</div></a>
                        <a href=""><img src="images/img/strategy/city/100o0h000000907edD905_R_150_150.jpg" alt=""><div>台北</div></a>
                        <a href=""><img src="images/img/strategy/city/100k0g0000007qkp5F0C3_R_150_150.jpg" alt=""><div>厦门</div></a>
                        <a href=""><img src="images/img/strategy/city/100f0g00000087ngm6A83_R_150_150.jpg" alt=""><div>普吉岛</div></a>
                        <a href=""><img src="images/img/strategy/city/CghzfVWwp1SAD5gHACTpIEDO0sk435_R_150_150.jpg" alt=""><div>巴厘岛</div></a>
                        <a href=""><img src="images/img/strategy/city/10030f0000007hpbt1D66_R_150_150.jpg" alt=""><div>济州岛</div></a>
                        <a href=""><img src="images/img/strategy/city/CggYHFaMtSmAReATAAK59sPsJWo877_R_150_150.jpg" alt=""><div>马尔代夫</div></a>
                        <a href=""><img src="images/img/strategy/city/CggYGlYgmgKAJDqHABa1BmjqnRc404_R_150_150.jpg" alt=""><div>三亚</div></a>
                        <br>
                        <a href=""><img src="images/img/strategy/city/100j0n000000e3g497155_R_150_150.jpg" alt=""><div>苏梅岛</div></a>
                        <a href=""><img src="images/img/strategy/city/CggYsFbvxkWAW8azAApi7j9YZzA868_R_150_150.jpg" alt=""><div>塞班岛</div></a>
                        <a href=""><img src="images/img/strategy/city/CghzgVWw05CAEqC9AAOWMGu4VMI508_R_150_150.jpg" alt=""><div>长滩岛</div></a>
                        <a href=""><img src="images/img/strategy/city/100n0z000000nldvr384C_R_150_150.jpg" alt=""><div>毛里求斯</div></a>
                        <a href=""><img src="images/img/strategy/city/1006090000003v5f0914C_R_150_150.jpg" alt=""><div>暹粒</div></a>
                        <a href=""><img src="images/img/strategy/city/100p0y000000m07562BB1_R_150_150.jpg" alt=""><div>开普敦</div></a>
                        <a href=""><img src="images/img/strategy/city/CghzfVWeLymAUTFSABvKkVut9WE978_R_150_150.jpg" alt=""><div>关岛</div></a>
                        <a href=""><img src="images/img/strategy/city/CghzgVWxD-qAOFO3AB-KrM1I-4Y554_R_150_150.jpg" alt=""><div>夏威夷</div></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

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
<script src="strategy/index.js" type="text/javascript"></script>
<script>
    window.onload = function (e) {
        strategy.init();
    }
</script>
</body>
</html>