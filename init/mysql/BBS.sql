
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lf_category
-- ----------------------------
DROP TABLE IF EXISTS `lf_category`;
CREATE TABLE `lf_category`  (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `cate_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `is_top` int(11) NULL DEFAULT 0 COMMENT '是否推荐(1推荐)',
  `cover_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '图片',
  PRIMARY KEY (`cate_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lf_category
-- ----------------------------
INSERT INTO `lf_category` VALUES (1, '校园', 0, 'http://pic.linfeng.tech/test/20220210/88148b0cd20f4ad4a09ce61866024281.jpg');
INSERT INTO `lf_category` VALUES (2, '音乐', 1, 'http://pic.linfeng.tech/test/20220207/8d796540337d4dd48ae11143fc570b77.jpg');
INSERT INTO `lf_category` VALUES (3, '生活', 1, 'http://pic.linfeng.tech/test/20220207/69aaaff2132447dc9c4b893ce53e242d.jpg');
INSERT INTO `lf_category` VALUES (4, '兴趣', 0, 'http://pic.linfeng.tech/test/20220210/c7d2e8489a5642ba91b7b5f97c282141.jpg');
INSERT INTO `lf_category` VALUES (5, '运动', 0, 'http://pic.linfeng.tech/test/20220207/69aaaff2132447dc9c4b893ce53e242d.jpg');
INSERT INTO `lf_category` VALUES (6, '旅行', 1, 'http://pic.linfeng.tech/test/20220207/69aaaff2132447dc9c4b893ce53e242d.jpg');
INSERT INTO `lf_category` VALUES (7, '知识', 0, 'http://pic.linfeng.tech/test/20220210/9621f4992cf64393be7567159b8d13f8.jpeg');
INSERT INTO `lf_category` VALUES (8, '动漫', 0, 'http://pic.linfeng.tech/test/20220207/69aaaff2132447dc9c4b893ce53e242d.jpg');
INSERT INTO `lf_category` VALUES (9, '情感', 0, 'http://pic.linfeng.tech/test/20220207/69aaaff2132447dc9c4b893ce53e242d.jpg');
INSERT INTO `lf_category` VALUES (10, '娱乐', 0, 'http://pic.linfeng.tech/test/20220207/69aaaff2132447dc9c4b893ce53e242d.jpg');
INSERT INTO `lf_category` VALUES (11, '宠物', 0, 'http://pic.linfeng.tech/test/20220207/69aaaff2132447dc9c4b893ce53e242d.jpg');
INSERT INTO `lf_category` VALUES (13, '美食', 0, 'http://pic.linfeng.tech/test/20220207/69aaaff2132447dc9c4b893ce53e242d.jpg');
INSERT INTO `lf_category` VALUES (14, '职场', 0, 'http://pic.linfeng.tech/test/20220207/69aaaff2132447dc9c4b893ce53e242d.jpg');
INSERT INTO `lf_category` VALUES (15, '摄影', 1, 'http://pic.linfeng.tech/test/20220207/69aaaff2132447dc9c4b893ce53e242d.jpg');
INSERT INTO `lf_category` VALUES (16, '时尚', 0, 'http://pic.linfeng.tech/test/20220207/69aaaff2132447dc9c4b893ce53e242d.jpg');
INSERT INTO `lf_category` VALUES (17, '阅读', 0, 'http://pic.linfeng.tech/test/20220207/69aaaff2132447dc9c4b893ce53e242d.jpg');
INSERT INTO `lf_category` VALUES (18, '游戏', 0, 'http://pic.linfeng.tech/test/20220207/69aaaff2132447dc9c4b893ce53e242d.jpg');
INSERT INTO `lf_category` VALUES (19, '打卡', 0, 'http://pic.linfeng.tech/test/20220207/2858506e3dca4a9a8367201ed04b80bb.png');
INSERT INTO `lf_category` VALUES (22, '开发', 0, 'http://pic.linfeng.tech/test/20220207/223ba0004cf54969a68a0ffad58cc51f.png');
INSERT INTO `lf_category` VALUES (24, '仓前', 0, '');
INSERT INTO `lf_category` VALUES (25, '下沙', 0, '');
INSERT INTO `lf_category` VALUES (26, '玉皇山', 0, '');

-- ----------------------------
-- Table structure for lf_comment
-- ----------------------------
DROP TABLE IF EXISTS `lf_comment`;
CREATE TABLE `lf_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `pid` int(11) NULL DEFAULT 0 COMMENT '父级id',
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '评论类型:1帖子',
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '评论作者ID',
  `to_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '被回复用户ID',
  `post_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '评论帖子ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '评论内容',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '评论状态',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lf_comment
-- ----------------------------
INSERT INTO `lf_comment` VALUES (1, 0, 1, '1646416130308378624', '', 94, '多少money', 1, '2023-09-19 15:51:45');

-- ----------------------------
-- Table structure for lf_comment_thumbs
-- ----------------------------
DROP TABLE IF EXISTS `lf_comment_thumbs`;
CREATE TABLE `lf_comment_thumbs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `c_id` int(11) NOT NULL COMMENT '评论id',
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lf_comment_thumbs
-- ----------------------------

-- ----------------------------
-- Table structure for lf_follow
-- ----------------------------
DROP TABLE IF EXISTS `lf_follow`;
CREATE TABLE `lf_follow`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `follow_uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关注的用户id',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uid`(`uid`, `follow_uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lf_follow
-- ----------------------------

-- ----------------------------
-- Table structure for lf_link
-- ----------------------------
DROP TABLE IF EXISTS `lf_link`;
CREATE TABLE `lf_link`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '路径',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `type` int(11) NULL DEFAULT 1 COMMENT '3圈子页轮播图',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lf_link
-- ----------------------------

-- ----------------------------
-- Table structure for lf_post
-- ----------------------------
DROP TABLE IF EXISTS `lf_post`;
CREATE TABLE `lf_post`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `topic_id` int(11) NULL DEFAULT 0 COMMENT '圈子id',
  `discuss_id` int(11) NULL DEFAULT 0 COMMENT '话题id',
  `vote_id` int(11) NULL DEFAULT NULL COMMENT '投票id',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `media` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '文件',
  `read_count` int(11) NULL DEFAULT 0 COMMENT '浏览量',
  `post_top` int(11) NULL DEFAULT 0 COMMENT '置顶',
  `type` int(11) NULL DEFAULT 1 COMMENT '帖子类型：1 图文 ，2视频 ，3文章，4投票',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址名称',
  `longitude` double(10, 6) NULL DEFAULT 0.000000 COMMENT '经度',
  `latitude` double(10, 6) NULL DEFAULT 0.000000 COMMENT '纬度',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '状态0正常1审核',
  `cut` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '帖子分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lf_post
-- ----------------------------
INSERT INTO `lf_post` VALUES (92, '1376417684140326912', 2, 0, NULL, 'wwx求偶', '测试测试wwx', '[]', 8, 0, 1, '', 0.000000, 0.000000, '2023-09-10 19:20:22', 0, '[1]');
INSERT INTO `lf_post` VALUES (93, '1376417684140326912', 2, 0, NULL, '1111', '测试测试', '[\"https://nxc666.oss-cn-hangzhou.aliyuncs.com/2182a9f538214da09abc4f40277594ef.png\"]', 1, 0, 1, '', 0.000000, 0.000000, '2023-09-10 20:23:53', 0, '[1,24]');
INSERT INTO `lf_post` VALUES (94, '1646416130308378624', 2, 0, NULL, '测试', '测试111', '[\"https://nxc666.oss-cn-hangzhou.aliyuncs.com/a91f4e666715425c94f4be91338b5b38.jpg\"]', 1, 0, 1, '', 0.000000, 0.000000, '2023-09-19 15:47:31', 0, '[1,5,24]');
INSERT INTO `lf_post` VALUES (95, '1646416130308378624', 2, 0, NULL, '20230921 23：28测试', '测试', '[]', 1, 0, 1, '', 0.000000, 0.000000, '2023-09-21 23:28:40', 0, '[1,11,24]');
INSERT INTO `lf_post` VALUES (96, '1646416130308378624', 2, 0, NULL, '20230922 16:22测试', '准备吃晚餐了', '[\"https://nxc666.oss-cn-hangzhou.aliyuncs.com/33b2b405389b4ae3a9d76a816f5e1148.jpg\"]', 1, 0, 1, '', 0.000000, 0.000000, '2023-09-22 16:23:48', 0, '[1,3,10]');
INSERT INTO `lf_post` VALUES (97, '1646416130308378624', 2, 0, NULL, '返回刷新帖子测试', '1', '[\"https://nxc666.oss-cn-hangzhou.aliyuncs.com/d4d0f095e13d41f5bc2ed3fdae930da0.png\"]', 1, 0, 1, '', 0.000000, 0.000000, '2023-09-22 16:26:22', 0, '[1]');
INSERT INTO `lf_post` VALUES (98, '1646416130308378624', 2, 0, NULL, '返回更新测试2', '2', '[]', 1, 0, 1, '', 0.000000, 0.000000, '2023-09-22 16:29:13', 0, '[1]');
INSERT INTO `lf_post` VALUES (99, '1646416130308378624', 2, 0, NULL, '3', '3', '[]', 1, 0, 1, '', 0.000000, 0.000000, '2023-09-22 16:30:07', 0, '[1]');

-- ----------------------------
-- Table structure for lf_post_collection
-- ----------------------------
DROP TABLE IF EXISTS `lf_post_collection`;
CREATE TABLE `lf_post_collection`  (
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `post_id` int(11) NOT NULL COMMENT '帖子id'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lf_post_collection
-- ----------------------------
INSERT INTO `lf_post_collection` VALUES ('1376417684140326912', 92);
INSERT INTO `lf_post_collection` VALUES ('1376417684140326912', 93);
INSERT INTO `lf_post_collection` VALUES ('1646416130308378624', 95);
INSERT INTO `lf_post_collection` VALUES ('1646416130308378624', 99);

-- ----------------------------
-- Table structure for lf_post_fabulous
-- ----------------------------
DROP TABLE IF EXISTS `lf_post_fabulous`;
CREATE TABLE `lf_post_fabulous`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `post_id` int(11) NOT NULL COMMENT '帖子id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lf_post_fabulous
-- ----------------------------

-- ----------------------------
-- Table structure for lf_system
-- ----------------------------
DROP TABLE IF EXISTS `lf_system`;
CREATE TABLE `lf_system`  (
  `config` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `extend` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`config`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lf_system
-- ----------------------------

-- ----------------------------
-- Table structure for lf_user
-- ----------------------------
DROP TABLE IF EXISTS `lf_user`;
CREATE TABLE `lf_user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `group_id` int(11) NOT NULL DEFAULT 2 COMMENT '用户组',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `gender` int(11) NOT NULL DEFAULT 0 COMMENT '性别(0未知，1男，2女)',
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '省份',
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '城市',
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小程序openid',
  `mp_openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公众号openid',
  `unionid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'unionid',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '状态',
  `intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '这个人很懒，没留下什么' COMMENT '个性签名',
  `integral` int(11) NULL DEFAULT 0 COMMENT '积分',
  `last_login_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后登录ip',
  `tag_str` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户标签',
  `type` int(11) NULL DEFAULT 0 COMMENT '0为普通用户，1官方账号2马甲虚拟用户',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lf_user
-- ----------------------------
INSERT INTO `lf_user` VALUES (1, '15678876545', 'piping', NULL, 2, 'http://pic.linfeng.tech/test/20220126/4515fc2cbed74d0b9163d35a12bd4c3b.png', 2, '浙江', '杭州', 'o7yfg4vyubvvxgjtaIuuuvcxcfGA', NULL, 'ajskajskajskajskasd', 1, '这个人很懒，没留下什么', 0, '39.130.106.136', '[\"萌新\",\"码农\",\"发帖达人\",\"运动\"]', 0, '2022-01-21 15:12:16', '2022-01-21 15:12:23');
INSERT INTO `lf_user` VALUES (2, NULL, 'kity', NULL, 2, 'http://pic.linfeng.tech/test/20220126/a58ae30c4bc44942afa4b9752bedc59b.jpeg', 1, '浙江', '宁波', 'o8cxg9vudddhsjjOK33TavcklbGA', NULL, NULL, 0, '这个人很懒，没留下什么', 0, '39.130.106.135', '[\"萌新\",\"码农\",\"发帖达人\",\"运动\"]', 0, '2022-01-21 15:12:26', '2022-01-21 15:12:28');
INSERT INTO `lf_user` VALUES (3, NULL, '天边的云', NULL, 2, 'https://thirdwx.qlogo.cn/mmopen/vi_32/jXkb3ugwib7xMoiaOpz03GLBDEsy9G6e7m0iaIpWoIt1UpTxCzibQA4M5dAicSjQBkOYA7Yu6jgrTKqmMiag9jtWl5Aw/132', 1, '', '浙江省杭州市 移通', 'o6z2m5Cc8jzhvANf42L5LQQRXsuu', NULL, NULL, 0, '这个人很懒', 0, '0:0:0:0:0:0:0:1', '[\"萌新\",\"圈子达人\",\"旅行\",\"软件开发\"]', 0, '2022-02-10 14:25:25', '2022-01-20 14:25:30');
INSERT INTO `lf_user` VALUES (4, NULL, '林风', NULL, 2, 'https://thirdwx.qlogo.cn/mmopen/vi_32/DicojWMHWdvIFD9tQa7XBt1iaTBQtYJ4icLE9z971WErrNXLLdFmPvACiaHpmibuCKicoTR8S1Z7iayXYynRwEFgVqlnw/132', 1, '', '浙江省宁波市 电信', 'o6z2m5DdnR0-9BdqZfK3Z3f_i4tt', NULL, NULL, 0, '这个人很懒，没留下什么', 0, '0:0:0:0:0:0:0:1', '[\"萌新\",\"码农\",\"发帖达人\",\"运动\"]', 1, '2022-04-15 12:37:39', '2022-01-27 14:21:58');
INSERT INTO `lf_user` VALUES (6, '15669210138', 'LF_968742', NULL, 2, 'http://pic.linfeng.tech/test/20220305/6c6b1a1f1a904d5bb155daa48d2a0649.jpg', 0, '', '浙江省宁波市 电信', NULL, NULL, NULL, 0, '这个人很懒，没留下什么', 0, '0:0:0:0:0:0:0:1', '[\"萌新\"]', 1, '2022-03-05 19:45:08', '2022-03-05 19:42:28');
INSERT INTO `lf_user` VALUES (7, '15105701666', 'LF_353869', NULL, 2, 'http://pic.linfeng.tech/test/20220126/4515fc2cbed74d0b9163d35a12bd4c3b.png', 0, '', '浙江省宁波市 电信', NULL, NULL, NULL, 0, '这个人很懒，没留下什么', 0, '0:0:0:0:0:0:0:1', '[\"萌新\"]', 0, '2022-04-03 14:20:01', '2022-04-03 14:18:40');
INSERT INTO `lf_user` VALUES (8, '13245677090', 'LF_79271821', NULL, 2, 'http://pic.linfeng.tech/test/20220126/4515fc2cbed74d0b9163d35a12bd4c3b.png', 0, '', '', NULL, NULL, NULL, 0, '这个人很懒，没留下什么', 0, NULL, '[\"新人\"]', 0, '2022-07-27 16:33:05', '2022-07-27 16:33:05');
INSERT INTO `lf_user` VALUES (12, NULL, '天边的云', NULL, 2, 'https://thirdwx.qlogo.cn/mmopen/vi_32/jXkb3ugwib7xMoiaOpz03GLBDEsy9G6e7m0iaIpWoIt1UpTxCzibQA4M5dAicSjQBkOYA7Yu6jgrTKqmMiag9jtWl5Aw/132', 0, '', '', 'o6z2m5Cc8jzhvANf42L5LQQRXsuY', NULL, NULL, 0, '这个人很懒，没留下什么', 0, NULL, '[\"新人\"]', 0, '2022-08-18 11:03:36', '2022-08-18 11:03:36');
INSERT INTO `lf_user` VALUES (13, '15890909999', 'LF_74950175', NULL, 2, 'http://pic.linfeng.tech/test/20220126/4515fc2cbed74d0b9163d35a12bd4c3b.png', 0, '', '', NULL, NULL, NULL, 0, '这个人很懒，没留下什么', 0, NULL, '[\"新人\"]', 0, '2022-09-04 10:48:54', '2022-09-04 10:48:54');
INSERT INTO `lf_user` VALUES (14, '17890909898', 'LF_55258784', NULL, 2, 'http://pic.linfeng.tech/test/20220126/4515fc2cbed74d0b9163d35a12bd4c3b.png', 0, '', '', NULL, NULL, NULL, 0, '这个人很懒，没留下什么', 0, NULL, '[\"新人\"]', 0, '2022-10-08 13:41:03', '2022-10-08 13:41:03');

SET FOREIGN_KEY_CHECKS = 1;
