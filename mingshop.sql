/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : mingshop

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2016-11-21 21:59:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for qi_address
-- ----------------------------
DROP TABLE IF EXISTS `qi_address`;
CREATE TABLE `qi_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `father` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4144 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of qi_address
-- ----------------------------
INSERT INTO `qi_address` VALUES ('1', '110000', '北京市', '0');
INSERT INTO `qi_address` VALUES ('2', '120000', '天津市', '0');
INSERT INTO `qi_address` VALUES ('3', '130000', '河北省', '0');
INSERT INTO `qi_address` VALUES ('4', '140000', '山西省', '0');
INSERT INTO `qi_address` VALUES ('5', '150000', '内蒙古自治区', '0');
INSERT INTO `qi_address` VALUES ('6', '210000', '辽宁省', '0');
INSERT INTO `qi_address` VALUES ('7', '220000', '吉林省', '0');
INSERT INTO `qi_address` VALUES ('8', '230000', '黑龙江省', '0');
INSERT INTO `qi_address` VALUES ('9', '310000', '上海市', '0');
INSERT INTO `qi_address` VALUES ('10', '320000', '江苏省', '0');
INSERT INTO `qi_address` VALUES ('11', '330000', '浙江省', '0');
INSERT INTO `qi_address` VALUES ('12', '340000', '安徽省', '0');
INSERT INTO `qi_address` VALUES ('13', '350000', '福建省', '0');
INSERT INTO `qi_address` VALUES ('14', '360000', '江西省', '0');
INSERT INTO `qi_address` VALUES ('15', '370000', '山东省', '0');
INSERT INTO `qi_address` VALUES ('16', '410000', '河南省', '0');
INSERT INTO `qi_address` VALUES ('17', '420000', '湖北省', '0');
INSERT INTO `qi_address` VALUES ('18', '430000', '湖南省', '0');
INSERT INTO `qi_address` VALUES ('19', '440000', '广东省', '0');
INSERT INTO `qi_address` VALUES ('20', '450000', '广西壮族自治区', '0');
INSERT INTO `qi_address` VALUES ('21', '460000', '海南省', '0');
INSERT INTO `qi_address` VALUES ('22', '500000', '重庆市', '0');
INSERT INTO `qi_address` VALUES ('23', '510000', '四川省', '0');
INSERT INTO `qi_address` VALUES ('24', '520000', '贵州省', '0');
INSERT INTO `qi_address` VALUES ('25', '530000', '云南省', '0');
INSERT INTO `qi_address` VALUES ('26', '540000', '西藏自治区', '0');
INSERT INTO `qi_address` VALUES ('27', '610000', '陕西省', '0');
INSERT INTO `qi_address` VALUES ('28', '620000', '甘肃省', '0');
INSERT INTO `qi_address` VALUES ('29', '630000', '青海省', '0');
INSERT INTO `qi_address` VALUES ('30', '640000', '宁夏回族自治区', '0');
INSERT INTO `qi_address` VALUES ('31', '650000', '新疆维吾尔自治区', '0');
INSERT INTO `qi_address` VALUES ('32', '710000', '台湾省', '0');
INSERT INTO `qi_address` VALUES ('33', '810000', '香港特别行政区', '0');
INSERT INTO `qi_address` VALUES ('34', '820000', '澳门特别行政区', '0');
INSERT INTO `qi_address` VALUES ('100', '110100', '市辖区', '110000');
INSERT INTO `qi_address` VALUES ('101', '110200', '县', '110000');
INSERT INTO `qi_address` VALUES ('102', '120100', '市辖区', '120000');
INSERT INTO `qi_address` VALUES ('103', '120200', '县', '120000');
INSERT INTO `qi_address` VALUES ('104', '130100', '石家庄市', '130000');
INSERT INTO `qi_address` VALUES ('105', '130200', '唐山市', '130000');
INSERT INTO `qi_address` VALUES ('106', '130300', '秦皇岛市', '130000');
INSERT INTO `qi_address` VALUES ('107', '130400', '邯郸市', '130000');
INSERT INTO `qi_address` VALUES ('108', '130500', '邢台市', '130000');
INSERT INTO `qi_address` VALUES ('109', '130600', '保定市', '130000');
INSERT INTO `qi_address` VALUES ('110', '130700', '张家口市', '130000');
INSERT INTO `qi_address` VALUES ('111', '130800', '承德市', '130000');
INSERT INTO `qi_address` VALUES ('112', '130900', '沧州市', '130000');
INSERT INTO `qi_address` VALUES ('113', '131000', '廊坊市', '130000');
INSERT INTO `qi_address` VALUES ('114', '131100', '衡水市', '130000');
INSERT INTO `qi_address` VALUES ('115', '140100', '太原市', '140000');
INSERT INTO `qi_address` VALUES ('116', '140200', '大同市', '140000');
INSERT INTO `qi_address` VALUES ('117', '140300', '阳泉市', '140000');
INSERT INTO `qi_address` VALUES ('118', '140400', '长治市', '140000');
INSERT INTO `qi_address` VALUES ('119', '140500', '晋城市', '140000');
INSERT INTO `qi_address` VALUES ('120', '140600', '朔州市', '140000');
INSERT INTO `qi_address` VALUES ('121', '140700', '晋中市', '140000');
INSERT INTO `qi_address` VALUES ('122', '140800', '运城市', '140000');
INSERT INTO `qi_address` VALUES ('123', '140900', '忻州市', '140000');
INSERT INTO `qi_address` VALUES ('124', '141000', '临汾市', '140000');
INSERT INTO `qi_address` VALUES ('125', '141100', '吕梁市', '140000');
INSERT INTO `qi_address` VALUES ('126', '150100', '呼和浩特市', '150000');
INSERT INTO `qi_address` VALUES ('127', '150200', '包头市', '150000');
INSERT INTO `qi_address` VALUES ('128', '150300', '乌海市', '150000');
INSERT INTO `qi_address` VALUES ('129', '150400', '赤峰市', '150000');
INSERT INTO `qi_address` VALUES ('130', '150500', '通辽市', '150000');
INSERT INTO `qi_address` VALUES ('131', '150600', '鄂尔多斯市', '150000');
INSERT INTO `qi_address` VALUES ('132', '150700', '呼伦贝尔市', '150000');
INSERT INTO `qi_address` VALUES ('133', '150800', '巴彦淖尔市', '150000');
INSERT INTO `qi_address` VALUES ('134', '150900', '乌兰察布市', '150000');
INSERT INTO `qi_address` VALUES ('135', '152200', '兴安盟', '150000');
INSERT INTO `qi_address` VALUES ('136', '152500', '锡林郭勒盟', '150000');
INSERT INTO `qi_address` VALUES ('137', '152900', '阿拉善盟', '150000');
INSERT INTO `qi_address` VALUES ('138', '210100', '沈阳市', '210000');
INSERT INTO `qi_address` VALUES ('139', '210200', '大连市', '210000');
INSERT INTO `qi_address` VALUES ('140', '210300', '鞍山市', '210000');
INSERT INTO `qi_address` VALUES ('141', '210400', '抚顺市', '210000');
INSERT INTO `qi_address` VALUES ('142', '210500', '本溪市', '210000');
INSERT INTO `qi_address` VALUES ('143', '210600', '丹东市', '210000');
INSERT INTO `qi_address` VALUES ('144', '210700', '锦州市', '210000');
INSERT INTO `qi_address` VALUES ('145', '210800', '营口市', '210000');
INSERT INTO `qi_address` VALUES ('146', '210900', '阜新市', '210000');
INSERT INTO `qi_address` VALUES ('147', '211000', '辽阳市', '210000');
INSERT INTO `qi_address` VALUES ('148', '211100', '盘锦市', '210000');
INSERT INTO `qi_address` VALUES ('149', '211200', '铁岭市', '210000');
INSERT INTO `qi_address` VALUES ('150', '211300', '朝阳市', '210000');
INSERT INTO `qi_address` VALUES ('151', '211400', '葫芦岛市', '210000');
INSERT INTO `qi_address` VALUES ('152', '220100', '长春市', '220000');
INSERT INTO `qi_address` VALUES ('153', '220200', '吉林市', '220000');
INSERT INTO `qi_address` VALUES ('154', '220300', '四平市', '220000');
INSERT INTO `qi_address` VALUES ('155', '220400', '辽源市', '220000');
INSERT INTO `qi_address` VALUES ('156', '220500', '通化市', '220000');
INSERT INTO `qi_address` VALUES ('157', '220600', '白山市', '220000');
INSERT INTO `qi_address` VALUES ('158', '220700', '松原市', '220000');
INSERT INTO `qi_address` VALUES ('159', '220800', '白城市', '220000');
INSERT INTO `qi_address` VALUES ('160', '222400', '延边朝鲜族自治州', '220000');
INSERT INTO `qi_address` VALUES ('161', '230100', '哈尔滨市', '230000');
INSERT INTO `qi_address` VALUES ('162', '230200', '齐齐哈尔市', '230000');
INSERT INTO `qi_address` VALUES ('163', '230300', '鸡西市', '230000');
INSERT INTO `qi_address` VALUES ('164', '230400', '鹤岗市', '230000');
INSERT INTO `qi_address` VALUES ('165', '230500', '双鸭山市', '230000');
INSERT INTO `qi_address` VALUES ('166', '230600', '大庆市', '230000');
INSERT INTO `qi_address` VALUES ('167', '230700', '伊春市', '230000');
INSERT INTO `qi_address` VALUES ('168', '230800', '佳木斯市', '230000');
INSERT INTO `qi_address` VALUES ('169', '230900', '七台河市', '230000');
INSERT INTO `qi_address` VALUES ('170', '231000', '牡丹江市', '230000');
INSERT INTO `qi_address` VALUES ('171', '231100', '黑河市', '230000');
INSERT INTO `qi_address` VALUES ('172', '231200', '绥化市', '230000');
INSERT INTO `qi_address` VALUES ('173', '232700', '大兴安岭地区', '230000');
INSERT INTO `qi_address` VALUES ('174', '310100', '市辖区', '310000');
INSERT INTO `qi_address` VALUES ('175', '310200', '县', '310000');
INSERT INTO `qi_address` VALUES ('176', '320100', '南京市', '320000');
INSERT INTO `qi_address` VALUES ('177', '320200', '无锡市', '320000');
INSERT INTO `qi_address` VALUES ('178', '320300', '徐州市', '320000');
INSERT INTO `qi_address` VALUES ('179', '320400', '常州市', '320000');
INSERT INTO `qi_address` VALUES ('180', '320500', '苏州市', '320000');
INSERT INTO `qi_address` VALUES ('181', '320600', '南通市', '320000');
INSERT INTO `qi_address` VALUES ('182', '320700', '连云港市', '320000');
INSERT INTO `qi_address` VALUES ('183', '320800', '淮安市', '320000');
INSERT INTO `qi_address` VALUES ('184', '320900', '盐城市', '320000');
INSERT INTO `qi_address` VALUES ('185', '321000', '扬州市', '320000');
INSERT INTO `qi_address` VALUES ('186', '321100', '镇江市', '320000');
INSERT INTO `qi_address` VALUES ('187', '321200', '泰州市', '320000');
INSERT INTO `qi_address` VALUES ('188', '321300', '宿迁市', '320000');
INSERT INTO `qi_address` VALUES ('189', '330100', '杭州市', '330000');
INSERT INTO `qi_address` VALUES ('190', '330200', '宁波市', '330000');
INSERT INTO `qi_address` VALUES ('191', '330300', '温州市', '330000');
INSERT INTO `qi_address` VALUES ('192', '330400', '嘉兴市', '330000');
INSERT INTO `qi_address` VALUES ('193', '330500', '湖州市', '330000');
INSERT INTO `qi_address` VALUES ('194', '330600', '绍兴市', '330000');
INSERT INTO `qi_address` VALUES ('195', '330700', '金华市', '330000');
INSERT INTO `qi_address` VALUES ('196', '330800', '衢州市', '330000');
INSERT INTO `qi_address` VALUES ('197', '330900', '舟山市', '330000');
INSERT INTO `qi_address` VALUES ('198', '331000', '台州市', '330000');
INSERT INTO `qi_address` VALUES ('199', '331100', '丽水市', '330000');
INSERT INTO `qi_address` VALUES ('200', '340100', '合肥市', '340000');
INSERT INTO `qi_address` VALUES ('201', '340200', '芜湖市', '340000');
INSERT INTO `qi_address` VALUES ('202', '340300', '蚌埠市', '340000');
INSERT INTO `qi_address` VALUES ('203', '340400', '淮南市', '340000');
INSERT INTO `qi_address` VALUES ('204', '340500', '马鞍山市', '340000');
INSERT INTO `qi_address` VALUES ('205', '340600', '淮北市', '340000');
INSERT INTO `qi_address` VALUES ('206', '340700', '铜陵市', '340000');
INSERT INTO `qi_address` VALUES ('207', '340800', '安庆市', '340000');
INSERT INTO `qi_address` VALUES ('208', '341000', '黄山市', '340000');
INSERT INTO `qi_address` VALUES ('209', '341100', '滁州市', '340000');
INSERT INTO `qi_address` VALUES ('210', '341200', '阜阳市', '340000');
INSERT INTO `qi_address` VALUES ('211', '341300', '宿州市', '340000');
INSERT INTO `qi_address` VALUES ('212', '341400', '巢湖市', '340000');
INSERT INTO `qi_address` VALUES ('213', '341500', '六安市', '340000');
INSERT INTO `qi_address` VALUES ('214', '341600', '亳州市', '340000');
INSERT INTO `qi_address` VALUES ('215', '341700', '池州市', '340000');
INSERT INTO `qi_address` VALUES ('216', '341800', '宣城市', '340000');
INSERT INTO `qi_address` VALUES ('217', '350100', '福州市', '350000');
INSERT INTO `qi_address` VALUES ('218', '350200', '厦门市', '350000');
INSERT INTO `qi_address` VALUES ('219', '350300', '莆田市', '350000');
INSERT INTO `qi_address` VALUES ('220', '350400', '三明市', '350000');
INSERT INTO `qi_address` VALUES ('221', '350500', '泉州市', '350000');
INSERT INTO `qi_address` VALUES ('222', '350600', '漳州市', '350000');
INSERT INTO `qi_address` VALUES ('223', '350700', '南平市', '350000');
INSERT INTO `qi_address` VALUES ('224', '350800', '龙岩市', '350000');
INSERT INTO `qi_address` VALUES ('225', '350900', '宁德市', '350000');
INSERT INTO `qi_address` VALUES ('226', '360100', '南昌市', '360000');
INSERT INTO `qi_address` VALUES ('227', '360200', '景德镇市', '360000');
INSERT INTO `qi_address` VALUES ('228', '360300', '萍乡市', '360000');
INSERT INTO `qi_address` VALUES ('229', '360400', '九江市', '360000');
INSERT INTO `qi_address` VALUES ('230', '360500', '新余市', '360000');
INSERT INTO `qi_address` VALUES ('231', '360600', '鹰潭市', '360000');
INSERT INTO `qi_address` VALUES ('232', '360700', '赣州市', '360000');
INSERT INTO `qi_address` VALUES ('233', '360800', '吉安市', '360000');
INSERT INTO `qi_address` VALUES ('234', '360900', '宜春市', '360000');
INSERT INTO `qi_address` VALUES ('235', '361000', '抚州市', '360000');
INSERT INTO `qi_address` VALUES ('236', '361100', '上饶市', '360000');
INSERT INTO `qi_address` VALUES ('237', '370100', '济南市', '370000');
INSERT INTO `qi_address` VALUES ('238', '370200', '青岛市', '370000');
INSERT INTO `qi_address` VALUES ('239', '370300', '淄博市', '370000');
INSERT INTO `qi_address` VALUES ('240', '370400', '枣庄市', '370000');
INSERT INTO `qi_address` VALUES ('241', '370500', '东营市', '370000');
INSERT INTO `qi_address` VALUES ('242', '370600', '烟台市', '370000');
INSERT INTO `qi_address` VALUES ('243', '370700', '潍坊市', '370000');
INSERT INTO `qi_address` VALUES ('244', '370800', '济宁市', '370000');
INSERT INTO `qi_address` VALUES ('245', '370900', '泰安市', '370000');
INSERT INTO `qi_address` VALUES ('246', '371000', '威海市', '370000');
INSERT INTO `qi_address` VALUES ('247', '371100', '日照市', '370000');
INSERT INTO `qi_address` VALUES ('248', '371200', '莱芜市', '370000');
INSERT INTO `qi_address` VALUES ('249', '371300', '临沂市', '370000');
INSERT INTO `qi_address` VALUES ('250', '371400', '德州市', '370000');
INSERT INTO `qi_address` VALUES ('251', '371500', '聊城市', '370000');
INSERT INTO `qi_address` VALUES ('252', '371600', '滨州市', '370000');
INSERT INTO `qi_address` VALUES ('253', '371700', '荷泽市', '370000');
INSERT INTO `qi_address` VALUES ('254', '410100', '郑州市', '410000');
INSERT INTO `qi_address` VALUES ('255', '410200', '开封市', '410000');
INSERT INTO `qi_address` VALUES ('256', '410300', '洛阳市', '410000');
INSERT INTO `qi_address` VALUES ('257', '410400', '平顶山市', '410000');
INSERT INTO `qi_address` VALUES ('258', '410500', '安阳市', '410000');
INSERT INTO `qi_address` VALUES ('259', '410600', '鹤壁市', '410000');
INSERT INTO `qi_address` VALUES ('260', '410700', '新乡市', '410000');
INSERT INTO `qi_address` VALUES ('261', '410800', '焦作市', '410000');
INSERT INTO `qi_address` VALUES ('262', '410900', '濮阳市', '410000');
INSERT INTO `qi_address` VALUES ('263', '411000', '许昌市', '410000');
INSERT INTO `qi_address` VALUES ('264', '411100', '漯河市', '410000');
INSERT INTO `qi_address` VALUES ('265', '411200', '三门峡市', '410000');
INSERT INTO `qi_address` VALUES ('266', '411300', '南阳市', '410000');
INSERT INTO `qi_address` VALUES ('267', '411400', '商丘市', '410000');
INSERT INTO `qi_address` VALUES ('268', '411500', '信阳市', '410000');
INSERT INTO `qi_address` VALUES ('269', '411600', '周口市', '410000');
INSERT INTO `qi_address` VALUES ('270', '411700', '驻马店市', '410000');
INSERT INTO `qi_address` VALUES ('271', '420100', '武汉市', '420000');
INSERT INTO `qi_address` VALUES ('272', '420200', '黄石市', '420000');
INSERT INTO `qi_address` VALUES ('273', '420300', '十堰市', '420000');
INSERT INTO `qi_address` VALUES ('274', '420500', '宜昌市', '420000');
INSERT INTO `qi_address` VALUES ('275', '420600', '襄樊市', '420000');
INSERT INTO `qi_address` VALUES ('276', '420700', '鄂州市', '420000');
INSERT INTO `qi_address` VALUES ('277', '420800', '荆门市', '420000');
INSERT INTO `qi_address` VALUES ('278', '420900', '孝感市', '420000');
INSERT INTO `qi_address` VALUES ('279', '421000', '荆州市', '420000');
INSERT INTO `qi_address` VALUES ('280', '421100', '黄冈市', '420000');
INSERT INTO `qi_address` VALUES ('281', '421200', '咸宁市', '420000');
INSERT INTO `qi_address` VALUES ('282', '421300', '随州市', '420000');
INSERT INTO `qi_address` VALUES ('283', '422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `qi_address` VALUES ('284', '429000', '省直辖行政单位', '420000');
INSERT INTO `qi_address` VALUES ('285', '430100', '长沙市', '430000');
INSERT INTO `qi_address` VALUES ('286', '430200', '株洲市', '430000');
INSERT INTO `qi_address` VALUES ('287', '430300', '湘潭市', '430000');
INSERT INTO `qi_address` VALUES ('288', '430400', '衡阳市', '430000');
INSERT INTO `qi_address` VALUES ('289', '430500', '邵阳市', '430000');
INSERT INTO `qi_address` VALUES ('290', '430600', '岳阳市', '430000');
INSERT INTO `qi_address` VALUES ('291', '430700', '常德市', '430000');
INSERT INTO `qi_address` VALUES ('292', '430800', '张家界市', '430000');
INSERT INTO `qi_address` VALUES ('293', '430900', '益阳市', '430000');
INSERT INTO `qi_address` VALUES ('294', '431000', '郴州市', '430000');
INSERT INTO `qi_address` VALUES ('295', '431100', '永州市', '430000');
INSERT INTO `qi_address` VALUES ('296', '431200', '怀化市', '430000');
INSERT INTO `qi_address` VALUES ('297', '431300', '娄底市', '430000');
INSERT INTO `qi_address` VALUES ('298', '433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `qi_address` VALUES ('299', '440100', '广州市', '440000');
INSERT INTO `qi_address` VALUES ('300', '440200', '韶关市', '440000');
INSERT INTO `qi_address` VALUES ('301', '440300', '深圳市', '440000');
INSERT INTO `qi_address` VALUES ('302', '440400', '珠海市', '440000');
INSERT INTO `qi_address` VALUES ('303', '440500', '汕头市', '440000');
INSERT INTO `qi_address` VALUES ('304', '440600', '佛山市', '440000');
INSERT INTO `qi_address` VALUES ('305', '440700', '江门市', '440000');
INSERT INTO `qi_address` VALUES ('306', '440800', '湛江市', '440000');
INSERT INTO `qi_address` VALUES ('307', '440900', '茂名市', '440000');
INSERT INTO `qi_address` VALUES ('308', '441200', '肇庆市', '440000');
INSERT INTO `qi_address` VALUES ('309', '441300', '惠州市', '440000');
INSERT INTO `qi_address` VALUES ('310', '441400', '梅州市', '440000');
INSERT INTO `qi_address` VALUES ('311', '441500', '汕尾市', '440000');
INSERT INTO `qi_address` VALUES ('312', '441600', '河源市', '440000');
INSERT INTO `qi_address` VALUES ('313', '441700', '阳江市', '440000');
INSERT INTO `qi_address` VALUES ('314', '441800', '清远市', '440000');
INSERT INTO `qi_address` VALUES ('315', '441900', '东莞市', '440000');
INSERT INTO `qi_address` VALUES ('316', '442000', '中山市', '440000');
INSERT INTO `qi_address` VALUES ('317', '445100', '潮州市', '440000');
INSERT INTO `qi_address` VALUES ('318', '445200', '揭阳市', '440000');
INSERT INTO `qi_address` VALUES ('319', '445300', '云浮市', '440000');
INSERT INTO `qi_address` VALUES ('320', '450100', '南宁市', '450000');
INSERT INTO `qi_address` VALUES ('321', '450200', '柳州市', '450000');
INSERT INTO `qi_address` VALUES ('322', '450300', '桂林市', '450000');
INSERT INTO `qi_address` VALUES ('323', '450400', '梧州市', '450000');
INSERT INTO `qi_address` VALUES ('324', '450500', '北海市', '450000');
INSERT INTO `qi_address` VALUES ('325', '450600', '防城港市', '450000');
INSERT INTO `qi_address` VALUES ('326', '450700', '钦州市', '450000');
INSERT INTO `qi_address` VALUES ('327', '450800', '贵港市', '450000');
INSERT INTO `qi_address` VALUES ('328', '450900', '玉林市', '450000');
INSERT INTO `qi_address` VALUES ('329', '451000', '百色市', '450000');
INSERT INTO `qi_address` VALUES ('330', '451100', '贺州市', '450000');
INSERT INTO `qi_address` VALUES ('331', '451200', '河池市', '450000');
INSERT INTO `qi_address` VALUES ('332', '451300', '来宾市', '450000');
INSERT INTO `qi_address` VALUES ('333', '451400', '崇左市', '450000');
INSERT INTO `qi_address` VALUES ('334', '460100', '海口市', '460000');
INSERT INTO `qi_address` VALUES ('335', '460200', '三亚市', '460000');
INSERT INTO `qi_address` VALUES ('336', '469000', '省直辖县级行政单位', '460000');
INSERT INTO `qi_address` VALUES ('337', '500100', '市辖区', '500000');
INSERT INTO `qi_address` VALUES ('338', '500200', '县', '500000');
INSERT INTO `qi_address` VALUES ('339', '500300', '市', '500000');
INSERT INTO `qi_address` VALUES ('340', '510100', '成都市', '510000');
INSERT INTO `qi_address` VALUES ('341', '510300', '自贡市', '510000');
INSERT INTO `qi_address` VALUES ('342', '510400', '攀枝花市', '510000');
INSERT INTO `qi_address` VALUES ('343', '510500', '泸州市', '510000');
INSERT INTO `qi_address` VALUES ('344', '510600', '德阳市', '510000');
INSERT INTO `qi_address` VALUES ('345', '510700', '绵阳市', '510000');
INSERT INTO `qi_address` VALUES ('346', '510800', '广元市', '510000');
INSERT INTO `qi_address` VALUES ('347', '510900', '遂宁市', '510000');
INSERT INTO `qi_address` VALUES ('348', '511000', '内江市', '510000');
INSERT INTO `qi_address` VALUES ('349', '511100', '乐山市', '510000');
INSERT INTO `qi_address` VALUES ('350', '511300', '南充市', '510000');
INSERT INTO `qi_address` VALUES ('351', '511400', '眉山市', '510000');
INSERT INTO `qi_address` VALUES ('352', '511500', '宜宾市', '510000');
INSERT INTO `qi_address` VALUES ('353', '511600', '广安市', '510000');
INSERT INTO `qi_address` VALUES ('354', '511700', '达州市', '510000');
INSERT INTO `qi_address` VALUES ('355', '511800', '雅安市', '510000');
INSERT INTO `qi_address` VALUES ('356', '511900', '巴中市', '510000');
INSERT INTO `qi_address` VALUES ('357', '512000', '资阳市', '510000');
INSERT INTO `qi_address` VALUES ('358', '513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO `qi_address` VALUES ('359', '513300', '甘孜藏族自治州', '510000');
INSERT INTO `qi_address` VALUES ('360', '513400', '凉山彝族自治州', '510000');
INSERT INTO `qi_address` VALUES ('361', '520100', '贵阳市', '520000');
INSERT INTO `qi_address` VALUES ('362', '520200', '六盘水市', '520000');
INSERT INTO `qi_address` VALUES ('363', '520300', '遵义市', '520000');
INSERT INTO `qi_address` VALUES ('364', '520400', '安顺市', '520000');
INSERT INTO `qi_address` VALUES ('365', '522200', '铜仁地区', '520000');
INSERT INTO `qi_address` VALUES ('366', '522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `qi_address` VALUES ('367', '522400', '毕节地区', '520000');
INSERT INTO `qi_address` VALUES ('368', '522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO `qi_address` VALUES ('369', '522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `qi_address` VALUES ('370', '530100', '昆明市', '530000');
INSERT INTO `qi_address` VALUES ('371', '530300', '曲靖市', '530000');
INSERT INTO `qi_address` VALUES ('372', '530400', '玉溪市', '530000');
INSERT INTO `qi_address` VALUES ('373', '530500', '保山市', '530000');
INSERT INTO `qi_address` VALUES ('374', '530600', '昭通市', '530000');
INSERT INTO `qi_address` VALUES ('375', '530700', '丽江市', '530000');
INSERT INTO `qi_address` VALUES ('376', '530800', '思茅市', '530000');
INSERT INTO `qi_address` VALUES ('377', '530900', '临沧市', '530000');
INSERT INTO `qi_address` VALUES ('378', '532300', '楚雄彝族自治州', '530000');
INSERT INTO `qi_address` VALUES ('379', '532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO `qi_address` VALUES ('380', '532600', '文山壮族苗族自治州', '530000');
INSERT INTO `qi_address` VALUES ('381', '532800', '西双版纳傣族自治州', '530000');
INSERT INTO `qi_address` VALUES ('382', '532900', '大理白族自治州', '530000');
INSERT INTO `qi_address` VALUES ('383', '533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO `qi_address` VALUES ('384', '533300', '怒江傈僳族自治州', '530000');
INSERT INTO `qi_address` VALUES ('385', '533400', '迪庆藏族自治州', '530000');
INSERT INTO `qi_address` VALUES ('386', '540100', '拉萨市', '540000');
INSERT INTO `qi_address` VALUES ('387', '542100', '昌都地区', '540000');
INSERT INTO `qi_address` VALUES ('388', '542200', '山南地区', '540000');
INSERT INTO `qi_address` VALUES ('389', '542300', '日喀则地区', '540000');
INSERT INTO `qi_address` VALUES ('390', '542400', '那曲地区', '540000');
INSERT INTO `qi_address` VALUES ('391', '542500', '阿里地区', '540000');
INSERT INTO `qi_address` VALUES ('392', '542600', '林芝地区', '540000');
INSERT INTO `qi_address` VALUES ('393', '610100', '西安市', '610000');
INSERT INTO `qi_address` VALUES ('394', '610200', '铜川市', '610000');
INSERT INTO `qi_address` VALUES ('395', '610300', '宝鸡市', '610000');
INSERT INTO `qi_address` VALUES ('396', '610400', '咸阳市', '610000');
INSERT INTO `qi_address` VALUES ('397', '610500', '渭南市', '610000');
INSERT INTO `qi_address` VALUES ('398', '610600', '延安市', '610000');
INSERT INTO `qi_address` VALUES ('399', '610700', '汉中市', '610000');
INSERT INTO `qi_address` VALUES ('400', '610800', '榆林市', '610000');
INSERT INTO `qi_address` VALUES ('401', '610900', '安康市', '610000');
INSERT INTO `qi_address` VALUES ('402', '611000', '商洛市', '610000');
INSERT INTO `qi_address` VALUES ('403', '620100', '兰州市', '620000');
INSERT INTO `qi_address` VALUES ('404', '620200', '嘉峪关市', '620000');
INSERT INTO `qi_address` VALUES ('405', '620300', '金昌市', '620000');
INSERT INTO `qi_address` VALUES ('406', '620400', '白银市', '620000');
INSERT INTO `qi_address` VALUES ('407', '620500', '天水市', '620000');
INSERT INTO `qi_address` VALUES ('408', '620600', '武威市', '620000');
INSERT INTO `qi_address` VALUES ('409', '620700', '张掖市', '620000');
INSERT INTO `qi_address` VALUES ('410', '620800', '平凉市', '620000');
INSERT INTO `qi_address` VALUES ('411', '620900', '酒泉市', '620000');
INSERT INTO `qi_address` VALUES ('412', '621000', '庆阳市', '620000');
INSERT INTO `qi_address` VALUES ('413', '621100', '定西市', '620000');
INSERT INTO `qi_address` VALUES ('414', '621200', '陇南市', '620000');
INSERT INTO `qi_address` VALUES ('415', '622900', '临夏回族自治州', '620000');
INSERT INTO `qi_address` VALUES ('416', '623000', '甘南藏族自治州', '620000');
INSERT INTO `qi_address` VALUES ('417', '630100', '西宁市', '630000');
INSERT INTO `qi_address` VALUES ('418', '632100', '海东地区', '630000');
INSERT INTO `qi_address` VALUES ('419', '632200', '海北藏族自治州', '630000');
INSERT INTO `qi_address` VALUES ('420', '632300', '黄南藏族自治州', '630000');
INSERT INTO `qi_address` VALUES ('421', '632500', '海南藏族自治州', '630000');
INSERT INTO `qi_address` VALUES ('422', '632600', '果洛藏族自治州', '630000');
INSERT INTO `qi_address` VALUES ('423', '632700', '玉树藏族自治州', '630000');
INSERT INTO `qi_address` VALUES ('424', '632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `qi_address` VALUES ('425', '640100', '银川市', '640000');
INSERT INTO `qi_address` VALUES ('426', '640200', '石嘴山市', '640000');
INSERT INTO `qi_address` VALUES ('427', '640300', '吴忠市', '640000');
INSERT INTO `qi_address` VALUES ('428', '640400', '固原市', '640000');
INSERT INTO `qi_address` VALUES ('429', '640500', '中卫市', '640000');
INSERT INTO `qi_address` VALUES ('430', '650100', '乌鲁木齐市', '650000');
INSERT INTO `qi_address` VALUES ('431', '650200', '克拉玛依市', '650000');
INSERT INTO `qi_address` VALUES ('432', '652100', '吐鲁番地区', '650000');
INSERT INTO `qi_address` VALUES ('433', '652200', '哈密地区', '650000');
INSERT INTO `qi_address` VALUES ('434', '652300', '昌吉回族自治州', '650000');
INSERT INTO `qi_address` VALUES ('435', '652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO `qi_address` VALUES ('436', '652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `qi_address` VALUES ('437', '652900', '阿克苏地区', '650000');
INSERT INTO `qi_address` VALUES ('438', '653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO `qi_address` VALUES ('439', '653100', '喀什地区', '650000');
INSERT INTO `qi_address` VALUES ('440', '653200', '和田地区', '650000');
INSERT INTO `qi_address` VALUES ('441', '654000', '伊犁哈萨克自治州', '650000');
INSERT INTO `qi_address` VALUES ('442', '654200', '塔城地区', '650000');
INSERT INTO `qi_address` VALUES ('443', '654300', '阿勒泰地区', '650000');
INSERT INTO `qi_address` VALUES ('444', '659000', '省直辖行政单位', '650000');
INSERT INTO `qi_address` VALUES ('1000', '110101', '东城区', '110100');
INSERT INTO `qi_address` VALUES ('1001', '110102', '西城区', '110100');
INSERT INTO `qi_address` VALUES ('1002', '110103', '崇文区', '110100');
INSERT INTO `qi_address` VALUES ('1003', '110104', '宣武区', '110100');
INSERT INTO `qi_address` VALUES ('1004', '110105', '朝阳区', '110100');
INSERT INTO `qi_address` VALUES ('1005', '110106', '丰台区', '110100');
INSERT INTO `qi_address` VALUES ('1006', '110107', '石景山区', '110100');
INSERT INTO `qi_address` VALUES ('1007', '110108', '海淀区', '110100');
INSERT INTO `qi_address` VALUES ('1008', '110109', '门头沟区', '110100');
INSERT INTO `qi_address` VALUES ('1009', '110111', '房山区', '110100');
INSERT INTO `qi_address` VALUES ('1010', '110112', '通州区', '110100');
INSERT INTO `qi_address` VALUES ('1011', '110113', '顺义区', '110100');
INSERT INTO `qi_address` VALUES ('1012', '110114', '昌平区', '110100');
INSERT INTO `qi_address` VALUES ('1013', '110115', '大兴区', '110100');
INSERT INTO `qi_address` VALUES ('1014', '110116', '怀柔区', '110100');
INSERT INTO `qi_address` VALUES ('1015', '110117', '平谷区', '110100');
INSERT INTO `qi_address` VALUES ('1016', '110228', '密云县', '110200');
INSERT INTO `qi_address` VALUES ('1017', '110229', '延庆县', '110200');
INSERT INTO `qi_address` VALUES ('1018', '120101', '和平区', '120100');
INSERT INTO `qi_address` VALUES ('1019', '120102', '河东区', '120100');
INSERT INTO `qi_address` VALUES ('1020', '120103', '河西区', '120100');
INSERT INTO `qi_address` VALUES ('1021', '120104', '南开区', '120100');
INSERT INTO `qi_address` VALUES ('1022', '120105', '河北区', '120100');
INSERT INTO `qi_address` VALUES ('1023', '120106', '红桥区', '120100');
INSERT INTO `qi_address` VALUES ('1024', '120107', '塘沽区', '120100');
INSERT INTO `qi_address` VALUES ('1025', '120108', '汉沽区', '120100');
INSERT INTO `qi_address` VALUES ('1026', '120109', '大港区', '120100');
INSERT INTO `qi_address` VALUES ('1027', '120110', '东丽区', '120100');
INSERT INTO `qi_address` VALUES ('1028', '120111', '西青区', '120100');
INSERT INTO `qi_address` VALUES ('1029', '120112', '津南区', '120100');
INSERT INTO `qi_address` VALUES ('1030', '120113', '北辰区', '120100');
INSERT INTO `qi_address` VALUES ('1031', '120114', '武清区', '120100');
INSERT INTO `qi_address` VALUES ('1032', '120115', '宝坻区', '120100');
INSERT INTO `qi_address` VALUES ('1033', '120221', '宁河县', '120200');
INSERT INTO `qi_address` VALUES ('1034', '120223', '静海县', '120200');
INSERT INTO `qi_address` VALUES ('1035', '120225', '蓟　县', '120200');
INSERT INTO `qi_address` VALUES ('1036', '130101', '市辖区', '130100');
INSERT INTO `qi_address` VALUES ('1037', '130102', '长安区', '130100');
INSERT INTO `qi_address` VALUES ('1038', '130103', '桥东区', '130100');
INSERT INTO `qi_address` VALUES ('1039', '130104', '桥西区', '130100');
INSERT INTO `qi_address` VALUES ('1040', '130105', '新华区', '130100');
INSERT INTO `qi_address` VALUES ('1041', '130107', '井陉矿区', '130100');
INSERT INTO `qi_address` VALUES ('1042', '130108', '裕华区', '130100');
INSERT INTO `qi_address` VALUES ('1043', '130121', '井陉县', '130100');
INSERT INTO `qi_address` VALUES ('1044', '130123', '正定县', '130100');
INSERT INTO `qi_address` VALUES ('1045', '130124', '栾城县', '130100');
INSERT INTO `qi_address` VALUES ('1046', '130125', '行唐县', '130100');
INSERT INTO `qi_address` VALUES ('1047', '130126', '灵寿县', '130100');
INSERT INTO `qi_address` VALUES ('1048', '130127', '高邑县', '130100');
INSERT INTO `qi_address` VALUES ('1049', '130128', '深泽县', '130100');
INSERT INTO `qi_address` VALUES ('1050', '130129', '赞皇县', '130100');
INSERT INTO `qi_address` VALUES ('1051', '130130', '无极县', '130100');
INSERT INTO `qi_address` VALUES ('1052', '130131', '平山县', '130100');
INSERT INTO `qi_address` VALUES ('1053', '130132', '元氏县', '130100');
INSERT INTO `qi_address` VALUES ('1054', '130133', '赵　县', '130100');
INSERT INTO `qi_address` VALUES ('1055', '130181', '辛集市', '130100');
INSERT INTO `qi_address` VALUES ('1056', '130182', '藁城市', '130100');
INSERT INTO `qi_address` VALUES ('1057', '130183', '晋州市', '130100');
INSERT INTO `qi_address` VALUES ('1058', '130184', '新乐市', '130100');
INSERT INTO `qi_address` VALUES ('1059', '130185', '鹿泉市', '130100');
INSERT INTO `qi_address` VALUES ('1060', '130201', '市辖区', '130200');
INSERT INTO `qi_address` VALUES ('1061', '130202', '路南区', '130200');
INSERT INTO `qi_address` VALUES ('1062', '130203', '路北区', '130200');
INSERT INTO `qi_address` VALUES ('1063', '130204', '古冶区', '130200');
INSERT INTO `qi_address` VALUES ('1064', '130205', '开平区', '130200');
INSERT INTO `qi_address` VALUES ('1065', '130207', '丰南区', '130200');
INSERT INTO `qi_address` VALUES ('1066', '130208', '丰润区', '130200');
INSERT INTO `qi_address` VALUES ('1067', '130223', '滦　县', '130200');
INSERT INTO `qi_address` VALUES ('1068', '130224', '滦南县', '130200');
INSERT INTO `qi_address` VALUES ('1069', '130225', '乐亭县', '130200');
INSERT INTO `qi_address` VALUES ('1070', '130227', '迁西县', '130200');
INSERT INTO `qi_address` VALUES ('1071', '130229', '玉田县', '130200');
INSERT INTO `qi_address` VALUES ('1072', '130230', '唐海县', '130200');
INSERT INTO `qi_address` VALUES ('1073', '130281', '遵化市', '130200');
INSERT INTO `qi_address` VALUES ('1074', '130283', '迁安市', '130200');
INSERT INTO `qi_address` VALUES ('1075', '130301', '市辖区', '130300');
INSERT INTO `qi_address` VALUES ('1076', '130302', '海港区', '130300');
INSERT INTO `qi_address` VALUES ('1077', '130303', '山海关区', '130300');
INSERT INTO `qi_address` VALUES ('1078', '130304', '北戴河区', '130300');
INSERT INTO `qi_address` VALUES ('1079', '130321', '青龙满族自治县', '130300');
INSERT INTO `qi_address` VALUES ('1080', '130322', '昌黎县', '130300');
INSERT INTO `qi_address` VALUES ('1081', '130323', '抚宁县', '130300');
INSERT INTO `qi_address` VALUES ('1082', '130324', '卢龙县', '130300');
INSERT INTO `qi_address` VALUES ('1083', '130401', '市辖区', '130400');
INSERT INTO `qi_address` VALUES ('1084', '130402', '邯山区', '130400');
INSERT INTO `qi_address` VALUES ('1085', '130403', '丛台区', '130400');
INSERT INTO `qi_address` VALUES ('1086', '130404', '复兴区', '130400');
INSERT INTO `qi_address` VALUES ('1087', '130406', '峰峰矿区', '130400');
INSERT INTO `qi_address` VALUES ('1088', '130421', '邯郸县', '130400');
INSERT INTO `qi_address` VALUES ('1089', '130423', '临漳县', '130400');
INSERT INTO `qi_address` VALUES ('1090', '130424', '成安县', '130400');
INSERT INTO `qi_address` VALUES ('1091', '130425', '大名县', '130400');
INSERT INTO `qi_address` VALUES ('1092', '130426', '涉　县', '130400');
INSERT INTO `qi_address` VALUES ('1093', '130427', '磁　县', '130400');
INSERT INTO `qi_address` VALUES ('1094', '130428', '肥乡县', '130400');
INSERT INTO `qi_address` VALUES ('1095', '130429', '永年县', '130400');
INSERT INTO `qi_address` VALUES ('1096', '130430', '邱　县', '130400');
INSERT INTO `qi_address` VALUES ('1097', '130431', '鸡泽县', '130400');
INSERT INTO `qi_address` VALUES ('1098', '130432', '广平县', '130400');
INSERT INTO `qi_address` VALUES ('1099', '130433', '馆陶县', '130400');
INSERT INTO `qi_address` VALUES ('1100', '130434', '魏　县', '130400');
INSERT INTO `qi_address` VALUES ('1101', '130435', '曲周县', '130400');
INSERT INTO `qi_address` VALUES ('1102', '130481', '武安市', '130400');
INSERT INTO `qi_address` VALUES ('1103', '130501', '市辖区', '130500');
INSERT INTO `qi_address` VALUES ('1104', '130502', '桥东区', '130500');
INSERT INTO `qi_address` VALUES ('1105', '130503', '桥西区', '130500');
INSERT INTO `qi_address` VALUES ('1106', '130521', '邢台县', '130500');
INSERT INTO `qi_address` VALUES ('1107', '130522', '临城县', '130500');
INSERT INTO `qi_address` VALUES ('1108', '130523', '内丘县', '130500');
INSERT INTO `qi_address` VALUES ('1109', '130524', '柏乡县', '130500');
INSERT INTO `qi_address` VALUES ('1110', '130525', '隆尧县', '130500');
INSERT INTO `qi_address` VALUES ('1111', '130526', '任　县', '130500');
INSERT INTO `qi_address` VALUES ('1112', '130527', '南和县', '130500');
INSERT INTO `qi_address` VALUES ('1113', '130528', '宁晋县', '130500');
INSERT INTO `qi_address` VALUES ('1114', '130529', '巨鹿县', '130500');
INSERT INTO `qi_address` VALUES ('1115', '130530', '新河县', '130500');
INSERT INTO `qi_address` VALUES ('1116', '130531', '广宗县', '130500');
INSERT INTO `qi_address` VALUES ('1117', '130532', '平乡县', '130500');
INSERT INTO `qi_address` VALUES ('1118', '130533', '威　县', '130500');
INSERT INTO `qi_address` VALUES ('1119', '130534', '清河县', '130500');
INSERT INTO `qi_address` VALUES ('1120', '130535', '临西县', '130500');
INSERT INTO `qi_address` VALUES ('1121', '130581', '南宫市', '130500');
INSERT INTO `qi_address` VALUES ('1122', '130582', '沙河市', '130500');
INSERT INTO `qi_address` VALUES ('1123', '130601', '市辖区', '130600');
INSERT INTO `qi_address` VALUES ('1124', '130602', '新市区', '130600');
INSERT INTO `qi_address` VALUES ('1125', '130603', '北市区', '130600');
INSERT INTO `qi_address` VALUES ('1126', '130604', '南市区', '130600');
INSERT INTO `qi_address` VALUES ('1127', '130621', '满城县', '130600');
INSERT INTO `qi_address` VALUES ('1128', '130622', '清苑县', '130600');
INSERT INTO `qi_address` VALUES ('1129', '130623', '涞水县', '130600');
INSERT INTO `qi_address` VALUES ('1130', '130624', '阜平县', '130600');
INSERT INTO `qi_address` VALUES ('1131', '130625', '徐水县', '130600');
INSERT INTO `qi_address` VALUES ('1132', '130626', '定兴县', '130600');
INSERT INTO `qi_address` VALUES ('1133', '130627', '唐　县', '130600');
INSERT INTO `qi_address` VALUES ('1134', '130628', '高阳县', '130600');
INSERT INTO `qi_address` VALUES ('1135', '130629', '容城县', '130600');
INSERT INTO `qi_address` VALUES ('1136', '130630', '涞源县', '130600');
INSERT INTO `qi_address` VALUES ('1137', '130631', '望都县', '130600');
INSERT INTO `qi_address` VALUES ('1138', '130632', '安新县', '130600');
INSERT INTO `qi_address` VALUES ('1139', '130633', '易　县', '130600');
INSERT INTO `qi_address` VALUES ('1140', '130634', '曲阳县', '130600');
INSERT INTO `qi_address` VALUES ('1141', '130635', '蠡　县', '130600');
INSERT INTO `qi_address` VALUES ('1142', '130636', '顺平县', '130600');
INSERT INTO `qi_address` VALUES ('1143', '130637', '博野县', '130600');
INSERT INTO `qi_address` VALUES ('1144', '130638', '雄　县', '130600');
INSERT INTO `qi_address` VALUES ('1145', '130681', '涿州市', '130600');
INSERT INTO `qi_address` VALUES ('1146', '130682', '定州市', '130600');
INSERT INTO `qi_address` VALUES ('1147', '130683', '安国市', '130600');
INSERT INTO `qi_address` VALUES ('1148', '130684', '高碑店市', '130600');
INSERT INTO `qi_address` VALUES ('1149', '130701', '市辖区', '130700');
INSERT INTO `qi_address` VALUES ('1150', '130702', '桥东区', '130700');
INSERT INTO `qi_address` VALUES ('1151', '130703', '桥西区', '130700');
INSERT INTO `qi_address` VALUES ('1152', '130705', '宣化区', '130700');
INSERT INTO `qi_address` VALUES ('1153', '130706', '下花园区', '130700');
INSERT INTO `qi_address` VALUES ('1154', '130721', '宣化县', '130700');
INSERT INTO `qi_address` VALUES ('1155', '130722', '张北县', '130700');
INSERT INTO `qi_address` VALUES ('1156', '130723', '康保县', '130700');
INSERT INTO `qi_address` VALUES ('1157', '130724', '沽源县', '130700');
INSERT INTO `qi_address` VALUES ('1158', '130725', '尚义县', '130700');
INSERT INTO `qi_address` VALUES ('1159', '130726', '蔚　县', '130700');
INSERT INTO `qi_address` VALUES ('1160', '130727', '阳原县', '130700');
INSERT INTO `qi_address` VALUES ('1161', '130728', '怀安县', '130700');
INSERT INTO `qi_address` VALUES ('1162', '130729', '万全县', '130700');
INSERT INTO `qi_address` VALUES ('1163', '130730', '怀来县', '130700');
INSERT INTO `qi_address` VALUES ('1164', '130731', '涿鹿县', '130700');
INSERT INTO `qi_address` VALUES ('1165', '130732', '赤城县', '130700');
INSERT INTO `qi_address` VALUES ('1166', '130733', '崇礼县', '130700');
INSERT INTO `qi_address` VALUES ('1167', '130801', '市辖区', '130800');
INSERT INTO `qi_address` VALUES ('1168', '130802', '双桥区', '130800');
INSERT INTO `qi_address` VALUES ('1169', '130803', '双滦区', '130800');
INSERT INTO `qi_address` VALUES ('1170', '130804', '鹰手营子矿区', '130800');
INSERT INTO `qi_address` VALUES ('1171', '130821', '承德县', '130800');
INSERT INTO `qi_address` VALUES ('1172', '130822', '兴隆县', '130800');
INSERT INTO `qi_address` VALUES ('1173', '130823', '平泉县', '130800');
INSERT INTO `qi_address` VALUES ('1174', '130824', '滦平县', '130800');
INSERT INTO `qi_address` VALUES ('1175', '130825', '隆化县', '130800');
INSERT INTO `qi_address` VALUES ('1176', '130826', '丰宁满族自治县', '130800');
INSERT INTO `qi_address` VALUES ('1177', '130827', '宽城满族自治县', '130800');
INSERT INTO `qi_address` VALUES ('1178', '130828', '围场满族蒙古族自治县', '130800');
INSERT INTO `qi_address` VALUES ('1179', '130901', '市辖区', '130900');
INSERT INTO `qi_address` VALUES ('1180', '130902', '新华区', '130900');
INSERT INTO `qi_address` VALUES ('1181', '130903', '运河区', '130900');
INSERT INTO `qi_address` VALUES ('1182', '130921', '沧　县', '130900');
INSERT INTO `qi_address` VALUES ('1183', '130922', '青　县', '130900');
INSERT INTO `qi_address` VALUES ('1184', '130923', '东光县', '130900');
INSERT INTO `qi_address` VALUES ('1185', '130924', '海兴县', '130900');
INSERT INTO `qi_address` VALUES ('1186', '130925', '盐山县', '130900');
INSERT INTO `qi_address` VALUES ('1187', '130926', '肃宁县', '130900');
INSERT INTO `qi_address` VALUES ('1188', '130927', '南皮县', '130900');
INSERT INTO `qi_address` VALUES ('1189', '130928', '吴桥县', '130900');
INSERT INTO `qi_address` VALUES ('1190', '130929', '献　县', '130900');
INSERT INTO `qi_address` VALUES ('1191', '130930', '孟村回族自治县', '130900');
INSERT INTO `qi_address` VALUES ('1192', '130981', '泊头市', '130900');
INSERT INTO `qi_address` VALUES ('1193', '130982', '任丘市', '130900');
INSERT INTO `qi_address` VALUES ('1194', '130983', '黄骅市', '130900');
INSERT INTO `qi_address` VALUES ('1195', '130984', '河间市', '130900');
INSERT INTO `qi_address` VALUES ('1196', '131001', '市辖区', '131000');
INSERT INTO `qi_address` VALUES ('1197', '131002', '安次区', '131000');
INSERT INTO `qi_address` VALUES ('1198', '131003', '广阳区', '131000');
INSERT INTO `qi_address` VALUES ('1199', '131022', '固安县', '131000');
INSERT INTO `qi_address` VALUES ('1200', '131023', '永清县', '131000');
INSERT INTO `qi_address` VALUES ('1201', '131024', '香河县', '131000');
INSERT INTO `qi_address` VALUES ('1202', '131025', '大城县', '131000');
INSERT INTO `qi_address` VALUES ('1203', '131026', '文安县', '131000');
INSERT INTO `qi_address` VALUES ('1204', '131028', '大厂回族自治县', '131000');
INSERT INTO `qi_address` VALUES ('1205', '131081', '霸州市', '131000');
INSERT INTO `qi_address` VALUES ('1206', '131082', '三河市', '131000');
INSERT INTO `qi_address` VALUES ('1207', '131101', '市辖区', '131100');
INSERT INTO `qi_address` VALUES ('1208', '131102', '桃城区', '131100');
INSERT INTO `qi_address` VALUES ('1209', '131121', '枣强县', '131100');
INSERT INTO `qi_address` VALUES ('1210', '131122', '武邑县', '131100');
INSERT INTO `qi_address` VALUES ('1211', '131123', '武强县', '131100');
INSERT INTO `qi_address` VALUES ('1212', '131124', '饶阳县', '131100');
INSERT INTO `qi_address` VALUES ('1213', '131125', '安平县', '131100');
INSERT INTO `qi_address` VALUES ('1214', '131126', '故城县', '131100');
INSERT INTO `qi_address` VALUES ('1215', '131127', '景　县', '131100');
INSERT INTO `qi_address` VALUES ('1216', '131128', '阜城县', '131100');
INSERT INTO `qi_address` VALUES ('1217', '131181', '冀州市', '131100');
INSERT INTO `qi_address` VALUES ('1218', '131182', '深州市', '131100');
INSERT INTO `qi_address` VALUES ('1219', '140101', '市辖区', '140100');
INSERT INTO `qi_address` VALUES ('1220', '140105', '小店区', '140100');
INSERT INTO `qi_address` VALUES ('1221', '140106', '迎泽区', '140100');
INSERT INTO `qi_address` VALUES ('1222', '140107', '杏花岭区', '140100');
INSERT INTO `qi_address` VALUES ('1223', '140108', '尖草坪区', '140100');
INSERT INTO `qi_address` VALUES ('1224', '140109', '万柏林区', '140100');
INSERT INTO `qi_address` VALUES ('1225', '140110', '晋源区', '140100');
INSERT INTO `qi_address` VALUES ('1226', '140121', '清徐县', '140100');
INSERT INTO `qi_address` VALUES ('1227', '140122', '阳曲县', '140100');
INSERT INTO `qi_address` VALUES ('1228', '140123', '娄烦县', '140100');
INSERT INTO `qi_address` VALUES ('1229', '140181', '古交市', '140100');
INSERT INTO `qi_address` VALUES ('1230', '140201', '市辖区', '140200');
INSERT INTO `qi_address` VALUES ('1231', '140202', '城　区', '140200');
INSERT INTO `qi_address` VALUES ('1232', '140203', '矿　区', '140200');
INSERT INTO `qi_address` VALUES ('1233', '140211', '南郊区', '140200');
INSERT INTO `qi_address` VALUES ('1234', '140212', '新荣区', '140200');
INSERT INTO `qi_address` VALUES ('1235', '140221', '阳高县', '140200');
INSERT INTO `qi_address` VALUES ('1236', '140222', '天镇县', '140200');
INSERT INTO `qi_address` VALUES ('1237', '140223', '广灵县', '140200');
INSERT INTO `qi_address` VALUES ('1238', '140224', '灵丘县', '140200');
INSERT INTO `qi_address` VALUES ('1239', '140225', '浑源县', '140200');
INSERT INTO `qi_address` VALUES ('1240', '140226', '左云县', '140200');
INSERT INTO `qi_address` VALUES ('1241', '140227', '大同县', '140200');
INSERT INTO `qi_address` VALUES ('1242', '140301', '市辖区', '140300');
INSERT INTO `qi_address` VALUES ('1243', '140302', '城　区', '140300');
INSERT INTO `qi_address` VALUES ('1244', '140303', '矿　区', '140300');
INSERT INTO `qi_address` VALUES ('1245', '140311', '郊　区', '140300');
INSERT INTO `qi_address` VALUES ('1246', '140321', '平定县', '140300');
INSERT INTO `qi_address` VALUES ('1247', '140322', '盂　县', '140300');
INSERT INTO `qi_address` VALUES ('1248', '140401', '市辖区', '140400');
INSERT INTO `qi_address` VALUES ('1249', '140402', '城　区', '140400');
INSERT INTO `qi_address` VALUES ('1250', '140411', '郊　区', '140400');
INSERT INTO `qi_address` VALUES ('1251', '140421', '长治县', '140400');
INSERT INTO `qi_address` VALUES ('1252', '140423', '襄垣县', '140400');
INSERT INTO `qi_address` VALUES ('1253', '140424', '屯留县', '140400');
INSERT INTO `qi_address` VALUES ('1254', '140425', '平顺县', '140400');
INSERT INTO `qi_address` VALUES ('1255', '140426', '黎城县', '140400');
INSERT INTO `qi_address` VALUES ('1256', '140427', '壶关县', '140400');
INSERT INTO `qi_address` VALUES ('1257', '140428', '长子县', '140400');
INSERT INTO `qi_address` VALUES ('1258', '140429', '武乡县', '140400');
INSERT INTO `qi_address` VALUES ('1259', '140430', '沁　县', '140400');
INSERT INTO `qi_address` VALUES ('1260', '140431', '沁源县', '140400');
INSERT INTO `qi_address` VALUES ('1261', '140481', '潞城市', '140400');
INSERT INTO `qi_address` VALUES ('1262', '140501', '市辖区', '140500');
INSERT INTO `qi_address` VALUES ('1263', '140502', '城　区', '140500');
INSERT INTO `qi_address` VALUES ('1264', '140521', '沁水县', '140500');
INSERT INTO `qi_address` VALUES ('1265', '140522', '阳城县', '140500');
INSERT INTO `qi_address` VALUES ('1266', '140524', '陵川县', '140500');
INSERT INTO `qi_address` VALUES ('1267', '140525', '泽州县', '140500');
INSERT INTO `qi_address` VALUES ('1268', '140581', '高平市', '140500');
INSERT INTO `qi_address` VALUES ('1269', '140601', '市辖区', '140600');
INSERT INTO `qi_address` VALUES ('1270', '140602', '朔城区', '140600');
INSERT INTO `qi_address` VALUES ('1271', '140603', '平鲁区', '140600');
INSERT INTO `qi_address` VALUES ('1272', '140621', '山阴县', '140600');
INSERT INTO `qi_address` VALUES ('1273', '140622', '应　县', '140600');
INSERT INTO `qi_address` VALUES ('1274', '140623', '右玉县', '140600');
INSERT INTO `qi_address` VALUES ('1275', '140624', '怀仁县', '140600');
INSERT INTO `qi_address` VALUES ('1276', '140701', '市辖区', '140700');
INSERT INTO `qi_address` VALUES ('1277', '140702', '榆次区', '140700');
INSERT INTO `qi_address` VALUES ('1278', '140721', '榆社县', '140700');
INSERT INTO `qi_address` VALUES ('1279', '140722', '左权县', '140700');
INSERT INTO `qi_address` VALUES ('1280', '140723', '和顺县', '140700');
INSERT INTO `qi_address` VALUES ('1281', '140724', '昔阳县', '140700');
INSERT INTO `qi_address` VALUES ('1282', '140725', '寿阳县', '140700');
INSERT INTO `qi_address` VALUES ('1283', '140726', '太谷县', '140700');
INSERT INTO `qi_address` VALUES ('1284', '140727', '祁　县', '140700');
INSERT INTO `qi_address` VALUES ('1285', '140728', '平遥县', '140700');
INSERT INTO `qi_address` VALUES ('1286', '140729', '灵石县', '140700');
INSERT INTO `qi_address` VALUES ('1287', '140781', '介休市', '140700');
INSERT INTO `qi_address` VALUES ('1288', '140801', '市辖区', '140800');
INSERT INTO `qi_address` VALUES ('1289', '140802', '盐湖区', '140800');
INSERT INTO `qi_address` VALUES ('1290', '140821', '临猗县', '140800');
INSERT INTO `qi_address` VALUES ('1291', '140822', '万荣县', '140800');
INSERT INTO `qi_address` VALUES ('1292', '140823', '闻喜县', '140800');
INSERT INTO `qi_address` VALUES ('1293', '140824', '稷山县', '140800');
INSERT INTO `qi_address` VALUES ('1294', '140825', '新绛县', '140800');
INSERT INTO `qi_address` VALUES ('1295', '140826', '绛　县', '140800');
INSERT INTO `qi_address` VALUES ('1296', '140827', '垣曲县', '140800');
INSERT INTO `qi_address` VALUES ('1297', '140828', '夏　县', '140800');
INSERT INTO `qi_address` VALUES ('1298', '140829', '平陆县', '140800');
INSERT INTO `qi_address` VALUES ('1299', '140830', '芮城县', '140800');
INSERT INTO `qi_address` VALUES ('1300', '140881', '永济市', '140800');
INSERT INTO `qi_address` VALUES ('1301', '140882', '河津市', '140800');
INSERT INTO `qi_address` VALUES ('1302', '140901', '市辖区', '140900');
INSERT INTO `qi_address` VALUES ('1303', '140902', '忻府区', '140900');
INSERT INTO `qi_address` VALUES ('1304', '140921', '定襄县', '140900');
INSERT INTO `qi_address` VALUES ('1305', '140922', '五台县', '140900');
INSERT INTO `qi_address` VALUES ('1306', '140923', '代　县', '140900');
INSERT INTO `qi_address` VALUES ('1307', '140924', '繁峙县', '140900');
INSERT INTO `qi_address` VALUES ('1308', '140925', '宁武县', '140900');
INSERT INTO `qi_address` VALUES ('1309', '140926', '静乐县', '140900');
INSERT INTO `qi_address` VALUES ('1310', '140927', '神池县', '140900');
INSERT INTO `qi_address` VALUES ('1311', '140928', '五寨县', '140900');
INSERT INTO `qi_address` VALUES ('1312', '140929', '岢岚县', '140900');
INSERT INTO `qi_address` VALUES ('1313', '140930', '河曲县', '140900');
INSERT INTO `qi_address` VALUES ('1314', '140931', '保德县', '140900');
INSERT INTO `qi_address` VALUES ('1315', '140932', '偏关县', '140900');
INSERT INTO `qi_address` VALUES ('1316', '140981', '原平市', '140900');
INSERT INTO `qi_address` VALUES ('1317', '141001', '市辖区', '141000');
INSERT INTO `qi_address` VALUES ('1318', '141002', '尧都区', '141000');
INSERT INTO `qi_address` VALUES ('1319', '141021', '曲沃县', '141000');
INSERT INTO `qi_address` VALUES ('1320', '141022', '翼城县', '141000');
INSERT INTO `qi_address` VALUES ('1321', '141023', '襄汾县', '141000');
INSERT INTO `qi_address` VALUES ('1322', '141024', '洪洞县', '141000');
INSERT INTO `qi_address` VALUES ('1323', '141025', '古　县', '141000');
INSERT INTO `qi_address` VALUES ('1324', '141026', '安泽县', '141000');
INSERT INTO `qi_address` VALUES ('1325', '141027', '浮山县', '141000');
INSERT INTO `qi_address` VALUES ('1326', '141028', '吉　县', '141000');
INSERT INTO `qi_address` VALUES ('1327', '141029', '乡宁县', '141000');
INSERT INTO `qi_address` VALUES ('1328', '141030', '大宁县', '141000');
INSERT INTO `qi_address` VALUES ('1329', '141031', '隰　县', '141000');
INSERT INTO `qi_address` VALUES ('1330', '141032', '永和县', '141000');
INSERT INTO `qi_address` VALUES ('1331', '141033', '蒲　县', '141000');
INSERT INTO `qi_address` VALUES ('1332', '141034', '汾西县', '141000');
INSERT INTO `qi_address` VALUES ('1333', '141081', '侯马市', '141000');
INSERT INTO `qi_address` VALUES ('1334', '141082', '霍州市', '141000');
INSERT INTO `qi_address` VALUES ('1335', '141101', '市辖区', '141100');
INSERT INTO `qi_address` VALUES ('1336', '141102', '离石区', '141100');
INSERT INTO `qi_address` VALUES ('1337', '141121', '文水县', '141100');
INSERT INTO `qi_address` VALUES ('1338', '141122', '交城县', '141100');
INSERT INTO `qi_address` VALUES ('1339', '141123', '兴　县', '141100');
INSERT INTO `qi_address` VALUES ('1340', '141124', '临　县', '141100');
INSERT INTO `qi_address` VALUES ('1341', '141125', '柳林县', '141100');
INSERT INTO `qi_address` VALUES ('1342', '141126', '石楼县', '141100');
INSERT INTO `qi_address` VALUES ('1343', '141127', '岚　县', '141100');
INSERT INTO `qi_address` VALUES ('1344', '141128', '方山县', '141100');
INSERT INTO `qi_address` VALUES ('1345', '141129', '中阳县', '141100');
INSERT INTO `qi_address` VALUES ('1346', '141130', '交口县', '141100');
INSERT INTO `qi_address` VALUES ('1347', '141181', '孝义市', '141100');
INSERT INTO `qi_address` VALUES ('1348', '141182', '汾阳市', '141100');
INSERT INTO `qi_address` VALUES ('1349', '150101', '市辖区', '150100');
INSERT INTO `qi_address` VALUES ('1350', '150102', '新城区', '150100');
INSERT INTO `qi_address` VALUES ('1351', '150103', '回民区', '150100');
INSERT INTO `qi_address` VALUES ('1352', '150104', '玉泉区', '150100');
INSERT INTO `qi_address` VALUES ('1353', '150105', '赛罕区', '150100');
INSERT INTO `qi_address` VALUES ('1354', '150121', '土默特左旗', '150100');
INSERT INTO `qi_address` VALUES ('1355', '150122', '托克托县', '150100');
INSERT INTO `qi_address` VALUES ('1356', '150123', '和林格尔县', '150100');
INSERT INTO `qi_address` VALUES ('1357', '150124', '清水河县', '150100');
INSERT INTO `qi_address` VALUES ('1358', '150125', '武川县', '150100');
INSERT INTO `qi_address` VALUES ('1359', '150201', '市辖区', '150200');
INSERT INTO `qi_address` VALUES ('1360', '150202', '东河区', '150200');
INSERT INTO `qi_address` VALUES ('1361', '150203', '昆都仑区', '150200');
INSERT INTO `qi_address` VALUES ('1362', '150204', '青山区', '150200');
INSERT INTO `qi_address` VALUES ('1363', '150205', '石拐区', '150200');
INSERT INTO `qi_address` VALUES ('1364', '150206', '白云矿区', '150200');
INSERT INTO `qi_address` VALUES ('1365', '150207', '九原区', '150200');
INSERT INTO `qi_address` VALUES ('1366', '150221', '土默特右旗', '150200');
INSERT INTO `qi_address` VALUES ('1367', '150222', '固阳县', '150200');
INSERT INTO `qi_address` VALUES ('1368', '150223', '达尔罕茂明安联合旗', '150200');
INSERT INTO `qi_address` VALUES ('1369', '150301', '市辖区', '150300');
INSERT INTO `qi_address` VALUES ('1370', '150302', '海勃湾区', '150300');
INSERT INTO `qi_address` VALUES ('1371', '150303', '海南区', '150300');
INSERT INTO `qi_address` VALUES ('1372', '150304', '乌达区', '150300');
INSERT INTO `qi_address` VALUES ('1373', '150401', '市辖区', '150400');
INSERT INTO `qi_address` VALUES ('1374', '150402', '红山区', '150400');
INSERT INTO `qi_address` VALUES ('1375', '150403', '元宝山区', '150400');
INSERT INTO `qi_address` VALUES ('1376', '150404', '松山区', '150400');
INSERT INTO `qi_address` VALUES ('1377', '150421', '阿鲁科尔沁旗', '150400');
INSERT INTO `qi_address` VALUES ('1378', '150422', '巴林左旗', '150400');
INSERT INTO `qi_address` VALUES ('1379', '150423', '巴林右旗', '150400');
INSERT INTO `qi_address` VALUES ('1380', '150424', '林西县', '150400');
INSERT INTO `qi_address` VALUES ('1381', '150425', '克什克腾旗', '150400');
INSERT INTO `qi_address` VALUES ('1382', '150426', '翁牛特旗', '150400');
INSERT INTO `qi_address` VALUES ('1383', '150428', '喀喇沁旗', '150400');
INSERT INTO `qi_address` VALUES ('1384', '150429', '宁城县', '150400');
INSERT INTO `qi_address` VALUES ('1385', '150430', '敖汉旗', '150400');
INSERT INTO `qi_address` VALUES ('1386', '150501', '市辖区', '150500');
INSERT INTO `qi_address` VALUES ('1387', '150502', '科尔沁区', '150500');
INSERT INTO `qi_address` VALUES ('1388', '150521', '科尔沁左翼中旗', '150500');
INSERT INTO `qi_address` VALUES ('1389', '150522', '科尔沁左翼后旗', '150500');
INSERT INTO `qi_address` VALUES ('1390', '150523', '开鲁县', '150500');
INSERT INTO `qi_address` VALUES ('1391', '150524', '库伦旗', '150500');
INSERT INTO `qi_address` VALUES ('1392', '150525', '奈曼旗', '150500');
INSERT INTO `qi_address` VALUES ('1393', '150526', '扎鲁特旗', '150500');
INSERT INTO `qi_address` VALUES ('1394', '150581', '霍林郭勒市', '150500');
INSERT INTO `qi_address` VALUES ('1395', '150602', '东胜区', '150600');
INSERT INTO `qi_address` VALUES ('1396', '150621', '达拉特旗', '150600');
INSERT INTO `qi_address` VALUES ('1397', '150622', '准格尔旗', '150600');
INSERT INTO `qi_address` VALUES ('1398', '150623', '鄂托克前旗', '150600');
INSERT INTO `qi_address` VALUES ('1399', '150624', '鄂托克旗', '150600');
INSERT INTO `qi_address` VALUES ('1400', '150625', '杭锦旗', '150600');
INSERT INTO `qi_address` VALUES ('1401', '150626', '乌审旗', '150600');
INSERT INTO `qi_address` VALUES ('1402', '150627', '伊金霍洛旗', '150600');
INSERT INTO `qi_address` VALUES ('1403', '150701', '市辖区', '150700');
INSERT INTO `qi_address` VALUES ('1404', '150702', '海拉尔区', '150700');
INSERT INTO `qi_address` VALUES ('1405', '150721', '阿荣旗', '150700');
INSERT INTO `qi_address` VALUES ('1406', '150722', '莫力达瓦达斡尔族自治旗', '150700');
INSERT INTO `qi_address` VALUES ('1407', '150723', '鄂伦春自治旗', '150700');
INSERT INTO `qi_address` VALUES ('1408', '150724', '鄂温克族自治旗', '150700');
INSERT INTO `qi_address` VALUES ('1409', '150725', '陈巴尔虎旗', '150700');
INSERT INTO `qi_address` VALUES ('1410', '150726', '新巴尔虎左旗', '150700');
INSERT INTO `qi_address` VALUES ('1411', '150727', '新巴尔虎右旗', '150700');
INSERT INTO `qi_address` VALUES ('1412', '150781', '满洲里市', '150700');
INSERT INTO `qi_address` VALUES ('1413', '150782', '牙克石市', '150700');
INSERT INTO `qi_address` VALUES ('1414', '150783', '扎兰屯市', '150700');
INSERT INTO `qi_address` VALUES ('1415', '150784', '额尔古纳市', '150700');
INSERT INTO `qi_address` VALUES ('1416', '150785', '根河市', '150700');
INSERT INTO `qi_address` VALUES ('1417', '150801', '市辖区', '150800');
INSERT INTO `qi_address` VALUES ('1418', '150802', '临河区', '150800');
INSERT INTO `qi_address` VALUES ('1419', '150821', '五原县', '150800');
INSERT INTO `qi_address` VALUES ('1420', '150822', '磴口县', '150800');
INSERT INTO `qi_address` VALUES ('1421', '150823', '乌拉特前旗', '150800');
INSERT INTO `qi_address` VALUES ('1422', '150824', '乌拉特中旗', '150800');
INSERT INTO `qi_address` VALUES ('1423', '150825', '乌拉特后旗', '150800');
INSERT INTO `qi_address` VALUES ('1424', '150826', '杭锦后旗', '150800');
INSERT INTO `qi_address` VALUES ('1425', '150901', '市辖区', '150900');
INSERT INTO `qi_address` VALUES ('1426', '150902', '集宁区', '150900');
INSERT INTO `qi_address` VALUES ('1427', '150921', '卓资县', '150900');
INSERT INTO `qi_address` VALUES ('1428', '150922', '化德县', '150900');
INSERT INTO `qi_address` VALUES ('1429', '150923', '商都县', '150900');
INSERT INTO `qi_address` VALUES ('1430', '150924', '兴和县', '150900');
INSERT INTO `qi_address` VALUES ('1431', '150925', '凉城县', '150900');
INSERT INTO `qi_address` VALUES ('1432', '150926', '察哈尔右翼前旗', '150900');
INSERT INTO `qi_address` VALUES ('1433', '150927', '察哈尔右翼中旗', '150900');
INSERT INTO `qi_address` VALUES ('1434', '150928', '察哈尔右翼后旗', '150900');
INSERT INTO `qi_address` VALUES ('1435', '150929', '四子王旗', '150900');
INSERT INTO `qi_address` VALUES ('1436', '150981', '丰镇市', '150900');
INSERT INTO `qi_address` VALUES ('1437', '152201', '乌兰浩特市', '152200');
INSERT INTO `qi_address` VALUES ('1438', '152202', '阿尔山市', '152200');
INSERT INTO `qi_address` VALUES ('1439', '152221', '科尔沁右翼前旗', '152200');
INSERT INTO `qi_address` VALUES ('1440', '152222', '科尔沁右翼中旗', '152200');
INSERT INTO `qi_address` VALUES ('1441', '152223', '扎赉特旗', '152200');
INSERT INTO `qi_address` VALUES ('1442', '152224', '突泉县', '152200');
INSERT INTO `qi_address` VALUES ('1443', '152501', '二连浩特市', '152500');
INSERT INTO `qi_address` VALUES ('1444', '152502', '锡林浩特市', '152500');
INSERT INTO `qi_address` VALUES ('1445', '152522', '阿巴嘎旗', '152500');
INSERT INTO `qi_address` VALUES ('1446', '152523', '苏尼特左旗', '152500');
INSERT INTO `qi_address` VALUES ('1447', '152524', '苏尼特右旗', '152500');
INSERT INTO `qi_address` VALUES ('1448', '152525', '东乌珠穆沁旗', '152500');
INSERT INTO `qi_address` VALUES ('1449', '152526', '西乌珠穆沁旗', '152500');
INSERT INTO `qi_address` VALUES ('1450', '152527', '太仆寺旗', '152500');
INSERT INTO `qi_address` VALUES ('1451', '152528', '镶黄旗', '152500');
INSERT INTO `qi_address` VALUES ('1452', '152529', '正镶白旗', '152500');
INSERT INTO `qi_address` VALUES ('1453', '152530', '正蓝旗', '152500');
INSERT INTO `qi_address` VALUES ('1454', '152531', '多伦县', '152500');
INSERT INTO `qi_address` VALUES ('1455', '152921', '阿拉善左旗', '152900');
INSERT INTO `qi_address` VALUES ('1456', '152922', '阿拉善右旗', '152900');
INSERT INTO `qi_address` VALUES ('1457', '152923', '额济纳旗', '152900');
INSERT INTO `qi_address` VALUES ('1458', '210101', '市辖区', '210100');
INSERT INTO `qi_address` VALUES ('1459', '210102', '和平区', '210100');
INSERT INTO `qi_address` VALUES ('1460', '210103', '沈河区', '210100');
INSERT INTO `qi_address` VALUES ('1461', '210104', '大东区', '210100');
INSERT INTO `qi_address` VALUES ('1462', '210105', '皇姑区', '210100');
INSERT INTO `qi_address` VALUES ('1463', '210106', '铁西区', '210100');
INSERT INTO `qi_address` VALUES ('1464', '210111', '苏家屯区', '210100');
INSERT INTO `qi_address` VALUES ('1465', '210112', '东陵区', '210100');
INSERT INTO `qi_address` VALUES ('1466', '210113', '新城子区', '210100');
INSERT INTO `qi_address` VALUES ('1467', '210114', '于洪区', '210100');
INSERT INTO `qi_address` VALUES ('1468', '210122', '辽中县', '210100');
INSERT INTO `qi_address` VALUES ('1469', '210123', '康平县', '210100');
INSERT INTO `qi_address` VALUES ('1470', '210124', '法库县', '210100');
INSERT INTO `qi_address` VALUES ('1471', '210181', '新民市', '210100');
INSERT INTO `qi_address` VALUES ('1472', '210201', '市辖区', '210200');
INSERT INTO `qi_address` VALUES ('1473', '210202', '中山区', '210200');
INSERT INTO `qi_address` VALUES ('1474', '210203', '西岗区', '210200');
INSERT INTO `qi_address` VALUES ('1475', '210204', '沙河口区', '210200');
INSERT INTO `qi_address` VALUES ('1476', '210211', '甘井子区', '210200');
INSERT INTO `qi_address` VALUES ('1477', '210212', '旅顺口区', '210200');
INSERT INTO `qi_address` VALUES ('1478', '210213', '金州区', '210200');
INSERT INTO `qi_address` VALUES ('1479', '210224', '长海县', '210200');
INSERT INTO `qi_address` VALUES ('1480', '210281', '瓦房店市', '210200');
INSERT INTO `qi_address` VALUES ('1481', '210282', '普兰店市', '210200');
INSERT INTO `qi_address` VALUES ('1482', '210283', '庄河市', '210200');
INSERT INTO `qi_address` VALUES ('1483', '210301', '市辖区', '210300');
INSERT INTO `qi_address` VALUES ('1484', '210302', '铁东区', '210300');
INSERT INTO `qi_address` VALUES ('1485', '210303', '铁西区', '210300');
INSERT INTO `qi_address` VALUES ('1486', '210304', '立山区', '210300');
INSERT INTO `qi_address` VALUES ('1487', '210311', '千山区', '210300');
INSERT INTO `qi_address` VALUES ('1488', '210321', '台安县', '210300');
INSERT INTO `qi_address` VALUES ('1489', '210323', '岫岩满族自治县', '210300');
INSERT INTO `qi_address` VALUES ('1490', '210381', '海城市', '210300');
INSERT INTO `qi_address` VALUES ('1491', '210401', '市辖区', '210400');
INSERT INTO `qi_address` VALUES ('1492', '210402', '新抚区', '210400');
INSERT INTO `qi_address` VALUES ('1493', '210403', '东洲区', '210400');
INSERT INTO `qi_address` VALUES ('1494', '210404', '望花区', '210400');
INSERT INTO `qi_address` VALUES ('1495', '210411', '顺城区', '210400');
INSERT INTO `qi_address` VALUES ('1496', '210421', '抚顺县', '210400');
INSERT INTO `qi_address` VALUES ('1497', '210422', '新宾满族自治县', '210400');
INSERT INTO `qi_address` VALUES ('1498', '210423', '清原满族自治县', '210400');
INSERT INTO `qi_address` VALUES ('1499', '210501', '市辖区', '210500');
INSERT INTO `qi_address` VALUES ('1500', '210502', '平山区', '210500');
INSERT INTO `qi_address` VALUES ('1501', '210503', '溪湖区', '210500');
INSERT INTO `qi_address` VALUES ('1502', '210504', '明山区', '210500');
INSERT INTO `qi_address` VALUES ('1503', '210505', '南芬区', '210500');
INSERT INTO `qi_address` VALUES ('1504', '210521', '本溪满族自治县', '210500');
INSERT INTO `qi_address` VALUES ('1505', '210522', '桓仁满族自治县', '210500');
INSERT INTO `qi_address` VALUES ('1506', '210601', '市辖区', '210600');
INSERT INTO `qi_address` VALUES ('1507', '210602', '元宝区', '210600');
INSERT INTO `qi_address` VALUES ('1508', '210603', '振兴区', '210600');
INSERT INTO `qi_address` VALUES ('1509', '210604', '振安区', '210600');
INSERT INTO `qi_address` VALUES ('1510', '210624', '宽甸满族自治县', '210600');
INSERT INTO `qi_address` VALUES ('1511', '210681', '东港市', '210600');
INSERT INTO `qi_address` VALUES ('1512', '210682', '凤城市', '210600');
INSERT INTO `qi_address` VALUES ('1513', '210701', '市辖区', '210700');
INSERT INTO `qi_address` VALUES ('1514', '210702', '古塔区', '210700');
INSERT INTO `qi_address` VALUES ('1515', '210703', '凌河区', '210700');
INSERT INTO `qi_address` VALUES ('1516', '210711', '太和区', '210700');
INSERT INTO `qi_address` VALUES ('1517', '210726', '黑山县', '210700');
INSERT INTO `qi_address` VALUES ('1518', '210727', '义　县', '210700');
INSERT INTO `qi_address` VALUES ('1519', '210781', '凌海市', '210700');
INSERT INTO `qi_address` VALUES ('1520', '210782', '北宁市', '210700');
INSERT INTO `qi_address` VALUES ('1521', '210801', '市辖区', '210800');
INSERT INTO `qi_address` VALUES ('1522', '210802', '站前区', '210800');
INSERT INTO `qi_address` VALUES ('1523', '210803', '西市区', '210800');
INSERT INTO `qi_address` VALUES ('1524', '210804', '鲅鱼圈区', '210800');
INSERT INTO `qi_address` VALUES ('1525', '210811', '老边区', '210800');
INSERT INTO `qi_address` VALUES ('1526', '210881', '盖州市', '210800');
INSERT INTO `qi_address` VALUES ('1527', '210882', '大石桥市', '210800');
INSERT INTO `qi_address` VALUES ('1528', '210901', '市辖区', '210900');
INSERT INTO `qi_address` VALUES ('1529', '210902', '海州区', '210900');
INSERT INTO `qi_address` VALUES ('1530', '210903', '新邱区', '210900');
INSERT INTO `qi_address` VALUES ('1531', '210904', '太平区', '210900');
INSERT INTO `qi_address` VALUES ('1532', '210905', '清河门区', '210900');
INSERT INTO `qi_address` VALUES ('1533', '210911', '细河区', '210900');
INSERT INTO `qi_address` VALUES ('1534', '210921', '阜新蒙古族自治县', '210900');
INSERT INTO `qi_address` VALUES ('1535', '210922', '彰武县', '210900');
INSERT INTO `qi_address` VALUES ('1536', '211001', '市辖区', '211000');
INSERT INTO `qi_address` VALUES ('1537', '211002', '白塔区', '211000');
INSERT INTO `qi_address` VALUES ('1538', '211003', '文圣区', '211000');
INSERT INTO `qi_address` VALUES ('1539', '211004', '宏伟区', '211000');
INSERT INTO `qi_address` VALUES ('1540', '211005', '弓长岭区', '211000');
INSERT INTO `qi_address` VALUES ('1541', '211011', '太子河区', '211000');
INSERT INTO `qi_address` VALUES ('1542', '211021', '辽阳县', '211000');
INSERT INTO `qi_address` VALUES ('1543', '211081', '灯塔市', '211000');
INSERT INTO `qi_address` VALUES ('1544', '211101', '市辖区', '211100');
INSERT INTO `qi_address` VALUES ('1545', '211102', '双台子区', '211100');
INSERT INTO `qi_address` VALUES ('1546', '211103', '兴隆台区', '211100');
INSERT INTO `qi_address` VALUES ('1547', '211121', '大洼县', '211100');
INSERT INTO `qi_address` VALUES ('1548', '211122', '盘山县', '211100');
INSERT INTO `qi_address` VALUES ('1549', '211201', '市辖区', '211200');
INSERT INTO `qi_address` VALUES ('1550', '211202', '银州区', '211200');
INSERT INTO `qi_address` VALUES ('1551', '211204', '清河区', '211200');
INSERT INTO `qi_address` VALUES ('1552', '211221', '铁岭县', '211200');
INSERT INTO `qi_address` VALUES ('1553', '211223', '西丰县', '211200');
INSERT INTO `qi_address` VALUES ('1554', '211224', '昌图县', '211200');
INSERT INTO `qi_address` VALUES ('1555', '211281', '调兵山市', '211200');
INSERT INTO `qi_address` VALUES ('1556', '211282', '开原市', '211200');
INSERT INTO `qi_address` VALUES ('1557', '211301', '市辖区', '211300');
INSERT INTO `qi_address` VALUES ('1558', '211302', '双塔区', '211300');
INSERT INTO `qi_address` VALUES ('1559', '211303', '龙城区', '211300');
INSERT INTO `qi_address` VALUES ('1560', '211321', '朝阳县', '211300');
INSERT INTO `qi_address` VALUES ('1561', '211322', '建平县', '211300');
INSERT INTO `qi_address` VALUES ('1562', '211324', '喀喇沁左翼蒙古族自治县', '211300');
INSERT INTO `qi_address` VALUES ('1563', '211381', '北票市', '211300');
INSERT INTO `qi_address` VALUES ('1564', '211382', '凌源市', '211300');
INSERT INTO `qi_address` VALUES ('1565', '211401', '市辖区', '211400');
INSERT INTO `qi_address` VALUES ('1566', '211402', '连山区', '211400');
INSERT INTO `qi_address` VALUES ('1567', '211403', '龙港区', '211400');
INSERT INTO `qi_address` VALUES ('1568', '211404', '南票区', '211400');
INSERT INTO `qi_address` VALUES ('1569', '211421', '绥中县', '211400');
INSERT INTO `qi_address` VALUES ('1570', '211422', '建昌县', '211400');
INSERT INTO `qi_address` VALUES ('1571', '211481', '兴城市', '211400');
INSERT INTO `qi_address` VALUES ('1572', '220101', '市辖区', '220100');
INSERT INTO `qi_address` VALUES ('1573', '220102', '南关区', '220100');
INSERT INTO `qi_address` VALUES ('1574', '220103', '宽城区', '220100');
INSERT INTO `qi_address` VALUES ('1575', '220104', '朝阳区', '220100');
INSERT INTO `qi_address` VALUES ('1576', '220105', '二道区', '220100');
INSERT INTO `qi_address` VALUES ('1577', '220106', '绿园区', '220100');
INSERT INTO `qi_address` VALUES ('1578', '220112', '双阳区', '220100');
INSERT INTO `qi_address` VALUES ('1579', '220122', '农安县', '220100');
INSERT INTO `qi_address` VALUES ('1580', '220181', '九台市', '220100');
INSERT INTO `qi_address` VALUES ('1581', '220182', '榆树市', '220100');
INSERT INTO `qi_address` VALUES ('1582', '220183', '德惠市', '220100');
INSERT INTO `qi_address` VALUES ('1583', '220201', '市辖区', '220200');
INSERT INTO `qi_address` VALUES ('1584', '220202', '昌邑区', '220200');
INSERT INTO `qi_address` VALUES ('1585', '220203', '龙潭区', '220200');
INSERT INTO `qi_address` VALUES ('1586', '220204', '船营区', '220200');
INSERT INTO `qi_address` VALUES ('1587', '220211', '丰满区', '220200');
INSERT INTO `qi_address` VALUES ('1588', '220221', '永吉县', '220200');
INSERT INTO `qi_address` VALUES ('1589', '220281', '蛟河市', '220200');
INSERT INTO `qi_address` VALUES ('1590', '220282', '桦甸市', '220200');
INSERT INTO `qi_address` VALUES ('1591', '220283', '舒兰市', '220200');
INSERT INTO `qi_address` VALUES ('1592', '220284', '磐石市', '220200');
INSERT INTO `qi_address` VALUES ('1593', '220301', '市辖区', '220300');
INSERT INTO `qi_address` VALUES ('1594', '220302', '铁西区', '220300');
INSERT INTO `qi_address` VALUES ('1595', '220303', '铁东区', '220300');
INSERT INTO `qi_address` VALUES ('1596', '220322', '梨树县', '220300');
INSERT INTO `qi_address` VALUES ('1597', '220323', '伊通满族自治县', '220300');
INSERT INTO `qi_address` VALUES ('1598', '220381', '公主岭市', '220300');
INSERT INTO `qi_address` VALUES ('1599', '220382', '双辽市', '220300');
INSERT INTO `qi_address` VALUES ('1600', '220401', '市辖区', '220400');
INSERT INTO `qi_address` VALUES ('1601', '220402', '龙山区', '220400');
INSERT INTO `qi_address` VALUES ('1602', '220403', '西安区', '220400');
INSERT INTO `qi_address` VALUES ('1603', '220421', '东丰县', '220400');
INSERT INTO `qi_address` VALUES ('1604', '220422', '东辽县', '220400');
INSERT INTO `qi_address` VALUES ('1605', '220501', '市辖区', '220500');
INSERT INTO `qi_address` VALUES ('1606', '220502', '东昌区', '220500');
INSERT INTO `qi_address` VALUES ('1607', '220503', '二道江区', '220500');
INSERT INTO `qi_address` VALUES ('1608', '220521', '通化县', '220500');
INSERT INTO `qi_address` VALUES ('1609', '220523', '辉南县', '220500');
INSERT INTO `qi_address` VALUES ('1610', '220524', '柳河县', '220500');
INSERT INTO `qi_address` VALUES ('1611', '220581', '梅河口市', '220500');
INSERT INTO `qi_address` VALUES ('1612', '220582', '集安市', '220500');
INSERT INTO `qi_address` VALUES ('1613', '220601', '市辖区', '220600');
INSERT INTO `qi_address` VALUES ('1614', '220602', '八道江区', '220600');
INSERT INTO `qi_address` VALUES ('1615', '220621', '抚松县', '220600');
INSERT INTO `qi_address` VALUES ('1616', '220622', '靖宇县', '220600');
INSERT INTO `qi_address` VALUES ('1617', '220623', '长白朝鲜族自治县', '220600');
INSERT INTO `qi_address` VALUES ('1618', '220625', '江源县', '220600');
INSERT INTO `qi_address` VALUES ('1619', '220681', '临江市', '220600');
INSERT INTO `qi_address` VALUES ('1620', '220701', '市辖区', '220700');
INSERT INTO `qi_address` VALUES ('1621', '220702', '宁江区', '220700');
INSERT INTO `qi_address` VALUES ('1622', '220721', '前郭尔罗斯蒙古族自治县', '220700');
INSERT INTO `qi_address` VALUES ('1623', '220722', '长岭县', '220700');
INSERT INTO `qi_address` VALUES ('1624', '220723', '乾安县', '220700');
INSERT INTO `qi_address` VALUES ('1625', '220724', '扶余县', '220700');
INSERT INTO `qi_address` VALUES ('1626', '220801', '市辖区', '220800');
INSERT INTO `qi_address` VALUES ('1627', '220802', '洮北区', '220800');
INSERT INTO `qi_address` VALUES ('1628', '220821', '镇赉县', '220800');
INSERT INTO `qi_address` VALUES ('1629', '220822', '通榆县', '220800');
INSERT INTO `qi_address` VALUES ('1630', '220881', '洮南市', '220800');
INSERT INTO `qi_address` VALUES ('1631', '220882', '大安市', '220800');
INSERT INTO `qi_address` VALUES ('1632', '222401', '延吉市', '222400');
INSERT INTO `qi_address` VALUES ('1633', '222402', '图们市', '222400');
INSERT INTO `qi_address` VALUES ('1634', '222403', '敦化市', '222400');
INSERT INTO `qi_address` VALUES ('1635', '222404', '珲春市', '222400');
INSERT INTO `qi_address` VALUES ('1636', '222405', '龙井市', '222400');
INSERT INTO `qi_address` VALUES ('1637', '222406', '和龙市', '222400');
INSERT INTO `qi_address` VALUES ('1638', '222424', '汪清县', '222400');
INSERT INTO `qi_address` VALUES ('1639', '222426', '安图县', '222400');
INSERT INTO `qi_address` VALUES ('1640', '230101', '市辖区', '230100');
INSERT INTO `qi_address` VALUES ('1641', '230102', '道里区', '230100');
INSERT INTO `qi_address` VALUES ('1642', '230103', '南岗区', '230100');
INSERT INTO `qi_address` VALUES ('1643', '230104', '道外区', '230100');
INSERT INTO `qi_address` VALUES ('1644', '230106', '香坊区', '230100');
INSERT INTO `qi_address` VALUES ('1645', '230107', '动力区', '230100');
INSERT INTO `qi_address` VALUES ('1646', '230108', '平房区', '230100');
INSERT INTO `qi_address` VALUES ('1647', '230109', '松北区', '230100');
INSERT INTO `qi_address` VALUES ('1648', '230111', '呼兰区', '230100');
INSERT INTO `qi_address` VALUES ('1649', '230123', '依兰县', '230100');
INSERT INTO `qi_address` VALUES ('1650', '230124', '方正县', '230100');
INSERT INTO `qi_address` VALUES ('1651', '230125', '宾　县', '230100');
INSERT INTO `qi_address` VALUES ('1652', '230126', '巴彦县', '230100');
INSERT INTO `qi_address` VALUES ('1653', '230127', '木兰县', '230100');
INSERT INTO `qi_address` VALUES ('1654', '230128', '通河县', '230100');
INSERT INTO `qi_address` VALUES ('1655', '230129', '延寿县', '230100');
INSERT INTO `qi_address` VALUES ('1656', '230181', '阿城市', '230100');
INSERT INTO `qi_address` VALUES ('1657', '230182', '双城市', '230100');
INSERT INTO `qi_address` VALUES ('1658', '230183', '尚志市', '230100');
INSERT INTO `qi_address` VALUES ('1659', '230184', '五常市', '230100');
INSERT INTO `qi_address` VALUES ('1660', '230201', '市辖区', '230200');
INSERT INTO `qi_address` VALUES ('1661', '230202', '龙沙区', '230200');
INSERT INTO `qi_address` VALUES ('1662', '230203', '建华区', '230200');
INSERT INTO `qi_address` VALUES ('1663', '230204', '铁锋区', '230200');
INSERT INTO `qi_address` VALUES ('1664', '230205', '昂昂溪区', '230200');
INSERT INTO `qi_address` VALUES ('1665', '230206', '富拉尔基区', '230200');
INSERT INTO `qi_address` VALUES ('1666', '230207', '碾子山区', '230200');
INSERT INTO `qi_address` VALUES ('1667', '230208', '梅里斯达斡尔族区', '230200');
INSERT INTO `qi_address` VALUES ('1668', '230221', '龙江县', '230200');
INSERT INTO `qi_address` VALUES ('1669', '230223', '依安县', '230200');
INSERT INTO `qi_address` VALUES ('1670', '230224', '泰来县', '230200');
INSERT INTO `qi_address` VALUES ('1671', '230225', '甘南县', '230200');
INSERT INTO `qi_address` VALUES ('1672', '230227', '富裕县', '230200');
INSERT INTO `qi_address` VALUES ('1673', '230229', '克山县', '230200');
INSERT INTO `qi_address` VALUES ('1674', '230230', '克东县', '230200');
INSERT INTO `qi_address` VALUES ('1675', '230231', '拜泉县', '230200');
INSERT INTO `qi_address` VALUES ('1676', '230281', '讷河市', '230200');
INSERT INTO `qi_address` VALUES ('1677', '230301', '市辖区', '230300');
INSERT INTO `qi_address` VALUES ('1678', '230302', '鸡冠区', '230300');
INSERT INTO `qi_address` VALUES ('1679', '230303', '恒山区', '230300');
INSERT INTO `qi_address` VALUES ('1680', '230304', '滴道区', '230300');
INSERT INTO `qi_address` VALUES ('1681', '230305', '梨树区', '230300');
INSERT INTO `qi_address` VALUES ('1682', '230306', '城子河区', '230300');
INSERT INTO `qi_address` VALUES ('1683', '230307', '麻山区', '230300');
INSERT INTO `qi_address` VALUES ('1684', '230321', '鸡东县', '230300');
INSERT INTO `qi_address` VALUES ('1685', '230381', '虎林市', '230300');
INSERT INTO `qi_address` VALUES ('1686', '230382', '密山市', '230300');
INSERT INTO `qi_address` VALUES ('1687', '230401', '市辖区', '230400');
INSERT INTO `qi_address` VALUES ('1688', '230402', '向阳区', '230400');
INSERT INTO `qi_address` VALUES ('1689', '230403', '工农区', '230400');
INSERT INTO `qi_address` VALUES ('1690', '230404', '南山区', '230400');
INSERT INTO `qi_address` VALUES ('1691', '230405', '兴安区', '230400');
INSERT INTO `qi_address` VALUES ('1692', '230406', '东山区', '230400');
INSERT INTO `qi_address` VALUES ('1693', '230407', '兴山区', '230400');
INSERT INTO `qi_address` VALUES ('1694', '230421', '萝北县', '230400');
INSERT INTO `qi_address` VALUES ('1695', '230422', '绥滨县', '230400');
INSERT INTO `qi_address` VALUES ('1696', '230501', '市辖区', '230500');
INSERT INTO `qi_address` VALUES ('1697', '230502', '尖山区', '230500');
INSERT INTO `qi_address` VALUES ('1698', '230503', '岭东区', '230500');
INSERT INTO `qi_address` VALUES ('1699', '230505', '四方台区', '230500');
INSERT INTO `qi_address` VALUES ('1700', '230506', '宝山区', '230500');
INSERT INTO `qi_address` VALUES ('1701', '230521', '集贤县', '230500');
INSERT INTO `qi_address` VALUES ('1702', '230522', '友谊县', '230500');
INSERT INTO `qi_address` VALUES ('1703', '230523', '宝清县', '230500');
INSERT INTO `qi_address` VALUES ('1704', '230524', '饶河县', '230500');
INSERT INTO `qi_address` VALUES ('1705', '230601', '市辖区', '230600');
INSERT INTO `qi_address` VALUES ('1706', '230602', '萨尔图区', '230600');
INSERT INTO `qi_address` VALUES ('1707', '230603', '龙凤区', '230600');
INSERT INTO `qi_address` VALUES ('1708', '230604', '让胡路区', '230600');
INSERT INTO `qi_address` VALUES ('1709', '230605', '红岗区', '230600');
INSERT INTO `qi_address` VALUES ('1710', '230606', '大同区', '230600');
INSERT INTO `qi_address` VALUES ('1711', '230621', '肇州县', '230600');
INSERT INTO `qi_address` VALUES ('1712', '230622', '肇源县', '230600');
INSERT INTO `qi_address` VALUES ('1713', '230623', '林甸县', '230600');
INSERT INTO `qi_address` VALUES ('1714', '230624', '杜尔伯特蒙古族自治县', '230600');
INSERT INTO `qi_address` VALUES ('1715', '230701', '市辖区', '230700');
INSERT INTO `qi_address` VALUES ('1716', '230702', '伊春区', '230700');
INSERT INTO `qi_address` VALUES ('1717', '230703', '南岔区', '230700');
INSERT INTO `qi_address` VALUES ('1718', '230704', '友好区', '230700');
INSERT INTO `qi_address` VALUES ('1719', '230705', '西林区', '230700');
INSERT INTO `qi_address` VALUES ('1720', '230706', '翠峦区', '230700');
INSERT INTO `qi_address` VALUES ('1721', '230707', '新青区', '230700');
INSERT INTO `qi_address` VALUES ('1722', '230708', '美溪区', '230700');
INSERT INTO `qi_address` VALUES ('1723', '230709', '金山屯区', '230700');
INSERT INTO `qi_address` VALUES ('1724', '230710', '五营区', '230700');
INSERT INTO `qi_address` VALUES ('1725', '230711', '乌马河区', '230700');
INSERT INTO `qi_address` VALUES ('1726', '230712', '汤旺河区', '230700');
INSERT INTO `qi_address` VALUES ('1727', '230713', '带岭区', '230700');
INSERT INTO `qi_address` VALUES ('1728', '230714', '乌伊岭区', '230700');
INSERT INTO `qi_address` VALUES ('1729', '230715', '红星区', '230700');
INSERT INTO `qi_address` VALUES ('1730', '230716', '上甘岭区', '230700');
INSERT INTO `qi_address` VALUES ('1731', '230722', '嘉荫县', '230700');
INSERT INTO `qi_address` VALUES ('1732', '230781', '铁力市', '230700');
INSERT INTO `qi_address` VALUES ('1733', '230801', '市辖区', '230800');
INSERT INTO `qi_address` VALUES ('1734', '230802', '永红区', '230800');
INSERT INTO `qi_address` VALUES ('1735', '230803', '向阳区', '230800');
INSERT INTO `qi_address` VALUES ('1736', '230804', '前进区', '230800');
INSERT INTO `qi_address` VALUES ('1737', '230805', '东风区', '230800');
INSERT INTO `qi_address` VALUES ('1738', '230811', '郊　区', '230800');
INSERT INTO `qi_address` VALUES ('1739', '230822', '桦南县', '230800');
INSERT INTO `qi_address` VALUES ('1740', '230826', '桦川县', '230800');
INSERT INTO `qi_address` VALUES ('1741', '230828', '汤原县', '230800');
INSERT INTO `qi_address` VALUES ('1742', '230833', '抚远县', '230800');
INSERT INTO `qi_address` VALUES ('1743', '230881', '同江市', '230800');
INSERT INTO `qi_address` VALUES ('1744', '230882', '富锦市', '230800');
INSERT INTO `qi_address` VALUES ('1745', '230901', '市辖区', '230900');
INSERT INTO `qi_address` VALUES ('1746', '230902', '新兴区', '230900');
INSERT INTO `qi_address` VALUES ('1747', '230903', '桃山区', '230900');
INSERT INTO `qi_address` VALUES ('1748', '230904', '茄子河区', '230900');
INSERT INTO `qi_address` VALUES ('1749', '230921', '勃利县', '230900');
INSERT INTO `qi_address` VALUES ('1750', '231001', '市辖区', '231000');
INSERT INTO `qi_address` VALUES ('1751', '231002', '东安区', '231000');
INSERT INTO `qi_address` VALUES ('1752', '231003', '阳明区', '231000');
INSERT INTO `qi_address` VALUES ('1753', '231004', '爱民区', '231000');
INSERT INTO `qi_address` VALUES ('1754', '231005', '西安区', '231000');
INSERT INTO `qi_address` VALUES ('1755', '231024', '东宁县', '231000');
INSERT INTO `qi_address` VALUES ('1756', '231025', '林口县', '231000');
INSERT INTO `qi_address` VALUES ('1757', '231081', '绥芬河市', '231000');
INSERT INTO `qi_address` VALUES ('1758', '231083', '海林市', '231000');
INSERT INTO `qi_address` VALUES ('1759', '231084', '宁安市', '231000');
INSERT INTO `qi_address` VALUES ('1760', '231085', '穆棱市', '231000');
INSERT INTO `qi_address` VALUES ('1761', '231101', '市辖区', '231100');
INSERT INTO `qi_address` VALUES ('1762', '231102', '爱辉区', '231100');
INSERT INTO `qi_address` VALUES ('1763', '231121', '嫩江县', '231100');
INSERT INTO `qi_address` VALUES ('1764', '231123', '逊克县', '231100');
INSERT INTO `qi_address` VALUES ('1765', '231124', '孙吴县', '231100');
INSERT INTO `qi_address` VALUES ('1766', '231181', '北安市', '231100');
INSERT INTO `qi_address` VALUES ('1767', '231182', '五大连池市', '231100');
INSERT INTO `qi_address` VALUES ('1768', '231201', '市辖区', '231200');
INSERT INTO `qi_address` VALUES ('1769', '231202', '北林区', '231200');
INSERT INTO `qi_address` VALUES ('1770', '231221', '望奎县', '231200');
INSERT INTO `qi_address` VALUES ('1771', '231222', '兰西县', '231200');
INSERT INTO `qi_address` VALUES ('1772', '231223', '青冈县', '231200');
INSERT INTO `qi_address` VALUES ('1773', '231224', '庆安县', '231200');
INSERT INTO `qi_address` VALUES ('1774', '231225', '明水县', '231200');
INSERT INTO `qi_address` VALUES ('1775', '231226', '绥棱县', '231200');
INSERT INTO `qi_address` VALUES ('1776', '231281', '安达市', '231200');
INSERT INTO `qi_address` VALUES ('1777', '231282', '肇东市', '231200');
INSERT INTO `qi_address` VALUES ('1778', '231283', '海伦市', '231200');
INSERT INTO `qi_address` VALUES ('1779', '232721', '呼玛县', '232700');
INSERT INTO `qi_address` VALUES ('1780', '232722', '塔河县', '232700');
INSERT INTO `qi_address` VALUES ('1781', '232723', '漠河县', '232700');
INSERT INTO `qi_address` VALUES ('1782', '310101', '黄浦区', '310100');
INSERT INTO `qi_address` VALUES ('1783', '310103', '卢湾区', '310100');
INSERT INTO `qi_address` VALUES ('1784', '310104', '徐汇区', '310100');
INSERT INTO `qi_address` VALUES ('1785', '310105', '长宁区', '310100');
INSERT INTO `qi_address` VALUES ('1786', '310106', '静安区', '310100');
INSERT INTO `qi_address` VALUES ('1787', '310107', '普陀区', '310100');
INSERT INTO `qi_address` VALUES ('1788', '310108', '闸北区', '310100');
INSERT INTO `qi_address` VALUES ('1789', '310109', '虹口区', '310100');
INSERT INTO `qi_address` VALUES ('1790', '310110', '杨浦区', '310100');
INSERT INTO `qi_address` VALUES ('1791', '310112', '闵行区', '310100');
INSERT INTO `qi_address` VALUES ('1792', '310113', '宝山区', '310100');
INSERT INTO `qi_address` VALUES ('1793', '310114', '嘉定区', '310100');
INSERT INTO `qi_address` VALUES ('1794', '310115', '浦东新区', '310100');
INSERT INTO `qi_address` VALUES ('1795', '310116', '金山区', '310100');
INSERT INTO `qi_address` VALUES ('1796', '310117', '松江区', '310100');
INSERT INTO `qi_address` VALUES ('1797', '310118', '青浦区', '310100');
INSERT INTO `qi_address` VALUES ('1798', '310119', '南汇区', '310100');
INSERT INTO `qi_address` VALUES ('1799', '310120', '奉贤区', '310100');
INSERT INTO `qi_address` VALUES ('1800', '310230', '崇明县', '310200');
INSERT INTO `qi_address` VALUES ('1801', '320101', '市辖区', '320100');
INSERT INTO `qi_address` VALUES ('1802', '320102', '玄武区', '320100');
INSERT INTO `qi_address` VALUES ('1803', '320103', '白下区', '320100');
INSERT INTO `qi_address` VALUES ('1804', '320104', '秦淮区', '320100');
INSERT INTO `qi_address` VALUES ('1805', '320105', '建邺区', '320100');
INSERT INTO `qi_address` VALUES ('1806', '320106', '鼓楼区', '320100');
INSERT INTO `qi_address` VALUES ('1807', '320107', '下关区', '320100');
INSERT INTO `qi_address` VALUES ('1808', '320111', '浦口区', '320100');
INSERT INTO `qi_address` VALUES ('1809', '320113', '栖霞区', '320100');
INSERT INTO `qi_address` VALUES ('1810', '320114', '雨花台区', '320100');
INSERT INTO `qi_address` VALUES ('1811', '320115', '江宁区', '320100');
INSERT INTO `qi_address` VALUES ('1812', '320116', '六合区', '320100');
INSERT INTO `qi_address` VALUES ('1813', '320124', '溧水县', '320100');
INSERT INTO `qi_address` VALUES ('1814', '320125', '高淳县', '320100');
INSERT INTO `qi_address` VALUES ('1815', '320201', '市辖区', '320200');
INSERT INTO `qi_address` VALUES ('1816', '320202', '崇安区', '320200');
INSERT INTO `qi_address` VALUES ('1817', '320203', '南长区', '320200');
INSERT INTO `qi_address` VALUES ('1818', '320204', '北塘区', '320200');
INSERT INTO `qi_address` VALUES ('1819', '320205', '锡山区', '320200');
INSERT INTO `qi_address` VALUES ('1820', '320206', '惠山区', '320200');
INSERT INTO `qi_address` VALUES ('1821', '320211', '滨湖区', '320200');
INSERT INTO `qi_address` VALUES ('1822', '320281', '江阴市', '320200');
INSERT INTO `qi_address` VALUES ('1823', '320282', '宜兴市', '320200');
INSERT INTO `qi_address` VALUES ('1824', '320301', '市辖区', '320300');
INSERT INTO `qi_address` VALUES ('1825', '320302', '鼓楼区', '320300');
INSERT INTO `qi_address` VALUES ('1826', '320303', '云龙区', '320300');
INSERT INTO `qi_address` VALUES ('1827', '320304', '九里区', '320300');
INSERT INTO `qi_address` VALUES ('1828', '320305', '贾汪区', '320300');
INSERT INTO `qi_address` VALUES ('1829', '320311', '泉山区', '320300');
INSERT INTO `qi_address` VALUES ('1830', '320321', '丰　县', '320300');
INSERT INTO `qi_address` VALUES ('1831', '320322', '沛　县', '320300');
INSERT INTO `qi_address` VALUES ('1832', '320323', '铜山县', '320300');
INSERT INTO `qi_address` VALUES ('1833', '320324', '睢宁县', '320300');
INSERT INTO `qi_address` VALUES ('1834', '320381', '新沂市', '320300');
INSERT INTO `qi_address` VALUES ('1835', '320382', '邳州市', '320300');
INSERT INTO `qi_address` VALUES ('1836', '320401', '市辖区', '320400');
INSERT INTO `qi_address` VALUES ('1837', '320402', '天宁区', '320400');
INSERT INTO `qi_address` VALUES ('1838', '320404', '钟楼区', '320400');
INSERT INTO `qi_address` VALUES ('1839', '320405', '戚墅堰区', '320400');
INSERT INTO `qi_address` VALUES ('1840', '320411', '新北区', '320400');
INSERT INTO `qi_address` VALUES ('1841', '320412', '武进区', '320400');
INSERT INTO `qi_address` VALUES ('1842', '320481', '溧阳市', '320400');
INSERT INTO `qi_address` VALUES ('1843', '320482', '金坛市', '320400');
INSERT INTO `qi_address` VALUES ('1844', '320501', '市辖区', '320500');
INSERT INTO `qi_address` VALUES ('1845', '320502', '沧浪区', '320500');
INSERT INTO `qi_address` VALUES ('1846', '320503', '平江区', '320500');
INSERT INTO `qi_address` VALUES ('1847', '320504', '金阊区', '320500');
INSERT INTO `qi_address` VALUES ('1848', '320505', '虎丘区', '320500');
INSERT INTO `qi_address` VALUES ('1849', '320506', '吴中区', '320500');
INSERT INTO `qi_address` VALUES ('1850', '320507', '相城区', '320500');
INSERT INTO `qi_address` VALUES ('1851', '320581', '常熟市', '320500');
INSERT INTO `qi_address` VALUES ('1852', '320582', '张家港市', '320500');
INSERT INTO `qi_address` VALUES ('1853', '320583', '昆山市', '320500');
INSERT INTO `qi_address` VALUES ('1854', '320584', '吴江市', '320500');
INSERT INTO `qi_address` VALUES ('1855', '320585', '太仓市', '320500');
INSERT INTO `qi_address` VALUES ('1856', '320601', '市辖区', '320600');
INSERT INTO `qi_address` VALUES ('1857', '320602', '崇川区', '320600');
INSERT INTO `qi_address` VALUES ('1858', '320611', '港闸区', '320600');
INSERT INTO `qi_address` VALUES ('1859', '320621', '海安县', '320600');
INSERT INTO `qi_address` VALUES ('1860', '320623', '如东县', '320600');
INSERT INTO `qi_address` VALUES ('1861', '320681', '启东市', '320600');
INSERT INTO `qi_address` VALUES ('1862', '320682', '如皋市', '320600');
INSERT INTO `qi_address` VALUES ('1863', '320683', '通州市', '320600');
INSERT INTO `qi_address` VALUES ('1864', '320684', '海门市', '320600');
INSERT INTO `qi_address` VALUES ('1865', '320701', '市辖区', '320700');
INSERT INTO `qi_address` VALUES ('1866', '320703', '连云区', '320700');
INSERT INTO `qi_address` VALUES ('1867', '320705', '新浦区', '320700');
INSERT INTO `qi_address` VALUES ('1868', '320706', '海州区', '320700');
INSERT INTO `qi_address` VALUES ('1869', '320721', '赣榆县', '320700');
INSERT INTO `qi_address` VALUES ('1870', '320722', '东海县', '320700');
INSERT INTO `qi_address` VALUES ('1871', '320723', '灌云县', '320700');
INSERT INTO `qi_address` VALUES ('1872', '320724', '灌南县', '320700');
INSERT INTO `qi_address` VALUES ('1873', '320801', '市辖区', '320800');
INSERT INTO `qi_address` VALUES ('1874', '320802', '清河区', '320800');
INSERT INTO `qi_address` VALUES ('1875', '320803', '楚州区', '320800');
INSERT INTO `qi_address` VALUES ('1876', '320804', '淮阴区', '320800');
INSERT INTO `qi_address` VALUES ('1877', '320811', '清浦区', '320800');
INSERT INTO `qi_address` VALUES ('1878', '320826', '涟水县', '320800');
INSERT INTO `qi_address` VALUES ('1879', '320829', '洪泽县', '320800');
INSERT INTO `qi_address` VALUES ('1880', '320830', '盱眙县', '320800');
INSERT INTO `qi_address` VALUES ('1881', '320831', '金湖县', '320800');
INSERT INTO `qi_address` VALUES ('1882', '320901', '市辖区', '320900');
INSERT INTO `qi_address` VALUES ('1883', '320902', '亭湖区', '320900');
INSERT INTO `qi_address` VALUES ('1884', '320903', '盐都区', '320900');
INSERT INTO `qi_address` VALUES ('1885', '320921', '响水县', '320900');
INSERT INTO `qi_address` VALUES ('1886', '320922', '滨海县', '320900');
INSERT INTO `qi_address` VALUES ('1887', '320923', '阜宁县', '320900');
INSERT INTO `qi_address` VALUES ('1888', '320924', '射阳县', '320900');
INSERT INTO `qi_address` VALUES ('1889', '320925', '建湖县', '320900');
INSERT INTO `qi_address` VALUES ('1890', '320981', '东台市', '320900');
INSERT INTO `qi_address` VALUES ('1891', '320982', '大丰市', '320900');
INSERT INTO `qi_address` VALUES ('1892', '321001', '市辖区', '321000');
INSERT INTO `qi_address` VALUES ('1893', '321002', '广陵区', '321000');
INSERT INTO `qi_address` VALUES ('1894', '321003', '邗江区', '321000');
INSERT INTO `qi_address` VALUES ('1895', '321011', '郊　区', '321000');
INSERT INTO `qi_address` VALUES ('1896', '321023', '宝应县', '321000');
INSERT INTO `qi_address` VALUES ('1897', '321081', '仪征市', '321000');
INSERT INTO `qi_address` VALUES ('1898', '321084', '高邮市', '321000');
INSERT INTO `qi_address` VALUES ('1899', '321088', '江都市', '321000');
INSERT INTO `qi_address` VALUES ('1900', '321101', '市辖区', '321100');
INSERT INTO `qi_address` VALUES ('1901', '321102', '京口区', '321100');
INSERT INTO `qi_address` VALUES ('1902', '321111', '润州区', '321100');
INSERT INTO `qi_address` VALUES ('1903', '321112', '丹徒区', '321100');
INSERT INTO `qi_address` VALUES ('1904', '321181', '丹阳市', '321100');
INSERT INTO `qi_address` VALUES ('1905', '321182', '扬中市', '321100');
INSERT INTO `qi_address` VALUES ('1906', '321183', '句容市', '321100');
INSERT INTO `qi_address` VALUES ('1907', '321201', '市辖区', '321200');
INSERT INTO `qi_address` VALUES ('1908', '321202', '海陵区', '321200');
INSERT INTO `qi_address` VALUES ('1909', '321203', '高港区', '321200');
INSERT INTO `qi_address` VALUES ('1910', '321281', '兴化市', '321200');
INSERT INTO `qi_address` VALUES ('1911', '321282', '靖江市', '321200');
INSERT INTO `qi_address` VALUES ('1912', '321283', '泰兴市', '321200');
INSERT INTO `qi_address` VALUES ('1913', '321284', '姜堰市', '321200');
INSERT INTO `qi_address` VALUES ('1914', '321301', '市辖区', '321300');
INSERT INTO `qi_address` VALUES ('1915', '321302', '宿城区', '321300');
INSERT INTO `qi_address` VALUES ('1916', '321311', '宿豫区', '321300');
INSERT INTO `qi_address` VALUES ('1917', '321322', '沭阳县', '321300');
INSERT INTO `qi_address` VALUES ('1918', '321323', '泗阳县', '321300');
INSERT INTO `qi_address` VALUES ('1919', '321324', '泗洪县', '321300');
INSERT INTO `qi_address` VALUES ('1920', '330101', '市辖区', '330100');
INSERT INTO `qi_address` VALUES ('1921', '330102', '上城区', '330100');
INSERT INTO `qi_address` VALUES ('1922', '330103', '下城区', '330100');
INSERT INTO `qi_address` VALUES ('1923', '330104', '江干区', '330100');
INSERT INTO `qi_address` VALUES ('1924', '330105', '拱墅区', '330100');
INSERT INTO `qi_address` VALUES ('1925', '330106', '西湖区', '330100');
INSERT INTO `qi_address` VALUES ('1926', '330108', '滨江区', '330100');
INSERT INTO `qi_address` VALUES ('1927', '330109', '萧山区', '330100');
INSERT INTO `qi_address` VALUES ('1928', '330110', '余杭区', '330100');
INSERT INTO `qi_address` VALUES ('1929', '330122', '桐庐县', '330100');
INSERT INTO `qi_address` VALUES ('1930', '330127', '淳安县', '330100');
INSERT INTO `qi_address` VALUES ('1931', '330182', '建德市', '330100');
INSERT INTO `qi_address` VALUES ('1932', '330183', '富阳市', '330100');
INSERT INTO `qi_address` VALUES ('1933', '330185', '临安市', '330100');
INSERT INTO `qi_address` VALUES ('1934', '330201', '市辖区', '330200');
INSERT INTO `qi_address` VALUES ('1935', '330203', '海曙区', '330200');
INSERT INTO `qi_address` VALUES ('1936', '330204', '江东区', '330200');
INSERT INTO `qi_address` VALUES ('1937', '330205', '江北区', '330200');
INSERT INTO `qi_address` VALUES ('1938', '330206', '北仑区', '330200');
INSERT INTO `qi_address` VALUES ('1939', '330211', '镇海区', '330200');
INSERT INTO `qi_address` VALUES ('1940', '330212', '鄞州区', '330200');
INSERT INTO `qi_address` VALUES ('1941', '330225', '象山县', '330200');
INSERT INTO `qi_address` VALUES ('1942', '330226', '宁海县', '330200');
INSERT INTO `qi_address` VALUES ('1943', '330281', '余姚市', '330200');
INSERT INTO `qi_address` VALUES ('1944', '330282', '慈溪市', '330200');
INSERT INTO `qi_address` VALUES ('1945', '330283', '奉化市', '330200');
INSERT INTO `qi_address` VALUES ('1946', '330301', '市辖区', '330300');
INSERT INTO `qi_address` VALUES ('1947', '330302', '鹿城区', '330300');
INSERT INTO `qi_address` VALUES ('1948', '330303', '龙湾区', '330300');
INSERT INTO `qi_address` VALUES ('1949', '330304', '瓯海区', '330300');
INSERT INTO `qi_address` VALUES ('1950', '330322', '洞头县', '330300');
INSERT INTO `qi_address` VALUES ('1951', '330324', '永嘉县', '330300');
INSERT INTO `qi_address` VALUES ('1952', '330326', '平阳县', '330300');
INSERT INTO `qi_address` VALUES ('1953', '330327', '苍南县', '330300');
INSERT INTO `qi_address` VALUES ('1954', '330328', '文成县', '330300');
INSERT INTO `qi_address` VALUES ('1955', '330329', '泰顺县', '330300');
INSERT INTO `qi_address` VALUES ('1956', '330381', '瑞安市', '330300');
INSERT INTO `qi_address` VALUES ('1957', '330382', '乐清市', '330300');
INSERT INTO `qi_address` VALUES ('1958', '330401', '市辖区', '330400');
INSERT INTO `qi_address` VALUES ('1959', '330402', '秀城区', '330400');
INSERT INTO `qi_address` VALUES ('1960', '330411', '秀洲区', '330400');
INSERT INTO `qi_address` VALUES ('1961', '330421', '嘉善县', '330400');
INSERT INTO `qi_address` VALUES ('1962', '330424', '海盐县', '330400');
INSERT INTO `qi_address` VALUES ('1963', '330481', '海宁市', '330400');
INSERT INTO `qi_address` VALUES ('1964', '330482', '平湖市', '330400');
INSERT INTO `qi_address` VALUES ('1965', '330483', '桐乡市', '330400');
INSERT INTO `qi_address` VALUES ('1966', '330501', '市辖区', '330500');
INSERT INTO `qi_address` VALUES ('1967', '330502', '吴兴区', '330500');
INSERT INTO `qi_address` VALUES ('1968', '330503', '南浔区', '330500');
INSERT INTO `qi_address` VALUES ('1969', '330521', '德清县', '330500');
INSERT INTO `qi_address` VALUES ('1970', '330522', '长兴县', '330500');
INSERT INTO `qi_address` VALUES ('1971', '330523', '安吉县', '330500');
INSERT INTO `qi_address` VALUES ('1972', '330601', '市辖区', '330600');
INSERT INTO `qi_address` VALUES ('1973', '330602', '越城区', '330600');
INSERT INTO `qi_address` VALUES ('1974', '330621', '绍兴县', '330600');
INSERT INTO `qi_address` VALUES ('1975', '330624', '新昌县', '330600');
INSERT INTO `qi_address` VALUES ('1976', '330681', '诸暨市', '330600');
INSERT INTO `qi_address` VALUES ('1977', '330682', '上虞市', '330600');
INSERT INTO `qi_address` VALUES ('1978', '330683', '嵊州市', '330600');
INSERT INTO `qi_address` VALUES ('1979', '330701', '市辖区', '330700');
INSERT INTO `qi_address` VALUES ('1980', '330702', '婺城区', '330700');
INSERT INTO `qi_address` VALUES ('1981', '330703', '金东区', '330700');
INSERT INTO `qi_address` VALUES ('1982', '330723', '武义县', '330700');
INSERT INTO `qi_address` VALUES ('1983', '330726', '浦江县', '330700');
INSERT INTO `qi_address` VALUES ('1984', '330727', '磐安县', '330700');
INSERT INTO `qi_address` VALUES ('1985', '330781', '兰溪市', '330700');
INSERT INTO `qi_address` VALUES ('1986', '330782', '义乌市', '330700');
INSERT INTO `qi_address` VALUES ('1987', '330783', '东阳市', '330700');
INSERT INTO `qi_address` VALUES ('1988', '330784', '永康市', '330700');
INSERT INTO `qi_address` VALUES ('1989', '330801', '市辖区', '330800');
INSERT INTO `qi_address` VALUES ('1990', '330802', '柯城区', '330800');
INSERT INTO `qi_address` VALUES ('1991', '330803', '衢江区', '330800');
INSERT INTO `qi_address` VALUES ('1992', '330822', '常山县', '330800');
INSERT INTO `qi_address` VALUES ('1993', '330824', '开化县', '330800');
INSERT INTO `qi_address` VALUES ('1994', '330825', '龙游县', '330800');
INSERT INTO `qi_address` VALUES ('1995', '330881', '江山市', '330800');
INSERT INTO `qi_address` VALUES ('1996', '330901', '市辖区', '330900');
INSERT INTO `qi_address` VALUES ('1997', '330902', '定海区', '330900');
INSERT INTO `qi_address` VALUES ('1998', '330903', '普陀区', '330900');
INSERT INTO `qi_address` VALUES ('1999', '330921', '岱山县', '330900');
INSERT INTO `qi_address` VALUES ('2000', '330922', '嵊泗县', '330900');
INSERT INTO `qi_address` VALUES ('2001', '331001', '市辖区', '331000');
INSERT INTO `qi_address` VALUES ('2002', '331002', '椒江区', '331000');
INSERT INTO `qi_address` VALUES ('2003', '331003', '黄岩区', '331000');
INSERT INTO `qi_address` VALUES ('2004', '331004', '路桥区', '331000');
INSERT INTO `qi_address` VALUES ('2005', '331021', '玉环县', '331000');
INSERT INTO `qi_address` VALUES ('2006', '331022', '三门县', '331000');
INSERT INTO `qi_address` VALUES ('2007', '331023', '天台县', '331000');
INSERT INTO `qi_address` VALUES ('2008', '331024', '仙居县', '331000');
INSERT INTO `qi_address` VALUES ('2009', '331081', '温岭市', '331000');
INSERT INTO `qi_address` VALUES ('2010', '331082', '临海市', '331000');
INSERT INTO `qi_address` VALUES ('2011', '331101', '市辖区', '331100');
INSERT INTO `qi_address` VALUES ('2012', '331102', '莲都区', '331100');
INSERT INTO `qi_address` VALUES ('2013', '331121', '青田县', '331100');
INSERT INTO `qi_address` VALUES ('2014', '331122', '缙云县', '331100');
INSERT INTO `qi_address` VALUES ('2015', '331123', '遂昌县', '331100');
INSERT INTO `qi_address` VALUES ('2016', '331124', '松阳县', '331100');
INSERT INTO `qi_address` VALUES ('2017', '331125', '云和县', '331100');
INSERT INTO `qi_address` VALUES ('2018', '331126', '庆元县', '331100');
INSERT INTO `qi_address` VALUES ('2019', '331127', '景宁畲族自治县', '331100');
INSERT INTO `qi_address` VALUES ('2020', '331181', '龙泉市', '331100');
INSERT INTO `qi_address` VALUES ('2021', '340101', '市辖区', '340100');
INSERT INTO `qi_address` VALUES ('2022', '340102', '瑶海区', '340100');
INSERT INTO `qi_address` VALUES ('2023', '340103', '庐阳区', '340100');
INSERT INTO `qi_address` VALUES ('2024', '340104', '蜀山区', '340100');
INSERT INTO `qi_address` VALUES ('2025', '340111', '包河区', '340100');
INSERT INTO `qi_address` VALUES ('2026', '340121', '长丰县', '340100');
INSERT INTO `qi_address` VALUES ('2027', '340122', '肥东县', '340100');
INSERT INTO `qi_address` VALUES ('2028', '340123', '肥西县', '340100');
INSERT INTO `qi_address` VALUES ('2029', '340201', '市辖区', '340200');
INSERT INTO `qi_address` VALUES ('2030', '340202', '镜湖区', '340200');
INSERT INTO `qi_address` VALUES ('2031', '340203', '马塘区', '340200');
INSERT INTO `qi_address` VALUES ('2032', '340204', '新芜区', '340200');
INSERT INTO `qi_address` VALUES ('2033', '340207', '鸠江区', '340200');
INSERT INTO `qi_address` VALUES ('2034', '340221', '芜湖县', '340200');
INSERT INTO `qi_address` VALUES ('2035', '340222', '繁昌县', '340200');
INSERT INTO `qi_address` VALUES ('2036', '340223', '南陵县', '340200');
INSERT INTO `qi_address` VALUES ('2037', '340301', '市辖区', '340300');
INSERT INTO `qi_address` VALUES ('2038', '340302', '龙子湖区', '340300');
INSERT INTO `qi_address` VALUES ('2039', '340303', '蚌山区', '340300');
INSERT INTO `qi_address` VALUES ('2040', '340304', '禹会区', '340300');
INSERT INTO `qi_address` VALUES ('2041', '340311', '淮上区', '340300');
INSERT INTO `qi_address` VALUES ('2042', '340321', '怀远县', '340300');
INSERT INTO `qi_address` VALUES ('2043', '340322', '五河县', '340300');
INSERT INTO `qi_address` VALUES ('2044', '340323', '固镇县', '340300');
INSERT INTO `qi_address` VALUES ('2045', '340401', '市辖区', '340400');
INSERT INTO `qi_address` VALUES ('2046', '340402', '大通区', '340400');
INSERT INTO `qi_address` VALUES ('2047', '340403', '田家庵区', '340400');
INSERT INTO `qi_address` VALUES ('2048', '340404', '谢家集区', '340400');
INSERT INTO `qi_address` VALUES ('2049', '340405', '八公山区', '340400');
INSERT INTO `qi_address` VALUES ('2050', '340406', '潘集区', '340400');
INSERT INTO `qi_address` VALUES ('2051', '340421', '凤台县', '340400');
INSERT INTO `qi_address` VALUES ('2052', '340501', '市辖区', '340500');
INSERT INTO `qi_address` VALUES ('2053', '340502', '金家庄区', '340500');
INSERT INTO `qi_address` VALUES ('2054', '340503', '花山区', '340500');
INSERT INTO `qi_address` VALUES ('2055', '340504', '雨山区', '340500');
INSERT INTO `qi_address` VALUES ('2056', '340521', '当涂县', '340500');
INSERT INTO `qi_address` VALUES ('2057', '340601', '市辖区', '340600');
INSERT INTO `qi_address` VALUES ('2058', '340602', '杜集区', '340600');
INSERT INTO `qi_address` VALUES ('2059', '340603', '相山区', '340600');
INSERT INTO `qi_address` VALUES ('2060', '340604', '烈山区', '340600');
INSERT INTO `qi_address` VALUES ('2061', '340621', '濉溪县', '340600');
INSERT INTO `qi_address` VALUES ('2062', '340701', '市辖区', '340700');
INSERT INTO `qi_address` VALUES ('2063', '340702', '铜官山区', '340700');
INSERT INTO `qi_address` VALUES ('2064', '340703', '狮子山区', '340700');
INSERT INTO `qi_address` VALUES ('2065', '340711', '郊　区', '340700');
INSERT INTO `qi_address` VALUES ('2066', '340721', '铜陵县', '340700');
INSERT INTO `qi_address` VALUES ('2067', '340801', '市辖区', '340800');
INSERT INTO `qi_address` VALUES ('2068', '340802', '迎江区', '340800');
INSERT INTO `qi_address` VALUES ('2069', '340803', '大观区', '340800');
INSERT INTO `qi_address` VALUES ('2070', '340811', '郊　区', '340800');
INSERT INTO `qi_address` VALUES ('2071', '340822', '怀宁县', '340800');
INSERT INTO `qi_address` VALUES ('2072', '340823', '枞阳县', '340800');
INSERT INTO `qi_address` VALUES ('2073', '340824', '潜山县', '340800');
INSERT INTO `qi_address` VALUES ('2074', '340825', '太湖县', '340800');
INSERT INTO `qi_address` VALUES ('2075', '340826', '宿松县', '340800');
INSERT INTO `qi_address` VALUES ('2076', '340827', '望江县', '340800');
INSERT INTO `qi_address` VALUES ('2077', '340828', '岳西县', '340800');
INSERT INTO `qi_address` VALUES ('2078', '340881', '桐城市', '340800');
INSERT INTO `qi_address` VALUES ('2079', '341001', '市辖区', '341000');
INSERT INTO `qi_address` VALUES ('2080', '341002', '屯溪区', '341000');
INSERT INTO `qi_address` VALUES ('2081', '341003', '黄山区', '341000');
INSERT INTO `qi_address` VALUES ('2082', '341004', '徽州区', '341000');
INSERT INTO `qi_address` VALUES ('2083', '341021', '歙　县', '341000');
INSERT INTO `qi_address` VALUES ('2084', '341022', '休宁县', '341000');
INSERT INTO `qi_address` VALUES ('2085', '341023', '黟　县', '341000');
INSERT INTO `qi_address` VALUES ('2086', '341024', '祁门县', '341000');
INSERT INTO `qi_address` VALUES ('2087', '341101', '市辖区', '341100');
INSERT INTO `qi_address` VALUES ('2088', '341102', '琅琊区', '341100');
INSERT INTO `qi_address` VALUES ('2089', '341103', '南谯区', '341100');
INSERT INTO `qi_address` VALUES ('2090', '341122', '来安县', '341100');
INSERT INTO `qi_address` VALUES ('2091', '341124', '全椒县', '341100');
INSERT INTO `qi_address` VALUES ('2092', '341125', '定远县', '341100');
INSERT INTO `qi_address` VALUES ('2093', '341126', '凤阳县', '341100');
INSERT INTO `qi_address` VALUES ('2094', '341181', '天长市', '341100');
INSERT INTO `qi_address` VALUES ('2095', '341182', '明光市', '341100');
INSERT INTO `qi_address` VALUES ('2096', '341201', '市辖区', '341200');
INSERT INTO `qi_address` VALUES ('2097', '341202', '颍州区', '341200');
INSERT INTO `qi_address` VALUES ('2098', '341203', '颍东区', '341200');
INSERT INTO `qi_address` VALUES ('2099', '341204', '颍泉区', '341200');
INSERT INTO `qi_address` VALUES ('2100', '341221', '临泉县', '341200');
INSERT INTO `qi_address` VALUES ('2101', '341222', '太和县', '341200');
INSERT INTO `qi_address` VALUES ('2102', '341225', '阜南县', '341200');
INSERT INTO `qi_address` VALUES ('2103', '341226', '颍上县', '341200');
INSERT INTO `qi_address` VALUES ('2104', '341282', '界首市', '341200');
INSERT INTO `qi_address` VALUES ('2105', '341301', '市辖区', '341300');
INSERT INTO `qi_address` VALUES ('2106', '341302', '墉桥区', '341300');
INSERT INTO `qi_address` VALUES ('2107', '341321', '砀山县', '341300');
INSERT INTO `qi_address` VALUES ('2108', '341322', '萧　县', '341300');
INSERT INTO `qi_address` VALUES ('2109', '341323', '灵璧县', '341300');
INSERT INTO `qi_address` VALUES ('2110', '341324', '泗　县', '341300');
INSERT INTO `qi_address` VALUES ('2111', '341401', '市辖区', '341400');
INSERT INTO `qi_address` VALUES ('2112', '341402', '居巢区', '341400');
INSERT INTO `qi_address` VALUES ('2113', '341421', '庐江县', '341400');
INSERT INTO `qi_address` VALUES ('2114', '341422', '无为县', '341400');
INSERT INTO `qi_address` VALUES ('2115', '341423', '含山县', '341400');
INSERT INTO `qi_address` VALUES ('2116', '341424', '和　县', '341400');
INSERT INTO `qi_address` VALUES ('2117', '341501', '市辖区', '341500');
INSERT INTO `qi_address` VALUES ('2118', '341502', '金安区', '341500');
INSERT INTO `qi_address` VALUES ('2119', '341503', '裕安区', '341500');
INSERT INTO `qi_address` VALUES ('2120', '341521', '寿　县', '341500');
INSERT INTO `qi_address` VALUES ('2121', '341522', '霍邱县', '341500');
INSERT INTO `qi_address` VALUES ('2122', '341523', '舒城县', '341500');
INSERT INTO `qi_address` VALUES ('2123', '341524', '金寨县', '341500');
INSERT INTO `qi_address` VALUES ('2124', '341525', '霍山县', '341500');
INSERT INTO `qi_address` VALUES ('2125', '341601', '市辖区', '341600');
INSERT INTO `qi_address` VALUES ('2126', '341602', '谯城区', '341600');
INSERT INTO `qi_address` VALUES ('2127', '341621', '涡阳县', '341600');
INSERT INTO `qi_address` VALUES ('2128', '341622', '蒙城县', '341600');
INSERT INTO `qi_address` VALUES ('2129', '341623', '利辛县', '341600');
INSERT INTO `qi_address` VALUES ('2130', '341701', '市辖区', '341700');
INSERT INTO `qi_address` VALUES ('2131', '341702', '贵池区', '341700');
INSERT INTO `qi_address` VALUES ('2132', '341721', '东至县', '341700');
INSERT INTO `qi_address` VALUES ('2133', '341722', '石台县', '341700');
INSERT INTO `qi_address` VALUES ('2134', '341723', '青阳县', '341700');
INSERT INTO `qi_address` VALUES ('2135', '341801', '市辖区', '341800');
INSERT INTO `qi_address` VALUES ('2136', '341802', '宣州区', '341800');
INSERT INTO `qi_address` VALUES ('2137', '341821', '郎溪县', '341800');
INSERT INTO `qi_address` VALUES ('2138', '341822', '广德县', '341800');
INSERT INTO `qi_address` VALUES ('2139', '341823', '泾　县', '341800');
INSERT INTO `qi_address` VALUES ('2140', '341824', '绩溪县', '341800');
INSERT INTO `qi_address` VALUES ('2141', '341825', '旌德县', '341800');
INSERT INTO `qi_address` VALUES ('2142', '341881', '宁国市', '341800');
INSERT INTO `qi_address` VALUES ('2143', '350101', '市辖区', '350100');
INSERT INTO `qi_address` VALUES ('2144', '350102', '鼓楼区', '350100');
INSERT INTO `qi_address` VALUES ('2145', '350103', '台江区', '350100');
INSERT INTO `qi_address` VALUES ('2146', '350104', '仓山区', '350100');
INSERT INTO `qi_address` VALUES ('2147', '350105', '马尾区', '350100');
INSERT INTO `qi_address` VALUES ('2148', '350111', '晋安区', '350100');
INSERT INTO `qi_address` VALUES ('2149', '350121', '闽侯县', '350100');
INSERT INTO `qi_address` VALUES ('2150', '350122', '连江县', '350100');
INSERT INTO `qi_address` VALUES ('2151', '350123', '罗源县', '350100');
INSERT INTO `qi_address` VALUES ('2152', '350124', '闽清县', '350100');
INSERT INTO `qi_address` VALUES ('2153', '350125', '永泰县', '350100');
INSERT INTO `qi_address` VALUES ('2154', '350128', '平潭县', '350100');
INSERT INTO `qi_address` VALUES ('2155', '350181', '福清市', '350100');
INSERT INTO `qi_address` VALUES ('2156', '350182', '长乐市', '350100');
INSERT INTO `qi_address` VALUES ('2157', '350201', '市辖区', '350200');
INSERT INTO `qi_address` VALUES ('2158', '350203', '思明区', '350200');
INSERT INTO `qi_address` VALUES ('2159', '350205', '海沧区', '350200');
INSERT INTO `qi_address` VALUES ('2160', '350206', '湖里区', '350200');
INSERT INTO `qi_address` VALUES ('2161', '350211', '集美区', '350200');
INSERT INTO `qi_address` VALUES ('2162', '350212', '同安区', '350200');
INSERT INTO `qi_address` VALUES ('2163', '350213', '翔安区', '350200');
INSERT INTO `qi_address` VALUES ('2164', '350301', '市辖区', '350300');
INSERT INTO `qi_address` VALUES ('2165', '350302', '城厢区', '350300');
INSERT INTO `qi_address` VALUES ('2166', '350303', '涵江区', '350300');
INSERT INTO `qi_address` VALUES ('2167', '350304', '荔城区', '350300');
INSERT INTO `qi_address` VALUES ('2168', '350305', '秀屿区', '350300');
INSERT INTO `qi_address` VALUES ('2169', '350322', '仙游县', '350300');
INSERT INTO `qi_address` VALUES ('2170', '350401', '市辖区', '350400');
INSERT INTO `qi_address` VALUES ('2171', '350402', '梅列区', '350400');
INSERT INTO `qi_address` VALUES ('2172', '350403', '三元区', '350400');
INSERT INTO `qi_address` VALUES ('2173', '350421', '明溪县', '350400');
INSERT INTO `qi_address` VALUES ('2174', '350423', '清流县', '350400');
INSERT INTO `qi_address` VALUES ('2175', '350424', '宁化县', '350400');
INSERT INTO `qi_address` VALUES ('2176', '350425', '大田县', '350400');
INSERT INTO `qi_address` VALUES ('2177', '350426', '尤溪县', '350400');
INSERT INTO `qi_address` VALUES ('2178', '350427', '沙　县', '350400');
INSERT INTO `qi_address` VALUES ('2179', '350428', '将乐县', '350400');
INSERT INTO `qi_address` VALUES ('2180', '350429', '泰宁县', '350400');
INSERT INTO `qi_address` VALUES ('2181', '350430', '建宁县', '350400');
INSERT INTO `qi_address` VALUES ('2182', '350481', '永安市', '350400');
INSERT INTO `qi_address` VALUES ('2183', '350501', '市辖区', '350500');
INSERT INTO `qi_address` VALUES ('2184', '350502', '鲤城区', '350500');
INSERT INTO `qi_address` VALUES ('2185', '350503', '丰泽区', '350500');
INSERT INTO `qi_address` VALUES ('2186', '350504', '洛江区', '350500');
INSERT INTO `qi_address` VALUES ('2187', '350505', '泉港区', '350500');
INSERT INTO `qi_address` VALUES ('2188', '350521', '惠安县', '350500');
INSERT INTO `qi_address` VALUES ('2189', '350524', '安溪县', '350500');
INSERT INTO `qi_address` VALUES ('2190', '350525', '永春县', '350500');
INSERT INTO `qi_address` VALUES ('2191', '350526', '德化县', '350500');
INSERT INTO `qi_address` VALUES ('2192', '350527', '金门县', '350500');
INSERT INTO `qi_address` VALUES ('2193', '350581', '石狮市', '350500');
INSERT INTO `qi_address` VALUES ('2194', '350582', '晋江市', '350500');
INSERT INTO `qi_address` VALUES ('2195', '350583', '南安市', '350500');
INSERT INTO `qi_address` VALUES ('2196', '350601', '市辖区', '350600');
INSERT INTO `qi_address` VALUES ('2197', '350602', '芗城区', '350600');
INSERT INTO `qi_address` VALUES ('2198', '350603', '龙文区', '350600');
INSERT INTO `qi_address` VALUES ('2199', '350622', '云霄县', '350600');
INSERT INTO `qi_address` VALUES ('2200', '350623', '漳浦县', '350600');
INSERT INTO `qi_address` VALUES ('2201', '350624', '诏安县', '350600');
INSERT INTO `qi_address` VALUES ('2202', '350625', '长泰县', '350600');
INSERT INTO `qi_address` VALUES ('2203', '350626', '东山县', '350600');
INSERT INTO `qi_address` VALUES ('2204', '350627', '南靖县', '350600');
INSERT INTO `qi_address` VALUES ('2205', '350628', '平和县', '350600');
INSERT INTO `qi_address` VALUES ('2206', '350629', '华安县', '350600');
INSERT INTO `qi_address` VALUES ('2207', '350681', '龙海市', '350600');
INSERT INTO `qi_address` VALUES ('2208', '350701', '市辖区', '350700');
INSERT INTO `qi_address` VALUES ('2209', '350702', '延平区', '350700');
INSERT INTO `qi_address` VALUES ('2210', '350721', '顺昌县', '350700');
INSERT INTO `qi_address` VALUES ('2211', '350722', '浦城县', '350700');
INSERT INTO `qi_address` VALUES ('2212', '350723', '光泽县', '350700');
INSERT INTO `qi_address` VALUES ('2213', '350724', '松溪县', '350700');
INSERT INTO `qi_address` VALUES ('2214', '350725', '政和县', '350700');
INSERT INTO `qi_address` VALUES ('2215', '350781', '邵武市', '350700');
INSERT INTO `qi_address` VALUES ('2216', '350782', '武夷山市', '350700');
INSERT INTO `qi_address` VALUES ('2217', '350783', '建瓯市', '350700');
INSERT INTO `qi_address` VALUES ('2218', '350784', '建阳市', '350700');
INSERT INTO `qi_address` VALUES ('2219', '350801', '市辖区', '350800');
INSERT INTO `qi_address` VALUES ('2220', '350802', '新罗区', '350800');
INSERT INTO `qi_address` VALUES ('2221', '350821', '长汀县', '350800');
INSERT INTO `qi_address` VALUES ('2222', '350822', '永定县', '350800');
INSERT INTO `qi_address` VALUES ('2223', '350823', '上杭县', '350800');
INSERT INTO `qi_address` VALUES ('2224', '350824', '武平县', '350800');
INSERT INTO `qi_address` VALUES ('2225', '350825', '连城县', '350800');
INSERT INTO `qi_address` VALUES ('2226', '350881', '漳平市', '350800');
INSERT INTO `qi_address` VALUES ('2227', '350901', '市辖区', '350900');
INSERT INTO `qi_address` VALUES ('2228', '350902', '蕉城区', '350900');
INSERT INTO `qi_address` VALUES ('2229', '350921', '霞浦县', '350900');
INSERT INTO `qi_address` VALUES ('2230', '350922', '古田县', '350900');
INSERT INTO `qi_address` VALUES ('2231', '350923', '屏南县', '350900');
INSERT INTO `qi_address` VALUES ('2232', '350924', '寿宁县', '350900');
INSERT INTO `qi_address` VALUES ('2233', '350925', '周宁县', '350900');
INSERT INTO `qi_address` VALUES ('2234', '350926', '柘荣县', '350900');
INSERT INTO `qi_address` VALUES ('2235', '350981', '福安市', '350900');
INSERT INTO `qi_address` VALUES ('2236', '350982', '福鼎市', '350900');
INSERT INTO `qi_address` VALUES ('2237', '360101', '市辖区', '360100');
INSERT INTO `qi_address` VALUES ('2238', '360102', '东湖区', '360100');
INSERT INTO `qi_address` VALUES ('2239', '360103', '西湖区', '360100');
INSERT INTO `qi_address` VALUES ('2240', '360104', '青云谱区', '360100');
INSERT INTO `qi_address` VALUES ('2241', '360105', '湾里区', '360100');
INSERT INTO `qi_address` VALUES ('2242', '360111', '青山湖区', '360100');
INSERT INTO `qi_address` VALUES ('2243', '360121', '南昌县', '360100');
INSERT INTO `qi_address` VALUES ('2244', '360122', '新建县', '360100');
INSERT INTO `qi_address` VALUES ('2245', '360123', '安义县', '360100');
INSERT INTO `qi_address` VALUES ('2246', '360124', '进贤县', '360100');
INSERT INTO `qi_address` VALUES ('2247', '360201', '市辖区', '360200');
INSERT INTO `qi_address` VALUES ('2248', '360202', '昌江区', '360200');
INSERT INTO `qi_address` VALUES ('2249', '360203', '珠山区', '360200');
INSERT INTO `qi_address` VALUES ('2250', '360222', '浮梁县', '360200');
INSERT INTO `qi_address` VALUES ('2251', '360281', '乐平市', '360200');
INSERT INTO `qi_address` VALUES ('2252', '360301', '市辖区', '360300');
INSERT INTO `qi_address` VALUES ('2253', '360302', '安源区', '360300');
INSERT INTO `qi_address` VALUES ('2254', '360313', '湘东区', '360300');
INSERT INTO `qi_address` VALUES ('2255', '360321', '莲花县', '360300');
INSERT INTO `qi_address` VALUES ('2256', '360322', '上栗县', '360300');
INSERT INTO `qi_address` VALUES ('2257', '360323', '芦溪县', '360300');
INSERT INTO `qi_address` VALUES ('2258', '360401', '市辖区', '360400');
INSERT INTO `qi_address` VALUES ('2259', '360402', '庐山区', '360400');
INSERT INTO `qi_address` VALUES ('2260', '360403', '浔阳区', '360400');
INSERT INTO `qi_address` VALUES ('2261', '360421', '九江县', '360400');
INSERT INTO `qi_address` VALUES ('2262', '360423', '武宁县', '360400');
INSERT INTO `qi_address` VALUES ('2263', '360424', '修水县', '360400');
INSERT INTO `qi_address` VALUES ('2264', '360425', '永修县', '360400');
INSERT INTO `qi_address` VALUES ('2265', '360426', '德安县', '360400');
INSERT INTO `qi_address` VALUES ('2266', '360427', '星子县', '360400');
INSERT INTO `qi_address` VALUES ('2267', '360428', '都昌县', '360400');
INSERT INTO `qi_address` VALUES ('2268', '360429', '湖口县', '360400');
INSERT INTO `qi_address` VALUES ('2269', '360430', '彭泽县', '360400');
INSERT INTO `qi_address` VALUES ('2270', '360481', '瑞昌市', '360400');
INSERT INTO `qi_address` VALUES ('2271', '360501', '市辖区', '360500');
INSERT INTO `qi_address` VALUES ('2272', '360502', '渝水区', '360500');
INSERT INTO `qi_address` VALUES ('2273', '360521', '分宜县', '360500');
INSERT INTO `qi_address` VALUES ('2274', '360601', '市辖区', '360600');
INSERT INTO `qi_address` VALUES ('2275', '360602', '月湖区', '360600');
INSERT INTO `qi_address` VALUES ('2276', '360622', '余江县', '360600');
INSERT INTO `qi_address` VALUES ('2277', '360681', '贵溪市', '360600');
INSERT INTO `qi_address` VALUES ('2278', '360701', '市辖区', '360700');
INSERT INTO `qi_address` VALUES ('2279', '360702', '章贡区', '360700');
INSERT INTO `qi_address` VALUES ('2280', '360721', '赣　县', '360700');
INSERT INTO `qi_address` VALUES ('2281', '360722', '信丰县', '360700');
INSERT INTO `qi_address` VALUES ('2282', '360723', '大余县', '360700');
INSERT INTO `qi_address` VALUES ('2283', '360724', '上犹县', '360700');
INSERT INTO `qi_address` VALUES ('2284', '360725', '崇义县', '360700');
INSERT INTO `qi_address` VALUES ('2285', '360726', '安远县', '360700');
INSERT INTO `qi_address` VALUES ('2286', '360727', '龙南县', '360700');
INSERT INTO `qi_address` VALUES ('2287', '360728', '定南县', '360700');
INSERT INTO `qi_address` VALUES ('2288', '360729', '全南县', '360700');
INSERT INTO `qi_address` VALUES ('2289', '360730', '宁都县', '360700');
INSERT INTO `qi_address` VALUES ('2290', '360731', '于都县', '360700');
INSERT INTO `qi_address` VALUES ('2291', '360732', '兴国县', '360700');
INSERT INTO `qi_address` VALUES ('2292', '360733', '会昌县', '360700');
INSERT INTO `qi_address` VALUES ('2293', '360734', '寻乌县', '360700');
INSERT INTO `qi_address` VALUES ('2294', '360735', '石城县', '360700');
INSERT INTO `qi_address` VALUES ('2295', '360781', '瑞金市', '360700');
INSERT INTO `qi_address` VALUES ('2296', '360782', '南康市', '360700');
INSERT INTO `qi_address` VALUES ('2297', '360801', '市辖区', '360800');
INSERT INTO `qi_address` VALUES ('2298', '360802', '吉州区', '360800');
INSERT INTO `qi_address` VALUES ('2299', '360803', '青原区', '360800');
INSERT INTO `qi_address` VALUES ('2300', '360821', '吉安县', '360800');
INSERT INTO `qi_address` VALUES ('2301', '360822', '吉水县', '360800');
INSERT INTO `qi_address` VALUES ('2302', '360823', '峡江县', '360800');
INSERT INTO `qi_address` VALUES ('2303', '360824', '新干县', '360800');
INSERT INTO `qi_address` VALUES ('2304', '360825', '永丰县', '360800');
INSERT INTO `qi_address` VALUES ('2305', '360826', '泰和县', '360800');
INSERT INTO `qi_address` VALUES ('2306', '360827', '遂川县', '360800');
INSERT INTO `qi_address` VALUES ('2307', '360828', '万安县', '360800');
INSERT INTO `qi_address` VALUES ('2308', '360829', '安福县', '360800');
INSERT INTO `qi_address` VALUES ('2309', '360830', '永新县', '360800');
INSERT INTO `qi_address` VALUES ('2310', '360881', '井冈山市', '360800');
INSERT INTO `qi_address` VALUES ('2311', '360901', '市辖区', '360900');
INSERT INTO `qi_address` VALUES ('2312', '360902', '袁州区', '360900');
INSERT INTO `qi_address` VALUES ('2313', '360921', '奉新县', '360900');
INSERT INTO `qi_address` VALUES ('2314', '360922', '万载县', '360900');
INSERT INTO `qi_address` VALUES ('2315', '360923', '上高县', '360900');
INSERT INTO `qi_address` VALUES ('2316', '360924', '宜丰县', '360900');
INSERT INTO `qi_address` VALUES ('2317', '360925', '靖安县', '360900');
INSERT INTO `qi_address` VALUES ('2318', '360926', '铜鼓县', '360900');
INSERT INTO `qi_address` VALUES ('2319', '360981', '丰城市', '360900');
INSERT INTO `qi_address` VALUES ('2320', '360982', '樟树市', '360900');
INSERT INTO `qi_address` VALUES ('2321', '360983', '高安市', '360900');
INSERT INTO `qi_address` VALUES ('2322', '361001', '市辖区', '361000');
INSERT INTO `qi_address` VALUES ('2323', '361002', '临川区', '361000');
INSERT INTO `qi_address` VALUES ('2324', '361021', '南城县', '361000');
INSERT INTO `qi_address` VALUES ('2325', '361022', '黎川县', '361000');
INSERT INTO `qi_address` VALUES ('2326', '361023', '南丰县', '361000');
INSERT INTO `qi_address` VALUES ('2327', '361024', '崇仁县', '361000');
INSERT INTO `qi_address` VALUES ('2328', '361025', '乐安县', '361000');
INSERT INTO `qi_address` VALUES ('2329', '361026', '宜黄县', '361000');
INSERT INTO `qi_address` VALUES ('2330', '361027', '金溪县', '361000');
INSERT INTO `qi_address` VALUES ('2331', '361028', '资溪县', '361000');
INSERT INTO `qi_address` VALUES ('2332', '361029', '东乡县', '361000');
INSERT INTO `qi_address` VALUES ('2333', '361030', '广昌县', '361000');
INSERT INTO `qi_address` VALUES ('2334', '361101', '市辖区', '361100');
INSERT INTO `qi_address` VALUES ('2335', '361102', '信州区', '361100');
INSERT INTO `qi_address` VALUES ('2336', '361121', '上饶县', '361100');
INSERT INTO `qi_address` VALUES ('2337', '361122', '广丰县', '361100');
INSERT INTO `qi_address` VALUES ('2338', '361123', '玉山县', '361100');
INSERT INTO `qi_address` VALUES ('2339', '361124', '铅山县', '361100');
INSERT INTO `qi_address` VALUES ('2340', '361125', '横峰县', '361100');
INSERT INTO `qi_address` VALUES ('2341', '361126', '弋阳县', '361100');
INSERT INTO `qi_address` VALUES ('2342', '361127', '余干县', '361100');
INSERT INTO `qi_address` VALUES ('2343', '361128', '鄱阳县', '361100');
INSERT INTO `qi_address` VALUES ('2344', '361129', '万年县', '361100');
INSERT INTO `qi_address` VALUES ('2345', '361130', '婺源县', '361100');
INSERT INTO `qi_address` VALUES ('2346', '361181', '德兴市', '361100');
INSERT INTO `qi_address` VALUES ('2347', '370101', '市辖区', '370100');
INSERT INTO `qi_address` VALUES ('2348', '370102', '历下区', '370100');
INSERT INTO `qi_address` VALUES ('2349', '370103', '市中区', '370100');
INSERT INTO `qi_address` VALUES ('2350', '370104', '槐荫区', '370100');
INSERT INTO `qi_address` VALUES ('2351', '370105', '天桥区', '370100');
INSERT INTO `qi_address` VALUES ('2352', '370112', '历城区', '370100');
INSERT INTO `qi_address` VALUES ('2353', '370113', '长清区', '370100');
INSERT INTO `qi_address` VALUES ('2354', '370124', '平阴县', '370100');
INSERT INTO `qi_address` VALUES ('2355', '370125', '济阳县', '370100');
INSERT INTO `qi_address` VALUES ('2356', '370126', '商河县', '370100');
INSERT INTO `qi_address` VALUES ('2357', '370181', '章丘市', '370100');
INSERT INTO `qi_address` VALUES ('2358', '370201', '市辖区', '370200');
INSERT INTO `qi_address` VALUES ('2359', '370202', '市南区', '370200');
INSERT INTO `qi_address` VALUES ('2360', '370203', '市北区', '370200');
INSERT INTO `qi_address` VALUES ('2361', '370205', '四方区', '370200');
INSERT INTO `qi_address` VALUES ('2362', '370211', '黄岛区', '370200');
INSERT INTO `qi_address` VALUES ('2363', '370212', '崂山区', '370200');
INSERT INTO `qi_address` VALUES ('2364', '370213', '李沧区', '370200');
INSERT INTO `qi_address` VALUES ('2365', '370214', '城阳区', '370200');
INSERT INTO `qi_address` VALUES ('2366', '370281', '胶州市', '370200');
INSERT INTO `qi_address` VALUES ('2367', '370282', '即墨市', '370200');
INSERT INTO `qi_address` VALUES ('2368', '370283', '平度市', '370200');
INSERT INTO `qi_address` VALUES ('2369', '370284', '胶南市', '370200');
INSERT INTO `qi_address` VALUES ('2370', '370285', '莱西市', '370200');
INSERT INTO `qi_address` VALUES ('2371', '370301', '市辖区', '370300');
INSERT INTO `qi_address` VALUES ('2372', '370302', '淄川区', '370300');
INSERT INTO `qi_address` VALUES ('2373', '370303', '张店区', '370300');
INSERT INTO `qi_address` VALUES ('2374', '370304', '博山区', '370300');
INSERT INTO `qi_address` VALUES ('2375', '370305', '临淄区', '370300');
INSERT INTO `qi_address` VALUES ('2376', '370306', '周村区', '370300');
INSERT INTO `qi_address` VALUES ('2377', '370321', '桓台县', '370300');
INSERT INTO `qi_address` VALUES ('2378', '370322', '高青县', '370300');
INSERT INTO `qi_address` VALUES ('2379', '370323', '沂源县', '370300');
INSERT INTO `qi_address` VALUES ('2380', '370401', '市辖区', '370400');
INSERT INTO `qi_address` VALUES ('2381', '370402', '市中区', '370400');
INSERT INTO `qi_address` VALUES ('2382', '370403', '薛城区', '370400');
INSERT INTO `qi_address` VALUES ('2383', '370404', '峄城区', '370400');
INSERT INTO `qi_address` VALUES ('2384', '370405', '台儿庄区', '370400');
INSERT INTO `qi_address` VALUES ('2385', '370406', '山亭区', '370400');
INSERT INTO `qi_address` VALUES ('2386', '370481', '滕州市', '370400');
INSERT INTO `qi_address` VALUES ('2387', '370501', '市辖区', '370500');
INSERT INTO `qi_address` VALUES ('2388', '370502', '东营区', '370500');
INSERT INTO `qi_address` VALUES ('2389', '370503', '河口区', '370500');
INSERT INTO `qi_address` VALUES ('2390', '370521', '垦利县', '370500');
INSERT INTO `qi_address` VALUES ('2391', '370522', '利津县', '370500');
INSERT INTO `qi_address` VALUES ('2392', '370523', '广饶县', '370500');
INSERT INTO `qi_address` VALUES ('2393', '370601', '市辖区', '370600');
INSERT INTO `qi_address` VALUES ('2394', '370602', '芝罘区', '370600');
INSERT INTO `qi_address` VALUES ('2395', '370611', '福山区', '370600');
INSERT INTO `qi_address` VALUES ('2396', '370612', '牟平区', '370600');
INSERT INTO `qi_address` VALUES ('2397', '370613', '莱山区', '370600');
INSERT INTO `qi_address` VALUES ('2398', '370634', '长岛县', '370600');
INSERT INTO `qi_address` VALUES ('2399', '370681', '龙口市', '370600');
INSERT INTO `qi_address` VALUES ('2400', '370682', '莱阳市', '370600');
INSERT INTO `qi_address` VALUES ('2401', '370683', '莱州市', '370600');
INSERT INTO `qi_address` VALUES ('2402', '370684', '蓬莱市', '370600');
INSERT INTO `qi_address` VALUES ('2403', '370685', '招远市', '370600');
INSERT INTO `qi_address` VALUES ('2404', '370686', '栖霞市', '370600');
INSERT INTO `qi_address` VALUES ('2405', '370687', '海阳市', '370600');
INSERT INTO `qi_address` VALUES ('2406', '370701', '市辖区', '370700');
INSERT INTO `qi_address` VALUES ('2407', '370702', '潍城区', '370700');
INSERT INTO `qi_address` VALUES ('2408', '370703', '寒亭区', '370700');
INSERT INTO `qi_address` VALUES ('2409', '370704', '坊子区', '370700');
INSERT INTO `qi_address` VALUES ('2410', '370705', '奎文区', '370700');
INSERT INTO `qi_address` VALUES ('2411', '370724', '临朐县', '370700');
INSERT INTO `qi_address` VALUES ('2412', '370725', '昌乐县', '370700');
INSERT INTO `qi_address` VALUES ('2413', '370781', '青州市', '370700');
INSERT INTO `qi_address` VALUES ('2414', '370782', '诸城市', '370700');
INSERT INTO `qi_address` VALUES ('2415', '370783', '寿光市', '370700');
INSERT INTO `qi_address` VALUES ('2416', '370784', '安丘市', '370700');
INSERT INTO `qi_address` VALUES ('2417', '370785', '高密市', '370700');
INSERT INTO `qi_address` VALUES ('2418', '370786', '昌邑市', '370700');
INSERT INTO `qi_address` VALUES ('2419', '370801', '市辖区', '370800');
INSERT INTO `qi_address` VALUES ('2420', '370802', '市中区', '370800');
INSERT INTO `qi_address` VALUES ('2421', '370811', '任城区', '370800');
INSERT INTO `qi_address` VALUES ('2422', '370826', '微山县', '370800');
INSERT INTO `qi_address` VALUES ('2423', '370827', '鱼台县', '370800');
INSERT INTO `qi_address` VALUES ('2424', '370828', '金乡县', '370800');
INSERT INTO `qi_address` VALUES ('2425', '370829', '嘉祥县', '370800');
INSERT INTO `qi_address` VALUES ('2426', '370830', '汶上县', '370800');
INSERT INTO `qi_address` VALUES ('2427', '370831', '泗水县', '370800');
INSERT INTO `qi_address` VALUES ('2428', '370832', '梁山县', '370800');
INSERT INTO `qi_address` VALUES ('2429', '370881', '曲阜市', '370800');
INSERT INTO `qi_address` VALUES ('2430', '370882', '兖州市', '370800');
INSERT INTO `qi_address` VALUES ('2431', '370883', '邹城市', '370800');
INSERT INTO `qi_address` VALUES ('2432', '370901', '市辖区', '370900');
INSERT INTO `qi_address` VALUES ('2433', '370902', '泰山区', '370900');
INSERT INTO `qi_address` VALUES ('2434', '370903', '岱岳区', '370900');
INSERT INTO `qi_address` VALUES ('2435', '370921', '宁阳县', '370900');
INSERT INTO `qi_address` VALUES ('2436', '370923', '东平县', '370900');
INSERT INTO `qi_address` VALUES ('2437', '370982', '新泰市', '370900');
INSERT INTO `qi_address` VALUES ('2438', '370983', '肥城市', '370900');
INSERT INTO `qi_address` VALUES ('2439', '371001', '市辖区', '371000');
INSERT INTO `qi_address` VALUES ('2440', '371002', '环翠区', '371000');
INSERT INTO `qi_address` VALUES ('2441', '371081', '文登市', '371000');
INSERT INTO `qi_address` VALUES ('2442', '371082', '荣成市', '371000');
INSERT INTO `qi_address` VALUES ('2443', '371083', '乳山市', '371000');
INSERT INTO `qi_address` VALUES ('2444', '371101', '市辖区', '371100');
INSERT INTO `qi_address` VALUES ('2445', '371102', '东港区', '371100');
INSERT INTO `qi_address` VALUES ('2446', '371103', '岚山区', '371100');
INSERT INTO `qi_address` VALUES ('2447', '371121', '五莲县', '371100');
INSERT INTO `qi_address` VALUES ('2448', '371122', '莒　县', '371100');
INSERT INTO `qi_address` VALUES ('2449', '371201', '市辖区', '371200');
INSERT INTO `qi_address` VALUES ('2450', '371202', '莱城区', '371200');
INSERT INTO `qi_address` VALUES ('2451', '371203', '钢城区', '371200');
INSERT INTO `qi_address` VALUES ('2452', '371301', '市辖区', '371300');
INSERT INTO `qi_address` VALUES ('2453', '371302', '兰山区', '371300');
INSERT INTO `qi_address` VALUES ('2454', '371311', '罗庄区', '371300');
INSERT INTO `qi_address` VALUES ('2455', '371312', '河东区', '371300');
INSERT INTO `qi_address` VALUES ('2456', '371321', '沂南县', '371300');
INSERT INTO `qi_address` VALUES ('2457', '371322', '郯城县', '371300');
INSERT INTO `qi_address` VALUES ('2458', '371323', '沂水县', '371300');
INSERT INTO `qi_address` VALUES ('2459', '371324', '苍山县', '371300');
INSERT INTO `qi_address` VALUES ('2460', '371325', '费　县', '371300');
INSERT INTO `qi_address` VALUES ('2461', '371326', '平邑县', '371300');
INSERT INTO `qi_address` VALUES ('2462', '371327', '莒南县', '371300');
INSERT INTO `qi_address` VALUES ('2463', '371328', '蒙阴县', '371300');
INSERT INTO `qi_address` VALUES ('2464', '371329', '临沭县', '371300');
INSERT INTO `qi_address` VALUES ('2465', '371401', '市辖区', '371400');
INSERT INTO `qi_address` VALUES ('2466', '371402', '德城区', '371400');
INSERT INTO `qi_address` VALUES ('2467', '371421', '陵　县', '371400');
INSERT INTO `qi_address` VALUES ('2468', '371422', '宁津县', '371400');
INSERT INTO `qi_address` VALUES ('2469', '371423', '庆云县', '371400');
INSERT INTO `qi_address` VALUES ('2470', '371424', '临邑县', '371400');
INSERT INTO `qi_address` VALUES ('2471', '371425', '齐河县', '371400');
INSERT INTO `qi_address` VALUES ('2472', '371426', '平原县', '371400');
INSERT INTO `qi_address` VALUES ('2473', '371427', '夏津县', '371400');
INSERT INTO `qi_address` VALUES ('2474', '371428', '武城县', '371400');
INSERT INTO `qi_address` VALUES ('2475', '371481', '乐陵市', '371400');
INSERT INTO `qi_address` VALUES ('2476', '371482', '禹城市', '371400');
INSERT INTO `qi_address` VALUES ('2477', '371501', '市辖区', '371500');
INSERT INTO `qi_address` VALUES ('2478', '371502', '东昌府区', '371500');
INSERT INTO `qi_address` VALUES ('2479', '371521', '阳谷县', '371500');
INSERT INTO `qi_address` VALUES ('2480', '371522', '莘　县', '371500');
INSERT INTO `qi_address` VALUES ('2481', '371523', '茌平县', '371500');
INSERT INTO `qi_address` VALUES ('2482', '371524', '东阿县', '371500');
INSERT INTO `qi_address` VALUES ('2483', '371525', '冠　县', '371500');
INSERT INTO `qi_address` VALUES ('2484', '371526', '高唐县', '371500');
INSERT INTO `qi_address` VALUES ('2485', '371581', '临清市', '371500');
INSERT INTO `qi_address` VALUES ('2486', '371601', '市辖区', '371600');
INSERT INTO `qi_address` VALUES ('2487', '371602', '滨城区', '371600');
INSERT INTO `qi_address` VALUES ('2488', '371621', '惠民县', '371600');
INSERT INTO `qi_address` VALUES ('2489', '371622', '阳信县', '371600');
INSERT INTO `qi_address` VALUES ('2490', '371623', '无棣县', '371600');
INSERT INTO `qi_address` VALUES ('2491', '371624', '沾化县', '371600');
INSERT INTO `qi_address` VALUES ('2492', '371625', '博兴县', '371600');
INSERT INTO `qi_address` VALUES ('2493', '371626', '邹平县', '371600');
INSERT INTO `qi_address` VALUES ('2494', '371701', '市辖区', '371700');
INSERT INTO `qi_address` VALUES ('2495', '371702', '牡丹区', '371700');
INSERT INTO `qi_address` VALUES ('2496', '371721', '曹　县', '371700');
INSERT INTO `qi_address` VALUES ('2497', '371722', '单　县', '371700');
INSERT INTO `qi_address` VALUES ('2498', '371723', '成武县', '371700');
INSERT INTO `qi_address` VALUES ('2499', '371724', '巨野县', '371700');
INSERT INTO `qi_address` VALUES ('2500', '371725', '郓城县', '371700');
INSERT INTO `qi_address` VALUES ('2501', '371726', '鄄城县', '371700');
INSERT INTO `qi_address` VALUES ('2502', '371727', '定陶县', '371700');
INSERT INTO `qi_address` VALUES ('2503', '371728', '东明县', '371700');
INSERT INTO `qi_address` VALUES ('2504', '410101', '市辖区', '410100');
INSERT INTO `qi_address` VALUES ('2505', '410102', '中原区', '410100');
INSERT INTO `qi_address` VALUES ('2506', '410103', '二七区', '410100');
INSERT INTO `qi_address` VALUES ('2507', '410104', '管城回族区', '410100');
INSERT INTO `qi_address` VALUES ('2508', '410105', '金水区', '410100');
INSERT INTO `qi_address` VALUES ('2509', '410106', '上街区', '410100');
INSERT INTO `qi_address` VALUES ('2510', '410108', '邙山区', '410100');
INSERT INTO `qi_address` VALUES ('2511', '410122', '中牟县', '410100');
INSERT INTO `qi_address` VALUES ('2512', '410181', '巩义市', '410100');
INSERT INTO `qi_address` VALUES ('2513', '410182', '荥阳市', '410100');
INSERT INTO `qi_address` VALUES ('2514', '410183', '新密市', '410100');
INSERT INTO `qi_address` VALUES ('2515', '410184', '新郑市', '410100');
INSERT INTO `qi_address` VALUES ('2516', '410185', '登封市', '410100');
INSERT INTO `qi_address` VALUES ('2517', '410201', '市辖区', '410200');
INSERT INTO `qi_address` VALUES ('2518', '410202', '龙亭区', '410200');
INSERT INTO `qi_address` VALUES ('2519', '410203', '顺河回族区', '410200');
INSERT INTO `qi_address` VALUES ('2520', '410204', '鼓楼区', '410200');
INSERT INTO `qi_address` VALUES ('2521', '410205', '南关区', '410200');
INSERT INTO `qi_address` VALUES ('2522', '410211', '郊　区', '410200');
INSERT INTO `qi_address` VALUES ('2523', '410221', '杞　县', '410200');
INSERT INTO `qi_address` VALUES ('2524', '410222', '通许县', '410200');
INSERT INTO `qi_address` VALUES ('2525', '410223', '尉氏县', '410200');
INSERT INTO `qi_address` VALUES ('2526', '410224', '开封县', '410200');
INSERT INTO `qi_address` VALUES ('2527', '410225', '兰考县', '410200');
INSERT INTO `qi_address` VALUES ('2528', '410301', '市辖区', '410300');
INSERT INTO `qi_address` VALUES ('2529', '410302', '老城区', '410300');
INSERT INTO `qi_address` VALUES ('2530', '410303', '西工区', '410300');
INSERT INTO `qi_address` VALUES ('2531', '410304', '廛河回族区', '410300');
INSERT INTO `qi_address` VALUES ('2532', '410305', '涧西区', '410300');
INSERT INTO `qi_address` VALUES ('2533', '410306', '吉利区', '410300');
INSERT INTO `qi_address` VALUES ('2534', '410307', '洛龙区', '410300');
INSERT INTO `qi_address` VALUES ('2535', '410322', '孟津县', '410300');
INSERT INTO `qi_address` VALUES ('2536', '410323', '新安县', '410300');
INSERT INTO `qi_address` VALUES ('2537', '410324', '栾川县', '410300');
INSERT INTO `qi_address` VALUES ('2538', '410325', '嵩　县', '410300');
INSERT INTO `qi_address` VALUES ('2539', '410326', '汝阳县', '410300');
INSERT INTO `qi_address` VALUES ('2540', '410327', '宜阳县', '410300');
INSERT INTO `qi_address` VALUES ('2541', '410328', '洛宁县', '410300');
INSERT INTO `qi_address` VALUES ('2542', '410329', '伊川县', '410300');
INSERT INTO `qi_address` VALUES ('2543', '410381', '偃师市', '410300');
INSERT INTO `qi_address` VALUES ('2544', '410401', '市辖区', '410400');
INSERT INTO `qi_address` VALUES ('2545', '410402', '新华区', '410400');
INSERT INTO `qi_address` VALUES ('2546', '410403', '卫东区', '410400');
INSERT INTO `qi_address` VALUES ('2547', '410404', '石龙区', '410400');
INSERT INTO `qi_address` VALUES ('2548', '410411', '湛河区', '410400');
INSERT INTO `qi_address` VALUES ('2549', '410421', '宝丰县', '410400');
INSERT INTO `qi_address` VALUES ('2550', '410422', '叶　县', '410400');
INSERT INTO `qi_address` VALUES ('2551', '410423', '鲁山县', '410400');
INSERT INTO `qi_address` VALUES ('2552', '410425', '郏　县', '410400');
INSERT INTO `qi_address` VALUES ('2553', '410481', '舞钢市', '410400');
INSERT INTO `qi_address` VALUES ('2554', '410482', '汝州市', '410400');
INSERT INTO `qi_address` VALUES ('2555', '410501', '市辖区', '410500');
INSERT INTO `qi_address` VALUES ('2556', '410502', '文峰区', '410500');
INSERT INTO `qi_address` VALUES ('2557', '410503', '北关区', '410500');
INSERT INTO `qi_address` VALUES ('2558', '410505', '殷都区', '410500');
INSERT INTO `qi_address` VALUES ('2559', '410506', '龙安区', '410500');
INSERT INTO `qi_address` VALUES ('2560', '410522', '安阳县', '410500');
INSERT INTO `qi_address` VALUES ('2561', '410523', '汤阴县', '410500');
INSERT INTO `qi_address` VALUES ('2562', '410526', '滑　县', '410500');
INSERT INTO `qi_address` VALUES ('2563', '410527', '内黄县', '410500');
INSERT INTO `qi_address` VALUES ('2564', '410581', '林州市', '410500');
INSERT INTO `qi_address` VALUES ('2565', '410601', '市辖区', '410600');
INSERT INTO `qi_address` VALUES ('2566', '410602', '鹤山区', '410600');
INSERT INTO `qi_address` VALUES ('2567', '410603', '山城区', '410600');
INSERT INTO `qi_address` VALUES ('2568', '410611', '淇滨区', '410600');
INSERT INTO `qi_address` VALUES ('2569', '410621', '浚　县', '410600');
INSERT INTO `qi_address` VALUES ('2570', '410622', '淇　县', '410600');
INSERT INTO `qi_address` VALUES ('2571', '410701', '市辖区', '410700');
INSERT INTO `qi_address` VALUES ('2572', '410702', '红旗区', '410700');
INSERT INTO `qi_address` VALUES ('2573', '410703', '卫滨区', '410700');
INSERT INTO `qi_address` VALUES ('2574', '410704', '凤泉区', '410700');
INSERT INTO `qi_address` VALUES ('2575', '410711', '牧野区', '410700');
INSERT INTO `qi_address` VALUES ('2576', '410721', '新乡县', '410700');
INSERT INTO `qi_address` VALUES ('2577', '410724', '获嘉县', '410700');
INSERT INTO `qi_address` VALUES ('2578', '410725', '原阳县', '410700');
INSERT INTO `qi_address` VALUES ('2579', '410726', '延津县', '410700');
INSERT INTO `qi_address` VALUES ('2580', '410727', '封丘县', '410700');
INSERT INTO `qi_address` VALUES ('2581', '410728', '长垣县', '410700');
INSERT INTO `qi_address` VALUES ('2582', '410781', '卫辉市', '410700');
INSERT INTO `qi_address` VALUES ('2583', '410782', '辉县市', '410700');
INSERT INTO `qi_address` VALUES ('2584', '410801', '市辖区', '410800');
INSERT INTO `qi_address` VALUES ('2585', '410802', '解放区', '410800');
INSERT INTO `qi_address` VALUES ('2586', '410803', '中站区', '410800');
INSERT INTO `qi_address` VALUES ('2587', '410804', '马村区', '410800');
INSERT INTO `qi_address` VALUES ('2588', '410811', '山阳区', '410800');
INSERT INTO `qi_address` VALUES ('2589', '410821', '修武县', '410800');
INSERT INTO `qi_address` VALUES ('2590', '410822', '博爱县', '410800');
INSERT INTO `qi_address` VALUES ('2591', '410823', '武陟县', '410800');
INSERT INTO `qi_address` VALUES ('2592', '410825', '温　县', '410800');
INSERT INTO `qi_address` VALUES ('2593', '410881', '济源市', '410800');
INSERT INTO `qi_address` VALUES ('2594', '410882', '沁阳市', '410800');
INSERT INTO `qi_address` VALUES ('2595', '410883', '孟州市', '410800');
INSERT INTO `qi_address` VALUES ('2596', '410901', '市辖区', '410900');
INSERT INTO `qi_address` VALUES ('2597', '410902', '华龙区', '410900');
INSERT INTO `qi_address` VALUES ('2598', '410922', '清丰县', '410900');
INSERT INTO `qi_address` VALUES ('2599', '410923', '南乐县', '410900');
INSERT INTO `qi_address` VALUES ('2600', '410926', '范　县', '410900');
INSERT INTO `qi_address` VALUES ('2601', '410927', '台前县', '410900');
INSERT INTO `qi_address` VALUES ('2602', '410928', '濮阳县', '410900');
INSERT INTO `qi_address` VALUES ('2603', '411001', '市辖区', '411000');
INSERT INTO `qi_address` VALUES ('2604', '411002', '魏都区', '411000');
INSERT INTO `qi_address` VALUES ('2605', '411023', '许昌县', '411000');
INSERT INTO `qi_address` VALUES ('2606', '411024', '鄢陵县', '411000');
INSERT INTO `qi_address` VALUES ('2607', '411025', '襄城县', '411000');
INSERT INTO `qi_address` VALUES ('2608', '411081', '禹州市', '411000');
INSERT INTO `qi_address` VALUES ('2609', '411082', '长葛市', '411000');
INSERT INTO `qi_address` VALUES ('2610', '411101', '市辖区', '411100');
INSERT INTO `qi_address` VALUES ('2611', '411102', '源汇区', '411100');
INSERT INTO `qi_address` VALUES ('2612', '411103', '郾城区', '411100');
INSERT INTO `qi_address` VALUES ('2613', '411104', '召陵区', '411100');
INSERT INTO `qi_address` VALUES ('2614', '411121', '舞阳县', '411100');
INSERT INTO `qi_address` VALUES ('2615', '411122', '临颍县', '411100');
INSERT INTO `qi_address` VALUES ('2616', '411201', '市辖区', '411200');
INSERT INTO `qi_address` VALUES ('2617', '411202', '湖滨区', '411200');
INSERT INTO `qi_address` VALUES ('2618', '411221', '渑池县', '411200');
INSERT INTO `qi_address` VALUES ('2619', '411222', '陕　县', '411200');
INSERT INTO `qi_address` VALUES ('2620', '411224', '卢氏县', '411200');
INSERT INTO `qi_address` VALUES ('2621', '411281', '义马市', '411200');
INSERT INTO `qi_address` VALUES ('2622', '411282', '灵宝市', '411200');
INSERT INTO `qi_address` VALUES ('2623', '411301', '市辖区', '411300');
INSERT INTO `qi_address` VALUES ('2624', '411302', '宛城区', '411300');
INSERT INTO `qi_address` VALUES ('2625', '411303', '卧龙区', '411300');
INSERT INTO `qi_address` VALUES ('2626', '411321', '南召县', '411300');
INSERT INTO `qi_address` VALUES ('2627', '411322', '方城县', '411300');
INSERT INTO `qi_address` VALUES ('2628', '411323', '西峡县', '411300');
INSERT INTO `qi_address` VALUES ('2629', '411324', '镇平县', '411300');
INSERT INTO `qi_address` VALUES ('2630', '411325', '内乡县', '411300');
INSERT INTO `qi_address` VALUES ('2631', '411326', '淅川县', '411300');
INSERT INTO `qi_address` VALUES ('2632', '411327', '社旗县', '411300');
INSERT INTO `qi_address` VALUES ('2633', '411328', '唐河县', '411300');
INSERT INTO `qi_address` VALUES ('2634', '411329', '新野县', '411300');
INSERT INTO `qi_address` VALUES ('2635', '411330', '桐柏县', '411300');
INSERT INTO `qi_address` VALUES ('2636', '411381', '邓州市', '411300');
INSERT INTO `qi_address` VALUES ('2637', '411401', '市辖区', '411400');
INSERT INTO `qi_address` VALUES ('2638', '411402', '梁园区', '411400');
INSERT INTO `qi_address` VALUES ('2639', '411403', '睢阳区', '411400');
INSERT INTO `qi_address` VALUES ('2640', '411421', '民权县', '411400');
INSERT INTO `qi_address` VALUES ('2641', '411422', '睢　县', '411400');
INSERT INTO `qi_address` VALUES ('2642', '411423', '宁陵县', '411400');
INSERT INTO `qi_address` VALUES ('2643', '411424', '柘城县', '411400');
INSERT INTO `qi_address` VALUES ('2644', '411425', '虞城县', '411400');
INSERT INTO `qi_address` VALUES ('2645', '411426', '夏邑县', '411400');
INSERT INTO `qi_address` VALUES ('2646', '411481', '永城市', '411400');
INSERT INTO `qi_address` VALUES ('2647', '411501', '市辖区', '411500');
INSERT INTO `qi_address` VALUES ('2648', '411502', '师河区', '411500');
INSERT INTO `qi_address` VALUES ('2649', '411503', '平桥区', '411500');
INSERT INTO `qi_address` VALUES ('2650', '411521', '罗山县', '411500');
INSERT INTO `qi_address` VALUES ('2651', '411522', '光山县', '411500');
INSERT INTO `qi_address` VALUES ('2652', '411523', '新　县', '411500');
INSERT INTO `qi_address` VALUES ('2653', '411524', '商城县', '411500');
INSERT INTO `qi_address` VALUES ('2654', '411525', '固始县', '411500');
INSERT INTO `qi_address` VALUES ('2655', '411526', '潢川县', '411500');
INSERT INTO `qi_address` VALUES ('2656', '411527', '淮滨县', '411500');
INSERT INTO `qi_address` VALUES ('2657', '411528', '息　县', '411500');
INSERT INTO `qi_address` VALUES ('2658', '411601', '市辖区', '411600');
INSERT INTO `qi_address` VALUES ('2659', '411602', '川汇区', '411600');
INSERT INTO `qi_address` VALUES ('2660', '411621', '扶沟县', '411600');
INSERT INTO `qi_address` VALUES ('2661', '411622', '西华县', '411600');
INSERT INTO `qi_address` VALUES ('2662', '411623', '商水县', '411600');
INSERT INTO `qi_address` VALUES ('2663', '411624', '沈丘县', '411600');
INSERT INTO `qi_address` VALUES ('2664', '411625', '郸城县', '411600');
INSERT INTO `qi_address` VALUES ('2665', '411626', '淮阳县', '411600');
INSERT INTO `qi_address` VALUES ('2666', '411627', '太康县', '411600');
INSERT INTO `qi_address` VALUES ('2667', '411628', '鹿邑县', '411600');
INSERT INTO `qi_address` VALUES ('2668', '411681', '项城市', '411600');
INSERT INTO `qi_address` VALUES ('2669', '411701', '市辖区', '411700');
INSERT INTO `qi_address` VALUES ('2670', '411702', '驿城区', '411700');
INSERT INTO `qi_address` VALUES ('2671', '411721', '西平县', '411700');
INSERT INTO `qi_address` VALUES ('2672', '411722', '上蔡县', '411700');
INSERT INTO `qi_address` VALUES ('2673', '411723', '平舆县', '411700');
INSERT INTO `qi_address` VALUES ('2674', '411724', '正阳县', '411700');
INSERT INTO `qi_address` VALUES ('2675', '411725', '确山县', '411700');
INSERT INTO `qi_address` VALUES ('2676', '411726', '泌阳县', '411700');
INSERT INTO `qi_address` VALUES ('2677', '411727', '汝南县', '411700');
INSERT INTO `qi_address` VALUES ('2678', '411728', '遂平县', '411700');
INSERT INTO `qi_address` VALUES ('2679', '411729', '新蔡县', '411700');
INSERT INTO `qi_address` VALUES ('2680', '420101', '市辖区', '420100');
INSERT INTO `qi_address` VALUES ('2681', '420102', '江岸区', '420100');
INSERT INTO `qi_address` VALUES ('2682', '420103', '江汉区', '420100');
INSERT INTO `qi_address` VALUES ('2683', '420104', '乔口区', '420100');
INSERT INTO `qi_address` VALUES ('2684', '420105', '汉阳区', '420100');
INSERT INTO `qi_address` VALUES ('2685', '420106', '武昌区', '420100');
INSERT INTO `qi_address` VALUES ('2686', '420107', '青山区', '420100');
INSERT INTO `qi_address` VALUES ('2687', '420111', '洪山区', '420100');
INSERT INTO `qi_address` VALUES ('2688', '420112', '东西湖区', '420100');
INSERT INTO `qi_address` VALUES ('2689', '420113', '汉南区', '420100');
INSERT INTO `qi_address` VALUES ('2690', '420114', '蔡甸区', '420100');
INSERT INTO `qi_address` VALUES ('2691', '420115', '江夏区', '420100');
INSERT INTO `qi_address` VALUES ('2692', '420116', '黄陂区', '420100');
INSERT INTO `qi_address` VALUES ('2693', '420117', '新洲区', '420100');
INSERT INTO `qi_address` VALUES ('2694', '420201', '市辖区', '420200');
INSERT INTO `qi_address` VALUES ('2695', '420202', '黄石港区', '420200');
INSERT INTO `qi_address` VALUES ('2696', '420203', '西塞山区', '420200');
INSERT INTO `qi_address` VALUES ('2697', '420204', '下陆区', '420200');
INSERT INTO `qi_address` VALUES ('2698', '420205', '铁山区', '420200');
INSERT INTO `qi_address` VALUES ('2699', '420222', '阳新县', '420200');
INSERT INTO `qi_address` VALUES ('2700', '420281', '大冶市', '420200');
INSERT INTO `qi_address` VALUES ('2701', '420301', '市辖区', '420300');
INSERT INTO `qi_address` VALUES ('2702', '420302', '茅箭区', '420300');
INSERT INTO `qi_address` VALUES ('2703', '420303', '张湾区', '420300');
INSERT INTO `qi_address` VALUES ('2704', '420321', '郧　县', '420300');
INSERT INTO `qi_address` VALUES ('2705', '420322', '郧西县', '420300');
INSERT INTO `qi_address` VALUES ('2706', '420323', '竹山县', '420300');
INSERT INTO `qi_address` VALUES ('2707', '420324', '竹溪县', '420300');
INSERT INTO `qi_address` VALUES ('2708', '420325', '房　县', '420300');
INSERT INTO `qi_address` VALUES ('2709', '420381', '丹江口市', '420300');
INSERT INTO `qi_address` VALUES ('2710', '420501', '市辖区', '420500');
INSERT INTO `qi_address` VALUES ('2711', '420502', '西陵区', '420500');
INSERT INTO `qi_address` VALUES ('2712', '420503', '伍家岗区', '420500');
INSERT INTO `qi_address` VALUES ('2713', '420504', '点军区', '420500');
INSERT INTO `qi_address` VALUES ('2714', '420505', '猇亭区', '420500');
INSERT INTO `qi_address` VALUES ('2715', '420506', '夷陵区', '420500');
INSERT INTO `qi_address` VALUES ('2716', '420525', '远安县', '420500');
INSERT INTO `qi_address` VALUES ('2717', '420526', '兴山县', '420500');
INSERT INTO `qi_address` VALUES ('2718', '420527', '秭归县', '420500');
INSERT INTO `qi_address` VALUES ('2719', '420528', '长阳土家族自治县', '420500');
INSERT INTO `qi_address` VALUES ('2720', '420529', '五峰土家族自治县', '420500');
INSERT INTO `qi_address` VALUES ('2721', '420581', '宜都市', '420500');
INSERT INTO `qi_address` VALUES ('2722', '420582', '当阳市', '420500');
INSERT INTO `qi_address` VALUES ('2723', '420583', '枝江市', '420500');
INSERT INTO `qi_address` VALUES ('2724', '420601', '市辖区', '420600');
INSERT INTO `qi_address` VALUES ('2725', '420602', '襄城区', '420600');
INSERT INTO `qi_address` VALUES ('2726', '420606', '樊城区', '420600');
INSERT INTO `qi_address` VALUES ('2727', '420607', '襄阳区', '420600');
INSERT INTO `qi_address` VALUES ('2728', '420624', '南漳县', '420600');
INSERT INTO `qi_address` VALUES ('2729', '420625', '谷城县', '420600');
INSERT INTO `qi_address` VALUES ('2730', '420626', '保康县', '420600');
INSERT INTO `qi_address` VALUES ('2731', '420682', '老河口市', '420600');
INSERT INTO `qi_address` VALUES ('2732', '420683', '枣阳市', '420600');
INSERT INTO `qi_address` VALUES ('2733', '420684', '宜城市', '420600');
INSERT INTO `qi_address` VALUES ('2734', '420701', '市辖区', '420700');
INSERT INTO `qi_address` VALUES ('2735', '420702', '梁子湖区', '420700');
INSERT INTO `qi_address` VALUES ('2736', '420703', '华容区', '420700');
INSERT INTO `qi_address` VALUES ('2737', '420704', '鄂城区', '420700');
INSERT INTO `qi_address` VALUES ('2738', '420801', '市辖区', '420800');
INSERT INTO `qi_address` VALUES ('2739', '420802', '东宝区', '420800');
INSERT INTO `qi_address` VALUES ('2740', '420804', '掇刀区', '420800');
INSERT INTO `qi_address` VALUES ('2741', '420821', '京山县', '420800');
INSERT INTO `qi_address` VALUES ('2742', '420822', '沙洋县', '420800');
INSERT INTO `qi_address` VALUES ('2743', '420881', '钟祥市', '420800');
INSERT INTO `qi_address` VALUES ('2744', '420901', '市辖区', '420900');
INSERT INTO `qi_address` VALUES ('2745', '420902', '孝南区', '420900');
INSERT INTO `qi_address` VALUES ('2746', '420921', '孝昌县', '420900');
INSERT INTO `qi_address` VALUES ('2747', '420922', '大悟县', '420900');
INSERT INTO `qi_address` VALUES ('2748', '420923', '云梦县', '420900');
INSERT INTO `qi_address` VALUES ('2749', '420981', '应城市', '420900');
INSERT INTO `qi_address` VALUES ('2750', '420982', '安陆市', '420900');
INSERT INTO `qi_address` VALUES ('2751', '420984', '汉川市', '420900');
INSERT INTO `qi_address` VALUES ('2752', '421001', '市辖区', '421000');
INSERT INTO `qi_address` VALUES ('2753', '421002', '沙市区', '421000');
INSERT INTO `qi_address` VALUES ('2754', '421003', '荆州区', '421000');
INSERT INTO `qi_address` VALUES ('2755', '421022', '公安县', '421000');
INSERT INTO `qi_address` VALUES ('2756', '421023', '监利县', '421000');
INSERT INTO `qi_address` VALUES ('2757', '421024', '江陵县', '421000');
INSERT INTO `qi_address` VALUES ('2758', '421081', '石首市', '421000');
INSERT INTO `qi_address` VALUES ('2759', '421083', '洪湖市', '421000');
INSERT INTO `qi_address` VALUES ('2760', '421087', '松滋市', '421000');
INSERT INTO `qi_address` VALUES ('2761', '421101', '市辖区', '421100');
INSERT INTO `qi_address` VALUES ('2762', '421102', '黄州区', '421100');
INSERT INTO `qi_address` VALUES ('2763', '421121', '团风县', '421100');
INSERT INTO `qi_address` VALUES ('2764', '421122', '红安县', '421100');
INSERT INTO `qi_address` VALUES ('2765', '421123', '罗田县', '421100');
INSERT INTO `qi_address` VALUES ('2766', '421124', '英山县', '421100');
INSERT INTO `qi_address` VALUES ('2767', '421125', '浠水县', '421100');
INSERT INTO `qi_address` VALUES ('2768', '421126', '蕲春县', '421100');
INSERT INTO `qi_address` VALUES ('2769', '421127', '黄梅县', '421100');
INSERT INTO `qi_address` VALUES ('2770', '421181', '麻城市', '421100');
INSERT INTO `qi_address` VALUES ('2771', '421182', '武穴市', '421100');
INSERT INTO `qi_address` VALUES ('2772', '421201', '市辖区', '421200');
INSERT INTO `qi_address` VALUES ('2773', '421202', '咸安区', '421200');
INSERT INTO `qi_address` VALUES ('2774', '421221', '嘉鱼县', '421200');
INSERT INTO `qi_address` VALUES ('2775', '421222', '通城县', '421200');
INSERT INTO `qi_address` VALUES ('2776', '421223', '崇阳县', '421200');
INSERT INTO `qi_address` VALUES ('2777', '421224', '通山县', '421200');
INSERT INTO `qi_address` VALUES ('2778', '421281', '赤壁市', '421200');
INSERT INTO `qi_address` VALUES ('2779', '421301', '市辖区', '421300');
INSERT INTO `qi_address` VALUES ('2780', '421302', '曾都区', '421300');
INSERT INTO `qi_address` VALUES ('2781', '421381', '广水市', '421300');
INSERT INTO `qi_address` VALUES ('2782', '422801', '恩施市', '422800');
INSERT INTO `qi_address` VALUES ('2783', '422802', '利川市', '422800');
INSERT INTO `qi_address` VALUES ('2784', '422822', '建始县', '422800');
INSERT INTO `qi_address` VALUES ('2785', '422823', '巴东县', '422800');
INSERT INTO `qi_address` VALUES ('2786', '422825', '宣恩县', '422800');
INSERT INTO `qi_address` VALUES ('2787', '422826', '咸丰县', '422800');
INSERT INTO `qi_address` VALUES ('2788', '422827', '来凤县', '422800');
INSERT INTO `qi_address` VALUES ('2789', '422828', '鹤峰县', '422800');
INSERT INTO `qi_address` VALUES ('2790', '429004', '仙桃市', '429000');
INSERT INTO `qi_address` VALUES ('2791', '429005', '潜江市', '429000');
INSERT INTO `qi_address` VALUES ('2792', '429006', '天门市', '429000');
INSERT INTO `qi_address` VALUES ('2793', '429021', '神农架林区', '429000');
INSERT INTO `qi_address` VALUES ('2794', '430101', '市辖区', '430100');
INSERT INTO `qi_address` VALUES ('2795', '430102', '芙蓉区', '430100');
INSERT INTO `qi_address` VALUES ('2796', '430103', '天心区', '430100');
INSERT INTO `qi_address` VALUES ('2797', '430104', '岳麓区', '430100');
INSERT INTO `qi_address` VALUES ('2798', '430105', '开福区', '430100');
INSERT INTO `qi_address` VALUES ('2799', '430111', '雨花区', '430100');
INSERT INTO `qi_address` VALUES ('2800', '430121', '长沙县', '430100');
INSERT INTO `qi_address` VALUES ('2801', '430122', '望城县', '430100');
INSERT INTO `qi_address` VALUES ('2802', '430124', '宁乡县', '430100');
INSERT INTO `qi_address` VALUES ('2803', '430181', '浏阳市', '430100');
INSERT INTO `qi_address` VALUES ('2804', '430201', '市辖区', '430200');
INSERT INTO `qi_address` VALUES ('2805', '430202', '荷塘区', '430200');
INSERT INTO `qi_address` VALUES ('2806', '430203', '芦淞区', '430200');
INSERT INTO `qi_address` VALUES ('2807', '430204', '石峰区', '430200');
INSERT INTO `qi_address` VALUES ('2808', '430211', '天元区', '430200');
INSERT INTO `qi_address` VALUES ('2809', '430221', '株洲县', '430200');
INSERT INTO `qi_address` VALUES ('2810', '430223', '攸　县', '430200');
INSERT INTO `qi_address` VALUES ('2811', '430224', '茶陵县', '430200');
INSERT INTO `qi_address` VALUES ('2812', '430225', '炎陵县', '430200');
INSERT INTO `qi_address` VALUES ('2813', '430281', '醴陵市', '430200');
INSERT INTO `qi_address` VALUES ('2814', '430301', '市辖区', '430300');
INSERT INTO `qi_address` VALUES ('2815', '430302', '雨湖区', '430300');
INSERT INTO `qi_address` VALUES ('2816', '430304', '岳塘区', '430300');
INSERT INTO `qi_address` VALUES ('2817', '430321', '湘潭县', '430300');
INSERT INTO `qi_address` VALUES ('2818', '430381', '湘乡市', '430300');
INSERT INTO `qi_address` VALUES ('2819', '430382', '韶山市', '430300');
INSERT INTO `qi_address` VALUES ('2820', '430401', '市辖区', '430400');
INSERT INTO `qi_address` VALUES ('2821', '430405', '珠晖区', '430400');
INSERT INTO `qi_address` VALUES ('2822', '430406', '雁峰区', '430400');
INSERT INTO `qi_address` VALUES ('2823', '430407', '石鼓区', '430400');
INSERT INTO `qi_address` VALUES ('2824', '430408', '蒸湘区', '430400');
INSERT INTO `qi_address` VALUES ('2825', '430412', '南岳区', '430400');
INSERT INTO `qi_address` VALUES ('2826', '430421', '衡阳县', '430400');
INSERT INTO `qi_address` VALUES ('2827', '430422', '衡南县', '430400');
INSERT INTO `qi_address` VALUES ('2828', '430423', '衡山县', '430400');
INSERT INTO `qi_address` VALUES ('2829', '430424', '衡东县', '430400');
INSERT INTO `qi_address` VALUES ('2830', '430426', '祁东县', '430400');
INSERT INTO `qi_address` VALUES ('2831', '430481', '耒阳市', '430400');
INSERT INTO `qi_address` VALUES ('2832', '430482', '常宁市', '430400');
INSERT INTO `qi_address` VALUES ('2833', '430501', '市辖区', '430500');
INSERT INTO `qi_address` VALUES ('2834', '430502', '双清区', '430500');
INSERT INTO `qi_address` VALUES ('2835', '430503', '大祥区', '430500');
INSERT INTO `qi_address` VALUES ('2836', '430511', '北塔区', '430500');
INSERT INTO `qi_address` VALUES ('2837', '430521', '邵东县', '430500');
INSERT INTO `qi_address` VALUES ('2838', '430522', '新邵县', '430500');
INSERT INTO `qi_address` VALUES ('2839', '430523', '邵阳县', '430500');
INSERT INTO `qi_address` VALUES ('2840', '430524', '隆回县', '430500');
INSERT INTO `qi_address` VALUES ('2841', '430525', '洞口县', '430500');
INSERT INTO `qi_address` VALUES ('2842', '430527', '绥宁县', '430500');
INSERT INTO `qi_address` VALUES ('2843', '430528', '新宁县', '430500');
INSERT INTO `qi_address` VALUES ('2844', '430529', '城步苗族自治县', '430500');
INSERT INTO `qi_address` VALUES ('2845', '430581', '武冈市', '430500');
INSERT INTO `qi_address` VALUES ('2846', '430601', '市辖区', '430600');
INSERT INTO `qi_address` VALUES ('2847', '430602', '岳阳楼区', '430600');
INSERT INTO `qi_address` VALUES ('2848', '430603', '云溪区', '430600');
INSERT INTO `qi_address` VALUES ('2849', '430611', '君山区', '430600');
INSERT INTO `qi_address` VALUES ('2850', '430621', '岳阳县', '430600');
INSERT INTO `qi_address` VALUES ('2851', '430623', '华容县', '430600');
INSERT INTO `qi_address` VALUES ('2852', '430624', '湘阴县', '430600');
INSERT INTO `qi_address` VALUES ('2853', '430626', '平江县', '430600');
INSERT INTO `qi_address` VALUES ('2854', '430681', '汨罗市', '430600');
INSERT INTO `qi_address` VALUES ('2855', '430682', '临湘市', '430600');
INSERT INTO `qi_address` VALUES ('2856', '430701', '市辖区', '430700');
INSERT INTO `qi_address` VALUES ('2857', '430702', '武陵区', '430700');
INSERT INTO `qi_address` VALUES ('2858', '430703', '鼎城区', '430700');
INSERT INTO `qi_address` VALUES ('2859', '430721', '安乡县', '430700');
INSERT INTO `qi_address` VALUES ('2860', '430722', '汉寿县', '430700');
INSERT INTO `qi_address` VALUES ('2861', '430723', '澧　县', '430700');
INSERT INTO `qi_address` VALUES ('2862', '430724', '临澧县', '430700');
INSERT INTO `qi_address` VALUES ('2863', '430725', '桃源县', '430700');
INSERT INTO `qi_address` VALUES ('2864', '430726', '石门县', '430700');
INSERT INTO `qi_address` VALUES ('2865', '430781', '津市市', '430700');
INSERT INTO `qi_address` VALUES ('2866', '430801', '市辖区', '430800');
INSERT INTO `qi_address` VALUES ('2867', '430802', '永定区', '430800');
INSERT INTO `qi_address` VALUES ('2868', '430811', '武陵源区', '430800');
INSERT INTO `qi_address` VALUES ('2869', '430821', '慈利县', '430800');
INSERT INTO `qi_address` VALUES ('2870', '430822', '桑植县', '430800');
INSERT INTO `qi_address` VALUES ('2871', '430901', '市辖区', '430900');
INSERT INTO `qi_address` VALUES ('2872', '430902', '资阳区', '430900');
INSERT INTO `qi_address` VALUES ('2873', '430903', '赫山区', '430900');
INSERT INTO `qi_address` VALUES ('2874', '430921', '南　县', '430900');
INSERT INTO `qi_address` VALUES ('2875', '430922', '桃江县', '430900');
INSERT INTO `qi_address` VALUES ('2876', '430923', '安化县', '430900');
INSERT INTO `qi_address` VALUES ('2877', '430981', '沅江市', '430900');
INSERT INTO `qi_address` VALUES ('2878', '431001', '市辖区', '431000');
INSERT INTO `qi_address` VALUES ('2879', '431002', '北湖区', '431000');
INSERT INTO `qi_address` VALUES ('2880', '431003', '苏仙区', '431000');
INSERT INTO `qi_address` VALUES ('2881', '431021', '桂阳县', '431000');
INSERT INTO `qi_address` VALUES ('2882', '431022', '宜章县', '431000');
INSERT INTO `qi_address` VALUES ('2883', '431023', '永兴县', '431000');
INSERT INTO `qi_address` VALUES ('2884', '431024', '嘉禾县', '431000');
INSERT INTO `qi_address` VALUES ('2885', '431025', '临武县', '431000');
INSERT INTO `qi_address` VALUES ('2886', '431026', '汝城县', '431000');
INSERT INTO `qi_address` VALUES ('2887', '431027', '桂东县', '431000');
INSERT INTO `qi_address` VALUES ('2888', '431028', '安仁县', '431000');
INSERT INTO `qi_address` VALUES ('2889', '431081', '资兴市', '431000');
INSERT INTO `qi_address` VALUES ('2890', '431101', '市辖区', '431100');
INSERT INTO `qi_address` VALUES ('2891', '431102', '芝山区', '431100');
INSERT INTO `qi_address` VALUES ('2892', '431103', '冷水滩区', '431100');
INSERT INTO `qi_address` VALUES ('2893', '431121', '祁阳县', '431100');
INSERT INTO `qi_address` VALUES ('2894', '431122', '东安县', '431100');
INSERT INTO `qi_address` VALUES ('2895', '431123', '双牌县', '431100');
INSERT INTO `qi_address` VALUES ('2896', '431124', '道　县', '431100');
INSERT INTO `qi_address` VALUES ('2897', '431125', '江永县', '431100');
INSERT INTO `qi_address` VALUES ('2898', '431126', '宁远县', '431100');
INSERT INTO `qi_address` VALUES ('2899', '431127', '蓝山县', '431100');
INSERT INTO `qi_address` VALUES ('2900', '431128', '新田县', '431100');
INSERT INTO `qi_address` VALUES ('2901', '431129', '江华瑶族自治县', '431100');
INSERT INTO `qi_address` VALUES ('2902', '431201', '市辖区', '431200');
INSERT INTO `qi_address` VALUES ('2903', '431202', '鹤城区', '431200');
INSERT INTO `qi_address` VALUES ('2904', '431221', '中方县', '431200');
INSERT INTO `qi_address` VALUES ('2905', '431222', '沅陵县', '431200');
INSERT INTO `qi_address` VALUES ('2906', '431223', '辰溪县', '431200');
INSERT INTO `qi_address` VALUES ('2907', '431224', '溆浦县', '431200');
INSERT INTO `qi_address` VALUES ('2908', '431225', '会同县', '431200');
INSERT INTO `qi_address` VALUES ('2909', '431226', '麻阳苗族自治县', '431200');
INSERT INTO `qi_address` VALUES ('2910', '431227', '新晃侗族自治县', '431200');
INSERT INTO `qi_address` VALUES ('2911', '431228', '芷江侗族自治县', '431200');
INSERT INTO `qi_address` VALUES ('2912', '431229', '靖州苗族侗族自治县', '431200');
INSERT INTO `qi_address` VALUES ('2913', '431230', '通道侗族自治县', '431200');
INSERT INTO `qi_address` VALUES ('2914', '431281', '洪江市', '431200');
INSERT INTO `qi_address` VALUES ('2915', '431301', '市辖区', '431300');
INSERT INTO `qi_address` VALUES ('2916', '431302', '娄星区', '431300');
INSERT INTO `qi_address` VALUES ('2917', '431321', '双峰县', '431300');
INSERT INTO `qi_address` VALUES ('2918', '431322', '新化县', '431300');
INSERT INTO `qi_address` VALUES ('2919', '431381', '冷水江市', '431300');
INSERT INTO `qi_address` VALUES ('2920', '431382', '涟源市', '431300');
INSERT INTO `qi_address` VALUES ('2921', '433101', '吉首市', '433100');
INSERT INTO `qi_address` VALUES ('2922', '433122', '泸溪县', '433100');
INSERT INTO `qi_address` VALUES ('2923', '433123', '凤凰县', '433100');
INSERT INTO `qi_address` VALUES ('2924', '433124', '花垣县', '433100');
INSERT INTO `qi_address` VALUES ('2925', '433125', '保靖县', '433100');
INSERT INTO `qi_address` VALUES ('2926', '433126', '古丈县', '433100');
INSERT INTO `qi_address` VALUES ('2927', '433127', '永顺县', '433100');
INSERT INTO `qi_address` VALUES ('2928', '433130', '龙山县', '433100');
INSERT INTO `qi_address` VALUES ('2929', '440101', '市辖区', '440100');
INSERT INTO `qi_address` VALUES ('2930', '440102', '东山区', '440100');
INSERT INTO `qi_address` VALUES ('2931', '440103', '荔湾区', '440100');
INSERT INTO `qi_address` VALUES ('2932', '440104', '越秀区', '440100');
INSERT INTO `qi_address` VALUES ('2933', '440105', '海珠区', '440100');
INSERT INTO `qi_address` VALUES ('2934', '440106', '天河区', '440100');
INSERT INTO `qi_address` VALUES ('2935', '440107', '芳村区', '440100');
INSERT INTO `qi_address` VALUES ('2936', '440111', '白云区', '440100');
INSERT INTO `qi_address` VALUES ('2937', '440112', '黄埔区', '440100');
INSERT INTO `qi_address` VALUES ('2938', '440113', '番禺区', '440100');
INSERT INTO `qi_address` VALUES ('2939', '440114', '花都区', '440100');
INSERT INTO `qi_address` VALUES ('2940', '440183', '增城市', '440100');
INSERT INTO `qi_address` VALUES ('2941', '440184', '从化市', '440100');
INSERT INTO `qi_address` VALUES ('2942', '440201', '市辖区', '440200');
INSERT INTO `qi_address` VALUES ('2943', '440203', '武江区', '440200');
INSERT INTO `qi_address` VALUES ('2944', '440204', '浈江区', '440200');
INSERT INTO `qi_address` VALUES ('2945', '440205', '曲江区', '440200');
INSERT INTO `qi_address` VALUES ('2946', '440222', '始兴县', '440200');
INSERT INTO `qi_address` VALUES ('2947', '440224', '仁化县', '440200');
INSERT INTO `qi_address` VALUES ('2948', '440229', '翁源县', '440200');
INSERT INTO `qi_address` VALUES ('2949', '440232', '乳源瑶族自治县', '440200');
INSERT INTO `qi_address` VALUES ('2950', '440233', '新丰县', '440200');
INSERT INTO `qi_address` VALUES ('2951', '440281', '乐昌市', '440200');
INSERT INTO `qi_address` VALUES ('2952', '440282', '南雄市', '440200');
INSERT INTO `qi_address` VALUES ('2953', '440301', '市辖区', '440300');
INSERT INTO `qi_address` VALUES ('2954', '440303', '罗湖区', '440300');
INSERT INTO `qi_address` VALUES ('2955', '440304', '福田区', '440300');
INSERT INTO `qi_address` VALUES ('2956', '440305', '南山区', '440300');
INSERT INTO `qi_address` VALUES ('2957', '440306', '宝安区', '440300');
INSERT INTO `qi_address` VALUES ('2958', '440307', '龙岗区', '440300');
INSERT INTO `qi_address` VALUES ('2959', '440308', '盐田区', '440300');
INSERT INTO `qi_address` VALUES ('2960', '440401', '市辖区', '440400');
INSERT INTO `qi_address` VALUES ('2961', '440402', '香洲区', '440400');
INSERT INTO `qi_address` VALUES ('2962', '440403', '斗门区', '440400');
INSERT INTO `qi_address` VALUES ('2963', '440404', '金湾区', '440400');
INSERT INTO `qi_address` VALUES ('2964', '440501', '市辖区', '440500');
INSERT INTO `qi_address` VALUES ('2965', '440507', '龙湖区', '440500');
INSERT INTO `qi_address` VALUES ('2966', '440511', '金平区', '440500');
INSERT INTO `qi_address` VALUES ('2967', '440512', '濠江区', '440500');
INSERT INTO `qi_address` VALUES ('2968', '440513', '潮阳区', '440500');
INSERT INTO `qi_address` VALUES ('2969', '440514', '潮南区', '440500');
INSERT INTO `qi_address` VALUES ('2970', '440515', '澄海区', '440500');
INSERT INTO `qi_address` VALUES ('2971', '440523', '南澳县', '440500');
INSERT INTO `qi_address` VALUES ('2972', '440601', '市辖区', '440600');
INSERT INTO `qi_address` VALUES ('2973', '440604', '禅城区', '440600');
INSERT INTO `qi_address` VALUES ('2974', '440605', '南海区', '440600');
INSERT INTO `qi_address` VALUES ('2975', '440606', '顺德区', '440600');
INSERT INTO `qi_address` VALUES ('2976', '440607', '三水区', '440600');
INSERT INTO `qi_address` VALUES ('2977', '440608', '高明区', '440600');
INSERT INTO `qi_address` VALUES ('2978', '440701', '市辖区', '440700');
INSERT INTO `qi_address` VALUES ('2979', '440703', '蓬江区', '440700');
INSERT INTO `qi_address` VALUES ('2980', '440704', '江海区', '440700');
INSERT INTO `qi_address` VALUES ('2981', '440705', '新会区', '440700');
INSERT INTO `qi_address` VALUES ('2982', '440781', '台山市', '440700');
INSERT INTO `qi_address` VALUES ('2983', '440783', '开平市', '440700');
INSERT INTO `qi_address` VALUES ('2984', '440784', '鹤山市', '440700');
INSERT INTO `qi_address` VALUES ('2985', '440785', '恩平市', '440700');
INSERT INTO `qi_address` VALUES ('2986', '440801', '市辖区', '440800');
INSERT INTO `qi_address` VALUES ('2987', '440802', '赤坎区', '440800');
INSERT INTO `qi_address` VALUES ('2988', '440803', '霞山区', '440800');
INSERT INTO `qi_address` VALUES ('2989', '440804', '坡头区', '440800');
INSERT INTO `qi_address` VALUES ('2990', '440811', '麻章区', '440800');
INSERT INTO `qi_address` VALUES ('2991', '440823', '遂溪县', '440800');
INSERT INTO `qi_address` VALUES ('2992', '440825', '徐闻县', '440800');
INSERT INTO `qi_address` VALUES ('2993', '440881', '廉江市', '440800');
INSERT INTO `qi_address` VALUES ('2994', '440882', '雷州市', '440800');
INSERT INTO `qi_address` VALUES ('2995', '440883', '吴川市', '440800');
INSERT INTO `qi_address` VALUES ('2996', '440901', '市辖区', '440900');
INSERT INTO `qi_address` VALUES ('2997', '440902', '茂南区', '440900');
INSERT INTO `qi_address` VALUES ('2998', '440903', '茂港区', '440900');
INSERT INTO `qi_address` VALUES ('2999', '440923', '电白县', '440900');
INSERT INTO `qi_address` VALUES ('3000', '440981', '高州市', '440900');
INSERT INTO `qi_address` VALUES ('3001', '440982', '化州市', '440900');
INSERT INTO `qi_address` VALUES ('3002', '440983', '信宜市', '440900');
INSERT INTO `qi_address` VALUES ('3003', '441201', '市辖区', '441200');
INSERT INTO `qi_address` VALUES ('3004', '441202', '端州区', '441200');
INSERT INTO `qi_address` VALUES ('3005', '441203', '鼎湖区', '441200');
INSERT INTO `qi_address` VALUES ('3006', '441223', '广宁县', '441200');
INSERT INTO `qi_address` VALUES ('3007', '441224', '怀集县', '441200');
INSERT INTO `qi_address` VALUES ('3008', '441225', '封开县', '441200');
INSERT INTO `qi_address` VALUES ('3009', '441226', '德庆县', '441200');
INSERT INTO `qi_address` VALUES ('3010', '441283', '高要市', '441200');
INSERT INTO `qi_address` VALUES ('3011', '441284', '四会市', '441200');
INSERT INTO `qi_address` VALUES ('3012', '441301', '市辖区', '441300');
INSERT INTO `qi_address` VALUES ('3013', '441302', '惠城区', '441300');
INSERT INTO `qi_address` VALUES ('3014', '441303', '惠阳区', '441300');
INSERT INTO `qi_address` VALUES ('3015', '441322', '博罗县', '441300');
INSERT INTO `qi_address` VALUES ('3016', '441323', '惠东县', '441300');
INSERT INTO `qi_address` VALUES ('3017', '441324', '龙门县', '441300');
INSERT INTO `qi_address` VALUES ('3018', '441401', '市辖区', '441400');
INSERT INTO `qi_address` VALUES ('3019', '441402', '梅江区', '441400');
INSERT INTO `qi_address` VALUES ('3020', '441421', '梅　县', '441400');
INSERT INTO `qi_address` VALUES ('3021', '441422', '大埔县', '441400');
INSERT INTO `qi_address` VALUES ('3022', '441423', '丰顺县', '441400');
INSERT INTO `qi_address` VALUES ('3023', '441424', '五华县', '441400');
INSERT INTO `qi_address` VALUES ('3024', '441426', '平远县', '441400');
INSERT INTO `qi_address` VALUES ('3025', '441427', '蕉岭县', '441400');
INSERT INTO `qi_address` VALUES ('3026', '441481', '兴宁市', '441400');
INSERT INTO `qi_address` VALUES ('3027', '441501', '市辖区', '441500');
INSERT INTO `qi_address` VALUES ('3028', '441502', '城　区', '441500');
INSERT INTO `qi_address` VALUES ('3029', '441521', '海丰县', '441500');
INSERT INTO `qi_address` VALUES ('3030', '441523', '陆河县', '441500');
INSERT INTO `qi_address` VALUES ('3031', '441581', '陆丰市', '441500');
INSERT INTO `qi_address` VALUES ('3032', '441601', '市辖区', '441600');
INSERT INTO `qi_address` VALUES ('3033', '441602', '源城区', '441600');
INSERT INTO `qi_address` VALUES ('3034', '441621', '紫金县', '441600');
INSERT INTO `qi_address` VALUES ('3035', '441622', '龙川县', '441600');
INSERT INTO `qi_address` VALUES ('3036', '441623', '连平县', '441600');
INSERT INTO `qi_address` VALUES ('3037', '441624', '和平县', '441600');
INSERT INTO `qi_address` VALUES ('3038', '441625', '东源县', '441600');
INSERT INTO `qi_address` VALUES ('3039', '441701', '市辖区', '441700');
INSERT INTO `qi_address` VALUES ('3040', '441702', '江城区', '441700');
INSERT INTO `qi_address` VALUES ('3041', '441721', '阳西县', '441700');
INSERT INTO `qi_address` VALUES ('3042', '441723', '阳东县', '441700');
INSERT INTO `qi_address` VALUES ('3043', '441781', '阳春市', '441700');
INSERT INTO `qi_address` VALUES ('3044', '441801', '市辖区', '441800');
INSERT INTO `qi_address` VALUES ('3045', '441802', '清城区', '441800');
INSERT INTO `qi_address` VALUES ('3046', '441821', '佛冈县', '441800');
INSERT INTO `qi_address` VALUES ('3047', '441823', '阳山县', '441800');
INSERT INTO `qi_address` VALUES ('3048', '441825', '连山壮族瑶族自治县', '441800');
INSERT INTO `qi_address` VALUES ('3049', '441826', '连南瑶族自治县', '441800');
INSERT INTO `qi_address` VALUES ('3050', '441827', '清新县', '441800');
INSERT INTO `qi_address` VALUES ('3051', '441881', '英德市', '441800');
INSERT INTO `qi_address` VALUES ('3052', '441882', '连州市', '441800');
INSERT INTO `qi_address` VALUES ('3053', '445101', '市辖区', '445100');
INSERT INTO `qi_address` VALUES ('3054', '445102', '湘桥区', '445100');
INSERT INTO `qi_address` VALUES ('3055', '445121', '潮安县', '445100');
INSERT INTO `qi_address` VALUES ('3056', '445122', '饶平县', '445100');
INSERT INTO `qi_address` VALUES ('3057', '445201', '市辖区', '445200');
INSERT INTO `qi_address` VALUES ('3058', '445202', '榕城区', '445200');
INSERT INTO `qi_address` VALUES ('3059', '445221', '揭东县', '445200');
INSERT INTO `qi_address` VALUES ('3060', '445222', '揭西县', '445200');
INSERT INTO `qi_address` VALUES ('3061', '445224', '惠来县', '445200');
INSERT INTO `qi_address` VALUES ('3062', '445281', '普宁市', '445200');
INSERT INTO `qi_address` VALUES ('3063', '445301', '市辖区', '445300');
INSERT INTO `qi_address` VALUES ('3064', '445302', '云城区', '445300');
INSERT INTO `qi_address` VALUES ('3065', '445321', '新兴县', '445300');
INSERT INTO `qi_address` VALUES ('3066', '445322', '郁南县', '445300');
INSERT INTO `qi_address` VALUES ('3067', '445323', '云安县', '445300');
INSERT INTO `qi_address` VALUES ('3068', '445381', '罗定市', '445300');
INSERT INTO `qi_address` VALUES ('3069', '450101', '市辖区', '450100');
INSERT INTO `qi_address` VALUES ('3070', '450102', '兴宁区', '450100');
INSERT INTO `qi_address` VALUES ('3071', '450103', '青秀区', '450100');
INSERT INTO `qi_address` VALUES ('3072', '450105', '江南区', '450100');
INSERT INTO `qi_address` VALUES ('3073', '450107', '西乡塘区', '450100');
INSERT INTO `qi_address` VALUES ('3074', '450108', '良庆区', '450100');
INSERT INTO `qi_address` VALUES ('3075', '450109', '邕宁区', '450100');
INSERT INTO `qi_address` VALUES ('3076', '450122', '武鸣县', '450100');
INSERT INTO `qi_address` VALUES ('3077', '450123', '隆安县', '450100');
INSERT INTO `qi_address` VALUES ('3078', '450124', '马山县', '450100');
INSERT INTO `qi_address` VALUES ('3079', '450125', '上林县', '450100');
INSERT INTO `qi_address` VALUES ('3080', '450126', '宾阳县', '450100');
INSERT INTO `qi_address` VALUES ('3081', '450127', '横　县', '450100');
INSERT INTO `qi_address` VALUES ('3082', '450201', '市辖区', '450200');
INSERT INTO `qi_address` VALUES ('3083', '450202', '城中区', '450200');
INSERT INTO `qi_address` VALUES ('3084', '450203', '鱼峰区', '450200');
INSERT INTO `qi_address` VALUES ('3085', '450204', '柳南区', '450200');
INSERT INTO `qi_address` VALUES ('3086', '450205', '柳北区', '450200');
INSERT INTO `qi_address` VALUES ('3087', '450221', '柳江县', '450200');
INSERT INTO `qi_address` VALUES ('3088', '450222', '柳城县', '450200');
INSERT INTO `qi_address` VALUES ('3089', '450223', '鹿寨县', '450200');
INSERT INTO `qi_address` VALUES ('3090', '450224', '融安县', '450200');
INSERT INTO `qi_address` VALUES ('3091', '450225', '融水苗族自治县', '450200');
INSERT INTO `qi_address` VALUES ('3092', '450226', '三江侗族自治县', '450200');
INSERT INTO `qi_address` VALUES ('3093', '450301', '市辖区', '450300');
INSERT INTO `qi_address` VALUES ('3094', '450302', '秀峰区', '450300');
INSERT INTO `qi_address` VALUES ('3095', '450303', '叠彩区', '450300');
INSERT INTO `qi_address` VALUES ('3096', '450304', '象山区', '450300');
INSERT INTO `qi_address` VALUES ('3097', '450305', '七星区', '450300');
INSERT INTO `qi_address` VALUES ('3098', '450311', '雁山区', '450300');
INSERT INTO `qi_address` VALUES ('3099', '450321', '阳朔县', '450300');
INSERT INTO `qi_address` VALUES ('3100', '450322', '临桂县', '450300');
INSERT INTO `qi_address` VALUES ('3101', '450323', '灵川县', '450300');
INSERT INTO `qi_address` VALUES ('3102', '450324', '全州县', '450300');
INSERT INTO `qi_address` VALUES ('3103', '450325', '兴安县', '450300');
INSERT INTO `qi_address` VALUES ('3104', '450326', '永福县', '450300');
INSERT INTO `qi_address` VALUES ('3105', '450327', '灌阳县', '450300');
INSERT INTO `qi_address` VALUES ('3106', '450328', '龙胜各族自治县', '450300');
INSERT INTO `qi_address` VALUES ('3107', '450329', '资源县', '450300');
INSERT INTO `qi_address` VALUES ('3108', '450330', '平乐县', '450300');
INSERT INTO `qi_address` VALUES ('3109', '450331', '荔蒲县', '450300');
INSERT INTO `qi_address` VALUES ('3110', '450332', '恭城瑶族自治县', '450300');
INSERT INTO `qi_address` VALUES ('3111', '450401', '市辖区', '450400');
INSERT INTO `qi_address` VALUES ('3112', '450403', '万秀区', '450400');
INSERT INTO `qi_address` VALUES ('3113', '450404', '蝶山区', '450400');
INSERT INTO `qi_address` VALUES ('3114', '450405', '长洲区', '450400');
INSERT INTO `qi_address` VALUES ('3115', '450421', '苍梧县', '450400');
INSERT INTO `qi_address` VALUES ('3116', '450422', '藤　县', '450400');
INSERT INTO `qi_address` VALUES ('3117', '450423', '蒙山县', '450400');
INSERT INTO `qi_address` VALUES ('3118', '450481', '岑溪市', '450400');
INSERT INTO `qi_address` VALUES ('3119', '450501', '市辖区', '450500');
INSERT INTO `qi_address` VALUES ('3120', '450502', '海城区', '450500');
INSERT INTO `qi_address` VALUES ('3121', '450503', '银海区', '450500');
INSERT INTO `qi_address` VALUES ('3122', '450512', '铁山港区', '450500');
INSERT INTO `qi_address` VALUES ('3123', '450521', '合浦县', '450500');
INSERT INTO `qi_address` VALUES ('3124', '450601', '市辖区', '450600');
INSERT INTO `qi_address` VALUES ('3125', '450602', '港口区', '450600');
INSERT INTO `qi_address` VALUES ('3126', '450603', '防城区', '450600');
INSERT INTO `qi_address` VALUES ('3127', '450621', '上思县', '450600');
INSERT INTO `qi_address` VALUES ('3128', '450681', '东兴市', '450600');
INSERT INTO `qi_address` VALUES ('3129', '450701', '市辖区', '450700');
INSERT INTO `qi_address` VALUES ('3130', '450702', '钦南区', '450700');
INSERT INTO `qi_address` VALUES ('3131', '450703', '钦北区', '450700');
INSERT INTO `qi_address` VALUES ('3132', '450721', '灵山县', '450700');
INSERT INTO `qi_address` VALUES ('3133', '450722', '浦北县', '450700');
INSERT INTO `qi_address` VALUES ('3134', '450801', '市辖区', '450800');
INSERT INTO `qi_address` VALUES ('3135', '450802', '港北区', '450800');
INSERT INTO `qi_address` VALUES ('3136', '450803', '港南区', '450800');
INSERT INTO `qi_address` VALUES ('3137', '450804', '覃塘区', '450800');
INSERT INTO `qi_address` VALUES ('3138', '450821', '平南县', '450800');
INSERT INTO `qi_address` VALUES ('3139', '450881', '桂平市', '450800');
INSERT INTO `qi_address` VALUES ('3140', '450901', '市辖区', '450900');
INSERT INTO `qi_address` VALUES ('3141', '450902', '玉州区', '450900');
INSERT INTO `qi_address` VALUES ('3142', '450921', '容　县', '450900');
INSERT INTO `qi_address` VALUES ('3143', '450922', '陆川县', '450900');
INSERT INTO `qi_address` VALUES ('3144', '450923', '博白县', '450900');
INSERT INTO `qi_address` VALUES ('3145', '450924', '兴业县', '450900');
INSERT INTO `qi_address` VALUES ('3146', '450981', '北流市', '450900');
INSERT INTO `qi_address` VALUES ('3147', '451001', '市辖区', '451000');
INSERT INTO `qi_address` VALUES ('3148', '451002', '右江区', '451000');
INSERT INTO `qi_address` VALUES ('3149', '451021', '田阳县', '451000');
INSERT INTO `qi_address` VALUES ('3150', '451022', '田东县', '451000');
INSERT INTO `qi_address` VALUES ('3151', '451023', '平果县', '451000');
INSERT INTO `qi_address` VALUES ('3152', '451024', '德保县', '451000');
INSERT INTO `qi_address` VALUES ('3153', '451025', '靖西县', '451000');
INSERT INTO `qi_address` VALUES ('3154', '451026', '那坡县', '451000');
INSERT INTO `qi_address` VALUES ('3155', '451027', '凌云县', '451000');
INSERT INTO `qi_address` VALUES ('3156', '451028', '乐业县', '451000');
INSERT INTO `qi_address` VALUES ('3157', '451029', '田林县', '451000');
INSERT INTO `qi_address` VALUES ('3158', '451030', '西林县', '451000');
INSERT INTO `qi_address` VALUES ('3159', '451031', '隆林各族自治县', '451000');
INSERT INTO `qi_address` VALUES ('3160', '451101', '市辖区', '451100');
INSERT INTO `qi_address` VALUES ('3161', '451102', '八步区', '451100');
INSERT INTO `qi_address` VALUES ('3162', '451121', '昭平县', '451100');
INSERT INTO `qi_address` VALUES ('3163', '451122', '钟山县', '451100');
INSERT INTO `qi_address` VALUES ('3164', '451123', '富川瑶族自治县', '451100');
INSERT INTO `qi_address` VALUES ('3165', '451201', '市辖区', '451200');
INSERT INTO `qi_address` VALUES ('3166', '451202', '金城江区', '451200');
INSERT INTO `qi_address` VALUES ('3167', '451221', '南丹县', '451200');
INSERT INTO `qi_address` VALUES ('3168', '451222', '天峨县', '451200');
INSERT INTO `qi_address` VALUES ('3169', '451223', '凤山县', '451200');
INSERT INTO `qi_address` VALUES ('3170', '451224', '东兰县', '451200');
INSERT INTO `qi_address` VALUES ('3171', '451225', '罗城仫佬族自治县', '451200');
INSERT INTO `qi_address` VALUES ('3172', '451226', '环江毛南族自治县', '451200');
INSERT INTO `qi_address` VALUES ('3173', '451227', '巴马瑶族自治县', '451200');
INSERT INTO `qi_address` VALUES ('3174', '451228', '都安瑶族自治县', '451200');
INSERT INTO `qi_address` VALUES ('3175', '451229', '大化瑶族自治县', '451200');
INSERT INTO `qi_address` VALUES ('3176', '451281', '宜州市', '451200');
INSERT INTO `qi_address` VALUES ('3177', '451301', '市辖区', '451300');
INSERT INTO `qi_address` VALUES ('3178', '451302', '兴宾区', '451300');
INSERT INTO `qi_address` VALUES ('3179', '451321', '忻城县', '451300');
INSERT INTO `qi_address` VALUES ('3180', '451322', '象州县', '451300');
INSERT INTO `qi_address` VALUES ('3181', '451323', '武宣县', '451300');
INSERT INTO `qi_address` VALUES ('3182', '451324', '金秀瑶族自治县', '451300');
INSERT INTO `qi_address` VALUES ('3183', '451381', '合山市', '451300');
INSERT INTO `qi_address` VALUES ('3184', '451401', '市辖区', '451400');
INSERT INTO `qi_address` VALUES ('3185', '451402', '江洲区', '451400');
INSERT INTO `qi_address` VALUES ('3186', '451421', '扶绥县', '451400');
INSERT INTO `qi_address` VALUES ('3187', '451422', '宁明县', '451400');
INSERT INTO `qi_address` VALUES ('3188', '451423', '龙州县', '451400');
INSERT INTO `qi_address` VALUES ('3189', '451424', '大新县', '451400');
INSERT INTO `qi_address` VALUES ('3190', '451425', '天等县', '451400');
INSERT INTO `qi_address` VALUES ('3191', '451481', '凭祥市', '451400');
INSERT INTO `qi_address` VALUES ('3192', '460101', '市辖区', '460100');
INSERT INTO `qi_address` VALUES ('3193', '460105', '秀英区', '460100');
INSERT INTO `qi_address` VALUES ('3194', '460106', '龙华区', '460100');
INSERT INTO `qi_address` VALUES ('3195', '460107', '琼山区', '460100');
INSERT INTO `qi_address` VALUES ('3196', '460108', '美兰区', '460100');
INSERT INTO `qi_address` VALUES ('3197', '460201', '市辖区', '460200');
INSERT INTO `qi_address` VALUES ('3198', '469001', '五指山市', '469000');
INSERT INTO `qi_address` VALUES ('3199', '469002', '琼海市', '469000');
INSERT INTO `qi_address` VALUES ('3200', '469003', '儋州市', '469000');
INSERT INTO `qi_address` VALUES ('3201', '469005', '文昌市', '469000');
INSERT INTO `qi_address` VALUES ('3202', '469006', '万宁市', '469000');
INSERT INTO `qi_address` VALUES ('3203', '469007', '东方市', '469000');
INSERT INTO `qi_address` VALUES ('3204', '469025', '定安县', '469000');
INSERT INTO `qi_address` VALUES ('3205', '469026', '屯昌县', '469000');
INSERT INTO `qi_address` VALUES ('3206', '469027', '澄迈县', '469000');
INSERT INTO `qi_address` VALUES ('3207', '469028', '临高县', '469000');
INSERT INTO `qi_address` VALUES ('3208', '469030', '白沙黎族自治县', '469000');
INSERT INTO `qi_address` VALUES ('3209', '469031', '昌江黎族自治县', '469000');
INSERT INTO `qi_address` VALUES ('3210', '469033', '乐东黎族自治县', '469000');
INSERT INTO `qi_address` VALUES ('3211', '469034', '陵水黎族自治县', '469000');
INSERT INTO `qi_address` VALUES ('3212', '469035', '保亭黎族苗族自治县', '469000');
INSERT INTO `qi_address` VALUES ('3213', '469036', '琼中黎族苗族自治县', '469000');
INSERT INTO `qi_address` VALUES ('3214', '469037', '西沙群岛', '469000');
INSERT INTO `qi_address` VALUES ('3215', '469038', '南沙群岛', '469000');
INSERT INTO `qi_address` VALUES ('3216', '469039', '中沙群岛的岛礁及其海域', '469000');
INSERT INTO `qi_address` VALUES ('3217', '500101', '万州区', '500100');
INSERT INTO `qi_address` VALUES ('3218', '500102', '涪陵区', '500100');
INSERT INTO `qi_address` VALUES ('3219', '500103', '渝中区', '500100');
INSERT INTO `qi_address` VALUES ('3220', '500104', '大渡口区', '500100');
INSERT INTO `qi_address` VALUES ('3221', '500105', '江北区', '500100');
INSERT INTO `qi_address` VALUES ('3222', '500106', '沙坪坝区', '500100');
INSERT INTO `qi_address` VALUES ('3223', '500107', '九龙坡区', '500100');
INSERT INTO `qi_address` VALUES ('3224', '500108', '南岸区', '500100');
INSERT INTO `qi_address` VALUES ('3225', '500109', '北碚区', '500100');
INSERT INTO `qi_address` VALUES ('3226', '500110', '万盛区', '500100');
INSERT INTO `qi_address` VALUES ('3227', '500111', '双桥区', '500100');
INSERT INTO `qi_address` VALUES ('3228', '500112', '渝北区', '500100');
INSERT INTO `qi_address` VALUES ('3229', '500113', '巴南区', '500100');
INSERT INTO `qi_address` VALUES ('3230', '500114', '黔江区', '500100');
INSERT INTO `qi_address` VALUES ('3231', '500115', '长寿区', '500100');
INSERT INTO `qi_address` VALUES ('3232', '500222', '綦江县', '500200');
INSERT INTO `qi_address` VALUES ('3233', '500223', '潼南县', '500200');
INSERT INTO `qi_address` VALUES ('3234', '500224', '铜梁县', '500200');
INSERT INTO `qi_address` VALUES ('3235', '500225', '大足县', '500200');
INSERT INTO `qi_address` VALUES ('3236', '500226', '荣昌县', '500200');
INSERT INTO `qi_address` VALUES ('3237', '500227', '璧山县', '500200');
INSERT INTO `qi_address` VALUES ('3238', '500228', '梁平县', '500200');
INSERT INTO `qi_address` VALUES ('3239', '500229', '城口县', '500200');
INSERT INTO `qi_address` VALUES ('3240', '500230', '丰都县', '500200');
INSERT INTO `qi_address` VALUES ('3241', '500231', '垫江县', '500200');
INSERT INTO `qi_address` VALUES ('3242', '500232', '武隆县', '500200');
INSERT INTO `qi_address` VALUES ('3243', '500233', '忠　县', '500200');
INSERT INTO `qi_address` VALUES ('3244', '500234', '开　县', '500200');
INSERT INTO `qi_address` VALUES ('3245', '500235', '云阳县', '500200');
INSERT INTO `qi_address` VALUES ('3246', '500236', '奉节县', '500200');
INSERT INTO `qi_address` VALUES ('3247', '500237', '巫山县', '500200');
INSERT INTO `qi_address` VALUES ('3248', '500238', '巫溪县', '500200');
INSERT INTO `qi_address` VALUES ('3249', '500240', '石柱土家族自治县', '500200');
INSERT INTO `qi_address` VALUES ('3250', '500241', '秀山土家族苗族自治县', '500200');
INSERT INTO `qi_address` VALUES ('3251', '500242', '酉阳土家族苗族自治县', '500200');
INSERT INTO `qi_address` VALUES ('3252', '500243', '彭水苗族土家族自治县', '500200');
INSERT INTO `qi_address` VALUES ('3253', '500381', '江津市', '500300');
INSERT INTO `qi_address` VALUES ('3254', '500382', '合川市', '500300');
INSERT INTO `qi_address` VALUES ('3255', '500383', '永川市', '500300');
INSERT INTO `qi_address` VALUES ('3256', '500384', '南川市', '500300');
INSERT INTO `qi_address` VALUES ('3257', '510101', '市辖区', '510100');
INSERT INTO `qi_address` VALUES ('3258', '510104', '锦江区', '510100');
INSERT INTO `qi_address` VALUES ('3259', '510105', '青羊区', '510100');
INSERT INTO `qi_address` VALUES ('3260', '510106', '金牛区', '510100');
INSERT INTO `qi_address` VALUES ('3261', '510107', '武侯区', '510100');
INSERT INTO `qi_address` VALUES ('3262', '510108', '成华区', '510100');
INSERT INTO `qi_address` VALUES ('3263', '510112', '龙泉驿区', '510100');
INSERT INTO `qi_address` VALUES ('3264', '510113', '青白江区', '510100');
INSERT INTO `qi_address` VALUES ('3265', '510114', '新都区', '510100');
INSERT INTO `qi_address` VALUES ('3266', '510115', '温江区', '510100');
INSERT INTO `qi_address` VALUES ('3267', '510121', '金堂县', '510100');
INSERT INTO `qi_address` VALUES ('3268', '510122', '双流县', '510100');
INSERT INTO `qi_address` VALUES ('3269', '510124', '郫　县', '510100');
INSERT INTO `qi_address` VALUES ('3270', '510129', '大邑县', '510100');
INSERT INTO `qi_address` VALUES ('3271', '510131', '蒲江县', '510100');
INSERT INTO `qi_address` VALUES ('3272', '510132', '新津县', '510100');
INSERT INTO `qi_address` VALUES ('3273', '510181', '都江堰市', '510100');
INSERT INTO `qi_address` VALUES ('3274', '510182', '彭州市', '510100');
INSERT INTO `qi_address` VALUES ('3275', '510183', '邛崃市', '510100');
INSERT INTO `qi_address` VALUES ('3276', '510184', '崇州市', '510100');
INSERT INTO `qi_address` VALUES ('3277', '510301', '市辖区', '510300');
INSERT INTO `qi_address` VALUES ('3278', '510302', '自流井区', '510300');
INSERT INTO `qi_address` VALUES ('3279', '510303', '贡井区', '510300');
INSERT INTO `qi_address` VALUES ('3280', '510304', '大安区', '510300');
INSERT INTO `qi_address` VALUES ('3281', '510311', '沿滩区', '510300');
INSERT INTO `qi_address` VALUES ('3282', '510321', '荣　县', '510300');
INSERT INTO `qi_address` VALUES ('3283', '510322', '富顺县', '510300');
INSERT INTO `qi_address` VALUES ('3284', '510401', '市辖区', '510400');
INSERT INTO `qi_address` VALUES ('3285', '510402', '东　区', '510400');
INSERT INTO `qi_address` VALUES ('3286', '510403', '西　区', '510400');
INSERT INTO `qi_address` VALUES ('3287', '510411', '仁和区', '510400');
INSERT INTO `qi_address` VALUES ('3288', '510421', '米易县', '510400');
INSERT INTO `qi_address` VALUES ('3289', '510422', '盐边县', '510400');
INSERT INTO `qi_address` VALUES ('3290', '510501', '市辖区', '510500');
INSERT INTO `qi_address` VALUES ('3291', '510502', '江阳区', '510500');
INSERT INTO `qi_address` VALUES ('3292', '510503', '纳溪区', '510500');
INSERT INTO `qi_address` VALUES ('3293', '510504', '龙马潭区', '510500');
INSERT INTO `qi_address` VALUES ('3294', '510521', '泸　县', '510500');
INSERT INTO `qi_address` VALUES ('3295', '510522', '合江县', '510500');
INSERT INTO `qi_address` VALUES ('3296', '510524', '叙永县', '510500');
INSERT INTO `qi_address` VALUES ('3297', '510525', '古蔺县', '510500');
INSERT INTO `qi_address` VALUES ('3298', '510601', '市辖区', '510600');
INSERT INTO `qi_address` VALUES ('3299', '510603', '旌阳区', '510600');
INSERT INTO `qi_address` VALUES ('3300', '510623', '中江县', '510600');
INSERT INTO `qi_address` VALUES ('3301', '510626', '罗江县', '510600');
INSERT INTO `qi_address` VALUES ('3302', '510681', '广汉市', '510600');
INSERT INTO `qi_address` VALUES ('3303', '510682', '什邡市', '510600');
INSERT INTO `qi_address` VALUES ('3304', '510683', '绵竹市', '510600');
INSERT INTO `qi_address` VALUES ('3305', '510701', '市辖区', '510700');
INSERT INTO `qi_address` VALUES ('3306', '510703', '涪城区', '510700');
INSERT INTO `qi_address` VALUES ('3307', '510704', '游仙区', '510700');
INSERT INTO `qi_address` VALUES ('3308', '510722', '三台县', '510700');
INSERT INTO `qi_address` VALUES ('3309', '510723', '盐亭县', '510700');
INSERT INTO `qi_address` VALUES ('3310', '510724', '安　县', '510700');
INSERT INTO `qi_address` VALUES ('3311', '510725', '梓潼县', '510700');
INSERT INTO `qi_address` VALUES ('3312', '510726', '北川羌族自治县', '510700');
INSERT INTO `qi_address` VALUES ('3313', '510727', '平武县', '510700');
INSERT INTO `qi_address` VALUES ('3314', '510781', '江油市', '510700');
INSERT INTO `qi_address` VALUES ('3315', '510801', '市辖区', '510800');
INSERT INTO `qi_address` VALUES ('3316', '510802', '市中区', '510800');
INSERT INTO `qi_address` VALUES ('3317', '510811', '元坝区', '510800');
INSERT INTO `qi_address` VALUES ('3318', '510812', '朝天区', '510800');
INSERT INTO `qi_address` VALUES ('3319', '510821', '旺苍县', '510800');
INSERT INTO `qi_address` VALUES ('3320', '510822', '青川县', '510800');
INSERT INTO `qi_address` VALUES ('3321', '510823', '剑阁县', '510800');
INSERT INTO `qi_address` VALUES ('3322', '510824', '苍溪县', '510800');
INSERT INTO `qi_address` VALUES ('3323', '510901', '市辖区', '510900');
INSERT INTO `qi_address` VALUES ('3324', '510903', '船山区', '510900');
INSERT INTO `qi_address` VALUES ('3325', '510904', '安居区', '510900');
INSERT INTO `qi_address` VALUES ('3326', '510921', '蓬溪县', '510900');
INSERT INTO `qi_address` VALUES ('3327', '510922', '射洪县', '510900');
INSERT INTO `qi_address` VALUES ('3328', '510923', '大英县', '510900');
INSERT INTO `qi_address` VALUES ('3329', '511001', '市辖区', '511000');
INSERT INTO `qi_address` VALUES ('3330', '511002', '市中区', '511000');
INSERT INTO `qi_address` VALUES ('3331', '511011', '东兴区', '511000');
INSERT INTO `qi_address` VALUES ('3332', '511024', '威远县', '511000');
INSERT INTO `qi_address` VALUES ('3333', '511025', '资中县', '511000');
INSERT INTO `qi_address` VALUES ('3334', '511028', '隆昌县', '511000');
INSERT INTO `qi_address` VALUES ('3335', '511101', '市辖区', '511100');
INSERT INTO `qi_address` VALUES ('3336', '511102', '市中区', '511100');
INSERT INTO `qi_address` VALUES ('3337', '511111', '沙湾区', '511100');
INSERT INTO `qi_address` VALUES ('3338', '511112', '五通桥区', '511100');
INSERT INTO `qi_address` VALUES ('3339', '511113', '金口河区', '511100');
INSERT INTO `qi_address` VALUES ('3340', '511123', '犍为县', '511100');
INSERT INTO `qi_address` VALUES ('3341', '511124', '井研县', '511100');
INSERT INTO `qi_address` VALUES ('3342', '511126', '夹江县', '511100');
INSERT INTO `qi_address` VALUES ('3343', '511129', '沐川县', '511100');
INSERT INTO `qi_address` VALUES ('3344', '511132', '峨边彝族自治县', '511100');
INSERT INTO `qi_address` VALUES ('3345', '511133', '马边彝族自治县', '511100');
INSERT INTO `qi_address` VALUES ('3346', '511181', '峨眉山市', '511100');
INSERT INTO `qi_address` VALUES ('3347', '511301', '市辖区', '511300');
INSERT INTO `qi_address` VALUES ('3348', '511302', '顺庆区', '511300');
INSERT INTO `qi_address` VALUES ('3349', '511303', '高坪区', '511300');
INSERT INTO `qi_address` VALUES ('3350', '511304', '嘉陵区', '511300');
INSERT INTO `qi_address` VALUES ('3351', '511321', '南部县', '511300');
INSERT INTO `qi_address` VALUES ('3352', '511322', '营山县', '511300');
INSERT INTO `qi_address` VALUES ('3353', '511323', '蓬安县', '511300');
INSERT INTO `qi_address` VALUES ('3354', '511324', '仪陇县', '511300');
INSERT INTO `qi_address` VALUES ('3355', '511325', '西充县', '511300');
INSERT INTO `qi_address` VALUES ('3356', '511381', '阆中市', '511300');
INSERT INTO `qi_address` VALUES ('3357', '511401', '市辖区', '511400');
INSERT INTO `qi_address` VALUES ('3358', '511402', '东坡区', '511400');
INSERT INTO `qi_address` VALUES ('3359', '511421', '仁寿县', '511400');
INSERT INTO `qi_address` VALUES ('3360', '511422', '彭山县', '511400');
INSERT INTO `qi_address` VALUES ('3361', '511423', '洪雅县', '511400');
INSERT INTO `qi_address` VALUES ('3362', '511424', '丹棱县', '511400');
INSERT INTO `qi_address` VALUES ('3363', '511425', '青神县', '511400');
INSERT INTO `qi_address` VALUES ('3364', '511501', '市辖区', '511500');
INSERT INTO `qi_address` VALUES ('3365', '511502', '翠屏区', '511500');
INSERT INTO `qi_address` VALUES ('3366', '511521', '宜宾县', '511500');
INSERT INTO `qi_address` VALUES ('3367', '511522', '南溪县', '511500');
INSERT INTO `qi_address` VALUES ('3368', '511523', '江安县', '511500');
INSERT INTO `qi_address` VALUES ('3369', '511524', '长宁县', '511500');
INSERT INTO `qi_address` VALUES ('3370', '511525', '高　县', '511500');
INSERT INTO `qi_address` VALUES ('3371', '511526', '珙　县', '511500');
INSERT INTO `qi_address` VALUES ('3372', '511527', '筠连县', '511500');
INSERT INTO `qi_address` VALUES ('3373', '511528', '兴文县', '511500');
INSERT INTO `qi_address` VALUES ('3374', '511529', '屏山县', '511500');
INSERT INTO `qi_address` VALUES ('3375', '511601', '市辖区', '511600');
INSERT INTO `qi_address` VALUES ('3376', '511602', '广安区', '511600');
INSERT INTO `qi_address` VALUES ('3377', '511621', '岳池县', '511600');
INSERT INTO `qi_address` VALUES ('3378', '511622', '武胜县', '511600');
INSERT INTO `qi_address` VALUES ('3379', '511623', '邻水县', '511600');
INSERT INTO `qi_address` VALUES ('3380', '511681', '华莹市', '511600');
INSERT INTO `qi_address` VALUES ('3381', '511701', '市辖区', '511700');
INSERT INTO `qi_address` VALUES ('3382', '511702', '通川区', '511700');
INSERT INTO `qi_address` VALUES ('3383', '511721', '达　县', '511700');
INSERT INTO `qi_address` VALUES ('3384', '511722', '宣汉县', '511700');
INSERT INTO `qi_address` VALUES ('3385', '511723', '开江县', '511700');
INSERT INTO `qi_address` VALUES ('3386', '511724', '大竹县', '511700');
INSERT INTO `qi_address` VALUES ('3387', '511725', '渠　县', '511700');
INSERT INTO `qi_address` VALUES ('3388', '511781', '万源市', '511700');
INSERT INTO `qi_address` VALUES ('3389', '511801', '市辖区', '511800');
INSERT INTO `qi_address` VALUES ('3390', '511802', '雨城区', '511800');
INSERT INTO `qi_address` VALUES ('3391', '511821', '名山县', '511800');
INSERT INTO `qi_address` VALUES ('3392', '511822', '荥经县', '511800');
INSERT INTO `qi_address` VALUES ('3393', '511823', '汉源县', '511800');
INSERT INTO `qi_address` VALUES ('3394', '511824', '石棉县', '511800');
INSERT INTO `qi_address` VALUES ('3395', '511825', '天全县', '511800');
INSERT INTO `qi_address` VALUES ('3396', '511826', '芦山县', '511800');
INSERT INTO `qi_address` VALUES ('3397', '511827', '宝兴县', '511800');
INSERT INTO `qi_address` VALUES ('3398', '511901', '市辖区', '511900');
INSERT INTO `qi_address` VALUES ('3399', '511902', '巴州区', '511900');
INSERT INTO `qi_address` VALUES ('3400', '511921', '通江县', '511900');
INSERT INTO `qi_address` VALUES ('3401', '511922', '南江县', '511900');
INSERT INTO `qi_address` VALUES ('3402', '511923', '平昌县', '511900');
INSERT INTO `qi_address` VALUES ('3403', '512001', '市辖区', '512000');
INSERT INTO `qi_address` VALUES ('3404', '512002', '雁江区', '512000');
INSERT INTO `qi_address` VALUES ('3405', '512021', '安岳县', '512000');
INSERT INTO `qi_address` VALUES ('3406', '512022', '乐至县', '512000');
INSERT INTO `qi_address` VALUES ('3407', '512081', '简阳市', '512000');
INSERT INTO `qi_address` VALUES ('3408', '513221', '汶川县', '513200');
INSERT INTO `qi_address` VALUES ('3409', '513222', '理　县', '513200');
INSERT INTO `qi_address` VALUES ('3410', '513223', '茂　县', '513200');
INSERT INTO `qi_address` VALUES ('3411', '513224', '松潘县', '513200');
INSERT INTO `qi_address` VALUES ('3412', '513225', '九寨沟县', '513200');
INSERT INTO `qi_address` VALUES ('3413', '513226', '金川县', '513200');
INSERT INTO `qi_address` VALUES ('3414', '513227', '小金县', '513200');
INSERT INTO `qi_address` VALUES ('3415', '513228', '黑水县', '513200');
INSERT INTO `qi_address` VALUES ('3416', '513229', '马尔康县', '513200');
INSERT INTO `qi_address` VALUES ('3417', '513230', '壤塘县', '513200');
INSERT INTO `qi_address` VALUES ('3418', '513231', '阿坝县', '513200');
INSERT INTO `qi_address` VALUES ('3419', '513232', '若尔盖县', '513200');
INSERT INTO `qi_address` VALUES ('3420', '513233', '红原县', '513200');
INSERT INTO `qi_address` VALUES ('3421', '513321', '康定县', '513300');
INSERT INTO `qi_address` VALUES ('3422', '513322', '泸定县', '513300');
INSERT INTO `qi_address` VALUES ('3423', '513323', '丹巴县', '513300');
INSERT INTO `qi_address` VALUES ('3424', '513324', '九龙县', '513300');
INSERT INTO `qi_address` VALUES ('3425', '513325', '雅江县', '513300');
INSERT INTO `qi_address` VALUES ('3426', '513326', '道孚县', '513300');
INSERT INTO `qi_address` VALUES ('3427', '513327', '炉霍县', '513300');
INSERT INTO `qi_address` VALUES ('3428', '513328', '甘孜县', '513300');
INSERT INTO `qi_address` VALUES ('3429', '513329', '新龙县', '513300');
INSERT INTO `qi_address` VALUES ('3430', '513330', '德格县', '513300');
INSERT INTO `qi_address` VALUES ('3431', '513331', '白玉县', '513300');
INSERT INTO `qi_address` VALUES ('3432', '513332', '石渠县', '513300');
INSERT INTO `qi_address` VALUES ('3433', '513333', '色达县', '513300');
INSERT INTO `qi_address` VALUES ('3434', '513334', '理塘县', '513300');
INSERT INTO `qi_address` VALUES ('3435', '513335', '巴塘县', '513300');
INSERT INTO `qi_address` VALUES ('3436', '513336', '乡城县', '513300');
INSERT INTO `qi_address` VALUES ('3437', '513337', '稻城县', '513300');
INSERT INTO `qi_address` VALUES ('3438', '513338', '得荣县', '513300');
INSERT INTO `qi_address` VALUES ('3439', '513401', '西昌市', '513400');
INSERT INTO `qi_address` VALUES ('3440', '513422', '木里藏族自治县', '513400');
INSERT INTO `qi_address` VALUES ('3441', '513423', '盐源县', '513400');
INSERT INTO `qi_address` VALUES ('3442', '513424', '德昌县', '513400');
INSERT INTO `qi_address` VALUES ('3443', '513425', '会理县', '513400');
INSERT INTO `qi_address` VALUES ('3444', '513426', '会东县', '513400');
INSERT INTO `qi_address` VALUES ('3445', '513427', '宁南县', '513400');
INSERT INTO `qi_address` VALUES ('3446', '513428', '普格县', '513400');
INSERT INTO `qi_address` VALUES ('3447', '513429', '布拖县', '513400');
INSERT INTO `qi_address` VALUES ('3448', '513430', '金阳县', '513400');
INSERT INTO `qi_address` VALUES ('3449', '513431', '昭觉县', '513400');
INSERT INTO `qi_address` VALUES ('3450', '513432', '喜德县', '513400');
INSERT INTO `qi_address` VALUES ('3451', '513433', '冕宁县', '513400');
INSERT INTO `qi_address` VALUES ('3452', '513434', '越西县', '513400');
INSERT INTO `qi_address` VALUES ('3453', '513435', '甘洛县', '513400');
INSERT INTO `qi_address` VALUES ('3454', '513436', '美姑县', '513400');
INSERT INTO `qi_address` VALUES ('3455', '513437', '雷波县', '513400');
INSERT INTO `qi_address` VALUES ('3456', '520101', '市辖区', '520100');
INSERT INTO `qi_address` VALUES ('3457', '520102', '南明区', '520100');
INSERT INTO `qi_address` VALUES ('3458', '520103', '云岩区', '520100');
INSERT INTO `qi_address` VALUES ('3459', '520111', '花溪区', '520100');
INSERT INTO `qi_address` VALUES ('3460', '520112', '乌当区', '520100');
INSERT INTO `qi_address` VALUES ('3461', '520113', '白云区', '520100');
INSERT INTO `qi_address` VALUES ('3462', '520114', '小河区', '520100');
INSERT INTO `qi_address` VALUES ('3463', '520121', '开阳县', '520100');
INSERT INTO `qi_address` VALUES ('3464', '520122', '息烽县', '520100');
INSERT INTO `qi_address` VALUES ('3465', '520123', '修文县', '520100');
INSERT INTO `qi_address` VALUES ('3466', '520181', '清镇市', '520100');
INSERT INTO `qi_address` VALUES ('3467', '520201', '钟山区', '520200');
INSERT INTO `qi_address` VALUES ('3468', '520203', '六枝特区', '520200');
INSERT INTO `qi_address` VALUES ('3469', '520221', '水城县', '520200');
INSERT INTO `qi_address` VALUES ('3470', '520222', '盘　县', '520200');
INSERT INTO `qi_address` VALUES ('3471', '520301', '市辖区', '520300');
INSERT INTO `qi_address` VALUES ('3472', '520302', '红花岗区', '520300');
INSERT INTO `qi_address` VALUES ('3473', '520303', '汇川区', '520300');
INSERT INTO `qi_address` VALUES ('3474', '520321', '遵义县', '520300');
INSERT INTO `qi_address` VALUES ('3475', '520322', '桐梓县', '520300');
INSERT INTO `qi_address` VALUES ('3476', '520323', '绥阳县', '520300');
INSERT INTO `qi_address` VALUES ('3477', '520324', '正安县', '520300');
INSERT INTO `qi_address` VALUES ('3478', '520325', '道真仡佬族苗族自治县', '520300');
INSERT INTO `qi_address` VALUES ('3479', '520326', '务川仡佬族苗族自治县', '520300');
INSERT INTO `qi_address` VALUES ('3480', '520327', '凤冈县', '520300');
INSERT INTO `qi_address` VALUES ('3481', '520328', '湄潭县', '520300');
INSERT INTO `qi_address` VALUES ('3482', '520329', '余庆县', '520300');
INSERT INTO `qi_address` VALUES ('3483', '520330', '习水县', '520300');
INSERT INTO `qi_address` VALUES ('3484', '520381', '赤水市', '520300');
INSERT INTO `qi_address` VALUES ('3485', '520382', '仁怀市', '520300');
INSERT INTO `qi_address` VALUES ('3486', '520401', '市辖区', '520400');
INSERT INTO `qi_address` VALUES ('3487', '520402', '西秀区', '520400');
INSERT INTO `qi_address` VALUES ('3488', '520421', '平坝县', '520400');
INSERT INTO `qi_address` VALUES ('3489', '520422', '普定县', '520400');
INSERT INTO `qi_address` VALUES ('3490', '520423', '镇宁布依族苗族自治县', '520400');
INSERT INTO `qi_address` VALUES ('3491', '520424', '关岭布依族苗族自治县', '520400');
INSERT INTO `qi_address` VALUES ('3492', '520425', '紫云苗族布依族自治县', '520400');
INSERT INTO `qi_address` VALUES ('3493', '522201', '铜仁市', '522200');
INSERT INTO `qi_address` VALUES ('3494', '522222', '江口县', '522200');
INSERT INTO `qi_address` VALUES ('3495', '522223', '玉屏侗族自治县', '522200');
INSERT INTO `qi_address` VALUES ('3496', '522224', '石阡县', '522200');
INSERT INTO `qi_address` VALUES ('3497', '522225', '思南县', '522200');
INSERT INTO `qi_address` VALUES ('3498', '522226', '印江土家族苗族自治县', '522200');
INSERT INTO `qi_address` VALUES ('3499', '522227', '德江县', '522200');
INSERT INTO `qi_address` VALUES ('3500', '522228', '沿河土家族自治县', '522200');
INSERT INTO `qi_address` VALUES ('3501', '522229', '松桃苗族自治县', '522200');
INSERT INTO `qi_address` VALUES ('3502', '522230', '万山特区', '522200');
INSERT INTO `qi_address` VALUES ('3503', '522301', '兴义市', '522300');
INSERT INTO `qi_address` VALUES ('3504', '522322', '兴仁县', '522300');
INSERT INTO `qi_address` VALUES ('3505', '522323', '普安县', '522300');
INSERT INTO `qi_address` VALUES ('3506', '522324', '晴隆县', '522300');
INSERT INTO `qi_address` VALUES ('3507', '522325', '贞丰县', '522300');
INSERT INTO `qi_address` VALUES ('3508', '522326', '望谟县', '522300');
INSERT INTO `qi_address` VALUES ('3509', '522327', '册亨县', '522300');
INSERT INTO `qi_address` VALUES ('3510', '522328', '安龙县', '522300');
INSERT INTO `qi_address` VALUES ('3511', '522401', '毕节市', '522400');
INSERT INTO `qi_address` VALUES ('3512', '522422', '大方县', '522400');
INSERT INTO `qi_address` VALUES ('3513', '522423', '黔西县', '522400');
INSERT INTO `qi_address` VALUES ('3514', '522424', '金沙县', '522400');
INSERT INTO `qi_address` VALUES ('3515', '522425', '织金县', '522400');
INSERT INTO `qi_address` VALUES ('3516', '522426', '纳雍县', '522400');
INSERT INTO `qi_address` VALUES ('3517', '522427', '威宁彝族回族苗族自治县', '522400');
INSERT INTO `qi_address` VALUES ('3518', '522428', '赫章县', '522400');
INSERT INTO `qi_address` VALUES ('3519', '522601', '凯里市', '522600');
INSERT INTO `qi_address` VALUES ('3520', '522622', '黄平县', '522600');
INSERT INTO `qi_address` VALUES ('3521', '522623', '施秉县', '522600');
INSERT INTO `qi_address` VALUES ('3522', '522624', '三穗县', '522600');
INSERT INTO `qi_address` VALUES ('3523', '522625', '镇远县', '522600');
INSERT INTO `qi_address` VALUES ('3524', '522626', '岑巩县', '522600');
INSERT INTO `qi_address` VALUES ('3525', '522627', '天柱县', '522600');
INSERT INTO `qi_address` VALUES ('3526', '522628', '锦屏县', '522600');
INSERT INTO `qi_address` VALUES ('3527', '522629', '剑河县', '522600');
INSERT INTO `qi_address` VALUES ('3528', '522630', '台江县', '522600');
INSERT INTO `qi_address` VALUES ('3529', '522631', '黎平县', '522600');
INSERT INTO `qi_address` VALUES ('3530', '522632', '榕江县', '522600');
INSERT INTO `qi_address` VALUES ('3531', '522633', '从江县', '522600');
INSERT INTO `qi_address` VALUES ('3532', '522634', '雷山县', '522600');
INSERT INTO `qi_address` VALUES ('3533', '522635', '麻江县', '522600');
INSERT INTO `qi_address` VALUES ('3534', '522636', '丹寨县', '522600');
INSERT INTO `qi_address` VALUES ('3535', '522701', '都匀市', '522700');
INSERT INTO `qi_address` VALUES ('3536', '522702', '福泉市', '522700');
INSERT INTO `qi_address` VALUES ('3537', '522722', '荔波县', '522700');
INSERT INTO `qi_address` VALUES ('3538', '522723', '贵定县', '522700');
INSERT INTO `qi_address` VALUES ('3539', '522725', '瓮安县', '522700');
INSERT INTO `qi_address` VALUES ('3540', '522726', '独山县', '522700');
INSERT INTO `qi_address` VALUES ('3541', '522727', '平塘县', '522700');
INSERT INTO `qi_address` VALUES ('3542', '522728', '罗甸县', '522700');
INSERT INTO `qi_address` VALUES ('3543', '522729', '长顺县', '522700');
INSERT INTO `qi_address` VALUES ('3544', '522730', '龙里县', '522700');
INSERT INTO `qi_address` VALUES ('3545', '522731', '惠水县', '522700');
INSERT INTO `qi_address` VALUES ('3546', '522732', '三都水族自治县', '522700');
INSERT INTO `qi_address` VALUES ('3547', '530101', '市辖区', '530100');
INSERT INTO `qi_address` VALUES ('3548', '530102', '五华区', '530100');
INSERT INTO `qi_address` VALUES ('3549', '530103', '盘龙区', '530100');
INSERT INTO `qi_address` VALUES ('3550', '530111', '官渡区', '530100');
INSERT INTO `qi_address` VALUES ('3551', '530112', '西山区', '530100');
INSERT INTO `qi_address` VALUES ('3552', '530113', '东川区', '530100');
INSERT INTO `qi_address` VALUES ('3553', '530121', '呈贡县', '530100');
INSERT INTO `qi_address` VALUES ('3554', '530122', '晋宁县', '530100');
INSERT INTO `qi_address` VALUES ('3555', '530124', '富民县', '530100');
INSERT INTO `qi_address` VALUES ('3556', '530125', '宜良县', '530100');
INSERT INTO `qi_address` VALUES ('3557', '530126', '石林彝族自治县', '530100');
INSERT INTO `qi_address` VALUES ('3558', '530127', '嵩明县', '530100');
INSERT INTO `qi_address` VALUES ('3559', '530128', '禄劝彝族苗族自治县', '530100');
INSERT INTO `qi_address` VALUES ('3560', '530129', '寻甸回族彝族自治县', '530100');
INSERT INTO `qi_address` VALUES ('3561', '530181', '安宁市', '530100');
INSERT INTO `qi_address` VALUES ('3562', '530301', '市辖区', '530300');
INSERT INTO `qi_address` VALUES ('3563', '530302', '麒麟区', '530300');
INSERT INTO `qi_address` VALUES ('3564', '530321', '马龙县', '530300');
INSERT INTO `qi_address` VALUES ('3565', '530322', '陆良县', '530300');
INSERT INTO `qi_address` VALUES ('3566', '530323', '师宗县', '530300');
INSERT INTO `qi_address` VALUES ('3567', '530324', '罗平县', '530300');
INSERT INTO `qi_address` VALUES ('3568', '530325', '富源县', '530300');
INSERT INTO `qi_address` VALUES ('3569', '530326', '会泽县', '530300');
INSERT INTO `qi_address` VALUES ('3570', '530328', '沾益县', '530300');
INSERT INTO `qi_address` VALUES ('3571', '530381', '宣威市', '530300');
INSERT INTO `qi_address` VALUES ('3572', '530401', '市辖区', '530400');
INSERT INTO `qi_address` VALUES ('3573', '530402', '红塔区', '530400');
INSERT INTO `qi_address` VALUES ('3574', '530421', '江川县', '530400');
INSERT INTO `qi_address` VALUES ('3575', '530422', '澄江县', '530400');
INSERT INTO `qi_address` VALUES ('3576', '530423', '通海县', '530400');
INSERT INTO `qi_address` VALUES ('3577', '530424', '华宁县', '530400');
INSERT INTO `qi_address` VALUES ('3578', '530425', '易门县', '530400');
INSERT INTO `qi_address` VALUES ('3579', '530426', '峨山彝族自治县', '530400');
INSERT INTO `qi_address` VALUES ('3580', '530427', '新平彝族傣族自治县', '530400');
INSERT INTO `qi_address` VALUES ('3581', '530428', '元江哈尼族彝族傣族自治县', '530400');
INSERT INTO `qi_address` VALUES ('3582', '530501', '市辖区', '530500');
INSERT INTO `qi_address` VALUES ('3583', '530502', '隆阳区', '530500');
INSERT INTO `qi_address` VALUES ('3584', '530521', '施甸县', '530500');
INSERT INTO `qi_address` VALUES ('3585', '530522', '腾冲县', '530500');
INSERT INTO `qi_address` VALUES ('3586', '530523', '龙陵县', '530500');
INSERT INTO `qi_address` VALUES ('3587', '530524', '昌宁县', '530500');
INSERT INTO `qi_address` VALUES ('3588', '530601', '市辖区', '530600');
INSERT INTO `qi_address` VALUES ('3589', '530602', '昭阳区', '530600');
INSERT INTO `qi_address` VALUES ('3590', '530621', '鲁甸县', '530600');
INSERT INTO `qi_address` VALUES ('3591', '530622', '巧家县', '530600');
INSERT INTO `qi_address` VALUES ('3592', '530623', '盐津县', '530600');
INSERT INTO `qi_address` VALUES ('3593', '530624', '大关县', '530600');
INSERT INTO `qi_address` VALUES ('3594', '530625', '永善县', '530600');
INSERT INTO `qi_address` VALUES ('3595', '530626', '绥江县', '530600');
INSERT INTO `qi_address` VALUES ('3596', '530627', '镇雄县', '530600');
INSERT INTO `qi_address` VALUES ('3597', '530628', '彝良县', '530600');
INSERT INTO `qi_address` VALUES ('3598', '530629', '威信县', '530600');
INSERT INTO `qi_address` VALUES ('3599', '530630', '水富县', '530600');
INSERT INTO `qi_address` VALUES ('3600', '530701', '市辖区', '530700');
INSERT INTO `qi_address` VALUES ('3601', '530702', '古城区', '530700');
INSERT INTO `qi_address` VALUES ('3602', '530721', '玉龙纳西族自治县', '530700');
INSERT INTO `qi_address` VALUES ('3603', '530722', '永胜县', '530700');
INSERT INTO `qi_address` VALUES ('3604', '530723', '华坪县', '530700');
INSERT INTO `qi_address` VALUES ('3605', '530724', '宁蒗彝族自治县', '530700');
INSERT INTO `qi_address` VALUES ('3606', '530801', '市辖区', '530800');
INSERT INTO `qi_address` VALUES ('3607', '530802', '翠云区', '530800');
INSERT INTO `qi_address` VALUES ('3608', '530821', '普洱哈尼族彝族自治县', '530800');
INSERT INTO `qi_address` VALUES ('3609', '530822', '墨江哈尼族自治县', '530800');
INSERT INTO `qi_address` VALUES ('3610', '530823', '景东彝族自治县', '530800');
INSERT INTO `qi_address` VALUES ('3611', '530824', '景谷傣族彝族自治县', '530800');
INSERT INTO `qi_address` VALUES ('3612', '530825', '镇沅彝族哈尼族拉祜族自治县', '530800');
INSERT INTO `qi_address` VALUES ('3613', '530826', '江城哈尼族彝族自治县', '530800');
INSERT INTO `qi_address` VALUES ('3614', '530827', '孟连傣族拉祜族佤族自治县', '530800');
INSERT INTO `qi_address` VALUES ('3615', '530828', '澜沧拉祜族自治县', '530800');
INSERT INTO `qi_address` VALUES ('3616', '530829', '西盟佤族自治县', '530800');
INSERT INTO `qi_address` VALUES ('3617', '530901', '市辖区', '530900');
INSERT INTO `qi_address` VALUES ('3618', '530902', '临翔区', '530900');
INSERT INTO `qi_address` VALUES ('3619', '530921', '凤庆县', '530900');
INSERT INTO `qi_address` VALUES ('3620', '530922', '云　县', '530900');
INSERT INTO `qi_address` VALUES ('3621', '530923', '永德县', '530900');
INSERT INTO `qi_address` VALUES ('3622', '530924', '镇康县', '530900');
INSERT INTO `qi_address` VALUES ('3623', '530925', '双江拉祜族佤族布朗族傣族自治县', '530900');
INSERT INTO `qi_address` VALUES ('3624', '530926', '耿马傣族佤族自治县', '530900');
INSERT INTO `qi_address` VALUES ('3625', '530927', '沧源佤族自治县', '530900');
INSERT INTO `qi_address` VALUES ('3626', '532301', '楚雄市', '532300');
INSERT INTO `qi_address` VALUES ('3627', '532322', '双柏县', '532300');
INSERT INTO `qi_address` VALUES ('3628', '532323', '牟定县', '532300');
INSERT INTO `qi_address` VALUES ('3629', '532324', '南华县', '532300');
INSERT INTO `qi_address` VALUES ('3630', '532325', '姚安县', '532300');
INSERT INTO `qi_address` VALUES ('3631', '532326', '大姚县', '532300');
INSERT INTO `qi_address` VALUES ('3632', '532327', '永仁县', '532300');
INSERT INTO `qi_address` VALUES ('3633', '532328', '元谋县', '532300');
INSERT INTO `qi_address` VALUES ('3634', '532329', '武定县', '532300');
INSERT INTO `qi_address` VALUES ('3635', '532331', '禄丰县', '532300');
INSERT INTO `qi_address` VALUES ('3636', '532501', '个旧市', '532500');
INSERT INTO `qi_address` VALUES ('3637', '532502', '开远市', '532500');
INSERT INTO `qi_address` VALUES ('3638', '532522', '蒙自县', '532500');
INSERT INTO `qi_address` VALUES ('3639', '532523', '屏边苗族自治县', '532500');
INSERT INTO `qi_address` VALUES ('3640', '532524', '建水县', '532500');
INSERT INTO `qi_address` VALUES ('3641', '532525', '石屏县', '532500');
INSERT INTO `qi_address` VALUES ('3642', '532526', '弥勒县', '532500');
INSERT INTO `qi_address` VALUES ('3643', '532527', '泸西县', '532500');
INSERT INTO `qi_address` VALUES ('3644', '532528', '元阳县', '532500');
INSERT INTO `qi_address` VALUES ('3645', '532529', '红河县', '532500');
INSERT INTO `qi_address` VALUES ('3646', '532530', '金平苗族瑶族傣族自治县', '532500');
INSERT INTO `qi_address` VALUES ('3647', '532531', '绿春县', '532500');
INSERT INTO `qi_address` VALUES ('3648', '532532', '河口瑶族自治县', '532500');
INSERT INTO `qi_address` VALUES ('3649', '532621', '文山县', '532600');
INSERT INTO `qi_address` VALUES ('3650', '532622', '砚山县', '532600');
INSERT INTO `qi_address` VALUES ('3651', '532623', '西畴县', '532600');
INSERT INTO `qi_address` VALUES ('3652', '532624', '麻栗坡县', '532600');
INSERT INTO `qi_address` VALUES ('3653', '532625', '马关县', '532600');
INSERT INTO `qi_address` VALUES ('3654', '532626', '丘北县', '532600');
INSERT INTO `qi_address` VALUES ('3655', '532627', '广南县', '532600');
INSERT INTO `qi_address` VALUES ('3656', '532628', '富宁县', '532600');
INSERT INTO `qi_address` VALUES ('3657', '532801', '景洪市', '532800');
INSERT INTO `qi_address` VALUES ('3658', '532822', '勐海县', '532800');
INSERT INTO `qi_address` VALUES ('3659', '532823', '勐腊县', '532800');
INSERT INTO `qi_address` VALUES ('3660', '532901', '大理市', '532900');
INSERT INTO `qi_address` VALUES ('3661', '532922', '漾濞彝族自治县', '532900');
INSERT INTO `qi_address` VALUES ('3662', '532923', '祥云县', '532900');
INSERT INTO `qi_address` VALUES ('3663', '532924', '宾川县', '532900');
INSERT INTO `qi_address` VALUES ('3664', '532925', '弥渡县', '532900');
INSERT INTO `qi_address` VALUES ('3665', '532926', '南涧彝族自治县', '532900');
INSERT INTO `qi_address` VALUES ('3666', '532927', '巍山彝族回族自治县', '532900');
INSERT INTO `qi_address` VALUES ('3667', '532928', '永平县', '532900');
INSERT INTO `qi_address` VALUES ('3668', '532929', '云龙县', '532900');
INSERT INTO `qi_address` VALUES ('3669', '532930', '洱源县', '532900');
INSERT INTO `qi_address` VALUES ('3670', '532931', '剑川县', '532900');
INSERT INTO `qi_address` VALUES ('3671', '532932', '鹤庆县', '532900');
INSERT INTO `qi_address` VALUES ('3672', '533102', '瑞丽市', '533100');
INSERT INTO `qi_address` VALUES ('3673', '533103', '潞西市', '533100');
INSERT INTO `qi_address` VALUES ('3674', '533122', '梁河县', '533100');
INSERT INTO `qi_address` VALUES ('3675', '533123', '盈江县', '533100');
INSERT INTO `qi_address` VALUES ('3676', '533124', '陇川县', '533100');
INSERT INTO `qi_address` VALUES ('3677', '533321', '泸水县', '533300');
INSERT INTO `qi_address` VALUES ('3678', '533323', '福贡县', '533300');
INSERT INTO `qi_address` VALUES ('3679', '533324', '贡山独龙族怒族自治县', '533300');
INSERT INTO `qi_address` VALUES ('3680', '533325', '兰坪白族普米族自治县', '533300');
INSERT INTO `qi_address` VALUES ('3681', '533421', '香格里拉县', '533400');
INSERT INTO `qi_address` VALUES ('3682', '533422', '德钦县', '533400');
INSERT INTO `qi_address` VALUES ('3683', '533423', '维西傈僳族自治县', '533400');
INSERT INTO `qi_address` VALUES ('3684', '540101', '市辖区', '540100');
INSERT INTO `qi_address` VALUES ('3685', '540102', '城关区', '540100');
INSERT INTO `qi_address` VALUES ('3686', '540121', '林周县', '540100');
INSERT INTO `qi_address` VALUES ('3687', '540122', '当雄县', '540100');
INSERT INTO `qi_address` VALUES ('3688', '540123', '尼木县', '540100');
INSERT INTO `qi_address` VALUES ('3689', '540124', '曲水县', '540100');
INSERT INTO `qi_address` VALUES ('3690', '540125', '堆龙德庆县', '540100');
INSERT INTO `qi_address` VALUES ('3691', '540126', '达孜县', '540100');
INSERT INTO `qi_address` VALUES ('3692', '540127', '墨竹工卡县', '540100');
INSERT INTO `qi_address` VALUES ('3693', '542121', '昌都县', '542100');
INSERT INTO `qi_address` VALUES ('3694', '542122', '江达县', '542100');
INSERT INTO `qi_address` VALUES ('3695', '542123', '贡觉县', '542100');
INSERT INTO `qi_address` VALUES ('3696', '542124', '类乌齐县', '542100');
INSERT INTO `qi_address` VALUES ('3697', '542125', '丁青县', '542100');
INSERT INTO `qi_address` VALUES ('3698', '542126', '察雅县', '542100');
INSERT INTO `qi_address` VALUES ('3699', '542127', '八宿县', '542100');
INSERT INTO `qi_address` VALUES ('3700', '542128', '左贡县', '542100');
INSERT INTO `qi_address` VALUES ('3701', '542129', '芒康县', '542100');
INSERT INTO `qi_address` VALUES ('3702', '542132', '洛隆县', '542100');
INSERT INTO `qi_address` VALUES ('3703', '542133', '边坝县', '542100');
INSERT INTO `qi_address` VALUES ('3704', '542221', '乃东县', '542200');
INSERT INTO `qi_address` VALUES ('3705', '542222', '扎囊县', '542200');
INSERT INTO `qi_address` VALUES ('3706', '542223', '贡嘎县', '542200');
INSERT INTO `qi_address` VALUES ('3707', '542224', '桑日县', '542200');
INSERT INTO `qi_address` VALUES ('3708', '542225', '琼结县', '542200');
INSERT INTO `qi_address` VALUES ('3709', '542226', '曲松县', '542200');
INSERT INTO `qi_address` VALUES ('3710', '542227', '措美县', '542200');
INSERT INTO `qi_address` VALUES ('3711', '542228', '洛扎县', '542200');
INSERT INTO `qi_address` VALUES ('3712', '542229', '加查县', '542200');
INSERT INTO `qi_address` VALUES ('3713', '542231', '隆子县', '542200');
INSERT INTO `qi_address` VALUES ('3714', '542232', '错那县', '542200');
INSERT INTO `qi_address` VALUES ('3715', '542233', '浪卡子县', '542200');
INSERT INTO `qi_address` VALUES ('3716', '542301', '日喀则市', '542300');
INSERT INTO `qi_address` VALUES ('3717', '542322', '南木林县', '542300');
INSERT INTO `qi_address` VALUES ('3718', '542323', '江孜县', '542300');
INSERT INTO `qi_address` VALUES ('3719', '542324', '定日县', '542300');
INSERT INTO `qi_address` VALUES ('3720', '542325', '萨迦县', '542300');
INSERT INTO `qi_address` VALUES ('3721', '542326', '拉孜县', '542300');
INSERT INTO `qi_address` VALUES ('3722', '542327', '昂仁县', '542300');
INSERT INTO `qi_address` VALUES ('3723', '542328', '谢通门县', '542300');
INSERT INTO `qi_address` VALUES ('3724', '542329', '白朗县', '542300');
INSERT INTO `qi_address` VALUES ('3725', '542330', '仁布县', '542300');
INSERT INTO `qi_address` VALUES ('3726', '542331', '康马县', '542300');
INSERT INTO `qi_address` VALUES ('3727', '542332', '定结县', '542300');
INSERT INTO `qi_address` VALUES ('3728', '542333', '仲巴县', '542300');
INSERT INTO `qi_address` VALUES ('3729', '542334', '亚东县', '542300');
INSERT INTO `qi_address` VALUES ('3730', '542335', '吉隆县', '542300');
INSERT INTO `qi_address` VALUES ('3731', '542336', '聂拉木县', '542300');
INSERT INTO `qi_address` VALUES ('3732', '542337', '萨嘎县', '542300');
INSERT INTO `qi_address` VALUES ('3733', '542338', '岗巴县', '542300');
INSERT INTO `qi_address` VALUES ('3734', '542421', '那曲县', '542400');
INSERT INTO `qi_address` VALUES ('3735', '542422', '嘉黎县', '542400');
INSERT INTO `qi_address` VALUES ('3736', '542423', '比如县', '542400');
INSERT INTO `qi_address` VALUES ('3737', '542424', '聂荣县', '542400');
INSERT INTO `qi_address` VALUES ('3738', '542425', '安多县', '542400');
INSERT INTO `qi_address` VALUES ('3739', '542426', '申扎县', '542400');
INSERT INTO `qi_address` VALUES ('3740', '542427', '索　县', '542400');
INSERT INTO `qi_address` VALUES ('3741', '542428', '班戈县', '542400');
INSERT INTO `qi_address` VALUES ('3742', '542429', '巴青县', '542400');
INSERT INTO `qi_address` VALUES ('3743', '542430', '尼玛县', '542400');
INSERT INTO `qi_address` VALUES ('3744', '542521', '普兰县', '542500');
INSERT INTO `qi_address` VALUES ('3745', '542522', '札达县', '542500');
INSERT INTO `qi_address` VALUES ('3746', '542523', '噶尔县', '542500');
INSERT INTO `qi_address` VALUES ('3747', '542524', '日土县', '542500');
INSERT INTO `qi_address` VALUES ('3748', '542525', '革吉县', '542500');
INSERT INTO `qi_address` VALUES ('3749', '542526', '改则县', '542500');
INSERT INTO `qi_address` VALUES ('3750', '542527', '措勤县', '542500');
INSERT INTO `qi_address` VALUES ('3751', '542621', '林芝县', '542600');
INSERT INTO `qi_address` VALUES ('3752', '542622', '工布江达县', '542600');
INSERT INTO `qi_address` VALUES ('3753', '542623', '米林县', '542600');
INSERT INTO `qi_address` VALUES ('3754', '542624', '墨脱县', '542600');
INSERT INTO `qi_address` VALUES ('3755', '542625', '波密县', '542600');
INSERT INTO `qi_address` VALUES ('3756', '542626', '察隅县', '542600');
INSERT INTO `qi_address` VALUES ('3757', '542627', '朗　县', '542600');
INSERT INTO `qi_address` VALUES ('3758', '610101', '市辖区', '610100');
INSERT INTO `qi_address` VALUES ('3759', '610102', '新城区', '610100');
INSERT INTO `qi_address` VALUES ('3760', '610103', '碑林区', '610100');
INSERT INTO `qi_address` VALUES ('3761', '610104', '莲湖区', '610100');
INSERT INTO `qi_address` VALUES ('3762', '610111', '灞桥区', '610100');
INSERT INTO `qi_address` VALUES ('3763', '610112', '未央区', '610100');
INSERT INTO `qi_address` VALUES ('3764', '610113', '雁塔区', '610100');
INSERT INTO `qi_address` VALUES ('3765', '610114', '阎良区', '610100');
INSERT INTO `qi_address` VALUES ('3766', '610115', '临潼区', '610100');
INSERT INTO `qi_address` VALUES ('3767', '610116', '长安区', '610100');
INSERT INTO `qi_address` VALUES ('3768', '610122', '蓝田县', '610100');
INSERT INTO `qi_address` VALUES ('3769', '610124', '周至县', '610100');
INSERT INTO `qi_address` VALUES ('3770', '610125', '户　县', '610100');
INSERT INTO `qi_address` VALUES ('3771', '610126', '高陵县', '610100');
INSERT INTO `qi_address` VALUES ('3772', '610201', '市辖区', '610200');
INSERT INTO `qi_address` VALUES ('3773', '610202', '王益区', '610200');
INSERT INTO `qi_address` VALUES ('3774', '610203', '印台区', '610200');
INSERT INTO `qi_address` VALUES ('3775', '610204', '耀州区', '610200');
INSERT INTO `qi_address` VALUES ('3776', '610222', '宜君县', '610200');
INSERT INTO `qi_address` VALUES ('3777', '610301', '市辖区', '610300');
INSERT INTO `qi_address` VALUES ('3778', '610302', '渭滨区', '610300');
INSERT INTO `qi_address` VALUES ('3779', '610303', '金台区', '610300');
INSERT INTO `qi_address` VALUES ('3780', '610304', '陈仓区', '610300');
INSERT INTO `qi_address` VALUES ('3781', '610322', '凤翔县', '610300');
INSERT INTO `qi_address` VALUES ('3782', '610323', '岐山县', '610300');
INSERT INTO `qi_address` VALUES ('3783', '610324', '扶风县', '610300');
INSERT INTO `qi_address` VALUES ('3784', '610326', '眉　县', '610300');
INSERT INTO `qi_address` VALUES ('3785', '610327', '陇　县', '610300');
INSERT INTO `qi_address` VALUES ('3786', '610328', '千阳县', '610300');
INSERT INTO `qi_address` VALUES ('3787', '610329', '麟游县', '610300');
INSERT INTO `qi_address` VALUES ('3788', '610330', '凤　县', '610300');
INSERT INTO `qi_address` VALUES ('3789', '610331', '太白县', '610300');
INSERT INTO `qi_address` VALUES ('3790', '610401', '市辖区', '610400');
INSERT INTO `qi_address` VALUES ('3791', '610402', '秦都区', '610400');
INSERT INTO `qi_address` VALUES ('3792', '610403', '杨凌区', '610400');
INSERT INTO `qi_address` VALUES ('3793', '610404', '渭城区', '610400');
INSERT INTO `qi_address` VALUES ('3794', '610422', '三原县', '610400');
INSERT INTO `qi_address` VALUES ('3795', '610423', '泾阳县', '610400');
INSERT INTO `qi_address` VALUES ('3796', '610424', '乾　县', '610400');
INSERT INTO `qi_address` VALUES ('3797', '610425', '礼泉县', '610400');
INSERT INTO `qi_address` VALUES ('3798', '610426', '永寿县', '610400');
INSERT INTO `qi_address` VALUES ('3799', '610427', '彬　县', '610400');
INSERT INTO `qi_address` VALUES ('3800', '610428', '长武县', '610400');
INSERT INTO `qi_address` VALUES ('3801', '610429', '旬邑县', '610400');
INSERT INTO `qi_address` VALUES ('3802', '610430', '淳化县', '610400');
INSERT INTO `qi_address` VALUES ('3803', '610431', '武功县', '610400');
INSERT INTO `qi_address` VALUES ('3804', '610481', '兴平市', '610400');
INSERT INTO `qi_address` VALUES ('3805', '610501', '市辖区', '610500');
INSERT INTO `qi_address` VALUES ('3806', '610502', '临渭区', '610500');
INSERT INTO `qi_address` VALUES ('3807', '610521', '华　县', '610500');
INSERT INTO `qi_address` VALUES ('3808', '610522', '潼关县', '610500');
INSERT INTO `qi_address` VALUES ('3809', '610523', '大荔县', '610500');
INSERT INTO `qi_address` VALUES ('3810', '610524', '合阳县', '610500');
INSERT INTO `qi_address` VALUES ('3811', '610525', '澄城县', '610500');
INSERT INTO `qi_address` VALUES ('3812', '610526', '蒲城县', '610500');
INSERT INTO `qi_address` VALUES ('3813', '610527', '白水县', '610500');
INSERT INTO `qi_address` VALUES ('3814', '610528', '富平县', '610500');
INSERT INTO `qi_address` VALUES ('3815', '610581', '韩城市', '610500');
INSERT INTO `qi_address` VALUES ('3816', '610582', '华阴市', '610500');
INSERT INTO `qi_address` VALUES ('3817', '610601', '市辖区', '610600');
INSERT INTO `qi_address` VALUES ('3818', '610602', '宝塔区', '610600');
INSERT INTO `qi_address` VALUES ('3819', '610621', '延长县', '610600');
INSERT INTO `qi_address` VALUES ('3820', '610622', '延川县', '610600');
INSERT INTO `qi_address` VALUES ('3821', '610623', '子长县', '610600');
INSERT INTO `qi_address` VALUES ('3822', '610624', '安塞县', '610600');
INSERT INTO `qi_address` VALUES ('3823', '610625', '志丹县', '610600');
INSERT INTO `qi_address` VALUES ('3824', '610626', '吴旗县', '610600');
INSERT INTO `qi_address` VALUES ('3825', '610627', '甘泉县', '610600');
INSERT INTO `qi_address` VALUES ('3826', '610628', '富　县', '610600');
INSERT INTO `qi_address` VALUES ('3827', '610629', '洛川县', '610600');
INSERT INTO `qi_address` VALUES ('3828', '610630', '宜川县', '610600');
INSERT INTO `qi_address` VALUES ('3829', '610631', '黄龙县', '610600');
INSERT INTO `qi_address` VALUES ('3830', '610632', '黄陵县', '610600');
INSERT INTO `qi_address` VALUES ('3831', '610701', '市辖区', '610700');
INSERT INTO `qi_address` VALUES ('3832', '610702', '汉台区', '610700');
INSERT INTO `qi_address` VALUES ('3833', '610721', '南郑县', '610700');
INSERT INTO `qi_address` VALUES ('3834', '610722', '城固县', '610700');
INSERT INTO `qi_address` VALUES ('3835', '610723', '洋　县', '610700');
INSERT INTO `qi_address` VALUES ('3836', '610724', '西乡县', '610700');
INSERT INTO `qi_address` VALUES ('3837', '610725', '勉　县', '610700');
INSERT INTO `qi_address` VALUES ('3838', '610726', '宁强县', '610700');
INSERT INTO `qi_address` VALUES ('3839', '610727', '略阳县', '610700');
INSERT INTO `qi_address` VALUES ('3840', '610728', '镇巴县', '610700');
INSERT INTO `qi_address` VALUES ('3841', '610729', '留坝县', '610700');
INSERT INTO `qi_address` VALUES ('3842', '610730', '佛坪县', '610700');
INSERT INTO `qi_address` VALUES ('3843', '610801', '市辖区', '610800');
INSERT INTO `qi_address` VALUES ('3844', '610802', '榆阳区', '610800');
INSERT INTO `qi_address` VALUES ('3845', '610821', '神木县', '610800');
INSERT INTO `qi_address` VALUES ('3846', '610822', '府谷县', '610800');
INSERT INTO `qi_address` VALUES ('3847', '610823', '横山县', '610800');
INSERT INTO `qi_address` VALUES ('3848', '610824', '靖边县', '610800');
INSERT INTO `qi_address` VALUES ('3849', '610825', '定边县', '610800');
INSERT INTO `qi_address` VALUES ('3850', '610826', '绥德县', '610800');
INSERT INTO `qi_address` VALUES ('3851', '610827', '米脂县', '610800');
INSERT INTO `qi_address` VALUES ('3852', '610828', '佳　县', '610800');
INSERT INTO `qi_address` VALUES ('3853', '610829', '吴堡县', '610800');
INSERT INTO `qi_address` VALUES ('3854', '610830', '清涧县', '610800');
INSERT INTO `qi_address` VALUES ('3855', '610831', '子洲县', '610800');
INSERT INTO `qi_address` VALUES ('3856', '610901', '市辖区', '610900');
INSERT INTO `qi_address` VALUES ('3857', '610902', '汉滨区', '610900');
INSERT INTO `qi_address` VALUES ('3858', '610921', '汉阴县', '610900');
INSERT INTO `qi_address` VALUES ('3859', '610922', '石泉县', '610900');
INSERT INTO `qi_address` VALUES ('3860', '610923', '宁陕县', '610900');
INSERT INTO `qi_address` VALUES ('3861', '610924', '紫阳县', '610900');
INSERT INTO `qi_address` VALUES ('3862', '610925', '岚皋县', '610900');
INSERT INTO `qi_address` VALUES ('3863', '610926', '平利县', '610900');
INSERT INTO `qi_address` VALUES ('3864', '610927', '镇坪县', '610900');
INSERT INTO `qi_address` VALUES ('3865', '610928', '旬阳县', '610900');
INSERT INTO `qi_address` VALUES ('3866', '610929', '白河县', '610900');
INSERT INTO `qi_address` VALUES ('3867', '611001', '市辖区', '611000');
INSERT INTO `qi_address` VALUES ('3868', '611002', '商州区', '611000');
INSERT INTO `qi_address` VALUES ('3869', '611021', '洛南县', '611000');
INSERT INTO `qi_address` VALUES ('3870', '611022', '丹凤县', '611000');
INSERT INTO `qi_address` VALUES ('3871', '611023', '商南县', '611000');
INSERT INTO `qi_address` VALUES ('3872', '611024', '山阳县', '611000');
INSERT INTO `qi_address` VALUES ('3873', '611025', '镇安县', '611000');
INSERT INTO `qi_address` VALUES ('3874', '611026', '柞水县', '611000');
INSERT INTO `qi_address` VALUES ('3875', '620101', '市辖区', '620100');
INSERT INTO `qi_address` VALUES ('3876', '620102', '城关区', '620100');
INSERT INTO `qi_address` VALUES ('3877', '620103', '七里河区', '620100');
INSERT INTO `qi_address` VALUES ('3878', '620104', '西固区', '620100');
INSERT INTO `qi_address` VALUES ('3879', '620105', '安宁区', '620100');
INSERT INTO `qi_address` VALUES ('3880', '620111', '红古区', '620100');
INSERT INTO `qi_address` VALUES ('3881', '620121', '永登县', '620100');
INSERT INTO `qi_address` VALUES ('3882', '620122', '皋兰县', '620100');
INSERT INTO `qi_address` VALUES ('3883', '620123', '榆中县', '620100');
INSERT INTO `qi_address` VALUES ('3884', '620201', '市辖区', '620200');
INSERT INTO `qi_address` VALUES ('3885', '620301', '市辖区', '620300');
INSERT INTO `qi_address` VALUES ('3886', '620302', '金川区', '620300');
INSERT INTO `qi_address` VALUES ('3887', '620321', '永昌县', '620300');
INSERT INTO `qi_address` VALUES ('3888', '620401', '市辖区', '620400');
INSERT INTO `qi_address` VALUES ('3889', '620402', '白银区', '620400');
INSERT INTO `qi_address` VALUES ('3890', '620403', '平川区', '620400');
INSERT INTO `qi_address` VALUES ('3891', '620421', '靖远县', '620400');
INSERT INTO `qi_address` VALUES ('3892', '620422', '会宁县', '620400');
INSERT INTO `qi_address` VALUES ('3893', '620423', '景泰县', '620400');
INSERT INTO `qi_address` VALUES ('3894', '620501', '市辖区', '620500');
INSERT INTO `qi_address` VALUES ('3895', '620502', '秦城区', '620500');
INSERT INTO `qi_address` VALUES ('3896', '620503', '北道区', '620500');
INSERT INTO `qi_address` VALUES ('3897', '620521', '清水县', '620500');
INSERT INTO `qi_address` VALUES ('3898', '620522', '秦安县', '620500');
INSERT INTO `qi_address` VALUES ('3899', '620523', '甘谷县', '620500');
INSERT INTO `qi_address` VALUES ('3900', '620524', '武山县', '620500');
INSERT INTO `qi_address` VALUES ('3901', '620525', '张家川回族自治县', '620500');
INSERT INTO `qi_address` VALUES ('3902', '620601', '市辖区', '620600');
INSERT INTO `qi_address` VALUES ('3903', '620602', '凉州区', '620600');
INSERT INTO `qi_address` VALUES ('3904', '620621', '民勤县', '620600');
INSERT INTO `qi_address` VALUES ('3905', '620622', '古浪县', '620600');
INSERT INTO `qi_address` VALUES ('3906', '620623', '天祝藏族自治县', '620600');
INSERT INTO `qi_address` VALUES ('3907', '620701', '市辖区', '620700');
INSERT INTO `qi_address` VALUES ('3908', '620702', '甘州区', '620700');
INSERT INTO `qi_address` VALUES ('3909', '620721', '肃南裕固族自治县', '620700');
INSERT INTO `qi_address` VALUES ('3910', '620722', '民乐县', '620700');
INSERT INTO `qi_address` VALUES ('3911', '620723', '临泽县', '620700');
INSERT INTO `qi_address` VALUES ('3912', '620724', '高台县', '620700');
INSERT INTO `qi_address` VALUES ('3913', '620725', '山丹县', '620700');
INSERT INTO `qi_address` VALUES ('3914', '620801', '市辖区', '620800');
INSERT INTO `qi_address` VALUES ('3915', '620802', '崆峒区', '620800');
INSERT INTO `qi_address` VALUES ('3916', '620821', '泾川县', '620800');
INSERT INTO `qi_address` VALUES ('3917', '620822', '灵台县', '620800');
INSERT INTO `qi_address` VALUES ('3918', '620823', '崇信县', '620800');
INSERT INTO `qi_address` VALUES ('3919', '620824', '华亭县', '620800');
INSERT INTO `qi_address` VALUES ('3920', '620825', '庄浪县', '620800');
INSERT INTO `qi_address` VALUES ('3921', '620826', '静宁县', '620800');
INSERT INTO `qi_address` VALUES ('3922', '620901', '市辖区', '620900');
INSERT INTO `qi_address` VALUES ('3923', '620902', '肃州区', '620900');
INSERT INTO `qi_address` VALUES ('3924', '620921', '金塔县', '620900');
INSERT INTO `qi_address` VALUES ('3925', '620922', '安西县', '620900');
INSERT INTO `qi_address` VALUES ('3926', '620923', '肃北蒙古族自治县', '620900');
INSERT INTO `qi_address` VALUES ('3927', '620924', '阿克塞哈萨克族自治县', '620900');
INSERT INTO `qi_address` VALUES ('3928', '620981', '玉门市', '620900');
INSERT INTO `qi_address` VALUES ('3929', '620982', '敦煌市', '620900');
INSERT INTO `qi_address` VALUES ('3930', '621001', '市辖区', '621000');
INSERT INTO `qi_address` VALUES ('3931', '621002', '西峰区', '621000');
INSERT INTO `qi_address` VALUES ('3932', '621021', '庆城县', '621000');
INSERT INTO `qi_address` VALUES ('3933', '621022', '环　县', '621000');
INSERT INTO `qi_address` VALUES ('3934', '621023', '华池县', '621000');
INSERT INTO `qi_address` VALUES ('3935', '621024', '合水县', '621000');
INSERT INTO `qi_address` VALUES ('3936', '621025', '正宁县', '621000');
INSERT INTO `qi_address` VALUES ('3937', '621026', '宁　县', '621000');
INSERT INTO `qi_address` VALUES ('3938', '621027', '镇原县', '621000');
INSERT INTO `qi_address` VALUES ('3939', '621101', '市辖区', '621100');
INSERT INTO `qi_address` VALUES ('3940', '621102', '安定区', '621100');
INSERT INTO `qi_address` VALUES ('3941', '621121', '通渭县', '621100');
INSERT INTO `qi_address` VALUES ('3942', '621122', '陇西县', '621100');
INSERT INTO `qi_address` VALUES ('3943', '621123', '渭源县', '621100');
INSERT INTO `qi_address` VALUES ('3944', '621124', '临洮县', '621100');
INSERT INTO `qi_address` VALUES ('3945', '621125', '漳　县', '621100');
INSERT INTO `qi_address` VALUES ('3946', '621126', '岷　县', '621100');
INSERT INTO `qi_address` VALUES ('3947', '621201', '市辖区', '621200');
INSERT INTO `qi_address` VALUES ('3948', '621202', '武都区', '621200');
INSERT INTO `qi_address` VALUES ('3949', '621221', '成　县', '621200');
INSERT INTO `qi_address` VALUES ('3950', '621222', '文　县', '621200');
INSERT INTO `qi_address` VALUES ('3951', '621223', '宕昌县', '621200');
INSERT INTO `qi_address` VALUES ('3952', '621224', '康　县', '621200');
INSERT INTO `qi_address` VALUES ('3953', '621225', '西和县', '621200');
INSERT INTO `qi_address` VALUES ('3954', '621226', '礼　县', '621200');
INSERT INTO `qi_address` VALUES ('3955', '621227', '徽　县', '621200');
INSERT INTO `qi_address` VALUES ('3956', '621228', '两当县', '621200');
INSERT INTO `qi_address` VALUES ('3957', '622901', '临夏市', '622900');
INSERT INTO `qi_address` VALUES ('3958', '622921', '临夏县', '622900');
INSERT INTO `qi_address` VALUES ('3959', '622922', '康乐县', '622900');
INSERT INTO `qi_address` VALUES ('3960', '622923', '永靖县', '622900');
INSERT INTO `qi_address` VALUES ('3961', '622924', '广河县', '622900');
INSERT INTO `qi_address` VALUES ('3962', '622925', '和政县', '622900');
INSERT INTO `qi_address` VALUES ('3963', '622926', '东乡族自治县', '622900');
INSERT INTO `qi_address` VALUES ('3964', '622927', '积石山保安族东乡族撒拉族自治县', '622900');
INSERT INTO `qi_address` VALUES ('3965', '623001', '合作市', '623000');
INSERT INTO `qi_address` VALUES ('3966', '623021', '临潭县', '623000');
INSERT INTO `qi_address` VALUES ('3967', '623022', '卓尼县', '623000');
INSERT INTO `qi_address` VALUES ('3968', '623023', '舟曲县', '623000');
INSERT INTO `qi_address` VALUES ('3969', '623024', '迭部县', '623000');
INSERT INTO `qi_address` VALUES ('3970', '623025', '玛曲县', '623000');
INSERT INTO `qi_address` VALUES ('3971', '623026', '碌曲县', '623000');
INSERT INTO `qi_address` VALUES ('3972', '623027', '夏河县', '623000');
INSERT INTO `qi_address` VALUES ('3973', '630101', '市辖区', '630100');
INSERT INTO `qi_address` VALUES ('3974', '630102', '城东区', '630100');
INSERT INTO `qi_address` VALUES ('3975', '630103', '城中区', '630100');
INSERT INTO `qi_address` VALUES ('3976', '630104', '城西区', '630100');
INSERT INTO `qi_address` VALUES ('3977', '630105', '城北区', '630100');
INSERT INTO `qi_address` VALUES ('3978', '630121', '大通回族土族自治县', '630100');
INSERT INTO `qi_address` VALUES ('3979', '630122', '湟中县', '630100');
INSERT INTO `qi_address` VALUES ('3980', '630123', '湟源县', '630100');
INSERT INTO `qi_address` VALUES ('3981', '632121', '平安县', '632100');
INSERT INTO `qi_address` VALUES ('3982', '632122', '民和回族土族自治县', '632100');
INSERT INTO `qi_address` VALUES ('3983', '632123', '乐都县', '632100');
INSERT INTO `qi_address` VALUES ('3984', '632126', '互助土族自治县', '632100');
INSERT INTO `qi_address` VALUES ('3985', '632127', '化隆回族自治县', '632100');
INSERT INTO `qi_address` VALUES ('3986', '632128', '循化撒拉族自治县', '632100');
INSERT INTO `qi_address` VALUES ('3987', '632221', '门源回族自治县', '632200');
INSERT INTO `qi_address` VALUES ('3988', '632222', '祁连县', '632200');
INSERT INTO `qi_address` VALUES ('3989', '632223', '海晏县', '632200');
INSERT INTO `qi_address` VALUES ('3990', '632224', '刚察县', '632200');
INSERT INTO `qi_address` VALUES ('3991', '632321', '同仁县', '632300');
INSERT INTO `qi_address` VALUES ('3992', '632322', '尖扎县', '632300');
INSERT INTO `qi_address` VALUES ('3993', '632323', '泽库县', '632300');
INSERT INTO `qi_address` VALUES ('3994', '632324', '河南蒙古族自治县', '632300');
INSERT INTO `qi_address` VALUES ('3995', '632521', '共和县', '632500');
INSERT INTO `qi_address` VALUES ('3996', '632522', '同德县', '632500');
INSERT INTO `qi_address` VALUES ('3997', '632523', '贵德县', '632500');
INSERT INTO `qi_address` VALUES ('3998', '632524', '兴海县', '632500');
INSERT INTO `qi_address` VALUES ('3999', '632525', '贵南县', '632500');
INSERT INTO `qi_address` VALUES ('4000', '632621', '玛沁县', '632600');
INSERT INTO `qi_address` VALUES ('4001', '632622', '班玛县', '632600');
INSERT INTO `qi_address` VALUES ('4002', '632623', '甘德县', '632600');
INSERT INTO `qi_address` VALUES ('4003', '632624', '达日县', '632600');
INSERT INTO `qi_address` VALUES ('4004', '632625', '久治县', '632600');
INSERT INTO `qi_address` VALUES ('4005', '632626', '玛多县', '632600');
INSERT INTO `qi_address` VALUES ('4006', '632721', '玉树县', '632700');
INSERT INTO `qi_address` VALUES ('4007', '632722', '杂多县', '632700');
INSERT INTO `qi_address` VALUES ('4008', '632723', '称多县', '632700');
INSERT INTO `qi_address` VALUES ('4009', '632724', '治多县', '632700');
INSERT INTO `qi_address` VALUES ('4010', '632725', '囊谦县', '632700');
INSERT INTO `qi_address` VALUES ('4011', '632726', '曲麻莱县', '632700');
INSERT INTO `qi_address` VALUES ('4012', '632801', '格尔木市', '632800');
INSERT INTO `qi_address` VALUES ('4013', '632802', '德令哈市', '632800');
INSERT INTO `qi_address` VALUES ('4014', '632821', '乌兰县', '632800');
INSERT INTO `qi_address` VALUES ('4015', '632822', '都兰县', '632800');
INSERT INTO `qi_address` VALUES ('4016', '632823', '天峻县', '632800');
INSERT INTO `qi_address` VALUES ('4017', '640101', '市辖区', '640100');
INSERT INTO `qi_address` VALUES ('4018', '640104', '兴庆区', '640100');
INSERT INTO `qi_address` VALUES ('4019', '640105', '西夏区', '640100');
INSERT INTO `qi_address` VALUES ('4020', '640106', '金凤区', '640100');
INSERT INTO `qi_address` VALUES ('4021', '640121', '永宁县', '640100');
INSERT INTO `qi_address` VALUES ('4022', '640122', '贺兰县', '640100');
INSERT INTO `qi_address` VALUES ('4023', '640181', '灵武市', '640100');
INSERT INTO `qi_address` VALUES ('4024', '640201', '市辖区', '640200');
INSERT INTO `qi_address` VALUES ('4025', '640202', '大武口区', '640200');
INSERT INTO `qi_address` VALUES ('4026', '640205', '惠农区', '640200');
INSERT INTO `qi_address` VALUES ('4027', '640221', '平罗县', '640200');
INSERT INTO `qi_address` VALUES ('4028', '640301', '市辖区', '640300');
INSERT INTO `qi_address` VALUES ('4029', '640302', '利通区', '640300');
INSERT INTO `qi_address` VALUES ('4030', '640323', '盐池县', '640300');
INSERT INTO `qi_address` VALUES ('4031', '640324', '同心县', '640300');
INSERT INTO `qi_address` VALUES ('4032', '640381', '青铜峡市', '640300');
INSERT INTO `qi_address` VALUES ('4033', '640401', '市辖区', '640400');
INSERT INTO `qi_address` VALUES ('4034', '640402', '原州区', '640400');
INSERT INTO `qi_address` VALUES ('4035', '640422', '西吉县', '640400');
INSERT INTO `qi_address` VALUES ('4036', '640423', '隆德县', '640400');
INSERT INTO `qi_address` VALUES ('4037', '640424', '泾源县', '640400');
INSERT INTO `qi_address` VALUES ('4038', '640425', '彭阳县', '640400');
INSERT INTO `qi_address` VALUES ('4039', '640501', '市辖区', '640500');
INSERT INTO `qi_address` VALUES ('4040', '640502', '沙坡头区', '640500');
INSERT INTO `qi_address` VALUES ('4041', '640521', '中宁县', '640500');
INSERT INTO `qi_address` VALUES ('4042', '640522', '海原县', '640500');
INSERT INTO `qi_address` VALUES ('4043', '650101', '市辖区', '650100');
INSERT INTO `qi_address` VALUES ('4044', '650102', '天山区', '650100');
INSERT INTO `qi_address` VALUES ('4045', '650103', '沙依巴克区', '650100');
INSERT INTO `qi_address` VALUES ('4046', '650104', '新市区', '650100');
INSERT INTO `qi_address` VALUES ('4047', '650105', '水磨沟区', '650100');
INSERT INTO `qi_address` VALUES ('4048', '650106', '头屯河区', '650100');
INSERT INTO `qi_address` VALUES ('4049', '650107', '达坂城区', '650100');
INSERT INTO `qi_address` VALUES ('4050', '650108', '东山区', '650100');
INSERT INTO `qi_address` VALUES ('4051', '650121', '乌鲁木齐县', '650100');
INSERT INTO `qi_address` VALUES ('4052', '650201', '市辖区', '650200');
INSERT INTO `qi_address` VALUES ('4053', '650202', '独山子区', '650200');
INSERT INTO `qi_address` VALUES ('4054', '650203', '克拉玛依区', '650200');
INSERT INTO `qi_address` VALUES ('4055', '650204', '白碱滩区', '650200');
INSERT INTO `qi_address` VALUES ('4056', '650205', '乌尔禾区', '650200');
INSERT INTO `qi_address` VALUES ('4057', '652101', '吐鲁番市', '652100');
INSERT INTO `qi_address` VALUES ('4058', '652122', '鄯善县', '652100');
INSERT INTO `qi_address` VALUES ('4059', '652123', '托克逊县', '652100');
INSERT INTO `qi_address` VALUES ('4060', '652201', '哈密市', '652200');
INSERT INTO `qi_address` VALUES ('4061', '652222', '巴里坤哈萨克自治县', '652200');
INSERT INTO `qi_address` VALUES ('4062', '652223', '伊吾县', '652200');
INSERT INTO `qi_address` VALUES ('4063', '652301', '昌吉市', '652300');
INSERT INTO `qi_address` VALUES ('4064', '652302', '阜康市', '652300');
INSERT INTO `qi_address` VALUES ('4065', '652303', '米泉市', '652300');
INSERT INTO `qi_address` VALUES ('4066', '652323', '呼图壁县', '652300');
INSERT INTO `qi_address` VALUES ('4067', '652324', '玛纳斯县', '652300');
INSERT INTO `qi_address` VALUES ('4068', '652325', '奇台县', '652300');
INSERT INTO `qi_address` VALUES ('4069', '652327', '吉木萨尔县', '652300');
INSERT INTO `qi_address` VALUES ('4070', '652328', '木垒哈萨克自治县', '652300');
INSERT INTO `qi_address` VALUES ('4071', '652701', '博乐市', '652700');
INSERT INTO `qi_address` VALUES ('4072', '652722', '精河县', '652700');
INSERT INTO `qi_address` VALUES ('4073', '652723', '温泉县', '652700');
INSERT INTO `qi_address` VALUES ('4074', '652801', '库尔勒市', '652800');
INSERT INTO `qi_address` VALUES ('4075', '652822', '轮台县', '652800');
INSERT INTO `qi_address` VALUES ('4076', '652823', '尉犁县', '652800');
INSERT INTO `qi_address` VALUES ('4077', '652824', '若羌县', '652800');
INSERT INTO `qi_address` VALUES ('4078', '652825', '且末县', '652800');
INSERT INTO `qi_address` VALUES ('4079', '652826', '焉耆回族自治县', '652800');
INSERT INTO `qi_address` VALUES ('4080', '652827', '和静县', '652800');
INSERT INTO `qi_address` VALUES ('4081', '652828', '和硕县', '652800');
INSERT INTO `qi_address` VALUES ('4082', '652829', '博湖县', '652800');
INSERT INTO `qi_address` VALUES ('4083', '652901', '阿克苏市', '652900');
INSERT INTO `qi_address` VALUES ('4084', '652922', '温宿县', '652900');
INSERT INTO `qi_address` VALUES ('4085', '652923', '库车县', '652900');
INSERT INTO `qi_address` VALUES ('4086', '652924', '沙雅县', '652900');
INSERT INTO `qi_address` VALUES ('4087', '652925', '新和县', '652900');
INSERT INTO `qi_address` VALUES ('4088', '652926', '拜城县', '652900');
INSERT INTO `qi_address` VALUES ('4089', '652927', '乌什县', '652900');
INSERT INTO `qi_address` VALUES ('4090', '652928', '阿瓦提县', '652900');
INSERT INTO `qi_address` VALUES ('4091', '652929', '柯坪县', '652900');
INSERT INTO `qi_address` VALUES ('4092', '653001', '阿图什市', '653000');
INSERT INTO `qi_address` VALUES ('4093', '653022', '阿克陶县', '653000');
INSERT INTO `qi_address` VALUES ('4094', '653023', '阿合奇县', '653000');
INSERT INTO `qi_address` VALUES ('4095', '653024', '乌恰县', '653000');
INSERT INTO `qi_address` VALUES ('4096', '653101', '喀什市', '653100');
INSERT INTO `qi_address` VALUES ('4097', '653121', '疏附县', '653100');
INSERT INTO `qi_address` VALUES ('4098', '653122', '疏勒县', '653100');
INSERT INTO `qi_address` VALUES ('4099', '653123', '英吉沙县', '653100');
INSERT INTO `qi_address` VALUES ('4100', '653124', '泽普县', '653100');
INSERT INTO `qi_address` VALUES ('4101', '653125', '莎车县', '653100');
INSERT INTO `qi_address` VALUES ('4102', '653126', '叶城县', '653100');
INSERT INTO `qi_address` VALUES ('4103', '653127', '麦盖提县', '653100');
INSERT INTO `qi_address` VALUES ('4104', '653128', '岳普湖县', '653100');
INSERT INTO `qi_address` VALUES ('4105', '653129', '伽师县', '653100');
INSERT INTO `qi_address` VALUES ('4106', '653130', '巴楚县', '653100');
INSERT INTO `qi_address` VALUES ('4107', '653131', '塔什库尔干塔吉克自治县', '653100');
INSERT INTO `qi_address` VALUES ('4108', '653201', '和田市', '653200');
INSERT INTO `qi_address` VALUES ('4109', '653221', '和田县', '653200');
INSERT INTO `qi_address` VALUES ('4110', '653222', '墨玉县', '653200');
INSERT INTO `qi_address` VALUES ('4111', '653223', '皮山县', '653200');
INSERT INTO `qi_address` VALUES ('4112', '653224', '洛浦县', '653200');
INSERT INTO `qi_address` VALUES ('4113', '653225', '策勒县', '653200');
INSERT INTO `qi_address` VALUES ('4114', '653226', '于田县', '653200');
INSERT INTO `qi_address` VALUES ('4115', '653227', '民丰县', '653200');
INSERT INTO `qi_address` VALUES ('4116', '654002', '伊宁市', '654000');
INSERT INTO `qi_address` VALUES ('4117', '654003', '奎屯市', '654000');
INSERT INTO `qi_address` VALUES ('4118', '654021', '伊宁县', '654000');
INSERT INTO `qi_address` VALUES ('4119', '654022', '察布查尔锡伯自治县', '654000');
INSERT INTO `qi_address` VALUES ('4120', '654023', '霍城县', '654000');
INSERT INTO `qi_address` VALUES ('4121', '654024', '巩留县', '654000');
INSERT INTO `qi_address` VALUES ('4122', '654025', '新源县', '654000');
INSERT INTO `qi_address` VALUES ('4123', '654026', '昭苏县', '654000');
INSERT INTO `qi_address` VALUES ('4124', '654027', '特克斯县', '654000');
INSERT INTO `qi_address` VALUES ('4125', '654028', '尼勒克县', '654000');
INSERT INTO `qi_address` VALUES ('4126', '654201', '塔城市', '654200');
INSERT INTO `qi_address` VALUES ('4127', '654202', '乌苏市', '654200');
INSERT INTO `qi_address` VALUES ('4128', '654221', '额敏县', '654200');
INSERT INTO `qi_address` VALUES ('4129', '654223', '沙湾县', '654200');
INSERT INTO `qi_address` VALUES ('4130', '654224', '托里县', '654200');
INSERT INTO `qi_address` VALUES ('4131', '654225', '裕民县', '654200');
INSERT INTO `qi_address` VALUES ('4132', '654226', '和布克赛尔蒙古自治县', '654200');
INSERT INTO `qi_address` VALUES ('4133', '654301', '阿勒泰市', '654300');
INSERT INTO `qi_address` VALUES ('4134', '654321', '布尔津县', '654300');
INSERT INTO `qi_address` VALUES ('4135', '654322', '富蕴县', '654300');
INSERT INTO `qi_address` VALUES ('4136', '654323', '福海县', '654300');
INSERT INTO `qi_address` VALUES ('4137', '654324', '哈巴河县', '654300');
INSERT INTO `qi_address` VALUES ('4138', '654325', '青河县', '654300');
INSERT INTO `qi_address` VALUES ('4139', '654326', '吉木乃县', '654300');
INSERT INTO `qi_address` VALUES ('4140', '659001', '石河子市', '659000');
INSERT INTO `qi_address` VALUES ('4141', '659002', '阿拉尔市', '659000');
INSERT INTO `qi_address` VALUES ('4142', '659003', '图木舒克市', '659000');
INSERT INTO `qi_address` VALUES ('4143', '659004', '五家渠市', '659000');

-- ----------------------------
-- Table structure for qi_article
-- ----------------------------
DROP TABLE IF EXISTS `qi_article`;
CREATE TABLE `qi_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `read_times` int(11) NOT NULL DEFAULT '0' COMMENT '阅读次数',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_article
-- ----------------------------
INSERT INTO `qi_article` VALUES ('2', '3', '王宝强离婚', '王宝强离婚王宝强离婚', '/uploads/ueditor/image/20160719/1468906315586437.jpeg', '0', '2016-08-15 14:35:30', '2016-08-15 15:21:45', '1');
INSERT INTO `qi_article` VALUES ('3', '7', '日本地震1', '日本地震日本地震日本地震日本地震', '', '0', '2016-08-15 15:24:47', '2016-08-16 10:55:49', '1');

-- ----------------------------
-- Table structure for qi_article_category
-- ----------------------------
DROP TABLE IF EXISTS `qi_article_category`;
CREATE TABLE `qi_article_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_article_category
-- ----------------------------
INSERT INTO `qi_article_category` VALUES ('1', '国内新闻', '0', '0', '2016-08-15 13:15:37', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_article_category` VALUES ('2', '国际新闻', '0', '0', '2016-08-15 13:21:11', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_article_category` VALUES ('3', '江苏新闻', '1', '0', '2016-08-15 13:28:26', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_article_category` VALUES ('4', '浙江新闻', '1', '0', '2016-08-15 13:28:48', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_article_category` VALUES ('5', '东亚新闻', '2', '0', '2016-08-15 13:29:18', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_article_category` VALUES ('6', '北美新闻', '2', '0', '2016-08-15 13:29:28', '0000-00-00 00:00:00', '0');
INSERT INTO `qi_article_category` VALUES ('7', '日本新闻', '5', '0', '2016-08-15 13:29:40', '0000-00-00 00:00:00', '1');

-- ----------------------------
-- Table structure for qi_article_detail
-- ----------------------------
DROP TABLE IF EXISTS `qi_article_detail`;
CREATE TABLE `qi_article_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `detail` varchar(2000) NOT NULL,
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_article_detail
-- ----------------------------
INSERT INTO `qi_article_detail` VALUES ('1', '2', '<p>王宝强离婚王宝强离婚王宝强离婚王宝强离婚</p>', '2016-08-15 14:35:30', '2016-08-15 15:21:45', '1');
INSERT INTO `qi_article_detail` VALUES ('2', '3', '<p>日本地震日本地震日本地震日本地震日本地震日本地震日本地震日本地震</p><p>日本地震</p><p><img src=\"/uploads/ueditor/image/20160719/1468897148104330.jpeg\"/></p><p><img src=\"/uploads/ueditor/image/20160719/1468897056360132.jpeg\"/></p><p><br/></p>', '2016-08-15 15:24:47', '2016-08-16 10:55:49', '1');

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
-- Table structure for qi_cart
-- ----------------------------
DROP TABLE IF EXISTS `qi_cart`;
CREATE TABLE `qi_cart` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `member_id` int(20) NOT NULL DEFAULT '0',
  `goods_id` int(20) NOT NULL DEFAULT '0',
  `goods_amount_id` int(20) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `amount` int(10) NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_cart
-- ----------------------------
INSERT INTO `qi_cart` VALUES ('21', '2', '4', '20', '摄像机-能看能听能说，手机远程观看asdf', '/uploads/ueditor/image/20160728/1469686384504117.png', '149.00', '3', '2016-08-05 14:04:35', '2016-08-09 11:11:33', '1');
INSERT INTO `qi_cart` VALUES ('23', '2', '5', '21', 'U盘', '/uploads/ueditor/image/20160728/1469686384118728.png', '80.00', '2', '2016-08-08 14:20:06', '2016-08-09 11:11:32', '1');
INSERT INTO `qi_cart` VALUES ('24', '1', '6', '22', 'T恤 白色 S', '/uploads/ueditor/image/20160728/1469686384136436.png', '100.00', '1', '2016-09-03 13:43:51', '0000-00-00 00:00:00', '1');

-- ----------------------------
-- Table structure for qi_category
-- ----------------------------
DROP TABLE IF EXISTS `qi_category`;
CREATE TABLE `qi_category` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `parent_id` int(20) NOT NULL DEFAULT '0' COMMENT '父id',
  `sort` int(10) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_category
-- ----------------------------
INSERT INTO `qi_category` VALUES ('1', '家用电器', '0', '0', '2016-07-19 15:48:27', '2016-07-28 11:35:30', '1');
INSERT INTO `qi_category` VALUES ('22', '手机、数码、通信', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_category` VALUES ('3', '电脑、办公', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_category` VALUES ('4', '家具、家居', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_category` VALUES ('5', '大家电', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_category` VALUES ('6', '小家电', '1', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_category` VALUES ('7', '电视', '5', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_category` VALUES ('8', '微波炉', '6', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_category` VALUES ('11', '大微波炉', '8', '0', '2016-07-20 10:56:06', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_category` VALUES ('10', '大微波炉', '8', '0', '2016-07-20 10:56:17', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_category` VALUES ('23', '手机', '22', '0', '2016-07-20 14:19:36', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_category` VALUES ('24', '服装', '0', '0', '2016-07-28 14:19:01', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_category` VALUES ('25', '上衣', '24', '0', '2016-07-28 14:19:15', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_category` VALUES ('26', '裤子', '24', '0', '2016-07-28 14:19:23', '0000-00-00 00:00:00', '1');

-- ----------------------------
-- Table structure for qi_comment
-- ----------------------------
DROP TABLE IF EXISTS `qi_comment`;
CREATE TABLE `qi_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL COMMENT '0',
  `object_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '对象类型1：文章评论，2：商品评论',
  `object_id` int(11) NOT NULL DEFAULT '0' COMMENT '对象id',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父id',
  `replay_id` int(11) NOT NULL DEFAULT '0' COMMENT '回复的用户的id',
  `content` varchar(500) NOT NULL,
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_comment
-- ----------------------------
INSERT INTO `qi_comment` VALUES ('1', '2', '2', '6', '0', '0', '这件T恤真好看，为什么这么便宜呢', '2016-08-10 16:55:25', '2016-08-19 09:04:40', '1');
INSERT INTO `qi_comment` VALUES ('2', '1', '2', '6', '1', '2', '因为便宜啊', '2016-08-10 16:58:40', '2016-08-24 21:58:08', '1');
INSERT INTO `qi_comment` VALUES ('3', '1', '2', '6', '0', '0', '我也要买一件，太好看了', '2016-08-10 17:47:21', '2016-08-17 16:31:56', '1');
INSERT INTO `qi_comment` VALUES ('4', '2', '2', '6', '0', '0', '我也也要买一件', '2016-08-10 17:47:49', '2016-08-18 15:39:51', '1');
INSERT INTO `qi_comment` VALUES ('5', '2', '2', '6', '0', '0', '评论测试', '2016-08-18 17:18:03', '2016-08-18 17:18:30', '1');
INSERT INTO `qi_comment` VALUES ('6', '2', '2', '6', '5', '2', '回复测试', '2016-08-18 17:18:49', '2016-08-18 17:19:10', '1');
INSERT INTO `qi_comment` VALUES ('7', '2', '2', '6', '5', '2', '回复测试2', '2016-08-18 17:19:16', '2016-08-18 17:19:31', '1');
INSERT INTO `qi_comment` VALUES ('8', '2', '2', '6', '5', '2', '回复测试3', '2016-08-18 17:19:26', '2016-08-18 17:19:32', '1');
INSERT INTO `qi_comment` VALUES ('9', '2', '2', '6', '1', '1', '回复测试', '2016-08-18 17:19:51', '2016-08-18 17:21:33', '1');
INSERT INTO `qi_comment` VALUES ('10', '2', '2', '6', '3', '1', '回复', '2016-08-18 17:21:25', '2016-08-18 17:21:34', '1');

-- ----------------------------
-- Table structure for qi_comment_up
-- ----------------------------
DROP TABLE IF EXISTS `qi_comment_up`;
CREATE TABLE `qi_comment_up` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_comment_up
-- ----------------------------
INSERT INTO `qi_comment_up` VALUES ('1', '2', '1', '2016-08-19 09:44:36', '2016-08-19 09:44:56', '0');
INSERT INTO `qi_comment_up` VALUES ('2', '2', '2', '2016-08-19 09:44:57', '2016-08-19 10:12:32', '1');
INSERT INTO `qi_comment_up` VALUES ('3', '2', '3', '2016-08-19 10:13:33', '2016-08-19 10:13:34', '0');

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
  `image` varchar(200) NOT NULL COMMENT '图片',
  `category_id` int(20) NOT NULL DEFAULT '0' COMMENT '分类id',
  `type_id` int(20) NOT NULL DEFAULT '0',
  `money_in` decimal(10,2) NOT NULL DEFAULT '0.00',
  `money_out` decimal(10,2) NOT NULL DEFAULT '0.00',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_status` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1上架2下架',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_goods
-- ----------------------------
INSERT INTO `qi_goods` VALUES ('1', '丝袜10', 'g1231231231', '牛逼的丝袜', '/uploads/ueditor/image/20160715/1468561425103302.jpg', '7', '2', '11.00', '15.00', '2016-06-21 16:39:05', '2016-08-17 16:29:23', '2016-07-15 15:35:26', '2');
INSERT INTO `qi_goods` VALUES ('2', 'iphone7', 'g1469065251', 'iphone7新品上市', '/uploads/ueditor/image/20160715/1468561425990720.jpg', '23', '3', '4000.00', '5380.00', '2016-07-21 09:40:51', '2016-08-15 15:23:41', '2016-08-15 15:23:41', '2');
INSERT INTO `qi_goods` VALUES ('3', '平衡车', 'g1469686442', '年轻人的酷玩具，骑行遥控两种玩法', '/uploads/ueditor/image/20160728/1469686384926302.png', '6', '4', '1000.00', '1999.00', '2016-07-28 14:14:02', '2016-08-01 14:22:39', '2016-07-28 14:14:02', '1');
INSERT INTO `qi_goods` VALUES ('4', '摄像机-能看能听能说，手机远程观看asdf', 'g1469686539', '能看能听能说，手机远程观看', '/uploads/ueditor/image/20160728/1469686384504117.png', '6', '4', '100.00', '149.00', '2016-07-28 14:15:39', '2016-08-02 13:33:07', '2016-07-28 14:15:39', '1');
INSERT INTO `qi_goods` VALUES ('5', 'U盘', 'g1469686646', '超级U盘，好看实惠', '/uploads/ueditor/image/20160728/1469686384118728.png', '0', '4', '20.00', '80.00', '2016-07-28 14:17:26', '0000-00-00 00:00:00', '2016-07-28 14:17:26', '1');
INSERT INTO `qi_goods` VALUES ('6', 'T恤', 'g1469686850', '好看的T恤，来看这里', '/uploads/ueditor/image/20160728/1469686384136436.png', '25', '5', '50.00', '100.00', '2016-07-28 14:20:50', '2016-07-29 14:22:22', '2016-07-28 14:20:50', '1');
INSERT INTO `qi_goods` VALUES ('7', '商品1', 'g147159664470', '商品1商品1商品1', '/uploads/ueditor/image/20160728/1469686384926302.png', '1', '4', '100.00', '110.00', '2016-08-19 16:50:44', '0000-00-00 00:00:00', '2016-08-19 16:50:44', '1');
INSERT INTO `qi_goods` VALUES ('8', '商品2', 'g147159667864', '商品2商品2', '/uploads/ueditor/image/20160728/1469686384926302.png', '6', '4', '100.00', '110.00', '2016-08-19 16:51:18', '0000-00-00 00:00:00', '2016-08-19 16:51:18', '1');
INSERT INTO `qi_goods` VALUES ('9', '商品3', 'g147159671583', '商品3商品3', '/uploads/ueditor/image/20160728/1469686384504117.png', '6', '4', '100.00', '110.00', '2016-08-19 16:51:55', '0000-00-00 00:00:00', '2016-08-19 16:51:55', '1');
INSERT INTO `qi_goods` VALUES ('10', '商品4', 'g147159675734', '商品4商品4', '/uploads/ueditor/image/20160719/1468896552139461.jpeg', '6', '4', '104.00', '144.00', '2016-08-19 16:52:37', '0000-00-00 00:00:00', '2016-08-19 16:52:37', '1');
INSERT INTO `qi_goods` VALUES ('11', '商品5', 'g147159678950', '商品5商品5', '/uploads/ueditor/image/20160718/1468814303383025.jpg', '5', '4', '105.00', '155.00', '2016-08-19 16:53:09', '0000-00-00 00:00:00', '2016-08-19 16:53:09', '1');
INSERT INTO `qi_goods` VALUES ('12', '商品6', 'g147159682956', '商品6商品6', '/uploads/ueditor/image/20160719/1468896552115355.jpeg', '5', '4', '106.00', '166.00', '2016-08-19 16:53:49', '0000-00-00 00:00:00', '2016-08-19 16:53:49', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_goods_amount
-- ----------------------------
INSERT INTO `qi_goods_amount` VALUES ('1', '1', '8', '57', '0', '0', '0', null, null, null, null, null, '101', '20.00', '2016-06-21 16:39:05', '2016-07-20 15:50:44', '1');
INSERT INTO `qi_goods_amount` VALUES ('2', '1', '8', '58', '0', '0', '0', null, null, null, null, null, '150', '20.00', '2016-06-21 16:39:05', '2016-07-20 15:50:44', '1');
INSERT INTO `qi_goods_amount` VALUES ('3', '1', '56', '57', '0', '0', '0', null, null, null, null, null, '200', '21.00', '2016-06-21 16:39:05', '2016-07-20 15:50:44', '1');
INSERT INTO `qi_goods_amount` VALUES ('4', '1', '56', '58', '0', '0', '0', null, null, null, null, null, '210', '21.00', '2016-06-21 16:39:05', '2016-07-20 15:50:44', '1');
INSERT INTO `qi_goods_amount` VALUES ('9', '1', '8', '59', '0', '0', '0', null, null, null, null, null, '11', '10.00', '2016-06-22 17:28:01', '2016-07-20 15:50:44', '1');
INSERT INTO `qi_goods_amount` VALUES ('10', '1', '56', '59', '0', '0', '0', null, null, null, null, null, '123', '10.00', '2016-06-22 17:28:01', '2016-07-20 15:50:44', '1');
INSERT INTO `qi_goods_amount` VALUES ('11', '2', '2', '65', '63', '0', '0', null, null, null, null, null, '100', '5100.00', '2016-07-21 09:40:51', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_amount` VALUES ('12', '2', '2', '65', '64', '0', '0', null, null, null, null, null, '100', '6100.00', '2016-07-21 09:40:51', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_amount` VALUES ('13', '2', '5', '65', '63', '0', '0', null, null, null, null, null, '100', '5200.00', '2016-07-21 09:40:51', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_amount` VALUES ('14', '2', '5', '65', '64', '0', '0', null, null, null, null, null, '100', '6200.00', '2016-07-21 09:40:51', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_amount` VALUES ('15', '2', '11', '65', '63', '0', '0', null, null, null, null, null, '100', '5200.00', '2016-07-21 09:40:51', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_amount` VALUES ('16', '2', '11', '65', '64', '0', '0', null, null, null, null, null, '100', '6200.00', '2016-07-21 09:40:51', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_amount` VALUES ('17', '2', '24', '65', '63', '0', '0', null, null, null, null, null, '100', '5300.00', '2016-07-21 09:40:51', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_amount` VALUES ('18', '2', '24', '65', '64', '0', '0', null, null, null, null, null, '10', '6300.00', '2016-07-21 09:40:51', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_amount` VALUES ('19', '3', '0', '0', '0', '0', '0', null, null, null, null, null, '0', '1998.00', '2016-07-28 14:14:02', '2016-08-01 14:22:39', '1');
INSERT INTO `qi_goods_amount` VALUES ('20', '4', '0', '0', '0', '0', '0', null, null, null, null, null, '99', '149.00', '2016-07-28 14:15:39', '2016-08-02 13:33:07', '1');
INSERT INTO `qi_goods_amount` VALUES ('21', '5', '0', '0', '0', '0', '0', null, null, null, null, null, '7', '80.00', '2016-07-28 14:17:26', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_amount` VALUES ('22', '6', '2', '57', '0', '0', '0', null, null, null, null, null, '97', '100.00', '2016-07-28 14:20:50', '2016-07-29 14:22:22', '1');
INSERT INTO `qi_goods_amount` VALUES ('23', '6', '2', '58', '0', '0', '0', null, null, null, null, null, '98', '100.00', '2016-07-28 14:20:50', '2016-07-29 14:22:22', '1');
INSERT INTO `qi_goods_amount` VALUES ('24', '6', '2', '59', '0', '0', '0', null, null, null, null, null, '111', '100.00', '2016-07-28 14:20:50', '2016-07-29 14:22:22', '1');
INSERT INTO `qi_goods_amount` VALUES ('25', '6', '2', '60', '0', '0', '0', null, null, null, null, null, '111', '100.00', '2016-07-28 14:20:50', '2016-07-29 14:22:22', '1');
INSERT INTO `qi_goods_amount` VALUES ('26', '6', '8', '57', '0', '0', '0', null, null, null, null, null, '9', '100.00', '2016-07-28 14:20:50', '2016-07-29 14:22:22', '1');
INSERT INTO `qi_goods_amount` VALUES ('27', '6', '8', '58', '0', '0', '0', null, null, null, null, null, '1010', '100.00', '2016-07-28 14:20:50', '2016-07-29 14:22:22', '1');
INSERT INTO `qi_goods_amount` VALUES ('28', '6', '8', '59', '0', '0', '0', null, null, null, null, null, '0', '100.00', '2016-07-28 14:20:50', '2016-07-29 14:22:22', '1');
INSERT INTO `qi_goods_amount` VALUES ('29', '6', '8', '60', '0', '0', '0', null, null, null, null, null, '0', '100.00', '2016-07-28 14:20:50', '2016-07-29 14:22:22', '1');
INSERT INTO `qi_goods_amount` VALUES ('30', '7', '0', '0', '0', '0', '0', null, null, null, null, null, '100', '110.00', '2016-08-19 16:50:44', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_amount` VALUES ('31', '8', '0', '0', '0', '0', '0', null, null, null, null, null, '100', '110.00', '2016-08-19 16:51:18', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_amount` VALUES ('32', '9', '0', '0', '0', '0', '0', null, null, null, null, null, '100', '110.00', '2016-08-19 16:51:55', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_amount` VALUES ('33', '10', '0', '0', '0', '0', '0', null, null, null, null, null, '100', '144.00', '2016-08-19 16:52:37', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_amount` VALUES ('34', '11', '0', '0', '0', '0', '0', null, null, null, null, null, '100', '155.00', '2016-08-19 16:53:09', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_amount` VALUES ('35', '12', '0', '0', '0', '0', '0', null, null, null, null, null, '100', '166.00', '2016-08-19 16:53:49', '0000-00-00 00:00:00', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_goods_detail
-- ----------------------------
INSERT INTO `qi_goods_detail` VALUES ('1', '1', '<p>撒旦法发达傻店范德萨发大法师地方</p><p>撒旦法放大师傅12</p><p>222</p><p><img src=\"/uploads/ueditor/image/20160715/1468561425990720.jpg\" title=\"1468561425990720.jpg\"/></p><p><img src=\"/uploads/ueditor/image/20160715/1468561425103302.jpg\" title=\"1468561425103302.jpg\"/></p><p><br/></p>', '2016-06-21 16:39:05', '2016-07-20 15:50:44', '1');
INSERT INTO `qi_goods_detail` VALUES ('2', '2', '<p>苹果手机，新品上线</p><p><img src=\"/uploads/ueditor/image/20160719/1468897148686916.jpeg\" alt=\"1468897148686916.jpeg\"/></p>', '2016-07-21 09:40:51', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_detail` VALUES ('3', '3', '<p>123123</p>', '2016-07-28 14:14:02', '2016-08-01 14:22:39', '1');
INSERT INTO `qi_goods_detail` VALUES ('4', '4', '<p>123123</p>', '2016-07-28 14:15:39', '2016-08-02 13:33:07', '1');
INSERT INTO `qi_goods_detail` VALUES ('5', '5', '<p>11111</p>', '2016-07-28 14:17:26', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_detail` VALUES ('6', '6', '<p><img src=\"/uploads/ueditor/image/20160729/1469773312122395.jpg\"/></p><p><img src=\"/uploads/ueditor/image/20160729/1469773330948549.jpg\"/><img src=\"/uploads/ueditor/image/20160729/1469773341413836.jpg\"/></p>', '2016-07-28 14:20:50', '2016-07-29 14:22:22', '1');
INSERT INTO `qi_goods_detail` VALUES ('7', '7', '<p>11</p>', '2016-08-19 16:50:44', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_detail` VALUES ('8', '8', '<p>222<br/></p>', '2016-08-19 16:51:18', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_detail` VALUES ('9', '9', '<p>商品3</p>', '2016-08-19 16:51:55', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_detail` VALUES ('10', '10', '<p>商品4</p>', '2016-08-19 16:52:37', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_detail` VALUES ('11', '11', '<p>商品5商品5</p>', '2016-08-19 16:53:09', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_detail` VALUES ('12', '12', '<p>商品6商品6</p>', '2016-08-19 16:53:49', '0000-00-00 00:00:00', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_goods_type
-- ----------------------------
INSERT INTO `qi_goods_type` VALUES ('1', '打底裤', '1', '2', '0', '0', '0', '2015-12-21 20:46:47', '2016-06-16 10:35:30', '1');
INSERT INTO `qi_goods_type` VALUES ('2', '丝袜', '1', '2', '0', '0', '0', '2015-12-21 20:47:25', '2016-06-16 14:23:45', '1');
INSERT INTO `qi_goods_type` VALUES ('3', '手机', '1', '2', '3', '0', '0', '2016-06-16 10:37:04', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_goods_type` VALUES ('4', '其他', '0', '0', '0', '0', '0', '2016-06-16 14:23:56', '2016-07-28 14:12:24', '1');
INSERT INTO `qi_goods_type` VALUES ('5', '衣服', '1', '2', '0', '0', '0', '2016-07-28 14:18:50', '0000-00-00 00:00:00', '1');

-- ----------------------------
-- Table structure for qi_joke
-- ----------------------------
DROP TABLE IF EXISTS `qi_joke`;
CREATE TABLE `qi_joke` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) NOT NULL,
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_joke
-- ----------------------------
INSERT INTO `qi_joke` VALUES ('1', '语文课上，\n老师：小明请你把“如果每一滴水都能代表一个祝福，那我送你一片海洋”做一个仿句练习！\n小明：如果每一朵花都代表一个祝福，那我会送你一个花圈！\n瞬间全班轰动！！！\n老师：滚滚滚，马上滚！！！', '2016-08-28 21:41:46', '2016-08-31 22:28:12', '1');
INSERT INTO `qi_joke` VALUES ('2', '123', '2016-08-31 22:28:20', '2016-08-31 23:03:11', '1');
INSERT INTO `qi_joke` VALUES ('3', '语文课上，老师：小明请你把“如果每一滴水都能代表一个祝福，那我送你一片海洋”做一个仿句练习！\n小明：如果每一朵花都代表一个祝福，那我会送你一个花圈！\n瞬间全班轰动！！！\n老师：滚滚滚，马上滚！！！', '2016-08-31 23:26:31', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_joke` VALUES ('4', '老师把小明叫到了教室外。\n老师：“你的作业做的越来越差了，这是怎么回事？”\n小明：“老师，等我找找原因，下午告诉你好吗？”\n老师：“好吧！”\n下午，老师又把小明叫到了教室外。老师：“找到原因了吗？”\n小明：“找到了，我爷爷说作业越来越难，他也没办法。”\n老师：“滚出去！”', '2016-08-31 23:26:31', '0000-00-00 00:00:00', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;

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
INSERT INTO `qi_log` VALUES ('125', '100', '登录成功', '127.0.0.1', '2016-07-18 09:06:04');
INSERT INTO `qi_log` VALUES ('126', '100', '登录成功', '127.0.0.1', '2016-07-18 13:39:49');
INSERT INTO `qi_log` VALUES ('127', '100', '登录成功', '127.0.0.1', '2016-07-19 08:59:17');
INSERT INTO `qi_log` VALUES ('128', '100', '登录成功', '127.0.0.1', '2016-07-20 09:21:03');
INSERT INTO `qi_log` VALUES ('129', '100', '登录成功', '127.0.0.1', '2016-07-20 16:14:34');
INSERT INTO `qi_log` VALUES ('130', '100', '登录成功', '127.0.0.1', '2016-07-21 08:56:27');
INSERT INTO `qi_log` VALUES ('131', '100', '登录成功', '127.0.0.1', '2016-07-21 09:45:53');
INSERT INTO `qi_log` VALUES ('132', '100', '登录成功', '127.0.0.1', '2016-07-21 17:18:56');
INSERT INTO `qi_log` VALUES ('133', '100', '登录成功', '127.0.0.1', '2016-07-22 08:59:33');
INSERT INTO `qi_log` VALUES ('134', '100', '登录成功', '127.0.0.1', '2016-07-25 16:18:11');
INSERT INTO `qi_log` VALUES ('135', '100', '登录成功', '127.0.0.1', '2016-07-26 10:54:11');
INSERT INTO `qi_log` VALUES ('136', '100', '登录成功', '127.0.0.1', '2016-07-26 16:19:06');
INSERT INTO `qi_log` VALUES ('137', '100', '登录成功', '127.0.0.1', '2016-07-27 09:30:21');
INSERT INTO `qi_log` VALUES ('138', '100', '登录成功', '127.0.0.1', '2016-07-27 11:46:29');
INSERT INTO `qi_log` VALUES ('139', '100', '登录成功', '127.0.0.1', '2016-07-28 11:15:51');
INSERT INTO `qi_log` VALUES ('140', '100', '登录成功', '127.0.0.1', '2016-07-28 14:11:48');
INSERT INTO `qi_log` VALUES ('141', '100', '登录成功', '127.0.0.1', '2016-07-29 10:55:03');
INSERT INTO `qi_log` VALUES ('142', '100', '登录成功', '127.0.0.1', '2016-07-29 13:20:58');
INSERT INTO `qi_log` VALUES ('143', '100', '登录成功', '127.0.0.1', '2016-07-29 17:33:25');
INSERT INTO `qi_log` VALUES ('144', '100', '登录成功', '127.0.0.1', '2016-08-01 14:22:10');
INSERT INTO `qi_log` VALUES ('145', '100', '登录成功', '127.0.0.1', '2016-08-02 09:21:22');
INSERT INTO `qi_log` VALUES ('146', '100', '登录成功', '127.0.0.1', '2016-08-02 13:32:49');
INSERT INTO `qi_log` VALUES ('147', '100', '登录成功', '127.0.0.1', '2016-08-03 16:32:10');
INSERT INTO `qi_log` VALUES ('148', '100', '登录成功', '127.0.0.1', '2016-08-05 10:59:52');
INSERT INTO `qi_log` VALUES ('149', '100', '登录成功', '127.0.0.1', '2016-08-15 09:54:35');
INSERT INTO `qi_log` VALUES ('150', '100', '登录成功', '127.0.0.1', '2016-08-16 10:47:57');
INSERT INTO `qi_log` VALUES ('151', '100', '登录成功', '127.0.0.1', '2016-08-16 15:01:00');
INSERT INTO `qi_log` VALUES ('152', '100', '登录成功', '127.0.0.1', '2016-08-17 10:16:44');
INSERT INTO `qi_log` VALUES ('153', '100', '登录成功', '127.0.0.1', '2016-08-17 13:20:58');
INSERT INTO `qi_log` VALUES ('154', '100', '登录成功', '127.0.0.1', '2016-08-17 13:26:37');
INSERT INTO `qi_log` VALUES ('155', '100', '登录成功', '127.0.0.1', '2016-08-18 09:25:27');
INSERT INTO `qi_log` VALUES ('156', '100', '登录成功', '127.0.0.1', '2016-08-19 10:58:59');
INSERT INTO `qi_log` VALUES ('157', '100', '登录成功', '127.0.0.1', '2016-08-19 16:20:29');
INSERT INTO `qi_log` VALUES ('158', '100', '登录成功', '127.0.0.1', '2016-08-22 13:44:45');
INSERT INTO `qi_log` VALUES ('159', '100', '登录成功', '127.0.0.1', '2016-08-23 22:32:14');
INSERT INTO `qi_log` VALUES ('160', '100', '登录成功', '127.0.0.1', '2016-08-24 21:34:50');
INSERT INTO `qi_log` VALUES ('161', '100', '登录成功', '127.0.0.1', '2016-08-25 21:36:37');
INSERT INTO `qi_log` VALUES ('162', '100', '登录成功', '127.0.0.1', '2016-08-27 09:58:51');
INSERT INTO `qi_log` VALUES ('163', '100', '登录成功', '127.0.0.1', '2016-08-28 21:04:32');
INSERT INTO `qi_log` VALUES ('164', '100', '登录成功', '127.0.0.1', '2016-08-30 20:59:17');
INSERT INTO `qi_log` VALUES ('165', '100', '登录成功', '127.0.0.1', '2016-08-31 21:30:14');
INSERT INTO `qi_log` VALUES ('166', '100', '登录成功', '127.0.0.1', '2016-09-03 12:45:27');
INSERT INTO `qi_log` VALUES ('167', '100', '登录成功', '127.0.0.1', '2016-10-05 11:05:39');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_member
-- ----------------------------
INSERT INTO `qi_member` VALUES ('1', 'jin1', '李4', 'edbbf7a5afd220a65983229ed6496ed9', '13665119181', '723528197@qq.com', '123', '', '123', '1', '0', '2', '2016-06-28', '', '2015-12-23 14:51:03', '2016-08-18 10:10:02', '1');
INSERT INTO `qi_member` VALUES ('2', 'jin', '张3', 'edbbf7a5afd220a65983229ed6496ed9', '13665119187', '7235281971@qq.com', '', '', '', '0', '0', '1', '1988-03-15', '', '2016-07-25 18:02:58', '2016-08-18 10:09:54', '1');

-- ----------------------------
-- Table structure for qi_member_address
-- ----------------------------
DROP TABLE IF EXISTS `qi_member_address`;
CREATE TABLE `qi_member_address` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `member_id` int(20) NOT NULL,
  `province` int(20) NOT NULL DEFAULT '0' COMMENT '省',
  `city` int(20) NOT NULL DEFAULT '0' COMMENT '市',
  `area` int(20) NOT NULL DEFAULT '0' COMMENT '区',
  `detail` varchar(200) NOT NULL COMMENT '详细地址',
  `phone` varchar(20) NOT NULL DEFAULT '0' COMMENT '联系电话',
  `person` varchar(20) NOT NULL COMMENT '联系人',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_member_address
-- ----------------------------
INSERT INTO `qi_member_address` VALUES ('3', '公司', '2', '320000', '320200', '320211', '国家软件园', '13111121112', 'jjm', '2016-07-28 11:04:16', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_member_address` VALUES ('4', '父母家', '2', '320000', '320200', '320206', '百搭纯粹', '13411112222', 'jjm1', '2016-07-28 11:07:28', '2016-08-19 15:03:27', '2');

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
  `accept_name` varchar(20) NOT NULL DEFAULT '',
  `accept_province` varchar(20) NOT NULL DEFAULT '',
  `accept_city` varchar(20) NOT NULL DEFAULT '',
  `accept_area` varchar(20) NOT NULL DEFAULT '',
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_order
-- ----------------------------
INSERT INTO `qi_order` VALUES ('1', 'o147029813375', '2', '489.00', '0.00', '0.00', '489.00', '1', 'jjm1', '江苏省', '无锡市', '惠山区', '百搭纯粹', '13411112222', '', '2016-08-04 16:08:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_order` VALUES ('2', 'o147036611021', '2', '200.00', '0.00', '0.00', '200.00', '2', 'jjm1', '江苏省', '无锡市', '惠山区', '百搭纯粹', '13411112222', '', '2016-08-05 11:01:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_order` VALUES ('3', 'o147036720292', '2', '500.00', '0.00', '0.00', '500.00', '1', 'jjm1', '江苏省', '无锡市', '惠山区', '百搭纯粹', '13411112222', '', '2016-08-05 11:20:02', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');

-- ----------------------------
-- Table structure for qi_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `qi_order_goods`;
CREATE TABLE `qi_order_goods` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `order_id` int(20) NOT NULL DEFAULT '0',
  `goods_id` int(20) NOT NULL DEFAULT '0',
  `goods_amount_id` int(20) NOT NULL DEFAULT '0' COMMENT '规格库存id',
  `goods_name` varchar(100) NOT NULL,
  `amount` int(20) NOT NULL DEFAULT '0' COMMENT '数量',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_order_goods
-- ----------------------------
INSERT INTO `qi_order_goods` VALUES ('1', '1', '5', '21', 'U盘', '3', '80.00', '2016-08-04 16:08:53', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_order_goods` VALUES ('2', '1', '6', '22', 'T恤 白色 S', '1', '100.00', '2016-08-04 16:08:53', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_order_goods` VALUES ('3', '1', '4', '20', '摄像机-能看能听能说，手机远程观看asdf', '1', '149.00', '2016-08-04 16:08:53', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_order_goods` VALUES ('4', '2', '6', '26', 'T恤 黑色 S', '1', '100.00', '2016-08-05 11:01:50', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_order_goods` VALUES ('5', '2', '6', '27', 'T恤 黑色 M', '1', '100.00', '2016-08-05 11:01:50', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_order_goods` VALUES ('6', '3', '6', '23', 'T恤 白色 M', '3', '100.00', '2016-08-05 11:20:02', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_order_goods` VALUES ('7', '3', '6', '22', 'T恤 白色 S', '2', '100.00', '2016-08-05 11:20:02', '0000-00-00 00:00:00', '1');

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
  `s_value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`s_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_setting
-- ----------------------------
INSERT INTO `qi_setting` VALUES ('logo_name', '15e443ecc86da031600a553bff40826d.png');
INSERT INTO `qi_setting` VALUES ('page_number', '10');
INSERT INTO `qi_setting` VALUES ('shipping_free', '80');
INSERT INTO `qi_setting` VALUES ('shipping_jzh', '10');
INSERT INTO `qi_setting` VALUES ('shipping_other', '20');
INSERT INTO `qi_setting` VALUES ('station_name', '7蓝');
INSERT INTO `qi_setting` VALUES ('user_error_times', '5');
INSERT INTO `qi_setting` VALUES ('use_captcha', '0');
INSERT INTO `qi_setting` VALUES ('wx_app_id', 'wx1c495f279a2d6216');
INSERT INTO `qi_setting` VALUES ('wx_app_secret', '10581dd598abe83687e1cbd5e4c02276');

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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_user
-- ----------------------------
INSERT INTO `qi_user` VALUES ('100', 'admin', 'Ming.King', 'edbbf7a5afd220a65983229ed6496ed9', '13665119187', '723528197@qq.com', '1', '2015-11-05 00:00:00', '2016-07-14 10:05:37', '0', '1');
INSERT INTO `qi_user` VALUES ('102', 'jojo', 'jojo1', 'edbbf7a5afd220a65983229ed6496ed9', '', '', '2', '0000-00-00 00:00:00', '2016-08-18 13:50:25', '0', '1');

-- ----------------------------
-- Table structure for qi_weixin_likes
-- ----------------------------
DROP TABLE IF EXISTS `qi_weixin_likes`;
CREATE TABLE `qi_weixin_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL DEFAULT '0',
  `content` varchar(1000) NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL,
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_weixin_likes
-- ----------------------------
INSERT INTO `qi_weixin_likes` VALUES ('1', '1', '语文课上，老师：小明请你把“如果每一滴水都能代表一个祝福，那我送你一片海洋”做一个仿句练习！\r\n小明：如果每一朵花都代表一个祝福，那我会送你一个花圈！\r\n瞬间全班轰动！！！\r\n老师：滚滚滚，马上滚！！！', '0b1919e2c0d433ea94e158c5e318dcfe.jpg', '0000-00-00 00:00:00', '2016-08-28 21:20:42', '1');
INSERT INTO `qi_weixin_likes` VALUES ('2', '1', '老师把小明叫到了教室外。\r\n老师：“你的作业做的越来越差了，这是怎么回事？”\r\n小明：“老师，等我找找原因，下午告诉你好吗？”\r\n老师：“好吧！”\r\n下午，老师又把小明叫到了教室外。老师：“找到原因了吗？”\r\n小明：“找到了，我爷爷说作业越来越难，他也没办法。”\r\n老师：“滚出去！”', '1e38b38b36987ed109faadcf08f15cfc.jpeg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_weixin_likes` VALUES ('3', '1', '考试后，老师训话：“都是学生，怎么有的考得好，有的考得差。”\r\n小明：“还不是因为监考老师不同。”\r\n老师：“滚出去！”', '3f8feaa559b127d3c5383ca83db49074.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_weixin_likes` VALUES ('4', '1', '政治老师花一整堂课讲述钱与人生的关系，下课前布置作业，思考题：“如果你们有钱能改变什么吗？”\r\n小明在角落冷哼一声：“如果有钱，我就不用在这听你废话了。”\r\n老师：“滚出去！”', '5eaa72e367063b02cf32769ac59a78bc.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_weixin_likes` VALUES ('5', '1', '老师：“请用一句话，证明你找不到某个人的时候的愤怒情绪。”\r\n小明：“王八蛋，你特么在哪？”\r\n老师：“注意素质。”\r\n小明：“鳖，汝在何方？”\r\n老师：“滚……”', '9b01a030129e39edfce178cb1bbcb828.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_weixin_likes` VALUES ('6', '1', '老师：“请大家解释一下环境因素和遗传因素！”\r\n小明：“长的像爸爸就是遗传因素，长的像邻居就是环境因素！”\r\n老师：“老规矩……”\r\n小明默默地站起来……', '9b38cee9e952d77db9af2c0d1611d868.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_weixin_likes` VALUES ('7', '1', '老师问站在教室外的小明、霜霜、李华三人：“你们仨到底在课堂上做什么，给我老实交代。”\r\n小明：“指点江山，激扬文字，粪土粪土当年万户侯。”\r\n老师：“说人话。”\r\n小明：“斗地主。”\r\n老师：“外面站一天。”', '9d663d93804a5aafed1adb770770099b.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_weixin_likes` VALUES ('8', '1', '小明：“老师我喜欢你。”\r\n老师：“我不喜欢小孩。”\r\n小明：“我也不喜欢小孩，我们可以不要小孩。”\r\n老师：“滚！滚到外边去！”', '35cc4c00d2583f6dcca5c7e4d5ed0932.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_weixin_likes` VALUES ('9', '1', '数学课上，老师出题：“我们班上有十一位同学，现在老师带了十个苹果，要怎么才能平均分给同学们？”\r\n小红：“小明滚出去！”', '38dfbb31d82ff14cfacdbf04698a746c.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_weixin_likes` VALUES ('10', '1', '老师：“同学们好！”\r\n同学们：“老师，教师节快乐！”\r\n老师：“谢谢同学们，小明呢？”\r\n小强：“小明说，今天你过节，他就不气你了，自己先滚出去了。”\r\n老师：“小明其实也是个懂事的孩子，快去叫他进来吧。”\r\n小强：“这点估计他都到家了。”', '60a9175464b147ad8846d855ac12db8f.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_weixin_likes` VALUES ('11', '1', '教室里，小明把头靠在椅子上，不听课。\r\n老师关心的问：“你又生病了？”\r\n小明头也不抬的说：“是的，头疼。”\r\n老师说：“你有医生证明吗？拿出来你就可以回家休息了！”小明说：“就是因为医生不开证明，所以头疼。”\r\n老师：“滚出去…”', '99b813b9fe68e280dc8bb3df09fe157d.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_weixin_likes` VALUES ('12', '1', '体育课要做蛙跳动作，老师问：“谁以前受过伤？可以不用做。”\r\n小红说：“我脚断过。”\r\n小强说：“我手腕断过。”\r\n小明：“我脐带断过。”\r\n小明没滚，只是罚跳了一节课。', '421b21ffd3e3322fa362a6dd6f14b7dd.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_weixin_likes` VALUES ('13', '1', '老师：“小明，如果你长大了失恋了之后怎么办？”\r\n小明：“我失恋了就老老实实回媳妇身边。”\r\n老师：“滚出去……”', '764f512a7fd7a6d1add8d5da5bd6cacc.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_weixin_likes` VALUES ('14', '1', '老师：“请大家说说你们的愿望。”\r\n小明：“去山东蓝翔学挖掘机。”\r\n老师：“给我个理由。”\r\n小明：“刨你家祖坟。”\r\n老师：“滚出去…………”', '865745bcc080595e63127f526e7e650a.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_weixin_likes` VALUES ('15', '1', '课堂上，老师在讲第7章，小明把书随便打开，就低头玩手机，结果被老师发现了。\r\n老师质问他：“讲的7章，怎么把书翻到8章？”\r\n小明淡淡的答到：“我是在前面等着你！”\r\n回答的挺合逻辑啊，怎么老师还是让小明滚出去了。。。\r\n老师：“小明，你来回答学校是什么地方！”\r\n小明：“学校就是连续签到五天，领取作业大礼包的地方！”\r\n老师：“你滚出去!”', '9136932b5a8c70d9c132def539fda8f9.jpeg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_weixin_likes` VALUES ('16', '1', '小明：“老师，我想去上网。”\r\n老师：“滚！”\r\n小明以迅雷不及掩耳盗铃之势跑出教室。\r\n老师：“我艹，说顺口了，你给我回来！”', '59723259292f2e864c0b1661910de544.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_weixin_likes` VALUES ('17', '1', '老师：“蒸一个包子一分钟，蒸三个包子要多久？”\r\n小明：“九分钟？”\r\n老师：“你傻呀！你们家蒸包子一个一个蒸呀？！”\r\n小明表示不服：“那我问你，吃一个馒头一分钟，吃十个馒头呢？”\r\n老师：“十分钟呀！你以为我跟你一样傻呀！”\r\n小明：“十分钟吃十个馒头！撑死你个饭桶！”\r\n老师：“。。。滚出去！”', 'a5ef60ddfaed7d6e54193e345ba038b1.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_weixin_likes` VALUES ('18', '1', '小明：“老师，我以后再也不惹你生气了。”\r\n老师：“这样才是乖孩子，坐下听课吧，来大家翻开16页，这节课我们讲羊驼。”\r\n小明：“咦，艹泥马。”\r\n老师：“继续滚出去……”', 'b4ba2153012ff041a1c77b9533240175.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_weixin_likes` VALUES ('19', '1', '老师问小明：“如果有劫匪要捅我一刀，你会怎么办？”\r\n小明：“看他是否捅中。”\r\n老师：“没捅中了呢？”\r\n小明：“给他来瓶脉动。”\r\n老师：“为什么？”\r\n小明：“关键时候不在状态，速度回归。”\r\n老师：“捅中了呢？”\r\n小明：“来片炫迈。”\r\n老师：“什么意思？”\r\n小明：“根本停不下来！”\r\n老师：“有多远滚多远！”', 'b8faa48b454c5b9add35e888f0a43326.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_weixin_likes` VALUES ('20', '1', '老师：“小明，你知道为什么要上地理课嘛？”\r\n小明：“老师，那为什么体育课那么少，作业那么多呢？”\r\n老师：“......”', 'fafb992a9e4478db6d9af286aaafe301.jpeg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_weixin_likes` VALUES ('21', '1', '小王：“为什么一节课45分钟，而下课休息时间只有15分钟呢？”\r\n老师：“请回答正题！”\r\n小明：“因为没有天理。”\r\n老师：“滚去太平洋！！！”', '2bc7ebcb20e68f104a9be8156640fa5f.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');

-- ----------------------------
-- Table structure for qi_weixin_likes_up
-- ----------------------------
DROP TABLE IF EXISTS `qi_weixin_likes_up`;
CREATE TABLE `qi_weixin_likes_up` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL DEFAULT '0',
  `weixin_likes_id` int(11) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qi_weixin_likes_up
-- ----------------------------
INSERT INTO `qi_weixin_likes_up` VALUES ('1', '2', '11', '2016-08-28 16:34:14', '0000-00-00 00:00:00', '1');
INSERT INTO `qi_weixin_likes_up` VALUES ('2', '1', '2', '2016-09-03 13:42:33', '0000-00-00 00:00:00', '1');
