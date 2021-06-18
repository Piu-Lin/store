# 数据库映射表明细

## 核心模块

`core.go` 建立与数据库的连接与保持。

## 管理模块

### manager.go 映射表示一个管理员账户

其 mysql 设定为：

```mysql
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
```

初始数据为：

```mysql
INSERT INTO `manager` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '15201686411', '518864@qq.com', 1, 12, 0, 1);
INSERT INTO `manager` VALUES (2, 'zhangsan', 'e10adc3949ba59abbe56e057f20f883e', '15201686412', '34233869@qq.com', 1, 2, 1581661532, 0);
INSERT INTO `manager` VALUES (7, 'lisi', 'e10adc3949ba59abbe56e057f20f883e', '15111324214', '3333498@qq.com', 1, 11, 1591078419, 0);
```

### role.go 映射表示一个管理角色

其 mysql 设定为：

```mysql
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
`id` int(0) NOT NULL AUTO_INCREMENT,
`title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
`description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
`status` tinyint(1) NULL DEFAULT NULL,
`add_time` int(0) NULL DEFAULT NULL,
PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;
```

其初始值为：

```mysql
INSERT INTO `role` VALUES (2, '销售部门', '销售部门', 1, 1591061390);
INSERT INTO `role` VALUES (4, '编辑部门', '这是一个编辑部门，主要负责文章编辑', 1, 1591062092);
INSERT INTO `role` VALUES (11, '软件部门', '软件部门', 1, 1591073850);
INSERT INTO `role` VALUES (12, '市场部门', '市场部门', 1, 1591073860);
```

### access.go 映射表示一类权限所能拥有的管理方式

其 mysql 设定为：

```mysql
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
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;
```

其初始数据为

```mysql
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
INSERT INTO `access` VALUES (97, '商品管理', 3, '商品列表', '/goods', 96, 100, '', 0, 1);
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
```

### roleAccess.go 映射表示了角色与权限的对应关系

其 mysql 设定为：

```mysql
DROP TABLE IF EXISTS `role_access`;
CREATE TABLE `role_access`  (
  `role_id` int(0) NOT NULL,
  `access_id` int(0) NOT NULL,
  PRIMARY KEY (`role_id`, `access_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;
```

```mysql
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
```

## 商品模块

### goodsCate.go 映射表示了一个产品大类，例如手机、路由器

其 mysql 设定为：

```mysql
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
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;
```

其数据初始数据为：

```mysql
INSERT INTO `goods_cate` VALUES (22, '手机　电话卡', '', '', '', 0, '', '', '手机　电话卡', 1, '101', 1591699228);
INSERT INTO `goods_cate` VALUES (23, '电视 盒子', '', '', '', 0, '', '', '', 1, '10', 1591699261);
INSERT INTO `goods_cate` VALUES (24, 'Redmi 8  1111', 'static/upload/20200609/1591701952.png', '1111', '111', 22, '111', '111', '1111', 1, '1011', 1591699484);
INSERT INTO `goods_cate` VALUES (25, '电源配件', '', '', '', 0, '', '', '', 1, '10', 1591699507);
INSERT INTO `goods_cate` VALUES (26, 'Redmi 7A', 'static/upload/20200609/1591700455.png', '', '', 22, '', '', '', 1, '101', 1591700455);
INSERT INTO `goods_cate` VALUES (27, '小米电视5 Pro 75英寸', 'static/upload/20200609/1591700507.png', '', '', 23, '', '', '', 1, '10', 1591700507);
```

### goodsType.go 映射表示了一类产品所共有的名称

其 mysql 设定为：

```mysql
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL,
  `add_time` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;
```

其初始数据为：

```mysql
INSERT INTO `goods_type` VALUES (1, '手机', '手机', 1, 1582120088);
INSERT INTO `goods_type` VALUES (2, '电脑', '电脑', 0, 1582120130);
INSERT INTO `goods_type` VALUES (3, '笔记本', '笔记本', 1, 1582120143);
INSERT INTO `goods_type` VALUES (4, '路由器', '路由器', 1, 1591784140);
```

### goodsTypeAtrribute.go 映射表示一类产品的详细描述

其 mysql 设定为：

```mysql
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
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;
```

其初始数据为：

```mysql
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
```

### goods.go 映射表示具体商品

其 mysql 设定为：

```mysql
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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;
```

其初始设定值为

```mysql
INSERT INTO `goods` VALUES (18, '小米8', '火爆热卖中，6GB+64GB/6GB+128GB闪降100元，到手价1299元起', '', 2, 100, 0, 12421.00, 124214.00, '214124', '124214', '3,4,5', '8G+128G', 'static/upload/20200617/1592391786033833400.jpg', '124', '124', '', '', '<p>124124</p>', 0, 1, 1, 0, 3, 0, 1, 1592391786);
INSERT INTO `goods` VALUES (19, '小米9', '火爆热卖中，6GB+64GB/6GB+128GB闪降100元，到手价1299元起', '', 1, 100, 0, 0.00, 0.00, '1,2', '尺寸:41,42,43', '2,5', '8GB+256GB', 'static/upload/20200617/1592392307796676500.jpg', '1,2', '1,2', '', '', '<p>火爆热卖中，6GB+64GB/6GB+128GB闪降100元，到手价1299元起</p>', 0, 0, 0, 0, 3, 0, 1, 1592392307);
INSERT INTO `goods` VALUES (20, '小米1111', '火爆热卖中，6GB+64GB/6GB+128GB闪降100元，到手价1299元起', '', 1, 100, 0, 124124.00, 124.00, '1', '4', '3,5', '12G+512GB', 'static/upload/20200617/1592392495500412500.jpg', '2', '3', '', '', '<p>火爆热卖中，6GB+64GB/6GB+128GB闪降100元，到手价1299元起</p>', 0, 0, 0, 0, 3, 0, 1, 1592392495);
INSERT INTO `goods` VALUES (21, '124214', '124124', '', 1, 100, 0, 0.00, 0.00, '', '', '2,3', '124124', 'static/upload/20200617/1592392825009259400.jpg', '235325', '', '', '', '<p>324325</p>', 0, 0, 0, 0, 2, 0, 1, 1592392825);

```

### goodsAttr.go 映射表示商品描述

其 mysql 设定为：

```mysql
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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;
```

其初始值为：

```mysql
INSERT INTO `goods_attr` VALUES (28, 18, 0, 0, '', 0, '硬盘1', 10, 1592391786, 1);
INSERT INTO `goods_attr` VALUES (29, 18, 0, 0, '', 0, '内存1', 10, 1592391786, 1);
INSERT INTO `goods_attr` VALUES (30, 18, 0, 0, '', 0, '14寸\r\n', 10, 1592391786, 1);
INSERT INTO `goods_attr` VALUES (31, 19, 3, 0, '硬盘', 1, '硬盘11111', 10, 1592392307, 1);
INSERT INTO `goods_attr` VALUES (32, 19, 3, 0, '内存', 1, '内存111111', 10, 1592392307, 1);
INSERT INTO `goods_attr` VALUES (33, 19, 3, 0, '尺寸', 3, '14寸\r\n', 10, 1592392307, 1);
INSERT INTO `goods_attr` VALUES (34, 20, 3, 14, '硬盘', 1, '硬盘6666666666', 10, 1592392495, 1);
INSERT INTO `goods_attr` VALUES (35, 20, 3, 15, '内存', 1, '内存666666666', 10, 1592392495, 1);
INSERT INTO `goods_attr` VALUES (36, 20, 3, 16, '尺寸', 3, '14寸\r\n', 10, 1592392495, 1);
INSERT INTO `goods_attr` VALUES (37, 21, 2, 2, '主体', 3, '111\r\n', 10, 1592392825, 1);
INSERT INTO `goods_attr` VALUES (38, 21, 2, 3, '内存', 1, '214214', 10, 1592392825, 1);
INSERT INTO `goods_attr` VALUES (39, 21, 2, 4, '硬盘', 1, '124214', 10, 1592392825, 1);
INSERT INTO `goods_attr` VALUES (40, 21, 2, 5, '显示器', 1, '214214', 10, 1592392825, 1);
INSERT INTO `goods_attr` VALUES (41, 21, 2, 6, '支持蓝牙1', 3, '是\r\n', 10, 1592392825, 1);
INSERT INTO `goods_attr` VALUES (42, 21, 2, 11, '外观', 2, '214214214', 10, 1592392825, 1);
```

### goodImage.go 映射表示商品图片

其 mysql 设定为：

```mysql
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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;
```

其初始值为：

```mysql
INSERT INTO `goods_image` VALUES (13, 18, '/static/upload/20200617/1592391780837536200.jpg', 0, 10, 1592391786, 1);
INSERT INTO `goods_image` VALUES (14, 18, '/static/upload/20200617/1592391780895539500.jpg', 0, 10, 1592391786, 1);
INSERT INTO `goods_image` VALUES (15, 18, '/static/upload/20200617/1592391780954542900.jpg', 0, 10, 1592391786, 1);
INSERT INTO `goods_image` VALUES (16, 19, '/static/upload/20200617/1592392306350593800.jpg', 0, 10, 1592392307, 1);
INSERT INTO `goods_image` VALUES (17, 19, '/static/upload/20200617/1592392306406597000.jpg', 0, 10, 1592392307, 1);
INSERT INTO `goods_image` VALUES (18, 20, '/static/upload/20200617/1592392494637363200.jpg', 0, 10, 1592392495, 1);
INSERT INTO `goods_image` VALUES (19, 20, '/static/upload/20200617/1592392494693366400.jpg', 0, 10, 1592392495, 1);
INSERT INTO `goods_image` VALUES (20, 21, '/static/upload/20200617/1592392823882194900.jpg', 0, 10, 1592392825, 1);
INSERT INTO `goods_image` VALUES (21, 21, '/static/upload/20200617/1592392823940198200.jpg', 0, 10, 1592392825, 1);
INSERT INTO `goods_image` VALUES (22, 21, '/static/upload/20200617/1592392824031203400.jpg', 0, 10, 1592392825, 1);
```

### goodsColor.go 映射表示商品颜色

其 mysql 设定为：

```mysql
DROP TABLE IF EXISTS `goods_color`;
CREATE TABLE `goods_color`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `color_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `color_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

```

其初始值为：

```mysql
INSERT INTO `goods_color` VALUES (1, '红色', 'red', 1);
INSERT INTO `goods_color` VALUES (2, '黑色', '#000', 1);
INSERT INTO `goods_color` VALUES (3, '红色', 'yellow', 1);
INSERT INTO `goods_color` VALUES (4, '金色', '#ebf10f', 1);
INSERT INTO `goods_color` VALUES (5, '灰色', '#eee', 1);
```

## 其他

- focus.go 映射表示之后首页轮播图所用的图片
- tools.go 一些其他小工具

```

```
