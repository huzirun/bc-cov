/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : springboot-vue

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 10/08/2021 14:33:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '作者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '出版日期',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '封面地址',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '明朝那些事', 60.00, 'xxx', '2010-07-01 00:00:00', 'http://localhost:9090/files/eb7942935c294ca1bc2a07d24b554d36', NULL);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '作者',
  `time` datetime NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (4, '4444', '<p>444444</p><p><br/></p><p>44444</p><p><br/></p><p><br/></p><p>555555<img src=\"https://img1.baidu.com/it/u=4110196045,3829597861&amp;fm=26&amp;fmt=auto&amp;gp=0.jpg\" contenteditable=\"false\" style=\"font-size: 14px; max-width: 100%;\"/></p>', '管理员', '2021-07-17 18:55:27');
INSERT INTO `news` VALUES (5, '77777', '<p>7777</p><p><br/></p><p><img src=\"http://localhost:9090/files/c536f6f2f0e94983951240d73d740601\" style=\"max-width:100%;\" contenteditable=\"false\" width=\"388\" height=\"388\"/><br/></p><p>8888</p><p><br/></p><p><img src=\"http://localhost:9090/files/b344314319f047cf9192ce64ca454674\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', '管理员', '2021-07-17 19:14:14');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `role` int(11) NULL DEFAULT NULL COMMENT '角色，1：管理员，2：普通用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin', '管理员', 32, '男', '火星', 1);
INSERT INTO `user` VALUES (13, 'zhang', '123', '张三', 20, '男', '木星', 2);

SET FOREIGN_KEY_CHECKS = 1;
