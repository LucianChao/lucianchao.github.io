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
