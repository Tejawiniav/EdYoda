-- MySQL 
--
-- Host: localhost    Database: edyoda
-- ------------------------------------------------------
--
--
-- Table structure for table `approval`
--

DROP TABLE IF EXISTS `approval`;

CREATE TABLE `approval` (
  `ApprId` int(10) NOT NULL AUTO_INCREMENT,
  `Eid` int(10) DEFAULT NULL,
  `Yid` int(10) DEFAULT NULL,
  PRIMARY KEY (`ApprId`),
  KEY `Eid` (`Eid`),
  KEY `Yid` (`Yid`),
  CONSTRAINT `approval_ibfk_1` FOREIGN KEY (`Eid`) REFERENCES `elder` (`Eid`) ON DELETE CASCADE,
  CONSTRAINT `approval_ibfk_2` FOREIGN KEY (`Yid`) REFERENCES `youth` (`Yid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `approval`
--

LOCK TABLES `approval` WRITE;

INSERT INTO `approval` VALUES (1,1,2),(2,2,2),(3,3,4),(4,4,1),(5,5,5);

UNLOCK TABLES;

--
-- Table structure for table `elder`
--

DROP TABLE IF EXISTS `elder`;

CREATE TABLE `elder` (
  `Eid` int(10) NOT NULL AUTO_INCREMENT,
  `Ename` varchar(40) DEFAULT NULL,
  `Eaddress` varchar(100) DEFAULT NULL,
  `Ephone` int(10) DEFAULT NULL,
  `Eemail` varchar(50) DEFAULT NULL,
  `Fund` int(10) DEFAULT NULL,
  PRIMARY KEY (`Eid`),
  KEY `Eemail` (`Eemail`),
  CONSTRAINT `elder_ibfk_1` FOREIGN KEY (`Eemail`) REFERENCES `signup` (`email`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `elder`
--

LOCK TABLES `elder` WRITE;

INSERT INTO `elder` VALUES (1,'aaz','HSR,Bangalore',2345678910,'aaz@gmail.com',15000),(2,'yyyy','Naganathapura,Bangalore',0987654321,'yyyy@gmail.com',16000),(3,'xxx','Yelahanka,Bangalore',1234387375,'xxx@gmail.com',17000),(4,'uuu',''M.G Road,Bangalore',1434387375,'uuu@gmail.com',14000),(5,'vvv','Yelahanka,Bangalore',1444387375,'vvv@gmail.com',15000),(7,'uuu','Udupi',1447387375,'uuu@gmail.com',16000),(8,'ttt','Manipal',1447388975,'ttt@gmail.com',16000),(9,'sss','Ulsoor,Bangalore',1337388975,'sss@gmail.com',15000),(10,'eee','Mysore',1887388975,'eee@gmail.com',15000),(11,'nnn','Ulsoor,Bangalore',1887388977,'nnn@gmail.com',18000);

UNLOCK TABLES;

--
-- Table structure for table `elderrating`
--

DROP TABLE IF EXISTS `elderrating`;

CREATE TABLE `elderrating` (
  `ERatingId` int(10) NOT NULL AUTO_INCREMENT,
  `Eid` int(10) DEFAULT NULL,
  `ERating` int(10) DEFAULT NULL,
  `EReview` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ERatingId`),
  KEY `Eid` (`Eid`),
  CONSTRAINT `elderrating_ibfk_1` FOREIGN KEY (`Eid`) REFERENCES `elder` (`Eid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `elderrating`
--

LOCK TABLES `elderrating` WRITE;

INSERT INTO `elderrating` VALUES (1,1,4,'Good person'),(2,2,5,'Friendly'),(3,3,3,'Good'),(4,4,2,'Bad'),(5,5,4,'Amazing Person');

UNLOCK TABLES;

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;

CREATE TABLE `signup` (
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(0) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `folk` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `signup`
--

LOCK TABLES `signup` WRITE;

INSERT INTO `signup` VALUES ('sss','sss@gmail.com','2634','youth'),('ccc','ccc@gmail.com','2345','youth'),('ddd','ddd@gmail.com','3457','youth'),('eee','eee@gmail.com','4234','youth'),('lll','lll@gmail.com','5678','youth'),('ggg','ggg@gmail.com','7843','youth'),('jjj','jjj@gmail.com','4332','youth'),('hhh','hhh@gmail.com','8734','youth'),('iii','iii@gmail.com','9843','youth'),('jjj','jjj@gmail.com','4634','youth'),('qqq','qqq@gmail.com','8724','elder'),('rrr','rrr@gmail.com','4784','elder'),('sss','sss@gmail.com','6286','elder'),('ttt','ttt@gmail.com','3472','elder'),('uuu','uuu@gmail.com','8745','elder'),('vvv','vvv@gmail.com','5432','elder'),('www','www@gmail.com','6543','elder'),('xxx','xxx@gmail.com','7654','elder'),('yyy','yyy@gmail.com','8765','elder'),('zzz','zzz@gmail.com','9876','elder');

UNLOCK TABLES;

--
-- Table structure for table `ycarese`
--

DROP TABLE IF EXISTS `ycarese`;

CREATE TABLE `ycarese` (
  `CareId` int(11) NOT NULL AUTO_INCREMENT,
  `Yid` int(11) DEFAULT NULL,
  `Eid` int(11) DEFAULT NULL,
  PRIMARY KEY (`CareId`),
  KEY `Yid` (`Yid`),
  KEY `Eid` (`Eid`),
  CONSTRAINT `ycarese_ibfk_1` FOREIGN KEY (`Yid`) REFERENCES `youth` (`Yid`) ON DELETE CASCADE,
  CONSTRAINT `ycarese_ibfk_2` FOREIGN KEY (`Eid`) REFERENCES `elder` (`Eid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `ycarese`
--

LOCK TABLES `ycarese` WRITE;
/*!40000 ALTER TABLE `ycarese` DISABLE KEYS */;
INSERT INTO `ycarese` VALUES (1,1,4),(2,2,1),(3,2,2),(4,4,3),(5,5,5),(6,2,7),(7,2,8),(8,2,9);
/*!40000 ALTER TABLE `ycarese` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youth`
--

DROP TABLE IF EXISTS `youth`;

CREATE TABLE `youth` (
  `Yid` int(11) NOT NULL AUTO_INCREMENT,
  `Yname` varchar(50) DEFAULT NULL,
  `Yaddress` varchar(50) DEFAULT NULL,
  `Yphone` int(11) DEFAULT NULL,
  `Yemail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Yid`),
  KEY `Yemail` (`Yemail`),
  CONSTRAINT `youth_ibfk_1` FOREIGN KEY (`Yemail`) REFERENCES `signup` (`email`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `youth`
--

LOCK TABLES `youth` WRITE;

INSERT INTO `youth` VALUES (1,'aaa','Yelahanka,Bangalore',1444378375,'aaa@gmail.com'),(2,'bbb','M G Road,Bangalore',1334378375,'bbb@gmail.com'),(3,'ccc','Whitefield,Bangalore',133437855,'ccc@gmail.com'),(4,'ddd','Banasankari,Bangalore',1343374855,'ddd@gmail.com'),(5,'ddd','Banasankari,Bangalore',1343374855,'ddd@gmail.com'),(6,'eee','Banasankari,Bangalore',1343398855,'eee@gmail.com');

UNLOCK TABLES;

--
-- Table structure for table `youthrating`
--

DROP TABLE IF EXISTS `youthrating`;

CREATE TABLE `youthrating` (
  `YRatingId` int(11) NOT NULL AUTO_INCREMENT,
  `Yid` int(11) DEFAULT NULL,
  `YRating` int(11) DEFAULT NULL,
  `YReview` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`YRatingId`),
  KEY `Yid` (`Yid`),
  CONSTRAINT `youthrating_ibfk_1` FOREIGN KEY (`Yid`) REFERENCES `youth` (`Yid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Dumping data for table `youthrating`
--

LOCK TABLES `youthrating` WRITE;

INSERT INTO `youthrating` VALUES (1,1,4,'talkative'),(2,2,3,'average'),(3,3,4,'Good'),(4,4,5,'Best'),(5,5,2,'Rude');

UNLOCK TABLES;



