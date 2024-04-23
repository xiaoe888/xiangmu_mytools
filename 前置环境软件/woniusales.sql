/*
 Navicat Premium Data Transfer

 Source Server         : centos7_woniu_3306
 Source Server Type    : MySQL
 Source Server Version : 50651
 Source Host           : 192.168.153.138:3306
 Source Schema         : woniusales

 Target Server Type    : MySQL
 Target Server Version : 50651
 File Encoding         : 65001

 Date: 23/04/2024 12:15:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `customerid` int(11) NOT NULL AUTO_INCREMENT,
  `customerphone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `customername` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `childsex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `childdate` date NULL DEFAULT '0000-00-00',
  `creditkids` int(11) NOT NULL,
  `creditcloth` int(11) NOT NULL,
  `credittotal` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`customerid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 84 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, '186836668866', '某某', '女', '2015-12-31', 500, 2136, 2636, 1, '2017-10-01 15:40:06', '2018-01-05 20:39:07');
INSERT INTO `customer` VALUES (2, '18682558655', '强子', '女', '2015-12-31', 50, 99, 149, 1, '2017-10-01 15:40:30', '2017-11-14 12:25:45');
INSERT INTO `customer` VALUES (3, '15983123450', '老吴', '男', '2011-12-04', 50, 100, 150, 1, '2017-10-01 15:40:57', '2017-10-01 15:40:57');
INSERT INTO `customer` VALUES (5, '15812345678', '未知', '男', '2017-10-28', 0, 820, 820, 4, '2017-10-28 18:17:57', '2017-10-28 21:13:37');
INSERT INTO `customer` VALUES (10, '13512345303', '未知', '男', '2017-10-29', 0, 690, 690, 4, '2017-10-29 09:45:24', '2017-10-29 09:45:24');
INSERT INTO `customer` VALUES (8, '18222229328', '未知', '女', '2017-10-28', 0, 784, 784, 2, '2017-10-28 19:45:46', '2017-11-11 20:42:56');
INSERT INTO `customer` VALUES (9, '18052342219', '未知', '女', '2017-10-03', 0, 879, 879, 2, '2017-10-28 20:19:25', '2017-10-28 20:44:06');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `goodsid` int(11) NOT NULL AUTO_INCREMENT,
  `batchname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `goodsserial` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `barcode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `goodsname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `goodstype` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `inputsize` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL,
  `unitprice` float NOT NULL,
  `totalprice` float NOT NULL,
  `costunitprice` float NOT NULL,
  `costtotalprice` float NOT NULL,
  `userid` int(11) NOT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`goodsid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 276 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, 'GB20170923', 'M8Q9066C', '6955203636348', '人字呢背心裙', '衣服', '80-90-100-110-120', 5, 239, 1195, 157.55, 787.75, 2, '2017-10-23 17:31:38');
INSERT INTO `goods` VALUES (2, 'GB20170923', 'M3S0327C', '6955203653819', '小翻领后开上衣', '衣服', '73-80-90-100', 4, 119, 476, 90.44, 361.76, 2, '2017-10-23 17:31:38');
INSERT INTO `goods` VALUES (3, 'GB20170923', 'M2S2037C', '6955203647849', '绞花开衫', '衣服', '90-100-110', 3, 146, 438, 83.22, 249.66, 2, '2017-10-23 17:31:38');
INSERT INTO `goods` VALUES (4, 'GB20170923', 'M3K4547C', '6955203656599', '爱心加绒打底裤', '裤子', '80-90-100-110', 8, 139, 1112, 111.28, 890.24, 2, '2017-10-23 17:31:38');
INSERT INTO `goods` VALUES (5, 'GB20170923', 'M6S5617C', '6955203662996', '百搭半高领打底衫', '裤子', '80-90-100-110', 8, 79, 632, 50.08, 400.64, 2, '2017-10-23 17:31:38');
INSERT INTO `goods` VALUES (6, 'GB20170923', 'M1T3077C', '6955203663467', '秋圃保暖套服', '床品', '73-80-90', 6, 139, 834, 98.46, 590.76, 2, '2017-10-23 17:31:38');
INSERT INTO `goods` VALUES (7, 'GB20170923', 'M2S2197C', '6955203654342', '荷叶领针织衬衣', '衣服', '80-90-100-110', 4, 89, 356, 67.64, 270.56, 2, '2017-10-23 17:31:38');
INSERT INTO `goods` VALUES (8, 'GB20170923', 'M4S1077A', '6955203644985', '泡泡袖衬衣', '衣服', '80-90-100-110', 4, 86, 344, 65.36, 261.44, 2, '2017-10-23 17:31:38');
INSERT INTO `goods` VALUES (9, 'GB20170923', 'M7Q1857D', '955036005', '年装毛呢背心裙', '衣服', '80-90-100-110-120', 5, 179, 895, 140.05, 700.25, 2, '2017-10-23 17:31:38');
INSERT INTO `goods` VALUES (10, 'GB20170923', 'M2Q2277C', '6955203656612', '拼接背心裙', '衣服', '80-90-100-110-120', 10, 179, 1790, 140.1, 1401, 2, '2017-10-23 17:31:38');
INSERT INTO `goods` VALUES (11, 'GB20170923', 'M2S2437D', '6955203658531', '褶襇长大衣', '衣服', '80-90-100-110', 4, 236, 944, 179.36, 717.44, 2, '2017-10-23 17:31:38');
INSERT INTO `goods` VALUES (12, 'GB20170923', 'M4S4227C', '6955203656858', '针织打底', '衣服', '80-90-100-110', 4, 89, 356, 67.64, 270.56, 2, '2017-10-23 17:31:38');
INSERT INTO `goods` VALUES (13, 'GB20170923', 'M4K2937D', '6955203661302', '不倒绒百搭打底', '裤子', '80-90-100-110', 12, 99, 1188, 65.72, 788.64, 2, '2017-10-23 17:31:38');
INSERT INTO `goods` VALUES (14, 'GB20170923', 'M8S7137A', '6955203640802', '仙人掌小翻领T恤', '衣服', '80-90-100-110', 4, 86, 344, 65.36, 261.44, 2, '2017-10-23 17:31:38');
INSERT INTO `goods` VALUES (15, 'GB20170923', 'M4S2907C', '6955203662897', '假领子绣花卫衣', '衣服', '80-90-100-110', 4, 89, 356, 67.64, 270.56, 2, '2017-10-23 17:31:38');
INSERT INTO `goods` VALUES (16, 'GB20170923', 'M3T0636C', '6955203630759', '小熊肩开套装', '套装', '73-80-90-100', 4, 126, 504, 95.76, 383.04, 2, '2017-10-23 17:31:38');
INSERT INTO `goods` VALUES (17, 'GB20170923', 'M1T0677C', '6955203657688', '熊格保暖肩开套服', '床品', '73-80-90-100', 4, 149, 596, 113.24, 452.96, 2, '2017-10-23 17:31:38');
INSERT INTO `goods` VALUES (18, 'GB20170923', 'M1H0637C1', '6955203658951', '熊格保暖侧开连体衣', '床品', '66-73-80', 3, 168, 504, 95.76, 287.28, 2, '2017-10-23 17:31:38');
INSERT INTO `goods` VALUES (19, 'GB20170923', 'M1T0627C', '6955203657633', '熊格保暖连体套服', '床品', '59-66-73', 3, 168, 504, 95.76, 287.28, 2, '2017-10-23 17:31:38');
INSERT INTO `goods` VALUES (20, 'GB20170923', 'M4S4217C', '6955203660060', '针织加绒打底', '裤子', '80-90-100-110', 8, 119, 952, 80.88, 647.04, 2, '2017-10-23 17:31:38');
INSERT INTO `goods` VALUES (275, 'GB20180508', 'M3Q1498B', '11111111', '米乐果后开连衣裙', '衣服', '10-20-30-40', 4, 89, 356, 60.876, 243.504, 1, '2018-05-08 12:10:25');
INSERT INTO `goods` VALUES (274, 'GB20180508', 'M1Q0648B', '22222222', '冰蓝纯棉背心裙', '衣服', '50-60', 4, 139, 556, 95.076, 380.304, 1, '2018-05-08 12:10:25');
INSERT INTO `goods` VALUES (273, 'GB20180508', 'M7Q1398B', '0', '海洋梭织背心裙', '0', '0', 5, 119, 595, 81.396, 406.98, 1, '2018-05-08 12:10:25');
INSERT INTO `goods` VALUES (272, 'GB20180508', 'M4H9508B', '0', '香蕉开裆哈衣', '0', '0', 4, 99, 396, 67.716, 270.864, 1, '2018-05-08 12:10:25');
INSERT INTO `goods` VALUES (271, 'GB20180508', 'M1Q1098B', '0', '蒲公蚕丝背心裙', '0', '0', 16, 119, 1904, 81.396, 1302.34, 1, '2018-05-08 12:10:25');
INSERT INTO `goods` VALUES (270, 'GB20180508', 'M4Q2908B', '0', '渐变条连衣裙', '0', '0', 4, 119, 476, 81.396, 325.584, 1, '2018-05-08 12:10:25');
INSERT INTO `goods` VALUES (269, 'GB20180508', 'M5Q2958B', '0', '连衣裙', '0', '0', 4, 139, 556, 95.076, 380.304, 1, '2018-05-08 12:10:25');
INSERT INTO `goods` VALUES (268, 'GB20180508', 'ME42388', '0', '健康宝宝鞋', '0', '0', 6, 79, 474, 54.036, 324.216, 1, '2018-05-08 12:10:25');
INSERT INTO `goods` VALUES (267, 'GB20180508', 'ME42389', '0', '健康宝宝鞋', '0', '0', 6, 79, 474, 54.036, 324.216, 1, '2018-05-08 12:10:25');
INSERT INTO `goods` VALUES (266, 'GB20180508', 'ME42392', '0', '健康学步鞋', '0', '0', 16, 129, 2064, 88.236, 1411.78, 1, '2018-05-08 12:10:25');
INSERT INTO `goods` VALUES (265, 'GB20180508', 'ME42391', '0', '健康学步鞋', '0', '0', 12, 129, 1548, 88.236, 1058.83, 1, '2018-05-08 12:10:25');
INSERT INTO `goods` VALUES (264, 'GB20180508', 'ME42402', '0', '健康稳步鞋', '0', '0', 12, 159, 1908, 108.756, 1305.07, 1, '2018-05-08 12:10:25');
INSERT INTO `goods` VALUES (263, 'GB20180508', 'ME42395', '0', '健康学步鞋', '0', '0', 12, 139, 1668, 95.076, 1140.91, 1, '2018-05-08 12:10:25');
INSERT INTO `goods` VALUES (262, 'GB20180508', 'ME42403', '0', '健康稳步鞋', '0', '0', 12, 159, 1908, 108.756, 1305.07, 1, '2018-05-08 12:10:25');
INSERT INTO `goods` VALUES (261, 'GB20180508', 'ME42405', '0', '健康稳步鞋', '0', '0', 12, 159, 1908, 108.756, 1305.07, 1, '2018-05-08 12:10:25');
INSERT INTO `goods` VALUES (260, 'GB20180508', 'ME42404', '0', '健康稳步鞋', '0', '0', 12, 159, 1908, 108.756, 1305.07, 1, '2018-05-08 12:10:25');
INSERT INTO `goods` VALUES (259, 'GB20180508', 'ME42613', '0', '印花方巾', '0', '0', 6, 29, 174, 19.836, 119.016, 1, '2018-05-08 12:10:25');
INSERT INTO `goods` VALUES (258, 'GB20180508', 'ME42337', '0', '双层布艺雪花熊童被', '0', '0', 6, 146, 876, 99.864, 599.184, 1, '2018-05-08 12:10:25');

-- ----------------------------
-- Table structure for return
-- ----------------------------
DROP TABLE IF EXISTS `return`;
CREATE TABLE `return`  (
  `returnid` int(11) NOT NULL AUTO_INCREMENT,
  `sellid` int(11) NOT NULL,
  `sellsumid` int(11) NOT NULL DEFAULT 0,
  `customerid` int(11) NOT NULL DEFAULT 0,
  `barcode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goodsserial` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `goodsname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `goodstype` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `goodssize` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `unitprice` float NOT NULL,
  `discountratio` int(11) NOT NULL,
  `discountprice` float NOT NULL,
  `buyquantity` int(11) NOT NULL,
  `subtotal` float NOT NULL,
  `returnticket` int(11) NOT NULL DEFAULT 0,
  `returncredit` int(11) NOT NULL DEFAULT 0,
  `returnmoney` int(11) NOT NULL DEFAULT 0,
  `selltime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`returnid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of return
-- ----------------------------
INSERT INTO `return` VALUES (1, 74, 42, 24, '6955203656599', 'M3K4547C', '爱心加绒打底裤', '裤子', '80', 139, 93, 129.27, 1, 129.27, 0, 258, 129, '2017-11-12 22:32:19', '2017-11-15 10:06:40');
INSERT INTO `return` VALUES (2, 100, 60, 24, '6955203651679', 'M6T1377C1', '绿梦肩开套装', '套装', '80', 99, 80, 79.2, 1, 79.2, 79, 0, 0, '2017-12-05 11:53:28', '2017-12-05 11:55:05');
INSERT INTO `return` VALUES (3, 99, 60, 24, '6955203651679', 'M6T1377C1', '绿梦肩开套装', '套装', '90', 99, 80, 79.2, 1, 79.2, 79, 0, 0, '2017-12-05 11:53:28', '2017-12-05 11:55:09');
INSERT INTO `return` VALUES (4, 98, 60, 24, '6955203651679', 'M6T1377C1', '绿梦肩开套装', '套装', '73', 99, 80, 79.2, 1, 79.2, 79, 0, 0, '2017-12-05 11:53:28', '2017-12-05 11:55:13');
INSERT INTO `return` VALUES (5, 135, 85, 52, '6955203661036', 'ME42258', '小汽车加绒毛衣', '衣服', '110', 199, 80, 159.2, 1, 159.2, 0, 159, 159, '2017-12-23 15:01:48', '2017-12-23 15:44:32');
INSERT INTO `return` VALUES (6, 141, 90, 56, '6955203656940', 'M2S4117D', '心形花棉衣', '衣服', '110', 259, 78, 202.02, 1, 202.02, 0, 202, 202, '2017-12-26 17:21:02', '2017-12-27 14:27:27');
INSERT INTO `return` VALUES (7, 151, 95, 58, '6955203653468', 'ME42194', '袜子', '鞋袜', '小', 10.9, 68, 7.41, 1, 7.41, 0, 7, 7, '2017-12-29 15:44:14', '2017-12-29 15:51:03');
INSERT INTO `return` VALUES (8, 150, 95, 58, '6955203674265', 'M1H1227D', '彩粮棉全开连体衣', '衣服', '66', 159, 68, 108.12, 1, 108.12, 0, 108, 108, '2017-12-29 15:44:14', '2017-12-29 15:54:19');
INSERT INTO `return` VALUES (9, 170, 109, 46, '6955203621863', 'M1J2766A', '米乐菱格保暖裹边套', '床品', '66', 106, 60, 63.6, 1, 63.6, 0, 62, 63, '2018-01-13 16:02:04', '2018-01-13 21:09:36');
INSERT INTO `return` VALUES (10, 169, 109, 46, '6955203660145', 'M1H3227D', '樱桃薄棉全开连体衣', '衣服', '66', 198, 60, 118.8, 1, 118.8, 1, 117, 117, '2018-01-13 16:02:04', '2018-01-13 21:09:47');
INSERT INTO `return` VALUES (11, 185, 119, 24, '6955203647849', 'M2S2037C', '绞花开衫', '衣服', '90', 146, 88, 128.48, 1, 128.48, 29, 99, 99, '2018-01-25 10:25:19', '2018-01-25 15:10:30');
INSERT INTO `return` VALUES (12, 206, 129, 24, '6955203660336', 'M3K0907D1', '星星薄棉长裤', '裤子', '80', 148, 58, 85.84, 1, 85.84, 0, 84, 85, '2018-01-28 12:52:40', '2018-01-28 13:49:33');
INSERT INTO `return` VALUES (13, 207, 129, 24, '6955203674180', 'M3S1637D', '连帽针织棉外套', '衣服', '80', 199, 58, 115.42, 1, 115.42, 1, 114, 114, '2018-01-28 12:52:40', '2018-01-28 13:49:46');
INSERT INTO `return` VALUES (14, 211, 132, 24, '6955203655943', 'M1H2947D', '简约中棉偏开哈衣', '衣服', '73', 139, 68, 94.52, 1, 94.52, 0, 94, 94, '2018-01-28 13:14:43', '2018-01-28 19:33:41');
INSERT INTO `return` VALUES (15, 222, 141, 24, '6955203656698', 'ME42053', '双层布艺提大象童巾(3件装）', '用品', '25*50', 59, 99, 58.41, 1, 58.41, 0, 58, 58, '2018-01-29 17:15:14', '2018-01-30 10:13:53');
INSERT INTO `return` VALUES (16, 217, 136, 24, '6955203674180', 'M3S1637D', '连帽针织棉外套', '衣服', '110', 199, 58, 115.42, 1, 115.42, 1, 114, 114, '2018-01-28 13:52:06', '2018-01-30 10:20:39');
INSERT INTO `return` VALUES (17, 216, 136, 24, '6955203660336', 'M3K0907D1', '星星薄棉长裤', '裤子', '110', 148, 58, 85.84, 1, 85.84, 0, 84, 85, '2018-01-28 13:52:06', '2018-01-30 10:21:01');
INSERT INTO `return` VALUES (18, 215, 135, 24, '6955203660336', 'M3K0907D1', '星星薄棉长裤', '裤子', '100', 148, 54, 79.92, 1, 79.92, 0, 78, 79, '2018-01-28 13:43:09', '2018-01-30 10:23:35');
INSERT INTO `return` VALUES (19, 214, 135, 24, '6955203675248', 'M7K1597D', '学院加棉水洗牛仔裤', '裤子', '110', 169, 54, 91.26, 1, 91.26, 1, 90, 90, '2018-01-28 13:43:09', '2018-01-30 10:23:54');
INSERT INTO `return` VALUES (20, 210, 131, 24, '6955203652904', 'M6S3457D', '冬季记忆可脱帽中长棉外套', '用品', '100', 429, 51, 218.79, 1, 218.79, 1, 217, 217, '2018-01-28 13:05:28', '2018-01-30 10:28:12');
INSERT INTO `return` VALUES (21, 209, 131, 24, '6955203652348', 'M6S4217D1', '童话王国尖帽外套', '用品', '100', 418, 51, 213.18, 1, 213.18, 1, 212, 212, '2018-01-28 13:05:28', '2018-01-30 10:29:26');
INSERT INTO `return` VALUES (22, 224, 143, 24, '6955203674180', 'M3S1637D', '连帽针织棉外套', '衣服', '110', 199, 100, 199, 1, 199, 0, 199, 199, '2018-01-30 10:22:29', '2018-02-07 13:41:17');
INSERT INTO `return` VALUES (23, 261, 164, 75, '6955203648846', 'M2S1827D', '大摆羽绒服', '衣服', '110', 419, 0, 0, 1, 0, 0, 0, 0, '2018-02-06 13:46:01', '2018-02-07 17:45:44');
INSERT INTO `return` VALUES (24, 285, 182, 46, '6955203658852', 'M1H2937D', '简约中棉前开哈衣', '衣服', '59', 198, 60, 118.8, 1, 118.8, 0, 118, 118, '2018-02-12 15:11:52', '2018-02-12 15:18:54');
INSERT INTO `return` VALUES (25, 303, 193, 24, '6955203656612', 'M2Q2277C', '拼接背心裙', '衣服', '90', 179, 88, 157.52, 1, 157.52, 0, 157, 157, '2018-02-18 13:37:34', '2018-02-18 14:16:43');
INSERT INTO `return` VALUES (26, 355, 222, 80, '6955203655479', 'M6H1827D1', '秋意前开连体衣', '衣服', '80', 139, 88, 122.32, 1, 122.32, 0, 122, 122, '2018-02-28 17:46:50', '2018-02-28 18:27:08');
INSERT INTO `return` VALUES (27, 354, 222, 80, '6955203648167', 'ME42131', '菱形印小熊方巾', '用品', '25*25', 36, 88, 31.68, 1, 31.68, 0, 31, 31, '2018-02-28 17:46:50', '2018-02-28 18:27:12');
INSERT INTO `return` VALUES (28, 353, 222, 80, '6955203648495', 'ME42133', '米奇头童巾', '用品', '25*50', 56, 88, 49.28, 1, 49.28, 0, 49, 49, '2018-02-28 17:46:50', '2018-02-28 18:27:26');
INSERT INTO `return` VALUES (29, 378, 237, 80, '6955203658975', 'M7S1207C', '学院针织插肩袖外套', '衣服', '80', 149, 88, 131.12, 1, 131.12, 0, 131, 131, '2018-03-04 18:46:58', '2018-03-05 13:39:30');

-- ----------------------------
-- Table structure for sell
-- ----------------------------
DROP TABLE IF EXISTS `sell`;
CREATE TABLE `sell`  (
  `sellid` int(11) NOT NULL AUTO_INCREMENT,
  `sellsumid` int(11) NOT NULL,
  `customerid` int(11) NOT NULL DEFAULT 0,
  `barcode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goodsserial` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `goodsname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `goodstype` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `goodssize` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `unitprice` float NOT NULL,
  `discountratio` int(11) NOT NULL,
  `discountprice` float NOT NULL,
  `buyquantity` int(11) NOT NULL,
  `subtotal` float NOT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`sellid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 382 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sell
-- ----------------------------
INSERT INTO `sell` VALUES (1, 1, 8, '6955203652935', 'M3P5657D', '圣诞小鹿打底裤', '裤子', '110', 69.9, 78, 54.52, 1, 54.52, '2017-10-28 20:35:22');
INSERT INTO `sell` VALUES (2, 3, 9, '6955203663467', 'M1T3077C', '秋圃保暖套服', '床品', '80', 139, 68, 94.52, 1, 94.52, '2017-10-28 20:44:06');
INSERT INTO `sell` VALUES (3, 3, 9, '6955203656179', 'ME42264', '稳步鞋', '鞋袜', '160', 188, 68, 127.84, 1, 127.84, '2017-10-28 20:44:06');
INSERT INTO `sell` VALUES (4, 3, 9, '6955203661302', 'M4K2937D', '不倒绒百搭打底', '裤子', '80', 99, 68, 67.32, 1, 67.32, '2017-10-28 20:44:06');
INSERT INTO `sell` VALUES (5, 2, 8, '6955203654816', 'ME42223', '袜子', '鞋袜', '3~5', 12.6, 78, 9.83, 2, 19.66, '2017-10-28 21:09:26');
INSERT INTO `sell` VALUES (6, 2, 8, '6955203631572', 'MPE41907', '毛巾袜', '鞋袜', '3~5', 13.6, 78, 10.61, 2, 21.22, '2017-10-28 21:09:26');
INSERT INTO `sell` VALUES (7, 2, 8, '6955203654823', 'ME42224', '袜子', '鞋袜', '3~5', 12.6, 78, 9.83, 2, 19.66, '2017-10-28 21:09:26');
INSERT INTO `sell` VALUES (8, 4, 5, '6955203660152', 'M4S0837C', '不倒绒绣花卫衣', '衣服', '110', 156, 68, 106.08, 1, 106.08, '2017-10-28 21:13:37');
INSERT INTO `sell` VALUES (9, 4, 5, '6955203660763', 'M6K4487C', '萌城少年大裆裤', '裤子', '80', 129, 68, 87.72, 1, 87.72, '2017-10-28 21:13:37');
INSERT INTO `sell` VALUES (10, 4, 5, '6955203659576', 'M4S0707C', '印花百搭长T', '衣服', '110', 99, 68, 67.32, 1, 67.32, '2017-10-28 21:13:37');
INSERT INTO `sell` VALUES (11, 5, 10, '6955203655387', 'DH-M17001', '雅灰格薄棉抱被', '床品', '90/90', 169, 68, 114.92, 1, 114.92, '2017-10-29 09:45:24');
INSERT INTO `sell` VALUES (12, 5, 10, '6955203655011', 'M6T1797D', '秋意绑带两件套', '其它', '52', 118, 68, 80.24, 1, 80.24, '2017-10-29 09:45:24');
INSERT INTO `sell` VALUES (13, 5, 10, '6955203653468', 'ME42194', '袜子', '鞋袜', '小', 10.9, 68, 7.41, 3, 22.23, '2017-10-29 09:45:24');
INSERT INTO `sell` VALUES (14, 6, 11, '6955203654823', 'ME42224', '袜子', '鞋袜', '3~5', 12.6, 68, 8.57, 1, 8.57, '2017-10-29 10:46:25');
INSERT INTO `sell` VALUES (15, 6, 11, '6955203654823', 'ME42224', '袜子', '鞋袜', '3~5', 12.6, 68, 8.57, 1, 8.57, '2017-10-29 10:46:25');
INSERT INTO `sell` VALUES (16, 6, 11, '6955203654816', 'ME42223', '袜子', '鞋袜', '3~5', 12.6, 68, 8.57, 1, 8.57, '2017-10-29 10:46:25');
INSERT INTO `sell` VALUES (17, 7, 1, '6955203666130', 'M6S3217C', '花漾小脚牛仔裤', '裤子', '100', 139, 68, 94.52, 1, 94.52, '2017-10-29 11:01:14');
INSERT INTO `sell` VALUES (18, 7, 1, '6955203655035', 'M7S1657D', '学院两面穿羽绒服', '衣服', '110', 389, 68, 264.52, 1, 264.52, '2017-10-29 11:01:14');
INSERT INTO `sell` VALUES (19, 8, 1, '6955203615152', 'M2S0725D', '玫瑰带帽棉衣', '用品', '120', 308, 68, 209.44, 1, 209.44, '2017-10-29 11:14:35');
INSERT INTO `sell` VALUES (20, 8, 1, '6955203663467', 'M1T3077C', '秋圃保暖套服', '床品', '90', 139, 68, 94.52, 1, 94.52, '2017-10-29 11:14:35');
INSERT INTO `sell` VALUES (21, 9, 12, '6955203654823', 'ME42224', '袜子', '鞋袜', '3~5', 12.6, 68, 8.57, 1, 8.57, '2017-10-29 14:56:00');
INSERT INTO `sell` VALUES (22, 9, 12, '6955203654823', 'ME42224', '袜子', '鞋袜', '3~5', 12.6, 68, 8.57, 1, 8.57, '2017-10-29 14:56:00');
INSERT INTO `sell` VALUES (23, 10, 13, '6955203656179', 'ME42264', '稳步鞋', '鞋袜', '160', 188, 78, 146.64, 1, 146.64, '2017-10-29 15:17:21');
INSERT INTO `sell` VALUES (24, 11, 14, '6955203648846', 'M2S1827D', '大摆羽绒服', '衣服', '80', 419, 88, 368.72, 1, 368.72, '2017-10-29 15:59:54');
INSERT INTO `sell` VALUES (25, 12, 15, '6955203634573', 'M2S3066D', '玫瑰棉衣', '衣服', '80', 186, 78, 145.08, 1, 145.08, '2017-10-29 16:05:20');
INSERT INTO `sell` VALUES (26, 12, 15, '6955203663382', 'M4K4637C', '不倒绒百搭打底', '裤子', '80', 76, 78, 59.28, 1, 59.28, '2017-10-29 16:05:20');
INSERT INTO `sell` VALUES (27, 13, 12, '6955203654823', 'ME42224', '袜子', '鞋袜', '3~5', 12.6, 78, 9.83, 1, 9.83, '2017-10-29 16:22:01');
INSERT INTO `sell` VALUES (28, 14, 16, '6955203631701', 'MPE41916', '厚棉袜', '鞋袜', '3~5', 12.6, 78, 9.83, 1, 9.83, '2017-10-29 18:07:43');
INSERT INTO `sell` VALUES (29, 15, 17, '6955203661302', 'M4K2937D', '不倒绒百搭打底', '裤子', '100', 99, 78, 77.22, 1, 77.22, '2017-10-29 20:06:16');
INSERT INTO `sell` VALUES (30, 15, 17, '6955203660213', 'M3T6827C', '米乐小熊长袖套装', '套装', '110', 136, 78, 106.08, 1, 106.08, '2017-10-29 20:06:16');
INSERT INTO `sell` VALUES (31, 16, 18, '6955203650337', 'M3P3087B', '圆点手帕两件组', '用品', 'JM', 28, 78, 21.84, 1, 21.84, '2017-10-29 20:27:51');
INSERT INTO `sell` VALUES (32, 17, 19, '6955203654793', 'ME42221', '袜子', '鞋袜', '1~3', 11.6, 78, 9.05, 1, 9.05, '2017-10-30 10:01:38');
INSERT INTO `sell` VALUES (33, 18, 20, '6955203630759', 'M3T0636C', '小熊肩开套装', '套装', '90', 126, 88, 110.88, 1, 110.88, '2017-10-30 14:30:19');
INSERT INTO `sell` VALUES (34, 19, 20, '6955203654816', 'ME42223', '袜子', '鞋袜', '3~5', 12.6, 88, 11.09, 1, 11.09, '2017-10-30 14:43:18');
INSERT INTO `sell` VALUES (35, 20, 21, '6955203654755', 'ME42217', '袜子', '鞋袜', '1~3', 11.6, 88, 10.21, 1, 10.21, '2017-10-30 18:49:53');
INSERT INTO `sell` VALUES (36, 20, 21, '6955203654755', 'ME42217', '袜子', '鞋袜', '1~3', 11.6, 88, 10.21, 1, 10.21, '2017-10-30 18:49:53');
INSERT INTO `sell` VALUES (37, 21, 22, '6955203663429', 'M1K3067C', '秋圃打底裤', '裤子', '80', 89, 68, 60.52, 1, 60.52, '2017-10-31 19:20:55');
INSERT INTO `sell` VALUES (38, 22, 23, '6955203656452', 'M6K6057C', '牛仔裤', '裤子', '100', 158, 68, 107.44, 1, 107.44, '2017-11-01 10:31:16');
INSERT INTO `sell` VALUES (39, 22, 23, '6955203658388', 'M1T1637D', '冬叶棉花绑带套服', '套装', '52', 179, 68, 121.72, 1, 121.72, '2017-11-01 10:31:16');
INSERT INTO `sell` VALUES (40, 22, 23, '6955203655943', 'M1H2947D', '简约中棉偏开哈衣', '衣服', '66', 139, 68, 94.52, 1, 94.52, '2017-11-01 10:31:16');
INSERT INTO `sell` VALUES (41, 23, 23, '6955203654755', 'ME42217', '袜子', '鞋袜', '1~3', 11.6, 68, 7.89, 1, 7.89, '2017-11-01 10:31:57');
INSERT INTO `sell` VALUES (42, 24, 24, '6955203654823', 'ME42224', '袜子', '鞋袜', '3~5', 12.6, 68, 8.57, 1, 8.57, '2017-11-01 18:20:34');
INSERT INTO `sell` VALUES (43, 24, 24, '6955203654816', 'ME42223', '袜子', '鞋袜', '3~5', 12.6, 68, 8.57, 1, 8.57, '2017-11-01 18:20:34');
INSERT INTO `sell` VALUES (44, 25, 25, '6955203661302', 'M4K2937D', '不倒绒百搭打底', '裤子', '90', 99, 68, 67.32, 1, 67.32, '2017-11-02 18:43:55');
INSERT INTO `sell` VALUES (45, 25, 25, '6955203666123', 'M2K2627D', '蕾丝脚口牛仔裤', '裤子', '80', 149, 68, 101.32, 1, 101.32, '2017-11-02 18:43:55');
INSERT INTO `sell` VALUES (46, 25, 25, '6955203666130', 'M6S3217C', '花漾小脚牛仔裤', '裤子', '90', 139, 68, 94.52, 1, 94.52, '2017-11-02 18:43:55');
INSERT INTO `sell` VALUES (47, 26, 26, '6955203655592', 'M6T1867D', '秋意肩开套装', '套装', '100', 129, 88, 113.52, 1, 113.52, '2017-11-04 14:24:40');
INSERT INTO `sell` VALUES (48, 27, 27, '6955203615084', 'M1S0085C', '缤纷秋色套头毛衣', '衣服', '90', 136, 68, 92.48, 1, 92.48, '2017-11-04 21:28:01');
INSERT INTO `sell` VALUES (49, 27, 27, '6955203615084', 'M1S0085C', '缤纷秋色套头毛衣', '衣服', '100', 136, 68, 92.48, 1, 92.48, '2017-11-04 21:28:01');
INSERT INTO `sell` VALUES (50, 27, 27, '6955203663702', 'M1S0707D', '熊格薄棉马甲', '衣服', '90', 99, 68, 67.32, 1, 67.32, '2017-11-04 21:28:01');

-- ----------------------------
-- Table structure for sellsum
-- ----------------------------
DROP TABLE IF EXISTS `sellsum`;
CREATE TABLE `sellsum`  (
  `sellsumid` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `paymethod` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `totalprice` int(11) NOT NULL,
  `creditratio` float NOT NULL,
  `creditsum` int(11) NOT NULL,
  `tickettype` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ticketsum` float NOT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`sellsumid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 239 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sellsum
-- ----------------------------
INSERT INTO `sellsum` VALUES (3, 9, 2, '现金', 289, 2, 578, '无', 0, '2017-10-28 20:44:06');
INSERT INTO `sellsum` VALUES (4, 5, 2, '现金', 260, 2, 520, '无', 1, '2017-10-28 20:53:57');
INSERT INTO `sellsum` VALUES (2, 8, 2, '支付宝', 60, 2, 120, '无', 0, '2017-10-28 20:58:45');
INSERT INTO `sellsum` VALUES (1, 8, 2, '现金', 54, 2, 109, '无', 0, '2017-10-28 20:35:22');
INSERT INTO `sellsum` VALUES (5, 10, 4, '现金', 195, 2, 390, '无', 22, '2017-10-29 09:45:24');
INSERT INTO `sellsum` VALUES (6, 11, 4, '现金', 0, 2, 1, '无', 25, '2017-10-29 10:46:25');
INSERT INTO `sellsum` VALUES (7, 1, 4, '现金', 359, 2, 718, '无', 0, '2017-10-29 11:01:14');
INSERT INTO `sellsum` VALUES (8, 1, 4, '现金', 303, 0, 0, '无', 0, '2017-10-29 11:14:35');
INSERT INTO `sellsum` VALUES (9, 12, 4, '现金', 0, 0, 0, '无', 17, '2017-10-29 14:56:00');
INSERT INTO `sellsum` VALUES (10, 13, 4, '微信', 46, 2, 93, '抽红包100元代金券', 100, '2017-10-29 15:17:21');
INSERT INTO `sellsum` VALUES (11, 14, 4, '现金', 368, 2, 737, '无', 0, '2017-10-29 15:59:54');
INSERT INTO `sellsum` VALUES (12, 15, 4, '现金', 204, 2, 408, '无', 0, '2017-10-29 16:05:19');
INSERT INTO `sellsum` VALUES (13, 12, 4, '现金', 0, 0, 0, '无', 9, '2017-10-29 16:22:01');
INSERT INTO `sellsum` VALUES (14, 16, 4, '现金', 0, 0, 0, '无', 9, '2017-10-29 18:07:43');
INSERT INTO `sellsum` VALUES (15, 17, 4, '刷卡', 183, 2, 366, '无', 0, '2017-10-29 20:06:16');
INSERT INTO `sellsum` VALUES (16, 18, 4, '微信', 21, 2, 43, '无', 0, '2017-10-29 20:27:51');
INSERT INTO `sellsum` VALUES (17, 19, 4, '现金', 0, 0, 0, '无', 9, '2017-10-30 10:01:38');
INSERT INTO `sellsum` VALUES (18, 20, 4, '刷卡', 110, 2, 221, '无', 0, '2017-10-30 14:30:19');
INSERT INTO `sellsum` VALUES (19, 20, 4, '现金', 0, 0, 0, '无', 11, '2017-10-30 14:43:18');
INSERT INTO `sellsum` VALUES (20, 21, 4, '现金', 0, 0, 0, '无', 20, '2017-10-30 18:49:53');
INSERT INTO `sellsum` VALUES (21, 22, 4, '现金', 60, 2, 121, '无', 0, '2017-10-31 19:20:55');
INSERT INTO `sellsum` VALUES (22, 23, 4, '现金', 323, 2, 647, '无', 0, '2017-11-01 10:31:16');
INSERT INTO `sellsum` VALUES (23, 23, 4, '现金', 0, 2, 1, '无', 7, '2017-11-01 10:31:57');
INSERT INTO `sellsum` VALUES (24, 24, 4, '现金', 0, 2, 0, '无', 17, '2017-11-01 18:20:34');
INSERT INTO `sellsum` VALUES (25, 25, 4, '现金', 269, 2, 538, '无', 0, '2017-11-02 18:43:55');
INSERT INTO `sellsum` VALUES (26, 26, 4, '现金', 113, 2, 227, '无', 0, '2017-11-04 14:24:40');
INSERT INTO `sellsum` VALUES (27, 27, 4, '刷卡', 319, 2, 639, '无', 0, '2017-11-04 21:28:01');
INSERT INTO `sellsum` VALUES (28, 28, 4, '现金', 300, 2, 600, '无', 3, '2017-11-10 22:54:53');
INSERT INTO `sellsum` VALUES (29, 29, 4, '现金', 125, 2, 251, '无', 9, '2017-11-10 22:56:25');
INSERT INTO `sellsum` VALUES (30, 24, 4, '现金', 87, 2, 175, '无', 0, '2017-11-10 23:01:32');
INSERT INTO `sellsum` VALUES (31, 24, 4, '微信', 46, 2, 92, '无', 0, '2017-11-10 23:02:19');
INSERT INTO `sellsum` VALUES (32, 30, 4, '刷卡', 308, 2, 617, '无', 0, '2017-11-11 12:52:00');
INSERT INTO `sellsum` VALUES (33, 24, 4, '现金', 0, 2, 0, '无', 0, '2017-11-11 16:53:15');
INSERT INTO `sellsum` VALUES (34, 8, 4, '支付宝', 128, 2, 256, '无', 0, '2017-11-11 20:42:56');
INSERT INTO `sellsum` VALUES (35, 27, 4, '微信', 558, 2, 1117, '无', 0, '2017-11-12 20:51:02');
INSERT INTO `sellsum` VALUES (36, 24, 4, '现金', 21, 2, 43, '无', 0, '2017-11-12 22:16:49');
INSERT INTO `sellsum` VALUES (37, 24, 4, '现金', 0, 2, 0, '无', 0, '2017-11-12 22:18:23');
INSERT INTO `sellsum` VALUES (38, 24, 4, '现金', 22, 2, 44, '无', 0, '2017-11-12 22:20:14');
INSERT INTO `sellsum` VALUES (39, 24, 4, '现金', 147, 2, 294, '无', 0, '2017-11-12 22:21:20');
INSERT INTO `sellsum` VALUES (40, 24, 4, '现金', 179, 2, 358, '无', 0, '2017-11-12 22:25:05');
INSERT INTO `sellsum` VALUES (41, 24, 4, '现金', 148, 2, 296, '无', 0, '2017-11-12 22:27:04');
INSERT INTO `sellsum` VALUES (42, 24, 4, '现金', 0, 2, 0, '无', 0, '2017-11-12 22:32:19');
INSERT INTO `sellsum` VALUES (43, 24, 4, '微信', 100, 2, 201, '无', 0, '2017-11-12 22:37:05');
INSERT INTO `sellsum` VALUES (44, 2, 1, '现金', 0, 2, -1, '无', 0, '2017-11-14 12:25:45');
INSERT INTO `sellsum` VALUES (45, 31, 4, '现金', 116, 2, 232, '无', 0, '2017-11-18 15:46:14');
INSERT INTO `sellsum` VALUES (46, 32, 4, '微信', 101, 1, 101, '无', 0, '2017-11-18 17:52:46');
INSERT INTO `sellsum` VALUES (47, 33, 4, '刷卡', 33, 1, 33, '无', 0, '2017-11-18 20:50:31');
INSERT INTO `sellsum` VALUES (48, 24, 4, '现金', 18, 1, 18, '无', 0, '2017-11-18 21:09:36');
INSERT INTO `sellsum` VALUES (49, 34, 4, '现金', 113, 1, 113, '无', 0, '2017-11-20 11:58:56');
INSERT INTO `sellsum` VALUES (50, 20, 4, '微信', 239, 1, 239, '无', 0, '2017-11-26 13:53:18');
INSERT INTO `sellsum` VALUES (51, 35, 4, '刷卡', 230, 1, 230, '无', 0, '2017-11-26 17:42:31');
INSERT INTO `sellsum` VALUES (52, 36, 4, '现金', 75, 1, 75, '无', 1, '2017-11-26 20:01:51');
INSERT INTO `sellsum` VALUES (53, 24, 4, '现金', 44, 1, 44, '无', 0, '2017-11-27 11:14:14');
INSERT INTO `sellsum` VALUES (54, 35, 4, '微信', 79, 1, 79, '无', 0, '2017-11-28 16:56:09');
INSERT INTO `sellsum` VALUES (55, 33, 4, '刷卡', 103, 1, 103, '无', 0, '2017-12-02 12:29:18');
INSERT INTO `sellsum` VALUES (56, 37, 4, '现金', 125, 1, 125, '无', 0, '2017-12-04 11:00:42');
INSERT INTO `sellsum` VALUES (57, 38, 4, '现金', 0, 1, 0, '无', 223, '2017-12-04 11:29:15');
INSERT INTO `sellsum` VALUES (58, 39, 4, '现金', 102, 1, 102, '无', 0, '2017-12-04 15:50:36');
INSERT INTO `sellsum` VALUES (59, 40, 4, '现金', 79, 1, 79, '无', 0, '2017-12-05 10:52:11');
INSERT INTO `sellsum` VALUES (60, 24, 4, '现金', 0, 1, 0, '无', 0, '2017-12-05 11:53:27');
INSERT INTO `sellsum` VALUES (61, 24, 4, '现金', 0, 1, 0, '无', 396, '2017-12-05 11:56:44');
INSERT INTO `sellsum` VALUES (62, 1, 4, '现金', 0, 1, 0, '无', 151, '2017-12-05 12:47:46');
INSERT INTO `sellsum` VALUES (63, 41, 4, '现金', 15, 1, 15, '无', 0, '2017-12-05 17:57:36');
INSERT INTO `sellsum` VALUES (64, 24, 4, '微信', 84, 1, 84, '无', 0, '2017-12-06 18:39:21');
INSERT INTO `sellsum` VALUES (65, 42, 4, '现金', 311, 1, 311, '无', 0, '2017-12-08 15:07:00');
INSERT INTO `sellsum` VALUES (66, 43, 4, '现金', 94, 1, 94, '无', 0, '2017-12-08 15:36:19');
INSERT INTO `sellsum` VALUES (67, 43, 4, '现金', 341, 1, 341, '无', 0, '2017-12-08 16:05:39');
INSERT INTO `sellsum` VALUES (68, 24, 4, '现金', 108, 1, 108, '无', 0, '2017-12-09 16:47:37');
INSERT INTO `sellsum` VALUES (69, 18, 4, '现金', 99, 1, 99, '无', 0, '2017-12-11 20:10:23');
INSERT INTO `sellsum` VALUES (70, 44, 4, '现金', 97, 1, 97, '无', 1, '2017-12-13 10:58:16');
INSERT INTO `sellsum` VALUES (71, 42, 4, '现金', 279, 1, 279, '无', 0, '2017-12-13 14:24:16');
INSERT INTO `sellsum` VALUES (72, 45, 4, '现金', 127, 1, 127, '无', 0, '2017-12-14 17:44:50');
INSERT INTO `sellsum` VALUES (73, 46, 4, '现金', 18, 1, 18, '无', 0, '2017-12-15 15:54:24');
INSERT INTO `sellsum` VALUES (74, 47, 4, '现金', 311, 1, 311, '无', 0, '2017-12-16 14:56:59');
INSERT INTO `sellsum` VALUES (75, 48, 4, '微信', 214, 1, 214, '无', 0, '2017-12-16 16:43:49');
INSERT INTO `sellsum` VALUES (76, 24, 4, '现金', 47, 1, 47, '无', 0, '2017-12-17 10:57:08');
INSERT INTO `sellsum` VALUES (77, 24, 4, '微信', 102, 1, 102, '无', 0, '2017-12-18 15:18:04');
INSERT INTO `sellsum` VALUES (78, 49, 4, '现金', 400, 1, 400, '无', 6, '2017-12-18 20:37:21');
INSERT INTO `sellsum` VALUES (79, 24, 4, '现金', 20, 1, 20, '无', 0, '2017-12-18 20:50:06');
INSERT INTO `sellsum` VALUES (80, 24, 4, '微信', 20, 1, 20, '无', 0, '2017-12-18 21:00:25');
INSERT INTO `sellsum` VALUES (81, 43, 4, '现金', 143, 1, 143, '无', 0, '2017-12-19 15:00:22');
INSERT INTO `sellsum` VALUES (82, 50, 4, '支付宝', 15, 1, 15, '无', 0, '2017-12-20 16:06:50');
INSERT INTO `sellsum` VALUES (83, 51, 4, '微信', 430, 1, 430, '无', 0, '2017-12-21 19:29:49');
INSERT INTO `sellsum` VALUES (84, 52, 4, '微信', 221, 1, 221, '无', 0, '2017-12-23 14:59:32');
INSERT INTO `sellsum` VALUES (85, 52, 4, '现金', 0, 1, 0, '无', 0, '2017-12-23 15:01:48');
INSERT INTO `sellsum` VALUES (86, 49, 4, '现金', 200, 1, 200, '无', 38, '2017-12-23 16:11:56');
INSERT INTO `sellsum` VALUES (87, 53, 4, '现金', 108, 1, 108, '无', 3, '2017-12-24 16:33:58');
INSERT INTO `sellsum` VALUES (88, 54, 4, '现金', 147, 1, 147, '无', 0, '2017-12-25 16:08:38');
INSERT INTO `sellsum` VALUES (89, 55, 4, '微信', 21, 1, 21, '无', 0, '2017-12-25 17:16:50');
INSERT INTO `sellsum` VALUES (90, 56, 4, '微信', 0, 1, 0, '无', 0, '2017-12-26 17:21:02');
INSERT INTO `sellsum` VALUES (91, 27, 4, '现金', 209, 1, 209, '无', 0, '2017-12-26 19:32:24');
INSERT INTO `sellsum` VALUES (92, 24, 4, '微信', 202, 1, 202, '无', 0, '2017-12-27 14:28:55');
INSERT INTO `sellsum` VALUES (93, 24, 4, '现金', 257, 1, 257, '无', 1, '2017-12-27 18:19:28');
INSERT INTO `sellsum` VALUES (94, 57, 4, '现金', 92, 1, 92, '无', 0, '2017-12-28 16:19:59');
INSERT INTO `sellsum` VALUES (95, 58, 4, '现金', 0, 1, 0, '无', 0, '2017-12-29 15:44:13');
INSERT INTO `sellsum` VALUES (96, 58, 4, '现金', 104, 1, 104, '无', 4, '2017-12-29 15:56:26');
INSERT INTO `sellsum` VALUES (97, 58, 4, '现金', 0, 1, 0, '无', 17, '2017-12-29 16:22:55');
INSERT INTO `sellsum` VALUES (98, 59, 4, '现金', 193, 1, 193, '无', 0, '2017-12-30 17:50:01');
INSERT INTO `sellsum` VALUES (99, 60, 4, '现金', 333, 1, 333, '无', 0, '2017-12-31 17:45:11');
INSERT INTO `sellsum` VALUES (100, 53, 4, '现金', 69, 1, 69, '无', 0, '2018-01-01 15:30:49');
INSERT INTO `sellsum` VALUES (101, 61, 4, '现金', 115, 1, 115, '无', 0, '2018-01-01 17:39:04');
INSERT INTO `sellsum` VALUES (102, 62, 4, '现金', 181, 1, 181, '无', 0, '2018-01-03 11:16:05');
INSERT INTO `sellsum` VALUES (103, 1, 4, '现金', 0, 1, 0, '无', 98, '2018-01-05 20:39:07');
INSERT INTO `sellsum` VALUES (104, 63, 4, '现金', 22, 1, 22, '无', 0, '2018-01-06 15:33:51');
INSERT INTO `sellsum` VALUES (105, 64, 4, '微信', 130, 1, 130, '无', 0, '2018-01-07 13:27:14');
INSERT INTO `sellsum` VALUES (106, 24, 4, '现金', 51, 1, 51, '无', 0, '2018-01-07 15:32:19');
INSERT INTO `sellsum` VALUES (107, 65, 4, '刷卡', 550, 1, 550, '无', 0, '2018-01-07 18:13:19');
INSERT INTO `sellsum` VALUES (108, 24, 4, '现金', 40, 1, 40, '无', 0, '2018-01-13 14:40:30');
INSERT INTO `sellsum` VALUES (109, 46, 4, '现金', 0, 1, 1, '无', 1, '2018-01-13 16:02:04');
INSERT INTO `sellsum` VALUES (110, 66, 4, '现金', 112, 1, 112, '无', 1, '2018-01-13 20:47:55');
INSERT INTO `sellsum` VALUES (111, 24, 4, '微信', 190, 1, 190, '无', 0, '2018-01-13 20:52:38');
INSERT INTO `sellsum` VALUES (112, 46, 4, '现金', 180, 1, 180, '无', 2, '2018-01-13 21:12:14');
INSERT INTO `sellsum` VALUES (113, 67, 4, '现金', 17, 1, 17, '无', 0, '2018-01-14 16:53:16');
INSERT INTO `sellsum` VALUES (114, 27, 4, '微信', 175, 1, 175, '无', 0, '2018-01-14 17:11:08');
INSERT INTO `sellsum` VALUES (115, 68, 4, '现金', 381, 1, 381, '无', 0, '2018-01-16 20:25:23');
INSERT INTO `sellsum` VALUES (116, 24, 4, '支付宝', 10, 1, 10, '无', 0, '2018-01-24 14:08:26');
INSERT INTO `sellsum` VALUES (117, 42, 4, '现金', 0, 1, 0, '无', 376, '2018-01-24 18:31:42');
INSERT INTO `sellsum` VALUES (118, 24, 4, '微信', 69, 1, 69, '无', 0, '2018-01-24 18:34:27');
INSERT INTO `sellsum` VALUES (119, 24, 4, '支付宝', 122, 1, 122, '无', 36, '2018-01-25 10:25:19');
INSERT INTO `sellsum` VALUES (120, 24, 4, '支付宝', 99, 1, 99, '无', 29, '2018-01-25 15:11:50');
INSERT INTO `sellsum` VALUES (121, 69, 4, '现金', 15, 1, 15, '无', 0, '2018-01-25 17:59:30');
INSERT INTO `sellsum` VALUES (122, 70, 4, '现金', 282, 1, 282, '无', 0, '2018-01-25 19:24:37');
INSERT INTO `sellsum` VALUES (123, 71, 4, '微信', 300, 1, 300, '无', 125, '2018-01-26 14:08:36');
INSERT INTO `sellsum` VALUES (124, 72, 4, '刷卡', 439, 1, 439, '无', 0, '2018-01-26 19:06:12');
INSERT INTO `sellsum` VALUES (125, 24, 4, '现金', 53, 1, 53, '无', 0, '2018-01-27 10:59:53');
INSERT INTO `sellsum` VALUES (126, 24, 4, '现金', 189, 1, 189, '无', 0, '2018-01-27 16:40:32');
INSERT INTO `sellsum` VALUES (127, 24, 4, '现金', 115, 1, 115, '无', 0, '2018-01-28 10:52:20');
INSERT INTO `sellsum` VALUES (128, 24, 4, '微信', 164, 1, 164, '无', 0, '2018-01-28 12:33:01');
INSERT INTO `sellsum` VALUES (129, 24, 4, '现金', 0, 1, 1, '无', 1, '2018-01-28 12:52:40');
INSERT INTO `sellsum` VALUES (130, 24, 4, '现金', 150, 1, 150, '无', 1, '2018-01-28 12:55:30');
INSERT INTO `sellsum` VALUES (131, 24, 4, '现金', 0, 1, 0, '无', 0, '2018-01-28 13:05:27');
INSERT INTO `sellsum` VALUES (132, 24, 4, '微信', 0, 1, 0, '无', 0, '2018-01-28 13:14:43');
INSERT INTO `sellsum` VALUES (133, 24, 4, '微信', 126, 1, 126, '无', 0, '2018-01-28 13:17:11');
INSERT INTO `sellsum` VALUES (134, 24, 4, '微信', 87, 1, 87, '无', 0, '2018-01-28 13:33:51');
INSERT INTO `sellsum` VALUES (135, 24, 4, '微信', 0, 1, 1, '无', 1, '2018-01-28 13:43:09');
INSERT INTO `sellsum` VALUES (136, 24, 4, '现金', 0, 1, 1, '无', 1, '2018-01-28 13:52:06');
INSERT INTO `sellsum` VALUES (137, 24, 4, '微信', 264, 1, 264, '无', 0, '2018-01-28 14:20:25');
INSERT INTO `sellsum` VALUES (138, 24, 4, '微信', 108, 1, 108, '无', 0, '2018-01-28 19:31:48');
INSERT INTO `sellsum` VALUES (139, 24, 4, '微信', 9, 1, 9, '无', 0, '2018-01-28 19:33:03');
INSERT INTO `sellsum` VALUES (140, 24, 4, '刷卡', 203, 1, 203, '无', 0, '2018-01-29 15:01:23');
INSERT INTO `sellsum` VALUES (141, 24, 4, '现金', 0, 1, 0, '无', 0, '2018-01-29 17:15:14');
INSERT INTO `sellsum` VALUES (142, 24, 4, '现金', 59, 1, 59, '无', 0, '2018-01-30 10:13:23');
INSERT INTO `sellsum` VALUES (143, 24, 4, '现金', 0, 1, 0, '无', 0, '2018-01-30 10:22:29');
INSERT INTO `sellsum` VALUES (144, 24, 4, '现金', 169, 1, 169, '无', 0, '2018-01-30 10:26:14');
INSERT INTO `sellsum` VALUES (145, 24, 4, '现金', 429, 1, 429, '无', 0, '2018-01-30 10:30:36');
INSERT INTO `sellsum` VALUES (146, 24, 4, '现金', 172, 1, 172, '无', 0, '2018-01-30 12:13:10');
INSERT INTO `sellsum` VALUES (147, 73, 4, '微信', 159, 1, 159, '无', 0, '2018-01-30 16:17:51');
INSERT INTO `sellsum` VALUES (148, 53, 4, '刷卡', 254, 1, 254, '无', 0, '2018-01-30 19:53:58');
INSERT INTO `sellsum` VALUES (149, 53, 4, '刷卡', 121, 1, 121, '无', 0, '2018-01-30 20:02:09');
INSERT INTO `sellsum` VALUES (150, 24, 4, '支付宝', 110, 1, 110, '无', 1, '2018-02-03 13:40:05');
INSERT INTO `sellsum` VALUES (151, 24, 4, '现金', 101, 1, 101, '无', 0, '2018-02-03 18:35:15');
INSERT INTO `sellsum` VALUES (152, 24, 4, '微信', 338, 1, 338, '无', 0, '2018-02-03 18:36:30');
INSERT INTO `sellsum` VALUES (153, 24, 4, '支付宝', 158, 1, 158, '无', 0, '2018-02-04 10:59:43');
INSERT INTO `sellsum` VALUES (154, 24, 4, '刷卡', 189, 1, 189, '无', 0, '2018-02-04 11:28:57');
INSERT INTO `sellsum` VALUES (155, 24, 4, '微信', 119, 1, 119, '无', 0, '2018-02-04 15:47:02');
INSERT INTO `sellsum` VALUES (156, 24, 4, '现金', 85, 1, 85, '无', 0, '2018-02-04 16:08:30');
INSERT INTO `sellsum` VALUES (157, 74, 4, '现金', 429, 1, 429, '无', 0, '2018-02-04 17:05:28');
INSERT INTO `sellsum` VALUES (158, 24, 4, '刷卡', 429, 1, 429, '无', 0, '2018-02-04 17:38:25');
INSERT INTO `sellsum` VALUES (159, 24, 4, '微信', 146, 1, 146, '无', 0, '2018-02-05 13:34:58');
INSERT INTO `sellsum` VALUES (160, 52, 4, '微信', 362, 1, 362, '无', 0, '2018-02-05 15:12:58');
INSERT INTO `sellsum` VALUES (161, 24, 4, '刷卡', 146, 1, 146, '无', 0, '2018-02-05 17:52:17');
INSERT INTO `sellsum` VALUES (162, 24, 4, '微信', 121, 1, 121, '无', 0, '2018-02-05 18:17:43');
INSERT INTO `sellsum` VALUES (163, 24, 4, '微信', 127, 1, 127, '无', 0, '2018-02-05 20:04:24');
INSERT INTO `sellsum` VALUES (164, 75, 4, '微信', 429, 1, 429, '无', 0, '2018-02-06 13:46:01');
INSERT INTO `sellsum` VALUES (165, 24, 4, '支付宝', 15, 1, 15, '无', 0, '2018-02-06 18:59:36');
INSERT INTO `sellsum` VALUES (166, 24, 4, '支付宝', 234, 1, 234, '无', 0, '2018-02-06 20:00:37');
INSERT INTO `sellsum` VALUES (167, 24, 4, '微信', 104, 1, 104, '无', 0, '2018-02-06 20:21:24');
INSERT INTO `sellsum` VALUES (168, 24, 4, '现金', 269, 1, 269, '无', 0, '2018-02-07 13:42:15');
INSERT INTO `sellsum` VALUES (169, 24, 4, '现金', 82, 1, 82, '无', 0, '2018-02-07 16:27:49');
INSERT INTO `sellsum` VALUES (170, 24, 4, '微信', 0, 1, 0, '无', 0, '2018-02-07 17:46:18');
INSERT INTO `sellsum` VALUES (171, 24, 4, '刷卡', 361, 1, 361, '无', 0, '2018-02-08 14:43:36');
INSERT INTO `sellsum` VALUES (172, 24, 4, '现金', 122, 1, 122, '无', 0, '2018-02-08 17:18:16');
INSERT INTO `sellsum` VALUES (173, 24, 4, '现金', 126, 1, 126, '无', 0, '2018-02-08 17:22:36');
INSERT INTO `sellsum` VALUES (174, 24, 4, '微信', 86, 1, 86, '无', 0, '2018-02-08 17:53:28');
INSERT INTO `sellsum` VALUES (175, 24, 4, '现金', 130, 1, 130, '无', 0, '2018-02-08 17:59:47');
INSERT INTO `sellsum` VALUES (176, 24, 4, '支付宝', 87, 1, 87, '无', 0, '2018-02-09 13:44:57');
INSERT INTO `sellsum` VALUES (177, 24, 4, '微信', 85, 1, 85, '无', 0, '2018-02-10 10:23:55');
INSERT INTO `sellsum` VALUES (178, 24, 4, '微信', 148, 1, 148, '无', 0, '2018-02-10 13:38:46');
INSERT INTO `sellsum` VALUES (179, 24, 4, '支付宝', 130, 1, 130, '无', 0, '2018-02-10 18:12:39');
INSERT INTO `sellsum` VALUES (180, 24, 4, '现金', 230, 1, 230, '无', 0, '2018-02-11 14:41:19');
INSERT INTO `sellsum` VALUES (181, 24, 4, '微信', 51, 1, 51, '无', 0, '2018-02-11 17:47:05');
INSERT INTO `sellsum` VALUES (182, 46, 4, '现金', 0, 1, 0, '无', 0, '2018-02-12 15:11:52');
INSERT INTO `sellsum` VALUES (183, 46, 4, '现金', 118, 1, 118, '无', 0, '2018-02-12 15:22:18');
INSERT INTO `sellsum` VALUES (184, 24, 4, '支付宝', 56, 1, 56, '无', 0, '2018-02-12 15:52:17');
INSERT INTO `sellsum` VALUES (185, 24, 4, '微信', 239, 1, 239, '无', 3, '2018-02-12 20:45:45');
INSERT INTO `sellsum` VALUES (186, 24, 4, '微信', 193, 1, 193, '无', 0, '2018-02-13 11:08:22');
INSERT INTO `sellsum` VALUES (187, 24, 4, '微信', 67, 1, 67, '无', 0, '2018-02-13 17:02:22');
INSERT INTO `sellsum` VALUES (188, 24, 4, '现金', 137, 1, 137, '无', 0, '2018-02-14 15:01:03');
INSERT INTO `sellsum` VALUES (189, 24, 4, '现金', 108, 1, 108, '无', 0, '2018-02-14 17:38:11');
INSERT INTO `sellsum` VALUES (190, 24, 4, '现金', 174, 1, 174, '无', 0, '2018-02-14 17:39:29');
INSERT INTO `sellsum` VALUES (191, 24, 4, '现金', 135, 1, 135, '无', 0, '2018-02-14 17:42:03');
INSERT INTO `sellsum` VALUES (192, 24, 4, '现金', 489, 1, 489, '无', 0, '2018-02-14 18:46:38');
INSERT INTO `sellsum` VALUES (193, 24, 4, '支付宝', 198, 1, 198, '无', 0, '2018-02-18 13:37:34');
INSERT INTO `sellsum` VALUES (194, 24, 4, '现金', 264, 1, 264, '无', 0, '2018-02-18 14:07:01');
INSERT INTO `sellsum` VALUES (195, 24, 4, '支付宝', 157, 1, 157, '无', 0, '2018-02-18 14:18:42');
INSERT INTO `sellsum` VALUES (196, 24, 4, '现金', 49, 1, 49, '无', 0, '2018-02-18 14:54:00');
INSERT INTO `sellsum` VALUES (197, 24, 4, '现金', 20, 1, 20, '无', 0, '2018-02-18 14:56:02');
INSERT INTO `sellsum` VALUES (198, 24, 4, '支付宝', 254, 1, 254, '无', 0, '2018-02-18 15:22:00');
INSERT INTO `sellsum` VALUES (199, 76, 4, '现金', 110, 1, 110, '无', 11, '2018-02-18 16:07:53');
INSERT INTO `sellsum` VALUES (200, 24, 4, '支付宝', 320, 1, 320, '无', 3, '2018-02-18 18:34:11');
INSERT INTO `sellsum` VALUES (201, 24, 4, '现金', 139, 1, 139, '无', 0, '2018-02-18 18:41:21');
INSERT INTO `sellsum` VALUES (202, 24, 4, '现金', 184, 1, 184, '无', 0, '2018-02-19 14:54:27');
INSERT INTO `sellsum` VALUES (203, 24, 4, '现金', 90, 1, 90, '无', 3, '2018-02-20 15:16:02');
INSERT INTO `sellsum` VALUES (204, 24, 4, '微信', 94, 1, 94, '无', 0, '2018-02-20 16:44:21');
INSERT INTO `sellsum` VALUES (205, 77, 4, '支付宝', 408, 1, 408, '无', 0, '2018-02-21 17:37:27');
INSERT INTO `sellsum` VALUES (206, 78, 4, '现金', 75, 1, 75, '无', 0, '2018-02-21 17:56:32');
INSERT INTO `sellsum` VALUES (207, 24, 4, '现金', 11, 1, 11, '无', 0, '2018-02-21 19:18:00');
INSERT INTO `sellsum` VALUES (208, 24, 4, '现金', 174, 1, 174, '无', 0, '2018-02-22 18:47:32');
INSERT INTO `sellsum` VALUES (209, 24, 4, '现金', 25, 1, 25, '无', 0, '2018-02-22 19:19:25');
INSERT INTO `sellsum` VALUES (210, 79, 4, '现金', 575, 1, 575, '无', 0, '2018-02-23 11:50:12');
INSERT INTO `sellsum` VALUES (211, 24, 4, '支付宝', 101, 1, 101, '无', 0, '2018-02-23 14:32:30');
INSERT INTO `sellsum` VALUES (212, 24, 4, '微信', 350, 1, 350, '无', 7, '2018-02-23 15:17:00');
INSERT INTO `sellsum` VALUES (213, 24, 4, '现金', 0, 1, 0, '无', 384, '2018-02-23 16:53:54');
INSERT INTO `sellsum` VALUES (214, 24, 4, '现金', 48, 1, 48, '无', 0, '2018-02-24 16:47:57');
INSERT INTO `sellsum` VALUES (215, 55, 4, '微信', 174, 1, 174, '无', 0, '2018-02-25 16:46:41');
INSERT INTO `sellsum` VALUES (216, 80, 4, '现金', 22, 1, 22, '无', 0, '2018-02-25 17:06:24');
INSERT INTO `sellsum` VALUES (217, 80, 4, '现金', 104, 1, 104, '无', 0, '2018-02-25 18:25:51');
INSERT INTO `sellsum` VALUES (218, 43, 4, '微信', 198, 1, 198, '无', 0, '2018-02-25 19:46:20');
INSERT INTO `sellsum` VALUES (219, 80, 4, '现金', 171, 1, 171, '无', 0, '2018-02-25 20:35:26');
INSERT INTO `sellsum` VALUES (220, 80, 4, '现金', 23, 1, 23, '无', 0, '2018-02-26 12:43:22');
INSERT INTO `sellsum` VALUES (221, 80, 4, '现金', 414, 1, 414, '无', 4, '2018-02-27 13:55:02');
INSERT INTO `sellsum` VALUES (222, 80, 4, '微信', 1, 1, 1, '无', 0, '2018-02-28 17:46:50');
INSERT INTO `sellsum` VALUES (223, 81, 4, '微信', 203, 1, 203, '无', 0, '2018-02-28 18:29:17');
INSERT INTO `sellsum` VALUES (224, 80, 4, '现金', 104, 1, 104, '无', 0, '2018-02-28 19:41:46');
INSERT INTO `sellsum` VALUES (225, 63, 4, '微信', 405, 1, 405, '无', 0, '2018-02-28 20:37:30');
INSERT INTO `sellsum` VALUES (226, 80, 4, '现金', 50, 1, 50, '无', 1, '2018-03-01 10:23:04');
INSERT INTO `sellsum` VALUES (227, 80, 4, '现金', 218, 1, 218, '无', 0, '2018-03-01 14:53:25');
INSERT INTO `sellsum` VALUES (228, 80, 4, '现金', 131, 1, 131, '无', 0, '2018-03-02 11:52:22');
INSERT INTO `sellsum` VALUES (229, 80, 4, '刷卡', 33, 1, 33, '无', 0, '2018-03-02 15:15:37');
INSERT INTO `sellsum` VALUES (230, 80, 4, '现金', 17, 1, 17, '无', 0, '2018-03-02 15:47:38');
INSERT INTO `sellsum` VALUES (231, 80, 4, '现金', 14, 1, 14, '无', 0, '2018-03-02 19:52:18');
INSERT INTO `sellsum` VALUES (232, 80, 4, '现金', 147, 1, 147, '无', 0, '2018-03-02 20:18:58');
INSERT INTO `sellsum` VALUES (233, 82, 4, '现金', 21, 1, 21, '无', 0, '2018-03-03 17:22:14');
INSERT INTO `sellsum` VALUES (234, 80, 4, '微信', 234, 1, 234, '无', 0, '2018-03-03 18:20:15');
INSERT INTO `sellsum` VALUES (235, 35, 4, '现金', 197, 1, 197, '无', 0, '2018-03-03 20:32:33');
INSERT INTO `sellsum` VALUES (236, 80, 4, '现金', 190, 1, 190, '无', 1, '2018-03-04 11:22:02');
INSERT INTO `sellsum` VALUES (237, 80, 4, '现金', 0, 1, 0, '无', 0, '2018-03-04 18:46:58');
INSERT INTO `sellsum` VALUES (238, 83, 4, '现金', 244, 1, 244, '无', 0, '2018-03-05 12:43:44');

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store`  (
  `storeid` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(11) NOT NULL,
  `goodssize` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `inputsize` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `createtime` datetime NOT NULL,
  PRIMARY KEY (`storeid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 765 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES (1, 134, '73', '73-80-90-100', 1, 2, '2017-10-23 21:46:33');
INSERT INTO `store` VALUES (2, 134, '80', '73-80-90-100', 1, 2, '2017-10-23 21:46:33');
INSERT INTO `store` VALUES (3, 134, '90', '73-80-90-100', 1, 2, '2017-10-23 21:46:33');
INSERT INTO `store` VALUES (4, 134, '100', '73-80-90-100', 1, 2, '2017-10-23 21:46:33');
INSERT INTO `store` VALUES (5, 135, '73', '73-80-90-100', 2, 2, '2017-10-23 22:10:29');
INSERT INTO `store` VALUES (6, 135, '80', '73-80-90-100', 2, 2, '2017-10-23 22:10:29');
INSERT INTO `store` VALUES (7, 135, '90', '73-80-90-100', 2, 2, '2017-10-23 22:10:29');
INSERT INTO `store` VALUES (8, 135, '100', '73-80-90-100', 2, 2, '2017-10-23 22:10:29');
INSERT INTO `store` VALUES (9, 123, '52', '52-59-66', 2, 2, '2017-10-23 22:14:19');
INSERT INTO `store` VALUES (10, 123, '59', '52-59-66', 2, 2, '2017-10-23 22:14:19');
INSERT INTO `store` VALUES (11, 123, '66', '52-59-66', 2, 2, '2017-10-23 22:14:19');
INSERT INTO `store` VALUES (12, 128, '52', '52-59', 4, 2, '2017-10-23 22:23:40');
INSERT INTO `store` VALUES (13, 128, '59', '52-59', 4, 2, '2017-10-23 22:23:40');
INSERT INTO `store` VALUES (14, 136, '73', '73-80-90-100', 3, 2, '2017-10-23 22:29:20');
INSERT INTO `store` VALUES (15, 136, '80', '73-80-90-100', 3, 2, '2017-10-23 22:29:20');
INSERT INTO `store` VALUES (16, 136, '90', '73-80-90-100', 3, 2, '2017-10-23 22:29:20');
INSERT INTO `store` VALUES (17, 136, '100', '73-80-90-100', 3, 2, '2017-10-23 22:29:20');
INSERT INTO `store` VALUES (18, 130, '59', '59-66', 4, 2, '2017-10-23 22:42:41');
INSERT INTO `store` VALUES (19, 130, '66', '59-66', 4, 2, '2017-10-23 22:42:41');
INSERT INTO `store` VALUES (20, 131, '52', '52-59', 4, 2, '2017-10-23 22:43:46');
INSERT INTO `store` VALUES (21, 131, '59', '52-59', 4, 2, '2017-10-23 22:43:46');
INSERT INTO `store` VALUES (22, 126, '52', '52-59', 4, 2, '2017-10-23 22:45:01');
INSERT INTO `store` VALUES (23, 126, '59', '52-59', 4, 2, '2017-10-23 22:45:01');
INSERT INTO `store` VALUES (24, 127, '52', '52-59', 4, 2, '2017-10-23 22:46:13');
INSERT INTO `store` VALUES (25, 127, '59', '52-59', 4, 2, '2017-10-23 22:46:13');
INSERT INTO `store` VALUES (26, 133, '73', '73-80-90-100', 2, 2, '2017-10-23 22:47:32');
INSERT INTO `store` VALUES (27, 133, '80', '73-80-90-100', 2, 2, '2017-10-23 22:47:32');
INSERT INTO `store` VALUES (28, 133, '90', '73-80-90-100', 2, 2, '2017-10-23 22:47:32');
INSERT INTO `store` VALUES (29, 133, '100', '73-80-90-100', 2, 2, '2017-10-23 22:47:32');
INSERT INTO `store` VALUES (34, 132, '90', '90-100-110-120', 2, 2, '2017-10-23 22:52:06');
INSERT INTO `store` VALUES (35, 132, '100', '90-100-110-120', 2, 2, '2017-10-23 22:52:06');
INSERT INTO `store` VALUES (36, 132, '110', '90-100-110-120', 2, 2, '2017-10-23 22:52:06');
INSERT INTO `store` VALUES (37, 132, '120', '90-100-110-120', 2, 2, '2017-10-23 22:52:06');
INSERT INTO `store` VALUES (38, 119, '73', '73-80-90-100', 2, 2, '2017-10-23 22:54:19');
INSERT INTO `store` VALUES (39, 119, '80', '73-80-90-100', 2, 2, '2017-10-23 22:54:19');
INSERT INTO `store` VALUES (40, 119, '90', '73-80-90-100', 2, 2, '2017-10-23 22:54:19');
INSERT INTO `store` VALUES (41, 119, '100', '73-80-90-100', 2, 2, '2017-10-23 22:54:19');
INSERT INTO `store` VALUES (42, 116, '59', '59-66-73', 3, 2, '2017-10-23 22:56:18');
INSERT INTO `store` VALUES (43, 116, '66', '59-66-73', 3, 2, '2017-10-23 22:56:18');
INSERT INTO `store` VALUES (44, 116, '73', '59-66-73', 3, 2, '2017-10-23 22:56:18');
INSERT INTO `store` VALUES (45, 120, '52', '52-59', 4, 2, '2017-10-23 23:04:30');
INSERT INTO `store` VALUES (46, 120, '59', '52-59', 4, 2, '2017-10-23 23:04:30');
INSERT INTO `store` VALUES (47, 137, '66', '66-73-80', 3, 2, '2017-10-23 23:07:00');
INSERT INTO `store` VALUES (48, 137, '73', '66-73-80', 3, 2, '2017-10-23 23:07:00');
INSERT INTO `store` VALUES (49, 137, '80', '66-73-80', 3, 2, '2017-10-23 23:07:00');
INSERT INTO `store` VALUES (50, 117, '80', '80-90-100-110', 2, 2, '2017-10-23 23:09:05');
INSERT INTO `store` VALUES (764, 274, '60', '50-60', 2, 1, '2018-05-08 12:13:13');
INSERT INTO `store` VALUES (763, 274, '50', '50-60', 2, 1, '2018-05-08 12:13:13');
INSERT INTO `store` VALUES (762, 275, '40', '10-20-30-40', 1, 1, '2018-05-08 12:12:13');
INSERT INTO `store` VALUES (761, 275, '30', '10-20-30-40', 1, 1, '2018-05-08 12:12:13');
INSERT INTO `store` VALUES (760, 275, '20', '10-20-30-40', 1, 1, '2018-05-08 12:12:13');
INSERT INTO `store` VALUES (759, 275, '10', '10-20-30-40', 1, 1, '2018-05-08 12:12:13');

-- ----------------------------
-- Table structure for storesum
-- ----------------------------
DROP TABLE IF EXISTS `storesum`;
CREATE TABLE `storesum`  (
  `storesumid` int(11) NOT NULL AUTO_INCREMENT,
  `barcode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goodsserial` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goodssize` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `remained` int(11) NOT NULL,
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`storesumid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 756 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of storesum
-- ----------------------------
INSERT INTO `storesum` VALUES (1, '6955203659750', 'M4T2047C', '73', 1, 0, '2017-10-23 21:46:33', '2017-12-08 15:36:19');
INSERT INTO `storesum` VALUES (2, '6955203659750', 'M4T2047C', '80', 1, 1, '2017-10-23 21:46:33', '2017-10-23 21:46:33');
INSERT INTO `storesum` VALUES (3, '6955203659750', 'M4T2047C', '90', 1, 0, '2017-10-23 21:46:33', '2017-12-28 16:19:59');
INSERT INTO `storesum` VALUES (4, '6955203659750', 'M4T2047C', '100', 1, 0, '2017-10-23 21:46:33', '2018-02-23 11:50:12');
INSERT INTO `storesum` VALUES (5, '6955203659590', 'M4T2037C', '73', 2, 1, '2017-10-23 22:10:29', '2018-01-30 16:17:51');
INSERT INTO `storesum` VALUES (6, '6955203659590', 'M4T2037C', '80', 2, 2, '2017-10-23 22:10:29', '2017-10-23 22:10:29');
INSERT INTO `storesum` VALUES (7, '6955203659590', 'M4T2037C', '90', 2, 2, '2017-10-23 22:10:29', '2017-10-23 22:10:29');
INSERT INTO `storesum` VALUES (8, '6955203659590', 'M4T2037C', '100', 2, 2, '2017-10-23 22:10:29', '2017-10-23 22:10:29');
INSERT INTO `storesum` VALUES (9, '6955203659606', 'M4H2087C', '52', 2, 2, '2017-10-23 22:14:19', '2017-10-23 22:14:19');
INSERT INTO `storesum` VALUES (10, '6955203659606', 'M4H2087C', '59', 2, 2, '2017-10-23 22:14:19', '2017-10-23 22:14:19');
INSERT INTO `storesum` VALUES (11, '6955203659606', 'M4H2087C', '66', 2, 2, '2017-10-23 22:14:19', '2017-10-23 22:14:19');
INSERT INTO `storesum` VALUES (12, '6955203660428', 'M4T2017C', '52', 4, 4, '2017-10-23 22:23:40', '2017-11-14 17:51:47');
INSERT INTO `storesum` VALUES (13, '6955203660428', 'M4T2017C', '59', 4, 4, '2017-10-23 22:23:40', '2017-10-23 22:23:40');
INSERT INTO `storesum` VALUES (14, '6955203655592', 'M6T1867D', '73', 3, 3, '2017-10-23 22:29:20', '2017-10-23 22:29:20');
INSERT INTO `storesum` VALUES (15, '6955203655592', 'M6T1867D', '80', 3, 2, '2017-10-23 22:29:20', '2018-01-30 12:13:10');
INSERT INTO `storesum` VALUES (16, '6955203655592', 'M6T1867D', '90', 3, 2, '2017-10-23 22:29:20', '2018-01-28 12:33:01');
INSERT INTO `storesum` VALUES (17, '6955203655592', 'M6T1867D', '100', 3, 2, '2017-10-23 22:29:20', '2017-11-11 12:52:00');
INSERT INTO `storesum` VALUES (18, '6955203645890', 'GM3T3727A', '59', 4, 4, '2017-10-23 22:42:41', '2017-10-23 22:42:41');
INSERT INTO `storesum` VALUES (19, '6955203645890', 'GM3T3727A', '66', 4, 4, '2017-10-23 22:42:41', '2017-10-23 22:42:41');
INSERT INTO `storesum` VALUES (20, '6955203651471', 'M6T1297C', '52', 4, 4, '2017-10-23 22:43:46', '2017-10-23 22:43:46');
INSERT INTO `storesum` VALUES (21, '6955203651471', 'M6T1297C', '59', 4, 4, '2017-10-23 22:43:46', '2017-10-23 22:43:46');
INSERT INTO `storesum` VALUES (22, '6955203637598', 'M6T2417A', '52', 4, 3, '2017-10-23 22:45:01', '2018-02-23 16:53:54');
INSERT INTO `storesum` VALUES (23, '6955203637598', 'M6T2417A', '59', 4, 4, '2017-10-23 22:45:01', '2017-10-23 22:45:01');
INSERT INTO `storesum` VALUES (24, '6955203650825', 'M6T1037C', '52', 4, 4, '2017-10-23 22:46:13', '2017-10-23 22:46:13');
INSERT INTO `storesum` VALUES (25, '6955203650825', 'M6T1037C', '59', 4, 4, '2017-10-23 22:46:13', '2017-10-23 22:46:13');
INSERT INTO `storesum` VALUES (26, '6955203651679', 'M6T1377C1', '73', 2, 0, '2017-10-23 22:47:32', '2017-12-05 11:56:44');
INSERT INTO `storesum` VALUES (27, '6955203651679', 'M6T1377C1', '80', 2, 1, '2017-10-23 22:47:32', '2017-12-05 11:56:44');
INSERT INTO `storesum` VALUES (28, '6955203651679', 'M6T1377C1', '90', 2, 0, '2017-10-23 22:47:32', '2017-12-05 11:56:44');
INSERT INTO `storesum` VALUES (29, '6955203651679', 'M6T1377C1', '100', 2, 2, '2017-10-23 22:47:32', '2017-10-23 22:47:32');
INSERT INTO `storesum` VALUES (34, '6955203651099', 'M6T1117C', '90', 2, 2, '2017-10-23 22:52:06', '2017-10-23 22:52:06');
INSERT INTO `storesum` VALUES (35, '6955203651099', 'M6T1117C', '100', 2, 1, '2017-10-23 22:52:06', '2018-02-25 18:25:51');
INSERT INTO `storesum` VALUES (36, '6955203651099', 'M6T1117C', '110', 2, 1, '2017-10-23 22:52:06', '2018-02-23 11:50:12');
INSERT INTO `storesum` VALUES (37, '6955203651099', 'M6T1117C', '120', 2, 2, '2017-10-23 22:52:06', '2017-10-23 22:52:06');
INSERT INTO `storesum` VALUES (38, '6955203659224', 'M4T5017C1', '73', 2, 2, '2017-10-23 22:54:19', '2017-10-23 22:54:19');
INSERT INTO `storesum` VALUES (39, '6955203659224', 'M4T5017C1', '80', 2, 2, '2017-10-23 22:54:19', '2017-10-23 22:54:19');
INSERT INTO `storesum` VALUES (40, '6955203659224', 'M4T5017C1', '90', 2, 2, '2017-10-23 22:54:19', '2017-10-23 22:54:19');
INSERT INTO `storesum` VALUES (41, '6955203659224', 'M4T5017C1', '100', 2, 2, '2017-10-23 22:54:19', '2017-10-23 22:54:19');
INSERT INTO `storesum` VALUES (42, '6955203660237', 'M4H5097C', '59', 3, 2, '2017-10-23 22:56:18', '2017-12-04 15:50:36');
INSERT INTO `storesum` VALUES (43, '6955203660237', 'M4H5097C', '66', 3, 3, '2017-10-23 22:56:18', '2017-10-23 22:56:18');
INSERT INTO `storesum` VALUES (44, '6955203660237', 'M4H5097C', '73', 3, 2, '2017-10-23 22:56:18', '2018-02-05 20:04:24');
INSERT INTO `storesum` VALUES (45, '6955203655011', 'M6T1797D', '52', 4, 3, '2017-10-23 23:04:30', '2017-10-29 09:45:24');
INSERT INTO `storesum` VALUES (46, '6955203655011', 'M6T1797D', '59', 4, 4, '2017-10-23 23:04:30', '2017-10-23 23:04:30');
INSERT INTO `storesum` VALUES (47, '6955203655479', 'M6H1827D1', '66', 3, 1, '2017-10-23 23:07:00', '2018-03-03 18:20:15');
INSERT INTO `storesum` VALUES (48, '6955203655479', 'M6H1827D1', '73', 3, 3, '2017-10-23 23:07:00', '2017-10-23 23:07:00');
INSERT INTO `storesum` VALUES (49, '6955203655479', 'M6H1827D1', '80', 3, 2, '2017-10-23 23:07:00', '2018-02-28 18:29:17');
INSERT INTO `storesum` VALUES (50, '6955203660213', 'M3T6827C', '80', 2, 2, '2017-10-23 23:09:05', '2017-10-23 23:09:05');
INSERT INTO `storesum` VALUES (755, '22222222', 'M1Q0648B', '60', 2, 2, '2018-05-08 12:13:13', '2018-05-08 12:13:13');
INSERT INTO `storesum` VALUES (754, '22222222', 'M1Q0648B', '50', 2, 2, '2018-05-08 12:13:13', '2018-05-08 12:13:13');
INSERT INTO `storesum` VALUES (753, '11111111', 'M3Q1498B', '40', 1, 1, '2018-05-08 12:12:13', '2018-05-08 12:12:13');
INSERT INTO `storesum` VALUES (752, '11111111', 'M3Q1498B', '30', 1, 1, '2018-05-08 12:12:13', '2018-05-08 12:12:13');
INSERT INTO `storesum` VALUES (751, '11111111', 'M3Q1498B', '20', 1, 0, '2018-05-08 12:12:13', '2018-05-08 12:12:13');
INSERT INTO `storesum` VALUES (750, '11111111', 'M3Q1498B', '10', 1, 1, '2018-05-08 12:12:13', '2018-05-08 12:12:13');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `realname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createtime` datetime NOT NULL,
  `slat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, 'lm', 'LiuM123', 'LM', '17712345678', 'boss', '2017-10-01 08:18:20', 'e6644b868fa79de4c5a79a8a23ab97f4');
INSERT INTO `user` VALUES (3, 'liuchan', 'LiuC456', 'LC', '18688888888', 'boss', '2017-10-01 08:18:20', '13e6bc6c51a32d0c77bf04a4f7dac942');
INSERT INTO `user` VALUES (4, 'dy', 'DY123', '店员', '13812345678', 'clerk', '2017-10-01 08:18:20', 'e20e1387e206de729e67291e4d7c380f');
INSERT INTO `user` VALUES (5, 'wangwu', 'ww123', '王五', '18687654321', 'clerk', '2017-10-01 08:18:20', '048578fcb87ec5018323911293b0a822');
INSERT INTO `user` VALUES (1, 'admin', 'Milor123', ' 管理员', '18682558655', 'admin', '2017-10-01 08:18:20', '286a66ba7f7235524a479ce2ed72e737');

SET FOREIGN_KEY_CHECKS = 1;
