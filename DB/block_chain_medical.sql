/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - block_chain_medical
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`block_chain_medical` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `block_chain_medical`;

/*Table structure for table `doctor` */

DROP TABLE IF EXISTS `doctor`;

CREATE TABLE `doctor` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `spe` varchar(200) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `doctor` */

insert  into `doctor`(`id`,`name`,`pass`,`mobile`,`email`,`spe`) values (1,'priya','priya','9999999999','priya@gmail.com','Cardiologist'),(2,'nisha','nisha','8877777777','nish@gmail.com','Family medicine'),(3,'usha','usha','7777777777','usha@gmail.com','Family medicine');

/*Table structure for table `patient` */

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `datee` varbinary(200) DEFAULT NULL,
  `timee` varchar(200) DEFAULT NULL,
  `spe` varchar(200) DEFAULT NULL,
  `des` text,
  `doctor` varchar(200) DEFAULT NULL,
  `pres` text,
  `status` varchar(200) DEFAULT NULL,
  `dstatus` varchar(200) DEFAULT 'Not Complete',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `patient` */

insert  into `patient`(`id`,`name`,`mobile`,`email`,`datee`,`timee`,`spe`,`des`,`doctor`,`pres`,`status`,`dstatus`) values (1,'bhuvi','8888888888','Ymh1dmlAbWFpbC5jb20=','MjAyMC0wMi0yMA==','MTI6MDA=','Q2FyZGlvbG9naXN0','TGVmdCBzaWRlIENoZXN0IGlzIHBhaW5pbmcgaW4gZXZlcnlkYXkgbW9ybmluZyA=','1','Eat well. Maintain diet. MT-6 capsules','Converted','Complete'),(2,'Arul','0000000000','YXJ1bEBnbWFpbC5jb20=','MjAyMC0wMi0xOA==','MTY6NDU=','RmFtaWx5IG1lZGljaW5l','c2tpbiBhbGVyZ3kgaW4gc3RvbWFjaCBhbmQgbHVtYmVyIGJhY2s=','3','Take tablet correctly. Cipla - every day night. take this tablet 10 days.','Converted','Complete');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
