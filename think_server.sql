/*
 Navicat Premium Data Transfer

 Source Server         : cms
 Source Server Type    : MySQL
 Source Server Version : 50642
 Source Host           : localhost:3306
 Source Schema         : think_server

 Target Server Type    : MySQL
 Target Server Version : 50642
 File Encoding         : 65001

 Date: 04/08/2019 19:45:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user`  (
  `id` int(1) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES (1, 'admin', '123456');

-- ----------------------------
-- Table structure for article_comment
-- ----------------------------
DROP TABLE IF EXISTS `article_comment`;
CREATE TABLE `article_comment`  (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `article_id` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `comment_user_id` int(6) NOT NULL,
  `comment_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `create_date` char(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article_comment
-- ----------------------------
INSERT INTO `article_comment` VALUES (7, '7', 12, 'as扥ad发we挼去', '2018-10-25 16:10:37');
INSERT INTO `article_comment` VALUES (8, '7', 12, 'as扥ad发we挼去哈哈', '2018-10-25 16:12:00');
INSERT INTO `article_comment` VALUES (9, '7', 12, 'sadfasqr123123', '2018-10-26 15:21:08');
INSERT INTO `article_comment` VALUES (10, '7', 12, 'sadfasqr123123', '2018-10-26 15:21:24');
INSERT INTO `article_comment` VALUES (11, '7', 12, 'sadfasqr123123', '2018-10-26 15:24:21');
INSERT INTO `article_comment` VALUES (12, '7', 12, 'sadfasqr123123', '2018-10-26 15:24:45');
INSERT INTO `article_comment` VALUES (13, '8', 12, 'sadfasqr123123', '2018-10-26 15:27:24');

-- ----------------------------
-- Table structure for article_kind_list
-- ----------------------------
DROP TABLE IF EXISTS `article_kind_list`;
CREATE TABLE `article_kind_list`  (
  `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article_kind_list
-- ----------------------------
INSERT INTO `article_kind_list` VALUES (1, '风景');
INSERT INTO `article_kind_list` VALUES (2, '人像');
INSERT INTO `article_kind_list` VALUES (3, '游记');

-- ----------------------------
-- Table structure for article_list
-- ----------------------------
DROP TABLE IF EXISTS `article_list`;
CREATE TABLE `article_list`  (
  `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cover_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `kind_id` int(6) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `home_show` int(1) NULL DEFAULT 0,
  `views` int(6) NULL DEFAULT 0,
  `praises` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `comments` int(6) NULL DEFAULT 0,
  `create_date` char(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_date` char(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article_list
-- ----------------------------
INSERT INTO `article_list` VALUES (7, '文章名', 'http://img1.imgtn.bdimg.com/it/u=371772476,1548437417&fm=26&gp=0.jpg', 1, NULL, '123123123', 1, 5, '12,5,4,3,1,2', 6, '2018-10-24 16:28:14', '2018-10-26 15:29:53');
INSERT INTO `article_list` VALUES (8, '123124', 'http://img1.imgtn.bdimg.com/it/u=371772476,1548437417&fm=26&gp=0.jpg', 1, NULL, '<p>123123123</p>', 1, 0, '12', 1, '2018-10-24 16:28:19', NULL);
INSERT INTO `article_list` VALUES (9, '123124', 'http://img1.imgtn.bdimg.com/it/u=371772476,1548437417&fm=26&gp=0.jpg', 1, NULL, '123123123', 0, 0, NULL, 0, '2018-10-23 16:10:13', NULL);
INSERT INTO `article_list` VALUES (10, '123123', 'http://localhost:8360/static/uploadimg/nu99kphuz.jpg', 2, NULL, '<p>123123</p>', 0, 0, NULL, 0, '2018-10-24 11:17:40', NULL);
INSERT INTO `article_list` VALUES (11, '123123', 'http://localhost:8360/static/uploadimg/nu99kphuz.jpg', 2, NULL, '<p>123123</p>', 0, 0, NULL, 0, '2018-10-24 11:18:56', NULL);
INSERT INTO `article_list` VALUES (12, '123', 'http://localhost:8360/static/uploadimg/b3x1yp4l4p4.jpg', 1, NULL, '<p>123</p>', 1, 0, NULL, 0, '2018-10-24 11:19:29', NULL);
INSERT INTO `article_list` VALUES (13, '文章名', 'http://img1.imgtn.bdimg.com/it/u=371772476,1548437417&fm=26&gp=0.jpg', 3, NULL, '123123123', 0, 0, NULL, 0, '2018-10-24 15:18:10', NULL);
INSERT INTO `article_list` VALUES (14, '文章名', 'http://localhost:8360/static/uploadimg/9qtszlsc1im.png', 3, NULL, '123123123', 0, 0, NULL, 0, '2018-10-24 15:20:11', NULL);
INSERT INTO `article_list` VALUES (15, '文章名', 'http://localhost:8360/static/uploadimg/9qtszlsc1im.png', 3, NULL, '123123123', 0, 0, NULL, 0, '2018-10-24 15:20:18', NULL);
INSERT INTO `article_list` VALUES (16, '内容回显测试', 'http://localhost:8360/static/uploadimg/oq6kciz4iv.png', 2, NULL, '<p>内容回显<img src=\"http://localhost:8360/static/uploadimg/j7fl9iei8gm.png\"></p>', 0, 1, '0', 0, '2018-10-24 15:26:17', NULL);
INSERT INTO `article_list` VALUES (21, '文章名', 'http://pic23.nipic.com/20120816/10630322_204821643000_2.jpg', 1, NULL, '123123123', 0, 0, NULL, 0, '2018-10-26 15:11:45', '2018-10-26 15:11:45');
INSERT INTO `article_list` VALUES (22, '文章名', 'http://up.enterdesk.com/edpic_source/cf/08/63/cf086352b55948489accbdd2b2b69b46.jpg', 1, NULL, '123123123', 0, 0, NULL, 0, '2018-10-26 18:49:57', '2018-10-26 18:49:57');
INSERT INTO `article_list` VALUES (23, '文章名', 'http://up.enterdesk.com/edpic_source/cf/08/63/cf086352b55948489accbdd2b2b69b46.jpg', 1, NULL, '<p>123123123</p>', 1, 0, NULL, 0, '2018-10-26 18:50:18', '2018-10-26 18:51:07');
INSERT INTO `article_list` VALUES (24, '文章名', 'http://up.enterdesk.com/edpic_source/cf/08/63/cf086352b55948489accbdd2b2b69b46.jpg', 1, NULL, '123123123', 0, 0, NULL, 0, '2018-10-26 18:53:25', '2018-10-26 18:53:25');
INSERT INTO `article_list` VALUES (25, '文章名', 'http://up.enterdesk.com/edpic_source/cf/08/63/cf086352b55948489accbdd2b2b69b46.jpg', 1, '文章描述', '<p>123123123</p>', 1, 6, NULL, 0, '2018-10-26 18:55:38', '2018-10-26 18:56:08');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `birthday` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `register_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_login_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `user_level_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `nickname` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `register_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `openid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_name`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
