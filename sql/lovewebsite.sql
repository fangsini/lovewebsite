-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 27, 2013 at 09:28 AM
-- Server version: 5.5.34-0ubuntu0.13.04.1
-- PHP Version: 5.4.9-4ubuntu2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lovewebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `Comment`
--

CREATE TABLE IF NOT EXISTS `Comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `content` longtext,
  `postedAt` datetime DEFAULT NULL,
  `upload_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9BDE863F7C8A23E` (`upload_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `Comment`
--

INSERT INTO `Comment` (`id`, `author`, `content`, `postedAt`, `upload_id`) VALUES
(1, '匿名', '干豆腐个打算', '2013-10-11 18:26:47', 4),
(2, '匿名', '广东发给算法个', '2013-10-11 18:26:55', 4),
(3, '匿名', '合法化发', '2013-10-11 18:26:58', 4),
(4, '匿名', 'njn', '2013-10-15 21:16:34', 5),
(5, '胡华泉', '客户机', '2013-10-16 15:22:49', 4),
(6, '匿名', 'dasda', '2013-10-22 09:00:10', 22),
(7, '叶志良', '我来保养。。。。', '2013-10-23 10:55:46', 23),
(8, '胡华泉', '身上穷得剩下钱咯。。。。。。。', '2013-10-23 10:56:35', 23),
(9, '胡华泉', 'test', '2013-10-24 10:24:07', 22);

-- --------------------------------------------------------

--
-- Table structure for table `Email`
--

CREATE TABLE IF NOT EXISTS `Email` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `recipient` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `Email`
--

INSERT INTO `Email` (`id`, `content`, `recipient`, `subject`) VALUES
(1, '哈哈', 'woai12346@qq.com', '小测试'),
(2, '哈哈', 'woai914099943@163.com', '哈哈'),
(3, '哈哈', 'woai12346@qq.com', '哈哈'),
(4, 'hehe', 'woai12346@qq.com', '测试'),
(5, 'lskfjdsklfj', 'hhqcontinue@gmail.com', '回复多少分的'),
(6, 'gffdsffdgdfg', 'woai914099943@163.com', 'dgfdgsd\r\n'),
(7, 'gffdsffdgdfg', 'woai12346@qq.com', 'dgfdgsd\r\n'),
(8, 'gffdsffdgdfg', 'woai12346@163.com', 'dgfdgsd\r\n'),
(9, 'fjkdhfksadhfs', 'woai12346@qq.com', '福克斯打开发撒谎大家看'),
(10, 'gdgfds', 'woai12346@qq.com', '反馈倒计时反馈打算'),
(11, 'gfgfds', 'woai12346@qq.com', '反馈多少分打算'),
(12, 'KFDSHFHS', 'woai12346@qq.com', '反馈的撒发快速地方看到算'),
(13, 'flsdfsd', 'woai12346@qq.com', '浪费看到四级理发店算'),
(14, 'fkjdshk', 'woai12346@qq.com', '打算框架分会看到四级'),
(15, 'fksahfjk', 'woai12346@qq.com', '立刻算法卡洛斯减法'),
(16, 'kfkdsjhfs', 'woai12346@qq.com', '立刻的撒发来的看风景第三轮'),
(17, 'hfghgf', 'woai12346@qq.com', 'odsfds撒'),
(18, 'fdf', 'woai12346@qq.com', '开发还大算'),
(19, 'fklsdfds', 'woai12346@qq.com', '李开复等级范德萨'),
(20, '浪费肯德基反馈打算', 'woai12346@qq.com', '李开复觉得算看了分阶段算了分阶段sklfjldsk'),
(21, '李开复觉得算看了范德萨', 'hhqcontinue@gmail.com', '浪费快速等级\r\n'),
(22, '范德萨家乐福', 'woai12346@qq.com', '刻录机反馈来的算法'),
(23, '犹太人犹太人', 'woai914099943@163.com', '个人讨厌好热讨厌'),
(24, '犹太人犹太人', 'woai12346@qq.com', '个人讨厌好热讨厌'),
(25, '犹太人犹太人', 'woai12346@163.com', '个人讨厌好热讨厌'),
(26, '反馈第三届发', 'woai914099943@163.com', '浪费快速等级浪费速度'),
(27, '反馈第三届发', 'woai12346@qq.com', '浪费快速等级浪费速度'),
(28, '反馈第三届发', 'woai12346@163.com', '浪费快速等级浪费速度'),
(29, '反对反对反对反对速', 'woai914099943@163.com', '方法斯蒂芬打算范德萨发'),
(30, '反对反对反对反对速', 'woai12346@qq.com', '方法斯蒂芬打算范德萨发'),
(31, '反对反对反对反对速', 'woai12346@163.com', '方法斯蒂芬打算范德萨发'),
(32, 'lfjdsf', 'woai12346@qq.com', '弗兰克第三届发送'),
(33, 'gklg', 'woai914099943@163.com', '了解到了看风景斯大林放假斯蒂芬就lkdfjldkjglkjglkfdjglsdg'),
(34, 'gklg', 'woai12346@qq.com', '了解到了看风景斯大林放假斯蒂芬就lkdfjldkjglkjglkfdjglsdg'),
(35, 'gklg', 'woai12346@163.com', '了解到了看风景斯大林放假斯蒂芬就lkdfjldkjglkjglkfdjglsdg'),
(36, '', 'woai12346@qq.com', 'F5842B8FAC115CB8CD395F851310B51F'),
(37, '', 'woai12346@qq.com', '7A011CC6FC47D5B35C46D41C034A219A'),
(38, '', 'woai12346@qq.com', 'BBAD938B61D0AB80BD1449A7B831E4E0'),
(39, '', 'woai12346@qq.com', 'EC0B376F0B4FBAD9FDA9E38A9DA9252F'),
(40, '', 'woai12346@qq.com', '7C1D3050EF01F9D155D093E18A3CF324'),
(41, '', 'woai12346@qq.com', '74F79779E9DB351B1C0AA57070D4AC4A'),
(42, '', 'woai12346@qq.com', 'B13C6804028666D8E3F0427D8646EEB0'),
(43, '', 'woai12346@qq.com', 'CC24B5D73B63BD2F29EAC97B75011B61'),
(44, '用户验证', 'woai12346@qq.com', '请点击以下链接进行验证localhost:9000/users/validated?09FC1D8C7E512B5BDAB9C2A7357EA7D5'),
(45, '用户验证', 'woai12346@qq.com', '请点击以下链接进行验证http://localhost:9000/users/validated?09FC1D8C7E512B5BDAB9C2A7357EA7D5'),
(46, '用户验证', 'woai12346@qq.com', '请点击以下链接进行验证http://localhost:9000/users/validated?email=09FC1D8C7E512B5BDAB9C2A7357EA7D5'),
(47, '用户验证', 'woai914099943@163.com', '请点击以下链接进行验证http://localhost:9000/users/validated?email=B3DB950C13B04FCA4B18C0999DB7C7C0'),
(48, '用户验证', 'woai914099943@163.com', '请点击以下链接进行验证http://localhost:9000/users/validated?email=B3DB950C13B04FCA4B18C0999DB7C7C0'),
(49, '用户验证', 'woai914099943@163.com', '请点击以下链接进行验证 http://localhost:9000/users/validated?email=B3DB950C13B04FCA4B18C0999DB7C7C0'),
(50, '用户验证', 'woai914099943@163.com', '请点击以下链接进行验证 http://localhost:9000/users/validated?email=B3DB950C13B04FCA4B18C0999DB7C7C0'),
(51, '用户验证', 'woai12346@qq.com', '请点击以下链接进行验证 http://localhost:9000/users/validated?email=09FC1D8C7E512B5BDAB9C2A7357EA7D5'),
(52, '用户验证', 'cc.leaf92@gmail.com', '请点击以下链接进行验证 http://localhost:9000/users/validated?email=5A374AF29D16FF8EF63B2B9FC0D431FB');

-- --------------------------------------------------------

--
-- Table structure for table `FeedBack`
--

CREATE TABLE IF NOT EXISTS `FeedBack` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contact` varchar(20) DEFAULT NULL,
  `content` longtext,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `FeedBack`
--

INSERT INTO `FeedBack` (`id`, `contact`, `content`, `name`) VALUES
(1, '914099943', '一般', '胡华泉'),
(2, 'llfjsdlfkjdslkfds', 'lfljdslfkjdsklfj', 'huhfdsfslk'),
(3, '11111111111', '福克斯积分', '胡华泉');

-- --------------------------------------------------------

--
-- Table structure for table `News`
--

CREATE TABLE IF NOT EXISTS `News` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `fileUrl` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `News`
--

INSERT INTO `News` (`id`, `address`, `content`, `fileUrl`, `time`) VALUES
(2, '华山西园', 'gfdgfdgdfg', 'banner1.jpg', '2013-10-16');

-- --------------------------------------------------------

--
-- Table structure for table `Report`
--

CREATE TABLE IF NOT EXISTS `Report` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `photoUrl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `Report`
--

INSERT INTO `Report` (`id`, `content`, `photoUrl`, `title`) VALUES
(1, '程代俊，男，汉族，2011年12月24日出生于江西省乐平市后港镇义方村委会胡冲村，身份证号码：360281201112243050，患有先天性心脏病、先天性巨结肠、新生儿肺炎并呼吸衰竭、新生儿硬肿症、脑膜炎、脑积膜膨出、肠梗阻、贫血重症营养不良等疾病，先后到乐平市妇幼保健院、人民医院和江西省儿童医院治疗，花费了10多元，早已让一对刚结婚的农家夫妇不堪重负，借遍了所有的亲朋好友，后续数万元的治疗费更是无从着落。如今，为了给程代俊治病救命，其父母带着他远在浙江求医，家中已无任何经济来源，不得已，年近七旬的爷爷', '1.jpg', '程代俊'),
(2, '程代俊，男，汉族，2011年12月24日出生于江西省乐平市后港镇义方村委会胡冲村，身份证号码：360281201112243050，患有先天性心脏病、先天性巨结肠、新生儿肺炎并呼吸衰竭、新生儿硬肿症、脑膜炎、脑积膜膨出、肠梗阻、贫血重症营养不良等疾病，先后到乐平市妇幼保健院、人民医院和江西省儿童医院治疗，花费了10多元，早已让一对刚结婚的农家夫妇不堪重负，借遍了所有的亲朋好友，后续数万元的治疗费更是无从着落。如今，为了给程代俊治病救命，其父母带着他远在浙江求医，家中已无任何经济来源，不得已，年近七旬的爷爷', '1.jpg', '程代俊'),
(3, '程代俊，男，汉族，2011年12月24日出生于江西省乐平市后港镇义方村委会胡冲村，身份证号码：360281201112243050，患有先天性心脏病、先天性巨结肠、新生儿肺炎并呼吸衰竭、新生儿硬肿症、脑膜炎、脑积膜膨出、肠梗阻、贫血重症营养不良等疾病，先后到乐平市妇幼保健院、人民医院和江西省儿童医院治疗，花费了10多元，早已让一对刚结婚的农家夫妇不堪重负，借遍了所有的亲朋好友，后续数万元的治疗费更是无从着落。如今，为了给程代俊治病救命，其父母带着他远在浙江求医，家中已无任何经济来源，不得已，年近七旬的爷爷', '1.jpg', '程代俊'),
(4, '程代俊，男，汉族，2011年12月24日出生于江西省乐平市后港镇义方村委会胡冲村，身份证号码：360281201112243050，患有先天性心脏病、先天性巨结肠、新生儿肺炎并呼吸衰竭、新生儿硬肿症、脑膜炎、脑积膜膨出、肠梗阻、贫血重症营养不良等疾病，先后到乐平市妇幼保健院、人民医院和江西省儿童医院治疗，花费了10多元，早已让一对刚结婚的农家夫妇不堪重负，借遍了所有的亲朋好友，后续数万元的治疗费更是无从着落。如今，为了给程代俊治病救命，其父母带着他远在浙江求医，家中已无任何经济来源，不得已，年近七旬的爷爷', '1.jpg', '程代俊'),
(5, '程代俊，男，汉族，2011年12月24日出生于江西省乐平市后港镇义方村委会胡冲村，身份证号码：360281201112243050，患有先天性心脏病、先天性巨结肠、新生儿肺炎并呼吸衰竭、新生儿硬肿症、脑膜炎、脑积膜膨出、肠梗阻、贫血重症营养不良等疾病，先后到乐平市妇幼保健院、人民医院和江西省儿童医院治疗，花费了10多元，早已让一对刚结婚的农家夫妇不堪重负，借遍了所有的亲朋好友，后续数万元的治疗费更是无从着落。如今，为了给程代俊治病救命，其父母带着他远在浙江求医，家中已无任何经济来源，不得已，年近七旬的爷爷', '1.jpg', '程代俊'),
(6, '程代俊，男，汉族，2011年12月24日出生于江西省乐平市后港镇义方村委会胡冲村，身份证号码：360281201112243050，患有先天性心脏病、先天性巨结肠、新生儿肺炎并呼吸衰竭、新生儿硬肿症、脑膜炎、脑积膜膨出、肠梗阻、贫血重症营养不良等疾病，先后到乐平市妇幼保健院、人民医院和江西省儿童医院治疗，花费了10多元，早已让一对刚结婚的农家夫妇不堪重负，借遍了所有的亲朋好友，后续数万元的治疗费更是无从着落。如今，为了给程代俊治病救命，其父母带着他远在浙江求医，家中已无任何经济来源，不得已，年近七旬的爷爷', '1.jpg', '程代俊'),
(7, '程代俊，男，汉族，2011年12月24日出生于江西省乐平市后港镇义方村委会胡冲村，身份证号码：360281201112243050，患有先天性心脏病、先天性巨结肠、新生儿肺炎并呼吸衰竭、新生儿硬肿症、脑膜炎、脑积膜膨出、肠梗阻、贫血重症营养不良等疾病，先后到乐平市妇幼保健院、人民医院和江西省儿童医院治疗，花费了10多元，早已让一对刚结婚的农家夫妇不堪重负，借遍了所有的亲朋好友，后续数万元的治疗费更是无从着落。如今，为了给程代俊治病救命，其父母带着他远在浙江求医，家中已无任何经济来源，不得已，年近七旬的爷爷', '1.jpg', '程代俊'),
(8, '程代俊，男，汉族，2011年12月24日出生于江西省乐平市后港镇义方村委会胡冲村，身份证号码：360281201112243050，患有先天性心脏病、先天性巨结肠、新生儿肺炎并呼吸衰竭、新生儿硬肿症、脑膜炎、脑积膜膨出、肠梗阻、贫血重症营养不良等疾病，先后到乐平市妇幼保健院、人民医院和江西省儿童医院治疗，花费了10多元，早已让一对刚结婚的农家夫妇不堪重负，借遍了所有的亲朋好友，后续数万元的治疗费更是无从着落。如今，为了给程代俊治病救命，其父母带着他远在浙江求医，家中已无任何经济来源，不得已，年近七旬的爷爷', '1.jpg', '程代俊'),
(9, '程代俊，男，汉族，2011年12月24日出生于江西省乐平市后港镇义方村委会胡冲村，身份证号码：360281201112243050，患有先天性心脏病、先天性巨结肠、新生儿肺炎并呼吸衰竭、新生儿硬肿症、脑膜炎、脑积膜膨出、肠梗阻、贫血重症营养不良等疾病，先后到乐平市妇幼保健院、人民医院和江西省儿童医院治疗，花费了10多元，早已让一对刚结婚的农家夫妇不堪重负，借遍了所有的亲朋好友，后续数万元的治疗费更是无从着落。如今，为了给程代俊治病救命，其父母带着他远在浙江求医，家中已无任何经济来源，不得已，年近七旬的爷爷', '1.jpg', '程代俊'),
(10, '程代俊，男，汉族，2011年12月24日出生于江西省乐平市后港镇义方村委会胡冲村，身份证号码：360281201112243050，患有先天性心脏病、先天性巨结肠、新生儿肺炎并呼吸衰竭、新生儿硬肿症、脑膜炎、脑积膜膨出、肠梗阻、贫血重症营养不良等疾病，先后到乐平市妇幼保健院、人民医院和江西省儿童医院治疗，花费了10多元，早已让一对刚结婚的农家夫妇不堪重负，借遍了所有的亲朋好友，后续数万元的治疗费更是无从着落。如今，为了给程代俊治病救命，其父母带着他远在浙江求医，家中已无任何经济来源，不得已，年近七旬的爷爷', '1.jpg', '程代俊'),
(11, '程代俊，男，汉族，2011年12月24日出生于江西省乐平市后港镇义方村委会胡冲村，身份证号码：360281201112243050，患有先天性心脏病、先天性巨结肠、新生儿肺炎并呼吸衰竭、新生儿硬肿症、脑膜炎、脑积膜膨出、肠梗阻、贫血重症营养不良等疾病，先后到乐平市妇幼保健院、人民医院和江西省儿童医院治疗，花费了10多元，早已让一对刚结婚的农家夫妇不堪重负，借遍了所有的亲朋好友，后续数万元的治疗费更是无从着落。如今，为了给程代俊治病救命，其父母带着他远在浙江求医，家中已无任何经济来源，不得已，年近七旬的爷爷', '1.jpg', '程代俊'),
(12, '程代俊，男，汉族，2011年12月24日出生于江西省乐平市后港镇义方村委会胡冲村，身份证号码：360281201112243050，患有先天性心脏病、先天性巨结肠、新生儿肺炎并呼吸衰竭、新生儿硬肿症、脑膜炎、脑积膜膨出、肠梗阻、贫血重症营养不良等疾病，先后到乐平市妇幼保健院、人民医院和江西省儿童医院治疗，花费了10多元，早已让一对刚结婚的农家夫妇不堪重负，借遍了所有的亲朋好友，后续数万元的治疗费更是无从着落。如今，为了给程代俊治病救命，其父母带着他远在浙江求医，家中已无任何经济来源，不得已，年近七旬的爷爷', '1.jpg', '程代俊'),
(13, '程代俊，男，汉族，2011年12月24日出生于江西省乐平市后港镇义方村委会胡冲村，身份证号码：360281201112243050，患有先天性心脏病、先天性巨结肠、新生儿肺炎并呼吸衰竭、新生儿硬肿症、脑膜炎、脑积膜膨出、肠梗阻、贫血重症营养不良等疾病，先后到乐平市妇幼保健院、人民医院和江西省儿童医院治疗，花费了10多元，早已让一对刚结婚的农家夫妇不堪重负，借遍了所有的亲朋好友，后续数万元的治疗费更是无从着落。如今，为了给程代俊治病救命，其父母带着他远在浙江求医，家中已无任何经济来源，不得已，年近七旬的爷爷', '1.jpg', '程代俊'),
(14, '放松地方的撒发答复', 'board.gif', '发多发发');

-- --------------------------------------------------------

--
-- Table structure for table `Upload`
--

CREATE TABLE IF NOT EXISTS `Upload` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `content` longtext,
  `photoUrl` varchar(255) DEFAULT NULL,
  `postedAt` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `upNum` int(11) NOT NULL,
  `upUserId` longtext,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `Upload`
--

INSERT INTO `Upload` (`id`, `author`, `content`, `photoUrl`, `postedAt`, `title`, `hits`, `upNum`, `upUserId`, `priority`) VALUES
(4, '胡华泉', '核心提示：日前，广州电视台播出了一则新闻：患有先天性凹胸8岁的孤儿伍容容，在表哥的陪伴下到广州，寻找她几乎从未谋面的母亲，只为了让她在自己的手术单上签名。在得知这个消息后，南方医科大学第三附属医院（以下简称南医三院）联系到伍容容表哥，愿意减免费手术费用替容容治疗。', '1.jpg', 1378094389000, '沉默的孤儿 8岁先天性漏斗胸女孩等待救助', 8, 1, 'null,201130720104', 0),
(5, '胡华泉', '核心提示：日前，广州电视台播出了一则新闻：患有先天性凹胸8岁的孤儿伍容容，在表哥的陪伴下到广州，寻找她几乎从未谋面的母亲，只为了让她在自己的手术单上签名。在得知这个消息后，南方医科大学第三附属医院（以下简称南医三院）联系到伍容容表哥，愿意减免费手术费用替容容治疗。', '1.jpg', 1378094389000, '沉默的孤儿 8岁先天性漏斗胸女孩等待救助', 2, 0, NULL, 0),
(6, '胡华泉', '核心提示：日前，广州电视台播出了一则新闻：患有先天性凹胸8岁的孤儿伍容容，在表哥的陪伴下到广州，寻找她几乎从未谋面的母亲，只为了让她在自己的手术单上签名。在得知这个消息后，南方医科大学第三附属医院（以下简称南医三院）联系到伍容容表哥，愿意减免费手术费用替容容治疗。', '1.jpg', 1378094389000, '沉默的孤儿 8岁先天性漏斗胸女孩等待救助', 1, 0, NULL, 3),
(7, '胡华泉', '核心提示：日前，广州电视台播出了一则新闻：患有先天性凹胸8岁的孤儿伍容容，在表哥的陪伴下到广州，寻找她几乎从未谋面的母亲，只为了让她在自己的手术单上签名。在得知这个消息后，南方医科大学第三附属医院（以下简称南医三院）联系到伍容容表哥，愿意减免费手术费用替容容治疗。', '1.jpg', 1378094389000, '沉默的孤儿 8岁先天性漏斗胸女孩等待救助', 0, 0, NULL, 0),
(8, '胡华泉', '核心提示：日前，广州电视台播出了一则新闻：患有先天性凹胸8岁的孤儿伍容容，在表哥的陪伴下到广州，寻找她几乎从未谋面的母亲，只为了让她在自己的手术单上签名。在得知这个消息后，南方医科大学第三附属医院（以下简称南医三院）联系到伍容容表哥，愿意减免费手术费用替容容治疗。', '1.jpg', 1378094389000, '沉默的孤儿 8岁先天性漏斗胸女孩等待救助', 0, 0, NULL, 0),
(9, '胡华泉', '核心提示：日前，广州电视台播出了一则新闻：患有先天性凹胸8岁的孤儿伍容容，在表哥的陪伴下到广州，寻找她几乎从未谋面的母亲，只为了让她在自己的手术单上签名。在得知这个消息后，南方医科大学第三附属医院（以下简称南医三院）联系到伍容容表哥，愿意减免费手术费用替容容治疗。', '1.jpg', 1378094389000, '沉默的孤儿 8岁先天性漏斗胸女孩等待救助', 0, 0, NULL, 1),
(10, '胡华泉', '核心提示：日前，广州电视台播出了一则新闻：患有先天性凹胸8岁的孤儿伍容容，在表哥的陪伴下到广州，寻找她几乎从未谋面的母亲，只为了让她在自己的手术单上签名。在得知这个消息后，南方医科大学第三附属医院（以下简称南医三院）联系到伍容容表哥，愿意减免费手术费用替容容治疗。', '1.jpg', 1378094389000, '沉默的孤儿 8岁先天性漏斗胸女孩等待救助', 0, 0, NULL, 0),
(11, '胡华泉', '核心提示：日前，广州电视台播出了一则新闻：患有先天性凹胸8岁的孤儿伍容容，在表哥的陪伴下到广州，寻找她几乎从未谋面的母亲，只为了让她在自己的手术单上签名。在得知这个消息后，南方医科大学第三附属医院（以下简称南医三院）联系到伍容容表哥，愿意减免费手术费用替容容治疗。', '1.jpg', 1378094389000, '沉默的孤儿 8岁先天性漏斗胸女孩等待救助', 0, 0, NULL, 0),
(12, '胡华泉', '核心提示：日前，广州电视台播出了一则新闻：患有先天性凹胸8岁的孤儿伍容容，在表哥的陪伴下到广州，寻找她几乎从未谋面的母亲，只为了让她在自己的手术单上签名。在得知这个消息后，南方医科大学第三附属医院（以下简称南医三院）联系到伍容容表哥，愿意减免费手术费用替容容治疗。', '1.jpg', 1378094389000, '沉默的孤儿 8岁先天性漏斗胸女孩等待救助', 0, 0, NULL, 0),
(15, 'HHQ', '<pre class="brush:java;toolbar:false">class\nSystem.out.println();</pre><p><br/></p>', '1.jpg', 1378094389000, 'fdsf ', 6, 2, 'null,201130720104,201130720100', 0),
(16, '胡华泉', '<p>drgdsfgdsgsvd</p>', '444.jpg', 1378094389000, 'ggrgdfgdsfg', 3, 1, 'null,201130720104', 4),
(20, '胡华泉', 'hshgfh', '444.jpg', 1378094389000, 'hgfhfdh', 1, 0, NULL, 0),
(21, '胡华泉', 'ksdhf请尽量书写清楚求助人的姓名、性别、年龄以及基本情况，另标明联系方式，以便日后联系帮助！', 'board_logo.gif', 1378094389000, 'dsjkfhdsahfk', 17, 2, 'null,201130720104,201130720100', 0),
(22, 'HHQ', '<span style="color:#006600;">请尽量书写清楚求规范大股东发送给发送给助人的姓名、性别、年龄以及基本情况，另标明联系方式，以便日后联系帮助！</span>', 'banner9.jpg', 1378094389000, '郭德纲反对三个范德萨', 48, 2, '201130720104,201130690328', 0),
(23, '叶志良', '求保养', 'body_back.png', 1378094389000, '没钱花，睡能帮我啊。。', 7, 1, ',201130690328', 0),
(24, '胡华泉', '&nbsp; &nbsp;&nbsp;', '面向对象实验指导书.doc', 1378094389000, '      ', 0, 0, '', 0),
(25, '胡华泉', '&lt;script type="text/javascript"&gt;alert(''test'');&lt;/script&gt;', '面向对象实验指导书.doc', 1378094389000, '非官方的', 1, 0, '', 0),
(26, '胡华泉', 'gdfsgdfsgds', 'banner4.jpg', 1382835139430, 'fdgfsgf', 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE IF NOT EXISTS `User` (
  `userid` varchar(255) NOT NULL,
  `authority` int(1) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `validated` int(11) NOT NULL,
  `validatedCode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`userid`, `authority`, `college`, `email`, `name`, `password`, `sex`, `phone`, `validated`, `validatedCode`) VALUES
('201130690328', 0, '信息学院', 'cc.leaf92@gmail.com', '叶志良', '36687354E3D7B40DA19395F0E47C6BB0', '男', '18826485242', 1, '5A374AF29D16FF8EF63B2B9FC0D431FB'),
('201130720100', 0, '信息学院', 'woai914099943@163.com', 'HHQ', 'C33367701511B4F6020EC61DED352059', '男', NULL, 1, 'B3DB950C13B04FCA4B18C0999DB7C7C0'),
('201130720104', 1, '信息学院', 'woai12346@qq.com', '胡华泉', 'E10ADC3949BA59ABBE56E057F20F883E', '男', '1234567890', 1, NULL),
('201130720199', 0, '信息学院', 'woai12346@qq.com', '范德萨发打算', 'E10ADC3949BA59ABBE56E057F20F883E', '男', '11111111111', 0, '09FC1D8C7E512B5BDAB9C2A7357EA7D5');

-- --------------------------------------------------------

--
-- Table structure for table `Verify`
--

CREATE TABLE IF NOT EXISTS `Verify` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `content` longtext,
  `photoUrl` varchar(255) DEFAULT NULL,
  `postedAt` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `Verify`
--

INSERT INTO `Verify` (`id`, `author`, `content`, `photoUrl`, `postedAt`, `title`) VALUES
(5, 'huhuaquan', '<p>\r\n	哈哈哈哈哈哈哈哈好\r\n</p>', '444.jpg', 1378094389000, 'gsfsfsf'),
(6, 'huhuaquan', '请尽量书写清楚求助人的姓名、性别、年龄以及基本情况，另标明联系方式，以便日后联系帮助！', '444.jpg', 1378094389000, 'fsdfdsfs'),
(7, 'huhuaquan', '<p style="text-indent: 2em;">fdsfsfsafsdfsdfdsfsdfasfadsfs<br/></p>', '444.jpg', 1378094389000, 'asfdf'),
(8, 'huhuaquan', 'gdfagfdsg', '111.jpg', 1378094389000, 'gsdgdsg'),
(10, '胡华泉', '请尽量书写清楚求助人的姓名、性别、年龄以及基本情况，另标明联系方式，以便日后联系帮助！', '444.jpg', 1378094389000, 'hsfhfdhd'),
(11, 'HHQ', '<span style="font-size:18px;background-color:#E53333;">sdgdgdsg</span>', 'banner3.jpg', 1378094389000, 'fsdfdsfdgfdsg'),
(12, 'HHQ', '请尽量书写清楚求助人的姓名、性别、年龄以及基本情况，另标明联系方式，以便日后联系帮助！', 'banner1.jpg', 1378094389000, 'fsdfdgdgdsg'),
(13, 'HHQ', 'dsfgfdgdfsgfdsgdsfgfdsg', 'banner1.jpg', 1378094389000, 'gfdgdfgsdfg'),
(14, '胡华泉', '&nbsp; &nbsp; &nbsp;', '面向对象实验指导书.doc', 1378094389000, '低功耗复合肥'),
(15, '胡华泉', '放松大幅度速发放松地方算', 'allupload.png', 1382765869875, '放松地方算的'),
(16, '胡华泉', '发送段发多算', 'banner4.jpg', 1382766583842, '范德萨发撒旦');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Comment`
--
ALTER TABLE `Comment`
  ADD CONSTRAINT `FK9BDE863F7C8A23E` FOREIGN KEY (`upload_id`) REFERENCES `Upload` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
