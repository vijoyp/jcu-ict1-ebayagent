/*
Navicat MySQL Data Transfer

Source Server         : eBayDB
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : snips

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2013-01-09 00:24:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `iD` int(11) NOT NULL,
  `fName` varchar(18) NOT NULL,
  `lName` varchar(18) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `postal` decimal(8,0) NOT NULL,
  `city` varchar(25) NOT NULL,
  `country` char(5) NOT NULL,
  `contact` decimal(12,0) NOT NULL,
  PRIMARY KEY (`iD`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`iD`) REFERENCES `my_aspnet_membership` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('16', 'Karim', 'Test1', 'M', '1983-09-14', 'wer', '444444', 'Singapore', 'SG', '44444444');
INSERT INTO `customer` VALUES ('18', 'Simon', 'Baker', 'M', '1976-09-14', 'wer', '444444', 'Singapore', 'SG', '44444444');

-- ----------------------------
-- Table structure for `cust_order`
-- ----------------------------
DROP TABLE IF EXISTS `cust_order`;
CREATE TABLE `cust_order` (
  `itemID` varchar(15) NOT NULL,
  `userID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `itemCost` double(10,2) NOT NULL,
  `shippingC` double(10,2) NOT NULL,
  `totalC` double(10,2) NOT NULL,
  `dateOrdered` date NOT NULL,
  `timeOrdered` time NOT NULL,
  PRIMARY KEY (`itemID`),
  KEY `userID` (`userID`),
  CONSTRAINT `cust_order_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `customer` (`iD`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cust_order
-- ----------------------------
INSERT INTO `cust_order` VALUES ('110110398152', '18', 'Ironman Mach VII Figurine', '495.00', '95.40', '631.73', '2012-12-28', '02:47:15');
INSERT INTO `cust_order` VALUES ('110110398196', '16', 'Batman Batpod Figurine', '457.20', '45.00', '537.35', '2012-12-26', '17:50:22');
INSERT INTO `cust_order` VALUES ('110110398462', '16', 'Superman Figurine', '97.20', '45.00', '152.15', '2012-12-26', '19:18:06');
INSERT INTO `cust_order` VALUES ('110110398492', '16', 'Batman Batpod Figurine1', '457.20', '45.00', '537.35', '2012-12-26', '18:11:03');
INSERT INTO `cust_order` VALUES ('110110544898', '16', 'Aquaman No. 2 comic', '98.00', '15.00', '132.21', '2012-12-30', '20:28:58');

-- ----------------------------
-- Table structure for `cust_selling_order`
-- ----------------------------
DROP TABLE IF EXISTS `cust_selling_order`;
CREATE TABLE `cust_selling_order` (
  `itemID` varchar(15) NOT NULL,
  `userID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subTitle` varchar(255) NOT NULL,
  `SPrice` double(10,2) NOT NULL,
  `BPRice` double(10,2) NOT NULL,
  `fees` double(10,2) NOT NULL,
  `startTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `desc` longtext NOT NULL,
  `picURL` varchar(151) NOT NULL,
  `orderStatus` varchar(15) DEFAULT NULL,
  `salePrice` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`itemID`),
  KEY `userID` (`userID`),
  CONSTRAINT `cust_selling_order_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `customer` (`iD`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cust_selling_order
-- ----------------------------

-- ----------------------------
-- Table structure for `ebaycatver`
-- ----------------------------
DROP TABLE IF EXISTS `ebaycatver`;
CREATE TABLE `ebaycatver` (
  `id` int(1) NOT NULL,
  `version` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ebaycatver
-- ----------------------------
INSERT INTO `ebaycatver` VALUES ('1', '639');

-- ----------------------------
-- Table structure for `ebaychildcat`
-- ----------------------------
DROP TABLE IF EXISTS `ebaychildcat`;
CREATE TABLE `ebaychildcat` (
  `CategoryID` varchar(8) NOT NULL,
  `CategoryName` varchar(125) NOT NULL,
  `parentCat` varchar(8) NOT NULL,
  `Leaf` int(1) DEFAULT NULL,
  PRIMARY KEY (`CategoryID`),
  KEY `ebaychildcat_ibfk_2` (`parentCat`),
  CONSTRAINT `ebaychildcat_ibfk_2` FOREIGN KEY (`parentCat`) REFERENCES `ebayparentcat` (`CategoryID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ebaychildcat
-- ----------------------------
INSERT INTO `ebaychildcat` VALUES ('10160', 'Disney', '10159', '1');
INSERT INTO `ebaychildcat` VALUES ('10161', 'ABC', '10159', '1');
INSERT INTO `ebaychildcat` VALUES ('10162', 'ESPN', '10159', '1');
INSERT INTO `ebaychildcat` VALUES ('102333', 'Advertising Opportunities', '99', '1');
INSERT INTO `ebaychildcat` VALUES ('11104', 'Cookbooks', '267', '1');
INSERT INTO `ebaychildcat` VALUES ('117038', 'Stroller Accessories', '2984', '1');
INSERT INTO `ebaychildcat` VALUES ('11724', 'Camcorders', '625', '1');
INSERT INTO `ebaychildcat` VALUES ('12', 'Other', '20081', '1');
INSERT INTO `ebaychildcat` VALUES ('1217', 'Primitives', '20081', '1');
INSERT INTO `ebaychildcat` VALUES ('121854', 'Small Animal Supplies', '1281', '1');
INSERT INTO `ebaychildcat` VALUES ('12605', 'Residential', '10542', '1');
INSERT INTO `ebaychildcat` VALUES ('1261', 'Other', '2984', '1');
INSERT INTO `ebaychildcat` VALUES ('1277', 'Other', '26395', '1');
INSERT INTO `ebaychildcat` VALUES ('1280', 'Other', '11700', '1');
INSERT INTO `ebaychildcat` VALUES ('1285', 'Reptile Supplies', '1281', '1');
INSERT INTO `ebaychildcat` VALUES ('1306', 'Other', '1305', '1');
INSERT INTO `ebaychildcat` VALUES ('1310', 'Other', '3252', '1');
INSERT INTO `ebaychildcat` VALUES ('132975', 'UMDs', '11232', '1');
INSERT INTO `ebaychildcat` VALUES ('136699', 'Display Phones', '15032', '1');
INSERT INTO `ebaychildcat` VALUES ('139971', 'Video Game Consoles', '1249', '1');
INSERT INTO `ebaychildcat` VALUES ('139973', 'Video Games', '1249', '1');
INSERT INTO `ebaychildcat` VALUES ('140151', 'SDC', '10159', '1');
INSERT INTO `ebaychildcat` VALUES ('147399', 'Car Rental', '3252', '1');
INSERT INTO `ebaychildcat` VALUES ('150044', 'Digital Photo Frames', '625', '1');
INSERT INTO `ebaychildcat` VALUES ('156595', 'Strategy Guides & Cheats', '1249', '1');
INSERT INTO `ebaychildcat` VALUES ('156597', 'Prepaid Gaming Cards', '1249', '1');
INSERT INTO `ebaychildcat` VALUES ('15825', 'Commercial', '10542', '1');
INSERT INTO `ebaychildcat` VALUES ('15841', 'Land', '10542', '1');
INSERT INTO `ebaychildcat` VALUES ('15897', 'Timeshares for Sale', '10542', '1');
INSERT INTO `ebaychildcat` VALUES ('1607', 'Other Real Estate', '10542', '1');
INSERT INTO `ebaychildcat` VALUES ('16078', 'Cruises', '3252', '1');
INSERT INTO `ebaychildcat` VALUES ('16085', 'Luggage', '3252', '1');
INSERT INTO `ebaychildcat` VALUES ('16123', 'Lodging', '3252', '1');
INSERT INTO `ebaychildcat` VALUES ('162', 'Other', '58058', '1');
INSERT INTO `ebaychildcat` VALUES ('16218', 'Accordion & Concertina', '619', '1');
INSERT INTO `ebaychildcat` VALUES ('164802', 'Campground & RV Parks', '3252', '1');
INSERT INTO `ebaychildcat` VALUES ('16709', 'Memberships', '99', '1');
INSERT INTO `ebaychildcat` VALUES ('169305', 'Other', '11116', '1');
INSERT INTO `ebaychildcat` VALUES ('170136', 'Stamp Certification Services', '260', '1');
INSERT INTO `ebaychildcat` VALUES ('170137', 'Other', '260', '1');
INSERT INTO `ebaychildcat` VALUES ('170595', 'Coupons', '99', '1');
INSERT INTO `ebaychildcat` VALUES ('170634', 'eBay Bucks Promotions', '99', '1');
INSERT INTO `ebaychildcat` VALUES ('170635', 'eBay Daily Deal', '99', '1');
INSERT INTO `ebaychildcat` VALUES ('170636', 'eBay Fashion Vault', '99', '1');
INSERT INTO `ebaychildcat` VALUES ('170637', 'Special Promotions', '99', '1');
INSERT INTO `ebaychildcat` VALUES ('171485', 'iPads, Tablets & eBook Readers', '58058', '1');
INSERT INTO `ebaychildcat` VALUES ('171833', 'Replacement Parts & Tools', '1249', '1');
INSERT INTO `ebaychildcat` VALUES ('172009', 'Gift Cards', '172008', '1');
INSERT INTO `ebaychildcat` VALUES ('172010', 'Coupons', '172008', '1');
INSERT INTO `ebaychildcat` VALUES ('172036', 'eBay Gift Cards', '172008', '1');
INSERT INTO `ebaychildcat` VALUES ('173633', 'Sports', '1305', '1');
INSERT INTO `ebaychildcat` VALUES ('173634', 'Concerts', '1305', '1');
INSERT INTO `ebaychildcat` VALUES ('173635', 'Theater', '1305', '1');
INSERT INTO `ebaychildcat` VALUES ('176950', 'Deal Vouchers', '172008', '1');
INSERT INTO `ebaychildcat` VALUES ('176983', 'Cassettes', '11233', '1');
INSERT INTO `ebaychildcat` VALUES ('176984', 'CDs', '11233', '1');
INSERT INTO `ebaychildcat` VALUES ('176985', 'Records', '11233', '1');
INSERT INTO `ebaychildcat` VALUES ('187', 'Other', '1249', '1');
INSERT INTO `ebaychildcat` VALUES ('20924', 'eBay User Tools', '99', '1');
INSERT INTO `ebaychildcat` VALUES ('2228', 'Textbooks, Education', '267', '1');
INSERT INTO `ebaychildcat` VALUES ('22608', 'Reproduction Antiques', '20081', '1');
INSERT INTO `ebaychildcat` VALUES ('2312', 'Other', '45100', '1');
INSERT INTO `ebaychildcat` VALUES ('26261', 'Other', '12576', '1');
INSERT INTO `ebaychildcat` VALUES ('268', 'Other', '267', '1');
INSERT INTO `ebaychildcat` VALUES ('27432', 'Other', '625', '1');
INSERT INTO `ebaychildcat` VALUES ('279', 'Children & Young Adults', '267', '1');
INSERT INTO `ebaychildcat` VALUES ('280', 'Magazine Back Issues', '267', '1');
INSERT INTO `ebaychildcat` VALUES ('29223', 'Antiquarian & Collectible', '267', '1');
INSERT INTO `ebaychildcat` VALUES ('29792', 'Audiobooks', '267', '1');
INSERT INTO `ebaychildcat` VALUES ('2989', 'Strollers', '2984', '1');
INSERT INTO `ebaychildcat` VALUES ('308', 'Other', '619', '1');
INSERT INTO `ebaychildcat` VALUES ('309', 'VHS Tapes', '11232', '1');
INSERT INTO `ebaychildcat` VALUES ('310', 'Other', '382', '1');
INSERT INTO `ebaychildcat` VALUES ('31388', 'Digital Cameras', '625', '1');
INSERT INTO `ebaychildcat` VALUES ('31411', 'Gift Certificates', '172008', '1');
INSERT INTO `ebaychildcat` VALUES ('317', 'Other Services', '316', '1');
INSERT INTO `ebaychildcat` VALUES ('31775', 'Tanning Beds & Lamps', '26395', '1');
INSERT INTO `ebaychildcat` VALUES ('3253', 'Airline', '3252', '1');
INSERT INTO `ebaychildcat` VALUES ('3516', 'Manuals & Resources', '58058', '1');
INSERT INTO `ebaychildcat` VALUES ('37631', 'Potty Training', '2984', '1');
INSERT INTO `ebaychildcat` VALUES ('377', 'Fiction & Literature', '267', '1');
INSERT INTO `ebaychildcat` VALUES ('378', 'Nonfiction', '267', '1');
INSERT INTO `ebaychildcat` VALUES ('381', 'Laserdiscs', '11232', '1');
INSERT INTO `ebaychildcat` VALUES ('38583', 'Video Gaming Merchandise', '1249', '1');
INSERT INTO `ebaychildcat` VALUES ('41676', 'Other Formats', '11232', '1');
INSERT INTO `ebaychildcat` VALUES ('42428', 'Other', '15032', '1');
INSERT INTO `ebaychildcat` VALUES ('43304', 'Replacement Parts & Tools', '15032', '1');
INSERT INTO `ebaychildcat` VALUES ('45101', 'Video Game Memorabilia', '45100', '1');
INSERT INTO `ebaychildcat` VALUES ('4684', 'Manuals & Guides', '625', '1');
INSERT INTO `ebaychildcat` VALUES ('47131', 'Graphic & Logo Design', '316', '1');
INSERT INTO `ebaychildcat` VALUES ('48757', 'Wholesale Lots', '2984', '1');
INSERT INTO `ebaychildcat` VALUES ('48760', 'Wholesale Lots', '1281', '1');
INSERT INTO `ebaychildcat` VALUES ('50115', 'Autographs-Reprints', '64482', '1');
INSERT INTO `ebaychildcat` VALUES ('50253', 'Bear Making Supplies', '237', '1');
INSERT INTO `ebaychildcat` VALUES ('52473', 'Storage & Media Accessories', '11233', '1');
INSERT INTO `ebaychildcat` VALUES ('52554', 'Storage & Media Accessories', '11232', '1');
INSERT INTO `ebaychildcat` VALUES ('56080', 'Wholesale Lots', '64482', '1');
INSERT INTO `ebaychildcat` VALUES ('57735', 'Coupons', '26395', '1');
INSERT INTO `ebaychildcat` VALUES ('617', 'DVDs & Blu-ray Discs', '11232', '1');
INSERT INTO `ebaychildcat` VALUES ('618', 'Other Formats', '11233', '1');
INSERT INTO `ebaychildcat` VALUES ('63512', 'Horse Supplies', '1281', '1');
INSERT INTO `ebaychildcat` VALUES ('63821', 'Film Stock', '11232', '1');
INSERT INTO `ebaychildcat` VALUES ('75576', 'Other Crafts', '14339', '1');
INSERT INTO `ebaychildcat` VALUES ('82250', 'Other', '1281', '1');
INSERT INTO `ebaychildcat` VALUES ('88433', 'Other', '99', '1');
INSERT INTO `ebaychildcat` VALUES ('9355', 'Cell Phones & Smartphones', '15032', '1');
INSERT INTO `ebaychildcat` VALUES ('94825', 'Manufactured Homes', '10542', '1');
INSERT INTO `ebaychildcat` VALUES ('98863', 'Other', '281', '1');
INSERT INTO `ebaychildcat` VALUES ('98982', 'Rail', '3252', '1');

-- ----------------------------
-- Table structure for `ebayparentcat`
-- ----------------------------
DROP TABLE IF EXISTS `ebayparentcat`;
CREATE TABLE `ebayparentcat` (
  `CategoryID` varchar(8) NOT NULL,
  `CategoryName` varchar(125) NOT NULL,
  `Leaf` int(1) DEFAULT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ebayparentcat
-- ----------------------------
INSERT INTO `ebayparentcat` VALUES ('1', 'Collectibles', '0');
INSERT INTO `ebayparentcat` VALUES ('10159', 'Partner', '0');
INSERT INTO `ebayparentcat` VALUES ('10542', 'Real Estate', '0');
INSERT INTO `ebayparentcat` VALUES ('11116', 'Coins & Paper Money', '0');
INSERT INTO `ebayparentcat` VALUES ('11232', 'DVDs & Movies', '0');
INSERT INTO `ebayparentcat` VALUES ('11233', 'Music', '0');
INSERT INTO `ebayparentcat` VALUES ('11450', 'Clothing, Shoes & Accessories', '0');
INSERT INTO `ebayparentcat` VALUES ('11700', 'Home & Garden', '0');
INSERT INTO `ebayparentcat` VALUES ('1249', 'Video Games & Consoles', '0');
INSERT INTO `ebayparentcat` VALUES ('12576', 'Business & Industrial', '0');
INSERT INTO `ebayparentcat` VALUES ('1281', 'Pet Supplies', '0');
INSERT INTO `ebayparentcat` VALUES ('1305', 'Tickets', '0');
INSERT INTO `ebayparentcat` VALUES ('14339', 'Crafts', '0');
INSERT INTO `ebayparentcat` VALUES ('15032', 'Cell Phones & Accessories', '0');
INSERT INTO `ebayparentcat` VALUES ('172008', 'Gift Cards & Coupons', '0');
INSERT INTO `ebayparentcat` VALUES ('20081', 'Antiques', '0');
INSERT INTO `ebayparentcat` VALUES ('220', 'Toys & Hobbies', '0');
INSERT INTO `ebayparentcat` VALUES ('237', 'Dolls & Bears', '0');
INSERT INTO `ebayparentcat` VALUES ('260', 'Stamps', '0');
INSERT INTO `ebayparentcat` VALUES ('26395', 'Health & Beauty', '0');
INSERT INTO `ebayparentcat` VALUES ('267', 'Books', '0');
INSERT INTO `ebayparentcat` VALUES ('281', 'Jewelry & Watches', '0');
INSERT INTO `ebayparentcat` VALUES ('293', 'Consumer Electronics', '0');
INSERT INTO `ebayparentcat` VALUES ('2984', 'Baby', '0');
INSERT INTO `ebayparentcat` VALUES ('316', 'Specialty Services', '0');
INSERT INTO `ebayparentcat` VALUES ('3252', 'Travel', '0');
INSERT INTO `ebayparentcat` VALUES ('382', 'Sporting Goods', '0');
INSERT INTO `ebayparentcat` VALUES ('45100', 'Entertainment Memorabilia', '0');
INSERT INTO `ebayparentcat` VALUES ('550', 'Art', '0');
INSERT INTO `ebayparentcat` VALUES ('58058', 'Computers/Tablets & Networking', '0');
INSERT INTO `ebayparentcat` VALUES ('619', 'Musical Instruments & Gear', '0');
INSERT INTO `ebayparentcat` VALUES ('625', 'Cameras & Photo', '0');
INSERT INTO `ebayparentcat` VALUES ('64482', 'Sports Mem, Cards & Fan Shop', '0');
INSERT INTO `ebayparentcat` VALUES ('870', 'Pottery & Glass', '0');
INSERT INTO `ebayparentcat` VALUES ('99', 'Everything Else', '0');

-- ----------------------------
-- Table structure for `my_aspnet_applications`
-- ----------------------------
DROP TABLE IF EXISTS `my_aspnet_applications`;
CREATE TABLE `my_aspnet_applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_aspnet_applications
-- ----------------------------
INSERT INTO `my_aspnet_applications` VALUES ('1', '/', 'MySQL default application');
INSERT INTO `my_aspnet_applications` VALUES ('2', '/SnipsOnline', 'MySQL Role provider');

-- ----------------------------
-- Table structure for `my_aspnet_membership`
-- ----------------------------
DROP TABLE IF EXISTS `my_aspnet_membership`;
CREATE TABLE `my_aspnet_membership` (
  `userId` int(11) NOT NULL DEFAULT '0',
  `Email` varchar(128) DEFAULT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  `Password` varchar(128) NOT NULL,
  `PasswordKey` char(32) DEFAULT NULL,
  `PasswordFormat` tinyint(4) DEFAULT NULL,
  `PasswordQuestion` varchar(255) DEFAULT NULL,
  `PasswordAnswer` varchar(255) DEFAULT NULL,
  `IsApproved` tinyint(1) DEFAULT NULL,
  `LastActivityDate` datetime DEFAULT NULL,
  `LastLoginDate` datetime DEFAULT NULL,
  `LastPasswordChangedDate` datetime DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `IsLockedOut` tinyint(1) DEFAULT NULL,
  `LastLockedOutDate` datetime DEFAULT NULL,
  `FailedPasswordAttemptCount` int(10) unsigned DEFAULT NULL,
  `FailedPasswordAttemptWindowStart` datetime DEFAULT NULL,
  `FailedPasswordAnswerAttemptCount` int(10) unsigned DEFAULT NULL,
  `FailedPasswordAnswerAttemptWindowStart` datetime DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='2';

-- ----------------------------
-- Records of my_aspnet_membership
-- ----------------------------
INSERT INTO `my_aspnet_membership` VALUES ('1', 'archtomato@gmail.com', '', '1T7hG0RUN+WaIOkdRL+5usiZoH+H4sMoaXS5w6qkWSc=', 'AgXvTwEjhjF17LQ5t51QxQ==', '1', null, null, '1', '2012-12-24 21:48:41', '2012-12-24 21:48:41', '2012-12-24 21:48:41', '2012-12-24 21:48:41', '0', '2012-12-24 21:48:41', '0', '2012-12-24 21:48:41', '0', '2012-12-24 21:48:41');
INSERT INTO `my_aspnet_membership` VALUES ('16', 'archtomato@hotmail.com', '', 'sS+bs2Rofbcuwz7wSIQzm1TKadtT0uzu64JqFTY1670=', 'xUM0vGKmgsZXMRtDSMjpqw==', '1', null, null, '1', '2012-12-31 14:22:15', '2012-12-31 14:21:07', '2012-12-25 04:46:12', '2012-12-25 04:46:12', '0', '2012-12-25 04:46:12', '0', '2012-12-25 04:46:12', '0', '2012-12-25 04:46:12');
INSERT INTO `my_aspnet_membership` VALUES ('18', 'karimullahbinsyedahmed@my.jcu.edu.au', '', '90g9Xq/0Hu1+ykoFfKwt9xqPpmK7Ukb/oahiBArBbvI=', 'DG+1GjPObWOC/zYcaMTHlQ==', '1', null, null, '1', '2013-01-02 01:12:00', '2013-01-02 01:06:02', '2012-12-28 02:45:08', '2012-12-28 02:45:08', '0', '2012-12-28 02:45:08', '0', '2012-12-28 02:45:08', '0', '2012-12-28 02:45:08');

-- ----------------------------
-- Table structure for `my_aspnet_profiles`
-- ----------------------------
DROP TABLE IF EXISTS `my_aspnet_profiles`;
CREATE TABLE `my_aspnet_profiles` (
  `userId` int(11) NOT NULL,
  `valueindex` longtext,
  `stringdata` longtext,
  `binarydata` longblob,
  `lastUpdatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_aspnet_profiles
-- ----------------------------

-- ----------------------------
-- Table structure for `my_aspnet_roles`
-- ----------------------------
DROP TABLE IF EXISTS `my_aspnet_roles`;
CREATE TABLE `my_aspnet_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicationId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of my_aspnet_roles
-- ----------------------------
INSERT INTO `my_aspnet_roles` VALUES ('1', '1', 'admin');
INSERT INTO `my_aspnet_roles` VALUES ('2', '1', 'customer');
INSERT INTO `my_aspnet_roles` VALUES ('4', '2', 'adminstrator');
INSERT INTO `my_aspnet_roles` VALUES ('5', '2', 'customer');

-- ----------------------------
-- Table structure for `my_aspnet_schemaversion`
-- ----------------------------
DROP TABLE IF EXISTS `my_aspnet_schemaversion`;
CREATE TABLE `my_aspnet_schemaversion` (
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_aspnet_schemaversion
-- ----------------------------
INSERT INTO `my_aspnet_schemaversion` VALUES ('7');

-- ----------------------------
-- Table structure for `my_aspnet_sessioncleanup`
-- ----------------------------
DROP TABLE IF EXISTS `my_aspnet_sessioncleanup`;
CREATE TABLE `my_aspnet_sessioncleanup` (
  `LastRun` datetime NOT NULL,
  `IntervalMinutes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_aspnet_sessioncleanup
-- ----------------------------
INSERT INTO `my_aspnet_sessioncleanup` VALUES ('2012-12-24 21:47:03', '10');

-- ----------------------------
-- Table structure for `my_aspnet_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `my_aspnet_sessions`;
CREATE TABLE `my_aspnet_sessions` (
  `SessionId` varchar(255) NOT NULL,
  `ApplicationId` int(11) NOT NULL,
  `Created` datetime NOT NULL,
  `Expires` datetime NOT NULL,
  `LockDate` datetime NOT NULL,
  `LockId` int(11) NOT NULL,
  `Timeout` int(11) NOT NULL,
  `Locked` tinyint(1) NOT NULL,
  `SessionItems` longblob,
  `Flags` int(11) NOT NULL,
  PRIMARY KEY (`SessionId`,`ApplicationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_aspnet_sessions
-- ----------------------------

-- ----------------------------
-- Table structure for `my_aspnet_users`
-- ----------------------------
DROP TABLE IF EXISTS `my_aspnet_users`;
CREATE TABLE `my_aspnet_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicationId` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `isAnonymous` tinyint(1) NOT NULL DEFAULT '1',
  `lastActivityDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_aspnet_users
-- ----------------------------
INSERT INTO `my_aspnet_users` VALUES ('1', '1', 'administrator', '0', '2012-12-24 21:48:41');
INSERT INTO `my_aspnet_users` VALUES ('15', '2', 'administrator', '0', '2012-12-25 04:45:16');
INSERT INTO `my_aspnet_users` VALUES ('16', '1', 'archtomato@hotmail.com', '0', '2012-12-31 14:22:15');
INSERT INTO `my_aspnet_users` VALUES ('17', '2', 'archtomato@hotmail.com', '0', '2012-12-25 04:46:12');
INSERT INTO `my_aspnet_users` VALUES ('18', '1', 'karimullahbinsyedahmed@my.jcu.edu.au', '0', '2013-01-02 01:12:00');
INSERT INTO `my_aspnet_users` VALUES ('19', '2', 'karimullahbinsyedahmed@my.jcu.edu.au', '0', '2012-12-28 02:45:08');

-- ----------------------------
-- Table structure for `my_aspnet_usersinroles`
-- ----------------------------
DROP TABLE IF EXISTS `my_aspnet_usersinroles`;
CREATE TABLE `my_aspnet_usersinroles` (
  `userId` int(11) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of my_aspnet_usersinroles
-- ----------------------------
INSERT INTO `my_aspnet_usersinroles` VALUES ('1', '1');
INSERT INTO `my_aspnet_usersinroles` VALUES ('15', '4');
INSERT INTO `my_aspnet_usersinroles` VALUES ('17', '5');
INSERT INTO `my_aspnet_usersinroles` VALUES ('19', '5');

-- ----------------------------
-- Table structure for `orders_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `orders_feedback`;
CREATE TABLE `orders_feedback` (
  `itemID` varchar(15) NOT NULL,
  `feedbackDesc` varchar(255) NOT NULL,
  `itemCost` varchar(20) NOT NULL,
  `itemQuality` varchar(20) NOT NULL,
  `itemShipping` varchar(20) NOT NULL,
  `positiveExperience` varchar(20) NOT NULL,
  `positiveExperiencePic` varchar(20) NOT NULL,
  `dateRated` date NOT NULL,
  PRIMARY KEY (`itemID`),
  CONSTRAINT `orders_feedback_ibfk_1` FOREIGN KEY (`itemID`) REFERENCES `cust_order` (`itemID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orders_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `shoppingcart`
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `custID` int(11) NOT NULL,
  `itemID` varchar(15) NOT NULL,
  `localValue` int(5) NOT NULL,
  `dateAdded` datetime NOT NULL,
  PRIMARY KEY (`custID`,`itemID`),
  CONSTRAINT `shoppingCartFK` FOREIGN KEY (`custID`) REFERENCES `customer` (`iD`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
