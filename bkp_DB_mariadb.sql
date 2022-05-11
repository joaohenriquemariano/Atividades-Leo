-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_bancoredes
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `num_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `cod_cliente` varchar(10) DEFAULT NULL,
  `nome_cliente` varchar(100) DEFAULT NULL,
  `razao_cliente` varchar(100) DEFAULT NULL,
  `data_cliente` date DEFAULT NULL,
  `doc_cliete` varchar(20) DEFAULT NULL,
  `doc_cliente` varchar(20) DEFAULT NULL,
  `fone_cliene` varchar(60) DEFAULT NULL,
  `email_cliente` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`num_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'PROF1','João Henrique',NULL,NULL,NULL,'831.038.974-81',NULL,'joao.okjau@gmail.com'),(2,'ALUNO','João Henrique',NULL,NULL,NULL,'745.432.987-73',NULL,'joaoljçf@gmail.com');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedor` (
  `num_fornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `cod_fornecedor` varchar(10) DEFAULT NULL,
  `nome_fornecedor` varchar(100) DEFAULT NULL,
  `razao_fornecedor` varchar(100) DEFAULT NULL,
  `fone_fornecedor` varchar(20) DEFAULT NULL,
  `email_fornecedor` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`num_fornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_venda`
--

DROP TABLE IF EXISTS `item_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_venda` (
  `num_item_venda` int(11) NOT NULL AUTO_INCREMENT,
  `num_venda` int(11) NOT NULL,
  `num_produto` int(11) NOT NULL,
  `valor_item_venda` float(10,2) DEFAULT NULL,
  `qtde_item_venda` int(11) DEFAULT NULL,
  `desco_item_venda` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`num_item_venda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_venda`
--

LOCK TABLES `item_venda` WRITE;
/*!40000 ALTER TABLE `item_venda` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `num_produto` int(11) NOT NULL AUTO_INCREMENT,
  `cod_produto` varchar(20) DEFAULT NULL,
  `desc_produto` varchar(100) DEFAULT NULL,
  `valor_produto` float(10,2) DEFAULT NULL,
  `situ_produto` varchar(1) DEFAULT NULL,
  `num_fornecedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`num_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venda` (
  `num_venda` int(11) NOT NULL AUTO_INCREMENT,
  `cod_venda` varchar(10) DEFAULT NULL,
  `num_cliente` int(11) NOT NULL,
  `num_fornecedor` int(11) NOT NULL,
  `num_vendedor` int(11) NOT NULL,
  `valor_venda` float(10,2) DEFAULT NULL,
  `desc_venda` float(10,2) DEFAULT NULL,
  `total_venda` float(10,2) DEFAULT NULL,
  `data_venda` date DEFAULT NULL,
  PRIMARY KEY (`num_venda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendas` (
  `num_venda` int(11) NOT NULL AUTO_INCREMENT,
  `cod_venda` varchar(10) DEFAULT NULL,
  `num_cliente` int(11) NOT NULL,
  `num_fornecedor` int(11) NOT NULL,
  `num_vendedor` int(11) NOT NULL,
  `valor_venda` float(10,2) DEFAULT NULL,
  `desc_venda` float(10,2) DEFAULT NULL,
  `total_venda` float(10,2) DEFAULT NULL,
  `data_venda` date DEFAULT NULL,
  PRIMARY KEY (`num_venda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendedor` (
  `num_vendedor` int(11) NOT NULL AUTO_INCREMENT,
  `cod_vendedor` varchar(10) DEFAULT NULL,
  `nome_vendedor` varchar(100) DEFAULT NULL,
  `razao_vendedor` varchar(100) DEFAULT NULL,
  `fone_vendedor` varchar(20) DEFAULT NULL,
  `porcent_vendedor` float(10,2) DEFAULT NULL,
  `email_vendedor` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`num_vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-11 13:39:40
