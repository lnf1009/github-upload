/*
Navicat MySQL Data Transfer

Source Server         : lnf
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : student

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2020-07-06 22:02:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for table_course
-- ----------------------------
DROP TABLE IF EXISTS `table_course`;
CREATE TABLE `table_course` (
  `cNum` varchar(25) NOT NULL,
  `cName` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`cNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of table_course
-- ----------------------------
INSERT INTO `table_course` VALUES ('201', '英语');
INSERT INTO `table_course` VALUES ('202', '高等数学');
INSERT INTO `table_course` VALUES ('203', '计算机组成原理');
INSERT INTO `table_course` VALUES ('204', '大学体育');
INSERT INTO `table_course` VALUES ('205', '操作系统');
INSERT INTO `table_course` VALUES ('206', '软件工程');

-- ----------------------------
-- Table structure for table_score
-- ----------------------------
DROP TABLE IF EXISTS `table_score`;
CREATE TABLE `table_score` (
  `stuNum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cNum` varchar(255) NOT NULL,
  `stuScore` varchar(255) NOT NULL,
  PRIMARY KEY (`stuNum`,`cNum`),
  KEY `FKql59yvmyno5a5gqjipk4uv138` (`cNum`),
  CONSTRAINT `FKql59yvmyno5a5gqjipk4uv138` FOREIGN KEY (`cNum`) REFERENCES `table_course` (`cNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of table_score
-- ----------------------------
INSERT INTO `table_score` VALUES ('20171101', '202', '80');
INSERT INTO `table_score` VALUES ('20171101', '203', '95');
INSERT INTO `table_score` VALUES ('20171101', '204', '84');
INSERT INTO `table_score` VALUES ('20171102', '202', '80');
INSERT INTO `table_score` VALUES ('20171102', '203', '96');
INSERT INTO `table_score` VALUES ('20171102', '204', '63');
INSERT INTO `table_score` VALUES ('20171103', '202', '69');
INSERT INTO `table_score` VALUES ('20171103', '203', '76');
INSERT INTO `table_score` VALUES ('20171103', '204', '95');
INSERT INTO `table_score` VALUES ('20171201', '202', '98');
INSERT INTO `table_score` VALUES ('20171201', '203', '78');
INSERT INTO `table_score` VALUES ('20171201', '204', '88');
INSERT INTO `table_score` VALUES ('20171202', '202', '82');
INSERT INTO `table_score` VALUES ('20171202', '203', '63');
INSERT INTO `table_score` VALUES ('20171202', '204', '56');
INSERT INTO `table_score` VALUES ('20171203', '202', '78');
INSERT INTO `table_score` VALUES ('20171203', '203', '85');
INSERT INTO `table_score` VALUES ('20171203', '204', '94');

-- ----------------------------
-- Table structure for table_student
-- ----------------------------
DROP TABLE IF EXISTS `table_student`;
CREATE TABLE `table_student` (
  `stuNum` varchar(255) NOT NULL,
  `stuName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stuSex` varchar(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `stuAge` int NOT NULL,
  `score` varchar(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`stuNum`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of table_student
-- ----------------------------
INSERT INTO `table_student` VALUES ('123', '11', '11', '11', '11');
INSERT INTO `table_student` VALUES ('201', '123', '男', '18', '720');
INSERT INTO `table_student` VALUES ('20171101', '楚天一', '男', '21', '610');
INSERT INTO `table_student` VALUES ('20171102', '李四', '男', '22', '530');
INSERT INTO `table_student` VALUES ('20171103', '张三', '男', '18', '720');
INSERT INTO `table_student` VALUES ('20171104', '木木', '男', '21', '500');
INSERT INTO `table_student` VALUES ('20171105', '木木', '男', '21', '468');
INSERT INTO `table_student` VALUES ('20171106', '高总', '女', '28', '469');
INSERT INTO `table_student` VALUES ('20171107', '八戒', '男', '18', '250');
INSERT INTO `table_student` VALUES ('20171108', '悟空', '男 ', '19', '720');
INSERT INTO `table_student` VALUES ('20171109', '悟净', '男', '20', '610');
INSERT INTO `table_student` VALUES ('20171110', '张三', '男', '21', '470');
INSERT INTO `table_student` VALUES ('20171112', '廖林丰', '男', '18', '720');
INSERT INTO `table_student` VALUES ('20171201', '莉哥', '女', '23', '473');
INSERT INTO `table_student` VALUES ('20171202', '二力', '女', '22', '425');
INSERT INTO `table_student` VALUES ('20171203', '猫喵', '男', '23', '459');
INSERT INTO `table_student` VALUES ('20171204', '汪楠', '女', '23', '500');
INSERT INTO `table_student` VALUES ('20171208', '邱琳', '女', '24', '462');
INSERT INTO `table_student` VALUES ('20171209', '小红', '女', '20', '428');
INSERT INTO `table_student` VALUES ('20171210', '小绿', '女', '25', '524');
INSERT INTO `table_student` VALUES ('20171211', '小兰', '女', '22', '425');
INSERT INTO `table_student` VALUES ('20171212', '小明', '男', '23', '250');
INSERT INTO `table_student` VALUES ('20171213', '小白', '男', '21', '530');

-- ----------------------------
-- Table structure for table_user
-- ----------------------------
DROP TABLE IF EXISTS `table_user`;
CREATE TABLE `table_user` (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of table_user
-- ----------------------------
INSERT INTO `table_user` VALUES ('123', '111');
INSERT INTO `table_user` VALUES ('admin', 'admin');
INSERT INTO `table_user` VALUES ('lnf', '123');
INSERT INTO `table_user` VALUES ('root', '123');
