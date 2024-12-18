/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jingjixinwenzixun
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jingjixinwenzixun` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jingjixinwenzixun`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'duanshipin_types','短视频类型',1,'短视频类型1',NULL,NULL,'2023-03-15 11:15:05'),(2,'duanshipin_types','短视频类型',2,'短视频类型2',NULL,NULL,'2023-03-15 11:15:05'),(3,'duanshipin_types','短视频类型',3,'短视频类型3',NULL,NULL,'2023-03-15 11:15:05'),(4,'duanshipin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-15 11:15:05'),(5,'duanshipin_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-03-15 11:15:05'),(6,'duanshipin_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-03-15 11:15:05'),(7,'news_types','新闻类型',1,'新闻类型1',NULL,NULL,'2023-03-15 11:15:05'),(8,'news_types','新闻类型',2,'新闻类型2',NULL,NULL,'2023-03-15 11:15:05'),(9,'news_types','新闻类型',3,'新闻类型3',NULL,NULL,'2023-03-15 11:15:05'),(10,'tuijian_types','推荐类型',1,'置顶',NULL,NULL,'2023-03-15 11:15:05'),(11,'tuijian_types','推荐类型',2,'正常',NULL,NULL,'2023-03-15 11:15:05'),(12,'news_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-15 11:15:05'),(13,'news_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-03-15 11:15:06'),(14,'news_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-03-15 11:15:06'),(15,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-15 11:15:06'),(16,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-15 11:15:06'),(17,'gonggao_types','公告类型',3,'公告类型3',NULL,NULL,'2023-03-15 11:15:06'),(18,'sex_types','性别',1,'男',NULL,NULL,'2023-03-15 11:15:06'),(19,'sex_types','性别',2,'女',NULL,NULL,'2023-03-15 11:15:06'),(20,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-15 11:15:06'),(21,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-15 11:15:06'),(22,'news_types','新闻类型',4,'新闻类型4',NULL,'','2023-03-15 13:33:40'),(23,'news_types','新闻类型',5,'新闻类型5',NULL,'','2023-03-15 13:33:45');

/*Table structure for table `duanshipin` */

DROP TABLE IF EXISTS `duanshipin`;

CREATE TABLE `duanshipin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `duanshipin_name` varchar(200) DEFAULT NULL COMMENT '短视频名称  Search111 ',
  `duanshipin_photo` varchar(200) DEFAULT NULL COMMENT '短视频照片',
  `duanshipin_video` varchar(200) DEFAULT NULL COMMENT '短视频视频',
  `zan_number` int(111) DEFAULT NULL COMMENT '赞',
  `cai_number` int(111) DEFAULT NULL COMMENT '踩',
  `duanshipin_types` int(11) DEFAULT NULL COMMENT '短视频类型 Search111',
  `duanshipin_content` text COMMENT '详情 ',
  `duanshipin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='短视频信息';

/*Data for the table `duanshipin` */

insert  into `duanshipin`(`id`,`duanshipin_name`,`duanshipin_photo`,`duanshipin_video`,`zan_number`,`cai_number`,`duanshipin_types`,`duanshipin_content`,`duanshipin_delete`,`insert_time`,`create_time`) values (1,'短视频名称1','upload/duanshipin1.jpg','upload/video.mp4',34,471,1,'详情1',1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(2,'短视频名称2','upload/duanshipin2.jpg','upload/video.mp4',183,372,2,'详情2',1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(3,'短视频名称3','upload/duanshipin3.jpg','upload/video.mp4',250,17,2,'详情3',1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(4,'短视频名称4','upload/duanshipin4.jpg','upload/video.mp4',213,290,2,'详情4',1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(5,'短视频名称5','upload/duanshipin5.jpg','upload/video.mp4',320,18,3,'详情5',1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(6,'短视频名称6','upload/duanshipin6.jpg','upload/video.mp4',457,275,2,'详情6',1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(7,'短视频名称7','upload/duanshipin7.jpg','upload/video.mp4',114,280,1,'详情7',1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(8,'短视频名称8','upload/duanshipin8.jpg','upload/video.mp4',457,165,3,'详情8',1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(9,'短视频名称9','upload/duanshipin9.jpg','upload/video.mp4',138,47,1,'详情9',1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(10,'短视频名称10','upload/duanshipin10.jpg','upload/video.mp4',389,21,3,'详情10',1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(11,'短视频名称11','upload/duanshipin11.jpg','upload/video.mp4',108,27,3,'详情11',1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(12,'短视频名称12','upload/duanshipin12.jpg','upload/video.mp4',109,367,1,'详情12',1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(13,'短视频名称13','upload/duanshipin13.jpg','upload/video.mp4',461,353,3,'详情13',1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(14,'短视频名称14','upload/duanshipin14.jpg','upload/video.mp4',475,146,2,'详情14',1,'2023-03-15 11:18:51','2023-03-15 11:18:51');

/*Table structure for table `duanshipin_collection` */

DROP TABLE IF EXISTS `duanshipin_collection`;

CREATE TABLE `duanshipin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `duanshipin_id` int(11) DEFAULT NULL COMMENT '短视频',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `duanshipin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='短视频收藏';

/*Data for the table `duanshipin_collection` */

insert  into `duanshipin_collection`(`id`,`duanshipin_id`,`yonghu_id`,`duanshipin_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(2,2,2,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(3,3,3,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(4,4,3,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(6,6,1,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(7,7,2,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(8,8,3,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(9,9,2,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(10,10,2,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(11,11,2,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(12,12,2,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(13,13,2,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(14,14,2,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(15,14,1,2,'2023-03-15 13:24:07','2023-03-15 13:24:07'),(17,10,1,2,'2023-03-15 13:24:16','2023-03-15 13:24:16');

/*Table structure for table `duanshipin_liuyan` */

DROP TABLE IF EXISTS `duanshipin_liuyan`;

CREATE TABLE `duanshipin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `duanshipin_id` int(11) DEFAULT NULL COMMENT '短视频',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `duanshipin_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='短视频留言';

/*Data for the table `duanshipin_liuyan` */

insert  into `duanshipin_liuyan`(`id`,`duanshipin_id`,`yonghu_id`,`duanshipin_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'留言内容1','2023-03-15 11:18:51','回复信息1','2023-03-15 11:18:51','2023-03-15 11:18:51'),(2,2,2,'留言内容2','2023-03-15 11:18:51','回复信息2','2023-03-15 11:18:51','2023-03-15 11:18:51'),(3,3,1,'留言内容3','2023-03-15 11:18:51','回复信息3','2023-03-15 11:18:51','2023-03-15 11:18:51'),(4,4,2,'留言内容4','2023-03-15 11:18:51','回复信息4','2023-03-15 11:18:51','2023-03-15 11:18:51'),(5,5,1,'留言内容5','2023-03-15 11:18:51','回复信息5','2023-03-15 11:18:51','2023-03-15 11:18:51'),(6,6,3,'留言内容6','2023-03-15 11:18:51','回复信息6','2023-03-15 11:18:51','2023-03-15 11:18:51'),(7,7,2,'留言内容7','2023-03-15 11:18:51','回复信息7','2023-03-15 11:18:51','2023-03-15 11:18:51'),(8,8,1,'留言内容8','2023-03-15 11:18:51','回复信息8','2023-03-15 11:18:51','2023-03-15 11:18:51'),(9,9,1,'留言内容9','2023-03-15 11:18:51','回复信息9','2023-03-15 11:18:51','2023-03-15 11:18:51'),(10,10,2,'留言内容10','2023-03-15 11:18:51','回复信息10','2023-03-15 11:18:51','2023-03-15 11:18:51'),(11,11,2,'留言内容11','2023-03-15 11:18:51','回复信息11','2023-03-15 11:18:51','2023-03-15 11:18:51'),(13,13,2,'留言内容13','2023-03-15 11:18:51','回复信息13','2023-03-15 11:18:51','2023-03-15 11:18:51'),(14,14,2,'留言内容14','2023-03-15 11:18:51','回复信息14','2023-03-15 11:18:51','2023-03-15 11:18:51');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,'发布内容1',439,1,'2023-03-15 11:18:51','2023-03-15 11:18:51','2023-03-15 11:18:51'),(2,'帖子标题2',2,NULL,'发布内容2',364,1,'2023-03-15 11:18:51','2023-03-15 11:18:51','2023-03-15 11:18:51'),(3,'帖子标题3',1,NULL,'发布内容3',156,1,'2023-03-15 11:18:51','2023-03-15 11:18:51','2023-03-15 11:18:51'),(4,'帖子标题4',3,NULL,'发布内容4',280,1,'2023-03-15 11:18:51','2023-03-15 11:18:51','2023-03-15 11:18:51'),(5,'帖子标题5',3,NULL,'发布内容5',208,1,'2023-03-15 11:18:51','2023-03-15 11:18:51','2023-03-15 11:18:51'),(6,'帖子标题6',3,NULL,'发布内容6',232,1,'2023-03-15 11:18:51','2023-03-15 11:18:51','2023-03-15 11:18:51'),(7,'帖子标题7',3,NULL,'发布内容7',247,1,'2023-03-15 11:18:51','2023-03-15 11:18:51','2023-03-15 11:18:51'),(8,'帖子标题8',1,NULL,'发布内容8',32,1,'2023-03-15 11:18:51','2023-03-15 11:18:51','2023-03-15 11:18:51'),(9,'帖子标题9',3,NULL,'发布内容9',327,1,'2023-03-15 11:18:51','2023-03-15 11:18:51','2023-03-15 11:18:51'),(10,'帖子标题10',2,NULL,'发布内容10',350,1,'2023-03-15 11:18:51','2023-03-15 11:18:51','2023-03-15 11:18:51'),(11,'帖子标题11',1,NULL,'发布内容11',293,1,'2023-03-15 11:18:51','2023-03-15 11:18:51','2023-03-15 11:18:51'),(12,'帖子标题12',3,NULL,'发布内容12',158,1,'2023-03-15 11:18:51','2023-03-15 11:18:51','2023-03-15 11:18:51'),(13,'帖子标题13',2,NULL,'发布内容13',405,1,'2023-03-15 11:18:51','2023-03-15 11:18:51','2023-03-15 11:18:51'),(14,'帖子标题14',1,NULL,'发布内容14',170,1,'2023-03-15 11:18:51','2023-03-15 11:18:51','2023-03-15 11:18:51'),(15,NULL,1,NULL,'123123',14,2,'2023-03-15 13:24:35',NULL,'2023-03-15 13:24:35'),(16,NULL,NULL,1,'123123',14,2,'2023-03-15 13:33:57',NULL,'2023-03-15 13:33:57');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `gonggao_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `gonggao_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`gonggao_photo`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告标题1',3,'upload/gonggao1.jpg','2023-03-15 11:18:51','公告详情1','2023-03-15 11:18:51'),(2,'公告标题2',2,'upload/gonggao2.jpg','2023-03-15 11:18:51','公告详情2','2023-03-15 11:18:51'),(3,'公告标题3',1,'upload/gonggao3.jpg','2023-03-15 11:18:51','公告详情3','2023-03-15 11:18:51'),(4,'公告标题4',1,'upload/gonggao4.jpg','2023-03-15 11:18:51','公告详情4','2023-03-15 11:18:51'),(5,'公告标题5',3,'upload/gonggao5.jpg','2023-03-15 11:18:51','公告详情5','2023-03-15 11:18:51'),(6,'公告标题6',1,'upload/gonggao6.jpg','2023-03-15 11:18:51','公告详情6','2023-03-15 11:18:51'),(7,'公告标题7',3,'upload/gonggao7.jpg','2023-03-15 11:18:51','公告详情7','2023-03-15 11:18:51'),(8,'公告标题8',1,'upload/gonggao8.jpg','2023-03-15 11:18:51','公告详情8','2023-03-15 11:18:51'),(9,'公告标题9',3,'upload/gonggao9.jpg','2023-03-15 11:18:51','公告详情9','2023-03-15 11:18:51'),(10,'公告标题10',3,'upload/gonggao10.jpg','2023-03-15 11:18:51','公告详情10','2023-03-15 11:18:51'),(11,'公告标题11',2,'upload/gonggao11.jpg','2023-03-15 11:18:51','公告详情11','2023-03-15 11:18:51'),(12,'公告标题12',3,'upload/gonggao12.jpg','2023-03-15 11:18:51','公告详情12','2023-03-15 11:18:51'),(13,'公告标题13',1,'upload/gonggao13.jpg','2023-03-15 11:18:51','公告详情13','2023-03-15 11:18:51'),(14,'公告标题14',3,'upload/gonggao14.jpg','2023-03-15 11:18:51','公告详情14','2023-03-15 11:18:51');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `tuijian_types` int(11) DEFAULT NULL COMMENT '推荐类型  Search111 ',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='新闻信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`tuijian_types`,`news_content`,`create_time`) values (1,'新闻标题1',1,'upload/news1.jpg','2023-03-15 11:18:51',1,'新闻详情1','2023-03-15 11:18:51'),(2,'新闻标题2',1,'upload/news2.jpg','2023-03-15 11:18:51',1,'新闻详情2','2023-03-15 11:18:51'),(3,'新闻标题3',1,'upload/news3.jpg','2023-03-15 11:18:51',1,'新闻详情3','2023-03-15 11:18:51'),(4,'新闻标题4',1,'upload/news4.jpg','2023-03-15 11:18:51',2,'新闻详情4','2023-03-15 11:18:51'),(5,'新闻标题5',2,'upload/news5.jpg','2023-03-15 11:18:51',2,'新闻详情5','2023-03-15 11:18:51'),(6,'新闻标题6',3,'upload/news6.jpg','2023-03-15 11:18:51',2,'新闻详情6','2023-03-15 11:18:51'),(7,'新闻标题7',3,'upload/news7.jpg','2023-03-15 11:18:51',2,'新闻详情7','2023-03-15 11:18:51'),(8,'新闻标题8',3,'upload/news8.jpg','2023-03-15 11:18:51',2,'新闻详情8','2023-03-15 11:18:51'),(9,'新闻标题9',3,'upload/news9.jpg','2023-03-15 11:18:51',1,'新闻详情9','2023-03-15 11:18:51'),(10,'新闻标题10',3,'upload/news10.jpg','2023-03-15 11:18:51',2,'新闻详情10','2023-03-15 11:18:51'),(11,'新闻标题11',1,'upload/news11.jpg','2023-03-15 11:18:51',1,'新闻详情11','2023-03-15 11:18:51'),(12,'新闻标题12',2,'upload/news12.jpg','2023-03-15 11:18:51',2,'新闻详情12','2023-03-15 11:18:51'),(13,'新闻标题13',1,'upload/news13.jpg','2023-03-15 11:18:51',2,'新闻详情13','2023-03-15 11:18:51'),(14,'新闻标题14',1,'upload/news14.jpg','2023-03-15 11:18:51',1,'<p>新闻详情14</p>','2023-03-15 11:18:51');

/*Table structure for table `news_collection` */

DROP TABLE IF EXISTS `news_collection`;

CREATE TABLE `news_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_id` int(11) DEFAULT NULL COMMENT '新闻',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `news_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='新闻收藏';

/*Data for the table `news_collection` */

insert  into `news_collection`(`id`,`news_id`,`yonghu_id`,`news_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(2,2,2,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(3,3,1,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(4,4,3,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(5,5,3,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(6,6,2,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(7,7,2,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(8,8,2,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(9,9,2,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(10,10,3,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(11,11,1,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(12,12,3,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(13,13,2,1,'2023-03-15 11:18:51','2023-03-15 11:18:51'),(14,14,3,1,'2023-03-15 11:18:51','2023-03-15 11:18:51');

/*Table structure for table `news_liuyan` */

DROP TABLE IF EXISTS `news_liuyan`;

CREATE TABLE `news_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_id` int(11) DEFAULT NULL COMMENT '新闻',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `news_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='新闻留言';

/*Data for the table `news_liuyan` */

insert  into `news_liuyan`(`id`,`news_id`,`yonghu_id`,`news_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2023-03-15 11:18:51','回复信息1','2023-03-15 11:18:51','2023-03-15 11:18:51'),(2,2,3,'留言内容2','2023-03-15 11:18:51','回复信息2','2023-03-15 11:18:51','2023-03-15 11:18:51'),(3,3,3,'留言内容3','2023-03-15 11:18:51','回复信息3','2023-03-15 11:18:51','2023-03-15 11:18:51'),(4,4,2,'留言内容4','2023-03-15 11:18:51','回复信息4','2023-03-15 11:18:51','2023-03-15 11:18:51'),(5,5,2,'留言内容5','2023-03-15 11:18:51','回复信息5','2023-03-15 11:18:51','2023-03-15 11:18:51'),(6,6,3,'留言内容6','2023-03-15 11:18:51','回复信息6','2023-03-15 11:18:51','2023-03-15 11:18:51'),(7,7,2,'留言内容7','2023-03-15 11:18:51','回复信息7','2023-03-15 11:18:51','2023-03-15 11:18:51'),(8,8,1,'留言内容8','2023-03-15 11:18:51','回复信息8','2023-03-15 11:18:51','2023-03-15 11:18:51'),(9,9,3,'留言内容9','2023-03-15 11:18:51','回复信息9','2023-03-15 11:18:51','2023-03-15 11:18:51'),(10,10,1,'留言内容10','2023-03-15 11:18:51','回复信息10','2023-03-15 11:18:51','2023-03-15 11:18:51'),(11,11,1,'留言内容11','2023-03-15 11:18:51','回复信息11','2023-03-15 11:18:51','2023-03-15 11:18:51'),(12,12,1,'留言内容12','2023-03-15 11:18:51','回复信息12','2023-03-15 11:18:51','2023-03-15 11:18:51'),(13,13,3,'留言内容13','2023-03-15 11:18:51','回复信息13','2023-03-15 11:18:51','2023-03-15 11:18:51'),(14,14,2,'留言内容14','2023-03-15 11:18:51','回复信息14','2023-03-15 11:18:51','2023-03-15 11:18:51');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','doltqqx214pacfhnlj309dl9um2kmxxe','2023-03-15 11:35:42','2023-03-15 14:33:25'),(2,1,'a1','yonghu','用户','x11sup36jihi55io00oxvlzlv8gkuyn8','2023-03-15 11:38:07','2023-03-15 14:32:52');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-15 11:15:05');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`sex_types`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','upload/yonghu1.jpg','17703786901','410224199010102001',1,'1@qq.com',1,'2023-03-15 11:18:51'),(2,'a2','123456','用户姓名2','upload/yonghu2.jpg','17703786902','410224199010102002',2,'2@qq.com',1,'2023-03-15 11:18:51'),(3,'a3','123456','用户姓名3','upload/yonghu3.jpg','17703786903','410224199010102003',2,'3@qq.com',1,'2023-03-15 11:18:51');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
