/*
Navicat MySQL Data Transfer

Source Server         : phpstudy
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : mingshop

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-07-15 17:26:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for qi_brand
-- ----------------------------
DROP TABLE IF EXISTS `qi_brand`;
CREATE TABLE `qi_brand` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_brand
-- ----------------------------
INSERT INTO `qi_brand` VALUES ('1', '苹果', '乔布斯的苹果', '2016-05-16 11:01:13', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_brand` VALUES ('2', '小米', '雷军的小米', '2016-05-16 11:01:59', '0000-00-00 00:00:00', '1');

-- ----------------------------
-- Table structure for qi_format
-- ----------------------------
DROP TABLE IF EXISTS `qi_format`;
CREATE TABLE `qi_format` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_format
-- ----------------------------
INSERT INTO `qi_format` VALUES ('1', '颜色', '保留规格', '2016-05-16 15:00:57', '2016-05-17 09:51:34', '1');
INSERT INTO `qi_format` VALUES ('2', '尺寸', '1', '2016-05-17 09:47:45', '2016-06-17 15:33:27', '1');
INSERT INTO `qi_format` VALUES ('3', '内存', '', '2016-05-17 10:13:28', '2016-06-17 10:00:12', '1');
INSERT INTO `qi_format` VALUES ('4', '口味', '', '2016-07-15 14:36:11', '2016-07-15 14:37:06', '1');

-- ----------------------------
-- Table structure for qi_format_value
-- ----------------------------
DROP TABLE IF EXISTS `qi_format_value`;
CREATE TABLE `qi_format_value` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `remark` varchar(20) DEFAULT NULL,
  `format_id` int(20) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_format_value
-- ----------------------------
INSERT INTO `qi_format_value` VALUES ('1', '乳白色', '255,251,240', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('2', '白色', '255,255,255', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('3', '米白色', '238,222,176', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('4', '浅灰色', '228,228,228', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('5', '深灰色', '102,102,102', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('6', '灰色', '128,128,128', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('7', '银色', '192,192,192', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('8', '黑色', '0,0,0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('9', '桔红色', '255,117,0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('10', '玫红色', '223,27,118', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('11', '粉红色', '255,182,193', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('12', '红色', '255,0,0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('13', '藕色', '238,208,216', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('14', '西瓜红', '240,86,84', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('15', '酒红色', '153,0,0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('16', '卡其色', '195,176,145', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('17', '姜黄色', '255,199,115', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('18', '明黄色', '255,255,1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('19', '杏色', '247,238,214', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('20', '柠檬黄', '255, 236, 67', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('21', '桔色', '255,165,0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('22', '浅黄色', '250,255,114', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('23', '荧光黄', '234,255,86', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('24', '金色', '255,215,0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('25', '香槟色', '255,249,177', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('26', '黄色', '255,255,0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('27', '军绿色', '93,118,42', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('28', '墨绿色', '66,204,33', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('29', '浅绿色', '152,251,152', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('30', '绿色', '0,128,0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('31', '翠绿色', '10,163,68', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('32', '荧光绿', '35,250,7', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('33', '青色', '0,224,158', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('34', '天蓝色', '68,206,246', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('35', '孔雀蓝', '0,164,197', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('36', '宝蓝色', '75,92,196', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('37', '浅蓝色', '210,240,244', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('38', '深蓝色', '4,22,144', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('39', '湖蓝色', '48,223,243', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('40', '蓝色', '0,0,254', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('41', '藏青色', '46,78,126', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('42', '浅紫色', '237,224,230', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('43', '深紫色', '67,6,83', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('44', '紫红色', '139,0,98', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('45', '紫罗兰', '183,172,228', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('46', '紫色', '128,0,128', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('47', '咖啡色', '96,57,18', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('48', '巧克力色', '96,57,18', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('49', '栗色', '96,40,30', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('50', '浅棕色', '179,92,68', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('51', '深卡其布色', '189,183,107', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('52', '深棕色', '124,75,0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('53', '褐色', '133,91,0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('54', '驼色', '168,132,98', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('55', '花色', '255,255,255', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('56', '透明', '255,255,255', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('57', 'S', null, '2', '2016-06-17 09:59:39', '2016-06-17 15:33:27', '1');
INSERT INTO `qi_format_value` VALUES ('58', 'M', null, '2', '2016-06-17 09:59:52', '2016-06-17 15:33:27', '1');
INSERT INTO `qi_format_value` VALUES ('59', 'L', null, '2', '2016-06-17 09:59:52', '2016-06-17 15:33:27', '1');
INSERT INTO `qi_format_value` VALUES ('60', 'XL', null, '2', '2016-06-17 09:59:52', '2016-06-17 15:33:27', '1');
INSERT INTO `qi_format_value` VALUES ('61', '1G', null, '3', '2016-06-17 10:00:12', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('62', '2G', null, '3', '2016-06-17 10:00:12', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('63', '4G', null, '3', '2016-06-17 10:00:12', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('64', '8G', null, '3', '2016-06-17 10:00:12', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('65', '均码', null, '2', '2016-06-17 15:33:27', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_format_value` VALUES ('66', '1', null, '4', '2016-07-15 14:36:19', '2016-07-15 14:37:06', '1');
INSERT INTO `qi_format_value` VALUES ('67', '2', null, '4', '2016-07-15 14:36:19', '2016-07-15 14:37:06', '1');
INSERT INTO `qi_format_value` VALUES ('70', '3', null, '4', '2016-07-15 14:36:46', '2016-07-15 14:37:06', '1');
INSERT INTO `qi_format_value` VALUES ('69', '4', null, '4', '2016-07-15 14:36:30', '2016-07-15 14:37:06', '1');

-- ----------------------------
-- Table structure for qi_goods
-- ----------------------------
DROP TABLE IF EXISTS `qi_goods`;
CREATE TABLE `qi_goods` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `goods_no` varchar(50) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL COMMENT '副标题',
  `type_id` int(20) NOT NULL DEFAULT '0',
  `money_in` decimal(10,2) NOT NULL DEFAULT '0.00',
  `money_out` decimal(10,2) NOT NULL DEFAULT '0.00',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_status` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1上架2下架',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_goods
-- ----------------------------
INSERT INTO `qi_goods` VALUES ('1', '丝袜10', 'g1231231231', '牛逼的丝袜', '2', '11.00', '15.00', '2016-06-21 16:39:05', '2016-07-15 17:12:03', '2016-07-15 15:35:26', '1');

-- ----------------------------
-- Table structure for qi_goods_amount
-- ----------------------------
DROP TABLE IF EXISTS `qi_goods_amount`;
CREATE TABLE `qi_goods_amount` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `goods_id` int(20) NOT NULL DEFAULT '0',
  `format1` int(20) NOT NULL DEFAULT '0',
  `format2` int(20) NOT NULL DEFAULT '0',
  `format3` int(20) NOT NULL DEFAULT '0',
  `format4` int(20) NOT NULL DEFAULT '0',
  `format5` int(20) NOT NULL DEFAULT '0',
  `format1_remark` varchar(20) DEFAULT NULL,
  `format2_remark` varchar(20) DEFAULT NULL,
  `format3_remark` varchar(20) DEFAULT NULL,
  `format4_remark` varchar(20) DEFAULT NULL,
  `format5_remark` varchar(20) DEFAULT NULL,
  `amount` int(20) NOT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_goods_amount
-- ----------------------------
INSERT INTO `qi_goods_amount` VALUES ('1', '1', '8', '57', '0', '0', '0', null, null, null, null, null, '101', '20.00', '2016-06-21 16:39:05', '2016-07-15 17:12:03', '1');
INSERT INTO `qi_goods_amount` VALUES ('2', '1', '8', '58', '0', '0', '0', null, null, null, null, null, '150', '20.00', '2016-06-21 16:39:05', '2016-07-15 17:12:03', '1');
INSERT INTO `qi_goods_amount` VALUES ('3', '1', '56', '57', '0', '0', '0', null, null, null, null, null, '200', '21.00', '2016-06-21 16:39:05', '2016-07-15 17:12:03', '1');
INSERT INTO `qi_goods_amount` VALUES ('4', '1', '56', '58', '0', '0', '0', null, null, null, null, null, '210', '21.00', '2016-06-21 16:39:05', '2016-07-15 17:12:03', '1');
INSERT INTO `qi_goods_amount` VALUES ('9', '1', '8', '59', '0', '0', '0', null, null, null, null, null, '11', '10.00', '2016-06-22 17:28:01', '2016-07-15 17:12:03', '1');
INSERT INTO `qi_goods_amount` VALUES ('10', '1', '56', '59', '0', '0', '0', null, null, null, null, null, '123', '10.00', '2016-06-22 17:28:01', '2016-07-15 17:12:03', '1');

-- ----------------------------
-- Table structure for qi_goods_detail
-- ----------------------------
DROP TABLE IF EXISTS `qi_goods_detail`;
CREATE TABLE `qi_goods_detail` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `goods_id` int(20) NOT NULL DEFAULT '0',
  `detail` varchar(2000) NOT NULL DEFAULT '',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_goods_detail
-- ----------------------------
INSERT INTO `qi_goods_detail` VALUES ('1', '1', '<p>撒旦法发达傻店范德萨发大法师地方</p><p>撒旦法放大师傅12</p><p>222</p><p><img src=\"/uploads/ueditor/image/20160715/1468561425990720.jpg\" style=\"\" title=\"1468561425990720.jpg\"/></p><p><img src=\"/uploads/ueditor/image/20160715/1468561425103302.jpg\" style=\"\" title=\"1468561425103302.jpg\"/></p><p><br/></p>', '2016-06-21 16:39:05', '2016-07-15 17:12:03', '1');

-- ----------------------------
-- Table structure for qi_goods_type
-- ----------------------------
DROP TABLE IF EXISTS `qi_goods_type`;
CREATE TABLE `qi_goods_type` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `format1` int(20) NOT NULL DEFAULT '0' COMMENT '规格',
  `format2` int(20) NOT NULL DEFAULT '0',
  `format3` int(20) NOT NULL DEFAULT '0',
  `format4` int(20) NOT NULL DEFAULT '0',
  `format5` int(20) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_goods_type
-- ----------------------------
INSERT INTO `qi_goods_type` VALUES ('1', '打底裤', '1', '2', '0', '0', '0', '2015-12-21 20:46:47', '2016-06-16 10:35:30', '1');
INSERT INTO `qi_goods_type` VALUES ('2', '丝袜', '1', '2', '0', '0', '0', '2015-12-21 20:47:25', '2016-06-16 14:23:45', '1');
INSERT INTO `qi_goods_type` VALUES ('3', '手机', '1', '2', '3', '0', '0', '2016-06-16 10:37:04', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_type` VALUES ('4', '其他', '1', '0', '0', '0', '0', '2016-06-16 14:23:56', '2016-06-21 13:51:23', '1');

-- ----------------------------
-- Table structure for qi_log
-- ----------------------------
DROP TABLE IF EXISTS `qi_log`;
CREATE TABLE `qi_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '日志记录人',
  `log_info` varchar(255) DEFAULT NULL,
  `ip_address` varchar(32) DEFAULT NULL,
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_log
-- ----------------------------
INSERT INTO `qi_log` VALUES ('1', '100', '登录成功', '127.0.0.1', '2015-11-12 07:06:41');
INSERT INTO `qi_log` VALUES ('2', '100', '登录成功', '127.0.0.1', '2015-11-12 07:09:27');
INSERT INTO `qi_log` VALUES ('3', '100', '登录成功', '127.0.0.1', '2015-11-12 07:11:47');
INSERT INTO `qi_log` VALUES ('4', '100', '登录成功', '127.0.0.1', '2015-11-12 07:12:13');
INSERT INTO `qi_log` VALUES ('5', '100', '登录成功', '127.0.0.1', '2015-11-12 14:12:56');
INSERT INTO `qi_log` VALUES ('6', '100', '登录成功', '127.0.0.1', '2015-11-13 08:41:58');
INSERT INTO `qi_log` VALUES ('7', '105', '登录成功', '127.0.0.1', '2015-11-13 10:21:09');
INSERT INTO `qi_log` VALUES ('8', '104', '登录成功', '127.0.0.1', '2015-11-13 10:23:39');
INSERT INTO `qi_log` VALUES ('9', '101', '登录成功', '127.0.0.1', '2015-11-13 10:27:48');
INSERT INTO `qi_log` VALUES ('10', '100', '登录成功', '127.0.0.1', '2015-11-13 10:35:46');
INSERT INTO `qi_log` VALUES ('11', '101', '登录成功', '127.0.0.1', '2015-11-13 10:49:27');
INSERT INTO `qi_log` VALUES ('12', '100', '登录成功', '127.0.0.1', '2015-11-13 11:01:12');
INSERT INTO `qi_log` VALUES ('13', '101', '登录成功', '127.0.0.1', '2015-11-13 11:02:15');
INSERT INTO `qi_log` VALUES ('14', '100', '登录成功', '127.0.0.1', '2015-11-13 13:35:02');
INSERT INTO `qi_log` VALUES ('15', '101', '登录成功', '127.0.0.1', '2015-11-13 13:35:32');
INSERT INTO `qi_log` VALUES ('16', '100', '登录成功', '127.0.0.1', '2015-11-13 13:43:39');
INSERT INTO `qi_log` VALUES ('17', '105', '登录成功', '127.0.0.1', '2015-11-13 13:45:02');
INSERT INTO `qi_log` VALUES ('18', '101', '登录成功', '127.0.0.1', '2015-11-13 13:45:27');
INSERT INTO `qi_log` VALUES ('19', '100', '登录成功', '127.0.0.1', '2015-11-13 13:46:35');
INSERT INTO `qi_log` VALUES ('20', '101', '登录成功', '127.0.0.1', '2015-11-13 13:48:09');
INSERT INTO `qi_log` VALUES ('21', '100', '登录成功', '127.0.0.1', '2015-11-13 13:48:52');
INSERT INTO `qi_log` VALUES ('22', '100', '登录成功', '127.0.0.1', '2015-11-13 13:49:38');
INSERT INTO `qi_log` VALUES ('23', '100', '登录成功', '127.0.0.1', '2015-11-13 13:50:06');
INSERT INTO `qi_log` VALUES ('24', '101', '登录成功', '127.0.0.1', '2015-11-13 13:51:20');
INSERT INTO `qi_log` VALUES ('25', '100', '登录成功', '127.0.0.1', '2015-11-13 13:51:40');
INSERT INTO `qi_log` VALUES ('26', '100', '登录成功', '127.0.0.1', '2015-11-13 13:51:53');
INSERT INTO `qi_log` VALUES ('27', '100', '登录成功', '127.0.0.1', '2015-11-13 13:52:30');
INSERT INTO `qi_log` VALUES ('28', '101', '登录成功', '127.0.0.1', '2015-11-13 13:52:43');
INSERT INTO `qi_log` VALUES ('29', '100', '登录成功', '127.0.0.1', '2015-11-13 13:53:13');
INSERT INTO `qi_log` VALUES ('30', '101', '登录成功', '127.0.0.1', '2015-11-13 13:53:29');
INSERT INTO `qi_log` VALUES ('31', '105', '登录成功', '127.0.0.1', '2015-11-13 13:53:47');
INSERT INTO `qi_log` VALUES ('32', '100', '登录成功', '127.0.0.1', '2015-11-13 13:54:00');
INSERT INTO `qi_log` VALUES ('33', '100', '登录成功', '127.0.0.1', '2015-11-13 16:24:25');
INSERT INTO `qi_log` VALUES ('34', '100', '登录成功', '127.0.0.1', '2015-11-13 16:24:45');
INSERT INTO `qi_log` VALUES ('35', '100', '登录成功', '127.0.0.1', '2015-11-14 08:28:19');
INSERT INTO `qi_log` VALUES ('36', '100', '登录成功', '127.0.0.1', '2015-11-14 14:34:37');
INSERT INTO `qi_log` VALUES ('37', '100', '登录成功', '127.0.0.1', '2015-11-14 15:01:08');
INSERT INTO `qi_log` VALUES ('38', '100', '登录成功', '127.0.0.1', '2015-11-14 15:02:01');
INSERT INTO `qi_log` VALUES ('39', '100', '登录成功', '127.0.0.1', '2015-11-15 08:47:57');
INSERT INTO `qi_log` VALUES ('40', '100', '登录成功', '127.0.0.1', '2015-11-15 12:34:19');
INSERT INTO `qi_log` VALUES ('41', '100', '登录成功', '127.0.0.1', '2015-11-15 15:44:45');
INSERT INTO `qi_log` VALUES ('42', '100', '登录成功', '127.0.0.1', '2015-11-16 08:39:29');
INSERT INTO `qi_log` VALUES ('43', '100', '登录成功', '127.0.0.1', '2015-11-16 13:24:06');
INSERT INTO `qi_log` VALUES ('44', '100', '登录成功', '127.0.0.1', '2015-11-17 10:00:44');
INSERT INTO `qi_log` VALUES ('45', '100', '登录成功', '127.0.0.1', '2015-11-17 15:45:02');
INSERT INTO `qi_log` VALUES ('46', '100', '登录成功', '127.0.0.1', '2015-11-18 09:00:58');
INSERT INTO `qi_log` VALUES ('47', '100', '登录成功', '127.0.0.1', '2015-11-18 13:13:23');
INSERT INTO `qi_log` VALUES ('48', '100', '登录成功', '127.0.0.1', '2015-11-19 11:26:01');
INSERT INTO `qi_log` VALUES ('49', '100', '登录成功', '127.0.0.1', '2015-11-20 08:46:13');
INSERT INTO `qi_log` VALUES ('50', '100', '登录成功', '127.0.0.1', '2015-11-23 08:56:50');
INSERT INTO `qi_log` VALUES ('51', '100', '登录成功', '127.0.0.1', '2015-11-23 09:09:33');
INSERT INTO `qi_log` VALUES ('52', '100', '登录成功', '127.0.0.1', '2015-11-23 09:09:36');
INSERT INTO `qi_log` VALUES ('53', '100', '登录成功', '127.0.0.1', '2015-11-23 09:21:48');
INSERT INTO `qi_log` VALUES ('54', '100', '登录成功', '127.0.0.1', '2015-11-23 09:43:57');
INSERT INTO `qi_log` VALUES ('55', '100', '登录成功', '127.0.0.1', '2015-11-23 10:05:26');
INSERT INTO `qi_log` VALUES ('56', '100', '登录成功', '127.0.0.1', '2015-11-23 10:07:24');
INSERT INTO `qi_log` VALUES ('57', '100', '登录成功', '127.0.0.1', '2015-11-23 10:15:37');
INSERT INTO `qi_log` VALUES ('58', '100', '登录成功', '127.0.0.1', '2015-11-23 10:16:18');
INSERT INTO `qi_log` VALUES ('59', '100', '登录成功', '127.0.0.1', '2015-11-23 10:27:51');
INSERT INTO `qi_log` VALUES ('60', '100', '登录成功', '127.0.0.1', '2015-11-23 13:24:31');
INSERT INTO `qi_log` VALUES ('61', '100', '登录成功', '127.0.0.1', '2015-11-24 09:00:14');
INSERT INTO `qi_log` VALUES ('62', '100', '登录成功', '127.0.0.1', '2015-11-24 17:16:17');
INSERT INTO `qi_log` VALUES ('63', '100', '登录成功', '127.0.0.1', '2015-11-25 08:34:40');
INSERT INTO `qi_log` VALUES ('64', '100', '登录成功', '127.0.0.1', '2015-11-26 01:37:06');
INSERT INTO `qi_log` VALUES ('65', '100', '登录成功', '127.0.0.1', '2015-11-26 01:43:20');
INSERT INTO `qi_log` VALUES ('66', '100', '登录成功', '127.0.0.1', '2015-11-27 01:39:43');
INSERT INTO `qi_log` VALUES ('67', '100', '登录成功', '127.0.0.1', '2015-11-27 20:23:41');
INSERT INTO `qi_log` VALUES ('68', '100', '登录成功', '127.0.0.1', '2015-11-27 22:07:10');
INSERT INTO `qi_log` VALUES ('69', '100', '登录成功', '127.0.0.1', '2015-11-28 18:20:47');
INSERT INTO `qi_log` VALUES ('70', '100', '登录成功', '127.0.0.1', '2015-11-28 19:06:11');
INSERT INTO `qi_log` VALUES ('71', '100', '登录成功', '127.0.0.1', '2015-12-01 19:21:57');
INSERT INTO `qi_log` VALUES ('72', '100', '登录成功', '127.0.0.1', '2015-12-01 20:42:18');
INSERT INTO `qi_log` VALUES ('73', '100', '登录成功', '127.0.0.1', '2015-12-02 01:52:18');
INSERT INTO `qi_log` VALUES ('74', '100', '登录成功', '127.0.0.1', '2015-12-02 00:00:00');
INSERT INTO `qi_log` VALUES ('75', '100', '登录成功', '127.0.0.1', '2015-12-05 00:00:00');
INSERT INTO `qi_log` VALUES ('76', '100', '登录成功', '127.0.0.1', '2015-12-07 00:00:00');
INSERT INTO `qi_log` VALUES ('77', '100', '登录成功', '127.0.0.1', '2015-12-07 00:00:00');
INSERT INTO `qi_log` VALUES ('78', '100', '登录成功', '127.0.0.1', '2015-12-07 00:00:00');
INSERT INTO `qi_log` VALUES ('79', '100', '登录成功', '127.0.0.1', '2015-12-07 00:00:00');
INSERT INTO `qi_log` VALUES ('80', '100', '登录成功', '127.0.0.1', '2015-12-08 00:00:00');
INSERT INTO `qi_log` VALUES ('81', '100', '登录成功', '127.0.0.1', '2015-12-08 10:14:13');
INSERT INTO `qi_log` VALUES ('82', '100', '登录成功', '127.0.0.1', '2015-12-08 10:31:50');
INSERT INTO `qi_log` VALUES ('83', '102', '登录成功', '127.0.0.1', '2015-12-08 10:36:28');
INSERT INTO `qi_log` VALUES ('84', '100', '登录成功', '127.0.0.1', '2015-12-08 10:36:53');
INSERT INTO `qi_log` VALUES ('85', '100', '登录成功', '218.90.129.206', '2015-12-08 18:07:23');
INSERT INTO `qi_log` VALUES ('86', '100', '登录成功', '221.178.182.20', '2015-12-08 19:52:44');
INSERT INTO `qi_log` VALUES ('87', '100', '登录成功', '221.178.182.52', '2015-12-08 20:39:00');
INSERT INTO `qi_log` VALUES ('88', '100', '登录成功', '221.178.182.8', '2015-12-08 20:39:51');
INSERT INTO `qi_log` VALUES ('89', '100', '登录成功', '221.178.182.42', '2015-12-10 20:08:46');
INSERT INTO `qi_log` VALUES ('90', '100', '登录成功', '221.178.182.43', '2015-12-13 09:50:43');
INSERT INTO `qi_log` VALUES ('91', '100', '登录成功', '127.0.0.1', '2015-12-13 14:37:18');
INSERT INTO `qi_log` VALUES ('92', '100', '登录成功', '127.0.0.1', '2015-12-20 08:22:39');
INSERT INTO `qi_log` VALUES ('93', '100', '登录成功', '127.0.0.1', '2015-12-20 12:21:33');
INSERT INTO `qi_log` VALUES ('94', '100', '登录成功', '127.0.0.1', '2015-12-20 19:57:45');
INSERT INTO `qi_log` VALUES ('95', '100', '登录成功', '127.0.0.1', '2015-12-21 20:34:13');
INSERT INTO `qi_log` VALUES ('96', '100', '登录成功', '127.0.0.1', '2015-12-21 22:02:22');
INSERT INTO `qi_log` VALUES ('97', '100', '登录成功', '127.0.0.1', '2015-12-22 20:19:34');
INSERT INTO `qi_log` VALUES ('98', '100', '登录成功', '127.0.0.1', '2015-12-23 10:43:30');
INSERT INTO `qi_log` VALUES ('99', '100', '登录成功', '127.0.0.1', '2015-12-24 10:33:33');
INSERT INTO `qi_log` VALUES ('100', '100', '登录成功', '127.0.0.1', '2016-07-11 14:06:26');
INSERT INTO `qi_log` VALUES ('101', '100', '登录成功', '127.0.0.1', '2016-07-12 14:08:27');
INSERT INTO `qi_log` VALUES ('102', '100', '登录成功', '127.0.0.1', '2016-07-12 14:11:06');
INSERT INTO `qi_log` VALUES ('103', '100', '登录成功', '127.0.0.1', '2016-07-12 14:45:44');
INSERT INTO `qi_log` VALUES ('104', '100', '登录成功', '127.0.0.1', '2016-07-12 14:45:54');
INSERT INTO `qi_log` VALUES ('105', '100', '登录成功', '127.0.0.1', '2016-07-12 16:32:50');
INSERT INTO `qi_log` VALUES ('106', '100', '登录成功', '127.0.0.1', '2016-07-12 16:37:42');
INSERT INTO `qi_log` VALUES ('107', '100', '登录成功', '127.0.0.1', '2016-07-12 16:37:52');
INSERT INTO `qi_log` VALUES ('108', '100', '登录成功', '127.0.0.1', '2016-07-12 16:39:43');
INSERT INTO `qi_log` VALUES ('109', '100', '登录成功', '127.0.0.1', '2016-07-12 17:40:46');
INSERT INTO `qi_log` VALUES ('110', '100', '登录成功', '127.0.0.1', '2016-07-13 13:14:01');
INSERT INTO `qi_log` VALUES ('111', '100', '登录成功', '127.0.0.1', '2016-07-13 17:00:18');
INSERT INTO `qi_log` VALUES ('112', '100', '登录成功', '127.0.0.1', '2016-07-13 17:46:26');
INSERT INTO `qi_log` VALUES ('113', '100', '登录成功', '127.0.0.1', '2016-07-14 09:01:36');
INSERT INTO `qi_log` VALUES ('114', '100', '登录成功', '127.0.0.1', '2016-07-14 09:18:40');
INSERT INTO `qi_log` VALUES ('115', '100', '登录成功', '127.0.0.1', '2016-07-14 09:21:19');
INSERT INTO `qi_log` VALUES ('116', '100', '登录成功', '127.0.0.1', '2016-07-14 09:29:39');
INSERT INTO `qi_log` VALUES ('117', '100', '登录成功', '127.0.0.1', '2016-07-14 13:11:23');
INSERT INTO `qi_log` VALUES ('118', '100', '登录成功', '127.0.0.1', '2016-07-14 14:30:29');
INSERT INTO `qi_log` VALUES ('119', '102', '登录成功', '127.0.0.1', '2016-07-14 16:55:22');
INSERT INTO `qi_log` VALUES ('120', '100', '登录成功', '127.0.0.1', '2016-07-15 09:04:54');
INSERT INTO `qi_log` VALUES ('121', '102', '登录成功', '127.0.0.1', '2016-07-15 09:21:51');
INSERT INTO `qi_log` VALUES ('122', '100', '登录成功', '127.0.0.1', '2016-07-15 09:49:03');
INSERT INTO `qi_log` VALUES ('123', '100', '登录成功', '127.0.0.1', '2016-07-15 13:09:16');
INSERT INTO `qi_log` VALUES ('124', '100', '登录成功', '127.0.0.1', '2016-07-15 16:47:20');

-- ----------------------------
-- Table structure for qi_member
-- ----------------------------
DROP TABLE IF EXISTS `qi_member`;
CREATE TABLE `qi_member` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name_real` varchar(20) NOT NULL COMMENT '姓名',
  `name_nick` varchar(20) NOT NULL COMMENT '昵称',
  `password` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `weixin` varchar(50) NOT NULL COMMENT '微信号',
  `weixin_id` varchar(50) NOT NULL COMMENT '微信openid',
  `qq` varchar(50) NOT NULL,
  `email_check` tinyint(1) NOT NULL DEFAULT '0' COMMENT '邮箱验证',
  `integral` int(20) NOT NULL DEFAULT '0' COMMENT '积分',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date NOT NULL DEFAULT '0000-00-00' COMMENT '生日',
  `headpic` varchar(100) NOT NULL,
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_member
-- ----------------------------
INSERT INTO `qi_member` VALUES ('1', 'jin1', '12341', 'edbbf7a5afd220a65983229ed6496ed9', '13665119187', '723528197@qq.com', '123', '', '123', '1', '0', '2', '2016-06-28', '', '2015-12-23 14:51:03', '2016-07-15 10:42:40', '1');

-- ----------------------------
-- Table structure for qi_member_address
-- ----------------------------
DROP TABLE IF EXISTS `qi_member_address`;
CREATE TABLE `qi_member_address` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `member_id` int(20) NOT NULL,
  `province` int(20) NOT NULL DEFAULT '0' COMMENT '省',
  `city` int(20) NOT NULL DEFAULT '0' COMMENT '市',
  `district` int(20) NOT NULL DEFAULT '0' COMMENT '区',
  `detail` varchar(200) NOT NULL COMMENT '详细地址',
  `phone` varchar(20) NOT NULL DEFAULT '0' COMMENT '联系电话',
  `person` varchar(20) NOT NULL COMMENT '联系人',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_member_address
-- ----------------------------

-- ----------------------------
-- Table structure for qi_order
-- ----------------------------
DROP TABLE IF EXISTS `qi_order`;
CREATE TABLE `qi_order` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(20) NOT NULL DEFAULT '0',
  `member_id` int(20) NOT NULL DEFAULT '0',
  `money_goods` decimal(10,2) NOT NULL DEFAULT '0.00',
  `money_preferential` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '优惠',
  `money_shipping` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '配送费用',
  `money_end` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payment_id` int(20) NOT NULL DEFAULT '0' COMMENT '支付方式',
  `shipping_id` int(20) NOT NULL COMMENT '配送方式',
  `accept_name` varchar(20) NOT NULL DEFAULT '',
  `accept_province` int(20) NOT NULL DEFAULT '0',
  `accept_city` int(20) NOT NULL DEFAULT '0',
  `accept_district` int(20) NOT NULL DEFAULT '0',
  `accept_detail` varchar(200) NOT NULL DEFAULT '',
  `accept_phone` varchar(20) NOT NULL DEFAULT '0',
  `remark` varchar(50) NOT NULL COMMENT '备注',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_pay` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '支付日期',
  `date_send` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '发货日期',
  `date_end` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '结束日期',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0订单取消1订单提交2付款成功3已经发货4订单完成',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_order
-- ----------------------------
INSERT INTO `qi_order` VALUES ('1', 'o12312312312', '1', '20.00', '0.00', '0.00', '20.00', '1', '0', 'jin1', '0', '0', '0', '霞客苑1201', '13665119187', '周末在家', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2');

-- ----------------------------
-- Table structure for qi_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `qi_order_goods`;
CREATE TABLE `qi_order_goods` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `order_id` int(20) NOT NULL DEFAULT '0',
  `goods_id` int(20) NOT NULL DEFAULT '0',
  `amount_id` int(20) NOT NULL DEFAULT '0' COMMENT '规格库存id',
  `goods_name` varchar(100) NOT NULL,
  `goods_no` varchar(50) NOT NULL,
  `amount` int(20) NOT NULL DEFAULT '0' COMMENT '数量',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_order_goods
-- ----------------------------
INSERT INTO `qi_order_goods` VALUES ('1', '1', '1', '10', '丝袜10', 'g1231231231', '2', '10.00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');

-- ----------------------------
-- Table structure for qi_payment
-- ----------------------------
DROP TABLE IF EXISTS `qi_payment`;
CREATE TABLE `qi_payment` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `detail` varchar(500) NOT NULL DEFAULT '',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_payment
-- ----------------------------
INSERT INTO `qi_payment` VALUES ('1', '支付宝', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_payment` VALUES ('2', '微信支付', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');

-- ----------------------------
-- Table structure for qi_role
-- ----------------------------
DROP TABLE IF EXISTS `qi_role`;
CREATE TABLE `qi_role` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `parent_id` int(20) DEFAULT '0',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_role
-- ----------------------------
INSERT INTO `qi_role` VALUES ('1', '超级管理员', '超级管理员', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_role` VALUES ('2', '总管理员', '普通管理员', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_role` VALUES ('3', '普通管理员', '普通管理员12', '2', '0000-00-00 00:00:00', '2016-07-14 14:16:19', '1');

-- ----------------------------
-- Table structure for qi_role_access
-- ----------------------------
DROP TABLE IF EXISTS `qi_role_access`;
CREATE TABLE `qi_role_access` (
  `role_id` int(20) NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_role_access
-- ----------------------------
INSERT INTO `qi_role_access` VALUES ('2', 'user');
INSERT INTO `qi_role_access` VALUES ('2', 'user/my_list');
INSERT INTO `qi_role_access` VALUES ('2', 'user/my_del');
INSERT INTO `qi_role_access` VALUES ('2', 'user/change_pwd');

-- ----------------------------
-- Table structure for qi_setting
-- ----------------------------
DROP TABLE IF EXISTS `qi_setting`;
CREATE TABLE `qi_setting` (
  `s_key` varchar(50) NOT NULL DEFAULT '',
  `s_value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`s_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_setting
-- ----------------------------
INSERT INTO `qi_setting` VALUES ('card_addnum', '1');
INSERT INTO `qi_setting` VALUES ('card_error_times', '3');
INSERT INTO `qi_setting` VALUES ('card_number', '59');
INSERT INTO `qi_setting` VALUES ('card_prefix', '239651008000');
INSERT INTO `qi_setting` VALUES ('logo_name', '74408fa4e7ac9e009f93ed8f7ead91de.jpg');
INSERT INTO `qi_setting` VALUES ('page_number', '10');
INSERT INTO `qi_setting` VALUES ('station_name', '7蓝');
INSERT INTO `qi_setting` VALUES ('user_error_times', '5');
INSERT INTO `qi_setting` VALUES ('use_captcha', '0');

-- ----------------------------
-- Table structure for qi_shipping
-- ----------------------------
DROP TABLE IF EXISTS `qi_shipping`;
CREATE TABLE `qi_shipping` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_shipping
-- ----------------------------
INSERT INTO `qi_shipping` VALUES ('1', '免邮', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');

-- ----------------------------
-- Table structure for qi_user
-- ----------------------------
DROP TABLE IF EXISTS `qi_user`;
CREATE TABLE `qi_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `name_real` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `role` int(20) DEFAULT '0',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `password_times` tinyint(2) NOT NULL DEFAULT '0' COMMENT '密码错误尝试次数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1有效，2锁定，3注销',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_user
-- ----------------------------
INSERT INTO `qi_user` VALUES ('100', 'admin', 'Ming.King', 'edbbf7a5afd220a65983229ed6496ed9', '13665119187', '723528197@qq.com', '1', '2015-11-05 00:00:00', '2016-07-14 10:05:37', '0', '1');
INSERT INTO `qi_user` VALUES ('102', 'jojo', 'jojo1', 'edbbf7a5afd220a65983229ed6496ed9', '', '', '2', '0000-00-00 00:00:00', '2016-07-15 09:45:57', '0', '1');
