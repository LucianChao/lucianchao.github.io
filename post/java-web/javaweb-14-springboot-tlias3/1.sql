CREATE TABLE `dept`
(
    `id`          int unsigned                    NOT NULL AUTO_INCREMENT COMMENT 'ID, 主键',
    `name`        varchar(10) COLLATE utf8mb3_bin NOT NULL COMMENT '部门名称',
    `create_time` datetime DEFAULT NULL COMMENT '创建时间',
    `update_time` datetime DEFAULT NULL COMMENT '修改时间',
    PRIMARY KEY (`id`),
    UNIQUE KEY `name` (`name`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 11
  DEFAULT CHARSET = utf8mb3
  COLLATE = utf8mb3_bin COMMENT ='部门表';

INSERT INTO `dept`
VALUES ('1', '学工部', '2023-09-25 09:47:40', '2024-07-25 09:47:40');
INSERT INTO `dept`
VALUES ('2', '教研部', '2023-09-25 09:47:40', '2024-08-09 15:17:04');
INSERT INTO `dept`
VALUES ('3', '咨询部', '2023-09-25 09:47:40', '2024-07-30 21:26:24');
INSERT INTO `dept`
VALUES ('4', '就业部', '2023-09-25 09:47:40', '2024-07-25 09:47:40');
INSERT INTO `dept`
VALUES ('5', '人事部', '2023-09-25 09:47:40', '2024-07-25 09:47:40');
INSERT INTO `dept`
VALUES ('6', '行政部', '2023-11-30 20:56:37', '2024-07-30 20:56:37');
INSERT INTO `dept`
VALUES ('10', '服务端开发', '2025-05-10 08:37:03', '2025-05-10 08:37:03');



CREATE TABLE `emp`
(
    `id`          int unsigned                    NOT NULL AUTO_INCREMENT COMMENT 'ID,主键',
    `username`    varchar(20) COLLATE utf8mb3_bin NOT NULL COMMENT '用户名',
    `password`    varchar(50) COLLATE utf8mb3_bin  DEFAULT '123456' COMMENT '密码',
    `name`        varchar(10) COLLATE utf8mb3_bin NOT NULL COMMENT '姓名',
    `gender`      tinyint unsigned                NOT NULL COMMENT '性别, 1:男, 2:女',
    `phone`       char(11) COLLATE utf8mb3_bin    NOT NULL COMMENT '手机号',
    `job`         tinyint unsigned                 DEFAULT NULL COMMENT '职位, 1 班主任, 2 讲师 , 3 学工主管, 4 教研主管, 5 咨询师',
    `salary`      int unsigned                     DEFAULT NULL COMMENT '薪资',
    `image`       varchar(300) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '头像',
    `entry_date`  date                             DEFAULT NULL COMMENT '入职日期',
    `dept_id`     int unsigned                     DEFAULT NULL COMMENT '部门ID',
    `create_time` datetime                         DEFAULT NULL COMMENT '创建时间',
    `update_time` datetime                         DEFAULT NULL COMMENT '修改时间',
    PRIMARY KEY (`id`)
) comment '员工表';

INSERT INTO `emp` VALUES ('1', 'shinaian', '123456', '肖佳', '1', '13309090001', '4', '15000', 'https://web-framework.oss-cn-hangzhou.aliyuncs.com/2023/1.jpg', '2000-01-01', '2', '2023-10-20 16:35:33', '2025-05-10 11:20:32');
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
