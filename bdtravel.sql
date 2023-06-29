/*
Navicat MySQL Data Transfer

Source Server         : javademo
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : bdtravel

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2023-05-14 08:21:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `managerid` varchar(50) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`managerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', 'admin', '123', '0');

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `paid` double DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `no` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('1', '1', '1', '1', '1', 'ef628cd7-e007-4452-a0ae-2e23662b7d94', '515583d4-923b-497c-ba5d-6aa178e5fdcd', '2');
INSERT INTO `order` VALUES ('2', '1', '1', '99', '1', '4db4f1bc-c650-459b-a26f-b46f342ae52e', '7f7ddb49-a2ce-4ef8-b9c4-f8fa043b056d', '0');

-- ----------------------------
-- Table structure for `scenic`
-- ----------------------------
DROP TABLE IF EXISTS `scenic`;
CREATE TABLE `scenic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `theme` varchar(200) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  `feature` varchar(500) DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL,
  `sales` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scenic
-- ----------------------------
INSERT INTO `scenic` VALUES ('1', '水外洞天公园', '湖光山色', '景秀区海琴湾总站', '真的非常非常美，绝对不枉此行！', '/image/scenic/pic/byd.png', '0');
INSERT INTO `scenic` VALUES ('2', '景秀动物园 ', '湖光山色', '景秀区海琴湾总站', '真的非常非常美，绝对不枉此行！', '/image/scenic/pic/bys.png', '0');
INSERT INTO `scenic` VALUES ('3', '野生动物园 ', '田园度假', '景秀区海琴湾总站', '真的非常非常美，绝对不枉此行！', '/image/scenic/pic/ds.png', '0');
INSERT INTO `scenic` VALUES ('4', '野三坡白洋淀  ', '登山徒步', '景秀区海琴湾总站', '真的非常非常美，绝对不枉此行！', '/image/scenic/pic/dxg.png', '0');

-- ----------------------------
-- Table structure for `tastyfood`
-- ----------------------------
DROP TABLE IF EXISTS `tastyfood`;
CREATE TABLE `tastyfood` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `describe` varchar(200) DEFAULT NULL,
  `commend` varchar(200) DEFAULT NULL,
  `pic` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tastyfood
-- ----------------------------
INSERT INTO `tastyfood` VALUES ('1', '香辣鸡煲', '黄焖鸡米饭又叫香辣鸡煲或浓汁香辣鸡煲饭。色香味美，口感鲜嫩，透味不粘腻，香味浓郁。', '鸡米饭天祥路店；', '/image/foodpic/hc.png');
INSERT INTO `tastyfood` VALUES ('2', '牛肉罩饼', '牛肉罩饼，色香味美，口感鲜嫩，透味不粘腻，香味浓郁。', '晓遥之家菜馆；老保定菜馆；', '/image/foodpic/zb.png');
INSERT INTO `tastyfood` VALUES ('3', '浓郁豆腐', '浓郁豆腐，色香味美，口感鲜嫩，透味不粘腻，香味浓郁。', '味多好家常菜；', '/image/foodpic/zddf.jpg');
INSERT INTO `tastyfood` VALUES ('4', '牛肉罩饼', '牛肉罩饼，色香味美，口感鲜嫩，透味不粘腻，香味浓郁。', '牛肉罩饼裕华店；', '/image/foodpic/zb.png');

-- ----------------------------
-- Table structure for `ticket`
-- ----------------------------
DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `explain` varchar(500) DEFAULT NULL,
  `dprice` double DEFAULT NULL,
  `mprice` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ticket
-- ----------------------------
INSERT INTO `ticket` VALUES ('1', '1', '水外洞天公园', '成人需购买门票，12岁以下儿童免门票。', '100', '99');
INSERT INTO `ticket` VALUES ('2', '2', '景秀动物园', '成人需购买门票，12岁以下儿童免门票。', '58', '28');
INSERT INTO `ticket` VALUES ('3', '3', '野生动物园', '成人需购买门票，12岁以下儿童免门票。', '199', '98');
INSERT INTO `ticket` VALUES ('4', '4', '野三坡白洋淀', '成人需购买门票，12岁以下儿童免门票。', '588', '88');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` varchar(50) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'neutrino', '202cb962ac59075b964b07152d234b70', 'neutrino', null, null, '2022-09-07', 'female', '1', null);
