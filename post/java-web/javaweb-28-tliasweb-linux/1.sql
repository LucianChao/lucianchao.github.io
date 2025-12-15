/*
Navicat MySQL Data Transfer

Source Server         : 8.0
Source Server Version : 80034
Source Host           : localhost:3306
Source Database       : tlias

Target Server Type    : MYSQL
Target Server Version : 80034
File Encoding         : 65001

Date: 2025-05-11 08:30:40
*/
create database if not EXISTS tlias default CHARSET utf8mb4;

use tlias;

-- ----------------------------
-- Table structure for clazz
-- ----------------------------
DROP TABLE IF EXISTS `clazz`;
CREATE TABLE `clazz` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID,主键',
  `name` varchar(30) COLLATE utf8mb3_bin NOT NULL COMMENT '班级名称',
  `room` varchar(20) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '班级教室',
  `begin_date` date NOT NULL COMMENT '开课时间',
  `end_date` date NOT NULL COMMENT '结课时间',
  `master_id` int unsigned DEFAULT NULL COMMENT '班主任ID, 关联员工表ID',
  `subject` tinyint unsigned NOT NULL COMMENT '学科, 1:java, 2:前端, 3:大数据, 4:Python, 5:Go, 6: 嵌入式',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='班级表';

-- ----------------------------
-- Records of clazz
-- ----------------------------
INSERT INTO `clazz` VALUES ('1', 'JavaEE就业163期改', '212', '2023-04-30', '2023-06-29', '10', '1', '2023-06-01 17:08:23', '2023-06-01 17:39:58');
INSERT INTO `clazz` VALUES ('2', 'Data Science 15期', '602教室', '2025-08-03', '2026-01-10', '5', '5', '2025-05-08 20:28:01', '2025-05-08 20:28:01');
INSERT INTO `clazz` VALUES ('3', 'java138期', '311教室', '2025-04-11', '2025-09-27', '1', '1', '2025-05-08 20:17:06', '2025-05-08 20:17:06');
INSERT INTO `clazz` VALUES ('8', 'Python42期', '405教室', '2025-05-01', '2025-10-15', '2', '2', '2025-05-08 20:28:01', '2025-05-08 20:28:01');
INSERT INTO `clazz` VALUES ('9', 'C++68期', '203教室', '2025-05-22', '2025-11-30', '2', '3', '2025-05-08 20:28:01', '2025-05-08 20:28:01');
INSERT INTO `clazz` VALUES ('10', 'Web开发98期', '501教室', '2025-07-22', '2025-12-25', '1', '4', '2025-05-08 20:28:01', '2025-05-08 20:28:01');
INSERT INTO `clazz` VALUES ('13', 'java大神班', '三楼110', '2025-05-06', '2025-05-30', '6', '1', null, null);

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID, 主键',
  `name` varchar(10) COLLATE utf8mb3_bin NOT NULL COMMENT '部门名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='部门表';

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '学工部', '2023-09-25 09:47:40', '2024-07-25 09:47:40');
INSERT INTO `dept` VALUES ('2', '教研部', '2023-09-25 09:47:40', '2024-08-09 15:17:04');
INSERT INTO `dept` VALUES ('3', '咨询部', '2023-09-25 09:47:40', '2024-07-30 21:26:24');
INSERT INTO `dept` VALUES ('4', '就业部', '2023-09-25 09:47:40', '2024-07-25 09:47:40');
INSERT INTO `dept` VALUES ('5', '人事部', '2023-09-25 09:47:40', '2024-07-25 09:47:40');
INSERT INTO `dept` VALUES ('6', '行政部', '2023-11-30 20:56:37', '2024-07-30 20:56:37');
INSERT INTO `dept` VALUES ('10', '服务端开发', '2025-05-10 08:37:03', '2025-05-10 08:37:03');

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID,主键',
  `username` varchar(20) COLLATE utf8mb3_bin NOT NULL COMMENT '用户名',
  `password` varchar(50) COLLATE utf8mb3_bin DEFAULT '123456' COMMENT '密码',
  `name` varchar(10) COLLATE utf8mb3_bin NOT NULL COMMENT '姓名',
  `gender` tinyint unsigned NOT NULL COMMENT '性别, 1:男, 2:女',
  `phone` char(11) COLLATE utf8mb3_bin NOT NULL COMMENT '手机号',
  `job` tinyint unsigned DEFAULT NULL COMMENT '职位, 1 班主任, 2 讲师 , 3 学工主管, 4 教研主管, 5 咨询师',
  `salary` int unsigned DEFAULT NULL COMMENT '薪资',
  `image` varchar(300) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '头像',
  `entry_date` date DEFAULT NULL COMMENT '入职日期',
  `dept_id` int unsigned DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='员工表';

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES ('1', 'shinaian', '123456', '施耐庵', '1', '13309090001', '4', '15000', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2000-01-01', '2', '2023-10-20 16:35:33', '2025-05-10 11:20:32');
INSERT INTO `emp` VALUES ('2', 'songjiang', '123456', '宋江', '1', '13309090002', '2', '8600', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2015-01-01', '2', '2023-10-20 16:35:33', '2023-10-20 16:35:37');
INSERT INTO `emp` VALUES ('3', 'lujunyi', '123456', '卢俊义', '1', '13309090003', '2', '8900', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2008-05-01', '2', '2023-10-20 16:35:33', '2023-10-20 16:35:39');
INSERT INTO `emp` VALUES ('4', 'wuyong', '123456', '吴用', '1', '13309090004', '2', '9200', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2007-01-01', '2', '2023-10-20 16:35:33', '2023-10-20 16:35:41');
INSERT INTO `emp` VALUES ('5', 'gongsunsheng', '123456', '公孙胜', '1', '13309090005', '2', '9500', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2012-12-05', '2', '2023-10-20 16:35:33', '2023-10-20 16:35:43');
INSERT INTO `emp` VALUES ('6', 'huosanniang', '123456', '扈三娘', '2', '13309090006', '3', '6500', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2013-09-05', '1', '2023-10-20 16:35:33', '2023-10-20 16:35:45');
INSERT INTO `emp` VALUES ('7', 'chaijin', '123456', '柴进', '1', '13309090007', '1', '4700', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2005-08-01', '1', '2023-10-20 16:35:33', '2023-10-20 16:35:47');
INSERT INTO `emp` VALUES ('8', 'likui', '123456', '李逵', '1', '13309090008', '1', '4800', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2014-11-09', '1', '2023-10-20 16:35:33', '2023-10-20 16:35:49');
INSERT INTO `emp` VALUES ('9', 'wusong', '123456', '武松', '1', '13309090009', '1', '4900', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2011-03-11', '1', '2023-10-20 16:35:33', '2023-10-20 16:35:51');
INSERT INTO `emp` VALUES ('10', 'linchong', '123456', '林冲', '1', '13309090010', '1', '5000', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2013-09-05', '1', '2023-10-20 16:35:33', '2023-10-20 16:35:53');
INSERT INTO `emp` VALUES ('11', 'huyanzhuo', '123456', '呼延灼', '1', '13309090011', '2', '9700', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2007-02-01', '2', '2023-10-20 16:35:33', '2023-10-20 16:35:55');
INSERT INTO `emp` VALUES ('12', 'xiaoliguang', '123456', '小李广', '1', '13309090012', '2', '10000', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2008-08-18', '2', '2023-10-20 16:35:33', '2023-10-20 16:35:57');
INSERT INTO `emp` VALUES ('13', 'yangzhi', '123456', '杨志', '1', '13309090013', '1', '5300', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2012-11-01', '1', '2023-10-20 16:35:33', '2023-10-20 16:35:59');
INSERT INTO `emp` VALUES ('14', 'shijin', '123456', '史进', '1', '13309090014', '2', '10600', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2002-08-01', '2', '2023-10-20 16:35:33', '2023-10-20 16:36:01');
INSERT INTO `emp` VALUES ('15', 'sunerniang', '123456', '孙二娘', '2', '13309090015', '2', '10900', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2011-05-01', '2', '2023-10-20 16:35:33', '2023-10-20 16:36:03');
INSERT INTO `emp` VALUES ('16', 'luzhishen', '123456', '鲁智深', '1', '13309090016', '2', '9600', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2010-01-01', '2', '2023-10-20 16:35:33', '2023-10-20 16:36:05');
INSERT INTO `emp` VALUES ('17', 'liying', '12345678', '李应', '1', '13309090017', '1', '5800', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2015-03-21', '1', '2023-10-20 16:35:33', '2023-10-20 16:36:07');
INSERT INTO `emp` VALUES ('18', 'shiqian', '123456', '时迁', '1', '13309090018', '2', '10200', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2015-01-01', '2', '2023-10-20 16:35:33', '2023-10-20 16:36:09');
INSERT INTO `emp` VALUES ('19', 'gudasao', '123456', '顾大嫂', '2', '13309090019', '2', '10500', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2008-01-01', '2', '2023-10-20 16:35:33', '2023-10-20 16:36:11');
INSERT INTO `emp` VALUES ('20', 'ruanxiaoer', '123456', '阮小二', '1', '13309090020', '2', '10800', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2018-01-01', '2', '2023-10-20 16:35:33', '2023-10-20 16:36:13');
INSERT INTO `emp` VALUES ('21', 'ruanxiaowu', '123456', '阮小五', '1', '13309090021', '5', '5200', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2015-01-01', '3', '2023-10-20 16:35:33', '2023-10-20 16:36:15');
INSERT INTO `emp` VALUES ('22', 'ruanxiaoqi', '123456', '阮小七', '1', '13309090022', '5', '5500', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2016-01-01', '3', '2023-10-20 16:35:33', '2023-10-20 16:36:17');
INSERT INTO `emp` VALUES ('23', 'ruanji', '123456', '阮籍', '1', '13309090023', '5', '5800', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2012-01-01', '3', '2023-10-20 16:35:33', '2023-10-20 16:36:19');
INSERT INTO `emp` VALUES ('24', 'tongwei', '123456', '童威', '1', '13309090024', '5', '5000', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2006-01-01', '3', '2023-10-20 16:35:33', '2023-10-20 16:36:21');
INSERT INTO `emp` VALUES ('25', 'tongmeng', '123456', '童猛', '1', '13309090025', '5', '4800', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2002-01-01', '3', '2023-10-20 16:35:33', '2023-10-20 16:36:23');
INSERT INTO `emp` VALUES ('26', 'yanshun', '123456', '燕顺', '1', '13309090026', '5', '5400', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2011-01-01', '3', '2023-10-20 16:35:33', '2023-11-08 22:12:46');
INSERT INTO `emp` VALUES ('27', 'lijun', '123456', '李俊', '1', '13309090027', '2', '6600', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2004-01-01', '2', '2023-10-20 16:35:33', '2023-11-16 17:56:59');
INSERT INTO `emp` VALUES ('28', 'lizhong', '123456', '李忠', '1', '13309090028', '5', '5000', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2007-01-01', '3', '2023-10-20 16:35:33', '2023-11-17 16:34:22');
INSERT INTO `emp` VALUES ('37', 'gaojiaqi', '123456', '高家齐', '2', '15528596232', '2', '100', 'https://java-fap.oss-cn-beijing.aliyuncs.com/2025/05/73b786ca-65c5-4922-807d-c34348b10416.jpg', '2025-05-07', '5', '2025-05-10 20:14:25', '2025-05-10 20:14:25');
INSERT INTO `emp` VALUES ('38', 'hanjunhui', '123456', '韩俊辉', '2', '12345678910', '1', '100', 'https://java-fap.oss-cn-beijing.aliyuncs.com/2025/05/7ae3cf5c-bf4a-48b7-8822-e1a40b30fa1b.jpg', '2025-05-06', '1', '2025-05-10 20:20:45', '2025-05-10 20:20:45');
INSERT INTO `emp` VALUES ('39', 'huitailang', '123456', '灰太狼', '1', '12345678911', '2', '100', 'https://java-fap.oss-cn-beijing.aliyuncs.com/2025/05/4c9dc8ac-657c-455f-ada3-944469c25548.jpg', '2025-05-05', '1', '2025-05-10 20:33:41', '2025-05-10 20:33:41');
INSERT INTO `emp` VALUES ('40', 'linpingzhi', '123456', '林平之', '1', '18809091234', '1', '8000', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2022-09-03-07-37-38222.jpg', '2022-09-18', '1', '2025-05-10 22:03:15', '2025-05-10 22:03:15');

-- ----------------------------
-- Table structure for emp_expr
-- ----------------------------
DROP TABLE IF EXISTS `emp_expr`;
CREATE TABLE `emp_expr` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID, 主键',
  `emp_id` int unsigned DEFAULT NULL COMMENT '员工ID',
  `begin` date DEFAULT NULL COMMENT '开始时间',
  `end` date DEFAULT NULL COMMENT '结束时间',
  `company` varchar(50) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '公司名称',
  `job` varchar(50) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '职位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='工作经历';

-- ----------------------------
-- Records of emp_expr
-- ----------------------------
INSERT INTO `emp_expr` VALUES ('1', '2', '2025-05-09', '2025-05-21', 'heima', '00');
INSERT INTO `emp_expr` VALUES ('2', '2', '2025-05-08', '2025-05-22', 'shang', '11');
INSERT INTO `emp_expr` VALUES ('6', '1', '2025-05-16', '2025-05-23', 'heima', '22');
INSERT INTO `emp_expr` VALUES ('7', '1', '2025-05-16', '2025-06-24', '南京音乐节', 'rapper');
INSERT INTO `emp_expr` VALUES ('8', '37', '2025-05-30', '2025-06-26', '黑马', '学生');
INSERT INTO `emp_expr` VALUES ('9', '37', '2025-05-15', '2025-06-24', '尚硅谷', '学生');
INSERT INTO `emp_expr` VALUES ('10', null, '2025-05-31', '2025-06-07', 'heima', '111');
INSERT INTO `emp_expr` VALUES ('11', null, '2025-05-23', '2025-06-17', 'adada', 'adada');
INSERT INTO `emp_expr` VALUES ('12', null, '2025-05-08', '2025-06-30', 'ada', 'aaa');
INSERT INTO `emp_expr` VALUES ('13', '39', '2025-05-23', '2025-06-24', '羊村', '111');
INSERT INTO `emp_expr` VALUES ('14', '39', '2025-05-24', '2025-06-26', '狼存', '222');

-- ----------------------------
-- Table structure for operate_log
-- ----------------------------
DROP TABLE IF EXISTS `operate_log`;
CREATE TABLE `operate_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `operate_emp_id` int unsigned DEFAULT NULL COMMENT '操作人ID',
  `operate_time` datetime DEFAULT NULL COMMENT '操作时间',
  `class_name` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '操作的类名',
  `method_name` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '操作的方法名',
  `method_params` varchar(1000) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '方法参数',
  `return_value` varchar(2000) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '返回值, 存储json格式',
  `cost_time` int DEFAULT NULL COMMENT '方法执行耗时, 单位:ms',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='操作日志表';

-- ----------------------------
-- Records of operate_log
-- ----------------------------
INSERT INTO `operate_log` VALUES ('1', '2', '2025-05-10 20:46:10', 'com.example.controller.ClazzController', 'updateClazz', '[Clazz(id=1, name=JavaEE就业163期改, room=212, beginDate=2023-04-30, endDate=2023-06-29, masterId=10, subject=1, createTime=2023-06-01T17:08:23, updateTime=2023-06-01T17:39:58, masterName=null, status=null)]', 'Result(code=1, msg=操作成功, data=修改成功)', '7');
INSERT INTO `operate_log` VALUES ('2', '2', '2025-05-10 21:00:14', 'com.example.controller.ClazzController', 'updateClazz', '[Clazz(id=10, name=Web开发98期, room=501教室, beginDate=2025-07-22, endDate=2025-12-25, masterId=1, subject=4, createTime=2025-05-08T20:28:01, updateTime=2025-05-08T20:28:01, masterName=null, status=null)]', 'Result(code=1, msg=操作成功, data=修改成功)', '9');
INSERT INTO `operate_log` VALUES ('3', '2', '2025-05-10 21:00:40', 'com.example.controller.ClazzController', 'addClazz', '[Clazz(id=null, name=java大神班, room=三楼110, beginDate=2025-05-06, endDate=2025-05-30, masterId=6, subject=1, createTime=null, updateTime=null, masterName=null, status=null)]', 'Result(code=1, msg=操作成功, data=添加成功)', '6');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID,主键',
  `name` varchar(10) COLLATE utf8mb3_bin NOT NULL COMMENT '姓名',
  `no` char(10) COLLATE utf8mb3_bin NOT NULL COMMENT '学号',
  `gender` tinyint unsigned NOT NULL COMMENT '性别, 1: 男, 2: 女',
  `phone` varchar(11) COLLATE utf8mb3_bin NOT NULL COMMENT '手机号',
  `id_card` char(18) COLLATE utf8mb3_bin NOT NULL COMMENT '身份证号',
  `is_college` tinyint unsigned NOT NULL COMMENT '是否来自于院校, 1:是, 0:否',
  `address` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '联系地址',
  `degree` tinyint unsigned DEFAULT NULL COMMENT '最高学历, 1:初中, 2:高中, 3:大专, 4:本科, 5:硕士, 6:博士',
  `graduation_date` date DEFAULT NULL COMMENT '毕业时间',
  `clazz_id` int unsigned NOT NULL COMMENT '班级ID, 关联班级表ID',
  `violation_count` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '违纪次数',
  `violation_score` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '违纪扣分',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `no` (`no`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `id_card` (`id_card`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin COMMENT='学员表';

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '段誉', '2022000001', '1', '18800000001', '110120000300200001', '1', '北京市昌平区建材城西路1号', '1', '2021-07-01', '2', '0', '0', '2024-11-14 21:22:19', '2024-11-15 16:20:59');
INSERT INTO `student` VALUES ('2', '萧峰', '2022000002', '1', '18800210003', '110120000300200002', '1', '北京市昌平区建材城西路2号', '2', '2022-07-01', '1', '0', '0', '2024-11-14 21:22:19', '2024-11-14 21:22:19');
INSERT INTO `student` VALUES ('3', '虚竹', '2022000003', '1', '18800013001', '110120000300200003', '1', '北京市昌平区建材城西路3号', '2', '2024-07-01', '1', '0', '0', '2024-11-14 21:22:19', '2024-11-14 21:22:19');
INSERT INTO `student` VALUES ('4', '萧远山', '2022000004', '1', '18800003211', '110120000300200004', '1', '北京市昌平区建材城西路4号', '3', '2024-07-01', '1', '0', '0', '2024-11-14 21:22:19', '2024-11-14 21:22:19');
INSERT INTO `student` VALUES ('5', '阿朱', '2022000005', '2', '18800160002', '110120000300200005', '1', '北京市昌平区建材城西路5号', '4', '2020-07-01', '1', '0', '0', '2024-11-14 21:22:19', '2024-11-14 21:22:19');
INSERT INTO `student` VALUES ('6', '阿紫', '2022000006', '2', '18800000034', '110120000300200006', '1', '北京市昌平区建材城西路6号', '4', '2021-07-01', '2', '0', '0', '2024-11-14 21:22:19', '2024-11-14 21:22:19');
INSERT INTO `student` VALUES ('7', '游坦之', '2022000007', '1', '18800000067', '110120000300200007', '1', '北京市昌平区建材城西路7号', '4', '2022-07-01', '2', '0', '0', '2024-11-14 21:22:19', '2024-11-14 21:22:19');
INSERT INTO `student` VALUES ('8', '康敏', '2022000008', '2', '18800000077', '110120000300200008', '1', '北京市昌平区建材城西路8号', '5', '2024-07-01', '2', '0', '0', '2024-11-14 21:22:19', '2024-11-14 21:22:19');
INSERT INTO `student` VALUES ('9', '徐长老', '2022000009', '1', '18800000341', '110120000300200009', '1', '北京市昌平区建材城西路9号', '3', '2024-07-01', '2', '0', '0', '2024-11-14 21:22:19', '2024-11-14 21:22:19');
INSERT INTO `student` VALUES ('10', '云中鹤', '2022000010', '1', '18800006571', '110120000300200010', '1', '北京市昌平区建材城西路10号', '2', '2020-07-01', '2', '0', '0', '2024-11-14 21:22:19', '2024-11-14 21:22:19');
INSERT INTO `student` VALUES ('11', '钟万仇', '2022000011', '1', '18800000391', '110120000300200011', '1', '北京市昌平区建材城西路11号', '4', '2021-07-01', '1', '0', '0', '2024-11-14 21:22:19', '2024-11-15 16:21:24');
INSERT INTO `student` VALUES ('12', '崔百泉', '2022000012', '1', '18800000781', '110120000300200018', '1', '北京市昌平区建材城西路12号', '4', '2022-07-05', '8', '7', '20', '2024-11-14 21:22:19', '2024-12-13 14:33:58');
INSERT INTO `student` VALUES ('13', '耶律洪基', '2022000013', '1', '18800008901', '110120000300200013', '1', '北京市昌平区建材城西路13号', '4', '2024-07-01', '2', '0', '0', '2024-11-14 21:22:19', '2024-11-15 16:21:21');
INSERT INTO `student` VALUES ('14', '天山童姥', '2022000014', '2', '18800009201', '110120000300200014', '1', '北京市昌平区建材城西路14号', '4', '2024-07-01', '1', '0', '0', '2024-11-14 21:22:19', '2024-11-15 16:21:17');
INSERT INTO `student` VALUES ('17', '王语嫣', '2022000017', '2', '18800007601', '110120000300200017', '1', '北京市昌平区建材城西路17号', '2', '2022-07-01', '9', '0', '0', '2024-11-14 21:22:19', '2025-05-10 14:58:56');
INSERT INTO `student` VALUES ('18', '郑成功', '2024001101', '1', '13309092345', '110110110110110110', '0', '北京市昌平区回龙观街道88号', '5', '2021-07-01', '8', '4', '11', '2024-11-15 16:26:18', '2024-11-15 16:40:10');
INSERT INTO `student` VALUES ('19', '冯奥鹏', '5120200575', '1', '17633895579', '412827200204135715', '1', '黑马程序员', '4', '2025-05-09', '3', '1', '5', '2025-05-10 14:11:00', '2025-05-10 14:42:52');

create table emp_log
(
    id           int unsigned primary key auto_increment comment 'ID,主键',
    operate_time datetime      null comment '操作时间',
    info         varchar(2000) null comment '日志信息'
) comment '员工日志表';
create table operate_log
(
    id             int unsigned not null primary key auto_increment comment 'ID',
    operate_emp_id int unsigned default null comment '操作人ID',
    operate_time   datetime default null comment '操作时间',
    class_name     varchar(100) default null comment '操作的类名',
    method_name    varchar(100) default null comment '操作的方法名',
    method_params  varchar(1000) default null comment '方法参数',
    return_value   varchar(2000) default null comment '返回值',
    cost_time      bigint default null comment '方法执行耗时, 单位:ms'
) comment '操作日志表';
insert into `operate_log` values (1,10,'2023-11-08 20:52:07','com.javaweb.controller.DeptController','addDept', '[{"deptName":"开发部","deptDesc":"开发部描述"}]', '{"id":1}', 10);
create table emp_login_log
(
    id         int unsigned primary key auto_increment comment 'ID',
    username   varchar(20) comment '用户名',
    password   varchar(32) comment '密码',
    login_time datetime comment '登录时间',
    is_success tinyint unsigned comment '是否成功,1:成功;0:失败',
    jwt        varchar(1000) comment 'JWT令牌',
    cost_time  int comment '登录耗时, 单位:ms'
) comment '登录日志表';
create table file_upload_log
(
    id          int unsigned primary key auto_increment comment 'ID',
    filename   varchar(100) comment '文件名',
    size   bigint comment '文件大小, 单位:字节B',
    extname   varchar(10) comment '文件后缀名',
    url   varchar(300) comment '阿里云OSS访问URL',
    upload_time datetime comment '上传时间'
) comment '文件上传日志表';

