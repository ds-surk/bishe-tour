/*
Navicat MySQL Data Transfer

Source Server         : kukai
Source Server Version : 50561
Source Host           : localhost:3306
Source Database       : travelweb

Target Server Type    : MYSQL
Target Server Version : 50561
File Encoding         : 65001

Date: 2019-01-25 17:12:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `aircompany`
-- ----------------------------
DROP TABLE IF EXISTS `aircompany`;
CREATE TABLE `aircompany` (
  `CompanyID` int(11) NOT NULL COMMENT '航空公司ID',
  `CompanyName` varchar(255) NOT NULL COMMENT '航空公司名字',
  `AreaID` int(11) NOT NULL COMMENT '地区名',
  PRIMARY KEY (`CompanyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aircompany
-- ----------------------------
INSERT INTO `aircompany` VALUES ('1', '成都双流国际机场', '1');
INSERT INTO `aircompany` VALUES ('2', '廊曼国际机场', '2');
INSERT INTO `aircompany` VALUES ('3', '马累国际机场', '3');
INSERT INTO `aircompany` VALUES ('4', '肯尼迪机场', '4');
INSERT INTO `aircompany` VALUES ('5', '上海浦东国际机场', '5');
INSERT INTO `aircompany` VALUES ('6', '上海虹桥国际机场', '5');
INSERT INTO `aircompany` VALUES ('7', '北京首都国际机场', '7');

-- ----------------------------
-- Table structure for `area`
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `AreaID` int(11) NOT NULL,
  `Area` varchar(255) NOT NULL,
  `CountryID` int(11) NOT NULL,
  `AreaLONG` int(11) DEFAULT NULL COMMENT '地区经度',
  `AreaLAT` int(11) DEFAULT NULL COMMENT '地区纬度',
  `TFrom` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`AreaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('1', '成都', '1', '104', '30', '成都市');
INSERT INTO `area` VALUES ('2', '曼谷', '2', '100', '13', '曼谷');
INSERT INTO `area` VALUES ('3', '马累', '3', '73', '4', '马累');
INSERT INTO `area` VALUES ('4', '纽约', '4', '74', '40', '纽约');
INSERT INTO `area` VALUES ('5', '上海', '1', '121', '30', '上海市');
INSERT INTO `area` VALUES ('6', '东京', '5', '139', '35', '东京');
INSERT INTO `area` VALUES ('7', '北京', '1', '116', '39', '北京市');

-- ----------------------------
-- Table structure for `attractions`
-- ----------------------------
DROP TABLE IF EXISTS `attractions`;
CREATE TABLE `attractions` (
  `AttractionsID` int(11) NOT NULL AUTO_INCREMENT COMMENT '景点ID',
  `Attraction` varchar(255) NOT NULL COMMENT '景点名字',
  `AreaID` int(11) NOT NULL COMMENT '地区ID',
  `AttractionLONG` int(111) DEFAULT NULL COMMENT '经度',
  `AttractionLAT` int(111) DEFAULT NULL COMMENT '纬度',
  PRIMARY KEY (`AttractionsID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attractions
-- ----------------------------
INSERT INTO `attractions` VALUES ('1', '九寨沟', '1', '103', '33');
INSERT INTO `attractions` VALUES ('2', '黄龙', '1', '103', '32');
INSERT INTO `attractions` VALUES ('3', '芭提雅', '2', '100', '12');
INSERT INTO `attractions` VALUES ('4', '马尔代夫群岛', '3', '73', '3');
INSERT INTO `attractions` VALUES ('5', '白宫', '4', '75', '38');
INSERT INTO `attractions` VALUES ('6', '迪士尼', '5', '121', '31');
INSERT INTO `attractions` VALUES ('7', '秋叶原', '6', '139', '35');
INSERT INTO `attractions` VALUES ('8', '鸟巢', '7', '117', '38');

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `UID` int(10) DEFAULT NULL COMMENT '用户ID',
  `CommentType` int(11) DEFAULT NULL COMMENT '评论类型',
  `Comment` varchar(255) DEFAULT NULL COMMENT '评论',
  `createDate` date DEFAULT NULL COMMENT '评论时间',
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  `score` int(11) DEFAULT NULL COMMENT '评分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', null, '1', '青海湖是中国最大的内陆咸水湖，面积4573平方公里，湖面高出海平面3,260米，是泰山顶峰的2倍。', '2019-01-24', 'QQ截图20190115164748.png', null);

-- ----------------------------
-- Table structure for `commenttypes`
-- ----------------------------
DROP TABLE IF EXISTS `commenttypes`;
CREATE TABLE `commenttypes` (
  `CommentType` int(11) NOT NULL,
  `Type` varchar(255) NOT NULL COMMENT '评论类型',
  PRIMARY KEY (`CommentType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commenttypes
-- ----------------------------
INSERT INTO `commenttypes` VALUES ('1', '攻略');
INSERT INTO `commenttypes` VALUES ('2', '机票');
INSERT INTO `commenttypes` VALUES ('3', '酒店');
INSERT INTO `commenttypes` VALUES ('4', '旅游');

-- ----------------------------
-- Table structure for `country`
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `CountryID` int(11) NOT NULL,
  `Country` varchar(255) NOT NULL,
  PRIMARY KEY (`CountryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('1', '中国');
INSERT INTO `country` VALUES ('2', '泰国');
INSERT INTO `country` VALUES ('3', '马尔代夫');
INSERT INTO `country` VALUES ('4', '美国');
INSERT INTO `country` VALUES ('5', '日本');

-- ----------------------------
-- Table structure for `credentialtype`
-- ----------------------------
DROP TABLE IF EXISTS `credentialtype`;
CREATE TABLE `credentialtype` (
  `id` int(11) NOT NULL DEFAULT '0',
  `CredentialType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of credentialtype
-- ----------------------------
INSERT INTO `credentialtype` VALUES ('0', '身份证');
INSERT INTO `credentialtype` VALUES ('1', '港澳通行证');

-- ----------------------------
-- Table structure for `flightmessage`
-- ----------------------------
DROP TABLE IF EXISTS `flightmessage`;
CREATE TABLE `flightmessage` (
  `FlightID` int(11) NOT NULL AUTO_INCREMENT,
  `FlightNumber` varchar(255) NOT NULL,
  `CompanyID` int(11) NOT NULL,
  `chufaCompany` varchar(255) NOT NULL,
  `daodaCompany` varchar(255) NOT NULL,
  `AirType` varchar(255) NOT NULL,
  `SeatID` varchar(255) NOT NULL,
  `BeginTime` date NOT NULL,
  `chufaTime` varchar(255) NOT NULL,
  `daodaTime` varchar(255) NOT NULL,
  `totalTime` varchar(255) NOT NULL,
  `BeginCity` varchar(255) NOT NULL,
  `TransfersCity` varchar(255) DEFAULT NULL,
  `Destination` varchar(255) NOT NULL,
  `RoundType` varchar(255) NOT NULL,
  `Zhundian` double unsigned zerofill NOT NULL,
  `Discount` double DEFAULT NULL,
  `Price` varchar(255) NOT NULL,
  PRIMARY KEY (`FlightID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flightmessage
-- ----------------------------
INSERT INTO `flightmessage` VALUES ('1', 'CA1024', '5', '上海浦东国际机场', '廊曼国际机场', 'C919', 'A20', '2018-12-28', '6:50', '9:50', '3小时', '上海', null, '曼谷', '单程', '0000000000000000000060', '0.25', '233');
INSERT INTO `flightmessage` VALUES ('2', 'CA1222', '5', '上海浦东国际机场', '北京首都国际机场', 'c120', 'D15', '2019-01-01', '9:00', '9:50', '50分', '上海', null, '北京', '单程', '0000000000000000000060', '0.3', '200');
INSERT INTO `flightmessage` VALUES ('3', 'CA2333', '1', '成都双流国际机场', '上海浦东国际机场', 'A245', 'E34', '2019-01-09', '16:00', '17.15', '1小时15分', '成都', null, '上海', '单程', '0000000000000000000068', '0.3', '220');

-- ----------------------------
-- Table structure for `hotelmessage`
-- ----------------------------
DROP TABLE IF EXISTS `hotelmessage`;
CREATE TABLE `hotelmessage` (
  `HotelID` int(11) NOT NULL,
  `HotelName` varchar(255) NOT NULL,
  `AreaID` int(11) NOT NULL,
  `HotelLevel` int(10) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `HIMG` varchar(255) DEFAULT NULL,
  `IPrice` int(10) DEFAULT NULL,
  `point` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HotelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotelmessage
-- ----------------------------
INSERT INTO `hotelmessage` VALUES ('1', '喜来登贵航酒店', '1', '5', '成都市和平区双阳大道522号', 'images/img/jiudian.png', '700', '10');
INSERT INTO `hotelmessage` VALUES ('2', '凯宾斯基大酒店', '1', '5', '成都市白云区国金大道712号', 'images/img/holist01_0316.jpg', '900', '10');
INSERT INTO `hotelmessage` VALUES ('3', '和颐至尊酒店', '1', '3', '成都市白云区凤翔路222号', 'images/img/holist02_0316.jpg', '500', '7.2');
INSERT INTO `hotelmessage` VALUES ('4', '希尔顿酒店', '5', '5', '上海市静安区天目西路888号', 'images/img/holist03_0316.jpg', '1000', '10');
INSERT INTO `hotelmessage` VALUES ('5', '全季酒店', '5', '3', '上海市浦东新区世纪大道96广场', 'images/img/holist04_0316.jpg', '900', '7.1');
INSERT INTO `hotelmessage` VALUES ('6', '格林豪泰酒店', '5', '2', '上海市黄浦区南京东路231号', 'images/img/holist05_0316.jpg', '400', '5.2');
INSERT INTO `hotelmessage` VALUES ('7', '克尔顿大酒店', '4', '5', '纽约市皇后区特姆朗路777号', 'images/img/hotel279174_01_xxx1213.jpg', '1400', '8.8');
INSERT INTO `hotelmessage` VALUES ('8', '汽车之家汽车旅店', '4', '2', '纽约市皇后区布特路111号', 'images/img/hotel279174_02_xxx1213.jpg', '250', '2.5');
INSERT INTO `hotelmessage` VALUES ('9', '马可波罗酒店', '3', '5', '马尔代夫岛', 'images/img/hotel279174_03_xxx1213.jpg', '1700', '9.2');
INSERT INTO `hotelmessage` VALUES ('10', '圣地亚哥酒店', '2', '5', '曼谷市布鲁区金特路871号', 'images/img/hotel279174_04_xxx1213.jpg', '1500', '8.7');

-- ----------------------------
-- Table structure for `hotelorder`
-- ----------------------------
DROP TABLE IF EXISTS `hotelorder`;
CREATE TABLE `hotelorder` (
  `HotelNumber` int(10) NOT NULL COMMENT '酒店订单号',
  `HotelID` int(11) NOT NULL COMMENT '酒店ID',
  `CheckIn` date NOT NULL COMMENT '入住时间',
  `CheckOut` date NOT NULL COMMENT '退房时间',
  `CreatedTime` date NOT NULL COMMENT '创建时间',
  `UID` int(11) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`HotelNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotelorder
-- ----------------------------

-- ----------------------------
-- Table structure for `introduce`
-- ----------------------------
DROP TABLE IF EXISTS `introduce`;
CREATE TABLE `introduce` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `pName` varchar(255) NOT NULL COMMENT '省份名称',
  `pIntroduce` varchar(255) NOT NULL COMMENT '省份简介',
  `playNumber` varchar(255) NOT NULL COMMENT '预计游玩人数',
  `sgtNumber` varchar(255) NOT NULL COMMENT '建议游玩天数',
  `rmdScenery` varchar(255) NOT NULL COMMENT '推荐景点',
  `seyImage` varchar(255) NOT NULL COMMENT '景点图片',
  `seyIntroduce` varchar(255) NOT NULL COMMENT '景点简介',
  `season` varchar(255) NOT NULL COMMENT '最佳季节',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of introduce
-- ----------------------------
INSERT INTO `introduce` VALUES ('1', '北京', '北京，简称“京”，是中华人民共和国的首都，位于华北平原北部，背靠燕山，毗邻天津市和河北省。', '1.8w人次/天 拥堵', '5-10天', '故宫 天安门 八达岭长城 ', '', '故宫又称紫禁城，是明、清两代的皇宫，也是古老中国的标志和象征。', '5月-10月适宜。走过金銮殿、乾清宫、坤宁宫，在皇帝的御花园里赏弄花花草草，感觉好像穿越到了古装剧里。');

-- ----------------------------
-- Table structure for `orderstate`
-- ----------------------------
DROP TABLE IF EXISTS `orderstate`;
CREATE TABLE `orderstate` (
  `id` int(11) NOT NULL,
  `typeCode` varchar(50) DEFAULT NULL,
  `typeName` varchar(50) DEFAULT NULL,
  `valueId` int(11) DEFAULT NULL,
  `StateType` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderstate
-- ----------------------------
INSERT INTO `orderstate` VALUES ('1', null, null, '1', '已支付');
INSERT INTO `orderstate` VALUES ('2', null, null, '2', '未支付');
INSERT INTO `orderstate` VALUES ('3', null, null, '3', '已取消');
INSERT INTO `orderstate` VALUES ('4', null, null, '4', '已预订');
INSERT INTO `orderstate` VALUES ('5', null, null, '5', '未预定');
INSERT INTO `orderstate` VALUES ('6', 'AREA', '所属地区', '1', '成都');
INSERT INTO `orderstate` VALUES ('7', 'AREA', '所属地区', '2', '曼谷');
INSERT INTO `orderstate` VALUES ('8', 'AREA', '所属地区', '3', '马累');
INSERT INTO `orderstate` VALUES ('9', 'AREA', '所属地区', '4', '纽约');
INSERT INTO `orderstate` VALUES ('10', 'AREA', '所属地区', '5', '上海');
INSERT INTO `orderstate` VALUES ('11', 'AREA', '所属地区', '6', '东京');
INSERT INTO `orderstate` VALUES ('12', 'AREA', '所属地区', '7', '北京');

-- ----------------------------
-- Table structure for `photo`
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '名称',
  `image` varchar(255) NOT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photo
-- ----------------------------
INSERT INTO `photo` VALUES ('1', '澳门', 'images/img/strategy/city/aomen.JPG');
INSERT INTO `photo` VALUES ('2', '重庆', 'images/img/strategy/city/chongqing.jpg');
INSERT INTO `photo` VALUES ('3', '大连', 'images/img/strategy/city/dalian.jpg');
INSERT INTO `photo` VALUES ('4', '稻城', 'images/img/strategy/city/daocheng.JPG');
INSERT INTO `photo` VALUES ('5', '敦煌', 'images/img/strategy/city/dunhuang.jpg');
INSERT INTO `photo` VALUES ('6', '高雄', 'images/img/strategy/city/gaoxing.jpg');
INSERT INTO `photo` VALUES ('7', '桂林', 'images/img/strategy/city/guilin.jpg');
INSERT INTO `photo` VALUES ('8', '宁夏', 'images/img/strategy/city/ningxia.jpg');
INSERT INTO `photo` VALUES ('9', '贵阳', 'images/img/strategy/city/guiyang.jpg');
INSERT INTO `photo` VALUES ('10', '杭州', 'images/img/strategy/city/hangzhou.jpg');
INSERT INTO `photo` VALUES ('11', '呼伦贝尔', 'images/img/strategy/city/hulunbeier.jpg');
INSERT INTO `photo` VALUES ('12', '吉林', 'images/img/strategy/city/guilin.jpg');
INSERT INTO `photo` VALUES ('13', '连云港', 'images/img/strategy/city/lianyungang.jpg');
INSERT INTO `photo` VALUES ('14', '丽江', 'images/img/strategy/city/lijiang.JPG');
INSERT INTO `photo` VALUES ('15', '南京', 'images/img/strategy/city/nanjing.jpg');
INSERT INTO `photo` VALUES ('16', '宁波', 'images/img/strategy/city/ningbo.jpg');
INSERT INTO `photo` VALUES ('17', '青海湖', 'images/img/strategy/city/100l0g000000876eiE312_R_150_150.jpg');
INSERT INTO `photo` VALUES ('18', '北戴河', 'images/img/strategy/city/CggYGVadn8mAUdfqACJ8YpNFMNs670_R_150_150.jpg');
INSERT INTO `photo` VALUES ('19', '千岛湖', 'images/img/strategy/city/Cghzf1W3PV-AOrwQAA7ZKt3mEtE664_R_150_150.jpg');
INSERT INTO `photo` VALUES ('20', '泸沽湖', 'images/img/strategy/city/c8318f1546f54b188efdb42aae95f9a6_R_150_150.jpg');
INSERT INTO `photo` VALUES ('21', '张家界', 'images/img/strategy/city/CghzflWwsHOAMni3AA2c-FPVxCk836_R_150_150.jpg');
INSERT INTO `photo` VALUES ('22', '普陀山', 'images/img/strategy/city/CghzgFW2JSiAFNUPAAMldopiNoU463_R_150_150.jpg');
INSERT INTO `photo` VALUES ('23', '雁荡山', 'images/img/strategy/city/CghzgFWxE2iAM40GABKw95-YrwQ752_R_150_150.jpg');
INSERT INTO `photo` VALUES ('24', '香格里拉', 'images/img/strategy/city/Cghzf1Wwz1eAA2Z6ABg5kHtgIgk585_R_150_150.jpg');
INSERT INTO `photo` VALUES ('25', '里约热内卢', 'images/img/strategy/city/10030u000000jiv7a8454_R_150_150.jpg');
INSERT INTO `photo` VALUES ('26', '布拉格', 'images/img/strategy/city/CggYtFc5gvmALgmsABKDClSFbvg527_R_150_150.jpg');
INSERT INTO `photo` VALUES ('27', '法兰克福', 'images/img/strategy/city/100o0h00000091xrn1C00_R_150_150.jpg');
INSERT INTO `photo` VALUES ('28', '芝加哥', 'images/img/strategy/city/CghzfFWwy5WAGoGaAB-GeixEcy4050_R_150_150.jpg');
INSERT INTO `photo` VALUES ('29', '江原道', 'images/img/strategy/city/5491a2e1683c40c6aa37a5433492eac0_R_150_150.jpg');
INSERT INTO `photo` VALUES ('30', '斐济', 'images/img/strategy/city/Cghzf1Wwsg2AfgmyACuITDnkFBs318_R_150_150.jpg');
INSERT INTO `photo` VALUES ('31', '吉隆坡', 'images/img/strategy/city/100u0h00000091uoy0DD7_R_150_150.jpg');
INSERT INTO `photo` VALUES ('32', '皇后镇', 'images/img/strategy/city/Cghzf1WxDO2AJoZKABNmlzoGyWY255_R_150_150.jpg');
INSERT INTO `photo` VALUES ('33', '北京', 'images/img/strategy/city/100v0y000000mcrafF339_R_150_150.jpg');
INSERT INTO `photo` VALUES ('34', '香港', 'images/img/strategy/city/100f0e00000076pmrC805_R_150_150.jpg');
INSERT INTO `photo` VALUES ('35', '台北', 'images/img/strategy/city/100o0h000000907edD905_R_150_150.jpg');
INSERT INTO `photo` VALUES ('36', '三亚', 'images/img/strategy/city/CggYGlYgmgKAJDqHABa1BmjqnRc404_R_150_150.jpg');
INSERT INTO `photo` VALUES ('37', '厦门', 'images/img/strategy/city/100k0g0000007qkp5F0C3_R_150_150.jpg');
INSERT INTO `photo` VALUES ('38', '上海', 'images/img/strategy/city/100e0h0000008rp39A12F_R_150_150.jpg');
INSERT INTO `photo` VALUES ('39', '首尔', 'images/img/strategy/city/CggYG1Yt8dOAGxfcACY6W6iLGl4813_R_150_150.jpg');
INSERT INTO `photo` VALUES ('40', '普吉岛', 'images/img/strategy/city/100f0g00000087ngm6A83_R_150_150.jpg');
INSERT INTO `photo` VALUES ('41', '巴厘岛', 'images/img/strategy/city/CghzfVWwp1SAD5gHACTpIEDO0sk435_R_150_150.jpg');
INSERT INTO `photo` VALUES ('42', '马尔代夫', 'images/img/strategy/city/CggYHFaMtSmAReATAAK59sPsJWo877_R_150_150.jpg');
INSERT INTO `photo` VALUES ('43', '巴黎', 'images/img/strategy/city/CghzgFWTqBuARe7bAAknq4pGU7Y522_R_150_150.jpg');
INSERT INTO `photo` VALUES ('44', '毛里求斯', 'images/img/strategy/city/100n0z000000nldvr384C_R_150_150.jpg');
INSERT INTO `photo` VALUES ('45', '迪拜', 'images/img/strategy/city/100u0n000000e0fpmBF3A_R_150_150.jpg');
INSERT INTO `photo` VALUES ('46', '新加坡', 'images/img/strategy/city/CggYr1b7RzaAMPieABR4cg55_x0910_R_150_150.jpg');
INSERT INTO `photo` VALUES ('47', '平遥', 'images/img/strategy/city/pingyao.jpg');
INSERT INTO `photo` VALUES ('48', '日照', 'images/img/strategy/city/rizhao.jpg');
INSERT INTO `photo` VALUES ('49', '苏州', 'images/img/strategy/city/suzhou.jpg');
INSERT INTO `photo` VALUES ('50', '威海', 'images/img/strategy/city/weihai.jpg');
INSERT INTO `photo` VALUES ('51', '无锡', 'images/img/strategy/city/wuxi.jpg');
INSERT INTO `photo` VALUES ('52', '乌镇', 'images/img/strategy/city/wuzhen.jpg');
INSERT INTO `photo` VALUES ('53', '西安', 'images/img/strategy/city/xian.jpg');
INSERT INTO `photo` VALUES ('54', '西宁', 'images/img/strategy/city/xining.jpg');
INSERT INTO `photo` VALUES ('55', '阳朔', 'images/img/strategy/city/yangshuo.jpg');
INSERT INTO `photo` VALUES ('56', '扬州', 'images/img/strategy/city/yangzhou.jpg');
INSERT INTO `photo` VALUES ('57', '伊犁', 'images/img/strategy/city/yili.JPG');
INSERT INTO `photo` VALUES ('58', '济州岛', 'images/img/strategy/city/10030f0000007hpbt1D66_R_150_150.jpg');
INSERT INTO `photo` VALUES ('59', '苏梅岛', 'images/img/strategy/city/100j0n000000e3g497155_R_150_150.jpg');
INSERT INTO `photo` VALUES ('60', '塞班岛', 'images/img/strategy/city/CggYsFbvxkWAW8azAApi7j9YZzA868_R_150_150.jpg');
INSERT INTO `photo` VALUES ('61', '长滩岛', 'images/img/strategy/city/CghzgVWw05CAEqC9AAOWMGu4VMI508_R_150_150.jpg');
INSERT INTO `photo` VALUES ('62', '暹粒', 'images/img/strategy/city/1006090000003v5f0914C_R_150_150.jpg');
INSERT INTO `photo` VALUES ('63', '开普敦', 'images/img/strategy/city/100p0y000000m07562BB1_R_150_150.jpg');
INSERT INTO `photo` VALUES ('64', '关岛', 'images/img/strategy/city/CghzfVWeLymAUTFSABvKkVut9WE978_R_150_150.jpg');
INSERT INTO `photo` VALUES ('65', '夏威夷', 'images/img/strategy/city/CghzgVWxD-qAOFO3AB-KrM1I-4Y554_R_150_150.jpg');
INSERT INTO `photo` VALUES ('66', '冰岛', 'images/img/strategy/city/100n0z000000muwky3DAE_R_228_10000_Q90.jpg');

-- ----------------------------
-- Table structure for `residentuser`
-- ----------------------------
DROP TABLE IF EXISTS `residentuser`;
CREATE TABLE `residentuser` (
  `UID` int(6) NOT NULL COMMENT '用户ID',
  `UName` varchar(50) NOT NULL COMMENT '常驻姓名',
  `IDNumber` varchar(18) NOT NULL COMMENT '常驻人身份证'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of residentuser
-- ----------------------------

-- ----------------------------
-- Table structure for `roommessage`
-- ----------------------------
DROP TABLE IF EXISTS `roommessage`;
CREATE TABLE `roommessage` (
  `HotelID` int(11) NOT NULL,
  `RoomNumber` int(4) NOT NULL,
  `TypeID` int(11) NOT NULL,
  `RoomState` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `RIMG` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roommessage
-- ----------------------------
INSERT INTO `roommessage` VALUES ('1', '8310', '1', '2', '1500', 'images/img/hotelD01_0315.jpg');
INSERT INTO `roommessage` VALUES ('1', '8322', '2', '2', '1500', 'images/img/hotelD02_0315.jpg');
INSERT INTO `roommessage` VALUES ('1', '8323', '3', '2', '2700', 'images/img/hotelD03_0315.jpg');
INSERT INTO `roommessage` VALUES ('1', '8333', '4', '2', '2700', 'images/img/hotelD04_0315.jpg');
INSERT INTO `roommessage` VALUES ('1', '8566', '5', '2', '88888', 'images/img/hotelD05_0315.jpg');
INSERT INTO `roommessage` VALUES ('2', '6501', '1', '2', '1700', 'images/img/hotelD01_0315.jpg');
INSERT INTO `roommessage` VALUES ('2', '6510', '2', '2', '1700', 'images/img/hotelD02_0315.jpg');
INSERT INTO `roommessage` VALUES ('2', '6511', '3', '2', '2200', 'images/img/hotelD03_0315.jpg');
INSERT INTO `roommessage` VALUES ('2', '6610', '4', '2', '2200', 'images/img/hotelD04_0315.jpg');
INSERT INTO `roommessage` VALUES ('2', '7527', '5', '2', '88888', 'images/img/hotelD05_0315.jpg');
INSERT INTO `roommessage` VALUES ('3', '5510', '1', '2', '700', 'images/img/hotelD01_0315.jpg');
INSERT INTO `roommessage` VALUES ('3', '5511', '2', '2', '700', 'images/img/hotelD02_0315.jpg');
INSERT INTO `roommessage` VALUES ('3', '5610', '3', '2', '1000', 'images/img/hotelD03_0315.jpg');
INSERT INTO `roommessage` VALUES ('3', '5611', '4', '2', '1000', 'images/img/hotelD04_0315.jpg');
INSERT INTO `roommessage` VALUES ('3', '5710', '5', '2', '9999', 'images/img/hotelD05_0315.jpg');
INSERT INTO `roommessage` VALUES ('4', '7710', '1', '2', '2000', 'images/img/hotelD01_0315.jpg');
INSERT INTO `roommessage` VALUES ('4', '7711', '2', '2', '2000', 'images/img/hotelD02_0315.jpg');
INSERT INTO `roommessage` VALUES ('4', '7712', '3', '2', '2500', 'images/img/hotelD03_0315.jpg');
INSERT INTO `roommessage` VALUES ('4', '7810', '4', '2', '2500', 'images/img/hotelD04_0315.jpg');
INSERT INTO `roommessage` VALUES ('4', '7999', '5', '2', '88888', 'images/img/hotelD05_0315.jpg');
INSERT INTO `roommessage` VALUES ('5', '320', '1', '2', '1000', 'images/img/hotelD01_0315.jpg');
INSERT INTO `roommessage` VALUES ('5', '321', '2', '2', '1000', 'images/img/hotelD02_0315.jpg');
INSERT INTO `roommessage` VALUES ('5', '420', '3', '2', '1500', 'images/img/hotelD03_0315.jpg');
INSERT INTO `roommessage` VALUES ('5', '421', '4', '2', '1500', 'images/img/hotelD04_0315.jpg');
INSERT INTO `roommessage` VALUES ('5', '520', '5', '2', '99999', 'images/img/hotelD05_0315.jpg');
INSERT INTO `roommessage` VALUES ('6', '4420', '1', '2', '200', 'images/img/hotelD01_0315.jpg');
INSERT INTO `roommessage` VALUES ('6', '4421', '2', '2', '200', 'images/img/hotelD02_0315.jpg');
INSERT INTO `roommessage` VALUES ('6', '4520', '3', '2', '400', 'images/img/hotelD03_0315.jpg');
INSERT INTO `roommessage` VALUES ('6', '4521', '4', '2', '400', 'images/img/hotelD04_0315.jpg');
INSERT INTO `roommessage` VALUES ('7', '5510', '1', '2', '1500', 'images/img/hotelD01_0315.jpg');
INSERT INTO `roommessage` VALUES ('7', '5610', '2', '2', '1500', 'images/img/hotelD02_0315.jpg');
INSERT INTO `roommessage` VALUES ('7', '5611', '3', '2', '2000', 'images/img/hotelD03_0315.jpg');
INSERT INTO `roommessage` VALUES ('7', '6710', '4', '2', '2000', 'images/img/hotelD04_0315.jpg');
INSERT INTO `roommessage` VALUES ('7', '6711', '5', '2', '999999', 'images/img/hotelD05_0315.jpg');
INSERT INTO `roommessage` VALUES ('8', '6811', '1', '2', '1900', 'images/img/hotelD01_0315.jpg');
INSERT INTO `roommessage` VALUES ('8', '6820', '2', '2', '1900', 'images/img/hotelD02_0315.jpg');
INSERT INTO `roommessage` VALUES ('8', '6821', '3', '2', '2500', 'images/img/hotelD03_0315.jpg');
INSERT INTO `roommessage` VALUES ('8', '6910', '4', '2', '2500', 'images/img/hotelD04_0315.jpg');
INSERT INTO `roommessage` VALUES ('8', '6920', '5', '2', '88888', 'images/img/hotelD05_0315.jpg');
INSERT INTO `roommessage` VALUES ('9', '7710', '1', '2', '1400', 'images/img/hotelD01_0315.jpg');
INSERT INTO `roommessage` VALUES ('9', '7711', '2', '2', '1400', 'images/img/hotelD02_0315.jpg');
INSERT INTO `roommessage` VALUES ('9', '7720', '3', '2', '1800', 'images/img/hotelD03_0315.jpg');
INSERT INTO `roommessage` VALUES ('9', '7721', '4', '2', '1800', 'images/img/hotelD04_0315.jpg');
INSERT INTO `roommessage` VALUES ('9', '7510', '5', '2', '99999', 'images/img/hotelD05_0315.jpg');
INSERT INTO `roommessage` VALUES ('10', '5620', '1', '2', '2500', 'images/img/hotelD01_0315.jpg');
INSERT INTO `roommessage` VALUES ('10', '5621', '2', '2', '2500', 'images/img/hotelD02_0315.jpg');
INSERT INTO `roommessage` VALUES ('10', '5710', '3', '2', '3000', 'images/img/hotelD03_0315.jpg');
INSERT INTO `roommessage` VALUES ('10', '5711', '4', '2', '3000', 'images/img/hotelD04_0315.jpg');
INSERT INTO `roommessage` VALUES ('10', '5810', '5', '2', '100000', 'images/img/hotelD05_0315.jpg');

-- ----------------------------
-- Table structure for `roomstate`
-- ----------------------------
DROP TABLE IF EXISTS `roomstate`;
CREATE TABLE `roomstate` (
  `id` int(11) NOT NULL,
  `State` varchar(255) NOT NULL COMMENT '房间状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roomstate
-- ----------------------------
INSERT INTO `roomstate` VALUES ('1', '已入住');
INSERT INTO `roomstate` VALUES ('2', '未入住');

-- ----------------------------
-- Table structure for `roomtype`
-- ----------------------------
DROP TABLE IF EXISTS `roomtype`;
CREATE TABLE `roomtype` (
  `typeID` int(11) NOT NULL,
  `typeName` varchar(255) NOT NULL COMMENT '房间类型',
  PRIMARY KEY (`typeID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roomtype
-- ----------------------------
INSERT INTO `roomtype` VALUES ('1', '标准大床');
INSERT INTO `roomtype` VALUES ('2', '标准双床');
INSERT INTO `roomtype` VALUES ('3', '豪华大床');
INSERT INTO `roomtype` VALUES ('4', '豪华双床');
INSERT INTO `roomtype` VALUES ('5', '豪华套房');

-- ----------------------------
-- Table structure for `sex`
-- ----------------------------
DROP TABLE IF EXISTS `sex`;
CREATE TABLE `sex` (
  `id` int(11) NOT NULL DEFAULT '0',
  `sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sex
-- ----------------------------
INSERT INTO `sex` VALUES ('0', '男');
INSERT INTO `sex` VALUES ('1', '女');

-- ----------------------------
-- Table structure for `shoppingcart`
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `UID` int(6) NOT NULL COMMENT '用户ID',
  `ShoppingNumber` int(10) NOT NULL COMMENT '订单号',
  `ShoppingType` int(1) NOT NULL COMMENT '订单类型',
  `Price` double(10,0) unsigned zerofill NOT NULL COMMENT '总价格',
  `CreatedTime` date NOT NULL COMMENT '创建时间',
  `ShoppingState` int(1) NOT NULL COMMENT '订单状态',
  `HotelNumber` int(10) NOT NULL COMMENT '酒店订单号',
  `TicketNumber` int(10) NOT NULL COMMENT '机票订单号',
  `TravelNumber` int(10) NOT NULL COMMENT '旅游订单号',
  PRIMARY KEY (`ShoppingNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------

-- ----------------------------
-- Table structure for `ticketorder`
-- ----------------------------
DROP TABLE IF EXISTS `ticketorder`;
CREATE TABLE `ticketorder` (
  `TicketNumber` int(10) NOT NULL COMMENT '机票订单号',
  `FlightID` int(11) NOT NULL COMMENT '航班ID',
  `CreatedTime` date NOT NULL COMMENT '创建时间',
  `Cabin` varchar(255) NOT NULL COMMENT '舱位',
  `Price` double unsigned zerofill NOT NULL COMMENT '价格',
  `UID` int(11) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`TicketNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ticketorder
-- ----------------------------
INSERT INTO `ticketorder` VALUES ('1', '1', '2018-12-23', '经济舱', '0000000000000000001500', '10023');

-- ----------------------------
-- Table structure for `travelcomment`
-- ----------------------------
DROP TABLE IF EXISTS `travelcomment`;
CREATE TABLE `travelcomment` (
  `CommentCount` int(11) DEFAULT NULL COMMENT '评论数',
  `TravelCount` int(11) DEFAULT NULL COMMENT '旅游人数',
  `Score` int(11) DEFAULT NULL COMMENT '评分',
  `TravelID` int(11) NOT NULL COMMENT '旅游ID',
  PRIMARY KEY (`TravelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travelcomment
-- ----------------------------
INSERT INTO `travelcomment` VALUES ('123', '1111', '4', '1');
INSERT INTO `travelcomment` VALUES ('321', '2222', '3', '2');
INSERT INTO `travelcomment` VALUES ('332', '3333', '4', '3');
INSERT INTO `travelcomment` VALUES ('112', '4444', '3', '4');
INSERT INTO `travelcomment` VALUES ('555', '5555', '4', '5');
INSERT INTO `travelcomment` VALUES ('666', '6666', '5', '6');
INSERT INTO `travelcomment` VALUES ('999', '7777', '5', '7');

-- ----------------------------
-- Table structure for `traveller`
-- ----------------------------
DROP TABLE IF EXISTS `traveller`;
CREATE TABLE `traveller` (
  `UID` int(6) NOT NULL,
  `TravellerName` varchar(255) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `CredentialType` varchar(255) NOT NULL,
  `CredentialNumber` varchar(18) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `Sex` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of traveller
-- ----------------------------

-- ----------------------------
-- Table structure for `travelmessage`
-- ----------------------------
DROP TABLE IF EXISTS `travelmessage`;
CREATE TABLE `travelmessage` (
  `TravelID` int(11) NOT NULL AUTO_INCREMENT COMMENT '旅游订单号',
  `TravelName` varchar(255) NOT NULL COMMENT '项目名称',
  `CheckIn` date DEFAULT NULL COMMENT '入住时间',
  `CheckOut` date DEFAULT NULL COMMENT '退房时间',
  `Price` double(4,0) unsigned zerofill DEFAULT NULL COMMENT '价格',
  `Discount` double unsigned DEFAULT NULL COMMENT '折扣',
  `Supplier` varchar(255) NOT NULL COMMENT '供应商',
  `AreaID` int(11) DEFAULT NULL COMMENT '地区ID',
  `AttractionsID` int(11) DEFAULT NULL COMMENT '景点ID',
  `TypeID` int(11) DEFAULT NULL COMMENT '旅游类型ID',
  `Picture` varchar(255) DEFAULT NULL COMMENT '图片',
  `OutPicture` varchar(255) DEFAULT NULL COMMENT '售完图片',
  `TFrom` varchar(255) DEFAULT NULL COMMENT '出发地',
  `TDay` varchar(255) DEFAULT NULL COMMENT '旅游天数',
  `Mouth` varchar(255) DEFAULT NULL COMMENT '旅游月份',
  `Introduce` varchar(255) DEFAULT NULL COMMENT '介绍',
  `Shifts` varchar(255) DEFAULT NULL COMMENT '班次',
  PRIMARY KEY (`TravelID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travelmessage
-- ----------------------------
INSERT INTO `travelmessage` VALUES ('1', '北京鸟巢3日游', '2019-01-26', '2019-01-28', '2000', '0.8', '成都旅游团', '7', '8', '2', 'xiamen', '1001', '北京市', '3日', '1月', '王府井长安街，吃喝玩乐旅游样样行。', '每周二、三、四、五、六');
INSERT INTO `travelmessage` VALUES ('2', '成都黄龙亲子主题1日游', '2019-01-29', '2019-01-29', '1999', '0.9', '成都旅游团', '1', '2', '1', 'huanglong', '1002', '成都市', '1日', '1月', '深度全面的游览世界文化遗产，不留遗憾。', '每周三、四、五、六');
INSERT INTO `travelmessage` VALUES ('3', '泰国芭提雅4日游', '2019-01-24', '2019-01-27', '9000', '0.7', '出境旅游团', '2', '3', '2', 'batiya', '1003', '曼谷', '4日', '1月', '倾情打造！骑大象！摩天轮夜市！大皇宫+玉佛寺！美食全升级，行程更丰富！', '每周一、三、四、六');
INSERT INTO `travelmessage` VALUES ('4', '马尔代夫豪华7日游', '2019-01-25', '2019-01-31', '6000', '0.8', '出境旅游团', '3', '4', '2', 'mgda', '1004', '马累', '7日', '1月', '不到7000晚就可以住威斯汀，你没看错，还赠双早哦。 ', '每周一、三、五、六');
INSERT INTO `travelmessage` VALUES ('5', '纽约白宫5日观光游', '2019-01-23', '2019-01-27', '4000', '0.8', '出境旅游团', '4', '5', '2', 'baigong', '1005', '纽约', '5日', '1月', '独览“全球不容错过的25处风景之首”，欣赏星空下的古北水镇迷人夜色', '每周二、三、四、五、日');
INSERT INTO `travelmessage` VALUES ('6', '上海迪士尼主题公园1日游', '2019-01-23', '2019-01-23', '2000', '0.9', '本地土著旅游团', '5', '6', '3', 'dishini', '1006', '上海市', '1日', '1月', '迪士尼乐园于1955年7月开园,立刻成为世界上最具知名度和人气的主题公园。', '每周一、三、四、五、六');
INSERT INTO `travelmessage` VALUES ('7', '日本秋叶原组团3日游', '2019-01-24', '2019-01-26', '0500', '0.8', '出境旅游团', '6', '7', '1', 'qiuyeyuan', '1007', '东京', '3日', '1月', '自带独立观景阳台专属温泉池，足不出户即可恣意享受温泉之乐 ', '每周二、三、四、五、六');

-- ----------------------------
-- Table structure for `travelorder`
-- ----------------------------
DROP TABLE IF EXISTS `travelorder`;
CREATE TABLE `travelorder` (
  `TravelNumber` int(10) NOT NULL COMMENT '旅游订单号',
  `TravelID` int(11) NOT NULL COMMENT '旅游ID',
  `CreatedTime` date NOT NULL COMMENT '创建时间',
  `UID` int(11) NOT NULL COMMENT '用户ID',
  `Count` int(11) DEFAULT NULL COMMENT '旅游人数',
  `Discount` double(11,2) DEFAULT NULL COMMENT '假期折扣',
  `Price` double(11,2) DEFAULT NULL COMMENT '单价',
  `SumPrice` double(11,2) DEFAULT NULL COMMENT '总价',
  PRIMARY KEY (`TravelNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travelorder
-- ----------------------------
INSERT INTO `travelorder` VALUES ('100001', '1', '2019-01-15', '111111', '1', '1.00', '34.00', '45.00');

-- ----------------------------
-- Table structure for `traveltype`
-- ----------------------------
DROP TABLE IF EXISTS `traveltype`;
CREATE TABLE `traveltype` (
  `TypeID` int(11) NOT NULL AUTO_INCREMENT COMMENT '旅游类型ID',
  `TravelType` varchar(255) DEFAULT NULL COMMENT '旅游类型',
  PRIMARY KEY (`TypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of traveltype
-- ----------------------------
INSERT INTO `traveltype` VALUES ('1', '主题旅游');
INSERT INTO `traveltype` VALUES ('2', '热门旅游');
INSERT INTO `traveltype` VALUES ('3', '主题公园');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UID` int(6) DEFAULT '0' COMMENT '用户ID',
  `UName` varchar(50) DEFAULT NULL COMMENT '用户姓名',
  `Name` varchar(50) DEFAULT NULL COMMENT '用户昵称',
  `password` varchar(16) NOT NULL COMMENT '用户密码',
  `PayPassword` int(6) DEFAULT NULL COMMENT '支付密码',
  `email` varchar(20) NOT NULL COMMENT '邮箱',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `IDNumber` varchar(18) DEFAULT NULL COMMENT '身份证号',
  `Address` varchar(50) DEFAULT NULL COMMENT '地址',
  `Money` double DEFAULT '0' COMMENT '账户余额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '111111', 'admin', '管理员', '111111', '111111', '123456789@qq.com', '13111111111', '111111111111111111', '北京', '9811.3');
INSERT INTO `user` VALUES ('2', '222222', 'tom', '汤姆', '222222', '222222', '1231231234@qq.com', '15722222222', '222222222222222222', '上海', '20000');
