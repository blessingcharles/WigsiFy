-- MariaDB dump 10.19  Distrib 10.5.9-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dummy
-- ------------------------------------------------------
-- Server version	10.5.9-MariaDB-1

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
-- Current Database: `dummy`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dummy` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `dummy`;

--
-- Table structure for table `45jrn4u5ithrguw44`
--

DROP TABLE IF EXISTS `45jrn4u5ithrguw44`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `45jrn4u5ithrguw44` (
  `senderid` int(11) NOT NULL,
  `msg` text DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  KEY `senderid` (`senderid`),
  CONSTRAINT `45jrn4u5ithrguw44_ibfk_1` FOREIGN KEY (`senderid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `45jrn4u5ithrguw44`
--

LOCK TABLES `45jrn4u5ithrguw44` WRITE;
/*!40000 ALTER TABLE `45jrn4u5ithrguw44` DISABLE KEYS */;
INSERT INTO `45jrn4u5ithrguw44` VALUES (31,'hello','2021-05-13 22:59:21');
/*!40000 ALTER TABLE `45jrn4u5ithrguw44` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TvRXy9s9uT5ZJIiFK9AnnQtqE3PIIB4K`
--

DROP TABLE IF EXISTS `TvRXy9s9uT5ZJIiFK9AnnQtqE3PIIB4K`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TvRXy9s9uT5ZJIiFK9AnnQtqE3PIIB4K` (
  `senderid` int(11) NOT NULL,
  `msg` text DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  KEY `senderid` (`senderid`),
  CONSTRAINT `TvRXy9s9uT5ZJIiFK9AnnQtqE3PIIB4K_ibfk_1` FOREIGN KEY (`senderid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TvRXy9s9uT5ZJIiFK9AnnQtqE3PIIB4K`
--

LOCK TABLES `TvRXy9s9uT5ZJIiFK9AnnQtqE3PIIB4K` WRITE;
/*!40000 ALTER TABLE `TvRXy9s9uT5ZJIiFK9AnnQtqE3PIIB4K` DISABLE KEYS */;
INSERT INTO `TvRXy9s9uT5ZJIiFK9AnnQtqE3PIIB4K` VALUES (2,'hello world','2021-05-14 00:29:32'),(3,'this is from 3','2021-05-14 00:30:46'),(2,'gggg','2021-05-14 09:35:18'),(2,'222','2021-05-14 09:36:45'),(2,'rv','2021-05-14 09:36:48'),(3,'hiiii','2021-05-14 09:36:59'),(2,'hiii da','2021-05-14 10:06:43'),(3,'go tit man','2021-05-14 10:06:52'),(2,'happy ','2021-05-14 10:07:03'),(3,'hi mamoj','2021-05-14 17:50:35'),(2,'solluda','2021-05-14 17:50:57'),(3,'deiii','2021-05-14 17:52:21'),(2,'hi da mamoj','2021-05-14 19:25:30'),(3,'solluda','2021-05-14 19:25:44');
/*!40000 ALTER TABLE `TvRXy9s9uT5ZJIiFK9AnnQtqE3PIIB4K` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Y3PXiWttykMs1EfZ6B1295EGOLN3v6u4`
--

DROP TABLE IF EXISTS `Y3PXiWttykMs1EfZ6B1295EGOLN3v6u4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Y3PXiWttykMs1EfZ6B1295EGOLN3v6u4` (
  `senderid` int(11) NOT NULL,
  `msg` text DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  KEY `senderid` (`senderid`),
  CONSTRAINT `Y3PXiWttykMs1EfZ6B1295EGOLN3v6u4_ibfk_1` FOREIGN KEY (`senderid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Y3PXiWttykMs1EfZ6B1295EGOLN3v6u4`
--

LOCK TABLES `Y3PXiWttykMs1EfZ6B1295EGOLN3v6u4` WRITE;
/*!40000 ALTER TABLE `Y3PXiWttykMs1EfZ6B1295EGOLN3v6u4` DISABLE KEYS */;
INSERT INTO `Y3PXiWttykMs1EfZ6B1295EGOLN3v6u4` VALUES (21,'hii da','2021-05-14 17:52:38');
/*!40000 ALTER TABLE `Y3PXiWttykMs1EfZ6B1295EGOLN3v6u4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_songs`
--

DROP TABLE IF EXISTS `album_songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_songs` (
  `albumid` varchar(200) DEFAULT NULL,
  `song_name` varchar(200) DEFAULT NULL,
  `song_url` varchar(200) DEFAULT NULL,
  `singer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_songs`
--

LOCK TABLES `album_songs` WRITE;
/*!40000 ALTER TABLE `album_songs` DISABLE KEYS */;
/*!40000 ALTER TABLE `album_songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chats_entry`
--

DROP TABLE IF EXISTS `chats_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chats_entry` (
  `aid` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `chats_table_name` varchar(100) NOT NULL,
  PRIMARY KEY (`chats_table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats_entry`
--

LOCK TABLES `chats_entry` WRITE;
/*!40000 ALTER TABLE `chats_entry` DISABLE KEYS */;
INSERT INTO `chats_entry` VALUES (98,123,'dummydb'),(98,53,'helloworld'),(2,3,'TvRXy9s9uT5ZJIiFK9AnnQtqE3PIIB4K'),(66,98,'wedb'),(21,31,'Y3PXiWttykMs1EfZ6B1295EGOLN3v6u4'),(98,123,'YELoMZzXW4hSyFClXnuje0RKuKvH8RJN');
/*!40000 ALTER TABLE `chats_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends` (
  `uid` int(11) NOT NULL,
  `follow` int(11) NOT NULL,
  KEY `uid` (`uid`),
  KEY `follow` (`follow`),
  CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`id`),
  CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`follow`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES (32,2),(32,3);
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `postid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `imgpath` varchar(100) DEFAULT NULL,
  `userid` int(11) DEFAULT 5,
  PRIMARY KEY (`postid`),
  KEY `userid` (`userid`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (12,'post2','love to use windows more','http://localhost:3000/uploads/images/71691506.png',32),(13,'post1','this is a post 2','http://localhost:3000/uploads/images/20337689.png',32);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_albums`
--

DROP TABLE IF EXISTS `user_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_albums` (
  `userid` int(11) NOT NULL,
  `albumid` varchar(200) DEFAULT NULL,
  `album_name` varchar(200) DEFAULT NULL,
  `album_photo_url` varchar(200) DEFAULT NULL,
  KEY `userid` (`userid`),
  CONSTRAINT `user_albums_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_albums`
--

LOCK TABLES `user_albums` WRITE;
/*!40000 ALTER TABLE `user_albums` DISABLE KEYS */;
INSERT INTO `user_albums` VALUES (32,'TUitxAvOfjqY4qR2kkFFYp7TP9AODXjP','post1','http://localhost:3000/uploads/albums/64808806.png'),(32,'tqMV6tThlFK2i8S5Kcu7H5j46oURfL5a','album1','http://localhost:3000/uploads/albums/71295147.png');
/*!40000 ALTER TABLE `user_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `About` text DEFAULT NULL,
  `FavLang` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `profile_pic_path` varchar(200) DEFAULT 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg',
  `mobile` varchar(30) DEFAULT NULL,
  `profession` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'hello',NULL,NULL,NULL,NULL,'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg',NULL,NULL),(3,'mamoj',NULL,NULL,NULL,NULL,'dummy',NULL,NULL),(4,'bingo','$2a$12$g2D71HTJRZQAAcnmSFyGauGUnEf8Zq8D3kkkGtTsM2YnOx1X7hJou',NULL,NULL,'charles@gmail.com','https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg',NULL,NULL),(21,'kimshore','$2a$12$zM8CWgVFmqneki1n7q1aAewb7bjAIsOjw.kUPlB8.Er6zdg6cYd4K',NULL,NULL,'kimshore@gmail.com','https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg',NULL,NULL),(31,'cheems','$2a$12$vPfhwoN8Xewxpzql22bdBeFgKjtCxpyYTu9T9u4pWvkXjFfkA9E.i',NULL,NULL,'cheems@gmail.com','https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg',NULL,NULL),(32,'thomas','$2a$12$b7YIzSfGt13oZLtKTfoPMeS65aGZmznxpjUdtbaICTwhWiW3oxui6','im a cat and friend of jerry','python','thomas@gmail.com','http://localhost:3000/uploads/profiles/41100382.png','93242424','nothing to do');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-16 10:09:37
