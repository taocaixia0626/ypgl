/*
 Navicat Premium Data Transfer

 Source Server         : mysql5.0
 Source Server Type    : MySQL
 Source Server Version : 50506
 Source Host           : localhost:3306
 Source Schema         : 00_demo

 Target Server Type    : MySQL
 Target Server Version : 50506
 File Encoding         : 65001

 Date: 29/12/2020 19:05:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;


DROP TABLE IF EXISTS `flag`;
CREATE TABLE `flag`  (
  `flag` int(11) NOT NULL,
  PRIMARY KEY (`flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of flag
-- ----------------------------
INSERT INTO `flag` VALUES (22);
-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creattime` datetime NULL DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isuse` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logintimes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quanxian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-01-01 00:00:00', '1', '1', '0000-00-00 00:00:00', '1');
INSERT INTO `admin` VALUES (4, 'admin2', 'e10adc3949ba59abbe56e057f20f883e', '2020-03-17 21:13:55', '2', '1', '0000-00-00 00:00:00', '111');
INSERT INTO `admin` VALUES (6, 'ab1111', 'e10adc3949ba59abbe56e057f20f883e', '2011-06-27 15:30:50', '2', '1', '0000-00-00 00:00:00', '111');

-- ----------------------------
-- Table structure for adminlog
-- ----------------------------
DROP TABLE IF EXISTS `adminlog`;
CREATE TABLE `adminlog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logintime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loginip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `useros` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ok` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 448 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of adminlog
-- ----------------------------
INSERT INTO `adminlog` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-20', '127.0.0.1', '1', '1');
INSERT INTO `adminlog` VALUES (2, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-29 18:42:57', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (3, 'admin', 'admin', '2020-12-29 18:43:38', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'false');
INSERT INTO `adminlog` VALUES (4, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-29 18:43:47', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (5, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-29 18:44:13', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (6, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-29 18:44:14', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (7, 'admin', 'admin', '2020-12-29 18:44:18', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'false');
INSERT INTO `adminlog` VALUES (8, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-29 18:44:27', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (9, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-29 18:45:20', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (10, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-29 18:45:21', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (11, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-29 18:45:36', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (12, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-29 18:45:38', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (13, 'admin', 'admin', '2020-12-29 18:45:40', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'false');
INSERT INTO `adminlog` VALUES (14, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-29 18:45:49', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (15, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-29 18:46:26', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (391, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 10:26:25.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (392, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 10:57:07.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (393, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 11:18:24.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (394, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 11:28:43.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (395, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 12:01:56.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (396, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 12:50:00.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (397, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 13:19:24.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (398, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 13:41:22.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (399, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 14:48:19.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (400, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 15:06:13.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (401, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 15:16:38.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (402, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 15:28:25.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (403, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 15:38:07.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (404, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 15:38:22.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (405, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 18:20:32.000', 'Mozilla/4.0 (compatible', '192.168.0.4', 'true');
INSERT INTO `adminlog` VALUES (406, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 18:24:50.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (407, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 18:38:18.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (408, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 18:40:36.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (409, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 18:51:18.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (410, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 19:04:48.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (411, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 19:11:18.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (412, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 20:23:25.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (413, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-28 20:28:04.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (414, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-29 12:26:47.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (415, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-30 11:24:31.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (416, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-31 12:39:27.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (417, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-03-31 23:15:27.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (418, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-04-03 10:57:08.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (419, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-05-01 10:12:26.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (420, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2020-05-01 10:14:17.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (421, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2011-06-21 19:00:04.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (422, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2011-06-21 19:05:23.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (423, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2011-06-21 19:08:57.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (424, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2011-06-21 19:11:37.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (425, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2011-06-21 19:17:37.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (426, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2011-06-21 19:21:38.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (427, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2011-06-22 06:17:43.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (428, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2011-06-27 12:31:13.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (429, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2011-06-27 12:42:10.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (432, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2011-06-27 15:19:49.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (433, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2011-06-27 15:30:31.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (434, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2011-08-15 09:42:52.000', 'Mozilla/4.0 (compatible', '127.0.0.1', 'true');
INSERT INTO `adminlog` VALUES (435, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2012-07-25 09:06:00.000', 'Mozilla/4.0 (compatible', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (436, 'admin', 'ae7783f0ae4cb82dfe39bb4ec4a53047', '2012-07-25 09:06:56.000', 'Mozilla/4.0 (compatible', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (437, 'admin', 'admin', '2020-12-29 18:59:23', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'false');
INSERT INTO `adminlog` VALUES (438, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-29 18:59:40', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (439, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-29 18:59:48', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (440, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-29 18:59:50', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (441, 'admin', '123456', '2020-12-29 19:01:35', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'false');
INSERT INTO `adminlog` VALUES (442, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-29 19:01:54', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (443, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-29 19:01:55', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (444, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-29 19:02:06', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (445, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-29 19:02:19', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (446, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-29 19:02:51', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'true');
INSERT INTO `adminlog` VALUES (447, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-12-29 19:03:53', 'Mozilla/5.0 (Windows NT 6.3', '0:0:0:0:0:0:0:1', 'true');

-- ----------------------------
-- Table structure for classname
-- ----------------------------
DROP TABLE IF EXISTS `classname`;
CREATE TABLE `classname`  (
  `id` int(11) NOT NULL,
  `flmc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dwmc
-- ----------------------------
DROP TABLE IF EXISTS `dwmc`;
CREATE TABLE `dwmc`  (
  `id` int(11) NOT NULL,
  `dwmc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addtime` varchar(0) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dwmc
-- ----------------------------
INSERT INTO `dwmc` VALUES (1000, '片1', '');
INSERT INTO `dwmc` VALUES (1001, '瓶', '');
INSERT INTO `dwmc` VALUES (1002, '支', '');
INSERT INTO `dwmc` VALUES (1003, '贴', '');
INSERT INTO `dwmc` VALUES (1004, '个', '');
INSERT INTO `dwmc` VALUES (1005, '条', '');
INSERT INTO `dwmc` VALUES (1006, 'f', '');

-- ----------------------------
-- Table structure for medicine
-- ----------------------------
DROP TABLE IF EXISTS `medicine`;
CREATE TABLE `medicine`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ypmc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yplb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ypjx` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ypdw` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ypjj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ypsl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jhrq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ypph` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ypcd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yxq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dqrq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of medicine
-- ----------------------------
INSERT INTO `medicine` VALUES (1, '1001', '中成药', '针剂', '瓶', '8', '1000', '2020-01-01 00:00:00.000', '12020080303', '广州白云山制药厂', '3', '2020-01-05 00:00:00.000');
INSERT INTO `medicine` VALUES (3, '1008', '中成药', '避孕药具', '贴', '3', '100', '2020-03-28 00:00:00.000', '13234343434', '北京同仁堂', '5', '2020-03-29 00:00:00.000');
INSERT INTO `medicine` VALUES (4, '1016', '中成药', '避孕药具', '条', '122', '122', '2020-03-04 00:00:00.000', '12222', '辽宁', '12', '2020-03-14 00:00:00.000');
INSERT INTO `medicine` VALUES (5, '1015', '假药', '丰胸保健', '个', '111', '122', '2020-03-06 00:00:00.000', '12222', '辽宁', '12', '2020-03-04 00:00:00.000');
INSERT INTO `medicine` VALUES (6, '1014', '假药', '针剂', '个', '111', '122', '2020-03-01 00:00:00.000', '12222', '辽宁', '12', '2020-03-10 00:00:00.000');
INSERT INTO `medicine` VALUES (7, '1015', '西药', '洗消用品', '个', '111', '122', '2020-03-10 00:00:00.000', '12222', '辽宁', '12', '2020-03-14 00:00:00.000');
INSERT INTO `medicine` VALUES (8, '1012', '中成药', '洗消用品', '个', '111', '122', '2020-03-03 00:00:00.000', '12222', '辽宁', '12', '2020-03-24 00:00:00.000');
INSERT INTO `medicine` VALUES (9, '1012', '西药', '洗消用品', '条', '122', '122', '2020-03-11 00:00:00.000', '12222', '辽宁', '12', '2020-03-11 00:00:00.000');
INSERT INTO `medicine` VALUES (10, '1012', '假药', '针剂', '条', '111', '122', '2020-03-03 00:00:00.000', '12222', '辽宁', '12', '2020-03-04 00:00:00.000');
INSERT INTO `medicine` VALUES (11, '1015', '西药', '丰胸保健', '个', '111', '122', '2020-03-04 00:00:00.000', '12222', '辽宁', '12', '2020-03-01 00:00:00.000');
INSERT INTO `medicine` VALUES (12, '1016', '中成药', '洗消用品', '条', '1', '11', '2020-03-03 00:00:00.000', '12321323', '213', '1', '2020-03-03 00:00:00.000');
INSERT INTO `medicine` VALUES (15, '1016', '西药', 'dff', '个', '3', '333', '2011-06-07 00:00:00.000', '33', '33', '3', '2011-06-15 00:00:00.000');
INSERT INTO `medicine` VALUES (16, '1019', '西药', '丰胸保健', '贴', '33', '33', '2011-06-07 00:00:00.000', '333', '333', '2', '2013-06-04 00:00:00.000');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `linkurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wordcolor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `targettype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hide` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ordernum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for mname
-- ----------------------------
DROP TABLE IF EXISTS `mname`;
CREATE TABLE `mname`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1020 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mname
-- ----------------------------
INSERT INTO `mname` VALUES (1001, '三唑仑', '2020-03-28 10:21:06');
INSERT INTO `mname` VALUES (1002, '西咪替丁', '2020-03-28 10:21:10');
INSERT INTO `mname` VALUES (1003, '高分子甘露醇', '2020-03-28 10:21:14');
INSERT INTO `mname` VALUES (1004, '扑热息痛', '2020-03-28 10:21:18');
INSERT INTO `mname` VALUES (1005, '阿奇霉素', '2020-03-28 10:21:22');
INSERT INTO `mname` VALUES (1006, '阿莫西林', '2020-03-28 10:21:28');
INSERT INTO `mname` VALUES (1008, '阿莫西林（吉林敖东制药）', '2020-03-28 13:54:01');
INSERT INTO `mname` VALUES (1009, '感冒胶囊', '2020-03-28 18:21:33');
INSERT INTO `mname` VALUES (1010, '头孢', '2020-03-28 18:21:49');
INSERT INTO `mname` VALUES (1011, '打虫药', '2020-03-28 18:21:58');
INSERT INTO `mname` VALUES (1012, '蚁力神胶囊', '2020-03-28 18:22:13');
INSERT INTO `mname` VALUES (1013, '超级金创药', '2020-03-28 18:22:48');
INSERT INTO `mname` VALUES (1014, '超级魔法药', '2020-03-28 18:22:57');
INSERT INTO `mname` VALUES (1015, '天之魔力d', '2020-03-28 18:23:22');
INSERT INTO `mname` VALUES (1016, '桂林妹妹', '2020-03-28 18:23:28');
INSERT INTO `mname` VALUES (1019, '111112', '2011-06-27 15:31:00');

-- ----------------------------
-- Table structure for sale
-- ----------------------------
DROP TABLE IF EXISTS `sale`;
CREATE TABLE `sale`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ypmc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ypsj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ypsl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xsrq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sale
-- ----------------------------
INSERT INTO `sale` VALUES (2, '1001', '5', '50', '2020-03-28 00:00:00.000');
INSERT INTO `sale` VALUES (3, '1008', '5', '5', '2020-03-28 00:00:00.000');
INSERT INTO `sale` VALUES (4, '1015', '150', '100', '2020-03-05 00:00:00.000');
INSERT INTO `sale` VALUES (5, '1012', '120', '1', '2020-03-03 00:00:00.000');
INSERT INTO `sale` VALUES (6, '1016', '150', '1', '2020-03-03 00:00:00.000');
INSERT INTO `sale` VALUES (7, '1015', '150', '1', '2020-03-03 00:00:00.000');
INSERT INTO `sale` VALUES (8, '1016', '150', '1', '2020-03-11 00:00:00.000');
INSERT INTO `sale` VALUES (9, '1015', '150', '1', '2020-03-03 00:00:00.000');
INSERT INTO `sale` VALUES (10, '1015', '150', '1', '2020-03-03 00:00:00.000');
INSERT INTO `sale` VALUES (12, '1019', '2', '2', '2011-06-08 00:00:00.000');

-- ----------------------------
-- Table structure for system
-- ----------------------------
DROP TABLE IF EXISTS `system`;
CREATE TABLE `system`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reasons` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `record` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `copyright` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dir` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of system
-- ----------------------------
INSERT INTO `system` VALUES (1, '药品管理系统', 'http://localhost:8080/WSRCZP/', '药品管理系统', '药品管理系统', 'admin@admin.com', 'open', '网站维护中，请稍后访问', '辽ICP备00000000号', '药品管理系统 Copyright &copy;  版权所有', 'admin');

-- ----------------------------
-- Table structure for ypjx
-- ----------------------------
DROP TABLE IF EXISTS `ypjx`;
CREATE TABLE `ypjx`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ypjx` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addtime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1011 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ypjx
-- ----------------------------
INSERT INTO `ypjx` VALUES (1001, '片剂', '2020-03-28 11:19:12');
INSERT INTO `ypjx` VALUES (1002, '针剂', '2020-03-28 11:20:11');
INSERT INTO `ypjx` VALUES (1003, '酊水油膏', '2020-03-28 11:20:33');
INSERT INTO `ypjx` VALUES (1004, '洗消用品', '2020-03-28 11:20:44');
INSERT INTO `ypjx` VALUES (1005, '丰胸保健', '2020-03-28 11:20:54');
INSERT INTO `ypjx` VALUES (1006, '避孕药具', '2020-03-28 11:21:04');
INSERT INTO `ypjx` VALUES (1009, 'dff', '2011-06-21 19:14:35');
INSERT INTO `ypjx` VALUES (1010, 'nnnn', '2011-06-22 06:27:40');

SET FOREIGN_KEY_CHECKS = 1;
