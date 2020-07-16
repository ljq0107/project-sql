-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: database_project
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `idAddress` int NOT NULL AUTO_INCREMENT,
  `Line1` varchar(45) DEFAULT NULL,
  `Line2` varchar(45) DEFAULT NULL,
  `PostCode` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAddress`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'37','Park Avenue','LS21 8EN','LEATHLEY'),(2,'35','Albert Rd','M45 8NN','Manchester'),(3,'22','Meadow Drive','SN10 3BJ','Devizes'),(4,'70','Wood Lane','RM8 2NT','Dagenham'),(5,'10','Bramley Rd','PE27 3WS','St. Ives'),(6,'81','High St','PE19 6RX','St. Neots'),(7,'33','Main St','LE14 3BZ','Melton'),(8,'25','Wood Lane','LE5 4PW','Leicester'),(9,'44','Brockhampton Rd',' PO9 1NT',' Havant'),(10,'25','Amalgamated Drive','TW8 9DS','Brentford'),(11,'77','Cromwell St','HS1 2DG','Stornoway');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `idCustomers` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `PhoneNumber` varchar(11) DEFAULT NULL,
  `Address_idAddress` int NOT NULL,
  PRIMARY KEY (`idCustomers`,`Address_idAddress`),
  KEY `fk_Customers_Address1_idx` (`Address_idAddress`)
) ENGINE=InnoDB AUTO_INCREMENT=1030 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Mehak','Lynn','Mehak@hotmail.com','01632960453',0),(2,'Jai','Preece','Jai@hotmail.com','01632960033',0),(3,'Farrah','Head','Farrah@hotmail.com','01632960908',0),(4,'Daisy','Mae Guevara','Daisy@hotmail.com','01632960371',0),(5,'Orlaith','Horn','Orlaith@hotmail.com','01632960951',0),(6,'Imaad','York','Imaad@hotmail.com','01632960368',0),(7,'Mikaela','Sweeney','Mikaela@hotmail.com','01632960322',0),(8,'Lexi','Tanner','Lexi@hotmail.com','01632960928',0),(9,'Ameena','Mason','Ameena@hotmail.com','01632960115',0),(10,'Jayden','Faulkner','Jayden@hotmail.com','01632960466',0),(11,'Zak','Underwood','Zak@hotmail.com','01632960926',0);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `date`
--

DROP TABLE IF EXISTS `date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `date` (
  `idOrderDate` int NOT NULL AUTO_INCREMENT,
  `DateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`idOrderDate`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `date`
--

LOCK TABLES `date` WRITE;
/*!40000 ALTER TABLE `date` DISABLE KEYS */;
INSERT INTO `date` VALUES (1,'2020-03-18 12:05:25'),(2,'2020-03-18 12:15:05'),(3,'2020-03-18 12:25:18'),(4,'2020-03-18 13:05:02'),(5,'2020-03-18 13:15:28'),(6,'2020-03-19 13:07:04'),(7,'2020-03-19 13:15:25'),(8,'2020-03-19 14:08:12'),(9,'2020-03-19 14:12:09'),(10,'2020-03-19 15:05:02'),(11,'2020-03-19 15:25:25');
/*!40000 ALTER TABLE `date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dish`
--

DROP TABLE IF EXISTS `dish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dish` (
  `idDish` int NOT NULL AUTO_INCREMENT,
  `DishName` varchar(200) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Price` decimal(8,2) DEFAULT NULL,
  `Category` varchar(45) DEFAULT NULL,
  `Order_OrderID` int NOT NULL,
  `Order_Customers_idCustomers` int NOT NULL,
  `Order_Date_idOrderDate` int NOT NULL,
  PRIMARY KEY (`idDish`),
  KEY `fk_Dish_Order1_idx` (`Order_OrderID`,`Order_Customers_idCustomers`,`Order_Date_idOrderDate`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dish`
--

LOCK TABLES `dish` WRITE;
/*!40000 ALTER TABLE `dish` DISABLE KEYS */;
INSERT INTO `dish` VALUES (1,' Special Fried Rice',NULL,9.00,'Fried Rice Dishes',0,0,0),(2,'King Prawn Fried Rice',NULL,9.00,'Fried Rice Dishes',0,0,0),(3,'Chicken Fried Rice',NULL,8.00,'Fried Rice Dishes',0,0,0),(4,'Mixed Vegetable Fried Rice ',NULL,7.00,'Fried Rice Dishes',0,0,0),(5,'House Special Chow Mein',NULL,10.00,'Soft Noodles',0,0,0),(6,'King Prawn Chow Mein',NULL,10.00,'Soft Noodles',0,0,0),(7,'Chicken Chow Mein',NULL,9.00,'Soft Noodles',0,0,0),(8,'Beef Chow Mein',NULL,9.00,'Soft Noodles',0,0,0),(9,'Roast Pork (Chinese BBQ) Chow Mein',NULL,9.00,'Soft Noodles',0,0,0),(10,'Prawn Crackers',NULL,3.00,'Side Dishes',0,0,0),(11,'Boiled Rice',NULL,3.00,'Side Dishes',0,0,0),(12,'Egg Fried Rice',NULL,3.00,'Side Dishes',0,0,0),(13,'Chow Mein Noodles',NULL,4.00,'Side Dishes',0,0,0),(14,'Bamboo Shoots & Water Chestnuts',NULL,4.00,'Side Dishes',0,0,0),(15,'Mushrooms',NULL,3.00,'Side Dishes',0,0,0),(16,'Chicken & Sweet Corn Soup',NULL,4.00,'Soup',0,0,0),(17,'Prawns & Sweet Corn Soup',NULL,4.00,'Soup',0,0,0),(18,'Mixed Meat & Vegetable Soup',NULL,4.00,'Soup',0,0,0),(19,'Won-Ton Dumplings Soup',NULL,4.00,'Soup',0,0,0),(20,'Hot & Sour Soup',NULL,4.00,'Soup',0,0,0),(21,'Chicken & Noodle Soup',NULL,4.00,'Soup',0,0,0);
/*!40000 ALTER TABLE `dish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `Customers_idCustomers` int DEFAULT NULL,
  `Date_idOrderDate` int DEFAULT NULL,
  `Customers_idCustomers1` int DEFAULT NULL,
  `Customers_Address_idAddress` int DEFAULT NULL,
  `C_id` int DEFAULT NULL,
  `D_id` int DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `fk_Order_Date1_idx` (`Date_idOrderDate`),
  KEY `fk_Order_Customers1_idx` (`Customers_idCustomers1`,`Customers_Address_idAddress`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,NULL,NULL,NULL,NULL,1,5),(2,NULL,NULL,NULL,NULL,3,6),(3,NULL,NULL,NULL,NULL,5,2),(4,NULL,NULL,NULL,NULL,3,6),(5,NULL,NULL,NULL,NULL,3,5),(6,NULL,NULL,NULL,NULL,6,7),(7,NULL,NULL,NULL,NULL,8,12),(8,NULL,NULL,NULL,NULL,9,15),(9,NULL,NULL,NULL,NULL,4,9),(10,NULL,NULL,NULL,NULL,7,18),(11,NULL,NULL,NULL,NULL,10,9);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-24 12:15:37
