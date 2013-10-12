-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 12, 2013 at 01:06 PM
-- Server version: 5.5.32-0ubuntu0.13.04.1
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Comment`
--

INSERT INTO `Comment` (`id`, `author`, `content`, `postedAt`, `upload_id`) VALUES
(1, '匿名', '干豆腐个打算', '2013-10-11 18:26:47', 4),
(2, '匿名', '广东发给算法个', '2013-10-11 18:26:55', 4),
(3, '匿名', '合法化发', '2013-10-11 18:26:58', 4);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Email`
--

INSERT INTO `Email` (`id`, `content`, `recipient`, `subject`) VALUES
(1, '哈哈', 'woai12346@qq.com', '小测试'),
(2, '哈哈', 'woai914099943@163.com', '哈哈'),
(3, '哈哈', 'woai12346@qq.com', '哈哈');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `FeedBack`
--

INSERT INTO `FeedBack` (`id`, `contact`, `content`, `name`) VALUES
(1, '914099943', '一般', '胡华泉');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `News`
--

INSERT INTO `News` (`id`, `address`, `content`, `fileUrl`, `time`) VALUES
(1, '西园二楼门口', '为三级咖啡角色募捐', '444.jpg', '__募捐');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

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
(13, '程代俊，男，汉族，2011年12月24日出生于江西省乐平市后港镇义方村委会胡冲村，身份证号码：360281201112243050，患有先天性心脏病、先天性巨结肠、新生儿肺炎并呼吸衰竭、新生儿硬肿症、脑膜炎、脑积膜膨出、肠梗阻、贫血重症营养不良等疾病，先后到乐平市妇幼保健院、人民医院和江西省儿童医院治疗，花费了10多元，早已让一对刚结婚的农家夫妇不堪重负，借遍了所有的亲朋好友，后续数万元的治疗费更是无从着落。如今，为了给程代俊治病救命，其父母带着他远在浙江求医，家中已无任何经济来源，不得已，年近七旬的爷爷', '1.jpg', '程代俊');

-- --------------------------------------------------------

--
-- Table structure for table `Upload`
--

CREATE TABLE IF NOT EXISTS `Upload` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `content` longtext,
  `photoUrl` varchar(255) DEFAULT NULL,
  `postedAt` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `Upload`
--

INSERT INTO `Upload` (`id`, `author`, `content`, `photoUrl`, `postedAt`, `title`) VALUES
(4, '胡华泉', '核心提示：日前，广州电视台播出了一则新闻：患有先天性凹胸8岁的孤儿伍容容，在表哥的陪伴下到广州，寻找她几乎从未谋面的母亲，只为了让她在自己的手术单上签名。在得知这个消息后，南方医科大学第三附属医院（以下简称南医三院）联系到伍容容表哥，愿意减免费手术费用替容容治疗。', '1.jpg', '2013-06-29 21:52:46', '沉默的孤儿 8岁先天性漏斗胸女孩等待救助'),
(5, '胡华泉', '核心提示：日前，广州电视台播出了一则新闻：患有先天性凹胸8岁的孤儿伍容容，在表哥的陪伴下到广州，寻找她几乎从未谋面的母亲，只为了让她在自己的手术单上签名。在得知这个消息后，南方医科大学第三附属医院（以下简称南医三院）联系到伍容容表哥，愿意减免费手术费用替容容治疗。', '1.jpg', '2013-06-29 21:52:46', '沉默的孤儿 8岁先天性漏斗胸女孩等待救助'),
(6, '胡华泉', '核心提示：日前，广州电视台播出了一则新闻：患有先天性凹胸8岁的孤儿伍容容，在表哥的陪伴下到广州，寻找她几乎从未谋面的母亲，只为了让她在自己的手术单上签名。在得知这个消息后，南方医科大学第三附属医院（以下简称南医三院）联系到伍容容表哥，愿意减免费手术费用替容容治疗。', '1.jpg', '2013-06-29 21:52:46', '沉默的孤儿 8岁先天性漏斗胸女孩等待救助'),
(7, '胡华泉', '核心提示：日前，广州电视台播出了一则新闻：患有先天性凹胸8岁的孤儿伍容容，在表哥的陪伴下到广州，寻找她几乎从未谋面的母亲，只为了让她在自己的手术单上签名。在得知这个消息后，南方医科大学第三附属医院（以下简称南医三院）联系到伍容容表哥，愿意减免费手术费用替容容治疗。', '1.jpg', '2013-06-29 21:52:46', '沉默的孤儿 8岁先天性漏斗胸女孩等待救助'),
(8, '胡华泉', '核心提示：日前，广州电视台播出了一则新闻：患有先天性凹胸8岁的孤儿伍容容，在表哥的陪伴下到广州，寻找她几乎从未谋面的母亲，只为了让她在自己的手术单上签名。在得知这个消息后，南方医科大学第三附属医院（以下简称南医三院）联系到伍容容表哥，愿意减免费手术费用替容容治疗。', '1.jpg', '2013-06-29 21:52:46', '沉默的孤儿 8岁先天性漏斗胸女孩等待救助'),
(9, '胡华泉', '核心提示：日前，广州电视台播出了一则新闻：患有先天性凹胸8岁的孤儿伍容容，在表哥的陪伴下到广州，寻找她几乎从未谋面的母亲，只为了让她在自己的手术单上签名。在得知这个消息后，南方医科大学第三附属医院（以下简称南医三院）联系到伍容容表哥，愿意减免费手术费用替容容治疗。', '1.jpg', '2013-06-29 21:52:46', '沉默的孤儿 8岁先天性漏斗胸女孩等待救助'),
(10, '胡华泉', '核心提示：日前，广州电视台播出了一则新闻：患有先天性凹胸8岁的孤儿伍容容，在表哥的陪伴下到广州，寻找她几乎从未谋面的母亲，只为了让她在自己的手术单上签名。在得知这个消息后，南方医科大学第三附属医院（以下简称南医三院）联系到伍容容表哥，愿意减免费手术费用替容容治疗。', '1.jpg', '2013-06-29 21:52:46', '沉默的孤儿 8岁先天性漏斗胸女孩等待救助'),
(11, '胡华泉', '核心提示：日前，广州电视台播出了一则新闻：患有先天性凹胸8岁的孤儿伍容容，在表哥的陪伴下到广州，寻找她几乎从未谋面的母亲，只为了让她在自己的手术单上签名。在得知这个消息后，南方医科大学第三附属医院（以下简称南医三院）联系到伍容容表哥，愿意减免费手术费用替容容治疗。', '1.jpg', '2013-06-29 21:52:46', '沉默的孤儿 8岁先天性漏斗胸女孩等待救助'),
(12, '胡华泉', '核心提示：日前，广州电视台播出了一则新闻：患有先天性凹胸8岁的孤儿伍容容，在表哥的陪伴下到广州，寻找她几乎从未谋面的母亲，只为了让她在自己的手术单上签名。在得知这个消息后，南方医科大学第三附属医院（以下简称南医三院）联系到伍容容表哥，愿意减免费手术费用替容容治疗。', '1.jpg', '2013-06-29 21:52:46', '沉默的孤儿 8岁先天性漏斗胸女孩等待救助'),
(13, 'HHQ', '核心提示：日前，广州电视台播出了一则新闻：患有先天性凹胸8岁的孤儿伍容容，在表哥的陪伴下到广州，寻找她几乎从未谋面的母亲，只为了让她在自己的手术单上签名。在得知这个消息后，南方医科大学第三附属医院（以下简称南医三院）联系到伍容容表哥，愿意减免费手术费用替容容治疗', '1.jpg', '2013-07-12 18:04:57', '沉默的孤儿 8岁先天性漏斗胸女孩等待救助'),
(14, 'HHQ', '核心提示：日前，广州电视台播出了一则新闻：患有先天性凹胸8岁的孤儿伍容容，在表哥的陪伴下到广州，寻找她几乎从未谋面的母亲，只为了让她在自己的手术单上签名。在得知这个消息后，南方医科大学第三附属医院（以下简称南医三院）联系到伍容容表哥，愿意减免费手术费用替容容治疗。', '1.jpg', '2013-07-12 18:05:00', '沉默的孤儿 8岁先天性漏斗胸女孩等待救助'),
(15, 'HHQ', '<pre class="brush:java;toolbar:false">class\nSystem.out.println();</pre><p><br/></p>', '1.jpg', '2013-10-11 18:04:26', 'fdsf '),
(16, '胡华泉', '<p>drgdsfgdsgsvd</p>', '444.jpg', '2013-10-11 18:12:55', 'ggrgdfgdsfg'),
(17, '胡华泉', '<p>dgfdgfdgd</p>', '444.jpg', '2013-10-11 18:17:35', 'fdfsgdfgdfg'),
(18, '胡华泉', '<p>dhfgsd</p>', '444.jpg', '2013-10-11 18:17:56', 'dfdshsfh'),
(19, 'huhuaquan', '<span style="color:#E53333;">请尽量书写清楚求助人的姓名、性别、年龄以及基本情况，另标明联系方式，以便日后联系帮助！</span>', '444.jpg', '2013-10-11 19:00:56', 'fsdfdsf'),
(20, '胡华泉', 'hshgfh', '444.jpg', '2013-10-11 19:06:34', 'hgfhfdh');

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
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`userid`, `authority`, `college`, `email`, `name`, `password`, `sex`, `phone`) VALUES
('201130720100', 0, '信息学院', 'woai914099943@163.com', 'HHQ', 'C33367701511B4F6020EC61DED352059', '男', '1234567890'),
('201130720104', 1, '信息学院', 'woai12346@qq.com', '胡华泉', 'E10ADC3949BA59ABBE56E057F20F883E', '男', '1234567890'),
('201130720199', 0, '信息学院', 'woai12346@163.com', 'huhuaquan', 'FCEA920F7412B5DA7BE0CF42B8C93759', '男', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `Verify`
--

CREATE TABLE IF NOT EXISTS `Verify` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `content` longtext,
  `photoUrl` varchar(255) DEFAULT NULL,
  `postedAt` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `Verify`
--

INSERT INTO `Verify` (`id`, `author`, `content`, `photoUrl`, `postedAt`, `title`) VALUES
(5, 'huhuaquan', '<p>dgdsfsg</p>', '444.jpg', '2013-10-11 18:46:49', 'gsfsfsf'),
(6, 'huhuaquan', '请尽量书写清楚求助人的姓名、性别、年龄以及基本情况，另标明联系方式，以便日后联系帮助！', '444.jpg', '2013-10-11 18:48:05', 'fsdfdsfs'),
(7, 'huhuaquan', '<p style="text-indent: 2em;">fdsfsfsafsdfsdfdsfsdfasfadsfs<br/></p>', '444.jpg', '2013-10-11 18:48:39', 'asfdf'),
(8, 'huhuaquan', 'gdfagfdsg', '111.jpg', '2013-10-11 18:56:45', 'gsdgdsg'),
(10, '胡华泉', '请尽量书写清楚求助人的姓名、性别、年龄以及基本情况，另标明联系方式，以便日后联系帮助！', '444.jpg', '2013-10-11 19:05:46', 'hsfhfdhd'),
(11, 'HHQ', '<span style="font-size:18px;background-color:#E53333;">sdgdgdsg</span>', 'banner3.jpg', '2013-10-12 10:47:48', 'fsdfdsfdgfdsg'),
(12, 'HHQ', '请尽量书写清楚求助人的姓名、性别、年龄以及基本情况，另标明联系方式，以便日后联系帮助！', 'banner1.jpg', '2013-10-12 10:48:42', 'fsdfdgdgdsg');

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
