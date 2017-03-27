/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : work

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2017-03-28 07:03:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `announce`
-- ----------------------------
DROP TABLE IF EXISTS `announce`;
CREATE TABLE `announce` (
  `id` int(45) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creator` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of announce
-- ----------------------------
INSERT INTO `announce` VALUES ('1', '与i推他', '2017-01-16 00:00:00', '');
INSERT INTO `announce` VALUES ('2', '与i推他', '2017-01-16 00:00:00', '');
INSERT INTO `announce` VALUES ('3', '与i推他', '2017-01-16 00:00:00', '');
INSERT INTO `announce` VALUES ('4', '与i推他', '2017-01-16 00:00:00', '');
INSERT INTO `announce` VALUES ('5', '与i推他', '2017-01-16 00:00:00', '');
INSERT INTO `announce` VALUES ('6', '与i推他', '2017-01-16 00:00:00', '');
INSERT INTO `announce` VALUES ('7', '与i推他', '2017-01-16 00:00:00', '');
INSERT INTO `announce` VALUES ('8', '与i推他', '2017-01-16 00:00:00', '');
INSERT INTO `announce` VALUES ('9', '与i推他', '2017-01-16 00:00:00', '');
INSERT INTO `announce` VALUES ('10', '与i推他', '2017-01-16 00:00:00', '');
INSERT INTO `announce` VALUES ('11', '与i推他', '2017-01-16 00:00:00', '');
INSERT INTO `announce` VALUES ('12', '与i推他', '2017-01-16 00:00:00', '');
INSERT INTO `announce` VALUES ('13', '请同学们好好学习。', '2017-01-16 00:00:00', '');
INSERT INTO `announce` VALUES ('14', 'f\'g\'s\'d\'f\'g', '2017-01-16 00:00:00', '');
INSERT INTO `announce` VALUES ('15', '委任他为让他', '2017-01-16 00:00:00', '');
INSERT INTO `announce` VALUES ('16', '恭喜你，插入成功。', '2017-01-16 00:00:00', 'teacher');
INSERT INTO `announce` VALUES ('17', '67', '2017-01-16 00:00:00', 'teacher');
INSERT INTO `announce` VALUES ('18', '而它也让他也让他要', '2017-01-16 00:00:00', 'teacher');
INSERT INTO `announce` VALUES ('19', '而统一发个电话', '2017-01-16 00:00:00', 'teacher');
INSERT INTO `announce` VALUES ('20', '汤于容', '2017-01-17 00:00:00', 'teacher');
INSERT INTO `announce` VALUES ('21', '告诉对方公司的个人无关', '2017-01-17 21:46:13', 'teacher');
INSERT INTO `announce` VALUES ('22', '765', '2017-01-17 22:02:36', 'teacher');
INSERT INTO `announce` VALUES ('23', '同学们，请好好学习，天天向上。', '2017-02-05 11:13:48', 'teacher');

-- ----------------------------
-- Table structure for `task`
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `id` int(45) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `is_checked` int(45) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_name` varchar(45) DEFAULT NULL,
  `id` int(45) NOT NULL AUTO_INCREMENT,
  `password` varchar(45) DEFAULT NULL,
  `id_delete` int(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('student', '1', 'student', '0', 'student');
INSERT INTO `user` VALUES ('teacher', '2', 'teacher', '0', 'teacher');
INSERT INTO `user` VALUES ('admin', '3', 'admin', '0', 'admin');
