/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : bishe

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 29/05/2020 08:16:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chaxun
-- ----------------------------
DROP TABLE IF EXISTS `chaxun`;
CREATE TABLE `chaxun`  (
  `number` varchar(4) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL DEFAULT '0',
  `xingming` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL DEFAULT '',
  `shoujihao` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL DEFAULT '0',
  `cfd` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL DEFAULT '',
  `jsd` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL DEFAULT '',
  `kd` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL DEFAULT '',
  `xz` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chaxun
-- ----------------------------
INSERT INTO `chaxun` VALUES ('01', '董悦闰', '2147483647', '运城', '广州', '圆通', '西安');
INSERT INTO `chaxun` VALUES ('02', '李晓明', '2147483647', '深圳', '大连', '韵达', '广州');
INSERT INTO `chaxun` VALUES ('03', '董悦平', '2147483647', '太原', '运城', '中通', '晋城');

-- ----------------------------
-- Table structure for denglu
-- ----------------------------
DROP TABLE IF EXISTS `denglu`;
CREATE TABLE `denglu`  (
  `name` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL DEFAULT '',
  `password` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of denglu
-- ----------------------------
INSERT INTO `denglu` VALUES ('15234052011', 'dyr4682963');
INSERT INTO `denglu` VALUES ('15582429337', 'lll12345');

-- ----------------------------
-- Table structure for denglu_guanli
-- ----------------------------
DROP TABLE IF EXISTS `denglu_guanli`;
CREATE TABLE `denglu_guanli`  (
  `name` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL DEFAULT '',
  `password` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of denglu_guanli
-- ----------------------------
INSERT INTO `denglu_guanli` VALUES ('admin', '123456');

-- ----------------------------
-- Table structure for express
-- ----------------------------
DROP TABLE IF EXISTS `express`;
CREATE TABLE `express`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `fromlocation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tolocation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `posttime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of express
-- ----------------------------
INSERT INTO `express` VALUES ('201811121503141933', '北京市珠宝学院杜张雄', '吕梁市孝义市杜张雄收14071320866', '14701320866', '2020-05-28 12:27:40', '已签收，感谢您使用本快递系统', '韵达');
INSERT INTO `express` VALUES ('201811130939401438', '北京市123123', '上海市123123收123', '123', '2020-05-28 12:27:44', '正在揽收，快递员：nix,电话：', '京东');
INSERT INTO `express` VALUES ('201811130939511865', '北京市123123', '上海市123123收123', '123', '2020-05-28 12:27:48', '已确认收货，感谢您的使用！', '顺丰');
INSERT INTO `express` VALUES ('201811131404591692', '北京市珠宝学院杜张雄2', '太原市ttt杜张雄收14071320866', '14701320866', '2020-05-28 12:28:00', '已签收，感谢您使用本快递系统', '请选择');
INSERT INTO `express` VALUES ('202005232054281522', '苏州市二者县学习', '天津市京门县test收1512123123123', '15117286104', '2020-05-28 12:29:36', '等待揽收', '圆通');
INSERT INTO `express` VALUES ('202005232056141930', '苏州市二者县学习', '天津市京门县test收1512123123123', '15117286104', '2020-05-28 12:29:51', '等待揽收', '申通');
INSERT INTO `express` VALUES ('202005232102091932', '北京市二者县学习', '天津市京门县test收1512123123123', '15117286104', '2020-05-28 12:29:59', '等待揽收', '邮政');
INSERT INTO `express` VALUES ('202005232117071722', '鄂州市二者县学习', '天津市京门县test收1512123123123', '15117286104', '2020-05-28 12:32:41', '等待揽收', '申通');
INSERT INTO `express` VALUES ('202005232150101349', '青岛市二者县学习', '屯昌县京门县test收1512123123123', '15117286104', '2020-05-28 12:32:45', '等待揽收', '邮政');
INSERT INTO `express` VALUES ('202005280727431505', '', '', '15117286104', '2020-05-28 12:32:47', '等待揽收', '请选择');
INSERT INTO `express` VALUES ('202005280740401571', 'æé½å¸äºèå¿å­¦ä¹ ', 'å¤©æ´¥å¸äº¬é¨å¿testæ¶1512123123123', '15117286104', '2020-05-28 12:32:48', '等待揽收', '邮政');
INSERT INTO `express` VALUES ('202005281512491882', 'éå²å¸äºèå¿å­¦ä¹ ', 'å¤©æ´¥å¸äº¬é¨å¿testæ¶1512123123123', '15117286104', '2020-05-28 15:12:50', '等待揽收', NULL);
INSERT INTO `express` VALUES ('202005281512531309', 'éå²å¸äºèå¿å­¦ä¹ ', 'å¤©æ´¥å¸äº¬é¨å¿testæ¶1512123123123', '15117286104', '2020-05-28 15:12:53', '等待揽收', NULL);
INSERT INTO `express` VALUES ('202005281514281474', 'éå²å¸äºèå¿å­¦ä¹ ', 'å¤©æ´¥å¸äº¬é¨å¿testæ¶1512123123123', '15117286104', '2020-05-28 15:14:29', '等待揽收', NULL);
INSERT INTO `express` VALUES ('202005281519251511', '深圳市二者县学习', '深圳市京门县test收1512123123123', '15117286104', '2020-05-28 15:19:26', '等待揽收', NULL);

-- ----------------------------
-- Table structure for liuyanban
-- ----------------------------
DROP TABLE IF EXISTS `liuyanban`;
CREATE TABLE `liuyanban`  (
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `E-mail` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `title` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `liuyan` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of liuyanban
-- ----------------------------
INSERT INTO `liuyanban` VALUES ('zxca', '151422733613', '建议', '公司放管服改革');
INSERT INTO `liuyanban` VALUES ('是zxca', '151422733613', '民意', '薩嘎我去問過');

-- ----------------------------
-- Table structure for wangdian
-- ----------------------------
DROP TABLE IF EXISTS `wangdian`;
CREATE TABLE `wangdian`  (
  `cfd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `jsd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sj` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `zl` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `jg` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`cfd`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wangdian
-- ----------------------------
INSERT INTO `wangdian` VALUES ('兰州', '成都', '4天', '1斤', '4元');
INSERT INTO `wangdian` VALUES ('运城', '太原', '3天', '1斤', '10元');

SET FOREIGN_KEY_CHECKS = 1;
