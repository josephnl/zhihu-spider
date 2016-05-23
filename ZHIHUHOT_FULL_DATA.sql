/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50709
 Source Host           : localhost
 Source Database       : ZHIHUHOT_FULL_DATA

 Target Server Type    : MySQL
 Target Server Version : 50709
 File Encoding         : utf-8

 Date: 05/23/2016 01:16:10 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `QUESTION`
-- ----------------------------
DROP TABLE IF EXISTS `QUESTION`;
CREATE TABLE `QUESTION` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_ID` int(10) unsigned NOT NULL,
  `FOCUS` int(10) unsigned NOT NULL,
  `ANSWER` int(10) unsigned NOT NULL,
  `LAST_VISIT` int(10) unsigned DEFAULT NULL,
  `ADD_TIME` int(10) unsigned NOT NULL,
  `TOP_ANSWER_NUMBER` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `LINK_ID` (`LINK_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1101529 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Table structure for `TOPIC`
-- ----------------------------
DROP TABLE IF EXISTS `TOPIC`;
CREATE TABLE `TOPIC` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_VISIT` int(10) unsigned DEFAULT NULL,
  `LINK_ID` int(10) unsigned NOT NULL,
  `ADD_TIME` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `LINK_ID` (`LINK_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=49486 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

SET FOREIGN_KEY_CHECKS = 1;
