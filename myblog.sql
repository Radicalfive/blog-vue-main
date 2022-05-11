/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : myblog

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 11/05/2022 16:40:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for m_blog
-- ----------------------------
DROP TABLE IF EXISTS `m_blog`;
CREATE TABLE `m_blog`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `created` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_blog
-- ----------------------------
INSERT INTO `m_blog` VALUES (1, 1, '生活就像海洋，只有意志坚强的人才能到达彼岸', '这里是摘要哈', '这里是内容', '2021-12-07 16:56:31', 0);
INSERT INTO `m_blog` VALUES (2, 1, '最值得学习的博客项目blog', 'blog是一个基于Springboot开发的博客学习项目，为了让项目融合更多的知识点，达到学习目的，编写了详细的从0到1开发文档。', '推荐阅读！！', '2021-12-07 16:58:57', 0);
INSERT INTO `m_blog` VALUES (3, 1, 'Snowflakes are kisses from heaven片片雪花，好似天上吻。', '视频中所用到的xshell和navicat直接获取哈！', '工具获取方式', '2021-12-07 16:58:37', 0);
INSERT INTO `m_blog` VALUES (7, 1, '且将新火试新茶 诗酒趁年华', '单例模式可能是代码最少的模式了，但是少不一定意味着简单，想要用好、用对单例模式，还真得费一番脑筋。', '作者：软件攻城狮 单例模式可能是代码最少的模式了，但是少不一定意味着简单，想要用好、用对单例模式，还真得费一番脑筋。', '2021-12-07 17:53:58', 0);
INSERT INTO `m_blog` VALUES (9, 1, '真正理解Mysql的四种隔离级别', '事务是应用程序中一系列严密的操作。', '事务是应用程序中一系列严密的操作，所有操作必须成功完成，否则在每个操作中所作的所有更改都会被撤消。也就是事务具有原子性，一个事务中的一系列的操作要么全部成功，要么一个都不做。\n\n事务的结束有两种，当事务中的所以步骤全部成功执行时，事务提交。如果其中一个步骤失败，将发生回滚操作，撤消撤消之前到事务开始时的所以操作。', '2021-12-07 17:00:21', 0);
INSERT INTO `m_blog` VALUES (10, 1, '博客项目blog上线啦！', '慕课网免费资源好久都没更新了，新教程大都付费', '再回到我们的blog项目，来些基本操作：github上给个star，B站视频给个三连支持。', '2021-12-07 16:57:44', 0);

-- ----------------------------
-- Table structure for m_user
-- ----------------------------
DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int NOT NULL,
  `created` datetime NULL DEFAULT NULL,
  `last_login` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `UK_USERNAME`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_user
-- ----------------------------
INSERT INTO `m_user` VALUES (1, 'radical', 'https://static01.imgkr.com/temp/f1475492dafd459aa6fdbac79782813b.jpg', '1561548288@qq.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '2022-05-03 10:44:01', NULL);
INSERT INTO `m_user` VALUES (2, 'wang', 'https://static01.imgkr.com/temp/f1475492dafd459aa6fdbac79782813b.jpg', NULL, 'e10adc3949ba59abbe56e057f20f883e', 0, '2021-12-07 13:44:01', NULL);

SET FOREIGN_KEY_CHECKS = 1;
