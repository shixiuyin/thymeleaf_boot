/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : bj1801

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2018-06-12 19:18:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL DEFAULT '0',
  `account_name` varchar(255) DEFAULT NULL,
  `money` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', '黄成', '1');
INSERT INTO `account` VALUES ('2', '李俊杰', '19799');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `deptno` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门编号',
  `dname` varchar(20) NOT NULL COMMENT '部门名称',
  `loc` varchar(30) NOT NULL COMMENT '部门地址',
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '运营部', '广东深圳宝安');
INSERT INTO `dept` VALUES ('2', '财务部', '深圳');
INSERT INTO `dept` VALUES ('4', '测试部', '深圳');
INSERT INTO `dept` VALUES ('5', '小卖部', '华美居1楼');
INSERT INTO `dept` VALUES ('8', '天龙八部', '福田');

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `empno` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `ename` varchar(20) NOT NULL COMMENT '员工名称',
  `job` varchar(30) NOT NULL COMMENT '岗位',
  `mgr` int(11) DEFAULT NULL COMMENT '上级编号',
  `hiredate` date NOT NULL COMMENT '入职日期',
  `sal` double NOT NULL COMMENT '工资',
  `deptno` int(11) NOT NULL COMMENT '部门编号',
  PRIMARY KEY (`empno`),
  KEY `FK_DEPT_NO` (`deptno`),
  CONSTRAINT `FK_DEPT_NO` FOREIGN KEY (`deptno`) REFERENCES `dept` (`deptno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES ('15', '阿加莎克里斯蒂', '作家', '2', '2018-05-28', '23000', '2');
INSERT INTO `emp` VALUES ('26', '亚里士多德', '简拉基。次德', '1', '2018-06-16', '20000000', '1');
INSERT INTO `emp` VALUES ('27', '达芬奇', '画家', '3', '2018-06-09', '200000', '1');
INSERT INTO `emp` VALUES ('28', '莫扎特', '音乐家', '5', '2018-06-10', '60000', '8');
INSERT INTO `emp` VALUES ('29', '大力哥', '喝大力', '1', '2018-06-23', '1024', '1');
INSERT INTO `emp` VALUES ('30', '陈一发儿', '老司机', '3', '2018-06-10', '888888', '5');
INSERT INTO `emp` VALUES ('33', '鸠摩智', '打乔峰', '1', '2018-06-16', '20000000', '1');
INSERT INTO `emp` VALUES ('40', '波澜哥', '捡破烂', '2', '2018-06-16', '20000000', '1');
INSERT INTO `emp` VALUES ('41', '波澜哥', '捡破烂', '2', '2018-06-16', '20000000', '1');
INSERT INTO `emp` VALUES ('42', '简。拉基。次德', '金阿拉基', '1', '2018-06-08', '121', '1');
INSERT INTO `emp` VALUES ('43', '简。拉基。次德', '金阿拉基', '1', '2018-06-08', '121', '1');
INSERT INTO `emp` VALUES ('44', '大力哥', '喝大力', '2', '2018-06-16', '121', '1');

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users` (
  `uId` int(11) NOT NULL AUTO_INCREMENT,
  `uName` varchar(20) NOT NULL,
  `uPwd` varchar(16) NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES ('1', 'aa', '123', '1234', '12345');
INSERT INTO `sys_users` VALUES ('2', '旺财', '123', '1234', '12345');
INSERT INTO `sys_users` VALUES ('3', 'bb', '123', '123412', '122');
INSERT INTO `sys_users` VALUES ('4', 'cc', '123', '12', 'qw');
INSERT INTO `sys_users` VALUES ('5', 'dd', '123', '12', '12');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `userPwd` varchar(255) DEFAULT NULL,
  `userAge` int(11) DEFAULT NULL,
  `userSex` varchar(255) DEFAULT NULL,
  `userAddr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=1026 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('4', '坦格利安', '123456', '100', 'w', '广东');
INSERT INTO `users` VALUES ('7', '及时雨', '12', '30', 'm', '山东');
INSERT INTO `users` VALUES ('13', '赵子龙', '112233', '8', 'm', '常山');
INSERT INTO `users` VALUES ('999', '赵日天', '123', '30', 'm', '深圳');
INSERT INTO `users` VALUES ('1001', '来福', '123', '20', 'm', '广东深圳');
INSERT INTO `users` VALUES ('1004', '旺财', '123', '20', 'm', '广东深圳');
INSERT INTO `users` VALUES ('1006', '赵大锤', '123', '20', 'm', '广东深圳');
INSERT INTO `users` VALUES ('1007', '三毛', '112233', '120', 'm', '常山');
INSERT INTO `users` VALUES ('1010', '叶良辰', '123', '30', 'm', '广州');
INSERT INTO `users` VALUES ('1011', '龙傲天', '123', '30', 'm', '深圳');
INSERT INTO `users` VALUES ('1013', 'tomcat', 'cat', '12', 'm', '宝安');
INSERT INTO `users` VALUES ('1014', '老虎', 'cat', '100', 'm', '宝安');
INSERT INTO `users` VALUES ('1023', '马化腾', 'tiger', '40', 'm', '宝安');
INSERT INTO `users` VALUES ('1024', '三毛', '112233', '120', 'm', '常山');
INSERT INTO `users` VALUES ('1025', 'Mars', '123', null, null, null);
