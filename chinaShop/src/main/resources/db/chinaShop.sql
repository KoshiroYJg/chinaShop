/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : day01

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001
author                : YJG
Date: 2017-05-12 10:55:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cartId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `goodsNum` int(11) DEFAULT NULL,
  `goodsId` int(11) DEFAULT NULL,
  `createDate` varchar(255) DEFAULT NULL,
  `modeDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cartId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf-8;

-- ----------------------------
-- Table structure for chinatype
-- ----------------------------
DROP TABLE IF EXISTS `chinatype`;
CREATE TABLE `chinatype` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `createDate` varchar(255) DEFAULT NULL,
  `createId` int(11) DEFAULT NULL,
  `modeDate` varchar(255) DEFAULT NULL,
  `modeId` int(11) DEFAULT NULL,
  `createPer` varchar(255) DEFAULT NULL,
  `modePer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf-8;

-- ----------------------------
-- Table structure for chinatyped
-- ----------------------------
DROP TABLE IF EXISTS `chinatyped`;
CREATE TABLE `chinatyped` (
  `typeDid` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createDate` varchar(255) DEFAULT NULL,
  `createId` int(11) DEFAULT NULL,
  `modeDate` varchar(255) DEFAULT NULL,
  `modeId` int(11) DEFAULT NULL,
  `createPer` varchar(255) DEFAULT NULL,
  `modePer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`typeDid`),
  KEY `typeId` (`typeId`),
  CONSTRAINT `chinatyped_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES `chinatype` (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf-8;

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `collectId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `goodsId` int(11) DEFAULT NULL,
  `createDate` varchar(255) DEFAULT NULL,
  `modeDate` datetime DEFAULT NULL,
  PRIMARY KEY (`collectId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf-8;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goodsId` int(11) NOT NULL AUTO_INCREMENT,
  `goodsName` varchar(255) DEFAULT NULL,
  `goodsPrice` double(10,2) DEFAULT NULL,
  `goodsFrom` varchar(255) DEFAULT NULL,
  `goodsDesc` varchar(255) DEFAULT NULL,
  `goodsNum` int(11) DEFAULT NULL,
  `goodsUrl` varchar(255) DEFAULT NULL,
  `goodsUrl2` varchar(255) DEFAULT NULL,
  `goodsUrl3` varchar(255) DEFAULT NULL,
  `goodsUrl4` varchar(255) DEFAULT NULL,
  `createDate` varchar(255) DEFAULT NULL,
  `createId` int(11) DEFAULT NULL,
  `modeDate` varchar(255) DEFAULT NULL,
  `modeId` int(11) DEFAULT NULL,
  `goodsPriceZ` double(10,2) DEFAULT NULL,
  `typeDid` int(11) DEFAULT NULL,
  `ifZK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goodsId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf-8;

-- ----------------------------
-- Table structure for goodsmessage
-- ----------------------------
DROP TABLE IF EXISTS `goodsmessage`;
CREATE TABLE `goodsmessage` (
  `goodsMid` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `manyd` varchar(255) DEFAULT NULL,
  `goodsMDetail` varchar(255) DEFAULT NULL,
  `createDate` varchar(255) DEFAULT NULL,
  `goodsId` int(11) DEFAULT NULL,
  PRIMARY KEY (`goodsMid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf-8;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `messageId` int(11) NOT NULL AUTO_INCREMENT,
  `mName` varchar(255) DEFAULT NULL,
  `mEmail` varchar(255) DEFAULT NULL,
  `mPhone` varchar(255) DEFAULT NULL,
  `mDetail` varchar(255) DEFAULT NULL,
  `createDate` varchar(255) DEFAULT NULL,
  `handleDate` varchar(255) DEFAULT NULL,
  `handleId` int(11) DEFAULT NULL,
  `mStatus` varchar(255) DEFAULT NULL,
  `handleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf-8;

-- ----------------------------
-- Table structure for mibao
-- ----------------------------
DROP TABLE IF EXISTS `mibao`;
CREATE TABLE `mibao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `uquestion` varchar(255) DEFAULT NULL,
  `uanswer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf-8;

-- ----------------------------
-- Table structure for seller
-- ----------------------------
DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller` (
  `sellerId` int(11) NOT NULL AUTO_INCREMENT,
  `tUserName` varchar(255) DEFAULT NULL,
  `tPhoneNum` varchar(255) DEFAULT NULL,
  `tIdCard` varchar(255) DEFAULT NULL,
  `tEmail` varchar(255) DEFAULT NULL,
  `tIdCardUrl1` varchar(255) DEFAULT NULL,
  `tIdCardUrl2` varchar(255) DEFAULT NULL,
  `tStatus` varchar(255) DEFAULT NULL,
  `createDate` varchar(255) DEFAULT NULL,
  `modeDate` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`sellerId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf-8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phoneNum` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `addressD` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ifAdmin` varchar(255) DEFAULT NULL,
  `createDate` varchar(255) DEFAULT NULL,
  `modeDate` varchar(255) DEFAULT NULL,
  `createPer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf-8;
