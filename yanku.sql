/*
Navicat MySQL Data Transfer

Source Server         : 阿里云香港
Source Server Version : 50631
Source Host           : 47.52.21.253:3306
Source Database       : yanku

Target Server Type    : MYSQL
Target Server Version : 50631
File Encoding         : 65001

Date: 2017-05-03 15:31:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yk_admin
-- ----------------------------
DROP TABLE IF EXISTS `yk_admin`;
CREATE TABLE `yk_admin` (
  `admin_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(50) NOT NULL COMMENT '管理名称',
  `password` char(32) NOT NULL COMMENT '管理密码',
  `mobile` varchar(50) NOT NULL COMMENT '手机号',
  `last_logtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_logip` varchar(50) DEFAULT NULL COMMENT '最后登录ip',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `user_group` varchar(10) DEFAULT NULL COMMENT '用户所属用户组',
  `status` int(2) DEFAULT '1' COMMENT '用户状态 1正常 2禁用',
  `errorcount` int(2) DEFAULT '0' COMMENT '错误次数',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='后台管理员账号表';

-- ----------------------------
-- Records of yk_admin
-- ----------------------------
INSERT INTO `yk_admin` VALUES ('23', 'admin', 'admin', '13544448564', '1492482855', '127.0.0.1', '1492482855', null, '1', '0');

-- ----------------------------
-- Table structure for yk_adminlog
-- ----------------------------
DROP TABLE IF EXISTS `yk_adminlog`;
CREATE TABLE `yk_adminlog` (
  `admin_logid` int(20) NOT NULL AUTO_INCREMENT,
  `admin_id` varchar(10) DEFAULT NULL COMMENT '管理员id',
  `action_name` varchar(999) DEFAULT NULL COMMENT '操作记录',
  `createtime` int(10) DEFAULT '0' COMMENT '操作时间',
  `action_ip` varchar(999) DEFAULT NULL COMMENT '操作ip',
  PRIMARY KEY (`admin_logid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台操作日志';

-- ----------------------------
-- Records of yk_adminlog
-- ----------------------------

-- ----------------------------
-- Table structure for yk_attention
-- ----------------------------
DROP TABLE IF EXISTS `yk_attention`;
CREATE TABLE `yk_attention` (
  `attention_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '操作用户id',
  `attu_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '关注主播id',
  `addtime` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attention_id`),
  UNIQUE KEY `uid_attuid` (`user_id`,`attu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='关注表';

-- ----------------------------
-- Records of yk_attention
-- ----------------------------
INSERT INTO `yk_attention` VALUES ('2', '2', '1', '1492494175');
INSERT INTO `yk_attention` VALUES ('3', '2', '5', '1492494175');
INSERT INTO `yk_attention` VALUES ('4', '1', '2', '1492494175');
INSERT INTO `yk_attention` VALUES ('5', '1', '5', '1492494175');
INSERT INTO `yk_attention` VALUES ('6', '3', '4', '1492494175');
INSERT INTO `yk_attention` VALUES ('7', '3', '5', '1492494175');
INSERT INTO `yk_attention` VALUES ('8', '4', '2', '1492494175');
INSERT INTO `yk_attention` VALUES ('9', '3', '1', '1492494175');
INSERT INTO `yk_attention` VALUES ('10', '137', '2', '1492494175');
INSERT INTO `yk_attention` VALUES ('11', '144', '2', '1492494175');

-- ----------------------------
-- Table structure for yk_banner
-- ----------------------------
DROP TABLE IF EXISTS `yk_banner`;
CREATE TABLE `yk_banner` (
  `banner_type` int(11) NOT NULL DEFAULT '0' COMMENT '0 通告/ 1演库',
  `type_id` int(11) NOT NULL DEFAULT '0' COMMENT '类型',
  `banner_id` int(11) NOT NULL DEFAULT '0' COMMENT 'banner对应schedule_id or user_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yk_banner
-- ----------------------------
INSERT INTO `yk_banner` VALUES ('0', '0', '2');
INSERT INTO `yk_banner` VALUES ('0', '3', '4');
INSERT INTO `yk_banner` VALUES ('0', '3', '5');
INSERT INTO `yk_banner` VALUES ('0', '5', '7');
INSERT INTO `yk_banner` VALUES ('0', '1', '8');

-- ----------------------------
-- Table structure for yk_city
-- ----------------------------
DROP TABLE IF EXISTS `yk_city`;
CREATE TABLE `yk_city` (
  `city_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `city_name` varchar(50) NOT NULL COMMENT '城市名称',
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='城市表';

-- ----------------------------
-- Records of yk_city
-- ----------------------------
INSERT INTO `yk_city` VALUES ('1', '上海');
INSERT INTO `yk_city` VALUES ('26', '杭州');
INSERT INTO `yk_city` VALUES ('27', '济南');
INSERT INTO `yk_city` VALUES ('28', '西藏');
INSERT INTO `yk_city` VALUES ('29', '吕州');
INSERT INTO `yk_city` VALUES ('30', '广州');
INSERT INTO `yk_city` VALUES ('31', '郑州');
INSERT INTO `yk_city` VALUES ('32', '深圳');
INSERT INTO `yk_city` VALUES ('33', '石家庄');
INSERT INTO `yk_city` VALUES ('34', '青岛');
INSERT INTO `yk_city` VALUES ('35', '合肥');
INSERT INTO `yk_city` VALUES ('36', '南京');
INSERT INTO `yk_city` VALUES ('37', '柏林');
INSERT INTO `yk_city` VALUES ('38', '林城');
INSERT INTO `yk_city` VALUES ('39', '洛杉矶');
INSERT INTO `yk_city` VALUES ('40', '巴黎');
INSERT INTO `yk_city` VALUES ('41', '北京');

-- ----------------------------
-- Table structure for yk_deal
-- ----------------------------
DROP TABLE IF EXISTS `yk_deal`;
CREATE TABLE `yk_deal` (
  `pay_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '支付id',
  `from_user_id` int(11) unsigned NOT NULL COMMENT '支付用户id',
  `to_user_id` int(11) unsigned NOT NULL COMMENT '接受用户id',
  `gift_type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '支付金额',
  `number` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '交易数量',
  `pay_time` int(10) unsigned NOT NULL COMMENT '支付时间',
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='消费表';

-- ----------------------------
-- Records of yk_deal
-- ----------------------------
INSERT INTO `yk_deal` VALUES ('1', '1', '2', '2', '10', '1492998579');
INSERT INTO `yk_deal` VALUES ('2', '1', '2', '1', '10', '1492998579');
INSERT INTO `yk_deal` VALUES ('3', '1', '2', '3', '5', '1492998579');
INSERT INTO `yk_deal` VALUES ('4', '3', '2', '18', '1', '1492998579');
INSERT INTO `yk_deal` VALUES ('5', '4', '2', '20', '1', '1492998579');
INSERT INTO `yk_deal` VALUES ('6', '5', '2', '1', '6', '1492998579');
INSERT INTO `yk_deal` VALUES ('7', '2', '3', '1', '8', '1493021818');
INSERT INTO `yk_deal` VALUES ('8', '3', '2', '20', '1', '1493022680');
INSERT INTO `yk_deal` VALUES ('9', '3', '2', '1', '1', '1493022680');

-- ----------------------------
-- Table structure for yk_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `yk_dynamic`;
CREATE TABLE `yk_dynamic` (
  `dynamic_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '动态id',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `content` varchar(200) NOT NULL DEFAULT '' COMMENT '动态内容',
  `dynamic_createtime` int(11) DEFAULT '0' COMMENT '创建时间',
  `localtion` varchar(50) DEFAULT '' COMMENT '位置',
  `view` int(11) NOT NULL DEFAULT '0' COMMENT '动态阅读量',
  `favorite` int(11) NOT NULL DEFAULT '0' COMMENT '动态点赞数量',
  `display` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 显示 / 1 不显示',
  PRIMARY KEY (`dynamic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='动态表';

-- ----------------------------
-- Records of yk_dynamic
-- ----------------------------
INSERT INTO `yk_dynamic` VALUES ('1', '2', '来啊快活啊反正有大把时光', '1493016479', '0', '0', '0', '0');
INSERT INTO `yk_dynamic` VALUES ('2', '2', '快活啊来啊反正有大把时光', '1493016967', '0', '0', '0', '0');
INSERT INTO `yk_dynamic` VALUES ('3', '2', '多久啊来决定开始啦就打算离开就打死了就打开老师看拉到就卡死了道具卡死了基督教ask理解的卡死了就对了', '1493096356', '0', '0', '0', '0');
INSERT INTO `yk_dynamic` VALUES ('4', '2', '好的那就撒开难道就撒开电脑阿松', '1493096356', '0', '0', '0', '0');
INSERT INTO `yk_dynamic` VALUES ('5', '2', '阿拉山口多久啊是开了多久撒开绿灯', '1493096356', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for yk_dynamic_comments
-- ----------------------------
DROP TABLE IF EXISTS `yk_dynamic_comments`;
CREATE TABLE `yk_dynamic_comments` (
  `comments_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `dynamic_id` int(10) unsigned NOT NULL COMMENT '动态id',
  `from_user_id` int(11) unsigned NOT NULL COMMENT '用户id',
  `to_user_id` int(11) unsigned NOT NULL COMMENT '用户id',
  `time` int(11) DEFAULT NULL COMMENT '创建时间',
  `dynamic_content` varchar(144) NOT NULL COMMENT '回复内容',
  PRIMARY KEY (`comments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='动态评论表';

-- ----------------------------
-- Records of yk_dynamic_comments
-- ----------------------------

-- ----------------------------
-- Table structure for yk_dynamic_img
-- ----------------------------
DROP TABLE IF EXISTS `yk_dynamic_img`;
CREATE TABLE `yk_dynamic_img` (
  `dynamic_id` int(10) unsigned NOT NULL COMMENT '动态id',
  `dynamic_img` varchar(100) NOT NULL DEFAULT '' COMMENT '动态配图'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='动态配图表';

-- ----------------------------
-- Records of yk_dynamic_img
-- ----------------------------
INSERT INTO `yk_dynamic_img` VALUES ('2', 'http://192.168.1.121/yksd/Upload/Dynamic/1154.JPG');
INSERT INTO `yk_dynamic_img` VALUES ('1', 'http://192.168.1.121/yksd/Upload/Dynamic/1154.JPG');
INSERT INTO `yk_dynamic_img` VALUES ('1', 'http://192.168.1.121/yksd/Upload/Dynamic/1154.JPG');
INSERT INTO `yk_dynamic_img` VALUES ('1', 'http://192.168.1.121/yksd/Upload/Dynamic/1154.JPG');

-- ----------------------------
-- Table structure for yk_gift
-- ----------------------------
DROP TABLE IF EXISTS `yk_gift`;
CREATE TABLE `yk_gift` (
  `gift_type` tinyint(4) NOT NULL,
  `price` mediumint(6) NOT NULL,
  `batch` tinyint(4) NOT NULL,
  PRIMARY KEY (`gift_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yk_gift
-- ----------------------------
INSERT INTO `yk_gift` VALUES ('0', '10', '1');
INSERT INTO `yk_gift` VALUES ('1', '33', '1');
INSERT INTO `yk_gift` VALUES ('2', '66', '1');
INSERT INTO `yk_gift` VALUES ('3', '100', '1');
INSERT INTO `yk_gift` VALUES ('4', '300', '1');
INSERT INTO `yk_gift` VALUES ('5', '300', '1');
INSERT INTO `yk_gift` VALUES ('6', '520', '1');
INSERT INTO `yk_gift` VALUES ('7', '520', '1');
INSERT INTO `yk_gift` VALUES ('8', '520', '1');
INSERT INTO `yk_gift` VALUES ('9', '880', '0');
INSERT INTO `yk_gift` VALUES ('10', '1000', '0');
INSERT INTO `yk_gift` VALUES ('11', '1314', '0');
INSERT INTO `yk_gift` VALUES ('12', '1314', '0');
INSERT INTO `yk_gift` VALUES ('13', '28800', '0');
INSERT INTO `yk_gift` VALUES ('14', '28800', '0');
INSERT INTO `yk_gift` VALUES ('15', '28880', '0');
INSERT INTO `yk_gift` VALUES ('16', '50000', '0');
INSERT INTO `yk_gift` VALUES ('17', '88800', '0');
INSERT INTO `yk_gift` VALUES ('18', '88800', '0');
INSERT INTO `yk_gift` VALUES ('19', '100000', '0');
INSERT INTO `yk_gift` VALUES ('20', '188888', '0');

-- ----------------------------
-- Table structure for yk_message
-- ----------------------------
DROP TABLE IF EXISTS `yk_message`;
CREATE TABLE `yk_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `mess_id` int(11) NOT NULL,
  `from_user_id` int(11) unsigned NOT NULL COMMENT '?????û?id',
  `content1` varchar(255) DEFAULT NULL COMMENT '??????????',
  `to_user_id` int(11) unsigned NOT NULL COMMENT '?????û?id',
  `content2` varchar(255) DEFAULT NULL COMMENT '??????????',
  `time` int(11) DEFAULT NULL COMMENT 'ʱ??',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='??????Ϣ';

-- ----------------------------
-- Records of yk_message
-- ----------------------------
INSERT INTO `yk_message` VALUES ('6', '1', '1', '你好啊。', '2', '你好', null);
INSERT INTO `yk_message` VALUES ('7', '1', '1', '有时间吗？', '2', '干嘛呢？', null);
INSERT INTO `yk_message` VALUES ('8', '1', '1', '一起吃个饭', '2', '可以啊', null);
INSERT INTO `yk_message` VALUES ('9', '2', '1', '今天加班晚点回去。', '3', '苦逼程序员的加班生活开始，', null);
INSERT INTO `yk_message` VALUES ('10', '2', '1', '你闭嘴，不许侮辱我的信仰。', '3', '你牛逼，门以锁。晚安', null);

-- ----------------------------
-- Table structure for yk_report
-- ----------------------------
DROP TABLE IF EXISTS `yk_report`;
CREATE TABLE `yk_report` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `roomid` int(11) NOT NULL,
  `reason` varchar(30) NOT NULL,
  `explain` varchar(255) DEFAULT '',
  `img1` varchar(50) DEFAULT '',
  `img2` varchar(50) DEFAULT '',
  `img3` varchar(50) DEFAULT '',
  `view` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 未读\r\n1 已读',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yk_report
-- ----------------------------

-- ----------------------------
-- Table structure for yk_room
-- ----------------------------
DROP TABLE IF EXISTS `yk_room`;
CREATE TABLE `yk_room` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '操作用户id',
  `room_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '房间id',
  `room_name` varchar(20) NOT NULL DEFAULT '0' COMMENT '房间id',
  `room_img` varchar(100) NOT NULL DEFAULT '' COMMENT '房间图像url',
  `room_status` int(11) NOT NULL DEFAULT '0' COMMENT '开播时间戳',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='主播房间表';

-- ----------------------------
-- Records of yk_room
-- ----------------------------
INSERT INTO `yk_room` VALUES ('2', '1', '555', '思思的直播间', '', '0');
INSERT INTO `yk_room` VALUES ('3', '3', '666', '迪迪的直播间', '', '0');
INSERT INTO `yk_room` VALUES ('4', '6', '777', 'cc爱的直播间', '', '0');

-- ----------------------------
-- Table structure for yk_schedule
-- ----------------------------
DROP TABLE IF EXISTS `yk_schedule`;
CREATE TABLE `yk_schedule` (
  `schedule_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发起用户id',
  `schedule_title` varchar(30) NOT NULL DEFAULT '0' COMMENT '活动标题',
  `schedule_type` int(20) unsigned NOT NULL DEFAULT '0' COMMENT '活动类型',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `acttime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '活动时间',
  `valcode` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码',
  `city` int(11) NOT NULL DEFAULT '0',
  `address` varchar(50) NOT NULL DEFAULT '' COMMENT '活动地址',
  `sex` int(11) NOT NULL DEFAULT '0' COMMENT '0不限 / 1男 / 2女',
  `schedule_content` text NOT NULL COMMENT '通告内容',
  `schedule_img` varchar(100) DEFAULT '',
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='通告表';

-- ----------------------------
-- Records of yk_schedule
-- ----------------------------
INSERT INTO `yk_schedule` VALUES ('2', '2', '上海地区通知聚会（旋风少女）导演', '0', '1492491674', '1492491674', '4567', '0', '北京工人体育场', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('3', '5', '网剧通告集合，超级网剧（河神）台湾', '0', '1492491675', '1492491674', '4555', '30', '广州越秀山体育场', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('4', '2', '秀密show', '3', '1492491674', '1492491674', '5862', '0', '暂定', '2', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('5', '5', '蜜桃show', '3', '1492491674', '1492491674', '7958', '0', '暂定', '2', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('6', '2', '人民的权益群众演员招募', '2', '1492491674', '1492491674', '7980', '38', '汉东省', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('7', '5', '《乘风破浪》群众演员招募啦', '2', '1492491674', '1492491674', '8888', '0', '暂定', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('8', '2', 'Victoria‘s Secret show', '1', '1492491674', '1492491674', '6666', '0', '伦敦', '2', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('9', '5', 'yeezy season6', '1', '1492491674', '1492491674', '3500', '39', '洛杉矶', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('10', '2', 'Paris Fashion Week', '1', '1492491674', '1492491674', '9999', '40', '巴黎', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('11', '5', '《我是演员》《巴拉巴拉小魔仙》导演招聘群众演员啦', '2', '1492491674', '1492491674', '4444', '0', '暂定', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('12', '2', '生命万岁主持人招聘', '3', '1492493890', '1492493890', '3548', '0', '北京大学演播厅', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('13', '5', '世界第三第四', '3', '1492493890', '1492493890', '8787', '0', '速度', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('14', '2', '委屈额我去', '0', '1492503894', '1492503893', '1111', '27', '济南', '2', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('15', '5', '犯得上犯得上', '0', '1492503893', '1492503893', '6664', '0', '试试', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('16', '2', '大啊呜', '0', '1492503898', '1492503893', '7644', '38', '林城', '1', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('17', '5', '嘎嘎嘎我问问', '0', '1492503899', '1492503893', '4848', '37', '柏林', '1', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('18', '2', '大大撒大啊撒', '0', '1492505856', '1492505856', '5856', '27', '济南', '2', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('19', '5', '撒旦撒旦', '3', '1492505898', '1492505898', '5898', '31', '郑州', '1', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('20', '2', '卡里到处', '1', '1492505898', '1492505898', '9885', '29', '吕州', '1', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('21', '5', '哦可伶可俐', '1', '1492505898', '1492505898', '1492', '1', '上海', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('23', '2', '可怜见立刻就哦怕', '3', '1492506075', '1492506075', '6075', '1', '上海', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('24', '2', '就开个会非常', '2', '1492505898', '1492505898', '3893', '0', '北京', '2', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('25', '5', '淘日本被告人', '2', '1492505898', '1492505898', '2505', '30', '广州', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('26', '5', '了盛大打算的事实是事实', '2', '1492506545', '1492506545', '6545', '0', '北京', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('27', '5', '啥了多是多久啊老大说考虑', '4', '1492506545', '1492506545', '7895', '0', '北京', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('28', '2', '阿斯顿撒打算', '4', '1492506545', '1492506545', '6545', '32', '深圳', '1', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('29', '2', '哦对撒打算酷酷酷酷酷酷', '4', '1492506545', '1492506545', '4448', '0', '北京', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('30', '2', '多萨里大嫂哦阿斯顿', '4', '1492506783', '1492506783', '6783', '0', '北京', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('31', '2', '桑德拉凯迪拉克的', '4', '1492506783', '1492506783', '3838', '0', '北京', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('32', '5', '开赛东京激动死哦啊啊手机都叫阿思哦', '4', '1492506783', '1492506783', '1692', '1', '上海', '2', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('33', '5', '对口啊平时看懂啊视频看大盘', '5', '1492506783', '1492506783', '6793', '1', '上海', '2', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('34', '5', '快乐撒点就卡死了都阿三离开家离开', '5', '1492506783', '1492506783', '2590', '28', '西藏', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('35', '5', '是道具卡里的卡拉大家坷拉', '5', '1492506783', '1492506783', '9250', '33', '石家庄', '2', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('36', '2', '啊大苏打实打实的撒旦撒旦撒旦撒那里看了看就看了', '5', '1492507636', '1492507636', '7636', '26', '杭州', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('37', '2', '大都哦看大叔控大宋', '5', '1492507636', '1492507636', '2507', '34', '栈桥', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('38', '2', '的撒可怜见大理石流扣扣', '5', '1492507636', '1492507636', '9744', '35', '合肥', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('39', '5', '测试数据', '3', '1492564296', '1492564296', '7777', '36', '南京', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('40', '5', '测试数据', '1', '1492571148', '1492571148', '4446', '34', '青岛', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('41', '2', '撒凉快凉快的凯萨琳你看啦', '0', '1492739185', '1492739185', '1744', '0', '北京', '2', '啊实打实大苏打似的撒广泛的更为讽刺的是', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('42', '2', '上海地区通知聚会（旋风少女）导演', '0', '1492491674', '1492491674', '4567', '0', '北京工人体育场', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('43', '5', '网剧通告集合，超级网剧（河神）台湾', '0', '1492491675', '1492491674', '4555', '30', '广州越秀山体育场', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('44', '2', '委屈额我去', '0', '1492503894', '1492503893', '1111', '27', '济南', '2', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('45', '5', '犯得上犯得上', '0', '1492503893', '1492503893', '6664', '0', '试试', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('46', '2', '大啊呜', '0', '1492503898', '1492503893', '7644', '38', '林城', '1', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('47', '5', '嘎嘎嘎我问问', '0', '1492503899', '1492503893', '4848', '37', '柏林', '1', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('48', '2', '大大撒大啊撒', '0', '1492505856', '1492505856', '5856', '27', '济南', '2', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('49', '2', '撒凉快凉快的凯萨琳你看啦', '0', '1492739185', '1492739185', '1744', '0', '北京', '2', '啊实打实大苏打似的撒广泛的更为讽刺的是', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('50', '2', '上海地区通知聚会（旋风少女）导演', '0', '1492491674', '1492491674', '4567', '0', '北京工人体育场', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('51', '5', '网剧通告集合，超级网剧（河神）台湾', '0', '1492491675', '1492491674', '4555', '30', '广州越秀山体育场', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('52', '2', '委屈额我去', '0', '1492503894', '1492503893', '1111', '27', '济南', '2', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('53', '5', '犯得上犯得上', '0', '1492503893', '1492503893', '6664', '0', '试试', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('54', '2', '大啊呜', '0', '1492503898', '1492503893', '7644', '38', '林城', '1', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('55', '5', '嘎嘎嘎我问问', '0', '1492503899', '1492503893', '4848', '37', '柏林', '1', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('56', '2', '大大撒大啊撒', '0', '1492505856', '1492505856', '5856', '27', '济南', '2', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('57', '2', '撒凉快凉快的凯萨琳你看啦', '0', '1492739185', '1492739185', '1744', '0', '北京', '2', '啊实打实大苏打似的撒广泛的更为讽刺的是', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('58', '2', '上海地区通知聚会（旋风少女）导演', '0', '1492491674', '1492491674', '4567', '0', '北京工人体育场', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('59', '5', '网剧通告集合，超级网剧（河神）台湾', '0', '1492491675', '1492491674', '4555', '30', '广州越秀山体育场', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('60', '2', '委屈额我去', '0', '1492503894', '1492503893', '1111', '27', '济南', '2', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('61', '5', '犯得上犯得上', '0', '1492503893', '1492503893', '6664', '0', '试试', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('62', '2', '大啊呜', '0', '1492503898', '1492503893', '7644', '38', '林城', '1', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('63', '5', '嘎嘎嘎我问问', '0', '1492503899', '1492503893', '4848', '37', '柏林', '1', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('64', '2', '大大撒大啊撒', '0', '1492505856', '1492505856', '5856', '27', '济南', '2', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('65', '2', '撒凉快凉快的凯萨琳你看啦', '0', '1492739185', '1492739185', '1744', '0', '北京', '2', '啊实打实大苏打似的撒广泛的更为讽刺的是', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('66', '2', '上海地区通知聚会（旋风少女）导演', '0', '1492491674', '1492491674', '4567', '0', '北京工人体育场', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('67', '5', '网剧通告集合，超级网剧（河神）台湾', '0', '1492491675', '1492491674', '4555', '30', '广州越秀山体育场', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('68', '2', '委屈额我去', '0', '1492503894', '1492503893', '1111', '27', '济南', '2', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('69', '5', '犯得上犯得上', '0', '1492503893', '1492503893', '6664', '0', '试试', '0', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('70', '2', '大啊呜', '0', '1492503898', '1492503893', '7644', '38', '林城', '1', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('71', '5', '嘎嘎嘎我问问', '0', '1492503899', '1492503893', '4848', '37', '柏林', '1', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('72', '2', '大大撒大啊撒', '0', '1492505856', '1492505856', '5856', '27', '济南', '2', ' ', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');
INSERT INTO `yk_schedule` VALUES ('73', '2', '撒凉快凉快的凯萨琳你看啦', '0', '1492739185', '1492739185', '1744', '0', '北京', '2', '啊实打实大苏打似的撒广泛的更为讽刺的是', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG');

-- ----------------------------
-- Table structure for yk_user
-- ----------------------------
DROP TABLE IF EXISTS `yk_user`;
CREATE TABLE `yk_user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_img` varchar(200) DEFAULT NULL COMMENT '头像url',
  `nickname` varchar(100) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` char(32) NOT NULL COMMENT '登录密码',
  `mobile` varchar(11) NOT NULL COMMENT '手机号',
  `realname` varchar(10) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `user_address` varchar(50) NOT NULL DEFAULT '' COMMENT '身份证地址',
  `user_number` varchar(18) NOT NULL DEFAULT '' COMMENT '身份证号',
  `user_positive` varchar(50) NOT NULL DEFAULT '' COMMENT '身份证正面url',
  `user_back` varchar(50) NOT NULL DEFAULT '' COMMENT '身份证背面url',
  `user_withpeople` varchar(50) NOT NULL DEFAULT '' COMMENT '手持身份证url',
  `user_vedio` varchar(255) NOT NULL DEFAULT '0' COMMENT '视频验证',
  `city` varchar(50) DEFAULT '0' COMMENT '地址',
  `sex` int(11) NOT NULL DEFAULT '0' COMMENT '0保密 / 1男 / 2女',
  `user_type` int(20) NOT NULL DEFAULT '0' COMMENT '0游客 / 1演员 / 2导演',
  `school` varchar(255) DEFAULT '' COMMENT '学校',
  `signature` varchar(255) DEFAULT '' COMMENT '个性签名',
  `height` varchar(10) DEFAULT '0' COMMENT '身高',
  `weight` varchar(10) DEFAULT '0' COMMENT '体重',
  `chest` tinyint(10) DEFAULT '0' COMMENT '胸围',
  `waistline` tinyint(10) DEFAULT '0' COMMENT '腰围',
  `buttocks` tinyint(10) DEFAULT '0' COMMENT '臀围 单位cm',
  `acquirement` varchar(255) DEFAULT '' COMMENT '才艺特长',
  `level` tinyint(4) NOT NULL DEFAULT '0' COMMENT '等级',
  `integral` int(12) NOT NULL DEFAULT '0' COMMENT '经验',
  `kubi` int(11) NOT NULL DEFAULT '0' COMMENT '酷币',
  `nameaudit` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 未实名\r\n1 审核中\r\n2 已实名',
  `lasttime` int(11) NOT NULL,
  `lastip` int(11) NOT NULL DEFAULT '0',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of yk_user
-- ----------------------------
INSERT INTO `yk_user` VALUES ('1', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ss', 'ss', '13777777777', '瓦萨', '北京', '454545454545454545', 'asss', 'ssss', 'sss', '0', '0', '2', '1', '清华大学 ', '没个性不签名', '180', '100', '33', '33', '33', '吹箫', '0', '0', '666', '0', '1492910457', '0', '0');
INSERT INTO `yk_user` VALUES ('2', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ww', 'ww', '13888888888', '山大', '北京', '666666666666666666', 'ds', 'sd', 'sd', '0', '0', '1', '2', '上海交大', '有个性也不签名', '200', '180', '44', '44', '44', '吹喇叭', '5', '0', '8888', '0', '1492910457', '0', '0');
INSERT INTO `yk_user` VALUES ('3', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '13999999999', '露娜', '广州', '888888888888888888', 'ss', 'ss', 'ss', '0', '30', '0', '1', '暨南大学', '我眼神中还流露着忧伤就很啊王子一样', '0', '0', '0', '0', '0', '吹箫', '0', '0', '0', '0', '1492910457', '0', '0');
INSERT INTO `yk_user` VALUES ('4', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'gg', 'gg', '15555555555', '波西', '北京', '555555625896548126', 'w', 'w', 'w', '0', '0', '0', '0', '北京大学', '没落的贵族', '0', '0', '0', '0', '0', '擦皮鞋', '0', '0', '4', '0', '1492910457', '0', '0');
INSERT INTO `yk_user` VALUES ('5', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'cc', 'cc', '18888888888', '西西', '杭州', '666666666666555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '浙江大学', '只怪蒋公剿匪不力', '0', '0', '0', '0', '0', '五', '0', '0', '4', '0', '1492910457', '0', '0');
INSERT INTO `yk_user` VALUES ('6', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '15666666666', 'cc', 'cc', '867845555555555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '杭州师范大学', null, '0', '0', '0', '0', '0', '宿舍', '0', '0', '0', '0', '1492910457', '0', '0');
INSERT INTO `yk_user` VALUES ('7', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ss', 'ss', '13777777777', '瓦萨', '北京', '454545454545454545', 'asss', 'ssss', 'sss', '0', '0', '2', '1', '清华大学 ', '没个性不签名', '180', '100', '33', '33', '33', '吹箫', '0', '0', '666', '0', '1492910457', '0', '0');
INSERT INTO `yk_user` VALUES ('8', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ww', 'ww', '13888888888', '山大', '北京', '666666666666666666', 'ds', 'sd', 'sd', '0', '0', '1', '2', '上海交大', '有个性也不签名', '200', '180', '44', '44', '44', '吹喇叭', '0', '0', '8888', '0', '1492910457', '0', '0');
INSERT INTO `yk_user` VALUES ('9', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '13999999999', '露娜', '广州', '888888888888888888', 'ss', 'ss', 'ss', '0', '30', '0', '1', '暨南大学', '我眼神中还流露着忧伤就很啊王子一样', '0', '0', '0', '0', '0', '吹箫', '0', '0', '0', '0', '1492910457', '0', '0');
INSERT INTO `yk_user` VALUES ('10', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'gg', 'gg', '15555555555', '波西', '北京', '555555625896548126', 'w', 'w', 'w', '0', '0', '0', '0', '北京大学', '没落的贵族', '0', '0', '0', '0', '0', '擦皮鞋', '0', '0', '4', '0', '1492910457', '0', '0');
INSERT INTO `yk_user` VALUES ('11', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'cc', 'cc', '18888888888', '西西', '杭州', '666666666666555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '浙江大学', '只怪蒋公剿匪不力', '0', '0', '0', '0', '0', '五', '0', '0', '4', '0', '1492910457', '0', '0');
INSERT INTO `yk_user` VALUES ('12', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '15666666666', 'cc', 'cc', '867845555555555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '杭州师范大学', '', '0', '0', '0', '0', '0', '宿舍', '0', '0', '0', '0', '1492910457', '0', '0');
INSERT INTO `yk_user` VALUES ('109', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ss', 'ss', '13777777777', '瓦萨', '北京', '454545454545454545', 'asss', 'ssss', 'sss', '0', '0', '2', '1', '清华大学 ', '没个性不签名', '180', '100', '33', '33', '33', '吹箫', '0', '0', '666', '0', '1492910457', '0', '0');
INSERT INTO `yk_user` VALUES ('110', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ww', 'ww', '13888888888', '山大', '北京', '666666666666666666', 'ds', 'sd', 'sd', '0', '0', '1', '2', '上海交大', '有个性也不签名', '200', '180', '44', '44', '44', '吹喇叭', '0', '0', '8888', '0', '1492910457', '0', '0');
INSERT INTO `yk_user` VALUES ('111', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '13999999999', '露娜', '广州', '888888888888888888', 'ss', 'ss', 'ss', '0', '30', '0', '1', '暨南大学', '我眼神中还流露着忧伤就很啊王子一样', '0', '0', '0', '0', '0', '吹箫', '0', '0', '0', '0', '1492910457', '0', '0');
INSERT INTO `yk_user` VALUES ('112', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'gg', 'gg', '15555555555', '波西', '北京', '555555625896548126', 'w', 'w', 'w', '0', '0', '0', '0', '北京大学', '没落的贵族', '0', '0', '0', '0', '0', '', '0', '0', '4', '0', '1492910457', '0', '0');
INSERT INTO `yk_user` VALUES ('113', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'cc', 'cc', '18888888888', '西西', '杭州', '666666666666555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '浙江大学', '只怪蒋公剿匪不力', '0', '0', '0', '0', '0', '五', '0', '0', '4', '0', '1492910457', '0', '0');
INSERT INTO `yk_user` VALUES ('114', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '15666666666', 'cc', 'cc', '867845555555555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '杭州师范大学', '', '0', '0', '0', '0', '0', '宿舍', '0', '0', '0', '0', '1492910457', '0', '0');
INSERT INTO `yk_user` VALUES ('115', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ss', 'ss', '13777777777', '瓦萨', '北京', '454545454545454545', 'asss', 'ssss', 'sss', '0', '0', '2', '1', '清华大学 ', '没个性不签名', '180', '100', '33', '33', '33', '吹箫', '0', '0', '666', '0', '1492910457', '0', '0');
INSERT INTO `yk_user` VALUES ('116', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ww', 'ww', '13888888888', '山大', '北京', '666666666666666666', 'ds', 'sd', 'sd', '0', '0', '1', '2', '上海交大', '有个性也不签名', '200', '180', '44', '44', '44', '吹喇叭', '0', '0', '8888', '0', '1492910457', '0', '0');
INSERT INTO `yk_user` VALUES ('117', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '13999999999', '露娜', '广州', '888888888888888888', 'ss', 'ss', 'ss', '0', '30', '0', '1', '暨南大学', '我眼神中还流露着忧伤就很啊王子一样', '0', '0', '0', '0', '0', '吹箫', '0', '0', '0', '0', '1492910457', '0', '0');
INSERT INTO `yk_user` VALUES ('118', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'gg', 'gg', '15555555555', '波西', '北京', '555555625896548126', 'w', 'w', 'w', '0', '0', '0', '0', '北京大学', '没落的贵族', '0', '0', '0', '0', '0', '', '0', '0', '4', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('119', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'cc', 'cc', '18888888888', '西西', '杭州', '666666666666555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '浙江大学', '只怪蒋公剿匪不力', '0', '0', '0', '0', '0', '五', '0', '0', '4', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('120', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '15666666666', 'cc', 'cc', '867845555555555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '杭州师范大学', '', '0', '0', '0', '0', '0', '宿舍', '0', '0', '0', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('121', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ss', 'ss', '13777777777', '瓦萨', '北京', '454545454545454545', 'asss', 'ssss', 'sss', '0', '0', '2', '1', '清华大学 ', '没个性不签名', '180', '100', '33', '33', '33', '吹箫', '0', '0', '666', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('122', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ww', 'ww', '13888888888', '山大', '北京', '666666666666666666', 'ds', 'sd', 'sd', '0', '0', '1', '2', '上海交大', '有个性也不签名', '200', '180', '44', '44', '44', '吹喇叭', '0', '0', '8888', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('123', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '13999999999', '露娜', '广州', '888888888888888888', 'ss', 'ss', 'ss', '0', '30', '0', '1', '暨南大学', '我眼神中还流露着忧伤就很啊王子一样', '0', '0', '0', '0', '0', '吹箫', '0', '0', '0', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('124', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'gg', 'gg', '15555555555', '波西', '北京', '555555625896548126', 'w', 'w', 'w', '0', '0', '0', '0', '北京大学', '没落的贵族', '0', '0', '0', '0', '0', '', '0', '0', '4', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('125', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'cc', 'cc', '18888888888', '西西', '杭州', '666666666666555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '浙江大学', '只怪蒋公剿匪不力', '0', '0', '0', '0', '0', '五', '0', '0', '4', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('126', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '15666666666', 'cc', 'cc', '867845555555555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '杭州师范大学', '', '0', '0', '0', '0', '0', '宿舍', '0', '0', '0', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('127', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ss', 'ss', '13777777777', '瓦萨', '北京', '454545454545454545', 'asss', 'ssss', 'sss', '0', '0', '2', '1', '清华大学 ', '没个性不签名', '180', '100', '33', '33', '33', '吹箫', '0', '0', '666', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('128', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ww', 'ww', '13888888888', '山大', '北京', '666666666666666666', 'ds', 'sd', 'sd', '0', '0', '1', '2', '上海交大', '有个性也不签名', '200', '180', '44', '44', '44', '吹喇叭', '0', '0', '8888', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('129', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '13999999999', '露娜', '广州', '888888888888888888', 'ss', 'ss', 'ss', '0', '30', '0', '1', '暨南大学', '我眼神中还流露着忧伤就很啊王子一样', '0', '0', '0', '0', '0', '吹箫', '0', '0', '0', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('130', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'gg', 'gg', '15555555555', '波西', '北京', '555555625896548126', 'w', 'w', 'w', '0', '0', '0', '0', '北京大学', '没落的贵族', '0', '0', '0', '0', '0', '', '0', '0', '4', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('131', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'cc', 'cc', '18888888888', '西西', '杭州', '666666666666555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '浙江大学', '只怪蒋公剿匪不力', '0', '0', '0', '0', '0', '五', '0', '0', '4', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('132', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '15666666666', 'cc', 'cc', '867845555555555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '杭州师范大学', '', '0', '0', '0', '0', '0', '宿舍', '0', '0', '0', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('133', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ss', 'ss', '13777777777', '瓦萨', '北京', '454545454545454545', 'asss', 'ssss', 'sss', '0', '0', '2', '1', '清华大学 ', '没个性不签名', '180', '100', '33', '33', '33', '吹箫', '0', '0', '666', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('134', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ww', 'ww', '13888888888', '山大', '北京', '666666666666666666', 'ds', 'sd', 'sd', '0', '0', '1', '2', '上海交大', '有个性也不签名', '200', '180', '44', '44', '44', '吹喇叭', '0', '0', '8888', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('135', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '13999999999', '露娜', '广州', '888888888888888888', 'ss', 'ss', 'ss', '0', '30', '0', '1', '暨南大学', '我眼神中还流露着忧伤就很啊王子一样', '0', '0', '0', '0', '0', '吹箫', '0', '0', '0', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('136', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'gg', 'gg', '15555555555', '波西', '北京', '555555625896548126', 'w', 'w', 'w', '0', '0', '0', '0', '北京大学', '没落的贵族', '0', '0', '0', '0', '0', '', '0', '0', '4', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('137', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'cc', 'cc', '18888888888', '西西', '杭州', '666666666666555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '浙江大学', '只怪蒋公剿匪不力', '0', '0', '0', '0', '0', '五', '0', '0', '4', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('138', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '15666666666', 'cc', 'cc', '867845555555555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '杭州师范大学', '', '0', '0', '0', '0', '0', '宿舍', '0', '0', '0', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('139', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ss', 'ss', '13777777777', '瓦萨', '北京', '454545454545454545', 'asss', 'ssss', 'sss', '0', '0', '2', '1', '清华大学 ', '没个性不签名', '180', '100', '33', '33', '33', '吹箫', '0', '0', '666', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('140', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ww', 'ww', '13888888888', '山大', '北京', '666666666666666666', 'ds', 'sd', 'sd', '0', '0', '1', '2', '上海交大', '有个性也不签名', '200', '180', '44', '44', '44', '吹喇叭', '0', '0', '8888', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('141', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '13999999999', '露娜', '广州', '888888888888888888', 'ss', 'ss', 'ss', '0', '30', '0', '1', '暨南大学', '我眼神中还流露着忧伤就很啊王子一样', '0', '0', '0', '0', '0', '吹箫', '0', '0', '0', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('142', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'gg', 'gg', '15555555555', '波西', '北京', '555555625896548126', 'w', 'w', 'w', '0', '0', '0', '0', '北京大学', '没落的贵族', '0', '0', '0', '0', '0', '', '0', '0', '4', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('143', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'cc', 'cc', '18888888888', '西西', '杭州', '666666666666555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '浙江大学', '只怪蒋公剿匪不力', '0', '0', '0', '0', '0', '五', '0', '0', '4', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('144', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '15666666666', 'cc', 'cc', '867845555555555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '杭州师范大学', '', '0', '0', '0', '0', '0', '宿舍', '0', '0', '0', '0', '1492937079', '0', '0');
INSERT INTO `yk_user` VALUES ('145', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ss', 'ss', '13777777777', '瓦萨', '北京', '454545454545454545', 'asss', 'ssss', 'sss', '0', '0', '2', '1', '清华大学 ', '没个性不签名', '180', '100', '33', '33', '33', '吹箫', '0', '0', '666', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('146', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ww', 'ww', '13888888888', '山大', '北京', '666666666666666666', 'ds', 'sd', 'sd', '0', '0', '1', '2', '上海交大', '有个性也不签名', '200', '180', '44', '44', '44', '吹喇叭', '0', '0', '8888', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('147', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '13999999999', '露娜', '广州', '888888888888888888', 'ss', 'ss', 'ss', '0', '30', '0', '1', '暨南大学', '我眼神中还流露着忧伤就很啊王子一样', '0', '0', '0', '0', '0', '吹箫', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('148', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'gg', 'gg', '15555555555', '波西', '北京', '555555625896548126', 'w', 'w', 'w', '0', '0', '0', '0', '北京大学', '没落的贵族', '0', '0', '0', '0', '0', '', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('149', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'cc', 'cc', '18888888888', '西西', '杭州', '666666666666555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '浙江大学', '只怪蒋公剿匪不力', '0', '0', '0', '0', '0', '五', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('150', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '15666666666', 'cc', 'cc', '867845555555555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '杭州师范大学', '', '0', '0', '0', '0', '0', '宿舍', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('151', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ss', 'ss', '13777777777', '瓦萨', '北京', '454545454545454545', 'asss', 'ssss', 'sss', '0', '0', '2', '1', '清华大学 ', '没个性不签名', '180', '100', '33', '33', '33', '吹箫', '0', '0', '666', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('152', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ww', 'ww', '13888888888', '山大', '北京', '666666666666666666', 'ds', 'sd', 'sd', '0', '0', '1', '2', '上海交大', '有个性也不签名', '200', '180', '44', '44', '44', '吹喇叭', '0', '0', '8888', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('153', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '13999999999', '露娜', '广州', '888888888888888888', 'ss', 'ss', 'ss', '0', '30', '0', '1', '暨南大学', '我眼神中还流露着忧伤就很啊王子一样', '0', '0', '0', '0', '0', '吹箫', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('154', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'gg', 'gg', '15555555555', '波西', '北京', '555555625896548126', 'w', 'w', 'w', '0', '0', '0', '0', '北京大学', '没落的贵族', '0', '0', '0', '0', '0', '', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('155', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'cc', 'cc', '18888888888', '西西', '杭州', '666666666666555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '浙江大学', '只怪蒋公剿匪不力', '0', '0', '0', '0', '0', '五', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('156', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '15666666666', 'cc', 'cc', '867845555555555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '杭州师范大学', '', '0', '0', '0', '0', '0', '宿舍', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('157', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ss', 'ss', '13777777777', '瓦萨', '北京', '454545454545454545', 'asss', 'ssss', 'sss', '0', '0', '2', '1', '清华大学 ', '没个性不签名', '180', '100', '33', '33', '33', '吹箫', '0', '0', '666', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('158', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ww', 'ww', '13888888888', '山大', '北京', '666666666666666666', 'ds', 'sd', 'sd', '0', '0', '1', '2', '上海交大', '有个性也不签名', '200', '180', '44', '44', '44', '吹喇叭', '0', '0', '8888', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('159', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '13999999999', '露娜', '广州', '888888888888888888', 'ss', 'ss', 'ss', '0', '30', '0', '1', '暨南大学', '我眼神中还流露着忧伤就很啊王子一样', '0', '0', '0', '0', '0', '吹箫', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('160', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'gg', 'gg', '15555555555', '波西', '北京', '555555625896548126', 'w', 'w', 'w', '0', '0', '0', '0', '北京大学', '没落的贵族', '0', '0', '0', '0', '0', '', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('161', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'cc', 'cc', '18888888888', '西西', '杭州', '666666666666555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '浙江大学', '只怪蒋公剿匪不力', '0', '0', '0', '0', '0', '五', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('162', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '15666666666', 'cc', 'cc', '867845555555555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '杭州师范大学', '', '0', '0', '0', '0', '0', '宿舍', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('163', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ss', 'ss', '13777777777', '瓦萨', '北京', '454545454545454545', 'asss', 'ssss', 'sss', '0', '0', '2', '1', '清华大学 ', '没个性不签名', '180', '100', '33', '33', '33', '吹箫', '0', '0', '666', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('164', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ww', 'ww', '13888888888', '山大', '北京', '666666666666666666', 'ds', 'sd', 'sd', '0', '0', '1', '2', '上海交大', '有个性也不签名', '200', '180', '44', '44', '44', '吹喇叭', '0', '0', '8888', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('165', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '13999999999', '露娜', '广州', '888888888888888888', 'ss', 'ss', 'ss', '0', '30', '0', '1', '暨南大学', '我眼神中还流露着忧伤就很啊王子一样', '0', '0', '0', '0', '0', '吹箫', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('166', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'gg', 'gg', '15555555555', '波西', '北京', '555555625896548126', 'w', 'w', 'w', '0', '0', '0', '0', '北京大学', '没落的贵族', '0', '0', '0', '0', '0', '', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('167', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'cc', 'cc', '18888888888', '西西', '杭州', '666666666666555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '浙江大学', '只怪蒋公剿匪不力', '0', '0', '0', '0', '0', '五', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('168', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '15666666666', 'cc', 'cc', '867845555555555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '杭州师范大学', '', '0', '0', '0', '0', '0', '宿舍', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('169', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ss', 'ss', '13777777777', '瓦萨', '北京', '454545454545454545', 'asss', 'ssss', 'sss', '0', '0', '2', '1', '清华大学 ', '没个性不签名', '180', '100', '33', '33', '33', '吹箫', '0', '0', '666', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('170', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ww', 'ww', '13888888888', '山大', '北京', '666666666666666666', 'ds', 'sd', 'sd', '0', '0', '1', '2', '上海交大', '有个性也不签名', '200', '180', '44', '44', '44', '吹喇叭', '0', '0', '8888', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('171', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '13999999999', '露娜', '广州', '888888888888888888', 'ss', 'ss', 'ss', '0', '30', '0', '1', '暨南大学', '我眼神中还流露着忧伤就很啊王子一样', '0', '0', '0', '0', '0', '吹箫', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('172', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'gg', 'gg', '15555555555', '波西', '北京', '555555625896548126', 'w', 'w', 'w', '0', '0', '0', '0', '北京大学', '没落的贵族', '0', '0', '0', '0', '0', '', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('173', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'cc', 'cc', '18888888888', '西西', '杭州', '666666666666555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '浙江大学', '只怪蒋公剿匪不力', '0', '0', '0', '0', '0', '五', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('174', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '15666666666', 'cc', 'cc', '867845555555555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '杭州师范大学', '', '0', '0', '0', '0', '0', '宿舍', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('175', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ss', 'ss', '13777777777', '瓦萨', '北京', '454545454545454545', 'asss', 'ssss', 'sss', '0', '0', '2', '1', '清华大学 ', '没个性不签名', '180', '100', '33', '33', '33', '吹箫', '0', '0', '666', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('176', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ww', 'ww', '13888888888', '山大', '北京', '666666666666666666', 'ds', 'sd', 'sd', '0', '0', '1', '2', '上海交大', '有个性也不签名', '200', '180', '44', '44', '44', '吹喇叭', '0', '0', '8888', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('177', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '13999999999', '露娜', '广州', '888888888888888888', 'ss', 'ss', 'ss', '0', '30', '0', '1', '暨南大学', '我眼神中还流露着忧伤就很啊王子一样', '0', '0', '0', '0', '0', '吹箫', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('178', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'gg', 'gg', '15555555555', '波西', '北京', '555555625896548126', 'w', 'w', 'w', '0', '0', '0', '0', '北京大学', '没落的贵族', '0', '0', '0', '0', '0', '', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('179', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'cc', 'cc', '18888888888', '西西', '杭州', '666666666666555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '浙江大学', '只怪蒋公剿匪不力', '0', '0', '0', '0', '0', '五', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('180', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '15666666666', 'cc', 'cc', '867845555555555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '杭州师范大学', '', '0', '0', '0', '0', '0', '宿舍', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('181', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ss', 'ss', '13777777777', '瓦萨', '北京', '454545454545454545', 'asss', 'ssss', 'sss', '0', '0', '2', '1', '清华大学 ', '没个性不签名', '180', '100', '33', '33', '33', '吹箫', '0', '0', '666', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('182', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ww', 'ww', '13888888888', '山大', '北京', '666666666666666666', 'ds', 'sd', 'sd', '0', '0', '1', '2', '上海交大', '有个性也不签名', '200', '180', '44', '44', '44', '吹喇叭', '0', '0', '8888', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('183', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '13999999999', '露娜', '广州', '888888888888888888', 'ss', 'ss', 'ss', '0', '30', '0', '1', '暨南大学', '我眼神中还流露着忧伤就很啊王子一样', '0', '0', '0', '0', '0', '吹箫', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('184', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'gg', 'gg', '15555555555', '波西', '北京', '555555625896548126', 'w', 'w', 'w', '0', '0', '0', '0', '北京大学', '没落的贵族', '0', '0', '0', '0', '0', '', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('185', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'cc', 'cc', '18888888888', '西西', '杭州', '666666666666555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '浙江大学', '只怪蒋公剿匪不力', '0', '0', '0', '0', '0', '五', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('186', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '15666666666', 'cc', 'cc', '867845555555555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '杭州师范大学', '', '0', '0', '0', '0', '0', '宿舍', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('187', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ss', 'ss', '13777777777', '瓦萨', '北京', '454545454545454545', 'asss', 'ssss', 'sss', '0', '0', '2', '1', '清华大学 ', '没个性不签名', '180', '100', '33', '33', '33', '吹箫', '0', '0', '666', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('188', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ww', 'ww', '13888888888', '山大', '北京', '666666666666666666', 'ds', 'sd', 'sd', '0', '0', '1', '2', '上海交大', '有个性也不签名', '200', '180', '44', '44', '44', '吹喇叭', '0', '0', '8888', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('189', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '13999999999', '露娜', '广州', '888888888888888888', 'ss', 'ss', 'ss', '0', '30', '0', '1', '暨南大学', '我眼神中还流露着忧伤就很啊王子一样', '0', '0', '0', '0', '0', '吹箫', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('190', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'gg', 'gg', '15555555555', '波西', '北京', '555555625896548126', 'w', 'w', 'w', '0', '0', '0', '0', '北京大学', '没落的贵族', '0', '0', '0', '0', '0', '', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('191', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'cc', 'cc', '18888888888', '西西', '杭州', '666666666666555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '浙江大学', '只怪蒋公剿匪不力', '0', '0', '0', '0', '0', '五', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('192', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '15666666666', 'cc', 'cc', '867845555555555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '杭州师范大学', '', '0', '0', '0', '0', '0', '宿舍', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('193', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ss', 'ss', '13777777777', '瓦萨', '北京', '454545454545454545', 'asss', 'ssss', 'sss', '0', '0', '2', '1', '清华大学 ', '没个性不签名', '180', '100', '33', '33', '33', '吹箫', '0', '0', '666', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('194', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ww', 'ww', '13888888888', '山大', '北京', '666666666666666666', 'ds', 'sd', 'sd', '0', '0', '1', '2', '上海交大', '有个性也不签名', '200', '180', '44', '44', '44', '吹喇叭', '0', '0', '8888', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('195', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '13999999999', '露娜', '广州', '888888888888888888', 'ss', 'ss', 'ss', '0', '30', '0', '1', '暨南大学', '我眼神中还流露着忧伤就很啊王子一样', '0', '0', '0', '0', '0', '吹箫', '5', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('196', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'gg', 'gg', '15555555555', '波西', '北京', '555555625896548126', 'w', 'w', 'w', '0', '0', '0', '0', '北京大学', '没落的贵族', '0', '0', '0', '0', '0', '', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('197', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'cc', 'cc', '18888888888', '西西', '杭州', '666666666666555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '浙江大学', '只怪蒋公剿匪不力', '0', '0', '0', '0', '0', '五', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('198', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '15666666666', 'cc', 'cc', '867845555555555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '杭州师范大学', '', '0', '0', '0', '0', '0', '宿舍', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('199', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ss', 'ss', '13777777777', '瓦萨', '北京', '454545454545454545', 'asss', 'ssss', 'sss', '0', '0', '2', '1', '清华大学 ', '没个性不签名', '180', '100', '33', '33', '33', '吹箫', '0', '0', '666', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('200', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ww', 'ww', '13888888888', '山大', '北京', '666666666666666666', 'ds', 'sd', 'sd', '0', '0', '1', '2', '上海交大', '有个性也不签名', '200', '180', '44', '44', '44', '吹喇叭', '0', '0', '8888', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('201', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '13999999999', '露娜', '广州', '888888888888888888', 'ss', 'ss', 'ss', '0', '30', '0', '1', '暨南大学', '我眼神中还流露着忧伤就很啊王子一样', '0', '0', '0', '0', '0', '吹箫', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('202', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'gg', 'gg', '15555555555', '波西', '北京', '555555625896548126', 'w', 'w', 'w', '0', '0', '0', '0', '北京大学', '没落的贵族', '0', '0', '0', '0', '0', '', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('203', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'cc', 'cc', '18888888888', '西西', '杭州', '666666666666555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '浙江大学', '只怪蒋公剿匪不力', '0', '0', '0', '0', '0', '五', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('204', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '15666666666', 'cc', 'cc', '867845555555555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '杭州师范大学', '', '0', '0', '0', '0', '0', '宿舍', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('205', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ss', 'ss', '13777777777', '瓦萨', '北京', '454545454545454545', 'asss', 'ssss', 'sss', '0', '0', '2', '1', '清华大学 ', '没个性不签名', '180', '100', '33', '33', '33', '吹箫', '0', '0', '666', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('206', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ww', 'ww', '13888888888', '山大', '北京', '666666666666666666', 'ds', 'sd', 'sd', '0', '0', '1', '2', '上海交大', '有个性也不签名', '200', '180', '44', '44', '44', '吹喇叭', '0', '0', '8888', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('207', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '13999999999', '露娜', '广州', '888888888888888888', 'ss', 'ss', 'ss', '0', '30', '0', '1', '暨南大学', '我眼神中还流露着忧伤就很啊王子一样', '0', '0', '0', '0', '0', '吹箫', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('208', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'gg', 'gg', '15555555555', '波西', '北京', '555555625896548126', 'w', 'w', 'w', '0', '0', '0', '0', '北京大学', '没落的贵族', '0', '0', '0', '0', '0', '', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('209', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'cc', 'cc', '18888888888', '西西', '杭州', '666666666666555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '浙江大学', '只怪蒋公剿匪不力', '0', '0', '0', '0', '0', '五', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('210', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '15666666666', 'cc', 'cc', '867845555555555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '杭州师范大学', '', '0', '0', '0', '0', '0', '宿舍', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('211', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ss', 'ss', '13777777777', '瓦萨', '北京', '454545454545454545', 'asss', 'ssss', 'sss', '0', '0', '2', '1', '清华大学 ', '没个性不签名', '180', '100', '33', '33', '33', '吹箫', '0', '0', '666', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('212', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'ww', 'ww', '13888888888', '山大', '北京', '666666666666666666', 'ds', 'sd', 'sd', '0', '0', '1', '2', '上海交大', '有个性也不签名', '200', '180', '44', '44', '44', '吹喇叭', '0', '0', '8888', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('213', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '13999999999', '露娜', '广州', '888888888888888888', 'ss', 'ss', 'ss', '0', '30', '0', '1', '暨南大学', '我眼神中还流露着忧伤就很啊王子一样', '0', '0', '0', '0', '0', '吹箫', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('214', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'gg', 'gg', '15555555555', '波西', '北京', '555555625896548126', 'w', 'w', 'w', '0', '0', '0', '0', '北京大学', '没落的贵族', '0', '0', '0', '0', '0', '', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('215', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'cc', 'cc', '18888888888', '西西', '杭州', '666666666666555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '浙江大学', '只怪蒋公剿匪不力', '0', '0', '0', '0', '0', '五', '0', '0', '4', '0', '0', '0', '0');
INSERT INTO `yk_user` VALUES ('216', 'http://192.168.1.121/yksd/Upload/Schedule/1156.JPG', 'dd', 'dd', '15666666666', 'cc', 'cc', '867845555555555555', 'ss', 'ss', 'ss', '0', '26', '2', '2', '杭州师范大学', '', '0', '0', '0', '0', '0', '宿舍', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for yk_user_img
-- ----------------------------
DROP TABLE IF EXISTS `yk_user_img`;
CREATE TABLE `yk_user_img` (
  `user_id` int(11) unsigned NOT NULL,
  `user_pic` varchar(50) NOT NULL DEFAULT '' COMMENT '用户图片'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户图片表';

-- ----------------------------
-- Records of yk_user_img
-- ----------------------------

-- ----------------------------
-- Table structure for yk_user_schedule
-- ----------------------------
DROP TABLE IF EXISTS `yk_user_schedule`;
CREATE TABLE `yk_user_schedule` (
  `user_id` int(11) unsigned NOT NULL COMMENT '用户id',
  `schedule_id` int(11) unsigned NOT NULL COMMENT '通告id',
  `signtime` varchar(20) DEFAULT NULL COMMENT '报名时间',
  `ranking` int(11) unsigned NOT NULL COMMENT '排名',
  `schedule_status` int(8) NOT NULL DEFAULT '0' COMMENT '0报名 / 1拒绝 / 2受邀参加 / 3已参加'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和通告关联表';

-- ----------------------------
-- Records of yk_user_schedule
-- ----------------------------
INSERT INTO `yk_user_schedule` VALUES ('2', '4', '1492494175', '1', '1');
INSERT INTO `yk_user_schedule` VALUES ('3', '4', '1492494175', '2', '1');
INSERT INTO `yk_user_schedule` VALUES ('1', '8', '1492494175', '1', '1');
INSERT INTO `yk_user_schedule` VALUES ('4', '4', '1493025350', '3', '1');
INSERT INTO `yk_user_schedule` VALUES ('2', '8', '1493025350', '2', '1');
INSERT INTO `yk_user_schedule` VALUES ('2', '14', '1493025350', '1', '1');
INSERT INTO `yk_user_schedule` VALUES ('2', '15', '1493025350', '1', '2');
INSERT INTO `yk_user_schedule` VALUES ('2', '16', '1493025350', '1', '2');
INSERT INTO `yk_user_schedule` VALUES ('2', '17', '1493114591', '1', '2');
INSERT INTO `yk_user_schedule` VALUES ('2', '18', '1493176274', '1', '3');
INSERT INTO `yk_user_schedule` VALUES ('2', '45', '1493176274', '1', '3');
INSERT INTO `yk_user_schedule` VALUES ('2', '47', '1493176274', '1', '3');

-- ----------------------------
-- Table structure for yk_user_stagephoto
-- ----------------------------
DROP TABLE IF EXISTS `yk_user_stagephoto`;
CREATE TABLE `yk_user_stagephoto` (
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `stagephoto` varchar(255) NOT NULL DEFAULT '' COMMENT '剧照URL',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yk_user_stagephoto
-- ----------------------------

-- ----------------------------
-- Table structure for yk_user_type
-- ----------------------------
DROP TABLE IF EXISTS `yk_user_type`;
CREATE TABLE `yk_user_type` (
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `user_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0演员 / 1模特 / 2主播 / 3校园艺人 / 4童星 / 5主持人 / 6歌星 / 7舞者',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yk_user_type
-- ----------------------------

-- ----------------------------
-- Table structure for yk_work
-- ----------------------------
DROP TABLE IF EXISTS `yk_work`;
CREATE TABLE `yk_work` (
  `work_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '工作id',
  `user_id` int(11) unsigned NOT NULL COMMENT '用户id',
  `work_title` varchar(200) NOT NULL DEFAULT '' COMMENT '标题',
  `start_time` date DEFAULT NULL COMMENT '开始时间',
  `end_time` date DEFAULT NULL COMMENT '结束时间',
  `introduce` varchar(300) DEFAULT NULL COMMENT '个人介绍',
  PRIMARY KEY (`work_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='工作经验';

-- ----------------------------
-- Records of yk_work
-- ----------------------------
INSERT INTO `yk_work` VALUES ('1', '1', '我是演员主演', '2017-04-17', '2017-04-18', '演员是非常重要的啊啊啊啊');
INSERT INTO `yk_work` VALUES ('2', '1', '我是歌手主持', '2017-03-29', '2017-03-29', '主持当然也是非常重要的啊啊啊啊');
INSERT INTO `yk_work` VALUES ('3', '3', '阿拉侬', '2017-04-06', '2017-04-07', '阿拉侬是什么意思我也不知道');

-- ----------------------------
-- Table structure for yk_work_img
-- ----------------------------
DROP TABLE IF EXISTS `yk_work_img`;
CREATE TABLE `yk_work_img` (
  `work_id` int(11) NOT NULL DEFAULT '0' COMMENT 'ID',
  `work_img` varchar(255) NOT NULL DEFAULT '' COMMENT '工作经验图片'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yk_work_img
-- ----------------------------
