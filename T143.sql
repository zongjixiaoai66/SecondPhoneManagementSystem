/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t143`;
CREATE DATABASE IF NOT EXISTS `t143` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t143`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='收货地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `yonghu_id`, `address_name`, `address_phone`, `address_dizhi`, `isdefault_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(9, 2, '张三', '13311133131', '张三家', 1, '2022-01-13 02:40:14', '2022-01-13 02:40:13', '2022-01-13 02:40:14'),
	(10, 4, '王五', '13311414121', '地址1', 2, '2022-01-21 06:09:08', '2022-01-21 06:09:08', '2022-01-21 06:09:08');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3 COMMENT='购物车';

DELETE FROM `cart`;
INSERT INTO `cart` (`id`, `yonghu_id`, `shangpin_id`, `buy_number`, `create_time`, `update_time`, `insert_time`) VALUES
	(33, 2, 20, 4, '2022-01-13 02:42:42', NULL, '2022-01-13 02:42:42'),
	(34, 2, 19, 3, '2022-01-13 02:42:44', NULL, '2022-01-13 02:42:44'),
	(37, 2, 22, 1, '2024-04-19 11:49:30', NULL, '2024-04-19 11:49:30');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/huaqiangbeiershoushojiushangcheng/upload/1642745106511.webp'),
	(2, 'picture2', 'http://localhost:8080/huaqiangbeiershoushojiushangcheng/upload/1642745112548.webp'),
	(3, 'picture3', 'http://localhost:8080/huaqiangbeiershoushojiushangcheng/upload/1642745118341.webp'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(28, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2021-09-15 07:34:12'),
	(29, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2021-09-15 07:34:13'),
	(34, 'shangpin_types', '商品类型名称', 1, '商品类型1', NULL, NULL, '2021-09-18 07:27:13'),
	(35, 'shangpin_types', '商品类型名称', 2, '商品类型2', NULL, NULL, '2021-09-18 07:27:13'),
	(36, 'shangpin_types', '商品类型名称', 3, '商品类型3', NULL, NULL, '2021-09-18 07:27:13'),
	(48, 'shangpin_order_payment_types', '支付方式', 1, '余额支付', NULL, NULL, '2021-08-12 07:45:13'),
	(50, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2021-08-04 06:51:46'),
	(51, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2021-08-04 06:51:46'),
	(52, 'sex_types', '性别类型名称', 2, '女', NULL, NULL, '2021-08-12 07:45:14'),
	(53, 'sex_types', '性别类型名称', 1, '男', NULL, NULL, '2021-08-12 07:45:13'),
	(63, 'news_types', '新闻类型名称', 1, '优惠活动', NULL, '', '2021-08-04 06:51:46'),
	(64, 'news_types', '新闻类型名称', 2, '紧急情况', NULL, '', '2021-08-04 06:51:46'),
	(65, 'shangxia_types', '上下架名称', 1, '上架', NULL, NULL, '2021-09-15 07:34:12'),
	(66, 'shangxia_types', '上下架名称', 2, '下架', NULL, NULL, '2021-10-21 08:20:44'),
	(68, 'shangpin_order_types', '订单类型名称', 1, '退款', NULL, NULL, NULL),
	(69, 'shangpin_order_types', '订单类型名称', 2, '已支付', NULL, NULL, NULL),
	(71, 'shangpin_order_types', '订单类型名称', 3, '已发货', NULL, NULL, NULL),
	(72, 'shangpin_order_types', '订单类型名称', 4, '已完成', NULL, NULL, NULL),
	(74, 'shangpin_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-01-13 01:44:22'),
	(75, 'shangpin_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2022-01-13 01:44:22'),
	(76, 'shangpin_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2022-01-13 01:44:22');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片 ',
  `news_types` int NOT NULL COMMENT '新闻类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻发布时间 ',
  `news_content` text COMMENT '新闻详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='新闻信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_photo`, `news_types`, `insert_time`, `news_content`, `create_time`) VALUES
	(2, '新闻1', 'http://localhost:8080/huaqiangbeiershoushojiushangcheng/upload/1642745055622.jpg', 1, '2022-01-13 02:18:14', '<p><span style="color: rgb(96, 98, 102);">新闻详情1</span></p>', '2022-01-13 02:18:14'),
	(3, '新闻2', 'http://localhost:8080/huaqiangbeiershoushojiushangcheng/upload/1642745048325.jpg', 2, '2022-01-13 02:18:27', '<p><span style="color: rgb(96, 98, 102);">新闻详情2</span></p>', '2022-01-13 02:18:27');

DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE IF NOT EXISTS `shangjia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` text COMMENT '商家简介 ',
  `shangjia_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='商家';

DELETE FROM `shangjia`;
INSERT INTO `shangjia` (`id`, `username`, `password`, `shangjia_name`, `shangjia_phone`, `shangjia_email`, `shangjia_photo`, `new_money`, `shangjia_content`, `shangjia_delete`, `create_time`) VALUES
	(1, '商家1', '123456', '商家1', '17744455151', 'shangjia1@qq.com', 'http://localhost:8080/huaqiangbeiershoushojiushangcheng/upload/1642744987814.webp', 0.00, '<p><span style="color: rgb(96, 98, 102);">商家简介1</span></p>', 1, '2022-01-13 01:50:03'),
	(2, '商家2', '123456', '商家2', '19955112311', 'shangjia2@qq.com', 'http://localhost:8080/huaqiangbeiershoushojiushangcheng/upload/1642744980448.jpg', 8502.00, '<p><span style="color: rgb(96, 98, 102);">商家简介2</span></p>', 1, '2022-01-13 01:50:34');

DROP TABLE IF EXISTS `shangpin`;
CREATE TABLE IF NOT EXISTS `shangpin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int DEFAULT NULL COMMENT '商家',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_types` int DEFAULT NULL COMMENT '商品类型  Search111 ',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `Shangpin_kucun_number` int DEFAULT '0' COMMENT '商品库存',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '商品现价',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `shangpin_content` text COMMENT '商品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COMMENT='商品信息';

DELETE FROM `shangpin`;
INSERT INTO `shangpin` (`id`, `shangjia_id`, `shangpin_name`, `shangpin_types`, `shangpin_photo`, `Shangpin_kucun_number`, `shangpin_old_money`, `shangpin_new_money`, `shangxia_types`, `shangpin_delete`, `shangpin_content`, `create_time`) VALUES
	(19, 1, '商品1', 1, 'http://localhost:8080/huaqiangbeiershoushojiushangcheng/upload/1642745030046.jpg', 11, 3547.00, 2000.00, 1, 1, '<p><span style="color: rgb(96, 98, 102);">商品简介1</span></p>', '2022-01-13 01:50:03'),
	(20, 2, '商品2', 2, 'http://localhost:8080/huaqiangbeiershoushojiushangcheng/upload/1642745022568.webp', 98, 10000.00, 8502.00, 1, 1, '<p><span style="color: rgb(96, 98, 102);">商品简介2</span></p>', '2022-01-13 01:50:34'),
	(21, 1, '商品3', 3, 'http://localhost:8080/huaqiangbeiershoushojiushangcheng/upload/1642745015650.webp', 45, 4850.00, 3254.00, 1, 1, '<p><span style="color: rgb(96, 98, 102);">商品简介3</span></p>', '2022-01-13 01:50:03'),
	(22, 2, '商品4', 1, 'http://localhost:8080/huaqiangbeiershoushojiushangcheng/upload/1642745008030.webp', 56, 4050.00, 3500.00, 1, 1, '<p><span style="color: rgb(96, 98, 102);">商品简介4</span></p>', '2022-01-13 01:50:34');

DROP TABLE IF EXISTS `shangpin_collection`;
CREATE TABLE IF NOT EXISTS `shangpin_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='商品收藏';

DELETE FROM `shangpin_collection`;
INSERT INTO `shangpin_collection` (`id`, `shangpin_id`, `yonghu_id`, `shangpin_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 22, 2, 1, '2022-01-13 02:27:29', '2022-01-13 02:27:29'),
	(2, 22, 4, 1, '2022-01-21 06:09:23', '2022-01-21 06:09:23');

DROP TABLE IF EXISTS `shangpin_order`;
CREATE TABLE IF NOT EXISTS `shangpin_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int DEFAULT NULL COMMENT '收获地址 ',
  `shangpin_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买的数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格 ',
  `shangpin_order_types` int DEFAULT NULL COMMENT '订单类型',
  `shangpin_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='商品订单';

DELETE FROM `shangpin_order`;
INSERT INTO `shangpin_order` (`id`, `shangpin_order_uuid_number`, `address_id`, `shangpin_id`, `yonghu_id`, `buy_number`, `shangpin_order_true_price`, `shangpin_order_types`, `shangpin_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1642745376689', 10, 20, 4, 1, 8502.00, 4, 1, '2022-01-21 06:09:37', '2022-01-21 06:09:37'),
	(2, '1642745376689', 10, 22, 4, 6, 21000.00, 1, 1, '2022-01-21 06:09:37', '2022-01-21 06:09:37');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'ehtoyrhi9mzhrmgkwaehcppub90mjj5x', '2022-01-13 01:48:14', '2024-04-19 12:47:46'),
	(2, 2, '111', 'yonghu', '用户', 'caj6oexsccolym9ej0w4kclk63q3fz8k', '2022-01-13 02:23:05', '2024-04-19 12:49:12'),
	(3, 2, '444', 'shangjia', '商家', 'gx5xjxl5ddm1ho8jmvmobb4myz9sg498', '2022-01-13 02:39:08', '2022-01-21 07:45:10'),
	(4, 4, '333', 'yonghu', '用户', 'jgzscvmn4y0p2mj8faiw80zrk5i0km6v', '2022-01-21 06:08:35', '2022-01-21 07:45:23'),
	(5, 1, '333', 'shangjia', '商家', 'dz8j2b3d6jorpovps2s6jx3xliuvkgpi', '2022-01-21 06:12:00', '2024-04-19 12:48:47');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-02-25 07:59:12');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `yonghu_phone`, `yonghu_id_number`, `sex_types`, `new_money`, `yonghu_delete`, `create_time`) VALUES
	(2, '用户1', '123456', '用户1', 'http://localhost:8080/huaqiangbeiershoushojiushangcheng/upload/1642744948168.jpg', '17785599695', '410884199911214111', 1, 11998.00, 1, '2022-01-13 01:51:10'),
	(3, '用户2', '123456', '用户2', 'http://localhost:8080/huaqiangbeiershoushojiushangcheng/upload/1642744933925.jpg', '17788554841', '410884199911261214', 1, 0.00, 1, '2022-01-13 01:51:36'),
	(4, '用户3', '123456', '用户3', 'http://localhost:8080/huaqiangbeiershoushojiushangcheng/upload/1642745325722.jpg', '13311155115', '321223199911211131', 1, 91497.00, 1, '2022-01-21 06:08:32');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
