/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.27-community-nt : Database - black_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`black_db` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `black_db`;

/*Table structure for table `bi_dict` */

DROP TABLE IF EXISTS `bi_dict`;

CREATE TABLE `bi_dict` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `TYPE_CODE` varchar(50) collate utf8_bin NOT NULL,
  `TYPE_NAME` varchar(50) collate utf8_bin NOT NULL,
  `DICT_KEY` varchar(50) collate utf8_bin NOT NULL,
  `DICT_NAME` varchar(50) collate utf8_bin NOT NULL,
  `DICT_VALUE` varchar(100) collate utf8_bin NOT NULL,
  `VISI_STATUS` char(1) collate utf8_bin NOT NULL default '1',
  `DICT_ORDER` int(11) NOT NULL,
  `REMARK` varchar(500) collate utf8_bin default NULL,
  `EDIT_STATUS` char(1) collate utf8_bin NOT NULL default '1',
  `CREATE_TIME` varchar(14) collate utf8_bin default NULL,
  `CREATE_USER_ID` varchar(32) collate utf8_bin default NULL,
  `MODIFY_TIME` varchar(14) collate utf8_bin default NULL,
  `MODIFY_USER_ID` varchar(32) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bi_dict` */

LOCK TABLES `bi_dict` WRITE;

UNLOCK TABLES;

/*Table structure for table `bi_menu` */

DROP TABLE IF EXISTS `bi_menu`;

CREATE TABLE `bi_menu` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `MENU_CODE` varchar(50) collate utf8_bin NOT NULL,
  `MENU_NAME` varchar(50) collate utf8_bin NOT NULL,
  `MENU_PATH` varchar(500) collate utf8_bin default NULL,
  `PARENT_MENU_CODE` varchar(50) collate utf8_bin default NULL,
  `MENU_ORDER` int(11) default NULL,
  `SELF_PIC_PATH` varchar(500) collate utf8_bin default NULL,
  `CREATE_TIME` varchar(14) collate utf8_bin default NULL,
  `CREATE_USER_ID` varchar(32) collate utf8_bin default NULL,
  `MODIFY_TIME` varchar(14) collate utf8_bin default NULL,
  `MODIFY_USER_ID` varchar(32) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `IDX_BI_MENU_01` (`MENU_CODE`),
  KEY `IDX_BI_MENU_02` (`PARENT_MENU_CODE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bi_menu` */

LOCK TABLES `bi_menu` WRITE;

UNLOCK TABLES;

/*Table structure for table `bi_role` */

DROP TABLE IF EXISTS `bi_role`;

CREATE TABLE `bi_role` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `ROLE_NAME` varchar(50) collate utf8_bin default NULL,
  `CREATE_TIME` varchar(14) collate utf8_bin default NULL,
  `CREATE_USER_ID` varchar(32) collate utf8_bin default NULL,
  `MODIFY_TIME` varchar(14) collate utf8_bin default NULL,
  `MODIFY_USER_ID` varchar(32) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bi_role` */

LOCK TABLES `bi_role` WRITE;

UNLOCK TABLES;

/*Table structure for table `bi_role_menu` */

DROP TABLE IF EXISTS `bi_role_menu`;

CREATE TABLE `bi_role_menu` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `FK_BI_ROLE` varchar(32) collate utf8_bin NOT NULL,
  `FK_BI_MENU` varchar(32) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_ROLE_MENU_01` (`FK_BI_ROLE`),
  KEY `IDX_ROLE_MENU_02` (`FK_BI_MENU`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bi_role_menu` */

LOCK TABLES `bi_role_menu` WRITE;

UNLOCK TABLES;

/*Table structure for table `bi_status_code` */

DROP TABLE IF EXISTS `bi_status_code`;

CREATE TABLE `bi_status_code` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `BIZ_TYPE` varchar(50) collate utf8_bin NOT NULL,
  `BIZ_NAME` varchar(50) collate utf8_bin NOT NULL,
  `STATUS_CODE` varchar(50) collate utf8_bin NOT NULL,
  `STATUS_NAME` varchar(50) collate utf8_bin NOT NULL,
  `STATUS_ORDER` int(11) NOT NULL,
  `USE_STATUS` char(1) collate utf8_bin NOT NULL default '1' COMMENT '使用状态，0 - 停用，1 - 使用',
  `SELECTED_STATUS` char(1) collate utf8_bin NOT NULL default '0' COMMENT '默认选中状态，0 - 未选中，1 - 已选中',
  `CREATE_TIME` varchar(14) collate utf8_bin default NULL,
  `CREATE_USER_ID` varchar(32) collate utf8_bin default NULL,
  `MODIFY_TIME` varchar(14) collate utf8_bin default NULL,
  `MODIFY_USER_ID` varchar(32) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_BI_STATUS_CODE_01` (`BIZ_TYPE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bi_status_code` */

LOCK TABLES `bi_status_code` WRITE;

UNLOCK TABLES;

/*Table structure for table `bi_sys_msg` */

DROP TABLE IF EXISTS `bi_sys_msg`;

CREATE TABLE `bi_sys_msg` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `FK_TABLE_ID` varchar(32) collate utf8_bin NOT NULL COMMENT '外键（接收对象），根据“通知对象”字段值，通知对应对象',
  `NOTICE_TARGET` varchar(100) collate utf8_bin NOT NULL COMMENT '通知对象， BS_USER - 通知用户，BS_GROUP - 通知用户组',
  `NOTICE_STATUS` char(1) collate utf8_bin NOT NULL default '0' COMMENT '通知状态， 0 - 未通知，1 - 已通知',
  `NOTICE_TITLE` varchar(100) collate utf8_bin NOT NULL,
  `NOTICE_CONTANT` text collate utf8_bin NOT NULL,
  `CREATE_TIME` varchar(14) collate utf8_bin default NULL,
  `CREATE_USER_ID` varchar(32) collate utf8_bin default NULL,
  `MODIFY_TIME` varchar(14) collate utf8_bin default NULL,
  `MODIFY_USER_ID` varchar(32) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_SYS_MSG_01` (`FK_TABLE_ID`,`NOTICE_TARGET`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bi_sys_msg` */

LOCK TABLES `bi_sys_msg` WRITE;

UNLOCK TABLES;

/*Table structure for table `bi_user` */

DROP TABLE IF EXISTS `bi_user`;

CREATE TABLE `bi_user` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `LOGIN_NAME` varchar(30) collate utf8_bin NOT NULL,
  `LOGIN_PWD` varchar(64) collate utf8_bin NOT NULL,
  `USER_NAME` varchar(50) collate utf8_bin NOT NULL,
  `CREATE_TIME` varchar(14) collate utf8_bin default NULL,
  `CREATE_USER_ID` varchar(32) collate utf8_bin default NULL,
  `MODIFY_TIME` varchar(14) collate utf8_bin default NULL,
  `MODIFY_USER_ID` varchar(32) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `IDX_BI_USER_01` (`LOGIN_NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bi_user` */

LOCK TABLES `bi_user` WRITE;

UNLOCK TABLES;

/*Table structure for table `bi_user_role` */

DROP TABLE IF EXISTS `bi_user_role`;

CREATE TABLE `bi_user_role` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `FK_BI_USER` varchar(32) collate utf8_bin NOT NULL,
  `FK_BI_ROLE` varchar(32) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_BI_USER_ROLE_01` (`FK_BI_USER`),
  KEY `IDX_BI_USER_ROLE_02` (`FK_BI_ROLE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bi_user_role` */

LOCK TABLES `bi_user_role` WRITE;

UNLOCK TABLES;

/*Table structure for table `bs_ad` */

DROP TABLE IF EXISTS `bs_ad`;

CREATE TABLE `bs_ad` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `AD_POSITION` varchar(100) collate utf8_bin NOT NULL COMMENT '广告位置，广告要放置的模块位置',
  `AD_ORDER` int(11) NOT NULL,
  `TOP_STATUS` char(1) collate utf8_bin NOT NULL default '0' COMMENT '置顶状态，0 - 否，1 - 是',
  `AD_TYPE` char(2) collate utf8_bin NOT NULL default '01' COMMENT '广告类型，01 - 文字，02 - 图片， 03 - FLASH, 04 - 代码，99 - 其他',
  `AD_NAME` varchar(100) collate utf8_bin NOT NULL,
  `LINK_ADDR` varchar(200) collate utf8_bin default NULL,
  `CONTACT_MAN` varchar(50) collate utf8_bin default NULL,
  `CONTACT_EMAIL` varchar(100) collate utf8_bin default NULL,
  `CONTACT_PHONE` varchar(20) collate utf8_bin default NULL,
  `CLICK_NUM` int(11) default NULL,
  `USE_STATUS` char(1) collate utf8_bin NOT NULL default '1' COMMENT '使用状态，0 - 停用，1 - 使用',
  `CREATE_TIME` varchar(14) collate utf8_bin default NULL,
  `CREATE_USER_ID` varchar(32) collate utf8_bin default NULL,
  `MODIFY_TIME` varchar(14) collate utf8_bin default NULL,
  `MODIFY_USER_ID` varchar(32) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bs_ad` */

LOCK TABLES `bs_ad` WRITE;

UNLOCK TABLES;

/*Table structure for table `bs_article` */

DROP TABLE IF EXISTS `bs_article`;

CREATE TABLE `bs_article` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_BLOG_INFO` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_USER` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_ARTICLE_SORT` varchar(32) collate utf8_bin NOT NULL,
  `ARTICLE_TITLE` varchar(100) collate utf8_bin NOT NULL,
  `PUBLISH_STATUS` char(1) collate utf8_bin NOT NULL default '0' COMMENT '发布状态，0 - 未发布，1 - 已发布',
  `PUBLISH_TIME` varchar(14) collate utf8_bin NOT NULL,
  `PUBLISH_IP` varchar(40) collate utf8_bin default NULL,
  `READ_NUM` int(11) default NULL,
  `ARTICLE_MODEL` char(1) collate utf8_bin NOT NULL default '1' COMMENT '文章的模式，0 - 私有，1 - 公开，2 - 仅好友查看',
  `ARTICLE_CONTANT` text collate utf8_bin,
  `TOP_STATUS` char(1) collate utf8_bin NOT NULL default '0' COMMENT '置顶状态，0 - 否，1 - 是',
  `RECOMMEND_STATUS` char(1) collate utf8_bin NOT NULL default '0' COMMENT '博主推荐状态，0 - 否，1 - 是',
  `CREATE_TIME` varchar(14) collate utf8_bin default NULL,
  `CREATE_USER_ID` varchar(32) collate utf8_bin default NULL,
  `MODIFY_TIME` varchar(14) collate utf8_bin default NULL,
  `MODIFY_USER_ID` varchar(32) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_BS_ARTICLE_01` (`FK_BS_USER`),
  KEY `IDX_BS_ARTICLE_02` (`FK_BS_ARTICLE_SORT`),
  KEY `IDX_BS_ARTICLE_03` (`FK_BS_BLOG_INFO`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bs_article` */

LOCK TABLES `bs_article` WRITE;

UNLOCK TABLES;

/*Table structure for table `bs_article_sort` */

DROP TABLE IF EXISTS `bs_article_sort`;

CREATE TABLE `bs_article_sort` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_USER` varchar(60) collate utf8_bin NOT NULL,
  `CLASSIFY_NAME` varchar(100) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_BS_ARTICLE_SORT_01` (`FK_BS_USER`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bs_article_sort` */

LOCK TABLES `bs_article_sort` WRITE;

UNLOCK TABLES;

/*Table structure for table `bs_attention` */

DROP TABLE IF EXISTS `bs_attention`;

CREATE TABLE `bs_attention` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_USER` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_USER_ATTE` varchar(32) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_BS_ATTENTION_01` (`FK_BS_USER`),
  KEY `IDX_BS_ATTENTION_02` (`FK_BS_USER_ATTE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='博客用户关注表，记录博主关注的用户';

/*Data for the table `bs_attention` */

LOCK TABLES `bs_attention` WRITE;

UNLOCK TABLES;

/*Table structure for table `bs_blog_info` */

DROP TABLE IF EXISTS `bs_blog_info`;

CREATE TABLE `bs_blog_info` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_USER` varchar(32) collate utf8_bin NOT NULL,
  `BLOG_TITLE` varchar(50) collate utf8_bin NOT NULL,
  `BLOG_KEYWORD` varchar(100) collate utf8_bin default NULL,
  `BLOG_DESC` varchar(500) collate utf8_bin default NULL,
  `BLOG_NAME` varchar(50) collate utf8_bin default NULL,
  `BG_IMG_ADDR` varchar(255) collate utf8_bin default NULL COMMENT '背景图自定义博客背景图',
  `CREATE_TIME` varchar(14) collate utf8_bin default NULL,
  `CREATE_USER_ID` varchar(32) collate utf8_bin default NULL,
  `MODIFY_TIME` varchar(14) collate utf8_bin default NULL,
  `MODIFY_USER_ID` varchar(32) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_BS_BLOG_INFO_01` (`FK_BS_USER`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bs_blog_info` */

LOCK TABLES `bs_blog_info` WRITE;

UNLOCK TABLES;

/*Table structure for table `bs_friend` */

DROP TABLE IF EXISTS `bs_friend`;

CREATE TABLE `bs_friend` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_USER_SELF` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_USER_FRIEND` varchar(32) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `IDX_BS_FRIEND_01` (`FK_BS_USER_SELF`,`FK_BS_USER_FRIEND`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bs_friend` */

LOCK TABLES `bs_friend` WRITE;

UNLOCK TABLES;

/*Table structure for table `bs_friendly_link` */

DROP TABLE IF EXISTS `bs_friendly_link`;

CREATE TABLE `bs_friendly_link` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `LINK_NAME` varchar(60) collate utf8_bin NOT NULL,
  `LINK_ADDR` varchar(255) collate utf8_bin NOT NULL,
  `LINK_LOGO` varchar(255) collate utf8_bin default NULL,
  `SHOW_ORDER` int(11) default NULL,
  `USE_STATUS` char(1) collate utf8_bin NOT NULL default '1' COMMENT '使用状态，0 - 停用，1 - 使用',
  `CREATE_TIME` varchar(14) collate utf8_bin default NULL,
  `CREATE_USER_ID` varchar(32) collate utf8_bin default NULL,
  `MODIFY_TIME` varchar(14) collate utf8_bin default NULL,
  `MODIFY_USER_ID` varchar(32) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bs_friendly_link` */

LOCK TABLES `bs_friendly_link` WRITE;

UNLOCK TABLES;

/*Table structure for table `bs_group` */

DROP TABLE IF EXISTS `bs_group`;

CREATE TABLE `bs_group` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `GROUP_NAME` varchar(50) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bs_group` */

LOCK TABLES `bs_group` WRITE;

UNLOCK TABLES;

/*Table structure for table `bs_mood_saysay` */

DROP TABLE IF EXISTS `bs_mood_saysay`;

CREATE TABLE `bs_mood_saysay` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_USER` varchar(32) collate utf8_bin NOT NULL,
  `PUBLISH_STATUS` char(1) collate utf8_bin NOT NULL default '0' COMMENT '发布状态，0 - 未发布，1 - 已发布',
  `PUBLISH_TIME` varchar(14) collate utf8_bin NOT NULL,
  `PUBLISH_IP` varchar(40) collate utf8_bin default NULL,
  `SAYSAY_MODEL` char(1) collate utf8_bin NOT NULL default '1' COMMENT '文章的模式，0 - 私有，1 - 公开，2 - 仅好友查看',
  `SAYSAY_CONTANT` varchar(500) collate utf8_bin default NULL,
  `TOP_STATUS` char(1) collate utf8_bin NOT NULL default '0' COMMENT '置顶状态，0 - 否，1 - 是',
  `CREATE_TIME` varchar(14) collate utf8_bin default NULL,
  `CREATE_USER_ID` varchar(32) collate utf8_bin default NULL,
  `MODIFY_TIME` varchar(14) collate utf8_bin default NULL,
  `MODIFY_USER_ID` varchar(32) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_BS_MOOD_SAYSAY_01` (`FK_BS_USER`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bs_mood_saysay` */

LOCK TABLES `bs_mood_saysay` WRITE;

UNLOCK TABLES;

/*Table structure for table `bs_photo_sort` */

DROP TABLE IF EXISTS `bs_photo_sort`;

CREATE TABLE `bs_photo_sort` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_USER` varchar(32) collate utf8_bin NOT NULL,
  `SORT_NAME` varchar(50) collate utf8_bin NOT NULL,
  `SHOW_TYPE` char(1) collate utf8_bin NOT NULL default '1' COMMENT '展示方式，1 - 所有人可见，2 - 仅主人可见，3 - 输入密码可见，4 - 仅好友可见，5 - 回答问题可见',
  `SORT_PWD` varchar(64) collate utf8_bin default NULL,
  `SORT_QUESTION` varchar(255) collate utf8_bin default NULL,
  `SORT_ANSWER` varchar(255) collate utf8_bin default NULL,
  `TOP_PIC_PATH` varchar(500) collate utf8_bin default NULL,
  `CREATE_TIME` varchar(14) collate utf8_bin default NULL,
  `CREATE_USER_ID` varchar(32) collate utf8_bin default NULL,
  `MODIFY_TIME` varchar(14) collate utf8_bin default NULL,
  `MODIFY_USER_ID` varchar(32) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_BS_PHOTO_SORT_01` (`FK_BS_USER`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bs_photo_sort` */

LOCK TABLES `bs_photo_sort` WRITE;

UNLOCK TABLES;

/*Table structure for table `bs_photos` */

DROP TABLE IF EXISTS `bs_photos`;

CREATE TABLE `bs_photos` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_USER` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_PHOTO_SORT` varchar(32) collate utf8_bin NOT NULL,
  `PHOTO_NAME` varchar(50) collate utf8_bin default NULL,
  `PHOTO_PATH` varchar(500) collate utf8_bin default NULL,
  `PHOTO_DESC` varchar(500) collate utf8_bin default NULL,
  `UPLOAD_TIME` varchar(14) collate utf8_bin default NULL,
  `UPLOAD_IP` varchar(40) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_BS_PHOTOS_01` (`FK_BS_USER`),
  KEY `IDX_BS_PHOTOS_02` (`FK_BS_PHOTO_SORT`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bs_photos` */

LOCK TABLES `bs_photos` WRITE;

UNLOCK TABLES;

/*Table structure for table `bs_rank` */

DROP TABLE IF EXISTS `bs_rank`;

CREATE TABLE `bs_rank` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `RANK_MARK` int(11) default NULL,
  `RANK_NAME` varchar(32) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bs_rank` */

LOCK TABLES `bs_rank` WRITE;

UNLOCK TABLES;

/*Table structure for table `bs_secret_msg` */

DROP TABLE IF EXISTS `bs_secret_msg`;

CREATE TABLE `bs_secret_msg` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_USER_SEND` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_USER_RECE` varchar(32) collate utf8_bin NOT NULL,
  `MSG_TITLE` varchar(100) collate utf8_bin NOT NULL,
  `MSG_CONTANT` text collate utf8_bin NOT NULL,
  `SEND_TIME` varchar(14) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_BS_SECRET_MSG_01` (`FK_BS_USER_SEND`),
  KEY `IDX_BS_SECRET_MSG_02` (`FK_BS_USER_RECE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bs_secret_msg` */

LOCK TABLES `bs_secret_msg` WRITE;

UNLOCK TABLES;

/*Table structure for table `bs_stay_msg` */

DROP TABLE IF EXISTS `bs_stay_msg`;

CREATE TABLE `bs_stay_msg` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_USER_SELF` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_USER_STAY` varchar(32) collate utf8_bin NOT NULL,
  `STAY_CONTANT` varchar(500) collate utf8_bin NOT NULL,
  `STAY_IP` varchar(40) collate utf8_bin default NULL,
  `CREATE_TIME` varchar(14) collate utf8_bin default NULL,
  `CREATE_USER_ID` varchar(32) collate utf8_bin default NULL,
  `MODIFY_TIME` varchar(14) collate utf8_bin default NULL,
  `MODIFY_USER_ID` varchar(32) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_BS_STAY_MSG_01` (`FK_BS_USER_SELF`),
  KEY `IDX_BS_STAY_MSG_02` (`FK_BS_USER_STAY`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bs_stay_msg` */

LOCK TABLES `bs_stay_msg` WRITE;

UNLOCK TABLES;

/*Table structure for table `bs_sys_msg` */

DROP TABLE IF EXISTS `bs_sys_msg`;

CREATE TABLE `bs_sys_msg` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `FK_BI_SYS_MSG` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_USER` varchar(32) collate utf8_bin NOT NULL COMMENT '外键（接收对象），根据“通知对象”字段值，通知对应对象',
  `FK_BS_GROUP` varchar(32) collate utf8_bin NOT NULL,
  `READ_STATUS` char(1) collate utf8_bin NOT NULL COMMENT '阅读状态，0 - 未读，1 - 已读',
  `NOTICE_TITLE` varchar(100) collate utf8_bin NOT NULL,
  `NOTICE_CONTANT` text collate utf8_bin NOT NULL,
  `CREATE_TIME` varchar(14) collate utf8_bin default NULL,
  `CREATE_USER_ID` varchar(32) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_BS_SYS_MSG_01` (`FK_BI_SYS_MSG`),
  KEY `IDX_BS_SYS_MSG_02` (`FK_BS_USER`),
  KEY `IDX_BS_SYS_MSG_03` (`FK_BS_GROUP`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bs_sys_msg` */

LOCK TABLES `bs_sys_msg` WRITE;

UNLOCK TABLES;

/*Table structure for table `bs_user` */

DROP TABLE IF EXISTS `bs_user`;

CREATE TABLE `bs_user` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_GROUP` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_RANK` varchar(32) collate utf8_bin NOT NULL,
  `LOGIN_NAME` varchar(32) collate utf8_bin NOT NULL,
  `LOGIN_PWD` varchar(64) collate utf8_bin NOT NULL,
  `NICKNAME` varchar(50) collate utf8_bin NOT NULL,
  `PHONE_NUM` varchar(20) collate utf8_bin default NULL,
  `SEX` char(1) collate utf8_bin NOT NULL default '1' COMMENT '性别，0 - 女，1 - 男，2 - 其他',
  `QQ` varchar(12) collate utf8_bin default NULL,
  `EMAIL` varchar(64) collate utf8_bin default NULL,
  `ADDRESS` varchar(255) collate utf8_bin default NULL,
  `MARK` int(11) default NULL,
  `BIRTHDAY` varchar(8) collate utf8_bin default NULL,
  `DESCRIPTION` varchar(255) collate utf8_bin default NULL,
  `IMAGE_URL` varchar(255) collate utf8_bin default NULL,
  `SCHOOL` varchar(255) collate utf8_bin default NULL,
  `REG_TIME` varchar(14) collate utf8_bin default NULL,
  `REG_IP` varchar(40) collate utf8_bin default NULL,
  `WEIBO` varchar(255) collate utf8_bin default NULL,
  `BLOOD_TYPE` varchar(3) collate utf8_bin default NULL,
  `SAYS` varchar(255) collate utf8_bin default NULL,
  `LOCK_STAT` char(1) collate utf8_bin NOT NULL default '0' COMMENT '是否锁定，0为不锁定，1为锁定',
  `FREEZE_STAT` char(1) collate utf8_bin NOT NULL default '0' COMMENT '是否冻结，0为不冻结，1为冻结',
  `LAST_LOGIN_IP` varchar(40) collate utf8_bin default NULL,
  `LAST_LOGIN_TIME` varchar(14) collate utf8_bin default NULL,
  `LAST_UPDATE_TIME` varchar(14) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`),
  UNIQUE KEY `IDX_BS_USER_03` (`LOGIN_NAME`),
  UNIQUE KEY `IDX_BS_USER_04` (`NICKNAME`),
  KEY `IDX_BS_USER_01` (`FK_BS_GROUP`),
  KEY `IDX_BS_USER_02` (`FK_BS_RANK`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bs_user` */

LOCK TABLES `bs_user` WRITE;

UNLOCK TABLES;

/*Table structure for table `bs_user_comm` */

DROP TABLE IF EXISTS `bs_user_comm`;

CREATE TABLE `bs_user_comm` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `COMM_MODEL` varchar(50) collate utf8_bin NOT NULL COMMENT '评论板块，BS_ARTICLE - 评论文章，BS_PHOTO - 评论相片，BS_MOOD_SAYSAY - 评论用户心情说说',
  `FK_TABLE_ID` varchar(32) collate utf8_bin NOT NULL COMMENT '外键（评论板块的主键），“访问板块”对应表的主键',
  `FK_BS_USER_SELF` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_USER_COMM` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_COMM` varchar(32) collate utf8_bin default NULL COMMENT '外键（用户评论表），用户对评论再做评论',
  `COMM_CONTANT` text collate utf8_bin NOT NULL,
  `LAST_COMM_CONTANT` text collate utf8_bin COMMENT '上次评论内容，用于误写保存后还原',
  `COMM_TIME` varchar(14) collate utf8_bin NOT NULL,
  `COMM_IP` varchar(40) collate utf8_bin default NULL,
  `COMM_TYPE` char(1) collate utf8_bin NOT NULL COMMENT '评论类型，1 - 评论文章，2 - 评论回复（对评论再次评论）',
  `COMM_ORDER` int(11) default NULL,
  `CREATE_TIME` varchar(14) collate utf8_bin default NULL,
  `CREATE_USER_ID` varchar(32) collate utf8_bin default NULL,
  `MODIFY_TIME` varchar(14) collate utf8_bin default NULL,
  `MODIFY_USER_ID` varchar(32) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_BS_USER_COMM_01` (`FK_TABLE_ID`,`COMM_MODEL`),
  KEY `IDX_BS_USER_COMM_02` (`FK_BS_USER_SELF`),
  KEY `IDX_BS_USER_COMM_03` (`FK_BS_USER_COMM`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bs_user_comm` */

LOCK TABLES `bs_user_comm` WRITE;

UNLOCK TABLES;

/*Table structure for table `bs_visitor` */

DROP TABLE IF EXISTS `bs_visitor`;

CREATE TABLE `bs_visitor` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_USER_BE_VISI` varchar(32) collate utf8_bin NOT NULL,
  `FK_BS_USER_DO_VISI` varchar(32) collate utf8_bin NOT NULL,
  `VISI_MODEL` varchar(50) collate utf8_bin NOT NULL COMMENT '访问板块，BS_ARTICLE - 文章，BS_PHOTO - 相册，BS_MOOD_SAYSAY - 用户心情说说',
  `FK_TABLE_ID` varchar(32) collate utf8_bin NOT NULL COMMENT '外键（访问板块的主键），“访问板块”对应表的主键',
  `VISI_TIME` varchar(14) collate utf8_bin default NULL,
  `VISITOR_IP` varchar(40) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`),
  KEY `IDX_BS_VISITOR_01` (`FK_BS_USER_BE_VISI`),
  KEY `IDX_BS_VISITOR_02` (`FK_BS_USER_DO_VISI`),
  KEY `IDX_BS_VISITOR_03` (`VISI_MODEL`,`FK_TABLE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bs_visitor` */

LOCK TABLES `bs_visitor` WRITE;

UNLOCK TABLES;

/*Table structure for table `pg_project` */

DROP TABLE IF EXISTS `pg_project`;

CREATE TABLE `pg_project` (
  `ID` varchar(32) collate utf8_bin NOT NULL,
  `PRO_NO` varchar(32) collate utf8_bin default NULL,
  `PRO_NAME` varchar(50) collate utf8_bin default NULL,
  `PRO_BRIEF` varchar(100) collate utf8_bin default NULL,
  `PRO_INTRODUCE` varchar(500) collate utf8_bin default NULL,
  `LINK_ADDR` varchar(500) collate utf8_bin default NULL,
  `KEY_NAME` varchar(50) collate utf8_bin default NULL,
  `PRO_PIC_ADDR` varchar(500) collate utf8_bin default NULL,
  `PRO_CLASS` varchar(10) collate utf8_bin default NULL,
  `CREATE_TIME` varchar(14) collate utf8_bin default NULL,
  `CREATE_USER_ID` varchar(32) collate utf8_bin default NULL,
  `MODIFY_TIME` varchar(14) collate utf8_bin default NULL,
  `MODIFY_USER_ID` varchar(32) collate utf8_bin default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `pg_project` */

LOCK TABLES `pg_project` WRITE;

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
