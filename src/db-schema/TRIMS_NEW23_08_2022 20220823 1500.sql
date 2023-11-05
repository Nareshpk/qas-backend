-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.41


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema trims
--

CREATE DATABASE IF NOT EXISTS trims;
USE trims;

--
-- Definition of table ` fixturebreakdown001mb`
--

DROP TABLE IF EXISTS ` fixturebreakdown001mb`;
CREATE TABLE ` fixturebreakdown001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `sslno` int(11) NOT NULL,
  `fbname` varchar(250) NOT NULL,
  `fbdetails` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `sslno` (`sslno`),
  CONSTRAINT `@0020fixturebreakdown001mb_ibfk_1` FOREIGN KEY (`sslno`) REFERENCES `fixturestatus001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table ` fixturebreakdown001mb`
--

/*!40000 ALTER TABLE ` fixturebreakdown001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE ` fixturebreakdown001mb` ENABLE KEYS */;


--
-- Definition of table ` toolsbreakdown001mb`
--

DROP TABLE IF EXISTS ` toolsbreakdown001mb`;
CREATE TABLE ` toolsbreakdown001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `sslno` int(11) NOT NULL,
  `tbname` varchar(250) NOT NULL,
  `tbdetails` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `sslno` (`sslno`),
  CONSTRAINT `@0020toolsbreakdown001mb_ibfk_1` FOREIGN KEY (`sslno`) REFERENCES `toolsstatus001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table ` toolsbreakdown001mb`
--

/*!40000 ALTER TABLE ` toolsbreakdown001mb` DISABLE KEYS */;
INSERT INTO ` toolsbreakdown001mb` (`sl_no`,`sslno`,`tbname`,`tbdetails`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'sss','dd','setmt1','2022-08-10 18:35:15',NULL,NULL);
/*!40000 ALTER TABLE ` toolsbreakdown001mb` ENABLE KEYS */;


--
-- Definition of table `activity001mb`
--

DROP TABLE IF EXISTS `activity001mb`;
CREATE TABLE `activity001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `activity` varchar(200) NOT NULL,
  `status` char(1) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity001mb`
--

/*!40000 ALTER TABLE `activity001mb` DISABLE KEYS */;
INSERT INTO `activity001mb` (`sl_no`,`unitdepartsl_no`,`activity`,`status`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,' Audit the purchase orders issued to raw material suppliers and outsource suppliers','A','siva','2022-03-21 15:48:42','siva','2022-03-21 15:51:43'),
 (2,1,'Compare the raw material supplier with whom the order made and the approved outsource supplier list of the supplier.','A','siva','2022-03-21 15:49:08',NULL,NULL),
 (3,1,' Compare the approved suppliers list of raw material with approved list of SMPL, if applicable','A','siva','2022-03-21 19:02:02',NULL,NULL),
 (4,1,'Check the 2nd tier supplier list','A','siva','2022-03-22 09:32:01',NULL,NULL),
 (5,1,'Compare the material specification given in purchase order with specification given in SMPL drawing','A','siva','2022-03-22 09:32:28',NULL,NULL),
 (6,1,'Check the incoming inspection plan with respect to SMPL requirements','A','siva','2022-03-22 09:34:39',NULL,NULL),
 (7,1,'Audit the records of incoming inspection for having carried out inspection. Audit few samples for conformance, if feasible.','A','siva','2022-03-22 09:36:02',NULL,NULL),
 (8,1,'Check the equipments, instruments and gauges used for assessing the incoming quantity','A','siva','2022-03-22 09:36:41',NULL,NULL),
 (9,1,' Audit the 5 S of raw material storage area.','A','siva','2022-03-22 09:37:35',NULL,NULL),
 (10,1,'1.10 Check the action / countermeasure taken for lots rejected','A','siva','2022-03-22 09:38:09',NULL,NULL),
 (11,1,'Audit the 5S status across the company','A','siva','2022-03-22 09:39:54',NULL,NULL),
 (12,1,'Check the drawings for latest revision','A','siva','2022-03-22 09:40:52',NULL,NULL),
 (13,1,' Audit Operations Standard','A','siva','2022-03-22 09:41:29',NULL,NULL),
 (14,1,'Check procedure of adherence to First Off Inspection and Patrol Inspection','A','siva','2022-03-22 09:43:02',NULL,NULL),
 (15,1,' Audit the checking of components by operators','A','siva','2022-03-22 09:44:01',NULL,NULL),
 (16,1,' Audit the instruments and gauges used for adequency and calibration','A','siva','2022-03-22 09:45:15',NULL,NULL),
 (17,1,'Audit the tools and fixtures for capability and maintenance','A','siva','2022-03-22 09:50:56',NULL,NULL),
 (18,1,' Audit the material handling systems','A','siva','2022-03-22 10:37:23',NULL,NULL),
 (19,1,' Check process capability status. (Note down the figures to process capability status)','A','siva','2022-03-22 10:38:10',NULL,NULL),
 (20,1,'Audit the control of non-conforming parts','A','siva','2022-03-22 10:39:53',NULL,NULL),
 (21,1,'Audit the control on special processes if applicable','A','siva','2022-03-22 10:40:56',NULL,NULL);
/*!40000 ALTER TABLE `activity001mb` ENABLE KEYS */;


--
-- Definition of table `assessmentcriteria001mb`
--

DROP TABLE IF EXISTS `assessmentcriteria001mb`;
CREATE TABLE `assessmentcriteria001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `criteria` varchar(40) NOT NULL,
  `details` varchar(250) NOT NULL,
  `max` int(20) NOT NULL,
  `status` char(1) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assessmentcriteria001mb`
--

/*!40000 ALTER TABLE `assessmentcriteria001mb` DISABLE KEYS */;
INSERT INTO `assessmentcriteria001mb` (`sl_no`,`unitdepartsl_no`,`criteria`,`details`,`max`,`status`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'Organisation ','Does the company have adequate no. of people and infrastructure to process required quantity?',10,'A','siva','2022-03-18 11:31:22','siva','2022-03-18 11:32:28'),
 (2,1,'Material Control','Are the adequate controls excessed by the supplier (Supplier) on raw material, consumables and accessories used in processing?',10,'A','siva','2022-03-18 11:33:45',NULL,NULL),
 (3,1,'Equipment Control','Are the equipments used for the processing are in good condition and properly maintained and controlled?',10,'A','siva','2022-03-18 11:34:12',NULL,NULL),
 (4,1,'Inspection Procedure and Facilities','Are the adequate facilities and skills available for identifying and controlling the defects?',10,'A','siva','2022-03-18 11:34:42',NULL,NULL),
 (5,1,'Calibration','Do they have adequate verification instruments and proper control?',10,'A','siva','2022-03-18 11:35:19',NULL,NULL),
 (6,1,'Subcontractor Control','Are their subcontractor methods satisfactory does it induced confidence this includes annual maintenance contract and outside lab test?',10,'A','siva','2022-03-18 11:35:46',NULL,NULL),
 (7,1,'Records','Do they have adequate records to prove effective control?',10,'A','siva','2022-03-18 11:36:17',NULL,NULL),
 (8,1,'Control Storage and Handling','Are their storage handling and preservation methods good enap to prevent damage or defect to product?',10,'A','siva','2022-03-18 11:36:54',NULL,NULL),
 (9,1,'House Keeping','How Clean is their work area including the orderlines in keeping products?',10,'A','siva','2022-03-18 11:37:15',NULL,NULL),
 (10,1,'Process Capability','How are the skill of people employed for the nature of processing under taken?',10,'A','siva','2022-03-18 11:37:41','siva','2022-03-18 11:46:12');
/*!40000 ALTER TABLE `assessmentcriteria001mb` ENABLE KEYS */;


--
-- Definition of table `bank001mb`
--

DROP TABLE IF EXISTS `bank001mb`;
CREATE TABLE `bank001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `bankname` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank001mb`
--

/*!40000 ALTER TABLE `bank001mb` DISABLE KEYS */;
INSERT INTO `bank001mb` (`sl_no`,`unitdepartsl_no`,`bankname`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'Indian Bank','setmt1','2022-06-21 13:25:09',NULL,NULL),
 (2,1,'HDFC Bank Ltd','setmt1','2022-06-21 13:25:37','setmt1','2022-06-21 13:26:53');
/*!40000 ALTER TABLE `bank001mb` ENABLE KEYS */;


--
-- Definition of table `breakdown001mb`
--

DROP TABLE IF EXISTS `breakdown001mb`;
CREATE TABLE `breakdown001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `sslno` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `details` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `sslno` (`sslno`),
  CONSTRAINT `breakdown001mb_ibfk_1` FOREIGN KEY (`sslno`) REFERENCES `status001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breakdown001mb`
--

/*!40000 ALTER TABLE `breakdown001mb` DISABLE KEYS */;
INSERT INTO `breakdown001mb` (`sl_no`,`unitdepartsl_no`,`sslno`,`name`,`details`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (2,1,2,'Grinder Belt Cut','Grinder not working','latha','2022-01-06 13:52:22',NULL,NULL),
 (3,1,1,'Printer Shorted','shorting problem','latha','2022-01-06 13:53:56',NULL,NULL),
 (4,1,2,'Motor Burned','Motor is not working','latha','2022-01-06 13:54:33',NULL,NULL);
/*!40000 ALTER TABLE `breakdown001mb` ENABLE KEYS */;


--
-- Definition of table `breakdownreg001wb`
--

DROP TABLE IF EXISTS `breakdownreg001wb`;
CREATE TABLE `breakdownreg001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `mslno` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `bdsl` int(11) NOT NULL,
  `rcsl` int(11) NOT NULL,
  `pasl` int(11) NOT NULL,
  `sslno` int(11) NOT NULL,
  `spareCost` int(11) NOT NULL,
  `sparesQty` int(11) NOT NULL,
  `attendby` varchar(50) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `startTime` varchar(50) DEFAULT NULL,
  `endTime` varchar(50) DEFAULT NULL,
  `filename` varchar(50) NOT NULL,
  `filepath` varchar(50) NOT NULL,
  `originalfilename` varchar(50) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `mslno` (`mslno`),
  KEY `sslno` (`sslno`),
  KEY `bdsl` (`bdsl`),
  KEY `rcsl` (`rcsl`),
  KEY `pasl` (`pasl`),
  CONSTRAINT `breakdownreg001wb_ibfk_1` FOREIGN KEY (`mslno`) REFERENCES `machine001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `breakdownreg001wb_ibfk_2` FOREIGN KEY (`sslno`) REFERENCES `spares001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `breakdownreg001wb_ibfk_3` FOREIGN KEY (`bdsl`) REFERENCES `breakdown001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `breakdownreg001wb_ibfk_4` FOREIGN KEY (`rcsl`) REFERENCES `rootcause001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `breakdownreg001wb_ibfk_5` FOREIGN KEY (`pasl`) REFERENCES `preventiveaction001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breakdownreg001wb`
--

/*!40000 ALTER TABLE `breakdownreg001wb` DISABLE KEYS */;
INSERT INTO `breakdownreg001wb` (`sl_no`,`unitdepartsl_no`,`mslno`,`date`,`bdsl`,`rcsl`,`pasl`,`sslno`,`spareCost`,`sparesQty`,`attendby`,`remarks`,`startTime`,`endTime`,`filename`,`filepath`,`originalfilename`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (10,1,1,'2022-03-01 00:00:00',2,2,2,7,0,0,'sekar','good','12:05','13:06','C:\\fakepath\\mi.jpg','undefined','1655451431192_mi.jpg','siva','2022-06-17 13:07:11','setmt1','2022-06-17 13:07:11'),
 (11,1,1,'2022-03-02 00:00:00',3,3,3,2,0,0,'hema','bad','13:06','16:10','C:\\fakepath\\page1-01.jpg','undefined','1653041997580_page1-01.jpg','siva','2022-05-20 15:49:57','siva','2022-05-20 15:49:57'),
 (12,1,1,'2022-03-03 00:00:00',4,4,4,2,10000,5,'sri','good','18:07','23:13','breakdown3.png','undefined','1646635066938_breakdown3.png','siva','2022-03-07 12:07:46','undefined','2022-03-07 12:07:46'),
 (13,1,1,'2022-05-18 00:00:00',4,4,4,2,0,0,'fdd','cfbdvf','19:11','23:15','C:\\fakepath\\page1-01.jpg','undefined','1653046898608_page1-01.jpg','siva','2022-05-20 17:11:38','siva','2022-05-20 17:11:38'),
 (14,1,2,'2022-05-17 00:00:00',3,3,3,2,4000,2,'A','A','07:34','20:34','4c96102cede87dce786d67d9996bb97d.jpg','undefined','1652965494315_4c96102cede87dce786d67d9996bb97d.jpg','siva','2022-05-19 18:34:54',NULL,NULL),
 (15,1,1,'2022-06-10 00:00:00',2,2,2,7,0,0,'good','fine','19:52','19:54','C:\\fakepath\\mi.jpg','undefined','1655457551042_mi.jpg','setmt1','2022-06-17 14:49:11','setmt1','2022-06-17 14:49:11'),
 (16,1,1,'2022-06-27 00:00:00',2,2,2,2,30000,15,'sd','sd','11:29','13:29','Trims ERP-Daily Status.xlsx','undefined','1656306014118_Trims ERP-Daily Status.xlsx','siva','2022-06-27 10:30:14',NULL,NULL),
 (17,1,1,'2022-06-27 00:00:00',2,2,2,2,40000,20,'s','s','11:30','15:30','Trims ERP-Daily Status.xlsx','undefined','1656306084790_Trims ERP-Daily Status.xlsx','siva','2022-06-27 10:31:24',NULL,NULL),
 (18,1,1,'2022-06-27 00:00:00',3,3,3,2,20000,10,'cgf','df','11:43','13:46','testfile.docx','undefined','1656306841991_testfile.docx','siva','2022-06-27 10:44:01',NULL,NULL);
/*!40000 ALTER TABLE `breakdownreg001wb` ENABLE KEYS */;


--
-- Definition of table `checklist001mb`
--

DROP TABLE IF EXISTS `checklist001mb`;
CREATE TABLE `checklist001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `mcslno` int(11) NOT NULL,
  `sslno` int(11) NOT NULL,
  `checkpoints` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `mcslno` (`mcslno`),
  KEY `sslno` (`sslno`),
  CONSTRAINT `checklist001mb_ibfk_1` FOREIGN KEY (`mcslno`) REFERENCES `machine001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `checklist001mb_ibfk_2` FOREIGN KEY (`sslno`) REFERENCES `status001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checklist001mb`
--

/*!40000 ALTER TABLE `checklist001mb` DISABLE KEYS */;
INSERT INTO `checklist001mb` (`sl_no`,`unitdepartsl_no`,`mcslno`,`sslno`,`checkpoints`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,1,'Grinding wheel checked','Moorthy','2021-09-06 13:18:33','aravind','2021-09-06 13:18:33'),
 (9,1,1,4,'machine on/off checked','latha','2022-02-11 17:49:29',NULL,NULL),
 (10,1,1,2,'shaft working','latha','2022-02-11 17:51:11',NULL,NULL),
 (11,1,1,1,'machne working condition','latha','2022-02-11 17:52:01',NULL,NULL),
 (13,1,1,1,'belt checked','latha','2022-02-14 16:57:55',NULL,NULL);
/*!40000 ALTER TABLE `checklist001mb` ENABLE KEYS */;


--
-- Definition of table `childpart001mb`
--

DROP TABLE IF EXISTS `childpart001mb`;
CREATE TABLE `childpart001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `cpartno` varchar(200) NOT NULL,
  `cpartname` varchar(200) NOT NULL,
  `splan` varchar(200) NOT NULL,
  `descrip` varchar(250) NOT NULL,
  `qunty` varchar(250) NOT NULL,
  `unitamount` int(50) NOT NULL,
  `uom` varchar(250) NOT NULL,
  `gst` int(50) NOT NULL,
  `hsn` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childpart001mb`
--

/*!40000 ALTER TABLE `childpart001mb` DISABLE KEYS */;
INSERT INTO `childpart001mb` (`sl_no`,`unitdepartsl_no`,`cpartno`,`cpartname`,`splan`,`descrip`,`qunty`,`unitamount`,`uom`,`gst`,`hsn`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'CPT0001','paint','aa','red','1',100,'Ltrs',18,'aa','setmt1','2022-08-13 12:51:58',NULL,NULL),
 (2,1,'CPT0001','steel','ss','rod','1',200,'Kgs',18,'aaa','setmt1','2022-08-13 12:52:47',NULL,NULL),
 (3,1,'CPT0002','cloth','ss','waste','1',300,'Kgs',18,'ss','setmt1','2022-08-13 12:53:33',NULL,NULL);
/*!40000 ALTER TABLE `childpart001mb` ENABLE KEYS */;


--
-- Definition of table `childpartspecification001wb`
--

DROP TABLE IF EXISTS `childpartspecification001wb`;
CREATE TABLE `childpartspecification001wb` (
  `sl_no` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `cprtslno` int(11) DEFAULT NULL,
  `parameter` varchar(200) NOT NULL,
  `specification` varchar(200) NOT NULL,
  `inspecmethod` varchar(200) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `cprtslno` (`cprtslno`),
  CONSTRAINT `childpartspecification001wb_ibfk_1` FOREIGN KEY (`cprtslno`) REFERENCES `childpart001mb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childpartspecification001wb`
--

/*!40000 ALTER TABLE `childpartspecification001wb` DISABLE KEYS */;
INSERT INTO `childpartspecification001wb` (`sl_no`,`unitdepartsl_no`,`cprtslno`,`parameter`,`specification`,`inspecmethod`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,'1','aa','aa','setmt1','2022-08-13 12:51:58',NULL,NULL),
 (2,1,1,'2','bb','bb','setmt1','2022-08-13 12:51:58',NULL,NULL),
 (3,1,2,'2','ss','ss','setmt1','2022-08-13 12:52:47',NULL,NULL),
 (4,1,2,'3','dd','dd','setmt1','2022-08-13 12:52:47',NULL,NULL),
 (5,1,3,'1','aa','aa','setmt1','2022-08-13 12:53:33',NULL,NULL),
 (6,1,3,'2','aa','aa','setmt1','2022-08-13 12:53:33',NULL,NULL),
 (7,1,3,'3','dd','dd','setmt1','2022-08-13 12:53:33',NULL,NULL);
/*!40000 ALTER TABLE `childpartspecification001wb` ENABLE KEYS */;


--
-- Definition of table `companydetails001mb`
--

DROP TABLE IF EXISTS `companydetails001mb`;
CREATE TABLE `companydetails001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `company` varchar(150) NOT NULL,
  `address1` varchar(150) NOT NULL,
  `address2` varchar(150) NOT NULL,
  `address3` varchar(150) NOT NULL,
  `gst_in` int(20) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `pin_code` int(20) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companydetails001mb`
--

/*!40000 ALTER TABLE `companydetails001mb` DISABLE KEYS */;
INSERT INTO `companydetails001mb` (`sl_no`,`unitdepartsl_no`,`company`,`address1`,`address2`,`address3`,`gst_in`,`city`,`state`,`country`,`pin_code`,`email_id`,`contact_no`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'Srinivas EnterPrises Unit I','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',57567,'Karuppatti','Hosur','India',635113,'abc@gmail.com',6785646546,'latha','2022-04-12 11:17:50','latha','2022-04-12 17:32:26'),
 (2,1,'Srinivas EnterPrises Unit II','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',5678567,'Karuppatti','Hosur','India',635113,'abc@gmail.com',9675237784,'latha','2022-04-12 11:33:10','latha','2022-04-12 13:28:33'),
 (3,1,'Test Company 1','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',5465745,'Karuppatti','Hosur','India',635113,'abc@gmail.com',6567743543,'latha','2022-04-12 11:33:49','latha','2022-04-12 17:32:35'),
 (4,1,'Trims','345tfgmn','fgfgg','sdsd',454,'tenkasi','tamilnadu','india',627859,'dhaya@gmail.com',9791717574,'siva','2022-05-13 15:55:07',NULL,NULL);
/*!40000 ALTER TABLE `companydetails001mb` ENABLE KEYS */;


--
-- Definition of table `consignee001mb`
--

DROP TABLE IF EXISTS `consignee001mb`;
CREATE TABLE `consignee001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `company_slno` int(11) NOT NULL,
  `consignee` varchar(150) NOT NULL,
  `address1` varchar(150) DEFAULT NULL,
  `address2` varchar(150) DEFAULT NULL,
  `address3` varchar(150) DEFAULT NULL,
  `gst_in` int(20) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `pin_code` int(20) DEFAULT NULL,
  `email_id` varchar(30) DEFAULT NULL,
  `contact_no` bigint(20) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `company_slno` (`company_slno`),
  CONSTRAINT `consignee001mb_ibfk_1` FOREIGN KEY (`company_slno`) REFERENCES `companydetails001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consignee001mb`
--

/*!40000 ALTER TABLE `consignee001mb` DISABLE KEYS */;
INSERT INTO `consignee001mb` (`sl_no`,`unitdepartsl_no`,`company_slno`,`consignee`,`address1`,`address2`,`address3`,`gst_in`,`city`,`state`,`country`,`pin_code`,`email_id`,`contact_no`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,'trichy','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',6435345,'Karuppatti','Hosur','India',635113,'abc@gmail.com',6754435453,'latha','2022-04-12 16:06:48','latha','2022-04-13 10:40:52'),
 (2,1,1,'madurai','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',673457,'Karuppatti','Hosur','India',635113,'abc@gmail.com',9643563422,'latha','2022-04-12 17:02:59','latha','2022-04-15 12:20:41'),
 (3,1,1,'theni','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',5675672,'Karuppatti','Hosur','India',635113,'abc@gmail.com',8464633336,'latha','2022-04-12 17:33:23','latha','2022-04-15 12:20:59'),
 (5,1,2,'erode','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',4675755,'Karuppatti','Hosur','India',635113,'abc@gmail.com',8764355643,'latha','2022-04-13 10:41:14','latha','2022-04-15 12:22:01'),
 (6,1,2,'chennai','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',56745423,'Karuppatti','Hosur','India',635113,'abc@gmail.com',9762385644,'latha','2022-04-13 10:42:00','latha','2022-04-15 12:22:14'),
 (7,1,2,'mumbai','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',3546456,'Karuppatti','Hosur','India',635113,'abc@gmail.com',7654533243,'latha','2022-04-13 10:42:20','latha','2022-04-15 12:22:25'),
 (10,1,3,'salem','Sf. NO. 336/1Achettipalli Village','Kelamangalam Road, Near Karuppatti','Hosur',67435235,'Karuppatti','Hosur','India',635113,'abc@gmail.com',9545234232,'latha','2022-04-13 10:45:16',NULL,NULL);
/*!40000 ALTER TABLE `consignee001mb` ENABLE KEYS */;


--
-- Definition of table `consumble001mb`
--

DROP TABLE IF EXISTS `consumble001mb`;
CREATE TABLE `consumble001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `consmno` varchar(200) NOT NULL,
  `consname` varchar(200) NOT NULL,
  `splan` varchar(200) NOT NULL,
  `descrip` varchar(250) NOT NULL,
  `qunty` varchar(250) NOT NULL,
  `unitamount` int(50) NOT NULL,
  `uom` varchar(250) NOT NULL,
  `gst` int(50) NOT NULL,
  `hsn` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consumble001mb`
--

/*!40000 ALTER TABLE `consumble001mb` DISABLE KEYS */;
INSERT INTO `consumble001mb` (`sl_no`,`unitdepartsl_no`,`consmno`,`consname`,`splan`,`descrip`,`qunty`,`unitamount`,`uom`,`gst`,`hsn`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'CIC0001','paint','asd','red','1',100,'Ltrs',18,'asd','setmt1','2022-08-12 17:23:00',NULL,NULL),
 (2,1,'CIC0001','steel','aed','rod','1',300,'Kgs',18,'55','setmt1','2022-08-12 17:23:46',NULL,NULL),
 (3,1,'CIC0002','paint','dd','blue','1',400,'Ltrs',18,'22','setmt1','2022-08-12 17:24:29',NULL,NULL);
/*!40000 ALTER TABLE `consumble001mb` ENABLE KEYS */;


--
-- Definition of table `consumerspecification001wb`
--

DROP TABLE IF EXISTS `consumerspecification001wb`;
CREATE TABLE `consumerspecification001wb` (
  `sl_no` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `consumslno` int(11) DEFAULT NULL,
  `parameter` varchar(200) NOT NULL,
  `specification` varchar(200) NOT NULL,
  `inspecmethod` varchar(200) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `consumslno` (`consumslno`),
  CONSTRAINT `consumerspecification001wb_ibfk_1` FOREIGN KEY (`consumslno`) REFERENCES `consumble001mb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consumerspecification001wb`
--

/*!40000 ALTER TABLE `consumerspecification001wb` DISABLE KEYS */;
INSERT INTO `consumerspecification001wb` (`sl_no`,`unitdepartsl_no`,`consumslno`,`parameter`,`specification`,`inspecmethod`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,'1','asd','asd','setmt1','2022-08-12 17:23:00',NULL,NULL),
 (2,1,1,'2','asd','asd','setmt1','2022-08-12 17:23:00',NULL,NULL),
 (3,1,2,'1','ad','asd','setmt1','2022-08-12 17:23:46',NULL,NULL),
 (4,1,2,'2','sdf','sdsdf','setmt1','2022-08-12 17:23:46',NULL,NULL),
 (5,1,3,'1','sdf','sdf','setmt1','2022-08-12 17:24:29',NULL,NULL),
 (6,1,3,'2','sdf','sd','setmt1','2022-08-12 17:24:29',NULL,NULL),
 (7,1,3,'3','asdf','asdf','setmt1','2022-08-12 17:24:29',NULL,NULL);
/*!40000 ALTER TABLE `consumerspecification001wb` ENABLE KEYS */;


--
-- Definition of table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `CourseID` smallint(5) unsigned NOT NULL,
  `Code` varchar(10) CHARACTER SET ascii NOT NULL,
  `Name` varchar(100) NOT NULL,
  PRIMARY KEY (`CourseID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

/*!40000 ALTER TABLE `course` DISABLE KEYS */;
/*!40000 ALTER TABLE `course` ENABLE KEYS */;


--
-- Definition of table `coursemembership`
--

DROP TABLE IF EXISTS `coursemembership`;
CREATE TABLE `coursemembership` (
  `Student` int(10) unsigned NOT NULL,
  `Course` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`Student`,`Course`),
  KEY `Course` (`Course`),
  CONSTRAINT `coursemembership_ibfk_1` FOREIGN KEY (`Student`) REFERENCES `student` (`StudentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `coursemembership_ibfk_2` FOREIGN KEY (`Course`) REFERENCES `course` (`CourseID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursemembership`
--

/*!40000 ALTER TABLE `coursemembership` DISABLE KEYS */;
/*!40000 ALTER TABLE `coursemembership` ENABLE KEYS */;


--
-- Definition of table `custemer001wb`
--

DROP TABLE IF EXISTS `custemer001wb`;
CREATE TABLE `custemer001wb` (
  `sl_no` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `custemer_slno` int(11) NOT NULL,
  `custemername` varchar(250) NOT NULL,
  `prodescrip` varchar(250) NOT NULL,
  `qunty` varchar(250) NOT NULL,
  `uom` varchar(250) NOT NULL,
  `unitrate` varchar(250) NOT NULL,
  `totalamount` int(50) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `custemer_slno` (`custemer_slno`),
  CONSTRAINT `custemer001wb_ibfk_1` FOREIGN KEY (`custemer_slno`) REFERENCES `salesitem001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custemer001wb`
--

/*!40000 ALTER TABLE `custemer001wb` DISABLE KEYS */;
INSERT INTO `custemer001wb` (`sl_no`,`unitdepartsl_no`,`custemer_slno`,`custemername`,`prodescrip`,`qunty`,`uom`,`unitrate`,`totalamount`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,'gate','steel','5','Kgs','200',1000,'setmt1','2022-07-19 14:11:44',NULL,NULL),
 (2,1,2,'gate','steel','5','Kgs','200',1000,'setmt1','2022-07-19 14:11:44',NULL,NULL),
 (3,1,1,'gate','steel','5','Kgs','200',1000,'setmt1','2022-07-19 15:41:21',NULL,NULL),
 (4,1,2,'steelsheet','steel','6','Kgs','400',2400,'setmt1','2022-07-19 15:41:21',NULL,NULL),
 (5,1,3,'paint','red','6','Ltrs','500',3000,'setmt1','2022-07-19 15:41:21',NULL,NULL),
 (6,1,1,'gate','steel','5','Kgs','200',1000,'setmt1','2022-07-19 17:07:49',NULL,NULL),
 (7,1,2,'steelsheet','steel','5','Kgs','400',2000,'setmt1','2022-07-19 17:07:49',NULL,NULL),
 (8,1,3,'paint','red','6','Ltrs','500',3000,'setmt1','2022-07-19 17:07:49',NULL,NULL),
 (9,1,1,'gate','steel','6','Kgs','200',1200,'setmt1','2022-07-19 17:11:49',NULL,NULL),
 (10,1,3,'paint','red','6','Ltrs','500',3000,'setmt1','2022-07-19 17:11:49',NULL,NULL),
 (11,1,2,'steelsheet','steel','8','Kgs','400',3200,'setmt1','2022-07-19 17:11:49',NULL,NULL),
 (12,1,1,'gate','steel','5','Kgs','200',1000,'setmt1','2022-07-19 17:15:23',NULL,NULL),
 (13,1,2,'steelsheet','steel','6','Kgs','400',2400,'setmt1','2022-07-19 17:15:23',NULL,NULL),
 (14,1,3,'paint','red','6','Ltrs','500',3000,'setmt1','2022-07-19 17:15:23',NULL,NULL);
/*!40000 ALTER TABLE `custemer001wb` ENABLE KEYS */;


--
-- Definition of table `custemerregistration001mb`
--

DROP TABLE IF EXISTS `custemerregistration001mb`;
CREATE TABLE `custemerregistration001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `custemername` varchar(40) NOT NULL,
  `custemercode` varchar(40) NOT NULL,
  `address` varchar(200) NOT NULL,
  `gstin` varchar(30) NOT NULL,
  `certification` varchar(50) NOT NULL,
  `product_desc` varchar(100) NOT NULL,
  `reputed_cust` varchar(50) NOT NULL,
  `concern` varchar(100) NOT NULL,
  `other_Info` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custemerregistration001mb`
--

/*!40000 ALTER TABLE `custemerregistration001mb` DISABLE KEYS */;
INSERT INTO `custemerregistration001mb` (`sl_no`,`unitdepartsl_no`,`custemername`,`custemercode`,`address`,`gstin`,`certification`,`product_desc`,`reputed_cust`,`concern`,`other_Info`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`,`website`) VALUES 
 (3,1,'NIT','SE/CC/00000','dd','dd','dd','dd','dd','dd','dd','setmt1','2022-08-09 15:33:31',NULL,NULL,'dd'),
 (4,1,'oas','SE/CC/00001','sss','12','sss','ss','ss','ss','ss','setmt1','2022-08-09 15:34:13',NULL,NULL,'ss');
/*!40000 ALTER TABLE `custemerregistration001mb` ENABLE KEYS */;


--
-- Definition of table `custemersalesinvoice001mb`
--

DROP TABLE IF EXISTS `custemersalesinvoice001mb`;
CREATE TABLE `custemersalesinvoice001mb` (
  `custemer001wb` int(10) unsigned NOT NULL,
  `salesinvoice001wb` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`custemer001wb`,`salesinvoice001wb`),
  KEY `salesinvoice001wb` (`salesinvoice001wb`),
  CONSTRAINT `custemersalesinvoice001mb_ibfk_1` FOREIGN KEY (`custemer001wb`) REFERENCES `custemer001wb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `custemersalesinvoice001mb_ibfk_2` FOREIGN KEY (`salesinvoice001wb`) REFERENCES `salesinvoice001wb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custemersalesinvoice001mb`
--

/*!40000 ALTER TABLE `custemersalesinvoice001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `custemersalesinvoice001mb` ENABLE KEYS */;


--
-- Definition of table `customer001mb`
--

DROP TABLE IF EXISTS `customer001mb`;
CREATE TABLE `customer001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `major_product` varchar(200) NOT NULL,
  `vendor_code` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `gstin` varchar(50) NOT NULL,
  `customer_phone` bigint(20) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `contact_person_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer001mb`
--

/*!40000 ALTER TABLE `customer001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer001mb` ENABLE KEYS */;


--
-- Definition of table `customerconsignee001mb`
--

DROP TABLE IF EXISTS `customerconsignee001mb`;
CREATE TABLE `customerconsignee001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `consignee_slno` int(11) NOT NULL,
  `companyName` varchar(150) NOT NULL,
  `consignee` varchar(150) NOT NULL,
  `address1` varchar(150) DEFAULT NULL,
  `address2` varchar(150) DEFAULT NULL,
  `address3` varchar(150) DEFAULT NULL,
  `gst_in` int(20) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `pin_code` int(20) DEFAULT NULL,
  `email_id` varchar(30) DEFAULT NULL,
  `contact_no` bigint(20) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `consignee_slno` (`consignee_slno`),
  CONSTRAINT `customerconsignee001mb_ibfk_1` FOREIGN KEY (`consignee_slno`) REFERENCES `custemerregistration001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerconsignee001mb`
--

/*!40000 ALTER TABLE `customerconsignee001mb` DISABLE KEYS */;
INSERT INTO `customerconsignee001mb` (`sl_no`,`unitdepartsl_no`,`consignee_slno`,`companyName`,`consignee`,`address1`,`address2`,`address3`,`gst_in`,`city`,`state`,`country`,`pin_code`,`email_id`,`contact_no`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (2,1,3,'NIT','trichy','t','t','t',12,'t','t','tt',621002,'t',12345,'setmt1','2022-08-09 15:37:18',NULL,NULL),
 (3,1,3,'NIT','covai','c','c','c',44,'c','c','c',621003,'c',5555,'setmt1','2022-08-09 15:37:54',NULL,NULL),
 (4,1,4,'oas','chennai','m','m','m',55,'m','m','m',62121,'m',88997,'setmt1','2022-08-09 15:38:26',NULL,NULL),
 (5,1,4,'oas','bangalore','b','b','b',4,'b','b','b',5654,'b',963258,'setmt1','2022-08-09 15:38:58',NULL,NULL);
/*!40000 ALTER TABLE `customerconsignee001mb` ENABLE KEYS */;


--
-- Definition of table `customercontact001wb`
--

DROP TABLE IF EXISTS `customercontact001wb`;
CREATE TABLE `customercontact001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `customersl_no` int(50) DEFAULT NULL,
  `pname` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `level` varchar(200) NOT NULL,
  `mnumber` int(20) NOT NULL,
  `altmnumber` int(20) NOT NULL,
  `mailid` varchar(200) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `customersl_no` (`customersl_no`),
  CONSTRAINT `customercontact001wb_ibfk_1` FOREIGN KEY (`customersl_no`) REFERENCES `custemerregistration001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customercontact001wb`
--

/*!40000 ALTER TABLE `customercontact001wb` DISABLE KEYS */;
INSERT INTO `customercontact001wb` (`sl_no`,`unitdepartsl_no`,`customersl_no`,`pname`,`designation`,`department`,`level`,`mnumber`,`altmnumber`,`mailid`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,6,'three','three','three','three',987456321,987456321,'a','setmt1','2022-08-04 15:25:59',NULL,NULL),
 (2,1,NULL,'ggg','gg','gg','gg',1245,12354,'g','setmt1','2022-08-09 15:23:25',NULL,NULL),
 (3,1,3,'ddd','dd','dd','dd',123,147,'dd','setmt1','2022-08-09 15:33:31',NULL,NULL),
 (4,1,4,'ss','ss','ss','ss',789,456,'ss','setmt1','2022-08-09 15:34:13',NULL,NULL);
/*!40000 ALTER TABLE `customercontact001wb` ENABLE KEYS */;


--
-- Definition of table `dailychecklist001wb`
--

DROP TABLE IF EXISTS `dailychecklist001wb`;
CREATE TABLE `dailychecklist001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `mslno` int(11) NOT NULL,
  `cpslno` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `mslno` (`mslno`),
  KEY `cpslno` (`cpslno`),
  CONSTRAINT `dailychecklist001wb_ibfk_1` FOREIGN KEY (`mslno`) REFERENCES `machine001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `dailychecklist001wb_ibfk_2` FOREIGN KEY (`cpslno`) REFERENCES `checklist001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dailychecklist001wb`
--

/*!40000 ALTER TABLE `dailychecklist001wb` DISABLE KEYS */;
INSERT INTO `dailychecklist001wb` (`sl_no`,`unitdepartsl_no`,`mslno`,`cpslno`,`date`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (7,1,3,1,'2022-10-01 00:00:00','Aravinth','2022-01-10 10:43:42',NULL,NULL),
 (8,1,3,1,'2022-10-01 00:00:00','Aravinth','2022-01-10 10:44:23',NULL,NULL),
 (15,1,1,1,'2022-01-27 17:16:56','latha','2022-01-27 17:16:56','latha','2022-01-27 17:32:32'),
 (16,1,6,1,'2022-01-28 18:59:57','latha','2022-01-28 18:59:57','latha','2022-01-28 19:00:02'),
 (17,1,1,9,'2022-03-07 00:00:00','aravinth','2022-03-07 16:47:26',NULL,NULL),
 (18,1,1,10,'2022-03-07 00:00:00','aravinth','2022-03-07 16:47:35',NULL,NULL),
 (20,1,1,13,'2022-03-07 00:00:00','aravinth','2022-03-07 16:47:47',NULL,NULL),
 (85,1,1,1,'2022-03-08 00:00:00','siva','2022-03-08 14:23:55',NULL,NULL),
 (86,1,1,9,'2022-03-08 00:00:00','siva','2022-03-08 14:24:02',NULL,NULL),
 (87,1,1,10,'2022-03-08 00:00:00','siva','2022-03-08 14:29:26',NULL,NULL),
 (88,1,1,11,'2022-03-08 00:00:00','siva','2022-03-08 14:29:33',NULL,NULL),
 (89,1,1,1,'2022-05-24 00:00:00','siva','2022-05-24 13:27:38',NULL,NULL),
 (90,1,1,1,'2022-08-22 00:00:00','setmt1','2022-08-22 13:46:11',NULL,NULL);
/*!40000 ALTER TABLE `dailychecklist001wb` ENABLE KEYS */;


--
-- Definition of table `department001mb`
--

DROP TABLE IF EXISTS `department001mb`;
CREATE TABLE `department001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `sslno` int(11) NOT NULL,
  `department` varchar(50) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `sslno` (`sslno`),
  CONSTRAINT `department001mb_ibfk_1` FOREIGN KEY (`sslno`) REFERENCES `status001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department001mb`
--

/*!40000 ALTER TABLE `department001mb` DISABLE KEYS */;
INSERT INTO `department001mb` (`sl_no`,`sslno`,`department`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'Top Management','rizwana','2021-09-06 13:18:33','aravind','2021-09-06 13:18:33'),
 (2,2,'Marketing','rizwana','2021-09-06 13:18:33','aravind','2021-09-06 13:18:33'),
 (3,1,'NPD','latha','2022-01-05 12:00:29','latha','2022-01-05 12:00:32'),
 (4,1,'Purchase','sekar','2022-01-20 00:03:18','sekar','2022-01-20 00:03:21'),
 (5,1,'Store','sekar','2022-01-20 00:03:18','sekar','2022-01-20 00:03:21'),
 (6,1,'HR','sekar','2022-01-20 00:03:18','sekar','2022-01-20 00:03:21'),
 (7,1,'Production','sekar','2022-01-20 00:03:18','sekar','2022-01-20 00:03:21'),
 (8,1,'Quality','sekar','2022-01-20 00:03:18','sekar','2022-01-20 00:03:21'),
 (9,1,'Maintenance','sekar','2022-01-20 00:03:18','sekar','2022-01-20 00:03:21'),
 (10,1,'Despatch','sekar','2022-01-20 00:03:18','sekar','2022-01-20 00:03:21'),
 (11,1,'Sales','setmt1','2022-08-03 15:35:47',NULL,NULL);
/*!40000 ALTER TABLE `department001mb` ENABLE KEYS */;


--
-- Definition of table `email001mb`
--

DROP TABLE IF EXISTS `email001mb`;
CREATE TABLE `email001mb` (
  `emailId` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `emailFrom` varchar(50) NOT NULL,
  `emailTo` varchar(50) NOT NULL,
  `emailCC` text NOT NULL,
  `emailBCC` text NOT NULL,
  `emailDate` datetime DEFAULT NULL,
  `emailSubject` varchar(100) DEFAULT NULL,
  `emailBody` text,
  `emailCurrentPlace` varchar(30) DEFAULT NULL,
  `isEmailViewed` varchar(30) DEFAULT NULL,
  `isEmailAttachmentExists` varchar(10) DEFAULT NULL,
  `multipleEmailId` varchar(255) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`emailId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email001mb`
--

/*!40000 ALTER TABLE `email001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `email001mb` ENABLE KEYS */;


--
-- Definition of table `emailattachment001mb`
--

DROP TABLE IF EXISTS `emailattachment001mb`;
CREATE TABLE `emailattachment001mb` (
  `emailattachmentid` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `content` tinyblob,
  `contenttype` varchar(255) DEFAULT NULL,
  `emailId` varchar(225) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filesize` varchar(255) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`emailattachmentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emailattachment001mb`
--

/*!40000 ALTER TABLE `emailattachment001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailattachment001mb` ENABLE KEYS */;


--
-- Definition of table `emailsignature001mb`
--

DROP TABLE IF EXISTS `emailsignature001mb`;
CREATE TABLE `emailsignature001mb` (
  `emailSignatureId` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `companyWebsite` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `emailAddress` varchar(255) DEFAULT NULL,
  `employeeDesignation` varchar(255) DEFAULT NULL,
  `employeeId` int(11) DEFAULT NULL,
  `employeeName` varchar(255) DEFAULT NULL,
  `employeeNamePrefix` varchar(255) DEFAULT NULL,
  `logoLink` varchar(255) DEFAULT NULL,
  `mobileNumber` int(10) DEFAULT NULL,
  `phoneNumber` int(10) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`emailSignatureId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emailsignature001mb`
--

/*!40000 ALTER TABLE `emailsignature001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailsignature001mb` ENABLE KEYS */;


--
-- Definition of table `emp001mb`
--

DROP TABLE IF EXISTS `emp001mb`;
CREATE TABLE `emp001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `empcode` varchar(10) NOT NULL,
  `empname` varchar(200) NOT NULL,
  `des` varchar(200) NOT NULL,
  `age` int(20) NOT NULL,
  `doj` datetime NOT NULL,
  `dob` datetime NOT NULL,
  `fname` varchar(200) NOT NULL,
  `bgroup` varchar(200) NOT NULL,
  `female` varchar(200) NOT NULL,
  `married` varchar(200) NOT NULL,
  `child` varchar(200) DEFAULT NULL,
  `dep` varchar(200) NOT NULL,
  `add1` varchar(200) NOT NULL,
  `add2` varchar(200) NOT NULL,
  `edu` varchar(200) NOT NULL,
  `exp` varchar(200) NOT NULL,
  `det` varchar(200) NOT NULL,
  `filename` varchar(200) NOT NULL,
  `filepath` varchar(50) NOT NULL,
  `originalfilename` varchar(50) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp001mb`
--

/*!40000 ALTER TABLE `emp001mb` DISABLE KEYS */;
INSERT INTO `emp001mb` (`sl_no`,`unitdepartsl_no`,`empcode`,`empname`,`des`,`age`,`doj`,`dob`,`fname`,`bgroup`,`female`,`married`,`child`,`dep`,`add1`,`add2`,`edu`,`exp`,`det`,`filename`,`filepath`,`originalfilename`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (24,1,'sas','Naresh','a',2,'2022-05-24 00:00:00','2022-05-26 00:00:00','as','O+','male','unmarried','Null','3','as','as','asas','2','axZx','mi.jpg','undefined','1655451922603_mi.jpg','siva','2022-06-17 13:15:22',NULL,NULL),
 (25,1,'520','suresh','a',2,'2022-05-24 00:00:00','2022-05-26 00:00:00','as','as','female','Married','asa','sas','as','as','asas','kj','axZx','image1.png','undefined','1654867312111_image1.png','siva','2022-06-10 18:51:52',NULL,NULL),
 (26,1,'575','sekar','6ty',7,'2022-05-05 00:00:00','2022-05-12 00:00:00','tyu','ty','male','Married','ty','ty','tyut','y','yu','ty','t','image1.png','undefined','1654867337329_image1.png','siva','2022-06-10 18:52:17',NULL,NULL),
 (27,1,'123','asdf','asdfs',15,'2022-06-15 00:00:00','2022-06-18 00:00:00','dasfsafs','B+','male','Married','2','2','asdfsadf','dsfadsfsadfds','asdf','10','asdfsa','image1.png','undefined','1655191109828_image1.png','setmt1','2022-06-14 12:48:29',NULL,NULL);
/*!40000 ALTER TABLE `emp001mb` ENABLE KEYS */;


--
-- Definition of table `employe001mb`
--

DROP TABLE IF EXISTS `employe001mb`;
CREATE TABLE `employe001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `sslno` int(11) NOT NULL,
  `ecode` varchar(50) NOT NULL,
  `ename` varchar(500) NOT NULL,
  `year` datetime NOT NULL,
  `capacity` varchar(100) NOT NULL,
  `mtype` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `sslno` (`sslno`),
  CONSTRAINT `employe001mb_ibfk_1` FOREIGN KEY (`sslno`) REFERENCES `status001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employe001mb`
--

/*!40000 ALTER TABLE `employe001mb` DISABLE KEYS */;
INSERT INTO `employe001mb` (`sl_no`,`unitdepartsl_no`,`sslno`,`ecode`,`ename`,`year`,`capacity`,`mtype`,`location`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,'EM/EC/001','Nareshkumar','2022-06-04 00:00:00','system','supervisior','trichy','siva','2022-05-23 12:45:56',NULL,NULL),
 (2,1,1,'EM/EC/002','Naresh','2022-09-04 00:00:00','system','supervisior','kulithalai','siva','2022-05-23 12:50:24','siva','2022-05-23 13:53:19'),
 (3,1,1,'EM/EC/003','manojkumar','2022-11-02 00:00:00','system','supervisior','kulihthalai','siva','2022-05-23 13:49:30','siva','2022-05-23 18:43:23'),
 (4,1,1,'EM/EC/004','manoj','2022-05-04 00:00:00','system','supervisior','trichy','siva','2022-05-23 18:37:57',NULL,NULL),
 (5,1,1,'EM/EC/005','Naresh','2022-04-26 00:00:00','system','supervisior','trichy','siva','2022-05-23 18:38:48',NULL,NULL),
 (6,1,1,'EM/EC/006','mahesh','2022-04-24 00:00:00','system','supervisior','trichy','siva','2022-05-23 18:45:55',NULL,NULL),
 (7,1,1,'EM/EC/007','manoj','2022-04-29 00:00:00','system','supervisior','trichy','siva','2022-05-24 13:36:27',NULL,NULL);
/*!40000 ALTER TABLE `employe001mb` ENABLE KEYS */;


--
-- Definition of table `employef001mb`
--

DROP TABLE IF EXISTS `employef001mb`;
CREATE TABLE `employef001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `fa_no` varchar(50) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employef001mb`
--

/*!40000 ALTER TABLE `employef001mb` DISABLE KEYS */;
INSERT INTO `employef001mb` (`sl_no`,`unitdepartsl_no`,`fa_no`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'EM/EC/001','siva','2022-06-01 18:47:26','setmt1','2022-06-21 13:19:00'),
 (2,1,'EM/EC/002','setmt1','2022-06-10 11:40:04',NULL,NULL),
 (3,1,'EM/EC/003','setmt1','2022-06-10 11:40:12',NULL,NULL);
/*!40000 ALTER TABLE `employef001mb` ENABLE KEYS */;


--
-- Definition of table `employeregistration001mb`
--

DROP TABLE IF EXISTS `employeregistration001mb`;
CREATE TABLE `employeregistration001mb` (
  `registerid` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `domain` varchar(30) NOT NULL,
  `username` varchar(45) NOT NULL,
  `securityquestion` varchar(100) NOT NULL,
  `securityanswer` varchar(45) NOT NULL,
  `message` varchar(200) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`registerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeregistration001mb`
--

/*!40000 ALTER TABLE `employeregistration001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `employeregistration001mb` ENABLE KEYS */;


--
-- Definition of table `employework001wb`
--

DROP TABLE IF EXISTS `employework001wb`;
CREATE TABLE `employework001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `eslno` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `eslno` (`eslno`),
  CONSTRAINT `employework001wb_ibfk_1` FOREIGN KEY (`eslno`) REFERENCES `employe001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employework001wb`
--

/*!40000 ALTER TABLE `employework001wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `employework001wb` ENABLE KEYS */;


--
-- Definition of table `file001mb`
--

DROP TABLE IF EXISTS `file001mb`;
CREATE TABLE `file001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `ftype` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file001mb`
--

/*!40000 ALTER TABLE `file001mb` DISABLE KEYS */;
INSERT INTO `file001mb` (`sl_no`,`unitdepartsl_no`,`ftype`,`status`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'Aathar','Active','setmt1','2022-06-16 17:11:34','setmt1','2022-06-17 19:12:02'),
 (3,1,'ration card','Yes','setmt1','2022-06-17 13:55:49','setmt1','2022-06-17 19:12:07'),
 (4,1,'licenese','No','setmt1','2022-06-17 17:09:06','setmt1','2022-06-17 19:12:09');
/*!40000 ALTER TABLE `file001mb` ENABLE KEYS */;


--
-- Definition of table `filedet001wb`
--

DROP TABLE IF EXISTS `filedet001wb`;
CREATE TABLE `filedet001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `fslno` int(20) NOT NULL,
  `fname` varchar(500) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `fslno` (`fslno`),
  CONSTRAINT `filedet001wb_ibfk_1` FOREIGN KEY (`fslno`) REFERENCES `file001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filedet001wb`
--

/*!40000 ALTER TABLE `filedet001wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `filedet001wb` ENABLE KEYS */;


--
-- Definition of table `filemanager001mb`
--

DROP TABLE IF EXISTS `filemanager001mb`;
CREATE TABLE `filemanager001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `originalfilename` varchar(50) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filemanager001mb`
--

/*!40000 ALTER TABLE `filemanager001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `filemanager001mb` ENABLE KEYS */;


--
-- Definition of table `fireplan001wb`
--

DROP TABLE IF EXISTS `fireplan001wb`;
CREATE TABLE `fireplan001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `fire` varchar(200) NOT NULL,
  `app` varchar(100) NOT NULL,
  `loc` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `date1` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fireplan001wb`
--

/*!40000 ALTER TABLE `fireplan001wb` DISABLE KEYS */;
INSERT INTO `fireplan001wb` (`sl_no`,`unitdepartsl_no`,`fire`,`app`,`loc`,`date`,`date1`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'dfgdsfgsdfg','dfsgsdfgd','sdgfsf','2022-06-01 18:46:58','2022-06-01 18:46:58','siva','2022-06-01 18:47:11',NULL,NULL),
 (2,1,'dasfds','asdf','sadf','2022-06-18 00:00:00','2022-06-15 00:00:00','setmt1','2022-06-14 12:45:26',NULL,NULL);
/*!40000 ALTER TABLE `fireplan001wb` ENABLE KEYS */;


--
-- Definition of table `firstaid001hb`
--

DROP TABLE IF EXISTS `firstaid001hb`;
CREATE TABLE `firstaid001hb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `fabxno` int(50) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `date` datetime DEFAULT NULL,
  `app` varchar(100) NOT NULL,
  `loc` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `firstaid001hb`
--

/*!40000 ALTER TABLE `firstaid001hb` DISABLE KEYS */;
/*!40000 ALTER TABLE `firstaid001hb` ENABLE KEYS */;


--
-- Definition of table `firstaidwb001`
--

DROP TABLE IF EXISTS `firstaidwb001`;
CREATE TABLE `firstaidwb001` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `fabxno` int(50) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `date` datetime DEFAULT NULL,
  `app` varchar(100) NOT NULL,
  `loc` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `firstaidwb001`
--

/*!40000 ALTER TABLE `firstaidwb001` DISABLE KEYS */;
INSERT INTO `firstaidwb001` (`sl_no`,`unitdepartsl_no`,`fabxno`,`mname`,`date`,`app`,`loc`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (2,1,125,'amirthanjan','2022-06-15 00:00:00','india','trichy','setmt1','2022-06-14 16:49:31',NULL,NULL),
 (3,1,126,'vicks','2022-06-16 00:00:00','cough','chennai','setmt1','2022-06-14 17:15:57',NULL,NULL);
/*!40000 ALTER TABLE `firstaidwb001` ENABLE KEYS */;


--
-- Definition of table `fixture001mb`
--

DROP TABLE IF EXISTS `fixture001mb`;
CREATE TABLE `fixture001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `sslno` int(11) NOT NULL,
  `fcode` varchar(50) NOT NULL,
  `fname` varchar(500) NOT NULL,
  `fyear` datetime NOT NULL,
  `fcapacity` varchar(100) NOT NULL,
  `ftype` varchar(100) NOT NULL,
  `fmake` varchar(100) NOT NULL,
  `flocation` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `sslno` (`sslno`),
  CONSTRAINT `fixture001mb_ibfk_1` FOREIGN KEY (`sslno`) REFERENCES `fixturestatus001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fixture001mb`
--

/*!40000 ALTER TABLE `fixture001mb` DISABLE KEYS */;
INSERT INTO `fixture001mb` (`sl_no`,`unitdepartsl_no`,`sslno`,`fcode`,`fname`,`fyear`,`fcapacity`,`ftype`,`fmake`,`flocation`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,'IC0000','asd','2022-08-04 00:00:00','asd','Aathar','asd','aSD','setmt1','2022-08-04 15:40:03',NULL,NULL),
 (2,1,2,'IC0001','asgffddsgghdgsdf','2022-08-04 00:00:00','asd','Aathar','asd','aSD','setmt1','2022-08-04 15:40:16',NULL,NULL),
 (3,1,1,'IC0002','ssdsdsdsss','2022-08-04 00:00:00','asd','asd','asd','SDFG','setmt1','2022-08-04 15:41:17',NULL,NULL);
/*!40000 ALTER TABLE `fixture001mb` ENABLE KEYS */;


--
-- Definition of table `fixturechecklist001mb`
--

DROP TABLE IF EXISTS `fixturechecklist001mb`;
CREATE TABLE `fixturechecklist001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `fcslno` int(11) NOT NULL,
  `fstatus` int(11) NOT NULL,
  `fcheckpoints` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `fcslno` (`fcslno`),
  KEY `fstatus` (`fstatus`),
  CONSTRAINT `fixturechecklist001mb_ibfk_1` FOREIGN KEY (`fcslno`) REFERENCES `fixture001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `fixturechecklist001mb_ibfk_2` FOREIGN KEY (`fstatus`) REFERENCES `fixturestatus001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fixturechecklist001mb`
--

/*!40000 ALTER TABLE `fixturechecklist001mb` DISABLE KEYS */;
INSERT INTO `fixturechecklist001mb` (`sl_no`,`unitdepartsl_no`,`fcslno`,`fstatus`,`fcheckpoints`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,1,'sadf','setmt1','2022-08-04 15:47:14',NULL,NULL),
 (2,1,2,2,'sdf','setmt1','2022-08-04 15:47:21',NULL,NULL),
 (3,1,3,3,'sdf','setmt1','2022-08-04 15:47:26',NULL,NULL);
/*!40000 ALTER TABLE `fixturechecklist001mb` ENABLE KEYS */;


--
-- Definition of table `fixturedailychecklist001wb`
--

DROP TABLE IF EXISTS `fixturedailychecklist001wb`;
CREATE TABLE `fixturedailychecklist001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `mslno` int(11) NOT NULL,
  `cpslno` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `mslno` (`mslno`),
  KEY `cpslno` (`cpslno`),
  CONSTRAINT `fixturedailychecklist001wb_ibfk_1` FOREIGN KEY (`mslno`) REFERENCES `fixture001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `fixturedailychecklist001wb_ibfk_2` FOREIGN KEY (`cpslno`) REFERENCES `fixturechecklist001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fixturedailychecklist001wb`
--

/*!40000 ALTER TABLE `fixturedailychecklist001wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `fixturedailychecklist001wb` ENABLE KEYS */;


--
-- Definition of table `fixturepreventiveaction001mb`
--

DROP TABLE IF EXISTS `fixturepreventiveaction001mb`;
CREATE TABLE `fixturepreventiveaction001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `sslno` int(11) NOT NULL,
  `rcslno` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `details` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `sslno` (`sslno`),
  CONSTRAINT `fixturepreventiveaction001mb_ibfk_1` FOREIGN KEY (`sslno`) REFERENCES `fixturestatus001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fixturepreventiveaction001mb`
--

/*!40000 ALTER TABLE `fixturepreventiveaction001mb` DISABLE KEYS */;
INSERT INTO `fixturepreventiveaction001mb` (`sl_no`,`unitdepartsl_no`,`sslno`,`rcslno`,`name`,`details`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,1,'sdf','sdf','setmt1','2022-08-04 16:03:10',NULL,NULL),
 (2,1,2,2,'sdf','asdf','setmt1','2022-08-04 16:03:17',NULL,NULL);
/*!40000 ALTER TABLE `fixturepreventiveaction001mb` ENABLE KEYS */;


--
-- Definition of table `fixturepreventivechecklist001wb`
--

DROP TABLE IF EXISTS `fixturepreventivechecklist001wb`;
CREATE TABLE `fixturepreventivechecklist001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `mslno` int(11) NOT NULL,
  `cpslno` int(11) NOT NULL,
  `checkpointdate` datetime NOT NULL,
  `observation` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `mslno` (`mslno`),
  KEY `cpslno` (`cpslno`),
  CONSTRAINT `fixturepreventivechecklist001wb_ibfk_1` FOREIGN KEY (`mslno`) REFERENCES `fixture001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `fixturepreventivechecklist001wb_ibfk_2` FOREIGN KEY (`cpslno`) REFERENCES `fixturechecklist001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fixturepreventivechecklist001wb`
--

/*!40000 ALTER TABLE `fixturepreventivechecklist001wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `fixturepreventivechecklist001wb` ENABLE KEYS */;


--
-- Definition of table `fixturepreventiveplan001wb`
--

DROP TABLE IF EXISTS `fixturepreventiveplan001wb`;
CREATE TABLE `fixturepreventiveplan001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `mslno` int(11) NOT NULL,
  `status` char(1) NOT NULL,
  `date` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `mslno` (`mslno`),
  CONSTRAINT `fixturepreventiveplan001wb_ibfk_1` FOREIGN KEY (`mslno`) REFERENCES `machine001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fixturepreventiveplan001wb`
--

/*!40000 ALTER TABLE `fixturepreventiveplan001wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `fixturepreventiveplan001wb` ENABLE KEYS */;


--
-- Definition of table `fixturerootcause001mb`
--

DROP TABLE IF EXISTS `fixturerootcause001mb`;
CREATE TABLE `fixturerootcause001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `sslno` int(11) NOT NULL,
  `fbrslno` int(11) NOT NULL,
  `fname` varchar(250) NOT NULL,
  `fdetails` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `sslno` (`sslno`),
  CONSTRAINT `fixturerootcause001mb_ibfk_1` FOREIGN KEY (`sslno`) REFERENCES `fixturestatus001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fixturerootcause001mb`
--

/*!40000 ALTER TABLE `fixturerootcause001mb` DISABLE KEYS */;
INSERT INTO `fixturerootcause001mb` (`sl_no`,`unitdepartsl_no`,`sslno`,`fbrslno`,`fname`,`fdetails`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,1,'sdf','sdf','setmt1','2022-08-04 16:02:38',NULL,NULL),
 (2,1,2,1,'sdf','sdf','setmt1','2022-08-04 16:02:48',NULL,NULL);
/*!40000 ALTER TABLE `fixturerootcause001mb` ENABLE KEYS */;


--
-- Definition of table `fixturespares001mb`
--

DROP TABLE IF EXISTS `fixturespares001mb`;
CREATE TABLE `fixturespares001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `msslno` int(11) NOT NULL,
  `sslno` int(11) NOT NULL,
  `fspares` varchar(50) NOT NULL,
  `fsparescost` int(11) DEFAULT NULL,
  `fspecification` varchar(50) NOT NULL,
  `fleadtime` datetime DEFAULT NULL,
  `fminimumstocklevel` int(11) DEFAULT '0',
  `freorderlevel` int(11) DEFAULT '0',
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `msslno` (`msslno`),
  KEY `sslno` (`sslno`),
  CONSTRAINT `fixturespares001mb_ibfk_1` FOREIGN KEY (`msslno`) REFERENCES `fixture001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `fixturespares001mb_ibfk_2` FOREIGN KEY (`sslno`) REFERENCES `fixturestatus001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fixturespares001mb`
--

/*!40000 ALTER TABLE `fixturespares001mb` DISABLE KEYS */;
INSERT INTO `fixturespares001mb` (`sl_no`,`unitdepartsl_no`,`msslno`,`sslno`,`fspares`,`fsparescost`,`fspecification`,`fleadtime`,`fminimumstocklevel`,`freorderlevel`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,1,'sd',9,'sdf','2022-08-04 00:00:00',8,10,'setmt1','2022-08-04 15:45:27',NULL,NULL),
 (2,1,2,2,'adsf',9,'sdaf','2022-08-04 00:00:00',12,14,'setmt1','2022-08-04 15:45:47',NULL,NULL);
/*!40000 ALTER TABLE `fixturespares001mb` ENABLE KEYS */;


--
-- Definition of table `fixturestatus001mb`
--

DROP TABLE IF EXISTS `fixturestatus001mb`;
CREATE TABLE `fixturestatus001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `code_group` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` char(100) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fixturestatus001mb`
--

/*!40000 ALTER TABLE `fixturestatus001mb` DISABLE KEYS */;
INSERT INTO `fixturestatus001mb` (`sl_no`,`unitdepartsl_no`,`code_group`,`name`,`status`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,'active','active','setmt1','2022-08-04 15:32:36','setmt1','2022-08-04 15:33:12'),
 (2,1,2,'Approved','PA','setmt1','2022-08-04 15:32:48',NULL,NULL),
 (3,1,2,'Partially Approved','PA','setmt1','2022-08-04 15:32:57',NULL,NULL);
/*!40000 ALTER TABLE `fixturestatus001mb` ENABLE KEYS */;


--
-- Definition of table `item001mb`
--

DROP TABLE IF EXISTS `item001mb`;
CREATE TABLE `item001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `itemcode` varchar(250) NOT NULL,
  `itemname` varchar(250) NOT NULL,
  `descrip` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item001mb`
--

/*!40000 ALTER TABLE `item001mb` DISABLE KEYS */;
INSERT INTO `item001mb` (`sl_no`,`unitdepartsl_no`,`itemcode`,`itemname`,`descrip`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'123456','Paint','Interier','siva','2022-06-28 11:52:21',NULL,NULL),
 (2,1,'12345','cloth','waste','siva','2022-06-28 11:52:41','siva','2022-06-28 11:54:34');
/*!40000 ALTER TABLE `item001mb` ENABLE KEYS */;


--
-- Definition of table `legal001hb`
--

DROP TABLE IF EXISTS `legal001hb`;
CREATE TABLE `legal001hb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `cslno` int(11) NOT NULL,
  `fslno` int(11) NOT NULL,
  `cno` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `date1` datetime NOT NULL,
  `filename` varchar(200) NOT NULL,
  `filepath` varchar(50) NOT NULL,
  `originalfilename` varchar(50) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `cslno` (`cslno`),
  KEY `fslno` (`fslno`),
  CONSTRAINT `legal001hb_ibfk_1` FOREIGN KEY (`cslno`) REFERENCES `legal001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `legal001hb_ibfk_2` FOREIGN KEY (`fslno`) REFERENCES `file001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `legal001hb`
--

/*!40000 ALTER TABLE `legal001hb` DISABLE KEYS */;
/*!40000 ALTER TABLE `legal001hb` ENABLE KEYS */;


--
-- Definition of table `legal001mb`
--

DROP TABLE IF EXISTS `legal001mb`;
CREATE TABLE `legal001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `dname` varchar(200) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `legal001mb`
--

/*!40000 ALTER TABLE `legal001mb` DISABLE KEYS */;
INSERT INTO `legal001mb` (`sl_no`,`unitdepartsl_no`,`dname`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (9,1,'Trims','setmt1','2022-06-22 16:59:56',NULL,NULL),
 (11,1,'Naresh','setmt1','2022-06-22 18:24:45',NULL,NULL);
/*!40000 ALTER TABLE `legal001mb` ENABLE KEYS */;


--
-- Definition of table `legal001wb`
--

DROP TABLE IF EXISTS `legal001wb`;
CREATE TABLE `legal001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `cslno` int(11) NOT NULL,
  `fslno` int(11) NOT NULL,
  `cno` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `date1` datetime NOT NULL,
  `filename` varchar(200) NOT NULL,
  `filepath` varchar(50) NOT NULL,
  `originalfilename` varchar(50) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `cslno` (`cslno`),
  KEY `fslno` (`fslno`),
  CONSTRAINT `legal001wb_ibfk_1` FOREIGN KEY (`cslno`) REFERENCES `legal001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `legal001wb_ibfk_2` FOREIGN KEY (`fslno`) REFERENCES `file001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `legal001wb`
--

/*!40000 ALTER TABLE `legal001wb` DISABLE KEYS */;
INSERT INTO `legal001wb` (`sl_no`,`unitdepartsl_no`,`cslno`,`fslno`,`cno`,`date`,`date1`,`filename`,`filepath`,`originalfilename`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (10,1,9,3,12345,'2022-06-22 00:00:00','2022-06-22 00:00:00','testfile.docx','undefined','1655897421997_testfile.docx','setmt1','2022-06-22 17:00:21','undefined','2022-06-22 17:00:21'),
 (11,1,9,1,123456,'2022-06-22 00:00:00','2022-06-22 00:00:00','sivan.jpg','undefined','1655897449122_sivan.jpg','setmt1','2022-06-22 17:00:49','undefined','2022-06-22 17:00:49'),
 (12,1,9,4,123456,'2022-06-22 00:00:00','2022-06-22 00:00:00','testfile.docx','undefined','1655897535219_testfile.docx','setmt1','2022-06-22 17:02:15','undefined','2022-06-22 17:02:15'),
 (14,1,11,3,123456,'2022-06-23 00:00:00','2022-06-23 00:00:00','naresh.jpg','undefined','1655902513379_naresh.jpg','setmt1','2022-06-22 18:25:13','undefined','2022-06-22 18:25:13'),
 (15,1,9,1,123456,'2022-06-23 00:00:00','2022-06-23 00:00:00','sivan.jpg','undefined','1655960498388_sivan.jpg','setmt1','2022-06-23 10:31:38','undefined','2022-06-23 10:31:38'),
 (16,1,9,3,66,'2022-08-11 00:00:00','2022-08-15 00:00:00','supplierQuotation (6).xlsx','undefined','1660193772863_supplierQuotation (6).xlsx','setmt1','2022-08-11 10:26:12','undefined','2022-08-11 10:26:12');
/*!40000 ALTER TABLE `legal001wb` ENABLE KEYS */;


--
-- Definition of table `login001mb`
--

DROP TABLE IF EXISTS `login001mb`;
CREATE TABLE `login001mb` (
  `loginid` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `domain` varchar(30) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(60) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `securityanswer` varchar(45) NOT NULL,
  `message` varchar(200) DEFAULT NULL,
  `securityquestion` varchar(100) NOT NULL,
  `status` varchar(45) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `theme` varchar(10) DEFAULT '#286090',
  PRIMARY KEY (`loginid`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login001mb`
--

/*!40000 ALTER TABLE `login001mb` DISABLE KEYS */;
INSERT INTO `login001mb` (`loginid`,`unitdepartsl_no`,`firstname`,`lastname`,`domain`,`username`,`password`,`enabled`,`securityanswer`,`message`,`securityquestion`,`status`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`,`theme`) VALUES 
 (6,1,'sivakumar','karunamoorthy','Manufacturing','siva','$2b$10$8xe6b3pcuGvl0jNRxzJlVeetMM96.Y.p4jqEceYHbPnkkVTUYIIGa',0,'tiger123','testing','','A','insertUser','2021-10-20 12:08:13',NULL,NULL,'#1f812c'),
 (7,1,'kannan','mathiyalagan','Manufacturing','kannan','$2a$11$2N69AGoLLDfv0p1Hgrx3YeAw/d7phkAXdXMsyH539L9jaQmOFxUV6',0,'testing123','testing','','','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (8,1,'karya Tech','karya Tech','Manufacturing','karya','$2a$11$IRaX57IBLbMiRpxvd/PYpuqfGGemBg7e4kNKNfpNhPMMMWANi3NYS',0,'testing123','testing','','','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (43,1,'girija','kumari','School','girija','$2a$11$WL.BLgqXSmaLZ/DmGxKffuuZxOT8xWfgUnG6wDItnn8BKRVydxq8C',0,'testing123456','testing456','','','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (44,1,'naresh','naresh','Buying House','naresh','$2a$11$Il8WVsibPf8nHuGYplrimuf/uerDdSYIIk4sGZr05BwhvoFjOo.j.',0,'testing123','testing123','','','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (45,1,'Iswarya','ravikumar','Calibration Labs','iswarya','$2a$11$p59HJTAlHslvqWSIBFG/Pu7yWveJkNjUdyYzCxJWZXRvgDV2l8KJm',0,'testing','test','','','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (46,1,'fgh','dfh','Manufacturing','sss','',1,'s',NULL,'What was your childhood nickname ?','','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (47,1,'tamil','k','Buying House','tamil K','',1,'hhhh',NULL,'What is the name of your favorite childhood friend ?','','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (48,1,'`uyuruyiy8','sdjfhsjkhfjkj','Manufacturing','etdtdd','',1,'fjhsjshg',NULL,'What was your childhood nickname ?','','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (49,1,'sss','sss','Construction','tamil','',1,'ee',NULL,'What was your childhood nickname ?','','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (50,1,'abc','cde','Buying House','raj','',1,'aaa',NULL,'In what city did you meet your spouse/significant other ?','','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (51,1,'selvam S','R','Manufacturing','selvamRaja','$2b$10$CtGEDPZAAxR9eWib0dqsRO4lHAb0yQUAtGlBF0YjQyFqRmmgeWTx.',1,'dfg',NULL,'In what city did you meet your spouse/significant other ?','Authorization','','0000-00-00 00:00:00',NULL,NULL,'#286090'),
 (52,1,'latha','b','Manufacturing','latha','$2b$10$90JZq12mqexGDS7qrQluDeyKXdPwnje9cEIINhgJ2j9hxtWOZ3lru',1,'vb',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-03 09:48:21',NULL,NULL,'#286090'),
 (53,1,'latha','b','Manufacturing','latha','$2b$10$0vlJ8K0NCepUhCWnd7ECnOCWzNYJQqAiI1R81GPTaqlZg.fN5kinu',1,'vb',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-03 10:00:56',NULL,NULL,'#286090'),
 (54,1,'tamil','r','Manufacturing','tamil','$2b$10$NhhJO08gNEhdHrfsgPLs7ucP5d1DmfzspS8nUiIdt6OX.aNYHMmG6',1,'fdg',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-03 10:14:27',NULL,NULL,'#286090'),
 (55,1,'selvam','R','Construction','selvam','$2b$10$2atxpqU3FRjN5bLA7B.wHeNZ8ZBwXHWRRnfASs3NgBaM5cymqTNW6',1,'dfg',NULL,'What is the name of your favorite childhood friend ?','Pending','insertuser','2021-09-03 10:20:00',NULL,NULL,'#286090'),
 (56,1,'sam','R','Manufacturing','sam','$2b$10$3VFMObQ7Z8xCR2Q2bbNlAeSYAsHxkZQjVoZI/gbZ0POVicxqpiD4y',1,'ljml',NULL,'What was your childhood nickname ?','Pending','insertuser','2021-09-03 10:21:30',NULL,NULL,'#286090'),
 (57,1,'tamil','r','Buying House','tamil','$2b$10$o1MzCzF..d3NOHvxnJxs1OitaX1yQ09sShgf6zuEQHNMjh2VyZg4G',1,'fbd',NULL,'In what city did you meet your spouse/significant other ?','In Progress','insertuser','2021-09-03 10:36:59',NULL,NULL,'#286090'),
 (58,1,'tamil','R','Manufacturing','tamil','$2b$10$Q/nw./4r.IkHsUHzAO/H3OLTw2z8OXm6hs.kiNVFt1dETnYKWJWuC',1,'dsf',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-03 10:50:16',NULL,NULL,'#286090'),
 (59,1,'klh','K','Manufacturing','hl','$2b$10$lQLcLSugTv7VC7aOdTnZNesuPhS9tHOIJiMBXd04iaDc2yUQ8r9Du',1,'gfh',NULL,'In what city did you meet your spouse/significant other ?','In Progress','insertuser','2021-09-03 10:54:32',NULL,NULL,'#286090'),
 (60,1,'latha','B','Buying House','latha','$2b$10$WXp9x2KZaSirsj7goZqhC.15ZOXrgswwqRTPxj3igvqeB3DwaVycS',1,'fvb',NULL,'What street did you live on in third grade ?','In Progress','insertuser','2021-09-03 11:00:20',NULL,NULL,'#286090'),
 (61,1,'latha','B','Manufacturing','latha','$2b$10$op4Zbo4ldsyytOc6H87QMeXyQcj8t0Ysz9Vxf60bWSG34S34fZrIK',1,'ghn',NULL,'What is your oldest sibling\'s middle name ?','New','insertuser','2021-09-03 11:12:07',NULL,NULL,'#286090'),
 (62,1,'aaa','s','Calibration Labs','aaa','$2b$10$HoYS9eXdJVN7OvTd9/At.OX/ZBohlPZlnpNEcinXf0PLLU1.VI0.2',1,'dfs',NULL,'What school did you attend for sixth grade ?','New','insertuser','2021-09-03 11:19:04',NULL,NULL,'#286090'),
 (63,1,'latha','B','Construction','latha','$2b$10$AQav7CdSoLBIfotJZomUVuBoP6tJXY1Ffxa0CqASvrreWOFzeoc6O',1,'dfb',NULL,'What was your childhood nickname ?','New','insertuser','2021-09-03 11:20:13',NULL,NULL,'#286090'),
 (64,1,'fff','s','Construction','fff','$2b$10$pB0grwAGWaPdhG7afEdVGuy1eTnh9unSbsZbyvm7UUfO38dovU15e',1,'sss',NULL,'What is the name of your favorite childhood friend ?','In Progress','insertuser','2021-09-03 11:46:35','updateuser','2021-09-03 11:46:54','#286090'),
 (65,1,'rizwana','s','Manufacturing','rizwana','$2b$10$0PkcfmeJfeUAqoNSawdiq.3mAldU8eWN0CM3MfVL/RVwumpduo0H6',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:18:33',NULL,NULL,'#a97676ff'),
 (66,1,'rizwana','s','Manufacturing','rizwana','$2b$10$otsOkYluUydzKckzfHO1C.UTRAXrft2w4wowpBH8bLyPkMhmhlX36',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:19:15',NULL,NULL,'#286090'),
 (67,1,'rizwana','s','Manufacturing','rizwana','$2b$10$JJB2RQEN2G2lDxpgXPpnTeoumUy.RSgfD3e3TMfhkliI.zlSakwmq',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:19:28',NULL,NULL,'#286090'),
 (68,1,'rizwana','s','Manufacturing','rizwana','$2b$10$CfzP75hE1zphBU4fmldvZeetYoPdKSN3ExYgAqOmRFTEMVrHFGTD6',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:19:28',NULL,NULL,'#286090'),
 (69,1,'rizwana','s','Manufacturing','rizwana','$2b$10$v7TicAN1fYmHJt5qTuvm4edbMcnUmnLo4mq8e8/IR19FNslEK3tey',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:19:28',NULL,NULL,'#286090'),
 (70,1,'rizwana','s','Manufacturing','rizwana','$2b$10$bKpv7nLVfbKUm6UIcU2wq.aGUt5Lj47MXviUrP0eAFg64OoB0Zrxy',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:19:54',NULL,NULL,'#286090'),
 (71,1,'rizwana','s','Manufacturing','rizwana','$2b$10$1mHT42tTp2BCU0j.G6kaxeZv2s9Tpm.lhRhjMmx90oKziDdcw/gde',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:19:54',NULL,NULL,'#286090'),
 (72,1,'rizwana','s','Manufacturing','rizwana','$2b$10$.qfjTO4Nm8Q/gCvmQ3dR2eLGmLqTYmSv7YFfHvx/EppeWzikYBz8e',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:20:32',NULL,NULL,'#286090'),
 (73,1,'rizwana','s','Manufacturing','rizwana','$2b$10$EpK/5WPkw44i91mGmArChea9ZUAD/Te.AeEN6Q2QQrQt3qnV.r35G',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:21:41',NULL,NULL,'#286090'),
 (74,1,'rizwana','s','Manufacturing','rizwana','$2b$10$PMNrFoXl86yk1yqnUP3Qv.0bc5dGEWdmvLZRev7Elc0te0dA/y0oq',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:21:42',NULL,NULL,'#286090'),
 (75,1,'rizwana','s','Manufacturing','rizwana','$2b$10$f2yoB/m.al5kX8vGSsjmDOTfuXaopZJpHNca7B8LfX0l5NsUFpAru',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:21:53',NULL,NULL,'#286090'),
 (76,1,'rizwana','s','Manufacturing','rizwana','$2b$10$..JJUDhnLPCrVp6EBnN0zOx3rRQtrKmzHC..JK3mvX.F5JTsBv.FO',1,'ss',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:21:53',NULL,NULL,'#286090'),
 (77,1,'rizwana','Shahul Hameed','Manufacturing','rizwana','$2b$10$yAvFwaa.TX/HAXFt.oZBcO.slw3VeGy/Tm7Pnlj7kkv/NWgps1EG2',1,'SS',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:25:01',NULL,NULL,'#286090'),
 (78,1,'rizwana','Shahul Hameed','Manufacturing','rizwana','$2b$10$prN4ZVYIrXmf4u4EguISBuG0CMZ.MdIlHaswD9yGZhPfz.2cq6NSy',1,'SS',NULL,'What was your childhood nickname ?','In Progress','insertuser','2021-09-06 13:25:17',NULL,NULL,'#286090'),
 (79,1,'chandrasekaran','L','Manufacturing','sekar','$2b$10$75cJf6a/t2pA3s3QLf7lSupbJayScpYGbMpZPonEb436AW5zPJI9O',1,'chandru',NULL,'What was your childhood nickname ?','A','insertUser','2021-12-31 10:36:29',NULL,NULL,'#3a38c3'),
 (80,1,'Aravinth','A','Manufacturing','Aravinth','$2b$10$hc.SaA.lB1Aor2LgYT/EOuPNsc56.UgqSipget5DtCnt5Y0y8Vrwq',1,'kaka',NULL,'What was your childhood nickname ?','In Progress','sekar','2021-12-23 12:02:13','Aravinth','2021-12-23 12:27:46','#286090'),
 (81,1,'Moorthy','P','Manufacturing','moorthy','$2b$10$5xTtAIJc9qirevcs/CgwPu6RHvGmQCo7SHf53SlACbfKgp7jtqLOu',1,'aravinth',NULL,'What is the name of your favorite childhood friend ?','In Progress','Aravinth','2021-12-23 12:32:25',NULL,NULL,'#286090');
/*!40000 ALTER TABLE `login001mb` ENABLE KEYS */;


--
-- Definition of table `machine001mb`
--

DROP TABLE IF EXISTS `machine001mb`;
CREATE TABLE `machine001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `sslno` int(11) NOT NULL,
  `mcode` varchar(50) NOT NULL,
  `mname` varchar(500) NOT NULL,
  `year` datetime NOT NULL,
  `capacity` varchar(100) NOT NULL,
  `mtype` varchar(100) NOT NULL,
  `make` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `sslno` (`sslno`),
  CONSTRAINT `machine001mb_ibfk_1` FOREIGN KEY (`sslno`) REFERENCES `status001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `machine001mb`
--

/*!40000 ALTER TABLE `machine001mb` DISABLE KEYS */;
INSERT INTO `machine001mb` (`sl_no`,`unitdepartsl_no`,`sslno`,`mcode`,`mname`,`year`,`capacity`,`mtype`,`make`,`location`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,'TS/MC/01','LATHE MACHINE','2021-09-06 13:18:33','5LTR','10mm','Nokia','Shop Floor','Moorthy','2021-09-06 13:18:33','siva','2022-05-19 18:43:03'),
 (2,1,2,'TS/MC/02','JIG BORING MACHINE','2021-09-06 13:18:33','5LTR','10mm','Nokia','Shop Floor','Moorthy','2021-09-06 13:18:33','aravind','2021-09-06 13:18:33'),
 (3,1,1,'TS/MC/03','BENCH GRINDING MACHINE','2021-01-09 05:30:00','20LTR','300CM','KOREAN','GROUND-FLOOR','Aravinth','2022-01-04 16:03:50','Aravinth','2022-01-04 16:06:49'),
 (4,1,1,'TS/MC/4','BENCH GRINDING MACHINE','2021-01-09 05:30:00','10LTR','300CM','KOREAN','GROUND-FLOOR','Aravinth','2022-01-04 16:07:17',NULL,NULL),
 (5,1,1,'TS/MC/5','CNC','2021-01-09 05:30:00','20LTR','300CM','KOREAN','GROUND-FLOOR','Aravinth','2022-01-04 16:09:16',NULL,NULL),
 (6,1,1,'TS/MC/6','BENCH GRINDING MACHINE','2021-01-09 05:30:00','10LTR','300CM','KOREAN','GROUND-FLOOR','Aravinth','2022-01-04 16:12:31',NULL,NULL),
 (7,1,5,'TS/MC/3','JIG BORING MACHINE','2021-01-09 05:30:00','20LTR','300CM','KOREAN','GROUND-FLOOR','Aravinth','2022-01-04 16:14:59','siva','2022-05-20 17:21:49'),
 (8,1,7,'TS/MC/3','JIG BORING MACHINE','2021-01-09 05:30:00','20LTR','300CM','KOREAN','GROUND-FLOOR','Aravinth','2022-01-04 16:22:31','Aravinth','2022-01-04 17:39:31'),
 (9,1,1,'TS/MC/9','lathe','2021-12-28 05:30:00','15','10mm','nokia','first floor','latha','2022-01-05 11:56:37','latha','2022-01-05 11:59:11'),
 (11,1,1,'TS/MC/10','jig boring','2021-01-01 00:00:00','5','10mm','nokia','first floor','latha','2022-01-05 11:59:37','setmt1','2022-07-27 15:19:04'),
 (12,4,1,'TS/MC/1000','LATHE MACHINE','2022-01-01 00:00:00','5LTR','23','nokia','trichy','sekarL','2022-08-19 15:08:58',NULL,NULL);
/*!40000 ALTER TABLE `machine001mb` ENABLE KEYS */;


--
-- Definition of table `machine001wb`
--

DROP TABLE IF EXISTS `machine001wb`;
CREATE TABLE `machine001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `mslno` int(11) NOT NULL,
  `status` char(1) NOT NULL,
  `date` datetime NOT NULL,
  `cpslno` int(11) NOT NULL,
  `checkpointdate` datetime NOT NULL,
  `observation` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `mslno` (`mslno`),
  KEY `cpslno` (`cpslno`),
  CONSTRAINT `machine001wb_ibfk_1` FOREIGN KEY (`mslno`) REFERENCES `machine001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `machine001wb_ibfk_2` FOREIGN KEY (`cpslno`) REFERENCES `checklist001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `machine001wb`
--

/*!40000 ALTER TABLE `machine001wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `machine001wb` ENABLE KEYS */;


--
-- Definition of table `materialinspection001wb`
--

DROP TABLE IF EXISTS `materialinspection001wb`;
CREATE TABLE `materialinspection001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `iirno` varchar(250) NOT NULL,
  `cdate` datetime DEFAULT NULL,
  `scname` varchar(250) NOT NULL,
  `dcno` varchar(250) NOT NULL,
  `refno` varchar(250) NOT NULL,
  `pdate` datetime DEFAULT NULL,
  `cponumber` varchar(250) NOT NULL,
  `sponumber` varchar(250) NOT NULL,
  `grnumber` varchar(150) NOT NULL,
  `remark` varchar(150) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materialinspection001wb`
--

/*!40000 ALTER TABLE `materialinspection001wb` DISABLE KEYS */;
INSERT INTO `materialinspection001wb` (`sl_no`,`unitdepartsl_no`,`iirno`,`cdate`,`scname`,`dcno`,`refno`,`pdate`,`cponumber`,`sponumber`,`grnumber`,`remark`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'IIR/2207/0001',NULL,'ssss','11','aaa','2022-08-22 00:00:00','aaa','aa','4','aa','setmt1','2022-08-22 16:34:17',NULL,NULL),
 (2,1,'IIR/2207/0001',NULL,'aa','ss','22','2022-08-22 00:00:00','asd','sad','3','asd','setmt1','2022-08-22 16:36:24',NULL,NULL),
 (3,1,'IIR/2207/0002',NULL,'sd','sd','sd','2022-08-22 00:00:00','asdasd','sadf','1','asdf','setmt1','2022-08-22 16:38:43',NULL,NULL),
 (4,1,'IIR/2207/0003',NULL,'ds','asd','asdf','2022-08-22 00:00:00','asfd','asdf','2','asdf','setmt1','2022-08-22 16:43:34',NULL,NULL),
 (5,1,'IIR/2207/0004',NULL,'sfd','asdf','sd','2022-08-22 00:00:00','asd','asd','4','asdf','setmt1','2022-08-22 16:56:24',NULL,NULL);
/*!40000 ALTER TABLE `materialinspection001wb` ENABLE KEYS */;


--
-- Definition of table `materialinward001wb`
--

DROP TABLE IF EXISTS `materialinward001wb`;
CREATE TABLE `materialinward001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `purchse_slno` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `dc_no` varchar(30) NOT NULL,
  `invoiceno` varchar(100) NOT NULL,
  `dc_date` datetime NOT NULL,
  `supliername` varchar(100) NOT NULL,
  `grn` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `purchse_slno` (`purchse_slno`),
  CONSTRAINT `materialinward001wb_ibfk_1` FOREIGN KEY (`purchse_slno`) REFERENCES `purchaseorder001wb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materialinward001wb`
--

/*!40000 ALTER TABLE `materialinward001wb` DISABLE KEYS */;
INSERT INTO `materialinward001wb` (`sl_no`,`unitdepartsl_no`,`purchse_slno`,`date`,`dc_no`,`invoiceno`,`dc_date`,`supliername`,`grn`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`,`status`,`remarks`) VALUES 
 (1,1,1,'2022-08-14 11:19:14','1','1','2022-08-14 11:19:14','chnnaisilks','GRN22JN0001','setmt1','2022-08-14 11:20:57',NULL,NULL,NULL,NULL),
 (2,1,2,'2022-08-15 00:00:00','2','2','2022-08-14 11:19:14','pothis','GRN22JN0001','setmt1','2022-08-14 11:21:45',NULL,NULL,NULL,NULL),
 (3,1,3,'2022-08-14 11:19:14','3','3','2022-08-14 11:19:14','sraths','GRN22JN0002','setmt1','2022-08-14 11:24:22',NULL,NULL,NULL,NULL),
 (4,1,4,'2022-08-14 11:19:14','4','4','2022-08-14 11:19:14','Mangal','GRN22JN0003','setmt1','2022-08-14 11:25:18',NULL,'2022-08-18 15:11:15','Approved','ok');
/*!40000 ALTER TABLE `materialinward001wb` ENABLE KEYS */;


--
-- Definition of table `materialreceiveditem001wb`
--

DROP TABLE IF EXISTS `materialreceiveditem001wb`;
CREATE TABLE `materialreceiveditem001wb` (
  `sl_no` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `material_slno` int(11) DEFAULT NULL,
  `itemcode` int(11) DEFAULT NULL,
  `itemname` varchar(250) DEFAULT NULL,
  `descrip` varchar(250) DEFAULT NULL,
  `qunty` varchar(250) DEFAULT NULL,
  `unitrate` varchar(250) DEFAULT NULL,
  `totalamount` int(50) DEFAULT NULL,
  `received_qty` int(30) DEFAULT NULL,
  `accepted_qty` int(30) DEFAULT NULL,
  `rejected_qty` int(30) DEFAULT NULL,
  `outstanding` int(30) DEFAULT NULL,
  `cucode` int(11) DEFAULT NULL,
  `cuname` varchar(250) DEFAULT NULL,
  `cudescrip` varchar(250) DEFAULT NULL,
  `cuqunty` varchar(250) DEFAULT NULL,
  `cunitrate` varchar(250) DEFAULT NULL,
  `cutotalamount` int(50) DEFAULT NULL,
  `cureceived_qty` int(30) DEFAULT NULL,
  `cuaccepted_qty` int(30) DEFAULT NULL,
  `curejected_qty` int(30) DEFAULT NULL,
  `cuoutstanding` int(30) DEFAULT NULL,
  `cptcode` int(11) DEFAULT NULL,
  `cptname` varchar(250) DEFAULT NULL,
  `cptdescrip` varchar(250) DEFAULT NULL,
  `cptqunty` varchar(250) DEFAULT NULL,
  `cptunitrate` varchar(250) DEFAULT NULL,
  `cpttotalamount` int(50) DEFAULT NULL,
  `cptreceived_qty` int(30) DEFAULT NULL,
  `cptaccepted_qty` int(30) DEFAULT NULL,
  `cptrejected_qty` int(30) DEFAULT NULL,
  `cptoutstanding` int(30) DEFAULT NULL,
  `prtcode` int(11) DEFAULT NULL,
  `prtmname` varchar(250) DEFAULT NULL,
  `prtdescrip` varchar(250) DEFAULT NULL,
  `prtqunty` varchar(250) DEFAULT NULL,
  `prtunitrate` varchar(250) DEFAULT NULL,
  `prttotalamount` int(50) DEFAULT NULL,
  `prtreceived_qty` int(30) DEFAULT NULL,
  `prtaccepted_qty` int(30) DEFAULT NULL,
  `prtrejected_qty` int(30) DEFAULT NULL,
  `prtoutstanding` int(30) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `material_slno` (`material_slno`),
  CONSTRAINT `materialreceiveditem001wb_ibfk_1` FOREIGN KEY (`material_slno`) REFERENCES `materialinward001wb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materialreceiveditem001wb`
--

/*!40000 ALTER TABLE `materialreceiveditem001wb` DISABLE KEYS */;
INSERT INTO `materialreceiveditem001wb` (`sl_no`,`unitdepartsl_no`,`material_slno`,`itemcode`,`itemname`,`descrip`,`qunty`,`unitrate`,`totalamount`,`received_qty`,`accepted_qty`,`rejected_qty`,`outstanding`,`cucode`,`cuname`,`cudescrip`,`cuqunty`,`cunitrate`,`cutotalamount`,`cureceived_qty`,`cuaccepted_qty`,`curejected_qty`,`cuoutstanding`,`cptcode`,`cptname`,`cptdescrip`,`cptqunty`,`cptunitrate`,`cpttotalamount`,`cptreceived_qty`,`cptaccepted_qty`,`cptrejected_qty`,`cptoutstanding`,`prtcode`,`prtmname`,`prtdescrip`,`prtqunty`,`prtunitrate`,`prttotalamount`,`prtreceived_qty`,`prtaccepted_qty`,`prtrejected_qty`,`prtoutstanding`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,NULL,'','','','',NULL,0,0,0,0,NULL,'','','','',NULL,0,0,0,0,NULL,'','','','',NULL,0,0,0,0,1,'paint','red','4','100',400,3,1,2,3,'setmt1','2022-08-14 11:20:57',NULL,NULL),
 (2,1,1,NULL,'','','','',NULL,0,0,0,0,NULL,'','','','',NULL,0,0,0,0,NULL,'','','','',NULL,0,0,0,0,2,'cloth','waste','5','200',1000,2,1,1,4,'setmt1','2022-08-14 11:20:57',NULL,NULL),
 (3,1,1,NULL,'','','','',NULL,0,0,0,0,NULL,'','','','',NULL,0,0,0,0,NULL,'','','','',NULL,0,0,0,0,3,'steel','rod','6','300',1800,4,2,2,4,'setmt1','2022-08-14 11:20:57',NULL,NULL),
 (4,1,2,NULL,'','','','',NULL,0,0,0,0,NULL,'','','','',NULL,0,0,0,0,1,'paint','red','4','100',400,3,2,1,2,NULL,'','','','',NULL,0,0,0,0,'setmt1','2022-08-14 11:21:45',NULL,NULL),
 (5,1,2,NULL,'','','','',NULL,0,0,0,0,NULL,'','','','',NULL,0,0,0,0,2,'steel','rod','5','200',1000,4,2,2,3,NULL,'','','','',NULL,0,0,0,0,'setmt1','2022-08-14 11:21:45',NULL,NULL),
 (6,1,2,NULL,'','','','',NULL,0,0,0,0,NULL,'','','','',NULL,0,0,0,0,3,'cloth','waste','5','300',1500,4,3,1,2,NULL,'','','','',NULL,0,0,0,0,'setmt1','2022-08-14 11:21:45',NULL,NULL),
 (7,1,3,1,'paint','red','5','100',500,4,2,2,3,NULL,'','','','',NULL,0,0,0,0,NULL,'','','','',NULL,0,0,0,0,NULL,'','','','',NULL,0,0,0,0,'setmt1','2022-08-14 11:24:22',NULL,NULL),
 (8,1,3,2,'steel','rod','2','200',400,2,1,1,1,NULL,'','','','',NULL,0,0,0,0,NULL,'','','','',NULL,0,0,0,0,NULL,'','','','',NULL,0,0,0,0,'setmt1','2022-08-14 11:24:22',NULL,NULL),
 (9,1,3,3,'paint','blue','3','300',900,3,2,1,1,NULL,'','','','',NULL,0,0,0,0,NULL,'','','','',NULL,0,0,0,0,NULL,'','','','',NULL,0,0,0,0,'setmt1','2022-08-14 11:24:22',NULL,NULL),
 (10,1,4,NULL,'','','','',NULL,0,0,0,0,1,'paint','red','4','100',400,4,3,1,1,NULL,'','','','',NULL,0,0,0,0,NULL,'','','','',NULL,0,0,0,0,'setmt1','2022-08-14 11:25:18',NULL,NULL),
 (11,1,4,NULL,'','','','',NULL,0,0,0,0,2,'steel','rod','3','300',900,3,2,1,1,NULL,'','','','',NULL,0,0,0,0,NULL,'','','','',NULL,0,0,0,0,'setmt1','2022-08-14 11:25:18',NULL,NULL),
 (12,1,4,NULL,'','','','',NULL,0,0,0,0,3,'paint','blue','4','400',1600,4,2,2,2,NULL,'','','','',NULL,0,0,0,0,NULL,'','','','',NULL,0,0,0,0,'setmt1','2022-08-14 11:25:18',NULL,NULL);
/*!40000 ALTER TABLE `materialreceiveditem001wb` ENABLE KEYS */;


--
-- Definition of table `materialreqslip001wb`
--

DROP TABLE IF EXISTS `materialreqslip001wb`;
CREATE TABLE `materialreqslip001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `spare_slno` int(15) NOT NULL,
  `mrs_no` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `requestor_name` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `qty` int(15) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `spare_slno` (`spare_slno`),
  CONSTRAINT `materialreqslip001wb_ibfk_1` FOREIGN KEY (`spare_slno`) REFERENCES `spares001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materialreqslip001wb`
--

/*!40000 ALTER TABLE `materialreqslip001wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `materialreqslip001wb` ENABLE KEYS */;


--
-- Definition of table `observationsitems001wb`
--

DROP TABLE IF EXISTS `observationsitems001wb`;
CREATE TABLE `observationsitems001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `ordernumber` varchar(200) DEFAULT NULL,
  `orderparameter` varchar(200) DEFAULT NULL,
  `orderspecification` varchar(200) DEFAULT NULL,
  `orderinspection` varchar(200) DEFAULT NULL,
  `orderobservartion` varchar(200) DEFAULT NULL,
  `orderobservartion1` varchar(200) DEFAULT NULL,
  `orderobservartion2` varchar(200) DEFAULT NULL,
  `orderobservartion3` varchar(200) DEFAULT NULL,
  `orderobservartion4` varchar(200) DEFAULT NULL,
  `orderobservartion5` varchar(200) DEFAULT NULL,
  `orderobservartion6` varchar(200) DEFAULT NULL,
  `orderobservartion7` varchar(200) DEFAULT NULL,
  `orderobservartion8` varchar(200) DEFAULT NULL,
  `orderobservartion9` varchar(200) DEFAULT NULL,
  `consumnumber` varchar(200) DEFAULT NULL,
  `consumparameter` varchar(200) DEFAULT NULL,
  `consumspecification` varchar(200) DEFAULT NULL,
  `consuminspection` varchar(200) DEFAULT NULL,
  `consumobservartion` varchar(200) DEFAULT NULL,
  `consumobservartion1` varchar(200) DEFAULT NULL,
  `consumobservartion2` varchar(200) DEFAULT NULL,
  `consumobservartion3` varchar(200) DEFAULT NULL,
  `consumobservartion4` varchar(200) DEFAULT NULL,
  `consumobservartion5` varchar(200) DEFAULT NULL,
  `consumobservartion6` varchar(200) DEFAULT NULL,
  `consumobservartion7` varchar(200) DEFAULT NULL,
  `consumobservartion8` varchar(200) DEFAULT NULL,
  `consumobservartion9` varchar(200) DEFAULT NULL,
  `childnumber` varchar(200) DEFAULT NULL,
  `childparameter` varchar(200) DEFAULT NULL,
  `childspecification` varchar(200) DEFAULT NULL,
  `childinspection` varchar(200) DEFAULT NULL,
  `childobservartion` varchar(200) DEFAULT NULL,
  `childobservartion1` varchar(200) DEFAULT NULL,
  `childobservartion2` varchar(200) DEFAULT NULL,
  `childobservartion3` varchar(200) DEFAULT NULL,
  `childobservartion4` varchar(200) DEFAULT NULL,
  `childobservartion5` varchar(200) DEFAULT NULL,
  `childobservartion6` varchar(200) DEFAULT NULL,
  `childobservartion7` varchar(200) DEFAULT NULL,
  `childobservartion8` varchar(200) DEFAULT NULL,
  `childobservartion9` varchar(200) DEFAULT NULL,
  `partnumber` varchar(200) DEFAULT NULL,
  `partparameter` varchar(200) DEFAULT NULL,
  `partspecification` varchar(200) DEFAULT NULL,
  `partinspection` varchar(200) DEFAULT NULL,
  `partobservartion` varchar(200) DEFAULT NULL,
  `partobservartion1` varchar(200) DEFAULT NULL,
  `partobservartion2` varchar(200) DEFAULT NULL,
  `partobservartion3` varchar(200) DEFAULT NULL,
  `partobservartion4` varchar(200) DEFAULT NULL,
  `partobservartion5` varchar(200) DEFAULT NULL,
  `partobservartion6` varchar(200) DEFAULT NULL,
  `partobservartion7` varchar(200) DEFAULT NULL,
  `partobservartion8` varchar(200) DEFAULT NULL,
  `partobservartion9` varchar(200) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `observationsitems001wb`
--

/*!40000 ALTER TABLE `observationsitems001wb` DISABLE KEYS */;
INSERT INTO `observationsitems001wb` (`sl_no`,`unitdepartsl_no`,`ordernumber`,`orderparameter`,`orderspecification`,`orderinspection`,`orderobservartion`,`orderobservartion1`,`orderobservartion2`,`orderobservartion3`,`orderobservartion4`,`orderobservartion5`,`orderobservartion6`,`orderobservartion7`,`orderobservartion8`,`orderobservartion9`,`consumnumber`,`consumparameter`,`consumspecification`,`consuminspection`,`consumobservartion`,`consumobservartion1`,`consumobservartion2`,`consumobservartion3`,`consumobservartion4`,`consumobservartion5`,`consumobservartion6`,`consumobservartion7`,`consumobservartion8`,`consumobservartion9`,`childnumber`,`childparameter`,`childspecification`,`childinspection`,`childobservartion`,`childobservartion1`,`childobservartion2`,`childobservartion3`,`childobservartion4`,`childobservartion5`,`childobservartion6`,`childobservartion7`,`childobservartion8`,`childobservartion9`,`partnumber`,`partparameter`,`partspecification`,`partinspection`,`partobservartion`,`partobservartion1`,`partobservartion2`,`partobservartion3`,`partobservartion4`,`partobservartion5`,`partobservartion6`,`partobservartion7`,`partobservartion8`,`partobservartion9`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'','','','','','','','','','','','','','','CIC0001','1','asd','asd','asdf','sdf','asdf','sdf','asdf','asdf','asdf','asdf','asdf','asdf','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:33:06',NULL,NULL),
 (2,1,'','','','','','','','','','','','','','','CIC0001','2','asd','asd','asdf','asdf','asdf','asdf','asdf','asdf','asd','sad','asd','asd','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:33:06',NULL,NULL),
 (3,1,'','','','','','','','','','','','','','','CIC0001','1','ad','asd','asd','asd','asd','sad','sad','asd','sad','sad','asd','asd','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:33:37',NULL,NULL),
 (4,1,'','','','','','','','','','','','','','','CIC0001','2','sdf','sdsdf','asd','asd','sad','sd','asd','asd','asd','asd','sad','asd','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:33:37',NULL,NULL),
 (5,1,'','','','','','','','','','','','','','','CIC0002','1','sdf','sdf','asdf','asdf','asdf','asdf','sadf','asdf','asdf','sadf','asdf','asdf','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:34:13',NULL,NULL),
 (6,1,'','','','','','','','','','','','','','','CIC0002','2','sdf','sd','asdf','asdf','asdf','asd','asdf','sadf','sdf','asdf','asdf','asdf','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:34:13',NULL,NULL),
 (7,1,'','','','','','','','','','','','','','','CIC0002','3','asdf','asdf','asdf','asdf','adf','asdf','asdf','asdf','asdf','asdf','sadf','asdf','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:34:13',NULL,NULL),
 (8,1,'IC0001','1','aa','aa','afd','asfd','sf','saf','saf','asdf','asdf','asdf','asdf','asdf','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:35:18',NULL,NULL),
 (9,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:35:18',NULL,NULL),
 (10,1,'IC0001','2','bb','bb','asdf','asdf','asfd','asdf','asdf','asf','sadf','sadf','asdf','asf','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:35:41',NULL,NULL),
 (11,1,'IC0001','3','cc','cc','asd','asdf','asdf','asdf','asdf','asdf','adf','asdf','asf','asf','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:35:41',NULL,NULL),
 (12,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:35:41',NULL,NULL),
 (13,1,'IC0002','4','dd','dd','asdf','sadf','asdf','asdf','asfd','asdf','asdf','asdf','asf','asfd','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:36:19',NULL,NULL),
 (14,1,'IC0002','5','ee','ee','sad','sad','asd','asd','asd','asd','asd','asdf','asf','asf','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:36:19',NULL,NULL),
 (15,1,'IC0002','6','ff','ff','sad','sdf','d','asd','asfd','asdf','sadf','asdf','asdf','asdf','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:36:19',NULL,NULL),
 (16,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:36:19',NULL,NULL),
 (17,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','PRT0001',NULL,NULL,NULL,'asef','asdf','sadf','asdf','asdf','asdf','asdf','asdf','asdf','asd','setmt1','2022-08-22 16:37:40',NULL,NULL),
 (18,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','PRT0001',NULL,NULL,NULL,'asfd','sd','sadf','asdf','asdf','asdf','saf','asdf','asdf','asfd','setmt1','2022-08-22 16:37:40',NULL,NULL),
 (19,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','PRT0001',NULL,NULL,NULL,'sadf','asfd','asfd','sdf','saf','sf','sfd','sdf','asdf','asdf','setmt1','2022-08-22 16:38:01',NULL,NULL),
 (20,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','PRT0001',NULL,NULL,NULL,'asdf','as','asdf','asf','asf','asd','asf','sdf','sadf','as','setmt1','2022-08-22 16:38:01',NULL,NULL),
 (21,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','PRT0002',NULL,NULL,NULL,'asf','asdf','asdf','asfd','sadf','sadfasdf','asdf','asdf','asf','asdf','setmt1','2022-08-22 16:38:39',NULL,NULL),
 (22,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','PRT0002',NULL,NULL,NULL,'sadf','sadf','sadf','saf','asdf','saf','asfd','asdf','sdf','sdf','setmt1','2022-08-22 16:38:39',NULL,NULL),
 (23,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','PRT0002',NULL,NULL,NULL,'safd','saf','sadf','sadf','sdaf','asf','asf','safd','asdf','asfd','setmt1','2022-08-22 16:38:39',NULL,NULL),
 (24,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','CPT0001','1','aa','aa','adf','adf','asdf','asdf','asdf','safd','sadf','asdf','safd','s','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:42:35',NULL,NULL),
 (25,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','CPT0001','2','bb','bb','asf','asdf','asf','asdf','asdf','asdf','asdf','asdf','sadf','sadf','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:42:35',NULL,NULL),
 (26,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','CPT0001','2','ss','ss','asf','asdf','asfd','asdf','asdf','adsf','asfd','sadf','asf','asf','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:42:59',NULL,NULL),
 (27,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','CPT0001','3','dd','dd','adsf','safd','sadf','sfsd','asdf','asf','asdf','saf','asdf','asdf','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:42:59',NULL,NULL),
 (28,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','CPT0002','1','aa','aa','asfd','asf','asfd','sdf','asfd','sdf','asd','sadf','asfd','asfd','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:43:30',NULL,NULL),
 (29,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','CPT0002','2','aa','aa','asfd','asf','asdf','saf','saf','asdf','saf','asdf','asf','asdf','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:43:30',NULL,NULL),
 (30,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','CPT0002','3','dd','dd','asdf','asdf','sfd','sdf','safd','sadf','sfd','asf','asf','asfd','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:43:30',NULL,NULL),
 (31,1,'','','','','','','','','','','','','','','CIC0001','1','asd','asd','adsf','asdf','asdf','asdf','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:55:52',NULL,NULL),
 (32,1,'','','','','','','','','','','','','','','CIC0001','2','asd','asd','asdf','asdf','asdf','asdf','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:55:52',NULL,NULL),
 (33,1,'','','','','','','','','','','','','','','CIC0001','1','ad','asd','asdf','asdf','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:56:02',NULL,NULL),
 (34,1,'','','','','','','','','','','','','','','CIC0001','2','sdf','sdsdf','asdf','asdf','asdf','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:56:02',NULL,NULL),
 (35,1,'','','','','','','','','','','','','','','CIC0002','1','sdf','sdf','asdf','','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:56:19',NULL,NULL),
 (36,1,'','','','','','','','','','','','','','','CIC0002','2','sdf','sd','asdf','asdf','','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:56:19',NULL,NULL),
 (37,1,'','','','','','','','','','','','','','','CIC0002','3','asdf','asdf','asdf','adf','ad','','','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,'','','','','','','','','','','setmt1','2022-08-22 16:56:19',NULL,NULL);
/*!40000 ALTER TABLE `observationsitems001wb` ENABLE KEYS */;


--
-- Definition of table `orderitem001mb`
--

DROP TABLE IF EXISTS `orderitem001mb`;
CREATE TABLE `orderitem001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `itemcode` varchar(250) NOT NULL,
  `itemname` varchar(250) NOT NULL,
  `descrip` varchar(250) NOT NULL,
  `qunty` varchar(250) NOT NULL,
  `unitamount` int(50) NOT NULL,
  `uom` varchar(250) NOT NULL,
  `gst` int(50) NOT NULL,
  `hsn` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderitem001mb`
--

/*!40000 ALTER TABLE `orderitem001mb` DISABLE KEYS */;
INSERT INTO `orderitem001mb` (`sl_no`,`unitdepartsl_no`,`itemcode`,`itemname`,`descrip`,`qunty`,`unitamount`,`uom`,`gst`,`hsn`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'IC0001','paint','red','1',100,'Ltrs',18,'111','setmt1','2022-08-12 12:48:56',NULL,NULL),
 (2,1,'IC0001','steel','rod','1',200,'Kgs',18,'22','setmt1','2022-08-12 12:50:01',NULL,NULL),
 (3,1,'IC0002','paint','blue','1',300,'Ltrs',18,'11','setmt1','2022-08-12 12:51:25',NULL,NULL);
/*!40000 ALTER TABLE `orderitem001mb` ENABLE KEYS */;


--
-- Definition of table `orderitem001wb`
--

DROP TABLE IF EXISTS `orderitem001wb`;
CREATE TABLE `orderitem001wb` (
  `sl_no` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `purchaseslno` int(11) DEFAULT NULL,
  `itemcode` int(11) DEFAULT NULL,
  `itemname` varchar(250) DEFAULT NULL,
  `descrip` varchar(250) DEFAULT NULL,
  `qunty` varchar(250) DEFAULT NULL,
  `uom` varchar(250) DEFAULT NULL,
  `unitrate` varchar(250) DEFAULT NULL,
  `totalamount` int(50) DEFAULT NULL,
  `hsn` varchar(250) DEFAULT NULL,
  `cucode` int(11) DEFAULT NULL,
  `cuname` varchar(250) DEFAULT NULL,
  `cudescrip` varchar(250) DEFAULT NULL,
  `cuqunty` varchar(250) DEFAULT NULL,
  `cuom` varchar(250) DEFAULT NULL,
  `cunitrate` varchar(250) DEFAULT NULL,
  `cutotalamount` int(50) DEFAULT NULL,
  `chsn` varchar(250) DEFAULT NULL,
  `cptcode` int(11) DEFAULT NULL,
  `cptname` varchar(250) DEFAULT NULL,
  `cptdescrip` varchar(250) DEFAULT NULL,
  `cptqunty` varchar(250) DEFAULT NULL,
  `cptuom` varchar(250) DEFAULT NULL,
  `cptunitrate` varchar(250) DEFAULT NULL,
  `cpttotalamount` int(50) DEFAULT NULL,
  `cpthsn` varchar(250) DEFAULT NULL,
  `prtcode` int(11) DEFAULT NULL,
  `prtmname` varchar(250) DEFAULT NULL,
  `prtdescrip` varchar(250) DEFAULT NULL,
  `prtqunty` varchar(250) DEFAULT NULL,
  `prtuom` varchar(250) DEFAULT NULL,
  `prtunitrate` varchar(250) DEFAULT NULL,
  `prttotalamount` int(50) DEFAULT NULL,
  `prthsn` varchar(250) DEFAULT NULL,
  `insert_user` varchar(40) DEFAULT NULL,
  `insert_datetime` datetime DEFAULT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `purchaseslno` (`purchaseslno`),
  CONSTRAINT `orderitem001wb_ibfk_1` FOREIGN KEY (`purchaseslno`) REFERENCES `purchaseorder001wb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderitem001wb`
--

/*!40000 ALTER TABLE `orderitem001wb` DISABLE KEYS */;
INSERT INTO `orderitem001wb` (`sl_no`,`unitdepartsl_no`,`purchaseslno`,`itemcode`,`itemname`,`descrip`,`qunty`,`uom`,`unitrate`,`totalamount`,`hsn`,`cucode`,`cuname`,`cudescrip`,`cuqunty`,`cuom`,`cunitrate`,`cutotalamount`,`chsn`,`cptcode`,`cptname`,`cptdescrip`,`cptqunty`,`cptuom`,`cptunitrate`,`cpttotalamount`,`cpthsn`,`prtcode`,`prtmname`,`prtdescrip`,`prtqunty`,`prtuom`,`prtunitrate`,`prttotalamount`,`prthsn`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,NULL,'','','','','',NULL,'',NULL,'','','','','',NULL,'',NULL,'','','','','',NULL,'',1,'paint','red','4','red','100',400,'ss','setmt1','2022-08-14 10:31:01',NULL,NULL),
 (2,1,1,NULL,'','','','','',NULL,'',NULL,'','','','','',NULL,'',NULL,'','','','','',NULL,'',2,'cloth','waste','5','waste','200',1000,'33','setmt1','2022-08-14 10:31:01',NULL,NULL),
 (3,1,1,NULL,'','','','','',NULL,'',NULL,'','','','','',NULL,'',NULL,'','','','','',NULL,'',3,'steel','rod','6','rod','300',1800,'33','setmt1','2022-08-14 10:31:01',NULL,NULL),
 (4,1,2,NULL,'','','','','',NULL,'',NULL,'','','','','',NULL,'',1,'paint','red','4','red','100',400,'aa',NULL,'','','','','',NULL,'','setmt1','2022-08-14 10:31:20',NULL,NULL),
 (5,1,2,NULL,'','','','','',NULL,'',NULL,'','','','','',NULL,'',2,'steel','rod','5','rod','200',1000,'aaa',NULL,'','','','','',NULL,'','setmt1','2022-08-14 10:31:20',NULL,NULL),
 (6,1,2,NULL,'','','','','',NULL,'',NULL,'','','','','',NULL,'',3,'cloth','waste','5','waste','300',1500,'ss',NULL,'','','','','',NULL,'','setmt1','2022-08-14 10:31:20',NULL,NULL),
 (7,1,3,1,'paint','red','5','red','100',500,'111',NULL,'','','','','',NULL,'',NULL,'','','','','',NULL,'',NULL,'','','','','',NULL,'','setmt1','2022-08-14 10:31:37',NULL,NULL),
 (8,1,3,2,'steel','rod','2','rod','200',400,'22',NULL,'','','','','',NULL,'',NULL,'','','','','',NULL,'',NULL,'','','','','',NULL,'','setmt1','2022-08-14 10:31:37',NULL,NULL),
 (9,1,3,3,'paint','blue','3','blue','300',900,'11',NULL,'','','','','',NULL,'',NULL,'','','','','',NULL,'',NULL,'','','','','',NULL,'','setmt1','2022-08-14 10:31:37',NULL,NULL),
 (10,1,4,NULL,'','','','','',NULL,'',1,'paint','red','4','red','100',400,'asd',NULL,'','','','','',NULL,'',NULL,'','','','','',NULL,'','setmt1','2022-08-14 10:32:04',NULL,NULL),
 (11,1,4,NULL,'','','','','',NULL,'',2,'steel','rod','3','rod','300',900,'55',NULL,'','','','','',NULL,'',NULL,'','','','','',NULL,'','setmt1','2022-08-14 10:32:04',NULL,NULL),
 (12,1,4,NULL,'','','','','',NULL,'',3,'paint','blue','4','blue','400',1600,'22',NULL,'','','','','',NULL,'',NULL,'','','','','',NULL,'','setmt1','2022-08-14 10:32:04',NULL,NULL);
/*!40000 ALTER TABLE `orderitem001wb` ENABLE KEYS */;


--
-- Definition of table `orderitemspecification001wb`
--

DROP TABLE IF EXISTS `orderitemspecification001wb`;
CREATE TABLE `orderitemspecification001wb` (
  `sl_no` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `itemslno` int(11) DEFAULT NULL,
  `parameter` varchar(200) NOT NULL,
  `specification` varchar(200) NOT NULL,
  `inspecmethod` varchar(200) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `itemslno` (`itemslno`),
  CONSTRAINT `orderitemspecification001wb_ibfk_1` FOREIGN KEY (`itemslno`) REFERENCES `orderitem001mb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderitemspecification001wb`
--

/*!40000 ALTER TABLE `orderitemspecification001wb` DISABLE KEYS */;
INSERT INTO `orderitemspecification001wb` (`sl_no`,`unitdepartsl_no`,`itemslno`,`parameter`,`specification`,`inspecmethod`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,'1','aa','aa','setmt1','2022-08-12 12:48:56',NULL,NULL),
 (2,1,2,'2','bb','bb','setmt1','2022-08-12 12:50:01',NULL,NULL),
 (3,1,2,'3','cc','cc','setmt1','2022-08-12 12:50:01',NULL,NULL),
 (4,1,3,'4','dd','dd','setmt1','2022-08-12 12:51:25',NULL,NULL),
 (5,1,3,'5','ee','ee','setmt1','2022-08-12 12:51:25',NULL,NULL),
 (6,1,3,'6','ff','ff','setmt1','2022-08-12 12:51:25',NULL,NULL);
/*!40000 ALTER TABLE `orderitemspecification001wb` ENABLE KEYS */;


--
-- Definition of table `part001mb`
--

DROP TABLE IF EXISTS `part001mb`;
CREATE TABLE `part001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `partno` varchar(200) NOT NULL,
  `partname` varchar(200) NOT NULL,
  `splan` varchar(200) NOT NULL,
  `descrip` varchar(250) NOT NULL,
  `qunty` varchar(250) NOT NULL,
  `unitamount` int(50) NOT NULL,
  `uom` varchar(250) NOT NULL,
  `gst` int(50) NOT NULL,
  `hsn` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `part001mb`
--

/*!40000 ALTER TABLE `part001mb` DISABLE KEYS */;
INSERT INTO `part001mb` (`sl_no`,`unitdepartsl_no`,`partno`,`partname`,`splan`,`descrip`,`qunty`,`unitamount`,`uom`,`gst`,`hsn`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'PRT0001','paint','aa','red','1',100,'Ltrs',18,'ss','setmt1','2022-08-12 17:19:01',NULL,NULL),
 (2,1,'PRT0001','cloth','as','waste','1',200,'Kgs',18,'33','setmt1','2022-08-12 17:19:53',NULL,NULL),
 (3,1,'PRT0002','steel','asa','rod','1',300,'Kgs',18,'33','setmt1','2022-08-12 17:22:14',NULL,NULL);
/*!40000 ALTER TABLE `part001mb` ENABLE KEYS */;


--
-- Definition of table `partspecific001wb`
--

DROP TABLE IF EXISTS `partspecific001wb`;
CREATE TABLE `partspecific001wb` (
  `sl_no` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `partslno` int(11) DEFAULT NULL,
  `parameter` varchar(200) NOT NULL,
  `specification` varchar(200) NOT NULL,
  `inspecmethod` varchar(200) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `partslno` (`partslno`),
  CONSTRAINT `partspecific001wb_ibfk_1` FOREIGN KEY (`partslno`) REFERENCES `part001mb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partspecific001wb`
--

/*!40000 ALTER TABLE `partspecific001wb` DISABLE KEYS */;
INSERT INTO `partspecific001wb` (`sl_no`,`unitdepartsl_no`,`partslno`,`parameter`,`specification`,`inspecmethod`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,'1','aa','aa','setmt1','2022-08-12 17:19:01',NULL,NULL),
 (2,1,1,'2','aa','bb','setmt1','2022-08-12 17:19:01',NULL,NULL),
 (3,1,2,'2','asd','as','setmt1','2022-08-12 17:19:53',NULL,NULL),
 (4,1,2,'3','asd','asd','setmt1','2022-08-12 17:19:53',NULL,NULL),
 (5,1,3,'2','asd','asd','setmt1','2022-08-12 17:22:14',NULL,NULL),
 (6,1,3,'5','asd','asd','setmt1','2022-08-12 17:22:14',NULL,NULL),
 (7,1,3,'6','asdf','asd','setmt1','2022-08-12 17:22:14',NULL,NULL);
/*!40000 ALTER TABLE `partspecific001wb` ENABLE KEYS */;


--
-- Definition of table `payment001wb`
--

DROP TABLE IF EXISTS `payment001wb`;
CREATE TABLE `payment001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `saleorder_slno` int(11) NOT NULL,
  `pay_date` date NOT NULL,
  `pay_status` varchar(20) NOT NULL,
  `due_date` date NOT NULL,
  `gst_no` int(11) NOT NULL,
  `gst_percent` varchar(30) NOT NULL,
  `gst_amount` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `saleorder_slno` (`saleorder_slno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment001wb`
--

/*!40000 ALTER TABLE `payment001wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment001wb` ENABLE KEYS */;


--
-- Definition of table `person001mb`
--

DROP TABLE IF EXISTS `person001mb`;
CREATE TABLE `person001mb` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `sex` varchar(30) DEFAULT NULL,
  `maritalstatus` varchar(30) DEFAULT NULL,
  `bloodgroup` varchar(30) DEFAULT NULL,
  `address1` varchar(50) DEFAULT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `address3` varchar(50) DEFAULT NULL,
  `religion` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `mobileno` int(15) DEFAULT NULL,
  `workphoneno` int(11) DEFAULT NULL,
  `homephoneno` int(11) DEFAULT NULL,
  `primaryemail` varchar(30) DEFAULT NULL,
  `secondaryemail` varchar(30) DEFAULT NULL,
  `occupationtype` varchar(30) DEFAULT NULL,
  `occupationrole` varchar(30) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  UNIQUE KEY `UNI_firstname` (`firstname`),
  UNIQUE KEY `UNI_lastname` (`lastname`),
  UNIQUE KEY `UNI_dob` (`dob`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person001mb`
--

/*!40000 ALTER TABLE `person001mb` DISABLE KEYS */;
INSERT INTO `person001mb` (`person_id`,`firstname`,`lastname`,`age`,`dob`,`sex`,`maritalstatus`,`bloodgroup`,`address1`,`address2`,`address3`,`religion`,`city`,`state`,`country`,`zipcode`,`mobileno`,`workphoneno`,`homephoneno`,`primaryemail`,`secondaryemail`,`occupationtype`,`occupationrole`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,'sivakumar','karunamoorthy',35,'1986-09-06 13:18:33','male','married','o+','#25, 7th Cross Rd','Narayana Garden','Thalakkudi-Tiruchirappalli','hindu','Trichy','TamilNadu','India',621216,98765432,98765432,98765432,'adc@gmail.com','adc@gmail.com','fulltime','manager','siva','2021-09-06 13:18:33','siva','2021-09-06 13:18:33'),
 (2,'latha','b',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'siva','2022-01-20 08:59:58','latha','2022-02-09 12:07:18'),
 (3,'aravinth','a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'latha','2022-01-31 16:01:46','siva','2022-02-09 12:06:50'),
 (5,'chandrasekar','l',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'latha','2022-02-01 16:54:02','latha','2022-02-03 12:52:44'),
 (8,'Kavitha','S',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'latha','2022-02-11 13:33:13','latha','2022-02-11 13:36:01'),
 (9,'selvam','r',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'latha','2022-02-11 13:37:45',NULL,NULL),
 (10,'sfs','sfd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'latha','2022-02-11 14:20:10',NULL,NULL),
 (11,'moorthy','p',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'latha','2022-02-24 13:39:48','latha','2022-02-24 13:40:01'),
 (12,'sritop','management',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'siva','2022-06-01 13:28:00',NULL,NULL),
 (14,'srinimar','keting',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'setmt1','2022-06-01 13:45:34',NULL,NULL),
 (15,'sriqua','lity',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'semar1','2022-06-01 13:49:45',NULL,NULL),
 (16,'sriproduc','tion',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'seqal1','2022-06-01 13:52:35',NULL,NULL),
 (20,'sristo','re',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'seprd1','2022-06-01 14:47:01',NULL,NULL),
 (21,'sri','hr',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sestr1','2022-06-01 14:53:31',NULL,NULL),
 (22,'srihr','m',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sestr1','2022-06-01 14:53:55',NULL,NULL),
 (23,'sripur','chase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sehrm1','2022-06-01 14:57:00',NULL,NULL),
 (24,'srimain','tenance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sepur1','2022-06-01 14:59:19',NULL,NULL),
 (25,'srisales','sales',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'setmt1','2022-08-03 15:39:17',NULL,NULL),
 (26,'sekarL','sekarL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'setmt1','2022-08-19 15:07:40',NULL,NULL),
 (27,'Sri1','Top',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'sesale1','2022-08-19 17:39:08',NULL,NULL),
 (28,'Sri2','Marketing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'setmt1','2022-08-19 17:45:11',NULL,NULL),
 (29,'Sri3','Quality',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'setmt1','2022-08-19 17:48:18',NULL,NULL),
 (30,'Sri4','Production',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'setmt1','2022-08-19 17:51:02',NULL,NULL),
 (31,'Sri5','Store',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'setmt1','2022-08-19 17:53:00',NULL,NULL),
 (33,'Sri6','HRmgnt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'setmt1','2022-08-19 18:31:11',NULL,NULL),
 (34,'sri7','purchase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'setmt1','2022-08-19 18:34:41',NULL,NULL),
 (35,'Sri8','Maintenance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'setmt1','2022-08-19 18:37:38',NULL,NULL),
 (36,'Sri9','Sale',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'setmt1','2022-08-19 18:39:32',NULL,NULL);
/*!40000 ALTER TABLE `person001mb` ENABLE KEYS */;


--
-- Definition of table `preventiveaction001mb`
--

DROP TABLE IF EXISTS `preventiveaction001mb`;
CREATE TABLE `preventiveaction001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `sslno` int(11) NOT NULL,
  `rcslno` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `details` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `sslno` (`sslno`),
  KEY `rcslno` (`rcslno`),
  CONSTRAINT `preventiveaction001mb_ibfk_1` FOREIGN KEY (`sslno`) REFERENCES `status001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `preventiveaction001mb_ibfk_2` FOREIGN KEY (`rcslno`) REFERENCES `rootcause001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preventiveaction001mb`
--

/*!40000 ALTER TABLE `preventiveaction001mb` DISABLE KEYS */;
INSERT INTO `preventiveaction001mb` (`sl_no`,`unitdepartsl_no`,`sslno`,`rcslno`,`name`,`details`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (2,1,2,2,'Change belt in 2 month once','check the life time of belt','latha','2022-01-06 14:30:52',NULL,NULL),
 (3,1,1,3,'Don\'t keep near windows','take care of machine','latha','2022-01-06 14:33:15',NULL,NULL),
 (4,1,2,4,'Follow Specified Weight before operations','follow the machine rules','latha','2022-01-06 14:35:58','siva','2022-02-25 17:52:26');
/*!40000 ALTER TABLE `preventiveaction001mb` ENABLE KEYS */;


--
-- Definition of table `preventivechecklist001wb`
--

DROP TABLE IF EXISTS `preventivechecklist001wb`;
CREATE TABLE `preventivechecklist001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `mslno` int(11) NOT NULL,
  `cpslno` int(11) NOT NULL,
  `checkpointdate` datetime NOT NULL,
  `observation` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `mslno` (`mslno`),
  KEY `cpslno` (`cpslno`),
  CONSTRAINT `preventivechecklist001wb_ibfk_1` FOREIGN KEY (`mslno`) REFERENCES `machine001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `preventivechecklist001wb_ibfk_2` FOREIGN KEY (`cpslno`) REFERENCES `checklist001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preventivechecklist001wb`
--

/*!40000 ALTER TABLE `preventivechecklist001wb` DISABLE KEYS */;
INSERT INTO `preventivechecklist001wb` (`sl_no`,`unitdepartsl_no`,`mslno`,`cpslno`,`checkpointdate`,`observation`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (5,1,11,1,'2022-03-01 00:00:00','dsdvsd','siva','2022-03-07 14:10:46',NULL,NULL),
 (36,1,1,1,'2022-03-09 00:00:00','nice','siva','2022-03-09 14:09:23','siva','2022-03-09 14:09:55'),
 (37,1,1,9,'2022-03-09 00:00:00','good','siva','2022-03-09 14:09:23',NULL,NULL),
 (38,1,1,10,'2022-03-09 00:00:00','good','siva','2022-03-09 14:09:23',NULL,NULL),
 (39,1,1,11,'2022-03-09 00:00:00','good','siva','2022-03-09 14:09:23',NULL,NULL),
 (40,1,1,13,'2022-03-09 00:00:00','good','siva','2022-03-09 14:09:23','latha','2022-03-25 18:35:49'),
 (41,1,1,1,'2022-05-20 00:00:00','zz','siva','2022-05-18 17:31:05',NULL,NULL),
 (42,1,1,9,'2022-05-20 00:00:00','zxz','siva','2022-05-18 17:31:05',NULL,NULL),
 (43,1,1,10,'2022-05-20 00:00:00','12121','siva','2022-05-18 17:31:05',NULL,NULL),
 (44,1,1,11,'2022-05-20 00:00:00','1231','siva','2022-05-18 17:31:05',NULL,NULL),
 (45,1,1,13,'2022-05-20 00:00:00','123','siva','2022-05-18 17:31:05',NULL,NULL),
 (46,1,1,1,'2022-06-01 00:00:00','aa','siva','2022-06-27 14:47:12',NULL,NULL),
 (47,1,1,9,'2022-06-01 00:00:00','aaa','siva','2022-06-27 14:47:12',NULL,NULL),
 (48,1,1,10,'2022-06-01 00:00:00','aaa','siva','2022-06-27 14:47:12',NULL,NULL),
 (49,1,1,11,'2022-06-01 00:00:00','aaa','siva','2022-06-27 14:47:12',NULL,NULL),
 (50,1,1,13,'2022-06-01 00:00:00','aa','siva','2022-06-27 14:47:12',NULL,NULL);
/*!40000 ALTER TABLE `preventivechecklist001wb` ENABLE KEYS */;


--
-- Definition of table `preventiveplan001wb`
--

DROP TABLE IF EXISTS `preventiveplan001wb`;
CREATE TABLE `preventiveplan001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `mslno` int(11) NOT NULL,
  `status` char(1) NOT NULL,
  `date` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `mslno` (`mslno`),
  CONSTRAINT `preventiveplan001wb_ibfk_1` FOREIGN KEY (`mslno`) REFERENCES `machine001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preventiveplan001wb`
--

/*!40000 ALTER TABLE `preventiveplan001wb` DISABLE KEYS */;
INSERT INTO `preventiveplan001wb` (`sl_no`,`unitdepartsl_no`,`mslno`,`status`,`date`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,'P','2022-05-24 00:00:00','siva','2022-05-13 15:29:50','siva','2022-05-20 17:07:33'),
 (2,1,1,'A','2022-05-24 00:00:00','siva','2022-05-18 17:30:45',NULL,NULL),
 (3,1,1,'P','2022-05-24 00:00:00','siva','2022-05-19 18:41:07',NULL,NULL),
 (4,1,1,'P','2022-05-25 00:00:00','siva','2022-05-24 13:27:25',NULL,NULL),
 (5,1,1,'P','2022-05-25 00:00:00','siva','2022-05-24 13:28:21',NULL,NULL),
 (6,1,1,'A','2022-05-25 00:00:00','siva','2022-05-24 13:29:05',NULL,NULL),
 (7,1,1,'P','2022-05-31 00:00:00','siva','2022-05-24 13:29:50',NULL,NULL),
 (8,1,1,'P','2022-05-27 00:00:00','siva','2022-05-24 16:03:50',NULL,NULL),
 (9,1,1,'A','2022-06-16 00:00:00','siva','2022-05-24 17:34:27','siva','2022-06-15 12:37:34'),
 (10,1,1,'P','2022-06-30 00:00:00','siva','2022-06-15 12:35:16','siva','2022-06-15 12:36:38'),
 (11,1,1,'P','2022-06-29 00:00:00','siva','2022-06-15 12:38:29',NULL,NULL),
 (12,1,1,'P','2022-01-01 00:00:00','siva','2022-06-15 12:45:15',NULL,NULL),
 (13,1,1,'A','2022-01-31 00:00:00','siva','2022-06-15 12:45:32',NULL,NULL),
 (14,1,1,'P','2022-02-16 00:00:00','siva','2022-06-15 12:46:46',NULL,NULL),
 (15,1,1,'A','2022-02-16 00:00:00','siva','2022-06-15 12:46:55',NULL,NULL),
 (16,1,1,'P','2022-03-08 00:00:00','siva','2022-06-15 12:47:08',NULL,NULL),
 (17,1,1,'A','2022-03-15 00:00:00','siva','2022-06-15 12:47:17','siva','2022-06-15 12:49:02'),
 (18,1,1,'P','2022-04-05 00:00:00','siva','2022-06-15 12:49:24',NULL,NULL),
 (19,1,1,'A','2022-04-12 00:00:00','siva','2022-06-15 12:49:32',NULL,NULL);
/*!40000 ALTER TABLE `preventiveplan001wb` ENABLE KEYS */;


--
-- Definition of table `prod001mb`
--

DROP TABLE IF EXISTS `prod001mb`;
CREATE TABLE `prod001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `proddno` varchar(50) NOT NULL,
  `proddname` varchar(250) NOT NULL,
  `catno` varchar(250) NOT NULL,
  `drawingno` varchar(250) NOT NULL,
  `cusdetails` varchar(250) NOT NULL,
  `remarks` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prod001mb`
--

/*!40000 ALTER TABLE `prod001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `prod001mb` ENABLE KEYS */;


--
-- Definition of table `purchaseable001mb`
--

DROP TABLE IF EXISTS `purchaseable001mb`;
CREATE TABLE `purchaseable001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `purscode` varchar(500) NOT NULL,
  `pursname` varchar(500) NOT NULL,
  `descrip` varchar(500) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchaseable001mb`
--

/*!40000 ALTER TABLE `purchaseable001mb` DISABLE KEYS */;
INSERT INTO `purchaseable001mb` (`sl_no`,`unitdepartsl_no`,`purscode`,`pursname`,`descrip`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'seprt001','Paint','Interiors','siva','2022-06-24 11:26:53','siva','2022-06-24 11:27:00'),
 (2,1,'seprt002','weast cloth','50kg','siva','2022-06-24 11:27:46','siva','2022-06-24 20:25:54'),
 (3,1,'seprt003','paint','external','siva','2022-06-24 20:26:15',NULL,NULL);
/*!40000 ALTER TABLE `purchaseable001mb` ENABLE KEYS */;


--
-- Definition of table `purchaseorder001wb`
--

DROP TABLE IF EXISTS `purchaseorder001wb`;
CREATE TABLE `purchaseorder001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `suplier_slno` int(15) NOT NULL,
  `suplierName` varchar(50) NOT NULL,
  `suplieraddress` varchar(50) NOT NULL,
  `pono` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `prsno` int(11) DEFAULT NULL,
  `qno` varchar(50) NOT NULL,
  `dispatch_through` varchar(50) DEFAULT NULL,
  `destination` varchar(50) NOT NULL,
  `terms_delivery` varchar(100) NOT NULL,
  `supplier_from` varchar(150) NOT NULL,
  `due_on` datetime NOT NULL,
  `status_slno` int(15) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `suplier_slno` (`suplier_slno`),
  CONSTRAINT `purchaseorder001wb_ibfk_1` FOREIGN KEY (`suplier_slno`) REFERENCES `supplierquotation001wb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchaseorder001wb`
--

/*!40000 ALTER TABLE `purchaseorder001wb` DISABLE KEYS */;
INSERT INTO `purchaseorder001wb` (`sl_no`,`unitdepartsl_no`,`suplier_slno`,`suplierName`,`suplieraddress`,`pono`,`date`,`prsno`,`qno`,`dispatch_through`,`destination`,`terms_delivery`,`supplier_from`,`due_on`,`status_slno`,`remarks`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`,`status`) VALUES 
 (1,1,1,'chnnaisilks','chennai','SE/PO/22-23/0001','2022-08-14 10:31:01',1,'1','asd','as','GST charges extra as per HSN/SAC  Code','s','2022-08-14 10:31:01',NULL,'ok','setmt1','2022-08-14 10:31:01',NULL,'2022-08-14 10:32:19','Approved'),
 (2,1,2,'pothis','madurai','SE/PO/22-23/0001','2022-08-14 10:31:20',2,'2','sd','c','GST charges extra as per HSN/SAC  Code','as','2022-08-14 10:31:20',NULL,'ok','setmt1','2022-08-14 10:31:20',NULL,'2022-08-14 10:32:27','Approved'),
 (3,1,3,'sraths','karu','SE/PO/22-23/0002','2022-08-14 10:31:37',3,'3','aas','as','GST charges extra as per HSN/SAC  Code','as','2022-08-14 10:31:37',NULL,'ok','setmt1','2022-08-14 10:31:37',NULL,'2022-08-14 10:32:34','Approved'),
 (4,1,4,'Mangal','Trichy','SE/PO/22-23/0003','2022-08-14 10:32:04',4,'4','as','as','GST charges extra as per HSN/SAC  Code','as','2022-08-14 10:32:04',NULL,'ok','setmt1','2022-08-14 10:32:04',NULL,'2022-08-14 10:32:41','Approved');
/*!40000 ALTER TABLE `purchaseorder001wb` ENABLE KEYS */;


--
-- Definition of table `purchasereqitem001wb`
--

DROP TABLE IF EXISTS `purchasereqitem001wb`;
CREATE TABLE `purchasereqitem001wb` (
  `sl_no` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `prslno` int(11) DEFAULT NULL,
  `orderslno` int(11) DEFAULT NULL,
  `itemname` varchar(250) DEFAULT NULL,
  `descrip` varchar(250) DEFAULT NULL,
  `qunty` varchar(250) DEFAULT NULL,
  `uom` varchar(250) DEFAULT NULL,
  `unitrate` varchar(250) DEFAULT NULL,
  `totalamount` int(50) DEFAULT NULL,
  `cucode` int(11) DEFAULT NULL,
  `cuname` varchar(250) DEFAULT NULL,
  `cudescrip` varchar(250) DEFAULT NULL,
  `cuqunty` varchar(250) DEFAULT NULL,
  `cuom` varchar(250) DEFAULT NULL,
  `cunitrate` varchar(250) DEFAULT NULL,
  `cutotalamount` int(50) DEFAULT NULL,
  `cptcode` int(11) DEFAULT NULL,
  `cptname` varchar(250) DEFAULT NULL,
  `cptdescrip` varchar(250) DEFAULT NULL,
  `cptqunty` varchar(250) DEFAULT NULL,
  `cptuom` varchar(250) DEFAULT NULL,
  `cptunitrate` varchar(250) DEFAULT NULL,
  `cpttotalamount` int(50) DEFAULT NULL,
  `prtcode` int(11) DEFAULT NULL,
  `prtmname` varchar(250) DEFAULT NULL,
  `prtdescrip` varchar(250) DEFAULT NULL,
  `prtqunty` varchar(250) DEFAULT NULL,
  `prtuom` varchar(250) DEFAULT NULL,
  `prtunitrate` varchar(250) DEFAULT NULL,
  `prttotalamount` int(50) DEFAULT NULL,
  `hsn` varchar(250) DEFAULT NULL,
  `chsn` varchar(250) DEFAULT NULL,
  `cpthsn` varchar(250) DEFAULT NULL,
  `prthsn` varchar(250) DEFAULT NULL,
  `insert_user` varchar(40) DEFAULT NULL,
  `insert_datetime` datetime DEFAULT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `prslno` (`prslno`),
  KEY `orderslno` (`orderslno`),
  KEY `cucode` (`cucode`),
  KEY `cptcode` (`cptcode`),
  KEY `prtcode` (`prtcode`),
  CONSTRAINT `purchasereqitem001wb_ibfk_1` FOREIGN KEY (`prslno`) REFERENCES `purchasereqslip001wb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `purchasereqitem001wb_ibfk_2` FOREIGN KEY (`orderslno`) REFERENCES `orderitem001mb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `purchasereqitem001wb_ibfk_3` FOREIGN KEY (`cucode`) REFERENCES `consumble001mb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `purchasereqitem001wb_ibfk_4` FOREIGN KEY (`cptcode`) REFERENCES `childpart001mb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `purchasereqitem001wb_ibfk_5` FOREIGN KEY (`prtcode`) REFERENCES `part001mb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasereqitem001wb`
--

/*!40000 ALTER TABLE `purchasereqitem001wb` DISABLE KEYS */;
INSERT INTO `purchasereqitem001wb` (`sl_no`,`unitdepartsl_no`,`prslno`,`orderslno`,`itemname`,`descrip`,`qunty`,`uom`,`unitrate`,`totalamount`,`cucode`,`cuname`,`cudescrip`,`cuqunty`,`cuom`,`cunitrate`,`cutotalamount`,`cptcode`,`cptname`,`cptdescrip`,`cptqunty`,`cptuom`,`cptunitrate`,`cpttotalamount`,`prtcode`,`prtmname`,`prtdescrip`,`prtqunty`,`prtuom`,`prtunitrate`,`prttotalamount`,`hsn`,`chsn`,`cpthsn`,`prthsn`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,1,'paint','red','5','red','100',500,NULL,'','','','','',NULL,NULL,'','','','','',NULL,NULL,'','','','','',NULL,'111','','','','setmt1','2022-08-13 13:51:36',NULL,NULL),
 (2,1,1,2,'steel','rod','2','rod','200',400,NULL,'','','','','',NULL,NULL,'','','','','',NULL,NULL,'','','','','',NULL,'22','','','','setmt1','2022-08-13 13:51:36',NULL,NULL),
 (3,1,1,3,'paint','blue','3','blue','300',900,NULL,'','','','','',NULL,NULL,'','','','','',NULL,NULL,'','','','','',NULL,'11','','','','setmt1','2022-08-13 13:51:36',NULL,NULL),
 (4,1,2,NULL,'','','','','',NULL,1,'paint','red','4','red','100',400,NULL,'','','','','',NULL,NULL,'','','','','',NULL,'','asd','','','setmt1','2022-08-13 13:52:12',NULL,NULL),
 (5,1,2,NULL,'','','','','',NULL,2,'steel','rod','3','rod','300',900,NULL,'','','','','',NULL,NULL,'','','','','',NULL,'','55','','','setmt1','2022-08-13 13:52:12',NULL,NULL),
 (6,1,2,NULL,'','','','','',NULL,3,'paint','blue','4','blue','400',1600,NULL,'','','','','',NULL,NULL,'','','','','',NULL,'','22','','','setmt1','2022-08-13 13:52:12',NULL,NULL),
 (7,1,3,NULL,'','','','','',NULL,NULL,'','','','','',NULL,1,'paint','red','4','red','100',400,NULL,'','','','','',NULL,'','','aa','','setmt1','2022-08-13 13:52:45',NULL,NULL),
 (8,1,3,NULL,'','','','','',NULL,NULL,'','','','','',NULL,2,'steel','rod','5','rod','200',1000,NULL,'','','','','',NULL,'','','aaa','','setmt1','2022-08-13 13:52:45',NULL,NULL),
 (9,1,3,NULL,'','','','','',NULL,NULL,'','','','','',NULL,3,'cloth','waste','5','waste','300',1500,NULL,'','','','','',NULL,'','','ss','','setmt1','2022-08-13 13:52:45',NULL,NULL),
 (10,1,4,NULL,'','','','','',NULL,NULL,'','','','','',NULL,NULL,'','','','','',NULL,1,'paint','red','4','red','100',400,'','','','ss','setmt1','2022-08-13 13:53:25',NULL,NULL),
 (11,1,4,NULL,'','','','','',NULL,NULL,'','','','','',NULL,NULL,'','','','','',NULL,2,'cloth','waste','5','waste','200',1000,'','','','33','setmt1','2022-08-13 13:53:25',NULL,NULL),
 (12,1,4,NULL,'','','','','',NULL,NULL,'','','','','',NULL,NULL,'','','','','',NULL,3,'steel','rod','6','rod','300',1800,'','','','33','setmt1','2022-08-13 13:53:25',NULL,NULL),
 (13,1,5,3,'paint','blue','5','blue','300',1500,NULL,'','','','','',NULL,NULL,'','','','','',NULL,NULL,'','','','','',NULL,'11','','','','setmt1','2022-08-18 14:48:54',NULL,NULL),
 (14,1,5,1,'paint','red','6','red','100',600,NULL,'','','','','',NULL,NULL,'','','','','',NULL,NULL,'','','','','',NULL,'111','','','','setmt1','2022-08-18 14:48:54',NULL,NULL),
 (15,1,6,NULL,'','','','','',NULL,3,'paint','blue','5','blue','400',2000,NULL,'','','','','',NULL,NULL,'','','','','',NULL,'','22','','','setmt1','2022-08-18 14:52:23',NULL,NULL),
 (16,1,6,NULL,'','','','','',NULL,1,'paint','red','6','red','100',600,NULL,'','','','','',NULL,NULL,'','','','','',NULL,'','asd','','','setmt1','2022-08-18 14:52:23',NULL,NULL);
/*!40000 ALTER TABLE `purchasereqitem001wb` ENABLE KEYS */;


--
-- Definition of table `purchasereqslip001wb`
--

DROP TABLE IF EXISTS `purchasereqslip001wb`;
CREATE TABLE `purchasereqslip001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `prs_no` varchar(30) NOT NULL,
  `po_date` datetime NOT NULL,
  `req_date` datetime NOT NULL,
  `po_no` varchar(30) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `suppliertype` varchar(100) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchasereqslip001wb`
--

/*!40000 ALTER TABLE `purchasereqslip001wb` DISABLE KEYS */;
INSERT INTO `purchasereqslip001wb` (`sl_no`,`unitdepartsl_no`,`date`,`prs_no`,`po_date`,`req_date`,`po_no`,`remarks`,`suppliertype`,`status`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'2022-08-13 13:51:36','SE/PRS/22-23/0001','2022-08-13 00:00:00','2022-08-13 00:00:00','1','ok','Raw Material','Approved','setmt1','2022-08-13 13:51:36',NULL,'2022-08-13 13:58:00'),
 (2,1,'2022-08-13 13:52:12','SE/PRS/22-23/0001','2022-08-13 00:00:00','2022-08-13 00:00:00','2','ok','Consumable Item ','Approved','setmt1','2022-08-13 13:52:12',NULL,'2022-08-13 13:58:08'),
 (3,1,'2022-08-13 13:52:45','SE/PRS/22-23/0002','2022-08-13 00:00:00','2022-08-13 00:00:00','3','ok','Child Part','Approved','setmt1','2022-08-13 13:52:45',NULL,'2022-08-13 13:57:53'),
 (4,1,'2022-08-13 13:53:25','SE/PRS/22-23/0003','2022-08-13 00:00:00','2022-08-13 00:00:00','4','ok','Part','Approved','setmt1','2022-08-13 13:53:25',NULL,'2022-08-13 13:57:36'),
 (5,1,'2022-08-18 14:48:54','SE/PRS/22-23/0004','2022-08-18 00:00:00','2022-08-18 00:00:00','5','ok','Raw Material','Approved','setmt1','2022-08-18 14:48:54',NULL,'2022-08-18 14:49:20'),
 (6,1,'2022-08-18 14:52:23','SE/PRS/22-23/0005','2022-08-18 00:00:00','2022-08-18 00:00:00','6','ok','Consumable Item ','Approved','setmt1','2022-08-18 14:52:23',NULL,'2022-08-18 14:52:41');
/*!40000 ALTER TABLE `purchasereqslip001wb` ENABLE KEYS */;


--
-- Definition of table `rawmaterialinspection001wb`
--

DROP TABLE IF EXISTS `rawmaterialinspection001wb`;
CREATE TABLE `rawmaterialinspection001wb` (
  `sl_no` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `rawmaterialslno` int(11) DEFAULT NULL,
  `itemcode` int(11) DEFAULT NULL,
  `itemname` varchar(250) DEFAULT NULL,
  `descrip` varchar(250) DEFAULT NULL,
  `qunty` varchar(250) DEFAULT NULL,
  `received_qty` int(30) DEFAULT NULL,
  `accepted_qty` int(30) DEFAULT NULL,
  `rejected_qty` int(30) DEFAULT NULL,
  `outstanding` int(30) DEFAULT NULL,
  `cucode` int(11) DEFAULT NULL,
  `cuname` varchar(250) DEFAULT NULL,
  `cudescrip` varchar(250) DEFAULT NULL,
  `cuqunty` varchar(250) DEFAULT NULL,
  `cureceived_qty` int(30) DEFAULT NULL,
  `cuaccepted_qty` int(30) DEFAULT NULL,
  `curejected_qty` int(30) DEFAULT NULL,
  `cuoutstanding` int(30) DEFAULT NULL,
  `cptcode` int(11) DEFAULT NULL,
  `cptname` varchar(250) DEFAULT NULL,
  `cptdescrip` varchar(250) DEFAULT NULL,
  `cptqunty` varchar(250) DEFAULT NULL,
  `cptreceived_qty` int(30) DEFAULT NULL,
  `cptaccepted_qty` int(30) DEFAULT NULL,
  `cptrejected_qty` int(30) DEFAULT NULL,
  `cptoutstanding` int(30) DEFAULT NULL,
  `prtcode` int(11) DEFAULT NULL,
  `prtname` varchar(250) DEFAULT NULL,
  `prtdescrip` varchar(250) DEFAULT NULL,
  `prtqunty` varchar(250) DEFAULT NULL,
  `prtreceived_qty` int(30) DEFAULT NULL,
  `prtaccepted_qty` int(30) DEFAULT NULL,
  `prtrejected_qty` int(30) DEFAULT NULL,
  `prtoutstanding` int(30) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `rawmaterialslno` (`rawmaterialslno`),
  CONSTRAINT `rawmaterialinspection001wb_ibfk_1` FOREIGN KEY (`rawmaterialslno`) REFERENCES `materialinspection001wb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rawmaterialinspection001wb`
--

/*!40000 ALTER TABLE `rawmaterialinspection001wb` DISABLE KEYS */;
INSERT INTO `rawmaterialinspection001wb` (`sl_no`,`unitdepartsl_no`,`rawmaterialslno`,`itemcode`,`itemname`,`descrip`,`qunty`,`received_qty`,`accepted_qty`,`rejected_qty`,`outstanding`,`cucode`,`cuname`,`cudescrip`,`cuqunty`,`cureceived_qty`,`cuaccepted_qty`,`curejected_qty`,`cuoutstanding`,`cptcode`,`cptname`,`cptdescrip`,`cptqunty`,`cptreceived_qty`,`cptaccepted_qty`,`cptrejected_qty`,`cptoutstanding`,`prtcode`,`prtname`,`prtdescrip`,`prtqunty`,`prtreceived_qty`,`prtaccepted_qty`,`prtrejected_qty`,`prtoutstanding`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,NULL,'','','',0,0,0,0,1,'paint','red','4',4,1,1,1,NULL,'','','',0,0,0,0,NULL,'','','',0,0,0,0,'setmt1','2022-08-22 16:34:17',NULL,NULL),
 (2,1,1,NULL,'','','',0,0,0,0,2,'steel','rod','3',3,1,1,1,NULL,'','','',0,0,0,0,NULL,'','','',0,0,0,0,'setmt1','2022-08-22 16:34:17',NULL,NULL),
 (3,1,1,NULL,'','','',0,0,0,0,3,'paint','blue','4',4,2,2,2,NULL,'','','',0,0,0,0,NULL,'','','',0,0,0,0,'setmt1','2022-08-22 16:34:17',NULL,NULL),
 (4,1,2,1,'paint','red','5',4,2,2,3,NULL,'','','',0,0,0,0,NULL,'','','',0,0,0,0,NULL,'','','',0,0,0,0,'setmt1','2022-08-22 16:36:24',NULL,NULL),
 (5,1,2,2,'steel','rod','2',2,1,1,1,NULL,'','','',0,0,0,0,NULL,'','','',0,0,0,0,NULL,'','','',0,0,0,0,'setmt1','2022-08-22 16:36:24',NULL,NULL),
 (6,1,2,3,'paint','blue','3',3,2,1,1,NULL,'','','',0,0,0,0,NULL,'','','',0,0,0,0,NULL,'','','',0,0,0,0,'setmt1','2022-08-22 16:36:24',NULL,NULL),
 (7,1,3,NULL,'','','',0,0,0,0,NULL,'','','',0,0,0,0,NULL,'','','',0,0,0,0,1,'paint','red','4',3,1,2,3,'setmt1','2022-08-22 16:38:43',NULL,NULL),
 (8,1,3,NULL,'','','',0,0,0,0,NULL,'','','',0,0,0,0,NULL,'','','',0,0,0,0,2,'cloth','waste','5',2,1,1,4,'setmt1','2022-08-22 16:38:43',NULL,NULL),
 (9,1,3,NULL,'','','',0,0,0,0,NULL,'','','',0,0,0,0,NULL,'','','',0,0,0,0,3,'steel','rod','6',4,2,2,4,'setmt1','2022-08-22 16:38:43',NULL,NULL),
 (10,1,4,NULL,'','','',0,0,0,0,NULL,'','','',0,0,0,0,1,'paint','red','4',3,2,1,2,NULL,'','','',0,0,0,0,'setmt1','2022-08-22 16:43:34',NULL,NULL),
 (11,1,4,NULL,'','','',0,0,0,0,NULL,'','','',0,0,0,0,2,'steel','rod','5',4,2,2,3,NULL,'','','',0,0,0,0,'setmt1','2022-08-22 16:43:34',NULL,NULL),
 (12,1,4,NULL,'','','',0,0,0,0,NULL,'','','',0,0,0,0,3,'cloth','waste','5',4,3,1,2,NULL,'','','',0,0,0,0,'setmt1','2022-08-22 16:43:34',NULL,NULL),
 (13,1,5,NULL,'','','',0,0,0,0,1,'paint','red','4',4,1,1,1,NULL,'','','',0,0,0,0,NULL,'','','',0,0,0,0,'setmt1','2022-08-22 16:56:24',NULL,NULL),
 (14,1,5,NULL,'','','',0,0,0,0,2,'steel','rod','3',3,1,1,1,NULL,'','','',0,0,0,0,NULL,'','','',0,0,0,0,'setmt1','2022-08-22 16:56:24',NULL,NULL),
 (15,1,5,NULL,'','','',0,0,0,0,3,'paint','blue','4',4,2,2,2,NULL,'','','',0,0,0,0,NULL,'','','',0,0,0,0,'setmt1','2022-08-22 16:56:24',NULL,NULL);
/*!40000 ALTER TABLE `rawmaterialinspection001wb` ENABLE KEYS */;


--
-- Definition of table `registration001mb`
--

DROP TABLE IF EXISTS `registration001mb`;
CREATE TABLE `registration001mb` (
  `registerid` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `domain` varchar(30) NOT NULL,
  `username` varchar(45) NOT NULL,
  `securityquestion` varchar(100) NOT NULL,
  `securityanswer` varchar(45) NOT NULL,
  `message` varchar(200) DEFAULT NULL,
  `status` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`registerid`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration001mb`
--

/*!40000 ALTER TABLE `registration001mb` DISABLE KEYS */;
INSERT INTO `registration001mb` (`registerid`,`unitdepartsl_no`,`firstname`,`lastname`,`domain`,`username`,`securityquestion`,`securityanswer`,`message`,`status`,`email`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (49,1,'sss','sss','Construction','tamil','What was your childhood nickname ?','ee','ee','In Progress','','','0000-00-00 00:00:00',NULL,NULL),
 (50,1,'abc','cde','Buying House','raj','In what city did you meet your spouse/significant other ?','aaa','aa','In Progress','','','0000-00-00 00:00:00',NULL,NULL),
 (51,1,'selvam S','R','Manufacturing','selvamRaja','In what city did you meet your spouse/significant other ?','dfg','sg','Authorization','selvamrsraja@gmail.com','','0000-00-00 00:00:00',NULL,NULL),
 (69,1,'latha','B','Manufacturing','latha','What is your oldest sibling\'s middle name ?','ghn','fd','New','latha0707hema@gmail.com','insertuser','2021-09-03 11:12:07',NULL,NULL),
 (70,1,'aaa','s','Calibration Labs','aaa','What school did you attend for sixth grade ?','dfs','sdfv','New','latha0707hema@gmail.com','insertuser','2021-09-03 11:19:04',NULL,NULL),
 (72,1,'fff','s','Construction','fff','What is the name of your favorite childhood friend ?','sss','xfdv','In Progress','hema0707latha@gmail.com','insertuser','2021-09-03 11:46:35','updateuser','2021-09-03 11:46:54'),
 (73,1,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:18:33',NULL,NULL),
 (74,1,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:19:15',NULL,NULL),
 (75,1,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:19:27',NULL,NULL),
 (76,1,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:19:28',NULL,NULL),
 (77,1,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:19:28',NULL,NULL),
 (78,1,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:19:54',NULL,NULL),
 (79,1,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:19:54',NULL,NULL),
 (80,1,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:19:54',NULL,NULL),
 (81,1,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:21:41',NULL,NULL),
 (82,1,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:21:42',NULL,NULL),
 (83,1,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:21:53',NULL,NULL),
 (84,1,'rizwana','s','Manufacturing','rizwana','What was your childhood nickname ?','ss','sss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:21:53',NULL,NULL),
 (85,1,'rizwana','Shahul Hameed','Manufacturing','rizwana','What was your childhood nickname ?','SS','ss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:25:01',NULL,NULL),
 (86,1,'rizwana','Shahul Hameed','Manufacturing','rizwana','What was your childhood nickname ?','SS','ss','In Progress','rizwana2622@gmail.com','insertuser','2021-09-06 13:25:17',NULL,NULL),
 (87,1,'chandrasekaran','L','Manufacturing','sekar','What was your childhood nickname ?','chandru','good','In Progress','kavichandran877@gmail.com','siva','2021-10-22 16:41:43',NULL,NULL),
 (88,1,'Aravinth','A','Manufacturing','Aravinth','What was your childhood nickname ?','kaka','good','In Progress','ajayaravind797@gmail.com','sekar','2021-12-23 12:02:13','Aravinth','2021-12-23 12:27:45'),
 (89,1,'Moorthy','P','Manufacturing','moorthy','What is the name of your favorite childhood friend ?','aravinth','excellent','In Progress','moorthyp2096@gmail.com','Aravinth','2021-12-23 12:32:25',NULL,NULL);
/*!40000 ALTER TABLE `registration001mb` ENABLE KEYS */;


--
-- Definition of table `role001mb`
--

DROP TABLE IF EXISTS `role001mb`;
CREATE TABLE `role001mb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `rolename` varchar(40) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role001mb`
--

/*!40000 ALTER TABLE `role001mb` DISABLE KEYS */;
INSERT INTO `role001mb` (`id`,`unitdepartsl_no`,`rolename`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'superadmin','siva','2021-09-06 13:18:33','siva','2021-09-06 13:18:33'),
 (2,1,'admin','siva','2021-09-06 13:18:33','siva','2021-09-06 13:18:33'),
 (3,1,'user','siva','2021-09-06 13:18:33','siva','2021-09-06 13:18:33'),
 (4,1,'guest','siva','2021-09-06 13:18:33','siva','2021-09-06 13:18:33');
/*!40000 ALTER TABLE `role001mb` ENABLE KEYS */;


--
-- Definition of table `rootcause001mb`
--

DROP TABLE IF EXISTS `rootcause001mb`;
CREATE TABLE `rootcause001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `sslno` int(11) NOT NULL,
  `brslno` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `details` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `sslno` (`sslno`),
  KEY `brslno` (`brslno`),
  CONSTRAINT `rootcause001mb_ibfk_1` FOREIGN KEY (`sslno`) REFERENCES `status001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `rootcause001mb_ibfk_2` FOREIGN KEY (`brslno`) REFERENCES `breakdown001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rootcause001mb`
--

/*!40000 ALTER TABLE `rootcause001mb` DISABLE KEYS */;
INSERT INTO `rootcause001mb` (`sl_no`,`unitdepartsl_no`,`sslno`,`brslno`,`name`,`details`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (2,1,2,2,'Self Life Experied','Experied','latha','2022-01-06 13:56:12',NULL,NULL),
 (3,1,1,3,'Rain water sprayed in plugs','careless mistake','latha','2022-01-06 14:02:07',NULL,NULL),
 (4,1,2,4,'Over loaded operation','careless mistake','latha','2022-01-06 14:05:51',NULL,NULL);
/*!40000 ALTER TABLE `rootcause001mb` ENABLE KEYS */;


--
-- Definition of table `safetyequwb001`
--

DROP TABLE IF EXISTS `safetyequwb001`;
CREATE TABLE `safetyequwb001` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `seNo` varchar(200) NOT NULL,
  `pur` varchar(100) NOT NULL,
  `stock` varchar(100) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `safetyequwb001`
--

/*!40000 ALTER TABLE `safetyequwb001` DISABLE KEYS */;
INSERT INTO `safetyequwb001` (`sl_no`,`unitdepartsl_no`,`seNo`,`pur`,`stock`,`remark`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (22,1,'asa','as','as','asd','siva','2022-05-24 10:32:34',NULL,NULL),
 (24,1,'dfgsd','dsfgdsfg','sdfgfsd','dfsgfdsgsdf','siva','2022-06-01 18:47:58',NULL,NULL),
 (25,1,'ffds','sadf','asf','asfd','setmt1','2022-06-14 12:45:12',NULL,NULL),
 (26,1,'mahi','ind','good','fine','setmt1','2022-06-14 17:28:16',NULL,NULL);
/*!40000 ALTER TABLE `safetyequwb001` ENABLE KEYS */;


--
-- Definition of table `sales001mb`
--

DROP TABLE IF EXISTS `sales001mb`;
CREATE TABLE `sales001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `procode` varchar(250) NOT NULL,
  `proname` varchar(250) NOT NULL,
  `prodescrip` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales001mb`
--

/*!40000 ALTER TABLE `sales001mb` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales001mb` ENABLE KEYS */;


--
-- Definition of table `salesinvoice001wb`
--

DROP TABLE IF EXISTS `salesinvoice001wb`;
CREATE TABLE `salesinvoice001wb` (
  `sl_no` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `custmr_slno` int(15) NOT NULL,
  `sInvoice` varchar(100) NOT NULL,
  `cDate` datetime NOT NULL,
  `custemer_code` varchar(100) NOT NULL,
  `consignee` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `pono` varchar(50) NOT NULL,
  `refno` varchar(50) DEFAULT NULL,
  `other_ref` varchar(50) NOT NULL,
  `dispatch_through` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `terms_delivery` varchar(100) NOT NULL,
  `supplier_from` varchar(150) NOT NULL,
  `HSN` varchar(50) NOT NULL,
  `due_on` datetime NOT NULL,
  `status_slno` int(15) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `custmr_slno` (`custmr_slno`),
  CONSTRAINT `salesinvoice001wb_ibfk_1` FOREIGN KEY (`custmr_slno`) REFERENCES `custemerregistration001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesinvoice001wb`
--

/*!40000 ALTER TABLE `salesinvoice001wb` DISABLE KEYS */;
INSERT INTO `salesinvoice001wb` (`sl_no`,`unitdepartsl_no`,`custmr_slno`,`sInvoice`,`cDate`,`custemer_code`,`consignee`,`date`,`pono`,`refno`,`other_ref`,`dispatch_through`,`destination`,`terms_delivery`,`supplier_from`,`HSN`,`due_on`,`status_slno`,`remarks`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (4,1,3,'ST/22-23/00000','2022-08-09 18:58:15','NIT','2','2022-08-09 18:58:15','GST/2708/22-23/0000','hh','ooo','kkk','ll','xvxx','xsx ','dwsd','2022-08-09 18:58:15',NULL,NULL,'setmt1','2022-08-09 18:58:15',NULL,NULL);
/*!40000 ALTER TABLE `salesinvoice001wb` ENABLE KEYS */;


--
-- Definition of table `salesitem001mb`
--

DROP TABLE IF EXISTS `salesitem001mb`;
CREATE TABLE `salesitem001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `procode` varchar(250) NOT NULL,
  `proname` varchar(250) NOT NULL,
  `prodescrip` varchar(250) NOT NULL,
  `proqunty` varchar(250) NOT NULL,
  `prounitamount` int(50) NOT NULL,
  `prouom` varchar(250) NOT NULL,
  `progst` int(50) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesitem001mb`
--

/*!40000 ALTER TABLE `salesitem001mb` DISABLE KEYS */;
INSERT INTO `salesitem001mb` (`sl_no`,`unitdepartsl_no`,`procode`,`proname`,`prodescrip`,`proqunty`,`prounitamount`,`prouom`,`progst`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'IC0000','gate','steel','1',200,'Kgs',18,'setmt1','2022-07-18 17:24:41',NULL,NULL),
 (2,1,'IC0001','steelsheet','steel','1',400,'Kgs',18,'setmt1','2022-07-18 17:25:11',NULL,NULL),
 (3,1,'IC0002','paint','red','1',500,'Ltrs',18,'setmt1','2022-07-19 15:00:06',NULL,NULL);
/*!40000 ALTER TABLE `salesitem001mb` ENABLE KEYS */;


--
-- Definition of table `salesorder001wb`
--

DROP TABLE IF EXISTS `salesorder001wb`;
CREATE TABLE `salesorder001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `porder_slno` int(11) NOT NULL,
  `invoice_no` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `delivery_note` varchar(100) NOT NULL,
  `mode_pay` varchar(50) NOT NULL,
  `Ref_no_date` varchar(50) NOT NULL,
  `other_ref` varchar(50) NOT NULL,
  `buyer_order_no` varchar(50) NOT NULL,
  `buyer_date` date NOT NULL,
  `dispatch_doc_no` varchar(50) NOT NULL,
  `delivery_note_date` varchar(50) NOT NULL,
  `dispatch_through` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `bill_of_lading` varchar(50) NOT NULL,
  `motorvehicle_no` varchar(50) NOT NULL,
  `terms_delivery` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `porder_slno` (`porder_slno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesorder001wb`
--

/*!40000 ALTER TABLE `salesorder001wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesorder001wb` ENABLE KEYS */;


--
-- Definition of table `spares001mb`
--

DROP TABLE IF EXISTS `spares001mb`;
CREATE TABLE `spares001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `msslno` int(11) NOT NULL,
  `sslno` int(11) NOT NULL,
  `spares` varchar(50) NOT NULL,
  `sparescost` int(11) DEFAULT NULL,
  `specification` varchar(50) NOT NULL,
  `leadtime` datetime DEFAULT NULL,
  `minimumstocklevel` int(11) DEFAULT '0',
  `reorderlevel` int(11) DEFAULT '0',
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `msslno` (`msslno`),
  KEY `sslno` (`sslno`),
  CONSTRAINT `spares001mb_ibfk_1` FOREIGN KEY (`msslno`) REFERENCES `machine001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `spares001mb_ibfk_2` FOREIGN KEY (`sslno`) REFERENCES `status001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spares001mb`
--

/*!40000 ALTER TABLE `spares001mb` DISABLE KEYS */;
INSERT INTO `spares001mb` (`sl_no`,`unitdepartsl_no`,`msslno`,`sslno`,`spares`,`sparescost`,`specification`,`leadtime`,`minimumstocklevel`,`reorderlevel`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (2,1,2,2,'Nozzle',2000,'8mm','2021-09-06 00:00:00',29,5,'rizwana','2021-09-06 13:18:33','siva','2022-03-07 12:05:07'),
 (7,1,6,1,'Belt',500,'standard','2021-09-06 00:00:00',2,4,'Aravinth','2022-01-04 17:10:37','siva','2022-03-04 10:07:13');
/*!40000 ALTER TABLE `spares001mb` ENABLE KEYS */;


--
-- Definition of table `staff001mb`
--

DROP TABLE IF EXISTS `staff001mb`;
CREATE TABLE `staff001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `staff_code` varchar(100) NOT NULL,
  `status` char(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff001mb`
--

/*!40000 ALTER TABLE `staff001mb` DISABLE KEYS */;
INSERT INTO `staff001mb` (`sl_no`,`unitdepartsl_no`,`name`,`staff_code`,`status`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (2,1,'naresh','2712','active','siva','2022-05-17 19:02:49','siva','2022-05-18 09:40:43'),
 (3,1,'naresh','1234','active','siva','2022-05-17 19:08:41',NULL,NULL),
 (4,1,'naresh','1234','active','siva','2022-05-17 19:13:35',NULL,NULL),
 (5,1,'naresh','1234','active','siva','2022-05-17 19:17:53',NULL,NULL),
 (6,1,'naresh','12456','active','siva','2022-05-17 19:18:23','siva','2022-05-18 10:32:25'),
 (7,1,'naresh','123336','leave','siva','2022-05-18 09:40:18',NULL,NULL),
 (8,1,'kumar','1819','active','siva','2022-05-18 09:41:34',NULL,NULL);
/*!40000 ALTER TABLE `staff001mb` ENABLE KEYS */;


--
-- Definition of table `status001mb`
--

DROP TABLE IF EXISTS `status001mb`;
CREATE TABLE `status001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `code_group` int(11) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `status` char(5) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status001mb`
--

/*!40000 ALTER TABLE `status001mb` DISABLE KEYS */;
INSERT INTO `status001mb` (`sl_no`,`unitdepartsl_no`,`code_group`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`,`status`,`name`) VALUES 
 (1,1,1,'Moorthy','2021-09-06 13:18:33','setmt1','2022-07-19 19:00:45','A','Approved'),
 (2,1,1,'Moorthy','2021-09-06 13:18:33','setmt1','2022-07-19 19:00:51','PA','Partially Approved'),
 (4,1,2,'Aravinth','2022-01-04 17:28:03','setmt1','2022-07-19 19:01:05','H','Hold'),
 (5,1,2,'Aravinth','2022-01-04 17:29:17','setmt1','2022-07-19 19:01:15','R','Reject'),
 (6,1,3,'Aravinth','2022-01-04 17:29:41','setmt1','2022-07-19 19:01:30','S','Submit'),
 (7,1,3,'Aravinth','2022-01-04 17:30:07','setmt1','2022-07-19 19:01:43','SA','Save'),
 (8,1,4,'setmt1','2022-08-03 15:44:30',NULL,NULL,'A','ACTIVE'),
 (9,1,4,'setmt1','2022-08-03 15:45:23',NULL,NULL,'I','IN ACTIVE'),
 (10,12,1,'Moorthy','2021-09-06 13:18:33','setmt1','2022-07-19 19:00:45','A','Approved'),
 (11,12,1,'Moorthy','2021-09-06 13:18:33','setmt1','2022-07-19 19:00:51','PA','Partially Approved'),
 (12,12,2,'Aravinth','2022-01-04 17:28:03','setmt1','2022-07-19 19:01:05','H','Hold'),
 (13,12,2,'Aravinth','2022-01-04 17:29:17','setmt1','2022-07-19 19:01:15','R','Reject'),
 (14,12,3,'Aravinth','2022-01-04 17:29:41','setmt1','2022-07-19 19:01:30','S','Submit'),
 (15,12,3,'Aravinth','2022-01-04 17:30:07','setmt1','2022-07-19 19:01:43','SA','Save'),
 (16,12,4,'setmt1','2022-08-03 15:44:30',NULL,NULL,'A','ACTIVE'),
 (17,12,4,'setmt1','2022-08-03 15:45:23',NULL,NULL,'I','IN ACTIVE');
/*!40000 ALTER TABLE `status001mb` ENABLE KEYS */;


--
-- Definition of table `statutory001wb`
--

DROP TABLE IF EXISTS `statutory001wb`;
CREATE TABLE `statutory001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `bslno` int(11) NOT NULL,
  `ecode` varchar(50) NOT NULL,
  `ename` varchar(50) NOT NULL,
  `escheckbox` varchar(200) NOT NULL,
  `esno` varchar(100) NOT NULL,
  `escheme` varchar(100) NOT NULL,
  `esstartdate` datetime NOT NULL,
  `esenddate` datetime NOT NULL,
  `pfcheckbox` varchar(200) NOT NULL,
  `pfno` varchar(100) NOT NULL,
  `pscheme` varchar(100) NOT NULL,
  `pfstartdate` datetime NOT NULL,
  `pfenddate` datetime NOT NULL,
  `inscheckbox` varchar(200) NOT NULL,
  `insurno` varchar(100) NOT NULL,
  `inscheme` varchar(100) NOT NULL,
  `instartdate` datetime NOT NULL,
  `insenddate` datetime NOT NULL,
  `medicheckbox` varchar(200) NOT NULL,
  `mediclno` varchar(100) NOT NULL,
  `mscheme` varchar(100) NOT NULL,
  `mstartdate` datetime NOT NULL,
  `menddate` datetime NOT NULL,
  `bankcheckbox` varchar(200) NOT NULL,
  `acholdername` varchar(100) NOT NULL,
  `accno` varchar(100) NOT NULL,
  `ifsccode` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `bslno` (`bslno`),
  CONSTRAINT `statutory001wb_ibfk_1` FOREIGN KEY (`bslno`) REFERENCES `bank001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statutory001wb`
--

/*!40000 ALTER TABLE `statutory001wb` DISABLE KEYS */;
INSERT INTO `statutory001wb` (`sl_no`,`unitdepartsl_no`,`bslno`,`ecode`,`ename`,`escheckbox`,`esno`,`escheme`,`esstartdate`,`esenddate`,`pfcheckbox`,`pfno`,`pscheme`,`pfstartdate`,`pfenddate`,`inscheckbox`,`insurno`,`inscheme`,`instartdate`,`insenddate`,`medicheckbox`,`mediclno`,`mscheme`,`mstartdate`,`menddate`,`bankcheckbox`,`acholdername`,`accno`,`ifsccode`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,'12345','Naresh','Enable','123456','yes','2022-06-21 00:00:00','2022-06-21 00:00:00','Enable','123456','yes','2022-06-21 00:00:00','2022-06-21 00:00:00','Enable','123456','yes','2022-06-21 00:00:00','2022-06-21 00:00:00','Enable','123456','yes','2022-06-21 00:00:00','2022-06-21 00:00:00','Enable','Nareshkumar','27121997','idib00k055','setmt1','2022-06-21 16:16:22',NULL,NULL),
 (2,1,1,'123456','Naresh','Disable','NA','NA','2001-10-01 00:00:00','2001-10-01 00:00:00','Disable','NA','NA','2001-10-01 00:00:00','2001-10-01 00:00:00','Disable','NA','NA','2001-10-01 00:00:00','2001-10-01 00:00:00','Disable','NA','NA','2001-10-01 00:00:00','2001-10-01 00:00:00','Enable','Naresh','123456','123456','setmt1','2022-06-21 17:32:15',NULL,NULL),
 (4,1,1,'123456','Naresh','Disable','NA','NA','2000-01-01 00:00:00','2000-01-01 00:00:00','Disable','NA','NA','2000-01-01 00:00:00','2000-01-01 00:00:00','Disable','NA','NA','2000-01-01 00:00:00','2000-01-01 00:00:00','Disable','NA','NA','2000-01-01 00:00:00','2000-01-01 00:00:00','Enable','naresh','123456','1234569','setmt1','2022-06-21 17:36:35',NULL,NULL),
 (5,1,1,'123456','Naresh','Enable','1234566','yes','2022-06-21 00:00:00','2022-06-21 00:00:00','Enable','1234566','yes','2022-06-21 00:00:00','2022-06-21 00:00:00','Enable','1234566','yes','2022-06-21 00:00:00','2022-06-21 00:00:00','Enable','1234566','yes','2022-06-21 00:00:00','2022-06-21 00:00:00','Enable','Naresh','12346987','1234455','setmt1','2022-06-21 17:50:44',NULL,NULL),
 (6,1,2,'123456','Naresh','Disable','NA','NA','0000-00-00 00:00:00','0000-00-00 00:00:00','Disable','NA','NA','0000-00-00 00:00:00','0000-00-00 00:00:00','Disable','NA','NA','0000-00-00 00:00:00','0000-00-00 00:00:00','Disable','NA','NA','0000-00-00 00:00:00','0000-00-00 00:00:00','Enable','naresh','123456789','1234569','setmt1','2022-06-22 10:20:48',NULL,NULL);
/*!40000 ALTER TABLE `statutory001wb` ENABLE KEYS */;


--
-- Definition of table `stock001wb`
--

DROP TABLE IF EXISTS `stock001wb`;
CREATE TABLE `stock001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `cname` varchar(250) NOT NULL,
  `proname` varchar(250) NOT NULL,
  `recdate` datetime DEFAULT NULL,
  `outdate` datetime DEFAULT NULL,
  `loc` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock001wb`
--

/*!40000 ALTER TABLE `stock001wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock001wb` ENABLE KEYS */;


--
-- Definition of table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `StudentID` int(10) unsigned NOT NULL,
  `unitdepartsl_no` int(11) NOT NULL,
  `FirstName` varchar(25) DEFAULT NULL,
  `LastName` varchar(25) NOT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;


--
-- Definition of table `suppchecklist001mb`
--

DROP TABLE IF EXISTS `suppchecklist001mb`;
CREATE TABLE `suppchecklist001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `activitysl_no` int(11) NOT NULL,
  `checkpoints_name` varchar(250) NOT NULL,
  `status` char(1) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `activitysl_no` (`activitysl_no`),
  CONSTRAINT `suppchecklist001mb_ibfk_1` FOREIGN KEY (`activitysl_no`) REFERENCES `activity001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppchecklist001mb`
--

/*!40000 ALTER TABLE `suppchecklist001mb` DISABLE KEYS */;
INSERT INTO `suppchecklist001mb` (`sl_no`,`unitdepartsl_no`,`activitysl_no`,`checkpoints_name`,`status`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,'Do the purchase documents clearly describe the item ordered including the material specification, technical data, test certificates and delivery requirements?','A','siva','2022-03-21 16:29:33',NULL,NULL),
 (2,1,2,'Are the orders made only on listed suppliers?','I','siva','2022-03-21 16:36:43','siva','2022-03-21 16:46:09'),
 (3,1,3,'Do the lists tally?','A','siva','2022-03-22 09:33:32',NULL,NULL),
 (4,1,4,'Are the 2nd tier suppliers approved by SMPL?','A','siva','2022-03-22 09:33:51',NULL,NULL),
 (5,1,5,'Do the specification tally?','A','siva','2022-03-22 09:34:20',NULL,NULL),
 (6,1,6,'Do the incoming inspection plan contain all the SMPL\'s requirement, checking method and checking frequency?','A','siva','2022-03-22 09:34:57',NULL,NULL),
 (7,1,7,'Are the records, complete in all respects and products, when cross checked conforming to plan?','A','siva','2022-03-22 09:36:25',NULL,NULL),
 (8,1,8,'Are they appropriate, accurate and calibrated?','A','siva','2022-03-22 09:37:07',NULL,NULL),
 (9,1,9,'Are the 1S, 2S and 3S activities of raw material storage / handling of acceptable standard?','A','siva','2022-03-22 09:37:55',NULL,NULL),
 (10,1,10,'Are the actions appropriate, timely and completed?','A','siva','2022-03-22 09:38:30',NULL,NULL),
 (11,1,11,'Is the 5S system practiced effectively?','A','siva','2022-03-22 09:40:19',NULL,NULL),
 (12,1,12,'Are the drawings are current as per latest revision?','A','siva','2022-03-22 09:41:02',NULL,NULL),
 (13,1,13,'Are the operation standards derived from control plan?','A','siva','2022-03-22 09:41:49',NULL,NULL),
 (14,1,13,'Do the operation standards complete, specifying what, when, where and how of controlling quality?','A','siva','2022-03-22 09:42:12',NULL,NULL),
 (15,1,13,'Do the operations standards correspond to the latest revision of the drawing?','A','siva','2022-03-22 09:42:41',NULL,NULL),
 (16,1,14,'Do the supplier practice 1st off and patrol inspection and records maintained?','A','siva','2022-03-22 09:43:32',NULL,NULL),
 (17,1,15,'Do the operators check components periodically?','A','siva','2022-03-22 09:44:32',NULL,NULL),
 (18,1,15,'Have the operators been trained for the job?','A','siva','2022-03-22 09:44:53',NULL,NULL),
 (19,1,16,'Are the gauges / instruments used adequate and appropriate?','A','siva','2022-03-22 09:46:46',NULL,NULL),
 (20,1,16,'Are they being calibrated on-time?','A','siva','2022-03-22 09:48:56',NULL,NULL),
 (21,1,17,'Are the jigs & fixtures used are of acceptable standard and properly maintained?','A','siva','2022-03-22 09:51:27',NULL,NULL),
 (22,1,17,'Are there any calibration systems for checking jigs and fixture and records maintained?','A','siva','2022-03-22 09:52:09',NULL,NULL),
 (23,1,18,'Are the containers used to achieve zero counting, zero transfer and zero damage?','A','siva','2022-03-22 10:37:48',NULL,NULL),
 (24,1,19,'Do the supplier have the data of critical major characteristics?','A','siva','2022-03-22 10:38:36',NULL,NULL),
 (25,1,19,'Has the supplier assessed a Cpk value for critical and major characteristics and are greater than 1.67?','A','siva','2022-03-22 10:38:50',NULL,NULL),
 (26,1,19,'Are the critical and major characteristics process monitored through control charts?','A','siva','2022-03-22 10:39:09',NULL,NULL),
 (27,1,19,'Has the supplier got a plan for improving not capable processes?','A','siva','2022-03-22 10:39:28',NULL,NULL),
 (28,1,20,'Are all rejections identified, segregated reasons recorded and disposed appropriately?','A','siva','2022-03-22 10:40:10',NULL,NULL),
 (29,1,20,'Has the supplier implemented the prioritised reduction plan for the rejections?','A','siva','2022-03-22 10:40:26',NULL,NULL),
 (30,1,21,'Are the special processes done at SMPL approved sources?','A','siva','2022-03-22 10:41:15',NULL,NULL),
 (31,1,21,'Are the special process parameters are controlled?','A','siva','2022-03-22 10:41:29',NULL,NULL),
 (32,1,21,'Are the quality checks defined?','A','siva','2022-03-22 10:41:45',NULL,NULL);
/*!40000 ALTER TABLE `suppchecklist001mb` ENABLE KEYS */;


--
-- Definition of table `supplierassessment001wb`
--

DROP TABLE IF EXISTS `supplierassessment001wb`;
CREATE TABLE `supplierassessment001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `supp_slno` int(11) NOT NULL,
  `assess_slno` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `supp_slno` (`supp_slno`),
  KEY `assess_slno` (`assess_slno`),
  CONSTRAINT `supplierassessment001wb_ibfk_1` FOREIGN KEY (`supp_slno`) REFERENCES `supplierregistration001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `supplierassessment001wb_ibfk_2` FOREIGN KEY (`assess_slno`) REFERENCES `assessmentcriteria001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplierassessment001wb`
--

/*!40000 ALTER TABLE `supplierassessment001wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplierassessment001wb` ENABLE KEYS */;


--
-- Definition of table `supplierattendancereport001wb`
--

DROP TABLE IF EXISTS `supplierattendancereport001wb`;
CREATE TABLE `supplierattendancereport001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `supregsl_no` int(11) NOT NULL,
  `trainingsl_no` int(11) NOT NULL,
  `trainer_name` varchar(150) NOT NULL,
  `trainee_name` varchar(150) NOT NULL,
  `trainee_role` varchar(150) NOT NULL,
  `attendancestatus` char(1) NOT NULL,
  `date` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `supregsl_no` (`supregsl_no`),
  KEY `trainingsl_no` (`trainingsl_no`),
  CONSTRAINT `supplierattendancereport001wb_ibfk_1` FOREIGN KEY (`supregsl_no`) REFERENCES `supplierregistration001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `supplierattendancereport001wb_ibfk_2` FOREIGN KEY (`trainingsl_no`) REFERENCES `trainingplan001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplierattendancereport001wb`
--

/*!40000 ALTER TABLE `supplierattendancereport001wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplierattendancereport001wb` ENABLE KEYS */;


--
-- Definition of table `supplieraudit001wb`
--

DROP TABLE IF EXISTS `supplieraudit001wb`;
CREATE TABLE `supplieraudit001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `supregslno` int(11) NOT NULL,
  `status` char(1) NOT NULL,
  `date` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `supregslno` (`supregslno`),
  CONSTRAINT `supplieraudit001wb_ibfk_1` FOREIGN KEY (`supregslno`) REFERENCES `supplierregistration001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplieraudit001wb`
--

/*!40000 ALTER TABLE `supplieraudit001wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplieraudit001wb` ENABLE KEYS */;


--
-- Definition of table `suppliercontact001wb`
--

DROP TABLE IF EXISTS `suppliercontact001wb`;
CREATE TABLE `suppliercontact001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `suppliersl_no` int(50) DEFAULT NULL,
  `pname` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `level` varchar(200) NOT NULL,
  `mnumber` int(15) NOT NULL,
  `altmnumber` int(15) NOT NULL,
  `mailid` varchar(200) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `suppliersl_no` (`suppliersl_no`),
  CONSTRAINT `suppliercontact001wb_ibfk_1` FOREIGN KEY (`suppliersl_no`) REFERENCES `supplierregistration001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliercontact001wb`
--

/*!40000 ALTER TABLE `suppliercontact001wb` DISABLE KEYS */;
INSERT INTO `suppliercontact001wb` (`sl_no`,`unitdepartsl_no`,`suppliersl_no`,`pname`,`designation`,`department`,`level`,`mnumber`,`altmnumber`,`mailid`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,10,'Naresh','sadf','sadf','sadf',123456,123456,'sadf','setmt1','2022-08-03 10:12:26',NULL,NULL),
 (2,1,11,'Aravinth','adsf','asdf','3',123456,123456,'sadf','setmt1','2022-08-03 10:54:43',NULL,NULL),
 (3,1,12,'chekar','asdf','sadf','4',123456,123456,'asdf','setmt1','2022-08-03 10:58:44',NULL,NULL),
 (4,1,13,'Moorhty','asd','sad','4',123456,123456,'asdf','setmt1','2022-08-03 10:59:41',NULL,NULL);
/*!40000 ALTER TABLE `suppliercontact001wb` ENABLE KEYS */;


--
-- Definition of table `supplierquotation001wb`
--

DROP TABLE IF EXISTS `supplierquotation001wb`;
CREATE TABLE `supplierquotation001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `supplier_slno` int(11) NOT NULL,
  `supliername` varchar(150) NOT NULL,
  `supliertype` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `quotation_no` varchar(150) NOT NULL,
  `quotation_date` datetime NOT NULL,
  `validity` datetime NOT NULL,
  `prsno` int(11) DEFAULT NULL,
  `person_name` int(11) DEFAULT NULL,
  `desgnation` varchar(100) NOT NULL,
  `mnumber` int(15) NOT NULL,
  `mobile` int(15) NOT NULL,
  `level` varchar(30) NOT NULL,
  `department` varchar(30) NOT NULL,
  `mailid` varchar(30) NOT NULL,
  `terms_condition` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `remarks` varchar(200) DEFAULT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `originalfilename` varchar(200) DEFAULT NULL,
  `filepath` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `supplier_slno` (`supplier_slno`),
  KEY `prsno` (`prsno`),
  CONSTRAINT `supplierquotation001wb_ibfk_1` FOREIGN KEY (`supplier_slno`) REFERENCES `supplierregistration001mb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `supplierquotation001wb_ibfk_2` FOREIGN KEY (`prsno`) REFERENCES `purchasereqslip001wb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplierquotation001wb`
--

/*!40000 ALTER TABLE `supplierquotation001wb` DISABLE KEYS */;
INSERT INTO `supplierquotation001wb` (`sl_no`,`unitdepartsl_no`,`supplier_slno`,`supliername`,`supliertype`,`address`,`quotation_no`,`quotation_date`,`validity`,`prsno`,`person_name`,`desgnation`,`mnumber`,`mobile`,`level`,`department`,`mailid`,`terms_condition`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`,`status`,`remarks`,`filename`,`originalfilename`,`filepath`) VALUES 
 (1,1,13,'chnnaisilks','Part','chennai','1','2022-08-13 00:00:00','2022-08-13 00:00:00',4,4,'asd',123456,123456,'4','sad','asdf','GST charges extra as per HSN/SAC  Code','setmt1','2022-08-13 13:58:55',NULL,'2022-08-13 14:00:27','Approved','ok','C:\\fakepath\\download.jpg','1660379335584_download.jpg',NULL),
 (2,1,12,'pothis','Child Part','madurai','2','2022-08-13 00:00:00','2022-08-13 00:00:00',3,3,'asdf',123456,123456,'4','sadf','asdf','GST charges extra as per HSN/SAC  Code','setmt1','2022-08-13 13:59:21',NULL,'2022-08-13 14:00:34','Approved','ok','C:\\fakepath\\download.jpg','1660379361333_download.jpg',NULL),
 (3,1,11,'sraths','Consumable Item','karu','3','2022-08-13 00:00:00','2022-08-13 00:00:00',1,2,'adsf',123456,123456,'3','asdf','sadf','GST charges extra as per HSN/SAC  Code','setmt1','2022-08-13 13:59:52',NULL,'2022-08-13 14:00:40','Approved','ok','C:\\fakepath\\download.jpg','1660379392694_download.jpg',NULL),
 (4,1,10,'Mangal','Raw Material','Trichy','4','2022-08-13 00:00:00','2022-08-13 00:00:00',2,1,'sadf',123456,123456,'sadf','sadf','sadf','GST charges extra as per HSN/SAC  Code','setmt1','2022-08-13 14:00:16',NULL,'2022-08-13 14:00:46','Approved','ok','C:\\fakepath\\download.jpg','1660379416565_download.jpg',NULL);
/*!40000 ALTER TABLE `supplierquotation001wb` ENABLE KEYS */;


--
-- Definition of table `supplierquotationitems001wb`
--

DROP TABLE IF EXISTS `supplierquotationitems001wb`;
CREATE TABLE `supplierquotationitems001wb` (
  `sl_no` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `suplierslno` int(11) DEFAULT NULL,
  `itemcode` int(11) DEFAULT NULL,
  `itemname` varchar(250) DEFAULT NULL,
  `descrip` varchar(250) DEFAULT NULL,
  `qunty` varchar(250) DEFAULT NULL,
  `uom` varchar(250) DEFAULT NULL,
  `unitrate` varchar(250) DEFAULT NULL,
  `totalamount` int(50) DEFAULT NULL,
  `cucode` int(11) DEFAULT NULL,
  `cuname` varchar(250) DEFAULT NULL,
  `cudescrip` varchar(250) DEFAULT NULL,
  `cuqunty` varchar(250) DEFAULT NULL,
  `cuom` varchar(250) DEFAULT NULL,
  `cunitrate` varchar(250) DEFAULT NULL,
  `cutotalamount` int(50) DEFAULT NULL,
  `cptcode` int(11) DEFAULT NULL,
  `cptname` varchar(250) DEFAULT NULL,
  `cptdescrip` varchar(250) DEFAULT NULL,
  `cptqunty` varchar(250) DEFAULT NULL,
  `cptuom` varchar(250) DEFAULT NULL,
  `cptunitrate` varchar(250) DEFAULT NULL,
  `cpttotalamount` int(50) DEFAULT NULL,
  `prtcode` int(11) DEFAULT NULL,
  `prtmname` varchar(250) DEFAULT NULL,
  `prtdescrip` varchar(250) DEFAULT NULL,
  `prtqunty` varchar(250) DEFAULT NULL,
  `prtuom` varchar(250) DEFAULT NULL,
  `prtunitrate` varchar(250) DEFAULT NULL,
  `prttotalamount` int(50) DEFAULT NULL,
  `hsn` varchar(250) DEFAULT NULL,
  `chsn` varchar(250) DEFAULT NULL,
  `cpthsn` varchar(250) DEFAULT NULL,
  `prthsn` varchar(250) DEFAULT NULL,
  `insert_user` varchar(40) DEFAULT NULL,
  `insert_datetime` datetime DEFAULT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `suplierslno` (`suplierslno`),
  CONSTRAINT `supplierquotationitems001wb_ibfk_1` FOREIGN KEY (`suplierslno`) REFERENCES `supplierquotation001wb` (`sl_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplierquotationitems001wb`
--

/*!40000 ALTER TABLE `supplierquotationitems001wb` DISABLE KEYS */;
INSERT INTO `supplierquotationitems001wb` (`sl_no`,`unitdepartsl_no`,`suplierslno`,`itemcode`,`itemname`,`descrip`,`qunty`,`uom`,`unitrate`,`totalamount`,`cucode`,`cuname`,`cudescrip`,`cuqunty`,`cuom`,`cunitrate`,`cutotalamount`,`cptcode`,`cptname`,`cptdescrip`,`cptqunty`,`cptuom`,`cptunitrate`,`cpttotalamount`,`prtcode`,`prtmname`,`prtdescrip`,`prtqunty`,`prtuom`,`prtunitrate`,`prttotalamount`,`hsn`,`chsn`,`cpthsn`,`prthsn`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,NULL,'','','','','',NULL,NULL,'','','','','',NULL,NULL,'','','','','',NULL,1,'paint','red','4','red','100',400,'','','','ss','setmt1','2022-08-13 13:58:55',NULL,NULL),
 (2,1,1,NULL,'','','','','',NULL,NULL,'','','','','',NULL,NULL,'','','','','',NULL,2,'cloth','waste','5','waste','200',1000,'','','','33','setmt1','2022-08-13 13:58:55',NULL,NULL),
 (3,1,1,NULL,'','','','','',NULL,NULL,'','','','','',NULL,NULL,'','','','','',NULL,3,'steel','rod','6','rod','300',1800,'','','','33','setmt1','2022-08-13 13:58:55',NULL,NULL),
 (4,1,2,NULL,'','','','','',NULL,NULL,'','','','','',NULL,1,'paint','red','4','red','100',400,NULL,'','','','','',NULL,'','','aa','','setmt1','2022-08-13 13:59:21',NULL,NULL),
 (5,1,2,NULL,'','','','','',NULL,NULL,'','','','','',NULL,2,'steel','rod','5','rod','200',1000,NULL,'','','','','',NULL,'','','aaa','','setmt1','2022-08-13 13:59:21',NULL,NULL),
 (6,1,2,NULL,'','','','','',NULL,NULL,'','','','','',NULL,3,'cloth','waste','5','waste','300',1500,NULL,'','','','','',NULL,'','','ss','','setmt1','2022-08-13 13:59:21',NULL,NULL),
 (7,1,3,1,'paint','red','5','red','100',500,NULL,'','','','','',NULL,NULL,'','','','','',NULL,NULL,'','','','','',NULL,'111','','','','setmt1','2022-08-13 13:59:52',NULL,NULL),
 (8,1,3,2,'steel','rod','2','rod','200',400,NULL,'','','','','',NULL,NULL,'','','','','',NULL,NULL,'','','','','',NULL,'22','','','','setmt1','2022-08-13 13:59:52',NULL,NULL),
 (9,1,3,3,'paint','blue','3','blue','300',900,NULL,'','','','','',NULL,NULL,'','','','','',NULL,NULL,'','','','','',NULL,'11','','','','setmt1','2022-08-13 13:59:52',NULL,NULL),
 (10,1,4,NULL,'','','','','',NULL,1,'paint','red','4','red','100',400,NULL,'','','','','',NULL,NULL,'','','','','',NULL,'','asd','','','setmt1','2022-08-13 14:00:16',NULL,NULL),
 (11,1,4,NULL,'','','','','',NULL,2,'steel','rod','3','rod','300',900,NULL,'','','','','',NULL,NULL,'','','','','',NULL,'','55','','','setmt1','2022-08-13 14:00:16',NULL,NULL),
 (12,1,4,NULL,'','','','','',NULL,3,'paint','blue','4','blue','400',1600,NULL,'','','','','',NULL,NULL,'','','','','',NULL,'','22','','','setmt1','2022-08-13 14:00:16',NULL,NULL);
/*!40000 ALTER TABLE `supplierquotationitems001wb` ENABLE KEYS */;


--
-- Definition of table `supplierregistration001mb`
--

DROP TABLE IF EXISTS `supplierregistration001mb`;
CREATE TABLE `supplierregistration001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `supplier_name` varchar(40) NOT NULL,
  `supplier_code` varchar(40) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact` varchar(40) NOT NULL,
  `gstin` varchar(30) NOT NULL,
  `certification` varchar(50) NOT NULL,
  `nature` varchar(50) NOT NULL,
  `supcategory` varchar(255) DEFAULT NULL,
  `product_desc` varchar(100) NOT NULL,
  `reputed_cust` varchar(50) NOT NULL,
  `concern` varchar(100) NOT NULL,
  `other_Info` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplierregistration001mb`
--

/*!40000 ALTER TABLE `supplierregistration001mb` DISABLE KEYS */;
INSERT INTO `supplierregistration001mb` (`sl_no`,`unitdepartsl_no`,`supplier_name`,`supplier_code`,`address`,`contact`,`gstin`,`certification`,`nature`,`supcategory`,`product_desc`,`reputed_cust`,`concern`,`other_Info`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`,`website`) VALUES 
 (10,1,'Mangal','SE/SC0000','Trichy','1233456+6','sadf','sadf','Manufacturer','Raw Material','asdf','asdf','f','asdf','setmt1','2022-08-03 10:12:26',NULL,NULL,'sdfa'),
 (11,1,'sraths','SE/SC0001','karu','afd','asdf','asasd','Authorized Dealer','Consumable Item','sdf','asfd','asdf','sdf','setmt1','2022-08-03 10:54:43',NULL,NULL,'asdf'),
 (12,1,'pothis','SE/SC0002','madurai','sadf','sadf','asdf','Distributor','Child Part','asdf','asdf','sdaf','asdf','setmt1','2022-08-03 10:58:44',NULL,NULL,'sadf'),
 (13,1,'chnnaisilks','SE/SC0003','chennai','asdf','asdf','sadf','Stockist','Part','asdf','asdf','asdf','sadf','setmt1','2022-08-03 10:59:41',NULL,NULL,'asdf');
/*!40000 ALTER TABLE `supplierregistration001mb` ENABLE KEYS */;


--
-- Definition of table `supplierreport001wb`
--

DROP TABLE IF EXISTS `supplierreport001wb`;
CREATE TABLE `supplierreport001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `supregsl_no` int(11) NOT NULL,
  `activesl_no` int(11) NOT NULL,
  `supchecksl_no` int(11) NOT NULL,
  `observation` varchar(250) NOT NULL,
  `audit_score` int(20) NOT NULL,
  `NCR_ref` int(20) NOT NULL,
  `remarks` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `supregsl_no` (`supregsl_no`),
  KEY `activesl_no` (`activesl_no`),
  KEY `supchecksl_no` (`supchecksl_no`),
  CONSTRAINT `supplierreport001wb_ibfk_1` FOREIGN KEY (`supregsl_no`) REFERENCES `supplierregistration001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `supplierreport001wb_ibfk_2` FOREIGN KEY (`activesl_no`) REFERENCES `activity001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `supplierreport001wb_ibfk_3` FOREIGN KEY (`supchecksl_no`) REFERENCES `suppchecklist001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplierreport001wb`
--

/*!40000 ALTER TABLE `supplierreport001wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplierreport001wb` ENABLE KEYS */;


--
-- Definition of table `suppliertrainingplan001wb`
--

DROP TABLE IF EXISTS `suppliertrainingplan001wb`;
CREATE TABLE `suppliertrainingplan001wb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `supregsl_no` int(11) NOT NULL,
  `trainingsl_no` int(11) NOT NULL,
  `status` char(1) NOT NULL,
  `date` datetime NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `supregsl_no` (`supregsl_no`),
  KEY `trainingsl_no` (`trainingsl_no`),
  CONSTRAINT `suppliertrainingplan001wb_ibfk_1` FOREIGN KEY (`supregsl_no`) REFERENCES `supplierregistration001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `suppliertrainingplan001wb_ibfk_2` FOREIGN KEY (`trainingsl_no`) REFERENCES `trainingplan001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliertrainingplan001wb`
--

/*!40000 ALTER TABLE `suppliertrainingplan001wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `suppliertrainingplan001wb` ENABLE KEYS */;


--
-- Definition of table `suppliertype001mb`
--

DROP TABLE IF EXISTS `suppliertype001mb`;
CREATE TABLE `suppliertype001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `sslno` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `descrip` varchar(100) NOT NULL,
  `order` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `sslno` (`sslno`),
  CONSTRAINT `suppliertype001mb_ibfk_1` FOREIGN KEY (`sslno`) REFERENCES `status001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliertype001mb`
--

/*!40000 ALTER TABLE `suppliertype001mb` DISABLE KEYS */;
INSERT INTO `suppliertype001mb` (`sl_no`,`unitdepartsl_no`,`sslno`,`name`,`descrip`,`order`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,8,'Raw Material','steel','1','setmt1','2022-08-08 14:02:11','setmt1','2022-08-09 12:27:54'),
 (2,1,8,'Consumable Item ','paint','2','setmt1','2022-08-08 14:02:39',NULL,NULL),
 (3,1,8,'Child Part','Cloth','3','setmt1','2022-08-08 14:03:47',NULL,NULL),
 (4,1,8,'Part','Rod','4','setmt1','2022-08-08 14:04:17',NULL,NULL);
/*!40000 ALTER TABLE `suppliertype001mb` ENABLE KEYS */;


--
-- Definition of table `systemproperties001mb`
--

DROP TABLE IF EXISTS `systemproperties001mb`;
CREATE TABLE `systemproperties001mb` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(60) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` char(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=349 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `systemproperties001mb`
--

/*!40000 ALTER TABLE `systemproperties001mb` DISABLE KEYS */;
INSERT INTO `systemproperties001mb` (`ID`,`name`,`description`,`type`,`status`) VALUES 
 (1,'Login.Domain','Manufacturing','Domain','Y'),
 (2,'Login.Domain','Construction','Domain','Y'),
 (3,'Login.Domain','Buying House','Domain','Y'),
 (4,'Login.Domain','Calibration Labs','Domain','Y'),
 (5,'Login.Domain','School','Domain','Y'),
 (6,'Registration.SecurityQuestion','What was your childhood nickname ?','SecurityQuestion','Y'),
 (7,'Registration.SecurityQuestion','In what city did you meet your spouse/significant other ?','SecurityQuestion','Y'),
 (8,'Registration.SecurityQuestion','What is the name of your favorite childhood friend ?','SecurityQuestion','Y'),
 (9,'Registration.SecurityQuestion','What street did you live on in third grade ?','SecurityQuestion','Y'),
 (10,'Registration.SecurityQuestion','What is your oldest sibling\'s middle name ?','SecurityQuestion','Y'),
 (11,'Registration.SecurityQuestion','What school did you attend for sixth grade ?','SecurityQuestion','Y'),
 (12,'Item.Status','To Deliver','Status','Y'),
 (13,'Item.Status','To Bill','Status','Y'),
 (14,'Item.Status','Draft','Status','Y'),
 (15,'Item.Status','Completed','Status','Y'),
 (16,'Item.Status','Closed','Status','Y'),
 (17,'Item.Status','Cancelled','Status','Y'),
 (18,'EmpStatus.status','Active','status','Y'),
 (19,'EmpStatus.status','Inactive','status','Y'),
 (20,'EmpGender.gender','Male','gender','Y'),
 (21,'EmpGender.gender','Female','gender','Y'),
 (22,'Recruit.JobOpening','open','JobOpening','Y'),
 (23,'Recruit.JobOpening','closed','JobOpening','Y'),
 (24,'Recruit.JobApplicant','open','JobApplicant','Y'),
 (25,'Recruit.JobApplicant','replied','JobApplicant','Y'),
 (26,'Recruit.JobApplicant','rejected','JobApplicant','Y'),
 (27,'Recruit.JobApplicant','hold','JobApplicant','Y'),
 (28,'Recruit.OfferLetter','Draft','OfferLetter','Y'),
 (29,'Recruit.OfferLetter','Submitted','OfferLetter','Y'),
 (30,'Recruit.OfferLetter','Cancelled','OfferLetter','Y'),
 (31,'Recruit.OfferLetter','Queued for Saving','OfferLetter','Y'),
 (32,'Recruit.OfferLetter','Queued for Submission','OfferLetter','Y'),
 (33,'Recruit.OfferLetter','Queued for Cancellation','OfferLetter','Y'),
 (34,'Name.Prefix','Mr','Prefix','Y'),
 (35,'Name.Prefix','Mrs','Prefix','Y'),
 (36,'Name.Prefix','Ms','Prefix','Y'),
 (37,'Name.Prefix','Other','Prefix','Y'),
 (38,'Leave.leaveApp','Open','leaveApp','Y'),
 (39,'Leave.leaveApp','Approved','leaveApp','Y'),
 (40,'Leave.leaveApp','Rejected','leaveApp','Y'),
 (41,'Leave.leaveType','Sick','leaveType','Y'),
 (42,'Leave.leaveType','Casual','leaveType','Y'),
 (43,'Leave.leaveType','Vacation','leaveType','Y'),
 (44,'Leave.leaveType','Paternity','leaveType','Y'),
 (45,'Leave.leaveType','Maternity','leaveType','Y'),
 (46,'Leave.leaveType','Privilege','leaveType','Y'),
 (47,'Leave.leaveType','Compensetory','leaveType','Y'),
 (48,'Holiday.Week','Monday','Week','Y'),
 (49,'Holiday.Week','Tuesday','Week','Y'),
 (50,'Holiday.Week','Wednesday','Week','Y'),
 (51,'Holiday.Week','Thursday','Week','Y'),
 (52,'Holiday.Week','Friday','Week','Y'),
 (53,'Holiday.Week','Saturday','Week','Y'),
 (54,'Holiday.Week','Sunday','Week','Y'),
 (55,'processpr.Month','1','Month','Y'),
 (56,'processpr.Month','2','Month','Y'),
 (57,'processpr.Month','3','Month','Y'),
 (58,'processpr.Month','4','Month','Y'),
 (59,'processpr.Month','5','Month','Y'),
 (60,'processpr.Month','6','Month','Y'),
 (61,'processpr.Month','7','Month','Y'),
 (62,'processpr.Month','8','Month','Y'),
 (63,'processpr.Month','9','Month','Y'),
 (64,'processpr.Month','10','Month','Y'),
 (65,'processpr.Month','11','Month','Y'),
 (66,'processpr.Month','12','Month','Y'),
 (67,'Salary.Mode','Yes','Mode','Y'),
 (68,'Salary.Mode','No','Mode','Y'),
 (69,'Expense.Type','Food','Type','Y'),
 (70,'Expense.Type','Medical','Type','Y'),
 (71,'Expense.Type','Travel','Type','Y'),
 (72,'Expense.Type','Calls','Type','Y'),
 (73,'Expense.Type','Others','Type','Y'),
 (74,'Product.Planning','Sales Order','Planning','Y'),
 (75,'Product.Planning','Material Request','Planning','Y'),
 (76,'Product.Planning','Material Delivery','Planning','Y'),
 (77,'Itembom.status','Enabled','status','Y'),
 (78,'Itembom.status','Variant','status','Y'),
 (79,'Itembom.status','Template','status','Y'),
 (80,'Itembom.status','Disabled','status','Y'),
 (81,'Item.Group','Products','Group','Y'),
 (82,'Item.Group','Raw Materials','Group','Y'),
 (83,'Item.Group','Sub Assemblies','Group','Y'),
 (84,'Item.Group','All ItemGroups','Group','Y'),
 (85,'Manufacture.List','Sales-WPL','List','Y'),
 (86,'Manufacture.List','Supplier-WPL','List','Y'),
 (87,'Manufacture.List','Work-in Progress-WPL','List','Y'),
 (88,'Manufacture.List','Finished Goods-WPL','List','Y'),
 (89,'Manufacture.List','All Warehouses-WPL','List','Y'),
 (90,'PRMatReq.Type','Purchase','Type','Y'),
 (91,'PRMatReq.Type','Material Transfer','Type','Y'),
 (92,'PRMatReq.Type','Material Issue','Type','Y'),
 (93,'PRMatReq.Type','Manufacture','Type','Y'),
 (94,'PRSupp.Type','Asiatic Solution','Type','Y'),
 (95,'PRSupp.Type','Eagle Hardware','Type','Y'),
 (96,'PRSupp.Type','KSMerchandise','Type','Y'),
 (97,'PRSupp.Type','New World Reality','Type','Y'),
 (98,'PRSupp.Type','HomeBase','Type','Y'),
 (99,'PRSupp.Type','Scotier','Type','Y'),
 (100,'PRSupp.Type','HeliosAir','Type','Y'),
 (101,'PRRawmat.List','Yes','List','Y'),
 (102,'PRRawmat.List','No','List','Y'),
 (103,'SuAddress.Type','Billing','Type','Y'),
 (104,'SuAddress.Type','Shipping','Type','Y'),
 (105,'SuAddress.Type','Office','Type','Y'),
 (106,'SuAddress.Type','Personal','Type','Y'),
 (107,'SuAddress.Type','Plant','Type','Y'),
 (108,'SuAddress.Type','Postal','Type','Y'),
 (109,'SuAddress.Type','Shop','Type','Y'),
 (110,'SuAddress.Type','Subsidiary','Type','Y'),
 (111,'SuAddress.Type','Warehouse','Type','Y'),
 (112,'SuAddress.Type','Other','Type','Y'),
 (113,'Supplier.Type','Distributor','Type','Y'),
 (114,'Supplier.Type','Electrical','Type','Y'),
 (115,'Supplier.Type','Hardware','Type','Y'),
 (116,'Supplier.Type','Local','Type','Y'),
 (117,'Supplier.Type','Pharmaceutical','Type','Y'),
 (118,'Supplier.Type','Raw Material','Type','Y'),
 (119,'Supplier.Type','Services','Type','Y'),
 (120,'Supplier.Status','Open','Status','Y'),
 (121,'Supplier.Status','Enabled','Status','Y'),
 (122,'Supplier.Status','Passive','Status','Y'),
 (123,'Supplier.Status','Replied','Status','Y'),
 (124,'Putree.type','Supplier Type','type','Y'),
 (125,'Putree.type','Supplier','type','Y'),
 (126,'Putree.type','Item Group','type','Y'),
 (127,'Putree.type','Item','type','Y'),
 (128,'PuBase.type','Purchase Invoice','type','Y'),
 (129,'PuBase.type','Purchase Order','type','Y'),
 (130,'PuBase.type','Purchase Receipt','type','Y'),
 (131,'valqty.choose','Value','choose','Y'),
 (132,'valqty.choose','Quantity','choose','Y'),
 (133,'range.type','Daily','type','Y'),
 (134,'range.type','Monthly','type','Y'),
 (135,'range.type','Weekly','type','Y'),
 (136,'range.type','Quarterly','type','Y'),
 (137,'range.type','Half-Yearly','type','Y'),
 (138,'range.type','Yearly','type','Y'),
 (139,'crms.status','Lead','status','Y'),
 (140,'crms.status','Replied','status','Y'),
 (141,'crms.status','Open','status','Y'),
 (142,'crms.status','Opportunity','status','Y'),
 (143,'crms.status','Interested','status','Y'),
 (144,'crms.status','Converted','status','Y'),
 (145,'crms.status','Do Not Contact','status','Y'),
 (146,'crmscust.status','Open','status','Y'),
 (147,'crmscust.status','Dormant','status','Y'),
 (148,'crmscust.status','Active','status','Y'),
 (149,'crmcontact.status','Passive','status','Y'),
 (150,'crmcontact.status','Open','status','Y'),
 (151,'crmcontact.status','Replied','status','Y'),
 (152,'crmoppo.type','Sales','type','Y'),
 (153,'crmoppo.type','Maintainence','type','Y'),
 (154,'crmoppo.from','Lead','from','Y'),
 (155,'crmoppo.from','Customer','from','Y'),
 (156,'crmsoppo.status','Open','status','Y'),
 (157,'crmsoppo.status','Quotation','status','Y'),
 (158,'crmsoppo.status','Converted','status','Y'),
 (159,'crmsoppo.status','Lost','status','Y'),
 (160,'crmsoppo.status','Replied','status','Y'),
 (161,'crmsoppo.status','Closed','status','Y'),
 (162,'crmcommunics.status','Open','status','Y'),
 (163,'crmcommunics.status','Replied','status','Y'),
 (164,'crmcommunics.status','Closed','status','Y'),
 (165,'crmcommunics.status','Linked','status','Y'),
 (166,'crmcommunics.sentrec','Sent','sentrec','Y'),
 (167,'crmcommunics.sentrec','Received','sentrec','Y'),
 (168,'inactivecust.type','Sales Person','type','Y'),
 (169,'inactivecust.type','Sales Invoice','type','Y'),
 (170,'stktransent.title','Material issue','title','Y'),
 (171,'stktransent.title','Material Receipt','title','Y'),
 (172,'stktransent.title','Material Transfer','title','Y'),
 (173,'stktransent.title','Material Transfer for Manufacture','title','Y'),
 (174,'stktransent.title','Manufacture','title','Y'),
 (175,'stktransent.title','Replace','title','Y'),
 (176,'stktransent.title','Sub-Contract','title','Y'),
 (177,'stkvoucher.type','Delivery Note','type','Y'),
 (178,'stkvoucher.type','Purchase Receipt','type','Y'),
 (179,'stkvoucher.type','Stock Entry','type','Y'),
 (180,'stkvoucher.type','Sales inVoice','type','Y'),
 (181,'shipping.status','Enabled','status','Y'),
 (182,'shipping.status','Disabled','status','Y'),
 (183,'receiptdoc.type','Purchase Invoice','type','Y'),
 (184,'receiptdoc.type','Purchase Receipt','type','Y'),
 (185,'itemnaming.select','ItemCode','select','Y'),
 (186,'itemnaming.select','NamingServices','select','Y'),
 (187,'defvalue.method','FIFO','method','Y'),
 (188,'defvalue.method','Moving Average','method','Y'),
 (189,'party.type','Customer','type','Y'),
 (190,'party.type','Supplier','type','Y'),
 (191,'letterhead.list','Manager','list','Y'),
 (192,'letterhead.list','Human Resource','list','Y'),
 (193,'letterhead.list','Finance head','list','Y'),
 (194,'account.type','Cost of Goods Sold','type','Y'),
 (195,'account.type','Sales','type','Y'),
 (196,'account.type','Debtors','type','Y'),
 (197,'account.type','National Bank','type','Y'),
 (198,'account.type','Cash','type','Y'),
 (199,'account.type','Stores','type','Y'),
 (200,'account.type','Creditors','type','Y'),
 (201,'account.type','Freight and Forwarding','type','Y'),
 (202,'account.type','Changes','type','Y'),
 (203,'account.type','Stock Received','type','Y'),
 (204,'account.type','Not Billed','type','Y'),
 (205,'payment.mode','Cash','mode','Y'),
 (206,'payment.mode','Wire Transfer','mode','Y'),
 (207,'payment.mode','Check','mode','Y'),
 (208,'payment.mode','Credit Card','mode','Y'),
 (209,'payment.mode','Bank Draft','mode','Y'),
 (210,'currency.type','INR','type','Y'),
 (211,'currency.type','USD','type','Y'),
 (212,'currency.type','EUR','type','Y'),
 (213,'currency.type','JPN','type','Y'),
 (214,'payment.type','Receive','type','Y'),
 (215,'payment.type','Pay','type','Y'),
 (216,'payment.type','Internal Transfer','type','Y'),
 (217,'payreq.status','Paid','status','Y'),
 (218,'payreq.status','Initiated','status','Y'),
 (219,'payreq.status','Failed','status','Y'),
 (220,'payreq.status','Cancelled','status','Y'),
 (221,'payreq.status','Draft','status','Y'),
 (222,'journal.satus','Bank Entry','satus','Y'),
 (223,'journal.satus','Cash Entry','satus','Y'),
 (224,'journal.satus','Credit Card Entry','satus','Y'),
 (225,'journal.satus','Debit Note','satus','Y'),
 (226,'journal.satus','Credit Note','satus','Y'),
 (227,'journal.satus','Centre Entry','satus','Y'),
 (228,'journal.satus','Excise Entry','satus','Y'),
 (229,'journal.satus','Wire off Entry','satus','Y'),
 (230,'journal.satus','Opening Entry','satus','Y'),
 (231,'journal.satus','Depreciation Entry','satus','Y'),
 (232,'accounttype.name','Savings','name','Y'),
 (233,'accounttype.name','Current','name','Y'),
 (234,'company.domain','Manufacturing','domain','Y'),
 (235,'company.domain','IT','domain','Y'),
 (236,'company.domain','BPO','domain','Y'),
 (237,'chartacc.type','Standard','type','Y'),
 (238,'chartacc.type','Customized','type','Y'),
 (239,'task.status','Accepted','status','Y'),
 (240,'task.status','Approved','status','Y'),
 (241,'task.status','Assigned','status','Y'),
 (242,'task.status','AutoReject','status','Y'),
 (243,'task.status','Closed','status','Y'),
 (244,'task.status','Completed','status','Y'),
 (245,'task.status','Failed','status','Y'),
 (246,'task.status','In Planning','status','Y'),
 (247,'task.status','In Progress','status','Y'),
 (248,'task.status','Interrupted','status','Y'),
 (249,'task.status','Not Started','status','Y'),
 (250,'task.status','On hold','status','Y'),
 (251,'task.status','Open','status','Y'),
 (252,'task.status','Planned','status','Y'),
 (253,'task.status','Rejected','status','Y'),
 (254,'task.status','Unassigned','status','Y'),
 (255,'task.status','Waiting for Approval','status','Y'),
 (256,'Working','Working','task.status','Y'),
 (257,'Receivable','Receivable','type.account','Y'),
 (258,'type.account','Payable','account','Y'),
 (259,'bc.type','Bank','type','Y'),
 (260,'bc.type','Cash','type','Y'),
 (261,'month.name','January','name','Y'),
 (262,'month.name','February','name','Y'),
 (263,'month.name','March','name','Y'),
 (264,'month.name','April','name','Y'),
 (265,'month.name','May','name','Y'),
 (266,'month.name','June','name','Y'),
 (267,'month.name','July','name','Y'),
 (268,'month.name','August','name','Y'),
 (269,'month.name','September','name','Y'),
 (270,'month.name','October','name','Y'),
 (271,'month.name','November','name','Y'),
 (272,'month.name','December','name','Y'),
 (273,'attend.status','Present','status','Y'),
 (274,'attend.status','Absent','status','Y'),
 (275,'emp.holiday','Sunday','holiday','Y'),
 (276,'emp.holiday','Monday','holiday','Y'),
 (277,'emp.holiday','Tuesday','holiday','Y'),
 (278,'emp.holiday','Wednesday','holiday','Y'),
 (279,'emp.holiday','Thursday','holiday','Y'),
 (280,'emp.holiday','Friday','holiday','Y'),
 (281,'emp.holiday','Saturday','holiday','Y'),
 (282,'purchase.taxstatus','Enabled','taxstatus','Y'),
 (283,'purchase.taxstatus','Disabled','taxstatus','Y'),
 (284,'exceed.type','Warn','type','Y'),
 (285,'exceed.type','Stop','type','Y'),
 (286,'exceed.type','Ignore','type','Y'),
 (287,'ProdOrder.status','Draft','status','Y'),
 (288,'ProdOrder.status','Notstarted','status','Y'),
 (289,'ProdOrder.status','Submitted','status','Y'),
 (290,'ProdOrder.status','Stopped','status','Y'),
 (291,'ProdOrder.status','Unstopped','status','Y'),
 (292,'ProdOrder.status','In-Process','status','Y'),
 (293,'ProdOrder.status','Completed','status','Y'),
 (294,'ProdOrder.status','Cancelled','status','Y'),
 (295,'Dummy.status','Dummy1','dummy','Y'),
 (296,'Dummy.status','Dummy2','dummy','Y'),
 (297,'Dummy.status','Dummy3','dummy','Y'),
 (298,'Year.status','2020','year','Y'),
 (299,'Year.status','2021','year','Y'),
 (300,'Year.status','2022','year','Y'),
 (301,'Year.status','2023','year','Y'),
 (302,'Year.status','2024','year','Y'),
 (303,'Year.status','2025','year','Y'),
 (304,'StartYear.status','2021','startyear','Y'),
 (305,'StartYear.status','2022','startyear','Y'),
 (306,'StartYear.status','2023','startyear','Y'),
 (307,'StartYear.status','2024','startyear','Y'),
 (308,'StartYear.status','2025','startyear','Y'),
 (309,'StartYear.status','2026','startyear','Y'),
 (310,'StartYear.status','2027','startyear','Y'),
 (311,'StartYear.status','2028','startyear','Y'),
 (312,'StartYear.status','2029','startyear','Y'),
 (313,'StartYear.status','2030','startyear','Y'),
 (314,'StartYear.status','2031','startyear','Y'),
 (315,'StartYear.status','2032','startyear','Y'),
 (316,'StartYear.status','2033','startyear','Y'),
 (317,'StartYear.status','2034','startyear','Y'),
 (318,'StartYear.status','2035','startyear','Y'),
 (319,'StartYear.status','2036','startyear','Y'),
 (320,'StartYear.status','2037','startyear','Y'),
 (321,'StartYear.status','2038','startyear','Y'),
 (322,'StartYear.status','2039','startyear','Y'),
 (323,'StartYear.status','2040','startyear','Y'),
 (324,'EndYear.status','2021','endyear','Y'),
 (325,'EndYear.status','2022','endyear','Y'),
 (326,'EndYear.status','2023','endyear','Y'),
 (327,'EndYear.status','2024','endyear','Y'),
 (328,'EndYear.status','2025','endyear','Y'),
 (329,'EndYear.status','2026','endyear','Y'),
 (330,'EndYear.status','2027','endyear','Y'),
 (331,'EndYear.status','2028','endyear','Y'),
 (332,'EndYear.status','2029','endyear','Y'),
 (333,'EndYear.status','2030','endyear','Y'),
 (334,'EndYear.status','2031','endyear','Y'),
 (335,'EndYear.status','2032','endyear','Y'),
 (336,'EndYear.status','2033','endyear','Y'),
 (337,'EndYear.status','2034','endyear','Y'),
 (338,'EndYear.status','2035','endyear','Y'),
 (339,'EndYear.status','2036','endyear','Y'),
 (340,'EndYear.status','2037','endyear','Y'),
 (341,'EndYear.status','2038','endyear','Y'),
 (342,'EndYear.status','2039','endyear','Y'),
 (343,'EndYear.status','2040','endyear','Y'),
 (344,'Register.status','In Progress','register','Y'),
 (345,'Register.status','Pending','register','Y'),
 (346,'Register.status','Cancel','register','Y'),
 (347,'Register.status','Authorization','register','Y'),
 (348,'Register.status','New','register','Y');
/*!40000 ALTER TABLE `systemproperties001mb` ENABLE KEYS */;


--
-- Definition of table `tool001mb`
--

DROP TABLE IF EXISTS `tool001mb`;
CREATE TABLE `tool001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `pdno` int(50) NOT NULL,
  `Fix1` varchar(500) NOT NULL,
  `Fix2` varchar(500) NOT NULL,
  `Fix3` varchar(500) NOT NULL,
  `Fix4` varchar(500) NOT NULL,
  `Fix5` varchar(500) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tool001mb`
--

/*!40000 ALTER TABLE `tool001mb` DISABLE KEYS */;
INSERT INTO `tool001mb` (`sl_no`,`unitdepartsl_no`,`pdno`,`Fix1`,`Fix2`,`Fix3`,`Fix4`,`Fix5`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,'fxtumax','fxtumax','fxtumax3','fxtumax4','fxtumax5','setmt1','2022-06-10 14:54:38',NULL,NULL);
/*!40000 ALTER TABLE `tool001mb` ENABLE KEYS */;


--
-- Definition of table `toolschecklist001mb`
--

DROP TABLE IF EXISTS `toolschecklist001mb`;
CREATE TABLE `toolschecklist001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `tcslno` int(11) NOT NULL,
  `tstatus` int(11) NOT NULL,
  `tcheckpoints` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `tcslno` (`tcslno`),
  KEY `tstatus` (`tstatus`),
  CONSTRAINT `toolschecklist001mb_ibfk_1` FOREIGN KEY (`tcslno`) REFERENCES `toolsmaster001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `toolschecklist001mb_ibfk_2` FOREIGN KEY (`tstatus`) REFERENCES `toolsstatus001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toolschecklist001mb`
--

/*!40000 ALTER TABLE `toolschecklist001mb` DISABLE KEYS */;
INSERT INTO `toolschecklist001mb` (`sl_no`,`unitdepartsl_no`,`tcslno`,`tstatus`,`tcheckpoints`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,1,'olskh','setmt1','2022-08-08 16:09:26',NULL,NULL),
 (2,1,1,2,'olskh','setmt1','2022-08-09 11:27:14',NULL,NULL);
/*!40000 ALTER TABLE `toolschecklist001mb` ENABLE KEYS */;


--
-- Definition of table `toolsmaster001mb`
--

DROP TABLE IF EXISTS `toolsmaster001mb`;
CREATE TABLE `toolsmaster001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `tsslno` int(11) NOT NULL,
  `tcode` varchar(50) NOT NULL,
  `tname` varchar(500) NOT NULL,
  `tyear` datetime NOT NULL,
  `tcapacity` varchar(100) NOT NULL,
  `ttype` varchar(100) NOT NULL,
  `tmake` varchar(100) NOT NULL,
  `tlocation` varchar(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `tsslno` (`tsslno`),
  CONSTRAINT `toolsmaster001mb_ibfk_1` FOREIGN KEY (`tsslno`) REFERENCES `toolsstatus001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toolsmaster001mb`
--

/*!40000 ALTER TABLE `toolsmaster001mb` DISABLE KEYS */;
INSERT INTO `toolsmaster001mb` (`sl_no`,`unitdepartsl_no`,`tsslno`,`tcode`,`tname`,`tyear`,`tcapacity`,`ttype`,`tmake`,`tlocation`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,'SE/TD/000','Lathe','2022-08-09 00:00:00','5lt','esdf','edr','erf','setmt1','2022-08-06 16:22:29',NULL,NULL),
 (2,1,2,'SE/TD/001','Grinder','2022-08-09 00:00:00','5lt','df','edr','erf','setmt1','2022-08-06 16:22:54',NULL,NULL);
/*!40000 ALTER TABLE `toolsmaster001mb` ENABLE KEYS */;


--
-- Definition of table `toolspreventiveaction001mb`
--

DROP TABLE IF EXISTS `toolspreventiveaction001mb`;
CREATE TABLE `toolspreventiveaction001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `sslno` int(11) NOT NULL,
  `trcslno` int(11) NOT NULL,
  `tname` varchar(250) NOT NULL,
  `tdetails` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `sslno` (`sslno`),
  CONSTRAINT `toolspreventiveaction001mb_ibfk_1` FOREIGN KEY (`sslno`) REFERENCES `toolsstatus001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toolspreventiveaction001mb`
--

/*!40000 ALTER TABLE `toolspreventiveaction001mb` DISABLE KEYS */;
INSERT INTO `toolspreventiveaction001mb` (`sl_no`,`unitdepartsl_no`,`sslno`,`trcslno`,`tname`,`tdetails`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,1,'frgf','df','setmt1','2022-08-10 15:56:14','setmt1','2022-08-10 15:59:14');
/*!40000 ALTER TABLE `toolspreventiveaction001mb` ENABLE KEYS */;


--
-- Definition of table `toolsrootcause001mb`
--

DROP TABLE IF EXISTS `toolsrootcause001mb`;
CREATE TABLE `toolsrootcause001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `sslno` int(11) NOT NULL,
  `tbrslno` int(11) NOT NULL,
  `tname` varchar(250) NOT NULL,
  `tdetails` varchar(250) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `sslno` (`sslno`),
  CONSTRAINT `toolsrootcause001mb_ibfk_1` FOREIGN KEY (`sslno`) REFERENCES `toolsstatus001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toolsrootcause001mb`
--

/*!40000 ALTER TABLE `toolsrootcause001mb` DISABLE KEYS */;
INSERT INTO `toolsrootcause001mb` (`sl_no`,`unitdepartsl_no`,`sslno`,`tbrslno`,`tname`,`tdetails`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,1,'cbderter','df','setmt1','2022-08-10 10:44:56','setmt1','2022-08-10 11:20:02');
/*!40000 ALTER TABLE `toolsrootcause001mb` ENABLE KEYS */;


--
-- Definition of table `toolsspares001mb`
--

DROP TABLE IF EXISTS `toolsspares001mb`;
CREATE TABLE `toolsspares001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `msslno` int(11) NOT NULL,
  `tsslno` int(11) NOT NULL,
  `tspares` varchar(50) NOT NULL,
  `tsparescost` int(11) DEFAULT NULL,
  `tspecification` varchar(50) NOT NULL,
  `tleadtime` datetime DEFAULT NULL,
  `tminimumstocklevel` int(11) DEFAULT '0',
  `treorderlevel` int(11) DEFAULT '0',
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `msslno` (`msslno`),
  KEY `tsslno` (`tsslno`),
  CONSTRAINT `toolsspares001mb_ibfk_1` FOREIGN KEY (`msslno`) REFERENCES `toolsmaster001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `toolsspares001mb_ibfk_2` FOREIGN KEY (`tsslno`) REFERENCES `toolsstatus001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toolsspares001mb`
--

/*!40000 ALTER TABLE `toolsspares001mb` DISABLE KEYS */;
INSERT INTO `toolsspares001mb` (`sl_no`,`unitdepartsl_no`,`msslno`,`tsslno`,`tspares`,`tsparescost`,`tspecification`,`tleadtime`,`tminimumstocklevel`,`treorderlevel`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (2,1,2,2,'df',89,'g','2022-08-24 00:00:00',4,88,'setmt1','2022-08-08 11:52:53',NULL,NULL);
/*!40000 ALTER TABLE `toolsspares001mb` ENABLE KEYS */;


--
-- Definition of table `toolsstatus001mb`
--

DROP TABLE IF EXISTS `toolsstatus001mb`;
CREATE TABLE `toolsstatus001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `code_group` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` char(100) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toolsstatus001mb`
--

/*!40000 ALTER TABLE `toolsstatus001mb` DISABLE KEYS */;
INSERT INTO `toolsstatus001mb` (`sl_no`,`unitdepartsl_no`,`code_group`,`name`,`status`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,'Active','pa','setmt1','2022-08-06 15:48:55',NULL,NULL),
 (2,1,2,'Waiting for installation','p','setmt1','2022-08-06 15:49:04',NULL,NULL),
 (3,1,3,'Under maintenance','p','setmt1','2022-08-06 15:49:22',NULL,NULL),
 (4,1,4,'In Active','Active','setmt1','2022-08-06 15:49:31',NULL,NULL);
/*!40000 ALTER TABLE `toolsstatus001mb` ENABLE KEYS */;


--
-- Definition of table `trainingplan001mb`
--

DROP TABLE IF EXISTS `trainingplan001mb`;
CREATE TABLE `trainingplan001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `trainingname` varchar(150) NOT NULL,
  `status` char(1) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainingplan001mb`
--

/*!40000 ALTER TABLE `trainingplan001mb` DISABLE KEYS */;
INSERT INTO `trainingplan001mb` (`sl_no`,`unitdepartsl_no`,`trainingname`,`status`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (5,1,'ROOT CAUSE ANALYSIS, CAPA & EFFECTIVENESS','A','latha','2022-03-23 17:37:12','latha','2022-03-23 17:37:19'),
 (6,1,'PPAP DOCUMENTS PREPARETION','A','latha','2022-03-23 17:37:33',NULL,NULL);
/*!40000 ALTER TABLE `trainingplan001mb` ENABLE KEYS */;


--
-- Definition of table `unitdeptmaster001mb`
--

DROP TABLE IF EXISTS `unitdeptmaster001mb`;
CREATE TABLE `unitdeptmaster001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `departsl_no` int(11) NOT NULL,
  `unitsl_no` int(11) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `departsl_no` (`departsl_no`),
  KEY `unitsl_no` (`unitsl_no`),
  CONSTRAINT `unitdeptmaster001mb_ibfk_1` FOREIGN KEY (`departsl_no`) REFERENCES `department001mb` (`sl_no`) ON DELETE CASCADE,
  CONSTRAINT `unitdeptmaster001mb_ibfk_2` FOREIGN KEY (`unitsl_no`) REFERENCES `unitmaster001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unitdeptmaster001mb`
--

/*!40000 ALTER TABLE `unitdeptmaster001mb` DISABLE KEYS */;
INSERT INTO `unitdeptmaster001mb` (`sl_no`,`departsl_no`,`unitsl_no`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,'sekar1','2022-08-05 11:55:29',NULL,NULL),
 (2,2,1,'sekar1','2022-08-05 11:55:33','setmt1','2022-08-19 15:56:17'),
 (3,3,1,'sekar1','2022-08-05 11:55:44','setmt1','2022-08-19 15:56:32'),
 (4,4,1,'sekar1','2022-08-05 11:55:52','setmt1','2022-08-19 15:57:26'),
 (5,5,1,'sekar1','2022-08-05 11:56:12','setmt1','2022-08-19 15:57:34'),
 (6,6,1,'sekar1','2022-08-05 11:56:24','setmt1','2022-08-19 15:57:49'),
 (7,7,1,'sekar1','2022-08-05 17:01:21','setmt1','2022-08-19 15:58:00'),
 (8,8,1,'sekar1','2022-08-05 17:01:29','setmt1','2022-08-19 15:58:19'),
 (9,9,1,'setmt1','2022-08-19 15:58:49',NULL,NULL),
 (10,10,1,'setmt1','2022-08-19 15:59:28',NULL,NULL),
 (11,11,1,'setmt1','2022-08-19 15:59:41',NULL,NULL),
 (12,1,2,'setmt1','2022-08-19 15:59:46',NULL,NULL),
 (13,2,2,'setmt1','2022-08-19 15:59:59',NULL,NULL),
 (14,3,2,'setmt1','2022-08-19 16:00:04',NULL,NULL),
 (15,4,2,'setmt1','2022-08-19 16:00:22',NULL,NULL),
 (16,5,2,'setmt1','2022-08-19 16:00:26',NULL,NULL),
 (17,6,2,'setmt1','2022-08-19 16:00:32',NULL,NULL),
 (18,7,2,'setmt1','2022-08-19 16:00:39',NULL,NULL),
 (19,8,2,'setmt1','2022-08-19 16:00:43',NULL,NULL),
 (20,9,2,'setmt1','2022-08-19 16:00:48',NULL,NULL),
 (21,10,2,'setmt1','2022-08-19 16:00:53','setmt1','2022-08-19 16:01:22'),
 (22,11,2,'setmt1','2022-08-19 16:01:29',NULL,NULL);
/*!40000 ALTER TABLE `unitdeptmaster001mb` ENABLE KEYS */;


--
-- Definition of table `unitmaster001mb`
--

DROP TABLE IF EXISTS `unitmaster001mb`;
CREATE TABLE `unitmaster001mb` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `deptsl_no` int(11) NOT NULL,
  `unit_name` varchar(100) NOT NULL,
  `unit_describtion` varchar(200) NOT NULL,
  `status` char(10) DEFAULT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `deptsl_no` (`deptsl_no`),
  CONSTRAINT `unitmaster001mb_ibfk_1` FOREIGN KEY (`deptsl_no`) REFERENCES `department001mb` (`sl_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unitmaster001mb`
--

/*!40000 ALTER TABLE `unitmaster001mb` DISABLE KEYS */;
INSERT INTO `unitmaster001mb` (`sl_no`,`deptsl_no`,`unit_name`,`unit_describtion`,`status`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,'Unit1','unit description','17','','2022-08-02 18:52:13','setmt2','2022-08-22 13:34:41'),
 (2,1,'Unit2','unit description','16','','2022-08-02 19:07:30','setmt2','2022-08-22 13:32:49');
/*!40000 ALTER TABLE `unitmaster001mb` ENABLE KEYS */;


--
-- Definition of table `user001mb`
--

DROP TABLE IF EXISTS `user001mb`;
CREATE TABLE `user001mb` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `dpslno` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` char(1) NOT NULL,
  `email` varchar(30) NOT NULL,
  `securityquestion` varchar(250) NOT NULL,
  `securityanswer` varchar(250) NOT NULL,
  `theme` varchar(10) DEFAULT '#286090',
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`person_id`),
  KEY `dpslno` (`dpslno`),
  KEY `roleid` (`roleid`),
  CONSTRAINT `user001mb_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person001mb` (`person_id`),
  CONSTRAINT `user001mb_ibfk_2` FOREIGN KEY (`dpslno`) REFERENCES `department001mb` (`sl_no`),
  CONSTRAINT `user001mb_ibfk_3` FOREIGN KEY (`roleid`) REFERENCES `role001mb` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user001mb`
--

/*!40000 ALTER TABLE `user001mb` DISABLE KEYS */;
INSERT INTO `user001mb` (`person_id`,`unitdepartsl_no`,`dpslno`,`roleid`,`username`,`password`,`status`,`email`,`securityquestion`,`securityanswer`,`theme`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (1,1,1,1,'siva','$2b$10$8xe6b3pcuGvl0jNRxzJlVeetMM96.Y.p4jqEceYHbPnkkVTUYIIGa','A','adc@gmail.com','What was your childhood nickname ?','ss','#286090','siva','2021-09-06 13:18:33','siva','2021-09-06 13:18:33'),
 (2,1,2,2,'latha','$2b$10$juQ8/Mh4ZN33FB9v8slr3ug6RvG0JNqEvV/hZ7SUhTtk8KBhXptLG','A','latha0707hema@gmail.com','What was your childhood nickname ?','latha','#8d4da6','latha','2022-01-20 08:59:58','latha','2022-02-09 12:07:18'),
 (3,1,3,3,'aravinth','$2b$10$juQ8/Mh4ZN33FB9v8slr3ug6RvG0JNqEvV/hZ7SUhTtk8KBhXptLG','A','latha0707hema@gmail','What was your childhood nickname ?','latha','#1f812c','latha','2021-09-06 13:18:33','siva','2022-02-09 12:06:50'),
 (5,1,4,4,'sekar','$2b$10$juQ8/Mh4ZN33FB9v8slr3ug6RvG0JNqEvV/hZ7SUhTtk8KBhXptLG','A','kavichandran877@gmail.com','What was your childhood nickname ?','latha','#286090','latha','2022-01-20 08:59:58','latha','2022-02-03 12:52:44'),
 (8,1,5,3,'kavitha','$2b$10$cSZ1TGPDJAs.FMCyHj0RleysCcTIkWJTaGKoYrT0bsGypTINbXbXO','A','kavitha270895@gmail.com','What was your childhood nickname ?','kavi','#286090','latha','2022-02-11 13:33:13','latha','2022-02-11 13:36:01'),
 (9,1,6,2,'selvam','$2b$10$Co1fTNvFwbLi0aCKfxadZOCR33Ll.xsu5Jj4ImTFZOSqoDDcn.ude','A','latha0707hema@gmail.com','What was your childhood nickname ?','selvam','#286090','latha','2022-02-11 13:37:45',NULL,NULL),
 (10,1,7,1,'sfd','$2b$10$jCowSnXffbaSYAxDYNDSEei05Fs1.ZFWqmm3FdDfNMhc0uiAIwp2a','A','selvamraja1104@gmail.com','What was your childhood nickname ?','sfd','#286090','latha','2022-02-11 14:20:10',NULL,NULL),
 (11,1,4,4,'moorthy','$2b$10$v0032Ost0h5Gr9nDp7xQJ.fjVDlB9Tgj0ZBy2oylNH3PLeuLlRdDa','A','moorthyp2096@gmail.com','What was your childhood nickname ?','moorthy','#286090','latha','2022-02-24 13:39:48','latha','2022-02-24 13:40:01'),
 (12,1,1,1,'setmt1','$2b$10$XyzwzcUfwh8OAePiwR28muPQAOZZh8OblhwczR4nvRsfz5HvMrkZ2','A','dhayalaguru.g@gmail.com','What was your childhood nickname ?','a','#a44444','siva','2022-06-01 13:28:00',NULL,NULL),
 (14,1,2,1,'semar1','$2b$10$ezr5ROXG/apBo3UTTJSy5O2DkweyOwvMfUffOXCa3RMF/tu57N1tC','A','dhayalaguru.g@gmail.com','In what city did you meet your spouse/significant other ?','vcd','#286090','setmt1','2022-06-01 13:45:34',NULL,NULL),
 (15,1,8,1,'seqal1','$2b$10$ZoonHojAyCswHc2.tEsxX.41CHgf5hkhVCtqpXinaVtAZi9H3RU62','A','dhayalaguru.g@gmail.com','In what city did you meet your spouse/significant other ?','sdf','#286090','semar1','2022-06-01 13:49:45',NULL,NULL),
 (16,1,7,1,'seprd1','$2b$10$otk30mGsGPB53/MJPXedpepXieOsjd1nfe4RPY8rKNn4NkOWFawTy','A','dhayalaguru.g@gmail.com','What is the name of your favorite childhood friend ?','df','#286090','seqal1','2022-06-01 13:52:35',NULL,NULL),
 (20,1,5,1,'sestr1','$2b$10$yHsRGhrTP3J/JFSpd8xmzunXC8gI9eRRsZlxLg7AmYsHJgDDfpBpS','A','dhayalaguru.g@gmail.com','In what city did you meet your spouse/significant other ?','qwdew','#286090','seprd1','2022-06-01 14:47:01',NULL,NULL),
 (22,1,6,1,'sehrm1','$2b$10$KeX5X5hsyU5JYEit7jvGie4tABsSfZKGWQACk.4HYijQkg/EMDviW','A','dhayalaguru.g@gmail.com','What is the name of your favorite childhood friend ?','asd','#286090','sestr1','2022-06-01 14:53:55',NULL,NULL),
 (23,1,4,1,'sepur1','$2b$10$dX3QXjje4pzSFwI7zqI8/.dmwGGjRDwlQsrHH8hNuTQADKNzfxiFa','A','dhayalaguru.g@gmail.com','What was your childhood nickname ?','sdf','#286090','sehrm1','2022-06-01 14:57:00',NULL,NULL),
 (24,1,9,1,'semtn1','$2b$10$yBYR59.PsZV1vJVyjAIGuO4aKrOK1fgcFZNTFpyLmWLbRuChYJNmW','A','dhayalaguru.g@gmail.com','What is the name of your favorite childhood friend ?','sd','#286090','sepur1','2022-06-01 14:59:19',NULL,NULL),
 (25,1,11,1,'sesale1','$2b$10$qDI4JVG1loT1SvST4VOyw.1kyDRBpVQTuCr8kNzS7vi29.QllHqwa','A','kavichandran877@gmail.com','What was your childhood nickname ?','sales','#286090','setmt1','2022-08-03 15:39:17',NULL,NULL),
 (26,4,9,1,'sekarL','$2b$10$5OmcA1YkRqw6VOgM7uceXeq3tweuWQHXwoxU9ePpAvQagFF75cHXi','A','sekarL@gmail.com','What was your childhood nickname ?','sekarL','#286090','setmt1','2022-08-19 15:07:40',NULL,NULL),
 (27,12,1,1,'setmt2','$2b$10$8JGdceT6CE6HFMbmL4qtmu9v.yAHBf200JypUlLbXm/fIj84gYnEC','A','kavichandran877@gmail.com','What was your childhood nickname ?','setmt2','#286090','sesale1','2022-08-19 17:39:08',NULL,NULL),
 (28,13,2,1,'semar2','$2b$10$3AXSyGL83dhAKzGJhWoglODR9TdRNXHraBW15.tBYJcJ.hudjXt3G','A','kavichandran877@gmail.com','What was your childhood nickname ?','semar2','#286090','setmt1','2022-08-19 17:45:11',NULL,NULL),
 (29,19,8,1,'seqal2','$2b$10$fi3GChnHsrTxzEjC0WE3WehsPzqWkbSYGsPTr2wIym7dUn6XzuHQi','A','kavichandran877@gmail.com','What was your childhood nickname ?','seqal2','#286090','setmt1','2022-08-19 17:48:18',NULL,NULL),
 (30,18,7,1,'seprd2','$2b$10$lMkXOagtUzrFrpjDD1CG9OiF3MVtyhgwbzITY/Jq8PRW9JkTMAUqe','A','kavichandran877@gmail.com','What was your childhood nickname ?','seprd2','#286090','setmt1','2022-08-19 17:51:02',NULL,NULL),
 (31,16,5,1,'sestr2','$2b$10$E6KQKi8E.L3nRG9nQ45U1.5NaVulszJclKoHRamy.MZT2YbsVhHp2','A','kavichandran877@gmail.com','What was your childhood nickname ?','sestr2','#286090','setmt1','2022-08-19 17:53:00',NULL,NULL),
 (33,17,6,1,'sehrm2','$2b$10$g6LzoZFQ3tf3b6ZM6cku8eR6nwF/haO5mmXcj9WreN6ASjV7EmKIW','A','kavichandran877@gmail.com','What was your childhood nickname ?','sehrm2','#286090','setmt1','2022-08-19 18:31:11',NULL,NULL),
 (34,15,4,1,'sepur2','$2b$10$WNasYPCZwV2rTr69KMOu5OKGAmJMooMOMJSAhe2WXsVPc7CuFEDwO','A','kavichandran877@gmail.com','What was your childhood nickname ?','sepur2','#286090','setmt1','2022-08-19 18:34:41',NULL,NULL),
 (35,20,9,1,'semtn2','$2b$10$q25az9T.EMTNLav8YfL8L.UCncLwlbhfu.RlvfVEGp.NFgrzrNMUC','A','kavichandran877@gmail.com','What was your childhood nickname ?','semtn2','#286090','setmt1','2022-08-19 18:37:38',NULL,NULL),
 (36,22,11,1,'sesale2','$2b$10$6RwIy.8njP/wXrdEtL65zeHlzCxkoGe1utDwnNYKOaaz0KFy.35by','A','kavichandran877@gmail.com','What was your childhood nickname ?','sesale2','#286090','setmt1','2022-08-19 18:39:32',NULL,NULL);
/*!40000 ALTER TABLE `user001mb` ENABLE KEYS */;


--
-- Definition of table `userrole001mb`
--

DROP TABLE IF EXISTS `userrole001mb`;
CREATE TABLE `userrole001mb` (
  `userroleid` int(11) NOT NULL AUTO_INCREMENT,
  `unitdepartsl_no` int(11) NOT NULL,
  `loginid` int(11) NOT NULL,
  `role` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `insert_user` varchar(40) NOT NULL,
  `insert_datetime` datetime NOT NULL,
  `updated_user` varchar(40) DEFAULT NULL,
  `updated_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`userroleid`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userrole001mb`
--

/*!40000 ALTER TABLE `userrole001mb` DISABLE KEYS */;
INSERT INTO `userrole001mb` (`userroleid`,`unitdepartsl_no`,`loginid`,`role`,`username`,`insert_user`,`insert_datetime`,`updated_user`,`updated_datetime`) VALUES 
 (39,1,46,'ROLE_ADMIN','sss','','0000-00-00 00:00:00',NULL,NULL),
 (40,1,47,'','tamil K','','0000-00-00 00:00:00',NULL,NULL),
 (41,1,48,'','etdtdd','','0000-00-00 00:00:00',NULL,NULL),
 (42,1,49,'','tamil','','0000-00-00 00:00:00',NULL,NULL),
 (43,1,50,'ROLE_USER','raj','','0000-00-00 00:00:00',NULL,NULL),
 (44,1,51,'','selvamRaja','','0000-00-00 00:00:00',NULL,NULL),
 (45,1,62,'','aaa','insertuser','2021-09-03 11:19:04',NULL,'2021-09-03 11:19:05'),
 (46,1,63,'ROLE_USER','latha','insertuser','2021-09-03 11:20:13','updateuser','2021-09-03 11:20:39'),
 (47,1,64,'','fff','insertuser','2021-09-03 11:46:35',NULL,'2021-09-03 11:46:35'),
 (48,1,65,'','rizwana','insertuser','2021-09-06 13:18:33',NULL,'2021-09-06 13:18:33'),
 (49,1,66,'','rizwana','insertuser','2021-09-06 13:19:15',NULL,'2021-09-06 13:19:16'),
 (50,1,67,'','rizwana','insertuser','2021-09-06 13:19:27',NULL,'2021-09-06 13:19:28'),
 (51,1,68,'','rizwana','insertuser','2021-09-06 13:19:28',NULL,'2021-09-06 13:19:28'),
 (52,1,69,'','rizwana','insertuser','2021-09-06 13:19:28',NULL,'2021-09-06 13:19:28'),
 (53,1,70,'','rizwana','insertuser','2021-09-06 13:19:54',NULL,'2021-09-06 13:19:54'),
 (54,1,71,'','rizwana','insertuser','2021-09-06 13:19:54',NULL,'2021-09-06 13:19:54'),
 (55,1,72,'','rizwana','insertuser','2021-09-06 13:19:54',NULL,'2021-09-06 13:20:32'),
 (56,1,73,'','rizwana','insertuser','2021-09-06 13:21:41',NULL,'2021-09-06 13:21:42'),
 (57,1,74,'','rizwana','insertuser','2021-09-06 13:21:42',NULL,'2021-09-06 13:21:42'),
 (58,1,75,'','rizwana','insertuser','2021-09-06 13:21:53',NULL,'2021-09-06 13:21:53'),
 (59,1,76,'','rizwana','insertuser','2021-09-06 13:21:53',NULL,'2021-09-06 13:21:53'),
 (60,1,77,'','rizwana','insertuser','2021-09-06 13:25:01',NULL,'2021-09-06 13:25:01'),
 (61,1,78,'','rizwana','insertuser','2021-09-06 13:25:17',NULL,'2021-09-06 13:25:17'),
 (62,1,79,'ROLE_GUEST','sekar','siva','2021-10-22 16:41:43',NULL,'2021-10-22 16:41:43'),
 (63,1,80,'ROLE_GUEST','Aravinth','sekar','2021-12-23 12:02:13',NULL,'2021-12-23 12:02:14'),
 (64,1,81,'ROLE_GUEST','moorthy','Aravinth','2021-12-23 12:32:25',NULL,'2021-12-23 12:32:25');
/*!40000 ALTER TABLE `userrole001mb` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
