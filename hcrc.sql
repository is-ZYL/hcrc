/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1：3306
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost:3306
 Source Schema         : hcrc

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 27/05/2018 16:39:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection`  (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  `c_collectionTime` date NOT NULL COMMENT '收藏时间',
  PRIMARY KEY (`c_id`) USING BTREE,
  INDEX `u_id`(`u_id`) USING BTREE,
  INDEX `p_id`(`p_id`) USING BTREE,
  CONSTRAINT `collection_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `collection_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `position` (`p_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for educational_experience
-- ----------------------------
DROP TABLE IF EXISTS `educational_experience`;
CREATE TABLE `educational_experience`  (
  `ed_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` date NOT NULL,
  `end_time` date NOT NULL,
  `system` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `major` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `education` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `r_id` int(11) NOT NULL,
  PRIMARY KEY (`ed_id`) USING BTREE,
  INDEX `r_id`(`r_id`) USING BTREE,
  CONSTRAINT `educational_experience_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `resume` (`r_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of educational_experience
-- ----------------------------
INSERT INTO `educational_experience` VALUES (1, '成都理工大学', '2018-03-01', '2018-05-26', '计算机', '软件工程', '本科', 1);
INSERT INTO `educational_experience` VALUES (2, '四川大学', '2016-07-14', '2018-06-01', '计算机系', '网络工程', '大专', 2);
INSERT INTO `educational_experience` VALUES (3, '四川理工大学', '2010-06-17', '2018-05-30', '计算机系', '计算机应用', '本科', 3);

-- ----------------------------
-- Table structure for enterprise
-- ----------------------------
DROP TABLE IF EXISTS `enterprise`;
CREATE TABLE `enterprise`  (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `e_password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `e_carded` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `e_corporatename` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `e_businesslicense` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `e_Contactnumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`e_id`) USING BTREE,
  UNIQUE INDEX `e_username`(`e_username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of enterprise
-- ----------------------------
INSERT INTO `enterprise` VALUES (1, '666', '202cb962ac59075b964b07152d234b70', '510379199302061476', '重庆要日天有限公司', '666', '');

-- ----------------------------
-- Table structure for enterprise_image
-- ----------------------------
DROP TABLE IF EXISTS `enterprise_image`;
CREATE TABLE `enterprise_image`  (
  `ei_id` int(11) NOT NULL AUTO_INCREMENT,
  `ei_imgs` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '上传的图片',
  `ei_imgNum` int(11) DEFAULT NULL COMMENT '上传的图片数量（限制上传数量）',
  `e_id` int(11) DEFAULT NULL,
  `ep_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ei_id`) USING BTREE,
  INDEX `e_id`(`e_id`) USING BTREE,
  INDEX `ep_id`(`ep_id`) USING BTREE,
  CONSTRAINT `enterprise_image_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `enterprise` (`e_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `enterprise_image_ibfk_2` FOREIGN KEY (`ep_id`) REFERENCES `enterprise_profile` (`ep_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for enterprise_personnelorder
-- ----------------------------
DROP TABLE IF EXISTS `enterprise_personnelorder`;
CREATE TABLE `enterprise_personnelorder`  (
  `eo_id` int(11) NOT NULL AUTO_INCREMENT,
  `eo_positionName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `eo_keyboard` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `eo_attribute` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `eo_isOpen` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `eo_salary` int(11) NOT NULL,
  `eo_additionalWelfare` int(11) DEFAULT NULL,
  `eo_minAge` int(11) NOT NULL,
  `eo_maxAge` int(11) DEFAULT NULL,
  `eo_eduRequirements` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `eo_experience` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `eo_jobNature` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `eo_recruitsNumber` int(11) NOT NULL,
  `eo_socialDelivery` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `eo_arriveTime` date NOT NULL,
  `eo_city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `eo_endTime` date NOT NULL,
  `eo_workAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `eo_jobAdvantage` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `eo_JobDescription` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `eo_tenureRequirements` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `eo_state` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `eo_sendTime` date NOT NULL,
  `eo_updateTime` date DEFAULT NULL,
  `e_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`eo_id`) USING BTREE,
  INDEX `e_id`(`e_id`) USING BTREE,
  CONSTRAINT `enterprise_personnelorder_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `enterprise` (`e_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for enterprise_profile
-- ----------------------------
DROP TABLE IF EXISTS `enterprise_profile`;
CREATE TABLE `enterprise_profile`  (
  `ep_id` int(11) NOT NULL AUTO_INCREMENT,
  `ep_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '企业名称',
  `ep_abbreviation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '企业简称',
  `ep_nature` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '企业性质（国企，民营，外企）(保存之后就不允许修改)',
  `ep_scale` int(11) NOT NULL COMMENT '企业规模（人数）',
  `ep_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ep_header` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ep_category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '行业类别(在下拉框中进行选择)',
  `ep_website` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '企业官网网址',
  `ep_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司邮箱地址',
  `ep_postalCode` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ep_profile` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司简介',
  `ep_authentication` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否认证（平台进行认证操作）null 表示未认证， ',
  `ep_createTime` date NOT NULL COMMENT '创建时间',
  `ep_updateTime` date DEFAULT NULL COMMENT '更新时间',
  `e_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ep_id`) USING BTREE,
  UNIQUE INDEX `ep_name`(`ep_name`) USING BTREE,
  INDEX `e_id`(`e_id`) USING BTREE,
  CONSTRAINT `enterprise_profile_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `enterprise` (`e_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for headhunting
-- ----------------------------
DROP TABLE IF EXISTS `headhunting`;
CREATE TABLE `headhunting`  (
  `h_id` int(11) NOT NULL AUTO_INCREMENT,
  `h_username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `h_password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `h_contacts` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `h_identification` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `h_companyFullName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `h_license` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`h_id`) USING BTREE,
  UNIQUE INDEX `h_ushrnamh`(`h_username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of headhunting
-- ----------------------------
INSERT INTO `headhunting` VALUES (1, '1', 'c4ca4238a0b923820dcc509a6f75849b', '1', '1', '1', '1');
INSERT INTO `headhunting` VALUES (2, '2', 'c81e728d9d4c2f636f067f89cc14862c', '杨', '11', '11', '11');
INSERT INTO `headhunting` VALUES (3, '3', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', '杨先生', '1', '1', '1');
INSERT INTO `headhunting` VALUES (4, '15182564763', 'a8f15eda80c50adb0e71943adc8015cf', '杨先生', '512683199803057384', '成都中日天股份有限责任公司', 'dgfd496498147');
INSERT INTO `headhunting` VALUES (5, '666', 'fae0b27c451c728867a567e8c1bb4e53', '666先生', '510245199502356415', '重庆要日天有限公司', '666');

-- ----------------------------
-- Table structure for headhunting_candidate
-- ----------------------------
DROP TABLE IF EXISTS `headhunting_candidate`;
CREATE TABLE `headhunting_candidate`  (
  `hc_id` int(11) NOT NULL AUTO_INCREMENT,
  `lp_id` int(11) DEFAULT NULL,
  `hc_sendTime` date NOT NULL,
  `h_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hc_id`) USING BTREE,
  INDEX `lp_id`(`lp_id`) USING BTREE,
  INDEX `h_id`(`h_id`) USING BTREE,
  CONSTRAINT `headhunting_candidate_ibfk_1` FOREIGN KEY (`lp_id`) REFERENCES `labor_personnel` (`lp_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `headhunting_candidate_ibfk_2` FOREIGN KEY (`h_id`) REFERENCES `headhunting` (`h_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for headhunting_data
-- ----------------------------
DROP TABLE IF EXISTS `headhunting_data`;
CREATE TABLE `headhunting_data`  (
  `hd_id` int(11) NOT NULL AUTO_INCREMENT,
  `hd_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hd_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hd_employmentTime` date NOT NULL,
  `hd_skilful` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hd_companyName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hd_logo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hd_website` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hd_email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hd_mailbox` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hd_brief` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `h_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hd_id`) USING BTREE,
  UNIQUE INDEX `hd_name`(`hd_name`) USING BTREE,
  INDEX `h_id`(`h_id`) USING BTREE,
  CONSTRAINT `headhunting_data_ibfk_1` FOREIGN KEY (`h_id`) REFERENCES `headhunting` (`h_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for headhunting_position
-- ----------------------------
DROP TABLE IF EXISTS `headhunting_position`;
CREATE TABLE `headhunting_position`  (
  `hp_id` int(11) NOT NULL AUTO_INCREMENT,
  `hp_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hp_comhpanyName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hp_Keyword` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hp_salary` int(11) NOT NULL,
  `hp_additionalWelfare` int(11) NOT NULL,
  `hp_minAge` int(11) NOT NULL,
  `hp_maxAge` int(11) NOT NULL,
  `hp_eduRequirements` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hp_exhperience` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hp_jobNature` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hp_recruitsNumber` int(11) NOT NULL,
  `hp_city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hp_workCity` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hp_endTime` date NOT NULL,
  `hp_jobAdvantage` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hp_JobDescrihption` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hp_tenureRequirements` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hp_state` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hp_lack` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hp_readNum` int(11) DEFAULT NULL,
  `hp_shpndTime` date NOT NULL,
  `hp_updateTime` date NOT NULL,
  `h_id` int(11) DEFAULT NULL,
  `hp_jobNumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`hp_id`) USING BTREE,
  INDEX `h_id`(`h_id`) USING BTREE,
  CONSTRAINT `headhunting_position_ibfk_1` FOREIGN KEY (`h_id`) REFERENCES `headhunting` (`h_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for job_experience
-- ----------------------------
DROP TABLE IF EXISTS `job_experience`;
CREATE TABLE `job_experience`  (
  `je_id` int(11) NOT NULL AUTO_INCREMENT,
  `je_start` date NOT NULL COMMENT '工作开始时间',
  `je_end` date NOT NULL COMMENT '结束时间',
  `je_company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司名称',
  `je_job` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职位',
  `je_describe` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '工作描述，300字以内',
  `r_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`je_id`) USING BTREE,
  INDEX `r_id`(`r_id`) USING BTREE,
  CONSTRAINT `job_experience_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `resume` (`r_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job_experience
-- ----------------------------
INSERT INTO `job_experience` VALUES (1, '2017-09-04', '2018-05-20', '哈哈哈哈', 'java', '哈哈哈  订单 订单', 1);
INSERT INTO `job_experience` VALUES (2, '2017-05-16', '2018-05-24', '重庆中日天科技有限公司', 'java', '还可以吧 公司环境很好', 2);
INSERT INTO `job_experience` VALUES (3, '2018-05-01', '2018-05-23', '成都火才人才有限公司', 'UI设计师', '滋滋滋，公司环境很好', 3);

-- ----------------------------
-- Table structure for jobdelivery
-- ----------------------------
DROP TABLE IF EXISTS `jobdelivery`;
CREATE TABLE `jobdelivery`  (
  `jd_id` int(11) NOT NULL AUTO_INCREMENT,
  `jd_situation` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '申请情况（用户已申请，用户面试失败，企业拒绝，企业同意面试，）',
  `jd_sendTime` date NOT NULL COMMENT '投递时间',
  `jd_interviewTime` date DEFAULT NULL COMMENT '面试时间',
  `r_id` int(11) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`jd_id`) USING BTREE,
  INDEX `r_id`(`r_id`) USING BTREE,
  INDEX `p_id`(`p_id`) USING BTREE,
  CONSTRAINT `jobdelivery_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `resume` (`r_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `jobdelivery_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `position` (`p_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for labor_dispatch
-- ----------------------------
DROP TABLE IF EXISTS `labor_dispatch`;
CREATE TABLE `labor_dispatch`  (
  `ld_id` int(11) NOT NULL AUTO_INCREMENT,
  `ld_member` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ld_usldrnamld` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ld_passwor` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ld_id`) USING BTREE,
  UNIQUE INDEX `ld_member`(`ld_member`) USING BTREE,
  UNIQUE INDEX `ld_usldrnamld`(`ld_usldrnamld`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for labor_dispatch_order
-- ----------------------------
DROP TABLE IF EXISTS `labor_dispatch_order`;
CREATE TABLE `labor_dispatch_order`  (
  `ld_id` int(11) NOT NULL AUTO_INCREMENT,
  `ld_positionName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职位名称',
  `ld_keyboard` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关键字',
  `ld_attribute` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单属性（人才输入订单，劳务派遣订单）',
  `ld_isOpen` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否对外公开',
  `ld_salary` decimal(10, 2) DEFAULT NULL COMMENT '薪资',
  `ld_additionalWelfare` int(255) DEFAULT NULL,
  `ld_minAge` int(255) NOT NULL COMMENT '最小的年龄限制',
  `ld_maxAge` int(255) DEFAULT NULL,
  `ld_eduRequirements` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学历要求',
  `ld_experience` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作年限（必填）',
  `ld_jobNature` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作性质（必填）',
  `ld_recruitsNumber` int(11) NOT NULL COMMENT '招聘人数（必填）',
  `ld_arriveTime` date NOT NULL COMMENT '到岗时间（必填）',
  `ld_city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布城市（必填）',
  `ld_endTime` date NOT NULL COMMENT '结束时间（最长不能超过30天）',
  `ld_workAddress` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作地点（必填）',
  `ld_jobAdvantage` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位优势（必填）',
  `ld_JobDescription` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位描述（2000字以内）（必填）',
  `ld_tenureRequirements` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任职要求（2000字以内）（必填）',
  `ld_state` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单状态（草稿 ，审核中，发布中，失效）',
  `ld_sendTime` date NOT NULL COMMENT '发布时间',
  `ld_updateTime` date DEFAULT NULL COMMENT '更新时间',
  `e_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ld_id`) USING BTREE,
  INDEX `e_id`(`e_id`) USING BTREE,
  CONSTRAINT `labor_dispatch_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `enterprise` (`e_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for labor_enterprise_order
-- ----------------------------
DROP TABLE IF EXISTS `labor_enterprise_order`;
CREATE TABLE `labor_enterprise_order`  (
  `leo_id` int(11) NOT NULL AUTO_INCREMENT,
  `leo_personnelNum` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `leo_state` date NOT NULL,
  `leo_freshTime` date NOT NULL,
  `lp_id` int(11) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  `ld_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`leo_id`) USING BTREE,
  INDEX `lp_id`(`lp_id`) USING BTREE,
  INDEX `p_id`(`p_id`) USING BTREE,
  INDEX `ld_id`(`ld_id`) USING BTREE,
  CONSTRAINT `labor_enterprise_order_ibfk_1` FOREIGN KEY (`lp_id`) REFERENCES `labor_personnel` (`lp_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `labor_enterprise_order_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `position` (`p_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `labor_enterprise_order_ibfk_3` FOREIGN KEY (`ld_id`) REFERENCES `labor_dispatch` (`ld_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for labor_image
-- ----------------------------
DROP TABLE IF EXISTS `labor_image`;
CREATE TABLE `labor_image`  (
  `li_id` int(11) NOT NULL AUTO_INCREMENT,
  `li_image` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `li_imgNum` int(11) NOT NULL,
  `ld_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`li_id`) USING BTREE,
  INDEX `ld_id`(`ld_id`) USING BTREE,
  CONSTRAINT `labor_image_ibfk_1` FOREIGN KEY (`ld_id`) REFERENCES `labor_dispatch` (`ld_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for labor_introduction
-- ----------------------------
DROP TABLE IF EXISTS `labor_introduction`;
CREATE TABLE `labor_introduction`  (
  `li_id` int(11) NOT NULL AUTO_INCREMENT,
  `ld_id` int(11) DEFAULT NULL,
  `li_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `li_abbreviation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `li_nature` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `li_scale` int(11) NOT NULL,
  `li_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `li_header` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `li_category` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `li_website` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `li_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `li_postalCode` char(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `li_profile` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `li_authentication` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `li_createTime` date NOT NULL,
  `li_updateTime` date DEFAULT NULL,
  PRIMARY KEY (`li_id`) USING BTREE,
  UNIQUE INDEX `li_name`(`li_name`) USING BTREE,
  INDEX `ld_id`(`ld_id`) USING BTREE,
  CONSTRAINT `labor_introduction_ibfk_1` FOREIGN KEY (`ld_id`) REFERENCES `labor_dispatch` (`ld_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for labor_personnel
-- ----------------------------
DROP TABLE IF EXISTS `labor_personnel`;
CREATE TABLE `labor_personnel`  (
  `lp_id` int(11) NOT NULL AUTO_INCREMENT,
  `lp_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lp_lpex` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lp_age` int(11) NOT NULL,
  `lp_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lp_degree` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lp_jobAge` int(11) NOT NULL,
  `lp_workType` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lp_nativePlace` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lp_addrelplp` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lp_maritalStatus` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lp_state` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ld_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`lp_id`) USING BTREE,
  INDEX `ld_id`(`ld_id`) USING BTREE,
  CONSTRAINT `labor_personnel_ibfk_1` FOREIGN KEY (`ld_id`) REFERENCES `labor_dispatch` (`ld_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `m_who` int(11) NOT NULL,
  `m_to` int(11) NOT NULL,
  `m_content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_record
-- ----------------------------
DROP TABLE IF EXISTS `order_record`;
CREATE TABLE `order_record`  (
  `od_id` int(11) NOT NULL AUTO_INCREMENT,
  `leo_id` int(11) DEFAULT NULL,
  `or_singleCase` int(11) DEFAULT NULL,
  PRIMARY KEY (`od_id`) USING BTREE,
  INDEX `leo_id`(`leo_id`) USING BTREE,
  CONSTRAINT `order_record_ibfk_1` FOREIGN KEY (`leo_id`) REFERENCES `labor_enterprise_order` (`leo_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `p_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '职位编号',
  `p_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职位名称',
  `p_companyName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '企业名称',
  `p_keyWord` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关键字（自定义关键字 ，必填项）',
  `p_salary` decimal(10, 2) NOT NULL COMMENT '薪资',
  `p_additionalWelfare` int(255) NOT NULL COMMENT '附加福利（加成，默认为0）',
  `p_minAge` int(255) NOT NULL COMMENT '最小的年龄限制',
  `p_maxAge` int(255) NOT NULL COMMENT '最大年龄限制',
  `p_eduRequirements` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学历要求',
  `p_experience` int(11) NOT NULL COMMENT '工作年限(几年工作经验)',
  `p_jobNature` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作性质',
  `p_recruitsNumber` int(11) NOT NULL COMMENT '招聘人数',
  `p_city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发布城市',
  `p_workCity` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工作城市',
  `p_endTime` date NOT NULL COMMENT '结束日期（职位发布的时间限制）',
  `p_jobAdvantage` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位优势',
  `p_JobDescription` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位描述（2000字以内）',
  `p_tenureRequirements` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任职要求（2000字以内）',
  `p_state` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职位状态（发布中，草稿，审核中，不合格，已下线）',
  `p_lack` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '（是否职位急聘）',
  `p_sendTime` date NOT NULL COMMENT '发布职位的时间',
  `p_updateTime` date DEFAULT NULL COMMENT '更新职位的时间',
  `p_readNum` int(11) DEFAULT NULL COMMENT '被浏览的数量（通过这个字段评判是否热门）',
  `e_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`p_id`) USING BTREE,
  INDEX `e_id`(`e_id`) USING BTREE,
  CONSTRAINT `position_ibfk_1` FOREIGN KEY (`e_id`) REFERENCES `enterprise` (`e_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for project_experience
-- ----------------------------
DROP TABLE IF EXISTS `project_experience`;
CREATE TABLE `project_experience`  (
  `pe_id` int(11) NOT NULL AUTO_INCREMENT,
  `pe_start` date DEFAULT NULL COMMENT '教育实践开始时间',
  `pe_end` date DEFAULT NULL COMMENT '结束时间',
  `pe_school` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学校名称',
  `pe_department` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '系',
  `pe_major` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '专业',
  `r_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pe_id`) USING BTREE,
  INDEX `r_id`(`r_id`) USING BTREE,
  CONSTRAINT `project_experience_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `resume` (`r_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for resume
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume`  (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `r_rname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简历名',
  `r_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '真实姓名',
  `r_sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `r_age` int(255) NOT NULL,
  `r_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `r_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系电话',
  `r_experience` tinyint(10) DEFAULT NULL COMMENT '工作年限（工作时间）',
  `r_qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `r_weixin` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `r_judgement` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '自我评价',
  `u_id` int(255) DEFAULT NULL,
  `r_speciality` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '特长',
  `r_personalRoom` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '个人空间（个人博客等等……）',
  `r_softwareSkills` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '软件技能',
  `r_expressDelivery` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否快速投递（如果是，则默认使用此简历进行投递职位申请）',
  `r_sendtime` date NOT NULL COMMENT '制作简历的时间',
  `r_whoRead` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '被谁浏览过（针对企业用户）',
  PRIMARY KEY (`r_id`) USING BTREE,
  UNIQUE INDEX `r_rname`(`r_rname`) USING BTREE,
  INDEX `u_id`(`u_id`) USING BTREE,
  CONSTRAINT `resume_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of resume
-- ----------------------------
INSERT INTO `resume` VALUES (1, 'java', '1', '男', 19, '份饭', '151', 5, '11', '11', '号', 1, 'java', '无', 'eclipse', '否', '2018-02-13', 'null');
INSERT INTO `resume` VALUES (2, 'java实习', '杨磊', '男', 21, '嘎嘎屋', '15182564763', 7, '1509655239', '4874128489128', '好，很好，非常好', 2, '', '没有', 'ai，ps等', '否', '2018-05-14', '习大大浏览过您的简历');
INSERT INTO `resume` VALUES (3, 'Ui设计师', '糙汉', '男', 123, '戛纳湾并将', '165497897', 3, '1515154569', '13165156156', '自信源于实力', 3, '爱社交爱自由', '无', 'ai，ps', '否', '2018-05-30', '无');

-- ----------------------------
-- Table structure for shielded_enterprise
-- ----------------------------
DROP TABLE IF EXISTS `shielded_enterprise`;
CREATE TABLE `shielded_enterprise`  (
  `se_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `e_id` int(11) DEFAULT NULL,
  `se_shieldedTime` date NOT NULL COMMENT '屏蔽时间',
  PRIMARY KEY (`se_id`) USING BTREE,
  INDEX `u_id`(`u_id`) USING BTREE,
  INDEX `e_id`(`e_id`) USING BTREE,
  CONSTRAINT `shielded_enterprise_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `users` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `shielded_enterprise_ibfk_2` FOREIGN KEY (`e_id`) REFERENCES `enterprise` (`e_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for train_course
-- ----------------------------
DROP TABLE IF EXISTS `train_course`;
CREATE TABLE `train_course`  (
  `tc_id` int(11) NOT NULL AUTO_INCREMENT,
  `tc_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `t_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tc_id`) USING BTREE,
  UNIQUE INDEX `tc_name`(`tc_name`) USING BTREE,
  INDEX `t_id`(`t_id`) USING BTREE,
  CONSTRAINT `train_course_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `trains` (`t_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for train_enterprise_order
-- ----------------------------
DROP TABLE IF EXISTS `train_enterprise_order`;
CREATE TABLE `train_enterprise_order`  (
  `teo_id` int(11) NOT NULL AUTO_INCREMENT,
  `teo_personnelNum` int(11) NOT NULL,
  `teo_state` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teo_freshTime` date DEFAULT NULL,
  `ts_id` int(11) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  `t_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`teo_id`) USING BTREE,
  INDEX `ts_id`(`ts_id`) USING BTREE,
  INDEX `p_id`(`p_id`) USING BTREE,
  INDEX `t_id`(`t_id`) USING BTREE,
  CONSTRAINT `train_enterprise_order_ibfk_1` FOREIGN KEY (`ts_id`) REFERENCES `train_students` (`ts_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `train_enterprise_order_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `position` (`p_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `train_enterprise_order_ibfk_3` FOREIGN KEY (`t_id`) REFERENCES `trains` (`t_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for train_experience
-- ----------------------------
DROP TABLE IF EXISTS `train_experience`;
CREATE TABLE `train_experience`  (
  `te_id` int(11) NOT NULL AUTO_INCREMENT,
  `te_start` date DEFAULT NULL,
  `te_end` date DEFAULT NULL,
  `te_school` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `te_course` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `r_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`te_id`) USING BTREE,
  INDEX `r_id`(`r_id`) USING BTREE,
  CONSTRAINT `train_experience_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `resume` (`r_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for train_profile
-- ----------------------------
DROP TABLE IF EXISTS `train_profile`;
CREATE TABLE `train_profile`  (
  `tp_id` int(11) NOT NULL AUTO_INCREMENT,
  `tp_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tp_property` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tp_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tp_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tp_logo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tp_createTime` date NOT NULL,
  `tp_contact` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tp_contactSex` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tp_contactPhone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tp_website` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tp_email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tp_profile` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tp_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `t_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tp_id`) USING BTREE,
  UNIQUE INDEX `tp_name`(`tp_name`) USING BTREE,
  INDEX `t_id`(`t_id`) USING BTREE,
  CONSTRAINT `train_profile_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `trains` (`t_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for train_students
-- ----------------------------
DROP TABLE IF EXISTS `train_students`;
CREATE TABLE `train_students`  (
  `ts_id` int(11) NOT NULL AUTO_INCREMENT,
  `ts_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ts_tsex` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ts_age` int(11) NOT NULL,
  `ts_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ts_degree` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ts_jobAge` int(11) NOT NULL,
  `ts_expecttsalary` int(11) NOT NULL,
  `ts_addretsts` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ts_state` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tc_id` int(11) DEFAULT NULL,
  `t_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ts_id`) USING BTREE,
  INDEX `tc_id`(`tc_id`) USING BTREE,
  INDEX `t_id`(`t_id`) USING BTREE,
  CONSTRAINT `train_students_ibfk_1` FOREIGN KEY (`tc_id`) REFERENCES `train_course` (`tc_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `train_students_ibfk_2` FOREIGN KEY (`t_id`) REFERENCES `trains` (`t_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trains
-- ----------------------------
DROP TABLE IF EXISTS `trains`;
CREATE TABLE `trains`  (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_ustrnamt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `t_password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`t_id`) USING BTREE,
  UNIQUE INDEX `t_ustrnamt`(`t_ustrnamt`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_header` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'default.jpg',
  PRIMARY KEY (`u_id`) USING BTREE,
  UNIQUE INDEX `u_phone`(`u_phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '1', '1', 'default.jpg');
INSERT INTO `users` VALUES (2, '2', '2', 'default.jpg');
INSERT INTO `users` VALUES (3, '3', '3', 'default.jpg');

SET FOREIGN_KEY_CHECKS = 1;
