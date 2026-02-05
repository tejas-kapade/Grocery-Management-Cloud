-- MySQL dump 10.19  Distrib 10.3.38-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: GROCERY
-- ------------------------------------------------------
-- Server version	10.3.38-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
INSERT INTO `entries` VALUES (1,'Tejas','3434','09-03-2023','04:05:36 pm'),(2,'Priya','priyak90','09-03-2023','04:08:56 pm'),(3,'Alita','hugo','09-03-2023','04:17:07 pm'),(4,'Tejas','3434','09-03-2023','04:20:52 pm'),(5,'Priya','priyak90','09-03-2023','04:22:10 pm'),(6,'Tejas','3434','09-03-2023','04:23:18 pm'),(7,'Tejas','3434','09-03-2023','11:59:55 pm'),(8,'Mayur','mm90','10-03-2023','12:03:54 am'),(9,'Alita','hugo','10-03-2023','12:07:34 am'),(10,'Priya','priyak90','10-03-2023','03:34:27 pm'),(11,'Alita','hugo','10-03-2023','04:00:50 pm'),(12,'Tejas','3434','12-03-2023','02:52:00 pm'),(13,'Alita','hugo','21-03-2023','03:10:54 pm'),(14,'Alita','hugo','21-03-2023','03:14:27 pm'),(15,'Tejas','3434','21-03-2023','03:23:26 pm'),(16,'Alita','hugo','21-03-2023','03:47:56 pm'),(17,'Alita','hugo','21-03-2023','03:52:01 pm'),(18,'Tejas','3434','21-03-2023','03:56:19 pm'),(19,'Tejas','3434','21-03-2023','07:01:33 pm'),(20,'Alita','hugo','21-03-2023','07:04:01 pm'),(21,'Tejas','3434','26-03-2023','01:58:33 pm'),(22,'niraj','nijju','29-03-2023','12:05:13 pm'),(23,'Tejas','3434','29-03-2023','12:06:29 pm'),(24,'tejas','3434','29-03-2023','12:17:46 pm'),(25,'Tejas','3434','29-03-2023','12:24:29 pm'),(26,'Niraj','nijju','29-03-2023','12:40:40 pm'),(27,'tejas','3434','25-04-2023','10:53:18 am'),(28,'Tejas','3434','25-04-2023','01:20:17 pm'),(29,'Ambuja','12345','04-10-2023','09:32:48 pm'),(30,'Ambuja','12345','04-10-2023','11:00:26 pm'),(31,'Ambuja','12345','05-10-2023','01:43:33 pm'),(32,'ravindra','ravan','05-10-2023','10:09:32 pm'),(33,'ADMIN','9090','05-10-2023','10:38:35 pm'),(34,'ambuja','12345','05-10-2023','11:25:25 pm'),(35,'ambuja','12345','05-10-2023','11:26:51 pm'),(36,'ambuja','12345','06-10-2023','12:23:17 pm'),(37,'onkar','12345','06-10-2023','01:45:31 pm'),(38,'onkar','12345','06-10-2023','03:42:05 pm'),(39,'samiksha','samiksha','06-10-2023','04:06:46 pm'),(40,'aks','aks','29-10-2023','07:00:44 pm'),(41,'sahara','huehuehue','30-10-2023','07:55:27 pm'),(42,'bobo','bobo','07-11-2023','10:05:41 pm'),(43,'tester','1234','08-11-2023','06:05:48 am'),(44,'test1234','1 2 3','08-11-2023','06:07:30 am'),(45,'test1234','1 2 3','08-11-2023','06:08:28 am'),(46,'devid ','devid@123','12-11-2023','11:02:28 pm'),(47,'revan','ReVaN@123','13-11-2023','04:45:07 pm'),(48,'A1','password123','21-11-2023','01:00:27 pm');
/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('Tejas');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `NAME` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `PHONE` varchar(255) DEFAULT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `PINCODE` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES ('Tejas','tejaskapade@gmail.com','9892624891','HN.Mohone, Ambivali','421102','3434'),('Nano','nainishcoc@gmail.com','9822739121','Krishna Plaza, Mohone','421101','NANOCOC'),('Raadha','raadakrishna@gmail.com','90090099','Vrindaavan','14300','krishna'),('Alita','battleangel@gmail.com','8765489898','Iron city, street 365','3434','hugo'),('admin','admin@gmail.com','000000000','ADMIN','ADMIN','9090'),('Aniket','aniketpunase@gmail.com','8989898989','Muktainagar, Jalgaon','422333','punase'),('Priya','priyakapade@gmail.com','8657483959','HN, Panchashil Nagar, Mohone','421102','priyak90'),('Mayur','mayurmalkhede@gmail.com','83380999','Galegaon,Mohone','431123','mm90'),('Krishna','devkinandan@gmail.com','90909090','Golok dhaam, Vrindaavan','421124','raadha'),('Jayesh','hivarkar@gmail.com','998223111','Savantwaadi R1 road vapi, Gujraat','431111','golu'),('Niraj','niluu@gmail.com','9999999','Kongaon,kalyan','9000','nijju'),('Ambuja','ambujacement@gmail.com','9876543210','Bhoot Galli, Shamshaan ghat- Varanasi','987000','12345'),('Ravindra','raviadabale@gmail.com','8976543122','RS. Mohone, Kalyan.','421104','ravan'),('Onkar','onkarmail@gmail.com','8879216339','Panvel','21212','12345'),('Samiksha','samikshagmail@gmail.com','868463558','Airoli','98989','samiksha'),('AKS','kuberneteshere@gmail.com','1029384756','Microsoft Datacenter','66533','aks'),('Sahara','saharakharat@gmail.com','986594578','Asangaon, Mumbai ','10265','huehuehue'),('a test','a@gmail.com','9880923','Test','600012','a'),('a test','akila118j80@gmail.com','9343476426','5th A block, Jayanagar','560045','password123'),('a test','akila118j80@gmail.com','9343476426','5th A block, Jayanagar','akila118j80@gmail.com','password123'),('bobo','bobomail@gmail.com','36363636','Tree, ZY Street','71611','bobo'),('tester','tester@gmail.com','3333333','Amazon','9999','1234'),('test1234','adminer@gmail.com','31313','Test','0000','1 2 3'),('Devid','devidthomas@gmail.com','983323333','Lebnoun street, Wresten garden','880099','devid@123'),('Revan','imrevangorv@yahoo.com','8989898','Glenmark, Megaboard Apartment 102','00228','revan@123'),('Test','aj80@gmail.com','7643432342','zzzz','450345','test123'),('A1','ak210@gmail.com','9898676700','nn','530343','password123');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `items` varchar(255) DEFAULT NULL,
  `paid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES ('Priya','priyakapade@gmail.com','2','116.98'),('Priya','priyakapade@gmail.com','2','75.58'),('Mayur','mayurmalkhede@gmail.com','2','269.10'),('Tejas','tejaskapade@gmail.com','9','1124.10'),('Tejas','tejaskapade@gmail.com','4','176.40'),('Alita','battleangel@gmail.com','6','372.60'),('Tejas','tejaskapade@gmail.com','6','621.00'),('niraj','niluu@gmail.com','2','180.00'),('Tejas','tejaskapade@gmail.com','3','349.20'),('tejas','tejaskapade@gmail.com','3','142.20'),('Tejas','tejaskapade@gmail.com','3','98.10'),('tejas','tejaskapade@gmail.com','3','331.20'),('Tejas','tejaskapade@gmail.com','4','1391.40'),('Ambuja','ambujacement@gmail.com','5','612.90'),('Ambuja','ambujacement@gmail.com','1','225.00'),('ravindra','raviadabale@gmail.com','1','62.10'),('ambuja','ambujacement@gmail.com','2','81.90'),('ambuja','ambujacement@gmail.com','4','297.00'),('ambuja','ambujacement@gmail.com','4','297.00'),('onkar','onkarmail@gmail.com','3','162.00'),('samiksha','samikshagmail@gmail.com','5','504.90'),('aks','kuberneteshere@gmail.com','3','675.00'),('sahara','saharakharat@gmail.com','5','360.90'),('test1234','adminer@gmail.com','3','144.00'),('devid ','devidthomas@gmail.com','5','434.70'),('revan','imrevangorv@yahoo.com','47','3910.50'),('A1','ak210@gmail.com','2','674.10');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-24 17:36:44
