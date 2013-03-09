-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 03 月 09 日 08:43
-- 服务器版本: 5.1.44
-- PHP 版本: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- 数据库: `oasys`
--

-- --------------------------------------------------------

--
-- 表的结构 `core_ip`
--

CREATE TABLE IF NOT EXISTS `core_ip` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip_addr` varchar(39) COLLATE utf8_bin NOT NULL COMMENT 'IP地址',
  `ip_ban` tinyint(1) NOT NULL COMMENT 'IP封锁状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `core_ip`
--

INSERT INTO `core_ip` (`id`, `ip_addr`, `ip_ban`) VALUES
(1, '::1', 0),
(2, '127.0.0.1', 0);

-- --------------------------------------------------------

--
-- 表的结构 `core_log`
--

CREATE TABLE IF NOT EXISTS `core_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `log_date` datetime NOT NULL COMMENT '创建时间',
  `log_ip` bigint(20) NOT NULL COMMENT '宿主IP ID',
  `log_message` text COLLATE utf8_bin NOT NULL COMMENT '描述消息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oa_configs`
--

CREATE TABLE IF NOT EXISTS `oa_configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `config_name` varchar(300) COLLATE utf8_bin NOT NULL,
  `config_value` text COLLATE utf8_bin NOT NULL,
  `config_default` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `oa_configs`
--

INSERT INTO `oa_configs` (`id`, `config_name`, `config_value`, `config_default`) VALUES
(1, 'WEB_TITLE', 'OA办公系统', 'OA办公系统');

-- --------------------------------------------------------

--
-- 表的结构 `oa_user`
--

CREATE TABLE IF NOT EXISTS `oa_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_username` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '用户名',
  `user_password` char(41) COLLATE utf8_bin NOT NULL COMMENT '密码',
  `user_email` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '邮箱',
  `user_name` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '匿名',
  `user_group` bigint(20) NOT NULL COMMENT '用户组',
  `user_create_date` datetime NOT NULL COMMENT '创建时间',
  `user_create_ip` bigint(20) NOT NULL COMMENT '创建IP ID',
  `user_login_date` datetime NOT NULL COMMENT '上一次登录时间',
  `user_login_ip` bigint(20) NOT NULL COMMENT '上一次登录IP ID',
  `user_login_session` char(32) COLLATE utf8_bin NOT NULL COMMENT '登录会话值',
  `user_status` tinyint(1) NOT NULL COMMENT '状态',
  `user_remember` tinyint(1) NOT NULL DEFAULT '0' COMMENT '记住我',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oa_user_group`
--

CREATE TABLE IF NOT EXISTS `oa_user_group` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `group_name` varchar(30) COLLATE utf8_bin NOT NULL COMMENT '名称',
  `group_power` text COLLATE utf8_bin NOT NULL COMMENT '权限',
  `group_status` tinyint(1) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;
