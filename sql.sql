/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.14-MariaDB : Database - loansyst
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`loansyst` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `loansyst`;

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` decimal(15,0) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idnum` decimal(15,0) NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `customers` */

insert  into `customers`(`id`,`user_id`,`first_name`,`last_name`,`phone`,`address`,`idnum`,`image`,`gender`,`deleted`,`created_at`,`updated_at`) values 
(41,1,'viktoriya','nablova',3902345678,'AL. POKORNA 1 J.543',3456777,'uploads/viktoriya3456777.jpg',0,0,'2021-03-12 21:55:45','2021-03-23 03:30:13'),
(42,1,'elena','nablova',39023456578,'AL. POKORNA 1 J.543',12345678,'uploads/elena12345678.jpg',1,1,'2021-03-12 21:56:35','2021-03-23 03:30:15'),
(43,1,'timon','jechen',2341234234,'adfa.PT.RU',23411114,'uploads/timon23411114.jpg',1,0,'2021-03-13 07:44:34','2021-03-23 03:30:16'),
(47,1,'mandy','manda',3902342345,'AL. POKORNA 6 H.546',1234123412,'uploads/mandy1234123412.jpg',1,0,'2021-03-13 07:50:29','2021-03-23 03:30:17'),
(56,1,'mandy','manda',3902342345,'AL. POKORNA 6 H.546',1234123412,'uploads/mandy1234123412.jpg',1,1,'2021-03-13 07:57:35','2021-03-23 03:30:18'),
(57,1,'chan','chan',3904563456,'AL. POKORNA 45 J.567',324235345,'uploads/chan324235345.jpg',1,0,'2021-03-13 08:34:35','2021-03-23 03:30:19'),
(58,1,'sang','nyon',79893234,'CH. BEIJING 45 Y.789',3242353123,'uploads/sang3242353123.jpg',0,0,'2021-03-13 08:50:23','2021-03-23 03:30:20'),
(59,2,'sang','yon',79893234,'CH. BEIJING 45 Y.789',3242353123,'uploads/sang3242353123.jpg',0,1,'2021-03-13 09:00:48','2021-03-23 03:30:22'),
(60,2,'sang','yon',79893234,'CH. BEIJING 45 Y.789',3242353123,'uploads/sang3242353123.jpg',0,1,'2021-03-13 09:03:34','2021-03-23 03:30:23'),
(61,2,'sang','yon',79893234,'CH. BEIJING 45 Y.789',3242353123,'uploads/sang3242353123.jpg',0,1,'2021-03-13 09:04:31','2021-03-23 03:30:24'),
(62,1,'sang','yon',79893234,'CH. BEIJING 45 Y.789',3242353123,'uploads/sang3242353123.jpg',0,1,'2021-03-13 09:21:27','2021-03-23 03:30:27'),
(63,1,'sang','yon',79893234,'CH. BEIJING 45 Y.789',3242353123,'uploads/sang3242353123.jpg',0,1,'2021-03-13 09:22:24','2021-03-23 03:30:26'),
(64,2,'sang','yon',79893234,'CH. BEIJING 45 Y.789',3242353123,'uploads/sang3242353123.jpg',0,1,'2021-03-13 09:24:18','2021-03-23 03:30:29'),
(65,1,'sang','yon',79893234,'CH. BEIJING 45 Y.789',3242353123,'uploads/sang3242353123.jpg',0,1,'2021-03-13 09:27:03','2021-03-23 03:30:40'),
(66,2,'taziana','chihana',3908932345,'PL. POSKIRA 45 Y.789',543290123,'uploads/taziana543290123.jpg',1,0,'2021-03-13 09:28:30','2021-03-23 03:30:30'),
(67,2,'Ukizi','gashaki',3904362345,'PL. VERAWLA 34 H.123',543290123,'uploads/Ukizi543290123.jpg',1,0,'2021-03-13 09:29:51','2021-03-23 03:30:31'),
(68,1,'wahaha','telbele',3904123345,'CT. WRAZAHAW 1 P.256',234590123,'uploads/wahaha234590123.jpg',1,0,'2021-03-13 09:31:25','2021-03-23 03:30:41'),
(69,1,'Natasha','Kalien',3903452345,'US. PLJUDW1 P.879',678590123,'uploads/Natasha678590123.jpg',1,0,'2021-03-13 09:32:50','2021-03-23 03:30:43'),
(70,2,'Soffia','navula',3906784561,'PO. LOSATAP 1 K.213',473241505,'uploads/Soffia473241505.jpg',0,0,'2021-03-13 09:34:11','2021-03-23 03:30:33'),
(71,1,'GLASS','BORI',3906784561,'PO. LOSATAP 1 K.213',473241505,'uploads/GLASS473241505.jpg',0,0,'2021-03-13 09:35:43','2021-03-23 03:30:43'),
(72,1,'GLASSES','BLACK',3906784561,'PO. LOSATAP 1 K.213',473241505,'uploads/GLASSES473241505.jpg',0,0,'2021-03-13 09:36:07','2021-03-23 03:30:45'),
(73,1,'ALOE','WIHTE',3906784561,'PO. LOSATAP 1 K.213',473241505,'uploads/ALOE473241505.jpg',0,0,'2021-03-13 09:36:37','2021-03-23 03:30:34'),
(74,1,'WATCH','SKIN',3906784561,'PO. LOSATAP 1 K.213',473241505,'uploads/WATCH473241505.jpg',0,0,'2021-03-13 09:37:06','2021-03-23 03:30:46'),
(75,1,'CAMERA','ASD',3906784561,'PO. LOSATAP 1 K.213',473241505,'uploads/CAMERA473241505.jpg',0,0,'2021-03-13 09:37:42','2021-03-23 03:30:47'),
(76,2,'Curogy','White',3902343523,'CH. BEIJING 45 Y.789',235423541,'uploads/Curogy235423541.jpg',0,0,'2021-03-13 09:49:18','2021-03-23 03:30:35'),
(77,1,'Curogy','White',3902343523,'CH. BEIJING 45 Y.789',235423541,'uploads/Curogy235423541.jpg',0,0,'2021-03-13 09:49:30','2021-03-23 03:30:48'),
(78,1,'firstnamefgasdfg','lastnameadsfa',1234567890,'adfadfa',3452425235,'uploads/firstnamefgasdfg3452425235.jpg',0,0,'2021-03-13 10:14:39','2021-03-23 03:30:49'),
(79,2,'alexandrea','polesxta',3904567834,'PO. LOSATAP 1 K.214',987523431,'uploads/alexandrea987523431.jpg',1,0,'2021-03-13 10:18:16','2021-03-23 03:30:37'),
(80,1,'howfa','adfwwer',390346534,'PO. LOSATAP 1 K.213',241213434,'uploads/howfa241213434.jpg',0,1,'2021-03-14 07:32:11','2021-03-23 03:30:55'),
(81,2,'chan123','chan234',2342342345,'3245dfg.twemsa',23452345,'uploads/chan12323452345.jpg',1,0,'2021-03-25 03:51:50','2021-03-25 03:51:50');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2021_03_24_000000_create_users_table',2),
(5,'2021_03_24_000001_create_users_table',3);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `pays` */

DROP TABLE IF EXISTS `pays`;

CREATE TABLE `pays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trade_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paydate` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pays` */

insert  into `pays`(`id`,`trade_id`,`amount`,`paydate`,`created_at`) values 
(19,19,87.2,'2021-03-25','2021-03-25 10:11:07'),
(20,19,87.2,'2021-03-25','2021-03-25 10:11:10'),
(21,15,40,'2021-03-25','2021-03-25 10:11:13'),
(22,1,2345,'2021-03-25','2021-03-25 10:11:18');

/*Table structure for table `trade` */

DROP TABLE IF EXISTS `trade`;

CREATE TABLE `trade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `paymethod` int(11) NOT NULL,
  `amount` double NOT NULL,
  `interest` double NOT NULL,
  `payamount` double NOT NULL,
  `quota` double NOT NULL,
  `blackbarry` double NOT NULL,
  `day` int(11) NOT NULL,
  `rent_date` date NOT NULL,
  `next_date` date DEFAULT NULL,
  `ongoing` double DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `trade` */

insert  into `trade`(`id`,`customer_id`,`paymethod`,`amount`,`interest`,`payamount`,`quota`,`blackbarry`,`day`,`rent_date`,`next_date`,`ongoing`,`status`,`created_at`,`updated_at`) values 
(1,57,30,2000,20,2400,2400,5,30,'2021-03-12',NULL,NULL,0,'2021-03-19 00:31:02','2021-03-23 03:27:31'),
(2,57,1,1500,20,1800,60,5,30,'2021-03-19',NULL,NULL,1,'2021-03-19 00:32:09','2021-03-23 03:27:32'),
(3,58,30,1234,12,1400,1400,5,30,'2021-03-19',NULL,NULL,0,'2021-03-19 00:44:49','2021-03-23 03:27:33'),
(4,79,1,1000,10,1100,36.67,5,30,'2021-03-19',NULL,NULL,0,'2021-03-19 07:59:14','2021-03-23 03:27:33'),
(5,78,1,1000,10,1200,20,5,60,'2021-03-19',NULL,NULL,0,'2021-03-19 08:00:15','2021-03-25 04:03:22'),
(6,77,1,1000,20,1200,40,5,30,'2021-03-19',NULL,NULL,1,'2021-03-19 08:06:29','2021-03-23 03:27:36'),
(7,77,1,2000,10,2200,73,5,30,'2021-03-19',NULL,NULL,0,'2021-03-19 08:08:14','2021-03-25 04:03:24'),
(8,76,1,2000,20,2400,40,5,60,'2021-03-19',NULL,NULL,0,'2021-03-19 08:08:44','2021-03-23 03:27:37'),
(9,75,1,1000,20,1200,40,5,30,'2021-03-19',NULL,NULL,1,'2021-03-19 08:09:30','2021-03-23 03:27:38'),
(10,75,1,1000,20,1200,40,5,30,'2021-03-19',NULL,NULL,0,'2021-03-19 08:10:15','2021-03-23 03:27:39'),
(11,74,1,1000,20,1200,40,5,30,'2021-03-19',NULL,NULL,0,'2021-03-19 08:10:38','2021-03-23 03:27:39'),
(12,73,1,1000,10,1200,20,5,60,'2021-03-19',NULL,NULL,0,'2021-03-19 08:12:35','2021-03-23 03:27:40'),
(13,72,1,2000,10,2400,40,5,60,'2021-03-19',NULL,NULL,0,'2021-03-19 08:13:05','2021-03-23 03:27:41'),
(14,71,1,1000,15,1150,38,5,30,'2021-03-19',NULL,NULL,0,'2021-03-19 08:14:04','2021-03-23 03:27:42'),
(15,70,1,1000,50,1500,50,5,30,'2021-03-19',NULL,NULL,0,'2021-03-19 08:15:19','2021-03-23 03:27:42'),
(16,69,1,1000,10,1200,20,5,60,'2021-03-19','2021-03-25',NULL,0,'2021-03-19 08:15:59','2021-03-25 05:31:55'),
(17,68,1,1000,5,1050,35,5,30,'2021-03-19',NULL,NULL,0,'2021-03-19 08:16:40','2021-03-23 03:27:44'),
(18,67,2,1200,12,1260,210,5,12,'2021-03-21',NULL,NULL,0,'2021-03-20 05:35:16','2021-03-23 03:27:45'),
(19,66,1,1234,12,1308.4,87.2,5,15,'2021-03-20','2021-03-25',13.4,0,'2021-03-20 05:53:58','2021-03-25 05:26:09'),
(20,47,1,1111,11,1175.105,78.15,5,15,'2021-03-20',NULL,NULL,0,'2021-03-20 10:55:59','2021-03-23 03:27:47'),
(21,41,1,3000,10,3100,310,5,10,'2021-03-18',NULL,NULL,0,'2021-03-21 08:31:16','2021-03-25 04:06:28'),
(22,81,1,1000,20,1200,40,5,30,'2021-03-24','2021-03-25',NULL,0,'2021-03-25 04:04:00','2021-03-25 04:04:00');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`is_admin`,`status`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Admin','admin@itsolutionstuff.com',NULL,1,1,'$2y$10$.LFpI3/xO/N46LchtFt/peQfjRvS4LiI4TEGAVcuQOaViyf2ghwAG',NULL,'2021-03-24 16:28:51','2021-03-24 16:28:51'),
(2,'User','user@itsolutionstuff.com',NULL,0,1,'$2y$10$SCbHGSFIXFOhfotRPemQn.W2jKgOFQhYDkDKaYB8YII0B9/PdU3bG',NULL,'2021-03-24 16:28:51','2021-03-24 16:28:51'),
(3,'victoriya','viktoriyadewloper@gmail.com',NULL,0,1,'$2y$10$fXyczPmljFp6XnzWqb8h2O2PYdTA3Kzuj.J12EMn3pDAa7DKdw076',NULL,'2021-03-25 07:58:12','2021-03-25 07:58:12');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
