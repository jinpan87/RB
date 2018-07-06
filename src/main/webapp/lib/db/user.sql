/*
Navicat MySQL Data Transfer

Source Server         : lcy
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : lcy

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2014-11-21 13:58:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `state` varchar(255) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', '你好', '2');
INSERT INTO `user` VALUES ('3', '你好', '2');
INSERT INTO `user` VALUES ('4', '你好', '2');
INSERT INTO `user` VALUES ('5', '你好', '2');
INSERT INTO `user` VALUES ('6', '你好123', '2');
INSERT INTO `user` VALUES ('7', '你好1234', '2');
INSERT INTO `user` VALUES ('8', '你好1234', '2');
