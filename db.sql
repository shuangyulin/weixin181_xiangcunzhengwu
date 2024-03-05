/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.26 : Database - xiangcuenzhengwufuwu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiangcuenzhengwufuwu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiangcuenzhengwufuwu`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='政民互动';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'可以问问题',NULL,NULL,NULL,NULL,NULL,'2022-02-16 16:18:52'),(2,1,'管理后台可以回复',NULL,NULL,NULL,NULL,NULL,'2022-02-16 16:19:03');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/xiangcuenzhengwufuwu/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/xiangcuenzhengwufuwu/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/xiangcuenzhengwufuwu/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (65,'xiangmu_types','项目类型',1,'综合业务项目',NULL,NULL,'2022-02-16 14:27:38'),(66,'xiangmu_types','项目类型',2,'材料证明',NULL,NULL,'2022-02-16 14:27:38'),(67,'xiangmu_types','项目类型',3,'住房建设',NULL,NULL,'2022-02-16 14:27:38'),(68,'xiangmu_types','项目类型',4,'社保业务',NULL,NULL,'2022-02-16 14:27:38'),(69,'xiangmu_types','项目类型',5,'其他',NULL,NULL,'2022-02-16 14:27:38'),(70,'xiangmu_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-02-16 14:27:38'),(71,'yuyuexiangmu_yesno_types','预约结果',1,'未审核',NULL,NULL,'2022-02-16 14:27:38'),(72,'yuyuexiangmu_yesno_types','预约结果',2,'通过',NULL,NULL,'2022-02-16 14:27:38'),(73,'yuyuexiangmu_yesno_types','预约结果',3,'拒绝',NULL,NULL,'2022-02-16 14:27:38'),(74,'zaixianshenbao_types','服务类型',1,'生育收养',NULL,NULL,'2022-02-16 14:27:38'),(75,'zaixianshenbao_types','服务类型',2,'户籍办理',NULL,NULL,'2022-02-16 14:27:38'),(76,'zaixianshenbao_types','服务类型',3,'入伍服役',NULL,NULL,'2022-02-16 14:27:38'),(77,'zaixianshenbao_types','服务类型',4,'就业创业',NULL,NULL,'2022-02-16 14:27:38'),(78,'zaixianshenbao_types','服务类型',5,'抵押质押',NULL,NULL,'2022-02-16 14:27:38'),(79,'zaixianshenbao_types','服务类型',6,'婚姻登记',NULL,NULL,'2022-02-16 14:27:38'),(80,'zaixianshenbao_types','服务类型',7,'涉农补贴',NULL,NULL,'2022-02-16 14:27:38'),(81,'zaixianshenbao_types','服务类型',8,'死亡殡葬',NULL,NULL,'2022-02-16 14:27:38'),(82,'zaixianshenbao_types','服务类型',9,'其他',NULL,NULL,'2022-02-16 14:27:38'),(83,'zaixianshenbao_yesno_types','申报结果',1,'未审核',NULL,NULL,'2022-02-16 14:27:38'),(84,'zaixianshenbao_yesno_types','申报结果',2,'通过',NULL,NULL,'2022-02-16 14:27:38'),(85,'zaixianshenbao_yesno_types','申报结果',3,'拒绝',NULL,NULL,'2022-02-16 14:27:38'),(86,'sex_types','性别类型',1,'男',NULL,NULL,'2022-02-16 14:27:38'),(87,'sex_types','性别类型',2,'女',NULL,NULL,'2022-02-16 14:27:38'),(88,'yonghu_types','家庭状况',1,'正常户',NULL,NULL,'2022-02-16 14:27:39'),(89,'yonghu_types','家庭状况',2,'贫困户',NULL,NULL,'2022-02-16 14:27:39'),(90,'news_types','社区风采类型',1,'政策法规',NULL,NULL,'2022-02-16 14:27:39'),(91,'news_types','社区风采类型',2,'城郊新闻',NULL,NULL,'2022-02-16 14:27:39'),(92,'news_types','社区风采类型',3,'党建知识',NULL,NULL,'2022-02-16 14:27:39'),(93,'news_types','社区风采类型',4,'国家新闻',NULL,NULL,'2022-02-16 14:27:39'),(94,'chat_types','数据类型',1,'问题',NULL,NULL,'2022-02-16 14:27:39'),(95,'chat_types','数据类型',2,'回复',NULL,NULL,'2022-02-16 14:27:39'),(96,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2022-02-16 14:27:39'),(97,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2022-02-16 14:27:39');

/*Table structure for table `fupinzhengce` */

DROP TABLE IF EXISTS `fupinzhengce`;

CREATE TABLE `fupinzhengce` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fupinzhengce_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111 ',
  `fupinzhengce_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `fupinzhengce_fuli` varchar(200) DEFAULT NULL COMMENT '福利',
  `fupinzhengce_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='扶贫政策';

/*Data for the table `fupinzhengce` */

insert  into `fupinzhengce`(`id`,`fupinzhengce_name`,`fupinzhengce_photo`,`fupinzhengce_fuli`,`fupinzhengce_content`,`create_time`) values (1,'标题1','http://localhost:8080/xiangcuenzhengwufuwu/upload/1644993746335.webp','福利1','<p>详情1</p>','2022-02-16 14:27:58'),(2,'标题2','http://localhost:8080/xiangcuenzhengwufuwu/upload/1644993737030.webp','福利2','<p>详情2</p>','2022-02-16 14:27:58'),(3,'标题3','http://localhost:8080/xiangcuenzhengwufuwu/upload/1644993730498.webp','福利3','<p>详情3</p>','2022-02-16 14:27:58'),(4,'标题4','http://localhost:8080/xiangcuenzhengwufuwu/upload/1644993723936.webp','福利4','<p>详情4</p>','2022-02-16 14:27:58'),(5,'标题5','http://localhost:8080/xiangcuenzhengwufuwu/upload/1644993717324.webp','福利5','<p>详情5</p>','2022-02-16 14:27:58'),(6,'标题6','http://localhost:8080/xiangcuenzhengwufuwu/upload/1644993704979.jpg','福利6','<p>详情6</p>','2022-02-16 14:27:58');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '社区风采标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '社区风采类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '社区风采图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '社区风采时间',
  `news_content` text COMMENT '社区风采详情',
  `news_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='社区风采';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`news_delete`,`create_time`) values (1,'社区风采标题1',3,'http://localhost:8080/xiangcuenzhengwufuwu/upload/1644994412282.webp','2022-02-16 14:27:58','<p>社区风采详情1</p>',1,'2022-02-16 14:27:58'),(2,'社区风采标题2',3,'http://localhost:8080/xiangcuenzhengwufuwu/upload/1644994403447.webp','2022-02-16 14:27:58','<p>社区风采详情2</p>',1,'2022-02-16 14:27:58'),(3,'社区风采标题3',1,'http://localhost:8080/xiangcuenzhengwufuwu/upload/1644994396640.webp','2022-02-16 14:27:58','<p>社区风采详情3</p>',1,'2022-02-16 14:27:58'),(4,'社区风采标题4',2,'http://localhost:8080/xiangcuenzhengwufuwu/upload/1644994389395.jpg','2022-02-16 14:27:58','<p>社区风采详情4</p>',1,'2022-02-16 14:27:58');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','rytaws2un3hghwhae082qllplwmoc4kz','2022-02-16 14:31:51','2022-02-16 17:37:49'),(2,1,'a1','yonghu','用户','lpxdll7pqcixclf45dmi2j1zf7mg5kpi','2022-02-16 14:56:25','2022-02-16 17:36:40'),(3,2,'a2','yonghu','用户','vyn8c77c0mvkbxojoyvgkygwfjm8b6yy','2022-02-16 16:20:43','2022-02-16 17:31:41');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `xiangmu` */

DROP TABLE IF EXISTS `xiangmu`;

CREATE TABLE `xiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiangmu_name` varchar(200) DEFAULT NULL COMMENT '项目标题 Search111 ',
  `xiangmu_types` int(11) DEFAULT NULL COMMENT '项目类型 Search111',
  `xiangmu_photo` varchar(200) DEFAULT NULL COMMENT '项目封面',
  `xiangmu_content` text COMMENT '项目详情',
  `xiangmu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='预约项目';

/*Data for the table `xiangmu` */

insert  into `xiangmu`(`id`,`xiangmu_name`,`xiangmu_types`,`xiangmu_photo`,`xiangmu_content`,`xiangmu_delete`,`create_time`) values (1,'项目标题1',4,'http://localhost:8080/xiangcuenzhengwufuwu/upload/1644993194542.webp','<p>项目详情1</p>',1,'2022-02-16 14:27:58'),(2,'项目标题2',2,'http://localhost:8080/xiangcuenzhengwufuwu/upload/1644993186448.webp','<p>项目详情2</p>',1,'2022-02-16 14:27:58'),(3,'项目标题3',2,'http://localhost:8080/xiangcuenzhengwufuwu/upload/1644993179546.webp','<p>项目详情3</p>',1,'2022-02-16 14:27:58'),(4,'项目标题4',1,'http://localhost:8080/xiangcuenzhengwufuwu/upload/1644993171875.webp','<p>项目详情4</p>',1,'2022-02-16 14:27:58');

/*Table structure for table `xiangmu_collection` */

DROP TABLE IF EXISTS `xiangmu_collection`;

CREATE TABLE `xiangmu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiangmu_id` int(11) DEFAULT NULL COMMENT '预约项目',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xiangmu_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='预约项目收藏';

/*Data for the table `xiangmu_collection` */

insert  into `xiangmu_collection`(`id`,`xiangmu_id`,`yonghu_id`,`xiangmu_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2022-02-16 14:27:58','2022-02-16 14:27:58'),(2,2,1,1,'2022-02-16 14:27:58','2022-02-16 14:27:58'),(14,4,1,1,'2022-02-16 16:16:14','2022-02-16 16:16:14');

/*Table structure for table `xiangmu_commentback` */

DROP TABLE IF EXISTS `xiangmu_commentback`;

CREATE TABLE `xiangmu_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiangmu_id` int(11) DEFAULT NULL COMMENT '预约项目',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xiangmu_commentback_text` text COMMENT '评价内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='预约评价';

/*Data for the table `xiangmu_commentback` */

insert  into `xiangmu_commentback`(`id`,`xiangmu_id`,`yonghu_id`,`xiangmu_commentback_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,3,'评价内容1','回复信息1','2022-02-16 14:27:58','2022-02-16 14:27:58','2022-02-16 14:27:58'),(2,2,3,'评价内容2','回复信息2','2022-02-16 14:27:58','2022-02-16 14:27:58','2022-02-16 14:27:58'),(3,3,3,'评价内容3','回复信息3','2022-02-16 14:27:58','2022-02-16 14:27:58','2022-02-16 14:27:58'),(4,4,3,'评价内容4','用户能评论 管理可以回复','2022-02-16 14:27:58','2022-02-16 16:10:44','2022-02-16 14:27:58'),(14,4,1,'预约后可以评价','','2022-02-16 16:19:43',NULL,'2022-02-16 16:19:43');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `yonghu_types` int(11) DEFAULT '1' COMMENT '家庭状况',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`yonghu_types`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1',2,'410224199610232001','17703786901','http://localhost:8080/xiangcuenzhengwufuwu/upload/1644993492060.jpg',1,1,'2022-02-16 14:27:58'),(2,'a2','123456','用户姓名2',1,'410224199610232002','17703786902','http://localhost:8080/xiangcuenzhengwufuwu/upload/1644993485382.webp',2,1,'2022-02-16 14:27:58'),(3,'a3','123456','用户姓名3',2,'410224199610232003','17703786903','http://localhost:8080/xiangcuenzhengwufuwu/upload/1644993475823.jpg',2,1,'2022-02-16 14:27:58');

/*Table structure for table `yuyuexiangmu` */

DROP TABLE IF EXISTS `yuyuexiangmu`;

CREATE TABLE `yuyuexiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiangmu_id` int(11) DEFAULT NULL COMMENT '预约项目',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '预约用户',
  `yuyuexiangmu_time` date DEFAULT NULL COMMENT '预约日期',
  `yuyuexiangmu_address` varchar(200) DEFAULT NULL COMMENT '预约地点',
  `yuyuexiangmu_yesno_types` int(11) DEFAULT NULL COMMENT '预约结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='我的预约';

/*Data for the table `yuyuexiangmu` */

insert  into `yuyuexiangmu`(`id`,`xiangmu_id`,`yonghu_id`,`yuyuexiangmu_time`,`yuyuexiangmu_address`,`yuyuexiangmu_yesno_types`,`create_time`) values (1,1,1,'2022-02-16','预约地点1',1,'2022-02-16 14:27:58'),(2,2,1,'2022-02-16','预约地点2',2,'2022-02-16 14:27:58'),(3,3,1,'2022-02-16','预约地点3',3,'2022-02-16 14:27:58'),(4,4,2,'2022-02-16','预约地点4',2,'2022-02-16 14:27:58'),(12,4,1,'2022-12-22','预约地点12312',2,'2022-02-16 15:38:31'),(13,4,1,'2022-12-31','社区办公室',1,'2022-02-16 16:16:09');

/*Table structure for table `zaixianshenbao` */

DROP TABLE IF EXISTS `zaixianshenbao`;

CREATE TABLE `zaixianshenbao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zaixianshenbao_types` int(11) DEFAULT NULL COMMENT '申报项目',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '申报用户',
  `zaixianshenbao_yesno_types` int(11) DEFAULT NULL COMMENT '申报结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='在线申报';

/*Data for the table `zaixianshenbao` */

insert  into `zaixianshenbao`(`id`,`zaixianshenbao_types`,`yonghu_id`,`zaixianshenbao_yesno_types`,`create_time`) values (1,2,3,1,'2022-02-16 14:27:58'),(2,8,2,1,'2022-02-16 14:27:58'),(3,2,2,1,'2022-02-16 14:27:58'),(4,4,1,1,'2022-02-16 14:27:58'),(5,5,1,2,'2022-02-16 14:27:58'),(6,1,3,3,'2022-02-16 14:27:58'),(12,3,1,1,'2022-02-16 15:34:09'),(13,4,3,2,'2022-02-16 16:11:31');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
