-- phpMyAdmin SQL Dump
-- version 4.4.15.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-08-12 14:44:01
-- 服务器版本： 5.5.48-log
-- PHP Version: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `czb`
--

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_address`
--

CREATE TABLE IF NOT EXISTS `yunpay_address` (
  `address_id` mediumint(10) unsigned NOT NULL COMMENT '地址ID',
  `member_id` mediumint(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `true_name` varchar(50) NOT NULL COMMENT '会员姓名',
  `area_id` mediumint(10) unsigned NOT NULL DEFAULT '0' COMMENT '地区ID',
  `city_id` mediumint(9) DEFAULT NULL COMMENT '市级ID',
  `area_info` varchar(255) NOT NULL DEFAULT '' COMMENT '地区内容',
  `address` varchar(255) NOT NULL COMMENT '地址',
  `tel_phone` varchar(20) DEFAULT NULL COMMENT '座机电话',
  `mob_phone` varchar(15) DEFAULT NULL COMMENT '手机电话',
  `is_default` enum('0','1') NOT NULL DEFAULT '0' COMMENT '1默认收货地址',
  `dlyp_id` int(11) DEFAULT '0' COMMENT '自提点ID'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='买家地址信息表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_admin`
--

CREATE TABLE IF NOT EXISTS `yunpay_admin` (
  `admin_id` int(11) unsigned NOT NULL COMMENT '管理员ID',
  `admin_name` varchar(20) NOT NULL COMMENT '管理员名称',
  `admin_password` varchar(32) NOT NULL DEFAULT '' COMMENT '管理员密码',
  `admin_login_time` int(10) NOT NULL DEFAULT '0' COMMENT '登录时间',
  `admin_login_num` int(11) NOT NULL DEFAULT '0' COMMENT '登录次数',
  `admin_is_super` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否超级管理员',
  `admin_gid` smallint(6) DEFAULT '0' COMMENT '权限组ID'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='管理员表';

--
-- 转存表中的数据 `yunpay_admin`
--

INSERT INTO `yunpay_admin` (`admin_id`, `admin_name`, `admin_password`, `admin_login_time`, `admin_login_num`, `admin_is_super`, `admin_gid`) VALUES
(1, 'czbroot', '872be7378d2e5c4b747f2547144c6dc5', 1470975242, 212, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_admin_log`
--

CREATE TABLE IF NOT EXISTS `yunpay_admin_log` (
  `id` int(10) unsigned NOT NULL,
  `content` varchar(50) NOT NULL COMMENT '操作内容',
  `createtime` int(10) unsigned DEFAULT NULL COMMENT '发生时间',
  `admin_name` char(20) NOT NULL COMMENT '管理员',
  `admin_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `ip` char(15) NOT NULL COMMENT 'IP',
  `url` varchar(50) NOT NULL DEFAULT '' COMMENT 'act&op'
) ENGINE=MyISAM AUTO_INCREMENT=293 DEFAULT CHARSET=utf8 COMMENT='管理员操作日志';

--
-- 转存表中的数据 `yunpay_admin_log`
--

INSERT INTO `yunpay_admin_log` (`id`, `content`, `createtime`, `admin_name`, `admin_id`, `ip`, `url`) VALUES
(1, '', 1461568386, 'admin', 1, '180.213.178.188', 'login&login'),
(2, '编辑会员[ID:9]', 1461568401, 'admin', 1, '180.213.178.188', 'member&member_edit'),
(3, '', 1461572679, 'admin', 1, '180.213.178.188', 'login&login'),
(4, '', 1461575523, 'admin', 1, '219.72.203.139', 'login&login'),
(5, '编辑短信平台设置', 1461575894, 'admin', 1, '219.72.203.139', 'message&mobile'),
(6, '', 1461656012, 'admin', 1, '180.213.179.247', 'login&login'),
(7, '', 1461656831, 'admin', 1, '219.72.203.139', 'login&login'),
(8, '', 1461656886, 'admin', 1, '219.72.203.139', 'login&login'),
(9, '', 1461748166, 'admin', 1, '219.72.203.139', 'login&login'),
(10, '', 1461850382, 'admin', 1, '219.72.203.139', 'login&login'),
(11, '', 1461851796, 'admin', 1, '58.248.9.140', 'login&login'),
(12, '', 1461855299, 'admin', 1, '58.248.9.140', 'login&login'),
(13, '编辑会员级别', 1461855947, 'admin', 1, '219.72.203.139', 'member_grade&index'),
(14, '', 1461855962, 'admin', 1, '58.248.9.140', 'login&login'),
(15, '', 1461895896, 'admin', 1, '219.72.203.139', 'login&login'),
(16, '', 1461936040, 'admin', 1, '219.72.203.139', 'login&login'),
(17, '', 1461996406, 'admin', 1, '14.112.155.204', 'login&login'),
(18, '', 1462003656, 'admin', 1, '219.72.203.139', 'login&login'),
(19, '', 1462010312, 'admin', 1, '219.72.203.139', 'login&login'),
(20, '', 1462169732, 'admin', 1, '14.145.33.14', 'login&login'),
(21, '', 1462332217, 'admin', 1, '219.72.203.139', 'login&login'),
(22, '', 1462463890, 'admin', 1, '219.72.203.139', 'login&login'),
(23, '', 1462581789, 'admin', 1, '219.72.203.139', 'login&login'),
(24, '', 1462848425, 'admin', 1, '59.41.50.149', 'login&login'),
(25, '', 1462865252, 'admin', 1, '119.129.210.156', 'login&login'),
(26, '', 1463014323, 'admin', 1, '219.72.203.139', 'login&login'),
(27, '', 1463995069, 'admin', 1, '113.99.47.82', 'login&login'),
(28, '', 1464059742, 'admin', 1, '113.99.47.82', 'login&login'),
(29, '编辑会员[ID:25]', 1464059755, 'admin', 1, '113.99.47.82', 'member&member_edit'),
(30, '', 1464066965, 'admin', 1, '113.99.47.82', 'login&login'),
(31, '', 1464066974, 'admin', 1, '113.99.47.82', 'login&login'),
(32, '', 1464159898, 'admin', 1, '219.235.26.139', 'login&login'),
(33, '编辑会员[ID:25]', 1464160060, 'admin', 1, '219.235.26.139', 'member&member_edit'),
(34, '', 1464164226, 'admin', 1, '219.235.26.139', 'login&login'),
(35, '', 1464249272, 'admin', 1, '219.235.26.139', 'login&login'),
(36, '', 1464269913, 'admin', 1, '219.235.26.139', 'login&login'),
(37, '', 1464332121, 'admin', 1, '219.235.26.139', 'login&login'),
(38, '', 1464530208, 'admin', 1, '219.235.26.139', 'login&login'),
(39, '修改提现单状态,提现单号:950517877553482028', 1464533937, 'admin', 1, '219.235.26.139', 'predeposit&pd_cash_pay'),
(40, '', 1464537430, 'admin', 1, '219.235.26.139', 'login&login'),
(41, '', 1464543384, 'admin', 1, '14.150.215.132', 'login&login'),
(42, '编辑会员[ID:26]', 1464543433, 'admin', 1, '14.150.215.132', 'member&member_edit'),
(43, '', 1464610022, 'admin', 1, '124.15.105.186', 'login&login'),
(44, '编辑会员[ID:53]', 1464610144, 'admin', 1, '124.15.105.186', 'member&member_edit'),
(45, '编辑会员[ID:54]', 1464610281, 'admin', 1, '124.15.105.186', 'member&member_edit'),
(46, '编辑会员[ID:55]', 1464610298, 'admin', 1, '124.15.105.186', 'member&member_edit'),
(47, '编辑会员[ID:53]', 1464610323, 'admin', 1, '124.15.105.186', 'member&member_edit'),
(48, '编辑会员[ID:54]', 1464610332, 'admin', 1, '124.15.105.186', 'member&member_edit'),
(49, '编辑会员[ID:56]', 1464611770, 'admin', 1, '124.15.105.186', 'member&member_edit'),
(50, '编辑会员[ID:56]', 1464611780, 'admin', 1, '124.15.105.186', 'member&member_edit'),
(51, '编辑会员[ID:25]', 1464611861, 'admin', 1, '124.15.105.186', 'member&member_edit'),
(52, '编辑会员[ID:25]', 1464611928, 'admin', 1, '124.15.105.186', 'member&member_edit'),
(53, '', 1464664995, 'admin', 1, '157.122.56.196', 'login&login'),
(54, '', 1464676468, 'admin', 1, '157.122.56.196', 'login&login'),
(55, '', 1464706213, 'admin', 1, '219.72.203.157', 'login&login'),
(56, '编辑会员[ID:29]', 1464706228, 'admin', 1, '219.72.203.157', 'member&member_edit'),
(57, '', 1464709034, 'admin', 1, '219.235.26.139', 'login&login'),
(58, '编辑会员[ID:56]', 1464709118, 'admin', 1, '219.235.26.139', 'member&member_edit'),
(59, '编辑会员[ID:1]', 1464709582, 'admin', 1, '219.235.26.139', 'member&member_edit'),
(60, '', 1464710411, 'admin', 1, '219.72.203.157', 'login&login'),
(61, '', 1464750076, 'admin', 1, '59.39.68.34', 'login&login'),
(62, '', 1464751278, 'admin', 1, '219.235.26.139', 'login&login'),
(63, '', 1464758455, 'admin', 1, '219.235.26.139', 'login&login'),
(64, '', 1464789367, 'admin', 1, '219.235.26.139', 'login&login'),
(65, '', 1464823010, 'admin', 1, '219.235.26.139', 'login&login'),
(66, '', 1464834684, 'admin', 1, '219.235.26.139', 'login&login'),
(67, '', 1464838467, 'admin', 1, '219.235.26.139', 'login&login'),
(68, '', 1465223249, 'admin', 1, '124.15.103.71', 'login&login'),
(69, '', 1465275366, 'admin', 1, '157.122.56.196', 'login&login'),
(70, '', 1465284116, 'admin', 1, '157.122.56.196', 'login&login'),
(71, '编辑会员[ID:25]', 1465284144, 'admin', 1, '157.122.56.196', 'member&member_edit'),
(72, '编辑会员[ID:23]', 1465285602, 'admin', 1, '157.122.56.196', 'member&member_edit'),
(73, '', 1465377521, 'admin', 1, '219.235.26.139', 'login&login'),
(74, '', 1465722956, 'admin', 1, '219.235.26.139', 'login&login'),
(75, '', 1465724936, 'admin', 1, '219.235.26.139', 'login&login'),
(76, '', 1465725946, 'admin', 1, '58.248.9.140', 'login&login'),
(77, '', 1465871378, 'admin', 1, '157.122.56.196', 'login&login'),
(78, '', 1466045100, 'admin', 1, '119.40.187.8', 'login&login'),
(79, '', 1466045225, 'hftroot', 1, '119.40.187.8', 'login&login'),
(80, '添加权限组[财务部]', 1466045264, 'hftroot', 1, '119.40.187.8', 'admin&gadmin_add'),
(81, '', 1466383971, 'hftroot', 1, '219.72.203.138', 'login&login'),
(82, '', 1466389884, 'hftroot', 1, '157.122.56.196', 'login&login'),
(83, '编辑会员[ID:23]', 1466394780, 'hftroot', 1, '157.122.56.196', 'member&member_edit'),
(84, '编辑会员[ID:23]', 1466394956, 'hftroot', 1, '157.122.56.196', 'member&member_edit'),
(85, '', 1466403791, 'hftroot', 1, '157.122.56.196', 'login&login'),
(86, '', 1466562481, 'hftroot', 1, '157.122.56.196', 'login&login'),
(87, '', 1466563040, 'hftroot', 1, '157.122.56.196', 'login&login'),
(88, '', 1466739688, 'hftroot', 1, '219.72.203.138', 'login&login'),
(89, '修改充值单状态,充值单号:110519816347166000', 1466740390, 'hftroot', 1, '219.72.203.138', 'predeposit&recharge_edit'),
(90, '', 1466753074, 'hftroot', 1, '219.72.203.138', 'login&login'),
(91, '清理缓存', 1466754353, 'hftroot', 1, '219.72.203.138', 'cache&clear'),
(92, '清理缓存', 1466755827, 'hftroot', 1, '219.72.203.138', 'cache&clear'),
(93, '', 1466861226, 'hftroot', 1, '219.72.203.138', 'login&login'),
(94, '清理缓存', 1466862599, 'hftroot', 1, '219.72.203.138', 'cache&clear'),
(95, '', 1466867954, 'hftroot', 1, '219.72.203.138', 'login&login'),
(96, '', 1466871734, 'hftroot', 1, '219.72.203.138', 'login&login'),
(97, '编辑会员[ID:1]', 1466871752, 'hftroot', 1, '219.72.203.138', 'member&member_edit'),
(98, '编辑商品设置', 1466873247, 'hftroot', 1, '219.72.203.138', 'goods&goods_set'),
(99, '添加[ 13632242148]', 1466874707, 'hftroot', 1, '219.72.203.138', 'oil&card_add'),
(100, '', 1466912383, 'hftroot', 1, '219.72.203.138', 'login&login'),
(101, '添加权限组[一般管理员]', 1466912433, 'hftroot', 1, '219.72.203.138', 'admin&gadmin_add'),
(102, '添加管理员[hft_kf]', 1466912464, 'hftroot', 1, '219.72.203.138', 'admin&admin_add'),
(103, '', 1466912476, 'hft_kf', 2, '219.72.203.138', 'login&login'),
(104, '', 1466912550, 'hftroot', 1, '219.72.203.138', 'login&login'),
(105, '清理缓存', 1466912613, 'hftroot', 1, '219.72.203.138', 'cache&clear'),
(106, '', 1466912638, 'hft_kf', 2, '219.72.203.138', 'login&login'),
(107, '编辑权限组[一般管理员]', 1466912671, 'hftroot', 1, '219.72.203.138', 'admin&gadmin_set'),
(108, '', 1466912677, 'hft_kf', 2, '219.72.203.138', 'login&login'),
(109, '编辑权限组[客服]', 1466913595, 'hftroot', 1, '219.72.203.138', 'admin&gadmin_set'),
(110, '', 1466913616, 'hft_kf', 2, '219.72.203.138', 'login&login'),
(111, '', 1466921093, 'hft_kf', 2, '27.36.26.96', 'login&login'),
(112, '', 1466921751, 'hftroot', 1, '219.72.203.138', 'login&login'),
(113, '人工绑定新油卡[ 13538850622]', 1466923331, 'hft_kf', 2, '27.36.26.96', 'oil&card_add'),
(114, '', 1466929217, 'hftroot', 1, '219.72.203.138', 'login&login'),
(115, '', 1466948170, 'hft_kf', 2, '219.72.203.138', 'login&login'),
(116, '', 1466948195, 'hft_kf', 2, '219.137.94.107', 'login&login'),
(117, '', 1466954108, 'hftroot', 1, '219.72.203.138', 'login&login'),
(118, '', 1466954197, 'hft_kf', 2, '219.137.94.107', 'login&login'),
(119, '编辑油卡[ID:]', 1466955192, 'hftroot', 1, '219.72.203.138', 'oil&card_edit'),
(120, '', 1466959586, 'hft_kf', 2, '219.137.94.107', 'login&login'),
(121, '', 1466988701, 'hftroot', 1, '219.72.203.138', 'login&login'),
(122, '', 1466991984, 'hft_kf', 2, '58.248.9.140', 'login&login'),
(123, '', 1466997302, 'hft_kf', 2, '58.248.9.140', 'login&login'),
(124, '编辑油卡[ID:]', 1466997326, 'hft_kf', 2, '58.248.9.140', 'oil&card_edit'),
(125, '', 1467001953, 'hftroot', 1, '219.72.203.138', 'login&login'),
(126, '', 1467020357, 'hft_kf', 2, '58.248.9.140', 'login&login'),
(127, '', 1467020687, 'hftroot', 1, '219.72.203.138', 'login&login'),
(128, '编辑会员[ID:31]', 1467021064, 'hft_kf', 2, '58.248.9.140', 'member&member_edit'),
(129, '编辑会员[ID:31]', 1467021388, 'hftroot', 1, '219.72.203.138', 'member&member_edit'),
(130, '', 1467079686, 'hft_kf', 2, '58.248.9.140', 'login&login'),
(131, '', 1467097204, 'hftroot', 1, '219.72.203.138', 'login&login'),
(132, '编辑油卡[ID:]', 1467097222, 'hftroot', 1, '219.72.203.138', 'oil&card_edit'),
(133, '', 1467105399, 'hftroot', 1, '219.72.203.138', 'login&login'),
(134, '', 1467105748, 'hft_kf', 2, '219.72.203.157', 'login&login'),
(135, '', 1467106144, 'hftroot', 1, '219.72.203.157', 'login&login'),
(136, '', 1467116025, 'hftroot', 1, '219.72.203.157', 'login&login'),
(137, '', 1467117518, 'hftroot', 1, '219.72.203.138', 'login&login'),
(138, '编辑会员[ID:118]', 1467117549, 'hftroot', 1, '219.72.203.138', 'member&member_edit'),
(139, '编辑会员[ID:209]', 1467117596, 'hftroot', 1, '219.72.203.138', 'member&member_edit'),
(140, '编辑会员[ID:104]', 1467117626, 'hftroot', 1, '219.72.203.138', 'member&member_edit'),
(141, '编辑会员[ID:191]', 1467117643, 'hftroot', 1, '219.72.203.138', 'member&member_edit'),
(142, '编辑会员[ID:87]', 1467117658, 'hftroot', 1, '219.72.203.138', 'member&member_edit'),
(143, '编辑会员[ID:101]', 1467117686, 'hftroot', 1, '219.72.203.138', 'member&member_edit'),
(144, '编辑会员[ID:93]', 1467117710, 'hftroot', 1, '219.72.203.138', 'member&member_edit'),
(145, '编辑会员[ID:132]', 1467117728, 'hftroot', 1, '219.72.203.138', 'member&member_edit'),
(146, '编辑会员[ID:184]', 1467117794, 'hftroot', 1, '219.72.203.138', 'member&member_edit'),
(147, '编辑会员[ID:119]', 1467117824, 'hftroot', 1, '219.72.203.138', 'member&member_edit'),
(148, '编辑会员[ID:41]', 1467117852, 'hftroot', 1, '219.72.203.138', 'member&member_edit'),
(149, '', 1467123149, 'hftroot', 1, '219.72.203.138', 'login&login'),
(150, '编辑会员[ID:25]', 1467126521, 'hftroot', 1, '219.72.203.138', 'member&member_edit'),
(151, '', 1467191293, 'hftroot', 1, '120.84.9.39', 'login&login'),
(152, '清理缓存', 1467191484, 'hftroot', 1, '120.84.9.39', 'cache&clear'),
(153, '', 1467191508, 'hftroot', 1, '120.84.9.39', 'login&login'),
(154, '', 1467510427, 'hftroot', 1, '120.84.9.39', 'login&login'),
(155, '添加会员[  13450226610]', 1467513981, 'hftroot', 1, '120.84.9.39', 'member&member_add'),
(156, '编辑会员[ID:230]', 1467514010, 'hftroot', 1, '120.84.9.39', 'member&member_edit'),
(157, '', 1467524798, 'hftroot', 1, '120.84.9.39', 'login&login'),
(158, '编辑会员[ID:230]', 1467524812, 'hftroot', 1, '120.84.9.39', 'member&member_edit'),
(159, '编辑会员[ID:230]', 1467525134, 'hftroot', 1, '120.84.9.39', 'member&member_edit'),
(160, '编辑会员[ID:232]', 1467525416, 'hftroot', 1, '120.84.9.39', 'member&member_edit'),
(161, '编辑会员[ID:232]', 1467528437, 'hftroot', 1, '120.84.9.39', 'member&member_edit'),
(162, '', 1467552744, 'hftroot', 1, '120.84.9.39', 'login&login'),
(163, '编辑会员[ID:235]', 1467552754, 'hftroot', 1, '120.84.9.39', 'member&member_edit'),
(164, '', 1467555750, 'hftroot', 1, '163.142.146.137', 'login&login'),
(165, '', 1467885658, 'hftroot', 1, '120.84.9.39', 'login&login'),
(166, '', 1468226262, 'czbroot', 1, '120.84.9.220', 'login&login'),
(167, '新增10张电子券（面额￥1000，批次标识“”）', 1468226301, 'czbroot', 1, '120.84.9.220', 'coupons&add'),
(168, '13928751804领取电子券(#ID:20)', 1468226367, 'czbroot', 1, '120.84.9.220', 'coupons&use'),
(169, '', 1468233333, 'czbroot', 1, '120.84.9.220', 'login&login'),
(170, '', 1468243553, 'czbroot', 1, '120.84.9.220', 'login&login'),
(171, '编辑短信平台设置', 1468243574, 'czbroot', 1, '120.84.9.220', 'message&mobile'),
(172, '添加会员[  13450226610]', 1468244305, 'czbroot', 1, '120.84.9.220', 'member&member_add'),
(173, '清理缓存', 1468244480, 'czbroot', 1, '120.84.9.220', 'cache&clear'),
(174, '清理缓存', 1468244575, 'czbroot', 1, '120.84.9.220', 'cache&clear'),
(175, '', 1468286346, 'czbroot', 1, '120.84.9.220', 'login&login'),
(176, '', 1468307804, 'czbroot', 1, '120.84.9.220', 'login&login'),
(177, '', 1468311788, 'czbroot', 1, '120.84.12.130', 'login&login'),
(178, '编辑会员[ID:252]', 1468314431, 'czbroot', 1, '120.84.9.220', 'member&member_edit'),
(179, '13450226610领取电子券(#ID:26)', 1468314873, 'czbroot', 1, '120.84.9.220', 'coupons&use'),
(180, '新增2张电子券（面额￥32，批次标识“”）', 1468315529, 'czbroot', 1, '120.84.9.220', 'coupons&add'),
(181, '删除电子券（#ID: 28）', 1468315680, 'czbroot', 1, '120.84.9.220', 'coupons&del_coupons'),
(182, '新增1张电子券（面额￥21，批次标识“”）', 1468315755, 'czbroot', 1, '120.84.9.220', 'coupons&add'),
(183, '删除2张电子券', 1468316636, 'czbroot', 1, '120.84.9.220', 'coupons&del_coupons_batch'),
(184, '', 1468329231, 'czbroot', 1, '120.84.12.130', 'login&login'),
(185, '', 1468333958, 'czbroot', 1, '120.84.9.220', 'login&login'),
(186, '', 1468371403, 'czbroot', 1, '120.84.12.130', 'login&login'),
(187, '', 1468378647, 'czbroot', 1, '120.84.12.130', 'login&login'),
(188, '', 1468382080, 'czbroot', 1, '120.84.12.130', 'login&login'),
(189, '', 1468382372, 'czbroot', 1, '157.122.56.196', 'login&login'),
(190, '', 1468390591, 'czbroot', 1, '157.122.56.196', 'login&login'),
(191, '', 1468391412, 'czbroot', 1, '120.84.12.130', 'login&login'),
(192, '', 1468392895, 'czbroot', 1, '120.84.12.130', 'login&login'),
(193, '添加会员[  13538850655]', 1468393972, 'czbroot', 1, '120.84.12.130', 'member&member_add'),
(194, '', 1468404461, 'czbroot', 1, '58.248.9.140', 'login&login'),
(195, '', 1468417528, 'czbroot', 1, '120.84.12.130', 'login&login'),
(196, '', 1468417823, 'czbroot', 1, '120.84.12.130', 'login&login'),
(197, '添加会员[  13631430470]', 1468422525, 'czbroot', 1, '120.84.12.130', 'member&member_add'),
(198, '添加会员[  13538850655]', 1468422573, 'czbroot', 1, '120.84.12.130', 'member&member_add'),
(199, '', 1468423323, 'czbroot', 1, '120.84.9.220', 'login&login'),
(200, '', 1468458055, 'czbroot', 1, '120.84.9.220', 'login&login'),
(201, '', 1468470696, 'czbroot', 1, '120.84.9.220', 'login&login'),
(202, '', 1468472176, 'czbroot', 1, '58.248.9.140', 'login&login'),
(203, '', 1468517907, 'czbroot', 1, '112.93.127.97', 'login&login'),
(204, '', 1468544770, 'czbroot', 1, '120.84.9.220', 'login&login'),
(205, '', 1468547034, 'czbroot', 1, '112.93.127.97', 'login&login'),
(206, '编辑会员[ID:265]', 1468547822, 'czbroot', 1, '112.93.127.97', 'member&member_edit'),
(207, '编辑会员[ID:239]', 1468548005, 'czbroot', 1, '112.93.127.97', 'member&member_edit'),
(208, '编辑会员[ID:257]', 1468548042, 'czbroot', 1, '112.93.127.97', 'member&member_edit'),
(209, '编辑会员[ID:259]', 1468548061, 'czbroot', 1, '112.93.127.97', 'member&member_edit'),
(210, '', 1468550457, 'czbroot', 1, '120.84.9.220', 'login&login'),
(211, '', 1468553233, 'czbroot', 1, '112.93.127.97', 'login&login'),
(212, '', 1468562981, 'czbroot', 1, '157.122.56.196', 'login&login'),
(213, '', 1468564414, 'czbroot', 1, '157.122.56.196', 'login&login'),
(214, '', 1468567172, 'czbroot', 1, '120.84.9.220', 'login&login'),
(215, '', 1468573425, 'czbroot', 1, '157.122.56.196', 'login&login'),
(216, '添加会员[  123456]', 1468573470, 'czbroot', 1, '157.122.56.196', 'member&member_add'),
(217, '', 1468597783, 'czbroot', 1, '112.93.127.97', 'login&login'),
(218, '', 1468763088, 'czbroot', 1, '120.84.9.220', 'login&login'),
(219, '添加会员[  13450226610]', 1468763379, 'czbroot', 1, '120.84.9.220', 'member&member_add'),
(220, '', 1468767885, 'czbroot', 1, '61.140.105.116', 'login&login'),
(221, '', 1468770608, 'czbroot', 1, '61.140.105.116', 'login&login'),
(222, '添加会员[  123456]', 1468770719, 'czbroot', 1, '61.140.105.116', 'member&member_add'),
(223, '添加会员[  1234567]', 1468771099, 'czbroot', 1, '61.140.105.116', 'member&member_add'),
(224, '', 1468804961, 'czbroot', 1, '120.84.12.130', 'login&login'),
(225, '添加会员[  13538850622]', 1468805188, 'czbroot', 1, '120.84.12.130', 'member&member_add'),
(226, '', 1469013161, 'czbroot', 1, '120.84.12.130', 'login&login'),
(227, '新增19张电子券（面额￥30，批次标识“test”）', 1469013311, 'czbroot', 1, '120.84.12.130', 'coupons&add'),
(228, '', 1469027094, 'czbroot', 1, '120.84.10.218', 'login&login'),
(229, '', 1469027667, 'czbroot', 1, '120.84.12.130', 'login&login'),
(230, '', 1469033887, 'czbroot', 1, '120.84.12.130', 'login&login'),
(231, '新增1张电子券（面额￥100，批次标识“test2”）', 1469033959, 'czbroot', 1, '120.84.12.130', 'coupons&add'),
(232, '处理战区处理意见', 1469036348, 'czbroot', 1, '120.84.12.130', 'agent&feedback_detail'),
(233, '', 1469069810, 'czbroot', 1, '120.84.12.130', 'login&login'),
(234, '', 1469071435, 'czbroot', 1, '120.84.10.153', 'login&login'),
(235, '', 1469084177, 'czbroot', 1, '120.84.10.153', 'login&login'),
(236, '编辑会员[ID:8]', 1469088895, 'czbroot', 1, '120.84.10.153', 'member&member_edit'),
(237, '', 1469092651, 'czbroot', 1, '157.122.56.196', 'login&login'),
(238, '编辑会员[ID:5]', 1469092677, 'czbroot', 1, '157.122.56.196', 'member&member_edit'),
(239, '', 1469120631, 'czbroot', 1, '163.142.147.23', 'login&login'),
(240, '编辑会员[ID:12]', 1469120652, 'czbroot', 1, '163.142.147.23', 'member&member_edit'),
(241, '编辑会员[ID:12]', 1469121810, 'czbroot', 1, '163.142.147.23', 'member&member_edit'),
(242, '', 1469151650, 'czbroot', 1, '120.84.10.153', 'login&login'),
(243, '', 1469152032, 'czbroot', 1, '163.142.147.23', 'login&login'),
(244, '', 1469157123, 'czbroot', 1, '157.122.56.196', 'login&login'),
(245, '', 1469160337, 'czbroot', 1, '120.84.10.153', 'login&login'),
(246, '', 1469164792, 'czbroot', 1, '163.142.147.23', 'login&login'),
(247, '编辑油卡[ID:9]', 1469164947, 'czbroot', 1, '163.142.147.23', 'oil&card_edit'),
(248, '', 1469184066, 'czbroot', 1, '163.142.147.23', 'login&login'),
(249, '', 1469213849, 'czbroot', 1, '163.142.147.23', 'login&login'),
(250, '添加会员[  13631430470]', 1469213896, 'czbroot', 1, '163.142.147.23', 'member&member_add'),
(251, '', 1469461354, 'czbroot', 1, '120.84.10.153', 'login&login'),
(252, '', 1469883358, 'czbroot', 1, '120.84.9.209', 'login&login'),
(253, '修改奖励13450226610[+200]', 1469883391, 'czbroot', 1, '120.84.9.209', 'points_inviter&addpoints'),
(254, '修改奖励13450226610[+1]', 1469883467, 'czbroot', 1, '120.84.9.209', 'points_inviter&addpoints'),
(255, '修改奖励13450226610[+10]', 1469884832, 'czbroot', 1, '120.84.9.209', 'points_inviter&addpoints'),
(256, '修改奖励13450226610[+32]', 1469885255, 'czbroot', 1, '120.84.9.209', 'points_inviter&addpoints'),
(257, '修改奖励13450226610[+3232]', 1469885323, 'czbroot', 1, '120.84.9.209', 'points_inviter&addpoints'),
(258, '修改奖励13450226610[+3232]', 1469885440, 'czbroot', 1, '120.84.9.209', 'points_inviter&addpoints'),
(259, '修改奖励13450226610[+432]', 1469885495, 'czbroot', 1, '120.84.9.209', 'points_inviter&addpoints'),
(260, '修改奖励13450226610[+432432]', 1469885540, 'czbroot', 1, '120.84.9.209', 'points_inviter&addpoints'),
(261, '修改奖励13450226610[+3232]', 1469885802, 'czbroot', 1, '120.84.9.209', 'points_inviter&addpoints'),
(262, '修改奖励13450226610[+322]', 1469885873, 'czbroot', 1, '120.84.9.209', 'points_inviter&addpoints'),
(263, '', 1469948161, 'czbroot', 1, '61.242.112.247', 'login&login'),
(264, '添加会员[  18620778046]', 1469948234, 'czbroot', 1, '61.242.112.247', 'member&member_add'),
(265, '编辑会员[ID:17]', 1469948253, 'czbroot', 1, '61.242.112.247', 'member&member_edit'),
(266, '编辑会员[ID:12]', 1469948281, 'czbroot', 1, '61.242.112.247', 'member&member_edit'),
(267, '编辑会员[ID:9]', 1469949191, 'czbroot', 1, '61.242.112.247', 'member&member_edit'),
(268, '', 1470120218, 'czbroot', 1, '120.84.9.209', 'login&login'),
(269, '编辑合粉公益[ID:1]', 1470120373, 'czbroot', 1, '120.84.9.209', 'fund&index'),
(270, '编辑合粉公益[ID:1]', 1470120473, 'czbroot', 1, '120.84.9.209', 'fund&index'),
(271, '添加文章分类[会员]', 1470122038, 'czbroot', 1, '120.84.9.209', 'question_class&article_class_add'),
(272, '新增文章成功。[注册]', 1470122057, 'czbroot', 1, '120.84.9.209', 'question&article_add'),
(273, '', 1470214546, 'czbroot', 1, '14.145.33.66', 'login&login'),
(274, '', 1470219210, 'czbroot', 1, '14.145.33.66', 'login&login'),
(275, '添加会员[  13800138099]', 1470219238, 'czbroot', 1, '14.145.33.66', 'member&member_add'),
(276, '', 1470295154, 'czbroot', 1, '120.84.12.130', 'login&login'),
(277, '', 1470393227, 'czbroot', 1, '116.23.218.15', 'login&login'),
(278, '添加会员[  13800138098]', 1470393250, 'czbroot', 1, '116.23.218.15', 'member&member_add'),
(279, '', 1470404701, 'czbroot', 1, '120.84.11.72', 'login&login'),
(280, '', 1470406235, 'czbroot', 1, '116.23.218.15', 'login&login'),
(281, '编辑会员[ID:22]', 1470406307, 'czbroot', 1, '116.23.218.15', 'member&member_edit'),
(282, '', 1470578779, 'czbroot', 1, '120.84.11.72', 'login&login'),
(283, '', 1470585583, 'czbroot', 1, '14.198.80.248', 'login&login'),
(284, '', 1470756116, 'czbroot', 1, '120.84.11.72', 'login&login'),
(285, '取消油卡申请[  930522430031700004]', 1470756413, 'czbroot', 1, '120.84.11.72', 'oil&cancel'),
(286, '取消油卡申请[  930522430031700004]', 1470756713, 'czbroot', 1, '120.84.11.72', 'oil&cancel'),
(287, '', 1470758726, 'czbroot', 1, '14.150.214.117', 'login&login'),
(288, '取消油卡申请[  690524103365639015]', 1470759394, 'czbroot', 1, '14.150.214.117', 'oil&cancel'),
(289, '', 1470759723, 'czbroot', 1, '112.96.33.136', 'login&login'),
(290, '', 1470932819, 'czbroot', 1, '61.242.112.190', 'login&login'),
(291, '', 1470968580, 'czbroot', 1, '120.84.11.72', 'login&login'),
(292, '', 1470975242, 'czbroot', 1, '120.84.11.72', 'login&login');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_adv`
--

CREATE TABLE IF NOT EXISTS `yunpay_adv` (
  `adv_id` mediumint(8) unsigned NOT NULL COMMENT '广告自增标识编号',
  `ap_id` mediumint(8) unsigned NOT NULL COMMENT '广告位id',
  `adv_title` varchar(255) NOT NULL COMMENT '广告内容描述',
  `adv_content` varchar(1000) NOT NULL COMMENT '广告内容',
  `adv_start_date` int(10) DEFAULT NULL COMMENT '广告开始时间',
  `adv_end_date` int(10) DEFAULT NULL COMMENT '广告结束时间',
  `slide_sort` int(10) unsigned NOT NULL COMMENT '幻灯片排序',
  `member_id` int(11) NOT NULL COMMENT '会员ID',
  `member_name` varchar(50) NOT NULL COMMENT '会员用户名',
  `click_num` int(10) unsigned NOT NULL COMMENT '广告点击率',
  `is_allow` smallint(1) unsigned NOT NULL COMMENT '会员购买的广告是否通过审核0未审核1审核已通过2审核未通过',
  `buy_style` varchar(10) NOT NULL COMMENT '购买方式',
  `goldpay` int(10) unsigned NOT NULL COMMENT '购买所支付的金币'
) ENGINE=MyISAM AUTO_INCREMENT=935 DEFAULT CHARSET=utf8 COMMENT='广告表';

--
-- 转存表中的数据 `yunpay_adv`
--

INSERT INTO `yunpay_adv` (`adv_id`, `ap_id`, `adv_title`, `adv_content`, `adv_start_date`, `adv_end_date`, `slide_sort`, `member_id`, `member_name`, `click_num`, `is_allow`, `buy_style`, `goldpay`) VALUES
(15, 9, '首页通栏', 'a:2:{s:7:"adv_pic";s:21:"04716538681718544.png";s:11:"adv_pic_url";s:13:"www.33hao.com";}', 1388505600, 1577721600, 0, 0, '', 0, 1, '', 0),
(915, 1037, '闲置首页幻灯片1', 'a:2:{s:13:"adv_slide_pic";s:36:"008a76ccc9449d92b529c2d7dd1ddbb4.png";s:13:"adv_slide_url";s:14:"www.33hao.com";}', 1325347200, 1622476800, 1, 0, '', 0, 1, '', 0),
(916, 1037, '闲置首页幻灯片2', 'a:2:{s:13:"adv_slide_pic";s:36:"fe79d67a363cc0e37ccd65896fea52bd.png";s:13:"adv_slide_url";s:14:"www.33hao.com";}', 1325347200, 1622476800, 2, 0, '', 1, 1, '', 0),
(917, 1037, '闲置首页幻灯片3', 'a:2:{s:13:"adv_slide_pic";s:36:"07085e616fbbd0b2750edb70221ca536.jpg";s:13:"adv_slide_url";s:14:"www.33hao.com";}', 1325347200, 1622476800, 3, 0, '', 1, 1, '', 0),
(918, 1037, '闲置首页幻灯片4', 'a:2:{s:13:"adv_slide_pic";s:36:"42d613f281b21845783e22b2d12ca607.png";s:13:"adv_slide_url";s:14:"www.33hao.com";}', 1325347200, 1622476800, 4, 0, '', 0, 1, '', 0),
(919, 1037, '闲置首页幻灯片5', 'a:2:{s:13:"adv_slide_pic";s:36:"70fa9bcbdd0affe3b4c6832613299f52.png";s:13:"adv_slide_url";s:14:"www.33hao.com";}', 1325347200, 1622476800, 5, 0, '', 0, 1, '', 0),
(920, 1038, '闲置横栏广告1', 'a:2:{s:7:"adv_pic";s:36:"62583bd76a71da66a1259da1d8050b39.jpg";s:11:"adv_pic_url";s:14:"www.33hao.com";}', 1325347200, 1622476800, 0, 0, '', 1, 1, '', 0),
(921, 1038, '闲置横栏广告2', 'a:2:{s:7:"adv_pic";s:36:"d6751364a7e32bcebbfee859e60f62c4.jpg";s:11:"adv_pic_url";s:14:"www.33hao.com";}', 1325347200, 1622476800, 0, 0, '', 2, 1, '', 0),
(931, 1043, '闲置首页中部短栏广告1', 'a:2:{s:7:"adv_pic";s:36:"90189662e6a7a5e8b2f5992485462cdd.png";s:11:"adv_pic_url";s:14:"www.33hao.com";}', 1328025600, 1622476800, 0, 0, '', 1, 1, '', 0),
(932, 1044, '闲置首页中部短栏广告2', 'a:2:{s:7:"adv_pic";s:36:"2cfee9543caaafeccb1b5d69d814a0fe.png";s:11:"adv_pic_url";s:14:"www.33hao.com";}', 1328025600, 1622476800, 0, 0, '', 0, 1, '', 0),
(933, 1045, '闲置首页中部短栏广告3', 'a:2:{s:7:"adv_pic";s:36:"9297917ba3be7b0790d69bb700b93436.jpg";s:11:"adv_pic_url";s:14:"www.33hao.com";}', 1328025600, 1622476800, 0, 0, '', 0, 1, '', 0),
(934, 1046, '闲置首页中部短栏广告4', 'a:2:{s:7:"adv_pic";s:36:"a18f85f81e845a1055726388334df19f.jpg";s:11:"adv_pic_url";s:14:"www.33hao.com";}', 1328025600, 1622476800, 0, 0, '', 0, 1, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_adv_click`
--

CREATE TABLE IF NOT EXISTS `yunpay_adv_click` (
  `adv_id` mediumint(8) unsigned NOT NULL COMMENT '广告id',
  `ap_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '所属广告位id',
  `click_year` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '点击年份',
  `click_month` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '点击月份',
  `click_num` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '点击率',
  `adv_name` varchar(100) NOT NULL COMMENT '广告名称',
  `ap_name` varchar(100) NOT NULL COMMENT '广告位名称'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='广告点击率表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_adv_position`
--

CREATE TABLE IF NOT EXISTS `yunpay_adv_position` (
  `ap_id` mediumint(8) unsigned NOT NULL COMMENT '广告位置id',
  `ap_name` varchar(100) NOT NULL COMMENT '广告位置名',
  `ap_intro` varchar(255) NOT NULL COMMENT '广告位简介',
  `ap_class` smallint(1) unsigned NOT NULL COMMENT '广告类别：0图片1文字2幻灯3Flash',
  `ap_display` smallint(1) unsigned NOT NULL COMMENT '广告展示方式：0幻灯片1多广告展示2单广告展示',
  `is_use` smallint(1) unsigned NOT NULL COMMENT '广告位是否启用：0不启用1启用',
  `ap_width` int(10) NOT NULL COMMENT '广告位宽度',
  `ap_height` int(10) NOT NULL COMMENT '广告位高度',
  `ap_price` int(10) unsigned NOT NULL COMMENT '广告位单价',
  `adv_num` int(10) unsigned NOT NULL COMMENT '拥有的广告数',
  `click_num` int(10) unsigned NOT NULL COMMENT '广告位点击率',
  `default_content` varchar(100) NOT NULL COMMENT '广告位默认内容'
) ENGINE=MyISAM AUTO_INCREMENT=1047 DEFAULT CHARSET=utf8 COMMENT='广告位表';

--
-- 转存表中的数据 `yunpay_adv_position`
--

INSERT INTO `yunpay_adv_position` (`ap_id`, `ap_name`, `ap_intro`, `ap_class`, `ap_display`, `is_use`, `ap_width`, `ap_height`, `ap_price`, `adv_num`, `click_num`, `default_content`) VALUES
(9, '首页底部通栏图片广告', '位于首页底部的通栏型图片广告', 0, 2, 1, 1200, 90, 100, 1, 0, '04418235791378401.jpg'),
(11, '首页中上部banner', '物流自取广告', 0, 2, 1, 1200, 100, 100, 1, 0, 'banner.gif'),
(35, '积分列表页中部广告位', '积分列表页中部广告位', 0, 2, 1, 900, 368, 30, 0, 0, 'f448e48ee0deb06707480d46a2a360ae.gif'),
(37, '商品列表页左侧广告位', '商品列表页左侧广告位', 0, 1, 1, 206, 300, 100, 0, 0, '7a4832d109ee46fe7677c1d3c30e067f.gif'),
(1037, '闲置幻灯片', '闲置首页幻灯片广告', 2, 0, 1, 240, 217, 30, 5, 0, ''),
(1038, '闲置首页中部横栏广告', '闲置首页中部横栏广告', 0, 1, 1, 1000, 61, 30, 2, 0, 'c861866014826de9d2a85cb9b592007c.jpg'),
(1043, '闲置首页中部短栏广告1', '闲置首页中部短栏广告1', 0, 2, 1, 240, 100, 30, 1, 0, 'e2e3047e7d942c0239752c47a11aeceb.png'),
(1044, '闲置首页中部短栏广告2', '闲置首页中部短栏广告2', 0, 2, 1, 240, 100, 30, 1, 0, '52fca98cac39ab7071019ab55ca9b520.png'),
(1045, '闲置首页中部短栏广告3', '闲置首页中部短栏广告3', 0, 2, 1, 240, 100, 30, 1, 0, '41e9b62413294eae29073f4d57fdccb4.jpg'),
(1046, '闲置首页中部短栏广告4', '闲置首页中部短栏广告4', 0, 2, 1, 240, 100, 30, 1, 0, '4ab14bb8de01d777f45a1c0c29507c15.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_agent`
--

CREATE TABLE IF NOT EXISTS `yunpay_agent` (
  `agent_id` int(11) NOT NULL COMMENT '代理ID',
  `member_id` int(11) DEFAULT NULL COMMENT '会员id',
  `member_name` varchar(50) DEFAULT NULL COMMENT '会员名称',
  `aa_id` int(11) DEFAULT NULL COMMENT '所属军区',
  `aa_name` varchar(45) NOT NULL,
  `area_id` int(11) DEFAULT NULL COMMENT '地区',
  `area_name` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_agent_area`
--

CREATE TABLE IF NOT EXISTS `yunpay_agent_area` (
  `aa_id` int(11) NOT NULL,
  `aa_name` varchar(45) DEFAULT NULL,
  `aa_area` varchar(100) DEFAULT NULL,
  `aa_limit` int(11) DEFAULT '2'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yunpay_agent_area`
--

INSERT INTO `yunpay_agent_area` (`aa_id`, `aa_name`, `aa_area`, `aa_limit`) VALUES
(1, '东部军区', '9,10,11,12,13,14', 2),
(2, '南部军区', '18,19,20,21,24,25', 2),
(3, '西部军区', '22,23,26,27,28,29,30,31', 2),
(4, '中部军区', '1,2,3,4,15,16,17', 2),
(5, '北部军区', '5,6,7,8', 2),
(6, '其他', '32,33,34,35', 2),
(7, '总部', 'all', 1);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_album_class`
--

CREATE TABLE IF NOT EXISTS `yunpay_album_class` (
  `aclass_id` int(10) unsigned NOT NULL COMMENT '相册id',
  `aclass_name` varchar(100) NOT NULL COMMENT '相册名称',
  `store_id` int(10) unsigned NOT NULL COMMENT '所属店铺id',
  `aclass_des` varchar(255) NOT NULL COMMENT '相册描述',
  `aclass_sort` tinyint(3) unsigned NOT NULL COMMENT '排序',
  `aclass_cover` varchar(255) NOT NULL COMMENT '相册封面',
  `upload_time` int(10) unsigned NOT NULL COMMENT '图片上传时间',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为默认相册,1代表默认'
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='相册表';

--
-- 转存表中的数据 `yunpay_album_class`
--

INSERT INTO `yunpay_album_class` (`aclass_id`, `aclass_name`, `store_id`, `aclass_des`, `aclass_sort`, `aclass_cover`, `upload_time`, `is_default`) VALUES
(17, '默认相册', 1, '', 255, '', 1461407408, 1),
(19, '默认相册', 16, '', 255, '', 1470214639, 1);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_album_pic`
--

CREATE TABLE IF NOT EXISTS `yunpay_album_pic` (
  `apic_id` int(10) unsigned NOT NULL COMMENT '相册图片表id',
  `apic_name` varchar(100) NOT NULL COMMENT '图片名称',
  `apic_tag` varchar(255) NOT NULL COMMENT '图片标签',
  `aclass_id` int(10) unsigned NOT NULL COMMENT '相册id',
  `apic_cover` varchar(255) NOT NULL COMMENT '图片路径',
  `apic_size` int(10) unsigned NOT NULL COMMENT '图片大小',
  `apic_spec` varchar(100) NOT NULL COMMENT '图片规格',
  `store_id` int(10) unsigned NOT NULL COMMENT '所属店铺id',
  `upload_time` int(10) unsigned NOT NULL COMMENT '图片上传时间'
) ENGINE=MyISAM AUTO_INCREMENT=919 DEFAULT CHARSET=utf8 COMMENT='相册图片表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_area`
--

CREATE TABLE IF NOT EXISTS `yunpay_area` (
  `area_id` int(11) unsigned NOT NULL COMMENT '索引ID',
  `area_name` varchar(50) NOT NULL COMMENT '地区名称',
  `area_parent_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '地区父ID',
  `area_sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `area_deep` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '地区深度，从1开始',
  `area_region` varchar(3) DEFAULT NULL COMMENT '大区名称'
) ENGINE=MyISAM AUTO_INCREMENT=45060 DEFAULT CHARSET=utf8 COMMENT='地区表';

--
-- 转存表中的数据 `yunpay_area`
--

INSERT INTO `yunpay_area` (`area_id`, `area_name`, `area_parent_id`, `area_sort`, `area_deep`, `area_region`) VALUES
(1, '北京', 0, 0, 1, '华北'),
(2, '天津', 0, 0, 1, '华北'),
(3, '河北', 0, 0, 1, '华北'),
(4, '山西', 0, 0, 1, '华北'),
(5, '内蒙古', 0, 0, 1, '华北'),
(6, '辽宁', 0, 0, 1, '东北'),
(7, '吉林', 0, 0, 1, '东北'),
(8, '黑龙江', 0, 0, 1, '东北'),
(9, '上海', 0, 0, 1, '华东'),
(10, '江苏', 0, 0, 1, '华东'),
(11, '浙江', 0, 0, 1, '华东'),
(12, '安徽', 0, 0, 1, '华东'),
(13, '福建', 0, 0, 1, '华南'),
(14, '江西', 0, 0, 1, '华东'),
(15, '山东', 0, 0, 1, '华东'),
(16, '河南', 0, 0, 1, '华中'),
(17, '湖北', 0, 0, 1, '华中'),
(18, '湖南', 0, 0, 1, '华中'),
(19, '广东', 0, 0, 1, '华南'),
(20, '广西', 0, 0, 1, '华南'),
(21, '海南', 0, 0, 1, '华南'),
(22, '重庆', 0, 0, 1, '西南'),
(23, '四川', 0, 0, 1, '西南'),
(24, '贵州', 0, 0, 1, '西南'),
(25, '云南', 0, 0, 1, '西南'),
(26, '西藏', 0, 0, 1, '西南'),
(27, '陕西', 0, 0, 1, '西北'),
(28, '甘肃', 0, 0, 1, '西北'),
(29, '青海', 0, 0, 1, '西北'),
(30, '宁夏', 0, 0, 1, '西北'),
(31, '新疆', 0, 0, 1, '西北'),
(32, '台湾', 0, 0, 1, '港澳台'),
(33, '香港', 0, 0, 1, '港澳台'),
(34, '澳门', 0, 0, 1, '港澳台'),
(35, '海外', 0, 0, 1, '海外'),
(36, '北京市', 1, 0, 2, NULL),
(37, '东城区', 36, 0, 3, NULL),
(38, '西城区', 36, 0, 3, NULL),
(39, '上海市', 9, 0, 2, NULL),
(40, '天津市', 2, 0, 2, NULL),
(41, '朝阳区', 36, 0, 3, NULL),
(42, '丰台区', 36, 0, 3, NULL),
(43, '石景山区', 36, 0, 3, NULL),
(44, '海淀区', 36, 0, 3, NULL),
(45, '门头沟区', 36, 0, 3, NULL),
(46, '房山区', 36, 0, 3, NULL),
(47, '通州区', 36, 0, 3, NULL),
(48, '顺义区', 36, 0, 3, NULL),
(49, '昌平区', 36, 0, 3, NULL),
(50, '大兴区', 36, 0, 3, NULL),
(51, '怀柔区', 36, 0, 3, NULL),
(52, '平谷区', 36, 0, 3, NULL),
(53, '密云县', 36, 0, 3, NULL),
(54, '延庆县', 36, 0, 3, NULL),
(55, '和平区', 40, 0, 3, NULL),
(56, '河东区', 40, 0, 3, NULL),
(57, '河西区', 40, 0, 3, NULL),
(58, '南开区', 40, 0, 3, NULL),
(59, '河北区', 40, 0, 3, NULL),
(60, '红桥区', 40, 0, 3, NULL),
(61, '塘沽区', 40, 0, 3, NULL),
(62, '重庆市', 22, 0, 2, NULL),
(64, '东丽区', 40, 0, 3, NULL),
(65, '西青区', 40, 0, 3, NULL),
(66, '津南区', 40, 0, 3, NULL),
(67, '北辰区', 40, 0, 3, NULL),
(68, '武清区', 40, 0, 3, NULL),
(69, '宝坻区', 40, 0, 3, NULL),
(70, '宁河县', 40, 0, 3, NULL),
(71, '静海县', 40, 0, 3, NULL),
(72, '蓟县', 40, 0, 3, NULL),
(73, '石家庄市', 3, 0, 2, NULL),
(74, '唐山市', 3, 0, 2, NULL),
(75, '秦皇岛市', 3, 0, 2, NULL),
(76, '邯郸市', 3, 0, 2, NULL),
(77, '邢台市', 3, 0, 2, NULL),
(78, '保定市', 3, 0, 2, NULL),
(79, '张家口市', 3, 0, 2, NULL),
(80, '承德市', 3, 0, 2, NULL),
(81, '衡水市', 3, 0, 2, NULL),
(82, '廊坊市', 3, 0, 2, NULL),
(83, '沧州市', 3, 0, 2, NULL),
(84, '太原市', 4, 0, 2, NULL),
(85, '大同市', 4, 0, 2, NULL),
(86, '阳泉市', 4, 0, 2, NULL),
(87, '长治市', 4, 0, 2, NULL),
(88, '晋城市', 4, 0, 2, NULL),
(89, '朔州市', 4, 0, 2, NULL),
(90, '晋中市', 4, 0, 2, NULL),
(91, '运城市', 4, 0, 2, NULL),
(92, '忻州市', 4, 0, 2, NULL),
(93, '临汾市', 4, 0, 2, NULL),
(94, '吕梁市', 4, 0, 2, NULL),
(95, '呼和浩特市', 5, 0, 2, NULL),
(96, '包头市', 5, 0, 2, NULL),
(97, '乌海市', 5, 0, 2, NULL),
(98, '赤峰市', 5, 0, 2, NULL),
(99, '通辽市', 5, 0, 2, NULL),
(100, '鄂尔多斯市', 5, 0, 2, NULL),
(101, '呼伦贝尔市', 5, 0, 2, NULL),
(102, '巴彦淖尔市', 5, 0, 2, NULL),
(103, '乌兰察布市', 5, 0, 2, NULL),
(104, '兴安盟', 5, 0, 2, NULL),
(105, '锡林郭勒盟', 5, 0, 2, NULL),
(106, '阿拉善盟', 5, 0, 2, NULL),
(107, '沈阳市', 6, 0, 2, NULL),
(108, '大连市', 6, 0, 2, NULL),
(109, '鞍山市', 6, 0, 2, NULL),
(110, '抚顺市', 6, 0, 2, NULL),
(111, '本溪市', 6, 0, 2, NULL),
(112, '丹东市', 6, 0, 2, NULL),
(113, '锦州市', 6, 0, 2, NULL),
(114, '营口市', 6, 0, 2, NULL),
(115, '阜新市', 6, 0, 2, NULL),
(116, '辽阳市', 6, 0, 2, NULL),
(117, '盘锦市', 6, 0, 2, NULL),
(118, '铁岭市', 6, 0, 2, NULL),
(119, '朝阳市', 6, 0, 2, NULL),
(120, '葫芦岛市', 6, 0, 2, NULL),
(121, '长春市', 7, 0, 2, NULL),
(122, '吉林市', 7, 0, 2, NULL),
(123, '四平市', 7, 0, 2, NULL),
(124, '辽源市', 7, 0, 2, NULL),
(125, '通化市', 7, 0, 2, NULL),
(126, '白山市', 7, 0, 2, NULL),
(127, '松原市', 7, 0, 2, NULL),
(128, '白城市', 7, 0, 2, NULL),
(129, '延边朝鲜族自治州', 7, 0, 2, NULL),
(130, '哈尔滨市', 8, 0, 2, NULL),
(131, '齐齐哈尔市', 8, 0, 2, NULL),
(132, '鸡西市', 8, 0, 2, NULL),
(133, '鹤岗市', 8, 0, 2, NULL),
(134, '双鸭山市', 8, 0, 2, NULL),
(135, '大庆市', 8, 0, 2, NULL),
(136, '伊春市', 8, 0, 2, NULL),
(137, '佳木斯市', 8, 0, 2, NULL),
(138, '七台河市', 8, 0, 2, NULL),
(139, '牡丹江市', 8, 0, 2, NULL),
(140, '黑河市', 8, 0, 2, NULL),
(141, '绥化市', 8, 0, 2, NULL),
(142, '大兴安岭地区', 8, 0, 2, NULL),
(143, '黄浦区', 39, 0, 3, NULL),
(144, '卢湾区', 39, 0, 3, NULL),
(145, '徐汇区', 39, 0, 3, NULL),
(146, '长宁区', 39, 0, 3, NULL),
(147, '静安区', 39, 0, 3, NULL),
(148, '普陀区', 39, 0, 3, NULL),
(149, '闸北区', 39, 0, 3, NULL),
(150, '虹口区', 39, 0, 3, NULL),
(151, '杨浦区', 39, 0, 3, NULL),
(152, '闵行区', 39, 0, 3, NULL),
(153, '宝山区', 39, 0, 3, NULL),
(154, '嘉定区', 39, 0, 3, NULL),
(155, '浦东新区', 39, 0, 3, NULL),
(156, '金山区', 39, 0, 3, NULL),
(157, '松江区', 39, 0, 3, NULL),
(158, '青浦区', 39, 0, 3, NULL),
(159, '南汇区', 39, 0, 3, NULL),
(160, '奉贤区', 39, 0, 3, NULL),
(161, '崇明县', 39, 0, 3, NULL),
(162, '南京市', 10, 0, 2, NULL),
(163, '无锡市', 10, 0, 2, NULL),
(164, '徐州市', 10, 0, 2, NULL),
(165, '常州市', 10, 0, 2, NULL),
(166, '苏州市', 10, 0, 2, NULL),
(167, '南通市', 10, 0, 2, NULL),
(168, '连云港市', 10, 0, 2, NULL),
(169, '淮安市', 10, 0, 2, NULL),
(170, '盐城市', 10, 0, 2, NULL),
(171, '扬州市', 10, 0, 2, NULL),
(172, '镇江市', 10, 0, 2, NULL),
(173, '泰州市', 10, 0, 2, NULL),
(174, '宿迁市', 10, 0, 2, NULL),
(175, '杭州市', 11, 0, 2, NULL),
(176, '宁波市', 11, 0, 2, NULL),
(177, '温州市', 11, 0, 2, NULL),
(178, '嘉兴市', 11, 0, 2, NULL),
(179, '湖州市', 11, 0, 2, NULL),
(180, '绍兴市', 11, 0, 2, NULL),
(181, '舟山市', 11, 0, 2, NULL),
(182, '衢州市', 11, 0, 2, NULL),
(183, '金华市', 11, 0, 2, NULL),
(184, '台州市', 11, 0, 2, NULL),
(185, '丽水市', 11, 0, 2, NULL),
(186, '合肥市', 12, 0, 2, NULL),
(187, '芜湖市', 12, 0, 2, NULL),
(188, '蚌埠市', 12, 0, 2, NULL),
(189, '淮南市', 12, 0, 2, NULL),
(190, '马鞍山市', 12, 0, 2, NULL),
(191, '淮北市', 12, 0, 2, NULL),
(192, '铜陵市', 12, 0, 2, NULL),
(193, '安庆市', 12, 0, 2, NULL),
(194, '黄山市', 12, 0, 2, NULL),
(195, '滁州市', 12, 0, 2, NULL),
(196, '阜阳市', 12, 0, 2, NULL),
(197, '宿州市', 12, 0, 2, NULL),
(198, '巢湖市', 12, 0, 2, NULL),
(199, '六安市', 12, 0, 2, NULL),
(200, '亳州市', 12, 0, 2, NULL),
(201, '池州市', 12, 0, 2, NULL),
(202, '宣城市', 12, 0, 2, NULL),
(203, '福州市', 13, 0, 2, NULL),
(204, '厦门市', 13, 0, 2, NULL),
(205, '莆田市', 13, 0, 2, NULL),
(206, '三明市', 13, 0, 2, NULL),
(207, '泉州市', 13, 0, 2, NULL),
(208, '漳州市', 13, 0, 2, NULL),
(209, '南平市', 13, 0, 2, NULL),
(210, '龙岩市', 13, 0, 2, NULL),
(211, '宁德市', 13, 0, 2, NULL),
(212, '南昌市', 14, 0, 2, NULL),
(213, '景德镇市', 14, 0, 2, NULL),
(214, '萍乡市', 14, 0, 2, NULL),
(215, '九江市', 14, 0, 2, NULL),
(216, '新余市', 14, 0, 2, NULL),
(217, '鹰潭市', 14, 0, 2, NULL),
(218, '赣州市', 14, 0, 2, NULL),
(219, '吉安市', 14, 0, 2, NULL),
(220, '宜春市', 14, 0, 2, NULL),
(221, '抚州市', 14, 0, 2, NULL),
(222, '上饶市', 14, 0, 2, NULL),
(223, '济南市', 15, 0, 2, NULL),
(224, '青岛市', 15, 0, 2, NULL),
(225, '淄博市', 15, 0, 2, NULL),
(226, '枣庄市', 15, 0, 2, NULL),
(227, '东营市', 15, 0, 2, NULL),
(228, '烟台市', 15, 0, 2, NULL),
(229, '潍坊市', 15, 0, 2, NULL),
(230, '济宁市', 15, 0, 2, NULL),
(231, '泰安市', 15, 0, 2, NULL),
(232, '威海市', 15, 0, 2, NULL),
(233, '日照市', 15, 0, 2, NULL),
(234, '莱芜市', 15, 0, 2, NULL),
(235, '临沂市', 15, 0, 2, NULL),
(236, '德州市', 15, 0, 2, NULL),
(237, '聊城市', 15, 0, 2, NULL),
(238, '滨州市', 15, 0, 2, NULL),
(239, '菏泽市', 15, 0, 2, NULL),
(240, '郑州市', 16, 0, 2, NULL),
(241, '开封市', 16, 0, 2, NULL),
(242, '洛阳市', 16, 0, 2, NULL),
(243, '平顶山市', 16, 0, 2, NULL),
(244, '安阳市', 16, 0, 2, NULL),
(245, '鹤壁市', 16, 0, 2, NULL),
(246, '新乡市', 16, 0, 2, NULL),
(247, '焦作市', 16, 0, 2, NULL),
(248, '濮阳市', 16, 0, 2, NULL),
(249, '许昌市', 16, 0, 2, NULL),
(250, '漯河市', 16, 0, 2, NULL),
(251, '三门峡市', 16, 0, 2, NULL),
(252, '南阳市', 16, 0, 2, NULL),
(253, '商丘市', 16, 0, 2, NULL),
(254, '信阳市', 16, 0, 2, NULL),
(255, '周口市', 16, 0, 2, NULL),
(256, '驻马店市', 16, 0, 2, NULL),
(257, '济源市', 16, 0, 2, NULL),
(258, '武汉市', 17, 0, 2, NULL),
(259, '黄石市', 17, 0, 2, NULL),
(260, '十堰市', 17, 0, 2, NULL),
(261, '宜昌市', 17, 0, 2, NULL),
(262, '襄樊市', 17, 0, 2, NULL),
(263, '鄂州市', 17, 0, 2, NULL),
(264, '荆门市', 17, 0, 2, NULL),
(265, '孝感市', 17, 0, 2, NULL),
(266, '荆州市', 17, 0, 2, NULL),
(267, '黄冈市', 17, 0, 2, NULL),
(268, '咸宁市', 17, 0, 2, NULL),
(269, '随州市', 17, 0, 2, NULL),
(270, '恩施土家族苗族自治州', 17, 0, 2, NULL),
(271, '仙桃市', 17, 0, 2, NULL),
(272, '潜江市', 17, 0, 2, NULL),
(273, '天门市', 17, 0, 2, NULL),
(274, '神农架林区', 17, 0, 2, NULL),
(275, '长沙市', 18, 0, 2, NULL),
(276, '株洲市', 18, 0, 2, NULL),
(277, '湘潭市', 18, 0, 2, NULL),
(278, '衡阳市', 18, 0, 2, NULL),
(279, '邵阳市', 18, 0, 2, NULL),
(280, '岳阳市', 18, 0, 2, NULL),
(281, '常德市', 18, 0, 2, NULL),
(282, '张家界市', 18, 0, 2, NULL),
(283, '益阳市', 18, 0, 2, NULL),
(284, '郴州市', 18, 0, 2, NULL),
(285, '永州市', 18, 0, 2, NULL),
(286, '怀化市', 18, 0, 2, NULL),
(287, '娄底市', 18, 0, 2, NULL),
(288, '湘西土家族苗族自治州', 18, 0, 2, NULL),
(289, '广州市', 19, 0, 2, NULL),
(290, '韶关市', 19, 0, 2, NULL),
(291, '深圳市', 19, 0, 2, NULL),
(292, '珠海市', 19, 0, 2, NULL),
(293, '汕头市', 19, 0, 2, NULL),
(294, '佛山市', 19, 0, 2, NULL),
(295, '江门市', 19, 0, 2, NULL),
(296, '湛江市', 19, 0, 2, NULL),
(297, '茂名市', 19, 0, 2, NULL),
(298, '肇庆市', 19, 0, 2, NULL),
(299, '惠州市', 19, 0, 2, NULL),
(300, '梅州市', 19, 0, 2, NULL),
(301, '汕尾市', 19, 0, 2, NULL),
(302, '河源市', 19, 0, 2, NULL),
(303, '阳江市', 19, 0, 2, NULL),
(304, '清远市', 19, 0, 2, NULL),
(305, '东莞市', 19, 0, 2, NULL),
(306, '中山市', 19, 0, 2, NULL),
(307, '潮州市', 19, 0, 2, NULL),
(308, '揭阳市', 19, 0, 2, NULL),
(309, '云浮市', 19, 0, 2, NULL),
(310, '南宁市', 20, 0, 2, NULL),
(311, '柳州市', 20, 0, 2, NULL),
(312, '桂林市', 20, 0, 2, NULL),
(313, '梧州市', 20, 0, 2, NULL),
(314, '北海市', 20, 0, 2, NULL),
(315, '防城港市', 20, 0, 2, NULL),
(316, '钦州市', 20, 0, 2, NULL),
(317, '贵港市', 20, 0, 2, NULL),
(318, '玉林市', 20, 0, 2, NULL),
(319, '百色市', 20, 0, 2, NULL),
(320, '贺州市', 20, 0, 2, NULL),
(321, '河池市', 20, 0, 2, NULL),
(322, '来宾市', 20, 0, 2, NULL),
(323, '崇左市', 20, 0, 2, NULL),
(324, '海口市', 21, 0, 2, NULL),
(325, '三亚市', 21, 0, 2, NULL),
(326, '五指山市', 21, 0, 2, NULL),
(327, '琼海市', 21, 0, 2, NULL),
(328, '儋州市', 21, 0, 2, NULL),
(329, '文昌市', 21, 0, 2, NULL),
(330, '万宁市', 21, 0, 2, NULL),
(331, '东方市', 21, 0, 2, NULL),
(332, '定安县', 21, 0, 2, NULL),
(333, '屯昌县', 21, 0, 2, NULL),
(334, '澄迈县', 21, 0, 2, NULL),
(335, '临高县', 21, 0, 2, NULL),
(336, '白沙黎族自治县', 21, 0, 2, NULL),
(337, '昌江黎族自治县', 21, 0, 2, NULL),
(338, '乐东黎族自治县', 21, 0, 2, NULL),
(339, '陵水黎族自治县', 21, 0, 2, NULL),
(340, '保亭黎族苗族自治县', 21, 0, 2, NULL),
(341, '琼中黎族苗族自治县', 21, 0, 2, NULL),
(342, '西沙群岛', 21, 0, 2, NULL),
(343, '南沙群岛', 21, 0, 2, NULL),
(344, '中沙群岛的岛礁及其海域', 21, 0, 2, NULL),
(345, '万州区', 62, 0, 3, NULL),
(346, '涪陵区', 62, 0, 3, NULL),
(347, '渝中区', 62, 0, 3, NULL),
(348, '大渡口区', 62, 0, 3, NULL),
(349, '江北区', 62, 0, 3, NULL),
(350, '沙坪坝区', 62, 0, 3, NULL),
(351, '九龙坡区', 62, 0, 3, NULL),
(352, '南岸区', 62, 0, 3, NULL),
(353, '北碚区', 62, 0, 3, NULL),
(354, '双桥区', 62, 0, 3, NULL),
(355, '万盛区', 62, 0, 3, NULL),
(356, '渝北区', 62, 0, 3, NULL),
(357, '巴南区', 62, 0, 3, NULL),
(358, '黔江区', 62, 0, 3, NULL),
(359, '长寿区', 62, 0, 3, NULL),
(360, '綦江县', 62, 0, 3, NULL),
(361, '潼南县', 62, 0, 3, NULL),
(362, '铜梁县', 62, 0, 3, NULL),
(363, '大足县', 62, 0, 3, NULL),
(364, '荣昌县', 62, 0, 3, NULL),
(365, '璧山县', 62, 0, 3, NULL),
(366, '梁平县', 62, 0, 3, NULL),
(367, '城口县', 62, 0, 3, NULL),
(368, '丰都县', 62, 0, 3, NULL),
(369, '垫江县', 62, 0, 3, NULL),
(370, '武隆县', 62, 0, 3, NULL),
(371, '忠县', 62, 0, 3, NULL),
(372, '开县', 62, 0, 3, NULL),
(373, '云阳县', 62, 0, 3, NULL),
(374, '奉节县', 62, 0, 3, NULL),
(375, '巫山县', 62, 0, 3, NULL),
(376, '巫溪县', 62, 0, 3, NULL),
(377, '石柱土家族自治县', 62, 0, 3, NULL),
(378, '秀山土家族苗族自治县', 62, 0, 3, NULL),
(379, '酉阳土家族苗族自治县', 62, 0, 3, NULL),
(380, '彭水苗族土家族自治县', 62, 0, 3, NULL),
(381, '江津市', 62, 0, 3, NULL),
(382, '合川市', 62, 0, 3, NULL),
(383, '永川市', 62, 0, 3, NULL),
(384, '南川市', 62, 0, 3, NULL),
(385, '成都市', 23, 0, 2, NULL),
(386, '自贡市', 23, 0, 2, NULL),
(387, '攀枝花市', 23, 0, 2, NULL),
(388, '泸州市', 23, 0, 2, NULL),
(389, '德阳市', 23, 0, 2, NULL),
(390, '绵阳市', 23, 0, 2, NULL),
(391, '广元市', 23, 0, 2, NULL),
(392, '遂宁市', 23, 0, 2, NULL),
(393, '内江市', 23, 0, 2, NULL),
(394, '乐山市', 23, 0, 2, NULL),
(395, '南充市', 23, 0, 2, NULL),
(396, '眉山市', 23, 0, 2, NULL),
(397, '宜宾市', 23, 0, 2, NULL),
(398, '广安市', 23, 0, 2, NULL),
(399, '达州市', 23, 0, 2, NULL),
(400, '雅安市', 23, 0, 2, NULL),
(401, '巴中市', 23, 0, 2, NULL),
(402, '资阳市', 23, 0, 2, NULL),
(403, '阿坝藏族羌族自治州', 23, 0, 2, NULL),
(404, '甘孜藏族自治州', 23, 0, 2, NULL),
(405, '凉山彝族自治州', 23, 0, 2, NULL),
(406, '贵阳市', 24, 0, 2, NULL),
(407, '六盘水市', 24, 0, 2, NULL),
(408, '遵义市', 24, 0, 2, NULL),
(409, '安顺市', 24, 0, 2, NULL),
(410, '铜仁地区', 24, 0, 2, NULL),
(411, '黔西南布依族苗族自治州', 24, 0, 2, NULL),
(412, '毕节地区', 24, 0, 2, NULL),
(413, '黔东南苗族侗族自治州', 24, 0, 2, NULL),
(414, '黔南布依族苗族自治州', 24, 0, 2, NULL),
(415, '昆明市', 25, 0, 2, NULL),
(416, '曲靖市', 25, 0, 2, NULL),
(417, '玉溪市', 25, 0, 2, NULL),
(418, '保山市', 25, 0, 2, NULL),
(419, '昭通市', 25, 0, 2, NULL),
(420, '丽江市', 25, 0, 2, NULL),
(421, '思茅市', 25, 0, 2, NULL),
(422, '临沧市', 25, 0, 2, NULL),
(423, '楚雄彝族自治州', 25, 0, 2, NULL),
(424, '红河哈尼族彝族自治州', 25, 0, 2, NULL),
(425, '文山壮族苗族自治州', 25, 0, 2, NULL),
(426, '西双版纳傣族自治州', 25, 0, 2, NULL),
(427, '大理白族自治州', 25, 0, 2, NULL),
(428, '德宏傣族景颇族自治州', 25, 0, 2, NULL),
(429, '怒江傈僳族自治州', 25, 0, 2, NULL),
(430, '迪庆藏族自治州', 25, 0, 2, NULL),
(431, '拉萨市', 26, 0, 2, NULL),
(432, '昌都地区', 26, 0, 2, NULL),
(433, '山南地区', 26, 0, 2, NULL),
(434, '日喀则地区', 26, 0, 2, NULL),
(435, '那曲地区', 26, 0, 2, NULL),
(436, '阿里地区', 26, 0, 2, NULL),
(437, '林芝地区', 26, 0, 2, NULL),
(438, '西安市', 27, 0, 2, NULL),
(439, '铜川市', 27, 0, 2, NULL),
(440, '宝鸡市', 27, 0, 2, NULL),
(441, '咸阳市', 27, 0, 2, NULL),
(442, '渭南市', 27, 0, 2, NULL),
(443, '延安市', 27, 0, 2, NULL),
(444, '汉中市', 27, 0, 2, NULL),
(445, '榆林市', 27, 0, 2, NULL),
(446, '安康市', 27, 0, 2, NULL),
(447, '商洛市', 27, 0, 2, NULL),
(448, '兰州市', 28, 0, 2, NULL),
(449, '嘉峪关市', 28, 0, 2, NULL),
(450, '金昌市', 28, 0, 2, NULL),
(451, '白银市', 28, 0, 2, NULL),
(452, '天水市', 28, 0, 2, NULL),
(453, '武威市', 28, 0, 2, NULL),
(454, '张掖市', 28, 0, 2, NULL),
(455, '平凉市', 28, 0, 2, NULL),
(456, '酒泉市', 28, 0, 2, NULL),
(457, '庆阳市', 28, 0, 2, NULL),
(458, '定西市', 28, 0, 2, NULL),
(459, '陇南市', 28, 0, 2, NULL),
(460, '临夏回族自治州', 28, 0, 2, NULL),
(461, '甘南藏族自治州', 28, 0, 2, NULL),
(462, '西宁市', 29, 0, 2, NULL),
(463, '海东地区', 29, 0, 2, NULL),
(464, '海北藏族自治州', 29, 0, 2, NULL),
(465, '黄南藏族自治州', 29, 0, 2, NULL),
(466, '海南藏族自治州', 29, 0, 2, NULL),
(467, '果洛藏族自治州', 29, 0, 2, NULL),
(468, '玉树藏族自治州', 29, 0, 2, NULL),
(469, '海西蒙古族藏族自治州', 29, 0, 2, NULL),
(470, '银川市', 30, 0, 2, NULL),
(471, '石嘴山市', 30, 0, 2, NULL),
(472, '吴忠市', 30, 0, 2, NULL),
(473, '固原市', 30, 0, 2, NULL),
(474, '中卫市', 30, 0, 2, NULL),
(475, '乌鲁木齐市', 31, 0, 2, NULL),
(476, '克拉玛依市', 31, 0, 2, NULL),
(477, '吐鲁番地区', 31, 0, 2, NULL),
(478, '哈密地区', 31, 0, 2, NULL),
(479, '昌吉回族自治州', 31, 0, 2, NULL),
(480, '博尔塔拉蒙古自治州', 31, 0, 2, NULL),
(481, '巴音郭楞蒙古自治州', 31, 0, 2, NULL),
(482, '阿克苏地区', 31, 0, 2, NULL),
(483, '克孜勒苏柯尔克孜自治州', 31, 0, 2, NULL),
(484, '喀什地区', 31, 0, 2, NULL),
(485, '和田地区', 31, 0, 2, NULL),
(486, '伊犁哈萨克自治州', 31, 0, 2, NULL),
(487, '塔城地区', 31, 0, 2, NULL),
(488, '阿勒泰地区', 31, 0, 2, NULL),
(489, '石河子市', 31, 0, 2, NULL),
(490, '阿拉尔市', 31, 0, 2, NULL),
(491, '图木舒克市', 31, 0, 2, NULL),
(492, '五家渠市', 31, 0, 2, NULL),
(493, '台北市', 32, 0, 2, NULL),
(494, '高雄市', 32, 0, 2, NULL),
(495, '基隆市', 32, 0, 2, NULL),
(496, '台中市', 32, 0, 2, NULL),
(497, '台南市', 32, 0, 2, NULL),
(498, '新竹市', 32, 0, 2, NULL),
(499, '嘉义市', 32, 0, 2, NULL),
(500, '台北县', 32, 0, 2, NULL),
(501, '宜兰县', 32, 0, 2, NULL),
(502, '桃园县', 32, 0, 2, NULL),
(503, '新竹县', 32, 0, 2, NULL),
(504, '苗栗县', 32, 0, 2, NULL),
(505, '台中县', 32, 0, 2, NULL),
(506, '彰化县', 32, 0, 2, NULL),
(507, '南投县', 32, 0, 2, NULL),
(508, '云林县', 32, 0, 2, NULL),
(509, '嘉义县', 32, 0, 2, NULL),
(510, '台南县', 32, 0, 2, NULL),
(511, '高雄县', 32, 0, 2, NULL),
(512, '屏东县', 32, 0, 2, NULL),
(513, '澎湖县', 32, 0, 2, NULL),
(514, '台东县', 32, 0, 2, NULL),
(515, '花莲县', 32, 0, 2, NULL),
(516, '中西区', 33, 0, 2, NULL),
(517, '东区', 33, 0, 2, NULL),
(518, '九龙城区', 33, 0, 2, NULL),
(519, '观塘区', 33, 0, 2, NULL),
(520, '南区', 33, 0, 2, NULL),
(521, '深水埗区', 33, 0, 2, NULL),
(522, '黄大仙区', 33, 0, 2, NULL),
(523, '湾仔区', 33, 0, 2, NULL),
(524, '油尖旺区', 33, 0, 2, NULL),
(525, '离岛区', 33, 0, 2, NULL),
(526, '葵青区', 33, 0, 2, NULL),
(527, '北区', 33, 0, 2, NULL),
(528, '西贡区', 33, 0, 2, NULL),
(529, '沙田区', 33, 0, 2, NULL),
(530, '屯门区', 33, 0, 2, NULL),
(531, '大埔区', 33, 0, 2, NULL),
(532, '荃湾区', 33, 0, 2, NULL),
(533, '元朗区', 33, 0, 2, NULL),
(534, '澳门特别行政区', 34, 0, 2, NULL),
(535, '美国', 45055, 0, 3, NULL),
(536, '加拿大', 45055, 0, 3, NULL),
(537, '澳大利亚', 45055, 0, 3, NULL),
(538, '新西兰', 45055, 0, 3, NULL),
(539, '英国', 45055, 0, 3, NULL),
(540, '法国', 45055, 0, 3, NULL),
(541, '德国', 45055, 0, 3, NULL),
(542, '捷克', 45055, 0, 3, NULL),
(543, '荷兰', 45055, 0, 3, NULL),
(544, '瑞士', 45055, 0, 3, NULL),
(545, '希腊', 45055, 0, 3, NULL),
(546, '挪威', 45055, 0, 3, NULL),
(547, '瑞典', 45055, 0, 3, NULL),
(548, '丹麦', 45055, 0, 3, NULL),
(549, '芬兰', 45055, 0, 3, NULL),
(550, '爱尔兰', 45055, 0, 3, NULL),
(551, '奥地利', 45055, 0, 3, NULL),
(552, '意大利', 45055, 0, 3, NULL),
(553, '乌克兰', 45055, 0, 3, NULL),
(554, '俄罗斯', 45055, 0, 3, NULL),
(555, '西班牙', 45055, 0, 3, NULL),
(556, '韩国', 45055, 0, 3, NULL),
(557, '新加坡', 45055, 0, 3, NULL),
(558, '马来西亚', 45055, 0, 3, NULL),
(559, '印度', 45055, 0, 3, NULL),
(560, '泰国', 45055, 0, 3, NULL),
(561, '日本', 45055, 0, 3, NULL),
(562, '巴西', 45055, 0, 3, NULL),
(563, '阿根廷', 45055, 0, 3, NULL),
(564, '南非', 45055, 0, 3, NULL),
(565, '埃及', 45055, 0, 3, NULL),
(566, '其他', 36, 0, 3, NULL),
(1126, '井陉县', 73, 0, 3, NULL),
(1127, '井陉矿区', 73, 0, 3, NULL),
(1128, '元氏县', 73, 0, 3, NULL),
(1129, '平山县', 73, 0, 3, NULL),
(1130, '新乐市', 73, 0, 3, NULL),
(1131, '新华区', 73, 0, 3, NULL),
(1132, '无极县', 73, 0, 3, NULL),
(1133, '晋州市', 73, 0, 3, NULL),
(1134, '栾城县', 73, 0, 3, NULL),
(1135, '桥东区', 73, 0, 3, NULL),
(1136, '桥西区', 73, 0, 3, NULL),
(1137, '正定县', 73, 0, 3, NULL),
(1138, '深泽县', 73, 0, 3, NULL),
(1139, '灵寿县', 73, 0, 3, NULL),
(1140, '藁城市', 73, 0, 3, NULL),
(1141, '行唐县', 73, 0, 3, NULL),
(1142, '裕华区', 73, 0, 3, NULL),
(1143, '赞皇县', 73, 0, 3, NULL),
(1144, '赵县', 73, 0, 3, NULL),
(1145, '辛集市', 73, 0, 3, NULL),
(1146, '长安区', 73, 0, 3, NULL),
(1147, '高邑县', 73, 0, 3, NULL),
(1148, '鹿泉市', 73, 0, 3, NULL),
(1149, '丰南区', 74, 0, 3, NULL),
(1150, '丰润区', 74, 0, 3, NULL),
(1151, '乐亭县', 74, 0, 3, NULL),
(1152, '古冶区', 74, 0, 3, NULL),
(1153, '唐海县', 74, 0, 3, NULL),
(1154, '开平区', 74, 0, 3, NULL),
(1155, '滦南县', 74, 0, 3, NULL),
(1156, '滦县', 74, 0, 3, NULL),
(1157, '玉田县', 74, 0, 3, NULL),
(1158, '路北区', 74, 0, 3, NULL),
(1159, '路南区', 74, 0, 3, NULL),
(1160, '迁安市', 74, 0, 3, NULL),
(1161, '迁西县', 74, 0, 3, NULL),
(1162, '遵化市', 74, 0, 3, NULL),
(1163, '北戴河区', 75, 0, 3, NULL),
(1164, '卢龙县', 75, 0, 3, NULL),
(1165, '山海关区', 75, 0, 3, NULL),
(1166, '抚宁县', 75, 0, 3, NULL),
(1167, '昌黎县', 75, 0, 3, NULL),
(1168, '海港区', 75, 0, 3, NULL),
(1169, '青龙满族自治县', 75, 0, 3, NULL),
(1170, '丛台区', 76, 0, 3, NULL),
(1171, '临漳县', 76, 0, 3, NULL),
(1172, '复兴区', 76, 0, 3, NULL),
(1173, '大名县', 76, 0, 3, NULL),
(1174, '峰峰矿区', 76, 0, 3, NULL),
(1175, '广平县', 76, 0, 3, NULL),
(1176, '成安县', 76, 0, 3, NULL),
(1177, '曲周县', 76, 0, 3, NULL),
(1178, '武安市', 76, 0, 3, NULL),
(1179, '永年县', 76, 0, 3, NULL),
(1180, '涉县', 76, 0, 3, NULL),
(1181, '磁县', 76, 0, 3, NULL),
(1182, '肥乡县', 76, 0, 3, NULL),
(1183, '邯山区', 76, 0, 3, NULL),
(1184, '邯郸县', 76, 0, 3, NULL),
(1185, '邱县', 76, 0, 3, NULL),
(1186, '馆陶县', 76, 0, 3, NULL),
(1187, '魏县', 76, 0, 3, NULL),
(1188, '鸡泽县', 76, 0, 3, NULL),
(1189, '临城县', 77, 0, 3, NULL),
(1190, '临西县', 77, 0, 3, NULL),
(1191, '任县', 77, 0, 3, NULL),
(1192, '内丘县', 77, 0, 3, NULL),
(1193, '南和县', 77, 0, 3, NULL),
(1194, '南宫市', 77, 0, 3, NULL),
(1195, '威县', 77, 0, 3, NULL),
(1196, '宁晋县', 77, 0, 3, NULL),
(1197, '巨鹿县', 77, 0, 3, NULL),
(1198, '平乡县', 77, 0, 3, NULL),
(1199, '广宗县', 77, 0, 3, NULL),
(1200, '新河县', 77, 0, 3, NULL),
(1201, '柏乡县', 77, 0, 3, NULL),
(1202, '桥东区', 77, 0, 3, NULL),
(1203, '桥西区', 77, 0, 3, NULL),
(1204, '沙河市', 77, 0, 3, NULL),
(1205, '清河县', 77, 0, 3, NULL),
(1206, '邢台县', 77, 0, 3, NULL),
(1207, '隆尧县', 77, 0, 3, NULL),
(1208, '北市区', 78, 0, 3, NULL),
(1209, '南市区', 78, 0, 3, NULL),
(1210, '博野县', 78, 0, 3, NULL),
(1211, '唐县', 78, 0, 3, NULL),
(1212, '安国市', 78, 0, 3, NULL),
(1213, '安新县', 78, 0, 3, NULL),
(1214, '定兴县', 78, 0, 3, NULL),
(1215, '定州市', 78, 0, 3, NULL),
(1216, '容城县', 78, 0, 3, NULL),
(1217, '徐水县', 78, 0, 3, NULL),
(1218, '新市区', 78, 0, 3, NULL),
(1219, '易县', 78, 0, 3, NULL),
(1220, '曲阳县', 78, 0, 3, NULL),
(1221, '望都县', 78, 0, 3, NULL),
(1222, '涞水县', 78, 0, 3, NULL),
(1223, '涞源县', 78, 0, 3, NULL),
(1224, '涿州市', 78, 0, 3, NULL),
(1225, '清苑县', 78, 0, 3, NULL),
(1226, '满城县', 78, 0, 3, NULL),
(1227, '蠡县', 78, 0, 3, NULL),
(1228, '阜平县', 78, 0, 3, NULL),
(1229, '雄县', 78, 0, 3, NULL),
(1230, '顺平县', 78, 0, 3, NULL),
(1231, '高碑店市', 78, 0, 3, NULL),
(1232, '高阳县', 78, 0, 3, NULL),
(1233, '万全县', 79, 0, 3, NULL),
(1234, '下花园区', 79, 0, 3, NULL),
(1235, '宣化区', 79, 0, 3, NULL),
(1236, '宣化县', 79, 0, 3, NULL),
(1237, '尚义县', 79, 0, 3, NULL),
(1238, '崇礼县', 79, 0, 3, NULL),
(1239, '康保县', 79, 0, 3, NULL),
(1240, '张北县', 79, 0, 3, NULL),
(1241, '怀安县', 79, 0, 3, NULL),
(1242, '怀来县', 79, 0, 3, NULL),
(1243, '桥东区', 79, 0, 3, NULL),
(1244, '桥西区', 79, 0, 3, NULL),
(1245, '沽源县', 79, 0, 3, NULL),
(1246, '涿鹿县', 79, 0, 3, NULL),
(1247, '蔚县', 79, 0, 3, NULL),
(1248, '赤城县', 79, 0, 3, NULL),
(1249, '阳原县', 79, 0, 3, NULL),
(1250, '丰宁满族自治县', 80, 0, 3, NULL),
(1251, '兴隆县', 80, 0, 3, NULL),
(1252, '双桥区', 80, 0, 3, NULL),
(1253, '双滦区', 80, 0, 3, NULL),
(1254, '围场满族蒙古族自治县', 80, 0, 3, NULL),
(1255, '宽城满族自治县', 80, 0, 3, NULL),
(1256, '平泉县', 80, 0, 3, NULL),
(1257, '承德县', 80, 0, 3, NULL),
(1258, '滦平县', 80, 0, 3, NULL),
(1259, '隆化县', 80, 0, 3, NULL),
(1260, '鹰手营子矿区', 80, 0, 3, NULL),
(1261, '冀州市', 81, 0, 3, NULL),
(1262, '安平县', 81, 0, 3, NULL),
(1263, '故城县', 81, 0, 3, NULL),
(1264, '景县', 81, 0, 3, NULL),
(1265, '枣强县', 81, 0, 3, NULL),
(1266, '桃城区', 81, 0, 3, NULL),
(1267, '武强县', 81, 0, 3, NULL),
(1268, '武邑县', 81, 0, 3, NULL),
(1269, '深州市', 81, 0, 3, NULL),
(1270, '阜城县', 81, 0, 3, NULL),
(1271, '饶阳县', 81, 0, 3, NULL),
(1272, '三河市', 82, 0, 3, NULL),
(1273, '固安县', 82, 0, 3, NULL),
(1274, '大厂回族自治县', 82, 0, 3, NULL),
(1275, '大城县', 82, 0, 3, NULL),
(1276, '安次区', 82, 0, 3, NULL),
(1277, '广阳区', 82, 0, 3, NULL),
(1278, '文安县', 82, 0, 3, NULL),
(1279, '永清县', 82, 0, 3, NULL),
(1280, '霸州市', 82, 0, 3, NULL),
(1281, '香河县', 82, 0, 3, NULL),
(1282, '东光县', 83, 0, 3, NULL),
(1283, '任丘市', 83, 0, 3, NULL),
(1284, '南皮县', 83, 0, 3, NULL),
(1285, '吴桥县', 83, 0, 3, NULL),
(1286, '孟村回族自治县', 83, 0, 3, NULL),
(1287, '新华区', 83, 0, 3, NULL),
(1288, '沧县', 83, 0, 3, NULL),
(1289, '河间市', 83, 0, 3, NULL),
(1290, '泊头市', 83, 0, 3, NULL),
(1291, '海兴县', 83, 0, 3, NULL),
(1292, '献县', 83, 0, 3, NULL),
(1293, '盐山县', 83, 0, 3, NULL),
(1294, '肃宁县', 83, 0, 3, NULL),
(1295, '运河区', 83, 0, 3, NULL),
(1296, '青县', 83, 0, 3, NULL),
(1297, '黄骅市', 83, 0, 3, NULL),
(1298, '万柏林区', 84, 0, 3, NULL),
(1299, '古交市', 84, 0, 3, NULL),
(1300, '娄烦县', 84, 0, 3, NULL),
(1301, '小店区', 84, 0, 3, NULL),
(1302, '尖草坪区', 84, 0, 3, NULL),
(1303, '晋源区', 84, 0, 3, NULL),
(1304, '杏花岭区', 84, 0, 3, NULL),
(1305, '清徐县', 84, 0, 3, NULL),
(1306, '迎泽区', 84, 0, 3, NULL),
(1307, '阳曲县', 84, 0, 3, NULL),
(1308, '南郊区', 85, 0, 3, NULL),
(1309, '城区', 85, 0, 3, NULL),
(1310, '大同县', 85, 0, 3, NULL),
(1311, '天镇县', 85, 0, 3, NULL),
(1312, '左云县', 85, 0, 3, NULL),
(1313, '广灵县', 85, 0, 3, NULL),
(1314, '新荣区', 85, 0, 3, NULL),
(1315, '浑源县', 85, 0, 3, NULL),
(1316, '灵丘县', 85, 0, 3, NULL),
(1317, '矿区', 85, 0, 3, NULL),
(1318, '阳高县', 85, 0, 3, NULL),
(1319, '城区', 86, 0, 3, NULL),
(1320, '平定县', 86, 0, 3, NULL),
(1321, '盂县', 86, 0, 3, NULL),
(1322, '矿区', 86, 0, 3, NULL),
(1323, '郊区', 86, 0, 3, NULL),
(1324, '城区', 87, 0, 3, NULL),
(1325, '壶关县', 87, 0, 3, NULL),
(1326, '屯留县', 87, 0, 3, NULL),
(1327, '平顺县', 87, 0, 3, NULL),
(1328, '武乡县', 87, 0, 3, NULL),
(1329, '沁县', 87, 0, 3, NULL),
(1330, '沁源县', 87, 0, 3, NULL),
(1331, '潞城市', 87, 0, 3, NULL),
(1332, '襄垣县', 87, 0, 3, NULL),
(1333, '郊区', 87, 0, 3, NULL),
(1334, '长子县', 87, 0, 3, NULL),
(1335, '长治县', 87, 0, 3, NULL),
(1336, '黎城县', 87, 0, 3, NULL),
(1337, '城区', 88, 0, 3, NULL),
(1338, '沁水县', 88, 0, 3, NULL),
(1339, '泽州县', 88, 0, 3, NULL),
(1340, '阳城县', 88, 0, 3, NULL),
(1341, '陵川县', 88, 0, 3, NULL),
(1342, '高平市', 88, 0, 3, NULL),
(1343, '右玉县', 89, 0, 3, NULL),
(1344, '山阴县', 89, 0, 3, NULL),
(1345, '平鲁区', 89, 0, 3, NULL),
(1346, '应县', 89, 0, 3, NULL),
(1347, '怀仁县', 89, 0, 3, NULL),
(1348, '朔城区', 89, 0, 3, NULL),
(1349, '介休市', 90, 0, 3, NULL),
(1350, '和顺县', 90, 0, 3, NULL),
(1351, '太谷县', 90, 0, 3, NULL),
(1352, '寿阳县', 90, 0, 3, NULL),
(1353, '左权县', 90, 0, 3, NULL),
(1354, '平遥县', 90, 0, 3, NULL),
(1355, '昔阳县', 90, 0, 3, NULL),
(1356, '榆次区', 90, 0, 3, NULL),
(1357, '榆社县', 90, 0, 3, NULL),
(1358, '灵石县', 90, 0, 3, NULL),
(1359, '祁县', 90, 0, 3, NULL),
(1360, '万荣县', 91, 0, 3, NULL),
(1361, '临猗县', 91, 0, 3, NULL),
(1362, '垣曲县', 91, 0, 3, NULL),
(1363, '夏县', 91, 0, 3, NULL),
(1364, '平陆县', 91, 0, 3, NULL),
(1365, '新绛县', 91, 0, 3, NULL),
(1366, '永济市', 91, 0, 3, NULL),
(1367, '河津市', 91, 0, 3, NULL),
(1368, '盐湖区', 91, 0, 3, NULL),
(1369, '稷山县', 91, 0, 3, NULL),
(1370, '绛县', 91, 0, 3, NULL),
(1371, '芮城县', 91, 0, 3, NULL),
(1372, '闻喜县', 91, 0, 3, NULL),
(1373, '五台县', 92, 0, 3, NULL),
(1374, '五寨县', 92, 0, 3, NULL),
(1375, '代县', 92, 0, 3, NULL),
(1376, '保德县', 92, 0, 3, NULL),
(1377, '偏关县', 92, 0, 3, NULL),
(1378, '原平市', 92, 0, 3, NULL),
(1379, '宁武县', 92, 0, 3, NULL),
(1380, '定襄县', 92, 0, 3, NULL),
(1381, '岢岚县', 92, 0, 3, NULL),
(1382, '忻府区', 92, 0, 3, NULL),
(1383, '河曲县', 92, 0, 3, NULL),
(1384, '神池县', 92, 0, 3, NULL),
(1385, '繁峙县', 92, 0, 3, NULL),
(1386, '静乐县', 92, 0, 3, NULL),
(1387, '乡宁县', 93, 0, 3, NULL),
(1388, '侯马市', 93, 0, 3, NULL),
(1389, '古县', 93, 0, 3, NULL),
(1390, '吉县', 93, 0, 3, NULL),
(1391, '大宁县', 93, 0, 3, NULL),
(1392, '安泽县', 93, 0, 3, NULL),
(1393, '尧都区', 93, 0, 3, NULL),
(1394, '曲沃县', 93, 0, 3, NULL),
(1395, '永和县', 93, 0, 3, NULL),
(1396, '汾西县', 93, 0, 3, NULL),
(1397, '洪洞县', 93, 0, 3, NULL),
(1398, '浮山县', 93, 0, 3, NULL),
(1399, '翼城县', 93, 0, 3, NULL),
(1400, '蒲县', 93, 0, 3, NULL),
(1401, '襄汾县', 93, 0, 3, NULL),
(1402, '隰县', 93, 0, 3, NULL),
(1403, '霍州市', 93, 0, 3, NULL),
(1404, '中阳县', 94, 0, 3, NULL),
(1405, '临县', 94, 0, 3, NULL),
(1406, '交口县', 94, 0, 3, NULL),
(1407, '交城县', 94, 0, 3, NULL),
(1408, '兴县', 94, 0, 3, NULL),
(1409, '孝义市', 94, 0, 3, NULL),
(1410, '岚县', 94, 0, 3, NULL),
(1411, '文水县', 94, 0, 3, NULL),
(1412, '方山县', 94, 0, 3, NULL),
(1413, '柳林县', 94, 0, 3, NULL),
(1414, '汾阳市', 94, 0, 3, NULL),
(1415, '石楼县', 94, 0, 3, NULL),
(1416, '离石区', 94, 0, 3, NULL),
(1417, '和林格尔县', 95, 0, 3, NULL),
(1418, '回民区', 95, 0, 3, NULL),
(1419, '土默特左旗', 95, 0, 3, NULL),
(1420, '托克托县', 95, 0, 3, NULL),
(1421, '新城区', 95, 0, 3, NULL),
(1422, '武川县', 95, 0, 3, NULL),
(1423, '清水河县', 95, 0, 3, NULL),
(1424, '玉泉区', 95, 0, 3, NULL),
(1425, '赛罕区', 95, 0, 3, NULL),
(1426, '东河区', 96, 0, 3, NULL),
(1427, '九原区', 96, 0, 3, NULL),
(1428, '固阳县', 96, 0, 3, NULL),
(1429, '土默特右旗', 96, 0, 3, NULL),
(1430, '昆都仑区', 96, 0, 3, NULL),
(1431, '白云矿区', 96, 0, 3, NULL),
(1432, '石拐区', 96, 0, 3, NULL),
(1433, '达尔罕茂明安联合旗', 96, 0, 3, NULL),
(1434, '青山区', 96, 0, 3, NULL),
(1435, '乌达区', 97, 0, 3, NULL),
(1436, '海勃湾区', 97, 0, 3, NULL),
(1437, '海南区', 97, 0, 3, NULL),
(1438, '元宝山区', 98, 0, 3, NULL),
(1439, '克什克腾旗', 98, 0, 3, NULL),
(1440, '喀喇沁旗', 98, 0, 3, NULL),
(1441, '宁城县', 98, 0, 3, NULL),
(1442, '巴林右旗', 98, 0, 3, NULL),
(1443, '巴林左旗', 98, 0, 3, NULL),
(1444, '敖汉旗', 98, 0, 3, NULL),
(1445, '松山区', 98, 0, 3, NULL),
(1446, '林西县', 98, 0, 3, NULL),
(1447, '红山区', 98, 0, 3, NULL),
(1448, '翁牛特旗', 98, 0, 3, NULL),
(1449, '阿鲁科尔沁旗', 98, 0, 3, NULL),
(1450, '奈曼旗', 99, 0, 3, NULL),
(1451, '库伦旗', 99, 0, 3, NULL),
(1452, '开鲁县', 99, 0, 3, NULL),
(1453, '扎鲁特旗', 99, 0, 3, NULL),
(1454, '科尔沁区', 99, 0, 3, NULL),
(1455, '科尔沁左翼中旗', 99, 0, 3, NULL),
(1456, '科尔沁左翼后旗', 99, 0, 3, NULL),
(1457, '霍林郭勒市', 99, 0, 3, NULL),
(1458, '东胜区', 100, 0, 3, NULL),
(1459, '乌审旗', 100, 0, 3, NULL),
(1460, '伊金霍洛旗', 100, 0, 3, NULL),
(1461, '准格尔旗', 100, 0, 3, NULL),
(1462, '杭锦旗', 100, 0, 3, NULL),
(1463, '达拉特旗', 100, 0, 3, NULL),
(1464, '鄂东胜区', 100, 0, 3, NULL),
(1465, '鄂托克前旗', 100, 0, 3, NULL),
(1466, '鄂托克旗', 100, 0, 3, NULL),
(1467, '扎兰屯市', 101, 0, 3, NULL),
(1468, '新巴尔虎右旗', 101, 0, 3, NULL),
(1469, '新巴尔虎左旗', 101, 0, 3, NULL),
(1470, '根河市', 101, 0, 3, NULL),
(1471, '海拉尔区', 101, 0, 3, NULL),
(1472, '满洲里市', 101, 0, 3, NULL),
(1473, '牙克石市', 101, 0, 3, NULL),
(1474, '莫力达瓦达斡尔族自治旗', 101, 0, 3, NULL),
(1475, '鄂伦春自治旗', 101, 0, 3, NULL),
(1476, '鄂温克族自治旗', 101, 0, 3, NULL),
(1477, '阿荣旗', 101, 0, 3, NULL),
(1478, '陈巴尔虎旗', 101, 0, 3, NULL),
(1479, '额尔古纳市', 101, 0, 3, NULL),
(1480, '临河区', 102, 0, 3, NULL),
(1481, '乌拉特中旗', 102, 0, 3, NULL),
(1482, '乌拉特前旗', 102, 0, 3, NULL),
(1483, '乌拉特后旗', 102, 0, 3, NULL),
(1484, '五原县', 102, 0, 3, NULL),
(1485, '杭锦后旗', 102, 0, 3, NULL),
(1486, '磴口县', 102, 0, 3, NULL),
(1487, '丰镇市', 103, 0, 3, NULL),
(1488, '兴和县', 103, 0, 3, NULL),
(1489, '凉城县', 103, 0, 3, NULL),
(1490, '化德县', 103, 0, 3, NULL),
(1491, '卓资县', 103, 0, 3, NULL),
(1492, '商都县', 103, 0, 3, NULL),
(1493, '四子王旗', 103, 0, 3, NULL),
(1494, '察哈尔右翼中旗', 103, 0, 3, NULL),
(1495, '察哈尔右翼前旗', 103, 0, 3, NULL),
(1496, '察哈尔右翼后旗', 103, 0, 3, NULL),
(1497, '集宁区', 103, 0, 3, NULL),
(1498, '乌兰浩特市', 104, 0, 3, NULL),
(1499, '扎赉特旗', 104, 0, 3, NULL),
(1500, '科尔沁右翼中旗', 104, 0, 3, NULL),
(1501, '科尔沁右翼前旗', 104, 0, 3, NULL),
(1502, '突泉县', 104, 0, 3, NULL),
(1503, '阿尔山市', 104, 0, 3, NULL),
(1504, '东乌珠穆沁旗', 105, 0, 3, NULL),
(1505, '二连浩特市', 105, 0, 3, NULL),
(1506, '多伦县', 105, 0, 3, NULL),
(1507, '太仆寺旗', 105, 0, 3, NULL),
(1508, '正蓝旗', 105, 0, 3, NULL),
(1509, '正镶白旗', 105, 0, 3, NULL),
(1510, '苏尼特右旗', 105, 0, 3, NULL),
(1511, '苏尼特左旗', 105, 0, 3, NULL),
(1512, '西乌珠穆沁旗', 105, 0, 3, NULL),
(1513, '锡林浩特市', 105, 0, 3, NULL),
(1514, '镶黄旗', 105, 0, 3, NULL),
(1515, '阿巴嘎旗', 105, 0, 3, NULL),
(1516, '阿拉善右旗', 106, 0, 3, NULL),
(1517, '阿拉善左旗', 106, 0, 3, NULL),
(1518, '额济纳旗', 106, 0, 3, NULL),
(1519, '东陵区', 107, 0, 3, NULL),
(1520, '于洪区', 107, 0, 3, NULL),
(1521, '和平区', 107, 0, 3, NULL),
(1522, '大东区', 107, 0, 3, NULL),
(1523, '康平县', 107, 0, 3, NULL),
(1524, '新民市', 107, 0, 3, NULL),
(1525, '沈北新区', 107, 0, 3, NULL),
(1526, '沈河区', 107, 0, 3, NULL),
(1527, '法库县', 107, 0, 3, NULL),
(1528, '皇姑区', 107, 0, 3, NULL),
(1529, '苏家屯区', 107, 0, 3, NULL),
(1530, '辽中县', 107, 0, 3, NULL),
(1531, '铁西区', 107, 0, 3, NULL),
(1532, '中山区', 108, 0, 3, NULL),
(1533, '庄河市', 108, 0, 3, NULL),
(1534, '旅顺口区', 108, 0, 3, NULL),
(1535, '普兰店市', 108, 0, 3, NULL),
(1536, '沙河口区', 108, 0, 3, NULL),
(1537, '瓦房店市', 108, 0, 3, NULL),
(1538, '甘井子区', 108, 0, 3, NULL),
(1539, '西岗区', 108, 0, 3, NULL),
(1540, '金州区', 108, 0, 3, NULL),
(1541, '长海县', 108, 0, 3, NULL),
(1542, '千山区', 109, 0, 3, NULL),
(1543, '台安县', 109, 0, 3, NULL),
(1544, '岫岩满族自治县', 109, 0, 3, NULL),
(1545, '海城市', 109, 0, 3, NULL),
(1546, '立山区', 109, 0, 3, NULL),
(1547, '铁东区', 109, 0, 3, NULL),
(1548, '铁西区', 109, 0, 3, NULL),
(1549, '东洲区', 110, 0, 3, NULL),
(1550, '抚顺县', 110, 0, 3, NULL),
(1551, '新宾满族自治县', 110, 0, 3, NULL),
(1552, '新抚区', 110, 0, 3, NULL),
(1553, '望花区', 110, 0, 3, NULL),
(1554, '清原满族自治县', 110, 0, 3, NULL),
(1555, '顺城区', 110, 0, 3, NULL),
(1556, '南芬区', 111, 0, 3, NULL),
(1557, '平山区', 111, 0, 3, NULL),
(1558, '明山区', 111, 0, 3, NULL),
(1559, '本溪满族自治县', 111, 0, 3, NULL),
(1560, '桓仁满族自治县', 111, 0, 3, NULL),
(1561, '溪湖区', 111, 0, 3, NULL),
(1562, '东港市', 112, 0, 3, NULL),
(1563, '元宝区', 112, 0, 3, NULL),
(1564, '凤城市', 112, 0, 3, NULL),
(1565, '宽甸满族自治县', 112, 0, 3, NULL),
(1566, '振兴区', 112, 0, 3, NULL),
(1567, '振安区', 112, 0, 3, NULL),
(1568, '义县', 113, 0, 3, NULL),
(1569, '凌河区', 113, 0, 3, NULL),
(1570, '凌海市', 113, 0, 3, NULL),
(1571, '北镇市', 113, 0, 3, NULL),
(1572, '古塔区', 113, 0, 3, NULL),
(1573, '太和区', 113, 0, 3, NULL),
(1574, '黑山县', 113, 0, 3, NULL),
(1575, '大石桥市', 114, 0, 3, NULL),
(1576, '盖州市', 114, 0, 3, NULL),
(1577, '站前区', 114, 0, 3, NULL),
(1578, '老边区', 114, 0, 3, NULL),
(1579, '西市区', 114, 0, 3, NULL),
(1580, '鲅鱼圈区', 114, 0, 3, NULL),
(1581, '太平区', 115, 0, 3, NULL),
(1582, '彰武县', 115, 0, 3, NULL),
(1583, '新邱区', 115, 0, 3, NULL),
(1584, '海州区', 115, 0, 3, NULL),
(1585, '清河门区', 115, 0, 3, NULL),
(1586, '细河区', 115, 0, 3, NULL),
(1587, '蒙古族自治县', 115, 0, 3, NULL),
(1588, '太子河区', 116, 0, 3, NULL),
(1589, '宏伟区', 116, 0, 3, NULL),
(1590, '弓长岭区', 116, 0, 3, NULL),
(1591, '文圣区', 116, 0, 3, NULL),
(1592, '灯塔市', 116, 0, 3, NULL),
(1593, '白塔区', 116, 0, 3, NULL),
(1594, '辽阳县', 116, 0, 3, NULL),
(1595, '兴隆台区', 117, 0, 3, NULL),
(1596, '双台子区', 117, 0, 3, NULL),
(1597, '大洼县', 117, 0, 3, NULL),
(1598, '盘山县', 117, 0, 3, NULL),
(1599, '开原市', 118, 0, 3, NULL),
(1600, '昌图县', 118, 0, 3, NULL),
(1601, '清河区', 118, 0, 3, NULL),
(1602, '西丰县', 118, 0, 3, NULL),
(1603, '调兵山市', 118, 0, 3, NULL),
(1604, '铁岭县', 118, 0, 3, NULL),
(1605, '银州区', 118, 0, 3, NULL),
(1606, '凌源市', 119, 0, 3, NULL),
(1607, '北票市', 119, 0, 3, NULL),
(1608, '双塔区', 119, 0, 3, NULL),
(1609, '喀喇沁左翼蒙古族自治县', 119, 0, 3, NULL),
(1610, '建平县', 119, 0, 3, NULL),
(1611, '朝阳县', 119, 0, 3, NULL),
(1612, '龙城区', 119, 0, 3, NULL),
(1613, '兴城市', 120, 0, 3, NULL),
(1614, '南票区', 120, 0, 3, NULL),
(1615, '建昌县', 120, 0, 3, NULL),
(1616, '绥中县', 120, 0, 3, NULL),
(1617, '连山区', 120, 0, 3, NULL),
(1618, '龙港区', 120, 0, 3, NULL),
(1619, '九台市', 121, 0, 3, NULL),
(1620, '二道区', 121, 0, 3, NULL),
(1621, '农安县', 121, 0, 3, NULL),
(1622, '南关区', 121, 0, 3, NULL),
(1623, '双阳区', 121, 0, 3, NULL),
(1624, '宽城区', 121, 0, 3, NULL),
(1625, '德惠市', 121, 0, 3, NULL),
(1626, '朝阳区', 121, 0, 3, NULL),
(1627, '榆树市', 121, 0, 3, NULL),
(1628, '绿园区', 121, 0, 3, NULL),
(1629, '丰满区', 122, 0, 3, NULL),
(1630, '昌邑区', 122, 0, 3, NULL),
(1631, '桦甸市', 122, 0, 3, NULL),
(1632, '永吉县', 122, 0, 3, NULL),
(1633, '磐石市', 122, 0, 3, NULL),
(1634, '舒兰市', 122, 0, 3, NULL),
(1635, '船营区', 122, 0, 3, NULL),
(1636, '蛟河市', 122, 0, 3, NULL),
(1637, '龙潭区', 122, 0, 3, NULL),
(1638, '伊通满族自治县', 123, 0, 3, NULL),
(1639, '公主岭市', 123, 0, 3, NULL),
(1640, '双辽市', 123, 0, 3, NULL),
(1641, '梨树县', 123, 0, 3, NULL),
(1642, '铁东区', 123, 0, 3, NULL),
(1643, '铁西区', 123, 0, 3, NULL),
(1644, '东丰县', 124, 0, 3, NULL),
(1645, '东辽县', 124, 0, 3, NULL),
(1646, '西安区', 124, 0, 3, NULL),
(1647, '龙山区', 124, 0, 3, NULL),
(1648, '东昌区', 125, 0, 3, NULL),
(1649, '二道江区', 125, 0, 3, NULL),
(1650, '柳河县', 125, 0, 3, NULL),
(1651, '梅河口市', 125, 0, 3, NULL),
(1652, '辉南县', 125, 0, 3, NULL),
(1653, '通化县', 125, 0, 3, NULL),
(1654, '集安市', 125, 0, 3, NULL),
(1655, '临江市', 126, 0, 3, NULL),
(1656, '八道江区', 126, 0, 3, NULL),
(1657, '抚松县', 126, 0, 3, NULL),
(1658, '江源区', 126, 0, 3, NULL),
(1659, '长白朝鲜族自治县', 126, 0, 3, NULL),
(1660, '靖宇县', 126, 0, 3, NULL),
(1661, '干安县', 127, 0, 3, NULL),
(1662, '前郭尔罗斯蒙古族自治县', 127, 0, 3, NULL),
(1663, '宁江区', 127, 0, 3, NULL),
(1664, '扶余县', 127, 0, 3, NULL),
(1665, '长岭县', 127, 0, 3, NULL),
(1666, '大安市', 128, 0, 3, NULL),
(1667, '洮北区', 128, 0, 3, NULL),
(1668, '洮南市', 128, 0, 3, NULL),
(1669, '通榆县', 128, 0, 3, NULL),
(1670, '镇赉县', 128, 0, 3, NULL),
(1671, '和龙市', 129, 0, 3, NULL),
(1672, '图们市', 129, 0, 3, NULL),
(1673, '安图县', 129, 0, 3, NULL),
(1674, '延吉市', 129, 0, 3, NULL),
(1675, '敦化市', 129, 0, 3, NULL),
(1676, '汪清县', 129, 0, 3, NULL),
(1677, '珲春市', 129, 0, 3, NULL),
(1678, '龙井市', 129, 0, 3, NULL),
(1679, '五常市', 130, 0, 3, NULL),
(1680, '依兰县', 130, 0, 3, NULL),
(1681, '南岗区', 130, 0, 3, NULL),
(1682, '双城市', 130, 0, 3, NULL),
(1683, '呼兰区', 130, 0, 3, NULL),
(1684, '哈尔滨市道里区', 130, 0, 3, NULL),
(1685, '宾县', 130, 0, 3, NULL),
(1686, '尚志市', 130, 0, 3, NULL),
(1687, '巴彦县', 130, 0, 3, NULL),
(1688, '平房区', 130, 0, 3, NULL),
(1689, '延寿县', 130, 0, 3, NULL),
(1690, '方正县', 130, 0, 3, NULL),
(1691, '木兰县', 130, 0, 3, NULL),
(1692, '松北区', 130, 0, 3, NULL),
(1693, '通河县', 130, 0, 3, NULL),
(1694, '道外区', 130, 0, 3, NULL),
(1695, '阿城区', 130, 0, 3, NULL),
(1696, '香坊区', 130, 0, 3, NULL),
(1697, '依安县', 131, 0, 3, NULL),
(1698, '克东县', 131, 0, 3, NULL),
(1699, '克山县', 131, 0, 3, NULL),
(1700, '富拉尔基区', 131, 0, 3, NULL),
(1701, '富裕县', 131, 0, 3, NULL),
(1702, '建华区', 131, 0, 3, NULL),
(1703, '拜泉县', 131, 0, 3, NULL),
(1704, '昂昂溪区', 131, 0, 3, NULL),
(1705, '梅里斯达斡尔族区', 131, 0, 3, NULL),
(1706, '泰来县', 131, 0, 3, NULL),
(1707, '甘南县', 131, 0, 3, NULL),
(1708, '碾子山区', 131, 0, 3, NULL),
(1709, '讷河市', 131, 0, 3, NULL),
(1710, '铁锋区', 131, 0, 3, NULL),
(1711, '龙江县', 131, 0, 3, NULL),
(1712, '龙沙区', 131, 0, 3, NULL),
(1713, '城子河区', 132, 0, 3, NULL),
(1714, '密山市', 132, 0, 3, NULL),
(1715, '恒山区', 132, 0, 3, NULL),
(1716, '梨树区', 132, 0, 3, NULL),
(1717, '滴道区', 132, 0, 3, NULL),
(1718, '虎林市', 132, 0, 3, NULL),
(1719, '鸡东县', 132, 0, 3, NULL),
(1720, '鸡冠区', 132, 0, 3, NULL),
(1721, '麻山区', 132, 0, 3, NULL),
(1722, '东山区', 133, 0, 3, NULL),
(1723, '兴安区', 133, 0, 3, NULL),
(1724, '兴山区', 133, 0, 3, NULL),
(1725, '南山区', 133, 0, 3, NULL),
(1726, '向阳区', 133, 0, 3, NULL),
(1727, '工农区', 133, 0, 3, NULL),
(1728, '绥滨县', 133, 0, 3, NULL),
(1729, '萝北县', 133, 0, 3, NULL),
(1730, '友谊县', 134, 0, 3, NULL),
(1731, '四方台区', 134, 0, 3, NULL),
(1732, '宝山区', 134, 0, 3, NULL),
(1733, '宝清县', 134, 0, 3, NULL),
(1734, '尖山区', 134, 0, 3, NULL),
(1735, '岭东区', 134, 0, 3, NULL),
(1736, '集贤县', 134, 0, 3, NULL),
(1737, '饶河县', 134, 0, 3, NULL),
(1738, '大同区', 135, 0, 3, NULL),
(1739, '杜尔伯特蒙古族自治县', 135, 0, 3, NULL),
(1740, '林甸县', 135, 0, 3, NULL),
(1741, '红岗区', 135, 0, 3, NULL),
(1742, '肇州县', 135, 0, 3, NULL),
(1743, '肇源县', 135, 0, 3, NULL),
(1744, '胡路区', 135, 0, 3, NULL),
(1745, '萨尔图区', 135, 0, 3, NULL),
(1746, '龙凤区', 135, 0, 3, NULL),
(1747, '上甘岭区', 136, 0, 3, NULL),
(1748, '乌伊岭区', 136, 0, 3, NULL),
(1749, '乌马河区', 136, 0, 3, NULL),
(1750, '五营区', 136, 0, 3, NULL),
(1751, '伊春区', 136, 0, 3, NULL),
(1752, '南岔区', 136, 0, 3, NULL),
(1753, '友好区', 136, 0, 3, NULL),
(1754, '嘉荫县', 136, 0, 3, NULL),
(1755, '带岭区', 136, 0, 3, NULL),
(1756, '新青区', 136, 0, 3, NULL),
(1757, '汤旺河区', 136, 0, 3, NULL),
(1758, '红星区', 136, 0, 3, NULL),
(1759, '美溪区', 136, 0, 3, NULL),
(1760, '翠峦区', 136, 0, 3, NULL),
(1761, '西林区', 136, 0, 3, NULL),
(1762, '金山屯区', 136, 0, 3, NULL),
(1763, '铁力市', 136, 0, 3, NULL),
(1764, '东风区', 137, 0, 3, NULL),
(1765, '前进区', 137, 0, 3, NULL),
(1766, '同江市', 137, 0, 3, NULL),
(1767, '向阳区', 137, 0, 3, NULL),
(1768, '富锦市', 137, 0, 3, NULL),
(1769, '抚远县', 137, 0, 3, NULL),
(1770, '桦南县', 137, 0, 3, NULL),
(1771, '桦川县', 137, 0, 3, NULL),
(1772, '汤原县', 137, 0, 3, NULL),
(1773, '郊区', 137, 0, 3, NULL),
(1774, '勃利县', 138, 0, 3, NULL),
(1775, '新兴区', 138, 0, 3, NULL),
(1776, '桃山区', 138, 0, 3, NULL),
(1777, '茄子河区', 138, 0, 3, NULL),
(1778, '东宁县', 139, 0, 3, NULL),
(1779, '东安区', 139, 0, 3, NULL),
(1780, '宁安市', 139, 0, 3, NULL),
(1781, '林口县', 139, 0, 3, NULL),
(1782, '海林市', 139, 0, 3, NULL),
(1783, '爱民区', 139, 0, 3, NULL),
(1784, '穆棱市', 139, 0, 3, NULL),
(1785, '绥芬河市', 139, 0, 3, NULL),
(1786, '西安区', 139, 0, 3, NULL),
(1787, '阳明区', 139, 0, 3, NULL),
(1788, '五大连池市', 140, 0, 3, NULL),
(1789, '北安市', 140, 0, 3, NULL),
(1790, '嫩江县', 140, 0, 3, NULL),
(1791, '孙吴县', 140, 0, 3, NULL),
(1792, '爱辉区', 140, 0, 3, NULL),
(1793, '车逊克县', 140, 0, 3, NULL),
(1794, '逊克县', 140, 0, 3, NULL),
(1795, '兰西县', 141, 0, 3, NULL),
(1796, '安达市', 141, 0, 3, NULL),
(1797, '庆安县', 141, 0, 3, NULL),
(1798, '明水县', 141, 0, 3, NULL),
(1799, '望奎县', 141, 0, 3, NULL),
(1800, '海伦市', 141, 0, 3, NULL),
(1801, '绥化市北林区', 141, 0, 3, NULL),
(1802, '绥棱县', 141, 0, 3, NULL),
(1803, '肇东市', 141, 0, 3, NULL),
(1804, '青冈县', 141, 0, 3, NULL),
(1805, '呼玛县', 142, 0, 3, NULL),
(1806, '塔河县', 142, 0, 3, NULL),
(1807, '大兴安岭地区加格达奇区', 142, 0, 3, NULL),
(1808, '大兴安岭地区呼中区', 142, 0, 3, NULL),
(1809, '大兴安岭地区新林区', 142, 0, 3, NULL),
(1810, '大兴安岭地区松岭区', 142, 0, 3, NULL),
(1811, '漠河县', 142, 0, 3, NULL),
(2027, '下关区', 162, 0, 3, NULL),
(2028, '六合区', 162, 0, 3, NULL),
(2029, '建邺区', 162, 0, 3, NULL),
(2030, '栖霞区', 162, 0, 3, NULL),
(2031, '江宁区', 162, 0, 3, NULL),
(2032, '浦口区', 162, 0, 3, NULL),
(2033, '溧水县', 162, 0, 3, NULL),
(2034, '玄武区', 162, 0, 3, NULL),
(2035, '白下区', 162, 0, 3, NULL),
(2036, '秦淮区', 162, 0, 3, NULL),
(2037, '雨花台区', 162, 0, 3, NULL),
(2038, '高淳县', 162, 0, 3, NULL),
(2039, '鼓楼区', 162, 0, 3, NULL),
(2040, '北塘区', 163, 0, 3, NULL),
(2041, '南长区', 163, 0, 3, NULL),
(2042, '宜兴市', 163, 0, 3, NULL),
(2043, '崇安区', 163, 0, 3, NULL),
(2044, '惠山区', 163, 0, 3, NULL),
(2045, '江阴市', 163, 0, 3, NULL),
(2046, '滨湖区', 163, 0, 3, NULL),
(2047, '锡山区', 163, 0, 3, NULL),
(2048, '丰县', 164, 0, 3, NULL),
(2049, '九里区', 164, 0, 3, NULL),
(2050, '云龙区', 164, 0, 3, NULL),
(2051, '新沂市', 164, 0, 3, NULL),
(2052, '沛县', 164, 0, 3, NULL),
(2053, '泉山区', 164, 0, 3, NULL),
(2054, '睢宁县', 164, 0, 3, NULL),
(2055, '贾汪区', 164, 0, 3, NULL),
(2056, '邳州市', 164, 0, 3, NULL),
(2057, '铜山县', 164, 0, 3, NULL),
(2058, '鼓楼区', 164, 0, 3, NULL),
(2059, '天宁区', 165, 0, 3, NULL),
(2060, '戚墅堰区', 165, 0, 3, NULL),
(2061, '新北区', 165, 0, 3, NULL),
(2062, '武进区', 165, 0, 3, NULL),
(2063, '溧阳市', 165, 0, 3, NULL),
(2064, '金坛市', 165, 0, 3, NULL),
(2065, '钟楼区', 165, 0, 3, NULL),
(2066, '吴中区', 166, 0, 3, NULL),
(2067, '吴江市', 166, 0, 3, NULL),
(2068, '太仓市', 166, 0, 3, NULL),
(2069, '常熟市', 166, 0, 3, NULL),
(2070, '平江区', 166, 0, 3, NULL),
(2071, '张家港市', 166, 0, 3, NULL),
(2072, '昆山市', 166, 0, 3, NULL),
(2073, '沧浪区', 166, 0, 3, NULL),
(2074, '相城区', 166, 0, 3, NULL),
(2075, '苏州工业园区', 166, 0, 3, NULL),
(2076, '虎丘区', 166, 0, 3, NULL),
(2077, '金阊区', 166, 0, 3, NULL),
(2078, '启东市', 167, 0, 3, NULL),
(2079, '如东县', 167, 0, 3, NULL),
(2080, '如皋市', 167, 0, 3, NULL),
(2081, '崇川区', 167, 0, 3, NULL),
(2082, '海安县', 167, 0, 3, NULL),
(2083, '海门市', 167, 0, 3, NULL),
(2084, '港闸区', 167, 0, 3, NULL),
(2085, '通州市', 167, 0, 3, NULL),
(2086, '东海县', 168, 0, 3, NULL),
(2087, '新浦区', 168, 0, 3, NULL),
(2088, '海州区', 168, 0, 3, NULL),
(2089, '灌云县', 168, 0, 3, NULL),
(2090, '灌南县', 168, 0, 3, NULL),
(2091, '赣榆县', 168, 0, 3, NULL),
(2092, '连云区', 168, 0, 3, NULL),
(2093, '楚州区', 169, 0, 3, NULL),
(2094, '洪泽县', 169, 0, 3, NULL),
(2095, '涟水县', 169, 0, 3, NULL),
(2096, '淮阴区', 169, 0, 3, NULL),
(2097, '清河区', 169, 0, 3, NULL),
(2098, '清浦区', 169, 0, 3, NULL),
(2099, '盱眙县', 169, 0, 3, NULL),
(2100, '金湖县', 169, 0, 3, NULL),
(2101, '东台市', 170, 0, 3, NULL),
(2102, '亭湖区', 170, 0, 3, NULL),
(2103, '响水县', 170, 0, 3, NULL),
(2104, '大丰市', 170, 0, 3, NULL),
(2105, '射阳县', 170, 0, 3, NULL),
(2106, '建湖县', 170, 0, 3, NULL),
(2107, '滨海县', 170, 0, 3, NULL),
(2108, '盐都区', 170, 0, 3, NULL),
(2109, '阜宁县', 170, 0, 3, NULL),
(2110, '仪征市', 171, 0, 3, NULL),
(2111, '宝应县', 171, 0, 3, NULL),
(2112, '广陵区', 171, 0, 3, NULL),
(2113, '江都市', 171, 0, 3, NULL),
(2114, '维扬区', 171, 0, 3, NULL),
(2115, '邗江区', 171, 0, 3, NULL),
(2116, '高邮市', 171, 0, 3, NULL),
(2117, '丹徒区', 172, 0, 3, NULL),
(2118, '丹阳市', 172, 0, 3, NULL),
(2119, '京口区', 172, 0, 3, NULL),
(2120, '句容市', 172, 0, 3, NULL),
(2121, '扬中市', 172, 0, 3, NULL),
(2122, '润州区', 172, 0, 3, NULL),
(2123, '兴化市', 173, 0, 3, NULL),
(2124, '姜堰市', 173, 0, 3, NULL),
(2125, '泰兴市', 173, 0, 3, NULL),
(2126, '海陵区', 173, 0, 3, NULL),
(2127, '靖江市', 173, 0, 3, NULL),
(2128, '高港区', 173, 0, 3, NULL),
(2129, '宿城区', 174, 0, 3, NULL),
(2130, '宿豫区', 174, 0, 3, NULL),
(2131, '沭阳县', 174, 0, 3, NULL),
(2132, '泗洪县', 174, 0, 3, NULL),
(2133, '泗阳县', 174, 0, 3, NULL),
(2134, '上城区', 175, 0, 3, NULL),
(2135, '下城区', 175, 0, 3, NULL),
(2136, '临安市', 175, 0, 3, NULL),
(2137, '余杭区', 175, 0, 3, NULL),
(2138, '富阳市', 175, 0, 3, NULL),
(2139, '建德市', 175, 0, 3, NULL),
(2140, '拱墅区', 175, 0, 3, NULL),
(2141, '桐庐县', 175, 0, 3, NULL),
(2142, '江干区', 175, 0, 3, NULL),
(2143, '淳安县', 175, 0, 3, NULL),
(2144, '滨江区', 175, 0, 3, NULL),
(2145, '萧山区', 175, 0, 3, NULL),
(2146, '西湖区', 175, 0, 3, NULL),
(2147, '余姚市', 176, 0, 3, NULL),
(2148, '北仑区', 176, 0, 3, NULL),
(2149, '奉化市', 176, 0, 3, NULL),
(2150, '宁海县', 176, 0, 3, NULL),
(2151, '慈溪市', 176, 0, 3, NULL),
(2152, '江东区', 176, 0, 3, NULL),
(2153, '江北区', 176, 0, 3, NULL),
(2154, '海曙区', 176, 0, 3, NULL),
(2155, '象山县', 176, 0, 3, NULL),
(2156, '鄞州区', 176, 0, 3, NULL),
(2157, '镇海区', 176, 0, 3, NULL),
(2158, '乐清市', 177, 0, 3, NULL),
(2159, '平阳县', 177, 0, 3, NULL),
(2160, '文成县', 177, 0, 3, NULL),
(2161, '永嘉县', 177, 0, 3, NULL),
(2162, '泰顺县', 177, 0, 3, NULL),
(2163, '洞头县', 177, 0, 3, NULL),
(2164, '瑞安市', 177, 0, 3, NULL),
(2165, '瓯海区', 177, 0, 3, NULL),
(2166, '苍南县', 177, 0, 3, NULL),
(2167, '鹿城区', 177, 0, 3, NULL),
(2168, '龙湾区', 177, 0, 3, NULL),
(2169, '南湖区', 178, 0, 3, NULL),
(2170, '嘉善县', 178, 0, 3, NULL),
(2171, '平湖市', 178, 0, 3, NULL),
(2172, '桐乡市', 178, 0, 3, NULL),
(2173, '海宁市', 178, 0, 3, NULL),
(2174, '海盐县', 178, 0, 3, NULL),
(2175, '秀洲区', 178, 0, 3, NULL),
(2176, '南浔区', 179, 0, 3, NULL),
(2177, '吴兴区', 179, 0, 3, NULL),
(2178, '安吉县', 179, 0, 3, NULL),
(2179, '德清县', 179, 0, 3, NULL),
(2180, '长兴县', 179, 0, 3, NULL),
(2181, '上虞市', 180, 0, 3, NULL),
(2182, '嵊州市', 180, 0, 3, NULL),
(2183, '新昌县', 180, 0, 3, NULL),
(2184, '绍兴县', 180, 0, 3, NULL),
(2185, '诸暨市', 180, 0, 3, NULL),
(2186, '越城区', 180, 0, 3, NULL),
(2187, '定海区', 181, 0, 3, NULL),
(2188, '岱山县', 181, 0, 3, NULL),
(2189, '嵊泗县', 181, 0, 3, NULL),
(2190, '普陀区', 181, 0, 3, NULL),
(2191, '常山县', 182, 0, 3, NULL),
(2192, '开化县', 182, 0, 3, NULL),
(2193, '柯城区', 182, 0, 3, NULL),
(2194, '江山市', 182, 0, 3, NULL),
(2195, '衢江区', 182, 0, 3, NULL),
(2196, '龙游县', 182, 0, 3, NULL),
(2197, '东阳市', 183, 0, 3, NULL),
(2198, '义乌市', 183, 0, 3, NULL),
(2199, '兰溪市', 183, 0, 3, NULL),
(2200, '婺城区', 183, 0, 3, NULL),
(2201, '武义县', 183, 0, 3, NULL),
(2202, '永康市', 183, 0, 3, NULL),
(2203, '浦江县', 183, 0, 3, NULL),
(2204, '磐安县', 183, 0, 3, NULL),
(2205, '金东区', 183, 0, 3, NULL),
(2206, '三门县', 184, 0, 3, NULL),
(2207, '临海市', 184, 0, 3, NULL),
(2208, '仙居县', 184, 0, 3, NULL),
(2209, '天台县', 184, 0, 3, NULL),
(2210, '椒江区', 184, 0, 3, NULL),
(2211, '温岭市', 184, 0, 3, NULL),
(2212, '玉环县', 184, 0, 3, NULL),
(2213, '路桥区', 184, 0, 3, NULL),
(2214, '黄岩区', 184, 0, 3, NULL),
(2215, '云和县', 185, 0, 3, NULL),
(2216, '庆元县', 185, 0, 3, NULL),
(2217, '景宁畲族自治县', 185, 0, 3, NULL),
(2218, '松阳县', 185, 0, 3, NULL),
(2219, '缙云县', 185, 0, 3, NULL),
(2220, '莲都区', 185, 0, 3, NULL),
(2221, '遂昌县', 185, 0, 3, NULL),
(2222, '青田县', 185, 0, 3, NULL),
(2223, '龙泉市', 185, 0, 3, NULL),
(2224, '包河区', 186, 0, 3, NULL),
(2225, '庐阳区', 186, 0, 3, NULL),
(2226, '瑶海区', 186, 0, 3, NULL),
(2227, '肥东县', 186, 0, 3, NULL),
(2228, '肥西县', 186, 0, 3, NULL),
(2229, '蜀山区', 186, 0, 3, NULL),
(2230, '长丰县', 186, 0, 3, NULL),
(2231, '三山区', 187, 0, 3, NULL),
(2232, '南陵县', 187, 0, 3, NULL),
(2233, '弋江区', 187, 0, 3, NULL),
(2234, '繁昌县', 187, 0, 3, NULL),
(2235, '芜湖县', 187, 0, 3, NULL),
(2236, '镜湖区', 187, 0, 3, NULL),
(2237, '鸠江区', 187, 0, 3, NULL),
(2238, '五河县', 188, 0, 3, NULL),
(2239, '固镇县', 188, 0, 3, NULL),
(2240, '怀远县', 188, 0, 3, NULL),
(2241, '淮上区', 188, 0, 3, NULL),
(2242, '禹会区', 188, 0, 3, NULL),
(2243, '蚌山区', 188, 0, 3, NULL),
(2244, '龙子湖区', 188, 0, 3, NULL),
(2245, '八公山区', 189, 0, 3, NULL),
(2246, '凤台县', 189, 0, 3, NULL),
(2247, '大通区', 189, 0, 3, NULL),
(2248, '潘集区', 189, 0, 3, NULL),
(2249, '田家庵区', 189, 0, 3, NULL),
(2250, '谢家集区', 189, 0, 3, NULL),
(2251, '当涂县', 190, 0, 3, NULL),
(2252, '花山区', 190, 0, 3, NULL),
(2253, '金家庄区', 190, 0, 3, NULL),
(2254, '雨山区', 190, 0, 3, NULL),
(2255, '杜集区', 191, 0, 3, NULL),
(2256, '濉溪县', 191, 0, 3, NULL),
(2257, '烈山区', 191, 0, 3, NULL),
(2258, '相山区', 191, 0, 3, NULL),
(2259, '狮子山区', 192, 0, 3, NULL),
(2260, '郊区', 192, 0, 3, NULL),
(2261, '铜官山区', 192, 0, 3, NULL),
(2262, '铜陵县', 192, 0, 3, NULL),
(2263, '大观区', 193, 0, 3, NULL),
(2264, '太湖县', 193, 0, 3, NULL),
(2265, '宜秀区', 193, 0, 3, NULL),
(2266, '宿松县', 193, 0, 3, NULL),
(2267, '岳西县', 193, 0, 3, NULL),
(2268, '怀宁县', 193, 0, 3, NULL),
(2269, '望江县', 193, 0, 3, NULL),
(2270, '枞阳县', 193, 0, 3, NULL),
(2271, '桐城市', 193, 0, 3, NULL),
(2272, '潜山县', 193, 0, 3, NULL),
(2273, '迎江区', 193, 0, 3, NULL),
(2274, '休宁县', 194, 0, 3, NULL),
(2275, '屯溪区', 194, 0, 3, NULL),
(2276, '徽州区', 194, 0, 3, NULL),
(2277, '歙县', 194, 0, 3, NULL),
(2278, '祁门县', 194, 0, 3, NULL),
(2279, '黄山区', 194, 0, 3, NULL),
(2280, '黟县', 194, 0, 3, NULL),
(2281, '全椒县', 195, 0, 3, NULL),
(2282, '凤阳县', 195, 0, 3, NULL),
(2283, '南谯区', 195, 0, 3, NULL),
(2284, '天长市', 195, 0, 3, NULL),
(2285, '定远县', 195, 0, 3, NULL),
(2286, '明光市', 195, 0, 3, NULL),
(2287, '来安县', 195, 0, 3, NULL),
(2288, '琅玡区', 195, 0, 3, NULL),
(2289, '临泉县', 196, 0, 3, NULL),
(2290, '太和县', 196, 0, 3, NULL),
(2291, '界首市', 196, 0, 3, NULL),
(2292, '阜南县', 196, 0, 3, NULL),
(2293, '颍东区', 196, 0, 3, NULL),
(2294, '颍州区', 196, 0, 3, NULL),
(2295, '颍泉区', 196, 0, 3, NULL),
(2296, '颖上县', 196, 0, 3, NULL),
(2297, '埇桥区', 197, 0, 3, NULL),
(2298, '泗县辖', 197, 0, 3, NULL),
(2299, '灵璧县', 197, 0, 3, NULL),
(2300, '砀山县', 197, 0, 3, NULL),
(2301, '萧县', 197, 0, 3, NULL),
(2302, '含山县', 198, 0, 3, NULL),
(2303, '和县', 198, 0, 3, NULL),
(2304, '居巢区', 198, 0, 3, NULL),
(2305, '庐江县', 198, 0, 3, NULL),
(2306, '无为县', 198, 0, 3, NULL),
(2307, '寿县', 199, 0, 3, NULL),
(2308, '舒城县', 199, 0, 3, NULL),
(2309, '裕安区', 199, 0, 3, NULL),
(2310, '金安区', 199, 0, 3, NULL),
(2311, '金寨县', 199, 0, 3, NULL),
(2312, '霍山县', 199, 0, 3, NULL),
(2313, '霍邱县', 199, 0, 3, NULL),
(2314, '利辛县', 200, 0, 3, NULL),
(2315, '涡阳县', 200, 0, 3, NULL),
(2316, '蒙城县', 200, 0, 3, NULL),
(2317, '谯城区', 200, 0, 3, NULL),
(2318, '东至县', 201, 0, 3, NULL),
(2319, '石台县', 201, 0, 3, NULL),
(2320, '贵池区', 201, 0, 3, NULL),
(2321, '青阳县', 201, 0, 3, NULL),
(2322, '宁国市', 202, 0, 3, NULL),
(2323, '宣州区', 202, 0, 3, NULL),
(2324, '广德县', 202, 0, 3, NULL),
(2325, '旌德县', 202, 0, 3, NULL),
(2326, '泾县', 202, 0, 3, NULL),
(2327, '绩溪县', 202, 0, 3, NULL),
(2328, '郎溪县', 202, 0, 3, NULL),
(2329, '仓山区', 203, 0, 3, NULL),
(2330, '台江区', 203, 0, 3, NULL),
(2331, '平潭县', 203, 0, 3, NULL),
(2332, '晋安区', 203, 0, 3, NULL),
(2333, '永泰县', 203, 0, 3, NULL),
(2334, '福清市', 203, 0, 3, NULL),
(2335, '罗源县', 203, 0, 3, NULL),
(2336, '连江县', 203, 0, 3, NULL),
(2337, '长乐市', 203, 0, 3, NULL),
(2338, '闽侯县', 203, 0, 3, NULL),
(2339, '闽清县', 203, 0, 3, NULL),
(2340, '马尾区', 203, 0, 3, NULL),
(2341, '鼓楼区', 203, 0, 3, NULL),
(2342, '同安区', 204, 0, 3, NULL),
(2343, '思明区', 204, 0, 3, NULL),
(2344, '海沧区', 204, 0, 3, NULL),
(2345, '湖里区', 204, 0, 3, NULL),
(2346, '翔安区', 204, 0, 3, NULL),
(2347, '集美区', 204, 0, 3, NULL),
(2348, '仙游县', 205, 0, 3, NULL),
(2349, '城厢区', 205, 0, 3, NULL),
(2350, '涵江区', 205, 0, 3, NULL),
(2351, '秀屿区', 205, 0, 3, NULL),
(2352, '荔城区', 205, 0, 3, NULL),
(2353, '三元区', 206, 0, 3, NULL),
(2354, '大田县', 206, 0, 3, NULL),
(2355, '宁化县', 206, 0, 3, NULL),
(2356, '将乐县', 206, 0, 3, NULL),
(2357, '尤溪县', 206, 0, 3, NULL),
(2358, '建宁县', 206, 0, 3, NULL),
(2359, '明溪县', 206, 0, 3, NULL),
(2360, '梅列区', 206, 0, 3, NULL),
(2361, '永安市', 206, 0, 3, NULL),
(2362, '沙县', 206, 0, 3, NULL),
(2363, '泰宁县', 206, 0, 3, NULL),
(2364, '清流县', 206, 0, 3, NULL),
(2365, '丰泽区', 207, 0, 3, NULL),
(2366, '南安市', 207, 0, 3, NULL),
(2367, '安溪县', 207, 0, 3, NULL),
(2368, '德化县', 207, 0, 3, NULL),
(2369, '惠安县', 207, 0, 3, NULL),
(2370, '晋江市', 207, 0, 3, NULL),
(2371, '永春县', 207, 0, 3, NULL),
(2372, '泉港区', 207, 0, 3, NULL),
(2373, '洛江区', 207, 0, 3, NULL),
(2374, '石狮市', 207, 0, 3, NULL),
(2375, '金门县', 207, 0, 3, NULL),
(2376, '鲤城区', 207, 0, 3, NULL),
(2377, '东山县', 208, 0, 3, NULL),
(2378, '云霄县', 208, 0, 3, NULL),
(2379, '华安县', 208, 0, 3, NULL),
(2380, '南靖县', 208, 0, 3, NULL),
(2381, '平和县', 208, 0, 3, NULL),
(2382, '漳浦县', 208, 0, 3, NULL),
(2383, '芗城区', 208, 0, 3, NULL),
(2384, '诏安县', 208, 0, 3, NULL),
(2385, '长泰县', 208, 0, 3, NULL),
(2386, '龙文区', 208, 0, 3, NULL),
(2387, '龙海市', 208, 0, 3, NULL),
(2388, '光泽县', 209, 0, 3, NULL),
(2389, '延平区', 209, 0, 3, NULL),
(2390, '建瓯市', 209, 0, 3, NULL),
(2391, '建阳市', 209, 0, 3, NULL),
(2392, '政和县', 209, 0, 3, NULL),
(2393, '松溪县', 209, 0, 3, NULL),
(2394, '武夷山市', 209, 0, 3, NULL),
(2395, '浦城县', 209, 0, 3, NULL),
(2396, '邵武市', 209, 0, 3, NULL),
(2397, '顺昌县', 209, 0, 3, NULL),
(2398, '上杭县', 210, 0, 3, NULL),
(2399, '新罗区', 210, 0, 3, NULL),
(2400, '武平县', 210, 0, 3, NULL),
(2401, '永定县', 210, 0, 3, NULL),
(2402, '漳平市', 210, 0, 3, NULL),
(2403, '连城县', 210, 0, 3, NULL),
(2404, '长汀县', 210, 0, 3, NULL),
(2405, '古田县', 211, 0, 3, NULL),
(2406, '周宁县', 211, 0, 3, NULL),
(2407, '寿宁县', 211, 0, 3, NULL),
(2408, '屏南县', 211, 0, 3, NULL),
(2409, '柘荣县', 211, 0, 3, NULL),
(2410, '福安市', 211, 0, 3, NULL),
(2411, '福鼎市', 211, 0, 3, NULL),
(2412, '蕉城区', 211, 0, 3, NULL),
(2413, '霞浦县', 211, 0, 3, NULL),
(2414, '东湖区', 212, 0, 3, NULL),
(2415, '南昌县', 212, 0, 3, NULL),
(2416, '安义县', 212, 0, 3, NULL),
(2417, '新建县', 212, 0, 3, NULL),
(2418, '湾里区', 212, 0, 3, NULL),
(2419, '西湖区', 212, 0, 3, NULL),
(2420, '进贤县', 212, 0, 3, NULL),
(2421, '青云谱区', 212, 0, 3, NULL),
(2422, '青山湖区', 212, 0, 3, NULL),
(2423, '乐平市', 213, 0, 3, NULL),
(2424, '昌江区', 213, 0, 3, NULL),
(2425, '浮梁县', 213, 0, 3, NULL),
(2426, '珠山区', 213, 0, 3, NULL),
(2427, '上栗县', 214, 0, 3, NULL),
(2428, '安源区', 214, 0, 3, NULL),
(2429, '湘东区', 214, 0, 3, NULL),
(2430, '芦溪县', 214, 0, 3, NULL),
(2431, '莲花县', 214, 0, 3, NULL),
(2432, '九江县', 215, 0, 3, NULL),
(2433, '修水县', 215, 0, 3, NULL),
(2434, '庐山区', 215, 0, 3, NULL),
(2435, '彭泽县', 215, 0, 3, NULL),
(2436, '德安县', 215, 0, 3, NULL),
(2437, '星子县', 215, 0, 3, NULL),
(2438, '武宁县', 215, 0, 3, NULL),
(2439, '永修县', 215, 0, 3, NULL),
(2440, '浔阳区', 215, 0, 3, NULL),
(2441, '湖口县', 215, 0, 3, NULL),
(2442, '瑞昌市', 215, 0, 3, NULL),
(2443, '都昌县', 215, 0, 3, NULL),
(2444, '分宜县', 216, 0, 3, NULL),
(2445, '渝水区', 216, 0, 3, NULL),
(2446, '余江县', 217, 0, 3, NULL),
(2447, '月湖区', 217, 0, 3, NULL),
(2448, '贵溪市', 217, 0, 3, NULL),
(2449, '上犹县', 218, 0, 3, NULL),
(2450, '于都县', 218, 0, 3, NULL),
(2451, '会昌县', 218, 0, 3, NULL),
(2452, '信丰县', 218, 0, 3, NULL),
(2453, '全南县', 218, 0, 3, NULL),
(2454, '兴国县', 218, 0, 3, NULL),
(2455, '南康市', 218, 0, 3, NULL),
(2456, '大余县', 218, 0, 3, NULL),
(2457, '宁都县', 218, 0, 3, NULL),
(2458, '安远县', 218, 0, 3, NULL),
(2459, '定南县', 218, 0, 3, NULL),
(2460, '寻乌县', 218, 0, 3, NULL),
(2461, '崇义县', 218, 0, 3, NULL),
(2462, '瑞金市', 218, 0, 3, NULL),
(2463, '石城县', 218, 0, 3, NULL),
(2464, '章贡区', 218, 0, 3, NULL),
(2465, '赣县', 218, 0, 3, NULL),
(2466, '龙南县', 218, 0, 3, NULL),
(2467, '万安县', 219, 0, 3, NULL),
(2468, '井冈山市', 219, 0, 3, NULL),
(2469, '吉安县', 219, 0, 3, NULL),
(2470, '吉州区', 219, 0, 3, NULL),
(2471, '吉水县', 219, 0, 3, NULL),
(2472, '安福县', 219, 0, 3, NULL),
(2473, '峡江县', 219, 0, 3, NULL);
INSERT INTO `yunpay_area` (`area_id`, `area_name`, `area_parent_id`, `area_sort`, `area_deep`, `area_region`) VALUES
(2474, '新干县', 219, 0, 3, NULL),
(2475, '永丰县', 219, 0, 3, NULL),
(2476, '永新县', 219, 0, 3, NULL),
(2477, '泰和县', 219, 0, 3, NULL),
(2478, '遂川县', 219, 0, 3, NULL),
(2479, '青原区', 219, 0, 3, NULL),
(2480, '万载县', 220, 0, 3, NULL),
(2481, '上高县', 220, 0, 3, NULL),
(2482, '丰城市', 220, 0, 3, NULL),
(2483, '奉新县', 220, 0, 3, NULL),
(2484, '宜丰县', 220, 0, 3, NULL),
(2485, '樟树市', 220, 0, 3, NULL),
(2486, '袁州区', 220, 0, 3, NULL),
(2487, '铜鼓县', 220, 0, 3, NULL),
(2488, '靖安县', 220, 0, 3, NULL),
(2489, '高安市', 220, 0, 3, NULL),
(2490, '东乡县', 221, 0, 3, NULL),
(2491, '临川区', 221, 0, 3, NULL),
(2492, '乐安县', 221, 0, 3, NULL),
(2493, '南丰县', 221, 0, 3, NULL),
(2494, '南城县', 221, 0, 3, NULL),
(2495, '宜黄县', 221, 0, 3, NULL),
(2496, '崇仁县', 221, 0, 3, NULL),
(2497, '广昌县', 221, 0, 3, NULL),
(2498, '资溪县', 221, 0, 3, NULL),
(2499, '金溪县', 221, 0, 3, NULL),
(2500, '黎川县', 221, 0, 3, NULL),
(2501, '万年县', 222, 0, 3, NULL),
(2502, '上饶县', 222, 0, 3, NULL),
(2503, '余干县', 222, 0, 3, NULL),
(2504, '信州区', 222, 0, 3, NULL),
(2505, '婺源县', 222, 0, 3, NULL),
(2506, '广丰县', 222, 0, 3, NULL),
(2507, '弋阳县', 222, 0, 3, NULL),
(2508, '德兴市', 222, 0, 3, NULL),
(2509, '横峰县', 222, 0, 3, NULL),
(2510, '玉山县', 222, 0, 3, NULL),
(2511, '鄱阳县', 222, 0, 3, NULL),
(2512, '铅山县', 222, 0, 3, NULL),
(2513, '历下区', 223, 0, 3, NULL),
(2514, '历城区', 223, 0, 3, NULL),
(2515, '商河县', 223, 0, 3, NULL),
(2516, '天桥区', 223, 0, 3, NULL),
(2517, '市中区', 223, 0, 3, NULL),
(2518, '平阴县', 223, 0, 3, NULL),
(2519, '槐荫区', 223, 0, 3, NULL),
(2520, '济阳县', 223, 0, 3, NULL),
(2521, '章丘市', 223, 0, 3, NULL),
(2522, '长清区', 223, 0, 3, NULL),
(2523, '即墨市', 224, 0, 3, NULL),
(2524, '四方区', 224, 0, 3, NULL),
(2525, '城阳区', 224, 0, 3, NULL),
(2526, '崂山区', 224, 0, 3, NULL),
(2527, '市北区', 224, 0, 3, NULL),
(2528, '市南区', 224, 0, 3, NULL),
(2529, '平度市', 224, 0, 3, NULL),
(2530, '李沧区', 224, 0, 3, NULL),
(2531, '胶南市', 224, 0, 3, NULL),
(2532, '胶州市', 224, 0, 3, NULL),
(2533, '莱西市', 224, 0, 3, NULL),
(2534, '黄岛区', 224, 0, 3, NULL),
(2535, '临淄区', 225, 0, 3, NULL),
(2536, '博山区', 225, 0, 3, NULL),
(2537, '周村区', 225, 0, 3, NULL),
(2538, '张店区', 225, 0, 3, NULL),
(2539, '桓台县', 225, 0, 3, NULL),
(2540, '沂源县', 225, 0, 3, NULL),
(2541, '淄川区', 225, 0, 3, NULL),
(2542, '高青县', 225, 0, 3, NULL),
(2543, '台儿庄区', 226, 0, 3, NULL),
(2544, '山亭区', 226, 0, 3, NULL),
(2545, '峄城区', 226, 0, 3, NULL),
(2546, '市中区', 226, 0, 3, NULL),
(2547, '滕州市', 226, 0, 3, NULL),
(2548, '薛城区', 226, 0, 3, NULL),
(2549, '东营区', 227, 0, 3, NULL),
(2550, '利津县', 227, 0, 3, NULL),
(2551, '垦利县', 227, 0, 3, NULL),
(2552, '广饶县', 227, 0, 3, NULL),
(2553, '河口区', 227, 0, 3, NULL),
(2554, '招远市', 228, 0, 3, NULL),
(2555, '栖霞市', 228, 0, 3, NULL),
(2556, '海阳市', 228, 0, 3, NULL),
(2557, '牟平区', 228, 0, 3, NULL),
(2558, '福山区', 228, 0, 3, NULL),
(2559, '芝罘区', 228, 0, 3, NULL),
(2560, '莱山区', 228, 0, 3, NULL),
(2561, '莱州市', 228, 0, 3, NULL),
(2562, '莱阳市', 228, 0, 3, NULL),
(2563, '蓬莱市', 228, 0, 3, NULL),
(2564, '长岛县', 228, 0, 3, NULL),
(2565, '龙口市', 228, 0, 3, NULL),
(2566, '临朐县', 229, 0, 3, NULL),
(2567, '坊子区', 229, 0, 3, NULL),
(2568, '奎文区', 229, 0, 3, NULL),
(2569, '安丘市', 229, 0, 3, NULL),
(2570, '寒亭区', 229, 0, 3, NULL),
(2571, '寿光市', 229, 0, 3, NULL),
(2572, '昌乐县', 229, 0, 3, NULL),
(2573, '昌邑市', 229, 0, 3, NULL),
(2574, '潍城区', 229, 0, 3, NULL),
(2575, '诸城市', 229, 0, 3, NULL),
(2576, '青州市', 229, 0, 3, NULL),
(2577, '高密市', 229, 0, 3, NULL),
(2578, '任城区', 230, 0, 3, NULL),
(2579, '兖州市', 230, 0, 3, NULL),
(2580, '嘉祥县', 230, 0, 3, NULL),
(2581, '市中区', 230, 0, 3, NULL),
(2582, '微山县', 230, 0, 3, NULL),
(2583, '曲阜市', 230, 0, 3, NULL),
(2584, '梁山县', 230, 0, 3, NULL),
(2585, '汶上县', 230, 0, 3, NULL),
(2586, '泗水县', 230, 0, 3, NULL),
(2587, '邹城市', 230, 0, 3, NULL),
(2588, '金乡县', 230, 0, 3, NULL),
(2589, '鱼台县', 230, 0, 3, NULL),
(2590, '东平县', 231, 0, 3, NULL),
(2591, '宁阳县', 231, 0, 3, NULL),
(2592, '岱岳区', 231, 0, 3, NULL),
(2593, '新泰市', 231, 0, 3, NULL),
(2594, '泰山区', 231, 0, 3, NULL),
(2595, '肥城市', 231, 0, 3, NULL),
(2596, '乳山市', 232, 0, 3, NULL),
(2597, '文登市', 232, 0, 3, NULL),
(2598, '环翠区', 232, 0, 3, NULL),
(2599, '荣成市', 232, 0, 3, NULL),
(2600, '东港区', 233, 0, 3, NULL),
(2601, '五莲县', 233, 0, 3, NULL),
(2602, '岚山区', 233, 0, 3, NULL),
(2603, '莒县', 233, 0, 3, NULL),
(2604, '莱城区', 234, 0, 3, NULL),
(2605, '钢城区', 234, 0, 3, NULL),
(2606, '临沭县', 235, 0, 3, NULL),
(2607, '兰山区', 235, 0, 3, NULL),
(2608, '平邑县', 235, 0, 3, NULL),
(2609, '沂南县', 235, 0, 3, NULL),
(2610, '沂水县', 235, 0, 3, NULL),
(2611, '河东区', 235, 0, 3, NULL),
(2612, '罗庄区', 235, 0, 3, NULL),
(2613, '苍山县', 235, 0, 3, NULL),
(2614, '莒南县', 235, 0, 3, NULL),
(2615, '蒙阴县', 235, 0, 3, NULL),
(2616, '费县', 235, 0, 3, NULL),
(2617, '郯城县', 235, 0, 3, NULL),
(2618, '临邑县', 236, 0, 3, NULL),
(2619, '乐陵市', 236, 0, 3, NULL),
(2620, '夏津县', 236, 0, 3, NULL),
(2621, '宁津县', 236, 0, 3, NULL),
(2622, '平原县', 236, 0, 3, NULL),
(2623, '庆云县', 236, 0, 3, NULL),
(2624, '德城区', 236, 0, 3, NULL),
(2625, '武城县', 236, 0, 3, NULL),
(2626, '禹城市', 236, 0, 3, NULL),
(2627, '陵县', 236, 0, 3, NULL),
(2628, '齐河县', 236, 0, 3, NULL),
(2629, '东昌府区', 237, 0, 3, NULL),
(2630, '东阿县', 237, 0, 3, NULL),
(2631, '临清市', 237, 0, 3, NULL),
(2632, '冠县', 237, 0, 3, NULL),
(2633, '茌平县', 237, 0, 3, NULL),
(2634, '莘县', 237, 0, 3, NULL),
(2635, '阳谷县', 237, 0, 3, NULL),
(2636, '高唐县', 237, 0, 3, NULL),
(2637, '博兴县', 238, 0, 3, NULL),
(2638, '惠民县', 238, 0, 3, NULL),
(2639, '无棣县', 238, 0, 3, NULL),
(2640, '沾化县', 238, 0, 3, NULL),
(2641, '滨城区', 238, 0, 3, NULL),
(2642, '邹平县', 238, 0, 3, NULL),
(2643, '阳信县', 238, 0, 3, NULL),
(2644, '东明县', 239, 0, 3, NULL),
(2645, '单县', 239, 0, 3, NULL),
(2646, '定陶县', 239, 0, 3, NULL),
(2647, '巨野县', 239, 0, 3, NULL),
(2648, '成武县', 239, 0, 3, NULL),
(2649, '曹县', 239, 0, 3, NULL),
(2650, '牡丹区', 239, 0, 3, NULL),
(2651, '郓城县', 239, 0, 3, NULL),
(2652, '鄄城县', 239, 0, 3, NULL),
(2653, '上街区', 240, 0, 3, NULL),
(2654, '中原区', 240, 0, 3, NULL),
(2655, '中牟县', 240, 0, 3, NULL),
(2656, '二七区', 240, 0, 3, NULL),
(2657, '巩义市', 240, 0, 3, NULL),
(2658, '惠济区', 240, 0, 3, NULL),
(2659, '新密市', 240, 0, 3, NULL),
(2660, '新郑市', 240, 0, 3, NULL),
(2661, '登封市', 240, 0, 3, NULL),
(2662, '管城回族区', 240, 0, 3, NULL),
(2663, '荥阳市', 240, 0, 3, NULL),
(2664, '金水区', 240, 0, 3, NULL),
(2665, '兰考县', 241, 0, 3, NULL),
(2666, '尉氏县', 241, 0, 3, NULL),
(2667, '开封县', 241, 0, 3, NULL),
(2668, '杞县', 241, 0, 3, NULL),
(2669, '禹王台区', 241, 0, 3, NULL),
(2670, '通许县', 241, 0, 3, NULL),
(2671, '金明区', 241, 0, 3, NULL),
(2672, '顺河回族区', 241, 0, 3, NULL),
(2673, '鼓楼区', 241, 0, 3, NULL),
(2674, '龙亭区', 241, 0, 3, NULL),
(2675, '伊川县', 242, 0, 3, NULL),
(2676, '偃师市', 242, 0, 3, NULL),
(2677, '吉利区', 242, 0, 3, NULL),
(2678, '孟津县', 242, 0, 3, NULL),
(2679, '宜阳县', 242, 0, 3, NULL),
(2680, '嵩县', 242, 0, 3, NULL),
(2681, '新安县', 242, 0, 3, NULL),
(2682, '栾川县', 242, 0, 3, NULL),
(2683, '汝阳县', 242, 0, 3, NULL),
(2684, '洛宁县', 242, 0, 3, NULL),
(2685, '洛龙区', 242, 0, 3, NULL),
(2686, '涧西区', 242, 0, 3, NULL),
(2687, '瀍河回族区', 242, 0, 3, NULL),
(2688, '老城区', 242, 0, 3, NULL),
(2689, '西工区', 242, 0, 3, NULL),
(2690, '卫东区', 243, 0, 3, NULL),
(2691, '叶县', 243, 0, 3, NULL),
(2692, '宝丰县', 243, 0, 3, NULL),
(2693, '新华区', 243, 0, 3, NULL),
(2694, '汝州市', 243, 0, 3, NULL),
(2695, '湛河区', 243, 0, 3, NULL),
(2696, '石龙区', 243, 0, 3, NULL),
(2697, '舞钢市', 243, 0, 3, NULL),
(2698, '郏县', 243, 0, 3, NULL),
(2699, '鲁山县', 243, 0, 3, NULL),
(2700, '内黄县', 244, 0, 3, NULL),
(2701, '北关区', 244, 0, 3, NULL),
(2702, '安阳县', 244, 0, 3, NULL),
(2703, '文峰区', 244, 0, 3, NULL),
(2704, '林州市', 244, 0, 3, NULL),
(2705, '殷都区', 244, 0, 3, NULL),
(2706, '汤阴县', 244, 0, 3, NULL),
(2707, '滑县', 244, 0, 3, NULL),
(2708, '龙安区', 244, 0, 3, NULL),
(2709, '山城区', 245, 0, 3, NULL),
(2710, '浚县', 245, 0, 3, NULL),
(2711, '淇县', 245, 0, 3, NULL),
(2712, '淇滨区', 245, 0, 3, NULL),
(2713, '鹤山区', 245, 0, 3, NULL),
(2714, '凤泉区', 246, 0, 3, NULL),
(2715, '卫滨区', 246, 0, 3, NULL),
(2716, '卫辉市', 246, 0, 3, NULL),
(2717, '原阳县', 246, 0, 3, NULL),
(2718, '封丘县', 246, 0, 3, NULL),
(2719, '延津县', 246, 0, 3, NULL),
(2720, '新乡县', 246, 0, 3, NULL),
(2721, '牧野区', 246, 0, 3, NULL),
(2722, '红旗区', 246, 0, 3, NULL),
(2723, '获嘉县', 246, 0, 3, NULL),
(2724, '辉县市', 246, 0, 3, NULL),
(2725, '长垣县', 246, 0, 3, NULL),
(2726, '中站区', 247, 0, 3, NULL),
(2727, '修武县', 247, 0, 3, NULL),
(2728, '博爱县', 247, 0, 3, NULL),
(2729, '孟州市', 247, 0, 3, NULL),
(2730, '山阳区', 247, 0, 3, NULL),
(2731, '武陟县', 247, 0, 3, NULL),
(2732, '沁阳市', 247, 0, 3, NULL),
(2733, '温县', 247, 0, 3, NULL),
(2734, '解放区', 247, 0, 3, NULL),
(2735, '马村区', 247, 0, 3, NULL),
(2736, '华龙区', 248, 0, 3, NULL),
(2737, '南乐县', 248, 0, 3, NULL),
(2738, '台前县', 248, 0, 3, NULL),
(2739, '清丰县', 248, 0, 3, NULL),
(2740, '濮阳县', 248, 0, 3, NULL),
(2741, '范县', 248, 0, 3, NULL),
(2742, '禹州市', 249, 0, 3, NULL),
(2743, '襄城县', 249, 0, 3, NULL),
(2744, '许昌县', 249, 0, 3, NULL),
(2745, '鄢陵县', 249, 0, 3, NULL),
(2746, '长葛市', 249, 0, 3, NULL),
(2747, '魏都区', 249, 0, 3, NULL),
(2748, '临颍县', 250, 0, 3, NULL),
(2749, '召陵区', 250, 0, 3, NULL),
(2750, '源汇区', 250, 0, 3, NULL),
(2751, '舞阳县', 250, 0, 3, NULL),
(2752, '郾城区', 250, 0, 3, NULL),
(2753, '义马市', 251, 0, 3, NULL),
(2754, '卢氏县', 251, 0, 3, NULL),
(2755, '渑池县', 251, 0, 3, NULL),
(2756, '湖滨区', 251, 0, 3, NULL),
(2757, '灵宝市', 251, 0, 3, NULL),
(2758, '陕县', 251, 0, 3, NULL),
(2759, '内乡县', 252, 0, 3, NULL),
(2760, '南召县', 252, 0, 3, NULL),
(2761, '卧龙区', 252, 0, 3, NULL),
(2762, '唐河县', 252, 0, 3, NULL),
(2763, '宛城区', 252, 0, 3, NULL),
(2764, '新野县', 252, 0, 3, NULL),
(2765, '方城县', 252, 0, 3, NULL),
(2766, '桐柏县', 252, 0, 3, NULL),
(2767, '淅川县', 252, 0, 3, NULL),
(2768, '社旗县', 252, 0, 3, NULL),
(2769, '西峡县', 252, 0, 3, NULL),
(2770, '邓州市', 252, 0, 3, NULL),
(2771, '镇平县', 252, 0, 3, NULL),
(2772, '夏邑县', 253, 0, 3, NULL),
(2773, '宁陵县', 253, 0, 3, NULL),
(2774, '柘城县', 253, 0, 3, NULL),
(2775, '民权县', 253, 0, 3, NULL),
(2776, '永城市', 253, 0, 3, NULL),
(2777, '睢县', 253, 0, 3, NULL),
(2778, '睢阳区', 253, 0, 3, NULL),
(2779, '粱园区', 253, 0, 3, NULL),
(2780, '虞城县', 253, 0, 3, NULL),
(2781, '光山县', 254, 0, 3, NULL),
(2782, '商城县', 254, 0, 3, NULL),
(2783, '固始县', 254, 0, 3, NULL),
(2784, '平桥区', 254, 0, 3, NULL),
(2785, '息县', 254, 0, 3, NULL),
(2786, '新县', 254, 0, 3, NULL),
(2787, '浉河区', 254, 0, 3, NULL),
(2788, '淮滨县', 254, 0, 3, NULL),
(2789, '潢川县', 254, 0, 3, NULL),
(2790, '罗山县', 254, 0, 3, NULL),
(2791, '商水县', 255, 0, 3, NULL),
(2792, '太康县', 255, 0, 3, NULL),
(2793, '川汇区', 255, 0, 3, NULL),
(2794, '扶沟县', 255, 0, 3, NULL),
(2795, '沈丘县', 255, 0, 3, NULL),
(2796, '淮阳县', 255, 0, 3, NULL),
(2797, '西华县', 255, 0, 3, NULL),
(2798, '郸城县', 255, 0, 3, NULL),
(2799, '项城市', 255, 0, 3, NULL),
(2800, '鹿邑县', 255, 0, 3, NULL),
(2801, '上蔡县', 256, 0, 3, NULL),
(2802, '平舆县', 256, 0, 3, NULL),
(2803, '新蔡县', 256, 0, 3, NULL),
(2804, '正阳县', 256, 0, 3, NULL),
(2805, '汝南县', 256, 0, 3, NULL),
(2806, '泌阳县', 256, 0, 3, NULL),
(2807, '确山县', 256, 0, 3, NULL),
(2808, '西平县', 256, 0, 3, NULL),
(2809, '遂平县', 256, 0, 3, NULL),
(2810, '驿城区', 256, 0, 3, NULL),
(2811, '济源市', 257, 0, 3, NULL),
(2812, '东西湖区', 258, 0, 3, NULL),
(2813, '新洲区', 258, 0, 3, NULL),
(2814, '武昌区', 258, 0, 3, NULL),
(2815, '汉南区', 258, 0, 3, NULL),
(2816, '汉阳区', 258, 0, 3, NULL),
(2817, '江夏区', 258, 0, 3, NULL),
(2818, '江岸区', 258, 0, 3, NULL),
(2819, '江汉区', 258, 0, 3, NULL),
(2820, '洪山区', 258, 0, 3, NULL),
(2821, '硚口区', 258, 0, 3, NULL),
(2822, '蔡甸区', 258, 0, 3, NULL),
(2823, '青山区', 258, 0, 3, NULL),
(2824, '黄陂区', 258, 0, 3, NULL),
(2825, '下陆区', 259, 0, 3, NULL),
(2826, '大冶市', 259, 0, 3, NULL),
(2827, '西塞山区', 259, 0, 3, NULL),
(2828, '铁山区', 259, 0, 3, NULL),
(2829, '阳新县', 259, 0, 3, NULL),
(2830, '黄石港区', 259, 0, 3, NULL),
(2831, '丹江口市', 260, 0, 3, NULL),
(2832, '张湾区', 260, 0, 3, NULL),
(2833, '房县', 260, 0, 3, NULL),
(2834, '竹山县', 260, 0, 3, NULL),
(2835, '竹溪县', 260, 0, 3, NULL),
(2836, '茅箭区', 260, 0, 3, NULL),
(2837, '郧县', 260, 0, 3, NULL),
(2838, '郧西县', 260, 0, 3, NULL),
(2839, '五峰土家族自治县', 261, 0, 3, NULL),
(2840, '伍家岗区', 261, 0, 3, NULL),
(2841, '兴山县', 261, 0, 3, NULL),
(2842, '夷陵区', 261, 0, 3, NULL),
(2843, '宜都市', 261, 0, 3, NULL),
(2844, '当阳市', 261, 0, 3, NULL),
(2845, '枝江市', 261, 0, 3, NULL),
(2846, '点军区', 261, 0, 3, NULL),
(2847, '秭归县', 261, 0, 3, NULL),
(2848, '虢亭区', 261, 0, 3, NULL),
(2849, '西陵区', 261, 0, 3, NULL),
(2850, '远安县', 261, 0, 3, NULL),
(2851, '长阳土家族自治县', 261, 0, 3, NULL),
(2852, '保康县', 262, 0, 3, NULL),
(2853, '南漳县', 262, 0, 3, NULL),
(2854, '宜城市', 262, 0, 3, NULL),
(2855, '枣阳市', 262, 0, 3, NULL),
(2856, '樊城区', 262, 0, 3, NULL),
(2857, '老河口市', 262, 0, 3, NULL),
(2858, '襄城区', 262, 0, 3, NULL),
(2859, '襄阳区', 262, 0, 3, NULL),
(2860, '谷城县', 262, 0, 3, NULL),
(2861, '华容区', 263, 0, 3, NULL),
(2862, '粱子湖', 263, 0, 3, NULL),
(2863, '鄂城区', 263, 0, 3, NULL),
(2864, '东宝区', 264, 0, 3, NULL),
(2865, '京山县', 264, 0, 3, NULL),
(2866, '掇刀区', 264, 0, 3, NULL),
(2867, '沙洋县', 264, 0, 3, NULL),
(2868, '钟祥市', 264, 0, 3, NULL),
(2869, '云梦县', 265, 0, 3, NULL),
(2870, '大悟县', 265, 0, 3, NULL),
(2871, '孝南区', 265, 0, 3, NULL),
(2872, '孝昌县', 265, 0, 3, NULL),
(2873, '安陆市', 265, 0, 3, NULL),
(2874, '应城市', 265, 0, 3, NULL),
(2875, '汉川市', 265, 0, 3, NULL),
(2876, '公安县', 266, 0, 3, NULL),
(2877, '松滋市', 266, 0, 3, NULL),
(2878, '江陵县', 266, 0, 3, NULL),
(2879, '沙市区', 266, 0, 3, NULL),
(2880, '洪湖市', 266, 0, 3, NULL),
(2881, '监利县', 266, 0, 3, NULL),
(2882, '石首市', 266, 0, 3, NULL),
(2883, '荆州区', 266, 0, 3, NULL),
(2884, '团风县', 267, 0, 3, NULL),
(2885, '武穴市', 267, 0, 3, NULL),
(2886, '浠水县', 267, 0, 3, NULL),
(2887, '红安县', 267, 0, 3, NULL),
(2888, '罗田县', 267, 0, 3, NULL),
(2889, '英山县', 267, 0, 3, NULL),
(2890, '蕲春县', 267, 0, 3, NULL),
(2891, '麻城市', 267, 0, 3, NULL),
(2892, '黄州区', 267, 0, 3, NULL),
(2893, '黄梅县', 267, 0, 3, NULL),
(2894, '咸安区', 268, 0, 3, NULL),
(2895, '嘉鱼县', 268, 0, 3, NULL),
(2896, '崇阳县', 268, 0, 3, NULL),
(2897, '赤壁市', 268, 0, 3, NULL),
(2898, '通城县', 268, 0, 3, NULL),
(2899, '通山县', 268, 0, 3, NULL),
(2900, '广水市', 269, 0, 3, NULL),
(2901, '曾都区', 269, 0, 3, NULL),
(2902, '利川市', 270, 0, 3, NULL),
(2903, '咸丰县', 270, 0, 3, NULL),
(2904, '宣恩县', 270, 0, 3, NULL),
(2905, '巴东县', 270, 0, 3, NULL),
(2906, '建始县', 270, 0, 3, NULL),
(2907, '恩施市', 270, 0, 3, NULL),
(2908, '来凤县', 270, 0, 3, NULL),
(2909, '鹤峰县', 270, 0, 3, NULL),
(2910, '仙桃市', 271, 0, 3, NULL),
(2911, '潜江市', 272, 0, 3, NULL),
(2912, '天门市', 273, 0, 3, NULL),
(2913, '神农架林区', 274, 0, 3, NULL),
(2914, '天心区', 275, 0, 3, NULL),
(2915, '宁乡县', 275, 0, 3, NULL),
(2916, '岳麓区', 275, 0, 3, NULL),
(2917, '开福区', 275, 0, 3, NULL),
(2918, '望城县', 275, 0, 3, NULL),
(2919, '浏阳市', 275, 0, 3, NULL),
(2920, '芙蓉区', 275, 0, 3, NULL),
(2921, '长沙县', 275, 0, 3, NULL),
(2922, '雨花区', 275, 0, 3, NULL),
(2923, '天元区', 276, 0, 3, NULL),
(2924, '攸县', 276, 0, 3, NULL),
(2925, '株洲县', 276, 0, 3, NULL),
(2926, '炎陵县', 276, 0, 3, NULL),
(2927, '石峰区', 276, 0, 3, NULL),
(2928, '芦淞区', 276, 0, 3, NULL),
(2929, '茶陵县', 276, 0, 3, NULL),
(2930, '荷塘区', 276, 0, 3, NULL),
(2931, '醴陵市', 276, 0, 3, NULL),
(2932, '岳塘区', 277, 0, 3, NULL),
(2933, '湘乡市', 277, 0, 3, NULL),
(2934, '湘潭县', 277, 0, 3, NULL),
(2935, '雨湖区', 277, 0, 3, NULL),
(2936, '韶山市', 277, 0, 3, NULL),
(2937, '南岳区', 278, 0, 3, NULL),
(2938, '常宁市', 278, 0, 3, NULL),
(2939, '珠晖区', 278, 0, 3, NULL),
(2940, '石鼓区', 278, 0, 3, NULL),
(2941, '祁东县', 278, 0, 3, NULL),
(2942, '耒阳市', 278, 0, 3, NULL),
(2943, '蒸湘区', 278, 0, 3, NULL),
(2944, '衡东县', 278, 0, 3, NULL),
(2945, '衡南县', 278, 0, 3, NULL),
(2946, '衡山县', 278, 0, 3, NULL),
(2947, '衡阳县', 278, 0, 3, NULL),
(2948, '雁峰区', 278, 0, 3, NULL),
(2949, '北塔区', 279, 0, 3, NULL),
(2950, '双清区', 279, 0, 3, NULL),
(2951, '城步苗族自治县', 279, 0, 3, NULL),
(2952, '大祥区', 279, 0, 3, NULL),
(2953, '新宁县', 279, 0, 3, NULL),
(2954, '新邵县', 279, 0, 3, NULL),
(2955, '武冈市', 279, 0, 3, NULL),
(2956, '洞口县', 279, 0, 3, NULL),
(2957, '绥宁县', 279, 0, 3, NULL),
(2958, '邵东县', 279, 0, 3, NULL),
(2959, '邵阳县', 279, 0, 3, NULL),
(2960, '隆回县', 279, 0, 3, NULL),
(2961, '临湘市', 280, 0, 3, NULL),
(2962, '云溪区', 280, 0, 3, NULL),
(2963, '华容县', 280, 0, 3, NULL),
(2964, '君山区', 280, 0, 3, NULL),
(2965, '岳阳县', 280, 0, 3, NULL),
(2966, '岳阳楼区', 280, 0, 3, NULL),
(2967, '平江县', 280, 0, 3, NULL),
(2968, '汨罗市', 280, 0, 3, NULL),
(2969, '湘阴县', 280, 0, 3, NULL),
(2970, '临澧县', 281, 0, 3, NULL),
(2971, '安乡县', 281, 0, 3, NULL),
(2972, '桃源县', 281, 0, 3, NULL),
(2973, '武陵区', 281, 0, 3, NULL),
(2974, '汉寿县', 281, 0, 3, NULL),
(2975, '津市市', 281, 0, 3, NULL),
(2976, '澧县', 281, 0, 3, NULL),
(2977, '石门县', 281, 0, 3, NULL),
(2978, '鼎城区', 281, 0, 3, NULL),
(2979, '慈利县', 282, 0, 3, NULL),
(2980, '桑植县', 282, 0, 3, NULL),
(2981, '武陵源区', 282, 0, 3, NULL),
(2982, '永定区', 282, 0, 3, NULL),
(2983, '南县', 283, 0, 3, NULL),
(2984, '安化县', 283, 0, 3, NULL),
(2985, '桃江县', 283, 0, 3, NULL),
(2986, '沅江市', 283, 0, 3, NULL),
(2987, '资阳区', 283, 0, 3, NULL),
(2988, '赫山区', 283, 0, 3, NULL),
(2989, '临武县', 284, 0, 3, NULL),
(2990, '北湖区', 284, 0, 3, NULL),
(2991, '嘉禾县', 284, 0, 3, NULL),
(2992, '安仁县', 284, 0, 3, NULL),
(2993, '宜章县', 284, 0, 3, NULL),
(2994, '桂东县', 284, 0, 3, NULL),
(2995, '桂阳县', 284, 0, 3, NULL),
(2996, '永兴县', 284, 0, 3, NULL),
(2997, '汝城县', 284, 0, 3, NULL),
(2998, '苏仙区', 284, 0, 3, NULL),
(2999, '资兴市', 284, 0, 3, NULL),
(3000, '东安县', 285, 0, 3, NULL),
(3001, '冷水滩区', 285, 0, 3, NULL),
(3002, '双牌县', 285, 0, 3, NULL),
(3003, '宁远县', 285, 0, 3, NULL),
(3004, '新田县', 285, 0, 3, NULL),
(3005, '江华瑶族自治县', 285, 0, 3, NULL),
(3006, '江永县', 285, 0, 3, NULL),
(3007, '祁阳县', 285, 0, 3, NULL),
(3008, '蓝山县', 285, 0, 3, NULL),
(3009, '道县', 285, 0, 3, NULL),
(3010, '零陵区', 285, 0, 3, NULL),
(3011, '中方县', 286, 0, 3, NULL),
(3012, '会同县', 286, 0, 3, NULL),
(3013, '新晃侗族自治县', 286, 0, 3, NULL),
(3014, '沅陵县', 286, 0, 3, NULL),
(3015, '洪江市/洪江区', 286, 0, 3, NULL),
(3016, '溆浦县', 286, 0, 3, NULL),
(3017, '芷江侗族自治县', 286, 0, 3, NULL),
(3018, '辰溪县', 286, 0, 3, NULL),
(3019, '通道侗族自治县', 286, 0, 3, NULL),
(3020, '靖州苗族侗族自治县', 286, 0, 3, NULL),
(3021, '鹤城区', 286, 0, 3, NULL),
(3022, '麻阳苗族自治县', 286, 0, 3, NULL),
(3023, '冷水江市', 287, 0, 3, NULL),
(3024, '双峰县', 287, 0, 3, NULL),
(3025, '娄星区', 287, 0, 3, NULL),
(3026, '新化县', 287, 0, 3, NULL),
(3027, '涟源市', 287, 0, 3, NULL),
(3028, '保靖县', 288, 0, 3, NULL),
(3029, '凤凰县', 288, 0, 3, NULL),
(3030, '古丈县', 288, 0, 3, NULL),
(3031, '吉首市', 288, 0, 3, NULL),
(3032, '永顺县', 288, 0, 3, NULL),
(3033, '泸溪县', 288, 0, 3, NULL),
(3034, '花垣县', 288, 0, 3, NULL),
(3035, '龙山县', 288, 0, 3, NULL),
(3036, '萝岗区', 289, 0, 3, NULL),
(3037, '南沙区', 289, 0, 3, NULL),
(3038, '从化市', 289, 0, 3, NULL),
(3039, '增城市', 289, 0, 3, NULL),
(3040, '天河区', 289, 0, 3, NULL),
(3041, '海珠区', 289, 0, 3, NULL),
(3042, '番禺区', 289, 0, 3, NULL),
(3043, '白云区', 289, 0, 3, NULL),
(3044, '花都区', 289, 0, 3, NULL),
(3045, '荔湾区', 289, 0, 3, NULL),
(3046, '越秀区', 289, 0, 3, NULL),
(3047, '黄埔区', 289, 0, 3, NULL),
(3048, '乐昌市', 290, 0, 3, NULL),
(3049, '乳源瑶族自治县', 290, 0, 3, NULL),
(3050, '仁化县', 290, 0, 3, NULL),
(3051, '南雄市', 290, 0, 3, NULL),
(3052, '始兴县', 290, 0, 3, NULL),
(3053, '新丰县', 290, 0, 3, NULL),
(3054, '曲江区', 290, 0, 3, NULL),
(3055, '武江区', 290, 0, 3, NULL),
(3056, '浈江区', 290, 0, 3, NULL),
(3057, '翁源县', 290, 0, 3, NULL),
(3058, '南山区', 291, 0, 3, NULL),
(3059, '宝安区', 291, 0, 3, NULL),
(3060, '盐田区', 291, 0, 3, NULL),
(3061, '福田区', 291, 0, 3, NULL),
(3062, '罗湖区', 291, 0, 3, NULL),
(3063, '龙岗区', 291, 0, 3, NULL),
(3064, '斗门区', 292, 0, 3, NULL),
(3065, '金湾区', 292, 0, 3, NULL),
(3066, '香洲区', 292, 0, 3, NULL),
(3067, '南澳县', 293, 0, 3, NULL),
(3068, '潮南区', 293, 0, 3, NULL),
(3069, '潮阳区', 293, 0, 3, NULL),
(3070, '澄海区', 293, 0, 3, NULL),
(3071, '濠江区', 293, 0, 3, NULL),
(3072, '金平区', 293, 0, 3, NULL),
(3073, '龙湖区', 293, 0, 3, NULL),
(3074, '三水区', 294, 0, 3, NULL),
(3075, '南海区', 294, 0, 3, NULL),
(3076, '禅城区', 294, 0, 3, NULL),
(3077, '顺德区', 294, 0, 3, NULL),
(3078, '高明区', 294, 0, 3, NULL),
(3079, '台山市', 295, 0, 3, NULL),
(3080, '开平市', 295, 0, 3, NULL),
(3081, '恩平市', 295, 0, 3, NULL),
(3082, '新会区', 295, 0, 3, NULL),
(3083, '江海区', 295, 0, 3, NULL),
(3084, '蓬江区', 295, 0, 3, NULL),
(3085, '鹤山市', 295, 0, 3, NULL),
(3086, '吴川市', 296, 0, 3, NULL),
(3087, '坡头区', 296, 0, 3, NULL),
(3088, '廉江市', 296, 0, 3, NULL),
(3089, '徐闻县', 296, 0, 3, NULL),
(3090, '赤坎区', 296, 0, 3, NULL),
(3091, '遂溪县', 296, 0, 3, NULL),
(3092, '雷州市', 296, 0, 3, NULL),
(3093, '霞山区', 296, 0, 3, NULL),
(3094, '麻章区', 296, 0, 3, NULL),
(3095, '信宜市', 297, 0, 3, NULL),
(3096, '化州市', 297, 0, 3, NULL),
(3097, '电白县', 297, 0, 3, NULL),
(3098, '茂南区', 297, 0, 3, NULL),
(3099, '茂港区', 297, 0, 3, NULL),
(3100, '高州市', 297, 0, 3, NULL),
(3101, '四会市', 298, 0, 3, NULL),
(3102, '封开县', 298, 0, 3, NULL),
(3103, '广宁县', 298, 0, 3, NULL),
(3104, '德庆县', 298, 0, 3, NULL),
(3105, '怀集县', 298, 0, 3, NULL),
(3106, '端州区', 298, 0, 3, NULL),
(3107, '高要市', 298, 0, 3, NULL),
(3108, '鼎湖区', 298, 0, 3, NULL),
(3109, '博罗县', 299, 0, 3, NULL),
(3110, '惠东县', 299, 0, 3, NULL),
(3111, '惠城区', 299, 0, 3, NULL),
(3112, '惠阳区', 299, 0, 3, NULL),
(3113, '龙门县', 299, 0, 3, NULL),
(3114, '丰顺县', 300, 0, 3, NULL),
(3115, '五华县', 300, 0, 3, NULL),
(3116, '兴宁市', 300, 0, 3, NULL),
(3117, '大埔县', 300, 0, 3, NULL),
(3118, '平远县', 300, 0, 3, NULL),
(3119, '梅县', 300, 0, 3, NULL),
(3120, '梅江区', 300, 0, 3, NULL),
(3121, '蕉岭县', 300, 0, 3, NULL),
(3122, '城区', 301, 0, 3, NULL),
(3123, '海丰县', 301, 0, 3, NULL),
(3124, '陆丰市', 301, 0, 3, NULL),
(3125, '陆河县', 301, 0, 3, NULL),
(3126, '东源县', 302, 0, 3, NULL),
(3127, '和平县', 302, 0, 3, NULL),
(3128, '源城区', 302, 0, 3, NULL),
(3129, '紫金县', 302, 0, 3, NULL),
(3130, '连平县', 302, 0, 3, NULL),
(3131, '龙川县', 302, 0, 3, NULL),
(3132, '江城区', 303, 0, 3, NULL),
(3133, '阳东县', 303, 0, 3, NULL),
(3134, '阳春市', 303, 0, 3, NULL),
(3135, '阳西县', 303, 0, 3, NULL),
(3136, '佛冈县', 304, 0, 3, NULL),
(3137, '清城区', 304, 0, 3, NULL),
(3138, '清新县', 304, 0, 3, NULL),
(3139, '英德市', 304, 0, 3, NULL),
(3140, '连南瑶族自治县', 304, 0, 3, NULL),
(3141, '连山壮族瑶族自治县', 304, 0, 3, NULL),
(3142, '连州市', 304, 0, 3, NULL),
(3143, '阳山县', 304, 0, 3, NULL),
(3144, '东莞市', 305, 0, 3, NULL),
(3145, '中山市', 306, 0, 3, NULL),
(3146, '湘桥区', 307, 0, 3, NULL),
(3147, '潮安县', 307, 0, 3, NULL),
(3148, '饶平县', 307, 0, 3, NULL),
(3149, '惠来县', 308, 0, 3, NULL),
(3150, '揭东县', 308, 0, 3, NULL),
(3151, '揭西县', 308, 0, 3, NULL),
(3152, '普宁市', 308, 0, 3, NULL),
(3153, '榕城区', 308, 0, 3, NULL),
(3154, '云城区', 309, 0, 3, NULL),
(3155, '云安县', 309, 0, 3, NULL),
(3156, '新兴县', 309, 0, 3, NULL),
(3157, '罗定市', 309, 0, 3, NULL),
(3158, '郁南县', 309, 0, 3, NULL),
(3159, '上林县', 310, 0, 3, NULL),
(3160, '兴宁区', 310, 0, 3, NULL),
(3161, '宾阳县', 310, 0, 3, NULL),
(3162, '横县', 310, 0, 3, NULL),
(3163, '武鸣县', 310, 0, 3, NULL),
(3164, '江南区', 310, 0, 3, NULL),
(3165, '良庆区', 310, 0, 3, NULL),
(3166, '西乡塘区', 310, 0, 3, NULL),
(3167, '邕宁区', 310, 0, 3, NULL),
(3168, '隆安县', 310, 0, 3, NULL),
(3169, '青秀区', 310, 0, 3, NULL),
(3170, '马山县', 310, 0, 3, NULL),
(3171, '三江侗族自治县', 311, 0, 3, NULL),
(3172, '城中区', 311, 0, 3, NULL),
(3173, '柳北区', 311, 0, 3, NULL),
(3174, '柳南区', 311, 0, 3, NULL),
(3175, '柳城县', 311, 0, 3, NULL),
(3176, '柳江县', 311, 0, 3, NULL),
(3177, '融安县', 311, 0, 3, NULL),
(3178, '融水苗族自治县', 311, 0, 3, NULL),
(3179, '鱼峰区', 311, 0, 3, NULL),
(3180, '鹿寨县', 311, 0, 3, NULL),
(3181, '七星区', 312, 0, 3, NULL),
(3182, '临桂县', 312, 0, 3, NULL),
(3183, '全州县', 312, 0, 3, NULL),
(3184, '兴安县', 312, 0, 3, NULL),
(3185, '叠彩区', 312, 0, 3, NULL),
(3186, '平乐县', 312, 0, 3, NULL),
(3187, '恭城瑶族自治县', 312, 0, 3, NULL),
(3188, '永福县', 312, 0, 3, NULL),
(3189, '灌阳县', 312, 0, 3, NULL),
(3190, '灵川县', 312, 0, 3, NULL),
(3191, '秀峰区', 312, 0, 3, NULL),
(3192, '荔浦县', 312, 0, 3, NULL),
(3193, '象山区', 312, 0, 3, NULL),
(3194, '资源县', 312, 0, 3, NULL),
(3195, '阳朔县', 312, 0, 3, NULL),
(3196, '雁山区', 312, 0, 3, NULL),
(3197, '龙胜各族自治县', 312, 0, 3, NULL),
(3198, '万秀区', 313, 0, 3, NULL),
(3199, '岑溪市', 313, 0, 3, NULL),
(3200, '苍梧县', 313, 0, 3, NULL),
(3201, '蒙山县', 313, 0, 3, NULL),
(3202, '藤县', 313, 0, 3, NULL),
(3203, '蝶山区', 313, 0, 3, NULL),
(3204, '长洲区', 313, 0, 3, NULL),
(3205, '合浦县', 314, 0, 3, NULL),
(3206, '海城区', 314, 0, 3, NULL),
(3207, '铁山港区', 314, 0, 3, NULL),
(3208, '银海区', 314, 0, 3, NULL),
(3209, '上思县', 315, 0, 3, NULL),
(3210, '东兴市', 315, 0, 3, NULL),
(3211, '港口区', 315, 0, 3, NULL),
(3212, '防城区', 315, 0, 3, NULL),
(3213, '浦北县', 316, 0, 3, NULL),
(3214, '灵山县', 316, 0, 3, NULL),
(3215, '钦北区', 316, 0, 3, NULL),
(3216, '钦南区', 316, 0, 3, NULL),
(3217, '平南县', 317, 0, 3, NULL),
(3218, '桂平市', 317, 0, 3, NULL),
(3219, '港北区', 317, 0, 3, NULL),
(3220, '港南区', 317, 0, 3, NULL),
(3221, '覃塘区', 317, 0, 3, NULL),
(3222, '兴业县', 318, 0, 3, NULL),
(3223, '北流市', 318, 0, 3, NULL),
(3224, '博白县', 318, 0, 3, NULL),
(3225, '容县', 318, 0, 3, NULL),
(3226, '玉州区', 318, 0, 3, NULL),
(3227, '陆川县', 318, 0, 3, NULL),
(3228, '乐业县', 319, 0, 3, NULL),
(3229, '凌云县', 319, 0, 3, NULL),
(3230, '右江区', 319, 0, 3, NULL),
(3231, '平果县', 319, 0, 3, NULL),
(3232, '德保县', 319, 0, 3, NULL),
(3233, '田东县', 319, 0, 3, NULL),
(3234, '田林县', 319, 0, 3, NULL),
(3235, '田阳县', 319, 0, 3, NULL),
(3236, '西林县', 319, 0, 3, NULL),
(3237, '那坡县', 319, 0, 3, NULL),
(3238, '隆林各族自治县', 319, 0, 3, NULL),
(3239, '靖西县', 319, 0, 3, NULL),
(3240, '八步区', 320, 0, 3, NULL),
(3241, '富川瑶族自治县', 320, 0, 3, NULL),
(3242, '昭平县', 320, 0, 3, NULL),
(3243, '钟山县', 320, 0, 3, NULL),
(3244, '东兰县', 321, 0, 3, NULL),
(3245, '凤山县', 321, 0, 3, NULL),
(3246, '南丹县', 321, 0, 3, NULL),
(3247, '大化瑶族自治县', 321, 0, 3, NULL),
(3248, '天峨县', 321, 0, 3, NULL),
(3249, '宜州市', 321, 0, 3, NULL),
(3250, '巴马瑶族自治县', 321, 0, 3, NULL),
(3251, '环江毛南族自治县', 321, 0, 3, NULL),
(3252, '罗城仫佬族自治县', 321, 0, 3, NULL),
(3253, '都安瑶族自治县', 321, 0, 3, NULL),
(3254, '金城江区', 321, 0, 3, NULL),
(3255, '兴宾区', 322, 0, 3, NULL),
(3256, '合山市', 322, 0, 3, NULL),
(3257, '忻城县', 322, 0, 3, NULL),
(3258, '武宣县', 322, 0, 3, NULL),
(3259, '象州县', 322, 0, 3, NULL),
(3260, '金秀瑶族自治县', 322, 0, 3, NULL),
(3261, '凭祥市', 323, 0, 3, NULL),
(3262, '大新县', 323, 0, 3, NULL),
(3263, '天等县', 323, 0, 3, NULL),
(3264, '宁明县', 323, 0, 3, NULL),
(3265, '扶绥县', 323, 0, 3, NULL),
(3266, '江州区', 323, 0, 3, NULL),
(3267, '龙州县', 323, 0, 3, NULL),
(3268, '琼山区', 324, 0, 3, NULL),
(3269, '秀英区', 324, 0, 3, NULL),
(3270, '美兰区', 324, 0, 3, NULL),
(3271, '龙华区', 324, 0, 3, NULL),
(3272, '三亚市', 325, 0, 3, NULL),
(3273, '五指山市', 326, 0, 3, NULL),
(3274, '琼海市', 327, 0, 3, NULL),
(3275, '儋州市', 328, 0, 3, NULL),
(3276, '文昌市', 329, 0, 3, NULL),
(3277, '万宁市', 330, 0, 3, NULL),
(3278, '东方市', 331, 0, 3, NULL),
(3279, '定安县', 332, 0, 3, NULL),
(3280, '屯昌县', 333, 0, 3, NULL),
(3281, '澄迈县', 334, 0, 3, NULL),
(3282, '临高县', 335, 0, 3, NULL),
(3283, '白沙黎族自治县', 336, 0, 3, NULL),
(3284, '昌江黎族自治县', 337, 0, 3, NULL),
(3285, '乐东黎族自治县', 338, 0, 3, NULL),
(3286, '陵水黎族自治县', 339, 0, 3, NULL),
(3287, '保亭黎族苗族自治县', 340, 0, 3, NULL),
(3288, '琼中黎族苗族自治县', 341, 0, 3, NULL),
(4209, '双流县', 385, 0, 3, NULL),
(4210, '大邑县', 385, 0, 3, NULL),
(4211, '崇州市', 385, 0, 3, NULL),
(4212, '彭州市', 385, 0, 3, NULL),
(4213, '成华区', 385, 0, 3, NULL),
(4214, '新津县', 385, 0, 3, NULL),
(4215, '新都区', 385, 0, 3, NULL),
(4216, '武侯区', 385, 0, 3, NULL),
(4217, '温江区', 385, 0, 3, NULL),
(4218, '蒲江县', 385, 0, 3, NULL),
(4219, '邛崃市', 385, 0, 3, NULL),
(4220, '郫县', 385, 0, 3, NULL),
(4221, '都江堰市', 385, 0, 3, NULL),
(4222, '金堂县', 385, 0, 3, NULL),
(4223, '金牛区', 385, 0, 3, NULL),
(4224, '锦江区', 385, 0, 3, NULL),
(4225, '青白江区', 385, 0, 3, NULL),
(4226, '青羊区', 385, 0, 3, NULL),
(4227, '龙泉驿区', 385, 0, 3, NULL),
(4228, '大安区', 386, 0, 3, NULL),
(4229, '富顺县', 386, 0, 3, NULL),
(4230, '沿滩区', 386, 0, 3, NULL),
(4231, '自流井区', 386, 0, 3, NULL),
(4232, '荣县', 386, 0, 3, NULL),
(4233, '贡井区', 386, 0, 3, NULL),
(4234, '东区', 387, 0, 3, NULL),
(4235, '仁和区', 387, 0, 3, NULL),
(4236, '盐边县', 387, 0, 3, NULL),
(4237, '米易县', 387, 0, 3, NULL),
(4238, '西区', 387, 0, 3, NULL),
(4239, '叙永县', 388, 0, 3, NULL),
(4240, '古蔺县', 388, 0, 3, NULL),
(4241, '合江县', 388, 0, 3, NULL),
(4242, '江阳区', 388, 0, 3, NULL),
(4243, '泸县', 388, 0, 3, NULL),
(4244, '纳溪区', 388, 0, 3, NULL),
(4245, '龙马潭区', 388, 0, 3, NULL),
(4246, '中江县', 389, 0, 3, NULL),
(4247, '什邡市', 389, 0, 3, NULL),
(4248, '广汉市', 389, 0, 3, NULL),
(4249, '旌阳区', 389, 0, 3, NULL),
(4250, '绵竹市', 389, 0, 3, NULL),
(4251, '罗江县', 389, 0, 3, NULL),
(4252, '三台县', 390, 0, 3, NULL),
(4253, '北川羌族自治县', 390, 0, 3, NULL),
(4254, '安县', 390, 0, 3, NULL),
(4255, '平武县', 390, 0, 3, NULL),
(4256, '梓潼县', 390, 0, 3, NULL),
(4257, '江油市', 390, 0, 3, NULL),
(4258, '涪城区', 390, 0, 3, NULL),
(4259, '游仙区', 390, 0, 3, NULL),
(4260, '盐亭县', 390, 0, 3, NULL),
(4261, '元坝区', 391, 0, 3, NULL),
(4262, '利州区', 391, 0, 3, NULL),
(4263, '剑阁县', 391, 0, 3, NULL),
(4264, '旺苍县', 391, 0, 3, NULL),
(4265, '朝天区', 391, 0, 3, NULL),
(4266, '苍溪县', 391, 0, 3, NULL),
(4267, '青川县', 391, 0, 3, NULL),
(4268, '大英县', 392, 0, 3, NULL),
(4269, '安居区', 392, 0, 3, NULL),
(4270, '射洪县', 392, 0, 3, NULL),
(4271, '船山区', 392, 0, 3, NULL),
(4272, '蓬溪县', 392, 0, 3, NULL),
(4273, '东兴区', 393, 0, 3, NULL),
(4274, '威远县', 393, 0, 3, NULL),
(4275, '市中区', 393, 0, 3, NULL),
(4276, '资中县', 393, 0, 3, NULL),
(4277, '隆昌县', 393, 0, 3, NULL),
(4278, '五通桥区', 394, 0, 3, NULL),
(4279, '井研县', 394, 0, 3, NULL),
(4280, '夹江县', 394, 0, 3, NULL),
(4281, '峨眉山市', 394, 0, 3, NULL),
(4282, '峨边彝族自治县', 394, 0, 3, NULL),
(4283, '市中区', 394, 0, 3, NULL),
(4284, '沐川县', 394, 0, 3, NULL),
(4285, '沙湾区', 394, 0, 3, NULL),
(4286, '犍为县', 394, 0, 3, NULL),
(4287, '金口河区', 394, 0, 3, NULL),
(4288, '马边彝族自治县', 394, 0, 3, NULL),
(4289, '仪陇县', 395, 0, 3, NULL),
(4290, '南充市嘉陵区', 395, 0, 3, NULL),
(4291, '南部县', 395, 0, 3, NULL),
(4292, '嘉陵区', 395, 0, 3, NULL),
(4293, '营山县', 395, 0, 3, NULL),
(4294, '蓬安县', 395, 0, 3, NULL),
(4295, '西充县', 395, 0, 3, NULL),
(4296, '阆中市', 395, 0, 3, NULL),
(4297, '顺庆区', 395, 0, 3, NULL),
(4298, '高坪区', 395, 0, 3, NULL),
(4299, '东坡区', 396, 0, 3, NULL),
(4300, '丹棱县', 396, 0, 3, NULL),
(4301, '仁寿县', 396, 0, 3, NULL),
(4302, '彭山县', 396, 0, 3, NULL),
(4303, '洪雅县', 396, 0, 3, NULL),
(4304, '青神县', 396, 0, 3, NULL),
(4305, '兴文县', 397, 0, 3, NULL),
(4306, '南溪县', 397, 0, 3, NULL),
(4307, '宜宾县', 397, 0, 3, NULL),
(4308, '屏山县', 397, 0, 3, NULL),
(4309, '江安县', 397, 0, 3, NULL),
(4310, '珙县', 397, 0, 3, NULL),
(4311, '筠连县', 397, 0, 3, NULL),
(4312, '翠屏区', 397, 0, 3, NULL),
(4313, '长宁县', 397, 0, 3, NULL),
(4314, '高县', 397, 0, 3, NULL),
(4315, '华蓥市', 398, 0, 3, NULL),
(4316, '岳池县', 398, 0, 3, NULL),
(4317, '广安区', 398, 0, 3, NULL),
(4318, '武胜县', 398, 0, 3, NULL),
(4319, '邻水县', 398, 0, 3, NULL),
(4320, '万源市', 399, 0, 3, NULL),
(4321, '大竹县', 399, 0, 3, NULL),
(4322, '宣汉县', 399, 0, 3, NULL),
(4323, '开江县', 399, 0, 3, NULL),
(4324, '渠县', 399, 0, 3, NULL),
(4325, '达县', 399, 0, 3, NULL),
(4326, '通川区', 399, 0, 3, NULL),
(4327, '名山县', 400, 0, 3, NULL),
(4328, '天全县', 400, 0, 3, NULL),
(4329, '宝兴县', 400, 0, 3, NULL),
(4330, '汉源县', 400, 0, 3, NULL),
(4331, '石棉县', 400, 0, 3, NULL),
(4332, '芦山县', 400, 0, 3, NULL),
(4333, '荥经县', 400, 0, 3, NULL),
(4334, '雨城区', 400, 0, 3, NULL),
(4335, '南江县', 401, 0, 3, NULL),
(4336, '巴州区', 401, 0, 3, NULL),
(4337, '平昌县', 401, 0, 3, NULL),
(4338, '通江县', 401, 0, 3, NULL),
(4339, '乐至县', 402, 0, 3, NULL),
(4340, '安岳县', 402, 0, 3, NULL),
(4341, '简阳市', 402, 0, 3, NULL),
(4342, '雁江区', 402, 0, 3, NULL),
(4343, '九寨沟县', 403, 0, 3, NULL),
(4344, '壤塘县', 403, 0, 3, NULL),
(4345, '小金县', 403, 0, 3, NULL),
(4346, '松潘县', 403, 0, 3, NULL),
(4347, '汶川县', 403, 0, 3, NULL),
(4348, '理县', 403, 0, 3, NULL),
(4349, '红原县', 403, 0, 3, NULL),
(4350, '若尔盖县', 403, 0, 3, NULL),
(4351, '茂县', 403, 0, 3, NULL),
(4352, '金川县', 403, 0, 3, NULL),
(4353, '阿坝县', 403, 0, 3, NULL),
(4354, '马尔康县', 403, 0, 3, NULL),
(4355, '黑水县', 403, 0, 3, NULL),
(4356, '丹巴县', 404, 0, 3, NULL),
(4357, '乡城县', 404, 0, 3, NULL),
(4358, '巴塘县', 404, 0, 3, NULL),
(4359, '康定县', 404, 0, 3, NULL),
(4360, '得荣县', 404, 0, 3, NULL),
(4361, '德格县', 404, 0, 3, NULL),
(4362, '新龙县', 404, 0, 3, NULL),
(4363, '泸定县', 404, 0, 3, NULL),
(4364, '炉霍县', 404, 0, 3, NULL),
(4365, '理塘县', 404, 0, 3, NULL),
(4366, '甘孜县', 404, 0, 3, NULL),
(4367, '白玉县', 404, 0, 3, NULL),
(4368, '石渠县', 404, 0, 3, NULL),
(4369, '稻城县', 404, 0, 3, NULL),
(4370, '色达县', 404, 0, 3, NULL),
(4371, '道孚县', 404, 0, 3, NULL),
(4372, '雅江县', 404, 0, 3, NULL),
(4373, '会东县', 405, 0, 3, NULL),
(4374, '会理县', 405, 0, 3, NULL),
(4375, '冕宁县', 405, 0, 3, NULL),
(4376, '喜德县', 405, 0, 3, NULL),
(4377, '宁南县', 405, 0, 3, NULL),
(4378, '布拖县', 405, 0, 3, NULL),
(4379, '德昌县', 405, 0, 3, NULL),
(4380, '昭觉县', 405, 0, 3, NULL),
(4381, '普格县', 405, 0, 3, NULL),
(4382, '木里藏族自治县', 405, 0, 3, NULL),
(4383, '甘洛县', 405, 0, 3, NULL),
(4384, '盐源县', 405, 0, 3, NULL),
(4385, '美姑县', 405, 0, 3, NULL),
(4386, '西昌', 405, 0, 3, NULL),
(4387, '越西县', 405, 0, 3, NULL),
(4388, '金阳县', 405, 0, 3, NULL),
(4389, '雷波县', 405, 0, 3, NULL),
(4390, '乌当区', 406, 0, 3, NULL),
(4391, '云岩区', 406, 0, 3, NULL),
(4392, '修文县', 406, 0, 3, NULL),
(4393, '南明区', 406, 0, 3, NULL),
(4394, '小河区', 406, 0, 3, NULL),
(4395, '开阳县', 406, 0, 3, NULL),
(4396, '息烽县', 406, 0, 3, NULL),
(4397, '清镇市', 406, 0, 3, NULL),
(4398, '白云区', 406, 0, 3, NULL),
(4399, '花溪区', 406, 0, 3, NULL),
(4400, '六枝特区', 407, 0, 3, NULL),
(4401, '水城县', 407, 0, 3, NULL),
(4402, '盘县', 407, 0, 3, NULL),
(4403, '钟山区', 407, 0, 3, NULL),
(4404, '习水县', 408, 0, 3, NULL),
(4405, '仁怀市', 408, 0, 3, NULL),
(4406, '余庆县', 408, 0, 3, NULL),
(4407, '凤冈县', 408, 0, 3, NULL),
(4408, '务川仡佬族苗族自治县', 408, 0, 3, NULL),
(4409, '桐梓县', 408, 0, 3, NULL),
(4410, '正安县', 408, 0, 3, NULL),
(4411, '汇川区', 408, 0, 3, NULL),
(4412, '湄潭县', 408, 0, 3, NULL),
(4413, '红花岗区', 408, 0, 3, NULL),
(4414, '绥阳县', 408, 0, 3, NULL),
(4415, '赤水市', 408, 0, 3, NULL),
(4416, '道真仡佬族苗族自治县', 408, 0, 3, NULL),
(4417, '遵义县', 408, 0, 3, NULL),
(4418, '关岭布依族苗族自治县', 409, 0, 3, NULL),
(4419, '平坝县', 409, 0, 3, NULL),
(4420, '普定县', 409, 0, 3, NULL),
(4421, '紫云苗族布依族自治县', 409, 0, 3, NULL),
(4422, '西秀区', 409, 0, 3, NULL),
(4423, '镇宁布依族苗族自治县', 409, 0, 3, NULL),
(4424, '万山特区', 410, 0, 3, NULL),
(4425, '印江土家族苗族自治县', 410, 0, 3, NULL),
(4426, '德江县', 410, 0, 3, NULL),
(4427, '思南县', 410, 0, 3, NULL),
(4428, '松桃苗族自治县', 410, 0, 3, NULL),
(4429, '江口县', 410, 0, 3, NULL),
(4430, '沿河土家族自治县', 410, 0, 3, NULL),
(4431, '玉屏侗族自治县', 410, 0, 3, NULL),
(4432, '石阡县', 410, 0, 3, NULL),
(4433, '铜仁市', 410, 0, 3, NULL),
(4434, '兴义市', 411, 0, 3, NULL),
(4435, '兴仁县', 411, 0, 3, NULL),
(4436, '册亨县', 411, 0, 3, NULL),
(4437, '安龙县', 411, 0, 3, NULL),
(4438, '普安县', 411, 0, 3, NULL),
(4439, '晴隆县', 411, 0, 3, NULL),
(4440, '望谟县', 411, 0, 3, NULL),
(4441, '贞丰县', 411, 0, 3, NULL),
(4442, '大方县', 412, 0, 3, NULL),
(4443, '威宁彝族回族苗族自治县', 412, 0, 3, NULL),
(4444, '毕节市', 412, 0, 3, NULL),
(4445, '纳雍县', 412, 0, 3, NULL),
(4446, '织金县', 412, 0, 3, NULL),
(4447, '赫章县', 412, 0, 3, NULL),
(4448, '金沙县', 412, 0, 3, NULL),
(4449, '黔西县', 412, 0, 3, NULL),
(4450, '三穗县', 413, 0, 3, NULL),
(4451, '丹寨县', 413, 0, 3, NULL),
(4452, '从江县', 413, 0, 3, NULL),
(4453, '凯里市', 413, 0, 3, NULL),
(4454, '剑河县', 413, 0, 3, NULL),
(4455, '台江县', 413, 0, 3, NULL),
(4456, '天柱县', 413, 0, 3, NULL),
(4457, '岑巩县', 413, 0, 3, NULL),
(4458, '施秉县', 413, 0, 3, NULL),
(4459, '榕江县', 413, 0, 3, NULL),
(4460, '锦屏县', 413, 0, 3, NULL),
(4461, '镇远县', 413, 0, 3, NULL),
(4462, '雷山县', 413, 0, 3, NULL),
(4463, '麻江县', 413, 0, 3, NULL),
(4464, '黄平县', 413, 0, 3, NULL),
(4465, '黎平县', 413, 0, 3, NULL),
(4466, '三都水族自治县', 414, 0, 3, NULL),
(4467, '平塘县', 414, 0, 3, NULL),
(4468, '惠水县', 414, 0, 3, NULL),
(4469, '独山县', 414, 0, 3, NULL),
(4470, '瓮安县', 414, 0, 3, NULL),
(4471, '福泉市', 414, 0, 3, NULL),
(4472, '罗甸县', 414, 0, 3, NULL),
(4473, '荔波县', 414, 0, 3, NULL),
(4474, '贵定县', 414, 0, 3, NULL),
(4475, '都匀市', 414, 0, 3, NULL),
(4476, '长顺县', 414, 0, 3, NULL),
(4477, '龙里县', 414, 0, 3, NULL),
(4478, '东川区', 415, 0, 3, NULL),
(4479, '五华区', 415, 0, 3, NULL),
(4480, '呈贡县', 415, 0, 3, NULL),
(4481, '安宁市', 415, 0, 3, NULL),
(4482, '官渡区', 415, 0, 3, NULL),
(4483, '宜良县', 415, 0, 3, NULL),
(4484, '富民县', 415, 0, 3, NULL),
(4485, '寻甸回族彝族自治县', 415, 0, 3, NULL),
(4486, '嵩明县', 415, 0, 3, NULL),
(4487, '晋宁县', 415, 0, 3, NULL),
(4488, '盘龙区', 415, 0, 3, NULL),
(4489, '石林彝族自治县', 415, 0, 3, NULL),
(4490, '禄劝彝族苗族自治县', 415, 0, 3, NULL),
(4491, '西山区', 415, 0, 3, NULL),
(4492, '会泽县', 416, 0, 3, NULL),
(4493, '宣威市', 416, 0, 3, NULL),
(4494, '富源县', 416, 0, 3, NULL),
(4495, '师宗县', 416, 0, 3, NULL),
(4496, '沾益县', 416, 0, 3, NULL),
(4497, '罗平县', 416, 0, 3, NULL),
(4498, '陆良县', 416, 0, 3, NULL),
(4499, '马龙县', 416, 0, 3, NULL),
(4500, '麒麟区', 416, 0, 3, NULL),
(4501, '元江哈尼族彝族傣族自治县', 417, 0, 3, NULL),
(4502, '华宁县', 417, 0, 3, NULL),
(4503, '峨山彝族自治县', 417, 0, 3, NULL),
(4504, '新平彝族傣族自治县', 417, 0, 3, NULL),
(4505, '易门县', 417, 0, 3, NULL),
(4506, '江川县', 417, 0, 3, NULL),
(4507, '澄江县', 417, 0, 3, NULL),
(4508, '红塔区', 417, 0, 3, NULL),
(4509, '通海县', 417, 0, 3, NULL),
(4510, '施甸县', 418, 0, 3, NULL),
(4511, '昌宁县', 418, 0, 3, NULL),
(4512, '腾冲县', 418, 0, 3, NULL),
(4513, '隆阳区', 418, 0, 3, NULL),
(4514, '龙陵县', 418, 0, 3, NULL),
(4515, '大关县', 419, 0, 3, NULL),
(4516, '威信县', 419, 0, 3, NULL),
(4517, '巧家县', 419, 0, 3, NULL),
(4518, '彝良县', 419, 0, 3, NULL),
(4519, '昭阳区', 419, 0, 3, NULL),
(4520, '水富县', 419, 0, 3, NULL),
(4521, '永善县', 419, 0, 3, NULL),
(4522, '盐津县', 419, 0, 3, NULL),
(4523, '绥江县', 419, 0, 3, NULL),
(4524, '镇雄县', 419, 0, 3, NULL),
(4525, '鲁甸县', 419, 0, 3, NULL),
(4526, '华坪县', 420, 0, 3, NULL),
(4527, '古城区', 420, 0, 3, NULL),
(4528, '宁蒗彝族自治县', 420, 0, 3, NULL),
(4529, '永胜县', 420, 0, 3, NULL),
(4530, '玉龙纳西族自治县', 420, 0, 3, NULL),
(4531, '临翔区', 422, 0, 3, NULL),
(4532, '云县', 422, 0, 3, NULL),
(4533, '凤庆县', 422, 0, 3, NULL),
(4534, '双江拉祜族佤族布朗族傣族自治县', 422, 0, 3, NULL),
(4535, '永德县', 422, 0, 3, NULL),
(4536, '沧源佤族自治县', 422, 0, 3, NULL),
(4537, '耿马傣族佤族自治县', 422, 0, 3, NULL),
(4538, '镇康县', 422, 0, 3, NULL),
(4539, '元谋县', 423, 0, 3, NULL),
(4540, '南华县', 423, 0, 3, NULL),
(4541, '双柏县', 423, 0, 3, NULL),
(4542, '大姚县', 423, 0, 3, NULL),
(4543, '姚安县', 423, 0, 3, NULL),
(4544, '楚雄市', 423, 0, 3, NULL),
(4545, '武定县', 423, 0, 3, NULL),
(4546, '永仁县', 423, 0, 3, NULL),
(4547, '牟定县', 423, 0, 3, NULL),
(4548, '禄丰县', 423, 0, 3, NULL),
(4549, '个旧市', 424, 0, 3, NULL),
(4550, '元阳县', 424, 0, 3, NULL),
(4551, '屏边苗族自治县', 424, 0, 3, NULL),
(4552, '建水县', 424, 0, 3, NULL),
(4553, '开远市', 424, 0, 3, NULL),
(4554, '弥勒县', 424, 0, 3, NULL),
(4555, '河口瑶族自治县', 424, 0, 3, NULL),
(4556, '泸西县', 424, 0, 3, NULL),
(4557, '石屏县', 424, 0, 3, NULL),
(4558, '红河县', 424, 0, 3, NULL),
(4559, '绿春县', 424, 0, 3, NULL),
(4560, '蒙自县', 424, 0, 3, NULL),
(4561, '金平苗族瑶族傣族自治县', 424, 0, 3, NULL),
(4562, '丘北县', 425, 0, 3, NULL),
(4563, '富宁县', 425, 0, 3, NULL),
(4564, '广南县', 425, 0, 3, NULL),
(4565, '文山县', 425, 0, 3, NULL),
(4566, '砚山县', 425, 0, 3, NULL),
(4567, '西畴县', 425, 0, 3, NULL),
(4568, '马关县', 425, 0, 3, NULL),
(4569, '麻栗坡县', 425, 0, 3, NULL),
(4570, '勐海县', 426, 0, 3, NULL),
(4571, '勐腊县', 426, 0, 3, NULL),
(4572, '景洪市', 426, 0, 3, NULL),
(4573, '云龙县', 427, 0, 3, NULL),
(4574, '剑川县', 427, 0, 3, NULL),
(4575, '南涧彝族自治县', 427, 0, 3, NULL),
(4576, '大理市', 427, 0, 3, NULL),
(4577, '宾川县', 427, 0, 3, NULL),
(4578, '巍山彝族回族自治县', 427, 0, 3, NULL),
(4579, '弥渡县', 427, 0, 3, NULL),
(4580, '永平县', 427, 0, 3, NULL),
(4581, '洱源县', 427, 0, 3, NULL),
(4582, '漾濞彝族自治县', 427, 0, 3, NULL),
(4583, '祥云县', 427, 0, 3, NULL),
(4584, '鹤庆县', 427, 0, 3, NULL),
(4585, '梁河县', 428, 0, 3, NULL),
(4586, '潞西市', 428, 0, 3, NULL),
(4587, '瑞丽市', 428, 0, 3, NULL),
(4588, '盈江县', 428, 0, 3, NULL),
(4589, '陇川县', 428, 0, 3, NULL),
(4590, '德钦县', 430, 0, 3, NULL),
(4591, '维西傈僳族自治县', 430, 0, 3, NULL),
(4592, '香格里拉县', 430, 0, 3, NULL),
(4593, '城关区', 431, 0, 3, NULL),
(4594, '堆龙德庆县', 431, 0, 3, NULL),
(4595, '墨竹工卡县', 431, 0, 3, NULL),
(4596, '尼木县', 431, 0, 3, NULL),
(4597, '当雄县', 431, 0, 3, NULL),
(4598, '曲水县', 431, 0, 3, NULL),
(4599, '林周县', 431, 0, 3, NULL),
(4600, '达孜县', 431, 0, 3, NULL),
(4601, '丁青县', 432, 0, 3, NULL),
(4602, '八宿县', 432, 0, 3, NULL),
(4603, '察雅县', 432, 0, 3, NULL),
(4604, '左贡县', 432, 0, 3, NULL),
(4605, '昌都县', 432, 0, 3, NULL),
(4606, '江达县', 432, 0, 3, NULL),
(4607, '洛隆县', 432, 0, 3, NULL),
(4608, '类乌齐县', 432, 0, 3, NULL),
(4609, '芒康县', 432, 0, 3, NULL),
(4610, '贡觉县', 432, 0, 3, NULL),
(4611, '边坝县', 432, 0, 3, NULL),
(4612, '乃东县', 433, 0, 3, NULL),
(4613, '加查县', 433, 0, 3, NULL),
(4614, '扎囊县', 433, 0, 3, NULL),
(4615, '措美县', 433, 0, 3, NULL),
(4616, '曲松县', 433, 0, 3, NULL),
(4617, '桑日县', 433, 0, 3, NULL),
(4618, '洛扎县', 433, 0, 3, NULL),
(4619, '浪卡子县', 433, 0, 3, NULL),
(4620, '琼结县', 433, 0, 3, NULL),
(4621, '贡嘎县', 433, 0, 3, NULL),
(4622, '错那县', 433, 0, 3, NULL),
(4623, '隆子县', 433, 0, 3, NULL),
(4624, '亚东县', 434, 0, 3, NULL),
(4625, '仁布县', 434, 0, 3, NULL),
(4626, '仲巴县', 434, 0, 3, NULL),
(4627, '南木林县', 434, 0, 3, NULL),
(4628, '吉隆县', 434, 0, 3, NULL),
(4629, '定日县', 434, 0, 3, NULL),
(4630, '定结县', 434, 0, 3, NULL),
(4631, '岗巴县', 434, 0, 3, NULL),
(4632, '康马县', 434, 0, 3, NULL),
(4633, '拉孜县', 434, 0, 3, NULL),
(4634, '日喀则市', 434, 0, 3, NULL),
(4635, '昂仁县', 434, 0, 3, NULL),
(4636, '江孜县', 434, 0, 3, NULL),
(4637, '白朗县', 434, 0, 3, NULL),
(4638, '聂拉木县', 434, 0, 3, NULL),
(4639, '萨嘎县', 434, 0, 3, NULL),
(4640, '萨迦县', 434, 0, 3, NULL),
(4641, '谢通门县', 434, 0, 3, NULL),
(4642, '嘉黎县', 435, 0, 3, NULL),
(4643, '安多县', 435, 0, 3, NULL),
(4644, '尼玛县', 435, 0, 3, NULL),
(4645, '巴青县', 435, 0, 3, NULL),
(4646, '比如县', 435, 0, 3, NULL),
(4647, '班戈县', 435, 0, 3, NULL),
(4648, '申扎县', 435, 0, 3, NULL),
(4649, '索县', 435, 0, 3, NULL),
(4650, '聂荣县', 435, 0, 3, NULL),
(4651, '那曲县', 435, 0, 3, NULL),
(4652, '噶尔县', 436, 0, 3, NULL),
(4653, '措勤县', 436, 0, 3, NULL),
(4654, '改则县', 436, 0, 3, NULL),
(4655, '日土县', 436, 0, 3, NULL),
(4656, '普兰县', 436, 0, 3, NULL),
(4657, '札达县', 436, 0, 3, NULL),
(4658, '革吉县', 436, 0, 3, NULL),
(4659, '墨脱县', 437, 0, 3, NULL),
(4660, '察隅县', 437, 0, 3, NULL),
(4661, '工布江达县', 437, 0, 3, NULL),
(4662, '朗县', 437, 0, 3, NULL),
(4663, '林芝县', 437, 0, 3, NULL),
(4664, '波密县', 437, 0, 3, NULL),
(4665, '米林县', 437, 0, 3, NULL),
(4666, '临潼区', 438, 0, 3, NULL),
(4667, '周至县', 438, 0, 3, NULL),
(4668, '户县', 438, 0, 3, NULL),
(4669, '新城区', 438, 0, 3, NULL),
(4670, '未央区', 438, 0, 3, NULL),
(4671, '灞桥区', 438, 0, 3, NULL),
(4672, '碑林区', 438, 0, 3, NULL),
(4673, '莲湖区', 438, 0, 3, NULL),
(4674, '蓝田县', 438, 0, 3, NULL),
(4675, '长安区', 438, 0, 3, NULL),
(4676, '阎良区', 438, 0, 3, NULL),
(4677, '雁塔区', 438, 0, 3, NULL),
(4678, '高陵县', 438, 0, 3, NULL),
(4679, '印台区', 439, 0, 3, NULL),
(4680, '宜君县', 439, 0, 3, NULL),
(4681, '王益区', 439, 0, 3, NULL),
(4682, '耀州区', 439, 0, 3, NULL),
(4683, '凤县', 440, 0, 3, NULL),
(4684, '凤翔县', 440, 0, 3, NULL),
(4685, '千阳县', 440, 0, 3, NULL),
(4686, '太白县', 440, 0, 3, NULL),
(4687, '岐山县', 440, 0, 3, NULL),
(4688, '扶风县', 440, 0, 3, NULL),
(4689, '渭滨区', 440, 0, 3, NULL),
(4690, '眉县', 440, 0, 3, NULL),
(4691, '金台区', 440, 0, 3, NULL),
(4692, '陇县', 440, 0, 3, NULL),
(4693, '陈仓区', 440, 0, 3, NULL),
(4694, '麟游县', 440, 0, 3, NULL),
(4695, '三原县', 441, 0, 3, NULL),
(4696, '干县', 441, 0, 3, NULL),
(4697, '兴平市', 441, 0, 3, NULL),
(4698, '彬县', 441, 0, 3, NULL),
(4699, '旬邑县', 441, 0, 3, NULL),
(4700, '杨陵区', 441, 0, 3, NULL),
(4701, '武功县', 441, 0, 3, NULL),
(4702, '永寿县', 441, 0, 3, NULL),
(4703, '泾阳县', 441, 0, 3, NULL),
(4704, '淳化县', 441, 0, 3, NULL),
(4705, '渭城区', 441, 0, 3, NULL),
(4706, '礼泉县', 441, 0, 3, NULL),
(4707, '秦都区', 441, 0, 3, NULL),
(4708, '长武县', 441, 0, 3, NULL),
(4709, '临渭区', 442, 0, 3, NULL),
(4710, '华县', 442, 0, 3, NULL),
(4711, '华阴市', 442, 0, 3, NULL),
(4712, '合阳县', 442, 0, 3, NULL),
(4713, '大荔县', 442, 0, 3, NULL),
(4714, '富平县', 442, 0, 3, NULL),
(4715, '潼关县', 442, 0, 3, NULL),
(4716, '澄城县', 442, 0, 3, NULL),
(4717, '白水县', 442, 0, 3, NULL),
(4718, '蒲城县', 442, 0, 3, NULL),
(4719, '韩城市', 442, 0, 3, NULL),
(4720, '吴起县', 443, 0, 3, NULL),
(4721, '子长县', 443, 0, 3, NULL),
(4722, '安塞县', 443, 0, 3, NULL),
(4723, '宜川县', 443, 0, 3, NULL),
(4724, '宝塔区', 443, 0, 3, NULL),
(4725, '富县', 443, 0, 3, NULL),
(4726, '延川县', 443, 0, 3, NULL),
(4727, '延长县', 443, 0, 3, NULL),
(4728, '志丹县', 443, 0, 3, NULL),
(4729, '洛川县', 443, 0, 3, NULL),
(4730, '甘泉县', 443, 0, 3, NULL),
(4731, '黄陵县', 443, 0, 3, NULL),
(4732, '黄龙县', 443, 0, 3, NULL),
(4733, '佛坪县', 444, 0, 3, NULL),
(4734, '勉县', 444, 0, 3, NULL),
(4735, '南郑县', 444, 0, 3, NULL),
(4736, '城固县', 444, 0, 3, NULL),
(4737, '宁强县', 444, 0, 3, NULL),
(4738, '汉台区', 444, 0, 3, NULL),
(4739, '洋县', 444, 0, 3, NULL),
(4740, '留坝县', 444, 0, 3, NULL),
(4741, '略阳县', 444, 0, 3, NULL),
(4742, '西乡县', 444, 0, 3, NULL),
(4743, '镇巴县', 444, 0, 3, NULL),
(4744, '佳县', 445, 0, 3, NULL),
(4745, '吴堡县', 445, 0, 3, NULL),
(4746, '子洲县', 445, 0, 3, NULL),
(4747, '定边县', 445, 0, 3, NULL),
(4748, '府谷县', 445, 0, 3, NULL),
(4749, '榆林市榆阳区', 445, 0, 3, NULL),
(4750, '横山县', 445, 0, 3, NULL),
(4751, '清涧县', 445, 0, 3, NULL),
(4752, '神木县', 445, 0, 3, NULL),
(4753, '米脂县', 445, 0, 3, NULL),
(4754, '绥德县', 445, 0, 3, NULL),
(4755, '靖边县', 445, 0, 3, NULL),
(4756, '宁陕县', 446, 0, 3, NULL),
(4757, '岚皋县', 446, 0, 3, NULL),
(4758, '平利县', 446, 0, 3, NULL),
(4759, '旬阳县', 446, 0, 3, NULL),
(4760, '汉滨区', 446, 0, 3, NULL),
(4761, '汉阴县', 446, 0, 3, NULL),
(4762, '白河县', 446, 0, 3, NULL),
(4763, '石泉县', 446, 0, 3, NULL),
(4764, '紫阳县', 446, 0, 3, NULL),
(4765, '镇坪县', 446, 0, 3, NULL),
(4766, '丹凤县', 447, 0, 3, NULL),
(4767, '商南县', 447, 0, 3, NULL),
(4768, '商州区', 447, 0, 3, NULL),
(4769, '山阳县', 447, 0, 3, NULL),
(4770, '柞水县', 447, 0, 3, NULL),
(4771, '洛南县', 447, 0, 3, NULL),
(4772, '镇安县', 447, 0, 3, NULL),
(4773, '七里河区', 448, 0, 3, NULL),
(4774, '城关区', 448, 0, 3, NULL),
(4775, '安宁区', 448, 0, 3, NULL),
(4776, '榆中县', 448, 0, 3, NULL),
(4777, '永登县', 448, 0, 3, NULL),
(4778, '皋兰县', 448, 0, 3, NULL),
(4779, '红古区', 448, 0, 3, NULL),
(4780, '西固区', 448, 0, 3, NULL),
(4781, '嘉峪关市', 449, 0, 3, NULL),
(4782, '永昌县', 450, 0, 3, NULL),
(4783, '金川区', 450, 0, 3, NULL),
(4784, '会宁县', 451, 0, 3, NULL),
(4785, '平川区', 451, 0, 3, NULL),
(4786, '景泰县', 451, 0, 3, NULL),
(4787, '白银区', 451, 0, 3, NULL),
(4788, '靖远县', 451, 0, 3, NULL),
(4789, '张家川回族自治县', 452, 0, 3, NULL),
(4790, '武山县', 452, 0, 3, NULL),
(4791, '清水县', 452, 0, 3, NULL),
(4792, '甘谷县', 452, 0, 3, NULL),
(4793, '秦安县', 452, 0, 3, NULL),
(4794, '秦州区', 452, 0, 3, NULL),
(4795, '麦积区', 452, 0, 3, NULL),
(4796, '凉州区', 453, 0, 3, NULL),
(4797, '古浪县', 453, 0, 3, NULL),
(4798, '天祝藏族自治县', 453, 0, 3, NULL),
(4799, '民勤县', 453, 0, 3, NULL),
(4800, '临泽县', 454, 0, 3, NULL),
(4801, '山丹县', 454, 0, 3, NULL),
(4802, '民乐县', 454, 0, 3, NULL),
(4803, '甘州区', 454, 0, 3, NULL),
(4804, '肃南裕固族自治县', 454, 0, 3, NULL),
(4805, '高台县', 454, 0, 3, NULL),
(4806, '华亭县', 455, 0, 3, NULL),
(4807, '崆峒区', 455, 0, 3, NULL),
(4808, '崇信县', 455, 0, 3, NULL),
(4809, '庄浪县', 455, 0, 3, NULL),
(4810, '泾川县', 455, 0, 3, NULL),
(4811, '灵台县', 455, 0, 3, NULL),
(4812, '静宁县', 455, 0, 3, NULL),
(4813, '敦煌市', 456, 0, 3, NULL),
(4814, '玉门市', 456, 0, 3, NULL),
(4815, '瓜州县（原安西县）', 456, 0, 3, NULL),
(4816, '肃北蒙古族自治县', 456, 0, 3, NULL),
(4817, '肃州区', 456, 0, 3, NULL),
(4818, '金塔县', 456, 0, 3, NULL),
(4819, '阿克塞哈萨克族自治县', 456, 0, 3, NULL),
(4820, '华池县', 457, 0, 3, NULL),
(4821, '合水县', 457, 0, 3, NULL),
(4822, '宁县', 457, 0, 3, NULL),
(4823, '庆城县', 457, 0, 3, NULL),
(4824, '正宁县', 457, 0, 3, NULL),
(4825, '环县', 457, 0, 3, NULL),
(4826, '西峰区', 457, 0, 3, NULL),
(4827, '镇原县', 457, 0, 3, NULL),
(4828, '临洮县', 458, 0, 3, NULL),
(4829, '安定区', 458, 0, 3, NULL),
(4830, '岷县', 458, 0, 3, NULL),
(4831, '渭源县', 458, 0, 3, NULL),
(4832, '漳县', 458, 0, 3, NULL),
(4833, '通渭县', 458, 0, 3, NULL),
(4834, '陇西县', 458, 0, 3, NULL),
(4835, '两当县', 459, 0, 3, NULL),
(4836, '宕昌县', 459, 0, 3, NULL),
(4837, '康县', 459, 0, 3, NULL),
(4838, '徽县', 459, 0, 3, NULL),
(4839, '成县', 459, 0, 3, NULL),
(4840, '文县', 459, 0, 3, NULL),
(4841, '武都区', 459, 0, 3, NULL),
(4842, '礼县', 459, 0, 3, NULL),
(4843, '西和县', 459, 0, 3, NULL),
(4844, '东乡族自治县', 460, 0, 3, NULL),
(4845, '临夏县', 460, 0, 3, NULL),
(4846, '临夏市', 460, 0, 3, NULL),
(4847, '和政县', 460, 0, 3, NULL),
(4848, '广河县', 460, 0, 3, NULL),
(4849, '康乐县', 460, 0, 3, NULL),
(4850, '永靖县', 460, 0, 3, NULL),
(4851, '积石山保安族东乡族撒拉族自治县', 460, 0, 3, NULL),
(4852, '临潭县', 461, 0, 3, NULL),
(4853, '卓尼县', 461, 0, 3, NULL),
(4854, '合作市', 461, 0, 3, NULL),
(4855, '夏河县', 461, 0, 3, NULL),
(4856, '玛曲县', 461, 0, 3, NULL),
(4857, '碌曲县', 461, 0, 3, NULL),
(4858, '舟曲县', 461, 0, 3, NULL),
(4859, '迭部县', 461, 0, 3, NULL),
(4860, '城东区', 462, 0, 3, NULL),
(4861, '城中区', 462, 0, 3, NULL),
(4862, '城北区', 462, 0, 3, NULL),
(4863, '城西区', 462, 0, 3, NULL),
(4864, '大通回族土族自治县', 462, 0, 3, NULL),
(4865, '湟中县', 462, 0, 3, NULL),
(4866, '湟源县', 462, 0, 3, NULL),
(4867, '乐都县', 463, 0, 3, NULL),
(4868, '互助土族自治县', 463, 0, 3, NULL),
(4869, '化隆回族自治县', 463, 0, 3, NULL),
(4870, '平安县', 463, 0, 3, NULL),
(4871, '循化撒拉族自治县', 463, 0, 3, NULL),
(4872, '民和回族土族自治县', 463, 0, 3, NULL),
(4873, '刚察县', 464, 0, 3, NULL),
(4874, '海晏县', 464, 0, 3, NULL),
(4875, '祁连县', 464, 0, 3, NULL),
(4876, '门源回族自治县', 464, 0, 3, NULL),
(4877, '同仁县', 465, 0, 3, NULL),
(4878, '尖扎县', 465, 0, 3, NULL),
(4879, '河南蒙古族自治县', 465, 0, 3, NULL),
(4880, '泽库县', 465, 0, 3, NULL),
(4881, '共和县', 466, 0, 3, NULL),
(4882, '兴海县', 466, 0, 3, NULL),
(4883, '同德县', 466, 0, 3, NULL),
(4884, '贵南县', 466, 0, 3, NULL),
(4885, '贵德县', 466, 0, 3, NULL),
(4886, '久治县', 467, 0, 3, NULL),
(4887, '玛多县', 467, 0, 3, NULL),
(4888, '玛沁县', 467, 0, 3, NULL),
(4889, '班玛县', 467, 0, 3, NULL),
(4890, '甘德县', 467, 0, 3, NULL),
(4891, '达日县', 467, 0, 3, NULL),
(4892, '囊谦县', 468, 0, 3, NULL),
(4893, '曲麻莱县', 468, 0, 3, NULL),
(4894, '杂多县', 468, 0, 3, NULL),
(4895, '治多县', 468, 0, 3, NULL),
(4896, '玉树县', 468, 0, 3, NULL),
(4897, '称多县', 468, 0, 3, NULL),
(4898, '乌兰县', 469, 0, 3, NULL),
(4899, '冷湖行委', 469, 0, 3, NULL),
(4900, '大柴旦行委', 469, 0, 3, NULL),
(4901, '天峻县', 469, 0, 3, NULL),
(4902, '德令哈市', 469, 0, 3, NULL),
(4903, '格尔木市', 469, 0, 3, NULL),
(4904, '茫崖行委', 469, 0, 3, NULL),
(4905, '都兰县', 469, 0, 3, NULL),
(4906, '兴庆区', 470, 0, 3, NULL),
(4907, '永宁县', 470, 0, 3, NULL),
(4908, '灵武市', 470, 0, 3, NULL),
(4909, '西夏区', 470, 0, 3, NULL),
(4910, '贺兰县', 470, 0, 3, NULL),
(4911, '金凤区', 470, 0, 3, NULL),
(4912, '大武口区', 471, 0, 3, NULL),
(4913, '平罗县', 471, 0, 3, NULL),
(4914, '惠农区', 471, 0, 3, NULL),
(4915, '利通区', 472, 0, 3, NULL),
(4916, '同心县', 472, 0, 3, NULL),
(4917, '盐池县', 472, 0, 3, NULL),
(4918, '青铜峡市', 472, 0, 3, NULL),
(4919, '原州区', 473, 0, 3, NULL),
(4920, '彭阳县', 473, 0, 3, NULL),
(4921, '泾源县', 473, 0, 3, NULL),
(4922, '西吉县', 473, 0, 3, NULL),
(4923, '隆德县', 473, 0, 3, NULL),
(4924, '中宁县', 474, 0, 3, NULL),
(4925, '沙坡头区', 474, 0, 3, NULL),
(4926, '海原县', 474, 0, 3, NULL),
(4927, '东山区', 475, 0, 3, NULL),
(4928, '乌鲁木齐县', 475, 0, 3, NULL),
(4929, '天山区', 475, 0, 3, NULL),
(4930, '头屯河区', 475, 0, 3, NULL),
(4931, '新市区', 475, 0, 3, NULL),
(4932, '水磨沟区', 475, 0, 3, NULL),
(4933, '沙依巴克区', 475, 0, 3, NULL),
(4934, '达坂城区', 475, 0, 3, NULL),
(4935, '乌尔禾区', 476, 0, 3, NULL),
(4936, '克拉玛依区', 476, 0, 3, NULL),
(4937, '独山子区', 476, 0, 3, NULL),
(4938, '白碱滩区', 476, 0, 3, NULL),
(4939, '吐鲁番市', 477, 0, 3, NULL),
(4940, '托克逊县', 477, 0, 3, NULL),
(4941, '鄯善县', 477, 0, 3, NULL),
(4942, '伊吾县', 478, 0, 3, NULL),
(4943, '哈密市', 478, 0, 3, NULL),
(4944, '巴里坤哈萨克自治县', 478, 0, 3, NULL),
(4945, '吉木萨尔县', 479, 0, 3, NULL),
(4946, '呼图壁县', 479, 0, 3, NULL),
(4947, '奇台县', 479, 0, 3, NULL),
(4948, '昌吉市', 479, 0, 3, NULL),
(4949, '木垒哈萨克自治县', 479, 0, 3, NULL),
(4950, '玛纳斯县', 479, 0, 3, NULL),
(4951, '米泉市', 479, 0, 3, NULL),
(4952, '阜康市', 479, 0, 3, NULL),
(4953, '博乐市', 480, 0, 3, NULL),
(4954, '温泉县', 480, 0, 3, NULL),
(4955, '精河县', 480, 0, 3, NULL),
(4956, '博湖县', 481, 0, 3, NULL),
(4957, '和硕县', 481, 0, 3, NULL),
(4958, '和静县', 481, 0, 3, NULL),
(4959, '尉犁县', 481, 0, 3, NULL),
(4960, '库尔勒市', 481, 0, 3, NULL),
(4961, '焉耆回族自治县', 481, 0, 3, NULL),
(4962, '若羌县', 481, 0, 3, NULL),
(4963, '轮台县', 481, 0, 3, NULL),
(4964, '乌什县', 482, 0, 3, NULL),
(4965, '库车县', 482, 0, 3, NULL),
(4966, '拜城县', 482, 0, 3, NULL),
(4967, '新和县', 482, 0, 3, NULL),
(4968, '柯坪县', 482, 0, 3, NULL),
(4969, '沙雅县', 482, 0, 3, NULL),
(4970, '温宿县', 482, 0, 3, NULL),
(4971, '阿克苏市', 482, 0, 3, NULL),
(4972, '阿瓦提县', 482, 0, 3, NULL),
(4973, '乌恰县', 483, 0, 3, NULL),
(4974, '阿克陶县', 483, 0, 3, NULL),
(4975, '阿合奇县', 483, 0, 3, NULL),
(4976, '阿图什市', 483, 0, 3, NULL),
(4977, '伽师县', 484, 0, 3, NULL),
(4978, '叶城县', 484, 0, 3, NULL),
(4979, '喀什市', 484, 0, 3, NULL),
(4980, '塔什库尔干塔吉克自治县', 484, 0, 3, NULL),
(4981, '岳普湖县', 484, 0, 3, NULL),
(4982, '巴楚县', 484, 0, 3, NULL),
(4983, '泽普县', 484, 0, 3, NULL),
(4984, '疏勒县', 484, 0, 3, NULL),
(4985, '疏附县', 484, 0, 3, NULL),
(4986, '英吉沙县', 484, 0, 3, NULL),
(4987, '莎车县', 484, 0, 3, NULL),
(4988, '麦盖提县', 484, 0, 3, NULL),
(4989, '于田县', 485, 0, 3, NULL),
(4990, '和田县', 485, 0, 3, NULL),
(4991, '和田市', 485, 0, 3, NULL),
(4992, '墨玉县', 485, 0, 3, NULL),
(4993, '民丰县', 485, 0, 3, NULL),
(4994, '洛浦县', 485, 0, 3, NULL),
(4995, '皮山县', 485, 0, 3, NULL),
(4996, '策勒县', 485, 0, 3, NULL),
(4997, '伊宁县', 486, 0, 3, NULL),
(4998, '伊宁市', 486, 0, 3, NULL),
(4999, '奎屯市', 486, 0, 3, NULL),
(5000, '察布查尔锡伯自治县', 486, 0, 3, NULL),
(5001, '尼勒克县', 486, 0, 3, NULL),
(5002, '巩留县', 486, 0, 3, NULL),
(5003, '新源县', 486, 0, 3, NULL),
(5004, '昭苏县', 486, 0, 3, NULL),
(5005, '特克斯县', 486, 0, 3, NULL),
(5006, '霍城县', 486, 0, 3, NULL),
(5007, '乌苏市', 487, 0, 3, NULL),
(5008, '和布克赛尔蒙古自治县', 487, 0, 3, NULL),
(5009, '塔城市', 487, 0, 3, NULL),
(5010, '托里县', 487, 0, 3, NULL),
(5011, '沙湾县', 487, 0, 3, NULL),
(5012, '裕民县', 487, 0, 3, NULL),
(5013, '额敏县', 487, 0, 3, NULL),
(5014, '吉木乃县', 488, 0, 3, NULL),
(5015, '哈巴河县', 488, 0, 3, NULL),
(5016, '富蕴县', 488, 0, 3, NULL),
(5017, '布尔津县', 488, 0, 3, NULL),
(5018, '福海县', 488, 0, 3, NULL),
(5019, '阿勒泰市', 488, 0, 3, NULL),
(5020, '青河县', 488, 0, 3, NULL),
(5021, '石河子市', 489, 0, 3, NULL),
(5022, '阿拉尔市', 490, 0, 3, NULL),
(5023, '图木舒克市', 491, 0, 3, NULL),
(5024, '五家渠市', 492, 0, 3, NULL),
(45055, '海外', 35, 0, 2, NULL),
(45056, '光明新区', 291, 0, 3, NULL),
(45057, '大鹏新区', 291, 0, 3, NULL),
(45058, '龙华新区', 291, 0, 3, NULL),
(45059, '坪山新区', 291, 0, 3, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_arrival_notice`
--

CREATE TABLE IF NOT EXISTS `yunpay_arrival_notice` (
  `an_id` int(10) unsigned NOT NULL COMMENT '通知id',
  `goods_id` int(10) unsigned NOT NULL COMMENT '商品id',
  `goods_name` varchar(50) NOT NULL COMMENT '商品名称',
  `member_id` int(10) unsigned NOT NULL COMMENT '会员id',
  `an_addtime` int(10) unsigned NOT NULL COMMENT '添加时间',
  `an_email` varchar(100) NOT NULL COMMENT '邮箱',
  `an_mobile` varchar(11) NOT NULL COMMENT '手机号',
  `an_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态 1到货通知，2预售'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品到货通知表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_article`
--

CREATE TABLE IF NOT EXISTS `yunpay_article` (
  `article_id` int(11) NOT NULL COMMENT '索引id',
  `ac_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `article_url` varchar(100) DEFAULT NULL COMMENT '跳转链接',
  `article_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示，0为否，1为是，默认为1',
  `article_sort` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序',
  `article_title` varchar(100) DEFAULT NULL COMMENT '标题',
  `article_content` text COMMENT '内容',
  `article_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `article_type` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='文章表';

--
-- 转存表中的数据 `yunpay_article`
--

INSERT INTO `yunpay_article` (`article_id`, `ac_id`, `article_url`, `article_show`, `article_sort`, `article_title`, `article_content`, `article_time`, `article_type`) VALUES
(1, 8, '', 1, 255, '注册', '注册注册注册注册', 1470122057, 2);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_article_class`
--

CREATE TABLE IF NOT EXISTS `yunpay_article_class` (
  `ac_id` int(10) unsigned NOT NULL COMMENT '索引ID',
  `ac_code` varchar(20) DEFAULT NULL COMMENT '分类标识码',
  `ac_name` varchar(100) NOT NULL COMMENT '分类名称',
  `ac_parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `ac_sort` tinyint(1) unsigned NOT NULL DEFAULT '255' COMMENT '排序',
  `ac_type` tinyint(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='文章分类表';

--
-- 转存表中的数据 `yunpay_article_class`
--

INSERT INTO `yunpay_article_class` (`ac_id`, `ac_code`, `ac_name`, `ac_parent_id`, `ac_sort`, `ac_type`) VALUES
(1, 'notice', '商城公告', 0, 255, 0),
(2, 'member', '帮助中心', 0, 255, 0),
(3, 'store', '店主之家', 0, 255, 0),
(4, 'payment', '支付方式', 0, 255, 0),
(5, 'sold', '售后服务', 0, 255, 0),
(6, 'service', '客服中心', 0, 255, 0),
(7, 'about', '关于我们', 0, 255, 0),
(8, NULL, '会员', 0, 255, 2);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_attribute`
--

CREATE TABLE IF NOT EXISTS `yunpay_attribute` (
  `attr_id` int(10) unsigned NOT NULL COMMENT '属性id',
  `attr_name` varchar(100) NOT NULL COMMENT '属性名称',
  `type_id` int(10) unsigned NOT NULL COMMENT '所属类型id',
  `attr_value` text NOT NULL COMMENT '属性值列',
  `attr_show` tinyint(1) unsigned NOT NULL COMMENT '是否显示。0为不显示、1为显示',
  `attr_sort` tinyint(1) unsigned NOT NULL COMMENT '排序'
) ENGINE=MyISAM AUTO_INCREMENT=221 DEFAULT CHARSET=utf8 COMMENT='商品属性表';

--
-- 转存表中的数据 `yunpay_attribute`
--

INSERT INTO `yunpay_attribute` (`attr_id`, `attr_name`, `type_id`, `attr_value`, `attr_show`, `attr_sort`) VALUES
(206, '款式', 34, '毛衣,开衫,套头衫,打底衫,长款,高领,蝙蝠衫,吊带/背心,其它', 1, 1),
(207, '材质', 34, '棉,涤纶,真丝,亚麻,丝光棉,羊毛/羊绒,腈纶/化纤,棉混纺,其它', 1, 2),
(208, '价格', 34, '0-99,100-199,200-299,300-399,400-499,500-599,600-999,1000以上', 1, 3),
(209, '袖长', 34, '长袖,短袖,七分袖,无袖,五分袖/中袖,九分袖,其它', 1, 4),
(210, '风格', 34, '欧美,日韩,OL通勤,休闲,原创设计,百搭,其它', 1, 5),
(211, '袖长', 35, '长袖,短袖,七分袖,无袖,九分袖,五分袖/中袖,其它', 1, 1),
(212, '花型', 35, '纯色,条纹,格子,千鸟格,波点,拼接,撞色,小碎花,印花/绣花,渐变,豹纹,骷髅,手绘,几何,卡通,字母,脸谱,头像,动物,植物,建筑,其它', 1, 2),
(213, '版式', 35, '修身,宽松,直筒,斗篷,其他', 1, 3),
(214, '衣长', 35, '短款(35-50CM),常规款(51-65CM),中长款(66-80CM),长款(衣长大于80CM)', 1, 4),
(215, '领型', 35, '圆领,V领,立领,翻领/polo领,方领,西装领,荷叶领,娃娃领,连帽/帽领,其它领型,高领', 1, 5),
(216, '款式', 36, '套头,开衫,套装', 1, 1),
(217, '袖长', 36, '长袖,短袖,七分袖,无袖,九分袖,五分袖/中袖,其它', 1, 2),
(218, '花型', 36, '纯色,条纹,格子,千鸟格,波点,拼接,撞色,小碎花,印花/绣花,渐变,豹纹,骷髅,手绘,几何,卡通,字母,脸谱,头像,动物,植物,建筑,其它', 1, 3),
(219, '版式', 36, '修身,宽松,直筒,其他', 1, 4),
(220, '薄厚', 36, '薄款,普通,加厚,抓绒,棉内胆,毛内胆', 1, 5);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_attribute_value`
--

CREATE TABLE IF NOT EXISTS `yunpay_attribute_value` (
  `attr_value_id` int(10) unsigned NOT NULL COMMENT '属性值id',
  `attr_value_name` varchar(100) NOT NULL COMMENT '属性值名称',
  `attr_id` int(10) unsigned NOT NULL COMMENT '所属属性id',
  `type_id` int(10) unsigned NOT NULL COMMENT '类型id',
  `attr_value_sort` tinyint(1) unsigned NOT NULL COMMENT '属性值排序'
) ENGINE=MyISAM AUTO_INCREMENT=3181 DEFAULT CHARSET=utf8 COMMENT='商品属性值表';

--
-- 转存表中的数据 `yunpay_attribute_value`
--

INSERT INTO `yunpay_attribute_value` (`attr_value_id`, `attr_value_name`, `attr_id`, `type_id`, `attr_value_sort`) VALUES
(3050, '毛衣', 206, 34, 0),
(3051, '开衫', 206, 34, 0),
(3052, '套头衫', 206, 34, 0),
(3053, '打底衫', 206, 34, 0),
(3054, '长款', 206, 34, 0),
(3055, '高领', 206, 34, 0),
(3056, '蝙蝠衫', 206, 34, 0),
(3057, '吊带/背心', 206, 34, 0),
(3058, '其它', 206, 34, 0),
(3059, '棉', 207, 34, 0),
(3060, '涤纶', 207, 34, 0),
(3061, '真丝', 207, 34, 0),
(3062, '亚麻', 207, 34, 0),
(3063, '丝光棉', 207, 34, 0),
(3064, '羊毛/羊绒', 207, 34, 0),
(3065, '腈纶/化纤', 207, 34, 0),
(3066, '棉混纺', 207, 34, 0),
(3067, '其它', 207, 34, 0),
(3068, '0-99', 208, 34, 0),
(3069, '100-199', 208, 34, 0),
(3070, '200-299', 208, 34, 0),
(3071, '300-399', 208, 34, 0),
(3072, '400-499', 208, 34, 0),
(3073, '500-599', 208, 34, 0),
(3074, '600-999', 208, 34, 0),
(3075, '1000以上', 208, 34, 0),
(3076, '长袖', 209, 34, 0),
(3077, '短袖', 209, 34, 0),
(3078, '七分袖', 209, 34, 0),
(3079, '无袖', 209, 34, 0),
(3080, '五分袖/中袖', 209, 34, 0),
(3081, '九分袖', 209, 34, 0),
(3082, '其它', 209, 34, 0),
(3083, '欧美', 210, 34, 0),
(3084, '日韩', 210, 34, 0),
(3085, 'OL通勤', 210, 34, 0),
(3086, '休闲', 210, 34, 0),
(3087, '原创设计', 210, 34, 0),
(3088, '百搭', 210, 34, 0),
(3089, '其它', 210, 34, 0),
(3090, '长袖', 211, 35, 0),
(3091, '短袖', 211, 35, 0),
(3092, '七分袖', 211, 35, 0),
(3093, '无袖', 211, 35, 0),
(3094, '九分袖', 211, 35, 0),
(3095, '五分袖/中袖', 211, 35, 0),
(3096, '其它', 211, 35, 0),
(3097, '纯色', 212, 35, 0),
(3098, '条纹', 212, 35, 0),
(3099, '格子', 212, 35, 0),
(3100, '千鸟格', 212, 35, 0),
(3101, '波点', 212, 35, 0),
(3102, '拼接', 212, 35, 0),
(3103, '撞色', 212, 35, 0),
(3104, '小碎花', 212, 35, 0),
(3105, '印花/绣花', 212, 35, 0),
(3106, '渐变', 212, 35, 0),
(3107, '豹纹', 212, 35, 0),
(3108, '骷髅', 212, 35, 0),
(3109, '手绘', 212, 35, 0),
(3110, '几何', 212, 35, 0),
(3111, '卡通', 212, 35, 0),
(3112, '字母', 212, 35, 0),
(3113, '脸谱', 212, 35, 0),
(3114, '头像', 212, 35, 0),
(3115, '动物', 212, 35, 0),
(3116, '植物', 212, 35, 0),
(3117, '建筑', 212, 35, 0),
(3118, '其它', 212, 35, 0),
(3119, '修身', 213, 35, 0),
(3120, '宽松', 213, 35, 0),
(3121, '直筒', 213, 35, 0),
(3122, '斗篷', 213, 35, 0),
(3123, '其他', 213, 35, 0),
(3124, '短款(35-50CM)', 214, 35, 0),
(3125, '常规款(51-65CM)', 214, 35, 0),
(3126, '中长款(66-80CM)', 214, 35, 0),
(3127, '长款(衣长大于80CM)', 214, 35, 0),
(3128, '圆领', 215, 35, 0),
(3129, 'V领', 215, 35, 0),
(3130, '立领', 215, 35, 0),
(3131, '翻领/polo领', 215, 35, 0),
(3132, '方领', 215, 35, 0),
(3133, '西装领', 215, 35, 0),
(3134, '荷叶领', 215, 35, 0),
(3135, '娃娃领', 215, 35, 0),
(3136, '连帽/帽领', 215, 35, 0),
(3137, '其它领型', 215, 35, 0),
(3138, '高领', 215, 35, 0),
(3139, '套头', 216, 36, 0),
(3140, '开衫', 216, 36, 0),
(3141, '套装', 216, 36, 0),
(3142, '长袖', 217, 36, 0),
(3143, '短袖', 217, 36, 0),
(3144, '七分袖', 217, 36, 0),
(3145, '无袖', 217, 36, 0),
(3146, '九分袖', 217, 36, 0),
(3147, '五分袖/中袖', 217, 36, 0),
(3148, '其它', 217, 36, 0),
(3149, '纯色', 218, 36, 0),
(3150, '条纹', 218, 36, 0),
(3151, '格子', 218, 36, 0),
(3152, '千鸟格', 218, 36, 0),
(3153, '波点', 218, 36, 0),
(3154, '拼接', 218, 36, 0),
(3155, '撞色', 218, 36, 0),
(3156, '小碎花', 218, 36, 0),
(3157, '印花/绣花', 218, 36, 0),
(3158, '渐变', 218, 36, 0),
(3159, '豹纹', 218, 36, 0),
(3160, '骷髅', 218, 36, 0),
(3161, '手绘', 218, 36, 0),
(3162, '几何', 218, 36, 0),
(3163, '卡通', 218, 36, 0),
(3164, '字母', 218, 36, 0),
(3165, '脸谱', 218, 36, 0),
(3166, '头像', 218, 36, 0),
(3167, '动物', 218, 36, 0),
(3168, '植物', 218, 36, 0),
(3169, '建筑', 218, 36, 0),
(3170, '其它', 218, 36, 0),
(3171, '修身', 219, 36, 0),
(3172, '宽松', 219, 36, 0),
(3173, '直筒', 219, 36, 0),
(3174, '其他', 219, 36, 0),
(3175, '薄款', 220, 36, 0),
(3176, '普通', 220, 36, 0),
(3177, '加厚', 220, 36, 0),
(3178, '抓绒', 220, 36, 0),
(3179, '棉内胆', 220, 36, 0),
(3180, '毛内胆', 220, 36, 0);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_bank`
--

CREATE TABLE IF NOT EXISTS `yunpay_bank` (
  `bank_id` int(11) NOT NULL,
  `bank_name` varchar(45) DEFAULT NULL,
  `bank_code` varchar(45) DEFAULT NULL COMMENT '银行代号'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yunpay_bank`
--

INSERT INTO `yunpay_bank` (`bank_id`, `bank_name`, `bank_code`) VALUES
(1, '中国工商银行', NULL),
(2, '中国建设银行', NULL),
(3, '中国银行', NULL),
(4, '中国农业银行', NULL),
(5, '招商银行', NULL),
(6, '中国邮政储蓄银行', NULL),
(7, '广发银行', NULL),
(8, '交通银行', NULL),
(9, '平安银行', NULL),
(10, '民生银行', NULL),
(11, '光大银行', NULL),
(12, '中信银行', NULL),
(13, '兴业银行', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_brand`
--

CREATE TABLE IF NOT EXISTS `yunpay_brand` (
  `brand_id` mediumint(11) NOT NULL COMMENT '索引ID',
  `brand_name` varchar(100) DEFAULT NULL COMMENT '品牌名称',
  `brand_initial` varchar(1) NOT NULL COMMENT '品牌首字母',
  `brand_class` varchar(50) DEFAULT NULL COMMENT '类别名称',
  `brand_pic` varchar(100) DEFAULT NULL COMMENT '图片',
  `brand_sort` tinyint(3) unsigned DEFAULT '0' COMMENT '排序',
  `brand_recommend` tinyint(1) DEFAULT '0' COMMENT '推荐，0为否，1为是，默认为0',
  `store_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `brand_apply` tinyint(1) NOT NULL DEFAULT '1' COMMENT '品牌申请，0为申请中，1为通过，默认为1，申请功能是会员使用，系统后台默认为1',
  `class_id` int(10) unsigned DEFAULT '0' COMMENT '所属分类id',
  `show_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '品牌展示类型 0表示图片 1表示文字 '
) ENGINE=InnoDB AUTO_INCREMENT=365 DEFAULT CHARSET=utf8 COMMENT='品牌表';

--
-- 转存表中的数据 `yunpay_brand`
--

INSERT INTO `yunpay_brand` (`brand_id`, `brand_name`, `brand_initial`, `brand_class`, `brand_pic`, `brand_sort`, `brand_recommend`, `store_id`, `brand_apply`, `class_id`, `show_type`) VALUES
(79, 'justyle', 'J', '服饰鞋帽', '04397468710494742_sm.jpg', 0, 0, 0, 1, 1, 0),
(80, '享爱.', 'H', '服饰鞋帽', '04397468934349942_sm.jpg', 0, 0, 0, 1, 1, 0),
(81, '派丽蒙', 'P', '女装', '04397469152627878_sm.jpg', 0, 0, 0, 1, 4, 0),
(82, '康妮雅', 'K', '女装', '04397471448679692_sm.jpg', 0, 0, 0, 1, 4, 0),
(83, '秀秀美', 'X', '女装', '04397471716977022_sm.jpg', 0, 0, 0, 1, 4, 0),
(84, '阿迪达斯', 'A', '服饰鞋帽', '04397471910652190_sm.jpg', 0, 1, 0, 1, 1, 0),
(85, '猫人', 'M', '内衣', '04397472152849925_sm.jpg', 0, 0, 0, 1, 6, 0),
(86, '茵曼（INMAN）', 'Y', 'T恤', '04397472336312422_sm.jpg', 0, 0, 0, 1, 12, 0),
(87, 'Hanes恒适', 'H', '服饰鞋帽', '04397472577467506_sm.jpg', 0, 0, 0, 1, 1, 0),
(88, '缪诗', 'M', '休闲鞋', '04397472716852803_sm.jpg', 0, 0, 0, 1, 74, 0),
(89, '真维斯', 'Z', '服饰鞋帽', '04397472838086984_sm.jpg', 0, 1, 0, 1, 1, 0),
(90, '金利来', 'J', '西服', '04397473042647991_sm.jpg', 0, 0, 0, 1, 47, 0),
(91, '其乐', 'Q', '休闲鞋', '04397473331842699_sm.jpg', 0, 1, 0, 1, 109, 0),
(92, 'Newbalance', 'N', '功能鞋', '04397473633585549_sm.jpg', 0, 1, 0, 1, 112, 0),
(93, '百丽', 'B', '女鞋', '04398088925179484_sm.png', 0, 1, 0, 1, 8, 0),
(94, '七匹狼', 'Q', '服饰鞋帽', '04398089136939537_sm.jpg', 0, 1, 0, 1, 1, 0),
(95, '李宁', 'L', '运动', '04398089270610035_sm.jpg', 0, 0, 0, 1, 7, 0),
(96, '佐丹奴', 'Z', '服饰鞋帽', '04398089412399747_sm.jpg', 0, 1, 0, 1, 1, 0),
(97, '百思图', 'B', '休闲鞋', '04398089574801901_sm.jpg', 0, 0, 0, 1, 93, 0),
(98, '斯波帝卡', 'S', '男装', '04398089726299223_sm.jpg', 0, 0, 0, 1, 5, 0),
(99, '梦特娇', 'M', '男装', '04398089942879365_sm.jpg', 0, 1, 0, 1, 5, 0),
(100, '宝姿', 'B', '服饰鞋帽', '04398090061006740_sm.jpg', 0, 1, 0, 1, 1, 0),
(101, '爱帝', 'A', '服饰鞋帽', '04398090218578648_sm.jpg', 0, 0, 0, 1, 1, 0),
(102, '她他/tata', 'T', '高跟鞋', '04398090459092275_sm.jpg', 0, 0, 0, 1, 91, 0),
(103, 'ELLE HOME', 'E', '服饰鞋帽', '04398090611386532_sm.jpg', 0, 1, 0, 1, 1, 0),
(104, 'esprit', 'E', '女装', '04398090828687339_sm.jpg', 0, 1, 0, 1, 4, 0),
(105, 'westside', 'W', '服饰鞋帽', '04398090975832253_sm.jpg', 0, 0, 0, 1, 1, 0),
(106, 'RDK', 'P', '睡衣', '04398091763582415_sm.jpg', 0, 0, 0, 1, 62, 0),
(107, '皮尔卡丹', 'P', '风衣', '04398091877500105_sm.jpg', 0, 0, 0, 1, 43, 0),
(108, '挪巍', 'N', '服饰鞋帽', '04398091973797599_sm.jpg', 0, 0, 0, 1, 1, 0),
(113, '波斯顿', 'B', '个护化妆', '04398099293923325_sm.jpg', 0, 0, 0, 1, 470, 0),
(114, '薇姿', 'W', '个护化妆', '04398099463167230_sm.jpg', 0, 0, 0, 1, 470, 0),
(115, '相宜本草', 'X', '个护化妆', '04398099611242673_sm.jpg', 0, 1, 0, 1, 470, 0),
(116, 'Dior', 'D', '个护化妆', '04398099738566948_sm.jpg', 0, 1, 0, 1, 470, 0),
(117, '苏菲', 'S', '个护化妆', '04398099870651075_sm.jpg', 0, 0, 0, 1, 470, 0),
(118, 'faceshop', 'F', '个护化妆', '04398100051941493_sm.jpg', 0, 0, 0, 1, 470, 0),
(119, '芙丽芳丝', 'F', '个护化妆', '04398100178308363_sm.jpg', 0, 0, 0, 1, 470, 0),
(120, '娇爽', 'J', '个护化妆', '04398100362129645_sm.jpg', 0, 0, 0, 1, 470, 0),
(121, '卡尼尔', 'K', '个护化妆', '04398100483927289_sm.jpg', 0, 0, 0, 1, 470, 0),
(122, '纪梵希', 'J', '个护化妆', '04398100614445814_sm.jpg', 0, 1, 0, 1, 470, 0),
(123, '护舒宝', 'H', '个护化妆', '04398100738554064_sm.jpg', 0, 0, 0, 1, 470, 0),
(124, '兰蔻', 'L', '个护化妆', '04398100899214207_sm.jpg', 0, 1, 0, 1, 470, 0),
(125, '娇兰', 'J', '个护化妆', '04398101035858820_sm.jpg', 0, 1, 0, 1, 470, 0),
(126, '高丝洁', 'G', '个护化妆', '04398101363358081_sm.jpg', 0, 0, 0, 1, 470, 0),
(127, '妮维雅', 'N', '个护化妆', '04398101539246004_sm.jpg', 0, 1, 0, 1, 470, 0),
(128, '高丝', 'G', '个护化妆', '04398101708424765_sm.jpg', 0, 0, 0, 1, 470, 0),
(129, '狮王', 'S', '个护化妆', '04398101929845854_sm.jpg', 0, 0, 0, 1, 470, 0),
(130, '雅顿', 'Y', '个护化妆', '04398102086535787_sm.jpg', 0, 1, 0, 1, 470, 0),
(131, 'M.A.C', 'M', '个护化妆', '04398102231196519_sm.jpg', 0, 0, 0, 1, 470, 0),
(132, '李施德林', 'L', '个护化妆', '04398102411008632_sm.jpg', 0, 0, 0, 1, 470, 0),
(133, '雅诗兰黛', 'Y', '个护化妆', '04398102581821577_sm.jpg', 0, 1, 0, 1, 470, 0),
(134, 'MISS FACE', 'M', '个护化妆', '04398102756025036_sm.jpg', 0, 0, 0, 1, 470, 0),
(135, '佳洁士', 'J', '个护化妆', '04398102918746492_sm.jpg', 0, 0, 0, 1, 470, 0),
(136, '资生堂', 'X', '个护化妆', '04398103163925153_sm.jpg', 0, 1, 0, 1, 470, 0),
(137, '倩碧', 'Q', '个护化妆', '04398103335196758_sm.jpg', 0, 0, 0, 1, 470, 0),
(138, 'benefit', 'B', '个护化妆', '04398103525876196_sm.jpg', 0, 0, 0, 1, 470, 0),
(139, 'SISLEY', 'S', '个护化妆', '04398103731155516_sm.jpg', 0, 0, 0, 1, 470, 0),
(140, '爱丽', 'A', '个护化妆', '04398103883736888_sm.jpg', 0, 0, 0, 1, 470, 0),
(141, 'BOBBI BROWN', 'B', '个护化妆', '04398104034802420_sm.jpg', 0, 0, 0, 1, 470, 0),
(142, 'SK-ll', 'S', '个护化妆', '04398104206717960_sm.jpg', 0, 1, 0, 1, 470, 0),
(143, '施华洛世奇', 'S', '珠宝手表', '04398116735872287_sm.jpg', 0, 1, 0, 1, 530, 0),
(144, '万宝龙', 'W', '珠宝手表', '04398116855649611_sm.jpg', 0, 0, 0, 1, 530, 0),
(145, 'CK', 'C', '珠宝手表', '04398116986166995_sm.jpg', 0, 1, 0, 1, 530, 0),
(146, 'Disney', 'D', '珠宝手表', '04398117134560677_sm.jpg', 0, 1, 0, 1, 530, 0),
(147, '佐卡伊', 'Z', '珠宝手表', '04398117259027285_sm.jpg', 0, 0, 0, 1, 530, 0),
(148, 'ZIPPO', 'Z', '', '04398117390207814_sm.gif', 0, 0, 0, 1, 0, 0),
(149, '梅花', 'M', '珠宝手表', '04398117504203345_sm.jpg', 0, 1, 0, 1, 530, 0),
(150, '高仕', 'G', '珠宝手表', '04398117735732690_sm.jpg', 0, 0, 0, 1, 530, 0),
(151, '宝玑', 'B', '珠宝手表', '04398117910949174_sm.jpg', 0, 0, 0, 1, 530, 0),
(152, '一生一石', 'Y', '珠宝手表', '04398118118206423_sm.jpg', 0, 0, 0, 1, 530, 0),
(153, 'IDee', 'I', '珠宝手表', '04398118344918440_sm.jpg', 0, 0, 0, 1, 530, 0),
(154, 'elle', 'E', '珠宝手表', '04398118494505137_sm.jpg', 0, 0, 0, 1, 530, 0),
(155, '卡西欧', 'K', '珠宝手表', '04398118617326698_sm.jpg', 0, 1, 0, 1, 530, 0),
(156, '爱卡', 'A', '珠宝手表', '04398118792328978_sm.jpg', 0, 0, 0, 1, 530, 0),
(157, '帝舵', 'D', '珠宝手表', '04398118894311290_sm.jpg', 0, 1, 0, 1, 530, 0),
(158, '新秀', 'X', '珠宝手表', '04398119032319322_sm.jpg', 0, 0, 0, 1, 530, 0),
(159, '九钻', 'J', '珠宝手表', '04398119151718735_sm.jpg', 0, 0, 0, 1, 530, 0),
(160, '卡地亚', 'K', '珠宝手表', '04398119311706852_sm.jpg', 0, 0, 0, 1, 530, 0),
(161, '蓝色多瑙河', 'L', '珠宝手表', '04398119501897486_sm.jpg', 0, 0, 0, 1, 530, 0),
(162, '浪琴', 'L', '珠宝手表', '04398119677440904_sm.jpg', 0, 0, 0, 1, 530, 0),
(163, '百利恒', 'B', '珠宝手表', '04398119859319840_sm.jpg', 0, 0, 0, 1, 530, 0),
(164, '欧米茄', 'O', '珠宝手表', '04398119996858692_sm.jpg', 0, 1, 0, 1, 530, 0),
(165, 'tissot', 'T', '珠宝手表', '04398120141178815_sm.jpg', 0, 1, 0, 1, 530, 0),
(166, '新光饰品', 'X', '珠宝手表', '04398120247306694_sm.jpg', 0, 0, 0, 1, 530, 0),
(167, '英雄', 'Y', '珠宝手表', '04398120419590838_sm.jpg', 0, 0, 0, 1, 530, 0),
(168, '瑞士军刀', 'R', '珠宝手表', '04398120584040229_sm.gif', 0, 0, 0, 1, 530, 0),
(169, '斯沃琪', 'S', '珠宝手表', '04398121090096799_sm.jpg', 0, 1, 0, 1, 530, 0),
(170, '阿玛尼', 'A', '珠宝手表', '04398121209932680_sm.jpg', 0, 1, 0, 1, 530, 0),
(171, '亨得利', 'H', '珠宝手表', '04398125089603514_sm.jpg', 0, 0, 0, 1, 530, 0),
(172, 'lux-women', 'L', '珠宝手表', '04398125296052150_sm.jpg', 0, 0, 0, 1, 530, 0),
(173, 'ooh Dear', 'O', '珠宝手表', '04398125473712411_sm.jpg', 0, 0, 0, 1, 530, 0),
(174, 'acer', 'A', '数码办公', '04398155389308089_sm.jpg', 0, 0, 0, 1, 256, 0),
(175, '清华同方', 'Q', '数码办公', '04398155613517981_sm.jpg', 0, 0, 0, 1, 256, 0),
(176, '富士通', 'F', '数码办公', '04398155751072786_sm.jpg', 0, 0, 0, 1, 256, 0),
(177, '微软', 'W', '数码办公', '04398155862912765_sm.jpg', 0, 0, 0, 1, 256, 0),
(178, '得力', 'D', '数码办公', '04398156045665837_sm.jpg', 0, 0, 0, 1, 256, 0),
(179, 'DELL', 'D', '数码办公', '04398156232757027_sm.jpg', 0, 1, 0, 1, 256, 0),
(180, 'ThinkPad', 'T', '数码办公', '04398156358858442_sm.jpg', 0, 0, 0, 1, 256, 0),
(181, '联想打印机', 'L', '数码办公', '04398156503421310_sm.jpg', 0, 0, 0, 1, 256, 0),
(182, '金士顿', 'J', '数码办公', '04398156705753579_sm.jpg', 0, 1, 0, 1, 256, 0),
(183, 'TP-LINK', 'T', '数码办公', '04398156873572761_sm.jpg', 0, 1, 0, 1, 256, 0),
(184, '华硕', 'H', '数码办公', '04398157012150899_sm.jpg', 0, 0, 0, 1, 256, 0),
(185, '罗技', 'L', '数码办公', '04398157235673753_sm.jpg', 0, 1, 0, 1, 256, 0),
(186, 'D-Link', 'D', '数码办公', '04398157356404105_sm.jpg', 0, 0, 0, 1, 256, 0),
(187, '雷蛇', 'L', '数码办公', '04398157472174891_sm.jpg', 0, 1, 0, 1, 256, 0),
(188, 'IT-CEO', 'I', '数码办公', '04398157595321784_sm.jpg', 0, 0, 0, 1, 256, 0),
(189, 'hyundri', 'H', '数码办公', '04398157712394024_sm.jpg', 0, 0, 0, 1, 256, 0),
(190, '惠普', 'H', '数码办公', '04398157881561725_sm.jpg', 0, 0, 0, 1, 256, 0),
(191, '迈乐', 'M', '数码办公', '04398158065769057_sm.jpg', 0, 0, 0, 1, 256, 0),
(192, '爱普生', 'A', '数码办公', '04398158266047493_sm.jpg', 0, 1, 0, 1, 256, 0),
(193, '三木', 'S', '数码办公', '04398158379932048_sm.jpg', 0, 0, 0, 1, 256, 0),
(194, '忆捷', 'Y', '数码办公', '04398158508475720_sm.jpg', 0, 0, 0, 1, 256, 0),
(195, '佰科', 'B', '数码办公', '04398158666713881_sm.jpg', 0, 0, 0, 1, 256, 0),
(196, '飞利浦', 'F', '数码办公', '04398158808225051_sm.jpg', 0, 1, 0, 1, 256, 0),
(197, '雷柏', 'L', '数码办公', '04398158987559915_sm.jpg', 0, 0, 0, 1, 256, 0),
(198, '双飞燕', 'S', '数码办公', '04398159147857437_sm.jpg', 0, 0, 0, 1, 256, 0),
(199, '网件', 'W', '数码办公', '04398159314915358_sm.jpg', 0, 0, 0, 1, 256, 0),
(200, '山泽', 'S', '数码办公', '04398159479959395_sm.jpg', 0, 0, 0, 1, 256, 0),
(201, '松下', 'S', '数码办公', '04398159595550035_sm.jpg', 0, 1, 0, 1, 256, 0),
(202, 'TPOS', 'T', '数码办公', '04398159795526441_sm.jpg', 0, 0, 0, 1, 256, 0),
(203, '富勒', 'F', '数码办公', '04398159927301628_sm.jpg', 0, 0, 0, 1, 256, 0),
(204, '北通', 'B', '数码办公', '04398160061664664_sm.jpg', 0, 0, 0, 1, 256, 0),
(205, 'romoss', 'R', '数码办公', '04398160187629402_sm.jpg', 0, 0, 0, 1, 256, 0),
(206, '索爱', 'S', '数码办公', '04398160348310562_sm.gif', 0, 1, 0, 1, 256, 0),
(207, '台电', 'T', '数码办公', '04398160575221477_sm.jpg', 0, 0, 0, 1, 256, 0),
(208, '三星', 'S', '数码办公', '04398160720944823_sm.jpg', 0, 1, 0, 1, 256, 0),
(209, '理光', 'L', '数码办公', '04398160857676307_sm.gif', 0, 0, 0, 1, 256, 0),
(210, '飞毛腿', 'F', '数码办公', '04398161023292593_sm.jpg', 0, 0, 0, 1, 256, 0),
(211, '阿尔卡特', 'A', '数码办公', '04398161143888870_sm.jpg', 0, 0, 0, 1, 256, 0),
(212, '诺基亚', 'N', '数码办公', '04398161259006857_sm.gif', 0, 0, 0, 1, 256, 0),
(213, '摩托罗拉', 'M', '数码办公', '04398161410885588_sm.gif', 0, 0, 0, 1, 256, 0),
(214, '苹果', 'P', '数码办公', '04398168923750202_sm.png', 0, 1, 0, 1, 256, 0),
(215, 'HTC', 'H', '数码办公', '04398169850955399_sm.jpg', 0, 0, 0, 1, 256, 0),
(216, '九阳', 'J', '家用电器', '04399844516657174_sm.jpg', 0, 0, 0, 1, 308, 0),
(217, '索尼', 'S', '家用电器', '04399833099806870_sm.gif', 0, 0, 0, 1, 308, 0),
(218, '格力', 'G', '家用电器', '04399833262328490_sm.jpg', 0, 0, 0, 1, 308, 0),
(219, '夏普', 'H', '家用电器', '04399833425234004_sm.jpg', 0, 0, 0, 1, 308, 0),
(220, '美的', 'M', '家用电器', '04399833601121412_sm.jpg', 0, 0, 0, 1, 308, 0),
(221, '博朗', 'B', '家用电器', '04399833768343488_sm.gif', 0, 0, 0, 1, 308, 0),
(222, 'TCL', 'T', '家用电器', '04399833953558287_sm.jpg', 0, 0, 0, 1, 308, 0),
(223, '欧姆龙', 'O', '家用电器', '04399834117653152_sm.gif', 0, 0, 0, 1, 308, 0),
(224, '苏泊尔', 'S', '家用电器', '04399834427362760_sm.jpg', 0, 0, 0, 1, 308, 0),
(225, '伊莱克斯', 'Y', '家用电器', '04399834676870929_sm.gif', 0, 0, 0, 1, 308, 0),
(226, '艾力斯特', 'A', '家用电器', '04399835435836906_sm.jpg', 0, 0, 0, 1, 308, 0),
(227, '西门子', 'X', '家用电器', '04399835594337307_sm.gif', 0, 0, 0, 1, 308, 0),
(228, '三菱电机', 'S', '家用电器', '04399835807315767_sm.gif', 0, 0, 0, 1, 308, 0),
(229, '奔腾', 'S', '家用电器', '04399836030618924_sm.jpg', 0, 0, 0, 1, 308, 0),
(230, '三洋', 'S', '家用电器', '04399836185660687_sm.gif', 0, 0, 0, 1, 308, 0),
(231, '大金', 'D', '家用电器', '04399836403301996_sm.jpg', 0, 0, 0, 1, 308, 0),
(232, '三星电器', 'S', '家用电器', '04399836619819860_sm.jpg', 0, 0, 0, 1, 308, 0),
(233, '海尔', 'H', '家用电器', '04399837024444210_sm.jpg', 0, 0, 0, 1, 308, 0),
(234, '格兰仕', 'G', '家用电器', '04399837873721609_sm.jpg', 0, 0, 0, 1, 308, 0),
(235, '海信', 'H', '家用电器', '04399838032416433_sm.jpg', 0, 0, 0, 1, 308, 0),
(236, '博世', 'B', '家用电器', '04399838243363042_sm.jpg', 0, 0, 0, 1, 308, 0),
(237, '老板', 'L', '家用电器', '04399838473427197_sm.jpg', 0, 0, 0, 1, 308, 0),
(238, '奥克斯', 'A', '家用电器', '04399838633002147_sm.jpg', 0, 0, 0, 1, 308, 0),
(239, 'LG', 'L', '家用电器', '04399838782976323_sm.jpg', 0, 0, 0, 1, 308, 0),
(240, '创维', 'C', '家用电器', '04399839110204841_sm.jpg', 0, 0, 0, 1, 308, 0),
(241, '松下电器', 'S', '家用电器', '04399839604098052_sm.gif', 0, 0, 0, 1, 308, 0),
(242, '中国联通', 'Z', '虚拟充值', '04399847297781057_sm.jpg', 0, 0, 0, 1, 1037, 0),
(243, '中国电信', 'Z', '虚拟充值', '04399847472066981_sm.jpg', 0, 0, 0, 1, 1037, 0),
(244, '中国移动', 'Z', '虚拟充值', '04399847612667714_sm.jpg', 0, 0, 0, 1, 1037, 0),
(245, '一品玉', 'Y', '食品饮料', '04399854316938195_sm.jpg', 0, 0, 0, 1, 593, 0),
(246, '金奥力', 'J', '食品饮料', '04399854503149255_sm.jpg', 0, 0, 0, 1, 593, 0),
(247, '北大荒', 'B', '食品饮料', '04399854638913791_sm.jpg', 0, 0, 0, 1, 593, 0),
(248, '健安喜', 'J', '食品饮料', '04399854806939714_sm.jpg', 0, 0, 0, 1, 593, 0),
(249, '屯河', 'T', '食品饮料', '04399854945115195_sm.jpg', 0, 0, 0, 1, 593, 0),
(250, '养生堂', 'Y', '食品饮料', '04399855140966866_sm.jpg', 0, 0, 0, 1, 593, 0),
(251, '同庆和堂', 'T', '食品饮料', '04399855332734276_sm.jpg', 0, 0, 0, 1, 593, 0),
(252, '黄飞红', 'H', '食品饮料', '04399855513686549_sm.jpg', 0, 0, 0, 1, 593, 0),
(253, '乐力', 'L', '食品饮料', '04399855699218750_sm.jpg', 0, 0, 0, 1, 593, 0),
(254, '汤臣倍健', 'T', '食品饮料', '04399855941379731_sm.jpg', 0, 0, 0, 1, 593, 0),
(255, '康比特', 'K', '食品饮料', '04399856135110739_sm.jpg', 0, 0, 0, 1, 593, 0),
(256, '喜瑞', 'X', '食品饮料', '04399856323294870_sm.jpg', 0, 0, 0, 1, 593, 0),
(257, '同仁堂', 'T', '食品饮料', '04399856454919811_sm.jpg', 0, 0, 0, 1, 593, 0),
(258, '白兰氏', 'B', '食品饮料', '04399856638765013_sm.jpg', 0, 0, 0, 1, 593, 0),
(259, 'Lumi', 'L', '食品饮料', '04399856804968818_sm.jpg', 0, 0, 0, 1, 593, 0),
(260, '新西兰十一坊', 'X', '食品饮料', '04399856948519746_sm.jpg', 0, 0, 0, 1, 593, 0),
(261, '自然之宝', 'Z', '食品饮料', '04399857092677752_sm.jpg', 0, 0, 0, 1, 593, 0),
(262, '善存', 'S', '食品饮料', '04399857246559825_sm.jpg', 0, 0, 0, 1, 593, 0),
(263, '长城葡萄酒', 'C', '食品饮料', '04399857399887704_sm.jpg', 0, 0, 0, 1, 593, 0),
(264, '凯镛', 'K', '食品饮料', '04399857579422195_sm.jpg', 0, 0, 0, 1, 593, 0),
(267, '惠氏', 'H', '母婴用品', '04399878077210018_sm.jpg', 0, 0, 0, 1, 959, 0),
(268, 'lala布书', 'L', '母婴用品', '04399878481448839_sm.jpg', 0, 0, 0, 1, 959, 0),
(269, '美赞臣', 'M', '母婴用品', '04399878617014779_sm.jpg', 0, 0, 0, 1, 959, 0),
(270, '好奇', 'H', '母婴用品', '04399878791943342_sm.jpg', 0, 0, 0, 1, 959, 0),
(271, '多美', 'D', '母婴用品', '04399878980307860_sm.jpg', 0, 0, 0, 1, 959, 0),
(272, '嘉宝', 'J', '母婴用品', '04399879383821119_sm.jpg', 0, 0, 0, 1, 959, 0),
(273, '孩之宝', 'H', '母婴用品', '04399879573077116_sm.jpg', 0, 0, 0, 1, 959, 0),
(274, '嗳呵', 'A', '母婴用品', '04399879712252398_sm.jpg', 0, 0, 0, 1, 959, 0),
(275, '美斯特伦', 'M', '母婴用品', '04399879861821747_sm.jpg', 0, 0, 0, 1, 959, 0),
(276, '乐高', 'L', '母婴用品', '04399880083330972_sm.jpg', 0, 0, 0, 1, 959, 0),
(277, '芭比', 'B', '母婴用品', '04399880244694286_sm.jpg', 0, 0, 0, 1, 959, 0),
(278, 'NUK', 'N', '母婴用品', '04399880420786755_sm.jpg', 0, 0, 0, 1, 959, 0),
(279, '魔法玉米', 'M', '母婴用品', '04399880604749242_sm.jpg', 0, 0, 0, 1, 959, 0),
(280, '宝贝第一', 'B', '母婴用品', '04399880757446523_sm.jpg', 0, 0, 0, 1, 959, 0),
(281, '强生', 'Q', '母婴用品', '04399880892528550_sm.jpg', 0, 0, 0, 1, 959, 0),
(282, '澳优', 'A', '母婴用品', '04399881087936122_sm.jpg', 0, 0, 0, 1, 959, 0),
(283, '木马智慧', 'M', '母婴用品', '04399881246572965_sm.jpg', 0, 0, 0, 1, 959, 0),
(284, '百立乐', 'B', '母婴用品', '04399881709264364_sm.jpg', 0, 0, 0, 1, 959, 0),
(285, '雀巢', 'Q', '母婴用品', '04399881950170970_sm.jpg', 0, 0, 0, 1, 959, 0),
(286, '帮宝适', 'B', '母婴用品', '04399882134949479_sm.jpg', 0, 0, 0, 1, 959, 0),
(287, '万代', 'W', '母婴用品', '04399882291234767_sm.jpg', 0, 0, 0, 1, 959, 0),
(288, '亲贝', 'Q', '母婴用品', '04399882442124015_sm.jpg', 0, 0, 0, 1, 959, 0),
(289, '十月天使', 'S', '母婴用品', '04399882581513663_sm.jpg', 0, 0, 0, 1, 959, 0),
(290, '多美滋', 'D', '母婴用品', '04399882826616164_sm.jpg', 0, 0, 0, 1, 959, 0),
(291, '星辉', 'X', '母婴用品', '04399882966084988_sm.jpg', 0, 0, 0, 1, 959, 0),
(292, '布朗博士', 'B', '母婴用品', '04399883157641690_sm.jpg', 0, 0, 0, 1, 959, 0),
(293, '新安怡', 'X', '母婴用品', '04399883297614786_sm.jpg', 0, 0, 0, 1, 959, 0),
(294, '费雪', 'F', '母婴用品', '04399883534332035_sm.jpg', 0, 0, 0, 1, 959, 0),
(295, 'Hipp', 'H', '母婴用品', '04399883690219411_sm.jpg', 0, 0, 0, 1, 959, 0),
(296, '新大王', 'X', '母婴用品', '04399883855598553_sm.jpg', 0, 0, 0, 1, 959, 0),
(297, '雅培', 'Y', '母婴用品', '04399884035362889_sm.jpg', 0, 0, 0, 1, 959, 0),
(298, '亨氏', 'H', '母婴用品', '04399884182772511_sm.jpg', 0, 0, 0, 1, 959, 0),
(299, '十月妈咪', 'S', '母婴用品', '04399884360526483_sm.jpg', 0, 0, 0, 1, 959, 0),
(300, '好孩子', 'H', '母婴用品', '04399884512865285_sm.jpg', 0, 0, 0, 1, 959, 0),
(301, '婴姿坊', 'Y', '母婴用品', '04399884644632532_sm.jpg', 0, 0, 0, 1, 959, 0),
(302, '妈咪宝贝', 'M', '母婴用品', '04399884799920935_sm.jpg', 0, 0, 0, 1, 959, 0),
(303, '直觉', 'Z', '运动健康', '04399889262024650_sm.jpg', 0, 0, 0, 1, 662, 0),
(304, '世达球', 'S', '运动健康', '04399889410183423_sm.jpg', 0, 0, 0, 1, 662, 0),
(305, '悠度', 'Y', '运动健康', '04399889744222357_sm.jpg', 0, 0, 0, 1, 662, 0),
(306, '威尔胜', 'W', '运动健康', '04399889941968796_sm.jpg', 0, 0, 0, 1, 662, 0),
(307, '远洋瑜伽', 'Y', '运动健康', '04399890266352034_sm.jpg', 0, 0, 0, 1, 662, 0),
(308, '信乐', 'X', '运动健康', '04399890429362085_sm.jpg', 0, 0, 0, 1, 662, 0),
(309, '诺可文', 'N', '运动健康', '04399890643925803_sm.jpg', 0, 0, 0, 1, 662, 0),
(310, '艾威', 'A', '运动健康', '04399890796771131_sm.jpg', 0, 0, 0, 1, 662, 0),
(311, 'LELO', 'L', '运动健康', '04399890952734102_sm.jpg', 0, 0, 0, 1, 662, 0),
(312, '乔山', 'Q', '运动健康', '04399891122713199_sm.jpg', 0, 0, 0, 1, 662, 0),
(313, '皮克朋', 'P', '运动健康', '04399891285897466_sm.jpg', 0, 0, 0, 1, 662, 0),
(314, '捷安特', 'J', '运动健康', '04399891438458842_sm.jpg', 0, 0, 0, 1, 662, 0),
(315, '开普特', 'K', '运动健康', '04399891598799644_sm.jpg', 0, 0, 0, 1, 662, 0),
(316, '火枫', 'H', '运动健康', '04399891771381530_sm.jpg', 0, 0, 0, 1, 662, 0),
(317, 'INDEED', 'I', '运动健康', '04399891911058029_sm.jpg', 0, 0, 0, 1, 662, 0),
(318, '欧亚马', 'O', '运动健康', '04399892067310657_sm.jpg', 0, 0, 0, 1, 662, 0),
(319, '李斯特', 'L', '运动健康', '04399892199751417_sm.jpg', 0, 0, 0, 1, 662, 0),
(320, '乐美福', 'L', '运动健康', '04399892359082323_sm.jpg', 0, 0, 0, 1, 662, 0),
(321, '以比赞', 'Y', '运动健康', '04399892526357198_sm.jpg', 0, 0, 0, 1, 662, 0),
(322, '皮尔瑜伽', 'P', '运动健康', '04399893307910546_sm.jpg', 0, 0, 0, 1, 662, 0),
(323, '以诗萜', 'Y', '运动健康', '04399893452531024_sm.jpg', 0, 0, 0, 1, 662, 0),
(324, '斯伯丁', 'S', '运动健康', '04399893596931049_sm.jpg', 0, 0, 0, 1, 662, 0),
(326, '玛克', 'M', '', '04399902137097199_sm.jpg', 0, 0, 0, 1, 0, 0),
(327, '美好家', 'M', '', '04399902244747580_sm.jpg', 0, 0, 0, 1, 0, 0),
(328, '溢彩年华', 'Y', '', '04399902391635130_sm.jpg', 0, 0, 0, 1, 0, 0),
(329, '欧司朗', 'O', '', '04399902537418591_sm.jpg', 0, 0, 0, 1, 0, 0),
(330, '世家洁具', 'S', '', '04399902668760247_sm.jpg', 0, 0, 0, 1, 0, 0),
(331, '天堂伞', 'T', '', '04399902780394855_sm.jpg', 0, 0, 0, 1, 0, 0),
(332, '慧乐家', 'H', '', '04399902896835151_sm.jpg', 0, 0, 0, 1, 0, 0),
(333, '希格', 'X', '', '04399903024936544_sm.jpg', 0, 0, 0, 1, 0, 0),
(334, '生活诚品', 'S', '', '04399903153847612_sm.jpg', 0, 0, 0, 1, 0, 0),
(335, '爱仕达', 'A', '', '04399903259361371_sm.jpg', 0, 0, 0, 1, 0, 0),
(336, '罗莱', 'L', '', '04399903404912119_sm.jpg', 0, 0, 0, 1, 0, 0),
(337, '索客', 'S', '', '04399903541756673_sm.jpg', 0, 0, 0, 1, 0, 0),
(338, '好事达', 'H', '', '04399903715622158_sm.jpg', 0, 0, 0, 1, 0, 0),
(339, '安睡宝', 'A', '', '04399903832203331_sm.jpg', 0, 0, 0, 1, 0, 0),
(340, '博洋家纺', 'B', '', '04399903956723469_sm.jpg', 0, 0, 0, 1, 0, 0),
(341, '空间大师', 'K', '', '04399904058344749_sm.jpg', 0, 0, 0, 1, 0, 0),
(342, '富安娜', 'F', '', '04399904168163421_sm.jpg', 0, 0, 0, 1, 0, 0),
(343, '三光云彩', 'S', '', '04399904279499345_sm.jpg', 0, 0, 0, 1, 0, 0),
(344, '乔曼帝', 'Q', '', '04399904423386126_sm.jpg', 0, 0, 0, 1, 0, 0),
(345, '乐扣乐扣', 'L', '', '04399904614221217_sm.jpg', 0, 0, 0, 1, 0, 0),
(348, '奥唯嘉（Ovega）', 'A', '文胸', '04431812331259168_sm.jpg', 0, 0, 0, 1, 58, 0),
(351, '曼妮芬（ManniForm）', 'M', '内衣', '04431810033957836_sm.jpg', 0, 0, 0, 1, 6, 0),
(352, '婷美（TINGMEI）', 'T', '内衣', '04431809546541815_sm.png', 0, 0, 0, 1, 6, 0),
(353, '古今', 'G', '内衣', '04431807497959652_sm.jpg', 0, 0, 0, 1, 6, 0),
(358, '金史密斯（KINGSMITH）', 'J', '健身器械', '04420592440315393_small.gif', 0, 1, 4, 1, 691, 0),
(359, '周大福', 'Z', '纯金K金饰品', '04420650490304114_sm.jpg', 0, 0, 0, 1, 532, 0),
(360, '周生生', 'Z', '纯金K金饰品', '04420650201635924_sm.jpg', 0, 0, 0, 1, 532, 0),
(364, 'BH (必艾奇)', 'B', '运动器械', '04420633630909218_small.jpg', 0, 1, 4, 1, 665, 0);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_cart`
--

CREATE TABLE IF NOT EXISTS `yunpay_cart` (
  `cart_id` int(11) NOT NULL COMMENT '购物车id',
  `buyer_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '买家id',
  `store_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '店铺id',
  `store_name` varchar(50) NOT NULL DEFAULT '' COMMENT '店铺名称',
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商品id',
  `goods_name` varchar(100) NOT NULL COMMENT '商品名称',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `goods_num` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '购买商品数量',
  `goods_image` varchar(100) NOT NULL COMMENT '商品图片',
  `bl_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '组合套装ID'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购物车数据表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_complain`
--

CREATE TABLE IF NOT EXISTS `yunpay_complain` (
  `complain_id` int(11) NOT NULL COMMENT '投诉id',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `order_goods_id` int(10) unsigned DEFAULT '0' COMMENT '订单商品ID',
  `accuser_id` int(11) NOT NULL COMMENT '原告id',
  `accuser_name` varchar(50) NOT NULL COMMENT '原告名称',
  `accused_id` int(11) NOT NULL COMMENT '被告id',
  `accused_name` varchar(50) NOT NULL COMMENT '被告名称',
  `complain_subject_content` varchar(50) NOT NULL COMMENT '投诉主题',
  `complain_subject_id` int(11) NOT NULL COMMENT '投诉主题id',
  `complain_content` varchar(255) NOT NULL COMMENT '投诉内容',
  `complain_pic1` varchar(100) NOT NULL COMMENT '投诉图片1',
  `complain_pic2` varchar(100) NOT NULL COMMENT '投诉图片2',
  `complain_pic3` varchar(100) NOT NULL COMMENT '投诉图片3',
  `complain_datetime` int(11) NOT NULL COMMENT '投诉时间',
  `complain_handle_datetime` int(11) NOT NULL COMMENT '投诉处理时间',
  `complain_handle_member_id` int(11) NOT NULL COMMENT '投诉处理人id',
  `appeal_message` varchar(255) NOT NULL COMMENT '申诉内容',
  `appeal_datetime` int(11) NOT NULL COMMENT '申诉时间',
  `appeal_pic1` varchar(100) NOT NULL COMMENT '申诉图片1',
  `appeal_pic2` varchar(100) NOT NULL COMMENT '申诉图片2',
  `appeal_pic3` varchar(100) NOT NULL COMMENT '申诉图片3',
  `final_handle_message` varchar(255) NOT NULL COMMENT '最终处理意见',
  `final_handle_datetime` int(11) NOT NULL COMMENT '最终处理时间',
  `final_handle_member_id` int(11) NOT NULL COMMENT '最终处理人id',
  `complain_state` tinyint(4) NOT NULL COMMENT '投诉状态(10-新投诉/20-投诉通过转给被投诉人/30-被投诉人已申诉/40-提交仲裁/99-已关闭)',
  `complain_active` tinyint(4) NOT NULL DEFAULT '1' COMMENT '投诉是否通过平台审批(1未通过/2通过)'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='投诉表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_complain_subject`
--

CREATE TABLE IF NOT EXISTS `yunpay_complain_subject` (
  `complain_subject_id` int(11) NOT NULL COMMENT '投诉主题id',
  `complain_subject_content` varchar(50) NOT NULL COMMENT '投诉主题',
  `complain_subject_desc` varchar(100) NOT NULL COMMENT '投诉主题描述',
  `complain_subject_state` tinyint(4) NOT NULL COMMENT '投诉主题状态(1-有效/2-失效)'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='投诉主题表';

--
-- 转存表中的数据 `yunpay_complain_subject`
--

INSERT INTO `yunpay_complain_subject` (`complain_subject_id`, `complain_subject_content`, `complain_subject_desc`, `complain_subject_state`) VALUES
(1, '商家不同意退款', '买家申请退款被拒绝。', 2),
(2, '未收到货', '交易成功，未收到货，钱已经付给商家，可进行维权。', 1),
(3, '售后保障服务', '交易完成后30天内，在使用商品过程中，发现商品有质量问题或无法正常使用，可进行维权。', 1);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_complain_talk`
--

CREATE TABLE IF NOT EXISTS `yunpay_complain_talk` (
  `talk_id` int(11) NOT NULL COMMENT '投诉对话id',
  `complain_id` int(11) NOT NULL COMMENT '投诉id',
  `talk_member_id` int(11) NOT NULL COMMENT '发言人id',
  `talk_member_name` varchar(50) NOT NULL COMMENT '发言人名称',
  `talk_member_type` varchar(10) NOT NULL COMMENT '发言人类型(1-投诉人/2-被投诉人/3-平台)',
  `talk_content` varchar(255) NOT NULL COMMENT '发言内容',
  `talk_state` tinyint(4) NOT NULL COMMENT '发言状态(1-显示/2-不显示)',
  `talk_admin` int(11) NOT NULL DEFAULT '0' COMMENT '对话管理员，屏蔽对话人的id',
  `talk_datetime` int(11) NOT NULL COMMENT '对话发表时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='投诉对话表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_consult`
--

CREATE TABLE IF NOT EXISTS `yunpay_consult` (
  `consult_id` int(10) unsigned NOT NULL COMMENT '咨询编号',
  `goods_id` int(11) unsigned DEFAULT '0' COMMENT '商品编号',
  `goods_name` varchar(100) NOT NULL COMMENT '商品名称',
  `member_id` int(11) NOT NULL DEFAULT '0' COMMENT '咨询发布者会员编号(0：游客)',
  `member_name` varchar(100) DEFAULT NULL COMMENT '会员名称',
  `store_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '店铺编号',
  `store_name` varchar(50) NOT NULL COMMENT '店铺名称',
  `ct_id` int(10) unsigned NOT NULL COMMENT '咨询类型',
  `consult_content` varchar(255) DEFAULT NULL COMMENT '咨询内容',
  `consult_addtime` int(10) DEFAULT NULL COMMENT '咨询发布时间',
  `consult_reply` varchar(255) NOT NULL COMMENT '咨询回复内容',
  `consult_reply_time` int(10) DEFAULT NULL COMMENT '咨询回复时间',
  `isanonymous` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0表示不匿名 1表示匿名'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品咨询表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_consult_type`
--

CREATE TABLE IF NOT EXISTS `yunpay_consult_type` (
  `ct_id` int(10) unsigned NOT NULL COMMENT '咨询类型id',
  `ct_name` varchar(10) NOT NULL COMMENT '咨询类型名称',
  `ct_introduce` text NOT NULL COMMENT '咨询类型详细介绍',
  `ct_sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '咨询类型排序'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='咨询类型表';

--
-- 转存表中的数据 `yunpay_consult_type`
--

INSERT INTO `yunpay_consult_type` (`ct_id`, `ct_name`, `ct_introduce`, `ct_sort`) VALUES
(1, '商品咨询', '&lt;strong&gt;商城承诺&lt;/strong&gt;：商品均为原装正品行货，自带机打发票，严格执行国家三包政策，享受全国联保服务。&lt;br /&gt;\r\n&lt;strong&gt;功能咨询&lt;/strong&gt;：咨询商品功能建议您拨打各品牌的官方客服电话，以便获得更准确的信息。', 1),
(2, '支付问题', '&lt;strong&gt;大额支付&lt;/strong&gt;：快钱支付中的招行、工行、建行、农行、广发支持大额支付，最高单笔一次支付10000元。&lt;br /&gt;\r\n&lt;strong&gt;货到付款&lt;/strong&gt;：只有官方店铺支持货到付款功能。&lt;br /&gt;', 2),
(3, '发票及保修', '&lt;strong&gt;商城承诺&lt;/strong&gt;：商品均为原装正品行货，自带机打发票，严格执行国家三包政策，享受全国联保服务。&lt;br /&gt;\r\n&lt;strong&gt;发票类型&lt;/strong&gt;：商城所售商品均自带机打发票，在提供相关企业资料证明后，可申请开取增值税发票。&lt;br /&gt;\r\n&lt;strong&gt;退 换 货&lt;/strong&gt;：商城为您提供完善的退换货服务。', 3),
(4, '促销及赠品', '', 4);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_coupons`
--

CREATE TABLE IF NOT EXISTS `yunpay_coupons` (
  `id` int(11) NOT NULL COMMENT '自增ID',
  `sn` varchar(50) NOT NULL COMMENT '卡号',
  `denomination` decimal(10,2) NOT NULL COMMENT '面额',
  `batchflag` varchar(20) NOT NULL COMMENT '批次标识',
  `admin_name` varchar(50) DEFAULT NULL COMMENT '创建者名称',
  `create_at` int(10) unsigned NOT NULL COMMENT '创建时间',
  `use_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用时间',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态 0可用 1已用 2已删',
  `member_id` int(11) NOT NULL DEFAULT '0' COMMENT '使用者会员ID',
  `member_name` varchar(50) DEFAULT NULL COMMENT '使用者会员名称',
  `to_date` int(11) NOT NULL COMMENT '有效期'
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 COMMENT='房车电子券';

--
-- 转存表中的数据 `yunpay_coupons`
--

INSERT INTO `yunpay_coupons` (`id`, `sn`, `denomination`, `batchflag`, `admin_name`, `create_at`, `use_at`, `state`, `member_id`, `member_name`, `to_date`) VALUES
(21, 'U-ShgT-yWy8-4pwr-zFz6', '200.00', 'upgrade', 'system', 1468314612, 0, 0, 252, '13450226610', 1499788800),
(22, 'U-1FTc-z57x-OfZL-hWpw', '200.00', 'upgrade', 'system', 1468314612, 0, 0, 252, '13450226610', 1499788800),
(23, 'U-iiQB-1qyF-Gb5t-bR7K', '200.00', 'upgrade', 'system', 1468314612, 0, 0, 252, '13450226610', 1499788800),
(24, 'U-7GZd-9IgX-99u4-UJ9T', '200.00', 'upgrade', 'system', 1468314612, 0, 0, 252, '13450226610', 1499788800),
(25, 'U-bSpZ-K88V-gnXy-1znO', '200.00', 'upgrade', 'system', 1468314612, 0, 0, 252, '13450226610', 1499788800),
(26, 'U-uLQI-NAA7-BjKK-OULL', '200.00', 'upgrade', 'system', 1468314612, 1468314873, 1, 252, '13450226610', 1499788800),
(30, 'U-vm3h-dlbB-toBT-gU5f', '200.00', 'upgrade', 'system', 1468338511, 0, 0, 236, '18680564089', 1499788800),
(31, 'U-HE9d-0fcc-DjP3-d04X', '200.00', 'upgrade', 'system', 1468338511, 0, 0, 236, '18680564089', 1499788800),
(32, 'U-gZPZ-bfHm-dxTX-6BwT', '200.00', 'upgrade', 'system', 1468338511, 0, 0, 236, '18680564089', 1499788800),
(33, 'U-8iXx-53ws-OGwM-Qdy6', '200.00', 'upgrade', 'system', 1468338511, 0, 0, 236, '18680564089', 1499788800),
(34, 'U-0fmF-AJks-lfZz-YC5B', '200.00', 'upgrade', 'system', 1468338511, 0, 0, 236, '18680564089', 1499788800),
(35, 'U-KKWu-x98x-A9lh-Ze42', '200.00', 'upgrade', 'system', 1468338511, 0, 0, 236, '18680564089', 1499788800),
(36, 'U-kK9O-77ts-LN8Y-TatH', '200.00', 'upgrade', 'system', 1468374741, 0, 0, 265, '13826472682', 1499875200),
(37, 'U-96uX-jgHS-Vsst-hq7l', '200.00', 'upgrade', 'system', 1468374741, 0, 0, 265, '13826472682', 1499875200),
(38, 'U-AbB5-lk1B-zC2X-C9v5', '200.00', 'upgrade', 'system', 1468374741, 0, 0, 265, '13826472682', 1499875200),
(39, 'U-rVdz-lL4L-65zV-eYaa', '200.00', 'upgrade', 'system', 1468374741, 0, 0, 265, '13826472682', 1499875200),
(40, 'U-Yen1-k155-C8rk-RGu9', '200.00', 'upgrade', 'system', 1468374741, 0, 0, 265, '13826472682', 1499875200),
(41, 'U-BVJ3-Lqzc-R2rM-U2U0', '200.00', 'upgrade', 'system', 1468374741, 0, 0, 265, '13826472682', 1499875200),
(42, 'U-cXGn-tG3T-L9d2-u5cA', '200.00', 'upgrade', 'system', 1468376230, 0, 0, 240, '13922371009', 1499875200),
(43, 'U-uT0g-71dT-vQ6H-PPNf', '200.00', 'upgrade', 'system', 1468376230, 0, 0, 240, '13922371009', 1499875200),
(44, 'U-FO6c-XTZs-1821-jfFM', '200.00', 'upgrade', 'system', 1468376230, 0, 0, 240, '13922371009', 1499875200),
(45, 'U-TR10-q6oE-g2Q2-DIE3', '200.00', 'upgrade', 'system', 1468376230, 0, 0, 240, '13922371009', 1499875200),
(46, 'U-4HNb-00E1-bwCp-k8sE', '200.00', 'upgrade', 'system', 1468376230, 0, 0, 240, '13922371009', 1499875200),
(47, 'U-SlqJ-26N6-Pf13-9CiL', '200.00', 'upgrade', 'system', 1468376230, 0, 0, 240, '13922371009', 1499875200),
(48, 'U-7s25-0DR9-GCAx-Vl2m', '200.00', 'upgrade', 'system', 1468376919, 0, 0, 259, '18361311115', 1499875200),
(49, 'U-2Idl-Rssw-oxp8-Se2j', '200.00', 'upgrade', 'system', 1468376919, 0, 0, 259, '18361311115', 1499875200),
(50, 'U-J9in-d18p-2jj1-AR45', '200.00', 'upgrade', 'system', 1468376919, 0, 0, 259, '18361311115', 1499875200),
(51, 'U-Uz1H-eL24-tYGt-lLOd', '200.00', 'upgrade', 'system', 1468376919, 0, 0, 259, '18361311115', 1499875200),
(52, 'U-MeFe-k4L4-31k1-fWhG', '200.00', 'upgrade', 'system', 1468376919, 0, 0, 259, '18361311115', 1499875200),
(53, 'U-hwz1-c63q-4ZBk-ok28', '200.00', 'upgrade', 'system', 1468376919, 0, 0, 259, '18361311115', 1499875200),
(54, 'U-SucG-HSQS-9oFF-cKAF', '200.00', 'upgrade', 'system', 1468384595, 0, 0, 257, '13905278501', 1499875200),
(55, 'U-pPn1-XOkD-v5vt-8ZjV', '200.00', 'upgrade', 'system', 1468384595, 0, 0, 257, '13905278501', 1499875200),
(56, 'U-KFi4-nGs8-yibl-9xsh', '200.00', 'upgrade', 'system', 1468384595, 0, 0, 257, '13905278501', 1499875200),
(57, 'U-jBbg-zlCt-Q33G-UscM', '200.00', 'upgrade', 'system', 1468384595, 0, 0, 257, '13905278501', 1499875200),
(58, 'U-4zc2-w1e1-0VBj-27Xz', '200.00', 'upgrade', 'system', 1468384595, 0, 0, 257, '13905278501', 1499875200),
(59, 'U-ZaDW-q5QL-bbZf-AD2C', '200.00', 'upgrade', 'system', 1468384595, 0, 0, 257, '13905278501', 1499875200),
(60, 'U-g9El-RxRz-5YZo-97C9', '200.00', 'upgrade', 'system', 1468393074, 0, 0, 282, '13631430470', 1499875200),
(61, 'U-PPd8-xfgg-fKe8-9d06', '200.00', 'upgrade', 'system', 1468393074, 0, 0, 282, '13631430470', 1499875200),
(62, 'U-xr32-mR5c-eikn-kc5t', '200.00', 'upgrade', 'system', 1468393074, 0, 0, 282, '13631430470', 1499875200),
(63, 'U-fOwk-7o4D-z2j2-GcgV', '200.00', 'upgrade', 'system', 1468393074, 0, 0, 282, '13631430470', 1499875200),
(64, 'U-WW96-bno1-Pccv-m22d', '200.00', 'upgrade', 'system', 1468393074, 0, 0, 282, '13631430470', 1499875200),
(65, 'U-9sXG-C8C4-65k8-UY83', '200.00', 'upgrade', 'system', 1468393074, 0, 0, 282, '13631430470', 1499875200),
(66, 'U-R4LU-aU9N-578V-b0Ec', '200.00', 'upgrade', 'system', 1468394139, 0, 0, 283, '13538850655', 1499875200),
(67, 'U-CHqN-cu57-xRgx-955n', '200.00', 'upgrade', 'system', 1468394139, 0, 0, 283, '13538850655', 1499875200),
(68, 'U-1614-vDEV-3NvT-ff9y', '200.00', 'upgrade', 'system', 1468394139, 0, 0, 283, '13538850655', 1499875200),
(69, 'U-le5A-Nz6i-p9vV-NNu6', '200.00', 'upgrade', 'system', 1468394139, 0, 0, 283, '13538850655', 1499875200),
(70, 'U-8lro-NNOk-Kq0Z-WNZn', '200.00', 'upgrade', 'system', 1468394139, 0, 0, 283, '13538850655', 1499875200),
(71, 'U-89Yd-Am8m-itT1-Le44', '200.00', 'upgrade', 'system', 1468394139, 0, 0, 283, '13538850655', 1499875200),
(72, 'U-151N-6pJT-8iN2-Ogxu', '200.00', 'upgrade', 'system', 1468406439, 0, 0, 239, '13418480082', 1499875200),
(73, 'U-8K2N-mWZ9-KsRs-tvgi', '200.00', 'upgrade', 'system', 1468406439, 0, 0, 239, '13418480082', 1499875200),
(74, 'U-Zoo2-wKDD-4jmK-zcDj', '200.00', 'upgrade', 'system', 1468406439, 0, 0, 239, '13418480082', 1499875200),
(75, 'U-5rJN-q0iE-zw2w-5AV6', '200.00', 'upgrade', 'system', 1468406439, 0, 0, 239, '13418480082', 1499875200),
(76, 'U-fwz3-zsvZ-Y0JP-7fOu', '200.00', 'upgrade', 'system', 1468406439, 0, 0, 239, '13418480082', 1499875200),
(77, 'U-UFfK-Hyll-w8SB-MSi9', '200.00', 'upgrade', 'system', 1468406439, 0, 0, 239, '13418480082', 1499875200),
(78, 'U-433w-81ST-W1s2-u8V8', '200.00', 'upgrade', 'system', 1468423291, 0, 0, 293, '13631430470', 1499875200),
(79, 'U-J11k-9zdK-SQos-UGig', '200.00', 'upgrade', 'system', 1468423291, 0, 0, 293, '13631430470', 1499875200),
(80, 'U-sqJc-CCzt-LK1S-wWDK', '200.00', 'upgrade', 'system', 1468423291, 0, 0, 293, '13631430470', 1499875200),
(81, 'U-HlMo-6z5T-oOQB-48n8', '200.00', 'upgrade', 'system', 1468423291, 0, 0, 293, '13631430470', 1499875200),
(82, 'U-ANqh-sRb3-53C5-1NNK', '200.00', 'upgrade', 'system', 1468423291, 0, 0, 293, '13631430470', 1499875200),
(83, 'U-Frmx-6i16-iSSs-8N3P', '200.00', 'upgrade', 'system', 1468423291, 0, 0, 293, '13631430470', 1499875200),
(84, 'U-Pbut-M8h1-wIIB-9m46', '200.00', 'upgrade', 'system', 1468423997, 0, 0, 294, '13538850655', 1499875200),
(85, 'U-2v5z-409u-5MT9-WGdw', '200.00', 'upgrade', 'system', 1468423997, 0, 0, 294, '13538850655', 1499875200),
(86, 'U-p5rd-KiuK-7cf7-G9Ml', '200.00', 'upgrade', 'system', 1468423997, 0, 0, 294, '13538850655', 1499875200),
(87, 'U-i8qq-Qd7P-452W-Z9eK', '200.00', 'upgrade', 'system', 1468423997, 0, 0, 294, '13538850655', 1499875200),
(88, 'U-iLBK-G2Dv-8LMl-sGm4', '200.00', 'upgrade', 'system', 1468423997, 0, 0, 294, '13538850655', 1499875200),
(89, 'U-33B3-k3Lv-iw5S-2NnV', '200.00', 'upgrade', 'system', 1468423997, 0, 0, 294, '13538850655', 1499875200),
(90, 'U-w3gG-eS70-8pDD-EIdk', '200.00', 'upgrade', 'system', 1468426446, 0, 0, 289, '13510485930', 1499961600),
(91, 'U-AptQ-oCCB-71yK-v5Vx', '200.00', 'upgrade', 'system', 1468426446, 0, 0, 289, '13510485930', 1499961600),
(92, 'U-YmS5-i8q0-SYsz-prZF', '200.00', 'upgrade', 'system', 1468426446, 0, 0, 289, '13510485930', 1499961600),
(93, 'U-fMFm-5655-59dI-Z9O9', '200.00', 'upgrade', 'system', 1468426446, 0, 0, 289, '13510485930', 1499961600),
(94, 'U-P3l3-E5zj-RC9C-WakT', '200.00', 'upgrade', 'system', 1468426446, 0, 0, 289, '13510485930', 1499961600),
(95, 'U-q14r-5Prt-1lOA-38Ii', '200.00', 'upgrade', 'system', 1468426446, 0, 0, 289, '13510485930', 1499961600),
(96, 'U-0Fb1-w9fu-4Z3h-o4gn', '200.00', 'upgrade', 'system', 1468563194, 0, 0, 281, '13632242148', 1500048000),
(97, 'U-b9k1-Wv0O-91Ug-z3eo', '200.00', 'upgrade', 'system', 1468563194, 0, 0, 281, '13632242148', 1500048000),
(98, 'U-gbf6-bBZ0-T99w-U1ab', '200.00', 'upgrade', 'system', 1468563194, 0, 0, 281, '13632242148', 1500048000),
(99, 'U-qn1K-jrQf-0mhM-eByZ', '200.00', 'upgrade', 'system', 1468563194, 0, 0, 281, '13632242148', 1500048000),
(100, 'U-H3zH-82NR-YJDd-MMMa', '200.00', 'upgrade', 'system', 1468563194, 0, 0, 281, '13632242148', 1500048000),
(101, 'U-W7UN-8piW-179V-1W19', '200.00', 'upgrade', 'system', 1468563194, 0, 0, 281, '13632242148', 1500048000),
(102, 'U-5qYb-5EaU-66v3-1QF1', '200.00', 'upgrade', 'system', 1468765375, 0, 0, 3, '13450226610', 1500220800),
(103, 'U-70zH-u4tS-yS6b-PJ62', '200.00', 'upgrade', 'system', 1468765375, 0, 0, 3, '13450226610', 1500220800),
(104, 'U-j4DF-2VT2-wW97-qjxY', '200.00', 'upgrade', 'system', 1468765375, 0, 0, 3, '13450226610', 1500220800),
(105, 'U-KKK0-2Dqa-i810-fZ44', '200.00', 'upgrade', 'system', 1468765375, 0, 0, 3, '13450226610', 1500220800),
(106, 'U-J29W-zDM2-pBff-anpb', '200.00', 'upgrade', 'system', 1468765375, 0, 0, 3, '13450226610', 1500220800),
(107, 'U-xSzh-ss94-GlPK-TWF6', '200.00', 'upgrade', 'system', 1468765375, 0, 0, 3, '13450226610', 1500220800),
(108, 'U-pUp3-z8ef-sP7Y-CAPJ', '200.00', 'upgrade', 'system', 1468768251, 0, 0, 4, '13632242148', 1500220800),
(109, 'U-DSVS-w7un-JJIY-dOVC', '200.00', 'upgrade', 'system', 1468768251, 0, 0, 4, '13632242148', 1500220800),
(110, 'U-38Fk-cKKk-o7Ha-DM99', '200.00', 'upgrade', 'system', 1468768251, 0, 0, 4, '13632242148', 1500220800),
(111, 'U-hvX8-I4EP-naMa-lXOB', '200.00', 'upgrade', 'system', 1468768251, 0, 0, 4, '13632242148', 1500220800),
(112, 'U-6CJw-0c06-KjKR-a1jS', '200.00', 'upgrade', 'system', 1468768251, 0, 0, 4, '13632242148', 1500220800),
(113, 'U-PXpK-iuFq-24W5-jx2U', '200.00', 'upgrade', 'system', 1468768251, 0, 0, 4, '13632242148', 1500220800),
(114, 'U-cr1L-F12F-L2Oe-NEh1', '200.00', 'upgrade', 'system', 1468806615, 0, 0, 9, '13538850622', 1500307200),
(115, 'U-nwsS-n0L7-Q4Hg-kqAZ', '200.00', 'upgrade', 'system', 1468806615, 0, 0, 9, '13538850622', 1500307200),
(116, 'U-t09l-7Wz7-y3Ty-0Ayq', '200.00', 'upgrade', 'system', 1468806615, 0, 0, 9, '13538850622', 1500307200),
(117, 'U-we8T-7zwh-s6A6-812j', '200.00', 'upgrade', 'system', 1468806615, 0, 0, 9, '13538850622', 1500307200),
(118, 'U-j8xc-SsfR-7Aj2-dNJY', '200.00', 'upgrade', 'system', 1468806615, 0, 0, 9, '13538850622', 1500307200),
(119, 'U-neeb-bX6O-m6kz-7Zw4', '200.00', 'upgrade', 'system', 1468806615, 0, 0, 9, '13538850622', 1500307200),
(120, '1010', '30.00', 'test', 'czbroot', 1469013311, 0, 0, 0, NULL, 1469721600),
(121, '1011', '30.00', 'test', 'czbroot', 1469013311, 0, 0, 0, NULL, 1469721600),
(122, '1012', '30.00', 'test', 'czbroot', 1469013311, 0, 0, 0, NULL, 1469721600),
(123, '1013', '30.00', 'test', 'czbroot', 1469013311, 0, 0, 0, NULL, 1469721600),
(124, '1014', '30.00', 'test', 'czbroot', 1469013311, 0, 0, 0, NULL, 1469721600),
(125, '1015', '30.00', 'test', 'czbroot', 1469013311, 0, 0, 0, NULL, 1469721600),
(126, '1016', '30.00', 'test', 'czbroot', 1469013311, 0, 0, 0, NULL, 1469721600),
(127, '1017', '30.00', 'test', 'czbroot', 1469013311, 0, 0, 0, NULL, 1469721600),
(128, '1018', '30.00', 'test', 'czbroot', 1469013311, 0, 0, 0, NULL, 1469721600),
(129, '1019', '30.00', 'test', 'czbroot', 1469013311, 0, 0, 0, NULL, 1469721600),
(130, '1020', '30.00', 'test', 'czbroot', 1469013311, 0, 0, 0, NULL, 1469721600),
(131, '1021', '30.00', 'test', 'czbroot', 1469013311, 0, 0, 0, NULL, 1469721600),
(132, '1022', '30.00', 'test', 'czbroot', 1469013311, 0, 0, 0, NULL, 1469721600),
(133, '1023', '30.00', 'test', 'czbroot', 1469013311, 0, 0, 0, NULL, 1469721600),
(134, '1024', '30.00', 'test', 'czbroot', 1469013311, 0, 0, 0, NULL, 1469721600),
(135, '1025', '30.00', 'test', 'czbroot', 1469013311, 0, 0, 0, NULL, 1469721600),
(136, '1026', '30.00', 'test', 'czbroot', 1469013311, 0, 0, 0, NULL, 1469721600),
(137, '1027', '30.00', 'test', 'czbroot', 1469013311, 0, 0, 0, NULL, 1469721600),
(138, '1028', '30.00', 'test', 'czbroot', 1469013311, 0, 0, 0, NULL, 1469721600),
(139, '9308t763', '100.00', 'test2', 'czbroot', 1469033959, 0, 0, 0, NULL, 1467216000),
(140, 'U-rwin-4Ec6-Z5cW-UKK6', '200.00', 'upgrade', 'system', 1469121116, 0, 0, 12, '18680564089', 1500652800),
(141, 'U-dbUZ-lH37-uzK5-XeNF', '200.00', 'upgrade', 'system', 1469121116, 0, 0, 12, '18680564089', 1500652800),
(142, 'U-Bwqx-IPgI-65G1-RdVj', '200.00', 'upgrade', 'system', 1469121116, 0, 0, 12, '18680564089', 1500652800),
(143, 'U-NMhs-t77H-99dG-3who', '200.00', 'upgrade', 'system', 1469121116, 0, 0, 12, '18680564089', 1500652800),
(144, 'U-Hp47-69Ig-FufF-6o23', '200.00', 'upgrade', 'system', 1469121116, 0, 0, 12, '18680564089', 1500652800),
(145, 'U-JbzE-6LgG-WwOB-gV6v', '200.00', 'upgrade', 'system', 1469121116, 0, 0, 12, '18680564089', 1500652800),
(146, 'U-4X7T-aJgf-RV2d-wr3q', '200.00', 'upgrade', 'system', 1469214506, 0, 0, 17, '13631430470', 1500739200),
(147, 'U-vBsO-oo36-6aAa-5054', '200.00', 'upgrade', 'system', 1469214506, 0, 0, 17, '13631430470', 1500739200),
(148, 'U-bZcv-ID35-7C9K-B7B7', '200.00', 'upgrade', 'system', 1469214506, 0, 0, 17, '13631430470', 1500739200),
(149, 'U-08hQ-0K0M-LuK0-vQsl', '200.00', 'upgrade', 'system', 1469214506, 0, 0, 17, '13631430470', 1500739200),
(150, 'U-n3al-3ZIT-juw8-9F2l', '200.00', 'upgrade', 'system', 1469214506, 0, 0, 17, '13631430470', 1500739200),
(151, 'U-lA6z-9lnv-MNS7-1ouO', '200.00', 'upgrade', 'system', 1469214506, 0, 0, 17, '13631430470', 1500739200),
(152, 'U-k6Dh-kvua-ts36-tbW2', '200.00', 'upgrade', 'system', 1470759263, 0, 0, 15, '15692000182', 1502294400),
(153, 'U-41i1-VihY-ZOBE-1AUN', '200.00', 'upgrade', 'system', 1470759263, 0, 0, 15, '15692000182', 1502294400),
(154, 'U-xT00-IId0-984Y-jTrp', '200.00', 'upgrade', 'system', 1470759263, 0, 0, 15, '15692000182', 1502294400),
(155, 'U-wUkR-8M08-uUE6-HoDa', '200.00', 'upgrade', 'system', 1470759263, 0, 0, 15, '15692000182', 1502294400),
(156, 'U-HiD0-bOVf-dK36-lrSr', '200.00', 'upgrade', 'system', 1470759263, 0, 0, 15, '15692000182', 1502294400),
(157, 'U-NVDg-u910-570z-CpK0', '200.00', 'upgrade', 'system', 1470759263, 0, 0, 15, '15692000182', 1502294400);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_cron`
--

CREATE TABLE IF NOT EXISTS `yunpay_cron` (
  `id` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL COMMENT '任务类型 1商品上架 2根据商品id更新商品促销价格 3优惠套装过期 4推荐展位过期 5团购开始更新商品促销价格 6团购过期 7限时折扣过期',
  `exeid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关联任务的ID[如商品ID,会员ID]',
  `exetime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '执行时间'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='任务队列表';

--
-- 转存表中的数据 `yunpay_cron`
--

INSERT INTO `yunpay_cron` (`id`, `type`, `exeid`, `exetime`) VALUES
(1, 6, 100086, 1414684800),
(2, 6, 100085, 1414684800),
(3, 7, 7, 1577721600);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_daddress`
--

CREATE TABLE IF NOT EXISTS `yunpay_daddress` (
  `address_id` mediumint(10) unsigned NOT NULL COMMENT '地址ID',
  `store_id` mediumint(10) unsigned NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `seller_name` varchar(50) NOT NULL DEFAULT '' COMMENT '联系人',
  `area_id` mediumint(10) unsigned NOT NULL DEFAULT '0' COMMENT '地区ID',
  `city_id` mediumint(9) DEFAULT NULL COMMENT '市级ID',
  `area_info` varchar(100) DEFAULT NULL COMMENT '省市县',
  `address` varchar(100) NOT NULL COMMENT '地址',
  `telphone` varchar(40) DEFAULT NULL COMMENT '电话',
  `company` varchar(50) NOT NULL COMMENT '公司',
  `is_default` enum('0','1') NOT NULL DEFAULT '0' COMMENT '是否默认1是'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='卖家发货地址信息表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_delivery_order`
--

CREATE TABLE IF NOT EXISTS `yunpay_delivery_order` (
  `order_id` int(11) NOT NULL COMMENT '订单ID',
  `addtime` int(11) DEFAULT '0' COMMENT '订单生成时间',
  `order_sn` bigint(20) DEFAULT NULL COMMENT '订单号',
  `dlyp_id` int(11) DEFAULT NULL COMMENT '自提点ID',
  `shipping_code` varchar(50) DEFAULT NULL COMMENT '物流单号',
  `express_code` varchar(30) DEFAULT NULL COMMENT '快递公司编码',
  `express_name` varchar(30) DEFAULT NULL COMMENT '快递公司名称',
  `reciver_name` varchar(20) DEFAULT NULL COMMENT '收货人',
  `reciver_telphone` varchar(20) DEFAULT NULL COMMENT '电话',
  `reciver_mobphone` varchar(11) DEFAULT NULL COMMENT '手机',
  `dlyo_state` tinyint(3) unsigned NOT NULL DEFAULT '10' COMMENT '订单状态 10(默认)未到站，20已到站，30已提取',
  `dlyo_pickup_code` varchar(4) DEFAULT NULL COMMENT '提货码'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单自提点表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_delivery_point`
--

CREATE TABLE IF NOT EXISTS `yunpay_delivery_point` (
  `dlyp_id` int(10) unsigned NOT NULL COMMENT '提货站id',
  `dlyp_name` varchar(50) NOT NULL COMMENT '提货站登录名',
  `dlyp_passwd` varchar(32) NOT NULL COMMENT '提货站登录密码',
  `dlyp_truename` varchar(20) NOT NULL COMMENT '真实姓名',
  `dlyp_mobile` varchar(11) NOT NULL COMMENT '手机号码',
  `dlyp_telephony` varchar(20) NOT NULL COMMENT '座机号码',
  `dlyp_address_name` varchar(20) NOT NULL COMMENT '服务站名称',
  `dlyp_area_2` int(10) unsigned NOT NULL COMMENT '二级地区id',
  `dlyp_area_3` int(10) unsigned NOT NULL COMMENT '三级地区id',
  `dlyp_area_info` varchar(255) NOT NULL COMMENT '地区内容',
  `dlyp_address` varchar(255) NOT NULL COMMENT '详细地址',
  `dlyp_idcard` varchar(18) NOT NULL COMMENT '身份证号码',
  `dlyp_idcard_image` varchar(255) NOT NULL COMMENT '身份证照片',
  `dlyp_addtime` int(10) unsigned NOT NULL COMMENT '添加时间',
  `dlyp_state` tinyint(3) unsigned NOT NULL COMMENT '提货站状态 0关闭，1开启，10等待审核, 20审核失败',
  `dlyp_fail_reason` varchar(255) DEFAULT NULL COMMENT '失败原因'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='提货站表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_document`
--

CREATE TABLE IF NOT EXISTS `yunpay_document` (
  `doc_id` mediumint(11) NOT NULL COMMENT 'id',
  `doc_code` varchar(255) NOT NULL COMMENT '调用标识码',
  `doc_title` varchar(255) NOT NULL COMMENT '标题',
  `doc_content` text NOT NULL COMMENT '内容',
  `doc_time` int(10) unsigned NOT NULL COMMENT '添加时间/修改时间'
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='系统文章表';

--
-- 转存表中的数据 `yunpay_document`
--

INSERT INTO `yunpay_document` (`doc_id`, `doc_code`, `doc_title`, `doc_content`, `doc_time`) VALUES
(1, 'user_protocol', '用户服务协议', '<p>\r\n <br />\r\n</p>', 1469977312),
(4, 'open_store', '开店协议', '<p>\r\n  <br />\r\n</p>', 1469456533),
(5, 'vip', 'VIP会员', '<p>\r\n  <br />\r\n</p>\r\n<img src="http://120.25.212.243/hft/data/upload/ATTACH_ARTICLE/05231966244577209.jpg" alt="http://120.25.212.243/hft/data/upload/ATTACH_ARTICLE/05231966244577209.jpg" />', 1469852626),
(6, 'oil', '油卡', '<br />', 1469456570),
(7, 'oil_zsh', '油卡-中石化', '', 0),
(8, 'oil_bp', '油卡-BP', '', 0),
(9, 'oil_gd', '油卡-中石油广东专用', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_evaluate_goods`
--

CREATE TABLE IF NOT EXISTS `yunpay_evaluate_goods` (
  `geval_id` int(11) NOT NULL COMMENT '评价ID',
  `geval_orderid` int(11) NOT NULL COMMENT '订单表自增ID',
  `geval_orderno` bigint(20) unsigned NOT NULL COMMENT '订单编号',
  `geval_ordergoodsid` int(11) NOT NULL COMMENT '订单商品表编号',
  `geval_goodsid` int(11) NOT NULL COMMENT '商品表编号',
  `geval_goodsname` varchar(100) NOT NULL COMMENT '商品名称',
  `geval_goodsprice` decimal(10,2) DEFAULT NULL COMMENT '商品价格',
  `geval_goodsimage` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `geval_scores` tinyint(1) NOT NULL COMMENT '1-5分',
  `geval_content` varchar(255) DEFAULT NULL COMMENT '信誉评价内容',
  `geval_isanonymous` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0表示不是 1表示是匿名评价',
  `geval_addtime` int(11) NOT NULL COMMENT '评价时间',
  `geval_storeid` int(11) NOT NULL COMMENT '店铺编号',
  `geval_storename` varchar(100) NOT NULL COMMENT '店铺名称',
  `geval_frommemberid` int(11) NOT NULL COMMENT '评价人编号',
  `geval_frommembername` varchar(100) NOT NULL COMMENT '评价人名称',
  `geval_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '评价信息的状态 0为正常 1为禁止显示',
  `geval_remark` varchar(255) DEFAULT NULL COMMENT '管理员对评价的处理备注',
  `geval_explain` varchar(255) DEFAULT NULL COMMENT '解释内容',
  `geval_image` varchar(255) DEFAULT NULL COMMENT '晒单图片'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='信誉评价表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_evaluate_store`
--

CREATE TABLE IF NOT EXISTS `yunpay_evaluate_store` (
  `seval_id` int(11) NOT NULL COMMENT '评价ID',
  `seval_orderid` int(11) unsigned NOT NULL COMMENT '订单ID',
  `seval_orderno` varchar(100) NOT NULL COMMENT '订单编号',
  `seval_addtime` int(11) unsigned NOT NULL COMMENT '评价时间',
  `seval_storeid` int(11) unsigned NOT NULL COMMENT '店铺编号',
  `seval_storename` varchar(100) NOT NULL COMMENT '店铺名称',
  `seval_memberid` int(11) unsigned NOT NULL COMMENT '买家编号',
  `seval_membername` varchar(100) NOT NULL COMMENT '买家名称',
  `seval_desccredit` tinyint(1) unsigned NOT NULL DEFAULT '5' COMMENT '描述相符评分',
  `seval_servicecredit` tinyint(1) unsigned NOT NULL DEFAULT '5' COMMENT '服务态度评分',
  `seval_deliverycredit` tinyint(1) unsigned NOT NULL DEFAULT '5' COMMENT '发货速度评分'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='店铺评分表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_exppoints_log`
--

CREATE TABLE IF NOT EXISTS `yunpay_exppoints_log` (
  `exp_id` int(11) NOT NULL COMMENT '经验值日志编号',
  `exp_memberid` int(11) NOT NULL COMMENT '会员编号',
  `exp_membername` varchar(100) NOT NULL COMMENT '会员名称',
  `exp_points` int(11) NOT NULL DEFAULT '0' COMMENT '经验值负数表示扣除',
  `exp_addtime` int(11) NOT NULL COMMENT '添加时间',
  `exp_desc` varchar(100) NOT NULL COMMENT '操作描述',
  `exp_stage` varchar(50) NOT NULL COMMENT '操作阶段'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='经验值日志表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_express`
--

CREATE TABLE IF NOT EXISTS `yunpay_express` (
  `id` tinyint(1) unsigned NOT NULL COMMENT '索引ID',
  `e_name` varchar(50) NOT NULL COMMENT '公司名称',
  `e_state` enum('0','1') NOT NULL DEFAULT '1' COMMENT '状态',
  `e_code` varchar(50) NOT NULL COMMENT '编号',
  `e_letter` char(1) NOT NULL COMMENT '首字母',
  `e_order` enum('1','2') NOT NULL DEFAULT '2' COMMENT '1常用2不常用',
  `e_url` varchar(100) NOT NULL COMMENT '公司网址',
  `e_zt_state` tinyint(4) DEFAULT '0' COMMENT '是否支持服务站配送0否1是'
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='快递公司';

--
-- 转存表中的数据 `yunpay_express`
--

INSERT INTO `yunpay_express` (`id`, `e_name`, `e_state`, `e_code`, `e_letter`, `e_order`, `e_url`, `e_zt_state`) VALUES
(1, '安信达', '0', 'anxindakuaixi', 'A', '2', 'http://www.anxinda.com', 0),
(2, '包裹平邮', '1', 'youzhengguonei', 'B', '2', 'http://yjcx.chinapost.com.cn', 0),
(3, 'CCES', '1', 'cces', 'C', '2', 'http://www.cces.com.cn', 0),
(4, '传喜物流', '1', 'chuanxiwuliu', 'C', '2', 'http://www.cxcod.com', 0),
(5, 'DHL快递', '1', 'dhl', 'D', '2', 'http://www.cn.dhl.com', 0),
(6, '大田物流', '1', 'datianwuliu', 'D', '2', 'http://www.dtw.com.cn', 0),
(7, '德邦物流', '1', 'debangwuliu', 'D', '2', 'http://www.deppon.com', 0),
(8, 'EMS', '1', 'ems', 'E', '2', 'http://www.ems.com.cn', 0),
(9, 'EMS国际', '1', 'emsguoji', 'E', '2', '###', 0),
(10, '飞康达', '1', 'feikangda', 'F', '2', 'http://www.fkd.com.cn', 0),
(11, 'FedEx(国际)', '1', 'fedex', 'F', '2', 'http://fedex.com/cn', 0),
(12, '凡客如风达', '1', 'rufengda', 'F', '2', 'http://www.rufengda.com', 0),
(13, '港中能达', '1', 'ganzhongnengda', 'G', '2', 'http://www.nd56.com', 0),
(14, '挂号信', '1', 'youzhengguonei', 'G', '2', 'http://yjcx.chinapost.com.cn', 0),
(15, '共速达', '1', 'gongsuda', 'G', '2', 'http://www.gongsuda.com/mall/Search.aspx', 0),
(16, '汇通快递', '1', 'huitongkuaidi', 'H', '2', 'http://www.htky365.com', 0),
(17, '华宇物流', '1', 'tiandihuayu', 'H', '2', 'http://www.hoau.net', 0),
(18, '佳吉快运', '1', 'jiajiwuliu', 'J', '2', 'http://www.jiaji.com', 0),
(19, '佳怡物流', '1', 'jiayiwuliu', 'J', '2', 'http://www.jiayi56.com', 0),
(20, '急先达', '1', 'jixianda', 'J', '2', 'http://www.joust.cn', 0),
(21, '快捷速递', '1', 'kuaijiesudi', 'K', '2', 'http://www.fastexpress.com.cn', 0),
(22, '龙邦快递', '1', 'longbanwuliu', 'L', '2', 'http://www.lbex.com.cn', 0),
(23, '联邦快递', '1', 'lianbangkuaidi', 'L', '2', 'http://cndxp.apac.fedex.com/dxp.html', 0),
(24, '联昊通', '1', 'lianhaowuliu', 'L', '2', 'http://www.lhtex.com.cn', 0),
(25, '全一快递', '1', 'quanyikuaidi', 'Q', '2', 'http://www.apex100.com', 0),
(26, '全峰快递', '1', 'quanfengkuaidi', 'Q', '2', 'http://www.qfkd.com.cn', 0),
(27, '全日通', '1', 'quanritongkuaidi', 'Q', '2', 'http://www.at-express.com', 0),
(28, '申通快递', '1', 'shentong', 'S', '2', 'http://www.sto.cn', 0),
(29, '顺丰快递', '1', 'shunfeng', 'S', '1', 'http://www.sf-express.com', 0),
(30, '速尔快递', '1', 'suer', 'S', '2', 'http://www.sure56.com', 0),
(31, 'TNT快递', '1', 'tnt', 'T', '2', 'http://www.tnt.com.cn', 0),
(32, '天天快递', '1', 'tiantian', 'T', '2', 'http://www.ttkdex.com', 0),
(33, '天地华宇', '1', 'tiandihuayu', 'T', '2', 'http://www.hoau.net', 0),
(34, 'UPS快递', '1', 'ups', 'U', '2', 'http://www.ups.com/cn', 0),
(35, 'USPS', '1', 'usps', 'U', '2', 'http://www.kuaidi100.com/all/usps.shtml', 0),
(36, '新邦物流', '1', 'xinbangwuliu', 'X', '2', 'http://www.xbwl.cn', 0),
(37, '信丰物流', '1', 'xinfengwuliu', 'X', '2', 'http://www.xf-express.com.cn', 0),
(38, '希伊艾斯', '1', 'cces', 'X', '2', 'http://www.cces.com.cn', 0),
(39, '新蛋物流', '1', 'neweggozzo', 'X', '2', 'http://www.ozzo.com.cn', 0),
(40, '圆通快递', '1', 'yuantong', 'Y', '1', 'http://www.yto.net.cn', 0),
(41, '韵达快递', '1', 'yunda', 'Y', '1', 'http://www.yundaex.com', 0),
(42, '邮政包裹', '1', 'youzhengguonei', 'Y', '2', 'http://yjcx.chinapost.com.cn', 0),
(43, '优速快递', '1', 'youshuwuliu', 'Y', '2', 'http://www.uc56.com', 0),
(44, '中通快递', '1', 'zhongtong', 'Z', '1', 'http://www.zto.cn', 0),
(45, '中铁快运', '1', 'zhongtiewuliu', 'Z', '2', 'http://www.cre.cn', 0),
(46, '宅急送', '1', 'zhaijisong', 'Z', '2', 'http://www.zjs.com.cn', 0),
(47, '中邮物流', '1', 'zhongyouwuliu', 'Z', '2', 'http://www.cnpl.com.cn', 0);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_favorites`
--

CREATE TABLE IF NOT EXISTS `yunpay_favorites` (
  `member_id` int(10) unsigned NOT NULL COMMENT '会员ID',
  `fav_id` int(10) unsigned NOT NULL COMMENT '收藏ID',
  `fav_type` varchar(20) NOT NULL COMMENT '收藏类型',
  `fav_time` int(10) unsigned NOT NULL COMMENT '收藏时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='买家收藏表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_feedback`
--

CREATE TABLE IF NOT EXISTS `yunpay_feedback` (
  `fb_id` int(11) NOT NULL,
  `fb_member_id` int(11) DEFAULT NULL,
  `fb_member_name` varchar(45) DEFAULT NULL,
  `fb_type` tinyint(1) DEFAULT '1' COMMENT '1.加盟商,',
  `fb_image` varchar(45) DEFAULT NULL,
  `fb_content` text,
  `fb_addtime` int(11) DEFAULT NULL,
  `fb_state` tinyint(1) DEFAULT '1' COMMENT '状态,0：未处理，1:已处理，2:白撞',
  `fb_remark` varchar(200) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yunpay_feedback`
--

INSERT INTO `yunpay_feedback` (`fb_id`, `fb_member_id`, `fb_member_name`, `fb_type`, `fb_image`, `fb_content`, `fb_addtime`, `fb_state`, `fb_remark`) VALUES
(2, 29, '15692000182', 1, '05174452517888177.jpg', '2', 1464101251, 1, ''),
(6, 23, '13632242148', 1, '', '联系人张成志<br />     联系电话：13632242148<br />     加盟区域：广州<br />       备注:我系刘德华', 1466761591, 1, ''),
(9, 25, '13450226610', 1, '', '联系人：13450226610<br />联系电话：13450226610<br />加盟区域：hdhdj<br />备注：', 1466959592, 1, ''),
(5, 189, '13800138099', 1, '', '展会', 1466587991, 1, ''),
(7, 205, '13800138098', 1, '', '联系人走复古风<br />     联系电话：13800138098<br />     加盟区域：反正<br />       备注:肥肥', 1466761851, 1, ''),
(8, 30, '13423677687', 1, '', '联系人：王天元<br />联系电话：王天元<br />加盟区域：王天元<br />备注：王天元', 1466859814, 1, ''),
(10, 235, '13527640406', 1, '', '联系人：djdh<br />联系电话：461878<br />加盟区域：@jd#<br />备注：', 1467552629, 1, ''),
(11, 225, '13538850622', 1, '', '联系人：紧<br />联系电话：555<br />加盟区域：广州<br />备注：电话', 1467552719, 1, ''),
(12, 227, '13632242148', 1, '05216571779973219.jpg', 'Ghgg<br />13632242148<br /><br />3<br />75<br />1166<br />', 1468313177, 1, ''),
(13, 255, '13415791563', 1, '05216573123215351.jpg', 'Ff <br />13415791563<br /><br />2<br />40<br />59<br />', 1468313312, 1, ''),
(14, 277, '13808183820', 1, '', '联系人：马松宾<br />联系电话：13805183820<br />加盟区域：四川省成都市金牛区<br />备注：我要加盟', 1468390776, 1, ''),
(15, 7, '13423677687', 1, '', '联系人：王天元<br />联系电话：13423677687<br />加盟区域：河北 沧州市 新华区<br />备注：测试', 1469007527, 2, '');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_fund`
--

CREATE TABLE IF NOT EXISTS `yunpay_fund` (
  `fund_id` int(11) NOT NULL,
  `fund_banner` varchar(80) DEFAULT NULL,
  `fund_name` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  `fund_raise` decimal(10,2) DEFAULT NULL,
  `fund_love` int(11) DEFAULT NULL,
  `fund_content` text,
  `fund_to` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  `fund_at` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `yunpay_fund`
--

INSERT INTO `yunpay_fund` (`fund_id`, `fund_banner`, `fund_name`, `fund_raise`, `fund_love`, `fund_content`, `fund_to`, `fund_at`) VALUES
(1, '05234644731712382.jpg', '公益', '1381.00', 12, '&nbsp; &nbsp; &nbsp; 公益将积极与社会各类公益组织展开合作，进行公益捐助活动。我们也将积极组织合富通全体员工参与到身边的公益事业。我们还将不定期邀请幸运者参与并见证公益的社会公益活动，共同为我们的社会责任贡献一份爱心与力量。', '红十字会', 1470120473);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_fund_log`
--

CREATE TABLE IF NOT EXISTS `yunpay_fund_log` (
  `fl_id` int(11) NOT NULL,
  `fund_id` int(11) NOT NULL,
  `fl_sn` varchar(45) DEFAULT NULL COMMENT '记录唯一标示',
  `fl_member_id` int(11) DEFAULT '0' COMMENT '充值会员',
  `fl_member_name` varchar(45) DEFAULT NULL COMMENT '充值会员名',
  `fl_amount` decimal(10,2) DEFAULT '0.00' COMMENT '充值金额',
  `fl_state` tinyint(1) DEFAULT '0' COMMENT '充值状态,,0,还没支付.1,待处理，2,充值成功,3,充值失败',
  `fl_state_remark` varchar(200) DEFAULT NULL COMMENT '状态对应的备注',
  `fl_trade_code` varchar(45) DEFAULT NULL COMMENT '充值平台的单号',
  `fl_add_time` int(11) DEFAULT '0' COMMENT '用户充值日期',
  `fl_to_account_at` int(11) DEFAULT '0' COMMENT '到帐日期',
  `fl_payment_code` varchar(45) DEFAULT NULL COMMENT '支付方式',
  `fl_payment_name` varchar(45) DEFAULT NULL COMMENT '支付方式',
  `fl_trade_sn` varchar(45) DEFAULT NULL COMMENT '第三方支付接口交易号',
  `fl_payment_state` enum('0','1') DEFAULT '0' COMMENT '支付状态 0未支付1支付',
  `fl_payment_time` int(11) DEFAULT NULL,
  `fl_admin` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yunpay_fund_log`
--

INSERT INTO `yunpay_fund_log` (`fl_id`, `fund_id`, `fl_sn`, `fl_member_id`, `fl_member_name`, `fl_amount`, `fl_state`, `fl_state_remark`, `fl_trade_code`, `fl_add_time`, `fl_to_account_at`, `fl_payment_code`, `fl_payment_name`, `fl_trade_sn`, `fl_payment_state`, `fl_payment_time`, `fl_admin`) VALUES
(1, 1, '960523560361937004', 4, '13632242148', '20.00', 1, NULL, NULL, 1470216361, 0, 'predeposit', '余额支付', '210523560361948004', '1', 1470216361, ''),
(2, 1, '390523560373553004', 4, '13632242148', '20.00', 1, NULL, NULL, 1470216373, 0, 'predeposit', '余额支付', '110523560373565004', '1', 1470216373, ''),
(3, 1, '600523561973027004', 4, '13632242148', '50.00', 1, NULL, NULL, 1470217973, 0, 'predeposit', '余额支付', '540523561973038004', '1', 1470217973, ''),
(4, 1, '990523580748168004', 4, '13632242148', '50.00', 1, NULL, NULL, 1470236748, 0, 'predeposit', '余额支付', '970523580748178004', '1', 1470236748, ''),
(5, 1, '190523584364463009', 9, '13538850622', '50.00', 1, NULL, NULL, 1470240364, 0, 'predeposit', '余额支付', '610523584364479009', '1', 1470240364, ''),
(6, 1, '590523658354723012', 12, '18680564089', '20.00', 1, NULL, NULL, 1470314354, 0, 'predeposit', '余额支付', '700523658354734012', '1', 1470314354, ''),
(7, 1, '450524008108865004', 4, '13632242148', '1.00', 1, NULL, NULL, 1470664108, 0, 'predeposit', '余额支付', '870524008108878004', '1', 1470664108, ''),
(8, 1, '500524008134846004', 4, '13632242148', '1000.00', 1, NULL, NULL, 1470664134, 0, 'predeposit', '余额支付', '140524008134856004', '1', 1470664134, ''),
(9, 1, '180524104550354004', 4, '13632242148', '20.00', 1, NULL, NULL, 1470760550, 0, 'predeposit', '余额支付', '130524104550386004', '1', 1470760550, ''),
(10, 1, '400524168679547004', 4, '13632242148', '50.00', 1, NULL, NULL, 1470824679, 0, 'predeposit', '余额支付', '690524168679573004', '1', 1470824679, ''),
(11, 1, '440524168998496004', 4, '13632242148', '50.00', 1, NULL, NULL, 1470824998, 0, 'predeposit', '余额支付', '950524168998511004', '1', 1470824998, ''),
(12, 1, '840524169024087004', 4, '13632242148', '50.00', 1, NULL, NULL, 1470825024, 0, 'predeposit', '余额支付', '720524169024108004', '1', 1470825024, '');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_gadmin`
--

CREATE TABLE IF NOT EXISTS `yunpay_gadmin` (
  `gid` smallint(5) unsigned NOT NULL COMMENT '自增id',
  `gname` varchar(50) DEFAULT NULL COMMENT '组名',
  `limits` text COMMENT '权限内容'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='权限组';

--
-- 转存表中的数据 `yunpay_gadmin`
--

INSERT INTO `yunpay_gadmin` (`gid`, `gname`, `limits`) VALUES
(1, '财务部', 'SfYo6Qe3U4Rth8SJVDjAukqevFywKp4'),
(2, '客服', 'SaolNkm2HNFrJfpS9p15UyxMIEcoLjruZOvL76edL-weTIwq7-FzWn3vsTr');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_goods`
--

CREATE TABLE IF NOT EXISTS `yunpay_goods` (
  `goods_id` int(10) unsigned NOT NULL COMMENT '商品id(SKU)',
  `goods_commonid` int(10) unsigned NOT NULL COMMENT '商品公共表id',
  `goods_name` varchar(50) NOT NULL COMMENT '商品名称（+规格名称）',
  `goods_jingle` varchar(150) NOT NULL COMMENT '商品广告词',
  `store_id` int(10) unsigned NOT NULL COMMENT '店铺id',
  `store_name` varchar(50) NOT NULL COMMENT '店铺名称',
  `gc_id` int(10) unsigned NOT NULL COMMENT '商品分类id',
  `gc_id_1` int(10) unsigned NOT NULL COMMENT '一级分类id',
  `gc_id_2` int(10) unsigned NOT NULL COMMENT '二级分类id',
  `gc_id_3` int(10) unsigned NOT NULL COMMENT '三级分类id',
  `brand_id` int(10) unsigned NOT NULL COMMENT '品牌id',
  `goods_price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `goods_promotion_price` decimal(10,2) NOT NULL COMMENT '商品促销价格',
  `goods_promotion_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '促销类型 0无促销，1团购，2限时折扣',
  `goods_marketprice` decimal(10,2) NOT NULL COMMENT '市场价',
  `goods_serial` varchar(50) NOT NULL COMMENT '商家编号',
  `goods_storage_alarm` tinyint(3) unsigned NOT NULL COMMENT '库存报警值',
  `goods_click` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品点击数量',
  `goods_salenum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '销售数量',
  `goods_collect` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `goods_spec` text NOT NULL COMMENT '商品规格序列化',
  `goods_storage` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品库存',
  `goods_image` varchar(100) NOT NULL DEFAULT '' COMMENT '商品主图',
  `goods_state` tinyint(3) unsigned NOT NULL COMMENT '商品状态 0下架，1正常，10违规（禁售）',
  `goods_verify` tinyint(3) unsigned NOT NULL COMMENT '商品审核 1通过，0未通过，10审核中',
  `goods_addtime` int(10) unsigned NOT NULL COMMENT '商品添加时间',
  `goods_edittime` int(10) unsigned NOT NULL COMMENT '商品编辑时间',
  `areaid_1` int(10) unsigned NOT NULL COMMENT '一级地区id',
  `areaid_2` int(10) unsigned NOT NULL COMMENT '二级地区id',
  `color_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '颜色规格id',
  `transport_id` mediumint(8) unsigned NOT NULL COMMENT '运费模板id',
  `goods_freight` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '运费 0为免运费',
  `goods_vat` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否开具增值税发票 1是，0否',
  `goods_commend` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '商品推荐 1是，0否 默认0',
  `goods_stcids` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺分类id 首尾用,隔开',
  `evaluation_good_star` tinyint(3) unsigned NOT NULL DEFAULT '5' COMMENT '好评星级',
  `evaluation_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评价数',
  `is_virtual` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为虚拟商品 1是，0否',
  `virtual_indate` int(10) unsigned NOT NULL COMMENT '虚拟商品有效期',
  `virtual_limit` tinyint(3) unsigned NOT NULL COMMENT '虚拟商品购买上限',
  `virtual_invalid_refund` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否允许过期退款， 1是，0否',
  `is_fcode` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否为F码商品 1是，0否',
  `is_appoint` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否是预约商品 1是，0否',
  `is_presell` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否是预售商品 1是，0否',
  `have_gift` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否拥有赠品',
  `is_own_shop` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为平台自营'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品表';

--
-- 转存表中的数据 `yunpay_goods`
--

INSERT INTO `yunpay_goods` (`goods_id`, `goods_commonid`, `goods_name`, `goods_jingle`, `store_id`, `store_name`, `gc_id`, `gc_id_1`, `gc_id_2`, `gc_id_3`, `brand_id`, `goods_price`, `goods_promotion_price`, `goods_promotion_type`, `goods_marketprice`, `goods_serial`, `goods_storage_alarm`, `goods_click`, `goods_salenum`, `goods_collect`, `goods_spec`, `goods_storage`, `goods_image`, `goods_state`, `goods_verify`, `goods_addtime`, `goods_edittime`, `areaid_1`, `areaid_2`, `color_id`, `transport_id`, `goods_freight`, `goods_vat`, `goods_commend`, `goods_stcids`, `evaluation_good_star`, `evaluation_count`, `is_virtual`, `virtual_indate`, `virtual_limit`, `virtual_invalid_refund`, `is_fcode`, `is_appoint`, `is_presell`, `have_gift`, `is_own_shop`) VALUES
(1, 1, '不要钱', '', 1, '总店', 230, 3, 202, 230, 0, '1.00', '1.00', 0, '1.00', '', 0, 79, 0, 0, 'N;', 33, '1_05202170949573795.png', 1, 1, 1466873101, 1467186454, 0, 0, 0, 0, '0.00', 0, 1, '', 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_goods_attr_index`
--

CREATE TABLE IF NOT EXISTS `yunpay_goods_attr_index` (
  `goods_id` int(10) unsigned NOT NULL COMMENT '商品id',
  `goods_commonid` int(10) unsigned NOT NULL COMMENT '商品公共表id',
  `gc_id` int(10) unsigned NOT NULL COMMENT '商品分类id',
  `type_id` int(10) unsigned NOT NULL COMMENT '类型id',
  `attr_id` int(10) unsigned NOT NULL COMMENT '属性id',
  `attr_value_id` int(10) unsigned NOT NULL COMMENT '属性值id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品与属性对应表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_goods_browse`
--

CREATE TABLE IF NOT EXISTS `yunpay_goods_browse` (
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `member_id` int(11) NOT NULL COMMENT '会员ID',
  `browsetime` int(11) NOT NULL COMMENT '浏览时间',
  `gc_id` int(11) NOT NULL COMMENT '商品分类',
  `gc_id_1` int(11) NOT NULL COMMENT '商品一级分类',
  `gc_id_2` int(11) NOT NULL COMMENT '商品二级分类',
  `gc_id_3` int(11) NOT NULL COMMENT '商品三级分类'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品浏览历史表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_goods_class`
--

CREATE TABLE IF NOT EXISTS `yunpay_goods_class` (
  `gc_id` int(10) unsigned NOT NULL COMMENT '索引ID',
  `gc_name` varchar(100) NOT NULL COMMENT '分类名称',
  `type_id` int(10) unsigned NOT NULL COMMENT '类型id',
  `type_name` varchar(100) NOT NULL COMMENT '类型名称',
  `gc_parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `commis_rate` float unsigned NOT NULL DEFAULT '0' COMMENT '佣金比例',
  `gc_sort` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `gc_virtual` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许发布虚拟商品，1是，0否',
  `gc_title` varchar(200) NOT NULL COMMENT '名称',
  `gc_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键词',
  `gc_description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `gc_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '前台显示，0为否，1为是，默认为1'
) ENGINE=InnoDB AUTO_INCREMENT=1057 DEFAULT CHARSET=utf8 COMMENT='商品分类表';

--
-- 转存表中的数据 `yunpay_goods_class`
--

INSERT INTO `yunpay_goods_class` (`gc_id`, `gc_name`, `type_id`, `type_name`, `gc_parent_id`, `commis_rate`, `gc_sort`, `gc_virtual`, `gc_title`, `gc_keywords`, `gc_description`, `gc_show`) VALUES
(1, '服饰鞋帽', 0, '', 0, 0, 255, 0, '', '', '', 1),
(2, '礼品箱包', 0, '', 0, 0, 255, 0, '', '', '', 1),
(3, '家居家装', 0, '', 0, 0, 255, 0, '', '', '', 1),
(4, '女装', 0, '', 1, 0, 255, 0, '', '', '', 1),
(5, '男装', 0, '', 1, 0, 255, 0, '', '', '', 1),
(6, '内衣', 0, '', 1, 0, 255, 0, '', '', '', 1),
(7, '运动', 0, '', 1, 0, 255, 0, '', '', '', 1),
(8, '女鞋', 0, '', 1, 0, 255, 0, '', '', '', 1),
(9, '男鞋', 0, '', 1, 0, 255, 0, '', '', '', 1),
(10, '配饰', 0, '', 1, 0, 255, 0, '', '', '', 1),
(11, '童装', 0, '', 1, 0, 255, 0, '', '', '', 1),
(12, 'T恤', 0, '', 4, 0, 255, 0, '', '', '', 1),
(13, '衬衫', 0, '', 4, 0, 255, 0, '', '', '', 1),
(14, '针织衫', 34, '服饰鞋/女装/针织衫', 4, 0, 255, 0, '', '', '', 1),
(15, '雪纺衫', 35, '服饰鞋帽/女装/雪纺衫', 4, 0, 255, 0, '', '', '', 1),
(16, '卫衣', 36, '服饰鞋帽/女装/卫衣', 4, 0, 255, 0, '', '', '', 1),
(17, '马甲', 0, '', 4, 0, 255, 0, '', '', '', 1),
(18, '连衣裙', 35, '服饰鞋帽/女装/雪纺衫', 4, 0, 255, 0, '', '', '', 1),
(19, '半身裙', 34, '服饰鞋/女装/针织衫', 4, 0, 255, 0, '', '', '', 1),
(20, '牛仔裤', 0, '', 4, 0, 255, 0, '', '', '', 1),
(21, '休闲裤', 0, '', 4, 0, 255, 0, '', '', '', 1),
(22, '打底裤', 0, '', 4, 0, 255, 0, '', '', '', 1),
(23, '正装裤', 0, '', 4, 0, 255, 0, '', '', '', 1),
(24, '西服', 0, '', 4, 0, 255, 0, '', '', '', 1),
(25, '短外套', 35, '服饰鞋帽/女装/雪纺衫', 4, 0, 255, 0, '', '', '', 1),
(26, '风衣', 0, '', 4, 0, 255, 0, '', '', '', 1),
(27, '大衣', 0, '', 4, 0, 255, 0, '', '', '', 1),
(28, '皮衣皮草', 0, '', 4, 0, 255, 0, '', '', '', 1),
(29, '棉服', 0, '', 4, 0, 255, 0, '', '', '', 1),
(30, '羽绒服', 0, '', 4, 0, 255, 0, '', '', '', 1),
(31, '孕妇装', 0, '', 4, 0, 255, 0, '', '', '', 1),
(32, '大码装', 0, '', 4, 0, 255, 0, '', '', '', 1),
(33, '中老年装', 0, '', 4, 0, 255, 0, '', '', '', 1),
(34, '婚纱礼服', 0, '', 4, 0, 255, 0, '', '', '', 1),
(35, '衬衫', 0, '', 5, 0, 255, 0, '', '', '', 1),
(36, 'T恤', 0, '', 5, 0, 255, 0, '', '', '', 1),
(37, 'POLO衫', 0, '', 5, 0, 255, 0, '', '', '', 1),
(38, '针织衫', 0, '', 5, 0, 255, 0, '', '', '', 1),
(39, '羊绒衫', 0, '', 5, 0, 255, 0, '', '', '', 1),
(40, '卫衣', 0, '', 5, 0, 255, 0, '', '', '', 1),
(41, '马甲／背心', 0, '', 5, 0, 255, 0, '', '', '', 1),
(42, '夹克', 0, '', 5, 0, 255, 0, '', '', '', 1),
(43, '风衣', 0, '', 5, 0, 255, 0, '', '', '', 1),
(44, '大衣', 0, '', 5, 0, 255, 0, '', '', '', 1),
(45, '皮衣', 0, '', 5, 0, 255, 0, '', '', '', 1),
(46, '外套', 0, '', 5, 0, 255, 0, '', '', '', 1),
(47, '西服', 0, '', 5, 0, 255, 0, '', '', '', 1),
(48, '棉服', 0, '', 5, 0, 255, 0, '', '', '', 1),
(49, '羽绒服', 0, '', 5, 0, 255, 0, '', '', '', 1),
(50, '牛仔裤', 0, '', 5, 0, 255, 0, '', '', '', 1),
(51, '休闲裤', 0, '', 5, 0, 255, 0, '', '', '', 1),
(52, '西裤', 0, '', 5, 0, 255, 0, '', '', '', 1),
(53, '西服套装', 0, '', 5, 0, 255, 0, '', '', '', 1),
(54, '大码装', 0, '', 5, 0, 255, 0, '', '', '', 1),
(55, '中老年装', 0, '', 5, 0, 255, 0, '', '', '', 1),
(56, '唐装', 0, '', 5, 0, 255, 0, '', '', '', 1),
(57, '工装', 0, '', 5, 0, 255, 0, '', '', '', 1),
(58, '文胸', 0, '', 6, 0, 255, 0, '', '', '', 1),
(59, '女式内裤', 0, '', 6, 0, 255, 0, '', '', '', 1),
(60, '男式内裤', 0, '', 6, 0, 255, 0, '', '', '', 1),
(61, '家居', 0, '', 6, 0, 255, 0, '', '', '', 1),
(62, '睡衣', 0, '', 6, 0, 255, 0, '', '', '', 1),
(63, '塑身衣', 0, '', 6, 0, 255, 0, '', '', '', 1),
(64, '睡袍／浴袍', 0, '', 6, 0, 255, 0, '', '', '', 1),
(65, '泳衣', 0, '', 6, 0, 255, 0, '', '', '', 1),
(66, '背心', 0, '', 6, 0, 255, 0, '', '', '', 1),
(67, '抹胸', 0, '', 6, 0, 255, 0, '', '', '', 1),
(68, '连裤袜', 0, '', 6, 0, 255, 0, '', '', '', 1),
(69, '美腿袜', 0, '', 6, 0, 255, 0, '', '', '', 1),
(70, '男袜', 0, '', 6, 0, 255, 0, '', '', '', 1),
(71, '女袜', 0, '', 6, 0, 255, 0, '', '', '', 1),
(72, '情趣内衣', 0, '', 6, 0, 255, 0, '', '', '', 1),
(73, '保暖内衣', 0, '', 6, 0, 255, 0, '', '', '', 1),
(74, '休闲鞋', 0, '', 7, 0, 255, 0, '', '', '', 1),
(75, '帆布鞋', 0, '', 7, 0, 255, 0, '', '', '', 1),
(76, '跑步鞋', 0, '', 7, 0, 255, 0, '', '', '', 1),
(77, '篮球鞋', 0, '', 7, 0, 255, 0, '', '', '', 1),
(78, '足球鞋', 0, '', 7, 0, 255, 0, '', '', '', 1),
(79, '训练鞋', 0, '', 7, 0, 255, 0, '', '', '', 1),
(80, '乒羽鞋', 0, '', 7, 0, 255, 0, '', '', '', 1),
(81, '拖鞋', 0, '', 7, 0, 255, 0, '', '', '', 1),
(82, '卫衣', 0, '', 7, 0, 255, 0, '', '', '', 1),
(83, '夹克', 0, '', 7, 0, 255, 0, '', '', '', 1),
(84, 'T恤', 0, '', 7, 0, 255, 0, '', '', '', 1),
(85, '棉服／羽绒服', 0, '', 7, 0, 255, 0, '', '', '', 1),
(86, '运动裤', 0, '', 7, 0, 255, 0, '', '', '', 1),
(87, '套装', 0, '', 7, 0, 255, 0, '', '', '', 1),
(88, '运动包', 0, '', 7, 0, 255, 0, '', '', '', 1),
(89, '运动配件', 0, '', 7, 0, 255, 0, '', '', '', 1),
(90, '平底鞋', 0, '', 8, 0, 255, 0, '', '', '', 1),
(91, '高跟鞋', 0, '', 8, 0, 255, 0, '', '', '', 1),
(92, '单鞋', 0, '', 8, 0, 255, 0, '', '', '', 1),
(93, '休闲鞋', 0, '', 8, 0, 255, 0, '', '', '', 1),
(94, '凉鞋', 0, '', 8, 0, 255, 0, '', '', '', 1),
(95, '女靴', 0, '', 8, 0, 255, 0, '', '', '', 1),
(96, '雪地靴', 0, '', 8, 0, 255, 0, '', '', '', 1),
(97, '拖鞋', 0, '', 8, 0, 255, 0, '', '', '', 1),
(98, '裸靴', 0, '', 8, 0, 255, 0, '', '', '', 1),
(99, '筒靴', 0, '', 8, 0, 255, 0, '', '', '', 1),
(100, '帆布鞋', 0, '', 8, 0, 255, 0, '', '', '', 1),
(101, '雨鞋／雨靴', 0, '', 8, 0, 255, 0, '', '', '', 1),
(102, '妈妈鞋', 0, '', 8, 0, 255, 0, '', '', '', 1),
(103, '鞋配件', 0, '', 8, 0, 255, 0, '', '', '', 1),
(104, '特色鞋', 0, '', 8, 0, 255, 0, '', '', '', 1),
(105, '鱼嘴鞋', 0, '', 8, 0, 255, 0, '', '', '', 1),
(106, '布鞋／绣花鞋', 0, '', 8, 0, 255, 0, '', '', '', 1),
(107, '商务休闲鞋', 0, '', 9, 0, 255, 0, '', '', '', 1),
(108, '正装鞋', 0, '', 9, 0, 255, 0, '', '', '', 1),
(109, '休闲鞋', 0, '', 9, 0, 255, 0, '', '', '', 1),
(110, '凉鞋／沙滩鞋', 0, '', 9, 0, 255, 0, '', '', '', 1),
(111, '男靴', 0, '', 9, 0, 255, 0, '', '', '', 1),
(112, '功能鞋', 0, '', 9, 0, 255, 0, '', '', '', 1),
(113, '拖鞋', 0, '', 9, 0, 255, 0, '', '', '', 1),
(114, '传统布鞋', 0, '', 9, 0, 255, 0, '', '', '', 1),
(115, '鞋配件', 0, '', 9, 0, 255, 0, '', '', '', 1),
(116, '帆布鞋', 0, '', 9, 0, 255, 0, '', '', '', 1),
(117, '豆豆鞋', 0, '', 9, 0, 255, 0, '', '', '', 1),
(118, '驾车鞋', 0, '', 9, 0, 255, 0, '', '', '', 1),
(119, '太阳镜', 0, '', 10, 0, 255, 0, '', '', '', 1),
(120, '框镜', 0, '', 10, 0, 255, 0, '', '', '', 1),
(121, '皮带', 0, '', 10, 0, 255, 0, '', '', '', 1),
(122, '围巾', 0, '', 10, 0, 255, 0, '', '', '', 1),
(123, '手套', 0, '', 10, 0, 255, 0, '', '', '', 1),
(124, '帽子', 0, '', 10, 0, 255, 0, '', '', '', 1),
(125, '领带', 0, '', 10, 0, 255, 0, '', '', '', 1),
(126, '袖扣', 0, '', 10, 0, 255, 0, '', '', '', 1),
(127, '其他配件', 0, '', 10, 0, 255, 0, '', '', '', 1),
(128, '丝巾', 0, '', 10, 0, 255, 0, '', '', '', 1),
(129, '披肩', 0, '', 10, 0, 255, 0, '', '', '', 1),
(130, '腰带', 0, '', 10, 0, 255, 0, '', '', '', 1),
(131, '腰链／腰封', 0, '', 10, 0, 255, 0, '', '', '', 1),
(132, '棒球帽', 0, '', 10, 0, 255, 0, '', '', '', 1),
(133, '毛线', 0, '', 10, 0, 255, 0, '', '', '', 1),
(134, '遮阳帽', 0, '', 10, 0, 255, 0, '', '', '', 1),
(135, '防紫外线手套', 0, '', 10, 0, 255, 0, '', '', '', 1),
(136, '草帽', 0, '', 10, 0, 255, 0, '', '', '', 1),
(137, '套装', 0, '', 11, 0, 255, 0, '', '', '', 1),
(138, '上衣', 0, '', 11, 0, 255, 0, '', '', '', 1),
(139, '裤子', 0, '', 11, 0, 255, 0, '', '', '', 1),
(140, '裙子', 0, '', 11, 0, 255, 0, '', '', '', 1),
(141, '内衣／家居服', 0, '', 11, 0, 255, 0, '', '', '', 1),
(142, '羽绒服／棉服', 0, '', 11, 0, 255, 0, '', '', '', 1),
(143, '亲子装', 0, '', 11, 0, 255, 0, '', '', '', 1),
(144, '儿童配饰', 0, '', 11, 0, 255, 0, '', '', '', 1),
(145, '礼服／演出服', 0, '', 11, 0, 255, 0, '', '', '', 1),
(146, '运动鞋', 0, '', 11, 0, 255, 0, '', '', '', 1),
(147, '单鞋', 0, '', 11, 0, 255, 0, '', '', '', 1),
(148, '靴子', 0, '', 11, 0, 255, 0, '', '', '', 1),
(149, '凉鞋', 0, '', 11, 0, 255, 0, '', '', '', 1),
(150, '功能鞋', 0, '', 11, 0, 255, 0, '', '', '', 1),
(151, '潮流女包', 0, '', 2, 0, 255, 0, '', '', '', 1),
(152, '时尚男包', 0, '', 2, 0, 255, 0, '', '', '', 1),
(153, '功能箱包', 0, '', 2, 0, 255, 0, '', '', '', 1),
(154, '礼品', 0, '', 2, 0, 255, 0, '', '', '', 1),
(155, '奢侈品', 0, '', 2, 0, 255, 0, '', '', '', 1),
(156, '钱包/卡包', 0, '', 151, 0, 255, 0, '', '', '', 1),
(157, '手拿包', 0, '', 151, 0, 255, 0, '', '', '', 1),
(158, '单肩包', 0, '', 151, 0, 255, 0, '', '', '', 1),
(159, '双肩包', 0, '', 151, 0, 255, 0, '', '', '', 1),
(160, '手提包', 0, '', 151, 0, 255, 0, '', '', '', 1),
(161, '斜挎包', 0, '', 151, 0, 255, 0, '', '', '', 1),
(162, '钱包/卡包', 0, '', 152, 0, 255, 0, '', '', '', 1),
(163, '男士手包', 0, '', 152, 0, 255, 0, '', '', '', 1),
(164, '腰带／礼盒', 0, '', 152, 0, 255, 0, '', '', '', 1),
(165, '商务公文包', 0, '', 152, 0, 255, 0, '', '', '', 1),
(166, '电脑数码包', 0, '', 153, 0, 255, 0, '', '', '', 1),
(167, '拉杆箱', 0, '', 153, 0, 255, 0, '', '', '', 1),
(168, '旅行包', 0, '', 153, 0, 255, 0, '', '', '', 1),
(169, '旅行配件', 0, '', 153, 0, 255, 0, '', '', '', 1),
(170, '休闲运动包', 0, '', 153, 0, 255, 0, '', '', '', 1),
(171, '登山包', 0, '', 153, 0, 255, 0, '', '', '', 1),
(172, '妈咪包', 0, '', 153, 0, 255, 0, '', '', '', 1),
(173, '书包', 0, '', 153, 0, 255, 0, '', '', '', 1),
(174, '火机烟具', 0, '', 154, 0, 255, 0, '', '', '', 1),
(175, '礼品文具', 0, '', 154, 0, 255, 0, '', '', '', 1),
(176, '瑞士军刀', 0, '', 154, 0, 255, 0, '', '', '', 1),
(177, '收藏品', 0, '', 154, 0, 255, 0, '', '', '', 1),
(178, '工艺礼品', 0, '', 154, 0, 255, 0, '', '', '', 1),
(179, '创意礼品', 0, '', 154, 0, 255, 0, '', '', '', 1),
(180, '礼卡礼卷', 0, '', 154, 0, 255, 0, '', '', '', 1),
(181, '鲜花速递', 0, '', 154, 0, 255, 0, '', '', '', 1),
(182, '婚庆用品', 0, '', 154, 0, 255, 0, '', '', '', 1),
(184, '奢侈品箱包', 0, '', 155, 0, 255, 0, '', '', '', 1),
(185, '钱包', 0, '', 155, 0, 255, 0, '', '', '', 1),
(186, '服饰', 0, '', 155, 0, 255, 0, '', '', '', 1),
(187, '腰带', 0, '', 155, 0, 255, 0, '', '', '', 1),
(188, '太阳镜眼镜', 0, '', 155, 0, 255, 0, '', '', '', 1),
(189, '配件', 0, '', 155, 0, 255, 0, '', '', '', 1),
(190, 'GUCCI', 0, '', 155, 0, 255, 0, '', '', '', 1),
(191, 'PRADA', 0, '', 155, 0, 255, 0, '', '', '', 1),
(192, 'FENDI', 0, '', 155, 0, 255, 0, '', '', '', 1),
(193, 'BURBERRY', 0, '', 155, 0, 255, 0, '', '', '', 1),
(194, 'MONTBLANC', 0, '', 155, 0, 255, 0, '', '', '', 1),
(195, 'ARMANI', 0, '', 155, 0, 255, 0, '', '', '', 1),
(196, 'RIMOWA', 0, '', 155, 0, 255, 0, '', '', '', 1),
(197, 'RAY-BAN', 0, '', 155, 0, 255, 0, '', '', '', 1),
(198, 'COACH', 0, '', 155, 0, 255, 0, '', '', '', 1),
(199, '更多品牌', 0, '', 155, 0, 255, 0, '', '', '', 1),
(200, '家纺', 0, '', 3, 0, 255, 0, '', '', '', 1),
(201, '灯具', 0, '', 3, 0, 255, 0, '', '', '', 1),
(202, '生活日用', 0, '', 3, 0, 255, 0, '', '', '', 1),
(203, '家装软饰', 0, '', 3, 0, 255, 0, '', '', '', 1),
(204, '清洁日用', 0, '', 3, 0, 255, 0, '', '', '', 1),
(205, '宠物生活', 0, '', 3, 0, 255, 0, '', '', '', 1),
(206, '床品件套', 0, '', 200, 0, 255, 0, '', '', '', 1),
(207, '被子', 0, '', 200, 0, 255, 0, '', '', '', 1),
(208, '枕芯枕套', 0, '', 200, 0, 255, 0, '', '', '', 1),
(209, '床单被罩', 0, '', 200, 0, 255, 0, '', '', '', 1),
(210, '毛巾被/毯', 0, '', 200, 0, 255, 0, '', '', '', 1),
(211, '床垫/床褥', 0, '', 200, 0, 255, 0, '', '', '', 1),
(212, '蚊帐/凉席', 0, '', 200, 0, 255, 0, '', '', '', 1),
(213, '抱枕坐垫', 0, '', 200, 0, 255, 0, '', '', '', 1),
(214, '毛巾家纺', 0, '', 200, 0, 255, 0, '', '', '', 1),
(215, '电热毯', 0, '', 200, 0, 255, 0, '', '', '', 1),
(216, '窗帘/窗纱', 0, '', 200, 0, 255, 0, '', '', '', 1),
(217, '酒店用品', 0, '', 200, 0, 255, 0, '', '', '', 1),
(218, '台灯', 0, '', 201, 0, 255, 0, '', '', '', 1),
(219, '节能灯', 0, '', 201, 0, 255, 0, '', '', '', 1),
(220, '装饰灯', 0, '', 201, 0, 255, 0, '', '', '', 1),
(221, '落地灯', 0, '', 201, 0, 255, 0, '', '', '', 1),
(222, '应急灯/手电', 0, '', 201, 0, 255, 0, '', '', '', 1),
(223, 'LED灯', 0, '', 201, 0, 255, 0, '', '', '', 1),
(224, '吸顶灯', 0, '', 201, 0, 255, 0, '', '', '', 1),
(225, '五金电器', 0, '', 201, 0, 255, 0, '', '', '', 1),
(226, '吊灯', 0, '', 201, 0, 255, 0, '', '', '', 1),
(227, '氛围照明', 0, '', 201, 0, 255, 0, '', '', '', 1),
(228, '收纳用品', 0, '', 202, 0, 255, 0, '', '', '', 1),
(229, '雨伞雨具', 0, '', 202, 0, 255, 0, '', '', '', 1),
(230, '浴室用品', 0, '', 202, 0, 255, 0, '', '', '', 1),
(231, '缝纫用品', 0, '', 202, 0, 255, 0, '', '', '', 1),
(232, '洗晒用品', 0, '', 202, 0, 255, 0, '', '', '', 1),
(233, '净化除味', 0, '', 202, 0, 255, 0, '', '', '', 1),
(234, '桌布/罩件', 0, '', 203, 0, 255, 0, '', '', '', 1),
(235, '地毯地垫', 0, '', 203, 0, 255, 0, '', '', '', 1),
(236, '沙发垫套', 0, '', 203, 0, 255, 0, '', '', '', 1),
(237, '相框/相片墙', 0, '', 203, 0, 255, 0, '', '', '', 1),
(238, '墙画墙贴', 0, '', 203, 0, 255, 0, '', '', '', 1),
(239, '节庆饰品', 0, '', 203, 0, 255, 0, '', '', '', 1),
(240, '手工/十字绣', 0, '', 203, 0, 255, 0, '', '', '', 1),
(241, '工艺摆件', 0, '', 203, 0, 255, 0, '', '', '', 1),
(242, '其他', 0, '', 203, 0, 255, 0, '', '', '', 1),
(243, '纸品湿巾', 0, '', 204, 0, 255, 0, '', '', '', 1),
(244, '衣物清洁', 0, '', 204, 0, 255, 0, '', '', '', 1),
(245, '清洁工具', 0, '', 204, 0, 255, 0, '', '', '', 1),
(246, '驱虫用品', 0, '', 204, 0, 255, 0, '', '', '', 1),
(247, '居室清洁', 0, '', 204, 0, 255, 0, '', '', '', 1),
(248, '皮具护理', 0, '', 204, 0, 255, 0, '', '', '', 1),
(249, '宠物主粮', 0, '', 205, 0, 255, 0, '', '', '', 1),
(250, '宠物零食', 0, '', 205, 0, 255, 0, '', '', '', 1),
(251, '营养品', 0, '', 205, 0, 255, 0, '', '', '', 1),
(252, '家居日用', 0, '', 205, 0, 255, 0, '', '', '', 1),
(253, '玩具服饰', 0, '', 205, 0, 255, 0, '', '', '', 1),
(254, '出行装备', 0, '', 205, 0, 255, 0, '', '', '', 1),
(255, '医护美容', 0, '', 205, 0, 255, 0, '', '', '', 1),
(256, '数码办公', 0, '', 0, 0, 255, 0, '', '', '', 1),
(258, '手机配件', 0, '', 256, 0, 255, 0, '', '', '', 1),
(259, '摄影摄像', 0, '', 256, 0, 255, 0, '', '', '', 1),
(260, '数码配件', 0, '', 256, 0, 255, 0, '', '', '', 1),
(261, '时尚影音', 0, '', 256, 0, 255, 0, '', '', '', 1),
(262, '手机', 0, '', 257, 0, 255, 0, '', '', '', 1),
(263, '对讲机', 0, '', 257, 0, 255, 0, '', '', '', 1),
(264, '手机电池', 0, '', 258, 0, 255, 0, '', '', '', 1),
(265, '蓝牙耳机', 0, '', 258, 0, 255, 0, '', '', '', 1),
(266, '充电器/数据线', 0, '', 258, 0, 255, 0, '', '', '', 1),
(267, '手机耳机', 0, '', 258, 0, 255, 0, '', '', '', 1),
(268, '手机贴膜', 0, '', 258, 0, 255, 0, '', '', '', 1),
(269, '手机存储卡', 0, '', 258, 0, 255, 0, '', '', '', 1),
(270, '手机保护套', 0, '', 258, 0, 255, 0, '', '', '', 1),
(271, '车载配件', 0, '', 258, 0, 255, 0, '', '', '', 1),
(272, 'iPhone 配件', 0, '', 258, 0, 255, 0, '', '', '', 1),
(273, '创意配件', 0, '', 258, 0, 255, 0, '', '', '', 1),
(274, '便携/无线音响', 0, '', 258, 0, 255, 0, '', '', '', 1),
(275, '手机饰品', 0, '', 258, 0, 255, 0, '', '', '', 1),
(276, '数码相机', 0, '', 259, 0, 255, 0, '', '', '', 1),
(277, '单电/微单相机', 0, '', 259, 0, 255, 0, '', '', '', 1),
(278, '单反相机', 0, '', 259, 0, 255, 0, '', '', '', 1),
(279, '摄像机', 0, '', 259, 0, 255, 0, '', '', '', 1),
(280, '拍立得', 0, '', 259, 0, 255, 0, '', '', '', 1),
(281, '镜头', 0, '', 259, 0, 255, 0, '', '', '', 1),
(282, '存储卡', 0, '', 260, 0, 255, 0, '', '', '', 1),
(283, '读卡器', 0, '', 260, 0, 255, 0, '', '', '', 1),
(284, '滤镜', 0, '', 260, 0, 255, 0, '', '', '', 1),
(285, '闪光灯/手柄', 0, '', 260, 0, 255, 0, '', '', '', 1),
(286, '相机包', 0, '', 260, 0, 255, 0, '', '', '', 1),
(287, '三脚架/云台', 0, '', 260, 0, 255, 0, '', '', '', 1),
(288, '相机清洁', 0, '', 260, 0, 255, 0, '', '', '', 1),
(289, '相机贴膜', 0, '', 260, 0, 255, 0, '', '', '', 1),
(290, '机身附件', 0, '', 260, 0, 255, 0, '', '', '', 1),
(291, '镜头附件', 0, '', 260, 0, 255, 0, '', '', '', 1),
(292, '电池/充电器', 0, '', 260, 0, 255, 0, '', '', '', 1),
(293, '移动电源', 0, '', 260, 0, 255, 0, '', '', '', 1),
(294, 'MP3/MP4', 0, '', 261, 0, 255, 0, '', '', '', 1),
(295, '智能设备', 0, '', 261, 0, 255, 0, '', '', '', 1),
(296, '耳机/耳麦', 0, '', 261, 0, 255, 0, '', '', '', 1),
(297, '音箱', 0, '', 261, 0, 255, 0, '', '', '', 1),
(298, '高清播放器', 0, '', 261, 0, 255, 0, '', '', '', 1),
(299, '电子书', 0, '', 261, 0, 255, 0, '', '', '', 1),
(300, '电子词典', 0, '', 261, 0, 255, 0, '', '', '', 1),
(301, 'MP3/MP4配件', 0, '', 261, 0, 255, 0, '', '', '', 1),
(302, '录音笔', 0, '', 261, 0, 255, 0, '', '', '', 1),
(303, '麦克风', 0, '', 261, 0, 255, 0, '', '', '', 1),
(304, '专业音频', 0, '', 261, 0, 255, 0, '', '', '', 1),
(305, '电子教育', 0, '', 261, 0, 255, 0, '', '', '', 1),
(306, '数码相框', 0, '', 261, 0, 255, 0, '', '', '', 1),
(307, '苹果配件', 0, '', 261, 0, 255, 0, '', '', '', 1),
(308, '家用电器', 0, '', 0, 0, 255, 0, '', '', '', 1),
(309, '大家电', 0, '', 308, 0, 255, 0, '', '', '', 1),
(310, '生活电器', 0, '', 308, 0, 255, 0, '', '', '', 1),
(311, '厨房电器', 0, '', 308, 0, 255, 0, '', '', '', 1),
(312, '个护健康', 0, '', 308, 0, 255, 0, '', '', '', 1),
(313, '五金家装', 0, '', 308, 0, 255, 0, '', '', '', 1),
(314, '平板电视', 0, '', 309, 0, 255, 0, '', '', '', 1),
(315, '空调', 0, '', 309, 0, 255, 0, '', '', '', 1),
(316, '冰箱', 0, '', 309, 0, 255, 0, '', '', '', 1),
(317, '洗衣机', 0, '', 309, 0, 255, 0, '', '', '', 1),
(318, '家庭影院', 0, '', 309, 0, 255, 0, '', '', '', 1),
(319, 'DVD播放机', 0, '', 309, 0, 255, 0, '', '', '', 1),
(320, '迷你音响', 0, '', 309, 0, 255, 0, '', '', '', 1),
(321, '烟机/灶具', 0, '', 309, 0, 255, 0, '', '', '', 1),
(322, '热水器', 0, '', 309, 0, 255, 0, '', '', '', 1),
(323, '消毒柜/洗碗机', 0, '', 309, 0, 255, 0, '', '', '', 1),
(324, '酒柜/冰吧/冷柜', 0, '', 309, 0, 255, 0, '', '', '', 1),
(325, '家电配件', 0, '', 309, 0, 255, 0, '', '', '', 1),
(326, '净化器', 0, '', 310, 0, 255, 0, '', '', '', 1),
(327, '电风扇', 0, '', 310, 0, 255, 0, '', '', '', 1),
(328, '吸尘器', 0, '', 310, 0, 255, 0, '', '', '', 1),
(329, '加湿器', 0, '', 310, 0, 255, 0, '', '', '', 1),
(330, '净水设备', 0, '', 310, 0, 255, 0, '', '', '', 1),
(331, '饮水机', 0, '', 310, 0, 255, 0, '', '', '', 1),
(332, '冷风扇', 0, '', 310, 0, 255, 0, '', '', '', 1),
(333, '挂烫机/熨斗', 0, '', 310, 0, 255, 0, '', '', '', 1),
(334, '电话机', 0, '', 310, 0, 255, 0, '', '', '', 1),
(335, '插座', 0, '', 310, 0, 255, 0, '', '', '', 1),
(336, '收录/音机', 0, '', 310, 0, 255, 0, '', '', '', 1),
(337, '除湿/干衣机', 0, '', 310, 0, 255, 0, '', '', '', 1),
(338, '清洁机', 0, '', 310, 0, 255, 0, '', '', '', 1),
(339, '取暖电器', 0, '', 310, 0, 255, 0, '', '', '', 1),
(340, '其它生活电器', 0, '', 310, 0, 255, 0, '', '', '', 1),
(341, '料理/榨汁机', 0, '', 311, 0, 255, 0, '', '', '', 1),
(342, '豆浆机', 0, '', 311, 0, 255, 0, '', '', '', 1),
(343, '电饭煲', 0, '', 311, 0, 255, 0, '', '', '', 1),
(344, '电压力锅', 0, '', 311, 0, 255, 0, '', '', '', 1),
(345, '面包机', 0, '', 311, 0, 255, 0, '', '', '', 1),
(346, '咖啡机', 0, '', 311, 0, 255, 0, '', '', '', 1),
(347, '微波炉', 0, '', 311, 0, 255, 0, '', '', '', 1),
(348, '电烤箱', 0, '', 311, 0, 255, 0, '', '', '', 1),
(349, '电磁炉', 0, '', 311, 0, 255, 0, '', '', '', 1),
(350, '电饼铛/烧烤盘', 0, '', 311, 0, 255, 0, '', '', '', 1),
(351, '煮蛋器', 0, '', 311, 0, 255, 0, '', '', '', 1),
(352, '酸奶机', 0, '', 311, 0, 255, 0, '', '', '', 1),
(353, '电炖锅', 0, '', 311, 0, 255, 0, '', '', '', 1),
(354, '电水壶/热水瓶', 0, '', 311, 0, 255, 0, '', '', '', 1),
(355, '多用途锅', 0, '', 311, 0, 255, 0, '', '', '', 1),
(356, '果蔬解毒机', 0, '', 311, 0, 255, 0, '', '', '', 1),
(357, '其它厨房电器', 0, '', 311, 0, 255, 0, '', '', '', 1),
(358, '剃须刀', 0, '', 312, 0, 255, 0, '', '', '', 1),
(359, '剃/脱毛器', 0, '', 312, 0, 255, 0, '', '', '', 1),
(360, '口腔护理', 0, '', 312, 0, 255, 0, '', '', '', 1),
(361, '电吹风', 0, '', 312, 0, 255, 0, '', '', '', 1),
(362, '美容器', 0, '', 312, 0, 255, 0, '', '', '', 1),
(363, '美发器', 0, '', 312, 0, 255, 0, '', '', '', 1),
(364, '按摩椅', 0, '', 312, 0, 255, 0, '', '', '', 1),
(365, '按摩器', 0, '', 312, 0, 255, 0, '', '', '', 1),
(366, '足浴盆', 0, '', 312, 0, 255, 0, '', '', '', 1),
(367, '血压计', 0, '', 312, 0, 255, 0, '', '', '', 1),
(368, '健康秤/厨房秤', 0, '', 312, 0, 255, 0, '', '', '', 1),
(369, '血糖仪', 0, '', 312, 0, 255, 0, '', '', '', 1),
(370, '体温计', 0, '', 312, 0, 255, 0, '', '', '', 1),
(371, '计步器/脂肪检测仪', 0, '', 312, 0, 255, 0, '', '', '', 1),
(372, '其它健康电器', 0, '', 312, 0, 255, 0, '', '', '', 1),
(373, '电动工具', 0, '', 313, 0, 255, 0, '', '', '', 1),
(374, '手动工具', 0, '', 313, 0, 255, 0, '', '', '', 1),
(375, '仪器仪表', 0, '', 313, 0, 255, 0, '', '', '', 1),
(376, '浴霸/排气扇', 0, '', 313, 0, 255, 0, '', '', '', 1),
(377, '灯具', 0, '', 313, 0, 255, 0, '', '', '', 1),
(378, 'LED灯', 0, '', 313, 0, 255, 0, '', '', '', 1),
(379, '洁身器', 0, '', 313, 0, 255, 0, '', '', '', 1),
(380, '水槽', 0, '', 313, 0, 255, 0, '', '', '', 1),
(381, '龙头', 0, '', 313, 0, 255, 0, '', '', '', 1),
(382, '淋浴花洒', 0, '', 313, 0, 255, 0, '', '', '', 1),
(383, '厨卫五金', 0, '', 313, 0, 255, 0, '', '', '', 1),
(384, '家具五金', 0, '', 313, 0, 255, 0, '', '', '', 1),
(385, '门铃', 0, '', 313, 0, 255, 0, '', '', '', 1),
(386, '电气开关', 0, '', 313, 0, 255, 0, '', '', '', 1),
(387, '插座', 0, '', 313, 0, 255, 0, '', '', '', 1),
(388, '电工电料', 0, '', 313, 0, 255, 0, '', '', '', 1),
(389, '监控安防', 0, '', 313, 0, 255, 0, '', '', '', 1),
(390, '电脑整机', 0, '', 256, 0, 255, 0, '', '', '', 1),
(391, '电脑配件', 0, '', 256, 0, 255, 0, '', '', '', 1),
(392, '外设产品', 0, '', 256, 0, 255, 0, '', '', '', 1),
(393, '网络产品', 0, '', 256, 0, 255, 0, '', '', '', 1),
(394, '办公打印', 0, '', 256, 0, 255, 0, '', '', '', 1),
(395, '办公文仪', 0, '', 256, 0, 255, 0, '', '', '', 1),
(398, '笔记本', 0, '', 390, 0, 255, 0, '', '', '', 1),
(399, '超极本', 0, '', 390, 0, 255, 0, '', '', '', 1),
(400, '游戏本', 0, '', 390, 0, 255, 0, '', '', '', 1),
(401, '平板电脑', 0, '', 390, 0, 255, 0, '', '', '', 1),
(402, '平板电脑配件', 0, '', 390, 0, 255, 0, '', '', '', 1),
(403, '台式机', 0, '', 390, 0, 255, 0, '', '', '', 1),
(404, '服务器', 0, '', 390, 0, 255, 0, '', '', '', 1),
(405, '笔记本配件', 0, '', 390, 0, 255, 0, '', '', '', 1),
(406, 'CPU', 0, '', 391, 0, 255, 0, '', '', '', 1),
(407, '主板', 0, '', 391, 0, 255, 0, '', '', '', 1),
(408, '显卡', 0, '', 391, 0, 255, 0, '', '', '', 1),
(409, '硬盘', 0, '', 391, 0, 255, 0, '', '', '', 1),
(410, 'SSD固态硬盘', 0, '', 391, 0, 255, 0, '', '', '', 1),
(411, '内存', 0, '', 391, 0, 255, 0, '', '', '', 1),
(412, '机箱', 0, '', 391, 0, 255, 0, '', '', '', 1),
(413, '电源', 0, '', 391, 0, 255, 0, '', '', '', 1),
(414, '显示器', 0, '', 391, 0, 255, 0, '', '', '', 1),
(415, '刻录机/光驱', 0, '', 391, 0, 255, 0, '', '', '', 1),
(416, '散热器', 0, '', 391, 0, 255, 0, '', '', '', 1),
(417, '声卡/扩展卡', 0, '', 391, 0, 255, 0, '', '', '', 1),
(418, '装机配件', 0, '', 391, 0, 255, 0, '', '', '', 1),
(419, '鼠标', 0, '', 392, 0, 255, 0, '', '', '', 1),
(420, '键盘', 0, '', 392, 0, 255, 0, '', '', '', 1),
(421, '移动硬盘', 0, '', 392, 0, 255, 0, '', '', '', 1),
(422, 'U盘', 0, '', 392, 0, 255, 0, '', '', '', 1),
(423, '摄像头', 0, '', 392, 0, 255, 0, '', '', '', 1),
(424, '外置盒', 0, '', 392, 0, 255, 0, '', '', '', 1),
(425, '游戏设备', 0, '', 392, 0, 255, 0, '', '', '', 1),
(426, '电视盒', 0, '', 392, 0, 255, 0, '', '', '', 1),
(427, '手写板', 0, '', 392, 0, 255, 0, '', '', '', 1),
(428, '鼠标垫', 0, '', 392, 0, 255, 0, '', '', '', 1),
(429, '插座', 0, '', 392, 0, 255, 0, '', '', '', 1),
(430, 'UPS电源', 0, '', 392, 0, 255, 0, '', '', '', 1),
(431, '线缆', 0, '', 392, 0, 255, 0, '', '', '', 1),
(432, '电脑工具', 0, '', 392, 0, 255, 0, '', '', '', 1),
(433, '电脑清洁', 0, '', 392, 0, 255, 0, '', '', '', 1),
(434, '路由器', 0, '', 393, 0, 255, 0, '', '', '', 1),
(435, '网卡', 0, '', 393, 0, 255, 0, '', '', '', 1),
(436, '交换机', 0, '', 393, 0, 255, 0, '', '', '', 1),
(437, '网络存储', 0, '', 393, 0, 255, 0, '', '', '', 1),
(438, '3G上网', 0, '', 393, 0, 255, 0, '', '', '', 1),
(439, '网络盒子', 0, '', 393, 0, 255, 0, '', '', '', 1),
(440, '打印机', 0, '', 394, 0, 255, 0, '', '', '', 1),
(441, '一体机', 0, '', 394, 0, 255, 0, '', '', '', 1),
(442, '投影机', 0, '', 394, 0, 255, 0, '', '', '', 1),
(443, '投影配件', 0, '', 394, 0, 255, 0, '', '', '', 1),
(444, '传真机', 0, '', 394, 0, 255, 0, '', '', '', 1),
(445, '复合机', 0, '', 394, 0, 255, 0, '', '', '', 1),
(446, '碎纸机', 0, '', 394, 0, 255, 0, '', '', '', 1),
(447, '扫描仪', 0, '', 394, 0, 255, 0, '', '', '', 1),
(448, '墨盒', 0, '', 394, 0, 255, 0, '', '', '', 1),
(449, '硒鼓', 0, '', 394, 0, 255, 0, '', '', '', 1),
(450, '墨粉', 0, '', 394, 0, 255, 0, '', '', '', 1),
(451, '色带', 0, '', 394, 0, 255, 0, '', '', '', 1),
(452, '办公文具', 0, '', 395, 0, 255, 0, '', '', '', 1),
(453, '文件管理', 0, '', 395, 0, 255, 0, '', '', '', 1),
(454, '笔类', 0, '', 395, 0, 255, 0, '', '', '', 1),
(455, '纸类', 0, '', 395, 0, 255, 0, '', '', '', 1),
(456, '本册/便签', 0, '', 395, 0, 255, 0, '', '', '', 1),
(457, '学生文具', 0, '', 395, 0, 255, 0, '', '', '', 1),
(458, '财务用品', 0, '', 395, 0, 255, 0, '', '', '', 1),
(459, '计算器', 0, '', 395, 0, 255, 0, '', '', '', 1),
(460, '激光笔', 0, '', 395, 0, 255, 0, '', '', '', 1),
(461, '白板/封装', 0, '', 395, 0, 255, 0, '', '', '', 1),
(462, '考勤机', 0, '', 395, 0, 255, 0, '', '', '', 1),
(463, '刻录碟片/附件', 0, '', 395, 0, 255, 0, '', '', '', 1),
(464, '点钞机', 0, '', 395, 0, 255, 0, '', '', '', 1),
(465, '支付设备/POS机', 0, '', 395, 0, 255, 0, '', '', '', 1),
(466, '安防监控', 0, '', 395, 0, 255, 0, '', '', '', 1),
(467, '呼叫/会议设备', 0, '', 395, 0, 255, 0, '', '', '', 1),
(468, '保险柜', 0, '', 395, 0, 255, 0, '', '', '', 1),
(469, '办公家具', 0, '', 395, 0, 255, 0, '', '', '', 1),
(470, '个护化妆', 0, '', 0, 0, 255, 0, '', '', '', 1),
(471, '面部护理', 0, '', 470, 0, 255, 0, '', '', '', 1),
(472, '身体护理', 0, '', 470, 0, 255, 0, '', '', '', 1),
(473, '口腔护理', 0, '', 470, 0, 255, 0, '', '', '', 1),
(474, '女性护理', 0, '', 470, 0, 255, 0, '', '', '', 1),
(475, '男士护理', 0, '', 470, 0, 255, 0, '', '', '', 1),
(476, '魅力彩妆', 0, '', 470, 0, 255, 0, '', '', '', 1),
(477, '香水SPA', 0, '', 470, 0, 255, 0, '', '', '', 1),
(478, '洁面乳', 0, '', 471, 0, 255, 0, '', '', '', 1),
(479, '爽肤水', 0, '', 471, 0, 255, 0, '', '', '', 1),
(480, '精华露', 0, '', 471, 0, 255, 0, '', '', '', 1),
(481, '乳液面霜', 0, '', 471, 0, 255, 0, '', '', '', 1),
(482, '面膜面贴', 0, '', 471, 0, 255, 0, '', '', '', 1),
(483, '眼部护理', 0, '', 471, 0, 255, 0, '', '', '', 1),
(484, '颈部护理', 0, '', 471, 0, 255, 0, '', '', '', 1),
(485, 'T区护理', 0, '', 471, 0, 255, 0, '', '', '', 1),
(486, '护肤套装', 0, '', 471, 0, 255, 0, '', '', '', 1),
(487, '防晒隔离', 0, '', 471, 0, 255, 0, '', '', '', 1),
(488, '洗发护发', 0, '', 472, 0, 255, 0, '', '', '', 1),
(489, '染发/造型', 0, '', 472, 0, 255, 0, '', '', '', 1),
(490, '沐浴', 0, '', 472, 0, 255, 0, '', '', '', 1),
(491, '磨砂/浴盐', 0, '', 472, 0, 255, 0, '', '', '', 1),
(492, '身体乳', 0, '', 472, 0, 255, 0, '', '', '', 1),
(493, '手工/香皂', 0, '', 472, 0, 255, 0, '', '', '', 1),
(494, '香薰精油', 0, '', 472, 0, 255, 0, '', '', '', 1),
(495, '纤体瘦身', 0, '', 472, 0, 255, 0, '', '', '', 1),
(496, '脱毛膏', 0, '', 472, 0, 255, 0, '', '', '', 1),
(497, '手足护理', 0, '', 472, 0, 255, 0, '', '', '', 1),
(498, '洗护套装', 0, '', 472, 0, 255, 0, '', '', '', 1),
(499, '牙膏/牙粉', 0, '', 473, 0, 255, 0, '', '', '', 1),
(500, '牙刷/牙线', 0, '', 473, 0, 255, 0, '', '', '', 1),
(501, '漱口水', 0, '', 473, 0, 255, 0, '', '', '', 1),
(502, '卫生巾', 0, '', 474, 0, 255, 0, '', '', '', 1),
(503, '卫生护垫', 0, '', 474, 0, 255, 0, '', '', '', 1),
(504, '洗液', 0, '', 474, 0, 255, 0, '', '', '', 1),
(505, '美容食品', 0, '', 474, 0, 255, 0, '', '', '', 1),
(506, '其他', 0, '', 474, 0, 255, 0, '', '', '', 1),
(507, '脸部护理', 0, '', 475, 0, 255, 0, '', '', '', 1),
(508, '眼部护理', 0, '', 475, 0, 255, 0, '', '', '', 1),
(509, '身体护理', 0, '', 475, 0, 255, 0, '', '', '', 1),
(510, '男士香水', 0, '', 475, 0, 255, 0, '', '', '', 1),
(511, '剃须护理', 0, '', 475, 0, 255, 0, '', '', '', 1),
(512, '防脱洗护', 0, '', 475, 0, 255, 0, '', '', '', 1),
(513, '男士唇膏', 0, '', 475, 0, 255, 0, '', '', '', 1),
(514, '粉底/遮瑕', 0, '', 476, 0, 255, 0, '', '', '', 1),
(515, '腮红', 0, '', 476, 0, 255, 0, '', '', '', 1),
(516, '眼影/眼线', 0, '', 476, 0, 255, 0, '', '', '', 1),
(517, '眉笔', 0, '', 476, 0, 255, 0, '', '', '', 1),
(518, '睫毛膏', 0, '', 476, 0, 255, 0, '', '', '', 1),
(519, '唇膏唇彩', 0, '', 476, 0, 255, 0, '', '', '', 1),
(520, '彩妆组合', 0, '', 476, 0, 255, 0, '', '', '', 1),
(521, '卸妆', 0, '', 476, 0, 255, 0, '', '', '', 1),
(522, '美甲', 0, '', 476, 0, 255, 0, '', '', '', 1),
(523, '彩妆工具', 0, '', 476, 0, 255, 0, '', '', '', 1),
(524, '假发', 0, '', 476, 0, 255, 0, '', '', '', 1),
(525, '女士香水', 0, '', 477, 0, 255, 0, '', '', '', 1),
(526, '男士香水', 0, '', 477, 0, 255, 0, '', '', '', 1),
(527, '组合套装', 0, '', 477, 0, 255, 0, '', '', '', 1),
(528, '迷你香水', 0, '', 477, 0, 255, 0, '', '', '', 1),
(529, '香体走珠', 0, '', 477, 0, 255, 0, '', '', '', 1),
(530, '珠宝手表', 0, '', 0, 0, 255, 0, '', '', '', 1),
(531, '时尚饰品', 0, '', 530, 0, 255, 0, '', '', '', 1),
(532, '纯金K金饰品', 0, '', 530, 0, 255, 0, '', '', '', 1),
(533, '金银投资', 0, '', 530, 0, 255, 0, '', '', '', 1),
(534, '银饰', 0, '', 530, 0, 255, 0, '', '', '', 1),
(535, '钻石饰品', 0, '', 530, 0, 255, 0, '', '', '', 1),
(536, '翡翠玉石', 0, '', 530, 0, 255, 0, '', '', '', 1),
(537, '水晶玛瑙', 0, '', 530, 0, 255, 0, '', '', '', 1),
(538, '宝石珍珠', 0, '', 530, 0, 255, 0, '', '', '', 1),
(539, '婚庆', 0, '', 530, 0, 255, 0, '', '', '', 1),
(540, '钟表手表', 0, '', 530, 0, 255, 0, '', '', '', 1),
(541, '项链', 0, '', 531, 0, 255, 0, '', '', '', 1),
(542, '手链/脚链', 0, '', 531, 0, 255, 0, '', '', '', 1),
(543, '戒指', 0, '', 531, 0, 255, 0, '', '', '', 1),
(544, '耳饰', 0, '', 531, 0, 255, 0, '', '', '', 1),
(545, '头饰', 0, '', 531, 0, 255, 0, '', '', '', 1),
(546, '胸针', 0, '', 531, 0, 255, 0, '', '', '', 1),
(547, '婚庆饰品', 0, '', 531, 0, 255, 0, '', '', '', 1),
(548, '饰品配件', 0, '', 531, 0, 255, 0, '', '', '', 1),
(549, '吊坠/项链', 0, '', 532, 0, 255, 0, '', '', '', 1),
(550, '手镯/手链/脚链', 0, '', 532, 0, 255, 0, '', '', '', 1),
(551, '戒指', 0, '', 532, 0, 255, 0, '', '', '', 1),
(552, '耳饰', 0, '', 532, 0, 255, 0, '', '', '', 1),
(553, '工艺金', 0, '', 533, 0, 255, 0, '', '', '', 1),
(554, '工艺银', 0, '', 533, 0, 255, 0, '', '', '', 1),
(555, '吊坠/项链', 0, '', 534, 0, 255, 0, '', '', '', 1),
(556, '手镯/手链/脚链', 0, '', 534, 0, 255, 0, '', '', '', 1),
(557, '戒指/耳饰', 0, '', 534, 0, 255, 0, '', '', '', 1),
(558, '宝宝金银', 0, '', 534, 0, 255, 0, '', '', '', 1),
(559, '千足银', 0, '', 534, 0, 255, 0, '', '', '', 1),
(560, '裸钻', 0, '', 535, 0, 255, 0, '', '', '', 1),
(561, '戒指', 0, '', 535, 0, 255, 0, '', '', '', 1),
(563, '项链/吊坠', 0, '', 535, 0, 255, 0, '', '', '', 1),
(564, '耳饰', 0, '', 535, 0, 255, 0, '', '', '', 1),
(565, '手镯/手链', 0, '', 535, 0, 255, 0, '', '', '', 1),
(566, '项链/吊坠', 0, '', 536, 0, 255, 0, '', '', '', 1),
(567, '手镯/手串', 0, '', 536, 0, 255, 0, '', '', '', 1),
(568, '戒指', 0, '', 536, 0, 255, 0, '', '', '', 1),
(569, '耳饰', 0, '', 536, 0, 255, 0, '', '', '', 1),
(570, '挂件/摆件/把件', 0, '', 536, 0, 255, 0, '', '', '', 1),
(571, '高值收藏', 0, '', 536, 0, 255, 0, '', '', '', 1),
(572, '耳饰', 0, '', 537, 0, 255, 0, '', '', '', 1),
(573, '手镯/手链/脚链', 0, '', 537, 0, 255, 0, '', '', '', 1),
(574, '戒指', 0, '', 537, 0, 255, 0, '', '', '', 1),
(575, '头饰/胸针', 0, '', 537, 0, 255, 0, '', '', '', 1),
(576, '摆件/挂件', 0, '', 537, 0, 255, 0, '', '', '', 1),
(577, '项链/吊坠', 0, '', 538, 0, 255, 0, '', '', '', 1),
(578, '耳饰', 0, '', 538, 0, 255, 0, '', '', '', 1),
(579, '手镯/手链', 0, '', 538, 0, 255, 0, '', '', '', 1),
(580, '戒指', 0, '', 538, 0, 255, 0, '', '', '', 1),
(581, '婚嫁首饰', 0, '', 539, 0, 255, 0, '', '', '', 1),
(582, '婚纱摄影', 0, '', 539, 0, 255, 0, '', '', '', 1),
(583, '婚纱礼服', 0, '', 539, 0, 255, 0, '', '', '', 1),
(584, '婚庆服务', 0, '', 539, 0, 255, 0, '', '', '', 1),
(585, '婚庆礼品/用品', 0, '', 539, 0, 255, 0, '', '', '', 1),
(586, '婚宴', 0, '', 539, 0, 255, 0, '', '', '', 1),
(587, '瑞士品牌', 0, '', 540, 0, 255, 0, '', '', '', 1),
(588, '国产品牌', 0, '', 540, 0, 255, 0, '', '', '', 1),
(589, '日本品牌', 0, '', 540, 0, 255, 0, '', '', '', 1),
(590, '时尚品牌', 0, '', 540, 0, 255, 0, '', '', '', 1),
(591, '闹钟挂钟', 0, '', 540, 0, 255, 0, '', '', '', 1),
(592, '儿童手表', 0, '', 540, 0, 255, 0, '', '', '', 1),
(593, '食品饮料', 0, '', 0, 0, 255, 0, '', '', '', 1),
(594, '进口食品', 0, '', 593, 0, 255, 0, '', '', '', 1),
(595, '地方特产', 0, '', 593, 0, 255, 0, '', '', '', 1),
(596, '休闲食品', 0, '', 593, 0, 255, 0, '', '', '', 1),
(597, '粮油调味', 0, '', 593, 0, 255, 0, '', '', '', 1),
(598, '中外名酒', 0, '', 593, 0, 255, 0, '', '', '', 1),
(599, '饮料冲调', 0, '', 593, 0, 255, 0, '', '', '', 1),
(600, '营养健康', 0, '', 593, 0, 255, 0, '', '', '', 1),
(601, '亚健康调理', 0, '', 593, 0, 255, 0, '', '', '', 1),
(602, '健康礼品', 0, '', 593, 0, 255, 0, '', '', '', 1),
(603, '生鲜食品', 0, '', 593, 0, 255, 0, '', '', '', 1),
(604, '饼干蛋糕', 0, '', 594, 0, 255, 0, '', '', '', 1),
(605, '糖果巧克力', 0, '', 594, 0, 255, 0, '', '', '', 1),
(606, '休闲零食', 0, '', 594, 0, 255, 0, '', '', '', 1),
(607, '冲调饮品', 0, '', 594, 0, 255, 0, '', '', '', 1),
(608, '粮油调味', 0, '', 594, 0, 255, 0, '', '', '', 1),
(609, '华北', 0, '', 595, 0, 255, 0, '', '', '', 1),
(610, '西北', 0, '', 595, 0, 255, 0, '', '', '', 1),
(611, '西南', 0, '', 595, 0, 255, 0, '', '', '', 1),
(612, '东北', 0, '', 595, 0, 255, 0, '', '', '', 1),
(613, '华南', 0, '', 595, 0, 255, 0, '', '', '', 1),
(614, '华东', 0, '', 595, 0, 255, 0, '', '', '', 1),
(615, '华中', 0, '', 595, 0, 255, 0, '', '', '', 1),
(616, '休闲零食', 0, '', 596, 0, 255, 0, '', '', '', 1),
(617, '坚果炒货', 0, '', 596, 0, 255, 0, '', '', '', 1),
(618, '肉干肉松', 0, '', 596, 0, 255, 0, '', '', '', 1),
(619, '蜜饯果脯', 0, '', 596, 0, 255, 0, '', '', '', 1),
(620, '糖果/巧克力', 0, '', 596, 0, 255, 0, '', '', '', 1),
(621, '饼干蛋糕', 0, '', 596, 0, 255, 0, '', '', '', 1),
(622, '米面杂粮', 0, '', 597, 0, 255, 0, '', '', '', 1),
(623, '食用油', 0, '', 597, 0, 255, 0, '', '', '', 1),
(624, '调味品', 0, '', 597, 0, 255, 0, '', '', '', 1),
(625, '南北干货', 0, '', 597, 0, 255, 0, '', '', '', 1),
(626, '方便食品', 0, '', 597, 0, 255, 0, '', '', '', 1),
(627, '有机食品', 0, '', 597, 0, 255, 0, '', '', '', 1),
(628, '白酒', 0, '', 598, 0, 255, 0, '', '', '', 1),
(629, '洋酒', 0, '', 598, 0, 255, 0, '', '', '', 1),
(630, '葡萄酒', 0, '', 598, 0, 255, 0, '', '', '', 1),
(631, '啤酒', 0, '', 598, 0, 255, 0, '', '', '', 1),
(632, '黄酒', 0, '', 598, 0, 255, 0, '', '', '', 1),
(633, '水', 0, '', 599, 0, 255, 0, '', '', '', 1),
(634, '饮料', 0, '', 599, 0, 255, 0, '', '', '', 1),
(635, '牛奶', 0, '', 599, 0, 255, 0, '', '', '', 1),
(636, '茶叶', 0, '', 599, 0, 255, 0, '', '', '', 1),
(637, '咖啡/奶茶', 0, '', 599, 0, 255, 0, '', '', '', 1),
(638, '冲饮谷物', 0, '', 599, 0, 255, 0, '', '', '', 1),
(639, '基础营养', 0, '', 600, 0, 255, 0, '', '', '', 1),
(640, '美体养颜', 0, '', 600, 0, 255, 0, '', '', '', 1),
(641, '滋补调养', 0, '', 600, 0, 255, 0, '', '', '', 1),
(642, '骨骼健康', 0, '', 600, 0, 255, 0, '', '', '', 1),
(643, '保健茶饮', 0, '', 600, 0, 255, 0, '', '', '', 1),
(644, '成分保健', 0, '', 600, 0, 255, 0, '', '', '', 1),
(645, '无糖食品', 0, '', 600, 0, 255, 0, '', '', '', 1),
(646, '调节三高', 0, '', 601, 0, 255, 0, '', '', '', 1),
(647, '心脑养护', 0, '', 601, 0, 255, 0, '', '', '', 1),
(648, '改善睡眠', 0, '', 601, 0, 255, 0, '', '', '', 1),
(649, '肝肾养护', 0, '', 601, 0, 255, 0, '', '', '', 1),
(650, '免疫调节', 0, '', 601, 0, 255, 0, '', '', '', 1),
(651, '更多调理', 0, '', 601, 0, 255, 0, '', '', '', 1),
(652, '参茸礼品', 0, '', 602, 0, 255, 0, '', '', '', 1),
(653, '更多礼品', 0, '', 602, 0, 255, 0, '', '', '', 1),
(654, '水果', 0, '', 603, 0, 255, 0, '', '', '', 1),
(655, '蔬菜', 0, '', 603, 0, 255, 0, '', '', '', 1),
(656, '海鲜水产', 0, '', 603, 0, 255, 0, '', '', '', 1),
(657, '禽蛋', 0, '', 603, 0, 255, 0, '', '', '', 1),
(658, '鲜肉', 0, '', 603, 0, 255, 0, '', '', '', 1),
(659, '加工类肉食', 0, '', 603, 0, 255, 0, '', '', '', 1),
(660, '冻品', 0, '', 603, 0, 255, 0, '', '', '', 1),
(661, '半成品', 0, '', 603, 0, 255, 0, '', '', '', 1),
(662, '运动健康', 0, '', 0, 0, 255, 0, '', '', '', 1),
(663, '户外鞋服', 0, '', 662, 0, 255, 0, '', '', '', 1),
(664, '户外装备', 0, '', 662, 0, 255, 0, '', '', '', 1),
(665, '运动器械', 0, '', 662, 0, 255, 0, '', '', '', 1),
(666, '纤体瑜伽', 0, '', 662, 0, 255, 0, '', '', '', 1),
(667, '体育娱乐', 0, '', 662, 0, 255, 0, '', '', '', 1),
(668, '成人用品', 0, '', 662, 0, 255, 0, '', '', '', 1),
(669, '保健器械', 0, '', 662, 0, 255, 0, '', '', '', 1),
(670, '急救卫生', 0, '', 662, 0, 255, 0, '', '', '', 1),
(671, '户外服装', 0, '', 663, 0, 255, 0, '', '', '', 1),
(672, '户外鞋袜', 0, '', 663, 0, 255, 0, '', '', '', 1),
(673, '户外配饰', 0, '', 663, 0, 255, 0, '', '', '', 1),
(674, '帐篷', 0, '', 664, 0, 255, 0, '', '', '', 1),
(675, '睡袋', 0, '', 664, 0, 255, 0, '', '', '', 1),
(676, '登山攀岩', 0, '', 664, 0, 255, 0, '', '', '', 1),
(677, '户外背包', 0, '', 664, 0, 255, 0, '', '', '', 1),
(678, '户外照明', 0, '', 664, 0, 255, 0, '', '', '', 1),
(679, '户外垫子', 0, '', 664, 0, 255, 0, '', '', '', 1),
(680, '户外仪表', 0, '', 664, 0, 255, 0, '', '', '', 1),
(681, '户外工具', 0, '', 664, 0, 255, 0, '', '', '', 1),
(682, '望远镜', 0, '', 664, 0, 255, 0, '', '', '', 1),
(683, '垂钓用品', 0, '', 664, 0, 255, 0, '', '', '', 1),
(684, '旅游用品', 0, '', 664, 0, 255, 0, '', '', '', 1),
(685, '便携桌椅床', 0, '', 664, 0, 255, 0, '', '', '', 1),
(686, '烧烤用品', 0, '', 664, 0, 255, 0, '', '', '', 1),
(687, '野餐炊具', 0, '', 664, 0, 255, 0, '', '', '', 1),
(688, '军迷用品', 0, '', 664, 0, 255, 0, '', '', '', 1),
(689, '游泳用具', 0, '', 664, 0, 255, 0, '', '', '', 1),
(690, '泳衣', 0, '', 664, 0, 255, 0, '', '', '', 1),
(691, '健身器械', 0, '', 665, 0, 255, 0, '', '', '', 1),
(692, '运动器材', 0, '', 665, 0, 255, 0, '', '', '', 1),
(693, '极限轮滑', 0, '', 665, 0, 255, 0, '', '', '', 1),
(694, '骑行运动', 0, '', 665, 0, 255, 0, '', '', '', 1),
(695, '运动护具', 0, '', 665, 0, 255, 0, '', '', '', 1),
(696, '武术搏击', 0, '', 665, 0, 255, 0, '', '', '', 1),
(697, '瑜伽垫', 0, '', 666, 0, 255, 0, '', '', '', 1),
(698, '瑜伽服', 0, '', 666, 0, 255, 0, '', '', '', 1),
(699, '瑜伽配件', 0, '', 666, 0, 255, 0, '', '', '', 1),
(700, '瑜伽套装', 0, '', 666, 0, 255, 0, '', '', '', 1),
(701, '舞蹈鞋服', 0, '', 666, 0, 255, 0, '', '', '', 1),
(702, '羽毛球', 0, '', 667, 0, 255, 0, '', '', '', 1),
(703, '乒乓球', 0, '', 667, 0, 255, 0, '', '', '', 1),
(704, '篮球', 0, '', 667, 0, 255, 0, '', '', '', 1),
(705, '足球', 0, '', 667, 0, 255, 0, '', '', '', 1),
(706, '网球', 0, '', 667, 0, 255, 0, '', '', '', 1),
(707, '排球', 0, '', 667, 0, 255, 0, '', '', '', 1),
(708, '高尔夫球', 0, '', 667, 0, 255, 0, '', '', '', 1),
(709, '棋牌麻将', 0, '', 667, 0, 255, 0, '', '', '', 1),
(710, '其他', 0, '', 667, 0, 255, 0, '', '', '', 1),
(711, '安全避孕', 0, '', 668, 0, 255, 0, '', '', '', 1),
(712, '验孕测孕', 0, '', 668, 0, 255, 0, '', '', '', 1),
(713, '人体润滑', 0, '', 668, 0, 255, 0, '', '', '', 1),
(714, '情爱玩具', 0, '', 668, 0, 255, 0, '', '', '', 1),
(715, '情趣内衣', 0, '', 668, 0, 255, 0, '', '', '', 1),
(716, '组合套装', 0, '', 668, 0, 255, 0, '', '', '', 1),
(717, '养生器械', 0, '', 669, 0, 255, 0, '', '', '', 1),
(718, '保健用品', 0, '', 669, 0, 255, 0, '', '', '', 1),
(719, '康复辅助', 0, '', 669, 0, 255, 0, '', '', '', 1),
(720, '家庭护理', 0, '', 669, 0, 255, 0, '', '', '', 1),
(721, '跌打损伤', 0, '', 670, 0, 255, 0, '', '', '', 1),
(722, '烫伤止痒', 0, '', 670, 0, 255, 0, '', '', '', 1),
(723, '防裂抗冻', 0, '', 670, 0, 255, 0, '', '', '', 1),
(724, '口腔咽部', 0, '', 670, 0, 255, 0, '', '', '', 1),
(725, '眼部保健', 0, '', 670, 0, 255, 0, '', '', '', 1),
(726, '鼻炎健康', 0, '', 670, 0, 255, 0, '', '', '', 1),
(727, '风湿骨痛', 0, '', 670, 0, 255, 0, '', '', '', 1),
(728, '生殖泌尿', 0, '', 670, 0, 255, 0, '', '', '', 1),
(729, '美体塑身', 0, '', 670, 0, 255, 0, '', '', '', 1),
(730, '汽车用品', 0, '', 0, 0, 255, 0, '', '', '', 1),
(731, '电子电器', 0, '', 730, 0, 255, 0, '', '', '', 1),
(732, '系统养护', 0, '', 730, 0, 255, 0, '', '', '', 1),
(733, '改装配件', 0, '', 730, 0, 255, 0, '', '', '', 1),
(734, '汽车美容', 0, '', 730, 0, 255, 0, '', '', '', 1),
(735, '座垫脚垫', 0, '', 730, 0, 255, 0, '', '', '', 1),
(736, '内饰精品', 0, '', 730, 0, 255, 0, '', '', '', 1),
(737, '安全自驾', 0, '', 730, 0, 255, 0, '', '', '', 1),
(738, '便携GPS导航', 0, '', 731, 0, 255, 0, '', '', '', 1),
(739, '嵌入式导航', 0, '', 731, 0, 255, 0, '', '', '', 1),
(740, '安全预警仪', 0, '', 731, 0, 255, 0, '', '', '', 1),
(741, '行车记录仪', 0, '', 731, 0, 255, 0, '', '', '', 1),
(742, '跟踪防盗器', 0, '', 731, 0, 255, 0, '', '', '', 1),
(743, '倒车雷达', 0, '', 731, 0, 255, 0, '', '', '', 1),
(744, '车载电源', 0, '', 731, 0, 255, 0, '', '', '', 1),
(745, '车载蓝牙', 0, '', 731, 0, 255, 0, '', '', '', 1),
(746, '车载影音', 0, '', 731, 0, 255, 0, '', '', '', 1),
(747, '车载净化器', 0, '', 731, 0, 255, 0, '', '', '', 1),
(748, '车载冰箱', 0, '', 731, 0, 255, 0, '', '', '', 1),
(749, '车载吸尘器', 0, '', 731, 0, 255, 0, '', '', '', 1),
(750, '充气泵', 0, '', 731, 0, 255, 0, '', '', '', 1),
(751, '胎压监测', 0, '', 731, 0, 255, 0, '', '', '', 1),
(752, '车载生活电器', 0, '', 731, 0, 255, 0, '', '', '', 1),
(753, '机油', 0, '', 732, 0, 255, 0, '', '', '', 1),
(754, '添加剂', 0, '', 732, 0, 255, 0, '', '', '', 1),
(755, '防冻冷却液', 0, '', 732, 0, 255, 0, '', '', '', 1),
(756, '附属油', 0, '', 732, 0, 255, 0, '', '', '', 1),
(757, '底盘装甲', 0, '', 732, 0, 255, 0, '', '', '', 1),
(758, '空调清洗剂', 0, '', 732, 0, 255, 0, '', '', '', 1),
(759, '金属养护', 0, '', 732, 0, 255, 0, '', '', '', 1),
(760, '雨刷', 0, '', 733, 0, 255, 0, '', '', '', 1),
(761, '车灯', 0, '', 733, 0, 255, 0, '', '', '', 1),
(762, '轮胎', 0, '', 733, 0, 255, 0, '', '', '', 1),
(763, '贴膜', 0, '', 733, 0, 255, 0, '', '', '', 1),
(764, '装饰贴', 0, '', 733, 0, 255, 0, '', '', '', 1),
(765, '后视镜', 0, '', 733, 0, 255, 0, '', '', '', 1),
(766, '机油滤', 0, '', 733, 0, 255, 0, '', '', '', 1),
(767, '空气滤', 0, '', 733, 0, 255, 0, '', '', '', 1),
(768, '空调滤', 0, '', 733, 0, 255, 0, '', '', '', 1),
(769, '燃油滤', 0, '', 733, 0, 255, 0, '', '', '', 1),
(770, '火花塞', 0, '', 733, 0, 255, 0, '', '', '', 1),
(771, '喇叭', 0, '', 733, 0, 255, 0, '', '', '', 1),
(772, '刹车片', 0, '', 733, 0, 255, 0, '', '', '', 1),
(773, '刹车盘', 0, '', 733, 0, 255, 0, '', '', '', 1),
(774, '减震器', 0, '', 733, 0, 255, 0, '', '', '', 1),
(775, '车身装饰', 0, '', 733, 0, 255, 0, '', '', '', 1),
(776, '尾喉/排气管', 0, '', 733, 0, 255, 0, '', '', '', 1),
(777, '踏板', 0, '', 733, 0, 255, 0, '', '', '', 1),
(778, '蓄电池', 0, '', 733, 0, 255, 0, '', '', '', 1),
(779, '其他配件', 0, '', 733, 0, 255, 0, '', '', '', 1),
(780, '漆面美容', 0, '', 734, 0, 255, 0, '', '', '', 1),
(781, '漆面修复', 0, '', 734, 0, 255, 0, '', '', '', 1),
(782, '内饰清洁', 0, '', 734, 0, 255, 0, '', '', '', 1),
(783, '玻璃美容', 0, '', 734, 0, 255, 0, '', '', '', 1),
(784, '补漆笔', 0, '', 734, 0, 255, 0, '', '', '', 1),
(785, '轮胎轮毂清洗', 0, '', 734, 0, 255, 0, '', '', '', 1),
(786, '洗车器', 0, '', 734, 0, 255, 0, '', '', '', 1),
(787, '洗车水枪', 0, '', 734, 0, 255, 0, '', '', '', 1),
(788, '洗车配件', 0, '', 734, 0, 255, 0, '', '', '', 1),
(789, '洗车液', 0, '', 734, 0, 255, 0, '', '', '', 1),
(790, '车掸', 0, '', 734, 0, 255, 0, '', '', '', 1),
(791, '擦车巾/海绵', 0, '', 734, 0, 255, 0, '', '', '', 1),
(792, '凉垫', 0, '', 735, 0, 255, 0, '', '', '', 1),
(793, '四季垫', 0, '', 735, 0, 255, 0, '', '', '', 1),
(794, '毛垫', 0, '', 735, 0, 255, 0, '', '', '', 1),
(795, '专车专用座垫', 0, '', 735, 0, 255, 0, '', '', '', 1),
(796, '专车专用座套', 0, '', 735, 0, 255, 0, '', '', '', 1),
(797, '通用座套', 0, '', 735, 0, 255, 0, '', '', '', 1),
(798, '多功能垫', 0, '', 735, 0, 255, 0, '', '', '', 1),
(799, '专车专用脚垫', 0, '', 735, 0, 255, 0, '', '', '', 1),
(800, '通用脚垫', 0, '', 735, 0, 255, 0, '', '', '', 1),
(801, '后备箱垫', 0, '', 735, 0, 255, 0, '', '', '', 1),
(802, '车用香水', 0, '', 736, 0, 255, 0, '', '', '', 1),
(803, '车用炭包', 0, '', 736, 0, 255, 0, '', '', '', 1),
(804, '空气净化', 0, '', 736, 0, 255, 0, '', '', '', 1),
(805, '颈枕/头枕', 0, '', 736, 0, 255, 0, '', '', '', 1),
(806, '抱枕/腰靠', 0, '', 736, 0, 255, 0, '', '', '', 1),
(807, '方向盘套', 0, '', 736, 0, 255, 0, '', '', '', 1),
(808, '挂件', 0, '', 736, 0, 255, 0, '', '', '', 1),
(809, '摆件', 0, '', 736, 0, 255, 0, '', '', '', 1),
(810, '布艺软饰', 0, '', 736, 0, 255, 0, '', '', '', 1),
(811, '功能用品', 0, '', 736, 0, 255, 0, '', '', '', 1),
(812, '整理收纳', 0, '', 736, 0, 255, 0, '', '', '', 1),
(813, 'CD夹', 0, '', 736, 0, 255, 0, '', '', '', 1),
(814, '儿童安全座椅', 0, '', 737, 0, 255, 0, '', '', '', 1),
(815, '应急救援', 0, '', 737, 0, 255, 0, '', '', '', 1),
(816, '汽修工具', 0, '', 737, 0, 255, 0, '', '', '', 1),
(817, '自驾野营', 0, '', 737, 0, 255, 0, '', '', '', 1),
(818, '自驾照明', 0, '', 737, 0, 255, 0, '', '', '', 1),
(819, '保温箱', 0, '', 737, 0, 255, 0, '', '', '', 1),
(820, '置物箱', 0, '', 737, 0, 255, 0, '', '', '', 1),
(821, '车衣', 0, '', 737, 0, 255, 0, '', '', '', 1),
(822, '遮阳挡雪挡', 0, '', 737, 0, 255, 0, '', '', '', 1),
(823, '车锁地锁', 0, '', 737, 0, 255, 0, '', '', '', 1),
(824, '摩托车装备', 0, '', 737, 0, 255, 0, '', '', '', 1),
(825, '玩具乐器', 0, '', 0, 0, 255, 0, '', '', '', 1),
(826, '适用年龄', 0, '', 825, 0, 255, 0, '', '', '', 1),
(827, '遥控/电动', 0, '', 825, 0, 255, 0, '', '', '', 1),
(828, '毛绒布艺', 0, '', 825, 0, 255, 0, '', '', '', 1),
(829, '娃娃玩具', 0, '', 825, 0, 255, 0, '', '', '', 1),
(830, '模型玩具', 0, '', 825, 0, 255, 0, '', '', '', 1),
(831, '健身玩具', 0, '', 825, 0, 255, 0, '', '', '', 1),
(832, '动漫玩具', 0, '', 825, 0, 255, 0, '', '', '', 1),
(833, '益智玩具', 0, '', 825, 0, 255, 0, '', '', '', 1),
(834, '积木拼插', 0, '', 825, 0, 255, 0, '', '', '', 1),
(835, 'DIY玩具', 0, '', 825, 0, 255, 0, '', '', '', 1),
(836, '创意减压', 0, '', 825, 0, 255, 0, '', '', '', 1),
(837, '乐器相关', 0, '', 825, 0, 255, 0, '', '', '', 1),
(838, '0-6个月', 0, '', 826, 0, 255, 0, '', '', '', 1),
(839, '6-12个月', 0, '', 826, 0, 255, 0, '', '', '', 1),
(840, '1-3岁', 0, '', 826, 0, 255, 0, '', '', '', 1),
(841, '3-6岁', 0, '', 826, 0, 255, 0, '', '', '', 1),
(842, '6-14岁', 0, '', 826, 0, 255, 0, '', '', '', 1),
(843, '14岁以上', 0, '', 826, 0, 255, 0, '', '', '', 1),
(844, '遥控车', 0, '', 827, 0, 255, 0, '', '', '', 1),
(845, '遥控飞机', 0, '', 827, 0, 255, 0, '', '', '', 1),
(846, '遥控船', 0, '', 827, 0, 255, 0, '', '', '', 1),
(847, '机器人/电动', 0, '', 827, 0, 255, 0, '', '', '', 1),
(848, '轨道/助力', 0, '', 827, 0, 255, 0, '', '', '', 1),
(849, '毛绒/布艺', 0, '', 828, 0, 255, 0, '', '', '', 1),
(850, '靠垫/抱枕', 0, '', 828, 0, 255, 0, '', '', '', 1),
(851, '芭比娃娃', 0, '', 829, 0, 255, 0, '', '', '', 1),
(852, '卡通娃娃', 0, '', 829, 0, 255, 0, '', '', '', 1),
(853, '智能娃娃', 0, '', 829, 0, 255, 0, '', '', '', 1),
(854, '仿真模型', 0, '', 830, 0, 255, 0, '', '', '', 1),
(855, '拼插模型', 0, '', 830, 0, 255, 0, '', '', '', 1),
(856, '收藏爱好', 0, '', 830, 0, 255, 0, '', '', '', 1),
(857, '炫舞毯', 0, '', 831, 0, 255, 0, '', '', '', 1),
(858, '爬行垫/毯', 0, '', 831, 0, 255, 0, '', '', '', 1),
(859, '户外玩具', 0, '', 831, 0, 255, 0, '', '', '', 1),
(860, '戏水玩具', 0, '', 831, 0, 255, 0, '', '', '', 1),
(861, '电影周边', 0, '', 832, 0, 255, 0, '', '', '', 1),
(862, '卡通周边', 0, '', 832, 0, 255, 0, '', '', '', 1),
(863, '网游周边', 0, '', 832, 0, 255, 0, '', '', '', 1),
(864, '摇铃/床铃', 0, '', 833, 0, 255, 0, '', '', '', 1),
(865, '健身架', 0, '', 833, 0, 255, 0, '', '', '', 1),
(866, '早教启智', 0, '', 833, 0, 255, 0, '', '', '', 1),
(867, '拖拉玩具', 0, '', 833, 0, 255, 0, '', '', '', 1),
(868, '积木', 0, '', 834, 0, 255, 0, '', '', '', 1),
(869, '拼图', 0, '', 834, 0, 255, 0, '', '', '', 1),
(870, '磁力棒', 0, '', 834, 0, 255, 0, '', '', '', 1),
(871, '立体拼插', 0, '', 834, 0, 255, 0, '', '', '', 1),
(872, '手工彩泥', 0, '', 835, 0, 255, 0, '', '', '', 1),
(873, '绘画工具', 0, '', 835, 0, 255, 0, '', '', '', 1),
(874, '情景玩具', 0, '', 835, 0, 255, 0, '', '', '', 1),
(875, '减压玩具', 0, '', 836, 0, 255, 0, '', '', '', 1),
(876, '创意玩具', 0, '', 836, 0, 255, 0, '', '', '', 1),
(877, '钢琴', 0, '', 837, 0, 255, 0, '', '', '', 1),
(878, '电子琴', 0, '', 837, 0, 255, 0, '', '', '', 1),
(879, '手风琴', 0, '', 837, 0, 255, 0, '', '', '', 1),
(880, '吉他/贝斯', 0, '', 837, 0, 255, 0, '', '', '', 1),
(881, '民族管弦乐器', 0, '', 837, 0, 255, 0, '', '', '', 1),
(882, '西洋管弦乐', 0, '', 837, 0, 255, 0, '', '', '', 1),
(883, '口琴/口风琴/竖笛', 0, '', 837, 0, 255, 0, '', '', '', 1),
(884, '西洋打击乐器', 0, '', 837, 0, 255, 0, '', '', '', 1),
(885, '各式乐器配件', 0, '', 837, 0, 255, 0, '', '', '', 1),
(886, '电脑音乐', 0, '', 837, 0, 255, 0, '', '', '', 1),
(887, '工艺礼品乐器', 0, '', 837, 0, 255, 0, '', '', '', 1),
(888, '厨具', 0, '', 0, 0, 255, 0, '', '', '', 1),
(889, '烹饪锅具', 0, '', 888, 0, 255, 0, '', '', '', 1),
(890, '刀剪菜板', 0, '', 888, 0, 255, 0, '', '', '', 1),
(891, '收纳保鲜', 0, '', 888, 0, 255, 0, '', '', '', 1),
(892, '水具酒具', 0, '', 888, 0, 255, 0, '', '', '', 1),
(893, '餐具', 0, '', 888, 0, 255, 0, '', '', '', 1),
(895, '炒锅', 0, '', 889, 0, 255, 0, '', '', '', 1),
(896, '煎锅', 0, '', 889, 0, 255, 0, '', '', '', 1),
(897, '压力锅', 0, '', 889, 0, 255, 0, '', '', '', 1),
(898, '蒸锅', 0, '', 889, 0, 255, 0, '', '', '', 1),
(899, '汤锅', 0, '', 889, 0, 255, 0, '', '', '', 1),
(900, '奶锅', 0, '', 889, 0, 255, 0, '', '', '', 1),
(901, '套锅', 0, '', 889, 0, 255, 0, '', '', '', 1),
(902, '煲类', 0, '', 889, 0, 255, 0, '', '', '', 1),
(903, '水壶', 0, '', 889, 0, 255, 0, '', '', '', 1),
(904, '厨用杂件', 0, '', 889, 0, 255, 0, '', '', '', 1),
(905, '单刀', 0, '', 890, 0, 255, 0, '', '', '', 1),
(906, '剪刀', 0, '', 890, 0, 255, 0, '', '', '', 1),
(907, '套刀', 0, '', 890, 0, 255, 0, '', '', '', 1),
(908, '砧板', 0, '', 890, 0, 255, 0, '', '', '', 1),
(909, '刀具配件', 0, '', 890, 0, 255, 0, '', '', '', 1),
(910, '保鲜盒', 0, '', 891, 0, 255, 0, '', '', '', 1),
(911, '保鲜膜/袋', 0, '', 891, 0, 255, 0, '', '', '', 1),
(912, '调料器皿', 0, '', 891, 0, 255, 0, '', '', '', 1),
(913, '饭盒/提锅', 0, '', 891, 0, 255, 0, '', '', '', 1),
(914, '塑料杯', 0, '', 892, 0, 255, 0, '', '', '', 1),
(915, '运动水壶', 0, '', 892, 0, 255, 0, '', '', '', 1),
(916, '玻璃杯', 0, '', 892, 0, 255, 0, '', '', '', 1),
(917, '陶瓷杯', 0, '', 892, 0, 255, 0, '', '', '', 1),
(918, '保温杯', 0, '', 892, 0, 255, 0, '', '', '', 1),
(919, '保温壶', 0, '', 892, 0, 255, 0, '', '', '', 1),
(920, '酒杯/套装', 0, '', 892, 0, 255, 0, '', '', '', 1),
(921, '酒具配件', 0, '', 892, 0, 255, 0, '', '', '', 1),
(922, '餐具套装', 0, '', 893, 0, 255, 0, '', '', '', 1),
(923, '碗/碟/盘', 0, '', 893, 0, 255, 0, '', '', '', 1),
(924, '筷勺/刀叉', 0, '', 893, 0, 255, 0, '', '', '', 1),
(925, '一次性餐具', 0, '', 893, 0, 255, 0, '', '', '', 1),
(935, '茶具/咖啡具', 0, '', 888, 0, 255, 0, '', '', '', 1),
(936, '整套茶具', 0, '', 935, 0, 255, 0, '', '', '', 1),
(937, '茶杯', 0, '', 935, 0, 255, 0, '', '', '', 1),
(938, '茶壶', 0, '', 935, 0, 255, 0, '', '', '', 1),
(939, '茶盘茶托', 0, '', 935, 0, 255, 0, '', '', '', 1),
(940, '茶叶罐', 0, '', 935, 0, 255, 0, '', '', '', 1),
(941, '茶具配件', 0, '', 935, 0, 255, 0, '', '', '', 1),
(942, '茶宠摆件', 0, '', 935, 0, 255, 0, '', '', '', 1),
(943, '咖啡具', 0, '', 935, 0, 255, 0, '', '', '', 1),
(944, '其他', 0, '', 935, 0, 255, 0, '', '', '', 1),
(959, '母婴用品', 0, '', 0, 0, 255, 0, '', '', '', 1),
(960, '奶粉', 0, '', 959, 0, 255, 0, '', '', '', 1),
(961, '营养辅食', 0, '', 959, 0, 255, 0, '', '', '', 1),
(962, '尿裤湿巾', 0, '', 959, 0, 255, 0, '', '', '', 1),
(963, '喂养用品', 0, '', 959, 0, 255, 0, '', '', '', 1),
(964, '洗护用品', 0, '', 959, 0, 255, 0, '', '', '', 1),
(965, '童车童床', 0, '', 959, 0, 255, 0, '', '', '', 1),
(966, '服饰寝居', 0, '', 959, 0, 255, 0, '', '', '', 1),
(967, '妈妈专区', 0, '', 959, 0, 255, 0, '', '', '', 1),
(968, '品牌奶粉', 0, '', 960, 0, 255, 0, '', '', '', 1),
(969, '妈妈奶粉', 0, '', 960, 0, 255, 0, '', '', '', 1),
(970, '1段奶粉', 0, '', 960, 0, 255, 0, '', '', '', 1),
(971, '2段奶粉', 0, '', 960, 0, 255, 0, '', '', '', 1),
(972, '3段奶粉', 0, '', 960, 0, 255, 0, '', '', '', 1),
(973, '4段奶粉', 0, '', 960, 0, 255, 0, '', '', '', 1),
(974, '羊奶粉', 0, '', 960, 0, 255, 0, '', '', '', 1),
(975, '特殊配方', 0, '', 960, 0, 255, 0, '', '', '', 1),
(976, '成人奶粉', 0, '', 960, 0, 255, 0, '', '', '', 1),
(977, '婴幼营养', 0, '', 961, 0, 255, 0, '', '', '', 1),
(978, '初乳', 0, '', 961, 0, 255, 0, '', '', '', 1),
(979, '米粉/菜粉', 0, '', 961, 0, 255, 0, '', '', '', 1),
(980, '果泥/果汁', 0, '', 961, 0, 255, 0, '', '', '', 1),
(981, '肉松/饼干', 0, '', 961, 0, 255, 0, '', '', '', 1),
(982, '辅食', 0, '', 961, 0, 255, 0, '', '', '', 1),
(983, '孕期营养', 0, '', 961, 0, 255, 0, '', '', '', 1),
(984, '清火/开胃', 0, '', 961, 0, 255, 0, '', '', '', 1),
(985, '面条/粥', 0, '', 961, 0, 255, 0, '', '', '', 1),
(986, '品牌尿裤', 0, '', 962, 0, 255, 0, '', '', '', 1),
(987, '新生儿', 0, '', 962, 0, 255, 0, '', '', '', 1),
(988, 'S号', 0, '', 962, 0, 255, 0, '', '', '', 1),
(989, 'M号', 0, '', 962, 0, 255, 0, '', '', '', 1),
(990, 'L号', 0, '', 962, 0, 255, 0, '', '', '', 1),
(991, 'XL/XXL号', 0, '', 962, 0, 255, 0, '', '', '', 1),
(992, '裤型尿裤', 0, '', 962, 0, 255, 0, '', '', '', 1),
(993, '湿巾', 0, '', 962, 0, 255, 0, '', '', '', 1),
(994, '尿布/尿垫', 0, '', 962, 0, 255, 0, '', '', '', 1),
(995, '成人尿裤', 0, '', 962, 0, 255, 0, '', '', '', 1),
(996, '奶瓶', 0, '', 963, 0, 255, 0, '', '', '', 1),
(997, '奶嘴', 0, '', 963, 0, 255, 0, '', '', '', 1),
(998, '吸奶器', 0, '', 963, 0, 255, 0, '', '', '', 1),
(999, '暖奶/消毒', 0, '', 963, 0, 255, 0, '', '', '', 1),
(1000, '餐具', 0, '', 963, 0, 255, 0, '', '', '', 1),
(1001, '水具', 0, '', 963, 0, 255, 0, '', '', '', 1),
(1002, '牙胶/安抚', 0, '', 963, 0, 255, 0, '', '', '', 1),
(1003, '辅助用品', 0, '', 963, 0, 255, 0, '', '', '', 1),
(1004, '宝宝护肤', 0, '', 964, 0, 255, 0, '', '', '', 1),
(1005, '洗浴用品', 0, '', 964, 0, 255, 0, '', '', '', 1),
(1006, '洗发沐浴', 0, '', 964, 0, 255, 0, '', '', '', 1),
(1007, '清洁用品', 0, '', 964, 0, 255, 0, '', '', '', 1),
(1008, '护理用品', 0, '', 964, 0, 255, 0, '', '', '', 1),
(1009, '妈妈护肤', 0, '', 964, 0, 255, 0, '', '', '', 1),
(1010, '婴儿推车', 0, '', 965, 0, 255, 0, '', '', '', 1),
(1011, '餐椅摇椅', 0, '', 965, 0, 255, 0, '', '', '', 1),
(1012, '婴儿床', 0, '', 965, 0, 255, 0, '', '', '', 1),
(1013, '学步车', 0, '', 965, 0, 255, 0, '', '', '', 1),
(1014, '三轮车', 0, '', 965, 0, 255, 0, '', '', '', 1),
(1015, '自行车', 0, '', 965, 0, 255, 0, '', '', '', 1),
(1016, '电动车', 0, '', 965, 0, 255, 0, '', '', '', 1),
(1017, '健身车', 0, '', 965, 0, 255, 0, '', '', '', 1),
(1018, '安全座椅', 0, '', 965, 0, 255, 0, '', '', '', 1);
INSERT INTO `yunpay_goods_class` (`gc_id`, `gc_name`, `type_id`, `type_name`, `gc_parent_id`, `commis_rate`, `gc_sort`, `gc_virtual`, `gc_title`, `gc_keywords`, `gc_description`, `gc_show`) VALUES
(1019, '婴儿外出服', 0, '', 966, 0, 255, 0, '', '', '', 1),
(1020, '婴儿内衣', 0, '', 966, 0, 255, 0, '', '', '', 1),
(1021, '婴儿礼盒', 0, '', 966, 0, 255, 0, '', '', '', 1),
(1022, '婴儿鞋帽袜', 0, '', 966, 0, 255, 0, '', '', '', 1),
(1023, '安全防护', 0, '', 966, 0, 255, 0, '', '', '', 1),
(1024, '家居床品', 0, '', 966, 0, 255, 0, '', '', '', 1),
(1025, '其他', 0, '', 966, 0, 255, 0, '', '', '', 1),
(1026, '包/背婴带', 0, '', 967, 0, 255, 0, '', '', '', 1),
(1027, '妈妈护理', 0, '', 967, 0, 255, 0, '', '', '', 1),
(1028, '产后塑身', 0, '', 967, 0, 255, 0, '', '', '', 1),
(1029, '孕妇内衣', 0, '', 967, 0, 255, 0, '', '', '', 1),
(1030, '防辐射服', 0, '', 967, 0, 255, 0, '', '', '', 1),
(1031, '孕妇装', 0, '', 967, 0, 255, 0, '', '', '', 1),
(1032, '孕妇食品', 0, '', 967, 0, 255, 0, '', '', '', 1),
(1033, '妈妈美容', 0, '', 967, 0, 255, 0, '', '', '', 1),
(1034, '手机通讯', 0, '', 256, 0, 255, 0, '', '', '', 1),
(1035, '手机', 0, '', 1034, 0, 255, 0, '', '', '', 1),
(1036, '对讲机', 0, '', 1034, 0, 255, 0, '', '', '', 1),
(1037, '虚拟充值', 0, '', 0, 0, 255, 0, '', '', '', 1),
(1041, '充值', 0, '', 1037, 0, 255, 0, '', '', '', 1),
(1042, '游戏', 0, '', 1037, 0, 255, 0, '', '', '', 1),
(1043, '票务', 0, '', 1037, 0, 255, 0, '', '', '', 1),
(1044, '手机充值', 0, '', 1041, 0, 255, 0, '', '', '', 1),
(1045, '游戏点卡', 0, '', 1042, 0, 255, 0, '', '', '', 1),
(1046, 'QQ充值', 0, '', 1042, 0, 255, 0, '', '', '', 1),
(1047, '电影票', 0, '', 1043, 0, 255, 0, '', '', '', 1),
(1048, '演唱会', 0, '', 1043, 0, 255, 0, '', '', '', 1),
(1049, '话剧/歌剧/音乐剧', 0, '', 1043, 0, 255, 0, '', '', '', 1),
(1050, '体育赛事', 0, '', 1043, 0, 255, 0, '', '', '', 1),
(1051, '舞蹈芭蕾', 0, '', 1043, 0, 255, 0, '', '', '', 1),
(1052, '戏曲综艺', 0, '', 1043, 0, 255, 0, '', '', '', 1),
(1053, '女装', 0, '', 4, 0, 255, 0, '', '', '', 1),
(1054, '整车', 0, '', 730, 0, 255, 0, '', '', '', 1),
(1055, '新车', 0, '', 1054, 0, 255, 0, '', '', '', 1),
(1056, '二手车', 0, '', 1054, 0, 255, 0, '', '', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_goods_class_staple`
--

CREATE TABLE IF NOT EXISTS `yunpay_goods_class_staple` (
  `staple_id` int(10) unsigned NOT NULL COMMENT '常用分类id',
  `staple_name` varchar(255) NOT NULL COMMENT '常用分类名称',
  `gc_id_1` int(10) unsigned NOT NULL COMMENT '一级分类id',
  `gc_id_2` int(10) unsigned NOT NULL COMMENT '二级商品分类',
  `gc_id_3` int(10) unsigned NOT NULL COMMENT '三级商品分类',
  `type_id` int(10) unsigned NOT NULL COMMENT '类型id',
  `member_id` int(10) unsigned NOT NULL COMMENT '会员id',
  `counter` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '计数器'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='店铺常用分类表';

--
-- 转存表中的数据 `yunpay_goods_class_staple`
--

INSERT INTO `yunpay_goods_class_staple` (`staple_id`, `staple_name`, `gc_id_1`, `gc_id_2`, `gc_id_3`, `type_id`, `member_id`, `counter`) VALUES
(1, '礼品箱包 >功能箱包 >旅行包', 2, 153, 168, 0, 1, 16),
(2, '服饰鞋帽 >男装 >T恤', 1, 5, 36, 0, 1, 1),
(3, '家居家装 >生活日用 >浴室用品', 3, 202, 230, 0, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_goods_class_tag`
--

CREATE TABLE IF NOT EXISTS `yunpay_goods_class_tag` (
  `gc_tag_id` int(10) unsigned NOT NULL COMMENT 'TAGid',
  `gc_id_1` int(10) unsigned NOT NULL COMMENT '一级分类id',
  `gc_id_2` int(10) unsigned NOT NULL COMMENT '二级分类id',
  `gc_id_3` int(10) unsigned NOT NULL COMMENT '三级分类id',
  `gc_tag_name` varchar(255) NOT NULL COMMENT '分类TAG名称',
  `gc_tag_value` text NOT NULL COMMENT '分类TAG值',
  `gc_id` int(10) unsigned NOT NULL COMMENT '商品分类id',
  `type_id` int(10) unsigned NOT NULL COMMENT '类型id'
) ENGINE=InnoDB AUTO_INCREMENT=900 DEFAULT CHARSET=utf8 COMMENT='商品分类TAG表';

--
-- 转存表中的数据 `yunpay_goods_class_tag`
--

INSERT INTO `yunpay_goods_class_tag` (`gc_tag_id`, `gc_id_1`, `gc_id_2`, `gc_id_3`, `gc_tag_name`, `gc_tag_value`, `gc_id`, `type_id`) VALUES
(1, 1, 4, 12, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;T恤', '服饰鞋帽,女装,T恤', 12, 32),
(2, 1, 4, 13, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;衬衫', '服饰鞋帽,女装,衬衫', 13, 33),
(3, 1, 4, 14, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;针织衫', '服饰鞋帽,女装,针织衫', 14, 34),
(4, 1, 4, 15, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;雪纺衫', '服饰鞋帽,女装,雪纺衫', 15, 35),
(5, 1, 4, 16, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;卫衣', '服饰鞋帽,女装,卫衣', 16, 36),
(6, 1, 4, 17, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;马甲', '服饰鞋帽,女装,马甲', 17, 0),
(7, 1, 4, 18, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;连衣裙', '服饰鞋帽,女装,连衣裙', 18, 35),
(8, 1, 4, 19, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;半身裙', '服饰鞋帽,女装,半身裙', 19, 34),
(9, 1, 4, 20, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;牛仔裤', '服饰鞋帽,女装,牛仔裤', 20, 47),
(10, 1, 4, 21, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;休闲裤', '服饰鞋帽,女装,休闲裤', 21, 0),
(11, 1, 4, 22, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;打底裤', '服饰鞋帽,女装,打底裤', 22, 0),
(12, 1, 4, 23, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;正装裤', '服饰鞋帽,女装,正装裤', 23, 0),
(13, 1, 4, 24, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;西服', '服饰鞋帽,女装,西服', 24, 0),
(14, 1, 4, 25, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;短外套', '服饰鞋帽,女装,短外套', 25, 35),
(15, 1, 4, 26, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;风衣', '服饰鞋帽,女装,风衣', 26, 0),
(16, 1, 4, 27, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;大衣', '服饰鞋帽,女装,大衣', 27, 0),
(17, 1, 4, 28, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;皮衣皮草', '服饰鞋帽,女装,皮衣皮草', 28, 0),
(18, 1, 4, 29, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;棉服', '服饰鞋帽,女装,棉服', 29, 0),
(19, 1, 4, 30, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;羽绒服', '服饰鞋帽,女装,羽绒服', 30, 0),
(20, 1, 4, 31, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;孕妇装', '服饰鞋帽,女装,孕妇装', 31, 0),
(21, 1, 4, 32, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;大码装', '服饰鞋帽,女装,大码装', 32, 0),
(22, 1, 4, 33, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;中老年装', '服饰鞋帽,女装,中老年装', 33, 0),
(23, 1, 4, 34, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;婚纱礼服', '服饰鞋帽,女装,婚纱礼服', 34, 32),
(24, 1, 4, 1053, '服饰鞋帽&nbsp;&gt;&nbsp;女装&nbsp;&gt;&nbsp;女装', '服饰鞋帽,女装,女装', 1053, 32),
(25, 1, 5, 35, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;衬衫', '服饰鞋帽,男装,衬衫', 35, 0),
(26, 1, 5, 36, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;T恤', '服饰鞋帽,男装,T恤', 36, 0),
(27, 1, 5, 37, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;POLO衫', '服饰鞋帽,男装,POLO衫', 37, 0),
(28, 1, 5, 38, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;针织衫', '服饰鞋帽,男装,针织衫', 38, 0),
(29, 1, 5, 39, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;羊绒衫', '服饰鞋帽,男装,羊绒衫', 39, 0),
(30, 1, 5, 40, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;卫衣', '服饰鞋帽,男装,卫衣', 40, 0),
(31, 1, 5, 41, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;马甲／背心', '服饰鞋帽,男装,马甲／背心', 41, 0),
(32, 1, 5, 42, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;夹克', '服饰鞋帽,男装,夹克', 42, 0),
(33, 1, 5, 43, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;风衣', '服饰鞋帽,男装,风衣', 43, 0),
(34, 1, 5, 44, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;大衣', '服饰鞋帽,男装,大衣', 44, 0),
(35, 1, 5, 45, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;皮衣', '服饰鞋帽,男装,皮衣', 45, 0),
(36, 1, 5, 46, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;外套', '服饰鞋帽,男装,外套', 46, 0),
(37, 1, 5, 47, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;西服', '服饰鞋帽,男装,西服', 47, 0),
(38, 1, 5, 48, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;棉服', '服饰鞋帽,男装,棉服', 48, 0),
(39, 1, 5, 49, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;羽绒服', '服饰鞋帽,男装,羽绒服', 49, 37),
(40, 1, 5, 50, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;牛仔裤', '服饰鞋帽,男装,牛仔裤', 50, 0),
(41, 1, 5, 51, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;休闲裤', '服饰鞋帽,男装,休闲裤', 51, 0),
(42, 1, 5, 52, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;西裤', '服饰鞋帽,男装,西裤', 52, 0),
(43, 1, 5, 53, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;西服套装', '服饰鞋帽,男装,西服套装', 53, 0),
(44, 1, 5, 54, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;大码装', '服饰鞋帽,男装,大码装', 54, 0),
(45, 1, 5, 55, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;中老年装', '服饰鞋帽,男装,中老年装', 55, 0),
(46, 1, 5, 56, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;唐装', '服饰鞋帽,男装,唐装', 56, 0),
(47, 1, 5, 57, '服饰鞋帽&nbsp;&gt;&nbsp;男装&nbsp;&gt;&nbsp;工装', '服饰鞋帽,男装,工装', 57, 0),
(48, 1, 6, 58, '服饰鞋帽&nbsp;&gt;&nbsp;内衣&nbsp;&gt;&nbsp;文胸', '服饰鞋帽,内衣,文胸', 58, 38),
(49, 1, 6, 59, '服饰鞋帽&nbsp;&gt;&nbsp;内衣&nbsp;&gt;&nbsp;女式内裤', '服饰鞋帽,内衣,女式内裤', 59, 39),
(50, 1, 6, 60, '服饰鞋帽&nbsp;&gt;&nbsp;内衣&nbsp;&gt;&nbsp;男式内裤', '服饰鞋帽,内衣,男式内裤', 60, 39),
(51, 1, 6, 61, '服饰鞋帽&nbsp;&gt;&nbsp;内衣&nbsp;&gt;&nbsp;家居', '服饰鞋帽,内衣,家居', 61, 0),
(52, 1, 6, 62, '服饰鞋帽&nbsp;&gt;&nbsp;内衣&nbsp;&gt;&nbsp;睡衣', '服饰鞋帽,内衣,睡衣', 62, 0),
(53, 1, 6, 63, '服饰鞋帽&nbsp;&gt;&nbsp;内衣&nbsp;&gt;&nbsp;塑身衣', '服饰鞋帽,内衣,塑身衣', 63, 0),
(54, 1, 6, 64, '服饰鞋帽&nbsp;&gt;&nbsp;内衣&nbsp;&gt;&nbsp;睡袍／浴袍', '服饰鞋帽,内衣,睡袍／浴袍', 64, 0),
(55, 1, 6, 65, '服饰鞋帽&nbsp;&gt;&nbsp;内衣&nbsp;&gt;&nbsp;泳衣', '服饰鞋帽,内衣,泳衣', 65, 0),
(56, 1, 6, 66, '服饰鞋帽&nbsp;&gt;&nbsp;内衣&nbsp;&gt;&nbsp;背心', '服饰鞋帽,内衣,背心', 66, 0),
(57, 1, 6, 67, '服饰鞋帽&nbsp;&gt;&nbsp;内衣&nbsp;&gt;&nbsp;抹胸', '服饰鞋帽,内衣,抹胸', 67, 0),
(58, 1, 6, 68, '服饰鞋帽&nbsp;&gt;&nbsp;内衣&nbsp;&gt;&nbsp;连裤袜', '服饰鞋帽,内衣,连裤袜', 68, 0),
(59, 1, 6, 69, '服饰鞋帽&nbsp;&gt;&nbsp;内衣&nbsp;&gt;&nbsp;美腿袜', '服饰鞋帽,内衣,美腿袜', 69, 0),
(60, 1, 6, 70, '服饰鞋帽&nbsp;&gt;&nbsp;内衣&nbsp;&gt;&nbsp;男袜', '服饰鞋帽,内衣,男袜', 70, 0),
(61, 1, 6, 71, '服饰鞋帽&nbsp;&gt;&nbsp;内衣&nbsp;&gt;&nbsp;女袜', '服饰鞋帽,内衣,女袜', 71, 0),
(62, 1, 6, 72, '服饰鞋帽&nbsp;&gt;&nbsp;内衣&nbsp;&gt;&nbsp;情趣内衣', '服饰鞋帽,内衣,情趣内衣', 72, 0),
(63, 1, 6, 73, '服饰鞋帽&nbsp;&gt;&nbsp;内衣&nbsp;&gt;&nbsp;保暖内衣', '服饰鞋帽,内衣,保暖内衣', 73, 0),
(64, 1, 7, 74, '服饰鞋帽&nbsp;&gt;&nbsp;运动&nbsp;&gt;&nbsp;休闲鞋', '服饰鞋帽,运动,休闲鞋', 74, 0),
(65, 1, 7, 75, '服饰鞋帽&nbsp;&gt;&nbsp;运动&nbsp;&gt;&nbsp;帆布鞋', '服饰鞋帽,运动,帆布鞋', 75, 0),
(66, 1, 7, 76, '服饰鞋帽&nbsp;&gt;&nbsp;运动&nbsp;&gt;&nbsp;跑步鞋', '服饰鞋帽,运动,跑步鞋', 76, 0),
(67, 1, 7, 77, '服饰鞋帽&nbsp;&gt;&nbsp;运动&nbsp;&gt;&nbsp;篮球鞋', '服饰鞋帽,运动,篮球鞋', 77, 0),
(68, 1, 7, 78, '服饰鞋帽&nbsp;&gt;&nbsp;运动&nbsp;&gt;&nbsp;足球鞋', '服饰鞋帽,运动,足球鞋', 78, 0),
(69, 1, 7, 79, '服饰鞋帽&nbsp;&gt;&nbsp;运动&nbsp;&gt;&nbsp;训练鞋', '服饰鞋帽,运动,训练鞋', 79, 0),
(70, 1, 7, 80, '服饰鞋帽&nbsp;&gt;&nbsp;运动&nbsp;&gt;&nbsp;乒羽鞋', '服饰鞋帽,运动,乒羽鞋', 80, 0),
(71, 1, 7, 81, '服饰鞋帽&nbsp;&gt;&nbsp;运动&nbsp;&gt;&nbsp;拖鞋', '服饰鞋帽,运动,拖鞋', 81, 0),
(72, 1, 7, 82, '服饰鞋帽&nbsp;&gt;&nbsp;运动&nbsp;&gt;&nbsp;卫衣', '服饰鞋帽,运动,卫衣', 82, 0),
(73, 1, 7, 83, '服饰鞋帽&nbsp;&gt;&nbsp;运动&nbsp;&gt;&nbsp;夹克', '服饰鞋帽,运动,夹克', 83, 0),
(74, 1, 7, 84, '服饰鞋帽&nbsp;&gt;&nbsp;运动&nbsp;&gt;&nbsp;T恤', '服饰鞋帽,运动,T恤', 84, 0),
(75, 1, 7, 85, '服饰鞋帽&nbsp;&gt;&nbsp;运动&nbsp;&gt;&nbsp;棉服／羽绒服', '服饰鞋帽,运动,棉服／羽绒服', 85, 0),
(76, 1, 7, 86, '服饰鞋帽&nbsp;&gt;&nbsp;运动&nbsp;&gt;&nbsp;运动裤', '服饰鞋帽,运动,运动裤', 86, 0),
(77, 1, 7, 87, '服饰鞋帽&nbsp;&gt;&nbsp;运动&nbsp;&gt;&nbsp;套装', '服饰鞋帽,运动,套装', 87, 0),
(78, 1, 7, 88, '服饰鞋帽&nbsp;&gt;&nbsp;运动&nbsp;&gt;&nbsp;运动包', '服饰鞋帽,运动,运动包', 88, 0),
(79, 1, 7, 89, '服饰鞋帽&nbsp;&gt;&nbsp;运动&nbsp;&gt;&nbsp;运动配件', '服饰鞋帽,运动,运动配件', 89, 0),
(80, 1, 8, 90, '服饰鞋帽&nbsp;&gt;&nbsp;女鞋&nbsp;&gt;&nbsp;平底鞋', '服饰鞋帽,女鞋,平底鞋', 90, 0),
(81, 1, 8, 91, '服饰鞋帽&nbsp;&gt;&nbsp;女鞋&nbsp;&gt;&nbsp;高跟鞋', '服饰鞋帽,女鞋,高跟鞋', 91, 0),
(82, 1, 8, 92, '服饰鞋帽&nbsp;&gt;&nbsp;女鞋&nbsp;&gt;&nbsp;单鞋', '服饰鞋帽,女鞋,单鞋', 92, 0),
(83, 1, 8, 93, '服饰鞋帽&nbsp;&gt;&nbsp;女鞋&nbsp;&gt;&nbsp;休闲鞋', '服饰鞋帽,女鞋,休闲鞋', 93, 0),
(84, 1, 8, 94, '服饰鞋帽&nbsp;&gt;&nbsp;女鞋&nbsp;&gt;&nbsp;凉鞋', '服饰鞋帽,女鞋,凉鞋', 94, 0),
(85, 1, 8, 95, '服饰鞋帽&nbsp;&gt;&nbsp;女鞋&nbsp;&gt;&nbsp;女靴', '服饰鞋帽,女鞋,女靴', 95, 0),
(86, 1, 8, 96, '服饰鞋帽&nbsp;&gt;&nbsp;女鞋&nbsp;&gt;&nbsp;雪地靴', '服饰鞋帽,女鞋,雪地靴', 96, 0),
(87, 1, 8, 97, '服饰鞋帽&nbsp;&gt;&nbsp;女鞋&nbsp;&gt;&nbsp;拖鞋', '服饰鞋帽,女鞋,拖鞋', 97, 0),
(88, 1, 8, 98, '服饰鞋帽&nbsp;&gt;&nbsp;女鞋&nbsp;&gt;&nbsp;裸靴', '服饰鞋帽,女鞋,裸靴', 98, 0),
(89, 1, 8, 99, '服饰鞋帽&nbsp;&gt;&nbsp;女鞋&nbsp;&gt;&nbsp;筒靴', '服饰鞋帽,女鞋,筒靴', 99, 0),
(90, 1, 8, 100, '服饰鞋帽&nbsp;&gt;&nbsp;女鞋&nbsp;&gt;&nbsp;帆布鞋', '服饰鞋帽,女鞋,帆布鞋', 100, 0),
(91, 1, 8, 101, '服饰鞋帽&nbsp;&gt;&nbsp;女鞋&nbsp;&gt;&nbsp;雨鞋／雨靴', '服饰鞋帽,女鞋,雨鞋／雨靴', 101, 0),
(92, 1, 8, 102, '服饰鞋帽&nbsp;&gt;&nbsp;女鞋&nbsp;&gt;&nbsp;妈妈鞋', '服饰鞋帽,女鞋,妈妈鞋', 102, 0),
(93, 1, 8, 103, '服饰鞋帽&nbsp;&gt;&nbsp;女鞋&nbsp;&gt;&nbsp;鞋配件', '服饰鞋帽,女鞋,鞋配件', 103, 0),
(94, 1, 8, 104, '服饰鞋帽&nbsp;&gt;&nbsp;女鞋&nbsp;&gt;&nbsp;特色鞋', '服饰鞋帽,女鞋,特色鞋', 104, 0),
(95, 1, 8, 105, '服饰鞋帽&nbsp;&gt;&nbsp;女鞋&nbsp;&gt;&nbsp;鱼嘴鞋', '服饰鞋帽,女鞋,鱼嘴鞋', 105, 0),
(96, 1, 8, 106, '服饰鞋帽&nbsp;&gt;&nbsp;女鞋&nbsp;&gt;&nbsp;布鞋／绣花鞋', '服饰鞋帽,女鞋,布鞋／绣花鞋', 106, 0),
(97, 1, 9, 107, '服饰鞋帽&nbsp;&gt;&nbsp;男鞋&nbsp;&gt;&nbsp;商务休闲鞋', '服饰鞋帽,男鞋,商务休闲鞋', 107, 0),
(98, 1, 9, 108, '服饰鞋帽&nbsp;&gt;&nbsp;男鞋&nbsp;&gt;&nbsp;正装鞋', '服饰鞋帽,男鞋,正装鞋', 108, 0),
(99, 1, 9, 109, '服饰鞋帽&nbsp;&gt;&nbsp;男鞋&nbsp;&gt;&nbsp;休闲鞋', '服饰鞋帽,男鞋,休闲鞋', 109, 0),
(100, 1, 9, 110, '服饰鞋帽&nbsp;&gt;&nbsp;男鞋&nbsp;&gt;&nbsp;凉鞋／沙滩鞋', '服饰鞋帽,男鞋,凉鞋／沙滩鞋', 110, 0),
(101, 1, 9, 111, '服饰鞋帽&nbsp;&gt;&nbsp;男鞋&nbsp;&gt;&nbsp;男靴', '服饰鞋帽,男鞋,男靴', 111, 0),
(102, 1, 9, 112, '服饰鞋帽&nbsp;&gt;&nbsp;男鞋&nbsp;&gt;&nbsp;功能鞋', '服饰鞋帽,男鞋,功能鞋', 112, 0),
(103, 1, 9, 113, '服饰鞋帽&nbsp;&gt;&nbsp;男鞋&nbsp;&gt;&nbsp;拖鞋', '服饰鞋帽,男鞋,拖鞋', 113, 0),
(104, 1, 9, 114, '服饰鞋帽&nbsp;&gt;&nbsp;男鞋&nbsp;&gt;&nbsp;传统布鞋', '服饰鞋帽,男鞋,传统布鞋', 114, 0),
(105, 1, 9, 115, '服饰鞋帽&nbsp;&gt;&nbsp;男鞋&nbsp;&gt;&nbsp;鞋配件', '服饰鞋帽,男鞋,鞋配件', 115, 0),
(106, 1, 9, 116, '服饰鞋帽&nbsp;&gt;&nbsp;男鞋&nbsp;&gt;&nbsp;帆布鞋', '服饰鞋帽,男鞋,帆布鞋', 116, 0),
(107, 1, 9, 117, '服饰鞋帽&nbsp;&gt;&nbsp;男鞋&nbsp;&gt;&nbsp;豆豆鞋', '服饰鞋帽,男鞋,豆豆鞋', 117, 0),
(108, 1, 9, 118, '服饰鞋帽&nbsp;&gt;&nbsp;男鞋&nbsp;&gt;&nbsp;驾车鞋', '服饰鞋帽,男鞋,驾车鞋', 118, 0),
(109, 1, 10, 119, '服饰鞋帽&nbsp;&gt;&nbsp;配饰&nbsp;&gt;&nbsp;太阳镜', '服饰鞋帽,配饰,太阳镜', 119, 0),
(110, 1, 10, 120, '服饰鞋帽&nbsp;&gt;&nbsp;配饰&nbsp;&gt;&nbsp;框镜', '服饰鞋帽,配饰,框镜', 120, 0),
(111, 1, 10, 121, '服饰鞋帽&nbsp;&gt;&nbsp;配饰&nbsp;&gt;&nbsp;皮带', '服饰鞋帽,配饰,皮带', 121, 0),
(112, 1, 10, 122, '服饰鞋帽&nbsp;&gt;&nbsp;配饰&nbsp;&gt;&nbsp;围巾', '服饰鞋帽,配饰,围巾', 122, 34),
(113, 1, 10, 123, '服饰鞋帽&nbsp;&gt;&nbsp;配饰&nbsp;&gt;&nbsp;手套', '服饰鞋帽,配饰,手套', 123, 0),
(114, 1, 10, 124, '服饰鞋帽&nbsp;&gt;&nbsp;配饰&nbsp;&gt;&nbsp;帽子', '服饰鞋帽,配饰,帽子', 124, 48),
(115, 1, 10, 125, '服饰鞋帽&nbsp;&gt;&nbsp;配饰&nbsp;&gt;&nbsp;领带', '服饰鞋帽,配饰,领带', 125, 0),
(116, 1, 10, 126, '服饰鞋帽&nbsp;&gt;&nbsp;配饰&nbsp;&gt;&nbsp;袖扣', '服饰鞋帽,配饰,袖扣', 126, 0),
(117, 1, 10, 127, '服饰鞋帽&nbsp;&gt;&nbsp;配饰&nbsp;&gt;&nbsp;其他配件', '服饰鞋帽,配饰,其他配件', 127, 0),
(118, 1, 10, 128, '服饰鞋帽&nbsp;&gt;&nbsp;配饰&nbsp;&gt;&nbsp;丝巾', '服饰鞋帽,配饰,丝巾', 128, 0),
(119, 1, 10, 129, '服饰鞋帽&nbsp;&gt;&nbsp;配饰&nbsp;&gt;&nbsp;披肩', '服饰鞋帽,配饰,披肩', 129, 0),
(120, 1, 10, 130, '服饰鞋帽&nbsp;&gt;&nbsp;配饰&nbsp;&gt;&nbsp;腰带', '服饰鞋帽,配饰,腰带', 130, 0),
(121, 1, 10, 131, '服饰鞋帽&nbsp;&gt;&nbsp;配饰&nbsp;&gt;&nbsp;腰链／腰封', '服饰鞋帽,配饰,腰链／腰封', 131, 0),
(122, 1, 10, 132, '服饰鞋帽&nbsp;&gt;&nbsp;配饰&nbsp;&gt;&nbsp;棒球帽', '服饰鞋帽,配饰,棒球帽', 132, 0),
(123, 1, 10, 133, '服饰鞋帽&nbsp;&gt;&nbsp;配饰&nbsp;&gt;&nbsp;毛线', '服饰鞋帽,配饰,毛线', 133, 0),
(124, 1, 10, 134, '服饰鞋帽&nbsp;&gt;&nbsp;配饰&nbsp;&gt;&nbsp;遮阳帽', '服饰鞋帽,配饰,遮阳帽', 134, 0),
(125, 1, 10, 135, '服饰鞋帽&nbsp;&gt;&nbsp;配饰&nbsp;&gt;&nbsp;防紫外线手套', '服饰鞋帽,配饰,防紫外线手套', 135, 0),
(126, 1, 10, 136, '服饰鞋帽&nbsp;&gt;&nbsp;配饰&nbsp;&gt;&nbsp;草帽', '服饰鞋帽,配饰,草帽', 136, 0),
(127, 1, 11, 137, '服饰鞋帽&nbsp;&gt;&nbsp;童装&nbsp;&gt;&nbsp;套装', '服饰鞋帽,童装,套装', 137, 0),
(128, 1, 11, 138, '服饰鞋帽&nbsp;&gt;&nbsp;童装&nbsp;&gt;&nbsp;上衣', '服饰鞋帽,童装,上衣', 138, 0),
(129, 1, 11, 139, '服饰鞋帽&nbsp;&gt;&nbsp;童装&nbsp;&gt;&nbsp;裤子', '服饰鞋帽,童装,裤子', 139, 0),
(130, 1, 11, 140, '服饰鞋帽&nbsp;&gt;&nbsp;童装&nbsp;&gt;&nbsp;裙子', '服饰鞋帽,童装,裙子', 140, 0),
(131, 1, 11, 141, '服饰鞋帽&nbsp;&gt;&nbsp;童装&nbsp;&gt;&nbsp;内衣／家居服', '服饰鞋帽,童装,内衣／家居服', 141, 0),
(132, 1, 11, 142, '服饰鞋帽&nbsp;&gt;&nbsp;童装&nbsp;&gt;&nbsp;羽绒服／棉服', '服饰鞋帽,童装,羽绒服／棉服', 142, 0),
(133, 1, 11, 143, '服饰鞋帽&nbsp;&gt;&nbsp;童装&nbsp;&gt;&nbsp;亲子装', '服饰鞋帽,童装,亲子装', 143, 0),
(134, 1, 11, 144, '服饰鞋帽&nbsp;&gt;&nbsp;童装&nbsp;&gt;&nbsp;儿童配饰', '服饰鞋帽,童装,儿童配饰', 144, 0),
(135, 1, 11, 145, '服饰鞋帽&nbsp;&gt;&nbsp;童装&nbsp;&gt;&nbsp;礼服／演出服', '服饰鞋帽,童装,礼服／演出服', 145, 0),
(136, 1, 11, 146, '服饰鞋帽&nbsp;&gt;&nbsp;童装&nbsp;&gt;&nbsp;运动鞋', '服饰鞋帽,童装,运动鞋', 146, 0),
(137, 1, 11, 147, '服饰鞋帽&nbsp;&gt;&nbsp;童装&nbsp;&gt;&nbsp;单鞋', '服饰鞋帽,童装,单鞋', 147, 0),
(138, 1, 11, 148, '服饰鞋帽&nbsp;&gt;&nbsp;童装&nbsp;&gt;&nbsp;靴子', '服饰鞋帽,童装,靴子', 148, 0),
(139, 1, 11, 149, '服饰鞋帽&nbsp;&gt;&nbsp;童装&nbsp;&gt;&nbsp;凉鞋', '服饰鞋帽,童装,凉鞋', 149, 0),
(140, 1, 11, 150, '服饰鞋帽&nbsp;&gt;&nbsp;童装&nbsp;&gt;&nbsp;功能鞋', '服饰鞋帽,童装,功能鞋', 150, 0),
(141, 530, 531, 541, '珠宝手表&nbsp;&gt;&nbsp;时尚饰品&nbsp;&gt;&nbsp;项链', '珠宝手表,时尚饰品,项链', 541, 0),
(142, 530, 531, 542, '珠宝手表&nbsp;&gt;&nbsp;时尚饰品&nbsp;&gt;&nbsp;手链/脚链', '珠宝手表,时尚饰品,手链/脚链', 542, 0),
(143, 530, 531, 543, '珠宝手表&nbsp;&gt;&nbsp;时尚饰品&nbsp;&gt;&nbsp;戒指', '珠宝手表,时尚饰品,戒指', 543, 0),
(144, 530, 531, 544, '珠宝手表&nbsp;&gt;&nbsp;时尚饰品&nbsp;&gt;&nbsp;耳饰', '珠宝手表,时尚饰品,耳饰', 544, 0),
(145, 530, 531, 545, '珠宝手表&nbsp;&gt;&nbsp;时尚饰品&nbsp;&gt;&nbsp;头饰', '珠宝手表,时尚饰品,头饰', 545, 0),
(146, 530, 531, 546, '珠宝手表&nbsp;&gt;&nbsp;时尚饰品&nbsp;&gt;&nbsp;胸针', '珠宝手表,时尚饰品,胸针', 546, 0),
(147, 530, 531, 547, '珠宝手表&nbsp;&gt;&nbsp;时尚饰品&nbsp;&gt;&nbsp;婚庆饰品', '珠宝手表,时尚饰品,婚庆饰品', 547, 0),
(148, 530, 531, 548, '珠宝手表&nbsp;&gt;&nbsp;时尚饰品&nbsp;&gt;&nbsp;饰品配件', '珠宝手表,时尚饰品,饰品配件', 548, 0),
(149, 530, 532, 549, '珠宝手表&nbsp;&gt;&nbsp;纯金K金饰品&nbsp;&gt;&nbsp;吊坠/项链', '珠宝手表,纯金K金饰品,吊坠/项链', 549, 42),
(150, 530, 532, 550, '珠宝手表&nbsp;&gt;&nbsp;纯金K金饰品&nbsp;&gt;&nbsp;手镯/手链/脚链', '珠宝手表,纯金K金饰品,手镯/手链/脚链', 550, 42),
(151, 530, 532, 551, '珠宝手表&nbsp;&gt;&nbsp;纯金K金饰品&nbsp;&gt;&nbsp;戒指', '珠宝手表,纯金K金饰品,戒指', 551, 42),
(152, 530, 532, 552, '珠宝手表&nbsp;&gt;&nbsp;纯金K金饰品&nbsp;&gt;&nbsp;耳饰', '珠宝手表,纯金K金饰品,耳饰', 552, 42),
(153, 530, 533, 553, '珠宝手表&nbsp;&gt;&nbsp;金银投资&nbsp;&gt;&nbsp;工艺金', '珠宝手表,金银投资,工艺金', 553, 0),
(154, 530, 533, 554, '珠宝手表&nbsp;&gt;&nbsp;金银投资&nbsp;&gt;&nbsp;工艺银', '珠宝手表,金银投资,工艺银', 554, 0),
(155, 530, 534, 555, '珠宝手表&nbsp;&gt;&nbsp;银饰&nbsp;&gt;&nbsp;吊坠/项链', '珠宝手表,银饰,吊坠/项链', 555, 0),
(156, 530, 534, 556, '珠宝手表&nbsp;&gt;&nbsp;银饰&nbsp;&gt;&nbsp;手镯/手链/脚链', '珠宝手表,银饰,手镯/手链/脚链', 556, 0),
(157, 530, 534, 557, '珠宝手表&nbsp;&gt;&nbsp;银饰&nbsp;&gt;&nbsp;戒指/耳饰', '珠宝手表,银饰,戒指/耳饰', 557, 0),
(158, 530, 534, 558, '珠宝手表&nbsp;&gt;&nbsp;银饰&nbsp;&gt;&nbsp;宝宝金银', '珠宝手表,银饰,宝宝金银', 558, 0),
(159, 530, 534, 559, '珠宝手表&nbsp;&gt;&nbsp;银饰&nbsp;&gt;&nbsp;千足银', '珠宝手表,银饰,千足银', 559, 0),
(160, 530, 535, 560, '珠宝手表&nbsp;&gt;&nbsp;钻石饰品&nbsp;&gt;&nbsp;裸钻', '珠宝手表,钻石饰品,裸钻', 560, 0),
(161, 530, 535, 561, '珠宝手表&nbsp;&gt;&nbsp;钻石饰品&nbsp;&gt;&nbsp;戒指', '珠宝手表,钻石饰品,戒指', 561, 0),
(162, 530, 535, 563, '珠宝手表&nbsp;&gt;&nbsp;钻石饰品&nbsp;&gt;&nbsp;项链/吊坠', '珠宝手表,钻石饰品,项链/吊坠', 563, 0),
(163, 530, 535, 564, '珠宝手表&nbsp;&gt;&nbsp;钻石饰品&nbsp;&gt;&nbsp;耳饰', '珠宝手表,钻石饰品,耳饰', 564, 0),
(164, 530, 535, 565, '珠宝手表&nbsp;&gt;&nbsp;钻石饰品&nbsp;&gt;&nbsp;手镯/手链', '珠宝手表,钻石饰品,手镯/手链', 565, 0),
(165, 530, 536, 566, '珠宝手表&nbsp;&gt;&nbsp;翡翠玉石&nbsp;&gt;&nbsp;项链/吊坠', '珠宝手表,翡翠玉石,项链/吊坠', 566, 44),
(166, 530, 536, 567, '珠宝手表&nbsp;&gt;&nbsp;翡翠玉石&nbsp;&gt;&nbsp;手镯/手串', '珠宝手表,翡翠玉石,手镯/手串', 567, 44),
(167, 530, 536, 568, '珠宝手表&nbsp;&gt;&nbsp;翡翠玉石&nbsp;&gt;&nbsp;戒指', '珠宝手表,翡翠玉石,戒指', 568, 44),
(168, 530, 536, 569, '珠宝手表&nbsp;&gt;&nbsp;翡翠玉石&nbsp;&gt;&nbsp;耳饰', '珠宝手表,翡翠玉石,耳饰', 569, 44),
(169, 530, 536, 570, '珠宝手表&nbsp;&gt;&nbsp;翡翠玉石&nbsp;&gt;&nbsp;挂件/摆件/把件', '珠宝手表,翡翠玉石,挂件/摆件/把件', 570, 44),
(170, 530, 536, 571, '珠宝手表&nbsp;&gt;&nbsp;翡翠玉石&nbsp;&gt;&nbsp;高值收藏', '珠宝手表,翡翠玉石,高值收藏', 571, 44),
(171, 530, 537, 572, '珠宝手表&nbsp;&gt;&nbsp;水晶玛瑙&nbsp;&gt;&nbsp;耳饰', '珠宝手表,水晶玛瑙,耳饰', 572, 0),
(172, 530, 537, 573, '珠宝手表&nbsp;&gt;&nbsp;水晶玛瑙&nbsp;&gt;&nbsp;手镯/手链/脚链', '珠宝手表,水晶玛瑙,手镯/手链/脚链', 573, 0),
(173, 530, 537, 574, '珠宝手表&nbsp;&gt;&nbsp;水晶玛瑙&nbsp;&gt;&nbsp;戒指', '珠宝手表,水晶玛瑙,戒指', 574, 0),
(174, 530, 537, 575, '珠宝手表&nbsp;&gt;&nbsp;水晶玛瑙&nbsp;&gt;&nbsp;头饰/胸针', '珠宝手表,水晶玛瑙,头饰/胸针', 575, 0),
(175, 530, 537, 576, '珠宝手表&nbsp;&gt;&nbsp;水晶玛瑙&nbsp;&gt;&nbsp;摆件/挂件', '珠宝手表,水晶玛瑙,摆件/挂件', 576, 0),
(176, 530, 538, 577, '珠宝手表&nbsp;&gt;&nbsp;宝石珍珠&nbsp;&gt;&nbsp;项链/吊坠', '珠宝手表,宝石珍珠,项链/吊坠', 577, 0),
(177, 530, 538, 578, '珠宝手表&nbsp;&gt;&nbsp;宝石珍珠&nbsp;&gt;&nbsp;耳饰', '珠宝手表,宝石珍珠,耳饰', 578, 0),
(178, 530, 538, 579, '珠宝手表&nbsp;&gt;&nbsp;宝石珍珠&nbsp;&gt;&nbsp;手镯/手链', '珠宝手表,宝石珍珠,手镯/手链', 579, 0),
(179, 530, 538, 580, '珠宝手表&nbsp;&gt;&nbsp;宝石珍珠&nbsp;&gt;&nbsp;戒指', '珠宝手表,宝石珍珠,戒指', 580, 0),
(180, 530, 539, 581, '珠宝手表&nbsp;&gt;&nbsp;婚庆&nbsp;&gt;&nbsp;婚嫁首饰', '珠宝手表,婚庆,婚嫁首饰', 581, 0),
(181, 530, 539, 582, '珠宝手表&nbsp;&gt;&nbsp;婚庆&nbsp;&gt;&nbsp;婚纱摄影', '珠宝手表,婚庆,婚纱摄影', 582, 0),
(182, 530, 539, 583, '珠宝手表&nbsp;&gt;&nbsp;婚庆&nbsp;&gt;&nbsp;婚纱礼服', '珠宝手表,婚庆,婚纱礼服', 583, 0),
(183, 530, 539, 584, '珠宝手表&nbsp;&gt;&nbsp;婚庆&nbsp;&gt;&nbsp;婚庆服务', '珠宝手表,婚庆,婚庆服务', 584, 0),
(184, 530, 539, 585, '珠宝手表&nbsp;&gt;&nbsp;婚庆&nbsp;&gt;&nbsp;婚庆礼品/用品', '珠宝手表,婚庆,婚庆礼品/用品', 585, 0),
(185, 530, 539, 586, '珠宝手表&nbsp;&gt;&nbsp;婚庆&nbsp;&gt;&nbsp;婚宴', '珠宝手表,婚庆,婚宴', 586, 0),
(186, 530, 540, 587, '珠宝手表&nbsp;&gt;&nbsp;钟表手表&nbsp;&gt;&nbsp;瑞士品牌', '珠宝手表,钟表手表,瑞士品牌', 587, 0),
(187, 530, 540, 588, '珠宝手表&nbsp;&gt;&nbsp;钟表手表&nbsp;&gt;&nbsp;国产品牌', '珠宝手表,钟表手表,国产品牌', 588, 0),
(188, 530, 540, 589, '珠宝手表&nbsp;&gt;&nbsp;钟表手表&nbsp;&gt;&nbsp;日本品牌', '珠宝手表,钟表手表,日本品牌', 589, 0),
(189, 530, 540, 590, '珠宝手表&nbsp;&gt;&nbsp;钟表手表&nbsp;&gt;&nbsp;时尚品牌', '珠宝手表,钟表手表,时尚品牌', 590, 0),
(190, 530, 540, 591, '珠宝手表&nbsp;&gt;&nbsp;钟表手表&nbsp;&gt;&nbsp;闹钟挂钟', '珠宝手表,钟表手表,闹钟挂钟', 591, 0),
(191, 530, 540, 592, '珠宝手表&nbsp;&gt;&nbsp;钟表手表&nbsp;&gt;&nbsp;儿童手表', '珠宝手表,钟表手表,儿童手表', 592, 0),
(192, 2, 151, 156, '礼品箱包&nbsp;&gt;&nbsp;潮流女包&nbsp;&gt;&nbsp;钱包/卡包', '礼品箱包,潮流女包,钱包/卡包', 156, 48),
(193, 2, 151, 157, '礼品箱包&nbsp;&gt;&nbsp;潮流女包&nbsp;&gt;&nbsp;手拿包', '礼品箱包,潮流女包,手拿包', 157, 48),
(194, 2, 151, 158, '礼品箱包&nbsp;&gt;&nbsp;潮流女包&nbsp;&gt;&nbsp;单肩包', '礼品箱包,潮流女包,单肩包', 158, 48),
(195, 2, 151, 159, '礼品箱包&nbsp;&gt;&nbsp;潮流女包&nbsp;&gt;&nbsp;双肩包', '礼品箱包,潮流女包,双肩包', 159, 48),
(196, 2, 151, 160, '礼品箱包&nbsp;&gt;&nbsp;潮流女包&nbsp;&gt;&nbsp;手提包', '礼品箱包,潮流女包,手提包', 160, 48),
(197, 2, 151, 161, '礼品箱包&nbsp;&gt;&nbsp;潮流女包&nbsp;&gt;&nbsp;斜挎包', '礼品箱包,潮流女包,斜挎包', 161, 48),
(198, 2, 152, 162, '礼品箱包&nbsp;&gt;&nbsp;时尚男包&nbsp;&gt;&nbsp;钱包/卡包', '礼品箱包,时尚男包,钱包/卡包', 162, 0),
(199, 2, 152, 163, '礼品箱包&nbsp;&gt;&nbsp;时尚男包&nbsp;&gt;&nbsp;男士手包', '礼品箱包,时尚男包,男士手包', 163, 0),
(200, 2, 152, 164, '礼品箱包&nbsp;&gt;&nbsp;时尚男包&nbsp;&gt;&nbsp;腰带／礼盒', '礼品箱包,时尚男包,腰带／礼盒', 164, 0),
(201, 2, 152, 165, '礼品箱包&nbsp;&gt;&nbsp;时尚男包&nbsp;&gt;&nbsp;商务公文包', '礼品箱包,时尚男包,商务公文包', 165, 0),
(202, 2, 153, 166, '礼品箱包&nbsp;&gt;&nbsp;功能箱包&nbsp;&gt;&nbsp;电脑数码包', '礼品箱包,功能箱包,电脑数码包', 166, 0),
(203, 2, 153, 167, '礼品箱包&nbsp;&gt;&nbsp;功能箱包&nbsp;&gt;&nbsp;拉杆箱', '礼品箱包,功能箱包,拉杆箱', 167, 0),
(204, 2, 153, 168, '礼品箱包&nbsp;&gt;&nbsp;功能箱包&nbsp;&gt;&nbsp;旅行包', '礼品箱包,功能箱包,旅行包', 168, 0),
(205, 2, 153, 169, '礼品箱包&nbsp;&gt;&nbsp;功能箱包&nbsp;&gt;&nbsp;旅行配件', '礼品箱包,功能箱包,旅行配件', 169, 0),
(206, 2, 153, 170, '礼品箱包&nbsp;&gt;&nbsp;功能箱包&nbsp;&gt;&nbsp;休闲运动包', '礼品箱包,功能箱包,休闲运动包', 170, 0),
(207, 2, 153, 171, '礼品箱包&nbsp;&gt;&nbsp;功能箱包&nbsp;&gt;&nbsp;登山包', '礼品箱包,功能箱包,登山包', 171, 0),
(208, 2, 153, 172, '礼品箱包&nbsp;&gt;&nbsp;功能箱包&nbsp;&gt;&nbsp;妈咪包', '礼品箱包,功能箱包,妈咪包', 172, 0),
(209, 2, 153, 173, '礼品箱包&nbsp;&gt;&nbsp;功能箱包&nbsp;&gt;&nbsp;书包', '礼品箱包,功能箱包,书包', 173, 0),
(210, 2, 154, 174, '礼品箱包&nbsp;&gt;&nbsp;礼品&nbsp;&gt;&nbsp;火机烟具', '礼品箱包,礼品,火机烟具', 174, 0),
(211, 2, 154, 175, '礼品箱包&nbsp;&gt;&nbsp;礼品&nbsp;&gt;&nbsp;礼品文具', '礼品箱包,礼品,礼品文具', 175, 0),
(212, 2, 154, 176, '礼品箱包&nbsp;&gt;&nbsp;礼品&nbsp;&gt;&nbsp;瑞士军刀', '礼品箱包,礼品,瑞士军刀', 176, 0),
(213, 2, 154, 177, '礼品箱包&nbsp;&gt;&nbsp;礼品&nbsp;&gt;&nbsp;收藏品', '礼品箱包,礼品,收藏品', 177, 0),
(214, 2, 154, 178, '礼品箱包&nbsp;&gt;&nbsp;礼品&nbsp;&gt;&nbsp;工艺礼品', '礼品箱包,礼品,工艺礼品', 178, 0),
(215, 2, 154, 179, '礼品箱包&nbsp;&gt;&nbsp;礼品&nbsp;&gt;&nbsp;创意礼品', '礼品箱包,礼品,创意礼品', 179, 0),
(216, 2, 154, 180, '礼品箱包&nbsp;&gt;&nbsp;礼品&nbsp;&gt;&nbsp;礼卡礼卷', '礼品箱包,礼品,礼卡礼卷', 180, 0),
(217, 2, 154, 181, '礼品箱包&nbsp;&gt;&nbsp;礼品&nbsp;&gt;&nbsp;鲜花速递', '礼品箱包,礼品,鲜花速递', 181, 0),
(218, 2, 154, 182, '礼品箱包&nbsp;&gt;&nbsp;礼品&nbsp;&gt;&nbsp;婚庆用品', '礼品箱包,礼品,婚庆用品', 182, 0),
(219, 2, 155, 184, '礼品箱包&nbsp;&gt;&nbsp;奢侈品&nbsp;&gt;&nbsp;奢侈品箱包', '礼品箱包,奢侈品,奢侈品箱包', 184, 0),
(220, 2, 155, 185, '礼品箱包&nbsp;&gt;&nbsp;奢侈品&nbsp;&gt;&nbsp;钱包', '礼品箱包,奢侈品,钱包', 185, 0),
(221, 2, 155, 186, '礼品箱包&nbsp;&gt;&nbsp;奢侈品&nbsp;&gt;&nbsp;服饰', '礼品箱包,奢侈品,服饰', 186, 0),
(222, 2, 155, 187, '礼品箱包&nbsp;&gt;&nbsp;奢侈品&nbsp;&gt;&nbsp;腰带', '礼品箱包,奢侈品,腰带', 187, 0),
(223, 2, 155, 188, '礼品箱包&nbsp;&gt;&nbsp;奢侈品&nbsp;&gt;&nbsp;太阳镜眼镜', '礼品箱包,奢侈品,太阳镜眼镜', 188, 0),
(224, 2, 155, 189, '礼品箱包&nbsp;&gt;&nbsp;奢侈品&nbsp;&gt;&nbsp;配件', '礼品箱包,奢侈品,配件', 189, 0),
(225, 2, 155, 190, '礼品箱包&nbsp;&gt;&nbsp;奢侈品&nbsp;&gt;&nbsp;GUCCI', '礼品箱包,奢侈品,GUCCI', 190, 0),
(226, 2, 155, 191, '礼品箱包&nbsp;&gt;&nbsp;奢侈品&nbsp;&gt;&nbsp;PRADA', '礼品箱包,奢侈品,PRADA', 191, 0),
(227, 2, 155, 192, '礼品箱包&nbsp;&gt;&nbsp;奢侈品&nbsp;&gt;&nbsp;FENDI', '礼品箱包,奢侈品,FENDI', 192, 0),
(228, 2, 155, 193, '礼品箱包&nbsp;&gt;&nbsp;奢侈品&nbsp;&gt;&nbsp;BURBERRY', '礼品箱包,奢侈品,BURBERRY', 193, 0),
(229, 2, 155, 194, '礼品箱包&nbsp;&gt;&nbsp;奢侈品&nbsp;&gt;&nbsp;MONTBLANC', '礼品箱包,奢侈品,MONTBLANC', 194, 0),
(230, 2, 155, 195, '礼品箱包&nbsp;&gt;&nbsp;奢侈品&nbsp;&gt;&nbsp;ARMANI', '礼品箱包,奢侈品,ARMANI', 195, 0),
(231, 2, 155, 196, '礼品箱包&nbsp;&gt;&nbsp;奢侈品&nbsp;&gt;&nbsp;RIMOWA', '礼品箱包,奢侈品,RIMOWA', 196, 0),
(232, 2, 155, 197, '礼品箱包&nbsp;&gt;&nbsp;奢侈品&nbsp;&gt;&nbsp;RAY-BAN', '礼品箱包,奢侈品,RAY-BAN', 197, 0),
(233, 2, 155, 198, '礼品箱包&nbsp;&gt;&nbsp;奢侈品&nbsp;&gt;&nbsp;COACH', '礼品箱包,奢侈品,COACH', 198, 0),
(234, 2, 155, 199, '礼品箱包&nbsp;&gt;&nbsp;奢侈品&nbsp;&gt;&nbsp;更多品牌', '礼品箱包,奢侈品,更多品牌', 199, 0),
(235, 256, 1034, 1035, '数码办公&nbsp;&gt;&nbsp;手机通讯&nbsp;&gt;&nbsp;手机', '数码办公,手机通讯,手机', 1035, 41),
(236, 256, 1034, 1036, '数码办公&nbsp;&gt;&nbsp;手机通讯&nbsp;&gt;&nbsp;对讲机', '数码办公,手机通讯,对讲机', 1036, 0),
(237, 256, 258, 264, '数码办公&nbsp;&gt;&nbsp;手机配件&nbsp;&gt;&nbsp;手机电池', '数码办公,手机配件,手机电池', 264, 0),
(238, 256, 258, 265, '数码办公&nbsp;&gt;&nbsp;手机配件&nbsp;&gt;&nbsp;蓝牙耳机', '数码办公,手机配件,蓝牙耳机', 265, 0),
(239, 256, 258, 266, '数码办公&nbsp;&gt;&nbsp;手机配件&nbsp;&gt;&nbsp;充电器/数据线', '数码办公,手机配件,充电器/数据线', 266, 0),
(240, 256, 258, 267, '数码办公&nbsp;&gt;&nbsp;手机配件&nbsp;&gt;&nbsp;手机耳机', '数码办公,手机配件,手机耳机', 267, 0),
(241, 256, 258, 268, '数码办公&nbsp;&gt;&nbsp;手机配件&nbsp;&gt;&nbsp;手机贴膜', '数码办公,手机配件,手机贴膜', 268, 0),
(242, 256, 258, 269, '数码办公&nbsp;&gt;&nbsp;手机配件&nbsp;&gt;&nbsp;手机存储卡', '数码办公,手机配件,手机存储卡', 269, 49),
(243, 256, 258, 270, '数码办公&nbsp;&gt;&nbsp;手机配件&nbsp;&gt;&nbsp;手机保护套', '数码办公,手机配件,手机保护套', 270, 0),
(244, 256, 258, 271, '数码办公&nbsp;&gt;&nbsp;手机配件&nbsp;&gt;&nbsp;车载配件', '数码办公,手机配件,车载配件', 271, 0),
(245, 256, 258, 272, '数码办公&nbsp;&gt;&nbsp;手机配件&nbsp;&gt;&nbsp;iPhone 配件', '数码办公,手机配件,iPhone 配件', 272, 0),
(246, 256, 258, 273, '数码办公&nbsp;&gt;&nbsp;手机配件&nbsp;&gt;&nbsp;创意配件', '数码办公,手机配件,创意配件', 273, 0),
(247, 256, 258, 274, '数码办公&nbsp;&gt;&nbsp;手机配件&nbsp;&gt;&nbsp;便携/无线音响', '数码办公,手机配件,便携/无线音响', 274, 0),
(248, 256, 258, 275, '数码办公&nbsp;&gt;&nbsp;手机配件&nbsp;&gt;&nbsp;手机饰品', '数码办公,手机配件,手机饰品', 275, 0),
(249, 256, 259, 276, '数码办公&nbsp;&gt;&nbsp;摄影摄像&nbsp;&gt;&nbsp;数码相机', '数码办公,摄影摄像,数码相机', 276, 0),
(250, 256, 259, 277, '数码办公&nbsp;&gt;&nbsp;摄影摄像&nbsp;&gt;&nbsp;单电/微单相机', '数码办公,摄影摄像,单电/微单相机', 277, 0),
(251, 256, 259, 278, '数码办公&nbsp;&gt;&nbsp;摄影摄像&nbsp;&gt;&nbsp;单反相机', '数码办公,摄影摄像,单反相机', 278, 0),
(252, 256, 259, 279, '数码办公&nbsp;&gt;&nbsp;摄影摄像&nbsp;&gt;&nbsp;摄像机', '数码办公,摄影摄像,摄像机', 279, 0),
(253, 256, 259, 280, '数码办公&nbsp;&gt;&nbsp;摄影摄像&nbsp;&gt;&nbsp;拍立得', '数码办公,摄影摄像,拍立得', 280, 0),
(254, 256, 259, 281, '数码办公&nbsp;&gt;&nbsp;摄影摄像&nbsp;&gt;&nbsp;镜头', '数码办公,摄影摄像,镜头', 281, 0),
(255, 256, 260, 282, '数码办公&nbsp;&gt;&nbsp;数码配件&nbsp;&gt;&nbsp;存储卡', '数码办公,数码配件,存储卡', 282, 0),
(256, 256, 260, 283, '数码办公&nbsp;&gt;&nbsp;数码配件&nbsp;&gt;&nbsp;读卡器', '数码办公,数码配件,读卡器', 283, 0),
(257, 256, 260, 284, '数码办公&nbsp;&gt;&nbsp;数码配件&nbsp;&gt;&nbsp;滤镜', '数码办公,数码配件,滤镜', 284, 0),
(258, 256, 260, 285, '数码办公&nbsp;&gt;&nbsp;数码配件&nbsp;&gt;&nbsp;闪光灯/手柄', '数码办公,数码配件,闪光灯/手柄', 285, 0),
(259, 256, 260, 286, '数码办公&nbsp;&gt;&nbsp;数码配件&nbsp;&gt;&nbsp;相机包', '数码办公,数码配件,相机包', 286, 0),
(260, 256, 260, 287, '数码办公&nbsp;&gt;&nbsp;数码配件&nbsp;&gt;&nbsp;三脚架/云台', '数码办公,数码配件,三脚架/云台', 287, 0),
(261, 256, 260, 288, '数码办公&nbsp;&gt;&nbsp;数码配件&nbsp;&gt;&nbsp;相机清洁', '数码办公,数码配件,相机清洁', 288, 0),
(262, 256, 260, 289, '数码办公&nbsp;&gt;&nbsp;数码配件&nbsp;&gt;&nbsp;相机贴膜', '数码办公,数码配件,相机贴膜', 289, 0),
(263, 256, 260, 290, '数码办公&nbsp;&gt;&nbsp;数码配件&nbsp;&gt;&nbsp;机身附件', '数码办公,数码配件,机身附件', 290, 0),
(264, 256, 260, 291, '数码办公&nbsp;&gt;&nbsp;数码配件&nbsp;&gt;&nbsp;镜头附件', '数码办公,数码配件,镜头附件', 291, 0),
(265, 256, 260, 292, '数码办公&nbsp;&gt;&nbsp;数码配件&nbsp;&gt;&nbsp;电池/充电器', '数码办公,数码配件,电池/充电器', 292, 0),
(266, 256, 260, 293, '数码办公&nbsp;&gt;&nbsp;数码配件&nbsp;&gt;&nbsp;移动电源', '数码办公,数码配件,移动电源', 293, 0),
(267, 256, 261, 294, '数码办公&nbsp;&gt;&nbsp;时尚影音&nbsp;&gt;&nbsp;MP3/MP4', '数码办公,时尚影音,MP3/MP4', 294, 0),
(268, 256, 261, 295, '数码办公&nbsp;&gt;&nbsp;时尚影音&nbsp;&gt;&nbsp;智能设备', '数码办公,时尚影音,智能设备', 295, 0),
(269, 256, 261, 296, '数码办公&nbsp;&gt;&nbsp;时尚影音&nbsp;&gt;&nbsp;耳机/耳麦', '数码办公,时尚影音,耳机/耳麦', 296, 0),
(270, 256, 261, 297, '数码办公&nbsp;&gt;&nbsp;时尚影音&nbsp;&gt;&nbsp;音箱', '数码办公,时尚影音,音箱', 297, 0),
(271, 256, 261, 298, '数码办公&nbsp;&gt;&nbsp;时尚影音&nbsp;&gt;&nbsp;高清播放器', '数码办公,时尚影音,高清播放器', 298, 0),
(272, 256, 261, 299, '数码办公&nbsp;&gt;&nbsp;时尚影音&nbsp;&gt;&nbsp;电子书', '数码办公,时尚影音,电子书', 299, 0),
(273, 256, 261, 300, '数码办公&nbsp;&gt;&nbsp;时尚影音&nbsp;&gt;&nbsp;电子词典', '数码办公,时尚影音,电子词典', 300, 0),
(274, 256, 261, 301, '数码办公&nbsp;&gt;&nbsp;时尚影音&nbsp;&gt;&nbsp;MP3/MP4配件', '数码办公,时尚影音,MP3/MP4配件', 301, 0),
(275, 256, 261, 302, '数码办公&nbsp;&gt;&nbsp;时尚影音&nbsp;&gt;&nbsp;录音笔', '数码办公,时尚影音,录音笔', 302, 0),
(276, 256, 261, 303, '数码办公&nbsp;&gt;&nbsp;时尚影音&nbsp;&gt;&nbsp;麦克风', '数码办公,时尚影音,麦克风', 303, 0),
(277, 256, 261, 304, '数码办公&nbsp;&gt;&nbsp;时尚影音&nbsp;&gt;&nbsp;专业音频', '数码办公,时尚影音,专业音频', 304, 0),
(278, 256, 261, 305, '数码办公&nbsp;&gt;&nbsp;时尚影音&nbsp;&gt;&nbsp;电子教育', '数码办公,时尚影音,电子教育', 305, 0),
(279, 256, 261, 306, '数码办公&nbsp;&gt;&nbsp;时尚影音&nbsp;&gt;&nbsp;数码相框', '数码办公,时尚影音,数码相框', 306, 0),
(280, 256, 261, 307, '数码办公&nbsp;&gt;&nbsp;时尚影音&nbsp;&gt;&nbsp;苹果配件', '数码办公,时尚影音,苹果配件', 307, 0),
(281, 256, 390, 398, '数码办公&nbsp;&gt;&nbsp;电脑整机&nbsp;&gt;&nbsp;笔记本', '数码办公,电脑整机,笔记本', 398, 0),
(282, 256, 390, 399, '数码办公&nbsp;&gt;&nbsp;电脑整机&nbsp;&gt;&nbsp;超极本', '数码办公,电脑整机,超极本', 399, 0),
(283, 256, 390, 400, '数码办公&nbsp;&gt;&nbsp;电脑整机&nbsp;&gt;&nbsp;游戏本', '数码办公,电脑整机,游戏本', 400, 0),
(284, 256, 390, 401, '数码办公&nbsp;&gt;&nbsp;电脑整机&nbsp;&gt;&nbsp;平板电脑', '数码办公,电脑整机,平板电脑', 401, 0),
(285, 256, 390, 402, '数码办公&nbsp;&gt;&nbsp;电脑整机&nbsp;&gt;&nbsp;平板电脑配件', '数码办公,电脑整机,平板电脑配件', 402, 0),
(286, 256, 390, 403, '数码办公&nbsp;&gt;&nbsp;电脑整机&nbsp;&gt;&nbsp;台式机', '数码办公,电脑整机,台式机', 403, 0),
(287, 256, 390, 404, '数码办公&nbsp;&gt;&nbsp;电脑整机&nbsp;&gt;&nbsp;服务器', '数码办公,电脑整机,服务器', 404, 0),
(288, 256, 390, 405, '数码办公&nbsp;&gt;&nbsp;电脑整机&nbsp;&gt;&nbsp;笔记本配件', '数码办公,电脑整机,笔记本配件', 405, 0),
(289, 256, 391, 406, '数码办公&nbsp;&gt;&nbsp;电脑配件&nbsp;&gt;&nbsp;CPU', '数码办公,电脑配件,CPU', 406, 0),
(290, 256, 391, 407, '数码办公&nbsp;&gt;&nbsp;电脑配件&nbsp;&gt;&nbsp;主板', '数码办公,电脑配件,主板', 407, 0),
(291, 256, 391, 408, '数码办公&nbsp;&gt;&nbsp;电脑配件&nbsp;&gt;&nbsp;显卡', '数码办公,电脑配件,显卡', 408, 0),
(292, 256, 391, 409, '数码办公&nbsp;&gt;&nbsp;电脑配件&nbsp;&gt;&nbsp;硬盘', '数码办公,电脑配件,硬盘', 409, 0),
(293, 256, 391, 410, '数码办公&nbsp;&gt;&nbsp;电脑配件&nbsp;&gt;&nbsp;SSD固态硬盘', '数码办公,电脑配件,SSD固态硬盘', 410, 0),
(294, 256, 391, 411, '数码办公&nbsp;&gt;&nbsp;电脑配件&nbsp;&gt;&nbsp;内存', '数码办公,电脑配件,内存', 411, 0),
(295, 256, 391, 412, '数码办公&nbsp;&gt;&nbsp;电脑配件&nbsp;&gt;&nbsp;机箱', '数码办公,电脑配件,机箱', 412, 0),
(296, 256, 391, 413, '数码办公&nbsp;&gt;&nbsp;电脑配件&nbsp;&gt;&nbsp;电源', '数码办公,电脑配件,电源', 413, 0),
(297, 256, 391, 414, '数码办公&nbsp;&gt;&nbsp;电脑配件&nbsp;&gt;&nbsp;显示器', '数码办公,电脑配件,显示器', 414, 0),
(298, 256, 391, 415, '数码办公&nbsp;&gt;&nbsp;电脑配件&nbsp;&gt;&nbsp;刻录机/光驱', '数码办公,电脑配件,刻录机/光驱', 415, 0),
(299, 256, 391, 416, '数码办公&nbsp;&gt;&nbsp;电脑配件&nbsp;&gt;&nbsp;散热器', '数码办公,电脑配件,散热器', 416, 0),
(300, 256, 391, 417, '数码办公&nbsp;&gt;&nbsp;电脑配件&nbsp;&gt;&nbsp;声卡/扩展卡', '数码办公,电脑配件,声卡/扩展卡', 417, 0),
(301, 256, 391, 418, '数码办公&nbsp;&gt;&nbsp;电脑配件&nbsp;&gt;&nbsp;装机配件', '数码办公,电脑配件,装机配件', 418, 0),
(302, 256, 392, 419, '数码办公&nbsp;&gt;&nbsp;外设产品&nbsp;&gt;&nbsp;鼠标', '数码办公,外设产品,鼠标', 419, 0),
(303, 256, 392, 420, '数码办公&nbsp;&gt;&nbsp;外设产品&nbsp;&gt;&nbsp;键盘', '数码办公,外设产品,键盘', 420, 0),
(304, 256, 392, 421, '数码办公&nbsp;&gt;&nbsp;外设产品&nbsp;&gt;&nbsp;移动硬盘', '数码办公,外设产品,移动硬盘', 421, 0),
(305, 256, 392, 422, '数码办公&nbsp;&gt;&nbsp;外设产品&nbsp;&gt;&nbsp;U盘', '数码办公,外设产品,U盘', 422, 0),
(306, 256, 392, 423, '数码办公&nbsp;&gt;&nbsp;外设产品&nbsp;&gt;&nbsp;摄像头', '数码办公,外设产品,摄像头', 423, 0),
(307, 256, 392, 424, '数码办公&nbsp;&gt;&nbsp;外设产品&nbsp;&gt;&nbsp;外置盒', '数码办公,外设产品,外置盒', 424, 0),
(308, 256, 392, 425, '数码办公&nbsp;&gt;&nbsp;外设产品&nbsp;&gt;&nbsp;游戏设备', '数码办公,外设产品,游戏设备', 425, 0),
(309, 256, 392, 426, '数码办公&nbsp;&gt;&nbsp;外设产品&nbsp;&gt;&nbsp;电视盒', '数码办公,外设产品,电视盒', 426, 0),
(310, 256, 392, 427, '数码办公&nbsp;&gt;&nbsp;外设产品&nbsp;&gt;&nbsp;手写板', '数码办公,外设产品,手写板', 427, 0),
(311, 256, 392, 428, '数码办公&nbsp;&gt;&nbsp;外设产品&nbsp;&gt;&nbsp;鼠标垫', '数码办公,外设产品,鼠标垫', 428, 0),
(312, 256, 392, 429, '数码办公&nbsp;&gt;&nbsp;外设产品&nbsp;&gt;&nbsp;插座', '数码办公,外设产品,插座', 429, 0),
(313, 256, 392, 430, '数码办公&nbsp;&gt;&nbsp;外设产品&nbsp;&gt;&nbsp;UPS电源', '数码办公,外设产品,UPS电源', 430, 0),
(314, 256, 392, 431, '数码办公&nbsp;&gt;&nbsp;外设产品&nbsp;&gt;&nbsp;线缆', '数码办公,外设产品,线缆', 431, 0),
(315, 256, 392, 432, '数码办公&nbsp;&gt;&nbsp;外设产品&nbsp;&gt;&nbsp;电脑工具', '数码办公,外设产品,电脑工具', 432, 0),
(316, 256, 392, 433, '数码办公&nbsp;&gt;&nbsp;外设产品&nbsp;&gt;&nbsp;电脑清洁', '数码办公,外设产品,电脑清洁', 433, 0),
(317, 256, 393, 434, '数码办公&nbsp;&gt;&nbsp;网络产品&nbsp;&gt;&nbsp;路由器', '数码办公,网络产品,路由器', 434, 0),
(318, 256, 393, 435, '数码办公&nbsp;&gt;&nbsp;网络产品&nbsp;&gt;&nbsp;网卡', '数码办公,网络产品,网卡', 435, 0),
(319, 256, 393, 436, '数码办公&nbsp;&gt;&nbsp;网络产品&nbsp;&gt;&nbsp;交换机', '数码办公,网络产品,交换机', 436, 0),
(320, 256, 393, 437, '数码办公&nbsp;&gt;&nbsp;网络产品&nbsp;&gt;&nbsp;网络存储', '数码办公,网络产品,网络存储', 437, 0),
(321, 256, 393, 438, '数码办公&nbsp;&gt;&nbsp;网络产品&nbsp;&gt;&nbsp;3G上网', '数码办公,网络产品,3G上网', 438, 0),
(322, 256, 393, 439, '数码办公&nbsp;&gt;&nbsp;网络产品&nbsp;&gt;&nbsp;网络盒子', '数码办公,网络产品,网络盒子', 439, 0),
(323, 256, 394, 440, '数码办公&nbsp;&gt;&nbsp;办公打印&nbsp;&gt;&nbsp;打印机', '数码办公,办公打印,打印机', 440, 0),
(324, 256, 394, 441, '数码办公&nbsp;&gt;&nbsp;办公打印&nbsp;&gt;&nbsp;一体机', '数码办公,办公打印,一体机', 441, 0),
(325, 256, 394, 442, '数码办公&nbsp;&gt;&nbsp;办公打印&nbsp;&gt;&nbsp;投影机', '数码办公,办公打印,投影机', 442, 0),
(326, 256, 394, 443, '数码办公&nbsp;&gt;&nbsp;办公打印&nbsp;&gt;&nbsp;投影配件', '数码办公,办公打印,投影配件', 443, 0),
(327, 256, 394, 444, '数码办公&nbsp;&gt;&nbsp;办公打印&nbsp;&gt;&nbsp;传真机', '数码办公,办公打印,传真机', 444, 0),
(328, 256, 394, 445, '数码办公&nbsp;&gt;&nbsp;办公打印&nbsp;&gt;&nbsp;复合机', '数码办公,办公打印,复合机', 445, 0),
(329, 256, 394, 446, '数码办公&nbsp;&gt;&nbsp;办公打印&nbsp;&gt;&nbsp;碎纸机', '数码办公,办公打印,碎纸机', 446, 0),
(330, 256, 394, 447, '数码办公&nbsp;&gt;&nbsp;办公打印&nbsp;&gt;&nbsp;扫描仪', '数码办公,办公打印,扫描仪', 447, 0),
(331, 256, 394, 448, '数码办公&nbsp;&gt;&nbsp;办公打印&nbsp;&gt;&nbsp;墨盒', '数码办公,办公打印,墨盒', 448, 0),
(332, 256, 394, 449, '数码办公&nbsp;&gt;&nbsp;办公打印&nbsp;&gt;&nbsp;硒鼓', '数码办公,办公打印,硒鼓', 449, 0),
(333, 256, 394, 450, '数码办公&nbsp;&gt;&nbsp;办公打印&nbsp;&gt;&nbsp;墨粉', '数码办公,办公打印,墨粉', 450, 0),
(334, 256, 394, 451, '数码办公&nbsp;&gt;&nbsp;办公打印&nbsp;&gt;&nbsp;色带', '数码办公,办公打印,色带', 451, 0),
(335, 256, 395, 452, '数码办公&nbsp;&gt;&nbsp;办公文仪&nbsp;&gt;&nbsp;办公文具', '数码办公,办公文仪,办公文具', 452, 0),
(336, 256, 395, 453, '数码办公&nbsp;&gt;&nbsp;办公文仪&nbsp;&gt;&nbsp;文件管理', '数码办公,办公文仪,文件管理', 453, 0),
(337, 256, 395, 454, '数码办公&nbsp;&gt;&nbsp;办公文仪&nbsp;&gt;&nbsp;笔类', '数码办公,办公文仪,笔类', 454, 0),
(338, 256, 395, 455, '数码办公&nbsp;&gt;&nbsp;办公文仪&nbsp;&gt;&nbsp;纸类', '数码办公,办公文仪,纸类', 455, 0),
(339, 256, 395, 456, '数码办公&nbsp;&gt;&nbsp;办公文仪&nbsp;&gt;&nbsp;本册/便签', '数码办公,办公文仪,本册/便签', 456, 0),
(340, 256, 395, 457, '数码办公&nbsp;&gt;&nbsp;办公文仪&nbsp;&gt;&nbsp;学生文具', '数码办公,办公文仪,学生文具', 457, 0),
(341, 256, 395, 458, '数码办公&nbsp;&gt;&nbsp;办公文仪&nbsp;&gt;&nbsp;财务用品', '数码办公,办公文仪,财务用品', 458, 0),
(342, 256, 395, 459, '数码办公&nbsp;&gt;&nbsp;办公文仪&nbsp;&gt;&nbsp;计算器', '数码办公,办公文仪,计算器', 459, 0),
(343, 256, 395, 460, '数码办公&nbsp;&gt;&nbsp;办公文仪&nbsp;&gt;&nbsp;激光笔', '数码办公,办公文仪,激光笔', 460, 0),
(344, 256, 395, 461, '数码办公&nbsp;&gt;&nbsp;办公文仪&nbsp;&gt;&nbsp;白板/封装', '数码办公,办公文仪,白板/封装', 461, 0),
(345, 256, 395, 462, '数码办公&nbsp;&gt;&nbsp;办公文仪&nbsp;&gt;&nbsp;考勤机', '数码办公,办公文仪,考勤机', 462, 0),
(346, 256, 395, 463, '数码办公&nbsp;&gt;&nbsp;办公文仪&nbsp;&gt;&nbsp;刻录碟片/附件', '数码办公,办公文仪,刻录碟片/附件', 463, 0),
(347, 256, 395, 464, '数码办公&nbsp;&gt;&nbsp;办公文仪&nbsp;&gt;&nbsp;点钞机', '数码办公,办公文仪,点钞机', 464, 0),
(348, 256, 395, 465, '数码办公&nbsp;&gt;&nbsp;办公文仪&nbsp;&gt;&nbsp;支付设备/POS机', '数码办公,办公文仪,支付设备/POS机', 465, 0),
(349, 256, 395, 466, '数码办公&nbsp;&gt;&nbsp;办公文仪&nbsp;&gt;&nbsp;安防监控', '数码办公,办公文仪,安防监控', 466, 0),
(350, 256, 395, 467, '数码办公&nbsp;&gt;&nbsp;办公文仪&nbsp;&gt;&nbsp;呼叫/会议设备', '数码办公,办公文仪,呼叫/会议设备', 467, 0),
(351, 256, 395, 468, '数码办公&nbsp;&gt;&nbsp;办公文仪&nbsp;&gt;&nbsp;保险柜', '数码办公,办公文仪,保险柜', 468, 0),
(352, 256, 395, 469, '数码办公&nbsp;&gt;&nbsp;办公文仪&nbsp;&gt;&nbsp;办公家具', '数码办公,办公文仪,办公家具', 469, 0),
(353, 308, 309, 314, '家用电器&nbsp;&gt;&nbsp;大家电&nbsp;&gt;&nbsp;平板电视', '家用电器,大家电,平板电视', 314, 0),
(354, 308, 309, 315, '家用电器&nbsp;&gt;&nbsp;大家电&nbsp;&gt;&nbsp;空调', '家用电器,大家电,空调', 315, 0),
(355, 308, 309, 316, '家用电器&nbsp;&gt;&nbsp;大家电&nbsp;&gt;&nbsp;冰箱', '家用电器,大家电,冰箱', 316, 0),
(356, 308, 309, 317, '家用电器&nbsp;&gt;&nbsp;大家电&nbsp;&gt;&nbsp;洗衣机', '家用电器,大家电,洗衣机', 317, 0),
(357, 308, 309, 318, '家用电器&nbsp;&gt;&nbsp;大家电&nbsp;&gt;&nbsp;家庭影院', '家用电器,大家电,家庭影院', 318, 0),
(358, 308, 309, 319, '家用电器&nbsp;&gt;&nbsp;大家电&nbsp;&gt;&nbsp;DVD播放机', '家用电器,大家电,DVD播放机', 319, 0),
(359, 308, 309, 320, '家用电器&nbsp;&gt;&nbsp;大家电&nbsp;&gt;&nbsp;迷你音响', '家用电器,大家电,迷你音响', 320, 0),
(360, 308, 309, 321, '家用电器&nbsp;&gt;&nbsp;大家电&nbsp;&gt;&nbsp;烟机/灶具', '家用电器,大家电,烟机/灶具', 321, 0),
(361, 308, 309, 322, '家用电器&nbsp;&gt;&nbsp;大家电&nbsp;&gt;&nbsp;热水器', '家用电器,大家电,热水器', 322, 0),
(362, 308, 309, 323, '家用电器&nbsp;&gt;&nbsp;大家电&nbsp;&gt;&nbsp;消毒柜/洗碗机', '家用电器,大家电,消毒柜/洗碗机', 323, 0),
(363, 308, 309, 324, '家用电器&nbsp;&gt;&nbsp;大家电&nbsp;&gt;&nbsp;酒柜/冰吧/冷柜', '家用电器,大家电,酒柜/冰吧/冷柜', 324, 0),
(364, 308, 309, 325, '家用电器&nbsp;&gt;&nbsp;大家电&nbsp;&gt;&nbsp;家电配件', '家用电器,大家电,家电配件', 325, 0),
(365, 308, 310, 326, '家用电器&nbsp;&gt;&nbsp;生活电器&nbsp;&gt;&nbsp;净化器', '家用电器,生活电器,净化器', 326, 0),
(366, 308, 310, 327, '家用电器&nbsp;&gt;&nbsp;生活电器&nbsp;&gt;&nbsp;电风扇', '家用电器,生活电器,电风扇', 327, 0),
(367, 308, 310, 328, '家用电器&nbsp;&gt;&nbsp;生活电器&nbsp;&gt;&nbsp;吸尘器', '家用电器,生活电器,吸尘器', 328, 0),
(368, 308, 310, 329, '家用电器&nbsp;&gt;&nbsp;生活电器&nbsp;&gt;&nbsp;加湿器', '家用电器,生活电器,加湿器', 329, 0),
(369, 308, 310, 330, '家用电器&nbsp;&gt;&nbsp;生活电器&nbsp;&gt;&nbsp;净水设备', '家用电器,生活电器,净水设备', 330, 0),
(370, 308, 310, 331, '家用电器&nbsp;&gt;&nbsp;生活电器&nbsp;&gt;&nbsp;饮水机', '家用电器,生活电器,饮水机', 331, 0),
(371, 308, 310, 332, '家用电器&nbsp;&gt;&nbsp;生活电器&nbsp;&gt;&nbsp;冷风扇', '家用电器,生活电器,冷风扇', 332, 0),
(372, 308, 310, 333, '家用电器&nbsp;&gt;&nbsp;生活电器&nbsp;&gt;&nbsp;挂烫机/熨斗', '家用电器,生活电器,挂烫机/熨斗', 333, 0),
(373, 308, 310, 334, '家用电器&nbsp;&gt;&nbsp;生活电器&nbsp;&gt;&nbsp;电话机', '家用电器,生活电器,电话机', 334, 0),
(374, 308, 310, 335, '家用电器&nbsp;&gt;&nbsp;生活电器&nbsp;&gt;&nbsp;插座', '家用电器,生活电器,插座', 335, 0),
(375, 308, 310, 336, '家用电器&nbsp;&gt;&nbsp;生活电器&nbsp;&gt;&nbsp;收录/音机', '家用电器,生活电器,收录/音机', 336, 0),
(376, 308, 310, 337, '家用电器&nbsp;&gt;&nbsp;生活电器&nbsp;&gt;&nbsp;除湿/干衣机', '家用电器,生活电器,除湿/干衣机', 337, 0),
(377, 308, 310, 338, '家用电器&nbsp;&gt;&nbsp;生活电器&nbsp;&gt;&nbsp;清洁机', '家用电器,生活电器,清洁机', 338, 0),
(378, 308, 310, 339, '家用电器&nbsp;&gt;&nbsp;生活电器&nbsp;&gt;&nbsp;取暖电器', '家用电器,生活电器,取暖电器', 339, 0),
(379, 308, 310, 340, '家用电器&nbsp;&gt;&nbsp;生活电器&nbsp;&gt;&nbsp;其它生活电器', '家用电器,生活电器,其它生活电器', 340, 0),
(380, 308, 311, 341, '家用电器&nbsp;&gt;&nbsp;厨房电器&nbsp;&gt;&nbsp;料理/榨汁机', '家用电器,厨房电器,料理/榨汁机', 341, 0),
(381, 308, 311, 342, '家用电器&nbsp;&gt;&nbsp;厨房电器&nbsp;&gt;&nbsp;豆浆机', '家用电器,厨房电器,豆浆机', 342, 0),
(382, 308, 311, 343, '家用电器&nbsp;&gt;&nbsp;厨房电器&nbsp;&gt;&nbsp;电饭煲', '家用电器,厨房电器,电饭煲', 343, 0),
(383, 308, 311, 344, '家用电器&nbsp;&gt;&nbsp;厨房电器&nbsp;&gt;&nbsp;电压力锅', '家用电器,厨房电器,电压力锅', 344, 0),
(384, 308, 311, 345, '家用电器&nbsp;&gt;&nbsp;厨房电器&nbsp;&gt;&nbsp;面包机', '家用电器,厨房电器,面包机', 345, 0),
(385, 308, 311, 346, '家用电器&nbsp;&gt;&nbsp;厨房电器&nbsp;&gt;&nbsp;咖啡机', '家用电器,厨房电器,咖啡机', 346, 0),
(386, 308, 311, 347, '家用电器&nbsp;&gt;&nbsp;厨房电器&nbsp;&gt;&nbsp;微波炉', '家用电器,厨房电器,微波炉', 347, 0),
(387, 308, 311, 348, '家用电器&nbsp;&gt;&nbsp;厨房电器&nbsp;&gt;&nbsp;电烤箱', '家用电器,厨房电器,电烤箱', 348, 0),
(388, 308, 311, 349, '家用电器&nbsp;&gt;&nbsp;厨房电器&nbsp;&gt;&nbsp;电磁炉', '家用电器,厨房电器,电磁炉', 349, 0),
(389, 308, 311, 350, '家用电器&nbsp;&gt;&nbsp;厨房电器&nbsp;&gt;&nbsp;电饼铛/烧烤盘', '家用电器,厨房电器,电饼铛/烧烤盘', 350, 0),
(390, 308, 311, 351, '家用电器&nbsp;&gt;&nbsp;厨房电器&nbsp;&gt;&nbsp;煮蛋器', '家用电器,厨房电器,煮蛋器', 351, 0),
(391, 308, 311, 352, '家用电器&nbsp;&gt;&nbsp;厨房电器&nbsp;&gt;&nbsp;酸奶机', '家用电器,厨房电器,酸奶机', 352, 0),
(392, 308, 311, 353, '家用电器&nbsp;&gt;&nbsp;厨房电器&nbsp;&gt;&nbsp;电炖锅', '家用电器,厨房电器,电炖锅', 353, 0),
(393, 308, 311, 354, '家用电器&nbsp;&gt;&nbsp;厨房电器&nbsp;&gt;&nbsp;电水壶/热水瓶', '家用电器,厨房电器,电水壶/热水瓶', 354, 0),
(394, 308, 311, 355, '家用电器&nbsp;&gt;&nbsp;厨房电器&nbsp;&gt;&nbsp;多用途锅', '家用电器,厨房电器,多用途锅', 355, 0),
(395, 308, 311, 356, '家用电器&nbsp;&gt;&nbsp;厨房电器&nbsp;&gt;&nbsp;果蔬解毒机', '家用电器,厨房电器,果蔬解毒机', 356, 0),
(396, 308, 311, 357, '家用电器&nbsp;&gt;&nbsp;厨房电器&nbsp;&gt;&nbsp;其它厨房电器', '家用电器,厨房电器,其它厨房电器', 357, 0),
(397, 308, 312, 358, '家用电器&nbsp;&gt;&nbsp;个护健康&nbsp;&gt;&nbsp;剃须刀', '家用电器,个护健康,剃须刀', 358, 0),
(398, 308, 312, 359, '家用电器&nbsp;&gt;&nbsp;个护健康&nbsp;&gt;&nbsp;剃/脱毛器', '家用电器,个护健康,剃/脱毛器', 359, 0),
(399, 308, 312, 360, '家用电器&nbsp;&gt;&nbsp;个护健康&nbsp;&gt;&nbsp;口腔护理', '家用电器,个护健康,口腔护理', 360, 0),
(400, 308, 312, 361, '家用电器&nbsp;&gt;&nbsp;个护健康&nbsp;&gt;&nbsp;电吹风', '家用电器,个护健康,电吹风', 361, 0),
(401, 308, 312, 362, '家用电器&nbsp;&gt;&nbsp;个护健康&nbsp;&gt;&nbsp;美容器', '家用电器,个护健康,美容器', 362, 0),
(402, 308, 312, 363, '家用电器&nbsp;&gt;&nbsp;个护健康&nbsp;&gt;&nbsp;美发器', '家用电器,个护健康,美发器', 363, 0),
(403, 308, 312, 364, '家用电器&nbsp;&gt;&nbsp;个护健康&nbsp;&gt;&nbsp;按摩椅', '家用电器,个护健康,按摩椅', 364, 0),
(404, 308, 312, 365, '家用电器&nbsp;&gt;&nbsp;个护健康&nbsp;&gt;&nbsp;按摩器', '家用电器,个护健康,按摩器', 365, 0),
(405, 308, 312, 366, '家用电器&nbsp;&gt;&nbsp;个护健康&nbsp;&gt;&nbsp;足浴盆', '家用电器,个护健康,足浴盆', 366, 0),
(406, 308, 312, 367, '家用电器&nbsp;&gt;&nbsp;个护健康&nbsp;&gt;&nbsp;血压计', '家用电器,个护健康,血压计', 367, 0),
(407, 308, 312, 368, '家用电器&nbsp;&gt;&nbsp;个护健康&nbsp;&gt;&nbsp;健康秤/厨房秤', '家用电器,个护健康,健康秤/厨房秤', 368, 0),
(408, 308, 312, 369, '家用电器&nbsp;&gt;&nbsp;个护健康&nbsp;&gt;&nbsp;血糖仪', '家用电器,个护健康,血糖仪', 369, 0),
(409, 308, 312, 370, '家用电器&nbsp;&gt;&nbsp;个护健康&nbsp;&gt;&nbsp;体温计', '家用电器,个护健康,体温计', 370, 0),
(410, 308, 312, 371, '家用电器&nbsp;&gt;&nbsp;个护健康&nbsp;&gt;&nbsp;计步器/脂肪检测仪', '家用电器,个护健康,计步器/脂肪检测仪', 371, 0),
(411, 308, 312, 372, '家用电器&nbsp;&gt;&nbsp;个护健康&nbsp;&gt;&nbsp;其它健康电器', '家用电器,个护健康,其它健康电器', 372, 0),
(412, 308, 313, 373, '家用电器&nbsp;&gt;&nbsp;五金家装&nbsp;&gt;&nbsp;电动工具', '家用电器,五金家装,电动工具', 373, 0),
(413, 308, 313, 374, '家用电器&nbsp;&gt;&nbsp;五金家装&nbsp;&gt;&nbsp;手动工具', '家用电器,五金家装,手动工具', 374, 0),
(414, 308, 313, 375, '家用电器&nbsp;&gt;&nbsp;五金家装&nbsp;&gt;&nbsp;仪器仪表', '家用电器,五金家装,仪器仪表', 375, 0),
(415, 308, 313, 376, '家用电器&nbsp;&gt;&nbsp;五金家装&nbsp;&gt;&nbsp;浴霸/排气扇', '家用电器,五金家装,浴霸/排气扇', 376, 0),
(416, 308, 313, 377, '家用电器&nbsp;&gt;&nbsp;五金家装&nbsp;&gt;&nbsp;灯具', '家用电器,五金家装,灯具', 377, 0),
(417, 308, 313, 378, '家用电器&nbsp;&gt;&nbsp;五金家装&nbsp;&gt;&nbsp;LED灯', '家用电器,五金家装,LED灯', 378, 0),
(418, 308, 313, 379, '家用电器&nbsp;&gt;&nbsp;五金家装&nbsp;&gt;&nbsp;洁身器', '家用电器,五金家装,洁身器', 379, 0),
(419, 308, 313, 380, '家用电器&nbsp;&gt;&nbsp;五金家装&nbsp;&gt;&nbsp;水槽', '家用电器,五金家装,水槽', 380, 0),
(420, 308, 313, 381, '家用电器&nbsp;&gt;&nbsp;五金家装&nbsp;&gt;&nbsp;龙头', '家用电器,五金家装,龙头', 381, 0),
(421, 308, 313, 382, '家用电器&nbsp;&gt;&nbsp;五金家装&nbsp;&gt;&nbsp;淋浴花洒', '家用电器,五金家装,淋浴花洒', 382, 0),
(422, 308, 313, 383, '家用电器&nbsp;&gt;&nbsp;五金家装&nbsp;&gt;&nbsp;厨卫五金', '家用电器,五金家装,厨卫五金', 383, 0),
(423, 308, 313, 384, '家用电器&nbsp;&gt;&nbsp;五金家装&nbsp;&gt;&nbsp;家具五金', '家用电器,五金家装,家具五金', 384, 0),
(424, 308, 313, 385, '家用电器&nbsp;&gt;&nbsp;五金家装&nbsp;&gt;&nbsp;门铃', '家用电器,五金家装,门铃', 385, 0),
(425, 308, 313, 386, '家用电器&nbsp;&gt;&nbsp;五金家装&nbsp;&gt;&nbsp;电气开关', '家用电器,五金家装,电气开关', 386, 0),
(426, 308, 313, 387, '家用电器&nbsp;&gt;&nbsp;五金家装&nbsp;&gt;&nbsp;插座', '家用电器,五金家装,插座', 387, 0),
(427, 308, 313, 388, '家用电器&nbsp;&gt;&nbsp;五金家装&nbsp;&gt;&nbsp;电工电料', '家用电器,五金家装,电工电料', 388, 0),
(428, 308, 313, 389, '家用电器&nbsp;&gt;&nbsp;五金家装&nbsp;&gt;&nbsp;监控安防', '家用电器,五金家装,监控安防', 389, 0),
(429, 470, 471, 478, '个护化妆&nbsp;&gt;&nbsp;面部护理&nbsp;&gt;&nbsp;洁面乳', '个护化妆,面部护理,洁面乳', 478, 0),
(430, 470, 471, 479, '个护化妆&nbsp;&gt;&nbsp;面部护理&nbsp;&gt;&nbsp;爽肤水', '个护化妆,面部护理,爽肤水', 479, 0),
(431, 470, 471, 480, '个护化妆&nbsp;&gt;&nbsp;面部护理&nbsp;&gt;&nbsp;精华露', '个护化妆,面部护理,精华露', 480, 0),
(432, 470, 471, 481, '个护化妆&nbsp;&gt;&nbsp;面部护理&nbsp;&gt;&nbsp;乳液面霜', '个护化妆,面部护理,乳液面霜', 481, 0),
(433, 470, 471, 482, '个护化妆&nbsp;&gt;&nbsp;面部护理&nbsp;&gt;&nbsp;面膜面贴', '个护化妆,面部护理,面膜面贴', 482, 0),
(434, 470, 471, 483, '个护化妆&nbsp;&gt;&nbsp;面部护理&nbsp;&gt;&nbsp;眼部护理', '个护化妆,面部护理,眼部护理', 483, 0),
(435, 470, 471, 484, '个护化妆&nbsp;&gt;&nbsp;面部护理&nbsp;&gt;&nbsp;颈部护理', '个护化妆,面部护理,颈部护理', 484, 0),
(436, 470, 471, 485, '个护化妆&nbsp;&gt;&nbsp;面部护理&nbsp;&gt;&nbsp;T区护理', '个护化妆,面部护理,T区护理', 485, 0),
(437, 470, 471, 486, '个护化妆&nbsp;&gt;&nbsp;面部护理&nbsp;&gt;&nbsp;护肤套装', '个护化妆,面部护理,护肤套装', 486, 0),
(438, 470, 471, 487, '个护化妆&nbsp;&gt;&nbsp;面部护理&nbsp;&gt;&nbsp;防晒隔离', '个护化妆,面部护理,防晒隔离', 487, 0),
(439, 470, 472, 488, '个护化妆&nbsp;&gt;&nbsp;身体护理&nbsp;&gt;&nbsp;洗发护发', '个护化妆,身体护理,洗发护发', 488, 0),
(440, 470, 472, 489, '个护化妆&nbsp;&gt;&nbsp;身体护理&nbsp;&gt;&nbsp;染发/造型', '个护化妆,身体护理,染发/造型', 489, 0),
(441, 470, 472, 490, '个护化妆&nbsp;&gt;&nbsp;身体护理&nbsp;&gt;&nbsp;沐浴', '个护化妆,身体护理,沐浴', 490, 0),
(442, 470, 472, 491, '个护化妆&nbsp;&gt;&nbsp;身体护理&nbsp;&gt;&nbsp;磨砂/浴盐', '个护化妆,身体护理,磨砂/浴盐', 491, 0),
(443, 470, 472, 492, '个护化妆&nbsp;&gt;&nbsp;身体护理&nbsp;&gt;&nbsp;身体乳', '个护化妆,身体护理,身体乳', 492, 0),
(444, 470, 472, 493, '个护化妆&nbsp;&gt;&nbsp;身体护理&nbsp;&gt;&nbsp;手工/香皂', '个护化妆,身体护理,手工/香皂', 493, 0),
(445, 470, 472, 494, '个护化妆&nbsp;&gt;&nbsp;身体护理&nbsp;&gt;&nbsp;香薰精油', '个护化妆,身体护理,香薰精油', 494, 0),
(446, 470, 472, 495, '个护化妆&nbsp;&gt;&nbsp;身体护理&nbsp;&gt;&nbsp;纤体瘦身', '个护化妆,身体护理,纤体瘦身', 495, 0),
(447, 470, 472, 496, '个护化妆&nbsp;&gt;&nbsp;身体护理&nbsp;&gt;&nbsp;脱毛膏', '个护化妆,身体护理,脱毛膏', 496, 0),
(448, 470, 472, 497, '个护化妆&nbsp;&gt;&nbsp;身体护理&nbsp;&gt;&nbsp;手足护理', '个护化妆,身体护理,手足护理', 497, 0),
(449, 470, 472, 498, '个护化妆&nbsp;&gt;&nbsp;身体护理&nbsp;&gt;&nbsp;洗护套装', '个护化妆,身体护理,洗护套装', 498, 0),
(450, 470, 473, 499, '个护化妆&nbsp;&gt;&nbsp;口腔护理&nbsp;&gt;&nbsp;牙膏/牙粉', '个护化妆,口腔护理,牙膏/牙粉', 499, 0),
(451, 470, 473, 500, '个护化妆&nbsp;&gt;&nbsp;口腔护理&nbsp;&gt;&nbsp;牙刷/牙线', '个护化妆,口腔护理,牙刷/牙线', 500, 0),
(452, 470, 473, 501, '个护化妆&nbsp;&gt;&nbsp;口腔护理&nbsp;&gt;&nbsp;漱口水', '个护化妆,口腔护理,漱口水', 501, 0),
(453, 470, 474, 502, '个护化妆&nbsp;&gt;&nbsp;女性护理&nbsp;&gt;&nbsp;卫生巾', '个护化妆,女性护理,卫生巾', 502, 0),
(454, 470, 474, 503, '个护化妆&nbsp;&gt;&nbsp;女性护理&nbsp;&gt;&nbsp;卫生护垫', '个护化妆,女性护理,卫生护垫', 503, 0),
(455, 470, 474, 504, '个护化妆&nbsp;&gt;&nbsp;女性护理&nbsp;&gt;&nbsp;洗液', '个护化妆,女性护理,洗液', 504, 0),
(456, 470, 474, 505, '个护化妆&nbsp;&gt;&nbsp;女性护理&nbsp;&gt;&nbsp;美容食品', '个护化妆,女性护理,美容食品', 505, 0),
(457, 470, 474, 506, '个护化妆&nbsp;&gt;&nbsp;女性护理&nbsp;&gt;&nbsp;其他', '个护化妆,女性护理,其他', 506, 0),
(458, 470, 475, 507, '个护化妆&nbsp;&gt;&nbsp;男士护理&nbsp;&gt;&nbsp;脸部护理', '个护化妆,男士护理,脸部护理', 507, 0),
(459, 470, 475, 508, '个护化妆&nbsp;&gt;&nbsp;男士护理&nbsp;&gt;&nbsp;眼部护理', '个护化妆,男士护理,眼部护理', 508, 0),
(460, 470, 475, 509, '个护化妆&nbsp;&gt;&nbsp;男士护理&nbsp;&gt;&nbsp;身体护理', '个护化妆,男士护理,身体护理', 509, 0),
(461, 470, 475, 510, '个护化妆&nbsp;&gt;&nbsp;男士护理&nbsp;&gt;&nbsp;男士香水', '个护化妆,男士护理,男士香水', 510, 0),
(462, 470, 475, 511, '个护化妆&nbsp;&gt;&nbsp;男士护理&nbsp;&gt;&nbsp;剃须护理', '个护化妆,男士护理,剃须护理', 511, 0),
(463, 470, 475, 512, '个护化妆&nbsp;&gt;&nbsp;男士护理&nbsp;&gt;&nbsp;防脱洗护', '个护化妆,男士护理,防脱洗护', 512, 0),
(464, 470, 475, 513, '个护化妆&nbsp;&gt;&nbsp;男士护理&nbsp;&gt;&nbsp;男士唇膏', '个护化妆,男士护理,男士唇膏', 513, 0),
(465, 470, 476, 514, '个护化妆&nbsp;&gt;&nbsp;魅力彩妆&nbsp;&gt;&nbsp;粉底/遮瑕', '个护化妆,魅力彩妆,粉底/遮瑕', 514, 0),
(466, 470, 476, 515, '个护化妆&nbsp;&gt;&nbsp;魅力彩妆&nbsp;&gt;&nbsp;腮红', '个护化妆,魅力彩妆,腮红', 515, 0),
(467, 470, 476, 516, '个护化妆&nbsp;&gt;&nbsp;魅力彩妆&nbsp;&gt;&nbsp;眼影/眼线', '个护化妆,魅力彩妆,眼影/眼线', 516, 0),
(468, 470, 476, 517, '个护化妆&nbsp;&gt;&nbsp;魅力彩妆&nbsp;&gt;&nbsp;眉笔', '个护化妆,魅力彩妆,眉笔', 517, 0),
(469, 470, 476, 518, '个护化妆&nbsp;&gt;&nbsp;魅力彩妆&nbsp;&gt;&nbsp;睫毛膏', '个护化妆,魅力彩妆,睫毛膏', 518, 0),
(470, 470, 476, 519, '个护化妆&nbsp;&gt;&nbsp;魅力彩妆&nbsp;&gt;&nbsp;唇膏唇彩', '个护化妆,魅力彩妆,唇膏唇彩', 519, 0),
(471, 470, 476, 520, '个护化妆&nbsp;&gt;&nbsp;魅力彩妆&nbsp;&gt;&nbsp;彩妆组合', '个护化妆,魅力彩妆,彩妆组合', 520, 0),
(472, 470, 476, 521, '个护化妆&nbsp;&gt;&nbsp;魅力彩妆&nbsp;&gt;&nbsp;卸妆', '个护化妆,魅力彩妆,卸妆', 521, 0),
(473, 470, 476, 522, '个护化妆&nbsp;&gt;&nbsp;魅力彩妆&nbsp;&gt;&nbsp;美甲', '个护化妆,魅力彩妆,美甲', 522, 0),
(474, 470, 476, 523, '个护化妆&nbsp;&gt;&nbsp;魅力彩妆&nbsp;&gt;&nbsp;彩妆工具', '个护化妆,魅力彩妆,彩妆工具', 523, 0),
(475, 470, 476, 524, '个护化妆&nbsp;&gt;&nbsp;魅力彩妆&nbsp;&gt;&nbsp;假发', '个护化妆,魅力彩妆,假发', 524, 0),
(476, 470, 477, 525, '个护化妆&nbsp;&gt;&nbsp;香水SPA&nbsp;&gt;&nbsp;女士香水', '个护化妆,香水SPA,女士香水', 525, 0),
(477, 470, 477, 526, '个护化妆&nbsp;&gt;&nbsp;香水SPA&nbsp;&gt;&nbsp;男士香水', '个护化妆,香水SPA,男士香水', 526, 0),
(478, 470, 477, 527, '个护化妆&nbsp;&gt;&nbsp;香水SPA&nbsp;&gt;&nbsp;组合套装', '个护化妆,香水SPA,组合套装', 527, 0),
(479, 470, 477, 528, '个护化妆&nbsp;&gt;&nbsp;香水SPA&nbsp;&gt;&nbsp;迷你香水', '个护化妆,香水SPA,迷你香水', 528, 0),
(480, 470, 477, 529, '个护化妆&nbsp;&gt;&nbsp;香水SPA&nbsp;&gt;&nbsp;香体走珠', '个护化妆,香水SPA,香体走珠', 529, 0),
(481, 662, 663, 671, '运动健康&nbsp;&gt;&nbsp;户外鞋服&nbsp;&gt;&nbsp;户外服装', '运动健康,户外鞋服,户外服装', 671, 0),
(482, 662, 663, 672, '运动健康&nbsp;&gt;&nbsp;户外鞋服&nbsp;&gt;&nbsp;户外鞋袜', '运动健康,户外鞋服,户外鞋袜', 672, 0),
(483, 662, 663, 673, '运动健康&nbsp;&gt;&nbsp;户外鞋服&nbsp;&gt;&nbsp;户外配饰', '运动健康,户外鞋服,户外配饰', 673, 0),
(484, 662, 664, 674, '运动健康&nbsp;&gt;&nbsp;户外装备&nbsp;&gt;&nbsp;帐篷', '运动健康,户外装备,帐篷', 674, 0),
(485, 662, 664, 675, '运动健康&nbsp;&gt;&nbsp;户外装备&nbsp;&gt;&nbsp;睡袋', '运动健康,户外装备,睡袋', 675, 0),
(486, 662, 664, 676, '运动健康&nbsp;&gt;&nbsp;户外装备&nbsp;&gt;&nbsp;登山攀岩', '运动健康,户外装备,登山攀岩', 676, 0),
(487, 662, 664, 677, '运动健康&nbsp;&gt;&nbsp;户外装备&nbsp;&gt;&nbsp;户外背包', '运动健康,户外装备,户外背包', 677, 0),
(488, 662, 664, 678, '运动健康&nbsp;&gt;&nbsp;户外装备&nbsp;&gt;&nbsp;户外照明', '运动健康,户外装备,户外照明', 678, 0),
(489, 662, 664, 679, '运动健康&nbsp;&gt;&nbsp;户外装备&nbsp;&gt;&nbsp;户外垫子', '运动健康,户外装备,户外垫子', 679, 0),
(490, 662, 664, 680, '运动健康&nbsp;&gt;&nbsp;户外装备&nbsp;&gt;&nbsp;户外仪表', '运动健康,户外装备,户外仪表', 680, 0),
(491, 662, 664, 681, '运动健康&nbsp;&gt;&nbsp;户外装备&nbsp;&gt;&nbsp;户外工具', '运动健康,户外装备,户外工具', 681, 0),
(492, 662, 664, 682, '运动健康&nbsp;&gt;&nbsp;户外装备&nbsp;&gt;&nbsp;望远镜', '运动健康,户外装备,望远镜', 682, 0),
(493, 662, 664, 683, '运动健康&nbsp;&gt;&nbsp;户外装备&nbsp;&gt;&nbsp;垂钓用品', '运动健康,户外装备,垂钓用品', 683, 0),
(494, 662, 664, 684, '运动健康&nbsp;&gt;&nbsp;户外装备&nbsp;&gt;&nbsp;旅游用品', '运动健康,户外装备,旅游用品', 684, 0),
(495, 662, 664, 685, '运动健康&nbsp;&gt;&nbsp;户外装备&nbsp;&gt;&nbsp;便携桌椅床', '运动健康,户外装备,便携桌椅床', 685, 0),
(496, 662, 664, 686, '运动健康&nbsp;&gt;&nbsp;户外装备&nbsp;&gt;&nbsp;烧烤用品', '运动健康,户外装备,烧烤用品', 686, 0),
(497, 662, 664, 687, '运动健康&nbsp;&gt;&nbsp;户外装备&nbsp;&gt;&nbsp;野餐炊具', '运动健康,户外装备,野餐炊具', 687, 0),
(498, 662, 664, 688, '运动健康&nbsp;&gt;&nbsp;户外装备&nbsp;&gt;&nbsp;军迷用品', '运动健康,户外装备,军迷用品', 688, 0),
(499, 662, 664, 689, '运动健康&nbsp;&gt;&nbsp;户外装备&nbsp;&gt;&nbsp;游泳用具', '运动健康,户外装备,游泳用具', 689, 0),
(500, 662, 664, 690, '运动健康&nbsp;&gt;&nbsp;户外装备&nbsp;&gt;&nbsp;泳衣', '运动健康,户外装备,泳衣', 690, 0),
(501, 662, 665, 691, '运动健康&nbsp;&gt;&nbsp;运动器械&nbsp;&gt;&nbsp;健身器械', '运动健康,运动器械,健身器械', 691, 40),
(502, 662, 665, 692, '运动健康&nbsp;&gt;&nbsp;运动器械&nbsp;&gt;&nbsp;运动器材', '运动健康,运动器械,运动器材', 692, 43),
(503, 662, 665, 693, '运动健康&nbsp;&gt;&nbsp;运动器械&nbsp;&gt;&nbsp;极限轮滑', '运动健康,运动器械,极限轮滑', 693, 0),
(504, 662, 665, 694, '运动健康&nbsp;&gt;&nbsp;运动器械&nbsp;&gt;&nbsp;骑行运动', '运动健康,运动器械,骑行运动', 694, 0),
(505, 662, 665, 695, '运动健康&nbsp;&gt;&nbsp;运动器械&nbsp;&gt;&nbsp;运动护具', '运动健康,运动器械,运动护具', 695, 0),
(506, 662, 665, 696, '运动健康&nbsp;&gt;&nbsp;运动器械&nbsp;&gt;&nbsp;武术搏击', '运动健康,运动器械,武术搏击', 696, 0),
(507, 662, 666, 697, '运动健康&nbsp;&gt;&nbsp;纤体瑜伽&nbsp;&gt;&nbsp;瑜伽垫', '运动健康,纤体瑜伽,瑜伽垫', 697, 0),
(508, 662, 666, 698, '运动健康&nbsp;&gt;&nbsp;纤体瑜伽&nbsp;&gt;&nbsp;瑜伽服', '运动健康,纤体瑜伽,瑜伽服', 698, 0),
(509, 662, 666, 699, '运动健康&nbsp;&gt;&nbsp;纤体瑜伽&nbsp;&gt;&nbsp;瑜伽配件', '运动健康,纤体瑜伽,瑜伽配件', 699, 0),
(510, 662, 666, 700, '运动健康&nbsp;&gt;&nbsp;纤体瑜伽&nbsp;&gt;&nbsp;瑜伽套装', '运动健康,纤体瑜伽,瑜伽套装', 700, 0),
(511, 662, 666, 701, '运动健康&nbsp;&gt;&nbsp;纤体瑜伽&nbsp;&gt;&nbsp;舞蹈鞋服', '运动健康,纤体瑜伽,舞蹈鞋服', 701, 0),
(512, 662, 667, 702, '运动健康&nbsp;&gt;&nbsp;体育娱乐&nbsp;&gt;&nbsp;羽毛球', '运动健康,体育娱乐,羽毛球', 702, 0),
(513, 662, 667, 703, '运动健康&nbsp;&gt;&nbsp;体育娱乐&nbsp;&gt;&nbsp;乒乓球', '运动健康,体育娱乐,乒乓球', 703, 0),
(514, 662, 667, 704, '运动健康&nbsp;&gt;&nbsp;体育娱乐&nbsp;&gt;&nbsp;篮球', '运动健康,体育娱乐,篮球', 704, 45),
(515, 662, 667, 705, '运动健康&nbsp;&gt;&nbsp;体育娱乐&nbsp;&gt;&nbsp;足球', '运动健康,体育娱乐,足球', 705, 0),
(516, 662, 667, 706, '运动健康&nbsp;&gt;&nbsp;体育娱乐&nbsp;&gt;&nbsp;网球', '运动健康,体育娱乐,网球', 706, 0),
(517, 662, 667, 707, '运动健康&nbsp;&gt;&nbsp;体育娱乐&nbsp;&gt;&nbsp;排球', '运动健康,体育娱乐,排球', 707, 0),
(518, 662, 667, 708, '运动健康&nbsp;&gt;&nbsp;体育娱乐&nbsp;&gt;&nbsp;高尔夫球', '运动健康,体育娱乐,高尔夫球', 708, 0),
(519, 662, 667, 709, '运动健康&nbsp;&gt;&nbsp;体育娱乐&nbsp;&gt;&nbsp;棋牌麻将', '运动健康,体育娱乐,棋牌麻将', 709, 0),
(520, 662, 667, 710, '运动健康&nbsp;&gt;&nbsp;体育娱乐&nbsp;&gt;&nbsp;其他', '运动健康,体育娱乐,其他', 710, 0),
(521, 662, 668, 711, '运动健康&nbsp;&gt;&nbsp;成人用品&nbsp;&gt;&nbsp;安全避孕', '运动健康,成人用品,安全避孕', 711, 0),
(522, 662, 668, 712, '运动健康&nbsp;&gt;&nbsp;成人用品&nbsp;&gt;&nbsp;验孕测孕', '运动健康,成人用品,验孕测孕', 712, 0),
(523, 662, 668, 713, '运动健康&nbsp;&gt;&nbsp;成人用品&nbsp;&gt;&nbsp;人体润滑', '运动健康,成人用品,人体润滑', 713, 0),
(524, 662, 668, 714, '运动健康&nbsp;&gt;&nbsp;成人用品&nbsp;&gt;&nbsp;情爱玩具', '运动健康,成人用品,情爱玩具', 714, 0),
(525, 662, 668, 715, '运动健康&nbsp;&gt;&nbsp;成人用品&nbsp;&gt;&nbsp;情趣内衣', '运动健康,成人用品,情趣内衣', 715, 0),
(526, 662, 668, 716, '运动健康&nbsp;&gt;&nbsp;成人用品&nbsp;&gt;&nbsp;组合套装', '运动健康,成人用品,组合套装', 716, 0),
(527, 662, 669, 717, '运动健康&nbsp;&gt;&nbsp;保健器械&nbsp;&gt;&nbsp;养生器械', '运动健康,保健器械,养生器械', 717, 0),
(528, 662, 669, 718, '运动健康&nbsp;&gt;&nbsp;保健器械&nbsp;&gt;&nbsp;保健用品', '运动健康,保健器械,保健用品', 718, 0),
(529, 662, 669, 719, '运动健康&nbsp;&gt;&nbsp;保健器械&nbsp;&gt;&nbsp;康复辅助', '运动健康,保健器械,康复辅助', 719, 0),
(530, 662, 669, 720, '运动健康&nbsp;&gt;&nbsp;保健器械&nbsp;&gt;&nbsp;家庭护理', '运动健康,保健器械,家庭护理', 720, 0),
(531, 662, 670, 721, '运动健康&nbsp;&gt;&nbsp;急救卫生&nbsp;&gt;&nbsp;跌打损伤', '运动健康,急救卫生,跌打损伤', 721, 0),
(532, 662, 670, 722, '运动健康&nbsp;&gt;&nbsp;急救卫生&nbsp;&gt;&nbsp;烫伤止痒', '运动健康,急救卫生,烫伤止痒', 722, 0),
(533, 662, 670, 723, '运动健康&nbsp;&gt;&nbsp;急救卫生&nbsp;&gt;&nbsp;防裂抗冻', '运动健康,急救卫生,防裂抗冻', 723, 0),
(534, 662, 670, 724, '运动健康&nbsp;&gt;&nbsp;急救卫生&nbsp;&gt;&nbsp;口腔咽部', '运动健康,急救卫生,口腔咽部', 724, 0),
(535, 662, 670, 725, '运动健康&nbsp;&gt;&nbsp;急救卫生&nbsp;&gt;&nbsp;眼部保健', '运动健康,急救卫生,眼部保健', 725, 0),
(536, 662, 670, 726, '运动健康&nbsp;&gt;&nbsp;急救卫生&nbsp;&gt;&nbsp;鼻炎健康', '运动健康,急救卫生,鼻炎健康', 726, 0),
(537, 662, 670, 727, '运动健康&nbsp;&gt;&nbsp;急救卫生&nbsp;&gt;&nbsp;风湿骨痛', '运动健康,急救卫生,风湿骨痛', 727, 0),
(538, 662, 670, 728, '运动健康&nbsp;&gt;&nbsp;急救卫生&nbsp;&gt;&nbsp;生殖泌尿', '运动健康,急救卫生,生殖泌尿', 728, 0),
(539, 662, 670, 729, '运动健康&nbsp;&gt;&nbsp;急救卫生&nbsp;&gt;&nbsp;美体塑身', '运动健康,急救卫生,美体塑身', 729, 0),
(540, 593, 594, 604, '食品饮料&nbsp;&gt;&nbsp;进口食品&nbsp;&gt;&nbsp;饼干蛋糕', '食品饮料,进口食品,饼干蛋糕', 604, 0),
(541, 593, 594, 605, '食品饮料&nbsp;&gt;&nbsp;进口食品&nbsp;&gt;&nbsp;糖果巧克力', '食品饮料,进口食品,糖果巧克力', 605, 0),
(542, 593, 594, 606, '食品饮料&nbsp;&gt;&nbsp;进口食品&nbsp;&gt;&nbsp;休闲零食', '食品饮料,进口食品,休闲零食', 606, 0),
(543, 593, 594, 607, '食品饮料&nbsp;&gt;&nbsp;进口食品&nbsp;&gt;&nbsp;冲调饮品', '食品饮料,进口食品,冲调饮品', 607, 0),
(544, 593, 594, 608, '食品饮料&nbsp;&gt;&nbsp;进口食品&nbsp;&gt;&nbsp;粮油调味', '食品饮料,进口食品,粮油调味', 608, 0),
(545, 593, 595, 609, '食品饮料&nbsp;&gt;&nbsp;地方特产&nbsp;&gt;&nbsp;华北', '食品饮料,地方特产,华北', 609, 0),
(546, 593, 595, 610, '食品饮料&nbsp;&gt;&nbsp;地方特产&nbsp;&gt;&nbsp;西北', '食品饮料,地方特产,西北', 610, 0),
(547, 593, 595, 611, '食品饮料&nbsp;&gt;&nbsp;地方特产&nbsp;&gt;&nbsp;西南', '食品饮料,地方特产,西南', 611, 0),
(548, 593, 595, 612, '食品饮料&nbsp;&gt;&nbsp;地方特产&nbsp;&gt;&nbsp;东北', '食品饮料,地方特产,东北', 612, 0),
(549, 593, 595, 613, '食品饮料&nbsp;&gt;&nbsp;地方特产&nbsp;&gt;&nbsp;华南', '食品饮料,地方特产,华南', 613, 0),
(550, 593, 595, 614, '食品饮料&nbsp;&gt;&nbsp;地方特产&nbsp;&gt;&nbsp;华东', '食品饮料,地方特产,华东', 614, 0),
(551, 593, 595, 615, '食品饮料&nbsp;&gt;&nbsp;地方特产&nbsp;&gt;&nbsp;华中', '食品饮料,地方特产,华中', 615, 0);
INSERT INTO `yunpay_goods_class_tag` (`gc_tag_id`, `gc_id_1`, `gc_id_2`, `gc_id_3`, `gc_tag_name`, `gc_tag_value`, `gc_id`, `type_id`) VALUES
(552, 593, 596, 616, '食品饮料&nbsp;&gt;&nbsp;休闲食品&nbsp;&gt;&nbsp;休闲零食', '食品饮料,休闲食品,休闲零食', 616, 0),
(553, 593, 596, 617, '食品饮料&nbsp;&gt;&nbsp;休闲食品&nbsp;&gt;&nbsp;坚果炒货', '食品饮料,休闲食品,坚果炒货', 617, 0),
(554, 593, 596, 618, '食品饮料&nbsp;&gt;&nbsp;休闲食品&nbsp;&gt;&nbsp;肉干肉松', '食品饮料,休闲食品,肉干肉松', 618, 0),
(555, 593, 596, 619, '食品饮料&nbsp;&gt;&nbsp;休闲食品&nbsp;&gt;&nbsp;蜜饯果脯', '食品饮料,休闲食品,蜜饯果脯', 619, 0),
(556, 593, 596, 620, '食品饮料&nbsp;&gt;&nbsp;休闲食品&nbsp;&gt;&nbsp;糖果/巧克力', '食品饮料,休闲食品,糖果/巧克力', 620, 0),
(557, 593, 596, 621, '食品饮料&nbsp;&gt;&nbsp;休闲食品&nbsp;&gt;&nbsp;饼干蛋糕', '食品饮料,休闲食品,饼干蛋糕', 621, 0),
(558, 593, 597, 622, '食品饮料&nbsp;&gt;&nbsp;粮油调味&nbsp;&gt;&nbsp;米面杂粮', '食品饮料,粮油调味,米面杂粮', 622, 0),
(559, 593, 597, 623, '食品饮料&nbsp;&gt;&nbsp;粮油调味&nbsp;&gt;&nbsp;食用油', '食品饮料,粮油调味,食用油', 623, 0),
(560, 593, 597, 624, '食品饮料&nbsp;&gt;&nbsp;粮油调味&nbsp;&gt;&nbsp;调味品', '食品饮料,粮油调味,调味品', 624, 0),
(561, 593, 597, 625, '食品饮料&nbsp;&gt;&nbsp;粮油调味&nbsp;&gt;&nbsp;南北干货', '食品饮料,粮油调味,南北干货', 625, 0),
(562, 593, 597, 626, '食品饮料&nbsp;&gt;&nbsp;粮油调味&nbsp;&gt;&nbsp;方便食品', '食品饮料,粮油调味,方便食品', 626, 0),
(563, 593, 597, 627, '食品饮料&nbsp;&gt;&nbsp;粮油调味&nbsp;&gt;&nbsp;有机食品', '食品饮料,粮油调味,有机食品', 627, 0),
(564, 593, 598, 628, '食品饮料&nbsp;&gt;&nbsp;中外名酒&nbsp;&gt;&nbsp;白酒', '食品饮料,中外名酒,白酒', 628, 0),
(565, 593, 598, 629, '食品饮料&nbsp;&gt;&nbsp;中外名酒&nbsp;&gt;&nbsp;洋酒', '食品饮料,中外名酒,洋酒', 629, 0),
(566, 593, 598, 630, '食品饮料&nbsp;&gt;&nbsp;中外名酒&nbsp;&gt;&nbsp;葡萄酒', '食品饮料,中外名酒,葡萄酒', 630, 0),
(567, 593, 598, 631, '食品饮料&nbsp;&gt;&nbsp;中外名酒&nbsp;&gt;&nbsp;啤酒', '食品饮料,中外名酒,啤酒', 631, 0),
(568, 593, 598, 632, '食品饮料&nbsp;&gt;&nbsp;中外名酒&nbsp;&gt;&nbsp;黄酒', '食品饮料,中外名酒,黄酒', 632, 0),
(569, 593, 599, 633, '食品饮料&nbsp;&gt;&nbsp;饮料冲调&nbsp;&gt;&nbsp;水', '食品饮料,饮料冲调,水', 633, 0),
(570, 593, 599, 634, '食品饮料&nbsp;&gt;&nbsp;饮料冲调&nbsp;&gt;&nbsp;饮料', '食品饮料,饮料冲调,饮料', 634, 0),
(571, 593, 599, 635, '食品饮料&nbsp;&gt;&nbsp;饮料冲调&nbsp;&gt;&nbsp;牛奶', '食品饮料,饮料冲调,牛奶', 635, 0),
(572, 593, 599, 636, '食品饮料&nbsp;&gt;&nbsp;饮料冲调&nbsp;&gt;&nbsp;茶叶', '食品饮料,饮料冲调,茶叶', 636, 0),
(573, 593, 599, 637, '食品饮料&nbsp;&gt;&nbsp;饮料冲调&nbsp;&gt;&nbsp;咖啡/奶茶', '食品饮料,饮料冲调,咖啡/奶茶', 637, 0),
(574, 593, 599, 638, '食品饮料&nbsp;&gt;&nbsp;饮料冲调&nbsp;&gt;&nbsp;冲饮谷物', '食品饮料,饮料冲调,冲饮谷物', 638, 0),
(575, 593, 600, 639, '食品饮料&nbsp;&gt;&nbsp;营养健康&nbsp;&gt;&nbsp;基础营养', '食品饮料,营养健康,基础营养', 639, 0),
(576, 593, 600, 640, '食品饮料&nbsp;&gt;&nbsp;营养健康&nbsp;&gt;&nbsp;美体养颜', '食品饮料,营养健康,美体养颜', 640, 0),
(577, 593, 600, 641, '食品饮料&nbsp;&gt;&nbsp;营养健康&nbsp;&gt;&nbsp;滋补调养', '食品饮料,营养健康,滋补调养', 641, 0),
(578, 593, 600, 642, '食品饮料&nbsp;&gt;&nbsp;营养健康&nbsp;&gt;&nbsp;骨骼健康', '食品饮料,营养健康,骨骼健康', 642, 0),
(579, 593, 600, 643, '食品饮料&nbsp;&gt;&nbsp;营养健康&nbsp;&gt;&nbsp;保健茶饮', '食品饮料,营养健康,保健茶饮', 643, 0),
(580, 593, 600, 644, '食品饮料&nbsp;&gt;&nbsp;营养健康&nbsp;&gt;&nbsp;成分保健', '食品饮料,营养健康,成分保健', 644, 0),
(581, 593, 600, 645, '食品饮料&nbsp;&gt;&nbsp;营养健康&nbsp;&gt;&nbsp;无糖食品', '食品饮料,营养健康,无糖食品', 645, 0),
(582, 593, 601, 646, '食品饮料&nbsp;&gt;&nbsp;亚健康调理&nbsp;&gt;&nbsp;调节三高', '食品饮料,亚健康调理,调节三高', 646, 0),
(583, 593, 601, 647, '食品饮料&nbsp;&gt;&nbsp;亚健康调理&nbsp;&gt;&nbsp;心脑养护', '食品饮料,亚健康调理,心脑养护', 647, 0),
(584, 593, 601, 648, '食品饮料&nbsp;&gt;&nbsp;亚健康调理&nbsp;&gt;&nbsp;改善睡眠', '食品饮料,亚健康调理,改善睡眠', 648, 0),
(585, 593, 601, 649, '食品饮料&nbsp;&gt;&nbsp;亚健康调理&nbsp;&gt;&nbsp;肝肾养护', '食品饮料,亚健康调理,肝肾养护', 649, 0),
(586, 593, 601, 650, '食品饮料&nbsp;&gt;&nbsp;亚健康调理&nbsp;&gt;&nbsp;免疫调节', '食品饮料,亚健康调理,免疫调节', 650, 0),
(587, 593, 601, 651, '食品饮料&nbsp;&gt;&nbsp;亚健康调理&nbsp;&gt;&nbsp;更多调理', '食品饮料,亚健康调理,更多调理', 651, 0),
(588, 593, 602, 652, '食品饮料&nbsp;&gt;&nbsp;健康礼品&nbsp;&gt;&nbsp;参茸礼品', '食品饮料,健康礼品,参茸礼品', 652, 0),
(589, 593, 602, 653, '食品饮料&nbsp;&gt;&nbsp;健康礼品&nbsp;&gt;&nbsp;更多礼品', '食品饮料,健康礼品,更多礼品', 653, 0),
(590, 593, 603, 654, '食品饮料&nbsp;&gt;&nbsp;生鲜食品&nbsp;&gt;&nbsp;水果', '食品饮料,生鲜食品,水果', 654, 46),
(591, 593, 603, 655, '食品饮料&nbsp;&gt;&nbsp;生鲜食品&nbsp;&gt;&nbsp;蔬菜', '食品饮料,生鲜食品,蔬菜', 655, 0),
(592, 593, 603, 656, '食品饮料&nbsp;&gt;&nbsp;生鲜食品&nbsp;&gt;&nbsp;海鲜水产', '食品饮料,生鲜食品,海鲜水产', 656, 0),
(593, 593, 603, 657, '食品饮料&nbsp;&gt;&nbsp;生鲜食品&nbsp;&gt;&nbsp;禽蛋', '食品饮料,生鲜食品,禽蛋', 657, 0),
(594, 593, 603, 658, '食品饮料&nbsp;&gt;&nbsp;生鲜食品&nbsp;&gt;&nbsp;鲜肉', '食品饮料,生鲜食品,鲜肉', 658, 0),
(595, 593, 603, 659, '食品饮料&nbsp;&gt;&nbsp;生鲜食品&nbsp;&gt;&nbsp;加工类肉食', '食品饮料,生鲜食品,加工类肉食', 659, 0),
(596, 593, 603, 660, '食品饮料&nbsp;&gt;&nbsp;生鲜食品&nbsp;&gt;&nbsp;冻品', '食品饮料,生鲜食品,冻品', 660, 0),
(597, 593, 603, 661, '食品饮料&nbsp;&gt;&nbsp;生鲜食品&nbsp;&gt;&nbsp;半成品', '食品饮料,生鲜食品,半成品', 661, 0),
(598, 3, 200, 206, '家居家装&nbsp;&gt;&nbsp;家纺&nbsp;&gt;&nbsp;床品件套', '家居家装,家纺,床品件套', 206, 0),
(599, 3, 200, 207, '家居家装&nbsp;&gt;&nbsp;家纺&nbsp;&gt;&nbsp;被子', '家居家装,家纺,被子', 207, 0),
(600, 3, 200, 208, '家居家装&nbsp;&gt;&nbsp;家纺&nbsp;&gt;&nbsp;枕芯枕套', '家居家装,家纺,枕芯枕套', 208, 0),
(601, 3, 200, 209, '家居家装&nbsp;&gt;&nbsp;家纺&nbsp;&gt;&nbsp;床单被罩', '家居家装,家纺,床单被罩', 209, 0),
(602, 3, 200, 210, '家居家装&nbsp;&gt;&nbsp;家纺&nbsp;&gt;&nbsp;毛巾被/毯', '家居家装,家纺,毛巾被/毯', 210, 0),
(603, 3, 200, 211, '家居家装&nbsp;&gt;&nbsp;家纺&nbsp;&gt;&nbsp;床垫/床褥', '家居家装,家纺,床垫/床褥', 211, 0),
(604, 3, 200, 212, '家居家装&nbsp;&gt;&nbsp;家纺&nbsp;&gt;&nbsp;蚊帐/凉席', '家居家装,家纺,蚊帐/凉席', 212, 0),
(605, 3, 200, 213, '家居家装&nbsp;&gt;&nbsp;家纺&nbsp;&gt;&nbsp;抱枕坐垫', '家居家装,家纺,抱枕坐垫', 213, 0),
(606, 3, 200, 214, '家居家装&nbsp;&gt;&nbsp;家纺&nbsp;&gt;&nbsp;毛巾家纺', '家居家装,家纺,毛巾家纺', 214, 0),
(607, 3, 200, 215, '家居家装&nbsp;&gt;&nbsp;家纺&nbsp;&gt;&nbsp;电热毯', '家居家装,家纺,电热毯', 215, 0),
(608, 3, 200, 216, '家居家装&nbsp;&gt;&nbsp;家纺&nbsp;&gt;&nbsp;窗帘/窗纱', '家居家装,家纺,窗帘/窗纱', 216, 0),
(609, 3, 200, 217, '家居家装&nbsp;&gt;&nbsp;家纺&nbsp;&gt;&nbsp;酒店用品', '家居家装,家纺,酒店用品', 217, 0),
(610, 3, 201, 218, '家居家装&nbsp;&gt;&nbsp;灯具&nbsp;&gt;&nbsp;台灯', '家居家装,灯具,台灯', 218, 0),
(611, 3, 201, 219, '家居家装&nbsp;&gt;&nbsp;灯具&nbsp;&gt;&nbsp;节能灯', '家居家装,灯具,节能灯', 219, 0),
(612, 3, 201, 220, '家居家装&nbsp;&gt;&nbsp;灯具&nbsp;&gt;&nbsp;装饰灯', '家居家装,灯具,装饰灯', 220, 0),
(613, 3, 201, 221, '家居家装&nbsp;&gt;&nbsp;灯具&nbsp;&gt;&nbsp;落地灯', '家居家装,灯具,落地灯', 221, 0),
(614, 3, 201, 222, '家居家装&nbsp;&gt;&nbsp;灯具&nbsp;&gt;&nbsp;应急灯/手电', '家居家装,灯具,应急灯/手电', 222, 0),
(615, 3, 201, 223, '家居家装&nbsp;&gt;&nbsp;灯具&nbsp;&gt;&nbsp;LED灯', '家居家装,灯具,LED灯', 223, 0),
(616, 3, 201, 224, '家居家装&nbsp;&gt;&nbsp;灯具&nbsp;&gt;&nbsp;吸顶灯', '家居家装,灯具,吸顶灯', 224, 0),
(617, 3, 201, 225, '家居家装&nbsp;&gt;&nbsp;灯具&nbsp;&gt;&nbsp;五金电器', '家居家装,灯具,五金电器', 225, 0),
(618, 3, 201, 226, '家居家装&nbsp;&gt;&nbsp;灯具&nbsp;&gt;&nbsp;吊灯', '家居家装,灯具,吊灯', 226, 0),
(619, 3, 201, 227, '家居家装&nbsp;&gt;&nbsp;灯具&nbsp;&gt;&nbsp;氛围照明', '家居家装,灯具,氛围照明', 227, 0),
(620, 3, 202, 228, '家居家装&nbsp;&gt;&nbsp;生活日用&nbsp;&gt;&nbsp;收纳用品', '家居家装,生活日用,收纳用品', 228, 0),
(621, 3, 202, 229, '家居家装&nbsp;&gt;&nbsp;生活日用&nbsp;&gt;&nbsp;雨伞雨具', '家居家装,生活日用,雨伞雨具', 229, 0),
(622, 3, 202, 230, '家居家装&nbsp;&gt;&nbsp;生活日用&nbsp;&gt;&nbsp;浴室用品', '家居家装,生活日用,浴室用品', 230, 0),
(623, 3, 202, 231, '家居家装&nbsp;&gt;&nbsp;生活日用&nbsp;&gt;&nbsp;缝纫用品', '家居家装,生活日用,缝纫用品', 231, 0),
(624, 3, 202, 232, '家居家装&nbsp;&gt;&nbsp;生活日用&nbsp;&gt;&nbsp;洗晒用品', '家居家装,生活日用,洗晒用品', 232, 0),
(625, 3, 202, 233, '家居家装&nbsp;&gt;&nbsp;生活日用&nbsp;&gt;&nbsp;净化除味', '家居家装,生活日用,净化除味', 233, 0),
(626, 3, 203, 234, '家居家装&nbsp;&gt;&nbsp;家装软饰&nbsp;&gt;&nbsp;桌布/罩件', '家居家装,家装软饰,桌布/罩件', 234, 0),
(627, 3, 203, 235, '家居家装&nbsp;&gt;&nbsp;家装软饰&nbsp;&gt;&nbsp;地毯地垫', '家居家装,家装软饰,地毯地垫', 235, 0),
(628, 3, 203, 236, '家居家装&nbsp;&gt;&nbsp;家装软饰&nbsp;&gt;&nbsp;沙发垫套', '家居家装,家装软饰,沙发垫套', 236, 0),
(629, 3, 203, 237, '家居家装&nbsp;&gt;&nbsp;家装软饰&nbsp;&gt;&nbsp;相框/相片墙', '家居家装,家装软饰,相框/相片墙', 237, 0),
(630, 3, 203, 238, '家居家装&nbsp;&gt;&nbsp;家装软饰&nbsp;&gt;&nbsp;墙画墙贴', '家居家装,家装软饰,墙画墙贴', 238, 0),
(631, 3, 203, 239, '家居家装&nbsp;&gt;&nbsp;家装软饰&nbsp;&gt;&nbsp;节庆饰品', '家居家装,家装软饰,节庆饰品', 239, 0),
(632, 3, 203, 240, '家居家装&nbsp;&gt;&nbsp;家装软饰&nbsp;&gt;&nbsp;手工/十字绣', '家居家装,家装软饰,手工/十字绣', 240, 0),
(633, 3, 203, 241, '家居家装&nbsp;&gt;&nbsp;家装软饰&nbsp;&gt;&nbsp;工艺摆件', '家居家装,家装软饰,工艺摆件', 241, 0),
(634, 3, 203, 242, '家居家装&nbsp;&gt;&nbsp;家装软饰&nbsp;&gt;&nbsp;其他', '家居家装,家装软饰,其他', 242, 0),
(635, 3, 204, 243, '家居家装&nbsp;&gt;&nbsp;清洁日用&nbsp;&gt;&nbsp;纸品湿巾', '家居家装,清洁日用,纸品湿巾', 243, 0),
(636, 3, 204, 244, '家居家装&nbsp;&gt;&nbsp;清洁日用&nbsp;&gt;&nbsp;衣物清洁', '家居家装,清洁日用,衣物清洁', 244, 0),
(637, 3, 204, 245, '家居家装&nbsp;&gt;&nbsp;清洁日用&nbsp;&gt;&nbsp;清洁工具', '家居家装,清洁日用,清洁工具', 245, 0),
(638, 3, 204, 246, '家居家装&nbsp;&gt;&nbsp;清洁日用&nbsp;&gt;&nbsp;驱虫用品', '家居家装,清洁日用,驱虫用品', 246, 0),
(639, 3, 204, 247, '家居家装&nbsp;&gt;&nbsp;清洁日用&nbsp;&gt;&nbsp;居室清洁', '家居家装,清洁日用,居室清洁', 247, 0),
(640, 3, 204, 248, '家居家装&nbsp;&gt;&nbsp;清洁日用&nbsp;&gt;&nbsp;皮具护理', '家居家装,清洁日用,皮具护理', 248, 0),
(641, 3, 205, 249, '家居家装&nbsp;&gt;&nbsp;宠物生活&nbsp;&gt;&nbsp;宠物主粮', '家居家装,宠物生活,宠物主粮', 249, 0),
(642, 3, 205, 250, '家居家装&nbsp;&gt;&nbsp;宠物生活&nbsp;&gt;&nbsp;宠物零食', '家居家装,宠物生活,宠物零食', 250, 0),
(643, 3, 205, 251, '家居家装&nbsp;&gt;&nbsp;宠物生活&nbsp;&gt;&nbsp;营养品', '家居家装,宠物生活,营养品', 251, 0),
(644, 3, 205, 252, '家居家装&nbsp;&gt;&nbsp;宠物生活&nbsp;&gt;&nbsp;家居日用', '家居家装,宠物生活,家居日用', 252, 0),
(645, 3, 205, 253, '家居家装&nbsp;&gt;&nbsp;宠物生活&nbsp;&gt;&nbsp;玩具服饰', '家居家装,宠物生活,玩具服饰', 253, 0),
(646, 3, 205, 254, '家居家装&nbsp;&gt;&nbsp;宠物生活&nbsp;&gt;&nbsp;出行装备', '家居家装,宠物生活,出行装备', 254, 0),
(647, 3, 205, 255, '家居家装&nbsp;&gt;&nbsp;宠物生活&nbsp;&gt;&nbsp;医护美容', '家居家装,宠物生活,医护美容', 255, 0),
(648, 730, 731, 738, '汽车用品&nbsp;&gt;&nbsp;电子电器&nbsp;&gt;&nbsp;便携GPS导航', '汽车用品,电子电器,便携GPS导航', 738, 0),
(649, 730, 731, 739, '汽车用品&nbsp;&gt;&nbsp;电子电器&nbsp;&gt;&nbsp;嵌入式导航', '汽车用品,电子电器,嵌入式导航', 739, 0),
(650, 730, 731, 740, '汽车用品&nbsp;&gt;&nbsp;电子电器&nbsp;&gt;&nbsp;安全预警仪', '汽车用品,电子电器,安全预警仪', 740, 0),
(651, 730, 731, 741, '汽车用品&nbsp;&gt;&nbsp;电子电器&nbsp;&gt;&nbsp;行车记录仪', '汽车用品,电子电器,行车记录仪', 741, 0),
(652, 730, 731, 742, '汽车用品&nbsp;&gt;&nbsp;电子电器&nbsp;&gt;&nbsp;跟踪防盗器', '汽车用品,电子电器,跟踪防盗器', 742, 0),
(653, 730, 731, 743, '汽车用品&nbsp;&gt;&nbsp;电子电器&nbsp;&gt;&nbsp;倒车雷达', '汽车用品,电子电器,倒车雷达', 743, 0),
(654, 730, 731, 744, '汽车用品&nbsp;&gt;&nbsp;电子电器&nbsp;&gt;&nbsp;车载电源', '汽车用品,电子电器,车载电源', 744, 0),
(655, 730, 731, 745, '汽车用品&nbsp;&gt;&nbsp;电子电器&nbsp;&gt;&nbsp;车载蓝牙', '汽车用品,电子电器,车载蓝牙', 745, 0),
(656, 730, 731, 746, '汽车用品&nbsp;&gt;&nbsp;电子电器&nbsp;&gt;&nbsp;车载影音', '汽车用品,电子电器,车载影音', 746, 0),
(657, 730, 731, 747, '汽车用品&nbsp;&gt;&nbsp;电子电器&nbsp;&gt;&nbsp;车载净化器', '汽车用品,电子电器,车载净化器', 747, 0),
(658, 730, 731, 748, '汽车用品&nbsp;&gt;&nbsp;电子电器&nbsp;&gt;&nbsp;车载冰箱', '汽车用品,电子电器,车载冰箱', 748, 0),
(659, 730, 731, 749, '汽车用品&nbsp;&gt;&nbsp;电子电器&nbsp;&gt;&nbsp;车载吸尘器', '汽车用品,电子电器,车载吸尘器', 749, 0),
(660, 730, 731, 750, '汽车用品&nbsp;&gt;&nbsp;电子电器&nbsp;&gt;&nbsp;充气泵', '汽车用品,电子电器,充气泵', 750, 0),
(661, 730, 731, 751, '汽车用品&nbsp;&gt;&nbsp;电子电器&nbsp;&gt;&nbsp;胎压监测', '汽车用品,电子电器,胎压监测', 751, 0),
(662, 730, 731, 752, '汽车用品&nbsp;&gt;&nbsp;电子电器&nbsp;&gt;&nbsp;车载生活电器', '汽车用品,电子电器,车载生活电器', 752, 0),
(663, 730, 732, 753, '汽车用品&nbsp;&gt;&nbsp;系统养护&nbsp;&gt;&nbsp;机油', '汽车用品,系统养护,机油', 753, 0),
(664, 730, 732, 754, '汽车用品&nbsp;&gt;&nbsp;系统养护&nbsp;&gt;&nbsp;添加剂', '汽车用品,系统养护,添加剂', 754, 0),
(665, 730, 732, 755, '汽车用品&nbsp;&gt;&nbsp;系统养护&nbsp;&gt;&nbsp;防冻冷却液', '汽车用品,系统养护,防冻冷却液', 755, 0),
(666, 730, 732, 756, '汽车用品&nbsp;&gt;&nbsp;系统养护&nbsp;&gt;&nbsp;附属油', '汽车用品,系统养护,附属油', 756, 0),
(667, 730, 732, 757, '汽车用品&nbsp;&gt;&nbsp;系统养护&nbsp;&gt;&nbsp;底盘装甲', '汽车用品,系统养护,底盘装甲', 757, 0),
(668, 730, 732, 758, '汽车用品&nbsp;&gt;&nbsp;系统养护&nbsp;&gt;&nbsp;空调清洗剂', '汽车用品,系统养护,空调清洗剂', 758, 0),
(669, 730, 732, 759, '汽车用品&nbsp;&gt;&nbsp;系统养护&nbsp;&gt;&nbsp;金属养护', '汽车用品,系统养护,金属养护', 759, 0),
(670, 730, 733, 760, '汽车用品&nbsp;&gt;&nbsp;改装配件&nbsp;&gt;&nbsp;雨刷', '汽车用品,改装配件,雨刷', 760, 0),
(671, 730, 733, 761, '汽车用品&nbsp;&gt;&nbsp;改装配件&nbsp;&gt;&nbsp;车灯', '汽车用品,改装配件,车灯', 761, 0),
(672, 730, 733, 762, '汽车用品&nbsp;&gt;&nbsp;改装配件&nbsp;&gt;&nbsp;轮胎', '汽车用品,改装配件,轮胎', 762, 0),
(673, 730, 733, 763, '汽车用品&nbsp;&gt;&nbsp;改装配件&nbsp;&gt;&nbsp;贴膜', '汽车用品,改装配件,贴膜', 763, 0),
(674, 730, 733, 764, '汽车用品&nbsp;&gt;&nbsp;改装配件&nbsp;&gt;&nbsp;装饰贴', '汽车用品,改装配件,装饰贴', 764, 0),
(675, 730, 733, 765, '汽车用品&nbsp;&gt;&nbsp;改装配件&nbsp;&gt;&nbsp;后视镜', '汽车用品,改装配件,后视镜', 765, 0),
(676, 730, 733, 766, '汽车用品&nbsp;&gt;&nbsp;改装配件&nbsp;&gt;&nbsp;机油滤', '汽车用品,改装配件,机油滤', 766, 0),
(677, 730, 733, 767, '汽车用品&nbsp;&gt;&nbsp;改装配件&nbsp;&gt;&nbsp;空气滤', '汽车用品,改装配件,空气滤', 767, 0),
(678, 730, 733, 768, '汽车用品&nbsp;&gt;&nbsp;改装配件&nbsp;&gt;&nbsp;空调滤', '汽车用品,改装配件,空调滤', 768, 0),
(679, 730, 733, 769, '汽车用品&nbsp;&gt;&nbsp;改装配件&nbsp;&gt;&nbsp;燃油滤', '汽车用品,改装配件,燃油滤', 769, 0),
(680, 730, 733, 770, '汽车用品&nbsp;&gt;&nbsp;改装配件&nbsp;&gt;&nbsp;火花塞', '汽车用品,改装配件,火花塞', 770, 0),
(681, 730, 733, 771, '汽车用品&nbsp;&gt;&nbsp;改装配件&nbsp;&gt;&nbsp;喇叭', '汽车用品,改装配件,喇叭', 771, 0),
(682, 730, 733, 772, '汽车用品&nbsp;&gt;&nbsp;改装配件&nbsp;&gt;&nbsp;刹车片', '汽车用品,改装配件,刹车片', 772, 0),
(683, 730, 733, 773, '汽车用品&nbsp;&gt;&nbsp;改装配件&nbsp;&gt;&nbsp;刹车盘', '汽车用品,改装配件,刹车盘', 773, 0),
(684, 730, 733, 774, '汽车用品&nbsp;&gt;&nbsp;改装配件&nbsp;&gt;&nbsp;减震器', '汽车用品,改装配件,减震器', 774, 0),
(685, 730, 733, 775, '汽车用品&nbsp;&gt;&nbsp;改装配件&nbsp;&gt;&nbsp;车身装饰', '汽车用品,改装配件,车身装饰', 775, 0),
(686, 730, 733, 776, '汽车用品&nbsp;&gt;&nbsp;改装配件&nbsp;&gt;&nbsp;尾喉/排气管', '汽车用品,改装配件,尾喉/排气管', 776, 0),
(687, 730, 733, 777, '汽车用品&nbsp;&gt;&nbsp;改装配件&nbsp;&gt;&nbsp;踏板', '汽车用品,改装配件,踏板', 777, 0),
(688, 730, 733, 778, '汽车用品&nbsp;&gt;&nbsp;改装配件&nbsp;&gt;&nbsp;蓄电池', '汽车用品,改装配件,蓄电池', 778, 0),
(689, 730, 733, 779, '汽车用品&nbsp;&gt;&nbsp;改装配件&nbsp;&gt;&nbsp;其他配件', '汽车用品,改装配件,其他配件', 779, 0),
(690, 730, 734, 780, '汽车用品&nbsp;&gt;&nbsp;汽车美容&nbsp;&gt;&nbsp;漆面美容', '汽车用品,汽车美容,漆面美容', 780, 0),
(691, 730, 734, 781, '汽车用品&nbsp;&gt;&nbsp;汽车美容&nbsp;&gt;&nbsp;漆面修复', '汽车用品,汽车美容,漆面修复', 781, 0),
(692, 730, 734, 782, '汽车用品&nbsp;&gt;&nbsp;汽车美容&nbsp;&gt;&nbsp;内饰清洁', '汽车用品,汽车美容,内饰清洁', 782, 0),
(693, 730, 734, 783, '汽车用品&nbsp;&gt;&nbsp;汽车美容&nbsp;&gt;&nbsp;玻璃美容', '汽车用品,汽车美容,玻璃美容', 783, 0),
(694, 730, 734, 784, '汽车用品&nbsp;&gt;&nbsp;汽车美容&nbsp;&gt;&nbsp;补漆笔', '汽车用品,汽车美容,补漆笔', 784, 0),
(695, 730, 734, 785, '汽车用品&nbsp;&gt;&nbsp;汽车美容&nbsp;&gt;&nbsp;轮胎轮毂清洗', '汽车用品,汽车美容,轮胎轮毂清洗', 785, 0),
(696, 730, 734, 786, '汽车用品&nbsp;&gt;&nbsp;汽车美容&nbsp;&gt;&nbsp;洗车器', '汽车用品,汽车美容,洗车器', 786, 0),
(697, 730, 734, 787, '汽车用品&nbsp;&gt;&nbsp;汽车美容&nbsp;&gt;&nbsp;洗车水枪', '汽车用品,汽车美容,洗车水枪', 787, 0),
(698, 730, 734, 788, '汽车用品&nbsp;&gt;&nbsp;汽车美容&nbsp;&gt;&nbsp;洗车配件', '汽车用品,汽车美容,洗车配件', 788, 0),
(699, 730, 734, 789, '汽车用品&nbsp;&gt;&nbsp;汽车美容&nbsp;&gt;&nbsp;洗车液', '汽车用品,汽车美容,洗车液', 789, 0),
(700, 730, 734, 790, '汽车用品&nbsp;&gt;&nbsp;汽车美容&nbsp;&gt;&nbsp;车掸', '汽车用品,汽车美容,车掸', 790, 0),
(701, 730, 734, 791, '汽车用品&nbsp;&gt;&nbsp;汽车美容&nbsp;&gt;&nbsp;擦车巾/海绵', '汽车用品,汽车美容,擦车巾/海绵', 791, 0),
(702, 730, 735, 792, '汽车用品&nbsp;&gt;&nbsp;座垫脚垫&nbsp;&gt;&nbsp;凉垫', '汽车用品,座垫脚垫,凉垫', 792, 0),
(703, 730, 735, 793, '汽车用品&nbsp;&gt;&nbsp;座垫脚垫&nbsp;&gt;&nbsp;四季垫', '汽车用品,座垫脚垫,四季垫', 793, 0),
(704, 730, 735, 794, '汽车用品&nbsp;&gt;&nbsp;座垫脚垫&nbsp;&gt;&nbsp;毛垫', '汽车用品,座垫脚垫,毛垫', 794, 0),
(705, 730, 735, 795, '汽车用品&nbsp;&gt;&nbsp;座垫脚垫&nbsp;&gt;&nbsp;专车专用座垫', '汽车用品,座垫脚垫,专车专用座垫', 795, 0),
(706, 730, 735, 796, '汽车用品&nbsp;&gt;&nbsp;座垫脚垫&nbsp;&gt;&nbsp;专车专用座套', '汽车用品,座垫脚垫,专车专用座套', 796, 0),
(707, 730, 735, 797, '汽车用品&nbsp;&gt;&nbsp;座垫脚垫&nbsp;&gt;&nbsp;通用座套', '汽车用品,座垫脚垫,通用座套', 797, 0),
(708, 730, 735, 798, '汽车用品&nbsp;&gt;&nbsp;座垫脚垫&nbsp;&gt;&nbsp;多功能垫', '汽车用品,座垫脚垫,多功能垫', 798, 0),
(709, 730, 735, 799, '汽车用品&nbsp;&gt;&nbsp;座垫脚垫&nbsp;&gt;&nbsp;专车专用脚垫', '汽车用品,座垫脚垫,专车专用脚垫', 799, 0),
(710, 730, 735, 800, '汽车用品&nbsp;&gt;&nbsp;座垫脚垫&nbsp;&gt;&nbsp;通用脚垫', '汽车用品,座垫脚垫,通用脚垫', 800, 0),
(711, 730, 735, 801, '汽车用品&nbsp;&gt;&nbsp;座垫脚垫&nbsp;&gt;&nbsp;后备箱垫', '汽车用品,座垫脚垫,后备箱垫', 801, 0),
(712, 730, 736, 802, '汽车用品&nbsp;&gt;&nbsp;内饰精品&nbsp;&gt;&nbsp;车用香水', '汽车用品,内饰精品,车用香水', 802, 0),
(713, 730, 736, 803, '汽车用品&nbsp;&gt;&nbsp;内饰精品&nbsp;&gt;&nbsp;车用炭包', '汽车用品,内饰精品,车用炭包', 803, 0),
(714, 730, 736, 804, '汽车用品&nbsp;&gt;&nbsp;内饰精品&nbsp;&gt;&nbsp;空气净化', '汽车用品,内饰精品,空气净化', 804, 0),
(715, 730, 736, 805, '汽车用品&nbsp;&gt;&nbsp;内饰精品&nbsp;&gt;&nbsp;颈枕/头枕', '汽车用品,内饰精品,颈枕/头枕', 805, 0),
(716, 730, 736, 806, '汽车用品&nbsp;&gt;&nbsp;内饰精品&nbsp;&gt;&nbsp;抱枕/腰靠', '汽车用品,内饰精品,抱枕/腰靠', 806, 0),
(717, 730, 736, 807, '汽车用品&nbsp;&gt;&nbsp;内饰精品&nbsp;&gt;&nbsp;方向盘套', '汽车用品,内饰精品,方向盘套', 807, 0),
(718, 730, 736, 808, '汽车用品&nbsp;&gt;&nbsp;内饰精品&nbsp;&gt;&nbsp;挂件', '汽车用品,内饰精品,挂件', 808, 0),
(719, 730, 736, 809, '汽车用品&nbsp;&gt;&nbsp;内饰精品&nbsp;&gt;&nbsp;摆件', '汽车用品,内饰精品,摆件', 809, 0),
(720, 730, 736, 810, '汽车用品&nbsp;&gt;&nbsp;内饰精品&nbsp;&gt;&nbsp;布艺软饰', '汽车用品,内饰精品,布艺软饰', 810, 0),
(721, 730, 736, 811, '汽车用品&nbsp;&gt;&nbsp;内饰精品&nbsp;&gt;&nbsp;功能用品', '汽车用品,内饰精品,功能用品', 811, 0),
(722, 730, 736, 812, '汽车用品&nbsp;&gt;&nbsp;内饰精品&nbsp;&gt;&nbsp;整理收纳', '汽车用品,内饰精品,整理收纳', 812, 0),
(723, 730, 736, 813, '汽车用品&nbsp;&gt;&nbsp;内饰精品&nbsp;&gt;&nbsp;CD夹', '汽车用品,内饰精品,CD夹', 813, 0),
(724, 730, 737, 814, '汽车用品&nbsp;&gt;&nbsp;安全自驾&nbsp;&gt;&nbsp;儿童安全座椅', '汽车用品,安全自驾,儿童安全座椅', 814, 0),
(725, 730, 737, 815, '汽车用品&nbsp;&gt;&nbsp;安全自驾&nbsp;&gt;&nbsp;应急救援', '汽车用品,安全自驾,应急救援', 815, 0),
(726, 730, 737, 816, '汽车用品&nbsp;&gt;&nbsp;安全自驾&nbsp;&gt;&nbsp;汽修工具', '汽车用品,安全自驾,汽修工具', 816, 0),
(727, 730, 737, 817, '汽车用品&nbsp;&gt;&nbsp;安全自驾&nbsp;&gt;&nbsp;自驾野营', '汽车用品,安全自驾,自驾野营', 817, 0),
(728, 730, 737, 818, '汽车用品&nbsp;&gt;&nbsp;安全自驾&nbsp;&gt;&nbsp;自驾照明', '汽车用品,安全自驾,自驾照明', 818, 0),
(729, 730, 737, 819, '汽车用品&nbsp;&gt;&nbsp;安全自驾&nbsp;&gt;&nbsp;保温箱', '汽车用品,安全自驾,保温箱', 819, 0),
(730, 730, 737, 820, '汽车用品&nbsp;&gt;&nbsp;安全自驾&nbsp;&gt;&nbsp;置物箱', '汽车用品,安全自驾,置物箱', 820, 0),
(731, 730, 737, 821, '汽车用品&nbsp;&gt;&nbsp;安全自驾&nbsp;&gt;&nbsp;车衣', '汽车用品,安全自驾,车衣', 821, 0),
(732, 730, 737, 822, '汽车用品&nbsp;&gt;&nbsp;安全自驾&nbsp;&gt;&nbsp;遮阳挡雪挡', '汽车用品,安全自驾,遮阳挡雪挡', 822, 0),
(733, 730, 737, 823, '汽车用品&nbsp;&gt;&nbsp;安全自驾&nbsp;&gt;&nbsp;车锁地锁', '汽车用品,安全自驾,车锁地锁', 823, 0),
(734, 730, 737, 824, '汽车用品&nbsp;&gt;&nbsp;安全自驾&nbsp;&gt;&nbsp;摩托车装备', '汽车用品,安全自驾,摩托车装备', 824, 0),
(735, 825, 826, 838, '玩具乐器&nbsp;&gt;&nbsp;适用年龄&nbsp;&gt;&nbsp;0-6个月', '玩具乐器,适用年龄,0-6个月', 838, 0),
(736, 825, 826, 839, '玩具乐器&nbsp;&gt;&nbsp;适用年龄&nbsp;&gt;&nbsp;6-12个月', '玩具乐器,适用年龄,6-12个月', 839, 0),
(737, 825, 826, 840, '玩具乐器&nbsp;&gt;&nbsp;适用年龄&nbsp;&gt;&nbsp;1-3岁', '玩具乐器,适用年龄,1-3岁', 840, 0),
(738, 825, 826, 841, '玩具乐器&nbsp;&gt;&nbsp;适用年龄&nbsp;&gt;&nbsp;3-6岁', '玩具乐器,适用年龄,3-6岁', 841, 0),
(739, 825, 826, 842, '玩具乐器&nbsp;&gt;&nbsp;适用年龄&nbsp;&gt;&nbsp;6-14岁', '玩具乐器,适用年龄,6-14岁', 842, 0),
(740, 825, 826, 843, '玩具乐器&nbsp;&gt;&nbsp;适用年龄&nbsp;&gt;&nbsp;14岁以上', '玩具乐器,适用年龄,14岁以上', 843, 0),
(741, 825, 827, 844, '玩具乐器&nbsp;&gt;&nbsp;遥控/电动&nbsp;&gt;&nbsp;遥控车', '玩具乐器,遥控/电动,遥控车', 844, 0),
(742, 825, 827, 845, '玩具乐器&nbsp;&gt;&nbsp;遥控/电动&nbsp;&gt;&nbsp;遥控飞机', '玩具乐器,遥控/电动,遥控飞机', 845, 0),
(743, 825, 827, 846, '玩具乐器&nbsp;&gt;&nbsp;遥控/电动&nbsp;&gt;&nbsp;遥控船', '玩具乐器,遥控/电动,遥控船', 846, 0),
(744, 825, 827, 847, '玩具乐器&nbsp;&gt;&nbsp;遥控/电动&nbsp;&gt;&nbsp;机器人/电动', '玩具乐器,遥控/电动,机器人/电动', 847, 0),
(745, 825, 827, 848, '玩具乐器&nbsp;&gt;&nbsp;遥控/电动&nbsp;&gt;&nbsp;轨道/助力', '玩具乐器,遥控/电动,轨道/助力', 848, 0),
(746, 825, 828, 849, '玩具乐器&nbsp;&gt;&nbsp;毛绒布艺&nbsp;&gt;&nbsp;毛绒/布艺', '玩具乐器,毛绒布艺,毛绒/布艺', 849, 0),
(747, 825, 828, 850, '玩具乐器&nbsp;&gt;&nbsp;毛绒布艺&nbsp;&gt;&nbsp;靠垫/抱枕', '玩具乐器,毛绒布艺,靠垫/抱枕', 850, 0),
(748, 825, 829, 851, '玩具乐器&nbsp;&gt;&nbsp;娃娃玩具&nbsp;&gt;&nbsp;芭比娃娃', '玩具乐器,娃娃玩具,芭比娃娃', 851, 0),
(749, 825, 829, 852, '玩具乐器&nbsp;&gt;&nbsp;娃娃玩具&nbsp;&gt;&nbsp;卡通娃娃', '玩具乐器,娃娃玩具,卡通娃娃', 852, 0),
(750, 825, 829, 853, '玩具乐器&nbsp;&gt;&nbsp;娃娃玩具&nbsp;&gt;&nbsp;智能娃娃', '玩具乐器,娃娃玩具,智能娃娃', 853, 0),
(751, 825, 830, 854, '玩具乐器&nbsp;&gt;&nbsp;模型玩具&nbsp;&gt;&nbsp;仿真模型', '玩具乐器,模型玩具,仿真模型', 854, 0),
(752, 825, 830, 855, '玩具乐器&nbsp;&gt;&nbsp;模型玩具&nbsp;&gt;&nbsp;拼插模型', '玩具乐器,模型玩具,拼插模型', 855, 0),
(753, 825, 830, 856, '玩具乐器&nbsp;&gt;&nbsp;模型玩具&nbsp;&gt;&nbsp;收藏爱好', '玩具乐器,模型玩具,收藏爱好', 856, 0),
(754, 825, 831, 857, '玩具乐器&nbsp;&gt;&nbsp;健身玩具&nbsp;&gt;&nbsp;炫舞毯', '玩具乐器,健身玩具,炫舞毯', 857, 0),
(755, 825, 831, 858, '玩具乐器&nbsp;&gt;&nbsp;健身玩具&nbsp;&gt;&nbsp;爬行垫/毯', '玩具乐器,健身玩具,爬行垫/毯', 858, 0),
(756, 825, 831, 859, '玩具乐器&nbsp;&gt;&nbsp;健身玩具&nbsp;&gt;&nbsp;户外玩具', '玩具乐器,健身玩具,户外玩具', 859, 0),
(757, 825, 831, 860, '玩具乐器&nbsp;&gt;&nbsp;健身玩具&nbsp;&gt;&nbsp;戏水玩具', '玩具乐器,健身玩具,戏水玩具', 860, 0),
(758, 825, 832, 861, '玩具乐器&nbsp;&gt;&nbsp;动漫玩具&nbsp;&gt;&nbsp;电影周边', '玩具乐器,动漫玩具,电影周边', 861, 0),
(759, 825, 832, 862, '玩具乐器&nbsp;&gt;&nbsp;动漫玩具&nbsp;&gt;&nbsp;卡通周边', '玩具乐器,动漫玩具,卡通周边', 862, 0),
(760, 825, 832, 863, '玩具乐器&nbsp;&gt;&nbsp;动漫玩具&nbsp;&gt;&nbsp;网游周边', '玩具乐器,动漫玩具,网游周边', 863, 0),
(761, 825, 833, 864, '玩具乐器&nbsp;&gt;&nbsp;益智玩具&nbsp;&gt;&nbsp;摇铃/床铃', '玩具乐器,益智玩具,摇铃/床铃', 864, 0),
(762, 825, 833, 865, '玩具乐器&nbsp;&gt;&nbsp;益智玩具&nbsp;&gt;&nbsp;健身架', '玩具乐器,益智玩具,健身架', 865, 0),
(763, 825, 833, 866, '玩具乐器&nbsp;&gt;&nbsp;益智玩具&nbsp;&gt;&nbsp;早教启智', '玩具乐器,益智玩具,早教启智', 866, 0),
(764, 825, 833, 867, '玩具乐器&nbsp;&gt;&nbsp;益智玩具&nbsp;&gt;&nbsp;拖拉玩具', '玩具乐器,益智玩具,拖拉玩具', 867, 0),
(765, 825, 834, 868, '玩具乐器&nbsp;&gt;&nbsp;积木拼插&nbsp;&gt;&nbsp;积木', '玩具乐器,积木拼插,积木', 868, 0),
(766, 825, 834, 869, '玩具乐器&nbsp;&gt;&nbsp;积木拼插&nbsp;&gt;&nbsp;拼图', '玩具乐器,积木拼插,拼图', 869, 0),
(767, 825, 834, 870, '玩具乐器&nbsp;&gt;&nbsp;积木拼插&nbsp;&gt;&nbsp;磁力棒', '玩具乐器,积木拼插,磁力棒', 870, 0),
(768, 825, 834, 871, '玩具乐器&nbsp;&gt;&nbsp;积木拼插&nbsp;&gt;&nbsp;立体拼插', '玩具乐器,积木拼插,立体拼插', 871, 0),
(769, 825, 835, 872, '玩具乐器&nbsp;&gt;&nbsp;DIY玩具&nbsp;&gt;&nbsp;手工彩泥', '玩具乐器,DIY玩具,手工彩泥', 872, 0),
(770, 825, 835, 873, '玩具乐器&nbsp;&gt;&nbsp;DIY玩具&nbsp;&gt;&nbsp;绘画工具', '玩具乐器,DIY玩具,绘画工具', 873, 0),
(771, 825, 835, 874, '玩具乐器&nbsp;&gt;&nbsp;DIY玩具&nbsp;&gt;&nbsp;情景玩具', '玩具乐器,DIY玩具,情景玩具', 874, 0),
(772, 825, 836, 875, '玩具乐器&nbsp;&gt;&nbsp;创意减压&nbsp;&gt;&nbsp;减压玩具', '玩具乐器,创意减压,减压玩具', 875, 0),
(773, 825, 836, 876, '玩具乐器&nbsp;&gt;&nbsp;创意减压&nbsp;&gt;&nbsp;创意玩具', '玩具乐器,创意减压,创意玩具', 876, 0),
(774, 825, 837, 877, '玩具乐器&nbsp;&gt;&nbsp;乐器相关&nbsp;&gt;&nbsp;钢琴', '玩具乐器,乐器相关,钢琴', 877, 0),
(775, 825, 837, 878, '玩具乐器&nbsp;&gt;&nbsp;乐器相关&nbsp;&gt;&nbsp;电子琴', '玩具乐器,乐器相关,电子琴', 878, 0),
(776, 825, 837, 879, '玩具乐器&nbsp;&gt;&nbsp;乐器相关&nbsp;&gt;&nbsp;手风琴', '玩具乐器,乐器相关,手风琴', 879, 0),
(777, 825, 837, 880, '玩具乐器&nbsp;&gt;&nbsp;乐器相关&nbsp;&gt;&nbsp;吉他/贝斯', '玩具乐器,乐器相关,吉他/贝斯', 880, 0),
(778, 825, 837, 881, '玩具乐器&nbsp;&gt;&nbsp;乐器相关&nbsp;&gt;&nbsp;民族管弦乐器', '玩具乐器,乐器相关,民族管弦乐器', 881, 0),
(779, 825, 837, 882, '玩具乐器&nbsp;&gt;&nbsp;乐器相关&nbsp;&gt;&nbsp;西洋管弦乐', '玩具乐器,乐器相关,西洋管弦乐', 882, 0),
(780, 825, 837, 883, '玩具乐器&nbsp;&gt;&nbsp;乐器相关&nbsp;&gt;&nbsp;口琴/口风琴/竖笛', '玩具乐器,乐器相关,口琴/口风琴/竖笛', 883, 0),
(781, 825, 837, 884, '玩具乐器&nbsp;&gt;&nbsp;乐器相关&nbsp;&gt;&nbsp;西洋打击乐器', '玩具乐器,乐器相关,西洋打击乐器', 884, 0),
(782, 825, 837, 885, '玩具乐器&nbsp;&gt;&nbsp;乐器相关&nbsp;&gt;&nbsp;各式乐器配件', '玩具乐器,乐器相关,各式乐器配件', 885, 0),
(783, 825, 837, 886, '玩具乐器&nbsp;&gt;&nbsp;乐器相关&nbsp;&gt;&nbsp;电脑音乐', '玩具乐器,乐器相关,电脑音乐', 886, 0),
(784, 825, 837, 887, '玩具乐器&nbsp;&gt;&nbsp;乐器相关&nbsp;&gt;&nbsp;工艺礼品乐器', '玩具乐器,乐器相关,工艺礼品乐器', 887, 0),
(785, 888, 889, 895, '厨具&nbsp;&gt;&nbsp;烹饪锅具&nbsp;&gt;&nbsp;炒锅', '厨具,烹饪锅具,炒锅', 895, 0),
(786, 888, 889, 896, '厨具&nbsp;&gt;&nbsp;烹饪锅具&nbsp;&gt;&nbsp;煎锅', '厨具,烹饪锅具,煎锅', 896, 0),
(787, 888, 889, 897, '厨具&nbsp;&gt;&nbsp;烹饪锅具&nbsp;&gt;&nbsp;压力锅', '厨具,烹饪锅具,压力锅', 897, 0),
(788, 888, 889, 898, '厨具&nbsp;&gt;&nbsp;烹饪锅具&nbsp;&gt;&nbsp;蒸锅', '厨具,烹饪锅具,蒸锅', 898, 0),
(789, 888, 889, 899, '厨具&nbsp;&gt;&nbsp;烹饪锅具&nbsp;&gt;&nbsp;汤锅', '厨具,烹饪锅具,汤锅', 899, 0),
(790, 888, 889, 900, '厨具&nbsp;&gt;&nbsp;烹饪锅具&nbsp;&gt;&nbsp;奶锅', '厨具,烹饪锅具,奶锅', 900, 0),
(791, 888, 889, 901, '厨具&nbsp;&gt;&nbsp;烹饪锅具&nbsp;&gt;&nbsp;套锅', '厨具,烹饪锅具,套锅', 901, 0),
(792, 888, 889, 902, '厨具&nbsp;&gt;&nbsp;烹饪锅具&nbsp;&gt;&nbsp;煲类', '厨具,烹饪锅具,煲类', 902, 0),
(793, 888, 889, 903, '厨具&nbsp;&gt;&nbsp;烹饪锅具&nbsp;&gt;&nbsp;水壶', '厨具,烹饪锅具,水壶', 903, 0),
(794, 888, 889, 904, '厨具&nbsp;&gt;&nbsp;烹饪锅具&nbsp;&gt;&nbsp;厨用杂件', '厨具,烹饪锅具,厨用杂件', 904, 0),
(795, 888, 890, 905, '厨具&nbsp;&gt;&nbsp;刀剪菜板&nbsp;&gt;&nbsp;单刀', '厨具,刀剪菜板,单刀', 905, 0),
(796, 888, 890, 906, '厨具&nbsp;&gt;&nbsp;刀剪菜板&nbsp;&gt;&nbsp;剪刀', '厨具,刀剪菜板,剪刀', 906, 0),
(797, 888, 890, 907, '厨具&nbsp;&gt;&nbsp;刀剪菜板&nbsp;&gt;&nbsp;套刀', '厨具,刀剪菜板,套刀', 907, 0),
(798, 888, 890, 908, '厨具&nbsp;&gt;&nbsp;刀剪菜板&nbsp;&gt;&nbsp;砧板', '厨具,刀剪菜板,砧板', 908, 0),
(799, 888, 890, 909, '厨具&nbsp;&gt;&nbsp;刀剪菜板&nbsp;&gt;&nbsp;刀具配件', '厨具,刀剪菜板,刀具配件', 909, 0),
(800, 888, 891, 910, '厨具&nbsp;&gt;&nbsp;收纳保鲜&nbsp;&gt;&nbsp;保鲜盒', '厨具,收纳保鲜,保鲜盒', 910, 0),
(801, 888, 891, 911, '厨具&nbsp;&gt;&nbsp;收纳保鲜&nbsp;&gt;&nbsp;保鲜膜/袋', '厨具,收纳保鲜,保鲜膜/袋', 911, 0),
(802, 888, 891, 912, '厨具&nbsp;&gt;&nbsp;收纳保鲜&nbsp;&gt;&nbsp;调料器皿', '厨具,收纳保鲜,调料器皿', 912, 0),
(803, 888, 891, 913, '厨具&nbsp;&gt;&nbsp;收纳保鲜&nbsp;&gt;&nbsp;饭盒/提锅', '厨具,收纳保鲜,饭盒/提锅', 913, 0),
(804, 888, 892, 914, '厨具&nbsp;&gt;&nbsp;水具酒具&nbsp;&gt;&nbsp;塑料杯', '厨具,水具酒具,塑料杯', 914, 0),
(805, 888, 892, 915, '厨具&nbsp;&gt;&nbsp;水具酒具&nbsp;&gt;&nbsp;运动水壶', '厨具,水具酒具,运动水壶', 915, 0),
(806, 888, 892, 916, '厨具&nbsp;&gt;&nbsp;水具酒具&nbsp;&gt;&nbsp;玻璃杯', '厨具,水具酒具,玻璃杯', 916, 0),
(807, 888, 892, 917, '厨具&nbsp;&gt;&nbsp;水具酒具&nbsp;&gt;&nbsp;陶瓷杯', '厨具,水具酒具,陶瓷杯', 917, 0),
(808, 888, 892, 918, '厨具&nbsp;&gt;&nbsp;水具酒具&nbsp;&gt;&nbsp;保温杯', '厨具,水具酒具,保温杯', 918, 0),
(809, 888, 892, 919, '厨具&nbsp;&gt;&nbsp;水具酒具&nbsp;&gt;&nbsp;保温壶', '厨具,水具酒具,保温壶', 919, 0),
(810, 888, 892, 920, '厨具&nbsp;&gt;&nbsp;水具酒具&nbsp;&gt;&nbsp;酒杯/套装', '厨具,水具酒具,酒杯/套装', 920, 0),
(811, 888, 892, 921, '厨具&nbsp;&gt;&nbsp;水具酒具&nbsp;&gt;&nbsp;酒具配件', '厨具,水具酒具,酒具配件', 921, 0),
(812, 888, 893, 922, '厨具&nbsp;&gt;&nbsp;餐具&nbsp;&gt;&nbsp;餐具套装', '厨具,餐具,餐具套装', 922, 0),
(813, 888, 893, 923, '厨具&nbsp;&gt;&nbsp;餐具&nbsp;&gt;&nbsp;碗/碟/盘', '厨具,餐具,碗/碟/盘', 923, 0),
(814, 888, 893, 924, '厨具&nbsp;&gt;&nbsp;餐具&nbsp;&gt;&nbsp;筷勺/刀叉', '厨具,餐具,筷勺/刀叉', 924, 0),
(815, 888, 893, 925, '厨具&nbsp;&gt;&nbsp;餐具&nbsp;&gt;&nbsp;一次性餐具', '厨具,餐具,一次性餐具', 925, 0),
(816, 888, 935, 936, '厨具&nbsp;&gt;&nbsp;茶具/咖啡具&nbsp;&gt;&nbsp;整套茶具', '厨具,茶具/咖啡具,整套茶具', 936, 0),
(817, 888, 935, 937, '厨具&nbsp;&gt;&nbsp;茶具/咖啡具&nbsp;&gt;&nbsp;茶杯', '厨具,茶具/咖啡具,茶杯', 937, 0),
(818, 888, 935, 938, '厨具&nbsp;&gt;&nbsp;茶具/咖啡具&nbsp;&gt;&nbsp;茶壶', '厨具,茶具/咖啡具,茶壶', 938, 0),
(819, 888, 935, 939, '厨具&nbsp;&gt;&nbsp;茶具/咖啡具&nbsp;&gt;&nbsp;茶盘茶托', '厨具,茶具/咖啡具,茶盘茶托', 939, 0),
(820, 888, 935, 940, '厨具&nbsp;&gt;&nbsp;茶具/咖啡具&nbsp;&gt;&nbsp;茶叶罐', '厨具,茶具/咖啡具,茶叶罐', 940, 0),
(821, 888, 935, 941, '厨具&nbsp;&gt;&nbsp;茶具/咖啡具&nbsp;&gt;&nbsp;茶具配件', '厨具,茶具/咖啡具,茶具配件', 941, 0),
(822, 888, 935, 942, '厨具&nbsp;&gt;&nbsp;茶具/咖啡具&nbsp;&gt;&nbsp;茶宠摆件', '厨具,茶具/咖啡具,茶宠摆件', 942, 0),
(823, 888, 935, 943, '厨具&nbsp;&gt;&nbsp;茶具/咖啡具&nbsp;&gt;&nbsp;咖啡具', '厨具,茶具/咖啡具,咖啡具', 943, 0),
(824, 888, 935, 944, '厨具&nbsp;&gt;&nbsp;茶具/咖啡具&nbsp;&gt;&nbsp;其他', '厨具,茶具/咖啡具,其他', 944, 0),
(825, 959, 960, 968, '母婴用品&nbsp;&gt;&nbsp;奶粉&nbsp;&gt;&nbsp;品牌奶粉', '母婴用品,奶粉,品牌奶粉', 968, 0),
(826, 959, 960, 969, '母婴用品&nbsp;&gt;&nbsp;奶粉&nbsp;&gt;&nbsp;妈妈奶粉', '母婴用品,奶粉,妈妈奶粉', 969, 0),
(827, 959, 960, 970, '母婴用品&nbsp;&gt;&nbsp;奶粉&nbsp;&gt;&nbsp;1段奶粉', '母婴用品,奶粉,1段奶粉', 970, 0),
(828, 959, 960, 971, '母婴用品&nbsp;&gt;&nbsp;奶粉&nbsp;&gt;&nbsp;2段奶粉', '母婴用品,奶粉,2段奶粉', 971, 0),
(829, 959, 960, 972, '母婴用品&nbsp;&gt;&nbsp;奶粉&nbsp;&gt;&nbsp;3段奶粉', '母婴用品,奶粉,3段奶粉', 972, 0),
(830, 959, 960, 973, '母婴用品&nbsp;&gt;&nbsp;奶粉&nbsp;&gt;&nbsp;4段奶粉', '母婴用品,奶粉,4段奶粉', 973, 0),
(831, 959, 960, 974, '母婴用品&nbsp;&gt;&nbsp;奶粉&nbsp;&gt;&nbsp;羊奶粉', '母婴用品,奶粉,羊奶粉', 974, 0),
(832, 959, 960, 975, '母婴用品&nbsp;&gt;&nbsp;奶粉&nbsp;&gt;&nbsp;特殊配方', '母婴用品,奶粉,特殊配方', 975, 0),
(833, 959, 960, 976, '母婴用品&nbsp;&gt;&nbsp;奶粉&nbsp;&gt;&nbsp;成人奶粉', '母婴用品,奶粉,成人奶粉', 976, 0),
(834, 959, 961, 977, '母婴用品&nbsp;&gt;&nbsp;营养辅食&nbsp;&gt;&nbsp;婴幼营养', '母婴用品,营养辅食,婴幼营养', 977, 0),
(835, 959, 961, 978, '母婴用品&nbsp;&gt;&nbsp;营养辅食&nbsp;&gt;&nbsp;初乳', '母婴用品,营养辅食,初乳', 978, 0),
(836, 959, 961, 979, '母婴用品&nbsp;&gt;&nbsp;营养辅食&nbsp;&gt;&nbsp;米粉/菜粉', '母婴用品,营养辅食,米粉/菜粉', 979, 0),
(837, 959, 961, 980, '母婴用品&nbsp;&gt;&nbsp;营养辅食&nbsp;&gt;&nbsp;果泥/果汁', '母婴用品,营养辅食,果泥/果汁', 980, 0),
(838, 959, 961, 981, '母婴用品&nbsp;&gt;&nbsp;营养辅食&nbsp;&gt;&nbsp;肉松/饼干', '母婴用品,营养辅食,肉松/饼干', 981, 0),
(839, 959, 961, 982, '母婴用品&nbsp;&gt;&nbsp;营养辅食&nbsp;&gt;&nbsp;辅食', '母婴用品,营养辅食,辅食', 982, 0),
(840, 959, 961, 983, '母婴用品&nbsp;&gt;&nbsp;营养辅食&nbsp;&gt;&nbsp;孕期营养', '母婴用品,营养辅食,孕期营养', 983, 0),
(841, 959, 961, 984, '母婴用品&nbsp;&gt;&nbsp;营养辅食&nbsp;&gt;&nbsp;清火/开胃', '母婴用品,营养辅食,清火/开胃', 984, 0),
(842, 959, 961, 985, '母婴用品&nbsp;&gt;&nbsp;营养辅食&nbsp;&gt;&nbsp;面条/粥', '母婴用品,营养辅食,面条/粥', 985, 0),
(843, 959, 962, 986, '母婴用品&nbsp;&gt;&nbsp;尿裤湿巾&nbsp;&gt;&nbsp;品牌尿裤', '母婴用品,尿裤湿巾,品牌尿裤', 986, 0),
(844, 959, 962, 987, '母婴用品&nbsp;&gt;&nbsp;尿裤湿巾&nbsp;&gt;&nbsp;新生儿', '母婴用品,尿裤湿巾,新生儿', 987, 0),
(845, 959, 962, 988, '母婴用品&nbsp;&gt;&nbsp;尿裤湿巾&nbsp;&gt;&nbsp;S号', '母婴用品,尿裤湿巾,S号', 988, 0),
(846, 959, 962, 989, '母婴用品&nbsp;&gt;&nbsp;尿裤湿巾&nbsp;&gt;&nbsp;M号', '母婴用品,尿裤湿巾,M号', 989, 0),
(847, 959, 962, 990, '母婴用品&nbsp;&gt;&nbsp;尿裤湿巾&nbsp;&gt;&nbsp;L号', '母婴用品,尿裤湿巾,L号', 990, 0),
(848, 959, 962, 991, '母婴用品&nbsp;&gt;&nbsp;尿裤湿巾&nbsp;&gt;&nbsp;XL/XXL号', '母婴用品,尿裤湿巾,XL/XXL号', 991, 0),
(849, 959, 962, 992, '母婴用品&nbsp;&gt;&nbsp;尿裤湿巾&nbsp;&gt;&nbsp;裤型尿裤', '母婴用品,尿裤湿巾,裤型尿裤', 992, 0),
(850, 959, 962, 993, '母婴用品&nbsp;&gt;&nbsp;尿裤湿巾&nbsp;&gt;&nbsp;湿巾', '母婴用品,尿裤湿巾,湿巾', 993, 0),
(851, 959, 962, 994, '母婴用品&nbsp;&gt;&nbsp;尿裤湿巾&nbsp;&gt;&nbsp;尿布/尿垫', '母婴用品,尿裤湿巾,尿布/尿垫', 994, 0),
(852, 959, 962, 995, '母婴用品&nbsp;&gt;&nbsp;尿裤湿巾&nbsp;&gt;&nbsp;成人尿裤', '母婴用品,尿裤湿巾,成人尿裤', 995, 0),
(853, 959, 963, 996, '母婴用品&nbsp;&gt;&nbsp;喂养用品&nbsp;&gt;&nbsp;奶瓶', '母婴用品,喂养用品,奶瓶', 996, 0),
(854, 959, 963, 997, '母婴用品&nbsp;&gt;&nbsp;喂养用品&nbsp;&gt;&nbsp;奶嘴', '母婴用品,喂养用品,奶嘴', 997, 0),
(855, 959, 963, 998, '母婴用品&nbsp;&gt;&nbsp;喂养用品&nbsp;&gt;&nbsp;吸奶器', '母婴用品,喂养用品,吸奶器', 998, 0),
(856, 959, 963, 999, '母婴用品&nbsp;&gt;&nbsp;喂养用品&nbsp;&gt;&nbsp;暖奶/消毒', '母婴用品,喂养用品,暖奶/消毒', 999, 0),
(857, 959, 963, 1000, '母婴用品&nbsp;&gt;&nbsp;喂养用品&nbsp;&gt;&nbsp;餐具', '母婴用品,喂养用品,餐具', 1000, 0),
(858, 959, 963, 1001, '母婴用品&nbsp;&gt;&nbsp;喂养用品&nbsp;&gt;&nbsp;水具', '母婴用品,喂养用品,水具', 1001, 0),
(859, 959, 963, 1002, '母婴用品&nbsp;&gt;&nbsp;喂养用品&nbsp;&gt;&nbsp;牙胶/安抚', '母婴用品,喂养用品,牙胶/安抚', 1002, 0),
(860, 959, 963, 1003, '母婴用品&nbsp;&gt;&nbsp;喂养用品&nbsp;&gt;&nbsp;辅助用品', '母婴用品,喂养用品,辅助用品', 1003, 0),
(861, 959, 964, 1004, '母婴用品&nbsp;&gt;&nbsp;洗护用品&nbsp;&gt;&nbsp;宝宝护肤', '母婴用品,洗护用品,宝宝护肤', 1004, 0),
(862, 959, 964, 1005, '母婴用品&nbsp;&gt;&nbsp;洗护用品&nbsp;&gt;&nbsp;洗浴用品', '母婴用品,洗护用品,洗浴用品', 1005, 0),
(863, 959, 964, 1006, '母婴用品&nbsp;&gt;&nbsp;洗护用品&nbsp;&gt;&nbsp;洗发沐浴', '母婴用品,洗护用品,洗发沐浴', 1006, 0),
(864, 959, 964, 1007, '母婴用品&nbsp;&gt;&nbsp;洗护用品&nbsp;&gt;&nbsp;清洁用品', '母婴用品,洗护用品,清洁用品', 1007, 0),
(865, 959, 964, 1008, '母婴用品&nbsp;&gt;&nbsp;洗护用品&nbsp;&gt;&nbsp;护理用品', '母婴用品,洗护用品,护理用品', 1008, 0),
(866, 959, 964, 1009, '母婴用品&nbsp;&gt;&nbsp;洗护用品&nbsp;&gt;&nbsp;妈妈护肤', '母婴用品,洗护用品,妈妈护肤', 1009, 0),
(867, 959, 965, 1010, '母婴用品&nbsp;&gt;&nbsp;童车童床&nbsp;&gt;&nbsp;婴儿推车', '母婴用品,童车童床,婴儿推车', 1010, 0),
(868, 959, 965, 1011, '母婴用品&nbsp;&gt;&nbsp;童车童床&nbsp;&gt;&nbsp;餐椅摇椅', '母婴用品,童车童床,餐椅摇椅', 1011, 0),
(869, 959, 965, 1012, '母婴用品&nbsp;&gt;&nbsp;童车童床&nbsp;&gt;&nbsp;婴儿床', '母婴用品,童车童床,婴儿床', 1012, 0),
(870, 959, 965, 1013, '母婴用品&nbsp;&gt;&nbsp;童车童床&nbsp;&gt;&nbsp;学步车', '母婴用品,童车童床,学步车', 1013, 0),
(871, 959, 965, 1014, '母婴用品&nbsp;&gt;&nbsp;童车童床&nbsp;&gt;&nbsp;三轮车', '母婴用品,童车童床,三轮车', 1014, 0),
(872, 959, 965, 1015, '母婴用品&nbsp;&gt;&nbsp;童车童床&nbsp;&gt;&nbsp;自行车', '母婴用品,童车童床,自行车', 1015, 0),
(873, 959, 965, 1016, '母婴用品&nbsp;&gt;&nbsp;童车童床&nbsp;&gt;&nbsp;电动车', '母婴用品,童车童床,电动车', 1016, 0),
(874, 959, 965, 1017, '母婴用品&nbsp;&gt;&nbsp;童车童床&nbsp;&gt;&nbsp;健身车', '母婴用品,童车童床,健身车', 1017, 0),
(875, 959, 965, 1018, '母婴用品&nbsp;&gt;&nbsp;童车童床&nbsp;&gt;&nbsp;安全座椅', '母婴用品,童车童床,安全座椅', 1018, 0),
(876, 959, 966, 1019, '母婴用品&nbsp;&gt;&nbsp;服饰寝居&nbsp;&gt;&nbsp;婴儿外出服', '母婴用品,服饰寝居,婴儿外出服', 1019, 0),
(877, 959, 966, 1020, '母婴用品&nbsp;&gt;&nbsp;服饰寝居&nbsp;&gt;&nbsp;婴儿内衣', '母婴用品,服饰寝居,婴儿内衣', 1020, 0),
(878, 959, 966, 1021, '母婴用品&nbsp;&gt;&nbsp;服饰寝居&nbsp;&gt;&nbsp;婴儿礼盒', '母婴用品,服饰寝居,婴儿礼盒', 1021, 0),
(879, 959, 966, 1022, '母婴用品&nbsp;&gt;&nbsp;服饰寝居&nbsp;&gt;&nbsp;婴儿鞋帽袜', '母婴用品,服饰寝居,婴儿鞋帽袜', 1022, 0),
(880, 959, 966, 1023, '母婴用品&nbsp;&gt;&nbsp;服饰寝居&nbsp;&gt;&nbsp;安全防护', '母婴用品,服饰寝居,安全防护', 1023, 0),
(881, 959, 966, 1024, '母婴用品&nbsp;&gt;&nbsp;服饰寝居&nbsp;&gt;&nbsp;家居床品', '母婴用品,服饰寝居,家居床品', 1024, 0),
(882, 959, 966, 1025, '母婴用品&nbsp;&gt;&nbsp;服饰寝居&nbsp;&gt;&nbsp;其他', '母婴用品,服饰寝居,其他', 1025, 0),
(883, 959, 967, 1026, '母婴用品&nbsp;&gt;&nbsp;妈妈专区&nbsp;&gt;&nbsp;包/背婴带', '母婴用品,妈妈专区,包/背婴带', 1026, 0),
(884, 959, 967, 1027, '母婴用品&nbsp;&gt;&nbsp;妈妈专区&nbsp;&gt;&nbsp;妈妈护理', '母婴用品,妈妈专区,妈妈护理', 1027, 0),
(885, 959, 967, 1028, '母婴用品&nbsp;&gt;&nbsp;妈妈专区&nbsp;&gt;&nbsp;产后塑身', '母婴用品,妈妈专区,产后塑身', 1028, 0),
(886, 959, 967, 1029, '母婴用品&nbsp;&gt;&nbsp;妈妈专区&nbsp;&gt;&nbsp;孕妇内衣', '母婴用品,妈妈专区,孕妇内衣', 1029, 0),
(887, 959, 967, 1030, '母婴用品&nbsp;&gt;&nbsp;妈妈专区&nbsp;&gt;&nbsp;防辐射服', '母婴用品,妈妈专区,防辐射服', 1030, 0),
(888, 959, 967, 1031, '母婴用品&nbsp;&gt;&nbsp;妈妈专区&nbsp;&gt;&nbsp;孕妇装', '母婴用品,妈妈专区,孕妇装', 1031, 0),
(889, 959, 967, 1032, '母婴用品&nbsp;&gt;&nbsp;妈妈专区&nbsp;&gt;&nbsp;孕妇食品', '母婴用品,妈妈专区,孕妇食品', 1032, 0),
(890, 959, 967, 1033, '母婴用品&nbsp;&gt;&nbsp;妈妈专区&nbsp;&gt;&nbsp;妈妈美容', '母婴用品,妈妈专区,妈妈美容', 1033, 0),
(891, 1037, 1041, 1044, '虚拟充值&nbsp;&gt;&nbsp;充值&nbsp;&gt;&nbsp;手机充值', '虚拟充值,充值,手机充值', 1044, 0),
(892, 1037, 1042, 1045, '虚拟充值&nbsp;&gt;&nbsp;游戏&nbsp;&gt;&nbsp;游戏点卡', '虚拟充值,游戏,游戏点卡', 1045, 0),
(893, 1037, 1042, 1046, '虚拟充值&nbsp;&gt;&nbsp;游戏&nbsp;&gt;&nbsp;QQ充值', '虚拟充值,游戏,QQ充值', 1046, 0),
(894, 1037, 1043, 1047, '虚拟充值&nbsp;&gt;&nbsp;票务&nbsp;&gt;&nbsp;电影票', '虚拟充值,票务,电影票', 1047, 0),
(895, 1037, 1043, 1048, '虚拟充值&nbsp;&gt;&nbsp;票务&nbsp;&gt;&nbsp;演唱会', '虚拟充值,票务,演唱会', 1048, 0),
(896, 1037, 1043, 1049, '虚拟充值&nbsp;&gt;&nbsp;票务&nbsp;&gt;&nbsp;话剧/歌剧/音乐剧', '虚拟充值,票务,话剧/歌剧/音乐剧', 1049, 0),
(897, 1037, 1043, 1050, '虚拟充值&nbsp;&gt;&nbsp;票务&nbsp;&gt;&nbsp;体育赛事', '虚拟充值,票务,体育赛事', 1050, 0),
(898, 1037, 1043, 1051, '虚拟充值&nbsp;&gt;&nbsp;票务&nbsp;&gt;&nbsp;舞蹈芭蕾', '虚拟充值,票务,舞蹈芭蕾', 1051, 0),
(899, 1037, 1043, 1052, '虚拟充值&nbsp;&gt;&nbsp;票务&nbsp;&gt;&nbsp;戏曲综艺', '虚拟充值,票务,戏曲综艺', 1052, 0);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_goods_combo`
--

CREATE TABLE IF NOT EXISTS `yunpay_goods_combo` (
  `combo_id` int(10) unsigned NOT NULL COMMENT '推荐组合id ',
  `goods_id` int(10) unsigned NOT NULL COMMENT '主商品id',
  `goods_commonid` int(10) unsigned NOT NULL COMMENT '主商品公共id',
  `combo_goodsid` int(10) unsigned NOT NULL COMMENT '推荐组合商品id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品推荐组合表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_goods_common`
--

CREATE TABLE IF NOT EXISTS `yunpay_goods_common` (
  `goods_commonid` int(10) unsigned NOT NULL COMMENT '商品公共表id',
  `goods_name` varchar(50) NOT NULL COMMENT '商品名称',
  `goods_jingle` varchar(150) NOT NULL COMMENT '商品广告词',
  `gc_id` int(10) unsigned NOT NULL COMMENT '商品分类',
  `gc_id_1` int(10) unsigned NOT NULL COMMENT '一级分类id',
  `gc_id_2` int(10) unsigned NOT NULL COMMENT '二级分类id',
  `gc_id_3` int(10) unsigned NOT NULL COMMENT '三级分类id',
  `gc_name` varchar(200) NOT NULL COMMENT '商品分类',
  `store_id` int(10) unsigned NOT NULL COMMENT '店铺id',
  `store_name` varchar(50) NOT NULL COMMENT '店铺名称',
  `spec_name` varchar(255) NOT NULL COMMENT '规格名称',
  `spec_value` text NOT NULL COMMENT '规格值',
  `brand_id` int(10) unsigned NOT NULL COMMENT '品牌id',
  `brand_name` varchar(100) NOT NULL COMMENT '品牌名称',
  `type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '类型id',
  `goods_image` varchar(100) NOT NULL COMMENT '商品主图',
  `goods_attr` text NOT NULL COMMENT '商品属性',
  `goods_body` text NOT NULL COMMENT '商品内容',
  `mobile_body` text NOT NULL COMMENT '手机端商品描述',
  `goods_state` tinyint(3) unsigned NOT NULL COMMENT '商品状态 0下架，1正常，10违规（禁售）',
  `goods_stateremark` varchar(255) DEFAULT NULL COMMENT '违规原因',
  `goods_verify` tinyint(3) unsigned NOT NULL COMMENT '商品审核 1通过，0未通过，10审核中',
  `goods_verifyremark` varchar(255) DEFAULT NULL COMMENT '审核失败原因',
  `goods_lock` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '商品锁定 0未锁，1已锁',
  `goods_addtime` int(10) unsigned NOT NULL COMMENT '商品添加时间',
  `goods_selltime` int(10) unsigned NOT NULL COMMENT '上架时间',
  `goods_specname` text NOT NULL COMMENT '规格名称序列化（下标为规格id）',
  `goods_price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `goods_marketprice` decimal(10,2) NOT NULL COMMENT '市场价',
  `goods_costprice` decimal(10,2) NOT NULL COMMENT '成本价',
  `goods_discount` float unsigned NOT NULL COMMENT '折扣',
  `goods_serial` varchar(50) NOT NULL COMMENT '商家编号',
  `goods_storage_alarm` tinyint(3) unsigned NOT NULL COMMENT '库存报警值',
  `transport_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '运费模板',
  `transport_title` varchar(60) NOT NULL DEFAULT '' COMMENT '运费模板名称',
  `goods_commend` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '商品推荐 1是，0否，默认为0',
  `goods_freight` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '运费 0为免运费',
  `goods_vat` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否开具增值税发票 1是，0否',
  `areaid_1` int(10) unsigned NOT NULL COMMENT '一级地区id',
  `areaid_2` int(10) unsigned NOT NULL COMMENT '二级地区id',
  `goods_stcids` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺分类id 首尾用,隔开',
  `plateid_top` int(10) unsigned DEFAULT NULL COMMENT '顶部关联板式',
  `plateid_bottom` int(10) unsigned DEFAULT NULL COMMENT '底部关联板式',
  `is_virtual` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为虚拟商品 1是，0否',
  `virtual_indate` int(10) unsigned DEFAULT NULL COMMENT '虚拟商品有效期',
  `virtual_limit` tinyint(3) unsigned DEFAULT NULL COMMENT '虚拟商品购买上限',
  `virtual_invalid_refund` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否允许过期退款， 1是，0否',
  `is_fcode` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为F码商品 1是，0否',
  `is_appoint` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否是预约商品 1是，0否',
  `appoint_satedate` int(10) unsigned NOT NULL COMMENT '预约商品出售时间',
  `is_presell` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否是预售商品 1是，0否',
  `presell_deliverdate` int(10) unsigned NOT NULL COMMENT '预售商品发货时间',
  `is_own_shop` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为平台自营'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品公共内容表';

--
-- 转存表中的数据 `yunpay_goods_common`
--

INSERT INTO `yunpay_goods_common` (`goods_commonid`, `goods_name`, `goods_jingle`, `gc_id`, `gc_id_1`, `gc_id_2`, `gc_id_3`, `gc_name`, `store_id`, `store_name`, `spec_name`, `spec_value`, `brand_id`, `brand_name`, `type_id`, `goods_image`, `goods_attr`, `goods_body`, `mobile_body`, `goods_state`, `goods_stateremark`, `goods_verify`, `goods_verifyremark`, `goods_lock`, `goods_addtime`, `goods_selltime`, `goods_specname`, `goods_price`, `goods_marketprice`, `goods_costprice`, `goods_discount`, `goods_serial`, `goods_storage_alarm`, `transport_id`, `transport_title`, `goods_commend`, `goods_freight`, `goods_vat`, `areaid_1`, `areaid_2`, `goods_stcids`, `plateid_top`, `plateid_bottom`, `is_virtual`, `virtual_indate`, `virtual_limit`, `virtual_invalid_refund`, `is_fcode`, `is_appoint`, `appoint_satedate`, `is_presell`, `presell_deliverdate`, `is_own_shop`) VALUES
(1, '不要钱', '', 230, 3, 202, 230, '家居家装 &gt;生活日用 &gt;浴室用品', 1, '总店', 'N;', 'N;', 0, '', 0, '1_05202170949573795.png', 'N;', '', '', 1, NULL, 1, NULL, 0, 1466873101, 0, '', '1.00', '1.00', '0.00', 100, '', 0, 0, '', 1, '0.00', 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_goods_fcode`
--

CREATE TABLE IF NOT EXISTS `yunpay_goods_fcode` (
  `fc_id` int(10) unsigned NOT NULL COMMENT 'F码id',
  `goods_commonid` int(10) unsigned NOT NULL COMMENT '商品公共id',
  `fc_code` varchar(20) NOT NULL COMMENT 'F码',
  `fc_state` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态 0未使用，1已使用'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品F码';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_goods_gift`
--

CREATE TABLE IF NOT EXISTS `yunpay_goods_gift` (
  `gift_id` int(10) unsigned NOT NULL COMMENT '赠品id ',
  `goods_id` int(10) unsigned NOT NULL COMMENT '主商品id',
  `goods_commonid` int(10) unsigned NOT NULL COMMENT '主商品公共id',
  `gift_goodsid` int(10) unsigned NOT NULL COMMENT '赠品商品id ',
  `gift_goodsname` varchar(50) NOT NULL COMMENT '主商品名称',
  `gift_goodsimage` varchar(100) NOT NULL COMMENT '主商品图片',
  `gift_amount` tinyint(3) unsigned NOT NULL COMMENT '赠品数量'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品赠品表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_goods_images`
--

CREATE TABLE IF NOT EXISTS `yunpay_goods_images` (
  `goods_image_id` int(10) unsigned NOT NULL COMMENT '商品图片id',
  `goods_commonid` int(10) unsigned NOT NULL COMMENT '商品公共内容id',
  `store_id` int(10) unsigned NOT NULL COMMENT '店铺id',
  `color_id` int(10) unsigned NOT NULL COMMENT '颜色规格值id',
  `goods_image` varchar(1000) NOT NULL COMMENT '商品图片',
  `goods_image_sort` tinyint(3) unsigned NOT NULL COMMENT '排序',
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '默认主题，1是，0否'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品图片';

--
-- 转存表中的数据 `yunpay_goods_images`
--

INSERT INTO `yunpay_goods_images` (`goods_image_id`, `goods_commonid`, `store_id`, `color_id`, `goods_image`, `goods_image_sort`, `is_default`) VALUES
(1, 1, 1, 0, '1_05202170949573795.png', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_help`
--

CREATE TABLE IF NOT EXISTS `yunpay_help` (
  `help_id` int(10) unsigned NOT NULL COMMENT '帮助ID',
  `help_sort` tinyint(1) unsigned DEFAULT '255' COMMENT '排序',
  `help_title` varchar(100) NOT NULL COMMENT '标题',
  `help_info` text COMMENT '帮助内容',
  `help_url` varchar(100) DEFAULT '' COMMENT '跳转链接',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间',
  `type_id` int(10) unsigned NOT NULL COMMENT '帮助类型',
  `page_show` tinyint(1) unsigned DEFAULT '1' COMMENT '页面类型:1为店铺,2为会员,默认为1'
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='帮助内容表';

--
-- 转存表中的数据 `yunpay_help`
--

INSERT INTO `yunpay_help` (`help_id`, `help_sort`, `help_title`, `help_info`, `help_url`, `update_time`, `type_id`, `page_show`) VALUES
(96, 1, '招商方向', '<p>\r\n  <strong>2014年开放平台招商方向</strong> \r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<h1>\r\n  1.&nbsp;&nbsp;&nbsp; 品牌\r\n</h1>\r\n<p>\r\n <br />\r\n</p>\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 国际国内知名品牌<br />\r\n<p>\r\n  &nbsp; &nbsp; &nbsp; &nbsp;开放平台将一如既往的最大程度地维护卖家的品牌利益，尊重品牌传统和内涵，欢迎优质品牌旗\r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<p>\r\n 舰店入驻，请参见《2014年开放平台重点招募品牌》。\r\n</p>\r\n<h1>\r\n  <br />\r\n</h1>\r\n<h1>\r\n 2.&nbsp;&nbsp;&nbsp; 货品\r\n</h1>\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 能够满足用户群体优质、有特色的货品。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 根据类目结构细分的货品配置。类目规划详见《2014年开放平台类目一览表》。<br />\r\n<h1>\r\n  3.&nbsp;&nbsp; 垂直电商\r\n</h1>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n &nbsp; &nbsp; &nbsp; 开放平台欢迎垂直类电商入驻。开放平台愿意和专业的垂直电商企业分享其优质用户群体，\r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<p>\r\n 并且欢迎垂直电商为用户提供该领域专业的货品及服务。\r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>', '', 1399284217, 1, 1),
(97, 2, '招商标准', '<p>\n  <br />\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  本标准适用于除虚拟业务（包括但不限于旅游、酒店、票务、充值、彩票）外的平台开放平台所有卖家。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  <br />\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  <b>第一章 入驻</b><b></b> \n</p>\n<p class="MsoNormal" style="text-align:left;">\n 1.1&nbsp;&nbsp;&nbsp; 平台开放平台暂未授权任何机构进行代理招商服务，入驻申请流程及相关的收费说明均以平台开放平台官方招商页面为准。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  1.2 &nbsp;&nbsp; 平台开放平台有权根据包括但不限于品牌需求、公司经营状况、服务水平等其他因素退回卖家申请。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 1.3 &nbsp;&nbsp; 平台开放平台有权在申请入驻及后续经营阶段要求卖家提供其他资质。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  1.4 &nbsp;&nbsp; 平台开放平台将结合各行业发展动态、国家相关规定及消费者购买需求，不定期更新招商标准。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 1.5 &nbsp;&nbsp; 卖家必须如实提供资料和信息：\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 1.5.1 请务必确保申请入驻及后续经营阶段提供的相关资质和信息的真实性、完整性、有效性（若卖家提供的相关资质为第三方提供，包括但不限于商标注册证、授权书\n等，请务必先行核实文件的真实有效完整性），一旦发现虚假资质或信息的，平台开放平台将不再与卖家进行合作并有权根据平台开放平台规则及与卖家签署的相关 协议之约定进行处理；\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  1.5.2&nbsp; 卖家应如实提供其店铺运营的主体及相关信息，包括但不限于店铺实际经营主体、代理运营公司等信息；\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  1.5.3&nbsp; 平台开放平台关于卖家信息和资料变更有相关规定的从其规定，但卖家如变更<span>1.5.2</span>项所列信息，应提前十日书面告知平台；如未提前告知平台，平台将根据平台开放平台规则进行处理。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 1.6&nbsp;&nbsp;&nbsp; 平台开放平台暂不接受个体工商户的入驻申请，卖家须为正式注册企业，亦暂时不接受非中国大陆注册企业的入驻申请。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 1.7&nbsp;&nbsp;&nbsp; 平台开放平台暂不接受未取得国家商标总局颁发的商标注册证或商标受理通知书的品牌开店申请，亦不接受纯图形类商标的入驻申请。卖家提供商标受理通知书（<span>TM</span>状态商标）的，注册申请时间须满六个月。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n <br />\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  <b>第二章 平台店铺类型及相关要求</b><b></b> \n</p>\n<p class="MsoNormal" style="text-align:left;">\n  2.1&nbsp;&nbsp;&nbsp;&nbsp; 旗舰店，卖家以自有品牌（商标为<span>R</span>或<span>TM</span>状态），或由权利人出具的在平台开放平台开设品牌旗舰店的授权文件（授权文件中应明确排他性、不可撤销性），入驻平台开放平台开设的店铺。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  2.1.1&nbsp; 旗舰店，可以有以下几种情形：\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  经营一个自有品牌（商标为<span>R</span>或<span>TM</span>状态）商品入驻平台开放平台的卖家旗舰店，（自有品牌是指商标权利归卖家所有，自有品牌的子品牌可以放入旗舰店，主、子品牌的商标权利人应为同一实际控制人）；\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 经营已获得明确排他性授权的一个品牌商品入驻平台开放平台的卖家旗舰店；\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  卖场型品牌（服务类商标）商标权人开设的旗舰店；\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 2.1.2&nbsp; 开店主体必须是品牌（商标）权利人或持有权利人出具的开设平台开放平台旗舰店排他性授权文件的被授权企业。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  2.2&nbsp;&nbsp;&nbsp;&nbsp; 专卖店，卖家持他人品牌（商标为<span>R</span>或<span>TM</span>状态）授权文件在平台开放平台开设的店铺。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 2.2.1&nbsp; 专卖店类型：经营一个或多个授权品牌商品（多个授权品牌的商标权人应为同一实际控制人）但未获得旗舰店排他授权入驻平台开放平台的卖家专卖店；\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 2.2.2 &nbsp; 品牌（商标）权利人出具的授权文件不应有地域限制。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 2.3&nbsp;&nbsp;&nbsp;&nbsp; 专营店，经营平台开放平台相同一级经营类目下两个及以上他人或自有品牌（商标为<span>R</span>或<span>TM</span>状态）商品的店铺。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  2.3.1&nbsp; 专营店，可以有以下几种情形：\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  相同一级类目下经营两个及以上他人品牌商品入驻平台开放平台的卖家专营店；\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 相同一级类目下既经营他人品牌商品又经营自有品牌商品入驻平台开放平台的卖家专营店。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  2.4 &nbsp; &nbsp; 各类型店铺命名详细说明，请见<span>《平台开放平台卖家店铺命名规则》。</span> \n</p>\n<p class="MsoNormal" style="text-align:left;">\n <br />\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  <b>第三章 平台申请入驻资质标准</b><b></b> \n</p>\n<p class="MsoNormal" style="text-align:left;">\n 3.1&nbsp;&nbsp;&nbsp; 平台开放平台申请入驻资质标准详见<span>《平台开放平台招商资质标准细则》。</span> \n</p>\n<p class="MsoNormal" style="text-align:left;">\n <br />\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  <b>第四章 开店入驻限制</b><b></b> \n</p>\n<p class="MsoNormal" style="text-align:left;">\n 4.1&nbsp;&nbsp;&nbsp; 品牌入驻限制：\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 4.1.1 与平台平台已有的自有品牌、频道、业务、类目等相同或相似名称的品牌；\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 4.1.2&nbsp; 包含行业名称或通用名称的品牌；\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 4.1.3&nbsp; 包含知名人士、地名的品牌；\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 4.1.4&nbsp; 与知名品牌相同或近似的品牌。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  4.2&nbsp;&nbsp;&nbsp;&nbsp; 经营类目限制，卖家开店所经营的类目应当符合平台开放平台的相关标准，详细请参考<span>《平台开放平台经营类目资费一览表》。</span> \n</p>\n<p class="MsoNormal" style="text-align:left;">\n  4.3同一主体入驻的店铺限制：\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 4.3.1&nbsp; 单个店铺只可对应一种经营模式。各经营模式内容请参考与卖家签署的对应合同；\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  4.3.2&nbsp; 同一主体开设若干店铺的，经营模式总计不得超过两种，且须在开展第二种经营模式时提前<span>10</span>日向平台进行书面申请；\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  4.3.3&nbsp; 商品重合度：要求店铺间经营的品牌及商品不得重复，<span>4.3.2</span>项下经过平台审批的店铺不受此项约束。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  4.4&nbsp;&nbsp;&nbsp;&nbsp; 同一主体重新入驻平台开放平台限制：\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 4.4.1&nbsp; 严重违规、资质造假被平台清退的，永久限制入驻；\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 4.4.2&nbsp; 若卖家一自然年内主动退出<span>2</span>次，则自最后一次完成退出之日起<span>12</span>个月内限制入驻。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  4.5&nbsp;&nbsp;&nbsp;&nbsp; 续签限制：须在每年<span>3</span>月<span>1</span>日<span>18</span>时之前完成续签申请的提交，每年<span>3</span>月<span>20</span>日<span>18</span>时之前完成平台使用费的缴纳，如果上一年及下一年资费及资料未补足，平台将在每年<span>3</span>月<span>31</span>日<span>24</span>时终止店铺服务并下架商品。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  <br />\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  <b>第五章 平台开放平台保证金<span>/</span>平台使用费<span>/</span>费率标准</b><b></b> \n</p>\n<p class="MsoNormal" style="text-align:left;">\n 5.1 &nbsp; &nbsp; 保证金：卖家向平台缴纳的用以保证店铺规范运营及对商品和服务质量进行担保的金额。当卖家发生违约、违规行为时，平台可以依照与卖家签署的协议中相关约定及平台开放平台规则扣除相应金额的保证金作为违约金或给予买家的赔偿。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 5.1.1&nbsp; 保证金的补足、退还、扣除等依据卖家签署的相关协议及平台开放平台规则约定办理；\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  5.1.2&nbsp; 平台开放平台各经营类目对应的保证金标准详见<span>《平台开放平台经营类目资费一览表》。</span> \n</p>\n<p class="MsoNormal" style="text-align:left;">\n 5.2&nbsp;&nbsp;&nbsp;&nbsp; 平台使用费：卖家依照与平台签署的相关协议使用平台开放平台各项服务时缴纳的固定技术服务费用。平台开放平台各经营类目对应的平台使用费标准详见<span>《平台开放平台经营类目资费一览表》。</span>续签卖家的续展服务期间对应平台使用费须在每年<span>3</span>月<span>20</span>日<span>18</span>时前一次性缴纳；新签卖家须在申请入驻获得批准时一次性缴纳相应服务期间的平台使用费。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  5.2.1&nbsp;&nbsp; 平台使用费结算：\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  5.2.1.1卖家主动要求停止店铺服务的不返还平台使用费；\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 5.2.1.2卖家因违规行为或资质造假被清退的不返还平台使用费；\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  5.2.1.3每个店铺的平台使用费依据相应的服务期计算并缴纳。服务开通之日在每月的<span>1</span>日至<span>15</span>日（含）间的，开通当月按一个月收取平台使用费，服务开通之日在每月的<span>16</span>日（含）至月底最后一日间的，开通当月不收取平台使用费；\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 5.2.1.4拥有独立店铺<span>ID</span>的为一个店铺，若卖家根据经营情况须开通多个店铺的，须按照店铺数量缴纳相应的平台使用费。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 5.3&nbsp;&nbsp;&nbsp;&nbsp; 费率：卖家根据经营类目在达成每一单交易时按比例（该比例在与卖家签署的相关协议中称为“技术服务费费率”或“毛利保证率”）向平台缴纳的费用。平台开放平台各经营模式各经营类目对应的费率标准详见<span>《平台开放平台经营类目资费一览表》。 </span> \n</p>\n<p class="MsoNormal" style="text-align:left;">\n  <br />\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  <b>第六章 店铺服务期</b><b></b> \n</p>\n<p class="MsoNormal" style="text-align:left;">\n  6.1&nbsp;&nbsp;&nbsp;&nbsp; 卖家每个店铺的第一个服务期自服务开通之日起至最先到达的<span>3</span>月<span>31</span>日止，第二个服务期自<span>4</span>月<span>1</span>日起至次年<span>3</span>月<span>31</span>日止，第三个、第四个……服务期以此类推，以一年为周期，除非店铺或与卖家签署的相关协议提前终止。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  6.2&nbsp;&nbsp;&nbsp;&nbsp; 卖家每个店铺的服务开通之日以平台通知或系统记录的时间为准。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 6.3&nbsp;&nbsp;&nbsp;&nbsp; 卖家应在店铺每个服务期届满前<span>30</span>日向甲方提出续展的申请，缴纳续展服务期的平台使用费和提交其经营所需的全部有效资质，并经平台审核。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 6.4&nbsp;&nbsp;&nbsp;&nbsp; 卖家未提出续展申请或申请未通过平台审核的，自店铺服务期满之日起，平台开放平台将不再向卖家提供该店铺的任何服务。\n</p>\n<p class="MsoNormal" style="text-align:left;">\n <br />\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  发布日期：<span>2014</span>年<span>11</span>月<span>19</span>日\n</p>\n<p class="MsoNormal" style="text-align:left;">\n 生效日期：<span>2014</span>年<span>1</span>月<span>1</span>日\n</p>\n<p class="MsoNormal" style="text-align:left;">\n <br />\n</p>\n<p class="MsoNormal" style="text-align:left;">\n  <a name="help2267" id="help2267"></a><b>平台开放平台招商资质标准细则</b><b></b> \n</p>\n<p class="MsoNormal">\n <span></span>&nbsp;\n</p>\n<img src="../data/upload/shop/article/help_store_04526250486031950.jpg" alt="image" /><img src="../data/upload/shop/article/help_store_04526250486031950.jpg" alt="image" /><img src="../data/upload/shop/article/help_store_04526250471329237.jpg" alt="image" />', '', 1399281053, 1, 1),
(98, 3, '资质要求', '<p>\r\n  </p><p class="MsoNormal" style="text-align:left;">\r\n    <br />\r\n  </p>\r\n  <p class="MsoNormal" style="text-align:left;">\r\n    <a name="undefined" id="undefined"></a><b>平台开放平台招商资质标准细则</b> \r\n </p>\r\n  <p class="MsoNormal">\r\n   <span></span>&nbsp;\r\n </p>\r\n<img src="../data/upload/shop/article/help_store_04526250486031950.jpg" alt="image" /><img src="../data/upload/shop/article/help_store_04526250486031950.jpg" alt="image" /><img src="../data/upload/shop/article/help_store_04526250471329237.jpg" alt="image" />\r\n\r\n<p class="MsoNormal" style="text-align:left;">\r\n  本标准适用于除虚拟业务（包括但不限于旅游、酒店、票务、充值、彩票）外的平台开放平台所有卖家。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  <br />\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  <b>第一章 入驻</b> \r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  1.1&nbsp;&nbsp;&nbsp; 平台开放平台暂未授权任何机构进行代理招商服务，入驻申请流程及相关的收费说明均以平台开放平台官方招商页面为准。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  1.2 &nbsp;&nbsp; 平台开放平台有权根据包括但不限于品牌需求、公司经营状况、服务水平等其他因素退回卖家申请。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 1.3 &nbsp;&nbsp; 平台开放平台有权在申请入驻及后续经营阶段要求卖家提供其他资质。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  1.4 &nbsp;&nbsp; 平台开放平台将结合各行业发展动态、国家相关规定及消费者购买需求，不定期更新招商标准。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 1.5 &nbsp;&nbsp; 卖家必须如实提供资料和信息：\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 1.5.1 请务必确保申请入驻及后续经营阶段提供的相关资质和信息的真实性、完整性、有效性（若卖家提供的相关资质为第三方提供，包括但不限于商标注册证、授权书\r\n等，请务必先行核实文件的真实有效完整性），一旦发现虚假资质或信息的，平台开放平台将不再与卖家进行合作并有权根据平台开放平台规则及与卖家签署的相关 协议之约定进行处理；\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  1.5.2&nbsp; 卖家应如实提供其店铺运营的主体及相关信息，包括但不限于店铺实际经营主体、代理运营公司等信息；\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  1.5.3&nbsp; 平台开放平台关于卖家信息和资料变更有相关规定的从其规定，但卖家如变更<span>1.5.2</span>项所列信息，应提前十日书面告知平台；如未提前告知平台，平台将根据平台开放平台规则进行处理。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 1.6&nbsp;&nbsp;&nbsp; 平台开放平台暂不接受个体工商户的入驻申请，卖家须为正式注册企业，亦暂时不接受非中国大陆注册企业的入驻申请。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 1.7&nbsp;&nbsp;&nbsp; 平台开放平台暂不接受未取得国家商标总局颁发的商标注册证或商标受理通知书的品牌开店申请，亦不接受纯图形类商标的入驻申请。卖家提供商标受理通知书（<span>TM</span>状态商标）的，注册申请时间须满六个月。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n <br />\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  <b>第二章 平台店铺类型及相关要求</b> \r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 2.1&nbsp;&nbsp;&nbsp;&nbsp; 旗舰店，卖家以自有品牌（商标为<span>R</span>或<span>TM</span>状态），或由权利人出具的在平台开放平台开设品牌旗舰店的授权文件（授权文件中应明确排他性、不可撤销性），入驻平台开放平台开设的店铺。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  2.1.1&nbsp; 旗舰店，可以有以下几种情形：\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  经营一个自有品牌（商标为<span>R</span>或<span>TM</span>状态）商品入驻平台开放平台的卖家旗舰店，（自有品牌是指商标权利归卖家所有，自有品牌的子品牌可以放入旗舰店，主、子品牌的商标权利人应为同一实际控制人）；\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 经营已获得明确排他性授权的一个品牌商品入驻平台开放平台的卖家旗舰店；\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  卖场型品牌（服务类商标）商标权人开设的旗舰店；\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 2.1.2&nbsp; 开店主体必须是品牌（商标）权利人或持有权利人出具的开设平台开放平台旗舰店排他性授权文件的被授权企业。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  2.2&nbsp;&nbsp;&nbsp;&nbsp; 专卖店，卖家持他人品牌（商标为<span>R</span>或<span>TM</span>状态）授权文件在平台开放平台开设的店铺。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 2.2.1&nbsp; 专卖店类型：经营一个或多个授权品牌商品（多个授权品牌的商标权人应为同一实际控制人）但未获得旗舰店排他授权入驻平台开放平台的卖家专卖店；\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 2.2.2 &nbsp; 品牌（商标）权利人出具的授权文件不应有地域限制。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 2.3&nbsp;&nbsp;&nbsp;&nbsp; 专营店，经营平台开放平台相同一级经营类目下两个及以上他人或自有品牌（商标为<span>R</span>或<span>TM</span>状态）商品的店铺。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  2.3.1&nbsp; 专营店，可以有以下几种情形：\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  相同一级类目下经营两个及以上他人品牌商品入驻平台开放平台的卖家专营店；\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 相同一级类目下既经营他人品牌商品又经营自有品牌商品入驻平台开放平台的卖家专营店。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  2.4 &nbsp; &nbsp; 各类型店铺命名详细说明，请见<span>《平台开放平台卖家店铺命名规则》。</span> \r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n <br />\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  <b>第三章 平台申请入驻资质标准</b> \r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  3.1&nbsp;&nbsp;&nbsp; 平台开放平台申请入驻资质标准详见<span>《平台开放平台招商资质标准细则》。</span> \r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n <br />\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  <b>第四章 开店入驻限制</b> \r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  4.1&nbsp;&nbsp;&nbsp; 品牌入驻限制：\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 4.1.1 与平台平台已有的自有品牌、频道、业务、类目等相同或相似名称的品牌；\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 4.1.2&nbsp; 包含行业名称或通用名称的品牌；\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 4.1.3&nbsp; 包含知名人士、地名的品牌；\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 4.1.4&nbsp; 与知名品牌相同或近似的品牌。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  4.2&nbsp;&nbsp;&nbsp;&nbsp; 经营类目限制，卖家开店所经营的类目应当符合平台开放平台的相关标准，详细请参考<span>《平台开放平台经营类目资费一览表》。</span> \r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  4.3同一主体入驻的店铺限制：\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 4.3.1&nbsp; 单个店铺只可对应一种经营模式。各经营模式内容请参考与卖家签署的对应合同；\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  4.3.2&nbsp; 同一主体开设若干店铺的，经营模式总计不得超过两种，且须在开展第二种经营模式时提前<span>10</span>日向平台进行书面申请；\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  4.3.3&nbsp; 商品重合度：要求店铺间经营的品牌及商品不得重复，<span>4.3.2</span>项下经过平台审批的店铺不受此项约束。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  4.4&nbsp;&nbsp;&nbsp;&nbsp; 同一主体重新入驻平台开放平台限制：\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 4.4.1&nbsp; 严重违规、资质造假被平台清退的，永久限制入驻；\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 4.4.2&nbsp; 若卖家一自然年内主动退出<span>2</span>次，则自最后一次完成退出之日起<span>12</span>个月内限制入驻。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  4.5&nbsp;&nbsp;&nbsp;&nbsp; 续签限制：须在每年<span>3</span>月<span>1</span>日<span>18</span>时之前完成续签申请的提交，每年<span>3</span>月<span>20</span>日<span>18</span>时之前完成平台使用费的缴纳，如果上一年及下一年资费及资料未补足，平台将在每年<span>3</span>月<span>31</span>日<span>24</span>时终止店铺服务并下架商品。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  <br />\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  <b>第五章 平台开放平台保证金<span>/</span>平台使用费<span>/</span>费率标准</b> \r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  5.1 &nbsp; &nbsp; 保证金：卖家向平台缴纳的用以保证店铺规范运营及对商品和服务质量进行担保的金额。当卖家发生违约、违规行为时，平台可以依照与卖家签署的协议中相关约定及平台开放平台规则扣除相应金额的保证金作为违约金或给予买家的赔偿。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 5.1.1&nbsp; 保证金的补足、退还、扣除等依据卖家签署的相关协议及平台开放平台规则约定办理；\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  5.1.2&nbsp; 平台开放平台各经营类目对应的保证金标准详见<span>《平台开放平台经营类目资费一览表》。</span> \r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 5.2&nbsp;&nbsp;&nbsp;&nbsp; 平台使用费：卖家依照与平台签署的相关协议使用平台开放平台各项服务时缴纳的固定技术服务费用。平台开放平台各经营类目对应的平台使用费标准详见<span>《平台开放平台经营类目资费一览表》。</span>续签卖家的续展服务期间对应平台使用费须在每年<span>3</span>月<span>20</span>日<span>18</span>时前一次性缴纳；新签卖家须在申请入驻获得批准时一次性缴纳相应服务期间的平台使用费。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  5.2.1&nbsp;&nbsp; 平台使用费结算：\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  5.2.1.1卖家主动要求停止店铺服务的不返还平台使用费；\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 5.2.1.2卖家因违规行为或资质造假被清退的不返还平台使用费；\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  5.2.1.3每个店铺的平台使用费依据相应的服务期计算并缴纳。服务开通之日在每月的<span>1</span>日至<span>15</span>日（含）间的，开通当月按一个月收取平台使用费，服务开通之日在每月的<span>16</span>日（含）至月底最后一日间的，开通当月不收取平台使用费；\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 5.2.1.4拥有独立店铺<span>ID</span>的为一个店铺，若卖家根据经营情况须开通多个店铺的，须按照店铺数量缴纳相应的平台使用费。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 5.3&nbsp;&nbsp;&nbsp;&nbsp; 费率：卖家根据经营类目在达成每一单交易时按比例（该比例在与卖家签署的相关协议中称为“技术服务费费率”或“毛利保证率”）向平台缴纳的费用。平台开放平台各经营模式各经营类目对应的费率标准详见<span>《平台开放平台经营类目资费一览表》。 </span> \r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  <br />\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  <b>第六章 店铺服务期</b> \r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 6.1&nbsp;&nbsp;&nbsp;&nbsp; 卖家每个店铺的第一个服务期自服务开通之日起至最先到达的<span>3</span>月<span>31</span>日止，第二个服务期自<span>4</span>月<span>1</span>日起至次年<span>3</span>月<span>31</span>日止，第三个、第四个……服务期以此类推，以一年为周期，除非店铺或与卖家签署的相关协议提前终止。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  6.2&nbsp;&nbsp;&nbsp;&nbsp; 卖家每个店铺的服务开通之日以平台通知或系统记录的时间为准。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 6.3&nbsp;&nbsp;&nbsp;&nbsp; 卖家应在店铺每个服务期届满前<span>30</span>日向甲方提出续展的申请，缴纳续展服务期的平台使用费和提交其经营所需的全部有效资质，并经平台审核。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 6.4&nbsp;&nbsp;&nbsp;&nbsp; 卖家未提出续展申请或申请未通过平台审核的，自店铺服务期满之日起，平台开放平台将不再向卖家提供该店铺的任何服务。\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n <br />\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n  发布日期：<span>2014</span>年<span>11</span>月<span>19</span>日\r\n</p>\r\n<p class="MsoNormal" style="text-align:left;">\r\n 生效日期：<span>2014</span>年<span>1</span>月<span>1</span>日\r\n</p>\r\n<br />', '', 1399282350, 1, 1),
(99, 4, '资费标准', '<br />\r\n<p>\r\n  </p><h3 class="help_tit">\r\n   <strong>2014年开放平台重点招募品牌</strong> \r\n </h3>\r\n <div class="help_box">\r\n    <p>\r\n     <img src="../data/upload/shop/editor/20140505170523_59415.jpg" alt="" /> \r\n   </p>\r\n  </div>\r\n\r\n<p>\r\n <br />\r\n</p>\r\n<div class="help_box">\r\n  <p>\r\n   <br />\r\n  </p>\r\n  <p>\r\n   发布日期：2014年04月20日&nbsp;\r\n  </p>\r\n  <p>\r\n   修订日期：2014年05月01日\r\n  </p>\r\n</div>', '', 1399282379, 1, 1),
(106, 255, '用户帮助', '商品发布规则', '', 1456996930, 91, 1),
(107, 255, '版本说明', '商品规格及属性', '', 1456996919, 92, 1),
(108, 255, '关于我们', '限时折扣说明', '', 1456996912, 93, 1);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_help_type`
--

CREATE TABLE IF NOT EXISTS `yunpay_help_type` (
  `type_id` int(10) unsigned NOT NULL COMMENT '类型ID',
  `type_name` varchar(50) NOT NULL COMMENT '类型名称',
  `type_sort` tinyint(1) unsigned DEFAULT '255' COMMENT '排序',
  `help_code` varchar(10) DEFAULT 'auto' COMMENT '调用编号(auto的可删除)',
  `help_show` tinyint(1) unsigned DEFAULT '1' COMMENT '是否显示,0为否,1为是,默认为1',
  `page_show` tinyint(1) unsigned DEFAULT '1' COMMENT '页面类型:1为店铺,2为会员,默认为1'
) ENGINE=MyISAM AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COMMENT='帮助类型表';

--
-- 转存表中的数据 `yunpay_help_type`
--

INSERT INTO `yunpay_help_type` (`type_id`, `type_name`, `type_sort`, `help_code`, `help_show`, `page_show`) VALUES
(91, '用户帮助', 91, 'sys_member', 1, 1),
(92, '版本说明', 92, 'sys_versio', 1, 1),
(93, '关于我们', 93, 'sys_abouts', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_inform`
--

CREATE TABLE IF NOT EXISTS `yunpay_inform` (
  `inform_id` int(11) NOT NULL COMMENT '举报id',
  `inform_member_id` int(11) NOT NULL COMMENT '举报人id',
  `inform_member_name` varchar(50) NOT NULL COMMENT '举报人会员名',
  `inform_goods_id` int(11) NOT NULL COMMENT '被举报的商品id',
  `inform_goods_name` varchar(100) NOT NULL COMMENT '被举报的商品名称',
  `inform_subject_id` int(11) NOT NULL COMMENT '举报主题id',
  `inform_subject_content` varchar(50) NOT NULL COMMENT '举报主题',
  `inform_content` varchar(100) NOT NULL COMMENT '举报信息',
  `inform_pic1` varchar(100) NOT NULL COMMENT '图片1',
  `inform_pic2` varchar(100) NOT NULL COMMENT '图片2',
  `inform_pic3` varchar(100) NOT NULL COMMENT '图片3',
  `inform_datetime` int(11) NOT NULL COMMENT '举报时间',
  `inform_store_id` int(11) NOT NULL COMMENT '被举报商品的店铺id',
  `inform_state` tinyint(4) NOT NULL COMMENT '举报状态(1未处理/2已处理)',
  `inform_handle_type` tinyint(4) NOT NULL COMMENT '举报处理结果(1无效举报/2恶意举报/3有效举报)',
  `inform_handle_message` varchar(100) NOT NULL COMMENT '举报处理信息',
  `inform_handle_datetime` int(11) NOT NULL DEFAULT '0' COMMENT '举报处理时间',
  `inform_handle_member_id` int(11) NOT NULL DEFAULT '0' COMMENT '管理员id',
  `inform_goods_image` varchar(150) DEFAULT NULL COMMENT '商品图',
  `inform_store_name` varchar(100) DEFAULT NULL COMMENT '店铺名'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='举报表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_inform_subject`
--

CREATE TABLE IF NOT EXISTS `yunpay_inform_subject` (
  `inform_subject_id` int(11) NOT NULL COMMENT '举报主题id',
  `inform_subject_content` varchar(100) NOT NULL COMMENT '举报主题内容',
  `inform_subject_type_id` int(11) NOT NULL COMMENT '举报类型id',
  `inform_subject_type_name` varchar(50) NOT NULL COMMENT '举报类型名称 ',
  `inform_subject_state` tinyint(11) NOT NULL COMMENT '举报主题状态(1可用/2失效)'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='举报主题表';

--
-- 转存表中的数据 `yunpay_inform_subject`
--

INSERT INTO `yunpay_inform_subject` (`inform_subject_id`, `inform_subject_content`, `inform_subject_type_id`, `inform_subject_type_name`, `inform_subject_state`) VALUES
(1, '管制刀具、弓弩类、其他武器等', 1, '出售禁售品', 1),
(2, '赌博用具类', 1, '出售禁售品', 1),
(3, '枪支弹药', 1, '出售禁售品', 1),
(4, '毒品及吸毒工具', 1, '出售禁售品', 1),
(5, '色差大，质量差。', 2, '产品质量问题', 1);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_inform_subject_type`
--

CREATE TABLE IF NOT EXISTS `yunpay_inform_subject_type` (
  `inform_type_id` int(11) NOT NULL COMMENT '举报类型id',
  `inform_type_name` varchar(50) NOT NULL COMMENT '举报类型名称 ',
  `inform_type_desc` varchar(100) NOT NULL COMMENT '举报类型描述',
  `inform_type_state` tinyint(4) NOT NULL COMMENT '举报类型状态(1有效/2失效)'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='举报类型表';

--
-- 转存表中的数据 `yunpay_inform_subject_type`
--

INSERT INTO `yunpay_inform_subject_type` (`inform_type_id`, `inform_type_name`, `inform_type_desc`, `inform_type_state`) VALUES
(1, '出售禁售品', '销售商城禁止和限制交易规则下所规定的所有商品。', 1),
(2, '产品质量问题', '产品质量差，与描述严重不相符。', 1);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_invoice`
--

CREATE TABLE IF NOT EXISTS `yunpay_invoice` (
  `inv_id` int(11) NOT NULL COMMENT '索引id',
  `member_id` int(10) unsigned NOT NULL COMMENT '会员ID',
  `inv_state` enum('1','2') DEFAULT NULL COMMENT '1普通发票2增值税发票',
  `inv_title` varchar(50) DEFAULT '' COMMENT '发票抬头[普通发票]',
  `inv_content` varchar(10) DEFAULT '' COMMENT '发票内容[普通发票]',
  `inv_company` varchar(50) DEFAULT '' COMMENT '单位名称',
  `inv_code` varchar(50) DEFAULT '' COMMENT '纳税人识别号',
  `inv_reg_addr` varchar(50) DEFAULT '' COMMENT '注册地址',
  `inv_reg_phone` varchar(30) DEFAULT '' COMMENT '注册电话',
  `inv_reg_bname` varchar(30) DEFAULT '' COMMENT '开户银行',
  `inv_reg_baccount` varchar(30) DEFAULT '' COMMENT '银行帐户',
  `inv_rec_name` varchar(20) DEFAULT '' COMMENT '收票人姓名',
  `inv_rec_mobphone` varchar(15) DEFAULT '' COMMENT '收票人手机号',
  `inv_rec_province` varchar(30) DEFAULT '' COMMENT '收票人省份',
  `inv_goto_addr` varchar(50) DEFAULT '' COMMENT '送票地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='买家发票信息表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_link`
--

CREATE TABLE IF NOT EXISTS `yunpay_link` (
  `link_id` int(10) unsigned NOT NULL COMMENT '索引id',
  `link_title` varchar(100) DEFAULT NULL COMMENT '标题',
  `link_url` varchar(100) DEFAULT NULL COMMENT '链接',
  `link_pic` varchar(100) DEFAULT NULL COMMENT '图片',
  `link_sort` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序'
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='合作伙伴表';

--
-- 转存表中的数据 `yunpay_link`
--

INSERT INTO `yunpay_link` (`link_id`, `link_title`, `link_url`, `link_pic`, `link_sort`) VALUES
(1, '好商城', 'http://www.33hao.com', '33haologo.png', 0),
(2, '演示站点', 'http://v3.33hao.com', '33haologo.png', 1),
(4, '支持论坛', 'http://bbs.33hao.com', '', 1),
(5, '淘宝店', 'http://33haocom.taobao.com', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_lock`
--

CREATE TABLE IF NOT EXISTS `yunpay_lock` (
  `pid` bigint(20) unsigned NOT NULL COMMENT 'IP+TYPE',
  `pvalue` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '次数',
  `expiretime` int(11) NOT NULL DEFAULT '0' COMMENT '锁定截止时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='防灌水表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_mail_cron`
--

CREATE TABLE IF NOT EXISTS `yunpay_mail_cron` (
  `mail_id` int(11) NOT NULL COMMENT '消息任务计划id',
  `mail` varchar(100) NOT NULL COMMENT '邮箱地址',
  `subject` varchar(255) NOT NULL COMMENT '邮件标题',
  `contnet` text NOT NULL COMMENT '邮件内容'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邮件任务计划表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_mail_msg_temlates`
--

CREATE TABLE IF NOT EXISTS `yunpay_mail_msg_temlates` (
  `name` varchar(100) NOT NULL COMMENT '模板名称',
  `title` varchar(100) DEFAULT NULL COMMENT '模板标题',
  `code` varchar(30) NOT NULL COMMENT '模板调用代码',
  `content` text NOT NULL COMMENT '模板内容'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邮件模板表';

--
-- 转存表中的数据 `yunpay_mail_msg_temlates`
--

INSERT INTO `yunpay_mail_msg_temlates` (`name`, `title`, `code`, `content`) VALUES
('<strong>[用户]</strong>身份验证通知', '账户安全认证 - {$site_name}', 'authenticate', '【{$site_name}】您于{$send_time}提交账户安全验证，验证码是：{$verify_code}。'),
('<strong>[用户]</strong>邮箱验证通知', '邮箱验证通知 - {$site_name}', 'bind_email', '<p>您好！</p>\r\n<p>请在24小时内点击以下链接完成邮箱验证</p>\r\n<p><a href="{$verify_url}" target="_blank">马上验证</a></p>\r\n<p>如果您不能点击上面链接，还可以将以下链接复制到浏览器地址栏中访问</p>\r\n<p>{$verify_url}</p>'),
('<strong>[用户]</strong>手机验证通知', '手机验证通知 - {$site_name}', 'modify_mobile', '【{$site_name}】您于{$send_time}绑定手机号，验证码是：{$verify_code}。'),
('<strong>[用户]</strong>重置密码通知', '重置密码通知 - {$site_name}', 'reset_pwd', '<p>您好！</p>\r\n<p>您刚才在{$site_name}重置了密码，新密码为：{$new_password}。</p>\r\n<p>请尽快登录 <a href="{$site_url}" target="_blank">{$site_url}</a> 修改密码。</p>'),
('<strong>[用户]</strong>自提通知', '用户自提通知 - {$site_name}', 'send_pickup_code', '【{$site_name}】您的订单已到达自提点，请上门取货！提货时请提供手机号/订单号/运单号及提货码：{$pickup_code}。'),
('<strong>[用户]</strong>虚拟兑换码通知', '虚拟兑换码通知 - {$site_name}', 'send_vr_code', '【{$site_name}】您的虚拟兑换码是：{$vr_code}。');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_mall_consult`
--

CREATE TABLE IF NOT EXISTS `yunpay_mall_consult` (
  `mc_id` int(10) unsigned NOT NULL COMMENT '平台客服咨询id',
  `mct_id` int(10) unsigned NOT NULL COMMENT '咨询类型id',
  `member_id` int(10) unsigned NOT NULL COMMENT '会员id',
  `member_name` varchar(50) NOT NULL COMMENT '会员名称',
  `mc_content` varchar(500) NOT NULL COMMENT '咨询内容',
  `mc_addtime` int(10) unsigned NOT NULL COMMENT '咨询时间',
  `is_reply` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否回复，1是，0否，默认0',
  `mc_reply` varchar(500) NOT NULL COMMENT '回复内容',
  `mc_reply_time` int(10) unsigned NOT NULL COMMENT '回复时间',
  `admin_id` int(10) unsigned NOT NULL COMMENT '管理员id',
  `admin_name` varchar(50) NOT NULL COMMENT '管理员名称'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='平台客服咨询表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_mall_consult_type`
--

CREATE TABLE IF NOT EXISTS `yunpay_mall_consult_type` (
  `mct_id` int(10) unsigned NOT NULL COMMENT '平台客服咨询类型id',
  `mct_name` varchar(50) NOT NULL COMMENT '咨询类型名称',
  `mct_introduce` text NOT NULL COMMENT '平台客服咨询类型备注',
  `mct_sort` tinyint(255) unsigned NOT NULL COMMENT '咨询类型排序'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='平台客服咨询类型表';

--
-- 转存表中的数据 `yunpay_mall_consult_type`
--

INSERT INTO `yunpay_mall_consult_type` (`mct_id`, `mct_name`, `mct_introduce`, `mct_sort`) VALUES
(1, '商品咨询', '&lt;p&gt;\r\n  请写明商品链接，或平台货号。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n 如果您对商品规格、介绍等有疑问，可以在商品详情页“购买咨询”处发起咨询，会得到及时专业的回复。\r\n&lt;/p&gt;', 255),
(2, '订单咨询', '&lt;p&gt;\r\n  请写明要咨询的订单编号。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n 如需处理交易中产生的纠纷，请选择投诉。\r\n&lt;/p&gt;', 255);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_mb_article`
--

CREATE TABLE IF NOT EXISTS `yunpay_mb_article` (
  `article_id` int(11) NOT NULL COMMENT '索引id',
  `ac_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `article_url` varchar(100) DEFAULT NULL COMMENT '跳转链接',
  `article_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示，0为否，1为是，默认为1',
  `article_sort` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序',
  `article_title` varchar(100) DEFAULT NULL COMMENT '标题',
  `article_content` text COMMENT '内容',
  `article_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_mb_article_class`
--

CREATE TABLE IF NOT EXISTS `yunpay_mb_article_class` (
  `ac_id` int(10) unsigned NOT NULL COMMENT '索引ID',
  `ac_code` varchar(20) DEFAULT NULL COMMENT '分类标识码',
  `ac_name` varchar(100) NOT NULL COMMENT '分类名称',
  `ac_parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `ac_sort` tinyint(1) unsigned NOT NULL DEFAULT '255' COMMENT '排序'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章分类表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_mb_category`
--

CREATE TABLE IF NOT EXISTS `yunpay_mb_category` (
  `gc_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商城系统的分类ID',
  `gc_thumb` varchar(150) DEFAULT NULL COMMENT '缩略图'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='一级分类缩略图[手机端]';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_mb_feedback`
--

CREATE TABLE IF NOT EXISTS `yunpay_mb_feedback` (
  `id` int(10) unsigned NOT NULL,
  `content` varchar(500) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL COMMENT '1来自手机端2来自PC端',
  `ftime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '反馈时间',
  `member_id` int(10) unsigned NOT NULL COMMENT '用户编号',
  `member_name` varchar(50) NOT NULL COMMENT '用户名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='意见反馈';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_mb_payment`
--

CREATE TABLE IF NOT EXISTS `yunpay_mb_payment` (
  `payment_id` tinyint(1) unsigned NOT NULL COMMENT '支付索引id',
  `payment_code` char(10) NOT NULL COMMENT '支付代码名称',
  `payment_name` char(10) NOT NULL COMMENT '支付名称',
  `payment_config` varchar(255) DEFAULT NULL COMMENT '支付接口配置信息',
  `payment_state` enum('0','1') NOT NULL DEFAULT '0' COMMENT '接口状态0禁用1启用'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='手机支付方式表';

--
-- 转存表中的数据 `yunpay_mb_payment`
--

INSERT INTO `yunpay_mb_payment` (`payment_id`, `payment_code`, `payment_name`, `payment_config`, `payment_state`) VALUES
(1, 'alipay', '支付宝', '', '0'),
(2, 'wxpay', '微信支付', '', '0');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_mb_special`
--

CREATE TABLE IF NOT EXISTS `yunpay_mb_special` (
  `special_id` int(10) unsigned NOT NULL COMMENT '专题编号',
  `special_desc` varchar(20) NOT NULL COMMENT '专题描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='手机专题表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_mb_special_item`
--

CREATE TABLE IF NOT EXISTS `yunpay_mb_special_item` (
  `item_id` int(10) unsigned NOT NULL COMMENT '专题项目编号',
  `special_id` int(10) unsigned NOT NULL COMMENT '专题编号',
  `item_type` varchar(50) NOT NULL COMMENT '项目类型',
  `item_data` varchar(2000) NOT NULL COMMENT '项目内容',
  `item_usable` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '项目是否可用 0-不可用 1-可用',
  `item_sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '项目排序'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='手机专题项目表';

--
-- 转存表中的数据 `yunpay_mb_special_item`
--

INSERT INTO `yunpay_mb_special_item` (`item_id`, `special_id`, `item_type`, `item_data`, `item_usable`, `item_sort`) VALUES
(1, 0, 'adv_list', 'a:1:{s:4:"item";a:2:{s:24:"s0_05209001443215117.png";a:3:{s:5:"image";s:24:"s0_05209001443215117.png";s:4:"type";s:0:"";s:4:"data";s:0:"";}s:24:"s0_05209002496505802.png";a:3:{s:5:"image";s:24:"s0_05209002496505802.png";s:4:"type";s:0:"";s:4:"data";s:0:"";}}}', 1, 1),
(5, 0, 'home1', 'a:4:{s:5:"title";s:0:"";s:5:"image";s:24:"s0_05209000287249210.png";s:4:"type";s:0:"";s:4:"data";s:0:"";}', 1, 0),
(6, 0, 'home2', 'a:10:{s:5:"title";s:0:"";s:12:"square_image";s:24:"s0_05209005057631672.jpg";s:11:"square_type";s:0:"";s:11:"square_data";s:0:"";s:16:"rectangle1_image";s:24:"s0_05209006686174525.png";s:15:"rectangle1_type";s:0:"";s:15:"rectangle1_data";s:0:"";s:16:"rectangle2_image";s:24:"s0_05209008427036223.png";s:15:"rectangle2_type";s:0:"";s:15:"rectangle2_data";s:0:"";}', 1, 255),
(7, 0, 'home3', 'a:2:{s:5:"title";s:0:"";s:4:"item";a:4:{s:24:"s0_05209026565760214.png";a:3:{s:5:"image";s:24:"s0_05209026565760214.png";s:4:"type";s:0:"";s:4:"data";s:0:"";}s:24:"s0_05209026642728178.png";a:3:{s:5:"image";s:24:"s0_05209026642728178.png";s:4:"type";s:0:"";s:4:"data";s:0:"";}s:24:"s0_05209026944214377.png";a:3:{s:5:"image";s:24:"s0_05209026944214377.png";s:4:"type";s:0:"";s:4:"data";s:0:"";}s:24:"s0_05209029424726477.png";a:3:{s:5:"image";s:24:"s0_05209029424726477.png";s:4:"type";s:0:"";s:4:"data";s:0:"";}}}', 1, 255);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_mb_user_token`
--

CREATE TABLE IF NOT EXISTS `yunpay_mb_user_token` (
  `token_id` int(10) unsigned NOT NULL COMMENT '令牌编号',
  `member_id` int(10) unsigned NOT NULL COMMENT '用户编号',
  `member_name` varchar(50) NOT NULL COMMENT '用户名',
  `token` varchar(50) NOT NULL COMMENT '登录令牌',
  `login_time` int(10) unsigned NOT NULL COMMENT '登录时间',
  `client_type` varchar(10) NOT NULL COMMENT '客户端类型 android wap'
) ENGINE=MyISAM AUTO_INCREMENT=1862 DEFAULT CHARSET=utf8 COMMENT='移动端登录令牌表';

--
-- 转存表中的数据 `yunpay_mb_user_token`
--

INSERT INTO `yunpay_mb_user_token` (`token_id`, `member_id`, `member_name`, `token`, `login_time`, `client_type`) VALUES
(1, 3, '13450226610', '35d62c7699e350382c5b7fcfb972d110', 1468804488, 'ios'),
(1861, 9, '13538850622', '42fc93fd2a4373cee5e0e2463cee13e3', 1470983864, 'android'),
(1859, 4, '13632242148', 'f8d1969fba399b020fd44ab3e69a27eb', 1470978798, 'ios'),
(277, 5, '123456', 'ded5cf2db2c0ff077237e35a9fd832f2', 1469085054, 'ios'),
(21, 6, '1234567', '984d54d1ae3233ea036aeb909d81e803', 1468771634, 'ios'),
(822, 19, '18665666875', 'f3e840ab45889bbc86c903bc4037b202', 1470153635, 'Android'),
(64, 8, '13450226610', '24eca339a9a80ea99966c804223a03fa', 1468895750, 'android'),
(1821, 8, '13450226610', '3348a9c679c428c20e06c5e3457719c1', 1470920848, 'ios'),
(1855, 9, '13538850622', '341e5fc0e02e120e5cd4c8ccc694030f', 1470973995, 'ios'),
(34, 10, '18680564089', 'e12e974778c07c798263b480a1a3df61', 1468805382, 'Android'),
(37, 11, '18680564089', '78851f125ce6e830aafaf82ae2561619', 1468806347, 'android'),
(1134, 12, '18680564089', 'd4ef35f2bd17dbf595b967192c4818af', 1470365288, 'android'),
(1715, 13, '13580446901', '4be2f624f8ef6600967ba91dd34baf8a', 1470850242, 'android'),
(1224, 14, '17092049213', 'ead276a2b52dbf3cf51bf80ff9f428cf', 1470387756, 'android'),
(811, 15, '15692000182', 'f58bf9eb91121c6da4aaf0aab427bc35', 1470146278, 'android'),
(1705, 15, '15692000182', '6d353df520a4ca4d06810b096c1b374c', 1470844102, 'ios'),
(1300, 12, '18680564089', '3c6f76017c9f21435652401b03e075e8', 1470409660, 'ios'),
(761, 16, '18632711078', '7eac3148c3e740082177896d80c8cf0b', 1469198630, 'android'),
(1290, 17, '13631430470', 'c690370345a4bc7ae68f499b3afe33d9', 1470409615, 'ios'),
(1853, 19, '18665666875', '484fdd84fd10766d5befc09a0ef928f4', 1470936393, 'ios'),
(1543, 20, '13800138099', 'ff9f83524257c42fad43d80f830b46f8', 1470658891, 'ios'),
(1768, 7, '13423677687', '846f9931866285b1ae038abb1e0fbf58', 1470889952, 'android'),
(1860, 17, '13631430470', '799f9983de11257770c793ac9dd773f2', 1470982048, 'android'),
(1453, 7, '13423677687', 'c7a7581a0cfb23c9a62df0d82cbaa1ca', 1470640905, 'ios'),
(1585, 21, '15119253549', '05bad176ebe5c2531dfbdd21e21843e4', 1470811639, 'android'),
(1301, 18, '18620778046', 'c4c257575c46822f03dab10b7054d00d', 1470460648, 'ios'),
(1575, 4, '13632242148', 'ebf8c931445fc2acd511c8c8979691fa', 1470752269, 'android');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_member`
--

CREATE TABLE IF NOT EXISTS `yunpay_member` (
  `member_id` int(11) NOT NULL COMMENT '会员id',
  `member_name` varchar(50) NOT NULL COMMENT '会员名称',
  `member_nickname` varchar(45) DEFAULT NULL COMMENT '用户昵称',
  `member_truename` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `member_avatar` varchar(250) DEFAULT NULL COMMENT '会员头像',
  `member_sex` tinyint(1) DEFAULT NULL COMMENT '会员性别',
  `member_birthday` date DEFAULT NULL COMMENT '生日',
  `member_passwd` varchar(32) NOT NULL COMMENT '会员密码',
  `member_paypwd` char(32) DEFAULT NULL COMMENT '支付密码',
  `member_sign` varchar(9) DEFAULT NULL COMMENT '9宫格手势',
  `member_email` varchar(100) DEFAULT NULL COMMENT '会员邮箱',
  `member_email_bind` tinyint(4) DEFAULT '0' COMMENT '0未绑定1已绑定',
  `member_mobile` varchar(11) NOT NULL COMMENT '手机号',
  `member_mobile_bind` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0未绑定1已绑定',
  `member_qq` varchar(100) DEFAULT NULL COMMENT 'qq',
  `member_ww` varchar(100) DEFAULT NULL COMMENT '阿里旺旺',
  `member_login_num` int(11) NOT NULL DEFAULT '1' COMMENT '登录次数',
  `member_time` varchar(10) NOT NULL COMMENT '会员注册时间',
  `member_login_time` varchar(10) NOT NULL COMMENT '当前登录时间',
  `member_old_login_time` varchar(10) NOT NULL COMMENT '上次登录时间',
  `member_login_ip` varchar(20) DEFAULT NULL COMMENT '当前登录ip',
  `member_old_login_ip` varchar(20) DEFAULT NULL COMMENT '上次登录ip',
  `member_qqopenid` varchar(100) DEFAULT NULL COMMENT 'qq互联id',
  `member_qqinfo` text COMMENT 'qq账号相关信息',
  `member_sinaopenid` varchar(100) DEFAULT NULL COMMENT '新浪微博登录id',
  `member_sinainfo` text COMMENT '新浪账号相关信息序列化值',
  `member_points` decimal(20,8) NOT NULL DEFAULT '0.00000000' COMMENT '云币',
  `member_points_inviter` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '佣金积分',
  `member_points_inviter_2` decimal(10,2) DEFAULT NULL,
  `available_predeposit` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000' COMMENT '预存款可用金额',
  `available_redeemable` decimal(20,8) DEFAULT '0.00000000' COMMENT '可用返还余额',
  `freeze_predeposit` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '预存款冻结金额',
  `available_rc_balance` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '可用充值卡余额',
  `freeze_rc_balance` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '冻结充值卡余额',
  `yestoday_redeemable` decimal(20,8) DEFAULT '0.00000000' COMMENT '昨日返还',
  `inform_allow` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否允许举报(1可以/2不可以)',
  `is_sign` tinyint(1) DEFAULT NULL COMMENT '是否开启手势密码',
  `is_buy` tinyint(1) NOT NULL DEFAULT '1' COMMENT '会员是否有购买权限 1为开启 0为关闭',
  `is_allowtalk` tinyint(1) NOT NULL DEFAULT '1' COMMENT '会员是否有咨询和发送站内信的权限 1为开启 0为关闭',
  `member_state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '会员的开启状态 1为开启 0为关闭',
  `member_snsvisitnum` int(11) NOT NULL DEFAULT '0' COMMENT 'sns空间访问次数',
  `member_areaid` int(11) DEFAULT '0' COMMENT '地区ID',
  `member_cityid` int(11) DEFAULT '0' COMMENT '城市ID',
  `member_provinceid` int(11) DEFAULT '0' COMMENT '省份ID',
  `member_areainfo` varchar(255) DEFAULT ' ' COMMENT '地区内容',
  `member_privacy` text COMMENT '隐私设定',
  `member_quicklink` varchar(255) DEFAULT NULL COMMENT '会员常用操作',
  `member_exppoints` int(11) NOT NULL DEFAULT '0' COMMENT '会员经验值',
  `member_idcard` varchar(30) DEFAULT NULL COMMENT '身份证号码',
  `first_char` char(1) DEFAULT NULL COMMENT '首字母',
  `inviter_id` int(11) DEFAULT '0' COMMENT '邀请人ID',
  `grade_id` tinyint(1) DEFAULT '1' COMMENT '等级',
  `grade_name` varchar(45) DEFAULT '普通会员',
  `invite_code` varchar(10) DEFAULT NULL,
  `last_redeemable` int(11) DEFAULT '0',
  `is_store` tinyint(1) DEFAULT NULL,
  `is_agent` tinyint(1) DEFAULT NULL COMMENT '合伴人',
  `agent_provinceid` int(11) NOT NULL,
  `agent_cityid` int(11) NOT NULL,
  `agent_areaid` int(11) NOT NULL,
  `agent_areainfo` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='会员表';

--
-- 转存表中的数据 `yunpay_member`
--

INSERT INTO `yunpay_member` (`member_id`, `member_name`, `member_nickname`, `member_truename`, `member_avatar`, `member_sex`, `member_birthday`, `member_passwd`, `member_paypwd`, `member_sign`, `member_email`, `member_email_bind`, `member_mobile`, `member_mobile_bind`, `member_qq`, `member_ww`, `member_login_num`, `member_time`, `member_login_time`, `member_old_login_time`, `member_login_ip`, `member_old_login_ip`, `member_qqopenid`, `member_qqinfo`, `member_sinaopenid`, `member_sinainfo`, `member_points`, `member_points_inviter`, `member_points_inviter_2`, `available_predeposit`, `available_redeemable`, `freeze_predeposit`, `available_rc_balance`, `freeze_rc_balance`, `yestoday_redeemable`, `inform_allow`, `is_sign`, `is_buy`, `is_allowtalk`, `member_state`, `member_snsvisitnum`, `member_areaid`, `member_cityid`, `member_provinceid`, `member_areainfo`, `member_privacy`, `member_quicklink`, `member_exppoints`, `member_idcard`, `first_char`, `inviter_id`, `grade_id`, `grade_name`, `invite_code`, `last_redeemable`, `is_store`, `is_agent`, `agent_provinceid`, `agent_cityid`, `agent_areaid`, `agent_areainfo`) VALUES
(1, '13802987366', '车族宝会员', '寇南南', '', 1, NULL, '3b2ae66f6992db7d45b956e667161466', 'd77ad3c68d5a473c2dfc6c49711bf7cd', '5a9e3aff8', '', 0, '', 0, '', '', 7, '1463449260', '1468750286', '1468669919', '113.115.128.182', '219.137.198.77', NULL, NULL, NULL, NULL, '199.67123288', '0.00', '200.00', '400.32876712', '0.32876712', '0.00', '0.00', '0.00', '0.02739726', 0, 1, 0, 0, 1, 0, 0, 0, 0, '', NULL, NULL, 0, '440102195109250015', NULL, 0, 1, 'VIP会员', NULL, 1470931200, 0, 0, 0, 0, 0, ''),
(2, '13800138000', '车族宝会员', '分佣余额', '', 1, NULL, '872be7378d2e5c4b747f2547144c6dc5', 'd77ad3c68d5a473c2dfc6c49711bf7cd', NULL, '', 0, '', 0, '', '', 1, '1463449260', '1464925410', '1464920688', '157.122.56.196', '157.122.56.196', NULL, NULL, NULL, NULL, '0.00000000', '0.00', '0.00', '5400.00000000', '0.00000000', '0.00', '0.00', '0.00', '0.00000000', 0, NULL, 0, 0, 1, 0, 0, 0, 0, '', NULL, NULL, 0, '', NULL, 0, 1, 'VIP会员', NULL, 1465142400, 0, 0, 0, 0, 0, ''),
(3, '13450226611', '车族宝会员', '罗', NULL, 1, NULL, '21218cca77804d2ba1922c33e0151105', '', NULL, '13450226610', 0, '', 0, '', NULL, 2, '1468763379', '1468763537', '1468763379', '120.84.9.220', '120.84.9.220', NULL, NULL, NULL, NULL, '0.00000000', '0.00', NULL, '100011.00000000', '0.00000000', '0.00', '0.00', '0.00', '0.00000000', 1, NULL, 1, 1, 1, 0, 1658, 126, 7, '吉林-白山市-江源区', NULL, NULL, 0, '440402198410119075', NULL, 1, 1, 'VIP用户', NULL, 1468684800, 0, 0, 0, 0, 0, ''),
(4, '13632242148', '都好好的电话', '张成', NULL, 1, NULL, '21218cca77804d2ba1922c33e0151105', '21218cca77804d2ba1922c33e0151105', NULL, NULL, 0, '', 0, NULL, NULL, 950, '1468767735', '1470978788', '1470928385', '14.145.34.153', '14.147.182.52', NULL, NULL, NULL, NULL, '149.56849305', '0.00', NULL, '7389.43150695', '0.43150695', '0.00', '0.00', '0.00', '0.02054795', 1, NULL, 1, 1, 1, 0, 3038, 289, 19, '广东-广州市-从化市', NULL, NULL, 0, '441323199306203033', NULL, 2, 1, 'VIP用户', NULL, 1470931200, 1, 0, 0, 0, 0, ''),
(5, '123456', '车族宝会员', '', NULL, 0, NULL, '21218cca77804d2ba1922c33e0151105', '', NULL, '123456', 0, '', 0, '', '', 15, '1468770719', '1469085050', '1469006141', '157.122.56.196', '157.122.56.196', NULL, NULL, NULL, NULL, '0.00000000', '0.00', NULL, '8755.00000000', '0.00000000', '0.00', '0.00', '0.00', '0.00000000', 0, NULL, 0, 0, 1, 0, 0, 0, 0, '', NULL, NULL, 0, NULL, NULL, 4, 0, '普通会员', NULL, 1468684800, 1, 0, 0, 0, 0, ''),
(6, '1234567', '车族宝会员', '', NULL, 0, NULL, '21218cca77804d2ba1922c33e0151105', '', NULL, '1234567', 0, '', 0, '', NULL, 3, '1468771099', '1468771634', '1468771110', '61.140.105.116', '61.140.105.116', NULL, NULL, NULL, NULL, '0.00000000', '0.00', NULL, '0.00000000', '0.00000000', '0.00', '0.00', '0.00', '0.00000000', 1, NULL, 1, 1, 1, 0, NULL, NULL, NULL, ' ', NULL, NULL, 0, NULL, NULL, 1, 0, '普通会员', NULL, 1468684800, 0, 0, 0, 0, 0, ''),
(7, '13423677687', '车族宝会员', NULL, 'http://120.25.212.243/czb/data/upload/m/avatar/avatar_7_new.png', NULL, NULL, '21218cca77804d2ba1922c33e0151105', 'f379eaf3c831b04de153469d1bec345e', 'f8218f3e5', NULL, 0, '', 0, NULL, NULL, 60, '1468796384', '1470889952', '1470889925', '121.16.32.122', '121.16.32.122', NULL, NULL, NULL, NULL, '0.00000000', '0.00', NULL, '0.00000000', '0.00000000', '0.00', '0.00', '0.00', '0.00000000', 1, 0, 1, 1, 1, 0, 1288, 83, 3, '河北-沧州市-沧县', NULL, NULL, 0, NULL, NULL, 2, 0, '普通会员', NULL, 1468771200, 0, 0, 0, 0, 0, ''),
(8, '13450226610', '车族宝会员', 'bin', NULL, 1, NULL, '21218cca77804d2ba1922c33e0151105', '', NULL, '', 0, '', 0, '', '', 213, '1468804612', '1470920848', '1470905667', '14.147.182.52', '14.147.182.52', NULL, NULL, NULL, NULL, '442371.61643832', '25.00', NULL, '729.38356168', '728.38356168', '0.00', '0.00', '0.00', '60.69863014', 0, NULL, 0, 0, 1, 0, 1619, 121, 7, '吉林-长春市-九台市', NULL, NULL, 0, '432503197505028819', NULL, 1, 0, '普通会员', NULL, 1470931200, 0, 0, 0, 0, 0, ''),
(9, '13538850622', 'Vaniz', '盘太累', NULL, 1, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 'f8218f3e5', '13538850622', 0, '', 0, '', '', 159, '1468805188', '1470983864', '1470973995', '121.16.32.122', '61.242.112.3', NULL, NULL, NULL, NULL, '5441.06164376', '0.00', NULL, '16028.93835624', '8.93835624', '555.00', '0.00', '0.00', '0.73972603', 0, 0, 0, 0, 1, 0, 3037, 289, 19, '广东-广州市-南沙区', NULL, NULL, 0, '445381198509057235', NULL, 1, 1, 'VIP用户', NULL, 1470931200, 1, 0, 0, 0, 0, ''),
(12, '18680564089', '贤淑华', 'ma', NULL, 1, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', NULL, '', 0, '', 0, '', '', 21, '1468806687', '1470409655', '1470365148', '163.142.147.228', '120.84.12.130', NULL, NULL, NULL, NULL, '9983.56164388', '0.00', NULL, '7081.43835612', '16.43835612', '0.00', '0.00', '0.00', '1.36986301', 0, NULL, 0, 0, 1, 0, 37, 36, 1, '北京-北京市-东城区', NULL, NULL, 0, '533527198909210238', NULL, 17, 1, 'VIP用户', NULL, 1470931200, 1, 0, 0, 0, 0, ''),
(13, '13580446901', '车族宝会员', NULL, NULL, NULL, NULL, '21218cca77804d2ba1922c33e0151105', '', NULL, NULL, 0, '', 0, NULL, NULL, 7, '1468806947', '1470849652', '1470674868', '117.136.79.44', '117.136.79.20', NULL, NULL, NULL, NULL, '0.00000000', '0.00', NULL, '1000.00000000', '0.00000000', '0.00', '0.00', '0.00', '0.00000000', 1, NULL, 1, 1, 1, 0, 1788, 140, 8, '黑龙江-黑河市-五大连池市', NULL, NULL, 0, NULL, NULL, 2, 0, '普通会员', NULL, 1468771200, 0, 0, 0, 0, 0, ''),
(14, '17092049213', '车族宝会员', '张运迎', 'http://120.25.212.243/czb/data/upload/m/avatar/avatar_14_new.png', 1, NULL, '21218cca77804d2ba1922c33e0151105', '21218cca77804d2ba1922c33e0151105', '9ab01348b', NULL, 0, '', 0, NULL, NULL, 113, '1468932078', '1470387745', '1470370930', '121.8.201.114', '121.8.201.114', NULL, NULL, NULL, NULL, '0.00000000', '0.00', NULL, '0.00000000', '0.00000000', '0.00', '0.00', '0.00', '0.00000000', 1, 0, 1, 1, 1, 0, 3041, 289, 19, '广东-广州市-海珠区', NULL, NULL, 0, '441622198802114190', NULL, 2, 0, '普通会员', NULL, 1468857600, 0, 0, 0, 0, 0, ''),
(15, '15692000182', '车族宝会员', '杜', NULL, 1, NULL, '21218cca77804d2ba1922c33e0151105', '', NULL, NULL, 0, '', 0, NULL, NULL, 14, '1469085020', '1470843961', '1470843698', '14.150.215.244', '14.150.215.244', NULL, NULL, NULL, NULL, '0.00000000', '0.00', NULL, '19000.00000000', '0.00000000', '0.00', '0.00', '0.00', '0.00000000', 1, NULL, 1, 1, 1, 0, 1474, 101, 5, '内蒙古-呼伦贝尔市-莫力达瓦达斡尔族自治旗', NULL, NULL, 0, '441323198801233016', NULL, 2, 1, 'VIP用户', NULL, 1469030400, 0, 0, 0, 0, 0, ''),
(16, '18632711078', '车族宝会员', NULL, NULL, NULL, NULL, '21218cca77804d2ba1922c33e0151105', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, 0, '', 0, NULL, NULL, 4, '1469193782', '1469198604', '1469196413', '61.55.30.60', '61.55.30.60', NULL, NULL, NULL, NULL, '0.00000000', '0.00', NULL, '0.00000000', '0.00000000', '0.00', '0.00', '0.00', '0.00000000', 1, NULL, 1, 1, 1, 0, 1286, 83, 3, '河北-沧州市-孟村回族自治县', NULL, NULL, 0, NULL, NULL, 2, 0, '普通会员', NULL, 1469116800, 0, 0, 0, 0, 0, ''),
(17, '13631430470', 'yvon', 'cui', NULL, 2, NULL, 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', NULL, '13631430470', 0, '', 0, '', '', 77, '1469213896', '1470982048', '1470977077', '121.8.201.114', '121.8.201.114', NULL, NULL, NULL, NULL, '5393.86301368', '0.00', NULL, '6.13698632', '6.13698632', '0.00', '0.00', '0.00', '0.05479452', 0, NULL, 0, 0, 1, 0, 1572, 113, 6, '辽宁-锦州市-古塔区', NULL, NULL, 0, '341201198506129702', NULL, 18, 1, 'VIP用户', NULL, 1470931200, 0, 0, 0, 0, 0, ''),
(18, '18620778046', '懂', '弹', NULL, 2, NULL, 'e10adc3949ba59abbe56e057f20f883e', '', NULL, '18620778046', 0, '', 0, '', NULL, 2, '1469948234', '1470409680', '1469948234', '163.142.147.228', '61.242.112.247', NULL, NULL, NULL, NULL, '399.34246576', '0.00', NULL, '0.65753424', '0.65753424', '0.00', '0.00', '0.00', '0.05479452', 1, NULL, 1, 1, 1, 0, NULL, NULL, NULL, ' ', NULL, NULL, 0, '632322197305101538', NULL, 9, 0, '普通会员', NULL, 1470931200, 0, 0, 0, 0, 0, ''),
(19, '18665666875', '车族宝会员', NULL, NULL, NULL, NULL, '21218cca77804d2ba1922c33e0151105', '21218cca77804d2ba1922c33e0151105', NULL, NULL, 0, '', 0, NULL, NULL, 25, '1470153635', '1470936289', '1470932897', '121.68.118.72', '27.46.128.81', NULL, NULL, NULL, NULL, '0.00000000', '0.00', NULL, '0.00000000', '0.00000000', '0.00', '0.00', '0.00', '0.00000000', 1, NULL, 1, 1, 1, 0, 3042, 289, 19, '广东-广州市-番禺区', NULL, NULL, 0, NULL, NULL, 2, 0, '普通会员', NULL, 1470153600, 0, 0, 0, 0, 0, ''),
(20, '13800138099', '车族宝会员', 'Cuff', NULL, 2, NULL, '21218cca77804d2ba1922c33e0151105', '', NULL, '13800138099', 0, '', 0, '', NULL, 156, '1470219238', '1470658888', '1470658779', '116.23.219.235', '116.23.219.235', NULL, NULL, NULL, NULL, '0.00000000', '0.00', NULL, '0.00000000', '0.00000000', '0.00', '0.00', '0.00', '0.00000000', 1, NULL, 1, 1, 1, 0, NULL, NULL, NULL, ' ', NULL, NULL, 0, '230622197502113554', NULL, 4, 0, '普通会员', NULL, 1470153600, 0, 0, 0, 0, 0, ''),
(21, '15119253549', '车族宝会员', NULL, NULL, NULL, NULL, '21218cca77804d2ba1922c33e0151105', '21218cca77804d2ba1922c33e0151105', NULL, NULL, 0, '', 0, NULL, NULL, 43, '1470391554', '1470811366', '1470637529', '117.136.41.82', '159.203.254.113', NULL, NULL, NULL, NULL, '0.00000000', '0.00', NULL, '0.00000000', '0.00000000', '0.00', '0.00', '0.00', '0.00000000', 1, 0, 1, 1, 1, 0, 3040, 289, 19, '广东-广州市-天河区', NULL, NULL, 0, NULL, NULL, 17, 0, '普通会员', NULL, 1470326400, 0, 0, 0, 0, 0, ''),
(22, '13800138098', '车族宝会员', '', NULL, 0, NULL, '21218cca77804d2ba1922c33e0151105', '', NULL, '13800138098', 0, '', 0, '', '', 1, '1470393250', '1470393250', '1470393250', '116.23.218.15', '116.23.218.15', NULL, NULL, NULL, NULL, '0.00000000', '0.00', NULL, '0.00000000', '0.00000000', '0.00', '0.00', '0.00', '0.00000000', 0, NULL, 0, 0, 1, 0, 0, 0, 0, '', NULL, NULL, 0, NULL, NULL, 4, 0, '普通会员', NULL, 1470326400, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_member_bank`
--

CREATE TABLE IF NOT EXISTS `yunpay_member_bank` (
  `id` int(11) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `card_type` tinyint(1) DEFAULT NULL COMMENT '1,信用卡。2,借记卡',
  `bank_name` varchar(80) DEFAULT NULL COMMENT '开户银行',
  `account_name` varchar(45) DEFAULT NULL COMMENT '开户姓名',
  `account_no` varchar(45) DEFAULT NULL COMMENT '银行帐号',
  `idcard` varchar(18) DEFAULT NULL COMMENT '身份证号',
  `bank_mobile` varchar(11) DEFAULT NULL COMMENT '银行预留手机号',
  `province_name` varchar(50) DEFAULT NULL COMMENT '省',
  `city_name` varchar(50) DEFAULT NULL COMMENT '市',
  `branch_name` varchar(45) DEFAULT NULL COMMENT '支行名称',
  `create_time` int(11) DEFAULT NULL COMMENT '添加日期'
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yunpay_member_bank`
--

INSERT INTO `yunpay_member_bank` (`id`, `member_id`, `card_type`, `bank_name`, `account_name`, `account_no`, `idcard`, `bank_mobile`, `province_name`, `city_name`, `branch_name`, `create_time`) VALUES
(21, 255, 2, '中国银行', 'Ft', '444', 'Gaff', '13632242148', 'Gaff', 'Try', 'See', 1468316372),
(22, 228, 1, '交通银行', '王天元', '62000000000002', '130902198801030021', '13423677687', '广东', '广州市', '石牌桥支行', 1468413434),
(23, 228, 2, '中国建设银行', '王天元', '6200000000000324', '130902198801030021', '13423677687', '广东', '广州', '石牌桥', 1468413580),
(24, 281, 2, '中国农业银行', '在g', '55451', '441323199306203033', '13632242148', '广东省', '大喊大叫', '滴滴', 1468464036),
(26, 236, 2, '中国工商银行', '陈伟', '123456789123456', '445381198509057235', '13538850622', '广东', '广州', '较场东支行', 1468517818),
(27, 228, 2, '中国建设银行', '王天元', '623099030220393', '130902198801030021', '13423677687', '广东', '广州市', '正佳支行', 1468583726),
(28, 228, 2, '中国农业银行', '王天元', '6233003939028857', '130902198801030021', '13423677687', '河北', '沧州市', '北环支行', 1468583867),
(29, 225, 2, '中国农业银行', '陈', '456829186378531948', '445381198509057235', '13538850622', '北京', '北京市', 'do', 1468599127),
(30, 281, 2, '中国工商银行', '张成志', '554', 'Bends', '13633433864', '你喜欢的', '放假放假', 'djdh', 1468599916),
(31, 236, 2, '中国农业银行', '马', '5456761884646', '445381198509057235', '13538850622', '北京', '北京', '紧', 1468600511),
(42, 14, 2, '平安银行', '张运迎', '6230582000017617179', '441622198802114190', '15119253549', '广东', '广州市', '科技园支行', 1469113519),
(43, 9, 2, '中国工商银行', '盘', '1234567890123456789', '445381198509057235', '13538850622', '内蒙古', '鄂尔多斯市', '测试支行', 1469121608),
(44, 7, 2, '招商银行', '王', '620008390543350', '130902198801030021', '13423677687', '河北', '石家庄市', '科技2分行', 1469533077),
(45, 9, 2, '中国银行', '盘太累', '545655655', '445381198509057235', '13538850622', '辽宁', '锦州市', '嗯', 1470759474);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_member_card`
--

CREATE TABLE IF NOT EXISTS `yunpay_member_card` (
  `card_id` int(11) NOT NULL COMMENT '银行卡ID',
  `member_id` int(11) NOT NULL COMMENT '会员ID',
  `card_type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1：信用卡，2：借记卡',
  `bank_id` int(11) NOT NULL COMMENT '银行名称',
  `name` varchar(80) NOT NULL COMMENT '开户姓名',
  `bank_account` varchar(45) NOT NULL COMMENT '银行帐号',
  `idcard` varchar(18) NOT NULL COMMENT '身份证',
  `mobile` varchar(11) NOT NULL COMMENT '银行预留手机号码',
  `create_time` datetime NOT NULL COMMENT '添加时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_member_common`
--

CREATE TABLE IF NOT EXISTS `yunpay_member_common` (
  `member_id` int(11) NOT NULL COMMENT '会员ID',
  `auth_code` char(6) DEFAULT NULL COMMENT '短信/邮件验证码',
  `send_acode_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '短信/邮件验证码发送时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员扩展表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_member_msg_setting`
--

CREATE TABLE IF NOT EXISTS `yunpay_member_msg_setting` (
  `mmt_code` varchar(50) NOT NULL COMMENT '用户消息模板编号',
  `member_id` int(10) unsigned NOT NULL COMMENT '会员id',
  `is_receive` tinyint(3) unsigned NOT NULL COMMENT '是否接收 1是，0否'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户消息接收设置表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_member_msg_tpl`
--

CREATE TABLE IF NOT EXISTS `yunpay_member_msg_tpl` (
  `mmt_code` varchar(50) NOT NULL COMMENT '用户消息模板编号',
  `mmt_name` varchar(50) NOT NULL COMMENT '模板名称',
  `mmt_message_switch` tinyint(3) unsigned NOT NULL COMMENT '站内信接收开关',
  `mmt_message_content` varchar(255) NOT NULL COMMENT '站内信消息内容',
  `mmt_short_switch` tinyint(3) unsigned NOT NULL COMMENT '短信接收开关',
  `mmt_short_content` varchar(255) NOT NULL COMMENT '短信接收内容',
  `mmt_mail_switch` tinyint(3) unsigned NOT NULL COMMENT '邮件接收开关',
  `mmt_mail_subject` varchar(255) NOT NULL COMMENT '邮件标题',
  `mmt_mail_content` text NOT NULL COMMENT '邮件内容'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户消息模板';

--
-- 转存表中的数据 `yunpay_member_msg_tpl`
--

INSERT INTO `yunpay_member_msg_tpl` (`mmt_code`, `mmt_name`, `mmt_message_switch`, `mmt_message_content`, `mmt_short_switch`, `mmt_short_content`, `mmt_mail_switch`, `mmt_mail_subject`, `mmt_mail_content`) VALUES
('arrival_notice', '到货通知提醒', 1, '您关注的商品 “{$goods_name}” 已经到货。<a href="{$goods_url}" target="_blank">点击查看商品</a>', 0, '【{$site_name}】您关注的商品 “{$goods_name}” 已经到货。', 0, '{$site_name}提醒：您关注的商品  “{$goods_name}” 已经到货。', '<p>\r\n {$site_name}提醒：\r\n</p>\r\n<p>\r\n  您关注的商品 “{$goods_name}” 已经到货。\r\n</p>\r\n<p>\r\n <a href="{$goods_url}" target="_blank">点击查看商品</a> \r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>'),
('consult_goods_reply', '商品咨询回复提醒', 1, '您关于商品 “{$goods_name}”的咨询，商家已经回复。<a href="{$consult_url}" target="_blank">点击查看回复</a>', 0, '【{$site_name}】您关于商品 “{$goods_name}” 的咨询，商家已经回复。', 0, '{$site_name}提醒：您关于商品 “{$goods_name}”的咨询，商家已经回复。', '<p>\r\n  {$site_name}提醒：\r\n</p>\r\n<p>\r\n  您关注的商品“{$goods_name}” 已经到货。\r\n</p>\r\n<p>\r\n  <a href="{$consult_url}" target="_blank">点击查看回复</a> \r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>\r\n<br />\r\n<div class="firebugResetStyles firebugBlockBackgroundColor">\r\n <div style="background-color:transparent ! important;" class="firebugResetStyles">\r\n  </div>\r\n</div>'),
('consult_mall_reply', '平台客服回复提醒', 1, '您的平台客服咨询已经回复。<a href="{$consult_url}" target="_blank">点击查看回复</a>', 0, '【{$site_name}】您的平台客服咨询已经回复。', 0, '{$site_name}提醒：您的平台客服咨询已经回复。', '<p>\r\n {$site_name}提醒：\r\n</p>\r\n<p>\r\n  您的平台客服咨询已经回复。\r\n</p>\r\n<p>\r\n  <a href="{$consult_url}" target="_blank">点击查看回复</a> \r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>'),
('order_deliver_success', '商品出库提醒', 1, '您的订单已经出库。<a href="{$order_url}" target="_blank">点击查看订单</a>', 0, '【{$site_name}】您的订单已经出库。订单编号 {$order_sn}。', 0, '{$site_name}提醒：您的订单已经出库。订单编号 {$order_sn}。', '<p>\r\n  {$site_name}提醒：\r\n</p>\r\n<p>\r\n  您的订单已经出库。订单编号 {$order_sn}。<br />\r\n<a href="{$order_url}" target="_blank">点击查看订单</a>\r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>\r\n<br />'),
('order_payment_success', '付款成功提醒', 1, '关于订单：{$order_sn}的款项已经收到，请留意出库通知。<a href="{$order_url}" target="_blank">点击查看订单详情</a>', 0, '【{$site_name}】{$order_sn}的款项已经收到，请留意出库通知。', 0, '{$site_name}提醒：{$order_sn}的款项已经收到，请留意出库通知。', '<p>\r\n {$site_name}提醒：\r\n</p>\r\n<p>\r\n  {$order_sn}的款项已经收到，请留意出库通知。\r\n</p>\r\n<p>\r\n  <a href="{$order_url}" target="_blank">点击查看订单详情</a>\r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>\r\n<br />'),
('predeposit_change', '余额变动提醒', 1, '你的账户于 {$time} 账户资金有变化，描述：{$desc}，可用金额变化 ：{$av_amount}元，冻结金额变化：{$freeze_amount}元,当前余额：{$available_predeposit}', 1, '101767', 0, '{$site_name}提醒：你的账户于 {$time} 账户资金有变化，描述：{$desc}，可用金额变化： {$av_amount}元，冻结金额变化：{$freeze_amount}元。', '<p>\r\n  {$site_name}提醒：\r\n</p>\r\n<p>\r\n  你的账户于 {$time} 账户资金有变化，描述：{$desc}，可用金额变化：{$av_amount}元，冻结金额变化：{$freeze_amount}元。\r\n</p>\r\n<p>\r\n  <a href="{$pd_url}" target="_blank">点击查看余额</a> \r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>'),
('recharge_card_balance_change', '充值卡余额变动提醒', 1, '你的账户于 {$time} 充值卡余额有变化，描述：{$description}，可用充值卡余额变化 ：{$available_amount}元，冻结充值卡余额变化：{$freeze_amount}元。<a href="{$url}" target="_blank">点击查看充值卡余额</a>', 0, '【{$site_name}】你的账户于 {$time} 充值卡余额有变化，描述：{$description}，可用充值卡余额变化： {$available_amount}元，冻结充值卡余额变化：{$freeze_amount}元。', 0, '{$site_name}提醒：你的账户于 {$time} 充值卡余额有变化，描述：{$description}，可用充值卡余额变化： {$available_amount}元，冻结充值卡余额变化：{$freeze_amount}元。', '<p>\r\n    {$site_name}提醒：\r\n</p>\r\n<p>\r\n  你的账户于 {$time} 充值卡余额有变化，描述：{$description}，可用充值卡余额变化：{$available_amount}元，冻结充值卡余额变化：{$freeze_amount}元。\r\n</p>\r\n<p>\r\n  <a href="{$url}" target="_blank">点击查看余额</a> \r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<p>\r\n   <br />\r\n</p>\r\n<p>\r\n   <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n   {$mail_send_time}\r\n</p>'),
('refund_return_notice', '退款退货提醒', 1, '您的退款退货单有了变化。<a href="{$refund_url}" target="_blank">点击查看</a>', 0, '【{$site_name}】您的退款退货单有了变化。退款退货单编号：{$refund_sn}。', 0, '{$site_name}提醒：您的退款退货单有了变化。', '<p>\r\n  {$site_name}提醒：\r\n</p>\r\n<p>\r\n  您的退款退货单有了变化。退款退货单编号：{$refund_sn}。\r\n</p>\r\n<p>\r\n  &lt;a href="{$refund_url}" target="_blank"&gt;点击查看&lt;/a&gt;\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>\r\n<br />'),
('voucher_use', '代金券使用提醒', 1, '您有代金券已经使用，代金券编号：{$voucher_code}。<a href="{$voucher_url}" target="_blank">点击查看</a>', 0, '【{$site_name}】您有代金券已经使用，代金券编号：{$voucher_code}。', 0, '{$site_name}提醒：您有代金券已经使用，代金券编号：{$voucher_code}。', '<p>\r\n  {$site_name}提醒：\r\n</p>\r\n<p>\r\n  您有代金券已经使用，代金券编号：{$voucher_code}。\r\n</p>\r\n<p>\r\n &lt;a href="{$voucher_url}" target="_blank"&gt;点击查看&lt;/a&gt;\r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>'),
('voucher_will_expire', '代金券即将到期提醒', 1, '您有一个代金券即将在{$indate}过期，请记得使用。<a href="{$voucher_url}" target="_blank">点击查看</a>', 0, '【{$site_name}】您有一个代金券即将在{$indate}过期，请记得使用。', 0, '{$site_name}提醒：您有一个代金券即将在{$indate}过期，请记得使用。', '<p>\r\n  {$site_name}提醒：\r\n</p>\r\n<p>\r\n  您有一个代金券即将在{$indate}过期，请记得使用。\r\n</p>\r\n<p>\r\n <a href="{$voucher_url}" target="_blank">点击查看</a> \r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>'),
('vr_code_will_expire', '兑换码即将到期提醒', 1, '您有一组兑换码即将在{$indate}过期，请记得使用。<a href="{$vr_order_url}" target="_blank">点击查看</a>', 0, '【{$site_name}】您有一组兑换码即将在{$indate}过期，请记得使用。', 0, '{$site_name}提醒：您有一组兑换码即将在{$indate}过期，请记得使用。', '<p>\r\n {$site_name}提醒：\r\n</p>\r\n<p>\r\n  您有一组兑换码即将在{$indate}过期，请记得使用。\r\n</p>\r\n<p>\r\n &lt;a href="{$vr_order_url}" target="_blank"&gt;点击查看&lt;/a&gt;\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_member_relation`
--

CREATE TABLE IF NOT EXISTS `yunpay_member_relation` (
  `member_id` int(11) NOT NULL COMMENT '会员ID',
  `follow_id` int(11) NOT NULL COMMENT '请求ID',
  `relation_type` tinyint(1) NOT NULL COMMENT '关系类型,1：请求，2:好友,3：互相请求',
  `remark` varchar(45) DEFAULT NULL COMMENT '备注'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_message`
--

CREATE TABLE IF NOT EXISTS `yunpay_message` (
  `message_id` int(11) NOT NULL COMMENT '短消息索引id',
  `message_parent_id` int(11) DEFAULT '0' COMMENT '回复短消息message_id',
  `from_member_id` int(11) NOT NULL COMMENT '短消息发送人',
  `to_member_id` varchar(1000) NOT NULL COMMENT '短消息接收人',
  `message_title` varchar(50) DEFAULT NULL COMMENT '短消息标题',
  `message_body` varchar(255) NOT NULL COMMENT '短消息内容',
  `message_time` varchar(10) NOT NULL COMMENT '短消息发送时间',
  `message_update_time` varchar(10) DEFAULT NULL COMMENT '短消息回复更新时间',
  `message_open` tinyint(1) NOT NULL DEFAULT '0' COMMENT '短消息打开状态',
  `message_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '短消息状态，0为正常状态，1为发送人删除状态，2为接收人删除状态',
  `message_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0为私信、1为系统消息、2为留言',
  `read_member_id` varchar(1000) DEFAULT NULL COMMENT '已经读过该消息的会员id',
  `del_member_id` varchar(1000) DEFAULT NULL COMMENT '已经删除该消息的会员id',
  `message_ismore` tinyint(1) NOT NULL DEFAULT '0' COMMENT '站内信是否为一条发给多个用户 0为否 1为多条 ',
  `from_member_name` varchar(100) DEFAULT NULL COMMENT '发信息人用户名',
  `to_member_name` varchar(100) DEFAULT NULL COMMENT '接收人用户名'
) ENGINE=MyISAM AUTO_INCREMENT=322 DEFAULT CHARSET=utf8 COMMENT='短消息';

--
-- 转存表中的数据 `yunpay_message`
--

INSERT INTO `yunpay_message` (`message_id`, `message_parent_id`, `from_member_id`, `to_member_id`, `message_title`, `message_body`, `message_time`, `message_update_time`, `message_open`, `message_state`, `message_type`, `read_member_id`, `del_member_id`, `message_ismore`, `from_member_name`, `to_member_name`) VALUES
(1, 0, 0, '236', NULL, '你的账户于 2016-07-03 22:22:54 账户资金有变化，描述：充值，充值单号: 350520899774498000，可用金额变化 ：10,000.00元，冻结金额变化：0.00元', '1467555774', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(2, 0, 0, '240', NULL, '你的账户于 2016-07-04 14:06:18 账户资金有变化，描述：充值，充值单号: 940520956352635000，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1467612378', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(3, 0, 0, '240', NULL, '你的账户于 2016-07-04 14:07:34 账户资金有变化，描述：充值，充值单号: 890520956446265000，可用金额变化 ：900.00元，冻结金额变化：0.00元', '1467612454', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(4, 0, 0, '252', NULL, '你的账户于 2016-07-11 21:39:49 账户资金有变化，描述：充值，充值单号: 580521588389181000，可用金额变化 ：1.00元，冻结金额变化：0.00元', '1468244389', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(5, 0, 0, '252', NULL, '你的账户于 2016-07-11 21:41:40 账户资金有变化，描述：充值，充值单号: 340521588500859000，可用金额变化 ：1.00元，冻结金额变化：0.00元', '1468244500', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(6, 0, 0, '252', NULL, '你的账户于 2016-07-11 21:48:44 账户资金有变化，描述：充值，充值单号: 950521588924071000，可用金额变化 ：1.00元，冻结金额变化：0.00元', '1468244924', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(7, 0, 0, '252', NULL, '你的账户于 2016-07-11 21:52:14 账户资金有变化，描述：充值，充值单号: 790521589134510000，可用金额变化 ：1.00元，冻结金额变化：0.00元', '1468245134', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(8, 0, 0, '252', NULL, '你的账户于 2016-07-11 21:55:16 账户资金有变化，描述：充值，充值单号: 130521589316385000，可用金额变化 ：1.00元，冻结金额变化：0.00元', '1468245316', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(9, 0, 0, '252', NULL, '你的账户于 2016-07-12 17:07:51 账户资金有变化，描述：充值，充值单号: 290521658471354000，可用金额变化 ：1,000.00元，冻结金额变化：0.00元', '1468314471', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(10, 0, 0, '252', NULL, '你的账户于 2016-07-12 17:10:12 账户资金有变化，描述：会员升级，订单号: 450521658612344252，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1468314612', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(11, 0, 0, '1', NULL, '你的账户于 2016-07-12 17:10:12 账户资金有变化，描述：邀请人升级帐号，订单号: 400521658612331252，可用金额变化 ：200.00元，冻结金额变化：0.00元', '1468314612', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(12, 0, 0, '1', NULL, '你的账户于 2016-07-12 17:10:12 账户资金有变化，描述：邀请人升级帐号，订单号: 400521658612331252，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468314612', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(13, 0, 0, '1', NULL, '你的账户于 2016-07-12 17:10:12 账户资金有变化，描述：邀请人升级帐号，订单号: 400521658612331252，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468314612', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(14, 0, 0, '1', NULL, '你的账户于 2016-07-12 17:10:13 账户资金有变化，描述：俱乐部会员升级帐号，订单号: 400521658612331252，可用金额变化 ：600.00元，冻结金额变化：0.00元', '1468314612', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(15, 0, 0, '236', NULL, '你的账户于 2016-07-12 23:48:31 账户资金有变化，描述：会员升级，订单号: 780521682511776236，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1468338511', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(16, 0, 0, '225', NULL, '你的账户于 2016-07-12 23:48:32 账户资金有变化，描述：邀请人升级帐号，订单号: 430521682511760236，可用金额变化 ：200.00元，冻结金额变化：0.00元', '1468338511', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(17, 0, 0, '1', NULL, '你的账户于 2016-07-12 23:48:32 账户资金有变化，描述：邀请人升级帐号，订单号: 430521682511760236，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468338511', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(18, 0, 0, '1', NULL, '你的账户于 2016-07-12 23:48:32 账户资金有变化，描述：邀请人升级帐号，订单号: 430521682511760236，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468338511', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(19, 0, 0, '1', NULL, '你的账户于 2016-07-12 23:48:32 账户资金有变化，描述：俱乐部会员升级帐号，订单号: 430521682511760236，可用金额变化 ：600.00元，冻结金额变化：0.00元', '1468338511', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(20, 0, 0, '265', NULL, '你的账户于 2016-07-13 09:51:57 账户资金有变化，描述：充值，充值单号: 920521718669866265，可用金额变化 ：1,000.00元，冻结金额变化：0.00元', '1468374717', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(21, 0, 0, '265', NULL, '你的账户于 2016-07-13 09:52:21 账户资金有变化，描述：会员升级，订单号: 570521718741447265，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1468374741', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(22, 0, 0, '240', NULL, '你的账户于 2016-07-13 09:52:21 账户资金有变化，描述：邀请人升级帐号，订单号: 470521718741436265，可用金额变化 ：200.00元，冻结金额变化：0.00元', '1468374741', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(23, 0, 0, '1', NULL, '你的账户于 2016-07-13 09:52:21 账户资金有变化，描述：邀请人升级帐号，订单号: 470521718741436265，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468374741', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(24, 0, 0, '1', NULL, '你的账户于 2016-07-13 09:52:22 账户资金有变化，描述：邀请人升级帐号，订单号: 470521718741436265，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468374741', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(25, 0, 0, '1', NULL, '你的账户于 2016-07-13 09:52:22 账户资金有变化，描述：俱乐部会员升级帐号，订单号: 470521718741436265，可用金额变化 ：600.00元，冻结金额变化：0.00元', '1468374741', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(26, 0, 0, '240', NULL, '你的账户于 2016-07-13 10:17:11 账户资金有变化，描述：会员升级，订单号: 950521720231018240，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1468376230', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(27, 0, 0, '1', NULL, '你的账户于 2016-07-13 10:17:11 账户资金有变化，描述：邀请人升级帐号，订单号: 560521720231004240，可用金额变化 ：200.00元，冻结金额变化：0.00元', '1468376230', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(28, 0, 0, '1', NULL, '你的账户于 2016-07-13 10:17:11 账户资金有变化，描述：邀请人升级帐号，订单号: 560521720231004240，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468376230', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(29, 0, 0, '1', NULL, '你的账户于 2016-07-13 10:17:11 账户资金有变化，描述：邀请人升级帐号，订单号: 560521720231004240，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468376230', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(30, 0, 0, '1', NULL, '你的账户于 2016-07-13 10:17:11 账户资金有变化，描述：俱乐部会员升级帐号，订单号: 560521720231004240，可用金额变化 ：600.00元，冻结金额变化：0.00元', '1468376230', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(31, 0, 0, '259', NULL, '你的账户于 2016-07-13 10:28:36 账户资金有变化，描述：充值，充值单号: 810521720898352000，可用金额变化 ：1,000.00元，冻结金额变化：0.00元', '1468376916', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(32, 0, 0, '259', NULL, '你的账户于 2016-07-13 10:28:39 账户资金有变化，描述：会员升级，订单号: 240521720919184259，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1468376919', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(33, 0, 0, '257', NULL, '你的账户于 2016-07-13 10:28:39 账户资金有变化，描述：邀请人升级帐号，订单号: 550521720919172259，可用金额变化 ：200.00元，冻结金额变化：0.00元', '1468376919', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(34, 0, 0, '1', NULL, '你的账户于 2016-07-13 10:28:39 账户资金有变化，描述：邀请人升级帐号，订单号: 550521720919172259，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468376919', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(35, 0, 0, '1', NULL, '你的账户于 2016-07-13 10:28:39 账户资金有变化，描述：邀请人升级帐号，订单号: 550521720919172259，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468376919', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(36, 0, 0, '1', NULL, '你的账户于 2016-07-13 10:28:39 账户资金有变化，描述：俱乐部会员升级帐号，订单号: 550521720919172259，可用金额变化 ：600.00元，冻结金额变化：0.00元', '1468376919', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(37, 0, 0, '257', NULL, '你的账户于 2016-07-13 12:36:33 账户资金有变化，描述：充值，充值单号: 350521728578976000，可用金额变化 ：1,000.00元，冻结金额变化：0.00元', '1468384593', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(38, 0, 0, '257', NULL, '你的账户于 2016-07-13 12:36:35 账户资金有变化，描述：会员升级，订单号: 920521728595816257，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1468384595', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(39, 0, 0, '1', NULL, '你的账户于 2016-07-13 12:36:36 账户资金有变化，描述：邀请人升级帐号，订单号: 330521728595800257，可用金额变化 ：200.00元，冻结金额变化：0.00元', '1468384595', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(40, 0, 0, '1', NULL, '你的账户于 2016-07-13 12:36:36 账户资金有变化，描述：邀请人升级帐号，订单号: 330521728595800257，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468384595', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(41, 0, 0, '1', NULL, '你的账户于 2016-07-13 12:36:36 账户资金有变化，描述：邀请人升级帐号，订单号: 330521728595800257，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468384595', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(42, 0, 0, '1', NULL, '你的账户于 2016-07-13 12:36:36 账户资金有变化，描述：俱乐部会员升级帐号，订单号: 330521728595800257，可用金额变化 ：600.00元，冻结金额变化：0.00元', '1468384595', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(43, 0, 0, '282', NULL, '你的账户于 2016-07-13 14:56:53 账户资金有变化，描述：充值，充值单号: 340521737013738000，可用金额变化 ：1,000.00元，冻结金额变化：0.00元', '1468393013', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(44, 0, 0, '282', NULL, '你的账户于 2016-07-13 14:57:54 账户资金有变化，描述：会员升级，订单号: 620521737074570282，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1468393074', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(45, 0, 0, '236', NULL, '你的账户于 2016-07-13 14:57:54 账户资金有变化，描述：邀请人升级帐号，订单号: 390521737074555282，可用金额变化 ：200.00元，冻结金额变化：0.00元', '1468393074', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(46, 0, 0, '225', NULL, '你的账户于 2016-07-13 14:57:54 账户资金有变化，描述：邀请人升级帐号，订单号: 390521737074555282，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468393074', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(47, 0, 0, '1', NULL, '你的账户于 2016-07-13 14:57:55 账户资金有变化，描述：邀请人升级帐号，订单号: 390521737074555282，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468393074', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(48, 0, 0, '1', NULL, '你的账户于 2016-07-13 14:57:55 账户资金有变化，描述：俱乐部会员升级帐号，订单号: 390521737074555282，可用金额变化 ：600.00元，冻结金额变化：0.00元', '1468393074', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(49, 0, 0, '283', NULL, '你的账户于 2016-07-13 15:13:26 账户资金有变化，描述：充值，充值单号: 440521738006392000，可用金额变化 ：1,000.00元，冻结金额变化：0.00元', '1468394006', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(50, 0, 0, '283', NULL, '你的账户于 2016-07-13 15:15:39 账户资金有变化，描述：会员升级，订单号: 870521738139108283，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1468394139', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(51, 0, 0, '282', NULL, '你的账户于 2016-07-13 15:15:39 账户资金有变化，描述：邀请人升级帐号，订单号: 790521738139095283，可用金额变化 ：200.00元，冻结金额变化：0.00元', '1468394139', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(52, 0, 0, '236', NULL, '你的账户于 2016-07-13 15:15:39 账户资金有变化，描述：邀请人升级帐号，订单号: 790521738139095283，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468394139', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(53, 0, 0, '225', NULL, '你的账户于 2016-07-13 15:15:39 账户资金有变化，描述：邀请人升级帐号，订单号: 790521738139095283，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468394139', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(54, 0, 0, '1', NULL, '你的账户于 2016-07-13 15:15:39 账户资金有变化，描述：俱乐部会员升级帐号，订单号: 790521738139095283，可用金额变化 ：600.00元，冻结金额变化：0.00元', '1468394139', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(55, 0, 0, '239', NULL, '你的账户于 2016-07-13 18:39:33 账户资金有变化，描述：充值，充值单号: 790521750348058000，可用金额变化 ：1,000.00元，冻结金额变化：0.00元', '1468406373', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(56, 0, 0, '239', NULL, '你的账户于 2016-07-13 18:40:39 账户资金有变化，描述：会员升级，订单号: 270521750439585239，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1468406439', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(57, 0, 0, '1', NULL, '你的账户于 2016-07-13 18:40:39 账户资金有变化，描述：邀请人升级帐号，订单号: 180521750439575239，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468406439', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(58, 0, 0, '1', NULL, '你的账户于 2016-07-13 18:40:39 账户资金有变化，描述：邀请人升级帐号，订单号: 180521750439575239，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468406439', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(59, 0, 0, '1', NULL, '你的账户于 2016-07-13 18:40:40 账户资金有变化，描述：邀请人升级帐号，订单号: 180521750439575239，可用金额变化 ：200.00元，冻结金额变化：0.00元', '1468406439', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(60, 0, 0, '1', NULL, '你的账户于 2016-07-13 18:40:40 账户资金有变化，描述：俱乐部会员升级帐号，订单号: 180521750439575239，可用金额变化 ：600.00元，冻结金额变化：0.00元', '1468406439', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(61, 0, 0, '294', NULL, '你的账户于 2016-07-13 23:10:01 账户资金有变化，描述：充值，充值单号: 600521766601253000，可用金额变化 ：1,000.00元，冻结金额变化：0.00元', '1468422601', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(62, 0, 0, '293', NULL, '你的账户于 2016-07-13 23:10:15 账户资金有变化，描述：充值，充值单号: 580521766615723000，可用金额变化 ：1,000.00元，冻结金额变化：0.00元', '1468422615', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(63, 0, 0, '293', NULL, '你的账户于 2016-07-13 23:21:31 账户资金有变化，描述：会员升级，订单号: 990521767291452293，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1468423291', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(64, 0, 0, '236', NULL, '你的账户于 2016-07-13 23:21:31 账户资金有变化，描述：邀请人升级帐号，订单号: 380521767291438293，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468423291', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(65, 0, 0, '225', NULL, '你的账户于 2016-07-13 23:21:31 账户资金有变化，描述：邀请人升级帐号，订单号: 380521767291438293，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468423291', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(66, 0, 0, '1', NULL, '你的账户于 2016-07-13 23:21:32 账户资金有变化，描述：邀请人升级帐号，订单号: 380521767291438293，可用金额变化 ：200.00元，冻结金额变化：0.00元', '1468423291', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(67, 0, 0, '1', NULL, '你的账户于 2016-07-13 23:21:32 账户资金有变化，描述：俱乐部会员升级帐号，订单号: 380521767291438293，可用金额变化 ：600.00元，冻结金额变化：0.00元', '1468423291', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(68, 0, 0, '294', NULL, '你的账户于 2016-07-13 23:33:17 账户资金有变化，描述：会员升级，订单号: 480521767997105294，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1468423997', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(69, 0, 0, '293', NULL, '你的账户于 2016-07-13 23:33:17 账户资金有变化，描述：邀请人升级帐号，订单号: 850521767997093294，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468423997', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(70, 0, 0, '236', NULL, '你的账户于 2016-07-13 23:33:17 账户资金有变化，描述：邀请人升级帐号，订单号: 850521767997093294，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468423997', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(71, 0, 0, '225', NULL, '你的账户于 2016-07-13 23:33:17 账户资金有变化，描述：邀请人升级帐号，订单号: 850521767997093294，可用金额变化 ：200.00元，冻结金额变化：0.00元', '1468423997', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(72, 0, 0, '1', NULL, '你的账户于 2016-07-13 23:33:17 账户资金有变化，描述：俱乐部会员升级帐号，订单号: 850521767997093294，可用金额变化 ：600.00元，冻结金额变化：0.00元', '1468423997', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(73, 0, 0, '289', NULL, '你的账户于 2016-07-14 00:13:03 账户资金有变化，描述：充值，充值单号: 730521770355762000，可用金额变化 ：1,000.00元，冻结金额变化：0.00元', '1468426383', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(74, 0, 0, '289', NULL, '你的账户于 2016-07-14 00:14:06 账户资金有变化，描述：会员升级，订单号: 160521770446533289，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1468426446', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(75, 0, 0, '239', NULL, '你的账户于 2016-07-14 00:14:06 账户资金有变化，描述：邀请人升级帐号，订单号: 990521770446523289，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468426446', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(76, 0, 0, '1', NULL, '你的账户于 2016-07-14 00:14:06 账户资金有变化，描述：邀请人升级帐号，订单号: 990521770446523289，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468426446', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(77, 0, 0, '1', NULL, '你的账户于 2016-07-14 00:14:07 账户资金有变化，描述：邀请人升级帐号，订单号: 990521770446523289，可用金额变化 ：200.00元，冻结金额变化：0.00元', '1468426446', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(78, 0, 0, '1', NULL, '你的账户于 2016-07-14 00:14:07 账户资金有变化，描述：俱乐部会员升级帐号，订单号: 990521770446523289，可用金额变化 ：600.00元，冻结金额变化：0.00元', '1468426446', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(79, 0, 0, '265', NULL, '你的账户于 2016-07-15 00:29:45 账户资金有变化，描述：充值，充值单号: 390521857751362000，可用金额变化 ：1.00元，冻结金额变化：0.00元', '1468513785', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(80, 0, 0, '281', NULL, '你的账户于 2016-07-15 14:11:56 账户资金有变化，描述：充值，充值单号: 900521907116934000，可用金额变化 ：10,000.00元，冻结金额变化：0.00元', '1468563116', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(81, 0, 0, '281', NULL, '你的账户于 2016-07-15 14:13:14 账户资金有变化，描述：会员升级，订单号: 770521907194692281，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1468563194', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(82, 0, 0, '276', NULL, '你的账户于 2016-07-15 14:13:14 账户资金有变化，描述：被邀请人[13632242148] 升级帐号,单号:820521907194684281，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468563194', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(83, 0, 0, '257', NULL, '你的账户于 2016-07-15 14:13:15 账户资金有变化，描述：被邀请人[13632242148] 升级帐号,单号:820521907194684281，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468563194', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(84, 0, 0, '1', NULL, '你的账户于 2016-07-15 14:13:15 账户资金有变化，描述：被邀请人[13632242148] 升级帐号,单号:820521907194684281，可用金额变化 ：200.00元，冻结金额变化：0.00元', '1468563194', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(85, 0, 0, '2', NULL, '你的账户于 2016-07-15 14:13:15 账户资金有变化，描述：俱乐部会员升级帐号，订单号: 820521907194684281，可用金额变化 ：600.00元，冻结金额变化：0.00元', '1468563194', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(86, 0, 0, '281', NULL, '你的账户于 2016-07-16 00:25:38 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 180521943938220281，可用金额变化 ：100.00元，冻结金额变化：100.00元', '1468599938', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(87, 0, 0, '281', NULL, '你的账户于 2016-07-16 00:25:45 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 280521943945341281，可用金额变化 ：100.00元，冻结金额变化：100.00元', '1468599945', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(88, 0, 0, '281', NULL, '你的账户于 2016-07-16 00:25:48 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 580521943948940281，可用金额变化 ：100.00元，冻结金额变化：100.00元', '1468599948', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(89, 0, 0, '281', NULL, '你的账户于 2016-07-16 00:25:50 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 290521943950285281，可用金额变化 ：100.00元，冻结金额变化：100.00元', '1468599950', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(90, 0, 0, '281', NULL, '你的账户于 2016-07-16 00:25:54 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 920521943954660281，可用金额变化 ：100.00元，冻结金额变化：100.00元', '1468599954', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(91, 0, 0, '281', NULL, '你的账户于 2016-07-16 00:30:40 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 290521944240079281，可用金额变化 ：100.00元，冻结金额变化：100.00元', '1468600240', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(92, 0, 0, '236', NULL, '你的账户于 2016-07-16 00:35:25 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 180521944525110236，可用金额变化 ：500.00元，冻结金额变化：500.00元', '1468600525', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(93, 0, 0, '281', NULL, '你的账户于 2016-07-16 00:37:07 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 910521944627980281，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468600627', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(94, 0, 0, '281', NULL, '你的账户于 2016-07-16 00:41:02 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 590521944862235281，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468600862', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(95, 0, 0, '281', NULL, '你的账户于 2016-07-16 00:43:15 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 780521944995356281，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468600995', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(96, 0, 0, '281', NULL, '你的账户于 2016-07-16 00:45:42 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 130521945142812281，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468601142', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(97, 0, 0, '281', NULL, '你的账户于 2016-07-16 00:47:04 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 940521945224252281，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468601224', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(98, 0, 0, '281', NULL, '你的账户于 2016-07-16 00:47:32 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 430521945252375281，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468601252', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(99, 0, 0, '281', NULL, '你的账户于 2016-07-16 00:50:26 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 390521945426733281，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468601426', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(100, 0, 0, '281', NULL, '你的账户于 2016-07-16 00:58:18 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 260521945898890281，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468601898', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(101, 0, 0, '281', NULL, '你的账户于 2016-07-16 00:58:22 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 170521945902834281，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468601902', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(102, 0, 0, '281', NULL, '你的账户于 2016-07-16 00:58:25 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 860521945905085281，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468601905', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(103, 0, 0, '281', NULL, '你的账户于 2016-07-16 00:58:27 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 850521945907923281，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468601907', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(104, 0, 0, '281', NULL, '你的账户于 2016-07-16 00:59:43 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 820521945983259281，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468601983', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(105, 0, 0, '281', NULL, '你的账户于 2016-07-16 00:59:50 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 610521945990015281，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468601989', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(106, 0, 0, '281', NULL, '你的账户于 2016-07-16 00:59:53 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 860521945993661281，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468601993', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(107, 0, 0, '236', NULL, '你的账户于 2016-07-16 01:06:21 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 900521946381977000，可用金额变化 ：300.00元，冻结金额变化：300.00元', '1468602381', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(108, 0, 0, '281', NULL, '你的账户于 2016-07-16 01:11:00 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 260521946660465281，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468602660', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(109, 0, 0, '281', NULL, '你的账户于 2016-07-16 01:11:05 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 250521946665328281，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468602665', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(110, 0, 0, '281', NULL, '你的账户于 2016-07-16 01:11:52 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 590521946712062281，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468602712', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(111, 0, 0, '281', NULL, '你的账户于 2016-07-16 09:22:47 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 670521976167477281，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468632167', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(112, 0, 0, '281', NULL, '你的账户于 2016-07-16 09:25:10 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 860521976310064000，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468632310', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(113, 0, 0, '281', NULL, '你的账户于 2016-07-16 09:26:16 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 880521976376766000，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468632376', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(114, 0, 0, '281', NULL, '你的账户于 2016-07-16 09:26:26 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 470521976386076000，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468632386', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(115, 0, 0, '281', NULL, '你的账户于 2016-07-16 09:27:39 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 980521976459848000，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468632459', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(116, 0, 0, '281', NULL, '你的账户于 2016-07-16 09:29:25 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 840521976565813000，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468632565', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(117, 0, 0, '281', NULL, '你的账户于 2016-07-16 09:29:36 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 410521976576224000，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468632576', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(118, 0, 0, '281', NULL, '你的账户于 2016-07-16 09:30:35 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 310521976635033000，可用金额变化 ：101.00元，冻结金额变化：101.00元', '1468632635', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(119, 0, 0, '3', NULL, '你的账户于 2016-07-17 21:52:59 账户资金有变化，描述：充值，充值单号: 870522107579816000，可用金额变化 ：1.00元，冻结金额变化：0.00元', '1468763579', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(120, 0, 0, '3', NULL, '你的账户于 2016-07-17 22:07:40 账户资金有变化，描述：充值，充值单号: 850522108460417000，可用金额变化 ：10.00元，冻结金额变化：0.00元', '1468764460', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(121, 0, 0, '3', NULL, '你的账户于 2016-07-17 22:21:38 账户资金有变化，描述：充值，充值单号: 820522109298837000，可用金额变化 ：100,000.00元，冻结金额变化：0.00元', '1468765298', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(122, 0, 0, '3', NULL, '你的账户于 2016-07-17 22:22:55 账户资金有变化，描述：会员升级，订单号: 490522109375842003，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1468765375', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(123, 0, 0, '1', NULL, '你的账户于 2016-07-17 22:22:55 账户资金有变化，描述：被邀请人[13450226610] 升级帐号,单号:160522109375832003，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468765375', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(124, 0, 0, '2', NULL, '你的账户于 2016-07-17 22:22:55 账户资金有变化，描述：俱乐部会员升级帐号，订单号: 160522109375832003，可用金额变化 ：900.00元，冻结金额变化：0.00元', '1468765375', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(125, 0, 0, '3', NULL, '你的账户于 2016-07-17 22:29:08 账户资金有变化，描述：充值，充值单号: 290522109748742000，可用金额变化 ：1,000.00元，冻结金额变化：0.00元', '1468765748', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(126, 0, 0, '4', NULL, '你的账户于 2016-07-17 23:06:08 账户资金有变化，描述：充值，充值单号: 280522111968206000，可用金额变化 ：10,000.00元，冻结金额变化：0.00元', '1468767968', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(127, 0, 0, '4', NULL, '你的账户于 2016-07-17 23:10:51 账户资金有变化，描述：会员升级，订单号: 540522112251586004，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1468768251', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(128, 0, 0, '2', NULL, '你的账户于 2016-07-17 23:10:51 账户资金有变化，描述：被邀请人[13632242148] 升级帐号,单号:260522112251575004，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468768251', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(129, 0, 0, '2', NULL, '你的账户于 2016-07-17 23:10:51 账户资金有变化，描述：俱乐部会员升级帐号，订单号: 260522112251575004，可用金额变化 ：900.00元，冻结金额变化：0.00元', '1468768251', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(130, 0, 0, '9', NULL, '你的账户于 2016-07-18 09:46:18 账户资金有变化，描述：充值，充值单号: 240522150378912000，可用金额变化 ：10,000.00元，冻结金额变化：0.00元', '1468806378', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(131, 0, 0, '9', NULL, '你的账户于 2016-07-18 09:50:15 账户资金有变化，描述：会员升级，订单号: 390522150615616009，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1468806615', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(132, 0, 0, '1', NULL, '你的账户于 2016-07-18 09:50:15 账户资金有变化，描述：被邀请人[13538850622] 升级帐号,单号:940522150615601009，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1468806615', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(133, 0, 0, '2', NULL, '你的账户于 2016-07-18 09:50:15 账户资金有变化，描述：俱乐部会员升级帐号，订单号: 940522150615601009，可用金额变化 ：900.00元，冻结金额变化：0.00元', '1468806615', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(134, 0, 0, '13', NULL, '你的账户于 2016-07-18 10:03:26 账户资金有变化，描述：充值，充值单号: 700522151406189000，可用金额变化 ：1,000.00元，冻结金额变化：0.00元', '1468807406', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(135, 0, 0, '4', NULL, '你的账户于 2016-07-21 15:27:11 账户资金有变化，描述：购买油卡，订单号: 980522430031714004，可用金额变化 ：-500.00元，冻结金额变化：0.00元', '1469086031', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(136, 0, 0, '8', NULL, '你的账户于 2016-07-21 16:15:35 账户资金有变化，描述：充值，充值单号: 930522432919004008，可用金额变化 ：1.00元，冻结金额变化：0.00元', '1469088935', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(137, 0, 0, '15', NULL, '你的账户于 2016-07-21 16:25:52 账户资金有变化，描述：充值，充值单号: 530522433543345000，可用金额变化 ：1.00元，冻结金额变化：0.00元', '1469089552', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(138, 0, 0, '4', NULL, '你的账户于 2016-07-21 17:18:04 账户资金有变化，描述：向[123456]消费,单号:490522436684688004，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1469092684', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(139, 0, 0, '4', NULL, '你的账户于 2016-07-21 17:18:16 账户资金有变化，描述：向[123456]消费,单号:520522436696304004，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1469092696', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(140, 0, 0, '4', NULL, '你的账户于 2016-07-21 17:18:31 账户资金有变化，描述：向[123456]消费,单号:160522436711112004，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1469092711', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(141, 0, 0, '4', NULL, '你的账户于 2016-07-21 17:23:14 账户资金有变化，描述：向[123456]消费,单号:790522436994456004，可用金额变化 ：-1.00元，冻结金额变化：0.00元', '1469092994', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(142, 0, 0, '4', NULL, '你的账户于 2016-07-21 17:24:07 账户资金有变化，描述：向[123456]消费,单号:900522437047863004，可用金额变化 ：-1.00元，冻结金额变化：0.00元', '1469093047', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(143, 0, 0, '9', NULL, '你的账户于 2016-07-22 01:05:13 账户资金有变化，描述：向[18680564089]消费,单号:420522464713715000，可用金额变化 ：-500.00元，冻结金额变化：0.00元', '1469120713', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(144, 0, 0, '9', NULL, '你的账户于 2016-07-22 01:05:26 账户资金有变化，描述：向[18680564089]消费,单号:610522464726542000，可用金额变化 ：-500.00元，冻结金额变化：0.00元', '1469120726', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(145, 0, 0, '9', NULL, '你的账户于 2016-07-22 01:08:29 账户资金有变化，描述：向[18680564089]消费,单号:390522464909868009，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1469120909', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(146, 0, 0, '12', NULL, '你的账户于 2016-07-22 01:11:37 账户资金有变化，描述：充值，充值单号: 640522465097905000，可用金额变化 ：1,000.00元，冻结金额变化：0.00元', '1469121097', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(147, 0, 0, '12', NULL, '你的账户于 2016-07-22 01:11:56 账户资金有变化，描述：会员升级，订单号: 140522465116611012，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1469121116', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(148, 0, 0, '9', NULL, '你的账户于 2016-07-22 01:11:56 账户资金有变化，描述：被邀请人[18680564089] 升级帐号,单号:950522465116602012，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1469121116', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(149, 0, 0, '1', NULL, '你的账户于 2016-07-22 01:11:56 账户资金有变化，描述：被邀请人[18680564089] 升级帐号,单号:950522465116602012，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1469121116', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(150, 0, 0, '2', NULL, '你的账户于 2016-07-22 01:11:56 账户资金有变化，描述：俱乐部会员升级帐号，订单号: 950522465116602012，可用金额变化 ：800.00元，冻结金额变化：0.00元', '1469121116', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(151, 0, 0, '9', NULL, '你的账户于 2016-07-22 01:13:41 账户资金有变化，描述：向[18680564089]消费,单号:250522465221247009，可用金额变化 ：-500.00元，冻结金额变化：0.00元', '1469121221', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(152, 0, 0, '9', NULL, '你的账户于 2016-07-22 10:16:34 账户资金有变化，描述：向[18680564089]消费,单号:470522497794972000，可用金额变化 ：-500.00元，冻结金额变化：0.00元', '1469153794', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(153, 0, 0, '9', NULL, '你的账户于 2016-07-22 11:27:54 账户资金有变化，描述：向[18680564089]消费,单号:180522502074065000，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1469158074', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(154, 0, 0, '9', NULL, '你的账户于 2016-07-22 11:39:06 账户资金有变化，描述：向[18680564089]消费,单号:510522502746633000，可用金额变化 ：-100.00元，冻结金额变化：0.00元', '1469158746', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(155, 0, 0, '9', NULL, '你的账户于 2016-07-22 11:39:50 账户资金有变化，描述：向[18680564089]消费,单号:670522502790200000，可用金额变化 ：-100.00元，冻结金额变化：0.00元', '1469158790', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(156, 0, 0, '9', NULL, '你的账户于 2016-07-22 11:40:04 账户资金有变化，描述：向[18680564089]消费,单号:970522502804250000，可用金额变化 ：-100.00元，冻结金额变化：0.00元', '1469158804', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(157, 0, 0, '9', NULL, '你的账户于 2016-07-22 11:40:20 账户资金有变化，描述：向[18680564089]消费,单号:570522502820274000，可用金额变化 ：-100.00元，冻结金额变化：0.00元', '1469158820', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(158, 0, 0, '9', NULL, '你的账户于 2016-07-22 11:40:58 账户资金有变化，描述：向[18680564089]消费,单号:330522502858915000，可用金额变化 ：-100.00元，冻结金额变化：0.00元', '1469158858', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(159, 0, 0, '9', NULL, '你的账户于 2016-07-22 11:42:19 账户资金有变化，描述：向[18680564089]消费,单号:150522502939562000，可用金额变化 ：-100.00元，冻结金额变化：0.00元', '1469158939', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(160, 0, 0, '9', NULL, '你的账户于 2016-07-22 11:42:41 账户资金有变化，描述：向[18680564089]消费,单号:120522502961005000，可用金额变化 ：-100.00元，冻结金额变化：0.00元', '1469158960', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(161, 0, 0, '9', NULL, '你的账户于 2016-07-22 11:42:56 账户资金有变化，描述：向[18680564089]消费,单号:560522502976970000，可用金额变化 ：-100.00元，冻结金额变化：0.00元', '1469158976', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(162, 0, 0, '9', NULL, '你的账户于 2016-07-22 11:45:44 账户资金有变化，描述：向[18680564089]消费,单号:190522503144484000，可用金额变化 ：-100.00元，冻结金额变化：0.00元', '1469159144', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(163, 0, 0, '9', NULL, '你的账户于 2016-07-22 11:46:04 账户资金有变化，描述：向[18680564089]消费,单号:210522503164360000，可用金额变化 ：-100.00元，冻结金额变化：0.00元', '1469159164', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(164, 0, 0, '12', NULL, '你的账户于 2016-07-22 11:46:04 账户资金有变化，描述：收到[13538850622 付款,单号:210522503164360000,金额:100,手续费:15%，可用金额变化 ：85.00元，冻结金额变化：0.00元', '1469159164', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(165, 0, 0, '9', NULL, '你的账户于 2016-07-22 13:21:59 账户资金有变化，描述：购买油卡，订单号: 410522508919166009，可用金额变化 ：-500.00元，冻结金额变化：0.00元', '1469164919', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(166, 0, 0, '4', NULL, '你的账户于 2016-07-22 16:02:12 账户资金有变化，描述：向[123456]消费,单号:510522518532631004，可用金额变化 ：-100.00元，冻结金额变化：0.00元', '1469174532', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(167, 0, 0, '5', NULL, '你的账户于 2016-07-22 16:02:12 账户资金有变化，描述：收到[13632242148 付款,单号:510522518532631004,金额:100,手续费:15%，可用金额变化 ：85.00元，冻结金额变化：0.00元', '1469174532', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(168, 0, 0, '4', NULL, '你的账户于 2016-07-22 16:02:31 账户资金有变化，描述：向[123456]消费,单号:340522518551625004，可用金额变化 ：-100.00元，冻结金额变化：0.00元', '1469174551', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(169, 0, 0, '5', NULL, '你的账户于 2016-07-22 16:02:31 账户资金有变化，描述：收到[13632242148 付款,单号:340522518551625004,金额:100,手续费:15%，可用金额变化 ：85.00元，冻结金额变化：0.00元', '1469174551', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(170, 0, 0, '4', NULL, '你的账户于 2016-07-22 16:03:07 账户资金有变化，描述：向[123456]消费,单号:660522518587738004，可用金额变化 ：-100.00元，冻结金额变化：0.00元', '1469174587', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(171, 0, 0, '5', NULL, '你的账户于 2016-07-22 16:03:07 账户资金有变化，描述：收到[13632242148 付款,单号:660522518587738004,金额:100,手续费:15%，可用金额变化 ：85.00元，冻结金额变化：0.00元', '1469174587', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(172, 0, 0, '4', NULL, '你的账户于 2016-07-23 00:01:01 账户资金有变化，描述：现金返还，返还单号: 780522547261944000，可用金额变化 ：0.02元，冻结金额变化：0.00元', '1469203261', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(173, 0, 0, '9', NULL, '你的账户于 2016-07-23 00:01:04 账户资金有变化，描述：现金返还，返还单号: 260522547264033000，可用金额变化 ：0.01元，冻结金额变化：0.00元', '1469203261', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(174, 0, 0, '17', NULL, '你的账户于 2016-07-23 03:08:21 账户资金有变化，描述：充值，充值单号: 290522558501522000，可用金额变化 ：1,000.00元，冻结金额变化：0.00元', '1469214501', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(175, 0, 0, '17', NULL, '你的账户于 2016-07-23 03:08:26 账户资金有变化，描述：会员升级，订单号: 670522558506331017，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1469214506', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(176, 0, 0, '9', NULL, '你的账户于 2016-07-23 03:08:26 账户资金有变化，描述：被邀请人[13631430470] 升级帐号,单号:300522558506319017，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1469214506', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(177, 0, 0, '1', NULL, '你的账户于 2016-07-23 03:08:26 账户资金有变化，描述：被邀请人[13631430470] 升级帐号,单号:300522558506319017，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1469214506', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(178, 0, 0, '2', NULL, '你的账户于 2016-07-23 03:08:26 账户资金有变化，描述：俱乐部会员升级帐号，订单号: 300522558506319017，可用金额变化 ：800.00元，冻结金额变化：0.00元', '1469214506', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(179, 0, 0, '17', NULL, '你的账户于 2016-07-23 03:32:10 账户资金有变化，描述：充值，充值单号: 480522559930316000，可用金额变化 ：10,000.00元，冻结金额变化：0.00元', '1469215930', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(180, 0, 0, '17', NULL, '你的账户于 2016-07-23 03:34:33 账户资金有变化，描述：向[18680564089]消费,单号:410522560073992017，可用金额变化 ：-10,000.00元，冻结金额变化：0.00元', '1469216073', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(181, 0, 0, '12', NULL, '你的账户于 2016-07-23 03:34:34 账户资金有变化，描述：收到[13631430470 付款,单号:410522560073992017,金额:10000,手续费:15%，可用金额变化 ：8,500.00元，冻结金额变化：0.00元', '1469216073', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(182, 0, 0, '17', NULL, '你的账户于 2016-07-24 00:01:01 账户资金有变化，描述：现金返还，返还单号: 610522633661386000，可用金额变化 ：0.68元，冻结金额变化：0.00元', '1469289661', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(183, 0, 0, '4', NULL, '你的账户于 2016-07-24 00:01:03 账户资金有变化，描述：现金返还，返还单号: 110522633663434000，可用金额变化 ：0.02元，冻结金额变化：0.00元', '1469289661', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(184, 0, 0, '9', NULL, '你的账户于 2016-07-24 00:01:05 账户资金有变化，描述：现金返还，返还单号: 140522633665462000，可用金额变化 ：0.01元，冻结金额变化：0.00元', '1469289661', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(185, 0, 0, '17', NULL, '你的账户于 2016-07-25 00:01:01 账户资金有变化，描述：现金返还，返还单号: 870522720061915000，可用金额变化 ：0.68元，冻结金额变化：0.00元', '1469376061', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(186, 0, 0, '4', NULL, '你的账户于 2016-07-25 00:01:03 账户资金有变化，描述：现金返还，返还单号: 440522720063968000，可用金额变化 ：0.02元，冻结金额变化：0.00元', '1469376061', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(187, 0, 0, '9', NULL, '你的账户于 2016-07-25 00:01:05 账户资金有变化，描述：现金返还，返还单号: 210522720065986000，可用金额变化 ：0.01元，冻结金额变化：0.00元', '1469376061', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(188, 0, 0, '17', NULL, '你的账户于 2016-07-26 00:01:01 账户资金有变化，描述：现金返还，返还单号: 260522806461375000，可用金额变化 ：0.68元，冻结金额变化：0.00元', '1469462461', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(189, 0, 0, '4', NULL, '你的账户于 2016-07-26 00:01:03 账户资金有变化，描述：现金返还，返还单号: 700522806463414000，可用金额变化 ：0.02元，冻结金额变化：0.00元', '1469462461', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(190, 0, 0, '9', NULL, '你的账户于 2016-07-26 00:01:05 账户资金有变化，描述：现金返还，返还单号: 130522806465431000，可用金额变化 ：0.01元，冻结金额变化：0.00元', '1469462461', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(191, 0, 0, '17', NULL, '你的账户于 2016-07-27 00:01:01 账户资金有变化，描述：现金返还，返还单号: 540522892861850000，可用金额变化 ：0.68元，冻结金额变化：0.00元', '1469548861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(192, 0, 0, '4', NULL, '你的账户于 2016-07-27 00:01:03 账户资金有变化，描述：现金返还，返还单号: 280522892863881000，可用金额变化 ：0.02元，冻结金额变化：0.00元', '1469548861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(193, 0, 0, '9', NULL, '你的账户于 2016-07-27 00:01:05 账户资金有变化，描述：现金返还，返还单号: 260522892865897000，可用金额变化 ：0.01元，冻结金额变化：0.00元', '1469548861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(194, 0, 0, '17', NULL, '你的账户于 2016-07-28 00:01:01 账户资金有变化，描述：现金返还，返还单号: 840522979261296000，可用金额变化 ：0.68元，冻结金额变化：0.00元', '1469635261', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(195, 0, 0, '4', NULL, '你的账户于 2016-07-28 00:01:03 账户资金有变化，描述：现金返还，返还单号: 890522979263330000，可用金额变化 ：0.02元，冻结金额变化：0.00元', '1469635261', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(196, 0, 0, '9', NULL, '你的账户于 2016-07-28 00:01:05 账户资金有变化，描述：现金返还，返还单号: 130522979265358000，可用金额变化 ：0.01元，冻结金额变化：0.00元', '1469635261', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(197, 0, 0, '17', NULL, '你的账户于 2016-07-29 00:01:01 账户资金有变化，描述：现金返还，返还单号: 860523065661780000，可用金额变化 ：0.68元，冻结金额变化：0.00元', '1469721661', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(198, 0, 0, '4', NULL, '你的账户于 2016-07-29 00:01:03 账户资金有变化，描述：现金返还，返还单号: 740523065663818000，可用金额变化 ：0.02元，冻结金额变化：0.00元', '1469721661', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(199, 0, 0, '9', NULL, '你的账户于 2016-07-29 00:01:05 账户资金有变化，描述：现金返还，返还单号: 900523065665854000，可用金额变化 ：0.01元，冻结金额变化：0.00元', '1469721661', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(200, 0, 0, '17', NULL, '你的账户于 2016-07-30 00:01:01 账户资金有变化，描述：现金返还，返还单号: 530523152061799000，可用金额变化 ：0.68元，冻结金额变化：0.00元', '1469808061', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(201, 0, 0, '4', NULL, '你的账户于 2016-07-30 00:01:03 账户资金有变化，描述：现金返还，返还单号: 730523152063841000，可用金额变化 ：0.02元，冻结金额变化：0.00元', '1469808061', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(202, 0, 0, '9', NULL, '你的账户于 2016-07-30 00:01:05 账户资金有变化，描述：现金返还，返还单号: 760523152065858000，可用金额变化 ：0.01元，冻结金额变化：0.00元', '1469808061', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(203, 0, 0, '9', NULL, '你的账户于 2016-07-30 10:20:59 账户资金有变化，描述：充值油卡，订单号: 110523189259089009，可用金额变化 ：-475.00元，冻结金额变化：0.00元', '1469845259', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(204, 0, 0, '17', NULL, '你的账户于 2016-07-31 00:01:01 账户资金有变化，描述：现金返还，返还单号: 810523238461265000，可用金额变化 ：0.68元，冻结金额变化：0.00元', '1469894461', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(205, 0, 0, '4', NULL, '你的账户于 2016-07-31 00:01:03 账户资金有变化，描述：现金返还，返还单号: 790523238463308000，可用金额变化 ：0.02元，冻结金额变化：0.00元', '1469894461', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(206, 0, 0, '9', NULL, '你的账户于 2016-07-31 00:01:05 账户资金有变化，描述：现金返还，返还单号: 240523238465332000，可用金额变化 ：0.01元，冻结金额变化：0.00元', '1469894461', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(207, 0, 0, '9', NULL, '你的账户于 2016-07-31 14:58:35 账户资金有变化，描述：充值，充值单号: 130523292315149000，可用金额变化 ：10,000.00元，冻结金额变化：0.00元', '1469948315', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(208, 0, 0, '9', NULL, '你的账户于 2016-07-31 14:59:42 账户资金有变化，描述：向[18680564089]消费,单号:470523292382591000，可用金额变化 ：-10,000.00元，冻结金额变化：0.00元', '1469948382', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(209, 0, 0, '12', NULL, '你的账户于 2016-07-31 14:59:42 账户资金有变化，描述：收到[13538850622 付款,单号:470523292382591000,金额:10000,手续费:15%，可用金额变化 ：8,500.00元，冻结金额变化：0.00元', '1469948382', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(210, 0, 0, '12', NULL, '你的账户于 2016-07-31 15:10:41 账户资金有变化，描述：充值，充值单号: 170523293041592000，可用金额变化 ：10,000.00元，冻结金额变化：0.00元', '1469949041', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(211, 0, 0, '12', NULL, '你的账户于 2016-07-31 15:16:23 账户资金有变化，描述：向[13538850622]消费,单号:740523293383940012，可用金额变化 ：-10,000.00元，冻结金额变化：0.00元', '1469949383', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(212, 0, 0, '9', NULL, '你的账户于 2016-07-31 15:16:23 账户资金有变化，描述：收到[18680564089 付款,单号:740523293383940012,金额:10000,手续费:15%，可用金额变化 ：8,500.00元，冻结金额变化：0.00元', '1469949383', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(213, 0, 0, '12', NULL, '你的账户于 2016-07-31 15:19:13 账户资金有变化，描述：向[123456]消费,单号:440523293553259012，可用金额变化 ：-10,000.00元，冻结金额变化：0.00元', '1469949553', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(214, 0, 0, '5', NULL, '你的账户于 2016-07-31 15:19:13 账户资金有变化，描述：收到[18680564089 付款,单号:440523293553259012,金额:10000,手续费:15%，可用金额变化 ：8,500.00元，冻结金额变化：0.00元', '1469949553', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(215, 0, 0, '1', NULL, '你的账户于 2016-08-01 00:01:01 账户资金有变化，描述：现金返还，返还单号: 550523324861765000，可用金额变化 ：0.03元，冻结金额变化：0.00元', '1469980861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(216, 0, 0, '8', NULL, '你的账户于 2016-08-01 00:01:03 账户资金有变化，描述：现金返还，返还单号: 310523324863801000，可用金额变化 ：60.70元，冻结金额变化：0.00元', '1469980861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(217, 0, 0, '18', NULL, '你的账户于 2016-08-01 00:01:05 账户资金有变化，描述：现金返还，返还单号: 510523324865825000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1469980861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(218, 0, 0, '17', NULL, '你的账户于 2016-08-01 00:01:07 账户资金有变化，描述：现金返还，返还单号: 530523324867846000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1469980861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(219, 0, 0, '12', NULL, '你的账户于 2016-08-01 00:01:09 账户资金有变化，描述：现金返还，返还单号: 600523324869947000，可用金额变化 ：1.37元，冻结金额变化：0.00元', '1469980861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(220, 0, 0, '9', NULL, '你的账户于 2016-08-01 00:01:11 账户资金有变化，描述：现金返还，返还单号: 550523324871967000，可用金额变化 ：0.74元，冻结金额变化：0.00元', '1469980861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(221, 0, 0, '4', NULL, '你的账户于 2016-08-01 00:01:15 账户资金有变化，描述：现金返还，返还单号: 870523324875996000，可用金额变化 ：0.02元，冻结金额变化：0.00元', '1469980861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(222, 0, 0, '1', NULL, '你的账户于 2016-08-02 00:01:02 账户资金有变化，描述：现金返还，返还单号: 750523411262332000，可用金额变化 ：0.03元，冻结金额变化：0.00元', '1470067262', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(223, 0, 0, '8', NULL, '你的账户于 2016-08-02 00:01:04 账户资金有变化，描述：现金返还，返还单号: 890523411264484000，可用金额变化 ：60.70元，冻结金额变化：0.00元', '1470067262', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(224, 0, 0, '18', NULL, '你的账户于 2016-08-02 00:01:06 账户资金有变化，描述：现金返还，返还单号: 920523411266534000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470067262', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(225, 0, 0, '17', NULL, '你的账户于 2016-08-02 00:01:08 账户资金有变化，描述：现金返还，返还单号: 880523411268558000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470067262', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(226, 0, 0, '12', NULL, '你的账户于 2016-08-02 00:01:10 账户资金有变化，描述：现金返还，返还单号: 400523411270575000，可用金额变化 ：1.37元，冻结金额变化：0.00元', '1470067262', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(227, 0, 0, '9', NULL, '你的账户于 2016-08-02 00:01:12 账户资金有变化，描述：现金返还，返还单号: 520523411272618000，可用金额变化 ：0.74元，冻结金额变化：0.00元', '1470067262', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(228, 0, 0, '4', NULL, '你的账户于 2016-08-02 00:01:14 账户资金有变化，描述：现金返还，返还单号: 500523411274636000，可用金额变化 ：0.02元，冻结金额变化：0.00元', '1470067262', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(229, 0, 0, '1', NULL, '你的账户于 2016-08-03 00:01:01 账户资金有变化，描述：现金返还，返还单号: 610523497661972000，可用金额变化 ：0.03元，冻结金额变化：0.00元', '1470153661', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(230, 0, 0, '8', NULL, '你的账户于 2016-08-03 00:01:03 账户资金有变化，描述：现金返还，返还单号: 600523497663998000，可用金额变化 ：60.70元，冻结金额变化：0.00元', '1470153661', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(231, 0, 0, '18', NULL, '你的账户于 2016-08-03 00:01:06 账户资金有变化，描述：现金返还，返还单号: 850523497666034000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470153661', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(232, 0, 0, '17', NULL, '你的账户于 2016-08-03 00:01:08 账户资金有变化，描述：现金返还，返还单号: 950523497668051000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470153661', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(233, 0, 0, '12', NULL, '你的账户于 2016-08-03 00:01:10 账户资金有变化，描述：现金返还，返还单号: 800523497670068000，可用金额变化 ：1.37元，冻结金额变化：0.00元', '1470153661', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(234, 0, 0, '9', NULL, '你的账户于 2016-08-03 00:01:12 账户资金有变化，描述：现金返还，返还单号: 670523497672091000，可用金额变化 ：0.74元，冻结金额变化：0.00元', '1470153661', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(235, 0, 0, '4', NULL, '你的账户于 2016-08-03 00:01:14 账户资金有变化，描述：现金返还，返还单号: 530523497674123000，可用金额变化 ：0.02元，冻结金额变化：0.00元', '1470153661', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(236, 0, 0, '4', NULL, '你的账户于 2016-08-03 17:26:01 账户资金有变化，描述：公益捐赠，捐赠号: 210523560361948004，可用金额变化 ：-20.00元，冻结金额变化：0.00元', '1470216361', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(237, 0, 0, '4', NULL, '你的账户于 2016-08-03 17:26:13 账户资金有变化，描述：公益捐赠，捐赠号: 110523560373565004，可用金额变化 ：-20.00元，冻结金额变化：0.00元', '1470216373', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(238, 0, 0, '4', NULL, '你的账户于 2016-08-03 17:52:53 账户资金有变化，描述：公益捐赠，捐赠号: 540523561973038004，可用金额变化 ：-50.00元，冻结金额变化：0.00元', '1470217973', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(239, 0, 0, '4', NULL, '你的账户于 2016-08-03 23:05:48 账户资金有变化，描述：公益捐赠，捐赠号: 970523580748178004，可用金额变化 ：-50.00元，冻结金额变化：0.00元', '1470236748', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(240, 0, 0, '1', NULL, '你的账户于 2016-08-04 00:01:01 账户资金有变化，描述：现金返还，返还单号: 240523584061478000，可用金额变化 ：0.03元，冻结金额变化：0.00元', '1470240061', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(241, 0, 0, '8', NULL, '你的账户于 2016-08-04 00:01:03 账户资金有变化，描述：现金返还，返还单号: 200523584063509000，可用金额变化 ：60.70元，冻结金额变化：0.00元', '1470240061', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(242, 0, 0, '18', NULL, '你的账户于 2016-08-04 00:01:05 账户资金有变化，描述：现金返还，返还单号: 390523584065542000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470240061', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(243, 0, 0, '17', NULL, '你的账户于 2016-08-04 00:01:07 账户资金有变化，描述：现金返还，返还单号: 570523584067560000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470240061', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(244, 0, 0, '12', NULL, '你的账户于 2016-08-04 00:01:09 账户资金有变化，描述：现金返还，返还单号: 480523584069589000，可用金额变化 ：1.37元，冻结金额变化：0.00元', '1470240061', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(245, 0, 0, '9', NULL, '你的账户于 2016-08-04 00:01:11 账户资金有变化，描述：现金返还，返还单号: 990523584071608000，可用金额变化 ：0.74元，冻结金额变化：0.00元', '1470240061', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(246, 0, 0, '4', NULL, '你的账户于 2016-08-04 00:01:13 账户资金有变化，描述：现金返还，返还单号: 350523584073628000，可用金额变化 ：0.02元，冻结金额变化：0.00元', '1470240061', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(247, 0, 0, '9', NULL, '你的账户于 2016-08-04 00:06:04 账户资金有变化，描述：公益捐赠，捐赠号: 610523584364479009，可用金额变化 ：-50.00元，冻结金额变化：0.00元', '1470240364', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(248, 0, 0, '12', NULL, '你的账户于 2016-08-04 20:39:14 账户资金有变化，描述：公益捐赠，捐赠号: 700523658354734012，可用金额变化 ：-20.00元，冻结金额变化：0.00元', '1470314354', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(249, 0, 0, '1', NULL, '你的账户于 2016-08-05 00:01:01 账户资金有变化，描述：现金返还，返还单号: 980523670461915000，可用金额变化 ：0.03元，冻结金额变化：0.00元', '1470326461', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(250, 0, 0, '8', NULL, '你的账户于 2016-08-05 00:01:03 账户资金有变化，描述：现金返还，返还单号: 960523670463943000，可用金额变化 ：60.70元，冻结金额变化：0.00元', '1470326461', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(251, 0, 0, '18', NULL, '你的账户于 2016-08-05 00:01:05 账户资金有变化，描述：现金返还，返还单号: 440523670465975000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470326461', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(252, 0, 0, '17', NULL, '你的账户于 2016-08-05 00:01:07 账户资金有变化，描述：现金返还，返还单号: 160523670467997000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470326461', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(253, 0, 0, '12', NULL, '你的账户于 2016-08-05 00:01:10 账户资金有变化，描述：现金返还，返还单号: 380523670470033000，可用金额变化 ：1.37元，冻结金额变化：0.00元', '1470326461', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(254, 0, 0, '9', NULL, '你的账户于 2016-08-05 00:01:12 账户资金有变化，描述：现金返还，返还单号: 560523670472058000，可用金额变化 ：0.74元，冻结金额变化：0.00元', '1470326461', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(255, 0, 0, '4', NULL, '你的账户于 2016-08-05 00:01:14 账户资金有变化，描述：现金返还，返还单号: 580523670474076000，可用金额变化 ：0.02元，冻结金额变化：0.00元', '1470326461', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(256, 0, 0, '1', NULL, '你的账户于 2016-08-06 00:01:01 账户资金有变化，描述：现金返还，返还单号: 660523756861397000，可用金额变化 ：0.03元，冻结金额变化：0.00元', '1470412861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(257, 0, 0, '8', NULL, '你的账户于 2016-08-06 00:01:03 账户资金有变化，描述：现金返还，返还单号: 330523756863426000，可用金额变化 ：60.70元，冻结金额变化：0.00元', '1470412861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(258, 0, 0, '18', NULL, '你的账户于 2016-08-06 00:01:05 账户资金有变化，描述：现金返还，返还单号: 250523756865441000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470412861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(259, 0, 0, '17', NULL, '你的账户于 2016-08-06 00:01:07 账户资金有变化，描述：现金返还，返还单号: 330523756867462000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470412861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(260, 0, 0, '12', NULL, '你的账户于 2016-08-06 00:01:09 账户资金有变化，描述：现金返还，返还单号: 970523756869477000，可用金额变化 ：1.37元，冻结金额变化：0.00元', '1470412861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(261, 0, 0, '9', NULL, '你的账户于 2016-08-06 00:01:11 账户资金有变化，描述：现金返还，返还单号: 360523756871497000，可用金额变化 ：0.74元，冻结金额变化：0.00元', '1470412861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(262, 0, 0, '4', NULL, '你的账户于 2016-08-06 00:01:13 账户资金有变化，描述：现金返还，返还单号: 990523756873522000，可用金额变化 ：0.02元，冻结金额变化：0.00元', '1470412861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(263, 0, 0, '1', NULL, '你的账户于 2016-08-07 00:01:01 账户资金有变化，描述：现金返还，返还单号: 930523843261907000，可用金额变化 ：0.03元，冻结金额变化：0.00元', '1470499261', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(264, 0, 0, '8', NULL, '你的账户于 2016-08-07 00:01:03 账户资金有变化，描述：现金返还，返还单号: 670523843263956000，可用金额变化 ：60.70元，冻结金额变化：0.00元', '1470499261', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(265, 0, 0, '18', NULL, '你的账户于 2016-08-07 00:01:05 账户资金有变化，描述：现金返还，返还单号: 850523843265980000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470499261', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(266, 0, 0, '17', NULL, '你的账户于 2016-08-07 00:01:07 账户资金有变化，描述：现金返还，返还单号: 710523843267998000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470499261', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(267, 0, 0, '12', NULL, '你的账户于 2016-08-07 00:01:10 账户资金有变化，描述：现金返还，返还单号: 860523843270015000，可用金额变化 ：1.37元，冻结金额变化：0.00元', '1470499261', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(268, 0, 0, '9', NULL, '你的账户于 2016-08-07 00:01:12 账户资金有变化，描述：现金返还，返还单号: 700523843272033000，可用金额变化 ：0.74元，冻结金额变化：0.00元', '1470499261', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(269, 0, 0, '4', NULL, '你的账户于 2016-08-07 00:01:14 账户资金有变化，描述：现金返还，返还单号: 350523843274051000，可用金额变化 ：0.02元，冻结金额变化：0.00元', '1470499261', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(270, 0, 0, '1', NULL, '你的账户于 2016-08-08 00:01:01 账户资金有变化，描述：现金返还，返还单号: 940523929661424000，可用金额变化 ：0.03元，冻结金额变化：0.00元', '1470585661', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(271, 0, 0, '8', NULL, '你的账户于 2016-08-08 00:01:03 账户资金有变化，描述：现金返还，返还单号: 360523929663467000，可用金额变化 ：60.70元，冻结金额变化：0.00元', '1470585661', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(272, 0, 0, '18', NULL, '你的账户于 2016-08-08 00:01:05 账户资金有变化，描述：现金返还，返还单号: 220523929665505000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470585661', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(273, 0, 0, '17', NULL, '你的账户于 2016-08-08 00:01:07 账户资金有变化，描述：现金返还，返还单号: 580523929667525000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470585661', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(274, 0, 0, '12', NULL, '你的账户于 2016-08-08 00:01:09 账户资金有变化，描述：现金返还，返还单号: 340523929669548000，可用金额变化 ：1.37元，冻结金额变化：0.00元', '1470585661', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(275, 0, 0, '9', NULL, '你的账户于 2016-08-08 00:01:11 账户资金有变化，描述：现金返还，返还单号: 710523929671571000，可用金额变化 ：0.74元，冻结金额变化：0.00元', '1470585661', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL);
INSERT INTO `yunpay_message` (`message_id`, `message_parent_id`, `from_member_id`, `to_member_id`, `message_title`, `message_body`, `message_time`, `message_update_time`, `message_open`, `message_state`, `message_type`, `read_member_id`, `del_member_id`, `message_ismore`, `from_member_name`, `to_member_name`) VALUES
(276, 0, 0, '4', NULL, '你的账户于 2016-08-08 00:01:13 账户资金有变化，描述：现金返还，返还单号: 690523929673594000，可用金额变化 ：0.02元，冻结金额变化：0.00元', '1470585661', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(277, 0, 0, '4', NULL, '你的账户于 2016-08-08 21:48:28 账户资金有变化，描述：公益捐赠，捐赠号: 870524008108878004，可用金额变化 ：-1.00元，冻结金额变化：0.00元', '1470664108', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(278, 0, 0, '4', NULL, '你的账户于 2016-08-08 21:48:54 账户资金有变化，描述：公益捐赠，捐赠号: 140524008134856004，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1470664134', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(279, 0, 0, '1', NULL, '你的账户于 2016-08-09 00:01:01 账户资金有变化，描述：现金返还，返还单号: 960524016061995000，可用金额变化 ：0.03元，冻结金额变化：0.00元', '1470672061', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(280, 0, 0, '8', NULL, '你的账户于 2016-08-09 00:01:04 账户资金有变化，描述：现金返还，返还单号: 800524016064032000，可用金额变化 ：60.70元，冻结金额变化：0.00元', '1470672061', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(281, 0, 0, '18', NULL, '你的账户于 2016-08-09 00:01:06 账户资金有变化，描述：现金返还，返还单号: 250524016066071000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470672061', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(282, 0, 0, '17', NULL, '你的账户于 2016-08-09 00:01:08 账户资金有变化，描述：现金返还，返还单号: 920524016068090000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470672061', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(283, 0, 0, '12', NULL, '你的账户于 2016-08-09 00:01:10 账户资金有变化，描述：现金返还，返还单号: 650524016070107000，可用金额变化 ：1.37元，冻结金额变化：0.00元', '1470672061', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(284, 0, 0, '9', NULL, '你的账户于 2016-08-09 00:01:12 账户资金有变化，描述：现金返还，返还单号: 860524016072136000，可用金额变化 ：0.74元，冻结金额变化：0.00元', '1470672061', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(285, 0, 0, '4', NULL, '你的账户于 2016-08-09 00:01:14 账户资金有变化，描述：现金返还，返还单号: 330524016074154000，可用金额变化 ：0.02元，冻结金额变化：0.00元', '1470672061', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(286, 0, 0, '4', NULL, '你的账户于 2016-08-09 23:26:53 账户资金有变化，描述：驳回油卡申请，订单号: 930522430031700004，可用金额变化 ：500.00元，冻结金额变化：0.00元', '1470756413', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(287, 0, 0, '4', NULL, '你的账户于 2016-08-09 23:31:53 账户资金有变化，描述：驳回油卡申请，订单号: 930522430031700004，可用金额变化 ：500.00元，冻结金额变化：0.00元', '1470756713', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(288, 0, 0, '1', NULL, '你的账户于 2016-08-10 00:01:01 账户资金有变化，描述：现金返还，返还单号: 330524102461497000，可用金额变化 ：0.03元，冻结金额变化：0.00元', '1470758461', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(289, 0, 0, '8', NULL, '你的账户于 2016-08-10 00:01:03 账户资金有变化，描述：现金返还，返还单号: 820524102463533000，可用金额变化 ：60.70元，冻结金额变化：0.00元', '1470758461', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(290, 0, 0, '18', NULL, '你的账户于 2016-08-10 00:01:05 账户资金有变化，描述：现金返还，返还单号: 350524102465554000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470758461', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(291, 0, 0, '17', NULL, '你的账户于 2016-08-10 00:01:07 账户资金有变化，描述：现金返还，返还单号: 500524102467579000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470758461', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(292, 0, 0, '12', NULL, '你的账户于 2016-08-10 00:01:09 账户资金有变化，描述：现金返还，返还单号: 660524102469599000，可用金额变化 ：1.37元，冻结金额变化：0.00元', '1470758461', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(293, 0, 0, '9', NULL, '你的账户于 2016-08-10 00:01:11 账户资金有变化，描述：现金返还，返还单号: 380524102471623000，可用金额变化 ：0.74元，冻结金额变化：0.00元', '1470758461', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(294, 0, 0, '4', NULL, '你的账户于 2016-08-10 00:01:13 账户资金有变化，描述：现金返还，返还单号: 660524102473644000，可用金额变化 ：0.02元，冻结金额变化：0.00元', '1470758461', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(295, 0, 0, '15', NULL, '你的账户于 2016-08-10 00:13:36 账户资金有变化，描述：充值，充值单号: 760524103216020000，可用金额变化 ：19,999.00元，冻结金额变化：0.00元', '1470759216', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(296, 0, 0, '15', NULL, '你的账户于 2016-08-10 00:14:23 账户资金有变化，描述：会员升级，订单号: 960524103263605015，可用金额变化 ：-1,000.00元，冻结金额变化：0.00元', '1470759263', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(297, 0, 0, '2', NULL, '你的账户于 2016-08-10 00:14:23 账户资金有变化，描述：被邀请人[15692000182] 升级帐号,单号:970524103263595015，可用金额变化 ：100.00元，冻结金额变化：0.00元', '1470759263', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(298, 0, 0, '2', NULL, '你的账户于 2016-08-10 00:14:23 账户资金有变化，描述：俱乐部会员升级帐号，订单号: 970524103263595015，可用金额变化 ：900.00元，冻结金额变化：0.00元', '1470759263', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(299, 0, 0, '15', NULL, '你的账户于 2016-08-10 00:16:05 账户资金有变化，描述：购买油卡，订单号: 970524103365661015，可用金额变化 ：-500.00元，冻结金额变化：0.00元', '1470759365', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(300, 0, 0, '15', NULL, '你的账户于 2016-08-10 00:16:34 账户资金有变化，描述：驳回油卡申请，订单号: 690524103365639015，可用金额变化 ：500.00元，冻结金额变化：0.00元', '1470759394', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(301, 0, 0, '9', NULL, '你的账户于 2016-08-10 00:18:13 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 710524103493758000，可用金额变化 ：555.00元，冻结金额变化：555.00元', '1470759493', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(302, 0, 0, '9', NULL, '你的账户于 2016-08-10 00:18:43 账户资金有变化，描述：申请提现，冻结帐户余额，提现单号: 870524103523912000，可用金额变化 ：600.00元，冻结金额变化：600.00元', '1470759523', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(303, 0, 0, '9', NULL, '你的账户于 2016-08-10 00:31:44 账户资金有变化，描述：取消提现申请，解冻帐户余额，提现单号: 870524103523912000，可用金额变化 ：600.00元，冻结金额变化：600.00元', '1470760304', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(304, 0, 0, '4', NULL, '你的账户于 2016-08-10 00:35:50 账户资金有变化，描述：公益捐赠，捐赠号: 130524104550386004，可用金额变化 ：-20.00元，冻结金额变化：0.00元', '1470760550', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(305, 0, 0, '4', NULL, '你的账户于 2016-08-10 18:24:39 账户资金有变化，描述：公益捐赠，捐赠号: 690524168679573004，可用金额变化 ：-50.00元，冻结金额变化：0.00元', '1470824679', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(306, 0, 0, '4', NULL, '你的账户于 2016-08-10 18:29:58 账户资金有变化，描述：公益捐赠，捐赠号: 950524168998511004，可用金额变化 ：-50.00元，冻结金额变化：0.00元', '1470824998', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(307, 0, 0, '4', NULL, '你的账户于 2016-08-10 18:30:24 账户资金有变化，描述：公益捐赠，捐赠号: 720524169024108004，可用金额变化 ：-50.00元，冻结金额变化：0.00元', '1470825024', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(308, 0, 0, '1', NULL, '你的账户于 2016-08-11 00:01:01 账户资金有变化，描述：现金返还，返还单号: 850524188861081000，可用金额变化 ：0.03元，冻结金额变化：0.00元', '1470844861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(309, 0, 0, '8', NULL, '你的账户于 2016-08-11 00:01:03 账户资金有变化，描述：现金返还，返还单号: 270524188863136000，可用金额变化 ：60.70元，冻结金额变化：0.00元', '1470844861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(310, 0, 0, '18', NULL, '你的账户于 2016-08-11 00:01:05 账户资金有变化，描述：现金返还，返还单号: 930524188865159000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470844861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(311, 0, 0, '17', NULL, '你的账户于 2016-08-11 00:01:07 账户资金有变化，描述：现金返还，返还单号: 460524188867180000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470844861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(312, 0, 0, '12', NULL, '你的账户于 2016-08-11 00:01:09 账户资金有变化，描述：现金返还，返还单号: 230524188869200000，可用金额变化 ：1.37元，冻结金额变化：0.00元', '1470844861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(313, 0, 0, '9', NULL, '你的账户于 2016-08-11 00:01:11 账户资金有变化，描述：现金返还，返还单号: 240524188871220000，可用金额变化 ：0.74元，冻结金额变化：0.00元', '1470844861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(314, 0, 0, '4', NULL, '你的账户于 2016-08-11 00:01:13 账户资金有变化，描述：现金返还，返还单号: 210524188873241000，可用金额变化 ：0.02元，冻结金额变化：0.00元', '1470844861', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(315, 0, 0, '1', NULL, '你的账户于 2016-08-12 00:01:02 账户资金有变化，描述：现金返还，返还单号: 260524275262126000，可用金额变化 ：0.03元，冻结金额变化：0.00元', '1470931262', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(316, 0, 0, '8', NULL, '你的账户于 2016-08-12 00:01:04 账户资金有变化，描述：现金返还，返还单号: 430524275264156000，可用金额变化 ：60.70元，冻结金额变化：0.00元', '1470931262', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(317, 0, 0, '18', NULL, '你的账户于 2016-08-12 00:01:06 账户资金有变化，描述：现金返还，返还单号: 180524275266196000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470931262', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(318, 0, 0, '17', NULL, '你的账户于 2016-08-12 00:01:08 账户资金有变化，描述：现金返还，返还单号: 260524275268215000，可用金额变化 ：0.05元，冻结金额变化：0.00元', '1470931262', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(319, 0, 0, '12', NULL, '你的账户于 2016-08-12 00:01:10 账户资金有变化，描述：现金返还，返还单号: 330524275270240000，可用金额变化 ：1.37元，冻结金额变化：0.00元', '1470931262', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(320, 0, 0, '9', NULL, '你的账户于 2016-08-12 00:01:12 账户资金有变化，描述：现金返还，返还单号: 730524275272261000，可用金额变化 ：0.74元，冻结金额变化：0.00元', '1470931262', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL),
(321, 0, 0, '4', NULL, '你的账户于 2016-08-12 00:01:14 账户资金有变化，描述：现金返还，返还单号: 900524275274282000，可用金额变化 ：0.02元，冻结金额变化：0.00元', '1470931262', NULL, 0, 0, 1, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_navigation`
--

CREATE TABLE IF NOT EXISTS `yunpay_navigation` (
  `nav_id` int(11) NOT NULL COMMENT '索引ID',
  `nav_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类别，0自定义导航，1商品分类，2文章导航，3活动导航，默认为0',
  `nav_title` varchar(100) DEFAULT NULL COMMENT '导航标题',
  `nav_url` varchar(255) DEFAULT NULL COMMENT '导航链接',
  `nav_location` tinyint(1) NOT NULL DEFAULT '0' COMMENT '导航位置，0头部，1中部，2底部，默认为0',
  `nav_new_open` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否以新窗口打开，0为否，1为是，默认为0',
  `nav_sort` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '类别ID，对应着nav_type中的内容，默认为0',
  `nav_is_close` tinyint(1) NOT NULL DEFAULT '0' COMMENT '闲置开关,前台显示，0为否，1为是，默认为1'
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='页面导航表';

--
-- 转存表中的数据 `yunpay_navigation`
--

INSERT INTO `yunpay_navigation` (`nav_id`, `nav_type`, `nav_title`, `nav_url`, `nav_location`, `nav_new_open`, `nav_sort`, `item_id`, `nav_is_close`) VALUES
(6, 0, '关于我们', 'http://localhost/yunpay/shop/index.php?act=article&article_id=22', 2, 0, 255, 0, 0),
(7, 0, '联系我们', 'http://localhost/yunpay/shop/index.php?act=article&article_id=23', 2, 0, 240, 0, 0),
(8, 0, '合作及洽谈', 'http://localhost/yunpay/shop/index.php?act=article&article_id=25', 2, 0, 220, 0, 0),
(9, 0, '招聘英才', 'http://localhost/yunpay/shop/index.php?act=article&article_id=24', 2, 0, 210, 0, 0),
(11, 0, '店铺', 'http://localhost/yunpay/shop/index.php?act=store_list&op=index', 1, 0, 255, 0, 0),
(12, 0, '闲置', 'http://localhost/yunpay/shop/index.php?act=flea', 1, 0, 255, 0, 0),
(13, 0, '门户', 'http://localhost/yunpay/cms', 1, 0, 255, 0, 0),
(14, 0, '圈子', 'http://localhost/yunpay/circle', 1, 0, 255, 0, 0),
(15, 0, '微商城', 'http://localhost/yunpay/microshop', 1, 0, 255, 0, 0),
(16, 0, '友情链接', 'http://localhost/yunpay/shop/index.php?act=link', 2, 0, 255, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_offpay_area`
--

CREATE TABLE IF NOT EXISTS `yunpay_offpay_area` (
  `store_id` int(8) unsigned NOT NULL COMMENT '商家ID',
  `area_id` text COMMENT '县ID组合'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='货到付款支持地区表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_oil_card`
--

CREATE TABLE IF NOT EXISTS `yunpay_oil_card` (
  `oc_id` int(11) NOT NULL,
  `oc_type` tinyint(1) NOT NULL,
  `oc_sn` bigint(20) DEFAULT NULL COMMENT '记录唯一标示',
  `oc_member_id` int(11) DEFAULT NULL COMMENT '会员编号',
  `oc_member_name` varchar(50) DEFAULT NULL COMMENT '会员名称',
  `oc_amount` decimal(10,2) DEFAULT NULL COMMENT '山购买额',
  `oc_payment_code` varchar(20) DEFAULT '' COMMENT '支付方式',
  `oc_payment_name` varchar(15) DEFAULT '' COMMENT '支付方式',
  `oc_trade_sn` varchar(50) DEFAULT '' COMMENT '第三方支付接口交易号',
  `oc_payment_state` enum('0','1') NOT NULL DEFAULT '0' COMMENT '支付状态 0未支付1支付',
  `oc_add_time` int(11) NOT NULL COMMENT '添加时间',
  `oc_payment_time` int(11) NOT NULL DEFAULT '0' COMMENT '支付时间',
  `oc_state` tinyint(1) DEFAULT '1' COMMENT '1,申请中，2,审核并绑定，3,驳回',
  `oc_mobile` varchar(45) DEFAULT NULL COMMENT '手机号码',
  `oc_idcard_front` varchar(45) DEFAULT NULL COMMENT '身份证正面',
  `oc_idcard_back` varchar(45) DEFAULT NULL COMMENT '身份证反面',
  `oc_address` varchar(200) DEFAULT NULL COMMENT '地址',
  `oc_card_number` varchar(45) DEFAULT NULL,
  `oc_idcard_name` varchar(45) NOT NULL,
  `oc_idcard_number` varchar(45) NOT NULL,
  `remark` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yunpay_oil_card`
--

INSERT INTO `yunpay_oil_card` (`oc_id`, `oc_type`, `oc_sn`, `oc_member_id`, `oc_member_name`, `oc_amount`, `oc_payment_code`, `oc_payment_name`, `oc_trade_sn`, `oc_payment_state`, `oc_add_time`, `oc_payment_time`, `oc_state`, `oc_mobile`, `oc_idcard_front`, `oc_idcard_back`, `oc_address`, `oc_card_number`, `oc_idcard_name`, `oc_idcard_number`, `remark`) VALUES
(1, 1, 930522430031700004, 4, '13632242148', '500.00', 'predeposit', '余额支付', '980522430031714004', '1', 1469086031, 1469086031, 3, '13632242148', '05224300317014485.jpg', '05224300317018966.jpg', 'Gds', NULL, '张成志', '441323199306203033', 'ffff'),
(2, 2, 710522508919139009, 9, '13538850622', '500.00', 'predeposit', '余额支付', '410522508919166009', '1', 1469164919, 1469164919, 2, '13538850622', '05225089191401890.jpg', '05225089191408906.jpg', '南海', '10086', '盘', '445381198509057235', NULL),
(3, 3, 690524103365639015, 15, '15692000182', '500.00', 'predeposit', '余额支付', '970524103365661015', '1', 1470759365, 1470759365, 3, '15692000182', '05241033656403196.jpg', '05241033656408046.jpg', '12', NULL, '杜', '441323198801233016', 'test');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_oil_log`
--

CREATE TABLE IF NOT EXISTS `yunpay_oil_log` (
  `ol_id` int(11) NOT NULL,
  `ol_sn` varchar(45) DEFAULT NULL COMMENT '记录唯一标示',
  `ol_member_id` int(11) DEFAULT '0' COMMENT '充值会员',
  `ol_member_name` varchar(45) DEFAULT NULL COMMENT '充值会员名',
  `ol_amount` decimal(10,2) DEFAULT '0.00' COMMENT '充值金额',
  `ol_state` tinyint(1) DEFAULT '0' COMMENT '充值状态,,0,还没支付.1,待处理，2,充值成功,3,充值失败',
  `ol_state_remark` varchar(200) DEFAULT NULL COMMENT '状态对应的备注',
  `ol_trade_code` varchar(45) DEFAULT NULL COMMENT '充值平台的单号',
  `ol_add_time` int(11) DEFAULT '0' COMMENT '用户充值日期',
  `ol_to_account_at` int(11) DEFAULT '0' COMMENT '到帐日期',
  `ol_payment_code` varchar(45) DEFAULT NULL COMMENT '支付方式',
  `ol_payment_name` varchar(45) DEFAULT NULL COMMENT '支付方式',
  `ol_trade_sn` varchar(45) DEFAULT NULL COMMENT '第三方支付接口交易号',
  `ol_payment_state` enum('0','1') DEFAULT '0' COMMENT '支付状态 0未支付1支付',
  `ol_payment_time` int(11) DEFAULT NULL,
  `ol_admin` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yunpay_oil_log`
--

INSERT INTO `yunpay_oil_log` (`ol_id`, `ol_sn`, `ol_member_id`, `ol_member_name`, `ol_amount`, `ol_state`, `ol_state_remark`, `ol_trade_code`, `ol_add_time`, `ol_to_account_at`, `ol_payment_code`, `ol_payment_name`, `ol_trade_sn`, `ol_payment_state`, `ol_payment_time`, `ol_admin`) VALUES
(1, '110523189259078009', 9, '13538850622', '475.00', 1, NULL, NULL, 1469845259, 0, 'predeposit', '余额支付', '110523189259089009', '1', 1469845259, '');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_order`
--

CREATE TABLE IF NOT EXISTS `yunpay_order` (
  `order_id` int(11) NOT NULL COMMENT '订单索引id',
  `order_sn` bigint(20) unsigned NOT NULL COMMENT '订单编号',
  `pay_sn` bigint(20) unsigned NOT NULL COMMENT '支付单号',
  `store_id` int(11) unsigned NOT NULL COMMENT '卖家店铺id',
  `store_name` varchar(50) NOT NULL COMMENT '卖家店铺名称',
  `buyer_id` int(11) unsigned NOT NULL COMMENT '买家id',
  `buyer_name` varchar(50) NOT NULL COMMENT '买家姓名',
  `buyer_email` varchar(80) NOT NULL COMMENT '买家电子邮箱',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单生成时间',
  `payment_code` char(10) NOT NULL DEFAULT '' COMMENT '支付方式名称代码',
  `payment_time` int(10) unsigned DEFAULT '0' COMMENT '支付(付款)时间',
  `finnshed_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单完成时间',
  `goods_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '商品总价格',
  `order_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '订单总价格',
  `rcb_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '充值卡支付金额',
  `pd_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '预存款支付金额',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '运费',
  `evaluation_state` tinyint(4) DEFAULT '0' COMMENT '评价状态 0未评价，1已评价，2已过期未评价',
  `order_state` tinyint(4) NOT NULL DEFAULT '10' COMMENT '订单状态：0(已取消)10(默认):未付款;20:已付款;30:已发货;40:已收货;',
  `refund_state` tinyint(1) unsigned DEFAULT '0' COMMENT '退款状态:0是无退款,1是部分退款,2是全部退款',
  `lock_state` tinyint(1) unsigned DEFAULT '0' COMMENT '锁定状态:0是正常,大于0是锁定,默认是0',
  `delete_state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除状态0未删除1放入回收站2彻底删除',
  `refund_amount` decimal(10,2) DEFAULT '0.00' COMMENT '退款金额',
  `delay_time` int(10) unsigned DEFAULT '0' COMMENT '延迟时间,默认为0',
  `order_from` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1WEB2mobile',
  `shipping_code` varchar(50) DEFAULT '' COMMENT '物流单号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_order_bill`
--

CREATE TABLE IF NOT EXISTS `yunpay_order_bill` (
  `ob_no` int(11) NOT NULL COMMENT '结算单编号(年月店铺ID)',
  `ob_start_date` int(11) NOT NULL COMMENT '开始日期',
  `ob_end_date` int(11) NOT NULL COMMENT '结束日期',
  `ob_order_totals` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  `ob_shipping_totals` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '运费',
  `ob_order_return_totals` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '退单金额',
  `ob_commis_totals` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '佣金金额',
  `ob_commis_return_totals` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '退还佣金',
  `ob_store_cost_totals` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '店铺促销活动费用',
  `ob_result_totals` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '应结金额',
  `ob_create_date` int(11) DEFAULT '0' COMMENT '生成结算单日期',
  `os_month` mediumint(6) unsigned NOT NULL COMMENT '结算单年月份',
  `ob_state` enum('1','2','3','4') DEFAULT '1' COMMENT '1默认2店家已确认3平台已审核4结算完成',
  `ob_pay_date` int(11) DEFAULT '0' COMMENT '付款日期',
  `ob_pay_content` varchar(200) DEFAULT '' COMMENT '支付备注',
  `ob_store_id` int(11) NOT NULL COMMENT '店铺ID',
  `ob_store_name` varchar(50) DEFAULT NULL COMMENT '店铺名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='结算表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_order_common`
--

CREATE TABLE IF NOT EXISTS `yunpay_order_common` (
  `order_id` int(11) NOT NULL COMMENT '订单索引id',
  `store_id` int(10) unsigned NOT NULL COMMENT '店铺ID',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '配送时间',
  `shipping_express_id` tinyint(1) NOT NULL DEFAULT '0' COMMENT '配送公司ID',
  `evaluation_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评价时间',
  `evalseller_state` enum('0','1') NOT NULL DEFAULT '0' COMMENT '卖家是否已评价买家',
  `evalseller_time` int(10) unsigned NOT NULL COMMENT '卖家评价买家的时间',
  `order_message` varchar(300) DEFAULT NULL COMMENT '订单留言',
  `order_pointscount` int(11) NOT NULL DEFAULT '0' COMMENT '订单赠送积分',
  `voucher_price` int(11) DEFAULT NULL COMMENT '代金券面额',
  `voucher_code` varchar(32) DEFAULT NULL COMMENT '代金券编码',
  `deliver_explain` text COMMENT '发货备注',
  `daddress_id` mediumint(9) NOT NULL DEFAULT '0' COMMENT '发货地址ID',
  `reciver_name` varchar(50) NOT NULL COMMENT '收货人姓名',
  `reciver_info` varchar(500) NOT NULL COMMENT '收货人其它信息',
  `reciver_province_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '收货人省级ID',
  `reciver_city_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '收货人市级ID',
  `invoice_info` varchar(500) DEFAULT '' COMMENT '发票信息',
  `promotion_info` varchar(500) DEFAULT '' COMMENT '促销信息备注',
  `dlyo_pickup_code` varchar(4) DEFAULT NULL COMMENT '提货码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单信息扩展表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_order_goods`
--

CREATE TABLE IF NOT EXISTS `yunpay_order_goods` (
  `rec_id` int(11) NOT NULL COMMENT '订单商品表索引id',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `goods_name` varchar(50) NOT NULL COMMENT '商品名称',
  `goods_price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `goods_num` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '商品数量',
  `goods_image` varchar(100) DEFAULT NULL COMMENT '商品图片',
  `goods_pay_price` decimal(10,2) unsigned NOT NULL COMMENT '商品实际成交价',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `buyer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '买家ID',
  `goods_type` enum('1','2','3','4','5') NOT NULL DEFAULT '1' COMMENT '1默认2团购商品3限时折扣商品4组合套装5赠品',
  `promotions_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '促销活动ID（团购ID/限时折扣ID/优惠套装ID）与goods_type搭配使用',
  `commis_rate` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '佣金比例',
  `gc_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '商品最底级分类ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单商品表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_order_log`
--

CREATE TABLE IF NOT EXISTS `yunpay_order_log` (
  `log_id` int(11) NOT NULL COMMENT '主键',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `log_msg` varchar(150) DEFAULT '' COMMENT '文字描述',
  `log_time` int(10) unsigned NOT NULL COMMENT '处理时间',
  `log_role` char(2) NOT NULL COMMENT '操作角色',
  `log_user` varchar(30) DEFAULT '' COMMENT '操作人',
  `log_orderstate` enum('0','10','20','30','40') DEFAULT NULL COMMENT '订单状态：0(已取消)10:未付款;20:已付款;30:已发货;40:已收货;'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单处理历史表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_order_pay`
--

CREATE TABLE IF NOT EXISTS `yunpay_order_pay` (
  `pay_id` int(10) unsigned NOT NULL,
  `pay_sn` bigint(20) unsigned NOT NULL COMMENT '支付单号',
  `buyer_id` int(10) unsigned NOT NULL COMMENT '买家ID',
  `api_pay_state` enum('0','1') DEFAULT '0' COMMENT '0默认未支付1已支付(只有第三方支付接口通知到时才会更改此状态)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单支付表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_order_statis`
--

CREATE TABLE IF NOT EXISTS `yunpay_order_statis` (
  `os_month` mediumint(9) unsigned NOT NULL DEFAULT '0' COMMENT '统计编号(年月)',
  `os_year` smallint(6) DEFAULT '0' COMMENT '年',
  `os_start_date` int(11) NOT NULL COMMENT '开始日期',
  `os_end_date` int(11) NOT NULL COMMENT '结束日期',
  `os_order_totals` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  `os_shipping_totals` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '运费',
  `os_order_return_totals` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '退单金额',
  `os_commis_totals` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '佣金金额',
  `os_commis_return_totals` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '退还佣金',
  `os_store_cost_totals` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '店铺促销活动费用',
  `os_result_totals` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '本期应结',
  `os_create_date` int(11) DEFAULT NULL COMMENT '创建记录日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='月销量统计表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_payment`
--

CREATE TABLE IF NOT EXISTS `yunpay_payment` (
  `payment_id` tinyint(1) unsigned NOT NULL COMMENT '支付索引id',
  `payment_code` char(10) NOT NULL COMMENT '支付代码名称',
  `payment_name` char(10) NOT NULL COMMENT '支付名称',
  `payment_config` text COMMENT '支付接口配置信息',
  `payment_state` enum('0','1') NOT NULL DEFAULT '0' COMMENT '接口状态0禁用1启用'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付方式表';

--
-- 转存表中的数据 `yunpay_payment`
--

INSERT INTO `yunpay_payment` (`payment_id`, `payment_code`, `payment_name`, `payment_config`, `payment_state`) VALUES
(1, 'wxpay', '微信', 'a:4:{s:11:"wxpay_appid";s:18:"wxc00412f98cb18df8";s:12:"wxpay_mch_id";s:10:"1262346101";s:15:"wxpay_appsecret";s:32:"5a0ac060d98b6712a64763982a150e28";s:9:"wxpay_key";s:32:"jdkei8443jk32jhfidsr483jr438hgru";}', '0'),
(2, 'alipay', '支付宝', 'a:3:{s:14:"alipay_account";s:13:"dp108@126.com";s:10:"alipay_key";s:32:"xivyfw75d3q5vbvc6bwt3zlss4t2722f";s:14:"alipay_partner";s:16:"2088421465795090";}', '1');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_pd_cash`
--

CREATE TABLE IF NOT EXISTS `yunpay_pd_cash` (
  `pdc_id` int(11) NOT NULL COMMENT '自增编号',
  `pdc_sn` bigint(20) NOT NULL COMMENT '记录唯一标示',
  `pdc_member_id` int(11) NOT NULL COMMENT '会员编号',
  `pdc_member_name` varchar(50) NOT NULL COMMENT '会员名称',
  `pdc_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `pdc_amount_rate` decimal(10,2) DEFAULT '0.03' COMMENT '提现手续费比例',
  `pdc_amount_get` decimal(10,2) DEFAULT NULL COMMENT '实际所得',
  `pdc_amount_out` decimal(10,2) DEFAULT NULL COMMENT '手续费',
  `pdc_bank_name` varchar(40) NOT NULL COMMENT '收款银行',
  `pdc_bank_no` varchar(30) DEFAULT NULL COMMENT '收款账号',
  `pdc_bank_user` varchar(10) DEFAULT NULL COMMENT '开户人姓名',
  `pdc_add_time` int(11) NOT NULL COMMENT '添加时间',
  `pdc_payment_time` int(11) DEFAULT NULL COMMENT '付款时间',
  `pdc_payment_state` enum('0','1') NOT NULL DEFAULT '0' COMMENT '提现支付状态 0默认1支付完成',
  `pdc_payment_admin` varchar(30) DEFAULT NULL COMMENT '支付管理员',
  `pdc_remark` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='预存款提现记录表';

--
-- 转存表中的数据 `yunpay_pd_cash`
--

INSERT INTO `yunpay_pd_cash` (`pdc_id`, `pdc_sn`, `pdc_member_id`, `pdc_member_name`, `pdc_amount`, `pdc_amount_rate`, `pdc_amount_get`, `pdc_amount_out`, `pdc_bank_name`, `pdc_bank_no`, `pdc_bank_user`, `pdc_add_time`, `pdc_payment_time`, `pdc_payment_state`, `pdc_payment_admin`, `pdc_remark`) VALUES
(1, 710524103493758000, 9, '13538850622', '555.00', '0.00', '555.00', '0.00', '中国银行<br/>支行:辽宁-锦州市-嗯', '545655655', '盘太累', 1470759493, NULL, '0', NULL, '');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_pd_log`
--

CREATE TABLE IF NOT EXISTS `yunpay_pd_log` (
  `lg_id` int(11) NOT NULL COMMENT '自增编号',
  `lg_member_id` int(11) NOT NULL COMMENT '会员编号',
  `lg_member_name` varchar(50) NOT NULL COMMENT '会员名称',
  `lg_admin_name` varchar(50) DEFAULT NULL COMMENT '管理员名称',
  `lg_type` varchar(15) NOT NULL DEFAULT '' COMMENT 'recharge充值,cash_apply申请提现冻结预存款,cash_pay提现成功,cash_del取消提现申请，解冻预存款,\ntransfer_store_out扫码付款/转帐到商户.\ntransfer_member_out转帐到帐号,\ntransfer_fans_out转帐到好友,\ntransfer_store_in商户扫码收款,\ntransfer_member_in帐号到款,\ntransfer_fans_in 收到好友转帐,\ncash_back现金返还',
  `lg_av_amount` decimal(20,8) NOT NULL DEFAULT '0.00000000' COMMENT '可用金额变更0表示未变更',
  `lg_predeposit` decimal(20,8) NOT NULL COMMENT '当前余额',
  `lg_freeze_amount` decimal(20,8) NOT NULL DEFAULT '0.00000000' COMMENT '冻结金额变更0表示未变更',
  `lg_add_time` int(11) NOT NULL COMMENT '添加时间',
  `lg_desc` varchar(150) DEFAULT NULL COMMENT '描述',
  `lg_sn` varchar(45) DEFAULT '' COMMENT '关联单号'
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8 COMMENT='预存款变更日志表';

--
-- 转存表中的数据 `yunpay_pd_log`
--

INSERT INTO `yunpay_pd_log` (`lg_id`, `lg_member_id`, `lg_member_name`, `lg_admin_name`, `lg_type`, `lg_av_amount`, `lg_predeposit`, `lg_freeze_amount`, `lg_add_time`, `lg_desc`, `lg_sn`) VALUES
(1, 3, '13450226610', NULL, 'recharge', '1.00000000', '1.00000000', '0.00000000', 1468763579, '充值，充值单号: 870522107579816000', '870522107579816000'),
(2, 3, '13450226610', NULL, 'recharge', '10.00000000', '11.00000000', '0.00000000', 1468764460, '充值，充值单号: 850522108460417000', '850522108460417000'),
(3, 3, '13450226610', NULL, 'recharge', '100000.00000000', '100011.00000000', '0.00000000', 1468765298, '充值，充值单号: 820522109298837000', '820522109298837000'),
(4, 3, '13450226610', NULL, 'upgrade', '-1000.00000000', '99011.00000000', '0.00000000', 1468765375, '会员升级，订单号: 490522109375842003', '490522109375842003'),
(5, 1, '13802987366', NULL, 'invite_upgrade', '100.00000000', '100.00000000', '0.00000000', 1468765375, '被邀请人[13450226610] 升级帐号,单号:160522109375832003', '160522109375832003'),
(6, 2, '13800138000', NULL, 'club_upgrade', '900.00000000', '900.00000000', '0.00000000', 1468765375, '俱乐部会员升级帐号，订单号: 160522109375832003', '160522109375832003'),
(7, 3, '13450226610', NULL, 'recharge', '1000.00000000', '100011.00000000', '0.00000000', 1468765748, '充值，充值单号: 290522109748742000', '290522109748742000'),
(8, 4, '13632242148', NULL, 'recharge', '10000.00000000', '10000.00000000', '0.00000000', 1468767968, '充值，充值单号: 280522111968206000', '280522111968206000'),
(9, 4, '13632242148', NULL, 'upgrade', '-1000.00000000', '9000.00000000', '0.00000000', 1468768251, '会员升级，订单号: 540522112251586004', '540522112251586004'),
(10, 2, '13800138000', NULL, 'invite_upgrade', '100.00000000', '1000.00000000', '0.00000000', 1468768251, '被邀请人[13632242148] 升级帐号,单号:260522112251575004', '260522112251575004'),
(11, 2, '13800138000', NULL, 'club_upgrade', '900.00000000', '1900.00000000', '0.00000000', 1468768251, '俱乐部会员升级帐号，订单号: 260522112251575004', '260522112251575004'),
(12, 9, '13538850622', NULL, 'recharge', '10000.00000000', '10000.00000000', '0.00000000', 1468806378, '充值，充值单号: 240522150378912000', '240522150378912000'),
(13, 9, '13538850622', NULL, 'upgrade', '-1000.00000000', '9000.00000000', '0.00000000', 1468806615, '会员升级，订单号: 390522150615616009', '390522150615616009'),
(14, 1, '13802987366', NULL, 'invite_upgrade', '100.00000000', '200.00000000', '0.00000000', 1468806615, '被邀请人[13538850622] 升级帐号,单号:940522150615601009', '940522150615601009'),
(15, 2, '13800138000', NULL, 'club_upgrade', '900.00000000', '2800.00000000', '0.00000000', 1468806615, '俱乐部会员升级帐号，订单号: 940522150615601009', '940522150615601009'),
(16, 13, '13580446901', NULL, 'recharge', '1000.00000000', '1000.00000000', '0.00000000', 1468807406, '充值，充值单号: 700522151406189000', '700522151406189000'),
(17, 4, '13632242148', NULL, 'oil_card', '-500.00000000', '8500.00000000', '0.00000000', 1469086031, '购买油卡，订单号: 980522430031714004', '980522430031714004'),
(18, 8, '13450226610', NULL, 'recharge', '1.00000000', '1.00000000', '0.00000000', 1469088935, '充值，充值单号: 930522432919004008', '930522432919004008'),
(19, 15, '15692000182', NULL, 'recharge', '1.00000000', '1.00000000', '0.00000000', 1469089552, '充值，充值单号: 530522433543345000', '530522433543345000'),
(28, 12, '18680564089', NULL, 'recharge', '1000.00000000', '1000.00000000', '0.00000000', 1469121097, '充值，充值单号: 640522465097905000', '640522465097905000'),
(29, 12, '18680564089', NULL, 'upgrade', '-1000.00000000', '0.00000000', '0.00000000', 1469121116, '会员升级，订单号: 140522465116611012', '140522465116611012'),
(30, 9, '13538850622', NULL, 'invite_upgrade', '100.00000000', '9100.00000000', '0.00000000', 1469121116, '被邀请人[18680564089] 升级帐号,单号:950522465116602012', '950522465116602012'),
(31, 1, '13802987366', NULL, 'invite_upgrade', '100.00000000', '300.00000000', '0.00000000', 1469121116, '被邀请人[18680564089] 升级帐号,单号:950522465116602012', '950522465116602012'),
(32, 2, '13800138000', NULL, 'club_upgrade', '800.00000000', '3600.00000000', '0.00000000', 1469121116, '俱乐部会员升级帐号，订单号: 950522465116602012', '950522465116602012'),
(45, 9, '13538850622', 'transfer', 'transfer', '-100.00000000', '9000.00000000', '0.00000000', 1469159164, '向[18680564089]消费,单号:210522503164360000', '210522503164360000'),
(46, 12, '18680564089', 'transfer', 'transfer', '85.00000000', '85.00000000', '0.00000000', 1469159164, '收到[13538850622 付款,单号:210522503164360000,金额:100,手续费:15%', '210522503164360000'),
(47, 9, '13538850622', NULL, 'oil_card', '-500.00000000', '8500.00000000', '0.00000000', 1469164919, '购买油卡，订单号: 410522508919166009', '410522508919166009'),
(48, 4, '13632242148', 'transfer', 'transfer', '-100.00000000', '8400.00000000', '0.00000000', 1469174532, '向[123456]消费,单号:510522518532631004', '510522518532631004'),
(49, 5, '123456', 'transfer', 'transfer', '85.00000000', '85.00000000', '0.00000000', 1469174532, '收到[13632242148 付款,单号:510522518532631004,金额:100,手续费:15%', '510522518532631004'),
(50, 4, '13632242148', 'transfer', 'transfer', '-100.00000000', '8300.00000000', '0.00000000', 1469174551, '向[123456]消费,单号:340522518551625004', '340522518551625004'),
(51, 5, '123456', 'transfer', 'transfer', '85.00000000', '170.00000000', '0.00000000', 1469174551, '收到[13632242148 付款,单号:340522518551625004,金额:100,手续费:15%', '340522518551625004'),
(52, 4, '13632242148', 'transfer', 'transfer', '-100.00000000', '8200.00000000', '0.00000000', 1469174587, '向[123456]消费,单号:660522518587738004', '660522518587738004'),
(53, 5, '123456', 'transfer', 'transfer', '85.00000000', '255.00000000', '0.00000000', 1469174587, '收到[13632242148 付款,单号:660522518587738004,金额:100,手续费:15%', '660522518587738004'),
(54, 4, '13632242148', 'crontab', 'redeemable', '0.02054795', '8200.02000000', '0.00000000', 1469203261, '现金返还，返还单号: 780522547261944000', '780522547261944000'),
(55, 9, '13538850622', 'crontab', 'redeemable', '0.00684932', '8500.01000000', '0.00000000', 1469203261, '现金返还，返还单号: 260522547264033000', '260522547264033000'),
(56, 17, '13631430470', NULL, 'recharge', '1000.00000000', '1000.00000000', '0.00000000', 1469214501, '充值，充值单号: 290522558501522000', '290522558501522000'),
(57, 17, '13631430470', NULL, 'upgrade', '-1000.00000000', '0.00000000', '0.00000000', 1469214506, '会员升级，订单号: 670522558506331017', '670522558506331017'),
(58, 9, '13538850622', NULL, 'invite_upgrade', '100.00000000', '8600.01000000', '0.00000000', 1469214506, '被邀请人[13631430470] 升级帐号,单号:300522558506319017', '300522558506319017'),
(59, 1, '13802987366', NULL, 'invite_upgrade', '100.00000000', '400.00000000', '0.00000000', 1469214506, '被邀请人[13631430470] 升级帐号,单号:300522558506319017', '300522558506319017'),
(60, 2, '13800138000', NULL, 'club_upgrade', '800.00000000', '4400.00000000', '0.00000000', 1469214506, '俱乐部会员升级帐号，订单号: 300522558506319017', '300522558506319017'),
(61, 17, '13631430470', NULL, 'recharge', '10000.00000000', '10000.00000000', '0.00000000', 1469215930, '充值，充值单号: 480522559930316000', '480522559930316000'),
(62, 17, '13631430470', 'transfer', 'transfer', '-10000.00000000', '0.00000000', '0.00000000', 1469216073, '向[18680564089]消费,单号:410522560073992017', '410522560073992017'),
(63, 12, '18680564089', 'transfer', 'transfer', '8500.00000000', '8585.00000000', '0.00000000', 1469216073, '收到[13631430470 付款,单号:410522560073992017,金额:10000,手续费:15%', '410522560073992017'),
(64, 17, '13631430470', 'crontab', 'redeemable', '0.68493151', '0.68000000', '0.00000000', 1469289661, '现金返还，返还单号: 610522633661386000', '610522633661386000'),
(65, 4, '13632242148', 'crontab', 'redeemable', '0.02054795', '8200.04000000', '0.00000000', 1469289661, '现金返还，返还单号: 110522633663434000', '110522633663434000'),
(66, 9, '13538850622', 'crontab', 'redeemable', '0.00684932', '8600.01000000', '0.00000000', 1469289661, '现金返还，返还单号: 140522633665462000', '140522633665462000'),
(67, 17, '13631430470', 'crontab', 'redeemable', '0.68493151', '1.37000000', '0.00000000', 1469376061, '现金返还，返还单号: 870522720061915000', '870522720061915000'),
(68, 4, '13632242148', 'crontab', 'redeemable', '0.02054795', '8200.06000000', '0.00000000', 1469376061, '现金返还，返还单号: 440522720063968000', '440522720063968000'),
(69, 9, '13538850622', 'crontab', 'redeemable', '0.00684932', '8600.02000000', '0.00000000', 1469376061, '现金返还，返还单号: 210522720065986000', '210522720065986000'),
(70, 17, '13631430470', 'crontab', 'redeemable', '0.68493151', '2.05000000', '0.00000000', 1469462461, '现金返还，返还单号: 260522806461375000', '260522806461375000'),
(71, 4, '13632242148', 'crontab', 'redeemable', '0.02054795', '8200.08000000', '0.00000000', 1469462461, '现金返还，返还单号: 700522806463414000', '700522806463414000'),
(72, 9, '13538850622', 'crontab', 'redeemable', '0.00684932', '8600.03000000', '0.00000000', 1469462461, '现金返还，返还单号: 130522806465431000', '130522806465431000'),
(73, 17, '13631430470', 'crontab', 'redeemable', '0.68493151', '2.74000000', '0.00000000', 1469548861, '现金返还，返还单号: 540522892861850000', '540522892861850000'),
(74, 4, '13632242148', 'crontab', 'redeemable', '0.02054795', '8200.10000000', '0.00000000', 1469548861, '现金返还，返还单号: 280522892863881000', '280522892863881000'),
(75, 9, '13538850622', 'crontab', 'redeemable', '0.00684932', '8600.03000000', '0.00000000', 1469548861, '现金返还，返还单号: 260522892865897000', '260522892865897000'),
(76, 17, '13631430470', 'crontab', 'redeemable', '0.68493151', '3.42000000', '0.00000000', 1469635261, '现金返还，返还单号: 840522979261296000', '840522979261296000'),
(77, 4, '13632242148', 'crontab', 'redeemable', '0.02054795', '8200.12000000', '0.00000000', 1469635261, '现金返还，返还单号: 890522979263330000', '890522979263330000'),
(78, 9, '13538850622', 'crontab', 'redeemable', '0.00684932', '8600.04000000', '0.00000000', 1469635261, '现金返还，返还单号: 130522979265358000', '130522979265358000'),
(79, 17, '13631430470', 'crontab', 'redeemable', '0.68493151', '4.11000000', '0.00000000', 1469721661, '现金返还，返还单号: 860523065661780000', '860523065661780000'),
(80, 4, '13632242148', 'crontab', 'redeemable', '0.02054795', '8200.14000000', '0.00000000', 1469721661, '现金返还，返还单号: 740523065663818000', '740523065663818000'),
(81, 9, '13538850622', 'crontab', 'redeemable', '0.00684932', '8600.05000000', '0.00000000', 1469721661, '现金返还，返还单号: 900523065665854000', '900523065665854000'),
(82, 17, '13631430470', 'crontab', 'redeemable', '0.68493151', '4.79000000', '0.00000000', 1469808061, '现金返还，返还单号: 530523152061799000', '530523152061799000'),
(83, 4, '13632242148', 'crontab', 'redeemable', '0.02054795', '8200.16000000', '0.00000000', 1469808061, '现金返还，返还单号: 730523152063841000', '730523152063841000'),
(84, 9, '13538850622', 'crontab', 'redeemable', '0.00684932', '8600.05000000', '0.00000000', 1469808061, '现金返还，返还单号: 760523152065858000', '760523152065858000'),
(85, 9, '13538850622', NULL, 'oil', '-475.00000000', '8125.05000000', '0.00000000', 1469845259, '充值油卡，订单号: 110523189259089009', '110523189259089009'),
(86, 17, '13631430470', 'crontab', 'redeemable', '0.68493151', '5.48000000', '0.00000000', 1469894461, '现金返还，返还单号: 810523238461265000', '810523238461265000'),
(87, 4, '13632242148', 'crontab', 'redeemable', '0.02054795', '8200.18000000', '0.00000000', 1469894461, '现金返还，返还单号: 790523238463308000', '790523238463308000'),
(88, 9, '13538850622', 'crontab', 'redeemable', '0.00684932', '8125.06000000', '0.00000000', 1469894461, '现金返还，返还单号: 240523238465332000', '240523238465332000'),
(89, 9, '13538850622', NULL, 'recharge', '10000.00000000', '18125.06000000', '0.00000000', 1469948315, '充值，充值单号: 130523292315149000', '130523292315149000'),
(90, 9, '13538850622', 'transfer', 'transfer', '-10000.00000000', '8125.06000000', '0.00000000', 1469948382, '向[18680564089]消费,单号:470523292382591000', '470523292382591000'),
(91, 12, '18680564089', 'transfer', 'transfer', '8500.00000000', '17085.00000000', '0.00000000', 1469948382, '收到[13538850622 付款,单号:470523292382591000,金额:10000,手续费:15%', '470523292382591000'),
(92, 12, '18680564089', NULL, 'recharge', '10000.00000000', '27085.00000000', '0.00000000', 1469949041, '充值，充值单号: 170523293041592000', '170523293041592000'),
(93, 12, '18680564089', 'transfer', 'transfer', '-10000.00000000', '17085.00000000', '0.00000000', 1469949383, '向[13538850622]消费,单号:740523293383940012', '740523293383940012'),
(94, 9, '13538850622', 'transfer', 'transfer', '8500.00000000', '16625.06000000', '0.00000000', 1469949383, '收到[18680564089 付款,单号:740523293383940012,金额:10000,手续费:15%', '740523293383940012'),
(95, 12, '18680564089', 'transfer', 'transfer', '-10000.00000000', '7085.00000000', '0.00000000', 1469949553, '向[123456]消费,单号:440523293553259012', '440523293553259012'),
(96, 5, '123456', 'transfer', 'transfer', '8500.00000000', '8755.00000000', '0.00000000', 1469949553, '收到[18680564089 付款,单号:440523293553259012,金额:10000,手续费:15%', '440523293553259012'),
(97, 1, '13802987366', 'crontab', 'redeemable', '0.02739726', '400.03000000', '0.00000000', 1469980861, '现金返还，返还单号: 550523324861765000', '550523324861765000'),
(98, 8, '13450226610', 'crontab', 'redeemable', '60.69863014', '61.70000000', '0.00000000', 1469980861, '现金返还，返还单号: 310523324863801000', '310523324863801000'),
(99, 18, '18620778046', 'crontab', 'redeemable', '0.05479452', '0.05000000', '0.00000000', 1469980861, '现金返还，返还单号: 510523324865825000', '510523324865825000'),
(100, 17, '13631430470', 'crontab', 'redeemable', '0.05479452', '5.53000000', '0.00000000', 1469980861, '现金返还，返还单号: 530523324867846000', '530523324867846000'),
(101, 12, '18680564089', 'crontab', 'redeemable', '1.36986301', '7086.37000000', '0.00000000', 1469980861, '现金返还，返还单号: 600523324869947000', '600523324869947000'),
(102, 9, '13538850622', 'crontab', 'redeemable', '0.73972603', '16625.80000000', '0.00000000', 1469980861, '现金返还，返还单号: 550523324871967000', '550523324871967000'),
(103, 4, '13632242148', 'crontab', 'redeemable', '0.02054795', '8200.21000000', '0.00000000', 1469980861, '现金返还，返还单号: 870523324875996000', '870523324875996000'),
(104, 1, '13802987366', 'crontab', 'redeemable', '0.02739726', '400.05000000', '0.00000000', 1470067262, '现金返还，返还单号: 750523411262332000', '750523411262332000'),
(105, 8, '13450226610', 'crontab', 'redeemable', '60.69863014', '122.40000000', '0.00000000', 1470067262, '现金返还，返还单号: 890523411264484000', '890523411264484000'),
(106, 18, '18620778046', 'crontab', 'redeemable', '0.05479452', '0.11000000', '0.00000000', 1470067262, '现金返还，返还单号: 920523411266534000', '920523411266534000'),
(107, 17, '13631430470', 'crontab', 'redeemable', '0.05479452', '5.59000000', '0.00000000', 1470067262, '现金返还，返还单号: 880523411268558000', '880523411268558000'),
(108, 12, '18680564089', 'crontab', 'redeemable', '1.36986301', '7087.74000000', '0.00000000', 1470067262, '现金返还，返还单号: 400523411270575000', '400523411270575000'),
(109, 9, '13538850622', 'crontab', 'redeemable', '0.73972603', '16626.54000000', '0.00000000', 1470067262, '现金返还，返还单号: 520523411272618000', '520523411272618000'),
(110, 4, '13632242148', 'crontab', 'redeemable', '0.02054795', '8200.23000000', '0.00000000', 1470067262, '现金返还，返还单号: 500523411274636000', '500523411274636000'),
(111, 1, '13802987366', 'crontab', 'redeemable', '0.02739726', '0.00000000', '0.00000000', 1470153661, '现金返还，返还单号: 610523497661972000', '610523497661972000'),
(112, 8, '13450226610', 'crontab', 'redeemable', '60.69863014', '0.00000000', '0.00000000', 1470153661, '现金返还，返还单号: 600523497663998000', '600523497663998000'),
(113, 18, '18620778046', 'crontab', 'redeemable', '0.05479452', '0.00000000', '0.00000000', 1470153661, '现金返还，返还单号: 850523497666034000', '850523497666034000'),
(114, 17, '13631430470', 'crontab', 'redeemable', '0.05479452', '0.00000000', '0.00000000', 1470153661, '现金返还，返还单号: 950523497668051000', '950523497668051000'),
(115, 12, '18680564089', 'crontab', 'redeemable', '1.36986301', '0.00000000', '0.00000000', 1470153661, '现金返还，返还单号: 800523497670068000', '800523497670068000'),
(116, 9, '13538850622', 'crontab', 'redeemable', '0.73972603', '0.00000000', '0.00000000', 1470153661, '现金返还，返还单号: 670523497672091000', '670523497672091000'),
(117, 4, '13632242148', 'crontab', 'redeemable', '0.02054795', '8200.24657540', '0.00000000', 1470153661, '现金返还，返还单号: 530523497674123000', '530523497674123000'),
(118, 4, '13632242148', 'system', 'fund', '-20.00000000', '8180.24657540', '0.00000000', 1470216361, '公益捐赠，捐赠号: 210523560361948004', '210523560361948004'),
(119, 4, '13632242148', 'system', 'fund', '-20.00000000', '8160.24657540', '0.00000000', 1470216373, '公益捐赠，捐赠号: 110523560373565004', '110523560373565004'),
(120, 4, '13632242148', 'system', 'fund', '-50.00000000', '8110.24657540', '0.00000000', 1470217973, '公益捐赠，捐赠号: 540523561973038004', '540523561973038004'),
(121, 4, '13632242148', 'system', 'fund', '-50.00000000', '8060.24657540', '0.00000000', 1470236748, '公益捐赠，捐赠号: 970523580748178004', '970523580748178004'),
(122, 1, '13802987366', 'crontab', 'redeemable', '0.02739726', '0.00000000', '0.00000000', 1470240061, '现金返还，返还单号: 240523584061478000', '240523584061478000'),
(123, 8, '13450226610', 'crontab', 'redeemable', '60.69863014', '0.00000000', '0.00000000', 1470240061, '现金返还，返还单号: 200523584063509000', '200523584063509000'),
(124, 18, '18620778046', 'crontab', 'redeemable', '0.05479452', '0.00000000', '0.00000000', 1470240061, '现金返还，返还单号: 390523584065542000', '390523584065542000'),
(125, 17, '13631430470', 'crontab', 'redeemable', '0.05479452', '0.00000000', '0.00000000', 1470240061, '现金返还，返还单号: 570523584067560000', '570523584067560000'),
(126, 12, '18680564089', 'crontab', 'redeemable', '1.36986301', '0.00000000', '0.00000000', 1470240061, '现金返还，返还单号: 480523584069589000', '480523584069589000'),
(127, 9, '13538850622', 'crontab', 'redeemable', '0.73972603', '0.00000000', '0.00000000', 1470240061, '现金返还，返还单号: 990523584071608000', '990523584071608000'),
(128, 4, '13632242148', 'crontab', 'redeemable', '0.02054795', '8060.26712335', '0.00000000', 1470240061, '现金返还，返还单号: 350523584073628000', '350523584073628000'),
(129, 9, '13538850622', 'system', 'fund', '-50.00000000', '0.00000000', '0.00000000', 1470240364, '公益捐赠，捐赠号: 610523584364479009', '610523584364479009'),
(130, 12, '18680564089', 'system', 'fund', '-20.00000000', '0.00000000', '0.00000000', 1470314354, '公益捐赠，捐赠号: 700523658354734012', '700523658354734012'),
(131, 1, '13802987366', 'crontab', 'redeemable', '0.02739726', '0.00000000', '0.00000000', 1470326461, '现金返还，返还单号: 980523670461915000', '980523670461915000'),
(132, 8, '13450226610', 'crontab', 'redeemable', '60.69863014', '0.00000000', '0.00000000', 1470326461, '现金返还，返还单号: 960523670463943000', '960523670463943000'),
(133, 18, '18620778046', 'crontab', 'redeemable', '0.05479452', '0.00000000', '0.00000000', 1470326461, '现金返还，返还单号: 440523670465975000', '440523670465975000'),
(134, 17, '13631430470', 'crontab', 'redeemable', '0.05479452', '0.00000000', '0.00000000', 1470326461, '现金返还，返还单号: 160523670467997000', '160523670467997000'),
(135, 12, '18680564089', 'crontab', 'redeemable', '1.36986301', '0.00000000', '0.00000000', 1470326461, '现金返还，返还单号: 380523670470033000', '380523670470033000'),
(136, 9, '13538850622', 'crontab', 'redeemable', '0.73972603', '0.00000000', '0.00000000', 1470326461, '现金返还，返还单号: 560523670472058000', '560523670472058000'),
(137, 4, '13632242148', 'crontab', 'redeemable', '0.02054795', '8060.28767130', '0.00000000', 1470326461, '现金返还，返还单号: 580523670474076000', '580523670474076000'),
(138, 1, '13802987366', 'crontab', 'redeemable', '0.02739726', '0.00000000', '0.00000000', 1470412861, '现金返还，返还单号: 660523756861397000', '660523756861397000'),
(139, 8, '13450226610', 'crontab', 'redeemable', '60.69863014', '0.00000000', '0.00000000', 1470412861, '现金返还，返还单号: 330523756863426000', '330523756863426000'),
(140, 18, '18620778046', 'crontab', 'redeemable', '0.05479452', '0.00000000', '0.00000000', 1470412861, '现金返还，返还单号: 250523756865441000', '250523756865441000'),
(141, 17, '13631430470', 'crontab', 'redeemable', '0.05479452', '0.00000000', '0.00000000', 1470412861, '现金返还，返还单号: 330523756867462000', '330523756867462000'),
(142, 12, '18680564089', 'crontab', 'redeemable', '1.36986301', '0.00000000', '0.00000000', 1470412861, '现金返还，返还单号: 970523756869477000', '970523756869477000'),
(143, 9, '13538850622', 'crontab', 'redeemable', '0.73972603', '0.00000000', '0.00000000', 1470412861, '现金返还，返还单号: 360523756871497000', '360523756871497000'),
(144, 4, '13632242148', 'crontab', 'redeemable', '0.02054795', '8060.30821925', '0.00000000', 1470412861, '现金返还，返还单号: 990523756873522000', '990523756873522000'),
(145, 1, '13802987366', 'crontab', 'redeemable', '0.02739726', '0.00000000', '0.00000000', 1470499261, '现金返还，返还单号: 930523843261907000', '930523843261907000'),
(146, 8, '13450226610', 'crontab', 'redeemable', '60.69863014', '0.00000000', '0.00000000', 1470499261, '现金返还，返还单号: 670523843263956000', '670523843263956000'),
(147, 18, '18620778046', 'crontab', 'redeemable', '0.05479452', '0.00000000', '0.00000000', 1470499261, '现金返还，返还单号: 850523843265980000', '850523843265980000'),
(148, 17, '13631430470', 'crontab', 'redeemable', '0.05479452', '0.00000000', '0.00000000', 1470499261, '现金返还，返还单号: 710523843267998000', '710523843267998000'),
(149, 12, '18680564089', 'crontab', 'redeemable', '1.36986301', '0.00000000', '0.00000000', 1470499261, '现金返还，返还单号: 860523843270015000', '860523843270015000'),
(150, 9, '13538850622', 'crontab', 'redeemable', '0.73972603', '0.00000000', '0.00000000', 1470499261, '现金返还，返还单号: 700523843272033000', '700523843272033000'),
(151, 4, '13632242148', 'crontab', 'redeemable', '0.02054795', '8060.32876720', '0.00000000', 1470499261, '现金返还，返还单号: 350523843274051000', '350523843274051000'),
(152, 1, '13802987366', 'crontab', 'redeemable', '0.02739726', '0.00000000', '0.00000000', 1470585661, '现金返还，返还单号: 940523929661424000', '940523929661424000'),
(153, 8, '13450226610', 'crontab', 'redeemable', '60.69863014', '0.00000000', '0.00000000', 1470585661, '现金返还，返还单号: 360523929663467000', '360523929663467000'),
(154, 18, '18620778046', 'crontab', 'redeemable', '0.05479452', '0.00000000', '0.00000000', 1470585661, '现金返还，返还单号: 220523929665505000', '220523929665505000'),
(155, 17, '13631430470', 'crontab', 'redeemable', '0.05479452', '0.00000000', '0.00000000', 1470585661, '现金返还，返还单号: 580523929667525000', '580523929667525000'),
(156, 12, '18680564089', 'crontab', 'redeemable', '1.36986301', '7075.95890408', '0.00000000', 1470585661, '现金返还，返还单号: 340523929669548000', '340523929669548000'),
(157, 9, '13538850622', 'crontab', 'redeemable', '0.73972603', '16580.97945212', '0.00000000', 1470585661, '现金返还，返还单号: 710523929671571000', '710523929671571000'),
(158, 4, '13632242148', 'crontab', 'redeemable', '0.02054795', '8060.34931515', '0.00000000', 1470585661, '现金返还，返还单号: 690523929673594000', '690523929673594000'),
(159, 4, '13632242148', 'system', 'fund', '-1.00000000', '8059.34931515', '0.00000000', 1470664108, '公益捐赠，捐赠号: 870524008108878004', '870524008108878004'),
(160, 4, '13632242148', 'system', 'fund', '-1000.00000000', '7059.34931515', '0.00000000', 1470664134, '公益捐赠，捐赠号: 140524008134856004', '140524008134856004'),
(161, 1, '13802987366', 'crontab', 'redeemable', '0.02739726', '400.24657534', '0.00000000', 1470672061, '现金返还，返还单号: 960524016061995000', '960524016061995000'),
(162, 8, '13450226610', 'crontab', 'redeemable', '60.69863014', '547.28767126', '0.00000000', 1470672061, '现金返还，返还单号: 800524016064032000', '800524016064032000'),
(163, 18, '18620778046', 'crontab', 'redeemable', '0.05479452', '0.49315068', '0.00000000', 1470672061, '现金返还，返还单号: 250524016066071000', '250524016066071000'),
(164, 17, '13631430470', 'crontab', 'redeemable', '0.05479452', '5.97260276', '0.00000000', 1470672061, '现金返还，返还单号: 920524016068090000', '920524016068090000'),
(165, 12, '18680564089', 'crontab', 'redeemable', '1.36986301', '7077.32876709', '0.00000000', 1470672061, '现金返还，返还单号: 650524016070107000', '650524016070107000'),
(166, 9, '13538850622', 'crontab', 'redeemable', '0.73972603', '16581.71917815', '0.00000000', 1470672061, '现金返还，返还单号: 860524016072136000', '860524016072136000'),
(167, 4, '13632242148', 'crontab', 'redeemable', '0.02054795', '7059.36986310', '0.00000000', 1470672061, '现金返还，返还单号: 330524016074154000', '330524016074154000'),
(169, 4, '13632242148', NULL, 'oil_card', '500.00000000', '7559.36986310', '0.00000000', 1470756713, '驳回油卡申请，订单号: 930522430031700004', '930522430031700004'),
(170, 1, '13802987366', 'crontab', 'redeemable', '0.02739726', '400.27397260', '0.00000000', 1470758461, '现金返还，返还单号: 330524102461497000', '330524102461497000'),
(171, 8, '13450226610', 'crontab', 'redeemable', '60.69863014', '607.98630140', '0.00000000', 1470758461, '现金返还，返还单号: 820524102463533000', '820524102463533000'),
(172, 18, '18620778046', 'crontab', 'redeemable', '0.05479452', '0.54794520', '0.00000000', 1470758461, '现金返还，返还单号: 350524102465554000', '350524102465554000'),
(173, 17, '13631430470', 'crontab', 'redeemable', '0.05479452', '6.02739728', '0.00000000', 1470758461, '现金返还，返还单号: 500524102467579000', '500524102467579000'),
(174, 12, '18680564089', 'crontab', 'redeemable', '1.36986301', '7078.69863010', '0.00000000', 1470758461, '现金返还，返还单号: 660524102469599000', '660524102469599000'),
(175, 9, '13538850622', 'crontab', 'redeemable', '0.73972603', '16582.45890418', '0.00000000', 1470758461, '现金返还，返还单号: 380524102471623000', '380524102471623000'),
(176, 4, '13632242148', 'crontab', 'redeemable', '0.02054795', '7559.39041105', '0.00000000', 1470758461, '现金返还，返还单号: 660524102473644000', '660524102473644000'),
(177, 15, '15692000182', NULL, 'recharge', '19999.00000000', '20000.00000000', '0.00000000', 1470759216, '充值，充值单号: 760524103216020000', '760524103216020000'),
(178, 15, '15692000182', NULL, 'upgrade', '-1000.00000000', '19000.00000000', '0.00000000', 1470759263, '会员升级，订单号: 960524103263605015', '960524103263605015'),
(179, 2, '13800138000', NULL, 'invite_upgrade', '100.00000000', '4500.00000000', '0.00000000', 1470759263, '被邀请人[15692000182] 升级帐号,单号:970524103263595015', '970524103263595015'),
(180, 2, '13800138000', NULL, 'club_upgrade', '900.00000000', '5400.00000000', '0.00000000', 1470759263, '俱乐部会员升级帐号，订单号: 970524103263595015', '970524103263595015'),
(181, 15, '15692000182', NULL, 'oil_card', '-500.00000000', '18500.00000000', '0.00000000', 1470759365, '购买油卡，订单号: 970524103365661015', '970524103365661015'),
(182, 15, '15692000182', NULL, 'oil_card', '500.00000000', '19000.00000000', '0.00000000', 1470759394, '驳回油卡申请，订单号: 690524103365639015', '690524103365639015'),
(183, 9, '13538850622', NULL, 'cash_apply', '555.00000000', '17137.45890418', '555.00000000', 1470759493, '申请提现，冻结帐户余额，提现单号: 710524103493758000', '710524103493758000'),
(184, 9, '13538850622', NULL, 'cash_apply', '600.00000000', '17737.45890418', '600.00000000', 1470759523, '申请提现，冻结帐户余额，提现单号: 870524103523912000', '870524103523912000'),
(185, 9, '13538850622', 'czbroot', 'cash_del', '600.00000000', '18337.45890418', '600.00000000', 1470760304, '取消提现申请，解冻帐户余额，提现单号: 870524103523912000', '870524103523912000'),
(186, 4, '13632242148', 'system', 'fund', '-20.00000000', '7539.39041105', '0.00000000', 1470760550, '公益捐赠，捐赠号: 130524104550386004', '130524104550386004'),
(187, 4, '13632242148', 'system', 'fund', '-50.00000000', '0.00000000', '0.00000000', 1470824679, '公益捐赠，捐赠号: 690524168679573004', '690524168679573004'),
(188, 4, '13632242148', 'system', 'fund', '-50.00000000', '0.00000000', '0.00000000', 1470824998, '公益捐赠，捐赠号: 950524168998511004', '950524168998511004'),
(189, 4, '13632242148', 'system', 'fund', '-50.00000000', '0.00000000', '0.00000000', 1470825024, '公益捐赠，捐赠号: 720524169024108004', '720524169024108004'),
(190, 1, '13802987366', 'crontab', 'redeemable', '0.02739726', '0.00000000', '0.00000000', 1470844861, '现金返还，返还单号: 850524188861081000', '850524188861081000'),
(191, 8, '13450226610', 'crontab', 'redeemable', '60.69863014', '0.00000000', '0.00000000', 1470844861, '现金返还，返还单号: 270524188863136000', '270524188863136000'),
(192, 18, '18620778046', 'crontab', 'redeemable', '0.05479452', '0.00000000', '0.00000000', 1470844861, '现金返还，返还单号: 930524188865159000', '930524188865159000'),
(193, 17, '13631430470', 'crontab', 'redeemable', '0.05479452', '0.00000000', '0.00000000', 1470844861, '现金返还，返还单号: 460524188867180000', '460524188867180000'),
(194, 12, '18680564089', 'crontab', 'redeemable', '1.36986301', '0.00000000', '0.00000000', 1470844861, '现金返还，返还单号: 230524188869200000', '230524188869200000'),
(195, 9, '13538850622', 'crontab', 'redeemable', '0.73972603', '0.00000000', '0.00000000', 1470844861, '现金返还，返还单号: 240524188871220000', '240524188871220000'),
(196, 4, '13632242148', 'crontab', 'redeemable', '0.02054795', '0.00000000', '0.00000000', 1470844861, '现金返还，返还单号: 210524188873241000', '210524188873241000'),
(197, 1, '13802987366', 'crontab', 'redeemable', '0.02739726', '0.00000000', '0.00000000', 1470931262, '现金返还，返还单号: 260524275262126000', '260524275262126000'),
(198, 8, '13450226610', 'crontab', 'redeemable', '60.69863014', '0.00000000', '0.00000000', 1470931262, '现金返还，返还单号: 430524275264156000', '430524275264156000'),
(199, 18, '18620778046', 'crontab', 'redeemable', '0.05479452', '0.00000000', '0.00000000', 1470931262, '现金返还，返还单号: 180524275266196000', '180524275266196000'),
(200, 17, '13631430470', 'crontab', 'redeemable', '0.05479452', '0.00000000', '0.00000000', 1470931262, '现金返还，返还单号: 260524275268215000', '260524275268215000'),
(201, 12, '18680564089', 'crontab', 'redeemable', '1.36986301', '0.00000000', '0.00000000', 1470931262, '现金返还，返还单号: 330524275270240000', '330524275270240000'),
(202, 9, '13538850622', 'crontab', 'redeemable', '0.73972603', '0.00000000', '0.00000000', 1470931262, '现金返还，返还单号: 730524275272261000', '730524275272261000'),
(203, 4, '13632242148', 'crontab', 'redeemable', '0.02054795', '0.00000000', '0.00000000', 1470931262, '现金返还，返还单号: 900524275274282000', '900524275274282000');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_pd_recharge`
--

CREATE TABLE IF NOT EXISTS `yunpay_pd_recharge` (
  `pdr_id` int(11) NOT NULL COMMENT '自增编号',
  `pdr_sn` bigint(20) unsigned NOT NULL COMMENT '记录唯一标示',
  `pdr_member_id` int(11) NOT NULL COMMENT '会员编号',
  `pdr_member_name` varchar(50) NOT NULL COMMENT '会员名称',
  `pdr_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `pdr_payment_code` varchar(20) DEFAULT '' COMMENT '支付方式',
  `pdr_payment_name` varchar(15) DEFAULT '' COMMENT '支付方式',
  `pdr_trade_sn` varchar(50) DEFAULT '' COMMENT '第三方支付接口交易号',
  `pdr_add_time` int(11) NOT NULL COMMENT '添加时间',
  `pdr_payment_state` enum('0','1') NOT NULL DEFAULT '0' COMMENT '支付状态 0未支付1支付',
  `pdr_payment_time` int(11) NOT NULL DEFAULT '0' COMMENT '支付时间',
  `pdr_admin` varchar(30) DEFAULT '' COMMENT '管理员名'
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='预存款充值表';

--
-- 转存表中的数据 `yunpay_pd_recharge`
--

INSERT INTO `yunpay_pd_recharge` (`pdr_id`, `pdr_sn`, `pdr_member_id`, `pdr_member_name`, `pdr_amount`, `pdr_payment_code`, `pdr_payment_name`, `pdr_trade_sn`, `pdr_add_time`, `pdr_payment_state`, `pdr_payment_time`, `pdr_admin`) VALUES
(1, 870522107579816000, 3, '13450226610', '1.00', 'cash', '现金支付', '0000000000', 1468763579, '1', 1468763579, 'czbroot'),
(2, 850522108460417000, 3, '13450226610', '10.00', 'cash', '现金支付', '0000000000', 1468764460, '1', 1468764460, 'czbroot'),
(3, 820522109298837000, 3, '13450226610', '100000.00', 'cash', '现金支付', '0000000000', 1468765298, '1', 1468765298, 'czbroot'),
(4, 290522109748742000, 3, '13450226610', '1000.00', 'cash', '现金支付', '', 1468765748, '1', 1468765748, 'czbroot'),
(5, 280522111968206000, 4, '13632242148', '10000.00', 'cash', '现金支付', '0', 1468767968, '1', 1468767968, 'czbroot'),
(6, 240522150378912000, 9, '13538850622', '10000.00', 'cash', '现金支付', '2016年7月18日 09:46:29', 1468806378, '1', 1468806378, 'czbroot'),
(7, 700522151406189000, 13, '13580446901', '1000.00', 'cash', '现金支付', '2016年7月18日 10:03:37', 1468807406, '1', 1468807406, 'czbroot'),
(8, 140522168749653004, 4, '13632242148', '1.00', '', '', '', 1468824749, '0', 0, ''),
(9, 110522239685833000, 8, '13450226610', '5401.00', '', '', '', 1468895685, '0', 0, ''),
(10, 180522239750822000, 8, '13450226610', '1000.00', '', '', '', 1468895750, '0', 0, ''),
(11, 600522429040336015, 15, '15692000182', '1.00', '', '', '', 1469085040, '0', 0, ''),
(12, 980522430668822000, 15, '15692000182', '1.00', '', '', '', 1469086668, '0', 0, ''),
(13, 930522432919004008, 8, '13450226610', '1.00', 'alipay', '支付宝', '2016072121001004080205425448', 1469088918, '1', 1469088935, ''),
(14, 530522433543345000, 15, '15692000182', '1.00', 'alipay', '支付宝', '2016072121001004450276458947', 1469089543, '1', 1469089552, ''),
(15, 640522465097905000, 12, '18680564089', '1000.00', 'cash', '现金支付', '2016年7月22日 01:11:50', 1469121097, '1', 1469121097, 'czbroot'),
(16, 210522542412875000, 14, '17092049213', '1000.00', '', '', '', 1469198412, '0', 0, ''),
(17, 970522555071997012, 12, '18680564089', '6.00', '', '', '', 1469211071, '0', 0, ''),
(18, 450522555079614012, 12, '18680564089', '1.00', '', '', '', 1469211079, '0', 0, ''),
(19, 290522558501522000, 17, '13631430470', '1000.00', 'cash', '现金支付', '2016年7月23日 03:08:33', 1469214501, '1', 1469214501, 'czbroot'),
(20, 480522559930316000, 17, '13631430470', '10000.00', 'cash', '现金支付', '2016年7月23日 03:32:21', 1469215930, '1', 1469215930, 'czbroot'),
(21, 130523292315149000, 9, '13538850622', '10000.00', 'cash', '现金支付', 'test', 1469948315, '1', 1469948315, 'czbroot'),
(22, 170523293041592000, 12, '18680564089', '10000.00', 'cash', '现金支付', 'test', 1469949041, '1', 1469949041, 'czbroot'),
(23, 720523714017812004, 4, '13632242148', '10300.00', '', '', '', 1470370017, '0', 0, ''),
(24, 380523714127251008, 8, '13450226610', '1000.00', '', '', '', 1470370127, '0', 0, ''),
(25, 540523714168004008, 8, '13450226610', '6080.00', '', '', '', 1470370167, '0', 0, ''),
(26, 250523714286557008, 8, '13450226610', '1.00', '', '', '', 1470370286, '0', 0, ''),
(27, 190523714620776008, 8, '13450226610', '88000.00', '', '', '', 1470370620, '0', 0, ''),
(28, 330523720120445020, 20, '13800138099', '5000.00', '', '', '', 1470376120, '0', 0, ''),
(29, 950523750979054017, 17, '13631430470', '1.00', '', '', '', 1470406979, '0', 0, ''),
(30, 780523752216683020, 20, '13800138099', '1000.00', '', '', '', 1470408216, '0', 0, ''),
(31, 710523752221192020, 20, '13800138099', '1000.00', '', '', '', 1470408221, '0', 0, ''),
(32, 240523752226442020, 20, '13800138099', '1000.00', '', '', '', 1470408226, '0', 0, ''),
(33, 440523752228468020, 20, '13800138099', '1000.00', '', '', '', 1470408228, '0', 0, ''),
(34, 320523752348873004, 4, '13632242148', '1000.00', '', '', '', 1470408348, '0', 0, ''),
(35, 970523752368693004, 4, '13632242148', '1000.00', '', '', '', 1470408368, '0', 0, ''),
(36, 800523756215049004, 4, '13632242148', '99999999.99', '', '', '', 1470412215, '0', 0, ''),
(37, 820523756721118004, 4, '13632242148', '1000.00', '', '', '', 1470412721, '0', 0, ''),
(38, 290523792573447004, 4, '13632242148', '1.00', '', '', '', 1470448573, '0', 0, ''),
(39, 340523792627966004, 4, '13632242148', '1.00', '', '', '', 1470448627, '0', 0, ''),
(40, 740523800931084004, 4, '13632242148', '99999999.99', '', '', '', 1470456931, '0', 0, ''),
(41, 940523801118693004, 4, '13632242148', '4000.00', '', '', '', 1470457118, '0', 0, ''),
(42, 170523988426049000, 17, '13631430470', '100.00', '', '', '', 1470644426, '0', 0, ''),
(43, 780524018154462008, 8, '13450226610', '1000.00', '', '', '', 1470674154, '0', 0, ''),
(44, 760524103216020000, 15, '15692000182', '19999.00', 'cash', '现金支付', '0000', 1470759216, '1', 1470759216, 'czbroot');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_pd_redeemable`
--

CREATE TABLE IF NOT EXISTS `yunpay_pd_redeemable` (
  `pdr_id` int(11) NOT NULL COMMENT '自增编号',
  `pdr_sn` bigint(20) NOT NULL COMMENT '唯一标示',
  `pdr_member_id` int(11) NOT NULL COMMENT '会员编号',
  `pdr_member_name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '会员名称',
  `pdr_points` decimal(10,8) NOT NULL COMMENT ' 消费积分',
  `pdr_amount` decimal(10,8) NOT NULL COMMENT '返还金额',
  `pdr_add_time` int(11) NOT NULL COMMENT '返还时间',
  `pdr_desc` varchar(150) CHARACTER SET utf8 NOT NULL COMMENT '描述'
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `yunpay_pd_redeemable`
--

INSERT INTO `yunpay_pd_redeemable` (`pdr_id`, `pdr_sn`, `pdr_member_id`, `pdr_member_name`, `pdr_points`, `pdr_amount`, `pdr_add_time`, `pdr_desc`) VALUES
(1, 780522547261944000, 4, '13632242148', '0.02054795', '0.02054795', 1469203261, ''),
(2, 260522547264033000, 9, '13538850622', '0.00684932', '0.00684932', 1469203261, ''),
(3, 610522633661386000, 17, '13631430470', '0.68493151', '0.68493151', 1469289661, ''),
(4, 110522633663434000, 4, '13632242148', '0.02054795', '0.02054795', 1469289661, ''),
(5, 140522633665462000, 9, '13538850622', '0.00684932', '0.00684932', 1469289661, ''),
(6, 870522720061915000, 17, '13631430470', '0.68493151', '0.68493151', 1469376061, ''),
(7, 440522720063968000, 4, '13632242148', '0.02054795', '0.02054795', 1469376061, ''),
(8, 210522720065986000, 9, '13538850622', '0.00684932', '0.00684932', 1469376061, ''),
(9, 260522806461375000, 17, '13631430470', '0.68493151', '0.68493151', 1469462461, ''),
(10, 700522806463414000, 4, '13632242148', '0.02054795', '0.02054795', 1469462461, ''),
(11, 130522806465431000, 9, '13538850622', '0.00684932', '0.00684932', 1469462461, ''),
(12, 540522892861850000, 17, '13631430470', '0.68493151', '0.68493151', 1469548861, ''),
(13, 280522892863881000, 4, '13632242148', '0.02054795', '0.02054795', 1469548861, ''),
(14, 260522892865897000, 9, '13538850622', '0.00684932', '0.00684932', 1469548861, ''),
(15, 840522979261296000, 17, '13631430470', '0.68493151', '0.68493151', 1469635261, ''),
(16, 890522979263330000, 4, '13632242148', '0.02054795', '0.02054795', 1469635261, ''),
(17, 130522979265358000, 9, '13538850622', '0.00684932', '0.00684932', 1469635261, ''),
(18, 860523065661780000, 17, '13631430470', '0.68493151', '0.68493151', 1469721661, ''),
(19, 740523065663818000, 4, '13632242148', '0.02054795', '0.02054795', 1469721661, ''),
(20, 900523065665854000, 9, '13538850622', '0.00684932', '0.00684932', 1469721661, ''),
(21, 530523152061799000, 17, '13631430470', '0.68493151', '0.68493151', 1469808061, ''),
(22, 730523152063841000, 4, '13632242148', '0.02054795', '0.02054795', 1469808061, ''),
(23, 760523152065858000, 9, '13538850622', '0.00684932', '0.00684932', 1469808061, ''),
(24, 810523238461265000, 17, '13631430470', '0.68493151', '0.68493151', 1469894461, ''),
(25, 790523238463308000, 4, '13632242148', '0.02054795', '0.02054795', 1469894461, ''),
(26, 240523238465332000, 9, '13538850622', '0.00684932', '0.00684932', 1469894461, ''),
(27, 550523324861765000, 1, '13802987366', '0.02739726', '0.02739726', 1469980861, ''),
(28, 310523324863801000, 8, '13450226610', '60.69863014', '60.69863014', 1469980861, ''),
(29, 510523324865825000, 18, '18620778046', '0.05479452', '0.05479452', 1469980861, ''),
(30, 530523324867846000, 17, '13631430470', '0.05479452', '0.05479452', 1469980861, ''),
(31, 600523324869947000, 12, '18680564089', '1.36986301', '1.36986301', 1469980861, ''),
(32, 550523324871967000, 9, '13538850622', '0.73972603', '0.73972603', 1469980861, ''),
(34, 870523324875996000, 4, '13632242148', '0.02054795', '0.02054795', 1469980861, ''),
(35, 750523411262332000, 1, '13802987366', '0.02739726', '0.02739726', 1470067262, ''),
(36, 890523411264484000, 8, '13450226610', '60.69863014', '60.69863014', 1470067262, ''),
(37, 920523411266534000, 18, '18620778046', '0.05479452', '0.05479452', 1470067262, ''),
(38, 880523411268558000, 17, '13631430470', '0.05479452', '0.05479452', 1470067262, ''),
(39, 400523411270575000, 12, '18680564089', '1.36986301', '1.36986301', 1470067262, ''),
(40, 520523411272618000, 9, '13538850622', '0.73972603', '0.73972603', 1470067262, ''),
(41, 500523411274636000, 4, '13632242148', '0.02054795', '0.02054795', 1470067262, ''),
(42, 610523497661972000, 1, '13802987366', '0.02739726', '0.02739726', 1470153661, ''),
(43, 600523497663998000, 8, '13450226610', '60.69863014', '60.69863014', 1470153661, ''),
(44, 850523497666034000, 18, '18620778046', '0.05479452', '0.05479452', 1470153661, ''),
(45, 950523497668051000, 17, '13631430470', '0.05479452', '0.05479452', 1470153661, ''),
(46, 800523497670068000, 12, '18680564089', '1.36986301', '1.36986301', 1470153661, ''),
(47, 670523497672091000, 9, '13538850622', '0.73972603', '0.73972603', 1470153661, ''),
(48, 530523497674123000, 4, '13632242148', '0.02054795', '0.02054795', 1470153661, ''),
(49, 240523584061478000, 1, '13802987366', '0.02739726', '0.02739726', 1470240061, ''),
(50, 200523584063509000, 8, '13450226610', '60.69863014', '60.69863014', 1470240061, ''),
(51, 390523584065542000, 18, '18620778046', '0.05479452', '0.05479452', 1470240061, ''),
(52, 570523584067560000, 17, '13631430470', '0.05479452', '0.05479452', 1470240061, ''),
(53, 480523584069589000, 12, '18680564089', '1.36986301', '1.36986301', 1470240061, ''),
(54, 990523584071608000, 9, '13538850622', '0.73972603', '0.73972603', 1470240061, ''),
(55, 350523584073628000, 4, '13632242148', '0.02054795', '0.02054795', 1470240061, ''),
(56, 980523670461915000, 1, '13802987366', '0.02739726', '0.02739726', 1470326461, ''),
(57, 960523670463943000, 8, '13450226610', '60.69863014', '60.69863014', 1470326461, ''),
(58, 440523670465975000, 18, '18620778046', '0.05479452', '0.05479452', 1470326461, ''),
(59, 160523670467997000, 17, '13631430470', '0.05479452', '0.05479452', 1470326461, ''),
(60, 380523670470033000, 12, '18680564089', '1.36986301', '1.36986301', 1470326461, ''),
(61, 560523670472058000, 9, '13538850622', '0.73972603', '0.73972603', 1470326461, ''),
(62, 580523670474076000, 4, '13632242148', '0.02054795', '0.02054795', 1470326461, ''),
(63, 660523756861397000, 1, '13802987366', '0.02739726', '0.02739726', 1470412861, ''),
(64, 330523756863426000, 8, '13450226610', '60.69863014', '60.69863014', 1470412861, ''),
(65, 250523756865441000, 18, '18620778046', '0.05479452', '0.05479452', 1470412861, ''),
(66, 330523756867462000, 17, '13631430470', '0.05479452', '0.05479452', 1470412861, ''),
(67, 970523756869477000, 12, '18680564089', '1.36986301', '1.36986301', 1470412861, ''),
(68, 360523756871497000, 9, '13538850622', '0.73972603', '0.73972603', 1470412861, ''),
(69, 990523756873522000, 4, '13632242148', '0.02054795', '0.02054795', 1470412861, ''),
(70, 930523843261907000, 1, '13802987366', '0.02739726', '0.02739726', 1470499261, ''),
(71, 670523843263956000, 8, '13450226610', '60.69863014', '60.69863014', 1470499261, ''),
(72, 850523843265980000, 18, '18620778046', '0.05479452', '0.05479452', 1470499261, ''),
(73, 710523843267998000, 17, '13631430470', '0.05479452', '0.05479452', 1470499261, ''),
(74, 860523843270015000, 12, '18680564089', '1.36986301', '1.36986301', 1470499261, ''),
(75, 700523843272033000, 9, '13538850622', '0.73972603', '0.73972603', 1470499261, ''),
(76, 350523843274051000, 4, '13632242148', '0.02054795', '0.02054795', 1470499261, ''),
(77, 940523929661424000, 1, '13802987366', '0.02739726', '0.02739726', 1470585661, ''),
(78, 360523929663467000, 8, '13450226610', '60.69863014', '60.69863014', 1470585661, ''),
(79, 220523929665505000, 18, '18620778046', '0.05479452', '0.05479452', 1470585661, ''),
(80, 580523929667525000, 17, '13631430470', '0.05479452', '0.05479452', 1470585661, ''),
(81, 340523929669548000, 12, '18680564089', '1.36986301', '1.36986301', 1470585661, ''),
(82, 710523929671571000, 9, '13538850622', '0.73972603', '0.73972603', 1470585661, ''),
(83, 690523929673594000, 4, '13632242148', '0.02054795', '0.02054795', 1470585661, ''),
(84, 960524016061995000, 1, '13802987366', '0.02739726', '0.02739726', 1470672061, ''),
(85, 800524016064032000, 8, '13450226610', '60.69863014', '60.69863014', 1470672061, ''),
(86, 250524016066071000, 18, '18620778046', '0.05479452', '0.05479452', 1470672061, ''),
(87, 920524016068090000, 17, '13631430470', '0.05479452', '0.05479452', 1470672061, ''),
(88, 650524016070107000, 12, '18680564089', '1.36986301', '1.36986301', 1470672061, ''),
(89, 860524016072136000, 9, '13538850622', '0.73972603', '0.73972603', 1470672061, ''),
(90, 330524016074154000, 4, '13632242148', '0.02054795', '0.02054795', 1470672061, ''),
(91, 330524102461497000, 1, '13802987366', '0.02739726', '0.02739726', 1470758461, ''),
(92, 820524102463533000, 8, '13450226610', '60.69863014', '60.69863014', 1470758461, ''),
(93, 350524102465554000, 18, '18620778046', '0.05479452', '0.05479452', 1470758461, ''),
(94, 500524102467579000, 17, '13631430470', '0.05479452', '0.05479452', 1470758461, ''),
(95, 660524102469599000, 12, '18680564089', '1.36986301', '1.36986301', 1470758461, ''),
(96, 380524102471623000, 9, '13538850622', '0.73972603', '0.73972603', 1470758461, ''),
(97, 660524102473644000, 4, '13632242148', '0.02054795', '0.02054795', 1470758461, ''),
(98, 850524188861081000, 1, '13802987366', '0.02739726', '0.02739726', 1470844861, ''),
(99, 270524188863136000, 8, '13450226610', '60.69863014', '60.69863014', 1470844861, ''),
(100, 930524188865159000, 18, '18620778046', '0.05479452', '0.05479452', 1470844861, ''),
(101, 460524188867180000, 17, '13631430470', '0.05479452', '0.05479452', 1470844861, ''),
(102, 230524188869200000, 12, '18680564089', '1.36986301', '1.36986301', 1470844861, ''),
(103, 240524188871220000, 9, '13538850622', '0.73972603', '0.73972603', 1470844861, ''),
(104, 210524188873241000, 4, '13632242148', '0.02054795', '0.02054795', 1470844861, ''),
(105, 260524275262126000, 1, '13802987366', '0.02739726', '0.02739726', 1470931262, ''),
(106, 430524275264156000, 8, '13450226610', '60.69863014', '60.69863014', 1470931262, ''),
(107, 180524275266196000, 18, '18620778046', '0.05479452', '0.05479452', 1470931262, ''),
(108, 260524275268215000, 17, '13631430470', '0.05479452', '0.05479452', 1470931262, ''),
(109, 330524275270240000, 12, '18680564089', '1.36986301', '1.36986301', 1470931262, ''),
(110, 730524275272261000, 9, '13538850622', '0.73972603', '0.73972603', 1470931262, ''),
(111, 900524275274282000, 4, '13632242148', '0.02054795', '0.02054795', 1470931262, '');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_pd_transfer`
--

CREATE TABLE IF NOT EXISTS `yunpay_pd_transfer` (
  `pdt_id` int(11) NOT NULL COMMENT '自增编号',
  `pdt_sn` bigint(20) NOT NULL COMMENT '记录唯一标识',
  `pdt_to_member_id` int(11) NOT NULL COMMENT '收款会员编号',
  `pdt_to_member_name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '收款会员名称',
  `pdt_amount` decimal(10,2) NOT NULL COMMENT '金额',
  `pdt_amount_rate` decimal(10,2) DEFAULT NULL COMMENT '转帐手续费比例',
  `pdt_amount_get` decimal(10,2) DEFAULT NULL COMMENT '实际转帐',
  `pdt_amount_out` decimal(10,2) DEFAULT NULL COMMENT '手续费',
  `pdt_from_member_id` int(11) NOT NULL COMMENT '转出会员编号',
  `pdt_from_member_name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '转出会员名称',
  `pdt_remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT ' ' COMMENT '备注',
  `pdt_add_time` int(11) NOT NULL COMMENT '转出时间'
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `yunpay_pd_transfer`
--

INSERT INTO `yunpay_pd_transfer` (`pdt_id`, `pdt_sn`, `pdt_to_member_id`, `pdt_to_member_name`, `pdt_amount`, `pdt_amount_rate`, `pdt_amount_get`, `pdt_amount_out`, `pdt_from_member_id`, `pdt_from_member_name`, `pdt_remark`, `pdt_add_time`) VALUES
(22, 210522503164360000, 12, '18680564089', '100.00', '0.15', '85.00', '15.00', 9, '13538850622', '', 1469159164),
(23, 510522518532631004, 5, '123456', '100.00', '0.15', '85.00', '15.00', 4, '13632242148', '1', 1469174532),
(24, 340522518551625004, 5, '123456', '100.00', '0.15', '85.00', '15.00', 4, '13632242148', '1', 1469174551),
(25, 660522518587738004, 5, '123456', '100.00', '0.15', '85.00', '15.00', 4, '13632242148', '1', 1469174587),
(26, 410522560073992017, 12, '18680564089', '10000.00', '0.15', '8500.00', '1500.00', 17, '13631430470', '', 1469216073),
(27, 470523292382591000, 12, '18680564089', '10000.00', '0.15', '8500.00', '1500.00', 9, '13538850622', '', 1469948382),
(28, 740523293383940012, 9, '13538850622', '10000.00', '0.15', '8500.00', '1500.00', 12, '18680564089', '', 1469949383),
(29, 440523293553259012, 5, '123456', '10000.00', '0.15', '8500.00', '1500.00', 12, '18680564089', '', 1469949553);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_pd_upgrade`
--

CREATE TABLE IF NOT EXISTS `yunpay_pd_upgrade` (
  `pu_id` int(11) NOT NULL,
  `pu_sn` bigint(20) DEFAULT NULL COMMENT '记录唯一标示',
  `pu_member_id` int(11) DEFAULT NULL COMMENT '会员编号',
  `pu_member_name` varchar(50) DEFAULT NULL COMMENT '会员名称',
  `pu_grade_id` tinyint(2) DEFAULT NULL COMMENT '购买等级',
  `pu_amount` decimal(10,2) DEFAULT NULL COMMENT '升级金额',
  `pu_payment_code` varchar(20) DEFAULT '' COMMENT '支付方式',
  `pu_payment_name` varchar(15) DEFAULT '' COMMENT '支付方式',
  `pu_trade_sn` varchar(50) DEFAULT '' COMMENT '第三方支付接口交易号',
  `pu_payment_state` enum('0','1') NOT NULL DEFAULT '0' COMMENT '支付状态 0未支付1支付',
  `pu_add_time` int(11) NOT NULL COMMENT '添加时间',
  `pu_payment_time` int(11) NOT NULL DEFAULT '0' COMMENT '支付时间'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yunpay_pd_upgrade`
--

INSERT INTO `yunpay_pd_upgrade` (`pu_id`, `pu_sn`, `pu_member_id`, `pu_member_name`, `pu_grade_id`, `pu_amount`, `pu_payment_code`, `pu_payment_name`, `pu_trade_sn`, `pu_payment_state`, `pu_add_time`, `pu_payment_time`) VALUES
(1, 160522109375832003, 3, '13450226610', 1, '1000.00', 'predeposit', '余额支付', '490522109375842003', '1', 1468765375, 1468765375),
(2, 260522112251575004, 4, '13632242148', 1, '1000.00', 'predeposit', '余额支付', '540522112251586004', '1', 1468768251, 1468768251),
(3, 940522150615601009, 9, '13538850622', 1, '1000.00', 'predeposit', '余额支付', '390522150615616009', '1', 1468806615, 1468806615),
(4, 950522465116602012, 12, '18680564089', 1, '1000.00', 'predeposit', '余额支付', '140522465116611012', '1', 1469121116, 1469121116),
(5, 300522558506319017, 17, '13631430470', 1, '1000.00', 'predeposit', '余额支付', '670522558506331017', '1', 1469214506, 1469214506),
(6, 970524103263595015, 15, '15692000182', 1, '1000.00', 'predeposit', '余额支付', '960524103263605015', '1', 1470759263, 1470759263);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_points_log`
--

CREATE TABLE IF NOT EXISTS `yunpay_points_log` (
  `pl_id` int(11) NOT NULL COMMENT '积分日志编号',
  `pl_memberid` int(11) NOT NULL COMMENT '会员编号',
  `pl_membername` varchar(100) NOT NULL COMMENT '会员名称',
  `pl_adminid` int(11) DEFAULT NULL COMMENT '管理员编号',
  `pl_adminname` varchar(100) DEFAULT NULL COMMENT '管理员名称',
  `pl_points` decimal(20,8) NOT NULL DEFAULT '0.00000000' COMMENT '积分数负数表示扣除',
  `pl_addtime` int(11) NOT NULL COMMENT '添加时间',
  `pl_desc` varchar(100) NOT NULL COMMENT '操作描述',
  `pl_stage` varchar(50) NOT NULL COMMENT '操作阶段',
  `pl_sn` bigint(20) DEFAULT NULL COMMENT '关联单号'
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='会员积分日志表';

--
-- 转存表中的数据 `yunpay_points_log`
--

INSERT INTO `yunpay_points_log` (`pl_id`, `pl_memberid`, `pl_membername`, `pl_adminid`, `pl_adminname`, `pl_points`, `pl_addtime`, `pl_desc`, `pl_stage`, `pl_sn`) VALUES
(1, 9, '13538850622', NULL, NULL, '50.00000000', 1469159164, '消费获得会员积分,单号:210522503164360000', 'transfer', NULL),
(2, 4, '13632242148', NULL, NULL, '50.00000000', 1469174532, '消费获得会员积分,单号:510522518532631004', 'transfer', NULL),
(3, 4, '13632242148', NULL, NULL, '50.00000000', 1469174551, '消费获得会员积分,单号:340522518551625004', 'transfer', NULL),
(4, 4, '13632242148', NULL, NULL, '50.00000000', 1469174587, '消费获得会员积分,单号:660522518587738004', 'transfer', NULL),
(5, 4, '13632242148', NULL, NULL, '-0.02054795', 1469203261, '返还至帐户余额', 'redeemable', NULL),
(6, 9, '13538850622', NULL, NULL, '-0.00684932', 1469203264, '返还至帐户余额', 'redeemable', NULL),
(7, 17, '13631430470', NULL, NULL, '5000.00000000', 1469216074, '消费获得会员积分,单号:410522560073992017', 'transfer', NULL),
(8, 17, '13631430470', NULL, NULL, '-0.68493151', 1469289661, '返还至帐户余额', 'redeemable', NULL),
(9, 4, '13632242148', NULL, NULL, '-0.02054795', 1469289663, '返还至帐户余额', 'redeemable', NULL),
(10, 9, '13538850622', NULL, NULL, '-0.00684932', 1469289665, '返还至帐户余额', 'redeemable', NULL),
(11, 17, '13631430470', NULL, NULL, '-0.68493151', 1469376061, '返还至帐户余额', 'redeemable', NULL),
(12, 4, '13632242148', NULL, NULL, '-0.02054795', 1469376063, '返还至帐户余额', 'redeemable', NULL),
(13, 9, '13538850622', NULL, NULL, '-0.00684932', 1469376065, '返还至帐户余额', 'redeemable', NULL),
(14, 17, '13631430470', NULL, NULL, '-0.68493151', 1469462461, '返还至帐户余额', 'redeemable', NULL),
(15, 4, '13632242148', NULL, NULL, '-0.02054795', 1469462463, '返还至帐户余额', 'redeemable', NULL),
(16, 9, '13538850622', NULL, NULL, '-0.00684932', 1469462465, '返还至帐户余额', 'redeemable', NULL),
(17, 17, '13631430470', NULL, NULL, '-0.68493151', 1469548861, '返还至帐户余额', 'redeemable', NULL),
(18, 4, '13632242148', NULL, NULL, '-0.02054795', 1469548863, '返还至帐户余额', 'redeemable', NULL),
(19, 9, '13538850622', NULL, NULL, '-0.00684932', 1469548865, '返还至帐户余额', 'redeemable', NULL),
(20, 17, '13631430470', NULL, NULL, '-0.68493151', 1469635261, '返还至帐户余额', 'redeemable', NULL),
(21, 4, '13632242148', NULL, NULL, '-0.02054795', 1469635263, '返还至帐户余额', 'redeemable', NULL),
(22, 9, '13538850622', NULL, NULL, '-0.00684932', 1469635265, '返还至帐户余额', 'redeemable', NULL),
(23, 17, '13631430470', NULL, NULL, '-0.68493151', 1469721661, '返还至帐户余额', 'redeemable', NULL),
(24, 4, '13632242148', NULL, NULL, '-0.02054795', 1469721663, '返还至帐户余额', 'redeemable', NULL),
(25, 9, '13538850622', NULL, NULL, '-0.00684932', 1469721665, '返还至帐户余额', 'redeemable', NULL),
(26, 17, '13631430470', NULL, NULL, '-0.68493151', 1469808061, '返还至帐户余额', 'redeemable', NULL),
(27, 4, '13632242148', NULL, NULL, '-0.02054795', 1469808063, '返还至帐户余额', 'redeemable', NULL),
(28, 9, '13538850622', NULL, NULL, '-0.00684932', 1469808065, '返还至帐户余额', 'redeemable', NULL),
(29, 17, '13631430470', NULL, NULL, '-0.68493151', 1469894461, '返还至帐户余额', 'redeemable', NULL),
(30, 4, '13632242148', NULL, NULL, '-0.02054795', 1469894463, '返还至帐户余额', 'redeemable', NULL),
(31, 9, '13538850622', NULL, NULL, '-0.00684932', 1469894465, '返还至帐户余额', 'redeemable', NULL),
(32, 9, '13538850622', NULL, NULL, '5000.00000000', 1469948382, '消费获得会员积分,单号:470523292382591000', 'transfer', NULL),
(33, 12, '18680564089', NULL, NULL, '5000.00000000', 1469949383, '消费获得会员积分,单号:740523293383940012', 'transfer', NULL),
(34, 12, '18680564089', NULL, NULL, '5000.00000000', 1469949553, '消费获得会员积分,单号:440523293553259012', 'transfer', NULL),
(35, 17, '13631430470', NULL, NULL, '100.00000000', 1469950381, '奖励提取至会员积分', 'distill', NULL),
(36, 17, '13631430470', NULL, NULL, '100.00000000', 1469950382, '奖励提取至会员积分', 'distill', NULL),
(37, 17, '13631430470', NULL, NULL, '100.00000000', 1469950385, '奖励提取至会员积分', 'distill', NULL),
(38, 17, '13631430470', NULL, NULL, '100.00000000', 1469950385, '奖励提取至会员积分', 'distill', NULL),
(39, 18, '18620778046', NULL, NULL, '400.00000000', 1469975271, '奖励提取至会员积分', 'distill', NULL),
(40, 9, '13538850622', NULL, NULL, '400.00000000', 1469975272, '奖励提取至会员积分', 'distill', NULL),
(41, 8, '13450226610', NULL, NULL, '443100.00000000', 1469975273, '奖励提取至会员积分', 'distill', NULL),
(42, 1, '13802987366', NULL, NULL, '200.00000000', 1469975274, '奖励提取至会员积分', 'distill', NULL),
(43, 1, '13802987366', NULL, NULL, '-0.02739726', 1469980861, '返还至帐户余额', 'redeemable', NULL),
(44, 8, '13450226610', NULL, NULL, '-60.69863014', 1469980863, '返还至帐户余额', 'redeemable', NULL),
(45, 18, '18620778046', NULL, NULL, '-0.05479452', 1469980865, '返还至帐户余额', 'redeemable', NULL),
(46, 17, '13631430470', NULL, NULL, '-0.05479452', 1469980867, '返还至帐户余额', 'redeemable', NULL),
(47, 12, '18680564089', NULL, NULL, '-1.36986301', 1469980869, '返还至帐户余额', 'redeemable', NULL),
(48, 9, '13538850622', NULL, NULL, '-0.73972603', 1469980871, '返还至帐户余额', 'redeemable', NULL),
(49, 4, '13632242148', NULL, NULL, '-0.02054795', 1469980875, '返还至帐户余额', 'redeemable', NULL),
(50, 1, '13802987366', NULL, NULL, '-0.02739726', 1470067262, '返还至帐户余额', 'redeemable', NULL),
(51, 8, '13450226610', NULL, NULL, '-60.69863014', 1470067264, '返还至帐户余额', 'redeemable', NULL),
(52, 18, '18620778046', NULL, NULL, '-0.05479452', 1470067266, '返还至帐户余额', 'redeemable', NULL),
(53, 17, '13631430470', NULL, NULL, '-0.05479452', 1470067268, '返还至帐户余额', 'redeemable', NULL),
(54, 12, '18680564089', NULL, NULL, '-1.36986301', 1470067270, '返还至帐户余额', 'redeemable', NULL),
(55, 9, '13538850622', NULL, NULL, '-0.73972603', 1470067272, '返还至帐户余额', 'redeemable', NULL),
(56, 4, '13632242148', NULL, NULL, '-0.02054795', 1470067274, '返还至帐户余额', 'redeemable', NULL),
(57, 1, '13802987366', NULL, NULL, '-0.02739726', 1470153661, '返还至帐户余额', 'redeemable', NULL),
(58, 8, '13450226610', NULL, NULL, '-60.69863014', 1470153663, '返还至帐户余额', 'redeemable', NULL),
(59, 18, '18620778046', NULL, NULL, '-0.05479452', 1470153666, '返还至帐户余额', 'redeemable', NULL),
(60, 17, '13631430470', NULL, NULL, '-0.05479452', 1470153668, '返还至帐户余额', 'redeemable', NULL),
(61, 12, '18680564089', NULL, NULL, '-1.36986301', 1470153670, '返还至帐户余额', 'redeemable', NULL),
(62, 9, '13538850622', NULL, NULL, '-0.73972603', 1470153672, '返还至帐户余额', 'redeemable', NULL),
(63, 4, '13632242148', NULL, NULL, '-0.02054795', 1470153674, '返还至帐户余额', 'redeemable', NULL),
(64, 1, '13802987366', NULL, NULL, '-0.02739726', 1470240061, '返还至帐户余额', 'redeemable', NULL),
(65, 8, '13450226610', NULL, NULL, '-60.69863014', 1470240063, '返还至帐户余额', 'redeemable', NULL),
(66, 18, '18620778046', NULL, NULL, '-0.05479452', 1470240065, '返还至帐户余额', 'redeemable', NULL),
(67, 17, '13631430470', NULL, NULL, '-0.05479452', 1470240067, '返还至帐户余额', 'redeemable', NULL),
(68, 12, '18680564089', NULL, NULL, '-1.36986301', 1470240069, '返还至帐户余额', 'redeemable', NULL),
(69, 9, '13538850622', NULL, NULL, '-0.73972603', 1470240071, '返还至帐户余额', 'redeemable', NULL),
(70, 4, '13632242148', NULL, NULL, '-0.02054795', 1470240073, '返还至帐户余额', 'redeemable', NULL),
(71, 1, '13802987366', NULL, NULL, '-0.02739726', 1470326461, '返还至帐户余额', 'redeemable', NULL),
(72, 8, '13450226610', NULL, NULL, '-60.69863014', 1470326463, '返还至帐户余额', 'redeemable', NULL),
(73, 18, '18620778046', NULL, NULL, '-0.05479452', 1470326465, '返还至帐户余额', 'redeemable', NULL),
(74, 17, '13631430470', NULL, NULL, '-0.05479452', 1470326467, '返还至帐户余额', 'redeemable', NULL),
(75, 12, '18680564089', NULL, NULL, '-1.36986301', 1470326470, '返还至帐户余额', 'redeemable', NULL),
(76, 9, '13538850622', NULL, NULL, '-0.73972603', 1470326472, '返还至帐户余额', 'redeemable', NULL),
(77, 4, '13632242148', NULL, NULL, '-0.02054795', 1470326474, '返还至帐户余额', 'redeemable', NULL),
(78, 1, '13802987366', NULL, NULL, '-0.02739726', 1470412861, '返还至帐户余额', 'redeemable', NULL),
(79, 8, '13450226610', NULL, NULL, '-60.69863014', 1470412863, '返还至帐户余额', 'redeemable', NULL),
(80, 18, '18620778046', NULL, NULL, '-0.05479452', 1470412865, '返还至帐户余额', 'redeemable', NULL),
(81, 17, '13631430470', NULL, NULL, '-0.05479452', 1470412867, '返还至帐户余额', 'redeemable', NULL),
(82, 12, '18680564089', NULL, NULL, '-1.36986301', 1470412869, '返还至帐户余额', 'redeemable', NULL),
(83, 9, '13538850622', NULL, NULL, '-0.73972603', 1470412871, '返还至帐户余额', 'redeemable', NULL),
(84, 4, '13632242148', NULL, NULL, '-0.02054795', 1470412873, '返还至帐户余额', 'redeemable', NULL),
(85, 1, '13802987366', NULL, NULL, '-0.02739726', 1470499261, '返还至帐户余额', 'redeemable', NULL),
(86, 8, '13450226610', NULL, NULL, '-60.69863014', 1470499263, '返还至帐户余额', 'redeemable', NULL),
(87, 18, '18620778046', NULL, NULL, '-0.05479452', 1470499265, '返还至帐户余额', 'redeemable', NULL),
(88, 17, '13631430470', NULL, NULL, '-0.05479452', 1470499267, '返还至帐户余额', 'redeemable', NULL),
(89, 12, '18680564089', NULL, NULL, '-1.36986301', 1470499270, '返还至帐户余额', 'redeemable', NULL),
(90, 9, '13538850622', NULL, NULL, '-0.73972603', 1470499272, '返还至帐户余额', 'redeemable', NULL),
(91, 4, '13632242148', NULL, NULL, '-0.02054795', 1470499274, '返还至帐户余额', 'redeemable', NULL),
(92, 1, '13802987366', NULL, NULL, '-0.02739726', 1470585661, '返还至帐户余额', 'redeemable', NULL),
(93, 8, '13450226610', NULL, NULL, '-60.69863014', 1470585663, '返还至帐户余额', 'redeemable', NULL),
(94, 18, '18620778046', NULL, NULL, '-0.05479452', 1470585665, '返还至帐户余额', 'redeemable', NULL),
(95, 17, '13631430470', NULL, NULL, '-0.05479452', 1470585667, '返还至帐户余额', 'redeemable', NULL),
(96, 12, '18680564089', NULL, NULL, '-1.36986301', 1470585669, '返还至帐户余额', 'redeemable', NULL),
(97, 9, '13538850622', NULL, NULL, '-0.73972603', 1470585671, '返还至帐户余额', 'redeemable', NULL),
(98, 4, '13632242148', NULL, NULL, '-0.02054795', 1470585673, '返还至帐户余额', 'redeemable', NULL),
(99, 1, '13802987366', NULL, NULL, '-0.02739726', 1470672061, '返还至帐户余额', 'redeemable', NULL),
(100, 8, '13450226610', NULL, NULL, '-60.69863014', 1470672064, '返还至帐户余额', 'redeemable', NULL),
(101, 18, '18620778046', NULL, NULL, '-0.05479452', 1470672066, '返还至帐户余额', 'redeemable', NULL),
(102, 17, '13631430470', NULL, NULL, '-0.05479452', 1470672068, '返还至帐户余额', 'redeemable', NULL),
(103, 12, '18680564089', NULL, NULL, '-1.36986301', 1470672070, '返还至帐户余额', 'redeemable', NULL),
(104, 9, '13538850622', NULL, NULL, '-0.73972603', 1470672072, '返还至帐户余额', 'redeemable', NULL),
(105, 4, '13632242148', NULL, NULL, '-0.02054795', 1470672074, '返还至帐户余额', 'redeemable', NULL),
(106, 1, '13802987366', NULL, NULL, '-0.02739726', 1470758461, '返还至帐户余额', 'redeemable', NULL),
(107, 8, '13450226610', NULL, NULL, '-60.69863014', 1470758463, '返还至帐户余额', 'redeemable', NULL),
(108, 18, '18620778046', NULL, NULL, '-0.05479452', 1470758465, '返还至帐户余额', 'redeemable', NULL),
(109, 17, '13631430470', NULL, NULL, '-0.05479452', 1470758467, '返还至帐户余额', 'redeemable', NULL),
(110, 12, '18680564089', NULL, NULL, '-1.36986301', 1470758469, '返还至帐户余额', 'redeemable', NULL),
(111, 9, '13538850622', NULL, NULL, '-0.73972603', 1470758471, '返还至帐户余额', 'redeemable', NULL),
(112, 4, '13632242148', NULL, NULL, '-0.02054795', 1470758473, '返还至帐户余额', 'redeemable', NULL),
(113, 1, '13802987366', NULL, NULL, '-0.02739726', 1470844861, '返还至帐户余额', 'redeemable', NULL),
(114, 8, '13450226610', NULL, NULL, '-60.69863014', 1470844863, '返还至帐户余额', 'redeemable', NULL),
(115, 18, '18620778046', NULL, NULL, '-0.05479452', 1470844865, '返还至帐户余额', 'redeemable', NULL),
(116, 17, '13631430470', NULL, NULL, '-0.05479452', 1470844867, '返还至帐户余额', 'redeemable', NULL),
(117, 12, '18680564089', NULL, NULL, '-1.36986301', 1470844869, '返还至帐户余额', 'redeemable', NULL),
(118, 9, '13538850622', NULL, NULL, '-0.73972603', 1470844871, '返还至帐户余额', 'redeemable', NULL),
(119, 4, '13632242148', NULL, NULL, '-0.02054795', 1470844873, '返还至帐户余额', 'redeemable', NULL),
(120, 1, '13802987366', NULL, NULL, '-0.02739726', 1470931262, '返还至帐户余额', 'redeemable', NULL),
(121, 8, '13450226610', NULL, NULL, '-60.69863014', 1470931264, '返还至帐户余额', 'redeemable', NULL),
(122, 18, '18620778046', NULL, NULL, '-0.05479452', 1470931266, '返还至帐户余额', 'redeemable', NULL),
(123, 17, '13631430470', NULL, NULL, '-0.05479452', 1470931268, '返还至帐户余额', 'redeemable', NULL),
(124, 12, '18680564089', NULL, NULL, '-1.36986301', 1470931270, '返还至帐户余额', 'redeemable', NULL),
(125, 9, '13538850622', NULL, NULL, '-0.73972603', 1470931272, '返还至帐户余额', 'redeemable', NULL),
(126, 4, '13632242148', NULL, NULL, '-0.02054795', 1470931274, '返还至帐户余额', 'redeemable', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_points_log_inviter`
--

CREATE TABLE IF NOT EXISTS `yunpay_points_log_inviter` (
  `pl_id` int(11) NOT NULL COMMENT '积分日志编号',
  `pl_memberid` int(11) NOT NULL COMMENT '会员编号',
  `pl_membername` varchar(100) NOT NULL COMMENT '会员名称',
  `pl_adminid` int(11) DEFAULT NULL COMMENT '管理员编号',
  `pl_adminname` varchar(100) DEFAULT NULL COMMENT '管理员名称',
  `pl_points` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '积分数负数表示扣除',
  `pl_addtime` int(11) NOT NULL COMMENT '添加时间',
  `pl_desc` varchar(100) NOT NULL COMMENT '操作描述',
  `pl_stage` varchar(50) NOT NULL COMMENT '操作阶段',
  `pl_sn` bigint(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='会员积分日志表';

--
-- 转存表中的数据 `yunpay_points_log_inviter`
--

INSERT INTO `yunpay_points_log_inviter` (`pl_id`, `pl_memberid`, `pl_membername`, `pl_adminid`, `pl_adminname`, `pl_points`, `pl_addtime`, `pl_desc`, `pl_stage`, `pl_sn`) VALUES
(1, 8, '13450226610', 1, 'czbroot', '200.00', 1469883391, '补发订单提成', 'system', NULL),
(2, 8, '13450226610', 1, 'czbroot', '1.00', 1469883467, 'fds', 'system', NULL),
(3, 8, '13450226610', 1, 'czbroot', '10.00', 1469884832, '432', 'system', NULL),
(4, 8, '13450226610', 1, 'czbroot', '32.00', 1469885255, '3232', 'system', NULL),
(5, 8, '13450226610', 1, 'czbroot', '3232.00', 1469885323, '3232', 'system', NULL),
(6, 8, '13450226610', 1, 'czbroot', '3232.00', 1469885440, '3232', 'system', NULL),
(7, 8, '13450226610', 1, 'czbroot', '432.00', 1469885495, '432', 'system', 0),
(8, 8, '13450226610', 1, 'czbroot', '432432.00', 1469885540, '432432', 'system', 0),
(9, 8, '13450226610', 1, 'czbroot', '3232.00', 1469885802, '3232', 'system', NULL),
(10, 8, '13450226610', 1, 'czbroot', '322.00', 1469885873, 'fds', 'system', 123456),
(11, 1, '13802987366', NULL, NULL, '200.00', 1469948382, '获得【13538850622】佣金,交易单号：470523292382591000', 'rebate', 470523292382591000),
(12, 17, '13631430470', NULL, NULL, '200.00', 1469949383, '获得【18680564089】佣金,交易单号：740523293383940012', 'rebate', 740523293383940012),
(13, 18, '18620778046', NULL, NULL, '200.00', 1469949383, '获得【18680564089】佣金,交易单号：740523293383940012', 'rebate', 740523293383940012),
(14, 9, '13538850622', NULL, NULL, '200.00', 1469949383, '获得【18680564089】佣金,交易单号：740523293383940012', 'rebate', 740523293383940012),
(15, 17, '13631430470', NULL, NULL, '200.00', 1469949553, '获得【18680564089】佣金,交易单号：440523293553259012', 'rebate', 440523293553259012),
(16, 18, '18620778046', NULL, NULL, '200.00', 1469949553, '获得【18680564089】佣金,交易单号：440523293553259012', 'rebate', 440523293553259012),
(17, 9, '13538850622', NULL, NULL, '200.00', 1469949553, '获得【18680564089】佣金,交易单号：440523293553259012', 'rebate', 440523293553259012),
(18, 17, '13631430470', NULL, NULL, '-100.00', 1469950381, '提取至会员积分', 'distill', 0),
(19, 17, '13631430470', NULL, NULL, '-100.00', 1469950382, '提取至会员积分', 'distill', 0),
(20, 17, '13631430470', NULL, NULL, '-100.00', 1469950385, '提取至会员积分', 'distill', 0),
(21, 17, '13631430470', NULL, NULL, '-100.00', 1469950385, '提取至会员积分', 'distill', 0),
(22, 18, '18620778046', NULL, NULL, '-400.00', 1469975271, '提取至会员积分', 'distill', 0),
(23, 9, '13538850622', NULL, NULL, '-400.00', 1469975272, '提取至会员积分', 'distill', 0),
(24, 8, '13450226610', NULL, NULL, '-443100.00', 1469975273, '提取至会员积分', 'distill', 0),
(25, 1, '13802987366', NULL, NULL, '-200.00', 1469975274, '提取至会员积分', 'distill', 0);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_points_log_sum`
--

CREATE TABLE IF NOT EXISTS `yunpay_points_log_sum` (
  `id` int(11) NOT NULL,
  `pd_memberid` int(11) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `pd_membername` varchar(100) DEFAULT '0' COMMENT '会员名',
  `pd_points` decimal(20,2) DEFAULT '0.00' COMMENT '返还总额',
  `pd_addtime` int(11) NOT NULL DEFAULT '0' COMMENT '总计日',
  `pd_days` int(11) DEFAULT '0' COMMENT '总返还天数',
  `pd_pay` int(11) DEFAULT '0' COMMENT '已返还天数',
  `pd_less` int(11) DEFAULT '0' COMMENT '剩余天数',
  `pd_price` decimal(20,8) DEFAULT '0.00000000' COMMENT '每天返还金额,首次计算',
  `pd_last_day` int(11) NOT NULL DEFAULT '0' COMMENT '最新返还日期'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yunpay_points_log_sum`
--

INSERT INTO `yunpay_points_log_sum` (`id`, `pd_memberid`, `pd_membername`, `pd_points`, `pd_addtime`, `pd_days`, `pd_pay`, `pd_less`, `pd_price`, `pd_last_day`) VALUES
(1, 9, '13538850622', '49.91', 1469116800, 7300, 9, 7291, '0.00684932', 1469894400),
(2, 4, '13632242148', '149.58', 1469116800, 7300, 21, 7279, '0.02054795', 1470931200),
(3, 17, '13631430470', '4994.56', 1469203200, 7300, 8, 7292, '0.68493151', 1469894400),
(4, 9, '13538850622', '5391.12', 1469894400, 7300, 12, 7288, '0.73972603', 1470931200),
(5, 12, '18680564089', '9983.56', 1469894400, 7300, 12, 7288, '1.36986301', 1470931200),
(6, 17, '13631430470', '399.40', 1469894400, 7300, 12, 7288, '0.05479452', 1470931200),
(7, 18, '18620778046', '399.40', 1469894400, 7300, 12, 7288, '0.05479452', 1470931200),
(8, 8, '13450226610', '442371.60', 1469894400, 7300, 12, 7288, '60.69863014', 1470931200),
(9, 1, '13802987366', '199.64', 1469894400, 7300, 12, 7288, '0.02739726', 1470931200);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_p_mansong`
--

CREATE TABLE IF NOT EXISTS `yunpay_p_mansong` (
  `mansong_id` int(10) unsigned NOT NULL COMMENT '满送活动编号',
  `mansong_name` varchar(50) NOT NULL COMMENT '活动名称',
  `quota_id` int(10) unsigned NOT NULL COMMENT '套餐编号',
  `start_time` int(10) unsigned NOT NULL COMMENT '活动开始时间',
  `end_time` int(10) unsigned NOT NULL COMMENT '活动结束时间',
  `member_id` int(10) unsigned NOT NULL COMMENT '用户编号',
  `store_id` int(10) unsigned NOT NULL COMMENT '店铺编号',
  `member_name` varchar(50) NOT NULL COMMENT '用户名',
  `store_name` varchar(50) NOT NULL COMMENT '店铺名称',
  `state` tinyint(1) unsigned NOT NULL COMMENT '活动状态(1-未发布/2-正常/3-取消/4-失效/5-结束)',
  `remark` varchar(200) NOT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='满就送活动表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_p_mansong_rule`
--

CREATE TABLE IF NOT EXISTS `yunpay_p_mansong_rule` (
  `rule_id` int(10) unsigned NOT NULL COMMENT '规则编号',
  `mansong_id` int(10) unsigned NOT NULL COMMENT '活动编号',
  `price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '级别价格',
  `discount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '减现金优惠金额',
  `mansong_goods_name` varchar(50) NOT NULL COMMENT '礼品名称',
  `goods_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='满就送活动规则表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_rcb_log`
--

CREATE TABLE IF NOT EXISTS `yunpay_rcb_log` (
  `id` int(11) NOT NULL COMMENT '自增编号',
  `member_id` int(11) NOT NULL COMMENT '会员编号',
  `member_name` varchar(50) NOT NULL COMMENT '会员名称',
  `type` varchar(15) NOT NULL DEFAULT '' COMMENT 'order_pay下单使用 order_freeze下单冻结 order_cancel取消订单解冻 order_comb_pay下单扣除被冻结 recharge平台充值卡充值 refund确认退款 vr_refund虚拟兑码退款',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `available_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '可用充值卡余额变更 0表示未变更',
  `freeze_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '冻结充值卡余额变更 0表示未变更',
  `description` varchar(150) DEFAULT NULL COMMENT '描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='充值卡余额变更日志表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_rechargecard`
--

CREATE TABLE IF NOT EXISTS `yunpay_rechargecard` (
  `id` int(11) NOT NULL COMMENT '自增ID',
  `sn` varchar(50) NOT NULL COMMENT '卡号',
  `denomination` decimal(10,2) NOT NULL COMMENT '面额',
  `batchflag` varchar(20) NOT NULL COMMENT '批次标识',
  `admin_name` varchar(50) DEFAULT NULL COMMENT '创建者名称',
  `tscreated` int(10) unsigned NOT NULL COMMENT '创建时间',
  `tsused` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用时间',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态 0可用 1已用 2已删',
  `member_id` int(11) NOT NULL DEFAULT '0' COMMENT '使用者会员ID',
  `member_name` varchar(50) DEFAULT NULL COMMENT '使用者会员名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='平台充值卡';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_rec_position`
--

CREATE TABLE IF NOT EXISTS `yunpay_rec_position` (
  `rec_id` mediumint(8) unsigned NOT NULL,
  `pic_type` enum('1','2','0') NOT NULL DEFAULT '1' COMMENT '0文字1本地图片2远程',
  `title` varchar(200) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '序列化推荐位内容'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='推荐位';

--
-- 转存表中的数据 `yunpay_rec_position`
--

INSERT INTO `yunpay_rec_position` (`rec_id`, `pic_type`, `title`, `content`) VALUES
(1, '1', '底部推荐1', 'a:4:{s:4:"body";a:1:{i:0;a:2:{s:5:"title";s:42:"shop/rec_position/aafda0df33d2a95e6010.png";s:3:"url";s:0:"";}}s:5:"width";s:0:"";s:6:"height";s:0:"";s:6:"target";i:1;}'),
(2, '1', '底部推荐2', 'a:4:{s:4:"body";a:1:{i:0;a:2:{s:5:"title";s:42:"shop/rec_position/f0a5ee0bfc20dd005850.png";s:3:"url";s:0:"";}}s:5:"width";s:0:"";s:6:"height";s:0:"";s:6:"target";i:1;}'),
(3, '1', '底部推荐3', 'a:4:{s:4:"body";a:1:{i:0;a:2:{s:5:"title";s:42:"shop/rec_position/72edb29cc2ad2af46000.png";s:3:"url";s:0:"";}}s:5:"width";s:0:"";s:6:"height";s:0:"";s:6:"target";i:1;}'),
(4, '1', '底部推荐4', 'a:4:{s:4:"body";a:1:{i:0;a:2:{s:5:"title";s:42:"shop/rec_position/c827005fae642e146280.png";s:3:"url";s:0:"";}}s:5:"width";s:0:"";s:6:"height";s:0:"";s:6:"target";i:1;}'),
(5, '1', '底部推荐5', 'a:4:{s:4:"body";a:1:{i:0;a:2:{s:5:"title";s:42:"shop/rec_position/3497c1b195bde1928550.png";s:3:"url";s:0:"";}}s:5:"width";s:0:"";s:6:"height";s:0:"";s:6:"target";i:1;}'),
(6, '1', '底部推荐6', 'a:4:{s:4:"body";a:1:{i:0;a:2:{s:5:"title";s:42:"shop/rec_position/ea3ff5e9bf84afc34800.png";s:3:"url";s:0:"";}}s:5:"width";s:0:"";s:6:"height";s:0:"";s:6:"target";i:1;}'),
(7, '0', '腾讯微博', 'a:2:{s:4:"body";a:1:{i:0;a:2:{s:5:"title";s:12:"腾讯微博";s:3:"url";s:0:"";}}s:6:"target";i:2;}'),
(8, '0', '新浪微博', 'a:2:{s:4:"body";a:1:{i:0;a:2:{s:5:"title";s:12:"新浪微博";s:3:"url";s:0:"";}}s:6:"target";i:2;}');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_refund_reason`
--

CREATE TABLE IF NOT EXISTS `yunpay_refund_reason` (
  `reason_id` int(10) unsigned NOT NULL COMMENT '原因ID',
  `reason_info` varchar(50) NOT NULL COMMENT '原因内容',
  `sort` tinyint(1) unsigned DEFAULT '255' COMMENT '排序',
  `update_time` int(10) unsigned NOT NULL COMMENT '更新时间'
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='退款退货原因表';

--
-- 转存表中的数据 `yunpay_refund_reason`
--

INSERT INTO `yunpay_refund_reason` (`reason_id`, `reason_info`, `sort`, `update_time`) VALUES
(95, '效果不好不喜欢', 123, 1393480261),
(96, '商品破损、有污渍', 123, 1393480261),
(97, '保质期不符', 123, 1393480261),
(98, '认为是假货', 123, 1393480261),
(99, '不能按时发货', 123, 1393480261);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_refund_return`
--

CREATE TABLE IF NOT EXISTS `yunpay_refund_return` (
  `refund_id` int(10) unsigned NOT NULL COMMENT '记录ID',
  `order_id` int(10) unsigned NOT NULL COMMENT '订单ID',
  `order_sn` varchar(50) NOT NULL COMMENT '订单编号',
  `refund_sn` varchar(50) NOT NULL COMMENT '申请编号',
  `store_id` int(10) unsigned NOT NULL COMMENT '店铺ID',
  `store_name` varchar(20) NOT NULL COMMENT '店铺名称',
  `buyer_id` int(10) unsigned NOT NULL COMMENT '买家ID',
  `buyer_name` varchar(50) NOT NULL COMMENT '买家会员名',
  `goods_id` int(10) unsigned NOT NULL COMMENT '商品ID,全部退款是0',
  `order_goods_id` int(10) unsigned DEFAULT '0' COMMENT '订单商品ID,全部退款是0',
  `goods_name` varchar(50) NOT NULL COMMENT '商品名称',
  `goods_num` int(10) unsigned DEFAULT '1' COMMENT '商品数量',
  `refund_amount` decimal(10,2) DEFAULT '0.00' COMMENT '退款金额',
  `goods_image` varchar(100) DEFAULT NULL COMMENT '商品图片',
  `order_goods_type` tinyint(1) unsigned DEFAULT '1' COMMENT '订单商品类型:1默认2团购商品3限时折扣商品4组合套装',
  `refund_type` tinyint(1) unsigned DEFAULT '1' COMMENT '申请类型:1为退款,2为退货,默认为1',
  `seller_state` tinyint(1) unsigned DEFAULT '1' COMMENT '卖家处理状态:1为待审核,2为同意,3为不同意,默认为1',
  `refund_state` tinyint(1) unsigned DEFAULT '1' COMMENT '申请状态:1为处理中,2为待管理员处理,3为已完成,默认为1',
  `return_type` tinyint(1) unsigned DEFAULT '1' COMMENT '退货类型:1为不用退货,2为需要退货,默认为1',
  `order_lock` tinyint(1) unsigned DEFAULT '1' COMMENT '订单锁定类型:1为不用锁定,2为需要锁定,默认为1',
  `goods_state` tinyint(1) unsigned DEFAULT '1' COMMENT '物流状态:1为待发货,2为待收货,3为未收到,4为已收货,默认为1',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `seller_time` int(10) unsigned DEFAULT '0' COMMENT '卖家处理时间',
  `admin_time` int(10) unsigned DEFAULT '0' COMMENT '管理员处理时间,默认为0',
  `reason_id` int(10) unsigned DEFAULT '0' COMMENT '原因ID:0为其它',
  `reason_info` varchar(300) DEFAULT '' COMMENT '原因内容',
  `pic_info` varchar(300) DEFAULT '' COMMENT '图片',
  `buyer_message` varchar(300) DEFAULT NULL COMMENT '申请原因',
  `seller_message` varchar(300) DEFAULT NULL COMMENT '卖家备注',
  `admin_message` varchar(300) DEFAULT NULL COMMENT '管理员备注',
  `express_id` tinyint(1) unsigned DEFAULT '0' COMMENT '物流公司编号',
  `invoice_no` varchar(50) DEFAULT NULL COMMENT '物流单号',
  `ship_time` int(10) unsigned DEFAULT '0' COMMENT '发货时间,默认为0',
  `delay_time` int(10) unsigned DEFAULT '0' COMMENT '收货延迟时间,默认为0',
  `receive_time` int(10) unsigned DEFAULT '0' COMMENT '收货时间,默认为0',
  `receive_message` varchar(300) DEFAULT NULL COMMENT '收货备注',
  `commis_rate` smallint(6) DEFAULT '0' COMMENT '佣金比例'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='退款退货表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_seller`
--

CREATE TABLE IF NOT EXISTS `yunpay_seller` (
  `seller_id` int(10) unsigned NOT NULL COMMENT '卖家编号',
  `seller_name` varchar(50) NOT NULL COMMENT '卖家用户名',
  `member_id` int(10) unsigned NOT NULL COMMENT '用户编号',
  `seller_group_id` int(10) unsigned NOT NULL COMMENT '卖家组编号',
  `store_id` int(10) unsigned NOT NULL COMMENT '店铺编号',
  `is_admin` tinyint(3) unsigned NOT NULL COMMENT '是否管理员(0-不是 1-是)',
  `seller_quicklink` varchar(255) DEFAULT NULL COMMENT '卖家快捷操作',
  `last_login_time` int(10) unsigned DEFAULT NULL COMMENT '最后登录时间'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='卖家用户表';

--
-- 转存表中的数据 `yunpay_seller`
--

INSERT INTO `yunpay_seller` (`seller_id`, `seller_name`, `member_id`, `seller_group_id`, `store_id`, `is_admin`, `seller_quicklink`, `last_login_time`) VALUES
(1, '13800138000', 1, 0, 1, 1, NULL, 1466927166),
(9, '13538850622', 225, 0, 15, 1, NULL, NULL),
(10, '13632242148', 4, 0, 16, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_seller_group`
--

CREATE TABLE IF NOT EXISTS `yunpay_seller_group` (
  `group_id` int(10) unsigned NOT NULL COMMENT '卖家组编号',
  `group_name` varchar(50) NOT NULL COMMENT '组名',
  `limits` text NOT NULL COMMENT '权限',
  `smt_limits` text NOT NULL COMMENT '消息权限范围',
  `store_id` int(10) unsigned NOT NULL COMMENT '店铺编号'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='卖家用户组表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_seller_log`
--

CREATE TABLE IF NOT EXISTS `yunpay_seller_log` (
  `log_id` int(10) unsigned NOT NULL COMMENT '日志编号',
  `log_content` varchar(50) NOT NULL COMMENT '日志内容',
  `log_time` int(10) unsigned NOT NULL COMMENT '日志时间',
  `log_seller_id` int(10) unsigned NOT NULL COMMENT '卖家编号',
  `log_seller_name` varchar(50) NOT NULL COMMENT '卖家帐号',
  `log_store_id` int(10) unsigned NOT NULL COMMENT '店铺编号',
  `log_seller_ip` varchar(50) NOT NULL COMMENT '卖家ip',
  `log_url` varchar(50) NOT NULL COMMENT '日志url',
  `log_state` tinyint(3) unsigned NOT NULL COMMENT '日志状态(0-失败 1-成功)'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='卖家日志表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_setting`
--

CREATE TABLE IF NOT EXISTS `yunpay_setting` (
  `name` varchar(50) NOT NULL COMMENT '名称',
  `value` text COMMENT '值'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统设置表';

--
-- 转存表中的数据 `yunpay_setting`
--

INSERT INTO `yunpay_setting` (`name`, `value`) VALUES
('captcha_status_goodsqa', '1'),
('captcha_status_login', '1'),
('cash_poundage', '3'),
('complain_time_limit', '2592000'),
('consult_prompt', '因厂家更改商品包装、场地、附配件等不做提前通知，且每位咨询者购买、提问时间等不同。为此，客服给到的回复仅对提问者3天内有效，其他网友仅供参考！给您带来的不变还请谅解，谢谢！'),
('default_goods_image', 'default_goods_image.gif'),
('default_store_avatar', 'default_store_avatar.gif'),
('default_store_logo', 'default_store_logo.gif'),
('default_user_portrait', 'default_user_portrait.gif'),
('delivery_isuse', '1'),
('email_addr', ''),
('email_host', ''),
('email_id', ''),
('email_pass', ''),
('email_port', '25'),
('email_type', '1'),
('enabled_subdomain', '0'),
('goods_verify', '1'),
('guest_comment', '1'),
('hot_search', '周大福,内衣,金史密斯,手机'),
('icp_number', ''),
('image_allow_ext', 'gif,jpg,jpeg,bmp,png,swf'),
('image_dir_type', '1'),
('image_max_filesize', '1024'),
('live_link1', ''),
('live_link2', ''),
('live_link3', ''),
('live_link4', ''),
('live_pic1', '04525999367706292.jpg'),
('live_pic2', '04525999367951893.jpg'),
('live_pic3', ''),
('live_pic4', ''),
('login_pic', 'a:4:{i:0;s:5:"1.jpg";i:1;s:5:"2.jpg";i:2;s:5:"3.jpg";i:3;s:5:"4.jpg";}'),
('malbum_max_sum', '200'),
('md5_key', 'd0d0a154dd250e8142fab9040af75cfa'),
('member_grade', 'a:2:{i:0;a:3:{s:8:"grade_id";i:0;s:10:"grade_name";s:12:"普通用户";s:5:"price";d:0;}i:1;a:3:{s:8:"grade_id";i:1;s:10:"grade_name";s:9:"VIP用户";s:5:"price";d:1000;}}'),
('mobile_appid', '8a216da855d8c5050155d9686608016a'),
('mobile_host', '容联云'),
('mobile_host_type', '1'),
('mobile_memo', ''),
('mobile_sid', '8a48b5515350d1e2015378ae037940a2'),
('mobile_signature', ''),
('mobile_token', '36379289ab1e49198fdfd553d1449c3d'),
('pointprod_isuse', ''),
('pointshop_isuse', '1'),
('points_comments', '0'),
('points_invite', '0'),
('points_isuse', '1'),
('points_login', '0'),
('points_ordermax', '0'),
('points_orderrate', '0'),
('points_rebate', '10'),
('points_reg', '0'),
('points_remission', '5'),
('points_sale', '15'),
('promotion_allow', '1'),
('promotion_booth_goods_sum', '10'),
('promotion_booth_price', '20'),
('promotion_bundling_goods_sum', '5'),
('promotion_bundling_price', '20'),
('promotion_bundling_sum', '50'),
('promotion_mansong_price', '20'),
('promotion_voucher_buyertimes_limit', '5'),
('promotion_voucher_default_styleimg', 'default_voucher.jpg'),
('promotion_voucher_price', '20'),
('promotion_voucher_storetimes_limit', '20'),
('promotion_xianshi_price', '11'),
('qq_appcode', ''),
('qq_appid', ''),
('qq_appkey', ''),
('qq_isuse', '0'),
('seller_center_logo', 'seller_center_logo.png'),
('share_isuse', '1'),
('share_qqweibo_appid', ''),
('share_qqweibo_appkey', ''),
('share_qqweibo_isuse', '0'),
('share_sinaweibo_appcode', ''),
('share_sinaweibo_appid', ''),
('share_sinaweibo_appkey', ''),
('share_sinaweibo_isuse', '0'),
('sina_appcode', ''),
('sina_isuse', '0'),
('sina_wb_akey', ''),
('sina_wb_skey', ''),
('site_bank_account', ''),
('site_email', 'abc@yunpay.com'),
('site_logo', '05104220165606564.png'),
('site_logowx', '05104220165622612.png'),
('site_name', '车族宝'),
('site_phone', '23456789,88997788'),
('site_status', '1'),
('site_tel400', '4008008000'),
('sms_plugin', 'ccp'),
('statistics_code', ''),
('stat_orderpricerange', ''),
('stat_pricerange', ''),
('store_joinin_pic', 'a:2:{s:8:"show_txt";s:246:"平台提供各类专业管家服务，协助您开通店铺、运营店铺、组织营销活动及分析运营数据，悉心为您解答各类疑问，引导您按相关规则展开运营；我们将竭尽全力，为您的店铺保驾护航。";s:3:"pic";a:3:{i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";}}'),
('subdomain_edit', '0'),
('subdomain_length', '3-12'),
('subdomain_reserved', 'www'),
('subdomain_times', '3'),
('taobao_api_isuse', '0'),
('taobao_app_key', ''),
('taobao_secret_key', ''),
('time_zone', 'Asia/Shanghai'),
('transfer_limit', '10000'),
('voucher_allow', '1');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_sms_record`
--

CREATE TABLE IF NOT EXISTS `yunpay_sms_record` (
  `id` int(11) NOT NULL,
  `sendnumber` varchar(11) NOT NULL COMMENT '接收人手机号码',
  `mobilemore` varchar(500) DEFAULT NULL COMMENT '短信内容',
  `mobiletime` datetime DEFAULT NULL COMMENT '短信的发送时间',
  `from_port` int(11) DEFAULT NULL COMMENT '产生短信的来源客户端(手机客户端(andriod 1  ios 2)、商户客户端4、后台8、WEB网站 0)',
  `status` varchar(20) DEFAULT NULL COMMENT 'sp返回标志(成功或失败或欠费等其他原因)',
  `receive_man` int(11) DEFAULT '2' COMMENT '短信接收人(1：代理商、2：会员、3：商户)'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短信发送记录列';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_spec`
--

CREATE TABLE IF NOT EXISTS `yunpay_spec` (
  `sp_id` int(10) unsigned NOT NULL COMMENT '规格id',
  `sp_name` varchar(100) NOT NULL COMMENT '规格名称',
  `sp_sort` tinyint(1) unsigned NOT NULL COMMENT '排序',
  `class_id` int(10) unsigned DEFAULT '0' COMMENT '所属分类id',
  `class_name` varchar(100) DEFAULT NULL COMMENT '所属分类名称'
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品规格表';

--
-- 转存表中的数据 `yunpay_spec`
--

INSERT INTO `yunpay_spec` (`sp_id`, `sp_name`, `sp_sort`, `class_id`, `class_name`) VALUES
(1, '颜色', 0, 0, ''),
(15, '尺码', 0, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_spec_value`
--

CREATE TABLE IF NOT EXISTS `yunpay_spec_value` (
  `sp_value_id` int(10) unsigned NOT NULL COMMENT '规格值id',
  `sp_value_name` varchar(100) NOT NULL COMMENT '规格值名称',
  `sp_id` int(10) unsigned NOT NULL COMMENT '所属规格id',
  `gc_id` int(10) unsigned NOT NULL COMMENT '分类id',
  `store_id` int(10) unsigned NOT NULL COMMENT '店铺id',
  `sp_value_color` varchar(10) DEFAULT NULL COMMENT '规格颜色',
  `sp_value_sort` tinyint(1) unsigned NOT NULL COMMENT '排序'
) ENGINE=MyISAM AUTO_INCREMENT=433 DEFAULT CHARSET=utf8 COMMENT='商品规格值表';

--
-- 转存表中的数据 `yunpay_spec_value`
--

INSERT INTO `yunpay_spec_value` (`sp_value_id`, `sp_value_name`, `sp_id`, `gc_id`, `store_id`, `sp_value_color`, `sp_value_sort`) VALUES
(221, '落月黄', 1, 15, 1, '#ffff00', 1),
(222, '蓝色', 1, 15, 1, '#4f81bd', 2),
(223, '白色', 1, 15, 1, '#ffffff', 3),
(224, '绿色', 1, 15, 1, '#00b050', 4),
(225, '梅红', 1, 15, 1, '#b2a2c7', 5),
(226, '黑色', 1, 15, 1, '#000000', 6),
(227, '橙色', 1, 15, 1, '#f79646', 7),
(228, '灰色', 1, 14, 1, '#d8d8d8', 8),
(239, '绿色', 1, 14, 1, '#92d050', 1),
(240, '梅红', 1, 14, 1, '#c0504d', 2),
(241, '蓝色', 1, 14, 1, '#4f81bd', 3),
(242, '黑色', 1, 14, 1, '#000000', 4),
(243, '橙色', 1, 14, 1, '#f79646', 5),
(244, '红色', 1, 16, 1, '#ff0000', 1),
(245, '黑色', 1, 13, 1, '#000000', 1),
(246, '白色', 1, 12, 1, '#ffffff', 1),
(247, '条纹', 1, 12, 1, '#4f81bd', 2),
(248, '黑色', 1, 12, 1, '#000000', 3),
(249, '白色', 1, 14, 1, '#ffffff', 6),
(250, '紫色', 1, 14, 1, '#8064a2', 7),
(251, '粉色', 1, 14, 1, '#ff99ff', 9),
(252, '薄荷绿', 1, 58, 1, '#ebf1dd', 1),
(253, '肤色', 1, 58, 1, '#fdeada', 2),
(391, '法国 黑色', 1, 620, 1, '#000000', 1),
(392, '法国 红色', 1, 620, 1, '#c00000', 2),
(393, '法国 棕色', 1, 620, 1, '#938953', 3),
(394, '比利时 黑色', 1, 620, 1, '#000000', 4),
(395, '比利时 棕色', 1, 620, 1, '#7f7f7f', 5),
(396, '1', 1, 617, 1, '#ffffff', 1),
(397, '2', 1, 617, 1, '#ffffff', 2),
(398, '3', 1, 617, 1, '#ffffff', 3),
(399, '4', 1, 617, 1, '#ffffff', 4),
(400, '5', 1, 617, 1, '#ffffff', 5),
(402, '6', 1, 617, 1, '#ffffff', 6),
(408, '1', 15, 36, 1, NULL, 1),
(409, '2', 15, 36, 1, NULL, 2),
(410, '3', 15, 36, 1, NULL, 3),
(411, '4', 15, 36, 1, NULL, 4),
(412, '5', 15, 36, 1, NULL, 5),
(413, '1', 1, 36, 1, '#000000', 1),
(414, '2', 1, 36, 1, '#d8d8d8', 2),
(415, '3', 1, 36, 1, '#595959', 3),
(416, '4', 1, 36, 1, '#c6d9f0', 4),
(417, '5', 1, 36, 1, '#f2dcdb', 5),
(418, '6', 1, 36, 1, '#938953', 6),
(419, '7', 1, 36, 1, '#ddd9c3', 7),
(421, '红色', 1, 1055, 1, NULL, 0),
(422, '黑色', 1, 1055, 1, NULL, 0),
(423, '红白', 1, 1055, 1, NULL, 0),
(428, '白色', 1, 1055, 1, NULL, 0),
(429, '黄色', 1, 1055, 1, NULL, 0),
(430, '桔色', 1, 1055, 1, NULL, 0),
(431, '蓝色', 1, 1055, 1, NULL, 0),
(432, '银色', 1, 1055, 1, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_stat_member`
--

CREATE TABLE IF NOT EXISTS `yunpay_stat_member` (
  `statm_id` int(11) NOT NULL COMMENT '自增ID',
  `statm_memberid` int(11) NOT NULL COMMENT '会员ID',
  `statm_membername` varchar(100) NOT NULL COMMENT '会员名称',
  `statm_time` int(11) NOT NULL COMMENT '统计时间，当前按照最小时间单位为天',
  `statm_ordernum` int(11) NOT NULL DEFAULT '0' COMMENT '下单量',
  `statm_orderamount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '下单金额',
  `statm_goodsnum` int(11) NOT NULL DEFAULT '0' COMMENT '下单商品件数',
  `statm_predincrease` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '预存款增加额',
  `statm_predreduce` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '预存款减少额',
  `statm_pointsincrease` int(11) NOT NULL DEFAULT '0' COMMENT '积分增加额',
  `statm_pointsreduce` int(11) NOT NULL DEFAULT '0' COMMENT '积分减少额',
  `statm_updatetime` int(11) NOT NULL COMMENT '记录更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员相关数据统计';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_stat_order`
--

CREATE TABLE IF NOT EXISTS `yunpay_stat_order` (
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `order_sn` bigint(20) unsigned NOT NULL COMMENT '订单编号',
  `order_add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单生成时间',
  `payment_code` char(10) DEFAULT '' COMMENT '支付方式',
  `order_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '订单总价格',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '运费',
  `evaluation_state` enum('0','1') DEFAULT '0' COMMENT '评价状态 0未评价，1已评价',
  `order_state` enum('0','10','20','30','40') NOT NULL DEFAULT '10' COMMENT '订单状态：0(已取消)10(默认):未付款;20:已付款;30:已发货;40:已收货;',
  `refund_state` tinyint(1) unsigned DEFAULT '0' COMMENT '退款状态:0是无退款,1是部分退款,2是全部退款',
  `refund_amount` decimal(10,2) DEFAULT '0.00' COMMENT '退款金额',
  `order_from` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1WEB2mobile',
  `order_isvalid` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为计入统计的有效订单，0为无效 1为有效',
  `reciver_province_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '收货人省级ID',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `store_name` varchar(50) NOT NULL COMMENT '卖家店铺名称',
  `grade_id` int(11) NOT NULL COMMENT '店铺等级',
  `sc_id` int(11) NOT NULL COMMENT '店铺分类',
  `buyer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '买家ID',
  `buyer_name` varchar(50) NOT NULL COMMENT '买家姓名'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='统计功能订单缓存表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_stat_ordergoods`
--

CREATE TABLE IF NOT EXISTS `yunpay_stat_ordergoods` (
  `rec_id` int(11) NOT NULL COMMENT '订单商品表索引id',
  `stat_updatetime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '缓存生成时间',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `order_sn` bigint(20) unsigned NOT NULL COMMENT '订单编号',
  `order_add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单生成时间',
  `payment_code` char(10) DEFAULT '' COMMENT '支付方式',
  `order_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '订单总价格',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '运费',
  `evaluation_state` enum('0','1') DEFAULT '0' COMMENT '评价状态 0未评价，1已评价',
  `order_state` enum('0','10','20','30','40') NOT NULL DEFAULT '10' COMMENT '订单状态：0(已取消)10(默认):未付款;20:已付款;30:已发货;40:已收货;',
  `refund_state` tinyint(1) unsigned DEFAULT '0' COMMENT '退款状态:0是无退款,1是部分退款,2是全部退款',
  `refund_amount` decimal(10,2) DEFAULT '0.00' COMMENT '退款金额',
  `order_from` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1WEB2mobile',
  `order_isvalid` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为计入统计的有效订单，0为无效 1为有效',
  `reciver_province_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '收货人省级ID',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `store_name` varchar(50) NOT NULL COMMENT '卖家店铺名称',
  `grade_id` int(11) NOT NULL COMMENT '店铺等级',
  `sc_id` int(11) NOT NULL COMMENT '店铺分类',
  `buyer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '买家ID',
  `buyer_name` varchar(50) NOT NULL COMMENT '买家姓名',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `goods_name` varchar(50) NOT NULL COMMENT '商品名称(+规格)',
  `goods_commonid` int(10) unsigned NOT NULL COMMENT '商品公共表id',
  `goods_commonname` varchar(50) NOT NULL COMMENT '商品公共表中商品名称',
  `gc_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '商品最底级分类ID',
  `gc_parentid_1` int(11) NOT NULL DEFAULT '0' COMMENT '一级父类ID',
  `gc_parentid_2` int(11) NOT NULL DEFAULT '0' COMMENT '二级父类ID',
  `gc_parentid_3` int(11) NOT NULL DEFAULT '0' COMMENT '三级父类ID',
  `brand_id` int(10) unsigned NOT NULL COMMENT '品牌id',
  `brand_name` varchar(100) NOT NULL COMMENT '品牌名称',
  `goods_serial` varchar(50) NOT NULL COMMENT '商家编号',
  `goods_price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `goods_num` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '商品数量',
  `goods_image` varchar(100) DEFAULT NULL COMMENT '商品图片',
  `goods_pay_price` decimal(10,2) unsigned NOT NULL COMMENT '商品实际成交价',
  `goods_type` enum('1','2','3','4','5') NOT NULL DEFAULT '1' COMMENT '1默认2团购商品3限时折扣商品4优惠套装5赠品',
  `promotions_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '促销活动ID（团购ID/限时折扣ID/优惠套装ID）与goods_type搭配使用',
  `commis_rate` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '佣金比例'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='统计功能订单商品缓存表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_store`
--

CREATE TABLE IF NOT EXISTS `yunpay_store` (
  `store_id` int(11) NOT NULL COMMENT '店铺索引id',
  `store_name` varchar(50) NOT NULL COMMENT '店铺名称',
  `grade_id` int(11) NOT NULL COMMENT '店铺等级',
  `member_id` int(11) NOT NULL COMMENT '会员id',
  `member_name` varchar(50) NOT NULL COMMENT '会员名称',
  `seller_name` varchar(50) DEFAULT NULL COMMENT '店主卖家用户名',
  `sc_id` int(11) NOT NULL COMMENT '店铺分类',
  `store_company_name` varchar(50) DEFAULT NULL COMMENT '店铺公司名称',
  `province_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '店铺所在省份ID',
  `city_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `area_info` varchar(100) NOT NULL COMMENT '地区内容，冗余数据',
  `store_address` varchar(100) NOT NULL COMMENT '详细地区',
  `store_zip` varchar(10) NOT NULL COMMENT '邮政编码',
  `store_state` tinyint(1) NOT NULL DEFAULT '2' COMMENT '店铺状态，0关闭，1开启，2审核中',
  `store_close_info` varchar(255) DEFAULT NULL COMMENT '店铺关闭原因',
  `store_sort` int(11) NOT NULL DEFAULT '0' COMMENT '店铺排序',
  `store_time` varchar(10) NOT NULL COMMENT '店铺时间',
  `store_end_time` varchar(10) DEFAULT NULL COMMENT '店铺关闭时间',
  `store_label` varchar(255) DEFAULT NULL COMMENT '店铺logo',
  `store_banner` varchar(255) DEFAULT NULL COMMENT '店铺横幅',
  `store_avatar` varchar(150) DEFAULT NULL COMMENT '店铺头像',
  `store_keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺seo关键字',
  `store_description` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺seo描述',
  `store_qq` varchar(50) DEFAULT NULL COMMENT 'QQ',
  `store_ww` varchar(50) DEFAULT NULL COMMENT '阿里旺旺',
  `store_phone` varchar(20) DEFAULT NULL COMMENT '商家电话',
  `store_zy` text COMMENT '主营商品',
  `store_domain` varchar(50) DEFAULT NULL COMMENT '店铺二级域名',
  `store_domain_times` tinyint(1) unsigned DEFAULT '0' COMMENT '二级域名修改次数',
  `store_recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐，0为否，1为是，默认为0',
  `store_theme` varchar(50) NOT NULL DEFAULT 'default' COMMENT '店铺当前主题',
  `store_credit` int(10) NOT NULL DEFAULT '0' COMMENT '店铺信用',
  `store_desccredit` float NOT NULL DEFAULT '0' COMMENT '描述相符度分数',
  `store_servicecredit` float NOT NULL DEFAULT '0' COMMENT '服务态度分数',
  `store_deliverycredit` float NOT NULL DEFAULT '0' COMMENT '发货速度分数',
  `store_collect` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '店铺收藏数量',
  `store_slide` text COMMENT '店铺幻灯片',
  `store_slide_url` text COMMENT '店铺幻灯片链接',
  `store_stamp` varchar(200) DEFAULT NULL COMMENT '店铺印章',
  `store_printdesc` varchar(500) DEFAULT NULL COMMENT '打印订单页面下方说明文字',
  `store_sales` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '店铺销量',
  `store_presales` text COMMENT '售前客服',
  `store_aftersales` text COMMENT '售后客服',
  `store_workingtime` varchar(100) DEFAULT NULL COMMENT '工作时间',
  `store_free_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '超出该金额免运费，大于0才表示该值有效',
  `store_decoration_switch` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '店铺装修开关(0-关闭 装修编号-开启)',
  `store_decoration_only` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '开启店铺装修时，仅显示店铺装修(1-是 0-否',
  `store_decoration_image_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '店铺装修相册图片数量',
  `live_store_name` varchar(255) DEFAULT NULL COMMENT '商铺名称',
  `live_store_address` varchar(255) DEFAULT NULL COMMENT '商家地址',
  `live_store_tel` varchar(255) DEFAULT NULL COMMENT '商铺电话',
  `live_store_bus` varchar(255) DEFAULT NULL COMMENT '公交线路',
  `is_own_shop` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否自营店铺 1是 0否',
  `bind_all_gc` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '自营店是否绑定全部分类 0否1是',
  `store_vrcode_prefix` char(3) DEFAULT NULL COMMENT '商家兑换码前缀',
  `store_baozh` tinyint(1) DEFAULT '0' COMMENT '保证服务开关',
  `store_baozhopen` tinyint(1) DEFAULT '0' COMMENT '保证金显示开关',
  `store_baozhrmb` varchar(10) DEFAULT '零' COMMENT '保证金金额',
  `store_qtian` tinyint(1) DEFAULT '0' COMMENT '7天退换',
  `store_zhping` tinyint(1) DEFAULT '0' COMMENT '正品保障',
  `store_erxiaoshi` tinyint(1) DEFAULT '0' COMMENT '两小时发货',
  `store_tuihuo` tinyint(1) DEFAULT '0' COMMENT '退货承诺',
  `store_shiyong` tinyint(1) DEFAULT '0' COMMENT '试用中心',
  `store_shiti` tinyint(1) DEFAULT '0' COMMENT '实体验证',
  `store_xiaoxie` tinyint(1) DEFAULT '0' COMMENT '消协保证',
  `store_huodaofk` tinyint(1) DEFAULT '0' COMMENT '货到付款',
  `legal_name` varchar(45) DEFAULT NULL,
  `idcard_no` varchar(45) DEFAULT NULL,
  `idcard_back` varchar(45) DEFAULT NULL,
  `idcard_front` varchar(45) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='店铺数据表';

--
-- 转存表中的数据 `yunpay_store`
--

INSERT INTO `yunpay_store` (`store_id`, `store_name`, `grade_id`, `member_id`, `member_name`, `seller_name`, `sc_id`, `store_company_name`, `province_id`, `city_id`, `region_id`, `area_info`, `store_address`, `store_zip`, `store_state`, `store_close_info`, `store_sort`, `store_time`, `store_end_time`, `store_label`, `store_banner`, `store_avatar`, `store_keywords`, `store_description`, `store_qq`, `store_ww`, `store_phone`, `store_zy`, `store_domain`, `store_domain_times`, `store_recommend`, `store_theme`, `store_credit`, `store_desccredit`, `store_servicecredit`, `store_deliverycredit`, `store_collect`, `store_slide`, `store_slide_url`, `store_stamp`, `store_printdesc`, `store_sales`, `store_presales`, `store_aftersales`, `store_workingtime`, `store_free_price`, `store_decoration_switch`, `store_decoration_only`, `store_decoration_image_count`, `live_store_name`, `live_store_address`, `live_store_tel`, `live_store_bus`, `is_own_shop`, `bind_all_gc`, `store_vrcode_prefix`, `store_baozh`, `store_baozhopen`, `store_baozhrmb`, `store_qtian`, `store_zhping`, `store_erxiaoshi`, `store_tuihuo`, `store_shiyong`, `store_shiti`, `store_xiaoxie`, `store_huodaofk`, `legal_name`, `idcard_no`, `idcard_back`, `idcard_front`) VALUES
(1, '总店', 0, 1, '13800138000', NULL, 0, '麦点科技', 0, 0, 0, '广东', '广东珠海', '', 1, '', 0, '1461407363', '', NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', NULL, 0, 0, 'default', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '0.00', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL),
(15, '无', 0, 225, '13538850622', '13538850622', 0, NULL, 0, 0, 0, '天津-天津市-东丽区', '嗯', '', 1, NULL, 0, '1468371570', '1500047999', NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', NULL, 0, 0, 'default', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '0.00', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, '零', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL),
(16, 'Can', 0, 4, '13632242148', '13632242148', 0, NULL, 19, 289, 0, '广东-广州市-番禺区', 'Ffggg', '', 1, NULL, 0, '1470214639', '1501862399', NULL, NULL, NULL, '', '', NULL, NULL, NULL, '', NULL, 0, 0, 'default', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '0.00', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, '零', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_store_bind_class`
--

CREATE TABLE IF NOT EXISTS `yunpay_store_bind_class` (
  `bid` int(10) unsigned NOT NULL,
  `store_id` int(11) unsigned DEFAULT '0' COMMENT '店铺ID',
  `commis_rate` tinyint(4) unsigned DEFAULT '0' COMMENT '佣金比例',
  `class_1` mediumint(9) unsigned DEFAULT '0' COMMENT '一级分类',
  `class_2` mediumint(9) unsigned DEFAULT '0' COMMENT '二级分类',
  `class_3` mediumint(9) unsigned DEFAULT '0' COMMENT '三级分类',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态0审核中1已审核 2平台自营店铺'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='店铺可发布商品类目表';

--
-- 转存表中的数据 `yunpay_store_bind_class`
--

INSERT INTO `yunpay_store_bind_class` (`bid`, `store_id`, `commis_rate`, `class_1`, `class_2`, `class_3`, `state`) VALUES
(1, 1, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_store_goods_class`
--

CREATE TABLE IF NOT EXISTS `yunpay_store_goods_class` (
  `stc_id` int(11) NOT NULL COMMENT '索引ID',
  `stc_name` varchar(50) NOT NULL COMMENT '店铺商品分类名称',
  `stc_parent_id` int(11) NOT NULL COMMENT '父级id',
  `stc_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '店铺商品分类状态',
  `store_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `stc_sort` int(11) NOT NULL DEFAULT '0' COMMENT '商品分类排序'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺商品分类表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_store_grade`
--

CREATE TABLE IF NOT EXISTS `yunpay_store_grade` (
  `sg_id` int(10) unsigned NOT NULL COMMENT '索引ID',
  `sg_name` char(50) DEFAULT NULL COMMENT '等级名称',
  `sg_goods_limit` mediumint(10) unsigned NOT NULL DEFAULT '0' COMMENT '允许发布的商品数量',
  `sg_album_limit` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '允许上传图片数量',
  `sg_space_limit` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传空间大小，单位MB',
  `sg_template_number` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '选择店铺模板套数',
  `sg_template` varchar(255) DEFAULT NULL COMMENT '模板内容',
  `sg_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '开店费用(元/年)',
  `sg_description` text COMMENT '申请说明',
  `sg_function` varchar(255) DEFAULT NULL COMMENT '附加功能',
  `sg_sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '级别，数目越大级别越高'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='店铺等级表';

--
-- 转存表中的数据 `yunpay_store_grade`
--

INSERT INTO `yunpay_store_grade` (`sg_id`, `sg_name`, `sg_goods_limit`, `sg_album_limit`, `sg_space_limit`, `sg_template_number`, `sg_template`, `sg_price`, `sg_description`, `sg_function`, `sg_sort`) VALUES
(1, '系统默认', 100, 500, 100, 6, 'default|style1|style2|style3|style4|style5', '100.00', '用户选择“默认等级”，可以立即开通。', '', 0),
(2, '白金店铺', 200, 1000, 100, 6, 'default|style1|style2|style3|style4|style5', '200.00', '享受更多特权', 'editor_multimedia', 2),
(3, '钻石店铺', 0, 1000, 100, 6, 'default|style1|style2|style3|style4|style5', '1000.00', '', 'editor_multimedia', 100);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_store_joinin`
--

CREATE TABLE IF NOT EXISTS `yunpay_store_joinin` (
  `member_id` int(10) unsigned NOT NULL COMMENT '用户编号',
  `member_name` varchar(50) DEFAULT NULL COMMENT '店主用户名',
  `company_name` varchar(50) DEFAULT NULL COMMENT '公司名称',
  `company_province` int(11) DEFAULT NULL,
  `company_city` int(11) DEFAULT NULL,
  `company_region` int(11) DEFAULT NULL,
  `company_address` varchar(50) DEFAULT NULL COMMENT '公司地址',
  `company_address_detail` varchar(50) DEFAULT NULL COMMENT '公司详细地址',
  `company_phone` varchar(20) DEFAULT NULL COMMENT '公司电话',
  `company_employee_count` int(10) unsigned DEFAULT NULL COMMENT '员工总数',
  `company_registered_capital` int(10) unsigned DEFAULT NULL COMMENT '注册资金',
  `contacts_name` varchar(50) DEFAULT NULL COMMENT '联系人姓名',
  `contacts_phone` varchar(20) DEFAULT NULL COMMENT '联系人电话',
  `contacts_email` varchar(50) DEFAULT NULL COMMENT '联系人邮箱',
  `business_licence_number` varchar(50) DEFAULT NULL COMMENT '营业执照号',
  `business_licence_address` varchar(50) DEFAULT NULL COMMENT '营业执所在地',
  `business_licence_start` date DEFAULT NULL COMMENT '营业执照有效期开始',
  `business_licence_end` date DEFAULT NULL COMMENT '营业执照有效期结束',
  `business_sphere` varchar(1000) DEFAULT NULL COMMENT '法定经营范围',
  `business_licence_number_electronic` varchar(50) DEFAULT NULL COMMENT '营业执照电子版',
  `organization_code` varchar(50) DEFAULT NULL COMMENT '组织机构代码',
  `organization_code_electronic` varchar(50) DEFAULT NULL COMMENT '组织机构代码电子版',
  `general_taxpayer` varchar(50) DEFAULT NULL COMMENT '一般纳税人证明',
  `bank_account_name` varchar(50) DEFAULT NULL COMMENT '银行开户名',
  `bank_account_number` varchar(50) DEFAULT NULL COMMENT '公司银行账号',
  `bank_name` varchar(50) DEFAULT NULL COMMENT '开户银行支行名称',
  `bank_code` varchar(50) DEFAULT NULL COMMENT '支行联行号',
  `bank_address` varchar(50) DEFAULT NULL COMMENT '开户银行所在地',
  `bank_licence_electronic` varchar(50) DEFAULT NULL COMMENT '开户银行许可证电子版',
  `is_settlement_account` tinyint(1) DEFAULT NULL COMMENT '开户行账号是否为结算账号 1-开户行就是结算账号 2-独立的计算账号',
  `settlement_bank_account_name` varchar(50) DEFAULT NULL COMMENT '结算银行开户名',
  `settlement_bank_account_number` varchar(50) DEFAULT NULL COMMENT '结算公司银行账号',
  `settlement_bank_name` varchar(50) DEFAULT NULL COMMENT '结算开户银行支行名称',
  `settlement_bank_code` varchar(50) DEFAULT NULL COMMENT '结算支行联行号',
  `settlement_bank_address` varchar(50) DEFAULT NULL COMMENT '结算开户银行所在地',
  `tax_registration_certificate` varchar(50) DEFAULT NULL COMMENT '税务登记证号',
  `taxpayer_id` varchar(50) DEFAULT NULL COMMENT '纳税人识别号',
  `tax_registration_certificate_electronic` varchar(50) DEFAULT NULL COMMENT '税务登记证号电子版',
  `seller_name` varchar(50) DEFAULT NULL COMMENT '卖家帐号',
  `store_name` varchar(50) DEFAULT NULL COMMENT '店铺名称',
  `store_class_ids` varchar(1000) DEFAULT NULL COMMENT '店铺分类编号集合',
  `store_class_names` varchar(1000) DEFAULT NULL COMMENT '店铺分类名称集合',
  `joinin_state` varchar(50) DEFAULT NULL COMMENT '申请状态 10-已提交申请 11-缴费完成  20-审核成功 30-审核失败 31-缴费审核失败 40-审核通过开店',
  `joinin_message` varchar(200) DEFAULT NULL COMMENT '管理员审核信息',
  `joinin_year` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '开店时长(年)',
  `sg_name` varchar(50) DEFAULT NULL COMMENT '店铺等级名称',
  `sg_id` int(10) unsigned DEFAULT '0' COMMENT '店铺等级编号',
  `sg_info` varchar(200) DEFAULT NULL COMMENT '店铺等级下的收费等信息',
  `sc_name` varchar(50) DEFAULT NULL COMMENT '店铺分类名称',
  `sc_id` int(10) unsigned DEFAULT '0' COMMENT '店铺分类编号',
  `sc_bail` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '店铺分类保证金',
  `store_class_commis_rates` varchar(200) DEFAULT NULL COMMENT '分类佣金比例',
  `paying_money_certificate` varchar(50) DEFAULT NULL COMMENT '付款凭证',
  `paying_money_certificate_explain` varchar(200) DEFAULT NULL COMMENT '付款凭证说明',
  `paying_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '付款金额',
  `legal_name` varchar(45) DEFAULT NULL,
  `idcard_no` varchar(45) DEFAULT NULL,
  `idcard_front` varchar(45) DEFAULT NULL,
  `idcard_back` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='店铺入住表';

--
-- 转存表中的数据 `yunpay_store_joinin`
--

INSERT INTO `yunpay_store_joinin` (`member_id`, `member_name`, `company_name`, `company_province`, `company_city`, `company_region`, `company_address`, `company_address_detail`, `company_phone`, `company_employee_count`, `company_registered_capital`, `contacts_name`, `contacts_phone`, `contacts_email`, `business_licence_number`, `business_licence_address`, `business_licence_start`, `business_licence_end`, `business_sphere`, `business_licence_number_electronic`, `organization_code`, `organization_code_electronic`, `general_taxpayer`, `bank_account_name`, `bank_account_number`, `bank_name`, `bank_code`, `bank_address`, `bank_licence_electronic`, `is_settlement_account`, `settlement_bank_account_name`, `settlement_bank_account_number`, `settlement_bank_name`, `settlement_bank_code`, `settlement_bank_address`, `tax_registration_certificate`, `taxpayer_id`, `tax_registration_certificate_electronic`, `seller_name`, `store_name`, `store_class_ids`, `store_class_names`, `joinin_state`, `joinin_message`, `joinin_year`, `sg_name`, `sg_id`, `sg_info`, `sc_name`, `sc_id`, `sc_bail`, `store_class_commis_rates`, `paying_money_certificate`, `paying_money_certificate_explain`, `paying_amount`, `legal_name`, `idcard_no`, `idcard_front`, `idcard_back`) VALUES
(279, '13632242148', NULL, 2, 40, 60, '天津-天津市-红桥区', 'D', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05217353077567525.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13632242148', 'Gig', NULL, NULL, '0', '错误', 1, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '0.00', 'Cx', '441323199306203033', '05217353077560117.jpg', '05217353077573526.jpg'),
(278, '13632242148', NULL, 19, 291, 3058, '广东-深圳市-南山区', 'Cccv', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05217348724869513.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13632242148', 'Ccvvv', NULL, NULL, '10', NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '0.00', 'Gff', '441323199306203033', '05217348724860977.jpg', '05217348724869034.jpg'),
(225, '13538850622', 'fdsfd', 0, 40, 64, '天津-天津市-东丽区', '嗯v', '', 0, 0, '', '', '', '', '', '0000-00-00', '0000-00-00', '', '05217155404768872.jpg', '', NULL, NULL, '', '', '', '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, '13538850622', '无', NULL, NULL, '40', '', 1, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '0.00', '敏', '1234567891234564', '05217155404767071.jpg', '05217155404762058.jpg'),
(4, '13632242148', NULL, 19, 289, 3042, '广东-广州市-番禺区', 'Ffggg', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05235586066910047.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13632242148', 'Can', NULL, NULL, '40', '', 1, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '0.00', 'Zxc', '5555555', '05235586066917748.jpg', '05235586066917548.jpg'),
(280, '13632242148', NULL, 4, 88, 1338, '山西-晋城市-沁水县', 'I', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05217357666373758.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13632242148', 'F', NULL, NULL, '10', NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '0.00', 'C', '441323199306203033', '05217357666385813.jpg', '05217357666387737.jpg'),
(281, '13632242148', NULL, 3, 76, 1174, '河北-邯郸市-峰峰矿区', 'Gff', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05217361571479613.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13632242148', 'C', NULL, NULL, '10', NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '0.00', 'Gig', '441323199306203033', '05217361571472505.jpg', '05217361571485441.jpg'),
(252, '13450226610', NULL, 6, 112, 1566, '辽宁-丹东市-振兴区', '说明', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05217482206830991.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13450226610', '桑', NULL, NULL, '10', NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '0.00', '会', '440402198410119075', '05217482206835669.jpg', '05217482206837857.jpg'),
(228, '13423677687', NULL, 19, 289, 3041, '广东-广州市-海珠区', '广东省广州市市海珠区区', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05218453484401240.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13423677687', '啧啧啧', NULL, NULL, '10', NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '0.00', '牛人', '441622198802114190', '05218453484405306.jpeg', '05218453484401817.jpeg'),
(303, '17092049213', NULL, 19, 289, 3041, '广东-广州市-海珠区', '广东省广州市市海珠区区', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05218467752666080.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '17092049213', '天地一号', NULL, NULL, '10', NULL, 1, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, '0.00', '张大哥', '441622198802114190', '05218467752677026.jpeg', '05218467752675918.jpeg');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_store_msg`
--

CREATE TABLE IF NOT EXISTS `yunpay_store_msg` (
  `sm_id` int(10) unsigned NOT NULL COMMENT '店铺消息id',
  `smt_code` varchar(100) NOT NULL COMMENT '模板编码',
  `store_id` int(10) unsigned NOT NULL COMMENT '店铺id',
  `sm_content` varchar(255) NOT NULL COMMENT '消息内容',
  `sm_addtime` int(10) unsigned NOT NULL COMMENT '发送时间',
  `sm_readids` varchar(255) NOT NULL COMMENT '已读卖家id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='店铺消息表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_store_msg_read`
--

CREATE TABLE IF NOT EXISTS `yunpay_store_msg_read` (
  `sm_id` int(11) NOT NULL COMMENT '店铺消息id',
  `seller_id` int(11) NOT NULL COMMENT '卖家id',
  `read_time` int(11) NOT NULL COMMENT '阅读时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='店铺消息阅读表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_store_msg_setting`
--

CREATE TABLE IF NOT EXISTS `yunpay_store_msg_setting` (
  `smt_code` varchar(100) NOT NULL COMMENT '模板编码',
  `store_id` int(10) unsigned NOT NULL COMMENT '店铺id',
  `sms_message_switch` tinyint(3) unsigned NOT NULL COMMENT '站内信接收开关，0关闭，1开启',
  `sms_short_switch` tinyint(3) unsigned NOT NULL COMMENT '短消息接收开关，0关闭，1开启',
  `sms_mail_switch` tinyint(3) unsigned NOT NULL COMMENT '邮件接收开关，0关闭，1开启',
  `sms_short_number` varchar(11) NOT NULL COMMENT '手机号码',
  `sms_mail_number` varchar(100) NOT NULL COMMENT '邮箱号码'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='店铺消息接收设置';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_store_msg_tpl`
--

CREATE TABLE IF NOT EXISTS `yunpay_store_msg_tpl` (
  `smt_code` varchar(100) NOT NULL COMMENT '模板编码',
  `smt_name` varchar(100) NOT NULL COMMENT '模板名称',
  `smt_message_switch` tinyint(3) unsigned NOT NULL COMMENT '站内信默认开关，0关，1开',
  `smt_message_content` varchar(255) NOT NULL COMMENT '站内信内容',
  `smt_message_forced` tinyint(3) unsigned NOT NULL COMMENT '站内信强制接收，0否，1是',
  `smt_short_switch` tinyint(3) unsigned NOT NULL COMMENT '短信默认开关，0关，1开',
  `smt_short_content` varchar(255) NOT NULL COMMENT '短信内容',
  `smt_short_forced` tinyint(3) unsigned NOT NULL COMMENT '短信强制接收，0否，1是',
  `smt_mail_switch` tinyint(3) unsigned NOT NULL COMMENT '邮件默认开，0关，1开',
  `smt_mail_subject` varchar(255) NOT NULL COMMENT '邮件标题',
  `smt_mail_content` text NOT NULL COMMENT '邮件内容',
  `smt_mail_forced` tinyint(3) unsigned NOT NULL COMMENT '邮件强制接收，0否，1是'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商家消息模板';

--
-- 转存表中的数据 `yunpay_store_msg_tpl`
--

INSERT INTO `yunpay_store_msg_tpl` (`smt_code`, `smt_name`, `smt_message_switch`, `smt_message_content`, `smt_message_forced`, `smt_short_switch`, `smt_short_content`, `smt_short_forced`, `smt_mail_switch`, `smt_mail_subject`, `smt_mail_content`, `smt_mail_forced`) VALUES
('complain', '商品被投诉提醒', 1, '您售出的商品被投诉，等待商家申诉。投诉单编号：{$complain_id}。', 1, 0, '【{$site_name}】您售出的商品被投诉，等待商家申诉。投诉单编号：{$complain_id}。', 0, 0, '{$site_name}提醒：您售出的商品被投诉，等待商家申诉。投诉单编号：{$complain_id}。', '<p>\r\n  {$site_name}提醒：\r\n</p>\r\n<p>\r\n  您售出的商品被投诉，等待商家申诉。投诉单编号：{$complain_id}。\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>\r\n<p>\r\n  <br />\r\n</p>', 0),
('goods_storage_alarm', '商品库存预警', 1, '您的商品库存不足，请及时补货。平台货号：{$common_id}，SKU：{$sku_id}。', 1, 0, '【{$site_name}】您的商品库存不足，请及时补货。平台货号：{$common_id}，SKU：{$sku_id}。', 0, 0, '{$site_name}提醒：您的商品库存不足，请及时补货。', '<p>\r\n {$site_name}提醒：\r\n</p>\r\n<p>\r\n  您的商品库存不足，请及时补货。平台货号：{$common_id}，SKU：{$sku_id}。\r\n</p>\r\n<p>\r\n  点击下面链接查看商品详细信息\r\n</p>\r\n<p>\r\n <a href="http://{$shop_site_url}/index.php?act=goods&amp;op=index&amp;goods_id={$sku_id}" target="_blank">http://{$shop_site_url}/index.php?act=goods&amp;op=index&amp;goods_id={$sku_id}</a> \r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<br />', 0),
('goods_verify', '商品审核失败提醒', 1, '您的商品没有通过管理员审核，原因：“{$remark}”。平台货号：{$common_id}。', 1, 0, '【{$site_name}】您的商品没有通过管理员审核，原因：“{$remark}”。平台货号：{$common_id}。', 0, 0, '{$site_name}提醒：您的商品没有通过管理员审核。', '<p>\r\n {$site_name}提醒：\r\n</p>\r\n<p>\r\n  您的商品没有通过管理员审核，原因：“{$remark}”。平台货号：{$common_id}。\r\n </p><p>\r\n   <br />\r\n  </p>\r\n  <p>\r\n   <br />\r\n  </p>\r\n  <p style="text-align:right;">\r\n   {$site_name}\r\n  </p>\r\n  <p style="text-align:right;">\r\n   {$mail_send_time}\r\n </p>', 0),
('goods_violation', '商品违规被下架', 1, '您的商品被违规下架，原因：“{$remark}”。平台货号：{$common_id}。', 1, 0, '【{$site_name}】您的商品被违规下架，原因：“{$remark}”。平台货号：{$common_id}。', 0, 0, '{$site_name}提醒：您的商品被违规下架。', '<p>\r\n {$site_name}提醒：\r\n</p>\r\n<p>\r\n  您的商品被违规下架。，原因：“{$remark}”。平台货号：{$common_id}。\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>\r\n<p>\r\n  <br />\r\n</p>', 0),
('new_order', '新订单提醒', 1, '您有订单需要处理，订单编号：{$order_sn}。', 1, 0, '【{$site_name}】您有订单需要处理，订单编号：{$order_sn}。', 0, 0, '{$site_name}提醒：您有订单需要处理。', '<p>\r\n  {$site_name}提醒：\r\n</p>\r\n<p>\r\n  您有订单需要处理，订单编号：{$order_sn}。\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>\r\n<br />', 0),
('refund', '退款提醒', 1, '您有一个{$type}退款单需要处理，退款编号：{$refund_sn}。', 1, 0, '【{$site_name}】您有一个{$type}退款单需要处理，退款编号：{$refund_sn}。', 1, 0, '{$site_name}提醒：您有一个{$type}退款单需要处理，退款编号：{$refund_sn}。', '<p>\r\n  {$site_name}提醒：\r\n</p>\r\n<p>\r\n  您有一个{$type}退款单需要处理，退款编号：{$refund_sn}。\r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>\r\n<p>\r\n  <br />\r\n</p>', 1),
('refund_auto_process', '退款自动处理提醒', 1, '您的{$type}退款单超期未处理，已自动同意买家退款申请。退款单编号：{$refund_sn}。', 1, 0, '【{$site_name}】您的{$type}退款单超期未处理，已自动同意买家退款申请。退款单编号：{$refund_sn}。', 0, 0, '{site_name}提醒：您的{$type}退款单超期未处理，已自动同意买家退款申请。退款单编号：{$refund_sn}。', '<p>\r\n  {site_name}提醒：\r\n</p>\r\n<p>\r\n 您的{$type}退款单超期未处理，已自动同意买家退款申请。退款单编号：{$refund_sn}。\r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>\r\n<p>\r\n  <br />\r\n</p>', 0),
('return', '退货提醒', 1, '您有一个{$type}退货单需要处理。退货编号：{$refund_sn}。', 1, 0, '【{site_name}】您有一个{$type}退货单需要处理。退货编号：{$refund_sn}。', 0, 0, '{$site_name}提醒：您有一个{$type}退货单需要处理。退货编号：{$refund_sn}。', '<p>\r\n {$site_name}提醒：\r\n</p>\r\n<p>\r\n  您有一个{$type}退货单需要处理。退货编号：{$refund_sn}。\r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<br />', 0),
('return_auto_process', '退货自动处理提醒', 1, '您的{$type}退货单超期未处理，已自动同意买家退货申请（弃货）。退货单编号：{$refund_sn}。', 1, 0, '【{$site_name}】您的{$type}退货单超期未处理，已自动同意买家退货申请（弃货）。退货单编号：{$refund_sn}。', 0, 0, '{$site_name}提醒：您的{$type}退货单超期未处理，已自动同意买家退货申请（弃货）。退货单编号：{$refund_sn}。', '<p>\r\n {$site_name}提醒：\r\n</p>\r\n<p>\r\n  您的{$type}退货单超期未处理，已自动同意买家退货申请（弃货）。退货单编号：{$refund_sn}。\r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>', 0),
('return_auto_receipt', '退货未收货自动处理提醒', 1, '您的{$type}退货单不处理收货超期未处理，已自动按弃货处理。退货单编号：{$refund_sn}。', 1, 0, '【{$site_name}】您的{$type}退货单不处理收货超期未处理，已自动按弃货处理。退货单编号：{$refund_sn}。', 0, 0, '{$site_name}提醒：您的{$type}退货单超期未处理，已自动同意买家退货申请（弃货）。退货单编号：{$refund_sn}。', '<p>\r\n  {$site_name}提醒：\r\n</p>\r\n<p>\r\n  您的{$type}退货单超期未处理，已自动同意买家退货申请（弃货）。退货单编号：{$refund_sn}。\r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>\r\n<p>\r\n  <br />\r\n</p>', 0),
('store_bill_affirm', '结算单等待确认提醒', 1, '您有新的结算单等待确认，开始时间：{$state_time}，结束时间：{$end_time}，结算单号：{$bill_no}。', 1, 0, '【{$site_name}】您有新的结算单等待确认，开始时间：{$state_time}，结束时间：{$end_time}，结算单号：{$bill_no}。', 0, 0, '{$site_name}提醒：您有新的结算单等待确认。', '<p>\r\n {$site_name}提醒：\r\n</p>\r\n<p>\r\n  您有新的结算单等待确认，起止时间：开始时间：{$state_time}，结束时间：{$end_time}，结算单号：{$bill_no}。\r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>\r\n<p>\r\n  <br />\r\n</p>', 0),
('store_bill_gathering', '结算单已经付款提醒', 1, '您的结算单平台已付款，请注意查收，结算单编号：{$bill_no}。', 1, 0, '【{$site_name}】您的结算单平台已付款，请注意查收，结算单编号：{$bill_no}。', 0, 0, '{$site_name}提醒：您的结算单平台已付款，请注意查收。', '<p>\r\n </p><p>\r\n   {$site_name}提醒：\r\n </p>\r\n\r\n<p>\r\n 您的结算单平台已付款，请注意查收，结算单编号：{$bill_no}。\r\n  </p><p>\r\n   <br />\r\n  </p>\r\n  <p>\r\n   <br />\r\n  </p>\r\n  <p>\r\n   <br />\r\n  </p>\r\n  <p style="text-align:right;">\r\n   {$site_name}\r\n  </p>\r\n  <p style="text-align:right;">\r\n   {$mail_send_time}\r\n </p>\r\n\r\n<br />', 0),
('store_cost', '店铺消费提醒', 1, '您有一条新的店铺消费记录，金额：{$price}，操作人：{$seller_name}，备注：{$remark}。', 1, 0, '【{$site_name}】您有一条新的店铺消费记录，金额：{$price}，操作人：{$seller_name}，备注：{$remark}。', 0, 0, '{$site_name}提醒：您有一条新的店铺消费记录。', '<p>\r\n  {$site_name}提醒：\r\n</p>\r\n<p>\r\n  您有一条新的店铺消费记录，金额：{$price}，操作人：{$seller_name}，备注：{$remark}。\r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>', 0),
('store_expire', '店铺到期提醒', 1, '你的店铺即将到期，请及时续期。', 1, 0, '【{$site_name}】你的店铺即将到期，请及时续期。', 0, 0, '{$site_name}提醒：你的店铺即将到期，请及时续期。', '<p>\r\n  {$site_name}提醒：\r\n</p>\r\n<p>\r\n  你的店铺即将到期，请及时续期。\r\n</p>\r\n<p>\r\n  <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p>\r\n <br />\r\n</p>\r\n<p style="text-align:right;">\r\n {$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n {$mail_send_time}\r\n</p>\r\n<p>\r\n  <br />\r\n</p>', 0);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_store_plate`
--

CREATE TABLE IF NOT EXISTS `yunpay_store_plate` (
  `plate_id` int(10) unsigned NOT NULL COMMENT '关联板式id',
  `plate_name` varchar(10) NOT NULL COMMENT '关联板式名称',
  `plate_position` tinyint(3) unsigned NOT NULL COMMENT '关联板式位置 1顶部，0底部',
  `plate_content` text NOT NULL COMMENT '关联板式内容',
  `store_id` int(10) unsigned NOT NULL COMMENT '所属店铺id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='关联板式表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_store_sns_comment`
--

CREATE TABLE IF NOT EXISTS `yunpay_store_sns_comment` (
  `scomm_id` int(11) NOT NULL COMMENT '店铺动态评论id',
  `strace_id` int(11) NOT NULL COMMENT '店铺动态id',
  `scomm_content` varchar(150) DEFAULT NULL COMMENT '评论内容',
  `scomm_memberid` int(11) DEFAULT NULL COMMENT '会员id',
  `scomm_membername` varchar(45) DEFAULT NULL COMMENT '会员名称',
  `scomm_memberavatar` varchar(50) DEFAULT NULL COMMENT '会员头像',
  `scomm_time` varchar(11) DEFAULT NULL COMMENT '评论时间',
  `scomm_state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '评论状态 1正常，0屏蔽'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺动态评论表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_store_sns_setting`
--

CREATE TABLE IF NOT EXISTS `yunpay_store_sns_setting` (
  `sauto_storeid` int(11) NOT NULL COMMENT '店铺id',
  `sauto_new` tinyint(4) NOT NULL DEFAULT '1' COMMENT '新品,0为关闭/1为开启',
  `sauto_newtitle` varchar(150) NOT NULL COMMENT '新品内容',
  `sauto_coupon` tinyint(4) NOT NULL DEFAULT '1' COMMENT '优惠券,0为关闭/1为开启',
  `sauto_coupontitle` varchar(150) NOT NULL COMMENT '优惠券内容',
  `sauto_xianshi` tinyint(4) NOT NULL DEFAULT '1' COMMENT '限时折扣,0为关闭/1为开启',
  `sauto_xianshititle` varchar(150) NOT NULL COMMENT '限时折扣内容',
  `sauto_mansong` tinyint(4) NOT NULL DEFAULT '1' COMMENT '满即送,0为关闭/1为开启',
  `sauto_mansongtitle` varchar(150) NOT NULL COMMENT '满即送内容',
  `sauto_bundling` tinyint(4) NOT NULL DEFAULT '1' COMMENT '组合销售,0为关闭/1为开启',
  `sauto_bundlingtitle` varchar(150) NOT NULL COMMENT '组合销售内容',
  `sauto_groupbuy` tinyint(4) NOT NULL DEFAULT '1' COMMENT '团购,0为关闭/1为开启',
  `sauto_groupbuytitle` varchar(150) NOT NULL COMMENT '团购内容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺自动发布动态设置表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_store_sns_tracelog`
--

CREATE TABLE IF NOT EXISTS `yunpay_store_sns_tracelog` (
  `strace_id` int(11) NOT NULL COMMENT '店铺动态id',
  `strace_storeid` int(11) DEFAULT NULL COMMENT '店铺id',
  `strace_storename` varchar(100) DEFAULT NULL COMMENT '店铺名称',
  `strace_storelogo` varchar(255) NOT NULL COMMENT '店标',
  `strace_title` varchar(150) DEFAULT NULL COMMENT '动态标题',
  `strace_content` text COMMENT '发表内容',
  `strace_time` varchar(11) DEFAULT NULL COMMENT '发表时间',
  `strace_cool` int(11) DEFAULT '0' COMMENT '赞数量',
  `strace_spread` int(11) DEFAULT '0' COMMENT '转播数量',
  `strace_comment` int(11) DEFAULT '0' COMMENT '评论数量',
  `strace_type` tinyint(4) DEFAULT '1' COMMENT '1=relay,2=normal,3=new,4=coupon,5=xianshi,6=mansong,7=bundling,8=groupbuy,9=recommend,10=hotsell',
  `strace_goodsdata` varchar(1000) DEFAULT NULL COMMENT '商品信息',
  `strace_state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '动态状态 1正常，0屏蔽'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='店铺动态表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_transport`
--

CREATE TABLE IF NOT EXISTS `yunpay_transport` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '运费模板ID',
  `title` varchar(30) NOT NULL COMMENT '运费模板名称',
  `send_tpl_id` mediumint(8) unsigned DEFAULT NULL COMMENT '发货地区模板ID',
  `store_id` mediumint(8) unsigned NOT NULL COMMENT '店铺ID',
  `update_time` int(10) unsigned DEFAULT '0' COMMENT '最后更新时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='运费模板';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_transport_extend`
--

CREATE TABLE IF NOT EXISTS `yunpay_transport_extend` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '运费模板扩展ID',
  `area_id` text COMMENT '市级地区ID组成的串，以，隔开，两端也有，',
  `top_area_id` text COMMENT '省级地区ID组成的串，以，隔开，两端也有，',
  `area_name` text COMMENT '地区name组成的串，以，隔开',
  `snum` mediumint(8) unsigned DEFAULT '1' COMMENT '首件数量',
  `sprice` decimal(10,2) DEFAULT '0.00' COMMENT '首件运费',
  `xnum` mediumint(8) unsigned DEFAULT '1' COMMENT '续件数量',
  `xprice` decimal(10,2) DEFAULT '0.00' COMMENT '续件运费',
  `is_default` enum('1','2') DEFAULT '2' COMMENT '是否默认运费1是2否',
  `transport_id` mediumint(8) unsigned NOT NULL COMMENT '运费模板ID',
  `transport_title` varchar(60) DEFAULT NULL COMMENT '运费模板'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='运费模板扩展表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_type`
--

CREATE TABLE IF NOT EXISTS `yunpay_type` (
  `type_id` int(10) unsigned NOT NULL COMMENT '类型id',
  `type_name` varchar(100) NOT NULL COMMENT '类型名称',
  `type_sort` tinyint(1) unsigned NOT NULL COMMENT '排序',
  `class_id` int(10) unsigned DEFAULT '0' COMMENT '所属分类id',
  `class_name` varchar(100) NOT NULL COMMENT '所属分类名称'
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='商品类型表';

--
-- 转存表中的数据 `yunpay_type`
--

INSERT INTO `yunpay_type` (`type_id`, `type_name`, `type_sort`, `class_id`, `class_name`) VALUES
(34, '服饰鞋/女装/针织衫', 3, 14, '针织衫'),
(35, '服饰鞋帽/女装/雪纺衫', 4, 15, '雪纺衫'),
(36, '服饰鞋帽/女装/卫衣', 5, 16, '卫衣');

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_type_brand`
--

CREATE TABLE IF NOT EXISTS `yunpay_type_brand` (
  `type_id` int(10) unsigned NOT NULL COMMENT '类型id',
  `brand_id` int(10) unsigned NOT NULL COMMENT '品牌id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品类型与品牌对应表';

--
-- 转存表中的数据 `yunpay_type_brand`
--

INSERT INTO `yunpay_type_brand` (`type_id`, `brand_id`) VALUES
(34, 101),
(34, 79),
(34, 108),
(34, 105),
(34, 103),
(34, 100),
(34, 96),
(34, 89),
(34, 87),
(34, 84),
(34, 80),
(34, 104),
(34, 81),
(34, 82),
(34, 83),
(36, 101),
(36, 79),
(36, 108),
(36, 105),
(36, 103),
(36, 100),
(36, 96),
(36, 89),
(36, 87),
(36, 80),
(36, 104),
(36, 81),
(36, 82),
(36, 83),
(35, 101),
(35, 79),
(35, 108),
(35, 105),
(35, 103),
(35, 100),
(35, 96),
(35, 89),
(35, 87),
(35, 80),
(35, 104),
(35, 81),
(35, 82);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_type_spec`
--

CREATE TABLE IF NOT EXISTS `yunpay_type_spec` (
  `type_id` int(10) unsigned NOT NULL COMMENT '类型id',
  `sp_id` int(10) unsigned NOT NULL COMMENT '规格id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品类型与规格对应表';

--
-- 转存表中的数据 `yunpay_type_spec`
--

INSERT INTO `yunpay_type_spec` (`type_id`, `sp_id`) VALUES
(36, 15),
(36, 1),
(35, 15),
(35, 1),
(34, 15),
(34, 1);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_upload`
--

CREATE TABLE IF NOT EXISTS `yunpay_upload` (
  `upload_id` int(10) unsigned NOT NULL COMMENT '索引ID',
  `file_name` varchar(100) DEFAULT NULL COMMENT '文件名',
  `file_thumb` varchar(100) DEFAULT NULL COMMENT '缩微图片',
  `file_size` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `upload_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '文件类别，0为无，1为文章图片，默认为0，2为帮助内容图片，3为店铺幻灯片，4为系统文章图片，5为积分礼品切换图片，6为积分礼品内容图片',
  `upload_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '信息ID'
) ENGINE=MyISAM AUTO_INCREMENT=181 DEFAULT CHARSET=utf8 COMMENT='上传文件表';

--
-- 转存表中的数据 `yunpay_upload`
--

INSERT INTO `yunpay_upload` (`upload_id`, `file_name`, `file_thumb`, `file_size`, `upload_type`, `upload_time`, `item_id`) VALUES
(175, 'help_store_04526250471329237.jpg', NULL, 93814, 2, 1399281047, 97),
(176, 'help_store_04526250486031950.jpg', NULL, 402109, 2, 1399281048, 97),
(177, 'help_store_04526250504192250.jpg', NULL, 248466, 2, 1399281050, 97),
(180, 'help_store_04526254603037325.jpg', NULL, 884442, 2, 1399281460, 99);

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_voucher`
--

CREATE TABLE IF NOT EXISTS `yunpay_voucher` (
  `voucher_id` int(11) NOT NULL COMMENT '代金券编号',
  `voucher_code` varchar(32) NOT NULL COMMENT '代金券编码',
  `voucher_t_id` int(11) NOT NULL COMMENT '代金券模版编号',
  `voucher_title` varchar(50) NOT NULL COMMENT '代金券标题',
  `voucher_desc` varchar(255) NOT NULL COMMENT '代金券描述',
  `voucher_start_date` int(11) NOT NULL COMMENT '代金券有效期开始时间',
  `voucher_end_date` int(11) NOT NULL COMMENT '代金券有效期结束时间',
  `voucher_price` int(11) NOT NULL COMMENT '代金券面额',
  `voucher_limit` decimal(10,2) NOT NULL COMMENT '代金券使用时的订单限额',
  `voucher_store_id` int(11) NOT NULL COMMENT '代金券的店铺id',
  `voucher_state` tinyint(4) NOT NULL COMMENT '代金券状态(1-未用,2-已用,3-过期,4-收回)',
  `voucher_active_date` int(11) NOT NULL COMMENT '代金券发放日期',
  `voucher_type` tinyint(4) NOT NULL COMMENT '代金券类别',
  `voucher_owner_id` int(11) NOT NULL COMMENT '代金券所有者id',
  `voucher_owner_name` varchar(50) NOT NULL COMMENT '代金券所有者名称',
  `voucher_order_id` int(11) DEFAULT NULL COMMENT '使用该代金券的订单编号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代金券表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_voucher_price`
--

CREATE TABLE IF NOT EXISTS `yunpay_voucher_price` (
  `voucher_price_id` int(11) NOT NULL COMMENT '代金券面值编号',
  `voucher_price_describe` varchar(255) NOT NULL COMMENT '代金券描述',
  `voucher_price` int(11) NOT NULL COMMENT '代金券面值',
  `voucher_defaultpoints` int(11) NOT NULL DEFAULT '0' COMMENT '代金劵默认的兑换所需积分可以为0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代金券面额表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_voucher_quota`
--

CREATE TABLE IF NOT EXISTS `yunpay_voucher_quota` (
  `quota_id` int(11) NOT NULL COMMENT '套餐编号',
  `quota_applyid` int(11) NOT NULL COMMENT '申请编号',
  `quota_memberid` int(11) NOT NULL COMMENT '会员编号',
  `quota_membername` varchar(100) NOT NULL COMMENT '会员名称',
  `quota_storeid` int(11) NOT NULL COMMENT '店铺编号',
  `quota_storename` varchar(100) NOT NULL COMMENT '店铺名称',
  `quota_starttime` int(11) NOT NULL COMMENT '开始时间',
  `quota_endtime` int(11) NOT NULL COMMENT '结束时间',
  `quota_state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态(1-可用/2-取消/3-结束)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代金券套餐表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_voucher_template`
--

CREATE TABLE IF NOT EXISTS `yunpay_voucher_template` (
  `voucher_t_id` int(11) NOT NULL COMMENT '代金券模版编号',
  `voucher_t_title` varchar(50) NOT NULL COMMENT '代金券模版名称',
  `voucher_t_desc` varchar(255) NOT NULL COMMENT '代金券模版描述',
  `voucher_t_start_date` int(11) NOT NULL COMMENT '代金券模版有效期开始时间',
  `voucher_t_end_date` int(11) NOT NULL COMMENT '代金券模版有效期结束时间',
  `voucher_t_price` int(11) NOT NULL COMMENT '代金券模版面额',
  `voucher_t_limit` decimal(10,2) NOT NULL COMMENT '代金券使用时的订单限额',
  `voucher_t_store_id` int(11) NOT NULL COMMENT '代金券模版的店铺id',
  `voucher_t_storename` varchar(100) DEFAULT NULL COMMENT '店铺名称',
  `voucher_t_sc_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属店铺分类ID',
  `voucher_t_creator_id` int(11) NOT NULL COMMENT '代金券模版的创建者id',
  `voucher_t_state` tinyint(4) NOT NULL COMMENT '代金券模版状态(1-有效,2-失效)',
  `voucher_t_total` int(11) NOT NULL COMMENT '模版可发放的代金券总数',
  `voucher_t_giveout` int(11) NOT NULL COMMENT '模版已发放的代金券数量',
  `voucher_t_used` int(11) NOT NULL COMMENT '模版已经使用过的代金券',
  `voucher_t_add_date` int(11) NOT NULL COMMENT '模版的创建时间',
  `voucher_t_quotaid` int(11) NOT NULL COMMENT '套餐编号',
  `voucher_t_points` int(11) NOT NULL DEFAULT '0' COMMENT '兑换所需积分',
  `voucher_t_eachlimit` int(11) NOT NULL DEFAULT '1' COMMENT '每人限领张数',
  `voucher_t_styleimg` varchar(200) DEFAULT NULL COMMENT '样式模版图片',
  `voucher_t_customimg` varchar(200) DEFAULT NULL COMMENT '自定义代金券模板图片',
  `voucher_t_recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推荐 0不推荐 1推荐'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代金券模版表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_vr_order`
--

CREATE TABLE IF NOT EXISTS `yunpay_vr_order` (
  `order_id` int(11) NOT NULL COMMENT '虚拟订单索引id',
  `order_sn` bigint(20) unsigned NOT NULL COMMENT '订单编号',
  `store_id` int(11) unsigned NOT NULL COMMENT '卖家店铺id',
  `store_name` varchar(50) NOT NULL COMMENT '卖家店铺名称',
  `buyer_id` int(11) unsigned NOT NULL COMMENT '买家id',
  `buyer_name` varchar(50) NOT NULL COMMENT '买家登录名',
  `buyer_phone` varchar(11) NOT NULL COMMENT '买家手机',
  `add_time` int(10) unsigned NOT NULL COMMENT '订单生成时间',
  `payment_code` char(10) NOT NULL DEFAULT '' COMMENT '支付方式名称代码',
  `payment_time` int(10) unsigned DEFAULT '0' COMMENT '支付(付款)时间',
  `trade_no` varchar(35) DEFAULT NULL COMMENT '第三方平台交易号',
  `close_time` int(10) unsigned DEFAULT '0' COMMENT '关闭时间',
  `close_reason` varchar(50) DEFAULT NULL COMMENT '关闭原因',
  `finnshed_time` int(11) DEFAULT NULL COMMENT '完成时间',
  `order_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '订单总价格(支付金额)',
  `refund_amount` decimal(10,2) DEFAULT '0.00' COMMENT '退款金额',
  `rcb_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '充值卡支付金额',
  `pd_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '预存款支付金额',
  `order_state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态：0(已取消)10(默认):未付款;20:已付款;40:已完成;',
  `refund_state` tinyint(1) unsigned DEFAULT '0' COMMENT '退款状态:0是无退款,1是部分退款,2是全部退款',
  `buyer_msg` varchar(150) DEFAULT NULL COMMENT '买家留言',
  `delete_state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除状态0未删除1放入回收站2彻底删除',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `goods_name` varchar(50) NOT NULL COMMENT '商品名称',
  `goods_price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `goods_num` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '商品数量',
  `goods_image` varchar(100) DEFAULT NULL COMMENT '商品图片',
  `commis_rate` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '佣金比例',
  `gc_id` mediumint(9) DEFAULT '0' COMMENT '商品最底级分类ID',
  `vr_indate` int(11) DEFAULT NULL COMMENT '有效期',
  `vr_send_times` tinyint(4) NOT NULL DEFAULT '0' COMMENT '兑换码发送次数',
  `vr_invalid_refund` tinyint(4) NOT NULL DEFAULT '1' COMMENT '允许过期退款1是0否',
  `order_promotion_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '订单参加的促销类型 0无促销1团购',
  `promotions_id` mediumint(9) DEFAULT '0' COMMENT '促销ID，与order_promotion_type配合使用',
  `order_from` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1WEB2mobile',
  `evaluation_state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '评价状态0默认1已评价2禁止评价',
  `evaluation_time` int(11) NOT NULL DEFAULT '0' COMMENT '评价时间',
  `use_state` tinyint(4) DEFAULT '0' COMMENT '使用状态0默认，未使用1已使用，有一个被使用即为1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='虚拟订单表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_vr_order_bill`
--

CREATE TABLE IF NOT EXISTS `yunpay_vr_order_bill` (
  `ob_no` int(11) NOT NULL COMMENT '结算单编号(年月店铺ID)',
  `ob_start_date` int(11) NOT NULL COMMENT '开始日期',
  `ob_end_date` int(11) NOT NULL COMMENT '结束日期',
  `ob_order_totals` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  `ob_commis_totals` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '佣金金额',
  `ob_result_totals` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '应结金额',
  `ob_create_date` int(11) DEFAULT '0' COMMENT '生成结算单日期',
  `os_month` mediumint(6) unsigned NOT NULL COMMENT '结算单年月份',
  `ob_state` enum('1','2','3','4') DEFAULT '1' COMMENT '1默认2店家已确认3平台已审核4结算完成',
  `ob_pay_date` int(11) DEFAULT '0' COMMENT '付款日期',
  `ob_pay_content` varchar(200) DEFAULT '' COMMENT '支付备注',
  `ob_store_id` int(11) NOT NULL COMMENT '店铺ID',
  `ob_store_name` varchar(50) DEFAULT NULL COMMENT '店铺名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='虚拟订单结算表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_vr_order_code`
--

CREATE TABLE IF NOT EXISTS `yunpay_vr_order_code` (
  `rec_id` int(11) NOT NULL COMMENT '兑换码表索引id',
  `order_id` int(11) NOT NULL COMMENT '虚拟订单id',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `buyer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '买家ID',
  `vr_code` varchar(18) NOT NULL COMMENT '兑换码',
  `vr_state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '使用状态 0:(默认)未使用1:已使用2:已过期',
  `vr_usetime` int(11) DEFAULT NULL COMMENT '使用时间',
  `pay_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实际支付金额(结算)',
  `vr_indate` int(11) DEFAULT NULL COMMENT '过期时间',
  `commis_rate` smallint(6) NOT NULL DEFAULT '0' COMMENT '佣金比例',
  `refund_lock` tinyint(1) unsigned DEFAULT '0' COMMENT '退款锁定状态:0为正常,1为锁定,2为同意,默认为0',
  `vr_invalid_refund` tinyint(4) NOT NULL DEFAULT '1' COMMENT '允许过期退款1是0否'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='兑换码表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_vr_order_statis`
--

CREATE TABLE IF NOT EXISTS `yunpay_vr_order_statis` (
  `os_month` mediumint(9) unsigned NOT NULL DEFAULT '0' COMMENT '统计编号(年月)',
  `os_year` smallint(6) DEFAULT '0' COMMENT '年',
  `os_start_date` int(11) NOT NULL COMMENT '开始日期',
  `os_end_date` int(11) NOT NULL COMMENT '结束日期',
  `os_order_totals` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  `os_commis_totals` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '佣金金额',
  `os_result_totals` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '本期应结',
  `os_create_date` int(11) DEFAULT NULL COMMENT '创建记录日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='虚拟订单月销量统计表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_vr_refund`
--

CREATE TABLE IF NOT EXISTS `yunpay_vr_refund` (
  `refund_id` int(10) unsigned NOT NULL COMMENT '记录ID',
  `order_id` int(10) unsigned NOT NULL COMMENT '虚拟订单ID',
  `order_sn` varchar(50) NOT NULL COMMENT '虚拟订单编号',
  `refund_sn` varchar(50) NOT NULL COMMENT '申请编号',
  `store_id` int(10) unsigned NOT NULL COMMENT '店铺ID',
  `store_name` varchar(20) NOT NULL COMMENT '店铺名称',
  `buyer_id` int(10) unsigned NOT NULL COMMENT '买家ID',
  `buyer_name` varchar(50) NOT NULL COMMENT '买家会员名',
  `goods_id` int(10) unsigned NOT NULL COMMENT '商品ID',
  `goods_num` int(10) unsigned DEFAULT '1' COMMENT '退款商品数量',
  `goods_name` varchar(50) NOT NULL COMMENT '商品名称',
  `goods_image` varchar(100) DEFAULT NULL COMMENT '商品图片',
  `code_sn` varchar(300) NOT NULL COMMENT '兑换码编号',
  `refund_amount` decimal(10,2) DEFAULT '0.00' COMMENT '退款金额',
  `admin_state` tinyint(1) unsigned DEFAULT '1' COMMENT '退款状态:1为待审核,2为同意,3为不同意,默认为1',
  `add_time` int(10) unsigned NOT NULL COMMENT '添加时间',
  `admin_time` int(10) unsigned DEFAULT '0' COMMENT '管理员处理时间,默认为0',
  `buyer_message` varchar(300) DEFAULT NULL COMMENT '申请原因',
  `admin_message` varchar(300) DEFAULT NULL COMMENT '管理员备注',
  `commis_rate` smallint(6) DEFAULT '0' COMMENT '佣金比例'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='虚拟兑码退款表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_zero_goods`
--

CREATE TABLE IF NOT EXISTS `yunpay_zero_goods` (
  `goods_id` int(10) unsigned NOT NULL COMMENT '商品id(SKU)',
  `goods_commonid` int(10) unsigned DEFAULT NULL COMMENT '商品公共表id',
  `goods_name` varchar(50) NOT NULL COMMENT '商品名称',
  `store_id` int(10) unsigned DEFAULT NULL COMMENT '店铺id',
  `store_name` varchar(50) DEFAULT NULL COMMENT '店铺名称',
  `gc_id` int(10) unsigned DEFAULT NULL COMMENT '商品分类id',
  `gc_id_1` int(10) unsigned DEFAULT NULL COMMENT '一级分类id',
  `gc_id_2` int(10) unsigned DEFAULT NULL COMMENT '二级分类id',
  `gc_id_3` int(10) unsigned DEFAULT NULL COMMENT '三级分类id',
  `brand_id` int(10) unsigned DEFAULT NULL COMMENT '品牌id',
  `goods_image_index` varchar(150) DEFAULT NULL COMMENT '商品主图',
  `goods_image_list` varchar(1000) DEFAULT NULL COMMENT '商品详情图',
  `goods_price` decimal(10,2) DEFAULT NULL COMMENT '商品市场价   ',
  `goods_freight` decimal(10,2) DEFAULT NULL COMMENT '运费 0为免运费',
  `goods_storage` mediumint(8) unsigned DEFAULT NULL COMMENT '商品库存',
  `goods_storage_alarm` tinyint(3) unsigned DEFAULT NULL COMMENT '库存报警值',
  `goods_click` int(10) unsigned DEFAULT NULL COMMENT '商品点击数量',
  `goods_salenum` int(10) unsigned DEFAULT NULL COMMENT '销售数量',
  `goods_progress` tinyint(3) unsigned DEFAULT NULL COMMENT '商品进度(完成率:0-100)',
  `goods_join_num` mediumint(8) unsigned DEFAULT NULL COMMENT '商品已参加总人数',
  `goods_surplus_num` mediumint(8) unsigned DEFAULT NULL COMMENT '商品剩余总人数',
  `goods_total_num` mediumint(8) unsigned DEFAULT NULL COMMENT '商品需参加总人数',
  `goods_state` tinyint(1) DEFAULT '1' COMMENT '商品状态 0下架，1正常，10违规（禁售)',
  `goods_verify` tinyint(1) DEFAULT '0' COMMENT '商品审核 1通过，0未通过，10审核中',
  `goods_commend` tinyint(1) DEFAULT '0' COMMENT '商品推荐 1是，0否 默认0',
  `goods_weight` varchar(10) DEFAULT NULL COMMENT '商品重量',
  `goods_spec` varchar(1000) DEFAULT NULL COMMENT '商品规格序列化',
  `goods_detail` text COMMENT '商品详情',
  `goods_addtime` int(10) unsigned DEFAULT NULL COMMENT '商品添加时间',
  `goods_edittime` int(10) unsigned DEFAULT NULL COMMENT '商品编辑时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='0元淘商品表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_zero_order`
--

CREATE TABLE IF NOT EXISTS `yunpay_zero_order` (
  `order_id` int(10) unsigned NOT NULL COMMENT '订单索引id',
  `order_sn` bigint(20) unsigned DEFAULT NULL COMMENT '订单编号',
  `pay_sn` bigint(20) unsigned DEFAULT NULL COMMENT '支付单号',
  `store_id` int(10) unsigned DEFAULT NULL COMMENT '卖家店铺id',
  `store_name` varchar(50) DEFAULT NULL COMMENT '卖家店铺名称',
  `buyer_id` int(10) unsigned DEFAULT NULL COMMENT '买家id',
  `buyer_name` varchar(50) DEFAULT NULL COMMENT '买家姓名',
  `payment_code` varchar(10) DEFAULT NULL COMMENT '支付方式',
  `rcb_amount` decimal(10,2) DEFAULT NULL COMMENT '充值卡支付金额',
  `pd_amount` decimal(10,2) DEFAULT NULL COMMENT '预存款支付金额',
  `shipping_amount` decimal(10,2) DEFAULT NULL COMMENT '商品总运费',
  `evaluation_state` tinyint(1) DEFAULT '0' COMMENT '评价状态 0未评价，1已评价，2已过期未评价',
  `order_state` tinyint(3) unsigned DEFAULT NULL COMMENT '订单状态：0(已取消)10(默认):未付款;20:已付款;30:已发货;40:已收货;',
  `lock_state` tinyint(1) DEFAULT '1' COMMENT '锁定状态:0是正常,大于0是锁定,默认是0',
  `delete_state` tinyint(1) DEFAULT '0' COMMENT '删除状态0未删除1放入回收站2彻底删除',
  `refund_amount` decimal(10,2) DEFAULT NULL COMMENT '退款金额',
  `shipping_code` varchar(50) DEFAULT NULL COMMENT '物流单号',
  `shipping_time` int(10) unsigned DEFAULT NULL COMMENT '配送时间',
  `shipping_express_id` tinyint(3) unsigned DEFAULT NULL COMMENT '配送公司ID',
  `order_from` tinyint(1) DEFAULT NULL COMMENT '1:WEB,2:mobile',
  `evaluation_time` int(10) unsigned DEFAULT NULL COMMENT '评价时间',
  `payment_time` int(10) unsigned DEFAULT NULL COMMENT '支付(付款)时间',
  `finnshed_time` int(10) unsigned DEFAULT NULL COMMENT '订单完成时间',
  `add_time` int(10) unsigned DEFAULT NULL COMMENT '订单生成时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='0元淘订单表';

-- --------------------------------------------------------

--
-- 表的结构 `yunpay_zero_order_goods`
--

CREATE TABLE IF NOT EXISTS `yunpay_zero_order_goods` (
  `id` int(11) NOT NULL COMMENT '订单商品表索引id',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `goods_name` varchar(50) NOT NULL COMMENT '商品名称',
  `goods_price` decimal(10,2) NOT NULL COMMENT '商品价格',
  `goods_num` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '商品数量',
  `goods_image` varchar(100) DEFAULT NULL COMMENT '商品图片',
  `goods_pay_price` decimal(10,2) unsigned NOT NULL COMMENT '商品实际成交价',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `buyer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '买家ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='0元淘订单商品表';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `yunpay_address`
--
ALTER TABLE `yunpay_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `yunpay_admin`
--
ALTER TABLE `yunpay_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `member_id` (`admin_id`);

--
-- Indexes for table `yunpay_admin_log`
--
ALTER TABLE `yunpay_admin_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yunpay_adv`
--
ALTER TABLE `yunpay_adv`
  ADD PRIMARY KEY (`adv_id`);

--
-- Indexes for table `yunpay_adv_position`
--
ALTER TABLE `yunpay_adv_position`
  ADD PRIMARY KEY (`ap_id`);

--
-- Indexes for table `yunpay_agent`
--
ALTER TABLE `yunpay_agent`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `yunpay_agent_area`
--
ALTER TABLE `yunpay_agent_area`
  ADD PRIMARY KEY (`aa_id`);

--
-- Indexes for table `yunpay_album_class`
--
ALTER TABLE `yunpay_album_class`
  ADD PRIMARY KEY (`aclass_id`);

--
-- Indexes for table `yunpay_album_pic`
--
ALTER TABLE `yunpay_album_pic`
  ADD PRIMARY KEY (`apic_id`);

--
-- Indexes for table `yunpay_area`
--
ALTER TABLE `yunpay_area`
  ADD PRIMARY KEY (`area_id`),
  ADD KEY `area_parent_id` (`area_parent_id`);

--
-- Indexes for table `yunpay_arrival_notice`
--
ALTER TABLE `yunpay_arrival_notice`
  ADD PRIMARY KEY (`an_id`);

--
-- Indexes for table `yunpay_article`
--
ALTER TABLE `yunpay_article`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `ac_id` (`ac_id`);

--
-- Indexes for table `yunpay_article_class`
--
ALTER TABLE `yunpay_article_class`
  ADD PRIMARY KEY (`ac_id`),
  ADD KEY `ac_parent_id` (`ac_parent_id`);

--
-- Indexes for table `yunpay_attribute`
--
ALTER TABLE `yunpay_attribute`
  ADD PRIMARY KEY (`attr_id`),
  ADD KEY `attr_id` (`attr_id`,`type_id`);

--
-- Indexes for table `yunpay_attribute_value`
--
ALTER TABLE `yunpay_attribute_value`
  ADD PRIMARY KEY (`attr_value_id`);

--
-- Indexes for table `yunpay_bank`
--
ALTER TABLE `yunpay_bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `yunpay_brand`
--
ALTER TABLE `yunpay_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `yunpay_cart`
--
ALTER TABLE `yunpay_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `member_id` (`buyer_id`);

--
-- Indexes for table `yunpay_complain`
--
ALTER TABLE `yunpay_complain`
  ADD PRIMARY KEY (`complain_id`);

--
-- Indexes for table `yunpay_complain_subject`
--
ALTER TABLE `yunpay_complain_subject`
  ADD PRIMARY KEY (`complain_subject_id`);

--
-- Indexes for table `yunpay_complain_talk`
--
ALTER TABLE `yunpay_complain_talk`
  ADD PRIMARY KEY (`talk_id`);

--
-- Indexes for table `yunpay_consult`
--
ALTER TABLE `yunpay_consult`
  ADD PRIMARY KEY (`consult_id`),
  ADD KEY `goods_id` (`goods_id`),
  ADD KEY `seller_id` (`store_id`);

--
-- Indexes for table `yunpay_consult_type`
--
ALTER TABLE `yunpay_consult_type`
  ADD PRIMARY KEY (`ct_id`);

--
-- Indexes for table `yunpay_coupons`
--
ALTER TABLE `yunpay_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yunpay_cron`
--
ALTER TABLE `yunpay_cron`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yunpay_daddress`
--
ALTER TABLE `yunpay_daddress`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `yunpay_delivery_order`
--
ALTER TABLE `yunpay_delivery_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `yunpay_delivery_point`
--
ALTER TABLE `yunpay_delivery_point`
  ADD PRIMARY KEY (`dlyp_id`),
  ADD UNIQUE KEY `dlyp_name` (`dlyp_name`),
  ADD UNIQUE KEY `dlyp_idcard` (`dlyp_idcard`),
  ADD UNIQUE KEY `dlyp_mobile` (`dlyp_mobile`);

--
-- Indexes for table `yunpay_document`
--
ALTER TABLE `yunpay_document`
  ADD PRIMARY KEY (`doc_id`),
  ADD UNIQUE KEY `doc_code` (`doc_code`);

--
-- Indexes for table `yunpay_evaluate_goods`
--
ALTER TABLE `yunpay_evaluate_goods`
  ADD PRIMARY KEY (`geval_id`);

--
-- Indexes for table `yunpay_evaluate_store`
--
ALTER TABLE `yunpay_evaluate_store`
  ADD PRIMARY KEY (`seval_id`);

--
-- Indexes for table `yunpay_exppoints_log`
--
ALTER TABLE `yunpay_exppoints_log`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indexes for table `yunpay_express`
--
ALTER TABLE `yunpay_express`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `yunpay_feedback`
--
ALTER TABLE `yunpay_feedback`
  ADD PRIMARY KEY (`fb_id`);

--
-- Indexes for table `yunpay_fund`
--
ALTER TABLE `yunpay_fund`
  ADD PRIMARY KEY (`fund_id`);

--
-- Indexes for table `yunpay_fund_log`
--
ALTER TABLE `yunpay_fund_log`
  ADD PRIMARY KEY (`fl_id`);

--
-- Indexes for table `yunpay_gadmin`
--
ALTER TABLE `yunpay_gadmin`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `yunpay_goods`
--
ALTER TABLE `yunpay_goods`
  ADD PRIMARY KEY (`goods_id`);

--
-- Indexes for table `yunpay_goods_attr_index`
--
ALTER TABLE `yunpay_goods_attr_index`
  ADD PRIMARY KEY (`goods_id`,`gc_id`,`attr_value_id`);

--
-- Indexes for table `yunpay_goods_browse`
--
ALTER TABLE `yunpay_goods_browse`
  ADD PRIMARY KEY (`goods_id`,`member_id`);

--
-- Indexes for table `yunpay_goods_class`
--
ALTER TABLE `yunpay_goods_class`
  ADD PRIMARY KEY (`gc_id`),
  ADD KEY `store_id` (`gc_parent_id`);

--
-- Indexes for table `yunpay_goods_class_staple`
--
ALTER TABLE `yunpay_goods_class_staple`
  ADD PRIMARY KEY (`staple_id`),
  ADD KEY `store_id` (`member_id`);

--
-- Indexes for table `yunpay_goods_class_tag`
--
ALTER TABLE `yunpay_goods_class_tag`
  ADD PRIMARY KEY (`gc_tag_id`);

--
-- Indexes for table `yunpay_goods_combo`
--
ALTER TABLE `yunpay_goods_combo`
  ADD PRIMARY KEY (`combo_id`);

--
-- Indexes for table `yunpay_goods_common`
--
ALTER TABLE `yunpay_goods_common`
  ADD PRIMARY KEY (`goods_commonid`);

--
-- Indexes for table `yunpay_goods_fcode`
--
ALTER TABLE `yunpay_goods_fcode`
  ADD PRIMARY KEY (`fc_id`);

--
-- Indexes for table `yunpay_goods_gift`
--
ALTER TABLE `yunpay_goods_gift`
  ADD PRIMARY KEY (`gift_id`);

--
-- Indexes for table `yunpay_goods_images`
--
ALTER TABLE `yunpay_goods_images`
  ADD PRIMARY KEY (`goods_image_id`);

--
-- Indexes for table `yunpay_help`
--
ALTER TABLE `yunpay_help`
  ADD PRIMARY KEY (`help_id`);

--
-- Indexes for table `yunpay_help_type`
--
ALTER TABLE `yunpay_help_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `yunpay_inform`
--
ALTER TABLE `yunpay_inform`
  ADD PRIMARY KEY (`inform_id`);

--
-- Indexes for table `yunpay_inform_subject`
--
ALTER TABLE `yunpay_inform_subject`
  ADD PRIMARY KEY (`inform_subject_id`);

--
-- Indexes for table `yunpay_inform_subject_type`
--
ALTER TABLE `yunpay_inform_subject_type`
  ADD PRIMARY KEY (`inform_type_id`);

--
-- Indexes for table `yunpay_invoice`
--
ALTER TABLE `yunpay_invoice`
  ADD PRIMARY KEY (`inv_id`);

--
-- Indexes for table `yunpay_link`
--
ALTER TABLE `yunpay_link`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `yunpay_lock`
--
ALTER TABLE `yunpay_lock`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `yunpay_mail_cron`
--
ALTER TABLE `yunpay_mail_cron`
  ADD PRIMARY KEY (`mail_id`);

--
-- Indexes for table `yunpay_mail_msg_temlates`
--
ALTER TABLE `yunpay_mail_msg_temlates`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `yunpay_mall_consult`
--
ALTER TABLE `yunpay_mall_consult`
  ADD PRIMARY KEY (`mc_id`);

--
-- Indexes for table `yunpay_mall_consult_type`
--
ALTER TABLE `yunpay_mall_consult_type`
  ADD PRIMARY KEY (`mct_id`);

--
-- Indexes for table `yunpay_mb_article`
--
ALTER TABLE `yunpay_mb_article`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `ac_id` (`ac_id`);

--
-- Indexes for table `yunpay_mb_article_class`
--
ALTER TABLE `yunpay_mb_article_class`
  ADD PRIMARY KEY (`ac_id`),
  ADD KEY `ac_parent_id` (`ac_parent_id`);

--
-- Indexes for table `yunpay_mb_category`
--
ALTER TABLE `yunpay_mb_category`
  ADD PRIMARY KEY (`gc_id`);

--
-- Indexes for table `yunpay_mb_feedback`
--
ALTER TABLE `yunpay_mb_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yunpay_mb_payment`
--
ALTER TABLE `yunpay_mb_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `yunpay_mb_special`
--
ALTER TABLE `yunpay_mb_special`
  ADD PRIMARY KEY (`special_id`);

--
-- Indexes for table `yunpay_mb_special_item`
--
ALTER TABLE `yunpay_mb_special_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `yunpay_mb_user_token`
--
ALTER TABLE `yunpay_mb_user_token`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `token` (`token`);

--
-- Indexes for table `yunpay_member`
--
ALTER TABLE `yunpay_member`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `member_name` (`member_name`) USING BTREE,
  ADD UNIQUE KEY `member_idcard` (`member_id`);

--
-- Indexes for table `yunpay_member_bank`
--
ALTER TABLE `yunpay_member_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yunpay_member_card`
--
ALTER TABLE `yunpay_member_card`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `yunpay_member_common`
--
ALTER TABLE `yunpay_member_common`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `yunpay_member_msg_setting`
--
ALTER TABLE `yunpay_member_msg_setting`
  ADD PRIMARY KEY (`mmt_code`,`member_id`);

--
-- Indexes for table `yunpay_member_msg_tpl`
--
ALTER TABLE `yunpay_member_msg_tpl`
  ADD PRIMARY KEY (`mmt_code`);

--
-- Indexes for table `yunpay_member_relation`
--
ALTER TABLE `yunpay_member_relation`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `yunpay_message`
--
ALTER TABLE `yunpay_message`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `from_member_id` (`from_member_id`),
  ADD KEY `to_member_id` (`to_member_id`(255)),
  ADD KEY `message_ismore` (`message_ismore`);

--
-- Indexes for table `yunpay_navigation`
--
ALTER TABLE `yunpay_navigation`
  ADD PRIMARY KEY (`nav_id`);

--
-- Indexes for table `yunpay_offpay_area`
--
ALTER TABLE `yunpay_offpay_area`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `yunpay_oil_card`
--
ALTER TABLE `yunpay_oil_card`
  ADD PRIMARY KEY (`oc_id`),
  ADD UNIQUE KEY `ocb_member_id_UNIQUE` (`oc_member_id`),
  ADD UNIQUE KEY `oc_card_number` (`oc_card_number`);

--
-- Indexes for table `yunpay_oil_log`
--
ALTER TABLE `yunpay_oil_log`
  ADD PRIMARY KEY (`ol_id`);

--
-- Indexes for table `yunpay_order`
--
ALTER TABLE `yunpay_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `yunpay_order_bill`
--
ALTER TABLE `yunpay_order_bill`
  ADD PRIMARY KEY (`ob_no`);

--
-- Indexes for table `yunpay_order_common`
--
ALTER TABLE `yunpay_order_common`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `yunpay_order_goods`
--
ALTER TABLE `yunpay_order_goods`
  ADD PRIMARY KEY (`rec_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `yunpay_order_log`
--
ALTER TABLE `yunpay_order_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `yunpay_order_pay`
--
ALTER TABLE `yunpay_order_pay`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `yunpay_order_statis`
--
ALTER TABLE `yunpay_order_statis`
  ADD PRIMARY KEY (`os_month`);

--
-- Indexes for table `yunpay_payment`
--
ALTER TABLE `yunpay_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `yunpay_pd_cash`
--
ALTER TABLE `yunpay_pd_cash`
  ADD PRIMARY KEY (`pdc_id`);

--
-- Indexes for table `yunpay_pd_log`
--
ALTER TABLE `yunpay_pd_log`
  ADD PRIMARY KEY (`lg_id`);

--
-- Indexes for table `yunpay_pd_recharge`
--
ALTER TABLE `yunpay_pd_recharge`
  ADD PRIMARY KEY (`pdr_id`);

--
-- Indexes for table `yunpay_pd_redeemable`
--
ALTER TABLE `yunpay_pd_redeemable`
  ADD PRIMARY KEY (`pdr_id`),
  ADD UNIQUE KEY `date_only` (`pdr_member_id`,`pdr_add_time`);

--
-- Indexes for table `yunpay_pd_transfer`
--
ALTER TABLE `yunpay_pd_transfer`
  ADD PRIMARY KEY (`pdt_id`);

--
-- Indexes for table `yunpay_pd_upgrade`
--
ALTER TABLE `yunpay_pd_upgrade`
  ADD PRIMARY KEY (`pu_id`);

--
-- Indexes for table `yunpay_points_log`
--
ALTER TABLE `yunpay_points_log`
  ADD PRIMARY KEY (`pl_id`);

--
-- Indexes for table `yunpay_points_log_inviter`
--
ALTER TABLE `yunpay_points_log_inviter`
  ADD PRIMARY KEY (`pl_id`);

--
-- Indexes for table `yunpay_points_log_sum`
--
ALTER TABLE `yunpay_points_log_sum`
  ADD PRIMARY KEY (`id`,`pd_memberid`,`pd_addtime`,`pd_last_day`),
  ADD KEY `pd_last_day` (`pd_last_day`);

--
-- Indexes for table `yunpay_p_mansong`
--
ALTER TABLE `yunpay_p_mansong`
  ADD PRIMARY KEY (`mansong_id`);

--
-- Indexes for table `yunpay_p_mansong_rule`
--
ALTER TABLE `yunpay_p_mansong_rule`
  ADD PRIMARY KEY (`rule_id`);

--
-- Indexes for table `yunpay_rcb_log`
--
ALTER TABLE `yunpay_rcb_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yunpay_rechargecard`
--
ALTER TABLE `yunpay_rechargecard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yunpay_rec_position`
--
ALTER TABLE `yunpay_rec_position`
  ADD PRIMARY KEY (`rec_id`);

--
-- Indexes for table `yunpay_refund_reason`
--
ALTER TABLE `yunpay_refund_reason`
  ADD PRIMARY KEY (`reason_id`);

--
-- Indexes for table `yunpay_refund_return`
--
ALTER TABLE `yunpay_refund_return`
  ADD PRIMARY KEY (`refund_id`);

--
-- Indexes for table `yunpay_seller`
--
ALTER TABLE `yunpay_seller`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `yunpay_seller_group`
--
ALTER TABLE `yunpay_seller_group`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `yunpay_seller_log`
--
ALTER TABLE `yunpay_seller_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `yunpay_setting`
--
ALTER TABLE `yunpay_setting`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `yunpay_sms_record`
--
ALTER TABLE `yunpay_sms_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yunpay_spec`
--
ALTER TABLE `yunpay_spec`
  ADD PRIMARY KEY (`sp_id`);

--
-- Indexes for table `yunpay_spec_value`
--
ALTER TABLE `yunpay_spec_value`
  ADD PRIMARY KEY (`sp_value_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `yunpay_stat_member`
--
ALTER TABLE `yunpay_stat_member`
  ADD PRIMARY KEY (`statm_id`);

--
-- Indexes for table `yunpay_stat_order`
--
ALTER TABLE `yunpay_stat_order`
  ADD UNIQUE KEY `order_id` (`order_id`),
  ADD KEY `order_add_time` (`order_add_time`),
  ADD KEY `order_isvalid` (`order_isvalid`);

--
-- Indexes for table `yunpay_stat_ordergoods`
--
ALTER TABLE `yunpay_stat_ordergoods`
  ADD UNIQUE KEY `rec_id` (`rec_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `order_add_time` (`order_add_time`);

--
-- Indexes for table `yunpay_store`
--
ALTER TABLE `yunpay_store`
  ADD PRIMARY KEY (`store_id`),
  ADD UNIQUE KEY `member_id` (`member_id`),
  ADD KEY `store_name` (`store_name`),
  ADD KEY `sc_id` (`sc_id`),
  ADD KEY `store_state` (`store_state`);

--
-- Indexes for table `yunpay_store_bind_class`
--
ALTER TABLE `yunpay_store_bind_class`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `yunpay_store_goods_class`
--
ALTER TABLE `yunpay_store_goods_class`
  ADD PRIMARY KEY (`stc_id`),
  ADD KEY `stc_parent_id` (`stc_parent_id`,`stc_sort`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `yunpay_store_grade`
--
ALTER TABLE `yunpay_store_grade`
  ADD PRIMARY KEY (`sg_id`);

--
-- Indexes for table `yunpay_store_joinin`
--
ALTER TABLE `yunpay_store_joinin`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `yunpay_store_msg`
--
ALTER TABLE `yunpay_store_msg`
  ADD PRIMARY KEY (`sm_id`);

--
-- Indexes for table `yunpay_store_msg_read`
--
ALTER TABLE `yunpay_store_msg_read`
  ADD PRIMARY KEY (`sm_id`,`seller_id`);

--
-- Indexes for table `yunpay_store_msg_setting`
--
ALTER TABLE `yunpay_store_msg_setting`
  ADD PRIMARY KEY (`smt_code`,`store_id`);

--
-- Indexes for table `yunpay_store_msg_tpl`
--
ALTER TABLE `yunpay_store_msg_tpl`
  ADD PRIMARY KEY (`smt_code`);

--
-- Indexes for table `yunpay_store_plate`
--
ALTER TABLE `yunpay_store_plate`
  ADD PRIMARY KEY (`plate_id`);

--
-- Indexes for table `yunpay_store_sns_comment`
--
ALTER TABLE `yunpay_store_sns_comment`
  ADD PRIMARY KEY (`scomm_id`),
  ADD UNIQUE KEY `scomm_id` (`scomm_id`);

--
-- Indexes for table `yunpay_store_sns_setting`
--
ALTER TABLE `yunpay_store_sns_setting`
  ADD PRIMARY KEY (`sauto_storeid`);

--
-- Indexes for table `yunpay_store_sns_tracelog`
--
ALTER TABLE `yunpay_store_sns_tracelog`
  ADD PRIMARY KEY (`strace_id`);

--
-- Indexes for table `yunpay_transport`
--
ALTER TABLE `yunpay_transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yunpay_transport_extend`
--
ALTER TABLE `yunpay_transport_extend`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yunpay_type`
--
ALTER TABLE `yunpay_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `yunpay_upload`
--
ALTER TABLE `yunpay_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `yunpay_voucher`
--
ALTER TABLE `yunpay_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `yunpay_voucher_price`
--
ALTER TABLE `yunpay_voucher_price`
  ADD PRIMARY KEY (`voucher_price_id`);

--
-- Indexes for table `yunpay_voucher_quota`
--
ALTER TABLE `yunpay_voucher_quota`
  ADD PRIMARY KEY (`quota_id`);

--
-- Indexes for table `yunpay_voucher_template`
--
ALTER TABLE `yunpay_voucher_template`
  ADD PRIMARY KEY (`voucher_t_id`);

--
-- Indexes for table `yunpay_vr_order`
--
ALTER TABLE `yunpay_vr_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `yunpay_vr_order_bill`
--
ALTER TABLE `yunpay_vr_order_bill`
  ADD PRIMARY KEY (`ob_no`);

--
-- Indexes for table `yunpay_vr_order_code`
--
ALTER TABLE `yunpay_vr_order_code`
  ADD PRIMARY KEY (`rec_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `yunpay_vr_order_statis`
--
ALTER TABLE `yunpay_vr_order_statis`
  ADD PRIMARY KEY (`os_month`);

--
-- Indexes for table `yunpay_vr_refund`
--
ALTER TABLE `yunpay_vr_refund`
  ADD PRIMARY KEY (`refund_id`);

--
-- Indexes for table `yunpay_zero_goods`
--
ALTER TABLE `yunpay_zero_goods`
  ADD PRIMARY KEY (`goods_id`);

--
-- Indexes for table `yunpay_zero_order`
--
ALTER TABLE `yunpay_zero_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `yunpay_zero_order_goods`
--
ALTER TABLE `yunpay_zero_order_goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `yunpay_address`
--
ALTER TABLE `yunpay_address`
  MODIFY `address_id` mediumint(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '地址ID';
--
-- AUTO_INCREMENT for table `yunpay_admin`
--
ALTER TABLE `yunpay_admin`
  MODIFY `admin_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员ID',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `yunpay_admin_log`
--
ALTER TABLE `yunpay_admin_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=293;
--
-- AUTO_INCREMENT for table `yunpay_adv`
--
ALTER TABLE `yunpay_adv`
  MODIFY `adv_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告自增标识编号',AUTO_INCREMENT=935;
--
-- AUTO_INCREMENT for table `yunpay_adv_position`
--
ALTER TABLE `yunpay_adv_position`
  MODIFY `ap_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告位置id',AUTO_INCREMENT=1047;
--
-- AUTO_INCREMENT for table `yunpay_agent`
--
ALTER TABLE `yunpay_agent`
  MODIFY `agent_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '代理ID';
--
-- AUTO_INCREMENT for table `yunpay_agent_area`
--
ALTER TABLE `yunpay_agent_area`
  MODIFY `aa_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `yunpay_album_class`
--
ALTER TABLE `yunpay_album_class`
  MODIFY `aclass_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '相册id',AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `yunpay_album_pic`
--
ALTER TABLE `yunpay_album_pic`
  MODIFY `apic_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '相册图片表id',AUTO_INCREMENT=919;
--
-- AUTO_INCREMENT for table `yunpay_area`
--
ALTER TABLE `yunpay_area`
  MODIFY `area_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引ID',AUTO_INCREMENT=45060;
--
-- AUTO_INCREMENT for table `yunpay_arrival_notice`
--
ALTER TABLE `yunpay_arrival_notice`
  MODIFY `an_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '通知id';
--
-- AUTO_INCREMENT for table `yunpay_article`
--
ALTER TABLE `yunpay_article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '索引id',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `yunpay_article_class`
--
ALTER TABLE `yunpay_article_class`
  MODIFY `ac_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引ID',AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `yunpay_attribute`
--
ALTER TABLE `yunpay_attribute`
  MODIFY `attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '属性id',AUTO_INCREMENT=221;
--
-- AUTO_INCREMENT for table `yunpay_attribute_value`
--
ALTER TABLE `yunpay_attribute_value`
  MODIFY `attr_value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '属性值id',AUTO_INCREMENT=3181;
--
-- AUTO_INCREMENT for table `yunpay_bank`
--
ALTER TABLE `yunpay_bank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `yunpay_brand`
--
ALTER TABLE `yunpay_brand`
  MODIFY `brand_id` mediumint(11) NOT NULL AUTO_INCREMENT COMMENT '索引ID',AUTO_INCREMENT=365;
--
-- AUTO_INCREMENT for table `yunpay_cart`
--
ALTER TABLE `yunpay_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id';
--
-- AUTO_INCREMENT for table `yunpay_complain`
--
ALTER TABLE `yunpay_complain`
  MODIFY `complain_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '投诉id';
--
-- AUTO_INCREMENT for table `yunpay_complain_subject`
--
ALTER TABLE `yunpay_complain_subject`
  MODIFY `complain_subject_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '投诉主题id',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `yunpay_complain_talk`
--
ALTER TABLE `yunpay_complain_talk`
  MODIFY `talk_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '投诉对话id';
--
-- AUTO_INCREMENT for table `yunpay_consult`
--
ALTER TABLE `yunpay_consult`
  MODIFY `consult_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '咨询编号';
--
-- AUTO_INCREMENT for table `yunpay_consult_type`
--
ALTER TABLE `yunpay_consult_type`
  MODIFY `ct_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '咨询类型id',AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `yunpay_coupons`
--
ALTER TABLE `yunpay_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT for table `yunpay_cron`
--
ALTER TABLE `yunpay_cron`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `yunpay_daddress`
--
ALTER TABLE `yunpay_daddress`
  MODIFY `address_id` mediumint(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '地址ID';
--
-- AUTO_INCREMENT for table `yunpay_delivery_point`
--
ALTER TABLE `yunpay_delivery_point`
  MODIFY `dlyp_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '提货站id';
--
-- AUTO_INCREMENT for table `yunpay_document`
--
ALTER TABLE `yunpay_document`
  MODIFY `doc_id` mediumint(11) NOT NULL AUTO_INCREMENT COMMENT 'id',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `yunpay_evaluate_goods`
--
ALTER TABLE `yunpay_evaluate_goods`
  MODIFY `geval_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评价ID';
--
-- AUTO_INCREMENT for table `yunpay_evaluate_store`
--
ALTER TABLE `yunpay_evaluate_store`
  MODIFY `seval_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评价ID';
--
-- AUTO_INCREMENT for table `yunpay_exppoints_log`
--
ALTER TABLE `yunpay_exppoints_log`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '经验值日志编号';
--
-- AUTO_INCREMENT for table `yunpay_express`
--
ALTER TABLE `yunpay_express`
  MODIFY `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引ID',AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `yunpay_feedback`
--
ALTER TABLE `yunpay_feedback`
  MODIFY `fb_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `yunpay_fund`
--
ALTER TABLE `yunpay_fund`
  MODIFY `fund_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `yunpay_fund_log`
--
ALTER TABLE `yunpay_fund_log`
  MODIFY `fl_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `yunpay_gadmin`
--
ALTER TABLE `yunpay_gadmin`
  MODIFY `gid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `yunpay_goods`
--
ALTER TABLE `yunpay_goods`
  MODIFY `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id(SKU)',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `yunpay_goods_class`
--
ALTER TABLE `yunpay_goods_class`
  MODIFY `gc_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引ID',AUTO_INCREMENT=1057;
--
-- AUTO_INCREMENT for table `yunpay_goods_class_staple`
--
ALTER TABLE `yunpay_goods_class_staple`
  MODIFY `staple_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '常用分类id',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `yunpay_goods_class_tag`
--
ALTER TABLE `yunpay_goods_class_tag`
  MODIFY `gc_tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'TAGid',AUTO_INCREMENT=900;
--
-- AUTO_INCREMENT for table `yunpay_goods_combo`
--
ALTER TABLE `yunpay_goods_combo`
  MODIFY `combo_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '推荐组合id ';
--
-- AUTO_INCREMENT for table `yunpay_goods_common`
--
ALTER TABLE `yunpay_goods_common`
  MODIFY `goods_commonid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品公共表id',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `yunpay_goods_fcode`
--
ALTER TABLE `yunpay_goods_fcode`
  MODIFY `fc_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'F码id';
--
-- AUTO_INCREMENT for table `yunpay_goods_gift`
--
ALTER TABLE `yunpay_goods_gift`
  MODIFY `gift_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '赠品id ';
--
-- AUTO_INCREMENT for table `yunpay_goods_images`
--
ALTER TABLE `yunpay_goods_images`
  MODIFY `goods_image_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品图片id',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `yunpay_help`
--
ALTER TABLE `yunpay_help`
  MODIFY `help_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '帮助ID',AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `yunpay_help_type`
--
ALTER TABLE `yunpay_help_type`
  MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '类型ID',AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `yunpay_inform`
--
ALTER TABLE `yunpay_inform`
  MODIFY `inform_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '举报id';
--
-- AUTO_INCREMENT for table `yunpay_inform_subject`
--
ALTER TABLE `yunpay_inform_subject`
  MODIFY `inform_subject_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '举报主题id',AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `yunpay_inform_subject_type`
--
ALTER TABLE `yunpay_inform_subject_type`
  MODIFY `inform_type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '举报类型id',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `yunpay_invoice`
--
ALTER TABLE `yunpay_invoice`
  MODIFY `inv_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '索引id';
--
-- AUTO_INCREMENT for table `yunpay_link`
--
ALTER TABLE `yunpay_link`
  MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引id',AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `yunpay_mail_cron`
--
ALTER TABLE `yunpay_mail_cron`
  MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '消息任务计划id';
--
-- AUTO_INCREMENT for table `yunpay_mall_consult`
--
ALTER TABLE `yunpay_mall_consult`
  MODIFY `mc_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '平台客服咨询id';
--
-- AUTO_INCREMENT for table `yunpay_mall_consult_type`
--
ALTER TABLE `yunpay_mall_consult_type`
  MODIFY `mct_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '平台客服咨询类型id',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `yunpay_mb_article`
--
ALTER TABLE `yunpay_mb_article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '索引id';
--
-- AUTO_INCREMENT for table `yunpay_mb_article_class`
--
ALTER TABLE `yunpay_mb_article_class`
  MODIFY `ac_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引ID';
--
-- AUTO_INCREMENT for table `yunpay_mb_feedback`
--
ALTER TABLE `yunpay_mb_feedback`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `yunpay_mb_special`
--
ALTER TABLE `yunpay_mb_special`
  MODIFY `special_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '专题编号';
--
-- AUTO_INCREMENT for table `yunpay_mb_special_item`
--
ALTER TABLE `yunpay_mb_special_item`
  MODIFY `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '专题项目编号',AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `yunpay_mb_user_token`
--
ALTER TABLE `yunpay_mb_user_token`
  MODIFY `token_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '令牌编号',AUTO_INCREMENT=1862;
--
-- AUTO_INCREMENT for table `yunpay_member`
--
ALTER TABLE `yunpay_member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员id',AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `yunpay_member_bank`
--
ALTER TABLE `yunpay_member_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `yunpay_member_card`
--
ALTER TABLE `yunpay_member_card`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '银行卡ID';
--
-- AUTO_INCREMENT for table `yunpay_message`
--
ALTER TABLE `yunpay_message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '短消息索引id',AUTO_INCREMENT=322;
--
-- AUTO_INCREMENT for table `yunpay_navigation`
--
ALTER TABLE `yunpay_navigation`
  MODIFY `nav_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '索引ID',AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `yunpay_oil_card`
--
ALTER TABLE `yunpay_oil_card`
  MODIFY `oc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `yunpay_oil_log`
--
ALTER TABLE `yunpay_oil_log`
  MODIFY `ol_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `yunpay_order`
--
ALTER TABLE `yunpay_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单索引id';
--
-- AUTO_INCREMENT for table `yunpay_order_bill`
--
ALTER TABLE `yunpay_order_bill`
  MODIFY `ob_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '结算单编号(年月店铺ID)';
--
-- AUTO_INCREMENT for table `yunpay_order_common`
--
ALTER TABLE `yunpay_order_common`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单索引id';
--
-- AUTO_INCREMENT for table `yunpay_order_goods`
--
ALTER TABLE `yunpay_order_goods`
  MODIFY `rec_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单商品表索引id';
--
-- AUTO_INCREMENT for table `yunpay_order_log`
--
ALTER TABLE `yunpay_order_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键';
--
-- AUTO_INCREMENT for table `yunpay_order_pay`
--
ALTER TABLE `yunpay_order_pay`
  MODIFY `pay_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `yunpay_pd_cash`
--
ALTER TABLE `yunpay_pd_cash`
  MODIFY `pdc_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增编号',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `yunpay_pd_log`
--
ALTER TABLE `yunpay_pd_log`
  MODIFY `lg_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增编号',AUTO_INCREMENT=204;
--
-- AUTO_INCREMENT for table `yunpay_pd_recharge`
--
ALTER TABLE `yunpay_pd_recharge`
  MODIFY `pdr_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增编号',AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `yunpay_pd_redeemable`
--
ALTER TABLE `yunpay_pd_redeemable`
  MODIFY `pdr_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增编号',AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `yunpay_pd_transfer`
--
ALTER TABLE `yunpay_pd_transfer`
  MODIFY `pdt_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增编号',AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `yunpay_pd_upgrade`
--
ALTER TABLE `yunpay_pd_upgrade`
  MODIFY `pu_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `yunpay_points_log`
--
ALTER TABLE `yunpay_points_log`
  MODIFY `pl_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '积分日志编号',AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `yunpay_points_log_inviter`
--
ALTER TABLE `yunpay_points_log_inviter`
  MODIFY `pl_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '积分日志编号',AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `yunpay_points_log_sum`
--
ALTER TABLE `yunpay_points_log_sum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `yunpay_p_mansong`
--
ALTER TABLE `yunpay_p_mansong`
  MODIFY `mansong_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '满送活动编号';
--
-- AUTO_INCREMENT for table `yunpay_p_mansong_rule`
--
ALTER TABLE `yunpay_p_mansong_rule`
  MODIFY `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则编号';
--
-- AUTO_INCREMENT for table `yunpay_rcb_log`
--
ALTER TABLE `yunpay_rcb_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增编号';
--
-- AUTO_INCREMENT for table `yunpay_rechargecard`
--
ALTER TABLE `yunpay_rechargecard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID';
--
-- AUTO_INCREMENT for table `yunpay_rec_position`
--
ALTER TABLE `yunpay_rec_position`
  MODIFY `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `yunpay_refund_reason`
--
ALTER TABLE `yunpay_refund_reason`
  MODIFY `reason_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '原因ID',AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `yunpay_refund_return`
--
ALTER TABLE `yunpay_refund_return`
  MODIFY `refund_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '记录ID';
--
-- AUTO_INCREMENT for table `yunpay_seller`
--
ALTER TABLE `yunpay_seller`
  MODIFY `seller_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '卖家编号',AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `yunpay_seller_group`
--
ALTER TABLE `yunpay_seller_group`
  MODIFY `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '卖家组编号';
--
-- AUTO_INCREMENT for table `yunpay_seller_log`
--
ALTER TABLE `yunpay_seller_log`
  MODIFY `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志编号';
--
-- AUTO_INCREMENT for table `yunpay_sms_record`
--
ALTER TABLE `yunpay_sms_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `yunpay_spec`
--
ALTER TABLE `yunpay_spec`
  MODIFY `sp_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规格id',AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `yunpay_spec_value`
--
ALTER TABLE `yunpay_spec_value`
  MODIFY `sp_value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规格值id',AUTO_INCREMENT=433;
--
-- AUTO_INCREMENT for table `yunpay_stat_member`
--
ALTER TABLE `yunpay_stat_member`
  MODIFY `statm_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID';
--
-- AUTO_INCREMENT for table `yunpay_store`
--
ALTER TABLE `yunpay_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '店铺索引id',AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `yunpay_store_bind_class`
--
ALTER TABLE `yunpay_store_bind_class`
  MODIFY `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `yunpay_store_goods_class`
--
ALTER TABLE `yunpay_store_goods_class`
  MODIFY `stc_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '索引ID';
--
-- AUTO_INCREMENT for table `yunpay_store_grade`
--
ALTER TABLE `yunpay_store_grade`
  MODIFY `sg_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引ID',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `yunpay_store_msg`
--
ALTER TABLE `yunpay_store_msg`
  MODIFY `sm_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '店铺消息id';
--
-- AUTO_INCREMENT for table `yunpay_store_plate`
--
ALTER TABLE `yunpay_store_plate`
  MODIFY `plate_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '关联板式id';
--
-- AUTO_INCREMENT for table `yunpay_store_sns_comment`
--
ALTER TABLE `yunpay_store_sns_comment`
  MODIFY `scomm_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '店铺动态评论id';
--
-- AUTO_INCREMENT for table `yunpay_store_sns_tracelog`
--
ALTER TABLE `yunpay_store_sns_tracelog`
  MODIFY `strace_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '店铺动态id';
--
-- AUTO_INCREMENT for table `yunpay_transport`
--
ALTER TABLE `yunpay_transport`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '运费模板ID';
--
-- AUTO_INCREMENT for table `yunpay_transport_extend`
--
ALTER TABLE `yunpay_transport_extend`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '运费模板扩展ID';
--
-- AUTO_INCREMENT for table `yunpay_type`
--
ALTER TABLE `yunpay_type`
  MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '类型id',AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `yunpay_upload`
--
ALTER TABLE `yunpay_upload`
  MODIFY `upload_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引ID',AUTO_INCREMENT=181;
--
-- AUTO_INCREMENT for table `yunpay_voucher`
--
ALTER TABLE `yunpay_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '代金券编号';
--
-- AUTO_INCREMENT for table `yunpay_voucher_price`
--
ALTER TABLE `yunpay_voucher_price`
  MODIFY `voucher_price_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '代金券面值编号';
--
-- AUTO_INCREMENT for table `yunpay_voucher_quota`
--
ALTER TABLE `yunpay_voucher_quota`
  MODIFY `quota_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '套餐编号';
--
-- AUTO_INCREMENT for table `yunpay_voucher_template`
--
ALTER TABLE `yunpay_voucher_template`
  MODIFY `voucher_t_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '代金券模版编号';
--
-- AUTO_INCREMENT for table `yunpay_vr_order`
--
ALTER TABLE `yunpay_vr_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '虚拟订单索引id';
--
-- AUTO_INCREMENT for table `yunpay_vr_order_code`
--
ALTER TABLE `yunpay_vr_order_code`
  MODIFY `rec_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '兑换码表索引id';
--
-- AUTO_INCREMENT for table `yunpay_vr_refund`
--
ALTER TABLE `yunpay_vr_refund`
  MODIFY `refund_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '记录ID';
--
-- AUTO_INCREMENT for table `yunpay_zero_goods`
--
ALTER TABLE `yunpay_zero_goods`
  MODIFY `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id(SKU)';
--
-- AUTO_INCREMENT for table `yunpay_zero_order`
--
ALTER TABLE `yunpay_zero_order`
  MODIFY `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单索引id';
--
-- AUTO_INCREMENT for table `yunpay_zero_order_goods`
--
ALTER TABLE `yunpay_zero_order_goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单商品表索引id';
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
