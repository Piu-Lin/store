SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for access
-- ----------------------------
DROP TABLE IF EXISTS `access`;
CREATE TABLE `access`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `type` tinyint(1) NULL DEFAULT NULL,
  `action_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `module_id` int(0) NULL DEFAULT NULL,
  `sort` int(0) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `add_time` int(0) NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 125 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of access
-- ----------------------------
INSERT INTO `access` VALUES (37, '商品管理', 3, '商品类型属性管理', '/goodsTypeAttr', 96, 100, '', 1582191358, 1);
INSERT INTO `access` VALUES (38, '商品管理', 3, '增加商品类型属性', '/goodsTypeAttr/add', 96, 100, '', 1582191781, 1);
INSERT INTO `access` VALUES (39, '商品管理', 3, '修改商品类型属性', '/goodsTypeAttr/edit', 96, 100, '', 1582191797, 1);
INSERT INTO `access` VALUES (40, '商品管理', 3, '执行增加 商品类型属性', '/goodsTypeAttr/doAdd', 96, 100, '', 1582191814, 1);
INSERT INTO `access` VALUES (41, '商品管理', 3, '执行修改 商品类型属性', '/goodsTypeAttr/doEdit', 96, 100, '', 1582191826, 1);
INSERT INTO `access` VALUES (52, '管理员管理', 1, '', '', 0, 1000, '管理员管理', 0, 1);
INSERT INTO `access` VALUES (53, '角色管理', 1, '', '', 0, 999, '角色管理', 0, 1);
INSERT INTO `access` VALUES (54, '管理员管理', 2, '管理员列表', '/manager', 52, 100, '管理员列表', 0, 1);
INSERT INTO `access` VALUES (55, '管理员管理', 2, '增加管理员', '/manager/add', 52, 100, '管理员列表', 0, 1);
INSERT INTO `access` VALUES (56, '管理员管理', 3, '编辑管理员', '/manager/edit', 52, 100, '编辑管理员', 0, 1);
INSERT INTO `access` VALUES (57, '管理员管理', 3, '删除管理员', '/manager/delete', 52, 100, '删除管理员', 0, 1);
INSERT INTO `access` VALUES (59, '角色管理', 2, '角色列表', '/role', 53, 100, '角色列表', 0, 1);
INSERT INTO `access` VALUES (60, '角色管理', 2, '增加角色', '/role/add', 53, 100, '增加角色', 0, 1);
INSERT INTO `access` VALUES (64, '权限管理', 2, '权限列表', '/access', 74, 100, '', 0, 1);
INSERT INTO `access` VALUES (65, '权限管理', 2, '增加权限', '/access/add', 74, 1002, '增加权限', 0, 1);
INSERT INTO `access` VALUES (72, '角色管理', 3, '编辑角色', '/role/edit', 53, 100, '编辑角色', 0, 1);
INSERT INTO `access` VALUES (73, '角色管理', 3, '删除角色', '/role/delete', 53, 100, '删除角色', 0, 1);
INSERT INTO `access` VALUES (74, '权限管理', 1, '', '', 0, 998, '权限管理', 0, 1);
INSERT INTO `access` VALUES (78, '管理员管理', 3, '执行增加', '/manager/doAdd', 52, 100, '执行增加', 0, 1);
INSERT INTO `access` VALUES (79, '管理员管理', 3, '执行修改', '/manager/doEdit', 52, 100, '', 0, 1);
INSERT INTO `access` VALUES (80, '角色管理', 3, '执行修改', '/role/doEdit', 53, 100, '', 0, 1);
INSERT INTO `access` VALUES (81, '角色管理', 3, '执行增加', '/role/doAdd', 53, 100, '', 0, 1);
INSERT INTO `access` VALUES (82, '角色管理', 3, '授权', '/role/auth', 53, 100, '', 0, 1);
INSERT INTO `access` VALUES (83, '角色管理', 3, '执行授权', '/role/doAuth', 53, 100, '', 0, 1);
INSERT INTO `access` VALUES (84, '角色管理', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `access` VALUES (85, '权限管理', 3, '修改权限', '/access/edit', 74, 100, '修改权限', 0, 1);
INSERT INTO `access` VALUES (86, '权限管理', 3, '执行增加', '/access/doAdd', 74, 100, '', 0, 1);
INSERT INTO `access` VALUES (87, '权限管理', 3, '执行修改', '/access/doEdit', 74, 100, '', 0, 1);
INSERT INTO `access` VALUES (88, '权限管理', 3, '删除权限', '/access/delete', 74, 100, '', 0, 1);
INSERT INTO `access` VALUES (89, '轮播图管理', 1, '', '', 0, 111, '轮播图管理', 0, 1);
INSERT INTO `access` VALUES (90, '轮播图管理', 2, '轮播图列表', '/focus', 89, 100, '', 0, 1);
INSERT INTO `access` VALUES (91, '轮播图管理', 2, '增加轮播图', '/focus/add', 89, 100, '增加轮播图', 0, 1);
INSERT INTO `access` VALUES (92, '轮播图管理', 3, '修改轮播图', '/focus/edit', 89, 100, '执行修改', 0, 1);
INSERT INTO `access` VALUES (93, '轮播图管理', 3, '执行增加', '/focus/doAdd', 89, 100, '执行增加', 0, 1);
INSERT INTO `access` VALUES (94, '轮播图管理', 3, '执行修改', '/focus/doEdit', 89, 100, '执行修改', 0, 1);
INSERT INTO `access` VALUES (95, '轮播图管理', 3, '执行删除', '/focus/delete', 89, 100, '执行删除', 0, 1);
INSERT INTO `access` VALUES (96, '商品管理', 1, '', '', 0, 100, '', 0, 1);
INSERT INTO `access` VALUES (97, '商品管理', 2, '商品列表', '/goods', 96, 100, '', 0, 1);
INSERT INTO `access` VALUES (98, '商品管理', 2, '商品分类', '/goodsCate', 96, 100, '商品分类', 0, 1);
INSERT INTO `access` VALUES (99, '商品管理', 3, '增加商品分类', '/goodsCate/add', 96, 100, '增加商品分类', 0, 1);
INSERT INTO `access` VALUES (100, '商品管理', 3, '修改商品分类', '/goodsCate/edit', 96, 100, '修改商品分类', 0, 1);
INSERT INTO `access` VALUES (101, '商品管理', 3, '执行增加商品分类', '/goodsCate/doAdd', 96, 100, '执行增加', 0, 1);
INSERT INTO `access` VALUES (102, '商品管理', 3, '执行修改商品分类', '/goodsCate/doEdit', 96, 100, '执行修改', 0, 1);
INSERT INTO `access` VALUES (103, '商品管理', 3, '删除商品分类', '/goodsCate/delete', 96, 100, '删除商品分类', 0, 1);
INSERT INTO `access` VALUES (104, '商品管理', 2, '商品类型', '/goodsType', 96, 100, '', 0, 1);
INSERT INTO `access` VALUES (105, '商品管理', 3, '增加商品类型', '/goodsType/add', 96, 100, '', 0, 1);
INSERT INTO `access` VALUES (106, '商品管理', 3, '商品类型-执行增加', '/goodsType/doAdd', 96, 100, '', 0, 1);
INSERT INTO `access` VALUES (108, '商品管理', 3, '修改商品类型', '/goodsType/edit', 96, 100, '', 0, 1);
INSERT INTO `access` VALUES (109, '商品管理', 3, '删除商品类型', '/goodsType/delete', 96, 100, '', 0, 1);
INSERT INTO `access` VALUES (110, '商品管理', 3, '商品类型-执行修改', '/goodsType/doEdit', 96, 100, '执行修改', 0, 1);
INSERT INTO `access` VALUES (111, '商品管理', 3, '增加商品', '/goods/add', 96, 100, '增加商品', 0, 1);
INSERT INTO `access` VALUES (112, '商品管理', 3, '修改商品', '/goods/edit', 96, 100, '修改商品', 0, 1);
INSERT INTO `access` VALUES (113, '商品管理', 3, '删除商品', '/goods/delete', 96, 100, '删除商品', 0, 1);
INSERT INTO `access` VALUES (114, '商品管理', 3, '执行-增加商品', '/goods/doAdd', 96, 100, '执行增加商品', 0, 1);
INSERT INTO `access` VALUES (115, '商品管理', 3, '执行-修改商品', '/goods/doEdit', 96, 100, '执行-修改商品', 0, 1);
INSERT INTO `access` VALUES (116, '其他配置', 1, '', '', 0, 100, '', 0, 1);
INSERT INTO `access` VALUES (117, '其他配置', 2, '导航管理', '/nav', 116, 100, '导航管理', 0, 1);
INSERT INTO `access` VALUES (118, '其他配置', 3, '增加导航', '/nav/add', 116, 100, '/nav/add', 0, 1);
INSERT INTO `access` VALUES (119, '其他配置', 3, '修改导航', '/nav/edit', 116, 100, '', 0, 1);
INSERT INTO `access` VALUES (120, '其他配置', 3, '导航-执行增加', '/nav/doAdd', 116, 100, '', 0, 1);
INSERT INTO `access` VALUES (121, '其他配置', 3, '导航-执行修改', '/nav/doEdit', 116, 100, '', 0, 1);
INSERT INTO `access` VALUES (122, '其他配置', 3, '删除导航', '/nav/delete', 116, 100, '', 0, 1);
INSERT INTO `access` VALUES (123, '其他配置', 2, '商店设置', '/setting', 116, 100, '', 0, 1);
INSERT INTO `access` VALUES (124, '其他配置', 3, '商店设置-执行修改', '/setting/doEdit', 116, 100, '', 0, 1);

-- ----------------------------
-- Table structure for focus
-- ----------------------------
DROP TABLE IF EXISTS `focus`;
CREATE TABLE `focus`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `focus_type` tinyint(1) NULL DEFAULT NULL,
  `focus_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(0) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `add_time` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of focus
-- ----------------------------
INSERT INTO `focus` VALUES (9, 'Redmi Note 9', 2, '', '', 611, 1, 1591535347);
INSERT INTO `focus` VALUES (10, '小米9', 1, '', '', 11233, 1, 1591535381);
INSERT INTO `focus` VALUES (12, '11111111111111', 2, '', '', 1000, 1, 1592315316);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_sn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cate_id` int(0) NULL DEFAULT NULL,
  `click_count` int(0) NULL DEFAULT NULL,
  `goods_number` int(0) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `market_price` decimal(10, 2) NULL DEFAULT NULL,
  `relation_goods` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_attr` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_gift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_fitting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `goods_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `is_delete` tinyint(0) NULL DEFAULT NULL,
  `is_hot` tinyint(0) NULL DEFAULT NULL,
  `is_best` tinyint(0) NULL DEFAULT NULL,
  `is_new` tinyint(0) NULL DEFAULT NULL,
  `goods_type_id` int(0) NULL DEFAULT NULL,
  `sort` int(0) NULL DEFAULT NULL,
  `status` tinyint(0) NULL DEFAULT NULL,
  `add_time` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (19, '小米9', '火爆热卖中，6GB+64GB/6GB+128GB闪降100元，到手价1299元起', '', 1, 100, 1000, 0.00, 0.00, '1,2', '尺寸:41,42,43', '2,5', '8GB+256GB', 'static/upload/20200617/1592392307796676500.jpg', '1,2', '1,2', '', '', '<p>火爆热卖中，6GB+64GB/6GB+128GB闪降100元，到手价1299元起</p>', 0, 0, 1, 1, 3, 100, 1, 1592392307);
INSERT INTO `goods` VALUES (20, '小米1111', '火爆热卖中，6GB+64GB/6GB+128GB闪降100元，到手价1299元起', '', 1, 100, 0, 124124.00, 124.00, '1', '4', '3,5', '12G+512GB', 'static/upload/20200617/1592392495500412500.jpg', '2', '3', '', '', '<p>火爆热卖中，6GB+64GB/6GB+128GB闪降100元，到手价1299元起</p>', 0, 1, 1, 0, 3, 0, 1, 1592392495);
INSERT INTO `goods` VALUES (21, '小米8年度旗舰222', '火爆热卖中，6GB+64GB/6GB+128GB闪降100元，到手价1299元起', '', 1, 100, 1000, 1112.00, 1113.00, '1,2', '1,2', '2,3,4,5', '3GB+32GB', 'static/upload/20200618/1592452490474942700.jpg', '1,2', '1,2', '1,2', '1,2', '<p>火爆热卖中，6GB+64GB/6GB+128GB闪降100元，到手价1299元起</p>', 0, 1, 0, 1, 1, 11, 1, 1592392825);
INSERT INTO `goods` VALUES (22, 'Redmi 7A', '「3GB+32GB到手价仅549元」4000mAh超长续航 / 骁龙8核处理器 / 标配10W快充 / AI人脸解锁 / 大字体，大音量，无线收音机 / 整机生活防泼溅 / 极简模式，亲情守护', '', 2, 100, 1000, 549.00, 799.00, '', '', '3,4', '3GB+32GB', 'static/upload/20200622/1592820040.jpg', '', '', '', '', '<p><span style=\"color: rgb(51, 51, 51); font-family: F9ab65; font-size: 10.4922px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">小巧机身蕴藏4000mAh大电量，配合MIUI系统级省电优化，精细调控，从此告别电量焦虑，尽情尽欢！</span></p>', 0, 0, 1, 0, 1, 100, 1, 1592820016);
INSERT INTO `goods` VALUES (23, 'Redmi 智能电视 X65', '全金属边框/4K超高清/MEMC运动补偿/8单元重低音音响系统', '', 1, 100, 1000, 2999.00, 3299.00, '', '', '4', '56寸', 'static/upload/20200622/1592820111.jpg', '', '', '', '', '<p><span style=\'color: rgb(176, 176, 176); font-family: \"Helvetica Neue\", Helvetica, Arial, \"Microsoft Yahei\", \"Hiragino Sans GB\", \"Heiti SC\", \"WenQuanYi Micro Hei\", sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\'>全金属边框/4K超高清/MEMC运动补偿/8单元重低音音响系统</span> </p>', 0, 0, 0, 0, 0, 100, 1, 1592820111);
INSERT INTO `goods` VALUES (24, 'RedmiBook 13 全面屏', '四窄边全面屏 / 全新十代酷睿™处理器 / 全金属超轻机身 / MX250 高性能独显 / 小米互传 / 专业「飓风」散热系统 / 11小时长续航', '', 20, 100, 1000, 4499.00, 4799.00, '', '', '4,5', '8G+128G', 'static/upload/20200622/1592820244.jpg', '', '', '', '', '<p><span style=\'color: rgb(176, 176, 176); font-family: \"Helvetica Neue\", Helvetica, Arial, \"Microsoft Yahei\", \"Hiragino Sans GB\", \"Heiti SC\", \"WenQuanYi Micro Hei\", sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\'>四窄边全面屏 / 全新十代酷睿&trade;处理器 / 全金属超轻机身 / MX250 高性能独显 / 小米互传 / 专业「飓风」散热系统 / 11小时长续航</span></p>', 0, 0, 1, 0, 0, 100, 1, 1592820244);
INSERT INTO `goods` VALUES (25, '米家电磁炉333', '99挡微调控火 / 支持低温烹饪 / 100+烹饪模式', '', 1, 100, 1000, 299.00, 399.00, '', '', '', '', 'static/upload/20200622/1592820331.jpg', '', '', '', '', '<p>米家电磁炉</p>', 0, 1, 0, 0, 0, 100, 1, 1592820331);

-- ----------------------------
-- Table structure for goods_attr
-- ----------------------------
DROP TABLE IF EXISTS `goods_attr`;
CREATE TABLE `goods_attr`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `goods_id` int(0) NULL DEFAULT NULL,
  `attribute_cate_id` int(0) NULL DEFAULT NULL,
  `attribute_id` int(0) NULL DEFAULT NULL,
  `attribute_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `attribute_type` tinyint(1) NULL DEFAULT NULL,
  `attribute_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sort` int(0) NULL DEFAULT NULL,
  `add_time` int(0) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_attr
-- ----------------------------
INSERT INTO `goods_attr` VALUES (28, 18, 0, 0, '', 0, '硬盘1', 10, 1592391786, 1);
INSERT INTO `goods_attr` VALUES (29, 18, 0, 0, '', 0, '内存1', 10, 1592391786, 1);
INSERT INTO `goods_attr` VALUES (30, 18, 0, 0, '', 0, '14寸\r\n', 10, 1592391786, 1);
INSERT INTO `goods_attr` VALUES (64, 21, 1, 1, '基本信息', 1, '基本信息1', 10, 1592452499, 1);
INSERT INTO `goods_attr` VALUES (65, 21, 1, 7, '性能	', 2, '性能1', 10, 1592452499, 1);
INSERT INTO `goods_attr` VALUES (66, 21, 1, 8, '相机', 2, '相机1', 10, 1592452499, 1);
INSERT INTO `goods_attr` VALUES (67, 21, 1, 9, '支持蓝牙', 3, '是\r\n', 10, 1592452499, 1);
INSERT INTO `goods_attr` VALUES (68, 21, 1, 10, '屏幕', 2, '屏', 10, 1592452499, 1);
INSERT INTO `goods_attr` VALUES (69, 20, 3, 14, '硬盘', 1, '硬盘6666666666', 10, 1592817127, 1);
INSERT INTO `goods_attr` VALUES (70, 20, 3, 15, '内存', 1, '内存666666666', 10, 1592817127, 1);
INSERT INTO `goods_attr` VALUES (71, 20, 3, 16, '尺寸', 3, '14寸\r\n', 10, 1592817127, 1);

-- ----------------------------
-- Table structure for goods_cate
-- ----------------------------
DROP TABLE IF EXISTS `goods_cate`;
CREATE TABLE `goods_cate`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cate_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `template` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` int(0) NULL DEFAULT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `sort` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `add_time` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_cate
-- ----------------------------
INSERT INTO `goods_cate` VALUES (1, '手机', '', '', '', 0, '手机', '手机', '手机', 1, '0', 1582461745);
INSERT INTO `goods_cate` VALUES (2, '小米10 Pro', '', '', '', 1, '小米10 Pro', '小米10 Pro', '小米10 Pro', 1, '0', 1582463294);
INSERT INTO `goods_cate` VALUES (3, 'Redmi 8', '', '11', '11', 1, 'Redmi 8 11', 'Redmi 8 111', 'Redmi 8 111', 1, '11', 1582463357);
INSERT INTO `goods_cate` VALUES (4, '电视 盒子', '', '', '', 0, '电视 盒子', '电视 盒子', '电视 盒子', 1, '0', 1582463515);
INSERT INTO `goods_cate` VALUES (5, '小米电视5 55英寸', '', '', '', 4, '小米电视5 55英寸', '小米电视5 55英寸', '小米电视5 55英寸', 1, '0', 1582464603);
INSERT INTO `goods_cate` VALUES (6, '家电 插线板', '', '', '', 0, '', '', '', 1, '0', 1582513219);
INSERT INTO `goods_cate` VALUES (7, '出行 穿戴', '', '', '', 0, '', '', '', 1, '0', 1582513235);
INSERT INTO `goods_cate` VALUES (8, '智能 路由器', '', '', '', 0, '', '', '', 1, '0', 1582513270);
INSERT INTO `goods_cate` VALUES (9, '电源 配件', '', '', '', 0, '', '', '', 1, '0', 1582513285);
INSERT INTO `goods_cate` VALUES (10, '健康 儿童', '', '', '', 0, '', '', '', 1, '0', 1582513300);
INSERT INTO `goods_cate` VALUES (11, '耳机 音响', '', '', '', 0, '', '', '', 1, '0', 1582513338);
INSERT INTO `goods_cate` VALUES (12, '生活 箱包', '', '', '', 0, '', '', '', 1, '0', 1582513349);
INSERT INTO `goods_cate` VALUES (13, '冰箱', '', '', '', 6, '冰箱', '冰箱', '冰箱', 1, '0', 1582513945);
INSERT INTO `goods_cate` VALUES (14, '微波炉', '', '', '', 6, '', '', '', 1, '0', 1582513960);
INSERT INTO `goods_cate` VALUES (15, '小米手表', '', '', '', 7, '小米手表', '小米手表', '小米手表', 1, '0', 1582514113);
INSERT INTO `goods_cate` VALUES (16, '平衡车', '', '', '', 7, '平衡车', '平衡车', '平衡车', 1, '0', 1582514151);
INSERT INTO `goods_cate` VALUES (17, '路由器', '', '', '', 8, '路由器', '路由器', '路由器', 1, '0', 1582514289);
INSERT INTO `goods_cate` VALUES (18, '摄像机', '', '', '', 8, '摄像机', '摄像机', '摄像机', 1, '0', 1582514318);
INSERT INTO `goods_cate` VALUES (19, '全屏电视55寸', '', '', '', 4, '', '', '', 1, '0', 1582514664);
INSERT INTO `goods_cate` VALUES (20, '移动电源', '', '', '', 9, '移动电源', '移动电源', '移动电源', 1, '0', 1582514810);

-- ----------------------------
-- Table structure for goods_color
-- ----------------------------
DROP TABLE IF EXISTS `goods_color`;
CREATE TABLE `goods_color`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `color_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `color_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_color
-- ----------------------------
INSERT INTO `goods_color` VALUES (1, '红色', 'red', 1);
INSERT INTO `goods_color` VALUES (2, '黑色', '#000', 1);
INSERT INTO `goods_color` VALUES (3, '红色', 'yellow', 1);
INSERT INTO `goods_color` VALUES (4, '金色', '#ebf10f', 1);
INSERT INTO `goods_color` VALUES (5, '灰色', '#eee', 1);

-- ----------------------------
-- Table structure for goods_image
-- ----------------------------
DROP TABLE IF EXISTS `goods_image`;
CREATE TABLE `goods_image`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `goods_id` int(0) NULL DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `color_id` int(0) NULL DEFAULT NULL,
  `sort` int(0) NULL DEFAULT NULL,
  `add_time` int(0) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_image
-- ----------------------------
INSERT INTO `goods_image` VALUES (13, 18, '', 0, 10, 1592391786, 1);
INSERT INTO `goods_image` VALUES (14, 18, '', 0, 10, 1592391786, 1);
INSERT INTO `goods_image` VALUES (15, 18, '', 0, 10, 1592391786, 1);
INSERT INTO `goods_image` VALUES (16, 18, '', 0, 0, 0, 0);
INSERT INTO `goods_image` VALUES (17, 18, '', 0, 0, 0, 0);
INSERT INTO `goods_image` VALUES (18, 20, '', 5, 10, 1592392495, 1);
INSERT INTO `goods_image` VALUES (19, 20, '', 3, 10, 1592392495, 1);
INSERT INTO `goods_image` VALUES (20, 21, '', 4, 10, 1592392825, 1);
INSERT INTO `goods_image` VALUES (27, 19, '', 2, 10, 1592799750, 1);
INSERT INTO `goods_image` VALUES (28, 19, '', 2, 10, 1592799750, 1);
INSERT INTO `goods_image` VALUES (29, 19, '', 5, 10, 1592799750, 1);
INSERT INTO `goods_image` VALUES (30, 20, '', 0, 10, 1592817127, 1);
INSERT INTO `goods_image` VALUES (31, 20, '', 0, 10, 1592817127, 1);
INSERT INTO `goods_image` VALUES (32, 20, '', 0, 10, 1592817127, 1);

-- ----------------------------
-- Table structure for goods_type
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL,
  `add_time` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_type
-- ----------------------------
INSERT INTO `goods_type` VALUES (1, '手机', '手机', 1, 1582120088);
INSERT INTO `goods_type` VALUES (2, '电脑', '电脑', 0, 1582120130);
INSERT INTO `goods_type` VALUES (3, '笔记本', '笔记本', 1, 1582120143);
INSERT INTO `goods_type` VALUES (4, '路由器', '路由器', 1, 1591784140);

-- ----------------------------
-- Table structure for goods_type_attribute
-- ----------------------------
DROP TABLE IF EXISTS `goods_type_attribute`;
CREATE TABLE `goods_type_attribute`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `cate_id` int(0) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr_type` tinyint(1) NULL DEFAULT NULL,
  `attr_value` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `sort` int(0) NULL DEFAULT NULL,
  `add_time` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_type_attribute
-- ----------------------------
INSERT INTO `goods_type_attribute` VALUES (1, 1, '基本信息', 1, '', 1, 10, 1582358795);
INSERT INTO `goods_type_attribute` VALUES (2, 2, '主体', 3, '111\r\n1111', 1, 19, 1582361589);
INSERT INTO `goods_type_attribute` VALUES (3, 2, '内存', 1, '', 1, NULL, 1582361598);
INSERT INTO `goods_type_attribute` VALUES (4, 2, '硬盘', 1, '', 1, NULL, 1582361780);
INSERT INTO `goods_type_attribute` VALUES (5, 2, '显示器', 1, '', 1, NULL, 1582361804);
INSERT INTO `goods_type_attribute` VALUES (6, 2, '支持蓝牙1', 3, '是\r\n否', 1, 0, 1582362691);
INSERT INTO `goods_type_attribute` VALUES (7, 1, '性能	', 2, '', 1, 111, 1591844598);
INSERT INTO `goods_type_attribute` VALUES (8, 1, '相机', 2, '', 1, 0, 1591844635);
INSERT INTO `goods_type_attribute` VALUES (9, 1, '支持蓝牙', 3, '是\r\n否', 1, 0, 1591844649);
INSERT INTO `goods_type_attribute` VALUES (10, 1, '屏幕', 2, '', 1, 0, 1591844675);
INSERT INTO `goods_type_attribute` VALUES (11, 2, '外观', 2, '', 1, 0, 1591844688);
INSERT INTO `goods_type_attribute` VALUES (13, 4, '品牌', 1, '', 1, 0, 1591851350);
INSERT INTO `goods_type_attribute` VALUES (14, 3, '硬盘', 1, '', 1, 0, 1591851429);
INSERT INTO `goods_type_attribute` VALUES (15, 3, '内存', 1, '', 1, 0, 1591851442);
INSERT INTO `goods_type_attribute` VALUES (16, 3, '尺寸', 3, '14寸\r\n15寸', 1, 0, 1591851471);

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(0) NULL DEFAULT 1,
  `role_id` int(0) NULL DEFAULT NULL,
  `add_time` int(0) NULL DEFAULT NULL,
  `is_super` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '15201686411', '518864@qq.com', 1, 12, 0, 1);
INSERT INTO `manager` VALUES (2, 'zhangsan', 'e10adc3949ba59abbe56e057f20f883e', '15201686412', '34233869@qq.com', 1, 2, 1581661532, 0);
INSERT INTO `manager` VALUES (7, 'lisi', 'e10adc3949ba59abbe56e057f20f883e', '15111324214', '3333498@qq.com', 1, 11, 1591078419, 0);

-- ----------------------------
-- Table structure for nav
-- ----------------------------
DROP TABLE IF EXISTS `nav`;
CREATE TABLE `nav`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `position` tinyint(1) NULL DEFAULT NULL,
  `is_opennew` tinyint(1) NULL DEFAULT NULL,
  `relation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sort` int(0) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `add_time` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nav
-- ----------------------------
INSERT INTO `nav` VALUES (1, '小米845', '', 2, 2, '2', 10, 1, 1592919226);
INSERT INTO `nav` VALUES (2, '小米商城', '', 1, 2, '2', 10, 1, 1592921999);
INSERT INTO `nav` VALUES (3, '小米手机', 'https://shouji.mi.com/', 2, 2, '2', 101, 1, 1592922081);
INSERT INTO `nav` VALUES (4, '小米电视', 'https://ds.mi.com/', 2, 2, '2', 10, 1, 1592922273);
INSERT INTO `nav` VALUES (5, '路由器11112321', '', 2, 1, '1', 10, 1, 1592922331);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `add_time` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (2, '销售部门', '销售部门', 1, 1591061390);
INSERT INTO `role` VALUES (4, '编辑部门', '这是一个编辑部门，主要负责文章编辑', 1, 1591062092);
INSERT INTO `role` VALUES (11, '软件部门', '软件部门', 1, 1591073850);
INSERT INTO `role` VALUES (12, '市场部门', '市场部门', 1, 1591073860);

-- ----------------------------
-- Table structure for role_access
-- ----------------------------
DROP TABLE IF EXISTS `role_access`;
CREATE TABLE `role_access`  (
  `role_id` int(0) NOT NULL,
  `access_id` int(0) NOT NULL,
  PRIMARY KEY (`role_id`, `access_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_access
-- ----------------------------
INSERT INTO `role_access` VALUES (2, 52);
INSERT INTO `role_access` VALUES (2, 54);
INSERT INTO `role_access` VALUES (2, 55);
INSERT INTO `role_access` VALUES (2, 56);
INSERT INTO `role_access` VALUES (2, 57);
INSERT INTO `role_access` VALUES (4, 53);
INSERT INTO `role_access` VALUES (4, 59);
INSERT INTO `role_access` VALUES (4, 60);
INSERT INTO `role_access` VALUES (4, 72);
INSERT INTO `role_access` VALUES (4, 73);
INSERT INTO `role_access` VALUES (11, 52);
INSERT INTO `role_access` VALUES (11, 53);
INSERT INTO `role_access` VALUES (11, 54);
INSERT INTO `role_access` VALUES (11, 55);
INSERT INTO `role_access` VALUES (11, 56);
INSERT INTO `role_access` VALUES (11, 57);
INSERT INTO `role_access` VALUES (11, 59);
INSERT INTO `role_access` VALUES (11, 60);
INSERT INTO `role_access` VALUES (11, 72);
INSERT INTO `role_access` VALUES (11, 78);
INSERT INTO `role_access` VALUES (11, 79);
INSERT INTO `role_access` VALUES (11, 80);
INSERT INTO `role_access` VALUES (11, 81);
INSERT INTO `role_access` VALUES (11, 82);
INSERT INTO `role_access` VALUES (11, 83);
INSERT INTO `role_access` VALUES (12, 52);
INSERT INTO `role_access` VALUES (12, 54);
INSERT INTO `role_access` VALUES (12, 55);
INSERT INTO `role_access` VALUES (12, 56);
INSERT INTO `role_access` VALUES (12, 57);
INSERT INTO `role_access` VALUES (12, 64);
INSERT INTO `role_access` VALUES (12, 65);
INSERT INTO `role_access` VALUES (12, 74);

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `site_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `site_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `site_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `site_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `no_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `site_icp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `site_tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `search_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tongji_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `appid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `app_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `end_point` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bucket_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `oss_status` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES (1, 'store', '', '小米', '24', '', '2422', '24', '24', '11111', '', '', '', '', 0);

SET FOREIGN_KEY_CHECKS = 1;
