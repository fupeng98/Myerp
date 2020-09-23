/*
Navicat MySQL Data Transfer

Source Server         : myconn
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : myerp

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-09-17 16:43:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbdealer`
-- ----------------------------
DROP TABLE IF EXISTS `tbdealer`;
CREATE TABLE `tbdealer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbdealer
-- ----------------------------

-- ----------------------------
-- Table structure for `tbgongyingshang`
-- ----------------------------
DROP TABLE IF EXISTS `tbgongyingshang`;
CREATE TABLE `tbgongyingshang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '供应商管理',
  `gname` varchar(255) DEFAULT NULL,
  `gtel` varchar(255) DEFAULT NULL,
  `gaddress` varchar(255) DEFAULT NULL,
  `gtime` varchar(255) DEFAULT NULL,
  `gproduct` varchar(255) DEFAULT NULL,
  `gnumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbgongyingshang
-- ----------------------------
INSERT INTO `tbgongyingshang` VALUES ('11', '阿迪达斯', '12345678987', '重庆', '2020-09-10', '鞋', '2553');
INSERT INTO `tbgongyingshang` VALUES ('14', '阿迪达斯', '12345678987', '重庆', '2020-09-10', '鞋', '243');
INSERT INTO `tbgongyingshang` VALUES ('15', '阿迪达斯', '12345678987', '重庆', '2020-09-10', '鞋', '243');
INSERT INTO `tbgongyingshang` VALUES ('16', '阿迪达斯', '12345678987', '重庆', '2020-09-10', '鞋', '143');
INSERT INTO `tbgongyingshang` VALUES ('21', '阿迪达斯', '12345678987', '重庆', '2020-09-25T04:55', '女鞋', '1423');
INSERT INTO `tbgongyingshang` VALUES ('22', '耐克', '1234567898799', '重庆', '2020-08-01T17:55', '女运动鞋', '500');
INSERT INTO `tbgongyingshang` VALUES ('23', '匡威', '15111841137', '长沙', '2020-09-01T22:03', '男鞋', '15423');
INSERT INTO `tbgongyingshang` VALUES ('24', '匡威', '13370743281', '北京', '2020-09-17T08:55', '女鞋', '1423');
INSERT INTO `tbgongyingshang` VALUES ('25', '阿迪达斯', '12345678987', '四川', '2020-09-11T03:57', '鞋', '53');
INSERT INTO `tbgongyingshang` VALUES ('26', '王先舜', '12345678987', '重庆', '2020-09-02T01:58', '阿迪达斯鞋', '1534');
INSERT INTO `tbgongyingshang` VALUES ('27', '高娱', '12345678987', '江苏', '2020-09-05T03:56', '阿迪达斯男鞋', '5314');
INSERT INTO `tbgongyingshang` VALUES ('28', '陈梦', '15492659656', '重庆', '2020-09-16T04:58', '彪马男鞋', '200');
INSERT INTO `tbgongyingshang` VALUES ('29', '扶鹏', '15111841137', '北京大兴区', '2020-09-01T05:57', '乔丹男运动鞋', '1000');
INSERT INTO `tbgongyingshang` VALUES ('30', '梁露', '15803030785', '李宁广东惠州', '2020-09-02T01:09', '男运动鞋', '600');
INSERT INTO `tbgongyingshang` VALUES ('31', '李燕琴', '13370743281', '成都', '2020-09-09T13:30', '经典万斯', '598');

-- ----------------------------
-- Table structure for `tbguestbook`
-- ----------------------------
DROP TABLE IF EXISTS `tbguestbook`;
CREATE TABLE `tbguestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `isshow` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbguestbook
-- ----------------------------

-- ----------------------------
-- Table structure for `tbinout`
-- ----------------------------
DROP TABLE IF EXISTS `tbinout`;
CREATE TABLE `tbinout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opttype` int(11) DEFAULT NULL COMMENT '-1为出库，1为入库',
  `proid` int(11) DEFAULT NULL,
  `pronum` varchar(255) DEFAULT NULL,
  `proname` varchar(50) DEFAULT NULL,
  `protype` varchar(255) DEFAULT NULL,
  `proimgurl` varchar(300) DEFAULT NULL,
  `prooldnum` int(11) DEFAULT NULL,
  `proaddnum` int(11) DEFAULT NULL COMMENT '入库或者出库的数量',
  `unitname` varchar(255) DEFAULT NULL COMMENT '计量单位名称',
  `ctime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbinout
-- ----------------------------
INSERT INTO `tbinout` VALUES ('1', '1', '15', 'en399', '耐克儿童女鞋', '/童鞋/女童', '20200915110119649.jpg', '0', '100', '', '2020-09-15 11:05:52');
INSERT INTO `tbinout` VALUES ('2', '-1', '15', 'en399', '耐克儿童女鞋', '/童鞋/女童', '20200915110119649.jpg', '100', '50', '', '2020-09-15 11:06:04');
INSERT INTO `tbinout` VALUES ('3', '1', '15', 'en399', '耐克儿童女鞋', '/童鞋/女童', '20200915110119649.jpg', '50', '1', '双', '2020-09-15 16:28:52');
INSERT INTO `tbinout` VALUES ('4', '1', '15', 'en399', '耐克儿童女鞋', '/童鞋/女童', '20200915110119649.jpg', '51', '1', '双', '2020-09-15 16:29:13');

-- ----------------------------
-- Table structure for `tblog`
-- ----------------------------
DROP TABLE IF EXISTS `tblog`;
CREATE TABLE `tblog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志表',
  `typeid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  `username` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tblog
-- ----------------------------
INSERT INTO `tblog` VALUES ('2', '1', '1', '超级管理员', '登录成功!用户名:admin密码：******', '2020-09-11 14:10:43');
INSERT INTO `tblog` VALUES ('3', '3', '0', '未知', '登录失败!用户名:admin密码：1111111', '2020-09-11 14:11:34');
INSERT INTO `tblog` VALUES ('4', '1', '1', '超级管理员', '登录成功!用户名:admin密码：******', '2020-09-11 14:11:40');
INSERT INTO `tblog` VALUES ('5', '1', '1', '超级管理员', '登录成功!用户名:admin密码：******', '2020-09-11 15:51:28');
INSERT INTO `tblog` VALUES ('6', '2', '1', '超级管理员', '超级管理员修改密失败', '2020-09-11 16:03:39');
INSERT INTO `tblog` VALUES ('7', '2', '1', '超级管理员', '超级管理员修改密码成功', '2020-09-11 16:03:52');
INSERT INTO `tblog` VALUES ('8', '2', '1', '超级管理员', '超级管理员修改密码成功', '2020-09-11 16:05:21');
INSERT INTO `tblog` VALUES ('9', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-12 09:11:51');
INSERT INTO `tblog` VALUES ('10', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-12 10:17:40');
INSERT INTO `tblog` VALUES ('11', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-14 15:41:09');
INSERT INTO `tblog` VALUES ('12', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-14 16:09:08');
INSERT INTO `tblog` VALUES ('13', '1', '1', '超级管理员', '登录成功!用户名:admin密码：******', '2020-09-14 16:09:24');
INSERT INTO `tblog` VALUES ('14', '1', '1', '超级管理员', '登录成功!用户名:admin密码：******', '2020-09-14 16:21:48');
INSERT INTO `tblog` VALUES ('15', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-14 16:21:59');
INSERT INTO `tblog` VALUES ('16', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-14 16:46:09');
INSERT INTO `tblog` VALUES ('17', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-14 17:20:58');
INSERT INTO `tblog` VALUES ('18', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-14 18:48:59');
INSERT INTO `tblog` VALUES ('19', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-14 19:04:25');
INSERT INTO `tblog` VALUES ('20', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-14 19:56:41');
INSERT INTO `tblog` VALUES ('21', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-15 09:39:30');
INSERT INTO `tblog` VALUES ('22', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-15 10:21:31');
INSERT INTO `tblog` VALUES ('23', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-15 10:27:12');
INSERT INTO `tblog` VALUES ('24', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-15 10:28:15');
INSERT INTO `tblog` VALUES ('25', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-15 10:30:19');
INSERT INTO `tblog` VALUES ('26', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-15 14:04:46');
INSERT INTO `tblog` VALUES ('27', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-15 14:04:55');
INSERT INTO `tblog` VALUES ('28', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-15 15:11:55');
INSERT INTO `tblog` VALUES ('29', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-15 15:55:02');
INSERT INTO `tblog` VALUES ('30', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-15 16:20:23');
INSERT INTO `tblog` VALUES ('31', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-15 16:53:48');
INSERT INTO `tblog` VALUES ('32', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-16 10:50:02');
INSERT INTO `tblog` VALUES ('33', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-16 11:11:29');
INSERT INTO `tblog` VALUES ('34', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-16 16:18:07');
INSERT INTO `tblog` VALUES ('35', '3', '1', '超级管理员', '登录失败!用户名:admin密码：1    1=1', '2020-09-16 16:19:21');
INSERT INTO `tblog` VALUES ('36', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-16 16:54:30');
INSERT INTO `tblog` VALUES ('37', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-17 09:31:32');
INSERT INTO `tblog` VALUES ('38', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-17 09:59:56');
INSERT INTO `tblog` VALUES ('39', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-17 11:15:13');
INSERT INTO `tblog` VALUES ('40', '1', '1', '超级管理员', '登录成功!用户名:admin密码：******', '2020-09-17 11:25:36');
INSERT INTO `tblog` VALUES ('41', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-17 16:19:04');
INSERT INTO `tblog` VALUES ('42', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-17 16:40:24');
INSERT INTO `tblog` VALUES ('43', '2', '1', '超级管理员', '超级管理员修改密码成功', '2020-09-17 16:40:37');
INSERT INTO `tblog` VALUES ('44', '1', '0', '未知', '登录成功!用户名:admin密码：******', '2020-09-17 16:40:55');

-- ----------------------------
-- Table structure for `tbmenubar`
-- ----------------------------
DROP TABLE IF EXISTS `tbmenubar`;
CREATE TABLE `tbmenubar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MenuName` varchar(100) DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `ParentPath` varchar(100) DEFAULT NULL,
  `Href` varchar(100) DEFAULT NULL,
  `Target` varchar(100) DEFAULT NULL,
  `OrderList` int(11) DEFAULT NULL,
  `Visible` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbmenubar
-- ----------------------------
INSERT INTO `tbmenubar` VALUES ('1', '系统设置', '0', '1', '1', null, '', '1', '1');
INSERT INTO `tbmenubar` VALUES ('2', '商品中心', '0', '1', '2', null, '', '2', '1');
INSERT INTO `tbmenubar` VALUES ('3', '进货管理', '0', '1', '3', null, '', '3', '1');
INSERT INTO `tbmenubar` VALUES ('4', '销售管理', '0', '1', '4', null, '', '4', '1');
INSERT INTO `tbmenubar` VALUES ('5', '库存管理', '0', '1', '5', null, '', '7', '1');
INSERT INTO `tbmenubar` VALUES ('6', '报表管理', '0', '1', '6', null, '', '8', '1');
INSERT INTO `tbmenubar` VALUES ('7', '密码修改', '1', '2', '1,7', './admin/passwordedit.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('8', '新增用户', '1', '2', '1,8', './admin/usersadd.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('9', '建根类别', '2', '2', '2,9', './admin/tbtypeadd.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('10', '管理类别', '2', '2', '2,10', './tbtypelist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('11', '新增商品', '2', '2', '2,11', './admin/proadd.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('12', '管理商品', '2', '2', '2,12', './prolist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('13', '创建进货单', '3', '2', '3,13', './admin/ordermain.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('14', '管理进货单', '3', '2', '3,14', './orderheadlist', 'main', '2', '1');
INSERT INTO `tbmenubar` VALUES ('15', '销售开单', '4', '2', '4,15', './admin/ordermainforsale.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('16', '维护订单', '4', '2', '4,16', './orderheadlistforsale', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('17', '库存入库', '5', '2', '5,17', './admin/proinout.jsp?t=1', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('18', '商品出库', '5', '2', '5,18', './admin/proinout.jsp?t=-1', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('19', '商品查询', '5', '2', '5,19', 'prolistforsearch', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('20', '管理用户', '1', '2', '1,20', './userslist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('21', '新增角色', '1', '2', '1,21', './admin/roleadd.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('22', '角色管理', '1', '2', '1,22', './rolelist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('23', '入库管理', '0', '1', '23', '', null, '5', '0');
INSERT INTO `tbmenubar` VALUES ('24', '出库管理', '0', '1', '24', null, null, '6', '0');
INSERT INTO `tbmenubar` VALUES ('25', '明细查询', '5', '2', '5,25', './inoutlist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('26', '进货报表', '6', '2', '6,26', './admin/baobiao_jinhuo.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('27', '退换货管理', '0', '2', '1', null, null, '9', '1');
INSERT INTO `tbmenubar` VALUES ('28', '退换记录', '27', '2', '27,28', './admin/changeadd.jsp?t=1', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('29', '退货表单', '27', '2', '27,29', './changeaddprolist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('30', '销售报表', '6', '2', '6,30', './admin/baobiao_zhifangtu.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('31', '销售金额报表', '6', '2', '6,31', './admin/baobiao_bingzhuangtu.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('32', '销售数量报表', '6', '2', '6,32', './admin/baobiao_huanxingtu.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('33', '查询日志', '1', '2', '1,33', './tbloglist', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('34', '换货记录', '27', '2', '27,34', './admin/changeadd.jsp?t=-1', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('35', '供应商管理', '0', '1', '35', null, null, '10', '1');
INSERT INTO `tbmenubar` VALUES ('36', '供应商列表', '35', '2', '35,36', './gongyingshang', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('37', '新增供应商', '35', '2', '35,37', './admin/gongyingshangadd.jsp', 'main', '1', '1');
INSERT INTO `tbmenubar` VALUES ('38', '供应商报表分析', '35', '2', '35,38', './admin/gongyingshang_huanxingtu.jsp', 'main', '1', '1');

-- ----------------------------
-- Table structure for `tbnews`
-- ----------------------------
DROP TABLE IF EXISTS `tbnews`;
CREATE TABLE `tbnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `contents` text,
  `createtime` varchar(100) DEFAULT NULL,
  `typeid` varchar(11) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbnews
-- ----------------------------

-- ----------------------------
-- Table structure for `tborderhead`
-- ----------------------------
DROP TABLE IF EXISTS `tborderhead`;
CREATE TABLE `tborderhead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `stel` varchar(255) DEFAULT NULL,
  `saddress` varchar(255) DEFAULT NULL,
  `sumprice` decimal(11,0) DEFAULT '0',
  `memberid` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `ptime` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tborderhead
-- ----------------------------
INSERT INTO `tborderhead` VALUES ('1', '20200909103530414', '超级管理员', '15397600038', '四川成都总部', '5328', '1', '2020-09-09 10:35:30', null, null);
INSERT INTO `tborderhead` VALUES ('4', '20200915110428236', '小李管理员', '15397600038', '重庆巴南总部', '11949', '1', '2020-09-15 11:04:28', null, null);

-- ----------------------------
-- Table structure for `tborderitems`
-- ----------------------------
DROP TABLE IF EXISTS `tborderitems`;
CREATE TABLE `tborderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `imgurl` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tborderitems
-- ----------------------------
INSERT INTO `tborderitems` VALUES ('1', '20200909103530414', '1', '耐克男鞋', '888', '6', '20200908103837529.jpg');
INSERT INTO `tborderitems` VALUES ('4', '20200915110428236', '15', '耐克儿童女鞋', '399', '1', '20200915110119649.jpg');
INSERT INTO `tborderitems` VALUES ('5', '20200915110428236', '14', '特步儿童男鞋', '129', '1', '20200915110042868.jpg');
INSERT INTO `tborderitems` VALUES ('6', '20200915110428236', '13', '老北京女士布鞋', '280', '1', '20200915110001124.jpg');
INSERT INTO `tborderitems` VALUES ('7', '20200915110428236', '12', '香奈儿女士雪地靴', '1299', '1', '20200915105927254.jpg');
INSERT INTO `tborderitems` VALUES ('8', '20200915110428236', '11', '阿玛尼女士凉鞋', '699', '1', '20200915105852294.jpg');
INSERT INTO `tborderitems` VALUES ('9', '20200915110428236', '10', '红蜻蜓女士皮鞋', '2580', '1', '20200915105808930.jpg');
INSERT INTO `tborderitems` VALUES ('10', '20200915110428236', '9', '回力女士休闲鞋', '279', '1', '20200915105740145.jpg');
INSERT INTO `tborderitems` VALUES ('11', '20200915110428236', '8', '特步女士运动鞋', '299', '1', '20200915105706414.jpg');
INSERT INTO `tborderitems` VALUES ('12', '20200915110428236', '7', '老北京男士布鞋', '309', '1', '20200915105605537.jpg');
INSERT INTO `tborderitems` VALUES ('13', '20200915110428236', '6', '耐克男士雪地靴', '2799', '1', '20200915105535430.jpg');
INSERT INTO `tborderitems` VALUES ('14', '20200915110428236', '5', '阿迪达斯男士凉鞋', '349', '1', '20200915105457675.jpg');
INSERT INTO `tborderitems` VALUES ('15', '20200915110428236', '4', '卡琳男士皮鞋', '1519', '1', '20200915105415342.jpg');
INSERT INTO `tborderitems` VALUES ('16', '20200915110428236', '3', '婓尔男士休闲鞋', '610', '1', '20200915105321533.jpg');
INSERT INTO `tborderitems` VALUES ('17', '20200915110428236', '2', '特步男士运动鞋', '399', '1', '20200915105211273.jpg');

-- ----------------------------
-- Table structure for `tbproduct`
-- ----------------------------
DROP TABLE IF EXISTS `tbproduct`;
CREATE TABLE `tbproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proname` varchar(255) DEFAULT NULL,
  `pronum` varchar(255) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `descriptions` text,
  `address` varchar(255) DEFAULT NULL,
  `procount` int(11) DEFAULT '0',
  `imgurl` varchar(255) DEFAULT NULL,
  `procodeurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbproduct
-- ----------------------------
INSERT INTO `tbproduct` VALUES ('2', '特步男士运动鞋', 'nl399', '42', '399', '', '', '重庆', '0', '20200915105211273.jpg', '20200915110340179.jpg');
INSERT INTO `tbproduct` VALUES ('3', '婓尔男士休闲鞋', 'nx610', '43', '610', '', '', '重庆', '0', '20200915105321533.jpg', '20200915110327597.jpg');
INSERT INTO `tbproduct` VALUES ('4', '卡琳男士皮鞋', 'np1519', '44', '1519', '', '', '四川', '0', '20200915105415342.jpg', '20200915110318744.jpg');
INSERT INTO `tbproduct` VALUES ('5', '阿迪达斯男士凉鞋', 'nl349', '45', '349', '', '', '重庆', '0', '20200915105457675.jpg', '20200915110309873.jpg');
INSERT INTO `tbproduct` VALUES ('6', '耐克男士雪地靴', 'nx2799', '46', '2799', '', '', '河南', '0', '20200915105535430.jpg', '20200915110301358.jpg');
INSERT INTO `tbproduct` VALUES ('7', '老北京男士布鞋', 'nb309', '47', '309', '', '', '重庆', '0', '20200915105605537.jpg', '20200915110249579.jpg');
INSERT INTO `tbproduct` VALUES ('8', '特步女士运动鞋', 'ny299', '48', '299', '', '', '温州', '0', '20200915105706414.jpg', '20200915110236566.jpg');
INSERT INTO `tbproduct` VALUES ('9', '回力女士休闲鞋', 'nx279', '49', '279', '', '', '浙江', '0', '20200915105740145.jpg', '20200915110229267.jpg');
INSERT INTO `tbproduct` VALUES ('10', '红蜻蜓女士皮鞋', 'np2580', '50', '2580', '', '', '广东', '0', '20200915105808930.jpg', '20200915110221470.jpg');
INSERT INTO `tbproduct` VALUES ('11', '阿玛尼女士凉鞋', 'nl699', '51', '699', '', '', '重庆', '0', '20200915105852294.jpg', '20200915110215480.jpg');
INSERT INTO `tbproduct` VALUES ('12', '香奈儿女士雪地靴', 'nx1299', '52', '1299', '', '', '浙江', '0', '20200915105927254.jpg', '20200915110209134.jpg');
INSERT INTO `tbproduct` VALUES ('13', '老北京女士布鞋', 'nb280', '53', '280', '', '', '广东', '0', '20200915110001124.jpg', '20200915110202043.jpg');
INSERT INTO `tbproduct` VALUES ('14', '特步儿童男鞋', 'ne129', '55', '129', '', '', '四川', '0', '20200915110042868.jpg', '20200915110151894.jpg');
INSERT INTO `tbproduct` VALUES ('15', '耐克儿童女鞋', 'en399', '56', '399', '', '', '重庆', '52', '20200915110119649.jpg', '20200915110142028.jpg');

-- ----------------------------
-- Table structure for `tbrolehasmenu`
-- ----------------------------
DROP TABLE IF EXISTS `tbrolehasmenu`;
CREATE TABLE `tbrolehasmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) DEFAULT NULL,
  `rolename` varchar(255) DEFAULT NULL,
  `menuid` int(11) DEFAULT NULL,
  `menuname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbrolehasmenu
-- ----------------------------
INSERT INTO `tbrolehasmenu` VALUES ('93', '1', null, '22', null);
INSERT INTO `tbrolehasmenu` VALUES ('94', '1', null, '21', null);
INSERT INTO `tbrolehasmenu` VALUES ('95', '1', null, '20', null);
INSERT INTO `tbrolehasmenu` VALUES ('96', '1', null, '19', null);
INSERT INTO `tbrolehasmenu` VALUES ('97', '1', null, '18', null);
INSERT INTO `tbrolehasmenu` VALUES ('98', '1', null, '17', null);
INSERT INTO `tbrolehasmenu` VALUES ('99', '1', null, '16', null);
INSERT INTO `tbrolehasmenu` VALUES ('100', '1', null, '15', null);
INSERT INTO `tbrolehasmenu` VALUES ('101', '1', null, '14', null);
INSERT INTO `tbrolehasmenu` VALUES ('102', '1', null, '13', null);
INSERT INTO `tbrolehasmenu` VALUES ('103', '1', null, '12', null);
INSERT INTO `tbrolehasmenu` VALUES ('104', '1', null, '11', null);
INSERT INTO `tbrolehasmenu` VALUES ('105', '1', null, '10', null);
INSERT INTO `tbrolehasmenu` VALUES ('106', '1', null, '9', null);
INSERT INTO `tbrolehasmenu` VALUES ('107', '1', null, '8', null);
INSERT INTO `tbrolehasmenu` VALUES ('108', '1', null, '7', null);
INSERT INTO `tbrolehasmenu` VALUES ('109', '1', null, '6', null);
INSERT INTO `tbrolehasmenu` VALUES ('110', '1', null, '5', null);
INSERT INTO `tbrolehasmenu` VALUES ('111', '1', null, '4', null);
INSERT INTO `tbrolehasmenu` VALUES ('112', '1', null, '3', null);
INSERT INTO `tbrolehasmenu` VALUES ('113', '1', null, '2', null);
INSERT INTO `tbrolehasmenu` VALUES ('114', '1', null, '1', null);
INSERT INTO `tbrolehasmenu` VALUES ('115', '2', null, '22', null);
INSERT INTO `tbrolehasmenu` VALUES ('116', '2', null, '21', null);
INSERT INTO `tbrolehasmenu` VALUES ('117', '2', null, '20', null);
INSERT INTO `tbrolehasmenu` VALUES ('118', '2', null, '19', null);
INSERT INTO `tbrolehasmenu` VALUES ('119', '2', null, '18', null);
INSERT INTO `tbrolehasmenu` VALUES ('120', '2', null, '17', null);
INSERT INTO `tbrolehasmenu` VALUES ('121', '2', null, '16', null);
INSERT INTO `tbrolehasmenu` VALUES ('122', '2', null, '15', null);
INSERT INTO `tbrolehasmenu` VALUES ('123', '2', null, '14', null);
INSERT INTO `tbrolehasmenu` VALUES ('124', '2', null, '13', null);
INSERT INTO `tbrolehasmenu` VALUES ('125', '2', null, '12', null);
INSERT INTO `tbrolehasmenu` VALUES ('126', '2', null, '11', null);
INSERT INTO `tbrolehasmenu` VALUES ('127', '2', null, '10', null);
INSERT INTO `tbrolehasmenu` VALUES ('128', '2', null, '9', null);
INSERT INTO `tbrolehasmenu` VALUES ('129', '2', null, '8', null);
INSERT INTO `tbrolehasmenu` VALUES ('130', '2', null, '7', null);
INSERT INTO `tbrolehasmenu` VALUES ('131', '2', null, '6', null);
INSERT INTO `tbrolehasmenu` VALUES ('132', '2', null, '5', null);
INSERT INTO `tbrolehasmenu` VALUES ('133', '2', null, '4', null);
INSERT INTO `tbrolehasmenu` VALUES ('134', '2', null, '3', null);
INSERT INTO `tbrolehasmenu` VALUES ('135', '2', null, '2', null);
INSERT INTO `tbrolehasmenu` VALUES ('136', '2', null, '1', null);
INSERT INTO `tbrolehasmenu` VALUES ('137', '3', null, '3', null);
INSERT INTO `tbrolehasmenu` VALUES ('138', '3', null, '14', null);
INSERT INTO `tbrolehasmenu` VALUES ('139', '3', null, '13', null);
INSERT INTO `tbrolehasmenu` VALUES ('140', '1', null, '24', null);
INSERT INTO `tbrolehasmenu` VALUES ('141', '1', null, '23', null);
INSERT INTO `tbrolehasmenu` VALUES ('142', '1', null, '25', null);
INSERT INTO `tbrolehasmenu` VALUES ('143', '1', null, '26', null);
INSERT INTO `tbrolehasmenu` VALUES ('144', '4', null, '19', null);
INSERT INTO `tbrolehasmenu` VALUES ('145', '4', null, '5', null);
INSERT INTO `tbrolehasmenu` VALUES ('146', '5', null, '6', null);
INSERT INTO `tbrolehasmenu` VALUES ('147', '5', null, '26', null);
INSERT INTO `tbrolehasmenu` VALUES ('148', '1', null, '27', null);
INSERT INTO `tbrolehasmenu` VALUES ('149', '1', null, '28', null);
INSERT INTO `tbrolehasmenu` VALUES ('150', '1', null, '29', null);
INSERT INTO `tbrolehasmenu` VALUES ('151', '1', null, '30', null);
INSERT INTO `tbrolehasmenu` VALUES ('152', '1', null, '32', null);
INSERT INTO `tbrolehasmenu` VALUES ('153', '1', null, '31', null);
INSERT INTO `tbrolehasmenu` VALUES ('154', '1', null, '33', null);
INSERT INTO `tbrolehasmenu` VALUES ('155', '1', null, '34', null);
INSERT INTO `tbrolehasmenu` VALUES ('156', '1', null, '38', null);
INSERT INTO `tbrolehasmenu` VALUES ('157', '1', null, '37', null);
INSERT INTO `tbrolehasmenu` VALUES ('158', '1', null, '36', null);
INSERT INTO `tbrolehasmenu` VALUES ('159', '1', null, '35', null);

-- ----------------------------
-- Table structure for `tbroles`
-- ----------------------------
DROP TABLE IF EXISTS `tbroles`;
CREATE TABLE `tbroles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbroles
-- ----------------------------
INSERT INTO `tbroles` VALUES ('1', '超级管理员', '超级管理员');
INSERT INTO `tbroles` VALUES ('2', '管理员', '管理员');
INSERT INTO `tbroles` VALUES ('3', '经销商', '经销商');
INSERT INTO `tbroles` VALUES ('4', '仓库管理员', '只能查询商品库存信息');
INSERT INTO `tbroles` VALUES ('5', '采购员', '采购员');

-- ----------------------------
-- Table structure for `tbsaleorderhead`
-- ----------------------------
DROP TABLE IF EXISTS `tbsaleorderhead`;
CREATE TABLE `tbsaleorderhead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `stel` varchar(255) DEFAULT NULL,
  `saddress` varchar(255) DEFAULT NULL,
  `sumprice` decimal(11,0) DEFAULT '0',
  `memberid` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `ptime` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbsaleorderhead
-- ----------------------------
INSERT INTO `tbsaleorderhead` VALUES ('1', '20200908165616204', '超级管理员', '15397600038', '四川成都总部', '4440', '1', '2020-09-08 16:56:16', null, null);
INSERT INTO `tbsaleorderhead` VALUES ('2', '20200908165832700', '超级管理员', '15397600038', '四川成都总部', '1776', '1', '2020-09-08 16:58:32', null, null);
INSERT INTO `tbsaleorderhead` VALUES ('6', '20200909114822705', '超级管理员', '15397600038', '四川成都总部', '1776', '1', '2020-09-09 11:48:22', null, null);
INSERT INTO `tbsaleorderhead` VALUES ('7', '20200915110511050', '小李管理员', '15397600038', '重庆巴南总部', '11949', '1', '2020-09-15 11:05:11', null, null);
INSERT INTO `tbsaleorderhead` VALUES ('8', '20200917164126183', '超级管理员', '15397600038', '四川成都总部', '7714', '1', '2020-09-17 16:41:26', null, null);

-- ----------------------------
-- Table structure for `tbsaleorderitems`
-- ----------------------------
DROP TABLE IF EXISTS `tbsaleorderitems`;
CREATE TABLE `tbsaleorderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `imgurl` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbsaleorderitems
-- ----------------------------
INSERT INTO `tbsaleorderitems` VALUES ('1', '20200908165616204', '1', '耐克男鞋', '888', '5', '20200908103837529.jpg');
INSERT INTO `tbsaleorderitems` VALUES ('2', '20200908165832700', '1', '耐克男鞋', '888', '2', '20200908103837529.jpg');
INSERT INTO `tbsaleorderitems` VALUES ('6', '20200909114822705', '1', '耐克男鞋', '888', '2', '20200908103837529.jpg');
INSERT INTO `tbsaleorderitems` VALUES ('7', '20200915110511050', '15', '耐克儿童女鞋', '399', '1', '20200915110119649.jpg');
INSERT INTO `tbsaleorderitems` VALUES ('8', '20200915110511050', '14', '特步儿童男鞋', '129', '1', '20200915110042868.jpg');
INSERT INTO `tbsaleorderitems` VALUES ('9', '20200915110511050', '13', '老北京女士布鞋', '280', '1', '20200915110001124.jpg');
INSERT INTO `tbsaleorderitems` VALUES ('10', '20200915110511050', '12', '香奈儿女士雪地靴', '1299', '1', '20200915105927254.jpg');
INSERT INTO `tbsaleorderitems` VALUES ('11', '20200915110511050', '11', '阿玛尼女士凉鞋', '699', '1', '20200915105852294.jpg');
INSERT INTO `tbsaleorderitems` VALUES ('12', '20200915110511050', '10', '红蜻蜓女士皮鞋', '2580', '1', '20200915105808930.jpg');
INSERT INTO `tbsaleorderitems` VALUES ('13', '20200915110511050', '9', '回力女士休闲鞋', '279', '1', '20200915105740145.jpg');
INSERT INTO `tbsaleorderitems` VALUES ('14', '20200915110511050', '8', '特步女士运动鞋', '299', '1', '20200915105706414.jpg');
INSERT INTO `tbsaleorderitems` VALUES ('15', '20200915110511050', '7', '老北京男士布鞋', '309', '1', '20200915105605537.jpg');
INSERT INTO `tbsaleorderitems` VALUES ('16', '20200915110511050', '6', '耐克男士雪地靴', '2799', '1', '20200915105535430.jpg');
INSERT INTO `tbsaleorderitems` VALUES ('17', '20200915110511050', '5', '阿迪达斯男士凉鞋', '349', '1', '20200915105457675.jpg');
INSERT INTO `tbsaleorderitems` VALUES ('18', '20200915110511050', '4', '卡琳男士皮鞋', '1519', '1', '20200915105415342.jpg');
INSERT INTO `tbsaleorderitems` VALUES ('19', '20200915110511050', '3', '婓尔男士休闲鞋', '610', '1', '20200915105321533.jpg');
INSERT INTO `tbsaleorderitems` VALUES ('20', '20200915110511050', '2', '特步男士运动鞋', '399', '1', '20200915105211273.jpg');
INSERT INTO `tbsaleorderitems` VALUES ('21', '20200917164126183', '15', '耐克儿童女鞋', '399', '2', '20200915110119649.jpg');
INSERT INTO `tbsaleorderitems` VALUES ('22', '20200917164126183', '13', '老北京女士布鞋', '280', '3', '20200915110001124.jpg');
INSERT INTO `tbsaleorderitems` VALUES ('23', '20200917164126183', '4', '卡琳男士皮鞋', '1519', '4', '20200915105415342.jpg');

-- ----------------------------
-- Table structure for `tbshoppingcar`
-- ----------------------------
DROP TABLE IF EXISTS `tbshoppingcar`;
CREATE TABLE `tbshoppingcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionid` varchar(32) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbshoppingcar
-- ----------------------------
INSERT INTO `tbshoppingcar` VALUES ('75', '41EFB73C20B2B946AB68D8917961A513', 'MateBook 13', '21', '1', '2020-08-26 15:39:18', '20200824172055164.png', '5200');
INSERT INTO `tbshoppingcar` VALUES ('76', '41EFB73C20B2B946AB68D8917961A513', '戴尔DELL灵越5000', '20', '1', '2020-08-26 15:39:18', '20200824171708716.png', '4200');
INSERT INTO `tbshoppingcar` VALUES ('77', '4D3F82D2628907A97A964080E92AD731', '华为MateBook14', '18', '1', '2020-09-05 15:26:09', '20200824171445193.png', '5200');
INSERT INTO `tbshoppingcar` VALUES ('81', '7C4D376699760DAC4798964D4EF0B52C', '耐克男鞋', '1', '2', '2020-09-08 11:22:29', '20200908103837529.jpg', '888');
INSERT INTO `tbshoppingcar` VALUES ('83', 'CB4E7E1C2F7A2F938FA89B0A98D7E436', '耐克男鞋', '1', '6', '2020-09-08 15:08:08', '20200908103837529.jpg', '888');
INSERT INTO `tbshoppingcar` VALUES ('84', '4BA754C9A4FA7F9D92324DEE1257E93A', '耐克男鞋', '1', '11', '2020-09-08 15:22:47', '20200908103837529.jpg', '888');
INSERT INTO `tbshoppingcar` VALUES ('85', 'DB058E2455CABC662855A43492C30ED9', '回力女士休闲鞋', '9', '1', '2020-09-16 11:20:59', '20200915105740145.jpg', '279');
INSERT INTO `tbshoppingcar` VALUES ('86', 'DB058E2455CABC662855A43492C30ED9', '卡琳男士皮鞋', '4', '1', '2020-09-16 11:20:59', '20200915105415342.jpg', '1519');

-- ----------------------------
-- Table structure for `tbshoppingcarforsale`
-- ----------------------------
DROP TABLE IF EXISTS `tbshoppingcarforsale`;
CREATE TABLE `tbshoppingcarforsale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionid` varchar(32) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbshoppingcarforsale
-- ----------------------------
INSERT INTO `tbshoppingcarforsale` VALUES ('5', 'D4AB5CAEAC3491CB0397D1E6FB07E875', '耐克男鞋', '1', '4', '2020-09-08 17:18:18', '20200908103837529.jpg', '888');
INSERT INTO `tbshoppingcarforsale` VALUES ('6', '5A184C951926DF31A3C51EB19D3F4382', '耐克男鞋', '1', '2', '2020-09-08 21:09:40', '20200908103837529.jpg', '888');
INSERT INTO `tbshoppingcarforsale` VALUES ('7', '9078B54AC19B2E78D4C205B948470FFB', '耐克男鞋', '1', '8', '2020-09-09 08:57:05', '20200908103837529.jpg', '888');
INSERT INTO `tbshoppingcarforsale` VALUES ('8', '8A32A36C84AF0208410AEDE01F911D36', '耐克男鞋', '1', '2', '2020-09-09 11:48:14', '20200908103837529.jpg', '888');
INSERT INTO `tbshoppingcarforsale` VALUES ('9', '53A330DA14FFA1564A376677257A894F', '耐克儿童女鞋', '15', '1', '2020-09-15 11:04:49', '20200915110119649.jpg', '399');
INSERT INTO `tbshoppingcarforsale` VALUES ('10', '53A330DA14FFA1564A376677257A894F', '特步儿童男鞋', '14', '1', '2020-09-15 11:04:49', '20200915110042868.jpg', '129');
INSERT INTO `tbshoppingcarforsale` VALUES ('11', '53A330DA14FFA1564A376677257A894F', '老北京女士布鞋', '13', '1', '2020-09-15 11:04:49', '20200915110001124.jpg', '280');
INSERT INTO `tbshoppingcarforsale` VALUES ('12', '53A330DA14FFA1564A376677257A894F', '香奈儿女士雪地靴', '12', '1', '2020-09-15 11:04:49', '20200915105927254.jpg', '1299');
INSERT INTO `tbshoppingcarforsale` VALUES ('13', '53A330DA14FFA1564A376677257A894F', '阿玛尼女士凉鞋', '11', '1', '2020-09-15 11:04:49', '20200915105852294.jpg', '699');
INSERT INTO `tbshoppingcarforsale` VALUES ('14', '53A330DA14FFA1564A376677257A894F', '红蜻蜓女士皮鞋', '10', '1', '2020-09-15 11:04:49', '20200915105808930.jpg', '2580');
INSERT INTO `tbshoppingcarforsale` VALUES ('15', '53A330DA14FFA1564A376677257A894F', '回力女士休闲鞋', '9', '1', '2020-09-15 11:04:49', '20200915105740145.jpg', '279');
INSERT INTO `tbshoppingcarforsale` VALUES ('16', '53A330DA14FFA1564A376677257A894F', '特步女士运动鞋', '8', '1', '2020-09-15 11:04:49', '20200915105706414.jpg', '299');
INSERT INTO `tbshoppingcarforsale` VALUES ('17', '53A330DA14FFA1564A376677257A894F', '老北京男士布鞋', '7', '1', '2020-09-15 11:04:49', '20200915105605537.jpg', '309');
INSERT INTO `tbshoppingcarforsale` VALUES ('18', '53A330DA14FFA1564A376677257A894F', '耐克男士雪地靴', '6', '1', '2020-09-15 11:04:49', '20200915105535430.jpg', '2799');
INSERT INTO `tbshoppingcarforsale` VALUES ('19', '53A330DA14FFA1564A376677257A894F', '阿迪达斯男士凉鞋', '5', '1', '2020-09-15 11:04:49', '20200915105457675.jpg', '349');
INSERT INTO `tbshoppingcarforsale` VALUES ('20', '53A330DA14FFA1564A376677257A894F', '卡琳男士皮鞋', '4', '1', '2020-09-15 11:04:49', '20200915105415342.jpg', '1519');
INSERT INTO `tbshoppingcarforsale` VALUES ('21', '53A330DA14FFA1564A376677257A894F', '婓尔男士休闲鞋', '3', '1', '2020-09-15 11:04:49', '20200915105321533.jpg', '610');
INSERT INTO `tbshoppingcarforsale` VALUES ('22', '53A330DA14FFA1564A376677257A894F', '特步男士运动鞋', '2', '1', '2020-09-15 11:04:49', '20200915105211273.jpg', '399');
INSERT INTO `tbshoppingcarforsale` VALUES ('23', 'DB058E2455CABC662855A43492C30ED9', '特步儿童男鞋', '14', '1', '2020-09-16 11:39:42', '20200915110042868.jpg', '129');
INSERT INTO `tbshoppingcarforsale` VALUES ('24', 'DB058E2455CABC662855A43492C30ED9', '老北京女士布鞋', '13', '1', '2020-09-16 11:39:43', '20200915110001124.jpg', '280');
INSERT INTO `tbshoppingcarforsale` VALUES ('25', '16094AC67909CD5FC6437086C79F54B2', '耐克儿童女鞋', '15', '2', '2020-09-17 16:41:14', '20200915110119649.jpg', '399');
INSERT INTO `tbshoppingcarforsale` VALUES ('26', '16094AC67909CD5FC6437086C79F54B2', '老北京女士布鞋', '13', '3', '2020-09-17 16:41:14', '20200915110001124.jpg', '280');
INSERT INTO `tbshoppingcarforsale` VALUES ('28', '16094AC67909CD5FC6437086C79F54B2', '卡琳男士皮鞋', '4', '4', '2020-09-17 16:41:14', '20200915105415342.jpg', '1519');

-- ----------------------------
-- Table structure for `tbsupplier`
-- ----------------------------
DROP TABLE IF EXISTS `tbsupplier`;
CREATE TABLE `tbsupplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `companyname` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbsupplier
-- ----------------------------

-- ----------------------------
-- Table structure for `tbtype`
-- ----------------------------
DROP TABLE IF EXISTS `tbtype`;
CREATE TABLE `tbtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(255) DEFAULT NULL,
  `parentname` varchar(255) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `fullpath` varchar(255) DEFAULT NULL,
  `levelnum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbtype
-- ----------------------------
INSERT INTO `tbtype` VALUES ('31', '电视机', '家用电器', '1', '家用电器/电视机', '1');
INSERT INTO `tbtype` VALUES ('32', '电冰箱', '家用电器', '1', '家用电器/电冰箱', '1');
INSERT INTO `tbtype` VALUES ('35', 'TCL', '电视机', '31', '家用电器/电视机/TCL', '2');
INSERT INTO `tbtype` VALUES ('36', '小米', '电视机', '31', '家用电器/电视机/小米', '2');
INSERT INTO `tbtype` VALUES ('39', '男鞋', '/', '0', '/男鞋', '0');
INSERT INTO `tbtype` VALUES ('40', '女鞋', '/', '0', '/女鞋', '0');
INSERT INTO `tbtype` VALUES ('42', '运动鞋', '男鞋', '39', '/男鞋/运动鞋', '1');
INSERT INTO `tbtype` VALUES ('43', '休闲鞋', '男鞋', '39', '/男鞋/休闲鞋', '1');
INSERT INTO `tbtype` VALUES ('44', '皮鞋', '男鞋', '39', '/男鞋/皮鞋', '1');
INSERT INTO `tbtype` VALUES ('45', '凉鞋', '男鞋', '39', '/男鞋/凉鞋', '1');
INSERT INTO `tbtype` VALUES ('46', '雪地靴', '男鞋', '39', '/男鞋/雪地靴', '1');
INSERT INTO `tbtype` VALUES ('47', '布鞋', '男鞋', '39', '/男鞋/布鞋', '1');
INSERT INTO `tbtype` VALUES ('48', '运动鞋', '女鞋', '40', '/女鞋/运动鞋', '1');
INSERT INTO `tbtype` VALUES ('49', '休闲鞋', '女鞋', '40', '/女鞋/休闲鞋', '1');
INSERT INTO `tbtype` VALUES ('50', '皮鞋', '女鞋', '40', '/女鞋/皮鞋', '1');
INSERT INTO `tbtype` VALUES ('51', '凉鞋', '女鞋', '40', '/女鞋/凉鞋', '1');
INSERT INTO `tbtype` VALUES ('52', '雪地靴', '女鞋', '40', '/女鞋/雪地靴', '1');
INSERT INTO `tbtype` VALUES ('53', '布鞋', '女鞋', '40', '/女鞋/布鞋', '1');
INSERT INTO `tbtype` VALUES ('54', '童鞋', '/', '0', '/童鞋', '0');
INSERT INTO `tbtype` VALUES ('55', '男童', '童鞋', '54', '/童鞋/男童', '1');
INSERT INTO `tbtype` VALUES ('56', '女童', '童鞋', '54', '/童鞋/女童', '1');

-- ----------------------------
-- Table structure for `tbuserhasrole`
-- ----------------------------
DROP TABLE IF EXISTS `tbuserhasrole`;
CREATE TABLE `tbuserhasrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  `rolename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbuserhasrole
-- ----------------------------
INSERT INTO `tbuserhasrole` VALUES ('13', '1', null, '1', null);
INSERT INTO `tbuserhasrole` VALUES ('14', '12', null, '3', null);
INSERT INTO `tbuserhasrole` VALUES ('15', '13', null, '4', null);
INSERT INTO `tbuserhasrole` VALUES ('16', '13', null, '5', null);
INSERT INTO `tbuserhasrole` VALUES ('17', '8', null, '1', null);
INSERT INTO `tbuserhasrole` VALUES ('18', '8', null, '5', null);
INSERT INTO `tbuserhasrole` VALUES ('19', '8', null, '4', null);
INSERT INTO `tbuserhasrole` VALUES ('20', '8', null, '3', null);
INSERT INTO `tbuserhasrole` VALUES ('21', '8', null, '2', null);

-- ----------------------------
-- Table structure for `tbusers`
-- ----------------------------
DROP TABLE IF EXISTS `tbusers`;
CREATE TABLE `tbusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员',
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `truename` varchar(20) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `memo` varchar(255) DEFAULT NULL,
  `creatorid` int(11) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbusers
-- ----------------------------
INSERT INTO `tbusers` VALUES ('1', 'admin', '111111', '超级管理员', '15397600038', '四川成都总部', null, null);
INSERT INTO `tbusers` VALUES ('2', 'tangyan05', '123456', '张三', '15397600036', '上海江浦路店', null, null);
INSERT INTO `tbusers` VALUES ('7', 'feifei', '123456', '郭靖', '15988886666', '北京复兴门外大街10086号', null, null);
INSERT INTO `tbusers` VALUES ('8', 'tangyan03', '123456', '刘湘', '15397600035', '重庆来福士广场店', null, null);
INSERT INTO `tbusers` VALUES ('11', 'tangyan02', '123456', '汤燕', '15397600033', '成都经销商火车南站西路店', null, null);
INSERT INTO `tbusers` VALUES ('12', 'tangyan01', '123456', '汤燕', '15397600032', '成都天府广场店', null, null);
INSERT INTO `tbusers` VALUES ('13', 'qingzewei', '123456', 'qingzewei', '13500000001', '测试账号', null, null);

-- ----------------------------
-- View structure for `v_product`
-- ----------------------------
DROP VIEW IF EXISTS `v_product`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_product` AS select `tbproduct`.`id` AS `id`,`tbproduct`.`proname` AS `proname`,`tbproduct`.`pronum` AS `pronum`,`tbproduct`.`typeid` AS `typeid`,`tbproduct`.`price` AS `price`,`tbproduct`.`brief` AS `brief`,`tbproduct`.`descriptions` AS `descriptions`,`tbproduct`.`address` AS `address`,`tbproduct`.`procount` AS `procount`,`tbproduct`.`imgurl` AS `imgurl`,`tbproduct`.`procodeurl` AS `procodeurl`,`tbtype`.`levelnum` AS `levelnum`,`tbtype`.`typename` AS `typename`,`tbtype`.`fullpath` AS `fullpath` from (`tbproduct` left join `tbtype` on((`tbproduct`.`typeid` = `tbtype`.`id`))) ;

-- ----------------------------
-- View structure for `v_saleitems`
-- ----------------------------
DROP VIEW IF EXISTS `v_saleitems`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_saleitems` AS select `tbsaleorderitems`.`id` AS `id`,`tbsaleorderitems`.`orderid` AS `orderid`,`tbsaleorderitems`.`proid` AS `proid`,`tbsaleorderitems`.`proname` AS `proname`,`tbsaleorderitems`.`price` AS `price`,`tbsaleorderitems`.`procount` AS `procount`,`tbsaleorderitems`.`imgurl` AS `imgurl`,`tbsaleorderhead`.`ctime` AS `ctime` from (`tbsaleorderitems` left join `tbsaleorderhead` on((`tbsaleorderitems`.`orderid` = `tbsaleorderhead`.`orderid`))) ;
