/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : book

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2013-07-17 09:34:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookName` varchar(50) NOT NULL,
  `author` varchar(50) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `langage` int(11) DEFAULT NULL,
  `publisher` varchar(50) DEFAULT NULL,
  `publishTime` datetime DEFAULT NULL,
  `price` char(20) DEFAULT NULL,
  `customNumber` varchar(20) DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `mark` text,
  `userId` int(11) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime DEFAULT NULL,
  `deleteTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`code`)
) ENGINE=MyISAM AUTO_INCREMENT=339 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('16', '人生不设限', '', null, null, '天津社会科学院出版社', null, '29.8元', '-1', '9787806886694', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('17', '天才10次方', '', null, null, '大塊文化出版', null, '新台币360元', '-2', '9789867975478', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('18', 'IT名人录', '', null, null, '明报出版社', null, '港币59元', '-3', '9789629734275', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('19', '读者文摘', '', null, null, '大孚书局有限公司', null, '新台币120元', '-4', '9789577650931', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('20', '赢', '', null, null, '中信出版集团股份有限公司', null, '39元', '-5', '9787508617824', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('21', '成功的第三条路（1）  做人八大艺术', '', null, null, '文经出版社', null, '新台币200元', '-6', '9789576632198', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('22', '成功的第三条路（2）  做人八大技巧', '', null, null, '文经出版社', null, '新台币200元', '-7', '9789576632204', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('23', '富爸爸', '', null, null, '世界图书出版社', null, '新台币250元', '-8', '9789574672028', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('24', '行销学-实例入门严书', '', null, null, '智胜文化事业有限公司', null, '新台币420元', '-9', '9789577290359', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('25', '人性的弱点全集', '', null, null, '天津社会科学院出版社', null, '38元', '-10', '9787806885574', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('26', '给你一个公司看你怎么管', '', null, null, '湖南文艺出版社', null, '35元', '-11', '9787540450212', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('27', '我用微软改变世界', '', null, null, '浙江人民出版社', null, '46元', '-12', '9787213047831', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('28', '共鸣', '', null, null, '中信出版社', null, '29元', '-13', '9787508614366', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('29', '我能让你快乐', '', null, null, '吉林出版社集团', null, '25元', '-14', '9787538738612', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('30', 'EQ 爱之旅', '', null, null, '时报出版', null, '新台币280元', '-15', '9789571320212', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('31', '天空不蓝，仍然可以欢笑', '', null, null, '张老师文化事业股份有限公司', null, '新台币270元', '-16', '9789576934810', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('32', '我能让你零压力', '', null, null, '时代文艺出版社', null, '28.8元', '-17', '9787538738445', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('33', '告诉自己我最棒', '', null, null, '辽宁人民出版社', null, '24.8元', '-18', '9787205066659', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('34', '达达兔驾到', '', null, null, '北方妇女儿童出版社', null, '29.8元', '-19', '9787538568714', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('35', '跟乐嘉学性格色彩', '', null, null, '湖南文艺出版社', null, '34.8元', '-20', '9787540448455', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('36', '茶花女', '', null, null, '理得出版社', null, '台币500元', '-21', '9789572804704', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('37', '城市从此开始', '', null, null, '中国青年出版社', null, '15元', '-22', '9787500660583', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('38', '从零开始学看盘', '', null, null, '电子工业出版社', null, '42元', '-23', '9787121123818', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('39', '做你自己', '', null, null, '新世界出版社', null, '28元', '-24', '9787510413407', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('40', '股票投资的24堂必修课', '', null, null, '中国青年出版社', null, '38元', '-25', 'bkbk703355', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('41', '掘金黑客', '', null, null, '电子工业出版社', null, '49元', '-26', '9787121184888', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('42', 'UCD火花集', '', null, null, '人民邮电出版社', null, '25元', '-27', '9787115198365', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('43', '汉语', '', null, null, '北京语言文化大学出版社', null, '30元', '-28', '9787561905722', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('44', '汉语', '', null, null, '北京语言大学出版社', null, '30元', '-29', '9787561905753', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('45', 'HSK单词速记速练（初级篇（上））', '', null, null, '北京语言大学出版社', null, '28元', '-30', '9787561911327', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('46', 'HSK语法点速记速练（初、中级篇）', '', null, null, '北京语言大学出版社', null, '42元', '-31', '9787561914854', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('47', 'HSK单词速记速练（初级篇（下））', '', null, null, '北京语言大学出版社', null, '28元', '-32', '9787561912355', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('48', 'HSK单词速记速练（初级篇（中））', '', null, null, '北京语言大学出版社', null, '28元', '-33', '9787561912348', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('49', 'HSK语法点速记速练（高级篇）', '', null, null, '北京语言大学出版社', null, '36元', '-34', '9787561914861', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('50', '速成强化教程（高等）', '', null, null, '北京语言大学出版社', null, '44元', '-35', '9787561910863', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('51', '速成强化教程（初、中等）', '', null, null, '北京语言大学出版社', null, '39元', '-36', '9787561909584', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('52', '普通话水平测试实施纲要', '', null, null, '商务印书馆', null, '44元', '-37', '9787100039963', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('53', '实用中文（初级）', '', null, null, '对外汉语教学学生用书', null, '复印纸', '-38', '无', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('54', '实用中文（中级）', '', null, null, '对外汉语教学学生用书', null, '复印纸', '-39', '无', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('55', '实用中文（高级）', '', null, null, '对外汉语教学学生用书', null, '复印纸', '-40', '无', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('56', '新编汉语速成教材（中级）', '', null, null, '复旦大学出版社', null, '复印纸', '-41', '无', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('57', '300汉字读写教程', '', null, null, '无', null, '复印纸', '-42', '无', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('58', 'Learn to Be 科技新贵族', '', null, null, '上旗文化事业股份有限公司', null, '新台币200元', '-43', '9789578280410', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('59', '正见', '', null, null, '中国友谊出版社', null, '25元', '-44', '9787505722453', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('60', '响聊聊职场', '', null, null, '中国商业出版社', null, '32元', '-45', '11028554', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('61', '佛教的见地与修道', '', null, null, '新星出版', null, '28元', '-46', '9787513300810', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('62', '朝圣（到印度圣地做什么）', '', null, null, '中国广播电视出版社', null, '38元', '-47', '9787504362650', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('63', '人间是剧场', '', null, null, '新星出版社', null, '38元', '-48', '9787513300803', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('64', '受用一生的场面话', '', null, null, '中国华侨出版社', null, '30元', '-49', '9787511309686', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('65', '零售业100个创意促销方案', '', null, null, '中国发展出版社', null, '29元', '-50', '9787802342859', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('66', '你的礼仪价值百万', '', null, null, '中国纺织出版社', null, '36.8元', '-51', '9787506480307', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('67', 'Beautiful Teams 团队之美', '', null, null, '东南大学出版社', null, '64元', '-52', '9787564122706', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('68', '最美丽的英文', '', null, null, '中国出版集团', null, '29.8元', '-53', '9787531721673', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('69', '现代汉语词典', '', null, null, '商务印书馆', null, '无', '-54', '无', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('70', '中式英语', '', null, null, '万里机构，万里书店', null, '港币58元', '-55', '9789621421586', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('71', '英语越问越进步', '', null, null, '万里机构，万里书店', null, '港币58元', '-56', '9789621421609', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('72', '三分法一学英语绝招', '', null, null, '万里机构，万里书店', null, '港币48元', '-57', '9789621421296', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('73', '避开英语陷阱', '', null, null, '万里机构，万里书店', null, '港币48元', '-58', '9789621421555', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('74', '词语解码（练习题）', '', null, null, '南华早报出版', null, '港币55元', '-59', '9789621782953', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('75', '语法解码（练习题）', '', null, null, '南华早报出版', null, '港币55元', '-60', '9789621782960', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('76', '会话解码（练习题）', '', null, null, '南华早报出版', null, '港币55元', '-61', '9789621782977', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('77', '词语解码', '', null, null, '南华早报出版', null, '港币55元', '-62', '9789621782953', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('78', '语法解码', '', null, null, '南华早报出版', null, '港币55元', '-63', '9789621782960', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('79', '会话解码', '', null, null, '南华早报出版', null, '港币55元', '-64', '9789621782977', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('80', '译.写解码', '', null, null, '南华早报出版', null, '港币55元', '-65', '9789621783950', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('81', '英语语法学', '', null, null, '商务印书馆', null, '港币25元', '-66', '9789620720666', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('82', '英语姓名词典', '', null, null, '外语教学与研究出版社', null, '21.9元', '-67', '9787560022505', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('83', '英国英语与美国英语', '', null, null, '商务印书馆', null, '港币58元', '-68', '9789620710223', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('84', '英语发音基本功', '', null, null, '商务印书馆', null, '无', '-69', '9789620713859', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('85', '强化英语手册：基本词汇', '', null, null, '香港教育图书', null, '无', '-70', '9789629488079', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('86', '英语语法大全（一）', '', null, null, '商务印书馆出版', null, '无', '-71', '9789620702068', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('87', '英语语法大全（二）', '', null, null, '商务印书馆出版', null, '无', '-71', '9789620702068', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('88', '常用短语例解', '', null, null, '海峰出版社', null, '无', '-72', '9789622382749', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('89', '常用介词例解', '', null, null, '海峰出版社', null, '无', '-73', '9789622382602', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('90', '常用动词例解', '', null, null, '海峰出版社', null, '无', '-74', '9789622382619', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('91', '常用词组例解', '', null, null, '海峰出版社', null, '无', '-75', '9789622382718', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('92', '无敌中考英语', '', null, null, '海豚出版社', null, '35元', '-76', '9787801383693', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('93', '无敌高考英语', '', null, null, '海豚出版社', null, '35元', '-77', '9787801383709', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('94', '世界上最优美的散文', '', null, null, '哈尔滨出版社', null, '19.8元', '-78', '9787806991848', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('95', '感动一个国家的文字', '', null, null, '哈尔滨出版社', null, '19.8元', '-79', '9787806991503', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('96', '胜利之门 学生用书', '', null, null, '人民邮电出版社', null, '35元', '-80', '9787115105493', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('97', '胜利之门 VCD学习指导', '', null, null, '人民邮电出版社', null, '30元', '-81', '9787115113979', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('98', '胜利之门VCD', '', null, null, '人民邮电出版社', null, '50元', '-82', '9787887451323', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('99', '全国职称英语等级考试用书', '', null, null, '中国人事出版社', null, '45元', '-83', '9787512902527', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('100', '英语专业八级词汇', '', null, null, '东南大学出版社', null, '24.8元', '-84', '9787564110734', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('101', '新概念英语 VCD', '', null, null, '北京外语音像出版社', null, '175元', '-85', '9787880122831', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('102', '英语会话ABC', '', null, null, '专业出版社', null, '40元', '-86', '无', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('103', '这样上班就对了', '', null, null, '吉林出版集团', null, '28.8元', '-87', '9787538737097', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('104', '谷歌小子', '', null, null, '中信出版社', null, '26元', '-88', '9787508619668', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('105', '谷歌之道', '', null, null, '人民邮电出版社', null, '29.8元', '-89', '9787115229687', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('106', '谷歌炸弹', '', null, null, '重庆出版社', null, '29.8元', '-90', '9787229019648', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('107', 'HTML网页寄出特效580招', '', null, null, '万里书店出版', null, '65元', '-91', '9789621419521', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('108', 'HTML5+CSS3网页布局和样式精粹', '', null, null, '清华大学出版社', null, '62元', '-92', '9787302261834', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('109', 'HTML5程序设计（第二版）', '', null, null, '人民邮电出版社', null, '59元', '-93', '9787115278715', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('110', 'HTML5高级程序设计', '', null, null, '人民邮电出版社', null, '45元', '-94', '9787115244871', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('111', 'HTML4 for the world wide web', '', null, null, 'Peachpit Press', null, '美金17.96元', '-95', '9780201696967', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('112', 'HTML5应用开发', '', null, null, '电子工业出版社', null, '59元', '-96', '9787115274946', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('113', 'HTML5 揭秘', '', null, null, '人民邮电出版社', null, '45元', '-97', '9787121124082', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('114', 'HTML webonomics', '', null, null, '看不懂英文', null, '美金14元', '-98', '9780767901345', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('115', '敏感软件测试：测试人员与敏捷团队的实践指南', '', null, null, '清华大学出版社', null, '49元', '-99', '9787302236535', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('116', '软件测试与持续质量改进', '', null, null, '人民邮电出版社', null, '55元', '-100', '10062647', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('117', '软件测试方法和技术', '', null, null, '清华大学出版社', null, '39.5元', '-101', '9787302225836 /10398143', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('118', '软件测试（第三版）', '', null, null, '人民邮电出版社', null, '59元', '-102', '9787115247995', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('119', '软件测试(第二版)', '', null, null, '机械工业出版社', null, '30元', '-103', '9787111185260', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('120', '制造计划与控制', '', null, null, '中国人民大学出版社', null, '69元', '-104', '9787300099521', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('121', 'LINUX系统管理', '', null, null, '东南大学出版社', null, '42元', '-105', '9787564110383', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('122', 'LINUX Shell 脚本攻略', '', null, null, '人民邮电出版社', null, '49元', '-106', '9787115264725', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('123', 'red hat linux6', '', null, null, '看不懂英文', null, '美金39.99元', '-107', '9780672316890', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('124', 'Linux Deployment', '', null, null, '看不懂英文', null, '美金49.99元', '-108', '9781861002877', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('125', 'Direct 3D和XNA游戏开发基础（C#语言版）', '', null, null, '清华大学出版社', null, '46元', '-109', '9787302187646', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('126', 'Problem solving with C++', '', null, null, '看不懂英文', null, '', '-110', '9780805374407', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('127', 'Windows via C/C++', '', null, null, '清华大学出版社', null, '99元', '-111', '9787302184003', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('128', '人性的弱点全集', '', null, null, '天津社会科学院出版社', null, '38元', '-112', '9787806885574', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('129', '常用语法例解', '', null, null, '海峰出版社', null, '无', '-113', '9789622382626', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('130', '架构之美', '', null, null, '机械工业出版社', null, '69元', '-114', '9787111283560', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('131', 'JavaBeans', '', null, null, 'Sun Microsystems Press Publisher：Michael Llwyd Alr', null, '美金49.99元', '-115', '9780130355713', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('132', 'JavaBeans', '', null, null, '看不懂英文', null, '美金44.95元', '-116', '9780596002268', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('133', 'Java应用程序', '', null, null, '美商麦格罗', null, '新台币690元', '-117', '9789574936069', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('134', 'Google App Engine', '', null, null, '东南大学出版社', null, '59元', '-118', '9787564124939', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('135', '成功的商业分析师/项目经理', '', null, null, '电子工业出版社', null, '38元', '-119', '9787121147616', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('136', '容量规划的艺术', '', null, null, '东南大学出版社', null, '29元', '-120', '9787564116521', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('137', '实用软件项目管理', '', null, null, '东南大学出版社', null, '42元', '-121', '9787564105785', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('138', 'ruby on rails', '', null, null, '东南大学出版社', null, '26元', '-122', '9787564105693', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('139', '从重构到模式', '', null, null, '机械工业出版社', null, '49元', '-123', '9787111175681', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('140', '系统分析与建模', '', null, null, '清华大学出版社', null, '36元', '-124', '9787302211778', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('141', '软件开发成功路线图—敏捷模式', '', null, null, '机械工业出版社', null, '45元', '-125', '9787111299431', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('142', '敏捷武士 看敏捷高手交付卓越软件', '', null, null, '人民邮电出版社', null, '45元', '-126', '9787115281548', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('143', '标签 标记系统设计实践', '', null, null, '机械工业出版社', null, '59元', '-127', '9787111385981', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('144', 'Silverlight4RIA开发全程解析', '', null, null, '清华大学出版社', null, '58元', '-128', '9787302250845', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('145', 'web&software development', '', null, null, 'Attorney Stephen Fishman', null, '44.95元', '-129', '9780873376457', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('146', 'SOA in Practice', '', null, null, '东南大学出版社', null, '58元', '-130', '9787564111434', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('147', 'Visual Basic Projiect Management', '', null, null, 'WROX', null, '49.99美金', '-131', '9781861002938', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('148', 'ASP.net Ajax 编程参考手册', '', null, null, '清华大学出版社', null, '168元', '-132', '9787302194828', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('149', 'ASP.net 4高级编程', '', null, null, '清华大学出版社', null, '158元', '-133', 'B0049P2LPE', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('150', 'ASP.net 3.5入门经典', '', null, null, '清华大学出版社', null, '88元', '-134', '9787302185833', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('151', 'ASP.net 3.5商用开发架构精解', '', null, null, '清华大学出版社', null, '59.8元', '-135', '9787302240402', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('152', 'ASP.NET 3.5SP1高级编程（第六版）', '', null, null, '清华大学出版社', null, '158元', '-136', '9787302215486', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('153', 'ASP.NET MVC1.0 入门经典', '', null, null, '清华大学出版社', null, '68元', '-137', '9787302247760', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('154', 'ASP.NET MVC3 高级编程', '', null, null, '清华大学出版社', null, '59元', '-138', '9787302286752', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('155', 'ASP.NET 3.5 核心编程', '', null, null, '清华大学出版社', null, '119元', '-139', '9787302190585', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('156', 'Windows Phone 7 高级编程', '', null, null, '清华大学出版社', null, '69元', '-140', '9787302269496', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('157', 'the web design annual 2001', '', null, null, '', null, '', '-141', '9784766112238', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('158', 'LEARN TO PROGRANM with visualbasic', '', null, null, 'activepath', null, '美金19.99', '-142', '9781902745060', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('159', '访谈大师访谈录', '', null, null, '人民邮电出版社', null, '59元', '-143', '9787115264312', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('160', '编程语言实现模式', '', null, null, '华中科技大学出版社', null, '72元', '-144', '9787560977003', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('161', 'Couch DB', '', null, null, '中国电力出版社', null, '38元', '-145', '9787512328365', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('162', '社交应用编程', '', null, null, '东南大学出版社', null, '72元', '-146', '9787564133931', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('163', 'WCF编程', '', null, null, '机械工业出版社', null, '99元', '-147', '9787111278900', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('164', 'software requirements', '', null, null, '', null, '美金34.99元', '-148', '9780735606319', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('165', 'RAPID DEVELOPMENT', '', null, null, '', null, '美金35元', '-149', '9781556159008', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('166', 'software project survivalguide', '', null, null, '', null, '美金24.99元', '-150', '9781572316218', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('167', '编程珠玑（第二版）', '', null, null, '人民邮电出版社', null, '39元', '-151', '9787115179289', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('168', '易读代码的艺术', '', null, null, '东南大学出版社', null, '39元', '-152', '9787564134471', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('169', '编写可读代码的艺术', '', null, null, '机械工业出版社', null, '59元', '-153', '9787111385448', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('170', '数据挖掘-概念与技术', '', null, null, '高等教育出版社', null, '35元', '-154', '9787040100419', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('171', 'MY sql high availability', '', null, null, '东南大学出版社', null, '82元', '-155', '9787564125257', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('172', '深入PHP面向对象、模式与实践', '', null, null, '人民邮电出版社', null, '69元', '-156', '9787115256249', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('173', 'Android攻略', '', null, null, '人民邮电出版社', null, '69元', '-157', '9787115284518', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('174', '大话设计模式', '', null, null, '清华大学出版社', null, '59元', '-158', '9787302162063', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('175', 'head first设计模式', '', null, null, '中国电力出版社', null, '98元', '-159', '9787508353937', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('176', 'VISUAL STTUDIO.NET', '', null, null, '', null, '', '-160', '', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('177', 'ASP.NET 2.0高级编程', '', null, null, '清华大学出版社', null, '138元', '-161', '9787302157014', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('178', 'ASP.NET 第一步 基于C#和ASP.NET2.0', '', null, null, '清华大学出版社', null, '69元', '-162', '9787302152231', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('179', 'ASP.NET3.5从入门到精通', '', null, null, '清华大学出版社', null, '59元', '-163', '9787302201953', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('180', 'ASP.NET MVC3高级编程', '', null, null, '清华大学出版社', null, '59元', '-164', '9787302286752', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('181', 'C#高级编程（第四版）', '', null, null, '清华大学出版社', null, '128元', '-165', '9787302138037', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('182', 'EJB Design Patterns', '', null, null, '', null, '', '-166', '', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('183', 'Java手机程式开发', '', null, null, '学贯行销股份有限公司', null, '新台币500元', '-167', '9789867961754', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('184', 'Java 2 form scratch(附光盘)', '', null, null, '', null, '60元', '-168', '29236721732', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('185', 'JacaScript高级程序设计', '', null, null, '人民邮电出版社', null, '99元', '-169', '9787115275790', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('186', 'VisualBasic Oracle8', '', null, null, 'wrox', null, '美金29.99元', '-170', '676623017895', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('187', 'Special edition using SQL', '', null, null, '', null, '美金39.99元', '-171', '9780789719744', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('188', '鲜活的数据 数据可视化指南', '', null, null, '人民邮电出版社', null, '69元', '-172', '9787115293817', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('189', 'SQL Server 2005数据库服务器架构设计', '', null, null, '清华大学出版社', null, '59.8元', '-173', '9787302161370', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('190', 'SQL Server 2005中文版 基础教程', '', null, null, '清华大学出版社', null, '59.8元', '-174', '9787302149729', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('191', 'Accounting theory and practice', '', null, null, '', null, '', '-175', '9780273624448', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('192', 'Right Word Wrong Word', '', null, null, 'longman', null, '', '-176', '', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('193', 'The Secured Eneterprise', '', null, null, '', null, '美金34.99元', '-177', '76092011347', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('194', 'Redesigning', '', null, null, '', null, '', '-178', '9780071181136', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('195', 'Developing Enterprise applications-An Impurist\'s V', '', null, null, '', null, '美金42.5元', '-179', '9780789722690', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('196', 'developing software with UML', '', null, null, '', null, '', '-180', '9780201398267', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('197', 'developing applications with visual basic and UML', '', null, null, '', null, '39.95元', '-181', '9780201615791', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('198', 'inside windows 2000 server', '', null, null, '', null, '美金49.99元', '-182', '9781562059293', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('199', 'Client/server survival guide', '', null, null, '', null, '', '-183', '9780471316152', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('200', 'Inside corba ', '', null, null, '', null, '', '-184', '9780201895407', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('201', 'object-oriented systems analysis and design using ', '', null, null, '', null, '', '-185', '9780077098643', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('202', 'Windows Server 2003服务器搭建、配置与管理', '', null, null, '中国水利水电出版社', null, '68元', '-186', 'B0011C5CRC', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('203', '锋利的jQuery', '', null, null, '人民邮电出版社', null, '49元', '-187', '9787115281609', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('204', '用户故事与敏捷方法', '', null, null, '清华大学出版社', null, '39元', '-188', '9787302223405', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('205', 'Rules tools for leaders', '', null, null, '', null, '美金13.95元', '-189', '9780895298355', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('206', 'Buffett', '', null, null, '', null, '美金14.95元', '-190', '9780385484916', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('207', 'on the firing line', '', null, null, '', null, '美金15元', '-191', '9780887309199', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('208', 'being digital', '', null, null, '', null, '美金12元', '-192', '9780679762904', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('209', 'custonmers.com', '', null, null, '', null, '美金27.5元', '-193', '9780812930375', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('210', 'BILLGATES BUSINESS @ THE SPEED OF THOUGHT', '', null, null, '', null, '美金30元', '-194', '9780446525688', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('211', 'DIGITAL ECONOMY', '', null, null, '', null, '', '-195', '639785307181', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('212', 'HOW TO MAKE MONEY IN STOCKS', '', null, null, '', null, '', '-196', '9780070480179', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('213', 'Bill gates the road ahead', '', null, null, '', null, '美金15.95元', '-197', '9780140260403', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('214', 'andrew s.grove', '', null, null, '', null, '美金27.5元', '-198', '9780385482585', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('215', 'the digital estate', '', null, null, '', null, '美金14.95元', '-199', '639785304159', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('216', 'ESSENTIAL MANAGER\'S MANUAL', '', null, null, '', null, '', '-200', '9780751304008', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('217', 'training in interpersonal skills', '', null, null, '', null, '', '-201', '', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('218', 'DATABASE SYSTEMS', '', null, null, '', null, '', '-202', '9780201708578', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('219', 'DB2 THIRD EDITION', '', null, null, '', null, '美金59.99元', '-203', '9780672311680', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('220', 'unieashed', '', null, null, '', null, '美金49.99元', '-204', '9780672317095', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('221', 'information rules', '', null, null, '', null, '', '-205', '9780875848631', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('222', 'handbook of programming languages', '', null, null, '', null, '美金120元', '-206', '619472701430', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('223', 'forbes business quotations', '', null, null, '', null, '', '-207', '9783829028974', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('224', 'e-enterprise business models,architecture,and comp', '', null, null, '', null, '', '-208', '9780521774871', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('225', 'amazon.com get big fast', '', null, null, '', null, '美金27元', '-209', '9780066620411', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('226', 'striking it rich.com', '', null, null, '', null, '美金24.95元', '-210', '639785305149', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('227', 'compact english learner\'s dictionary', '', null, null, '', null, '', '-211', '9780007175239', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('228', 'PHP、MySQL Apache 编程导学（附光盘）', '', null, null, '机械工业出版社', null, '59元', '-212', '9787111252078', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('229', '深入理解My SQL核心技术', '', null, null, '中国电力出版社', null, '35元', '-213', '9787508387901', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('230', 'PHP动态网页设计（第二版）', '', null, null, '人民邮电出版社', null, '69元', '-214', '9787115284303', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('231', 'PHP开发 典型模块大全（修订版）', '', null, null, '人民邮电出版社', null, '79.8元', '-215', '9787115225825', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('232', 'PHP 6高级编程', '', null, null, '清华大学出版社', null, '86元', '-216', '9787302238249', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('233', 'PHP+MySQL专家编程', '', null, null, '清华大学出版社', null, '69.8元', '-217', '9787302269632', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('234', '开发高质量PHP框架与应用的实际案例解析', '', null, null, '清华大学出版社', null, '49元', '-218', '9787302285267', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('235', 'PHP框架高级编程-应用Symfony、cakePHP和Zend', '', null, null, '清华大学出版社', null, '68元', '-219', '9787302279709', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('236', 'PHP+MySQL专家编程', '', null, null, '清华大学出版社', null, '69.8元', '-220', '9787302269632', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('237', '.NET Components', '', null, null, '东南大学出版社', null, '85元', '-221', '9787564102746', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('238', 'NET.GAIN', '', null, null, '', null, '24.95元', '-222', '9780875847597', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('239', 'MICROSOFT.NET', '', null, null, '', null, '29.99元美金', '-223', '790145137708', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('240', 'XML WEB SERVICES .NET PLATFORM', '', null, null, '世界图书出版社', null, '148元', '-224', '9787506254618', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('241', 'VISUAL BASIC6 BUSINESS OBJECTS', '', null, null, '', null, '美金59.9元', '-225', '9781861001078', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('242', 'Windows Phone程序设计', '', null, null, '电子工业出版社', null, '69元', '-226', '9787121157677', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('243', 'Android开发秘笈', '', null, null, '人民邮电出版社', null, '49元', '-227', '9787115257185', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('244', 'Android程序设计', '', null, null, '东南大学出版社', null, '88元', '-228', '9787564130732', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('245', 'Microsoft Mobile 移动应用开发宝典', '', null, null, '清华大学出版社', null, '68元', '-229', '9787302170334', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('246', '智能手机跨平台开发高级教程', '', null, null, '清华大学出版社', null, '39元', '-230', '9787302260479', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('247', 'Android移动开发一本就够', '', null, null, '人民邮电出版社', null, '75元', '-231', '9787115251817', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('248', 'debugging the development process', '', null, null, '', null, '美金24.95元', '-232', '790145565020', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('249', 'SAP R/3 SYSTEM a client/server technplogy', '', null, null, '', null, '美金29.95元', '-233', '9780201403503', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('250', 'Architecting web services', '', null, null, '', null, '美金49.95元', '-234', '9781893115583', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('251', 'Realizing e-business with components', '', null, null, '', null, '', '-235', '9780201675207', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('252', 'Web engagement', '', null, null, '', null, '美金39.95元', '-236', '9780201657661', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('253', 'SAP R/3 Implementation with ASAP', '', null, null, '', null, '美金49.99元', '-237', '9780782124279', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('254', 'Tapworthy designing great Iphone Apps', '', null, null, '东南大学出版社', null, '78元', '-238', '9787564125011', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('255', '触动人心-设计优秀的iPhone应用', '', null, null, '电子工业出版社', null, '79元', '-239', '9787121144974', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('256', 'Android攻略', '', null, null, '人民邮电出版社', null, '69元', '-240', '9787115284518', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('257', 'Windows Phone 编程精要', '', null, null, '电子工业出版社', null, '69元', '-241', '9787121158117', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('258', 'High performance My SQL', '', null, null, '东南大学出版社', null, '98元', '-242', '9787564134457', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('259', 'PHP和MySQL Web开发', '', null, null, '机械工业出版社', null, '95元', '-243', '9787111262817', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('260', 'openoffice 非常easy', '', null, null, '万里机构.万里书店出版', null, '48元', '-244', '9789621424464', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('261', 'ASP.NET编程（有几张纸已经脱落）', '', null, null, '东南大学出版社', null, '98元', '-245', '9787564103217', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('262', 'CODE COMPLETE 代码2大全', '', null, null, '电子工业出版社', null, '98元', '-246', '9787121022982', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('263', 'ASP.NET3.5揭秘', '', null, null, '人民邮电出版社', null, '79元', '-247', '9787115204769', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('264', '.NET设计规范', '', null, null, '机械工业出版社', null, '56元', '-248', '9787111202035', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('265', 'C#高级编程', '', null, null, '清华大学出版社', null, '148元', '-249', '9787302239376', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('266', 'successful web sites', '', null, null, '', null, '美金49.99元', '-250', '9781568303826', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('267', 'the management of business logistics', '', null, null, '', null, '', '-251', '9780324007510', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('268', '呼叫中心运营与管理', '', null, null, '清华大学出版社', null, '39.8元', '-252', '9787302237853', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('269', '高性能网站 High performance web sites', '', null, null, '东南大学出版社', null, '28元', '-253', '9787564108410', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('270', 'Hbase权威指南', '', null, null, '东南大学出版社', null, '72元', '-254', '9787564133924', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('271', 'DON\'T MAKE ME THINK', '', null, null, '机械工业出版社', null, '39元', '-255', '9787111184829', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('272', 'DON\'T MAKE ME THINK', '', null, null, '机械工业出版社', null, '39元', '-255', '9787111184829', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('273', '庖丁解牛纵向切入ASP.NET3.5控件和组件开发技术', '', null, null, '电子工业出版社', null, '79元', '-257', '9787121116537', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('274', 'Implementing Baan IV', '', null, null, '', null, '美金59.99元', '-258', '9780789711144', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('275', 'specialedition using lotus notes and domino 4.5', '', null, null, '', null, '美金59.99元', '-259', '9780789709431', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('276', 'Fireworks2 惹火上网', '', null, null, '', null, '新台币680元', '-260', '9799578232289', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('277', 'CREATING KILLER WEB SITES ', '', null, null, '', null, '美金49.99元', '-261', '752059043315', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('278', 'Auditing（Hong Kong）', '', null, null, '', null, '', '-262', '9789623976527', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('279', '学会网站视觉设计Cool3D Photolmpact', '', null, null, '万里机构.万里书店出版', null, '98元', '-263', '9789621420121', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('280', '学会网站 进阶规划、设计', '', null, null, '万里机构.万里书店出版', null, '98元', '-264', '9789621420145', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('281', '学会动态 网页技术 JavaScript', '', null, null, '万里机构.万里书店出版', null, '98元', '-265', '9789621420152', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('282', '征服AJAX WEB 2.0 开发技术详解', '', null, null, '人民邮电出版社', null, '56元', '-266', '9787115148049', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('283', 'EFFICIENT CPROGRAMMING', '', null, null, '', null, '', '-267', '9780133619324', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('284', 'Web Operations 网站运维', '', null, null, '东南大学出版社', null, '54元', '-268', '9787564125028', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('285', 'Direct from Dell', '', null, null, '', null, '美金26元', '-269', '9780887309144', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('286', 'the microsoft file', '', null, null, '', null, '美金25.95元', '-270', '9780812927160', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('287', 'outlook 2000', '', null, null, '万里机构.万里书店出版', null, '港币168元', '-271', '9789621421425', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('288', 'access 2000', '', null, null, '万里机构.万里书店出版', null, '港币168元', '-272', '9789621421449', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('289', 'power point 2000', '', null, null, '万里机构.万里书店出版', null, '港币168元', '-273', '9789621421289', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('290', 'project 2000', '', null, null, '万里机构.万里书店出版', null, '港币168元', '-274', '9789621421432', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('291', 'Basic Phrasal Verbs', '', null, null, '', null, '美金10.95元', '-275', '9780844206738', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('292', 'six factors twelve skills &three beliefs for readi', '', null, null, '', null, '', '-276', '9789629487966', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('293', 'SAP R/3 ', '', null, null, '', null, '美金12.99元', '-277', '752063314951', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('294', '设计模式 可复用面向对象软件的基础', '', null, null, '机械工业出版社', null, '38元', '-278', '9787111095071', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('295', '用户体验要素', '', null, null, '机械工业出版社', null, '39元', '-279', '9787111348665', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('296', 'enterprise .com', '', null, null, '', null, '美金25元', '-280', '9780738200644', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('297', '网站美术特效必学', '', null, null, '万里机构', null, '98元', '-281', '9789621417732', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('298', '网站制作全学习课程', '', null, null, '万里机构', null, '98元', '-282', '9789621420169', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('299', '一起来学习动画制作 Flash', '', null, null, '万里机构', null, '港币45元', '-283', '9789621419248', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('300', '别聚光芒CSS属性、浏览器兼容与网页布局', '', null, null, '人民邮电出版社', null, '59元', '-284', '9787115181237', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('301', 'RFID技术与应用', '', null, null, '旗标出版股份有限公司', null, '145港币', '-285', '9789574421565', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('302', 'Increase Your Brainpower', '', null, null, '', null, '', '-286', '9780471531234', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('303', '电子商务手册', '', null, null, '经要出版有限公司', null, '港币100元', '-287', '4895016600063', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('304', '美国火爆俚语', '', null, null, '一出版有限公司', null, '港币49元', '-288', '9789625774480', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('305', '刘少奇与新中国', '', null, null, '', null, '', '-289', '', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('306', 'two hundred mini-compositions to increase word pow', '', null, null, '香港教育图书公司', null, '', '-290', '9789629487928', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('307', '香港科技创新发展战略研究', '', null, null, '明报出版社有限公司', null, '港币79元', '-291', '9789629734626', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('308', '中国会计审计与税务  概论', '', null, null, '牛津大学出版社', null, '', '-292', '9780195916539', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('309', 'openGL编程基础', '', null, null, '清华大学出版社', null, '35元', '-293', '9787302171027', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('310', '企业资源规划-制造业管理篇', '', null, null, '电子工业出版社', null, '35元', '-294', '9787505368705', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('311', 'opening digital markets', '', null, null, '', null, '美金24.95元', '-295', '639785302476', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('312', 'fincial institutions markets and money', '', null, null, '', null, '', '-296', '9780030257414', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('313', 'philip and alex\'s guide to web publishing', '', null, null, '', null, '', '-297', '9781558605343', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('314', 'Building scalable database applications ', '', null, null, '', null, '美金37.95元', '-298', '9780201310139', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('315', '锦绣蓝图 怎样规划令人流连忘返的网站', '', null, null, '人民邮电出版社', null, '59元', '-299', '9787115213631', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('316', 'Microeconomics ', '', null, null, '', null, '', '-300', '9780030311321', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('317', 'organizational behavior', '', null, null, '', null, '', '-301', '9780132285117', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('318', 'THOUGHTS 交互设计沉思录', '', null, null, '机械工业出版社', null, '49元', '-302', '9787111396789', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('319', '设计心理学', '', null, null, '中信出版社', null, '30元', '-303', '9787508619156', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('320', '设计心理学', '', null, null, '中信出版社', null, '30元', '-304', '9787508619156', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('321', 'Microsoft money2001 at a glance', '', null, null, '', null, '', '-305', 'X05-72800', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('322', '10大绿色科技前瞻', '', null, null, '香港经济日报出版社', null, '', '-306', '', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('323', 'correct usage in written english', '', null, null, '', null, '', '-307', '9789620711190', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('324', 'office2007活用超百科Uitra Bible(共3套）', '', null, null, '', null, '', '-308', '', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('325', 'office2007活用超百科Uitra Bible(共3套）', '', null, null, '', null, '港币138元', '-309', '9789626784846', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('326', '法语一日一题', '', null, null, '商务印书馆', null, '', '-310', '9789620714665', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('327', '法语入门', '', null, null, '万里机构.万里书店出版', null, '港币78元', '-311', '9789621422705', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('328', '德语一日一题', '', null, null, '商务印书馆', null, '', '-312', '9789620714603', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('329', '德语入门', '', null, null, '万里机构.万里书店出版', null, '港币78元', '-313', '9789621422699', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('330', '西班牙语入门', '', null, null, '万里机构.万里书店出版', null, '港币78元', '-314', '9789621422712', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('331', '意大利语入门', '', null, null, '万里机构.万里书店出版', null, '港币78元', '-315', '9789621419026', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('332', '天天学日语单词', '', null, null, '万里机构.万里书店出版', null, '港币98元', '-316', '9789621422118', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('333', '天天学日语句子', '', null, null, '万里机构.万里书店出版', null, '港币98元', '-317', '9789621419613', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('334', '天天学日语句型', '', null, null, '万里机构.万里书店出版', null, '港币98元', '-318', '9789621422132', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('335', '大家的日本语 进阶1', '', null, null, '中山大学音像出版社', null, '28元', '-319', '9787884900954', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('336', '大家的日本语 进阶2', '', null, null, '中山大学音像出版社', null, '28元', '-320', '9787884900954', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('337', 'ANDROID开发秘籍', '', null, null, '人民邮电出版社', null, '75元', '-321', '9787115274779', null, null, '2013-07-11 21:45:19', null, null);
INSERT INTO `book` VALUES ('338', '数学之美', '', null, null, '人民邮电出版社', null, '45元', '-322', '9787115282828', null, null, '2013-07-11 21:45:19', null, null);

-- ----------------------------
-- Table structure for `bookcategory`
-- ----------------------------
DROP TABLE IF EXISTS `bookcategory`;
CREATE TABLE `bookcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookcategory
-- ----------------------------

-- ----------------------------
-- Table structure for `borrow`
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `borrowTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `revertTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES ('31', '40', '1', '2013-07-14 21:06:26', null);
INSERT INTO `borrow` VALUES ('32', '20', '1', '2013-07-14 21:10:15', null);

-- ----------------------------
-- Table structure for `borrow_history`
-- ----------------------------
DROP TABLE IF EXISTS `borrow_history`;
CREATE TABLE `borrow_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `borrowTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `revertTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of borrow_history
-- ----------------------------
INSERT INTO `borrow_history` VALUES ('1', '16', '1', '2013-07-14 10:39:29', '2013-07-14 10:39:29');
INSERT INTO `borrow_history` VALUES ('2', '16', '1', '2013-07-14 10:39:29', '2013-07-14 10:39:29');
INSERT INTO `borrow_history` VALUES ('3', '16', '1', '2013-07-14 10:39:29', '2013-07-14 10:39:29');
INSERT INTO `borrow_history` VALUES ('4', '16', '1', '2013-07-14 10:41:34', '2013-07-14 10:41:34');
INSERT INTO `borrow_history` VALUES ('5', '16', '1', '2013-07-14 10:42:17', '2013-07-14 10:41:34');
INSERT INTO `borrow_history` VALUES ('6', '16', '1', '2013-07-14 10:43:57', '2013-07-14 10:44:03');
INSERT INTO `borrow_history` VALUES ('7', '16', '1', '2013-07-14 10:44:19', '2013-07-14 10:44:30');
INSERT INTO `borrow_history` VALUES ('8', '16', '1', '2013-07-14 10:44:59', '2013-07-14 10:47:43');
INSERT INTO `borrow_history` VALUES ('9', '20', '1', '2013-07-14 10:45:33', '2013-07-14 20:11:37');
INSERT INTO `borrow_history` VALUES ('10', '40', '1', '2013-07-14 10:47:10', '2013-07-14 10:47:25');
INSERT INTO `borrow_history` VALUES ('11', '16', '1', '2013-07-14 15:33:38', '2013-07-14 15:33:55');
INSERT INTO `borrow_history` VALUES ('12', '16', '1', '2013-07-14 15:39:39', '2013-07-14 15:41:29');
INSERT INTO `borrow_history` VALUES ('13', '16', '1', '2013-07-14 15:43:56', '2013-07-14 15:44:44');
INSERT INTO `borrow_history` VALUES ('14', '16', '1', '2013-07-14 15:45:56', '2013-07-14 15:48:21');
INSERT INTO `borrow_history` VALUES ('15', '16', '1', '2013-07-14 15:51:54', '2013-07-14 15:52:56');
INSERT INTO `borrow_history` VALUES ('16', '16', '1', '2013-07-14 15:54:00', '2013-07-14 15:54:03');
INSERT INTO `borrow_history` VALUES ('17', '16', '1', '2013-07-14 15:54:54', '2013-07-14 15:54:58');
INSERT INTO `borrow_history` VALUES ('18', '16', '1', '2013-07-14 15:57:14', '2013-07-14 15:57:21');
INSERT INTO `borrow_history` VALUES ('19', '16', '1', '2013-07-14 15:57:38', '2013-07-14 15:57:40');
INSERT INTO `borrow_history` VALUES ('20', '16', '1', '2013-07-14 16:02:55', '2013-07-14 16:02:58');
INSERT INTO `borrow_history` VALUES ('21', '16', '1', '2013-07-14 16:04:52', '2013-07-14 16:04:56');
INSERT INTO `borrow_history` VALUES ('22', '40', '1', '2013-07-14 16:05:03', '2013-07-14 20:11:43');
INSERT INTO `borrow_history` VALUES ('23', '16', '1', '2013-07-14 16:05:09', '2013-07-14 16:05:28');
INSERT INTO `borrow_history` VALUES ('24', '16', '1', '2013-07-14 16:05:30', '2013-07-14 20:11:30');
INSERT INTO `borrow_history` VALUES ('25', '16', '1', '2013-07-14 20:12:51', '2013-07-14 20:13:02');
INSERT INTO `borrow_history` VALUES ('26', '16', '1', '2013-07-14 20:13:17', '2013-07-14 20:48:39');
INSERT INTO `borrow_history` VALUES ('27', '16', '1', '2013-07-14 20:48:42', '2013-07-14 20:51:40');
INSERT INTO `borrow_history` VALUES ('28', '40', '1', '2013-07-14 20:49:38', '2013-07-14 20:50:35');
INSERT INTO `borrow_history` VALUES ('29', '40', '1', '2013-07-14 20:50:40', '2013-07-14 21:06:12');
INSERT INTO `borrow_history` VALUES ('30', '16', '1', '2013-07-14 20:51:43', '2013-07-14 21:13:35');
INSERT INTO `borrow_history` VALUES ('33', '16', '1', '2013-07-14 21:13:38', '2013-07-14 21:54:01');
INSERT INTO `borrow_history` VALUES ('34', '16', '1', '2013-07-14 21:54:03', '2013-07-14 21:57:48');
INSERT INTO `borrow_history` VALUES ('35', '16', '1', '2013-07-14 21:57:51', '2013-07-14 21:59:25');
INSERT INTO `borrow_history` VALUES ('36', '16', '1', '2013-07-14 21:59:27', '2013-07-14 22:01:21');
INSERT INTO `borrow_history` VALUES ('37', '16', '1', '2013-07-14 22:01:30', '2013-07-14 22:05:15');
INSERT INTO `borrow_history` VALUES ('38', '16', '1', '2013-07-14 22:05:19', '2013-07-14 22:05:56');
INSERT INTO `borrow_history` VALUES ('39', '16', '1', '2013-07-14 22:05:59', '2013-07-14 22:06:29');
INSERT INTO `borrow_history` VALUES ('40', '16', '1', '2013-07-14 22:06:30', '2013-07-14 22:07:06');
INSERT INTO `borrow_history` VALUES ('41', '16', '1', '2013-07-14 22:07:08', '2013-07-14 22:07:41');
INSERT INTO `borrow_history` VALUES ('42', '16', '1', '2013-07-14 22:07:43', '2013-07-14 22:08:34');
INSERT INTO `borrow_history` VALUES ('43', '16', '1', '2013-07-14 22:08:48', '2013-07-14 22:10:08');
INSERT INTO `borrow_history` VALUES ('44', '16', '1', '2013-07-14 22:10:10', '2013-07-14 22:11:04');
INSERT INTO `borrow_history` VALUES ('45', '16', '1', '2013-07-14 22:11:06', '2013-07-14 22:12:41');
INSERT INTO `borrow_history` VALUES ('46', '16', '1', '2013-07-14 22:12:50', '2013-07-14 22:14:20');

-- ----------------------------
-- Table structure for `langage`
-- ----------------------------
DROP TABLE IF EXISTS `langage`;
CREATE TABLE `langage` (
  `id` int(11) NOT NULL,
  `langage` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of langage
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(10) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `correctName` varchar(10) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime DEFAULT NULL,
  `deleteTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'session', null, null, '0', '22', null, null, '0000-00-00 00:00:00', null, null);
