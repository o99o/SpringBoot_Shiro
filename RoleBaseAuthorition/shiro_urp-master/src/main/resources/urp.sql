CREATE DATABASE /*!32312 IF NOT EXISTS*/`urp` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `urp`;

/*Table structure for table `t_permission` */

DROP TABLE IF EXISTS `t_permission`;

CREATE TABLE `t_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(50) DEFAULT NULL,
  `remarks` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `t_permission` */

insert  into `t_permission`(`id`,`permission_name`,`remarks`) values (1,'select','��ѯ'),(2,'insert','����'),(3,'update','����'),(4,'delete','ɾ��');

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `remarks` varchar(1000) DEFAULT NULL,
  `role_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_role` */

insert  into `t_role`(`id`,`remarks`,`role_name`) values (1,'��ͨ��ɫ','p'),(2,'��Ҫ��ɫ','ip'),(3,'������ɫ','vip');

/*Table structure for table `t_role_permission` */

DROP TABLE IF EXISTS `t_role_permission`;

CREATE TABLE `t_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `remarks` varchar(1000) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjobmrl6dorhlfite4u34hciik` (`permission_id`),
  KEY `FK90j038mnbnthgkc17mqnoilu9` (`role_id`),
  CONSTRAINT `FK90j038mnbnthgkc17mqnoilu9` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`),
  CONSTRAINT `FKjobmrl6dorhlfite4u34hciik` FOREIGN KEY (`permission_id`) REFERENCES `t_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `t_role_permission` */

insert  into `t_role_permission`(`id`,`remarks`,`permission_id`,`role_id`) values (1,'������ͨ��ɫselectȨ��',1,1),(2,'������Ҫ��ɫselectȨ��',1,2),(3,'������Ҫ��ɫinsertȨ��',2,2),(4,'���賬����ɫselectȨ��',1,3),(5,'���賬����ɫinsertȨ��',2,3),(6,'���賬����ɫupdateȨ��',3,3),(7,'���賬����ɫdeleteȨ��',4,3);

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(100) NOT NULL,
  `remarks` varchar(1000) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`password`,`remarks`,`user_name`) values (1,'123','JKing�Ŷ�','jking'),(2,'123','��ά�Ŷ�','wteam'),(3,'123','ITAEM�Ŷ�','itaem');

/*Table structure for table `t_user_role` */

DROP TABLE IF EXISTS `t_user_role`;

CREATE TABLE `t_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `remarks` varchar(1000) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa9c8iiy6ut0gnx491fqx4pxam` (`role_id`),
  KEY `FKq5un6x7ecoef5w1n39cop66kl` (`user_id`),
  CONSTRAINT `FKq5un6x7ecoef5w1n39cop66kl` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FKa9c8iiy6ut0gnx491fqx4pxam` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_user_role` */

insert  into `t_user_role`(`id`,`remarks`,`role_id`,`user_id`) values (1,'����JKing�Ŷ���ͨ��ɫ',1,1),(2,'������ά�Ŷ���Ҫ��ɫ',2,2),(3,'����ITAEM�Ŷӳ�����ɫ',3,3);
