/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 8.0.29 : Database - bbs
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bbs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `bbs`;

/*Table structure for table `tbl_board` */

DROP TABLE IF EXISTS `tbl_board`;

CREATE TABLE `tbl_board` (
  `boardId` int NOT NULL AUTO_INCREMENT COMMENT '板块Id，主键',
  `boardName` varchar(50) NOT NULL COMMENT '板块名称',
  `parentId` int NOT NULL COMMENT '父板块Id，说明板块的上下级关系',
  PRIMARY KEY (`boardId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='BBS板块表';

/*Data for the table `tbl_board` */

insert  into `tbl_board`(`boardId`,`boardName`,`parentId`) values (1,'.NET',0),(2,'Java技术',0),(3,'数据库技术',0),(4,'娱乐',0),(5,'C#语言',1),(6,'WinForms',1),(7,'ADO.NET',1),(8,'ASP.NET',1),(9,'Java基础',2),(10,'JSP技术',2),(11,'Servlet技术',2),(12,'Eclipse应用',2),(13,'SQL Server基础',3),(14,'SQL Server高级',3),(15,'灌水乐园',4),(16,'彩6吧',4),(17,'塔克夫吧',4);

/*Table structure for table `tbl_reply` */

DROP TABLE IF EXISTS `tbl_reply`;

CREATE TABLE `tbl_reply` (
  `replyId` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL COMMENT '发帖标题',
  `content` varchar(2000) NOT NULL COMMENT '内容',
  `publishTime` datetime NOT NULL COMMENT '发帖时间',
  `modifyTime` datetime NOT NULL COMMENT '修改时间',
  `uid` int NOT NULL COMMENT '发帖用户Id，外键',
  `topicId` int NOT NULL COMMENT '发帖表Id，外键',
  PRIMARY KEY (`replyId`),
  KEY `fk_reply_uid` (`uid`),
  KEY `fk_topicId` (`topicId`),
  CONSTRAINT `fk_reply_uid` FOREIGN KEY (`uid`) REFERENCES `tbl_user` (`id`),
  CONSTRAINT `fk_topicId` FOREIGN KEY (`topicId`) REFERENCES `tbl_topic` (`topicId`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='回帖表';

/*Data for the table `tbl_reply` */

insert  into `tbl_reply`(`replyId`,`title`,`content`,`publishTime`,`modifyTime`,`uid`,`topicId`) values (21,'·12·1','a撒大大大','2024-05-17 15:05:54','2024-05-17 15:05:54',3,25),(22,'12','12121212','2024-05-17 15:24:07','2024-05-17 15:24:07',3,6),(23,'啊实打实','啊大大大','2024-05-17 15:32:39','2024-05-17 15:32:39',3,7),(33,'12','1212121','2024-05-17 16:39:58','2024-05-17 16:39:58',3,4),(34,'1212','121212','2024-05-17 16:40:01','2024-05-17 16:40:01',3,4),(35,'21212','12121','2024-05-17 16:40:04','2024-05-17 16:40:04',3,4),(36,'驱蚊器','委屈恶趣味企鹅','2024-05-17 18:31:26','2024-05-17 18:41:01',3,5),(39,'去中文论坛','这是地址https://sns.oddba.cn，里面有离线版','2024-05-17 19:02:31','2024-05-17 19:02:31',3,44),(40,'121','12121212','2024-05-17 20:03:49','2024-05-17 20:05:43',3,32),(41,'欢迎','欢迎来到这个大家庭','2024-05-17 20:08:06','2024-05-17 20:08:06',3,3);

/*Table structure for table `tbl_topic` */

DROP TABLE IF EXISTS `tbl_topic`;

CREATE TABLE `tbl_topic` (
  `topicId` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL COMMENT '发帖标题',
  `content` varchar(2000) NOT NULL COMMENT '内容',
  `publishTime` datetime NOT NULL COMMENT '发帖时间',
  `modifyTime` datetime NOT NULL COMMENT '修改时间',
  `uid` int NOT NULL COMMENT '发帖用户Id，外键',
  `boardId` int NOT NULL COMMENT '发帖板块Id，外键',
  PRIMARY KEY (`topicId`),
  KEY `fk_topic_uid` (`uid`),
  KEY `fk_boardId` (`boardId`),
  CONSTRAINT `fk_boardId` FOREIGN KEY (`boardId`) REFERENCES `tbl_board` (`boardId`),
  CONSTRAINT `fk_topic_uid` FOREIGN KEY (`uid`) REFERENCES `tbl_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='发帖表';

/*Data for the table `tbl_topic` */

insert  into `tbl_topic`(`topicId`,`title`,`content`,`publishTime`,`modifyTime`,`uid`,`boardId`) values (1,'java是永远的神','java yyds yyds yyds 欧耶！','2024-05-10 15:54:44','2024-05-10 15:54:44',1,10),(2,'.net是永远的神','net yyds yyds yyds 欧耶！','2024-05-30 15:54:44','2024-05-24 15:54:44',1,8),(3,'新人请多多关照捏','刚来，人生地不熟的，多多指教！','2024-05-14 09:51:01','2024-05-14 09:51:04',1,8),(4,'java找不到工作怎么办','各位大哥帮帮我，毕业快一年了到现在还没找有推荐的吗','2024-05-15 09:27:54','2024-05-15 09:27:56',2,9),(5,'什么是Dao模式，求助','最近看到一个文章是讲Dao模式的，看来半天都没看懂。有没有大佬解释一下','2005-12-24 09:30:54','2009-07-01 09:31:01',2,9),(6,'SSM是什么意思啊？','如题','2021-02-11 09:32:33','2024-04-25 09:32:38',1,9),(7,'java中怎么创建一个二维数组','不懂二维数组是什么意思，只知道一维','2014-11-08 09:33:56','2016-07-16 09:34:16',3,9),(8,'你们找到工作了吗？','如题，我也是毕业了很久到现在也没找到','2024-06-13 09:36:27','2024-06-28 09:36:42',3,9),(9,'jdk最新版本有什么新特性？','现在jdk好像都到22了吧，估计新特性多了不少','2024-05-07 09:38:32','2024-05-14 09:38:38',1,9),(25,'什么建表','数据库萌新，刚上手不到3个小时','2024-05-16 10:13:03','2024-05-16 10:13:03',3,14),(28,'来玩吗','有人来株洲荷塘区这边水上乐园玩吗，门票挺便宜的还有马戏团','2024-05-16 11:20:26','2024-05-16 11:20:26',3,15),(32,'1212','12','2024-05-17 10:40:41','2024-05-17 10:40:41',3,8),(43,'我去额地区的','沙发沙发沙发','2024-05-17 14:53:54','2024-05-17 14:53:54',3,8),(44,'求助','njt太煞笔了，有没有离线版的安装包','2024-05-17 19:01:33','2024-05-17 19:01:33',15,17);

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '用户名',
  `pass` varchar(20) NOT NULL COMMENT '密码',
  `head` varchar(20) NOT NULL COMMENT '用户头像图片名，如.1.jpg',
  `regTime` datetime NOT NULL COMMENT '注册时间',
  `gender` smallint NOT NULL COMMENT '性别：1（男）0（女）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`id`,`name`,`pass`,`head`,`regTime`,`gender`) values (1,'张三','123','1.gif','2020-10-10 10:10:10',1),(2,'如花','123','2.gif','2020-11-11 10:10:10',0),(3,'lindong','114514','4.gif','2024-05-13 09:38:43',1),(14,'沭轩','ifhsif','15.gif','2024-05-14 08:54:52',1),(15,'夜宵','114514','12.gif','2024-05-17 19:00:24',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
