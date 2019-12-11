# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.41)
# Database: treehole
# Generation Time: 2019-12-06 07:38:29 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table article
# ------------------------------------------------------------

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` char(32) DEFAULT NULL COMMENT '名字',
  `sex` char(32) DEFAULT 'boy' COMMENT '性别,boy:男gril:女，unknown:未知',
  `content` text COMMENT '内容',
  `is_anonymous` tinyint(1) DEFAULT NULL COMMENT '是否匿名',
  `send_time` char(50) DEFAULT NULL COMMENT '发布时间',
  `ip` char(32) DEFAULT NULL COMMENT 'IP',
  `qq` char(32) DEFAULT NULL COMMENT 'qq',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;

INSERT INTO `article` (`id`, `name`, `sex`, `content`, `is_anonymous`, `send_time`, `ip`, `qq`)
VALUES
	(2,'wangsu','girl','也不知道吃点啥',0,'1239484884','192.168.1.11','4444444'),
	(3,'啦啦啦','boy','你好啊',1,'1982','134.188.88.99','4444555'),
	(4,'王五','unknown','好简单啊',0,'1111111111','192.168.1.1','6666666'),
	(8,'小红','boy','lalal',1,'2019-12-04 16:38:01','0:0:0:0:0:0:0:1','1234567'),
	(9,'啦啦啦','boy','啦啦啦啦',1,'2019-12-04 19:27:28','0:0:0:0:0:0:0:1','13456667'),
	(10,'啦啦啦','girl','没那么简单',0,'2019-12-04 19:28:04','0:0:0:0:0:0:0:1','12345678'),
	(11,'小白','girl','啦啦啦啦',0,'2019-12-04 19:28:50','0:0:0:0:0:0:0:1','15555'),
	(12,'男','unknown','啦啦啦',1,'2019-12-04 19:35:24','0:0:0:0:0:0:0:1','111111'),
	(13,'啦啦啦','boy','噜啦噜啦嘞',0,'2019-12-04 21:15:30','192.168.1.92','12345'),
	(14,'xaq','unknown','丑逼',0,'2019-12-05 10:32:05','0:0:0:0:0:0:0:1','1234567'),
	(15,'啦啦啦','girl','冬天到了，春天还会远吗',0,'2019-12-05 20:38:12','0:0:0:0:0:0:0:1','1234567'),
	(16,'小王','boy','结婚的好多好多好多话',0,'2019-12-06 10:37:45','0:0:0:0:0:0:0:1','啦啦啦'),
	(17,'小心心','boy','垃圾快递进口简单的教程',0,'2019-12-06 10:47:00','0:0:0:0:0:0:0:1','235365'),
	(18,'吴静','girl','啦啦啦啦',0,'2019-12-06 11:31:18','0:0:0:0:0:0:0:1','1334556'),
	(19,'泰戈尔','boy','啦啊啦啦✌️',0,'2019-12-06 14:55:31','0:0:0:0:0:0:0:1','12345678');

/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `loginname` char(50) DEFAULT NULL COMMENT '账号',
  `password` char(50) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `loginname`, `password`)
VALUES
	(1,'haodapang','haodapang');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
