/*
SQLyog Ultimate v8.82 
MySQL - 5.1.45-community : Database - office_manager
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`office_manager` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `office_manager`;

/*Table structure for table `emp_attendance` */

DROP TABLE IF EXISTS `emp_attendance`;

CREATE TABLE `emp_attendance` (
  `ecode` varchar(30) DEFAULT NULL,
  `atnd_date` varchar(10) DEFAULT NULL,
  `time_in` varchar(10) DEFAULT NULL,
  `time_out` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emp_attendance` */

insert  into `emp_attendance`(`ecode`,`atnd_date`,`time_in`,`time_out`) values ('102','2024-03-05','7:4:6','1:14:3'),('1234','2024-03-08','5:59:46','5:59:53'),('emp','2024-03-15','5:2:42','5:2:45'),('102','2024-03-16','1:13:58','1:14:3');

/*Table structure for table `emp_mstr` */

DROP TABLE IF EXISTS `emp_mstr`;

CREATE TABLE `emp_mstr` (
  `ecode` int(5) NOT NULL,
  `ename` varchar(30) DEFAULT NULL,
  `edob` varchar(20) DEFAULT NULL,
  `egender` varchar(10) DEFAULT NULL,
  `epost` varchar(30) DEFAULT NULL,
  `eaddr` varchar(200) DEFAULT NULL,
  `ecity` varchar(20) DEFAULT NULL,
  `ecount` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `id_name` varchar(30) DEFAULT NULL,
  `id_no` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ecode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emp_mstr` */

insert  into `emp_mstr`(`ecode`,`ename`,`edob`,`egender`,`epost`,`eaddr`,`ecity`,`ecount`,`email`,`id_name`,`id_no`) values (102,'Sujeet Kumar','2024-02-16','Male','web','bgs','Begusarai','2345678','Sujeet@gmail.com','aadhar','986543213'),(110,'Sujeet Kumar','2024-01-31','Male','soft','aaa','Begusarai','23456789','sk1567142@gmail.com','aadhar','23456543'),(1234,'ravi','2024-02-15','Male','app developer','gkp','LUCKNOW','2345678','Sujeet@gmail.com','aadhar','2345678');

/*Table structure for table `emp_status` */

DROP TABLE IF EXISTS `emp_status`;

CREATE TABLE `emp_status` (
  `ecode` varchar(20) DEFAULT NULL,
  `join_date` varchar(20) DEFAULT NULL,
  `last_work_date` varchar(30) DEFAULT NULL,
  `emp_status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emp_status` */

insert  into `emp_status`(`ecode`,`join_date`,`last_work_date`,`emp_status`) values ('102','2024-02-28','2024-03-16','Not Working'),('1234','2024-02-29',NULL,'working');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `user` varchar(30) NOT NULL,
  `pswd` varchar(30) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `ac_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`user`,`pswd`,`user_type`,`ac_status`) values ('102','lko','employee','0'),('1234','4321','employee','1'),('admin','admin','admin','1'),('emp','lko','employee','1'),('sujeet','1234','employee','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
