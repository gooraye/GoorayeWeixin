-- phpMyAdmin SQL Dump
-- version 4.2.0-alpha2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2014-06-24 20:11:09
-- 服务器版本： 5.5.35-log
-- PHP Version: 5.5.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lib_gr001`
--

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_access`
--

CREATE TABLE IF NOT EXISTS `gooraye_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_adma`
--

CREATE TABLE IF NOT EXISTS `gooraye_adma` (
`id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `url` varchar(100) NOT NULL,
  `copyright` varchar(50) NOT NULL,
  `info` varchar(120) NOT NULL,
  `title` varchar(60) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='diy 宣传页' AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_alipay_config`
--

CREATE TABLE IF NOT EXISTS `gooraye_alipay_config` (
  `token` varchar(60) NOT NULL,
  `paytype` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `pid` varchar(40) NOT NULL DEFAULT '',
  `key` varchar(200) NOT NULL DEFAULT '',
  `partnerkey` varchar(100) NOT NULL DEFAULT '',
  `appsecret` varchar(200) NOT NULL DEFAULT '',
  `appid` varchar(60) NOT NULL DEFAULT '',
  `paysignkey` varchar(200) NOT NULL DEFAULT '',
  `partnerid` varchar(200) NOT NULL DEFAULT '',
  `open` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_api`
--

CREATE TABLE IF NOT EXISTS `gooraye_api` (
`id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `token` varchar(60) NOT NULL,
  `url` varchar(100) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `is_colation` tinyint(1) NOT NULL,
  `colation_keyword` varchar(100) NOT NULL,
  `number` tinyint(1) NOT NULL,
  `order` tinyint(1) NOT NULL,
  `time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='第三方api接口表' AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_areply`
--

CREATE TABLE IF NOT EXISTS `gooraye_areply` (
`id` int(11) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `token` char(30) NOT NULL,
  `home` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `gooraye_areply`
--

INSERT INTO `gooraye_areply` (`id`, `keyword`, `content`, `uid`, `uname`, `createtime`, `updatetime`, `token`, `home`) VALUES
(2, '首页', '1.附近周边信息查询lbs\r\n2.音乐查询　音乐＋音乐名 例：音乐爱你一万年\r\n3.天气查询　城市名＋天气　例上海天气\r\n4.手机归属地查询(吉凶 运势) 手机＋手机号码　例：手机13917778912\r\n5.身份证查询　身份证＋号码　　例：身份证342423198803015568\r\n6.公交查询　公交＋城市＋公交编号　例：上海公交774\r\n7.火车查询　火车＋城市＋目的地　例火车上海南京\r\n8.翻译 支持 及时翻译，语音翻译　翻译＋关键词 例：翻译你好\r\n9.彩票查询　彩票＋彩票名 例如:彩票双色球\r\n10.周公解梦　梦见+关键词　例如:梦见父母\r\n11.陪聊　直接输入聊天关键词即可\r\n12.聊天　直接输入聊天关键词即可\r\n13.藏头诗 藏头诗+关键词　例：藏头诗我爱你　\r\n14.笑话　直接发送笑话\r\n15.糗事　直接发送糗事\r\n16.快递 快递＋快递名＋快递号　例：快递顺丰117215889174\r\n17.健康指数查询　健康＋高，＋重　例：健康170,65\r\n18.朗读 朗读＋关键词　例：朗读微信多用户微信营销系统多用户营销系统\r\n19.计算器 计算器使用方法　例：计算50-50　，计算100*100\r\n20.输入价格了解微信多用户微信营销系统平台系统的价格\r\n21.输入服务了解微信多用户微信营销系统平台系统的售后服务\r\n23.输入抽奖，即可玩幸运大抽奖\r\n2４.输入会员即可填写会员资料\r\n25.更多功能请回复帮助，或者help', 7, '', '1402975271', '', 'ubddyd1402964682', '0'),
(3, 'help', '1.附近周边信息查询lbs\r\n2.音乐查询　音乐＋音乐名 例：音乐爱你一万年\r\n3.天气查询　城市名＋天气　例上海天气\r\n4.手机归属地查询(吉凶 运势) 手机＋手机号码　例：手机13917778912\r\n5.身份证查询　身份证＋号码　　例：身份证342423198803015568\r\n6.公交查询　公交＋城市＋公交编号　例：上海公交774\r\n7.火车查询　火车＋城市＋目的地　例火车上海南京\r\n8.翻译 支持 及时翻译，语音翻译　翻译＋关键词 例：翻译你好\r\n9.彩票查询　彩票＋彩票名 例如:彩票双色球\r\n10.周公解梦　梦见+关键词　例如:梦见父母\r\n11.陪聊　直接输入聊天关键词即可\r\n12.聊天　直接输入聊天关键词即可\r\n13.藏头诗 藏头诗+关键词　例：藏头诗我爱你　\r\n14.笑话　直接发送笑话\r\n15.糗事　直接发送糗事\r\n16.快递 快递＋快递名＋快递号　例：快递顺丰117215889174\r\n17.健康指数查询　健康＋高，＋重　例：健康170,65\r\n18.朗读 朗读＋关键词　例：朗读微信多用户微信营销系统多用户营销系统\r\n19.计算器 计算器使用方法　例：计算50-50　，计算100*100\r\n20.输入价格了解微信多用户微信营销系统平台系统的价格\r\n21.输入服务了解微信多用户微信营销系统平台系统的售后服务\r\n23.输入抽奖，即可玩幸运大抽奖\r\n2４.输入会员即可填写会员资料\r\n25.更多功能请回复帮助，或者help', 8, '', '1403060025', '', 'caspcu1403054302', '0');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_attribute`
--

CREATE TABLE IF NOT EXISTS `gooraye_attribute` (
`id` int(10) unsigned NOT NULL,
  `token` varchar(50) NOT NULL,
  `catid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `name` varchar(100) NOT NULL COMMENT '属性名',
  `value` varchar(100) NOT NULL COMMENT '属性值'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='商品的属性' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `gooraye_attribute`
--

INSERT INTO `gooraye_attribute` (`id`, `token`, `catid`, `name`, `value`) VALUES
(1, 'caspcu1403054302', 3, '111', '111'),
(2, 'caspcu1403054302', 3, 'aaa', 'aaa');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_behavior`
--

CREATE TABLE IF NOT EXISTS `gooraye_behavior` (
`id` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `date` varchar(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `model` varchar(60) NOT NULL,
  `num` int(11) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=701 ;

--
-- 转存表中的数据 `gooraye_behavior`
--

INSERT INTO `gooraye_behavior` (`id`, `fid`, `token`, `openid`, `date`, `enddate`, `model`, `num`, `keyword`, `type`) VALUES
(501, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1402975190, 'chat', 1, 'hebidu', 0),
(502, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1402975195, 'chat', 1, 'B', 0),
(503, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1402975204, 'chat', 1, '当', 0),
(504, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1402975348, 'chat', 1, 'l b s', 0),
(505, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1402975352, 'chat', 1, 'Lbs', 0),
(506, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1402975591, 'chat', 2, 'wall', 0),
(507, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1402983846, 'chat', 1, ' 歌词爱你一万年', 0),
(508, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1402984984, 'chat', 1, '上海天气', 0),
(509, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1402992855, 'chat', 1, '中通 72835237135', 0),
(510, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1402993658, 'chat', 1, '日语中国', 0),
(511, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1402993806, 'chat', 2, '法语我爱你', 0),
(512, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1402994488, 'chat', 1, '中通72835237135', 0),
(513, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1402994671, 'chat', 1, '中通728385237135', 0),
(514, 1, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402995090, 'follow', 1, '用户关注', 0),
(515, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402995392, 'chat', 1, '15058026959', 0),
(516, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402995405, 'chat', 1, '18257567105', 0),
(517, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402995420, 'chat', 1, '18257584521', 0),
(518, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1402995455, 'chat', 1, ' 15058026959', 0),
(519, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402995490, 'chat', 1, '330621199108132323', 0),
(520, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1402995524, 'chat', 1, '330621199108132323', 0),
(521, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402995558, 'chat', 1, '330621199107248391', 0),
(522, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402995616, 'chat', 1, '绍兴公88路', 0),
(523, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1402995711, 'chat', 14, '13484379290', 0),
(524, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402995781, 'chat', 1, '高185 重65', 0),
(525, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402995850, 'chat', 1, '韩语你好', 0),
(526, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402995870, 'chat', 1, '韩语你真漂亮', 0),
(527, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402996057, 'chat', 1, '要怎么减肥', 0),
(528, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402996076, 'chat', 1, '要怎么哄女人开心', 0),
(529, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402996106, 'chat', 1, '徐梦斐 人品', 0),
(530, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402996120, 'chat', 1, '李白 人品', 0),
(531, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402996146, 'chat', 2, '6', 0),
(532, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402996170, 'chat', 1, '/::D', 0),
(533, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402996190, 'chat', 1, '糗事', 0),
(534, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402996223, 'chat', 1, '谜语', 0),
(535, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402996279, 'chat', 1, '一见如故', 0),
(536, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402996321, 'chat', 1, '成语 一见如故', 0),
(537, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402996352, 'chat', 1, '你好', 0),
(538, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402996412, 'chat', 1, '问 你是谁 答 我是比', 0),
(539, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402996427, 'chat', 1, '你是谁', 0),
(540, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402996460, 'chat', 1, '问 你是谁 答 我是财务啊', 0),
(541, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402996503, 'chat', 1, '人像摄影', 0),
(542, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402996544, 'chat', 1, 'cts 我爱绍兴', 0),
(543, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402996561, 'chat', 1, 'cts 我爱你绍兴', 0),
(544, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402996572, 'chat', 1, 'ctws 我爱绍兴', 0),
(545, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1402996810, 'chat', 2, '高173 重64', 0),
(546, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402996849, 'chat', 1, '来首歌', 0),
(547, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402997004, 'chat', 1, '股票 601088', 0),
(548, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402997037, 'chat', 1, '彩票双色球', 0),
(549, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402997232, 'chat', 1, 'cet杨奕3520111221103023', 0),
(550, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1402997249, 'chat', 1, '13625008699', 0),
(551, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402997252, 'chat', 1, '9999', 0),
(552, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402997290, 'chat', 1, '电影 爱有来生', 0),
(553, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1402997394, 'chat', 2, '手机13484379290', 0),
(554, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1402997410, 'chat', 1, 'shouji13484379290', 0),
(555, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402997455, 'chat', 1, '刮刮卡', 0),
(556, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402997482, 'chat', 1, '大转盘', 0),
(557, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402997504, 'chat', 1, '优惠券', 0),
(558, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1402997685, 'chat', 1, '路况', 0),
(559, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1403000091, 'chat', 1, '药价桑菊感冒颗粒', 0),
(560, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1403000120, 'chat', 1, 'Z11021209', 0),
(561, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1403000186, 'chat', 1, '鞋子', 0),
(562, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1403001531, 'chat', 2, '手机', 0),
(563, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1403003173, 'chat', 1, '手15058026959', 0),
(564, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1403003515, 'chat', 1, '火车  k322', 0),
(565, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-17', 1403003585, 'chat', 1, '火车 D5466', 0),
(566, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1403003706, 'chat', 1, '法语过来', 0),
(567, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1403005063, 'chat', 1, '人品计算', 0),
(568, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1403005070, 'chat', 1, '人品何必都', 0),
(569, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1403005331, 'chat', 1, '李白 人品', 0),
(570, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1403005337, 'chat', 1, '人品 李白', 0),
(571, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1403005343, 'chat', 1, '人品李白', 0),
(572, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1403005350, 'chat', 1, '李白人品', 0),
(573, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-17', 1403019838, 'chat', 1, '糗事', 0),
(574, 0, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-18', 1403055008, 'chat', 1, '微官网', 0),
(575, 0, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-18', 1403055380, 'chat', 2, '用户关注', 0),
(576, 0, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-18', 1403055396, 'chat', 8, '微官网', 0),
(577, 0, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-18', 1403055948, 'home', 4, '首页', 1),
(578, 0, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-18', 1403055999, 'chat', 1, '车系', 0),
(579, 0, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-18', 1403056009, 'chat', 1, '客服', 0),
(580, 0, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-18', 1403057280, 'chat', 2, '精彩东南', 0),
(581, 0, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-18', 1403057569, 'chat', 1, '走进东南', 0),
(582, 0, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-18', 1403057866, 'chat', 2, '走进东南', 0),
(583, 0, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-18', 1403059919, 'help', 4, 'help', 1),
(584, 0, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-18', 1403059972, 'help', 1, 'help', 1),
(585, 2, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-18', 1403060043, 'Text', 1, 'h', 0),
(586, 2, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-18', 1403060062, 'Text', 1, 'h', 0),
(587, 12, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-18', 1403060271, 'Img', 1, 'help3', 0),
(588, 12, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-18', 1403060335, 'Img', 1, 'help35', 0),
(589, 0, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-18', 1403060382, 'chat', 1, '\n美丽', 0),
(590, 12, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-18', 1403060400, 'Img', 2, '美丽', 0),
(591, 12, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-18', 1403060437, 'Img', 1, '美丽', 0),
(592, 1, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-18', 1403060498, 'Voiceresponse', 1, '语音回复', 0),
(593, 1, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-18', 1403060520, 'Voiceresponse', 1, '语音', 0),
(594, 12, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-18', 1403060546, 'Img', 1, '图文', 0),
(595, 12, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-18', 1403060551, 'Img', 2, '图文回复', 0),
(596, 12, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-18', 1403060552, 'Img', 1, '图文回复', 0),
(597, 0, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-18', 1403060893, 'home', 3, 'home', 1),
(598, 0, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-18', 1403060970, 'home', 2, '首页', 1),
(599, 13, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-18', 1403061268, 'Img', 1, '图文回复', 0),
(600, 0, 'caspcu1403054302', 'oqMIVt8_WGJBCVtbp3MoIUl_Lm2k', '2014-06-18', 1403062330, 'chat', 1, '走进东南', 0),
(601, 0, 'caspcu1403054302', 'oqMIVt8_WGJBCVtbp3MoIUl_Lm2k', '2014-06-18', 1403062342, 'home', 1, '首页', 1),
(602, 0, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-18', 1403062800, 'chat', 1, '彩票 双色球', 0),
(603, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-18', 1403071145, 'chat', 1, '彩票 双色球', 0),
(604, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-18', 1403071203, 'chat', 1, '彩票 双色球 20140618', 0),
(605, 12, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-18', 1403072938, 'Img', 2, '走进东南', 0),
(606, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-18', 1403075391, 'chat', 2, '聊天 谁', 0),
(607, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-18', 1403075477, 'chat', 1, '聊天 你是', 0),
(608, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-18', 1403075493, 'chat', 1, '聊天 你叫什么', 0),
(609, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-18', 1403075900, 'chat', 4, '聊天 你叫', 0),
(610, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-18', 1403076533, 'chat', 1, '火车 k164', 0),
(611, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-18', 1403077001, 'chat', 1, '/::D', 0),
(612, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-18', 1403077008, 'chat', 1, '/::P', 0),
(613, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-18', 1403079206, 'chat', 8, '电影 哥斯拉', 0),
(614, 22, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-18', 1403081745, 'Img', 1, '品牌文化', 0),
(615, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-18', 1403081897, 'chat', 1, '电影 中国合伙人', 0),
(616, 0, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-18', 1403082004, 'chat', 1, '预约试驾', 0),
(617, 0, 'caspcu1403054302', 'oqMIVt8_WGJBCVtbp3MoIUl_Lm2k', '2014-06-19', 1403139515, 'chat', 2, '电影 黑色子弹', 0),
(618, 12, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', '2014-06-19', 1403140237, 'Img', 1, '走进东南', 0),
(619, 0, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', '2014-06-19', 1403140247, 'chat', 2, '三菱品牌车型', 0),
(620, 14, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', '2014-06-19', 1403140254, 'Img', 1, '热惠活动', 0),
(621, 0, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', '2014-06-19', 1403140273, 'chat', 1, '预约试驾', 0),
(622, 25, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', '2014-06-19', 1403140277, 'Img', 1, '用车指南', 0),
(623, 16, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', '2014-06-19', 1403140280, 'Img', 2, '服务理念', 0),
(624, 0, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-19', 1403140911, 'chat', 1, '微论坛', 0),
(625, 0, 'caspcu1403054302', 'oqMIVt8_WGJBCVtbp3MoIUl_Lm2k', '2014-06-19', 1403140984, 'chat', 1, '顺丰 130004442691', 0),
(626, 0, 'caspcu1403054302', 'oqMIVt4q_YCy4Pep2QGItFI0DYhw', '2014-06-19', 1403141442, 'chat', 1, '撒比', 0),
(627, 0, 'caspcu1403054302', 'oqMIVt4q_YCy4Pep2QGItFI0DYhw', '2014-06-19', 1403141480, 'chat', 1, '光头佬傻逼', 0),
(628, 0, 'caspcu1403054302', 'oqMIVt8_WGJBCVtbp3MoIUl_Lm2k', '2014-06-19', 1403142789, 'chat', 1, '古睿官网', 0),
(629, 0, 'caspcu1403054302', 'oqMIVt8_WGJBCVtbp3MoIUl_Lm2k', '2014-06-19', 1403142850, 'home', 1, '首页', 1),
(630, 0, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-19', 1403142861, 'home', 1, '首页', 1),
(631, 0, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '2014-06-19', 1403145053, 'chat', 1, '要怎么哄女人开心', 0),
(632, 1, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-19', 1403145421, 'Lottery', 1, '刮刮卡', 0),
(633, 0, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-19', 1403146560, 'home', 1, '首页', 1),
(634, 12, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', '2014-06-19', 1403146822, 'Img', 2, '走进古睿', 0),
(635, 17, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', '2014-06-19', 1403146939, 'Img', 2, '古睿文化', 0),
(636, 0, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', '2014-06-19', 1403146955, 'home', 2, '首页', 1),
(637, 0, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', '2014-06-19', 1403147029, 'chat', 2, '微通汇', 0),
(638, 0, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', '2014-06-19', 1403147031, 'chat', 5, '在线模板', 0),
(639, 1, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', '2014-06-19', 1403147083, 'Lottery', 3, '用户关注', 0),
(640, 0, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-19', 1403149068, 'chat', 1, '在线模板', 0),
(641, 1, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-19', 1403149080, 'Lottery', 1, '用户关注', 0),
(642, 2, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-21', 1403344343, 'Wall', 2, '微信墙', 0),
(643, 0, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-21', 1403344486, 'chat', 1, '我上墙了膜', 0),
(644, 2, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-21', 1403344872, 'Shake', 1, 'yao', 0),
(645, 1, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-21', 1403345518, 'Lottery', 1, '刮刮卡', 0),
(646, 2, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-21', 1403345640, 'Lottery', 1, '大转盘', 0),
(647, 3, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-21', 1403345749, 'Lottery', 1, '水果达人', 0),
(648, 1, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-22', 1403410048, 'Panorama', 1, '360', 0),
(649, 12, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', '2014-06-22', 1403438590, 'Img', 1, '走进古睿', 0),
(650, 17, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', '2014-06-22', 1403438600, 'Img', 1, '古睿文化', 0),
(651, 0, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', '2014-06-22', 1403438607, 'home', 1, '首页', 1),
(652, 0, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', '2014-06-22', 1403438613, 'chat', 6, '在线模板', 0),
(653, 0, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', '2014-06-22', 1403438630, 'chat', 7, '微通汇', 0),
(654, 16, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', '2014-06-22', 1403438647, 'Img', 1, '服务理念', 0),
(655, 1, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', '2014-06-22', 1403438656, 'Panorama', 3, '用户关注', 0),
(656, 0, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', '2014-06-22', 1403438766, 'chat', 1, '你好', 0),
(657, 0, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-23', 1403487754, 'chat', 2, '不是', 0),
(658, 0, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-23', 1403487762, 'chat', 1, '是', 0),
(659, 2, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-23', 1403489431, 'Panorama', 1, '360', 0),
(660, 1, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-23', 1403492430, 'Wedding', 1, '恭喜', 0),
(661, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-23', 1403493384, 'chat', 1, '微论坛', 0),
(662, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-23', 1403493468, 'chat', 1, '留言板', 0),
(663, 1, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-23', 1403493839, 'Vote', 2, '投票', 0),
(664, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-23', 1403506959, 'chat', 3, '大转盘', 0),
(665, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-23', 1403507216, 'chat', 1, '刮刮卡', 0),
(666, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-23', 1403507362, 'chat', 4, '刮刮卡1', 0),
(667, 2, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-23', 1403509877, 'Vote', 1, '投票1', 0),
(668, 1, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-23', 1403510427, 'Carset', 2, '汽车', 0),
(669, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-23', 1403510523, 'chat', 3, '微汽车', 0),
(670, 1, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-23', 1403510549, 'Carowner', 1, '44', 0),
(671, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-23', 1403510651, 'chat', 1, '玛莎拉蒂', 0),
(672, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-23', 1403512085, 'chat', 1, '楼盘', 0),
(673, 1, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-23', 1403512155, 'Estate', 1, '楼盘', 0),
(674, 1, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-23', 1403513196, 'Schoolset', 1, '学校', 0),
(675, 2, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-23', 1403513800, 'medicalSet', 1, '微医疗', 0),
(676, 3, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-23', 1403514344, 'Selfform', 1, '123', 0),
(677, 3, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-23', 1403514662, 'Host', 1, '商家', 0),
(678, 0, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-24', 1403573846, 'chat', 2, '糗事', 0),
(679, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-24', 1403575757, 'chat', 1, '微商城', 0),
(680, 0, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-24', 1403576061, 'home', 2, '首页', 1),
(681, 0, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '2014-06-24', 1403576417, 'album', 2, '相册', 1),
(682, 0, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', '2014-06-24', 1403577604, 'chat', 1, '/::+', 0),
(683, 0, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-24', 1403577917, 'chat', 1, '分享', 0),
(684, 4, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-24', 1403578230, 'Lottery', 1, '大转盘', 0),
(685, 5, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-24', 1403578371, 'Lottery', 1, '优惠券', 0),
(686, 1, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-24', 1403578502, 'Lottery', 2, '刮刮卡', 0),
(687, 3, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-24', 1403578668, 'Lottery', 1, '水果达人', 0),
(688, 6, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-24', 1403578803, 'Lottery', 1, '砸金蛋', 0),
(689, 1, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-24', 1403578947, 'Greeting_card', 1, '贺卡', 0),
(690, 2, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-24', 1403579075, 'Shake', 1, '摇', 0),
(691, 2, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-24', 1403579241, 'Wall', 2, '微信墙', 0),
(692, 4, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-24', 1403587851, 'Member_card_set', 1, '会员卡', 0),
(693, 1, 'caspcu1403054302', 'oqMIVt8_WGJBCVtbp3MoIUl_Lm2k', '2014-06-24', 1403597627, 'Greeting_card', 5, '用户关注', 0),
(694, 1, 'caspcu1403054302', 'oqMIVt8_WGJBCVtbp3MoIUl_Lm2k', '2014-06-24', 1403597652, 'follow', 1, '用户关注', 0),
(695, 0, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-24', 1403597761, 'chat', 2, '微酒店', 0),
(696, 0, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-24', 1403597771, 'chat', 1, '微餐饮', 0),
(697, 1, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-24', 1403598185, 'Greeting_card', 7, '用户关注', 0),
(698, 0, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '2014-06-24', 1403598300, 'chat', 10, '微官网', 0),
(699, 0, 'caspcu1403054302', 'oqMIVt8_WGJBCVtbp3MoIUl_Lm2k', '2014-06-24', 1403598817, 'chat', 1, '微官网', 0),
(700, 0, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '2014-06-24', 1403608854, 'chat', 1, '留言板', 0);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_busines`
--

CREATE TABLE IF NOT EXISTS `gooraye_busines` (
`bid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `mtitle` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `album_id` int(11) NOT NULL,
  `toppicurl` varchar(200) NOT NULL DEFAULT '',
  `roompicurl` varchar(200) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `longitude` char(11) NOT NULL DEFAULT '',
  `latitude` char(11) NOT NULL DEFAULT '',
  `business_desc` text NOT NULL,
  `type` char(15) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `blogo` varchar(200) NOT NULL,
  `businesphone` char(13) NOT NULL DEFAULT '',
  `orderInfo` varchar(800) NOT NULL DEFAULT '',
  `compyphone` char(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_busines_comment`
--

CREATE TABLE IF NOT EXISTS `gooraye_busines_comment` (
`cid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` varchar(50) NOT NULL DEFAULT '',
  `face_picurl` varchar(200) NOT NULL,
  `face_desc` varchar(1000) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_busines_main`
--

CREATE TABLE IF NOT EXISTS `gooraye_busines_main` (
`mid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `main_desc` text NOT NULL,
  `type` char(15) NOT NULL,
  `telphone` char(12) NOT NULL DEFAULT '',
  `maddress` varchar(50) NOT NULL DEFAULT '',
  `desc_pic` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_busines_pic`
--

CREATE TABLE IF NOT EXISTS `gooraye_busines_pic` (
`pid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `bid_id` int(11) NOT NULL,
  `picurl_1` varchar(200) NOT NULL DEFAULT '',
  `picurl_2` varchar(200) NOT NULL DEFAULT '',
  `picurl_3` varchar(200) NOT NULL DEFAULT '',
  `picurl_4` varchar(200) NOT NULL DEFAULT '',
  `picurl_5` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL,
  `ablum_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_busines_second`
--

CREATE TABLE IF NOT EXISTS `gooraye_busines_second` (
`sid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mid_id` int(11) NOT NULL,
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `learntime` varchar(100) NOT NULL,
  `datatype` varchar(100) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `second_desc` text NOT NULL,
  `oneprice` decimal(10,2) DEFAULT '0.00',
  `googsnumber` bigint(20) NOT NULL DEFAULT '0',
  `havenumber` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_car`
--

CREATE TABLE IF NOT EXISTS `gooraye_car` (
`id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `www` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `sort` int(11) DEFAULT NULL,
  `info` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_car`
--

INSERT INTO `gooraye_car` (`id`, `token`, `name`, `www`, `logo`, `sort`, `info`) VALUES
(1, 'ubddyd1402964682', '玛莎拉蒂', 'http://www.baidu.com/baidu.php?url=0s0000KqMPhnTYm', 'http://114.215.198.83/tpl/static/attachment/icon/lovely/bus.png', 1, '玛莎拉蒂');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_carmodel`
--

CREATE TABLE IF NOT EXISTS `gooraye_carmodel` (
`id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brand_serise` varchar(50) NOT NULL,
  `model_year` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `panorama_id` int(11) DEFAULT '0',
  `guide_price` decimal(10,3) NOT NULL,
  `dealer_price` decimal(10,3) NOT NULL,
  `emission` double NOT NULL,
  `stalls` tinyint(4) DEFAULT NULL,
  `box` tinyint(4) NOT NULL,
  `pic_url` varchar(200) NOT NULL,
  `s_id` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_carmodel`
--

INSERT INTO `gooraye_carmodel` (`id`, `token`, `name`, `brand_serise`, `model_year`, `sort`, `panorama_id`, `guide_price`, `dealer_price`, `emission`, `stalls`, `box`, `pic_url`, `s_id`) VALUES
(1, 'ubddyd1402964682', '22', '玛莎拉蒂/111', 2014, 1, 0, '9999999.999', '9999999.999', 1, 0, 1, 'http://114.215.198.83/tpl/static/attachment/focus/default/3.jpg', 1);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_carnews`
--

CREATE TABLE IF NOT EXISTS `gooraye_carnews` (
`id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `news_id` int(11) NOT NULL,
  `pre_id` int(11) NOT NULL,
  `usedcar_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_carowner`
--

CREATE TABLE IF NOT EXISTS `gooraye_carowner` (
`id` int(11) unsigned NOT NULL,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '''''',
  `head_url` varchar(200) NOT NULL DEFAULT '''''',
  `info` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_carowner`
--

INSERT INTO `gooraye_carowner` (`id`, `token`, `keyword`, `title`, `head_url`, `info`) VALUES
(1, 'ubddyd1402964682', '44', '44', 'tpl/User/default/common/car/car_woner.png', '444');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_carsaler`
--

CREATE TABLE IF NOT EXISTS `gooraye_carsaler` (
`id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `mobile` char(13) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `salestype` tinyint(4) NOT NULL,
  `info` varchar(200) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `gooraye_carsaler`
--

INSERT INTO `gooraye_carsaler` (`id`, `token`, `name`, `picture`, `mobile`, `sort`, `salestype`, `info`) VALUES
(1, 'ubddyd1402964682', '问问', 'tpl/User/default/common/car/car_sell.png', '057585060707', 1, 1, '呵呵'),
(2, 'ubddyd1402964682', '问问', 'tpl/User/default/common/car/car_sell.png', '057585060707', 1, 1, '呵呵');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_carseries`
--

CREATE TABLE IF NOT EXISTS `gooraye_carseries` (
`id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `shortname` varchar(50) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL,
  `info` varchar(200) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_carseries`
--

INSERT INTO `gooraye_carseries` (`id`, `brand_id`, `brand`, `token`, `name`, `shortname`, `picture`, `sort`, `info`) VALUES
(1, 1, '1@玛莎拉蒂', 'ubddyd1402964682', '111', '111', 'http://114.215.198.83/tpl/static/attachment/focus/default/2.jpg', 1, '呵呵');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_carset`
--

CREATE TABLE IF NOT EXISTS `gooraye_carset` (
`id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `head_url` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL,
  `title1` varchar(50) NOT NULL DEFAULT '',
  `title2` varchar(50) NOT NULL DEFAULT '',
  `title3` varchar(50) NOT NULL DEFAULT '',
  `title4` varchar(50) NOT NULL DEFAULT '',
  `title5` varchar(50) NOT NULL DEFAULT '',
  `title6` varchar(50) NOT NULL DEFAULT '',
  `head_url_1` varchar(200) NOT NULL DEFAULT '',
  `head_url_2` varchar(200) NOT NULL DEFAULT '',
  `head_url_3` varchar(200) NOT NULL DEFAULT '',
  `head_url_4` varchar(200) NOT NULL DEFAULT '',
  `head_url_5` varchar(200) NOT NULL DEFAULT '',
  `head_url_6` varchar(200) NOT NULL DEFAULT '',
  `url1` varchar(200) NOT NULL DEFAULT '',
  `url2` varchar(200) NOT NULL DEFAULT '',
  `url3` varchar(200) NOT NULL DEFAULT '',
  `url4` varchar(200) NOT NULL DEFAULT '',
  `url5` varchar(200) NOT NULL DEFAULT '',
  `url6` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_carset`
--

INSERT INTO `gooraye_carset` (`id`, `token`, `keyword`, `title`, `head_url`, `url`, `title1`, `title2`, `title3`, `title4`, `title5`, `title6`, `head_url_1`, `head_url_2`, `head_url_3`, `head_url_4`, `head_url_5`, `head_url_6`, `url1`, `url2`, `url3`, `url4`, `url5`, `url6`) VALUES
(1, 'ubddyd1402964682', '汽车', '444', 'tpl/User/default/common/car/car_title.jpg', '', '经销车型', '销售顾问', '在线预约', '车主关怀', '实用工具', '车型欣赏', 'tpl/User/default/common/car/car_jx.jpg', 'tpl/User/default/common/car/car_yuyue.jpg', 'tpl/User/default/common/car/car_yuyue.jpg', 'tpl/User/default/common/car/carowner.png', 'tpl/User/default/common/car/tool-box-preferences.png', 'tpl/User/default/common/car/lanbo14.jpg', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_caruser`
--

CREATE TABLE IF NOT EXISTS `gooraye_caruser` (
`id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `brand_serise` varchar(50) NOT NULL,
  `car_no` varchar(20) NOT NULL,
  `car_userName` varchar(50) NOT NULL,
  `car_startTime` varchar(50) NOT NULL,
  `car_insurance_lastDate` varchar(50) NOT NULL,
  `car_insurance_lastCost` decimal(10,2) NOT NULL,
  `car_care_mileage` int(11) NOT NULL,
  `user_tel` char(11) NOT NULL,
  `car_care_lastDate` varchar(50) NOT NULL,
  `car_care_lastCost` decimal(10,2) NOT NULL,
  `kfinfo` varchar(200) NOT NULL DEFAULT '',
  `insurance_Date` varchar(50) DEFAULT NULL,
  `insurance_Cost` decimal(10,2) DEFAULT NULL,
  `care_mileage` int(11) DEFAULT NULL,
  `car_care_Date` varchar(50) DEFAULT NULL,
  `car_care_Cost` decimal(10,2) DEFAULT NULL,
  `car_buyTime` varchar(50) NOT NULL DEFAULT '',
  `car_care_inspection` varchar(50) NOT NULL DEFAULT '',
  `care_next_mileage` int(11) NOT NULL DEFAULT '0',
  `next_care_inspection` varchar(50) NOT NULL DEFAULT '',
  `next_insurance_Date` varchar(50) NOT NULL DEFAULT '',
  `carmodel` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='3G car' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_car_utility`
--

CREATE TABLE IF NOT EXISTS `gooraye_car_utility` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_case`
--

CREATE TABLE IF NOT EXISTS `gooraye_case` (
`id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `url` char(255) NOT NULL,
  `img` char(200) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_catemenu`
--

CREATE TABLE IF NOT EXISTS `gooraye_catemenu` (
`id` int(10) NOT NULL,
  `fid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `name` varchar(120) NOT NULL,
  `orderss` varchar(10) NOT NULL DEFAULT '0',
  `picurl` varchar(120) NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT '0',
  `status` varchar(10) NOT NULL,
  `RadioGroup1` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `gooraye_catemenu`
--

INSERT INTO `gooraye_catemenu` (`id`, `fid`, `token`, `name`, `orderss`, `picurl`, `url`, `status`, `RadioGroup1`) VALUES
(10, 0, 'caspcu1403054302', '百度地图', '0', 'http://114.215.198.83/tpl/User/default/common/images/photo/plugmenu3.png', '', '1', '0'),
(13, 0, 'caspcu1403054302', '客服', '0', 'http://114.215.198.83/tpl/User/default/common/images/photo/plugmenu1.png', 'tel:057585060707', '1', '0');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_classify`
--

CREATE TABLE IF NOT EXISTS `gooraye_classify` (
`id` int(11) NOT NULL,
  `fid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `info` varchar(90) NOT NULL COMMENT '分类描述',
  `sorts` int(6) NOT NULL COMMENT '显示顺序',
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `token` varchar(30) NOT NULL,
  `path` varchar(3000) DEFAULT '0',
  `tpid` tinyint(4) DEFAULT '1',
  `conttpid` tinyint(4) DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- 转存表中的数据 `gooraye_classify`
--

INSERT INTO `gooraye_classify` (`id`, `fid`, `name`, `info`, `sorts`, `img`, `url`, `status`, `token`, `path`, `tpid`, `conttpid`) VALUES
(13, 0, '回复', '回复', 1, 'http://114.215.198.83/tpl/static/attachment/focus/default/5.gif', '', '0', 'ubddyd1402964682', '0', 38, 2),
(14, 0, '成功案例', '成功案例', 1, 'http://114.215.198.83//tpl/static/attachment/icon/white/1.png', 'http://gooraye01.duapp.com', '1', 'caspcu1403054302', '0', 95, 1),
(15, 0, '互动推广', '互动推广', 1, 'http://114.215.198.83//tpl/static/attachment/icon/white/15.png', '', '1', 'caspcu1403054302', '0', 95, 1),
(16, 0, '渠道代理', '渠道代理', 1, 'http://114.215.198.83//tpl/static/attachment/icon/white/10.png', '', '1', 'caspcu1403054302', '0', 95, 1),
(36, 15, '刮刮卡', '刮刮卡', 1, 'http://114.215.198.83/tpl/static/attachment/icon/white/16.png', '{siteUrl}/index.php?g=Wap&amp;m=Guajiang&amp;a=index&amp;token=caspcu1403054302&amp;wecha_id={wechat_id}&amp;id=1', '1', 'caspcu1403054302', '0-15', 43, 5),
(34, 0, '行业方案', '行业方案', 1, 'http://114.215.198.83//tpl/static/attachment/icon/white/3.png', '', '1', 'caspcu1403054302', '0', 95, 1),
(18, 14, '走进东南', '', 1, 'http://114.215.198.83//tpl/static/attachment/icon/line/banknote.png', '{siteUrl}/index.php?g=Wap&amp;m=Index&amp;a=lists&amp;token=caspcu1403054302&amp;wecha_id={wechat_id}&amp;classid=18', '1', 'caspcu1403054302', '0-14', 93, 1),
(19, 14, '品牌文化', '', 1, 'http://114.215.198.83//tpl/static/attachment/icon/line/bulb.png', '{siteUrl}/index.php?g=Wap&amp;m=Index&amp;a=lists&amp;token=caspcu1403054302&amp;wecha_id={wechat_id}&amp;classid=18', '1', 'caspcu1403054302', '0-14', 38, 1),
(20, 14, '慈善公益', '', 1, 'http://114.215.198.83//tpl/static/attachment/icon/line/music.png', '{siteUrl}/index.php?g=Wap&amp;m=Index&amp;a=lists&amp;token=caspcu1403054302&amp;wecha_id={wechat_id}&amp;classid=18', '1', 'caspcu1403054302', '0-14', 38, 1),
(30, 0, '关于我们', '关于我们', 1, 'http://114.215.198.83//tpl/static/attachment/icon/white/5.png', '', '1', 'caspcu1403054302', '0', 95, 1),
(28, 0, '联系我们', '联系我们', 1, 'http://114.215.198.83//tpl/static/attachment/icon/white/10.png', 'tel:057585060707', '1', 'caspcu1403054302', '0', 95, 1),
(35, 15, '砸金蛋', '砸金蛋', 1, 'http://114.215.198.83/tpl/static/attachment/icon/white/6.png', '{siteUrl}/index.php?g=Wap&amp;m=GoldenEgg&amp;a=index&amp;token=caspcu1403054302&amp;wecha_id={wechat_id}&amp;id=6', '1', 'caspcu1403054302', '0-15', 43, 5),
(37, 15, '水果机', '水果机', 1, 'http://114.215.198.83/tpl/static/attachment/icon/white/7.png', '{siteUrl}/index.php?g=Wap&amp;m=LuckyFruit&amp;a=index&amp;token=caspcu1403054302&amp;wecha_id={wechat_id}&amp;id=3', '1', 'caspcu1403054302', '0-15', 43, 5),
(38, 15, '贺卡', '贺卡', 1, 'http://114.215.198.83/tpl/static/attachment/icon/white/13.png', '{siteUrl}/index.php?g=Wap&amp;m=Greeting_card&amp;a=index&amp;token=caspcu1403054302&amp;wecha_id={wechat_id}&amp;id=1', '1', 'caspcu1403054302', '0-15', 43, 5),
(39, 15, '大转盘', '大转盘', 1, 'http://114.215.198.83/tpl/static/attachment/icon/white/4.png', '{siteUrl}/index.php?g=Wap&amp;m=Lottery&amp;a=index&amp;token=caspcu1403054302&amp;wecha_id={wechat_id}&amp;id=2', '1', 'caspcu1403054302', '0-15', 43, 5),
(40, 15, '优惠券', '优惠券', 1, 'http://114.215.198.83/tpl/static/attachment/icon/white/10.png', '{siteUrl}/index.php?g=Wap&amp;m=Coupon&amp;a=index&amp;token=caspcu1403054302&amp;wecha_id={wechat_id}&amp;id=5', '1', 'caspcu1403054302', '0-15', 43, 5),
(41, 34, '微汽车', '微汽车', 1, 'http://114.215.198.83/tpl/static/attachment/icon/line/truck.png', '{siteUrl}/index.php?g=Wap&amp;m=Car&amp;a=showcar&amp;token=caspcu1403054302&amp;wecha_id={wechat_id}', '1', 'caspcu1403054302', '0-34', 43, 1),
(42, 34, '微餐饮', '微餐饮', 1, 'http://114.215.198.83/tpl/static/attachment/icon/line/food.png', '{siteUrl}/index.php?g=Wap&amp;m=Repast&amp;a=index&amp;token=caspcu1403054302&amp;wecha_id={wechat_id}', '1', 'caspcu1403054302', '0-34', 34, 5),
(43, 34, '微房产', '微房产', 1, 'http://114.215.198.83/tpl/static/attachment/icon/line/shop.png', '{siteUrl}/index.php?g=Wap&amp;m=Estate&amp;a=index&amp;token=caspcu1403054302&amp;wecha_id={wechat_id}', '1', 'caspcu1403054302', '0-34', 43, 5),
(44, 34, '微喜帖', '微喜帖', 1, 'http://114.215.198.83/tpl/static/attachment/icon/line/note.png', '{siteUrl}/index.php?g=Wap&amp;m=Wedding&amp;a=index&amp;token=caspcu1403054302&amp;wecha_id={wechat_id}&amp;id=2', '1', 'caspcu1403054302', '0-34', 43, 5),
(45, 34, '微酒店', '微酒店', 1, 'http://114.215.198.83/tpl/static/attachment/icon/line/key.png', '{siteUrl}/index.php?g=Wap&amp;m=Hotels&amp;a=index&amp;token=caspcu1403054302&amp;wecha_id={wechat_id}', '1', 'caspcu1403054302', '0-34', 43, 5);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_company`
--

CREATE TABLE IF NOT EXISTS `gooraye_company` (
`id` int(10) NOT NULL,
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(60) NOT NULL,
  `password` varchar(32) NOT NULL,
  `shortname` varchar(50) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `tel` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL DEFAULT '',
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `intro` text NOT NULL,
  `catid` mediumint(3) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `isbranch` tinyint(1) NOT NULL DEFAULT '0',
  `logourl` varchar(180) NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `gooraye_company`
--

INSERT INTO `gooraye_company` (`id`, `display`, `token`, `name`, `username`, `password`, `shortname`, `mp`, `tel`, `address`, `latitude`, `longitude`, `intro`, `catid`, `taxis`, `isbranch`, `logourl`) VALUES
(3, 1, 'ubddyd1402964682', '古睿信息科技', '', '', '古睿信息科技', '13484379290', '85060707', '绍兴市越城区', 29.999954, 120.616128, '', 0, 0, 0, 'http://www.gooraye.net/uploads/h/hbcpar1400859750/9/3/6/7/thumb_5380021224562.JPG'),
(4, 1, 'caspcu1403054302', '111', '', '', '111', '18257567105', '0575-85060707', '袍江哈哈哈', 0, 0, '呵呵', 0, 1, 0, 'http://114.215.198.83/tpl/static/attachment/background/view/8.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_company_staff`
--

CREATE TABLE IF NOT EXISTS `gooraye_company_staff` (
`id` int(10) NOT NULL,
  `companyid` int(10) NOT NULL,
  `token` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `tel` varchar(11) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_company_staff`
--

INSERT INTO `gooraye_company_staff` (`id`, `companyid`, `token`, `name`, `username`, `password`, `tel`, `time`) VALUES
(1, 4, 'caspcu1403054302', '11', '11', '6512bd43d9caa6e02c990b0a82652dca', '0575-850607', 1403588081);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_dining_table`
--

CREATE TABLE IF NOT EXISTS `gooraye_dining_table` (
`id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `image` varchar(200) NOT NULL,
  `isbox` tinyint(1) unsigned NOT NULL,
  `isorder` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_dining_table`
--

INSERT INTO `gooraye_dining_table` (`id`, `cid`, `name`, `num`, `image`, `isbox`, `isorder`, `status`) VALUES
(1, 3, '呵呵', 12, 'http://114.215.198.83/tpl/static/attachment/background/view/2.jpg', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_dish`
--

CREATE TABLE IF NOT EXISTS `gooraye_dish` (
`id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `unit` varchar(3) NOT NULL,
  `price` float NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL,
  `isopen` tinyint(1) unsigned NOT NULL,
  `image` varchar(200) NOT NULL COMMENT '片',
  `des` varchar(500) NOT NULL,
  `creattime` int(10) unsigned NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `gooraye_dish`
--

INSERT INTO `gooraye_dish` (`id`, `cid`, `sid`, `name`, `unit`, `price`, `ishot`, `isopen`, `image`, `des`, `creattime`) VALUES
(1, 3, 2, '缤纷产品', '份', 1111, 1, 1, 'http://114.215.198.83/tpl/static/attachment/focus/default/1.gif', '', 1403490949),
(2, 3, 2, '番茄', '个', 100, 1, 1, 'http://114.215.198.83/uploads/u/ubddyd1402964682/thumb_53a965a88d654.jpg', '', 1403610540);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_dish_company`
--

CREATE TABLE IF NOT EXISTS `gooraye_dish_company` (
`id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `istakeaway` tinyint(1) unsigned NOT NULL,
  `price` float NOT NULL,
  `payonline` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_dish_company`
--

INSERT INTO `gooraye_dish_company` (`id`, `cid`, `istakeaway`, `price`, `payonline`) VALUES
(1, 3, 1, 15, 0);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_dish_like`
--

CREATE TABLE IF NOT EXISTS `gooraye_dish_like` (
`id` int(10) unsigned NOT NULL,
  `did` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `gooraye_dish_like`
--

INSERT INTO `gooraye_dish_like` (`id`, `did`, `cid`, `wecha_id`) VALUES
(4, 1, 3, 'o0WJQt2q-8lMIVY__MKVtmOeEgU4');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_dish_order`
--

CREATE TABLE IF NOT EXISTS `gooraye_dish_order` (
`id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `price` float NOT NULL,
  `nums` smallint(3) unsigned NOT NULL,
  `info` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `address` varchar(200) NOT NULL,
  `tableid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `reservetime` int(11) NOT NULL,
  `isuse` tinyint(1) NOT NULL,
  `paid` tinyint(1) unsigned NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `printed` tinyint(1) unsigned NOT NULL,
  `des` varchar(500) NOT NULL,
  `takeaway` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_dish_order`
--

INSERT INTO `gooraye_dish_order` (`id`, `cid`, `wecha_id`, `token`, `total`, `price`, `nums`, `info`, `name`, `sex`, `tel`, `address`, `tableid`, `time`, `reservetime`, `isuse`, `paid`, `orderid`, `printed`, `des`, `takeaway`) VALUES
(1, 3, 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', 'ubddyd1402964682', 1, 1111, 1, 'a:2:{s:13:"takeAwayPrice";i:0;s:4:"list";a:1:{i:1;a:4:{s:5:"price";s:4:"1111";s:3:"num";i:1;s:4:"name";s:12:"缤纷产品";s:3:"des";s:0:"";}}}', '123', 0, '18257567105', '', 1, 1403491157, 1403510400, 0, 0, '420140623103917', 0, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_dish_sort`
--

CREATE TABLE IF NOT EXISTS `gooraye_dish_sort` (
`id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `des` varchar(500) NOT NULL,
  `image` varchar(200) NOT NULL,
  `num` smallint(3) unsigned NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `gooraye_dish_sort`
--

INSERT INTO `gooraye_dish_sort` (`id`, `cid`, `name`, `des`, `image`, `num`) VALUES
(2, 3, '缤纷产品', 'dd', 'http://114.215.198.83/tpl/static/attachment/background/view/3.jpg', 2);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_dish_table`
--

CREATE TABLE IF NOT EXISTS `gooraye_dish_table` (
`id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `tableid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `reservetime` int(10) unsigned NOT NULL,
  `creattime` int(10) unsigned NOT NULL,
  `orderid` int(10) unsigned NOT NULL,
  `isuse` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_dish_table`
--

INSERT INTO `gooraye_dish_table` (`id`, `cid`, `tableid`, `wecha_id`, `reservetime`, `creattime`, `orderid`, `isuse`) VALUES
(1, 3, 1, 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', 1403510400, 1403491157, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_diyform`
--

CREATE TABLE IF NOT EXISTS `gooraye_diyform` (
`id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `age` tinyint(2) NOT NULL,
  `qq` int(11) NOT NULL,
  `photo` int(11) NOT NULL,
  `tel` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_diyform_set`
--

CREATE TABLE IF NOT EXISTS `gooraye_diyform_set` (
`id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `jion_num` int(5) NOT NULL,
  `select_name` varchar(200) NOT NULL,
  `create_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_diymen_class`
--

CREATE TABLE IF NOT EXISTS `gooraye_diymen_class` (
`id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `url` varchar(150) NOT NULL,
  `is_show` tinyint(1) NOT NULL,
  `sort` tinyint(3) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `gooraye_diymen_class`
--

INSERT INTO `gooraye_diymen_class` (`id`, `token`, `pid`, `title`, `keyword`, `url`, `is_show`, `sort`) VALUES
(12, 'caspcu1403054302', 0, '微官网', '首页', 'http://114.215.198.83/index.php?g=Wap&amp;m=Index&amp;a=index&amp;token=caspcu1403054302&amp;wecha_id=oqMIVt0XES04VNcYVGqLUuCamF3s&amp;sgssz=mp.weixin', 1, 0),
(16, 'caspcu1403054302', 0, '客户案例', '客户案例', '', 1, 0),
(17, 'caspcu1403054302', 16, '微汽车', '微汽车', '', 1, 0),
(27, 'caspcu1403054302', 16, '更多案例', '更多案例', '', 1, 0),
(19, 'caspcu1403054302', 16, '微酒店', '微酒店', '', 1, 1),
(22, 'caspcu1403054302', 0, '关于我们', '关于我们', '', 1, 0),
(23, 'caspcu1403054302', 22, '微社区', '微社区', 'http://wsq.qq.com/reflow/242096555', 1, 0),
(24, 'caspcu1403054302', 22, '联系我们', '联系我们', 'tel：057585060707', 1, 0),
(25, 'caspcu1403054302', 22, '微留言', '微留言', 'http://114.215.198.83/index.php?g=Wap&amp;m=Reply&amp;a=index&amp;token=caspcu1403054302&amp;wecha_id=oqMIVt0XES04VNcYVGqLUuCamF3s&amp;sgssz=mp.weixin', 1, 0),
(26, 'caspcu1403054302', 16, '微餐饮', '微餐饮', '', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_diymen_set`
--

CREATE TABLE IF NOT EXISTS `gooraye_diymen_set` (
`id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `appid` varchar(18) NOT NULL,
  `appsecret` varchar(32) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `gooraye_diymen_set`
--

INSERT INTO `gooraye_diymen_set` (`id`, `token`, `appid`, `appsecret`) VALUES
(5, 'ubddyd1402964682', 'wx9196f2ab959e57c8', '5dfadfce94355c278ee4cfccd184a1cf'),
(6, 'caspcu1403054302', 'wx58aea38c0796394d', '3e1404c970566df55d7314ecfe9ff437');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_dream`
--

CREATE TABLE IF NOT EXISTS `gooraye_dream` (
`id` smallint(8) NOT NULL,
  `category` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(40) NOT NULL DEFAULT '',
  `content` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='周公解梦数据表' AUTO_INCREMENT=323 ;

--
-- 转存表中的数据 `gooraye_dream`
--

INSERT INTO `gooraye_dream` (`id`, `category`, `title`, `content`) VALUES
(1, '其它篇', '生锈', '    梦见生锈的东西，是不祥之兆。梦见生锈的炊具，收入会减少。女人梦见生锈的炊具，家务会一塌糊涂。梦见生锈的武器，是凶兆，失败会接连不断。梦见敌人运送生了锈的武器，是祥兆，能降服敌人 。\r\n'),
(2, '其它篇', '火箭', '    男人梦见火箭，会升官进爵。女人梦见火箭，家里要举办婚礼。梦见火箭展览，每天所挣仅够糊口。梦见出售火箭，是不祥之兆，倒霉的日子会来到。梦见制造火箭，能征服敌人。船员梦见火箭，航海会成功。\r\n'),
(3, '其它篇', '轮船', '    男人梦见轮船停泊在码头上，不久要乘船出国。已婚女子梦见轮船停泊在码头，会与丈夫分离。未婚女子梦见轮船在码头停泊，会嫁给一位有钱的商人。梦见轮船从自己面前驶过，要破财。梦见轮船朝自己驶来，会发大财。商人梦见轮船向自己驶来，去国外做生意，能赚大钱。梦见满载货物的轮船，能找到好工作。梦见空轮船，会失去经济来源。梦见军舰，能击败敌人。海军军官梦见军舰，在未来的战斗中能获得最高军功章。船员梦见轮船，要进行幸福旅行。梦见有很多艘轮船，能交好运。梦见造船，会做收入低的工作。梦见轮船断裂，灾祸会降临 。\r\n'),
(4, '其它篇', '污泥', '    梦见从污泥或泥潭中通过，会遇到危险和不幸。梦见泥潭（或污泥），会避免重大危险。梦见陷入泥潭，会卧床不起。梦见往污泥里扔石头，会与部下发生争吵，名誉受损。梦见浑身沾满污泥，象征着身体强壮。已婚女人走到污泥里，会被世俗锁事而纠缠。\r\n'),
(5, '其它篇', '森林', '    梦见森林，是发财的兆头。梦见在森林里迷路，会上仇人的当，陷入困境。梦见围猎的森林，仇人会战胜自己。离开家的人梦见森林，能很快归来 .男性病人梦见森林，病情会恶化。\r\n'),
(6, '其它篇', '冰', '    梦见冰，会得到别人的支持。女人梦见得到了冰，家境会富裕。姑娘梦见冰，会找到一位称心如意的对象。学生梦见得到冰，考试会取得优异的成绩。梦见冰溶化了，会失去支持者。小伙子梦见得到冰，恋人会和他同心同德，对他忠贞不谕。商人梦见得到冰，生意会兴旺。农民梦见得到冰，庄稼会丰收。商人梦见在滑冰，生意会萧条。小伙子梦见滑冰，恋人会朝三暮四，最终会抛弃自己。士兵梦见滑冰，会有生命危险，也许会阵亡 。\r\n'),
(7, '器物篇', '烟斗', '    男人梦见别人抽烟斗，生意间能获利。梦见自己用烟斗吸烟，会身强力壮。女人梦见烟斗，丈夫家会减少人口。犯人梦见吸烟斗，很快能恢复自由。梦见带着烟斗去参加大会，会德高望众。梦见在群众大会上让别人抽烟斗，自已会被开除。梦见修理烟斗，或购买新烟斗，不久要去参加婚礼。梦见争烟斗，痛苦的事会接连不断。未婚女子梦见烟斗，会失去良机。病人梦见烟斗，很快能恢复健康 。\r\n<br><br>    男人梦见烟，家庭要吵架。但是女人梦见烟，丈夫会富有。梦见烟囱冒烟，是祥瑞，生意会兴隆。病人梦见烟，会长期卧床不起。犯人梦见烟，关押的期限会延长。梦见烟得喘不过气来，意味着身体很强壮。已婚女人梦见烟得喘不过气来，丈夫家的人口会增加。少女梦见烟，会嫁到一个有名望的家庭 。\r\n'),
(8, '其它篇', '雕像', '    男人梦见雕像，很快会有好消息。女人梦见雕像，丈夫的声誉会鹊起。梦见自己的雕像，是祥兆，会升官进爵。梦见铜铸像，身体会强健、长寿。梦见白色的塑像，能连升三级。梦见砸碎雕像，会遭到敌人的阴谋暗算。梦见铸像，会身居高职。梦见为某个大人物的塑像揭彩，会获得国家的高等荣誉。 \r\n'),
(9, '其它篇', '游船', '    梦见乘游艇，生意会不断兴旺。梦见和妻子一块驾驶游艇，夫妻生活会幸福、美满。梦见别人乘快艇，大难将至。女人梦见丈夫驾驶游艇，夫妻会感情不和。病人梦见乘坐游艇，身体很快能恢复 。\r\n'),
(10, '其它篇', '鸦片', '    梦见鸦片，要受损失。梦见吃鸦片，会生病。男人梦见给妻子鸦片，孩子会夭折。梦见从陌生人那里得到鸦片，会上当受骗，遭毒手。女人梦见吃鸦片，丈夫会不喜欢她。病人梦见吃鸦片，身体会很快复原。\r\n'),
(11, '其它篇', '大门', '    梦见从敞开的大门进来，能控制商业市场。梦见关闭的大门，会遇到困难。梦见铁大门，为了生存会拼搏不息。梦见全副武装的士兵守卫大门，会在军事部门谋职。梦见正想进大门，但被门卫拦住，会有不顺心的。孕妇梦见不受阻拦地进了大门，意味着分娩很顺利生一个男孩。\r\n'),
(12, '其它篇', '毒药', '    梦见毒药，一切忧愁和不安都会消失。医生梦见毒药，收入会不断增加。卖药者梦见毒药，顾客会接踵不断。男人梦见毒药，要失去工作。女人梦见服毒，会家破人亡。失业者梦见服毒，很快能找到工作。工作人员梦见服毒，由于不加薪水，损失惨重，有可能被解雇。但是病人梦见服毒，健康会每况愈下。犯人梦见服毒，很快会出狱。梦见给陌生人毒药，要提防口是心非的朋友。梦见给至交毒药，会受到人们的赞美。梦见给妻子毒药，夫妻生活幸福，白头偕老。女人梦见给丈夫毒药，意味着丈夫的身体强壮，会寿比南山。梦见把毒药给自己的亲戚，能继承一笔遗产。梦见把毒药给了高级官员，会得到官员的喜欢，能提职增薪。梦见别人给自己毒药，是祥瑞，作梦者身体健康，延年益寿。\r\n'),
(13, '其它篇', '垃圾', '    梦见在垃圾上行走，要交好运。梦见用头搬运垃圾，是凶兆，会受到侮辱和蔑视。梦见妻子运送垃圾，是祥瑞，会得到岳父家的财产。梦见朋友搬运垃圾，危难时刻能得到朋友的帮助。梦见敌人运送垃圾，是不好的征兆，做梦人会有危险。梦见家里到处都是垃圾，会大吉大利，能发大财，生活幸福 。\r\n'),
(14, '其它篇', '缺点', '    梦见找别人的错误，是不祥之兆，意味着会忧愁、悲伤。梦见控告妻子，对妻子长期卧床不起，忧心如焚。女人梦见给丈夫加罪，夫妻会长期分离。梦见控告自己朋友，会上当受骗，但能破财免灾。梦见给敌人加罪，灾祸会临头。梦见自己控告别人是凶兆，作梦人不会受到人民的喜欢。梦见自己被控告，能获得高等军功章。犯人梦见受到监狱长斥责，不久会出狱 。\r\n'),
(15, '其它篇', '出国', '    梦见出国，是不祥兆。老翁梦见出国，会离开人世。杀人犯梦见出国，是被处于极刑的先兆。已婚女人梦见出国，会被丈夫抛弃。男青年梦见出国，生活能独立。病人梦见出国，病情会加重。 \r\n'),
(16, '其它篇', '飞翔', '    梦见自己在飞，职位会被擢升，生意获利，但是会与亲友发生争吵。梦见和朋友乘飞机，合伙的生意会成功。梦见乘飞机，朋友会妒忌自己的富有。女人梦见和陌生人比翼齐飞，意味着要离开丈夫，或者孩子生病。 \r\n'),
(17, '其它篇', '统治', '    统治者梦见人民对自己的统治极为不满，意味着能得到人民的衷心拥护，政局稳定，人民安居乐业。国王或国家领导人梦见全国上下都很满意他的统治，意味着人民怨声载道，会爆发一场革命。梦见国家的统治制度发生了变化，预示能获得国家的最高荣誉。梦见在恐怖的国家里忍受煎熬，做梦人会富有。梦见国家的领导人很英明，人民生活幸福，不久会被驱逐出境。\r\n'),
(18, '其它篇', '丑闻', '    梦见自己受到别人的诽谤，会名声大噪，官运亨通。女人梦见受到诽议，是意味着贞洁无暇。少女梦见出了丑事，会有很多求婚者。小伙子梦见出了丢脸的事，高等家族会登门求婚。梦见妻子品行不端，是不祥之兆，夫妻会感情不和。梦见敌人出了丑闻，敌人会归降自己。梦见朋友受到指责，很快会身居高位。\r\n'),
(19, '其它篇', '缺乏', '    梦见缺少某样东西，意味着会富裕。梦见缺水，会拥有自己的水池和水井，所以会有很多水。梦见缺少粮食，会有很多购买粮食的钱，能选择有益的生意或工作。梦见没有衣服穿，会富有。梦见朋友或其他人缺少某种东西而极不方便，自己很快能得到这些东西。梦见敌人缺家里所需的东西，灾难会临头。商人梦见缺少商品，会成为百万富翁。病人梦见断了药，身体很快能康复。\r\n'),
(20, '其它篇', '死亡', '    梦见自己已经与世长辞，预兆很快要与一位有钱的姑娘成亲。梦见亲友去世，去世的亲友会长寿。梦中听到仇人死亡的消息，会交一些宽宏大量、忠实可靠的朋友。梦见恋人长逝，他们会结为夫妇，生活会幸福、美满，充满爱情。梦见陌生人去世，生意会出现好转，赚大钱。梦见国王晏驾，国家领导人会授予自己高等荣誉头衔。梦见自己的坐骑或其它动物死亡，经济要受到损失。梦见狗死了，意味着忠实的好朋友或助手要离开人世。\r\n'),
(21, '其它篇', '学位', '    梦见自己获得了文学学位，实验会成功。梦见向别人授予学位，会官运亨通。姑娘梦见获得学位，会嫁给一位语言学家。梦见学位被抢走，倒霉的日子会来临，威信受损。\r\n'),
(22, '其它篇', '请求', '    梦见有人请求自己帮助，是不祥之兆，会上当受骗。梦见自己请求别人援助，会威信大震。未婚男子梦见接到了结婚的要求，是好兆头，会发大财。失业者梦见收到某种请求，不要对找工作抱太大的希望，因为这个梦意味着长时间很难找到工作。 \r\n'),
(23, '其它篇', '杀害', '    梦见杀人，仇人太多。梦见自己杀害了仇人，仇人的力量会加强。梦见自己杀害了亲人，能继承遗产。女人梦见丈夫被杀，夫妻俩会幸福、愉快。梦见自己被不认识的人伤害，会身体健壮、延年益寿。梦见家里有人想刺杀自己，凶手会成为继承人。梦见控告自己犯了杀人罪，会扬名天下。\r\n'),
(24, '其它篇', '缺席', '    梦见某个家庭成员或朋友不见了，缺席者要遭厄运。梦见自己不在办公室，却在公园等处散步，或在电影院看电影等，预示着心术不正的朋友给自己造成难以忍受的损失。但是当梦见久未见面的人时，此人将会很快归来。\r\n'),
(25, '其它篇', '军队', '    梦见军队开来或军队处于立定姿势，这是好的征兆。梦见军队离去，将遭不幸。梦见军队打败，倒霉的日子将要到来。梦见军队胜利了，要交好运。\r\n'),
(26, '其它篇', '人群', '    梦见许多穿着华贵服装的人聚集在一起，未婚者将会喜结良缘。梦到穿脏衣服的人聚集在一起，做梦人的亲属会有人与世长辞。\r\n'),
(27, '其它篇', '姐妹', '    男人梦见自己的姐妹，是祥兆，能长寿。但是女人梦见已婚的姐妹，会与丈夫家的一个女性发生争吵。女人梦见未婚的姐妹，额外开销会突然增多。梦见与姐妹交谈，会有好消息。梦见与姐妹吵嘴，会越来越富。梦见听到妹妹出生的消息，打官司会得到一笔财产。梦见姐妹去世，她会长寿。梦见去姐妹的家，贵客会登门。梦见给姐妹礼物，侵吞公款，会破财。\r\n'),
(28, '其它篇', '英雄', '    中年人梦见自己成了英雄，是身强力壮的兆头。老年人梦见自己成英雄，会溘然而逝。应该尽早立遗嘱，分家产。病人梦见自己成了英雄，病情会恶化，如果他的八字好，会得救 。\r\n'),
(29, '其它篇', '守财奴', '    梦见一毛不拔的人，朋友会吵嘴。梦见与吝啬鬼交朋友，要遭不幸。男人梦见自己成了铁公鸡，一毛不拔，生意能赚大钱。已婚女人梦见自己小气，婆婆家的处境会很令人担忧。梦见和吝啬人吵架，预示要交新朋友。梦见偷拿守财奴的东西，会身居高位。梦见铁公鸡送钱给自己家会被偷窃。\r\n'),
(30, '其它篇', '男孩', '    梦见男孩，是祥兆。女人梦见男孩，会生病。梦见漂亮的男孩，朋友会忘恩负义。梦见生男孩，生活会幸福、恬适。梦见男孩夭亡，大难将降临。女人梦见自己将要生一个男孩，意味着会过上幸福舒畅的生活。\r\n'),
(31, '其它篇', '队伍', '    梦见迎亲的队伍，家里要死人。女人梦见迎亲队伍，丈夫家里要吵架。已婚男人梦见参加迎亲队伍，会身居高位，人们都有求于自己。已婚女人梦见参加迎亲队伍，不久会怀孕，能生一个漂亮的男孩。未婚男女梦见迎亲队伍，会喜结良缘。未婚男子梦见参加迎亲队伍，会与恋人各奔东西。囚犯梦见加入迎亲队伍，很快会获得自由。病人梦见参加迎亲队伍，病情会恶化。梦见参加政治或宗教游行，会有好消息。政治领导人梦见加入政治或宗教游行，会受到国家领导人的尊重。旅游者梦见参加政治或宗教游行，会发生车祸。\r\n'),
(32, '其它篇', '烈士', '    梦见烈士，会受到人们的尊重，不断进步。梦见女烈士，要发大财。梦见受到烈士的责骂，处境对自己极为不利。梦见自己成了烈士，会灾难临头 。\r\n'),
(33, '其它篇', '野蛮人', '    男人梦见野蛮人，能得到人们的尊重。女人梦见野蛮人，丈夫家里会发生吵架。梦见与野蛮人打斗，是不祥之兆，灾祸会降临。商人梦见会见未开化的人，不久要出国，能发大财。受指控的人梦见未开化的人，会被驱逐出境。旅游者梦见野蛮人，旅行会愉快。\r\n'),
(34, '其它篇', '小贩', '    男人梦见小贩，会与朋友分道扬镳。已婚女人梦见小贩，会与丈夫家的人分开另过，独自操持家务。梦见与小贩交谈，是好的征兆，丈夫会勤俭持家。但是女人梦见与小贩交谈，会有一个装饰豪华具有现代化的住宅、华贵的服装、舒适的生活，一切应有尽有。梦见与小贩吵架，陌生人会骗走自己的财产。梦见和小贩交朋友，生意会好转，发大财。但是梦见自己成了小贩，大难会临头。官员梦见自己成了小贩，会被降职，最后只好提出辞职。商人梦见自己成了小贩，生意会萧条，有可能倒闭。病人梦见自己成了小贩，要遭厄运，尽管请西医大夫和中医治疗，但病情仍不见好转。但是大学教师梦见自己成了小贩，是祥兆，会扬名天下，世界许多国家会邀请他发表演说。失业者梦见自己成了小贩，会接到好几个机构的聘书，但是都难以胜任。\r\n'),
(35, '其它篇', '清道夫', '    梦见清洁夫，要遭厄运。女人梦见清扫人，会忍受丈夫分离的痛苦。梦见当了清道夫，前途无量。商人梦见做清道夫的工作，生意会兴旺，能发大财。梦见与清扫工吵架，会臭名远扬。梦见和清洁工交朋友，会名声大噪，得财进宝 。\r\n'),
(36, '其它篇', '疯子', '    梦见疯子，要交好运。姑娘梦见疯子，会嫁给一个富有、如意的男子。跛子梦见疯子，会找到忠诚的仆人。梦见妻子疯了，她会把家安排得井井有条。\r\n'),
(37, '其它篇', '官员', '    梦见和法官相遇，家人会发生龃龉，或者为了打官司破费不少。梦见自己当了官，要身居高位。梦见自己因犯罪被提交法院会受到法律制裁。梦见法官的心情高兴，要继承祖先遗产。\r\n'),
(38, '其它篇', '士兵', '    梦见士兵，意味着一生要靠出卖苦力维生。女人梦见士兵，会对一直未能生育，忧心如焚。少女梦见士兵，因找不到称心如意的男友，迟迟未能出嫁。青年男子梦见士兵，因为生活艰苦，所以无力完婚。梦见很多士兵在工作，一切忧愁和悲伤都会过去。梦见士兵打架，能与身居高职的人交朋友。梦见和士兵交朋友，危险会来自敌人。梦见参军，收入会增加，商人梦见参军，竞赛对手会严重地威胁着自己。\r\n'),
(39, '其它篇', '尼姑', '    男人梦见女出家人，无数的灾难会临头。女人梦见与出家人交谈，丈夫家的人能和睦相处，生活愉快。少女梦见与女出家人发生争吵，是凶兆，亲人会受辱。 \r\n'),
(40, '其它篇', '护士', '    梦见护士，要交好运。已婚女子梦见护士，不久会怀孕，得贵子。少女梦见有一群美貌的护士，很快要出嫁。少女梦见和护士争吵，婚事不顺利，迟迟不能出嫁。病人梦见护士，痛苦很快要过去。女人梦见当了护士，一生生活艰难。\r\n'),
(41, '其它篇', '官吏', '    梦见警察站着，是危险的兆头。梦见自己被逮捕，会成为政府官员所喜欢的人物。惯犯梦见警察抓人，多次作案，能发大财。梦见与警察交谈，会被提升。女人梦见与警察交谈，丈夫的保镖会受伤。但是囚犯梦见与警察谈话，很快会被释放。商人梦见与警察交谈，要提防竞争对手。领导人梦见与警察交谈，政府和警察会非常尊重自己。梦见与警察吵架，是凶兆，预示仇人和强盗在威胁着自己。未婚男子梦见与警察争吵，会带着自己的情侣逃跑。男人梦见请求援助，作梦人会幸福安全。女人梦见求助于警察帮助，很快要出狱。梦见挨警察的打，会贪污公款，损失惨重。梦见自己当了警察，会威信扫地。梦见自己穿着警服，会受到刑事案件的牵连。\r\n'),
(42, '其它篇', '医生', '    梦见印医，亲人会卧床不起。病人和久病痊愈的人梦见印医，病情会加重，或突然病倒。梦见与印医交谈，或向印医咨询，会身体健康，延年益寿。病人梦见和印医谈话，或请教印医，不久病情会好转。梦见与印医争吵，是不祥之兆，要遭受重大损失。梦见自己当了印医或西医大夫，不久会被辞退，或生意受到冲击。梦见去请印医，会与德高望众、受人民尊重的人建立友好关系。梦见与印医交朋友，不用求人送礼，就能发财。女人梦见丈夫当了医生，会患子宫病。梦见侍候医护人员，生意会起伏不定，生活动荡不安。\r\n'),
(43, '天象篇', '夜晚', '    梦见有月光的夜晚，是愉快的象征。已婚女人梦见无月亮之夜，想疼爱丈夫，却力不从心。未婚男子梦见月光之夜，是祥瑞。梦见夜晚很快过去了，会身强体壮，精神焕发。病人梦见黑夜很快结束了，不久病体会康复。\r\n'),
(44, '天象篇', '星星', '    梦见黑夜里闪亮星星，要交好运。已婚女人梦见夜晚闪烁的星星，夫妻生活会幸福。未婚女子梦见黑夜里天空闪亮的星星，不论走到哪里，都会有很多支持者。病人梦见夜晚里闪烁的星星，不久会恢复健康。梦见月光之夜里闪烁的星星，能降服敌人。梦见夜晚闪亮的星星被乌云遮住，会生病。梦见流星，会生病或遭厄运 。\r\n'),
(45, '天象篇', '太阳', '    男子梦见朝阳，要交好运，生活会幸福。女人梦见朝阳，要生一个男孩，孩子长大后会成为一位杰出的人物。男人梦见夕阳，要遭厄运。已婚女子梦见夕阳，会生一个女孩。未婚女子梦见夕阳，要嫁给一个穷苦人家。梦见正午的太阳，会被提升。病人梦见正午的太阳，不久身体会康复。犯人梦见正午的太阳，能很快恢复自由。家贫如洗的人梦见正午的太阳，能得到意外的钱财。梦见太阳突然被乌云遮住，倒霉的日子要来到。梦见阳光洒落在自己的床铺上，不是好兆头，意味着要生病。梦见住房里洒满阳光，生活会幸福、愉快。梦见骄阳似火，会患眼疾。商人梦见烈日，生意会亏损。旅游者梦见烈日，途中会遇到很多困难和事故。梦见在骄阳下睡觉，会身陷困境，但是最后能取成功。\r\n'),
(46, '天象篇', '月亮', '    梦见月亮，一切会顺心如意。梦见圆月，要发财，得贵子。男人梦见明亮的月光倾洒在地球上，钱财会被遮盖，要出事故。孕妇梦见满月，会生一个漂亮的男孩子。船员梦见残月，会遭不幸，航海时肯定要出事。未婚男子梦见新月，情侣会抛弃自己，因为思想苦闷，常常失眠。少女梦见半月是不祥之兆。病人梦见满月，身体很快会康复。\r\n'),
(47, '天象篇', '风、空气', '    梦见清风徐徐，会交好运。梦见刮污风，会遭到痛苦和不幸。呼吸到薰风，意味旅行平安、成功。商人梦见呼吸到香风，是生意获利的吉兆。相反梦到呼吸到污浊的空气，会大难临头。病人梦见呼吸到清新的空气，疾病会霍然而愈，但是梦见呼吸污浊的空气，将要忍受不幸和痛苦。\r\n'),
(48, '天象篇', '暴风雨', '    梦见暴风雨来临，会得到意外的收获。已婚女子梦见暴风雨来了，生活丰裕，儿女成行，丈夫的收入会巨增。未婚女子梦见暴风雨，婚姻会自主，能与有钱人结为伉俪。未婚男子梦见暴风雨，会娶殷实之家的姑娘为妻，生活也会富裕。商人梦见暴风雨，会设法推销产品，发大财。病人梦见暴风雨，身体很快会康复。旅游者梦见暴风雨，旅行会愉快。\r\n<br><br>    梦见下大雨，事业会遇到障碍，梦见狂风暴雨，所从事的工作会有好收入。女人梦见狂风暴雨，家里会遇到困难。与妻子和情人分离的男人梦见下大雨，会与她们长期分离。农民梦见下大雨，是祥瑞，会喜获丰收。但是商人梦见下雨，生意会亏损。病人梦见下雨，会卧床不起。旅游者梦见下雨，旅行会圆满结束 。\r\n'),
(49, '天象篇', '雪', '    男人梦见下雪，会富有。女人梦见下雪，一切忧愁都会消失。病人梦见下雪，不久能恢复健康。商人梦见下雪，要到一个很远的国家去做生意。山区人梦见下雪，会离开住地搬到远处的城镇去住 。\r\n'),
(50, '天象篇', '暴风雨', '    梦见暴风雨来临，会得到意外的收获。已婚女子梦见暴风雨来了，生活丰裕，儿女成行，丈夫的收入会巨增。未婚女子梦见暴风雨，婚姻会自主，能与有钱人结为伉俪。未婚男子梦见暴风雨，会娶殷实之家的姑娘为妻，生活也会富裕。商人梦见暴风雨，会设法推销产品，发大财。病人梦见暴风雨，身体很快会康复。旅游者梦见暴风雨，旅行会愉快。\r\n'),
(51, '天象篇', '龙卷风', '    男人梦见龙卷风，能找到失散的朋友。女人梦见龙卷风，女客人会登门。病人梦见龙卷风，病情会更加恶化。囚犯梦见龙卷风，不久会与亲戚见面。商人梦见龙卷风，生意会突然受到挫折。旅游者梦见龙卷风，会安全地归来。\r\n'),
(52, '器物篇', '手风琴', '    梦见自己拉手风琴，生活会安宁幸福。梦见闲置的手风琴，会有不幸的消息。梦见别人拉手风琴，家里要办婚事。梦见手风琴拉着拉着坏了，幸福的生活会遇到麻烦。梦见女人把手风琴放在自己的家里就离去，能得到遗产。\r\n<br><br>    梦见放风筝，预订的计划会落空，生意受大亏。女人梦见风筝，会家破人亡，少女梦见放风筝，所爱的人，全都是花花公子。 \r\n<br><br>    梦见寒风凛冽，侵入肌骨，不久会有好消息。已婚女人梦见刮寒风，冻得身体直哆嗦，很快要应邀回娘家。梦见刮起湿风，会有贵客登门。已婚女人梦见刮湿风，很快要怀孕。梦见刮来阵阵热风，要生病。\r\n<br><br>    男人梦见龙卷风，能找到失散的朋友。女人梦见龙卷风，女客人会登门。病人梦见龙卷风，病情会更加恶化。囚犯梦见龙卷风，不久会与亲戚见面。商人梦见龙卷风，生意会突然受到挫折。旅游者梦见龙卷风，会安全地归来。\r\n<br><br>    梦见暴风雨来临，会得到意外的收获。已婚女子梦见暴风雨来了，生活丰裕，儿女成行，丈夫的收入会巨增。未婚女子梦见暴风雨，婚姻会自主，能与有钱人结为伉俪。未婚男子梦见暴风雨，会娶殷实之家的姑娘为妻，生活也会富裕。商人梦见暴风雨，会设法推销产品，发大财。病人梦见暴风雨，身体很快会康复。旅游者梦见暴风雨，旅行会愉快。\r\n<br><br>    梦见清风徐徐，会交好运。梦见刮污风，会遭到痛苦和不幸。呼吸到薰风，意味旅行平安、成功。商人梦见呼吸到香风，是生意获利的吉兆。相反梦到呼吸到污浊的空气，会大难临头。病人梦见呼吸到清新的空气，疾病会霍然而愈，但是梦见呼吸污浊的空气，将要忍受不幸和痛苦。\r\n'),
(53, '天象篇', '月食、日食', '    梦见月食，预示主要亲人，特别是家庭的女性成员要生病或死亡。梦见日食，会丧失生活能力，经济还会受到损失。女人梦见月半食，已婚的女儿要归天。女人梦见日半食，意味着儿子生病或丈夫的经济来源减少。梦见出现月食或日食，天上布满乌云，身陷困境时，会得到朋友的帮助。 \r\n'),
(54, '天象篇', '去彩', '    梦见云彩，是厄兆。梦见云彩被风吹散，天空晴朗，灾难会很快消除，并一去不复返。梦见太阳附近有云彩，是吉兆，意味着在贵人的帮助下能摆脱困境。梦见白云，自己和邻居的庄稼会获丰收。梦见乌云，住宅区会出现传染病。梦见彩云，邻居会发生流血事件，或敌人侵犯国土。梦见在云彩里飞翔，会成为居住区的领袖。\r\n'),
(55, '天象篇', '雷声', '    梦见雷雨大作，事业会成功。已婚女子梦见暴雨雷鸣，会更爱自己的丈夫。未婚女子梦见大雨瓢泼、雷声轰鸣，会嫁给有名望的人。商人梦见雷声大作，会发大财。病人梦见大雨瓢泼、雷声轰鸣，身体很快会康复。犯人梦见暴雨雷鸣，不久会出狱。\r\n'),
(56, '天象篇', '彩虹', '    已婚男子梦见彩虹，是祥兆，生活会幸福，充满爱情。已婚女人梦见彩虹，会与丈夫长期分离。未婚男子梦见彩虹，不久就要结婚。未婚女子梦见彩虹，会嫁给一位聪明能干体贴自己的丈夫。热恋中的男子梦见彩虹，是吉兆，会与恋人相处得很幸福。离开家的人梦见彩虹，不久要回家，与妻子和孩子团聚。病人梦见彩虹，身体很快康复。犯人梦见彩虹，健康会每况愈下，体重减少。士兵梦见彩虹，不久会上前线，参加激烈的战斗。农民梦见彩虹是吉兆，能获大丰收。商人梦见彩虹，是不祥之兆，生意会亏损。旅游者梦见彩虹，自己的目标一定能实现。流亡者梦见彩虹，会很快回到自己的祖国。梦见半截彩虹，灾祸会临头。\r\n'),
(57, '天象篇', '闪电', '    梦见十分耀眼的闪电，要去外国旅行。梦见远处雷打电闪，要遭受损失和不幸。学生梦见打雷闪电，是祥兆，能取得优异的考试成绩。少女梦见打雷闪电是吉兆，会嫁到一个有名望的家庭。男性病人梦见打雷闪电，身体会复原。梦见雷电过后，四周一片漆黑，意味着灾难临头，灾祸有可能落到做梦人的头上也可能降到受自己保护的人头上。梦见不时闪电，看不清道路，只好摸黑走路，会击败对手，度过难关和不幸。梦见差一点儿被雷电击伤，灾难可以避免。梦见外出时，晴天打雷，要想提升，困难重重。农民梦见闪电，要发生旱灾和饥荒。\r\n'),
(58, '山地篇', '火山', '    男人梦见火山爆发，由于自己的目的未能达到，所以会心灰意冷。女人梦见火山爆发，会旧病复发，人命危浅。病人梦见火山爆发，恢复健康有希望。囚犯梦见火山爆发，企图越狱，将是徒劳的。商人梦见火山爆发，会遇到强手，经济会遭受损失。梦见死火山，能交上新朋友。梦见在火山下面行走，工作不稳定。\r\n<br><br>    梦见火山爆发，是危险的兆头。梦见火星飞扬，要来钱。梦见家里着火，会有好运。梦见火被扑灭了，会缺吃少穿，或失去爱情。女人梦见轻而易举点着了火，儿子会聪明漂亮。如果梦见火不易点燃，会失望怕羞。梦见肢体不幸烫伤，不久要发高烧。梦见很多房屋烧毁，意味着很多同胞将被饿死或被霍乱夺去生命。 \r\n<br><br>    男人梦见火箭，会升官进爵。女人梦见火箭，家里要举办婚礼。梦见火箭展览，每天所挣仅够糊口。梦见出售火箭，是不祥之兆，倒霉的日子会来到。梦见制造火箭，能征服敌人。船员梦见火箭，航海会成功。\r\n'),
(59, '山地篇', '土地', '    男青年梦见得到一块捐献的土地，会娶一位绰约多姿的姑娘为妻。已婚男子梦见得到一块捐献的土地，妻子会给他带来很多财产。已婚女人也做了同样的梦，生活会富裕。梦见自己的田地阡陌，一眼望不到边，生活会富有幸福。梦见黑色的土地，生意会亏损。梦见长着庄稼的土地，要发大财。梦见耕种土地，庄稼会获丰收。梦见买地，身体强壮。梦见卖地，忍饥挨饿。\r\n'),
(60, '山地篇', '石头', '    梦见石头生活艰苦。女人梦见石头，会得胃病。梦见黑石头，敌人会阴谋反对自己。梦见白石头，很难处理好家产的分配。梦见用头搬运石头，能很好地履行肩负的责任。梦见砸石头，是吉兆，艰苦奋斗，能有所获。梦见用石头打人，大难会临头。梦见别人用石头打自己，会远近闻名。梦见在石头上行走，生活会舒适。囚犯梦见在石头上行走，很快会被释放出狱 。\r\n'),
(61, '山地篇', '地道', '    梦见自己藏在地道里或地下室内，灾祸会降临。已婚女人梦见自己躲在地道里，会得重病，或者流产。病人梦见自己钻进地道，自己的病会成为不治之症。商人梦见藏在地道里，会被竞争对手排挤出市场。梦见别人躲在地道里，会官运亨通。梦见妻子藏在地道里，是祥瑞，自己会富有。梦见朋友躲在地道里，会得到朋友的帮助。\r\n'),
(62, '山地篇', '田地', '    梦见买地，能找到一位贤慧美貌的妻子，或生意兴隆。梦见卖地，家境会一团糟，挨饥受饿。梦见田地、牲畜和家具，一切努力都会成功。梦见农机具和田地，出洋过海做生意，能赚大钱。梦见未种庄稼的闲田，会遇到困难。梦见庄稼田，生活会富裕。梦见种闲田，家里要吵架，或与别人发生争吵。准备结婚的男女青年梦见种闲田，婚事会遇到麻烦。无子女的夫妇梦见种不毛之地，会生一个又丑又懒的后代。商人梦见不毛之地，生意要亏本。梦见被雨水淹没的田地，水灾会给自己带来损失。梦见很多农民在田间耕作，要做大生意，由于能善于经营，会赚大钱。梦见稻田，要发财。梦见大麦田，延年益寿；子孙满堂。梦见女人在田里干活，要生病。\r\n'),
(63, '山地篇', '沙子', '    男人梦见成堆的沙子，困难会纷至沓来。女人梦见成堆的沙子，会怀孕。梦见在沙子上行走，意味着要搬家。梦见用头搬运沙子，会身负重任。梦见有人向自己的头上抛撒沙子，会上朋友的当，要破产。病人梦见沙子会长期卧床不起。\r\n'),
(64, '山地篇', '河流', '    梦见河流意味着幸福、富有。女人梦见河流，会接到父母的邀请回娘家。农民梦见河里发了洪水，庄稼丰收。梦见干涸的河，会受到损失。旅游者梦见退了潮的河，前进的道路上会有很多障碍。梦见过河，一切顺心如意，捷报频传。囚犯梦见过河，不久会出狱。商人梦见过河，能转亏为盈。男人梦见在河里潜水，身体会健壮。女人梦见潜水，会生男孩。 \r\n'),
(65, '山地篇', '水灾', '    梦见水灾，要来钱。梦见罕见的水灾，会遭敌人反击。已婚女子梦见水灾，要忍受子宫疾病的折磨。男性老年人梦见水灾，会平静离开人世。未婚姑娘梦见发生水灾，父母会同意她与心上人结婚。\r\n'),
(66, '山地篇', '水库', '    男人梦见大水库，会富有。女人梦见大水库，夫妻生活幸福，白头偕老。未婚女子梦见大水库，会嫁给一位十分富有的男子。未婚男子梦见大水库，会娶一位品行端正、称心如意的女子为妻。商人梦见大水库，捷报会频传。男人梦见在水库里潜水，会身强力壮。女人梦见在水库里潜水，意味着要怀孕。热恋中的男子梦见和恋人一块在水库里潜水，两人都会很幸福。商人梦见在水库里洗澡，不久的将来，会做一宗大买卖。梦见修水库，会名声大噪。梦见往水库里放水，是不祥之兆，会饔飧不继。但是梦见排入水库里的水，会成为大机构的负责人。梦见干涸的水库，会生病。梦见水库里盛满牛奶，儿女会成行。\r\n'),
(67, '山地篇', '湖泊', '    男人梦见有很多水的湖泊，家畜增多。女人梦见水多的湖泊，身体康健，儿女成行。梦见干涸的湖泊，要遭饥荒，病魔缠身。梦见浅湖，灾祸会临头。梦见深湖，能战胜敌人。离开家的人梦见蓄满水的湖，能发财，会凯旋而归。商人梦见盛满水的湖，能发大财。梦见往湖里灌水，会受人们的爱戴。梦见排放湖里的水，会对家人的病长期忧心忡忡。梦见在湖里游泳，是不祥兆，日子会过得紧巴巴。梦见沉入湖里，意味着受损和生病。梦见从湖里挖泥，能继承遗产。妇人梦见在湖里洗澡，能找到一位体贴入微的丈夫。男人梦见在湖里洗澡，能找到一位贤慧的妻子。梦见水多的湖泊，是成功的先兆。梦见臭水湖，要生病。梦见在湖里游泳，生意萧条。梦见阴天在湖边野餐，生活会安宁、幸福。\r\n'),
(68, '山地篇', '泉水', '    梦见泉水，生活美。梦见在泉水里洗澡，做梦者会挺而走险。\r\n'),
(69, '山地篇', '海洋', '    男人梦见海洋，不久会有令人振奋的消息。女人梦见海洋，随着家里人的增长，肩上的担子也会越来越沉重。商人梦见海洋，生意兴旺，遍布各地。梦见海涨潮，或者起风暴，困难会堆积如山。梦见自己站在海岸上，生活会有不幸。病人梦见站在海岸上，病情会严重、恶化。学生梦见站在海岸上，考试会不及格。失业者梦见站在海岸上，会有多次就业机会，但是因为不能胜任，一切努力是徒劳的。\r\n'),
(70, '山地篇', '地球', '    梦见地球和其它星球围绕着太阳运转，是祥兆，身体健康长寿。梦见大地破裂或有裂缝，国家大部分地区要受灾，霍乱流行。梦见自己周围的大地伏起，会突然被提升 。\r\n'),
(71, '山地篇', '悬崖', '    梦见悬崖，生命和财产都会受到严重的威胁。梦见站在悬崖边上，灾难会降临在自己和家人的头上。梦见从悬崖上掉下来，生意会倒闭。已婚女人梦见自己从悬崖上掉下来，会被丈夫看不起。青年男女梦见从悬崖上掉下来，是不祥之兆，至交的竟会失败。商人梦见从悬崖上跌落下来，生意会突然受到冲击。病人梦见从悬崖上跌落下来，处境艰难。老人梦见从悬崖上掉下来，孩子会溘然而逝。工作人员梦见掉在悬崖下，会有被解雇的危险，或被辞退。梦见陌生人从悬崖上跌落下来，能治服自己的仇敌，但是会与自己的支持者分道扬镳。梦见妻子从悬崖上掉下来，妻子会更加体贴自己。梦见有人把自己从悬崖上推下去，会遭人暗算，有可能丧生 。\r\n'),
(72, '山地篇', '火山', '    男人梦见火山爆发，由于自己的目的未能达到，所以会心灰意冷。女人梦见火山爆发，会旧病复发，人命危浅。病人梦见火山爆发，恢复健康有希望。囚犯梦见火山爆发，企图越狱，将是徒劳的。商人梦见火山爆发，会遇到强手，经济会遭受损失。梦见死火山，能交上新朋友。梦见在火山下面行走，工作不稳定。\r\n'),
(73, '山地篇', '地带', '    男人梦见光秃秃的地带，健康会每况愈下。女人梦见不毛的地带，不久要分娩。病人梦见光秃秃的地带，会长期卧床不起。梦见别人的区域，事业会成功。梦见敌人的区域，能征服敌人。梦见妻子的领地，夫妻会恩爱如初。\r\n'),
(74, '器物篇', '飞机', '    梦见飞机，将要去旅行，很快会见到久别的亲友。但是梦见自己乘飞机旅行，作梦人的亲属或近亲会生病或死亡 。\r\n'),
(75, '器物篇', '旗帜', '    梦见旗帜，有好消息。梦见半载的旗子飘扬，要受苦难。囚犯梦见旗子，很快会被释放。已婚女子梦见旗子，会长期与丈夫分居。少女梦见旗子，会嫁给一位有社会影响的人物。梦见黄色旗，生意兴旺。梦见三色旗，是忧愁和不幸的兆头。梦见半月旗，家庭和睦，相互帮助。梦见打旗语，会与老朋友断绝关系。梦见向别人送旗子，会成为奴仆。\r\n'),
(76, '器物篇', '肉', '    梦见肉或吃肉，要发大财。梦见吃人肉，能挣大钱，会成为百万富翁。梦见卖肉，要与心上人结为良缘。梦见肉铺，家里生活会困苦。梦见煮肉，生意会好转。梦见腐烂的肉，是生病的预兆。梦见吃狮子肉或狼肉，会神经错乱。\r\n'),
(77, '器物篇', '白糖', '    已婚男人梦见吃白糖，要交好运。已婚女人梦见吃白糖，会生一个漂亮的孩子。未婚男子梦见吃白糖，会与一位仪态万方、性情温和的姑娘结为伴侣。病人梦见吃白糖，会长卧床不起。梦见制造白糖，会做对自己有好处的工作。梦见购买白糖，好日子即将到来。梦见做白糖生意，事业或生意要受到损失。梦见送给别人白糖，朋友会反对自己。梦见得到白糖，会名声大噪，官运亨通 。\r\n'),
(78, '器物篇', '茶', '    男人梦见喝茶，生活会幸福、愉快。女人梦见喝茶，丈夫会更加宠爱自己。未婚男子梦见喝茶，会娶一个贤慧的女人为妻。未婚女子梦见喝茶，会嫁给一位富有的商人。热恋中的男子梦见喝茶，爱情会更加深厚。商人梦见喝了一杯茶，要乘船出国。病人梦见喝了一杯茶，会有贵客登门。女人梦见给丈夫端茶，很快要分娩。梦见煮茶，倒霉的日子要到来 。\r\n'),
(79, '器物篇', '浴盆', '    梦见浴盆，会成为处理家务的能手。梦见在澡盆里洗澡，要遭厄运。已婚女子梦见在浴盆里洗澡，不久会怀孕。未婚女子梦见在澡盆里洗澡，会为婚事忧心忡忡。病人梦见在浴盆里洗澡，健康能慢慢恢复。商人梦见在浴盆里洗澡，生意会遇到困难。囚犯梦见在浴盆里洗澡，不久会自由。旅游者梦见在浴盆里洗澡，途中会发生车祸。梦见购买浴盆，做梦人要生病。\r\n'),
(80, '器物篇', '灯', '    梦见划船时，远方有灯光，生活会富裕。梦见家里灯光耀眼，会有万贯家财。梦见昏暗的灯光，要生病。梦见自己手里端着灯，一切忧愁和痛苦都会过去，并且能交上知己。梦见灯燃而又灭，重复多次，亲人会去世。梦见很多人提着灯，会远近闻名。与妻子分居多日的男人梦见自己房子里的灯光十分刺眼，能很快见到妻子。梦见灯光乍明乍暗，繁荣和衰落会伴随着自己的一生。\r\n'),
(81, '器物篇', '车辙', '    男人梦见车轮的车辙，能交好运。女人梦见车辙，父母会叫自己回娘家。商人梦见车辙，生意会十分兴旺。农发梦见车辙，能喜获丰收。旅游者梦见车辙，旅行会平安无事。病人梦见车辙，要去很远的城市去治病。\r\n'),
(82, '器物篇', '绳索', '    梦见绳索会长寿。女人梦见绳索，会与丈夫永不分离。男人梦见编制绳索，会吝囊羞涩。女人梦见编制绳索，会身陷囹圄。犯人梦见编制绳索，会受到监狱官员的照顾。农民梦见编制绳索，发生旱灾粮食减产。梦见线绳，要去长途旅行。梦见攀绳上房，会被擢升。\r\n'),
(83, '器物篇', '风筝', '    梦见放风筝，预订的计划会落空，生意受大亏。女人梦见风筝，会家破人亡，少女梦见放风筝，所爱的人，全都是花花公子。 \r\n'),
(84, '器物篇', '网球', '    男人梦见打网球，会增加额外开销。已婚女子梦见打网球，自己和孩子的身体都会很健康。未婚女人梦见打网球，会嫁给一个与自己性格不合的男人。学生梦见打网球，考试会不及格。商人梦见打网球，生意能赚大钱。梦见别人打网球，生活会幸福、愉快。梦见网球比赛，会得到人们的爱戴。学生梦见网球比赛，预兆自己的品德高尚。\r\n'),
(85, '器物篇', '手铐', '    梦见手铐，事业会成功。梦见戴上手铐，会扬名天下。梦见自己打开别人手上的手铐，会受到严厉的惩罚。梦见别人手上的手铐开了，两者会发生争斗。梦见给别人手铐，他们会成为患难之交。\r\n'),
(86, '器物篇', '珍珠', '    梦见珍珠，要破财。男人梦见珍珠，收入会减少。女人梦见珍珠，首饰会丢失。男人梦见戴珍珠项链，妻女会受苦。银行家梦见珍珠，生意会好转，发大财。工作人员梦见购买珍珠，会被提升。失业者梦见丢失了珍珠，不久会找到工作。梦见赠给仇人珍珠，仇人会向自己屈服。梦见赠送珍珠给朋友，自己的名声会大震。梦见馈赠给妻子珍珠，两人的爱情会更深厚。女人梦见赠送给丈夫珍珠，丈夫会因破产而痛苦不已。但是梦见得到珍珠，会被擢升。梦见住宅周围撒满了珍珠，家里会发生内讧。梦见强盗抢劫了自己的珍珠，会继承一笔财产。\r\n'),
(87, '器物篇', '宝石', '    女人梦见宝石，是祥瑞。男人梦见宝石，要遭厄运。男子梦见买宝石，财产会被土匪抢劫一空。女人梦见佩戴宝石首饰，娘家要举行婚礼。小偷强盗梦见宝石首饰，会被关进监牢。\r\n'),
(88, '器物篇', '黄金', '    梦见黄金是失败的兆头。女人梦见金子丢失，要买新首饰。梦见有人向自己赠送黄金，会遭受损失。\r\n'),
(89, '器物篇', '宝藏', '    梦见藏匿的金银财宝，会遭不幸。男人梦见聚积珍宝，会啼饥号寒。女人梦见藏珠宝，不久要临盆。未婚女子梦见藏财宝，会嫁给一位有钱的男人。商人梦见藏匿财宝，生意会亏损。梦见把自己的财宝送给别人，能发大财。\r\n'),
(90, '器物篇', '匕首', '    梦见佩带匕首，会声誉鹊起。梦见用匕首与军官博斗，而且被对方刺伤，短期会获得高级军功章。梦见丢失了匕首，意味着在危急时刻会失去帮助。梦见赠送匕首，会战胜敌人，取得胜利。\r\n'),
(91, '器物篇', '鼓', '    梦见鼓，要出席喜庆仪式，但是梦见敲鼓，会遇到困难。少女梦见自己敲鼓，会马上出嫁。已婚女子梦见鼓，会怀孕生子。梦见有人在自己的家门0口敲鼓，家里有人要生贵子。军官梦见鼓，会被提拔。\r\n'),
(92, '建筑篇', '铁路', '    男人梦见铁路，要去长途旅行。已婚女人梦见铁路，会与丈夫分离。未婚女子梦见铁路，会嫁到遥远的城镇去。囚犯梦见过铁路，会转到别的监狱去。梦见过铁路，危险要降临。梦见修筑铁路，是祥兆，权力会更大。士兵梦见铁路，是凶兆，会遇到敌人的突然袭击。军官梦见参加修筑铁路，是吉兆，能战胜敌人。\r\n<br><br>    梦见铁是不祥之兆。梦见做铁器生意，能发财。女人梦见使用铁炊具，丈夫的收入锐减，生活贫困。梦见背送铁，会死里逃生。梦见在炼铁厂上班，工作会艰难劳累。\r\n'),
(93, '器物篇', '剑', '    梦见锋利的剑，会遇到危险。女人梦见锋利的宝剑，小偷或强盗会光顾自己的住所。梦见插入剑鞘里的剑，必要时会得到别人的帮助。梦见挂在墙上的剑，生活会愉快、安宁。梦见用剑刺别人，会受到敌人的攻击。梦见别人用剑刺自己，一切忧愁都会过去。梦见赠送别人剑，会官运亨通。士兵梦见别人送给自己的剑，能获得高等军功章。商人梦见收到别人赠送的宝剑，会把竞争对手挤走。\r\n'),
(94, '器物篇', '手枪', '    梦见用手枪打死人，会失去爱情。商人梦见扔掉了手枪，生意会兴隆。士兵梦见丢掉了手枪，能被提拔。梦见自己被手抢弹击中，很快就要结婚，或参加至亲的婚礼。梦见购买手枪，能升官进爵。梦见出售手枪，会失去很多的钱财。梦见做手枪买卖生意，会受到国家领导人的器重，获得荣誉头衔。梦见抢夺别人的手枪，会遇上土匪。梦见往手枪里装子弹，危险时会得到朋友的同情。梦见得到了一把手枪，会德高望众。梦见给别人手枪，会引起大的灾难。梦见偷手枪，每日所得，只够糊口。梦见手枪丢失了，能和家人同生死，共患难。梦见放枪，会有不幸。梦见自己打枪，但是刚一扣扳机，枪管就炸裂了，意味着在非常时期，朋友和信赖的人也会欺骗自己。梦见有人朝自己开枪，却未伤着，会被指控犯了罪，但由于证据不足，会被释放。女人梦见带着枪，家里会遭武装土匪的抢劫。\r\n'),
(95, '器物篇', '钻石', '    梦见自己佩戴钻石，爱情会遇到麻烦。未婚女人梦见佩戴钻石，会嫁给一位称心如意、富有的男子。\r\n'),
(96, '器物篇', '戒指', '    已婚男子梦见戒指，会得到爱情。已婚女人梦见戴金戒指，会生男孩。未婚男子梦见戴金戒指，能与自己意中人结为伉俪。未婚女子梦见戴金戒指，会与陌生人一见钟情。热恋中的男子梦见戴金戒指，会见到自己的情侣。已婚男子梦见妻子送戒指给自己，妻子会更爱自己。女人梦见丈夫赠送戒指给自己，生活会幸福、富有。未婚男子梦见恋人给自己戒指，不久要结婚成家。男人梦见戒指丢失了，夫妻会拌嘴。女人梦见丢了戒指，会长期与丈夫分离。梦见得到金戒指，是凶兆，会遭受损失。梦见买戒指，家里要举办婚礼。男人梦见卖金戒指，意味着要出国访问。商人梦见买金戒指生意能赚大钱。囚犯梦见金戒指，不久会释放出狱。梦见戴银戒指，要生病。梦见戴金属戒指，会家贫如洗。\r\n'),
(97, '器物篇', '布娃娃', '    梦见布娃娃，是吉兆。已婚女子梦见布娃娃，会生男孩。少女梦见布娃娃，会结婚成家。男子梦见布娃娃，妻子会生女孩。\r\n'),
(98, '器物篇', '耳环', '    梦见耳环，婚姻美满、幸福。已婚女子梦见自己佩戴金耳环，会生一个漂亮的男孩。男人梦见自己戴金耳环，会一生冥顽不灵、愚味固陋。梦见别人佩铜耳环，收入会锐减。男人梦见自己戴金耳环，妻子会很快怀孕。\r\n'),
(99, '器物篇', '项链', '    热恋中的女子梦见佩戴银项链，丈夫会富有。未婚男子梦见收到项链礼物，会娶殷实之家的千金为妻。梦见购买项链，家里要办喜事。梦见项链丢了，是不祥之兆，会贪污公款，遭受重大损失。梦见制作项链，会作有利可图的生意。梦见佩戴金项链，会有好消息。梦见自己的项链断了，会听到坏消息。梦见铁项链断了，好事会来到。梦见佩戴铁项链，要被送进监牢。 \r\n');
INSERT INTO `gooraye_dream` (`id`, `category`, `title`, `content`) VALUES
(100, '器物篇', '香水', '    已婚男人梦中闻到香水味，收入会增加。未婚男女梦中闻到了香水味，会因找不到意中人，只好形影相吊。已婚女人梦见闻到香水味，会更加疼爱自己的丈夫。梦见在衣服上洒香水，花销会大增。梦见去香水商店，会与上层人物建立友谊。梦见购买香水，会受到人们的喜欢。梦见开香水商店，不仅自己发财，而且亲友也会从中得到好处。梦见给别人的衣服上洒香水，要被提升。梦见给恋人的衣服上洒香水，会赢得她的爱情。已婚女人梦见丈夫的衣服上洒香水，会生一个漂亮的男孩。\r\n'),
(101, '器物篇', '首饰', '    男人梦见首饰，家庭消费巨增。梦见佩戴首饰，妻子或情侣会离开人世。女人梦见一个或几个首饰，丈夫会富有。梦见佩戴金首饰，或镍首饰，丈夫会穷困潦倒或与世长辞。少女梦见戴首饰或镍首饰，丈夫会穷困潦倒或与世长辞。少女梦见戴首饰，会嫁给有钱的人家。梦见别人偷首饰，发财的美梦难以实现。\r\n'),
(102, '器物篇', '吉它', '    梦见吉他，意味着获得爱情。但是梦见断裂的吉他，会失去爱情。梦见弹着吉他唱歌，会找到一个疼爱丈夫、称心如意的好妻子 。\r\n'),
(103, '器物篇', '手风琴', '    梦见自己拉手风琴，生活会安宁幸福。梦见闲置的手风琴，会有不幸的消息。梦见别人拉手风琴，家里要办婚事。梦见手风琴拉着拉着坏了，幸福的生活会遇到麻烦。梦见女人把手风琴放在自己的家里就离去，能得到遗产。\r\n'),
(104, '器物篇', '钢琴', '    梦见钢琴，会摆脱忧愁。梦见家人听别人弹钢琴，收入会增加。已婚女人梦见听钢琴音乐，会与丈夫过上幸福的生活。未婚男子梦见听钢琴乐，不久会与恋人各奔前程。商人梦见听钢琴音乐，生意能赚大钱。梦见弹钢琴，家庭花销会增加。已婚女人梦见弹钢琴，会与别的女人发生口角。梦见钢琴突然坏了，会有不好的消息。梦见调试钢琴，会与好友断绝来往。梦见购买钢琴，孩子要成亲。梦见出售钢琴，家庭要破产。梦见馈赠给仇人钢琴，因打官司，处境艰难。梦见有人馈赠给自己钢琴，会与不诚实的朋友来往密切。梦见有很多架钢琴，出洋过海去外国做生意，能发财。\r\n'),
(105, '器物篇', '打孔机', '    男人梦见打孔机，会官运亨通。但是女人梦见打孔机，会受侮辱，遭诽谤。商人梦见打孔机，能赚大钱。工作人员梦见打孔机，会提职增薪。失业者梦见打孔机，很快会找到工作。梦见在纸上或皮子上打孔，威信会受损。女人梦见在纸上或皮子上打孔，不久会与丈夫分离。皮匠梦见在纸上或皮子上打孔，很快能在企业单位找到工作。梦见在金属上打孔，大难会临头。病人梦见在金属上打孔，会长期卧床不起。官员梦见在纸上打孔，执政的期限会延长。梦见做打孔的工作，会忍饥挨饿。\r\n'),
(106, '器物篇', '剪刀', '    梦见剪刀是吉兆，家里的一切事都会顺心如意。男子梦见使用剪刀，会与妻子分离。女人梦见使用剪刀，勤俭持家，而远近闻名。梦见断裂的剪刀，会减少寿命。梦见别人使用剪刀，是吉兆，裁缝梦见使用剪刀，工作中会受损 .\r\n'),
(107, '器物篇', '秤', '    梦见用秤，会待人不公。已婚女人梦见秤，丈夫会遇到不幸。未婚女子梦见秤，会抛弃自己的恋人。未婚男子梦见秤，会拒绝一美丽少女的求婚。梦见别人拿着秤会远近闻名。商人梦见使用秤，会忍受对手所造成的损失。梦见敌人拿着秤要遭受到损失\r\n'),
(108, '器物篇', '秤', '    梦见用秤，会待人不公。已婚女人梦见秤，丈夫会遇到不幸。未婚女子梦见秤，会抛弃自己的恋人。未婚男子梦见秤，会拒绝一美丽少女的求婚。梦见别人拿着秤会远近闻名。商人梦见使用秤，会忍受对手所造成的损失。梦见敌人拿着秤要遭受到损失\r\n'),
(109, '器物篇', '刺', '    已婚男人梦见身上扎了刺，生意会幸福、愉快。已婚女人梦见身上扎了刺，不久会怀孕。未婚女子梦见身上扎了刺，会嫁到一个富户人家。未婚男子梦见身上扎刺，会娶一位性情温和的女子为妻。梦见别人扎了刺，会遇到困难。梦见拔脚上的刺，家里会有许多忧愁的事。梦见给妻子拔脚上的刺，会与妻子分离。梦见敌人正在拔脚上的刺，是祥兆，敌人能被战胜。\r\n'),
(110, '器物篇', '刺', '    已婚男人梦见身上扎了刺，生意会幸福、愉快。已婚女人梦见身上扎了刺，不久会怀孕。未婚女子梦见身上扎了刺，会嫁到一个富户人家。未婚男子梦见身上扎刺，会娶一位性情温和的女子为妻。梦见别人扎了刺，会遇到困难。梦见拔脚上的刺，家里会有许多忧愁的事。梦见给妻子拔脚上的刺，会与妻子分离。梦见敌人正在拔脚上的刺，是祥兆，敌人能被战胜。\r\n'),
(111, '器物篇', '罐子', '    梦见空罐子，会悒悒不乐。梦见盛满水的罐子 ，生活会富裕。梦见盛满奶的罐子，会身体健康。梦见装有汤药的罐子，身体患病。梦见铁罐子，每天所挣，只够糊口。梦见新罐子，会扬名四海。梦见又旧又漏的罐子，经济来源会减少，家里的花销增多。梦见头顶罐子，为了生存只好拼搏。梦见罐子突然滚转起来，生意会破产。梦见往罐子里装东西，生意会好转。梦见把罐子送别人，会上当受骗，或丧失部分财产。\r\n'),
(112, '器物篇', '镜子', '    男人梦见照镜子，会交上爱撒谎的朋友。男人梦见自己映在镜子里的影子，会身体健康，寿比南山。已婚女子梦见自己在镜里的模样，会更疼爱丈夫。少女梦见镜子里的影子，能找到称心如意的夫君。病人梦见得到了一面镜子，病情会恶化。理发师梦见镜子，生意会获利。已婚女子梦见镜子，丈夫会爱上别的女人。梦见手里的镜子掉在地上破碎了，大难要临头。\r\n'),
(113, '器物篇', '烟斗', '    男人梦见别人抽烟斗，生意间能获利。梦见自己用烟斗吸烟，会身强力壮。女人梦见烟斗，丈夫家会减少人口。犯人梦见吸烟斗，很快能恢复自由。梦见带着烟斗去参加大会，会德高望众。梦见在群众大会上让别人抽烟斗，自已会被开除。梦见修理烟斗，或购买新烟斗，不久要去参加婚礼。梦见争烟斗，痛苦的事会接连不断。未婚女子梦见烟斗，会失去良机。病人梦见烟斗，很快能恢复健康 。\r\n'),
(114, '器物篇', '剃刀', '    已婚男子梦见用剃刀修面，能挣大钱。理发师梦见使用剃刀，收入会增加。商人梦见使用剃刀，不久要出国，而全能发大财。官员梦见使用剃刀，不久要升官进爵。梦见使用断裂的剃刀，生意会倒闭。梦见刮脸时，剃刀拉破了皮，要想取得胜利，必须付出艰苦的努力。梦见购买剃刀，意味着会调动工作。梦见出售剃刀，是凶兆，朋友会抛弃自己。梦见敌人拿着剃刀灾难会降临。梦见敌人拿着剃刀砍杀别人，会得到朋友的酬报 。\r\n'),
(115, '器物篇', '针', '    梦见针，是困难和痛苦的征兆。女人梦见做针线活儿，生活会富。男人梦见做针线活，会穷困潦倒。梦见断针，会被开除。梦见被针扎，会遭敌人突然袭击，损失惨重。\r\n'),
(116, '器物篇', '家具', '    梦见摆设的家具，要交好运。梦见非摆设的家具，要受损失。梦见新家具，会去遥远的国家经商。梦见拍卖别人的家具，是仇视有钱的人征兆。梦见杂乱无章的家具，妻子要生病。女人梦见变卖家里的家具，夫妇会感情不合。\r\n'),
(117, '器物篇', '梯子', '    梦见上梯子，扬名四海。梦见从梯子上掉下来，会受到歧视和非礼。梦见下梯子，经济会受损，名誉扫地。学生梦见下梯子，会通过考试。学生梦见下梯子，考试资格会被取消。学生梦见从梯子上跌落下来，会榜上无名。商人梦见下梯子，获利较少。孕妇梦见下梯子，要流产。梦见自己的梯子丢了，要提防小偷。\r\n'),
(118, '器物篇', '扇子', '    梦见扇子，会得到朋友的帮助，能摆脱困境。梦见女人手里拿着扇子，生意会兴旺。梦见给仇人摇扇子，他会屈服于自己。梦见扇子破了，助手会背叛自己。\r\n'),
(119, '器物篇', '钥匙', '    梦见找到了钥匙，高兴的事接连不断。梦见丢失了钥匙，会万念俱灭。梦见购买钥匙，要受损。女人梦见拿到丈夫的钥匙，会自由支配丈夫的钱财。梦见钥匙断了，生意会破产。梦见强盗那里找到了钥匙，会身陷囹圄。\r\n'),
(120, '器物篇', '拐杖', '    男人梦见拄拐杖，生活艰苦。女人梦见拄拐杖，小偷或强盗会光顾住宅。但是老年人梦见拄拐杖，晚年会生活幸福、舒适安宁。病人梦见拄拐杖，身体能慢慢康复。梦见敌人拄拐杖，会有危险。梦见朋友拄拐杖，危难时刻会得到朋友的帮助。梦见用拐杖打人，会臭名远扬。梦见别人用拐杖打自己，会扬名四海。梦见赠送拐杖给别人，意味着要结交新朋友。梦见别人赠送给自己拐杖，要被擢升。\r\n'),
(121, '器物篇', '行李', '    梦见要去旅行，但行李太多，十分不方便，一生会遇到许多难以解决的问题。梦见捆绑行李，预示要去国外工作。梦见当行李搬运工，日子会过得拮据。女人梦见给丈夫搬运行李，会受疾病的折磨。梦见在火车站托运行李，开销会增加。\r\n'),
(122, '器物篇', '钱包', '    男子梦见鼓鼓囊囊的钱包，各方面都能取得成功。女人梦见鼓鼓囊囊的钱包，会背叛丈夫。小偷梦见装满钱的钱包，要受到惩办。女人梦见空钱包，会更加爱丈夫，丈夫也会更真挚的来爱她，工作人员梦见空钱包，薪水会减少。商人梦见空钱包，倒霉的日子要来到。梦见从别人那里得到装满钱的钱包，朋友会背信弃义。女人梦见拿别人的钱包，丈夫会不喜欢她。少女梦见拿到恋人装满钱的钱包，不久会结为伴侣。梦见上司给自己一个空钱包，会被解职。梦见给别人钱包，是祥瑞。梦见给妻子一个鼓鼓囊囊的钱包，妻子会生男孩。梦见给仇人钱包，会降服仇人。商人梦见给朋友钱包，会开辟一个新的商业点。梦见偷别人的钱包，会受到人们的尊敬。梦见钱包丢失了，不久会买房置地。梦见强行抢别人的钱包，会官运亨通。梦见空钱匣，生意会亏损，财破名毁。梦见盛满钱的铁匣，意味着富裕，目的和愿望都能实现。\r\n'),
(123, '器物篇', '阳伞', '    梦见阳伞是吉兆。已婚男子梦见阳伞，家庭环境幽静，生活幸福。已婚女子梦见阳伞，使她感到诸事顺心、毫无牵挂。未婚男女梦见阳伞，会找到意中人。梦见在骄阳下打阳伞，意味着捷报频传。梦见购买阳伞，会应邀参加婚礼。梦见丢了阳伞，各方面都是一塌糊涂。梦见从别人那里得到了阳伞，意味着能战胜仇人。未婚男子梦见从情侣那里得到了阳伞，肯定会与她结为伉俪。囚犯梦见得到了一把阳伞，能获得自由。政府官员梦见得到一把阳伞，自己的整顿方案会得到国家的支持。\r\n'),
(124, '器物篇', '丝绸', '    梦见只穿一件丝绸上衣，是祥兆。但是梦见穿了一身丝绸服装，生意会亏损。梦见出售丝绸服装，会做对自己有好处的工作。梦见买丝绸衣服，孩子要成家立业。梦见赠送丝绸衣服给别人，不久会有好消息。\r\n'),
(125, '器物篇', '拖鞋', '    男人梦见拖鞋，灾祸要临头。女人梦见拖鞋，会与丈夫分离。未婚男子梦见拖鞋，会取得研究成果，生活幸福。未婚女子梦见拖鞋，会嫁给一位品德高尚虔诚的教徒。梦见穿银拖鞋，会名声大噪身居高位。梦见穿金拖鞋，会生病或受损。梦见穿新的皮拖鞋，一切会顺心如意。梦见拖鞋破裂，预兆要搬家。梦见买拖鞋，不久要建新房。梦见丢失了拖鞋，会受敌人的骗，遭受损失。\r\n<br><br>    男人梦见穿新鞋，要交好运。已婚女人梦见穿新鞋，夫妻会相亲相爱。未婚女子想见穿新鞋，会嫁给一位宽宏大量聪明能干的男子。未婚男子梦见穿新鞋，不久能得到恋人的爱。梦见买鞋，很快要去旅行，商人梦见买鞋，生意会兴旺。鞋匠梦见修鞋，会影响自己的前途。梦见穿旧鞋，倒霉的日子会到来。梦见鞋子丢了，灾难会临头。梦见偷别人的鞋，朋友会与他为敌。梦见用鞋打人，职位会被提升。梦见送鞋给别人，会应邀出席婚礼\r\n'),
(126, '器物篇', '拖鞋', '    男人梦见拖鞋，灾祸要临头。女人梦见拖鞋，会与丈夫分离。未婚男子梦见拖鞋，会取得研究成果，生活幸福。未婚女子梦见拖鞋，会嫁给一位品德高尚虔诚的教徒。梦见穿银拖鞋，会名声大噪身居高位。梦见穿金拖鞋，会生病或受损。梦见穿新的皮拖鞋，一切会顺心如意。梦见拖鞋破裂，预兆要搬家。梦见买拖鞋，不久要建新房。梦见丢失了拖鞋，会受敌人的骗，遭受损失。\r\n'),
(127, '器物篇', '衬衣', '    梦见穿衬衣，意味着身体健康。但是梦见穿羊毛衬衣，健康会每况愈下。梦见穿丝绸衬衣，会应邀出席婚礼。少女梦见着丝绸衬衣，很快会收到订婚的消息。青年男子梦见穿丝绸衬衣，会娶一个美如冠玉的女子为妻。梦见请裁缝做新衬衣，家里要举行婚礼。梦见购买的新衬衣，会突然去长途旅行。梦见卖衬衣，会饔飧不继。犯人梦见穿新衬衣，不久会释放出狱。病人梦见穿新衬衣，身体很快会康复。梦见赠送衬衣给别人，会有新朋友。热恋中的男子梦见赠送衬衣给恋人，马上会见到她。梦见得到别人送的衬衣，意味着能得到高等荣誉。梦见请人做很多件衬衣，女儿很快要出嫁。梦见穿破衬衣，会囊空如洗。梦见撕破自己的衬衣。会神经失常。\r\n'),
(128, '器物篇', '帽子', '    习惯戴帽子的人梦见买帽子，能获成功。但是不习惯戴帽子的人梦见帽子，意味着生活无计划，爱乱花钱。梦见戴破帽子，会缺吃少穿。女人梦见戴帽子，家里要来女客人 。\r\n'),
(129, '器物篇', '袜子', '    梦见穿袜子，预兆要生病。女人梦见穿袜子，能得到丈夫或恋人的爱。梦见购买袜子，很快要去旅行。梦见送给别人袜子，能交新朋友。梦见得到别人送的袜子，会忧虑重重。商人梦见穿破袜子，会病魔缠身。旅行者梦见穿破袜子，旅行会愉快、顺利。商店老板梦见穿破袜子，生意能获利。梦见袜子丢失了，财产所遇到的危险会消除。\r\n'),
(130, '器物篇', '床铺', '    梦见躺在床铺上，是痛苦和危险的先兆。梦见躺在床上没有入睡，意味着要生病。梦见躺在陌生人的床上，夫妻将要离婚。梦见躺在肮脏的床上睡觉，预示着自己将会囊空如洗，重病缠身，梦见熟睡在撒满鲜花的床上，将要命归西天。\r\n'),
(131, '器物篇', '被子', '    梦见被子，能交好运。已婚男子梦见盖被子，要与妻子分离。已婚女人梦见盖被子，生活会很幸福。未婚男子梦见盖被子，会与一位漂亮貌美的姑娘结为伉俪。未婚女子梦见盖被子，会嫁给一位身体强壮的研究工作者。小伙子梦见盖被子，会与恋人幸福相处。商人梦见盖被子，要漂洋过海赚大钱。病人梦见盖被子，会长期卧床不起。男人梦见缝被子，会做收入低的工作。女人梦见缝被子或做被子，丈夫的家会富有幸福。梦见给被子装填棉花，能发大财。梦见买被子，孩子要结婚。梦见卖被子，会调动工作。梦见借被子，会生病。梦见盖破被子，能高升。梦见盖小被子，会灾祸来临。梦见搬运被子，敌人会严重威胁自己。梦见给别人被子，住地会出现饥荒和瘟疫。\r\n'),
(132, '生活篇', '脱衣服', '    梦见脱衣服，意味着生活奢侈、放荡。女人梦见脱衣服，家庭会愉快。梦见主人或上司脱衣服，会受人奴役。梦见敌人脱衣服，对如何击败敌人，整天郁郁不乐，心情会非常忧烦。梦见妻子脱衣服，会有好消息。梦见别人脱衣服，很快能知道他们的隐私。病人梦见脱衣服，不久要去旅行。囚犯梦见脱衣服，在服刑期间会受到优待\r\n<br><br>    梦见干净的衣服，是好兆头。梦见脏衣服，要生病。已婚女子梦见脏衣服，家里会发生争吵。女人梦见洗脏衣服，生活会幸福。\r\n'),
(133, '器物篇', '地图', '    梦见地图，出国的亲友要回来。梦见查找地图。不久要出国。梦见制作地图，能发财。少女梦见制作地图，是不祥之兆，爱情会受挫折。\r\n'),
(134, '器物篇', '笔', '    梦见铁笔，威信大震。梦见自来水笔，生意会兴旺。梦见石笔，会贫寒交迫，生意倒闭。未婚男子梦见自来水笔，会娶一个受过良好教育的妻子。梦见用鹅毛笔写字，要做一宗新生意。失业者梦见鹅毛笔写字，不久会得到办事员的职位。商人梦见用鹅毛笔写字，会被人诬告，损失重大。竞选者梦见使用象牙笔，意味着能当选。梦见使用旧笔、破笔(或者笔尖是旧的、断裂的笔)写字，会出任濒临关闭的机构负责人，经济会受到损失。编辑梦见写着写着笔尖掉了，会遭到逮捕，并且被判长期徒刑。梦见有很多支笔，会成为一个大机构的负责人。梦见做笔的生意，会追回没有希望收回的欠款。\r\n'),
(135, '文化篇', '报纸', '    梦见看报，要来钱。梦见买报，心情忧虑。商人梦见看报，要发财。梦见看报，并且把纸撕成碎片，是忧愁的兆头。梦见卖报，生意会兴旺。 梦见为报刊写稿子，一切都会顺心如意。\r\n<br><br>    梦见白宣纸，是好兆头，未婚男子梦见白纸，会娶一位高等家族纯洁的姑娘为妻。少女梦见了白纸，会嫁给一位品德高尚的男子。梦见写有字的白纸，也是吉兆。工作人员梦见手稿，会受到嘉奖。失业者梦见手稿，能得到工作。梦见铅印的纸是凶兆，会受到损失。商人梦见印着字的纸，政府的经济政策会使自己破产。工作人员梦见印有字的纸会被上司解雇。梦见黑纸是凶兆。已婚女人梦见黑纸，对丈夫病会愁眉苦脸。受指控的人梦见黑纸，会被判死刑，或被驱逐出境。小偷和强盗梦见黑纸，打架斗殴时会一命乌呼。梦见红纸，会有好消息。身居高位的人梦见红纸，会接到政府高级官员的邀请。梦见绿纸，自己或家人要成亲。梦见信纸，会交上新朋友。囚犯梦见信纸，在朋友帮助下，很快恢复自由。梦见在信上写字，危险时刻会得到亲人的同情。梦见吸墨纸，会发财。商人梦见吸墨纸，会赶走自己的竞争对手。梦见做纸买卖，生意会出现逆差。梦见购买纸张，要开始新的生意。梦见有人给自己信，生意会倒闭，或与府官员发生争吵。\r\n'),
(136, '建筑篇', '皇后', '    男人梦见皇后，会经济受损。但是女人梦见皇后，丈夫会心情愉快。囚犯梦见皇后，很快能恢复自由。叛国者梦见皇后，不久会成为国家领导人的宠儿。商人梦见皇后，出国做生意能发大财。已婚女人梦见自己成了皇后，很快会与丈夫分离，或孩子生病，或者由于丈夫失业，左支右绌。未婚女子梦见自己当了皇后，会嫁到一个有名望富有的家庭。男人梦见同皇后握手，会受到国家尊重，官运亨通。未婚男子梦见与皇后握手，会娶富人家的小姐为妻。已婚女人梦见和皇后握手，会身居高位。未婚女子梦见和皇后握手，想与意中人结为伴侣，但却会遭到父母的阻拦。梦见和皇后争吵，能发大财 。\r\n'),
(137, '建筑篇', '寺庙', '    男人梦见寺庙，国家要发生暴乱。女人梦见庙宇，丈夫家的人会四分五裂。病人梦见寺庙，病情会加重。梦见进入寺庙，一切努力都会化为泡影。孕妇梦见进入庙宇，胎儿会有问题。商人梦见进入寺庙，生意会大亏损。梦见别人进了寺庙，一切困难都会过去。梦见妻子进了庙宇，夫妻生活和谐、幸福。梦见敌人跨入庙门，自己能降服他们。\r\n'),
(138, '建筑篇', '陵墓', '    男人梦见陵墓，会延年益寿。女人梦见陵墓，会情绪低落，心情烦闷。梦见去参观陵园，能得到真正的爱情。已婚女人梦见参观陵园，丈夫会更加体贴宠爱自己。未婚女子梦见参观陵园，会嫁给如意的郎君。未婚男子梦见参观陵园，会娶一位可爱忠贞的女子为妻。热恋中的男女梦见参观陵园，两个人的爱情会更深厚。梦见修建陵园，是不祥之兆，家里会有人生病，或与世长辞。病人梦见修建陵园，病情会恶化。\r\n'),
(139, '建筑篇', '墓地', '    梦见自己在教堂外面的公墓里散步，会有一个无忧无虑的幸福晚年。\r\n'),
(140, '建筑篇', '庙宇', '    梦见自己进了庙宇或坐在庙宇里，这是成功或成亲的吉兆 。\r\n'),
(141, '建筑篇', '断头台', '    男人梦见上断头台，会声誉鹊起。已婚女人梦见绞架，夫妻恩爱白头偕老。但是已婚男子梦见妻子上断头台，是不祥之兆，发愁和灾难会降临。梦见朋友上绞架，灾祸会来自敌人。但是梦见敌人上断头台，危难时刻会有很多朋友。梦见把妻子或朋友从绞架上解救下来，不幸的日子能得到神的帮助。囚犯梦见上断头台，很快会出狱。但是病人梦见上绞架，会长期卧床不起，人命危浅。\r\n'),
(142, '建筑篇', '铁路', '    男人梦见铁路，要去长途旅行。已婚女人梦见铁路，会与丈夫分离。未婚女子梦见铁路，会嫁到遥远的城镇去。囚犯梦见过铁路，会转到别的监狱去。梦见过铁路，危险要降临。梦见修筑铁路，是祥兆，权力会更大。士兵梦见铁路，是凶兆，会遇到敌人的突然袭击。军官梦见参加修筑铁路，是吉兆，能战胜敌人。\r\n'),
(143, '建筑篇', '道路', '    梦见自己在走陌生人所走过的路，事业会取得胜利。梦见和仇人一块同行，一定能击败他。梦见朋友或妻子是自己的同路人，会与他们的看法不一致。梦见独自一人行走，仇人会增多。梦见和朋友、妻子走的不是一条路，意味着更爱他们。梦见自己面前有好几条路，究竟走哪一条路举棋不定，捷报会频传。梦见忘了路，立即改行，会有好处。小偷梦见忘了路，通过自己的努力，能发财。未婚男子梦见忘了路，会找到志同道合的情侣。病人梦见忘了路，会得到很好的治疗，不久就能恢复健康。工作人员梦见忘了路，会提职增薪。\r\n'),
(144, '建筑篇', '塔', '    男子梦见塔，能高升。女人梦见塔，丈夫会身体强壮，寿比南山。未婚男子梦见塔，未婚妻是一位靡颜腻理，身体健康，品行端正的姑娘。少女梦见金字塔，会嫁给有名望的家族。受指控的人梦见金字塔，是凶兆，会被判为长期徒刑。商人梦见塔，能赚大钱。梦见修建塔，会臭名远扬。部队军官梦见塔，能打胜仗。梦见攀登塔，会度过严峻的难关。梦见铲平金字塔，会身居高位。梦见有很多塔，意味着要出国访问。\r\n'),
(145, '建筑篇', '贮水池', '    梦见贮满水的水池，预示身体康健。梦见干涸的水池，会忍饥挨饿。男人梦见在贮水池里洗澡，是富有的征兆。女人梦见在贮水池里洗澡，不久要分娩。梦见和妻子一块在贮水池里洗澡，夫妻生活和谐，幸福。梦见和朋友在贮水池里洗澡，会得到人们的爱戴。梦见仇人在贮水池里洗澡，会上当受骗。梦见给贮水池里放水，能发大财。梦见排放贮水池里的水，当地会遭旱灾。病人梦见在贮水池里洗澡，不久会恢复健康。\r\n'),
(146, '建筑篇', '港口', '    梦见港口，生意会出现空前的兴旺，由于出国访问会扬名天下。梦见自己的船进了水，快要沉入海底时，突然到达了码头，是祥瑞，在灾难中会得到陌生朋友的帮助。梦见离开港口，是与世长辞的先兆，或所在地要发生变革。\r\n'),
(147, '建筑篇', '剧院', '    梦见剧院，困难纷至沓来。女人梦见剧院，能独立自主，不依靠丈夫或保护人。男人梦见看话剧，会增加额外的开支。女人梦见看话剧，会受到侮辱。梦见和朋友一块儿去看话剧，会身强体壮。梦见和妻子一块儿去看话剧，夫妻生活和谐、幸福。商人梦见和朋友一起去看话剧，生意会兴旺。热恋中的女子梦见和恋人去看话剧，两人很快要见面。\r\n'),
(148, '建筑篇', '宫殿', '    梦见宫殿，会被奴役。梦见独自进宫，是不祥之兆。梦见和同伙进宫，会得到国家的赞誉。军队将领梦见包围了宫殿，能击败敌人，获得胜利。男人梦见登上宫殿，虽然家境不富裕，但却能娶好几个妻妾，或者在世的妻子花钱大手大脚。梦见从宫殿顶上下来，家人会闹矛盾。梦见被从宫殿赶出来，会成为德高望众的人物。梦见住在宫殿里，要饱尝铁窗之苦。但是囚犯梦见住在宫殿里，会得到减刑。学生梦见住在宫殿里，会连续留几年级。旅游者在旅行期间梦见住在宫殿里，旅途中会发生车祸。女人梦见和丈夫一块儿进宫殿，不久要怀孕。未婚女子梦见和自己的侍女一块进殿，会嫁到一个殷实有影响的家庭。梦见建造宫殿，会官运亨通。国王或国家领导人梦见旧城堡，统治范围会扩大。\r\n'),
(149, '建筑篇', '庭院', '    梦见宽敞的庭院，会困难重重。梦见在院子里睡觉，会身体强壮，延年益寿。已婚女人梦见宽阔的院落，会儿女成行。病人梦见宽敞的庭院，身体会康复。犯人梦见大院子，不久会释放出狱。梦见去别人的庭院，权力会更大。女人梦见去别人的庭院，会受到污辱。\r\n'),
(150, '植物篇', '苹果', '    梦见苹果，是成功和长寿的祥兆。梦见筐里有很多熟透了的苹果或桌子上摆着汁多熟透了的苹果，彩票会中奖，或找到地下财富。同时，有可能自己声誉鹊起、官运亨通。未生育过的妇女做上述的梦，是吉兆，她会很快怀孕。梦见不熟或腐烂的苹果，做梦人的经济会受损，或患病或家中遇到麻烦的事。\r\n'),
(151, '植物篇', '荔枝', '    小伙子梦见荔枝，是好预兆，婚姻幸福。姑娘梦见荔枝，是不祥之兆，父母会把自己嫁给一个无能之辈，毁了自己的一生。梦见吃荔枝，是祥兆。商人梦见吃荔枝，要发大财。久卧病床的人梦见吃荔枝，能摆脱病魔，身体康复。\r\n'),
(152, '植物篇', '梨', '    梦见梨，会扬名天下。梦见吃梨，会身强力壮。已婚女人梦见得到梨，不久会怀孕，能生一个漂亮的男孩。男人梦见得到梨，能发财。梦见送给朋友梨，是祥兆，会受人喜欢。梦见从梨树上摘梨，会经营一个有利可图的新生意。未婚女子梦见从梨树上摘梨，是吉兆。会嫁给如意的男子。未婚男子梦见从梨树上摘梨，会娶一个品行端正绝美的女子为妻。病人梦见吃梨，是不祥之兆。梦见把梨切分给众人，作梦人会缺乏远见，遭受损失。梦见卖梨，是凶兆，生意会失败。但是梦见买梨，能得到提薪，或收入增加。\r\n'),
(153, '植物篇', '西瓜', '    梦见熟西瓜，是祥瑞。梦见生西瓜，是凶兆。梦见吃西瓜，出国能发大财。梦见有人抢自己手里的西瓜，会打输官司，损失巨大。病人梦见吃西瓜，会困难重重 。\r\n'),
(154, '植物篇', '槟榔', '    梦见槟榔能发大财。梦见得到槟榔，会与自己的情侣喜结良缘。但是梦见槟榔，会与朋友发生争吵。梦见捡槟榔，会遭受损失。梦见购买槟榔，贵客会登门。梦见男女分槟榔，是不好的征兆，自己会成为诬陷攻击的目标。小伙子梦见从恋人那里得到槟榔，两人都能得到幸福。梦见给自己的女朋友槟榔，意味着各奔前程。病人梦见嚼槟榔，会与医生发生争吵，病情加重。梦见槟榔从手里撒落，生意会一塌糊涂。梦见给仇人送槟榔，仇人会给自己造成极大的损失。\r\n'),
(155, '植物篇', '大米', '    梦见蒸大米，为了赚钱必须做出艰苦的努力。梦见吃米饭，因为赚了很多钱，心情特别愉快。已婚女人梦见吃大米，要分娩。未婚男子梦见吃米饭，很快要喜结良缘。梦见稻子长势很好，生意会获大利。梦见成堆的大米，在国外做生意，能发大财。梦见买卖大米，会有挚友。病人梦见吃米饭，身体很快会康复。梦见买大米，是好的征兆，要为孩子举办婚礼。梦见给别人大米，是不祥之兆，灾祸会降临。梦见得到大米，是吉兆，会受到国家的尊重。梦见家里到处撒满了大米，要交好运。\r\n'),
(156, '植物篇', '桔子', '    梦见成熟的桔子，难交好运。梦见生桔子，是不祥之兆，会生病。已婚男子梦见购买桔子，在世的妻子去世会后娶一个年青的姑娘，或与一个美貌的女子结婚。未婚男子梦见购买桔子，则大吉大利，能娶一位婀娜多姿、身体健康的少女为妻。未婚女子梦见熟桔子，名声大噪。梦见给别人熟桔子，会受到赞扬。梦见剥桔子皮或挤桔子汁，生意能获大利。梦见有人在破坏果园，意味着有好几个仇人，他们会从多方面给自己造成损害。梦见自己带着仇人去果园，会与敌人讲和。\r\n'),
(157, '植物篇', '橄榄', '    梦见橄榄，失望的人会看到希望。学生梦见橄榄枝，考试能成功。梦见给别人橄榄，会擢升。梦见砍伐橄榄树，会失去发财的大好机会。小偷梦见自己拿着橄榄枝，要去溜门撬锁，会被当场抓获。热恋中的青年男子梦见自己有橄榄枝，恋爱会成功。\r\n'),
(158, '植物篇', '豌豆', '    梦见豌豆，是祥瑞。农民梦见豌豆，庄稼会获丰收。梦见吃生豌豆，是好兆头，身体强壮。但是梦见吃热豌豆，是不祥之兆，会患胃病。梦见吃腐烂豌豆，会人命危浅。梦见豌豆苗，是不好的征兆，收入会少得可怜。梦见打谷场上成堆的豌豆，收入会丰厚。梦见自己的客厅里铺满了豌豆，妻子或孩子要病倒。梦见吃豌豆的叶子，为了生存只好干繁重的体力活儿。梦见吃干豌豆，会精打细算，勤俭过日子。梦见吃油炸豌豆，是不祥之兆，每天所得，仅够糊口。梦见做豌豆生意，是凶兆，生意要倒闭。梦见磨豌豆，灾难会临头。惯犯梦见磨豌豆，不久会被送进监牢。\r\n'),
(159, '植物篇', '鲜花', '    梦见花，是有好运和发财的吉兆。梦见鲜花，幸福将与自己长在。梦见自己花园里的花全部枯萎，会大祸临头。梦见花更加好看，是祥兆。梦见有人毁花，会遇到灾祸。梦见鲜花，是吉祥、幸福和欢乐的征兆。梦见采摘鲜花，生意兴隆或家庭幸福。梦见采摘枯萎的花朵，是不祥之兆。梦见采摘时，花朵完好无损，拿到手里却调谢了，意味着愿望实现不了，经济要亏损。梦见戴花环，是高升的兆头。梦见有人给自己送花环，预示婚姻幸福，擅长文学。梦见头戴花冠，要当地区领导。梦见手里的花掉落，会患恶疾。病人梦中闻到花香，身体会康复。梦见鲜花被踩在脚下，灾难和死期会降临。梦见花束，意味着有所获，能交好运。恋人梦见花束，爱情会更深。恋人梦见约会时花束掉落，关系恶化。梦见花束的花朵枯萎，愿望不会实现，恋情会中断。\r\n'),
(160, '植物篇', '葡萄树', '    男人梦见葡萄树，事业会成功。女人梦见栽葡萄树，意味着儿女成行，丈夫富有。全家人生活幸福。老翁梦见栽葡萄树，会五世同堂，寿比南山。商人梦见栽葡萄树，预兆要做一笔生意，生意一定会兴隆，能发大财。梦见别人栽葡萄树，会困难重重。惯犯梦见别人栽葡萄树，会被送进监牢。梦见枯萎的葡萄树，倒霉的事将接连不断。\r\n'),
(161, '植物篇', '棕树', '    梦见棕树，会大吉大利，生活会幸福富裕。梦见攀登棕树，想实现自己的目标，却遇到很多困难，但最后能获得成功。梦见从棕树上下来，是不祥之兆，预示身体衰弱，收入减少。梦见砍伐棕树，会成为上司发泄怒气的对象，或被指控犯了阴谋叛国罪，或受到其他严惩。梦见自己手里拿着棕树叶，目前所从事的事业会取得辉煌的胜利，进行艰难的长途旅行者梦见棕树，旅行将会顺利，能平安地到达目的地。正在行进的部队军官梦见枯萎的棕树结果，是不祥之兆，会得胃病。梦见干枯的棕榈树也不是好的征兆，灾难会临头，收入会锐减。农民梦见果实累累的棕树，庄稼会喜获丰收。已婚女人梦见果实累累的棕树，夫妻会相敬如宾，白头偕老。未婚女子梦见高大的棕树结满果实，会嫁到一个享有盛名的家。梦见成堆的棕树干，能发财 。\r\n'),
(162, '植物篇', '荷花', '    梦见荷花，心情会愉快。未婚男女梦见荷花，能找到称心如意的对象。已婚女人梦见开放的荷花，能发财。梦见陌生人向自己赠送荷花，靠朋友，能发财。\r\n'),
(163, '植物篇', '玫瑰花', '    男人梦见玫瑰花，夫妻会相亲相爱。已婚女人梦见玫瑰花，会生一个漂亮的男孩。未婚男女梦见玫瑰花，很快要结婚。未婚男子梦见摘玫瑰花蓓蕾，要娶一个国色天香的少女为妻。梦见玫瑰花坛，意味着幸福、富有。梦见枯萎的玫瑰花，会遇到十分伤心的事。梦见向别人赠送玫瑰花，会受到人们的喜爱。梦见得到别人送的玫瑰花，会升官进爵。病人梦见玫瑰花，身体会复原。商人梦见玫瑰花，不久会成为百万富翁。\r\n'),
(164, '植物篇', '萝卜', '    男人梦见切萝卜或吃萝卜，能交上好友。已婚女人梦见切萝卜或吃萝卜，不久会怀孕，能生一个女孩。未婚男子梦见切萝卜或吃萝卜，会娶一个泼妇。未婚女子梦见切萝卜或吃萝卜，会嫁给一位穷丈夫。男性病人梦见切萝卜或吃萝卜，身体会慢慢恢复健康。梦见做萝卜菜，是不祥之兆。男人梦见做萝卜菜，会啼饥号寒。女人梦见做萝卜菜，家人会病倒。梦见出售萝卜，是凶兆，会被解雇。梦见购买萝卜，贵客会登门，为招待客人要破费不少 。\r\n'),
(165, '植物篇', '树苗', '    已婚男子梦见刚发芽的树苗，生活幸福，无忧无虑。小伙子梦见刚发芽的树苗，会娶一位美貌的妻子。少女梦见刚发芽的树苗，会嫁给一位英俊的小伙子。囚犯梦见发芽的树苗，会释放出狱。学生梦见发芽的树苗，考试会成功。商人梦见刚发芽的树苗，是祥瑞，不久的将来生意能获大利。梦见枯萎的树苗，象征着忧愁的失望。梦见给树苗浇水，是好的征兆，所从事的工作能得到好处。梦见砍伐树苗，会受到仇人的骚扰。士兵梦见砍伐树苗，要去打仗，但能死里逃生。梦见嫁接树苗，会长寿，子孙满堂。\r\n'),
(166, '植物篇', '莲花', '    男人梦见莲花，是祥瑞，已婚男子会得财进宝; 未婚男青年能找到一位如花似玉的妻子。工作人员梦见莲花，要谦虚谨慎，才能得到上司的欢喜，会被擢升。女人梦见莲花，是不祥之兆。少女梦见一朵或几朵莲花，会成为放荡的女人，或与体弱多病的男人通奸。已婚女人梦见男人采莲花，会因丈夫身染沉疴，处境愈来愈糟。已婚女人梦见男人采莲花，会背叛丈夫，与陌生人通奸。被女朋友或妻子舍弃的男人梦见在池塘里采莲花，会很快与她恢复关系。\r\n'),
(167, '动物篇', '豹子', '    梦见豹子，会与强人为敌。梦见受到豹子的袭击，会遭到敌人的攻击。梦见有人骑着豹子朝自己走来，会声威大震。 \r\n'),
(168, '动物篇', '鳄鱼', '    梦见鳄鱼，意味着受苦。梦见摆脱了鳄鱼，会避免重大的危险。梦见鳄鱼会受到凶恶敌人的侵犯，或与强人为敌，或与背信弃义、损害过自己的人为敌 。\r\n'),
(169, '动物篇', '鸟', '    梦见鸟是吉兆。梦见抓鸟要发财，交好运的预兆。梦中听见鸟叫，喜事将至。但是梦见打鸟，是遭不幸的先兆。梦见鸟四处飞奔，并要破财。梦见放飞笼中鸟，目前所从事的工作会取得成功，并有所获。梦见用食物诱捕鸟，是受损的兆头。梦见鸟蛋是吉兆。梦见孵鸟蛋，小雏尚未出壳，预示着会打输官司。梦见鸟巢中有破壳的鸟蛋，将要受穷，过艰苦的生活。梦见小鸟打斗，灾难将会降临。但是梦见鸟全都飞跑了，是祥兆。\r\n'),
(170, '动物篇', '绵羊', '    男人梦见绵羊，要发财。女人梦见绵羊，夫妻生活幸福，白头偕老。梦见杂色母绵羊，会广开财路。梦见白母绵羊，是祥瑞，会受到人们的喜爱。梦见母绵羊叫，财产受到威胁。梦见母绵羊群，会成为拥有丰厚资金的企业机构的决策者。梦见绵羊逃跑，财产会被盗，或遭抢劫。梦见剪母绵羊毛，很快会继承遗产。梦见打母绵羊，会导致破财。梦见从母绵羊背上跳过，会干有害的事，遭受损失。梦见母绵羊带着小羊羔，妻子会生男孩。商人梦见母绵羊群，出国做生意，能挣大钱。牧羊人梦见母绵羊群，收入会减少。\r\n'),
(171, '动物篇', '孔雀', '    梦见孔雀卧在地上，是不祥之兆。男子梦见孔雀卧在地上，要被辞退。已婚女人梦见雀卧在地上，以丈夫和孩子的病忧心如焚，坐卧不安。梦见孔雀落在树上，他人严重地威胁着自己的安全。但是，梦见跳舞的孔雀，要交好运。已婚女人梦见孔雀跳舞，不久要怀孕，会生一个体壮的男孩。与同伴分离的人梦见孔雀，很会见到他们。未婚男子梦见孔雀跳舞，会找到女朋友。病人梦见孔雀跳舞，不用吃药，身体也会复原。犯人梦见孔雀跳舞，很快能恢复自由，与家人团聚。企业家或商人梦见孔雀跳舞，能找到新的市场或推销点，获大利。梦见鸣叫的孔雀，生活会不稳定。农民梦见孔雀叫，是祥兆，风调雨顺能获丰收。商人梦见孔雀叫，生意会产生波动，有可能亏损。未婚男子梦见孔雀叫，要与恋人分离。梦见猎孔雀，会身体衰弱。梦见食孔雀肉，有可能患血液病。梦见狗追孔雀，会负债，常受债主的搅扰。梦见孔雀嘴里叼着东西，仇人会相互残杀。梦见孔雀尾巴拖地，会被指控犯罪，要受处罚。\r\n'),
(172, '动物篇', '猫头鹰', '    梦见猫头鹰是不祥之兆，孩子会遗失。未婚男子梦见猫头鹰，会娶一个好斗的妻子。已婚女人梦见猫头鹰，会对丈夫的病忧心忡忡。未婚女子梦见猫头鹰，是不好的兆头，意味着要嫁到低等家族。梦见猫头鹰落在自己的屋顶上叫声不断，会家破人亡。梦见猫头鹰从自己的头顶飞过。不久就要命归西天。梦见走路时碰上猫头鹰，会一事无成。梦见打猫头鹰，是吉兆，工作上一切障碍都能清除。而且目的一定能达到。梦见向仇人赠送猫头鹰肉，仇人会被消灭。梦见猫头鹰的叫声十分刺耳，家人要患重病。囚犯梦见猫头鹰朝自己飞来，会被判为无期徒刑。梦见捕捉猫头鹰，一定能打赢官司。\r\n<br><br>    梦见猫，自己的品德会受到非议，被人们怨恨，财产被偷。梦见打猫或者抓猫，小偷或土匪会破门而入，但是不会受损失。坏人会被抓获。女人梦见猫，是不祥之兆。\r\n'),
(173, '动物篇', '狗熊', '    梦见狗熊，将要与强人为敌。梦见狗熊向自己扑来，仇人会长期与自己为敌。梦见狗熊跑，幸福将至。梦见自己被狗熊咬死，意味着生活不幸，梦见狗熊从山顶沿着崎岖的山路下来，会与别人打官司，整天不得安宁。但是梦见狗熊上山，到山顶就消失了，作梦人的一切痛苦会全部结束。梦见站着的白熊跳舞，作梦人会和自己的上司关系处得很好，或得到晋升、增加薪水。梦见黑熊的尸体在水里漂流，会降暴雨，预示做梦人的邻居和朋友会灾难临头。船夫梦见白熊的尸体在水里漂流，意味着海啸和冰山即将到来。\r\n<br><br>    梦见听到狗吠，会受到敌人的侵略。梦见狗扑咬自己，会与朋友发生意见分歧，受到孤立。梦见朝自己走来，会交上好朋友，在困境中能得到朋友的帮助。跛子梦见狗，预兆朋友软弱无能。梦见狗跟在母犬后行走，朋友心怀不测。梦见母犬和小狗在一起，朋友会带来好处。\r\n'),
(174, '动物篇', '狗熊', '    梦见狗熊，将要与强人为敌。梦见狗熊向自己扑来，仇人会长期与自己为敌。梦见狗熊跑，幸福将至。梦见自己被狗熊咬死，意味着生活不幸，梦见狗熊从山顶沿着崎岖的山路下来，会与别人打官司，整天不得安宁。但是梦见狗熊上山，到山顶就消失了，作梦人的一切痛苦会全部结束。梦见站着的白熊跳舞，作梦人会和自己的上司关系处得很好，或得到晋升、增加薪水。梦见黑熊的尸体在水里漂流，会降暴雨，预示做梦人的邻居和朋友会灾难临头。船夫梦见白熊的尸体在水里漂流，意味着海啸和冰山即将到来。\r\n'),
(175, '动物篇', '蝴蝶', '    梦见蝴蝶在花丛里飞舞，会过上幸福豪华的生活。但是梦见断了翅膀的蝴蝶，会感到失望，生意亏损，身体患病，忍受精神折磨。梦见蝴蝶落在自己的头顶或帽子上，会连升三级，或成为百万富翁。梦见追捕蝴蝶，会与自己相爱的姑娘结为伉俪。但是梦见抓住的蝴蝶又飞跑了，他相爱的姑娘会嫁给别人。\r\n'),
(176, '动物篇', '鹿', '    梦见鹿，是吉兆。会从亲属那里得到遗产。梦见捕获的鹿在跳跃，自己会被释放。梦见有许多只鹿卧在一起，反对他的阴谋会落空。梦见被猎人打死的鹿，会被人骗走钱财。\r\n'),
(177, '动物篇', '奶牛', '    梦见奶牛在牧场闲转或吃草，是安宁和富裕的吉兆。梦见养了很多奶牛或赶奶牛，会发大财。梦见别人赶着许多奶牛，要破财。梦见奶牛追赶自己，会因为女人而名声扫地。女人梦见被牛追赶，会与别人偷情，对丈夫冷淡。梦见挤牛奶，喜事会接踵而来，但是女人梦见挤牛奶，是不祥之兆。梦见膘肥体壮的肥奶牛，生活富裕。梦见瘦骨嶙峋的奶牛，大难将临。梦见白奶牛比黑奶牛吉祥。梦见产奶量高的牛，要走红运，发大财。梦见奶牛在前，牛犊在后，妻子即将临产。梦见奶牛打架，肩上责任重大，工作繁忙，但是能赚大钱。梦见奶牛被牛追赶，意味着对要做的事迟迟下不了决心，但是最后做出的决定是明智的，会有收获。梦见让狗把奶牛赶进了自己的院子，预示在朋友的帮助下能发大财。\r\n'),
(178, '动物篇', '斑马', '    梦见斑马，财源旺盛。女人梦见斑马，会得到娘家送的礼物。梦见骑斑马，要出国旅行。商人梦见骑斑马，生意能发展到国外。梦见被斑马踢了，倒霉的日子要来到。\r\n<br><br>    梦见骑马，不久会名利双收。梦见从骑背上摔下来，是降职名毁的先兆。梦见全身披挂的马，会丰衣足食。梦见骒马和小马驹朝自己走来，能发财。梦见无人骑的马紧随身后，不久会被授予名誉头衔。梦见骑马，倒霉的事要到来。梦见买马，不久会结婚成家。梦见训马，意味着被国家任命担任特殊职务。梦见有很多马，会成为百万富翁。梦见给马喂水，职务低微。梦见马尥蹶子，不幸时朋友会抛弃自己。梦见把马放了，会全部挥霍掉祖上留下的产业。梦见打马，或者马死了，很快要被解雇。女人梦见骑马，会因参与反叛国家的活动，被驱逐出境。小伙子梦见和恋人骑马，不久要结成伉俪。久病痊愈的病人梦见骑马，很快身体会强壮。囚犯梦见骑马，会越狱逃跑，重操旧业。梦见为杂技团驯马，会扬名四海。梦见有人赠马给自己，会在军事部门担任高级职务。\r\n'),
(179, '动物篇', '海鱼', '    梦见海龟，夫妻生活会和谐、幸福。已婚女人梦海龟，丈夫会更加宠爱自己。未婚男子梦见海龟，不久要成亲。未婚女子梦见海龟，会和意中人结为伉俪。梦见捕捉海龟，灾难会临头，梦见喝海龟汤，是不祥之兆，健康会每况愈下。\r\n<br><br>    梦见鲨鱼，要发财。商人梦见鲨鱼，漂洋过海出国做生意，能赚大钱。船员梦见(船夫)鲨鱼，预兆所从事的工作收入丰厚。梦见鲨鱼扑向别人是不祥之兆，灾难会临头。梦见成群的鲨鱼，意味着要调动工作，财源会旺盛。梦见死了的鲨鱼，由于自己的错误，经济会遭受损失。\r\n<br><br>    梦见活鱼，要去海上旅行。梦见死鱼，要忍饥挨饿。梦见买鱼，会继承亲属的地产。梦见有人给自己送鱼，会被邀参加婚礼。女人梦见鱼在水中游，行动会受到丈夫的限制。梦见鱼忍受缺水的痛苦，会被降职。男人梦见捕鱼，大难临头。女人梦见捕鱼，将依靠富有的丈夫，生活愉快。病人梦见捕鱼，会卧床不起。梦见有人在湖里捕鱼，会参与推翻国家领导人的活动。\r\n<br><br>    梦见鳄鱼，意味着受苦。梦见摆脱了鳄鱼，会避免重大的危险。梦见鳄鱼会受到凶恶敌人的侵犯，或与强人为敌，或与背信弃义、损害过自己的人为敌 。\r\n'),
(180, '动物篇', '天鹅', '    梦见天鹅，预示会见到失散的朋友 。\r\n'),
(181, '动物篇', '蟒蛇', '    梦见蟒蛇，会受到鳄鱼或其它爬行动物的伤害，梦见与蟒蛇发生对峙，最后躲开了，预示能从敌人的魔爪中逃跑出来。女人梦见蟒蛇，一生光明磊落，白壁无瑕。\r\n<br><br>    梦见蛇，是凶兆。女人梦见蛇，自己和孩子都会病倒。梦见一对蛇，很快会分家。商人梦见一对蛇，能发大财。梦见蛇咬你自己，要交好运，生活会丰裕。但是梦见蛇咬自己妻子，是不祥之兆，会遇到忧愁不幸。梦见敌人被蛇咬伤，敌人会互相残杀，最后两败俱伤。梦见打死蛇，能征服敌人。梦见蛇钻进洞里，家里会被偷窃或被劫。梦见蛇捕捉老鼠或青蛙，会有不幸的消息。梦见蛇与猫争斗，所有的灾难都会过去 。\r\n'),
(182, '动物篇', '兔子', '    梦见兔子，能找到熟人。梦见兔子被捕获，是吉兆。梦见自己落荒而走，会交好运。梦见有人和兔子一块来到自己身边，要小心上当受骗。梦见在猎犬的协助下，追赶兔子，能从骗子的魔掌中逃跑出来。梦见向兔子开枪，会失去一切经济来源。女人梦见在马路上抓到一只兔子，并把兔子抱在怀里，会成为丈夫家的摇钱树。\r\n'),
(183, '动物篇', '豺狼', '    梦见豺狼，会遇到倒霉的日子。梦见豹在墓地或火葬场游逛，家人要去世。梦见豺狼追赶朋友，朋友会是个懦夫，靠不住。梦见豺狼，会重病缠身。梦见豺狼一步一步地向自己逼进，要花很多钱为亲人治病。已婚女子梦见豺狼闯进了自己的家。会生一个阴阳孩子或身体衰弱的后代。姑娘梦见豺狼朝自己走来，会嫁给一个弱不经风的男人。\r\n');
INSERT INTO `gooraye_dream` (`id`, `category`, `title`, `content`) VALUES
(184, '动物篇', '鲨鱼', '    梦见鲨鱼，要发财。商人梦见鲨鱼，漂洋过海出国做生意，能赚大钱。船员梦见(船夫)鲨鱼，预兆所从事的工作收入丰厚。梦见鲨鱼扑向别人是不祥之兆，灾难会临头。梦见成群的鲨鱼，意味着要调动工作，财源会旺盛。梦见死了的鲨鱼，由于自己的错误，经济会遭受损失。\r\n'),
(185, '动物篇', '蜘蛛', '    男人梦见蜘蛛，意味着自己的财产已受到坏人的监视，所以要时刻小心提防。女人梦见蜘蛛，会患子宫病。梦见蜘蛛织网，只有艰苦奋斗，才能取得成果。已婚女人梦见蜘蛛织网，生意会十分兴旺，能遍布世界各地，由于商业网点过多，对如何经营好会感到忧愁。病人梦见蜘蛛网，会闯过危险期，最后身体会好转。梦见死蜘蛛，一切忧愁都会过去。梦见蜘蛛捉苍蝇，不久的将来会在可怕的事故中丧生。梦见打死了在身上爬的蜘蛛，身体会强壮。梦见踩死蜘蛛，是不祥之兆，灾难会降临在全家人的头上。梦见蜘蛛从屋顶或高处掉到自己的身上，要遭厄运。\r\n'),
(186, '动物篇', '麻雀', '    男人梦见麻雀，会忧愁不安。女人梦见麻雀，孩子要生病。梦见有很多只麻雀，预示大吉大利，事业能取得成功。梦见抓麻雀，不久会受到敌人的攻击。梦见麻雀吃虫子，财产会有危险，或者全部失去自己的财产。梦见捕鸟者捕捉麻雀，不久会有不幸的消息。梦见打死麻雀，生意或工作会彻底失败。\r\n'),
(187, '动物篇', '蜗牛', '    已婚男人梦见蜗牛，健康会每况愈下。已婚女人梦见蜗牛，丈夫收入会增加。少女梦见蜗牛，会嫁给有钱的男人，生活幸福。青年男子梦见蜗牛，会得到一大笔嫁妆。病人梦见蜗牛，会长期卧床不起。工作人员梦见蜗牛，会提职增薪。梦见打死蜗牛，能降服敌人。\r\n'),
(188, '动物篇', '猴子', '    梦见猴子是凶兆。梦见猴子蹲着，要生病。梦见猴子走动或跳跃，是不祥之兆。孕妇梦见猴子，会生一个丑陋的男孩。少女梦见猴子，要嫁给一个易怒嘴碎的男人。梦见向猴子开枪，或打死了猴子，预示能降服敌人。梦见猴子张牙舞爪要朝自己扑来，会家破人亡。梦见猴子，自己会受骗，梦见猴子发怒，将会与邻居为敌，并且名声受损。梦见猴子兴高采烈，中断的友谊会再次恢复。梦见猴子吃东西，会面临贫困。梦见熟睡的猴子，将要去外国旅行。\r\n'),
(189, '动物篇', '青蛙', '    男人梦见青蛙，要生病。女人梦见青蛙，开销巨增。商人梦见青蛙，生意要亏损。梦见有很多只青蛙，生活简朴清苦。病人梦见有许多只青蛙，身体很快会复原。商人梦见有许多只青蛙，身体能发大财。梦见用石头砸青蛙，很快要调动工作。梦见被青蛙咬伤 一切困难都会过去。\r\n'),
(190, '动物篇', '老虎', '    男人梦见老虎，成功的道路上会遇到困难。女人梦见老虎，自己和孩子都会生病。梦见老虎朝自己扑来，会困难重重。梦见开枪打老虎，事业会成功。梦见捕捉老虎，是不祥之兆，朋友会以自己为敌。梦见老虎扑向别的动物，会为朋友的处境担忧。梦见老虎扑向别人，会发生重大车祸，但是能死里逃生。\r\n'),
(191, '动物篇', '海鱼', '    梦见海龟，夫妻生活会和谐、幸福。已婚女人梦海龟，丈夫会更加宠爱自己。未婚男子梦见海龟，不久要成亲。未婚女子梦见海龟，会和意中人结为伉俪。梦见捕捉海龟，灾难会临头，梦见喝海龟汤，是不祥之兆，健康会每况愈下。\r\n'),
(192, '动物篇', '松鼠', '    梦见松鼠，艰苦奋斗会有所获。女人梦见松鼠，会与丈夫分离。被驱逐的人梦见松鼠，自己的目标一定能达到，最后能返回自己的祖国。旅游者梦见松鼠，旅行会舒适，事业会成功。梦见打死松鼠，是不祥之兆，灾难会临头。梦见捕捉松鼠，或者把松鼠拿在手里，是吉兆，会找到藏匿的财宝。梦见松鼠咬了自己，在主要问题上会与朋友产生分歧。农民梦见松鼠，会丰收在望。\r\n'),
(193, '动物篇', '蚂蚁', '    梦见蚂蚁在游行，作梦人将要去国外旅行，并居在异国他乡。他的旅行不仅顺利，而且还会平安舒适。商人梦见蚂蚁游行，生意将会兴隆。梦见蚂蚁急燥不安，四处奔跑，会祸从天降。梦见蚂蚁嘴里叼着白色的东西，或叼着吃的东西，则是祥瑞。作梦人将会发财、幸福。梦见鸟追打蚂蚁，将有祸事。久卧床的病人梦见蚂蚁，病情短期内不会好转。梦见到处都是蚂蚁或蚂蚁打架，受攻击的一方占了上风，攻击的一方击败，这是吉兆，作梦的人将会还清欠款，或身体很快痊愈。未婚者会很快成亲，高兴的事会接连不断。梦见受攻击的一方被打死或成了俘虏，做梦人会遭厄运，或患不治之症，或瞬间破产。梦见自己被蚂蚁团团包围，死期即将临头。梦见蚂蚁在自己的头顶或家里乱跑，作梦者是农民，则是好兆头，意味着风调雨顺，久旱的庄稼得救。梦见自己喝的水，牛奶或其它饮料中有蚂蚁，作梦人会受到内脏疾病的折磨。梦见餐桌上有蚂蚁，居住在异国的亲人或亲戚即将登门。梦见自己的床铺上有蚂蚁会患重病。\r\n'),
(194, '动物篇', '狮子', '    梦见狮子，要来钱。梦见与狮子相遇，要生病，或与强人为敌。梦见猎狮子，会降服敌人。梦见为马戏团驯狮子，仇人会同自己讲和。梦见自己被狮子咬伤，困难会被克服。梦见狮子扑向自己的同伴或朋友，倒霉的日子要来临。少女梦见狮子，会嫁给一位权大力大，身体健康的男子。已婚女子梦见狮子，会生一个健康的男孩。梦见狮子袭击野象，仇人会狗咬狗，最后两败俱伤。\r\n'),
(195, '动物篇', '驴', '    梦见驴，将会逐渐摆脱困境。梦见自己骑在驴身上，不久会离开人世。梦见驴挨打，不久的将来自己的社会地位会受到影响。做梦人会被迫调离工作。梦见有人一丝不挂的骑在驴上，而且骑驴的人的手和头被砍掉，骑驴人会命归天。梦见负重的驴，会名声大噪，发大财。梦见驴尥蹶子，作梦人的亲友会企图损害他的名声。梦见驴群从城门口跑出，该城的居民会免受疾病危害。但是梦见驴朝城门口冲来，该城的居民会遭到灾祸。梦见驴的尸体，是吉兆，梦见河里或湖里漂着驴的尸体，做梦人将去海上旅行。梦中听到驴叫，作梦者要谨言慎行。梦见驴穿着衣服和鞋子，会受到朋友的捉弄，陷入困境。梦见驴在房顶平台上，做梦人会家破人亡。\r\n'),
(196, '动物篇', '乌龟', '    男人梦见乌龟，能交好运。女人梦见乌龟，要提防小偷和强盗。商人梦见乌龟，出国做生意，能发大财。旅游者梦见乌龟，会在离家远的城市居留一段时间。梦见用石头打乌龟，危险会来自仇人。梦见手里拿着乌龟，会与傻瓜交朋友。梦见乌龟游泳，一切灾都会过去。\r\n'),
(197, '动物篇', '蚊子', '    梦见蚊子，敌人会日益强大，或者自己怕灾难接连不断。久卧病榻的人梦见成群的蚊子，病情短期内不会好转。梦见消灭蚊子，会身体强壮。梦见睡觉时挂蚊帐，不久要建新房。梦见被蚊子咬，要提防诽谤自己的小人，因为他们会给自己造成难以弥补的损失。\r\n'),
(198, '动物篇', '猫头鹰', '    梦见猫头鹰是不祥之兆，孩子会遗失。未婚男子梦见猫头鹰，会娶一个好斗的妻子。已婚女人梦见猫头鹰，会对丈夫的病忧心忡忡。未婚女子梦见猫头鹰，是不好的兆头，意味着要嫁到低等家族。梦见猫头鹰落在自己的屋顶上叫声不断，会家破人亡。梦见猫头鹰从自己的头顶飞过。不久就要命归西天。梦见走路时碰上猫头鹰，会一事无成。梦见打猫头鹰，是吉兆，工作上一切障碍都能清除。而且目的一定能达到。梦见向仇人赠送猫头鹰肉，仇人会被消灭。梦见猫头鹰的叫声十分刺耳，家人要患重病。囚犯梦见猫头鹰朝自己飞来，会被判为无期徒刑。梦见捕捉猫头鹰，一定能打赢官司。\r\n'),
(199, '动物篇', '爱兽、爱禽', '    梦见和自己养的动物或鸟一块儿玩，妻子会因健康不佳或不能生育，而黯然销魂。未婚青年男女梦见家养的动物或鸟，会对自己的婚姻忧虑重重。梦见自己养狗，灾难时能证明家人是自己最好的帮手。梦见养鹦鹉，事实证明朋友靠招遥撞骗为生。梦见养画眉，家里会发生矛盾，互不而立。梦见养猫，会摆脱病魔。梦见养兔，因谨言慎行，会避免仇人设置的圈套。梦见养猴，会和骗子交朋友，损失惨重。梦见打死了家兽，会欺骗朋友。梦见自己养的动物丢了，朋友会断绝与自己的来往。\r\n'),
(200, '动物篇', '蟒蛇', '    梦见蟒蛇，会受到鳄鱼或其它爬行动物的伤害，梦见与蟒蛇发生对峙，最后躲开了，预示能从敌人的魔爪中逃跑出来。女人梦见蟒蛇，一生光明磊落，白壁无瑕。\r\n'),
(201, '动物篇', '老鼠', '    梦见老鼠，会树敌过多。已婚女人梦见手里托着家养的老鼠，要生孩子。梦见抓老鼠，会交上不诚实的朋友。梦见捕老鼠，会遭到敌人的阴谋暗算。梦见猫捉老鼠，是祥兆，敌人会互相残杀，两者俱亡。梦见死老鼠，要交好运。梦见有很多老鼠，失败将不断发生。梦见老鼠在自己的住室里打洞，家里会遭偷窃。男人梦见老鼠咬自己，灾祸会避免。医生梦见老鼠，住地会出现传染病。\r\n'),
(202, '动物篇', '乌鸦', '    已婚男子梦见乌鸦，灾祸会临头。已婚女人梦见乌鸦，孩子会患病。未婚男子梦见乌鸦，对未婚妻的不幸去世，缠绵悱恻，黯然销魂。未婚女子梦见乌鸦，意味着要嫁给身体有病的人。商人梦见乌鸦，因连续亏损，最后会导致生意全部破产。梦见乌鸦在飞，会面临各方面的对手。梦见乌鸦从自己的头顶飞过，或者落在肩上或头上，是不祥之兆，要患重病，或命归西天。梦见捕捉乌鸦，意味着能战胜仇敌。梦见打死乌鸦，会捷报频传。但是梦见乌鸦落在树上，会挨饥受饿。旅游者梦见乌鸦截断路，途中会发生车祸。梦见死乌鸦，倒霉的日子会过去，好日子即将到来。梦见乌鸦落在谁的头顶，谁会卧床不起。梦见乌鸦啄吃粪便，会吸取贫穷的教训，摒弃恶习。\r\n'),
(203, '动物篇', '鸽子', '    梦见鸽子一般是祥瑞。男人梦见卧着的鸽子，生活富裕，安逸舒适。已婚女子梦见鸽子，不久会怀孕，能生一个漂亮的男孩。梦见野鸽子，能发财。梦见养鸽子，收入丰厚，家里的人口也会增加。梦见飞翔的鸽子，会陷入困境。梦见笼子里的鸽子，能得到藏匿的财宝。梦见用枪打鸽子，忧愁会逝去。梦见猫咬鸽子，灾难会临头。梦见死鸽子，要破财。梦见有很多鸽子，会有生死朋友。梦见送鸽子给别人，会名扬天下。梦见鸽子，婚姻美满，会得到无数钱财。赌徒梦见鸽子，能赢很多钱。梦见鸽子被打死，是凶兆，妻子(或丈夫)要离开人世。梦见鸽子从自己手里飞走了，妻子会离他而去。\r\n'),
(204, '动物篇', '鹦鹉', '    梦见鹦鹉站在地上，会交上无用的伙伴。已婚的女人梦见鹦鹉站在地上，丈夫原是一个无能之辈。孕妇梦见鹦鹉，会生女孩。梦见鹦鹉在飞，是祥兆，所有的忧愁都会过去。梦见鹦鹉落在树上，要生病。梦见关在笼子里的鹦鹉，会困难重重。梦见死鹦鹉，要提防不诚实的朋友，以免上当受骗。梦见用枪打鹦鹉，能降顺对手。梦见买鹦鹉，是不好的兆头，要偿还祖辈借的债。梦见出卖鹦鹉，所存的障碍都能排除。梦见成群的鹦鹉，财产会遇到严重的危险。梦见赠送鹦鹉，会被人讨厌。梦见把鹦鹉关进了笼子，仇人会发生内讧，自己却能从中获得好处。梦见猫逮鹦鹉，会击败竞争的对手。\r\n'),
(205, '动物篇', '狼', '    梦见狼，是凶兆，不论干什么都不会成功。女人梦见狼，意味着会生病。梦见狼群，会受到敌人的折磨。梦见被狼群团团围住，一切忧愁都会过去。梦见开枪打狼，会是一个胆小的人。梦见狼叼走了小孩或羊，要当心小偷和强盗。梦见狼扑向自己，妻子会怀孕。\r\n<br><br>    梦见豺狼，会遇到倒霉的日子。梦见豹在墓地或火葬场游逛，家人要去世。梦见豺狼追赶朋友，朋友会是个懦夫，靠不住。梦见豺狼，会重病缠身。梦见豺狼一步一步地向自己逼进，要花很多钱为亲人治病。已婚女子梦见豺狼闯进了自己的家。会生一个阴阳孩子或身体衰弱的后代。姑娘梦见豺狼朝自己走来，会嫁给一个弱不经风的男人。\r\n'),
(206, '动物篇', '斑马', '    梦见斑马，财源旺盛。女人梦见斑马，会得到娘家送的礼物。梦见骑斑马，要出国旅行。商人梦见骑斑马，生意能发展到国外。梦见被斑马踢了，倒霉的日子要来到。\r\n'),
(207, '神鬼篇', '供品', '    梦见供品，会有不愉快的事。梦见向神供献祭品，高兴的事接连不断。梦见和妻子一块向神献供品，生活幸福，一切如意。处于生育年龄的女人梦见向神献供品，会生一个漂亮的儿子。有孩子的女人梦见向神献供品，孩子身体健康，生活幸福。未婚男女梦见向神献供品，预示要拜堂成亲。这对于男女恋人来说是最吉利的梦。囚犯梦见向神供献祭品，会长期身陷囹圄。病人作了这样的梦，是好兆头，不久会恢复健康。商人和商店老板梦见向神献供品，要发大财。\r\n'),
(208, '神鬼篇', '死人', '    梦见与死人交谈，会扬名四海。梦见与已经死了的人进餐，会长寿。梦见把死人抱在怀里，或呼喊死人的名字，不久要离开人世。鳏夫梦见已故的妻子，会与一位受过教养的女人结婚，她会成为自己事业的助手。寡妇梦见已故的丈夫，会恪守贞节，史册留名。\r\n'),
(209, '神鬼篇', '献身', '    梦见自己成了敬神的牺牲品，会声威大震。女人梦见把自己当成牺牲品献给神，能全权处理家里的一切事。梦见别人扛着动物去向神献牺牲，是不祥之兆，要遭厄运。梦见把动物从主持献牺牲的人里救出来，意味着身强力壮，生活富裕。梦见自己扛着动物去供献祭品，会家破人亡。已婚女人梦见拿着动物向神供献祭品，家里会生活拮据。病人梦见自己被当作献神的祭品，不久会康复。犯人梦见自己被作为牺牲供献给神灵，会免于死刑。\r\n'),
(210, '神鬼篇', '忏悔', '    梦见为了赎罪苦行，因差别有异，会有不同的后果。不同阶层人的忏悔，也会有不同的结果。未婚男子梦见自己苦行，会娶一位俊俏贤慧的女子为妻，温情脉脉的妻子会在困难时期安慰自己，从不让自己着急。资本家或有钱人梦见自己苦行，收入会突然锐减，有可能背井离乡。但是穷人梦见作忏悔，生活会富裕。禁欲的人梦见在苦行，会成为民族的领袖，能靠自己的聪明才智为国家或民族谋利益。企业家梦见作忏悔，会被迫降价出售货物，获利甚微。但是已婚女人梦见在赎罪，因丈夫和孩子的身体健康无疾，所以心情会十分高兴、愉快。病人梦见作忏悔，病情会恶化。工作人员梦见自己在赎罪，会受到上司的夸奖，能官运亨通。学生梦见作忏悔，考试会取得优异的成绩，因具有非凡的才智，能获得奖学金。梦见别人在忏悔，是不祥之兆，会心情烦闷，愁眉不展。梦见有人在苦行时丧生，是祥兆，人生会发生好的转折，有可能得到藏匿的财宝。梦见敌人作忏悔，会永远以自己为敌。但是梦见朋友在苦行，危急时刻会得到陌生人的帮助。梦见妻子在苦行，灾祸会降临。梦见与苦行的人发生争吵，将与强人为敌。\r\n'),
(211, '神鬼篇', '朝圣', '    已婚男人梦见离家去朝圣，会遇到各方面的忧虑和困难。未婚男女梦见去巡礼，会把父母的劝告置于脑后。病人梦见去朝圣，现有的护士医疗会被取消。宗教导师或传教人梦见去巡礼，无神论者会严重威胁自己。商人梦见去朝圣，海上交易会增加。老年人梦见朝圣，不久要升天。工作人员梦见去朝圣，意味着退休，或被解雇。梦见带着妻子、孩子去朝圣，预示要搬家，或调离工作。梦见朝圣归来，会迎着困难前进。记者梦见去巡礼，因违反了国家的新闻法，受到指控，会被判为长期监禁。寡妇梦见去朝圣，会献身于宗教事业 。\r\n'),
(212, '神鬼篇', '祈祷', '    男人梦见独自向神祈祷，会失去人们的帮助。女人梦见向神祈祷，丈夫和孩子的身体都会健康。男人梦见和许多人一起向神祈祷，会得到社会的尊重。男人梦见参加男女宗教大会，或祈祷大会，不久会被病魔缠身。男人梦见与妇女一起向神祈祷，会威信扫地。女人梦见和男人一块祈祷，灾祸和不幸会降临。梦见不向神祈祷，家人会去世。梦见别人在作祈祷，是祥瑞。梦见调逗作祈祷的人，会受到仇敌的骚扰。\r\n'),
(213, '神鬼篇', '天使', '    梦见与天使交谈，是不祥之兆。梦见沉默不语的天使，会交好运。梦见与天使交谈，意味着死亡、生重病或陷入困境。少女梦中看到了天使，将要与一位理想的富有男子结为伉俪。梦中老远看见了天使，做梦人要立即摒弃自己的一切劣行，否则大难会临头。孕妇梦见天使，会生一个超群的儿子，这个孩子以后会成为圣人或宗教的导师，或百万富翁。\r\n'),
(214, '神鬼篇', '女神', '    梦见女神，预示事业会成功。女人梦见与女神交谈，会心情愉快，生活幸福。梦见女神怒不可遏地责骂自己，是凶兆，预示自己或孩子的身体会受外伤。梦见被女神搂在怀里，或女神给自己头上戴王冠，会声誉鹊起，扬名四海，官运亨通。身染沉疴的病人梦见向寺庙的女神烧香叩头，是祥兆，身体会复原。梦见女神掉了武器，意味着与敌人发生激战。\r\n'),
(215, '神鬼篇', '神', '    梦见神，是成功和获利的祥兆。梦见神的手里握着一把剑，敌人会被消灭。梦见神的手里握着三股叉，怒不可遏，居住区要大祸降临。已婚妇女梦见神笑容满面，会生一个在青年时代就扬名天下的儿子。梦见神把自己抱在怀里，会生活幸福，寿比南山。\r\n<br><br>    梦见女神，预示事业会成功。女人梦见与女神交谈，会心情愉快，生活幸福。梦见女神怒不可遏地责骂自己，是凶兆，预示自己或孩子的身体会受外伤。梦见被女神搂在怀里，或女神给自己头上戴王冠，会声誉鹊起，扬名四海，官运亨通。身染沉疴的病人梦见向寺庙的女神烧香叩头，是祥兆，身体会复原。梦见女神掉了武器，意味着与敌人发生激战。\r\n'),
(216, '神鬼篇', '仙女', '     男人梦见仙女，会走红运。少女梦见仙女，即将出嫁。失业者梦见仙女，会找到工作。病人梦见仙女，身体会康复。\r\n'),
(217, '人身篇', '眼泪', '    男人梦见自己流泪，意味着远离自己的妻子和亲戚正在思念着自己。离开丈夫的女人梦见流泪，丈夫很快想念自己。梦见别人流眼泪，很快要分家。女人梦见别人流泪，要与丈夫分离。梦见朋友淌眼泪，支持者会遗忘自己。梦见敌人流泪，要上当受损。病人梦见流泪，会长期卧床不起。被判了刑的犯人梦见流泪，不久要上断头台。\r\n'),
(218, '人身篇', '疼痛', '    梦见疼痛，一般是好的兆头。梦见肚子疼，灾祸要临头。梦见眼睛疼。会成为办公室或工厂的负责人。梦见膝盖或腿疼，或者肾脏疼痛，不久的将来要出国访问，能发大财。梦见后背疼，会身居要职。梦见全身疼痛，家人之间会产生隔阂。已婚女人梦见肚子疼，会怀孕。孕妇梦见肚子疼，分娩时要出问题。囚犯梦见胸口疼，会被加刑。病人梦见全身疼痛，所亨受医护治疗，不久会中止。旅行者梦见头疼，会迷路，很难到达目的地。\r\n'),
(219, '人身篇', '苍白', '    梦见自己的脸不好看，会忧愁悲伤。梦见陌生人的脸色苍白，收入会减少。梦见仇人面色腊黄，会被仇人击败。梦见妻子脸色不好看，会与道德败坏、流浪街头的人打得火热。小伙子梦见自己的情侣脸色苍白，婚事会遭到女方父母的强烈反对。梦见自己的孩子脸色腊黄，收入会锐减。囚犯梦见自己脸色苍白，在亲人的帮助下，能获得自由。病人梦见自己的脸色苍白，会很快恢复健康。未婚女子梦见自己的脸色苍白，会嫁给一位体弱的男子。商人梦见自己的脸色苍白，收入会减少。已婚女人梦见自己的脸色苍白，会怀孕。小偷梦见自己的脸色苍白无血，靠行窃能发财。失业者梦见脸色不好看，能找到一个收入丰厚的工作，生活会富裕。部队军官在战争期间梦见自己的脸色苍白，会把敌人打得丢盔弃甲，一败涂地。老年人梦见自己的脸色腊黄，不久要升天。\r\n'),
(220, '人身篇', '瘫痪', '    梦见自己中风瘫痪，家务事会缠身。梦见朋友得了半身不遂，意味着朋友需要自己的帮助。梦见妻子瘫痪，孩子会生病。梦见仇人患半身不遂十分痛苦，预示自己会胜利。梦见治疗瘫痪，生意或财产方面的管理是成功的。工作人员梦见得了半身不遂，上司会不满意自己，长期不给自己提薪，或者被解雇。病人梦见瘫痪在床，病情会好转，梦见很多瘫痪病人，会遇到各种困难。梦见护理瘫痪病人，卖药能发大财。\r\n'),
(221, '人身篇', '裸体', '    梦见女人（除了自己的妻子）赤身裸体，是富有丰福的征兆。梦见赤裸的男人，会感到忧愁和悲伤。梦见妻子或女朋友全身一丝不挂，夫妻（或情侣）感情冷淡。梦见自己赤条条的，是不祥之兆，会有贫穷和羞辱。病人梦见自己赤露全身，病情会恶化。梦见赤身裸体地上街，要遭受重大损失。梦见与一丝不挂的人交谈，健康每况愈下。\r\n'),
(222, '人身篇', '脉博', '    梦见脉搏跳得很快，要交好运。梦见脉搏跳得很慢，要遭厄运。医生梦见给自己号脉，收入会减少。梦见给妻子号脉，夫妻要吵架。梦见给仇人号脉，危难之际会得到朋友的帮助。梦见自己当了大夫，给别人号脉，预示要放弃目前所从事的工作。梦见正在给妻子号脉，会得到妻子无限的爱。女人梦见别人给自己号脉，由于遭驱赶，身陷困境，寸步难行。梦见仇人给自己号脉，会被仇人击败。梦见医生给自己号脉，要生病。病人梦见医生给自己号脉不久能恢复健康。病人梦见自己给自己号脉，会困难重重。\r\n'),
(223, '人身篇', '肚子', '    梦见肚子发胀，是发财的吉兆。已婚妇女梦见肚子发胀，不久要生孩子。未婚女子梦见肚子发胀，意味着要嫁到豪门富家。寡妇梦见肚子发胀，大难将会临头。\r\n'),
(224, '人身篇', '头发', '    梦见自己的头发长了，意味着得病受穷。梦见别人的头发长了，会厌烦世俗生活，离家苦修。梦见长了白头发，会忧伤悲哀。梦见用梳子梳头，生活会幸福舒适。梦见短头发，厄运是短期的。女人梦见自己的头发长了，夫妇恩爱，幸福长久。女人梦见掉头发、剪头发，是守寡的兆头。女人梦见自己被人抓头发拖去，意味着死亡或由于不幸而离开自己的丈夫。\r\n'),
(225, '人身篇', '指甲', '    梦见剪指甲，努力拼搏能赚钱。梦见留长指甲，会忍受饥饿。梦见黑指甲，会受损失。男人梦见留短指甲，生意能获利。已婚女人梦见留长指甲，要丧偶守寡。男人梦见指甲变红，是身强力壮的征兆。病人梦见指甲发红，病体很快会痊愈，梦见黄指甲和白指甲，会卧床不起。梦见指甲内全是泥垢，贪污公款，损失惨重。\r\n'),
(226, '人身篇', '脚', '    梦见自己的脚被砍，能当官。商人梦见自己长了许多只脚，会捞钱，梦见洗脚，预示着贪婪。梦见踢别人的脚，会受他人辱。梦见脚烫伤，会因一时糊涂，遭受重大损失。梦见脚肿大，会左支右绌，负债累累。\r\n'),
(227, '人身篇', '咽喉', '    梦见自己的咽喉，是凶兆，亲戚或朋友要离开人世。已婚女人梦见自己的喉咙，娘家会有不幸的消息。梦见自己的咽喉痛，或咽喉长疮肿，会有所获。病人梦见喉咙肿疼，会长期卧床不起。被判死刑的囚犯梦见咽喉肿疼，即将上断头台。旅游者梦见嗓子肿疼，途中会遭抢劫，全部财钱都会被抢走。\r\n'),
(228, '人身篇', '手指', '    梦见砍自己的手指，会成为情场上的胜者。梦见手指被蒸气烫伤，会嫉妒别人。梦见多指的手，有贵客登门。梦见自己的手指变长了，生意兴旺。梦见短手指，生活拮据。梦见歪曲的手指，会利用贪污公款的手段来搂钱。梦见手指流血，钱会被骗走。\r\n'),
(229, '人身篇', '眼睛', '    梦见眼睛发红，预示身体有病。梦见女人的眼睛闪闪发光，一切会付之东流。梦见自己的眼睛肿而不疼，生活会幸福，没有痛苦。梦见涂着黑眼影或眼油烟的女人，经济要受损失。梦见别人朝自己使眼色，意味着要得重病，甚至是不治之症。\r\n'),
(230, '人身篇', '脸', '    梦见漂亮的脸，会幸福快乐。梦见丑陋的脸，不幸要临头。梦见自己的脸肿了，或者比原来红了，要成为富贵之人。梦见歪曲的脸，大难降临。梦见自己的脸变得苍白或腊黄，是破财的先兆 。\r\n'),
(231, '人身篇', '胳膊', '    梦见自己的胳膊肌肉发达、健壮，这就意味着由于自己的努力会被拔攉。梦见胳膊患病或不中用，会被降职、陷入困境，同时经济受损失。妇女梦见自己的胳膊患病或不中用，丈夫或儿子要离开人世。梦见自己的一只手断了，是痛苦和受损的兆头。梦见手肿了，亲友会从陌生人那里得到好处。梦见胳膊流血，会贫困潦倒。梦见胳膊上的汗毛长得很长，会发财，处境会很快得到改善。\r\n'),
(232, '文化篇', '惩罚', '    已婚男子受到了惩罚，会名利双收。女人梦见受到处罚，要与丈夫吵架。梦见自己的敌人受到了严惩，能降服敌人。受指控的人梦见自己被惩办，法院会撤销对他的指控。梦见自己的案情严重，却没有受到重办，预兆会受到人们的喜爱。梦见自己的案情较轻，却受到了严判，会官运亨通。梦见自己被判为绞刑，所有的困难都会过去。男子梦见妻子被处罚，会继承岳父母的地下宝藏。女人梦见丈夫受到法办，要生女孩。梦见朋友被判刑，会遇到很大的危险。梦见敌人被惩办，会战胜敌人。梦见惩罚妻子，夫妻生活幸福，相敬如宾。梦见惩治亲友，家里要吵架。梦见法官宣判罪犯，会提职增薪。梦见处治敌人，会被提拔。梦见惩处下级官员，因阴谋犯罪，会受损失。梦见免于处罚，灾难会临头。梦见接受处分，会失去朋友和支持者。俘虏梦见未受到惩处，关押的期限会延长。\r\n<br><br>    男子梦见释放出狱，不久会困难重重。犯人梦见释放出狱，服刑期会延长。女人梦见自己被从监狱里放出，即将会怀孕。男子梦见妻子释放出狱，会永远与她分居。女人梦见丈夫出狱，会为家务事操心受累。梦见亲戚或朋友从监狱里放出来，是祥瑞，做梦人会升官。但是梦见仇人出狱，是凶兆，会遇到很多麻烦。梦见别人从监狱里放出，是祥兆，会名扬天下。\r\n<br><br>    梦见自己的头大了，是提升的先兆。梦见有人挥动着剑企图砍自己的头，是提醒自己和家人要谨言慎行，小心翼翼。梦见吃被砍掉头的动物肉，要发财。梦见洗头，忧愁会过去。梦见用镜子照自己的头，是祥瑞，要被擢升。梦见双手抱头，捷报频传。\r\n<br><br>    梦见自己的头发长了，意味着得病受穷。梦见别人的头发长了，会厌烦世俗生活，离家苦修。梦见长了白头发，会忧伤悲哀。梦见用梳子梳头，生活会幸福舒适。梦见短头发，厄运是短期的。女人梦见自己的头发长了，夫妇恩爱，幸福长久。女人梦见掉头发、剪头发，是守寡的兆头。女人梦见自己被人抓头发拖去，意味着死亡或由于不幸而离开自己的丈夫。\r\n<br><br>    梦见猫头鹰是不祥之兆，孩子会遗失。未婚男子梦见猫头鹰，会娶一个好斗的妻子。已婚女人梦见猫头鹰，会对丈夫的病忧心忡忡。未婚女子梦见猫头鹰，是不好的兆头，意味着要嫁到低等家族。梦见猫头鹰落在自己的屋顶上叫声不断，会家破人亡。梦见猫头鹰从自己的头顶飞过。不久就要命归西天。梦见走路时碰上猫头鹰，会一事无成。梦见打猫头鹰，是吉兆，工作上一切障碍都能清除。而且目的一定能达到。梦见向仇人赠送猫头鹰肉，仇人会被消灭。梦见猫头鹰的叫声十分刺耳，家人要患重病。囚犯梦见猫头鹰朝自己飞来，会被判为无期徒刑。梦见捕捉猫头鹰，一定能打赢官司。\r\n<br><br>    男人梦见上断头台，会声誉鹊起。已婚女人梦见绞架，夫妻恩爱白头偕老。但是已婚男子梦见妻子上断头台，是不祥之兆，发愁和灾难会降临。梦见朋友上绞架，灾祸会来自敌人。但是梦见敌人上断头台，危难时刻会有很多朋友。梦见把妻子或朋友从绞架上解救下来，不幸的日子能得到神的帮助。囚犯梦见上断头台，很快会出狱。但是病人梦见上绞架，会长期卧床不起，人命危浅。\r\n<br><br>    梦见石头生活艰苦。女人梦见石头，会得胃病。梦见黑石头，敌人会阴谋反对自己。梦见白石头，很难处理好家产的分配。梦见用头搬运石头，能很好地履行肩负的责任。梦见砸石头，是吉兆，艰苦奋斗，能有所获。梦见用石头打人，大难会临头。梦见别人用石头打自己，会远近闻名。梦见在石头上行走，生活会舒适。囚犯梦见在石头上行走，很快会被释放出狱 。\r\n'),
(233, '人身篇', '心脏', '    梦见自己的心脏跳动异常，倒霉的日子要临头，要被解雇或会由于卧床不起，生意受损。梦见自己在数心脏跳动的次数，生活放荡。梦见自己把手放在胸口上，仇人将至，生命有危险。女人梦见自己的心脏跳动异常，流氓和小偷会搔扰自己的家。梦见心脏停止跳动，灾祸降临。梦见自己或亲人死于心脏病，病故的人会长寿。\r\n'),
(234, '人身篇', '牙齿', '    梦见数自己有多少牙齿，会受人污辱。梦见数别人的牙齿，是祥兆，意味着能战胜敌人。梦见自己的牙齿脱落，会与人发生争吵。梦见拔牙，不久要买房置地。女人梦见拔牙，生活会丰裕。商人梦见拔牙，能做一笔能获大利的生意。农民梦见拔牙，丰收在望。梦见牙疼，能发财。\r\n'),
(235, '人身篇', '身体', '    梦见身体被烫伤，是凶兆，预示着与别人为仇，卧床不起。梦见有人剥光了自己的衣服，经济会出现危机。梦见自己身体健康、结实，是祥瑞。\r\n'),
(236, '人身篇', '耳朵', '    梦见自己的耳朵被割掉，命令能被执行。梦见别人的耳朵被割，要遭受苦难。梦见自己掏耳朵，或让别人给自己掏耳朵，有好消息。梦见有人拧自己的耳朵，所犯的罪会受到法律制裁。梦见耳朵里长毛的人，能发财。\r\n'),
(237, '人身篇', '嘴唇', '    梦见嘴唇发红，是身体健康，生活富裕的征兆。梦见嘴唇发白或发黄，会体弱多病。男人梦见嘴唇发红的女人，会受女人的骗。男人梦见嘴唇发白的女人，妻子或朋友会对自己忠贞不谕。梦见嘴唇发黑的女人预示着要干艰苦的劳动，或身体疲惫不堪，或病魔缠身。梦见自己是厚嘴唇，会无力反抗待自己的人。梦见嘴唇极薄的女人，会得到爱情。\r\n'),
(238, '人身篇', '手', '    梦见双手被砍掉，能得到神的帮助。梦见自己的手又长又结实，意味着事业会成功。梦见自己的手比原来更红了，会官运亨通。梦见自己的手无力发黄，是有病的兆头。女人梦见自己的手变得坚硬，预示她的命很硬。梦见与陌生人握手，要交朋友。梦见双手都握着钱，能家趁万贯。\r\n<br><br>    梦见砍自己的手指，会成为情场上的胜者。梦见手指被蒸气烫伤，会嫉妒别人。梦见多指的手，有贵客登门。梦见自己的手指变长了，生意兴旺。梦见短手指，生活拮据。梦见歪曲的手指，会利用贪污公款的手段来搂钱。梦见手指流血，钱会被骗走。\r\n<br><br>    梦见自己拉手风琴，生活会安宁幸福。梦见闲置的手风琴，会有不幸的消息。梦见别人拉手风琴，家里要办婚事。梦见手风琴拉着拉着坏了，幸福的生活会遇到麻烦。梦见女人把手风琴放在自己的家里就离去，能得到遗产。\r\n<br><br>    梦见用手枪打死人，会失去爱情。商人梦见扔掉了手枪，生意会兴隆。士兵梦见丢掉了手枪，能被提拔。梦见自己被手抢弹击中，很快就要结婚，或参加至亲的婚礼。梦见购买手枪，能升官进爵。梦见出售手枪，会失去很多的钱财。梦见做手枪买卖生意，会受到国家领导人的器重，获得荣誉头衔。梦见抢夺别人的手枪，会遇上土匪。梦见往手枪里装子弹，危险时会得到朋友的同情。梦见得到了一把手枪，会德高望众。梦见给别人手枪，会引起大的灾难。梦见偷手枪，每日所得，只够糊口。梦见手枪丢失了，能和家人同生死，共患难。梦见放枪，会有不幸。梦见自己打枪，但是刚一扣扳机，枪管就炸裂了，意味着在非常时期，朋友和信赖的人也会欺骗自己。梦见有人朝自己开枪，却未伤着，会被指控犯了罪，但由于证据不足，会被释放。女人梦见带着枪，家里会遭武装土匪的抢劫。\r\n<br><br>    梦见手铐，事业会成功。梦见戴上手铐，会扬名天下。梦见自己打开别人手上的手铐，会受到严厉的惩罚。梦见别人手上的手铐开了，两者会发生争斗。梦见给别人手铐，他们会成为患难之交。\r\n'),
(239, '人身篇', '鼻', '    梦见自己的鼻子挺好看，是吉兆。梦见自己的鼻子十分丑陋，是不祥之兆。梦见鼻子流血，灾难要临头。梦见鼻尖上长脓疮，会被提拔。梦见大鼻头的人，会生意志损，与友吵架。女人梦见鼻子受伤，丈夫的家会臭名远扬。梦见有人抓住了自己的鼻子，会受辱，或被人奴役。梦见自己的鼻孔大了，有犯诈骗罪的危险。梦见自己怕鼻孔疼痛，大难会降。梦见鼻孔生脓包，亲人受骗。梦见马或牛鼻孔吐气，会有危险。\r\n'),
(240, '人身篇', '嘴', '     梦见自己的嘴，会得到爱情。梦见自己的嘴变大了，经济要受损失。梦见吃滚烫的东西烫伤了嘴，要生重病。梦见嘴里塞满了吃的东西，要发财。\r\n<br><br>    梦见嘴唇发红，是身体健康，生活富裕的征兆。梦见嘴唇发白或发黄，会体弱多病。男人梦见嘴唇发红的女人，会受女人的骗。男人梦见嘴唇发白的女人，妻子或朋友会对自己忠贞不谕。梦见嘴唇发黑的女人预示着要干艰苦的劳动，或身体疲惫不堪，或病魔缠身。梦见自己是厚嘴唇，会无力反抗待自己的人。梦见嘴唇极薄的女人，会得到爱情。\r\n'),
(241, '文化篇', '航海', '    男人梦见航海，生活会幸福、富裕。已婚女人梦见航海，会与丈夫分居。未婚男女梦见航海，能喜结良缘。男人梦见和妻子一块航海，意味着夫妻恩爱，生活幸福。女人梦见和丈夫一块去航海，婚姻美满，生活幸福。商人梦见航海，能发大财。囚犯梦见航海，很快要转到别的监狱，士兵梦见航海，能获得高级军功章。\r\n'),
(242, '文化篇', '导游', '    梦见导游带着自己参观名胜古迹，高兴的事会接连不断。梦见导游带领参观动物标本博物馆，会遇到忧愁和痛苦。梦见在导游带领下，参观动物园或博物馆，会成为著名学者。男人梦见自己当上了导游，是不详之兆，会生活贫困。女人梦见自己当上了导游，会成为远近闻名、追求进步、心地善良的伟人。\r\n'),
(243, '文化篇', '解救', '    梦见把亲戚或朋友从强盗或敌人的手里解救出来，自己的前进道路上会遇到障碍。梦见敌人被救了出来，自己会受到残酷的折磨。女人梦见丈夫被解救出来，夫妻会吵架。女人梦见情人被救出来，两人永远不会结为伉俪。梦见援助妻子，夫妻生活会很幸福美满。女人梦见解救丈夫，父母送的礼物会使自己更富有。未婚男子梦见把有名望的女人从危险中解救出来，也许两人会结为生活伴侣。梦见把朋友从困难或危险中救出来，危难的时刻会得到朋友的帮助。梦见救出自己的仇人，意味着能击败敌人。商人梦见拯救为自己干活的人，会富有幸福。囚犯梦见别人解救自己，会被判为终生监禁。但是病人梦见别人解救自己，不久会恢复健康。\r\n'),
(244, '文化篇', '演说', '    梦见发表演说，由于口才出众，受到听众交口称誉，一鸣惊人。梦见向文肓发表演说，生意会一团糟。梦见听别人演说，有幸会代表国家出席国际会议。梦见女人在男人的大会上讲话，自己会被才貌出众的女人选为郎君。\r\n'),
(245, '文化篇', '比赛', '    梦见比赛，忧愁和疑虑全拥上心头。女人梦见比赛，外出时会遭强盗袭击。梦见参加比赛，是不祥之兆。商人梦见加入比赛，开始做新的生意，要损失许多钱财。工作人员梦见参加比赛，会被停职，有可能被辞退。病人梦见参加比赛，会长期卧床不起。但是梦见比赛获胜是吉兆。梦见比赛输了，意味着失败，商人梦见比赛输了，开辟新的商业点，能赚大钱。梦见赛车是祥瑞。女人梦见赛车，不久要参加婚礼。梦见猴子比赛，声誉鹃起。官员梦见猴子比赛，会身居高位。\r\n'),
(246, '文化篇', '游行', '    梦见游行，意味着忧愁和痛苦。市民梦见参加军队的游行，国内会爆发政治革命，造成许多痛苦和灾难。女人梦见加入游行队伍，会与丈夫离异。部队军官检阅自己的部下，被迫调自己的军队去阻击敌人的突然进攻。船夫梦见加入了军队的游行队伍，会与部队建立联系，靠部队能挣大钱。梦见学生的游行队伍，会因缺乏经商经验，生意亏损。学生梦见自己游行，学习会名落孙山。学生梦见了自己的游行队伍，体育项目能获奖。梦见自己加入警察的游行队伍，生命和财产会得到保护。囚犯梦见自己加入了警察的游行队伍，会遭到逮捕，被判为长期徒刑。\r\n'),
(247, '文化篇', '天堂', '    有时，人们根据诗人和作家的描写，头脑中就产生了一个与现实毫无联系的地方，这个地方就是所谓的天堂。梦见天堂，大吉大利。病人梦见天堂，会长期过着无忧无虑美满的充满爱情的生活。被判为死刑的囚犯梦见天堂，国王登基时要宣布大赦，自己会免于一死。旅游者梦见自己在天堂，旅行会胜利，到达目的地后能发大财。商人梦见天堂，生意能赚大钱，因为所经营的货物，需求量会突然猛增。\r\n'),
(248, '文化篇', '图书馆', '    梦见去图书馆，文笔横溢，扬名四海。梦见当了图书馆馆长，会交上新朋友。梦见在图书馆里整理书，生意会兴隆。梦见走出图书馆，会威信大震。\r\n'),
(249, '文化篇', '法律', '    梦见打官司，会发意外之财。梦见去法院，借债度日的日子会结束。梦见自己当了法院的辩护律师，会名声大噪。女人梦见出席法庭审判，丈夫会发脾气。梦见攻读法律，不久能赚大钱。\r\n'),
(250, '文化篇', '学校', '    梦见学校，意味着品德高尚。已婚女子梦见去学校，丈夫会更加宠爱自己。未婚女子梦见去学校，会嫁给一位聪明、有教养的男子。学生梦见去学校，会被取消考试资格。商人梦见去学校，出国做生意能挣大钱。囚犯梦见去学校，不久能出狱。梦见学校，是祥兆，会传捷报。梦见当了学校的负责人，会幸福、富有。\r\n'),
(251, '文化篇', '音乐', '    梦见听音乐(乐器声或歌声)，是吉兆，能交好运。梦见很多人在奏乐、歌唱，家里年长者要去世。梦见应邀出席音乐会，做梦人能得到人们的尊重。梦见自己吹奏乐器，听众却很伤心，意味着会得罪朋友。梦见聋子听音乐，忧怨和痛苦要到来。梦见聋子听音乐，忧怨和痛苦要到来。梦见出席在仇人家举行的音乐会，会受到朋友的骗。病人梦见听音乐，身体很快康复。女人梦见自己在歌唱，但却没有听众，是不祥之兆，不久要撒手归天。青年男子梦见情侣奏乐，或用悦耳的歌喉歌唱，他会使自己一生都得到安宁，还能驱散自己的忧愁和烦恼。\r\n'),
(252, '文化篇', '谜语', '    梦见猜谜语，会为自己的家业担忧。已婚女人梦见破谜，整天为孩子的安全提心吊胆。囚犯梦见猜谜语，因违反狱规，会受到加刑惩处。士兵梦见破谜，因与敌军对抗，处境艰难。病人梦见猜谜语，会改变治疗方案，病情会好转。学生梦见破谜，因考题难，所以对能否通过考试坐卧不安，忧心如焚 。\r\n'),
(253, '文化篇', '绘画', '    梦见给自己画标准像，会开创一个光辉的开端，但是梦见画自己的像，是不祥之兆，恶习会毁了自己的一生。梦见为朋友绘画，困难时刻会得到别人的帮助。梦见为妻子或恋人绘画，他们的感情会更深厚。梦见画仇人的像，会与仇人发生激烈的争吵。梦见以绘画为生，是凶兆，会遭受损失。梦见给画家绘画，收入会增加。梦见为画展作画，参加比赛肯定能获奖。失业者梦见油画，不久能端上铁饭碗，而且还能高升。梦见画森林或花园，能名扬天下。囚犯梦见创作自己的生平画，会被释放。\r\n'),
(254, '文化篇', '画', '    已婚男子梦见静默不语的画，意味着生活失去了意义。未婚男子梦见画，爱情会出现危机。未婚女子梦见画，会成为老姑娘，嫁不出去。商人梦见画，会遭到损失。但是工作人员梦见画，会擢升增薪。梦见动的画，预示花销大增。梦见会说话的画，作梦人会精神焕发，生活幸福。梦见裸体画，精神稳定。梦见出家人的画，生活富裕安逸。梦见妻子或情人的画，会与她分离。梦见买画，忧愁和痛苦都会到来。梦见赠送给别人画，要结交新朋友。梦见敌人的画，是危险的兆头。\r\n<br><br>    梦见给自己画标准像，会开创一个光辉的开端，但是梦见画自己的像，是不祥之兆，恶习会毁了自己的一生。梦见为朋友绘画，困难时刻会得到别人的帮助。梦见为妻子或恋人绘画，他们的感情会更深厚。梦见画仇人的像，会与仇人发生激烈的争吵。梦见以绘画为生，是凶兆，会遭受损失。梦见给画家绘画，收入会增加。梦见为画展作画，参加比赛肯定能获奖。失业者梦见油画，不久能端上铁饭碗，而且还能高升。梦见画森林或花园，能名扬天下。囚犯梦见创作自己的生平画，会被释放。\r\n'),
(255, '文化篇', '诗歌', '    梦见写诗，收入会减少。官员梦见写诗，灾难会临头。学生梦见写诗，考试能获优秀。旅游者梦见写诗，旅行会顺利地结束。男人梦见读诗，会受到社会的尊重。女人梦见念诗，丈夫会宠爱自己一辈子。梦见仇人在读诗，仇人会被自己征服。梦见参加诗歌朗诵比赛，找工作十分艰难\r\n'),
(256, '文化篇', '哑剧', '    梦见看哑剧，会忧伤不安。男人梦见看哑剧，会为家务事担忧。女人梦见看哑剧，会对孩子的病忧心如焚。未婚青年男女梦见看哑剧，父母会阻止他们与自己心爱的人结婚。未婚男子梦见看哑剧，有权势的人许诺给自己安排工作，但从不兑现，工作人员梦见观赏哑剧，生意会萧条亏损。已婚的男人梦见看哑剧，会把家务活儿安排得井井有条。已婚女人梦见看哑剧，孩子会身体健康，自己也会满意。病人梦见看哑剧，由于医疗条件好，护理精心，很快能恢复健康。\r\n'),
(257, '文化篇', '报纸', '    梦见看报，要来钱。梦见买报，心情忧虑。商人梦见看报，要发财。梦见看报，并且把纸撕成碎片，是忧愁的兆头。梦见卖报，生意会兴旺。 梦见为报刊写稿子，一切都会顺心如意。\r\n'),
(258, '文化篇', '写作', '    梦见写信，会身体强健。女人梦见写信，意味着声誉鹊起。商人梦见写信。生意会发展到国外。梦见题词，能升官进爵。法官梦见写审判决定，是祥兆，会受到人民的爱戴。梦见别人写文章，会忧虑重重。梦见妻子写作，夫妻会分离。\r\n'),
(259, '文化篇', '战争', '    梦见战争，意味着要受苦。梦见大战，居住地区会发生混乱。梦见战场离自己较远，这对做梦人不会产生什么影响，但是他的亲属或仆人要受难。梦见自己参加战斗，意味着失恋或生意亏损。梦见战争结争，是家庭和睦的征兆。\r\n<br><br>    梦见国家爆发内战，作梦人的住地会出现饥荒或瘟疫。商人梦见国内爆发战争，在国外做生意是可望而不可及的。梦见参加战争，做事有远见。小偷或强盗梦见自己参战，有可能被当场抓获。犯人梦见自己参战，高级法院会宣布释放自己。\r\n'),
(260, '文化篇', '地狱', '    梦见地狱，大难临头。梦见在地狱见到朋友，自己和在世的朋友的生活会幸福。梦见自己被赶出地狱，会避免一场人身伤亡事故。梦见自己进入了地狱，死期临头。\r\n'),
(261, '文化篇', '侮辱', '    梦见被侮辱，不久要与人打架。梦见侮辱别人，会声威大震，被刮目相看。梦见侮辱比自己地位高的官员，要提职增薪。梦见侮辱敌人，敌人会降顺。\r\n'),
(262, '文化篇', '释放', '    男子梦见释放出狱，不久会困难重重。犯人梦见释放出狱，服刑期会延长。女人梦见自己被从监狱里放出，即将会怀孕。男子梦见妻子释放出狱，会永远与她分居。女人梦见丈夫出狱，会为家务事操心受累。梦见亲戚或朋友从监狱里放出来，是祥瑞，做梦人会升官。但是梦见仇人出狱，是凶兆，会遇到很多麻烦。梦见别人从监狱里放出，是祥兆，会名扬天下。\r\n'),
(263, '文化篇', '强盗', '    梦见强盗在抢劫，困难会受到冲击。船夫梦见强盗抢了自己的东西，会突然破财。梦见与强盗打斗，能交上忠实可靠的新朋友。犯人梦见自己被抢，不久会被释放。梦见与强盗交朋友，危难时刻，会得到朋友的同情。船夫梦见海盗，要当心仇人的攻击。\r\n');
INSERT INTO `gooraye_dream` (`id`, `category`, `title`, `content`) VALUES
(264, '文化篇', '监狱', '    男人梦见监狱，生活幸福，无忧无虑。已婚女人梦见囚牢，会怀孕。老叟梦见监牢，是不祥之兆，健康会每况愈下。商人见牢狱，生意会受损。梦见与犯人交谈，要遭厄运。梦见与囚犯吵架，灾祸会过去。梦见与犯人交朋友，招摇撞骗的朋友会给自己带来损失。梦见自己当了监狱长，会成为有钱人的管家。梦见与监狱长争吵，自由会受到限制。梦见与监狱的官员交朋友，名誉扫地。\r\n'),
(265, '文化篇', '强奸', '    已婚男子梦见别的女人，会捷报频传。未婚男子梦见强奸妇女，难以找到称心的工作。学生梦见强奸妇女，能通过考试。梦见强奸未婚妻，是不祥之兆，会遭受损失。病人梦见强奸妇女，会卧床不起。但是囚犯梦见强奸不认识的姑娘，不久会释放出狱。梦见指控自己犯了强奸罪会远近闻名。女人梦见自己被强奸，会患病。女人梦见责骂强奸自己的男人，处境艰难。\r\n'),
(266, '文化篇', '惩罚', '    已婚男子受到了惩罚，会名利双收。女人梦见受到处罚，要与丈夫吵架。梦见自己的敌人受到了严惩，能降服敌人。受指控的人梦见自己被惩办，法院会撤销对他的指控。梦见自己的案情严重，却没有受到重办，预兆会受到人们的喜爱。梦见自己的案情较轻，却受到了严判，会官运亨通。梦见自己被判为绞刑，所有的困难都会过去。男子梦见妻子被处罚，会继承岳父母的地下宝藏。女人梦见丈夫受到法办，要生女孩。梦见朋友被判刑，会遇到很大的危险。梦见敌人被惩办，会战胜敌人。梦见惩罚妻子，夫妻生活幸福，相敬如宾。梦见惩治亲友，家里要吵架。梦见法官宣判罪犯，会提职增薪。梦见处治敌人，会被提拔。梦见惩处下级官员，因阴谋犯罪，会受损失。梦见免于处罚，灾难会临头。梦见接受处分，会失去朋友和支持者。俘虏梦见未受到惩处，关押的期限会延长。\r\n'),
(267, '文化篇', '犯罪', '    梦见刑事犯罪，会犯严重错误，应该慎行。梦见别人伤害自己，犯了罪，处境会得到改善。梦见找别人的缺点，会与敌对双方保持友好联系。\r\n'),
(268, '文化篇', '表扬', '    梦见陌生人表扬自己，会受到侮辱。梦见仇敌赞扬自己，仇敌会归顺自己。梦见得到亲友的表扬，是不祥之兆，意味着作梦人会上当受骗。梦见受到妻子的表扬，妻子会行为不轨，令人厌恶。梦见部下赞美自己，生意会一团糟，部下会对自己的话置若罔闻。梦见表扬自己的妻子、朋友或亲属，是祥兆，生活会幸福愉快。梦见表扬仇敌，会受到仇敌的攻击，威信受损。工作人员梦见赞美自己的上司，会提职增薪、或能得奖。女人梦见受到别人的赞扬，意味着不是丈夫称心如意的妻子。学生梦见受到别人的表扬，考试会落第。\r\n'),
(269, '文化篇', '赞扬', '    梦见别人赞扬自己，不久的将来要交好运。相反梦见自己赞扬别人，大难将临头。\r\n'),
(270, '文化篇', '赞扬', '    梦见别人赞扬自己，不久的将来要交好运。相反梦见自己赞扬别人，大难将临头。\r\n'),
(271, '文化篇', '财富', '    梦见有很多财富，会忧愁悲伤。女人梦见有很多财产，会为孩子的安全担扰。商人梦见有很多财产，生意会大亏损。梦见别人有很多财富，生活会放荡、奢侈。梦见妻子很富有，是吉兆，收入会日益增多。梦见抛弃了财产，是不祥之兆，会受到敌人的威胁。男人梦见自己筋疲力尽。生活会舒适。女人梦见自己疲惫不堪，预示夫妻恩爱，生活幸福。工人梦见心力交瘁，意味着收入丰厚，生活舒适。病人梦见骨软筋酥，会长期卧床不起。囚犯梦见筋疲力竭，服刑期间会做苦力。旅游者梦见疲劳，一定能达目的地，而且能凯旋而归。梦见别人疲惫不堪，会家破人亡。梦见妻子十分疲乏，会与妻子分离。\r\n'),
(272, '文化篇', '青春', '    梦见自己变年青了，意味着患病或悲伤。孕妇梦见自己年青了，不久会流产。老翁梦见自己年青了，很快要离开人世。但是病人梦见自己变老了，不久能恢复健康。梦见年青人团团围住，会身强力壮，生活奢侈。梦见妻子年青了许多，预示家庭幸福、美满。\r\n'),
(273, '情爱篇', '离弃', '    男人梦见离弃了世俗，夫妻生活会幸福。女人梦见遗弃了世俗生活，意味着日子幸福、富裕。未婚男子梦见脱了俗，会娶一位眉清目秀的姑娘为妻。未婚女子梦见脱离了世俗，婚姻会美满。犯人梦见脱离了红尘，服刑期会延长。病人梦见脱离了世俗，会卧床不起，忍受病痛的折磨。商人梦见脱了俗，生意会发财。惯犯梦见脱离了红尘，很快会被逮捕。国王梦见脱离了世俗，是不祥之兆，会被迫离开王位，或者国家发生暴动要求他下台。比丘梦见脱离了红尘，会重新返俗，与家人团聚。\r\n'),
(274, '情爱篇', '接吻', '    梦见和不熟悉的人接吻，会陷入敌人的圈套。梦见和外国人接吻，能征服敌人。梦见吻妻子或孩子，或与他们接吻，会不爱他们。梦见吻敌人，会与他们讲和。小伙子梦见与恋人接吻，是祥瑞，很快要结为伉俪\r\n'),
(275, '情爱篇', '少女', '    梦见婀娜多姿、婷婷玉立的少女，是祥瑞。姑娘梦见少女，会迟迟嫁不出去。已婚女子梦见少女，是不祥之兆，丈夫会拒绝收入来源 。\r\n'),
(276, '情爱篇', '提议', '    男人梦见向与自己没有恋爱或婚姻关系的女人提出非礼的要求，将会得到爱情。女人梦见向与自己没有恋爱或婚姻关系的男人提出非礼的要求，健康会每况愈下。梦见提议做生意，意味着想经商，这种思想由来以久，但未能拿定主意，想在别人的帮助下作出决定。\r\n'),
(277, '情爱篇', '发誓', '    梦见自己发誓，不幸会来自内外。梦见在寺庙或宗教圣地发誓，是好兆头，自己的愿望会实现。女人梦见向自己的丈夫发誓，夫妻会有隔阂。犯了罪的人梦见发誓，又会去作案。男女恋人梦见在神的面前发誓，两人会分道扬镳，各奔前程。\r\n'),
(278, '情爱篇', '发誓', '    梦见自己发誓，不幸会来自内外。梦见在寺庙或宗教圣地发誓，是好兆头，自己的愿望会实现。女人梦见向自己的丈夫发誓，夫妻会有隔阂。犯了罪的人梦见发誓，又会去作案。男女恋人梦见在神的面前发誓，两人会分道扬镳，各奔前程。\r\n'),
(279, '情爱篇', '妻子', '    梦见拥抱妻子，是不祥之兆，会与妻子分居。梦见与妻子拌嘴，夫妻恩爱，生活幸福、美满。囚犯梦见与妻吵架，很快能见到妻子。梦见和妻分离，会更加宠爱妻子。梦见找了一位好吵闹的妻子，生活会幸福、舒适。\r\n'),
(280, '情爱篇', '爱情', '    男人梦见陷入女人的情网，灾难会临头。梦见喜欢孩子，家里会发生令人担忧的事情。少女梦见被自己爱恋着的男人，父母会阻挠自己的婚事，心中会产生不尽的幽忧。梦见自己所爱的人却不爱自己，生活会成功。\r\n'),
(281, '情爱篇', '私奔', '    梦见不是和自己的妻子，而是和别的女人私奔，将会招惹祸事。梦见与情人私奔，出外旅行会陷入坏人的魔掌。梦见在竞选中打死一位投了竞选对手票的选民，被打死选民所选的候选人将获胜。\r\n'),
(282, '情爱篇', '抛弃', '     梦见被自己抛弃的东西，将会得到，例如丈夫抛弃了妻子，预示他们的爱情会更加深挚。订了婚的男女青年梦见舍弃了自己心爱的人，这是他们要喜结良缘的预兆。梦见被朋友抛弃，生活将会遇到点麻烦。\r\n'),
(283, '生活篇', '降落', '    梦见从坐骑上摔下来，是不祥之兆。梦见从屋顶上摔下来，会被驱逐出境。梦见从马背上摔下来，要去参加战争。梦见从大象背上跌下来，意味着受穷或受辱。梦见掉进水沟里，生意会亏损。老年人梦见从床上掉到地上，死期要临头。女人梦见自己的孩子不小心跌倒，孩子要生重病\r\n'),
(284, '生活篇', '滑倒', '    梦见自己从高处滑下来，会被降职。女人梦见从高处掉下来，丈夫的收入和幸福会受阻。梦见和妻子一块儿滑倒，夫妻相亲相爱白头偕老。热恋中的男子梦见和恋人一起跌倒，很快要喜结良缘。梦见别人滑倒，是不祥之兆，会遭受损失。梦见妻子从高处滑落下来，为了给妻子治病要花不少的医药费。病人梦见掉到低处，近期内身体难以康复。商人梦见从高处掉到低处，收入会锐减\r\n'),
(285, '生活篇', '玩笑', '    商人梦见与陌生人开玩笑，生意会突然箫条。梦见和朋友开玩笑，会与朋友分离。梦见开敌人的玩笑，意味着能降服他们。梦见和妻子开玩笑，对妻子会有看法。小伙子梦见和恋人开玩笑，她会倍受宠爱。梦见开仆人的玩笑，仆人的工作一塌糊涂\r\n'),
(286, '生活篇', '唱歌', '    男人梦见大声唱歌，会有忧愁和痛苦。已婚女子梦见大声唱歌，家里要生孩子。少女梦见大声歌唱，会应邀参加亲戚的婚礼，病人梦见唱歌，健康能恢复。犯人梦见歌唱，会被释放。商人梦见唱歌，生意突然萧条。梦见别人唱歌，是祥兆，很快会有好消息。梦见妻子唱歌，家庭会幸福美满。女人梦见丈夫唱歌，不久会怀孕，能生一个男孩。工作人员梦见听歌唱家唱歌，是不祥的征兆，会听到不幸的消息。梦见听敌人唱歌，会听到家庭女成员去世的消息。梦见听妓女唱歌，会听到家庭女成员去世的消息。梦见听敌人唱歌，能降服敌人。梦见和朋友一块唱歌，是祥瑞，意味着做梦的人身体健康。梦见唱哀歌，是吉兆，身体会强壮\r\n'),
(287, '生活篇', '驱逐', '    梦见被驱逐出宗教宗族，会寿比南山，成为受人尊敬的人。梦见自己竭立想把别人从宗教驱逐出去，他会成为自己的挚友。梦见自己的亲属被开除出家族，意味着会得到提升\r\n'),
(288, '生活篇', '打鼾', '    男人梦见鼾声大作，生活幸福，安逸。女人梦见自己鼾声如雷，会用自己绝妙的方法讨得丈夫的欢喜。梦见听到别人打鼾，是祥兆，家庭会愉快，幸福。但是梦见听到敌人鼾声如雷是凶兆，敌人会不断骚扰自己。病人梦见鼾声大作，身体很快会康复。犯人梦见打鼾，不久要出狱。商人梦见打鼾会把生意竞争对手致于死地。但是旅游者梦见打鼾，旅途中会丢失钱财。离开家的人梦见打鼾，很快能与家人团聚\r\n'),
(289, '生活篇', '扼死', '    梦见有人正在扼住自己的脖子，事业会成功。女人梦见有人勒自己的脖子，丈夫会更宠爱自己。梦见用手掐住别人的脖子，是不祥之兆，会遭厄运。梦见有人勒妻子的脖子，必要时会得到朋友的帮助。梦见扼杀敌人，灾难会降临。商人梦见有人在勒住自己的脖子，生意能赚大钱\r\n'),
(290, '生活篇', '运动', '    已婚男人梦见运动，生活会愉快。已婚女子梦见运动，会生一个健壮的男孩。未婚女子梦见运动，会嫁给一个英俊潇洒、身体强壮的男子。未婚男子梦见运动，婚礼会办得十分隆重，婚后生活会很美满、幸福。女人梦见参加体育运动，会富有。学生梦见参加运动，下次考试会不及格。但是商人梦见参加运动，生意能兴旺，赚大钱。囚犯梦见参加体育锻炼，不久会出狱。旅游者梦见参加运动，途中会遇到许多困难\r\n'),
(291, '生活篇', '自杀', '    梦见自杀，预兆身体健康。女人梦见自杀，丈夫会富有。梦见别人在自杀，会忧虑重重。梦见妻子自杀，家庭会幸福。女人梦见丈夫自杀，会与丈夫长期分离。梦见朋友自杀，困难时期会得不到朋友的帮助。梦见仇人自杀，仇人的势力在增长。警察梦见别人自杀，因未能履行自己的职责，会受到处罚。商人梦见自杀，会得到好处。病人梦见自杀，身体很快能恢复健康\r\n'),
(292, '生活篇', '冲突', '    梦见和别人发生了冲突，会无忧无虑。梦见和妻子不和，家里的一切都会很顺心，所以心情会愉快。梦见和敌人争斗，意味着能使敌人归顺自己。女人梦见与丈夫吵架，要生孩子。热恋中的女子梦见和恋人打斗，会忧心忡忡。梦见妻子和别人打架，妻子要生病。梦见和朋友发生了冲突，对自己的困难会愁眉不展。梦见和敌人打得难分难解，敌人会搞阴谋反对自己，使自己遭受损失\r\n'),
(293, '生活篇', '游泳', '    梦见在河里游泳，意味着身强力壮。梦见游泳渡河，是吉兆，事业会成功。孕妇梦见游泳渡河，会遇到困难。梦见妻子游泳渡河，夫妻会产生隔阂。梦见朋友游泳渡河，朋友会抛弃自己。梦见仇敌游泳渡河，能降服仇敌。梦见动物游泳渡河，生意会顺利。旅行者梦见自己正在游泳渡河，旅行会圆满结束。病人梦见自己正在游泳渡河，身体不久会痊愈\r\n'),
(294, '生活篇', '发烧', '     梦见发烧，一切都很顺利。梦见感冒、发烧、咳嗽，会与别人合伙经商。梦见住院的高烧病人，靠行医能发财。国王或国家领导人梦见反对他的人发高烧，反对他的人会尊重自己，成为一位好公民\r\n'),
(295, '生活篇', '结婚', '    梦见参加婚礼，亲友要去世。男女青年梦见结婚，身体会有病。梦见和老头(老太太)结婚，会得到遗产。梦见自己结婚，要生病或离开人世。青年男子梦见自己恋人嫁给另一个男人，意味着他们的婚事会因亲友去世而拖延。梦见自己成了主婚人会官运亨通\r\n'),
(296, '生活篇', '调动', '    男人梦见自己调动了工作，会提职增薪。梦见别人调动工作，会受到损失。梦见申请调换工作，是不祥之兆，会遇到忧愁和灾难。梦见努力给别人调动工作，会与朋友产生隔阂。女人梦见丈夫调动了工作，夫妻生活和谐、幸福。犯人梦见自己转到别的监狱，不久会释放出狱\r\n'),
(297, '生活篇', '旅行', '    梦见独自去旅行，晚年会很幸福。女人梦见一个人去旅行，会威信扫地。梦见和妻子一块去旅行，婚姻会美满、幸福。梦见和朋友一起去旅行，会德高望众。病人梦见只身一个人去旅行，会长期卧床不起。士兵梦见出外旅行，意味着要开赴前线，并能立功受奖。男性老年人梦见要去旅行，会与世长辞。商人梦见旅行者，生意会破产。梦见与旅行者交谈，会有好消息。梦见和旅行者交朋友，会上当受骗，但是能破财免灾\r\n'),
(298, '生活篇', '纺织', '    梦见织布，会幸福快乐。已婚女人梦见织布，会身价百倍。未婚男子梦见织布，能娶一位貌美如玉，博学多才的女子为妻。未婚女子梦见织布，能嫁给一位心胸宽广、上进心强的男子。纺织工人梦见织布，收入会锐减。商人梦见织布，不久会成为国家的富商。囚犯梦见织布，很快会释放出狱。被指控的人梦见织布，会被判为长期徒刑\r\n'),
(299, '生活篇', '欧打', '    梦见自己欧打别人，会得到他人赞扬。梦见自己被与自己毫无关系的人殴打。是倒霉和失败的凶兆。梦见自己的情人被殴打，意味着两人的爱情会更加深厚，而且他们的爱情是永恒的。梦见打狗，预示因为自己的过失会对忠于自己的人产生怀疑。梦见打猫，会识破骗子的骗局。梦见无缘无故打猫，将会与邻居为敌。梦见打自己的胸口，是不祥之兆，要不被某个刑事案件牵连，要不自己的亲友与世长辞。梦见经常拍打地面，擢升的障碍会消除，这时即将破产的人来说，是一好梦。梦见自己挨打，最后被人打死，预兆他的所有痛苦和灾难将会结束，会过上非常幸福的日子。梦见唆使别人打人，被打死的人会成为你的挚友。病人做此梦，他的病体会很快复原\r\n'),
(300, '生活篇', '脱衣服', '    梦见脱衣服，意味着生活奢侈、放荡。女人梦见脱衣服，家庭会愉快。梦见主人或上司脱衣服，会受人奴役。梦见敌人脱衣服，对如何击败敌人，整天郁郁不乐，心情会非常忧烦。梦见妻子脱衣服，会有好消息。梦见别人脱衣服，很快能知道他们的隐私。病人梦见脱衣服，不久要去旅行。囚犯梦见脱衣服，在服刑期间会受到优待\r\n'),
(301, '生活篇', '乞讨', '    梦见对别人施舍，象征着长寿和幸福。但是梦见自己得到别人的施舍，则意味着贫困和灾难。已婚妇女梦见得到别人的施舍，丈夫将会生病或被解雇。\r\n'),
(302, '生活篇', '睡醒', '    梦见已经睡醒，预兆会生病。已婚女人梦见自己醒着，要与丈夫分离。孕妇梦见还未入睡，胚胎有问题。未婚男女梦见已经睡醒，与自己恋人的爱情会更加深厚。病人梦见自己醒着，所患的病是不治之症。商人梦见自己未睡，生意要亏损，或者因生意倒闭，而愁眉苦脸。旅游者梦见自己已经睡醒，途中会遭强盗的袭击。梦见别人未睡，是祥瑞，必要时会得到别人的帮助。梦见妻子或情人已睡醒，能得到她的爱情。\r\n'),
(303, '生活篇', '赌博', '    梦见赌博，是不祥之兆。梦见赌赢了，意味着朋友要离开人世\r\n'),
(304, '生活篇', '投票', '    梦见投别人的票，要遭厄运。女人梦见投别人的票，夫妻会感情不和。梦见别人投自己的票，会声威大震。女人梦见别人投自己的票，会威信扫地，臭名远扬。商人梦见别人投自己的票，会赶走竞争的对手，能发大财。梦见选民在投票，会增加额外开支。梦见在会议期间有人投自己的反对票，会被人污辱\r\n'),
(305, '生活篇', '发疯', '    梦见自己疯了，会文气横溢。智力超人。梦见参观疯人院，会被任命为学校校长。梦见与疯人谈话，要遭厄运。梦见治疗癫病，会染上恶习，失去自控能力。梦见妻子疯了，夫妇会相亲相爱，白头偕老。\r\n'),
(306, '生活篇', '划船', '    梦见独自划船，会与朋友产生意见分歧。梦见和妻子或情人一块划船，是祥兆。会捷报频传。梦见和朋友划船，能克服一切困难。梦见在天睛的日子里划船，一切都会成功，梦见在恶劣的日子里划船。会遇到很多困难。梦见别人划船，朋友会离开自己\r\n'),
(307, '生活篇', '原谅', '    梦见请求陌生人原谅，是悲伤的征兆。梦见恳求妻子饶恕，她会是一个好斗的女人。未婚男子梦见向恋人请求谅解，结婚前只好忍辱求全。梦见请仆人原谅，意味着生意或家产的管理方面一团糟。梦见恳求上司饶恕，会遭受人们的冷眼。梦见原谅了仇人是吉兆，会与大家和睦相处。囚犯梦见监狱长原谅了自己，不久会被释放\r\n'),
(308, '生活篇', '发怒', '    梦见对别人发怒，会与他建立友谊。梦见朋友对自己发火，他们之间会出现隔阂。男青年梦见对自己的恋人发脾气，会很快结婚。商人梦见讨厌自己的顾客，意味着顾客络绎不绝，利润倍增。梦见对长辈不满，生活无忧无虑，幸福愉快。犯人梦见审理自己案件的法官对自己大发雷霆，预要被释放\r\n'),
(309, '生活篇', '跳舞', '    梦见自己跳舞，事业会有成就，职位会得到晋升，未婚男子会娶一位貌若西施的女子为妻。梦见别人跳，自己坐在一旁观看，会有不幸的消息。梦见与女人共舞，会遭破产。梦见与恋人共舞，爱情会更深厚。梦见女人跳舞，要交好运、发大财。女人梦见男人跳舞，会嫁给一位船长或首领。\r\n'),
(310, '生活篇', '呕吐', '    梦见想呕吐，要乘船去遥远的国家。梦见引起呕吐的东西，会遭不幸和贫穷。病人梦见呕吐，是好兆头，身体会健康。梦见别人给自己令人作呕的东西，会得罪朋友，船员梦见呕吐，是祥兆，航海会成功\r\n'),
(311, '生活篇', '宴请', '    梦见宴请别人，大难会临头，但是做梦人梦见出席人举行的宴会，是交好运的祥兆。梦见宴会上炊俱和吃的东西到处乱放，家里将会发生争吵。女人梦见宴请，将要出嫁。\r\n'),
(312, '生活篇', '弹琴', '    梦见弹琴，会灰心失望。梦见听别人弹琴是吉兆，生活会富裕。梦见自己正在弹琴，突然琴弦断了，生意会受到突然的打击。女人梦见弹琴，要脱离世俗，出家苦修。士兵梦见同伴弹琴，会被提升。病人梦见弹琴，病体会痊愈，身强体壮。\r\n'),
(313, '生活篇', '野餐', '    男人梦见野餐，要生病。但是女人梦见野餐，丈夫家会增人口。病人梦见野餐，会卧床不起。囚犯梦见野餐，考试人取得优异成绩。男人梦见参加野餐，是祥兆，会身体健康，精神振奋。已婚女人参加野餐，会受到丈夫家其他女人的冷眼和辱骂。商人梦见参加野餐，生意会受到挫折。病人梦见参加野餐，身体不久就会康健。学生梦见参加野餐，考试常常落第，前途受到影响。士兵梦见去野餐，是不祥之兆，有可能开小差。被驱逐出境的人梦见参加野餐，在社会上享有盛名，受到人们的尊重。梦见没有参加野餐聚会，家里会有人患重病或死亡。\r\n'),
(314, '生活篇', '读书', '    男人梦见读书，能获得爱情。女人梦见读书，丈夫会更加疼爱自己。学生梦见读书，考试能获得优异的成绩。梦见读报，会声誉鹃起。女人梦见读报，会为丈夫增光。商人梦见读报，生意能成功。政治家梦见读报，会身陷囹圄。但是官员梦见看报，会德高望重。梦见读欢迎词，会名声大噪。梦见对听众宣读自己的发言稿，一切努力都会落空。梦见读写在地上的字，是不祥之兆，会有人搞阴谋反对自己。梦见读石头上刻写的文章，会智力超人，远近闻名。梦见敌人读书是凶兆，敌人会声威大震。梦见妻子读书，不久会有好消息。收割━已婚男子梦见收割庄稼，会生一个漂亮的男孩。商人梦见收割庄稼，会生下漂亮的男孩。商人梦见收割庄稼，要开辟到一个新的商业点，能发大财。梦见陌生人收割庄稼，会受损。梦见敌人收割庄稼，是不祥之兆，敌人会给自己造成障碍。\r\n'),
(315, '生活篇', '吃饭', '    梦见自己独自用餐，家里要发生争吵。梦见和别人一块儿进餐，家里或邻居要办婚事。梦见与几个人一同进餐，但是他们却不吃，灾祝会降临，或要离开人世。梦见一人独自坐在墙上吃饭，会被擢升。梦见吃鱼，意味着身体强健。梦见吃用鸡蛋做的食物，是吉兆，家里要生男孩。梦见吃干烙饼，会做赔本生意。梦见用银盘子吃饭，会大吉大利。\r\n'),
(316, '生活篇', '伤心', '    梦见为亲友有损失悲恸万分，生活会幸福愉快。梦见加入了伤心忧虑的人群，能交上患难之友。女人梦见孝服，会生男孩子。梦见仇人悲伤，是祥瑞，能打羸官司。梦见自己穿着孝服，别人却兴灾乐祸，预示会与很多人为敌。\r\n'),
(317, '生活篇', '争吵', '    梦见和妻子争吵，夫妻恩爱，生活幸福。梦见和亲友吵架，全家人会和睦相处，危难时期能得到朋友的帮助。梦见和敌人打架，一切都会顺利。工作人员梦见与上司争吵，会提职增薪。梦见与下级吵架，会妥善地处理自己的事。梦见与死人争吵，会身强力壮，寿比南山。已婚女人梦见与丈夫拌嘴，会生男孩。女人梦见与邻居吵嘴，财产会安全无样。已婚女子梦见与乞丐吵嘴，丈夫会穷困潦倒。少女梦见与父母顶嘴，不久要嫁到富户人家。梦见和自家的女人发生龈龉，是不祥之兆，会家破人亡。梦见朋友吵闹，会失去人们的帮助。梦见敌人大吵大闹，是祥瑞，意味着自己能胜利。梦见与陌生人在马路上打架，是吉兆，朋友会邀请自己参加聚会。商人梦见和顾客发生争吵，生意会不顺利，收入减少。病人梦见和医生吵闹，灾难很快就过去，但是病人梦见和亲人或医护人员吵架，病情会恶化。老年人梦见和孩子拌嘴，是祥瑞，生活幸福，延年益寿。受指控的人梦见和法官吵闹，会被释放。商人梦见和顾客打架，是祥兆，能发财。旅游者梦见相互争吵不休，旅行会圆满结束。\r\n'),
(318, '生活篇', '挨打', '    梦见自己挨打，生活会富裕。梦见陌生人挨打，会遇到困难。梦见家人被打死了，家里要增添人口。梦见打动物，要发财。囚犯梦见被打，很快会被释放。\r\n'),
(319, '生活篇', '流产', '    梦见听到流产之事，会遭横事，但最后一定会度过难关。\r\n'),
(320, '生活篇', '痛饮', '    梦见大口喝酒，是不祥之兆，会遇到灾祸。未婚男子梦见畅饮，是祥兆，能喜结良缘。病人梦见痛饮，病情会恶化。梦见与身居高位的人在一起畅饮，能交好运，官运亨通，扬名天下。梦见大口喝果汁，是祥瑞。梦见妻子或恋人畅饮果汁，是好的征兆，一生都会幸福愉快。梦见敌人痛饮果汁，是吉兆，敌人会病魔缠身。\r\n'),
(321, '生活篇', '消化不良', '    梦见消化不良，生活会富裕。梦见请大夫治病消化不良，健康会下降。士兵梦见自己消化不良，要回家探亲。梦见给别人治疗消化不良，赌搏会输钱。\r\n'),
(322, '生活篇', '辱骂', '    梦见有人辱骂自己，意味着他要与这个人生意上发生龃龆。\r\n');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_estate`
--

CREATE TABLE IF NOT EXISTS `gooraye_estate` (
`id` int(11) unsigned NOT NULL,
  `token` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `matchtype` tinyint(11) NOT NULL COMMENT '关键词匹配模式：',
  `cover` varchar(200) NOT NULL COMMENT '图文消息封面',
  `panorama_id` int(11) NOT NULL,
  `classify_id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  `banner` varchar(200) NOT NULL,
  `video` varchar(200) DEFAULT NULL,
  `house_banner` varchar(200) NOT NULL,
  `place` varchar(80) NOT NULL DEFAULT '',
  `lng` varchar(15) NOT NULL,
  `lat` varchar(15) NOT NULL,
  `estate_desc` text NOT NULL,
  `project_brief` text NOT NULL,
  `traffic_desc` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='楼盘简介' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_estate`
--

INSERT INTO `gooraye_estate` (`id`, `token`, `title`, `keyword`, `matchtype`, `cover`, `panorama_id`, `classify_id`, `res_id`, `banner`, `video`, `house_banner`, `place`, `lng`, `lat`, `estate_desc`, `project_brief`, `traffic_desc`) VALUES
(1, 'ubddyd1402964682', '楼盘', '楼盘', 0, 'http://114.215.198.83/tpl/static/attachment/focus/default/1.gif', 0, 0, 0, 'http://114.215.198.83/tpl/static/attachment/focus/default/2.jpg', '', 'http://114.215.198.83/tpl/static/attachment/focus/default/3.jpg', '袍江', '', '', '楼盘', '楼盘', '楼盘');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_estate_album`
--

CREATE TABLE IF NOT EXISTS `gooraye_estate_album` (
`id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `poid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_estate_expert`
--

CREATE TABLE IF NOT EXISTS `gooraye_estate_expert` (
`id` int(11) unsigned NOT NULL,
  `token` varchar(30) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `face` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_estate_expert`
--

INSERT INTO `gooraye_estate_expert` (`id`, `token`, `pid`, `title`, `sort`, `name`, `position`, `face`, `description`, `comment`) VALUES
(1, 'ubddyd1402964682', 0, '恩恩恩恩', 1, '呵呵', '呵呵', 'http://114.215.198.83/tpl/static/attachment/background/view/9.jpg', '呵呵', '呵呵');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_estate_housetype`
--

CREATE TABLE IF NOT EXISTS `gooraye_estate_housetype` (
`id` int(11) NOT NULL,
  `panorama_id` int(10) NOT NULL DEFAULT '0',
  `son_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `floor_num` varchar(20) NOT NULL,
  `area` varchar(50) NOT NULL,
  `fang` int(11) NOT NULL,
  `ting` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `abid` varchar(200) NOT NULL,
  `type1` varchar(200) NOT NULL,
  `type2` varchar(200) NOT NULL,
  `type3` varchar(200) NOT NULL,
  `type4` varchar(200) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_estate_housetype`
--

INSERT INTO `gooraye_estate_housetype` (`id`, `panorama_id`, `son_id`, `token`, `name`, `floor_num`, `area`, `fang`, `ting`, `sort`, `description`, `abid`, `type1`, `type2`, `type3`, `type4`) VALUES
(1, 0, 1, 'ubddyd1402964682', '户型1', '1', '120', 1, 1, 1, '呵呵', '', 'http://114.215.198.83/tpl/static/attachment/background/view/9.jpg', 'http://114.215.198.83/tpl/static/attachment/background/view/8.jpg', 'http://114.215.198.83/tpl/static/attachment/background/view/7.jpg', 'http://114.215.198.83/tpl/static/attachment/background/view/6.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_estate_impress`
--

CREATE TABLE IF NOT EXISTS `gooraye_estate_impress` (
`id` int(11) NOT NULL,
  `token` varchar(30) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `is_show` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_estate_impress`
--

INSERT INTO `gooraye_estate_impress` (`id`, `token`, `pid`, `title`, `sort`, `comment`, `is_show`) VALUES
(1, 'ubddyd1402964682', 0, '恩', 1, '1', 1);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_estate_impress_add`
--

CREATE TABLE IF NOT EXISTS `gooraye_estate_impress_add` (
`id` int(11) NOT NULL,
  `imp_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_estate_impress_add`
--

INSERT INTO `gooraye_estate_impress_add` (`id`, `imp_id`, `token`, `wecha_id`) VALUES
(1, 1, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_estate_son`
--

CREATE TABLE IF NOT EXISTS `gooraye_estate_son` (
`id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='子楼盘' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `gooraye_estate_son`
--

INSERT INTO `gooraye_estate_son` (`id`, `pid`, `token`, `title`, `sort`, `description`) VALUES
(1, 0, 'ubddyd1402964682', '1', 1, ''),
(2, 0, 'ubddyd1402964682', '2', 1, ''),
(3, 0, 'ubddyd1402964682', '3', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_files`
--

CREATE TABLE IF NOT EXISTS `gooraye_files` (
`id` int(10) NOT NULL,
  `token` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `size` int(10) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- 转存表中的数据 `gooraye_files`
--

INSERT INTO `gooraye_files` (`id`, `token`, `url`, `size`, `type`, `time`) VALUES
(45, 'caspcu1403054302', 'http://114.215.198.83/uploads/c/caspcu1403054302/thumb_53a9532082968.jpg', 46231, 'jpg', 1403605792),
(46, 'caspcu1403054302', 'http://114.215.198.83/uploads/c/caspcu1403054302/thumb_53a95329cbafb.jpg', 68262, 'jpg', 1403605801),
(47, 'caspcu1403054302', 'http://114.215.198.83/uploads/c/caspcu1403054302/thumb_53a953493e8bc.jpg', 46231, 'jpg', 1403605833),
(48, 'ubddyd1402964682', 'http://114.215.198.83/uploads/u/ubddyd1402964682/thumb_53a962ec7bd08.jpg', 11724, 'jpg', 1403609836),
(49, 'ubddyd1402964682', 'http://114.215.198.83/uploads/u/ubddyd1402964682/thumb_53a965a88d654.jpg', 11724, 'jpg', 1403610536);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_flash`
--

CREATE TABLE IF NOT EXISTS `gooraye_flash` (
`id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `info` varchar(90) NOT NULL,
  `tip` smallint(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='3g网站头部flash' AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `gooraye_flash`
--

INSERT INTO `gooraye_flash` (`id`, `token`, `img`, `url`, `info`, `tip`) VALUES
(6, 'caspcu1403054302', 'http://114.215.198.83//tpl/static/attachment/focus/default/2.jpg', '', '', 1),
(7, 'caspcu1403054302', 'http://114.215.198.83//tpl/static/attachment/background/view/9.jpg', '', '首页背景图', 2),
(8, 'caspcu1403054302', 'http://114.215.198.83//tpl/static/attachment/background/view/4.jpg', '', '呵呵', 2),
(9, 'caspcu1403054302', 'http://114.215.198.83//tpl/static/attachment/background/view/7.jpg', '', '信息', 2),
(10, 'caspcu1403054302', 'http://114.215.198.83//tpl/static/attachment/focus/default/4.jpg', '', '', 1),
(11, 'caspcu1403054302', 'http://114.215.198.83//tpl/static/attachment/focus/default/3.jpg', '', '', 1),
(12, '', '', '', '', 1),
(13, 'ubddyd1402964682', 'http://114.215.198.83/uploads/u/ubddyd1402964682/thumb_53a962ec7bd08.jpg', '', '公司活动', 1);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_forum_comment`
--

CREATE TABLE IF NOT EXISTS `gooraye_forum_comment` (
`id` int(10) unsigned NOT NULL,
  `tid` int(11) NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `content` varchar(3000) NOT NULL,
  `createtime` int(11) NOT NULL,
  `favourid` varchar(3000) DEFAULT NULL,
  `replyid` varchar(3000) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `token` varchar(50) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `gooraye_forum_comment`
--

INSERT INTO `gooraye_forum_comment` (`id`, `tid`, `uid`, `uname`, `content`, `createtime`, `favourid`, `replyid`, `status`, `token`) VALUES
(1, 1, 'oqMIVt0XES04VNcYVGqLUuCamF3s', '尛', '恭喜', 1403141512, NULL, NULL, 1, 'caspcu1403054302'),
(2, 1, 'oqMIVt0XES04VNcYVGqLUuCamF3s', '尛', '呵呵', 1403141623, NULL, NULL, 1, 'caspcu1403054302');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_forum_config`
--

CREATE TABLE IF NOT EXISTS `gooraye_forum_config` (
`id` int(11) NOT NULL,
  `bgurl` varchar(200) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `comcheck` varchar(4) NOT NULL DEFAULT '',
  `intro` varchar(600) NOT NULL DEFAULT '',
  `ischeck` tinyint(4) NOT NULL DEFAULT '0',
  `pv` float NOT NULL DEFAULT '0',
  `forumname` char(60) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `token` varchar(50) NOT NULL,
  `isopen` tinyint(4) DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `gooraye_forum_config`
--

INSERT INTO `gooraye_forum_config` (`id`, `bgurl`, `picurl`, `comcheck`, `intro`, `ischeck`, `pv`, `forumname`, `logo`, `token`, `isopen`) VALUES
(2, '', '', '0', '', 1, 2, 'gh_b5ffd9df92d7官方粉丝社区', '/tpl/Wap/default/common/images/forum/face.png', 'ubddyd1402964682', 1),
(3, 'http://114.215.198.83//tpl/static/attachment/background/view/1.jpg', 'http://114.215.198.83//tpl/static/attachment/focus/default/5.gif', '0', '您好，这里是古睿官方粉丝讨论区', 0, 1, '古睿官方粉丝社区', 'http://114.215.198.83//tpl/static/attachment/icon/lovely/1.png', 'caspcu1403054302', 1);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_forum_message`
--

CREATE TABLE IF NOT EXISTS `gooraye_forum_message` (
`id` int(10) unsigned NOT NULL,
  `content` varchar(3000) NOT NULL,
  `createtime` int(11) NOT NULL,
  `fromuid` varchar(50) NOT NULL,
  `touid` varchar(40) NOT NULL,
  `fromuname` varchar(60) DEFAULT NULL,
  `touname` varchar(60) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `isread` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `gooraye_forum_message`
--

INSERT INTO `gooraye_forum_message` (`id`, `content`, `createtime`, `fromuid`, `touid`, `fromuname`, `touname`, `tid`, `cid`, `token`, `status`, `isread`) VALUES
(1, '<a href="/index.php?g=Wap&m=Forum&a=comment&tid=1&wecha_id=oqMIVt0XES04VNcYVGqLUuCamF3s&token=caspcu1403054302">尛评论了您的帖子</a>', 1403141512, 'oqMIVt0XES04VNcYVGqLUuCamF3s', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '尛', '尛', 1, 0, 'caspcu1403054302', 1, 1),
(2, '<a href="/index.php?g=Wap&m=Forum&a=comment&tid=1&wecha_id=oqMIVt0XES04VNcYVGqLUuCamF3s&token=caspcu1403054302">尛评论了您的帖子</a>', 1403141623, 'oqMIVt0XES04VNcYVGqLUuCamF3s', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '尛', '尛', 1, 0, 'caspcu1403054302', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_forum_topics`
--

CREATE TABLE IF NOT EXISTS `gooraye_forum_topics` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(300) NOT NULL,
  `content` varchar(1500) NOT NULL,
  `likeid` varchar(3000) DEFAULT NULL,
  `commentid` varchar(3000) DEFAULT NULL,
  `favourid` varchar(3000) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `photos` varchar(300) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_forum_topics`
--

INSERT INTO `gooraye_forum_topics` (`id`, `title`, `content`, `likeid`, `commentid`, `favourid`, `createtime`, `updatetime`, `uid`, `uname`, `token`, `photos`, `status`) VALUES
(1, '开通了', '微论坛开通了&amp;lt;img src=&amp;quot;./tpl/static/forum/images/13.gif&amp;quot; data-innerhtml=&amp;quot;/::D&amp;quot;&amp;gt;&amp;lt;/img&amp;gt;&amp;lt;img src=&amp;quot;./tpl/static/forum/images/13.gif&amp;quot; data-innerhtml=&amp;quot;/::D&amp;quot;&amp;gt;&amp;lt;/img&amp;gt;&amp;lt;img src=&amp;quot;./tpl/static/forum/images/13.gif&amp;quot; data-innerhtml=&amp;quot;/::D&amp;quot;&amp;gt;&amp;lt;/img&amp;gt;&amp;lt;img src=&amp;quot;./tpl/static/forum/images/13.gif&amp;quot; data-innerhtml=&amp;quot;/::D&amp;quot;&amp;gt;&amp;lt;/img&amp;gt;', 'oqMIVt0XES04VNcYVGqLUuCamF3s', NULL, '', 1403141214, NULL, 'oqMIVt0XES04VNcYVGqLUuCamF3s', '尛', 'caspcu1403054302', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_function`
--

CREATE TABLE IF NOT EXISTS `gooraye_function` (
`id` int(11) NOT NULL,
  `gid` tinyint(3) NOT NULL,
  `usenum` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `funname` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `isserve` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=70 ;

--
-- 转存表中的数据 `gooraye_function`
--

INSERT INTO `gooraye_function` (`id`, `gid`, `usenum`, `name`, `funname`, `info`, `isserve`, `status`) VALUES
(1, 6, 0, '天气查询', 'tianqi', '回复城市 天气', 1, 1),
(2, 6, 0, '糗事', 'qiushi', '糗事　直接发送糗事', 1, 0),
(3, 6, 0, '计算器', 'jishuan', '计算器使用方法　例：计算50-50　，计算100*100', 1, 1),
(4, 6, 0, '朗读', 'langdu', '朗读＋关键词　例：朗读gooraye多用户营销系统', 1, 0),
(5, 6, 0, '健康指数查询', 'jiankang', '健康指数查询　健康＋高，＋重　例：健康170,65', 1, 1),
(6, 6, 0, '快递查询', 'kuaidi', '快递＋快递名＋快递号　例：快递顺丰117215889174', 1, 1),
(7, 6, 0, '笑话', 'xiaohua', '笑话　直接发送笑话', 1, 1),
(8, 6, 0, '藏头诗', 'changtoushi', ' 藏头诗+关键词　例：藏头诗我爱你', 1, 0),
(9, 6, 0, '陪聊', 'peiliao', '聊天　直接输入聊天关键词即可', 1, 0),
(10, 6, 0, '聊天', 'liaotian', '聊天　直接输入聊天关键词即可', 1, 1),
(11, 6, 0, '周公解梦', 'mengjian', '周公解梦　梦见+关键词　例如:梦见父母', 1, 1),
(12, 6, 0, '语音翻译', 'yuyinfanyi', '翻译＋关键词 例：翻译你好', 1, 0),
(13, 6, 0, '火车查询', 'huoche', '火车查询　火车＋城市＋目的地　例火车上海南京', 1, 1),
(14, 6, 0, '公交查询', 'gongjiao', '公交＋城市＋公交编号　例：上海公交774', 1, 1),
(15, 6, 0, '身份证查询', 'shenfenzheng', '身份证＋号码　　例：身份证342423198803015568', 1, 1),
(16, 6, 0, '手机属地查询', 'shouji', '手机归属地查询(吉凶 运势) 手机＋手机号码　例：手机13917778912', 1, 1),
(17, 6, 0, '音乐查询', 'yinle', '音乐＋音乐名 例：音乐爱你一万年', 1, 1),
(18, 6, 0, '附近信息查询', 'fujin', '附近周边信息查询(ＬＢＳ） 回复:附近+关键词  例:附近酒店', 1, 1),
(43, 6, 0, '抽奖', 'lottery', '抽奖,输入抽奖即可参加幸运大转盘', 1, 1),
(20, 6, 0, '淘宝店铺', 'taobao', '输入淘宝＋关键词　即可访问淘宝3g手机店铺', 2, 1),
(21, 6, 0, '会员资料管理', 'userinfo', '会员资料管理　输入会员　即可参与', 2, 1),
(22, 6, 0, '翻译', 'fanyi', '翻译 + 语种＋关键词，翻译你好为法语  例：翻译 法语 你好 。 ', 1, 0),
(23, 6, 0, '第三方接口', 'api', '第三方接口整合模块，请在管理平台下载接口文件并配置接口信息，', 1, 1),
(24, 6, 0, '姓名算命', 'suanming', '姓名算命 算命＋关键词　例：算命李白', 1, 1),
(25, 6, 0, '百度百科', 'baike', '百度百科　使用方法：百科＋关键词　例：百科北京', 2, 1),
(26, 6, 0, '彩票查询', 'caipiao', '回复内容:彩票+彩种即可查询彩票中奖信息,例：彩票双色球', 1, 1),
(42, 6, 0, '幸运大转盘', 'choujiang', '输入抽奖　即可参加幸运大转盘抽奖活动', 2, 1),
(29, 6, 0, '3G首页', 'shouye', '输入首页,访问微3g 网站', 1, 1),
(30, 6, 0, 'DIY宣传页', 'adma', 'DIY宣传页,用于创建二维码宣传页权限开启', 1, 1),
(31, 6, 0, '会员卡', 'huiyuanka', '尊贵享受vip会员卡,回复会员卡即可领取会员卡', 1, 1),
(36, 6, 0, '通用预订系统', 'host_kev', '通用预订系统 可用于酒店预订，ktv订房，旅游预订等。', 2, 1),
(34, 6, 0, '歌词查询', 'geci', '歌词查询 回复歌词＋歌名即可查询一首歌曲的歌词,例：歌词醉清风', 1, 1),
(35, 6, 0, '域名whois查询', '', '域名whois查询　回复域名＋域名 可查询网站备案信息,域名whois注册时间等等\r\n 例：域名gooraye.com', 1, 1),
(37, 6, 0, '自定义表单', 'diyform', '自定义表单(用于报名，预约,留言)等', 1, 1),
(38, 6, 0, '无线网络订餐', 'dx', '无线网络订餐', 1, 1),
(39, 6, 0, '在线商城', 'shop', '在线商城,购买系统', 1, 1),
(40, 6, 0, '在线团购系统', 'etuan', '在线团购系统', 1, 1),
(41, 6, 0, '自定义菜单', 'diymen_set', '自定义菜单,一键生成轻app', 1, 1),
(44, 6, 0, '刮刮卡', 'gua2', '刮刮卡抽奖活动', 1, 1),
(45, 6, 0, '全景', 'panorama', '', 1, 1),
(46, 6, 0, '婚庆喜帖', 'wedding', '', 2, 1),
(47, 6, 0, '投票', 'vote', '', 2, 1),
(48, 6, 0, '房产', 'estate', '', 2, 1),
(49, 6, 0, '3G相册', 'album', '', 1, 1),
(50, 6, 0, '砸金蛋', 'GoldenEgg', '', 2, 1),
(51, 6, 0, '水果机', 'LuckyFruit', '', 2, 1),
(52, 6, 0, '留言板', 'message', '', 2, 1),
(53, 6, 0, '微汽车', 'car', '', 2, 1),
(58, 6, 0, '高级模板', 'advanceTpl', '高级模板', 2, 1),
(60, 6, 0, '微信墙', 'wall', '', 1, 1),
(61, 6, 0, '摇一摇', 'shake', '', 1, 1),
(62, 6, 0, '微论坛', 'forum', '', 1, 1),
(63, 6, 0, '微医疗', 'medical', '', 1, 1),
(64, 6, 0, '群发消息', 'message', '', 1, 1),
(65, 6, 0, '分享统计', 'share', '', 1, 1),
(66, 6, 0, '酒店宾馆', 'hotel', '', 1, 1),
(67, 6, 0, '微教育', 'school', '', 1, 1),
(68, 6, 0, '电影', 'dianying', '全网电影查询', 1, 1),
(69, 6, 0, '人品计算', 'renpin', '人品计算 输入人品+姓名', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_greeting_card`
--

CREATE TABLE IF NOT EXISTS `gooraye_greeting_card` (
`id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `num` int(11) NOT NULL,
  `click` int(11) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `bakcground_url` varchar(200) NOT NULL,
  `mp3` varchar(200) NOT NULL,
  `style` tinyint(2) NOT NULL,
  `name` varchar(60) NOT NULL,
  `zfname` varchar(60) NOT NULL,
  `copy` varchar(200) NOT NULL,
  `info` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_greeting_card`
--

INSERT INTO `gooraye_greeting_card` (`id`, `token`, `num`, `click`, `keyword`, `title`, `picurl`, `bakcground_url`, `mp3`, `style`, `name`, `zfname`, `copy`, `info`, `status`) VALUES
(1, 'caspcu1403054302', 0, 5, '贺卡', '贺卡', 'http://114.215.198.83/tpl/static/attachment/background/view/2.jpg', 'http://114.215.198.83/tpl/static/attachment/background/view/6.jpg', 'http://114.215.198.83/tpl/static/attachment/music/default/1.mp3', 0, '', '', '', '贺卡贺卡贺卡贺卡贺卡贺卡贺卡', 0);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_home`
--

CREATE TABLE IF NOT EXISTS `gooraye_home` (
`id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL,
  `picurl` varchar(120) NOT NULL,
  `apiurl` varchar(150) NOT NULL,
  `homeurl` varchar(120) NOT NULL,
  `info` varchar(120) NOT NULL,
  `musicurl` varchar(180) NOT NULL DEFAULT '',
  `plugmenucolor` varchar(10) NOT NULL DEFAULT '',
  `copyright` varchar(200) NOT NULL DEFAULT '',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `radiogroup` mediumint(4) NOT NULL DEFAULT '0',
  `advancetpl` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `gooraye_home`
--

INSERT INTO `gooraye_home` (`id`, `token`, `title`, `picurl`, `apiurl`, `homeurl`, `info`, `musicurl`, `plugmenucolor`, `copyright`, `logo`, `radiogroup`, `advancetpl`) VALUES
(4, '', '', '', '', '', '', '', '', '', '', 10, 0),
(5, 'caspcu1403054302', '古睿官网 ', 'http://114.215.198.83//tpl/static/attachment/background/view/2.jpg', '', '', '古睿微信功能体验号', 'http://114.215.198.83//tpl/static/attachment/music/default/2.mp3', '#B30404', '© 绍兴古睿', 'http://114.215.198.83//tpl/static/attachment/icon/lovely/bookmark.png', 1, 0),
(6, 'ubddyd1402964682', '3g网站', 'http://114.215.198.83/uploads/u/ubddyd1402964682/thumb_53a965a88d654.jpg', '', '', '3g网站', '', '', '', 'http://114.215.198.83/uploads/u/ubddyd1402964682/thumb_53a965a88d654.jpg', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_home_background`
--

CREATE TABLE IF NOT EXISTS `gooraye_home_background` (
`id` int(10) NOT NULL,
  `token` varchar(60) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `taxis` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_host`
--

CREATE TABLE IF NOT EXISTS `gooraye_host` (
`id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL COMMENT '关键词',
  `title` varchar(50) NOT NULL COMMENT '商家名称',
  `address` varchar(50) NOT NULL COMMENT '商家地',
  `tel` varchar(13) NOT NULL COMMENT '商家电话',
  `tel2` varchar(13) NOT NULL COMMENT '手机号',
  `ppicurl` varchar(250) NOT NULL COMMENT '订房封面图片',
  `headpic` varchar(250) NOT NULL COMMENT '订单页头部图片',
  `name` varchar(50) NOT NULL COMMENT '文字描述',
  `sort` int(11) NOT NULL COMMENT '排序',
  `picurl` varchar(100) NOT NULL COMMENT '图片地址',
  `url` varchar(50) NOT NULL COMMENT '图片跳转地址以http',
  `info` text NOT NULL COMMENT '商家介绍：',
  `info2` text NOT NULL COMMENT '订房说明u',
  `creattime` int(11) NOT NULL COMMENT '创建日期'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='酒店商家设置' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `gooraye_host`
--

INSERT INTO `gooraye_host` (`id`, `token`, `keyword`, `title`, `address`, `tel`, `tel2`, `ppicurl`, `headpic`, `name`, `sort`, `picurl`, `url`, `info`, `info2`, `creattime`) VALUES
(3, 'ubddyd1402964682', '商家', '123', '', '0575-85060707', '18257567105', 'http://114.215.198.83/tpl/static/attachment/background/view/6.jpg', 'http://114.215.198.83/tpl/static/attachment/background/view/2.jpg', '', 0, '', '', '呵呵', '呵呵', 1403514642);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_host_list_add`
--

CREATE TABLE IF NOT EXISTS `gooraye_host_list_add` (
`id` int(10) unsigned NOT NULL,
  `hid` int(11) NOT NULL COMMENT '商家id',
  `token` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL COMMENT '房间类型',
  `typeinfo` varchar(100) NOT NULL COMMENT '简要说明',
  `price` decimal(10,2) NOT NULL COMMENT '原价：',
  `yhprice` decimal(10,2) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '文字描述',
  `picurl` varchar(110) NOT NULL COMMENT '图片地址',
  `url` varchar(100) NOT NULL COMMENT '图片跳转地址以http',
  `info` text NOT NULL COMMENT '配套设施'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='房间类型信息表' AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_host_order`
--

CREATE TABLE IF NOT EXISTS `gooraye_host_order` (
`id` int(10) unsigned NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `book_people` varchar(50) NOT NULL COMMENT '预订人',
  `tel` varchar(13) NOT NULL COMMENT '电话',
  `check_in` int(11) NOT NULL COMMENT '入住时间',
  `check_out` int(11) NOT NULL COMMENT '离开时间',
  `room_type` varchar(50) NOT NULL COMMENT '房间类型',
  `book_time` int(11) NOT NULL COMMENT '预订时间',
  `book_num` int(11) NOT NULL COMMENT '预订数量',
  `price` decimal(10,2) NOT NULL COMMENT ' 价格',
  `order_status` int(11) NOT NULL COMMENT '订单状态 1 成功,2 失败,3 未处理',
  `hid` int(11) NOT NULL COMMENT '订房商家id',
  `remarks` varchar(250) NOT NULL COMMENT '留言备注'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='订单管理' AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_hotels_house`
--

CREATE TABLE IF NOT EXISTS `gooraye_hotels_house` (
`id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(80) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `gooraye_hotels_house`
--

INSERT INTO `gooraye_hotels_house` (`id`, `cid`, `token`, `name`, `image`, `sid`, `note`) VALUES
(1, 3, 'ubddyd1402964682', '111', 'http://114.215.198.83/tpl/static/attachment/icon/lovely/cloud-check.png', 1, ''),
(2, 3, 'ubddyd1402964682', '222', 'http://114.215.198.83/tpl/static/attachment/icon/lovely/cloud-down.png', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_hotels_house_sort`
--

CREATE TABLE IF NOT EXISTS `gooraye_hotels_house_sort` (
`id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `vprice` float NOT NULL,
  `note` varchar(500) NOT NULL,
  `num` tinyint(1) unsigned NOT NULL,
  `houses` smallint(3) unsigned NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_hotels_house_sort`
--

INSERT INTO `gooraye_hotels_house_sort` (`id`, `cid`, `token`, `name`, `image`, `price`, `vprice`, `note`, `num`, `houses`) VALUES
(1, 3, 'ubddyd1402964682', '123', '', 122, 100, '好', 2, 2);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_hotels_order`
--

CREATE TABLE IF NOT EXISTS `gooraye_hotels_order` (
`id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `nums` smallint(3) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `time` int(11) NOT NULL,
  `startdate` int(8) unsigned NOT NULL,
  `enddate` int(8) unsigned NOT NULL,
  `paid` tinyint(1) unsigned NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `printed` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_img`
--

CREATE TABLE IF NOT EXISTS `gooraye_img` (
`id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `keyword` char(255) NOT NULL,
  `type` varchar(1) NOT NULL COMMENT '关键词匹配类型',
  `text` text NOT NULL COMMENT '简介',
  `classid` int(11) NOT NULL,
  `classname` varchar(60) NOT NULL,
  `pic` char(255) NOT NULL COMMENT '封面图片',
  `showpic` varchar(1) NOT NULL COMMENT '图片是否显示封面',
  `info` text NOT NULL COMMENT '图文详细内容',
  `url` char(255) NOT NULL COMMENT '图文外链地址',
  `createtime` varchar(13) NOT NULL,
  `uptatetime` varchar(13) NOT NULL,
  `click` int(11) NOT NULL,
  `token` char(30) NOT NULL,
  `title` varchar(60) NOT NULL,
  `usort` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='微信图文' AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `gooraye_img`
--

INSERT INTO `gooraye_img` (`id`, `uid`, `uname`, `keyword`, `type`, `text`, `classid`, `classname`, `pic`, `showpic`, `info`, `url`, `createtime`, `uptatetime`, `click`, `token`, `title`, `usort`) VALUES
(12, 8, 'xmf', '渠道代理', '2', '古睿 \r\n        你想到，我做到', 16, '渠道代理', 'http://114.215.198.83//tpl/static/attachment/focus/default/3.jpg', '1', '&lt;p class=&quot;p0&quot; style=&quot;text-align:left;background:#FFFFFF;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; style=&quot;text-align:justify;vertical-align:;&quot;&gt;\r\n	&lt;span style=&quot;font-family:NSimSun;font-size:14px;&quot;&gt;&amp;nbsp; &amp;nbsp; 古睿科技是浙江绍兴首家致力于移动端产品研究和自主开发的信息科技公司，&amp;nbsp;秉承互联网自由的风格，古睿科技坚持独特的服务理念，创新的运营模式，专注产品优化，不断完善移动端产品应用与营销系统，旨在为绍兴本地优质企业和商家提供最专业的移动营销解决方案。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; style=&quot;text-indent:21.0000pt;text-align:justify;vertical-align:;&quot;&gt;\r\n	&lt;span style=&quot;font-family:NSimSun;font-size:14px;&quot;&gt;&amp;nbsp;古睿的业务范围涉及移动网站开发、微信公众号的二次开发，APP设计与定制，移动互联网广告平台投放，以及PC端高端网页制作与网站升级。&lt;/span&gt; \r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p class=&quot;p0&quot; style=&quot;text-align:left;text-indent:21pt;background:#FFFFFF;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;br /&gt;', '', '1403060262', '1403601685', 45, 'caspcu1403054302', '渠道代理', 1),
(17, 8, 'xmf', '古睿文化', '2', '植根绍兴，面向整个互联网 ', 30, '关于我们', 'http://114.215.198.83//tpl/static/attachment/icon/colorful/2.png', '1', '&lt;p class=&quot;p0&quot;&gt;\r\n	&amp;nbsp; &amp;nbsp; 古睿秉承移动互联网自由的风格，相信移动互联网的发展法则不是你死我活，而是开发、合作共赢，凭借独特的服务理念，创新的运营模式，专注产品优化，致力于移动互联网营销系统的开发、移动终端广告推广以及推动移动互联网互动营销的发展。&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;业务范围涉及到微站开发、微信公众平台的代运营与服务，移动手机站制作与优化，专业级的&lt;span&gt;APP&lt;/span&gt;&lt;span&gt;设计与开发，移动互联网广告平台投放&lt;/span&gt;，&lt;span&gt;IT&lt;/span&gt;&lt;span&gt;服务外包以及&lt;/span&gt;&lt;span&gt;PC&lt;/span&gt;&lt;span&gt;端高端网页制作与网站升级，&lt;/span&gt;为企业培养核心用户、增加粘性、改善服务体验、提供移动互联网一体化的解决方案。\r\n&lt;/p&gt;', '', '1403073390', '1403601717', 7, 'caspcu1403054302', '古睿文化', 1);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_indent`
--

CREATE TABLE IF NOT EXISTS `gooraye_indent` (
`id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `gid` tinyint(2) NOT NULL,
  `month` mediumint(5) NOT NULL DEFAULT '0',
  `uname` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `info` int(11) NOT NULL,
  `indent_id` char(20) NOT NULL,
  `widtrade_no` varchar(20) NOT NULL,
  `price` float NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `gooraye_indent`
--

INSERT INTO `gooraye_indent` (`id`, `uid`, `gid`, `month`, `uname`, `title`, `info`, `indent_id`, `widtrade_no`, `price`, `create_time`, `status`) VALUES
(3, 7, 0, 0, 'hbd', '充值', 0, '7_1402964852', '', 200, 1402964852, 0),
(4, 7, 0, 0, 'hbd', '充值', 0, '7_1402964981', '', 200, 1402964981, 0);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_keyword`
--

CREATE TABLE IF NOT EXISTS `gooraye_keyword` (
`id` int(11) NOT NULL,
  `keyword` char(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `module` varchar(15) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- 转存表中的数据 `gooraye_keyword`
--

INSERT INTO `gooraye_keyword` (`id`, `keyword`, `pid`, `token`, `module`) VALUES
(22, 'h', 2, 'caspcu1403054302', 'Text'),
(23, '渠道代理', 12, 'caspcu1403054302', 'Img'),
(24, '语音回复', 1, 'caspcu1403054302', 'Voiceresponse'),
(25, 'dd', 3, 'caspcu1403054302', 'Text'),
(52, '投票1', 2, 'ubddyd1402964682', 'Vote'),
(30, '古睿文化', 17, 'caspcu1403054302', 'Img'),
(50, '投票', 1, 'ubddyd1402964682', 'Vote'),
(51, '大转盘', 4, 'caspcu1403054302', 'Lottery'),
(49, '恭喜', 1, 'ubddyd1402964682', 'Wedding'),
(67, '微喜帖', 2, 'caspcu1403054302', 'Wedding'),
(46, '水果达人', 3, 'caspcu1403054302', 'Lottery'),
(47, '360', 1, 'caspcu1403054302', 'Panorama'),
(48, '360', 2, 'ubddyd1402964682', 'Panorama'),
(45, '大转盘', 2, 'caspcu1403054302', 'Lottery'),
(44, '摇', 2, 'caspcu1403054302', 'Shake'),
(43, '微信墙', 2, 'caspcu1403054302', 'Wall'),
(42, '刮刮卡1', 1, 'caspcu1403054302', 'Lottery'),
(53, '呵呵', 1, 'ubddyd1402964682', 'Reservation'),
(54, '44', 1, 'ubddyd1402964682', 'Carowner'),
(55, '汽车', 1, 'ubddyd1402964682', 'Carset'),
(56, '123', 2, 'ubddyd1402964682', 'Reservation'),
(57, '楼盘', 1, 'ubddyd1402964682', 'Estate'),
(58, '食谱', 1, 'ubddyd1402964682', 'Recipe'),
(59, '学校', 1, 'ubddyd1402964682', 'Schoolset'),
(60, '微医疗', 2, 'ubddyd1402964682', 'medicalSet'),
(61, '123', 3, 'ubddyd1402964682', 'Selfform'),
(62, '商家', 3, 'ubddyd1402964682', 'Host'),
(63, '88', 4, 'caspcu1403054302', 'Product'),
(64, '优惠券', 5, 'caspcu1403054302', 'Lottery'),
(65, '砸金蛋', 6, 'caspcu1403054302', 'Lottery'),
(66, '贺卡', 1, 'caspcu1403054302', 'Greeting_card');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_leave`
--

CREATE TABLE IF NOT EXISTS `gooraye_leave` (
`id` int(11) unsigned NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `token` varchar(60) NOT NULL,
  `time` varchar(10) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=269 ;

--
-- 转存表中的数据 `gooraye_leave`
--

INSERT INTO `gooraye_leave` (`id`, `wecha_id`, `checked`, `name`, `message`, `token`, `time`) VALUES
(268, 'oqMIVt0XES04VNcYVGqLUuCamF3s', 1, '梦', '你好，小古睿', 'caspcu1403054302', '1403082244');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_links`
--

CREATE TABLE IF NOT EXISTS `gooraye_links` (
`id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_lottery`
--

CREATE TABLE IF NOT EXISTS `gooraye_lottery` (
`id` int(11) NOT NULL,
  `joinnum` int(11) NOT NULL COMMENT '参与人数',
  `click` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `starpicurl` varchar(100) NOT NULL COMMENT '填写活动开始图片网址',
  `title` varchar(60) NOT NULL COMMENT '活动名称',
  `txt` varchar(60) NOT NULL COMMENT '用户输入兑奖时候的显示信息',
  `sttxt` varchar(200) NOT NULL COMMENT '简介',
  `statdate` int(11) NOT NULL COMMENT '活动开始时间',
  `enddate` int(11) NOT NULL COMMENT '活动结束时间',
  `info` varchar(200) NOT NULL COMMENT '活动说明',
  `aginfo` varchar(200) NOT NULL COMMENT '重复抽奖回复',
  `endtite` varchar(60) NOT NULL COMMENT '活动结束公告主题',
  `endpicurl` varchar(100) NOT NULL,
  `endinfo` varchar(60) NOT NULL,
  `fist` varchar(50) NOT NULL COMMENT '一等奖奖品设置',
  `fistnums` int(4) NOT NULL COMMENT '一等奖奖品数量',
  `fistlucknums` int(1) NOT NULL COMMENT '一等奖中奖号码',
  `second` varchar(50) NOT NULL COMMENT '二等奖奖品设置',
  `type` tinyint(1) NOT NULL,
  `secondnums` int(4) NOT NULL,
  `secondlucknums` int(1) NOT NULL,
  `third` varchar(50) NOT NULL,
  `thirdnums` int(4) NOT NULL,
  `thirdlucknums` int(1) NOT NULL,
  `allpeople` int(11) NOT NULL,
  `canrqnums` int(2) NOT NULL COMMENT '个人限制抽奖次数',
  `parssword` int(15) NOT NULL,
  `renamesn` varchar(50) NOT NULL DEFAULT '',
  `renametel` varchar(60) NOT NULL,
  `displayjpnums` int(1) NOT NULL,
  `createtime` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `four` varchar(50) NOT NULL,
  `fournums` int(11) NOT NULL,
  `fourlucknums` int(11) NOT NULL,
  `five` varchar(50) NOT NULL,
  `fivenums` int(11) NOT NULL,
  `fivelucknums` int(11) NOT NULL,
  `six` varchar(50) NOT NULL COMMENT '六等奖',
  `sixnums` int(11) NOT NULL,
  `sixlucknums` int(11) NOT NULL,
  `zjpic` varchar(150) NOT NULL DEFAULT '',
  `daynums` mediumint(4) NOT NULL DEFAULT '0',
  `maxgetprizenum` mediumint(4) NOT NULL DEFAULT '1',
  `needreg` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `gooraye_lottery`
--

INSERT INTO `gooraye_lottery` (`id`, `joinnum`, `click`, `token`, `keyword`, `starpicurl`, `title`, `txt`, `sttxt`, `statdate`, `enddate`, `info`, `aginfo`, `endtite`, `endpicurl`, `endinfo`, `fist`, `fistnums`, `fistlucknums`, `second`, `type`, `secondnums`, `secondlucknums`, `third`, `thirdnums`, `thirdlucknums`, `allpeople`, `canrqnums`, `parssword`, `renamesn`, `renametel`, `displayjpnums`, `createtime`, `status`, `four`, `fournums`, `fourlucknums`, `five`, `fivenums`, `fivelucknums`, `six`, `sixnums`, `sixlucknums`, `zjpic`, `daynums`, `maxgetprizenum`, `needreg`) VALUES
(1, 4, 0, 'caspcu1403054302', '刮刮卡1', 'http://114.215.198.83//tpl/User/default/common/images/img/activity-scratch-card-start.jpg', '刮刮卡活动开始了', '兑奖请联系我们，电话18257567105', '恭喜您中奖了', 1403107200, 1405699200, '亲，请点击进入刮刮卡抽奖活动页面，祝您好运哦！', '', '刮刮卡活动已经结束了', 'http://114.215.198.83//tpl/User/default/common/images/img/activity-scratch-card-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '100元', 1, 0, '', 2, 0, 0, '', 0, 1, 1000000, 5, 3306, '', '', 0, 0, 1, '', 0, 0, '', 0, 0, '', 0, 0, '', 1, 1, 0),
(6, 0, 0, 'caspcu1403054302', '砸金蛋', 'http://114.215.198.83/tpl/static/goldenEgg/user/start.jpg', '砸金蛋活动开始了', '兑奖请联系我们，电话138********', '中奖了', 1403539200, 1406131200, '亲，请点击进入砸金蛋活动页面，祝您好运哦！', '亲，继续努力哦！', '砸金蛋活动已经结束了', 'http://114.215.198.83/tpl/static/goldenEgg/user/end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', 'iphone6', 2, 0, '', 5, 0, 0, '', 0, 0, 2147483647, 0, 3306, '', '', 0, 0, 1, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 1, 0),
(2, 3, 0, 'caspcu1403054302', '大转盘', 'http://114.215.198.83/tpl/Wap/default/common/css/guajiang/images/activity-lottery-start.jpg', '幸运大转盘活动开始了', '兑奖请联系我们，电话18257567105', '恭喜您中奖了', 1403280000, 1405872000, '亲，请点击进入大转盘抽奖活动页面，祝您好运哦！', '亲，继续努力哦！', '幸运大转盘活动已经结束了', 'http://114.215.198.83/tpl/Wap/default/common/css/guajiang/images/activity-lottery-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', 'iphone6', 5, 0, '32', 1, 1, 0, '', 0, 0, 10, 4, 123456, '', '', 0, 0, 1, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 1, 0),
(3, 1, 0, 'caspcu1403054302', '水果达人', 'http://114.215.198.83/tpl/static/luckyFruit/user/start.jpg', '水果达人活动开始了', '兑奖请联系我们，电话138********', '', 1403280000, 1405872000, '亲，请点击进入水果达人活动页面，祝您好运哦！', '亲，继续努力哦！', '水果达人活动已经结束了', 'http://114.215.198.83/tpl/static/luckyFruit/user/end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', 'iphone6', 1, 0, '', 4, 0, 0, '', 0, 0, 0, 6, 0, '', '', 0, 0, 1, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 1, 0),
(4, 1, 0, 'caspcu1403054302', '大转盘', 'http://114.215.198.83/tpl/Wap/default/common/css/guajiang/images/activity-lottery-start.jpg', '幸运大转盘活动开始了', '兑奖请联系我们，电话138********', 'hh1', 1403452800, 1406044800, '亲，请点击进入大转盘抽奖活动页面，祝您好运哦！', '亲，继续努力哦！', '幸运大转盘活动已经结束了', 'http://114.215.198.83/tpl/Wap/default/common/css/guajiang/images/activity-lottery-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '1111111元', 4, 0, '', 1, 0, 0, '', 0, 0, 122222222, 5, 3306, '', '', 0, 0, 1, '', 0, 0, '', 0, 0, '', 0, 0, '', 3, 1, 0),
(5, 5, 0, 'caspcu1403054302', '优惠券', 'http://114.215.198.83/tpl/Wap/default/common/css/guajiang/images/activity-coupon-start.jpg', '优惠券', '', '优惠券优惠券优惠券优惠券', 1403539200, 1406131200, '优惠券优惠券优惠券优惠券', '优惠券优惠券优惠券优惠券优惠券', '优惠券结束', 'http://114.215.198.83/tpl/Wap/default/common/css/guajiang/images/activity-coupon-end.jpg', '优惠券优惠券优惠券优惠券', 'iphone6', 2, 0, '', 3, 0, 0, '', 0, 0, 1222222, 5, 3306, '', '', 0, 0, 1, '', 0, 0, '', 0, 0, '', 0, 0, 'http://114.215.198.83/tpl/Wap/default/common/css/guajiang/images/activity-coupon-winning.jpg', 5, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_lottery_cheat`
--

CREATE TABLE IF NOT EXISTS `gooraye_lottery_cheat` (
`id` int(10) NOT NULL,
  `lid` int(10) NOT NULL DEFAULT '0',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `prizetype` mediumint(4) NOT NULL DEFAULT '0',
  `intro` varchar(60) NOT NULL DEFAULT '',
  `code` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_lottery_record`
--

CREATE TABLE IF NOT EXISTS `gooraye_lottery_record` (
`id` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `usenums` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户使用次数',
  `wecha_id` varchar(60) NOT NULL COMMENT '微信唯一识别码',
  `token` varchar(30) NOT NULL,
  `islottery` int(1) NOT NULL COMMENT '是否中奖',
  `wecha_name` varchar(60) NOT NULL COMMENT '微信号',
  `phone` varchar(15) NOT NULL,
  `sn` varchar(13) NOT NULL COMMENT '中奖后序列号',
  `time` int(11) NOT NULL,
  `prize` varchar(50) NOT NULL DEFAULT '' COMMENT '已中奖项',
  `sendstutas` int(11) NOT NULL DEFAULT '0',
  `sendtime` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `gooraye_lottery_record`
--

INSERT INTO `gooraye_lottery_record` (`id`, `lid`, `usenums`, `wecha_id`, `token`, `islottery`, `wecha_name`, `phone`, `sn`, `time`, `prize`, `sendstutas`, `sendtime`) VALUES
(1, 1, 3, 'oqMIVt0XES04VNcYVGqLUuCamF3s', 'caspcu1403054302', 0, '', '', '', 1403145424, '7', 0, 0),
(2, 1, 3, 'oqMIVt0XES04VNcYVGqLUuCamF3s', 'caspcu1403054302', 0, '', '', '', 1403145458, '7', 0, 0),
(3, 1, 3, 'oqMIVt0XES04VNcYVGqLUuCamF3s', 'caspcu1403054302', 1, '', '', '53a24e970e61b', 1403145879, '3', 0, 0),
(4, 1, 1, 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', 'caspcu1403054302', 0, '', '', '', 1403345523, '7', 0, 0),
(5, 2, 3, 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', 'caspcu1403054302', 0, '', '', '', 1403345648, '7', 0, 0),
(6, 2, 3, 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', 'caspcu1403054302', 0, '', '', '', 1403345674, '7', 0, 0),
(7, 2, 3, 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', 'caspcu1403054302', 0, '', '', '', 1403345693, '7', 0, 0),
(8, 4, 1, 'oqMIVt0XES04VNcYVGqLUuCamF3s', 'caspcu1403054302', 0, '', '', '', 1403578237, '7', 0, 0),
(9, 5, 5, 'oqMIVt0XES04VNcYVGqLUuCamF3s', 'caspcu1403054302', 0, '', '', '', 1403578374, '7', 0, 0),
(10, 5, 5, 'oqMIVt0XES04VNcYVGqLUuCamF3s', 'caspcu1403054302', 0, '', '', '', 1403578426, '7', 0, 0),
(11, 5, 4, 'oqMIVt0XES04VNcYVGqLUuCamF3s', 'caspcu1403054302', 0, '', '', '', 1403578426, '7', 0, 0),
(12, 5, 5, 'oqMIVt0XES04VNcYVGqLUuCamF3s', 'caspcu1403054302', 0, '', '', '', 1403578445, '7', 0, 0),
(13, 5, 5, 'oqMIVt0XES04VNcYVGqLUuCamF3s', 'caspcu1403054302', 0, '', '', '', 1403578449, '7', 0, 0),
(14, 3, 1, 'oqMIVt0XES04VNcYVGqLUuCamF3s', 'caspcu1403054302', 0, '', '', '', 1403578680, '7', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_medical_set`
--

CREATE TABLE IF NOT EXISTS `gooraye_medical_set` (
`id` int(11) unsigned NOT NULL,
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `head_url` varchar(200) NOT NULL DEFAULT '',
  `album_id` int(11) DEFAULT NULL,
  `menu1` varchar(20) NOT NULL DEFAULT '',
  `menu2` varchar(20) NOT NULL DEFAULT '',
  `menu3` varchar(20) NOT NULL DEFAULT '',
  `menu4` varchar(20) NOT NULL DEFAULT '',
  `menu5` varchar(20) NOT NULL DEFAULT '',
  `menu6` varchar(20) NOT NULL DEFAULT '',
  `menu7` varchar(20) NOT NULL DEFAULT '',
  `menu8` varchar(20) NOT NULL DEFAULT '',
  `hotfocus_id` int(11) NOT NULL,
  `experts_id` int(11) NOT NULL,
  `ceem_id` int(11) NOT NULL,
  `Rcase_id` int(11) NOT NULL,
  `technology_id` int(11) NOT NULL,
  `drug_id` int(11) NOT NULL,
  `evants_id` int(11) NOT NULL,
  `video` text NOT NULL,
  `symptoms_id` int(11) NOT NULL,
  `info` char(200) NOT NULL DEFAULT '',
  `path` varchar(3000) DEFAULT '0',
  `tpid` tinyint(4) DEFAULT '1',
  `conttpid` tinyint(4) DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `gooraye_medical_set`
--

INSERT INTO `gooraye_medical_set` (`id`, `keyword`, `title`, `token`, `head_url`, `album_id`, `menu1`, `menu2`, `menu3`, `menu4`, `menu5`, `menu6`, `menu7`, `menu8`, `hotfocus_id`, `experts_id`, `ceem_id`, `Rcase_id`, `technology_id`, `drug_id`, `evants_id`, `video`, `symptoms_id`, `info`, `path`, `tpid`, `conttpid`) VALUES
(2, '微医疗', '111', 'ubddyd1402964682', 'http://114.215.198.83/tpl/static/attachment/focus/default/6.jpg', 0, '医院简介', '热点聚焦', '医院专家', '尖端设备', '康复案例', '先进技术', '研发药物', '就医指南', 0, 0, 0, 0, 0, 0, 0, '', 0, '11111111111111111111111111111111111111111', '0', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_medical_user`
--

CREATE TABLE IF NOT EXISTS `gooraye_medical_user` (
`iid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `rid` int(11) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT '',
  `truename` varchar(50) NOT NULL DEFAULT '',
  `utel` char(13) NOT NULL,
  `dateline` varchar(50) NOT NULL,
  `sex` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `txt33` varchar(50) NOT NULL DEFAULT '',
  `txt44` varchar(50) NOT NULL DEFAULT '',
  `txt55` varchar(50) NOT NULL DEFAULT '',
  `yyks` varchar(50) NOT NULL DEFAULT '',
  `yyzj` varchar(50) NOT NULL DEFAULT '',
  `yybz` varchar(50) NOT NULL DEFAULT '',
  `yy4` varchar(50) NOT NULL DEFAULT '',
  `yy5` varchar(50) NOT NULL DEFAULT '',
  `uinfo` varchar(50) NOT NULL DEFAULT '',
  `kfinfo` varchar(100) NOT NULL DEFAULT '',
  `remate` int(10) NOT NULL DEFAULT '0',
  `booktime` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_member`
--

CREATE TABLE IF NOT EXISTS `gooraye_member` (
`id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `isopen` int(1) NOT NULL,
  `homepic` varchar(100) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_member_card_contact`
--

CREATE TABLE IF NOT EXISTS `gooraye_member_card_contact` (
`id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `sort` tinyint(1) NOT NULL,
  `info` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_member_card_coupon`
--

CREATE TABLE IF NOT EXISTS `gooraye_member_card_coupon` (
`id` int(11) NOT NULL,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL,
  `people` int(3) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_member_card_coupon`
--

INSERT INTO `gooraye_member_card_coupon` (`id`, `cardid`, `token`, `title`, `group`, `type`, `price`, `people`, `statdate`, `enddate`, `info`, `usetime`, `create_time`) VALUES
(1, 4, 'caspcu1403054302', '优惠券', 1, 0, 10, 1, 1403539200, 1404403200, '呵呵', 0, 1403579960);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_member_card_create`
--

CREATE TABLE IF NOT EXISTS `gooraye_member_card_create` (
`id` int(11) NOT NULL,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `number` varchar(20) NOT NULL,
  `wecha_id` varchar(60) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1209 ;

--
-- 转存表中的数据 `gooraye_member_card_create`
--

INSERT INTO `gooraye_member_card_create` (`id`, `cardid`, `token`, `number`, `wecha_id`) VALUES
(1098, 4, 'caspcu1403054302', '111111111111112', 'oqMIVt0XES04VNcYVGqLUuCamF3s'),
(1099, 4, 'caspcu1403054302', '111111111111113', ''),
(1100, 4, 'caspcu1403054302', '111111111111114', ''),
(1101, 4, 'caspcu1403054302', '111111111111115', ''),
(1102, 4, 'caspcu1403054302', '111111111111116', ''),
(1103, 4, 'caspcu1403054302', '111111111111117', ''),
(1104, 4, 'caspcu1403054302', '111111111111118', ''),
(1105, 4, 'caspcu1403054302', '111111111111119', ''),
(1106, 4, 'caspcu1403054302', '111111111111120', ''),
(1107, 4, 'caspcu1403054302', '111111111111121', ''),
(1108, 4, 'caspcu1403054302', '111111111111122', ''),
(1109, 4, 'caspcu1403054302', '111111111111123', ''),
(1110, 4, 'caspcu1403054302', '111111111111124', ''),
(1111, 4, 'caspcu1403054302', '111111111111125', ''),
(1112, 4, 'caspcu1403054302', '111111111111126', ''),
(1113, 4, 'caspcu1403054302', '111111111111127', ''),
(1114, 4, 'caspcu1403054302', '111111111111128', ''),
(1115, 4, 'caspcu1403054302', '111111111111129', ''),
(1116, 4, 'caspcu1403054302', '111111111111130', ''),
(1117, 4, 'caspcu1403054302', '111111111111131', ''),
(1118, 4, 'caspcu1403054302', '111111111111132', ''),
(1119, 4, 'caspcu1403054302', '111111111111133', ''),
(1120, 4, 'caspcu1403054302', '111111111111134', ''),
(1121, 4, 'caspcu1403054302', '111111111111135', ''),
(1122, 4, 'caspcu1403054302', '111111111111136', ''),
(1123, 4, 'caspcu1403054302', '111111111111137', ''),
(1124, 4, 'caspcu1403054302', '111111111111138', ''),
(1125, 4, 'caspcu1403054302', '111111111111139', ''),
(1126, 4, 'caspcu1403054302', '111111111111140', ''),
(1127, 4, 'caspcu1403054302', '111111111111141', ''),
(1128, 4, 'caspcu1403054302', '111111111111142', ''),
(1129, 4, 'caspcu1403054302', '111111111111143', ''),
(1130, 4, 'caspcu1403054302', '111111111111144', ''),
(1131, 4, 'caspcu1403054302', '111111111111145', ''),
(1132, 4, 'caspcu1403054302', '111111111111146', ''),
(1133, 4, 'caspcu1403054302', '111111111111147', ''),
(1134, 4, 'caspcu1403054302', '111111111111148', ''),
(1135, 4, 'caspcu1403054302', '111111111111149', ''),
(1136, 4, 'caspcu1403054302', '111111111111150', ''),
(1137, 4, 'caspcu1403054302', '111111111111151', ''),
(1138, 4, 'caspcu1403054302', '111111111111152', ''),
(1139, 4, 'caspcu1403054302', '111111111111153', ''),
(1140, 4, 'caspcu1403054302', '111111111111154', ''),
(1141, 4, 'caspcu1403054302', '111111111111155', ''),
(1142, 4, 'caspcu1403054302', '111111111111156', ''),
(1143, 4, 'caspcu1403054302', '111111111111157', ''),
(1144, 4, 'caspcu1403054302', '111111111111158', ''),
(1145, 4, 'caspcu1403054302', '111111111111159', ''),
(1146, 4, 'caspcu1403054302', '111111111111160', ''),
(1147, 4, 'caspcu1403054302', '111111111111161', ''),
(1148, 4, 'caspcu1403054302', '111111111111162', ''),
(1149, 4, 'caspcu1403054302', '111111111111163', ''),
(1150, 4, 'caspcu1403054302', '111111111111164', ''),
(1151, 4, 'caspcu1403054302', '111111111111165', ''),
(1152, 4, 'caspcu1403054302', '111111111111166', ''),
(1153, 4, 'caspcu1403054302', '111111111111167', ''),
(1154, 4, 'caspcu1403054302', '111111111111168', ''),
(1155, 4, 'caspcu1403054302', '111111111111169', ''),
(1156, 4, 'caspcu1403054302', '111111111111170', ''),
(1157, 4, 'caspcu1403054302', '111111111111171', ''),
(1158, 4, 'caspcu1403054302', '111111111111172', ''),
(1159, 4, 'caspcu1403054302', '111111111111173', ''),
(1160, 4, 'caspcu1403054302', '111111111111174', ''),
(1161, 4, 'caspcu1403054302', '111111111111175', ''),
(1162, 4, 'caspcu1403054302', '111111111111176', ''),
(1163, 4, 'caspcu1403054302', '111111111111177', ''),
(1164, 4, 'caspcu1403054302', '111111111111178', ''),
(1165, 4, 'caspcu1403054302', '111111111111179', ''),
(1166, 4, 'caspcu1403054302', '111111111111180', ''),
(1167, 4, 'caspcu1403054302', '111111111111181', ''),
(1168, 4, 'caspcu1403054302', '111111111111182', ''),
(1169, 4, 'caspcu1403054302', '111111111111183', ''),
(1170, 4, 'caspcu1403054302', '111111111111184', ''),
(1171, 4, 'caspcu1403054302', '111111111111185', ''),
(1172, 4, 'caspcu1403054302', '111111111111186', ''),
(1173, 4, 'caspcu1403054302', '111111111111187', ''),
(1174, 4, 'caspcu1403054302', '111111111111188', ''),
(1175, 4, 'caspcu1403054302', '111111111111189', ''),
(1176, 4, 'caspcu1403054302', '111111111111190', ''),
(1177, 4, 'caspcu1403054302', '111111111111191', ''),
(1178, 4, 'caspcu1403054302', '111111111111192', ''),
(1179, 4, 'caspcu1403054302', '111111111111193', ''),
(1180, 4, 'caspcu1403054302', '111111111111194', ''),
(1181, 4, 'caspcu1403054302', '111111111111195', ''),
(1182, 4, 'caspcu1403054302', '111111111111196', ''),
(1183, 4, 'caspcu1403054302', '111111111111197', ''),
(1184, 4, 'caspcu1403054302', '111111111111198', ''),
(1185, 4, 'caspcu1403054302', '111111111111199', ''),
(1186, 4, 'caspcu1403054302', '111111111111200', ''),
(1187, 4, 'caspcu1403054302', '111111111111201', ''),
(1188, 4, 'caspcu1403054302', '111111111111202', ''),
(1189, 4, 'caspcu1403054302', '111111111111203', ''),
(1190, 4, 'caspcu1403054302', '111111111111204', ''),
(1191, 4, 'caspcu1403054302', '111111111111205', ''),
(1192, 4, 'caspcu1403054302', '111111111111206', ''),
(1193, 4, 'caspcu1403054302', '111111111111207', ''),
(1194, 4, 'caspcu1403054302', '111111111111208', ''),
(1195, 4, 'caspcu1403054302', '111111111111209', ''),
(1196, 4, 'caspcu1403054302', '111111111111210', ''),
(1197, 4, 'caspcu1403054302', '111111111111211', ''),
(1198, 4, 'caspcu1403054302', '111111111111212', ''),
(1199, 4, 'caspcu1403054302', '111111111111213', ''),
(1200, 4, 'caspcu1403054302', '111111111111214', ''),
(1201, 4, 'caspcu1403054302', '111111111111215', ''),
(1202, 4, 'caspcu1403054302', '111111111111216', ''),
(1203, 4, 'caspcu1403054302', '111111111111217', ''),
(1204, 4, 'caspcu1403054302', '111111111111218', ''),
(1205, 4, 'caspcu1403054302', '111111111111219', ''),
(1206, 4, 'caspcu1403054302', '111111111111220', ''),
(1207, 4, 'caspcu1403054302', '111111111111221', ''),
(1208, 4, 'caspcu1403054302', '111111111111222', '');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_member_card_exchange`
--

CREATE TABLE IF NOT EXISTS `gooraye_member_card_exchange` (
`id` int(11) NOT NULL,
  `cardid` mediumint(8) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `everyday` tinyint(4) NOT NULL,
  `continuation` tinyint(4) NOT NULL,
  `reward` tinyint(4) NOT NULL,
  `cardinfo` text NOT NULL,
  `cardinfo2` text NOT NULL,
  `create_time` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `gooraye_member_card_exchange`
--

INSERT INTO `gooraye_member_card_exchange` (`id`, `cardid`, `token`, `everyday`, `continuation`, `reward`, `cardinfo`, `cardinfo2`, `create_time`) VALUES
(2, 4, 'caspcu1403054302', 12, 0, 23, '呵呵', '呵呵', 1403579845);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_member_card_info`
--

CREATE TABLE IF NOT EXISTS `gooraye_member_card_info` (
`id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `description` varchar(12) NOT NULL,
  `class` tinyint(1) NOT NULL,
  `password` varchar(11) NOT NULL,
  `crate_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_member_card_integral`
--

CREATE TABLE IF NOT EXISTS `gooraye_member_card_integral` (
`id` int(11) NOT NULL,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `integral` int(8) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_member_card_integral`
--

INSERT INTO `gooraye_member_card_integral` (`id`, `cardid`, `token`, `title`, `integral`, `statdate`, `enddate`, `info`, `usetime`, `create_time`) VALUES
(1, 4, 'caspcu1403054302', '礼品券', 10, 1403579984, 1404443984, '呵呵', 0, 1403579995);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_member_card_notice`
--

CREATE TABLE IF NOT EXISTS `gooraye_member_card_notice` (
`id` int(10) NOT NULL,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `endtime` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_member_card_notice`
--

INSERT INTO `gooraye_member_card_notice` (`id`, `cardid`, `title`, `content`, `endtime`, `time`) VALUES
(1, 4, '通知', '呵呵', 1404489599, 1403579867);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_member_card_set`
--

CREATE TABLE IF NOT EXISTS `gooraye_member_card_set` (
`id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `cardname` varchar(60) NOT NULL,
  `miniscore` int(10) NOT NULL DEFAULT '0',
  `logo` varchar(200) NOT NULL,
  `bg` varchar(100) NOT NULL,
  `diybg` varchar(200) NOT NULL,
  `msg` varchar(100) NOT NULL,
  `numbercolor` varchar(10) NOT NULL,
  `vipnamecolor` varchar(10) NOT NULL,
  `Lastmsg` varchar(100) NOT NULL,
  `vip` varchar(100) NOT NULL,
  `qiandao` varchar(100) NOT NULL,
  `shopping` varchar(100) NOT NULL,
  `memberinfo` varchar(100) NOT NULL,
  `membermsg` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `gooraye_member_card_set`
--

INSERT INTO `gooraye_member_card_set` (`id`, `token`, `cardname`, `miniscore`, `logo`, `bg`, `diybg`, `msg`, `numbercolor`, `vipnamecolor`, `Lastmsg`, `vip`, `qiandao`, `shopping`, `memberinfo`, `membermsg`, `contact`, `create_time`) VALUES
(4, 'caspcu1403054302', '微通汇微信营销系统会员卡', 0, '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg15.png', '/tpl/User/default/common/images/card/card_bg17.png', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', 1403579744);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_member_card_sign`
--

CREATE TABLE IF NOT EXISTS `gooraye_member_card_sign` (
  `id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `sign_time` int(11) NOT NULL,
  `is_sign` int(11) NOT NULL,
  `score_type` int(11) NOT NULL,
  `expense` int(11) NOT NULL,
  `sell_expense` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_member_card_use_record`
--

CREATE TABLE IF NOT EXISTS `gooraye_member_card_use_record` (
`id` int(10) NOT NULL,
  `itemid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `staffid` int(10) NOT NULL DEFAULT '0',
  `cat` smallint(4) NOT NULL DEFAULT '0',
  `expense` mediumint(4) NOT NULL DEFAULT '0',
  `score` mediumint(4) NOT NULL DEFAULT '0',
  `usecount` mediumint(4) NOT NULL DEFAULT '1',
  `time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_member_card_vip`
--

CREATE TABLE IF NOT EXISTS `gooraye_member_card_vip` (
`id` int(11) NOT NULL,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` varchar(200) NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `gooraye_member_card_vip`
--

INSERT INTO `gooraye_member_card_vip` (`id`, `cardid`, `token`, `title`, `group`, `type`, `statdate`, `enddate`, `info`, `usetime`, `create_time`) VALUES
(1, 4, 'caspcu1403054302', '特权', 0, 1, 0, 0, '呵呵', 0, 1403579915),
(2, 4, 'caspcu1403054302', '特权', 0, 1, 0, 0, '呵呵', 0, 1403579915);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_moopha_article`
--

CREATE TABLE IF NOT EXISTS `gooraye_moopha_article` (
`id` int(10) NOT NULL,
  `channel_id` int(10) NOT NULL,
  `token` varchar(50) NOT NULL,
  `site` int(4) NOT NULL DEFAULT '1',
  `title` varchar(200) NOT NULL,
  `titles` varchar(400) NOT NULL DEFAULT '',
  `subtitle` varchar(200) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `externallink` tinyint(1) NOT NULL DEFAULT '0',
  `thumb` varchar(100) DEFAULT NULL,
  `content` longtext,
  `intro` varchar(2000) NOT NULL,
  `author` varchar(20) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `keywords` varchar(300) DEFAULT NULL,
  `uid` varchar(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  `last_update` int(10) NOT NULL,
  `viewcount` int(10) NOT NULL DEFAULT '0',
  `template` varchar(50) DEFAULT NULL,
  `pagecount` tinyint(2) NOT NULL DEFAULT '1',
  `disagree` int(10) NOT NULL DEFAULT '0',
  `cancomment` tinyint(1) NOT NULL DEFAULT '1',
  `commentcount` int(10) NOT NULL DEFAULT '0',
  `agree` int(10) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `lastcreate` int(10) NOT NULL DEFAULT '1400000000',
  `sourcetype` smallint(2) NOT NULL DEFAULT '0',
  `ex` tinyint(1) DEFAULT '0',
  `pubed` tinyint(1) NOT NULL DEFAULT '1',
  `geoid` mediumint(6) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_moopha_attachement`
--

CREATE TABLE IF NOT EXISTS `gooraye_moopha_attachement` (
  `url` varchar(150) NOT NULL DEFAULT '',
  `pubid` smallint(3) NOT NULL DEFAULT '1',
  `filetype` varchar(10) NOT NULL DEFAULT 'picture',
  `cat` varchar(20) NOT NULL DEFAULT '',
  `catid` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_moopha_channel`
--

CREATE TABLE IF NOT EXISTS `gooraye_moopha_channel` (
`id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `shortname` varchar(50) NOT NULL DEFAULT '',
  `isnav` tinyint(1) NOT NULL DEFAULT '1',
  `channeltype` tinyint(1) NOT NULL DEFAULT '1',
  `cindex` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL,
  `externallink` tinyint(1) NOT NULL DEFAULT '0',
  `des` mediumtext NOT NULL,
  `thumb` varchar(100) DEFAULT NULL,
  `metatitle` varchar(100) DEFAULT NULL,
  `metakeyword` varchar(100) DEFAULT NULL,
  `metades` varchar(200) DEFAULT NULL,
  `thumbwidth` int(4) NOT NULL,
  `thumbheight` int(4) NOT NULL,
  `thumb2width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb2height` mediumint(4) NOT NULL DEFAULT '0',
  `thumb3width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb3height` mediumint(4) NOT NULL DEFAULT '0',
  `thumb4width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb4height` mediumint(4) NOT NULL DEFAULT '0',
  `parentid` int(10) NOT NULL DEFAULT '0',
  `channeltemplate` int(10) DEFAULT '1',
  `contenttemplate` int(10) DEFAULT '1',
  `autotype` varchar(10) NOT NULL DEFAULT '',
  `ex` tinyint(1) NOT NULL DEFAULT '0',
  `iscity` tinyint(1) NOT NULL DEFAULT '0',
  `site` int(4) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `lastcreate` int(10) NOT NULL DEFAULT '1400000000',
  `pagesize` smallint(3) NOT NULL DEFAULT '30',
  `specialid` mediumint(4) NOT NULL DEFAULT '0',
  `homepicturechannel` tinyint(1) NOT NULL DEFAULT '0',
  `hometextchannel` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_moopha_channel_contentattribute`
--

CREATE TABLE IF NOT EXISTS `gooraye_moopha_channel_contentattribute` (
  `channelid` int(4) NOT NULL,
  `attributeid` int(4) NOT NULL,
  `taxis` int(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_moopha_keywords`
--

CREATE TABLE IF NOT EXISTS `gooraye_moopha_keywords` (
`id` mediumint(4) NOT NULL,
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `link` varchar(150) NOT NULL DEFAULT '',
  `title` varchar(150) NOT NULL DEFAULT '',
  `target` varchar(15) NOT NULL DEFAULT '_blank',
  `time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_moopha_picture`
--

CREATE TABLE IF NOT EXISTS `gooraye_moopha_picture` (
`id` int(10) NOT NULL,
  `contentid` int(10) NOT NULL,
  `url` varchar(100) NOT NULL,
  `intro` text NOT NULL,
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_moopha_site`
--

CREATE TABLE IF NOT EXISTS `gooraye_moopha_site` (
`id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `intro` varchar(600) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `logourl` varchar(120) NOT NULL DEFAULT '',
  `siteindex` varchar(50) NOT NULL,
  `taxis` int(4) NOT NULL,
  `main` int(1) NOT NULL,
  `abspath` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(100) DEFAULT NULL,
  `statisticcode` varchar(600) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_moopha_template`
--

CREATE TABLE IF NOT EXISTS `gooraye_moopha_template` (
`id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `path` varchar(200) NOT NULL,
  `generate_path` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1-index,2-channel,3-template,4-singlepage',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `createhtml` tinyint(1) NOT NULL DEFAULT '1',
  `site` int(4) NOT NULL,
  `time` int(10) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_moopha_user`
--

CREATE TABLE IF NOT EXISTS `gooraye_moopha_user` (
`uid` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `password` char(32) NOT NULL,
  `salt` char(6) NOT NULL,
  `mp` char(11) DEFAULT NULL,
  `qq` varchar(15) DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `regip` varchar(30) DEFAULT NULL,
  `regtime` int(10) DEFAULT NULL,
  `lastloginip` varchar(30) DEFAULT NULL,
  `lastlogintime` int(10) DEFAULT NULL,
  `time` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_msg`
--

CREATE TABLE IF NOT EXISTS `gooraye_msg` (
`id` int(5) NOT NULL,
  `username` varchar(60) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `qq` int(11) NOT NULL,
  `domain` varchar(60) NOT NULL,
  `time` int(11) NOT NULL,
  `price` int(5) NOT NULL,
  `info` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `create_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_nearby_user`
--

CREATE TABLE IF NOT EXISTS `gooraye_nearby_user` (
`id` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=307 ;

--
-- 转存表中的数据 `gooraye_nearby_user`
--

INSERT INTO `gooraye_nearby_user` (`id`, `token`, `uid`, `keyword`, `time`) VALUES
(306, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '便利店', 1403083455);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_node`
--

CREATE TABLE IF NOT EXISTS `gooraye_node` (
`id` smallint(6) unsigned NOT NULL,
  `name` varchar(20) NOT NULL COMMENT '节点名称',
  `title` varchar(50) NOT NULL COMMENT '菜单名称',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否激活 1：是 2：否',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `pid` smallint(6) unsigned NOT NULL COMMENT '父ID',
  `level` tinyint(1) unsigned NOT NULL COMMENT '节点等级',
  `data` varchar(255) DEFAULT NULL COMMENT '附加参数',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '菜单显示类型 0:不显示 1:导航菜单 2:左侧菜单'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

--
-- 转存表中的数据 `gooraye_node`
--

INSERT INTO `gooraye_node` (`id`, `name`, `title`, `status`, `remark`, `pid`, `level`, `data`, `sort`, `display`) VALUES
(1, 'cms', '根节点', 1, '', 0, 1, NULL, 0, 0),
(2, 'Site', '站点管理', 1, '', 1, 0, NULL, 0, 1),
(3, 'User', '用户管理', 1, '', 1, 0, NULL, 0, 1),
(4, 'extent', '扩展管理', 1, '', 1, 0, NULL, 10, 1),
(5, 'article', '内容管理', 1, '', 1, 0, NULL, 0, 1),
(6, 'Site', '站点设置', 1, '', 2, 2, NULL, 0, 2),
(7, 'index', '基本信息设置', 1, '', 6, 3, NULL, 0, 2),
(8, 'safe', '安全设置', 1, '', 6, 3, NULL, 0, 2),
(9, 'email', '邮箱设置', 1, '', 6, 3, NULL, 0, 2),
(10, 'upfile', '附件设置', 1, '', 6, 3, NULL, 0, 2),
(11, 'Node', '节点管理', 1, NULL, 2, 2, NULL, 0, 2),
(12, 'add', '添加节点', 1, '', 11, 3, NULL, 0, 2),
(13, 'index', '节点列表', 1, '', 11, 3, NULL, 0, 2),
(14, 'insert', '写入', 1, '0', 11, 3, NULL, 0, 0),
(15, 'edit', '编辑节点', 1, '0', 11, 3, NULL, 0, 0),
(16, 'update', '更新节点', 1, '0', 11, 3, NULL, 0, 0),
(17, 'del', '删除节点', 1, '0', 11, 3, NULL, 0, 0),
(18, 'User', '用户中心', 1, '0', 3, 2, NULL, 0, 2),
(19, 'add', '添加用户', 1, '0', 18, 3, NULL, 0, 2),
(20, 'index', '用户列表', 1, '0', 18, 3, NULL, 0, 2),
(21, 'edit', '编辑用户', 1, '0', 18, 3, NULL, 0, 0),
(22, 'insert', '写入数据库', 1, '0', 18, 3, NULL, 0, 0),
(23, 'update', '更新用户', 1, '0', 18, 3, NULL, 0, 0),
(24, 'del', '删除用户', 1, '0', 18, 3, NULL, 0, 0),
(25, 'Group', '管理组', 1, '0', 3, 2, NULL, 0, 2),
(26, 'add', '创建用户组', 1, '0', 25, 3, NULL, 0, 2),
(27, 'index', '用户组列表', 1, '0', 25, 3, NULL, 0, 2),
(28, 'edit', '编辑用户组', 1, '0', 25, 3, NULL, 0, 0),
(29, 'del', '删除用户组', 1, '0', 25, 3, NULL, 0, 0),
(30, 'insert', '写入数据库', 1, '0', 25, 3, NULL, 0, 0),
(31, 'update', '更新用户组', 1, '0', 25, 3, NULL, 0, 0),
(32, 'insert', '保存测试', 1, '0', 6, 3, NULL, 0, 0),
(36, 'menu', '左侧栏', 1, '0', 35, 3, NULL, 0, 0),
(35, 'System', '首页', 1, '0', 2, 2, NULL, 0, 0),
(37, 'main', '右侧栏目', 1, '0', 35, 3, NULL, 0, 0),
(38, 'Article', '微信图文', 1, '0', 5, 2, NULL, 0, 2),
(39, 'index', '图文列表', 1, '0', 38, 3, NULL, 0, 2),
(40, 'add', '图文添加', 1, '0', 38, 3, NULL, 0, 2),
(41, 'edit', '微信图文编辑', 1, '0', 38, 3, NULL, 0, 0),
(42, 'del', '微信图文删除', 1, '0', 38, 3, NULL, 0, 0),
(80, 'token', '公众号管理', 1, '0', 1, 2, NULL, 0, 1),
(45, 'Function', '功能模块', 1, '0', 1, 0, NULL, 0, 1),
(46, 'Function', '功能模块', 1, '0', 45, 2, NULL, 0, 2),
(47, 'add', '添加模块', 1, '0', 46, 3, NULL, 0, 2),
(48, 'User_group', '会员组', 1, '0', 3, 2, NULL, 0, 2),
(49, 'add', '添加会员组', 1, '0', 48, 3, NULL, 0, 2),
(50, 'Users', '前台用户', 1, '0', 3, 2, NULL, 0, 2),
(51, 'index', '用户列表', 1, '0', 50, 3, NULL, 0, 0),
(52, 'add', '添加用户', 1, '0', 50, 3, NULL, 0, 2),
(53, 'edit', '编辑用户', 1, '0', 50, 3, NULL, 0, 0),
(54, 'del', '删除用户', 1, '0', 50, 3, NULL, 0, 0),
(55, 'insert', '写入数据库', 1, '0', 50, 3, NULL, 0, 0),
(56, 'upsave', '更新用户', 1, '0', 50, 3, NULL, 0, 0),
(57, 'Text', '微信文本', 1, '0', 5, 2, NULL, 0, 2),
(58, 'index', '文本列表', 1, '0', 57, 3, NULL, 0, 2),
(59, 'del', '删除', 1, '0', 57, 3, NULL, 0, 0),
(60, 'Custom', '自定义页面', 1, '0', 5, 2, NULL, 0, 2),
(61, 'index', '列表', 1, '0', 60, 3, NULL, 0, 2),
(62, 'edit', '编辑', 1, '0', 60, 3, NULL, 0, 0),
(63, 'del', '删除', 1, '0', 60, 3, NULL, 0, 0),
(64, 'Records', '充值记录', 1, '0', 4, 2, NULL, 0, 2),
(65, 'index', '充值列表', 1, '0', 64, 3, NULL, 0, 2),
(66, 'Case', '用户案例', 1, '0', 4, 2, NULL, 0, 2),
(67, 'index', '案例列表', 1, '0', 66, 3, NULL, 0, 2),
(68, 'add', '添加案例', 1, '0', 66, 3, NULL, 0, 2),
(69, 'edit', '编辑案例', 1, '0', 66, 3, NULL, 0, 0),
(70, 'del', '删除案例', 1, '0', 66, 3, NULL, 0, 0),
(71, 'insert', '写入数据库', 1, '0', 66, 3, NULL, 0, 0),
(72, 'upsave', '更新数据库', 1, '0', 66, 3, NULL, 0, 0),
(73, 'Links', '友情链接', 1, '0', 4, 2, NULL, 0, 2),
(74, 'index', '友情链接', 1, '0', 73, 3, NULL, 0, 2),
(75, 'add', '添加链接', 1, '0', 73, 3, NULL, 0, 2),
(76, 'edit', '编辑链接', 1, '0', 73, 3, NULL, 0, 0),
(77, 'insert', '插入数据库', 1, '0', 73, 3, NULL, 0, 0),
(78, 'upsave', '更新数据库', 1, '0', 73, 3, NULL, 0, 0),
(79, 'del', '删除友情链接', 1, '0', 73, 3, NULL, 0, 0),
(81, 'Token', '公众号管理', 1, '0', 80, 2, NULL, 0, 2),
(83, 'alipay', '在线支付接口', 1, '0', 6, 3, NULL, 0, 2),
(84, 'sms', '短信接口', 1, '', 6, 3, NULL, 0, 2);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_norms`
--

CREATE TABLE IF NOT EXISTS `gooraye_norms` (
`id` int(10) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL COMMENT '产品参数分类',
  `catid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `value` varchar(150) NOT NULL COMMENT '规格值'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类规格相信值' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_ordering_class`
--

CREATE TABLE IF NOT EXISTS `gooraye_ordering_class` (
`id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `name` varchar(10) NOT NULL,
  `sort` tinyint(2) NOT NULL,
  `info` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_ordering_set`
--

CREATE TABLE IF NOT EXISTS `gooraye_ordering_set` (
`id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `title` varchar(60) NOT NULL,
  `info` varchar(120) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `flash` text NOT NULL,
  `create_time` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_other`
--

CREATE TABLE IF NOT EXISTS `gooraye_other` (
`id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `gooraye_other`
--

INSERT INTO `gooraye_other` (`id`, `token`, `keyword`, `info`) VALUES
(2, 'ubddyd1402964682', '', '1.附近周边信息查询lbs\r\n2.音乐查询　音乐＋音乐名 例：音乐爱你一万年\r\n3.天气查询　城市名＋天气　例上海天气\r\n4.手机归属地查询(吉凶 运势) 手机＋手机号码　例：手机13917778912\r\n5.身份证查询　身份证＋号码　　例：身份证342423198803015568\r\n6.公交查询　公交＋城市＋公交编号　例：上海公交774\r\n7.火车查询　火车＋城市＋目的地　例火车上海南京\r\n8'),
(3, 'caspcu1403054302', '', '1.附近周边信息查询lbs\r\n2.更多功能请回复帮助，或者help');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_panorama`
--

CREATE TABLE IF NOT EXISTS `gooraye_panorama` (
`id` int(10) NOT NULL,
  `token` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(300) NOT NULL DEFAULT '',
  `music` varchar(100) NOT NULL DEFAULT '',
  `frontpic` varchar(100) NOT NULL DEFAULT '',
  `rightpic` varchar(100) NOT NULL DEFAULT '',
  `backpic` varchar(100) NOT NULL DEFAULT '',
  `leftpic` varchar(100) NOT NULL DEFAULT '',
  `toppic` varchar(100) NOT NULL DEFAULT '',
  `bottompic` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `gooraye_panorama`
--

INSERT INTO `gooraye_panorama` (`id`, `token`, `name`, `intro`, `music`, `frontpic`, `rightpic`, `backpic`, `leftpic`, `toppic`, `bottompic`, `keyword`, `time`, `taxis`) VALUES
(1, 'caspcu1403054302', '11', '描述信息', '', '/tpl/User/default/common/images/panorama/0.jpg', '/tpl/User/default/common/images/panorama/1.jpg', '/tpl/User/default/common/images/panorama/2.jpg', '/tpl/User/default/common/images/panorama/3.jpg', '/tpl/User/default/common/images/panorama/4.jpg', '/tpl/User/default/common/images/panorama/5.jpg', '360', 0, 1),
(2, 'ubddyd1402964682', '缤纷产品', '', '', '/tpl/User/default/common/images/panorama/0.jpg', '/tpl/User/default/common/images/panorama/1.jpg', '/tpl/User/default/common/images/panorama/2.jpg', '/tpl/User/default/common/images/panorama/3.jpg', '/tpl/User/default/common/images/panorama/4.jpg', '/tpl/User/default/common/images/panorama/5.jpg', '360', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_photo`
--

CREATE TABLE IF NOT EXISTS `gooraye_photo` (
`id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `title` varchar(20) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `isshoinfo` tinyint(1) NOT NULL,
  `num` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  `info` varchar(150) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `gooraye_photo`
--

INSERT INTO `gooraye_photo` (`id`, `token`, `title`, `picurl`, `isshoinfo`, `num`, `status`, `create_time`, `info`) VALUES
(1, 'caspcu1403054302', '相册', 'http://114.215.198.83/tpl/static/attachment/background/view/2.jpg', 0, 2, 1, 0, '相册'),
(2, 'caspcu1403054302', '11', 'http://114.215.198.83/tpl/static/attachment/background/view/3.jpg', 0, 0, 1, 0, '嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_photo_list`
--

CREATE TABLE IF NOT EXISTS `gooraye_photo_list` (
`id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `info` varchar(120) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `gooraye_photo_list`
--

INSERT INTO `gooraye_photo_list` (`id`, `token`, `pid`, `title`, `sort`, `picurl`, `create_time`, `status`, `info`) VALUES
(1, 'caspcu1403054302', 1, '1', 0, 'http://114.215.198.83/tpl/static/attachment/focus/default/1.gif', 0, 1, ''),
(2, 'caspcu1403054302', 1, '2', 0, 'http://114.215.198.83/tpl/static/attachment/focus/default/2.jpg', 0, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_product`
--

CREATE TABLE IF NOT EXISTS `gooraye_product` (
`id` int(10) NOT NULL,
  `sort` int(10) NOT NULL DEFAULT '0',
  `catid` mediumint(4) NOT NULL DEFAULT '0',
  `storeid` mediumint(4) NOT NULL DEFAULT '0',
  `name` varchar(150) NOT NULL DEFAULT '',
  `price` float NOT NULL DEFAULT '0',
  `vprice` float NOT NULL,
  `oprice` float NOT NULL DEFAULT '0',
  `mailprice` float NOT NULL COMMENT '邮费',
  `discount` float NOT NULL DEFAULT '10',
  `intro` text NOT NULL,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `salecount` mediumint(4) NOT NULL DEFAULT '0',
  `logourl` varchar(150) NOT NULL DEFAULT '',
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `groupon` tinyint(1) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `fakemembercount` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `num` int(10) unsigned NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `gooraye_product`
--

INSERT INTO `gooraye_product` (`id`, `sort`, `catid`, `storeid`, `name`, `price`, `vprice`, `oprice`, `mailprice`, `discount`, `intro`, `token`, `keyword`, `salecount`, `logourl`, `dining`, `groupon`, `endtime`, `fakemembercount`, `time`, `num`) VALUES
(3, 100, 3, 0, '333', 33, 22, 33, 11, 10, '', 'caspcu1403054302', 'hh', 0, 'http://114.215.198.83/tpl/static/attachment/icon/lovely/cloud-check.png', 0, 0, 0, 0, 1403574141, 44),
(4, 0, 8388607, 1, '88', 88, 0, 88, 0, 10, '88', 'caspcu1403054302', '88', 0, '', 0, 1, 1404489599, 88, 1403575261, 0),
(5, 100, 4, 0, '3333333', 333333, 333333, 333333000, 33, 10, '', 'caspcu1403054302', '33', 0, '', 0, 0, 0, 0, 1403575509, 3333333),
(6, 100, 4, 0, '33', 33, 33, 33, 4, 10, '', 'caspcu1403054302', '44', 0, 'http://114.215.198.83/tpl/static/attachment/icon/lovely/chalkboard.png', 0, 0, 0, 0, 1403575532, 444);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_product_attribute`
--

CREATE TABLE IF NOT EXISTS `gooraye_product_attribute` (
`id` int(10) unsigned NOT NULL,
  `aid` int(10) unsigned NOT NULL COMMENT '属性ID',
  `pid` int(10) unsigned NOT NULL COMMENT '商品ID',
  `name` varchar(100) NOT NULL COMMENT '属性名',
  `value` varchar(100) NOT NULL COMMENT '属性值'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='商品属性表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `gooraye_product_attribute`
--

INSERT INTO `gooraye_product_attribute` (`id`, `aid`, `pid`, `name`, `value`) VALUES
(1, 1, 3, '111', '111'),
(2, 2, 3, 'aaa', 'aaa');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_product_cart`
--

CREATE TABLE IF NOT EXISTS `gooraye_product_cart` (
`id` int(10) NOT NULL,
  `transactionid` varchar(100) NOT NULL DEFAULT '',
  `paytype` varchar(30) NOT NULL DEFAULT '',
  `productid` int(10) NOT NULL DEFAULT '0',
  `code` varchar(50) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `diningtype` mediumint(2) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `total` mediumint(4) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `tel` varchar(14) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `ordertype` mediumint(2) NOT NULL DEFAULT '0',
  `tableid` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `buytime` varchar(100) NOT NULL DEFAULT '',
  `groupon` tinyint(1) NOT NULL DEFAULT '0',
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `year` mediumint(4) NOT NULL DEFAULT '0',
  `month` mediumint(4) NOT NULL DEFAULT '0',
  `day` mediumint(4) NOT NULL DEFAULT '0',
  `hour` smallint(4) NOT NULL DEFAULT '0',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `orderid` varchar(40) NOT NULL DEFAULT '',
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `logistics` varchar(70) NOT NULL DEFAULT '',
  `logisticsid` varchar(50) NOT NULL DEFAULT '',
  `printed` tinyint(1) NOT NULL DEFAULT '0',
  `handled` tinyint(1) NOT NULL DEFAULT '0',
  `handledtime` int(10) NOT NULL DEFAULT '0',
  `handleduid` int(10) NOT NULL DEFAULT '0',
  `score` int(10) unsigned NOT NULL,
  `paymode` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_product_cart_list`
--

CREATE TABLE IF NOT EXISTS `gooraye_product_cart_list` (
`id` int(10) NOT NULL,
  `cartid` int(10) NOT NULL DEFAULT '0',
  `productid` int(10) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `total` mediumint(4) NOT NULL DEFAULT '0',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_product_cat`
--

CREATE TABLE IF NOT EXISTS `gooraye_product_cat` (
`id` mediumint(4) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL,
  `des` varchar(500) NOT NULL DEFAULT '',
  `parentid` mediumint(4) NOT NULL,
  `logourl` varchar(100) NOT NULL,
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  `norms` varchar(100) NOT NULL COMMENT '分类产品的规格',
  `color` varchar(100) NOT NULL COMMENT '分类产品的外观'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `gooraye_product_cat`
--

INSERT INTO `gooraye_product_cat` (`id`, `token`, `name`, `des`, `parentid`, `logourl`, `dining`, `time`, `norms`, `color`) VALUES
(3, 'caspcu1403054302', '微商城', '商城', 0, 'http://114.215.198.83/tpl/static/attachment/focus/default/2.jpg', 0, 1403573976, '鞋码', ''),
(4, 'caspcu1403054302', '3333333', 'hhhhhhhhhhhhhhhhhhhh', 0, 'http://114.215.198.83/tpl/static/attachment/background/view/2.jpg', 0, 1403575485, 'hh ', '');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_product_detail`
--

CREATE TABLE IF NOT EXISTS `gooraye_product_detail` (
`id` int(11) NOT NULL,
  `pid` int(11) NOT NULL COMMENT '商品ID',
  `format` varchar(100) NOT NULL COMMENT '商品的规格（大小）',
  `color` varchar(100) NOT NULL COMMENT '颜色',
  `num` int(10) unsigned NOT NULL COMMENT '数量',
  `price` float NOT NULL COMMENT '价格',
  `vprice` float NOT NULL,
  `logo` varchar(200) NOT NULL COMMENT '图标'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品的数量(详细)表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_product_diningtable`
--

CREATE TABLE IF NOT EXISTS `gooraye_product_diningtable` (
`id` mediumint(4) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(500) NOT NULL DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_product_image`
--

CREATE TABLE IF NOT EXISTS `gooraye_product_image` (
`id` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL COMMENT '商品ID',
  `image` varchar(200) NOT NULL COMMENT '图片地址'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='商品配图' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `gooraye_product_image`
--

INSERT INTO `gooraye_product_image` (`id`, `pid`, `image`) VALUES
(1, 3, 'http://114.215.198.83/tpl/static/attachment/icon/lovely/cloud-down.png'),
(2, 3, 'http://114.215.198.83/tpl/static/attachment/icon/lovely/cloud-error.png'),
(3, 3, 'http://114.215.198.83/tpl/static/attachment/icon/lovely/cloud-refresh.png'),
(4, 3, 'http://114.215.198.83/tpl/static/attachment/icon/lovely/cloud-up.png'),
(5, 3, 'http://114.215.198.83/tpl/static/attachment/icon/lovely/donut.png'),
(6, 3, 'http://114.215.198.83/tpl/static/attachment/icon/lovely/drop.png');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_product_mail_price`
--

CREATE TABLE IF NOT EXISTS `gooraye_product_mail_price` (
`id` int(10) unsigned NOT NULL,
  `token` varchar(100) NOT NULL,
  `price` float NOT NULL COMMENT '满多少元免邮费'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='设置商城免邮' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_product_setting`
--

CREATE TABLE IF NOT EXISTS `gooraye_product_setting` (
`id` int(10) unsigned NOT NULL,
  `token` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `score` float NOT NULL,
  `paymode` tinyint(1) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_recipe`
--

CREATE TABLE IF NOT EXISTS `gooraye_recipe` (
`id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `begintime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `monday` text NOT NULL,
  `tuesday` text NOT NULL,
  `wednesday` text NOT NULL,
  `thursday` text NOT NULL,
  `friday` text NOT NULL,
  `saturday` text NOT NULL,
  `sunday` text NOT NULL,
  `ishow` int(1) NOT NULL DEFAULT '1' COMMENT '1:显示,2隐藏,默认1',
  `sort` int(11) NOT NULL DEFAULT '1',
  `type` char(15) NOT NULL DEFAULT '',
  `headpic` varchar(200) NOT NULL,
  `infos` varchar(500) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_recipe`
--

INSERT INTO `gooraye_recipe` (`id`, `token`, `keyword`, `title`, `begintime`, `endtime`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`, `ishow`, `sort`, `type`, `headpic`, `infos`) VALUES
(1, 'ubddyd1402964682', '食谱', '一周食谱', 1403452800, 1404057600, 'a:10:{s:6:"mon_zc";s:35:"松子大米粥,煮鸡蛋,豆沙包";s:6:"zc_pic";s:46:"http://114.215.198.83/tpl/static/recipe/zc.jpg";s:7:"mon_zjc";s:6:"牛奶";s:11:"mon_zjc_pic";s:47:"http://114.215.198.83/tpl/static/recipe/zjc.jpg";s:6:"mon_wc";s:51:"米饭,珍珠鱼丸,木耳园白菜,冬瓜丸子汤";s:10:"mon_wc_pic";s:46:"http://114.215.198.83/tpl/static/recipe/wc.jpg";s:7:"mon_wjc";s:6:"苹果";s:11:"mon_wjc_pic";s:47:"http://114.215.198.83/tpl/static/recipe/wjc.jpg";s:7:"mon_wwc";s:45:"发糕,肉炒三丁,熏干芹菜,玉米面粥";s:11:"mon_wwc_pic";s:47:"http://114.215.198.83/tpl/static/recipe/wwc.jpg";}', 'a:10:{s:6:"tus_zc";s:41:"青菜肉丝柳叶面,摊鸡蛋,菊花卷";s:10:"tus_zc_pic";s:46:"http://114.215.198.83/tpl/static/recipe/zc.jpg";s:7:"tus_zjc";s:6:"牛奶";s:11:"tus_zjc_pic";s:47:"http://114.215.198.83/tpl/static/recipe/zjc.jpg";s:6:"tus_wc";s:48:"米饭,鸡丁黄瓜,蕃茄菜花,鸡蛋紫菜汤";s:10:"tus_wc_pic";s:46:"http://114.215.198.83/tpl/static/recipe/wc.jpg";s:7:"tus_wjc";s:6:"香蕉";s:11:"tus_wjc_pic";s:47:"http://114.215.198.83/tpl/static/recipe/wjc.jpg";s:7:"tus_wwc";s:22:"小笼包子,小米粥";s:11:"tus_wwc_pic";s:47:"http://114.215.198.83/tpl/static/recipe/wwc.jpg";}', 'a:10:{s:6:"wed_zc";s:35:"松子大米粥,煮鸡蛋,豆沙包";s:10:"wed_zc_pic";s:46:"http://114.215.198.83/tpl/static/recipe/zc.jpg";s:7:"wed_zjc";s:6:"牛奶";s:11:"wed_zjc_pic";s:47:"http://114.215.198.83/tpl/static/recipe/zjc.jpg";s:6:"wed_wc";s:51:"米饭,珍珠鱼丸,木耳园白菜,冬瓜丸子汤";s:10:"wed_wc_pic";s:46:"http://114.215.198.83/tpl/static/recipe/wc.jpg";s:7:"wed_wjc";s:6:"苹果";s:11:"wed_wjc_pic";s:47:"http://114.215.198.83/tpl/static/recipe/wjc.jpg";s:7:"wed_wwc";s:45:"发糕,肉炒三丁,熏干芹菜,玉米面粥";s:11:"wed_wwc_pic";s:47:"http://114.215.198.83/tpl/static/recipe/wwc.jpg";}', 'a:10:{s:6:"thu_zc";s:41:"青菜肉丝柳叶面,摊鸡蛋,菊花卷";s:10:"thu_zc_pic";s:46:"http://114.215.198.83/tpl/static/recipe/zc.jpg";s:7:"thu_zjc";s:6:"牛奶";s:11:"thu_zjc_pic";s:47:"http://114.215.198.83/tpl/static/recipe/zjc.jpg";s:6:"thu_wc";s:48:"米饭,鸡丁黄瓜,蕃茄菜花,鸡蛋紫菜汤";s:10:"thu_wc_pic";s:46:"http://114.215.198.83/tpl/static/recipe/wc.jpg";s:7:"thu_wjc";s:6:"香蕉";s:11:"thu_wjc_pic";s:47:"http://114.215.198.83/tpl/static/recipe/wjc.jpg";s:7:"thu_wwc";s:22:"小笼包子,小米粥";s:11:"thu_wwc_pic";s:47:"http://114.215.198.83/tpl/static/recipe/wwc.jpg";}', 'a:10:{s:6:"fri_zc";s:35:"松子大米粥,煮鸡蛋,豆沙包";s:10:"fri_zc_pic";s:46:"http://114.215.198.83/tpl/static/recipe/zc.jpg";s:7:"fri_zjc";s:6:"牛奶";s:11:"fri_zjc_pic";s:47:"http://114.215.198.83/tpl/static/recipe/zjc.jpg";s:6:"fri_wc";s:51:"米饭,珍珠鱼丸,木耳园白菜,冬瓜丸子汤";s:10:"fri_wc_pic";s:46:"http://114.215.198.83/tpl/static/recipe/wc.jpg";s:7:"fri_wjc";s:6:"苹果";s:11:"fri_wjc_pic";s:47:"http://114.215.198.83/tpl/static/recipe/wjc.jpg";s:7:"fri_wwc";s:45:"发糕,肉炒三丁,熏干芹菜,玉米面粥";s:11:"fri_wwc_pic";s:47:"http://114.215.198.83/tpl/static/recipe/wwc.jpg";}', 'a:10:{s:6:"sat_zc";s:41:"青菜肉丝柳叶面,摊鸡蛋,菊花卷";s:10:"sat_zc_pic";s:46:"http://114.215.198.83/tpl/static/recipe/zc.jpg";s:7:"sat_zjc";s:6:"牛奶";s:11:"sat_zjc_pic";s:47:"http://114.215.198.83/tpl/static/recipe/zjc.jpg";s:6:"sat_wc";s:48:"米饭,鸡丁黄瓜,蕃茄菜花,鸡蛋紫菜汤";s:10:"sat_wc_pic";s:46:"http://114.215.198.83/tpl/static/recipe/wc.jpg";s:7:"sat_wjc";s:6:"香蕉";s:11:"sat_wjc_pic";s:47:"http://114.215.198.83/tpl/static/recipe/wjc.jpg";s:7:"sat_wwc";s:22:"小笼包子,小米粥";s:11:"sat_wwc_pic";s:47:"http://114.215.198.83/tpl/static/recipe/wwc.jpg";}', 'a:10:{s:6:"sun_zc";s:35:"松子大米粥,煮鸡蛋,豆沙包";s:10:"sun_zc_pic";s:46:"http://114.215.198.83/tpl/static/recipe/zc.jpg";s:7:"sun_zjc";s:6:"牛奶";s:11:"sun_zjc_pic";s:47:"http://114.215.198.83/tpl/static/recipe/zjc.jpg";s:6:"sun_wc";s:51:"米饭,珍珠鱼丸,木耳园白菜,冬瓜丸子汤";s:10:"sun_wc_pic";s:46:"http://114.215.198.83/tpl/static/recipe/wc.jpg";s:7:"sun_wjc";s:6:"苹果";s:11:"sun_wjc_pic";s:47:"http://114.215.198.83/tpl/static/recipe/wjc.jpg";s:7:"sun_wwc";s:46:"发糕,,肉炒三丁,熏干芹菜,玉米面粥";s:11:"sun_wwc_pic";s:47:"http://114.215.198.83/tpl/static/recipe/wwc.jpg";}', 1, 1, 'school', 'http://114.215.198.83/tpl/static/attachment/focus/default/1.gif', '健康');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_recognition`
--

CREATE TABLE IF NOT EXISTS `gooraye_recognition` (
`id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `attention_num` int(5) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `code_url` varchar(200) NOT NULL,
  `scene_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_reply`
--

CREATE TABLE IF NOT EXISTS `gooraye_reply` (
`id` int(11) unsigned NOT NULL,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `differ` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `message_id` int(11) NOT NULL,
  `reply` varchar(1000) NOT NULL,
  `time` varchar(10) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=252 ;

--
-- 转存表中的数据 `gooraye_reply`
--

INSERT INTO `gooraye_reply` (`id`, `wecha_id`, `differ`, `checked`, `message_id`, `reply`, `time`) VALUES
(243, '', 1, 0, 0, '你好啊，梦', '1403082810'),
(244, '', 1, 0, 0, '信息', '1403082853'),
(245, 'oqMIVt0XES04VNcYVGqLUuCamF3s', 0, 1, 268, '你好', '1403083054'),
(246, '', 1, 1, 268, '呵呵', '1403083059'),
(247, 'oqMIVt0XES04VNcYVGqLUuCamF3s', 0, 1, 268, '贝贝sb', '1403083125'),
(248, 'oqMIVt0XES04VNcYVGqLUuCamF3s', 0, 1, 268, 'ucoufiuidy', '1403083276'),
(249, 'oqMIVt0XES04VNcYVGqLUuCamF3s', 0, 1, 268, '嘻嘻', '1403598067'),
(250, '', 1, 0, 0, '恩恩', '1403598120'),
(251, '', 1, 1, 268, '恩恩', '1403598146');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_reply_info`
--

CREATE TABLE IF NOT EXISTS `gooraye_reply_info` (
`id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `infotype` varchar(20) NOT NULL DEFAULT '',
  `diningyuding` tinyint(1) NOT NULL DEFAULT '1',
  `diningwaimai` tinyint(1) NOT NULL DEFAULT '1',
  `config` text NOT NULL,
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `apiurl` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `gooraye_reply_info`
--

INSERT INTO `gooraye_reply_info` (`id`, `token`, `title`, `picurl`, `info`, `infotype`, `diningyuding`, `diningwaimai`, `config`, `keyword`, `apiurl`) VALUES
(4, 'caspcu1403054302', '请留言', 'http://114.215.198.83//tpl/static/attachment/background/view/4.jpg', 'hello，我们是小古睿！', 'message', 1, 1, 'a:1:{s:9:"needcheck";i:0;}', '', ''),
(5, 'ubddyd1402964682', '古睿官网', 'http://114.215.198.83/tpl/static/attachment/focus/default/3.jpg', '', 'Dining', 0, 0, 'a:3:{s:11:"waimaiclose";i:0;s:11:"yudingclose";i:0;s:10:"yudingdays";i:0;}', '订餐', ''),
(6, 'ubddyd1402964682', '酒店', 'http://114.215.198.83/tpl/static/attachment/icon/lovely/mcfly.png', '酒店', 'Hotels', 1, 1, '', '酒店', ''),
(7, 'caspcu1403054302', '团购', 'http://114.215.198.83/tpl/static/attachment/focus/default/6.jpg', '团购', 'Groupon', 1, 1, 'a:1:{s:5:"tplid";i:0;}', '', ''),
(8, 'caspcu1403054302', '商城 商城 商城 商城 商城 商城 商城 商城 商城 商城 ', 'http://114.215.198.83/tpl/static/attachment/focus/default/4.jpg', '商城 商城 商城 商城 商城 商城 商城 商城 商城 商城 商城 商城 商城 商城 商城 商城 商城 商城 商城 商城 商城 ', 'Shop', 1, 1, '', '商城', ''),
(9, 'caspcu1403054302', '相册', 'http://114.215.198.83/tpl/static/attachment/focus/default/6.jpg', '', 'album', 1, 1, '', '', ''),
(10, 'caspcu1403054302', '会员卡,省钱，打折,促销，优先知道,有奖励哦', 'http://114.215.198.83/tpl/static/images/member.jpg', '尊贵vip，是您消费身份的体现,会员卡,省钱，打折,促销，优先知道,有奖励哦', 'membercard', 1, 1, '', '', ''),
(11, 'caspcu1403054302', '申请成为会员', 'http://114.215.198.83/tpl/static/images/vip.jpg', '申请成为会员，享受更多优惠', 'membercard_nouse', 1, 1, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_requestdata`
--

CREATE TABLE IF NOT EXISTS `gooraye_requestdata` (
`id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `day` int(2) NOT NULL,
  `time` int(11) NOT NULL,
  `textnum` int(5) NOT NULL,
  `imgnum` int(5) NOT NULL,
  `videonum` int(5) NOT NULL,
  `other` int(5) NOT NULL,
  `follownum` int(5) NOT NULL,
  `unfollownum` int(5) NOT NULL,
  `3g` int(5) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=97 ;

--
-- 转存表中的数据 `gooraye_requestdata`
--

INSERT INTO `gooraye_requestdata` (`id`, `token`, `year`, `month`, `day`, `time`, `textnum`, `imgnum`, `videonum`, `other`, `follownum`, `unfollownum`, `3g`) VALUES
(86, 'ubddyd1402964682', 2014, 6, 17, 1402975190, 221, 0, 0, 0, 1, 0, 0),
(87, 'ubddyd1402964682', 2014, 6, 18, 1403050939, 87, 0, 0, 0, 0, 0, 0),
(88, 'caspcu1403054302', 2014, 6, 18, 1403055008, 42, 13, 2, 0, 0, 0, 0),
(89, 'caspcu1403054302', 2014, 6, 19, 1403139514, 24, 9, 0, 5, 0, 0, 0),
(90, 'ubddyd1402964682', 2014, 6, 19, 1403145024, 2, 0, 0, 0, 0, 0, 0),
(91, 'caspcu1403054302', 2014, 6, 21, 1403344486, 1, 0, 0, 3, 0, 0, 0),
(92, 'caspcu1403054302', 2014, 6, 22, 1403410048, 14, 3, 0, 4, 0, 0, 0),
(93, 'caspcu1403054302', 2014, 6, 23, 1403487754, 3, 0, 0, 0, 0, 0, 0),
(94, 'ubddyd1402964682', 2014, 6, 23, 1403489431, 15, 0, 0, 11, 0, 0, 0),
(95, 'ubddyd1402964682', 2014, 6, 24, 1403573706, 7, 0, 0, 0, 0, 0, 0),
(96, 'caspcu1403054302', 2014, 6, 24, 1403573846, 26, 0, 0, 19, 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_reservation`
--

CREATE TABLE IF NOT EXISTS `gooraye_reservation` (
`id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `addtype` varchar(20) NOT NULL DEFAULT 'house_book',
  `address` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `lng` varchar(13) NOT NULL,
  `lat` varchar(13) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `headpic` varchar(200) NOT NULL,
  `info` text,
  `typename` varchar(50) NOT NULL,
  `typename2` varchar(50) NOT NULL,
  `typename3` varchar(50) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `date` varchar(50) NOT NULL,
  `allnums` varchar(50) NOT NULL,
  `name_show` tinyint(4) NOT NULL DEFAULT '1',
  `time_show` tinyint(4) NOT NULL DEFAULT '1',
  `txt1` varchar(50) NOT NULL,
  `value1` varchar(50) NOT NULL,
  `txt2` varchar(50) NOT NULL,
  `value2` varchar(50) NOT NULL,
  `txt3` varchar(50) NOT NULL,
  `value3` varchar(50) NOT NULL,
  `txt4` varchar(50) NOT NULL,
  `value4` varchar(50) NOT NULL,
  `txt5` varchar(50) NOT NULL,
  `value5` varchar(50) NOT NULL,
  `select1` varchar(50) NOT NULL,
  `svalue1` varchar(100) NOT NULL,
  `select2` varchar(50) NOT NULL,
  `svalue2` varchar(100) NOT NULL,
  `select3` varchar(50) NOT NULL,
  `svalue3` varchar(100) NOT NULL,
  `select4` varchar(50) NOT NULL,
  `svalue4` varchar(100) NOT NULL,
  `select5` varchar(50) NOT NULL,
  `svalue5` varchar(100) NOT NULL,
  `datename` varchar(100) NOT NULL,
  `take` int(11) NOT NULL DEFAULT '1',
  `email` varchar(30) NOT NULL,
  `open_email` tinyint(4) NOT NULL DEFAULT '0',
  `sms` varchar(13) NOT NULL,
  `open_sms` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='预约' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `gooraye_reservation`
--

INSERT INTO `gooraye_reservation` (`id`, `token`, `keyword`, `title`, `picurl`, `addtype`, `address`, `place`, `lng`, `lat`, `tel`, `headpic`, `info`, `typename`, `typename2`, `typename3`, `type`, `date`, `allnums`, `name_show`, `time_show`, `txt1`, `value1`, `txt2`, `value2`, `txt3`, `value3`, `txt4`, `value4`, `txt5`, `value5`, `select1`, `svalue1`, `select2`, `svalue2`, `select3`, `svalue3`, `select4`, `svalue4`, `select5`, `svalue5`, `datename`, `take`, `email`, `open_email`, `sms`, `open_sms`) VALUES
(1, 'ubddyd1402964682', '呵呵', '呵呵', 'tpl/User/default/common/car/yuyue.jpg', 'drive', '袍江', '', '', '', '', 'tpl/User/default/common/car/yuyue.jpg', '呵呵', '', '', '', 1, '', '', 1, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '', 0, '', 0),
(2, 'ubddyd1402964682', '123', '123', 'http://114.215.198.83/tpl/static/attachment/focus/default/6.jpg', 'house_book', '袍江', '', '', '', '057585060707', 'http://114.215.198.83/tpl/static/attachment/focus/default/5.gif', '呵呵', '我的订单', '订单说明', '订单电话', 1, '', '', 1, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '', 0, '', 0),
(3, 'ubddyd1402964682', '呵呵', '呵呵', 'http://pic4.nipic.com/20090920/3156409_153159021243_2.jpg', 'course', '多媒体', '', '', '', '18257567105', 'http://114.215.198.83/tpl/static/attachment/icon/lovely/donut.png', '哈哈哈', '11', '12', '2014-6-23 16:36:25', 0, '2014-6-27 16:36:29', '', 1, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '', 0, '', 0),
(4, 'ubddyd1402964682', '', '医疗', 'http://114.215.198.83/tpl/static/attachment/icon/lovely/eye.png', 'medical', '袍江哈哈哈', '', '120.590831', '29.994449', '0575-85060707', 'http://114.215.198.83/tpl/static/attachment/icon/lovely/knife.png', '嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿', '我的挂号订单', '订单说明', '订单电话', 1, '', '', 1, 1, '', '1', '', '', '呵呵', '呵呵', '', '', '', '', '预约科室', '', '预约专家', '', '预约病种', '', '', '', '', '', '留言信息', 1, '', 0, '', 0),
(5, 'caspcu1403054302', '', '医疗', 'http://114.215.198.83/tpl/static/attachment/background/view/1.jpg', 'medical', '袍江哈哈哈', '', '', '', '0575-85060707', 'http://114.215.198.83/tpl/static/attachment/background/view/2.jpg', '医疗医疗医疗', '我的挂号订单', '订单说明', '订单电话', 1, '', '', 1, 1, '', '1', '', '', '', '', '', '', '', '', '预约科室', '', '预约专家', '', '预约病种', '', '', '', '', '', '留言信息', 1, '', 0, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_reservebook`
--

CREATE TABLE IF NOT EXISTS `gooraye_reservebook` (
`id` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `truename` varchar(50) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `housetype` varchar(50) NOT NULL,
  `dateline` varchar(50) NOT NULL,
  `timepart` varchar(50) NOT NULL,
  `info` varchar(100) NOT NULL,
  `type` char(15) NOT NULL,
  `booktime` int(11) NOT NULL,
  `remate` tinyint(3) NOT NULL DEFAULT '0' COMMENT '客服标志',
  `kfinfo` varchar(100) NOT NULL,
  `sex` int(11) DEFAULT '0',
  `age` int(11) NOT NULL DEFAULT '0',
  `address` varchar(50) NOT NULL DEFAULT '',
  `choose` varchar(50) NOT NULL DEFAULT '',
  `number` int(11) NOT NULL DEFAULT '0',
  `paid` int(1) DEFAULT '0',
  `orderid` char(32) NOT NULL DEFAULT '',
  `payprice` decimal(10,2) DEFAULT NULL,
  `shiporder` char(32) NOT NULL DEFAULT '',
  `productName` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_role`
--

CREATE TABLE IF NOT EXISTS `gooraye_role` (
`id` smallint(6) unsigned NOT NULL,
  `name` varchar(20) NOT NULL COMMENT '后台组名',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '是否激活 1：是 0：否',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `gooraye_role`
--

INSERT INTO `gooraye_role` (`id`, `name`, `pid`, `status`, `sort`, `remark`) VALUES
(5, '超级管理员', 0, 1, 0, ''),
(6, '演示组', 0, 1, 0, ''),
(9, '普通会员', 0, 1, 0, ''),
(10, '自己', 0, 1, 0, '自己');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_role_user`
--

CREATE TABLE IF NOT EXISTS `gooraye_role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` smallint(6) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_router`
--

CREATE TABLE IF NOT EXISTS `gooraye_router` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `bywechat` tinyint(1) NOT NULL DEFAULT '1',
  `wechat` varchar(50) NOT NULL DEFAULT '',
  `qrcode` varchar(200) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `token` varchar(40) NOT NULL DEFAULT '',
  `gw_id` varchar(60) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_router_config`
--

CREATE TABLE IF NOT EXISTS `gooraye_router_config` (
`id` int(10) NOT NULL,
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `info` varchar(300) NOT NULL DEFAULT '',
  `contact_qq` varchar(12) NOT NULL DEFAULT '',
  `welcome_img` varchar(200) NOT NULL DEFAULT '',
  `other_img` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(60) NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_school_classify`
--

CREATE TABLE IF NOT EXISTS `gooraye_school_classify` (
`sid` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `ssort` int(5) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` char(20) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `gooraye_school_classify`
--

INSERT INTO `gooraye_school_classify` (`sid`, `sname`, `ssort`, `token`, `type`) VALUES
(1, '教育', 1, 'ubddyd1402964682', 'semester'),
(3, '学习', 1, 'ubddyd1402964682', 'semester'),
(4, '1', 1, 'ubddyd1402964682', 'theclass'),
(5, '2', 1, 'ubddyd1402964682', 'theclass'),
(7, '3', 1, 'ubddyd1402964682', 'theclass'),
(8, '4', 1, 'ubddyd1402964682', 'theclass'),
(9, '优', 1, 'ubddyd1402964682', 'score'),
(10, '良', 1, 'ubddyd1402964682', 'score'),
(11, '语文', 1, 'ubddyd1402964682', 'subject'),
(12, '数学', 1, 'ubddyd1402964682', 'subject'),
(13, '09:00-09:45 ', 1, 'ubddyd1402964682', 'timeframe'),
(14, '10:00-10:45', 1, 'ubddyd1402964682', 'timeframe'),
(15, '星期一', 1, 'ubddyd1402964682', 'week'),
(16, '星期二', 1, 'ubddyd1402964682', 'week');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_school_score`
--

CREATE TABLE IF NOT EXISTS `gooraye_school_score` (
`id` int(10) unsigned NOT NULL,
  `token` varchar(50) NOT NULL,
  `xq_id` int(11) NOT NULL,
  `qh_id` int(11) NOT NULL,
  `km_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `my_score` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_school_set_index`
--

CREATE TABLE IF NOT EXISTS `gooraye_school_set_index` (
`setid` int(10) unsigned NOT NULL,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `head_url` varchar(200) NOT NULL,
  `info` varchar(100) NOT NULL,
  `album_id` int(11) NOT NULL,
  `musicurl` varchar(200) NOT NULL DEFAULT '',
  `menu1` varchar(50) NOT NULL,
  `menu1_id` int(11) NOT NULL,
  `menu2` char(15) NOT NULL,
  `menu3` char(15) NOT NULL,
  `menu4` char(15) NOT NULL,
  `menu5` char(15) NOT NULL,
  `menu6` char(15) NOT NULL,
  `menu7` char(15) NOT NULL,
  `menu8` char(15) NOT NULL,
  `menu2_id` int(11) NOT NULL,
  `menu3_id` int(11) NOT NULL,
  `menu4_id` int(11) NOT NULL,
  `menu5_id` int(11) NOT NULL,
  `menu6_id` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_school_set_index`
--

INSERT INTO `gooraye_school_set_index` (`setid`, `token`, `keyword`, `title`, `head_url`, `info`, `album_id`, `musicurl`, `menu1`, `menu1_id`, `menu2`, `menu3`, `menu4`, `menu5`, `menu6`, `menu7`, `menu8`, `menu2_id`, `menu3_id`, `menu4_id`, `menu5_id`, `menu6_id`) VALUES
(1, 'ubddyd1402964682', '学校', '学校哈哈哈', 'http://pic4.nipic.com/20090920/3156409_153159021243_2.jpg', '学校学校嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿', 0, 'http://mp3.weiecn.com/vd.php/17647129/weiecn.mp3', '学校环境', 13, '教师风采', '同学天地', '课程介绍', '食谱安排', '校内新闻', '成绩查询', '家长建议', 0, 13, 13, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_school_students`
--

CREATE TABLE IF NOT EXISTS `gooraye_school_students` (
`id` int(11) unsigned NOT NULL,
  `xq_id` int(11) NOT NULL,
  `area_addr` varchar(60) NOT NULL DEFAULT '',
  `bj_id` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `sex` int(1) NOT NULL,
  `createdate` int(11) NOT NULL,
  `seffectivetime` date DEFAULT NULL,
  `stheendtime` date DEFAULT NULL,
  `jf_statu` int(11) DEFAULT NULL,
  `mobile` char(11) NOT NULL,
  `homephone` char(16) NOT NULL,
  `s_name` char(50) NOT NULL,
  `localdate_id` char(20) NOT NULL DEFAULT '',
  `note` varchar(50) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(60) NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_school_students`
--

INSERT INTO `gooraye_school_students` (`id`, `xq_id`, `area_addr`, `bj_id`, `birthdate`, `sex`, `createdate`, `seffectivetime`, `stheendtime`, `jf_statu`, `mobile`, `homephone`, `s_name`, `localdate_id`, `note`, `amount`, `area`, `token`, `wecha_id`) VALUES
(1, 1, ' 安昌镇', 4, '2005-03-09', 1, 1403513167, '2014-06-23', '2014-07-12', NULL, '18257567105', '0575-85060707', '1111', '12,1017,1019', '', 0, '浙江省 绍兴市 绍兴县 ', 'ubddyd1402964682', '');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_school_tcourse`
--

CREATE TABLE IF NOT EXISTS `gooraye_school_tcourse` (
`id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `tid` int(11) NOT NULL,
  `km_id` int(11) NOT NULL,
  `bj_id` int(11) NOT NULL,
  `xq_id` int(11) NOT NULL,
  `sd_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_school_teachers`
--

CREATE TABLE IF NOT EXISTS `gooraye_school_teachers` (
`tid` int(11) NOT NULL,
  `tname` char(50) NOT NULL,
  `birthdate` date NOT NULL,
  `createtime` int(11) NOT NULL,
  `homephone` char(12) NOT NULL,
  `mobile` char(11) NOT NULL,
  `email` char(50) NOT NULL,
  `sex` int(1) NOT NULL,
  `token` varchar(50) NOT NULL,
  `jiontime` date DEFAULT NULL,
  `info` text NOT NULL,
  `faceimg` varchar(200) NOT NULL DEFAULT '',
  `headinfo` varchar(600) NOT NULL DEFAULT '',
  `sort` int(11) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_school_teachers`
--

INSERT INTO `gooraye_school_teachers` (`tid`, `tname`, `birthdate`, `createtime`, `homephone`, `mobile`, `email`, `sex`, `token`, `jiontime`, `info`, `faceimg`, `headinfo`, `sort`) VALUES
(1, '11', '1990-06-23', 1403512564, '', '18257567105', '616493571@qq.com', 2, 'ubddyd1402964682', '2014-06-23', '教师', 'http://114.215.198.83/tpl/static/attachment/icon/lovely/cloud-check.png', '教师', 1);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_selfform`
--

CREATE TABLE IF NOT EXISTS `gooraye_selfform` (
`id` int(10) NOT NULL,
  `token` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(400) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `successtip` varchar(60) NOT NULL DEFAULT '',
  `failtip` varchar(60) NOT NULL DEFAULT '',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `logourl` varchar(150) NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `gooraye_selfform`
--

INSERT INTO `gooraye_selfform` (`id`, `token`, `name`, `keyword`, `intro`, `content`, `time`, `successtip`, `failtip`, `endtime`, `logourl`) VALUES
(3, 'ubddyd1402964682', '123', '123', '123123', '哈哈哈', 1403514331, '成功', '失败', 1404403199, 'http://114.215.198.83/tpl/static/attachment/focus/default/5.gif');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_selfform_input`
--

CREATE TABLE IF NOT EXISTS `gooraye_selfform_input` (
`id` int(10) NOT NULL,
  `formid` int(10) NOT NULL DEFAULT '0',
  `displayname` varchar(30) NOT NULL DEFAULT '',
  `fieldname` varchar(30) NOT NULL DEFAULT '',
  `inputtype` varchar(20) NOT NULL DEFAULT '',
  `options` varchar(200) NOT NULL DEFAULT '',
  `require` tinyint(1) NOT NULL DEFAULT '0',
  `regex` varchar(100) NOT NULL DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `errortip` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_selfform_value`
--

CREATE TABLE IF NOT EXISTS `gooraye_selfform_value` (
`id` int(10) NOT NULL,
  `formid` int(10) NOT NULL DEFAULT '0',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `values` varchar(2000) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_send_message`
--

CREATE TABLE IF NOT EXISTS `gooraye_send_message` (
`id` int(10) NOT NULL,
  `msg_id` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `msgtype` varchar(30) NOT NULL DEFAULT '',
  `text` varchar(800) NOT NULL DEFAULT '',
  `imgids` varchar(200) NOT NULL DEFAULT '',
  `mediasrc` varchar(200) NOT NULL DEFAULT '',
  `mediaid` varchar(100) NOT NULL DEFAULT '',
  `reachcount` int(10) NOT NULL DEFAULT '0',
  `groupid` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `gooraye_send_message`
--

INSERT INTO `gooraye_send_message` (`id`, `msg_id`, `title`, `token`, `msgtype`, `text`, `imgids`, `mediasrc`, `mediaid`, `reachcount`, `groupid`, `time`) VALUES
(2, '', '', 'caspcu1403054302', 'text', '11', '', '', '', 3, 0, 1403577451),
(3, '', '', 'caspcu1403054302', 'image', '', '', '', '', 0, 0, 1403577506),
(4, '', '', 'caspcu1403054302', 'image', '', '', 'http://114.215.198.83/tpl/static/attachment/focus/default/6.jpg', 'G5eu91wyAcIevXk5t43eTmzmut7NYoPYCMp9W37zRm7jId9s354O5KBLPezH8OJp', 3, 0, 1403577581),
(5, '', '', 'caspcu1403054302', 'news', '', '', '', '', 3, 0, 1403577708),
(6, '', '', 'caspcu1403054302', 'text', '事实上是事实是事实是事实', '', '', '', 3, 0, 1403577766),
(7, '', '', 'caspcu1403054302', 'news', '啊啊啊啊', '', '', '', 3, 0, 1403577829);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_service_logs`
--

CREATE TABLE IF NOT EXISTS `gooraye_service_logs` (
`id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `enddate` int(11) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_service_user`
--

CREATE TABLE IF NOT EXISTS `gooraye_service_user` (
`id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `token` varchar(60) NOT NULL,
  `userName` varchar(60) NOT NULL,
  `userPwd` varchar(32) NOT NULL,
  `endJoinDate` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `gooraye_service_user`
--

INSERT INTO `gooraye_service_user` (`id`, `name`, `token`, `userName`, `userPwd`, `endJoinDate`, `status`) VALUES
(3, '小徐', 'ubddyd1402964682', '001', 'e10adc3949ba59abbe56e057f20f883e', 1403529266, 0),
(4, '001', 'caspcu1403054302', '001', 'dc5c7986daef50c1e02ab09b442ee34f', 1403541364, 0),
(5, '002', 'caspcu1403054302', '002', '93dd4de5cddba2c733c65f233097f05a', 1403541364, 0);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_shake`
--

CREATE TABLE IF NOT EXISTS `gooraye_shake` (
`id` int(8) NOT NULL,
  `isact` int(1) NOT NULL DEFAULT '0',
  `title` varchar(40) NOT NULL,
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(400) NOT NULL DEFAULT '',
  `thumb` varchar(200) NOT NULL DEFAULT '',
  `shownum` int(11) NOT NULL DEFAULT '10',
  `joinnum` int(11) DEFAULT NULL,
  `shaketype` int(11) NOT NULL DEFAULT '1',
  `token` varchar(40) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `isopen` int(1) NOT NULL DEFAULT '0',
  `clienttime` int(11) NOT NULL DEFAULT '3',
  `showtime` int(10) NOT NULL DEFAULT '3',
  `endtime` varchar(13) DEFAULT NULL,
  `background` varchar(150) DEFAULT NULL,
  `backgroundmusic` varchar(150) DEFAULT NULL,
  `music` varchar(150) DEFAULT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `rule` varchar(600) NOT NULL DEFAULT '',
  `info` varchar(600) NOT NULL DEFAULT '',
  `starttime` int(11) NOT NULL,
  `endshake` int(11) NOT NULL,
  `qrcode` varchar(150) DEFAULT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `gooraye_shake`
--

INSERT INTO `gooraye_shake` (`id`, `isact`, `title`, `keyword`, `intro`, `thumb`, `shownum`, `joinnum`, `shaketype`, `token`, `createtime`, `isopen`, `clienttime`, `showtime`, `endtime`, `background`, `backgroundmusic`, `music`, `usetime`, `rule`, `info`, `starttime`, `endshake`, `qrcode`, `time`) VALUES
(2, 1, '摇一摇测试', '摇', '摇一摇测试', 'http://114.215.198.83/tpl/static/attachment/background/view/1.jpg', 5, NULL, 1, 'caspcu1403054302', '', 1, 3, 3, NULL, 'http://114.215.198.83/tpl/static/attachment/background/view/3.jpg', 'http://114.215.198.83/tpl/static/attachment/music/default/1.mp3', 'http://114.215.198.83/tpl/static/attachment/music/default/4.mp3', 2, '', '', 3, 10, '', 1403344828);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_shakelog`
--

CREATE TABLE IF NOT EXISTS `gooraye_shakelog` (
`id` int(9) NOT NULL,
  `aid` int(11) NOT NULL,
  `token` varchar(40) NOT NULL,
  `mark` longtext,
  `endtime` int(15) NOT NULL,
  `joinnum` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_shake_rt`
--

CREATE TABLE IF NOT EXISTS `gooraye_shake_rt` (
`id` int(11) NOT NULL,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(12) NOT NULL DEFAULT '',
  `count` int(10) NOT NULL DEFAULT '0',
  `shakeid` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `gooraye_shake_rt`
--

INSERT INTO `gooraye_shake_rt` (`id`, `wecha_id`, `token`, `phone`, `count`, `shakeid`) VALUES
(3, 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', 'caspcu1403054302', '13484379290', 0, 2),
(4, 'oqMIVt0XES04VNcYVGqLUuCamF3s', 'caspcu1403054302', '15058026959', 0, 2);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_share`
--

CREATE TABLE IF NOT EXISTS `gooraye_share` (
`id` int(11) NOT NULL,
  `module` varchar(30) NOT NULL DEFAULT '',
  `moduleid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  `wecha_id` varchar(80) NOT NULL DEFAULT '',
  `to` varchar(30) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_share_set`
--

CREATE TABLE IF NOT EXISTS `gooraye_share_set` (
  `token` varchar(40) NOT NULL DEFAULT '',
  `score` int(5) NOT NULL DEFAULT '0',
  `daylimit` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gooraye_share_set`
--

INSERT INTO `gooraye_share_set` (`token`, `score`, `daylimit`) VALUES
('caspcu1403054302', 12, 12);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_site_plugmenu`
--

CREATE TABLE IF NOT EXISTS `gooraye_site_plugmenu` (
  `token` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `url` varchar(100) DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `display` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gooraye_site_plugmenu`
--

INSERT INTO `gooraye_site_plugmenu` (`token`, `name`, `url`, `taxis`, `display`) VALUES
('caspcu1403054302', 'video', '', 0, 0),
('caspcu1403054302', 'music', '', 0, 0),
('caspcu1403054302', 'wechat', '', 0, 0),
('caspcu1403054302', 'qqzone', '', 0, 0),
('caspcu1403054302', 'tencentweibo', '', 0, 0),
('caspcu1403054302', 'weibo', '', 0, 0),
('caspcu1403054302', 'activity', '', 0, 0),
('caspcu1403054302', 'membercard', '', 0, 0),
('caspcu1403054302', 'shopping', '', 0, 0),
('caspcu1403054302', 'email', '', 0, 0),
('caspcu1403054302', 'album', '', 0, 0),
('caspcu1403054302', 'home', '', 0, 0),
('caspcu1403054302', 'share', '', 0, 0),
('caspcu1403054302', 'message', '', 0, 0),
('caspcu1403054302', 'nav', '', 0, 0),
('caspcu1403054302', 'memberinfo', '', 0, 0),
('caspcu1403054302', 'tel', '', 0, 0),
('caspcu1403054302', 'recommend', '', 0, 0),
('caspcu1403054302', 'other', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_sms_expendrecord`
--

CREATE TABLE IF NOT EXISTS `gooraye_sms_expendrecord` (
  `id` int(11) DEFAULT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `price` int(6) NOT NULL DEFAULT '0',
  `count` int(10) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_sms_record`
--

CREATE TABLE IF NOT EXISTS `gooraye_sms_record` (
`id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `token` varchar(20) NOT NULL,
  `time` int(10) NOT NULL,
  `mp` varchar(11) NOT NULL DEFAULT '',
  `text` varchar(400) NOT NULL DEFAULT '',
  `status` mediumint(4) NOT NULL DEFAULT '0',
  `price` mediumint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_snccode`
--

CREATE TABLE IF NOT EXISTS `gooraye_snccode` (
`id` int(11) NOT NULL,
  `type` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `wechaname` varchar(60) NOT NULL,
  `caeatetime` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `token` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_styleset`
--

CREATE TABLE IF NOT EXISTS `gooraye_styleset` (
`id` int(10) NOT NULL,
  `RadioGroup` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_system_info`
--

CREATE TABLE IF NOT EXISTS `gooraye_system_info` (
  `lastsqlupdate` int(10) NOT NULL,
  `version` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gooraye_system_info`
--

INSERT INTO `gooraye_system_info` (`lastsqlupdate`, `version`) VALUES
(1400221440, '');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_taobao`
--

CREATE TABLE IF NOT EXISTS `gooraye_taobao` (
`id` int(11) NOT NULL,
  `token` varchar(64) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `homeurl` varchar(100) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_text`
--

CREATE TABLE IF NOT EXISTS `gooraye_text` (
`id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `keyword` char(255) NOT NULL,
  `type` varchar(1) NOT NULL,
  `text` text NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `click` int(11) NOT NULL,
  `token` char(30) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='文本回复表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `gooraye_text`
--

INSERT INTO `gooraye_text` (`id`, `uid`, `uname`, `keyword`, `type`, `text`, `createtime`, `updatetime`, `click`, `token`) VALUES
(2, 8, 'xmf', 'h', '1', 'helphelphelp', '1403059897', '1403060038', 0, 'caspcu1403054302'),
(3, 8, '', 'dd', '1', '简介简介简介简介', '1403060624', '1403060624', 0, 'caspcu1403054302');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_token_open`
--

CREATE TABLE IF NOT EXISTS `gooraye_token_open` (
`id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `queryname` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `gooraye_token_open`
--

INSERT INTO `gooraye_token_open` (`id`, `uid`, `token`, `queryname`) VALUES
(6, 7, 'ubddyd1402964682', 'qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,,advanceTpl,wall,shake,forum,medical,message,share,hotel,school,dianying,renpin,tianqi'),
(7, 8, 'caspcu1403054302', 'tianqi,jiankang,kuaidi,xiaohua,peiliao,liaotian,mengjian,huoche,gongjiao,shenfenzheng,shouji,yinle,lottery,taobao,fanyi,api,baike,choujiang,shouye,adma,host_kev,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,advanceTpl,wall,shake,forum,medical,message,share,hotel,school,dianying,renpin,fujin,userinfo,suanming,huiyuanka');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_update_record`
--

CREATE TABLE IF NOT EXISTS `gooraye_update_record` (
`id` int(11) NOT NULL,
  `msg` varchar(600) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_upyun_attachement`
--

CREATE TABLE IF NOT EXISTS `gooraye_upyun_attachement` (
`id` int(10) NOT NULL,
  `token` varchar(60) NOT NULL,
  `url` varchar(160) NOT NULL,
  `code` varchar(10) NOT NULL,
  `time` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_user`
--

CREATE TABLE IF NOT EXISTS `gooraye_user` (
`id` int(10) unsigned NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `role` smallint(6) unsigned NOT NULL COMMENT '组ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1:启用 0:禁止',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `last_login_time` int(11) unsigned NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录IP',
  `last_location` varchar(100) DEFAULT NULL COMMENT '最后登录位置'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户表' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `gooraye_user`
--

INSERT INTO `gooraye_user` (`id`, `username`, `password`, `role`, `status`, `remark`, `last_login_time`, `last_login_ip`, `last_location`) VALUES
(8, 'admin', 'df80ac636a24cb91e7496fd183d20187', 5, 1, '', 1403573939, '122.236.102.106', '');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_userinfo`
--

CREATE TABLE IF NOT EXISTS `gooraye_userinfo` (
`id` int(11) NOT NULL,
  `portrait` varchar(200) NOT NULL DEFAULT '',
  `wallopen` tinyint(1) NOT NULL DEFAULT '0',
  `total_score` int(10) NOT NULL DEFAULT '0',
  `expensetotal` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `wechaname` varchar(60) NOT NULL,
  `truename` varchar(60) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `bornyear` varchar(4) NOT NULL DEFAULT '',
  `bornmonth` varchar(4) NOT NULL DEFAULT '',
  `bornday` varchar(4) NOT NULL DEFAULT '',
  `qq` varchar(11) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL,
  `age` varchar(3) NOT NULL DEFAULT '',
  `birthday` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `info` varchar(200) NOT NULL,
  `sign_score` int(11) NOT NULL,
  `expend_score` int(11) NOT NULL,
  `continuous` int(11) NOT NULL,
  `add_expend` int(11) NOT NULL,
  `add_expend_time` int(11) NOT NULL,
  `live_time` int(11) NOT NULL,
  `getcardtime` int(10) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `gooraye_userinfo`
--

INSERT INTO `gooraye_userinfo` (`id`, `portrait`, `wallopen`, `total_score`, `expensetotal`, `token`, `wecha_id`, `wechaname`, `truename`, `tel`, `bornyear`, `bornmonth`, `bornday`, `qq`, `sex`, `age`, `birthday`, `address`, `info`, `sign_score`, `expend_score`, `continuous`, `add_expend`, `add_expend_time`, `live_time`, `getcardtime`) VALUES
(5, 'http://114.215.198.83/tpl/static/portrait/10.jpg', 0, 0, 0, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '尛', '2222', '15058026959', '1991', '8', '13', '2966442390', 2, '', '', '', '', 0, 0, 0, 0, 0, 0, 1403587871),
(6, 'http://114.215.198.83/tpl/static/portrait/7.jpg', 0, 0, 0, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '何必都', '何必都', '13484379290', '1991', '8', '7', '136799711', 1, '', '', '', '', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_users`
--

CREATE TABLE IF NOT EXISTS `gooraye_users` (
`id` int(11) NOT NULL,
  `inviter` int(10) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `mp` varchar(11) NOT NULL DEFAULT '',
  `smscount` int(10) NOT NULL DEFAULT '0',
  `password` varchar(32) NOT NULL,
  `email` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `lasttime` varchar(13) NOT NULL,
  `status` varchar(1) NOT NULL,
  `createip` varchar(30) NOT NULL,
  `lastip` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `activitynum` int(11) NOT NULL,
  `card_num` int(11) NOT NULL,
  `card_create_status` tinyint(1) NOT NULL,
  `money` int(11) NOT NULL,
  `moneybalance` int(10) NOT NULL DEFAULT '0',
  `spend` int(5) NOT NULL DEFAULT '0',
  `viptime` varchar(13) NOT NULL,
  `connectnum` int(11) NOT NULL DEFAULT '0',
  `lastloginmonth` smallint(2) NOT NULL DEFAULT '0',
  `attachmentsize` int(10) NOT NULL DEFAULT '0',
  `wechat_card_num` int(3) NOT NULL,
  `serviceUserNum` tinyint(3) NOT NULL,
  `invitecode` varchar(6) NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='前台用户表' AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `gooraye_users`
--

INSERT INTO `gooraye_users` (`id`, `inviter`, `gid`, `username`, `mp`, `smscount`, `password`, `email`, `createtime`, `lasttime`, `status`, `createip`, `lastip`, `diynum`, `activitynum`, `card_num`, `card_create_status`, `money`, `moneybalance`, `spend`, `viptime`, `connectnum`, `lastloginmonth`, `attachmentsize`, `wechat_card_num`, `serviceUserNum`, `invitecode`) VALUES
(7, 0, 6, 'hbd', '', 0, 'e10adc3949ba59abbe56e057f20f883e', '123456@qq.com', '1402964677', '1403609393', '1', '122.236.100.32', '122.236.102.106', 0, 6, 0, 0, 0, 0, 0, '1405526400', 472, 6, 23448, 1, 1, 'mjybaj'),
(8, 0, 6, 'xmf', '', 0, 'e10adc3949ba59abbe56e057f20f883e', '1234567@qq.com', '1403054262', '1403611561', '1', '122.236.118.196', '122.236.102.106', 30, 6, 0, 0, 0, 0, 0, '1405612800', 276, 6, 160724, 1, 2, 'ethgva'),
(9, 0, 6, 'huangbo', '', 0, 'c1ed6e9bb082124cdf955a0d88813384', '597450489@qq.com', '1403345133', '1403491219', '1', '122.236.116.144', '122.236.102.106', 0, 5, 0, 0, 0, 0, 0, '1662480000', 0, 6, 0, 0, 0, 'dmckhu'),
(10, 0, 6, 'test2222', '', 0, 'b0baee9d279d34fa1dfd71aadb908c3f', 'dsdfjs@jsdhjskdhf.com', '1403510238', '1403594208', '1', '122.224.56.170', '122.224.56.170', 0, 2, 0, 0, 0, 0, 0, '1662652800', 0, 6, 0, 0, 0, 'gbqbtm');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_user_group`
--

CREATE TABLE IF NOT EXISTS `gooraye_user_group` (
`id` int(11) NOT NULL,
  `taxisid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `connectnum` int(11) NOT NULL,
  `iscopyright` tinyint(1) NOT NULL,
  `activitynum` int(3) NOT NULL,
  `price` int(11) NOT NULL,
  `statistics_user` int(11) NOT NULL,
  `create_card_num` int(4) NOT NULL,
  `wechat_card_num` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `gooraye_user_group`
--

INSERT INTO `gooraye_user_group` (`id`, `taxisid`, `name`, `diynum`, `connectnum`, `iscopyright`, `activitynum`, `price`, `statistics_user`, `create_card_num`, `wechat_card_num`, `status`) VALUES
(6, 1, 'VIP', 1000000, 1000000, 1, 100, 0, 0, 1000, 5, 1);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_user_request`
--

CREATE TABLE IF NOT EXISTS `gooraye_user_request` (
`id` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `msgtype` varchar(15) NOT NULL DEFAULT 'text',
  `time` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `gooraye_user_request`
--

INSERT INTO `gooraye_user_request` (`id`, `token`, `uid`, `keyword`, `msgtype`, `time`) VALUES
(1, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '120.604453,30.106929', 'location', 1402975366),
(2, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', '开车去', 'text', 1402975384),
(3, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '120.604492,30.107189', 'location', 1403083469),
(4, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', '附近便利店', 'text', 1403083455);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_voiceresponse`
--

CREATE TABLE IF NOT EXISTS `gooraye_voiceresponse` (
`id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `uptatetime` varchar(13) NOT NULL,
  `keyword` char(255) NOT NULL,
  `title` varchar(60) NOT NULL,
  `musicurl` char(255) NOT NULL,
  `hqmusicurl` char(255) NOT NULL,
  `description` char(255) NOT NULL,
  `token` char(30) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='语音回复表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `gooraye_voiceresponse`
--

INSERT INTO `gooraye_voiceresponse` (`id`, `uid`, `uname`, `createtime`, `uptatetime`, `keyword`, `title`, `musicurl`, `hqmusicurl`, `description`, `token`) VALUES
(1, 8, 'xmf', '1403060485', '1403060485', '语音回复', '二级域名地址问题', 'http://114.215.198.83//tpl/static/attachment/music/default/1.mp3', 'http://114.215.198.83//tpl/static/attachment/music/default/1.mp3', '二级域名地址问题', 'caspcu1403054302');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_vote`
--

CREATE TABLE IF NOT EXISTS `gooraye_vote` (
`id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` char(5) NOT NULL COMMENT 'text/img 文本/图片',
  `picurl` varchar(500) NOT NULL,
  `showpic` tinyint(4) NOT NULL COMMENT '是否显示图片',
  `info` varchar(500) NOT NULL COMMENT '投票说明',
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `display` tinyint(4) NOT NULL COMMENT '1投票前0投票后2投票结束',
  `cknums` tinyint(3) NOT NULL DEFAULT '1' COMMENT '最多可选择，默认1',
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `gooraye_vote`
--

INSERT INTO `gooraye_vote` (`id`, `title`, `keyword`, `token`, `type`, `picurl`, `showpic`, `info`, `statdate`, `enddate`, `display`, `cknums`, `status`) VALUES
(1, '投票', '投票', 'ubddyd1402964682', 'img', 'http://114.215.198.83/tpl/static/attachment/icon/lovely/1.png', 1, '投票投票投票投票投票投票投票投票投票投票投票投票投票投票投票投票投票投票投票投票投票投票投票投票投票投票投票投票投票投票投票投票投票投票投票', 1403366400, 1405008000, 0, 1, 0),
(2, '投票', '投票1', 'ubddyd1402964682', 'text', 'http://114.215.198.83/tpl/static/attachment/icon/lovely/1.png', 1, '投票', 1403366400, 1403712000, 0, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_vote_item`
--

CREATE TABLE IF NOT EXISTS `gooraye_vote_item` (
`id` int(11) NOT NULL,
  `vid` int(11) NOT NULL COMMENT 'vote_id',
  `item` varchar(50) NOT NULL,
  `vcount` int(11) NOT NULL,
  `startpicurl` varchar(200) NOT NULL DEFAULT '',
  `tourl` varchar(200) NOT NULL DEFAULT '',
  `rank` tinyint(4) NOT NULL COMMENT '排序'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `gooraye_vote_item`
--

INSERT INTO `gooraye_vote_item` (`id`, `vid`, `item`, `vcount`, `startpicurl`, `tourl`, `rank`) VALUES
(1, 1, '投票', 2, '', '#', 1),
(2, 1, '投票', 0, '#', '#', 1),
(3, 2, '投票', 1, '', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_vote_record`
--

CREATE TABLE IF NOT EXISTS `gooraye_vote_record` (
`id` int(11) NOT NULL,
  `item_id` varchar(50) NOT NULL COMMENT '投票项 1,2,3,',
  `vid` int(11) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `touched` tinyint(4) NOT NULL,
  `touch_time` int(11) NOT NULL COMMENT '投票日期',
  `token` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `gooraye_vote_record`
--

INSERT INTO `gooraye_vote_record` (`id`, `item_id`, `vid`, `wecha_id`, `touched`, `touch_time`, `token`) VALUES
(1, '1', 1, 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', 1, 1403493955, 'ubddyd1402964682'),
(2, '3', 2, 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', 1, 1403509885, 'ubddyd1402964682');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_wall`
--

CREATE TABLE IF NOT EXISTS `gooraye_wall` (
`id` int(11) NOT NULL,
  `token` varchar(20) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `logo` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `startbackground` varchar(100) NOT NULL DEFAULT '',
  `background` varchar(100) NOT NULL DEFAULT '',
  `endbackground` varchar(100) NOT NULL DEFAULT '',
  `isopen` tinyint(1) NOT NULL DEFAULT '1',
  `firstprizename` varchar(50) NOT NULL DEFAULT '',
  `firstprizepic` varchar(100) NOT NULL DEFAULT '',
  `firstprizecount` mediumint(5) NOT NULL DEFAULT '0',
  `secondprizename` varchar(50) NOT NULL DEFAULT '',
  `secondprizecount` mediumint(4) NOT NULL DEFAULT '0',
  `secondprizepic` varchar(50) NOT NULL DEFAULT '',
  `thirdprizename` varchar(50) NOT NULL DEFAULT '',
  `thirdprizepic` varchar(100) NOT NULL DEFAULT '',
  `thirdprizecount` mediumint(4) NOT NULL DEFAULT '0',
  `fourthprizename` varchar(50) NOT NULL DEFAULT '',
  `fourthprizecount` mediumint(4) NOT NULL DEFAULT '0',
  `fourthprizepic` varchar(100) NOT NULL DEFAULT '',
  `fifthprizename` varchar(50) NOT NULL DEFAULT '',
  `fifthprizecount` mediumint(5) NOT NULL DEFAULT '0',
  `fifthprizepic` varchar(100) NOT NULL DEFAULT '',
  `sixthprizename` varchar(50) NOT NULL DEFAULT '',
  `sixthprizecount` mediumint(4) NOT NULL DEFAULT '0',
  `sixthprizepic` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `qrcode` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `gooraye_wall`
--

INSERT INTO `gooraye_wall` (`id`, `token`, `time`, `logo`, `title`, `startbackground`, `background`, `endbackground`, `isopen`, `firstprizename`, `firstprizepic`, `firstprizecount`, `secondprizename`, `secondprizecount`, `secondprizepic`, `thirdprizename`, `thirdprizepic`, `thirdprizecount`, `fourthprizename`, `fourthprizecount`, `fourthprizepic`, `fifthprizename`, `fifthprizecount`, `fifthprizepic`, `sixthprizename`, `sixthprizecount`, `sixthprizepic`, `keyword`, `qrcode`) VALUES
(2, 'caspcu1403054302', 1403344243, 'http://114.215.198.83/tpl/static/attachment/icon/lovely/store.png', '微信墙测试', 'http://114.215.198.83/tpl/static/attachment/background/view/1.jpg', 'http://114.215.198.83/tpl/static/attachment/background/view/5.jpg', 'http://114.215.198.83/tpl/static/attachment/background/view/8.jpg', 1, '一等奖', '', 2, '二等奖', 2, '', '', '', 2, '', 0, '', '', 0, '', '', 0, '', '微信墙', '');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_wall_member`
--

CREATE TABLE IF NOT EXISTS `gooraye_wall_member` (
`id` int(11) NOT NULL,
  `token` varchar(20) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `portrait` varchar(150) NOT NULL DEFAULT '',
  `nickname` varchar(60) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `wallid` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sex` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `gooraye_wall_member`
--

INSERT INTO `gooraye_wall_member` (`id`, `token`, `wecha_id`, `portrait`, `nickname`, `mp`, `time`, `wallid`, `status`, `sex`) VALUES
(3, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', 'http://114.215.198.83/tpl/static/portrait/7.jpg', '何必都', '13484379290', 1403344468, 2, 1, 0),
(4, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', 'http://114.215.198.83/tpl/static/portrait/10.jpg', '2222', '15058026959', 1403579265, 2, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_wall_message`
--

CREATE TABLE IF NOT EXISTS `gooraye_wall_message` (
`id` int(10) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `wallid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(20) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `content` varchar(500) NOT NULL DEFAULT '',
  `picture` varchar(150) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `gooraye_wall_message`
--

INSERT INTO `gooraye_wall_message` (`id`, `uid`, `wallid`, `token`, `wecha_id`, `content`, `picture`, `time`) VALUES
(11, 3, 2, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '/::)我进入了吗', '', 1403344567),
(12, 3, 2, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', '妮妮', '', 1403344601),
(13, 4, 2, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '', 'http://mmbiz.qpic.cn/mmbiz/qvs1Vm71r3yOlzvjpn0dwOEhHvG7OFIT9hwOsUKZWFQbTLvaha6wuOgKWP4KDArxQdIpSmR52nlptbrVaD4NpA/0', 1403579312),
(14, 4, 2, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', '', 'http://mmbiz.qpic.cn/mmbiz/qvs1Vm71r3yOlzvjpn0dwOEhHvG7OFITWXAV07FXSbe9yaTnIQKVJgyeB22cPM6yaNN2hubSP9WibDfSGzD62Ww/0', 1403579412);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_wall_prize_record`
--

CREATE TABLE IF NOT EXISTS `gooraye_wall_prize_record` (
`id` int(11) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `wallid` int(11) NOT NULL DEFAULT '0',
  `prize` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `gooraye_wall_prize_record`
--

INSERT INTO `gooraye_wall_prize_record` (`id`, `uid`, `wallid`, `prize`, `time`) VALUES
(1, 2, 1, 1, 1398232304),
(2, 1, 1, 1, 1398232307),
(3, 3, 2, 3, 1403344705),
(4, 4, 2, 3, 1403579658);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_weather`
--

CREATE TABLE IF NOT EXISTS `gooraye_weather` (
`id` int(4) NOT NULL,
  `code` char(9) NOT NULL,
  `name` varchar(16) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2502 ;

--
-- 转存表中的数据 `gooraye_weather`
--

INSERT INTO `gooraye_weather` (`id`, `code`, `name`) VALUES
(1, '101010100', '北京'),
(2, '101010200', '海淀'),
(3, '101010400', '顺义'),
(4, '101010500', '怀柔'),
(5, '101010600', '通州'),
(6, '101010700', '昌平'),
(7, '101010800', '延庆'),
(8, '101010900', '丰台'),
(9, '101011000', '石景山'),
(10, '101011100', '大兴'),
(11, '101011200', '房山'),
(12, '101011300', '密云'),
(13, '101011400', '门头沟'),
(14, '101011500', '平谷'),
(15, '101020100', '上海'),
(16, '101020200', '闵行'),
(17, '101020300', '宝山'),
(18, '101020500', '嘉定'),
(19, '101020600', '浦东南汇'),
(20, '101020700', '金山'),
(21, '101020800', '青浦'),
(22, '101020900', '松江'),
(23, '101021000', '奉贤'),
(24, '101021100', '崇明'),
(25, '101021300', '浦东'),
(26, '101030200', '武清'),
(27, '101030300', '宝坻'),
(28, '101030400', '东丽'),
(29, '101030500', '西青'),
(30, '101030600', '北辰'),
(31, '101030700', '宁河'),
(32, '101030800', '汉沽'),
(33, '101030900', '静海'),
(34, '101031000', '津南'),
(35, '101031100', '塘沽'),
(36, '101031200', '大港'),
(37, '101031400', '蓟县'),
(38, '101040100', '重庆'),
(39, '101040200', '永川'),
(40, '101040300', '合川'),
(41, '101040400', '南川'),
(42, '101040500', '江津'),
(43, '101040600', '万盛'),
(44, '101040700', '渝北'),
(45, '101040800', '北碚'),
(46, '101041000', '长寿'),
(47, '101041100', '黔江'),
(48, '101041300', '万州'),
(49, '101041400', '涪陵'),
(50, '101041500', '开县'),
(51, '101041600', '城口'),
(52, '101041700', '云阳'),
(53, '101041800', '巫溪'),
(54, '101041900', '奉节'),
(55, '101042000', '巫山'),
(56, '101042100', '潼南'),
(57, '101042200', '垫江'),
(58, '101042300', '梁平'),
(59, '101042400', '忠县'),
(60, '101042500', '石柱'),
(61, '101042600', '大足'),
(62, '101042700', '荣昌'),
(63, '101042800', '铜梁'),
(64, '101042900', '璧山'),
(65, '101043000', '丰都'),
(66, '101043100', '武隆'),
(67, '101043200', '彭水'),
(68, '101043300', '綦江'),
(69, '101043400', '酉阳'),
(70, '101043600', '秀山'),
(71, '101050101', '哈尔滨'),
(72, '101050102', '双城'),
(73, '101050103', '呼兰'),
(74, '101050104', '阿城'),
(75, '101050105', '宾县'),
(76, '101050106', '依兰'),
(77, '101050107', '巴彦'),
(78, '101050108', '通河'),
(79, '101050109', '方正'),
(80, '101050110', '延寿'),
(81, '101050111', '尚志'),
(82, '101050112', '五常'),
(83, '101050113', '木兰'),
(84, '101050201', '齐齐哈尔'),
(85, '101050202', '讷河'),
(86, '101050203', '龙江'),
(87, '101050204', '甘南'),
(88, '101050205', '富裕'),
(89, '101050206', '依安'),
(90, '101050207', '拜泉'),
(91, '101050208', '克山'),
(92, '101050209', '克东'),
(93, '101050210', '泰来'),
(94, '101050301', '牡丹江'),
(95, '101050302', '海林'),
(96, '101050303', '穆棱'),
(97, '101050304', '林口'),
(98, '101050305', '绥芬河'),
(99, '101050306', '宁安'),
(100, '101050307', '东宁'),
(101, '101050401', '佳木斯'),
(102, '101050402', '汤原'),
(103, '101050403', '抚远'),
(104, '101050404', '桦川'),
(105, '101050405', '桦南'),
(106, '101050406', '同江'),
(107, '101050407', '富锦'),
(108, '101050501', '绥化'),
(109, '101050502', '肇东'),
(110, '101050503', '安达'),
(111, '101050504', '海伦'),
(112, '101050505', '明水'),
(113, '101050506', '望奎'),
(114, '101050507', '兰西'),
(115, '101050508', '青冈'),
(116, '101050509', '庆安'),
(117, '101050510', '绥棱'),
(118, '101050601', '黑河'),
(119, '101050602', '嫩江'),
(120, '101050603', '孙吴'),
(121, '101050604', '逊克'),
(122, '101050605', '五大连池'),
(123, '101050606', '北安'),
(124, '101050701', '大兴安岭'),
(125, '101050702', '塔河'),
(126, '101050703', '漠河'),
(127, '101050704', '呼玛'),
(128, '101050801', '伊春'),
(129, '101050804', '铁力'),
(130, '101050805', '嘉荫'),
(131, '101050901', '大庆'),
(132, '101050902', '林甸'),
(133, '101050903', '肇州'),
(134, '101050904', '肇源'),
(135, '101050905', '杜蒙'),
(136, '101051002', '七台河'),
(137, '101051003', '勃利'),
(138, '101051101', '鸡西'),
(139, '101051102', '虎林'),
(140, '101051103', '密山'),
(141, '101051104', '鸡东'),
(142, '101051201', '鹤岗'),
(143, '101051202', '绥滨'),
(144, '101051203', '萝北'),
(145, '101051301', '双鸭山'),
(146, '101051302', '集贤'),
(147, '101051303', '宝清'),
(148, '101051304', '饶河'),
(149, '101051305', '友谊'),
(150, '101060101', '长春'),
(151, '101060102', '农安'),
(152, '101060103', '德惠'),
(153, '101060104', '九台'),
(154, '101060105', '榆树'),
(155, '101060201', '吉林'),
(156, '101060202', '舒兰'),
(157, '101060203', '永吉'),
(158, '101060204', '蛟河'),
(159, '101060205', '磐石'),
(160, '101060206', '桦甸'),
(161, '101060302', '敦化'),
(162, '101060303', '安图'),
(163, '101060304', '汪清'),
(164, '101060305', '和龙'),
(165, '101060307', '龙井'),
(166, '101060308', '珲春'),
(167, '101060309', '图们'),
(168, '101060312', '延吉'),
(169, '101060401', '四平'),
(170, '101060402', '双辽'),
(171, '101060403', '梨树'),
(172, '101060404', '公主岭'),
(173, '101060405', '伊通'),
(174, '101060501', '通化'),
(175, '101060502', '梅河口'),
(176, '101060503', '柳河'),
(177, '101060504', '辉南'),
(178, '101060505', '集安'),
(179, '101060601', '白城'),
(180, '101060602', '洮南'),
(181, '101060603', '大安'),
(182, '101060604', '镇赉'),
(183, '101060605', '通榆'),
(184, '101060701', '辽源'),
(185, '101060702', '东丰'),
(186, '101060703', '东辽'),
(187, '101060801', '松原'),
(188, '101060802', '乾安'),
(189, '101060803', '前郭'),
(190, '101060804', '长岭'),
(191, '101060805', '扶余'),
(192, '101060901', '白山'),
(193, '101060902', '靖宇'),
(194, '101060903', '临江'),
(195, '101060905', '长白'),
(196, '101060906', '抚松'),
(197, '101060907', '江源'),
(198, '101070101', '沈阳'),
(199, '101070103', '辽中'),
(200, '101070104', '康平'),
(201, '101070105', '法库'),
(202, '101070106', '新民'),
(203, '101070201', '大连'),
(204, '101070202', '瓦房店'),
(205, '101070204', '普兰店'),
(206, '101070206', '长海'),
(207, '101070207', '庄河'),
(208, '101070301', '鞍山'),
(209, '101070302', '台安'),
(210, '101070303', '岫岩'),
(211, '101070304', '海城'),
(212, '101070401', '抚顺'),
(213, '101070402', '新宾'),
(214, '101070403', '清原'),
(215, '101070501', '本溪'),
(216, '101070504', '桓仁'),
(217, '101070601', '丹东'),
(218, '101070602', '凤城'),
(219, '101070603', '宽甸'),
(220, '101070604', '东港'),
(221, '101070701', '锦州'),
(222, '101070702', '凌海'),
(223, '101070704', '义县'),
(224, '101070705', '黑山'),
(225, '101070706', '北镇'),
(226, '101070801', '营口'),
(227, '101070802', '大石桥'),
(228, '101070803', '盖州'),
(229, '101070901', '阜新'),
(230, '101070902', '彰武'),
(231, '101071001', '辽阳'),
(232, '101071003', '灯塔'),
(233, '101071004', '弓长岭'),
(234, '101071101', '铁岭'),
(235, '101071102', '开原'),
(236, '101071103', '昌图'),
(237, '101071104', '西丰'),
(238, '101071105', '调兵山'),
(239, '101071201', '朝阳'),
(240, '101071203', '凌源'),
(241, '101071204', '喀左'),
(242, '101071205', '北票'),
(243, '101071207', '建平'),
(244, '101071301', '盘锦'),
(245, '101071302', '大洼'),
(246, '101071303', '盘山'),
(247, '101071401', '葫芦岛'),
(248, '101071402', '建昌'),
(249, '101071403', '绥中'),
(250, '101071404', '兴城'),
(251, '101080101', '呼和浩特'),
(252, '101080102', '土左'),
(253, '101080103', '托克托'),
(254, '101080104', '和林格尔'),
(255, '101080105', '清水河'),
(256, '101080107', '武川'),
(257, '101080201', '包头'),
(258, '101080202', '白云鄂博'),
(259, '101080204', '土右'),
(260, '101080205', '固阳'),
(261, '101080206', '达茂'),
(262, '101080301', '乌海'),
(263, '101080401', '乌兰察布'),
(264, '101080402', '卓资'),
(265, '101080403', '化德'),
(266, '101080404', '商都'),
(267, '101080406', '兴和'),
(268, '101080407', '凉城'),
(269, '101080408', '察右前'),
(270, '101080409', '察右中'),
(271, '101080410', '察右后'),
(272, '101080411', '四子王'),
(273, '101080412', '丰镇'),
(274, '101080501', '通辽'),
(275, '101080503', '科左中'),
(276, '101080504', '科左后'),
(277, '101080506', '开鲁'),
(278, '101080507', '库伦'),
(279, '101080508', '奈曼'),
(280, '101080509', '扎鲁特'),
(281, '101080601', '赤峰'),
(282, '101080603', '阿鲁'),
(283, '101080605', '巴林左'),
(284, '101080606', '巴林右'),
(285, '101080607', '林西'),
(286, '101080608', '克什'),
(287, '101080609', '翁牛特'),
(288, '101080611', '喀喇沁'),
(289, '101080613', '宁城'),
(290, '101080614', '敖汉'),
(291, '101080701', '鄂尔多斯'),
(292, '101080703', '达拉特'),
(293, '101080704', '准格尔'),
(294, '101080706', '河南'),
(295, '101080708', '鄂托克'),
(296, '101080709', '杭锦'),
(297, '101080710', '乌审'),
(298, '101080711', '伊金霍洛'),
(299, '101080801', '巴彦淖尔'),
(300, '101080802', '五原'),
(301, '101080803', '磴口'),
(302, '101080804', '乌前'),
(303, '101080806', '乌中'),
(304, '101080807', '乌后'),
(305, '101080810', '杭锦后'),
(306, '101080901', '锡林浩特'),
(307, '101080903', '二连浩特'),
(308, '101080904', '阿巴嘎'),
(309, '101080906', '苏左'),
(310, '101080907', '苏右'),
(311, '101080909', '东乌'),
(312, '101080910', '西乌'),
(313, '101080911', '太仆寺'),
(314, '101080912', '镶黄'),
(315, '101080913', '正镶白'),
(316, '101080914', '正蓝'),
(317, '101080915', '多伦'),
(318, '101081000', '呼伦贝尔'),
(319, '101081001', '海拉尔'),
(320, '101081003', '阿荣'),
(321, '101081004', '莫力达瓦'),
(322, '101081005', '鄂伦春'),
(323, '101081006', '鄂温克'),
(324, '101081007', '陈巴尔虎'),
(325, '101081008', '新左'),
(326, '101081009', '新右'),
(327, '101081010', '满洲里'),
(328, '101081011', '牙克石'),
(329, '101081012', '扎兰屯'),
(330, '101081014', '额尔古纳'),
(331, '101081015', '根河'),
(332, '101081101', '乌兰浩特'),
(333, '101081102', '阿尔山'),
(334, '101081103', '科右中'),
(335, '101081105', '扎赉特'),
(336, '101081107', '突泉'),
(337, '101081108', '霍林郭勒'),
(338, '101081109', '科右前'),
(339, '101081201', '阿拉善'),
(340, '101081202', '阿右'),
(341, '101081203', '额济纳'),
(342, '101090101', '石家庄'),
(343, '101090102', '井陉'),
(344, '101090103', '正定'),
(345, '101090104', '栾城'),
(346, '101090105', '行唐'),
(347, '101090106', '灵寿'),
(348, '101090107', '高邑'),
(349, '101090108', '深泽'),
(350, '101090109', '赞皇'),
(351, '101090110', '无极'),
(352, '101090111', '平山'),
(353, '101090112', '元氏'),
(354, '101090113', '赵县'),
(355, '101090114', '辛集'),
(356, '101090115', '藁城'),
(357, '101090116', '晋州'),
(358, '101090117', '新乐'),
(359, '101090118', '鹿泉'),
(360, '101090201', '保定'),
(361, '101090202', '满城'),
(362, '101090203', '阜平'),
(363, '101090204', '徐水'),
(364, '101090205', '唐县'),
(365, '101090206', '高阳'),
(366, '101090207', '容城'),
(367, '101090209', '涞源'),
(368, '101090210', '望都'),
(369, '101090211', '安新'),
(370, '101090212', '易县'),
(371, '101090214', '曲阳'),
(372, '101090215', '蠡县'),
(373, '101090216', '顺平'),
(374, '101090217', '雄县'),
(375, '101090218', '涿州'),
(376, '101090219', '定州'),
(377, '101090220', '安国'),
(378, '101090221', '高碑店'),
(379, '101090222', '涞水'),
(380, '101090223', '定兴'),
(381, '101090224', '清苑'),
(382, '101090225', '博野'),
(383, '101090301', '张家口'),
(384, '101090302', '宣化'),
(385, '101090303', '张北'),
(386, '101090304', '康保'),
(387, '101090305', '沽源'),
(388, '101090306', '尚义'),
(389, '101090307', '蔚县'),
(390, '101090308', '阳原'),
(391, '101090309', '怀安'),
(392, '101090310', '万全'),
(393, '101090311', '怀来'),
(394, '101090312', '涿鹿'),
(395, '101090313', '赤城'),
(396, '101090314', '崇礼'),
(397, '101090402', '承德'),
(398, '101090404', '兴隆'),
(399, '101090405', '平泉'),
(400, '101090406', '滦平'),
(401, '101090407', '隆化'),
(402, '101090408', '丰宁'),
(403, '101090409', '宽城'),
(404, '101090410', '围场'),
(405, '101090501', '唐山'),
(406, '101090502', '丰南'),
(407, '101090503', '丰润'),
(408, '101090504', '滦县'),
(409, '101090505', '滦南'),
(410, '101090506', '乐亭'),
(411, '101090507', '迁西'),
(412, '101090508', '玉田'),
(413, '101090509', '唐海'),
(414, '101090510', '遵化'),
(415, '101090511', '迁安'),
(416, '101090512', '曹妃甸'),
(417, '101090601', '廊坊'),
(418, '101090602', '固安'),
(419, '101090603', '永清'),
(420, '101090604', '香河'),
(421, '101090605', '大城'),
(422, '101090606', '文安'),
(423, '101090607', '大厂'),
(424, '101090608', '霸州'),
(425, '101090609', '三河'),
(426, '101090701', '沧州'),
(427, '101090702', '青县'),
(428, '101090703', '东光'),
(429, '101090704', '海兴'),
(430, '101090705', '盐山'),
(431, '101090706', '肃宁'),
(432, '101090707', '南皮'),
(433, '101090708', '吴桥'),
(434, '101090709', '献县'),
(435, '101090710', '孟村'),
(436, '101090711', '泊头'),
(437, '101090712', '任丘'),
(438, '101090713', '黄骅'),
(439, '101090714', '河间'),
(440, '101090716', '沧县'),
(441, '101090801', '衡水'),
(442, '101090802', '枣强'),
(443, '101090803', '武邑'),
(444, '101090804', '武强'),
(445, '101090805', '饶阳'),
(446, '101090806', '安平'),
(447, '101090807', '故城'),
(448, '101090808', '景县'),
(449, '101090809', '阜城'),
(450, '101090810', '冀州'),
(451, '101090811', '深州'),
(452, '101090901', '邢台'),
(453, '101090902', '临城'),
(454, '101090905', '柏乡'),
(455, '101090906', '隆尧'),
(456, '101090907', '南和'),
(457, '101090908', '宁晋'),
(458, '101090909', '巨鹿'),
(459, '101090910', '新河'),
(460, '101090911', '广宗'),
(461, '101090912', '平乡'),
(462, '101090913', '威县'),
(463, '101090914', '清河'),
(464, '101090915', '临西'),
(465, '101090916', '南宫'),
(466, '101090917', '沙河'),
(467, '101090918', '任县'),
(468, '101090919', '内丘'),
(469, '101091001', '邯郸'),
(470, '101091002', '峰峰矿'),
(471, '101091003', '临漳'),
(472, '101091004', '成安'),
(473, '101091005', '大名'),
(474, '101091006', '涉县'),
(475, '101091007', '磁县'),
(476, '101091008', '肥乡'),
(477, '101091009', '永年'),
(478, '101091010', '邱县'),
(479, '101091011', '鸡泽'),
(480, '101091012', '广平'),
(481, '101091013', '馆陶'),
(482, '101091014', '魏县'),
(483, '101091015', '曲周'),
(484, '101091016', '武安'),
(485, '101091101', '秦皇岛'),
(486, '101091102', '青龙'),
(487, '101091103', '昌黎'),
(488, '101091104', '抚宁'),
(489, '101091105', '卢龙'),
(490, '101100101', '太原'),
(491, '101100102', '清徐'),
(492, '101100103', '阳曲'),
(493, '101100104', '娄烦'),
(494, '101100105', '古交'),
(495, '101100201', '大同'),
(496, '101100202', '阳高'),
(497, '101100204', '天镇'),
(498, '101100205', '广灵'),
(499, '101100206', '灵丘'),
(500, '101100207', '浑源'),
(501, '101100208', '左云'),
(502, '101100301', '阳泉'),
(503, '101100302', '盂县'),
(504, '101100303', '平定'),
(505, '101100401', '晋中'),
(506, '101100403', '榆社'),
(507, '101100404', '左权'),
(508, '101100405', '和顺'),
(509, '101100406', '昔阳'),
(510, '101100407', '寿阳'),
(511, '101100408', '太谷'),
(512, '101100409', '祁县'),
(513, '101100410', '平遥'),
(514, '101100411', '灵石'),
(515, '101100412', '介休'),
(516, '101100501', '长治'),
(517, '101100502', '黎城'),
(518, '101100503', '屯留'),
(519, '101100504', '潞城'),
(520, '101100505', '襄垣'),
(521, '101100506', '平顺'),
(522, '101100507', '武乡'),
(523, '101100508', '沁县'),
(524, '101100509', '长子'),
(525, '101100510', '沁源'),
(526, '101100511', '壶关'),
(527, '101100601', '晋城'),
(528, '101100602', '沁水'),
(529, '101100603', '阳城'),
(530, '101100604', '陵川'),
(531, '101100605', '高平'),
(532, '101100606', '泽州'),
(533, '101100701', '临汾'),
(534, '101100702', '曲沃'),
(535, '101100703', '永和'),
(536, '101100704', '隰县'),
(537, '101100705', '大宁'),
(538, '101100706', '吉县'),
(539, '101100707', '襄汾'),
(540, '101100708', '蒲县'),
(541, '101100709', '汾西'),
(542, '101100710', '洪洞'),
(543, '101100711', '霍州'),
(544, '101100712', '乡宁'),
(545, '101100713', '翼城'),
(546, '101100714', '侯马'),
(547, '101100715', '浮山'),
(548, '101100716', '安泽'),
(549, '101100717', '古县'),
(550, '101100801', '运城'),
(551, '101100802', '临猗'),
(552, '101100803', '稷山'),
(553, '101100804', '万荣'),
(554, '101100805', '河津'),
(555, '101100806', '新绛'),
(556, '101100807', '绛县'),
(557, '101100808', '闻喜'),
(558, '101100809', '垣曲'),
(559, '101100810', '永济'),
(560, '101100811', '芮城'),
(561, '101100812', '夏县'),
(562, '101100813', '平陆'),
(563, '101100901', '朔州'),
(564, '101100903', '山阴'),
(565, '101100904', '右玉'),
(566, '101100905', '应县'),
(567, '101100906', '怀仁'),
(568, '101101001', '忻州'),
(569, '101101002', '定襄'),
(570, '101101003', '五台'),
(571, '101101004', '河曲'),
(572, '101101005', '偏关'),
(573, '101101006', '神池'),
(574, '101101007', '宁武'),
(575, '101101008', '代县'),
(576, '101101009', '繁峙'),
(577, '101101011', '保德'),
(578, '101101012', '静乐'),
(579, '101101013', '岢岚'),
(580, '101101014', '五寨'),
(581, '101101015', '原平'),
(582, '101101100', '吕梁'),
(583, '101101101', '离石'),
(584, '101101102', '临县'),
(585, '101101103', '兴县'),
(586, '101101104', '岚县'),
(587, '101101105', '柳林'),
(588, '101101106', '石楼'),
(589, '101101107', '方山'),
(590, '101101108', '交口'),
(591, '101101109', '中阳'),
(592, '101101110', '孝义'),
(593, '101101111', '汾阳'),
(594, '101101112', '文水'),
(595, '101101113', '交城'),
(596, '101110101', '西安'),
(597, '101110102', '长安'),
(598, '101110104', '蓝田'),
(599, '101110105', '周至'),
(600, '101110106', '户县'),
(601, '101110107', '高陵'),
(602, '101110200', '咸阳'),
(603, '101110201', '三原'),
(604, '101110202', '礼泉'),
(605, '101110203', '永寿'),
(606, '101110204', '淳化'),
(607, '101110205', '泾阳'),
(608, '101110206', '武功'),
(609, '101110207', '乾县'),
(610, '101110208', '彬县'),
(611, '101110209', '长武'),
(612, '101110210', '旬邑'),
(613, '101110211', '兴平'),
(614, '101110300', '延安'),
(615, '101110401', '榆林'),
(616, '101110402', '府谷'),
(617, '101110403', '神木'),
(618, '101110404', '佳县'),
(619, '101110405', '定边'),
(620, '101110406', '靖边'),
(621, '101110407', '横山'),
(622, '101110408', '米脂'),
(623, '101110409', '子洲'),
(624, '101110410', '绥德'),
(625, '101110411', '吴堡'),
(626, '101110412', '清涧'),
(627, '101110501', '渭南'),
(628, '101110502', '华县'),
(629, '101110503', '潼关'),
(630, '101110504', '大荔'),
(631, '101110505', '白水'),
(632, '101110506', '富平'),
(633, '101110507', '蒲城'),
(634, '101110508', '澄城'),
(635, '101110509', '合阳'),
(636, '101110510', '韩城'),
(637, '101110511', '华阴'),
(638, '101110601', '商洛'),
(639, '101110602', '洛南'),
(640, '101110603', '柞水'),
(641, '101110604', '商州'),
(642, '101110605', '镇安'),
(643, '101110606', '丹凤'),
(644, '101110607', '商南'),
(645, '101110608', '山阳'),
(646, '101110701', '安康'),
(647, '101110702', '紫阳'),
(648, '101110703', '石泉'),
(649, '101110704', '汉阴'),
(650, '101110705', '旬阳'),
(651, '101110706', '岚皋'),
(652, '101110707', '平利'),
(653, '101110708', '白河'),
(654, '101110709', '镇坪'),
(655, '101110710', '宁陕'),
(656, '101110801', '汉中'),
(657, '101110802', '略阳'),
(658, '101110803', '勉县'),
(659, '101110804', '留坝'),
(660, '101110805', '洋县'),
(661, '101110806', '城固'),
(662, '101110807', '西乡'),
(663, '101110808', '佛坪'),
(664, '101110809', '宁强'),
(665, '101110810', '南郑'),
(666, '101110811', '镇巴'),
(667, '101110901', '宝鸡'),
(668, '101110903', '千阳'),
(669, '101110904', '麟游'),
(670, '101110905', '岐山'),
(671, '101110906', '凤翔'),
(672, '101110907', '扶风'),
(673, '101110908', '眉县'),
(674, '101110909', '太白'),
(675, '101110910', '凤县'),
(676, '101110911', '陇县'),
(677, '101111001', '铜川'),
(678, '101111003', '宜君'),
(679, '101111101', '杨凌'),
(680, '101120101', '济南'),
(681, '101120103', '商河'),
(682, '101120104', '章丘'),
(683, '101120105', '平阴'),
(684, '101120106', '济阳'),
(685, '101120201', '青岛'),
(686, '101120204', '即墨'),
(687, '101120205', '胶州'),
(688, '101120206', '胶南'),
(689, '101120207', '莱西'),
(690, '101120208', '平度'),
(691, '101120301', '淄博'),
(692, '101120304', '高青'),
(693, '101120306', '沂源'),
(694, '101120307', '桓台'),
(695, '101120401', '德州'),
(696, '101120402', '武城'),
(697, '101120403', '临邑'),
(698, '101120404', '陵县'),
(699, '101120405', '齐河'),
(700, '101120406', '乐陵'),
(701, '101120407', '庆云'),
(702, '101120408', '平原'),
(703, '101120409', '宁津'),
(704, '101120410', '夏津'),
(705, '101120411', '禹城'),
(706, '101120501', '烟台'),
(707, '101120502', '莱州'),
(708, '101120503', '长岛'),
(709, '101120504', '蓬莱'),
(710, '101120505', '龙口'),
(711, '101120506', '招远'),
(712, '101120507', '栖霞'),
(713, '101120510', '莱阳'),
(714, '101120511', '海阳'),
(715, '101120601', '潍坊'),
(716, '101120602', '青州'),
(717, '101120603', '寿光'),
(718, '101120604', '临朐'),
(719, '101120605', '昌乐'),
(720, '101120606', '昌邑'),
(721, '101120607', '安丘'),
(722, '101120608', '高密'),
(723, '101120609', '诸城'),
(724, '101120701', '济宁'),
(725, '101120702', '嘉祥'),
(726, '101120703', '微山'),
(727, '101120704', '鱼台'),
(728, '101120705', '兖州'),
(729, '101120706', '金乡'),
(730, '101120707', '汶上'),
(731, '101120708', '泗水'),
(732, '101120709', '梁山'),
(733, '101120710', '曲阜'),
(734, '101120711', '邹城'),
(735, '101120801', '泰安'),
(736, '101120802', '新泰'),
(737, '101120804', '肥城'),
(738, '101120805', '东平'),
(739, '101120806', '宁阳'),
(740, '101120901', '临沂'),
(741, '101120902', '莒南'),
(742, '101120903', '沂南'),
(743, '101120904', '苍山'),
(744, '101120905', '临沭'),
(745, '101120906', '郯城'),
(746, '101120907', '蒙阴'),
(747, '101120908', '平邑'),
(748, '101120909', '费县'),
(749, '101120910', '沂水'),
(750, '101121001', '菏泽'),
(751, '101121002', '鄄城'),
(752, '101121003', '郓城'),
(753, '101121004', '东明'),
(754, '101121005', '定陶'),
(755, '101121006', '巨野'),
(756, '101121007', '曹县'),
(757, '101121008', '成武'),
(758, '101121009', '单县'),
(759, '101121101', '滨州'),
(760, '101121102', '博兴'),
(761, '101121103', '无棣'),
(762, '101121104', '阳信'),
(763, '101121105', '惠民'),
(764, '101121106', '沾化'),
(765, '101121107', '邹平'),
(766, '101121201', '东营'),
(767, '101121203', '垦利'),
(768, '101121204', '利津'),
(769, '101121205', '广饶'),
(770, '101121301', '威海'),
(771, '101121302', '文登'),
(772, '101121303', '荣成'),
(773, '101121304', '乳山'),
(774, '101121401', '枣庄'),
(775, '101121405', '滕州'),
(776, '101121501', '日照'),
(777, '101121502', '五莲'),
(778, '101121503', '莒县'),
(779, '101121601', '莱芜'),
(780, '101121701', '聊城'),
(781, '101121702', '冠县'),
(782, '101121703', '阳谷'),
(783, '101121704', '高唐'),
(784, '101121705', '茌平'),
(785, '101121706', '东阿'),
(786, '101121707', '临清'),
(787, '101121709', '莘县'),
(788, '101130101', '乌鲁木齐'),
(789, '101130105', '达坂城'),
(790, '101130201', '克拉玛依'),
(791, '101130202', '乌尔禾'),
(792, '101130203', '白碱滩'),
(793, '101130301', '石河子'),
(794, '101130401', '昌吉'),
(795, '101130402', '呼图壁'),
(796, '101130403', '米泉'),
(797, '101130404', '阜康'),
(798, '101130405', '吉木萨尔'),
(799, '101130406', '奇台'),
(800, '101130407', '玛纳斯'),
(801, '101130408', '木垒'),
(802, '101130501', '吐鲁番'),
(803, '101130503', '克州'),
(804, '101130504', '鄯善'),
(805, '101130601', '库尔勒'),
(806, '101130602', '轮台'),
(807, '101130603', '尉犁'),
(808, '101130604', '若羌'),
(809, '101130605', '且末'),
(810, '101130606', '和静'),
(811, '101130607', '焉耆'),
(812, '101130608', '和硕'),
(813, '101130612', '博湖'),
(814, '101130701', '阿拉尔'),
(815, '101130801', '阿克苏'),
(816, '101130802', '乌什'),
(817, '101130803', '温宿'),
(818, '101130804', '拜城'),
(819, '101130805', '新和'),
(820, '101130806', '沙雅'),
(821, '101130807', '库车'),
(822, '101130808', '柯坪'),
(823, '101130809', '阿瓦提'),
(824, '101130901', '喀什'),
(825, '101130902', '英吉沙'),
(826, '101130903', '塔什库尔干'),
(827, '101130904', '麦盖提'),
(828, '101130905', '莎车'),
(829, '101130906', '叶城'),
(830, '101130907', '泽普'),
(831, '101130908', '巴楚'),
(832, '101130909', '岳普湖'),
(833, '101130910', '伽师'),
(834, '101130911', '疏附'),
(835, '101130912', '疏勒'),
(836, '101131001', '伊宁'),
(837, '101131002', '察布查尔'),
(838, '101131003', '尼勒克'),
(839, '101131005', '巩留'),
(840, '101131006', '新源'),
(841, '101131007', '昭苏'),
(842, '101131008', '特克斯'),
(843, '101131009', '霍城'),
(844, '101131011', '奎屯'),
(845, '101131101', '塔城'),
(846, '101131102', '裕民'),
(847, '101131103', '额敏'),
(848, '101131104', '和布克赛尔'),
(849, '101131105', '托里'),
(850, '101131106', '乌苏'),
(851, '101131107', '沙湾'),
(852, '101131201', '哈密'),
(853, '101131203', '巴里坤'),
(854, '101131204', '伊吾'),
(855, '101131301', '和田'),
(856, '101131302', '皮山'),
(857, '101131303', '策勒'),
(858, '101131304', '墨玉'),
(859, '101131305', '洛浦'),
(860, '101131306', '民丰'),
(861, '101131307', '于田'),
(862, '101131401', '阿勒泰'),
(863, '101131402', '哈巴河'),
(864, '101131405', '吉木乃'),
(865, '101131406', '布尔津'),
(866, '101131407', '福海'),
(867, '101131408', '富蕴'),
(868, '101131409', '青河'),
(869, '101131501', '阿图什'),
(870, '101131502', '乌恰'),
(871, '101131503', '阿克陶'),
(872, '101131504', '阿合奇'),
(873, '101131601', '博乐'),
(874, '101131602', '温泉'),
(875, '101131603', '精河'),
(876, '101140101', '拉萨'),
(877, '101140102', '当雄'),
(878, '101140103', '尼木'),
(879, '101140104', '林周'),
(880, '101140105', '堆龙德庆'),
(881, '101140106', '曲水'),
(882, '101140107', '达孜'),
(883, '101140108', '墨竹工卡'),
(884, '101140201', '日喀则'),
(885, '101140202', '拉孜'),
(886, '101140204', '聂拉木'),
(887, '101140205', '定日'),
(888, '101140206', '江孜'),
(889, '101140208', '仲巴'),
(890, '101140209', '萨嘎'),
(891, '101140210', '吉隆'),
(892, '101140211', '昂仁'),
(893, '101140212', '定结'),
(894, '101140213', '萨迦'),
(895, '101140214', '谢通门'),
(896, '101140215', '楠木林'),
(897, '101140216', '岗巴'),
(898, '101140217', '白朗'),
(899, '101140218', '亚东'),
(900, '101140219', '康马'),
(901, '101140220', '仁布'),
(902, '101140301', '山南'),
(903, '101140302', '贡嘎'),
(904, '101140303', '札囊'),
(905, '101140304', '加查'),
(906, '101140305', '浪卡子'),
(907, '101140306', '错那'),
(908, '101140307', '隆子'),
(909, '101140309', '乃东'),
(910, '101140310', '桑日'),
(911, '101140311', '洛扎'),
(912, '101140312', '措美'),
(913, '101140313', '琼结'),
(914, '101140314', '曲松'),
(915, '101140401', '林芝'),
(916, '101140402', '波密'),
(917, '101140403', '米林'),
(918, '101140404', '察隅'),
(919, '101140405', '工布江达'),
(920, '101140406', '朗县'),
(921, '101140407', '墨脱'),
(922, '101140501', '昌都'),
(923, '101140502', '丁青'),
(924, '101140503', '边坝'),
(925, '101140504', '洛隆'),
(926, '101140505', '左贡'),
(927, '101140506', '芒康'),
(928, '101140507', '类乌齐'),
(929, '101140508', '八宿'),
(930, '101140509', '江达'),
(931, '101140510', '察雅'),
(932, '101140511', '贡觉'),
(933, '101140601', '那曲'),
(934, '101140602', '尼玛'),
(935, '101140603', '嘉黎'),
(936, '101140604', '班戈'),
(937, '101140605', '安多'),
(938, '101140606', '索县'),
(939, '101140607', '聂荣'),
(940, '101140608', '巴青'),
(941, '101140609', '比如'),
(942, '101140610', '双湖'),
(943, '101140701', '阿里'),
(944, '101140702', '改则'),
(945, '101140703', '申扎'),
(946, '101140705', '普兰'),
(947, '101140706', '札达'),
(948, '101140707', '噶尔'),
(949, '101140708', '日土'),
(950, '101140709', '革吉'),
(951, '101140710', '措勤'),
(952, '101150101', '西宁'),
(953, '101150102', '大通'),
(954, '101150103', '湟源'),
(955, '101150104', '湟中'),
(956, '101150201', '海东'),
(957, '101150202', '乐都'),
(958, '101150203', '民和'),
(959, '101150204', '互助'),
(960, '101150205', '化隆'),
(961, '101150206', '循化'),
(962, '101150208', '平安'),
(963, '101150301', '黄南'),
(964, '101150302', '尖扎'),
(965, '101150303', '泽库'),
(966, '101150305', '同仁'),
(967, '101150401', '海南'),
(968, '101150404', '贵德'),
(969, '101150406', '兴海'),
(970, '101150407', '贵南'),
(971, '101150408', '同德'),
(972, '101150409', '共和'),
(973, '101150501', '果洛'),
(974, '101150502', '班玛'),
(975, '101150503', '甘德'),
(976, '101150504', '达日'),
(977, '101150505', '久治'),
(978, '101150506', '玛多'),
(979, '101150508', '玛沁'),
(980, '101150601', '玉树'),
(981, '101150602', '称多'),
(982, '101150603', '治多'),
(983, '101150604', '杂多'),
(984, '101150605', '囊谦'),
(985, '101150606', '曲麻莱'),
(986, '101150701', '海西'),
(987, '101150708', '天峻'),
(988, '101150709', '乌兰'),
(989, '101150716', '德令哈'),
(990, '101150801', '海北'),
(991, '101150802', '门源'),
(992, '101150803', '祁连'),
(993, '101150804', '海晏'),
(994, '101150806', '刚察'),
(995, '101150901', '格尔木'),
(996, '101150902', '都兰'),
(997, '101160101', '兰州'),
(998, '101160102', '皋兰'),
(999, '101160103', '永登'),
(1000, '101160104', '榆中'),
(1001, '101160201', '定西'),
(1002, '101160202', '通渭'),
(1003, '101160203', '陇西'),
(1004, '101160204', '渭源'),
(1005, '101160205', '临洮'),
(1006, '101160206', '漳县'),
(1007, '101160207', '岷县'),
(1008, '101160301', '平凉'),
(1009, '101160302', '泾川'),
(1010, '101160303', '灵台'),
(1011, '101160304', '崇信'),
(1012, '101160305', '华亭'),
(1013, '101160306', '庄浪'),
(1014, '101160307', '静宁'),
(1015, '101160401', '庆阳'),
(1016, '101160402', '西峰'),
(1017, '101160403', '环县'),
(1018, '101160404', '华池'),
(1019, '101160405', '合水'),
(1020, '101160406', '正宁'),
(1021, '101160407', '宁县'),
(1022, '101160408', '镇原'),
(1023, '101160409', '庆城'),
(1024, '101160501', '武威'),
(1025, '101160502', '民勤'),
(1026, '101160503', '古浪'),
(1027, '101160505', '天祝'),
(1028, '101160601', '金昌'),
(1029, '101160602', '永昌'),
(1030, '101160701', '张掖'),
(1031, '101160702', '肃南'),
(1032, '101160703', '民乐'),
(1033, '101160704', '临泽'),
(1034, '101160705', '高台'),
(1035, '101160706', '山丹'),
(1036, '101160801', '酒泉'),
(1037, '101160803', '金塔'),
(1038, '101160804', '阿克塞'),
(1039, '101160805', '瓜州'),
(1040, '101160806', '肃北'),
(1041, '101160807', '玉门'),
(1042, '101160808', '敦煌'),
(1043, '101160901', '天水'),
(1044, '101160903', '清水'),
(1045, '101160904', '秦安'),
(1046, '101160905', '甘谷'),
(1047, '101160906', '武山'),
(1048, '101160907', '张家川'),
(1049, '101161001', '陇南'),
(1050, '101161002', '成县'),
(1051, '101161003', '文县'),
(1052, '101161004', '宕昌'),
(1053, '101161005', '康县'),
(1054, '101161006', '西和'),
(1055, '101161007', '礼县'),
(1056, '101161008', '徽县'),
(1057, '101161009', '两当'),
(1058, '101161101', '临夏'),
(1059, '101161102', '康乐'),
(1060, '101161103', '永靖'),
(1061, '101161104', '广河'),
(1062, '101161105', '和政'),
(1063, '101161107', '积石山'),
(1064, '101161201', '合作'),
(1065, '101161202', '临潭'),
(1066, '101161203', '卓尼'),
(1067, '101161204', '舟曲'),
(1068, '101161205', '迭部'),
(1069, '101161206', '玛曲'),
(1070, '101161207', '碌曲'),
(1071, '101161208', '夏河'),
(1072, '101161301', '白银'),
(1073, '101161302', '靖远'),
(1074, '101161303', '会宁'),
(1075, '101161304', '平川'),
(1076, '101161305', '景泰'),
(1077, '101161401', '嘉峪关'),
(1078, '101170101', '银川'),
(1079, '101170102', '永宁'),
(1080, '101170103', '灵武'),
(1081, '101170104', '贺兰'),
(1082, '101170201', '石嘴山'),
(1083, '101170203', '平罗'),
(1084, '101170301', '吴忠'),
(1085, '101170302', '同心'),
(1086, '101170303', '盐池'),
(1087, '101170306', '青铜峡'),
(1088, '101170401', '固原'),
(1089, '101170402', '西吉'),
(1090, '101170403', '隆德'),
(1091, '101170404', '泾源'),
(1092, '101170406', '彭阳'),
(1093, '101170501', '中卫'),
(1094, '101170502', '中宁'),
(1095, '101170504', '海原'),
(1096, '101180101', '郑州'),
(1097, '101180102', '巩义'),
(1098, '101180103', '荥阳'),
(1099, '101180104', '登封'),
(1100, '101180105', '新密'),
(1101, '101180106', '新郑'),
(1102, '101180107', '中牟'),
(1103, '101180108', '上街'),
(1104, '101180201', '安阳'),
(1105, '101180202', '汤阴'),
(1106, '101180203', '滑县'),
(1107, '101180204', '内黄'),
(1108, '101180205', '林州'),
(1109, '101180301', '新乡'),
(1110, '101180302', '获嘉'),
(1111, '101180303', '原阳'),
(1112, '101180304', '辉县'),
(1113, '101180305', '卫辉'),
(1114, '101180306', '延津'),
(1115, '101180307', '封丘'),
(1116, '101180308', '长垣'),
(1117, '101180401', '许昌'),
(1118, '101180402', '鄢陵'),
(1119, '101180403', '襄城'),
(1120, '101180404', '长葛'),
(1121, '101180405', '禹州'),
(1122, '101180501', '平顶山'),
(1123, '101180502', '郏县'),
(1124, '101180503', '宝丰'),
(1125, '101180504', '汝州'),
(1126, '101180505', '叶县'),
(1127, '101180506', '舞钢'),
(1128, '101180507', '鲁山'),
(1129, '101180508', '石龙'),
(1130, '101180601', '信阳'),
(1131, '101180602', '息县'),
(1132, '101180603', '罗山'),
(1133, '101180604', '光山'),
(1134, '101180605', '新县'),
(1135, '101180606', '淮滨'),
(1136, '101180607', '潢川'),
(1137, '101180608', '固始'),
(1138, '101180609', '商城'),
(1139, '101180701', '南阳'),
(1140, '101180702', '南召'),
(1141, '101180703', '方城'),
(1142, '101180704', '社旗'),
(1143, '101180705', '西峡'),
(1144, '101180706', '内乡'),
(1145, '101180707', '镇平'),
(1146, '101180708', '淅川'),
(1147, '101180709', '新野'),
(1148, '101180710', '唐河'),
(1149, '101180711', '邓州'),
(1150, '101180712', '桐柏'),
(1151, '101180801', '开封'),
(1152, '101180802', '杞县'),
(1153, '101180803', '尉氏'),
(1154, '101180804', '通许'),
(1155, '101180805', '兰考'),
(1156, '101180901', '洛阳'),
(1157, '101180902', '新安'),
(1158, '101180903', '孟津'),
(1159, '101180904', '宜阳'),
(1160, '101180905', '洛宁'),
(1161, '101180906', '伊川'),
(1162, '101180907', '嵩县'),
(1163, '101180908', '偃师'),
(1164, '101180909', '栾川'),
(1165, '101180910', '汝阳'),
(1166, '101180911', '吉利'),
(1167, '101181001', '商丘'),
(1168, '101181003', '睢县'),
(1169, '101181004', '民权'),
(1170, '101181005', '虞城'),
(1171, '101181006', '柘城'),
(1172, '101181007', '宁陵'),
(1173, '101181008', '夏邑'),
(1174, '101181009', '永城'),
(1175, '101181101', '焦作'),
(1176, '101181102', '修武'),
(1177, '101181103', '武陟'),
(1178, '101181104', '沁阳'),
(1179, '101181106', '博爱'),
(1180, '101181107', '温县'),
(1181, '101181108', '孟州'),
(1182, '101181201', '鹤壁'),
(1183, '101181202', '浚县'),
(1184, '101181203', '淇县'),
(1185, '101181301', '濮阳'),
(1186, '101181302', '台前'),
(1187, '101181303', '南乐'),
(1188, '101181304', '清丰'),
(1189, '101181305', '范县'),
(1190, '101181401', '周口'),
(1191, '101181402', '扶沟'),
(1192, '101181403', '太康'),
(1193, '101181404', '淮阳'),
(1194, '101181405', '西华'),
(1195, '101181406', '商水'),
(1196, '101181407', '项城'),
(1197, '101181408', '郸城'),
(1198, '101181409', '鹿邑'),
(1199, '101181410', '沈丘'),
(1200, '101181501', '漯河'),
(1201, '101181502', '临颍'),
(1202, '101181503', '舞阳'),
(1203, '101181504', '临颖'),
(1204, '101181601', '驻马店'),
(1205, '101181602', '西平'),
(1206, '101181603', '遂平'),
(1207, '101181604', '上蔡'),
(1208, '101181605', '汝南'),
(1209, '101181606', '泌阳'),
(1210, '101181607', '平舆'),
(1211, '101181608', '新蔡'),
(1212, '101181609', '确山'),
(1213, '101181610', '正阳'),
(1214, '101181701', '三门峡'),
(1215, '101181702', '灵宝'),
(1216, '101181703', '渑池'),
(1217, '101181704', '卢氏'),
(1218, '101181705', '义马'),
(1219, '101181706', '陕县'),
(1220, '101181801', '济源'),
(1221, '101190101', '南京'),
(1222, '101190102', '溧水'),
(1223, '101190103', '高淳'),
(1224, '101190104', '江宁'),
(1225, '101190105', '六合'),
(1226, '101190107', '浦口'),
(1227, '101190201', '无锡'),
(1228, '101190202', '江阴'),
(1229, '101190203', '宜兴'),
(1230, '101190204', '锡山'),
(1231, '101190301', '镇江'),
(1232, '101190302', '丹阳'),
(1233, '101190303', '扬中'),
(1234, '101190304', '句容'),
(1235, '101190305', '丹徒'),
(1236, '101190401', '苏州'),
(1237, '101190402', '常熟'),
(1238, '101190403', '张家港'),
(1239, '101190404', '昆山'),
(1240, '101190405', '吴中'),
(1241, '101190407', '吴江'),
(1242, '101190408', '太仓'),
(1243, '101190501', '南通'),
(1244, '101190502', '海安'),
(1245, '101190503', '如皋'),
(1246, '101190504', '如东'),
(1247, '101190507', '启东'),
(1248, '101190508', '海门'),
(1249, '101190601', '扬州'),
(1250, '101190602', '宝应'),
(1251, '101190603', '仪征'),
(1252, '101190604', '高邮'),
(1253, '101190605', '江都'),
(1254, '101190606', '邗江'),
(1255, '101190701', '盐城'),
(1256, '101190702', '响水'),
(1257, '101190703', '滨海'),
(1258, '101190704', '阜宁'),
(1259, '101190705', '射阳'),
(1260, '101190706', '建湖'),
(1261, '101190707', '东台'),
(1262, '101190708', '大丰'),
(1263, '101190709', '盐都'),
(1264, '101190801', '徐州'),
(1265, '101190802', '铜山'),
(1266, '101190803', '丰县'),
(1267, '101190804', '沛县'),
(1268, '101190805', '邳州'),
(1269, '101190806', '睢宁'),
(1270, '101190807', '新沂'),
(1271, '101190901', '淮安'),
(1272, '101190902', '金湖'),
(1273, '101190903', '盱眙'),
(1274, '101190904', '洪泽'),
(1275, '101190905', '涟水'),
(1276, '101191001', '连云港'),
(1277, '101191002', '东海'),
(1278, '101191003', '赣榆'),
(1279, '101191004', '灌云'),
(1280, '101191005', '灌南'),
(1281, '101191101', '常州'),
(1282, '101191102', '溧阳'),
(1283, '101191103', '金坛'),
(1284, '101191104', '武进'),
(1285, '101191201', '泰州'),
(1286, '101191202', '兴化'),
(1287, '101191203', '泰兴'),
(1288, '101191204', '姜堰'),
(1289, '101191205', '靖江'),
(1290, '101191301', '宿迁'),
(1291, '101191302', '沭阳'),
(1292, '101191303', '泗阳'),
(1293, '101191304', '泗洪'),
(1294, '101191305', '宿豫'),
(1295, '101200101', '武汉'),
(1296, '101200102', '蔡甸'),
(1297, '101200103', '黄陂'),
(1298, '101200104', '新洲'),
(1299, '101200105', '江夏'),
(1300, '101200106', '东西湖'),
(1301, '101200201', '襄阳'),
(1302, '101200202', '襄州'),
(1303, '101200203', '保康'),
(1304, '101200204', '南漳'),
(1305, '101200205', '宜城'),
(1306, '101200206', '老河口'),
(1307, '101200207', '谷城'),
(1308, '101200208', '枣阳'),
(1309, '101200301', '鄂州'),
(1310, '101200302', '梁子湖'),
(1311, '101200401', '孝感'),
(1312, '101200402', '安陆'),
(1313, '101200403', '云梦'),
(1314, '101200404', '大悟'),
(1315, '101200405', '应城'),
(1316, '101200406', '汉川'),
(1317, '101200407', '孝昌'),
(1318, '101200501', '黄冈'),
(1319, '101200502', '红安'),
(1320, '101200503', '麻城'),
(1321, '101200504', '罗田'),
(1322, '101200505', '英山'),
(1323, '101200506', '浠水'),
(1324, '101200507', '蕲春'),
(1325, '101200508', '黄梅'),
(1326, '101200509', '武穴'),
(1327, '101200510', '团风'),
(1328, '101200601', '黄石'),
(1329, '101200602', '大冶'),
(1330, '101200603', '阳新'),
(1331, '101200604', '铁山'),
(1332, '101200605', '下陆'),
(1333, '101200606', '西塞山'),
(1334, '101200701', '咸宁'),
(1335, '101200702', '赤壁'),
(1336, '101200703', '嘉鱼'),
(1337, '101200704', '崇阳'),
(1338, '101200705', '通城'),
(1339, '101200706', '通山'),
(1340, '101200801', '荆州'),
(1341, '101200802', '江陵'),
(1342, '101200803', '公安'),
(1343, '101200804', '石首'),
(1344, '101200805', '监利'),
(1345, '101200806', '洪湖'),
(1346, '101200807', '松滋'),
(1347, '101200901', '宜昌'),
(1348, '101200902', '远安'),
(1349, '101200903', '秭归'),
(1350, '101200904', '兴山'),
(1351, '101200906', '五峰'),
(1352, '101200907', '当阳'),
(1353, '101200908', '长阳'),
(1354, '101200909', '宜都'),
(1355, '101200910', '枝江'),
(1356, '101201001', '恩施'),
(1357, '101201002', '利川'),
(1358, '101201003', '建始'),
(1359, '101201004', '咸丰'),
(1360, '101201005', '宣恩'),
(1361, '101201006', '鹤峰'),
(1362, '101201007', '来凤'),
(1363, '101201008', '巴东'),
(1364, '101201101', '十堰'),
(1365, '101201102', '竹溪'),
(1366, '101201103', '郧西'),
(1367, '101201104', '郧县'),
(1368, '101201105', '竹山'),
(1369, '101201106', '房县'),
(1370, '101201107', '丹江口'),
(1371, '101201108', '茅箭'),
(1372, '101201109', '张湾'),
(1373, '101201201', '神农架'),
(1374, '101201301', '随州'),
(1375, '101201302', '广水'),
(1376, '101201401', '荆门'),
(1377, '101201402', '钟祥'),
(1378, '101201403', '京山'),
(1379, '101201404', '掇刀'),
(1380, '101201405', '沙洋'),
(1381, '101201406', '沙市'),
(1382, '101201501', '天门'),
(1383, '101201601', '仙桃'),
(1384, '101201701', '潜江'),
(1385, '101210101', '杭州'),
(1386, '101210102', '萧山'),
(1387, '101210103', '桐庐'),
(1388, '101210104', '淳安'),
(1389, '101210105', '建德'),
(1390, '101210106', '余杭'),
(1391, '101210107', '临安'),
(1392, '101210108', '富阳'),
(1393, '101210201', '湖州'),
(1394, '101210202', '长兴'),
(1395, '101210203', '安吉'),
(1396, '101210204', '德清'),
(1397, '101210301', '嘉兴'),
(1398, '101210302', '嘉善'),
(1399, '101210303', '海宁'),
(1400, '101210304', '桐乡'),
(1401, '101210305', '平湖'),
(1402, '101210306', '海盐'),
(1403, '101210401', '宁波'),
(1404, '101210403', '慈溪'),
(1405, '101210404', '余姚'),
(1406, '101210405', '奉化'),
(1407, '101210406', '象山'),
(1408, '101210408', '宁海'),
(1409, '101210410', '北仑'),
(1410, '101210411', '鄞州'),
(1411, '101210501', '绍兴'),
(1412, '101210502', '诸暨'),
(1413, '101210503', '上虞'),
(1414, '101210504', '新昌'),
(1415, '101210505', '嵊州'),
(1416, '101210601', '台州'),
(1417, '101210603', '玉环'),
(1418, '101210604', '三门'),
(1419, '101210605', '天台'),
(1420, '101210606', '仙居'),
(1421, '101210607', '温岭'),
(1422, '101210610', '临海'),
(1423, '101210701', '温州'),
(1424, '101210702', '泰顺'),
(1425, '101210703', '文成'),
(1426, '101210704', '平阳'),
(1427, '101210705', '瑞安'),
(1428, '101210706', '洞头'),
(1429, '101210707', '乐清'),
(1430, '101210708', '永嘉'),
(1431, '101210709', '苍南'),
(1432, '101210801', '丽水'),
(1433, '101210802', '遂昌'),
(1434, '101210803', '龙泉'),
(1435, '101210804', '缙云'),
(1436, '101210805', '青田'),
(1437, '101210806', '云和'),
(1438, '101210807', '庆元'),
(1439, '101210808', '松阳'),
(1440, '101210809', '景宁'),
(1441, '101210901', '金华'),
(1442, '101210902', '浦江'),
(1443, '101210903', '兰溪'),
(1444, '101210904', '义乌'),
(1445, '101210905', '东阳'),
(1446, '101210906', '武义'),
(1447, '101210907', '永康'),
(1448, '101210908', '磐安'),
(1449, '101211001', '衢州'),
(1450, '101211002', '常山'),
(1451, '101211003', '开化'),
(1452, '101211004', '龙游'),
(1453, '101211005', '江山'),
(1454, '101211101', '舟山'),
(1455, '101211102', '嵊泗'),
(1456, '101211104', '岱山'),
(1457, '101220101', '合肥'),
(1458, '101220102', '长丰'),
(1459, '101220103', '肥东'),
(1460, '101220104', '肥西'),
(1461, '101220201', '蚌埠'),
(1462, '101220202', '怀远'),
(1463, '101220203', '固镇'),
(1464, '101220204', '五河'),
(1465, '101220301', '芜湖'),
(1466, '101220302', '繁昌'),
(1467, '101220304', '南陵'),
(1468, '101220401', '淮南'),
(1469, '101220402', '凤台'),
(1470, '101220403', '潘集'),
(1471, '101220501', '马鞍山'),
(1472, '101220502', '当涂'),
(1473, '101220601', '安庆'),
(1474, '101220602', '枞阳'),
(1475, '101220603', '太湖'),
(1476, '101220604', '潜山'),
(1477, '101220605', '怀宁'),
(1478, '101220606', '宿松'),
(1479, '101220607', '望江'),
(1480, '101220608', '岳西'),
(1481, '101220609', '桐城'),
(1482, '101220701', '宿州'),
(1483, '101220702', '砀山'),
(1484, '101220703', '灵璧'),
(1485, '101220704', '泗县'),
(1486, '101220705', '萧县'),
(1487, '101220801', '阜阳'),
(1488, '101220802', '阜南'),
(1489, '101220803', '颍上'),
(1490, '101220804', '临泉'),
(1491, '101220805', '界首'),
(1492, '101220806', '太和'),
(1493, '101220901', '亳州'),
(1494, '101220902', '涡阳'),
(1495, '101220903', '利辛'),
(1496, '101220904', '蒙城'),
(1497, '101221001', '黄山'),
(1498, '101221004', '祁门'),
(1499, '101221005', '黟县'),
(1500, '101221006', '歙县'),
(1501, '101221007', '休宁'),
(1502, '101221101', '滁州'),
(1503, '101221102', '凤阳'),
(1504, '101221103', '明光'),
(1505, '101221104', '定远'),
(1506, '101221105', '全椒'),
(1507, '101221106', '来安'),
(1508, '101221107', '天长'),
(1509, '101221201', '淮北'),
(1510, '101221202', '濉溪'),
(1511, '101221301', '铜陵'),
(1512, '101221401', '宣城'),
(1513, '101221402', '泾县'),
(1514, '101221403', '旌德'),
(1515, '101221404', '宁国'),
(1516, '101221405', '绩溪'),
(1517, '101221406', '广德'),
(1518, '101221407', '郎溪'),
(1519, '101221501', '六安'),
(1520, '101221502', '霍邱'),
(1521, '101221503', '寿县'),
(1522, '101221505', '金寨'),
(1523, '101221506', '霍山'),
(1524, '101221507', '舒城'),
(1525, '101221601', '巢湖'),
(1526, '101221602', '庐江'),
(1527, '101221603', '无为'),
(1528, '101221604', '含山'),
(1529, '101221605', '和县'),
(1530, '101221701', '池州'),
(1531, '101221702', '东至'),
(1532, '101221703', '青阳'),
(1533, '101221705', '石台'),
(1534, '101230101', '福州'),
(1535, '101230102', '闽清'),
(1536, '101230103', '闽侯'),
(1537, '101230104', '罗源'),
(1538, '101230105', '连江'),
(1539, '101230107', '永泰'),
(1540, '101230108', '平潭'),
(1541, '101230110', '长乐'),
(1542, '101230111', '福清'),
(1543, '101230201', '厦门'),
(1544, '101230301', '宁德'),
(1545, '101230302', '古田'),
(1546, '101230303', '霞浦'),
(1547, '101230304', '寿宁'),
(1548, '101230305', '周宁'),
(1549, '101230306', '福安'),
(1550, '101230307', '柘荣'),
(1551, '101230308', '福鼎'),
(1552, '101230309', '屏南'),
(1553, '101230401', '莆田'),
(1554, '101230402', '仙游'),
(1555, '101230404', '涵江'),
(1556, '101230405', '秀屿'),
(1557, '101230406', '荔城'),
(1558, '101230407', '城厢'),
(1559, '101230501', '泉州'),
(1560, '101230502', '安溪'),
(1561, '101230504', '永春'),
(1562, '101230505', '德化'),
(1563, '101230506', '南安'),
(1564, '101230508', '惠安'),
(1565, '101230509', '晋江'),
(1566, '101230510', '石狮'),
(1567, '101230601', '漳州'),
(1568, '101230602', '长泰'),
(1569, '101230603', '南靖'),
(1570, '101230604', '平和'),
(1571, '101230605', '龙海'),
(1572, '101230606', '漳浦'),
(1573, '101230607', '诏安'),
(1574, '101230609', '云霄'),
(1575, '101230610', '华安'),
(1576, '101230701', '龙岩'),
(1577, '101230702', '长汀'),
(1578, '101230703', '连城'),
(1579, '101230704', '武平'),
(1580, '101230705', '上杭'),
(1581, '101230706', '永定'),
(1582, '101230707', '漳平'),
(1583, '101230801', '三明'),
(1584, '101230802', '宁化'),
(1585, '101230803', '清流'),
(1586, '101230804', '泰宁'),
(1587, '101230805', '将乐'),
(1588, '101230806', '建宁'),
(1589, '101230807', '明溪'),
(1590, '101230808', '沙县'),
(1591, '101230809', '尤溪'),
(1592, '101230810', '永安'),
(1593, '101230811', '大田'),
(1594, '101230901', '南平'),
(1595, '101230902', '顺昌'),
(1596, '101230903', '光泽'),
(1597, '101230904', '邵武'),
(1598, '101230905', '武夷山'),
(1599, '101230906', '浦城'),
(1600, '101230907', '建阳'),
(1601, '101230908', '松溪'),
(1602, '101230909', '政和'),
(1603, '101230910', '建瓯'),
(1604, '101231001', '钓鱼岛'),
(1605, '101240101', '南昌'),
(1606, '101240102', '新建'),
(1607, '101240104', '安义'),
(1608, '101240105', '进贤'),
(1609, '101240201', '九江'),
(1610, '101240202', '瑞昌'),
(1611, '101240204', '武宁'),
(1612, '101240205', '德安'),
(1613, '101240206', '永修'),
(1614, '101240207', '湖口'),
(1615, '101240208', '彭泽'),
(1616, '101240209', '星子'),
(1617, '101240210', '都昌'),
(1618, '101240212', '修水'),
(1619, '101240301', '上饶'),
(1620, '101240302', '鄱阳'),
(1621, '101240303', '婺源'),
(1622, '101240305', '余干'),
(1623, '101240306', '万年'),
(1624, '101240307', '德兴'),
(1625, '101240309', '弋阳'),
(1626, '101240310', '横峰'),
(1627, '101240311', '铅山'),
(1628, '101240312', '玉山'),
(1629, '101240313', '广丰'),
(1630, '101240401', '抚州'),
(1631, '101240402', '广昌'),
(1632, '101240403', '乐安'),
(1633, '101240404', '崇仁'),
(1634, '101240405', '金溪'),
(1635, '101240406', '资溪'),
(1636, '101240407', '宜黄'),
(1637, '101240408', '南城'),
(1638, '101240409', '南丰'),
(1639, '101240410', '黎川'),
(1640, '101240411', '东乡'),
(1641, '101240501', '宜春'),
(1642, '101240502', '铜鼓'),
(1643, '101240503', '宜丰'),
(1644, '101240504', '万载'),
(1645, '101240505', '上高'),
(1646, '101240506', '靖安'),
(1647, '101240507', '奉新'),
(1648, '101240508', '高安'),
(1649, '101240509', '樟树'),
(1650, '101240510', '丰城'),
(1651, '101240601', '吉安'),
(1652, '101240603', '吉水'),
(1653, '101240604', '新干'),
(1654, '101240605', '峡江'),
(1655, '101240606', '永丰'),
(1656, '101240607', '永新'),
(1657, '101240608', '井冈山'),
(1658, '101240609', '万安'),
(1659, '101240610', '遂川'),
(1660, '101240611', '泰和'),
(1661, '101240612', '安福'),
(1662, '101240701', '赣州'),
(1663, '101240702', '崇义'),
(1664, '101240703', '上犹'),
(1665, '101240704', '南康'),
(1666, '101240705', '大余'),
(1667, '101240706', '信丰'),
(1668, '101240707', '宁都'),
(1669, '101240708', '石城'),
(1670, '101240709', '瑞金'),
(1671, '101240710', '于都'),
(1672, '101240711', '会昌'),
(1673, '101240712', '安远'),
(1674, '101240713', '全南'),
(1675, '101240714', '龙南'),
(1676, '101240715', '定南'),
(1677, '101240716', '寻乌'),
(1678, '101240717', '兴国'),
(1679, '101240718', '赣县'),
(1680, '101240801', '景德镇'),
(1681, '101240802', '乐平'),
(1682, '101240803', '浮梁'),
(1683, '101240901', '萍乡'),
(1684, '101240902', '莲花'),
(1685, '101240903', '上栗'),
(1686, '101240905', '芦溪'),
(1687, '101240906', '湘东'),
(1688, '101241001', '新余'),
(1689, '101241002', '分宜'),
(1690, '101241101', '鹰潭'),
(1691, '101241102', '余江'),
(1692, '101241103', '贵溪'),
(1693, '101250101', '长沙'),
(1694, '101250102', '宁乡'),
(1695, '101250103', '浏阳'),
(1696, '101250105', '望城'),
(1697, '101250201', '湘潭'),
(1698, '101250202', '韶山'),
(1699, '101250203', '湘乡'),
(1700, '101250301', '株洲'),
(1701, '101250302', '攸县'),
(1702, '101250303', '醴陵'),
(1703, '101250305', '茶陵'),
(1704, '101250306', '炎陵'),
(1705, '101250401', '衡阳'),
(1706, '101250402', '衡山'),
(1707, '101250403', '衡东'),
(1708, '101250404', '祁东'),
(1709, '101250406', '常宁'),
(1710, '101250407', '衡南'),
(1711, '101250408', '耒阳'),
(1712, '101250501', '郴州'),
(1713, '101250502', '桂阳'),
(1714, '101250503', '嘉禾'),
(1715, '101250504', '宜章'),
(1716, '101250505', '临武'),
(1717, '101250507', '资兴'),
(1718, '101250508', '汝城'),
(1719, '101250509', '安仁'),
(1720, '101250510', '永兴'),
(1721, '101250511', '桂东'),
(1722, '101250512', '苏仙'),
(1723, '101250601', '常德'),
(1724, '101250602', '安乡'),
(1725, '101250603', '桃源'),
(1726, '101250604', '汉寿'),
(1727, '101250605', '澧县'),
(1728, '101250606', '临澧'),
(1729, '101250607', '石门'),
(1730, '101250608', '津市'),
(1731, '101250700', '益阳'),
(1732, '101250702', '南县'),
(1733, '101250703', '桃江'),
(1734, '101250704', '安化'),
(1735, '101250705', '沅江'),
(1736, '101250801', '娄底'),
(1737, '101250802', '双峰'),
(1738, '101250803', '冷水江'),
(1739, '101250805', '新化'),
(1740, '101250806', '涟源'),
(1741, '101250901', '邵阳'),
(1742, '101250902', '隆回');
INSERT INTO `gooraye_weather` (`id`, `code`, `name`) VALUES
(1743, '101250903', '洞口'),
(1744, '101250904', '新邵'),
(1745, '101250905', '邵东'),
(1746, '101250906', '绥宁'),
(1747, '101250907', '新宁'),
(1748, '101250908', '武冈'),
(1749, '101250909', '城步'),
(1750, '101251001', '岳阳'),
(1751, '101251002', '华容'),
(1752, '101251003', '湘阴'),
(1753, '101251004', '汨罗'),
(1754, '101251005', '平江'),
(1755, '101251006', '临湘'),
(1756, '101251101', '张家界'),
(1757, '101251102', '桑植'),
(1758, '101251103', '慈利'),
(1759, '101251104', '武陵源'),
(1760, '101251201', '怀化'),
(1761, '101251203', '沅陵'),
(1762, '101251204', '辰溪'),
(1763, '101251205', '靖州'),
(1764, '101251206', '会同'),
(1765, '101251207', '通道'),
(1766, '101251208', '麻阳'),
(1767, '101251209', '新晃'),
(1768, '101251210', '芷江'),
(1769, '101251211', '溆浦'),
(1770, '101251212', '中方'),
(1771, '101251213', '洪江'),
(1772, '101251401', '永州'),
(1773, '101251402', '祁阳'),
(1774, '101251403', '东安'),
(1775, '101251404', '双牌'),
(1776, '101251405', '道县'),
(1777, '101251406', '宁远'),
(1778, '101251407', '江永'),
(1779, '101251408', '蓝山'),
(1780, '101251409', '新田'),
(1781, '101251410', '江华'),
(1782, '101251501', '吉首'),
(1783, '101251502', '保靖'),
(1784, '101251503', '永顺'),
(1785, '101251504', '古丈'),
(1786, '101251505', '凤凰'),
(1787, '101251506', '泸溪'),
(1788, '101251507', '龙山'),
(1789, '101251508', '花垣'),
(1790, '101260101', '贵阳'),
(1791, '101260102', '白云'),
(1792, '101260103', '花溪'),
(1793, '101260104', '乌当'),
(1794, '101260105', '息烽'),
(1795, '101260106', '开阳'),
(1796, '101260107', '修文'),
(1797, '101260108', '清镇'),
(1798, '101260109', '小河'),
(1799, '101260110', '云岩'),
(1800, '101260111', '南明'),
(1801, '101260201', '遵义'),
(1802, '101260203', '仁怀'),
(1803, '101260204', '绥阳'),
(1804, '101260205', '湄潭'),
(1805, '101260206', '凤冈'),
(1806, '101260207', '桐梓'),
(1807, '101260208', '赤水'),
(1808, '101260209', '习水'),
(1809, '101260210', '道真'),
(1810, '101260211', '正安'),
(1811, '101260212', '务川'),
(1812, '101260213', '余庆'),
(1813, '101260214', '汇川'),
(1814, '101260215', '红花岗'),
(1815, '101260301', '安顺'),
(1816, '101260302', '普定'),
(1817, '101260303', '镇宁'),
(1818, '101260304', '平坝'),
(1819, '101260305', '紫云'),
(1820, '101260306', '关岭'),
(1821, '101260401', '都匀'),
(1822, '101260402', '贵定'),
(1823, '101260403', '瓮安'),
(1824, '101260404', '长顺'),
(1825, '101260405', '福泉'),
(1826, '101260406', '惠水'),
(1827, '101260407', '龙里'),
(1828, '101260408', '罗甸'),
(1829, '101260409', '平塘'),
(1830, '101260410', '独山'),
(1831, '101260411', '三都'),
(1832, '101260412', '荔波'),
(1833, '101260501', '凯里'),
(1834, '101260502', '岑巩'),
(1835, '101260503', '施秉'),
(1836, '101260504', '镇远'),
(1837, '101260505', '黄平'),
(1838, '101260507', '麻江'),
(1839, '101260508', '丹寨'),
(1840, '101260509', '三穗'),
(1841, '101260510', '台江'),
(1842, '101260511', '剑河'),
(1843, '101260512', '雷山'),
(1844, '101260513', '黎平'),
(1845, '101260514', '天柱'),
(1846, '101260515', '锦屏'),
(1847, '101260516', '榕江'),
(1848, '101260517', '从江'),
(1849, '101260601', '铜仁'),
(1850, '101260602', '江口'),
(1851, '101260603', '玉屏'),
(1852, '101260604', '万山特'),
(1853, '101260605', '思南'),
(1854, '101260607', '印江'),
(1855, '101260608', '石阡'),
(1856, '101260609', '沿河'),
(1857, '101260610', '德江'),
(1858, '101260611', '松桃'),
(1859, '101260701', '毕节'),
(1860, '101260702', '赫章'),
(1861, '101260703', '金沙'),
(1862, '101260704', '威宁'),
(1863, '101260705', '大方'),
(1864, '101260706', '纳雍'),
(1865, '101260707', '织金'),
(1866, '101260708', '黔西'),
(1867, '101260801', '水城'),
(1868, '101260802', '六枝特'),
(1869, '101260804', '盘县'),
(1870, '101260901', '兴义'),
(1871, '101260902', '晴隆'),
(1872, '101260903', '兴仁'),
(1873, '101260904', '贞丰'),
(1874, '101260905', '望谟'),
(1875, '101260907', '安龙'),
(1876, '101260908', '册亨'),
(1877, '101260909', '普安'),
(1878, '101270101', '成都'),
(1879, '101270103', '新都'),
(1880, '101270104', '温江'),
(1881, '101270105', '金堂'),
(1882, '101270106', '双流'),
(1883, '101270107', '郫县'),
(1884, '101270108', '大邑'),
(1885, '101270109', '蒲江'),
(1886, '101270110', '新津'),
(1887, '101270111', '都江堰'),
(1888, '101270112', '彭州'),
(1889, '101270113', '邛崃'),
(1890, '101270114', '崇州'),
(1891, '101270201', '攀枝花'),
(1892, '101270203', '米易'),
(1893, '101270204', '盐边'),
(1894, '101270301', '自贡'),
(1895, '101270302', '富顺'),
(1896, '101270303', '荣县'),
(1897, '101270401', '绵阳'),
(1898, '101270402', '三台'),
(1899, '101270403', '盐亭'),
(1900, '101270404', '安县'),
(1901, '101270405', '梓潼'),
(1902, '101270406', '北川'),
(1903, '101270407', '平武'),
(1904, '101270408', '江油'),
(1905, '101270501', '南充'),
(1906, '101270502', '南部'),
(1907, '101270503', '营山'),
(1908, '101270504', '蓬安'),
(1909, '101270505', '仪陇'),
(1910, '101270506', '西充'),
(1911, '101270507', '阆中'),
(1912, '101270601', '达州'),
(1913, '101270602', '宣汉'),
(1914, '101270603', '开江'),
(1915, '101270604', '大竹'),
(1916, '101270605', '渠县'),
(1917, '101270606', '万源'),
(1918, '101270608', '达县'),
(1919, '101270701', '遂宁'),
(1920, '101270702', '蓬溪'),
(1921, '101270703', '射洪'),
(1922, '101270801', '广安'),
(1923, '101270802', '岳池'),
(1924, '101270803', '武胜'),
(1925, '101270804', '邻水'),
(1926, '101270805', '华蓥'),
(1927, '101270901', '巴中'),
(1928, '101270902', '通江'),
(1929, '101270903', '南江'),
(1930, '101270904', '平昌'),
(1931, '101271001', '泸州'),
(1932, '101271003', '泸县'),
(1933, '101271004', '合江'),
(1934, '101271005', '叙永'),
(1935, '101271006', '古蔺'),
(1936, '101271101', '宜宾'),
(1937, '101271104', '南溪'),
(1938, '101271105', '江安'),
(1939, '101271106', '长宁'),
(1940, '101271107', '高县'),
(1941, '101271108', '珙县'),
(1942, '101271109', '筠连'),
(1943, '101271110', '兴文'),
(1944, '101271111', '屏山'),
(1945, '101271201', '内江'),
(1946, '101271203', '威远'),
(1947, '101271204', '资中'),
(1948, '101271205', '隆昌'),
(1949, '101271301', '资阳'),
(1950, '101271302', '安岳'),
(1951, '101271303', '乐至'),
(1952, '101271304', '简阳'),
(1953, '101271401', '乐山'),
(1954, '101271402', '犍为'),
(1955, '101271403', '井研'),
(1956, '101271404', '夹江'),
(1957, '101271405', '沐川'),
(1958, '101271406', '峨边'),
(1959, '101271407', '马边'),
(1960, '101271409', '峨眉山'),
(1961, '101271501', '眉山'),
(1962, '101271502', '仁寿'),
(1963, '101271503', '彭山'),
(1964, '101271504', '洪雅'),
(1965, '101271505', '丹棱'),
(1966, '101271506', '青神'),
(1967, '101271601', '凉山'),
(1968, '101271603', '木里'),
(1969, '101271604', '盐源'),
(1970, '101271605', '德昌'),
(1971, '101271606', '会理'),
(1972, '101271607', '会东'),
(1973, '101271608', '宁南'),
(1974, '101271609', '普格'),
(1975, '101271610', '西昌'),
(1976, '101271611', '金阳'),
(1977, '101271612', '昭觉'),
(1978, '101271613', '喜德'),
(1979, '101271614', '冕宁'),
(1980, '101271615', '越西'),
(1981, '101271616', '甘洛'),
(1982, '101271617', '雷波'),
(1983, '101271618', '美姑'),
(1984, '101271619', '布拖'),
(1985, '101271701', '雅安'),
(1986, '101271702', '名山'),
(1987, '101271703', '荥经'),
(1988, '101271704', '汉源'),
(1989, '101271705', '石棉'),
(1990, '101271706', '天全'),
(1991, '101271707', '芦山'),
(1992, '101271708', '宝兴'),
(1993, '101271801', '甘孜'),
(1994, '101271802', '康定'),
(1995, '101271803', '泸定'),
(1996, '101271804', '丹巴'),
(1997, '101271805', '九龙'),
(1998, '101271806', '雅江'),
(1999, '101271807', '道孚'),
(2000, '101271808', '炉霍'),
(2001, '101271809', '新龙'),
(2002, '101271810', '德格'),
(2003, '101271811', '白玉'),
(2004, '101271812', '石渠'),
(2005, '101271813', '色达'),
(2006, '101271814', '理塘'),
(2007, '101271815', '巴塘'),
(2008, '101271816', '乡城'),
(2009, '101271817', '稻城'),
(2010, '101271818', '得荣'),
(2011, '101271901', '阿坝'),
(2012, '101271902', '汶川'),
(2013, '101271903', '理县'),
(2014, '101271904', '茂县'),
(2015, '101271905', '松潘'),
(2016, '101271906', '九寨沟'),
(2017, '101271907', '金川'),
(2018, '101271908', '小金'),
(2019, '101271909', '黑水'),
(2020, '101271910', '马尔康'),
(2021, '101271911', '壤塘'),
(2022, '101271912', '若尔盖'),
(2023, '101271913', '红原'),
(2024, '101272001', '德阳'),
(2025, '101272002', '中江'),
(2026, '101272003', '广汉'),
(2027, '101272004', '什邡'),
(2028, '101272005', '绵竹'),
(2029, '101272006', '罗江'),
(2030, '101272101', '广元'),
(2031, '101272102', '旺苍'),
(2032, '101272103', '青川'),
(2033, '101272104', '剑阁'),
(2034, '101272105', '苍溪'),
(2035, '101280101', '广州'),
(2036, '101280102', '番禺'),
(2037, '101280103', '从化'),
(2038, '101280104', '增城'),
(2039, '101280105', '花都'),
(2040, '101280201', '韶关'),
(2041, '101280202', '乳源'),
(2042, '101280203', '始兴'),
(2043, '101280204', '翁源'),
(2044, '101280205', '乐昌'),
(2045, '101280206', '仁化'),
(2046, '101280207', '南雄'),
(2047, '101280208', '新丰'),
(2048, '101280209', '曲江'),
(2049, '101280210', '浈江'),
(2050, '101280211', '武江'),
(2051, '101280301', '惠州'),
(2052, '101280302', '博罗'),
(2053, '101280303', '惠阳'),
(2054, '101280304', '惠东'),
(2055, '101280305', '龙门'),
(2056, '101280401', '梅州'),
(2057, '101280402', '兴宁'),
(2058, '101280403', '蕉岭'),
(2059, '101280404', '大埔'),
(2060, '101280406', '丰顺'),
(2061, '101280407', '平远'),
(2062, '101280408', '五华'),
(2063, '101280409', '梅县'),
(2064, '101280501', '汕头'),
(2065, '101280502', '潮阳'),
(2066, '101280503', '澄海'),
(2067, '101280504', '南澳'),
(2068, '101280601', '深圳'),
(2069, '101280701', '珠海'),
(2070, '101280702', '斗门'),
(2071, '101280703', '金湾'),
(2072, '101280800', '佛山'),
(2073, '101280801', '顺德'),
(2074, '101280802', '三水'),
(2075, '101280803', '南海'),
(2076, '101280804', '高明'),
(2077, '101280901', '肇庆'),
(2078, '101280902', '广宁'),
(2079, '101280903', '四会'),
(2080, '101280905', '德庆'),
(2081, '101280906', '怀集'),
(2082, '101280907', '封开'),
(2083, '101280908', '高要'),
(2084, '101281001', '湛江'),
(2085, '101281002', '吴川'),
(2086, '101281003', '雷州'),
(2087, '101281004', '徐闻'),
(2088, '101281005', '廉江'),
(2089, '101281006', '赤坎'),
(2090, '101281007', '遂溪'),
(2091, '101281008', '坡头'),
(2092, '101281009', '霞山'),
(2093, '101281010', '麻章'),
(2094, '101281101', '江门'),
(2095, '101281103', '开平'),
(2096, '101281104', '新会'),
(2097, '101281105', '恩平'),
(2098, '101281106', '台山'),
(2099, '101281108', '鹤山'),
(2100, '101281109', '江海'),
(2101, '101281201', '河源'),
(2102, '101281202', '紫金'),
(2103, '101281203', '连平'),
(2104, '101281204', '和平'),
(2105, '101281205', '龙川'),
(2106, '101281206', '东源'),
(2107, '101281301', '清远'),
(2108, '101281302', '连南'),
(2109, '101281303', '连州'),
(2110, '101281304', '连山'),
(2111, '101281305', '阳山'),
(2112, '101281306', '佛冈'),
(2113, '101281307', '英德'),
(2114, '101281308', '清新'),
(2115, '101281401', '云浮'),
(2116, '101281402', '罗定'),
(2117, '101281403', '新兴'),
(2118, '101281404', '郁南'),
(2119, '101281406', '云安'),
(2120, '101281501', '潮州'),
(2121, '101281502', '饶平'),
(2122, '101281503', '潮安'),
(2123, '101281601', '东莞'),
(2124, '101281701', '中山'),
(2125, '101281801', '阳江'),
(2126, '101281802', '阳春'),
(2127, '101281803', '阳东'),
(2128, '101281804', '阳西'),
(2129, '101281901', '揭阳'),
(2130, '101281902', '揭西'),
(2131, '101281903', '普宁'),
(2132, '101281904', '惠来'),
(2133, '101281905', '揭东'),
(2134, '101282001', '茂名'),
(2135, '101282002', '高州'),
(2136, '101282003', '化州'),
(2137, '101282004', '电白'),
(2138, '101282005', '信宜'),
(2139, '101282006', '茂港'),
(2140, '101282101', '汕尾'),
(2141, '101282102', '海丰'),
(2142, '101282103', '陆丰'),
(2143, '101282104', '陆河'),
(2144, '101290101', '昆明'),
(2145, '101290103', '东川'),
(2146, '101290104', '寻甸'),
(2147, '101290105', '晋宁'),
(2148, '101290106', '宜良'),
(2149, '101290107', '石林'),
(2150, '101290108', '呈贡'),
(2151, '101290109', '富民'),
(2152, '101290110', '嵩明'),
(2153, '101290111', '禄劝'),
(2154, '101290112', '安宁'),
(2155, '101290201', '大理'),
(2156, '101290202', '云龙'),
(2157, '101290203', '漾濞'),
(2158, '101290204', '永平'),
(2159, '101290205', '宾川'),
(2160, '101290206', '弥渡'),
(2161, '101290207', '祥云'),
(2162, '101290208', '巍山'),
(2163, '101290209', '剑川'),
(2164, '101290210', '洱源'),
(2165, '101290211', '鹤庆'),
(2166, '101290212', '南涧'),
(2167, '101290301', '红河'),
(2168, '101290302', '石屏'),
(2169, '101290303', '建水'),
(2170, '101290304', '弥勒'),
(2171, '101290305', '元阳'),
(2172, '101290306', '绿春'),
(2173, '101290307', '开远'),
(2174, '101290308', '个旧'),
(2175, '101290309', '蒙自'),
(2176, '101290310', '屏边'),
(2177, '101290311', '泸西'),
(2178, '101290312', '金平'),
(2179, '101290313', '河口'),
(2180, '101290401', '曲靖'),
(2181, '101290402', '沾益'),
(2182, '101290403', '陆良'),
(2183, '101290404', '富源'),
(2184, '101290405', '马龙'),
(2185, '101290406', '师宗'),
(2186, '101290407', '罗平'),
(2187, '101290408', '会泽'),
(2188, '101290409', '宣威'),
(2189, '101290501', '保山'),
(2190, '101290503', '龙陵'),
(2191, '101290504', '施甸'),
(2192, '101290505', '昌宁'),
(2193, '101290506', '腾冲'),
(2194, '101290601', '文山'),
(2195, '101290602', '西畴'),
(2196, '101290603', '马关'),
(2197, '101290604', '麻栗坡'),
(2198, '101290605', '砚山'),
(2199, '101290606', '丘北'),
(2200, '101290607', '广南'),
(2201, '101290608', '富宁'),
(2202, '101290701', '玉溪'),
(2203, '101290702', '澄江'),
(2204, '101290703', '江川'),
(2205, '101290704', '通海'),
(2206, '101290705', '华宁'),
(2207, '101290706', '新平'),
(2208, '101290707', '易门'),
(2209, '101290708', '峨山'),
(2210, '101290709', '元江'),
(2211, '101290801', '楚雄'),
(2212, '101290802', '大姚'),
(2213, '101290803', '元谋'),
(2214, '101290804', '姚安'),
(2215, '101290805', '牟定'),
(2216, '101290806', '南华'),
(2217, '101290807', '武定'),
(2218, '101290808', '禄丰'),
(2219, '101290809', '双柏'),
(2220, '101290810', '永仁'),
(2221, '101290901', '普洱'),
(2222, '101290902', '景谷'),
(2223, '101290903', '景东'),
(2224, '101290904', '澜沧'),
(2225, '101290906', '墨江'),
(2226, '101290907', '江城'),
(2227, '101290908', '孟连'),
(2228, '101290909', '西盟'),
(2229, '101290911', '镇沅'),
(2230, '101290912', '宁洱'),
(2231, '101291001', '昭通'),
(2232, '101291002', '鲁甸'),
(2233, '101291003', '彝良'),
(2234, '101291004', '镇雄'),
(2235, '101291005', '威信'),
(2236, '101291006', '巧家'),
(2237, '101291007', '绥江'),
(2238, '101291008', '永善'),
(2239, '101291009', '盐津'),
(2240, '101291010', '大关'),
(2241, '101291011', '水富'),
(2242, '101291101', '临沧'),
(2243, '101291102', '沧源'),
(2244, '101291103', '耿马'),
(2245, '101291104', '双江'),
(2246, '101291105', '凤庆'),
(2247, '101291106', '永德'),
(2248, '101291107', '云县'),
(2249, '101291108', '镇康'),
(2250, '101291201', '怒江'),
(2251, '101291203', '福贡'),
(2252, '101291204', '兰坪'),
(2253, '101291205', '泸水'),
(2254, '101291207', '贡山'),
(2255, '101291301', '迪庆'),
(2256, '101291302', '德钦'),
(2257, '101291303', '维西'),
(2258, '101291401', '丽江'),
(2259, '101291402', '永胜'),
(2260, '101291403', '华坪'),
(2261, '101291404', '宁蒗'),
(2262, '101291501', '德宏'),
(2263, '101291503', '陇川'),
(2264, '101291504', '盈江'),
(2265, '101291506', '瑞丽'),
(2266, '101291507', '梁河'),
(2267, '101291508', '潞西'),
(2268, '101291601', '西双版纳'),
(2269, '101291603', '勐海'),
(2270, '101291605', '勐腊'),
(2271, '101300101', '南宁'),
(2272, '101300103', '邕宁'),
(2273, '101300104', '横县'),
(2274, '101300105', '隆安'),
(2275, '101300106', '马山'),
(2276, '101300107', '上林'),
(2277, '101300108', '武鸣'),
(2278, '101300109', '宾阳'),
(2279, '101300201', '崇左'),
(2280, '101300202', '天等'),
(2281, '101300203', '龙州'),
(2282, '101300204', '凭祥'),
(2283, '101300205', '大新'),
(2284, '101300206', '扶绥'),
(2285, '101300207', '宁明'),
(2286, '101300301', '柳州'),
(2287, '101300302', '柳城'),
(2288, '101300304', '鹿寨'),
(2289, '101300305', '柳江'),
(2290, '101300306', '融安'),
(2291, '101300307', '融水'),
(2292, '101300308', '三江'),
(2293, '101300401', '来宾'),
(2294, '101300402', '忻城'),
(2295, '101300403', '金秀'),
(2296, '101300404', '象州'),
(2297, '101300405', '武宣'),
(2298, '101300406', '合山'),
(2299, '101300501', '桂林'),
(2300, '101300503', '龙胜'),
(2301, '101300504', '永福'),
(2302, '101300505', '临桂'),
(2303, '101300506', '兴安'),
(2304, '101300507', '灵川'),
(2305, '101300508', '全州'),
(2306, '101300509', '灌阳'),
(2307, '101300510', '阳朔'),
(2308, '101300511', '恭城'),
(2309, '101300512', '平乐'),
(2310, '101300513', '荔浦'),
(2311, '101300514', '资源'),
(2312, '101300601', '梧州'),
(2313, '101300602', '藤县'),
(2314, '101300604', '苍梧'),
(2315, '101300605', '蒙山'),
(2316, '101300606', '岑溪'),
(2317, '101300701', '贺州'),
(2318, '101300702', '昭平'),
(2319, '101300703', '富川'),
(2320, '101300704', '钟山'),
(2321, '101300801', '贵港'),
(2322, '101300802', '桂平'),
(2323, '101300803', '平南'),
(2324, '101300901', '玉林'),
(2325, '101300902', '博白'),
(2326, '101300903', '北流'),
(2327, '101300904', '容县'),
(2328, '101300905', '陆川'),
(2329, '101300906', '兴业'),
(2330, '101301001', '百色'),
(2331, '101301002', '那坡'),
(2332, '101301003', '田阳'),
(2333, '101301004', '德保'),
(2334, '101301005', '靖西'),
(2335, '101301006', '田东'),
(2336, '101301007', '平果'),
(2337, '101301008', '隆林'),
(2338, '101301009', '西林'),
(2339, '101301010', '乐业'),
(2340, '101301011', '凌云'),
(2341, '101301012', '田林'),
(2342, '101301101', '钦州'),
(2343, '101301102', '浦北'),
(2344, '101301103', '灵山'),
(2345, '101301201', '河池'),
(2346, '101301202', '天峨'),
(2347, '101301203', '东兰'),
(2348, '101301204', '巴马'),
(2349, '101301205', '环江'),
(2350, '101301206', '罗城'),
(2351, '101301207', '宜州'),
(2352, '101301208', '凤山'),
(2353, '101301209', '南丹'),
(2354, '101301210', '都安'),
(2355, '101301211', '大化'),
(2356, '101301301', '北海'),
(2357, '101301302', '合浦'),
(2358, '101301303', '涠洲岛'),
(2359, '101301401', '防城港'),
(2360, '101301402', '上思'),
(2361, '101301403', '东兴'),
(2362, '101301405', '防城'),
(2363, '101310101', '海口'),
(2364, '101310201', '三亚'),
(2365, '101310202', '东方'),
(2366, '101310203', '临高'),
(2367, '101310204', '澄迈'),
(2368, '101310205', '儋州'),
(2369, '101310206', '昌江'),
(2370, '101310207', '白沙'),
(2371, '101310208', '琼中'),
(2372, '101310209', '定安'),
(2373, '101310210', '屯昌'),
(2374, '101310211', '琼海'),
(2375, '101310212', '文昌'),
(2376, '101310214', '保亭'),
(2377, '101310215', '万宁'),
(2378, '101310216', '陵水'),
(2379, '101310221', '乐东'),
(2380, '101310222', '五指山'),
(2381, '101320101', '香港'),
(2382, '101330101', '澳门'),
(2383, '101340101', '台北'),
(2384, '101340102', '桃园'),
(2385, '101340103', '新竹'),
(2386, '101340104', '宜兰'),
(2387, '101340201', '高雄'),
(2388, '101340202', '嘉义'),
(2389, '101340203', '台南'),
(2390, '101340204', '台东'),
(2391, '101340205', '屏东'),
(2392, '101340401', '台中'),
(2393, '101340402', '苗栗'),
(2394, '101340403', '彰化'),
(2395, '101340404', '南投'),
(2396, '101340405', '花莲'),
(2397, '101340406', '云林'),
(2398, '102010100', '首尔'),
(2399, '103010100', '东京'),
(2400, '103020100', '大阪'),
(2401, '103040100', '札幌'),
(2402, '103050100', '福冈'),
(2403, '103090100', '京都'),
(2404, '104010100', '新加坡'),
(2405, '105010100', '吉隆坡'),
(2406, '106010100', '曼谷'),
(2407, '107010100', '河内'),
(2408, '107020100', '胡志明市'),
(2409, '108010100', '仰光'),
(2410, '109010100', '万象'),
(2411, '111010100', '雅加达'),
(2412, '111080100', '登巴萨'),
(2413, '112010100', '德黑兰'),
(2414, '113010100', '新德里'),
(2415, '113030100', '孟买'),
(2416, '113090100', '斯利那加'),
(2417, '114010100', '伊斯兰堡'),
(2418, '114030100', '卡拉奇'),
(2419, '114040100', '白沙瓦'),
(2420, '115010100', '塔什干'),
(2421, '117010100', '科伦坡'),
(2422, '118010100', '喀布尔'),
(2423, '118030100', '坎大哈'),
(2424, '120010100', '斯里巴加湾'),
(2425, '121010100', '巴林'),
(2426, '124010100', '阿布扎比'),
(2427, '124020100', '迪拜'),
(2428, '127010100', '平壤'),
(2429, '130010100', '阿斯塔纳'),
(2430, '132010100', '乌兰巴托'),
(2431, '136010100', '马尼拉'),
(2432, '138010100', '利雅得'),
(2433, '139010100', '大马士革'),
(2434, '201010100', '伦敦'),
(2435, '201050100', '曼彻斯特'),
(2436, '202010100', '巴黎'),
(2437, '202100100', '马赛'),
(2438, '203010100', '柏林'),
(2439, '203020100', '法兰克福'),
(2440, '203050100', '汉堡'),
(2441, '204010100', '罗马'),
(2442, '204040100', '米兰'),
(2443, '205010100', '阿姆斯特丹'),
(2444, '206010100', '马德里'),
(2445, '206020100', '巴塞罗那'),
(2446, '207010100', '哥本哈根'),
(2447, '208010100', '莫斯科'),
(2448, '210020100', '日内瓦'),
(2449, '210030100', '苏黎世'),
(2450, '211010100', '斯德哥尔摩'),
(2451, '214010100', '里斯本'),
(2452, '215020100', '伊斯坦布尔'),
(2453, '216010100', '布鲁塞尔'),
(2454, '217010100', '维也纳'),
(2455, '218010100', '雅典'),
(2456, '222010100', '赫尔辛基'),
(2457, '301010100', '开罗'),
(2458, '302010100', '开普敦'),
(2459, '302020100', '约翰内斯堡'),
(2460, '303010100', '突尼斯'),
(2461, '304020100', '拉各斯'),
(2462, '305010100', '阿尔及尔'),
(2463, '311010100', '亚的斯亚贝巴'),
(2464, '317010100', '内罗毕'),
(2465, '321020100', '卡萨布兰卡'),
(2466, '327010100', '达喀尔'),
(2467, '332010100', '达累斯萨拉姆'),
(2468, '334010100', '卢萨卡'),
(2469, '401010100', '华盛顿'),
(2470, '401020101', '迈阿密'),
(2471, '401020104', '奥兰多'),
(2472, '401030101', '亚特兰大'),
(2473, '401040101', '洛杉矶'),
(2474, '401040102', '圣弗朗西斯科'),
(2475, '401060100', '波士顿'),
(2476, '401070101', '芝加哥'),
(2477, '401100101', '西雅图'),
(2478, '401110101', '纽约'),
(2479, '401120108', '休斯敦'),
(2480, '401370100', '拉斯维加斯'),
(2481, '401480100', '火奴鲁鲁'),
(2482, '404010100', '渥太华'),
(2483, '404030100', '温哥华'),
(2484, '404040100', '多伦多'),
(2485, '404130100', '埃德蒙顿'),
(2486, '404140100', '卡尔加里'),
(2487, '404220100', '温尼伯'),
(2488, '404230100', '魁北克'),
(2489, '404240100', '蒙特利尔'),
(2490, '406010100', '哈瓦那'),
(2491, '411010100', '墨西哥城'),
(2492, '416010100', '加拉加斯'),
(2493, '601020101', '悉尼'),
(2494, '601030101', '布里斯班'),
(2495, '601040101', '阿德来德'),
(2496, '601060101', '墨尔本'),
(2497, '601070101', '珀斯'),
(2498, '606010100', '惠灵顿'),
(2499, '606020100', '奥克兰'),
(2500, '606030100', '克莱斯特彻奇'),
(2501, '101030100', '天津');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_wechat_group`
--

CREATE TABLE IF NOT EXISTS `gooraye_wechat_group` (
`id` int(10) NOT NULL,
  `wechatgroupid` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `fanscount` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `gooraye_wechat_group`
--

INSERT INTO `gooraye_wechat_group` (`id`, `wechatgroupid`, `name`, `intro`, `token`, `fanscount`) VALUES
(1, '0', '未分组', '', 'ubddyd1402964682', 5),
(2, '1', '黑名单', '', 'ubddyd1402964682', 0),
(3, '2', '星标组', '', 'ubddyd1402964682', 0),
(4, '0', '未分组', '', 'caspcu1403054302', 18),
(5, '1', '黑名单', '', 'caspcu1403054302', 0),
(6, '2', '星标组', '', 'caspcu1403054302', 0);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_wechat_group_list`
--

CREATE TABLE IF NOT EXISTS `gooraye_wechat_group_list` (
`id` int(11) NOT NULL,
  `g_id` varchar(20) NOT NULL DEFAULT '',
  `nickname` varchar(60) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `province` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(30) NOT NULL,
  `headimgurl` varchar(200) NOT NULL,
  `subscribe_time` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `gooraye_wechat_group_list`
--

INSERT INTO `gooraye_wechat_group_list` (`id`, `g_id`, `nickname`, `sex`, `province`, `city`, `headimgurl`, `subscribe_time`, `token`, `openid`, `status`) VALUES
(1, '', 'Alan Chow', 1, '浙江', '温州', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELIiaK9U4bL0pW8IGzr8biaEO0zI2xGPelOB3OoxIEkVqUmBkXPJ8IM4ojUMR1kOwL1r1GdqLKS524A/0', 1401549586, 'caspcu1403054302', 'oqMIVt15nfoql4sLBeGvVE3X7JL8', 0),
(2, '', '丫头', 2, '重庆', '涪陵', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAEcYV28H0mA5nzo5AnlebVhqus59icasNibUSCwsHTcmctFYqs6ynTJ2J0BctXn3zoOy20l45A2atw/0', 1400671057, 'caspcu1403054302', 'oqMIVt3cx-mLmZFQSmGs1fgilc-8', 0),
(3, '', 'H先生', 1, '浙江', '绍兴', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKMjyibRzibDNlia1E6rqTW2Fp69xMdKBc7NZ7s41EK6lhh0BOyk0LBxPdZ0nHoCE3U3jqZibhRrhr1Eg/0', 1399975103, 'caspcu1403054302', 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', 0),
(4, '', '瑞', 2, '山东', '菏泽', 'http://wx.qlogo.cn/mmopen/md3JAwdHBDhhZD2zxOcpe50MsxbPIsK6RMyMf6q18EIjxKQW9Sd98HYeKDKQWjJ9RK0hgWAiaLXoQwG6CKDGBb5a2DvsnWbgT/0', 1401917087, 'caspcu1403054302', 'oqMIVt8z_VDh5mWvGsh3pyjcTEFU', 0),
(5, '', 'Seven Mega', 1, '', '', 'http://wx.qlogo.cn/mmopen/qvEcRpYX1n9qzSZYpzB2vVl8iaz3G6QcZbmSHCgHQ4ISycS6KbvicWTq6cwCyOeQVEDcF910cqFeWoFdicJxutp6ueOG6FvKuYic/0', 1400346362, 'caspcu1403054302', 'oqMIVt7ngXJZN5rsv87yZjJhqy9E', 0),
(6, '', 'GOODNIGHT', 2, '其他', '布基纳法索', 'http://wx.qlogo.cn/mmopen/r48cSSlr7jgELRNZR8opzcvf124xFBskwIEmfobXeG3bVSDicyHM9b2o4tjrPPd9CZpdNKY7ib5Qicbx7atibbwwPmRYfyL1rlEJ/0', 1401499960, 'caspcu1403054302', 'oqMIVt67ak5CoN9ZksRTRcb-Br-U', 0),
(7, '', '葛先生', 1, '浙江', '绍兴', 'http://wx.qlogo.cn/mmopen/tyeAQdOFDdo8Gz0icU2w7ROBib4GbibeaoicicCia6HiciaXfKMJ19g6ia3FuSNmIsiatYvRleYZQVAyDJXgicwjoQ4quRAdskBicmxc0ibBD/0', 1400293928, 'caspcu1403054302', 'oqMIVt_oECJxAAu_0FHj2E_SPPgM', 0),
(8, '', '55', 0, '', '', '', 1402905535, 'caspcu1403054302', 'oqMIVt8_WGJBCVtbp3MoIUl_Lm2k', 0),
(9, '', '零点', 1, '', '', 'http://wx.qlogo.cn/mmopen/1uj7opdQ5txN76ZEt1iaj5CWCnb7mzyt5xob6GXa99hwJKds3BSj7WUORyolcRzMSJCTTePsrGvlntqwrjsiaeN4wmyMAiaqSKT/0', 1402037366, 'caspcu1403054302', 'oqMIVt5QJectumM7lNlodiH6l6nQ', 0),
(10, '', '芊蝶童装批发', 1, '氹仔', '', 'http://wx.qlogo.cn/mmopen/tyeAQdOFDdo8Gz0icU2w7RGdopkotVaOxnntzC78hOJjNtYwOK8TjtGSle9o5719clXj3SaPB20drN24VqE9Duaoicu5Qufiblic/0', 1399963586, 'caspcu1403054302', 'oqMIVtwY-VcGBTx-UcxZBONSnz8w', 0),
(11, '', '何必都', 1, '浙江', '绍兴', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5a1AWZbRlUsngNtIIqNdYnNy1xoyIC8u3bgTZZTW3LhVeyWo96pnYQMDq25BibpGhgqE8xAicz4PAHwyj5I29HKiaRXiayeia81OCU/0', 1399873839, 'caspcu1403054302', 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', 0),
(12, '', 'movele', 1, '', '', 'http://wx.qlogo.cn/mmopen/tyeAQdOFDdo8Gz0icU2w7ROviaZ9RibFeEG3aTW26oQ8U7ddlbwKcCb7TgmWib8GrbPJwuq2zfzZQf97SX02lwGuN26cEbXTo6pb/0', 1399976704, 'caspcu1403054302', 'oqMIVt8M_crLI6QSGLPdFEWFbzyY', 0),
(13, '', '小乔流水人家', 0, '', '', '', 1400497372, 'caspcu1403054302', 'oqMIVt7clu56jMAF6FbMcyFK6AN0', 0),
(14, '', '醒醒', 1, '浙江', '杭州', 'http://wx.qlogo.cn/mmopen/tyeAQdOFDdo8Gz0icU2w7RFg61YgVfI806lpK2PtIrrV6D4HbnyXMFbWXwubtUky8iaqnTVt3REXicfHB0KJSrCvc9pSyAEDcT3/0', 1400492942, 'caspcu1403054302', 'oqMIVt0YNe0S5wwAIrioHYYXyYqk', 0),
(15, '', '何必都', 1, '浙江', '绍兴', 'http://wx.qlogo.cn/mmopen/r48cSSlr7jgELRNZR8opzZU1ZqL2LbErpDXZxMYYATcKq2p0ahhChMbjj378SO9MWHibMbhhdumnCbZ62BGxQKsMicWp2AdOHW/0', 1400339954, 'caspcu1403054302', 'oqMIVt7zI8x6rfGYLZpT3lFiGmAI', 0),
(16, '', '爱做梦的猫', 2, '浙江', '绍兴', 'http://wx.qlogo.cn/mmopen/tyeAQdOFDdo8Gz0icU2w7RAOA3D2fYL2uv8tvC8gXRXm9V5ZUAbTL2TibaGrA7PXROibTZAtiaoXjWqexCjFA4BDjTxFDHGjOIsY/0', 1400485393, 'caspcu1403054302', 'oqMIVt0XES04VNcYVGqLUuCamF3s', 0),
(17, '', 'WinSir', 1, '河南', '漯河', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCVLrcmCpFiciaFVAo28VTM9VcicP8OgMZia1cJu0lntLaaGEeMFKmbFKSwrdq6aWKZtIaSsEewGE4UTO79yXFRDCKLc19jkQIK9W8/0', 1402628093, 'caspcu1403054302', 'oqMIVtzCiGvRbWmueItDBDodYx5Y', 0),
(18, '', '谍中谍中谍中谍', 1, '高雄市', '', 'http://wx.qlogo.cn/mmopen/tyeAQdOFDdo8Gz0icU2w7RHUqiahJkssaBiblq9pwz4wSDiaHdjEk2ZxOnJC7gDRicVfZD4YWr5zBLgaNibKrWfJurI3NckCE80nwc/0', 1398826930, 'caspcu1403054302', 'oqMIVt4q_YCy4Pep2QGItFI0DYhw', 0),
(19, '', 'H先生', 1, '浙江', '绍兴', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKsQ74iaLz0NRic3ibteIbsWQraQqFbNQ7TAdC9pLMNib4uSKVPLmHnMDA0Qyh2HbOqicicRWZbhPJmZ9wg/0', 1395677556, 'ubddyd1402964682', 'o0WJQt1FRcaIj-veNZUcP9iYZzTQ', 0),
(20, '', '何必都', 1, '浙江', '绍兴', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7CMCfJTj1CWOtV554GqkiaCfcfPlNvesEOG1QEdva5aSR8eMW4VJw8vYZBdzV1I9iacf5b0AQwxreTjaAZlTnk6HVQxmssGt9HA/0', 1395551320, 'ubddyd1402964682', 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', 0),
(21, '', '何必都', 1, '浙江', '绍兴', 'http://wx.qlogo.cn/mmopen/8h9QXaJ70ibfVuibfGOeEOdziaibdfOswibrBy75RqsBCBZlIy3fzLA8Bf4A71AGqiciauKd1L75bA58oL2qYNiaia8dJkYhZaxqDHMRD/0', 1396188158, 'ubddyd1402964682', 'o0WJQt5NugVAalDxop2Z0BgvN6R4', 0),
(22, '', '爱做梦的猫', 2, '浙江', '绍兴', 'http://wx.qlogo.cn/mmopen/gB3ibF0VscDWEHuhlaN370gsIBaOscQZCkp73zOQlbhWMOAukLOl5eLVC5iawy2OkEUpOxnkPIF3OYcmWbyl4MRERN5GxPeqG0/0', 1402995090, 'ubddyd1402964682', 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', 0),
(23, '', '谍中谍中谍中谍', 1, '高雄市', '', 'http://wx.qlogo.cn/mmopen/gB3ibF0VscDWEHuhlaN370ol6WSAibqUJticlG6Qw2g8WB4F8eYdibGsNzqpu9d51NRaiaWgyhmG2O7PRyRLbZsk3C8yGJAOxESvC/0', 1395634150, 'ubddyd1402964682', 'o0WJQtz_4Hx2oRRbkDhtS4u3fHqQ', 0);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_wecha_user`
--

CREATE TABLE IF NOT EXISTS `gooraye_wecha_user` (
`id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_wecht_grout`
--

CREATE TABLE IF NOT EXISTS `gooraye_wecht_grout` (
  `id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `w_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信用户组表，非本站用户级表';

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_wedding`
--

CREATE TABLE IF NOT EXISTS `gooraye_wedding` (
`id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(150) NOT NULL,
  `picurl` varchar(150) NOT NULL,
  `openpic` varchar(200) NOT NULL,
  `coverurl` varchar(200) NOT NULL,
  `woman` varchar(30) NOT NULL,
  `man` varchar(30) NOT NULL,
  `who_first` tinyint(1) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `time` int(11) NOT NULL,
  `place` varchar(200) NOT NULL,
  `lng` varchar(16) NOT NULL,
  `lat` varchar(16) NOT NULL,
  `video` varchar(200) NOT NULL,
  `mp3url` varchar(200) NOT NULL,
  `passowrd` int(20) NOT NULL,
  `word` varchar(200) NOT NULL,
  `qr_code` varchar(200) NOT NULL,
  `copyrite` varchar(150) NOT NULL,
  `create_time` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `gooraye_wedding`
--

INSERT INTO `gooraye_wedding` (`id`, `pid`, `token`, `keyword`, `title`, `picurl`, `openpic`, `coverurl`, `woman`, `man`, `who_first`, `phone`, `time`, `place`, `lng`, `lat`, `video`, `mp3url`, `passowrd`, `word`, `qr_code`, `copyrite`, `create_time`) VALUES
(1, 0, 'ubddyd1402964682', '恭喜', '恭喜', 'http://bcs.duapp.com/baeimgs/2cDQtFbl75.jpg', 'http://bcs.duapp.com/baeimgs/jNuxaj1cAj.jpg', 'http://bcs.duapp.com/baeimgs/Tnh1ROgm93.png', '11', '12', 1, '', 0, '', '', '', '', '', 0, '亲爱的朋友，我要结婚了，希望能在我的婚礼上得到你的祝福，并祝愿你也幸福.', '', '', 1403492410),
(2, 0, 'caspcu1403054302', '微喜帖', '微喜帖', 'http://bcs.duapp.com/baeimgs/2cDQtFbl75.jpg', 'http://bcs.duapp.com/baeimgs/jNuxaj1cAj.jpg', 'http://bcs.duapp.com/baeimgs/Tnh1ROgm93.png', '2', '1', 1, '', 0, '', '', '', '', '', 0, '亲爱的朋友，我要结婚了，希望能在我的婚礼上得到你的祝福，并祝愿你也幸福.', '', '', 1403602831);

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_wedding_info`
--

CREATE TABLE IF NOT EXISTS `gooraye_wedding_info` (
`id` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `num` tinyint(2) NOT NULL,
  `info` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_wehcat_member_enddate`
--

CREATE TABLE IF NOT EXISTS `gooraye_wehcat_member_enddate` (
`id` int(11) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `enddate` int(11) NOT NULL,
  `joinUpDate` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `token` varchar(40) NOT NULL DEFAULT ''
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=324 ;

--
-- 转存表中的数据 `gooraye_wehcat_member_enddate`
--

INSERT INTO `gooraye_wehcat_member_enddate` (`id`, `openid`, `enddate`, `joinUpDate`, `uid`, `token`) VALUES
(317, 'o0WJQt9SDeJN7vS4AMOr3lUhuBrI', 1403145053, 0, 0, 'ubddyd1402964682'),
(318, 'o0WJQt2q-8lMIVY__MKVtmOeEgU4', 1403576466, 0, 0, 'ubddyd1402964682'),
(319, 'oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8', 1403608854, 0, 0, 'caspcu1403054302'),
(320, 'oqMIVt0XES04VNcYVGqLUuCamF3s', 1403598836, 0, 0, 'caspcu1403054302'),
(321, 'oqMIVt8_WGJBCVtbp3MoIUl_Lm2k', 1403598849, 0, 0, 'caspcu1403054302'),
(322, 'oqMIVt5aLt6bsS8Nnk_DHx5_l0UI', 1403577604, 0, 0, 'caspcu1403054302'),
(323, 'oqMIVt4q_YCy4Pep2QGItFI0DYhw', 1403141480, 0, 0, 'caspcu1403054302');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_weixin_log`
--

CREATE TABLE IF NOT EXISTS `gooraye_weixin_log` (
`id` int(10) unsigned NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `loginfo` text CHARACTER SET utf8 NOT NULL,
  `operator` varchar(64) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='日志' AUTO_INCREMENT=905 ;

--
-- 转存表中的数据 `gooraye_weixin_log`
--

INSERT INTO `gooraye_weixin_log` (`id`, `ctime`, `loginfo`, `operator`) VALUES
(414, '2014-06-18 08:55:31', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403081731";s:7:"MsgType";s:4:"text";s:7:"Content";s:12:"精彩东南";s:5:"MsgId";s:19:"6026190148460248747";}', '在 reply 之前'),
(415, '2014-06-18 08:55:31', '精彩东南', 'cheat key'),
(416, '2014-06-18 08:55:31', '请说普通话呀,方言听不懂', 'chat_robot'),
(417, '2014-06-18 08:55:43', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403081743";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"走进东南";}', '在 reply 之前'),
(418, '2014-06-18 08:55:43', '走进东南', 'cheat key'),
(419, '2014-06-18 08:55:45', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403081745";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"品牌文化";}', '在 reply 之前'),
(420, '2014-06-18 08:55:45', '品牌文化', 'cheat key'),
(421, '2014-06-18 08:56:44', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt9SDeJN7vS4AMOr3lUhuBrI";s:10:"CreateTime";s:10:"1403081804";s:7:"MsgType";s:4:"text";s:7:"Content";s:19:"电影 黑暗之光";s:5:"MsgId";s:19:"6026190461993034180";}', '在 reply 之前'),
(422, '2014-06-18 08:57:31', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403081851";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"首页";s:5:"MsgId";s:19:"6026190663856324278";}', '在 reply 之前'),
(423, '2014-06-18 08:58:16', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt9SDeJN7vS4AMOr3lUhuBrI";s:10:"CreateTime";s:10:"1403081896";s:7:"MsgType";s:4:"text";s:7:"Content";s:22:"电影 中国合伙人";s:5:"MsgId";s:19:"6026190857130025415";}', '在 reply 之前'),
(424, '2014-06-18 08:58:17', '电影 中国合伙人', 'cheat key'),
(425, '2014-06-18 08:58:17', '请说普通话呀,方言听不懂', 'chat_robot'),
(426, '2014-06-18 08:58:35', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt9SDeJN7vS4AMOr3lUhuBrI";s:10:"CreateTime";s:10:"1403081915";s:7:"MsgType";s:4:"text";s:7:"Content";s:19:"电影 天龙八部";s:5:"MsgId";s:19:"6026190938734404041";}', '在 reply 之前'),
(427, '2014-06-18 08:59:10', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt9SDeJN7vS4AMOr3lUhuBrI";s:10:"CreateTime";s:10:"1403081950";s:7:"MsgType";s:4:"text";s:7:"Content";s:22:"电影 恶作剧之吻";s:5:"MsgId";s:19:"6026191089058259403";}', '在 reply 之前'),
(428, '2014-06-18 09:00:03', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403082002";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"预约试驾";}', '在 reply 之前'),
(429, '2014-06-18 09:00:04', '预约试驾', 'cheat key'),
(430, '2014-06-18 09:00:05', 'sorry,pardon?', 'chat_robot'),
(431, '2014-06-18 09:03:13', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt9SDeJN7vS4AMOr3lUhuBrI";s:10:"CreateTime";s:10:"1403082193";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"论坛";s:5:"MsgId";s:19:"6026192132735312340";}', '在 reply 之前'),
(432, '2014-06-18 09:03:13', '论坛', 'cheat key'),
(433, '2014-06-18 09:03:31', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403082211";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"留言";s:5:"MsgId";s:19:"6026192210044550846";}', '在 reply 之前'),
(434, '2014-06-18 09:03:31', '留言', 'cheat key'),
(435, '2014-06-18 09:24:15', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403083455";s:7:"MsgType";s:4:"text";s:7:"Content";s:15:"附近便利店";s:5:"MsgId";s:19:"6026197552984039924";}', '在 reply 之前'),
(436, '2014-06-18 09:24:29', 'a:9:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403083469";s:7:"MsgType";s:8:"location";s:10:"Location_X";s:9:"30.107189";s:10:"Location_Y";s:10:"120.604492";s:5:"Scale";s:2:"16";s:5:"Label";s:0:"";s:5:"MsgId";s:19:"6026197613113582071";}', '在 reply 之前'),
(437, '2014-06-19 00:53:43', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403139220";s:7:"MsgType";s:4:"text";s:7:"Content";s:16:"人品 向日葵";s:5:"MsgId";s:19:"6026437061835132239";}', '在 reply 之前'),
(438, '2014-06-19 00:54:07', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403139247";s:7:"MsgType";s:4:"text";s:7:"Content";s:15:"人品向日葵";s:5:"MsgId";s:19:"6026437177799249232";}', '在 reply 之前'),
(439, '2014-06-19 00:58:34', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403139514";s:7:"MsgType";s:4:"text";s:7:"Content";s:19:"电影 黑色子弹";s:5:"MsgId";s:19:"6026438324555517266";}', '在 reply 之前'),
(440, '2014-06-19 00:58:35', '电影 黑色子弹', '用户发送来的文本内容'),
(441, '2014-06-19 00:58:35', '请说普通话呀,方言听不懂', 'chat_robot'),
(442, '2014-06-19 00:59:35', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403139572";s:7:"MsgType";s:4:"text";s:7:"Content";s:19:"电影 黑色子弹";s:5:"MsgId";s:19:"6026438573663620436";}', '在 reply 之前'),
(443, '2014-06-19 00:59:35', '电影 黑色子弹', '用户发送来的文本内容'),
(444, '2014-06-19 00:59:35', 'sorry,I beg your pardon', 'chat_robot'),
(445, '2014-06-19 01:02:08', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403139728";s:7:"MsgType";s:4:"text";s:7:"Content";s:19:"电影 火影忍者";s:5:"MsgId";s:19:"6026439243678518615";}', '在 reply 之前'),
(446, '2014-06-19 01:10:37', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403140237";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"走进东南";}', '在 reply 之前'),
(447, '2014-06-19 01:10:37', '走进东南', '用户发送来的文本内容'),
(448, '2014-06-19 01:10:47', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403140247";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:18:"三菱品牌车型";}', '在 reply 之前'),
(449, '2014-06-19 01:10:47', '三菱品牌车型', '用户发送来的文本内容'),
(450, '2014-06-19 01:10:47', '是不是呀', 'chat_robot'),
(451, '2014-06-19 01:10:51', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403140251";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:18:"三菱品牌车型";}', '在 reply 之前'),
(452, '2014-06-19 01:10:51', '三菱品牌车型', '用户发送来的文本内容'),
(453, '2014-06-19 01:10:51', '是不是呀', 'chat_robot'),
(454, '2014-06-19 01:10:54', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403140254";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"热惠活动";}', '在 reply 之前'),
(455, '2014-06-19 01:10:54', '热惠活动', '用户发送来的文本内容'),
(456, '2014-06-19 01:11:13', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403140273";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"预约试驾";}', '在 reply 之前'),
(457, '2014-06-19 01:11:13', '预约试驾', '用户发送来的文本内容'),
(458, '2014-06-19 01:11:14', '额~好吧', 'chat_robot'),
(459, '2014-06-19 01:11:15', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403140275";s:7:"MsgType";s:4:"text";s:7:"Content";s:24:"天天快递130004442691";s:5:"MsgId";s:19:"6026441593025629540";}', '在 reply 之前'),
(460, '2014-06-19 01:11:15', '130004442691 天天', 'kuaidi'),
(461, '2014-06-19 01:11:17', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403140277";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"用车指南";}', '在 reply 之前'),
(462, '2014-06-19 01:11:17', '用车指南', '用户发送来的文本内容'),
(463, '2014-06-19 01:11:20', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403140280";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"服务理念";}', '在 reply 之前'),
(464, '2014-06-19 01:11:20', '服务理念', '用户发送来的文本内容'),
(465, '2014-06-19 01:11:41', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403140300";s:7:"MsgType";s:4:"text";s:7:"Content";s:17:"手机13484379290";s:5:"MsgId";s:19:"6026441700399811945";}', '在 reply 之前'),
(466, '2014-06-19 01:21:51', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403140911";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"微论坛";s:5:"MsgId";s:19:"6026444324624829814";}', '在 reply 之前'),
(467, '2014-06-19 01:21:51', '微论坛', '用户发送来的文本内容'),
(468, '2014-06-19 01:21:51', '请说普通话呀,方言听不懂', 'chat_robot'),
(469, '2014-06-19 01:22:08', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403140921";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"论坛";s:5:"MsgId";s:19:"6026444367574502777";}', '在 reply 之前'),
(470, '2014-06-19 01:22:08', '论坛', '用户发送来的文本内容'),
(471, '2014-06-19 01:23:04', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403140984";s:7:"MsgType";s:4:"text";s:7:"Content";s:19:"顺丰 130004442691";s:5:"MsgId";s:19:"6026444638157442431";}', '在 reply 之前'),
(472, '2014-06-19 01:23:04', '顺丰 130004442691', '用户发送来的文本内容'),
(473, '2014-06-19 01:23:04', '刚断网了,你说啥', 'chat_robot'),
(474, '2014-06-19 01:23:50', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403141029";s:7:"MsgType";s:4:"text";s:7:"Content";s:28:"身份证 330327199108120957";s:5:"MsgId";s:19:"6026444831430970754";}', '在 reply 之前'),
(475, '2014-06-19 01:25:22', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403141121";s:7:"MsgType";s:4:"text";s:7:"Content";s:19:" 绍兴 公交 8路";s:5:"MsgId";s:19:"6026445226567961989";}', '在 reply 之前'),
(476, '2014-06-19 01:26:06', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403141166";s:7:"MsgType";s:4:"text";s:7:"Content";s:17:" 绍兴公交8路";s:5:"MsgId";s:19:"6026445419841490313";}', '在 reply 之前'),
(477, '2014-06-19 01:26:29', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403141189";s:7:"MsgType";s:4:"text";s:7:"Content";s:18:" 绍兴公交 8路";s:5:"MsgId";s:19:"6026445518625738123";}', '在 reply 之前'),
(478, '2014-06-19 01:27:39', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403141258";s:7:"MsgType";s:4:"text";s:7:"Content";s:16:"绍兴公交8路";s:5:"MsgId";s:19:"6026445814978651535";}', '在 reply 之前'),
(479, '2014-06-19 01:27:47', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403141258";s:7:"MsgType";s:4:"text";s:7:"Content";s:16:"绍兴公交8路";s:5:"MsgId";s:19:"6026445814978651535";}', '在 reply 之前'),
(480, '2014-06-19 01:28:48', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403141327";s:7:"MsgType";s:4:"text";s:7:"Content";s:19:" 绍兴公交 88路";s:5:"MsgId";s:19:"6026446111331224976";}', '在 reply 之前'),
(481, '2014-06-19 01:30:13', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403141412";s:7:"MsgType";s:4:"text";s:7:"Content";s:29:" 绍兴公交 柯桥到市区";s:5:"MsgId";s:19:"6026446476403445140";}', '在 reply 之前'),
(482, '2014-06-19 01:30:26', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403141426";s:7:"MsgType";s:4:"text";s:7:"Content";s:16:"绍兴公交8路";s:5:"MsgId";s:19:"6026446536532987286";}', '在 reply 之前'),
(483, '2014-06-19 01:30:42', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403141441";s:7:"MsgType";s:4:"text";s:7:"Content";s:24:"厦门公交大医院站";s:5:"MsgId";s:19:"6026446600957496729";}', '在 reply 之前'),
(484, '2014-06-19 01:30:42', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt4q_YCy4Pep2QGItFI0DYhw";s:10:"CreateTime";s:10:"1403141436";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"撒比";s:5:"MsgId";s:19:"6026446579482660248";}', '在 reply 之前'),
(485, '2014-06-19 01:30:42', '撒比', '用户发送来的文本内容'),
(486, '2014-06-19 01:30:42', '', 'chat_robot'),
(487, '2014-06-19 01:30:49', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt4q_YCy4Pep2QGItFI0DYhw";s:10:"CreateTime";s:10:"1403141449";s:7:"MsgType";s:4:"text";s:7:"Content";s:16:"绍兴公交8路";s:5:"MsgId";s:19:"6026446635317235099";}', '在 reply 之前'),
(488, '2014-06-19 01:31:20', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt4q_YCy4Pep2QGItFI0DYhw";s:10:"CreateTime";s:10:"1403141474";s:7:"MsgType";s:4:"text";s:7:"Content";s:15:"光头佬傻逼";s:5:"MsgId";s:19:"6026446742691417501";}', '在 reply 之前'),
(489, '2014-06-19 01:31:20', '光头佬傻逼', '用户发送来的文本内容'),
(490, '2014-06-19 01:31:20', '稍等我下,去wc弄点东西吃', 'chat_robot'),
(491, '2014-06-19 01:37:10', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403141830";s:7:"MsgType";s:4:"text";s:7:"Content";s:24:"厦门公交大医院站";s:5:"MsgId";s:19:"6026448271699774884";}', '在 reply 之前'),
(492, '2014-06-19 01:53:08', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403142788";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"古睿官网";}', '在 reply 之前'),
(493, '2014-06-19 01:53:09', '古睿官网', '用户发送来的文本内容'),
(494, '2014-06-19 01:53:09', '不要开免提呀,我都听不清啦', 'chat_robot'),
(495, '2014-06-19 01:54:10', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403142849";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:6:"首页";}', '在 reply 之前'),
(496, '2014-06-19 01:54:21', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403142860";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:6:"首页";}', '在 reply 之前'),
(497, '2014-06-19 02:13:54', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt9SDeJN7vS4AMOr3lUhuBrI";s:10:"CreateTime";s:10:"1403144034";s:7:"MsgType";s:4:"text";s:7:"Content";s:12:"人品何必";s:5:"MsgId";s:19:"6026457737807865319";}', '在 reply 之前'),
(498, '2014-06-19 02:18:52', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt9SDeJN7vS4AMOr3lUhuBrI";s:10:"CreateTime";s:10:"1403144329";s:7:"MsgType";s:4:"text";s:7:"Content";s:15:"人品何必都";s:5:"MsgId";s:19:"6026459004823217656";}', '在 reply 之前'),
(499, '2014-06-19 02:30:24', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt9SDeJN7vS4AMOr3lUhuBrI";s:10:"CreateTime";s:10:"1403145024";s:7:"MsgType";s:4:"text";s:7:"Content";s:16:"百科 何必都";s:5:"MsgId";s:19:"6026461989825488403";}', '在 reply 之前'),
(500, '2014-06-19 02:30:53', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt9SDeJN7vS4AMOr3lUhuBrI";s:10:"CreateTime";s:10:"1403145053";s:7:"MsgType";s:4:"text";s:7:"Content";s:24:"要怎么哄女人开心";s:5:"MsgId";s:19:"6026462114379539991";}', '在 reply 之前'),
(501, '2014-06-19 02:30:53', '要怎么哄女人开心', '用户发送来的文本内容'),
(502, '2014-06-19 02:30:53', '刚断网了,你说啥', 'chat_robot'),
(503, '2014-06-19 02:37:01', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403145421";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"刮刮卡";s:5:"MsgId";s:19:"6026463694927334924";}', '在 reply 之前'),
(504, '2014-06-19 02:37:01', '刮刮卡', '用户发送来的文本内容'),
(505, '2014-06-19 02:56:00', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403146560";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:6:"首页";}', '在 reply 之前'),
(506, '2014-06-19 03:00:19', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403146820";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109844";s:9:"Longitude";s:10:"120.600296";s:9:"Precision";s:9:"65.000000";}', '在 reply 之前'),
(507, '2014-06-19 03:00:22', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403146822";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"走进古睿";}', '在 reply 之前'),
(508, '2014-06-19 03:00:22', '走进古睿', '用户发送来的文本内容'),
(509, '2014-06-19 03:02:18', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403146937";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"古睿文化";}', '在 reply 之前'),
(510, '2014-06-19 03:02:18', '古睿文化', '用户发送来的文本内容'),
(511, '2014-06-19 03:02:35', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403146954";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:6:"首页";}', '在 reply 之前'),
(512, '2014-06-19 03:03:49', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403147029";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微通汇";}', '在 reply 之前'),
(513, '2014-06-19 03:03:49', '微通汇', '用户发送来的文本内容'),
(514, '2014-06-19 03:03:49', '是不是呀', 'chat_robot'),
(515, '2014-06-19 03:03:51', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403147031";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"在线模板";}', '在 reply 之前'),
(516, '2014-06-19 03:03:51', '在线模板', '用户发送来的文本内容'),
(517, '2014-06-19 03:03:51', '额~好吧', 'chat_robot'),
(518, '2014-06-19 03:03:58', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403147036";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"在线模板";}', '在 reply 之前'),
(519, '2014-06-19 03:03:58', '在线模板', '用户发送来的文本内容'),
(520, '2014-06-19 03:03:58', 'sorry,I beg your pardon', 'chat_robot'),
(521, '2014-06-19 03:04:03', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403147043";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"在线模板";}', '在 reply 之前'),
(522, '2014-06-19 03:04:03', '在线模板', '用户发送来的文本内容'),
(523, '2014-06-19 03:04:03', '稍等我下,去wc弄点东西吃', 'chat_robot'),
(524, '2014-06-19 03:04:05', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403147045";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微通汇";}', '在 reply 之前'),
(525, '2014-06-19 03:04:06', '微通汇', '用户发送来的文本内容'),
(526, '2014-06-19 03:04:06', '稍等我下,去wc弄点东西吃', 'chat_robot'),
(527, '2014-06-19 03:04:08', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403147047";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"在线模板";}', '在 reply 之前'),
(528, '2014-06-19 03:04:08', '在线模板', '用户发送来的文本内容'),
(529, '2014-06-19 03:04:09', '刚断网了,你说啥', 'chat_robot'),
(530, '2014-06-19 03:04:14', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403147053";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"在线模板";}', '在 reply 之前'),
(531, '2014-06-19 03:04:14', '在线模板', '用户发送来的文本内容'),
(532, '2014-06-19 03:04:15', '不要开免提呀,我都听不清啦', 'chat_robot'),
(533, '2014-06-19 03:04:19', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403147058";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"服务理念";}', '在 reply 之前'),
(534, '2014-06-19 03:04:19', '服务理念', '用户发送来的文本内容'),
(535, '2014-06-19 03:04:35', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403147075";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"走进古睿";}', '在 reply 之前'),
(536, '2014-06-19 03:04:35', '走进古睿', '用户发送来的文本内容'),
(537, '2014-06-19 03:04:38', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403147078";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"古睿文化";}', '在 reply 之前'),
(538, '2014-06-19 03:04:38', '古睿文化', '用户发送来的文本内容'),
(539, '2014-06-19 03:04:41', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403147080";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:6:"首页";}', '在 reply 之前'),
(540, '2014-06-19 03:04:43', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403147083";s:7:"MsgType";s:5:"event";s:5:"Event";s:4:"VIEW";s:8:"EventKey";s:27:"http://wsq.qq.com/242096555";}', '在 reply 之前'),
(541, '2014-06-19 03:04:43', '', '用户发送来的文本内容'),
(542, '2014-06-19 03:04:47', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403147086";s:7:"MsgType";s:5:"event";s:5:"Event";s:4:"VIEW";s:8:"EventKey";s:18:"tel：057585060707";}', '在 reply 之前'),
(543, '2014-06-19 03:04:47', '', '用户发送来的文本内容'),
(544, '2014-06-19 03:04:52', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403147092";s:7:"MsgType";s:5:"event";s:5:"Event";s:4:"VIEW";s:8:"EventKey";s:18:"tel：057585060707";}', '在 reply 之前'),
(545, '2014-06-19 03:04:52', '', '用户发送来的文本内容'),
(546, '2014-06-19 03:37:48', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403149067";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"在线模板";}', '在 reply 之前'),
(547, '2014-06-19 03:37:48', '在线模板', '用户发送来的文本内容'),
(548, '2014-06-19 03:37:48', 'sorry,pardon?', 'chat_robot'),
(549, '2014-06-19 03:37:59', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403149079";s:7:"MsgType";s:5:"event";s:5:"Event";s:4:"VIEW";s:8:"EventKey";s:27:"http://wsq.qq.com/242096555";}', '在 reply 之前'),
(550, '2014-06-19 03:38:00', '', '用户发送来的文本内容'),
(551, '2014-06-21 09:52:23', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403344343";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"微信墙";s:5:"MsgId";s:19:"6027318058411793447";}', '在 reply 之前'),
(552, '2014-06-21 09:52:23', '微信墙', '用户发送来的文本内容'),
(553, '2014-06-21 09:54:45', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403344486";s:7:"MsgType";s:4:"text";s:7:"Content";s:15:"我上墙了膜";s:5:"MsgId";s:19:"6027318672592116777";}', '在 reply 之前'),
(554, '2014-06-21 09:54:46', '我上墙了膜', '用户发送来的文本内容'),
(555, '2014-06-21 09:54:46', '稍等我下,去wc弄点东西吃', 'chat_robot'),
(556, '2014-06-21 09:55:48', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403344548";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"微信墙";s:5:"MsgId";s:19:"6027318938880089131";}', '在 reply 之前'),
(557, '2014-06-21 09:55:48', '微信墙', '用户发送来的文本内容'),
(558, '2014-06-21 09:56:07', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403344568";s:7:"MsgType";s:4:"text";s:7:"Content";s:19:"/::)我进入了吗";s:5:"MsgId";s:19:"6027319024779435053";}', '在 reply 之前'),
(559, '2014-06-21 09:56:41', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403344601";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"妮妮";s:5:"MsgId";s:19:"6027319166513355825";}', '在 reply 之前'),
(560, '2014-06-21 10:01:11', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403344872";s:7:"MsgType";s:4:"text";s:7:"Content";s:7:"wx#quit";s:5:"MsgId";s:19:"6027320330449493056";}', '在 reply 之前'),
(561, '2014-06-21 10:01:12', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403344872";s:7:"MsgType";s:4:"text";s:7:"Content";s:3:"yao";s:5:"MsgId";s:19:"6027320330449493058";}', '在 reply 之前'),
(562, '2014-06-21 10:01:12', 'yao', '用户发送来的文本内容'),
(563, '2014-06-21 10:11:58', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403345518";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"刮刮卡";s:5:"MsgId";s:19:"6027323104998366303";}', '在 reply 之前'),
(564, '2014-06-21 10:11:58', '刮刮卡', '用户发送来的文本内容'),
(565, '2014-06-21 10:13:59', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403345639";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"大转盘";s:5:"MsgId";s:19:"6027323624689409121";}', '在 reply 之前'),
(566, '2014-06-21 10:14:00', '大转盘', '用户发送来的文本内容'),
(567, '2014-06-21 10:15:49', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403345749";s:7:"MsgType";s:4:"text";s:7:"Content";s:12:"水果达人";s:5:"MsgId";s:19:"6027324097135811687";}', '在 reply 之前'),
(568, '2014-06-21 10:15:49', '水果达人', '用户发送来的文本内容'),
(569, '2014-06-22 04:07:27', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403410047";s:7:"MsgType";s:4:"text";s:7:"Content";s:3:"360";s:5:"MsgId";s:19:"6027600254943010342";}', '在 reply 之前'),
(570, '2014-06-22 04:07:28', '360', '用户发送来的文本内容'),
(571, '2014-06-22 12:02:21', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438541";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109802";s:9:"Longitude";s:10:"120.600136";s:9:"Precision";s:9:"65.000000";}', '在 reply 之前'),
(572, '2014-06-22 12:03:09', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438590";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"走进古睿";}', '在 reply 之前'),
(573, '2014-06-22 12:03:10', '走进古睿', '用户发送来的文本内容'),
(574, '2014-06-22 12:03:19', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438600";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"古睿文化";}', '在 reply 之前'),
(575, '2014-06-22 12:03:20', '古睿文化', '用户发送来的文本内容'),
(576, '2014-06-22 12:03:27', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438607";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:6:"首页";}', '在 reply 之前'),
(577, '2014-06-22 12:03:33', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438613";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"在线模板";}', '在 reply 之前'),
(578, '2014-06-22 12:03:33', '在线模板', '用户发送来的文本内容'),
(579, '2014-06-22 12:03:33', 'sorry,I beg your pardon', 'chat_robot'),
(580, '2014-06-22 12:03:37', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438617";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"在线模板";}', '在 reply 之前'),
(581, '2014-06-22 12:03:37', '在线模板', '用户发送来的文本内容'),
(582, '2014-06-22 12:03:38', '是不是呀', 'chat_robot'),
(583, '2014-06-22 12:03:39', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438619";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"在线模板";}', '在 reply 之前'),
(584, '2014-06-22 12:03:39', '在线模板', '用户发送来的文本内容'),
(585, '2014-06-22 12:03:39', '是不是呀', 'chat_robot'),
(586, '2014-06-22 12:03:42', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438622";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"在线模板";}', '在 reply 之前'),
(587, '2014-06-22 12:03:42', '在线模板', '用户发送来的文本内容'),
(588, '2014-06-22 12:03:42', '', 'chat_robot'),
(589, '2014-06-22 12:03:45', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438625";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"在线模板";}', '在 reply 之前'),
(590, '2014-06-22 12:03:45', '在线模板', '用户发送来的文本内容'),
(591, '2014-06-22 12:03:45', 'sorry,pardon?', 'chat_robot'),
(592, '2014-06-22 12:03:46', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438627";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"在线模板";}', '在 reply 之前'),
(593, '2014-06-22 12:03:46', '在线模板', '用户发送来的文本内容'),
(594, '2014-06-22 12:03:47', '', 'chat_robot'),
(595, '2014-06-22 12:03:49', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438630";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微通汇";}', '在 reply 之前'),
(596, '2014-06-22 12:03:50', '微通汇', '用户发送来的文本内容'),
(597, '2014-06-22 12:03:50', 'sorry,pardon?', 'chat_robot'),
(598, '2014-06-22 12:03:52', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438632";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微通汇";}', '在 reply 之前'),
(599, '2014-06-22 12:03:52', '微通汇', '用户发送来的文本内容'),
(600, '2014-06-22 12:03:52', '稍等我下,去wc弄点东西吃', 'chat_robot'),
(601, '2014-06-22 12:03:54', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438634";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微通汇";}', '在 reply 之前'),
(602, '2014-06-22 12:03:54', '微通汇', '用户发送来的文本内容'),
(603, '2014-06-22 12:03:54', '你那边好吵喔,听不清', 'chat_robot'),
(604, '2014-06-22 12:03:57', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438637";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微通汇";}', '在 reply 之前'),
(605, '2014-06-22 12:03:57', '微通汇', '用户发送来的文本内容'),
(606, '2014-06-22 12:03:57', 'sorry,pardon?', 'chat_robot'),
(607, '2014-06-22 12:04:00', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438640";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微通汇";}', '在 reply 之前'),
(608, '2014-06-22 12:04:00', '微通汇', '用户发送来的文本内容'),
(609, '2014-06-22 12:04:00', '请说普通话呀,方言听不懂', 'chat_robot'),
(610, '2014-06-22 12:04:01', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438641";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微通汇";}', '在 reply 之前'),
(611, '2014-06-22 12:04:01', '微通汇', '用户发送来的文本内容'),
(612, '2014-06-22 12:04:01', '', 'chat_robot'),
(613, '2014-06-22 12:04:04', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438645";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微通汇";}', '在 reply 之前'),
(614, '2014-06-22 12:04:05', '微通汇', '用户发送来的文本内容'),
(615, '2014-06-22 12:04:05', 'sorry,I beg your pardon', 'chat_robot'),
(616, '2014-06-22 12:04:07', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438647";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:12:"服务理念";}', '在 reply 之前'),
(617, '2014-06-22 12:04:07', '服务理念', '用户发送来的文本内容'),
(618, '2014-06-22 12:04:16', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438656";s:7:"MsgType";s:5:"event";s:5:"Event";s:4:"VIEW";s:8:"EventKey";s:18:"tel：057585060707";}', '在 reply 之前'),
(619, '2014-06-22 12:04:16', '', '用户发送来的文本内容'),
(620, '2014-06-22 12:04:23', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438663";s:7:"MsgType";s:5:"event";s:5:"Event";s:4:"VIEW";s:8:"EventKey";s:18:"tel：057585060707";}', '在 reply 之前'),
(621, '2014-06-22 12:04:23', '', '用户发送来的文本内容'),
(622, '2014-06-22 12:04:27', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438667";s:7:"MsgType";s:5:"event";s:5:"Event";s:4:"VIEW";s:8:"EventKey";s:27:"http://wsq.qq.com/242096555";}', '在 reply 之前'),
(623, '2014-06-22 12:04:27', '', '用户发送来的文本内容'),
(624, '2014-06-22 12:05:59', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438759";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109802";s:9:"Longitude";s:10:"120.600136";s:9:"Precision";s:9:"65.000000";}', '在 reply 之前'),
(625, '2014-06-22 12:06:06', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403438765";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"你好";s:5:"MsgId";s:19:"6027723597813817250";}', '在 reply 之前'),
(626, '2014-06-22 12:06:06', '你好', '用户发送来的文本内容'),
(627, '2014-06-22 12:06:06', 'sorry,pardon?', 'chat_robot'),
(628, '2014-06-23 01:42:26', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403487746";s:7:"MsgType";s:4:"text";s:7:"Content";s:12:"人品计算";s:5:"MsgId";s:19:"6027933969606942964";}', '在 reply 之前'),
(629, '2014-06-23 01:42:33', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403487754";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"不是";s:5:"MsgId";s:19:"6027934003966681334";}', '在 reply 之前'),
(630, '2014-06-23 01:42:34', '不是', '用户发送来的文本内容'),
(631, '2014-06-23 01:42:34', '是不是呀', 'chat_robot'),
(632, '2014-06-23 01:42:38', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403487758";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"不是";s:5:"MsgId";s:19:"6027934021146550520";}', '在 reply 之前'),
(633, '2014-06-23 01:42:38', '不是', '用户发送来的文本内容'),
(634, '2014-06-23 01:42:38', '声音大点,没听清呀', 'chat_robot'),
(635, '2014-06-23 01:42:42', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403487762";s:7:"MsgType";s:4:"text";s:7:"Content";s:3:"是";s:5:"MsgId";s:19:"6027934038326419706";}', '在 reply 之前'),
(636, '2014-06-23 01:42:42', '是', '用户发送来的文本内容'),
(637, '2014-06-23 01:42:42', '是不是呀', 'chat_robot'),
(638, '2014-06-23 01:42:57', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403487777";s:7:"MsgType";s:4:"text";s:7:"Content";s:12:"人品计算";s:5:"MsgId";s:19:"6027934102750929148";}', '在 reply 之前'),
(639, '2014-06-23 01:43:11', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403487791";s:7:"MsgType";s:4:"text";s:7:"Content";s:22:"人品计算 徐梦斐";s:5:"MsgId";s:19:"6027934162880471302";}', '在 reply 之前'),
(640, '2014-06-23 02:10:31', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403489431";s:7:"MsgType";s:4:"text";s:7:"Content";s:3:"360";s:5:"MsgId";s:19:"6027941206627016841";}', '在 reply 之前'),
(641, '2014-06-23 02:10:31', '360', '用户发送来的文本内容'),
(642, '2014-06-23 02:37:17', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403491038";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"订餐";s:5:"MsgId";s:19:"6027948108639461742";}', '在 reply 之前'),
(643, '2014-06-23 02:37:18', '订餐', '用户发送来的文本内容'),
(644, '2014-06-23 03:00:30', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403492430";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"恭喜";s:5:"MsgId";s:19:"6027954087233937970";}', '在 reply 之前'),
(645, '2014-06-23 03:00:30', '恭喜', '用户发送来的文本内容'),
(646, '2014-06-23 03:16:24', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403493384";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"微论坛";s:5:"MsgId";s:19:"6027958184632738538";}', '在 reply 之前'),
(647, '2014-06-23 03:16:24', '微论坛', '用户发送来的文本内容'),
(648, '2014-06-23 03:16:24', '刚断网了,你说啥', 'chat_robot'),
(649, '2014-06-23 03:16:48', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403493408";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"论坛";s:5:"MsgId";s:19:"6027958287711953648";}', '在 reply 之前'),
(650, '2014-06-23 03:16:48', '论坛', '用户发送来的文本内容'),
(651, '2014-06-23 03:17:48', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403493468";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"留言板";s:5:"MsgId";s:19:"6027958545409991423";}', '在 reply 之前'),
(652, '2014-06-23 03:17:48', '留言板', '用户发送来的文本内容'),
(653, '2014-06-23 03:17:48', '', 'chat_robot'),
(654, '2014-06-23 03:18:46', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403493525";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"留言";s:5:"MsgId";s:19:"6027958790223127310";}', '在 reply 之前'),
(655, '2014-06-23 03:18:46', '留言', '用户发送来的文本内容'),
(656, '2014-06-23 03:23:59', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403493839";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"投票";s:5:"MsgId";s:19:"6027960138842858333";}', '在 reply 之前'),
(657, '2014-06-23 03:23:59', '投票', '用户发送来的文本内容'),
(658, '2014-06-23 07:02:39', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403506959";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"大转盘";s:5:"MsgId";s:19:"6028016488813782642";}', '在 reply 之前'),
(659, '2014-06-23 07:02:39', '大转盘', '用户发送来的文本内容'),
(660, '2014-06-23 07:02:40', 'sorry,pardon?', 'chat_robot'),
(661, '2014-06-23 07:03:43', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403507023";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"大转盘";s:5:"MsgId";s:19:"6028016763691689589";}', '在 reply 之前'),
(662, '2014-06-23 07:03:43', '大转盘', '用户发送来的文本内容'),
(663, '2014-06-23 07:03:43', '声音大点,没听清呀', 'chat_robot'),
(664, '2014-06-23 07:06:34', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403507194";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"大转盘";s:5:"MsgId";s:19:"6028017498131097215";}', '在 reply 之前'),
(665, '2014-06-23 07:06:34', '大转盘', '用户发送来的文本内容'),
(666, '2014-06-23 07:06:34', '你那边好吵喔,听不清', 'chat_robot'),
(667, '2014-06-23 07:06:56', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403507216";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"刮刮卡";s:5:"MsgId";s:19:"6028017592620377730";}', '在 reply 之前'),
(668, '2014-06-23 07:06:56', '刮刮卡', '用户发送来的文本内容'),
(669, '2014-06-23 07:06:56', '刚断网了,你说啥', 'chat_robot'),
(670, '2014-06-23 07:09:22', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403507362";s:7:"MsgType";s:4:"text";s:7:"Content";s:10:"刮刮卡1";s:5:"MsgId";s:19:"6028018219685602956";}', '在 reply 之前'),
(671, '2014-06-23 07:09:22', '刮刮卡1', '用户发送来的文本内容'),
(672, '2014-06-23 07:09:22', '不要开免提呀,我都听不清啦', 'chat_robot'),
(673, '2014-06-23 07:10:30', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403507430";s:7:"MsgType";s:4:"text";s:7:"Content";s:10:"刮刮卡1";s:5:"MsgId";s:19:"6028018511743379091";}', '在 reply 之前'),
(674, '2014-06-23 07:10:30', '刮刮卡1', '用户发送来的文本内容'),
(675, '2014-06-23 07:10:30', '是不是呀', 'chat_robot'),
(676, '2014-06-23 07:10:46', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403507446";s:7:"MsgType";s:4:"text";s:7:"Content";s:10:"刮刮卡1";s:5:"MsgId";s:19:"6028018580462855829";}', '在 reply 之前'),
(677, '2014-06-23 07:10:46', '刮刮卡1', '用户发送来的文本内容'),
(678, '2014-06-23 07:10:46', '', 'chat_robot'),
(679, '2014-06-23 07:10:54', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403507454";s:7:"MsgType";s:4:"text";s:7:"Content";s:10:"刮刮卡1";s:5:"MsgId";s:19:"6028018614822594198";}', '在 reply 之前'),
(680, '2014-06-23 07:10:54', '刮刮卡1', '用户发送来的文本内容'),
(681, '2014-06-23 07:10:54', 'sorry,I beg your pardon', 'chat_robot'),
(682, '2014-06-23 07:49:30', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403509770";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"投票";s:5:"MsgId";s:19:"6028028561966851835";}', '在 reply 之前'),
(683, '2014-06-23 07:49:30', '投票', '用户发送来的文本内容'),
(684, '2014-06-23 07:51:17', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403509877";s:7:"MsgType";s:4:"text";s:7:"Content";s:7:"投票1";s:5:"MsgId";s:19:"6028029021528352517";}', '在 reply 之前'),
(685, '2014-06-23 07:51:17', '投票1', '用户发送来的文本内容'),
(686, '2014-06-23 08:00:27', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403510427";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"汽车";s:5:"MsgId";s:19:"6028031383760365360";}', '在 reply 之前'),
(687, '2014-06-23 08:00:27', '汽车', '用户发送来的文本内容'),
(688, '2014-06-23 08:02:03', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403510523";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"微汽车";s:5:"MsgId";s:19:"6028031796077225788";}', '在 reply 之前'),
(689, '2014-06-23 08:02:03', '微汽车', '用户发送来的文本内容'),
(690, '2014-06-23 08:02:03', '', 'chat_robot'),
(691, '2014-06-23 08:02:14', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403510534";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"微汽车";s:5:"MsgId";s:19:"6028031843321866045";}', '在 reply 之前'),
(692, '2014-06-23 08:02:14', '微汽车', '用户发送来的文本内容'),
(693, '2014-06-23 08:02:14', '你那边好吵喔,听不清', 'chat_robot'),
(694, '2014-06-23 08:02:29', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403510549";s:7:"MsgType";s:4:"text";s:7:"Content";s:2:"44";s:5:"MsgId";s:19:"6028031907746375487";}', '在 reply 之前'),
(695, '2014-06-23 08:02:29', '44', '用户发送来的文本内容'),
(696, '2014-06-23 08:04:11', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403510651";s:7:"MsgType";s:4:"text";s:7:"Content";s:12:"玛莎拉蒂";s:5:"MsgId";s:19:"6028032345833039695";}', '在 reply 之前'),
(697, '2014-06-23 08:04:11', '玛莎拉蒂', '用户发送来的文本内容'),
(698, '2014-06-23 08:04:11', '声音大点,没听清呀', 'chat_robot'),
(699, '2014-06-23 08:05:06', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403510706";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"微汽车";s:5:"MsgId";s:19:"6028032582056240978";}', '在 reply 之前'),
(700, '2014-06-23 08:05:06', '微汽车', '用户发送来的文本内容'),
(701, '2014-06-23 08:05:06', '额~好吧', 'chat_robot');
INSERT INTO `gooraye_weixin_log` (`id`, `ctime`, `loginfo`, `operator`) VALUES
(702, '2014-06-23 08:05:09', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403510709";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"汽车";s:5:"MsgId";s:19:"6028032594941142868";}', '在 reply 之前'),
(703, '2014-06-23 08:05:09', '汽车', '用户发送来的文本内容'),
(704, '2014-06-23 08:28:04', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403512084";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"楼盘";s:5:"MsgId";s:19:"6028038500521174981";}', '在 reply 之前'),
(705, '2014-06-23 08:28:05', '楼盘', '用户发送来的文本内容'),
(706, '2014-06-23 08:28:05', '刚断网了,你说啥', 'chat_robot'),
(707, '2014-06-23 08:29:15', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403512155";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"楼盘";s:5:"MsgId";s:19:"6028038805463853004";}', '在 reply 之前'),
(708, '2014-06-23 08:29:15', '楼盘', '用户发送来的文本内容'),
(709, '2014-06-23 08:46:36', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403513196";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"学校";s:5:"MsgId";s:19:"6028043276524808198";}', '在 reply 之前'),
(710, '2014-06-23 08:46:36', '学校', '用户发送来的文本内容'),
(711, '2014-06-23 08:56:40', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403513800";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"微医疗";s:5:"MsgId";s:19:"6028045870685055015";}', '在 reply 之前'),
(712, '2014-06-23 08:56:40', '微医疗', '用户发送来的文本内容'),
(713, '2014-06-23 09:01:40', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403514100";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"酒店";s:5:"MsgId";s:19:"6028047159175243834";}', '在 reply 之前'),
(714, '2014-06-23 09:01:40', '酒店', '用户发送来的文本内容'),
(715, '2014-06-23 09:05:44', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403514344";s:7:"MsgType";s:4:"text";s:7:"Content";s:3:"123";s:5:"MsgId";s:19:"6028048207147264069";}', '在 reply 之前'),
(716, '2014-06-23 09:05:44', '123', '用户发送来的文本内容'),
(717, '2014-06-23 09:11:02', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403514662";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"商家";s:5:"MsgId";s:19:"6028049572946864217";}', '在 reply 之前'),
(718, '2014-06-23 09:11:02', '商家', '用户发送来的文本内容'),
(719, '2014-06-24 01:35:06', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403573706";s:7:"MsgType";s:4:"text";s:7:"Content";s:12:"算命李白";s:5:"MsgId";s:19:"6028303164995890839";}', '在 reply 之前'),
(720, '2014-06-24 01:37:25', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403573845";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"糗事";s:5:"MsgId";s:19:"6028303761996163030";}', '在 reply 之前'),
(721, '2014-06-24 01:37:25', '糗事', '用户发送来的文本内容'),
(722, '2014-06-24 01:37:26', '声音大点,没听清呀', 'chat_robot'),
(723, '2014-06-24 01:41:32', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403574092";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"糗事";s:5:"MsgId";s:19:"6028304822853085147";}', '在 reply 之前'),
(724, '2014-06-24 01:41:32', '糗事', '用户发送来的文本内容'),
(725, '2014-06-24 01:41:33', '你那边好吵喔,听不清', 'chat_robot'),
(726, '2014-06-24 01:41:37', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403574097";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"笑话";s:5:"MsgId";s:19:"6028304844327921629";}', '在 reply 之前'),
(727, '2014-06-24 01:43:53', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403574232";s:7:"MsgType";s:4:"text";s:7:"Content";s:13:"梦见 父母";s:5:"MsgId";s:19:"6028305424148506593";}', '在 reply 之前'),
(728, '2014-06-24 01:44:02', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403574242";s:7:"MsgType";s:4:"text";s:7:"Content";s:12:"梦见同学";s:5:"MsgId";s:19:"6028305467098179555";}', '在 reply 之前'),
(729, '2014-06-24 01:44:22', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403574260";s:7:"MsgType";s:4:"text";s:7:"Content";s:12:"梦见女人";s:5:"MsgId";s:19:"6028305544407590885";}', '在 reply 之前'),
(730, '2014-06-24 01:44:33', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403574270";s:7:"MsgType";s:4:"text";s:7:"Content";s:12:"梦见周公";s:5:"MsgId";s:19:"6028305587357263847";}', '在 reply 之前'),
(731, '2014-06-24 01:44:38', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403574270";s:7:"MsgType";s:4:"text";s:7:"Content";s:12:"梦见周公";s:5:"MsgId";s:19:"6028305587357263847";}', '在 reply 之前'),
(732, '2014-06-24 01:44:44', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403574270";s:7:"MsgType";s:4:"text";s:7:"Content";s:12:"梦见周公";s:5:"MsgId";s:19:"6028305587357263847";}', '在 reply 之前'),
(733, '2014-06-24 01:58:16', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403575096";s:7:"MsgType";s:4:"text";s:7:"Content";s:15:"算命徐梦斐";s:5:"MsgId";s:19:"6028309135000432334";}', '在 reply 之前'),
(734, '2014-06-24 01:58:52', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403575132";s:7:"MsgType";s:4:"text";s:7:"Content";s:12:"算命徐斐";s:5:"MsgId";s:19:"6028309289619254994";}', '在 reply 之前'),
(735, '2014-06-24 01:59:11', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403575151";s:7:"MsgType";s:4:"text";s:7:"Content";s:15:"算命徐秀敏";s:5:"MsgId";s:19:"6028309371223633621";}', '在 reply 之前'),
(736, '2014-06-24 01:59:37', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403575177";s:7:"MsgType";s:4:"text";s:7:"Content";s:16:"算命 徐梦斐";s:5:"MsgId";s:19:"6028309482892783319";}', '在 reply 之前'),
(737, '2014-06-24 01:59:54', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403575195";s:7:"MsgType";s:4:"text";s:7:"Content";s:12:"算命梦斐";s:5:"MsgId";s:19:"6028309560202194649";}', '在 reply 之前'),
(738, '2014-06-24 02:01:12', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403575272";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"团购";s:5:"MsgId";s:19:"6028309890914676450";}', '在 reply 之前'),
(739, '2014-06-24 02:01:12', '团购', '用户发送来的文本内容'),
(740, '2014-06-24 02:02:53', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403575373";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"商城";s:5:"MsgId";s:19:"6028310324706373348";}', '在 reply 之前'),
(741, '2014-06-24 02:02:53', '商城', '用户发送来的文本内容'),
(742, '2014-06-24 02:05:47', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403575547";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"商城";s:5:"MsgId";s:19:"6028311072030682855";}', '在 reply 之前'),
(743, '2014-06-24 02:05:47', '商城', '用户发送来的文本内容'),
(744, '2014-06-24 02:09:17', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403575757";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"微商城";s:5:"MsgId";s:19:"6028311973973815020";}', '在 reply 之前'),
(745, '2014-06-24 02:09:17', '微商城', '用户发送来的文本内容'),
(746, '2014-06-24 02:09:18', '请说普通话呀,方言听不懂', 'chat_robot'),
(747, '2014-06-24 02:14:21', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403576060";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"首页";s:5:"MsgId";s:19:"6028313275348723736";}', '在 reply 之前'),
(748, '2014-06-24 02:20:17', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403576417";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"相册";s:5:"MsgId";s:19:"6028314808652230395";}', '在 reply 之前'),
(749, '2014-06-24 02:20:17', '相册', '用户发送来的文本内容'),
(750, '2014-06-24 02:21:06', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403576465";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"相册";s:5:"MsgId";s:19:"6028315014810660606";}', '在 reply 之前'),
(751, '2014-06-24 02:21:06', '相册', '用户发送来的文本内容'),
(752, '2014-06-24 02:38:38', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403577518";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109800";s:9:"Longitude";s:10:"120.600128";s:9:"Precision";s:9:"65.000000";}', '在 reply 之前'),
(753, '2014-06-24 02:40:04', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403577604";s:7:"MsgType";s:4:"text";s:7:"Content";s:4:"/::+";s:5:"MsgId";s:19:"6028319906778228788";}', '在 reply 之前'),
(754, '2014-06-24 02:40:04', '/::+', '用户发送来的文本内容'),
(755, '2014-06-24 02:40:04', '额~好吧', 'chat_robot'),
(756, '2014-06-24 02:43:11', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403577791";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109814";s:9:"Longitude";s:10:"120.600204";s:9:"Precision";s:9:"68.952805";}', '在 reply 之前'),
(757, '2014-06-24 02:45:17', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403577917";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"分享";s:5:"MsgId";s:19:"6028321251102992450";}', '在 reply 之前'),
(758, '2014-06-24 02:45:17', '分享', '用户发送来的文本内容'),
(759, '2014-06-24 02:45:17', '你那边好吵喔,听不清', 'chat_robot'),
(760, '2014-06-24 02:50:29', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403578230";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"大转盘";s:5:"MsgId";s:19:"6028322595427756107";}', '在 reply 之前'),
(761, '2014-06-24 02:50:30', '大转盘', '用户发送来的文本内容'),
(762, '2014-06-24 02:52:51', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403578372";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"优惠券";s:5:"MsgId";s:19:"6028323205313112142";}', '在 reply 之前'),
(763, '2014-06-24 02:52:51', '优惠券', '用户发送来的文本内容'),
(764, '2014-06-24 02:53:18', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403578398";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109802";s:9:"Longitude";s:10:"120.600136";s:9:"Precision";s:9:"65.000000";}', '在 reply 之前'),
(765, '2014-06-24 02:55:02', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403578502";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"刮刮卡";s:5:"MsgId";s:19:"6028323763658860626";}', '在 reply 之前'),
(766, '2014-06-24 02:55:02', '刮刮卡', '用户发送来的文本内容'),
(767, '2014-06-24 02:56:49', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403578609";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"刮刮卡";s:5:"MsgId";s:19:"6028324223220361310";}', '在 reply 之前'),
(768, '2014-06-24 02:56:49', '刮刮卡', '用户发送来的文本内容'),
(769, '2014-06-24 02:57:48', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403578668";s:7:"MsgType";s:4:"text";s:7:"Content";s:12:"水果达人";s:5:"MsgId";s:19:"6028324476623431776";}', '在 reply 之前'),
(770, '2014-06-24 02:57:48', '水果达人', '用户发送来的文本内容'),
(771, '2014-06-24 03:00:03', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403578802";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"砸金蛋";s:5:"MsgId";s:19:"6028325052149049445";}', '在 reply 之前'),
(772, '2014-06-24 03:00:03', '砸金蛋', '用户发送来的文本内容'),
(773, '2014-06-24 03:02:27', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403578948";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"贺卡";s:5:"MsgId";s:19:"6028325679214274664";}', '在 reply 之前'),
(774, '2014-06-24 03:02:27', '贺卡', '用户发送来的文本内容'),
(775, '2014-06-24 03:04:35', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403579075";s:7:"MsgType";s:4:"text";s:7:"Content";s:3:"摇";s:5:"MsgId";s:19:"6028326224675121260";}', '在 reply 之前'),
(776, '2014-06-24 03:04:35', '摇', '用户发送来的文本内容'),
(777, '2014-06-24 03:07:21', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403579241";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"微信墙";s:5:"MsgId";s:19:"6028326937639692398";}', '在 reply 之前'),
(778, '2014-06-24 03:07:21', '微信墙', '用户发送来的文本内容'),
(779, '2014-06-24 03:08:04', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403579284";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"微信墙";s:5:"MsgId";s:19:"6028327122323286128";}', '在 reply 之前'),
(780, '2014-06-24 03:08:04', '微信墙', '用户发送来的文本内容'),
(781, '2014-06-24 03:08:32', 'a:7:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403579311";s:7:"MsgType";s:5:"image";s:6:"PicUrl";s:115:"http://mmbiz.qpic.cn/mmbiz/qvs1Vm71r3yOlzvjpn0dwOEhHvG7OFIT9hwOsUKZWFQbTLvaha6wuOgKWP4KDArxQdIpSmR52nlptbrVaD4NpA/0";s:5:"MsgId";s:19:"6028327238287403122";s:7:"MediaId";s:64:"PzQC2-rkVFEHUxQ8cbs_6ggtN-w6U5-Zg7gJzVldTSN4lt7IVfaqV_Hhk3GcyE81";}', '在 reply 之前'),
(782, '2014-06-24 03:10:12', 'a:7:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403579411";s:7:"MsgType";s:5:"image";s:6:"PicUrl";s:116:"http://mmbiz.qpic.cn/mmbiz/qvs1Vm71r3yOlzvjpn0dwOEhHvG7OFITWXAV07FXSbe9yaTnIQKVJgyeB22cPM6yaNN2hubSP9WibDfSGzD62Ww/0";s:5:"MsgId";s:19:"6028327667784132724";s:7:"MediaId";s:64:"YIJjLDRfObePX--Oq9j5-AxgYmKRdhcIkVHvUVMW6KYoydau4_jq0Z2DqgiYsVCO";}', '在 reply 之前'),
(783, '2014-06-24 03:10:31', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403579431";s:7:"MsgType";s:4:"text";s:7:"Content";s:7:"wx#quit";s:5:"MsgId";s:19:"6028327753683478646";}', '在 reply 之前'),
(784, '2014-06-24 05:30:51', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403587851";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"会员卡";s:5:"MsgId";s:19:"6028363917308111067";}', '在 reply 之前'),
(785, '2014-06-24 06:34:04', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt5aLt6bsS8Nnk_DHx5_l0UI";s:10:"CreateTime";s:10:"1403591644";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.080967";s:9:"Longitude";s:10:"120.613441";s:9:"Precision";s:9:"65.000000";}', '在 reply 之前'),
(786, '2014-06-24 07:50:40', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt2q-8lMIVY__MKVtmOeEgU4";s:10:"CreateTime";s:10:"1403596240";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"团购";s:5:"MsgId";s:19:"6028399947788939787";}', '在 reply 之前'),
(787, '2014-06-24 07:50:40', '团购', '用户发送来的文本内容'),
(788, '2014-06-24 08:06:50', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597210";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109818";s:9:"Longitude";s:10:"120.600410";s:9:"Precision";s:10:"120.000000";}', '在 reply 之前'),
(789, '2014-06-24 08:06:55', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597215";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109818";s:9:"Longitude";s:10:"120.600410";s:9:"Precision";s:10:"120.000000";}', '在 reply 之前'),
(790, '2014-06-24 08:07:20', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597240";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109818";s:9:"Longitude";s:10:"120.600410";s:9:"Precision";s:10:"120.000000";}', '在 reply 之前'),
(791, '2014-06-24 08:13:47', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403597626";s:7:"MsgType";s:5:"event";s:5:"Event";s:11:"unsubscribe";s:8:"EventKey";s:0:"";}', '在 reply 之前'),
(792, '2014-06-24 08:13:47', '', '用户发送来的文本内容'),
(793, '2014-06-24 08:14:12', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403597652";s:7:"MsgType";s:5:"event";s:5:"Event";s:9:"subscribe";s:8:"EventKey";s:0:"";}', '在 reply 之前'),
(794, '2014-06-24 08:14:35', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597675";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109825";s:9:"Longitude";s:10:"120.600388";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(795, '2014-06-24 08:14:39', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597679";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109825";s:9:"Longitude";s:10:"120.600388";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(796, '2014-06-24 08:15:04', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597704";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109825";s:9:"Longitude";s:10:"120.600388";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(797, '2014-06-24 08:15:29', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597729";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109825";s:9:"Longitude";s:10:"120.600388";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(798, '2014-06-24 08:15:45', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597745";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109825";s:9:"Longitude";s:10:"120.600388";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(799, '2014-06-24 08:15:54', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597754";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109825";s:9:"Longitude";s:10:"120.600388";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(800, '2014-06-24 08:15:59', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597759";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109825";s:9:"Longitude";s:10:"120.600388";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(801, '2014-06-24 08:16:01', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597761";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微酒店";}', '在 reply 之前'),
(802, '2014-06-24 08:16:01', '微酒店', '用户发送来的文本内容'),
(803, '2014-06-24 08:16:01', '刚断网了,你说啥', 'chat_robot'),
(804, '2014-06-24 08:16:05', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597764";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109804";s:9:"Longitude";s:10:"120.600304";s:9:"Precision";s:9:"90.000000";}', '在 reply 之前'),
(805, '2014-06-24 08:16:11', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597771";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微餐饮";}', '在 reply 之前'),
(806, '2014-06-24 08:16:11', '微餐饮', '用户发送来的文本内容'),
(807, '2014-06-24 08:16:11', 'sorry,I beg your pardon', 'chat_robot'),
(808, '2014-06-24 08:16:30', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597789";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109804";s:9:"Longitude";s:10:"120.600304";s:9:"Precision";s:9:"90.000000";}', '在 reply 之前'),
(809, '2014-06-24 08:16:55', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597815";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109770";s:9:"Longitude";s:10:"120.600227";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(810, '2014-06-24 08:17:19', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597839";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109770";s:9:"Longitude";s:10:"120.600227";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(811, '2014-06-24 08:17:42', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597862";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109818";s:9:"Longitude";s:10:"120.600410";s:9:"Precision";s:10:"120.000000";}', '在 reply 之前'),
(812, '2014-06-24 08:17:54', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597874";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109818";s:9:"Longitude";s:10:"120.600410";s:9:"Precision";s:10:"120.000000";}', '在 reply 之前'),
(813, '2014-06-24 08:17:59', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597879";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109818";s:9:"Longitude";s:10:"120.600410";s:9:"Precision";s:10:"120.000000";}', '在 reply 之前'),
(814, '2014-06-24 08:18:10', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403597889";s:7:"MsgType";s:5:"event";s:5:"Event";s:4:"VIEW";s:8:"EventKey";s:27:"http://wsq.qq.com/242096555";}', '在 reply 之前'),
(815, '2014-06-24 08:18:10', '', '用户发送来的文本内容'),
(816, '2014-06-24 08:18:29', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403597909";s:7:"MsgType";s:5:"event";s:5:"Event";s:4:"VIEW";s:8:"EventKey";s:34:"http://wsq.qq.com/reflow/242096555";}', '在 reply 之前'),
(817, '2014-06-24 08:18:29', '', '用户发送来的文本内容'),
(818, '2014-06-24 08:19:22', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597962";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109825";s:9:"Longitude";s:10:"120.600388";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(819, '2014-06-24 08:19:26', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597966";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109825";s:9:"Longitude";s:10:"120.600388";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(820, '2014-06-24 08:19:30', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403597970";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"留言";s:5:"MsgId";s:19:"6028407378082179606";}', '在 reply 之前'),
(821, '2014-06-24 08:19:30', '留言', '用户发送来的文本内容'),
(822, '2014-06-24 08:22:59', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598179";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109825";s:9:"Longitude";s:10:"120.600388";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(823, '2014-06-24 08:23:04', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598184";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109818";s:9:"Longitude";s:10:"120.600410";s:9:"Precision";s:10:"120.000000";}', '在 reply 之前'),
(824, '2014-06-24 08:23:05', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598185";s:7:"MsgType";s:5:"event";s:5:"Event";s:4:"VIEW";s:8:"EventKey";s:18:"tel：057585060707";}', '在 reply 之前'),
(825, '2014-06-24 08:23:05', '', '用户发送来的文本内容'),
(826, '2014-06-24 08:23:58', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598238";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109818";s:9:"Longitude";s:10:"120.600410";s:9:"Precision";s:10:"120.000000";}', '在 reply 之前'),
(827, '2014-06-24 08:24:01', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598241";s:7:"MsgType";s:5:"event";s:5:"Event";s:4:"VIEW";s:8:"EventKey";s:18:"tel：057585060707";}', '在 reply 之前'),
(828, '2014-06-24 08:24:01', '', '用户发送来的文本内容'),
(829, '2014-06-24 08:24:18', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598258";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109818";s:9:"Longitude";s:10:"120.600410";s:9:"Precision";s:10:"120.000000";}', '在 reply 之前'),
(830, '2014-06-24 08:24:20', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598260";s:7:"MsgType";s:5:"event";s:5:"Event";s:4:"VIEW";s:8:"EventKey";s:18:"tel：057585060707";}', '在 reply 之前'),
(831, '2014-06-24 08:24:20', '', '用户发送来的文本内容'),
(832, '2014-06-24 08:24:23', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598263";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109818";s:9:"Longitude";s:10:"120.600410";s:9:"Precision";s:10:"120.000000";}', '在 reply 之前'),
(833, '2014-06-24 08:24:36', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598275";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109818";s:9:"Longitude";s:10:"120.600410";s:9:"Precision";s:10:"120.000000";}', '在 reply 之前'),
(834, '2014-06-24 08:24:53', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598292";s:7:"MsgType";s:5:"event";s:5:"Event";s:4:"VIEW";s:8:"EventKey";s:18:"tel：057585060707";}', '在 reply 之前'),
(835, '2014-06-24 08:24:53', '', '用户发送来的文本内容'),
(836, '2014-06-24 08:24:55', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598294";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109818";s:9:"Longitude";s:10:"120.600410";s:9:"Precision";s:10:"120.000000";}', '在 reply 之前'),
(837, '2014-06-24 08:25:00', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598300";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微官网";}', '在 reply 之前'),
(838, '2014-06-24 08:25:00', '微官网', '用户发送来的文本内容'),
(839, '2014-06-24 08:25:00', '', 'chat_robot'),
(840, '2014-06-24 08:25:09', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598309";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微官网";}', '在 reply 之前'),
(841, '2014-06-24 08:25:09', '微官网', '用户发送来的文本内容'),
(842, '2014-06-24 08:25:09', '', 'chat_robot'),
(843, '2014-06-24 08:25:18', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598318";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"微官网";s:5:"MsgId";s:19:"6028408872730798628";}', '在 reply 之前'),
(844, '2014-06-24 08:25:18', '微官网', '用户发送来的文本内容'),
(845, '2014-06-24 08:25:18', '声音大点,没听清呀', 'chat_robot'),
(846, '2014-06-24 08:25:21', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598321";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109818";s:9:"Longitude";s:10:"120.600410";s:9:"Precision";s:10:"120.000000";}', '在 reply 之前'),
(847, '2014-06-24 08:25:33', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598333";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"首页";s:5:"MsgId";s:19:"6028408937155308071";}', '在 reply 之前'),
(848, '2014-06-24 08:26:31', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598391";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109770";s:9:"Longitude";s:10:"120.600227";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(849, '2014-06-24 08:26:34', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598394";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微官网";}', '在 reply 之前'),
(850, '2014-06-24 08:26:34', '微官网', '用户发送来的文本内容'),
(851, '2014-06-24 08:26:34', '刚断网了,你说啥', 'chat_robot'),
(852, '2014-06-24 08:31:38', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598698";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109770";s:9:"Longitude";s:10:"120.600227";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(853, '2014-06-24 08:31:41', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598701";s:7:"MsgType";s:5:"event";s:5:"Event";s:4:"VIEW";s:8:"EventKey";s:130:"http://114.215.198.83/index.php?g=Wap&m=Reply&a=index&token=caspcu1403054302&wecha_id=oqMIVt0XES04VNcYVGqLUuCamF3s&sgssz=mp.weixin";}', '在 reply 之前'),
(854, '2014-06-24 08:31:41', '', '用户发送来的文本内容'),
(855, '2014-06-24 08:31:44', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598703";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109770";s:9:"Longitude";s:10:"120.600227";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(856, '2014-06-24 08:31:45', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598705";s:7:"MsgType";s:5:"event";s:5:"Event";s:4:"VIEW";s:8:"EventKey";s:18:"tel：057585060707";}', '在 reply 之前'),
(857, '2014-06-24 08:31:45', '', '用户发送来的文本内容'),
(858, '2014-06-24 08:31:57', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598717";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109770";s:9:"Longitude";s:10:"120.600227";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(859, '2014-06-24 08:32:01', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598721";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微酒店";}', '在 reply 之前'),
(860, '2014-06-24 08:32:01', '微酒店', '用户发送来的文本内容'),
(861, '2014-06-24 08:32:01', '请说普通话呀,方言听不懂', 'chat_robot'),
(862, '2014-06-24 08:32:04', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598724";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微官网";}', '在 reply 之前'),
(863, '2014-06-24 08:32:04', '微官网', '用户发送来的文本内容'),
(864, '2014-06-24 08:32:05', 'sorry,I beg your pardon', 'chat_robot'),
(865, '2014-06-24 08:32:07', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598727";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微官网";}', '在 reply 之前'),
(866, '2014-06-24 08:32:07', '微官网', '用户发送来的文本内容'),
(867, '2014-06-24 08:32:07', '请说普通话呀,方言听不懂', 'chat_robot'),
(868, '2014-06-24 08:32:27', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598746";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109818";s:9:"Longitude";s:10:"120.600410";s:9:"Precision";s:10:"120.000000";}', '在 reply 之前'),
(869, '2014-06-24 08:32:51', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598771";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微官网";}', '在 reply 之前'),
(870, '2014-06-24 08:32:51', '微官网', '用户发送来的文本内容'),
(871, '2014-06-24 08:32:51', '请说普通话呀,方言听不懂', 'chat_robot'),
(872, '2014-06-24 08:32:52', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598771";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109770";s:9:"Longitude";s:10:"120.600227";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(873, '2014-06-24 08:32:56', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598776";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109770";s:9:"Longitude";s:10:"120.600227";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(874, '2014-06-24 08:32:56', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598776";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微官网";}', '在 reply 之前'),
(875, '2014-06-24 08:32:56', '微官网', '用户发送来的文本内容'),
(876, '2014-06-24 08:32:57', '声音大点,没听清呀', 'chat_robot'),
(877, '2014-06-24 08:33:01', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598781";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109770";s:9:"Longitude";s:10:"120.600227";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(878, '2014-06-24 08:33:20', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598800";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微官网";}', '在 reply 之前'),
(879, '2014-06-24 08:33:20', '微官网', '用户发送来的文本内容'),
(880, '2014-06-24 08:33:20', '', 'chat_robot'),
(881, '2014-06-24 08:33:24', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598804";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微官网";}', '在 reply 之前'),
(882, '2014-06-24 08:33:24', '微官网', '用户发送来的文本内容'),
(883, '2014-06-24 08:33:24', '声音大点,没听清呀', 'chat_robot'),
(884, '2014-06-24 08:33:26', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598806";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109770";s:9:"Longitude";s:10:"120.600227";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(885, '2014-06-24 08:33:37', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403598817";s:7:"MsgType";s:5:"event";s:5:"Event";s:5:"CLICK";s:8:"EventKey";s:9:"微官网";}', '在 reply 之前'),
(886, '2014-06-24 08:33:37', '微官网', '用户发送来的文本内容'),
(887, '2014-06-24 08:33:37', '稍等我下,去wc弄点东西吃', 'chat_robot'),
(888, '2014-06-24 08:33:40', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403598820";s:7:"MsgType";s:5:"event";s:5:"Event";s:4:"VIEW";s:8:"EventKey";s:130:"http://114.215.198.83/index.php?g=Wap&m=Index&a=index&token=caspcu1403054302&wecha_id=oqMIVt0XES04VNcYVGqLUuCamF3s&sgssz=mp.weixin";}', '在 reply 之前'),
(889, '2014-06-24 08:33:40', '', '用户发送来的文本内容'),
(890, '2014-06-24 08:33:55', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598835";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109770";s:9:"Longitude";s:10:"120.600227";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(891, '2014-06-24 08:33:56', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598836";s:7:"MsgType";s:5:"event";s:5:"Event";s:4:"VIEW";s:8:"EventKey";s:130:"http://114.215.198.83/index.php?g=Wap&m=Index&a=index&token=caspcu1403054302&wecha_id=oqMIVt0XES04VNcYVGqLUuCamF3s&sgssz=mp.weixin";}', '在 reply 之前'),
(892, '2014-06-24 08:33:56', '', '用户发送来的文本内容'),
(893, '2014-06-24 08:34:01', 'a:8:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt0XES04VNcYVGqLUuCamF3s";s:10:"CreateTime";s:10:"1403598841";s:7:"MsgType";s:5:"event";s:5:"Event";s:8:"LOCATION";s:8:"Latitude";s:9:"30.109770";s:9:"Longitude";s:10:"120.600227";s:9:"Precision";s:10:"110.000000";}', '在 reply 之前'),
(894, '2014-06-24 08:34:09', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt8_WGJBCVtbp3MoIUl_Lm2k";s:10:"CreateTime";s:10:"1403598848";s:7:"MsgType";s:5:"event";s:5:"Event";s:4:"VIEW";s:8:"EventKey";s:130:"http://114.215.198.83/index.php?g=Wap&m=Index&a=index&token=caspcu1403054302&wecha_id=oqMIVt0XES04VNcYVGqLUuCamF3s&sgssz=mp.weixin";}', '在 reply 之前'),
(895, '2014-06-24 08:34:09', '', '用户发送来的文本内容'),
(896, '2014-06-24 11:20:54', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403608853";s:7:"MsgType";s:4:"text";s:7:"Content";s:9:"留言板";s:5:"MsgId";s:19:"6028454120211262302";}', '在 reply 之前'),
(897, '2014-06-24 11:20:54', '留言板', '用户发送来的文本内容'),
(898, '2014-06-24 11:20:54', '声音大点,没听清呀', 'chat_robot'),
(899, '2014-06-24 11:21:04', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403608864";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"留言";s:5:"MsgId";s:19:"6028454167455902561";}', '在 reply 之前'),
(900, '2014-06-24 11:21:04', '留言', '用户发送来的文本内容'),
(901, '2014-06-24 11:24:27', 'a:6:{s:10:"ToUserName";s:15:"gh_826a00b218bb";s:12:"FromUserName";s:28:"oqMIVt3Ouq-2Vm0kZOZmZ2rTDlP8";s:10:"CreateTime";s:10:"1403609067";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"订餐";s:5:"MsgId";s:19:"6028455039334263660";}', '在 reply 之前'),
(902, '2014-06-24 11:24:27', '订餐', '用户发送来的文本内容'),
(903, '2014-06-24 11:30:34', 'a:6:{s:10:"ToUserName";s:15:"gh_b5ffd9df92d7";s:12:"FromUserName";s:28:"o0WJQt9SDeJN7vS4AMOr3lUhuBrI";s:10:"CreateTime";s:10:"1403609434";s:7:"MsgType";s:4:"text";s:7:"Content";s:6:"订餐";s:5:"MsgId";s:19:"6028456615587443957";}', '在 reply 之前'),
(904, '2014-06-24 11:30:34', '订餐', '用户发送来的文本内容');

-- --------------------------------------------------------

--
-- 表的结构 `gooraye_wxuser`
--

CREATE TABLE IF NOT EXISTS `gooraye_wxuser` (
`id` int(11) NOT NULL,
  `routerid` varchar(50) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL,
  `wxname` varchar(60) NOT NULL COMMENT '公众号名称',
  `winxintype` smallint(2) NOT NULL DEFAULT '1',
  `appid` varchar(50) NOT NULL DEFAULT '',
  `appsecret` varchar(50) NOT NULL DEFAULT '',
  `wxid` varchar(20) NOT NULL COMMENT '公众号原始ID',
  `weixin` char(20) NOT NULL COMMENT '微信号',
  `headerpic` char(255) NOT NULL COMMENT '头像地址',
  `token` char(255) NOT NULL,
  `province` varchar(30) NOT NULL COMMENT '省',
  `city` varchar(60) NOT NULL COMMENT '市',
  `qq` char(25) NOT NULL COMMENT '公众号邮箱',
  `wxfans` int(11) NOT NULL COMMENT '微信粉丝',
  `typeid` int(11) NOT NULL COMMENT '分类ID',
  `typename` varchar(90) NOT NULL DEFAULT '0' COMMENT '分类名',
  `tongji` text NOT NULL,
  `allcardnum` int(11) NOT NULL,
  `cardisok` int(11) NOT NULL,
  `yetcardnum` int(11) NOT NULL,
  `totalcardnum` int(11) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `tpltypeid` varchar(10) NOT NULL DEFAULT '1',
  `updatetime` varchar(13) NOT NULL,
  `tpltypename` varchar(20) NOT NULL COMMENT '首页模版名',
  `tpllistid` varchar(2) NOT NULL COMMENT '列表模版ID',
  `tpllistname` varchar(20) NOT NULL COMMENT '列表模版名',
  `tplcontentid` varchar(2) NOT NULL COMMENT '内容模版ID',
  `tplcontentname` varchar(20) NOT NULL COMMENT '内容模版名',
  `transfer_customer_service` tinyint(1) NOT NULL DEFAULT '0',
  `color_id` int(2) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='微信公共帐号' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `gooraye_wxuser`
--

INSERT INTO `gooraye_wxuser` (`id`, `routerid`, `uid`, `wxname`, `winxintype`, `appid`, `appsecret`, `wxid`, `weixin`, `headerpic`, `token`, `province`, `city`, `qq`, `wxfans`, `typeid`, `typename`, `tongji`, `allcardnum`, `cardisok`, `yetcardnum`, `totalcardnum`, `createtime`, `tpltypeid`, `updatetime`, `tpltypename`, `tpllistid`, `tpllistname`, `tplcontentid`, `tplcontentname`, `transfer_customer_service`, `color_id`) VALUES
(5, '', 7, 'gh_b5ffd9df92d7', 3, 'wx9196f2ab959e57c8', '5dfadfce94355c278ee4cfccd184a1cf', 'gh_b5ffd9df92d7', 'gh_b5ffd9df92d7', './tpl/User/default/common/images/portrait.jpg', 'ubddyd1402964682', 'p', 'c', '1402964682@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1402964826', '102', '1403527075', '1102_index_cvb5u', '1', 'yl_list', '1', 'ktv_content', 0, 4),
(6, '', 8, '古睿', 3, 'wx58aea38c0796394d', '3e1404c970566df55d7314ecfe9ff437', 'gh_826a00b218bb', 'gooraye', './tpl/User/default/common/images/portrait.jpg', 'caspcu1403054302', 'p', 'c', '1403054302@yourdomain.com', 0, 8, '服务', '', 1000, 1, 111, 111, '1403054336', '97', '1403054336', '197_index_cvrj', '1', 'yl_list', '1', 'ktv_content', 0, 4);

-- --------------------------------------------------------

--
-- 表的结构 `tp_service_logs`
--

CREATE TABLE IF NOT EXISTS `tp_service_logs` (
`id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `enddate` int(11) NOT NULL,
  `keyword` varchar(200) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '2'
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=154 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gooraye_access`
--
ALTER TABLE `gooraye_access`
 ADD KEY `groupId` (`role_id`), ADD KEY `nodeId` (`node_id`);

--
-- Indexes for table `gooraye_adma`
--
ALTER TABLE `gooraye_adma`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`), ADD KEY `uid` (`uid`);

--
-- Indexes for table `gooraye_alipay_config`
--
ALTER TABLE `gooraye_alipay_config`
 ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_api`
--
ALTER TABLE `gooraye_api`
 ADD PRIMARY KEY (`id`), ADD KEY `uid` (`uid`,`token`);

--
-- Indexes for table `gooraye_areply`
--
ALTER TABLE `gooraye_areply`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_attribute`
--
ALTER TABLE `gooraye_attribute`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`,`catid`), ADD KEY `catid` (`catid`);

--
-- Indexes for table `gooraye_behavior`
--
ALTER TABLE `gooraye_behavior`
 ADD PRIMARY KEY (`id`), ADD KEY `openid` (`openid`);

--
-- Indexes for table `gooraye_busines`
--
ALTER TABLE `gooraye_busines`
 ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `gooraye_busines_comment`
--
ALTER TABLE `gooraye_busines_comment`
 ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `gooraye_busines_main`
--
ALTER TABLE `gooraye_busines_main`
 ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `gooraye_busines_pic`
--
ALTER TABLE `gooraye_busines_pic`
 ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `gooraye_busines_second`
--
ALTER TABLE `gooraye_busines_second`
 ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `gooraye_car`
--
ALTER TABLE `gooraye_car`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_carmodel`
--
ALTER TABLE `gooraye_carmodel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_carnews`
--
ALTER TABLE `gooraye_carnews`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_carowner`
--
ALTER TABLE `gooraye_carowner`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_carsaler`
--
ALTER TABLE `gooraye_carsaler`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_carseries`
--
ALTER TABLE `gooraye_carseries`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_carset`
--
ALTER TABLE `gooraye_carset`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_caruser`
--
ALTER TABLE `gooraye_caruser`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_car_utility`
--
ALTER TABLE `gooraye_car_utility`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_case`
--
ALTER TABLE `gooraye_case`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_catemenu`
--
ALTER TABLE `gooraye_catemenu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_classify`
--
ALTER TABLE `gooraye_classify`
 ADD PRIMARY KEY (`id`), ADD KEY `fid` (`fid`);

--
-- Indexes for table `gooraye_company`
--
ALTER TABLE `gooraye_company`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_company_staff`
--
ALTER TABLE `gooraye_company_staff`
 ADD PRIMARY KEY (`id`), ADD KEY `companyid` (`companyid`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_dining_table`
--
ALTER TABLE `gooraye_dining_table`
 ADD PRIMARY KEY (`id`), ADD KEY `cid` (`cid`), ADD KEY `isbox` (`isbox`);

--
-- Indexes for table `gooraye_dish`
--
ALTER TABLE `gooraye_dish`
 ADD PRIMARY KEY (`id`), ADD KEY `cid` (`cid`), ADD KEY `sid` (`sid`), ADD KEY `isopen` (`isopen`);

--
-- Indexes for table `gooraye_dish_company`
--
ALTER TABLE `gooraye_dish_company`
 ADD PRIMARY KEY (`id`), ADD KEY `cid` (`cid`);

--
-- Indexes for table `gooraye_dish_like`
--
ALTER TABLE `gooraye_dish_like`
 ADD PRIMARY KEY (`id`), ADD KEY `cid` (`cid`), ADD KEY `wecha_id` (`wecha_id`);

--
-- Indexes for table `gooraye_dish_order`
--
ALTER TABLE `gooraye_dish_order`
 ADD PRIMARY KEY (`id`), ADD KEY `cid` (`cid`,`wecha_id`), ADD KEY `token` (`token`), ADD KEY `orderid` (`orderid`);

--
-- Indexes for table `gooraye_dish_sort`
--
ALTER TABLE `gooraye_dish_sort`
 ADD PRIMARY KEY (`id`), ADD KEY `cid` (`cid`);

--
-- Indexes for table `gooraye_dish_table`
--
ALTER TABLE `gooraye_dish_table`
 ADD PRIMARY KEY (`id`), ADD KEY `cid` (`cid`), ADD KEY `wecha_id` (`wecha_id`,`reservetime`), ADD KEY `tableid` (`tableid`), ADD KEY `orderid` (`orderid`);

--
-- Indexes for table `gooraye_diyform`
--
ALTER TABLE `gooraye_diyform`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_diyform_set`
--
ALTER TABLE `gooraye_diyform_set`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_diymen_class`
--
ALTER TABLE `gooraye_diymen_class`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_diymen_set`
--
ALTER TABLE `gooraye_diymen_set`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_dream`
--
ALTER TABLE `gooraye_dream`
 ADD PRIMARY KEY (`id`), ADD KEY `title` (`title`);

--
-- Indexes for table `gooraye_estate`
--
ALTER TABLE `gooraye_estate`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD KEY `token_2` (`token`), ADD FULLTEXT KEY `token` (`token`), ADD FULLTEXT KEY `title` (`title`), ADD FULLTEXT KEY `keyword` (`keyword`);

--
-- Indexes for table `gooraye_estate_album`
--
ALTER TABLE `gooraye_estate_album`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_estate_expert`
--
ALTER TABLE `gooraye_estate_expert`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `gooraye_estate_housetype`
--
ALTER TABLE `gooraye_estate_housetype`
 ADD PRIMARY KEY (`id`), ADD KEY `panorama_id` (`panorama_id`);

--
-- Indexes for table `gooraye_estate_impress`
--
ALTER TABLE `gooraye_estate_impress`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_estate_impress_add`
--
ALTER TABLE `gooraye_estate_impress_add`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_estate_son`
--
ALTER TABLE `gooraye_estate_son`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_files`
--
ALTER TABLE `gooraye_files`
 ADD PRIMARY KEY (`id`), ADD KEY `type` (`type`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_flash`
--
ALTER TABLE `gooraye_flash`
 ADD PRIMARY KEY (`id`), ADD KEY `tip` (`tip`);

--
-- Indexes for table `gooraye_forum_comment`
--
ALTER TABLE `gooraye_forum_comment`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_forum_config`
--
ALTER TABLE `gooraye_forum_config`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_forum_message`
--
ALTER TABLE `gooraye_forum_message`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_forum_topics`
--
ALTER TABLE `gooraye_forum_topics`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_function`
--
ALTER TABLE `gooraye_function`
 ADD PRIMARY KEY (`id`), ADD KEY `gid` (`gid`);

--
-- Indexes for table `gooraye_greeting_card`
--
ALTER TABLE `gooraye_greeting_card`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_home`
--
ALTER TABLE `gooraye_home`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_home_background`
--
ALTER TABLE `gooraye_home_background`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_host`
--
ALTER TABLE `gooraye_host`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `gooraye_host_list_add`
--
ALTER TABLE `gooraye_host_list_add`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `gooraye_host_order`
--
ALTER TABLE `gooraye_host_order`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_hotels_house`
--
ALTER TABLE `gooraye_hotels_house`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`), ADD KEY `sid` (`sid`), ADD KEY `cid` (`cid`);

--
-- Indexes for table `gooraye_hotels_house_sort`
--
ALTER TABLE `gooraye_hotels_house_sort`
 ADD PRIMARY KEY (`id`), ADD KEY `cid` (`cid`);

--
-- Indexes for table `gooraye_hotels_order`
--
ALTER TABLE `gooraye_hotels_order`
 ADD PRIMARY KEY (`id`), ADD KEY `cid` (`cid`,`wecha_id`), ADD KEY `token` (`token`), ADD KEY `orderid` (`orderid`), ADD KEY `enddate` (`enddate`), ADD KEY `sid` (`sid`), ADD KEY `stardate` (`startdate`);

--
-- Indexes for table `gooraye_img`
--
ALTER TABLE `gooraye_img`
 ADD PRIMARY KEY (`id`), ADD KEY `classid` (`classid`), ADD KEY `uid` (`uid`);

--
-- Indexes for table `gooraye_indent`
--
ALTER TABLE `gooraye_indent`
 ADD PRIMARY KEY (`id`), ADD KEY `uid` (`uid`);

--
-- Indexes for table `gooraye_keyword`
--
ALTER TABLE `gooraye_keyword`
 ADD PRIMARY KEY (`id`), ADD KEY `pid` (`pid`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_leave`
--
ALTER TABLE `gooraye_leave`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_links`
--
ALTER TABLE `gooraye_links`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_lottery`
--
ALTER TABLE `gooraye_lottery`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_lottery_cheat`
--
ALTER TABLE `gooraye_lottery_cheat`
 ADD PRIMARY KEY (`id`), ADD KEY `lid` (`lid`);

--
-- Indexes for table `gooraye_lottery_record`
--
ALTER TABLE `gooraye_lottery_record`
 ADD PRIMARY KEY (`id`,`lid`);

--
-- Indexes for table `gooraye_medical_set`
--
ALTER TABLE `gooraye_medical_set`
 ADD PRIMARY KEY (`id`), ADD FULLTEXT KEY `keyword` (`keyword`);

--
-- Indexes for table `gooraye_medical_user`
--
ALTER TABLE `gooraye_medical_user`
 ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `gooraye_member`
--
ALTER TABLE `gooraye_member`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`), ADD KEY `uid` (`uid`);

--
-- Indexes for table `gooraye_member_card_contact`
--
ALTER TABLE `gooraye_member_card_contact`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_member_card_coupon`
--
ALTER TABLE `gooraye_member_card_coupon`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`), ADD KEY `cardid` (`cardid`);

--
-- Indexes for table `gooraye_member_card_create`
--
ALTER TABLE `gooraye_member_card_create`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`), ADD KEY `cardid` (`cardid`);

--
-- Indexes for table `gooraye_member_card_exchange`
--
ALTER TABLE `gooraye_member_card_exchange`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`), ADD KEY `cardid` (`cardid`);

--
-- Indexes for table `gooraye_member_card_info`
--
ALTER TABLE `gooraye_member_card_info`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_member_card_integral`
--
ALTER TABLE `gooraye_member_card_integral`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`), ADD KEY `cardid` (`cardid`);

--
-- Indexes for table `gooraye_member_card_notice`
--
ALTER TABLE `gooraye_member_card_notice`
 ADD PRIMARY KEY (`id`), ADD KEY `cardid` (`cardid`);

--
-- Indexes for table `gooraye_member_card_set`
--
ALTER TABLE `gooraye_member_card_set`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`), ADD KEY `miniscore` (`miniscore`);

--
-- Indexes for table `gooraye_member_card_use_record`
--
ALTER TABLE `gooraye_member_card_use_record`
 ADD PRIMARY KEY (`id`), ADD KEY `itemid` (`itemid`,`cat`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_member_card_vip`
--
ALTER TABLE `gooraye_member_card_vip`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`), ADD KEY `cardid` (`cardid`);

--
-- Indexes for table `gooraye_moopha_article`
--
ALTER TABLE `gooraye_moopha_article`
 ADD PRIMARY KEY (`id`), ADD KEY `channel_id` (`channel_id`), ADD KEY `channel_id_2` (`channel_id`,`thumb`), ADD KEY `time` (`time`), ADD KEY `taxis` (`taxis`), ADD KEY `ex` (`ex`), ADD KEY `geoid` (`geoid`), ADD KEY `uid` (`uid`), ADD KEY `keywords` (`keywords`), ADD KEY `sourcetype` (`sourcetype`), ADD KEY `pubed` (`pubed`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_moopha_attachement`
--
ALTER TABLE `gooraye_moopha_attachement`
 ADD KEY `cat` (`cat`,`catid`);

--
-- Indexes for table `gooraye_moopha_channel`
--
ALTER TABLE `gooraye_moopha_channel`
 ADD PRIMARY KEY (`id`), ADD KEY `parentid` (`parentid`), ADD KEY `site` (`site`), ADD KEY `taxis` (`taxis`), ADD KEY `time` (`time`), ADD KEY `specialid` (`specialid`), ADD KEY `token` (`token`), ADD KEY `isnav` (`isnav`);

--
-- Indexes for table `gooraye_moopha_channel_contentattribute`
--
ALTER TABLE `gooraye_moopha_channel_contentattribute`
 ADD KEY `channelid` (`channelid`), ADD KEY `taxis` (`taxis`);

--
-- Indexes for table `gooraye_moopha_keywords`
--
ALTER TABLE `gooraye_moopha_keywords`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_moopha_picture`
--
ALTER TABLE `gooraye_moopha_picture`
 ADD PRIMARY KEY (`id`), ADD KEY `contentid` (`contentid`), ADD KEY `taxis` (`taxis`), ADD KEY `time` (`time`);

--
-- Indexes for table `gooraye_moopha_site`
--
ALTER TABLE `gooraye_moopha_site`
 ADD PRIMARY KEY (`id`), ADD KEY `siteindex` (`siteindex`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_moopha_template`
--
ALTER TABLE `gooraye_moopha_template`
 ADD PRIMARY KEY (`id`), ADD KEY `isdefault` (`isdefault`), ADD KEY `site` (`site`), ADD KEY `time` (`time`);

--
-- Indexes for table `gooraye_moopha_user`
--
ALTER TABLE `gooraye_moopha_user`
 ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `gooraye_msg`
--
ALTER TABLE `gooraye_msg`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_nearby_user`
--
ALTER TABLE `gooraye_nearby_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `uid` (`uid`);

--
-- Indexes for table `gooraye_node`
--
ALTER TABLE `gooraye_node`
 ADD PRIMARY KEY (`id`), ADD KEY `level` (`level`), ADD KEY `pid` (`pid`), ADD KEY `status` (`status`), ADD KEY `name` (`name`);

--
-- Indexes for table `gooraye_norms`
--
ALTER TABLE `gooraye_norms`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`);

--
-- Indexes for table `gooraye_ordering_class`
--
ALTER TABLE `gooraye_ordering_class`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_ordering_set`
--
ALTER TABLE `gooraye_ordering_set`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_other`
--
ALTER TABLE `gooraye_other`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_panorama`
--
ALTER TABLE `gooraye_panorama`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_photo`
--
ALTER TABLE `gooraye_photo`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_photo_list`
--
ALTER TABLE `gooraye_photo_list`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_product`
--
ALTER TABLE `gooraye_product`
 ADD PRIMARY KEY (`id`), ADD KEY `catid` (`catid`,`storeid`), ADD KEY `catid_2` (`catid`), ADD KEY `storeid` (`storeid`), ADD KEY `token` (`token`), ADD KEY `price` (`price`), ADD KEY `oprice` (`oprice`), ADD KEY `discount` (`discount`), ADD KEY `dining` (`dining`), ADD KEY `groupon` (`groupon`,`endtime`);

--
-- Indexes for table `gooraye_product_attribute`
--
ALTER TABLE `gooraye_product_attribute`
 ADD PRIMARY KEY (`id`), ADD KEY `aid` (`aid`);

--
-- Indexes for table `gooraye_product_cart`
--
ALTER TABLE `gooraye_product_cart`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`,`time`), ADD KEY `groupon` (`groupon`), ADD KEY `dining` (`dining`), ADD KEY `printed` (`printed`), ADD KEY `year` (`year`,`month`,`day`,`hour`), ADD KEY `diningtype` (`diningtype`);

--
-- Indexes for table `gooraye_product_cart_list`
--
ALTER TABLE `gooraye_product_cart_list`
 ADD PRIMARY KEY (`id`), ADD KEY `cartid` (`cartid`);

--
-- Indexes for table `gooraye_product_cat`
--
ALTER TABLE `gooraye_product_cat`
 ADD PRIMARY KEY (`id`), ADD KEY `parentid` (`parentid`), ADD KEY `token` (`token`), ADD KEY `dining` (`dining`);

--
-- Indexes for table `gooraye_product_detail`
--
ALTER TABLE `gooraye_product_detail`
 ADD PRIMARY KEY (`id`), ADD KEY `pid` (`pid`);

--
-- Indexes for table `gooraye_product_diningtable`
--
ALTER TABLE `gooraye_product_diningtable`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_product_image`
--
ALTER TABLE `gooraye_product_image`
 ADD PRIMARY KEY (`id`), ADD KEY `pid` (`pid`);

--
-- Indexes for table `gooraye_product_mail_price`
--
ALTER TABLE `gooraye_product_mail_price`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_product_setting`
--
ALTER TABLE `gooraye_product_setting`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_recipe`
--
ALTER TABLE `gooraye_recipe`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_recognition`
--
ALTER TABLE `gooraye_recognition`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_reply`
--
ALTER TABLE `gooraye_reply`
 ADD PRIMARY KEY (`id`), ADD KEY `message_id` (`message_id`);

--
-- Indexes for table `gooraye_reply_info`
--
ALTER TABLE `gooraye_reply_info`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_requestdata`
--
ALTER TABLE `gooraye_requestdata`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_reservation`
--
ALTER TABLE `gooraye_reservation`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_reservebook`
--
ALTER TABLE `gooraye_reservebook`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`), ADD KEY `wecha_id` (`wecha_id`), ADD KEY `type` (`type`);

--
-- Indexes for table `gooraye_role`
--
ALTER TABLE `gooraye_role`
 ADD PRIMARY KEY (`id`), ADD KEY `pid` (`pid`), ADD KEY `status` (`status`);

--
-- Indexes for table `gooraye_role_user`
--
ALTER TABLE `gooraye_role_user`
 ADD KEY `group_id` (`role_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `gooraye_router`
--
ALTER TABLE `gooraye_router`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_router_config`
--
ALTER TABLE `gooraye_router_config`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_school_classify`
--
ALTER TABLE `gooraye_school_classify`
 ADD PRIMARY KEY (`sid`), ADD KEY `type` (`type`), ADD FULLTEXT KEY `type_2` (`type`), ADD FULLTEXT KEY `token` (`token`);

--
-- Indexes for table `gooraye_school_score`
--
ALTER TABLE `gooraye_school_score`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_school_set_index`
--
ALTER TABLE `gooraye_school_set_index`
 ADD PRIMARY KEY (`setid`);

--
-- Indexes for table `gooraye_school_students`
--
ALTER TABLE `gooraye_school_students`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_school_tcourse`
--
ALTER TABLE `gooraye_school_tcourse`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_school_teachers`
--
ALTER TABLE `gooraye_school_teachers`
 ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `gooraye_selfform`
--
ALTER TABLE `gooraye_selfform`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`), ADD KEY `endtime` (`endtime`);

--
-- Indexes for table `gooraye_selfform_input`
--
ALTER TABLE `gooraye_selfform_input`
 ADD PRIMARY KEY (`id`), ADD KEY `formid` (`formid`,`taxis`);

--
-- Indexes for table `gooraye_selfform_value`
--
ALTER TABLE `gooraye_selfform_value`
 ADD PRIMARY KEY (`id`), ADD KEY `formid` (`formid`,`wecha_id`,`time`);

--
-- Indexes for table `gooraye_send_message`
--
ALTER TABLE `gooraye_send_message`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`,`time`), ADD KEY `msg_id` (`msg_id`);

--
-- Indexes for table `gooraye_service_logs`
--
ALTER TABLE `gooraye_service_logs`
 ADD PRIMARY KEY (`id`), ADD KEY `pid` (`pid`);

--
-- Indexes for table `gooraye_service_user`
--
ALTER TABLE `gooraye_service_user`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_shake`
--
ALTER TABLE `gooraye_shake`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_shakelog`
--
ALTER TABLE `gooraye_shakelog`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_shake_rt`
--
ALTER TABLE `gooraye_shake_rt`
 ADD PRIMARY KEY (`id`), ADD KEY `shakeid` (`shakeid`);

--
-- Indexes for table `gooraye_share`
--
ALTER TABLE `gooraye_share`
 ADD PRIMARY KEY (`id`), ADD KEY `module` (`module`,`moduleid`,`token`,`time`);

--
-- Indexes for table `gooraye_share_set`
--
ALTER TABLE `gooraye_share_set`
 ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_site_plugmenu`
--
ALTER TABLE `gooraye_site_plugmenu`
 ADD KEY `token` (`token`,`taxis`,`display`);

--
-- Indexes for table `gooraye_sms_expendrecord`
--
ALTER TABLE `gooraye_sms_expendrecord`
 ADD KEY `uid` (`uid`,`time`);

--
-- Indexes for table `gooraye_sms_record`
--
ALTER TABLE `gooraye_sms_record`
 ADD PRIMARY KEY (`id`), ADD KEY `uid` (`uid`,`token`,`time`);

--
-- Indexes for table `gooraye_snccode`
--
ALTER TABLE `gooraye_snccode`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_styleset`
--
ALTER TABLE `gooraye_styleset`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_taobao`
--
ALTER TABLE `gooraye_taobao`
 ADD PRIMARY KEY (`id`), ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `gooraye_text`
--
ALTER TABLE `gooraye_text`
 ADD PRIMARY KEY (`id`), ADD KEY `uid` (`uid`);

--
-- Indexes for table `gooraye_token_open`
--
ALTER TABLE `gooraye_token_open`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_update_record`
--
ALTER TABLE `gooraye_update_record`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_upyun_attachement`
--
ALTER TABLE `gooraye_upyun_attachement`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_user`
--
ALTER TABLE `gooraye_user`
 ADD PRIMARY KEY (`id`), ADD KEY `username` (`username`);

--
-- Indexes for table `gooraye_userinfo`
--
ALTER TABLE `gooraye_userinfo`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_users`
--
ALTER TABLE `gooraye_users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_user_group`
--
ALTER TABLE `gooraye_user_group`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_user_request`
--
ALTER TABLE `gooraye_user_request`
 ADD PRIMARY KEY (`id`), ADD KEY `msgtype` (`msgtype`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_voiceresponse`
--
ALTER TABLE `gooraye_voiceresponse`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD KEY `uid` (`uid`);

--
-- Indexes for table `gooraye_vote`
--
ALTER TABLE `gooraye_vote`
 ADD PRIMARY KEY (`id`), ADD FULLTEXT KEY `title` (`title`), ADD FULLTEXT KEY `keyword` (`keyword`), ADD FULLTEXT KEY `token` (`token`), ADD FULLTEXT KEY `type` (`type`);

--
-- Indexes for table `gooraye_vote_item`
--
ALTER TABLE `gooraye_vote_item`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `gooraye_vote_record`
--
ALTER TABLE `gooraye_vote_record`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_wall`
--
ALTER TABLE `gooraye_wall`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`);

--
-- Indexes for table `gooraye_wall_member`
--
ALTER TABLE `gooraye_wall_member`
 ADD PRIMARY KEY (`id`), ADD KEY `token` (`token`,`wallid`), ADD KEY `wecha_id` (`wecha_id`);

--
-- Indexes for table `gooraye_wall_message`
--
ALTER TABLE `gooraye_wall_message`
 ADD PRIMARY KEY (`id`), ADD KEY `wallid` (`wallid`,`token`);

--
-- Indexes for table `gooraye_wall_prize_record`
--
ALTER TABLE `gooraye_wall_prize_record`
 ADD PRIMARY KEY (`id`), ADD KEY `wallid` (`wallid`,`prize`,`time`);

--
-- Indexes for table `gooraye_weather`
--
ALTER TABLE `gooraye_weather`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_wechat_group`
--
ALTER TABLE `gooraye_wechat_group`
 ADD PRIMARY KEY (`id`), ADD KEY `wechatgroupid` (`wechatgroupid`,`token`);

--
-- Indexes for table `gooraye_wechat_group_list`
--
ALTER TABLE `gooraye_wechat_group_list`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_wecha_user`
--
ALTER TABLE `gooraye_wecha_user`
 ADD PRIMARY KEY (`token`,`wecha_id`,`id`);

--
-- Indexes for table `gooraye_wedding`
--
ALTER TABLE `gooraye_wedding`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_wedding_info`
--
ALTER TABLE `gooraye_wedding_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_wehcat_member_enddate`
--
ALTER TABLE `gooraye_wehcat_member_enddate`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_weixin_log`
--
ALTER TABLE `gooraye_weixin_log`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gooraye_wxuser`
--
ALTER TABLE `gooraye_wxuser`
 ADD PRIMARY KEY (`id`), ADD KEY `uid` (`uid`), ADD KEY `uid_2` (`uid`);

--
-- Indexes for table `tp_service_logs`
--
ALTER TABLE `tp_service_logs`
 ADD PRIMARY KEY (`id`), ADD KEY `pid` (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gooraye_adma`
--
ALTER TABLE `gooraye_adma`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_api`
--
ALTER TABLE `gooraye_api`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_areply`
--
ALTER TABLE `gooraye_areply`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gooraye_attribute`
--
ALTER TABLE `gooraye_attribute`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_behavior`
--
ALTER TABLE `gooraye_behavior`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=701;
--
-- AUTO_INCREMENT for table `gooraye_busines`
--
ALTER TABLE `gooraye_busines`
MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_busines_comment`
--
ALTER TABLE `gooraye_busines_comment`
MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_busines_main`
--
ALTER TABLE `gooraye_busines_main`
MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_busines_pic`
--
ALTER TABLE `gooraye_busines_pic`
MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_busines_second`
--
ALTER TABLE `gooraye_busines_second`
MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_car`
--
ALTER TABLE `gooraye_car`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_carmodel`
--
ALTER TABLE `gooraye_carmodel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_carnews`
--
ALTER TABLE `gooraye_carnews`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_carowner`
--
ALTER TABLE `gooraye_carowner`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_carsaler`
--
ALTER TABLE `gooraye_carsaler`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_carseries`
--
ALTER TABLE `gooraye_carseries`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_carset`
--
ALTER TABLE `gooraye_carset`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_caruser`
--
ALTER TABLE `gooraye_caruser`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_car_utility`
--
ALTER TABLE `gooraye_car_utility`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `gooraye_case`
--
ALTER TABLE `gooraye_case`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_catemenu`
--
ALTER TABLE `gooraye_catemenu`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `gooraye_classify`
--
ALTER TABLE `gooraye_classify`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `gooraye_company`
--
ALTER TABLE `gooraye_company`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gooraye_company_staff`
--
ALTER TABLE `gooraye_company_staff`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_dining_table`
--
ALTER TABLE `gooraye_dining_table`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_dish`
--
ALTER TABLE `gooraye_dish`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_dish_company`
--
ALTER TABLE `gooraye_dish_company`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_dish_like`
--
ALTER TABLE `gooraye_dish_like`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gooraye_dish_order`
--
ALTER TABLE `gooraye_dish_order`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_dish_sort`
--
ALTER TABLE `gooraye_dish_sort`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_dish_table`
--
ALTER TABLE `gooraye_dish_table`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_diyform`
--
ALTER TABLE `gooraye_diyform`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_diyform_set`
--
ALTER TABLE `gooraye_diyform_set`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_diymen_class`
--
ALTER TABLE `gooraye_diymen_class`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `gooraye_diymen_set`
--
ALTER TABLE `gooraye_diymen_set`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `gooraye_dream`
--
ALTER TABLE `gooraye_dream`
MODIFY `id` smallint(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=323;
--
-- AUTO_INCREMENT for table `gooraye_estate`
--
ALTER TABLE `gooraye_estate`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_estate_album`
--
ALTER TABLE `gooraye_estate_album`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_estate_expert`
--
ALTER TABLE `gooraye_estate_expert`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_estate_housetype`
--
ALTER TABLE `gooraye_estate_housetype`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_estate_impress`
--
ALTER TABLE `gooraye_estate_impress`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_estate_impress_add`
--
ALTER TABLE `gooraye_estate_impress_add`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_estate_son`
--
ALTER TABLE `gooraye_estate_son`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gooraye_files`
--
ALTER TABLE `gooraye_files`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `gooraye_flash`
--
ALTER TABLE `gooraye_flash`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `gooraye_forum_comment`
--
ALTER TABLE `gooraye_forum_comment`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_forum_config`
--
ALTER TABLE `gooraye_forum_config`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gooraye_forum_message`
--
ALTER TABLE `gooraye_forum_message`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_forum_topics`
--
ALTER TABLE `gooraye_forum_topics`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_function`
--
ALTER TABLE `gooraye_function`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `gooraye_greeting_card`
--
ALTER TABLE `gooraye_greeting_card`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_home`
--
ALTER TABLE `gooraye_home`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `gooraye_home_background`
--
ALTER TABLE `gooraye_home_background`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_host`
--
ALTER TABLE `gooraye_host`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gooraye_host_list_add`
--
ALTER TABLE `gooraye_host_list_add`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gooraye_host_order`
--
ALTER TABLE `gooraye_host_order`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gooraye_hotels_house`
--
ALTER TABLE `gooraye_hotels_house`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_hotels_house_sort`
--
ALTER TABLE `gooraye_hotels_house_sort`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_hotels_order`
--
ALTER TABLE `gooraye_hotels_order`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_img`
--
ALTER TABLE `gooraye_img`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `gooraye_indent`
--
ALTER TABLE `gooraye_indent`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gooraye_keyword`
--
ALTER TABLE `gooraye_keyword`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `gooraye_leave`
--
ALTER TABLE `gooraye_leave`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=269;
--
-- AUTO_INCREMENT for table `gooraye_links`
--
ALTER TABLE `gooraye_links`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_lottery`
--
ALTER TABLE `gooraye_lottery`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `gooraye_lottery_cheat`
--
ALTER TABLE `gooraye_lottery_cheat`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_lottery_record`
--
ALTER TABLE `gooraye_lottery_record`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `gooraye_medical_set`
--
ALTER TABLE `gooraye_medical_set`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_medical_user`
--
ALTER TABLE `gooraye_medical_user`
MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_member`
--
ALTER TABLE `gooraye_member`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_member_card_contact`
--
ALTER TABLE `gooraye_member_card_contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_member_card_coupon`
--
ALTER TABLE `gooraye_member_card_coupon`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_member_card_create`
--
ALTER TABLE `gooraye_member_card_create`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1209;
--
-- AUTO_INCREMENT for table `gooraye_member_card_exchange`
--
ALTER TABLE `gooraye_member_card_exchange`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_member_card_info`
--
ALTER TABLE `gooraye_member_card_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_member_card_integral`
--
ALTER TABLE `gooraye_member_card_integral`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_member_card_notice`
--
ALTER TABLE `gooraye_member_card_notice`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_member_card_set`
--
ALTER TABLE `gooraye_member_card_set`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gooraye_member_card_use_record`
--
ALTER TABLE `gooraye_member_card_use_record`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_member_card_vip`
--
ALTER TABLE `gooraye_member_card_vip`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_moopha_article`
--
ALTER TABLE `gooraye_moopha_article`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gooraye_moopha_channel`
--
ALTER TABLE `gooraye_moopha_channel`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `gooraye_moopha_keywords`
--
ALTER TABLE `gooraye_moopha_keywords`
MODIFY `id` mediumint(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_moopha_picture`
--
ALTER TABLE `gooraye_moopha_picture`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_moopha_site`
--
ALTER TABLE `gooraye_moopha_site`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_moopha_template`
--
ALTER TABLE `gooraye_moopha_template`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `gooraye_moopha_user`
--
ALTER TABLE `gooraye_moopha_user`
MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_msg`
--
ALTER TABLE `gooraye_msg`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_nearby_user`
--
ALTER TABLE `gooraye_nearby_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=307;
--
-- AUTO_INCREMENT for table `gooraye_node`
--
ALTER TABLE `gooraye_node`
MODIFY `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `gooraye_norms`
--
ALTER TABLE `gooraye_norms`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_ordering_class`
--
ALTER TABLE `gooraye_ordering_class`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_ordering_set`
--
ALTER TABLE `gooraye_ordering_set`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_other`
--
ALTER TABLE `gooraye_other`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gooraye_panorama`
--
ALTER TABLE `gooraye_panorama`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_photo`
--
ALTER TABLE `gooraye_photo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_photo_list`
--
ALTER TABLE `gooraye_photo_list`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_product`
--
ALTER TABLE `gooraye_product`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `gooraye_product_attribute`
--
ALTER TABLE `gooraye_product_attribute`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_product_cart`
--
ALTER TABLE `gooraye_product_cart`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_product_cart_list`
--
ALTER TABLE `gooraye_product_cart_list`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_product_cat`
--
ALTER TABLE `gooraye_product_cat`
MODIFY `id` mediumint(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gooraye_product_detail`
--
ALTER TABLE `gooraye_product_detail`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_product_diningtable`
--
ALTER TABLE `gooraye_product_diningtable`
MODIFY `id` mediumint(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gooraye_product_image`
--
ALTER TABLE `gooraye_product_image`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `gooraye_product_mail_price`
--
ALTER TABLE `gooraye_product_mail_price`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_product_setting`
--
ALTER TABLE `gooraye_product_setting`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_recipe`
--
ALTER TABLE `gooraye_recipe`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_recognition`
--
ALTER TABLE `gooraye_recognition`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gooraye_reply`
--
ALTER TABLE `gooraye_reply`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT for table `gooraye_reply_info`
--
ALTER TABLE `gooraye_reply_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `gooraye_requestdata`
--
ALTER TABLE `gooraye_requestdata`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `gooraye_reservation`
--
ALTER TABLE `gooraye_reservation`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `gooraye_reservebook`
--
ALTER TABLE `gooraye_reservebook`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_role`
--
ALTER TABLE `gooraye_role`
MODIFY `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gooraye_router`
--
ALTER TABLE `gooraye_router`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_router_config`
--
ALTER TABLE `gooraye_router_config`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_school_classify`
--
ALTER TABLE `gooraye_school_classify`
MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `gooraye_school_score`
--
ALTER TABLE `gooraye_school_score`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_school_set_index`
--
ALTER TABLE `gooraye_school_set_index`
MODIFY `setid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_school_students`
--
ALTER TABLE `gooraye_school_students`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_school_tcourse`
--
ALTER TABLE `gooraye_school_tcourse`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_school_teachers`
--
ALTER TABLE `gooraye_school_teachers`
MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_selfform`
--
ALTER TABLE `gooraye_selfform`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gooraye_selfform_input`
--
ALTER TABLE `gooraye_selfform_input`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gooraye_selfform_value`
--
ALTER TABLE `gooraye_selfform_value`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `gooraye_send_message`
--
ALTER TABLE `gooraye_send_message`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `gooraye_service_logs`
--
ALTER TABLE `gooraye_service_logs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_service_user`
--
ALTER TABLE `gooraye_service_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `gooraye_shake`
--
ALTER TABLE `gooraye_shake`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_shakelog`
--
ALTER TABLE `gooraye_shakelog`
MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_shake_rt`
--
ALTER TABLE `gooraye_shake_rt`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gooraye_share`
--
ALTER TABLE `gooraye_share`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_sms_record`
--
ALTER TABLE `gooraye_sms_record`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_snccode`
--
ALTER TABLE `gooraye_snccode`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_styleset`
--
ALTER TABLE `gooraye_styleset`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_taobao`
--
ALTER TABLE `gooraye_taobao`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_text`
--
ALTER TABLE `gooraye_text`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gooraye_token_open`
--
ALTER TABLE `gooraye_token_open`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `gooraye_update_record`
--
ALTER TABLE `gooraye_update_record`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_upyun_attachement`
--
ALTER TABLE `gooraye_upyun_attachement`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_user`
--
ALTER TABLE `gooraye_user`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `gooraye_userinfo`
--
ALTER TABLE `gooraye_userinfo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `gooraye_users`
--
ALTER TABLE `gooraye_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gooraye_user_group`
--
ALTER TABLE `gooraye_user_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `gooraye_user_request`
--
ALTER TABLE `gooraye_user_request`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gooraye_voiceresponse`
--
ALTER TABLE `gooraye_voiceresponse`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gooraye_vote`
--
ALTER TABLE `gooraye_vote`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_vote_item`
--
ALTER TABLE `gooraye_vote_item`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gooraye_vote_record`
--
ALTER TABLE `gooraye_vote_record`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_wall`
--
ALTER TABLE `gooraye_wall`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_wall_member`
--
ALTER TABLE `gooraye_wall_member`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gooraye_wall_message`
--
ALTER TABLE `gooraye_wall_message`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `gooraye_wall_prize_record`
--
ALTER TABLE `gooraye_wall_prize_record`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gooraye_weather`
--
ALTER TABLE `gooraye_weather`
MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2502;
--
-- AUTO_INCREMENT for table `gooraye_wechat_group`
--
ALTER TABLE `gooraye_wechat_group`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `gooraye_wechat_group_list`
--
ALTER TABLE `gooraye_wechat_group_list`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `gooraye_wecha_user`
--
ALTER TABLE `gooraye_wecha_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_wedding`
--
ALTER TABLE `gooraye_wedding`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gooraye_wedding_info`
--
ALTER TABLE `gooraye_wedding_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gooraye_wehcat_member_enddate`
--
ALTER TABLE `gooraye_wehcat_member_enddate`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=324;
--
-- AUTO_INCREMENT for table `gooraye_weixin_log`
--
ALTER TABLE `gooraye_weixin_log`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=905;
--
-- AUTO_INCREMENT for table `gooraye_wxuser`
--
ALTER TABLE `gooraye_wxuser`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tp_service_logs`
--
ALTER TABLE `tp_service_logs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=154;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
