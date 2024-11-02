/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xueshengshiwuchulixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xueshengshiwuchulixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xueshengshiwuchulixitong`;

/*Table structure for table `banji_kecheng_laoshi` */

DROP TABLE IF EXISTS `banji_kecheng_laoshi`;

CREATE TABLE `banji_kecheng_laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级   ',
  `kecheng_types` int(11) DEFAULT NULL COMMENT '课程   ',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `beizhu_content` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='班级课程老师关系';

/*Data for the table `banji_kecheng_laoshi` */

insert  into `banji_kecheng_laoshi`(`id`,`banji_types`,`kecheng_types`,`laoshi_id`,`beizhu_content`,`create_time`) values (1,3,2,2,'是是\r\n','2021-03-25 20:31:37'),(2,3,3,2,'关系备注\r\n','2021-03-25 20:38:35'),(3,1,3,1,'','2021-03-26 10:53:05'),(4,2,2,5,'','2021-03-26 11:02:52');

/*Table structure for table `changdishenqing` */

DROP TABLE IF EXISTS `changdishenqing`;

CREATE TABLE `changdishenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `changdi_types` int(11) DEFAULT NULL COMMENT '场地   ',
  `shiyong_types` int(11) DEFAULT NULL COMMENT '使用类型   ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '申请人',
  `start_time` timestamp NULL DEFAULT NULL COMMENT '使用时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `shenqing_content` varchar(200) DEFAULT NULL COMMENT '申请内容',
  `shenhe_types` int(11) DEFAULT NULL COMMENT '审核类型   ',
  `beizhu_content` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='场地申请';

/*Data for the table `changdishenqing` */

insert  into `changdishenqing`(`id`,`changdi_types`,`shiyong_types`,`yonghu_id`,`start_time`,`end_time`,`shenqing_content`,`shenhe_types`,`beizhu_content`,`create_time`) values (1,5,3,1,'2021-03-27 00:00:00','2021-03-29 00:00:00','迎接领导李焕英\r\n',2,'当天另有用图\r\n','2021-03-26 10:05:44'),(2,4,2,1,'2021-03-26 22:00:00','2021-03-31 00:00:00','跨年晚会使用\r\n',1,'同意的备注\r\n','2021-03-26 10:16:09'),(3,4,2,2,'2021-03-31 00:00:00','2021-04-01 00:00:00','算上我\r\n',3,NULL,'2021-03-26 11:13:32');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字   ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-25 19:35:36'),(2,'sex_types','性别',2,'女',NULL,'2021-03-25 19:35:36'),(3,'politics_types','政治面貌',1,'群众',NULL,'2021-03-25 19:35:36'),(4,'politics_types','政治面貌',2,'党员',NULL,'2021-03-25 19:35:36'),(5,'banji_types','班级名称',1,'班级一',NULL,'2021-03-25 19:35:36'),(6,'banji_types','班级名称',2,'班级二',NULL,'2021-03-25 19:35:36'),(7,'banji_types','班级名称',3,'班级三',NULL,'2021-03-25 19:35:36'),(8,'kecheng_types','课程名称',1,'语文',NULL,'2021-03-25 19:35:36'),(9,'kecheng_types','课程名称',2,'数学',NULL,'2021-03-25 19:35:36'),(10,'kecheng_types','课程名称',3,'英文',NULL,'2021-03-25 19:35:36'),(11,'nianji_types','年级名称',1,'年级一',NULL,'2021-03-25 19:35:36'),(12,'nianji_types','年级名称',2,'年级二',NULL,'2021-03-25 19:35:36'),(13,'nianji_types','年级名称',3,'年级三',NULL,'2021-03-25 19:35:36'),(14,'role_types','权限名称',1,'老师',NULL,'2021-03-25 19:35:37'),(15,'role_types','权限名称',2,'辅导员',NULL,'2021-03-25 19:35:37'),(16,'changdi_types','场地名称',1,'北操场',NULL,'2021-03-25 19:35:37'),(17,'changdi_types','场地名称',2,'南操场',NULL,'2021-03-25 19:35:37'),(18,'changdi_types','场地名称',3,'体育馆',NULL,'2021-03-25 19:35:37'),(19,'changdi_types','场地名称',4,'多媒体教室一',NULL,'2021-03-25 19:35:37'),(20,'changdi_types','场地名称',5,'多媒体教室二',NULL,'2021-03-25 19:35:37'),(21,'shiyong_types','使用名称',1,'元旦汇演',NULL,'2021-03-25 19:35:37'),(22,'shiyong_types','使用名称',2,'跨年',NULL,'2021-03-25 19:35:37'),(23,'shiyong_types','使用名称',3,'迎接上级领导',NULL,'2021-03-25 19:35:37'),(24,'shiyong_types','使用名称',4,'其他',NULL,'2021-03-25 19:35:37'),(25,'shenhe_types','审核名称',1,'同意',NULL,'2021-03-25 19:35:37'),(26,'shenhe_types','审核名称',2,'驳回',NULL,'2021-03-25 19:35:37'),(27,'shenhe_types','审核名称',3,'待审批',NULL,'2021-03-25 19:35:37'),(28,'qingjia_types','请假类型名称',1,'事假',NULL,'2021-03-25 19:35:37'),(29,'qingjia_types','请假类型名称',2,'病假',NULL,'2021-03-25 19:35:37'),(30,'qingjia_types','请假类型名称',3,'其他',NULL,'2021-03-25 19:35:37'),(31,'qingjia_types','请假类型名称',4,'啊啊啊啊',NULL,'2021-03-26 11:04:26');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `laoshi_nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `laoshi_address` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `role_types` int(11) DEFAULT NULL COMMENT '角色  ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_name`,`sex_types`,`laoshi_id_number`,`laoshi_phone`,`laoshi_photo`,`laoshi_nation`,`politics_types`,`laoshi_address`,`role_types`,`create_time`) values (1,'a11','123456','张11',2,'410224199610232011','17703786911','http://localhost:8080/xueshengshiwuchulixitong/file/download?fileName=1616678028607.jpg','汉',2,'北京3环222',1,'2021-03-25 19:53:21'),(2,'a22','123456','张22老师',1,'410224199610232022','17703786922','http://localhost:8080/xueshengshiwuchulixitong/file/download?fileName=1616678037911.jpg','汉',1,'北京2环',1,'2021-03-25 19:55:01'),(3,'a33','123456','张三三',2,'410224199610232033','17703786933','http://localhost:8080/xueshengshiwuchulixitong/file/download?fileName=1616678048411.jpg','汉',2,'石家庄',2,'2021-03-25 20:36:21'),(4,'a44','123456','张44',2,'410224199610232099','17703786944','http://localhost:8080/xueshengshiwuchulixitong/file/download?fileName=1616678057233.jpg','汉',2,'河南开封11',2,'2021-03-25 20:37:23'),(5,'a55','123456','张55老师',2,'410224199610232055','17703786955','http://localhost:8080/xueshengshiwuchulixitong/file/download?fileName=1616727728670.jpg','汉',2,'北京3环',1,'2021-03-26 11:02:24');

/*Table structure for table `qingjiashenqing` */

DROP TABLE IF EXISTS `qingjiashenqing`;

CREATE TABLE `qingjiashenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '请假人',
  `qingjia_types` int(11) DEFAULT NULL COMMENT '请假类型   ',
  `qingjia_content` varchar(200) DEFAULT NULL COMMENT '请假原因',
  `start_time` timestamp NULL DEFAULT NULL COMMENT '请假开始时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '请假结束时间',
  `shenhe_types` int(11) DEFAULT NULL COMMENT '审核类型   ',
  `beizhu_content` varchar(200) DEFAULT NULL COMMENT '审核备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='请假申请';

/*Data for the table `qingjiashenqing` */

insert  into `qingjiashenqing`(`id`,`yonghu_id`,`qingjia_types`,`qingjia_content`,`start_time`,`end_time`,`shenhe_types`,`beizhu_content`,`create_time`) values (1,1,2,'病了\r\n','2021-03-27 00:00:00','2021-03-29 00:00:00',2,'','2021-03-26 10:16:53'),(2,1,1,'姐姐结婚 请假\r\n','2021-03-29 00:00:00','2021-03-31 00:00:00',1,'同意备注111\r\n','2021-03-26 10:18:34'),(3,2,2,'生病\r\n','2021-03-30 00:00:00','2021-03-31 00:00:00',3,NULL,'2021-03-26 11:13:04');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','472aomeahecb5egxl5tb23oyfh9obeo8','2021-03-25 19:30:48','2021-03-26 11:58:43'),(2,1,'a1','yonghu','用户','1k8ivjqi71u1ukjdsvczz3jacrxq1b3t','2021-03-26 09:26:19','2021-03-26 11:13:22'),(3,7,'a111','users','行政老师','zheahptba48qtb09iyxymsv2ei0tavso','2021-03-26 10:22:09','2021-03-26 11:35:05'),(4,3,'a33','laoshi','辅导员','4386kf2hfwww289chh3rla32htzmkuan','2021-03-26 10:39:23','2021-03-26 11:39:24'),(5,1,'a11','laoshi','老师','up7175b82isjo1w0tceisuaa3op21644','2021-03-26 10:40:28','2021-03-26 12:07:44'),(6,8,'a222','users','行政老师','sxm72nt5v14tpg9t5ntlvjzh3wtrahdt','2021-03-26 11:04:41','2021-03-26 12:04:41'),(7,2,'a22','laoshi','老师','wii1z16w48l1vttmpe5niocielpjo02l','2021-03-26 11:09:07','2021-03-26 12:09:07'),(8,4,'a44','laoshi','辅导员','qafllvipzgc6tizmv7ilxeemtgf2d7an','2021-03-26 11:09:51','2021-03-26 12:09:51'),(9,2,'a2','yonghu','用户','oymfkqdeme0gwitgzzi950v4my0cg2yu','2021-03-26 11:10:53','2021-03-26 12:12:03');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13'),(7,'a111','123456','行政老师','2021-03-26 10:22:01'),(8,'a222','123456','行政老师','2021-03-26 10:58:55');

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题 Search',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` longtext COMMENT '内容',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`neirong`,`riqi`) values (1,'2021-03-25 19:35:36','日常公告','日常公告','公告信息','2021-03-25 19:35:36'),(2,'2021-03-25 19:35:36','紧急公告','紧急公告','公告信息','2021-03-25 19:35:36'),(3,'2021-03-25 19:35:36','其他公告','其他公告','公告信息','2021-03-25 19:35:36');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '学生姓名   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '学生性别',
  `id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号   ',
  `phone` varchar(200) DEFAULT NULL COMMENT '学生手机号  ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '学生照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '学生民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '学生政治面貌',
  `address` varchar(200) DEFAULT NULL COMMENT '学生家庭住址',
  `banji_types` int(11) DEFAULT NULL COMMENT '学生班级   ',
  `nianji_types` int(11) DEFAULT NULL COMMENT '学生年级   ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`name`,`sex_types`,`id_number`,`phone`,`yonghu_photo`,`nation`,`politics_types`,`address`,`banji_types`,`nianji_types`,`create_time`) values (1,'a1','123456','张1',2,'410224199610232011','17703789991','http://localhost:8080/xueshengshiwuchulixitong/file/download?fileName=1616677965372.jpg','汉',1,'郑州东郊',1,1,'2021-03-25 19:39:07'),(2,'a2','123456','张2',2,'410224199610232012','17703789992','http://localhost:8080/xueshengshiwuchulixitong/file/download?fileName=1616677976770.jpg','汉',1,'郑州东郊',2,2,'2021-03-25 19:48:48'),(3,'a3','123456','张3',2,'410224199610232013','17703789993','http://localhost:8080/xueshengshiwuchulixitong/file/download?fileName=1616677985849.jpg','汉',2,'郑州东郊',3,3,'2021-03-25 19:49:41'),(4,'a4','123456','张4',2,'410224199610232014','17703789994','http://localhost:8080/xueshengshiwuchulixitong/file/download?fileName=1616677996028.jpg','汉',2,'郑州东郊',1,1,'2021-03-25 19:50:13'),(5,'a5','123456','张5',2,'410224199610232015','17703789995','http://localhost:8080/xueshengshiwuchulixitong/file/download?fileName=1616727582255.jpg','汉',2,'郑州东郊11',3,3,'2021-03-26 11:00:25');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
