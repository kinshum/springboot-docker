/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.103_3306
Source Server Version : 50725
Source Host           : 192.168.1.103:3306
Source Database       : chigoose_ams

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-03-26 17:12:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ams_account
-- ----------------------------
DROP TABLE IF EXISTS `ams_account`;
CREATE TABLE `ams_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(50) DEFAULT NULL COMMENT '账套名称\n',
  `org_code` varchar(50) DEFAULT NULL COMMENT '组织编码\n',
  `org_cname` varchar(50) DEFAULT NULL COMMENT '组织中文名\r\n',
  `org_ename` varchar(100) DEFAULT NULL COMMENT '英文名\r\n',
  `org_shortname` varchar(20) DEFAULT NULL COMMENT '简称\r\n',
  `country` varchar(20) DEFAULT NULL COMMENT '所在国\r\n',
  `currency` varchar(3) DEFAULT NULL COMMENT '结算币种\r\n',
  `address` varchar(100) DEFAULT NULL COMMENT '公司地址\r\n',
  `contact_person` varchar(20) DEFAULT NULL COMMENT '联系人\r\n',
  `contact_phone` varchar(20) DEFAULT NULL COMMENT '联系人电话\r\n',
  `bank_account` varchar(20) DEFAULT NULL COMMENT '银行账号\r\n',
  `bank_name` varchar(20) DEFAULT NULL COMMENT '银行名称\r\n',
  `bank_address` varchar(100) DEFAULT NULL COMMENT '银行地址\r\n',
  `parent_account_id` int(11) DEFAULT NULL COMMENT '上级账套编码\r\n',
  `creator` varchar(20) DEFAULT NULL COMMENT '创建人\r\n',
  `create_time` date DEFAULT NULL COMMENT '创建时间\r\n',
  `df` varchar(1) DEFAULT NULL COMMENT '状态:0存在,1已删除',
  `in_out` varchar(1) DEFAULT NULL COMMENT '收入支出:I-收入;O-支出\n',
  `org_id` int(11) DEFAULT NULL COMMENT '组织id',
  `account_id` varchar(4) DEFAULT NULL COMMENT '账套编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8 COMMENT='账套';

-- ----------------------------
-- Records of ams_account
-- ----------------------------
INSERT INTO `ams_account` VALUES ('37', 'aaa', 'SDFS', 'a', 'a', 'aaa', 'a', 'a', 'a', 'd', 'h', 'f', 'd', 'd', '12', 's', '2017-09-01', '1', '1', '3', 'SDFS');
INSERT INTO `ams_account` VALUES ('52', 'XX公司账套', 'XXXX', '组织中文名', 'zuzhiyingwenming', '一二三四五六七八九十一二三四五六七八九十', '中国', 'USD', '米兰花园', '胡bug', '13253456342', '2342352352', '工商银行', '米兰花园楼下', '23', '9', '2017-09-01', '0', '0', '4', 'XXXX');
INSERT INTO `ams_account` VALUES ('64', '执行思远账套', 'AAAA', '执行思远', null, '执行思远', null, 'USD', null, '娇', null, null, null, null, null, '52', '2017-09-20', '0', '0', '116', 'AAAA');
INSERT INTO `ams_account` VALUES ('65', '我爱我家账套', 'WAWJ', '我爱我家', null, 'wawj', null, 'USD', null, '郄凯霞', null, null, null, null, null, '53', '2017-09-20', '0', null, '117', 'WAWJ');
INSERT INTO `ams_account` VALUES ('68', '无水洗车技术信息公司账套', 'WSXC', '无水洗车技术信息公司', null, '无水洗车', null, 'USD', null, 'wells1', null, null, null, null, null, '57', '2017-09-20', '0', null, '127', 'WSXC');
INSERT INTO `ams_account` VALUES ('69', '微一案信息科技有限公司账套', 'BJCP', '微一案信息科技有限公司', null, '微一案', null, 'USD', null, '汪娜', null, null, null, null, null, '58', '2017-09-20', '0', null, '128', 'BJCP');
INSERT INTO `ams_account` VALUES ('70', '胡汉三的公司账套', 'NTRU', '胡汉三的公司', null, 'HUHANSAN', null, 'USD', null, 'HUHANSAN', null, null, null, null, null, '59', '2017-09-20', '0', null, '130', 'NTRU');
INSERT INTO `ams_account` VALUES ('71', 'ZXSY账套', 'BBBB', 'ZXSY', null, 'ZXSY', null, 'USD', null, '娇娇', null, null, null, null, null, '60', '2017-09-20', '0', null, '132', 'BBBB');
INSERT INTO `ams_account` VALUES ('72', '猪猪侠森林公园账套', 'OPPP', '猪猪侠森林公园', null, 'pigPark', null, 'USD', null, '猪猪侠', null, null, null, null, null, '61', '2017-09-20', '0', null, '134', 'OPPP');
INSERT INTO `ams_account` VALUES ('73', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '62', '2017-09-22', '0', null, '137', 'ZXSY');
INSERT INTO `ams_account` VALUES ('74', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '63', '2017-09-22', '0', null, '138', 'ZXSY');
INSERT INTO `ams_account` VALUES ('75', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '64', '2017-09-22', '0', null, '139', 'ZXSY');
INSERT INTO `ams_account` VALUES ('76', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '65', '2017-09-22', '0', null, '140', 'ZXSY');
INSERT INTO `ams_account` VALUES ('77', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '66', '2017-09-22', '0', null, '141', 'ZXSY');
INSERT INTO `ams_account` VALUES ('78', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '67', '2017-09-22', '0', null, '142', 'ZXSY');
INSERT INTO `ams_account` VALUES ('79', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '68', '2017-09-22', '0', null, '143', 'ZXSY');
INSERT INTO `ams_account` VALUES ('80', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '69', '2017-09-22', '0', null, '144', 'ZXSY');
INSERT INTO `ams_account` VALUES ('81', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '70', '2017-09-22', '0', null, '145', 'ZXSY');
INSERT INTO `ams_account` VALUES ('82', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '71', '2017-09-22', '0', null, '146', 'ZXSY');
INSERT INTO `ams_account` VALUES ('83', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '72', '2017-09-22', '0', null, '147', 'ZXSY');
INSERT INTO `ams_account` VALUES ('84', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '73', '2017-09-22', '0', null, '148', 'ZXSY');
INSERT INTO `ams_account` VALUES ('85', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '74', '2017-09-22', '0', null, '149', 'ZXSY');
INSERT INTO `ams_account` VALUES ('86', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '75', '2017-09-22', '0', null, '150', 'ZXSY');
INSERT INTO `ams_account` VALUES ('87', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '76', '2017-09-22', '0', null, '151', 'ZXSY');
INSERT INTO `ams_account` VALUES ('88', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '77', '2017-09-22', '0', null, '152', 'ZXSY');
INSERT INTO `ams_account` VALUES ('89', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '78', '2017-09-22', '0', null, '153', 'ZXSY');
INSERT INTO `ams_account` VALUES ('90', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '79', '2017-09-22', '0', null, '154', 'ZXSY');
INSERT INTO `ams_account` VALUES ('91', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '80', '2017-09-22', '0', null, '155', 'ZXSY');
INSERT INTO `ams_account` VALUES ('92', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '81', '2017-09-22', '0', null, '156', 'ZXSY');
INSERT INTO `ams_account` VALUES ('93', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '82', '2017-09-22', '0', null, '157', 'ZXSY');
INSERT INTO `ams_account` VALUES ('94', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '83', '2017-09-22', '0', null, '158', 'ZXSY');
INSERT INTO `ams_account` VALUES ('95', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '84', '2017-09-22', '0', null, '159', 'ZXSY');
INSERT INTO `ams_account` VALUES ('96', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '85', '2017-09-22', '0', null, '160', 'ZXSY');
INSERT INTO `ams_account` VALUES ('97', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '86', '2017-09-22', '0', null, '161', 'ZXSY');
INSERT INTO `ams_account` VALUES ('98', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '87', '2017-09-22', '0', null, '162', 'ZXSY');
INSERT INTO `ams_account` VALUES ('99', '知行思远账套', 'ZXSY', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '仝芳芳', null, null, null, null, null, '88', '2017-09-22', '0', null, '163', 'ZXSY');
INSERT INTO `ams_account` VALUES ('100', '比云账套', 'QAZX', '北京比云科技有限公司', null, '比云', null, 'USD', null, '张婉云', null, null, null, null, null, '89', '2017-09-22', '0', null, '164', 'QAZX');
INSERT INTO `ams_account` VALUES ('101', '比云账套', 'QAZX', '北京比云科技有限公司', null, '比云', null, 'USD', null, '张婉云', null, null, null, null, null, '90', '2017-09-22', '0', null, '165', 'QAZX');
INSERT INTO `ams_account` VALUES ('102', '比云账套', 'QAZX', '北京比云科技有限公司', null, '比云', null, 'USD', null, '张婉云', null, null, null, null, null, '91', '2017-09-22', '0', null, '166', 'QAZX');
INSERT INTO `ams_account` VALUES ('103', '比云账套', 'QAZX', '北京比云科技有限公司', null, '比云', null, 'USD', null, '张婉云', null, null, null, null, null, '92', '2017-09-22', '0', null, '167', 'QAZX');
INSERT INTO `ams_account` VALUES ('104', '比云账套', 'QAZX', '北京比云科技有限公司', null, '比云', null, 'USD', null, '张婉云', null, null, null, null, null, '93', '2017-09-22', '0', null, '168', 'QAZX');
INSERT INTO `ams_account` VALUES ('105', '比云账套', 'QAZX', '北京比云科技有限公司', null, '比云', null, 'USD', null, '张婉云', null, null, null, null, null, '94', '2017-09-22', '0', null, '169', 'QAZX');
INSERT INTO `ams_account` VALUES ('106', '比云账套', 'QAZX', '北京比云科技有限公司', null, '比云', null, 'USD', null, '张婉云', null, null, null, null, null, '95', '2017-09-22', '0', null, '170', 'QAZX');
INSERT INTO `ams_account` VALUES ('107', '比云账套', 'QAZX', '北京比云科技有限公司', null, '比云', null, 'USD', null, '张婉云', null, null, null, null, null, '96', '2017-09-22', '0', null, '171', 'QAZX');
INSERT INTO `ams_account` VALUES ('108', '比云账套', 'QAZX', '北京比云科技有限公司', null, '比云', null, 'USD', null, '张婉云', null, null, null, null, null, '97', '2017-09-22', '0', null, '172', 'QAZX');
INSERT INTO `ams_account` VALUES ('109', '比云账套', 'QAZX', '北京比云科技有限公司', null, '比云', null, 'USD', null, '张婉云', null, null, null, null, null, '98', '2017-09-22', '0', null, '173', 'QAZX');
INSERT INTO `ams_account` VALUES ('110', '比云账套', 'QAZX', '北京比云科技有限公司', null, '比云', null, 'USD', null, '张婉云', null, null, null, null, null, '99', '2017-09-22', '0', null, '174', 'QAZX');
INSERT INTO `ams_account` VALUES ('111', '比云账套', 'QAZX', '北京比云科技有限公司', null, '比云', null, 'USD', null, '张婉云', null, null, null, null, null, '100', '2017-09-22', '0', null, '175', 'QAZX');
INSERT INTO `ams_account` VALUES ('112', '比云账套', 'QAZX', '北京比云科技有限公司', null, '比云', null, 'USD', null, '张婉云', null, null, null, null, null, '101', '2017-09-22', '0', null, '176', 'QAZX');
INSERT INTO `ams_account` VALUES ('113', '比云账套', 'QAZX', '北京比云科技有限公司', null, '比云', null, 'USD', null, '张婉云', null, null, null, null, null, '102', '2017-09-22', '0', null, '177', 'QAZX');
INSERT INTO `ams_account` VALUES ('114', '比云账套', 'QAZX', '北京比云科技有限公司', null, '比云', null, 'USD', null, '张婉云', null, null, null, null, null, '103', '2017-09-22', '0', null, '178', 'QAZX');
INSERT INTO `ams_account` VALUES ('115', '比云账套', 'QAZX', '北京比云科技有限公司', null, '比云', null, 'USD', null, '张婉云', null, null, null, null, null, '104', '2017-09-22', '0', null, '179', 'QAZX');
INSERT INTO `ams_account` VALUES ('116', '知行思远账套', 'RFVB', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '芳芳', null, null, null, null, null, '105', '2017-09-22', '0', null, '180', 'RFVB');
INSERT INTO `ams_account` VALUES ('117', '知行思远账套', 'RFVB', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '芳芳', null, null, null, null, null, '106', '2017-09-22', '0', null, '181', 'RFVB');
INSERT INTO `ams_account` VALUES ('118', '知行思远账套', 'RFVB', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '芳芳', null, null, null, null, null, '107', '2017-09-22', '0', null, '182', 'RFVB');
INSERT INTO `ams_account` VALUES ('119', '知行思远账套', 'RFVB', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '芳芳', null, null, null, null, null, '108', '2017-09-22', '0', null, '183', 'RFVB');
INSERT INTO `ams_account` VALUES ('120', '知行思远账套', 'RFVB', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '芳芳', null, null, null, null, null, '109', '2017-09-22', '0', null, '184', 'RFVB');
INSERT INTO `ams_account` VALUES ('121', '知行思远账套', 'RFVB', '知行思远信息技术（北京）有限公司', null, '知行思远', null, 'USD', null, '芳芳', null, null, null, null, null, '110', '2017-09-22', '0', null, '185', 'RFVB');
INSERT INTO `ams_account` VALUES ('122', '四洲购账套', 'SZJT', '四洲购', null, '四洲购', null, 'USD', null, '李昕海', null, null, null, null, null, '111', '2017-09-23', '0', null, '186', 'SZJT');
INSERT INTO `ams_account` VALUES ('123', '知行思源账套', 'ASDF', '知行思源信息技术有限公司', null, '知行思源', null, 'USD', null, '李总', null, null, null, null, null, '179', '2017-09-27', '0', null, '211', 'ASDF');
INSERT INTO `ams_account` VALUES ('124', '知行思源账套', 'ASDF', '知行思源信息技术有限公司', null, '知行思源', null, 'USD', null, '李总', null, null, null, null, null, '180', '2017-09-27', '0', null, '210', 'ASDF');
INSERT INTO `ams_account` VALUES ('125', '知行思源账套', 'ASDF', '知行思源信息技术有限公司', null, '知行思源', null, 'USD', null, '李总', null, null, null, null, null, '181', '2017-09-27', '0', null, '212', 'ASDF');
INSERT INTO `ams_account` VALUES ('126', '知行思源账套', 'ASDF', '知行思源信息技术有限公司', null, '知行思源', null, 'USD', null, '李总', null, null, null, null, null, '182', '2017-09-27', '0', null, '213', 'ASDF');
INSERT INTO `ams_account` VALUES ('127', '知行思源账套', 'ASDF', '知行思源信息技术有限公司', null, '知行思源', null, 'USD', null, '李总', null, null, null, null, null, '183', '2017-09-27', '0', null, '214', 'ASDF');
INSERT INTO `ams_account` VALUES ('128', '知行思源账套', 'ASDF', '知行思源信息技术有限公司', null, '知行思源', null, 'USD', null, '李总', null, null, null, null, null, '184', '2017-09-27', '0', null, '215', 'ASDF');
INSERT INTO `ams_account` VALUES ('129', '知行思源账套', 'ASDF', '知行思源信息技术有限公司', null, '知行思源', null, 'USD', null, '李总', null, null, null, null, null, '185', '2017-09-27', '0', null, '216', 'ASDF');
INSERT INTO `ams_account` VALUES ('130', '知行思源账套', 'LKJH', '知行思源', null, '知行思源', null, 'USD', null, '大小', null, null, null, null, null, '186', '2017-09-27', '0', null, '217', 'LKJH');
INSERT INTO `ams_account` VALUES ('131', '知行思源账套', 'ASDF', '知行思源信息技术有限公司', null, '知行思源', null, 'USD', null, '李总', null, null, null, null, null, '187', '2017-09-27', '0', null, '218', 'ASDF');
INSERT INTO `ams_account` VALUES ('132', '知行思源账套', 'ASDF', '知行思源信息技术有限公司', null, '知行思源', null, 'USD', null, '李总', null, null, null, null, null, '188', '2017-09-27', '0', null, '219', 'ASDF');
INSERT INTO `ams_account` VALUES ('133', '知行思源账套', 'ASDF', '知行思源信息技术有限公司', null, '知行思源', null, 'USD', null, '李总', null, null, null, null, null, '189', '2017-09-27', '0', null, '220', 'ASDF');
INSERT INTO `ams_account` VALUES ('134', '知行思源账套', 'ASDF', '知行思源信息技术有限公司', null, '知行思源', null, 'USD', null, '李总', null, null, null, null, null, '190', '2017-09-27', '0', null, '221', 'ASDF');
INSERT INTO `ams_account` VALUES ('135', 'OOPK账套', 'OOPK', 'OOPK', null, 'OOPK', null, 'USD', null, '胡汉三', null, null, null, null, null, '202', '2017-10-13', '0', null, '226', 'OOPK');
INSERT INTO `ams_account` VALUES ('136', 'OOPK账套', 'OOPK', 'OOPK', null, 'OOPK', null, 'USD', null, '胡汉三', null, null, null, null, null, '202', '2017-10-13', '0', null, '226', 'OOPK');
INSERT INTO `ams_account` VALUES ('137', 'GGGG账套', 'GGGG', 'GGGG', null, 'GGGG', null, 'USD', null, '杜虎符', null, null, null, null, null, '204', '2017-10-13', '0', null, '228', 'GGGG');
INSERT INTO `ams_account` VALUES ('138', 'DDF账套', 'DDFG', '猪八戒名称', null, 'DDF', null, 'USD', null, 'QWE', null, null, null, null, null, '212', '2017-10-17', '0', null, '238', 'DDFG');
INSERT INTO `ams_account` VALUES ('139', 'KJNZ账套', 'KJNZ', 'ki姐', null, 'KJNZ', null, 'USD', null, '郄凯霞', null, null, null, null, null, '213', '2017-10-17', '0', null, '239', 'KJNZ');
INSERT INTO `ams_account` VALUES ('140', '知行思远账套', 'QWER', '知行思远信息 技术有限公司', null, '知行思远', null, 'USD', null, '李总', null, null, null, null, null, '214', '2017-10-17', '0', null, '241', 'QWER');
INSERT INTO `ams_account` VALUES ('141', 'smart账套', 'ZXSI', '执行思远', null, 'smart', null, 'USD', null, '娇', null, null, null, null, null, '215', '2017-10-17', '0', null, '243', 'ZXSI');
INSERT INTO `ams_account` VALUES ('142', '郄开霞账套', 'PLMK', '郄开霞的公司', null, '郄开霞', null, 'USD', null, '郄开霞', null, null, null, null, null, '216', '2017-10-17', '0', null, '248', 'PLMK');
INSERT INTO `ams_account` VALUES ('143', '知行思远账套', 'PLOK', '知行思远信息技术有限公司', null, '知行思远', null, 'USD', null, '城小牛', null, null, null, null, null, '217', '2017-10-17', '0', null, '249', 'PLOK');
INSERT INTO `ams_account` VALUES ('144', 'ls账套', 'LSWL', '龙蛇网络科技有限公司', null, 'ls', null, 'USD', null, '汪娜', null, null, null, null, null, '218', '2017-10-17', '0', null, '250', 'LSWL');
INSERT INTO `ams_account` VALUES ('145', 'zj账套', 'ZJLS', '浙江龙蛇网络科技有限公司', null, 'zj', '非洲其他国家(地区)', 'USD', '北京市朝阳区花园东路', '汪娜', '17600995566', '6222023202053316755', '工商银行', '湖北武汉', null, '220', '2017-10-17', '0', null, '251', 'ZJLS');
INSERT INTO `ams_account` VALUES ('146', '基金账套', 'WWOO', '私募基金', 'simujijin', '基金', null, 'USD', null, '王总', null, null, null, null, null, '234', '2017-10-19', '0', null, '278', 'WWOO');
INSERT INTO `ams_account` VALUES ('147', '基金账套', 'IKAA', '私募基金', 'simujijin', '基金', null, 'USD', null, '李总', null, null, null, null, null, '235', '2017-10-19', '0', null, '279', 'IKAA');
INSERT INTO `ams_account` VALUES ('148', '私募基金账套', 'KKLL', '私募基金', 'simujijin', '私募基金', null, 'USD', null, '老高', null, null, null, null, null, '236', '2017-10-19', '0', null, '280', 'KKLL');
INSERT INTO `ams_account` VALUES ('149', '知行思远账套', 'QWAS', '知行思远信息技术有限公司', 'zhixingsiyuan', '知行思远', null, 'USD', null, '1111', null, null, null, null, null, '237', '2017-10-19', '0', null, '281', 'QWAS');
INSERT INTO `ams_account` VALUES ('150', '知行思远账套', 'UUUU', '知行思远信息技术有限公司', 'zhi xing si yuan', '知行思远', null, 'USD', null, '张总', null, null, null, null, null, '238', '2017-10-20', '0', null, '284', 'UUUU');
INSERT INTO `ams_account` VALUES ('151', 'momo账套', 'MOLP', '埃塞里克大坟墓', 'momoga', 'momo', null, 'USD', null, '墨墨家', null, null, null, null, null, '240', '2017-10-20', '0', null, '290', 'MOLP');
INSERT INTO `ams_account` VALUES ('152', '知行思远账套', 'YYUU', '知行思远信息技术有限公司', 'IKATS', '知行思远', null, 'USD', null, '赵文卓', null, null, null, null, null, '242', '2017-10-21', '0', null, '303', 'YYUU');
INSERT INTO `ams_account` VALUES ('153', 'whh账套', 'WHHA', '营养快线', 'wahaha', 'whh', null, 'USD', null, '胡汉三', null, null, null, null, null, '244', '2017-10-21', '0', null, '304', 'WHHA');
INSERT INTO `ams_account` VALUES ('154', 'yisan账套', 'ADIO', '123612', 'onethree', 'yisan', null, 'USD', null, 'wf', null, null, null, null, null, '245', '2017-10-21', '0', null, '305', 'ADIO');
INSERT INTO `ams_account` VALUES ('155', 'BILIBILI账套', 'BILI', '哔哩哔哩', 'bilibili', 'BILIBILI', null, 'USD', null, '哔哩哔哩', null, null, null, null, null, '246', '2017-10-21', '0', null, '306', 'BILI');
INSERT INTO `ams_account` VALUES ('156', '公司信息账套', 'GSXX', '公司信息技术信息有限公司', 'company', '公司信息', null, 'USD', null, '王飞', null, null, null, null, null, '247', '2017-10-21', '0', null, '307', 'GSXX');
INSERT INTO `ams_account` VALUES ('157', '华容账套', 'QQQY', '华容基金有限公司', 'huaronjijin', '华容', null, 'USD', null, '王总', null, null, null, null, null, '249', '2017-10-22', '0', null, '308', 'QQQY');
INSERT INTO `ams_account` VALUES ('158', '雅文账套', 'TFLB', '北京雅文信息技术（集团）有限公司', 'yawen', '雅文', null, 'USD', null, '芳芳', null, null, null, null, null, '272', '2017-11-01', '0', null, '337', 'TFLB');
INSERT INTO `ams_account` VALUES ('160', 'CICI账套', 'CICI', 'CICI', 'CICI', 'CICI', null, 'USD', null, '我妻由乃', null, null, null, null, null, '293', '2017-11-07', '0', null, '347', 'CICI');
INSERT INTO `ams_account` VALUES ('161', 'VCVC账套', 'VCVC', 'VCVC', 'VCVC', 'VCVC', null, 'USD', null, '五河琴里', null, null, null, null, null, '294', '2017-11-07', '0', null, '348', 'VCVC');
INSERT INTO `ams_account` VALUES ('162', 'VCVC账套', 'VCVC', 'VCVC', 'VCVC', 'VCVC', null, 'USD', null, '五河琴里', null, null, null, null, null, '294', '2017-11-07', '0', null, '348', 'VCVC');
INSERT INTO `ams_account` VALUES ('163', '私募基金账套', 'LRSM', '立荣私募基金', 'LRSM', '私募基金', null, 'USD', null, '成小小', null, null, null, null, null, '295', '2017-11-07', '0', null, '349', 'LRSM');
INSERT INTO `ams_account` VALUES ('164', '知行思远账套', 'QWEW', '知行思远信息技术有限公司', 'IKATS', '知行思远', null, 'USD', null, 'MM马', null, null, null, null, null, '302', '2017-11-09', '0', null, '365', 'QWEW');
INSERT INTO `ams_account` VALUES ('165', 'CPOH账套', 'CPOH', 'CPOH', 'CPOH', 'CPOH', null, 'USD', null, 'DesJoker', null, null, null, null, null, '320', '2017-11-10', '0', null, '369', 'CPOH');
INSERT INTO `ams_account` VALUES ('166', 'LBC账套', 'LBGS', '李白的公司', 'LibaiCompony', 'LBC', null, 'USD', null, '郄凯霞', null, null, null, null, null, '321', '2017-11-10', '0', null, '370', 'LBGS');
INSERT INTO `ams_account` VALUES ('167', 'ASDF账套', 'ASDJ', 'ASDF', 'ASDF', 'ASDF', null, 'USD', null, 'ASD', null, null, null, null, null, '322', '2017-11-10', '0', null, '372', 'ASDJ');
INSERT INTO `ams_account` VALUES ('168', 'ASDF账套', 'ASDJ', 'ASDF', 'ASDF', 'ASDF', null, 'CNY', null, 'ASD', null, null, null, null, null, '322', '2017-11-10', '0', null, '372', 'ASDJ');
INSERT INTO `ams_account` VALUES ('169', '软通动力账套', 'QAZX', '软通动力信息技术（集团）有限公司', 'isoftstone', '软通动力', null, 'USD', null, '王文倩', null, null, null, null, null, '323', '2017-11-10', '0', null, '378', 'QAZX');
INSERT INTO `ams_account` VALUES ('170', '天喜堂账套', 'POLK', '天喜堂信息技术有限公司', 'tianxitang', '天喜堂', null, 'USD', null, '张小宝', null, null, null, null, null, '324', '2017-11-10', '0', null, '379', 'POLK');
INSERT INTO `ams_account` VALUES ('171', '知行思远账套', 'WWEE', '知行思远信息技术有限公司', 'ikats', '知行思远', null, 'USD', null, '马辉', null, null, null, null, null, '325', '2017-11-10', '0', null, '381', 'WWEE');
INSERT INTO `ams_account` VALUES ('172', '博雅科技账套', 'IJNM', '博雅科技商务有限公司', 'BYKJ', '博雅科技', null, 'USD', null, '张晓云', '1850017898', null, null, null, null, '332', '2017-11-24', '0', null, '390', 'IJNM');
INSERT INTO `ams_account` VALUES ('173', '意尚账套', 'YSSC', '意尚商城', 'E-Fasion', '意尚', null, 'USD', null, '李昕海', null, null, null, null, null, '340', '2017-12-06', '0', null, '392', 'YSSC');
INSERT INTO `ams_account` VALUES ('174', '意尚账套', 'YSSC', '意尚商城', 'E-Fasion', '意尚', null, 'USD', null, '李昕海', null, null, null, null, null, '340', '2017-12-06', '0', null, '392', 'YSSC');
INSERT INTO `ams_account` VALUES ('175', 'leco账套', 'LECO', '乐扣乐扣', 'lecoleco', 'leco', null, 'USD', null, '乐扣', null, null, null, null, null, '341', '2017-12-06', '0', null, '393', 'LECO');
INSERT INTO `ams_account` VALUES ('176', '启明星账套', 'PORP', '启明星信息技术有限公司', 'Star', '启明星', null, 'USD', null, '芳芳', null, null, null, null, null, '344', '2017-12-11', '0', null, '394', 'PORP');
INSERT INTO `ams_account` VALUES ('177', '塔米账套', 'SIBL', '北京塔米科技有限公司', 'TMKJ', '塔米', null, 'USD', null, '多多', null, null, null, null, null, '345', '2017-12-11', '0', null, '395', 'SIBL');
INSERT INTO `ams_account` VALUES ('178', 'ORG账套', 'ZVOP', '紫罗兰永恒花园', 'Fucking ORG', 'ORG', null, 'USD', null, '紫罗兰', null, null, null, null, null, '363', '2017-12-19', '0', null, '397', 'ZVOP');
INSERT INTO `ams_account` VALUES ('179', '安信立融账套', 'QAZW', '安信立融信息技术有限公司', 'anxinlirong', '安信立融', null, 'USD', null, '罗总', null, null, null, null, null, '365', '2017-12-19', '0', null, '399', 'QAZW');
INSERT INTO `ams_account` VALUES ('180', '爱丽丝账套', 'ALIC', '爱丽丝时尚有限公司', 'Alice In Style Compony', '爱丽丝', null, 'USD', null, 'Alice', null, null, null, null, null, '367', '2017-12-25', '0', null, '400', 'ALIC');
INSERT INTO `ams_account` VALUES ('181', '中外运香港仓账套', 'HKES', '中外运股份有限公司香港仓', 'eSinotrans HK', '中外运香港仓', null, 'USD', null, '陈政康', null, null, null, null, null, '369', '2018-01-11', '0', null, '401', 'HKES');
INSERT INTO `ams_account` VALUES ('182', 'YSSJ账套', 'VCMV', '原始世纪保健品', 'YSSJ', 'YSSJ', null, 'USD', null, '袁源', null, null, null, null, null, '371', '2018-03-14', '0', null, '402', 'VCMV');

-- ----------------------------
-- Table structure for ams_accountitem
-- ----------------------------
DROP TABLE IF EXISTS `ams_accountitem`;
CREATE TABLE `ams_accountitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(20) DEFAULT NULL COMMENT '明细编码\r\n',
  `category_level1_code` varchar(20) DEFAULT NULL COMMENT '费用类别\n',
  `category_level2_code` varchar(20) DEFAULT NULL COMMENT '费用明细\n',
  `category_code` varchar(20) DEFAULT NULL COMMENT '记账科目编码\r\n',
  `settlement_object_id` varchar(30) DEFAULT NULL COMMENT '结算对象编码\r\n',
  `settle_type` varchar(1) DEFAULT NULL COMMENT '结算类型\r\n',
  `currency` varchar(3) DEFAULT NULL COMMENT '交易币种\r\n',
  `creator` varchar(20) DEFAULT NULL COMMENT '创建人\r\n',
  `modified_by` varchar(20) DEFAULT NULL COMMENT '修改人\r\n',
  `auditor` varchar(20) DEFAULT NULL COMMENT '审批人\r\n',
  `ref_no` varchar(20) DEFAULT NULL COMMENT '业务编码',
  `note` text COMMENT '备注\r\n',
  `attachement` varchar(100) DEFAULT NULL COMMENT '附件\r\n',
  `df` varchar(1) DEFAULT NULL COMMENT '状态:0存在,1已删除',
  `status` int(11) DEFAULT NULL COMMENT '明细状态:0 失效/删除,1 新增,2 已修改,3 已审核,4 已生成账单,5 已开票,6 已结款',
  `in_out` varchar(1) DEFAULT NULL COMMENT '收入支出 ps:I-收入;O-支出',
  `org_id` int(11) DEFAULT NULL COMMENT '组织id\n',
  `trade_time` date DEFAULT NULL COMMENT '交易时间',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  `modify_time` date DEFAULT NULL COMMENT '修改时间',
  `audit_time` date DEFAULT NULL COMMENT '审批时间',
  `trade_unit` varchar(10) DEFAULT NULL COMMENT '交易单位',
  `count` decimal(10,2) DEFAULT NULL COMMENT '交易数量',
  `business_type` varchar(50) DEFAULT NULL COMMENT '业务类型',
  `account_currency` varchar(3) DEFAULT NULL COMMENT '账套币种',
  `settlement_currency` varchar(3) DEFAULT NULL COMMENT '结算对象币种',
  `account_id` varchar(4) DEFAULT NULL COMMENT '账套编码[org_code]',
  `settlement_object_name` varchar(50) DEFAULT NULL COMMENT '结算对象中文名',
  `bill_no` varchar(50) DEFAULT NULL COMMENT '账单号',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '交易金额',
  `settelment_amount` decimal(10,2) DEFAULT NULL COMMENT '结算金额',
  `unit_price` decimal(10,2) DEFAULT NULL COMMENT '交易单价',
  `exchange_rate` decimal(10,5) DEFAULT NULL COMMENT '汇率',
  `my_exchange_rate` decimal(10,5) DEFAULT NULL COMMENT '自定义的汇率',
  `account_brief` varchar(20) DEFAULT NULL COMMENT '交易概要/简称',
  `category_level1_name` varchar(20) DEFAULT NULL COMMENT '费用类别名称',
  `category_level2_name` varchar(20) DEFAULT NULL COMMENT '费用明细名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=576 DEFAULT CHARSET=utf8 COMMENT='记账明细';

-- ----------------------------
-- Records of ams_accountitem
-- ----------------------------
INSERT INTO `ams_accountitem` VALUES ('60', '2017092014364058789', '44', '45', null, '16', '1', 'CNY', '53', null, null, '0233232', '3355', null, '0', '1', '1', '14', '2017-09-22', '2017-09-20', null, null, null, null, 'B2C', 'USD', 'USD', 'WAWJ', '知行思远信息技术有限公司', null, '355.00', '54.07', null, '0.15230', '0.15230', '344', '服装', 'only');
INSERT INTO `ams_accountitem` VALUES ('62', '2017092014594193702', '46', '48', null, '广百荟信息技术', '1', 'CNY', '57', '57', '57', 'XY0001', '奥斯卡奖给你最适合不过啦', null, '0', '3', '1', '4', '2017-09-19', '2017-09-20', '2017-09-20', '2017-09-20', null, null, 'B2C', 'USD', 'USD', 'WSXC', '广百荟信息技术', null, '100.00', '15.23', null, '0.15226', '0.15226', '入库消遣费用', '运费', '入库运费');
INSERT INTO `ams_accountitem` VALUES ('63', '2017092015041095404', '46', '47', null, '18', '1', 'CNY', '57', null, '57', 'XY0001', '撒打开就好噶啥', null, '0', '3', '1', '4', '2017-09-21', '2017-09-20', null, '2017-09-20', null, null, 'B2C', 'USD', 'USD', 'WSXC', '广百荟信息技术', null, '98.00', '14.92', null, '0.15226', '0.15226', '98运费太贵了', '运费', '出库运费');
INSERT INTO `ams_accountitem` VALUES ('64', '201709201508313450', '46', '47', null, '17', '1', 'CNY', '57', null, '57', 'XY0002', 'nonono', null, '0', '4', '1', '4', '2017-09-19', '2017-09-20', null, '2017-09-20', null, '0.00', 'B2C', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', '154', '20.00', '3.05', '0.00', '0.15226', '0.15226', null, '运费', '运费');
INSERT INTO `ams_accountitem` VALUES ('65', '201709201508313450', '46', '48', null, '17', '1', 'USD', '57', null, '57', 'XY0002', 'yes', null, '0', '4', '1', '4', '2017-09-19', '2017-09-20', null, '2017-09-20', null, '0.00', 'B2C', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', '154', '400.00', '400.00', '0.00', '1.00000', '1.00000', null, '运费', '运费');
INSERT INTO `ams_accountitem` VALUES ('66', '201709201508313450', '46', '48', null, '17', '1', 'EUR', '57', null, '57', 'XY0002', '耀武扬威', null, '0', '4', '1', '4', '2017-09-19', '2017-09-20', null, '2017-09-20', null, '0.00', 'B2C', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', '154', '200.00', '240.12', '0.00', '1.20062', '1.20062', null, '运费', '运费');
INSERT INTO `ams_accountitem` VALUES ('67', '201709201508313450', '46', '47', null, '17', '1', 'CNY', '57', null, '57', 'XY0002', '哦掉I', null, '0', '4', '0', '4', '2017-09-19', '2017-09-20', null, '2017-09-20', null, '0.00', 'B2C', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', '155', '500.00', '76.13', '0.00', '0.15226', '0.15226', null, '运费', '运费');
INSERT INTO `ams_accountitem` VALUES ('68', '201709201508313450', null, null, null, '17', '1', 'CNY', '57', null, '57', 'XY0002', '12发生的', null, '0', '4', '0', '4', '2017-09-19', '2017-09-20', null, '2017-09-20', null, '0.00', 'B2C', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', '155', '900.00', '137.03', '0.00', '0.15226', '0.15226', null, '运费', '运费');
INSERT INTO `ams_accountitem` VALUES ('69', '201709201508313450', '46', '48', null, '17', '1', 'CNY', '57', null, '57', 'XY0002', '发V中', null, '0', '4', '0', '4', '2017-09-19', '2017-09-20', null, '2017-09-20', null, '0.00', 'B2C', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', '155', '800.00', '121.81', '0.00', '0.15226', '0.15226', null, '运费', '运费');
INSERT INTO `ams_accountitem` VALUES ('76', '2017092015515694142', '44', '45', null, '16', '1', 'CNY', '53', null, null, '4324', '32', null, '0', '1', '1', '14', '2017-09-21', '2017-09-20', null, null, null, null, 'B2C', 'USD', 'USD', 'WAWJ', '知行思远信息技术有限公司', null, '233.00', '35.46', null, '0.15218', null, null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('77', '2017092015515694142', '44', '45', null, '16', '1', 'CNY', '53', null, '53', '4324', '434', null, '0', '3', '1', '14', '2017-09-21', '2017-09-20', null, '2017-09-20', null, null, 'B2C', 'USD', 'USD', 'WAWJ', '知行思远信息技术有限公司', null, '4354.00', '662.57', null, '0.15218', null, null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('78', '2017092015515694142', '44', '45', null, '16', '1', 'EUR', '53', null, null, '4324', '34', null, '0', '1', '0', '14', '2017-09-22', '2017-09-20', null, null, null, null, 'B2C', 'USD', 'USD', 'WAWJ', '知行思远信息技术有限公司', null, '34.00', '40.81', null, '1.20034', null, null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('79', '2017092015515694142', '44', '45', null, '16', '1', 'AUD', '53', null, '53', '4324', '33', null, '0', '3', '0', '14', '2017-09-27', '2017-09-20', null, '2017-09-20', null, null, 'B2C', 'USD', 'USD', 'WAWJ', '知行思远信息技术有限公司', null, '233.00', '187.27', null, '0.80373', null, null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('80', '2017092015551523127', '44', '45', null, '16', '0', 'CNY', '53', null, '53', '245', '345', null, '0', '3', '1', '14', '2017-09-21', '2017-09-20', null, '2017-09-20', null, null, 'B2C', 'USD', 'USD', 'WAWJ', '知行思远信息技术有限公司', null, '345.00', '52.50', null, '0.15218', '0.15218', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('81', '2017092015551523127', '44', '45', null, '16', '1', 'CNY', '53', null, null, '245', '345', null, '0', '1', '0', '14', '2017-09-21', '2017-09-20', null, null, null, null, 'B2C', 'USD', 'USD', 'WAWJ', '知行思远信息技术有限公司', null, '345.00', '52.50', null, '0.15218', '0.15218', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('82', '2017092016091458936', '46', '48', null, '17', '1', 'EUR', '57', null, null, 'XY0004', '1212', null, '0', '1', '1', '4', '2017-09-21', '2017-09-20', null, null, null, null, 'B2G', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', null, '100.00', '120.05', null, '1.20048', '1.20048', null, '运费', '运费');
INSERT INTO `ams_accountitem` VALUES ('83', '2017092016091458936', '46', '47', null, '17', '0', 'CNY', '57', null, null, 'XY0004', '213', null, '0', '1', '1', '4', '2017-09-20', '2017-09-20', null, null, null, null, 'B2G', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', null, '1002.00', '152.48', null, '0.15218', '0.15218', null, '运费', '运费');
INSERT INTO `ams_accountitem` VALUES ('84', '2017092016091458936', '46', '47', null, '17', '1', 'CNY', '57', null, null, 'XY0004', '234234', null, '0', '1', '1', '4', '2017-09-20', '2017-09-20', null, null, null, null, 'B2G', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', null, '232.00', '35.31', null, '0.15218', '0.15218', null, '运费', '运费');
INSERT INTO `ams_accountitem` VALUES ('85', '2017092016091458936', '46', '47', null, '17', '1', 'CNY', '57', null, null, 'XY0004', null, null, '0', '1', '0', '4', '2017-09-20', '2017-09-20', null, null, null, null, 'B2G', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', null, '89.00', '13.54', null, '0.15218', '0.15218', null, '运费', '运费');
INSERT INTO `ams_accountitem` VALUES ('91', '2017092018492439049', '139', '141', null, '15', '1', 'CNY', '52', null, '52', '2334', null, null, '0', '4', '1', '116', '2017-09-20', '2017-09-20', null, '2017-09-20', null, '0.00', 'B2B', 'USD', 'USD', 'AAAA', '网易', '163', '235424.00', '35821.64', '0.00', '0.15216', '0.15216', null, '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('92', '2017092018500728764', '44', '45', null, '13', '1', 'CNY', '53', null, '53', '134', '234', null, '0', '3', '1', '14', '2017-09-22', '2017-09-20', null, '2017-09-20', null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '234.00', '35.60', null, '0.15216', '0.15216', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('93', '2017092018500728764', '44', '45', null, '13', '1', 'EUR', '53', null, '53', '134', '234', null, '0', '3', '0', '14', '2017-09-29', '2017-09-20', null, '2017-09-20', null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '234.00', '281.01', null, '1.20091', '1.20091', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('94', '2017092018515925814', '139', '141', null, '14', '1', 'CNY', '52', null, '52', '23535', null, null, '0', '4', '1', '116', '2017-09-13', '2017-09-20', null, '2017-09-20', null, '0.00', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', '164', '353454.00', '53780.85', '0.00', '0.15216', '0.15216', null, '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('95', '2017092018525774752', '44', '45', null, '11', '1', 'GBP', '53', null, '53', '254', '345', null, '0', '4', '1', '14', '2017-09-22', '2017-09-20', null, '2017-09-20', null, '0.00', 'B2B', 'USD', 'USD', 'WAWJ', '网易慧慧', '165', '345.00', '466.78', '0.00', '1.35300', '1.35300', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('96', '2017092018525774752', '44', '45', null, '11', '1', 'HKD', '53', null, '53', '254', '345', null, '0', '4', '1', '14', '2017-09-29', '2017-09-20', null, '2017-09-20', null, '0.00', 'B2B', 'USD', 'USD', 'WAWJ', '网易慧慧', '165', '345.00', '44.21', '0.00', '0.12814', '0.12814', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('97', '2017092018525774752', '44', '45', null, '11', '1', 'GBP', '53', null, '53', '254', '3244', null, '0', '4', '1', '14', '2017-09-22', '2017-09-20', null, '2017-09-20', null, '0.00', 'B2B', 'USD', 'USD', 'WAWJ', '网易慧慧', '165', '4324.00', '5850.36', '0.00', '1.35300', '1.35300', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('98', '2017092018525774752', '44', '45', null, '11', '1', 'GBP', '53', null, '53', '254', '324', null, '0', '4', '0', '14', '2017-09-29', '2017-09-20', null, '2017-09-20', null, '0.00', 'B2B', 'USD', 'USD', 'WAWJ', '网易慧慧', '165', '234.00', '316.60', '0.00', '1.35300', '1.35300', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('99', '2017092018525774752', '44', '45', null, '11', '1', 'HKD', '53', null, '53', '254', '3244', null, '0', '4', '0', '14', '2017-09-29', '2017-09-20', null, '2017-09-20', null, '0.00', 'B2B', 'USD', 'USD', 'WAWJ', '网易慧慧', '165', '23.00', '2.95', '0.00', '0.12814', '0.12814', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('100', '2017092018533299728', '109', '110', null, '17', '1', 'CNY', '57', null, null, 'XT000011', '1211212', null, '0', '1', '1', '4', '2017-09-20', '2017-09-20', null, null, null, null, 'B2C', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', null, '100.00', '15.22', null, '0.15316', '0.15216', null, '入倉費用', '入倉費用');
INSERT INTO `ams_accountitem` VALUES ('101', '2017092018533299728', '118', '119', null, '17', '1', 'HKD', '57', null, null, 'XT000011', '123123', null, '1', '1', '1', '4', '2017-09-28', '2017-09-20', null, null, null, null, 'B2C', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', null, '200.00', '25.63', null, '0.12814', '0.12814', null, '仓租费用', '仓租费用');
INSERT INTO `ams_accountitem` VALUES ('102', '2017092018533299728', null, null, null, '17', null, null, '57', null, null, 'XT000011', null, null, '1', '1', '0', '4', null, '2017-09-20', null, null, null, null, 'B2C', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司你好', null, null, null, null, null, null, null, null, null);
INSERT INTO `ams_accountitem` VALUES ('103', '2017092018545122211', '118', '119', null, '18', '1', 'CNY', '57', null, null, 'XT00002', null, null, '0', '1', '1', '4', '2017-09-20', '2017-09-20', null, null, null, null, 'B2C', 'USD', 'USD', 'WSXC', '广百荟信息技术', null, '100.00', '15.22', null, '0.15216', '0.15216', null, '仓租费用', '仓租费用');
INSERT INTO `ams_accountitem` VALUES ('104', '2017092018545122211', '109', '110', null, '18', '1', 'CNY', '57', null, null, 'XT00002', null, null, '0', '1', '1', '4', '2017-09-21', '2017-09-20', null, null, null, null, 'B2C', 'USD', 'USD', 'WSXC', '广百荟信息技术', null, '200.00', '30.43', null, '0.15216', '0.15216', null, '入倉費用', '入倉費用');
INSERT INTO `ams_accountitem` VALUES ('105', '2017092018545122211', null, null, null, '18', null, null, '57', null, null, 'XT00002', null, null, '1', '1', '0', '4', null, '2017-09-20', null, null, null, null, 'B2C', 'USD', 'USD', 'WSXC', '广百荟信息技术', null, null, null, null, null, null, null, null, null);
INSERT INTO `ams_accountitem` VALUES ('106', '2017092018591369393', '44', '45', null, '13', '0', 'CNY', '53', null, null, '4524', null, null, '0', '1', '1', '14', '2017-09-22', '2017-09-20', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '34.00', '5.17', null, '0.15213', '0.15213', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('107', '2017092018591369393', null, null, null, '13', null, null, '53', null, null, '4524', null, null, '1', '1', '0', '14', null, '2017-09-20', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, null, null, null, null, null, null, null, null);
INSERT INTO `ams_accountitem` VALUES ('108', '2017092019004589352', '44', '45', null, '13', '1', 'EUR', '53', null, null, '132', null, null, '0', '1', '1', '14', '2017-09-22', '2017-09-20', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '234.00', '280.98', null, '1.20077', '1.20077', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('109', '2017092019004589352', null, null, null, '13', null, null, '53', null, null, '132', null, null, '1', '1', '0', '14', null, '2017-09-20', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, null, null, null, null, null, null, null, null);
INSERT INTO `ams_accountitem` VALUES ('110', '2017092109490388028', '139', '141', null, '14', '1', 'CNY', '52', null, '52', '23434', null, null, '0', '4', '0', '116', '2017-09-21', '2017-09-21', null, '2017-09-21', null, '0.00', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', '166', '234.00', '35.62', '0.00', '0.15221', '0.15221', null, '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('111', '2017092110493882410', '139', '141', null, '14', '1', 'CNY', '52', null, '52', '2323', null, null, '0', '4', '0', '116', '2017-09-22', '2017-09-21', null, '2017-09-25', null, '0.00', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', '184', '23.00', '3.49', '0.00', '0.15173', '0.15173', null, '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('112', '2017092110510218653', '139', '141', null, '15', '1', 'CNY', '52', null, '52', '324324', null, null, '0', '4', '0', '116', '2017-09-21', '2017-09-21', null, '2017-09-25', null, '0.00', 'B2B', 'USD', 'USD', 'AAAA', '网易', '167', '23443.00', '3556.94', '0.00', '0.15173', '0.15173', null, '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('113', '201709211108317923', '44', '45', null, '13', '0', 'EUR', '53', null, null, '2344', null, null, '0', '1', '1', '14', '2017-09-23', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '234.00', '278.14', null, '1.18864', '1.18864', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('114', '201709211108317923', '44', '45', null, '13', '0', 'CNY', '53', null, null, '2344', null, null, '0', '1', '1', '14', '2017-09-22', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '234.00', '35.52', null, '0.15178', '0.15178', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('115', '201709211108317923', '44', '45', null, '13', '1', 'CNY', '53', null, null, '2344', null, null, '0', '1', '1', '14', '2017-09-22', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '234.00', '35.52', null, '0.15178', '0.15178', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('116', '2017092111105498867', '44', '45', null, '13', '1', 'CNY', '53', null, null, '234', '342', null, '0', '1', '0', '14', '2017-09-22', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '234.00', '35.51', null, '0.15175', '0.15175', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('117', '2017092111112364256', '44', '45', null, '13', '1', 'CNY', '53', null, null, '234', null, null, '0', '1', '1', '14', '2017-09-22', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '234.00', '35.51', null, '0.15175', '0.15175', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('118', '2017092111122239584', '44', '45', null, '13', '1', 'CNY', '53', null, null, '234', null, null, '0', '1', '1', '14', '2017-09-22', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '234.00', '35.51', null, '0.15175', '0.15175', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('119', '2017092111122239584', '44', '45', null, '13', '0', 'AUD', '53', null, null, '234', null, null, '0', '1', '0', '14', '2017-09-20', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '23.00', '18.41', null, '0.80064', '0.80064', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('120', '2017092111125687419', '44', '45', null, '13', '0', 'AUD', '53', null, null, '234', null, null, '0', '1', '0', '14', '2017-09-20', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '23.00', '18.41', null, '0.80064', '0.80064', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('121', '2017092111134550191', '44', '45', null, '13', '1', 'CNY', '53', null, null, '234', null, null, '0', '1', '0', '14', '2017-09-22', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '32.00', '4.86', null, '0.15175', '0.15175', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('122', '2017092111495755544', '44', '45', null, '13', '1', 'CNY', '53', null, null, '314', null, null, '0', '1', '1', '14', '2017-09-20', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '23.00', '3.49', null, '0.15175', '0.15175', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('123', '2017092111504115308', '44', '45', null, '13', '1', 'EUR', '53', null, null, '314', null, null, '0', '1', '1', '14', '2017-09-23', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '23.00', '27.34', null, '1.18878', '1.18878', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('124', '2017092111504115308', '44', '45', null, '13', '1', 'CNY', '53', null, null, '314', null, null, '0', '1', '0', '14', '2017-09-22', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '234.00', '35.51', null, '0.15175', '0.15175', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('125', '2017092111511220279', '44', '45', null, '13', '1', 'EUR', '53', null, null, '314', null, null, '0', '1', '1', '14', '2017-09-23', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '23.00', '27.34', null, '1.18878', '1.18878', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('126', '2017092111511220279', '44', '45', null, '13', '0', 'CNY', '53', null, null, '314', null, null, '0', '1', '0', '14', '2017-09-22', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '233.00', '35.36', null, '0.15175', '0.15175', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('127', '2017092111523547241', '44', '45', null, '13', '1', 'CNY', '53', null, null, '234', null, null, '0', '1', '0', '14', '2017-09-22', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '24.00', '3.64', null, '0.15175', '0.15175', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('128', '2017092111533378162', '44', '45', null, '13', '1', 'CNY', '53', null, null, '234', null, null, '0', '1', '1', '14', '2017-09-22', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '24.00', '3.64', null, '0.15175', '0.15175', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('129', '2017092111533378162', '44', '45', null, '13', '1', 'CNY', '53', null, null, '234', null, null, '0', '1', '0', '14', '2017-09-22', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '24.00', '3.64', null, '0.15175', '0.15175', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('130', '201709211156306017', '44', '45', null, '11', '0', 'CNY', '53', null, null, '234', null, null, '0', '1', '0', '14', '2017-09-20', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '网易慧慧', null, '111.00', '16.85', null, '0.15176', '0.15176', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('131', '2017092111572095182', '44', '45', null, '11', '1', 'AUD', '53', null, null, '234', null, null, '0', '1', '1', '14', '2017-09-22', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '网易慧慧', null, '222.00', '177.63', null, '0.80013', '0.80013', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('132', '2017092111572095182', '44', '45', null, '11', '0', 'CNY', '53', null, null, '234', null, null, '0', '1', '0', '14', '2017-09-20', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '网易慧慧', null, '111.00', '16.85', null, '0.15176', '0.15176', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('133', '2017092113224793871', '44', '45', null, '13', '1', 'CNY', '53', null, null, '4543', null, null, '0', '1', '1', '14', '2017-09-22', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '34.00', '5.16', null, '0.15177', '0.15177', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('134', '2017092113224793871', '44', '45', null, '13', '1', 'CNY', '53', null, null, '4543', null, null, '0', '1', '0', '14', '2017-09-22', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '34.00', '5.16', null, '0.15177', '0.15177', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('135', '2017092113321191458', '44', '45', null, '13', '1', 'EUR', '53', null, null, '3513', null, null, '0', '1', '1', '14', '2017-09-22', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '234.00', '278.11', null, '1.18850', '1.18850', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('136', '2017092113321191458', '44', '45', null, '13', '0', 'CNY', '53', null, null, '3513', null, null, '0', '1', '0', '14', '2017-09-20', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '342.00', '51.91', null, '0.15179', '0.15179', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('137', '201709211332416528', '44', '45', null, '13', '1', 'HKD', '53', null, null, '3513', '234', null, '0', '1', '1', '14', '2017-09-22', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '234.00', '29.98', null, '0.12813', '0.12813', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('138', '2017092113330690653', '44', '45', null, '13', '1', 'CNY', '53', null, null, '3513', null, null, '0', '1', '0', '14', '2017-09-20', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '234.00', '35.52', null, '0.15179', '0.15179', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('139', '201709211333332138', '44', '45', null, '13', '1', 'CNY', '53', null, null, '3513', null, null, '0', '1', '1', '14', '2017-09-22', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '234.00', '35.52', null, '0.15179', '0.15179', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('140', '2017092113392247225', '118', '119', null, '18', '1', 'CNY', '57', null, '57', 'XY0004', null, null, '1', '3', '1', '4', '2017-09-20', '2017-09-21', null, '2017-09-25', null, null, 'B2C', 'USD', 'USD', 'WSXC', '广百荟信息技术', null, '100.00', '15.18', null, '0.15179', '0.15179', null, '仓租费用', '仓租费用');
INSERT INTO `ams_accountitem` VALUES ('141', '2017092113392247225', '115', '116', null, '18', '1', 'AUD', '57', null, '57', 'XY0004', null, null, '0', '3', '1', '4', '2017-09-20', '2017-09-21', null, '2017-09-25', null, null, 'B2C', 'USD', 'USD', 'WSXC', '广百荟信息技术', null, '200.00', '159.62', null, '0.79809', '0.79809', null, '装卸费', '装卸费');
INSERT INTO `ams_accountitem` VALUES ('142', '2017092113395755761', '44', '45', null, '13', '1', 'CNY', '53', null, null, '455', null, null, '0', '1', '1', '14', '2017-09-20', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '344.00', '52.22', null, '0.15179', '0.15179', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('144', '2017092115321493036', '44', '45', null, '11', '1', 'CNY', '53', null, null, '452345', '5443', null, '0', '1', '1', '14', '2017-09-22', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '网易慧慧', null, '345.00', '52.32', null, '0.15166', '0.15166', '344', '服装', 'only');
INSERT INTO `ams_accountitem` VALUES ('145', '2017092115340880796', '44', '45', null, '13', '1', 'EUR', '53', null, null, '1255', null, null, '0', '1', '1', '14', '2017-09-29', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '345.00', '410.23', null, '1.18906', '1.18906', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('146', '2017092115340880796', '44', '45', null, '13', '1', 'EUR', '53', null, null, '1255', null, null, '0', '1', '0', '14', '2017-09-29', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '345.00', '410.23', null, '1.18906', '1.18906', null, '服装', '服装');
INSERT INTO `ams_accountitem` VALUES ('147', '2017092115513032373', '44', '45', null, '13', '1', 'CNY', '53', null, null, '5576', null, null, '0', '1', '1', '14', '2017-09-22', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '67.00', '10.16', null, '0.15168', '0.15168', null, '服装', 'only');
INSERT INTO `ams_accountitem` VALUES ('148', '2017092115513032373', '44', '45', null, '13', '1', 'CNY', '53', null, null, '5576', null, null, '0', '1', '0', '14', '2017-09-29', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '567.00', '86.00', null, '0.15168', '0.15168', null, '服装', 'only');
INSERT INTO `ams_accountitem` VALUES ('149', '2017092115534252805', '44', '45', null, '13', '1', 'CNY', '53', null, null, '3464', '54645', null, '0', '1', '1', '14', '2017-09-23', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '456.00', '69.17', null, '0.15168', '0.15168', '456', '服装', 'only');
INSERT INTO `ams_accountitem` VALUES ('150', '2017092117374528586', '44', '45', null, '13', '1', 'EUR', '53', null, null, '999', '98', null, '0', '1', '1', '14', '2017-09-22', '2017-09-21', null, null, null, null, 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '999.00', '1190.28', null, '1.19147', '1.19147', '000', '服装', 'only');
INSERT INTO `ams_accountitem` VALUES ('151', '2017092514431386730', '139', '141', null, '10', '1', 'CNY', '52', null, '52', '23543546', null, null, '0', '3', '1', '116', '2017-09-14', '2017-09-25', null, '2017-09-25', null, null, 'B2B', 'USD', 'USD', 'AAAA', '圆通快递', null, '2131.00', '322.50', null, '0.15134', '0.15134', '123', '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('152', '2017092514532330916', '139', '141', null, '15', '1', 'CNY', '52', null, '52', '325234', null, null, '0', '4', '1', '116', '2017-09-19', '2017-09-25', null, '2017-09-25', null, '0.00', 'B2B', 'USD', 'USD', 'AAAA', '网易', '189', '234.00', '35.41', '0.00', '0.15134', '0.15134', null, '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('153', '2017092515412613991', '55', '57', null, '22', '1', 'AUD', '9', null, '9', 'QQ3123', '23', null, '0', '4', '1', '134', '2017-09-25', '2017-09-25', null, '2017-09-25', null, '0.00', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', '190', '0.01', '0.01', '0.00', '0.79637', '0.79637', '2312', '装卸费', '出仓装车费');
INSERT INTO `ams_accountitem` VALUES ('154', '2017092515443047716', '139', '141', null, '10', '1', 'AUD', '52', null, '52', '342353', null, null, '0', '4', '1', '116', '2017-09-20', '2017-09-25', null, '2017-09-25', null, '0.00', 'B2B', 'USD', 'USD', 'AAAA', '圆通快递', '191', '34534.00', '27501.81', '0.00', '0.79637', '0.79637', null, '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('155', '2017092515474357159', '139', '141', null, '15', '1', 'AUD', '52', null, '52', '3534544', null, null, '0', '4', '1', '116', '2017-09-19', '2017-09-25', null, '2017-10-17', null, '0.00', 'B2B', 'USD', 'USD', 'AAAA', '网易', '192', '325443.00', '259172.72', '0.00', '0.79637', '0.79637', null, '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('216', '2017101713241860457', '139', '141', null, '14', '1', 'CNY', '52', null, null, '12345634', null, null, '0', '1', '1', '116', '2017-10-18', '2017-10-17', null, null, null, null, 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '12.00', '1.82', null, '0.15149', '0.15149', null, '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('217', '2017101714394079835', '255', '258', null, '53', '0', 'CNY', '213', null, null, '5454', '3333', null, '1', '1', '1', '239', '2017-10-20', '2017-10-17', null, null, null, null, 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '23.00', '3.48', null, '0.15114', '0.15114', '233', '通讯费用', '短信');
INSERT INTO `ams_accountitem` VALUES ('218', '2017101714403830366', '255', '257', null, '55', '1', 'CNY', '213', null, '213', '2535', '24', null, '0', '3', '0', '239', '2017-10-13', '2017-10-17', null, '2017-11-10', null, null, 'B2B', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '24.00', '3.63', null, '0.15114', '1.00000', '234', '通讯费用', '流量');
INSERT INTO `ams_accountitem` VALUES ('219', '2017101714405380760', '255', '257', null, '55', '1', 'CNY', '213', null, '213', '2535', '24', null, '0', '4', '0', '239', '2017-10-13', '2017-10-17', null, '2017-10-17', null, '0.00', 'B2B', 'USD', 'CNY', 'KJNZ', '网易考拉', '235', '24.00', '3.63', '0.00', '0.15114', '1.00000', '234', '通讯费用', '流量');
INSERT INTO `ams_accountitem` VALUES ('220', '2017101714421076943', '255', '258', null, '53', '1', 'CNY', '213', null, '213', '3244', '234', null, '0', '4', '0', '239', '2017-10-13', '2017-10-17', null, '2017-10-17', null, '0.00', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '216', '234.00', '35.37', '0.00', '0.15114', '0.15114', '234', '通讯费用', '短信');
INSERT INTO `ams_accountitem` VALUES ('222', '2017101714433319539', '255', '257', null, '53', '1', 'CNY', '213', null, '213', '424', '3', null, '0', '4', '0', '239', '2017-10-11', '2017-10-17', null, '2017-10-17', null, '0.00', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '216', '34.00', '5.14', '0.00', '0.15114', '0.15114', '34', '通讯费用', '流量');
INSERT INTO `ams_accountitem` VALUES ('224', '2017101715220499851', '139', '141', null, '14', '1', 'CNY', '52', null, null, 'wrwe', null, null, '0', '1', '0', '116', '2017-10-11', '2017-10-17', null, null, null, null, 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', null, '23.00', '3.48', null, '0.15124', '0.15124', null, '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('225', '2017101715220513123', '255', '257', null, '53', '1', 'CNY', '213', null, '213', '535', '345', null, '0', '4', '0', '239', '2017-10-20', '2017-10-17', null, '2017-10-17', null, '0.00', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '218', '345.00', '52.18', '0.00', '0.15124', '0.15124', '345', '通讯费用', '流量');
INSERT INTO `ams_accountitem` VALUES ('226', '2017101715230929345', '139', '141', null, '顺丰快速', '1', 'AUD', '52', '52', null, '234324', null, null, '0', '2', '0', '116', '2017-10-19', '2017-10-17', '2017-10-18', null, null, null, 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', null, '23.00', '18.04', null, '0.78444', '0.78444', null, '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('227', '2017101715231860262', '139', '141', null, '14', '1', 'AUD', '52', null, null, '234324', '23', null, '0', '1', '0', '116', '2017-10-19', '2017-10-17', null, null, null, null, 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', null, '23.00', '18.04', null, '0.78444', '0.78444', '23', '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('228', '2017101715241424784', '139', '141', null, '顺丰快速', '1', 'CNY', '52', '52', null, '2423', null, null, '0', '2', '0', '116', '2017-10-11', '2017-10-17', '2017-10-18', null, null, null, 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '23.00', '3.47', null, '0.15124', '0.15124', null, '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('229', '2017101715264383101', '139', '141', null, '15', '1', 'CNY', '52', null, null, '2432', null, null, '0', '1', '1', '116', '2017-10-18', '2017-10-17', null, null, null, null, 'B2B', 'USD', 'USD', 'AAAA', '网易', null, '23.00', '3.48', null, '0.15127', '0.15127', '', '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('230', '2017101715265465219', '139', '141', null, '15', '1', 'CNY', '52', null, '52', '2432', null, null, '0', '4', '1', '116', '2017-10-18', '2017-10-17', null, '2017-10-17', null, '0.00', 'B2B', 'USD', 'USD', 'AAAA', '网易', '217', '23.00', '3.48', '0.00', '0.15127', '0.15127', '2342', '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('231', '2017101715270114563', '139', '141', null, '15', '1', 'CNY', '52', null, '52', '2432', '234', null, '0', '4', '1', '116', '2017-10-18', '2017-10-17', null, '2017-10-17', null, '0.00', 'B2B', 'USD', 'USD', 'AAAA', '网易', '217', '23.00', '3.48', '0.00', '0.15127', '0.15127', '2342', '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('232', '2017101715273891036', '139', '141', null, '14', '1', 'CNY', '52', null, '52', '234', '243', null, '0', '4', '0', '116', '2017-10-18', '2017-10-17', null, '2017-10-17', null, '0.00', 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', '215', '243.00', '36.76', '0.00', '0.15127', '0.15127', '324', '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('233', '2017101715274339705', '139', '141', null, '14', '1', 'CNY', '52', null, '52', '234', '243', null, '0', '4', '0', '116', '2017-10-18', '2017-10-17', null, '2017-10-18', null, '0.00', 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', '215', '243.00', '36.76', '0.00', '0.15127', '0.15127', '324', '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('234', '2017101715305012029', '255', '257', null, '53', '1', 'CNY', '213', null, '213', '254353', '3434', null, '0', '4', '0', '239', '2017-10-19', '2017-10-17', null, '2017-10-17', null, '0.00', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '218', '34.00', '5.14', '0.00', '0.15127', '0.15127', '34', '通讯费用', '流量');
INSERT INTO `ams_accountitem` VALUES ('236', '2017101715332853635', '176', '178', null, '刀剑', '1', 'AUD', '9', '9', '9', '23342', '备注1234', null, '0', '3', '1', '134', '2017-10-17', '2017-10-17', '2017-10-17', '2017-10-17', null, null, 'B2B', 'USD', 'USD', 'XXXX', '刀剑', null, '2.00', '112.00', null, '0.78524', '0.78524', '概要', '装卸费', '出仓装车费');
INSERT INTO `ams_accountitem` VALUES ('237', '2017101716070841202', '179', '181', null, '22', '1', 'CNY', '9', null, '9', '45634', '12', null, '0', '4', '1', '134', '2017-10-17', '2017-10-17', null, '2017-10-17', null, '0.00', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', '227', '12.00', '1.82', '0.00', '0.15131', '0.15131', '12', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem` VALUES ('238', '2017101716543483576', '259', '261', null, '60', '1', 'USD', '217', null, null, '1', '备注信息', null, '1', '1', '1', '249', '2017-10-17', '2017-10-17', null, null, null, null, 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '100.00', '100.00', null, '1.00000', '1.00000', '交易概要', '水果类目', '香蕉');
INSERT INTO `ams_accountitem` VALUES ('239', '2017101717280626492', '259', '261', null, '大大', '1', 'USD', '217', '217', '217', '00011', '一月一付，一次付清', null, '0', '3', '1', '249', '2017-10-17', '2017-10-17', '2017-10-17', '2017-10-17', null, null, 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '1000.00', '1000.00', null, '1.00000', '1.00000', '一月一付，一次付清', '水果类目', '香蕉');
INSERT INTO `ams_accountitem` VALUES ('240', '2017101717330993185', '259', '261', null, '大大', '1', 'AUD', '217', '217', '217', '02', '1212', null, '0', '3', '1', '249', '2017-10-17', '2017-10-17', '2017-10-17', '2017-10-17', null, null, 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '120.00', '94.29', null, '0.78573', '0.78573', '1212', '水果类目', '香蕉');
INSERT INTO `ams_accountitem` VALUES ('241', '2017101717415412418', '259', '261', null, '大大', '1', 'AUD', '217', '217', '217', '121212', '1212', null, '0', '3', '1', '249', '2017-10-17', '2017-10-17', '2017-10-17', '2017-10-17', null, null, 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '1212.00', '951.93', null, '0.78542', '0.78542', '1212', '水果类目', '香蕉');
INSERT INTO `ams_accountitem` VALUES ('242', '2017101717442978908', '259', '260', null, '56', '1', 'GBP', '217', null, '217', '30', '交易概要  交易概要', null, '0', '4', '0', '249', '2017-10-17', '2017-10-17', null, '2017-10-17', null, '0.00', 'B2B', 'USD', 'USD', 'PLOK', '供应商', '224', '120.00', '159.09', '0.00', '1.32579', '1.32579', '交易概要  交易概要', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem` VALUES ('243', '2017101717472053536', '259', '260', null, '供应商', '1', 'CNY', '217', '217', '217', '31', '交易概要  交易概要会计1', null, '0', '3', '0', '249', '2017-10-17', '2017-10-17', '2017-10-17', '2017-10-17', null, null, 'B2B', 'USD', 'USD', 'PLOK', '供应商', null, '123.00', '18.59', null, '0.15114', '0.15114', '交易概要  交易概要', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem` VALUES ('244', '2017101717533634657', '170', '171', null, '刀剑', '1', 'JPY', '9', '9', null, '87654', '141211', null, '1', '2', '1', '134', '2017-10-17', '2017-10-17', '2017-10-17', null, null, null, 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '222.00', '1.98', null, '0.00892', '0.00892', '12134', '入倉費用', '入閘費');
INSERT INTO `ams_accountitem` VALUES ('245', '2017101717562231809', '255', '257', null, '53', '1', 'CNY', '213', null, '213', '4424', '234234', null, '0', '4', '1', '239', '2017-10-12', '2017-10-17', null, '2017-10-17', null, '0.00', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '233', '234.00', '35.36', '0.00', '0.15111', '0.15111', '234', '通讯费用', '流量');
INSERT INTO `ams_accountitem` VALUES ('246', '2017101717584966067', '255', '257', null, '韩衣控-中国', '1', 'CNY', '213', '213', '213', '002', '122234', null, '0', '3', '1', '239', '2017-10-19', '2017-10-17', '2017-10-17', '2017-10-17', null, null, 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '12.00', '1.81', null, '0.15111', '0.15111', '12', '通讯费用', '流量');
INSERT INTO `ams_accountitem` VALUES ('247', '2017101717591474835', '182', '198', null, '刀剑', '1', 'EUR', '9', '9', null, '987654', '3121212qwe', null, '0', '2', '1', '134', '2017-10-17', '2017-10-17', '2017-10-17', null, null, null, 'B2B', 'USD', 'USD', 'XXXX', '刀剑', null, '23412.00', '27540.28', null, '1.17633', '1.17633', '123412', '增值服务', 'Toll FEE');
INSERT INTO `ams_accountitem` VALUES ('248', '2017101718024184122', '259', '260', null, '供应商', '1', 'AUD', '217', '217', '217', '331', '交易概要、交易概要1', null, '0', '3', '0', '249', '2017-10-17', '2017-10-17', '2017-10-17', '2017-10-17', null, null, 'B2B', 'USD', 'USD', 'PLOK', '供应商', null, '1123.00', '882.17', null, '0.78555', '0.78555', '交易概要1', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem` VALUES ('249', '2017101718122850551', '255', '257', null, '53', '1', 'CNY', '213', null, null, '3442', '234', null, '1', '1', '0', '239', '2017-10-27', '2017-10-17', null, null, null, null, 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '234.00', '35.36', null, '0.15111', '0.15111', '234', '通讯费用', '流量');
INSERT INTO `ams_accountitem` VALUES ('250', '2017101718154596389', '259', '261', null, '60', '0', 'CNY', '217', null, '217', '13', '121212', null, '0', '3', '1', '249', '2017-10-17', '2017-10-17', null, '2017-10-17', null, null, 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '1212.00', '183.15', null, '0.15111', '0.15111', '121212', '水果类目', '香蕉');
INSERT INTO `ams_accountitem` VALUES ('251', '2017101718213935597', '176', '177', null, '58', '1', 'CNY', '9', null, '9', '243564', 'WWW', null, '0', '4', '1', '134', '2017-10-17', '2017-10-17', null, '2017-10-17', null, '0.00', 'B2C', 'USD', 'USD', 'XXXX', '12', '226', '233.00', '35.21', '0.00', '0.15111', '0.15111', 'WWWW', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem` VALUES ('252', '2017101718240250483', '179', '180', null, '59', '1', 'AUD', '9', null, '9', '75642', '12412Q4', null, '0', '4', '1', '134', '2017-10-17', '2017-10-17', null, '2017-10-17', null, '0.00', 'B2C', 'USD', 'USD', 'XXXX', '12312', '228', '12.00', '9.42', '0.00', '0.78475', '0.78475', '1234123', '仓租费用', '常温区');
INSERT INTO `ams_accountitem` VALUES ('253', '2017101718260660268', '182', '199', null, '58', '1', 'AUD', '9', null, '9', '123', '121212', null, '0', '4', '0', '134', '2017-10-17', '2017-10-17', null, '2017-10-17', null, '0.00', 'B2B', 'USD', 'USD', 'XXXX', '12', '226', '1212.00', '951.11', '0.00', '0.78475', '0.78475', '1212', '增值服务', '包材费用');
INSERT INTO `ams_accountitem` VALUES ('254', '2017101718274263292', '259', '261', null, '54', '1', 'AUD', '217', null, '217', '12212', '21323324', null, '0', '4', '0', '249', '2017-10-17', '2017-10-17', null, '2017-10-17', null, '0.00', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', '220', '12121.00', '9511.89', '0.00', '0.78475', '0.78475', '121', '水果类目', '香蕉');
INSERT INTO `ams_accountitem` VALUES ('255', '2017101718283826245', '259', '261', null, '54', '1', 'EUR', '217', null, '217', '1212', '12121212', null, '0', '4', '0', '249', '2017-10-17', '2017-10-17', null, '2017-10-17', null, '0.00', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', '220', '1212.00', '1425.55', '0.00', '1.17619', '1.17619', '121212', '水果类目', '香蕉');
INSERT INTO `ams_accountitem` VALUES ('256', '2017101718382062776', '139', '141', null, '顺丰快速', '1', 'CNY', '52', '52', '52', '123123', 'sfdsfdf', null, '0', '3', '1', '116', '2017-10-18', '2017-10-17', '2017-10-18', '2017-10-18', null, null, 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '23.00', '3.48', null, '0.15112', '0.15112', '24234', '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('257', '2017101718464585270', '255', '258', null, '55', '0', 'CNY', '213', null, '213', '25', '35', null, '0', '3', '1', '239', '2017-10-20', '2017-10-17', null, '2017-10-26', null, null, 'B2C', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '345.00', '52.13', null, '0.15111', '1.00000', '345', '通讯费用', '短信');
INSERT INTO `ams_accountitem` VALUES ('258', '2017101718505546517', '139', '141', null, '顺丰快速', '1', 'CNY', '52', '52', '52', '324', '234', null, '0', '3', '1', '116', '2017-10-18', '2017-10-17', '2017-10-18', '2017-10-18', null, null, 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '12.00', '1.81', null, '0.15111', '0.15111', '234', '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('259', '2017101809342655028', '259', '261', null, '57', '1', 'CNY', '217', null, '217', '123', null, null, '0', '4', '1', '249', '2017-10-18', '2017-10-18', null, '2017-10-18', null, '0.00', 'B2B', 'USD', 'USD', 'PLOK', '搬东西', '219', '123.00', '18.57', '0.00', '0.15101', '0.15101', '交易概要', '水果类目', '香蕉');
INSERT INTO `ams_accountitem` VALUES ('260', '2017101809481658467', '255', '257', null, '53', '1', 'CNY', '213', null, '213', '45345', '345', null, '0', '4', '0', '239', '2017-10-13', '2017-10-18', null, '2017-10-26', null, '0.00', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '236', '345.00', '52.19', '0.00', '0.15129', '0.15129', '345', '通讯费用', '流量');
INSERT INTO `ams_accountitem` VALUES ('261', '2017101810204175069', '259', '260', null, '56', '1', 'CNY', '217', null, '217', '76543', '123124', null, '0', '4', '0', '249', '2017-10-18', '2017-10-18', null, '2017-10-18', null, '0.00', 'B2B', 'USD', 'USD', 'PLOK', '供应商', '224', '87654.00', '13265.99', '0.00', '0.15135', '0.15135', '345', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem` VALUES ('262', '2017101810465629218', '259', '261', null, '45', '1', 'AUD', '217', null, null, '123321', '123', null, '0', '1', '1', '249', '2017-10-18', '2017-10-18', null, null, null, null, 'B2B', 'USD', 'USD', 'PLOK', '张三', null, '123.00', '96.61', null, '0.78548', '0.78548', null, '水果类目', '香蕉');
INSERT INTO `ams_accountitem` VALUES ('263', '2017101810465629218', null, null, null, '45', '1', 'EUR', '217', null, '217', '123321', '234', null, '0', '4', '0', '249', '2017-10-26', '2017-10-18', null, '2017-10-18', null, '0.00', 'B2B', 'USD', 'USD', 'PLOK', '张三', '221', '234.00', '275.55', '0.00', '1.17758', '1.17758', null, '水果类目', '水果苹果');
INSERT INTO `ams_accountitem` VALUES ('264', '2017101810465629218', '259', '260', null, '45', '1', 'JPY', '217', null, '217', '123321', '345', null, '0', '4', '0', '249', '2017-10-20', '2017-10-18', null, '2017-10-18', null, '0.00', 'B2B', 'USD', 'USD', 'PLOK', '张三', '221', '345.00', '3.08', '0.00', '0.00891', '0.00891', null, '水果类目', '水果苹果');
INSERT INTO `ams_accountitem` VALUES ('265', '2017101810480674507', '255', '257', null, '53', '1', 'CNY', '213', null, '213', '124', '234', null, '0', '4', '1', '239', '2017-10-19', '2017-10-18', null, '2017-10-26', null, '0.00', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '236', '23.00', '3.48', '0.00', '0.15131', '0.15131', '234', '通讯费用', '流量');
INSERT INTO `ams_accountitem` VALUES ('266', '2017101810554443597', '259', '261', null, '45', '1', 'CNY', '217', null, '217', '12345678', '456', null, '0', '3', '1', '249', '2017-10-18', '2017-10-18', null, '2017-10-18', null, null, 'B2B', 'USD', 'USD', 'PLOK', '张三', null, '456.00', '68.99', null, '0.15129', null, null, '水果类目', '香蕉');
INSERT INTO `ams_accountitem` VALUES ('267', '2017101810554443597', '259', '260', null, '45', '1', 'HKD', '217', null, '217', '12345678', '567', null, '0', '3', '0', '249', '2017-10-27', '2017-10-18', null, '2017-10-18', null, null, 'B2B', 'USD', 'USD', 'PLOK', '张三', null, '567.00', '72.64', null, '0.12811', null, null, '水果类目', '水果苹果');
INSERT INTO `ams_accountitem` VALUES ('268', '2017101810554443597', '259', '260', null, '45', '1', 'GBP', '217', null, '217', '12345678', '678', null, '0', '3', '0', '249', '2017-10-26', '2017-10-18', null, '2017-10-18', null, null, 'B2B', 'USD', 'USD', 'PLOK', '张三', null, '678.00', '894.40', null, '1.31917', null, null, '水果类目', '水果苹果');
INSERT INTO `ams_accountitem` VALUES ('269', '2017101811065337307', '182', '197', null, '刀剑', '1', 'CNY', '9', '9', '9', '5468754', '备注新', null, '0', '3', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', '2017-10-18', null, null, 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '234.00', '35.40', null, '0.15129', '0.15129', '213421', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem` VALUES ('270', '2017101811071592048', '255', '258', null, '韩衣控-中国', '0', 'CNY', '213', '213', null, '3253', '5352323232322323', null, '1', '2', '1', '239', '2017-10-19', '2017-10-18', '2017-10-18', null, null, null, 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '35.00', '5.30', null, '0.15129', '0.15117', '34', '通讯费用', '短信');
INSERT INTO `ams_accountitem` VALUES ('271', '2017101811240491481', '259', '261', null, '61', '1', 'AUD', '217', null, '217', 'YWBM1', '100', null, '0', '4', '1', '249', '2017-10-18', '2017-10-18', null, '2017-10-18', null, '0.00', 'B2B', 'USD', 'GBP', 'PLOK', '老李123', '222', '100.00', '78.51', '0.00', '0.78511', '0.59512', null, '水果类目', '香蕉');
INSERT INTO `ams_accountitem` VALUES ('272', '2017101811240491481', '259', '261', null, '61', '1', 'CNY', '217', null, '217', 'YWBM1', '200', null, '0', '4', '1', '249', '2017-10-19', '2017-10-18', null, '2017-10-18', null, '0.00', 'B2B', 'USD', 'GBP', 'PLOK', '老李123', '222', '200.00', '30.26', '0.00', '0.15129', '0.11468', null, '水果类目', '香蕉');
INSERT INTO `ams_accountitem` VALUES ('273', '2017101811240491481', '259', '260', null, '61', '1', 'EUR', '217', null, '217', 'YWBM1', '300', null, '0', '4', '0', '249', '2017-10-26', '2017-10-18', null, '2017-10-18', null, '0.00', 'B2B', 'USD', 'GBP', 'PLOK', '老李123', '222', '300.00', '353.19', '0.00', '1.17630', '0.89240', null, '水果类目', '水果苹果');
INSERT INTO `ams_accountitem` VALUES ('274', '2017101811240491481', '259', '260', null, '61', '1', 'GBP', '217', null, '217', 'YWBM1', '400', null, '0', '4', '0', '249', '2017-10-28', '2017-10-18', null, '2017-10-18', null, '0.00', 'B2B', 'USD', 'GBP', 'PLOK', '老李123', '222', '400.00', '527.70', '0.00', '1.31926', '1.00000', null, '水果类目', '水果苹果');
INSERT INTO `ams_accountitem` VALUES ('275', '2017101812541255775', '182', '194', null, '刀剑', '1', 'CNY', '9', '9', null, '87654', '1231', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '123.00', '18.61', null, '0.15130', '0.15130', '131', '增值服务', '送货/提货');
INSERT INTO `ams_accountitem` VALUES ('276', '2017101812574871480', '182', '188', null, '刀剑', '1', 'CNY', '9', '9', null, '12324234', '123111111', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, 'B2B', 'USD', 'USD', 'XXXX', '刀剑', null, '123.00', '18.61', null, '0.15130', '0.15130', '123', '增值服务', '派送费，偏远地区除外');
INSERT INTO `ams_accountitem` VALUES ('277', '2017101813260273939', '259', '261', null, '61', '0', 'AUD', '217', null, '217', '123', '120', null, '0', '3', '1', '249', '2017-10-19', '2017-10-18', null, '2017-10-18', null, null, 'B3B', 'USD', 'GBP', 'PLOK', '老李123', null, '120.00', '94.18', null, '0.78581', '0.59535', null, '水果类目', '香蕉');
INSERT INTO `ams_accountitem` VALUES ('278', '2017101813260273939', '259', '261', null, '61', '0', 'CNY', '217', null, '217', '123', '1212', null, '0', '3', '0', '249', '2017-10-25', '2017-10-18', null, '2017-10-18', null, null, 'B3B', 'USD', 'GBP', 'PLOK', '老李123', null, '1212.00', '183.21', null, '0.15117', '0.11468', null, '水果类目', '香蕉');
INSERT INTO `ams_accountitem` VALUES ('279', '2017101813355756691', '255', '257', null, '53', '1', 'CNY', '213', '213', null, '2342', '232343', null, '1', '2', '1', '239', '2017-10-04', '2017-10-18', '2017-10-18', null, null, null, 'B2B', 'USD', 'USD', 'KJNZ', '53', null, '23.00', '3.48', null, '0.15117', '0.15119', '23', '通讯费用', '流量');
INSERT INTO `ams_accountitem` VALUES ('280', '201710181340423811', '271', '273', null, '50', '1', 'CNY', '220', null, '220', '1212', '1', null, '0', '4', '1', '251', '2017-10-20', '2017-10-18', null, '2017-10-18', null, '0.00', 'B2C', 'USD', 'USD', 'ZJLS', 'play', '246', '12.00', '1.81', '0.00', '0.15119', '0.15119', null, '仓租费用', '恒温区');
INSERT INTO `ams_accountitem` VALUES ('281', '201710181340423811', '274', '291', null, '50', '1', 'AUD', '220', null, '220', '1212', '2', null, '0', '4', '1', '251', '2017-10-21', '2017-10-18', null, '2017-10-18', null, '0.00', 'B2C', 'USD', 'USD', 'ZJLS', 'play', '223', '33.00', '25.89', '0.00', '0.78444', '0.78444', null, '增值服务', '包材费用');
INSERT INTO `ams_accountitem` VALUES ('282', '201710181340423811', '271', '272', null, 'play', '1', 'CNY', '220', '220', '220', '1212', '1', null, '0', '3', '0', '251', '2017-10-16', '2017-10-18', '2017-10-18', '2017-10-18', null, null, 'B2C', 'USD', 'USD', 'ZJLS', 'play', null, '66.00', '9.98', null, '0.15119', '0.15119', null, '仓租费用', '常温区');
INSERT INTO `ams_accountitem` VALUES ('283', '2017101813442395462', '255', '257', null, '55', '1', 'CNY', '213', '213', null, '2324', '2312', null, '1', '2', '1', '239', '2017-10-19', '2017-10-18', '2017-10-18', null, null, null, 'B2B', 'USD', 'CNY', 'KJNZ', '55', null, '23.00', '3.48', null, '0.15119', '1.00000', '23', '通讯费用', '流量');
INSERT INTO `ams_accountitem` VALUES ('284', '2017101813572210488', '255', '258', null, '53', '1', 'CNY', '213', '213', null, '3324', '23423434', null, '1', '2', '1', '239', '2017-10-19', '2017-10-18', '2017-10-19', null, null, null, 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '234.00', '35.38', null, '0.15118', '0.15096', '234', '通讯费用', '短信');
INSERT INTO `ams_accountitem` VALUES ('285', '2017101814161823237', '139', '141', null, '14', '1', 'CNY', '52', null, null, '124343', 'rwwr', null, '0', '1', '1', '116', '2017-10-19', '2017-10-18', null, null, null, null, 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '2334.00', '352.85', null, '0.15118', null, null, '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('286', '2017101814161823237', '139', '141', null, '14', '1', 'CNY', '52', null, null, '124343', null, null, '0', '1', '0', '116', '2017-10-19', '2017-10-18', null, null, null, null, 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '234.00', '35.38', null, '0.15118', null, null, '电话费', '水电费');
INSERT INTO `ams_accountitem` VALUES ('287', '2017101814254241717', '259', '261', null, '51', '1', 'EUR', '217', null, '217', 'ASDF', '1212', null, '0', '4', '1', '249', '2017-10-18', '2017-10-18', null, '2017-10-18', null, '0.00', 'B2B', 'USD', 'USD', 'PLOK', '老张家常菜', '225', '1212.00', '1426.55', '0.00', '1.17702', '1.17702', null, '水果类目', '香蕉');
INSERT INTO `ams_accountitem` VALUES ('288', '2017101814254241717', '259', '261', null, '51', '1', 'GBP', '217', null, '217', 'ASDF', '1212', null, '0', '4', '1', '249', '2017-10-19', '2017-10-18', null, '2017-10-18', null, '0.00', 'B2B', 'USD', 'USD', 'PLOK', '老张家常菜', '225', '1212.00', '1597.93', '0.00', '1.31843', '1.31843', null, '水果类目', '香蕉');
INSERT INTO `ams_accountitem` VALUES ('289', '2017101814254241717', '259', '260', null, '51', '1', 'GBP', '217', null, '217', 'ASDF', '1212', null, '0', '4', '0', '249', '2017-10-26', '2017-10-18', null, '2017-10-18', null, '0.00', 'B2B', 'USD', 'USD', 'PLOK', '老张家常菜', '225', '1212.00', '1597.93', '0.00', '1.31843', '1.31843', null, '水果类目', '水果苹果');
INSERT INTO `ams_accountitem` VALUES ('290', '2017101814254241717', '259', '260', null, '51', '1', 'HKD', '217', null, '217', 'ASDF', '1212', null, '0', '4', '0', '249', '2017-10-27', '2017-10-18', null, '2017-10-18', null, '0.00', 'B2B', 'USD', 'USD', 'PLOK', '老张家常菜', '225', '1212.00', '155.23', '0.00', '0.12808', '0.12808', null, '水果类目', '水果苹果');
INSERT INTO `ams_accountitem` VALUES ('291', '2017101814284344793', '259', '261', null, '51', '1', 'EUR', '217', null, '217', '12', '1212', null, '0', '4', '1', '249', '2017-10-26', '2017-10-18', null, '2017-10-18', null, '0.00', 'B3B', 'USD', 'USD', 'PLOK', '老张家常菜', '225', '12121.00', '14266.71', '0.00', '1.17702', '1.17702', '1212', '水果类目', '香蕉');
INSERT INTO `ams_accountitem` VALUES ('292', '2017101814305722808', '259', '260', null, '51', '1', 'CNY', '217', null, '217', '12', '31231', null, '0', '4', '0', '249', '2017-10-18', '2017-10-18', null, '2017-10-18', null, '0.00', 'B3B', 'USD', 'USD', 'PLOK', '老张家常菜', '225', '1212.00', '183.13', '0.00', '0.15110', '0.15110', '121', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem` VALUES ('293', '2017101817335544546', '255', '257', null, '55', '1', 'CNY', '213', '213', null, '564646', '546', null, '1', '2', '1', '239', '2017-10-20', '2017-10-18', '2017-10-19', null, null, null, 'B2B', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '456.00', '68.86', null, '0.15102', '1.00000', '546', '通讯费用', '流量');
INSERT INTO `ams_accountitem` VALUES ('294', '2017101817381047166', '328', '336', null, '63', '1', 'AUD', '217', null, null, '请问', '1212', null, '0', '1', '1', '249', '2017-10-18', '2017-10-18', null, null, null, null, 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '1212.00', '948.28', null, '0.78241', '0.78241', null, '动物', '鱼');
INSERT INTO `ams_accountitem` VALUES ('295', '2017101817381047166', '328', '335', null, '63', '1', 'CNY', '217', null, null, '请问', '1212', null, '0', '1', '0', '249', '2017-10-18', '2017-10-18', null, null, null, null, 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '1212.00', '183.04', null, '0.15102', '0.15102', null, '动物', '羊');
INSERT INTO `ams_accountitem` VALUES ('296', '2017101910251843513', '176', '177', null, '59', '1', 'CNY', '9', null, '9', '76545', '132', null, '0', '4', '1', '134', '2017-10-19', '2017-10-19', null, '2017-10-19', null, '0.00', 'B2C', 'USD', 'USD', 'XXXX', '12312', '228', '123.00', '18.56', '0.00', '0.15090', '0.15090', '132', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem` VALUES ('297', '2017101910330392497', '182', '188', null, '73', '1', 'CNY', '9', null, '9', '76845634534', '234234', null, '0', '6', '1', '134', '2017-10-19', '2017-10-19', null, '2017-10-19', null, '0.00', 'B2C', 'USD', 'AUD', 'XXXX', 'coffee', '231', '213.00', '32.14', '0.00', '0.15090', '0.19189', '132124123', '增值服务', '派送费，偏远地区除外');
INSERT INTO `ams_accountitem` VALUES ('299', '2017101913355862262', '367', '368', null, '74', '0', 'CNY', '217', '217', '217', '2004', '买多送多，价格实惠', null, '0', '3', '1', '249', '2017-10-26', '2017-10-19', '2017-10-19', '2017-10-19', null, null, 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', null, '200.00', '30.18', null, '0.15088', '0.15088', '100元2件', '卖服装', '买裤子');
INSERT INTO `ams_accountitem` VALUES ('300', '2017101913505780386', '367', '369', null, '74', '1', 'CNY', '217', null, '217', '2005', '价格实惠', null, '0', '4', '0', '249', '2017-10-19', '2017-10-19', null, '2017-10-19', null, '0.00', 'B3B', 'USD', 'USD', 'PLOK', '酒水小李子', '232', '2000.00', '301.76', '0.00', '0.15088', '0.15088', '买多送多', '卖服装', '买衬衫');
INSERT INTO `ams_accountitem` VALUES ('301', '2017101914273110598', '367', '369', null, '74', '0', 'AUD', '217', null, null, '23', '233', null, '0', '1', '1', '249', '2017-10-19', '2017-10-19', null, null, null, null, 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', null, '23.00', '18.06', null, '0.78530', '0.78530', null, '卖服装', '买衬衫');
INSERT INTO `ams_accountitem` VALUES ('302', '2017101914273110598', '317', '326', null, '74', '1', 'EUR', '217', null, '217', '23', '2323', null, '0', '4', '1', '249', '2017-10-19', '2017-10-19', null, '2017-10-19', null, '0.00', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', '232', '2323.00', '2741.97', '0.00', '1.18036', '1.18036', null, '动物园', '马儿');
INSERT INTO `ams_accountitem` VALUES ('303', '2017101914273110598', '303', '305', null, '74', '1', 'GBP', '217', null, null, '23', '2323', null, '0', '1', '1', '249', '2017-10-04', '2017-10-19', null, null, null, null, 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', null, '2323.00', '3067.48', null, '1.32048', '1.32048', null, '博物馆', '朱恩来');
INSERT INTO `ams_accountitem` VALUES ('304', '2017101914273110598', '328', '335', null, '74', '1', 'CNY', '217', null, '217', '23', '2323', null, '0', '4', '1', '249', '2017-10-12', '2017-10-19', null, '2017-10-19', null, '0.00', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', '232', '2323.00', '350.69', '0.00', '0.15097', '0.15097', null, '动物', '羊');
INSERT INTO `ams_accountitem` VALUES ('305', '2017101914273110598', '367', '369', null, '74', '0', 'CNY', '217', null, '217', '23', '2323', null, '0', '3', '1', '249', '2017-10-11', '2017-10-19', null, '2017-10-19', null, null, 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', null, '232.00', '35.01', null, '0.15089', '0.15089', null, '卖服装', '买衬衫');
INSERT INTO `ams_accountitem` VALUES ('306', '2017101914273110598', '328', '335', null, '74', '1', 'AUD', '217', '217', null, '23', '2323而我热若', null, '0', '2', '0', '249', '2017-10-11', '2017-10-19', '2017-10-19', null, null, null, 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', null, '2323.00', '1826.40', null, '0.78523', '0.78623', null, '动物', '羊');
INSERT INTO `ams_accountitem` VALUES ('307', '2017101914273110598', '367', '369', null, '74', '1', 'CNY', '217', null, '217', '23', '2323', null, '0', '4', '0', '249', '2017-10-26', '2017-10-19', null, '2017-10-19', null, '0.00', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', '232', '2323.00', '350.52', '0.00', '0.15089', '0.15089', null, '卖服装', '买衬衫');
INSERT INTO `ams_accountitem` VALUES ('308', '2017101914273110598', '295', '296', null, '74', '1', 'USD', '217', null, '217', '23', '2323', null, '0', '4', '0', '249', '2017-10-26', '2017-10-19', null, '2017-10-19', null, '0.00', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', '232', '232.00', '232.00', '0.00', '1.00000', '1.00000', null, '水果类目2', '水果苹果2');
INSERT INTO `ams_accountitem` VALUES ('309', '2017102013042814401', '232', '248', null, '44', '1', 'CNY', '202', null, null, '12345', '12', null, '0', '1', '1', '226', '2017-10-20', '2017-10-20', null, null, null, null, 'B2B', 'USD', 'CNY', 'OOPK', '胡亥结算对象测试', null, '22.00', '3.32', null, '0.15106', '1.00000', '123', '增值服务', 'Toll FEE');
INSERT INTO `ams_accountitem` VALUES ('313', '2017102410540991424', '232', '245', null, '44', '1', 'CNY', '202', null, '202', '99990083', '这是备注', null, '0', '3', '1', '226', '2017-10-25', '2017-10-24', null, '2017-10-24', null, null, 'B2C', 'USD', 'CNY', 'OOPK', '胡亥结算对象测试', null, '25.00', '3.77', null, '0.15075', '1.00000', '交易概要', '增值服务', '打带费');
INSERT INTO `ams_accountitem` VALUES ('314', '2017102609380797017', '255', '258', null, '53', '1', 'AUD', '213', null, '213', '51252', '234', null, '0', '4', '1', '239', '2017-10-27', '2017-10-26', null, '2017-10-26', null, '0.00', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '234', '234.00', '180.35', '0.00', '0.77071', '0.77071', '234', '通讯费用', '短信');
INSERT INTO `ams_accountitem` VALUES ('323', '2017102615071834357', '630', '631', null, '55', '1', 'CNY', '213', null, '213', '908766897', '12', null, '0', '4', '1', '239', '2017-10-27', '2017-10-26', null, '2017-10-26', null, '0.00', 'C2C', 'USD', 'CNY', 'KJNZ', '网易考拉', '235', '12.00', '1.81', '0.00', '0.15074', '1.00000', '12', '交通费用', '机票费用');
INSERT INTO `ams_accountitem` VALUES ('329', '2017102615194865012', '64', '65', null, '19', '1', 'CNY', '246', null, null, null, '高端大气上档次，低调奢华有内涵。\n奔放洋气有深度，简约时尚国际范。\n低端粗俗甩节操，土憋矫情无下限。\n装模作样绿茶婊，外猛内柔女汉子。\n卖萌嘟嘴剪刀手，忧郁深沉无所谓。\n狂拽帅气吊炸天，冷艳高贵接地气。\n时尚亮丽小清新，可爱乡村非主流。\n贵族王朝杀马特，提莫团战必须死。', null, '1', '1', '0', '306', null, '2017-10-26', null, null, null, null, 'O2OP', 'USD', 'USD', 'BILI', '凤舞九天', null, '100000.00', null, null, '0.10000', '0.10000', 'sorry', null, null);
INSERT INTO `ams_accountitem` VALUES ('330', '2017102615202929855', '64', '65', null, '19', '1', 'CNY', '246', null, '246', null, '高端大气上档次，低调奢华有内涵。\n奔放洋气有深度，简约时尚国际范。\n低端粗俗甩节操，土憋矫情无下限。\n装模作样绿茶婊，外猛内柔女汉子。\n卖萌嘟嘴剪刀手，忧郁深沉无所谓。\n狂拽帅气吊炸天，冷艳高贵接地气。\n时尚亮丽小清新，可爱乡村非主流。\n贵族王朝杀马特，提莫团战必须死。', null, '0', '3', '0', '306', null, '2017-10-26', null, '2017-11-06', null, null, 'O2OP', 'USD', 'USD', 'BILI', '凤舞九天', null, '100000.00', null, null, '0.10000', '0.10000', 'sorry', null, null);
INSERT INTO `ams_accountitem` VALUES ('331', '2017102615223793487', '64', '65', null, '19', '1', 'CNY', '246', null, '246', null, '高端大气上档次，低调奢华有内涵。\n奔放洋气有深度，简约时尚国际范。\n低端粗俗甩节操，土憋矫情无下限。\n装模作样绿茶婊，外猛内柔女汉子。\n卖萌嘟嘴剪刀手，忧郁深沉无所谓。\n狂拽帅气吊炸天，冷艳高贵接地气。\n时尚亮丽小清新，可爱乡村非主流。\n贵族王朝杀马特，提莫团战必须死。', null, '0', '3', '0', '306', null, '2017-10-26', null, '2017-11-06', null, null, 'O2OP', 'USD', 'USD', 'BILI', '凤舞九天', null, '100000.00', null, null, '0.10000', '0.10000', 'sorry', null, null);
INSERT INTO `ams_accountitem` VALUES ('332', '2017102615340923044', '630', '631', null, '53', '1', 'CNY', '213', null, '213', '345235', '345', null, '0', '4', '1', '239', '2017-10-19', '2017-10-26', null, '2017-10-26', null, '0.00', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '234', '345.00', '52.02', '0.00', '0.15078', '0.15078', null, '交通费用', '机票费用');
INSERT INTO `ams_accountitem` VALUES ('333', '2017102615340923044', '255', '256', null, '53', '1', 'CNY', '213', null, '213', '345235', null, null, '0', '4', '1', '239', '2017-10-18', '2017-10-26', null, '2017-10-26', null, '0.00', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '234', '345.00', '52.02', '0.00', '0.15078', '0.15078', null, '通讯费用', '话费');
INSERT INTO `ams_accountitem` VALUES ('334', '2017102615340923044', '630', '631', null, '53', '1', 'CNY', '213', null, '213', '345235', '345', null, '0', '4', '0', '239', '2017-10-18', '2017-10-26', null, '2017-10-26', null, '0.00', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '234', '34.00', '5.13', '0.00', '0.15078', '0.15078', null, '交通费用', '机票费用');
INSERT INTO `ams_accountitem` VALUES ('335', '2017103014580285062', '661', '662', null, '95', '0', 'CNY', '242', null, '242', '12', '12121212', null, '0', '3', '1', '303', '2017-10-30', '2017-10-30', null, '2017-10-30', null, null, 'B2B', 'USD', 'USD', 'YYUU', '双方是否', null, '1212.00', '182.37', null, '0.15047', '0.15047', '1212', '112', '122');
INSERT INTO `ams_accountitem` VALUES ('336', '2017103014583837729', '661', '662', null, '95', '1', 'AUD', '242', null, '242', '2323', '232323', null, '0', '3', '1', '303', '2017-10-30', '2017-10-30', null, '2017-10-30', null, null, 'B2B', 'USD', 'USD', 'YYUU', '双方是否', null, '2323.00', '1782.54', null, '0.76734', '0.76734', '2323', '112', '122');
INSERT INTO `ams_accountitem` VALUES ('337', '2017103016071489850', '666', '668', null, '95', '1', 'AUD', '242', null, '242', '45', '12112', null, '0', '5', '0', '303', '2017-10-30', '2017-10-30', null, '2017-10-30', null, '0.00', 'B2B', 'USD', 'USD', 'YYUU', '双方是否', '237', '1212.00', '929.16', '0.00', '0.76664', '0.76664', '12121', '动物', '狮子');
INSERT INTO `ams_accountitem` VALUES ('338', '2017103016263092461', '666', '669', null, '95', '1', 'CNY', '242', null, '242', '12121212', '121212', null, '0', '3', '1', '303', '2017-10-30', '2017-10-30', null, '2017-10-30', null, null, 'B2B', 'USD', 'USD', 'YYUU', '双方是否', null, '1212.00', '182.34', null, '0.15044', '0.15044', '1212', '动物', '大象');
INSERT INTO `ams_accountitem` VALUES ('339', '2017110314303480421', '736', '751', null, '102', '1', 'CNY', '9', null, '9', 'OOPK', '权限测试', null, '0', '6', '1', '134', '2017-11-03', '2017-11-03', null, '2017-11-03', null, '0.00', 'B2C', 'USD', 'CNY', 'XXXX', '结算权限新增', '238', '23.00', '3.48', '0.00', '0.15111', '1.00000', '权限测试', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem` VALUES ('340', '2017110314313957788', '736', '752', null, '102', '1', 'CNY', '9', null, '9', 'KKPO', '支出权限', null, '0', '5', '0', '134', '2017-11-03', '2017-11-03', null, '2017-11-03', null, '0.00', 'B2C', 'USD', 'CNY', 'XXXX', '结算权限新增', '239', '33.00', '4.99', '0.00', '0.15111', '1.00000', '支出权限', '增值服务', 'Toll FEE');
INSERT INTO `ams_accountitem` VALUES ('341', '2017110314375252292', '736', '753', null, '102', '1', 'CNY', '9', null, '9', 'YUKO', '123', null, '0', '5', '1', '134', '2017-11-03', '2017-11-03', null, '2017-11-03', null, '0.00', 'B2C', 'USD', 'CNY', 'XXXX', '结算权限新增', '239', '23.00', '3.48', '0.00', '0.15111', '1.00000', null, '增值服务', '包材费用');
INSERT INTO `ams_accountitem` VALUES ('342', '2017110314375252292', '736', '750', null, '102', '1', 'CNY', '9', null, '9', 'YUKO', '1234', null, '0', '5', '0', '134', '2017-11-03', '2017-11-03', null, '2017-11-03', null, '0.00', 'B2C', 'USD', 'CNY', 'XXXX', '结算权限新增', '239', '12.00', '1.81', '0.00', '0.15111', '1.00000', null, '增值服务', '托盘费');
INSERT INTO `ams_accountitem` VALUES ('343', '2017110610264890403', '757', '759', null, '101', '0', 'AUD', '246', null, '246', '23', '23', null, '0', '3', '1', '306', '2017-11-21', '2017-11-06', null, '2017-11-06', null, null, 'B2B', 'USD', 'USD', 'BILI', '肯德基', null, '23.00', '17.59', null, '0.76476', '0.76476', '23', '税费', '123321');
INSERT INTO `ams_accountitem` VALUES ('344', '2017110610380228110', '757', '759', null, '101', '0', 'AUD', '246', null, '246', '2323', null, null, '0', '3', '1', '306', '2017-11-07', '2017-11-06', null, '2017-11-06', null, null, 'B2B', 'USD', 'USD', 'BILI', '肯德基', null, '23.00', '17.59', null, '0.76476', '0.76476', '23', '税费', '123321');
INSERT INTO `ams_accountitem` VALUES ('345', '2017110610393923531', '757', '759', null, '101', '0', 'AUD', '246', null, '246', '23', null, null, '0', '3', '0', '306', '2017-11-07', '2017-11-06', null, '2017-11-06', null, null, 'B2B', 'USD', 'USD', 'BILI', '肯德基', null, '23.00', '17.59', null, '0.76476', '0.76476', '32', '税费', '123321');
INSERT INTO `ams_accountitem` VALUES ('346', '2017110610410392260', '757', '759', null, '101', '1', 'AUD', '246', '246', '246', '34', '43', null, '0', '5', '0', '306', '2017-11-15', '2017-11-06', '2017-11-06', '2017-11-06', null, '0.00', 'B2B', 'USD', 'USD', 'BILI', '肯德基', '240', '34.00', '26.00', '0.00', '0.76476', '0.76476', '34', '税费', '123321');
INSERT INTO `ams_accountitem` VALUES ('347', '2017110613205774963', '757', '758', null, '98', '1', 'AUD', '246', null, '246', '2323', null, null, '0', '5', '1', '306', '2017-11-08', '2017-11-06', null, '2017-11-06', null, '0.00', 'P2B', 'USD', 'CNY', 'BILI', '驭剑', '241', '32.00', '24.50', '0.00', '0.76564', '5.07848', '23', '税费', '123');
INSERT INTO `ams_accountitem` VALUES ('348', '2017110614572230929', '271', '272', null, '68', '1', 'CNY', '220', '220', '220', '5342', null, null, '0', '4', '0', '251', '2017-11-18', '2017-11-06', '2017-11-06', '2017-11-06', null, '0.00', 'B2B', 'USD', 'USD', 'ZJLS', '送货小李子222', '242', '213.00', '32.08', '0.00', '0.15062', '0.15062', null, '仓租费用', '常温区');
INSERT INTO `ams_accountitem` VALUES ('349', '2017110617565598376', '657', '660', null, null, '0', 'CNY', '213', null, null, '123123', '123', null, '1', '1', '1', '239', '2017-11-14', '2017-11-06', null, null, null, null, 'B2C', 'USD', null, 'KJNZ', null, null, '123.00', '18.55', null, '0.15085', '1.00000', null, '用餐费', '中餐');
INSERT INTO `ams_accountitem` VALUES ('350', '2017110617565598376', '657', '660', null, null, '0', 'CNY', '213', null, null, '123123', '213', null, '1', '1', '1', '239', '2017-11-22', '2017-11-06', null, null, null, null, 'B2C', 'USD', null, 'KJNZ', null, null, '12.00', '1.81', null, '0.15085', '1.00000', null, '用餐费', '中餐');
INSERT INTO `ams_accountitem` VALUES ('351', '2017110617565598376', '657', '660', null, null, '0', 'CNY', '213', null, null, '123123', '123', null, '1', '1', '0', '239', '2017-11-14', '2017-11-06', null, null, null, null, 'B2C', 'USD', null, 'KJNZ', null, null, '123.00', '18.55', null, '0.15085', '1.00000', null, '用餐费', '中餐');
INSERT INTO `ams_accountitem` VALUES ('352', '2017110617565598376', '657', '659', null, null, '1', 'EUR', '213', null, null, '123123', '33', null, '1', '1', '0', '239', '2017-11-29', '2017-11-06', null, null, null, null, 'B2C', 'USD', null, 'KJNZ', null, null, '123.00', '142.74', null, '1.16050', '7.69293', null, '用餐费', '晚餐');
INSERT INTO `ams_accountitem` VALUES ('353', '2017110709501070872', '657', '660', null, '55', '1', 'CNY', '213', null, null, '111111', '122', null, '1', '1', '1', '239', '2017-11-09', '2017-11-07', null, null, null, null, 'C2B', 'USD', null, 'KJNZ', '网易考拉', null, '100.00', '15.08', null, '0.15081', '1.00000', null, '用餐费', '中餐');
INSERT INTO `ams_accountitem` VALUES ('354', '2017110709501070872', '657', '659', null, '53', '1', 'CNY', '213', null, null, '111111', '12', null, '1', '1', '0', '239', '2017-11-08', '2017-11-07', null, null, null, null, 'C2B', 'USD', null, 'KJNZ', '韩衣控-中国', null, '12.00', '1.81', null, '0.15081', '0.15081', null, '用餐费', '晚餐');
INSERT INTO `ams_accountitem` VALUES ('355', '2017110710235587830', '757', '758', null, '101', '1', 'AUD', '286', null, '286', '54235234', null, null, '0', '5', '1', '306', '2017-11-08', '2017-11-07', null, '2017-11-07', null, '0.00', 'P2B', 'USD', 'USD', 'BILI', '肯德基', '243', '2324.00', '1786.53', '0.00', '0.76876', '0.76876', '234', '税费', '123');
INSERT INTO `ams_accountitem` VALUES ('372', '2017110815331359414', '802', '803', null, '106', '1', 'CNY', '294', null, null, 'OOPK', '123', null, '0', '1', '1', '348', '2017-11-08', '2017-11-08', null, null, null, null, 'OKK', 'USD', 'CNY', 'VCVC', 'ACFUN', null, '233.00', '35.08', null, '0.15056', '1.00000', '123', 'bilibili', 'ACFUN');
INSERT INTO `ams_accountitem` VALUES ('374', '2017110815334718819', '802', '803', null, '106', '1', 'CNY', '294', null, null, 'OOPL', '2222', null, '0', '1', '0', '348', '2017-11-08', '2017-11-08', null, null, null, null, 'OKK', 'USD', 'CNY', 'VCVC', 'ACFUN', null, '111.00', '16.71', null, '0.15056', '1.00000', '222', 'bilibili', 'ACFUN');
INSERT INTO `ams_accountitem` VALUES ('375', '2017110815342057566', '802', '803', null, '106', '1', 'EUR', '294', null, null, 'OOPI', '3333', null, '0', '1', '1', '348', '2017-11-08', '2017-11-08', null, null, null, null, 'OKK', 'USD', 'CNY', 'VCVC', 'ACFUN', null, '333.00', '385.95', null, '1.15902', '7.69808', '333', 'bilibili', 'ACFUN');
INSERT INTO `ams_accountitem` VALUES ('376', '2017110815344814756', '802', '803', null, '106', '1', 'GBP', '294', null, null, 'pppp', '4444', null, '0', '1', '0', '348', '2017-11-08', '2017-11-08', null, null, null, null, 'OKK', 'USD', 'CNY', 'VCVC', 'ACFUN', null, '444.00', '584.06', null, '1.31546', '8.73716', '444', 'bilibili', 'ACFUN');
INSERT INTO `ams_accountitem` VALUES ('377', '2017110815351791844', '802', '803', null, '106', '1', 'HKD', '294', null, null, 'QWER', '5555', null, '0', '1', '1', '348', '2017-11-23', '2017-11-08', null, null, null, null, 'OKK', 'USD', 'CNY', 'VCVC', 'ACFUN', null, '555.00', '71.13', null, '0.12816', '0.85123', '555', 'bilibili', 'ACFUN');
INSERT INTO `ams_accountitem` VALUES ('418', '2017111011032094692', '876', '892', null, '107', '1', 'CNY', '322', null, '322', 'PL-0972', '书籍/book', null, '0', '3', '1', '372', '2017-11-10', '2017-11-10', null, '2017-11-10', null, null, 'AAA', 'USD', 'CNY', 'ASDJ', '清华大学出版社', null, '233.00', '35.11', null, '0.15070', '1.00000', '书籍', '增值服务', 'Toll FEE');
INSERT INTO `ams_accountitem` VALUES ('419', '2017111016082964892', '961', '963', null, '117', '1', 'CNY', '324', null, '324', 'KM20171110001', null, null, '0', '4', '1', '379', '2017-11-09', '2017-11-10', null, '2017-11-10', null, '0.00', '母婴类', 'USD', 'HKD', 'POLK', '网易泡泡', '253', '100.00', '15.07', '0.00', '0.15070', '1.17518', '网易考拉', '增值服务', '装托');
INSERT INTO `ams_accountitem` VALUES ('420', '2017111016092164244', '961', '962', null, '117', '0', 'HKD', '324', null, '324', 'KM20171110002', null, null, '0', '3', '1', '379', '2017-11-01', '2017-11-10', null, '2017-11-10', null, null, '箱包类', 'USD', 'HKD', 'POLK', '网易泡泡', null, '10000.00', '1282.32', null, '0.12823', '1.00000', null, '增值服务', '轉單');
INSERT INTO `ams_accountitem` VALUES ('421', '2017111016095359659', '961', '963', null, '117', '1', 'CNY', '324', null, '324', 'KM20171110003', null, null, '0', '3', '1', '379', '2017-11-11', '2017-11-10', null, '2017-11-10', null, null, '箱包类', 'USD', 'HKD', 'POLK', '网易泡泡', null, '154.00', '23.21', null, '0.15070', '1.17518', '扣除1000元', '增值服务', '装托');
INSERT INTO `ams_accountitem` VALUES ('422', '2017111016204774767', '958', '960', null, '114', '1', 'CNY', '324', null, '324', 'KM20171110003', null, null, '0', '3', '0', '379', '2017-11-02', '2017-11-10', null, '2017-11-10', null, null, '箱包类', 'USD', 'JPY', 'POLK', '贝亲', null, '88.00', '13.26', null, '0.15070', '17.08254', null, '理货费', '入库理货费');
INSERT INTO `ams_accountitem` VALUES ('423', '2017111016491414169', '961', '962', null, '117', '1', 'CNY', '324', null, '324', 'KM20171110223', null, null, '0', '4', '1', '379', '2017-11-01', '2017-11-10', null, '2017-11-10', null, '0.00', '电器类', 'USD', 'HKD', 'POLK', '网易泡泡', '254', '100.00', '15.06', '0.00', '0.15063', '1.17495', null, '增值服务', '轉單');
INSERT INTO `ams_accountitem` VALUES ('424', '2017111016535297457', '958', '960', null, '117', '1', 'CNY', '324', null, '324', 'KM20171110003', null, null, '0', '4', '1', '379', '2017-11-01', '2017-11-10', null, '2017-11-10', null, '0.00', '电器类', 'USD', 'HKD', 'POLK', '网易泡泡', '254', '100.00', '15.06', '0.00', '0.15063', '1.17495', null, '理货费', '入库理货费');
INSERT INTO `ams_accountitem` VALUES ('425', '2017111017282524642', '966', '969', null, '110', '1', 'AUD', '302', null, null, 'public string TypeNo', null, null, '0', '1', '1', '365', '2017-11-01', '2017-11-10', null, null, null, null, '    B2B', 'USD', 'CNY', 'QWEW', '送货小李子', null, '120.00', '92.07', null, '0.76722', '5.09314', null, '潮流女包', '手提包');
INSERT INTO `ams_accountitem` VALUES ('426', '2017111017282524642', '966', '968', null, '109', '1', 'CNY', '302', null, null, 'public string TypeNo', null, null, '0', '1', '1', '365', '2017-11-23', '2017-11-10', null, null, null, null, '    B2B', 'USD', 'JPY', 'QWEW', '送货小李子', null, '111.00', '16.72', null, '0.15064', '17.09191', null, '潮流女包', '单肩包');
INSERT INTO `ams_accountitem` VALUES ('427', '2017111017282524642', '966', '969', null, '109', '1', 'CNY', '302', null, null, 'public string TypeNo', null, null, '0', '1', '0', '365', '2017-11-10', '2017-11-10', null, null, null, null, '    B2B', 'USD', 'JPY', 'QWEW', '送货小李子', null, '111.00', '16.72', null, '0.15064', '17.09191', null, '潮流女包', '手提包');
INSERT INTO `ams_accountitem` VALUES ('428', '2017111309525230696', '971', '973', null, '110', '1', 'AUD', '302', null, null, '12', '脸上长痘痘是什么原因？脸上长痘痘是比较常见的症状，生活中我们脸上长痘痘的现象太常见了，比如昨天吃了麻辣，今天早上就发现脸上长痘痘了，昨天一宿没睡着，早上又发现脸上长痘痘了，唉，那么脸上长痘痘到底是什么原因引起的，一般来讲脸上长痘痘也要分区域，不同区域长的痘痘对应的情况也不同。\n额头长痘痘是什么原因\n如果额头长痘痘了，说明这个人心火旺盛，血液循环不畅。日常生活中精神压力过大，脾气差是主要表现。\n针对额头长痘痘的朋友，我们建议应早睡早起，多喝水，对去除额头上痘痘具有很好的效果。\n鼻翼长痘痘是什么原因\n鼻翼长痘痘也是比较常见的现象，一般来讲，鼻翼长痘痘与生殖系统有关。鼻翼长痘痘的主要原因有：1.颈椎有毛病、2.卵巢出现问题、3.生殖系统疾病、4.消化不良、5.内分泌失调。\n针对鼻翼长痘痘的朋友，日常生活中不要过度纵欲或禁欲，如果是疾病引起的，一定要及时治疗。\n双眉间长痘痘是什么原因\n双眉间长痘痘即我们说的印堂痘，有印堂痘的朋友体外症状有：胸闷，心律不整，心悸。\n有印堂痘的朋友生活中要注意饮食，尽量不吃有刺激性的食物，如烟、酒、槟榔、酒、辛辣刺激食物，多进行有氧运动。\n鼻头长痘痘是', null, '0', '1', '0', '365', '2017-11-13', '2017-11-13', null, null, null, null, '    B2B', 'USD', 'CNY', 'QWEW', '送货小李子', null, '12.00', '9.18', null, '0.76476', '5.07785', '鼻头长痘痘是什么原因 日常生活中有胃', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem` VALUES ('429', '2017111310192653028', '971', '972', null, '122', '1', 'CNY', '302', null, null, 'public string TypeNo', null, null, '0', '1', '1', '365', '2017-11-14', '2017-11-13', null, null, null, null, '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '123.00', '222.00', null, '222.00000', '1.00000', null, '黄金首饰', '黄金');
INSERT INTO `ams_accountitem` VALUES ('430', '2017111310200235191', '971', '972', null, '122', '1', 'GBP', '302', null, null, 'public string TypeNo', null, null, '0', '1', '1', '365', '2017-11-15', '2017-11-13', null, null, null, null, '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '222.00', '291.27', null, '1.31208', '8.71193', null, '黄金首饰', '黄金');
INSERT INTO `ams_accountitem` VALUES ('431', '2017111310203065410', '971', '972', null, '122', '1', 'CNY', '302', null, null, 'public string TypeNo', null, null, '0', '1', '1', '365', '2017-11-30', '2017-11-13', null, null, null, null, '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '222.00', '33.43', null, '0.15061', '1.00000', '22', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem` VALUES ('432', '2017111310240549291', '966', '969', null, '122', '1', 'CNY', '302', null, '302', 'YWBM001', null, null, '0', '6', '1', '365', '2017-11-15', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '256', '120.00', '18.07', '0.00', '0.15061', '1.00000', null, '潮流女包', '手提包');
INSERT INTO `ams_accountitem` VALUES ('433', '2017111310240549291', '971', '973', null, '122', '1', 'AUD', '302', null, '302', 'YWBM001', null, null, '0', '6', '1', '365', '2017-11-14', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '256', '123.00', '94.07', '0.00', '0.76476', '5.07785', null, '黄金首饰', 'K金');
INSERT INTO `ams_accountitem` VALUES ('434', '2017111310240549291', '966', '969', null, '122', '1', 'EUR', '302', null, '302', 'YWBM001', null, null, '0', '5', '1', '365', '2017-11-24', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '122.00', '142.31', '0.00', '1.16645', '7.74501', null, '潮流女包', '手提包');
INSERT INTO `ams_accountitem` VALUES ('435', '2017111310240549291', '971', '972', null, '122', '1', 'CNY', '302', null, '302', 'YWBM001', null, null, '0', '5', '1', '365', '2017-11-29', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '1212.00', '182.54', '0.00', '0.15061', '1.00000', null, '黄金首饰', '黄金');
INSERT INTO `ams_accountitem` VALUES ('436', '2017111310240549291', '971', '972', null, '122', '1', 'USD', '302', null, '302', 'YWBM001', null, null, '0', '5', '1', '365', '2017-11-29', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '1212.00', '1212.00', '0.00', '1.00000', '6.63980', null, '黄金首饰', '黄金');
INSERT INTO `ams_accountitem` VALUES ('437', '2017111310240549291', '971', '973', null, '122', '1', 'JPY', '302', null, '302', 'YWBM001', null, null, '0', '5', '0', '365', '2017-11-23', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '12.00', '0.11', '0.00', '0.00880', '0.05840', null, '黄金首饰', 'K金');
INSERT INTO `ams_accountitem` VALUES ('438', '2017111310240549291', '966', '968', null, '122', '1', 'HKD', '302', null, '302', 'YWBM001', null, null, '0', '5', '0', '365', '2017-11-16', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '1212.00', '155.33', '0.00', '0.12816', '0.85097', null, '潮流女包', '单肩包');
INSERT INTO `ams_accountitem` VALUES ('439', '2017111310240549291', '966', '968', null, '122', '1', 'GBP', '302', null, '302', 'YWBM001', null, null, '0', '5', '0', '365', '2017-12-10', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '1212.00', '1590.24', '0.00', '1.31208', '8.71193', null, '潮流女包', '单肩包');
INSERT INTO `ams_accountitem` VALUES ('440', '2017111310240549291', '966', '967', null, '122', '1', 'HKD', '302', null, '302', 'YWBM001', null, null, '0', '5', '0', '365', '2017-12-07', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '122.00', '15.64', '0.00', '0.12816', null, null, '潮流女包', '真皮包');
INSERT INTO `ams_accountitem` VALUES ('441', '2017111310334410356', '971', '973', null, '122', '1', 'USD', '302', null, '302', 'YWBM001', null, null, '0', '5', '1', '365', '2017-11-03', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '100.00', '100.00', '0.00', '1.00000', '6.63980', null, '黄金首饰', 'K金');
INSERT INTO `ams_accountitem` VALUES ('442', '2017111310340514493', '971', '973', null, '122', '1', 'HKD', '302', null, '302', 'YWBM001', null, null, '0', '5', '1', '365', '2017-12-09', '2017-11-13', null, '2017-11-13', null, '0.00', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '255', '120.00', '15.38', '0.00', '0.12816', '0.85097', null, '黄金首饰', 'K金');
INSERT INTO `ams_accountitem` VALUES ('443', '2017111310342370495', '971', '973', null, '122', '1', 'CNY', '302', null, '302', 'YWBM001', null, null, '0', '5', '1', '365', '2017-11-16', '2017-11-13', null, '2017-11-13', null, '0.00', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '255', '120.00', '18.07', '0.00', '0.15061', '1.00000', null, '黄金首饰', 'K金');
INSERT INTO `ams_accountitem` VALUES ('444', '2017111310495683334', '630', '631', null, '55', '1', 'CNY', '213', null, '213', '9765555', '0', null, '0', '4', '1', '239', '2017-11-11', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'KJNZ', '网易考拉', '260', '78.00', '11.75', '0.00', '0.15061', '1.00000', 'kk', '交通费用', '机票费用');
INSERT INTO `ams_accountitem` VALUES ('445', '2017111310514761225', '657', '659', null, '97', '1', 'HKD', '213', null, null, '9999', '0', null, '0', '1', '1', '239', '2017-11-14', '2017-11-13', null, null, null, null, 'B2C', 'USD', 'USD', 'KJNZ', '42525', null, '78.00', '10.00', null, '0.12816', '0.12816', '88', '用餐费', '晚餐');
INSERT INTO `ams_accountitem` VALUES ('446', '2017111310525886154', '630', '631', null, '55', '1', 'CNY', '213', null, '213', '77657888', '6666', null, '0', '4', '1', '239', '2017-11-15', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'KJNZ', '网易考拉', '260', '88.00', '13.25', '0.00', '0.15061', '1.00000', '888', '交通费用', '机票费用');
INSERT INTO `ams_accountitem` VALUES ('447', '2017111310535891677', '966', '967', null, '122', '1', 'CNY', '302', null, '302', '12212', null, null, '0', '3', '0', '365', '2017-11-14', '2017-11-13', null, '2017-11-14', null, null, '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '1212.00', '182.54', null, '0.15061', '1.00000', null, '潮流女包', '真皮包');
INSERT INTO `ams_accountitem` VALUES ('448', '2017111311140542904', '971', '973', null, '122', '1', 'AUD', '302', null, '302', 'Number——001', '确认对账单后账单显示在“收款管理”模块中', null, '0', '5', '1', '365', '2017-11-22', '2017-11-13', null, '2017-11-13', null, '0.00', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '257', '100.00', '76.54', '0.00', '0.76540', '5.08749', null, '黄金首饰', 'K金');
INSERT INTO `ams_accountitem` VALUES ('449', '2017111311140542904', '971', '973', null, '122', '1', 'AUD', '302', null, '302', 'Number——001', '确认对账单后账单显示在“收款管理”模块中', null, '0', '5', '0', '365', '2017-11-28', '2017-11-13', null, '2017-11-13', null, '0.00', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '257', '100.00', '76.54', '0.00', '0.76540', '5.08749', null, '黄金首饰', 'K金');
INSERT INTO `ams_accountitem` VALUES ('450', '2017111311164065681', '971', '972', null, '122', '1', 'CNY', '302', null, '302', 'Number——002', '确认对账单后账单显示在“收款管理”模块中', null, '0', '4', '1', '365', '2017-11-15', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '258', '100.00', '15.04', '0.00', '0.15045', '1.00000', null, '黄金首饰', '黄金');
INSERT INTO `ams_accountitem` VALUES ('451', '2017111311164065681', '971', '972', null, '122', '1', 'CNY', '302', null, '302', 'Number——002', '确认对账单后账单显示在“收款管理”模块中', null, '0', '4', '0', '365', '2017-11-02', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '258', '100.00', '15.04', '0.00', '0.15045', '1.00000', null, '黄金首饰', '黄金');
INSERT INTO `ams_accountitem` VALUES ('452', '2017111311164065681', '971', '972', null, '122', '1', 'CNY', '302', null, '302', 'Number——002', '确认对账单后账单显示在“收款管理”模块中', null, '0', '4', '0', '365', '2017-11-13', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '258', '100.00', '15.04', '0.00', '0.15045', '1.00000', null, '黄金首饰', '黄金');
INSERT INTO `ams_accountitem` VALUES ('453', '2017111311192054569', '971', '972', null, '122', '1', 'CNY', '302', null, '302', 'Number——03', '确认对账单后账单显示在“收款管理”模块中', null, '0', '5', '1', '365', '2017-11-14', '2017-11-13', null, '2017-11-13', null, '0.00', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '259', '120.00', '18.05', '0.00', '0.15045', '1.00000', '100元2件', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem` VALUES ('454', '2017111311204439501', '971', '972', null, '122', '1', 'EUR', '302', null, '302', 'Number——03', '确认对账单后账单显示在“收款管理”模块中', null, '0', '5', '0', '365', '2017-11-25', '2017-11-13', null, '2017-11-13', null, '0.00', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '259', '200.00', '233.07', '0.00', '1.16536', '7.74594', '确认对账单后账单显示在“收款管理”模块中', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem` VALUES ('455', '2017111311225183304', '966', '967', null, '122', '1', 'JPY', '302', null, '302', 'Number——03', '确认对账单后账单显示在“收款管理”模块中', null, '0', '5', '0', '365', '2017-11-23', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '259', '100.00', '0.88', '0.00', '0.00880', '0.05848', '确认对账单后账单显示在“收款管理”模块中', '潮流女包', '真皮包');
INSERT INTO `ams_accountitem` VALUES ('456', '2017111311281322760', '630', '631', null, '55', '1', 'CNY', '213', null, '213', '4454', '4', null, '0', '4', '0', '239', '2017-11-15', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'KJNZ', '网易考拉', '260', '34567.00', '5206.03', '0.00', '0.15061', '1.00000', '4', '交通费用', '机票费用');
INSERT INTO `ams_accountitem` VALUES ('457', '2017111311333635635', '971', '972', null, '122', '1', 'EUR', '302', null, '302', '111', '\n[结果]', null, '0', '6', '0', '365', '2017-11-08', '2017-11-13', null, '2017-11-13', null, '0.00', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '261', '111.00', '129.48', '0.00', '1.16645', '7.74501', ' [结果]', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem` VALUES ('458', '2017111311352462538', '630', '631', null, '97', '1', 'EUR', '213', null, '213', '423', '23', null, '0', '4', '1', '239', '2017-11-02', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'USD', 'KJNZ', '42525', '262', '23.00', '26.83', '0.00', '1.16645', '1.16645', '233', '交通费用', '机票费用');
INSERT INTO `ams_accountitem` VALUES ('459', '2017111312122642657', '971', '973', null, '122', '1', 'EUR', '302', null, '302', '去', '2017111311333635635', null, '0', '4', '1', '365', '2017-11-15', '2017-11-13', null, '2017-11-13', null, '0.00', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '263', '111.00', '129.48', '0.00', '1.16645', '7.74501', '100元2件', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem` VALUES ('460', '2017111313303847099', '971', '972', null, '122', '1', 'AUD', '302', null, '302', 'Number——05', '123', null, '0', '5', '1', '365', '2017-11-14', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '123.00', '94.07', '0.00', '0.76476', '5.07785', null, '黄金首饰', '黄金');
INSERT INTO `ams_accountitem` VALUES ('461', '2017111313303847099', '971', '972', null, '122', '1', 'CNY', '302', null, '302', 'Number——05', '', null, '0', '5', '1', '365', '2017-11-22', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '123.00', '18.52', '0.00', '0.15061', '1.00000', null, '黄金首饰', '黄金');
INSERT INTO `ams_accountitem` VALUES ('462', '2017111313303847099', '966', '969', null, '122', '1', 'EUR', '302', null, '302', 'Number——05', null, null, '0', '5', '1', '365', '2017-11-25', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '123.00', '143.47', '0.00', '1.16745', '7.74501', null, '潮流女包', '手提包');
INSERT INTO `ams_accountitem` VALUES ('463', '2017111313303847099', '966', '968', null, '122', '1', 'GBP', '302', null, '302', 'Number——05', null, null, '0', '5', '1', '365', '2017-11-29', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '100.00', '131.21', '0.00', '1.31208', '8.71193', null, '潮流女包', '单肩包');
INSERT INTO `ams_accountitem` VALUES ('464', '2017111313303847099', '966', '968', null, '122', '1', 'EUR', '302', null, '302', 'Number——05', null, null, '0', '5', '1', '365', '2017-11-14', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '200.00', '233.29', '0.00', '1.16645', '7.74501', null, '潮流女包', '单肩包');
INSERT INTO `ams_accountitem` VALUES ('465', '2017111313303847099', '966', '969', null, '122', '1', 'GBP', '302', null, '302', 'Number——05', null, null, '0', '5', '0', '365', '2017-11-14', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '1000.00', '1312.08', '0.00', '1.31208', '8.71193', null, '潮流女包', '手提包');
INSERT INTO `ams_accountitem` VALUES ('466', '2017111313303847099', '966', '967', null, '122', '1', 'EUR', '302', null, '302', 'Number——05', null, null, '0', '5', '0', '365', '2017-11-30', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '500.00', '583.23', '0.00', '1.16645', '7.74501', null, '潮流女包', '真皮包');
INSERT INTO `ams_accountitem` VALUES ('467', '2017111313303847099', '966', '968', null, '122', '1', 'HKD', '302', null, '302', 'Number——05', null, null, '0', '5', '0', '365', '2017-11-09', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '200.00', '25.63', '0.00', '0.12816', '0.85097', null, '潮流女包', '单肩包');
INSERT INTO `ams_accountitem` VALUES ('468', '2017111313363620926', '971', '972', null, '122', '1', 'GBP', '302', null, '302', 'Number——06', null, null, '0', '5', '1', '365', '2017-11-15', '2017-11-13', null, '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '1000.00', '1312.08', '0.00', '1.31208', '8.71193', null, '黄金首饰', '黄金');
INSERT INTO `ams_accountitem` VALUES ('469', '2017111314042298110', '971', '972', null, '122', '1', 'CNY', '302', '302', '302', 'Number——077', '为了经历。经历吃喝。尖椒鸡，毛血旺，辣子肥肠，爆炒毛肚，冒菜串串火锅，深夜大排档。经历爱恨。暗恋，告白，暧昧，热恋，分手，纠葛，出轨，复合。经历悲喜。婚姻，争吵，和好，陪伴，亲人离世，小孩诞生。经历转变。生理上的由年轻健壮到年老体弱的转变，和心理上的由纠结往复到豁达通透的转变。经历性爱。不同的姿势，不同的人，不同的地点，不同的感受。经历妥协。原谅老板的剥削，伴侣的背叛，孩子的哭闹，生活的种种不如意。经历死亡。你看着它踏着循序渐进不急不慢的节奏向你驶来，带着颓败的，释然的气息。生命的美好之处就在于，我们永远不知道明天的自己会经历什么。未来的事物被一道帘子掩着，虚虚实实，若隐若现，不可捉摸。而唯有活着，才会有掀开帘子探个究竟的可能性。\n\n作者：田可乐\n链接：https://www.zhihu.com/question/25032523/answer/135442611\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', null, '0', '4', '1', '365', '2017-11-14', '2017-11-13', '2017-11-13', '2017-11-13', null, '0.00', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '264', '100.00', '15.05', '0.00', '0.15047', '1.00000', '著作权归作者所有。商业转载请联系作者获', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem` VALUES ('470', '2017111413270818911', '976', '982', null, '130', '1', 'CNY', '302', null, '302', 'coding', null, null, '0', '3', '1', '365', '2017-11-07', '2017-11-14', null, '2017-11-14', null, null, 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '111.00', '16.72', null, '0.15064', '1.00000', null, '家用电器', '电脑');
INSERT INTO `ams_accountitem` VALUES ('471', '2017111413270818911', '971', '972', null, '130', '1', 'CNY', '302', null, '302', 'coding', null, null, '0', '3', '1', '365', '2017-11-14', '2017-11-14', null, '2017-11-14', null, null, 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '111.00', '16.72', null, '0.15164', '1.00000', null, '黄金首饰', '黄金');
INSERT INTO `ams_accountitem` VALUES ('472', '2017111413270818911', '976', '980', null, '130', '1', 'HKD', '302', null, '302', 'coding', null, null, '0', '3', '1', '365', '2017-11-08', '2017-11-14', null, '2017-11-14', null, null, 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '111.00', '14.23', null, '0.12819', '0.85095', null, '家用电器', '电视');
INSERT INTO `ams_accountitem` VALUES ('473', '2017111413270818911', '966', '968', null, '130', '1', 'JPY', '302', null, '302', 'coding', null, null, '0', '3', '1', '365', '2017-11-30', '2017-11-14', null, '2017-11-14', null, null, 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '111.00', '0.98', null, '0.00880', '0.05843', null, '潮流女包', '单肩包');
INSERT INTO `ams_accountitem` VALUES ('474', '2017111413270818911', '976', '980', null, '130', '1', 'EUR', '302', null, '302', 'coding', null, null, '0', '3', '1', '365', '2017-11-08', '2017-11-14', null, '2017-11-14', null, null, 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '111.00', '129.52', null, '1.16686', '7.74609', null, '家用电器', '电视');
INSERT INTO `ams_accountitem` VALUES ('475', '2017111413270818911', '971', '973', null, '130', '1', 'CNY', '302', null, '302', 'coding', null, null, '0', '3', '1', '365', '2017-11-14', '2017-11-14', null, '2017-11-14', null, null, 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '1111.00', '167.36', null, '0.15064', '1.00000', null, '黄金首饰', 'K金');
INSERT INTO `ams_accountitem` VALUES ('476', '2017111413270818911', '976', '982', null, '130', '1', 'CNY', '302', null, '302', 'coding', null, null, '0', '3', '0', '365', '2017-11-15', '2017-11-14', null, '2017-11-14', null, null, 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '221.00', '33.29', null, '0.15064', '1.00000', null, '家用电器', '电脑');
INSERT INTO `ams_accountitem` VALUES ('477', '2017111413270818911', '976', '981', null, '130', '1', 'EUR', '302', null, '302', 'coding', null, null, '0', '3', '0', '365', '2017-11-23', '2017-11-14', null, '2017-11-14', null, null, 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '112.00', '130.69', null, '1.16686', '7.74609', null, '家用电器', '手机');
INSERT INTO `ams_accountitem` VALUES ('478', '2017111413270818911', '971', '973', null, '130', '1', 'CNY', '302', null, '302', 'coding', null, null, '0', '3', '0', '365', '2017-11-26', '2017-11-14', null, '2017-11-14', null, null, 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '121.00', '18.23', null, '0.15064', '1.00000', null, '黄金首饰', 'K金');
INSERT INTO `ams_accountitem` VALUES ('479', '2017111413270818911', '966', '967', null, '130', '1', 'HKD', '302', null, '302', 'coding', null, null, '0', '3', '0', '365', '2017-11-22', '2017-11-14', null, '2017-11-14', null, null, 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '121.00', '15.51', null, '0.12819', '0.85095', null, '潮流女包', '真皮包');
INSERT INTO `ams_accountitem` VALUES ('480', '2017111413270818911', '971', '972', null, '130', '1', 'USD', '302', null, '302', 'coding', null, null, '0', '3', '0', '365', '2017-11-29', '2017-11-14', null, '2017-11-14', null, null, 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '121.00', '121.00', null, '1.00000', '6.63900', null, '黄金首饰', '黄金');
INSERT INTO `ams_accountitem` VALUES ('481', '2017111413270818911', '971', '972', null, '125', '1', 'AUD', '302', null, '302', 'coding', null, null, '0', '3', '0', '365', '2017-12-07', '2017-11-14', null, '2017-11-14', null, null, 'B2M', 'USD', 'GBP', 'QWEW', '蔡康永', null, '122.00', '93.14', null, '0.76348', '0.58212', null, '黄金首饰', '黄金');
INSERT INTO `ams_accountitem` VALUES ('482', '2017111413303292839', '971', '972', null, '129', '1', 'HKD', '302', null, '302', '12', null, null, '0', '5', '0', '365', '2017-11-14', '2017-11-14', null, '2017-11-14', null, '0.00', 'B2L', 'USD', 'CNY', 'QWEW', '何大人', '266', '121.00', '15.51', '0.00', '0.12819', '0.85103', null, '黄金首饰', '黄金');
INSERT INTO `ams_accountitem` VALUES ('483', '2017111415124479388', '630', '631', null, '55', '1', 'CNY', '213', null, '213', '22222', '1222', null, '0', '4', '1', '239', '2017-11-09', '2017-11-14', null, '2017-11-14', null, '0.00', 'B2C', 'USD', 'CNY', 'KJNZ', '网易考拉', '267', '12.00', '1.81', '0.00', '0.15064', '1.00000', '12', '交通费用', '机票费用');
INSERT INTO `ams_accountitem` VALUES ('484', '2017111415445089632', '971', '972', null, '127', '1', 'CNY', '302', null, '302', '123', '阿萨德发表过', null, '0', '5', '1', '365', '2017-11-14', '2017-11-14', null, '2017-11-14', null, '0.00', 'B2L', 'USD', 'EUR', 'QWEW', '罗振宇', '268', '111.00', '16.72', '0.00', '0.15064', '0.12910', '12', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem` VALUES ('485', '2017111415483412406', '976', '982', null, '131', '1', 'CNY', '302', null, '302', '1234', '双方的说法从', null, '0', '5', '0', '365', '2017-11-16', '2017-11-14', null, '2017-11-14', null, '0.00', 'B2K', 'USD', 'USD', 'QWEW', '张三供应商', '269', '212.00', '31.94', '0.00', '0.15064', '0.15064', 'sad', '家用电器', '电脑');
INSERT INTO `ams_accountitem` VALUES ('486', '2017111416090684263', '757', '759', null, '101', '1', 'CNY', '246', null, '246', '111', null, null, '0', '5', '0', '306', '2017-11-15', '2017-11-14', null, '2017-11-14', null, '0.00', 'd2d', 'USD', 'USD', 'BILI', '肯德基', '270', '12.00', '1.81', '0.00', '0.15064', '0.15064', '11', '税费', '666');
INSERT INTO `ams_accountitem` VALUES ('487', '2017111509451556501', '976', '982', null, '134', '1', 'EUR', '302', null, '302', 'NUMBER_009', null, null, '0', '3', '1', '365', '2017-11-15', '2017-11-15', null, '2017-11-15', null, null, 'B2L', 'USD', 'USD', 'QWEW', 'DSGF', null, '100.00', '117.94', null, '1.17938', '1.17938', null, '家用电器', '电脑');
INSERT INTO `ams_accountitem` VALUES ('488', '2017111509451556501', '976', '981', null, '131', '1', 'EUR', '302', null, '302', 'NUMBER_009', null, null, '0', '3', '0', '365', '2017-11-06', '2017-11-15', null, '2017-11-15', null, null, 'B2L', 'USD', 'USD', 'QWEW', '张三供应商', null, '200.00', '235.88', null, '1.17938', '1.17938', null, '家用电器', '手机');
INSERT INTO `ams_accountitem` VALUES ('489', '2017111715173536745', '657', '660', null, '99', '0', 'CNY', '213', null, null, '345', '345', null, '0', '1', '1', '239', '2017-11-09', '2017-11-17', null, null, null, null, 'C2B', 'USD', 'CNY', 'KJNZ', '美图美妆', null, '345.00', '52.06', null, '0.15089', '1.00000', '345', '用餐费', '中餐');
INSERT INTO `ams_accountitem` VALUES ('490', '2017111716123964662', '976', '982', null, '136', '1', 'AUD', '302', null, null, '823905284782', null, null, '0', '1', '1', '365', '2017-11-17', '2017-11-17', null, null, null, null, 'B2K', 'USD', 'HKD', 'QWEW', '软通动力中文', null, '100.00', '75.88', null, '0.75878', '5.92588', null, '家用电器', '电脑');
INSERT INTO `ams_accountitem` VALUES ('491', '2017111716504811113', '757', '758', null, '101', '1', 'CNY', '286', null, '286', '111', null, null, '0', '5', '1', '306', '2017-11-02', '2017-11-17', null, '2017-11-17', null, '0.00', 'd2d', 'USD', 'USD', 'BILI', '肯德基', '271', '0.00', '111.00', '0.00', '0.15077', '0.15077', null, '税费', '123');
INSERT INTO `ams_accountitem` VALUES ('492', '2017112114434410959', '657', '660', null, '97', '0', 'AUD', '213', null, null, '654', '456', null, '0', '1', '1', '239', '2017-11-03', '2017-11-21', null, null, null, null, 'C2B', 'USD', 'USD', 'KJNZ', '42525', null, '45.00', '33.95', null, '0.75438', '0.75438', '456', '用餐费', '中餐');
INSERT INTO `ams_accountitem` VALUES ('499', '2017112814174611546', '657', '660', null, '55', '1', 'AUD', '213', '213', null, '42423', '234', null, '0', '2', '1', '239', '2017-11-27', '2017-11-28', '2017-11-28', null, null, null, 'C2B', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '23.00', '17.50', null, '0.76086', '5.01910', '324', '用餐费', '中餐');
INSERT INTO `ams_accountitem` VALUES ('500', '2017121413374513059', '657', '659', null, '99', '0', 'AUD', '213', null, null, '21321313', '12', null, '0', '1', '1', '239', '2017-12-15', '2017-12-14', null, null, null, null, 'C2B', 'USD', 'CNY', 'KJNZ', '美图美妆', null, '12.00', '9.16', null, '0.76324', '5.05037', '12', '用餐费', '晚餐');
INSERT INTO `ams_accountitem` VALUES ('501', '2017121810100476460', '630', '631', null, '99', '1', 'AUD', '213', '213', null, '12345687654', '34', null, '0', '2', '1', '239', '2017-12-29', '2017-12-18', '2017-12-18', null, null, null, 'C2B', 'USD', 'CNY', 'KJNZ', '美图美妆', null, '34.00', '26.00', null, '0.76476', '5.05560', '34', '交通费用', '机票费用');
INSERT INTO `ams_accountitem` VALUES ('502', '2017121810333089000', '657', '660', null, '99', '0', 'AUD', '213', '213', null, '234567654', '34 ', null, '0', '2', '1', '239', '2018-01-03', '2017-12-18', '2017-12-18', null, null, null, 'C2B', 'USD', 'CNY', 'KJNZ', '美图美妆', null, '34.00', '26.00', null, '0.76476', '5.05560', '34', '用餐费', '中餐');
INSERT INTO `ams_accountitem` VALUES ('512', null, '100', '100100', '100100', 'QWEW1510306718370', '1', 'USD', null, null, null, 'A123456', null, null, '0', '1', 'I', '14', '2018-03-02', '2018-12-28', null, null, null, '3.00', 'BC', null, null, null, null, null, '3.00', '20.59', '1.00', null, null, '仓库操作费', null, null);
INSERT INTO `ams_accountitem` VALUES ('513', null, '100', '100100', '100100', 'QWEW1510306718370', '1', 'USD', null, null, null, 'A123456', null, null, '0', '1', 'I', '14', '2018-03-02', '2018-12-28', null, null, null, '3.00', 'BC', null, null, null, null, null, '3.00', '20.59', '1.00', null, null, '仓库操作费', null, null);
INSERT INTO `ams_accountitem` VALUES ('514', null, '100', '100100', '100100', 'QWEW1510306718370', '1', 'USD', null, null, null, 'A123456', null, null, '0', '1', 'I', '14', '2018-03-02', '2019-01-12', null, null, null, '3.00', 'BC', null, null, null, null, null, '3.00', '20.25', '1.00', null, null, '仓库操作费', null, null);
INSERT INTO `ams_accountitem` VALUES ('515', null, '100', '100100', '100100', 'QWEW1510306718370', '1', 'USD', null, null, null, 'A123456', null, null, '0', '1', 'I', '14', '2018-03-02', '2019-01-12', null, null, null, '3.00', 'BC', null, null, null, null, null, '3.00', '20.24', '1.00', null, null, '仓库操作费', null, null);
INSERT INTO `ams_accountitem` VALUES ('516', null, null, null, null, 'QWEW1510306718370', null, 'CNY', null, null, null, '123456789', null, null, '0', '1', 'I', '14', '2019-01-11', '2019-01-12', null, null, null, null, 'COD', null, null, null, null, null, '26.00', '26.00', null, null, null, '打包称重费', null, null);
INSERT INTO `ams_accountitem` VALUES ('517', null, null, null, null, 'QWEW1510306718370', null, 'CNY', null, null, null, '123456789', null, null, '0', '1', 'I', '14', '2019-01-11', '2019-01-12', null, null, null, null, 'COD', null, null, null, null, null, '26.00', '26.00', null, null, null, '打包称重费', null, null);
INSERT INTO `ams_accountitem` VALUES ('518', null, null, null, null, 'QWEW1510306718370', null, 'CNY', null, null, null, '123456789', null, null, '0', '1', 'I', '14', '2019-01-11', '2019-01-12', null, null, null, null, 'COD', null, null, null, null, null, '26.00', '26.00', null, null, null, '打包称重费', null, null);
INSERT INTO `ams_accountitem` VALUES ('519', null, null, null, null, 'QWEW1510306718370', null, 'CNY', null, null, null, '123456789', null, null, '0', '1', 'I', '14', '2019-01-11', '2019-01-12', null, null, null, null, 'COD', null, null, null, null, null, '26.00', '26.00', null, null, null, '打包称重费', null, null);
INSERT INTO `ams_accountitem` VALUES ('520', null, null, null, null, 'QWEW1510306718370', null, 'CNY', null, null, null, '123456789', null, null, '0', '1', 'I', '14', '2019-01-11', '2019-01-12', null, null, null, null, 'COD', null, null, null, null, null, '26.00', '26.00', null, null, null, '打包称重费', null, null);
INSERT INTO `ams_accountitem` VALUES ('521', null, null, null, null, 'QWEW1510306718370', null, 'CNY', null, null, null, '123456789', null, null, '0', '1', 'I', '14', '2019-01-11', '2019-01-12', null, null, null, null, 'COD', null, null, null, null, null, '26.00', '26.00', null, null, null, '打包称重费', null, null);
INSERT INTO `ams_accountitem` VALUES ('522', null, null, null, null, 'QWEW1510306718370', null, 'CNY', null, null, null, '123456789', null, null, '0', '1', 'I', '14', '2019-01-11', '2019-01-12', null, null, null, null, 'COD', null, null, null, null, null, '26.00', '26.00', null, null, null, '打包称重费', null, null);
INSERT INTO `ams_accountitem` VALUES ('523', null, null, null, null, 'QWEW1510306718370', null, 'CNY', null, null, null, '123456789', null, null, '0', '1', 'I', '14', '2019-01-11', '2019-01-12', null, null, null, null, 'COD', null, null, null, null, null, '26.00', '26.00', null, null, null, '打包称重费', null, null);
INSERT INTO `ams_accountitem` VALUES ('524', null, '100', '100100', '100100', 'QWEW1510306718370', '1', 'USD', null, null, null, 'A123456', null, null, '0', '1', 'I', '14', '2018-03-02', '2019-01-12', null, null, null, '3.00', 'BC', null, null, null, null, null, '3.00', '20.29', '1.00', null, null, '仓库操作费', null, null);
INSERT INTO `ams_accountitem` VALUES ('525', null, '100', '100100', '100100', 'QWEW1510306718370', '1', 'USD', null, null, null, 'A123456', null, null, '0', '1', 'I', '14', '2018-03-02', '2019-01-12', null, null, null, '3.00', 'BC', null, null, null, null, null, '3.00', '20.29', '1.00', null, null, '仓库操作费', null, null);
INSERT INTO `ams_accountitem` VALUES ('526', null, '100', '100100', '100100', 'QWEW1510306718370', '1', 'USD', null, null, null, 'A123456', null, null, '0', '1', 'I', '14', '2018-03-02', '2019-01-12', null, null, null, '3.00', 'BC', null, null, null, null, null, '3.00', '20.29', '1.00', null, null, '仓库操作费', null, null);
INSERT INTO `ams_accountitem` VALUES ('527', null, '100', '100100', '100100', 'QWEW1510306718370', '1', 'USD', null, null, null, 'A123456', null, null, '0', '1', 'I', '14', '2018-03-02', '2019-01-12', null, null, null, '3.00', 'BC', null, null, null, null, null, '3.00', '20.29', '1.00', null, null, '仓库操作费', null, null);
INSERT INTO `ams_accountitem` VALUES ('528', null, '100', '100100', '100100', 'QWEW1510306718370', '1', 'USD', null, null, null, 'A123456', null, null, '0', '1', 'I', '14', '2018-03-02', '2019-01-12', null, null, null, '3.00', 'BC', null, null, null, null, null, '3.00', '20.29', '1.00', null, null, '仓库操作费', null, null);
INSERT INTO `ams_accountitem` VALUES ('529', null, '100', '100100', '100100', 'QWEW1510306718370', '1', 'USD', null, null, null, 'A123456', null, null, '0', '1', 'I', '14', '2018-03-02', '2019-01-12', null, null, null, '3.00', 'BC', null, null, null, null, null, '3.00', '20.29', '1.00', null, null, '仓库操作费', null, null);
INSERT INTO `ams_accountitem` VALUES ('530', null, '100', '100100', '100100', 'QWEW1510306718370', '1', 'USD', null, null, null, 'A123456', null, null, '0', '1', 'I', '14', '2018-03-02', '2019-01-12', null, null, null, '3.00', 'BC', null, null, null, null, null, '3.00', '20.29', '1.00', null, null, '仓库操作费', null, null);
INSERT INTO `ams_accountitem` VALUES ('531', null, null, null, null, 'QWEW1510306718370', null, 'CNY', null, null, null, 'IK000521', null, null, '0', '1', 'I', '14', '2019-01-14', '2019-01-15', null, null, null, null, 'EXTR', null, null, null, null, null, '5.00', '5.00', null, null, null, '?????', null, null);
INSERT INTO `ams_accountitem` VALUES ('532', null, null, null, null, 'QWEW1510306718370', null, 'CNY', null, null, null, 'IK000520', null, null, '0', '1', 'I', '14', '2019-01-14', '2019-01-15', null, null, null, null, 'EXTR', null, null, null, null, null, '5.00', '5.00', null, null, null, '?????', null, null);
INSERT INTO `ams_accountitem` VALUES ('533', null, null, null, null, 'QWEW1510306718370', null, 'CNY', null, null, null, 'IK000519', null, null, '0', '1', 'I', '14', '2019-01-14', '2019-01-15', null, null, null, null, 'EXTR', null, null, null, null, null, '5.00', '5.00', null, null, null, '?????', null, null);
INSERT INTO `ams_accountitem` VALUES ('534', null, null, null, null, 'QWEW1510306718370', null, 'CNY', null, null, null, '123456789', null, null, '0', '1', 'I', '14', '2019-01-16', '2019-01-17', null, null, null, null, 'COD', null, null, null, null, null, '26.00', '26.00', null, null, null, '?????', null, null);
INSERT INTO `ams_accountitem` VALUES ('535', null, null, null, null, 'QWEW1510306718370', null, 'CNY', null, null, null, 'YC20190116150825605', null, null, '0', '1', 'I', '14', '2019-01-16', '2019-01-17', null, null, null, null, 'EXTR', null, null, null, null, null, '5.00', '5.00', null, null, null, '?????', null, null);
INSERT INTO `ams_accountitem` VALUES ('536', null, null, null, null, 'QWEW1510306718370', null, 'CNY', null, null, null, 'YC20190116150837177', null, null, '0', '1', 'I', '14', '2019-01-16', '2019-01-17', null, null, null, null, 'EXTR', null, null, null, null, null, '74.00', '74.00', null, null, null, '?????', null, null);
INSERT INTO `ams_accountitem` VALUES ('537', null, null, null, null, 'QWEW1510306718370', null, 'CNY', null, null, null, 'YC20190116150835886', null, null, '0', '1', 'I', '14', '2019-01-16', '2019-01-17', null, null, null, null, 'EXTR', null, null, null, null, null, '5.00', '5.00', null, null, null, '打包费', null, null);
INSERT INTO `ams_accountitem` VALUES ('538', null, null, null, null, 'QWEW1510306718370', null, 'CNY', null, null, null, 'YC20190116150840624', null, null, '0', '1', 'I', '14', '2019-01-16', '2019-01-17', null, null, null, null, 'EXTR', null, null, null, null, null, '5.00', '5.00', null, null, null, '?????', null, null);
INSERT INTO `ams_accountitem` VALUES ('539', null, null, null, null, 'QWEW1510306718370', null, 'CNY', null, null, null, 'IK001469', null, null, '0', '1', 'I', '14', '2019-01-16', '2019-01-17', null, null, null, null, 'EXTR', null, null, null, null, null, '5.00', '5.00', null, null, null, '?????', null, null);
INSERT INTO `ams_accountitem` VALUES ('540', '2019021516524984857', '1012', '1015', null, '140', '0', 'AUD', '1', '1', null, '2321312312312', '2222', null, '0', '2', '1', '4', '2019-02-15', '2019-02-16', '2019-03-14', null, null, null, 'WH', 'USD', 'CNY', null, 'E年后', null, '15.00', '10.62', null, '0.70877', '4.80530', '1221', '代理运费', '提货费');
INSERT INTO `ams_accountitem` VALUES ('541', '2019021517453552504', '1016', '1017', null, '141', '0', 'CNY', '1', '1', null, '15161616', 'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn', null, '0', '2', '1', '4', '2019-02-07', '2019-02-16', '2019-03-14', null, null, null, 'B2C', 'USD', 'USD', null, '出库', null, '111.00', '16.38', null, '0.14760', '0.14760', '12312321', '1231231', 'wqeqw');
INSERT INTO `ams_accountitem` VALUES ('542', '2019021518310857459', '1016', '1017', null, '141', '0', 'CNY', '1', '1', null, '5151561616', '1212111', null, '0', '2', '1', '4', '2019-02-13', '2019-02-16', '2019-03-14', null, null, null, 'WH', 'USD', 'USD', null, '出库', null, '1212.00', '179.05', null, '0.14773', '0.14773', '1212', '1231231', 'wqeqw');
INSERT INTO `ams_accountitem` VALUES ('543', '2019022114391467546', '1021', '1027', null, '148', '1', 'CNY', '1', null, null, '001', null, null, '1', '1', '1', '4', '2019-02-21', '2019-02-21', null, null, null, null, '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '290445.00', '43332.65', null, '0.14919', '1.00000', null, '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem` VALUES ('544', '2019022114433319318', '1021', '1027', null, '148', '1', 'CNY', '1', '1', null, '001', '生成记账管理测试！！！！', null, '1', '2', '1', '4', '2019-02-20', '2019-02-21', '2019-02-21', null, null, null, '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '436577.00', '34.67', null, '0.14919', '1.00000', '生成波次单号', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem` VALUES ('545', '2019022114464471437', '1021', '1027', null, '148', '0', 'CNY', '1', '1', '1', '001', '百度（纳斯达克：BIDU），全球最大的中文搜索引擎、最大的中文网站。百度愿景是：成为最懂用户，并能帮助人们成长的全球顶级高科技公司。 [1] \n“百度”二字，来自于八百年前南宋词人辛弃疾的一句词：众里寻他千百度。这句话描述了词人对理想的执着追求。1999年底，身在美国硅谷的李彦宏看到了中国互联网及中文搜索引擎服务的巨大发展潜力，抱着技术改变世界的梦想，他毅然辞掉硅谷的高薪工作，携搜索引擎专利技术，于 2000年1月1日在中关村创建了百度公司。\n百度拥有数万名研发工程师，这是中国乃至全球最为优秀的技术团队。这支队伍掌握着世界上最为先进的搜索引擎技术，使百度成为中国掌握世界尖端科学核心技术的中国高科技企业，也使中国成为美国、俄罗斯、和韩国之外，全球仅有的4个拥有搜索引擎核心技术的国家之一。\n2019年1月17日下午，百度与中央电视台举办联合新闻发布会，正式宣布：百度和2019年《春节联欢晚会》达成独家互动合作！', null, '0', '3', '1', '4', '2019-02-17', '2019-02-21', '2019-02-22', '2019-02-22', null, null, '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '4534546.00', '676527.06', null, '0.14919', '1.00000', null, '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem` VALUES ('546', '2019022115505215676', '1024', '1026', null, '144', '1', 'CNY', '1', null, '1', '001', null, null, '0', '6', '0', '4', '2019-02-20', '2019-02-21', null, '2019-02-21', null, '0.00', '进口直邮', 'USD', 'CNY', null, '出库', '272', '88888.00', '13255.96', '0.00', '0.14813', '1.00000', null, '出库', '出库1');
INSERT INTO `ams_accountitem` VALUES ('547', '2019022115595232956', '1012', '1015', null, '148', '0', 'CNY', '1', '1', null, '001', '落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。!!!!', null, '1', '2', '0', '4', '2019-02-20', '2019-02-22', '2019-02-22', null, null, null, 'B2C', 'USD', 'CNY', null, '生成波次单', null, '3525779.00', '525482.10', null, '0.14904', '1.00000', '著眉间淡淡痕，那年春，记得儿家字阿莼。', '代理运费', '提货费');
INSERT INTO `ams_accountitem` VALUES ('548', '2019022210153332294', '1020', '1028', null, '142', '0', 'CNY', '1', null, '1', '001', null, null, '0', '3', '1', '4', '2019-02-21', '2019-02-22', null, '2019-02-22', null, null, 'B2C', 'USD', 'CNY', null, '打包', null, '9898787.00', '1471781.35', null, '0.14868', '1.00000', null, '打包费用', '操作员打包费用');
INSERT INTO `ams_accountitem` VALUES ('549', '2019022210323635868', '1024', '1025', null, '141', '1', 'CNY', '1', '1', null, '001', '21333333333333333', null, '0', '2', '1', '4', '2019-02-19', '2019-02-22', '2019-03-14', null, null, null, 'B2B', 'USD', 'USD', null, '出库', null, '8888.00', '1321.46', null, '0.14868', '0.14868', null, '出库', '2019.02.19出库1');
INSERT INTO `ams_accountitem` VALUES ('550', '2019022210342123667', '1020', '1028', null, '143', '0', 'CNY', '1', null, '1', '001', null, null, '0', '3', '1', '4', '2019-02-21', '2019-02-22', null, '2019-03-05', null, null, 'B2B', 'USD', 'CNY', null, '打包', null, '999.00', '148.53', null, '0.14868', '1.00000', null, '打包费用', '操作员打包费用');
INSERT INTO `ams_accountitem` VALUES ('551', '2019022210342123667', '1020', '1028', null, '142', '0', 'CNY', '1', null, '1', '001', null, null, '0', '3', '0', '4', '2019-02-22', '2019-02-22', null, '2019-02-22', null, null, 'B2B', 'USD', 'CNY', null, '打包', null, '999.00', '148.53', null, '0.14868', '1.00000', null, '打包费用', '操作员打包费用');
INSERT INTO `ams_accountitem` VALUES ('552', '2019022217573969402', '1012', '1015', null, '148', '0', 'CNY', '1', '1', null, '006', null, null, '1', '2', '0', '4', '2019-02-21', '2019-02-23', '2019-03-05', null, null, null, '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '766.00', '113.98', null, '0.14880', '1.00000', null, '代理运费', '提货费');
INSERT INTO `ams_accountitem` VALUES ('553', '2019031410014339004', '1016', '1017', null, '147', '1', 'CNY', '1', null, null, '1111111111111111111', '111', null, '1', '1', '1', '4', null, '2019-03-14', null, null, null, null, '111', 'USD', 'CNY', null, 'saasasassa', null, '1414.01', '210.89', null, '0.14914', '1.00000', '111', '1231231', 'null');
INSERT INTO `ams_accountitem` VALUES ('554', '2019031410025475256', '1021', '1023', null, '147', '1', 'CNY', '1', '1', null, '1414141414', '14144', null, '1', '2', '1', '4', null, '2019-03-14', '2019-03-14', null, null, null, '进口直邮', 'USD', 'CNY', null, 'saasasassa', null, '1414.00', '210.88', null, '0.14914', '1.00000', '141414', '库内波次单操作', 'null');
INSERT INTO `ams_accountitem` VALUES ('555', '2019031410062383189', '1021', '1023', null, '148', '1', 'CNY', '1', null, null, '121212121', '21', null, '1', '1', '1', '4', null, '2019-03-14', null, null, null, null, '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '11112.00', '1657.24', null, '0.14914', '1.00000', '21212', '库内波次单操作', 'null');
INSERT INTO `ams_accountitem` VALUES ('556', '2019031410113417315', '1012', '1014', null, '148', '1', 'CNY', '1', null, null, '33333333333333', '21121', null, '1', '1', '1', '4', null, '2019-03-14', null, null, null, null, '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '1121.00', '167.19', null, '0.14914', '1.00000', '2121', '代理运费', 'null');
INSERT INTO `ams_accountitem` VALUES ('557', '2019031410123976465', '1021', '1027', null, '148', '1', 'CNY', '1', null, null, '2323213', '22312', null, '1', '1', '1', '4', null, '2019-03-14', null, null, null, null, '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '1111.00', '165.69', null, '0.14914', '1.00000', '222', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem` VALUES ('558', '2019031410144098767', '1012', '1014', null, '147', '1', 'CNY', '1', null, null, '6666666666', '4444', null, '1', '1', '1', '4', null, '2019-03-14', null, null, null, null, '进口直邮', 'USD', 'CNY', null, 'saasasassa', null, '14.30', '2.13', null, '0.14914', '1.00000', '4444', '代理运费', '海运费');
INSERT INTO `ams_accountitem` VALUES ('559', '2019031410192122037', '1024', '1026', null, '144', '1', 'CNY', '1', null, null, '99999999', 'wwsw', null, '1', '1', '1', '4', null, '2019-03-14', null, null, null, null, '进口直邮', 'USD', 'CNY', null, '出库', null, '156.00', '23.27', null, '0.14914', '1.00000', 'wewwe', '出库', '出库1');
INSERT INTO `ams_accountitem` VALUES ('560', '2019031410231397712', '1020', '1028', null, '148', '1', 'AUD', '1', null, null, 't111111', '232232', null, '1', '1', '1', '4', null, '2019-03-14', null, null, null, null, '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '1111.00', '785.91', null, '0.70739', '4.74311', '22222', '打包费用', '操作员打包费用');
INSERT INTO `ams_accountitem` VALUES ('561', '2019031410374182194', '1012', '1014', null, '144', '1', 'CNY', '1', null, null, '7777777', '7', null, '1', '1', '1', '4', null, '2019-03-14', null, null, null, null, '进口直邮', 'USD', 'CNY', null, '出库', null, '7777.00', '1159.86', null, '0.14914', '1.00000', '77', '代理运费', '海运费');
INSERT INTO `ams_accountitem` VALUES ('562', '2019031410381054084', '1021', '1027', null, '147', '0', 'CNY', '1', null, null, '5555', '5', null, '1', '1', '1', '4', null, '2019-03-14', null, null, null, null, '555', 'USD', 'CNY', null, 'saasasassa', null, '755.00', '112.60', null, '0.14914', '1.00000', '5', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem` VALUES ('563', '2019031410390142102', '1021', '1027', null, '148', '1', 'HKD', '1', null, null, '688888', '888', null, '1', '1', '1', '4', null, '2019-03-14', null, null, null, null, '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '25.00', '3.18', null, '0.12739', '0.85418', '88', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem` VALUES ('564', '2019031411004717248', '1021', '1027', null, '144', '1', 'CNY', '1', null, '1', '999999', 'null', null, '0', '3', '1', '4', '2019-03-15', '2019-03-14', null, '2019-03-14', null, null, '进口直邮', 'USD', 'CNY', null, '出库', null, '1553.00', '231.45', null, '0.14904', '1.00000', '3636', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem` VALUES ('565', '2019031411010375836', '1021', '1027', null, '148', '1', 'AUD', '1', null, null, '999999', 'null', null, '0', '1', '1', '4', '2019-03-02', '2019-03-14', null, null, null, null, '555', 'USD', 'CNY', null, '生成波次单', null, '666.00', '470.99', null, '0.70719', '4.74509', '66', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem` VALUES ('566', '2019031411031167735', '1021', '1027', null, '148', '0', 'AUD', '1', null, null, '222', 'null', null, '1', '1', '1', '4', null, '2019-03-14', null, null, null, null, '111', 'USD', 'CNY', null, '生成波次单', null, '111.00', '78.50', null, '0.70719', '4.74509', '222', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem` VALUES ('567', '2019031411032367439', '1021', '1027', null, '148', '0', 'CNY', '1', null, null, '222', 'null', null, '1', '1', '1', '4', null, '2019-03-14', null, null, null, null, '111', 'USD', 'CNY', null, '生成波次单', null, '222.00', '33.09', null, '0.14904', '1.00000', '2', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem` VALUES ('568', '2019031411042449619', '1024', '1026', null, '148', '0', 'AUD', '1', null, null, '11111', 'null', null, '1', '1', '1', '4', null, '2019-03-14', null, null, null, null, '555', 'USD', 'CNY', null, '生成波次单', null, '222.00', '157.00', null, '0.70719', '4.74509', 'null', '出库', '出库1');
INSERT INTO `ams_accountitem` VALUES ('569', '2019031411062661937', '1021', '1027', null, '148', '0', 'AUD', '1', null, null, '11111', 'null', null, '0', '1', '1', '4', '2019-03-30', '2019-03-14', null, null, null, null, '555', 'USD', 'CNY', null, '生成波次单', null, '11.00', '7.78', null, '0.70719', '4.74509', 'null', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem` VALUES ('570', '2019031411072299443', '1021', '1027', null, '148', '0', 'AUD', '1', null, null, '11111', 'null', null, '0', '1', '1', '4', '2019-03-29', '2019-03-14', null, null, null, null, '555', 'USD', 'CNY', null, '生成波次单', null, '14.00', '9.90', null, '0.70719', '4.74509', 'null', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem` VALUES ('571', '2019031411085732480', '1021', '1027', null, '148', '0', 'AUD', '1', null, null, '1111', 'null', null, '0', '1', '1', '4', '2019-03-17', '2019-03-14', null, null, null, null, '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '11.00', '7.78', null, '0.70719', '4.74509', 'null', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem` VALUES ('572', '2019031411091033916', '1024', '1026', null, '148', '0', 'CNY', '1', null, '1', '1111', 'null', null, '0', '3', '1', '4', '2019-03-16', '2019-03-14', null, '2019-03-14', null, null, '555', 'USD', 'CNY', null, '生成波次单', null, '22.00', '3.28', null, '0.14904', '1.00000', '2', '出库', '出库1');
INSERT INTO `ams_accountitem` VALUES ('573', '2019031411100990288', '1021', '1026', null, '148', '0', 'CNY', '1', null, '1', '1414141414', 'null', null, '0', '3', '0', '4', '2019-03-10', '2019-03-14', null, '2019-03-14', null, null, '555', 'USD', 'CNY', null, '生成波次单', null, '414.00', '61.70', null, '0.14904', '1.00000', '44', '库内波次单操作', '出库1');
INSERT INTO `ams_accountitem` VALUES ('574', '2019031411103538201', '1021', '1027', null, '148', '0', 'AUD', '1', null, '1', '1414141414', 'null', null, '0', '3', '0', '4', '2019-03-15', '2019-03-14', null, '2019-03-14', null, null, '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '4444.00', '3142.75', null, '0.70719', '4.74509', '44', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem` VALUES ('575', '2019031411393889689', '1021', '1027', null, '148', '0', 'AUD', '1', null, '1', '0000000', '6', null, '0', '3', '1', '4', '2019-03-10', '2019-03-14', null, '2019-03-14', null, null, '555', 'USD', 'CNY', null, '生成波次单', null, '14.00', '0.00', null, '0.00000', '0.00000', '66', '库内波次单操作', '生成波次单');

-- ----------------------------
-- Table structure for ams_accountitem_history
-- ----------------------------
DROP TABLE IF EXISTS `ams_accountitem_history`;
CREATE TABLE `ams_accountitem_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(20) DEFAULT NULL COMMENT '明细编码',
  `category_level1_code` varchar(20) DEFAULT NULL COMMENT '一级分类编码',
  `category_level2_code` varchar(20) DEFAULT NULL COMMENT '二级分类编码',
  `category_code` varchar(20) DEFAULT NULL COMMENT '记账科目编码',
  `settlement_object_id` varchar(30) DEFAULT NULL COMMENT '结算对象编码',
  `settle_type` varchar(1) DEFAULT NULL COMMENT '结算类型',
  `account_brief` varchar(20) DEFAULT NULL COMMENT '交易简称',
  `currency` varchar(3) DEFAULT NULL COMMENT '交易币种',
  `creator` varchar(20) DEFAULT NULL COMMENT '创建人',
  `modified_by` varchar(20) DEFAULT NULL COMMENT '修改人',
  `auditor` varchar(20) DEFAULT NULL COMMENT '审批人',
  `ref_no` varchar(20) DEFAULT NULL COMMENT '关联单号',
  `note` text COMMENT '备注',
  `attachement` varchar(100) DEFAULT NULL COMMENT '附件',
  `df` varchar(1) DEFAULT NULL COMMENT '状态:0存在,1已删除',
  `status` int(11) DEFAULT NULL COMMENT '明细状态:0 失效/删除,1 新增	,2 已修改,3 已审核	,4 已生成账单,5 已开票,6 已结款',
  `in_out` varchar(1) DEFAULT NULL COMMENT '收入支出 ps:I-收入;O-支出',
  `org_id` int(11) DEFAULT NULL COMMENT '组织id',
  `trade_time` date DEFAULT NULL COMMENT '交易时间',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  `modify_time` date DEFAULT NULL COMMENT '修改时间',
  `audit_time` date DEFAULT NULL COMMENT '审批时间',
  `trade_unit` varchar(10) DEFAULT NULL COMMENT '交易单位',
  `count` decimal(10,2) DEFAULT NULL COMMENT '交易数量',
  `version` varchar(30) DEFAULT NULL COMMENT '版本号',
  `vc_id` int(11) DEFAULT NULL COMMENT '关联记账明细的id',
  `business_type` varchar(50) DEFAULT NULL COMMENT '业务类型',
  `account_currency` varchar(3) DEFAULT NULL COMMENT '账套币种',
  `settlement_currency` varchar(3) DEFAULT NULL COMMENT '结算对象币种',
  `account_id` varchar(4) DEFAULT NULL COMMENT '账套编码[org_code]',
  `settlement_object_name` varchar(50) DEFAULT NULL COMMENT '结算对象中文名',
  `bill_no` varchar(50) DEFAULT NULL COMMENT '账单号',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '交易金额',
  `settelment_amount` decimal(10,2) DEFAULT NULL COMMENT '结算金额',
  `unit_price` decimal(10,2) DEFAULT NULL COMMENT '交易单价',
  `exchange_rate` decimal(10,5) DEFAULT NULL COMMENT '汇率',
  `my_exchange_rate` decimal(10,5) DEFAULT NULL COMMENT '自定义汇率',
  `category_level1_name` varchar(20) DEFAULT NULL COMMENT '费用类别',
  `category_level2_name` varchar(20) DEFAULT NULL COMMENT '费用明细',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1252 DEFAULT CHARSET=utf8 COMMENT='记账明细历史版本';

-- ----------------------------
-- Records of ams_accountitem_history
-- ----------------------------
INSERT INTO `ams_accountitem_history` VALUES ('209', '2017092014355875063', '17', '18', null, '3', '1', '1223332', 'CNY', '7', null, null, '10011', 'weqweqwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', null, '0', '1', '1', '4', '2017-09-21', '2017-09-20', null, null, null, null, '1505889358768', '59', 'B2B', 'USD', 'AUD', 'XXXX', '网易', null, '24.00', '3.66', null, '0.15230', '0.18931', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('210', '2017092014364058789', '44', '45', null, '16', '1', '344', 'CNY', '53', null, null, '0233232', '3355', null, '0', '1', '1', '117', '2017-09-22', '2017-09-20', null, null, null, null, '1505889400848', '60', 'B2C', 'USD', 'USD', 'WAWJ', '知行思远信息技术有限公司', null, '355.00', '54.07', null, '0.15230', '0.15230', '服装', 'only');
INSERT INTO `ams_accountitem_history` VALUES ('211', '2017092014355875063', '17', '18', null, '3', '1', '1223332', 'CNY', '7', null, '7', '10011', 'weqweqwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', null, '0', '3', '1', '4', '2017-09-21', '2017-09-20', null, '2017-09-20', null, null, '1505889410775', '59', 'B2B', 'USD', 'AUD', 'XXXX', '网易', null, '24.00', '3.66', null, '0.15230', '0.18931', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('212', '2017092014355875063', '17', '18', null, '3', '1', '1223332', 'CNY', '7', null, '7', '10011', 'weqweqwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', null, '0', '4', '1', '4', '2017-09-21', '2017-09-20', null, '2017-09-20', null, '0.00', '1505889500941', '59', 'B2B', 'USD', 'AUD', 'XXXX', '网易', '152', '24.00', '3.66', '0.00', '0.15230', '0.18931', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('213', '2017092014422230720', '20', '22', null, '5', '1', null, 'GBP', '7', null, null, '212212', null, null, '0', '1', '0', '4', '2017-09-14', '2017-09-20', null, null, null, null, '1505889742575', '61', 'B2C', 'USD', 'CNY', 'XXXX', 'API结算对象', null, '34.00', '45.96', null, '1.35190', '8.87860', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('214', '2017092014422230720', '20', '22', null, '5', '1', null, 'GBP', '7', null, '7', '212212', null, null, '0', '3', '0', '4', '2017-09-14', '2017-09-20', null, '2017-09-20', null, null, '1505889771213', '61', 'B2C', 'USD', 'CNY', 'XXXX', 'API结算对象', null, '34.00', '45.96', null, '1.35190', '8.87860', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('215', '2017092014422230720', '20', '22', null, '5', '1', null, 'GBP', '7', null, '7', '212212', null, null, '0', '4', '0', '4', '2017-09-14', '2017-09-20', null, '2017-09-20', null, '0.00', '1505889807306', '61', 'B2C', 'USD', 'CNY', 'XXXX', 'API结算对象', '153', '34.00', '45.96', '0.00', '1.35190', '8.87860', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('216', '2017092014594193702', '46', '48', null, '18', '1', '入库消遣费用', 'CNY', '57', null, null, 'XY00001', '奥斯卡奖给你最适合不过啦', null, '0', '1', '1', '127', '2017-09-19', '2017-09-20', null, null, null, null, '1505890781188', '62', 'B2C', 'USD', 'USD', 'WSXC', '广百荟信息技术', null, '100.00', '15.23', null, '0.15226', '0.15226', '运费', '入库运费');
INSERT INTO `ams_accountitem_history` VALUES ('217', '2017092015041095404', '46', '47', null, '18', '1', '98运费太贵了', 'CNY', '57', null, null, 'XY0001', '撒打开就好噶啥', null, '0', '1', '1', '127', '2017-09-21', '2017-09-20', null, null, null, null, '1505891050573', '63', 'B2C', 'USD', 'USD', 'WSXC', '广百荟信息技术', null, '98.00', '14.92', null, '0.15226', '0.15226', '运费', '出库运费');
INSERT INTO `ams_accountitem_history` VALUES ('218', '2017092014594193702', '46', '48', null, '广百荟信息技术', '1', '入库消遣费用', 'CNY', '57', '57', null, 'XY0001', '奥斯卡奖给你最适合不过啦', null, '0', '2', '1', '127', '2017-09-19', '2017-09-20', '2017-09-20', null, null, null, '1505891062480', '62', 'B2C', 'USD', 'USD', 'WSXC', '广百荟信息技术', null, '100.00', '15.23', null, '0.15226', '0.15226', '运费', '入库运费');
INSERT INTO `ams_accountitem_history` VALUES ('219', '2017092015041095404', '46', '47', null, '18', '1', '98运费太贵了', 'CNY', '57', null, '57', 'XY0001', '撒打开就好噶啥', null, '0', '3', '1', '127', '2017-09-21', '2017-09-20', null, '2017-09-20', null, null, '1505891076860', '63', 'B2C', 'USD', 'USD', 'WSXC', '广百荟信息技术', null, '98.00', '14.92', null, '0.15226', '0.15226', '运费', '出库运费');
INSERT INTO `ams_accountitem_history` VALUES ('220', '2017092014594193702', '46', '48', null, '广百荟信息技术', '1', '入库消遣费用', 'CNY', '57', '57', '57', 'XY0001', '奥斯卡奖给你最适合不过啦', null, '0', '3', '1', '127', '2017-09-19', '2017-09-20', '2017-09-20', '2017-09-20', null, null, '1505891076867', '62', 'B2C', 'USD', 'USD', 'WSXC', '广百荟信息技术', null, '100.00', '15.23', null, '0.15226', '0.15226', '运费', '入库运费');
INSERT INTO `ams_accountitem_history` VALUES ('221', '201709201508313450', '46', '48', null, '17', '1', null, 'CNY', '57', null, '57', 'XY0002', '发V中', null, '0', '3', '0', '127', '2017-09-19', '2017-09-20', null, '2017-09-20', null, null, '1505891496067', '69', 'B2C', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', null, '800.00', '121.81', null, '0.15226', null, '运费', '运费');
INSERT INTO `ams_accountitem_history` VALUES ('222', '201709201508313450', null, null, null, '17', '1', null, 'CNY', '57', null, '57', 'XY0002', '12发生的', null, '0', '3', '0', '127', '2017-09-19', '2017-09-20', null, '2017-09-20', null, null, '1505891496071', '68', 'B2C', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', null, '900.00', '137.03', null, '0.15226', null, '运费', '运费');
INSERT INTO `ams_accountitem_history` VALUES ('223', '201709201508313450', '46', '47', null, '17', '1', null, 'CNY', '57', null, '57', 'XY0002', '哦掉I', null, '0', '3', '0', '127', '2017-09-19', '2017-09-20', null, '2017-09-20', null, null, '1505891496074', '67', 'B2C', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', null, '500.00', '76.13', null, '0.15226', null, '运费', '运费');
INSERT INTO `ams_accountitem_history` VALUES ('224', '201709201508313450', '46', '48', null, '17', '1', null, 'EUR', '57', null, '57', 'XY0002', '耀武扬威', null, '0', '3', '1', '127', '2017-09-19', '2017-09-20', null, '2017-09-20', null, null, '1505891496076', '66', 'B2C', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', null, '200.00', '240.12', null, '1.20062', null, '运费', '运费');
INSERT INTO `ams_accountitem_history` VALUES ('225', '201709201508313450', '46', '48', null, '17', '1', null, 'USD', '57', null, '57', 'XY0002', 'yes', null, '0', '3', '1', '127', '2017-09-19', '2017-09-20', null, '2017-09-20', null, null, '1505891496082', '65', 'B2C', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', null, '400.00', '400.00', null, '1.00000', null, '运费', '运费');
INSERT INTO `ams_accountitem_history` VALUES ('226', '201709201508313450', '46', '47', null, '17', '1', null, 'CNY', '57', null, '57', 'XY0002', 'nonono', null, '0', '3', '1', '127', '2017-09-19', '2017-09-20', null, '2017-09-20', null, null, '1505891496086', '64', 'B2C', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', null, '20.00', '3.05', null, '0.15226', null, '运费', '运费');
INSERT INTO `ams_accountitem_history` VALUES ('227', '2017092015362432628', '17', '18', null, '9', '1', '333333333333', 'CNY', '7', null, null, '444434535', '特尔滚蛋吧东方时尚东方闪电任务我', null, '0', '1', '1', '4', '2017-09-20', '2017-09-20', null, null, null, null, '1505892984640', '70', 'B2C', 'USD', 'USD', 'XXXX', '测试供应商001', null, '23.00', '3.50', null, '0.15225', '0.15225', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('228', '201709201508313450', '46', '48', null, '17', '1', null, 'EUR', '57', null, '57', 'XY0002', '耀武扬威', null, '0', '4', '1', '127', '2017-09-19', '2017-09-20', null, '2017-09-20', null, '0.00', '1505892994645', '66', 'B2C', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', '154', '200.00', '240.12', '0.00', '1.20062', '1.20062', '运费', '运费');
INSERT INTO `ams_accountitem_history` VALUES ('229', '201709201508313450', '46', '48', null, '17', '1', null, 'USD', '57', null, '57', 'XY0002', 'yes', null, '0', '4', '1', '127', '2017-09-19', '2017-09-20', null, '2017-09-20', null, '0.00', '1505892994674', '65', 'B2C', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', '154', '400.00', '400.00', '0.00', '1.00000', '1.00000', '运费', '运费');
INSERT INTO `ams_accountitem_history` VALUES ('230', '201709201508313450', '46', '47', null, '17', '1', null, 'CNY', '57', null, '57', 'XY0002', 'nonono', null, '0', '4', '1', '127', '2017-09-19', '2017-09-20', null, '2017-09-20', null, '0.00', '1505892994691', '64', 'B2C', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', '154', '20.00', '3.05', '0.00', '0.15226', '0.15226', '运费', '运费');
INSERT INTO `ams_accountitem_history` VALUES ('231', '2017092015362432628', '17', '18', null, '9', '1', '333333333333', 'CNY', '7', null, '7', '444434535', '特尔滚蛋吧东方时尚东方闪电任务我', null, '0', '3', '1', '4', '2017-09-20', '2017-09-20', null, '2017-09-20', null, null, '1505893002026', '70', 'B2C', 'USD', 'USD', 'XXXX', '测试供应商001', null, '23.00', '3.50', null, '0.15225', '0.15225', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('232', '201709201508313450', '46', '48', null, '17', '1', null, 'CNY', '57', null, '57', 'XY0002', '发V中', null, '0', '4', '0', '127', '2017-09-19', '2017-09-20', null, '2017-09-20', null, '0.00', '1505893008001', '69', 'B2C', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', '155', '800.00', '121.81', '0.00', '0.15226', '0.15226', '运费', '运费');
INSERT INTO `ams_accountitem_history` VALUES ('233', '201709201508313450', null, null, null, '17', '1', null, 'CNY', '57', null, '57', 'XY0002', '12发生的', null, '0', '4', '0', '127', '2017-09-19', '2017-09-20', null, '2017-09-20', null, '0.00', '1505893008003', '68', 'B2C', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', '155', '900.00', '137.03', '0.00', '0.15226', '0.15226', '运费', '运费');
INSERT INTO `ams_accountitem_history` VALUES ('234', '201709201508313450', '46', '47', null, '17', '1', null, 'CNY', '57', null, '57', 'XY0002', '哦掉I', null, '0', '4', '0', '127', '2017-09-19', '2017-09-20', null, '2017-09-20', null, '0.00', '1505893008006', '67', 'B2C', 'USD', 'USD', 'WSXC', '泡泡信息技术有限公司', '155', '500.00', '76.13', '0.00', '0.15226', '0.15226', '运费', '运费');
INSERT INTO `ams_accountitem_history` VALUES ('235', '2017092015362432628', '17', '18', null, '9', '1', '333333333333', 'CNY', '7', null, '7', '444434535', '特尔滚蛋吧东方时尚东方闪电任务我', null, '0', '4', '1', '4', '2017-09-20', '2017-09-20', null, '2017-09-20', null, '0.00', '1505893023614', '70', 'B2C', 'USD', 'USD', 'XXXX', '测试供应商001', '156', '23.00', '3.50', '0.00', '0.15225', '0.15225', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('236', '2017092015435363724', '17', '18', null, '5', '1', null, 'CNY', '7', null, null, '2121212', null, null, '0', '1', '0', '4', '2017-09-19', '2017-09-20', null, null, null, null, '1505893433321', '71', 'B2C', 'USD', 'CNY', 'XXXX', 'API结算对象', null, '12.00', '1.83', null, '0.15218', '1.00000', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('237', '2017092015441895741', '20', '22', null, '9', '1', null, 'CNY', '7', null, null, '21212123', null, null, '0', '1', '0', '4', '2017-09-14', '2017-09-20', null, null, null, null, '1505893458560', '72', 'B2C', 'USD', 'USD', 'XXXX', '测试供应商001', null, '45.00', '6.85', null, '0.15218', '0.15218', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('238', '201709201545071085', '20', '22', null, '5', '1', '234', 'CNY', '7', null, null, '32423423', null, null, '0', '1', '1', '4', '2017-09-20', '2017-09-20', null, null, null, null, '1505893508093', '73', 'B2C', 'USD', 'CNY', 'XXXX', 'API结算对象', null, '234.00', '35.61', null, '0.15218', '1.00000', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('239', '2017092015453896815', '17', '18', null, '5', '1', null, 'CNY', '7', null, null, '3244', null, null, '0', '1', '1', '4', '2017-09-20', '2017-09-20', null, null, null, null, '1505893538012', '74', 'B2C', 'USD', 'CNY', 'XXXX', 'API结算对象', null, '234.00', '35.61', null, '0.15218', '1.00000', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('240', '2017092015460257341', '17', '18', null, '5', '1', '234', 'AUD', '7', null, null, '234', '234', null, '0', '1', '0', '4', '2017-09-07', '2017-09-20', null, null, null, null, '1505893562693', '75', 'B2C', 'USD', 'CNY', 'XXXX', 'API结算对象', null, '234.00', '182.07', null, '0.80373', '5.28163', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('241', '2017092015435363724', '17', '18', null, '5', '1', null, 'CNY', '7', null, '7', '2121212', null, null, '0', '3', '0', '4', '2017-09-19', '2017-09-20', null, '2017-09-20', null, null, '1505893600276', '71', 'B2C', 'USD', 'CNY', 'XXXX', 'API结算对象', null, '12.00', '1.83', null, '0.15218', '1.00000', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('242', '2017092015441895741', '20', '22', null, '9', '1', null, 'CNY', '7', null, '7', '21212123', null, null, '0', '3', '0', '4', '2017-09-14', '2017-09-20', null, '2017-09-20', null, null, '1505893600281', '72', 'B2C', 'USD', 'USD', 'XXXX', '测试供应商001', null, '45.00', '6.85', null, '0.15218', '0.15218', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('243', '201709201545071085', '20', '22', null, '5', '1', '234', 'CNY', '7', null, '7', '32423423', null, null, '0', '3', '1', '4', '2017-09-20', '2017-09-20', null, '2017-09-20', null, null, '1505893600283', '73', 'B2C', 'USD', 'CNY', 'XXXX', 'API结算对象', null, '234.00', '35.61', null, '0.15218', '1.00000', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('244', '2017092015453896815', '17', '18', null, '5', '1', null, 'CNY', '7', null, '7', '3244', null, null, '0', '3', '1', '4', '2017-09-20', '2017-09-20', null, '2017-09-20', null, null, '1505893600285', '74', 'B2C', 'USD', 'CNY', 'XXXX', 'API结算对象', null, '234.00', '35.61', null, '0.15218', '1.00000', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('245', '2017092015460257341', '17', '18', null, '5', '1', '234', 'AUD', '7', null, '7', '234', '234', null, '0', '3', '0', '4', '2017-09-07', '2017-09-20', null, '2017-09-20', null, null, '1505893600288', '75', 'B2C', 'USD', 'CNY', 'XXXX', 'API结算对象', null, '234.00', '182.07', null, '0.80373', '5.28163', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('246', '2017092015453896815', '17', '18', null, '5', '1', null, 'CNY', '7', null, '7', '3244', null, null, '0', '4', '1', '4', '2017-09-20', '2017-09-20', null, '2017-09-20', null, '0.00', '1505893832036', '74', 'B2C', 'USD', 'CNY', 'XXXX', 'API结算对象', '157', '234.00', '35.61', '0.00', '0.15218', '1.00000', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('247', '201709201545071085', '20', '22', null, '5', '1', '234', 'CNY', '7', null, '7', '32423423', null, null, '0', '4', '1', '4', '2017-09-20', '2017-09-20', null, '2017-09-20', null, '0.00', '1505893832039', '73', 'B2C', 'USD', 'CNY', 'XXXX', 'API结算对象', '157', '234.00', '35.61', '0.00', '0.15218', '1.00000', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('248', '2017092015435363724', '17', '18', null, '5', '1', null, 'CNY', '7', null, '7', '2121212', null, null, '0', '4', '0', '4', '2017-09-19', '2017-09-20', null, '2017-09-20', null, '0.00', '1505893832041', '71', 'B2C', 'USD', 'CNY', 'XXXX', 'API结算对象', '157', '12.00', '1.83', '0.00', '0.15218', '1.00000', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('249', '2017092015441895741', '20', '22', null, '9', '1', null, 'CNY', '7', null, '7', '21212123', null, null, '0', '4', '0', '4', '2017-09-14', '2017-09-20', null, '2017-09-20', null, '0.00', '1505894090375', '72', 'B2C', 'USD', 'USD', 'XXXX', '测试供应商001', '158', '45.00', '6.85', '0.00', '0.15218', '0.15218', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('250', '2017092016170680963', '20', '22', null, '5', '1', null, 'CNY', '7', null, null, '2222', null, null, '0', '1', '1', '4', '2017-09-20', '2017-09-20', null, null, null, null, '1505895426290', '86', 'B2F', 'USD', 'CNY', 'XXXX', 'API结算对象', null, '43.00', '6.54', null, '0.15218', '1.00000', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('251', '2017092016170680963', '20', '22', null, '5', '1', null, 'CNY', '7', null, '7', '2222', null, null, '0', '3', '1', '4', '2017-09-20', '2017-09-20', null, '2017-09-20', null, null, '1505895439458', '86', 'B2F', 'USD', 'CNY', 'XXXX', 'API结算对象', null, '43.00', '6.54', null, '0.15218', '1.00000', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('252', '2017092016170680963', '20', '22', null, '5', '1', null, 'CNY', '7', null, '7', '2222', null, null, '0', '4', '1', '4', '2017-09-20', '2017-09-20', null, '2017-09-20', null, '0.00', '1505895451546', '86', 'B2F', 'USD', 'CNY', 'XXXX', 'API结算对象', '159', '43.00', '6.54', '0.00', '0.15218', '1.00000', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('253', '2017092016203477370', '20', '22', null, '9', '1', null, 'CNY', '7', null, null, '234325', null, null, '0', '1', '1', '4', '2017-09-06', '2017-09-20', null, null, null, null, '1505895634737', '87', 'B2F', 'USD', 'USD', 'XXXX', '测试供应商001', null, '243.00', '36.98', null, '0.15218', '0.15218', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('254', '2017092016203477370', '20', '22', null, '9', '1', null, 'CNY', '7', null, '7', '234325', null, null, '0', '3', '1', '4', '2017-09-06', '2017-09-20', null, '2017-09-20', null, null, '1505895648565', '87', 'B2F', 'USD', 'USD', 'XXXX', '测试供应商001', null, '243.00', '36.98', null, '0.15218', '0.15218', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('255', '2017092016203477370', '20', '22', null, '9', '1', null, 'CNY', '7', null, '7', '234325', null, null, '0', '4', '1', '4', '2017-09-06', '2017-09-20', null, '2017-09-20', null, '0.00', '1505895660683', '87', 'B2F', 'USD', 'USD', 'XXXX', '测试供应商001', '160', '243.00', '36.98', '0.00', '0.15218', '0.15218', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('256', '2017092016574236284', '20', '22', null, '5', '0', null, 'CNY', '7', null, null, '2435354', null, null, '0', '1', '0', '4', '2017-09-13', '2017-09-20', null, null, null, null, '1505897862865', '88', 'B2F', 'USD', 'CNY', 'XXXX', 'API结算对象', null, '234.00', '35.60', null, '0.15212', '1.00000', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('257', '2017092016574236284', '20', '22', null, '5', '0', null, 'CNY', '7', null, '7', '2435354', null, null, '0', '3', '0', '4', '2017-09-13', '2017-09-20', null, '2017-09-20', null, null, '1505897871984', '88', 'B2F', 'USD', 'CNY', 'XXXX', 'API结算对象', null, '234.00', '35.60', null, '0.15212', '1.00000', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('258', '2017092015460257341', '17', '18', null, '5', '1', '234', 'AUD', '7', null, '7', '234', '234', null, '0', '4', '0', '4', '2017-09-07', '2017-09-20', null, '2017-09-20', null, '0.00', '1505897891077', '75', 'B2C', 'USD', 'CNY', 'XXXX', 'API结算对象', '161', '234.00', '182.07', '0.00', '0.80373', '5.28163', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('259', '2017092017110447825', '20', '22', null, '9', '1', null, 'CNY', '7', null, null, '3424234', null, null, '0', '1', '1', '4', '2017-09-07', '2017-09-20', null, null, null, null, '1505898664758', '89', 'B2F', 'USD', 'USD', 'XXXX', '测试供应商001', null, '3453453.00', '525304.74', null, '0.15211', '0.15211', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('260', '2017092017110447825', '20', '22', null, '9', '1', null, 'CNY', '7', null, '7', '3424234', null, null, '0', '3', '1', '4', '2017-09-07', '2017-09-20', null, '2017-09-20', null, null, '1505898674140', '89', 'B2F', 'USD', 'USD', 'XXXX', '测试供应商001', null, '3453453.00', '525304.74', null, '0.15211', '0.15211', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('261', '2017092017123920117', '20', '22', null, '5', '1', null, 'CNY', '7', null, null, '2222222222222', null, null, '0', '1', '0', '4', '2017-09-20', '2017-09-20', null, null, null, null, '1505898759224', '90', 'B2F', 'USD', 'CNY', 'XXXX', 'API结算对象', null, '23.00', '3.50', null, '0.15211', '1.00000', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('262', '2017092017123920117', '20', '22', null, '5', '1', null, 'CNY', '7', null, '7', '2222222222222', null, null, '0', '3', '0', '4', '2017-09-20', '2017-09-20', null, '2017-09-20', null, null, '1505898770413', '90', 'B2F', 'USD', 'CNY', 'XXXX', 'API结算对象', null, '23.00', '3.50', null, '0.15211', '1.00000', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('263', '2017092017123920117', '20', '22', null, '5', '1', null, 'CNY', '7', null, '7', '2222222222222', null, null, '0', '4', '0', '4', '2017-09-20', '2017-09-20', null, '2017-09-20', null, '0.00', '1505898813138', '90', 'B2F', 'USD', 'CNY', 'XXXX', 'API结算对象', '162', '23.00', '3.50', '0.00', '0.15211', '1.00000', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('264', '2017092015515694142', '44', '45', null, '16', '1', null, 'AUD', '53', null, '53', '4324', '33', null, '0', '3', '0', '117', '2017-09-27', '2017-09-20', null, '2017-09-20', null, null, '1505904342780', '79', 'B2C', 'USD', 'USD', 'WAWJ', '知行思远信息技术有限公司', null, '233.00', '187.27', null, '0.80373', null, '服装', '服装');
INSERT INTO `ams_accountitem_history` VALUES ('265', '2017092015551523127', '44', '45', null, '16', '0', null, 'CNY', '53', null, '53', '245', '345', null, '0', '3', '1', '117', '2017-09-21', '2017-09-20', null, '2017-09-20', null, null, '1505904342790', '80', 'B2C', 'USD', 'USD', 'WAWJ', '知行思远信息技术有限公司', null, '345.00', '52.50', null, '0.15218', '0.15218', '服装', '服装');
INSERT INTO `ams_accountitem_history` VALUES ('266', '2017092015515694142', '44', '45', null, '16', '1', null, 'CNY', '53', null, '53', '4324', '434', null, '0', '3', '1', '117', '2017-09-21', '2017-09-20', null, '2017-09-20', null, null, '1505904342793', '77', 'B2C', 'USD', 'USD', 'WAWJ', '知行思远信息技术有限公司', null, '4354.00', '662.57', null, '0.15218', null, '服装', '服装');
INSERT INTO `ams_accountitem_history` VALUES ('267', '2017092018492439049', '139', '141', null, '15', '1', null, 'CNY', '52', null, null, '2334', null, null, '0', '1', '1', '116', '2017-09-20', '2017-09-20', null, null, null, null, '1505904564138', '91', 'B2B', 'USD', 'USD', 'AAAA', '网易', null, '235424.00', '35821.64', null, '0.15216', '0.15216', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('268', '2017092018492439049', '139', '141', null, '15', '1', null, 'CNY', '52', null, '52', '2334', null, null, '0', '3', '1', '116', '2017-09-20', '2017-09-20', null, '2017-09-20', null, null, '1505904576772', '91', 'B2B', 'USD', 'USD', 'AAAA', '网易', null, '235424.00', '35821.64', null, '0.15216', '0.15216', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('269', '2017092018492439049', '139', '141', null, '15', '1', null, 'CNY', '52', null, '52', '2334', null, null, '0', '4', '1', '116', '2017-09-20', '2017-09-20', null, '2017-09-20', null, '0.00', '1505904594411', '91', 'B2B', 'USD', 'USD', 'AAAA', '网易', '163', '235424.00', '35821.64', '0.00', '0.15216', '0.15216', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('270', '2017092018500728764', '44', '45', null, '13', '1', null, 'EUR', '53', null, '53', '134', '234', null, '0', '3', '0', '117', '2017-09-29', '2017-09-20', null, '2017-09-20', null, null, '1505904640760', '93', 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '234.00', '281.01', null, '1.20091', '1.20091', '服装', '服装');
INSERT INTO `ams_accountitem_history` VALUES ('271', '2017092018500728764', '44', '45', null, '13', '1', null, 'CNY', '53', null, '53', '134', '234', null, '0', '3', '1', '117', '2017-09-22', '2017-09-20', null, '2017-09-20', null, null, '1505904640764', '92', 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '234.00', '35.60', null, '0.15216', '0.15216', '服装', '服装');
INSERT INTO `ams_accountitem_history` VALUES ('272', '2017092018515925814', '139', '141', null, '14', '1', null, 'CNY', '52', null, null, '23535', null, null, '0', '1', '1', '116', '2017-09-13', '2017-09-20', null, null, null, null, '1505904719695', '94', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '353454.00', '53780.85', null, '0.15216', '0.15216', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('273', '2017092018515925814', '139', '141', null, '14', '1', null, 'CNY', '52', null, '52', '23535', null, null, '0', '3', '1', '116', '2017-09-13', '2017-09-20', null, '2017-09-20', null, null, '1505904739379', '94', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '353454.00', '53780.85', null, '0.15216', '0.15216', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('274', '2017092018515925814', '139', '141', null, '14', '1', null, 'CNY', '52', null, '52', '23535', null, null, '0', '4', '1', '116', '2017-09-13', '2017-09-20', null, '2017-09-20', null, '0.00', '1505904751420', '94', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', '164', '353454.00', '53780.85', '0.00', '0.15216', '0.15216', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('275', '2017092018525774752', '44', '45', null, '11', '1', null, 'GBP', '53', null, '53', '254', '345', null, '0', '3', '1', '117', '2017-09-22', '2017-09-20', null, '2017-09-20', null, null, '1505904810382', '95', 'B2B', 'USD', 'USD', 'WAWJ', '网易慧慧', null, '345.00', '466.78', null, '1.35300', '1.35300', '服装', '服装');
INSERT INTO `ams_accountitem_history` VALUES ('276', '2017092018525774752', '44', '45', null, '11', '1', null, 'HKD', '53', null, '53', '254', '345', null, '0', '3', '1', '117', '2017-09-29', '2017-09-20', null, '2017-09-20', null, null, '1505904810385', '96', 'B2B', 'USD', 'USD', 'WAWJ', '网易慧慧', null, '345.00', '44.21', null, '0.12814', '0.12814', '服装', '服装');
INSERT INTO `ams_accountitem_history` VALUES ('277', '2017092018525774752', '44', '45', null, '11', '1', null, 'GBP', '53', null, '53', '254', '3244', null, '0', '3', '1', '117', '2017-09-22', '2017-09-20', null, '2017-09-20', null, null, '1505904810387', '97', 'B2B', 'USD', 'USD', 'WAWJ', '网易慧慧', null, '4324.00', '5850.36', null, '1.35300', '1.35300', '服装', '服装');
INSERT INTO `ams_accountitem_history` VALUES ('278', '2017092018525774752', '44', '45', null, '11', '1', null, 'GBP', '53', null, '53', '254', '324', null, '0', '3', '0', '117', '2017-09-29', '2017-09-20', null, '2017-09-20', null, null, '1505904810389', '98', 'B2B', 'USD', 'USD', 'WAWJ', '网易慧慧', null, '234.00', '316.60', null, '1.35300', '1.35300', '服装', '服装');
INSERT INTO `ams_accountitem_history` VALUES ('279', '2017092018525774752', '44', '45', null, '11', '1', null, 'HKD', '53', null, '53', '254', '3244', null, '0', '3', '0', '117', '2017-09-29', '2017-09-20', null, '2017-09-20', null, null, '1505904810392', '99', 'B2B', 'USD', 'USD', 'WAWJ', '网易慧慧', null, '23.00', '2.95', null, '0.12814', '0.12814', '服装', '服装');
INSERT INTO `ams_accountitem_history` VALUES ('280', '2017092018525774752', '44', '45', null, '11', '1', null, 'HKD', '53', null, '53', '254', '3244', null, '0', '4', '0', '117', '2017-09-29', '2017-09-20', null, '2017-09-20', null, '0.00', '1505904832487', '99', 'B2B', 'USD', 'USD', 'WAWJ', '网易慧慧', '165', '23.00', '2.95', '0.00', '0.12814', '0.12814', '服装', '服装');
INSERT INTO `ams_accountitem_history` VALUES ('281', '2017092018525774752', '44', '45', null, '11', '1', null, 'GBP', '53', null, '53', '254', '324', null, '0', '4', '0', '117', '2017-09-29', '2017-09-20', null, '2017-09-20', null, '0.00', '1505904832489', '98', 'B2B', 'USD', 'USD', 'WAWJ', '网易慧慧', '165', '234.00', '316.60', '0.00', '1.35300', '1.35300', '服装', '服装');
INSERT INTO `ams_accountitem_history` VALUES ('282', '2017092018525774752', '44', '45', null, '11', '1', null, 'GBP', '53', null, '53', '254', '3244', null, '0', '4', '1', '117', '2017-09-22', '2017-09-20', null, '2017-09-20', null, '0.00', '1505904832492', '97', 'B2B', 'USD', 'USD', 'WAWJ', '网易慧慧', '165', '4324.00', '5850.36', '0.00', '1.35300', '1.35300', '服装', '服装');
INSERT INTO `ams_accountitem_history` VALUES ('283', '2017092018525774752', '44', '45', null, '11', '1', null, 'HKD', '53', null, '53', '254', '345', null, '0', '4', '1', '117', '2017-09-29', '2017-09-20', null, '2017-09-20', null, '0.00', '1505904832494', '96', 'B2B', 'USD', 'USD', 'WAWJ', '网易慧慧', '165', '345.00', '44.21', '0.00', '0.12814', '0.12814', '服装', '服装');
INSERT INTO `ams_accountitem_history` VALUES ('284', '2017092018525774752', '44', '45', null, '11', '1', null, 'GBP', '53', null, '53', '254', '345', null, '0', '4', '1', '117', '2017-09-22', '2017-09-20', null, '2017-09-20', null, '0.00', '1505904832496', '95', 'B2B', 'USD', 'USD', 'WAWJ', '网易慧慧', '165', '345.00', '466.78', '0.00', '1.35300', '1.35300', '服装', '服装');
INSERT INTO `ams_accountitem_history` VALUES ('285', '2017092109490388028', '139', '141', null, '14', '1', null, 'CNY', '52', null, null, '23434', null, null, '0', '1', '0', '116', '2017-09-21', '2017-09-21', null, null, null, null, '1505958543200', '110', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '234.00', '35.62', null, '0.15221', '0.15221', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('286', '2017092109490388028', '139', '141', null, '14', '1', null, 'CNY', '52', null, '52', '23434', null, null, '0', '3', '0', '116', '2017-09-21', '2017-09-21', null, '2017-09-21', null, null, '1505958556888', '110', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '234.00', '35.62', null, '0.15221', '0.15221', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('287', '2017092109490388028', '139', '141', null, '14', '1', null, 'CNY', '52', null, '52', '23434', null, null, '0', '4', '0', '116', '2017-09-21', '2017-09-21', null, '2017-09-21', null, '0.00', '1505958568538', '110', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', '166', '234.00', '35.62', '0.00', '0.15221', '0.15221', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('288', '2017092110493882410', '139', '141', null, '14', '1', null, 'CNY', '52', null, null, '2323', null, null, '0', '1', '0', '116', '2017-09-22', '2017-09-21', null, null, null, null, '1505962178079', '111', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '23.00', '3.49', null, '0.15173', '0.15173', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('289', '2017092110493882410', '139', '141', null, '14', '1', null, 'CNY', '52', null, '52', '2323', null, null, '0', '3', '0', '116', '2017-09-22', '2017-09-21', null, '2017-09-21', null, null, '1505962194742', '111', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '23.00', '3.49', null, '0.15173', '0.15173', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('290', '2017092110510218653', '139', '141', null, '15', '1', null, 'CNY', '52', null, null, '324324', null, null, '0', '1', '0', '116', '2017-09-21', '2017-09-21', null, null, null, null, '1505962262144', '112', 'B2B', 'USD', 'USD', 'AAAA', '网易', null, '23443.00', '3556.94', null, '0.15173', '0.15173', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('291', '2017092110510218653', '139', '141', null, '15', '1', null, 'CNY', '52', null, '52', '324324', null, null, '0', '3', '0', '116', '2017-09-21', '2017-09-21', null, '2017-09-21', null, null, '1505962293722', '112', 'B2B', 'USD', 'USD', 'AAAA', '网易', null, '23443.00', '3556.94', null, '0.15173', '0.15173', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('292', '2017092110510218653', '139', '141', null, '15', '1', null, 'CNY', '52', null, '52', '324324', null, null, '0', '4', '0', '116', '2017-09-21', '2017-09-21', null, '2017-09-21', null, '0.00', '1505962313924', '112', 'B2B', 'USD', 'USD', 'AAAA', '网易', '167', '23443.00', '3556.94', '0.00', '0.15173', '0.15173', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('293', '2017092115292968999', '14', '15', null, '9', '1', '21', 'USD', '4', null, null, '212', '12', null, '0', '1', '1', '4', '2017-09-21', '2017-09-21', null, null, null, null, '1505978969715', '143', 'B2E', 'USD', 'USD', 'XXXX', '测试供应商001', null, '222.00', '222.00', null, '1.00000', '1.00000', '理貨費', '入仓理货费');
INSERT INTO `ams_accountitem_history` VALUES ('294', '2017092115321493036', '44', '45', null, '11', '1', '344', 'CNY', '53', null, null, '452345', '5443', null, '0', '1', '1', '117', '2017-09-22', '2017-09-21', null, null, null, null, '1505979134209', '144', 'B2B', 'USD', 'USD', 'WAWJ', '网易慧慧', null, '345.00', '52.32', null, '0.15166', '0.15166', '服装', 'only');
INSERT INTO `ams_accountitem_history` VALUES ('295', '2017092115534252805', '44', '45', null, '13', '1', '456', 'CNY', '53', null, null, '3464', '54645', null, '0', '1', '1', '117', '2017-09-23', '2017-09-21', null, null, null, null, '1505980422276', '149', 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '456.00', '69.17', null, '0.15168', '0.15168', '服装', 'only');
INSERT INTO `ams_accountitem_history` VALUES ('296', '2017092117374528586', '44', '45', null, '13', '1', '000', 'EUR', '53', null, null, '999', '98', null, '0', '1', '1', '117', '2017-09-22', '2017-09-21', null, null, null, null, '1505986665200', '150', 'B2B', 'USD', 'USD', 'WAWJ', '知行思远', null, '999.00', '1190.28', null, '1.19147', '1.19147', '服装', 'only');
INSERT INTO `ams_accountitem_history` VALUES ('297', '2017092110510218653', '139', '141', null, '15', '1', null, 'CNY', '52', null, '52', '324324', null, null, '0', '4', '0', '116', '2017-09-21', '2017-09-25', null, '2017-09-25', null, '0.00', '1506321061591', '112', 'B2B', 'USD', 'USD', 'AAAA', '网易', '167', '23443.00', '3556.94', '0.00', '0.15173', '0.15173', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('298', '2017092514431386730', '139', '141', null, '10', '1', '123', 'CNY', '52', null, null, '23543546', null, null, '0', '1', '1', '116', '2017-09-14', '2017-09-25', null, null, null, null, '1506321793512', '151', 'B2B', 'USD', 'USD', 'AAAA', '圆通快递', null, '2131.00', '322.50', null, '0.15134', '0.15134', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('299', '2017092514431386730', '139', '141', null, '10', '1', '123', 'CNY', '52', null, '52', '23543546', null, null, '0', '3', '1', '116', '2017-09-14', '2017-09-25', null, '2017-09-25', null, null, '1506321994231', '151', 'B2B', 'USD', 'USD', 'AAAA', '圆通快递', null, '2131.00', '322.50', null, '0.15134', '0.15134', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('300', '2017092514431386730', '139', '141', null, '10', '1', '123', 'CNY', '52', null, '52', '23543546', null, null, '0', '3', '1', '116', '2017-09-14', '2017-09-25', null, '2017-09-25', null, null, '1506322065732', '151', 'B2B', 'USD', 'USD', 'AAAA', '圆通快递', null, '2131.00', '322.50', null, '0.15134', '0.15134', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('301', '2017092514431386730', '139', '141', null, '10', '1', '123', 'CNY', '52', null, '52', '23543546', null, null, '0', '3', '1', '116', '2017-09-14', '2017-09-25', null, '2017-09-25', null, null, '1506322095314', '151', 'B2B', 'USD', 'USD', 'AAAA', '圆通快递', null, '2131.00', '322.50', null, '0.15134', '0.15134', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('302', '2017092514431386730', '139', '141', null, '10', '1', '123', 'CNY', '52', null, '52', '23543546', null, null, '0', '3', '1', '116', '2017-09-14', '2017-09-25', null, '2017-09-25', null, null, '1506322291907', '151', 'B2B', 'USD', 'USD', 'AAAA', '圆通快递', null, '2131.00', '322.50', null, '0.15134', '0.15134', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('303', '2017092110510218653', '139', '141', null, '15', '1', null, 'CNY', '52', null, '52', '324324', null, null, '0', '4', '0', '116', '2017-09-21', '2017-09-25', null, '2017-09-25', null, '0.00', '1506322291909', '112', 'B2B', 'USD', 'USD', 'AAAA', '网易', '167', '23443.00', '3556.94', '0.00', '0.15173', '0.15173', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('304', '2017092110493882410', '139', '141', null, '14', '1', null, 'CNY', '52', null, '52', '2323', null, null, '0', '3', '0', '116', '2017-09-22', '2017-09-25', null, '2017-09-25', null, null, '1506322307412', '111', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '23.00', '3.49', null, '0.15173', '0.15173', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('305', '2017092514532330916', '139', '141', null, '15', '1', null, 'CNY', '52', null, null, '325234', null, null, '0', '1', '1', '116', '2017-09-19', '2017-09-25', null, null, null, null, '1506322403524', '152', 'B2B', 'USD', 'USD', 'AAAA', '网易', null, '234.00', '35.41', null, '0.15134', '0.15134', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('306', '2017092514532330916', '139', '141', null, '15', '1', null, 'CNY', '52', null, '52', '325234', null, null, '0', '3', '1', '116', '2017-09-19', '2017-09-25', null, '2017-09-25', null, null, '1506322417723', '152', 'B2B', 'USD', 'USD', 'AAAA', '网易', null, '234.00', '35.41', null, '0.15134', '0.15134', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('307', '2017092514532330916', '139', '141', null, '15', '1', null, 'CNY', '52', null, '52', '325234', null, null, '0', '4', '1', '116', '2017-09-19', '2017-09-25', null, '2017-09-25', null, '0.00', '1506323186579', '152', 'B2B', 'USD', 'USD', 'AAAA', '网易', '180', '234.00', '35.41', '0.00', '0.15134', '0.15134', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('308', '2017092110493882410', '139', '141', null, '14', '1', null, 'CNY', '52', null, '52', '2323', null, null, '0', '4', '0', '116', '2017-09-22', '2017-09-25', null, '2017-09-25', null, '0.00', '1506324417599', '111', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', '181', '23.00', '3.49', '0.00', '0.15173', '0.15173', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('309', '2017092110493882410', '139', '141', null, '14', '1', null, 'CNY', '52', null, '52', '2323', null, null, '0', '4', '0', '116', '2017-09-22', '2017-09-25', null, '2017-09-25', null, '0.00', '1506324418157', '111', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', '182', '23.00', '3.49', '0.00', '0.15173', '0.15173', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('310', '2017092110493882410', '139', '141', null, '14', '1', null, 'CNY', '52', null, '52', '2323', null, null, '0', '4', '0', '116', '2017-09-22', '2017-09-25', null, '2017-09-25', null, '0.00', '1506324424872', '111', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', '183', '23.00', '3.49', '0.00', '0.15173', '0.15173', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('311', '2017092110493882410', '139', '141', null, '14', '1', null, 'CNY', '52', null, '52', '2323', null, null, '0', '4', '0', '116', '2017-09-22', '2017-09-25', null, '2017-09-25', null, '0.00', '1506324472057', '111', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', '184', '23.00', '3.49', '0.00', '0.15173', '0.15173', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('312', '2017092514532330916', '139', '141', null, '15', '1', null, 'CNY', '52', null, '52', '325234', null, null, '0', '4', '1', '116', '2017-09-19', '2017-09-25', null, '2017-09-25', null, '0.00', '1506324925964', '152', 'B2B', 'USD', 'USD', 'AAAA', '网易', '187', '234.00', '35.41', '0.00', '0.15134', '0.15134', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('313', '2017092514532330916', '139', '141', null, '15', '1', null, 'CNY', '52', null, '52', '325234', null, null, '0', '4', '1', '116', '2017-09-19', '2017-09-25', null, '2017-09-25', null, '0.00', '1506324934055', '152', 'B2B', 'USD', 'USD', 'AAAA', '网易', '188', '234.00', '35.41', '0.00', '0.15134', '0.15134', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('314', '2017092514532330916', '139', '141', null, '15', '1', null, 'CNY', '52', null, '52', '325234', null, null, '0', '4', '1', '116', '2017-09-19', '2017-09-25', null, '2017-09-25', null, '0.00', '1506325123994', '152', 'B2B', 'USD', 'USD', 'AAAA', '网易', '189', '234.00', '35.41', '0.00', '0.15134', '0.15134', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('315', '2017092515412613991', '55', '57', null, '22', '1', '2312', 'AUD', '9', null, null, 'QQ3123', '23', null, '0', '1', '1', '134', '2017-09-25', '2017-09-25', null, null, null, null, '1506325286656', '153', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '0.01', '0.01', null, '0.79637', '0.79637', '装卸费', '出仓装车费');
INSERT INTO `ams_accountitem_history` VALUES ('316', '2017092515412613991', '55', '57', null, '22', '1', '2312', 'AUD', '9', null, '9', 'QQ3123', '23', null, '0', '3', '1', '134', '2017-09-25', '2017-09-25', null, '2017-09-25', null, null, '1506325309255', '153', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '0.01', '0.01', null, '0.79637', '0.79637', '装卸费', '出仓装车费');
INSERT INTO `ams_accountitem_history` VALUES ('317', '2017092515412613991', '55', '57', null, '22', '1', '2312', 'AUD', '9', null, '9', 'QQ3123', '23', null, '0', '4', '1', '134', '2017-09-25', '2017-09-25', null, '2017-09-25', null, '0.00', '1506325326106', '153', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', '190', '0.01', '0.01', '0.00', '0.79637', '0.79637', '装卸费', '出仓装车费');
INSERT INTO `ams_accountitem_history` VALUES ('318', '2017092515443047716', '139', '141', null, '10', '1', null, 'AUD', '52', null, null, '342353', null, null, '0', '1', '1', '116', '2017-09-20', '2017-09-25', null, null, null, null, '1506325470746', '154', 'B2B', 'USD', 'USD', 'AAAA', '圆通快递', null, '34534.00', '27501.81', null, '0.79637', '0.79637', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('319', '2017092515443047716', '139', '141', null, '10', '1', null, 'AUD', '52', null, '52', '342353', null, null, '0', '3', '1', '116', '2017-09-20', '2017-09-25', null, '2017-09-25', null, null, '1506325480192', '154', 'B2B', 'USD', 'USD', 'AAAA', '圆通快递', null, '34534.00', '27501.81', null, '0.79637', '0.79637', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('320', '2017092515443047716', '139', '141', null, '10', '1', null, 'AUD', '52', null, '52', '342353', null, null, '0', '4', '1', '116', '2017-09-20', '2017-09-25', null, '2017-09-25', null, '0.00', '1506325491057', '154', 'B2B', 'USD', 'USD', 'AAAA', '圆通快递', '191', '34534.00', '27501.81', '0.00', '0.79637', '0.79637', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('321', '2017092515474357159', '139', '141', null, '15', '1', null, 'AUD', '52', null, null, '3534544', null, null, '0', '1', '1', '116', '2017-09-19', '2017-09-25', null, null, null, null, '1506325663647', '155', 'B2B', 'USD', 'USD', 'AAAA', '网易', null, '325443.00', '259172.72', null, '0.79637', '0.79637', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('322', '2017092515474357159', '139', '141', null, '15', '1', null, 'AUD', '52', null, '52', '3534544', null, null, '0', '3', '1', '116', '2017-09-19', '2017-09-25', null, '2017-09-25', null, null, '1506325704626', '155', 'B2B', 'USD', 'USD', 'AAAA', '网易', null, '325443.00', '259172.72', null, '0.79637', '0.79637', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('323', '2017092515474357159', '139', '141', null, '15', '1', null, 'AUD', '52', null, '52', '3534544', null, null, '0', '4', '1', '116', '2017-09-19', '2017-09-25', null, '2017-09-25', null, '0.00', '1506325719227', '155', 'B2B', 'USD', 'USD', 'AAAA', '网易', '192', '325443.00', '259172.72', '0.00', '0.79637', '0.79637', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('324', '2017092113392247225', '118', '119', null, '18', '1', null, 'CNY', '57', null, '57', 'XY0004', null, null, '0', '3', '1', '127', '2017-09-20', '2017-09-25', null, '2017-09-25', null, null, '1506329622987', '140', 'B2C', 'USD', 'USD', 'WSXC', '广百荟信息技术', null, '100.00', '15.18', null, '0.15179', '0.15179', '仓租费用', '仓租费用');
INSERT INTO `ams_accountitem_history` VALUES ('325', '2017092113392247225', '115', '116', null, '18', '1', null, 'AUD', '57', null, '57', 'XY0004', null, null, '0', '3', '1', '127', '2017-09-20', '2017-09-25', null, '2017-09-25', null, null, '1506329622989', '141', 'B2C', 'USD', 'USD', 'WSXC', '广百荟信息技术', null, '200.00', '159.62', null, '0.79809', '0.79809', '装卸费', '装卸费');
INSERT INTO `ams_accountitem_history` VALUES ('326', '2017092616580946312', '142', '144', null, '26', '1', 'http://dms.chigoose.', 'AUD', '8', null, null, 'YWBM01', 'http://dms.chigoose.com\n9月26日\n问题1：采购管理系统    商品管理     在商品管理的详细信息页面，无法删除附件图片，是否可以删除？\n问题2:采购管理里系统   采购计划     编写同样的SKU名称，UPC编码不一致，在采购计划中填写SKU名称，如何区分出剩余不一样的SUK编码“”\n问题3：在系统中，邮箱是否按正确的邮箱走\n问题4：在采购计划的详细信息页面，“确认采购计划”“生成采购单”“查看已生成的采购单”按钮大小不一致，是否可以更改\n问题5：用户管理系统     我的服务/新增服务     建议：把“服务类型”放在第一个，新增服务时，可以先选择服务类型，在填写服务的类型的一些信息\n问题6：用户管理系统    我的服务/新增服务/分销服务     字段“支持贸易方式”与“分销方式”相比，支持贸易方式就多出了一个“一般贸易”', null, '0', '1', '1', '4', '2017-09-26', '2017-09-26', null, null, null, null, '1506416289670', '156', 'B2B', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '12.00', '9.50', null, '0.79152', '0.66970', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('327', '2017092616583895211', '142', '143', null, '26', '1', null, 'CNY', '8', null, null, 'YWBM01', null, null, '0', '1', '1', '4', '2017-09-27', '2017-09-26', null, null, null, null, '1506416318311', '157', 'B2D', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '120.00', '18.11', null, '0.15090', '0.12768', '费用类别名称', '员工的早餐费用名称');
INSERT INTO `ams_accountitem_history` VALUES ('328', '2017092616580946312', '142', '144', null, '26', '1', 'http://dms.chigoose.', 'AUD', '8', null, '8', 'YWBM01', 'http://dms.chigoose.com\n9月26日\n问题1：采购管理系统    商品管理     在商品管理的详细信息页面，无法删除附件图片，是否可以删除？\n问题2:采购管理里系统   采购计划     编写同样的SKU名称，UPC编码不一致，在采购计划中填写SKU名称，如何区分出剩余不一样的SUK编码“”\n问题3：在系统中，邮箱是否按正确的邮箱走\n问题4：在采购计划的详细信息页面，“确认采购计划”“生成采购单”“查看已生成的采购单”按钮大小不一致，是否可以更改\n问题5：用户管理系统     我的服务/新增服务     建议：把“服务类型”放在第一个，新增服务时，可以先选择服务类型，在填写服务的类型的一些信息\n问题6：用户管理系统    我的服务/新增服务/分销服务     字段“支持贸易方式”与“分销方式”相比，支持贸易方式就多出了一个“一般贸易”', null, '0', '3', '1', '4', '2017-09-26', '2017-09-26', null, '2017-09-26', null, null, '1506416484102', '156', 'B2B', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '12.00', '9.50', null, '0.79152', '0.66970', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('329', '2017092616580946312', '142', '144', null, '26', '1', 'http://dms.chigoose.', 'AUD', '8', null, '8', 'YWBM01', 'http://dms.chigoose.com\n9月26日\n问题1：采购管理系统    商品管理     在商品管理的详细信息页面，无法删除附件图片，是否可以删除？\n问题2:采购管理里系统   采购计划     编写同样的SKU名称，UPC编码不一致，在采购计划中填写SKU名称，如何区分出剩余不一样的SUK编码“”\n问题3：在系统中，邮箱是否按正确的邮箱走\n问题4：在采购计划的详细信息页面，“确认采购计划”“生成采购单”“查看已生成的采购单”按钮大小不一致，是否可以更改\n问题5：用户管理系统     我的服务/新增服务     建议：把“服务类型”放在第一个，新增服务时，可以先选择服务类型，在填写服务的类型的一些信息\n问题6：用户管理系统    我的服务/新增服务/分销服务     字段“支持贸易方式”与“分销方式”相比，支持贸易方式就多出了一个“一般贸易”', null, '0', '4', '1', '4', '2017-09-26', '2017-09-26', null, '2017-09-26', null, '0.00', '1506416674405', '156', 'B2B', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '193', '12.00', '9.50', '0.00', '0.79152', '0.66970', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('330', '2017092616580946312', '142', '144', null, '26', '1', 'http://dms.chigoose.', 'AUD', '8', null, '8', 'YWBM01', 'http://dms.chigoose.com\n9月26日\n问题1：采购管理系统    商品管理     在商品管理的详细信息页面，无法删除附件图片，是否可以删除？\n问题2:采购管理里系统   采购计划     编写同样的SKU名称，UPC编码不一致，在采购计划中填写SKU名称，如何区分出剩余不一样的SUK编码“”\n问题3：在系统中，邮箱是否按正确的邮箱走\n问题4：在采购计划的详细信息页面，“确认采购计划”“生成采购单”“查看已生成的采购单”按钮大小不一致，是否可以更改\n问题5：用户管理系统     我的服务/新增服务     建议：把“服务类型”放在第一个，新增服务时，可以先选择服务类型，在填写服务的类型的一些信息\n问题6：用户管理系统    我的服务/新增服务/分销服务     字段“支持贸易方式”与“分销方式”相比，支持贸易方式就多出了一个“一般贸易”', null, '0', '4', '1', '4', '2017-09-26', '2017-09-26', null, '2017-09-26', null, '0.00', '1506416707849', '156', 'B2B', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '193', '12.00', '9.50', '0.00', '0.79152', '0.66970', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('331', '2017092616580946312', '142', '144', null, '26', '1', 'http://dms.chigoose.', 'AUD', '8', null, '8', 'YWBM01', 'http://dms.chigoose.com\n9月26日\n问题1：采购管理系统    商品管理     在商品管理的详细信息页面，无法删除附件图片，是否可以删除？\n问题2:采购管理里系统   采购计划     编写同样的SKU名称，UPC编码不一致，在采购计划中填写SKU名称，如何区分出剩余不一样的SUK编码“”\n问题3：在系统中，邮箱是否按正确的邮箱走\n问题4：在采购计划的详细信息页面，“确认采购计划”“生成采购单”“查看已生成的采购单”按钮大小不一致，是否可以更改\n问题5：用户管理系统     我的服务/新增服务     建议：把“服务类型”放在第一个，新增服务时，可以先选择服务类型，在填写服务的类型的一些信息\n问题6：用户管理系统    我的服务/新增服务/分销服务     字段“支持贸易方式”与“分销方式”相比，支持贸易方式就多出了一个“一般贸易”', null, '0', '4', '1', '4', '2017-09-26', '2017-09-26', null, '2017-09-26', null, '0.00', '1506416718840', '156', 'B2B', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '193', '12.00', '9.50', '0.00', '0.79152', '0.66970', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('332', '2017092617472973214', '142', '144', null, '26', '1', null, 'CNY', '8', null, null, 'YWBM02', null, null, '0', '1', '0', '4', '2017-09-28', '2017-09-26', null, null, null, null, '1506419249661', '158', 'GH', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '100.00', '15.09', null, '0.15091', '0.12758', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('333', '2017092617472973214', '142', '144', null, '26', '1', null, 'CNY', '8', null, '8', 'YWBM02', null, null, '0', '3', '0', '4', '2017-09-28', '2017-09-26', null, '2017-09-26', null, null, '1506419390780', '158', 'GH', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '100.00', '15.09', null, '0.15091', '0.12758', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('334', '2017092617472973214', '142', '144', null, '26', '1', null, 'CNY', '8', null, '8', 'YWBM02', null, null, '0', '4', '0', '4', '2017-09-28', '2017-09-26', null, '2017-09-26', null, '0.00', '1506419447494', '158', 'GH', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '194', '100.00', '15.09', '0.00', '0.15091', '0.12758', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('335', '2017092617571215820', '142', '144', null, '26', '1', null, 'HKD', '8', null, '8', 'YWBM', '12121', null, '0', '3', '0', '4', '2017-09-28', '2017-09-26', null, '2017-09-26', null, null, '1506419912411', '164', 'B2G', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '120.00', '15.36', null, '0.12802', '0.10830', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('336', '2017092617571215820', '142', '144', null, '26', '1', null, 'GBP', '8', null, '8', 'YWBM', '1212', null, '0', '3', '0', '4', '2017-09-27', '2017-09-26', null, '2017-09-26', null, null, '1506419912413', '163', 'B2G', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '120.00', '161.73', null, '1.34771', '1.14016', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('337', '2017092617571215820', '142', '144', null, '26', '1', null, 'EUR', '8', null, '8', 'YWBM', '1212', null, '0', '3', '0', '4', '2017-09-26', '2017-09-26', null, '2017-09-26', null, null, '1506419912414', '162', 'B2G', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '120.00', '141.84', null, '1.18203', '1.00000', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('338', '2017092617571215820', '142', '144', null, '26', '1', null, 'USD', '8', null, '8', 'YWBM', '1212', null, '0', '3', '1', '4', '2017-09-29', '2017-09-26', null, '2017-09-26', null, null, '1506419912415', '161', 'B2G', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '120.00', '120.00', null, '1.00000', '0.84600', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('339', '2017092617571215820', '142', '144', null, '26', '1', null, 'CNY', '8', null, '8', 'YWBM', '2323', null, '0', '3', '1', '4', '2017-09-28', '2017-09-26', null, '2017-09-26', null, null, '1506419912416', '160', 'B2G', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '120.00', '18.11', null, '0.15091', '0.12758', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('340', '2017092617571215820', '142', '143', null, '26', '0', null, 'AUD', '8', null, '8', 'YWBM', '1212', null, '0', '3', '1', '4', '2017-09-27', '2017-09-26', null, '2017-09-26', null, null, '1506419912417', '159', 'B2G', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '12.00', '9.51', null, '0.79227', '0.66978', '费用类别名称', '员工的早餐费用名称');
INSERT INTO `ams_accountitem_history` VALUES ('341', '201709261824037096', '23', '36', null, '26', '1', null, 'GBP', '8', null, null, '12', null, null, '0', '1', '1', '4', '2017-09-26', '2017-09-26', null, null, null, null, '1506421443367', '165', 'B2B', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '120.00', '161.53', null, '1.34608', '1.13945', '增值服务', '打带费');
INSERT INTO `ams_accountitem_history` VALUES ('342', '201709261824037096', '23', '36', null, '26', '1', null, 'GBP', '8', null, '8', '12', null, null, '0', '3', '1', '4', '2017-09-26', '2017-09-26', null, '2017-09-26', null, null, '1506421584524', '165', 'B2B', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '120.00', '161.53', null, '1.34608', '1.13945', '增值服务', '打带费');
INSERT INTO `ams_accountitem_history` VALUES ('343', '201709261824037096', '23', '36', null, '26', '1', null, 'GBP', '8', null, '8', '12', null, null, '0', '4', '1', '4', '2017-09-26', '2017-09-26', null, '2017-09-26', null, '0.00', '1506421625292', '165', 'B2B', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '195', '120.00', '161.53', '0.00', '1.34608', '1.13945', '增值服务', '打带费');
INSERT INTO `ams_accountitem_history` VALUES ('344', '2017092617571215820', '142', '144', null, '26', '1', null, 'HKD', '8', null, '8', 'YWBM', '12121', null, '0', '4', '0', '4', '2017-09-28', '2017-09-26', null, '2017-09-26', null, '0.00', '1506421677892', '164', 'B2G', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '196', '120.00', '15.36', '0.00', '0.12802', '0.10830', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('345', '2017092617571215820', '142', '144', null, '26', '1', null, 'GBP', '8', null, '8', 'YWBM', '1212', null, '0', '4', '0', '4', '2017-09-27', '2017-09-26', null, '2017-09-26', null, '0.00', '1506421677893', '163', 'B2G', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '196', '120.00', '161.73', '0.00', '1.34771', '1.14016', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('346', '2017092617571215820', '142', '144', null, '26', '1', null, 'EUR', '8', null, '8', 'YWBM', '1212', null, '0', '4', '0', '4', '2017-09-26', '2017-09-26', null, '2017-09-26', null, '0.00', '1506421677899', '162', 'B2G', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '196', '120.00', '141.84', '0.00', '1.18203', '1.00000', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('347', '2017092617571215820', '142', '144', null, '26', '1', null, 'USD', '8', null, '8', 'YWBM', '1212', null, '0', '4', '1', '4', '2017-09-29', '2017-09-26', null, '2017-09-26', null, '0.00', '1506421677901', '161', 'B2G', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '196', '120.00', '120.00', '0.00', '1.00000', '0.84600', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('348', '2017092617571215820', '142', '144', null, '26', '1', null, 'CNY', '8', null, '8', 'YWBM', '2323', null, '0', '4', '1', '4', '2017-09-28', '2017-09-26', null, '2017-09-26', null, '0.00', '1506421677902', '160', 'B2G', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '196', '120.00', '18.11', '0.00', '0.15091', '0.12758', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('349', '2017092017110447825', '20', '22', null, '9', '1', null, 'CNY', '7', null, '7', '3424234', null, null, '0', '4', '1', '4', '2017-09-07', '2017-09-26', null, '2017-09-20', null, '0.00', '1506421677903', '89', 'B2F', 'USD', 'USD', 'XXXX', '测试供应商001', '196', '3453453.00', '525304.74', '0.00', '0.15211', '0.15211', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('350', '2017092616583895211', '142', '143', null, '26', '1', null, 'CNY', '8', null, '8', 'YWBM01', null, null, '0', '3', '1', '4', '2017-09-27', '2017-09-26', null, '2017-09-26', null, null, '1506421708820', '157', 'B2D', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '120.00', '18.11', null, '0.15090', '0.12768', '费用类别名称', '员工的早餐费用名称');
INSERT INTO `ams_accountitem_history` VALUES ('351', '2017092618291035311', '142', '144', null, '26', '1', null, 'AUD', '8', null, null, '1', null, null, '0', '1', '1', '4', '2017-09-26', '2017-09-26', null, null, null, null, '1506421750939', '166', 'B2B', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '1211.00', '956.78', null, '0.79008', '0.66959', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('352', '201709261829297547', '142', '143', null, '26', '1', null, 'AUD', '8', null, null, '11', null, null, '0', '1', '1', '4', '2017-09-13', '2017-09-26', null, null, null, null, '1506421769017', '167', 'GH', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '111.00', '87.70', null, '0.79008', '0.66959', '费用类别名称', '员工的早餐费用名称');
INSERT INTO `ams_accountitem_history` VALUES ('353', '2017092618294469944', '142', '143', null, '26', '1', null, 'HKD', '8', null, null, '11', '11', null, '0', '1', '1', '4', '2017-09-19', '2017-09-26', null, null, null, null, '1506421784226', '168', 'B2B', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '111.00', '14.21', null, '0.12805', '0.10852', '费用类别名称', '员工的早餐费用名称');
INSERT INTO `ams_accountitem_history` VALUES ('354', '2017092618294469944', '142', '143', null, '26', '1', null, 'HKD', '8', null, '8', '11', '11', null, '0', '3', '1', '4', '2017-09-19', '2017-09-26', null, '2017-09-26', null, null, '1506421799131', '168', 'B2B', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '111.00', '14.21', null, '0.12805', '0.10852', '费用类别名称', '员工的早餐费用名称');
INSERT INTO `ams_accountitem_history` VALUES ('355', '201709261829297547', '142', '143', null, '26', '1', null, 'AUD', '8', null, '8', '11', null, null, '0', '3', '1', '4', '2017-09-13', '2017-09-26', null, '2017-09-26', null, null, '1506421799132', '167', 'GH', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '111.00', '87.70', null, '0.79008', '0.66959', '费用类别名称', '员工的早餐费用名称');
INSERT INTO `ams_accountitem_history` VALUES ('356', '2017092618291035311', '142', '144', null, '26', '1', null, 'AUD', '8', null, '8', '1', null, null, '0', '3', '1', '4', '2017-09-26', '2017-09-26', null, '2017-09-26', null, null, '1506421799139', '166', 'B2B', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '1211.00', '956.78', null, '0.79008', '0.66959', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('357', '2017092618304731905', '142', '144', null, '26', '1', null, 'CNY', '8', null, null, '111', null, null, '0', '1', '0', '4', '2017-09-13', '2017-09-26', null, null, null, null, '1506421847998', '169', 'GH', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '111.00', '16.75', null, '0.15089', '0.12788', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('358', '2017092618310471895', '142', '144', null, '26', '1', null, 'AUD', '8', null, null, '111', null, null, '0', '1', '0', '4', '2017-09-12', '2017-09-26', null, null, null, null, '1506421864258', '170', 'GH', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '111.00', '87.70', null, '0.79008', '0.66959', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('359', '2017092618310471895', '142', '144', null, '26', '1', null, 'AUD', '8', null, '8', '111', null, null, '0', '3', '0', '4', '2017-09-12', '2017-09-26', null, '2017-09-26', null, null, '1506421873300', '170', 'GH', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '111.00', '87.70', null, '0.79008', '0.66959', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('360', '2017092618304731905', '142', '144', null, '26', '1', null, 'CNY', '8', null, '8', '111', null, null, '0', '3', '0', '4', '2017-09-13', '2017-09-26', null, '2017-09-26', null, null, '1506421873302', '169', 'GH', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '111.00', '16.75', null, '0.15089', '0.12788', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('361', '2017092618310471895', '142', '144', null, '26', '1', null, 'AUD', '8', null, '8', '111', null, null, '0', '4', '0', '4', '2017-09-12', '2017-09-26', null, '2017-09-26', null, '0.00', '1506422319372', '170', 'GH', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '197', '111.00', '87.70', '0.00', '0.79008', '0.66959', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('362', '2017092618304731905', '142', '144', null, '26', '1', null, 'CNY', '8', null, '8', '111', null, null, '0', '4', '0', '4', '2017-09-13', '2017-09-26', null, '2017-09-26', null, '0.00', '1506422319374', '169', 'GH', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '197', '111.00', '16.75', '0.00', '0.15089', '0.12788', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('363', '2017092618294469944', '142', '143', null, '26', '1', null, 'HKD', '8', null, '8', '11', '11', null, '0', '4', '1', '4', '2017-09-19', '2017-09-26', null, '2017-09-26', null, '0.00', '1506422319375', '168', 'B2B', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '197', '111.00', '14.21', '0.00', '0.12805', '0.10852', '费用类别名称', '员工的早餐费用名称');
INSERT INTO `ams_accountitem_history` VALUES ('364', '201709261829297547', '142', '143', null, '26', '1', null, 'AUD', '8', null, '8', '11', null, null, '0', '4', '1', '4', '2017-09-13', '2017-09-26', null, '2017-09-26', null, '0.00', '1506422319381', '167', 'GH', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '197', '111.00', '87.70', '0.00', '0.79008', '0.66959', '费用类别名称', '员工的早餐费用名称');
INSERT INTO `ams_accountitem_history` VALUES ('365', '2017092618291035311', '142', '144', null, '26', '1', null, 'AUD', '8', null, '8', '1', null, null, '0', '4', '1', '4', '2017-09-26', '2017-09-26', null, '2017-09-26', null, '0.00', '1506422319383', '166', 'B2B', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '197', '1211.00', '956.78', '0.00', '0.79008', '0.66959', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('366', '2017092616583895211', '142', '143', null, '26', '1', null, 'CNY', '8', null, '8', 'YWBM01', null, null, '0', '4', '1', '4', '2017-09-27', '2017-09-26', null, '2017-09-26', null, '0.00', '1506422319385', '157', 'B2D', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '197', '120.00', '18.11', '0.00', '0.15090', '0.12768', '费用类别名称', '员工的早餐费用名称');
INSERT INTO `ams_accountitem_history` VALUES ('367', '2017092618475989241', '17', '19', null, '27', '1', null, 'AUD', '130', null, '130', '100', '1212', null, '0', '3', '1', '4', '2017-09-26', '2017-09-26', null, '2017-09-26', null, null, '1506422894655', '171', 'B2B', 'USD', 'USD', null, '乐其有限公司', null, '120.00', '94.91', null, '0.79089', '0.79089', '装卸费', '出仓装车费');
INSERT INTO `ams_accountitem_history` VALUES ('368', '2017092618475989241', '17', '18', null, '27', '1', null, 'CNY', '130', null, '130', '100', '1212', null, '0', '3', '1', '4', '2017-09-26', '2017-09-26', null, '2017-09-26', null, null, '1506422894657', '172', 'B2B', 'USD', 'USD', null, '乐其有限公司', null, '120.00', '18.11', null, '0.15089', '0.15089', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('369', '2017092618475989241', '142', '144', null, '27', '1', null, 'EUR', '130', null, '130', '100', '1212', null, '0', '3', '1', '4', '2017-09-27', '2017-09-26', null, '2017-09-26', null, null, '1506422894660', '173', 'B2B', 'USD', 'USD', null, '乐其有限公司', null, '121.00', '142.77', null, '1.17994', '1.17994', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('370', '2017092618475989241', null, null, null, '27', '1', null, 'AUD', '130', null, '130', '100', '1212', null, '0', '3', '0', '4', '2017-09-26', '2017-09-26', null, '2017-09-26', null, null, '1506422894661', '174', 'B2B', 'USD', 'USD', null, '乐其有限公司', null, '121.00', '95.70', null, '0.79089', '0.79089', '理貨費', '出仓理货费');
INSERT INTO `ams_accountitem_history` VALUES ('371', '2017092618475989241', '11', '13', null, '27', '1', null, 'EUR', '130', null, '130', '100', '1212', null, '0', '3', '0', '4', '2017-09-26', '2017-09-26', null, '2017-09-26', null, null, '1506422894663', '175', 'B2B', 'USD', 'USD', null, '乐其有限公司', null, '121.00', '142.77', null, '1.17994', '1.17994', '入倉費用', '登記費');
INSERT INTO `ams_accountitem_history` VALUES ('372', '2017092618475989241', '11', '13', null, '27', '1', null, 'EUR', '130', null, '130', '100', '1212', null, '0', '4', '0', '4', '2017-09-26', '2017-09-26', null, '2017-09-26', null, '0.00', '1506422950925', '175', 'B2B', 'USD', 'USD', null, '乐其有限公司', '198', '121.00', '142.77', '0.00', '1.17994', '1.17994', '入倉費用', '登記費');
INSERT INTO `ams_accountitem_history` VALUES ('373', '2017092618475989241', null, null, null, '27', '1', null, 'AUD', '130', null, '130', '100', '1212', null, '0', '4', '0', '4', '2017-09-26', '2017-09-26', null, '2017-09-26', null, '0.00', '1506422950926', '174', 'B2B', 'USD', 'USD', null, '乐其有限公司', '198', '121.00', '95.70', '0.00', '0.79089', '0.79089', '理貨費', '出仓理货费');
INSERT INTO `ams_accountitem_history` VALUES ('374', '2017092618475989241', '142', '144', null, '27', '1', null, 'EUR', '130', null, '130', '100', '1212', null, '0', '4', '1', '4', '2017-09-27', '2017-09-26', null, '2017-09-26', null, '0.00', '1506422950927', '173', 'B2B', 'USD', 'USD', null, '乐其有限公司', '198', '121.00', '142.77', '0.00', '1.17994', '1.17994', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('375', '2017092618475989241', '17', '18', null, '27', '1', null, 'CNY', '130', null, '130', '100', '1212', null, '0', '4', '1', '4', '2017-09-26', '2017-09-26', null, '2017-09-26', null, '0.00', '1506422950929', '172', 'B2B', 'USD', 'USD', null, '乐其有限公司', '198', '120.00', '18.11', '0.00', '0.15089', '0.15089', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('376', '2017092618475989241', '17', '19', null, '27', '1', null, 'AUD', '130', null, '130', '100', '1212', null, '0', '4', '1', '4', '2017-09-26', '2017-09-26', null, '2017-09-26', null, '0.00', '1506422950930', '171', 'B2B', 'USD', 'USD', null, '乐其有限公司', '198', '120.00', '94.91', '0.00', '0.79089', '0.79089', '装卸费', '出仓装车费');
INSERT INTO `ams_accountitem_history` VALUES ('377', '2017092709305649663', '23', '43', null, '23', '1', null, 'AUD', '130', null, '130', '123', '111', null, '0', '3', '1', '4', '2017-09-27', '2017-09-27', null, '2017-09-27', null, null, '1506475942792', '176', 'B2B', 'USD', 'USD', null, '送货小李子', null, '111.00', '87.51', null, '0.78840', '0.78840', '增值服务', '包材费用');
INSERT INTO `ams_accountitem_history` VALUES ('378', '2017092709305649663', '20', '22', null, '23', '1', null, 'CNY', '130', null, '130', '123', '111', null, '0', '3', '1', '4', '2017-09-27', '2017-09-27', null, '2017-09-27', null, null, '1506475942794', '177', 'B2B', 'USD', 'USD', null, '送货小李子', null, '111.00', '16.73', null, '0.15073', '0.15073', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('379', '2017092709305649663', null, null, null, '23', '1', null, 'EUR', '130', null, '130', '123', '111', null, '0', '3', '0', '4', '2017-09-27', '2017-09-27', null, '2017-09-27', null, null, '1506475942795', '178', 'B2B', 'USD', 'USD', null, '送货小李子', null, '11.00', '12.97', null, '1.17925', '1.17925', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('380', '2017092709305649663', '142', '143', null, '23', '1', null, 'CNY', '130', null, '130', '123', '11', null, '0', '3', '0', '4', '2017-09-27', '2017-09-27', null, '2017-09-27', null, null, '1506475943315', '179', 'B2B', 'USD', 'USD', null, '送货小李子', null, '11.00', '1.66', null, '0.15073', '0.15073', '费用类别名称', '员工的早餐费用名称');
INSERT INTO `ams_accountitem_history` VALUES ('381', '2017092709305649663', '142', '143', null, '23', '1', null, 'CNY', '130', null, '130', '123', '11', null, '0', '4', '0', '4', '2017-09-27', '2017-09-27', null, '2017-09-27', null, '0.00', '1506475969109', '179', 'B2B', 'USD', 'USD', null, '送货小李子', '199', '11.00', '1.66', '0.00', '0.15073', '0.15073', '费用类别名称', '员工的早餐费用名称');
INSERT INTO `ams_accountitem_history` VALUES ('382', '2017092709305649663', null, null, null, '23', '1', null, 'EUR', '130', null, '130', '123', '111', null, '0', '4', '0', '4', '2017-09-27', '2017-09-27', null, '2017-09-27', null, '0.00', '1506475969111', '178', 'B2B', 'USD', 'USD', null, '送货小李子', '199', '11.00', '12.97', '0.00', '1.17925', '1.17925', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('383', '2017092709305649663', '20', '22', null, '23', '1', null, 'CNY', '130', null, '130', '123', '111', null, '0', '4', '1', '4', '2017-09-27', '2017-09-27', null, '2017-09-27', null, '0.00', '1506475969112', '177', 'B2B', 'USD', 'USD', null, '送货小李子', '199', '111.00', '16.73', '0.00', '0.15073', '0.15073', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('384', '2017092709305649663', '23', '43', null, '23', '1', null, 'AUD', '130', null, '130', '123', '111', null, '0', '4', '1', '4', '2017-09-27', '2017-09-27', null, '2017-09-27', null, '0.00', '1506475969112', '176', 'B2B', 'USD', 'USD', null, '送货小李子', '199', '111.00', '87.51', '0.00', '0.78840', '0.78840', '增值服务', '包材费用');
INSERT INTO `ams_accountitem_history` VALUES ('385', '2017092709362640718', '142', '144', null, '27', '1', null, 'AUD', '130', null, '130', '111', '111', null, '0', '3', '0', '4', '2017-09-27', '2017-09-27', null, '2017-09-27', null, null, '1506476201761', '181', 'B2B', 'USD', 'USD', null, '乐其有限公司', null, '222.00', '175.02', null, '0.78840', '0.78840', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('386', '2017092709362640718', '142', '144', null, '27', '1', null, 'AUD', '130', null, '130', '111', '111', null, '0', '3', '1', '4', '2017-09-27', '2017-09-27', null, '2017-09-27', null, null, '1506476201763', '180', 'B2B', 'USD', 'USD', null, '乐其有限公司', null, '111.00', '87.51', null, '0.78840', '0.78840', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('387', '2017092709362640718', '142', '144', null, '27', '1', null, 'AUD', '130', null, '130', '111', '111', null, '0', '4', '0', '4', '2017-09-27', '2017-09-27', null, '2017-09-27', null, '0.00', '1506476228991', '181', 'B2B', 'USD', 'USD', null, '乐其有限公司', '200', '222.00', '175.02', '0.00', '0.78840', '0.78840', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('388', '2017092709362640718', '142', '144', null, '27', '1', null, 'AUD', '130', null, '130', '111', '111', null, '0', '4', '1', '4', '2017-09-27', '2017-09-27', null, '2017-09-27', null, '0.00', '1506476228992', '180', 'B2B', 'USD', 'USD', null, '乐其有限公司', '200', '111.00', '87.51', '0.00', '0.78840', '0.78840', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('389', '2017092709593097272', '17', '19', null, '26', '1', '没有概要', 'CNY', '8', null, null, 'QQ333', '没有备注', null, '0', '1', '1', '4', '2017-09-27', '2017-09-27', null, null, null, null, '1506477626140', '182', 'B2B', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '22.00', '223.00', null, '0.15073', '0.12782', '装卸费', '出仓装车费');
INSERT INTO `ams_accountitem_history` VALUES ('390', '2017092709593097272', '17', '19', null, '26', '1', '没有概要', 'CNY', '8', null, '130', 'QQ333', '没有备注', null, '0', '3', '1', '4', '2017-09-27', '2017-09-27', null, '2017-09-27', null, null, '1506478466250', '182', 'B2B', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '22.00', '223.00', null, '0.15073', '0.12782', '装卸费', '出仓装车费');
INSERT INTO `ams_accountitem_history` VALUES ('391', '2017092710451865924', '17', '18', null, '23', '1', null, 'CNY', '130', null, '130', '345', '123', null, '0', '3', '0', '4', '2017-09-27', '2017-09-27', null, '2017-09-27', null, null, '1506480327604', '186', 'DF', 'USD', 'USD', null, '送货小李子', null, '123.00', '18.53', null, '0.15067', '0.15067', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('392', '2017092710451865924', '23', '39', null, '23', '1', null, 'HKD', '130', null, '130', '345', '123', null, '0', '3', '0', '4', '2017-09-27', '2017-09-27', null, '2017-09-27', null, null, '1506480327608', '185', 'DF', 'USD', 'USD', null, '送货小李子', null, '123.00', '15.75', null, '0.12801', '0.12801', '增值服务', 'Toll FEE');
INSERT INTO `ams_accountitem_history` VALUES ('393', '2017092710451865924', '20', '22', null, '23', '1', null, 'HKD', '130', null, '130', '345', '123', null, '0', '3', '1', '4', '2017-09-27', '2017-09-27', null, '2017-09-27', null, null, '1506480327610', '184', 'DF', 'USD', 'USD', null, '送货小李子', null, '123.00', '15.75', null, '0.12801', '0.12801', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('394', '2017092710451865924', '142', '144', null, '23', '1', null, 'USD', '130', null, '130', '345', '12', null, '0', '3', '1', '4', '2017-09-27', '2017-09-27', null, '2017-09-27', null, null, '1506480327612', '183', 'DF', 'USD', 'USD', null, '送货小李子', null, '123.00', '123.00', null, '1.00000', '1.00000', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('395', '2017092710465867752', '23', '43', null, '23', '1', null, 'GBP', '130', null, null, '123', null, null, '0', '1', '0', '4', '2017-09-05', '2017-09-27', null, null, null, null, '1506480418234', '187', 'B2B', 'USD', 'USD', null, '送货小李子', null, '123.00', '165.38', null, '1.34456', '1.34456', '增值服务', '包材费用');
INSERT INTO `ams_accountitem_history` VALUES ('396', '2017092710465867752', '23', '43', null, '23', '1', null, 'GBP', '130', null, '130', '123', null, null, '0', '3', '0', '4', '2017-09-05', '2017-09-27', null, '2017-09-27', null, null, '1506480426377', '187', 'B2B', 'USD', 'USD', null, '送货小李子', null, '123.00', '165.38', null, '1.34456', '1.34456', '增值服务', '包材费用');
INSERT INTO `ams_accountitem_history` VALUES ('397', '2017092709593097272', '17', '19', null, '26', '1', '没有概要', 'CNY', '8', null, '130', 'QQ333', '没有备注', null, '0', '4', '1', '4', '2017-09-27', '2017-09-28', null, '2017-09-27', null, '0.00', '1506583642066', '182', 'B2B', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '201', '22.00', '223.00', '0.00', '0.15073', '0.12782', '装卸费', '出仓装车费');
INSERT INTO `ams_accountitem_history` VALUES ('398', '2017092618291035311', '142', '144', null, '26', '1', null, 'AUD', '8', null, '8', '1', null, null, '0', '4', '1', '4', '2017-09-26', '2017-09-28', null, '2017-09-26', null, '0.00', '1506583642069', '166', 'B2B', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '201', '1211.00', '956.78', '0.00', '0.79008', '0.66959', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('399', '2017092616583895211', '142', '143', null, '26', '1', null, 'CNY', '8', null, '8', 'YWBM01', null, null, '0', '4', '1', '4', '2017-09-27', '2017-09-28', null, '2017-09-26', null, '0.00', '1506583642071', '157', 'B2D', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '201', '120.00', '18.11', '0.00', '0.15090', '0.12768', '费用类别名称', '员工的早餐费用名称');
INSERT INTO `ams_accountitem_history` VALUES ('400', '2017092710451865924', '17', '18', null, '23', '1', null, 'CNY', '130', null, '130', '345', '123', null, '0', '4', '0', '4', '2017-09-27', '2017-09-28', null, '2017-09-27', null, '0.00', '1506584669814', '186', 'DF', 'USD', 'USD', null, '送货小李子', '202', '123.00', '18.53', '0.00', '0.15067', '0.15067', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('401', '2017092710451865924', '23', '39', null, '23', '1', null, 'HKD', '130', null, '130', '345', '123', null, '0', '4', '0', '4', '2017-09-27', '2017-09-28', null, '2017-09-27', null, '0.00', '1506584669816', '185', 'DF', 'USD', 'USD', null, '送货小李子', '202', '123.00', '15.75', '0.00', '0.12801', '0.12801', '增值服务', 'Toll FEE');
INSERT INTO `ams_accountitem_history` VALUES ('402', '2017092710451865924', '20', '22', null, '23', '1', null, 'HKD', '130', null, '130', '345', '123', null, '0', '4', '1', '4', '2017-09-27', '2017-09-28', null, '2017-09-27', null, '0.00', '1506584669818', '184', 'DF', 'USD', 'USD', null, '送货小李子', '202', '123.00', '15.75', '0.00', '0.12801', '0.12801', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('403', '2017092710451865924', '142', '144', null, '23', '1', null, 'USD', '130', null, '130', '345', '12', null, '0', '4', '1', '4', '2017-09-27', '2017-09-28', null, '2017-09-27', null, '0.00', '1506584669820', '183', 'DF', 'USD', 'USD', null, '送货小李子', '202', '123.00', '123.00', '0.00', '1.00000', '1.00000', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('404', '2017092115292968999', '154', '156', null, '测试供应商001', '1', '21', 'USD', '4', '130', null, '212', '12', null, '0', '2', '1', '4', '2017-09-21', '2017-09-30', '2017-09-30', null, null, null, '1506739514909', '143', 'B2E', 'USD', 'USD', 'XXXX', '测试供应商001', null, '222.00', '222.00', null, '1.00000', '1.00000', '旋转木马', '鼓励费');
INSERT INTO `ams_accountitem_history` VALUES ('405', '2017093010564451753', '167', '200', null, '26', '1', '12', 'AUD', '130', null, null, '12', '12', null, '0', '1', '0', '4', '2017-09-07', '2017-09-30', null, null, null, null, '1506740204290', '188', 'B2C', 'USD', 'EUR', null, '结算餐费1、2', null, '12.00', '9.42', null, '0.78462', '0.66387', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('406', '2017093010572343801', '157', '162', null, '26', '1', '313', 'EUR', '130', null, null, '123', null, null, '0', '1', '0', '4', '2017-09-30', '2017-09-30', null, null, null, null, '1506740243239', '189', 'FG', 'USD', 'EUR', null, '结算餐费1、2', null, '133.00', '157.19', null, '1.18189', '1.00000', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('407', '2017092618310471895', '142', '144', null, '26', '1', null, 'AUD', '8', null, '8', '111', null, null, '0', '4', '0', '4', '2017-09-12', '2017-09-30', null, '2017-09-26', null, '0.00', '1506740477760', '170', 'GH', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '203', '111.00', '87.70', '0.00', '0.79008', '0.66959', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('408', '2017092618304731905', '142', '144', null, '26', '1', null, 'CNY', '8', null, '8', '111', null, null, '0', '4', '0', '4', '2017-09-13', '2017-09-30', null, '2017-09-26', null, '0.00', '1506740477762', '169', 'GH', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '203', '111.00', '16.75', '0.00', '0.15089', '0.12788', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('409', '2017092618294469944', '142', '143', null, '26', '1', null, 'HKD', '8', null, '8', '11', '11', null, '0', '4', '1', '4', '2017-09-19', '2017-09-30', null, '2017-09-26', null, '0.00', '1506740477763', '168', 'B2B', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '203', '111.00', '14.21', '0.00', '0.12805', '0.10852', '费用类别名称', '员工的早餐费用名称');
INSERT INTO `ams_accountitem_history` VALUES ('410', '201709261829297547', '142', '143', null, '26', '1', null, 'AUD', '8', null, '8', '11', null, null, '0', '4', '1', '4', '2017-09-13', '2017-09-30', null, '2017-09-26', null, '0.00', '1506740477765', '167', 'GH', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '203', '111.00', '87.70', '0.00', '0.79008', '0.66959', '费用类别名称', '员工的早餐费用名称');
INSERT INTO `ams_accountitem_history` VALUES ('411', '2017093011040663537', '157', '162', null, '27', '1', null, 'EUR', '130', null, '130', '123456', null, null, '0', '3', '0', '4', '2017-08-16', '2017-09-30', null, '2017-09-30', null, null, '1506740665779', '195', 'GH', 'USD', 'USD', null, '乐其有限公司', null, '1212.00', '1432.45', null, '1.18189', '1.18189', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('412', '2017093011040663537', '157', '162', null, '27', '1', null, 'EUR', '130', null, '130', '123456', null, null, '0', '4', '0', '4', '2017-08-16', '2017-09-30', null, '2017-09-30', null, '0.00', '1506740681939', '195', 'GH', 'USD', 'USD', null, '乐其有限公司', '204', '1212.00', '1432.45', '0.00', '1.18189', '1.18189', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('413', '2017093011141170983', '148', '150', null, '26', '1', '12', 'EUR', '130', null, null, '34', '12', null, '0', '1', '1', '4', '2017-09-05', '2017-09-30', null, null, null, null, '1506741251005', '196', 'B2C', 'USD', 'EUR', null, '结算餐费1、2', null, '123.00', '145.37', null, '1.18189', '1.00000', '太阳神车', '座位费');
INSERT INTO `ams_accountitem_history` VALUES ('414', '2017093011141170983', '148', '150', null, '26', '1', '12', 'EUR', '130', null, '130', '34', '12', null, '0', '3', '1', '4', '2017-09-05', '2017-09-30', null, '2017-09-30', null, null, '1506741258618', '196', 'B2C', 'USD', 'EUR', null, '结算餐费1、2', null, '123.00', '145.37', null, '1.18189', '1.00000', '太阳神车', '座位费');
INSERT INTO `ams_accountitem_history` VALUES ('415', '2017093011141170983', '148', '150', null, '26', '1', '12', 'EUR', '130', null, '130', '34', '12', null, '0', '4', '1', '4', '2017-09-05', '2017-09-30', null, '2017-09-30', null, '0.00', '1506741278552', '196', 'B2C', 'USD', 'EUR', null, '结算餐费1、2', '205', '123.00', '145.37', '0.00', '1.18189', '1.00000', '太阳神车', '座位费');
INSERT INTO `ams_accountitem_history` VALUES ('416', '2017092710465867752', '23', '43', null, '23', '1', null, 'GBP', '130', null, '130', '123', null, null, '0', '4', '0', '4', '2017-09-05', '2017-09-30', null, '2017-09-27', null, '0.00', '1506741456071', '187', 'B2B', 'USD', 'USD', null, '送货小李子', '206', '123.00', '165.38', '0.00', '1.34456', '1.34456', '增值服务', '包材费用');
INSERT INTO `ams_accountitem_history` VALUES ('417', '2017093011040663537', '167', '169', null, '27', '1', null, 'HKD', '130', null, '130', '123456', null, null, '0', '3', '1', '4', '2017-09-18', '2017-09-30', null, '2017-09-30', null, null, '1506741647370', '194', 'GH', 'USD', 'USD', null, '乐其有限公司', null, '12.00', '1.54', null, '0.12804', '0.12804', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('418', '2017093011040663537', '148', '155', null, '乐其有限公司', '1', null, 'GBP', '130', '130', null, '123456', null, null, '0', '2', '1', '4', '2017-09-13', '2017-09-30', '2017-09-30', null, null, null, '1506742116320', '193', 'GH', 'USD', 'USD', null, '乐其有限公司', null, '1212.00', '1623.79', null, '1.33913', '1.33976', '太阳神车', '欣赏费');
INSERT INTO `ams_accountitem_history` VALUES ('419', '2017093011474784168', '167', '200', null, '24', '1', '1212', 'CNY', '130', null, null, '55', '1212', null, '0', '1', '1', '4', '2017-09-30', '2017-09-30', null, null, null, null, '1506743267783', '197', 'GH', 'USD', 'USD', null, '井格大家庭', null, '100.00', '15.03', null, '0.15030', '0.15030', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('420', '2017093011474784168', '167', '200', null, '24', '1', '1212', 'CNY', '130', null, '130', '55', '1212', null, '0', '3', '1', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, null, '1506743281052', '197', 'GH', 'USD', 'USD', null, '井格大家庭', null, '100.00', '15.03', null, '0.15030', '0.15030', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('421', '2017093011474784168', '167', '200', null, '24', '1', '1212', 'CNY', '130', null, '130', '55', '1212', null, '0', '3', '1', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, null, '1506743374654', '197', 'GH', 'USD', 'USD', null, '井格大家庭', null, '100.00', '15.03', null, '0.15030', '0.15030', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('422', '2017093011474784168', '167', '200', null, '24', '1', '1212', 'CNY', '130', null, '130', '55', '1212', null, '0', '4', '1', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, '0.00', '1506743451073', '197', 'GH', 'USD', 'USD', null, '井格大家庭', '207', '100.00', '15.03', '0.00', '0.15030', '0.15030', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('423', '2017093011562344979', '20', '22', null, '27', '1', null, 'HKD', '130', null, '130', '000', '12.80', null, '0', '3', '0', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, null, '1506743984926', '202', 'B2B', 'USD', 'USD', null, '乐其有限公司', null, '100.00', '12.80', null, '0.12804', '0.12804', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('424', '2017093011562344979', '167', '169', null, '27', '1', null, 'AUD', '130', null, '130', '000', '78.46', null, '0', '3', '0', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, null, '1506743984927', '201', 'B2B', 'USD', 'USD', null, '乐其有限公司', null, '100.00', '78.46', null, '0.78462', '0.78462', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('425', '2017093011562344979', '154', '156', null, '27', '1', null, 'EUR', '130', null, '130', '000', '118.19', null, '0', '3', '1', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, null, '1506743984928', '200', 'B2B', 'USD', 'USD', null, '乐其有限公司', null, '100.00', '118.19', null, '1.18189', '1.18189', '旋转木马', '鼓励费');
INSERT INTO `ams_accountitem_history` VALUES ('426', '2017093011562344979', '157', '163', null, '27', '1', null, 'CNY', '130', null, '130', '000', '15.03', null, '0', '3', '1', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, null, '1506743984929', '199', 'B2B', 'USD', 'USD', null, '乐其有限公司', null, '100.00', '15.03', null, '0.15130', '0.15030', '鬼屋', '高僧');
INSERT INTO `ams_accountitem_history` VALUES ('427', '2017093011562344979', '167', '200', null, '27', '1', null, 'AUD', '130', null, '130', '000', '78.46', null, '0', '3', '1', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, null, '1506743984938', '198', 'B2B', 'USD', 'USD', null, '乐其有限公司', null, '100.00', '78.46', null, '0.78462', '0.78462', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('428', '2017093011562344979', '20', '22', null, '27', '1', null, 'HKD', '130', null, '130', '000', '12.80', null, '0', '4', '0', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, '0.00', '1506749006954', '202', 'B2B', 'USD', 'USD', null, '乐其有限公司', '208', '100.00', '12.80', '0.00', '0.12804', '0.12804', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('429', '2017093011562344979', '167', '169', null, '27', '1', null, 'AUD', '130', null, '130', '000', '78.46', null, '0', '4', '0', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, '0.00', '1506749006957', '201', 'B2B', 'USD', 'USD', null, '乐其有限公司', '208', '100.00', '78.46', '0.00', '0.78462', '0.78462', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('430', '2017093011562344979', '154', '156', null, '27', '1', null, 'EUR', '130', null, '130', '000', '118.19', null, '0', '4', '1', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, '0.00', '1506749006958', '200', 'B2B', 'USD', 'USD', null, '乐其有限公司', '208', '100.00', '118.19', '0.00', '1.18189', '1.18189', '旋转木马', '鼓励费');
INSERT INTO `ams_accountitem_history` VALUES ('431', '2017093011562344979', '157', '163', null, '27', '1', null, 'CNY', '130', null, '130', '000', '15.03', null, '0', '4', '1', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, '0.00', '1506749006960', '199', 'B2B', 'USD', 'USD', null, '乐其有限公司', '208', '100.00', '15.03', '0.00', '0.15130', '0.15030', '鬼屋', '高僧');
INSERT INTO `ams_accountitem_history` VALUES ('432', '2017093011562344979', '167', '200', null, '27', '1', null, 'AUD', '130', null, '130', '000', '78.46', null, '0', '4', '1', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, '0.00', '1506749006961', '198', 'B2B', 'USD', 'USD', null, '乐其有限公司', '208', '100.00', '78.46', '0.00', '0.78462', '0.78462', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('433', '2017093014163164356', '20', '22', null, '23', '1', null, 'JPY', '130', null, '130', '1', '1', null, '0', '3', '0', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, null, '1506752228879', '207', 'GH', 'USD', 'USD', null, '送货小李子', null, '1.00', '0.01', null, '0.00890', '0.00890', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('434', '2017093014163164356', '23', '35', null, '23', '1', null, 'HKD', '130', null, '130', '1', '1', null, '0', '3', '0', '4', '2017-09-27', '2017-09-30', null, '2017-09-30', null, null, '1506752228883', '206', 'GH', 'USD', 'USD', null, '送货小李子', null, '1.00', '0.13', null, '0.12804', '0.12804', '增值服务', '送货/提货');
INSERT INTO `ams_accountitem_history` VALUES ('435', '2017093014163164356', '20', '22', null, '23', '1', null, 'GBP', '130', null, '130', '1', '1', null, '0', '3', '1', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, null, '1506752228886', '205', 'GH', 'USD', 'USD', null, '送货小李子', null, '1.00', '1.34', null, '1.33976', '1.33976', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('436', '2017093014163164356', '157', '162', null, '23', '1', null, 'EUR', '130', null, '130', '1', '1', null, '0', '3', '1', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, null, '1506752228889', '204', 'GH', 'USD', 'USD', null, '送货小李子', null, '1.00', '1.18', null, '1.18189', '1.18189', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('437', '2017093014163164356', '167', '200', null, '23', '1', null, 'AUD', '130', null, '130', '1', '1', null, '0', '3', '1', '4', '2017-09-12', '2017-09-30', null, '2017-09-30', null, null, '1506752228891', '203', 'GH', 'USD', 'USD', null, '送货小李子', null, '1.00', '0.78', null, '0.78462', '0.78462', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('438', '2017093014163164356', '20', '22', null, '23', '1', null, 'JPY', '130', null, '130', '1', '1', null, '0', '4', '0', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, '0.00', '1506752252394', '207', 'GH', 'USD', 'USD', null, '送货小李子', '209', '1.00', '0.01', '0.00', '0.00890', '0.00890', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('439', '2017093014163164356', '23', '35', null, '23', '1', null, 'HKD', '130', null, '130', '1', '1', null, '0', '4', '0', '4', '2017-09-27', '2017-09-30', null, '2017-09-30', null, '0.00', '1506752252396', '206', 'GH', 'USD', 'USD', null, '送货小李子', '209', '1.00', '0.13', '0.00', '0.12804', '0.12804', '增值服务', '送货/提货');
INSERT INTO `ams_accountitem_history` VALUES ('440', '2017093014163164356', '20', '22', null, '23', '1', null, 'GBP', '130', null, '130', '1', '1', null, '0', '4', '1', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, '0.00', '1506752252397', '205', 'GH', 'USD', 'USD', null, '送货小李子', '209', '1.00', '1.34', '0.00', '1.33976', '1.33976', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('441', '2017093014163164356', '157', '162', null, '23', '1', null, 'EUR', '130', null, '130', '1', '1', null, '0', '4', '1', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, '0.00', '1506752252399', '204', 'GH', 'USD', 'USD', null, '送货小李子', '209', '1.00', '1.18', '0.00', '1.18189', '1.18189', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('442', '2017093014163164356', '167', '200', null, '23', '1', null, 'AUD', '130', null, '130', '1', '1', null, '0', '4', '1', '4', '2017-09-12', '2017-09-30', null, '2017-09-30', null, '0.00', '1506752252401', '203', 'GH', 'USD', 'USD', null, '送货小李子', '209', '1.00', '0.78', '0.00', '0.78462', '0.78462', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('443', '2017093014274711316', '20', '22', null, '3', '1', null, 'GBP', '130', null, '130', '3', '4', null, '0', '3', '0', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, null, '1506752906548', '211', 'DF', 'USD', 'AUD', null, '网易', null, '100.00', '133.98', null, '1.33976', '1.70753', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('444', '2017093014274711316', '167', '169', null, '3', '1', null, 'EUR', '130', null, '130', '3', '3', null, '0', '3', '0', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, null, '1506752906550', '210', 'DF', 'USD', 'AUD', null, '网易', null, '100.00', '118.19', null, '1.18189', null, '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('445', '2017093014274711316', '157', '161', null, '3', '1', null, 'CNY', '130', null, '130', '3', '2', null, '0', '3', '1', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, null, '1506752906562', '209', 'DF', 'USD', 'AUD', null, '网易', null, '100.00', '15.03', null, '0.15030', '0.19156', '鬼屋', '僵尸');
INSERT INTO `ams_accountitem_history` VALUES ('446', '2017093014274711316', '167', '169', null, '3', '1', null, 'AUD', '130', null, '130', '3', '1', null, '0', '3', '1', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, null, '1506752906568', '208', 'DF', 'USD', 'AUD', null, '网易', null, '100.00', '78.46', null, '0.78462', '1.00000', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('447', '2017093014294068815', '167', '169', null, '3', '1', '555', 'USD', '130', null, null, '5', '555', null, '0', '1', '1', '4', '2017-09-30', '2017-09-30', null, null, null, null, '1506752980545', '212', 'B2C', 'USD', 'AUD', null, '网易', null, '100.00', '100.00', null, '1.00000', '1.27450', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('448', '2017093014294068815', '167', '169', null, '3', '1', '555', 'USD', '130', null, '130', '5', '555', null, '0', '3', '1', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, null, '1506753338896', '212', 'B2C', 'USD', 'AUD', null, '网易', null, '100.00', '100.00', null, '1.00000', '1.27450', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('449', '2017093014294068815', '167', '169', null, '3', '1', '555', 'USD', '130', null, '130', '5', '555', null, '0', '4', '1', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, '0.00', '1506754180406', '212', 'B2C', 'USD', 'AUD', null, '网易', '210', '100.00', '100.00', '0.00', '1.00000', '1.27450', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('450', '2017093014274711316', '20', '22', null, '3', '1', null, 'GBP', '130', null, '130', '3', '4', null, '0', '4', '0', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, '0.00', '1506754180409', '211', 'DF', 'USD', 'AUD', null, '网易', '210', '100.00', '133.98', '0.00', '1.33976', '1.70753', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('451', '2017093014274711316', '167', '169', null, '3', '1', null, 'EUR', '130', null, '130', '3', '3', null, '0', '4', '0', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, '0.00', '1506754180410', '210', 'DF', 'USD', 'AUD', null, '网易', '210', '100.00', '118.19', '0.00', '1.18189', null, '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('452', '2017093014274711316', '157', '161', null, '3', '1', null, 'CNY', '130', null, '130', '3', '2', null, '0', '4', '1', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, '0.00', '1506754180412', '209', 'DF', 'USD', 'AUD', null, '网易', '210', '100.00', '15.03', '0.00', '0.15030', '0.19156', '鬼屋', '僵尸');
INSERT INTO `ams_accountitem_history` VALUES ('453', '2017093014274711316', '167', '169', null, '3', '1', null, 'AUD', '130', null, '130', '3', '1', null, '0', '4', '1', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, '0.00', '1506754180413', '208', 'DF', 'USD', 'AUD', null, '网易', '210', '100.00', '78.46', '0.00', '0.78462', '1.00000', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('454', '2017093014565463345', '157', '162', null, '27', '0', '121', 'AUD', '130', null, null, '122', '12212', null, '0', '1', '1', '4', '2017-09-30', '2017-09-30', null, null, null, null, '1506754614776', '213', 'GH', 'USD', 'USD', null, '乐其有限公司', null, '12.00', '9.42', null, '0.78462', '0.78462', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('455', '2017093014565463345', '157', '162', null, '27', '0', '121', 'AUD', '130', null, '130', '122', '12212', null, '0', '3', '1', '4', '2017-09-30', '2017-09-30', null, '2017-09-30', null, null, '1506754622538', '213', 'GH', 'USD', 'USD', null, '乐其有限公司', null, '12.00', '9.42', null, '0.78462', '0.78462', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('456', '2017093015010713995', '167', '169', null, '26', '1', '2', 'AUD', '130', null, null, '1', '233', null, '0', '1', '1', '4', '2017-09-12', '2017-09-30', null, null, null, null, '1506754867311', '214', 'B2C', 'USD', 'EUR', null, '结算餐费1、2', null, '0.01', '0.01', null, '0.78462', '0.66387', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('457', '2017093015013595272', '157', '162', null, '25', '1', '23', 'CNY', '130', null, null, '3', '23333', null, '0', '1', '1', '4', '2017-09-13', '2017-09-30', null, null, null, null, '1506754895320', '215', 'B2C', 'USD', 'USD', null, '1', null, '23.00', '3.46', null, '0.15030', '0.15030', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('458', '2017093015013595272', '157', '162', null, '25', '1', '23', 'CNY', '130', null, '130', '3', '23333', null, '0', '3', '1', '4', '2017-09-13', '2017-09-30', null, '2017-09-30', null, null, '1506754902301', '215', 'B2C', 'USD', 'USD', null, '1', null, '23.00', '3.46', null, '0.15030', '0.15030', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('459', '2017093015010713995', '167', '169', null, '26', '1', '2', 'AUD', '130', null, '130', '1', '233', null, '0', '3', '1', '4', '2017-09-12', '2017-09-30', null, '2017-09-30', null, null, '1506754902303', '214', 'B2C', 'USD', 'EUR', null, '结算餐费1、2', null, '0.01', '0.01', null, '0.78462', '0.66387', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('460', '2017093015013595272', '157', '162', null, '25', '1', '23', 'CNY', '130', null, '130', '3', '23333', null, '0', '4', '1', '4', '2017-09-13', '2017-09-30', null, '2017-09-30', null, '0.00', '1506754916316', '215', 'B2C', 'USD', 'USD', null, '1', '211', '23.00', '3.46', '0.00', '0.15030', '0.15030', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('461', '2017093015010713995', '167', '169', null, '26', '1', '2', 'AUD', '130', null, '130', '1', '233', null, '0', '4', '1', '4', '2017-09-12', '2017-09-30', null, '2017-09-30', null, '0.00', '1506754926249', '214', 'B2C', 'USD', 'EUR', null, '结算餐费1、2', '212', '0.01', '0.01', '0.00', '0.78462', '0.66387', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('462', '2017092515474357159', '139', '141', null, '15', '1', null, 'AUD', '52', null, '52', '3534544', null, null, '0', '4', '1', '116', '2017-09-19', '2017-10-17', null, '2017-10-17', null, '0.00', '1508207072317', '155', 'B2B', 'USD', 'USD', 'AAAA', '网易', '192', '325443.00', '259172.72', '0.00', '0.79637', '0.79637', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('463', '2017101713241860457', '139', '141', null, '14', '1', null, 'CNY', '52', null, null, '12345634', null, null, '0', '1', '1', '116', '2017-10-18', '2017-10-17', null, null, null, null, '1508217858489', '216', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '12.00', '1.82', null, '0.15149', '0.15149', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('464', '2017101714394079835', '255', '258', null, '53', '0', '233', 'CNY', '213', null, null, '5454', '3333', null, '0', '1', '1', '239', '2017-10-20', '2017-10-17', null, null, null, null, '1508222380312', '217', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '23.00', '3.48', null, '0.15114', '0.15114', '通讯费用', '短信');
INSERT INTO `ams_accountitem_history` VALUES ('465', '2017101714403830366', '255', '257', null, '55', '1', '234', 'CNY', '213', null, null, '2535', '24', null, '0', '1', '0', '239', '2017-10-13', '2017-10-17', null, null, null, null, '1508222438123', '218', 'B2B', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '24.00', '3.63', null, '0.15114', '1.00000', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('466', '2017101714405380760', '255', '257', null, '55', '1', '234', 'CNY', '213', null, null, '2535', '24', null, '0', '1', '0', '239', '2017-10-13', '2017-10-17', null, null, null, null, '1508222453072', '219', 'B2B', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '24.00', '3.63', null, '0.15114', '1.00000', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('467', '2017101714421076943', '255', '258', null, '53', '1', '234', 'CNY', '213', null, null, '3244', '234', null, '0', '1', '0', '239', '2017-10-13', '2017-10-17', null, null, null, null, '1508222531001', '220', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '234.00', '35.37', null, '0.15114', '0.15114', '通讯费用', '短信');
INSERT INTO `ams_accountitem_history` VALUES ('468', '2017101714424269944', '148', '149', null, '26', '1', 'asdq12876', 'GBP', '4', null, null, '1376879123', 'wqeuhujgsjhg', null, '0', '1', '1', '4', '2017-10-18', '2017-10-17', null, null, null, null, '1508222562579', '221', 'CD', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '1212.00', '1604.87', null, '1.32415', '1.12566', '太阳神车', '站立费');
INSERT INTO `ams_accountitem_history` VALUES ('469', '2017101714433319539', '255', '257', null, '53', '1', '34', 'CNY', '213', null, null, '424', '3', null, '0', '1', '0', '239', '2017-10-11', '2017-10-17', null, null, null, null, '1508222613826', '222', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '34.00', '5.14', null, '0.15114', '0.15114', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('470', '2017101715205697645', '157', '160', null, '27', '1', '3286', 'EUR', '4', null, null, 'XY00055', 'fugsdiuguydg', null, '0', '1', '1', '4', '2017-10-18', '2017-10-17', null, null, null, null, '1508224857004', '223', 'GH', 'USD', 'USD', 'XXXX', '乐其有限公司', null, '100.00', '117.65', null, '1.17647', '1.17647', '鬼屋', '索梦鬼');
INSERT INTO `ams_accountitem_history` VALUES ('471', '2017101715220499851', '139', '141', null, '14', '1', null, 'CNY', '52', null, null, 'wrwe', null, null, '0', '1', '0', '116', '2017-10-11', '2017-10-17', null, null, null, null, '1508224924083', '224', 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', null, '23.00', '3.48', null, '0.15124', '0.15124', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('472', '2017101715220513123', '255', '257', null, '53', '1', '345', 'CNY', '213', null, null, '535', '345', null, '0', '1', '0', '239', '2017-10-20', '2017-10-17', null, null, null, null, '1508224925353', '225', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '345.00', '52.18', null, '0.15124', '0.15124', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('473', '2017101715205697645', '157', '160', null, '27', '1', '3286', 'EUR', '4', null, '4', 'XY00055', 'fugsdiuguydg', null, '0', '3', '1', '4', '2017-10-18', '2017-10-17', null, '2017-10-17', null, null, '1508224958263', '223', 'GH', 'USD', 'USD', 'XXXX', '乐其有限公司', null, '100.00', '117.65', null, '1.17647', '1.17647', '鬼屋', '索梦鬼');
INSERT INTO `ams_accountitem_history` VALUES ('474', '2017101715230929345', '139', '141', null, '14', '1', null, 'AUD', '52', null, null, '234324', null, null, '0', '1', '0', '116', '2017-10-19', '2017-10-17', null, null, null, null, '1508224989863', '226', 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', null, '23.00', '18.04', null, '0.78444', '0.78444', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('475', '2017101715231860262', '139', '141', null, '14', '1', '23', 'AUD', '52', null, null, '234324', '23', null, '0', '1', '0', '116', '2017-10-19', '2017-10-17', null, null, null, null, '1508224998438', '227', 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', null, '23.00', '18.04', null, '0.78444', '0.78444', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('476', '2017101715205697645', '157', '160', null, '27', '1', '3286', 'EUR', '4', null, '4', 'XY00055', 'fugsdiuguydg', null, '0', '4', '1', '4', '2017-10-18', '2017-10-17', null, '2017-10-17', null, '0.00', '1508225025549', '223', 'GH', 'USD', 'USD', 'XXXX', '乐其有限公司', '213', '100.00', '117.65', '0.00', '1.17647', '1.17647', '鬼屋', '索梦鬼');
INSERT INTO `ams_accountitem_history` VALUES ('477', '2017101715241424784', '139', '141', null, '14', '1', null, 'CNY', '52', null, null, '2423', null, null, '0', '1', '0', '116', '2017-10-11', '2017-10-17', null, null, null, null, '1508225054530', '228', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '23.00', '3.47', null, '0.15124', '0.15124', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('478', '2017101715264383101', '139', '141', null, '15', '1', '', 'CNY', '52', null, null, '2432', null, null, '0', '1', '1', '116', '2017-10-18', '2017-10-17', null, null, null, null, '1508225203362', '229', 'B2B', 'USD', 'USD', 'AAAA', '网易', null, '23.00', '3.48', null, '0.15127', '0.15127', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('479', '2017101715265465219', '139', '141', null, '15', '1', '2342', 'CNY', '52', null, null, '2432', null, null, '0', '1', '1', '116', '2017-10-18', '2017-10-17', null, null, null, null, '1508225214375', '230', 'B2B', 'USD', 'USD', 'AAAA', '网易', null, '23.00', '3.48', null, '0.15127', '0.15127', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('480', '2017101715270114563', '139', '141', null, '15', '1', '2342', 'CNY', '52', null, null, '2432', '234', null, '0', '1', '1', '116', '2017-10-18', '2017-10-17', null, null, null, null, '1508225221659', '231', 'B2B', 'USD', 'USD', 'AAAA', '网易', null, '23.00', '3.48', null, '0.15127', '0.15127', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('481', '2017101715273891036', '139', '141', null, '14', '1', '324', 'CNY', '52', null, null, '234', '243', null, '0', '1', '0', '116', '2017-10-18', '2017-10-17', null, null, null, null, '1508225258549', '232', 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', null, '243.00', '36.76', null, '0.15127', '0.15127', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('482', '2017101715274339705', '139', '141', null, '14', '1', '324', 'CNY', '52', null, null, '234', '243', null, '0', '1', '0', '116', '2017-10-18', '2017-10-17', null, null, null, null, '1508225263848', '233', 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', null, '243.00', '36.76', null, '0.15127', '0.15127', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('483', '2017101715274339705', '139', '141', null, '14', '1', '324', 'CNY', '52', null, '52', '234', '243', null, '0', '3', '0', '116', '2017-10-18', '2017-10-17', null, '2017-10-17', null, null, '1508225305962', '233', 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', null, '243.00', '36.76', null, '0.15127', '0.15127', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('484', '2017101715273891036', '139', '141', null, '14', '1', '324', 'CNY', '52', null, '52', '234', '243', null, '0', '3', '0', '116', '2017-10-18', '2017-10-17', null, '2017-10-17', null, null, '1508225305963', '232', 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', null, '243.00', '36.76', null, '0.15127', '0.15127', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('485', '2017101715274339705', '139', '141', null, '14', '1', '324', 'CNY', '52', null, '52', '234', '243', null, '0', '4', '0', '116', '2017-10-18', '2017-10-17', null, '2017-10-17', null, '0.00', '1508225431496', '233', 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', '214', '243.00', '36.76', '0.00', '0.15127', '0.15127', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('486', '2017101715273891036', '139', '141', null, '14', '1', '324', 'CNY', '52', null, '52', '234', '243', null, '0', '4', '0', '116', '2017-10-18', '2017-10-17', null, '2017-10-17', null, '0.00', '1508225431501', '232', 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', '214', '243.00', '36.76', '0.00', '0.15127', '0.15127', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('487', '2017101715305012029', '255', '257', null, '53', '1', '34', 'CNY', '213', null, null, '254353', '3434', null, '0', '1', '0', '239', '2017-10-19', '2017-10-17', null, null, null, null, '1508225450947', '234', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '34.00', '5.14', null, '0.15127', '0.15127', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('488', '2017101715274339705', '139', '141', null, '14', '1', '324', 'CNY', '52', null, '52', '234', '243', null, '0', '4', '0', '116', '2017-10-18', '2017-10-17', null, '2017-10-17', null, '0.00', '1508225452425', '233', 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', '215', '243.00', '36.76', '0.00', '0.15127', '0.15127', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('489', '2017101715273891036', '139', '141', null, '14', '1', '324', 'CNY', '52', null, '52', '234', '243', null, '0', '4', '0', '116', '2017-10-18', '2017-10-17', null, '2017-10-17', null, '0.00', '1508225452427', '232', 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', '215', '243.00', '36.76', '0.00', '0.15127', '0.15127', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('490', '2017101715312185034', '176', '178', null, '22', '1', '概要', 'AUD', '9', null, null, '23342', '备注', null, '0', '1', '1', '134', '2017-10-17', '2017-10-17', null, null, null, null, '1508225481084', '235', 'B2B', 'USD', 'USD', 'XXXX', '刀剑', null, '2.00', '112.00', null, '0.78524', '0.78524', '装卸费', '出仓装车费');
INSERT INTO `ams_accountitem_history` VALUES ('491', '2017101715305012029', '255', '257', null, '53', '1', '34', 'CNY', '213', null, '213', '254353', '3434', null, '0', '3', '0', '239', '2017-10-19', '2017-10-17', null, '2017-10-17', null, null, '1508225607289', '234', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '34.00', '5.14', null, '0.15127', '0.15127', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('492', '2017101715220513123', '255', '257', null, '53', '1', '345', 'CNY', '213', null, '213', '535', '345', null, '0', '3', '0', '239', '2017-10-20', '2017-10-17', null, '2017-10-17', null, null, '1508225607290', '225', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '345.00', '52.18', null, '0.15124', '0.15124', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('493', '2017101714433319539', '255', '257', null, '53', '1', '34', 'CNY', '213', null, '213', '424', '3', null, '0', '3', '0', '239', '2017-10-11', '2017-10-17', null, '2017-10-17', null, null, '1508225607291', '222', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '34.00', '5.14', null, '0.15114', '0.15114', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('494', '2017101714421076943', '255', '258', null, '53', '1', '234', 'CNY', '213', null, '213', '3244', '234', null, '0', '3', '0', '239', '2017-10-13', '2017-10-17', null, '2017-10-17', null, null, '1508225607292', '220', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '234.00', '35.37', null, '0.15114', '0.15114', '通讯费用', '短信');
INSERT INTO `ams_accountitem_history` VALUES ('495', '2017101714405380760', '255', '257', null, '55', '1', '234', 'CNY', '213', null, '213', '2535', '24', null, '0', '3', '0', '239', '2017-10-13', '2017-10-17', null, '2017-10-17', null, null, '1508225607294', '219', 'B2B', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '24.00', '3.63', null, '0.15114', '1.00000', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('496', '2017101715270114563', '139', '141', null, '15', '1', '2342', 'CNY', '52', null, '52', '2432', '234', null, '0', '3', '1', '116', '2017-10-18', '2017-10-17', null, '2017-10-17', null, null, '1508225736967', '231', 'B2B', 'USD', 'USD', 'AAAA', '网易', null, '23.00', '3.48', null, '0.15127', '0.15127', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('497', '2017101715265465219', '139', '141', null, '15', '1', '2342', 'CNY', '52', null, '52', '2432', null, null, '0', '3', '1', '116', '2017-10-18', '2017-10-17', null, '2017-10-17', null, null, '1508225736973', '230', 'B2B', 'USD', 'USD', 'AAAA', '网易', null, '23.00', '3.48', null, '0.15127', '0.15127', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('498', '2017101714433319539', '255', '257', null, '53', '1', '34', 'CNY', '213', null, '213', '424', '3', null, '0', '4', '0', '239', '2017-10-11', '2017-10-17', null, '2017-10-17', null, '0.00', '1508225743881', '222', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '216', '34.00', '5.14', '0.00', '0.15114', '0.15114', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('499', '2017101714421076943', '255', '258', null, '53', '1', '234', 'CNY', '213', null, '213', '3244', '234', null, '0', '4', '0', '239', '2017-10-13', '2017-10-17', null, '2017-10-17', null, '0.00', '1508225743882', '220', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '216', '234.00', '35.37', '0.00', '0.15114', '0.15114', '通讯费用', '短信');
INSERT INTO `ams_accountitem_history` VALUES ('500', '2017101715270114563', '139', '141', null, '15', '1', '2342', 'CNY', '52', null, '52', '2432', '234', null, '0', '4', '1', '116', '2017-10-18', '2017-10-17', null, '2017-10-17', null, '0.00', '1508225748104', '231', 'B2B', 'USD', 'USD', 'AAAA', '网易', '217', '23.00', '3.48', '0.00', '0.15127', '0.15127', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('501', '2017101715265465219', '139', '141', null, '15', '1', '2342', 'CNY', '52', null, '52', '2432', null, null, '0', '4', '1', '116', '2017-10-18', '2017-10-17', null, '2017-10-17', null, '0.00', '1508225748105', '230', 'B2B', 'USD', 'USD', 'AAAA', '网易', '217', '23.00', '3.48', '0.00', '0.15127', '0.15127', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('502', '2017101715332853635', '176', '178', null, '22', '1', '概要', 'AUD', '9', null, null, '23342', '备注', null, '0', '1', '1', '134', '2017-10-17', '2017-10-17', null, null, null, null, '1508225687150', '236', 'B2B', 'USD', 'USD', 'XXXX', '刀剑', null, '2.00', '112.00', null, '0.78524', '0.78524', '装卸费', '出仓装车费');
INSERT INTO `ams_accountitem_history` VALUES ('503', '2017101715305012029', '255', '257', null, '53', '1', '34', 'CNY', '213', null, '213', '254353', '3434', null, '0', '4', '0', '239', '2017-10-19', '2017-10-17', null, '2017-10-17', null, '0.00', '1508225893827', '234', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '218', '34.00', '5.14', '0.00', '0.15127', '0.15127', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('504', '2017101715220513123', '255', '257', null, '53', '1', '345', 'CNY', '213', null, '213', '535', '345', null, '0', '4', '0', '239', '2017-10-20', '2017-10-17', null, '2017-10-17', null, '0.00', '1508225893829', '225', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '218', '345.00', '52.18', '0.00', '0.15124', '0.15124', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('505', '2017101716070841202', '179', '181', null, '22', '1', '12', 'CNY', '9', null, null, '45634', '12', null, '0', '1', '1', '134', '2017-10-17', '2017-10-17', null, null, null, null, '1508227628365', '237', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '12.00', '1.82', null, '0.15131', '0.15131', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('506', '2017092115292968999', '154', '156', null, '测试供应商001', '1', '21', 'USD', '4', '130', null, '212', '12', null, '0', '5', '1', '4', '2017-09-21', '2017-10-17', '2017-09-30', null, null, null, '1508228031266', '143', 'B2E', 'USD', 'USD', 'XXXX', '测试供应商001', null, '222.00', '222.00', null, '1.00000', '1.00000', '旋转木马', '鼓励费');
INSERT INTO `ams_accountitem_history` VALUES ('507', '2017101716543483576', '259', '261', null, '60', '1', '交易概要', 'USD', '217', null, null, '1', '备注信息', null, '0', '1', '1', '249', '2017-10-17', '2017-10-17', null, null, null, null, '1508230474046', '238', 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '100.00', '100.00', null, '1.00000', '1.00000', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('508', '2017101717280626492', '259', '261', null, '60', '0', '一月一付，一次付清', 'USD', '217', null, null, '0001', null, null, '0', '1', '1', '249', '2017-10-17', '2017-10-17', null, null, null, null, '1508232486657', '239', 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '100.00', '100.00', null, '1.00000', '1.00000', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('509', '2017101717280626492', '259', '261', null, '大大', '0', '一月一付，一次付清', 'USD', '217', '217', null, '0001', '一月一付，一次付清', null, '0', '2', '1', '249', '2017-10-17', '2017-10-17', '2017-10-17', null, null, null, '1508232608046', '239', 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '100.00', '100.00', null, '1.00000', '1.00000', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('510', '2017101716070841202', '179', '181', null, '22', '1', '12', 'CNY', '9', null, '9', '45634', '12', null, '0', '3', '1', '134', '2017-10-17', '2017-10-17', null, '2017-10-17', null, null, '1508232608547', '237', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '12.00', '1.82', null, '0.15131', '0.15131', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('511', '2017101717280626492', '259', '261', null, '大大', '0', '一月一付，一次付清', 'USD', '217', '217', null, '0001', '一月一付，一次付清', null, '0', '2', '1', '249', '2017-10-17', '2017-10-17', '2017-10-17', null, null, null, '1508232627849', '239', 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '100.00', '100.00', null, '1.00000', '1.00000', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('512', '2017101717280626492', '259', '261', null, '大大', '1', '一月一付，一次付清', 'USD', '217', '217', null, '00011', '一月一付，一次付清', null, '0', '2', '1', '249', '2017-10-17', '2017-10-17', '2017-10-17', null, null, null, '1508232694616', '239', 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '1000.00', '1000.00', null, '1.00000', '1.00000', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('513', '2017101717330993185', '259', '261', null, '60', '1', '1212', 'AUD', '217', null, null, '2', '1212', null, '0', '1', '1', '249', '2017-10-17', '2017-10-17', null, null, null, null, '1508232789188', '240', 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '120.00', '94.29', null, '0.78573', '0.78573', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('514', '2017101717330993185', '259', '261', null, '大大', '1', '1212', 'AUD', '217', '217', null, '02', '1212', null, '0', '2', '1', '249', '2017-10-17', '2017-10-17', '2017-10-17', null, null, null, '1508232812889', '240', 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '120.00', '94.29', null, '0.78573', '0.78573', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('515', '2017101717415412418', '259', '261', null, '60', '1', '1212', 'AUD', '217', null, null, '12', '1212', null, '0', '1', '1', '249', '2017-10-17', '2017-10-17', null, null, null, null, '1508233314027', '241', 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '1212.00', '951.93', null, '0.78542', '0.78542', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('516', '2017101717415412418', '259', '261', null, '大大', '1', '1212', 'AUD', '217', '217', null, '121212', '1212', null, '0', '2', '1', '249', '2017-10-17', '2017-10-17', '2017-10-17', null, null, null, '1508233337535', '241', 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '1212.00', '951.93', null, '0.78542', '0.78542', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('517', '2017101717442978908', '259', '260', null, '56', '1', '交易概要  交易概要', 'GBP', '217', null, null, '30', '交易概要  交易概要', null, '0', '1', '0', '249', '2017-10-17', '2017-10-17', null, null, null, null, '1508233469393', '242', 'B2B', 'USD', 'USD', 'PLOK', '供应商', null, '120.00', '159.09', null, '1.32579', '1.32579', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('518', '2017101717472053536', '259', '260', null, '56', '1', '交易概要  交易概要', 'CNY', '217', null, null, '31', '交易概要  交易概要会计', null, '0', '1', '0', '249', '2017-10-17', '2017-10-17', null, null, null, null, '1508233640641', '243', 'B2B', 'USD', 'USD', 'PLOK', '供应商', null, '123.00', '18.59', null, '0.15114', '0.15114', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('519', '2017101717472053536', '259', '260', null, '供应商', '1', '交易概要  交易概要', 'CNY', '217', '217', null, '31', '交易概要  交易概要会计1', null, '0', '2', '0', '249', '2017-10-17', '2017-10-17', '2017-10-17', null, null, null, '1508233667446', '243', 'B2B', 'USD', 'USD', 'PLOK', '供应商', null, '123.00', '18.59', null, '0.15114', '0.15114', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('520', '2017101717533634657', '170', '171', null, '22', '1', '12134', 'JPY', '9', null, null, '87654', '1412', null, '0', '1', '1', '134', '2017-10-17', '2017-10-17', null, null, null, null, '1508234016057', '244', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '222.00', '1.98', null, '0.00892', '0.00892', '入倉費用', '入閘費');
INSERT INTO `ams_accountitem_history` VALUES ('521', '2017101717533634657', '170', '171', null, '刀剑', '1', '12134', 'JPY', '9', '9', null, '87654', '141211', null, '0', '2', '1', '134', '2017-10-17', '2017-10-17', '2017-10-17', null, null, null, '1508234065487', '244', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '222.00', '1.98', null, '0.00892', '0.00892', '入倉費用', '入閘費');
INSERT INTO `ams_accountitem_history` VALUES ('522', '2017101717562231809', '255', '257', null, '53', '1', '234', 'CNY', '213', null, null, '4424', '234234', null, '0', '1', '1', '239', '2017-10-12', '2017-10-17', null, null, null, null, '1508234182651', '245', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '234.00', '35.36', null, '0.15111', '0.15111', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('523', '2017101717584966067', '255', '257', null, '53', '1', '12', 'CNY', '213', null, null, '002', '122', null, '0', '1', '1', '239', '2017-10-19', '2017-10-17', null, null, null, null, '1508234329902', '246', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '12.00', '1.81', null, '0.15111', '0.15111', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('524', '2017101717591474835', '182', '198', null, '22', '1', '123412', 'EUR', '9', null, null, '987654', '312', null, '0', '1', '1', '134', '2017-10-17', '2017-10-17', null, null, null, null, '1508234354709', '247', 'B2B', 'USD', 'USD', 'XXXX', '刀剑', null, '23412.00', '27540.28', null, '1.17633', '1.17633', '增值服务', 'Toll FEE');
INSERT INTO `ams_accountitem_history` VALUES ('525', '2017101717591474835', '182', '198', null, '刀剑', '1', '123412', 'EUR', '9', '9', null, '987654', '31212', null, '0', '2', '1', '134', '2017-10-17', '2017-10-17', '2017-10-17', null, null, null, '1508234368220', '247', 'B2B', 'USD', 'USD', 'XXXX', '刀剑', null, '23412.00', '27540.28', null, '1.17633', '1.17633', '增值服务', 'Toll FEE');
INSERT INTO `ams_accountitem_history` VALUES ('526', '2017101717591474835', '182', '198', null, '刀剑', '1', '123412', 'EUR', '9', '9', null, '987654', '3121212qwe', null, '0', '2', '1', '134', '2017-10-17', '2017-10-17', '2017-10-17', null, null, null, '1508234384229', '247', 'B2B', 'USD', 'USD', 'XXXX', '刀剑', null, '23412.00', '27540.28', null, '1.17633', '1.17633', '增值服务', 'Toll FEE');
INSERT INTO `ams_accountitem_history` VALUES ('527', '2017101717591474835', '182', '198', null, '刀剑', '1', '123412', 'EUR', '9', '9', null, '987654', '3121212qwe', null, '0', '2', '1', '134', '2017-10-17', '2017-10-17', '2017-10-17', null, null, null, '1508234413045', '247', 'B2B', 'USD', 'USD', 'XXXX', '刀剑', null, '23412.00', '27540.28', null, '1.17633', '1.17633', '增值服务', 'Toll FEE');
INSERT INTO `ams_accountitem_history` VALUES ('528', '2017101718024184122', '259', '260', null, '56', '1', '交易概要', 'AUD', '217', null, null, '33', '交易概要、交易概要', null, '0', '1', '0', '249', '2017-10-17', '2017-10-17', null, null, null, null, '1508234561328', '248', 'B2B', 'USD', 'USD', 'PLOK', '供应商', null, '123.00', '96.62', null, '0.78555', '0.78555', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('529', '2017101717584966067', '255', '257', null, '韩衣控-中国', '1', '12', 'CNY', '213', '213', null, '002', '122234', null, '0', '2', '1', '239', '2017-10-19', '2017-10-17', '2017-10-17', null, null, null, '1508234627061', '246', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '12.00', '1.81', null, '0.15111', '0.15111', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('530', '2017101718024184122', '259', '260', null, '供应商', '1', '交易概要1', 'AUD', '217', '217', null, '331', '交易概要、交易概要1', null, '0', '2', '0', '249', '2017-10-17', '2017-10-17', '2017-10-17', null, null, null, '1508234675848', '248', 'B2B', 'USD', 'USD', 'PLOK', '供应商', null, '1123.00', '882.17', null, '0.78555', '0.78555', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('531', '2017101718024184122', '259', '260', null, '供应商', '1', '交易概要1', 'AUD', '217', '217', null, '331', '交易概要、交易概要1', null, '0', '2', '0', '249', '2017-10-17', '2017-10-17', '2017-10-17', null, null, null, '1508234684382', '248', 'B2B', 'USD', 'USD', 'PLOK', '供应商', null, '1123.00', '882.17', null, '0.78555', '0.78555', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('532', '2017101718024184122', '259', '260', null, '供应商', '1', '交易概要1', 'AUD', '217', '217', null, '331', '交易概要、交易概要1', null, '0', '2', '0', '249', '2017-10-17', '2017-10-17', '2017-10-17', null, null, null, '1508234685331', '248', 'B2B', 'USD', 'USD', 'PLOK', '供应商', null, '1123.00', '882.17', null, '0.78555', '0.78555', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('533', '2017101718024184122', '259', '260', null, '供应商', '1', '交易概要1', 'AUD', '217', '217', '217', '331', '交易概要、交易概要1', null, '0', '3', '0', '249', '2017-10-17', '2017-10-17', '2017-10-17', '2017-10-17', null, null, '1508235034847', '248', 'B2B', 'USD', 'USD', 'PLOK', '供应商', null, '1123.00', '882.17', null, '0.78555', '0.78555', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('534', '2017101718024184122', '259', '260', null, '供应商', '1', '交易概要1', 'AUD', '217', '217', '217', '331', '交易概要、交易概要1', null, '0', '3', '0', '249', '2017-10-17', '2017-10-17', '2017-10-17', '2017-10-17', null, null, '1508235052977', '248', 'B2B', 'USD', 'USD', 'PLOK', '供应商', null, '1123.00', '882.17', null, '0.78555', '0.78555', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('535', '2017101717472053536', '259', '260', null, '供应商', '1', '交易概要  交易概要', 'CNY', '217', '217', '217', '31', '交易概要  交易概要会计1', null, '0', '3', '0', '249', '2017-10-17', '2017-10-17', '2017-10-17', '2017-10-17', null, null, '1508235052979', '243', 'B2B', 'USD', 'USD', 'PLOK', '供应商', null, '123.00', '18.59', null, '0.15114', '0.15114', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('536', '2017101717442978908', '259', '260', null, '56', '1', '交易概要  交易概要', 'GBP', '217', null, '217', '30', '交易概要  交易概要', null, '0', '3', '0', '249', '2017-10-17', '2017-10-17', null, '2017-10-17', null, null, '1508235052980', '242', 'B2B', 'USD', 'USD', 'PLOK', '供应商', null, '120.00', '159.09', null, '1.32579', '1.32579', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('537', '2017101718024184122', '259', '260', null, '供应商', '1', '交易概要1', 'AUD', '217', '217', '217', '331', '交易概要、交易概要1', null, '0', '3', '0', '249', '2017-10-17', '2017-10-17', '2017-10-17', '2017-10-17', null, null, '1508235064372', '248', 'B2B', 'USD', 'USD', 'PLOK', '供应商', null, '1123.00', '882.17', null, '0.78555', '0.78555', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('538', '2017101717415412418', '259', '261', null, '大大', '1', '1212', 'AUD', '217', '217', '217', '121212', '1212', null, '0', '3', '1', '249', '2017-10-17', '2017-10-17', '2017-10-17', '2017-10-17', null, null, '1508235088194', '241', 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '1212.00', '951.93', null, '0.78542', '0.78542', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('539', '2017101717415412418', '259', '261', null, '大大', '1', '1212', 'AUD', '217', '217', '217', '121212', '1212', null, '0', '3', '1', '249', '2017-10-17', '2017-10-17', '2017-10-17', '2017-10-17', null, null, '1508235101462', '241', 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '1212.00', '951.93', null, '0.78542', '0.78542', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('540', '2017101717330993185', '259', '261', null, '大大', '1', '1212', 'AUD', '217', '217', '217', '02', '1212', null, '0', '3', '1', '249', '2017-10-17', '2017-10-17', '2017-10-17', '2017-10-17', null, null, '1508235101464', '240', 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '120.00', '94.29', null, '0.78573', '0.78573', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('541', '2017101717280626492', '259', '261', null, '大大', '1', '一月一付，一次付清', 'USD', '217', '217', '217', '00011', '一月一付，一次付清', null, '0', '3', '1', '249', '2017-10-17', '2017-10-17', '2017-10-17', '2017-10-17', null, null, '1508235101466', '239', 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '1000.00', '1000.00', null, '1.00000', '1.00000', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('542', '2017101718122850551', '255', '257', null, '53', '1', '234', 'CNY', '213', null, null, '3442', '234', null, '0', '1', '0', '239', '2017-10-27', '2017-10-17', null, null, null, null, '1508235148024', '249', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '234.00', '35.36', null, '0.15111', '0.15111', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('543', '2017101718154596389', '259', '261', null, '60', '0', '121212', 'CNY', '217', null, null, '13', '121212', null, '0', '1', '1', '249', '2017-10-17', '2017-10-17', null, null, null, null, '1508235345126', '250', 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '1212.00', '183.15', null, '0.15111', '0.15111', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('544', '2017101718154596389', '259', '261', null, '60', '0', '121212', 'CNY', '217', null, '217', '13', '121212', null, '0', '3', '1', '249', '2017-10-17', '2017-10-17', null, '2017-10-17', null, null, '1508235359761', '250', 'B2B', 'USD', 'USD', 'PLOK', '大大', null, '1212.00', '183.15', null, '0.15111', '0.15111', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('545', '2017101718213935597', '176', '177', null, '58', '1', 'WWWW', 'CNY', '9', null, null, '243564', 'WWW', null, '0', '1', '1', '134', '2017-10-17', '2017-10-17', null, null, null, null, '1508235699978', '251', 'B2C', 'USD', 'USD', 'XXXX', '12', null, '233.00', '35.21', null, '0.15111', '0.15111', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('546', '2017101717584966067', '255', '257', null, '韩衣控-中国', '1', '12', 'CNY', '213', '213', '213', '002', '122234', null, '0', '3', '1', '239', '2017-10-19', '2017-10-17', '2017-10-17', '2017-10-17', null, null, '1508235745099', '246', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '12.00', '1.81', null, '0.15111', '0.15111', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('547', '2017101717562231809', '255', '257', null, '53', '1', '234', 'CNY', '213', null, '213', '4424', '234234', null, '0', '3', '1', '239', '2017-10-12', '2017-10-17', null, '2017-10-17', null, null, '1508235754361', '245', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '234.00', '35.36', null, '0.15111', '0.15111', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('548', '2017101718213935597', '176', '177', null, '58', '1', 'WWWW', 'CNY', '9', null, '9', '243564', 'WWW', null, '0', '3', '1', '134', '2017-10-17', '2017-10-17', null, '2017-10-17', null, null, '1508235778701', '251', 'B2C', 'USD', 'USD', 'XXXX', '12', null, '233.00', '35.21', null, '0.15111', '0.15111', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('549', '2017101718240250483', '179', '180', null, '59', '1', '1234123', 'AUD', '9', null, null, '75642', '12412Q4', null, '0', '1', '1', '134', '2017-10-17', '2017-10-17', null, null, null, null, '1508235842402', '252', 'B2C', 'USD', 'USD', 'XXXX', '12312', null, '12.00', '9.42', null, '0.78475', '0.78475', '仓租费用', '常温区');
INSERT INTO `ams_accountitem_history` VALUES ('550', '2017101718240250483', '179', '180', null, '59', '1', '1234123', 'AUD', '9', null, '9', '75642', '12412Q4', null, '0', '3', '1', '134', '2017-10-17', '2017-10-17', null, '2017-10-17', null, null, '1508235861486', '252', 'B2C', 'USD', 'USD', 'XXXX', '12312', null, '12.00', '9.42', null, '0.78475', '0.78475', '仓租费用', '常温区');
INSERT INTO `ams_accountitem_history` VALUES ('551', '2017101718260660268', '182', '199', null, '58', '1', '1212', 'AUD', '9', null, null, '123', '121212', null, '0', '1', '0', '134', '2017-10-17', '2017-10-17', null, null, null, null, '1508235966198', '253', 'B2B', 'USD', 'USD', 'XXXX', '12', null, '1212.00', '951.11', null, '0.78475', '0.78475', '增值服务', '包材费用');
INSERT INTO `ams_accountitem_history` VALUES ('552', '2017101718260660268', '182', '199', null, '58', '1', '1212', 'AUD', '9', null, '9', '123', '121212', null, '0', '3', '0', '134', '2017-10-17', '2017-10-17', null, '2017-10-17', null, null, '1508235977820', '253', 'B2B', 'USD', 'USD', 'XXXX', '12', null, '1212.00', '951.11', null, '0.78475', '0.78475', '增值服务', '包材费用');
INSERT INTO `ams_accountitem_history` VALUES ('553', '2017101718274263292', '259', '261', null, '54', '1', '121', 'AUD', '217', null, null, '12212', '21323324', null, '0', '1', '0', '249', '2017-10-17', '2017-10-17', null, null, null, null, '1508236062091', '254', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', null, '12121.00', '9511.89', null, '0.78475', '0.78475', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('554', '2017101718274263292', '259', '261', null, '54', '1', '121', 'AUD', '217', null, '217', '12212', '21323324', null, '0', '3', '0', '249', '2017-10-17', '2017-10-17', null, '2017-10-17', null, null, '1508236074875', '254', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', null, '12121.00', '9511.89', null, '0.78475', '0.78475', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('555', '2017101718283826245', '259', '261', null, '54', '1', '121212', 'EUR', '217', null, null, '1212', '12121212', null, '0', '1', '0', '249', '2017-10-17', '2017-10-17', null, null, null, null, '1508236118057', '255', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', null, '1212.00', '1425.55', null, '1.17619', '1.17619', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('556', '2017101718283826245', '259', '261', null, '54', '1', '121212', 'EUR', '217', null, '217', '1212', '12121212', null, '0', '3', '0', '249', '2017-10-17', '2017-10-17', null, '2017-10-17', null, null, '1508236128129', '255', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', null, '1212.00', '1425.55', null, '1.17619', '1.17619', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('557', '2017101715332853635', '176', '178', null, '刀剑', '1', '概要', 'AUD', '9', '9', null, '23342', '备注1234', null, '0', '2', '1', '134', '2017-10-17', '2017-10-17', '2017-10-17', null, null, null, '1508236233152', '236', 'B2B', 'USD', 'USD', 'XXXX', '刀剑', null, '2.00', '112.00', null, '0.78524', '0.78524', '装卸费', '出仓装车费');
INSERT INTO `ams_accountitem_history` VALUES ('558', '2017101715332853635', '176', '178', null, '刀剑', '1', '概要', 'AUD', '9', '9', '9', '23342', '备注1234', null, '0', '3', '1', '134', '2017-10-17', '2017-10-17', '2017-10-17', '2017-10-17', null, null, '1508236258823', '236', 'B2B', 'USD', 'USD', 'XXXX', '刀剑', null, '2.00', '112.00', null, '0.78524', '0.78524', '装卸费', '出仓装车费');
INSERT INTO `ams_accountitem_history` VALUES ('559', '2017101718382062776', '139', '141', null, '14', '1', '24234', 'CNY', '52', null, null, '123123', 'sfdsfdf', null, '0', '1', '1', '116', '2017-10-18', '2017-10-17', null, null, null, null, '1508236700210', '256', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '23.00', '3.48', null, '0.15112', '0.15112', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('560', '2017101718464585270', '255', '258', null, '55', '0', '345', 'CNY', '213', null, null, '25', '35', null, '0', '1', '1', '239', '2017-10-20', '2017-10-17', null, null, null, null, '1508237205782', '257', 'B2C', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '345.00', '52.13', null, '0.15111', '1.00000', '通讯费用', '短信');
INSERT INTO `ams_accountitem_history` VALUES ('561', '2017101718505546517', '139', '141', null, '14', '1', '234', 'CNY', '52', null, null, '324', '234', null, '0', '1', '1', '116', '2017-10-18', '2017-10-17', null, null, null, null, '1508237455595', '258', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '12.00', '1.81', null, '0.15111', '0.15111', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('562', '2017101809342655028', '259', '261', null, '57', '1', '交易概要', 'CNY', '217', null, null, '123', null, null, '0', '1', '1', '249', '2017-10-18', '2017-10-18', null, null, null, null, '1508290466792', '259', 'B2B', 'USD', 'USD', 'PLOK', '搬东西', null, '123.00', '18.57', null, '0.15101', '0.15101', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('563', '2017101809342655028', '259', '261', null, '57', '1', '交易概要', 'CNY', '217', null, '217', '123', null, null, '0', '3', '1', '249', '2017-10-18', '2017-10-18', null, '2017-10-18', null, null, '1508290492392', '259', 'B2B', 'USD', 'USD', 'PLOK', '搬东西', null, '123.00', '18.57', null, '0.15101', '0.15101', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('564', '2017101809342655028', '259', '261', null, '57', '1', '交易概要', 'CNY', '217', null, '217', '123', null, null, '0', '4', '1', '249', '2017-10-18', '2017-10-18', null, '2017-10-18', null, '0.00', '1508290564529', '259', 'B2B', 'USD', 'USD', 'PLOK', '搬东西', '219', '123.00', '18.57', '0.00', '0.15101', '0.15101', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('565', '2017101809481658467', '255', '257', null, '53', '1', '345', 'CNY', '213', null, null, '45345', '345', null, '0', '1', '0', '239', '2017-10-13', '2017-10-18', null, null, null, null, '1508291296227', '260', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '345.00', '52.19', null, '0.15129', '0.15129', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('566', '2017101718283826245', '259', '261', null, '54', '1', '121212', 'EUR', '217', null, '217', '1212', '12121212', null, '0', '4', '0', '249', '2017-10-17', '2017-10-18', null, '2017-10-17', null, '0.00', '1508292406936', '255', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', '220', '1212.00', '1425.55', '0.00', '1.17619', '1.17619', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('567', '2017101718274263292', '259', '261', null, '54', '1', '121', 'AUD', '217', null, '217', '12212', '21323324', null, '0', '4', '0', '249', '2017-10-17', '2017-10-18', null, '2017-10-17', null, '0.00', '1508292406937', '254', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', '220', '12121.00', '9511.89', '0.00', '0.78475', '0.78475', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('568', '2017101810204175069', '259', '260', null, '56', '1', '345', 'CNY', '217', null, null, '76543', '123124', null, '0', '1', '0', '249', '2017-10-18', '2017-10-18', null, null, null, null, '1508293241667', '261', 'B2B', 'USD', 'USD', 'PLOK', '供应商', null, '87654.00', '13265.99', null, '0.15135', '0.15135', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('569', '2017101810204175069', '259', '260', null, '56', '1', '345', 'CNY', '217', null, '217', '76543', '123124', null, '0', '3', '0', '249', '2017-10-18', '2017-10-18', null, '2017-10-18', null, null, '1508293252995', '261', 'B2B', 'USD', 'USD', 'PLOK', '供应商', null, '87654.00', '13265.99', null, '0.15135', '0.15135', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('570', '2017101718505546517', '139', '141', null, '顺丰快速', '1', '234', 'CNY', '52', '52', null, '324', '234', null, '0', '2', '1', '116', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508294402862', '258', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '12.00', '1.81', null, '0.15111', '0.15111', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('571', '2017101718505546517', '139', '141', null, '顺丰快速', '1', '234', 'CNY', '52', '52', null, '324', '234', null, '0', '2', '1', '116', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508294427269', '258', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '12.00', '1.81', null, '0.15111', '0.15111', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('572', '2017101718505546517', '139', '141', null, '顺丰快速', '1', '234', 'CNY', '52', '52', null, '324', '234', null, '0', '2', '1', '116', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508294634506', '258', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '12.00', '1.81', null, '0.15111', '0.15111', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('573', '2017101718505546517', '139', '141', null, '顺丰快速', '1', '234', 'CNY', '52', '52', null, '324', '234', null, '0', '2', '1', '116', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508294735297', '258', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '12.00', '1.81', null, '0.15111', '0.15111', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('574', '2017101718505546517', '139', '141', null, '顺丰快速', '1', '234', 'CNY', '52', '52', null, '324', '234', null, '0', '2', '1', '116', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508294747877', '258', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '12.00', '1.81', null, '0.15111', '0.15111', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('575', '2017101810480674507', '255', '257', null, '53', '1', '234', 'CNY', '213', null, null, '124', '234', null, '0', '1', '1', '239', '2017-10-19', '2017-10-18', null, null, null, null, '1508294886803', '265', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '23.00', '3.48', null, '0.15131', '0.15131', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('576', '2017101810465629218', '259', '260', null, '45', '1', null, 'JPY', '217', null, '217', '123321', '345', null, '0', '3', '0', '249', '2017-10-20', '2017-10-18', null, '2017-10-18', null, null, '1508294916174', '264', 'B2B', 'USD', 'USD', 'PLOK', '张三', null, '345.00', '3.08', null, '0.00891', '0.00891', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('577', '2017101810465629218', null, null, null, '45', '1', null, 'EUR', '217', null, '217', '123321', '234', null, '0', '3', '0', '249', '2017-10-26', '2017-10-18', null, '2017-10-18', null, null, '1508294916176', '263', 'B2B', 'USD', 'USD', 'PLOK', '张三', null, '234.00', '275.55', null, '1.17758', '1.17758', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('578', '2017101718505546517', '139', '141', null, '顺丰快速', '1', '234', 'CNY', '52', '52', null, '324', '234', null, '0', '2', '1', '116', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508295235787', '258', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '12.00', '1.81', null, '0.15111', '0.15111', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('579', '2017101810465629218', '259', '260', null, '45', '1', null, 'JPY', '217', null, '217', '123321', '345', null, '0', '4', '0', '249', '2017-10-20', '2017-10-18', null, '2017-10-18', null, '0.00', '1508295238934', '264', 'B2B', 'USD', 'USD', 'PLOK', '张三', '221', '345.00', '3.08', '0.00', '0.00891', '0.00891', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('580', '2017101810465629218', null, null, null, '45', '1', null, 'EUR', '217', null, '217', '123321', '234', null, '0', '4', '0', '249', '2017-10-26', '2017-10-18', null, '2017-10-18', null, '0.00', '1508295238935', '263', 'B2B', 'USD', 'USD', 'PLOK', '张三', '221', '234.00', '275.55', '0.00', '1.17758', '1.17758', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('581', '2017101718505546517', '139', '141', null, '顺丰快速', '1', '234', 'CNY', '52', '52', null, '324', '234', null, '0', '2', '1', '116', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508295245469', '258', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '12.00', '1.81', null, '0.15111', '0.15111', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('582', '2017101810554443597', '259', '260', null, '45', '1', null, 'GBP', '217', null, '217', '12345678', '678', null, '0', '3', '0', '249', '2017-10-26', '2017-10-18', null, '2017-10-18', null, null, '1508295663633', '268', 'B2B', 'USD', 'USD', 'PLOK', '张三', null, '678.00', '894.40', null, '1.31917', null, '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('583', '2017101810554443597', '259', '260', null, '45', '1', null, 'HKD', '217', null, '217', '12345678', '567', null, '0', '3', '0', '249', '2017-10-27', '2017-10-18', null, '2017-10-18', null, null, '1508295663635', '267', 'B2B', 'USD', 'USD', 'PLOK', '张三', null, '567.00', '72.64', null, '0.12811', null, '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('584', '2017101810554443597', '259', '261', null, '45', '1', null, 'CNY', '217', null, '217', '12345678', '456', null, '0', '3', '1', '249', '2017-10-18', '2017-10-18', null, '2017-10-18', null, null, '1508295663635', '266', 'B2B', 'USD', 'USD', 'PLOK', '张三', null, '456.00', '68.99', null, '0.15129', null, '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('585', '2017101811065337307', '182', '197', null, '22', '1', '213421', 'CNY', '9', null, null, '5468754', '132', null, '0', '1', '1', '134', '2017-10-18', '2017-10-18', null, null, null, null, '1508296013221', '269', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '234.00', '35.40', null, '0.15129', '0.15129', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('586', '2017101811071592048', '255', '258', null, '53', '0', '34', 'CNY', '213', null, null, '3253', '535', null, '0', '1', '1', '239', '2017-10-19', '2017-10-18', null, null, null, null, '1508296035262', '270', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '35.00', '5.30', null, '0.15129', '0.15129', '通讯费用', '短信');
INSERT INTO `ams_accountitem_history` VALUES ('587', '2017101811065337307', '182', '197', null, '刀剑', '1', '213421', 'CNY', '9', '9', null, '5468754', '132', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508296103726', '269', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '234.00', '35.40', null, '0.15129', '0.15129', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('588', '2017101811240491481', '259', '260', null, '61', '1', null, 'GBP', '217', null, '217', 'YWBM1', '400', null, '0', '3', '0', '249', '2017-10-28', '2017-10-18', null, '2017-10-18', null, null, '1508297179046', '274', 'B2B', 'USD', 'GBP', 'PLOK', '老李123', null, '400.00', '527.70', null, '1.31926', '1.00000', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('589', '2017101811240491481', '259', '260', null, '61', '1', null, 'EUR', '217', null, '217', 'YWBM1', '300', null, '0', '3', '0', '249', '2017-10-26', '2017-10-18', null, '2017-10-18', null, null, '1508297179048', '273', 'B2B', 'USD', 'GBP', 'PLOK', '老李123', null, '300.00', '353.19', null, '1.17630', '0.89240', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('590', '2017101811240491481', '259', '261', null, '61', '1', null, 'CNY', '217', null, '217', 'YWBM1', '200', null, '0', '3', '1', '249', '2017-10-19', '2017-10-18', null, '2017-10-18', null, null, '1508297179049', '272', 'B2B', 'USD', 'GBP', 'PLOK', '老李123', null, '200.00', '30.26', null, '0.15129', '0.11468', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('591', '2017101811240491481', '259', '261', null, '61', '1', null, 'AUD', '217', null, '217', 'YWBM1', '100', null, '0', '3', '1', '249', '2017-10-18', '2017-10-18', null, '2017-10-18', null, null, '1508297179049', '271', 'B2B', 'USD', 'GBP', 'PLOK', '老李123', null, '100.00', '78.51', null, '0.78511', '0.59512', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('592', '2017101811065337307', '182', '197', null, '刀剑', '1', '213421', 'CNY', '9', '9', null, '5468754', '132', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508297264182', '269', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '234.00', '35.40', null, '0.15129', '0.15129', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('593', '2017101811065337307', '182', '197', null, '刀剑', '1', '213421', 'CNY', '9', '9', null, '5468754', '132', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508297324963', '269', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '234.00', '35.40', null, '0.15129', '0.15129', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('594', '2017101811065337307', '182', '197', null, '刀剑', '1', '213421', 'CNY', '9', '9', null, '5468754', '1321', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508297327052', '269', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '234.00', '35.40', null, '0.15129', '0.15129', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('595', '2017101811065337307', '182', '197', null, '刀剑', '1', '213421', 'CNY', '9', '9', null, '5468754', '132112', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508297390282', '269', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '234.00', '35.40', null, '0.15129', '0.15129', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('596', '2017101811065337307', '182', '197', null, '刀剑', '1', '213421', 'CNY', '9', '9', null, '5468754', '132112', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508297396413', '269', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '234.00', '35.40', null, '0.15129', '0.15129', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('597', '2017101811065337307', '182', '197', null, '刀剑', '1', '213421', 'CNY', '9', '9', null, '5468754', '1321121', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508297991190', '269', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '234.00', '35.40', null, '0.15129', '0.15129', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('598', '2017101811065337307', '182', '197', null, '刀剑', '1', '213421', 'CNY', '9', '9', null, '5468754', '1321121', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508298577475', '269', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '234.00', '35.40', null, '0.15129', '0.15129', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('599', '2017101811065337307', '182', '197', null, '刀剑', '1', '213421', 'CNY', '9', '9', null, '5468754', '1321121', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508298596474', '269', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '234.00', '35.40', null, '0.15129', '0.15129', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('600', '2017101811065337307', '182', '197', null, '刀剑', '1', '213421', 'CNY', '9', '9', null, '5468754', '1321121', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508298615895', '269', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '234.00', '35.40', null, '0.15129', '0.15129', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('601', '2017101718505546517', '139', '141', null, '顺丰快速', '1', '234', 'CNY', '52', '52', null, '324', '234', null, '0', '2', '1', '116', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508298854756', '258', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '12.00', '1.81', null, '0.15111', '0.15111', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('602', '2017101718382062776', '139', '141', null, '顺丰快速', '1', '24234', 'CNY', '52', '52', null, '123123', 'sfdsfdf', null, '0', '2', '1', '116', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508298866274', '256', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '23.00', '3.48', null, '0.15112', '0.15112', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('603', '2017101715241424784', '139', '141', null, '顺丰快速', '1', null, 'CNY', '52', '52', null, '2423', null, null, '0', '2', '0', '116', '2017-10-11', '2017-10-18', '2017-10-18', null, null, null, '1508298897927', '228', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '23.00', '3.47', null, '0.15124', '0.15124', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('604', '2017101715230929345', '139', '141', null, '顺丰快速', '1', null, 'AUD', '52', '52', null, '234324', null, null, '0', '2', '0', '116', '2017-10-19', '2017-10-18', '2017-10-18', null, null, null, '1508298915186', '226', 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', null, '23.00', '18.04', null, '0.78444', '0.78444', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('605', '2017101715230929345', '139', '141', null, '顺丰快速', '1', null, 'AUD', '52', '52', null, '234324', null, null, '0', '2', '0', '116', '2017-10-19', '2017-10-18', '2017-10-18', null, null, null, '1508298918775', '226', 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', null, '23.00', '18.04', null, '0.78444', '0.78444', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('606', '2017101811240491481', '259', '260', null, '61', '1', null, 'GBP', '217', null, '217', 'YWBM1', '400', null, '0', '4', '0', '249', '2017-10-28', '2017-10-18', null, '2017-10-18', null, '0.00', '1508299181886', '274', 'B2B', 'USD', 'GBP', 'PLOK', '老李123', '222', '400.00', '527.70', '0.00', '1.31926', '1.00000', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('607', '2017101811240491481', '259', '260', null, '61', '1', null, 'EUR', '217', null, '217', 'YWBM1', '300', null, '0', '4', '0', '249', '2017-10-26', '2017-10-18', null, '2017-10-18', null, '0.00', '1508299181887', '273', 'B2B', 'USD', 'GBP', 'PLOK', '老李123', '222', '300.00', '353.19', '0.00', '1.17630', '0.89240', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('608', '2017101811240491481', '259', '261', null, '61', '1', null, 'CNY', '217', null, '217', 'YWBM1', '200', null, '0', '4', '1', '249', '2017-10-19', '2017-10-18', null, '2017-10-18', null, '0.00', '1508299181887', '272', 'B2B', 'USD', 'GBP', 'PLOK', '老李123', '222', '200.00', '30.26', '0.00', '0.15129', '0.11468', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('609', '2017101811240491481', '259', '261', null, '61', '1', null, 'AUD', '217', null, '217', 'YWBM1', '100', null, '0', '4', '1', '249', '2017-10-18', '2017-10-18', null, '2017-10-18', null, '0.00', '1508299181888', '271', 'B2B', 'USD', 'GBP', 'PLOK', '老李123', '222', '100.00', '78.51', '0.00', '0.78511', '0.59512', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('610', '2017101811065337307', '182', '197', null, '刀剑', '1', '213421', 'CNY', '9', '9', null, '5468754', '1321121', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508301354181', '269', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '234.00', '35.40', null, '0.15129', '0.15129', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('611', '2017101811065337307', '182', '197', null, '刀剑', '1', '213421', 'CNY', '9', '9', null, '5468754', '1321121', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508301397141', '269', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '234.00', '35.40', null, '0.15129', '0.15129', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('612', '2017101811065337307', '182', '197', null, '刀剑', '1', '213421', 'CNY', '9', '9', null, '5468754', '1321121', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508301430422', '269', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '234.00', '35.40', null, '0.15129', '0.15129', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('613', '2017101811065337307', '182', '197', null, '刀剑', '1', '213421', 'CNY', '9', '9', null, '5468754', '1321121', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508301666321', '269', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '234.00', '35.40', null, '0.15129', '0.15129', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('614', '2017101811065337307', '182', '197', null, '刀剑', '1', '213421', 'CNY', '9', '9', null, '5468754', '13211211', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508302002668', '269', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '234.00', '35.40', null, '0.15129', '0.15129', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('615', '2017101811065337307', '182', '197', null, '刀剑', '1', '213421', 'CNY', '9', '9', null, '5468754', '备注新', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508302039468', '269', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '234.00', '35.40', null, '0.15129', '0.15129', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('616', '2017101811065337307', '182', '197', null, '刀剑', '1', '213421', 'CNY', '9', '9', '9', '5468754', '备注新', null, '0', '3', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', '2017-10-18', null, null, '1508302075267', '269', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '234.00', '35.40', null, '0.15129', '0.15129', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('617', '2017101812541255775', '182', '194', null, '22', '1', '131', 'CNY', '9', null, null, '87654', '123', null, '0', '1', '1', '134', '2017-10-18', '2017-10-18', null, null, null, null, '1508302452870', '275', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '123.00', '18.61', null, '0.15130', '0.15130', '增值服务', '送货/提货');
INSERT INTO `ams_accountitem_history` VALUES ('618', '2017101812541255775', '182', '194', null, '刀剑', '1', '131', 'CNY', '9', '9', null, '87654', '1231', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508302600069', '275', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '123.00', '18.61', null, '0.15130', '0.15130', '增值服务', '送货/提货');
INSERT INTO `ams_accountitem_history` VALUES ('619', '2017101812574871480', '182', '188', null, '22', '1', '123', 'CNY', '9', null, null, '12324234', '123', null, '0', '1', '1', '134', '2017-10-18', '2017-10-18', null, null, null, null, '1508302668707', '276', 'B2B', 'USD', 'USD', 'XXXX', '刀剑', null, '123.00', '18.61', null, '0.15130', '0.15130', '增值服务', '派送费，偏远地区除外');
INSERT INTO `ams_accountitem_history` VALUES ('620', '2017101812574871480', '182', '188', null, '刀剑', '1', '123', 'CNY', '9', '9', null, '12324234', '123111', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508302714543', '276', 'B2B', 'USD', 'USD', 'XXXX', '刀剑', null, '123.00', '18.61', null, '0.15130', '0.15130', '增值服务', '派送费，偏远地区除外');
INSERT INTO `ams_accountitem_history` VALUES ('621', '2017101812541255775', '182', '194', null, '刀剑', '1', '131', 'CNY', '9', '9', null, '87654', '1231', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508302807154', '275', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', null, '123.00', '18.61', null, '0.15130', '0.15130', '增值服务', '送货/提货');
INSERT INTO `ams_accountitem_history` VALUES ('622', '2017101811071592048', '255', '258', null, '55', '0', '34', 'CNY', '213', '213', null, '3253', '535', null, '0', '2', '1', '239', '2017-10-19', '2017-10-18', '2017-10-18', null, null, null, '1508304577910', '270', 'B2B', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '35.00', '5.30', null, '0.15129', '1.00000', '通讯费用', '短信');
INSERT INTO `ams_accountitem_history` VALUES ('623', '2017101811071592048', '255', '258', null, '53', '0', '34', 'CNY', '213', '213', null, '3253', '535', null, '0', '2', '1', '239', '2017-10-19', '2017-10-18', '2017-10-18', null, null, null, '1508304607910', '270', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '35.00', '5.30', null, '0.15129', '0.15117', '通讯费用', '短信');
INSERT INTO `ams_accountitem_history` VALUES ('624', '2017101811071592048', '255', '258', null, '55', '0', '34', 'CNY', '213', '213', null, '3253', '535', null, '0', '2', '1', '239', '2017-10-19', '2017-10-18', '2017-10-18', null, null, null, '1508304660852', '270', 'B2B', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '35.00', '5.30', null, '0.15129', '1.00000', '通讯费用', '短信');
INSERT INTO `ams_accountitem_history` VALUES ('625', '2017101811071592048', '255', '258', null, '53', '0', '34', 'CNY', '213', '213', null, '3253', '535', null, '0', '2', '1', '239', '2017-10-19', '2017-10-18', '2017-10-18', null, null, null, '1508304701108', '270', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '35.00', '5.30', null, '0.15129', '0.15117', '通讯费用', '短信');
INSERT INTO `ams_accountitem_history` VALUES ('626', '2017101811071592048', '255', '258', null, '53', '0', '34', 'CNY', '213', '213', null, '3253', '53523', null, '0', '2', '1', '239', '2017-10-19', '2017-10-18', '2017-10-18', null, null, null, '1508304722144', '270', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '35.00', '5.30', null, '0.15129', '0.15117', '通讯费用', '短信');
INSERT INTO `ams_accountitem_history` VALUES ('627', '2017101811071592048', '255', '258', null, '韩衣控-中国', '0', '34', 'CNY', '213', '213', null, '3253', '535232323232', null, '0', '2', '1', '239', '2017-10-19', '2017-10-18', '2017-10-18', null, null, null, '1508304751513', '270', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '35.00', '5.30', null, '0.15129', '0.15117', '通讯费用', '短信');
INSERT INTO `ams_accountitem_history` VALUES ('628', '2017101811071592048', '255', '258', null, '韩衣控-中国', '0', '34', 'CNY', '213', '213', null, '3253', '5352323232322323', null, '0', '2', '1', '239', '2017-10-19', '2017-10-18', '2017-10-18', null, null, null, '1508304854612', '270', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '35.00', '5.30', null, '0.15129', '0.15117', '通讯费用', '短信');
INSERT INTO `ams_accountitem_history` VALUES ('629', '2017101813355756691', '255', '257', null, '53', '1', '23', 'CNY', '213', null, null, '2342', '23', null, '0', '1', '1', '239', '2017-10-04', '2017-10-18', null, null, null, null, '1508304957682', '279', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '23.00', '3.48', null, '0.15117', '0.15117', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('630', '2017101813355756691', '255', '257', null, '53', '1', '23', 'CNY', '213', '213', null, '2342', '23', null, '0', '2', '1', '239', '2017-10-04', '2017-10-18', '2017-10-18', null, null, null, '1508305000123', '279', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '23.00', '3.48', null, '0.15117', '0.15117', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('631', '2017101813355756691', '255', '257', null, '53', '1', '23', 'CNY', '213', '213', null, '2342', '232343', null, '0', '2', '1', '239', '2017-10-04', '2017-10-18', '2017-10-18', null, null, null, '1508305023596', '279', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '23.00', '3.48', null, '0.15117', '0.15117', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('632', '2017101813355756691', '255', '257', null, '53', '1', '23', 'CNY', '213', '213', null, '2342', '232343', null, '0', '2', '1', '239', '2017-10-04', '2017-10-18', '2017-10-18', null, null, null, '1508305036614', '279', 'B2B', 'USD', 'CNY', 'KJNZ', '55', null, '23.00', '3.48', null, '0.15117', '1.00000', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('633', '201710181340423811', '274', '291', null, '50', '1', null, 'AUD', '220', null, '220', '1212', '2', null, '0', '3', '1', '251', '2017-10-21', '2017-10-18', null, '2017-10-18', null, null, '1508305285351', '281', 'B2C', 'USD', 'USD', 'ZJLS', 'play', null, '33.00', '25.89', null, '0.78444', '0.78444', '增值服务', '包材费用');
INSERT INTO `ams_accountitem_history` VALUES ('634', '2017101813355756691', '255', '257', null, '53', '1', '23', 'CNY', '213', '213', null, '2342', '232343', null, '0', '2', '1', '239', '2017-10-04', '2017-10-18', '2017-10-18', null, null, null, '1508305309948', '279', 'B2B', 'USD', 'CNY', 'KJNZ', '55', null, '23.00', '3.48', null, '0.15117', '1.00000', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('635', '2017101813355756691', '255', '257', null, '53', '1', '23', 'CNY', '213', '213', null, '2342', '232343', null, '0', '2', '1', '239', '2017-10-04', '2017-10-18', '2017-10-18', null, null, null, '1508305340437', '279', 'B2B', 'USD', 'USD', 'KJNZ', '53', null, '23.00', '3.48', null, '0.15117', '0.15119', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('636', '201710181340423811', '274', '291', null, '50', '1', null, 'AUD', '220', null, '220', '1212', '2', null, '0', '4', '1', '251', '2017-10-21', '2017-10-18', null, '2017-10-18', null, '0.00', '1508305428276', '281', 'B2C', 'USD', 'USD', 'ZJLS', 'play', '223', '33.00', '25.89', '0.00', '0.78444', '0.78444', '增值服务', '包材费用');
INSERT INTO `ams_accountitem_history` VALUES ('637', '2017101813442395462', '255', '257', null, '53', '1', '23', 'CNY', '213', null, null, '2324', '23', null, '0', '1', '1', '239', '2017-10-19', '2017-10-18', null, null, null, null, '1508305463998', '283', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '23.00', '3.48', null, '0.15119', '0.15119', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('638', '201710181340423811', '271', '273', null, '50', '1', null, 'CNY', '220', null, '220', '1212', '1', null, '0', '3', '1', '251', '2017-10-20', '2017-10-18', null, '2017-10-18', null, null, '1508305515238', '280', 'B2C', 'USD', 'USD', 'ZJLS', 'play', null, '12.00', '1.81', null, '0.15119', '0.15119', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('639', '2017101813442395462', '255', '257', null, '53', '1', '23', 'CNY', '213', '213', null, '2324', '2312', null, '0', '2', '1', '239', '2017-10-19', '2017-10-18', '2017-10-18', null, null, null, '1508305537704', '283', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '23.00', '3.48', null, '0.15119', '0.15119', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('640', '2017101813442395462', '255', '257', null, '53', '1', '23', 'CNY', '213', '213', null, '2324', '2312', null, '0', '2', '1', '239', '2017-10-19', '2017-10-18', '2017-10-18', null, null, null, '1508305573168', '283', 'B2B', 'USD', 'USD', 'KJNZ', '53', null, '23.00', '3.48', null, '0.15119', '0.15119', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('641', '2017101813442395462', '255', '257', null, '53', '1', '23', 'CNY', '213', '213', null, '2324', '2312', null, '0', '2', '1', '239', '2017-10-19', '2017-10-18', '2017-10-18', null, null, null, '1508305583961', '283', 'B2B', 'USD', 'CNY', 'KJNZ', '55', null, '23.00', '3.48', null, '0.15119', '1.00000', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('642', '2017101718505546517', '139', '141', null, '顺丰快速', '1', '234', 'CNY', '52', '52', '52', '324', '234', null, '0', '3', '1', '116', '2017-10-18', '2017-10-18', '2017-10-18', '2017-10-18', null, null, '1508305584419', '258', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '12.00', '1.81', null, '0.15111', '0.15111', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('643', '201710181340423811', '271', '272', null, 'play', '1', null, 'CNY', '220', '220', null, '1212', '1', null, '0', '2', '0', '251', '2017-10-16', '2017-10-18', '2017-10-18', null, null, null, '1508305603444', '282', 'B2C', 'USD', 'USD', 'ZJLS', 'play', null, '66.00', '9.98', null, '0.15119', '0.15119', '仓租费用', '常温区');
INSERT INTO `ams_accountitem_history` VALUES ('644', '201710181340423811', '274', '291', null, '50', '1', null, 'AUD', '220', null, '220', '1212', '2', null, '0', '4', '1', '251', '2017-10-21', '2017-10-18', null, '2017-10-18', null, '0.00', '1508305620401', '281', 'B2C', 'USD', 'USD', 'ZJLS', 'play', '223', '33.00', '25.89', '0.00', '0.78444', '0.78444', '增值服务', '包材费用');
INSERT INTO `ams_accountitem_history` VALUES ('645', '201710181340423811', '271', '272', null, 'play', '1', null, 'CNY', '220', '220', '220', '1212', '1', null, '0', '3', '0', '251', '2017-10-16', '2017-10-18', '2017-10-18', '2017-10-18', null, null, '1508305629988', '282', 'B2C', 'USD', 'USD', 'ZJLS', 'play', null, '66.00', '9.98', null, '0.15119', '0.15119', '仓租费用', '常温区');
INSERT INTO `ams_accountitem_history` VALUES ('646', '2017101718505546517', '139', '141', null, '顺丰快速', '1', '234', 'CNY', '52', '52', '52', '324', '234', null, '0', '3', '1', '116', '2017-10-18', '2017-10-18', '2017-10-18', '2017-10-18', null, null, '1508305647961', '258', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '12.00', '1.81', null, '0.15111', '0.15111', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('647', '2017101718505546517', '139', '141', null, '顺丰快速', '1', '234', 'CNY', '52', '52', '52', '324', '234', null, '0', '3', '1', '116', '2017-10-18', '2017-10-18', '2017-10-18', '2017-10-18', null, null, '1508305661665', '258', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '12.00', '1.81', null, '0.15111', '0.15111', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('648', '2017101811240491481', '259', '260', null, '61', '1', null, 'GBP', '217', null, '217', 'YWBM1', '400', null, '0', '4', '0', '249', '2017-10-28', '2017-10-18', null, '2017-10-18', null, '0.00', '1508305677022', '274', 'B2B', 'USD', 'GBP', 'PLOK', '老李123', '222', '400.00', '527.70', '0.00', '1.31926', '1.00000', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('649', '2017101811240491481', '259', '260', null, '61', '1', null, 'EUR', '217', null, '217', 'YWBM1', '300', null, '0', '4', '0', '249', '2017-10-26', '2017-10-18', null, '2017-10-18', null, '0.00', '1508305677023', '273', 'B2B', 'USD', 'GBP', 'PLOK', '老李123', '222', '300.00', '353.19', '0.00', '1.17630', '0.89240', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('650', '2017101811240491481', '259', '261', null, '61', '1', null, 'CNY', '217', null, '217', 'YWBM1', '200', null, '0', '4', '1', '249', '2017-10-19', '2017-10-18', null, '2017-10-18', null, '0.00', '1508305677024', '272', 'B2B', 'USD', 'GBP', 'PLOK', '老李123', '222', '200.00', '30.26', '0.00', '0.15129', '0.11468', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('651', '2017101811240491481', '259', '261', null, '61', '1', null, 'AUD', '217', null, '217', 'YWBM1', '100', null, '0', '4', '1', '249', '2017-10-18', '2017-10-18', null, '2017-10-18', null, '0.00', '1508305677025', '271', 'B2B', 'USD', 'GBP', 'PLOK', '老李123', '222', '100.00', '78.51', '0.00', '0.78511', '0.59512', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('652', '201710181340423811', '274', '291', null, '50', '1', null, 'AUD', '220', null, '220', '1212', '2', null, '0', '4', '1', '251', '2017-10-21', '2017-10-18', null, '2017-10-18', null, '0.00', '1508305684649', '281', 'B2C', 'USD', 'USD', 'ZJLS', 'play', '223', '33.00', '25.89', '0.00', '0.78444', '0.78444', '增值服务', '包材费用');
INSERT INTO `ams_accountitem_history` VALUES ('653', '2017101810554443597', '259', '260', null, '45', '1', null, 'GBP', '217', null, '217', '12345678', '678', null, '0', '3', '0', '249', '2017-10-26', '2017-10-18', null, '2017-10-18', null, null, '1508305687361', '268', 'B2B', 'USD', 'USD', 'PLOK', '张三', null, '678.00', '894.40', null, '1.31917', null, '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('654', '2017101810554443597', '259', '260', null, '45', '1', null, 'HKD', '217', null, '217', '12345678', '567', null, '0', '3', '0', '249', '2017-10-27', '2017-10-18', null, '2017-10-18', null, null, '1508305687362', '267', 'B2B', 'USD', 'USD', 'PLOK', '张三', null, '567.00', '72.64', null, '0.12811', null, '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('655', '2017101715274339705', '139', '141', null, '14', '1', '324', 'CNY', '52', null, '52', '234', '243', null, '0', '4', '0', '116', '2017-10-18', '2017-10-18', null, '2017-10-18', null, '0.00', '1508305691030', '233', 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', '215', '243.00', '36.76', '0.00', '0.15127', '0.15127', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('656', '2017101715274339705', '139', '141', null, '14', '1', '324', 'CNY', '52', null, '52', '234', '243', null, '0', '4', '0', '116', '2017-10-18', '2017-10-18', null, '2017-10-18', null, '0.00', '1508305730453', '233', 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', '215', '243.00', '36.76', '0.00', '0.15127', '0.15127', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('657', '2017101813442395462', '255', '257', null, '53', '1', '23', 'CNY', '213', '213', null, '2324', '2312', null, '0', '2', '1', '239', '2017-10-19', '2017-10-18', '2017-10-18', null, null, null, '1508305910211', '283', 'B2B', 'USD', 'USD', 'KJNZ', '53', null, '23.00', '3.48', null, '0.15119', '0.15119', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('658', '2017101813442395462', '255', '257', null, '55', '1', '23', 'CNY', '213', '213', null, '2324', '2312', null, '0', '2', '1', '239', '2017-10-19', '2017-10-18', '2017-10-18', null, null, null, '1508305938591', '283', 'B2B', 'USD', 'CNY', 'KJNZ', '55', null, '23.00', '3.48', null, '0.15119', '1.00000', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('659', '2017101813442395462', '255', '257', null, '53', '1', '23', 'CNY', '213', '213', null, '2324', '2312', null, '0', '2', '1', '239', '2017-10-19', '2017-10-18', '2017-10-18', null, null, null, '1508305953381', '283', 'B2B', 'USD', 'USD', 'KJNZ', '53', null, '23.00', '3.48', null, '0.15119', '0.15119', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('660', '2017101718382062776', '139', '141', null, '顺丰快速', '1', '24234', 'CNY', '52', '52', '52', '123123', 'sfdsfdf', null, '0', '3', '1', '116', '2017-10-18', '2017-10-18', '2017-10-18', '2017-10-18', null, null, '1508306083782', '256', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '23.00', '3.48', null, '0.15112', '0.15112', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('661', '2017101810204175069', '259', '260', null, '56', '1', '345', 'CNY', '217', null, '217', '76543', '123124', null, '0', '4', '0', '249', '2017-10-18', '2017-10-18', null, '2017-10-18', null, '0.00', '1508306093867', '261', 'B2B', 'USD', 'USD', 'PLOK', '供应商', '224', '87654.00', '13265.99', '0.00', '0.15135', '0.15135', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('662', '2017101717442978908', '259', '260', null, '56', '1', '交易概要  交易概要', 'GBP', '217', null, '217', '30', '交易概要  交易概要', null, '0', '4', '0', '249', '2017-10-17', '2017-10-18', null, '2017-10-17', null, '0.00', '1508306093868', '242', 'B2B', 'USD', 'USD', 'PLOK', '供应商', '224', '120.00', '159.09', '0.00', '1.32579', '1.32579', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('663', '2017101813442395462', '255', '257', null, '55', '1', '23', 'CNY', '213', '213', null, '2324', '2312', null, '0', '2', '1', '239', '2017-10-19', '2017-10-18', '2017-10-18', null, null, null, '1508306137883', '283', 'B2B', 'USD', 'CNY', 'KJNZ', '55', null, '23.00', '3.48', null, '0.15119', '1.00000', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('664', '2017101718505546517', '139', '141', null, '顺丰快速', '1', '234', 'CNY', '52', '52', '52', '324', '234', null, '0', '3', '1', '116', '2017-10-18', '2017-10-18', '2017-10-18', '2017-10-18', null, null, '1508306162875', '258', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '12.00', '1.81', null, '0.15111', '0.15111', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('665', '2017101718505546517', '139', '141', null, '顺丰快速', '1', '234', 'CNY', '52', '52', '52', '324', '234', null, '0', '3', '1', '116', '2017-10-18', '2017-10-18', '2017-10-18', '2017-10-18', null, null, '1508306223153', '258', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '12.00', '1.81', null, '0.15111', '0.15111', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('666', '2017101718505546517', '139', '141', null, '顺丰快速', '1', '234', 'CNY', '52', '52', '52', '324', '234', null, '0', '3', '1', '116', '2017-10-18', '2017-10-18', '2017-10-18', '2017-10-18', null, null, '1508306236884', '258', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '12.00', '1.81', null, '0.15111', '0.15111', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('667', '2017101718382062776', '139', '141', null, '顺丰快速', '1', '24234', 'CNY', '52', '52', '52', '123123', 'sfdsfdf', null, '0', '3', '1', '116', '2017-10-18', '2017-10-18', '2017-10-18', '2017-10-18', null, null, '1508306236885', '256', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '23.00', '3.48', null, '0.15112', '0.15112', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('668', '2017101715274339705', '139', '141', null, '14', '1', '324', 'CNY', '52', null, '52', '234', '243', null, '0', '4', '0', '116', '2017-10-18', '2017-10-18', null, '2017-10-18', null, '0.00', '1508306236886', '233', 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', '215', '243.00', '36.76', '0.00', '0.15127', '0.15127', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('669', '2017101813572210488', '255', '258', null, '53', '1', '234', 'CNY', '213', null, null, '3324', '234', null, '0', '1', '1', '239', '2017-10-19', '2017-10-18', null, null, null, null, '1508306242869', '284', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '234.00', '35.38', null, '0.15118', '0.15118', '通讯费用', '短信');
INSERT INTO `ams_accountitem_history` VALUES ('670', '2017101718505546517', '139', '141', null, '顺丰快速', '1', '234', 'CNY', '52', '52', '52', '324', '234', null, '0', '3', '1', '116', '2017-10-18', '2017-10-18', '2017-10-18', '2017-10-18', null, null, '1508306253234', '258', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '12.00', '1.81', null, '0.15111', '0.15111', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('671', '2017101718382062776', '139', '141', null, '顺丰快速', '1', '24234', 'CNY', '52', '52', '52', '123123', 'sfdsfdf', null, '0', '3', '1', '116', '2017-10-18', '2017-10-18', '2017-10-18', '2017-10-18', null, null, '1508306253235', '256', 'B2B', 'USD', 'USD', 'AAAA', '顺丰快速', null, '23.00', '3.48', null, '0.15112', '0.15112', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('672', '2017101715274339705', '139', '141', null, '14', '1', '324', 'CNY', '52', null, '52', '234', '243', null, '0', '4', '0', '116', '2017-10-18', '2017-10-18', null, '2017-10-18', null, '0.00', '1508306253237', '233', 'aaa', 'USD', 'USD', 'AAAA', '顺丰快速', '215', '243.00', '36.76', '0.00', '0.15127', '0.15127', '电话费', '水电费');
INSERT INTO `ams_accountitem_history` VALUES ('673', '2017101813572210488', '255', '258', null, '53', '1', '234', 'CNY', '213', '213', null, '3324', '23423434', null, '0', '2', '1', '239', '2017-10-19', '2017-10-18', '2017-10-18', null, null, null, '1508306265344', '284', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '234.00', '35.38', null, '0.15118', '0.15118', '通讯费用', '短信');
INSERT INTO `ams_accountitem_history` VALUES ('674', '2017101813572210488', '255', '258', null, '55', '1', '234', 'CNY', '213', '213', null, '3324', '23423434', null, '0', '2', '1', '239', '2017-10-19', '2017-10-18', '2017-10-18', null, null, null, '1508306286035', '284', 'B2C', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '234.00', '35.38', null, '0.15118', '1.00000', '通讯费用', '短信');
INSERT INTO `ams_accountitem_history` VALUES ('675', '2017101813572210488', '255', '258', null, '55', '1', '234', 'CNY', '213', '213', null, '3324', '23423434', null, '0', '2', '1', '239', '2017-10-19', '2017-10-18', '2017-10-18', null, null, null, '1508306360016', '284', 'B2C', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '234.00', '35.38', null, '0.15118', '1.00000', '通讯费用', '短信');
INSERT INTO `ams_accountitem_history` VALUES ('676', '2017101813260273939', '259', '261', null, '61', '0', null, 'AUD', '217', null, '217', '123', '120', null, '0', '3', '1', '249', '2017-10-19', '2017-10-18', null, '2017-10-18', null, null, '1508307310525', '277', 'B3B', 'USD', 'GBP', 'PLOK', '老李123', null, '120.00', '94.18', null, '0.78581', '0.59535', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('677', '2017101813260273939', '259', '261', null, '61', '0', null, 'CNY', '217', null, '217', '123', '1212', null, '0', '3', '0', '249', '2017-10-25', '2017-10-18', null, '2017-10-18', null, null, '1508307310526', '278', 'B3B', 'USD', 'GBP', 'PLOK', '老李123', null, '1212.00', '183.21', null, '0.15117', '0.11468', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('678', '2017101814254241717', '259', '260', null, '51', '1', null, 'HKD', '217', null, '217', 'ASDF', '1212', null, '0', '3', '0', '249', '2017-10-27', '2017-10-18', null, '2017-10-18', null, null, '1508307956653', '290', 'B2B', 'USD', 'USD', 'PLOK', '老张家常菜', null, '1212.00', '155.23', null, '0.12808', '0.12808', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('679', '2017101814254241717', '259', '260', null, '51', '1', null, 'GBP', '217', null, '217', 'ASDF', '1212', null, '0', '3', '0', '249', '2017-10-26', '2017-10-18', null, '2017-10-18', null, null, '1508307956655', '289', 'B2B', 'USD', 'USD', 'PLOK', '老张家常菜', null, '1212.00', '1597.93', null, '1.31843', '1.31843', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('680', '2017101814254241717', '259', '261', null, '51', '1', null, 'EUR', '217', null, '217', 'ASDF', '1212', null, '0', '3', '1', '249', '2017-10-18', '2017-10-18', null, '2017-10-18', null, null, '1508307956656', '287', 'B2B', 'USD', 'USD', 'PLOK', '老张家常菜', null, '1212.00', '1426.55', null, '1.17702', '1.17702', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('681', '2017101814254241717', '259', '261', null, '51', '1', null, 'GBP', '217', null, '217', 'ASDF', '1212', null, '0', '3', '1', '249', '2017-10-19', '2017-10-18', null, '2017-10-18', null, null, '1508307956657', '288', 'B2B', 'USD', 'USD', 'PLOK', '老张家常菜', null, '1212.00', '1597.93', null, '1.31843', '1.31843', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('682', '2017101814284344793', '259', '261', null, '51', '1', '1212', 'EUR', '217', null, null, '12', '1212', null, '0', '1', '1', '249', '2017-10-26', '2017-10-18', null, null, null, null, '1508308123519', '291', 'B3B', 'USD', 'USD', 'PLOK', '老张家常菜', null, '12121.00', '14266.71', null, '1.17702', '1.17702', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('683', '2017101814284344793', '259', '261', null, '51', '1', '1212', 'EUR', '217', null, '217', '12', '1212', null, '0', '3', '1', '249', '2017-10-26', '2017-10-18', null, '2017-10-18', null, null, '1508308172222', '291', 'B3B', 'USD', 'USD', 'PLOK', '老张家常菜', null, '12121.00', '14266.71', null, '1.17702', '1.17702', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('684', '2017101814305722808', '259', '260', null, '51', '1', '121', 'CNY', '217', null, null, '12', '31231', null, '0', '1', '0', '249', '2017-10-18', '2017-10-18', null, null, null, null, '1508308257441', '292', 'B3B', 'USD', 'USD', 'PLOK', '老张家常菜', null, '1212.00', '183.13', null, '0.15110', '0.15110', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('685', '2017101814305722808', '259', '260', null, '51', '1', '121', 'CNY', '217', null, '217', '12', '31231', null, '0', '3', '0', '249', '2017-10-18', '2017-10-18', null, '2017-10-18', null, null, '1508308281042', '292', 'B3B', 'USD', 'USD', 'PLOK', '老张家常菜', null, '1212.00', '183.13', null, '0.15110', '0.15110', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('686', '2017101814305722808', '259', '260', null, '51', '1', '121', 'CNY', '217', null, '217', '12', '31231', null, '0', '4', '0', '249', '2017-10-18', '2017-10-18', null, '2017-10-18', null, '0.00', '1508308341814', '292', 'B3B', 'USD', 'USD', 'PLOK', '老张家常菜', '225', '1212.00', '183.13', '0.00', '0.15110', '0.15110', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('687', '2017101814284344793', '259', '261', null, '51', '1', '1212', 'EUR', '217', null, '217', '12', '1212', null, '0', '4', '1', '249', '2017-10-26', '2017-10-18', null, '2017-10-18', null, '0.00', '1508308341815', '291', 'B3B', 'USD', 'USD', 'PLOK', '老张家常菜', '225', '12121.00', '14266.71', '0.00', '1.17702', '1.17702', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('688', '2017101814254241717', '259', '260', null, '51', '1', null, 'HKD', '217', null, '217', 'ASDF', '1212', null, '0', '4', '0', '249', '2017-10-27', '2017-10-18', null, '2017-10-18', null, '0.00', '1508308341816', '290', 'B2B', 'USD', 'USD', 'PLOK', '老张家常菜', '225', '1212.00', '155.23', '0.00', '0.12808', '0.12808', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('689', '2017101814254241717', '259', '260', null, '51', '1', null, 'GBP', '217', null, '217', 'ASDF', '1212', null, '0', '4', '0', '249', '2017-10-26', '2017-10-18', null, '2017-10-18', null, '0.00', '1508308341817', '289', 'B2B', 'USD', 'USD', 'PLOK', '老张家常菜', '225', '1212.00', '1597.93', '0.00', '1.31843', '1.31843', '水果类目', '水果苹果');
INSERT INTO `ams_accountitem_history` VALUES ('690', '2017101814254241717', '259', '261', null, '51', '1', null, 'GBP', '217', null, '217', 'ASDF', '1212', null, '0', '4', '1', '249', '2017-10-19', '2017-10-18', null, '2017-10-18', null, '0.00', '1508308341818', '288', 'B2B', 'USD', 'USD', 'PLOK', '老张家常菜', '225', '1212.00', '1597.93', '0.00', '1.31843', '1.31843', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('691', '2017101814254241717', '259', '261', null, '51', '1', null, 'EUR', '217', null, '217', 'ASDF', '1212', null, '0', '4', '1', '249', '2017-10-18', '2017-10-18', null, '2017-10-18', null, '0.00', '1508308341819', '287', 'B2B', 'USD', 'USD', 'PLOK', '老张家常菜', '225', '1212.00', '1426.55', '0.00', '1.17702', '1.17702', '水果类目', '香蕉');
INSERT INTO `ams_accountitem_history` VALUES ('692', '2017101812574871480', '182', '188', null, '刀剑', '1', '123', 'CNY', '9', '9', null, '12324234', '123111111', null, '0', '2', '1', '134', '2017-10-18', '2017-10-18', '2017-10-18', null, null, null, '1508311605308', '276', 'B2B', 'USD', 'USD', 'XXXX', '刀剑', null, '123.00', '18.61', null, '0.15130', '0.15130', '增值服务', '派送费，偏远地区除外');
INSERT INTO `ams_accountitem_history` VALUES ('693', '2017101817335544546', '255', '257', null, '53', '1', '546', 'CNY', '213', null, null, '564646', '546', null, '0', '1', '1', '239', '2017-10-20', '2017-10-18', null, null, null, null, '1508319235755', '293', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '456.00', '68.86', null, '0.15102', '0.15102', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('694', '2017101817335544546', '255', '257', null, '53', '1', '546', 'CNY', '213', '213', null, '564646', '546', null, '0', '2', '1', '239', '2017-10-20', '2017-10-18', '2017-10-18', null, null, null, '1508319241766', '293', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '456.00', '68.86', null, '0.15102', '0.15102', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('695', '2017101817335544546', '255', '257', null, '55', '1', '546', 'CNY', '213', '213', null, '564646', '546', null, '0', '2', '1', '239', '2017-10-20', '2017-10-19', '2017-10-19', null, null, null, '1508377976279', '293', 'B2B', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '456.00', '68.86', null, '0.15102', '1.00000', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('696', '2017101813572210488', '255', '258', null, '53', '1', '234', 'CNY', '213', '213', null, '3324', '23423434', null, '0', '2', '1', '239', '2017-10-19', '2017-10-19', '2017-10-19', null, null, null, '1508377987360', '284', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '234.00', '35.38', null, '0.15118', '0.15096', '通讯费用', '短信');
INSERT INTO `ams_accountitem_history` VALUES ('697', '2017101718260660268', '182', '199', null, '58', '1', '1212', 'AUD', '9', null, '9', '123', '121212', null, '0', '4', '0', '134', '2017-10-17', '2017-10-19', null, '2017-10-17', null, '0.00', '1508379184049', '253', 'B2B', 'USD', 'USD', 'XXXX', '12', '226', '1212.00', '951.11', '0.00', '0.78475', '0.78475', '增值服务', '包材费用');
INSERT INTO `ams_accountitem_history` VALUES ('698', '2017101718213935597', '176', '177', null, '58', '1', 'WWWW', 'CNY', '9', null, '9', '243564', 'WWW', null, '0', '4', '1', '134', '2017-10-17', '2017-10-19', null, '2017-10-17', null, '0.00', '1508379184089', '251', 'B2C', 'USD', 'USD', 'XXXX', '12', '226', '233.00', '35.21', '0.00', '0.15111', '0.15111', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('699', '2017101716070841202', '179', '181', null, '22', '1', '12', 'CNY', '9', null, '9', '45634', '12', null, '0', '4', '1', '134', '2017-10-17', '2017-10-19', null, '2017-10-17', null, '0.00', '1508379495672', '237', 'B2C', 'USD', 'USD', 'XXXX', '刀剑', '227', '12.00', '1.82', '0.00', '0.15131', '0.15131', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('700', '2017101910251843513', '176', '177', null, '59', '1', '132', 'CNY', '9', null, null, '76545', '132', null, '0', '1', '1', '134', '2017-10-19', '2017-10-19', null, null, null, null, '1508379918077', '296', 'B2C', 'USD', 'USD', 'XXXX', '12312', null, '123.00', '18.56', null, '0.15090', '0.15090', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('701', '2017101910251843513', '176', '177', null, '59', '1', '132', 'CNY', '9', null, '9', '76545', '132', null, '0', '3', '1', '134', '2017-10-19', '2017-10-19', null, '2017-10-19', null, null, '1508379931866', '296', 'B2C', 'USD', 'USD', 'XXXX', '12312', null, '123.00', '18.56', null, '0.15090', '0.15090', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('702', '2017101910251843513', '176', '177', null, '59', '1', '132', 'CNY', '9', null, '9', '76545', '132', null, '0', '4', '1', '134', '2017-10-19', '2017-10-19', null, '2017-10-19', null, '0.00', '1508380179119', '296', 'B2C', 'USD', 'USD', 'XXXX', '12312', '229', '123.00', '18.56', '0.00', '0.15090', '0.15090', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('703', '2017101718240250483', '179', '180', null, '59', '1', '1234123', 'AUD', '9', null, '9', '75642', '12412Q4', null, '0', '4', '1', '134', '2017-10-17', '2017-10-19', null, '2017-10-17', null, '0.00', '1508380179160', '252', 'B2C', 'USD', 'USD', 'XXXX', '12312', '229', '12.00', '9.42', '0.00', '0.78475', '0.78475', '仓租费用', '常温区');
INSERT INTO `ams_accountitem_history` VALUES ('704', '2017101910251843513', '176', '177', null, '59', '1', '132', 'CNY', '9', null, '9', '76545', '132', null, '0', '4', '1', '134', '2017-10-19', '2017-10-19', null, '2017-10-19', null, '0.00', '1508380179208', '296', 'B2C', 'USD', 'USD', 'XXXX', '12312', '230', '123.00', '18.56', '0.00', '0.15090', '0.15090', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('705', '2017101718240250483', '179', '180', null, '59', '1', '1234123', 'AUD', '9', null, '9', '75642', '12412Q4', null, '0', '4', '1', '134', '2017-10-17', '2017-10-19', null, '2017-10-17', null, '0.00', '1508380179248', '252', 'B2C', 'USD', 'USD', 'XXXX', '12312', '230', '12.00', '9.42', '0.00', '0.78475', '0.78475', '仓租费用', '常温区');
INSERT INTO `ams_accountitem_history` VALUES ('706', '2017101910251843513', '176', '177', null, '59', '1', '132', 'CNY', '9', null, '9', '76545', '132', null, '0', '4', '1', '134', '2017-10-19', '2017-10-19', null, '2017-10-19', null, '0.00', '1508380179288', '296', 'B2C', 'USD', 'USD', 'XXXX', '12312', '228', '123.00', '18.56', '0.00', '0.15090', '0.15090', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('707', '2017101718240250483', '179', '180', null, '59', '1', '1234123', 'AUD', '9', null, '9', '75642', '12412Q4', null, '0', '4', '1', '134', '2017-10-17', '2017-10-19', null, '2017-10-17', null, '0.00', '1508380179319', '252', 'B2C', 'USD', 'USD', 'XXXX', '12312', '228', '12.00', '9.42', '0.00', '0.78475', '0.78475', '仓租费用', '常温区');
INSERT INTO `ams_accountitem_history` VALUES ('708', '2017101910330392497', '182', '188', null, '73', '1', '132124123', 'CNY', '9', null, null, '76845634534', '234234', null, '0', '1', '1', '134', '2017-10-19', '2017-10-19', null, null, null, null, '1508380383760', '297', 'B2C', 'USD', 'AUD', 'XXXX', 'coffee', null, '213.00', '32.14', null, '0.15090', '0.19189', '增值服务', '派送费，偏远地区除外');
INSERT INTO `ams_accountitem_history` VALUES ('709', '2017101910330392497', '182', '188', null, '73', '1', '132124123', 'CNY', '9', null, '9', '76845634534', '234234', null, '0', '3', '1', '134', '2017-10-19', '2017-10-19', null, '2017-10-19', null, null, '1508380392562', '297', 'B2C', 'USD', 'AUD', 'XXXX', 'coffee', null, '213.00', '32.14', null, '0.15090', '0.19189', '增值服务', '派送费，偏远地区除外');
INSERT INTO `ams_accountitem_history` VALUES ('710', '2017101910330392497', '182', '188', null, '73', '1', '132124123', 'CNY', '9', null, '9', '76845634534', '234234', null, '0', '4', '1', '134', '2017-10-19', '2017-10-19', null, '2017-10-19', null, '0.00', '1508380405560', '297', 'B2C', 'USD', 'AUD', 'XXXX', 'coffee', '231', '213.00', '32.14', '0.00', '0.15090', '0.19189', '增值服务', '派送费，偏远地区除外');
INSERT INTO `ams_accountitem_history` VALUES ('711', '2017101910330392497', '182', '188', null, '73', '1', '132124123', 'CNY', '9', null, '9', '76845634534', '234234', null, '0', '5', '1', '134', '2017-10-19', '2017-10-19', null, '2017-10-19', null, '0.00', '1508380438871', '297', 'B2C', 'USD', 'AUD', 'XXXX', 'coffee', '231', '213.00', '32.14', '0.00', '0.15090', '0.19189', '增值服务', '派送费，偏远地区除外');
INSERT INTO `ams_accountitem_history` VALUES ('712', '2017101910330392497', '182', '188', null, '73', '1', '132124123', 'CNY', '9', null, '9', '76845634534', '234234', null, '0', '6', '1', '134', '2017-10-19', '2017-10-19', null, '2017-10-19', null, '0.00', '1508380453871', '297', 'B2C', 'USD', 'AUD', 'XXXX', 'coffee', '231', '213.00', '32.14', '0.00', '0.15090', '0.19189', '增值服务', '派送费，偏远地区除外');
INSERT INTO `ams_accountitem_history` VALUES ('713', '2017101912333459853', '151', '152', null, '26', '0', null, 'CNY', '4', null, null, '23456', null, null, '0', '1', '1', '4', '2017-10-06', '2017-10-19', null, null, null, null, '1508387614274', '298', 'FG', 'USD', 'EUR', 'XXXX', '结算餐费1、2', null, '0.02', '0.00', null, '0.15087', '0.12777', '过山车', '吃饭费');
INSERT INTO `ams_accountitem_history` VALUES ('714', '2017101913355862262', '367', '369', null, '74', '0', '100员2件', 'CNY', '217', null, null, '2004', null, null, '0', '1', '1', '249', '2017-10-26', '2017-10-19', null, null, null, null, '1508391358911', '299', 'B3B', 'USD', 'USD', 'PLOK', '酒水小李子', null, '200.00', '30.18', null, '0.15088', '0.15088', '卖服装', '买衬衫');
INSERT INTO `ams_accountitem_history` VALUES ('715', '2017101913355862262', '367', '368', null, '74', '0', '100元2件', 'CNY', '217', '217', null, '2004', '买多送多，价格实惠', null, '0', '2', '1', '249', '2017-10-26', '2017-10-19', '2017-10-19', null, null, null, '1508392155658', '299', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', null, '200.00', '30.18', null, '0.15088', '0.15088', '卖服装', '买裤子');
INSERT INTO `ams_accountitem_history` VALUES ('716', '2017101913505780386', '367', '369', null, '74', '1', '买多送多', 'CNY', '217', null, null, '2005', '价格实惠', null, '0', '1', '0', '249', '2017-10-19', '2017-10-19', null, null, null, null, '1508392257364', '300', 'B3B', 'USD', 'USD', 'PLOK', '酒水小李子', null, '2000.00', '301.76', null, '0.15088', '0.15088', '卖服装', '买衬衫');
INSERT INTO `ams_accountitem_history` VALUES ('717', '2017101913505780386', '367', '369', null, '74', '1', '买多送多', 'CNY', '217', null, '217', '2005', '价格实惠', null, '0', '3', '0', '249', '2017-10-19', '2017-10-19', null, '2017-10-19', null, null, '1508393606205', '300', 'B3B', 'USD', 'USD', 'PLOK', '酒水小李子', null, '2000.00', '301.76', null, '0.15088', '0.15088', '卖服装', '买衬衫');
INSERT INTO `ams_accountitem_history` VALUES ('718', '2017101913355862262', '367', '368', null, '74', '0', '100元2件', 'CNY', '217', '217', '217', '2004', '买多送多，价格实惠', null, '0', '3', '1', '249', '2017-10-26', '2017-10-19', '2017-10-19', '2017-10-19', null, null, '1508393606215', '299', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', null, '200.00', '30.18', null, '0.15088', '0.15088', '卖服装', '买裤子');
INSERT INTO `ams_accountitem_history` VALUES ('719', '2017101914273110598', '367', '369', null, '74', '0', null, 'CNY', '217', null, '217', '23', '2323', null, '0', '3', '1', '249', '2017-10-11', '2017-10-19', null, '2017-10-19', null, null, '1508394493176', '305', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', null, '232.00', '35.01', null, '0.15089', '0.15089', '卖服装', '买衬衫');
INSERT INTO `ams_accountitem_history` VALUES ('720', '2017101914273110598', '317', '326', null, '74', '1', null, 'EUR', '217', null, '217', '23', '2323', null, '0', '3', '1', '249', '2017-10-19', '2017-10-19', null, '2017-10-19', null, null, '1508394767817', '302', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', null, '2323.00', '2741.97', null, '1.18036', '1.18036', '动物园', '马儿');
INSERT INTO `ams_accountitem_history` VALUES ('721', '2017101914273110598', '295', '296', null, '74', '1', null, 'USD', '217', null, '217', '23', '2323', null, '0', '3', '0', '249', '2017-10-26', '2017-10-19', null, '2017-10-19', null, null, '1508394767819', '308', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', null, '232.00', '232.00', null, '1.00000', '1.00000', '水果类目2', '水果苹果2');
INSERT INTO `ams_accountitem_history` VALUES ('722', '2017101914273110598', '367', '369', null, '74', '1', null, 'CNY', '217', null, '217', '23', '2323', null, '0', '3', '0', '249', '2017-10-26', '2017-10-19', null, '2017-10-19', null, null, '1508394767820', '307', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', null, '2323.00', '350.52', null, '0.15089', '0.15089', '卖服装', '买衬衫');
INSERT INTO `ams_accountitem_history` VALUES ('723', '2017101914273110598', '328', '335', null, '74', '1', null, 'AUD', '217', '217', null, '23', '2323而我热若', null, '0', '2', '0', '249', '2017-10-11', '2017-10-19', '2017-10-19', null, null, null, '1508406320429', '306', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', null, '2323.00', '1826.40', null, '0.78523', '0.78623', '动物', '羊');
INSERT INTO `ams_accountitem_history` VALUES ('724', '2017101914273110598', '328', '335', null, '74', '1', null, 'CNY', '217', null, '217', '23', '2323', null, '0', '3', '1', '249', '2017-10-12', '2017-10-19', null, '2017-10-19', null, null, '1508406333843', '304', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', null, '2323.00', '350.69', null, '0.15097', '0.15097', '动物', '羊');
INSERT INTO `ams_accountitem_history` VALUES ('725', '2017101914273110598', '295', '296', null, '74', '1', null, 'USD', '217', null, '217', '23', '2323', null, '0', '4', '0', '249', '2017-10-26', '2017-10-19', null, '2017-10-19', null, '0.00', '1508406420370', '308', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', '232', '232.00', '232.00', '0.00', '1.00000', '1.00000', '水果类目2', '水果苹果2');
INSERT INTO `ams_accountitem_history` VALUES ('726', '2017101914273110598', '367', '369', null, '74', '1', null, 'CNY', '217', null, '217', '23', '2323', null, '0', '4', '0', '249', '2017-10-26', '2017-10-19', null, '2017-10-19', null, '0.00', '1508406420371', '307', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', '232', '2323.00', '350.52', '0.00', '0.15089', '0.15089', '卖服装', '买衬衫');
INSERT INTO `ams_accountitem_history` VALUES ('727', '2017101914273110598', '328', '335', null, '74', '1', null, 'CNY', '217', null, '217', '23', '2323', null, '0', '4', '1', '249', '2017-10-12', '2017-10-19', null, '2017-10-19', null, '0.00', '1508406420373', '304', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', '232', '2323.00', '350.69', '0.00', '0.15097', '0.15097', '动物', '羊');
INSERT INTO `ams_accountitem_history` VALUES ('728', '2017101914273110598', '317', '326', null, '74', '1', null, 'EUR', '217', null, '217', '23', '2323', null, '0', '4', '1', '249', '2017-10-19', '2017-10-19', null, '2017-10-19', null, '0.00', '1508406420374', '302', 'B2B', 'USD', 'USD', 'PLOK', '酒水小李子', '232', '2323.00', '2741.97', '0.00', '1.18036', '1.18036', '动物园', '马儿');
INSERT INTO `ams_accountitem_history` VALUES ('729', '2017101913505780386', '367', '369', null, '74', '1', '买多送多', 'CNY', '217', null, '217', '2005', '价格实惠', null, '0', '4', '0', '249', '2017-10-19', '2017-10-19', null, '2017-10-19', null, '0.00', '1508406420380', '300', 'B3B', 'USD', 'USD', 'PLOK', '酒水小李子', '232', '2000.00', '301.76', '0.00', '0.15088', '0.15088', '卖服装', '买衬衫');
INSERT INTO `ams_accountitem_history` VALUES ('730', '2017102013042814401', '232', '248', null, '44', '1', '123', 'CNY', '202', null, null, '12345', '12', null, '0', '1', '1', '226', '2017-10-20', '2017-10-20', null, null, null, null, '1508475868334', '309', 'B2B', 'USD', 'CNY', 'OOPK', '胡亥结算对象测试', null, '22.00', '3.32', null, '0.15106', '1.00000', '增值服务', 'Toll FEE');
INSERT INTO `ams_accountitem_history` VALUES ('731', '2017102014040011160', '167', '200', null, '90', '1', '1212', 'AUD', '26', null, null, '12', '121212', null, '0', '1', '1', '4', '2017-10-20', '2017-10-20', null, null, null, null, '1508479440231', '310', 'GH', 'USD', 'USD', null, '的风格大方古典风格', null, '1212.00', '951.18', null, '0.78481', '0.78481', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('732', '2017102016093533936', '167', '169', null, '90', '1', '2323', 'CNY', '26', null, null, '2323', '23232', null, '0', '1', '1', '4', '2017-10-20', '2017-10-20', null, null, null, null, '1508486975946', '311', 'CD', 'USD', 'USD', null, '的风格大方古典风格', null, '2323.00', '351.08', null, '0.15113', '0.15113', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('733', '2017102016093533936', '167', '169', null, '90', '1', '2323', 'CNY', '26', null, '26', '2323', '23232', null, '0', '3', '1', '4', '2017-10-20', '2017-10-20', null, '2017-10-20', null, null, '1508487056494', '311', 'CD', 'USD', 'USD', null, '的风格大方古典风格', null, '2323.00', '351.08', null, '0.15113', '0.15113', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('734', '2017102014040011160', '167', '200', null, '90', '1', '1212', 'AUD', '26', null, '26', '12', '121212', null, '0', '3', '1', '4', '2017-10-20', '2017-10-20', null, '2017-10-20', null, null, '1508487056496', '310', 'GH', 'USD', 'USD', null, '的风格大方古典风格', null, '1212.00', '951.18', null, '0.78481', '0.78481', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('735', '2017102018315889855', '167', '169', null, '91', '1', null, 'CNY', '26', null, null, '123', null, null, '0', '1', '1', '4', '2017-10-20', '2017-10-20', null, null, null, null, '1508495518428', '312', 'GH', 'USD', 'USD', null, '必填项供应商', null, '1212.00', '183.11', null, '0.15108', '0.15108', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('736', '2017102018315889855', '157', '161', null, '88', '1', null, 'AUD', '26', '26', null, '123456', null, null, '0', '2', '1', '4', '2017-10-20', '2017-10-20', '2017-10-20', null, null, null, '1508495693470', '312', 'B2C', 'USD', 'USD', null, '张三', null, '1212.00', '951.26', null, '0.78487', '0.78487', '鬼屋', '僵尸');
INSERT INTO `ams_accountitem_history` VALUES ('737', '2017102018315889855', '157', '161', null, '88', '1', '沙发斯蒂芬', 'AUD', '26', '26', null, '123456', '是的冯绍峰', null, '0', '2', '1', '4', '2017-10-20', '2017-10-20', '2017-10-20', null, null, null, '1508495717578', '312', 'B2C', 'USD', 'USD', null, '张三', null, '1212.00', '951.26', null, '0.78487', '0.78487', '鬼屋', '僵尸');
INSERT INTO `ams_accountitem_history` VALUES ('738', '2017102018315889855', '167', '168', null, '89', '0', '沙发斯蒂芬是非得失', 'AUD', '26', '26', null, '123456789', '是的冯绍峰电费是否', null, '0', '2', '1', '4', '2017-10-21', '2017-10-20', '2017-10-20', null, null, null, '1508495753826', '312', 'FG', 'USD', 'USD', null, '李四', null, '2323.00', '1823.25', null, '0.78487', '0.78487', '碰碰车', '入场费');
INSERT INTO `ams_accountitem_history` VALUES ('739', '2017102410540991424', '232', '245', null, '44', '1', '交易概要', 'CNY', '202', null, null, '99990083', '这是备注', null, '0', '1', '1', '226', '2017-10-25', '2017-10-24', null, null, null, null, '1508813649334', '313', 'B2C', 'USD', 'CNY', 'OOPK', '胡亥结算对象测试', null, '25.00', '3.77', null, '0.15075', '1.00000', '增值服务', '打带费');
INSERT INTO `ams_accountitem_history` VALUES ('740', '2017102410540991424', '232', '245', null, '44', '1', '交易概要', 'CNY', '202', null, '202', '99990083', '这是备注', null, '0', '3', '1', '226', '2017-10-25', '2017-10-24', null, '2017-10-24', null, null, '1508813750478', '313', 'B2C', 'USD', 'CNY', 'OOPK', '胡亥结算对象测试', null, '25.00', '3.77', null, '0.15075', '1.00000', '增值服务', '打带费');
INSERT INTO `ams_accountitem_history` VALUES ('741', '2017093014565463345', '157', '162', null, '27', '0', '121', 'AUD', '130', null, '130', '122', '12212', null, '0', '3', '1', '4', '2017-09-30', '2017-10-26', null, '2017-09-30', null, null, '1508981887449', '213', 'GH', 'USD', 'USD', null, '乐其有限公司', null, '12.00', '9.42', null, '0.78462', '0.78462', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('742', '2017101717584966067', '255', '257', null, '韩衣控-中国', '1', '12', 'CNY', '213', '213', '213', '002', '122234', null, '0', '3', '1', '239', '2017-10-19', '2017-10-26', '2017-10-17', '2017-10-17', null, null, null, null, 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '12.00', '1.81', null, '0.15111', '0.15111', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('743', '2017102018315889855', '167', '168', null, '89', '0', '沙发斯蒂芬是非得失', 'AUD', '26', '26', '4', '123456789', '是的冯绍峰电费是否', null, '0', '3', '1', '4', '2017-10-21', '2017-10-26', '2017-10-20', '2017-10-26', null, null, '1508999860131', '312', 'FG', 'USD', 'USD', null, '李四', null, '2323.00', '1823.25', null, '0.78487', '0.78487', '碰碰车', '入场费');
INSERT INTO `ams_accountitem_history` VALUES ('744', '2017101717584966067', '255', '257', null, '韩衣控-中国', '1', '12', 'CNY', '213', '213', '213', '002', '122234', null, '0', '3', '1', '239', '2017-10-19', '2017-10-26', '2017-10-17', '2017-10-17', null, null, '1508999965747', '246', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '12.00', '1.81', null, '0.15111', '0.15111', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('745', '2017093014565463345', '157', '162', null, '27', '0', '121', 'AUD', '130', null, '130', '122', '12212', null, '0', '3', '1', '4', '2017-09-30', '2017-10-26', null, '2017-09-30', null, null, '1509001638482', '213', 'GH', 'USD', 'USD', null, '乐其有限公司', null, '12.00', '9.42', null, '0.78462', '0.78462', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('746', '2017101717584966067', '255', '257', null, '韩衣控-中国', '1', '12', 'CNY', '213', '213', '213', '002', '122234', null, '0', '3', '1', '239', '2017-10-19', '2017-10-26', '2017-10-17', '2017-10-17', null, null, '1509001635724', '246', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '12.00', '1.81', null, '0.15111', '0.15111', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('747', '2017101717562231809', '255', '257', null, '53', '1', '234', 'CNY', '213', null, '213', '4424', '234234', null, '0', '4', '1', '239', '2017-10-12', '2017-10-26', null, '2017-10-17', null, '0.00', '1509001684814', '245', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '233', '234.00', '35.36', '0.00', '0.15111', '0.15111', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('748', '2017101717584966067', '255', '257', null, '韩衣控-中国', '1', '12', 'CNY', '213', '213', '213', '002', '122234', null, '0', '3', '1', '239', '2017-10-19', '2017-10-26', '2017-10-17', '2017-10-17', null, null, '1509001866032', '246', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '12.00', '1.81', null, '0.15111', '0.15111', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('749', '2017101717584966067', '255', '257', null, '韩衣控-中国', '1', '12', 'CNY', '213', '213', '213', '002', '122234', null, '0', '3', '1', '239', '2017-10-19', '2017-10-26', '2017-10-17', '2017-10-17', null, null, '1509001924672', '246', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '12.00', '1.81', null, '0.15111', '0.15111', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('750', '2017101717584966067', '255', '257', null, '韩衣控-中国', '1', '12', 'CNY', '213', '213', '213', '002', '122234', null, '0', '3', '1', '239', '2017-10-19', '2017-10-26', '2017-10-17', '2017-10-17', null, null, '1509002096144', '246', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '12.00', '1.81', null, '0.15111', '0.15111', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('751', '2017101717584966067', '255', '257', null, '韩衣控-中国', '1', '12', 'CNY', '213', '213', '213', '002', '122234', null, '0', '3', '1', '239', '2017-10-19', '2017-10-26', '2017-10-17', '2017-10-17', null, null, '1509002193977', '246', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '12.00', '1.81', null, '0.15111', '0.15111', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('752', '2017101717584966067', '255', '257', null, '韩衣控-中国', '1', '12', 'CNY', '213', '213', '213', '002', '122234', null, '0', '3', '1', '239', '2017-10-19', '2017-10-26', '2017-10-17', '2017-10-17', null, null, '1509002232435', '246', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '12.00', '1.81', null, '0.15111', '0.15111', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('753', '2017101717584966067', '255', '257', null, '韩衣控-中国', '1', '12', 'CNY', '213', '213', '213', '002', '122234', null, '0', '3', '1', '239', '2017-10-19', '2017-10-26', '2017-10-17', '2017-10-17', null, null, '1509002430476', '246', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '12.00', '1.81', null, '0.15111', '0.15111', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('754', '2017101717584966067', '255', '257', null, '韩衣控-中国', '1', '12', 'CNY', '213', '213', '213', '002', '122234', null, '0', '3', '1', '239', '2017-10-19', '2017-10-26', '2017-10-17', '2017-10-17', null, null, '1509002448982', '246', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '12.00', '1.81', null, '0.15111', '0.15111', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('755', '2017102615223793487', '64', '65', null, '19', '1', 'sorry', 'CNY', '246', null, null, null, '高端大气上档次，低调奢华有内涵。\n奔放洋气有深度，简约时尚国际范。\n低端粗俗甩节操，土憋矫情无下限。\n装模作样绿茶婊，外猛内柔女汉子。\n卖萌嘟嘴剪刀手，忧郁深沉无所谓。\n狂拽帅气吊炸天，冷艳高贵接地气。\n时尚亮丽小清新，可爱乡村非主流。\n贵族王朝杀马特，提莫团战必须死。', null, '0', '1', '0', '306', null, '2017-10-26', null, null, null, null, '1509002571885', '331', 'O2OP', 'USD', 'USD', 'BILI', '凤舞九天', null, '100000.00', null, null, '0.10000', null, null, null);
INSERT INTO `ams_accountitem_history` VALUES ('756', '2017102615340923044', '630', '631', null, '53', '1', null, 'CNY', '213', null, '213', '345235', '345', null, '0', '3', '0', '239', '2017-10-18', '2017-10-26', null, '2017-10-26', null, null, '1509003274788', '334', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '34.00', '5.13', null, '0.15078', '0.15078', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('757', '2017102615340923044', '255', '256', null, '53', '1', null, 'CNY', '213', null, '213', '345235', null, null, '0', '3', '1', '239', '2017-10-18', '2017-10-26', null, '2017-10-26', null, null, '1509003274819', '333', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '345.00', '52.02', null, '0.15078', '0.15078', '通讯费用', '话费');
INSERT INTO `ams_accountitem_history` VALUES ('758', '2017102615340923044', '630', '631', null, '53', '1', null, 'CNY', '213', null, '213', '345235', '345', null, '0', '3', '1', '239', '2017-10-19', '2017-10-26', null, '2017-10-26', null, null, '1509003274849', '332', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '345.00', '52.02', null, '0.15078', '0.15078', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('759', '2017102615071834357', '630', '631', null, '55', '1', '12', 'CNY', '213', null, '213', '908766897', '12', null, '0', '3', '1', '239', '2017-10-27', '2017-10-26', null, '2017-10-26', null, null, '1509003274880', '323', 'C2C', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '12.00', '1.81', null, '0.15074', '1.00000', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('760', '2017102609380797017', '255', '258', null, '53', '1', '234', 'AUD', '213', null, '213', '51252', '234', null, '0', '3', '1', '239', '2017-10-27', '2017-10-26', null, '2017-10-26', null, null, '1509003285109', '314', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '234.00', '180.35', null, '0.77071', '0.77071', '通讯费用', '短信');
INSERT INTO `ams_accountitem_history` VALUES ('761', '2017102615340923044', '630', '631', null, '53', '1', null, 'CNY', '213', null, '213', '345235', '345', null, '0', '4', '0', '239', '2017-10-18', '2017-10-26', null, '2017-10-26', null, '0.00', '1509003317751', '334', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '234', '34.00', '5.13', '0.00', '0.15078', '0.15078', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('762', '2017102615340923044', '255', '256', null, '53', '1', null, 'CNY', '213', null, '213', '345235', null, null, '0', '4', '1', '239', '2017-10-18', '2017-10-26', null, '2017-10-26', null, '0.00', '1509003317779', '333', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '234', '345.00', '52.02', '0.00', '0.15078', '0.15078', '通讯费用', '话费');
INSERT INTO `ams_accountitem_history` VALUES ('763', '2017102615340923044', '630', '631', null, '53', '1', null, 'CNY', '213', null, '213', '345235', '345', null, '0', '4', '1', '239', '2017-10-19', '2017-10-26', null, '2017-10-26', null, '0.00', '1509003317810', '332', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '234', '345.00', '52.02', '0.00', '0.15078', '0.15078', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('764', '2017102609380797017', '255', '258', null, '53', '1', '234', 'AUD', '213', null, '213', '51252', '234', null, '0', '4', '1', '239', '2017-10-27', '2017-10-26', null, '2017-10-26', null, '0.00', '1509003317829', '314', 'B2C', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '234', '234.00', '180.35', '0.00', '0.77071', '0.77071', '通讯费用', '短信');
INSERT INTO `ams_accountitem_history` VALUES ('765', '2017102615071834357', '630', '631', null, '55', '1', '12', 'CNY', '213', null, '213', '908766897', '12', null, '0', '4', '1', '239', '2017-10-27', '2017-10-26', null, '2017-10-26', null, '0.00', '1509003460771', '323', 'C2C', 'USD', 'CNY', 'KJNZ', '网易考拉', '235', '12.00', '1.81', '0.00', '0.15074', '1.00000', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('766', '2017101714405380760', '255', '257', null, '55', '1', '234', 'CNY', '213', null, '213', '2535', '24', null, '0', '4', '0', '239', '2017-10-13', '2017-10-26', null, '2017-10-17', null, '0.00', '1509003460800', '219', 'B2B', 'USD', 'CNY', 'KJNZ', '网易考拉', '235', '24.00', '3.63', '0.00', '0.15114', '1.00000', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('767', '2017101810480674507', '255', '257', null, '53', '1', '234', 'CNY', '213', null, '213', '124', '234', null, '0', '3', '1', '239', '2017-10-19', '2017-10-26', null, '2017-10-26', null, null, '1509004187149', '265', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '23.00', '3.48', null, '0.15131', '0.15131', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('768', '2017101809481658467', '255', '257', null, '53', '1', '345', 'CNY', '213', null, '213', '45345', '345', null, '0', '3', '0', '239', '2017-10-13', '2017-10-26', null, '2017-10-26', null, null, '1509004187210', '260', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', null, '345.00', '52.19', null, '0.15129', '0.15129', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('769', '2017101718464585270', '255', '258', null, '55', '0', '345', 'CNY', '213', null, '213', '25', '35', null, '0', '3', '1', '239', '2017-10-20', '2017-10-26', null, '2017-10-26', null, null, '1509004187266', '257', 'B2C', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '345.00', '52.13', null, '0.15111', '1.00000', '通讯费用', '短信');
INSERT INTO `ams_accountitem_history` VALUES ('770', '2017101810480674507', '255', '257', null, '53', '1', '234', 'CNY', '213', null, '213', '124', '234', null, '0', '4', '1', '239', '2017-10-19', '2017-10-26', null, '2017-10-26', null, '0.00', '1509004219789', '265', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '236', '23.00', '3.48', '0.00', '0.15131', '0.15131', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('771', '2017101809481658467', '255', '257', null, '53', '1', '345', 'CNY', '213', null, '213', '45345', '345', null, '0', '4', '0', '239', '2017-10-13', '2017-10-26', null, '2017-10-26', null, '0.00', '1509004219819', '260', 'B2B', 'USD', 'USD', 'KJNZ', '韩衣控-中国', '236', '345.00', '52.19', '0.00', '0.15129', '0.15129', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('772', '2017103014580285062', '661', '662', null, '95', '0', '1212', 'CNY', '242', null, null, '12', '12121212', null, '0', '1', '1', '303', '2017-10-30', '2017-10-30', null, null, null, null, '1509346682760', '335', 'B2B', 'USD', 'USD', 'YYUU', '双方是否', null, '1212.00', '182.37', null, '0.15047', '0.15047', '112', '122');
INSERT INTO `ams_accountitem_history` VALUES ('773', '2017103014583837729', '661', '662', null, '95', '1', '2323', 'AUD', '242', null, null, '2323', '232323', null, '0', '1', '1', '303', '2017-10-30', '2017-10-30', null, null, null, null, '1509346718978', '336', 'B2B', 'USD', 'USD', 'YYUU', '双方是否', null, '2323.00', '1782.54', null, '0.76734', '0.76734', '112', '122');
INSERT INTO `ams_accountitem_history` VALUES ('774', '2017103016071489850', '666', '668', null, '95', '1', '12121', 'AUD', '242', null, null, '45', '12112', null, '0', '1', '0', '303', '2017-10-30', '2017-10-30', null, null, null, null, '1509350834080', '337', 'B2B', 'USD', 'USD', 'YYUU', '双方是否', null, '1212.00', '929.16', null, '0.76664', '0.76664', '动物', '狮子');
INSERT INTO `ams_accountitem_history` VALUES ('775', '2017103016071489850', '666', '668', null, '95', '1', '12121', 'AUD', '242', null, '242', '45', '12112', null, '0', '3', '0', '303', '2017-10-30', '2017-10-30', null, '2017-10-30', null, null, '1509350850739', '337', 'B2B', 'USD', 'USD', 'YYUU', '双方是否', null, '1212.00', '929.16', null, '0.76664', '0.76664', '动物', '狮子');
INSERT INTO `ams_accountitem_history` VALUES ('776', '2017103016071489850', '666', '668', null, '95', '1', '12121', 'AUD', '242', null, '242', '45', '12112', null, '0', '4', '0', '303', '2017-10-30', '2017-10-30', null, '2017-10-30', null, '0.00', '1509350899059', '337', 'B2B', 'USD', 'USD', 'YYUU', '双方是否', '237', '1212.00', '929.16', '0.00', '0.76664', '0.76664', '动物', '狮子');
INSERT INTO `ams_accountitem_history` VALUES ('777', '2017103016071489850', '666', '668', null, '95', '1', '12121', 'AUD', '242', null, '242', '45', '12112', null, '0', '5', '0', '303', '2017-10-30', '2017-10-30', null, '2017-10-30', null, '0.00', '1509351295648', '337', 'B2B', 'USD', 'USD', 'YYUU', '双方是否', '237', '1212.00', '929.16', '0.00', '0.76664', '0.76664', '动物', '狮子');
INSERT INTO `ams_accountitem_history` VALUES ('778', '2017103016071489850', '666', '668', null, '95', '1', '12121', 'AUD', '242', null, '242', '45', '12112', null, '0', '6', '0', '303', '2017-10-30', '2017-10-30', null, '2017-10-30', null, '0.00', '1509351332032', '337', 'B2B', 'USD', 'USD', 'YYUU', '双方是否', '237', '1212.00', '929.16', '0.00', '0.76664', '0.76664', '动物', '狮子');
INSERT INTO `ams_accountitem_history` VALUES ('779', '2017103016071489850', '666', '668', null, '95', '1', '12121', 'AUD', '242', null, '242', '45', '12112', null, '0', '5', '0', '303', '2017-10-30', '2017-10-30', null, '2017-10-30', null, '0.00', '1509351345380', '337', 'B2B', 'USD', 'USD', 'YYUU', '双方是否', '237', '1212.00', '929.16', '0.00', '0.76664', '0.76664', '动物', '狮子');
INSERT INTO `ams_accountitem_history` VALUES ('780', '2017103016263092461', '666', '669', null, '95', '1', '1212', 'CNY', '242', null, null, '12121212', '121212', null, '0', '1', '1', '303', '2017-10-30', '2017-10-30', null, null, null, null, '1509351990502', '338', 'B2B', 'USD', 'USD', 'YYUU', '双方是否', null, '1212.00', '182.34', null, '0.15044', '0.15044', '动物', '大象');
INSERT INTO `ams_accountitem_history` VALUES ('781', '2017103016263092461', '666', '669', null, '95', '1', '1212', 'CNY', '242', null, '242', '12121212', '121212', null, '0', '3', '1', '303', '2017-10-30', '2017-10-30', null, '2017-10-30', null, null, '1509352682119', '338', 'B2B', 'USD', 'USD', 'YYUU', '双方是否', null, '1212.00', '182.34', null, '0.15044', '0.15044', '动物', '大象');
INSERT INTO `ams_accountitem_history` VALUES ('782', '2017103014583837729', '661', '662', null, '95', '1', '2323', 'AUD', '242', null, '242', '2323', '232323', null, '0', '3', '1', '303', '2017-10-30', '2017-10-30', null, '2017-10-30', null, null, '1509352682121', '336', 'B2B', 'USD', 'USD', 'YYUU', '双方是否', null, '2323.00', '1782.54', null, '0.76734', '0.76734', '112', '122');
INSERT INTO `ams_accountitem_history` VALUES ('783', '2017103014580285062', '661', '662', null, '95', '0', '1212', 'CNY', '242', null, '242', '12', '12121212', null, '0', '3', '1', '303', '2017-10-30', '2017-10-30', null, '2017-10-30', null, null, '1509352682122', '335', 'B2B', 'USD', 'USD', 'YYUU', '双方是否', null, '1212.00', '182.37', null, '0.15047', '0.15047', '112', '122');
INSERT INTO `ams_accountitem_history` VALUES ('784', '2017110314303480421', '736', '751', null, '102', '1', '权限测试', 'CNY', '9', null, null, 'OOPK', '权限测试', null, '0', '1', '1', '134', '2017-11-03', '2017-11-03', null, null, null, null, '1509690634253', '339', 'B2C', 'USD', 'CNY', 'XXXX', '结算权限新增', null, '23.00', '3.48', null, '0.15111', '1.00000', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('785', '2017110314313957788', '736', '752', null, '102', '1', '支出权限', 'CNY', '9', null, null, 'KKPO', '支出权限', null, '0', '1', '0', '134', '2017-11-03', '2017-11-03', null, null, null, null, '1509690699903', '340', 'B2C', 'USD', 'CNY', 'XXXX', '结算权限新增', null, '33.00', '4.99', null, '0.15111', '1.00000', '增值服务', 'Toll FEE');
INSERT INTO `ams_accountitem_history` VALUES ('786', '2017110314313957788', '736', '752', null, '102', '1', '支出权限', 'CNY', '9', null, '9', 'KKPO', '支出权限', null, '0', '3', '0', '134', '2017-11-03', '2017-11-03', null, '2017-11-03', null, null, '1509690736054', '340', 'B2C', 'USD', 'CNY', 'XXXX', '结算权限新增', null, '33.00', '4.99', null, '0.15111', '1.00000', '增值服务', 'Toll FEE');
INSERT INTO `ams_accountitem_history` VALUES ('787', '2017110314303480421', '736', '751', null, '102', '1', '权限测试', 'CNY', '9', null, '9', 'OOPK', '权限测试', null, '0', '3', '1', '134', '2017-11-03', '2017-11-03', null, '2017-11-03', null, null, '1509690780215', '339', 'B2C', 'USD', 'CNY', 'XXXX', '结算权限新增', null, '23.00', '3.48', null, '0.15111', '1.00000', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('788', '2017110314303480421', '736', '751', null, '102', '1', '权限测试', 'CNY', '9', null, '9', 'OOPK', '权限测试', null, '0', '4', '1', '134', '2017-11-03', '2017-11-03', null, '2017-11-03', null, '0.00', '1509690997626', '339', 'B2C', 'USD', 'CNY', 'XXXX', '结算权限新增', '238', '23.00', '3.48', '0.00', '0.15111', '1.00000', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('789', '2017110314375252292', '736', '750', null, '102', '1', null, 'CNY', '9', null, '9', 'YUKO', '1234', null, '0', '3', '0', '134', '2017-11-03', '2017-11-03', null, '2017-11-03', null, null, '1509691552712', '342', 'B2C', 'USD', 'CNY', 'XXXX', '结算权限新增', null, '12.00', '1.81', null, '0.15111', '1.00000', '增值服务', '托盘费');
INSERT INTO `ams_accountitem_history` VALUES ('790', '2017110314375252292', '736', '753', null, '102', '1', null, 'CNY', '9', null, '9', 'YUKO', '123', null, '0', '3', '1', '134', '2017-11-03', '2017-11-03', null, '2017-11-03', null, null, '1509691552742', '341', 'B2C', 'USD', 'CNY', 'XXXX', '结算权限新增', null, '23.00', '3.48', null, '0.15111', '1.00000', '增值服务', '包材费用');
INSERT INTO `ams_accountitem_history` VALUES ('791', '2017110314375252292', '736', '750', null, '102', '1', null, 'CNY', '9', null, '9', 'YUKO', '1234', null, '0', '4', '0', '134', '2017-11-03', '2017-11-03', null, '2017-11-03', null, '0.00', '1509691646693', '342', 'B2C', 'USD', 'CNY', 'XXXX', '结算权限新增', '239', '12.00', '1.81', '0.00', '0.15111', '1.00000', '增值服务', '托盘费');
INSERT INTO `ams_accountitem_history` VALUES ('792', '2017110314375252292', '736', '753', null, '102', '1', null, 'CNY', '9', null, '9', 'YUKO', '123', null, '0', '4', '1', '134', '2017-11-03', '2017-11-03', null, '2017-11-03', null, '0.00', '1509691646734', '341', 'B2C', 'USD', 'CNY', 'XXXX', '结算权限新增', '239', '23.00', '3.48', '0.00', '0.15111', '1.00000', '增值服务', '包材费用');
INSERT INTO `ams_accountitem_history` VALUES ('793', '2017110314313957788', '736', '752', null, '102', '1', '支出权限', 'CNY', '9', null, '9', 'KKPO', '支出权限', null, '0', '4', '0', '134', '2017-11-03', '2017-11-03', null, '2017-11-03', null, '0.00', '1509691646763', '340', 'B2C', 'USD', 'CNY', 'XXXX', '结算权限新增', '239', '33.00', '4.99', '0.00', '0.15111', '1.00000', '增值服务', 'Toll FEE');
INSERT INTO `ams_accountitem_history` VALUES ('794', '2017110314303480421', '736', '751', null, '102', '1', '权限测试', 'CNY', '9', null, '9', 'OOPK', '权限测试', null, '0', '5', '1', '134', '2017-11-03', '2017-11-03', null, '2017-11-03', null, '0.00', '1509691716534', '339', 'B2C', 'USD', 'CNY', 'XXXX', '结算权限新增', '238', '23.00', '3.48', '0.00', '0.15111', '1.00000', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('795', '2017110314303480421', '736', '751', null, '102', '1', '权限测试', 'CNY', '9', null, '9', 'OOPK', '权限测试', null, '0', '6', '1', '134', '2017-11-03', '2017-11-03', null, '2017-11-03', null, '0.00', '1509691760495', '339', 'B2C', 'USD', 'CNY', 'XXXX', '结算权限新增', '238', '23.00', '3.48', '0.00', '0.15111', '1.00000', '增值服务', 'Gate Charge流浮山');
INSERT INTO `ams_accountitem_history` VALUES ('796', '2017110314375252292', '736', '750', null, '102', '1', null, 'CNY', '9', null, '9', 'YUKO', '1234', null, '0', '5', '0', '134', '2017-11-03', '2017-11-03', null, '2017-11-03', null, '0.00', '1509691775137', '342', 'B2C', 'USD', 'CNY', 'XXXX', '结算权限新增', '239', '12.00', '1.81', '0.00', '0.15111', '1.00000', '增值服务', '托盘费');
INSERT INTO `ams_accountitem_history` VALUES ('797', '2017110314375252292', '736', '753', null, '102', '1', null, 'CNY', '9', null, '9', 'YUKO', '123', null, '0', '5', '1', '134', '2017-11-03', '2017-11-03', null, '2017-11-03', null, '0.00', '1509691775138', '341', 'B2C', 'USD', 'CNY', 'XXXX', '结算权限新增', '239', '23.00', '3.48', '0.00', '0.15111', '1.00000', '增值服务', '包材费用');
INSERT INTO `ams_accountitem_history` VALUES ('798', '2017110314313957788', '736', '752', null, '102', '1', '支出权限', 'CNY', '9', null, '9', 'KKPO', '支出权限', null, '0', '5', '0', '134', '2017-11-03', '2017-11-03', null, '2017-11-03', null, '0.00', '1509691775139', '340', 'B2C', 'USD', 'CNY', 'XXXX', '结算权限新增', '239', '33.00', '4.99', '0.00', '0.15111', '1.00000', '增值服务', 'Toll FEE');
INSERT INTO `ams_accountitem_history` VALUES ('799', '2017110610264890403', '757', '759', null, '101', '0', '23', 'AUD', '246', null, null, '23', '23', null, '0', '1', '1', '306', '2017-11-21', '2017-11-06', null, null, null, null, '1509935208181', '343', 'B2B', 'USD', 'USD', 'BILI', '肯德基', null, '23.00', '17.59', null, '0.76476', '0.76476', '税费', '123321');
INSERT INTO `ams_accountitem_history` VALUES ('800', '2017110610380228110', '757', '759', null, '101', '0', '23', 'AUD', '246', null, null, '2323', null, null, '0', '1', '1', '306', '2017-11-07', '2017-11-06', null, null, null, null, '1509935882324', '344', 'B2B', 'USD', 'USD', 'BILI', '肯德基', null, '23.00', '17.59', null, '0.76476', '0.76476', '税费', '123321');
INSERT INTO `ams_accountitem_history` VALUES ('801', '2017110610393923531', '757', '759', null, '101', '0', '32', 'AUD', '246', null, null, '23', null, null, '0', '1', '0', '306', '2017-11-07', '2017-11-06', null, null, null, null, '1509935979815', '345', 'B2B', 'USD', 'USD', 'BILI', '肯德基', null, '23.00', '17.59', null, '0.76476', '0.76476', '税费', '123321');
INSERT INTO `ams_accountitem_history` VALUES ('802', '2017110610410392260', '757', '759', null, '101', '1', '34', 'AUD', '246', null, null, '34', '43', null, '0', '1', '0', '306', '2017-11-15', '2017-11-06', null, null, null, null, '1509936063408', '346', 'B2B', 'USD', 'USD', 'BILI', '肯德基', null, '34.00', '26.00', null, '0.76476', '0.76476', '税费', '123321');
INSERT INTO `ams_accountitem_history` VALUES ('803', '2017110610410392260', '757', '759', null, '101', '1', '34', 'AUD', '246', '246', null, '34', '43', null, '0', '2', '0', '306', '2017-11-15', '2017-11-06', '2017-11-06', null, null, null, '1509938611440', '346', 'B2B', 'USD', 'USD', 'BILI', '肯德基', null, '34.00', '26.00', null, '0.76476', '0.76476', '税费', '123321');
INSERT INTO `ams_accountitem_history` VALUES ('804', '2017110610410392260', '757', '759', null, '101', '1', '34', 'AUD', '246', '246', '246', '34', '43', null, '0', '3', '0', '306', '2017-11-15', '2017-11-06', '2017-11-06', '2017-11-06', null, null, '1509938627916', '346', 'B2B', 'USD', 'USD', 'BILI', '肯德基', null, '34.00', '26.00', null, '0.76476', '0.76476', '税费', '123321');
INSERT INTO `ams_accountitem_history` VALUES ('805', '2017110610393923531', '757', '759', null, '101', '0', '32', 'AUD', '246', null, '246', '23', null, null, '0', '3', '0', '306', '2017-11-07', '2017-11-06', null, '2017-11-06', null, null, '1509938627956', '345', 'B2B', 'USD', 'USD', 'BILI', '肯德基', null, '23.00', '17.59', null, '0.76476', '0.76476', '税费', '123321');
INSERT INTO `ams_accountitem_history` VALUES ('806', '2017110610410392260', '757', '759', null, '101', '1', '34', 'AUD', '246', '246', '246', '34', '43', null, '0', '4', '0', '306', '2017-11-15', '2017-11-06', '2017-11-06', '2017-11-06', null, '0.00', '1509938645716', '346', 'B2B', 'USD', 'USD', 'BILI', '肯德基', '240', '34.00', '26.00', '0.00', '0.76476', '0.76476', '税费', '123321');
INSERT INTO `ams_accountitem_history` VALUES ('807', '2017110610264890403', '757', '759', null, '101', '0', '23', 'AUD', '246', null, '246', '23', '23', null, '0', '3', '1', '306', '2017-11-21', '2017-11-06', null, '2017-11-06', null, null, '1509945573450', '343', 'B2B', 'USD', 'USD', 'BILI', '肯德基', null, '23.00', '17.59', null, '0.76476', '0.76476', '税费', '123321');
INSERT INTO `ams_accountitem_history` VALUES ('808', '2017110610380228110', '757', '759', null, '101', '0', '23', 'AUD', '246', null, '246', '2323', null, null, '0', '3', '1', '306', '2017-11-07', '2017-11-06', null, '2017-11-06', null, null, '1509945573479', '344', 'B2B', 'USD', 'USD', 'BILI', '肯德基', null, '23.00', '17.59', null, '0.76476', '0.76476', '税费', '123321');
INSERT INTO `ams_accountitem_history` VALUES ('809', '2017102615223793487', '64', '65', null, '19', '1', 'sorry', 'CNY', '246', null, '246', null, '高端大气上档次，低调奢华有内涵。\n奔放洋气有深度，简约时尚国际范。\n低端粗俗甩节操，土憋矫情无下限。\n装模作样绿茶婊，外猛内柔女汉子。\n卖萌嘟嘴剪刀手，忧郁深沉无所谓。\n狂拽帅气吊炸天，冷艳高贵接地气。\n时尚亮丽小清新，可爱乡村非主流。\n贵族王朝杀马特，提莫团战必须死。', null, '0', '3', '0', '306', null, '2017-11-06', null, '2017-11-06', null, null, '1509945613499', '331', 'O2OP', 'USD', 'USD', 'BILI', '凤舞九天', null, '100000.00', null, null, '0.10000', '0.10000', null, null);
INSERT INTO `ams_accountitem_history` VALUES ('810', '2017102615202929855', '64', '65', null, '19', '1', 'sorry', 'CNY', '246', null, '246', null, '高端大气上档次，低调奢华有内涵。\n奔放洋气有深度，简约时尚国际范。\n低端粗俗甩节操，土憋矫情无下限。\n装模作样绿茶婊，外猛内柔女汉子。\n卖萌嘟嘴剪刀手，忧郁深沉无所谓。\n狂拽帅气吊炸天，冷艳高贵接地气。\n时尚亮丽小清新，可爱乡村非主流。\n贵族王朝杀马特，提莫团战必须死。', null, '0', '3', '0', '306', null, '2017-11-06', null, '2017-11-06', null, null, '1509945613520', '330', 'O2OP', 'USD', 'USD', 'BILI', '凤舞九天', null, '100000.00', null, null, '0.10000', '0.10000', null, null);
INSERT INTO `ams_accountitem_history` VALUES ('811', '2017110613205774963', '757', '758', null, '98', '1', '23', 'AUD', '246', null, null, '2323', null, null, '0', '1', '1', '306', '2017-11-08', '2017-11-06', null, null, null, null, '1509945657249', '347', 'P2B', 'USD', 'CNY', 'BILI', '驭剑', null, '32.00', '24.50', null, '0.76564', '5.07848', '税费', '123');
INSERT INTO `ams_accountitem_history` VALUES ('812', '2017110613205774963', '757', '758', null, '98', '1', '23', 'AUD', '246', null, '246', '2323', null, null, '0', '3', '1', '306', '2017-11-08', '2017-11-06', null, '2017-11-06', null, null, '1509945670032', '347', 'P2B', 'USD', 'CNY', 'BILI', '驭剑', null, '32.00', '24.50', null, '0.76564', '5.07848', '税费', '123');
INSERT INTO `ams_accountitem_history` VALUES ('813', '2017110613205774963', '757', '758', null, '98', '1', '23', 'AUD', '246', null, '246', '2323', null, null, '0', '4', '1', '306', '2017-11-08', '2017-11-06', null, '2017-11-06', null, '0.00', '1509945686042', '347', 'P2B', 'USD', 'CNY', 'BILI', '驭剑', '241', '32.00', '24.50', '0.00', '0.76564', '5.07848', '税费', '123');
INSERT INTO `ams_accountitem_history` VALUES ('814', '2017110614572230929', '271', '272', null, '68', '1', null, 'CNY', '220', null, null, '5342', null, null, '0', '1', '0', '251', '2017-11-18', '2017-11-06', null, null, null, null, '1509951442026', '348', 'B2B', 'USD', 'USD', 'ZJLS', '送货小李子222', null, '234.00', '35.24', null, '0.15062', '0.15062', '仓租费用', '常温区');
INSERT INTO `ams_accountitem_history` VALUES ('815', '2017110614572230929', '271', '272', null, '68', '1', null, 'CNY', '220', '220', null, '5342', null, null, '0', '2', '0', '251', '2017-11-18', '2017-11-06', '2017-11-06', null, null, null, '1509951479466', '348', 'B2B', 'USD', 'USD', 'ZJLS', '送货小李子222', null, '0.00', '-35.24', null, '0.15062', '0.15062', '仓租费用', '常温区');
INSERT INTO `ams_accountitem_history` VALUES ('816', '2017110614572230929', '271', '272', null, '68', '1', null, 'CNY', '220', '220', null, '5342', null, null, '0', '2', '0', '251', '2017-11-18', '2017-11-06', '2017-11-06', null, null, null, '1509951486176', '348', 'B2B', 'USD', 'USD', 'ZJLS', '送货小李子222', null, '0.00', '0.00', null, '0.15062', '0.15062', '仓租费用', '常温区');
INSERT INTO `ams_accountitem_history` VALUES ('817', '2017110614572230929', '271', '272', null, '68', '1', null, 'CNY', '220', '220', null, '5342', null, null, '0', '2', '0', '251', '2017-11-18', '2017-11-06', '2017-11-06', null, null, null, '1509951498646', '348', 'B2B', 'USD', 'USD', 'ZJLS', '送货小李子222', null, '213.00', '32.08', null, '0.15062', '0.15062', '仓租费用', '常温区');
INSERT INTO `ams_accountitem_history` VALUES ('818', '2017110614572230929', '271', '272', null, '68', '1', null, 'CNY', '220', '220', '220', '5342', null, null, '0', '3', '0', '251', '2017-11-18', '2017-11-06', '2017-11-06', '2017-11-06', null, null, '1509951520876', '348', 'B2B', 'USD', 'USD', 'ZJLS', '送货小李子222', null, '213.00', '32.08', null, '0.15062', '0.15062', '仓租费用', '常温区');
INSERT INTO `ams_accountitem_history` VALUES ('819', '2017110614572230929', '271', '272', null, '68', '1', null, 'CNY', '220', '220', '220', '5342', null, null, '0', '4', '0', '251', '2017-11-18', '2017-11-06', '2017-11-06', '2017-11-06', null, '0.00', '1509951579278', '348', 'B2B', 'USD', 'USD', 'ZJLS', '送货小李子222', '242', '213.00', '32.08', '0.00', '0.15062', '0.15062', '仓租费用', '常温区');
INSERT INTO `ams_accountitem_history` VALUES ('820', '2017110710235587830', '757', '758', null, '101', '1', '234', 'AUD', '286', null, null, '54235234', null, null, '0', '1', '1', '306', '2017-11-08', '2017-11-07', null, null, null, null, '1510021435878', '355', 'P2B', 'USD', 'USD', 'BILI', '肯德基', null, '2324.00', '1786.53', null, '0.76876', '0.76876', '税费', '123');
INSERT INTO `ams_accountitem_history` VALUES ('821', '2017110710235587830', '757', '758', null, '101', '1', '234', 'AUD', '286', null, '286', '54235234', null, null, '0', '3', '1', '306', '2017-11-08', '2017-11-07', null, '2017-11-07', null, null, '1510021505208', '355', 'P2B', 'USD', 'USD', 'BILI', '肯德基', null, '2324.00', '1786.53', null, '0.76876', '0.76876', '税费', '123');
INSERT INTO `ams_accountitem_history` VALUES ('822', '2017110710235587830', '757', '758', null, '101', '1', '234', 'AUD', '286', null, '286', '54235234', null, null, '0', '4', '1', '306', '2017-11-08', '2017-11-07', null, '2017-11-07', null, '0.00', '1510021536982', '355', 'P2B', 'USD', 'USD', 'BILI', '肯德基', '243', '2324.00', '1786.53', '0.00', '0.76876', '0.76876', '税费', '123');
INSERT INTO `ams_accountitem_history` VALUES ('823', '2017110610410392260', '757', '759', null, '101', '1', '34', 'AUD', '246', '246', '246', '34', '43', null, '0', '5', '0', '306', '2017-11-15', '2017-11-07', '2017-11-06', '2017-11-06', null, '0.00', '1510022518298', '346', 'B2B', 'USD', 'USD', 'BILI', '肯德基', '240', '34.00', '26.00', '0.00', '0.76476', '0.76476', '税费', '123321');
INSERT INTO `ams_accountitem_history` VALUES ('824', '2017110715244488153', '157', '162', null, '100', '1', '123', 'AUD', '5', null, null, '123', '123', null, '0', '1', '1', '4', '2017-11-02', '2017-11-07', null, null, null, null, '1510039484379', '356', 'B2C', 'USD', 'HKD', 'XXXX', '外运香港仓', null, '123.00', '94.38', null, '0.76728', '5.98688', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('825', '2017110715595957418', '167', '200', null, '100', '1', '23', 'AUD', '5', null, null, '22222222222222222222', '23', null, '0', '1', '1', '4', '2017-11-10', '2017-11-07', null, null, null, null, '1510041599163', '357', 'B2C', 'USD', 'HKD', 'XXXX', '外运香港仓', null, '22.00', '16.87', null, '0.76699', '5.98436', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('826', '2017110809475048807', '167', '169', null, '100', '1', null, 'CNY', '26', null, null, '111', null, null, '0', '1', '1', '4', '2017-11-08', '2017-11-08', null, null, null, null, '1510105670975', '358', 'B2C', 'USD', 'HKD', null, '外运香港仓', null, '111.00', '16.72', null, '0.15065', '1.17560', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('827', '2017110810023170281', '167', '168', null, '100', '1', '工资收入', 'AUD', '26', null, null, 'The business code', '工资收入', null, '0', '1', '1', '4', '2017-11-08', '2017-11-08', null, null, null, null, '1510106551407', '359', 'B2B', 'USD', 'HKD', null, '外运香港仓', null, '100.00', '76.54', null, '0.76540', '5.97291', '碰碰车', '入场费');
INSERT INTO `ams_accountitem_history` VALUES ('828', '2017110811482899239', '761', '770', null, '105', '0', null, 'AUD', '26', null, null, 'business case number', null, null, '0', '1', '1', '4', '2017-12-07', '2017-11-08', null, null, null, null, '1510112908329', '360', 'B2B', 'USD', 'EUR', null, '大悦城火锅城', null, '100.00', '76.56', null, '0.76558', '0.66001', '电话费', '误餐费');
INSERT INTO `ams_accountitem_history` VALUES ('829', '2017110811482899239', '761', '770', null, '105', '0', null, 'AUD', '26', '26', null, 'business case number', null, null, '0', '2', '1', '4', '2017-12-07', '2017-11-08', '2017-11-08', null, null, null, '1510112998788', '360', 'B2B', 'USD', 'EUR', null, '大悦城火锅城', null, '100.00', '76.56', null, '0.76558', '0.66001', '电话费', '误餐费');
INSERT INTO `ams_accountitem_history` VALUES ('830', '2017110811482899239', '761', '770', null, '105', '1', '工资收入', 'CNY', '26', '26', null, 'business case number', '工资收入', null, '0', '2', '1', '4', '2017-12-01', '2017-11-08', '2017-11-08', null, null, null, '1510113396163', '360', 'B2C', 'USD', 'EUR', null, '大悦城火锅城', null, '120.00', '18.07', null, '0.15062', '0.12983', '电话费', '误餐费');
INSERT INTO `ams_accountitem_history` VALUES ('831', '2017110811482899239', '761', '770', null, '105', '1', '工资收入', 'CNY', '26', '26', null, 'business case number', '工资收入', null, '0', '2', '1', '4', '2017-12-01', '2017-11-08', '2017-11-08', null, null, null, '1510117966046', '360', 'B2C', 'USD', 'EUR', null, '大悦城火锅城', null, '120.00', '18.07', null, '0.15062', '0.12983', '电话费', '误餐费');
INSERT INTO `ams_accountitem_history` VALUES ('832', '2017110811482899239', '761', '770', null, '105', '1', '工资收入', 'CNY', '26', '26', '26', 'business case number', '工资收入', null, '0', '3', '1', '4', '2017-12-01', '2017-11-08', '2017-11-08', '2017-11-08', null, null, '1510117999947', '360', 'B2C', 'USD', 'EUR', null, '大悦城火锅城', null, '120.00', '18.07', null, '0.15062', '0.12983', '电话费', '误餐费');
INSERT INTO `ams_accountitem_history` VALUES ('833', '2017110811482899239', '761', '770', null, '105', '1', '工资收入', 'CNY', '26', '26', '26', 'business case number', '工资收入', null, '0', '4', '1', '4', '2017-12-01', '2017-11-08', '2017-11-08', '2017-11-08', null, '0.00', '1510118141996', '360', 'B2C', 'USD', 'EUR', null, '大悦城火锅城', '244', '120.00', '18.07', '0.00', '0.15062', '0.12983', '电话费', '误餐费');
INSERT INTO `ams_accountitem_history` VALUES ('834', '2017102016093533936', '167', '169', null, '90', '1', '2323', 'CNY', '26', null, '26', '2323', '23232', null, '0', '4', '1', '4', '2017-10-20', '2017-11-08', null, '2017-10-20', null, '0.00', '1510118961508', '311', 'CD', 'USD', 'USD', null, '的风格大方古典风格', '245', '2323.00', '351.08', '0.00', '0.15113', '0.15113', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('835', '2017102014040011160', '167', '200', null, '90', '1', '1212', 'AUD', '26', null, '26', '12', '121212', null, '0', '4', '1', '4', '2017-10-20', '2017-11-08', null, '2017-10-20', null, '0.00', '1510118961510', '310', 'GH', 'USD', 'USD', null, '的风格大方古典风格', '245', '1212.00', '951.18', '0.00', '0.78481', '0.78481', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('836', '2017093015013595272', '157', '162', null, '25', '1', '23', 'CNY', '130', null, '130', '3', '23333', null, '0', '5', '1', '4', '2017-09-13', '2017-11-08', null, '2017-09-30', null, '0.00', '1510119445072', '215', 'B2C', 'USD', 'USD', null, '1', '211', '23.00', '3.46', '0.00', '0.15030', '0.15030', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('837', '2017093015010713995', '167', '169', null, '26', '1', '2', 'AUD', '130', null, '130', '1', '233', null, '0', '6', '1', '4', '2017-09-12', '2017-11-08', null, '2017-09-30', null, '0.00', '1510119472581', '214', 'B2C', 'USD', 'EUR', null, '结算餐费1、2', '212', '0.01', '0.01', '0.00', '0.78462', '0.66387', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('838', '2017093015010713995', '167', '169', null, '26', '1', '2', 'AUD', '130', null, '130', '1', '233', null, '0', '6', '1', '4', '2017-09-12', '2017-11-08', null, '2017-09-30', null, '0.00', '1510119480236', '214', 'B2C', 'USD', 'EUR', null, '结算餐费1、2', '212', '0.01', '0.01', '0.00', '0.78462', '0.66387', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('839', '2017093015013595272', '157', '162', null, '25', '1', '23', 'CNY', '130', null, '130', '3', '23333', null, '0', '6', '1', '4', '2017-09-13', '2017-11-08', null, '2017-09-30', null, '0.00', '1510119486551', '215', 'B2C', 'USD', 'USD', null, '1', '211', '23.00', '3.46', '0.00', '0.15030', '0.15030', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('840', '2017093015010713995', '167', '169', null, '26', '1', '2', 'AUD', '130', null, '130', '1', '233', null, '0', '6', '1', '4', '2017-09-12', '2017-11-08', null, '2017-09-30', null, '0.00', '1510119499298', '214', 'B2C', 'USD', 'EUR', null, '结算餐费1、2', '212', '0.01', '0.01', '0.00', '0.78462', '0.66387', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('841', '2017093011040663537', '157', '162', null, '27', '1', null, 'EUR', '130', null, '130', '123456', null, null, '0', '6', '0', '4', '2017-08-16', '2017-11-08', null, '2017-09-30', null, '0.00', '1510119519031', '195', 'GH', 'USD', 'USD', null, '乐其有限公司', '204', '1212.00', '1432.45', '0.00', '1.18189', '1.18189', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('842', '2017110813431037861', '761', '763', null, '104', '0', '交易概要  交易概要', 'AUD', '26', null, null, 'Nnumber', '（一）普通发票分类代码编制规则      普通发票分类代码（以下简称分类代码）为12位阿拉伯数字。从左至右排列：      第1位为国家税务局、地方税务局代码，1为国家税务局、2为地方税务局，0为总局。     第2、3、4、5位为地区代码(地、市级)，以全国行政区域统一代码为准，总局为0000。     第6、7位为年份代码（例如2004年以04表示）。      第8位为统一的行业代码，其中，国税行业划分：1工业、2商业、3加工修理修配业、4收购业、5水电业、6其他；地税行业划分：1交通运输业、2建筑业、3金融保险业、4邮电通信业、5文化体育业、6娱乐业、7服务业、8转让无形资产、9销售不动产、0表示其他。      第9、10、11、12位为细化的发票种类代码，按照保证每份发票编码唯一的原则，由省、自治区、直辖市和计划单列市国家税务局、地方税务局自行编制。', null, '0', '1', '0', '4', '2017-12-10', '2017-11-08', null, null, null, null, '1510119790373', '361', 'AB', 'USD', 'AUD', null, '大悦城火锅城', null, '130.00', '99.49', null, '0.76529', '1.00000', '电话费', '运费');
INSERT INTO `ams_accountitem_history` VALUES ('843', '2017110813431037861', '761', '763', null, '104', '0', '交易概要  交易概要', 'AUD', '26', null, '26', 'Nnumber', '（一）普通发票分类代码编制规则      普通发票分类代码（以下简称分类代码）为12位阿拉伯数字。从左至右排列：      第1位为国家税务局、地方税务局代码，1为国家税务局、2为地方税务局，0为总局。     第2、3、4、5位为地区代码(地、市级)，以全国行政区域统一代码为准，总局为0000。     第6、7位为年份代码（例如2004年以04表示）。      第8位为统一的行业代码，其中，国税行业划分：1工业、2商业、3加工修理修配业、4收购业、5水电业、6其他；地税行业划分：1交通运输业、2建筑业、3金融保险业、4邮电通信业、5文化体育业、6娱乐业、7服务业、8转让无形资产、9销售不动产、0表示其他。      第9、10、11、12位为细化的发票种类代码，按照保证每份发票编码唯一的原则，由省、自治区、直辖市和计划单列市国家税务局、地方税务局自行编制。', null, '0', '3', '0', '4', '2017-12-10', '2017-11-08', null, '2017-11-08', null, null, '1510119884931', '361', 'AB', 'USD', 'AUD', null, '大悦城火锅城', null, '130.00', '99.49', null, '0.76529', '1.00000', '电话费', '运费');
INSERT INTO `ams_accountitem_history` VALUES ('844', '201710181340423811', '271', '273', null, '50', '1', null, 'CNY', '220', null, '220', '1212', '1', null, '0', '4', '1', '251', '2017-10-20', '2017-11-08', null, '2017-10-18', null, '0.00', '1510120195587', '280', 'B2C', 'USD', 'USD', 'ZJLS', 'play', '246', '12.00', '1.81', '0.00', '0.15119', '0.15119', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('845', '2017093011474784168', '167', '200', null, '24', '1', '1212', 'CNY', '130', null, '130', '55', '1212', null, '0', '5', '1', '4', '2017-09-30', '2017-11-08', null, '2017-09-30', null, '0.00', '1510121044062', '197', 'GH', 'USD', 'USD', null, '井格大家庭', '207', '100.00', '15.03', '0.00', '0.15030', '0.15030', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('846', '2017093014274711316', '167', '169', null, '3', '1', null, 'AUD', '130', null, '130', '3', '1', null, '0', '6', '1', '4', '2017-09-30', '2017-11-08', null, '2017-09-30', null, '0.00', '1510121056793', '208', 'DF', 'USD', 'AUD', null, '网易', '210', '100.00', '78.46', '0.00', '0.78462', '1.00000', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('847', '2017093014274711316', '157', '161', null, '3', '1', null, 'CNY', '130', null, '130', '3', '2', null, '0', '6', '1', '4', '2017-09-30', '2017-11-08', null, '2017-09-30', null, '0.00', '1510121056793', '209', 'DF', 'USD', 'AUD', null, '网易', '210', '100.00', '15.03', '0.00', '0.15030', '0.19156', '鬼屋', '僵尸');
INSERT INTO `ams_accountitem_history` VALUES ('848', '2017093014274711316', '167', '169', null, '3', '1', null, 'EUR', '130', null, '130', '3', '3', null, '0', '6', '0', '4', '2017-09-30', '2017-11-08', null, '2017-09-30', null, '0.00', '1510121056793', '210', 'DF', 'USD', 'AUD', null, '网易', '210', '100.00', '118.19', '0.00', '1.18189', null, '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('849', '2017093014274711316', '20', '22', null, '3', '1', null, 'GBP', '130', null, '130', '3', '4', null, '0', '6', '0', '4', '2017-09-30', '2017-11-08', null, '2017-09-30', null, '0.00', '1510121056793', '211', 'DF', 'USD', 'AUD', null, '网易', '210', '100.00', '133.98', '0.00', '1.33976', '1.70753', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('850', '2017093014294068815', '167', '169', null, '3', '1', '555', 'USD', '130', null, '130', '5', '555', null, '0', '6', '1', '4', '2017-09-30', '2017-11-08', null, '2017-09-30', null, '0.00', '1510121056793', '212', 'B2C', 'USD', 'AUD', null, '网易', '210', '100.00', '100.00', '0.00', '1.00000', '1.27450', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('851', '2017093014274711316', '167', '169', null, '3', '1', null, 'AUD', '130', null, '130', '3', '1', null, '0', '6', '1', '4', '2017-09-30', '2017-11-08', null, '2017-09-30', null, '0.00', '1510121066836', '208', 'DF', 'USD', 'AUD', null, '网易', '210', '100.00', '78.46', '0.00', '0.78462', '1.00000', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('852', '2017093014274711316', '157', '161', null, '3', '1', null, 'CNY', '130', null, '130', '3', '2', null, '0', '6', '1', '4', '2017-09-30', '2017-11-08', null, '2017-09-30', null, '0.00', '1510121066836', '209', 'DF', 'USD', 'AUD', null, '网易', '210', '100.00', '15.03', '0.00', '0.15030', '0.19156', '鬼屋', '僵尸');
INSERT INTO `ams_accountitem_history` VALUES ('853', '2017093014274711316', '167', '169', null, '3', '1', null, 'EUR', '130', null, '130', '3', '3', null, '0', '6', '0', '4', '2017-09-30', '2017-11-08', null, '2017-09-30', null, '0.00', '1510121066836', '210', 'DF', 'USD', 'AUD', null, '网易', '210', '100.00', '118.19', '0.00', '1.18189', null, '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('854', '2017093014274711316', '20', '22', null, '3', '1', null, 'GBP', '130', null, '130', '3', '4', null, '0', '6', '0', '4', '2017-09-30', '2017-11-08', null, '2017-09-30', null, '0.00', '1510121066836', '211', 'DF', 'USD', 'AUD', null, '网易', '210', '100.00', '133.98', '0.00', '1.33976', '1.70753', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('855', '2017093014294068815', '167', '169', null, '3', '1', '555', 'USD', '130', null, '130', '5', '555', null, '0', '6', '1', '4', '2017-09-30', '2017-11-08', null, '2017-09-30', null, '0.00', '1510121066836', '212', 'B2C', 'USD', 'AUD', null, '网易', '210', '100.00', '100.00', '0.00', '1.00000', '1.27450', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('856', '2017093014163164356', '167', '200', null, '23', '1', null, 'AUD', '130', null, '130', '1', '1', null, '0', '6', '1', '4', '2017-09-12', '2017-11-08', null, '2017-09-30', null, '0.00', '1510121072165', '203', 'GH', 'USD', 'USD', null, '送货小李子', '209', '1.00', '0.78', '0.00', '0.78462', '0.78462', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('857', '2017093014163164356', '157', '162', null, '23', '1', null, 'EUR', '130', null, '130', '1', '1', null, '0', '6', '1', '4', '2017-09-30', '2017-11-08', null, '2017-09-30', null, '0.00', '1510121072165', '204', 'GH', 'USD', 'USD', null, '送货小李子', '209', '1.00', '1.18', '0.00', '1.18189', '1.18189', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('858', '2017093014163164356', '20', '22', null, '23', '1', null, 'GBP', '130', null, '130', '1', '1', null, '0', '6', '1', '4', '2017-09-30', '2017-11-08', null, '2017-09-30', null, '0.00', '1510121072165', '205', 'GH', 'USD', 'USD', null, '送货小李子', '209', '1.00', '1.34', '0.00', '1.33976', '1.33976', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('859', '2017093014163164356', '23', '35', null, '23', '1', null, 'HKD', '130', null, '130', '1', '1', null, '0', '6', '0', '4', '2017-09-27', '2017-11-08', null, '2017-09-30', null, '0.00', '1510121072165', '206', 'GH', 'USD', 'USD', null, '送货小李子', '209', '1.00', '0.13', '0.00', '0.12804', '0.12804', '增值服务', '送货/提货');
INSERT INTO `ams_accountitem_history` VALUES ('860', '2017093014163164356', '20', '22', null, '23', '1', null, 'JPY', '130', null, '130', '1', '1', null, '0', '6', '0', '4', '2017-09-30', '2017-11-08', null, '2017-09-30', null, '0.00', '1510121072165', '207', 'GH', 'USD', 'USD', null, '送货小李子', '209', '1.00', '0.01', '0.00', '0.00890', '0.00890', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('861', '2017092014422230720', '20', '22', null, '5', '1', null, 'GBP', '7', null, '7', '212212', null, null, '0', '6', '0', '4', '2017-09-14', '2017-11-08', null, '2017-09-20', null, '0.00', '1510121234496', '61', 'B2C', 'USD', 'CNY', 'XXXX', 'API结算对象', '153', '34.00', '45.96', '0.00', '1.35190', '8.87860', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('862', '2017092709362640718', '142', '144', null, '27', '1', null, 'AUD', '130', null, '130', '111', '111', null, '0', '6', '1', '4', '2017-09-27', '2017-11-08', null, '2017-09-27', null, '0.00', '1510121295648', '180', 'B2B', 'USD', 'USD', null, '乐其有限公司', '200', '111.00', '87.51', '0.00', '0.78840', '0.78840', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('863', '2017092709362640718', '142', '144', null, '27', '1', null, 'AUD', '130', null, '130', '111', '111', null, '0', '6', '0', '4', '2017-09-27', '2017-11-08', null, '2017-09-27', null, '0.00', '1510121295648', '181', 'B2B', 'USD', 'USD', null, '乐其有限公司', '200', '222.00', '175.02', '0.00', '0.78840', '0.78840', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('864', '201709261829297547', '142', '143', null, '26', '1', null, 'AUD', '8', null, '8', '11', null, null, '0', '6', '1', '4', '2017-09-13', '2017-11-08', null, '2017-09-26', null, '0.00', '1510121306961', '167', 'GH', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '203', '111.00', '87.70', '0.00', '0.79008', '0.66959', '费用类别名称', '员工的早餐费用名称');
INSERT INTO `ams_accountitem_history` VALUES ('865', '2017092618294469944', '142', '143', null, '26', '1', null, 'HKD', '8', null, '8', '11', '11', null, '0', '6', '1', '4', '2017-09-19', '2017-11-08', null, '2017-09-26', null, '0.00', '1510121306961', '168', 'B2B', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '203', '111.00', '14.21', '0.00', '0.12805', '0.10852', '费用类别名称', '员工的早餐费用名称');
INSERT INTO `ams_accountitem_history` VALUES ('866', '2017092618304731905', '142', '144', null, '26', '1', null, 'CNY', '8', null, '8', '111', null, null, '0', '6', '0', '4', '2017-09-13', '2017-11-08', null, '2017-09-26', null, '0.00', '1510121306961', '169', 'GH', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '203', '111.00', '16.75', '0.00', '0.15089', '0.12788', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('867', '2017092618310471895', '142', '144', null, '26', '1', null, 'AUD', '8', null, '8', '111', null, null, '0', '6', '0', '4', '2017-09-12', '2017-11-08', null, '2017-09-26', null, '0.00', '1510121306961', '170', 'GH', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '203', '111.00', '87.70', '0.00', '0.79008', '0.66959', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('868', '2017110810023170281', '167', '168', null, '100', '1', '工资收入', 'AUD', '26', null, '5', 'The business code', '工资收入', null, '0', '3', '1', '4', '2017-11-08', '2017-11-08', null, '2017-11-08', null, null, '1510121434828', '359', 'B2B', 'USD', 'HKD', null, '外运香港仓', null, '100.00', '76.54', null, '0.76540', '5.97291', '碰碰车', '入场费');
INSERT INTO `ams_accountitem_history` VALUES ('869', '2017110809475048807', '167', '169', null, '100', '1', null, 'CNY', '26', null, '5', '111', null, null, '0', '3', '1', '4', '2017-11-08', '2017-11-08', null, '2017-11-08', null, null, '1510121434830', '358', 'B2C', 'USD', 'HKD', null, '外运香港仓', null, '111.00', '16.72', null, '0.15065', '1.17560', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('870', '2017110715244488153', '157', '162', null, '100', '1', '123', 'AUD', '5', null, '5', '123', '123', null, '0', '3', '1', '4', '2017-11-02', '2017-11-08', null, '2017-11-08', null, null, '1510121434831', '356', 'B2C', 'USD', 'HKD', 'XXXX', '外运香港仓', null, '123.00', '94.38', null, '0.76728', '5.98688', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('871', '2017110715595957418', '167', '200', null, '100', '1', '23', 'AUD', '5', null, '5', '22222222222222222222', '23', null, '0', '3', '1', '4', '2017-11-10', '2017-11-08', null, '2017-11-08', null, null, '1510121434833', '357', 'B2C', 'USD', 'HKD', 'XXXX', '外运香港仓', null, '22.00', '16.87', null, '0.76699', '5.98436', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('872', '2017110814303851762', '761', '768', null, '104', '1', null, 'CNY', '299', null, null, '12312', null, null, '0', '1', '1', '4', '2017-11-08', '2017-11-08', null, null, null, null, '1510122638961', '362', 'FG', 'USD', 'AUD', 'XXXX', '大悦城火锅城', null, '111.00', '16.72', null, '0.15061', '0.19686', '电话费', '办公费');
INSERT INTO `ams_accountitem_history` VALUES ('873', '2017110814303851762', '761', '768', null, '104', '1', null, 'CNY', '299', null, '299', '12312', null, null, '0', '3', '1', '4', '2017-11-08', '2017-11-08', null, '2017-11-08', null, null, '1510122666707', '362', 'FG', 'USD', 'AUD', 'XXXX', '大悦城火锅城', null, '111.00', '16.72', null, '0.15061', '0.19686', '电话费', '办公费');
INSERT INTO `ams_accountitem_history` VALUES ('874', '2017110814303851762', '761', '768', null, '104', '1', null, 'CNY', '299', null, '299', '12312', null, null, '0', '4', '1', '4', '2017-11-08', '2017-11-08', null, '2017-11-08', null, '0.00', '1510122695506', '362', 'FG', 'USD', 'AUD', 'XXXX', '大悦城火锅城', '247', '111.00', '16.72', '0.00', '0.15061', '0.19686', '电话费', '办公费');
INSERT INTO `ams_accountitem_history` VALUES ('875', '2017110814372362187', '167', '169', null, '88', '1', null, 'HKD', '299', null, '299', 'number——01', '200', null, '0', '3', '0', '4', '2017-11-30', '2017-11-08', null, '2017-11-08', null, null, '1510123078562', '367', 'FG', 'USD', null, 'XXXX', '张三', null, '200.00', '25.63', null, '0.12817', '0.12817', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('876', '2017110814372362187', '167', '200', null, '88', '1', null, 'CNY', '299', null, '299', 'number——01', '100', null, '0', '3', '0', '4', '2017-11-08', '2017-11-08', null, '2017-11-08', null, null, '1510123078564', '366', 'FG', 'USD', null, 'XXXX', '张三', null, '100.00', '15.06', null, '0.15061', '0.15061', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('877', '2017110814372362187', '167', '168', null, '88', '1', null, 'JPY', '299', null, '299', 'number——01', '300', null, '0', '3', '1', '4', '2017-11-08', '2017-11-08', null, '2017-11-08', null, null, '1510123078564', '365', 'FG', 'USD', null, 'XXXX', '张三', null, '300.00', '2.63', null, '0.00878', '0.00878', '碰碰车', '入场费');
INSERT INTO `ams_accountitem_history` VALUES ('878', '2017110814372362187', '167', '169', null, '88', '1', null, 'EUR', '299', null, '299', 'number——01', '200', null, '0', '3', '1', '4', '2017-11-01', '2017-11-08', null, '2017-11-08', null, null, '1510123078566', '364', 'FG', 'USD', null, 'XXXX', '张三', null, '200.00', '231.96', null, '1.15982', '1.15982', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('879', '2017110814372362187', '167', '200', null, '88', '1', null, 'CNY', '299', null, '299', 'number——01', '123', null, '0', '3', '1', '4', '2017-11-08', '2017-11-08', null, '2017-11-08', null, null, '1510123078567', '363', 'FG', 'USD', null, 'XXXX', '张三', null, '100.00', '15.06', null, '0.15061', '0.15061', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('880', '2017110815282582270', '771', '801', null, '105', '0', null, 'AUD', '5', null, '5', '33333', null, null, '0', '3', '0', '4', '2017-11-22', '2017-11-08', null, '2017-11-08', null, null, '1510126132313', '371', 'FG', 'USD', null, 'XXXX', '大悦城火锅城', null, '23.00', '17.60', null, '0.76523', '0.66024', 'bilibili', 'ds');
INSERT INTO `ams_accountitem_history` VALUES ('881', '2017110815282582270', '761', '770', null, '92', '1', null, 'AUD', '5', '5', null, '33333', null, null, '0', '2', '1', '4', '2017-11-14', '2017-11-08', '2017-11-08', null, null, null, '1510126173683', '370', 'FG', 'USD', null, 'XXXX', '胜多负少的', null, '23.00', '17.60', null, '0.76523', '0.76523', '电话费', '误餐费');
INSERT INTO `ams_accountitem_history` VALUES ('882', '2017110815282582270', '761', '770', null, '92', '1', null, 'AUD', '5', '5', '5', '33333', null, null, '0', '3', '1', '4', '2017-11-14', '2017-11-08', '2017-11-08', '2017-11-08', null, null, '1510126182464', '370', 'FG', 'USD', null, 'XXXX', '胜多负少的', null, '23.00', '17.60', null, '0.76523', '0.76523', '电话费', '误餐费');
INSERT INTO `ams_accountitem_history` VALUES ('883', '2017110815331359414', '802', '803', null, '106', '1', '123', 'CNY', '294', null, null, 'OOPK', '123', null, '0', '1', '1', '348', '2017-11-08', '2017-11-08', null, null, null, null, '1510126393560', '372', 'OKK', 'USD', 'CNY', 'VCVC', 'ACFUN', null, '233.00', '35.08', null, '0.15056', '1.00000', 'bilibili', 'ACFUN');
INSERT INTO `ams_accountitem_history` VALUES ('884', '2017110815331583811', '761', '769', null, '100', '1', '34', 'AUD', '5', null, null, '34434', '34', null, '0', '1', '1', '4', '2017-11-18', '2017-11-08', null, null, null, null, '1510126395407', '373', 'B2C', 'USD', 'HKD', 'XXXX', '外运香港仓', null, '34.00', '26.02', null, '0.76523', '5.97088', '电话费', '培训费');
INSERT INTO `ams_accountitem_history` VALUES ('885', '2017110815334718819', '802', '803', null, '106', '1', '222', 'CNY', '294', null, null, 'OOPL', '2222', null, '0', '1', '0', '348', '2017-11-08', '2017-11-08', null, null, null, null, '1510126427309', '374', 'OKK', 'USD', 'CNY', 'VCVC', 'ACFUN', null, '111.00', '16.71', null, '0.15056', '1.00000', 'bilibili', 'ACFUN');
INSERT INTO `ams_accountitem_history` VALUES ('886', '2017110815342057566', '802', '803', null, '106', '1', '333', 'EUR', '294', null, null, 'OOPI', '3333', null, '0', '1', '1', '348', '2017-11-08', '2017-11-08', null, null, null, null, '1510126460598', '375', 'OKK', 'USD', 'CNY', 'VCVC', 'ACFUN', null, '333.00', '385.95', null, '1.15902', '7.69808', 'bilibili', 'ACFUN');
INSERT INTO `ams_accountitem_history` VALUES ('887', '2017110815344814756', '802', '803', null, '106', '1', '444', 'GBP', '294', null, null, 'pppp', '4444', null, '0', '1', '0', '348', '2017-11-08', '2017-11-08', null, null, null, null, '1510126488458', '376', 'OKK', 'USD', 'CNY', 'VCVC', 'ACFUN', null, '444.00', '584.06', null, '1.31546', '8.73716', 'bilibili', 'ACFUN');
INSERT INTO `ams_accountitem_history` VALUES ('888', '2017110815351791844', '802', '803', null, '106', '1', '555', 'HKD', '294', null, null, 'QWER', '5555', null, '0', '1', '1', '348', '2017-11-23', '2017-11-08', null, null, null, null, '1510126517921', '377', 'OKK', 'USD', 'CNY', 'VCVC', 'ACFUN', null, '555.00', '71.13', null, '0.12816', '0.85123', 'bilibili', 'ACFUN');
INSERT INTO `ams_accountitem_history` VALUES ('889', '2017110814372362187', '167', '169', null, '88', '1', null, 'HKD', '299', null, '299', 'number——01', '200', null, '0', '4', '0', '4', '2017-11-30', '2017-11-08', null, '2017-11-08', null, '0.00', '1510126578221', '367', 'FG', 'USD', null, 'XXXX', '张三', '248', '200.00', '25.63', '0.00', '0.12817', '0.12817', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('890', '2017110814372362187', '167', '200', null, '88', '1', null, 'CNY', '299', null, '299', 'number——01', '100', null, '0', '4', '0', '4', '2017-11-08', '2017-11-08', null, '2017-11-08', null, '0.00', '1510126578223', '366', 'FG', 'USD', null, 'XXXX', '张三', '248', '100.00', '15.06', '0.00', '0.15061', '0.15061', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('891', '2017110814372362187', '167', '168', null, '88', '1', null, 'JPY', '299', null, '299', 'number——01', '300', null, '0', '4', '1', '4', '2017-11-08', '2017-11-08', null, '2017-11-08', null, '0.00', '1510126578224', '365', 'FG', 'USD', null, 'XXXX', '张三', '248', '300.00', '2.63', '0.00', '0.00878', '0.00878', '碰碰车', '入场费');
INSERT INTO `ams_accountitem_history` VALUES ('892', '2017110814372362187', '167', '169', null, '88', '1', null, 'EUR', '299', null, '299', 'number——01', '200', null, '0', '4', '1', '4', '2017-11-01', '2017-11-08', null, '2017-11-08', null, '0.00', '1510126578225', '364', 'FG', 'USD', null, 'XXXX', '张三', '248', '200.00', '231.96', '0.00', '1.15982', '1.15982', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('893', '2017110814372362187', '167', '200', null, '88', '1', null, 'CNY', '299', null, '299', 'number——01', '123', null, '0', '4', '1', '4', '2017-11-08', '2017-11-08', null, '2017-11-08', null, '0.00', '1510126578226', '363', 'FG', 'USD', null, 'XXXX', '张三', '248', '100.00', '15.06', '0.00', '0.15061', '0.15061', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('894', '2017110815365996779', '761', '769', null, '92', '1', '23', 'AUD', '5', null, null, '3424', '23', null, '0', '1', '1', '4', '2017-11-10', '2017-11-08', null, null, null, null, '1510126619772', '378', 'B2C', 'USD', 'USD', 'XXXX', '胜多负少的', null, '23.00', '17.60', null, '0.76523', '0.76523', '761', '培训费');
INSERT INTO `ams_accountitem_history` VALUES ('895', '2017110815394650754', '761', '769', null, '100', '1', '123', 'CNY', '5', null, null, '331', '123', null, '0', '1', '1', '4', '2017-11-10', '2017-11-08', null, null, null, null, '1510126786121', '379', 'B2C', 'USD', 'HKD', 'XXXX', '外运香港仓', null, '13.00', '1.96', null, '0.15075', '1.17626', '电话费', '培训费');
INSERT INTO `ams_accountitem_history` VALUES ('896', '2017093011474784168', '167', '200', null, '24', '1', '1212', 'CNY', '130', null, '130', '55', '1212', null, '0', '6', '1', '4', '2017-09-30', '2017-11-08', null, '2017-09-30', null, '0.00', '1510126870733', '197', 'GH', 'USD', 'USD', null, '井格大家庭', '207', '100.00', '15.03', '0.00', '0.15030', '0.15030', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('897', '2017093011474784168', '167', '200', null, '24', '1', '1212', 'CNY', '130', null, '130', '55', '1212', null, '0', '6', '1', '4', '2017-09-30', '2017-11-08', null, '2017-09-30', null, '0.00', '1510126897087', '197', 'GH', 'USD', 'USD', null, '井格大家庭', '207', '100.00', '15.03', '0.00', '0.15030', '0.15030', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('898', '2017110815513412727', '761', '769', null, '100', '1', '23', 'CNY', '5', null, null, '32423', '23', null, '0', '1', '1', '4', '2017-11-07', '2017-11-08', null, null, null, null, '1510127494265', '380', 'FG', 'USD', 'HKD', 'XXXX', '外运香港仓', null, '23.00', '3.46', null, '0.15065', '1.17563', '电话费', '培训费');
INSERT INTO `ams_accountitem_history` VALUES ('899', '2017110815530387081', '761', '769', null, '92', '1', '234', 'CNY', '5', null, null, '32424', '234', null, '0', '1', '1', '4', '2017-11-05', '2017-11-08', null, null, null, null, '1510127583890', '381', 'FG', 'USD', 'USD', 'XXXX', '胜多负少的', null, '234.00', '35.25', null, '0.15065', '0.15065', '电话费', '培训费');
INSERT INTO `ams_accountitem_history` VALUES ('900', '2017110815551735492', '761', '769', null, '89', '1', '234', 'CNY', '5', null, null, '234', '234', null, '0', '1', '1', '4', '2017-11-07', '2017-11-08', null, null, null, null, '1510127717711', '382', 'FG', 'USD', 'USD', 'XXXX', '李四', null, '234.00', '35.25', null, '0.15065', '0.15065', '电话费', '培训费');
INSERT INTO `ams_accountitem_history` VALUES ('901', '2017110815551735492', '167', '如犬吠', null, '89', '1', '234', 'CNY', '5', '5', null, '234', '234', null, '0', '2', '1', '4', '2017-11-07', '2017-11-08', '2017-11-08', null, null, null, '1510128221007', '382', 'FG', 'USD', 'USD', 'XXXX', '李四', null, '234.00', '35.25', null, '0.15065', '0.15065', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('902', '2017110815551735492', '167', '780', null, '89', '1', '234', 'CNY', '5', '5', null, '234', '234', null, '0', '2', '1', '4', '2017-11-07', '2017-11-08', '2017-11-08', null, null, null, '1510128324804', '382', 'FG', 'USD', 'USD', 'XXXX', '李四', null, '234.00', '35.25', null, '0.15065', '0.15065', '碰碰车', 'dc');
INSERT INTO `ams_accountitem_history` VALUES ('903', '2017110816143963176', '167', '780', null, '92', '1', '121212', 'CNY', '299', null, null, '1212', '12122双方的说法从', null, '0', '1', '1', '4', '2017-11-08', '2017-11-08', null, null, null, null, '1510128879265', '385', 'DF', 'USD', 'USD', 'XXXX', '胜多负少的', null, '111.00', '16.72', null, '0.15065', '0.15065', '碰碰车', 'dc');
INSERT INTO `ams_accountitem_history` VALUES ('904', '2017110816160140225', '254', '293', null, '104', '1', null, 'EUR', '299', null, null, '43243', null, null, '0', '1', '0', '4', '2017-11-08', '2017-11-08', null, null, null, null, '1510128961809', '386', 'FG', 'USD', 'AUD', 'XXXX', '大悦城火锅城', null, '122.00', '141.58', null, '1.16050', '1.51549', '1', '包子');
INSERT INTO `ams_accountitem_history` VALUES ('905', '2017110818135388981', '832', '835', null, '89', '1', null, 'HKD', '299', null, '299', 'Nnumber_001', 'HKD400', null, '0', '3', '0', '4', '2017-12-10', '2017-11-08', null, '2017-11-08', null, null, '1510136095952', '393', 'B2C', 'USD', 'USD', 'XXXX', '李四', null, '400.00', '51.26', null, '0.12814', '0.12814', '包', '13');
INSERT INTO `ams_accountitem_history` VALUES ('906', '2017110818135388981', '849', '853', null, '89', '1', null, 'GBP', '299', null, '299', 'Nnumber_001', 'GBP500', null, '0', '3', '1', '4', '2017-11-24', '2017-11-08', null, '2017-11-08', null, null, '1510136095962', '391', 'B2C', 'USD', 'USD', 'XXXX', '李四', null, '500.00', '658.59', null, '1.31718', '1.31718', '女包包', '手拿包');
INSERT INTO `ams_accountitem_history` VALUES ('907', '2017110818135388981', '832', '834', null, '89', '1', null, 'JPY', '299', null, '299', 'Nnumber_001', 'JPY300', null, '0', '3', '0', '4', '2017-11-24', '2017-11-08', null, '2017-11-08', null, null, '1510136095963', '392', 'B2C', 'USD', 'USD', 'XXXX', '李四', null, '300.00', '2.64', null, '0.00879', '0.00879', '包', '12');
INSERT INTO `ams_accountitem_history` VALUES ('908', '2017110818051934489', '849', '854', null, '89', '1', null, 'CNY', '299', null, '299', 'Nnumber_001', '200', null, '0', '3', '0', '4', '2017-11-22', '2017-11-08', null, '2017-11-08', null, null, '1510136095964', '387', 'B2C', 'USD', 'USD', 'XXXX', '李四', null, '200.00', '30.16', null, '0.15082', '0.15082', '女包包', '卡包');
INSERT INTO `ams_accountitem_history` VALUES ('909', '2017110814372362187', '167', '200', null, '88', '1', null, 'CNY', '299', null, '299', 'number——01', '123', null, '0', '5', '1', '4', '2017-11-08', '2017-11-08', null, '2017-11-08', null, '0.00', '1510136833041', '363', 'FG', 'USD', null, 'XXXX', '张三', '248', '100.00', '15.06', '0.00', '0.15061', '0.15061', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('910', '2017110814372362187', '167', '169', null, '88', '1', null, 'EUR', '299', null, '299', 'number——01', '200', null, '0', '5', '1', '4', '2017-11-01', '2017-11-08', null, '2017-11-08', null, '0.00', '1510136833041', '364', 'FG', 'USD', null, 'XXXX', '张三', '248', '200.00', '231.96', '0.00', '1.15982', '1.15982', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('911', '2017110814372362187', '167', '168', null, '88', '1', null, 'JPY', '299', null, '299', 'number——01', '300', null, '0', '5', '1', '4', '2017-11-08', '2017-11-08', null, '2017-11-08', null, '0.00', '1510136833041', '365', 'FG', 'USD', null, 'XXXX', '张三', '248', '300.00', '2.63', '0.00', '0.00878', '0.00878', '碰碰车', '入场费');
INSERT INTO `ams_accountitem_history` VALUES ('912', '2017110814372362187', '167', '200', null, '88', '1', null, 'CNY', '299', null, '299', 'number——01', '100', null, '0', '5', '0', '4', '2017-11-08', '2017-11-08', null, '2017-11-08', null, '0.00', '1510136833041', '366', 'FG', 'USD', null, 'XXXX', '张三', '248', '100.00', '15.06', '0.00', '0.15061', '0.15061', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('913', '2017110814372362187', '167', '169', null, '88', '1', null, 'HKD', '299', null, '299', 'number——01', '200', null, '0', '5', '0', '4', '2017-11-30', '2017-11-08', null, '2017-11-08', null, '0.00', '1510136833041', '367', 'FG', 'USD', null, 'XXXX', '张三', '248', '200.00', '25.63', '0.00', '0.12817', '0.12817', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('914', '2017092709305649663', '23', '43', null, '23', '1', null, 'AUD', '130', null, '130', '123', '111', null, '0', '5', '1', '4', '2017-09-27', '2017-11-08', null, '2017-09-27', null, '0.00', '1510136942700', '176', 'B2B', 'USD', 'USD', null, '送货小李子', '199', '111.00', '87.51', '0.00', '0.78840', '0.78840', '增值服务', '包材费用');
INSERT INTO `ams_accountitem_history` VALUES ('915', '2017092709305649663', '20', '22', null, '23', '1', null, 'CNY', '130', null, '130', '123', '111', null, '0', '5', '1', '4', '2017-09-27', '2017-11-08', null, '2017-09-27', null, '0.00', '1510136942700', '177', 'B2B', 'USD', 'USD', null, '送货小李子', '199', '111.00', '16.73', '0.00', '0.15073', '0.15073', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('916', '2017092709305649663', null, null, null, '23', '1', null, 'EUR', '130', null, '130', '123', '111', null, '0', '5', '0', '4', '2017-09-27', '2017-11-08', null, '2017-09-27', null, '0.00', '1510136942700', '178', 'B2B', 'USD', 'USD', null, '送货小李子', '199', '11.00', '12.97', '0.00', '1.17925', '1.17925', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('917', '2017092709305649663', '142', '143', null, '23', '1', null, 'CNY', '130', null, '130', '123', '11', null, '0', '5', '0', '4', '2017-09-27', '2017-11-08', null, '2017-09-27', null, '0.00', '1510136942700', '179', 'B2B', 'USD', 'USD', null, '送货小李子', '199', '11.00', '1.66', '0.00', '0.15073', '0.15073', '费用类别名称', '员工的早餐费用名称');
INSERT INTO `ams_accountitem_history` VALUES ('918', '2017092709305649663', '23', '43', null, '23', '1', null, 'AUD', '130', null, '130', '123', '111', null, '0', '5', '1', '4', '2017-09-27', '2017-11-08', null, '2017-09-27', null, '0.00', '1510136958761', '176', 'B2B', 'USD', 'USD', null, '送货小李子', '199', '111.00', '87.51', '0.00', '0.78840', '0.78840', '增值服务', '包材费用');
INSERT INTO `ams_accountitem_history` VALUES ('919', '2017092709305649663', '20', '22', null, '23', '1', null, 'CNY', '130', null, '130', '123', '111', null, '0', '5', '1', '4', '2017-09-27', '2017-11-08', null, '2017-09-27', null, '0.00', '1510136958761', '177', 'B2B', 'USD', 'USD', null, '送货小李子', '199', '111.00', '16.73', '0.00', '0.15073', '0.15073', '仓租费用', '恒温区');
INSERT INTO `ams_accountitem_history` VALUES ('920', '2017092709305649663', null, null, null, '23', '1', null, 'EUR', '130', null, '130', '123', '111', null, '0', '5', '0', '4', '2017-09-27', '2017-11-08', null, '2017-09-27', null, '0.00', '1510136958761', '178', 'B2B', 'USD', 'USD', null, '送货小李子', '199', '11.00', '12.97', '0.00', '1.17925', '1.17925', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('921', '2017092709305649663', '142', '143', null, '23', '1', null, 'CNY', '130', null, '130', '123', '11', null, '0', '5', '0', '4', '2017-09-27', '2017-11-08', null, '2017-09-27', null, '0.00', '1510136958761', '179', 'B2B', 'USD', 'USD', null, '送货小李子', '199', '11.00', '1.66', '0.00', '0.15073', '0.15073', '费用类别名称', '员工的早餐费用名称');
INSERT INTO `ams_accountitem_history` VALUES ('922', '2017110910382465579', '849', '853', null, '105', '1', null, 'AUD', '299', null, null, '1', null, null, '0', '1', '1', '4', '2017-10-31', '2017-11-09', null, null, null, null, '1510195104931', '394', 'B2C', 'USD', 'EUR', 'XXXX', '大悦城火锅城', null, '122.00', '93.72', null, '0.76823', '0.66229', '女包包', '手拿包');
INSERT INTO `ams_accountitem_history` VALUES ('923', '2017110910382465579', '849', '853', null, '105', '1', null, 'AUD', '299', null, '299', '1', null, null, '0', '3', '1', '4', '2017-10-31', '2017-11-09', null, '2017-11-09', null, null, '1510195162141', '394', 'B2C', 'USD', 'EUR', 'XXXX', '大悦城火锅城', null, '122.00', '93.72', null, '0.76823', '0.66229', '女包包', '手拿包');
INSERT INTO `ams_accountitem_history` VALUES ('924', '2017110910382465579', '849', '853', null, '105', '1', null, 'AUD', '299', null, '299', '1', null, null, '0', '4', '1', '4', '2017-10-31', '2017-11-09', null, '2017-11-09', null, '0.00', '1510195206159', '394', 'B2C', 'USD', 'EUR', 'XXXX', '大悦城火锅城', '249', '122.00', '93.72', '0.00', '0.76823', '0.66229', '女包包', '手拿包');
INSERT INTO `ams_accountitem_history` VALUES ('925', '2017110910382465579', '849', '853', null, '105', '1', null, 'AUD', '299', null, '299', '1', null, null, '0', '5', '1', '4', '2017-10-31', '2017-11-09', null, '2017-11-09', null, '0.00', '1510195333169', '394', 'B2C', 'USD', 'EUR', 'XXXX', '大悦城火锅城', '249', '122.00', '93.72', '0.00', '0.76823', '0.66229', '女包包', '手拿包');
INSERT INTO `ams_accountitem_history` VALUES ('926', '2017110910382465579', '849', '853', null, '105', '1', null, 'AUD', '299', null, '299', '1', null, null, '0', '6', '1', '4', '2017-10-31', '2017-11-09', null, '2017-11-09', null, '0.00', '1510195352971', '394', 'B2C', 'USD', 'EUR', 'XXXX', '大悦城火锅城', '249', '122.00', '93.72', '0.00', '0.76823', '0.66229', '女包包', '手拿包');
INSERT INTO `ams_accountitem_history` VALUES ('927', '2017110814372362187', '167', '200', null, '88', '1', null, 'CNY', '299', null, '299', 'number——01', '123', null, '0', '6', '1', '4', '2017-11-08', '2017-11-09', null, '2017-11-08', null, '0.00', '1510195366568', '363', 'FG', 'USD', null, 'XXXX', '张三', '248', '100.00', '15.06', '0.00', '0.15061', '0.15061', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('928', '2017110814372362187', '167', '169', null, '88', '1', null, 'EUR', '299', null, '299', 'number——01', '200', null, '0', '6', '1', '4', '2017-11-01', '2017-11-09', null, '2017-11-08', null, '0.00', '1510195366568', '364', 'FG', 'USD', null, 'XXXX', '张三', '248', '200.00', '231.96', '0.00', '1.15982', '1.15982', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('929', '2017110814372362187', '167', '168', null, '88', '1', null, 'JPY', '299', null, '299', 'number——01', '300', null, '0', '6', '1', '4', '2017-11-08', '2017-11-09', null, '2017-11-08', null, '0.00', '1510195366568', '365', 'FG', 'USD', null, 'XXXX', '张三', '248', '300.00', '2.63', '0.00', '0.00878', '0.00878', '碰碰车', '入场费');
INSERT INTO `ams_accountitem_history` VALUES ('930', '2017110814372362187', '167', '200', null, '88', '1', null, 'CNY', '299', null, '299', 'number——01', '100', null, '0', '6', '0', '4', '2017-11-08', '2017-11-09', null, '2017-11-08', null, '0.00', '1510195366568', '366', 'FG', 'USD', null, 'XXXX', '张三', '248', '100.00', '15.06', '0.00', '0.15061', '0.15061', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('931', '2017110814372362187', '167', '169', null, '88', '1', null, 'HKD', '299', null, '299', 'number——01', '200', null, '0', '6', '0', '4', '2017-11-30', '2017-11-09', null, '2017-11-08', null, '0.00', '1510195366568', '367', 'FG', 'USD', null, 'XXXX', '张三', '248', '200.00', '25.63', '0.00', '0.12817', '0.12817', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('932', '2017110910482358760', '832', '833', null, '92', '1', null, 'USD', '299', null, null, '2', null, null, '0', '1', '0', '4', '2017-11-14', '2017-11-09', null, null, null, null, '1510195703654', '395', 'B2C', 'USD', 'USD', 'XXXX', '胜多负少的', null, '100.00', '100.00', null, '1.00000', '1.00000', '包', '11');
INSERT INTO `ams_accountitem_history` VALUES ('933', '2017111010182133191', '838', '847', null, '100', '1', null, 'EUR', '299', null, '299', 'business case number', null, null, '0', '3', '0', '4', '2017-11-19', '2017-11-10', null, '2017-11-10', null, null, '1510280335080', '400', 'CD', 'USD', 'HKD', 'XXXX', '外运香港仓', null, '111.00', '129.29', null, '1.16482', '9.08588', '花鞋子', '雨靴');
INSERT INTO `ams_accountitem_history` VALUES ('934', '2017111010182133191', '849', '855', null, '100', '1', null, 'GBP', '299', null, '299', 'business case number', null, null, '0', '3', '1', '4', '2017-11-24', '2017-11-10', null, '2017-11-10', null, null, '1510280335104', '399', 'CD', 'USD', 'HKD', 'XXXX', '外运香港仓', null, '0.00', '111.00', null, '1.31427', '10.25163', '女包包', '假包');
INSERT INTO `ams_accountitem_history` VALUES ('935', '2017111010182133191', '771', '842', null, '100', '1', null, 'HKD', '299', null, '299', 'business case number', null, null, '0', '3', '0', '4', '2017-11-29', '2017-11-10', null, '2017-11-10', null, null, '1510280335110', '401', 'CD', 'USD', 'HKD', 'XXXX', '外运香港仓', null, '111.00', '14.23', null, '0.12720', '1.00000', 'bilibili', '妈妈鞋');
INSERT INTO `ams_accountitem_history` VALUES ('936', '2017111010182133191', '849', '853', null, '100', '1', null, 'EUR', '299', null, '299', 'business case number', null, null, '0', '3', '1', '4', '2017-11-22', '2017-11-10', null, '2017-11-10', null, null, '1510280335114', '398', 'CD', 'USD', 'HKD', 'XXXX', '外运香港仓', null, '0.00', '111.00', null, '1.16482', '9.08588', '女包包', '手拿包');
INSERT INTO `ams_accountitem_history` VALUES ('937', '2017111010182133191', '849', '854', null, '100', '1', null, 'AUD', '299', null, '299', 'business case number', null, null, '0', '3', '1', '4', '2017-11-16', '2017-11-10', null, '2017-11-10', null, null, '1510280335118', '397', 'CD', 'USD', 'HKD', 'XXXX', '外运香港仓', null, '111.00', '85.27', null, '0.76817', '5.99191', '女包包', '卡包');
INSERT INTO `ams_accountitem_history` VALUES ('938', '2017111010182133191', '849', '855', null, '100', '1', null, 'CNY', '299', null, '299', 'business case number', null, null, '0', '3', '1', '4', '2017-11-10', '2017-11-10', null, '2017-11-10', null, null, '1510280335121', '396', 'CD', 'USD', 'HKD', 'XXXX', '外运香港仓', null, '111.00', '16.72', null, '0.15065', '1.17511', '女包包', '假包');
INSERT INTO `ams_accountitem_history` VALUES ('939', '2017111010232469686', '821', '830', null, '100', '1', null, 'CNY', '299', null, '299', '12', null, null, '0', '3', '0', '4', '2017-11-15', '2017-11-10', null, '2017-11-10', null, null, '1510280620669', '405', 'DF', 'USD', 'HKD', 'XXXX', '外运香港仓', null, '111.00', '16.72', null, '0.15065', '1.17511', '鞋', '9');
INSERT INTO `ams_accountitem_history` VALUES ('940', '2017111010232469686', '849', '852', null, '100', '1', null, 'JPY', '299', null, '299', '12', null, null, '0', '3', '1', '4', '2017-11-23', '2017-11-10', null, '2017-11-10', null, null, '1510280620671', '404', 'DF', 'USD', 'HKD', 'XXXX', '外运香港仓', null, '111.00', '0.98', null, '0.00882', '0.06878', '女包包', '钱包');
INSERT INTO `ams_accountitem_history` VALUES ('941', '2017111010232469686', '821', '830', null, '100', '1', null, 'CNY', '299', null, '299', '12', null, null, '0', '4', '0', '4', '2017-11-15', '2017-11-10', null, '2017-11-10', null, '0.00', '1510280861364', '405', 'DF', 'USD', 'HKD', 'XXXX', '外运香港仓', '250', '111.00', '16.72', '0.00', '0.15065', '1.17511', '鞋', '9');
INSERT INTO `ams_accountitem_history` VALUES ('942', '2017111010385176234', '771', '794', null, '92', '1', null, 'USD', '299', null, '299', '1212', null, null, '0', '3', '0', '4', '2017-11-10', '2017-11-10', null, '2017-11-10', null, null, '1510281552511', '416', 'CD', 'USD', 'USD', 'XXXX', '胜多负少的', null, '22.00', '22.00', null, '1.00000', '1.00000', 'bilibili', '123124');
INSERT INTO `ams_accountitem_history` VALUES ('943', '2017111010385176234', '804', '808', null, '92', '1', null, 'CNY', '299', null, '299', '1212', null, null, '0', '3', '0', '4', '2017-11-30', '2017-11-10', null, '2017-11-10', null, null, '1510281552519', '417', 'CD', 'USD', 'USD', 'XXXX', '胜多负少的', null, '22222.00', '3347.74', null, '0.15065', '0.15065', '鞋子', '妈妈鞋');
INSERT INTO `ams_accountitem_history` VALUES ('944', '2017111010385176234', '838', '800', null, '92', '1', null, 'HKD', '299', null, '299', '1212', null, null, '0', '3', '0', '4', '2017-11-29', '2017-11-10', null, '2017-11-10', null, null, '1510281552521', '415', 'CD', 'USD', 'USD', 'XXXX', '胜多负少的', null, '222.00', '28.46', null, '0.12820', '0.12820', '花鞋子', '4545');
INSERT INTO `ams_accountitem_history` VALUES ('945', '2017111010385176234', '838', '800', null, '92', '1', null, 'AUD', '299', null, '299', '1212', null, null, '0', '3', '0', '4', '2017-11-28', '2017-11-10', null, '2017-11-10', null, null, '1510281552522', '414', 'CD', 'USD', 'USD', 'XXXX', '胜多负少的', null, '222.00', '170.53', null, '0.76817', '0.76817', '花鞋子', '4545');
INSERT INTO `ams_accountitem_history` VALUES ('946', '2017111010385176234', '838', '845', null, '92', '1', null, 'GBP', '299', null, '299', '1212', '22', null, '0', '3', '0', '4', '2017-11-14', '2017-11-10', null, '2017-11-10', null, null, '1510281552523', '413', 'CD', 'USD', 'USD', 'XXXX', '胜多负少的', null, '2222.00', '2920.30', null, '1.31427', '1.31427', '花鞋子', '马丁靴');
INSERT INTO `ams_accountitem_history` VALUES ('947', '2017111010385176234', '821', '828', null, '92', '1', null, 'GBP', '299', null, '299', '1212', null, null, '0', '3', '1', '4', '2017-11-09', '2017-11-10', null, '2017-11-10', null, null, '1510281552525', '412', 'CD', 'USD', 'USD', 'XXXX', '胜多负少的', null, '222.00', '291.77', null, '1.31427', '1.31427', '鞋', '7');
INSERT INTO `ams_accountitem_history` VALUES ('948', '2017111010385176234', '838', '846', null, '92', '1', null, 'EUR', '299', null, '299', '1212', null, null, '0', '3', '1', '4', '2017-11-06', '2017-11-10', null, '2017-11-10', null, null, '1510281552526', '411', 'CD', 'USD', 'USD', 'XXXX', '胜多负少的', null, '222.00', '258.59', null, '1.16482', '1.16482', '花鞋子', '雪地靴');
INSERT INTO `ams_accountitem_history` VALUES ('949', '2017111010385176234', '832', '836', null, '92', '1', null, 'EUR', '299', null, '299', '1212', null, null, '0', '3', '1', '4', '2017-11-09', '2017-11-10', null, '2017-11-10', null, null, '1510281552528', '410', 'CD', 'USD', 'USD', 'XXXX', '胜多负少的', null, '2222.00', '2588.22', null, '1.16482', '1.16482', '包', '14');
INSERT INTO `ams_accountitem_history` VALUES ('950', '2017111010385176234', '838', '847', null, '92', '1', null, 'EUR', '299', null, '299', '1212', null, null, '0', '3', '1', '4', '2017-11-10', '2017-11-10', null, '2017-11-10', null, null, '1510281552528', '409', 'CD', 'USD', 'USD', 'XXXX', '胜多负少的', null, '23222.00', '27049.38', null, '1.16482', '1.16482', '花鞋子', '雨靴');
INSERT INTO `ams_accountitem_history` VALUES ('951', '2017111010385176234', '849', '854', null, '92', '1', null, 'CNY', '299', null, '299', '1212', null, null, '0', '3', '1', '4', '2017-11-10', '2017-11-10', null, '2017-11-10', null, null, '1510281552529', '408', 'CD', 'USD', 'USD', 'XXXX', '胜多负少的', null, '1111.00', '167.37', null, '0.15065', '0.15065', '女包包', '卡包');
INSERT INTO `ams_accountitem_history` VALUES ('952', '2017111010385176234', '849', '854', null, '92', '1', null, 'AUD', '299', null, '299', '1212', null, null, '0', '3', '1', '4', '2017-11-23', '2017-11-10', null, '2017-11-10', null, null, '1510281561404', '406', 'CD', 'USD', 'USD', 'XXXX', '胜多负少的', null, '111.00', '85.27', null, '0.76817', '0.76817', '女包包', '卡包');
INSERT INTO `ams_accountitem_history` VALUES ('953', '2017111010385176234', '849', '854', null, '92', '1', null, 'AUD', '299', null, '299', '1212', null, null, '0', '3', '1', '4', '2017-11-08', '2017-11-10', null, '2017-11-10', null, null, '1510281561405', '407', 'CD', 'USD', 'USD', 'XXXX', '胜多负少的', null, '111.00', '85.27', null, '0.76817', '0.76817', '女包包', '卡包');
INSERT INTO `ams_accountitem_history` VALUES ('954', '2017111010232469686', '821', '830', null, '100', '1', null, 'CNY', '299', null, '299', '12', null, null, '0', '5', '0', '4', '2017-11-15', '2017-11-10', null, '2017-11-10', null, '0.00', '1510281959009', '405', 'DF', 'USD', 'HKD', 'XXXX', '外运香港仓', '250', '111.00', '16.72', '0.00', '0.15065', '1.17511', '鞋', '9');
INSERT INTO `ams_accountitem_history` VALUES ('955', '2017110814303851762', '761', '768', null, '104', '1', null, 'CNY', '299', null, '299', '12312', null, null, '0', '5', '1', '4', '2017-11-08', '2017-11-10', null, '2017-11-08', null, '0.00', '1510282147517', '362', 'FG', 'USD', 'AUD', 'XXXX', '大悦城火锅城', '247', '111.00', '16.72', '0.00', '0.15061', '0.19686', '电话费', '办公费');
INSERT INTO `ams_accountitem_history` VALUES ('956', '2017111010385176234', '838', '846', null, '92', '1', null, 'EUR', '299', null, '299', '1212', null, null, '0', '4', '1', '4', '2017-11-06', '2017-11-10', null, '2017-11-10', null, '0.00', '1510282249584', '411', 'CD', 'USD', 'USD', 'XXXX', '胜多负少的', '251', '222.00', '258.59', '0.00', '1.16482', '1.16482', '花鞋子', '雪地靴');
INSERT INTO `ams_accountitem_history` VALUES ('957', '2017111010385176234', '838', '846', null, '92', '1', null, 'EUR', '299', null, '299', '1212', null, null, '0', '5', '1', '4', '2017-11-06', '2017-11-10', null, '2017-11-10', null, '0.00', '1510282302521', '411', 'CD', 'USD', 'USD', 'XXXX', '胜多负少的', '251', '222.00', '258.59', '0.00', '1.16482', '1.16482', '花鞋子', '雪地靴');
INSERT INTO `ams_accountitem_history` VALUES ('958', '2017111010385176234', '838', '846', null, '92', '1', null, 'EUR', '299', null, '299', '1212', null, null, '0', '5', '1', '4', '2017-11-06', '2017-11-10', null, '2017-11-10', null, '0.00', '1510282327311', '411', 'CD', 'USD', 'USD', 'XXXX', '胜多负少的', '251', '222.00', '258.59', '0.00', '1.16482', '1.16482', '花鞋子', '雪地靴');
INSERT INTO `ams_accountitem_history` VALUES ('959', '2017111010385176234', '804', '808', null, '92', '1', null, 'CNY', '299', null, '299', '1212', null, null, '0', '4', '0', '4', '2017-11-30', '2017-11-10', null, '2017-11-10', null, '0.00', '1510282448338', '417', 'CD', 'USD', 'USD', 'XXXX', '胜多负少的', '252', '22222.00', '3347.74', '0.00', '0.15065', '0.15065', '鞋子', '妈妈鞋');
INSERT INTO `ams_accountitem_history` VALUES ('960', '2017111010385176234', '804', '808', null, '92', '1', null, 'CNY', '299', null, '299', '1212', null, null, '0', '5', '0', '4', '2017-11-30', '2017-11-10', null, '2017-11-10', null, '0.00', '1510282491817', '417', 'CD', 'USD', 'USD', 'XXXX', '胜多负少的', '252', '22222.00', '3347.74', '0.00', '0.15065', '0.15065', '鞋子', '妈妈鞋');
INSERT INTO `ams_accountitem_history` VALUES ('961', '2017111011032094692', '876', '892', null, '107', '1', '书籍', 'CNY', '322', null, null, 'PL-0972', '书籍/book', null, '0', '1', '1', '372', '2017-11-10', '2017-11-10', null, null, null, null, '1510283000686', '418', 'AAA', 'USD', 'CNY', 'ASDJ', '清华大学出版社', null, '233.00', '35.11', null, '0.15070', '1.00000', '增值服务', 'Toll FEE');
INSERT INTO `ams_accountitem_history` VALUES ('962', '2017111011032094692', '876', '892', null, '107', '1', '书籍', 'CNY', '322', null, '322', 'PL-0972', '书籍/book', null, '0', '3', '1', '372', '2017-11-10', '2017-11-10', null, '2017-11-10', null, null, '1510283064365', '418', 'AAA', 'USD', 'CNY', 'ASDJ', '清华大学出版社', null, '233.00', '35.11', null, '0.15070', '1.00000', '增值服务', 'Toll FEE');
INSERT INTO `ams_accountitem_history` VALUES ('963', '2017093011040663537', '157', '162', null, '27', '1', null, 'EUR', '130', null, '130', '123456', null, null, '0', '5', '0', '4', '2017-08-16', '2017-11-10', null, '2017-09-30', null, '0.00', '1510283706404', '195', 'GH', 'USD', 'USD', null, '乐其有限公司', '204', '1212.00', '1432.45', '0.00', '1.18189', '1.18189', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('964', '2017093011040663537', '157', '162', null, '27', '1', null, 'EUR', '130', null, '130', '123456', null, null, '0', '6', '0', '4', '2017-08-16', '2017-11-10', null, '2017-09-30', null, '0.00', '1510283717241', '195', 'GH', 'USD', 'USD', null, '乐其有限公司', '204', '1212.00', '1432.45', '0.00', '1.18189', '1.18189', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('965', '2017093011040663537', '157', '162', null, '27', '1', null, 'EUR', '130', null, '130', '123456', null, null, '0', '5', '0', '4', '2017-08-16', '2017-11-10', null, '2017-09-30', null, '0.00', '1510283727193', '195', 'GH', 'USD', 'USD', null, '乐其有限公司', '204', '1212.00', '1432.45', '0.00', '1.18189', '1.18189', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('966', '2017111010385176234', '838', '846', null, '92', '1', null, 'EUR', '299', null, '299', '1212', null, null, '0', '6', '1', '4', '2017-11-06', '2017-11-10', null, '2017-11-10', null, '0.00', '1510294997903', '411', 'CD', 'USD', 'USD', 'XXXX', '胜多负少的', '251', '222.00', '258.59', '0.00', '1.16482', '1.16482', '花鞋子', '雪地靴');
INSERT INTO `ams_accountitem_history` VALUES ('967', '2017111010385176234', '804', '808', null, '92', '1', null, 'CNY', '299', null, '299', '1212', null, null, '0', '6', '0', '4', '2017-11-30', '2017-11-10', null, '2017-11-10', null, '0.00', '1510295004844', '417', 'CD', 'USD', 'USD', 'XXXX', '胜多负少的', '252', '22222.00', '3347.74', '0.00', '0.15065', '0.15065', '鞋子', '妈妈鞋');
INSERT INTO `ams_accountitem_history` VALUES ('968', '2017102014040011160', '167', '200', null, '90', '1', '1212', 'AUD', '26', null, '26', '12', '121212', null, '0', '5', '1', '4', '2017-10-20', '2017-11-10', null, '2017-10-20', null, '0.00', '1510295052040', '310', 'GH', 'USD', 'USD', null, '的风格大方古典风格', '245', '1212.00', '951.18', '0.00', '0.78481', '0.78481', '碰碰车', '如犬吠');
INSERT INTO `ams_accountitem_history` VALUES ('969', '2017102016093533936', '167', '169', null, '90', '1', '2323', 'CNY', '26', null, '26', '2323', '23232', null, '0', '5', '1', '4', '2017-10-20', '2017-11-10', null, '2017-10-20', null, '0.00', '1510295052040', '311', 'CD', 'USD', 'USD', null, '的风格大方古典风格', '245', '2323.00', '351.08', '0.00', '0.15113', '0.15113', '碰碰车', '观看费');
INSERT INTO `ams_accountitem_history` VALUES ('970', '2017101714403830366', '255', '257', null, '55', '1', '234', 'CNY', '213', null, '213', '2535', '24', null, '0', '3', '0', '239', '2017-10-13', '2017-11-10', null, '2017-11-10', null, null, '1510301069093', '218', 'B2B', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '24.00', '3.63', null, '0.15114', '1.00000', '通讯费用', '流量');
INSERT INTO `ams_accountitem_history` VALUES ('971', '2017111016082964892', '961', '963', null, '117', '1', '网易考拉', 'CNY', '324', null, null, 'KM20171110001', null, null, '0', '1', '1', '379', '2017-11-09', '2017-11-10', null, null, null, null, '1510301309209', '419', '母婴类', 'USD', 'HKD', 'POLK', '网易泡泡', null, '100.00', '15.07', null, '0.15070', '1.17518', '增值服务', '装托');
INSERT INTO `ams_accountitem_history` VALUES ('972', '2017111016092164244', '961', '962', null, '117', '0', null, 'HKD', '324', null, null, 'KM20171110002', null, null, '0', '1', '1', '379', '2017-11-01', '2017-11-10', null, null, null, null, '1510301361074', '420', '箱包类', 'USD', 'HKD', 'POLK', '网易泡泡', null, '10000.00', '1282.32', null, '0.12823', '1.00000', '增值服务', '轉單');
INSERT INTO `ams_accountitem_history` VALUES ('973', '2017111016095359659', '961', '963', null, '117', '1', '扣除1000元', 'CNY', '324', null, null, 'KM20171110003', null, null, '0', '1', '1', '379', '2017-11-11', '2017-11-10', null, null, null, null, '1510301393657', '421', '箱包类', 'USD', 'HKD', 'POLK', '网易泡泡', null, '154.00', '23.21', null, '0.15070', '1.17518', '增值服务', '装托');
INSERT INTO `ams_accountitem_history` VALUES ('974', '2017111016095359659', '961', '963', null, '117', '1', '扣除1000元', 'CNY', '324', null, '324', 'KM20171110003', null, null, '0', '3', '1', '379', '2017-11-11', '2017-11-10', null, '2017-11-10', null, null, '1510301532593', '421', '箱包类', 'USD', 'HKD', 'POLK', '网易泡泡', null, '154.00', '23.21', null, '0.15070', '1.17518', '增值服务', '装托');
INSERT INTO `ams_accountitem_history` VALUES ('975', '2017111016092164244', '961', '962', null, '117', '0', null, 'HKD', '324', null, '324', 'KM20171110002', null, null, '0', '3', '1', '379', '2017-11-01', '2017-11-10', null, '2017-11-10', null, null, '1510301565538', '420', '箱包类', 'USD', 'HKD', 'POLK', '网易泡泡', null, '10000.00', '1282.32', null, '0.12823', '1.00000', '增值服务', '轉單');
INSERT INTO `ams_accountitem_history` VALUES ('976', '2017111016082964892', '961', '963', null, '117', '1', '网易考拉', 'CNY', '324', null, '324', 'KM20171110001', null, null, '0', '3', '1', '379', '2017-11-09', '2017-11-10', null, '2017-11-10', null, null, '1510301565540', '419', '母婴类', 'USD', 'HKD', 'POLK', '网易泡泡', null, '100.00', '15.07', null, '0.15070', '1.17518', '增值服务', '装托');
INSERT INTO `ams_accountitem_history` VALUES ('977', '2017111010232469686', '821', '830', null, '100', '1', null, 'CNY', '299', null, '299', '12', null, null, '0', '6', '0', '4', '2017-11-15', '2017-11-10', null, '2017-11-10', null, '0.00', '1510301876295', '405', 'DF', 'USD', 'HKD', 'XXXX', '外运香港仓', '250', '111.00', '16.72', '0.00', '0.15065', '1.17511', '鞋', '9');
INSERT INTO `ams_accountitem_history` VALUES ('978', '2017111016204774767', '958', '960', null, '114', '1', null, 'CNY', '324', null, null, 'KM20171110003', null, null, '0', '1', '0', '379', '2017-11-02', '2017-11-10', null, null, null, null, '1510302047801', '422', '箱包类', 'USD', 'JPY', 'POLK', '贝亲', null, '88.00', '13.26', null, '0.15070', '17.08254', '理货费', '入库理货费');
INSERT INTO `ams_accountitem_history` VALUES ('979', '2017111016204774767', '958', '960', null, '114', '1', null, 'CNY', '324', null, '324', 'KM20171110003', null, null, '0', '3', '0', '379', '2017-11-02', '2017-11-10', null, '2017-11-10', null, null, '1510302844242', '422', '箱包类', 'USD', 'JPY', 'POLK', '贝亲', null, '88.00', '13.26', null, '0.15070', '17.08254', '理货费', '入库理货费');
INSERT INTO `ams_accountitem_history` VALUES ('980', '2017111016082964892', '961', '963', null, '117', '1', '网易考拉', 'CNY', '324', null, '324', 'KM20171110001', null, null, '0', '4', '1', '379', '2017-11-09', '2017-11-10', null, '2017-11-10', null, '0.00', '1510303607535', '419', '母婴类', 'USD', 'HKD', 'POLK', '网易泡泡', '253', '100.00', '15.07', '0.00', '0.15070', '1.17518', '增值服务', '装托');
INSERT INTO `ams_accountitem_history` VALUES ('981', '2017111016491414169', '961', '962', null, '117', '1', null, 'CNY', '324', null, null, 'KM20171110223', null, null, '0', '1', '1', '379', '2017-11-01', '2017-11-10', null, null, null, null, '1510303754194', '423', '电器类', 'USD', 'HKD', 'POLK', '网易泡泡', null, '100.00', '15.06', null, '0.15063', '1.17495', '增值服务', '轉單');
INSERT INTO `ams_accountitem_history` VALUES ('982', '2017111016491414169', '961', '962', null, '117', '1', null, 'CNY', '324', null, '324', 'KM20171110223', null, null, '0', '3', '1', '379', '2017-11-01', '2017-11-10', null, '2017-11-10', null, null, '1510303766232', '423', '电器类', 'USD', 'HKD', 'POLK', '网易泡泡', null, '100.00', '15.06', null, '0.15063', '1.17495', '增值服务', '轉單');
INSERT INTO `ams_accountitem_history` VALUES ('983', '2017111016535297457', '958', '960', null, '117', '1', null, 'CNY', '324', null, null, 'KM20171110003', null, null, '0', '1', '1', '379', '2017-11-01', '2017-11-10', null, null, null, null, '1510304032229', '424', '电器类', 'USD', 'HKD', 'POLK', '网易泡泡', null, '100.00', '15.06', null, '0.15063', '1.17495', '理货费', '入库理货费');
INSERT INTO `ams_accountitem_history` VALUES ('984', '2017111016535297457', '958', '960', null, '117', '1', null, 'CNY', '324', null, '324', 'KM20171110003', null, null, '0', '3', '1', '379', '2017-11-01', '2017-11-10', null, '2017-11-10', null, null, '1510304056628', '424', '电器类', 'USD', 'HKD', 'POLK', '网易泡泡', null, '100.00', '15.06', null, '0.15063', '1.17495', '理货费', '入库理货费');
INSERT INTO `ams_accountitem_history` VALUES ('985', '2017111016535297457', '958', '960', null, '117', '1', null, 'CNY', '324', null, '324', 'KM20171110003', null, null, '0', '4', '1', '379', '2017-11-01', '2017-11-10', null, '2017-11-10', null, '0.00', '1510304161566', '424', '电器类', 'USD', 'HKD', 'POLK', '网易泡泡', '254', '100.00', '15.06', '0.00', '0.15063', '1.17495', '理货费', '入库理货费');
INSERT INTO `ams_accountitem_history` VALUES ('986', '2017111016491414169', '961', '962', null, '117', '1', null, 'CNY', '324', null, '324', 'KM20171110223', null, null, '0', '4', '1', '379', '2017-11-01', '2017-11-10', null, '2017-11-10', null, '0.00', '1510304161567', '423', '电器类', 'USD', 'HKD', 'POLK', '网易泡泡', '254', '100.00', '15.06', '0.00', '0.15063', '1.17495', '增值服务', '轉單');
INSERT INTO `ams_accountitem_history` VALUES ('987', '2017111309525230696', '971', '973', null, '110', '1', '鼻头长痘痘是什么原因 日常生活中有胃', 'AUD', '302', null, null, '12', '脸上长痘痘是什么原因？脸上长痘痘是比较常见的症状，生活中我们脸上长痘痘的现象太常见了，比如昨天吃了麻辣，今天早上就发现脸上长痘痘了，昨天一宿没睡着，早上又发现脸上长痘痘了，唉，那么脸上长痘痘到底是什么原因引起的，一般来讲脸上长痘痘也要分区域，不同区域长的痘痘对应的情况也不同。\n额头长痘痘是什么原因\n如果额头长痘痘了，说明这个人心火旺盛，血液循环不畅。日常生活中精神压力过大，脾气差是主要表现。\n针对额头长痘痘的朋友，我们建议应早睡早起，多喝水，对去除额头上痘痘具有很好的效果。\n鼻翼长痘痘是什么原因\n鼻翼长痘痘也是比较常见的现象，一般来讲，鼻翼长痘痘与生殖系统有关。鼻翼长痘痘的主要原因有：1.颈椎有毛病、2.卵巢出现问题、3.生殖系统疾病、4.消化不良、5.内分泌失调。\n针对鼻翼长痘痘的朋友，日常生活中不要过度纵欲或禁欲，如果是疾病引起的，一定要及时治疗。\n双眉间长痘痘是什么原因\n双眉间长痘痘即我们说的印堂痘，有印堂痘的朋友体外症状有：胸闷，心律不整，心悸。\n有印堂痘的朋友生活中要注意饮食，尽量不吃有刺激性的食物，如烟、酒、槟榔、酒、辛辣刺激食物，多进行有氧运动。\n鼻头长痘痘是', null, '0', '1', '0', '365', '2017-11-13', '2017-11-13', null, null, null, null, '1510537972051', '428', '    B2B', 'USD', 'CNY', 'QWEW', '送货小李子', null, '12.00', '9.18', null, '0.76476', '5.07785', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('988', '2017111310192653028', '971', '972', null, '122', '1', null, 'CNY', '302', null, null, 'public string TypeNo', null, null, '0', '1', '1', '365', '2017-11-14', '2017-11-13', null, null, null, null, '1510539566527', '429', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '123.00', '222.00', null, '222.00000', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('989', '2017111310200235191', '971', '972', null, '122', '1', null, 'GBP', '302', null, null, 'public string TypeNo', null, null, '0', '1', '1', '365', '2017-11-15', '2017-11-13', null, null, null, null, '1510539602907', '430', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '222.00', '291.27', null, '1.31208', '8.71193', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('990', '2017111310203065410', '971', '972', null, '122', '1', '22', 'CNY', '302', null, null, 'public string TypeNo', null, null, '0', '1', '1', '365', '2017-11-30', '2017-11-13', null, null, null, null, '1510539630897', '431', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '222.00', '33.43', null, '0.15061', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('991', '2017111310334410356', '971', '973', null, '122', '1', null, 'USD', '302', null, null, 'YWBM001', null, null, '0', '1', '1', '365', '2017-11-03', '2017-11-13', null, null, null, null, '1510540424099', '441', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '100.00', '100.00', null, '1.00000', '6.63980', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('992', '2017111310340514493', '971', '973', null, '122', '1', null, 'HKD', '302', null, null, 'YWBM001', null, null, '0', '1', '1', '365', '2017-12-09', '2017-11-13', null, null, null, null, '1510540445676', '442', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '120.00', '15.38', null, '0.12816', '0.85097', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('993', '2017111310342370495', '971', '973', null, '122', '1', null, 'CNY', '302', null, null, 'YWBM001', null, null, '0', '1', '1', '365', '2017-11-16', '2017-11-13', null, null, null, null, '1510540463007', '443', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '120.00', '18.07', null, '0.15061', '1.00000', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('994', '2017111310342370495', '971', '973', null, '122', '1', null, 'CNY', '302', null, '302', 'YWBM001', null, null, '0', '3', '1', '365', '2017-11-16', '2017-11-13', null, '2017-11-13', null, null, '1510540833579', '443', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '120.00', '18.07', null, '0.15061', '1.00000', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('995', '2017111310340514493', '971', '973', null, '122', '1', null, 'HKD', '302', null, '302', 'YWBM001', null, null, '0', '3', '1', '365', '2017-12-09', '2017-11-13', null, '2017-11-13', null, null, '1510540833581', '442', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '120.00', '15.38', null, '0.12816', '0.85097', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('996', '2017111310334410356', '971', '973', null, '122', '1', null, 'USD', '302', null, '302', 'YWBM001', null, null, '0', '3', '1', '365', '2017-11-03', '2017-11-13', null, '2017-11-13', null, null, '1510540833582', '441', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '100.00', '100.00', null, '1.00000', '6.63980', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('997', '2017111310240549291', '966', '968', null, '122', '1', null, 'GBP', '302', null, '302', 'YWBM001', null, null, '0', '3', '0', '365', '2017-12-10', '2017-11-13', null, '2017-11-13', null, null, '1510540833583', '439', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '1212.00', '1590.24', null, '1.31208', '8.71193', '潮流女包', '单肩包');
INSERT INTO `ams_accountitem_history` VALUES ('998', '2017111310240549291', '966', '967', null, '122', '1', null, 'HKD', '302', null, '302', 'YWBM001', null, null, '0', '3', '0', '365', '2017-12-07', '2017-11-13', null, '2017-11-13', null, null, '1510540833586', '440', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '122.00', '15.64', null, '0.12816', null, '潮流女包', '真皮包');
INSERT INTO `ams_accountitem_history` VALUES ('999', '2017111310240549291', '966', '968', null, '122', '1', null, 'HKD', '302', null, '302', 'YWBM001', null, null, '0', '3', '0', '365', '2017-11-16', '2017-11-13', null, '2017-11-13', null, null, '1510540833587', '438', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '1212.00', '155.33', null, '0.12816', '0.85097', '潮流女包', '单肩包');
INSERT INTO `ams_accountitem_history` VALUES ('1000', '2017111310240549291', '971', '973', null, '122', '1', null, 'JPY', '302', null, '302', 'YWBM001', null, null, '0', '3', '0', '365', '2017-11-23', '2017-11-13', null, '2017-11-13', null, null, '1510540833588', '437', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '12.00', '0.11', null, '0.00880', '0.05840', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1001', '2017111310240549291', '971', '972', null, '122', '1', null, 'USD', '302', null, '302', 'YWBM001', null, null, '0', '3', '1', '365', '2017-11-29', '2017-11-13', null, '2017-11-13', null, null, '1510540833589', '436', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '1212.00', '1212.00', null, '1.00000', '6.63980', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1002', '2017111310240549291', '971', '972', null, '122', '1', null, 'CNY', '302', null, '302', 'YWBM001', null, null, '0', '3', '1', '365', '2017-11-29', '2017-11-13', null, '2017-11-13', null, null, '1510540833589', '435', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '1212.00', '182.54', null, '0.15061', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1003', '2017111310240549291', '966', '969', null, '122', '1', null, 'EUR', '302', null, '302', 'YWBM001', null, null, '0', '3', '1', '365', '2017-11-24', '2017-11-13', null, '2017-11-13', null, null, '1510540833590', '434', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '122.00', '142.31', null, '1.16645', '7.74501', '潮流女包', '手提包');
INSERT INTO `ams_accountitem_history` VALUES ('1004', '2017111310240549291', '971', '973', null, '122', '1', null, 'AUD', '302', null, '302', 'YWBM001', null, null, '0', '3', '1', '365', '2017-11-14', '2017-11-13', null, '2017-11-13', null, null, '1510540852852', '433', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '123.00', '94.07', null, '0.76476', '5.07785', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1005', '2017111310240549291', '966', '969', null, '122', '1', null, 'CNY', '302', null, '302', 'YWBM001', null, null, '0', '3', '1', '365', '2017-11-15', '2017-11-13', null, '2017-11-13', null, null, '1510540852853', '432', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '120.00', '18.07', null, '0.15061', '1.00000', '潮流女包', '手提包');
INSERT INTO `ams_accountitem_history` VALUES ('1006', '2017111310342370495', '971', '973', null, '122', '1', null, 'CNY', '302', null, '302', 'YWBM001', null, null, '0', '4', '1', '365', '2017-11-16', '2017-11-13', null, '2017-11-13', null, '0.00', '1510541028937', '443', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '255', '120.00', '18.07', '0.00', '0.15061', '1.00000', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1007', '2017111310340514493', '971', '973', null, '122', '1', null, 'HKD', '302', null, '302', 'YWBM001', null, null, '0', '4', '1', '365', '2017-12-09', '2017-11-13', null, '2017-11-13', null, '0.00', '1510541028938', '442', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '255', '120.00', '15.38', '0.00', '0.12816', '0.85097', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1008', '2017111310334410356', '971', '973', null, '122', '1', null, 'USD', '302', null, '302', 'YWBM001', null, null, '0', '4', '1', '365', '2017-11-03', '2017-11-13', null, '2017-11-13', null, '0.00', '1510541028940', '441', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '100.00', '100.00', '0.00', '1.00000', '6.63980', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1009', '2017111310240549291', '966', '967', null, '122', '1', null, 'HKD', '302', null, '302', 'YWBM001', null, null, '0', '4', '0', '365', '2017-12-07', '2017-11-13', null, '2017-11-13', null, '0.00', '1510541028942', '440', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '122.00', '15.64', '0.00', '0.12816', null, '潮流女包', '真皮包');
INSERT INTO `ams_accountitem_history` VALUES ('1010', '2017111310240549291', '966', '968', null, '122', '1', null, 'GBP', '302', null, '302', 'YWBM001', null, null, '0', '4', '0', '365', '2017-12-10', '2017-11-13', null, '2017-11-13', null, '0.00', '1510541028943', '439', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '1212.00', '1590.24', '0.00', '1.31208', '8.71193', '潮流女包', '单肩包');
INSERT INTO `ams_accountitem_history` VALUES ('1011', '2017111310240549291', '966', '968', null, '122', '1', null, 'HKD', '302', null, '302', 'YWBM001', null, null, '0', '4', '0', '365', '2017-11-16', '2017-11-13', null, '2017-11-13', null, '0.00', '1510541028944', '438', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '1212.00', '155.33', '0.00', '0.12816', '0.85097', '潮流女包', '单肩包');
INSERT INTO `ams_accountitem_history` VALUES ('1012', '2017111310240549291', '971', '973', null, '122', '1', null, 'JPY', '302', null, '302', 'YWBM001', null, null, '0', '4', '0', '365', '2017-11-23', '2017-11-13', null, '2017-11-13', null, '0.00', '1510541028945', '437', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '12.00', '0.11', '0.00', '0.00880', '0.05840', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1013', '2017111310240549291', '971', '972', null, '122', '1', null, 'USD', '302', null, '302', 'YWBM001', null, null, '0', '4', '1', '365', '2017-11-29', '2017-11-13', null, '2017-11-13', null, '0.00', '1510541028945', '436', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '1212.00', '1212.00', '0.00', '1.00000', '6.63980', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1014', '2017111310240549291', '971', '972', null, '122', '1', null, 'CNY', '302', null, '302', 'YWBM001', null, null, '0', '4', '1', '365', '2017-11-29', '2017-11-13', null, '2017-11-13', null, '0.00', '1510541028950', '435', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '1212.00', '182.54', '0.00', '0.15061', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1015', '2017111310240549291', '966', '969', null, '122', '1', null, 'EUR', '302', null, '302', 'YWBM001', null, null, '0', '4', '1', '365', '2017-11-24', '2017-11-13', null, '2017-11-13', null, '0.00', '1510541028951', '434', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '122.00', '142.31', '0.00', '1.16645', '7.74501', '潮流女包', '手提包');
INSERT INTO `ams_accountitem_history` VALUES ('1016', '2017111310240549291', '971', '973', null, '122', '1', null, 'AUD', '302', null, '302', 'YWBM001', null, null, '0', '4', '1', '365', '2017-11-14', '2017-11-13', null, '2017-11-13', null, '0.00', '1510541078803', '433', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '256', '123.00', '94.07', '0.00', '0.76476', '5.07785', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1017', '2017111310240549291', '966', '969', null, '122', '1', null, 'CNY', '302', null, '302', 'YWBM001', null, null, '0', '4', '1', '365', '2017-11-15', '2017-11-13', null, '2017-11-13', null, '0.00', '1510541078806', '432', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '256', '120.00', '18.07', '0.00', '0.15061', '1.00000', '潮流女包', '手提包');
INSERT INTO `ams_accountitem_history` VALUES ('1018', '2017111310240549291', '966', '969', null, '122', '1', null, 'CNY', '302', null, '302', 'YWBM001', null, null, '0', '5', '1', '365', '2017-11-15', '2017-11-13', null, '2017-11-13', null, '0.00', '1510541294168', '432', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '256', '120.00', '18.07', '0.00', '0.15061', '1.00000', '潮流女包', '手提包');
INSERT INTO `ams_accountitem_history` VALUES ('1019', '2017111310240549291', '971', '973', null, '122', '1', null, 'AUD', '302', null, '302', 'YWBM001', null, null, '0', '5', '1', '365', '2017-11-14', '2017-11-13', null, '2017-11-13', null, '0.00', '1510541294168', '433', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '256', '123.00', '94.07', '0.00', '0.76476', '5.07785', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1020', '2017111310495683334', '630', '631', null, '55', '1', 'kk', 'CNY', '213', null, null, '9765555', '0', null, '0', '1', '1', '239', '2017-11-11', '2017-11-13', null, null, null, null, '1510541396182', '444', 'B2C', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '78.00', '11.75', null, '0.15061', '1.00000', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('1021', '2017111310514761225', '657', '659', null, '97', '1', '88', 'HKD', '213', null, null, '9999', '0', null, '0', '1', '1', '239', '2017-11-14', '2017-11-13', null, null, null, null, '1510541507633', '445', 'B2C', 'USD', 'USD', 'KJNZ', '42525', null, '78.00', '10.00', null, '0.12816', '0.12816', '用餐费', '晚餐');
INSERT INTO `ams_accountitem_history` VALUES ('1022', '2017111310525886154', '630', '631', null, '55', '1', '888', 'CNY', '213', null, null, '77657888', '6666', null, '0', '1', '1', '239', '2017-11-15', '2017-11-13', null, null, null, null, '1510541578616', '446', 'B2C', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '88.00', '13.25', null, '0.15061', '1.00000', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('1023', '2017111310535891677', '966', '967', null, '122', '1', null, 'CNY', '302', null, null, '12212', null, null, '0', '1', '0', '365', '2017-11-14', '2017-11-13', null, null, null, null, '1510541638805', '447', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '1212.00', '182.54', null, '0.15061', '1.00000', '潮流女包', '真皮包');
INSERT INTO `ams_accountitem_history` VALUES ('1024', '2017111310240549291', '966', '969', null, '122', '1', null, 'CNY', '302', null, '302', 'YWBM001', null, null, '0', '6', '1', '365', '2017-11-15', '2017-11-13', null, '2017-11-13', null, '0.00', '1510542412452', '432', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '256', '120.00', '18.07', '0.00', '0.15061', '1.00000', '潮流女包', '手提包');
INSERT INTO `ams_accountitem_history` VALUES ('1025', '2017111310240549291', '971', '973', null, '122', '1', null, 'AUD', '302', null, '302', 'YWBM001', null, null, '0', '6', '1', '365', '2017-11-14', '2017-11-13', null, '2017-11-13', null, '0.00', '1510542412452', '433', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '256', '123.00', '94.07', '0.00', '0.76476', '5.07785', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1026', '2017111311140542904', '971', '973', null, '122', '1', null, 'AUD', '302', null, '302', 'Number——001', '确认对账单后账单显示在“收款管理”模块中', null, '0', '3', '1', '365', '2017-11-22', '2017-11-13', null, '2017-11-13', null, null, '1510542855737', '448', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '100.00', '76.54', null, '0.76540', '5.08749', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1027', '2017111311140542904', '971', '973', null, '122', '1', null, 'AUD', '302', null, '302', 'Number——001', '确认对账单后账单显示在“收款管理”模块中', null, '0', '3', '0', '365', '2017-11-28', '2017-11-13', null, '2017-11-13', null, null, '1510542855739', '449', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '100.00', '76.54', null, '0.76540', '5.08749', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1028', '2017111311140542904', '971', '973', null, '122', '1', null, 'AUD', '302', null, '302', 'Number——001', '确认对账单后账单显示在“收款管理”模块中', null, '0', '4', '0', '365', '2017-11-28', '2017-11-13', null, '2017-11-13', null, '0.00', '1510542889936', '449', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '257', '100.00', '76.54', '0.00', '0.76540', '5.08749', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1029', '2017111311140542904', '971', '973', null, '122', '1', null, 'AUD', '302', null, '302', 'Number——001', '确认对账单后账单显示在“收款管理”模块中', null, '0', '4', '1', '365', '2017-11-22', '2017-11-13', null, '2017-11-13', null, '0.00', '1510542889937', '448', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '257', '100.00', '76.54', '0.00', '0.76540', '5.08749', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1030', '2017111311164065681', '971', '972', null, '122', '1', null, 'CNY', '302', null, '302', 'Number——002', '确认对账单后账单显示在“收款管理”模块中', null, '0', '3', '0', '365', '2017-11-02', '2017-11-13', null, '2017-11-13', null, null, '1510543011649', '451', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '100.00', '15.04', null, '0.15045', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1031', '2017111311164065681', '971', '972', null, '122', '1', null, 'CNY', '302', null, '302', 'Number——002', '确认对账单后账单显示在“收款管理”模块中', null, '0', '3', '1', '365', '2017-11-15', '2017-11-13', null, '2017-11-13', null, null, '1510543011651', '450', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '100.00', '15.04', null, '0.15045', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1032', '2017111311164065681', '971', '972', null, '122', '1', null, 'CNY', '302', null, '302', 'Number——002', '确认对账单后账单显示在“收款管理”模块中', null, '0', '3', '0', '365', '2017-11-13', '2017-11-13', null, '2017-11-13', null, null, '1510543011652', '452', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '100.00', '15.04', null, '0.15045', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1033', '2017111311164065681', '971', '972', null, '122', '1', null, 'CNY', '302', null, '302', 'Number——002', '确认对账单后账单显示在“收款管理”模块中', null, '0', '4', '0', '365', '2017-11-13', '2017-11-13', null, '2017-11-13', null, '0.00', '1510543041429', '452', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '258', '100.00', '15.04', '0.00', '0.15045', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1034', '2017111311164065681', '971', '972', null, '122', '1', null, 'CNY', '302', null, '302', 'Number——002', '确认对账单后账单显示在“收款管理”模块中', null, '0', '4', '0', '365', '2017-11-02', '2017-11-13', null, '2017-11-13', null, '0.00', '1510543041433', '451', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '258', '100.00', '15.04', '0.00', '0.15045', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1035', '2017111311164065681', '971', '972', null, '122', '1', null, 'CNY', '302', null, '302', 'Number——002', '确认对账单后账单显示在“收款管理”模块中', null, '0', '4', '1', '365', '2017-11-15', '2017-11-13', null, '2017-11-13', null, '0.00', '1510543041434', '450', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '258', '100.00', '15.04', '0.00', '0.15045', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1036', '2017111311192054569', '971', '972', null, '122', '1', '100元2件', 'CNY', '302', null, null, 'Number——03', '确认对账单后账单显示在“收款管理”模块中', null, '0', '1', '1', '365', '2017-11-14', '2017-11-13', null, null, null, null, '1510543160718', '453', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '120.00', '18.05', null, '0.15045', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1037', '2017111311204439501', '971', '972', null, '122', '1', '确认对账单后账单显示在“收款管理”模块中', 'EUR', '302', null, null, 'Number——03', '确认对账单后账单显示在“收款管理”模块中', null, '0', '1', '0', '365', '2017-11-25', '2017-11-13', null, null, null, null, '1510543244541', '454', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '200.00', '233.07', null, '1.16536', '7.74594', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1038', '2017111311204439501', '971', '972', null, '122', '1', '确认对账单后账单显示在“收款管理”模块中', 'EUR', '302', null, '302', 'Number——03', '确认对账单后账单显示在“收款管理”模块中', null, '0', '3', '0', '365', '2017-11-25', '2017-11-13', null, '2017-11-13', null, null, '1510543253412', '454', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '200.00', '233.07', null, '1.16536', '7.74594', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1039', '2017111311192054569', '971', '972', null, '122', '1', '100元2件', 'CNY', '302', null, '302', 'Number——03', '确认对账单后账单显示在“收款管理”模块中', null, '0', '3', '1', '365', '2017-11-14', '2017-11-13', null, '2017-11-13', null, null, '1510543253414', '453', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '120.00', '18.05', null, '0.15045', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1040', '2017111311225183304', '966', '967', null, '122', '1', '确认对账单后账单显示在“收款管理”模块中', 'JPY', '302', null, null, 'Number——03', '确认对账单后账单显示在“收款管理”模块中', null, '0', '1', '0', '365', '2017-11-23', '2017-11-13', null, null, null, null, '1510543371163', '455', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '100.00', '0.88', null, '0.00880', '0.05848', '潮流女包', '真皮包');
INSERT INTO `ams_accountitem_history` VALUES ('1041', '2017111311225183304', '966', '967', null, '122', '1', '确认对账单后账单显示在“收款管理”模块中', 'JPY', '302', null, '302', 'Number——03', '确认对账单后账单显示在“收款管理”模块中', null, '0', '3', '0', '365', '2017-11-23', '2017-11-13', null, '2017-11-13', null, null, '1510543385962', '455', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '100.00', '0.88', null, '0.00880', '0.05848', '潮流女包', '真皮包');
INSERT INTO `ams_accountitem_history` VALUES ('1042', '2017111311225183304', '966', '967', null, '122', '1', '确认对账单后账单显示在“收款管理”模块中', 'JPY', '302', null, '302', 'Number——03', '确认对账单后账单显示在“收款管理”模块中', null, '0', '4', '0', '365', '2017-11-23', '2017-11-13', null, '2017-11-13', null, '0.00', '1510543456135', '455', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '259', '100.00', '0.88', '0.00', '0.00880', '0.05848', '潮流女包', '真皮包');
INSERT INTO `ams_accountitem_history` VALUES ('1043', '2017111311204439501', '971', '972', null, '122', '1', '确认对账单后账单显示在“收款管理”模块中', 'EUR', '302', null, '302', 'Number——03', '确认对账单后账单显示在“收款管理”模块中', null, '0', '4', '0', '365', '2017-11-25', '2017-11-13', null, '2017-11-13', null, '0.00', '1510543456137', '454', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '259', '200.00', '233.07', '0.00', '1.16536', '7.74594', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1044', '2017111311192054569', '971', '972', null, '122', '1', '100元2件', 'CNY', '302', null, '302', 'Number——03', '确认对账单后账单显示在“收款管理”模块中', null, '0', '4', '1', '365', '2017-11-14', '2017-11-13', null, '2017-11-13', null, '0.00', '1510543456138', '453', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '259', '120.00', '18.05', '0.00', '0.15045', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1045', '2017111311281322760', '630', '631', null, '55', '1', '4', 'CNY', '213', null, null, '4454', '4', null, '0', '1', '0', '239', '2017-11-15', '2017-11-13', null, null, null, null, '1510543693314', '456', 'B2C', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '34567.00', '5206.03', null, '0.15061', '1.00000', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('1046', '2017111311281322760', '630', '631', null, '55', '1', '4', 'CNY', '213', null, '213', '4454', '4', null, '0', '3', '0', '239', '2017-11-15', '2017-11-13', null, '2017-11-13', null, null, '1510543710381', '456', 'B2C', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '34567.00', '5206.03', null, '0.15061', '1.00000', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('1047', '2017111310525886154', '630', '631', null, '55', '1', '888', 'CNY', '213', null, '213', '77657888', '6666', null, '0', '3', '1', '239', '2017-11-15', '2017-11-13', null, '2017-11-13', null, null, '1510543710383', '446', 'B2C', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '88.00', '13.25', null, '0.15061', '1.00000', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('1048', '2017111310495683334', '630', '631', null, '55', '1', 'kk', 'CNY', '213', null, '213', '9765555', '0', null, '0', '3', '1', '239', '2017-11-11', '2017-11-13', null, '2017-11-13', null, null, '1510543710384', '444', 'B2C', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '78.00', '11.75', null, '0.15061', '1.00000', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('1049', '2017111311281322760', '630', '631', null, '55', '1', '4', 'CNY', '213', null, '213', '4454', '4', null, '0', '4', '0', '239', '2017-11-15', '2017-11-13', null, '2017-11-13', null, '0.00', '1510543779545', '456', 'B2C', 'USD', 'CNY', 'KJNZ', '网易考拉', '260', '34567.00', '5206.03', '0.00', '0.15061', '1.00000', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('1050', '2017111310525886154', '630', '631', null, '55', '1', '888', 'CNY', '213', null, '213', '77657888', '6666', null, '0', '4', '1', '239', '2017-11-15', '2017-11-13', null, '2017-11-13', null, '0.00', '1510543779546', '446', 'B2C', 'USD', 'CNY', 'KJNZ', '网易考拉', '260', '88.00', '13.25', '0.00', '0.15061', '1.00000', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('1051', '2017111310495683334', '630', '631', null, '55', '1', 'kk', 'CNY', '213', null, '213', '9765555', '0', null, '0', '4', '1', '239', '2017-11-11', '2017-11-13', null, '2017-11-13', null, '0.00', '1510543779547', '444', 'B2C', 'USD', 'CNY', 'KJNZ', '网易考拉', '260', '78.00', '11.75', '0.00', '0.15061', '1.00000', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('1052', '2017111311333635635', '971', '972', null, '122', '1', ' [结果]', 'EUR', '302', null, null, '111', '\n[结果]', null, '0', '1', '0', '365', '2017-11-08', '2017-11-13', null, null, null, null, '1510544016362', '457', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '111.00', '129.48', null, '1.16645', '7.74501', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1053', '2017111311333635635', '971', '972', null, '122', '1', ' [结果]', 'EUR', '302', null, '302', '111', '\n[结果]', null, '0', '3', '0', '365', '2017-11-08', '2017-11-13', null, '2017-11-13', null, null, '1510544023282', '457', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '111.00', '129.48', null, '1.16645', '7.74501', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1054', '2017111311333635635', '971', '972', null, '122', '1', ' [结果]', 'EUR', '302', null, '302', '111', '\n[结果]', null, '0', '4', '0', '365', '2017-11-08', '2017-11-13', null, '2017-11-13', null, '0.00', '1510544031904', '457', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '261', '111.00', '129.48', '0.00', '1.16645', '7.74501', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1055', '2017111311352462538', '630', '631', null, '97', '1', '233', 'EUR', '213', null, null, '423', '23', null, '0', '1', '1', '239', '2017-11-02', '2017-11-13', null, null, null, null, '1510544124846', '458', 'B2C', 'USD', 'USD', 'KJNZ', '42525', null, '23.00', '26.83', null, '1.16645', '1.16645', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('1056', '2017111311352462538', '630', '631', null, '97', '1', '233', 'EUR', '213', null, '213', '423', '23', null, '0', '3', '1', '239', '2017-11-02', '2017-11-13', null, '2017-11-13', null, null, '1510544344054', '458', 'B2C', 'USD', 'USD', 'KJNZ', '42525', null, '23.00', '26.83', null, '1.16645', '1.16645', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('1057', '2017111311352462538', '630', '631', null, '97', '1', '233', 'EUR', '213', null, '213', '423', '23', null, '0', '4', '1', '239', '2017-11-02', '2017-11-13', null, '2017-11-13', null, '0.00', '1510544394098', '458', 'B2C', 'USD', 'USD', 'KJNZ', '42525', '262', '23.00', '26.83', '0.00', '1.16645', '1.16645', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('1058', '2017111312122642657', '971', '973', null, '122', '1', '100元2件', 'EUR', '302', null, null, '去', '2017111311333635635', null, '0', '1', '1', '365', '2017-11-15', '2017-11-13', null, null, null, null, '1510546346804', '459', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '111.00', '129.48', null, '1.16645', '7.74501', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1059', '2017111312122642657', '971', '973', null, '122', '1', '100元2件', 'EUR', '302', null, '302', '去', '2017111311333635635', null, '0', '3', '1', '365', '2017-11-15', '2017-11-13', null, '2017-11-13', null, null, '1510546386085', '459', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '111.00', '129.48', null, '1.16645', '7.74501', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1060', '2017111312122642657', '971', '973', null, '122', '1', '100元2件', 'EUR', '302', null, '302', '去', '2017111311333635635', null, '0', '4', '1', '365', '2017-11-15', '2017-11-13', null, '2017-11-13', null, '0.00', '1510546398703', '459', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '263', '111.00', '129.48', '0.00', '1.16645', '7.74501', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1061', '2017111313303847099', '971', '972', null, '122', '1', null, 'AUD', '302', null, '302', 'Number——05', '123', null, '0', '3', '1', '365', '2017-11-14', '2017-11-13', null, '2017-11-13', null, null, '1510551054121', '460', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '123.00', '94.07', null, '0.76476', '5.07785', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1062', '2017111313303847099', '971', '972', null, '122', '1', null, 'CNY', '302', null, '302', 'Number——05', '', null, '0', '3', '1', '365', '2017-11-22', '2017-11-13', null, '2017-11-13', null, null, '1510551054123', '461', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '123.00', '18.52', null, '0.15061', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1063', '2017111313303847099', '966', '969', null, '122', '1', null, 'EUR', '302', null, '302', 'Number——05', null, null, '0', '3', '1', '365', '2017-11-25', '2017-11-13', null, '2017-11-13', null, null, '1510551054123', '462', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '123.00', '143.47', null, '1.16745', '7.74501', '潮流女包', '手提包');
INSERT INTO `ams_accountitem_history` VALUES ('1064', '2017111313303847099', '966', '968', null, '122', '1', null, 'EUR', '302', null, '302', 'Number——05', null, null, '0', '3', '1', '365', '2017-11-14', '2017-11-13', null, '2017-11-13', null, null, '1510551054124', '464', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '200.00', '233.29', null, '1.16645', '7.74501', '潮流女包', '单肩包');
INSERT INTO `ams_accountitem_history` VALUES ('1065', '2017111313303847099', '966', '968', null, '122', '1', null, 'GBP', '302', null, '302', 'Number——05', null, null, '0', '3', '1', '365', '2017-11-29', '2017-11-13', null, '2017-11-13', null, null, '1510551054125', '463', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '100.00', '131.21', null, '1.31208', '8.71193', '潮流女包', '单肩包');
INSERT INTO `ams_accountitem_history` VALUES ('1066', '2017111313303847099', '966', '969', null, '122', '1', null, 'GBP', '302', null, '302', 'Number——05', null, null, '0', '3', '0', '365', '2017-11-14', '2017-11-13', null, '2017-11-13', null, null, '1510551054126', '465', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '1000.00', '1312.08', null, '1.31208', '8.71193', '潮流女包', '手提包');
INSERT INTO `ams_accountitem_history` VALUES ('1067', '2017111313303847099', '966', '967', null, '122', '1', null, 'EUR', '302', null, '302', 'Number——05', null, null, '0', '3', '0', '365', '2017-11-30', '2017-11-13', null, '2017-11-13', null, null, '1510551054126', '466', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '500.00', '583.23', null, '1.16645', '7.74501', '潮流女包', '真皮包');
INSERT INTO `ams_accountitem_history` VALUES ('1068', '2017111313303847099', '966', '968', null, '122', '1', null, 'HKD', '302', null, '302', 'Number——05', null, null, '0', '3', '0', '365', '2017-11-09', '2017-11-13', null, '2017-11-13', null, null, '1510551054127', '467', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '200.00', '25.63', null, '0.12816', '0.85097', '潮流女包', '单肩包');
INSERT INTO `ams_accountitem_history` VALUES ('1069', '2017111313363620926', '971', '972', null, '122', '1', null, 'GBP', '302', null, null, 'Number——06', null, null, '0', '1', '1', '365', '2017-11-15', '2017-11-13', null, null, null, null, '1510551396114', '468', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '1000.00', '1312.08', null, '1.31208', '8.71193', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1070', '2017111313363620926', '971', '972', null, '122', '1', null, 'GBP', '302', null, '302', 'Number——06', null, null, '0', '3', '1', '365', '2017-11-15', '2017-11-13', null, '2017-11-13', null, null, '1510551403892', '468', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '1000.00', '1312.08', null, '1.31208', '8.71193', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1071', '2017111314042298110', '971', '972', null, '122', '1', '著作权归作者所有。商业转载请联系作者获', 'EUR', '302', null, null, 'Number——07', '为了经历。经历吃喝。尖椒鸡，毛血旺，辣子肥肠，爆炒毛肚，冒菜串串火锅，深夜大排档。经历爱恨。暗恋，告白，暧昧，热恋，分手，纠葛，出轨，复合。经历悲喜。婚姻，争吵，和好，陪伴，亲人离世，小孩诞生。经历转变。生理上的由年轻健壮到年老体弱的转变，和心理上的由纠结往复到豁达通透的转变。经历性爱。不同的姿势，不同的人，不同的地点，不同的感受。经历妥协。原谅老板的剥削，伴侣的背叛，孩子的哭闹，生活的种种不如意。经历死亡。你看着它踏着循序渐进不急不慢的节奏向你驶来，带着颓败的，释然的气息。生命的美好之处就在于，我们永远不知道明天的自己会经历什么。未来的事物被一道帘子掩着，虚虚实实，若隐若现，不可捉摸。而唯有活着，才会有掀开帘子探个究竟的可能性。\n\n作者：田可乐\n链接：https://www.zhihu.com/question/25032523/answer/135442611\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', null, '0', '1', '1', '365', '2017-11-14', '2017-11-13', null, null, null, null, '1510553062780', '469', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '100.00', '116.55', null, '1.16553', '7.74602', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1072', '2017111314042298110', '971', '972', null, '122', '1', '著作权归作者所有。商业转载请联系作者获', 'CNY', '302', '302', null, 'Number——077', '为了经历。经历吃喝。尖椒鸡，毛血旺，辣子肥肠，爆炒毛肚，冒菜串串火锅，深夜大排档。经历爱恨。暗恋，告白，暧昧，热恋，分手，纠葛，出轨，复合。经历悲喜。婚姻，争吵，和好，陪伴，亲人离世，小孩诞生。经历转变。生理上的由年轻健壮到年老体弱的转变，和心理上的由纠结往复到豁达通透的转变。经历性爱。不同的姿势，不同的人，不同的地点，不同的感受。经历妥协。原谅老板的剥削，伴侣的背叛，孩子的哭闹，生活的种种不如意。经历死亡。你看着它踏着循序渐进不急不慢的节奏向你驶来，带着颓败的，释然的气息。生命的美好之处就在于，我们永远不知道明天的自己会经历什么。未来的事物被一道帘子掩着，虚虚实实，若隐若现，不可捉摸。而唯有活着，才会有掀开帘子探个究竟的可能性。\n\n作者：田可乐\n链接：https://www.zhihu.com/question/25032523/answer/135442611\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', null, '0', '2', '1', '365', '2017-11-14', '2017-11-13', '2017-11-13', null, null, null, '1510553165535', '469', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '100.00', '15.05', null, '0.15047', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1073', '2017111314042298110', '971', '972', null, '122', '1', '著作权归作者所有。商业转载请联系作者获', 'CNY', '302', '302', null, 'Number——077', '为了经历。经历吃喝。尖椒鸡，毛血旺，辣子肥肠，爆炒毛肚，冒菜串串火锅，深夜大排档。经历爱恨。暗恋，告白，暧昧，热恋，分手，纠葛，出轨，复合。经历悲喜。婚姻，争吵，和好，陪伴，亲人离世，小孩诞生。经历转变。生理上的由年轻健壮到年老体弱的转变，和心理上的由纠结往复到豁达通透的转变。经历性爱。不同的姿势，不同的人，不同的地点，不同的感受。经历妥协。原谅老板的剥削，伴侣的背叛，孩子的哭闹，生活的种种不如意。经历死亡。你看着它踏着循序渐进不急不慢的节奏向你驶来，带着颓败的，释然的气息。生命的美好之处就在于，我们永远不知道明天的自己会经历什么。未来的事物被一道帘子掩着，虚虚实实，若隐若现，不可捉摸。而唯有活着，才会有掀开帘子探个究竟的可能性。\n\n作者：田可乐\n链接：https://www.zhihu.com/question/25032523/answer/135442611\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', null, '0', '2', '1', '365', '2017-11-14', '2017-11-13', '2017-11-13', null, null, null, '1510553170407', '469', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '100.00', '15.05', null, '0.15047', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1074', '2017111314042298110', '971', '972', null, '122', '1', '著作权归作者所有。商业转载请联系作者获', 'CNY', '302', '302', null, 'Number——077', '为了经历。经历吃喝。尖椒鸡，毛血旺，辣子肥肠，爆炒毛肚，冒菜串串火锅，深夜大排档。经历爱恨。暗恋，告白，暧昧，热恋，分手，纠葛，出轨，复合。经历悲喜。婚姻，争吵，和好，陪伴，亲人离世，小孩诞生。经历转变。生理上的由年轻健壮到年老体弱的转变，和心理上的由纠结往复到豁达通透的转变。经历性爱。不同的姿势，不同的人，不同的地点，不同的感受。经历妥协。原谅老板的剥削，伴侣的背叛，孩子的哭闹，生活的种种不如意。经历死亡。你看着它踏着循序渐进不急不慢的节奏向你驶来，带着颓败的，释然的气息。生命的美好之处就在于，我们永远不知道明天的自己会经历什么。未来的事物被一道帘子掩着，虚虚实实，若隐若现，不可捉摸。而唯有活着，才会有掀开帘子探个究竟的可能性。\n\n作者：田可乐\n链接：https://www.zhihu.com/question/25032523/answer/135442611\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', null, '0', '2', '1', '365', '2017-11-14', '2017-11-13', '2017-11-13', null, null, null, '1510553171261', '469', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '100.00', '15.05', null, '0.15047', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1075', '2017111314042298110', '971', '972', null, '122', '1', '著作权归作者所有。商业转载请联系作者获', 'CNY', '302', '302', null, 'Number——077', '为了经历。经历吃喝。尖椒鸡，毛血旺，辣子肥肠，爆炒毛肚，冒菜串串火锅，深夜大排档。经历爱恨。暗恋，告白，暧昧，热恋，分手，纠葛，出轨，复合。经历悲喜。婚姻，争吵，和好，陪伴，亲人离世，小孩诞生。经历转变。生理上的由年轻健壮到年老体弱的转变，和心理上的由纠结往复到豁达通透的转变。经历性爱。不同的姿势，不同的人，不同的地点，不同的感受。经历妥协。原谅老板的剥削，伴侣的背叛，孩子的哭闹，生活的种种不如意。经历死亡。你看着它踏着循序渐进不急不慢的节奏向你驶来，带着颓败的，释然的气息。生命的美好之处就在于，我们永远不知道明天的自己会经历什么。未来的事物被一道帘子掩着，虚虚实实，若隐若现，不可捉摸。而唯有活着，才会有掀开帘子探个究竟的可能性。\n\n作者：田可乐\n链接：https://www.zhihu.com/question/25032523/answer/135442611\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', null, '0', '2', '1', '365', '2017-11-14', '2017-11-13', '2017-11-13', null, null, null, '1510553171916', '469', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '100.00', '15.05', null, '0.15047', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1076', '2017111314042298110', '971', '972', null, '122', '1', '著作权归作者所有。商业转载请联系作者获', 'CNY', '302', '302', null, 'Number——077', '为了经历。经历吃喝。尖椒鸡，毛血旺，辣子肥肠，爆炒毛肚，冒菜串串火锅，深夜大排档。经历爱恨。暗恋，告白，暧昧，热恋，分手，纠葛，出轨，复合。经历悲喜。婚姻，争吵，和好，陪伴，亲人离世，小孩诞生。经历转变。生理上的由年轻健壮到年老体弱的转变，和心理上的由纠结往复到豁达通透的转变。经历性爱。不同的姿势，不同的人，不同的地点，不同的感受。经历妥协。原谅老板的剥削，伴侣的背叛，孩子的哭闹，生活的种种不如意。经历死亡。你看着它踏着循序渐进不急不慢的节奏向你驶来，带着颓败的，释然的气息。生命的美好之处就在于，我们永远不知道明天的自己会经历什么。未来的事物被一道帘子掩着，虚虚实实，若隐若现，不可捉摸。而唯有活着，才会有掀开帘子探个究竟的可能性。\n\n作者：田可乐\n链接：https://www.zhihu.com/question/25032523/answer/135442611\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', null, '0', '2', '1', '365', '2017-11-14', '2017-11-13', '2017-11-13', null, null, null, '1510553172149', '469', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '100.00', '15.05', null, '0.15047', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1077', '2017111314042298110', '971', '972', null, '122', '1', '著作权归作者所有。商业转载请联系作者获', 'CNY', '302', '302', null, 'Number——077', '为了经历。经历吃喝。尖椒鸡，毛血旺，辣子肥肠，爆炒毛肚，冒菜串串火锅，深夜大排档。经历爱恨。暗恋，告白，暧昧，热恋，分手，纠葛，出轨，复合。经历悲喜。婚姻，争吵，和好，陪伴，亲人离世，小孩诞生。经历转变。生理上的由年轻健壮到年老体弱的转变，和心理上的由纠结往复到豁达通透的转变。经历性爱。不同的姿势，不同的人，不同的地点，不同的感受。经历妥协。原谅老板的剥削，伴侣的背叛，孩子的哭闹，生活的种种不如意。经历死亡。你看着它踏着循序渐进不急不慢的节奏向你驶来，带着颓败的，释然的气息。生命的美好之处就在于，我们永远不知道明天的自己会经历什么。未来的事物被一道帘子掩着，虚虚实实，若隐若现，不可捉摸。而唯有活着，才会有掀开帘子探个究竟的可能性。\n\n作者：田可乐\n链接：https://www.zhihu.com/question/25032523/answer/135442611\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', null, '0', '2', '1', '365', '2017-11-14', '2017-11-13', '2017-11-13', null, null, null, '1510553172332', '469', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '100.00', '15.05', null, '0.15047', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1078', '2017111314042298110', '971', '972', null, '122', '1', '著作权归作者所有。商业转载请联系作者获', 'CNY', '302', '302', null, 'Number——077', '为了经历。经历吃喝。尖椒鸡，毛血旺，辣子肥肠，爆炒毛肚，冒菜串串火锅，深夜大排档。经历爱恨。暗恋，告白，暧昧，热恋，分手，纠葛，出轨，复合。经历悲喜。婚姻，争吵，和好，陪伴，亲人离世，小孩诞生。经历转变。生理上的由年轻健壮到年老体弱的转变，和心理上的由纠结往复到豁达通透的转变。经历性爱。不同的姿势，不同的人，不同的地点，不同的感受。经历妥协。原谅老板的剥削，伴侣的背叛，孩子的哭闹，生活的种种不如意。经历死亡。你看着它踏着循序渐进不急不慢的节奏向你驶来，带着颓败的，释然的气息。生命的美好之处就在于，我们永远不知道明天的自己会经历什么。未来的事物被一道帘子掩着，虚虚实实，若隐若现，不可捉摸。而唯有活着，才会有掀开帘子探个究竟的可能性。\n\n作者：田可乐\n链接：https://www.zhihu.com/question/25032523/answer/135442611\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', null, '0', '2', '1', '365', '2017-11-14', '2017-11-13', '2017-11-13', null, null, null, '1510553172562', '469', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '100.00', '15.05', null, '0.15047', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1079', '2017111314042298110', '971', '972', null, '122', '1', '著作权归作者所有。商业转载请联系作者获', 'CNY', '302', '302', null, 'Number——077', '为了经历。经历吃喝。尖椒鸡，毛血旺，辣子肥肠，爆炒毛肚，冒菜串串火锅，深夜大排档。经历爱恨。暗恋，告白，暧昧，热恋，分手，纠葛，出轨，复合。经历悲喜。婚姻，争吵，和好，陪伴，亲人离世，小孩诞生。经历转变。生理上的由年轻健壮到年老体弱的转变，和心理上的由纠结往复到豁达通透的转变。经历性爱。不同的姿势，不同的人，不同的地点，不同的感受。经历妥协。原谅老板的剥削，伴侣的背叛，孩子的哭闹，生活的种种不如意。经历死亡。你看着它踏着循序渐进不急不慢的节奏向你驶来，带着颓败的，释然的气息。生命的美好之处就在于，我们永远不知道明天的自己会经历什么。未来的事物被一道帘子掩着，虚虚实实，若隐若现，不可捉摸。而唯有活着，才会有掀开帘子探个究竟的可能性。\n\n作者：田可乐\n链接：https://www.zhihu.com/question/25032523/answer/135442611\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', null, '0', '2', '1', '365', '2017-11-14', '2017-11-13', '2017-11-13', null, null, null, '1510553172915', '469', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '100.00', '15.05', null, '0.15047', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1080', '2017111314042298110', '971', '972', null, '122', '1', '著作权归作者所有。商业转载请联系作者获', 'CNY', '302', '302', '302', 'Number——077', '为了经历。经历吃喝。尖椒鸡，毛血旺，辣子肥肠，爆炒毛肚，冒菜串串火锅，深夜大排档。经历爱恨。暗恋，告白，暧昧，热恋，分手，纠葛，出轨，复合。经历悲喜。婚姻，争吵，和好，陪伴，亲人离世，小孩诞生。经历转变。生理上的由年轻健壮到年老体弱的转变，和心理上的由纠结往复到豁达通透的转变。经历性爱。不同的姿势，不同的人，不同的地点，不同的感受。经历妥协。原谅老板的剥削，伴侣的背叛，孩子的哭闹，生活的种种不如意。经历死亡。你看着它踏着循序渐进不急不慢的节奏向你驶来，带着颓败的，释然的气息。生命的美好之处就在于，我们永远不知道明天的自己会经历什么。未来的事物被一道帘子掩着，虚虚实实，若隐若现，不可捉摸。而唯有活着，才会有掀开帘子探个究竟的可能性。\n\n作者：田可乐\n链接：https://www.zhihu.com/question/25032523/answer/135442611\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', null, '0', '3', '1', '365', '2017-11-14', '2017-11-13', '2017-11-13', '2017-11-13', null, null, '1510553225077', '469', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', null, '100.00', '15.05', null, '0.15047', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1081', '2017111314042298110', '971', '972', null, '122', '1', '著作权归作者所有。商业转载请联系作者获', 'CNY', '302', '302', '302', 'Number——077', '为了经历。经历吃喝。尖椒鸡，毛血旺，辣子肥肠，爆炒毛肚，冒菜串串火锅，深夜大排档。经历爱恨。暗恋，告白，暧昧，热恋，分手，纠葛，出轨，复合。经历悲喜。婚姻，争吵，和好，陪伴，亲人离世，小孩诞生。经历转变。生理上的由年轻健壮到年老体弱的转变，和心理上的由纠结往复到豁达通透的转变。经历性爱。不同的姿势，不同的人，不同的地点，不同的感受。经历妥协。原谅老板的剥削，伴侣的背叛，孩子的哭闹，生活的种种不如意。经历死亡。你看着它踏着循序渐进不急不慢的节奏向你驶来，带着颓败的，释然的气息。生命的美好之处就在于，我们永远不知道明天的自己会经历什么。未来的事物被一道帘子掩着，虚虚实实，若隐若现，不可捉摸。而唯有活着，才会有掀开帘子探个究竟的可能性。\n\n作者：田可乐\n链接：https://www.zhihu.com/question/25032523/answer/135442611\n来源：知乎\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。', null, '0', '4', '1', '365', '2017-11-14', '2017-11-13', '2017-11-13', '2017-11-13', null, '0.00', '1510553291973', '469', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '264', '100.00', '15.05', '0.00', '0.15047', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1082', '2017111311140542904', '971', '973', null, '122', '1', null, 'AUD', '302', null, '302', 'Number——001', '确认对账单后账单显示在“收款管理”模块中', null, '0', '5', '1', '365', '2017-11-22', '2017-11-13', null, '2017-11-13', null, '0.00', '1510556809092', '448', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '257', '100.00', '76.54', '0.00', '0.76540', '5.08749', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1083', '2017111311140542904', '971', '973', null, '122', '1', null, 'AUD', '302', null, '302', 'Number——001', '确认对账单后账单显示在“收款管理”模块中', null, '0', '5', '0', '365', '2017-11-28', '2017-11-13', null, '2017-11-13', null, '0.00', '1510556809092', '449', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '257', '100.00', '76.54', '0.00', '0.76540', '5.08749', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1084', '2017111310240549291', '966', '969', null, '122', '1', null, 'EUR', '302', null, '302', 'YWBM001', null, null, '0', '5', '1', '365', '2017-11-24', '2017-11-13', null, '2017-11-13', null, '0.00', '1510556856871', '434', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '122.00', '142.31', '0.00', '1.16645', '7.74501', '潮流女包', '手提包');
INSERT INTO `ams_accountitem_history` VALUES ('1085', '2017111310240549291', '971', '972', null, '122', '1', null, 'CNY', '302', null, '302', 'YWBM001', null, null, '0', '5', '1', '365', '2017-11-29', '2017-11-13', null, '2017-11-13', null, '0.00', '1510556856871', '435', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '1212.00', '182.54', '0.00', '0.15061', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1086', '2017111310240549291', '971', '972', null, '122', '1', null, 'USD', '302', null, '302', 'YWBM001', null, null, '0', '5', '1', '365', '2017-11-29', '2017-11-13', null, '2017-11-13', null, '0.00', '1510556856871', '436', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '1212.00', '1212.00', '0.00', '1.00000', '6.63980', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1087', '2017111310240549291', '971', '973', null, '122', '1', null, 'JPY', '302', null, '302', 'YWBM001', null, null, '0', '5', '0', '365', '2017-11-23', '2017-11-13', null, '2017-11-13', null, '0.00', '1510556856871', '437', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '12.00', '0.11', '0.00', '0.00880', '0.05840', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1088', '2017111310240549291', '966', '968', null, '122', '1', null, 'HKD', '302', null, '302', 'YWBM001', null, null, '0', '5', '0', '365', '2017-11-16', '2017-11-13', null, '2017-11-13', null, '0.00', '1510556856871', '438', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '1212.00', '155.33', '0.00', '0.12816', '0.85097', '潮流女包', '单肩包');
INSERT INTO `ams_accountitem_history` VALUES ('1089', '2017111310240549291', '966', '968', null, '122', '1', null, 'GBP', '302', null, '302', 'YWBM001', null, null, '0', '5', '0', '365', '2017-12-10', '2017-11-13', null, '2017-11-13', null, '0.00', '1510556856871', '439', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '1212.00', '1590.24', '0.00', '1.31208', '8.71193', '潮流女包', '单肩包');
INSERT INTO `ams_accountitem_history` VALUES ('1090', '2017111310240549291', '966', '967', null, '122', '1', null, 'HKD', '302', null, '302', 'YWBM001', null, null, '0', '5', '0', '365', '2017-12-07', '2017-11-13', null, '2017-11-13', null, '0.00', '1510556856871', '440', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '122.00', '15.64', '0.00', '0.12816', null, '潮流女包', '真皮包');
INSERT INTO `ams_accountitem_history` VALUES ('1091', '2017111310334410356', '971', '973', null, '122', '1', null, 'USD', '302', null, '302', 'YWBM001', null, null, '0', '5', '1', '365', '2017-11-03', '2017-11-13', null, '2017-11-13', null, '0.00', '1510556856871', '441', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '255', '100.00', '100.00', '0.00', '1.00000', '6.63980', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1092', '2017111310340514493', '971', '973', null, '122', '1', null, 'HKD', '302', null, '302', 'YWBM001', null, null, '0', '5', '1', '365', '2017-12-09', '2017-11-13', null, '2017-11-13', null, '0.00', '1510556856871', '442', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '255', '120.00', '15.38', '0.00', '0.12816', '0.85097', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1093', '2017111310342370495', '971', '973', null, '122', '1', null, 'CNY', '302', null, '302', 'YWBM001', null, null, '0', '5', '1', '365', '2017-11-16', '2017-11-13', null, '2017-11-13', null, '0.00', '1510556856871', '443', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '255', '120.00', '18.07', '0.00', '0.15061', '1.00000', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1094', '2017111311333635635', '971', '972', null, '122', '1', ' [结果]', 'EUR', '302', null, '302', '111', '\n[结果]', null, '0', '5', '0', '365', '2017-11-08', '2017-11-13', null, '2017-11-13', null, '0.00', '1510556908792', '457', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '261', '111.00', '129.48', '0.00', '1.16645', '7.74501', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1095', '2017111311333635635', '971', '972', null, '122', '1', ' [结果]', 'EUR', '302', null, '302', '111', '\n[结果]', null, '0', '6', '0', '365', '2017-11-08', '2017-11-13', null, '2017-11-13', null, '0.00', '1510556959022', '457', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '261', '111.00', '129.48', '0.00', '1.16645', '7.74501', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1096', '2017111313363620926', '971', '972', null, '122', '1', null, 'GBP', '302', null, '302', 'Number——06', null, null, '0', '4', '1', '365', '2017-11-15', '2017-11-13', null, '2017-11-13', null, '0.00', '1510558134119', '468', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '1000.00', '1312.08', '0.00', '1.31208', '8.71193', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1097', '2017111313303847099', '966', '968', null, '122', '1', null, 'HKD', '302', null, '302', 'Number——05', null, null, '0', '4', '0', '365', '2017-11-09', '2017-11-13', null, '2017-11-13', null, '0.00', '1510558134121', '467', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '200.00', '25.63', '0.00', '0.12816', '0.85097', '潮流女包', '单肩包');
INSERT INTO `ams_accountitem_history` VALUES ('1098', '2017111313303847099', '966', '967', null, '122', '1', null, 'EUR', '302', null, '302', 'Number——05', null, null, '0', '4', '0', '365', '2017-11-30', '2017-11-13', null, '2017-11-13', null, '0.00', '1510558134123', '466', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '500.00', '583.23', '0.00', '1.16645', '7.74501', '潮流女包', '真皮包');
INSERT INTO `ams_accountitem_history` VALUES ('1099', '2017111313303847099', '966', '969', null, '122', '1', null, 'GBP', '302', null, '302', 'Number——05', null, null, '0', '4', '0', '365', '2017-11-14', '2017-11-13', null, '2017-11-13', null, '0.00', '1510558134125', '465', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '1000.00', '1312.08', '0.00', '1.31208', '8.71193', '潮流女包', '手提包');
INSERT INTO `ams_accountitem_history` VALUES ('1100', '2017111313303847099', '966', '968', null, '122', '1', null, 'EUR', '302', null, '302', 'Number——05', null, null, '0', '4', '1', '365', '2017-11-14', '2017-11-13', null, '2017-11-13', null, '0.00', '1510558134126', '464', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '200.00', '233.29', '0.00', '1.16645', '7.74501', '潮流女包', '单肩包');
INSERT INTO `ams_accountitem_history` VALUES ('1101', '2017111313303847099', '966', '968', null, '122', '1', null, 'GBP', '302', null, '302', 'Number——05', null, null, '0', '4', '1', '365', '2017-11-29', '2017-11-13', null, '2017-11-13', null, '0.00', '1510558134127', '463', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '100.00', '131.21', '0.00', '1.31208', '8.71193', '潮流女包', '单肩包');
INSERT INTO `ams_accountitem_history` VALUES ('1102', '2017111313303847099', '966', '969', null, '122', '1', null, 'EUR', '302', null, '302', 'Number——05', null, null, '0', '4', '1', '365', '2017-11-25', '2017-11-13', null, '2017-11-13', null, '0.00', '1510558134129', '462', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '123.00', '143.47', '0.00', '1.16745', '7.74501', '潮流女包', '手提包');
INSERT INTO `ams_accountitem_history` VALUES ('1103', '2017111313303847099', '971', '972', null, '122', '1', null, 'CNY', '302', null, '302', 'Number——05', '', null, '0', '4', '1', '365', '2017-11-22', '2017-11-13', null, '2017-11-13', null, '0.00', '1510558134130', '461', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '123.00', '18.52', '0.00', '0.15061', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1104', '2017111313303847099', '971', '972', null, '122', '1', null, 'AUD', '302', null, '302', 'Number——05', '123', null, '0', '4', '1', '365', '2017-11-14', '2017-11-13', null, '2017-11-13', null, '0.00', '1510558134137', '460', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '123.00', '94.07', '0.00', '0.76476', '5.07785', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1105', '2017111310535891677', '966', '967', null, '122', '1', null, 'CNY', '302', null, '302', '12212', null, null, '0', '3', '0', '365', '2017-11-14', '2017-11-14', null, '2017-11-14', null, null, '1510624961319', '447', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', null, '1212.00', '182.54', null, '0.15061', '1.00000', '潮流女包', '真皮包');
INSERT INTO `ams_accountitem_history` VALUES ('1106', '2017111413270818911', '971', '972', null, '125', '1', null, 'AUD', '302', null, '302', 'coding', null, null, '0', '3', '0', '365', '2017-12-07', '2017-11-14', null, '2017-11-14', null, null, '1510637264175', '481', 'B2M', 'USD', 'GBP', 'QWEW', '蔡康永', null, '122.00', '93.14', null, '0.76348', '0.58212', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1107', '2017111413270818911', '971', '972', null, '130', '1', null, 'USD', '302', null, '302', 'coding', null, null, '0', '3', '0', '365', '2017-11-29', '2017-11-14', null, '2017-11-14', null, null, '1510637264203', '480', 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '121.00', '121.00', null, '1.00000', '6.63900', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1108', '2017111413270818911', '966', '967', null, '130', '1', null, 'HKD', '302', null, '302', 'coding', null, null, '0', '3', '0', '365', '2017-11-22', '2017-11-14', null, '2017-11-14', null, null, '1510637264216', '479', 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '121.00', '15.51', null, '0.12819', '0.85095', '潮流女包', '真皮包');
INSERT INTO `ams_accountitem_history` VALUES ('1109', '2017111413270818911', '971', '973', null, '130', '1', null, 'CNY', '302', null, '302', 'coding', null, null, '0', '3', '0', '365', '2017-11-26', '2017-11-14', null, '2017-11-14', null, null, '1510637264218', '478', 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '121.00', '18.23', null, '0.15064', '1.00000', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1110', '2017111413270818911', '976', '981', null, '130', '1', null, 'EUR', '302', null, '302', 'coding', null, null, '0', '3', '0', '365', '2017-11-23', '2017-11-14', null, '2017-11-14', null, null, '1510637264230', '477', 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '112.00', '130.69', null, '1.16686', '7.74609', '家用电器', '手机');
INSERT INTO `ams_accountitem_history` VALUES ('1111', '2017111413270818911', '976', '982', null, '130', '1', null, 'CNY', '302', null, '302', 'coding', null, null, '0', '3', '0', '365', '2017-11-15', '2017-11-14', null, '2017-11-14', null, null, '1510637264232', '476', 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '221.00', '33.29', null, '0.15064', '1.00000', '家用电器', '电脑');
INSERT INTO `ams_accountitem_history` VALUES ('1112', '2017111413270818911', '971', '973', null, '130', '1', null, 'CNY', '302', null, '302', 'coding', null, null, '0', '3', '1', '365', '2017-11-14', '2017-11-14', null, '2017-11-14', null, null, '1510637264233', '475', 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '1111.00', '167.36', null, '0.15064', '1.00000', '黄金首饰', 'K金');
INSERT INTO `ams_accountitem_history` VALUES ('1113', '2017111413270818911', '976', '980', null, '130', '1', null, 'EUR', '302', null, '302', 'coding', null, null, '0', '3', '1', '365', '2017-11-08', '2017-11-14', null, '2017-11-14', null, null, '1510637264234', '474', 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '111.00', '129.52', null, '1.16686', '7.74609', '家用电器', '电视');
INSERT INTO `ams_accountitem_history` VALUES ('1114', '2017111413270818911', '966', '968', null, '130', '1', null, 'JPY', '302', null, '302', 'coding', null, null, '0', '3', '1', '365', '2017-11-30', '2017-11-14', null, '2017-11-14', null, null, '1510637264235', '473', 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '111.00', '0.98', null, '0.00880', '0.05843', '潮流女包', '单肩包');
INSERT INTO `ams_accountitem_history` VALUES ('1115', '2017111413270818911', '976', '980', null, '130', '1', null, 'HKD', '302', null, '302', 'coding', null, null, '0', '3', '1', '365', '2017-11-08', '2017-11-14', null, '2017-11-14', null, null, '1510637264236', '472', 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '111.00', '14.23', null, '0.12819', '0.85095', '家用电器', '电视');
INSERT INTO `ams_accountitem_history` VALUES ('1116', '2017111413270818911', '976', '982', null, '130', '1', null, 'CNY', '302', null, '302', 'coding', null, null, '0', '3', '1', '365', '2017-11-07', '2017-11-14', null, '2017-11-14', null, null, '1510637281579', '470', 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '111.00', '16.72', null, '0.15064', '1.00000', '家用电器', '电脑');
INSERT INTO `ams_accountitem_history` VALUES ('1117', '2017111413270818911', '971', '972', null, '130', '1', null, 'CNY', '302', null, '302', 'coding', null, null, '0', '3', '1', '365', '2017-11-14', '2017-11-14', null, '2017-11-14', null, null, '1510637281581', '471', 'B2M', 'USD', 'CNY', 'QWEW', '马薇薇', null, '111.00', '16.72', null, '0.15164', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1118', '2017111413303292839', '971', '972', null, '129', '1', null, 'HKD', '302', null, null, '12', null, null, '0', '1', '0', '365', '2017-11-14', '2017-11-14', null, null, null, null, '1510637432197', '482', 'B2L', 'USD', 'CNY', 'QWEW', '何大人', null, '121.00', '15.51', null, '0.12819', '0.85103', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1119', '2017111313303847099', '971', '972', null, '122', '1', null, 'CNY', '302', null, '302', 'Number——05', '', null, '0', '5', '1', '365', '2017-11-22', '2017-11-14', null, '2017-11-13', null, '0.00', '1510639090448', '461', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '123.00', '18.52', '0.00', '0.15061', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1120', '2017111313303847099', '971', '972', null, '122', '1', null, 'AUD', '302', null, '302', 'Number——05', '123', null, '0', '5', '1', '365', '2017-11-14', '2017-11-14', null, '2017-11-13', null, '0.00', '1510639090448', '460', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '123.00', '94.07', '0.00', '0.76476', '5.07785', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1121', '2017111313363620926', '971', '972', null, '122', '1', null, 'GBP', '302', null, '302', 'Number——06', null, null, '0', '5', '1', '365', '2017-11-15', '2017-11-14', null, '2017-11-13', null, '0.00', '1510639090448', '468', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '1000.00', '1312.08', '0.00', '1.31208', '8.71193', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1122', '2017111313303847099', '966', '968', null, '122', '1', null, 'HKD', '302', null, '302', 'Number——05', null, null, '0', '5', '0', '365', '2017-11-09', '2017-11-14', null, '2017-11-13', null, '0.00', '1510639090448', '467', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '200.00', '25.63', '0.00', '0.12816', '0.85097', '潮流女包', '单肩包');
INSERT INTO `ams_accountitem_history` VALUES ('1123', '2017111313303847099', '966', '967', null, '122', '1', null, 'EUR', '302', null, '302', 'Number——05', null, null, '0', '5', '0', '365', '2017-11-30', '2017-11-14', null, '2017-11-13', null, '0.00', '1510639090448', '466', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '500.00', '583.23', '0.00', '1.16645', '7.74501', '潮流女包', '真皮包');
INSERT INTO `ams_accountitem_history` VALUES ('1124', '2017111313303847099', '966', '969', null, '122', '1', null, 'GBP', '302', null, '302', 'Number——05', null, null, '0', '5', '0', '365', '2017-11-14', '2017-11-14', null, '2017-11-13', null, '0.00', '1510639090448', '465', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '1000.00', '1312.08', '0.00', '1.31208', '8.71193', '潮流女包', '手提包');
INSERT INTO `ams_accountitem_history` VALUES ('1125', '2017111313303847099', '966', '968', null, '122', '1', null, 'EUR', '302', null, '302', 'Number——05', null, null, '0', '5', '1', '365', '2017-11-14', '2017-11-14', null, '2017-11-13', null, '0.00', '1510639090448', '464', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '200.00', '233.29', '0.00', '1.16645', '7.74501', '潮流女包', '单肩包');
INSERT INTO `ams_accountitem_history` VALUES ('1126', '2017111313303847099', '966', '968', null, '122', '1', null, 'GBP', '302', null, '302', 'Number——05', null, null, '0', '5', '1', '365', '2017-11-29', '2017-11-14', null, '2017-11-13', null, '0.00', '1510639090448', '463', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '100.00', '131.21', '0.00', '1.31208', '8.71193', '潮流女包', '单肩包');
INSERT INTO `ams_accountitem_history` VALUES ('1127', '2017111313303847099', '966', '969', null, '122', '1', null, 'EUR', '302', null, '302', 'Number——05', null, null, '0', '5', '1', '365', '2017-11-25', '2017-11-14', null, '2017-11-13', null, '0.00', '1510639090448', '462', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '265', '123.00', '143.47', '0.00', '1.16745', '7.74501', '潮流女包', '手提包');
INSERT INTO `ams_accountitem_history` VALUES ('1128', '2017111311192054569', '971', '972', null, '122', '1', '100元2件', 'CNY', '302', null, '302', 'Number——03', '确认对账单后账单显示在“收款管理”模块中', null, '0', '5', '1', '365', '2017-11-14', '2017-11-14', null, '2017-11-13', null, '0.00', '1510639385155', '453', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '259', '120.00', '18.05', '0.00', '0.15045', '1.00000', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1129', '2017111311204439501', '971', '972', null, '122', '1', '确认对账单后账单显示在“收款管理”模块中', 'EUR', '302', null, '302', 'Number——03', '确认对账单后账单显示在“收款管理”模块中', null, '0', '5', '0', '365', '2017-11-25', '2017-11-14', null, '2017-11-13', null, '0.00', '1510639385155', '454', '    B2B', 'USD', 'CNY', 'QWEW', '成大洁', '259', '200.00', '233.07', '0.00', '1.16536', '7.74594', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1130', '2017111311225183304', '966', '967', null, '122', '1', '确认对账单后账单显示在“收款管理”模块中', 'JPY', '302', null, '302', 'Number——03', '确认对账单后账单显示在“收款管理”模块中', null, '0', '5', '0', '365', '2017-11-23', '2017-11-14', null, '2017-11-13', null, '0.00', '1510639385155', '455', 'B2C', 'USD', 'CNY', 'QWEW', '成大洁', '259', '100.00', '0.88', '0.00', '0.00880', '0.05848', '潮流女包', '真皮包');
INSERT INTO `ams_accountitem_history` VALUES ('1131', '2017111413303292839', '971', '972', null, '129', '1', null, 'HKD', '302', null, '302', '12', null, null, '0', '3', '0', '365', '2017-11-14', '2017-11-14', null, '2017-11-14', null, null, '1510639467709', '482', 'B2L', 'USD', 'CNY', 'QWEW', '何大人', null, '121.00', '15.51', null, '0.12819', '0.85103', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1132', '2017111413303292839', '971', '972', null, '129', '1', null, 'HKD', '302', null, '302', '12', null, null, '0', '4', '0', '365', '2017-11-14', '2017-11-14', null, '2017-11-14', null, '0.00', '1510639484748', '482', 'B2L', 'USD', 'CNY', 'QWEW', '何大人', '266', '121.00', '15.51', '0.00', '0.12819', '0.85103', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1133', '2017111413303292839', '971', '972', null, '129', '1', null, 'HKD', '302', null, '302', '12', null, null, '0', '5', '0', '365', '2017-11-14', '2017-11-14', null, '2017-11-14', null, '0.00', '1510639699862', '482', 'B2L', 'USD', 'CNY', 'QWEW', '何大人', '266', '121.00', '15.51', '0.00', '0.12819', '0.85103', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1134', '2017111415124479388', '630', '631', null, '55', '1', '12', 'CNY', '213', null, null, '22222', '1222', null, '0', '1', '1', '239', '2017-11-09', '2017-11-14', null, null, null, null, '1510643564735', '483', 'B2C', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '12.00', '1.81', null, '0.15064', '1.00000', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('1135', '2017111415124479388', '630', '631', null, '55', '1', '12', 'CNY', '213', null, '213', '22222', '1222', null, '0', '3', '1', '239', '2017-11-09', '2017-11-14', null, '2017-11-14', null, null, '1510643666781', '483', 'B2C', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '12.00', '1.81', null, '0.15064', '1.00000', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('1136', '2017111415124479388', '630', '631', null, '55', '1', '12', 'CNY', '213', null, '213', '22222', '1222', null, '0', '4', '1', '239', '2017-11-09', '2017-11-14', null, '2017-11-14', null, '0.00', '1510643738858', '483', 'B2C', 'USD', 'CNY', 'KJNZ', '网易考拉', '267', '12.00', '1.81', '0.00', '0.15064', '1.00000', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('1137', '2017111415445089632', '971', '972', null, '127', '1', '12', 'CNY', '302', null, null, '123', '阿萨德发表过', null, '0', '1', '1', '365', '2017-11-14', '2017-11-14', null, null, null, null, '1510645490563', '484', 'B2L', 'USD', 'EUR', 'QWEW', '罗振宇', null, '111.00', '16.72', null, '0.15064', '0.12910', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1138', '2017111415445089632', '971', '972', null, '127', '1', '12', 'CNY', '302', null, '302', '123', '阿萨德发表过', null, '0', '3', '1', '365', '2017-11-14', '2017-11-14', null, '2017-11-14', null, null, '1510645589151', '484', 'B2L', 'USD', 'EUR', 'QWEW', '罗振宇', null, '111.00', '16.72', null, '0.15064', '0.12910', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1139', '2017111415445089632', '971', '972', null, '127', '1', '12', 'CNY', '302', null, '302', '123', '阿萨德发表过', null, '0', '4', '1', '365', '2017-11-14', '2017-11-14', null, '2017-11-14', null, '0.00', '1510645620152', '484', 'B2L', 'USD', 'EUR', 'QWEW', '罗振宇', '268', '111.00', '16.72', '0.00', '0.15064', '0.12910', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1140', '2017111415445089632', '971', '972', null, '127', '1', '12', 'CNY', '302', null, '302', '123', '阿萨德发表过', null, '0', '5', '1', '365', '2017-11-14', '2017-11-14', null, '2017-11-14', null, '0.00', '1510645645397', '484', 'B2L', 'USD', 'EUR', 'QWEW', '罗振宇', '268', '111.00', '16.72', '0.00', '0.15064', '0.12910', '黄金首饰', '黄金');
INSERT INTO `ams_accountitem_history` VALUES ('1141', '2017111415483412406', '976', '982', null, '131', '1', 'sad', 'CNY', '302', null, null, '1234', '双方的说法从', null, '0', '1', '0', '365', '2017-11-16', '2017-11-14', null, null, null, null, '1510645714817', '485', 'B2K', 'USD', 'USD', 'QWEW', '张三供应商', null, '212.00', '31.94', null, '0.15064', '0.15064', '家用电器', '电脑');
INSERT INTO `ams_accountitem_history` VALUES ('1142', '2017111415483412406', '976', '982', null, '131', '1', 'sad', 'CNY', '302', null, '302', '1234', '双方的说法从', null, '0', '3', '0', '365', '2017-11-16', '2017-11-14', null, '2017-11-14', null, null, '1510645727782', '485', 'B2K', 'USD', 'USD', 'QWEW', '张三供应商', null, '212.00', '31.94', null, '0.15064', '0.15064', '家用电器', '电脑');
INSERT INTO `ams_accountitem_history` VALUES ('1143', '2017111415483412406', '976', '982', null, '131', '1', 'sad', 'CNY', '302', null, '302', '1234', '双方的说法从', null, '0', '4', '0', '365', '2017-11-16', '2017-11-14', null, '2017-11-14', null, '0.00', '1510645778498', '485', 'B2K', 'USD', 'USD', 'QWEW', '张三供应商', '269', '212.00', '31.94', '0.00', '0.15064', '0.15064', '家用电器', '电脑');
INSERT INTO `ams_accountitem_history` VALUES ('1144', '2017111415483412406', '976', '982', null, '131', '1', 'sad', 'CNY', '302', null, '302', '1234', '双方的说法从', null, '0', '5', '0', '365', '2017-11-16', '2017-11-14', null, '2017-11-14', null, '0.00', '1510645821919', '485', 'B2K', 'USD', 'USD', 'QWEW', '张三供应商', '269', '212.00', '31.94', '0.00', '0.15064', '0.15064', '家用电器', '电脑');
INSERT INTO `ams_accountitem_history` VALUES ('1145', '2017111416090684263', '757', '759', null, '101', '1', '11', 'CNY', '246', null, null, '111', null, null, '0', '1', '0', '306', '2017-11-15', '2017-11-14', null, null, null, null, '1510646946654', '486', 'd2d', 'USD', 'USD', 'BILI', '肯德基', null, '12.00', '1.81', null, '0.15064', '0.15064', '税费', '666');
INSERT INTO `ams_accountitem_history` VALUES ('1146', '2017111416090684263', '757', '759', null, '101', '1', '11', 'CNY', '246', null, '246', '111', null, null, '0', '3', '0', '306', '2017-11-15', '2017-11-14', null, '2017-11-14', null, null, '1510646964530', '486', 'd2d', 'USD', 'USD', 'BILI', '肯德基', null, '12.00', '1.81', null, '0.15064', '0.15064', '税费', '666');
INSERT INTO `ams_accountitem_history` VALUES ('1147', '2017111416090684263', '757', '759', null, '101', '1', '11', 'CNY', '246', null, '246', '111', null, null, '0', '4', '0', '306', '2017-11-15', '2017-11-14', null, '2017-11-14', null, '0.00', '1510646997760', '486', 'd2d', 'USD', 'USD', 'BILI', '肯德基', '270', '12.00', '1.81', '0.00', '0.15064', '0.15064', '税费', '666');
INSERT INTO `ams_accountitem_history` VALUES ('1148', '2017110613205774963', '757', '758', null, '98', '1', '23', 'AUD', '246', null, '246', '2323', null, null, '0', '5', '1', '306', '2017-11-08', '2017-11-14', null, '2017-11-06', null, '0.00', '1510647039283', '347', 'P2B', 'USD', 'CNY', 'BILI', '驭剑', '241', '32.00', '24.50', '0.00', '0.76564', '5.07848', '税费', '123');
INSERT INTO `ams_accountitem_history` VALUES ('1149', '2017110710235587830', '757', '758', null, '101', '1', '234', 'AUD', '286', null, '286', '54235234', null, null, '0', '5', '1', '306', '2017-11-08', '2017-11-14', null, '2017-11-07', null, '0.00', '1510648091383', '355', 'P2B', 'USD', 'USD', 'BILI', '肯德基', '243', '2324.00', '1786.53', '0.00', '0.76876', '0.76876', '税费', '123');
INSERT INTO `ams_accountitem_history` VALUES ('1150', '2017111416090684263', '757', '759', null, '101', '1', '11', 'CNY', '246', null, '246', '111', null, null, '0', '5', '0', '306', '2017-11-15', '2017-11-14', null, '2017-11-14', null, '0.00', '1510648727310', '486', 'd2d', 'USD', 'USD', 'BILI', '肯德基', '270', '12.00', '1.81', '0.00', '0.15064', '0.15064', '税费', '666');
INSERT INTO `ams_accountitem_history` VALUES ('1151', '2017111509451556501', '976', '981', null, '131', '1', null, 'EUR', '302', null, '302', 'NUMBER_009', null, null, '0', '3', '0', '365', '2017-11-06', '2017-11-15', null, '2017-11-15', null, null, '1510710338103', '488', 'B2L', 'USD', 'USD', 'QWEW', '张三供应商', null, '200.00', '235.88', null, '1.17938', '1.17938', '家用电器', '手机');
INSERT INTO `ams_accountitem_history` VALUES ('1152', '2017111509451556501', '976', '982', null, '134', '1', null, 'EUR', '302', null, '302', 'NUMBER_009', null, null, '0', '3', '1', '365', '2017-11-15', '2017-11-15', null, '2017-11-15', null, null, '1510710355743', '487', 'B2L', 'USD', 'USD', 'QWEW', 'DSGF', null, '100.00', '117.94', null, '1.17938', '1.17938', '家用电器', '电脑');
INSERT INTO `ams_accountitem_history` VALUES ('1153', '2017111715173536745', '657', '660', null, '99', '0', '345', 'CNY', '213', null, null, '345', '345', null, '0', '1', '1', '239', '2017-11-09', '2017-11-17', null, null, null, null, '1510903055400', '489', 'C2B', 'USD', 'CNY', 'KJNZ', '美图美妆', null, '345.00', '52.06', null, '0.15089', '1.00000', '用餐费', '中餐');
INSERT INTO `ams_accountitem_history` VALUES ('1154', '2017111716123964662', '976', '982', null, '136', '1', null, 'AUD', '302', null, null, '823905284782', null, null, '0', '1', '1', '365', '2017-11-17', '2017-11-17', null, null, null, null, '1510906359221', '490', 'B2K', 'USD', 'HKD', 'QWEW', '软通动力中文', null, '100.00', '75.88', null, '0.75878', '5.92588', '家用电器', '电脑');
INSERT INTO `ams_accountitem_history` VALUES ('1155', '2017111716504811113', '757', '758', null, '101', '1', null, 'CNY', '286', null, null, '111', null, null, '0', '1', '1', '306', '2017-11-02', '2017-11-17', null, null, null, null, '1510908648639', '491', 'd2d', 'USD', 'USD', 'BILI', '肯德基', null, '0.00', '111.00', null, '0.15077', '0.15077', '税费', '123');
INSERT INTO `ams_accountitem_history` VALUES ('1156', '2017111716504811113', '757', '758', null, '101', '1', null, 'CNY', '286', null, '286', '111', null, null, '0', '3', '1', '306', '2017-11-02', '2017-11-17', null, '2017-11-17', null, null, '1510908663969', '491', 'd2d', 'USD', 'USD', 'BILI', '肯德基', null, '0.00', '111.00', null, '0.15077', '0.15077', '税费', '123');
INSERT INTO `ams_accountitem_history` VALUES ('1157', '2017111716504811113', '757', '758', null, '101', '1', null, 'CNY', '286', null, '286', '111', null, null, '0', '4', '1', '306', '2017-11-02', '2017-11-17', null, '2017-11-17', null, '0.00', '1510908716924', '491', 'd2d', 'USD', 'USD', 'BILI', '肯德基', '271', '0.00', '111.00', '0.00', '0.15077', '0.15077', '税费', '123');
INSERT INTO `ams_accountitem_history` VALUES ('1158', '2017111716504811113', '757', '758', null, '101', '1', null, 'CNY', '286', null, '286', '111', null, null, '0', '5', '1', '306', '2017-11-02', '2017-11-17', null, '2017-11-17', null, '0.00', '1510908750593', '491', 'd2d', 'USD', 'USD', 'BILI', '肯德基', '271', '0.00', '111.00', '0.00', '0.15077', '0.15077', '税费', '123');
INSERT INTO `ams_accountitem_history` VALUES ('1159', '2017112114434410959', '657', '660', null, '97', '0', '456', 'AUD', '213', null, null, '654', '456', null, '0', '1', '1', '239', '2017-11-03', '2017-11-21', null, null, null, null, '1511246624636', '492', 'C2B', 'USD', 'USD', 'KJNZ', '42525', null, '45.00', '33.95', null, '0.75438', '0.75438', '用餐费', '中餐');
INSERT INTO `ams_accountitem_history` VALUES ('1160', '2017112814174611546', '657', '660', null, '55', '1', '324', 'AUD', '213', null, null, '42423', '234', null, '0', '1', '1', '239', '2017-11-27', '2017-11-28', null, null, null, null, '1511849866035', '499', 'C2B', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '23.00', '17.50', null, '0.76086', '5.01910', '用餐费', '中餐');
INSERT INTO `ams_accountitem_history` VALUES ('1161', '2017112814174611546', '657', '660', null, '55', '1', '324', 'AUD', '213', '213', null, '42423', '234', null, '0', '2', '1', '239', '2017-11-27', '2017-11-28', '2017-11-28', null, null, null, '1511852808836', '499', 'C2B', 'USD', 'CNY', 'KJNZ', '网易考拉', null, '23.00', '17.50', null, '0.76086', '5.01910', '用餐费', '中餐');
INSERT INTO `ams_accountitem_history` VALUES ('1162', '2017121413374513059', '657', '659', null, '99', '0', '12', 'AUD', '213', null, null, '21321313', '12', null, '0', '1', '1', '239', '2017-12-15', '2017-12-14', null, null, null, null, '1513229865499', '500', 'C2B', 'USD', 'CNY', 'KJNZ', '美图美妆', null, '12.00', '9.16', null, '0.76324', '5.05037', '用餐费', '晚餐');
INSERT INTO `ams_accountitem_history` VALUES ('1163', '2017121810100476460', '630', '631', null, '99', '1', '34', 'AUD', '213', null, null, '12345687654', '34', null, '0', '1', '1', '239', '2017-12-29', '2017-12-18', null, null, null, null, '1513563004934', '501', 'C2B', 'USD', 'CNY', 'KJNZ', '美图美妆', null, '34.00', '26.00', null, '0.76476', '5.05560', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('1164', '2017121810100476460', '630', '631', null, '99', '1', '34', 'AUD', '213', '213', null, '12345687654', '34', null, '0', '2', '1', '239', '2017-12-29', '2017-12-18', '2017-12-18', null, null, null, '1513564354405', '501', 'C2B', 'USD', 'CNY', 'KJNZ', '美图美妆', null, '34.00', '26.00', null, '0.76476', '5.05560', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('1165', '2017121810100476460', '630', '631', null, '99', '1', '34', 'AUD', '213', '213', null, '12345687654', '34', null, '0', '2', '1', '239', '2017-12-29', '2017-12-18', '2017-12-18', null, null, null, '1513564372989', '501', 'C2B', 'USD', 'CNY', 'KJNZ', '美图美妆', null, '34.00', '26.00', null, '0.76476', '5.05560', '交通费用', '机票费用');
INSERT INTO `ams_accountitem_history` VALUES ('1166', '2017121810333089000', '657', '660', null, '99', '0', '34', 'AUD', '213', null, null, '234567654', '34', null, '0', '1', '1', '239', '2018-01-03', '2017-12-18', null, null, null, null, '1513564410909', '502', 'C2B', 'USD', 'CNY', 'KJNZ', '美图美妆', null, '34.00', '26.00', null, '0.76476', '5.05560', '用餐费', '中餐');
INSERT INTO `ams_accountitem_history` VALUES ('1167', '2017121810333089000', '657', '660', null, '99', '0', '34', 'AUD', '213', '213', null, '234567654', '34', null, '0', '2', '1', '239', '2018-01-03', '2017-12-18', '2017-12-18', null, null, null, '1513564604016', '502', 'C2B', 'USD', 'CNY', 'KJNZ', '美图美妆', null, '34.00', '26.00', null, '0.76476', '5.05560', '用餐费', '中餐');
INSERT INTO `ams_accountitem_history` VALUES ('1168', '2017121810333089000', '657', '660', null, '99', '0', '34', 'AUD', '213', '213', null, '234567654', '34', null, '0', '2', '1', '239', '2018-01-03', '2017-12-18', '2017-12-18', null, null, null, '1513564993184', '502', 'C2B', 'USD', 'CNY', 'KJNZ', '美图美妆', null, '34.00', '26.00', null, '0.76476', '5.05560', '用餐费', '中餐');
INSERT INTO `ams_accountitem_history` VALUES ('1169', '2017121810333089000', '657', '660', null, '99', '0', '34', 'AUD', '213', '213', null, '234567654', '34 ', null, '0', '2', '1', '239', '2018-01-03', '2017-12-18', '2017-12-18', null, null, null, '1513565746385', '502', 'C2B', 'USD', 'CNY', 'KJNZ', '美图美妆', null, '34.00', '26.00', null, '0.76476', '5.05560', '用餐费', '中餐');
INSERT INTO `ams_accountitem_history` VALUES ('1170', '2017111416090684263', '757', '759', null, '101', '1', '11', 'CNY', '246', null, '246', '111', null, null, '0', '5', '0', '306', '2017-11-15', '2017-12-18', null, '2017-11-14', null, '0.00', '1513583497563', '486', 'd2d', 'USD', 'USD', 'BILI', '肯德基', '270', '12.00', '1.81', '0.00', '0.15064', '0.15064', '税费', '666');
INSERT INTO `ams_accountitem_history` VALUES ('1171', '2017121810333089000', '657', '660', null, '99', '0', '34', 'AUD', '213', '213', null, '234567654', '34 ', null, '0', '2', '1', '239', '2018-01-03', '2017-12-18', '2017-12-18', null, null, null, '1513586604692', '502', 'C2B', 'USD', 'CNY', 'KJNZ', '美图美妆', null, '34.00', '26.00', null, '0.76476', '5.05560', '用餐费', '中餐');
INSERT INTO `ams_accountitem_history` VALUES ('1172', '2017121810333089000', '657', '660', null, '99', '0', '34', 'AUD', '213', '213', null, '234567654', '34 ', null, '0', '2', '1', '239', '2018-01-03', '2017-12-18', '2017-12-18', null, null, null, '1513586829299', '502', 'C2B', 'USD', 'CNY', 'KJNZ', '美图美妆', null, '34.00', '26.00', null, '0.76476', '5.05560', '用餐费', '中餐');
INSERT INTO `ams_accountitem_history` VALUES ('1173', '2017121810333089000', '657', '660', null, '99', '0', '34', 'AUD', '213', '213', null, '234567654', '34 ', null, '0', '2', '1', '239', '2018-01-03', '2017-12-18', '2017-12-18', null, null, null, '1513586961149', '502', 'C2B', 'USD', 'CNY', 'KJNZ', '美图美妆', null, '34.00', '26.00', null, '0.76476', '5.05560', '用餐费', '中餐');
INSERT INTO `ams_accountitem_history` VALUES ('1174', '2017121810333089000', '657', '660', null, '99', '0', '34', 'AUD', '213', '213', null, '234567654', '34 ', null, '0', '2', '1', '239', '2018-01-03', '2017-12-18', '2017-12-18', null, null, null, '1513587034212', '502', 'C2B', 'USD', 'CNY', 'KJNZ', '美图美妆', null, '34.00', '26.00', null, '0.76476', '5.05560', '用餐费', '中餐');
INSERT INTO `ams_accountitem_history` VALUES ('1175', '2017121810333089000', '657', '660', null, '99', '0', '34', 'AUD', '213', '213', null, '234567654', '34 ', null, '0', '2', '1', '239', '2018-01-03', '2017-12-18', '2017-12-18', null, null, null, '1513587647235', '502', 'C2B', 'USD', 'CNY', 'KJNZ', '美图美妆', null, '34.00', '26.00', null, '0.76476', '5.05560', '用餐费', '中餐');
INSERT INTO `ams_accountitem_history` VALUES ('1176', '2017110814303851762', '761', '768', null, '104', '1', null, 'CNY', '299', null, '299', '12312', null, null, '0', '5', '1', '4', '2017-11-08', '2018-07-02', null, '2017-11-08', null, '0.00', '1530499226384', '362', 'FG', 'USD', 'AUD', 'XXXX', '大悦城火锅城', '247', '111.00', '16.72', '0.00', '0.15061', '0.19686', '电话费', '办公费');
INSERT INTO `ams_accountitem_history` VALUES ('1177', '2018070210420510869', '849', '854', null, '111', '1', '213', 'CNY', '4', null, null, '12312312', null, null, '0', '1', '1', '4', '2018-07-04', '2018-07-02', null, null, null, null, '1530499325475', '503', 'B2C', 'USD', 'EUR', 'XXXX', '送货小李子', null, '12.00', '1.81', null, '0.15083', '0.12935', '女包包', '卡包');
INSERT INTO `ams_accountitem_history` VALUES ('1178', '2017092014355875063', '17', '18', null, '3', '1', '1223332', 'CNY', '7', null, '7', '10011', 'weqweqwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', null, '0', '6', '1', '4', '2017-09-21', '2018-07-02', null, '2017-09-20', null, '0.00', '1530499534026', '59', 'B2B', 'USD', 'AUD', 'XXXX', '网易', '152', '24.00', '3.66', '0.00', '0.15230', '0.18931', '装卸费', '进仓卸货费');
INSERT INTO `ams_accountitem_history` VALUES ('1179', '2017093011040663537', '157', '162', null, '27', '1', null, 'EUR', '130', null, '130', '123456', null, null, '0', '6', '0', '4', '2017-08-16', '2018-07-02', null, '2017-09-30', null, '0.00', '1530499611161', '195', 'GH', 'USD', 'USD', null, '乐其有限公司', '204', '1212.00', '1432.45', '0.00', '1.18189', '1.18189', '鬼屋', '道士');
INSERT INTO `ams_accountitem_history` VALUES ('1180', '2017092616580946312', '142', '144', null, '26', '1', 'http://dms.chigoose.', 'AUD', '8', null, '8', 'YWBM01', 'http://dms.chigoose.com\n9月26日\n问题1：采购管理系统    商品管理     在商品管理的详细信息页面，无法删除附件图片，是否可以删除？\n问题2:采购管理里系统   采购计划     编写同样的SKU名称，UPC编码不一致，在采购计划中填写SKU名称，如何区分出剩余不一样的SUK编码“”\n问题3：在系统中，邮箱是否按正确的邮箱走\n问题4：在采购计划的详细信息页面，“确认采购计划”“生成采购单”“查看已生成的采购单”按钮大小不一致，是否可以更改\n问题5：用户管理系统     我的服务/新增服务     建议：把“服务类型”放在第一个，新增服务时，可以先选择服务类型，在填写服务的类型的一些信息\n问题6：用户管理系统    我的服务/新增服务/分销服务     字段“支持贸易方式”与“分销方式”相比，支持贸易方式就多出了一个“一般贸易”', null, '0', '5', '1', '4', '2017-09-26', '2018-07-02', null, '2017-09-26', null, '0.00', '1530499673165', '156', 'B2B', 'USD', 'EUR', 'XXXX', '结算餐费1、2', '193', '12.00', '9.50', '0.00', '0.79152', '0.66970', '费用类别名称', '午餐明细名称');
INSERT INTO `ams_accountitem_history` VALUES ('1181', '2017111010210352802', '849', '853', null, '91', '1', null, 'EUR', '299', null, '4', '10', null, null, '0', '3', '0', '4', '2017-11-14', '2018-07-02', null, '2018-07-02', null, null, '1530499698996', '403', 'AB', 'USD', 'USD', 'XXXX', '必填项供应商', null, '112.00', '130.46', null, '1.16482', '1.16482', '女包包', '手拿包');
INSERT INTO `ams_accountitem_history` VALUES ('1182', '2017111010210352802', '849', '852', null, '91', '1', null, 'EUR', '299', null, '4', '10', null, null, '0', '3', '1', '4', '2017-11-02', '2018-07-02', null, '2018-07-02', null, null, '1530499720162', '402', 'AB', 'USD', 'USD', 'XXXX', '必填项供应商', null, '112.00', '130.46', null, '1.16382', '1.16482', '女包包', '钱包');
INSERT INTO `ams_accountitem_history` VALUES ('1183', '2018070210554334024', '894', '901', null, '111', '1', null, 'CNY', '4', null, null, '554553', null, null, '0', '1', '1', '4', '2018-07-01', '2018-07-02', null, null, null, null, '1530500143878', '504', 'B2C', 'USD', 'EUR', 'XXXX', '送货小李子', null, '12.00', '11.99', null, '0.15079', '0.12927', '房子', '106');
INSERT INTO `ams_accountitem_history` VALUES ('1184', '2018070210574643751', '910', '924', null, '89', '0', null, 'AUD', '4', null, null, '123124', null, null, '0', '1', '1', '4', '2018-07-02', '2018-07-02', null, null, null, null, '1530500266400', '505', 'B2C', 'USD', 'USD', 'XXXX', '李四', null, '12.00', '8.87', null, '0.73915', '0.73915', '车子', '113');
INSERT INTO `ams_accountitem_history` VALUES ('1185', '2018070211001111416', '910', '925', null, '120', '0', null, 'AUD', '4', null, null, '34356', null, null, '0', '1', '1', '4', '2018-07-02', '2018-07-02', null, null, null, null, '1530500411504', '506', 'B2C', 'USD', 'CNY', 'XXXX', '56', null, '23.00', '17.00', null, '0.73915', '4.90182', '车子', '114');
INSERT INTO `ams_accountitem_history` VALUES ('1186', '2018070211011023072', '910', '925', null, '111', '0', null, 'AUD', '4', null, null, '234567', null, null, '0', '1', '1', '4', '2018-07-02', '2018-07-02', null, null, null, null, '1530500470008', '507', 'B2C', 'USD', 'EUR', 'XXXX', '送货小李子', null, '23.00', '17.00', null, '0.73915', '0.63367', '车子', '114');
INSERT INTO `ams_accountitem_history` VALUES ('1187', '2018070211021523423', '910', '923', null, '111', '0', null, 'AUD', '4', null, null, '21446', null, null, '0', '1', '0', '4', '2018-07-02', '2018-07-02', null, null, null, null, '1530500535034', '508', 'B2B', 'USD', 'EUR', 'XXXX', '送货小李子', null, '66.00', '48.78', null, '0.73915', '0.63367', '车子', '112');
INSERT INTO `ams_accountitem_history` VALUES ('1188', '2018092015063297257', '910', '925', null, '121', '1', null, 'AUD', '7', null, null, '123', null, null, '0', '1', '1', '4', '2018-09-20', '2018-09-20', null, null, null, null, '1537427192371', '509', 'B2C', 'USD', 'GBP', 'XXXX', '67', null, '12.00', '8.72', null, '0.72653', '0.55210', '车子', '114');
INSERT INTO `ams_accountitem_history` VALUES ('1189', '2018092015210620675', '910', '924', null, '121', '1', null, 'AUD', '7', null, null, '121313', null, null, '0', '1', '0', '4', '2018-09-11', '2018-09-20', null, null, null, null, '1537428066041', '510', 'B2C', 'USD', 'GBP', 'XXXX', '67', null, '12.00', '8.71', null, '0.72622', '0.55151', '车子', '113');
INSERT INTO `ams_accountitem_history` VALUES ('1190', '2017110811482899239', '761', '770', null, '105', '1', '工资收入', 'CNY', '26', '26', '26', 'business case number', '工资收入', null, '0', '5', '1', '4', '2017-12-01', '2018-12-10', '2017-11-08', '2017-11-08', null, '0.00', '1544424549393', '360', 'B2C', 'USD', 'EUR', null, '大悦城火锅城', '244', '120.00', '18.07', '0.00', '0.15062', '0.12983', '电话费', '误餐费');
INSERT INTO `ams_accountitem_history` VALUES ('1191', '2017110814303851762', '761', '768', null, '104', '1', null, 'CNY', '299', null, '299', '12312', null, null, '0', '6', '1', '4', '2017-11-08', '2018-12-10', null, '2017-11-08', null, '0.00', '1544424563572', '362', 'FG', 'USD', 'AUD', 'XXXX', '大悦城火锅城', '247', '111.00', '16.72', '0.00', '0.15061', '0.19686', '电话费', '办公费');
INSERT INTO `ams_accountitem_history` VALUES ('1192', '2018092015210620675', '910', '924', null, '121', '1', null, 'AUD', '7', '1', null, '121313', null, null, '0', '2', '0', '4', '2018-09-10', '2018-12-10', '2018-12-10', null, null, null, '1544440289334', '510', 'B2C', 'USD', 'GBP', 'XXXX', '67', null, '12.00', '8.71', null, '0.72622', '0.55151', '车子', '113');
INSERT INTO `ams_accountitem_history` VALUES ('1193', '2018122115044285367', '849', '852', null, '111', '1', null, 'USD', '1', null, null, '20181220001', null, null, '0', '1', '1', '4', '2018-12-21', '2018-12-22', null, null, null, null, '1545375883815', '511', 'B2C', 'USD', 'EUR', null, '送货小李子', null, '100.00', '100.00', null, '1.00000', '0.87270', '女包包', '钱包');
INSERT INTO `ams_accountitem_history` VALUES ('1194', '2019021516524984857', '1012', '1015', null, '140', '0', '1221', 'AUD', '1', null, null, '2321312312312', '121', null, '0', '1', '1', '4', '2019-02-15', '2019-02-16', null, null, null, null, '1550220769448', '540', 'WH', 'USD', 'CNY', null, 'E年后', null, '15.00', '10.62', null, '0.70877', '4.80530', '代理运费', '提货费');
INSERT INTO `ams_accountitem_history` VALUES ('1195', '2019021517453552504', '1016', '1017', null, '141', '0', '12312321', 'CNY', '1', null, null, '15161616', '12312312', null, '0', '1', '1', '4', '2019-02-07', '2019-02-16', null, null, null, null, '1550223935824', '541', 'B2C', 'USD', 'USD', null, '出库', null, '111.00', '16.38', null, '0.14760', '0.14760', '1231231', 'wqeqw');
INSERT INTO `ams_accountitem_history` VALUES ('1196', '2019021518310857459', '1016', '1017', null, '141', '0', '1212', 'CNY', '1', null, null, '5151561616', '1212', null, '0', '1', '1', '4', '2019-02-14', '2019-02-16', null, null, null, null, '1550226669014', '542', 'WH', 'USD', 'USD', null, '出库', null, '1212.00', '179.05', null, '0.14773', '0.14773', '1231231', 'wqeqw');
INSERT INTO `ams_accountitem_history` VALUES ('1197', '2019022114391467546', '1021', '1027', null, '148', '1', null, 'CNY', '1', null, null, '001', null, null, '0', '1', '1', '4', '2019-02-21', '2019-02-21', null, null, null, null, '1550731154769', '543', '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '290445.00', '43332.65', null, '0.14919', '1.00000', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1198', '2019022114433319318', '1021', '1027', null, '148', '1', '生成波次单号', 'CNY', '1', null, null, '001', '生成记账管理测试', null, '0', '1', '1', '4', '2019-02-21', '2019-02-21', null, null, null, null, '1550731413618', '544', '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '436577.00', '34.67', null, '0.14919', '1.00000', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1199', '2019022114464471437', '1021', '1027', null, '148', '0', null, 'CNY', '1', null, null, '001', null, null, '0', '1', '1', '4', '2019-02-21', '2019-02-21', null, null, null, null, '1550731604758', '545', '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '4534546.00', '676527.06', null, '0.14919', '1.00000', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1200', '2019022114433319318', '1021', '1027', null, '148', '1', '生成波次单号', 'CNY', '1', '1', null, '001', '生成记账管理测试！！！！', null, '0', '2', '1', '4', '2019-02-20', '2019-02-21', '2019-02-21', null, null, null, '1550731728388', '544', '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '436577.00', '34.67', null, '0.14919', '1.00000', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1201', '2019022114433319318', '1021', '1027', null, '148', '1', '生成波次单号', 'CNY', '1', '1', null, '001', '生成记账管理测试！！！！', null, '0', '2', '1', '4', '2019-02-20', '2019-02-21', '2019-02-21', null, null, null, '1550731738208', '544', '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '436577.00', '34.67', null, '0.14919', '1.00000', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1202', '2019022114464471437', '1021', '1027', null, '148', '0', null, 'CNY', '1', '1', null, '001', null, null, '0', '2', '1', '4', '2019-02-20', '2019-02-21', '2019-02-21', null, null, null, '1550731780239', '545', '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '4534546.00', '676527.06', null, '0.14919', '1.00000', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1203', '2019022114464471437', '1021', '1027', null, '148', '0', null, 'CNY', '1', '1', null, '001', '百度（纳斯达克：BIDU），全球最大的中文搜索引擎、最大的中文网站。百度愿景是：成为最懂用户，并能帮助人们成长的全球顶级高科技公司。 [1] \n“百度”二字，来自于八百年前南宋词人辛弃疾的一句词：众里寻他千百度。这句话描述了词人对理想的执着追求。1999年底，身在美国硅谷的李彦宏看到了中国互联网及中文搜索引擎服务的巨大发展潜力，抱着技术改变世界的梦想，他毅然辞掉硅谷的高薪工作，携搜索引擎专利技术，于 2000年1月1日在中关村创建了百度公司。\n百度拥有数万名研发工程师，这是中国乃至全球最为优秀的技术团队。这支队伍掌握着世界上最为先进的搜索引擎技术，使百度成为中国掌握世界尖端科学核心技术的中国高科技企业，也使中国成为美国、俄罗斯、和韩国之外，全球仅有的4个拥有搜索引擎核心技术的国家之一。\n2019年1月17日下午，百度与中央电视台举办联合新闻发布会，正式宣布：百度和2019年《春节联欢晚会》达成独家互动合作！', null, '0', '2', '1', '4', '2019-02-19', '2019-02-21', '2019-02-21', null, null, null, '1550732044713', '545', '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '4534546.00', '676527.06', null, '0.14919', '1.00000', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1204', '2019022114464471437', '1021', '1027', null, '148', '0', null, 'CNY', '1', '1', null, '001', '百度（纳斯达克：BIDU），全球最大的中文搜索引擎、最大的中文网站。百度愿景是：成为最懂用户，并能帮助人们成长的全球顶级高科技公司。 [1] \n“百度”二字，来自于八百年前南宋词人辛弃疾的一句词：众里寻他千百度。这句话描述了词人对理想的执着追求。1999年底，身在美国硅谷的李彦宏看到了中国互联网及中文搜索引擎服务的巨大发展潜力，抱着技术改变世界的梦想，他毅然辞掉硅谷的高薪工作，携搜索引擎专利技术，于 2000年1月1日在中关村创建了百度公司。\n百度拥有数万名研发工程师，这是中国乃至全球最为优秀的技术团队。这支队伍掌握着世界上最为先进的搜索引擎技术，使百度成为中国掌握世界尖端科学核心技术的中国高科技企业，也使中国成为美国、俄罗斯、和韩国之外，全球仅有的4个拥有搜索引擎核心技术的国家之一。\n2019年1月17日下午，百度与中央电视台举办联合新闻发布会，正式宣布：百度和2019年《春节联欢晚会》达成独家互动合作！', null, '0', '2', '1', '4', '2019-02-18', '2019-02-21', '2019-02-21', null, null, null, '1550732076035', '545', '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '4534546.00', '676527.06', null, '0.14919', '1.00000', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1205', '2019022114464471437', '1021', '1027', null, '148', '0', null, 'CNY', '1', '1', null, '001', '百度（纳斯达克：BIDU），全球最大的中文搜索引擎、最大的中文网站。百度愿景是：成为最懂用户，并能帮助人们成长的全球顶级高科技公司。 [1] \n“百度”二字，来自于八百年前南宋词人辛弃疾的一句词：众里寻他千百度。这句话描述了词人对理想的执着追求。1999年底，身在美国硅谷的李彦宏看到了中国互联网及中文搜索引擎服务的巨大发展潜力，抱着技术改变世界的梦想，他毅然辞掉硅谷的高薪工作，携搜索引擎专利技术，于 2000年1月1日在中关村创建了百度公司。\n百度拥有数万名研发工程师，这是中国乃至全球最为优秀的技术团队。这支队伍掌握着世界上最为先进的搜索引擎技术，使百度成为中国掌握世界尖端科学核心技术的中国高科技企业，也使中国成为美国、俄罗斯、和韩国之外，全球仅有的4个拥有搜索引擎核心技术的国家之一。\n2019年1月17日下午，百度与中央电视台举办联合新闻发布会，正式宣布：百度和2019年《春节联欢晚会》达成独家互动合作！', null, '0', '2', '1', '4', '2019-02-17', '2019-02-22', '2019-02-22', null, null, null, '1550734700775', '545', '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '4534546.00', '676527.06', null, '0.14919', '1.00000', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1206', '2019022114464471437', '1021', '1027', null, '148', '0', null, 'CNY', '1', '1', '1', '001', '百度（纳斯达克：BIDU），全球最大的中文搜索引擎、最大的中文网站。百度愿景是：成为最懂用户，并能帮助人们成长的全球顶级高科技公司。 [1] \n“百度”二字，来自于八百年前南宋词人辛弃疾的一句词：众里寻他千百度。这句话描述了词人对理想的执着追求。1999年底，身在美国硅谷的李彦宏看到了中国互联网及中文搜索引擎服务的巨大发展潜力，抱着技术改变世界的梦想，他毅然辞掉硅谷的高薪工作，携搜索引擎专利技术，于 2000年1月1日在中关村创建了百度公司。\n百度拥有数万名研发工程师，这是中国乃至全球最为优秀的技术团队。这支队伍掌握着世界上最为先进的搜索引擎技术，使百度成为中国掌握世界尖端科学核心技术的中国高科技企业，也使中国成为美国、俄罗斯、和韩国之外，全球仅有的4个拥有搜索引擎核心技术的国家之一。\n2019年1月17日下午，百度与中央电视台举办联合新闻发布会，正式宣布：百度和2019年《春节联欢晚会》达成独家互动合作！', null, '0', '3', '1', '4', '2019-02-17', '2019-02-22', '2019-02-22', '2019-02-22', null, null, '1550734748147', '545', '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '4534546.00', '676527.06', null, '0.14919', '1.00000', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1207', '2019022115505215676', '1024', '1026', null, '144', '1', null, 'CNY', '1', null, null, '001', null, null, '0', '1', '0', '4', '2019-02-21', '2019-02-22', null, null, null, null, '1550735452664', '546', '进口直邮', 'USD', 'CNY', null, '出库', null, '88888.00', '13255.96', null, '0.14813', '1.00000', '出库', '出库1');
INSERT INTO `ams_accountitem_history` VALUES ('1208', '2019022115595232956', '1012', '1015', null, '142', '0', '著眉间淡淡痕，那年春，记得儿家字阿莼。', 'CNY', '1', null, null, '001', '落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。', null, '0', '1', '0', '4', '2019-02-24', '2019-02-22', null, null, null, null, '1550735992309', '547', 'B2C', 'USD', 'CNY', null, '打包', null, '5666.00', '844.52', null, '0.14905', '1.00000', '代理运费', '提货费');
INSERT INTO `ams_accountitem_history` VALUES ('1209', '2019022115595232956', '1012', '1015', null, '142', '0', '著眉间淡淡痕，那年春，记得儿家字阿莼。', 'CNY', '1', '1', null, '001', '落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。!!!!', null, '0', '2', '0', '4', '2019-02-23', '2019-02-22', '2019-02-22', null, null, null, '1550738267789', '547', 'B2C', 'USD', 'CNY', null, '打包', null, '3525779.00', '525482.10', null, '0.14904', '1.00000', '代理运费', '提货费');
INSERT INTO `ams_accountitem_history` VALUES ('1210', '2019022115595232956', '1012', '1015', null, '142', '0', '著眉间淡淡痕，那年春，记得儿家字阿莼。', 'CNY', '1', '1', null, '001', '落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。!!!!', null, '0', '2', '0', '4', '2019-02-23', '2019-02-22', '2019-02-22', null, null, null, '1550738269175', '547', 'B2C', 'USD', 'CNY', null, '打包', null, '3525779.00', '525482.10', null, '0.14904', '1.00000', '代理运费', '提货费');
INSERT INTO `ams_accountitem_history` VALUES ('1211', '2019022115595232956', '1012', '1015', null, '142', '0', '著眉间淡淡痕，那年春，记得儿家字阿莼。', 'CNY', '1', '1', null, '001', '落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。!!!!', null, '0', '2', '0', '4', '2019-02-22', '2019-02-22', '2019-02-22', null, null, null, '1550738281431', '547', 'B2C', 'USD', 'CNY', null, '打包', null, '3525779.00', '525482.10', null, '0.14904', '1.00000', '代理运费', '提货费');
INSERT INTO `ams_accountitem_history` VALUES ('1212', '2019022115595232956', '1012', '1015', null, '142', '0', '著眉间淡淡痕，那年春，记得儿家字阿莼。', 'CNY', '1', '1', null, '001', '落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。!!!!', null, '0', '2', '0', '4', '2019-02-22', '2019-02-22', '2019-02-22', null, null, null, '1550738375781', '547', 'B2C', 'USD', 'CNY', null, '打包', null, '3525779.00', '525482.10', null, '0.14904', '1.00000', '代理运费', '提货费');
INSERT INTO `ams_accountitem_history` VALUES ('1213', '2019022115595232956', '1012', '1015', null, '144', '0', '著眉间淡淡痕，那年春，记得儿家字阿莼。', 'CNY', '1', '1', null, '001', '落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。!!!!', null, '0', '2', '0', '4', '2019-02-21', '2019-02-22', '2019-02-22', null, null, null, '1550738854669', '547', 'B2C', 'USD', 'CNY', null, '出库', null, '3525779.00', '525482.10', null, '0.14904', '1.00000', '代理运费', '提货费');
INSERT INTO `ams_accountitem_history` VALUES ('1214', '2019022115595232956', '1012', '1015', null, '148', '0', '著眉间淡淡痕，那年春，记得儿家字阿莼。', 'CNY', '1', '1', null, '001', '落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。落花时节不逢君，空捻空枝空倚门。空著眉间淡淡痕，那年春，记得儿家字阿莼。!!!!', null, '0', '2', '0', '4', '2019-02-20', '2019-02-22', '2019-02-22', null, null, null, '1550738864869', '547', 'B2C', 'USD', 'CNY', null, '生成波次单', null, '3525779.00', '525482.10', null, '0.14904', '1.00000', '代理运费', '提货费');
INSERT INTO `ams_accountitem_history` VALUES ('1215', '2019022115505215676', '1024', '1026', null, '144', '1', null, 'CNY', '1', null, '1', '001', null, null, '0', '3', '0', '4', '2019-02-21', '2019-02-22', null, '2019-02-22', null, null, '1550739117763', '546', '进口直邮', 'USD', 'CNY', null, '出库', null, '88888.00', '13255.96', null, '0.14813', '1.00000', '出库', '出库1');
INSERT INTO `ams_accountitem_history` VALUES ('1216', '2019022115505215676', '1024', '1026', null, '144', '1', null, 'CNY', '1', null, '1', '001', null, null, '0', '4', '0', '4', '2019-02-20', '2019-02-22', null, '2019-02-21', null, '0.00', '1550800795001', '546', '进口直邮', 'USD', 'CNY', null, '出库', '272', '88888.00', '13255.96', '0.00', '0.14813', '1.00000', '出库', '出库1');
INSERT INTO `ams_accountitem_history` VALUES ('1217', '2019022210153332294', '1020', '1028', null, '142', '0', null, 'CNY', '1', null, null, '001', null, null, '0', '1', '1', '4', '2019-02-21', '2019-02-22', null, null, null, null, '1550801733186', '548', 'B2C', 'USD', 'CNY', null, '打包', null, '9898787.00', '1471781.35', null, '0.14868', '1.00000', '打包费用', '操作员打包费用');
INSERT INTO `ams_accountitem_history` VALUES ('1218', '2019022210153332294', '1020', '1028', null, '142', '0', null, 'CNY', '1', null, '1', '001', null, null, '0', '3', '1', '4', '2019-02-21', '2019-02-22', null, '2019-02-22', null, null, '1550802159792', '548', 'B2C', 'USD', 'CNY', null, '打包', null, '9898787.00', '1471781.35', null, '0.14868', '1.00000', '打包费用', '操作员打包费用');
INSERT INTO `ams_accountitem_history` VALUES ('1219', '2019022210342123667', '1020', '1028', null, '142', '0', null, 'CNY', '1', null, '1', '001', null, null, '0', '3', '0', '4', '2019-02-22', '2019-02-22', null, '2019-02-22', null, null, '1550802902909', '551', 'B2B', 'USD', 'CNY', null, '打包', null, '999.00', '148.53', null, '0.14868', '1.00000', '打包费用', '操作员打包费用');
INSERT INTO `ams_accountitem_history` VALUES ('1220', '2019022115505215676', '1024', '1026', null, '144', '1', null, 'CNY', '1', null, '1', '001', null, null, '0', '5', '0', '4', '2019-02-20', '2019-02-23', null, '2019-02-21', null, '0.00', '1550828075585', '546', '进口直邮', 'USD', 'CNY', null, '出库', '272', '88888.00', '13255.96', '0.00', '0.14813', '1.00000', '出库', '出库1');
INSERT INTO `ams_accountitem_history` VALUES ('1221', '2019022217573969402', '1012', '1015', null, '148', '0', null, 'CNY', '1', null, null, '006', null, null, '0', '1', '0', '4', '2019-02-22', '2019-02-23', null, null, null, null, '1550829459710', '552', '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '766.00', '113.98', null, '0.14880', '1.00000', '代理运费', '提货费');
INSERT INTO `ams_accountitem_history` VALUES ('1222', '2019022210342123667', '1020', '1028', null, '143', '0', null, 'CNY', '1', null, '1', '001', null, null, '0', '3', '1', '4', '2019-02-21', '2019-03-05', null, '2019-03-05', null, null, '1551751599632', '550', 'B2B', 'USD', 'CNY', null, '打包', null, '999.00', '148.53', null, '0.14868', '1.00000', '打包费用', '操作员打包费用');
INSERT INTO `ams_accountitem_history` VALUES ('1223', '2019022217573969402', '1012', '1015', null, '148', '0', null, 'CNY', '1', '1', null, '006', null, null, '0', '2', '0', '4', '2019-02-21', '2019-03-05', '2019-03-05', null, null, null, '1551751670545', '552', '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '766.00', '113.98', null, '0.14880', '1.00000', '代理运费', '提货费');
INSERT INTO `ams_accountitem_history` VALUES ('1224', '2019022115505215676', '1024', '1026', null, '144', '1', null, 'CNY', '1', null, '1', '001', null, null, '0', '6', '0', '4', '2019-02-20', '2019-03-05', null, '2019-02-21', null, '0.00', '1551752328817', '546', '进口直邮', 'USD', 'CNY', null, '出库', '272', '88888.00', '13255.96', '0.00', '0.14813', '1.00000', '出库', '出库1');
INSERT INTO `ams_accountitem_history` VALUES ('1225', '2019021518310857459', '1016', '1017', null, '141', '0', '1212', 'CNY', '1', '1', null, '5151561616', '1212111', null, '0', '2', '1', '4', '2019-02-13', '2019-03-14', '2019-03-14', null, null, null, '1552465648245', '542', 'WH', 'USD', 'USD', null, '出库', null, '1212.00', '179.05', null, '0.14773', '0.14773', '1231231', 'wqeqw');
INSERT INTO `ams_accountitem_history` VALUES ('1226', '2019022210323635868', '1024', '1025', null, '141', '1', null, 'CNY', '1', '1', null, '001', '21333333333333333', null, '0', '2', '1', '4', '2019-02-19', '2019-03-14', '2019-03-14', null, null, null, '1552470481575', '549', 'B2B', 'USD', 'USD', null, '出库', null, '8888.00', '1321.46', null, '0.14868', '0.14868', '出库', '2019.02.19出库1');
INSERT INTO `ams_accountitem_history` VALUES ('1227', '2019021516524984857', '1012', '1015', null, '140', '0', '1221', 'AUD', '1', '1', null, '2321312312312', '2222', null, '0', '2', '1', '4', '2019-02-15', '2019-03-14', '2019-03-14', null, null, null, '1552470492582', '540', 'WH', 'USD', 'CNY', null, 'E年后', null, '15.00', '10.62', null, '0.70877', '4.80530', '代理运费', '提货费');
INSERT INTO `ams_accountitem_history` VALUES ('1228', '2019021516524984857', '1012', '1015', null, '140', '0', '1221', 'AUD', '1', '1', null, '2321312312312', '2222', null, '0', '2', '1', '4', '2019-02-15', '2019-03-14', '2019-03-14', null, null, null, '1552470526884', '540', 'WH', 'USD', 'CNY', null, 'E年后', null, '15.00', '10.62', null, '0.70877', '4.80530', '代理运费', '提货费');
INSERT INTO `ams_accountitem_history` VALUES ('1229', '2019021517453552504', '1016', '1017', null, '141', '0', '12312321', 'CNY', '1', '1', null, '15161616', 'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn', null, '0', '2', '1', '4', '2019-02-07', '2019-03-14', '2019-03-14', null, null, null, '1552470608070', '541', 'B2C', 'USD', 'USD', null, '出库', null, '111.00', '16.38', null, '0.14760', '0.14760', '1231231', 'wqeqw');
INSERT INTO `ams_accountitem_history` VALUES ('1230', '2019021517453552504', '1016', '1017', null, '141', '0', '12312321', 'CNY', '1', '1', null, '15161616', 'nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn', null, '0', '2', '1', '4', '2019-02-07', '2019-03-14', '2019-03-14', null, null, null, '1552470629870', '541', 'B2C', 'USD', 'USD', null, '出库', null, '111.00', '16.38', null, '0.14760', '0.14760', '1231231', 'wqeqw');
INSERT INTO `ams_accountitem_history` VALUES ('1231', '2019031410025475256', '1021', '1023', null, '147', '1', '141414', 'CNY', '1', '1', null, '1414141414', '14144', null, '0', '2', '1', '4', null, '2019-03-14', '2019-03-14', null, null, null, '1552529407483', '554', '进口直邮', 'USD', 'CNY', null, 'saasasassa', null, '1414.00', '210.88', null, '0.14914', '1.00000', '库内波次单操作', 'null');
INSERT INTO `ams_accountitem_history` VALUES ('1232', '2019031410374182194', '1012', '1014', null, '144', '1', '77', 'CNY', '1', null, null, '7777777', '7', null, '0', '1', '1', '4', null, '2019-03-14', null, null, null, null, '1552531061683', '561', '进口直邮', 'USD', 'CNY', null, '出库', null, '7777.00', '1159.86', null, '0.14914', '1.00000', '代理运费', '海运费');
INSERT INTO `ams_accountitem_history` VALUES ('1233', '2019031410381054084', '1021', '1027', null, '147', '0', '5', 'CNY', '1', null, null, '5555', '5', null, '0', '1', '1', '4', null, '2019-03-14', null, null, null, null, '1552531090121', '562', '555', 'USD', 'CNY', null, 'saasasassa', null, '755.00', '112.60', null, '0.14914', '1.00000', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1234', '2019031410390142102', '1021', '1027', null, '148', '1', '88', 'HKD', '1', null, null, '688888', '888', null, '0', '1', '1', '4', null, '2019-03-14', null, null, null, null, '1552531243515', '563', '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '25.00', '3.18', null, '0.12739', '0.85418', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1235', '2019031411004717248', '1021', '1027', null, '144', '1', '3636', 'CNY', '1', null, null, '999999', 'null', null, '0', '1', '1', '4', '2019-03-15', '2019-03-14', null, null, null, null, '1552532447853', '564', '进口直邮', 'USD', 'CNY', null, '出库', null, '1553.00', '231.45', null, '0.14904', '1.00000', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1236', '2019031411010375836', '1021', '1027', null, '148', '1', '66', 'AUD', '1', null, null, '999999', 'null', null, '0', '1', '1', '4', '2019-03-02', '2019-03-14', null, null, null, null, '1552532463782', '565', '555', 'USD', 'CNY', null, '生成波次单', null, '666.00', '470.99', null, '0.70719', '4.74509', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1237', '2019031411031167735', '1021', '1027', null, '148', '0', '222', 'AUD', '1', null, null, '222', 'null', null, '0', '1', '1', '4', null, '2019-03-14', null, null, null, null, '1552532591519', '566', '111', 'USD', 'CNY', null, '生成波次单', null, '111.00', '78.50', null, '0.70719', '4.74509', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1238', '2019031411032367439', '1021', '1027', null, '148', '0', '2', 'CNY', '1', null, null, '222', 'null', null, '0', '1', '1', '4', null, '2019-03-14', null, null, null, null, '1552532603249', '567', '111', 'USD', 'CNY', null, '生成波次单', null, '222.00', '33.09', null, '0.14904', '1.00000', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1239', '2019031411042449619', '1024', '1026', null, '148', '0', 'null', 'AUD', '1', null, null, '11111', 'null', null, '0', '1', '1', '4', null, '2019-03-14', null, null, null, null, '1552532664340', '568', '555', 'USD', 'CNY', null, '生成波次单', null, '222.00', '157.00', null, '0.70719', '4.74509', '出库', '出库1');
INSERT INTO `ams_accountitem_history` VALUES ('1240', '2019031411062661937', '1021', '1027', null, '148', '0', 'null', 'AUD', '1', null, null, '11111', 'null', null, '0', '1', '1', '4', '2019-03-30', '2019-03-14', null, null, null, null, '1552532786319', '569', '555', 'USD', 'CNY', null, '生成波次单', null, '11.00', '7.78', null, '0.70719', '4.74509', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1241', '2019031411072299443', '1021', '1027', null, '148', '0', 'null', 'AUD', '1', null, null, '11111', 'null', null, '0', '1', '1', '4', '2019-03-29', '2019-03-14', null, null, null, null, '1552532842194', '570', '555', 'USD', 'CNY', null, '生成波次单', null, '14.00', '9.90', null, '0.70719', '4.74509', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1242', '2019031411085732480', '1021', '1027', null, '148', '0', 'null', 'AUD', '1', null, null, '1111', 'null', null, '0', '1', '1', '4', '2019-03-17', '2019-03-14', null, null, null, null, '1552532937420', '571', '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '11.00', '7.78', null, '0.70719', '4.74509', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1243', '2019031411091033916', '1024', '1026', null, '148', '0', '2', 'CNY', '1', null, null, '1111', 'null', null, '0', '1', '1', '4', '2019-03-16', '2019-03-14', null, null, null, null, '1552532950685', '572', '555', 'USD', 'CNY', null, '生成波次单', null, '22.00', '3.28', null, '0.14904', '1.00000', '出库', '出库1');
INSERT INTO `ams_accountitem_history` VALUES ('1244', '2019031411100990288', '1021', '1026', null, '148', '0', '44', 'CNY', '1', null, null, '1414141414', 'null', null, '0', '1', '0', '4', '2019-03-10', '2019-03-14', null, null, null, null, '1552533009621', '573', '555', 'USD', 'CNY', null, '生成波次单', null, '414.00', '61.70', null, '0.14904', '1.00000', '库内波次单操作', '出库1');
INSERT INTO `ams_accountitem_history` VALUES ('1245', '2019031411103538201', '1021', '1027', null, '148', '0', '44', 'AUD', '1', null, null, '1414141414', 'null', null, '0', '1', '0', '4', '2019-03-15', '2019-03-14', null, null, null, null, '1552533035395', '574', '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '4444.00', '3142.75', null, '0.70719', '4.74509', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1246', '2019031411393889689', '1021', '1027', null, '148', '0', '66', 'AUD', '1', null, null, '0000000', '6', null, '0', '1', '1', '4', '2019-03-10', '2019-03-14', null, null, null, null, '1552534778558', '575', '555', 'USD', 'CNY', null, '生成波次单', null, '14.00', '0.00', null, '0.00000', '0.00000', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1247', '2019031411393889689', '1021', '1027', null, '148', '0', '66', 'AUD', '1', null, '1', '0000000', '6', null, '0', '3', '1', '4', '2019-03-10', '2019-03-14', null, '2019-03-14', null, null, '1552535123756', '575', '555', 'USD', 'CNY', null, '生成波次单', null, '14.00', '0.00', null, '0.00000', '0.00000', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1248', '2019031411004717248', '1021', '1027', null, '144', '1', '3636', 'CNY', '1', null, '1', '999999', 'null', null, '0', '3', '1', '4', '2019-03-15', '2019-03-14', null, '2019-03-14', null, null, '1552535399327', '564', '进口直邮', 'USD', 'CNY', null, '出库', null, '1553.00', '231.45', null, '0.14904', '1.00000', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1249', '2019031411091033916', '1024', '1026', null, '148', '0', '2', 'CNY', '1', null, '1', '1111', 'null', null, '0', '3', '1', '4', '2019-03-16', '2019-03-14', null, '2019-03-14', null, null, '1552535460233', '572', '555', 'USD', 'CNY', null, '生成波次单', null, '22.00', '3.28', null, '0.14904', '1.00000', '出库', '出库1');
INSERT INTO `ams_accountitem_history` VALUES ('1250', '2019031411103538201', '1021', '1027', null, '148', '0', '44', 'AUD', '1', null, '1', '1414141414', 'null', null, '0', '3', '0', '4', '2019-03-15', '2019-03-14', null, '2019-03-14', null, null, '1552535494835', '574', '进口直邮', 'USD', 'CNY', null, '生成波次单', null, '4444.00', '3142.75', null, '0.70719', '4.74509', '库内波次单操作', '生成波次单');
INSERT INTO `ams_accountitem_history` VALUES ('1251', '2019031411100990288', '1021', '1026', null, '148', '0', '44', 'CNY', '1', null, '1', '1414141414', 'null', null, '0', '3', '0', '4', '2019-03-10', '2019-03-14', null, '2019-03-14', null, null, '1552535670724', '573', '555', 'USD', 'CNY', null, '生成波次单', null, '414.00', '61.70', null, '0.14904', '1.00000', '库内波次单操作', '出库1');

-- ----------------------------
-- Table structure for ams_account_category
-- ----------------------------
DROP TABLE IF EXISTS `ams_account_category`;
CREATE TABLE `ams_account_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `in_out` varchar(1) DEFAULT NULL COMMENT '收入支出:I-收入;O-支出;\n\n',
  `category_level1_code` varchar(20) DEFAULT NULL COMMENT '一级分类编码\r\n',
  `category_level1_name` varchar(20) DEFAULT NULL COMMENT '一级分类名称\r\n',
  `category_level2_code` varchar(20) DEFAULT NULL COMMENT '二级分类编码\r\n',
  `category_level2_name` varchar(20) DEFAULT NULL COMMENT '二级分类名称\r\n',
  `category_code` varchar(20) DEFAULT NULL COMMENT '记账科目编码\r\n',
  `category_name` varchar(20) DEFAULT NULL COMMENT '记账科目名称\r\n',
  `note` varchar(200) DEFAULT NULL COMMENT '科目说明\r\n',
  `creator` varchar(20) DEFAULT NULL COMMENT '创建人\r\n',
  `df` varchar(1) DEFAULT NULL COMMENT '状态:0存在,1已删除',
  `org_id` int(11) DEFAULT NULL COMMENT '组织id',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  `pid` int(11) DEFAULT NULL COMMENT '父id',
  `account_id` varchar(4) DEFAULT NULL COMMENT '账套编码[org_code]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1032 DEFAULT CHARSET=utf8 COMMENT='财务科目';

-- ----------------------------
-- Records of ams_account_category
-- ----------------------------
INSERT INTO `ams_account_category` VALUES ('1008', null, null, null, null, null, '100', '入仓费', null, '1', '0', '4', '2018-12-26', '0', null);
INSERT INTO `ams_account_category` VALUES ('1009', null, '101', '操作费', '101100', '出库操作费', '101100', '出仓费', null, '1', '0', '4', '2018-12-26', '0', null);
INSERT INTO `ams_account_category` VALUES ('1010', null, null, null, null, null, '102', '仓储费', null, '1', '0', '4', '2018-12-26', '0', null);
INSERT INTO `ams_account_category` VALUES ('1011', null, null, null, null, null, '103', '杂费', null, '1', '0', '4', '2018-12-26', '0', null);
INSERT INTO `ams_account_category` VALUES ('1012', null, null, null, null, null, '104', '代理运费', null, '1', '0', '4', '2018-12-26', '0', null);
INSERT INTO `ams_account_category` VALUES ('1013', null, null, null, null, null, '104101', '空运费', null, '1', '0', '4', '2018-12-26', '1012', null);
INSERT INTO `ams_account_category` VALUES ('1014', null, null, null, null, null, '104102', '海运费', null, '1', '0', '4', '2018-12-26', '1012', null);
INSERT INTO `ams_account_category` VALUES ('1015', null, null, null, null, null, '104103', '提货费', null, '1', '0', '4', '2018-12-26', '1012', null);
INSERT INTO `ams_account_category` VALUES ('1016', null, null, null, null, null, 'wwwwwwwwwwwwwwwwww', '1231231', '12312', '1', '0', '4', '2018-12-26', '0', null);
INSERT INTO `ams_account_category` VALUES ('1017', null, null, null, null, null, 'wwwwwwwwwwwwwwwwww22', 'wqeqw', 'wqeqweqeweqw', '1', '0', '4', '2018-12-26', '1016', null);
INSERT INTO `ams_account_category` VALUES ('1018', null, null, null, null, null, 'wwwwwwwwwwwwwwwwww1', '11', '22', '1', '0', '4', '2018-12-26', '1016', null);
INSERT INTO `ams_account_category` VALUES ('1019', null, null, null, null, null, 'wwww', 'www', 'www', '1', '0', '4', '2018-12-26', '0', null);
INSERT INTO `ams_account_category` VALUES ('1020', null, null, null, null, null, 'test123', '打包费用', '哈哈哈哈', '1', '0', '4', '2018-12-29', '0', null);
INSERT INTO `ams_account_category` VALUES ('1021', null, null, null, null, null, '101', '库内波次单操作', '144444444444444', '1', '0', '4', '2019-01-25', '0', null);
INSERT INTO `ams_account_category` VALUES ('1022', null, null, null, null, null, '101101', '测试费', null, '1', '0', '4', '2019-01-25', '1021', null);
INSERT INTO `ams_account_category` VALUES ('1023', null, null, null, null, null, '101102', '打包费', null, '1', '0', '4', '2019-01-25', '1021', null);
INSERT INTO `ams_account_category` VALUES ('1024', null, null, null, null, null, '001', '出库1', '出库操作完成后,用于计算出库操作的费用，为了方便后期账单统计1111115', '1', '0', '4', '2019-01-25', '0', null);
INSERT INTO `ams_account_category` VALUES ('1025', null, null, null, null, null, '00112', '2019.02.19出库1', '正常出库1', '1', '0', '4', '2019-02-19', '1024', null);
INSERT INTO `ams_account_category` VALUES ('1026', null, null, null, null, null, '00102', '出库1', 'http://192.168.1.105:8082/#/Login', '1', '0', '4', '2019-02-20', '1024', null);
INSERT INTO `ams_account_category` VALUES ('1027', null, null, null, null, null, 'sssssssssss', '入仓费', '少时诵诗书', '1', '0', '4', '2019-02-20', '1021', null);
INSERT INTO `ams_account_category` VALUES ('1028', null, null, null, null, null, 'test123001', '操作员打包费用', '打包', '1', '0', '4', '2019-02-22', '1020', null);
INSERT INTO `ams_account_category` VALUES ('1029', null, null, null, null, null, '101100002', '出仓费用明细', '出仓费', '1', '0', '4', '2019-02-23', '1009', null);
INSERT INTO `ams_account_category` VALUES ('1030', null, null, null, null, null, 'sssssssssss', '入仓费', '少时诵诗书', '1', '0', '4', '2019-03-15', '0', null);
INSERT INTO `ams_account_category` VALUES ('1031', null, null, null, null, null, '001', '测试费', 'sss', '1', '0', '4', '2019-03-20', '0', null);

-- ----------------------------
-- Table structure for ams_attachment
-- ----------------------------
DROP TABLE IF EXISTS `ams_attachment`;
CREATE TABLE `ams_attachment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attachment_url` varchar(200) DEFAULT NULL COMMENT '附件地址',
  `picture_name` varchar(50) DEFAULT NULL COMMENT '附件名称',
  `accountitem_id` int(11) DEFAULT NULL COMMENT '记账明细id',
  `bill_id` int(11) DEFAULT NULL COMMENT '对账单id\n',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=438 DEFAULT CHARSET=utf8 COMMENT='附件管理(attachment)';

-- ----------------------------
-- Records of ams_attachment
-- ----------------------------
INSERT INTO `ams_attachment` VALUES ('2', '1505699283128.jpg', 'Jellyfish', '2', null);
INSERT INTO `ams_attachment` VALUES ('14', null, null, '3', null);
INSERT INTO `ams_attachment` VALUES ('15', '1505702279382.jpg', 'Chrysanthemum', '4', null);
INSERT INTO `ams_attachment` VALUES ('16', '1505702474789.jpg', 'Koala', '5', null);
INSERT INTO `ams_attachment` VALUES ('17', '1505702566453.jpg', 'Jellyfish', '6', null);
INSERT INTO `ams_attachment` VALUES ('19', '1505702930275.jpg', 'Jellyfish', '8', null);
INSERT INTO `ams_attachment` VALUES ('20', '1505703078823.jpg', 'Jellyfish', '9', null);
INSERT INTO `ams_attachment` VALUES ('21', '1505703656615.jpg', 'Chrysanthemum', '10', null);
INSERT INTO `ams_attachment` VALUES ('22', '1505703694824.jpg', 'Jellyfish', '11', null);
INSERT INTO `ams_attachment` VALUES ('23', '1505703820195.jpg', 'Jellyfish', '12', null);
INSERT INTO `ams_attachment` VALUES ('24', '1505703979353.jpg', 'Jellyfish', '13', null);
INSERT INTO `ams_attachment` VALUES ('25', '1505704494045.jpg', 'Penguins', '14', null);
INSERT INTO `ams_attachment` VALUES ('26', '1505704582401.jpg', 'Jellyfish', '15', null);
INSERT INTO `ams_attachment` VALUES ('27', '1505704884773.jpg', 'Koala', '16', null);
INSERT INTO `ams_attachment` VALUES ('38', null, null, null, '137');
INSERT INTO `ams_attachment` VALUES ('40', '1505707719159.jpg', 'Jellyfish', '7', null);
INSERT INTO `ams_attachment` VALUES ('74', '1505717826415.jpg', 'Jellyfish', '18', null);
INSERT INTO `ams_attachment` VALUES ('75', null, null, '19', null);
INSERT INTO `ams_attachment` VALUES ('76', '1505717945461.jpg', 'Jellyfish', '20', null);
INSERT INTO `ams_attachment` VALUES ('77', '1505718222756.jpg', 'Jellyfish', '21', null);
INSERT INTO `ams_attachment` VALUES ('78', '1505719145891.jpg', 'Jellyfish', '22', null);
INSERT INTO `ams_attachment` VALUES ('79', '1505719199766.jpg', 'Koala', '23', null);
INSERT INTO `ams_attachment` VALUES ('80', '1505719294137.jpg', 'Jellyfish', '24', null);
INSERT INTO `ams_attachment` VALUES ('81', '1505719475450.jpg', 'Jellyfish', '25', null);
INSERT INTO `ams_attachment` VALUES ('83', null, null, '26', null);
INSERT INTO `ams_attachment` VALUES ('89', null, null, '32', null);
INSERT INTO `ams_attachment` VALUES ('90', null, null, '33', null);
INSERT INTO `ams_attachment` VALUES ('96', null, null, '35', null);
INSERT INTO `ams_attachment` VALUES ('98', null, null, '34', null);
INSERT INTO `ams_attachment` VALUES ('99', null, null, '36', null);
INSERT INTO `ams_attachment` VALUES ('100', null, null, '37', null);
INSERT INTO `ams_attachment` VALUES ('101', null, null, '38', null);
INSERT INTO `ams_attachment` VALUES ('102', null, null, '39', null);
INSERT INTO `ams_attachment` VALUES ('103', null, null, '40', null);
INSERT INTO `ams_attachment` VALUES ('104', null, null, '41', null);
INSERT INTO `ams_attachment` VALUES ('105', null, null, '42', null);
INSERT INTO `ams_attachment` VALUES ('106', null, null, '43', null);
INSERT INTO `ams_attachment` VALUES ('107', null, null, '44', null);
INSERT INTO `ams_attachment` VALUES ('108', null, null, '45', null);
INSERT INTO `ams_attachment` VALUES ('109', null, null, '46', null);
INSERT INTO `ams_attachment` VALUES ('110', null, null, '47', null);
INSERT INTO `ams_attachment` VALUES ('111', null, null, '48', null);
INSERT INTO `ams_attachment` VALUES ('112', null, null, '49', null);
INSERT INTO `ams_attachment` VALUES ('114', null, null, null, '144');
INSERT INTO `ams_attachment` VALUES ('115', null, null, '50', null);
INSERT INTO `ams_attachment` VALUES ('116', null, null, null, '143');
INSERT INTO `ams_attachment` VALUES ('117', null, null, null, '141');
INSERT INTO `ams_attachment` VALUES ('118', null, null, null, '140');
INSERT INTO `ams_attachment` VALUES ('119', null, null, '51', null);
INSERT INTO `ams_attachment` VALUES ('120', null, null, '52', null);
INSERT INTO `ams_attachment` VALUES ('121', null, null, '53', null);
INSERT INTO `ams_attachment` VALUES ('122', null, null, null, '149');
INSERT INTO `ams_attachment` VALUES ('123', null, null, null, '148');
INSERT INTO `ams_attachment` VALUES ('124', null, null, null, '150');
INSERT INTO `ams_attachment` VALUES ('125', null, null, null, '151');
INSERT INTO `ams_attachment` VALUES ('126', null, null, null, '146');
INSERT INTO `ams_attachment` VALUES ('129', null, null, '58', null);
INSERT INTO `ams_attachment` VALUES ('130', '1505889341608.docx', '采购管理系统-问题汇总', '59', null);
INSERT INTO `ams_attachment` VALUES ('131', '1505889398180.jpg', 'Penguins', '60', null);
INSERT INTO `ams_attachment` VALUES ('132', null, null, '61', null);
INSERT INTO `ams_attachment` VALUES ('134', null, null, null, '153');
INSERT INTO `ams_attachment` VALUES ('136', null, null, '63', null);
INSERT INTO `ams_attachment` VALUES ('137', null, null, '62', null);
INSERT INTO `ams_attachment` VALUES ('138', null, null, '70', null);
INSERT INTO `ams_attachment` VALUES ('139', null, null, '71', null);
INSERT INTO `ams_attachment` VALUES ('140', null, null, '72', null);
INSERT INTO `ams_attachment` VALUES ('141', null, null, '73', null);
INSERT INTO `ams_attachment` VALUES ('142', null, null, '74', null);
INSERT INTO `ams_attachment` VALUES ('143', null, null, '75', null);
INSERT INTO `ams_attachment` VALUES ('144', null, null, '86', null);
INSERT INTO `ams_attachment` VALUES ('145', null, null, '87', null);
INSERT INTO `ams_attachment` VALUES ('146', null, null, '88', null);
INSERT INTO `ams_attachment` VALUES ('147', null, null, '89', null);
INSERT INTO `ams_attachment` VALUES ('148', null, null, '90', null);
INSERT INTO `ams_attachment` VALUES ('149', null, null, null, '162');
INSERT INTO `ams_attachment` VALUES ('150', null, null, '91', null);
INSERT INTO `ams_attachment` VALUES ('151', null, null, '94', null);
INSERT INTO `ams_attachment` VALUES ('152', null, null, '110', null);
INSERT INTO `ams_attachment` VALUES ('167', '1505960478952.jpg', 'Hydrangeas', null, '163');
INSERT INTO `ams_attachment` VALUES ('172', null, null, '111', null);
INSERT INTO `ams_attachment` VALUES ('173', null, null, '112', null);
INSERT INTO `ams_attachment` VALUES ('174', null, null, null, '167');
INSERT INTO `ams_attachment` VALUES ('177', '1505979129211.jpg', 'Jellyfish', '144', null);
INSERT INTO `ams_attachment` VALUES ('178', '1505979237772.jpg', '微信图片_20170904113353', null, '152');
INSERT INTO `ams_attachment` VALUES ('179', '1505980417067.jpg', 'Koala', '149', null);
INSERT INTO `ams_attachment` VALUES ('180', '1505986663441.jpg', 'Jellyfish', '150', null);
INSERT INTO `ams_attachment` VALUES ('181', '1506416265790.jpg', '220_1b4d6882d107485ea334c08a9e450f8c', '156', null);
INSERT INTO `ams_attachment` VALUES ('182', '1506416265790.jpg', '220_1b4d6882d107485ea334c08a9e450f8c', '157', null);
INSERT INTO `ams_attachment` VALUES ('183', '1506417647336.jpg', '220_1b4d6882d107485ea334c08a9e450f8c', null, '193');
INSERT INTO `ams_attachment` VALUES ('184', '1506419248214.jpg', '220_7b530802fe434c7e9724c33a0024ba18', '158', null);
INSERT INTO `ams_attachment` VALUES ('185', '1506421430404.jpg', '220_2590bebab39b4e23b1dec32e6961ec48', '165', null);
INSERT INTO `ams_attachment` VALUES ('186', '1506488167887.jpg', 'Tulips', null, '192');
INSERT INTO `ams_attachment` VALUES ('187', '1506586583246.jpg', '220_1b4d6882d107485ea334c08a9e450f8c', null, '153');
INSERT INTO `ams_attachment` VALUES ('188', '1506739364315.jpg', '蝴蝶', null, '201');
INSERT INTO `ams_attachment` VALUES ('189', null, null, '143', null);
INSERT INTO `ams_attachment` VALUES ('190', '1506740196160.jpg', '220_19c4ee3f203b4073b72c539c6efb5a12', '188', null);
INSERT INTO `ams_attachment` VALUES ('191', '1506740241843.jpg', '220_2590bebab39b4e23b1dec32e6961ec48', '189', null);
INSERT INTO `ams_attachment` VALUES ('192', '1506741248746.jpg', '220_2590bebab39b4e23b1dec32e6961ec48', '196', null);
INSERT INTO `ams_attachment` VALUES ('193', null, null, '193', null);
INSERT INTO `ams_attachment` VALUES ('194', '1506743266513.jpg', '220_7b530802fe434c7e9724c33a0024ba18', '197', null);
INSERT INTO `ams_attachment` VALUES ('195', '1506752978164.jpg', '220_19c4ee3f203b4073b72c539c6efb5a12', '212', null);
INSERT INTO `ams_attachment` VALUES ('196', '1506754536375.jpg', '导航子菜单类别1', null, '210');
INSERT INTO `ams_attachment` VALUES ('197', '1506754612764.jpg', '220_b5de69e424b44f1d90225fac6bbb201a', '213', null);
INSERT INTO `ams_attachment` VALUES ('198', '1508217853566.jpg', 'Jellyfish', '216', null);
INSERT INTO `ams_attachment` VALUES ('199', '1508222374025.jpg', 'Jellyfish', '217', null);
INSERT INTO `ams_attachment` VALUES ('200', '1508222436907.jpg', 'Penguins', '218', null);
INSERT INTO `ams_attachment` VALUES ('201', '1508222436907.jpg', 'Penguins', '219', null);
INSERT INTO `ams_attachment` VALUES ('202', '1508222552367.jpg', '00b8c4143843c4615dcc0c430685812f', '221', null);
INSERT INTO `ams_attachment` VALUES ('203', '1508222612687.jpg', 'Jellyfish', '222', null);
INSERT INTO `ams_attachment` VALUES ('204', '1508224855613.jpg', '00d65fa19d9ae943dc4516a54fed3e9e', '223', null);
INSERT INTO `ams_attachment` VALUES ('205', '1508224921944.jpg', 'Jellyfish', '225', null);
INSERT INTO `ams_attachment` VALUES ('206', '1508224997728.jpg', 'Tulips', '227', null);
INSERT INTO `ams_attachment` VALUES ('207', '1508225220935.jpg', 'Penguins', '231', null);
INSERT INTO `ams_attachment` VALUES ('209', '1508225448979.jpg', 'Koala', '234', null);
INSERT INTO `ams_attachment` VALUES ('210', '1508225985003.jpg', 'Hydrangeas', null, '217');
INSERT INTO `ams_attachment` VALUES ('211', '1508226011113.jpg', 'Jellyfish', null, '217');
INSERT INTO `ams_attachment` VALUES ('212', '1508227623147.jpg', '代码', '237', null);
INSERT INTO `ams_attachment` VALUES ('213', '1508228029644.jpg', '0b3c3482bf0320180325d9478ce03e7b', null, '212');
INSERT INTO `ams_attachment` VALUES ('214', '1508228076411.jpg', '0a75ecb55d159289bea43b7a15dd6983', null, '209');
INSERT INTO `ams_attachment` VALUES ('215', '1508230395168.jpg', '220_7b530802fe434c7e9724c33a0024ba18', '238', null);
INSERT INTO `ams_attachment` VALUES ('219', null, null, '239', null);
INSERT INTO `ams_attachment` VALUES ('221', null, null, '240', null);
INSERT INTO `ams_attachment` VALUES ('223', null, null, '241', null);
INSERT INTO `ams_attachment` VALUES ('224', '1508233465828.jpg', '220_7b530802fe434c7e9724c33a0024ba18', '242', null);
INSERT INTO `ams_attachment` VALUES ('226', null, null, '243', null);
INSERT INTO `ams_attachment` VALUES ('228', null, null, '244', null);
INSERT INTO `ams_attachment` VALUES ('230', '1508234248045.xlsx', '商品备案导入模板(3)', null, '203');
INSERT INTO `ams_attachment` VALUES ('231', '1508234288995.xlsx', '商品备案导入模板(3)', null, '204');
INSERT INTO `ams_attachment` VALUES ('233', '1508234344390.jpg', '我觉得不行', '247', null);
INSERT INTO `ams_attachment` VALUES ('235', null, null, '246', null);
INSERT INTO `ams_attachment` VALUES ('238', '1508234674486.jpg', '220_19c4ee3f203b4073b72c539c6efb5a12', '248', null);
INSERT INTO `ams_attachment` VALUES ('240', '1508235342991.jpg', '220_2590bebab39b4e23b1dec32e6961ec48', '250', null);
INSERT INTO `ams_attachment` VALUES ('241', '1508235963237.jpg', '代码', '253', null);
INSERT INTO `ams_attachment` VALUES ('242', '1508236045902.jpg', '220_19c4ee3f203b4073b72c539c6efb5a12', '254', null);
INSERT INTO `ams_attachment` VALUES ('243', null, null, '236', null);
INSERT INTO `ams_attachment` VALUES ('247', '1508290461056.jpg', '220_7b530802fe434c7e9724c33a0024ba18', '259', null);
INSERT INTO `ams_attachment` VALUES ('248', '1508290803842.jpg', '蝴蝶', null, '219');
INSERT INTO `ams_attachment` VALUES ('250', '1508293239466.jpg', '我觉得不行', '261', null);
INSERT INTO `ams_attachment` VALUES ('268', '1508298853479.jpg', 'Chrysanthemum', '258', null);
INSERT INTO `ams_attachment` VALUES ('269', '1508298865203.jpg', 'Desert', '256', null);
INSERT INTO `ams_attachment` VALUES ('270', '1508298896026.jpg', 'Tulips', '228', null);
INSERT INTO `ams_attachment` VALUES ('272', '1508298913965.jpg', 'Lighthouse', '226', null);
INSERT INTO `ams_attachment` VALUES ('273', '1508301350692.jpg', '代码', '269', null);
INSERT INTO `ams_attachment` VALUES ('274', '1508302451680.png', '无标题', '275', null);
INSERT INTO `ams_attachment` VALUES ('275', '1508302663719.xlsx', '商品备案导入模板(3)', '276', null);
INSERT INTO `ams_attachment` VALUES ('282', null, null, '270', null);
INSERT INTO `ams_attachment` VALUES ('287', null, null, '279', null);
INSERT INTO `ams_attachment` VALUES ('291', null, null, '282', null);
INSERT INTO `ams_attachment` VALUES ('295', null, null, '283', null);
INSERT INTO `ams_attachment` VALUES ('298', null, null, '284', null);
INSERT INTO `ams_attachment` VALUES ('299', '1508306583721.png', '微信图片_20170809151015', null, '222');
INSERT INTO `ams_attachment` VALUES ('300', '1508306710615.csv', '用户管理系统bug', null, '222');
INSERT INTO `ams_attachment` VALUES ('301', '1508307029133.csv', '用户管理系统bug', null, '222');
INSERT INTO `ams_attachment` VALUES ('302', '1508307072070.jpg', '220_7b530802fe434c7e9724c33a0024ba18', null, '222');
INSERT INTO `ams_attachment` VALUES ('303', '1508307132452.jpg', '220_19c4ee3f203b4073b72c539c6efb5a12', null, '222');
INSERT INTO `ams_attachment` VALUES ('304', '1508308122192.jpg', '220_b5de69e424b44f1d90225fac6bbb201a', '291', null);
INSERT INTO `ams_attachment` VALUES ('305', '1508308256142.jpg', '220_b5de69e424b44f1d90225fac6bbb201a', '292', null);
INSERT INTO `ams_attachment` VALUES ('306', '1508309052407.jpg', '220_19c4ee3f203b4073b72c539c6efb5a12', null, '225');
INSERT INTO `ams_attachment` VALUES ('307', '1508319233991.jpg', 'Penguins', '293', null);
INSERT INTO `ams_attachment` VALUES ('308', '1508379915588.xlsx', '商品备案导入模板(3)', '296', null);
INSERT INTO `ams_attachment` VALUES ('309', '1508380382689.jpg', '代码', '297', null);
INSERT INTO `ams_attachment` VALUES ('310', '1508381966126.psd', '操作统计', null, '222');
INSERT INTO `ams_attachment` VALUES ('311', '1508391357105.jpg', '220_c859219675484593b7a30a83918f3a9a', '299', null);
INSERT INTO `ams_attachment` VALUES ('312', '1508392215421.jpg', '220_19c4ee3f203b4073b72c539c6efb5a12', '300', null);
INSERT INTO `ams_attachment` VALUES ('313', '1508395568650.jpg', '220_7b530802fe434c7e9724c33a0024ba18', null, '222');
INSERT INTO `ams_attachment` VALUES ('314', '1508479430495.jpg', '220_7b530802fe434c7e9724c33a0024ba18', '310', null);
INSERT INTO `ams_attachment` VALUES ('315', '1508479582821.jpg', '220_19c4ee3f203b4073b72c539c6efb5a12', null, '153');
INSERT INTO `ams_attachment` VALUES ('316', '1508495713775.jpg', '220_b5de69e424b44f1d90225fac6bbb201a', '312', null);
INSERT INTO `ams_attachment` VALUES ('317', '1508813645970.jpg', '我觉得不行', '313', null);
INSERT INTO `ams_attachment` VALUES ('318', '1508981885746.jpg', 'Jellyfish', '314', null);
INSERT INTO `ams_attachment` VALUES ('319', '1505281382727.jpg', '我觉得不行', '319', null);
INSERT INTO `ams_attachment` VALUES ('320', '1505281382727.jpg', '我觉得不行', '320', null);
INSERT INTO `ams_attachment` VALUES ('321', '1509001637016.jpg', 'Chrysanthemum', '323', null);
INSERT INTO `ams_attachment` VALUES ('322', '1505281382727.jpg', '我觉得不行', '322', null);
INSERT INTO `ams_attachment` VALUES ('323', '1505281382727.jpg', '我觉得不行', '324', null);
INSERT INTO `ams_attachment` VALUES ('324', '1505281382727.jpg', '我觉得不行', '325', null);
INSERT INTO `ams_attachment` VALUES ('325', '1505281382727.jpg', '我觉得不行', '326', null);
INSERT INTO `ams_attachment` VALUES ('326', '1505281382727.jpg', '我觉得不行', '327', null);
INSERT INTO `ams_attachment` VALUES ('327', '1505281382727.jpg', '我觉得不行', '328', null);
INSERT INTO `ams_attachment` VALUES ('328', '1505281382727.jpg', '我觉得不行', '330', null);
INSERT INTO `ams_attachment` VALUES ('329', '1505281382727.jpg', '我觉得不行', '329', null);
INSERT INTO `ams_attachment` VALUES ('330', '1505281382727.jpg', '我觉得不行', '331', null);
INSERT INTO `ams_attachment` VALUES ('331', '1509346680628.jpg', '220_7b530802fe434c7e9724c33a0024ba18', '335', null);
INSERT INTO `ams_attachment` VALUES ('332', '1509346717126.jpg', '220_b5de69e424b44f1d90225fac6bbb201a', '336', null);
INSERT INTO `ams_attachment` VALUES ('333', '1509350822497.jpg', '220_2590bebab39b4e23b1dec32e6961ec48', '337', null);
INSERT INTO `ams_attachment` VALUES ('334', '1509351293237.png', '公司logo_20170809151057', null, '237');
INSERT INTO `ams_attachment` VALUES ('335', '1509351344244.png', '图片3', null, '237');
INSERT INTO `ams_attachment` VALUES ('336', '1509351988885.jpg', '220_2590bebab39b4e23b1dec32e6961ec48', '338', null);
INSERT INTO `ams_attachment` VALUES ('337', '1509690630871.xlsx', '费用分类(1)', '339', null);
INSERT INTO `ams_attachment` VALUES ('338', '1509690697029.xlsx', '费用分类(1)', '340', null);
INSERT INTO `ams_attachment` VALUES ('339', '1509935198911.xlsx', '导入费用模板(1)(2)', '343', null);
INSERT INTO `ams_attachment` VALUES ('340', '1509935977039.xlsx', '导入费用模板(1)(2)', '345', null);
INSERT INTO `ams_attachment` VALUES ('352', '1510022514765.xlsx', '上架商品标准模板', null, '240');
INSERT INTO `ams_attachment` VALUES ('353', '1510106550206.jpg', '220_19c4ee3f203b4073b72c539c6efb5a12', '359', null);
INSERT INTO `ams_attachment` VALUES ('355', '1510112997748.jpg', '220_7b530802fe434c7e9724c33a0024ba18', '360', null);
INSERT INTO `ams_attachment` VALUES ('356', '1510119443135.jpg', '操作统计', null, '211');
INSERT INTO `ams_attachment` VALUES ('357', '1510121042952.xlsx', '导入费用模板(1)(2)', null, '207');
INSERT INTO `ams_attachment` VALUES ('358', '1510122637658.jpg', '220_c859219675484593b7a30a83918f3a9a', '362', null);
INSERT INTO `ams_attachment` VALUES ('359', '1510126393031.jpg', 'Chrysanthemum', '373', null);
INSERT INTO `ams_attachment` VALUES ('360', '1510126603977.jpg', 'Jellyfish', '378', null);
INSERT INTO `ams_attachment` VALUES ('361', '1510128877988.png', '结算管理-明细2_spec', '385', null);
INSERT INTO `ams_attachment` VALUES ('362', '1510128956958.jpg', '220_7b530802fe434c7e9724c33a0024ba18', '386', null);
INSERT INTO `ams_attachment` VALUES ('364', '1510136935772.jpg', '220_7b530802fe434c7e9724c33a0024ba18', null, '199');
INSERT INTO `ams_attachment` VALUES ('365', '1510136957539.jpg', '220_19c4ee3f203b4073b72c539c6efb5a12', null, '199');
INSERT INTO `ams_attachment` VALUES ('366', '1510195103451.jpg', '220_7b530802fe434c7e9724c33a0024ba18', '394', null);
INSERT INTO `ams_attachment` VALUES ('367', '1510195331486.jpg', '财务管理2', null, '249');
INSERT INTO `ams_attachment` VALUES ('368', '1510281957752.jpg', 'Desert', null, '250');
INSERT INTO `ams_attachment` VALUES ('369', '1510282146188.xls', '采购管理系统bug表20170720(1)', null, '247');
INSERT INTO `ams_attachment` VALUES ('370', '1510282301236.jpg', 'Tulips', null, '251');
INSERT INTO `ams_attachment` VALUES ('371', '1510282324180.jpg', '财务管理1', null, '251');
INSERT INTO `ams_attachment` VALUES ('372', '1510282489379.jpg', '财务管理3', null, '252');
INSERT INTO `ams_attachment` VALUES ('373', '1510295051056.jpg', 'Tulips', null, '245');
INSERT INTO `ams_attachment` VALUES ('374', '1510537954162.jpg', '220_61c7a02ee6f8453fb8eeaf380696ee07', '428', null);
INSERT INTO `ams_attachment` VALUES ('375', '1510539561356.jpg', '异常订单', '429', null);
INSERT INTO `ams_attachment` VALUES ('376', '1510539561356.jpg', '异常订单', '430', null);
INSERT INTO `ams_attachment` VALUES ('377', '1510539628495.jpg', '220_b5de69e424b44f1d90225fac6bbb201a', '431', null);
INSERT INTO `ams_attachment` VALUES ('378', '1510540422632.jpg', '220_c859219675484593b7a30a83918f3a9a', '441', null);
INSERT INTO `ams_attachment` VALUES ('379', '1510540443421.jpg', '220_7b530802fe434c7e9724c33a0024ba18', '442', null);
INSERT INTO `ams_attachment` VALUES ('380', '1510540461312.jpg', '220_b5de69e424b44f1d90225fac6bbb201a', '443', null);
INSERT INTO `ams_attachment` VALUES ('381', '1510541292515.jpg', '操作统计', null, '256');
INSERT INTO `ams_attachment` VALUES ('382', '1510541367133.jpg', 'Jellyfish', '444', null);
INSERT INTO `ams_attachment` VALUES ('383', '1510541506524.jpg', 'Penguins', '445', null);
INSERT INTO `ams_attachment` VALUES ('384', '1510541577540.jpg', 'Penguins', '446', null);
INSERT INTO `ams_attachment` VALUES ('385', '1510541608051.jpg', '220_50b4b8d3c2aa4e0291dd38d34e63cd4f', '447', null);
INSERT INTO `ams_attachment` VALUES ('386', '1510543156086.jpg', '220_7b530802fe434c7e9724c33a0024ba18', '453', null);
INSERT INTO `ams_attachment` VALUES ('387', '1510543241209.jpg', '220_2590bebab39b4e23b1dec32e6961ec48', '454', null);
INSERT INTO `ams_attachment` VALUES ('388', '1510543362559.jpg', '220_2590bebab39b4e23b1dec32e6961ec48', '455', null);
INSERT INTO `ams_attachment` VALUES ('389', '1510543692428.jpg', 'Jellyfish', '456', null);
INSERT INTO `ams_attachment` VALUES ('390', '1510544013212.jpg', '220_7b530802fe434c7e9724c33a0024ba18', '457', null);
INSERT INTO `ams_attachment` VALUES ('391', '1510544077075.jpg', 'Jellyfish', '458', null);
INSERT INTO `ams_attachment` VALUES ('392', '1510546343995.jpg', '220_2590bebab39b4e23b1dec32e6961ec48', '459', null);
INSERT INTO `ams_attachment` VALUES ('393', '1510551394172.jpg', '220_7b530802fe434c7e9724c33a0024ba18', '468', null);
INSERT INTO `ams_attachment` VALUES ('395', '1510553133968.jpg', '结算-对账单2', '469', null);
INSERT INTO `ams_attachment` VALUES ('396', '1510553133968.jpg', '结算-对账单2', '469', null);
INSERT INTO `ams_attachment` VALUES ('397', '1510553133968.jpg', '结算-对账单2', '469', null);
INSERT INTO `ams_attachment` VALUES ('398', '1510553133968.jpg', '结算-对账单2', '469', null);
INSERT INTO `ams_attachment` VALUES ('399', '1510553133968.jpg', '结算-对账单2', '469', null);
INSERT INTO `ams_attachment` VALUES ('400', '1510553133968.jpg', '结算-对账单2', '469', null);
INSERT INTO `ams_attachment` VALUES ('401', '1510553133968.jpg', '结算-对账单2', '469', null);
INSERT INTO `ams_attachment` VALUES ('402', '1510553133968.jpg', '结算-对账单2', '469', null);
INSERT INTO `ams_attachment` VALUES ('403', '1510556807405.jpg', '220_7b530802fe434c7e9724c33a0024ba18', null, '257');
INSERT INTO `ams_attachment` VALUES ('404', '1510556901729.psd', '操作统计', null, '261');
INSERT INTO `ams_attachment` VALUES ('405', '1510637427443.jpg', '220_7b530802fe434c7e9724c33a0024ba18', '482', null);
INSERT INTO `ams_attachment` VALUES ('406', '1510639086604.jpg', '220_2590bebab39b4e23b1dec32e6961ec48', null, '265');
INSERT INTO `ams_attachment` VALUES ('407', '1510639373542.jpg', '操作统计', null, '259');
INSERT INTO `ams_attachment` VALUES ('408', '1510639696424.jpg', '操作统计', null, '266');
INSERT INTO `ams_attachment` VALUES ('409', '1510645484908.jpg', '220_2590bebab39b4e23b1dec32e6961ec48', '484', null);
INSERT INTO `ams_attachment` VALUES ('410', '1510645643733.jpg', '220_7b530802fe434c7e9724c33a0024ba18', null, '268');
INSERT INTO `ams_attachment` VALUES ('411', '1510645713496.jpg', '220_b5de69e424b44f1d90225fac6bbb201a', '485', null);
INSERT INTO `ams_attachment` VALUES ('412', '1510645820133.png', '结算-基础信息_spec', null, '269');
INSERT INTO `ams_attachment` VALUES ('413', '1510647031824.jpg', 'Lighthouse', null, '241');
INSERT INTO `ams_attachment` VALUES ('414', '1510648085069.jpg', 'Hydrangeas', null, '243');
INSERT INTO `ams_attachment` VALUES ('415', '1510648719426.jpg', 'Koala', null, '270');
INSERT INTO `ams_attachment` VALUES ('416', '1510903049046.jpg', 'Koala', '489', null);
INSERT INTO `ams_attachment` VALUES ('417', '1510908742563.jpg', 'Tulips', null, '271');
INSERT INTO `ams_attachment` VALUES ('418', '1511246600412.jpg', 'Jellyfish', '492', null);
INSERT INTO `ams_attachment` VALUES ('423', '1513564371876.jpg', 'timg (7)', '501', null);
INSERT INTO `ams_attachment` VALUES ('428', '1513583491441.jpg', 'Koala', null, '270');
INSERT INTO `ams_attachment` VALUES ('433', '1513587646328.jpg', 'timg (1)', '502', null);
INSERT INTO `ams_attachment` VALUES ('434', '1544424541826.log', 'soapui', null, '244');
INSERT INTO `ams_attachment` VALUES ('435', '1544440287309.xls', '公司内网服务器及部署应用', '510', null);
INSERT INTO `ams_attachment` VALUES ('437', '1550734699208.jpg', '发票', '545', null);

-- ----------------------------
-- Table structure for ams_bill
-- ----------------------------
DROP TABLE IF EXISTS `ams_bill`;
CREATE TABLE `ams_bill` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `in_out` varchar(1) DEFAULT NULL COMMENT '收入支出:I-收入;O-支出\n\n',
  `settlement_object_id` varchar(20) DEFAULT NULL COMMENT '结算对象编码\n',
  `settle_type` varchar(1) DEFAULT NULL COMMENT '结算类型:0-现结；1-月结\n\n',
  `currency` varchar(3) DEFAULT NULL COMMENT '账单币种\n',
  `bill_time` date DEFAULT NULL COMMENT '账单时间\n',
  `status` int(11) DEFAULT NULL COMMENT '明细状态:0 失效/删除,1 新增,2 已修改,3 已审核,4 已生成账单,5 已开票,6 已结款',
  `creator` varchar(20) DEFAULT NULL COMMENT '创建人\n',
  `create_time` date DEFAULT NULL COMMENT '创建时间\n',
  `modified_by` varchar(20) DEFAULT NULL COMMENT '修改人\n',
  `modify_time` date DEFAULT NULL COMMENT '修改时间\n',
  `auditor` varchar(20) DEFAULT NULL COMMENT '审批人\n',
  `audit_time` date DEFAULT NULL COMMENT '审批时间\n',
  `invoice_time` date DEFAULT NULL COMMENT '开票时间\n',
  `pay_time` date DEFAULT NULL COMMENT '支付时间\n',
  `note` text COMMENT '备注\n',
  `attachement` varchar(100) DEFAULT NULL COMMENT '附件\n',
  `org_id` int(11) DEFAULT NULL COMMENT '组织id',
  `df` varchar(1) DEFAULT NULL COMMENT '状态:0存在,1已删除',
  `account_id` varchar(4) DEFAULT NULL COMMENT '账套编码[org_code]',
  `invoice_no` varchar(50) DEFAULT NULL COMMENT '发票号',
  `bill_no` varchar(50) DEFAULT NULL COMMENT '明细编码',
  `settlement_object_name` varchar(50) DEFAULT NULL COMMENT '结算对象中文名',
  `total_income` decimal(10,2) DEFAULT NULL COMMENT '合计收入',
  `total_outcome` decimal(10,2) DEFAULT NULL COMMENT '合计支出',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '账单金额',
  `invoice_other_no` varchar(50) DEFAULT NULL COMMENT '开票票时的另一个编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8 COMMENT='账单';

-- ----------------------------
-- Records of ams_bill
-- ----------------------------
INSERT INTO `ams_bill` VALUES ('154', '1', '17', '1', 'USD', null, '1', '57', '2017-09-20', null, '2017-09-20', '57', '2017-09-20', null, null, '哈哈哈耳朵上的', null, '127', '0', 'WSXC', null, 'RWSXC2017092015363422649443', '泡泡信息技术有限公司', '643.17', '0.00', '643.17', null);
INSERT INTO `ams_bill` VALUES ('155', '0', '17', '1', 'USD', null, '1', '57', '2017-09-20', null, '2017-09-25', '57', '2017-09-20', null, null, '哈哈哈打开啥事uhfgnhgn', null, '127', '0', 'WSXC', null, 'CWSXC2017092015364799457395', '泡泡信息技术有限公司', '0.00', '334.97', '-334.97', null);
INSERT INTO `ams_bill` VALUES ('163', '1', '15', '1', 'USD', null, '2', '52', '2017-09-20', null, null, '52', '2017-09-20', '2017-09-22', null, null, null, '116', '0', 'AAAA', '24422324', 'RAAAA2017092018495438845711', '网易', '35822.12', '0.00', '35822.12', '123456');
INSERT INTO `ams_bill` VALUES ('164', '1', '14', '1', 'USD', null, '2', '52', '2017-09-20', null, '2017-09-27', '52', '2017-09-20', '2017-09-21', '2017-09-21', '5fasfsd', null, '116', '0', 'AAAA', '343434', 'RAAAA2017092018523140184031', '顺丰快速', '53781.56', '0.00', '53781.56', '');
INSERT INTO `ams_bill` VALUES ('165', '1', '11', '1', 'USD', null, '1', '53', '2017-09-20', null, null, null, null, null, null, '3323', null, '117', '0', 'WAWJ', null, 'RWAWJ2017092018535247194259', '网易慧慧', '6361.37', '319.55', '6041.82', null);
INSERT INTO `ams_bill` VALUES ('166', '0', '14', '1', 'USD', null, '2', '52', '2017-09-21', null, '2017-09-25', '52', '2017-09-21', '2017-09-22', '2017-09-22', 'asfsf', null, '116', '0', 'AAAA', '436546578', 'CAAAA2017092109492853223689', '顺丰快速', '0.00', '35.62', '-35.62', null);
INSERT INTO `ams_bill` VALUES ('167', '0', '15', '1', 'USD', null, '3', '52', '2017-09-21', null, null, '52', '2017-09-21', '2017-09-21', null, null, null, '116', '0', 'AAAA', '5656', 'CAAAA2017092110515390257181', '网易', '0.00', '3557.01', '-3557.01', null);
INSERT INTO `ams_bill` VALUES ('168', '1', '11', '1', 'USD', null, '1', '53', '2017-09-20', null, null, null, null, null, null, '3323', null, '117', '0', 'WAWJ', null, 'RWAWJ2017092018535247194259', '网易慧慧', '6361.37', '319.55', '6041.82', null);
INSERT INTO `ams_bill` VALUES ('169', '1', '11', '1', 'USD', null, '1', '53', '2017-09-20', null, null, null, null, null, null, '3323', null, '117', '0', 'WAWJ', null, 'RWAWJ2017092018535247194259', '网易慧慧', '6361.37', '319.55', '6041.82', null);
INSERT INTO `ams_bill` VALUES ('170', '0', '14', '1', 'USD', null, '2', '52', '2017-09-21', null, null, '52', '2017-09-21', '2017-09-22', '2017-09-22', null, null, '116', '0', 'AAAA', '436546578', 'CAAAA2017092109492853223689', '顺丰快速', '0.00', '35.62', '-35.62', null);
INSERT INTO `ams_bill` VALUES ('171', '0', '14', '1', 'USD', null, '2', '52', '2017-09-21', null, null, '52', '2017-09-21', '2017-09-22', '2017-09-22', null, null, '116', '0', 'AAAA', '436546578', 'CAAAA2017092109492853223689', '顺丰快速', '0.00', '35.62', '-35.62', null);
INSERT INTO `ams_bill` VALUES ('172', '0', '14', '1', 'USD', null, '2', '52', '2017-09-21', null, null, '52', '2017-09-21', '2017-09-22', '2017-09-22', null, null, '116', '0', 'AAAA', '436546578', 'CAAAA2017092109492853223689', '顺丰快速', '0.00', '35.62', '-35.62', null);
INSERT INTO `ams_bill` VALUES ('173', '0', '14', '1', 'USD', null, '2', '52', '2017-09-21', null, null, '52', '2017-09-21', '2017-09-22', '2017-09-22', null, null, '116', '0', 'AAAA', '436546578', 'CAAAA2017092109492853223689', '顺丰快速', '0.00', '35.62', '-35.62', null);
INSERT INTO `ams_bill` VALUES ('174', '0', '14', '1', 'USD', null, '2', '52', '2017-09-21', null, null, '52', '2017-09-21', '2017-09-22', '2017-09-22', null, null, '116', '0', 'AAAA', '436546578', 'CAAAA2017092109492853223689', '顺丰快速', '0.00', '35.62', '-35.62', null);
INSERT INTO `ams_bill` VALUES ('175', '0', '14', '1', 'USD', null, '2', '52', '2017-09-21', null, null, '52', '2017-09-21', '2017-09-22', '2017-09-25', null, null, '116', '0', 'AAAA', '436546578', 'CAAAA2017092109492853223689', '顺丰快速', '0.00', '35.62', '-35.62', null);
INSERT INTO `ams_bill` VALUES ('176', '0', '14', '1', 'USD', null, '2', '52', '2017-09-21', null, null, '52', '2017-09-21', '2017-09-22', '2017-10-17', null, null, '116', '0', 'AAAA', '436546578', 'CAAAA2017092109492853223689', '顺丰快速', '0.00', '35.62', '-35.62', null);
INSERT INTO `ams_bill` VALUES ('177', '0', '14', '1', 'USD', null, '2', '52', '2017-09-21', null, null, '52', '2017-09-21', '2017-09-22', '2017-09-22', null, null, '116', '0', 'AAAA', '436546578', 'CAAAA2017092109492853223689', '顺丰快速', '0.00', '35.62', '-35.62', null);
INSERT INTO `ams_bill` VALUES ('178', '0', '14', '1', 'USD', null, '2', '52', '2017-09-21', null, null, '52', '2017-09-21', '2017-09-22', '2017-09-22', null, null, '116', '0', 'AAAA', '436546578', 'CAAAA2017092109492853223689', '顺丰快速', '0.00', '35.62', '-35.62', null);
INSERT INTO `ams_bill` VALUES ('179', '0', '14', '1', 'USD', null, '3', '52', '2017-09-21', null, '2017-09-27', '52', '2017-09-21', '2017-09-22', '2017-09-22', 'wrwere', null, '116', '0', 'AAAA', '436546578', 'CAAAA2017092109492853223689', '顺丰快速', '0.00', '35.62', '-35.62', null);
INSERT INTO `ams_bill` VALUES ('181', '0', '14', '1', 'USD', null, '1', '52', '2017-09-25', null, null, null, null, null, null, null, null, '116', '0', 'AAAA', null, 'CAAAA2017092515265490892646', '顺丰快速', '0.00', '3.49', '-3.49', null);
INSERT INTO `ams_bill` VALUES ('182', '0', '14', '1', 'USD', null, '1', '52', '2017-09-25', null, null, null, null, null, null, null, null, '116', '0', 'AAAA', null, 'CAAAA2017092515265495654554', '顺丰快速', '0.00', '3.49', '-3.49', null);
INSERT INTO `ams_bill` VALUES ('183', '0', '14', '1', 'USD', null, '1', '52', '2017-09-25', null, null, null, null, null, null, null, null, '116', '0', 'AAAA', null, 'CAAAA2017092515270010060800', '顺丰快速', '0.00', '3.49', '-3.49', null);
INSERT INTO `ams_bill` VALUES ('184', '0', '15', '1', 'USD', null, '2', '52', '2017-09-25', null, null, '52', '2017-10-19', null, null, null, null, '116', '0', 'AAAA', null, 'CAAAA2017092515275200718153', '网易', '0.00', '3.49', '-3.49', null);
INSERT INTO `ams_bill` VALUES ('189', '1', '15', '1', 'USD', null, '1', '52', '2017-09-25', null, '2017-10-18', null, null, null, null, '6677', null, '116', '0', 'AAAA', null, 'RAAAA2017092515384389471682', '网易', '35.41', '0.00', '35.41', null);
INSERT INTO `ams_bill` VALUES ('190', '1', '22', '1', 'USD', null, '1', '9', '2017-09-25', null, null, null, null, null, null, null, null, '134', '0', 'XXXX', null, 'RXXXX2017092515420605527083', '刀剑', '0.01', '0.00', '0.01', null);
INSERT INTO `ams_bill` VALUES ('191', '1', '10', '1', 'USD', null, '4', '52', '2017-09-25', null, null, '52', '2017-09-27', '2017-09-27', '2017-09-27', null, null, '116', '0', 'AAAA', '23432', 'RAAAA2017092515445104389318', '圆通快递', '27501.84', '0.00', '27501.84', '2423');
INSERT INTO `ams_bill` VALUES ('192', '1', '15', '1', 'USD', null, '4', '52', '2017-09-25', null, '2017-09-27', '52', '2017-09-27', '2017-09-27', '2017-09-27', 'erwere3434777', null, '116', '0', 'AAAA', '432532432', 'RAAAA2017092515483921620539', '网易', '259173.04', '0.00', '259173.04', '234324');
INSERT INTO `ams_bill` VALUES ('214', '0', '14', '1', 'USD', null, '3', '52', '2017-10-17', null, null, '52', '2017-10-17', '2017-10-18', null, null, null, '116', '0', 'AAAA', '234423', 'CAAAA201710171530314836294', '顺丰快速', '0.00', '73.52', '-73.52', '234');
INSERT INTO `ams_bill` VALUES ('215', '0', '14', '1', 'USD', null, '3', '52', '2017-10-17', null, null, '52', '2017-10-17', '2017-10-18', null, null, null, '116', '0', 'AAAA', '234234', 'CAAAA2017101715305241899585', '顺丰快速', '0.00', '73.52', '-73.52', '234');
INSERT INTO `ams_bill` VALUES ('216', '0', '53', '1', 'USD', null, '2', '213', '2017-10-17', null, null, '213', '2017-10-26', null, null, null, null, '239', '0', 'KJNZ', null, 'CKJNZ2017101715354386711298', '韩衣控-中国', '0.00', '40.51', '-40.51', null);
INSERT INTO `ams_bill` VALUES ('217', '1', '15', '1', 'USD', null, '3', '52', '2017-10-17', null, null, '52', '2017-10-17', '2017-10-17', null, null, null, '116', '0', 'AAAA', '32423432', 'RAAAA2017101715354809314877', '网易', '6.96', '0.00', '6.96', '23423');
INSERT INTO `ams_bill` VALUES ('218', '0', '53', '1', 'USD', null, '2', '213', '2017-10-17', null, null, '213', '2017-10-26', null, null, null, null, '239', '0', 'KJNZ', null, 'CKJNZ2017101715381381896123', '韩衣控-中国', '0.00', '57.32', '-57.32', null);
INSERT INTO `ams_bill` VALUES ('219', '1', '57', '1', 'USD', null, '4', '217', '2017-10-18', null, null, '217', '2017-10-18', '2017-10-18', '2017-10-18', '121212', null, '249', '0', 'PLOK', '1234', 'RPLOK2017101809360452049663', '搬东西', '18.57', '0.00', '18.57', '1234');
INSERT INTO `ams_bill` VALUES ('220', '0', '54', '1', 'USD', null, '2', '217', '2017-10-18', null, null, '217', '2017-10-18', null, null, '显示的金额不正确', null, '249', '0', 'PLOK', null, 'CPLOK2017101810064692450592', '酒水小李子', '0.00', '10937.50', '-10937.50', null);
INSERT INTO `ams_bill` VALUES ('221', '0', '45', '1', 'USD', null, '1', '217', '2017-10-18', null, '2017-10-18', null, null, null, null, '278.6311122', null, '249', '0', 'PLOK', null, 'CPLOK2017101810535892681293', '张三', '0.00', '278.63', '-278.63', null);
INSERT INTO `ams_bill` VALUES ('222', '0', '61', '1', 'GBP', null, '4', '217', '2017-10-18', null, '2017-10-18', '217', '2017-10-18', '2017-10-19', '2017-10-19', '算对了哦', null, '249', '0', 'PLOK', '12344321', 'CPLOK2017101811594187881175', '老李123', '82.45', '667.72', '-585.27', '12344321');
INSERT INTO `ams_bill` VALUES ('223', '1', '50', '1', 'USD', null, '2', '220', '2017-10-18', null, null, '220', '2017-11-06', null, null, '777888', null, '251', '0', 'ZJLS', null, 'RZJLS2017101813434827126715', 'play', '25.89', '0.00', '25.89', null);
INSERT INTO `ams_bill` VALUES ('224', '0', '56', '1', 'USD', null, '1', '217', '2017-10-18', null, null, null, null, null, null, '供应商', null, '249', '0', 'PLOK', null, 'CPLOK2017101813545386339162', '供应商', '0.00', '13425.53', '-13425.53', null);
INSERT INTO `ams_bill` VALUES ('225', '1', '51', '1', 'USD', null, '4', '217', '2017-10-18', null, '2017-10-19', '217', '2017-10-18', '2017-10-18', '2017-10-19', '放松放松12', null, '249', '0', 'PLOK', '1234432', 'RPLOK2017101814322180440860', '老张家常菜', '17291.14', '1936.30', '15354.84', '1aqzaxd');
INSERT INTO `ams_bill` VALUES ('226', '0', '58', '1', 'USD', null, '4', '9', '2017-10-19', null, null, '9', '2017-10-19', '2017-10-19', '2017-10-19', '测试001', null, '134', '0', 'XXXX', '23434', 'CXXXX2017101910130393123802', '12', '35.21', '951.12', '-915.91', '4665');
INSERT INTO `ams_bill` VALUES ('227', '1', '22', '1', 'USD', null, '3', '9', '2017-10-19', null, null, '9', '2017-10-19', '2017-10-19', null, '测试开票', null, '134', '0', 'XXXX', '3453', 'RXXXX201710191018156239316', '刀剑', '1.82', '0.00', '1.82', '121314');
INSERT INTO `ams_bill` VALUES ('228', '1', '59', '1', 'USD', null, '1', '9', '2017-10-19', null, null, null, null, null, null, '876543', null, '134', '0', 'XXXX', null, 'RXXXX2017101910261662846375', '12312', '27.98', '0.00', '27.98', null);
INSERT INTO `ams_bill` VALUES ('229', '1', '59', '1', 'USD', null, '1', '9', '2017-10-19', null, null, null, null, null, null, '876543', null, '134', '0', 'XXXX', null, 'RXXXX2017101910264694685338', '12312', '27.98', '0.00', '27.98', null);
INSERT INTO `ams_bill` VALUES ('230', '1', '59', '1', 'USD', null, '1', '9', '2017-10-19', null, null, null, null, null, null, '876543', null, '134', '0', 'XXXX', null, 'RXXXX2017101910265496419259', '12312', '27.98', '0.00', '27.98', null);
INSERT INTO `ams_bill` VALUES ('231', '1', '73', '1', 'AUD', null, '4', '9', '2017-10-19', null, null, '9', '2017-10-19', '2017-10-19', '2017-10-19', '9876543', null, '134', '0', 'XXXX', '5674563', 'RXXXX2017101910332547898727', 'coffee', '40.87', '0.00', '40.87', '23423');
INSERT INTO `ams_bill` VALUES ('232', '1', '74', '1', 'USD', null, '2', '217', '2017-10-19', null, '2017-10-19', '217', '2017-10-19', null, null, '酒水小李子111', null, '249', '0', 'PLOK', null, 'RPLOK2017101917470027441289', '酒水小李子', '3092.68', '884.28', '2208.40', null);
INSERT INTO `ams_bill` VALUES ('233', '1', '53', '1', 'USD', null, '3', '213', '2017-10-26', null, null, '213', '2017-10-26', '2017-10-26', null, '12', null, '239', '0', 'KJNZ', '323424', 'Rnull2017102615080473847847', '韩衣控-中国', '35.36', '0.00', '35.36', '234324');
INSERT INTO `ams_bill` VALUES ('234', '1', '53', '1', 'USD', null, '2', '213', '2017-10-26', null, null, '213', '2017-10-26', null, null, '323', null, '239', '0', 'KJNZ', null, 'Rnull2017102615351769164639', '韩衣控-中国', '284.38', '5.13', '279.25', null);
INSERT INTO `ams_bill` VALUES ('235', '0', '55', '1', 'CNY', null, '1', '213', '2017-10-26', null, null, null, null, null, null, '4335', null, '239', '0', 'KJNZ', null, 'Cnull2017102615374071212842', '网易考拉', '12.00', '24.00', '-12.00', null);
INSERT INTO `ams_bill` VALUES ('236', '0', '53', '1', 'USD', null, '2', '213', '2017-10-26', null, null, '213', '2017-11-13', null, null, '2342', null, '239', '0', 'KJNZ', null, 'CKJNZ2017102615501972411288', '韩衣控-中国', '3.48', '52.20', '-48.72', null);
INSERT INTO `ams_bill` VALUES ('237', '0', '95', '1', 'USD', null, '3', '242', '2017-10-30', null, null, '242', '2017-10-30', '2017-10-30', '2017-10-30', '929.17', null, '303', '0', 'YYUU', '121', 'CYYUU2017103016081903555066', '双方是否', '0.00', '929.17', '-929.17', '121');
INSERT INTO `ams_bill` VALUES ('238', '1', '102', '1', 'CNY', null, '4', '9', '2017-11-03', null, null, '9', '2017-11-03', '2017-11-03', '2017-11-03', '收入对账单', null, '134', '0', 'XXXX', '354235423', 'RXXXX2017110314363754148889', '结算权限新增', '23.00', '0.00', '23.00', '12312312');
INSERT INTO `ams_bill` VALUES ('239', '0', '102', '1', 'CNY', null, '3', '9', '2017-11-03', null, null, '9', '2017-11-03', '2017-11-03', null, 'qreqw', null, '134', '0', 'XXXX', '12424', 'CXXXX2017110314472662527962', '结算权限新增', '23.00', '45.00', '-22.00', '132123');
INSERT INTO `ams_bill` VALUES ('240', '0', '101', '1', 'USD', null, '2', '246', '2017-11-06', null, '2017-11-06', '246', '2017-11-06', '2017-11-07', null, '444', null, '306', '0', 'BILI', '2323', 'CBILI2017110611240564552161', '肯德基', '0.00', '26.00', '-26.00', '32');
INSERT INTO `ams_bill` VALUES ('241', '1', '98', '1', 'CNY', null, '2', '246', '2017-11-06', null, null, '246', '2017-11-14', '2017-11-14', null, null, null, '306', '0', 'BILI', '34', 'RBILI2017110613212598234482', '驭剑', '162.51', '0.00', '162.51', '43');
INSERT INTO `ams_bill` VALUES ('242', '0', '68', '1', 'USD', null, '2', '220', '2017-11-06', null, '2017-11-10', '220', '2017-11-06', null, null, '一会让他', null, '251', '0', 'ZJLS', null, 'CZJLS2017110614593920863382', '送货小李子222', '0.00', '32.08', '-32.08', null);
INSERT INTO `ams_bill` VALUES ('243', '1', '101', '1', 'USD', null, '2', '286', '2017-11-07', null, null, '246', '2017-11-14', '2017-11-14', null, null, null, '306', '0', 'BILI', '232323', 'RBILI2017110710253692541555', '肯德基', '1786.60', '0.00', '1786.60', '23');
INSERT INTO `ams_bill` VALUES ('246', '1', '50', '1', 'USD', null, '1', '220', '2017-11-08', null, null, null, null, null, null, null, null, '251', '0', 'ZJLS', null, 'RZJLS2017110813495558485717', 'play', '1.81', '0.00', '1.81', null);
INSERT INTO `ams_bill` VALUES ('253', '1', '117', '1', 'HKD', null, '1', '324', '2017-11-10', null, null, null, null, null, null, '每月15日结算的账单，下个月10号进行付款', null, '379', '0', 'POLK', null, 'RPOLK2017111016464752622003', '网易泡泡', '117.52', '0.00', '117.52', null);
INSERT INTO `ams_bill` VALUES ('254', '1', '117', '1', 'HKD', null, '1', '324', '2017-11-10', null, null, null, null, null, null, null, null, '379', '0', 'POLK', null, 'RPOLK2017111016560156276154', '网易泡泡', '234.99', '0.00', '234.99', null);
INSERT INTO `ams_bill` VALUES ('255', '1', '122', '1', 'CNY', null, '3', '302', '2017-11-13', null, '2017-11-13', '302', '2017-11-13', '2017-11-13', null, '234', null, '365', '0', 'QWEW', '12345678901', 'RQWEW2017111310434891575668', '成大洁', '11835.00', '11590.94', '244.06', '123456789');
INSERT INTO `ams_bill` VALUES ('256', '1', '122', '1', 'CNY', null, '4', '302', '2017-11-13', null, '2017-11-13', '302', '2017-11-13', '2017-11-13', '2017-11-13', '123412345123455432', null, '365', '0', 'QWEW', '1234567', 'RQWEW2017111310443879940390', '成大洁', '744.58', '0.00', '744.58', '1234567');
INSERT INTO `ams_bill` VALUES ('257', '1', '122', '1', 'CNY', null, '2', '302', '2017-11-13', null, '2017-11-13', '302', '2017-11-13', '2017-11-13', null, '确认对账单后账单显示在“收款管理”模块中', null, '365', '0', 'QWEW', '123456789', 'RQWEW2017111311144993234171', '成大洁', '508.75', '508.75', '0.00', '123456789');
INSERT INTO `ams_bill` VALUES ('258', '0', '122', '1', 'CNY', null, '2', '302', '2017-11-13', null, null, '302', '2017-11-13', null, null, null, null, '365', '0', 'QWEW', null, 'CQWEW2017111311172141888798', '成大洁', '100.00', '200.00', '-100.00', null);
INSERT INTO `ams_bill` VALUES ('259', '0', '122', '1', 'CNY', null, '3', '302', '2017-11-13', null, null, '302', '2017-11-13', '2017-11-14', null, null, null, '365', '0', 'QWEW', '1235789', 'CQWEW2017111311241612910525', '成大洁', '120.00', '1555.04', '-1435.04', '123456789');
INSERT INTO `ams_bill` VALUES ('260', '0', '55', '1', 'CNY', null, '2', '213', '2017-11-13', null, null, '213', '2017-11-13', null, null, '支出大于收入', null, '239', '0', 'KJNZ', null, 'CKJNZ2017111311293954024368', '网易考拉', '166.00', '34567.00', '-34401.00', null);
INSERT INTO `ams_bill` VALUES ('261', '0', '122', '1', 'CNY', null, '4', '302', '2017-11-13', null, null, '302', '2017-11-13', '2017-11-13', '2017-11-13', null, null, '365', '0', 'QWEW', '123456789012', 'CQWEW2017111311335190096101', '成大洁', '0.00', '859.70', '-859.70', '123456789012');
INSERT INTO `ams_bill` VALUES ('262', '1', '97', '1', 'USD', null, '2', '213', '2017-11-13', null, null, '213', '2017-11-13', null, null, null, null, '239', '0', 'KJNZ', null, 'RKJNZ2017111311395409553243', '42525', '26.83', '0.00', '26.83', null);
INSERT INTO `ams_bill` VALUES ('263', '1', '122', '1', 'CNY', null, '1', '302', '2017-11-13', null, null, null, null, null, null, null, null, '365', '0', 'QWEW', null, 'RQWEW2017111312131870075901', '成大洁', '859.70', '0.00', '859.70', null);
INSERT INTO `ams_bill` VALUES ('264', '1', '122', '1', 'CNY', null, '1', '302', '2017-11-13', null, '2017-11-13', null, null, null, null, '1234567890-', null, '365', '0', 'QWEW', null, 'RQWEW2017111314081197098847', '成大洁', '100.00', '0.00', '100.00', null);
INSERT INTO `ams_bill` VALUES ('265', '1', '122', '1', 'CNY', null, '3', '302', '2017-11-13', null, '2017-11-14', '302', '2017-11-14', '2017-11-14', null, '123456水电费更换即可', null, '365', '0', 'QWEW', '法规和健康', 'RQWEW2017111315285407896446', '成大洁', '12832.34', '12754.63', '77.71', '是非得失股份');
INSERT INTO `ams_bill` VALUES ('266', '0', '129', '1', 'CNY', null, '3', '302', '2017-11-14', null, null, '302', '2017-11-14', '2017-11-14', null, '1234567', null, '365', '0', 'QWEW', '5678976', 'CQWEW2017111414044473969056', '何大人', '0.00', '102.97', '-102.97', '5678976');
INSERT INTO `ams_bill` VALUES ('267', '1', '55', '1', 'CNY', null, '1', '213', '2017-11-14', null, null, null, null, null, null, null, null, '239', '0', 'KJNZ', null, 'RKJNZ2017111415153885348932', '网易考拉', '12.00', '0.00', '12.00', null);
INSERT INTO `ams_bill` VALUES ('268', '1', '127', '1', 'EUR', null, '2', '302', '2017-11-14', null, null, '302', '2017-11-14', '2017-11-14', null, '1234', null, '365', '0', 'QWEW', '生产线', 'RQWEW2017111415470014986615', '罗振宇', '14.33', '0.00', '14.33', '爽肤水');
INSERT INTO `ams_bill` VALUES ('269', '0', '131', '1', 'USD', null, '3', '302', '2017-11-14', null, null, '302', '2017-11-14', '2017-11-14', null, null, null, '365', '0', 'QWEW', '佛挡杀佛', 'CQWEW2017111415493849586219', '张三供应商', '0.00', '31.94', '-31.94', '的是非得失');
INSERT INTO `ams_bill` VALUES ('270', '0', '101', '1', 'USD', null, '2', '246', '2017-11-14', null, null, '246', '2017-11-14', '2017-12-18', null, null, null, '306', '0', 'BILI', '312312', 'CBILI2017111416095775089330', '肯德基', '0.00', '1.81', '-1.81', '132');
INSERT INTO `ams_bill` VALUES ('271', '1', '101', '1', 'USD', null, '2', '286', '2017-11-17', null, null, '286', '2017-11-17', '2017-11-17', null, null, null, '306', '0', 'BILI', '222', 'RBILI2017111716515690959603', '肯德基', '0.00', '0.00', '0.00', '22222');
INSERT INTO `ams_bill` VALUES ('272', '0', '144', '1', 'CNY', null, '4', '1', '2019-02-22', null, '2019-02-22', '1', '2019-02-22', '2019-02-23', '2019-03-05', ' 玉兰油大红瓶面霜系列使用报告 并强烈推荐 去年五一买的第一瓶玉兰油大红瓶，到现在为止，已经空瓶5瓶（我也不知道我为啥用那么快，还老是被嫌弃是拿面霜当饭吃），其中无香清爽版用掉3瓶，有香滋润版用掉2瓶，现在正在用第6瓶。  最开始是看一个护肤博主推荐了好几次，也正赶上需要换护肤品，就买了两瓶试试（屈臣氏有活动，买两瓶比较划算，就是那么节约），先入的无香清爽版，毕竟夏天快开始了，然后就一发不可收拾，接着滋润版，一直用到最近刚出的空气霜。  1、无香清爽版大红瓶  这个面霜真的很神奇，是一款我夏天都可以直接用的面霜，膏体啥的就不展示了，就是正常的面霜膏体，也没什么味道，只看膏体感觉不到上脸会那么清爽，原来用的空瓶子没留，新囤的货还没拆，等天热了再用。这个清爽版大夏天用既不油，也不粘，天哪，真的是省了很多钱啊。夏天用面霜大概只有我这个大干皮还可以，混合偏油甚至油性皮肤估计会受不了，油性皮肤也可以用的面霜就在最后，等一下哈。  2、有香滋润版大红瓶  先入的两瓶轻爽版在九月份左右就用完了，考虑到天气转凉了，就收了一瓶清爽版，一瓶滋润版。十一月左右开始用的滋润版，天冷之后，保护力没那么强了，但是在用完清爽版大红瓶之后用了一阵子澳洲维E面霜。这个网红面霜功效是不错，就是太难揉开了，我一般是配了精油往脸上揉，不然揉的脸红红的，用了有两周吧，实在是不怎么顺手，就开了滋润版大红瓶。  滋润版大红瓶香味比较明显，有点青苹果的味道，我还是能接受的（我不喜欢有香味的护肤品，特别是夏天的时候简直完全无法接受涂到脸上的东西是香香的，情愿闻雪花秀那种中药味道都不愿意闻到香味儿）十一月左右开瓶的滋润版大红瓶，到过年放假结束，正好用完两瓶，今年冬天特别冷，零下十几度，滋润版大红瓶完全够用，全天滋润，后续上妆什么的也能做到服帖、不浮妆、不出油。对比我用过的fresh面霜、科颜氏面霜、兰蔻面霜来说，是性价比更高的一款选择。  注：我完全无法从包装上区分大红瓶的清爽版和滋润版，有想入的姐妹们一定要问清楚柜姐。', null, '4', '0', null, '001', 'Cnull2019022209595495689441', '出库', '0.00', '88888.00', '-88888.00', '001');

-- ----------------------------
-- Table structure for ams_business_type
-- ----------------------------
DROP TABLE IF EXISTS `ams_business_type`;
CREATE TABLE `ams_business_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `business_type_name` varchar(10) DEFAULT NULL COMMENT '业务类型名称',
  `org_id` int(11) DEFAULT NULL COMMENT '组织id\n',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COMMENT='业务类型';

-- ----------------------------
-- Records of ams_business_type
-- ----------------------------
INSERT INTO `ams_business_type` VALUES ('11', 'B2C', '127');
INSERT INTO `ams_business_type` VALUES ('14', 'B2B', '117');
INSERT INTO `ams_business_type` VALUES ('15', 'B2C', '134');
INSERT INTO `ams_business_type` VALUES ('24', 'B2B', '134');
INSERT INTO `ams_business_type` VALUES ('25', 'aaa', '116');
INSERT INTO `ams_business_type` VALUES ('26', 'B2B', '226');
INSERT INTO `ams_business_type` VALUES ('27', 'B2B', '239');
INSERT INTO `ams_business_type` VALUES ('28', 'B2C', '239');
INSERT INTO `ams_business_type` VALUES ('29', 'B2B', '249');
INSERT INTO `ams_business_type` VALUES ('31', 'B3B', '249');
INSERT INTO `ams_business_type` VALUES ('32', 'B2B', '251');
INSERT INTO `ams_business_type` VALUES ('33', 'B2C', '251');
INSERT INTO `ams_business_type` VALUES ('34', 'B2C', '226');
INSERT INTO `ams_business_type` VALUES ('37', 'C2B', '239');
INSERT INTO `ams_business_type` VALUES ('38', 'B2B', '303');
INSERT INTO `ams_business_type` VALUES ('41', 'P2P', '306');
INSERT INTO `ams_business_type` VALUES ('42', 'B2D', '306');
INSERT INTO `ams_business_type` VALUES ('43', 'B2P', '306');
INSERT INTO `ams_business_type` VALUES ('44', 'P2B', '306');
INSERT INTO `ams_business_type` VALUES ('45', 'd2d', '306');
INSERT INTO `ams_business_type` VALUES ('46', 'OKK', '348');
INSERT INTO `ams_business_type` VALUES ('47', 'AAA', '372');
INSERT INTO `ams_business_type` VALUES ('48', '母婴类', '379');
INSERT INTO `ams_business_type` VALUES ('49', '服装类', '379');
INSERT INTO `ams_business_type` VALUES ('50', '箱包类', '379');
INSERT INTO `ams_business_type` VALUES ('51', '电器类', '379');
INSERT INTO `ams_business_type` VALUES ('52', '    B2B', '365');
INSERT INTO `ams_business_type` VALUES ('54', 'B2D', '365');
INSERT INTO `ams_business_type` VALUES ('55', 'B2E', '365');
INSERT INTO `ams_business_type` VALUES ('56', 'B2F', '365');
INSERT INTO `ams_business_type` VALUES ('57', 'B2A', '365');
INSERT INTO `ams_business_type` VALUES ('58', 'B2G', '365');
INSERT INTO `ams_business_type` VALUES ('59', 'B2H', '365');
INSERT INTO `ams_business_type` VALUES ('60', 'B2J', '365');
INSERT INTO `ams_business_type` VALUES ('61', 'B2K', '365');
INSERT INTO `ams_business_type` VALUES ('62', 'B2L', '365');
INSERT INTO `ams_business_type` VALUES ('63', 'B2M', '365');
INSERT INTO `ams_business_type` VALUES ('65', 'B2B', '401');
INSERT INTO `ams_business_type` VALUES ('66', 'B2C', '401');
INSERT INTO `ams_business_type` VALUES ('67', '空运', '401');
INSERT INTO `ams_business_type` VALUES ('68', '仓储', '401');
INSERT INTO `ams_business_type` VALUES ('69', '进口直邮', '4');
INSERT INTO `ams_business_type` VALUES ('75', 'ssss', '4');
INSERT INTO `ams_business_type` VALUES ('78', 'assa', '4');
INSERT INTO `ams_business_type` VALUES ('81', 'sssa', '4');
INSERT INTO `ams_business_type` VALUES ('82', '你好啊', '4');
INSERT INTO `ams_business_type` VALUES ('83', 'sasa', '4');
INSERT INTO `ams_business_type` VALUES ('84', 'hhhhh11', '4');
INSERT INTO `ams_business_type` VALUES ('85', 'sasa666', '4');
INSERT INTO `ams_business_type` VALUES ('86', 'ooo', '4');
INSERT INTO `ams_business_type` VALUES ('87', 'dsdsddssd', '4');
INSERT INTO `ams_business_type` VALUES ('88', 'qqqq', '4');
INSERT INTO `ams_business_type` VALUES ('89', 'fff', '4');
INSERT INTO `ams_business_type` VALUES ('90', 'llll', '4');
INSERT INTO `ams_business_type` VALUES ('94', '长沙市啊啊啊', '4');

-- ----------------------------
-- Table structure for ams_permission
-- ----------------------------
DROP TABLE IF EXISTS `ams_permission`;
CREATE TABLE `ams_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '资源名称',
  `code` varchar(200) DEFAULT NULL COMMENT '资源',
  `enabled` varchar(1) DEFAULT NULL COMMENT '是否可用,1：可用，0不可用',
  `pid` int(11) DEFAULT NULL COMMENT '层级',
  `icon` varchar(200) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='许可/权限';

-- ----------------------------
-- Records of ams_permission
-- ----------------------------
INSERT INTO `ams_permission` VALUES ('1', '记账管理', 'Settlement/accountingList', '1', '0', 'icon-bi');
INSERT INTO `ams_permission` VALUES ('2', '账单管理', 'Settlement/PrepareBillList', '1', '0', 'pay-circle-o');
INSERT INTO `ams_permission` VALUES ('3', '收款管理', 'Settlement/ReceiptList', '1', '0', 'icon-shoukuan');
INSERT INTO `ams_permission` VALUES ('4', '付款管理', 'Settlement/PaymentList', '1', '0', 'icon-pay');
INSERT INTO `ams_permission` VALUES ('5', '结算对象', 'Settlement/SettlementList', '1', '0', 'idcard');
INSERT INTO `ams_permission` VALUES ('6', '费用管理', 'Settlement/CostManageList', '1', '0', 'schedule');
INSERT INTO `ams_permission` VALUES ('7', '业务类型', 'Settlement/BusinessTypeList', '1', '0', 'bars');
INSERT INTO `ams_permission` VALUES ('8', '快捷添加收支', '/Accountitem/insertList.action', '1', '1', null);
INSERT INTO `ams_permission` VALUES ('9', '新增收支', '/Accountitem/insert.action', '1', '1', null);
INSERT INTO `ams_permission` VALUES ('10', '审批收支', '/Accountitem/audit.action', '1', '1', null);
INSERT INTO `ams_permission` VALUES ('11', '生成对账单', '/bill/insert.action', '1', '1', null);
INSERT INTO `ams_permission` VALUES ('12', '确认账单', '/bill/audit.action', '1', '2', null);
INSERT INTO `ams_permission` VALUES ('13', '收款开票', '/bill/invoiced.action', '1', '3', null);
INSERT INTO `ams_permission` VALUES ('14', '收款核销', '/bill/paid.action', '1', '3', null);
INSERT INTO `ams_permission` VALUES ('15', '添加结算对象', '/SettlementObject/insert.action', '1', '5', null);
INSERT INTO `ams_permission` VALUES ('16', '编辑结算对象', '/SettlementObject/update.action', '1', '5', null);
INSERT INTO `ams_permission` VALUES ('17', '导入费用管理', '/AccountCategory/upload.action', '1', '6', null);
INSERT INTO `ams_permission` VALUES ('18', '添加费用管理', '/AccountCategory/insert.action', '1', '6', null);
INSERT INTO `ams_permission` VALUES ('19', '编辑费用管理', '/AccountCategory/update.action', '1', '6', null);
INSERT INTO `ams_permission` VALUES ('20', '添加业务类型', '/AmsBusinessType/insert.action', '1', '7', null);
INSERT INTO `ams_permission` VALUES ('21', '编辑业务类型', '/AmsBusinessType/update.action', '1', '7', null);
INSERT INTO `ams_permission` VALUES ('22', '删除业务类型', '/AmsBusinessType/delete.action', '1', '7', null);
INSERT INTO `ams_permission` VALUES ('23', '权限管理', 'Settlement/PowerRole', '1', '0', 'lock');
INSERT INTO `ams_permission` VALUES ('24', '用户授权', 'Settlement/UserSetting', '1', '0', 'tool');

-- ----------------------------
-- Table structure for ams_role
-- ----------------------------
DROP TABLE IF EXISTS `ams_role`;
CREATE TABLE `ams_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '角色名称',
  `organization_id` int(11) DEFAULT NULL COMMENT '组织id',
  `available` varchar(1) DEFAULT NULL COMMENT '是否可用,1：可用，0不可用',
  `admin` int(11) DEFAULT NULL COMMENT '组织管理员 1/0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of ams_role
-- ----------------------------
INSERT INTO `ams_role` VALUES ('1', '测试角色', '306', '1', '1');
INSERT INTO `ams_role` VALUES ('2', '红三代', '251', '1', null);
INSERT INTO `ams_role` VALUES ('5', '管理员', '239', '1', '1');
INSERT INTO `ams_role` VALUES ('6', 'ceshiceshi', '306', '1', null);
INSERT INTO `ams_role` VALUES ('8', '超级管理员', '4', '1', null);
INSERT INTO `ams_role` VALUES ('10', '总经理', '4', '1', null);
INSERT INTO `ams_role` VALUES ('12', '管理员', '348', '1', '1');
INSERT INTO `ams_role` VALUES ('13', '董事长', '4', '1', null);
INSERT INTO `ams_role` VALUES ('14', '主管', '4', '1', null);
INSERT INTO `ams_role` VALUES ('16', '秘书', '4', '1', null);
INSERT INTO `ams_role` VALUES ('17', '助理', '4', '1', null);
INSERT INTO `ams_role` VALUES ('18', '职员', '4', '1', null);
INSERT INTO `ams_role` VALUES ('19', 'CEO', '4', '1', null);
INSERT INTO `ams_role` VALUES ('20', '副总经理', '4', '1', null);
INSERT INTO `ams_role` VALUES ('21', '开发员', '4', '1', null);
INSERT INTO `ams_role` VALUES ('22', '运维员', '4', '1', null);
INSERT INTO `ams_role` VALUES ('23', '管理员', '365', '1', '1');
INSERT INTO `ams_role` VALUES ('24', 'A门卫', '348', '1', null);
INSERT INTO `ams_role` VALUES ('26', '管理员', '370', '1', null);
INSERT INTO `ams_role` VALUES ('27', '管理员', '372', '1', '1');
INSERT INTO `ams_role` VALUES ('30', '管理员', '378', '1', '1');
INSERT INTO `ams_role` VALUES ('31', '管理员', '379', '1', '1');
INSERT INTO `ams_role` VALUES ('32', '管理员', '381', '1', '1');
INSERT INTO `ams_role` VALUES ('33', '董事长', '365', '1', null);
INSERT INTO `ams_role` VALUES ('34', '总经理', '365', '1', null);
INSERT INTO `ams_role` VALUES ('35', '副总经理', '365', '1', null);
INSERT INTO `ams_role` VALUES ('36', '秘书', '365', '1', null);
INSERT INTO `ams_role` VALUES ('37', 'CEO', '365', '1', null);
INSERT INTO `ams_role` VALUES ('38', '助手', '365', '1', null);
INSERT INTO `ams_role` VALUES ('39', '开发员', '365', '1', null);
INSERT INTO `ams_role` VALUES ('40', '测试员', '365', '1', null);
INSERT INTO `ams_role` VALUES ('41', '运维员', '365', '1', null);
INSERT INTO `ams_role` VALUES ('42', '销售员', '365', '1', null);
INSERT INTO `ams_role` VALUES ('43', '管理员', '390', '1', '1');
INSERT INTO `ams_role` VALUES ('44', '管理员', '392', '1', '1');
INSERT INTO `ams_role` VALUES ('45', '管理员', '392', '1', '1');
INSERT INTO `ams_role` VALUES ('46', '管理员', '393', '1', '1');
INSERT INTO `ams_role` VALUES ('47', '管理员', '394', '1', '1');
INSERT INTO `ams_role` VALUES ('48', '管理员', '395', '1', '1');
INSERT INTO `ams_role` VALUES ('49', '管理员', '397', '1', '1');
INSERT INTO `ams_role` VALUES ('50', '管理员', '399', '1', '1');
INSERT INTO `ams_role` VALUES ('51', '管理员', '400', '1', '1');
INSERT INTO `ams_role` VALUES ('52', '管理员', '401', '1', '1');
INSERT INTO `ams_role` VALUES ('53', '记账员', '401', '1', null);
INSERT INTO `ams_role` VALUES ('54', '管理员', '402', '1', '1');
INSERT INTO `ams_role` VALUES ('55', '213113', '4', '1', null);

-- ----------------------------
-- Table structure for ams_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `ams_role_permission`;
CREATE TABLE `ams_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色id',
  `permission_id` bigint(20) DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1245 DEFAULT CHARSET=utf8 COMMENT='许可and角色关系';

-- ----------------------------
-- Records of ams_role_permission
-- ----------------------------
INSERT INTO `ams_role_permission` VALUES ('93', '1', '8');
INSERT INTO `ams_role_permission` VALUES ('94', '1', '9');
INSERT INTO `ams_role_permission` VALUES ('95', '1', '10');
INSERT INTO `ams_role_permission` VALUES ('96', '1', '11');
INSERT INTO `ams_role_permission` VALUES ('97', '1', '12');
INSERT INTO `ams_role_permission` VALUES ('98', '1', '13');
INSERT INTO `ams_role_permission` VALUES ('99', '1', '14');
INSERT INTO `ams_role_permission` VALUES ('100', '1', '15');
INSERT INTO `ams_role_permission` VALUES ('101', '1', '16');
INSERT INTO `ams_role_permission` VALUES ('102', '1', '17');
INSERT INTO `ams_role_permission` VALUES ('103', '1', '18');
INSERT INTO `ams_role_permission` VALUES ('104', '1', '19');
INSERT INTO `ams_role_permission` VALUES ('105', '1', '20');
INSERT INTO `ams_role_permission` VALUES ('106', '1', '21');
INSERT INTO `ams_role_permission` VALUES ('107', '1', '22');
INSERT INTO `ams_role_permission` VALUES ('108', '1', '1');
INSERT INTO `ams_role_permission` VALUES ('109', '1', '3');
INSERT INTO `ams_role_permission` VALUES ('110', '1', '4');
INSERT INTO `ams_role_permission` VALUES ('111', '1', '5');
INSERT INTO `ams_role_permission` VALUES ('112', '1', '6');
INSERT INTO `ams_role_permission` VALUES ('113', '1', '7');
INSERT INTO `ams_role_permission` VALUES ('114', '1', '2');
INSERT INTO `ams_role_permission` VALUES ('115', '1', '23');
INSERT INTO `ams_role_permission` VALUES ('161', '1', '24');
INSERT INTO `ams_role_permission` VALUES ('162', '4', '24');
INSERT INTO `ams_role_permission` VALUES ('163', '4', '23');
INSERT INTO `ams_role_permission` VALUES ('164', '4', '7');
INSERT INTO `ams_role_permission` VALUES ('165', '4', '22');
INSERT INTO `ams_role_permission` VALUES ('166', '4', '21');
INSERT INTO `ams_role_permission` VALUES ('167', '4', '20');
INSERT INTO `ams_role_permission` VALUES ('227', '7', '24');
INSERT INTO `ams_role_permission` VALUES ('228', '7', '23');
INSERT INTO `ams_role_permission` VALUES ('229', '7', '7');
INSERT INTO `ams_role_permission` VALUES ('230', '7', '6');
INSERT INTO `ams_role_permission` VALUES ('231', '7', '5');
INSERT INTO `ams_role_permission` VALUES ('232', '7', '22');
INSERT INTO `ams_role_permission` VALUES ('233', '7', '19');
INSERT INTO `ams_role_permission` VALUES ('234', '7', '16');
INSERT INTO `ams_role_permission` VALUES ('235', '7', '15');
INSERT INTO `ams_role_permission` VALUES ('236', '7', '18');
INSERT INTO `ams_role_permission` VALUES ('237', '7', '21');
INSERT INTO `ams_role_permission` VALUES ('238', '7', '20');
INSERT INTO `ams_role_permission` VALUES ('239', '7', '17');
INSERT INTO `ams_role_permission` VALUES ('306', '5', '8');
INSERT INTO `ams_role_permission` VALUES ('307', '5', '9');
INSERT INTO `ams_role_permission` VALUES ('308', '5', '10');
INSERT INTO `ams_role_permission` VALUES ('309', '5', '11');
INSERT INTO `ams_role_permission` VALUES ('310', '5', '12');
INSERT INTO `ams_role_permission` VALUES ('311', '5', '13');
INSERT INTO `ams_role_permission` VALUES ('312', '5', '14');
INSERT INTO `ams_role_permission` VALUES ('313', '5', '15');
INSERT INTO `ams_role_permission` VALUES ('314', '5', '16');
INSERT INTO `ams_role_permission` VALUES ('315', '5', '17');
INSERT INTO `ams_role_permission` VALUES ('316', '5', '18');
INSERT INTO `ams_role_permission` VALUES ('317', '5', '19');
INSERT INTO `ams_role_permission` VALUES ('318', '5', '20');
INSERT INTO `ams_role_permission` VALUES ('319', '5', '21');
INSERT INTO `ams_role_permission` VALUES ('320', '5', '22');
INSERT INTO `ams_role_permission` VALUES ('321', '5', '1');
INSERT INTO `ams_role_permission` VALUES ('322', '5', '3');
INSERT INTO `ams_role_permission` VALUES ('323', '5', '4');
INSERT INTO `ams_role_permission` VALUES ('324', '5', '5');
INSERT INTO `ams_role_permission` VALUES ('325', '5', '6');
INSERT INTO `ams_role_permission` VALUES ('326', '5', '7');
INSERT INTO `ams_role_permission` VALUES ('327', '5', '2');
INSERT INTO `ams_role_permission` VALUES ('328', '5', '23');
INSERT INTO `ams_role_permission` VALUES ('329', '5', '24');
INSERT INTO `ams_role_permission` VALUES ('376', '11', '24');
INSERT INTO `ams_role_permission` VALUES ('377', '11', '23');
INSERT INTO `ams_role_permission` VALUES ('378', '11', '22');
INSERT INTO `ams_role_permission` VALUES ('379', '11', '21');
INSERT INTO `ams_role_permission` VALUES ('380', '11', '20');
INSERT INTO `ams_role_permission` VALUES ('381', '11', '19');
INSERT INTO `ams_role_permission` VALUES ('382', '11', '18');
INSERT INTO `ams_role_permission` VALUES ('383', '11', '17');
INSERT INTO `ams_role_permission` VALUES ('384', '11', '16');
INSERT INTO `ams_role_permission` VALUES ('385', '11', '15');
INSERT INTO `ams_role_permission` VALUES ('386', '11', '14');
INSERT INTO `ams_role_permission` VALUES ('387', '11', '13');
INSERT INTO `ams_role_permission` VALUES ('388', '11', '12');
INSERT INTO `ams_role_permission` VALUES ('389', '11', '11');
INSERT INTO `ams_role_permission` VALUES ('390', '11', '10');
INSERT INTO `ams_role_permission` VALUES ('391', '11', '9');
INSERT INTO `ams_role_permission` VALUES ('392', '11', '8');
INSERT INTO `ams_role_permission` VALUES ('393', '11', '7');
INSERT INTO `ams_role_permission` VALUES ('394', '11', '6');
INSERT INTO `ams_role_permission` VALUES ('395', '11', '5');
INSERT INTO `ams_role_permission` VALUES ('396', '11', '4');
INSERT INTO `ams_role_permission` VALUES ('397', '11', '3');
INSERT INTO `ams_role_permission` VALUES ('398', '11', '2');
INSERT INTO `ams_role_permission` VALUES ('399', '11', '1');
INSERT INTO `ams_role_permission` VALUES ('400', '12', '24');
INSERT INTO `ams_role_permission` VALUES ('401', '12', '23');
INSERT INTO `ams_role_permission` VALUES ('402', '12', '22');
INSERT INTO `ams_role_permission` VALUES ('403', '12', '21');
INSERT INTO `ams_role_permission` VALUES ('404', '12', '20');
INSERT INTO `ams_role_permission` VALUES ('405', '12', '19');
INSERT INTO `ams_role_permission` VALUES ('406', '12', '18');
INSERT INTO `ams_role_permission` VALUES ('407', '12', '17');
INSERT INTO `ams_role_permission` VALUES ('408', '12', '16');
INSERT INTO `ams_role_permission` VALUES ('409', '12', '15');
INSERT INTO `ams_role_permission` VALUES ('410', '12', '14');
INSERT INTO `ams_role_permission` VALUES ('411', '12', '13');
INSERT INTO `ams_role_permission` VALUES ('412', '12', '12');
INSERT INTO `ams_role_permission` VALUES ('413', '12', '11');
INSERT INTO `ams_role_permission` VALUES ('414', '12', '10');
INSERT INTO `ams_role_permission` VALUES ('415', '12', '9');
INSERT INTO `ams_role_permission` VALUES ('416', '12', '8');
INSERT INTO `ams_role_permission` VALUES ('417', '12', '7');
INSERT INTO `ams_role_permission` VALUES ('418', '12', '6');
INSERT INTO `ams_role_permission` VALUES ('419', '12', '5');
INSERT INTO `ams_role_permission` VALUES ('420', '12', '4');
INSERT INTO `ams_role_permission` VALUES ('421', '12', '3');
INSERT INTO `ams_role_permission` VALUES ('422', '12', '2');
INSERT INTO `ams_role_permission` VALUES ('423', '12', '1');
INSERT INTO `ams_role_permission` VALUES ('498', '2', '8');
INSERT INTO `ams_role_permission` VALUES ('499', '2', '9');
INSERT INTO `ams_role_permission` VALUES ('500', '2', '10');
INSERT INTO `ams_role_permission` VALUES ('501', '2', '11');
INSERT INTO `ams_role_permission` VALUES ('502', '2', '13');
INSERT INTO `ams_role_permission` VALUES ('503', '2', '14');
INSERT INTO `ams_role_permission` VALUES ('504', '2', '15');
INSERT INTO `ams_role_permission` VALUES ('505', '2', '16');
INSERT INTO `ams_role_permission` VALUES ('506', '2', '17');
INSERT INTO `ams_role_permission` VALUES ('507', '2', '18');
INSERT INTO `ams_role_permission` VALUES ('508', '2', '19');
INSERT INTO `ams_role_permission` VALUES ('509', '2', '22');
INSERT INTO `ams_role_permission` VALUES ('510', '2', '1');
INSERT INTO `ams_role_permission` VALUES ('511', '2', '3');
INSERT INTO `ams_role_permission` VALUES ('512', '2', '4');
INSERT INTO `ams_role_permission` VALUES ('513', '2', '5');
INSERT INTO `ams_role_permission` VALUES ('514', '2', '6');
INSERT INTO `ams_role_permission` VALUES ('515', '2', '7');
INSERT INTO `ams_role_permission` VALUES ('516', '2', '2');
INSERT INTO `ams_role_permission` VALUES ('517', '2', '23');
INSERT INTO `ams_role_permission` VALUES ('518', '2', '24');
INSERT INTO `ams_role_permission` VALUES ('519', '2', '12');
INSERT INTO `ams_role_permission` VALUES ('520', '2', '21');
INSERT INTO `ams_role_permission` VALUES ('521', '2', '20');
INSERT INTO `ams_role_permission` VALUES ('522', '8', '8');
INSERT INTO `ams_role_permission` VALUES ('523', '8', '9');
INSERT INTO `ams_role_permission` VALUES ('524', '8', '10');
INSERT INTO `ams_role_permission` VALUES ('525', '8', '11');
INSERT INTO `ams_role_permission` VALUES ('526', '8', '13');
INSERT INTO `ams_role_permission` VALUES ('527', '8', '14');
INSERT INTO `ams_role_permission` VALUES ('528', '8', '15');
INSERT INTO `ams_role_permission` VALUES ('529', '8', '16');
INSERT INTO `ams_role_permission` VALUES ('530', '8', '17');
INSERT INTO `ams_role_permission` VALUES ('531', '8', '18');
INSERT INTO `ams_role_permission` VALUES ('532', '8', '19');
INSERT INTO `ams_role_permission` VALUES ('533', '8', '20');
INSERT INTO `ams_role_permission` VALUES ('534', '8', '21');
INSERT INTO `ams_role_permission` VALUES ('535', '8', '22');
INSERT INTO `ams_role_permission` VALUES ('536', '8', '1');
INSERT INTO `ams_role_permission` VALUES ('537', '8', '3');
INSERT INTO `ams_role_permission` VALUES ('538', '8', '4');
INSERT INTO `ams_role_permission` VALUES ('539', '8', '5');
INSERT INTO `ams_role_permission` VALUES ('540', '8', '6');
INSERT INTO `ams_role_permission` VALUES ('541', '8', '7');
INSERT INTO `ams_role_permission` VALUES ('542', '8', '2');
INSERT INTO `ams_role_permission` VALUES ('543', '8', '23');
INSERT INTO `ams_role_permission` VALUES ('544', '8', '24');
INSERT INTO `ams_role_permission` VALUES ('545', '8', '12');
INSERT INTO `ams_role_permission` VALUES ('550', '16', '24');
INSERT INTO `ams_role_permission` VALUES ('599', '26', '24');
INSERT INTO `ams_role_permission` VALUES ('600', '26', '23');
INSERT INTO `ams_role_permission` VALUES ('601', '26', '22');
INSERT INTO `ams_role_permission` VALUES ('602', '26', '21');
INSERT INTO `ams_role_permission` VALUES ('603', '26', '20');
INSERT INTO `ams_role_permission` VALUES ('604', '26', '19');
INSERT INTO `ams_role_permission` VALUES ('605', '26', '18');
INSERT INTO `ams_role_permission` VALUES ('606', '26', '17');
INSERT INTO `ams_role_permission` VALUES ('607', '26', '16');
INSERT INTO `ams_role_permission` VALUES ('608', '26', '15');
INSERT INTO `ams_role_permission` VALUES ('609', '26', '14');
INSERT INTO `ams_role_permission` VALUES ('610', '26', '13');
INSERT INTO `ams_role_permission` VALUES ('611', '26', '12');
INSERT INTO `ams_role_permission` VALUES ('612', '26', '11');
INSERT INTO `ams_role_permission` VALUES ('613', '26', '10');
INSERT INTO `ams_role_permission` VALUES ('614', '26', '9');
INSERT INTO `ams_role_permission` VALUES ('615', '26', '8');
INSERT INTO `ams_role_permission` VALUES ('616', '26', '7');
INSERT INTO `ams_role_permission` VALUES ('617', '26', '6');
INSERT INTO `ams_role_permission` VALUES ('618', '26', '5');
INSERT INTO `ams_role_permission` VALUES ('619', '26', '4');
INSERT INTO `ams_role_permission` VALUES ('620', '26', '3');
INSERT INTO `ams_role_permission` VALUES ('621', '26', '2');
INSERT INTO `ams_role_permission` VALUES ('622', '26', '1');
INSERT INTO `ams_role_permission` VALUES ('623', '27', '24');
INSERT INTO `ams_role_permission` VALUES ('624', '27', '23');
INSERT INTO `ams_role_permission` VALUES ('625', '27', '22');
INSERT INTO `ams_role_permission` VALUES ('626', '27', '21');
INSERT INTO `ams_role_permission` VALUES ('627', '27', '20');
INSERT INTO `ams_role_permission` VALUES ('628', '27', '19');
INSERT INTO `ams_role_permission` VALUES ('629', '27', '18');
INSERT INTO `ams_role_permission` VALUES ('630', '27', '17');
INSERT INTO `ams_role_permission` VALUES ('631', '27', '16');
INSERT INTO `ams_role_permission` VALUES ('632', '27', '15');
INSERT INTO `ams_role_permission` VALUES ('633', '27', '14');
INSERT INTO `ams_role_permission` VALUES ('634', '27', '13');
INSERT INTO `ams_role_permission` VALUES ('635', '27', '12');
INSERT INTO `ams_role_permission` VALUES ('636', '27', '11');
INSERT INTO `ams_role_permission` VALUES ('637', '27', '10');
INSERT INTO `ams_role_permission` VALUES ('638', '27', '9');
INSERT INTO `ams_role_permission` VALUES ('639', '27', '8');
INSERT INTO `ams_role_permission` VALUES ('640', '27', '7');
INSERT INTO `ams_role_permission` VALUES ('641', '27', '6');
INSERT INTO `ams_role_permission` VALUES ('642', '27', '5');
INSERT INTO `ams_role_permission` VALUES ('643', '27', '4');
INSERT INTO `ams_role_permission` VALUES ('644', '27', '3');
INSERT INTO `ams_role_permission` VALUES ('645', '27', '2');
INSERT INTO `ams_role_permission` VALUES ('646', '27', '1');
INSERT INTO `ams_role_permission` VALUES ('671', '30', '24');
INSERT INTO `ams_role_permission` VALUES ('672', '30', '23');
INSERT INTO `ams_role_permission` VALUES ('673', '30', '22');
INSERT INTO `ams_role_permission` VALUES ('674', '30', '21');
INSERT INTO `ams_role_permission` VALUES ('675', '30', '20');
INSERT INTO `ams_role_permission` VALUES ('676', '30', '19');
INSERT INTO `ams_role_permission` VALUES ('677', '30', '18');
INSERT INTO `ams_role_permission` VALUES ('678', '30', '17');
INSERT INTO `ams_role_permission` VALUES ('679', '30', '16');
INSERT INTO `ams_role_permission` VALUES ('680', '30', '15');
INSERT INTO `ams_role_permission` VALUES ('681', '30', '14');
INSERT INTO `ams_role_permission` VALUES ('682', '30', '13');
INSERT INTO `ams_role_permission` VALUES ('683', '30', '12');
INSERT INTO `ams_role_permission` VALUES ('684', '30', '11');
INSERT INTO `ams_role_permission` VALUES ('685', '30', '10');
INSERT INTO `ams_role_permission` VALUES ('686', '30', '9');
INSERT INTO `ams_role_permission` VALUES ('687', '30', '8');
INSERT INTO `ams_role_permission` VALUES ('688', '30', '7');
INSERT INTO `ams_role_permission` VALUES ('689', '30', '6');
INSERT INTO `ams_role_permission` VALUES ('690', '30', '5');
INSERT INTO `ams_role_permission` VALUES ('691', '30', '4');
INSERT INTO `ams_role_permission` VALUES ('692', '30', '3');
INSERT INTO `ams_role_permission` VALUES ('693', '30', '2');
INSERT INTO `ams_role_permission` VALUES ('694', '30', '1');
INSERT INTO `ams_role_permission` VALUES ('695', '31', '24');
INSERT INTO `ams_role_permission` VALUES ('696', '31', '23');
INSERT INTO `ams_role_permission` VALUES ('697', '31', '22');
INSERT INTO `ams_role_permission` VALUES ('698', '31', '21');
INSERT INTO `ams_role_permission` VALUES ('699', '31', '20');
INSERT INTO `ams_role_permission` VALUES ('700', '31', '19');
INSERT INTO `ams_role_permission` VALUES ('701', '31', '18');
INSERT INTO `ams_role_permission` VALUES ('702', '31', '17');
INSERT INTO `ams_role_permission` VALUES ('703', '31', '16');
INSERT INTO `ams_role_permission` VALUES ('704', '31', '15');
INSERT INTO `ams_role_permission` VALUES ('705', '31', '14');
INSERT INTO `ams_role_permission` VALUES ('706', '31', '13');
INSERT INTO `ams_role_permission` VALUES ('707', '31', '12');
INSERT INTO `ams_role_permission` VALUES ('708', '31', '11');
INSERT INTO `ams_role_permission` VALUES ('709', '31', '10');
INSERT INTO `ams_role_permission` VALUES ('710', '31', '9');
INSERT INTO `ams_role_permission` VALUES ('711', '31', '8');
INSERT INTO `ams_role_permission` VALUES ('712', '31', '7');
INSERT INTO `ams_role_permission` VALUES ('713', '31', '6');
INSERT INTO `ams_role_permission` VALUES ('714', '31', '5');
INSERT INTO `ams_role_permission` VALUES ('715', '31', '4');
INSERT INTO `ams_role_permission` VALUES ('716', '31', '3');
INSERT INTO `ams_role_permission` VALUES ('717', '31', '2');
INSERT INTO `ams_role_permission` VALUES ('718', '31', '1');
INSERT INTO `ams_role_permission` VALUES ('719', '32', '24');
INSERT INTO `ams_role_permission` VALUES ('720', '32', '23');
INSERT INTO `ams_role_permission` VALUES ('721', '32', '22');
INSERT INTO `ams_role_permission` VALUES ('722', '32', '21');
INSERT INTO `ams_role_permission` VALUES ('723', '32', '20');
INSERT INTO `ams_role_permission` VALUES ('724', '32', '19');
INSERT INTO `ams_role_permission` VALUES ('725', '32', '18');
INSERT INTO `ams_role_permission` VALUES ('726', '32', '17');
INSERT INTO `ams_role_permission` VALUES ('727', '32', '16');
INSERT INTO `ams_role_permission` VALUES ('728', '32', '15');
INSERT INTO `ams_role_permission` VALUES ('729', '32', '14');
INSERT INTO `ams_role_permission` VALUES ('730', '32', '13');
INSERT INTO `ams_role_permission` VALUES ('731', '32', '12');
INSERT INTO `ams_role_permission` VALUES ('732', '32', '11');
INSERT INTO `ams_role_permission` VALUES ('733', '32', '10');
INSERT INTO `ams_role_permission` VALUES ('734', '32', '9');
INSERT INTO `ams_role_permission` VALUES ('735', '32', '8');
INSERT INTO `ams_role_permission` VALUES ('736', '32', '7');
INSERT INTO `ams_role_permission` VALUES ('737', '32', '6');
INSERT INTO `ams_role_permission` VALUES ('738', '32', '5');
INSERT INTO `ams_role_permission` VALUES ('739', '32', '4');
INSERT INTO `ams_role_permission` VALUES ('740', '32', '3');
INSERT INTO `ams_role_permission` VALUES ('741', '32', '2');
INSERT INTO `ams_role_permission` VALUES ('742', '32', '1');
INSERT INTO `ams_role_permission` VALUES ('743', '10', '9');
INSERT INTO `ams_role_permission` VALUES ('744', '10', '10');
INSERT INTO `ams_role_permission` VALUES ('745', '10', '11');
INSERT INTO `ams_role_permission` VALUES ('746', '10', '13');
INSERT INTO `ams_role_permission` VALUES ('747', '10', '14');
INSERT INTO `ams_role_permission` VALUES ('748', '10', '15');
INSERT INTO `ams_role_permission` VALUES ('749', '10', '16');
INSERT INTO `ams_role_permission` VALUES ('750', '10', '17');
INSERT INTO `ams_role_permission` VALUES ('751', '10', '18');
INSERT INTO `ams_role_permission` VALUES ('752', '10', '19');
INSERT INTO `ams_role_permission` VALUES ('753', '10', '20');
INSERT INTO `ams_role_permission` VALUES ('754', '10', '21');
INSERT INTO `ams_role_permission` VALUES ('755', '10', '22');
INSERT INTO `ams_role_permission` VALUES ('756', '10', '1');
INSERT INTO `ams_role_permission` VALUES ('757', '10', '3');
INSERT INTO `ams_role_permission` VALUES ('758', '10', '4');
INSERT INTO `ams_role_permission` VALUES ('759', '10', '5');
INSERT INTO `ams_role_permission` VALUES ('760', '10', '6');
INSERT INTO `ams_role_permission` VALUES ('761', '10', '7');
INSERT INTO `ams_role_permission` VALUES ('762', '10', '2');
INSERT INTO `ams_role_permission` VALUES ('763', '10', '24');
INSERT INTO `ams_role_permission` VALUES ('764', '10', '12');
INSERT INTO `ams_role_permission` VALUES ('765', '10', '23');
INSERT INTO `ams_role_permission` VALUES ('787', '34', '1');
INSERT INTO `ams_role_permission` VALUES ('788', '34', '3');
INSERT INTO `ams_role_permission` VALUES ('789', '34', '4');
INSERT INTO `ams_role_permission` VALUES ('790', '34', '5');
INSERT INTO `ams_role_permission` VALUES ('791', '34', '6');
INSERT INTO `ams_role_permission` VALUES ('792', '34', '7');
INSERT INTO `ams_role_permission` VALUES ('793', '34', '2');
INSERT INTO `ams_role_permission` VALUES ('794', '34', '23');
INSERT INTO `ams_role_permission` VALUES ('795', '34', '24');
INSERT INTO `ams_role_permission` VALUES ('844', '23', '8');
INSERT INTO `ams_role_permission` VALUES ('845', '23', '9');
INSERT INTO `ams_role_permission` VALUES ('846', '23', '10');
INSERT INTO `ams_role_permission` VALUES ('847', '23', '11');
INSERT INTO `ams_role_permission` VALUES ('848', '23', '13');
INSERT INTO `ams_role_permission` VALUES ('849', '23', '14');
INSERT INTO `ams_role_permission` VALUES ('850', '23', '15');
INSERT INTO `ams_role_permission` VALUES ('851', '23', '16');
INSERT INTO `ams_role_permission` VALUES ('852', '23', '17');
INSERT INTO `ams_role_permission` VALUES ('853', '23', '18');
INSERT INTO `ams_role_permission` VALUES ('854', '23', '19');
INSERT INTO `ams_role_permission` VALUES ('855', '23', '20');
INSERT INTO `ams_role_permission` VALUES ('856', '23', '21');
INSERT INTO `ams_role_permission` VALUES ('857', '23', '22');
INSERT INTO `ams_role_permission` VALUES ('858', '23', '1');
INSERT INTO `ams_role_permission` VALUES ('859', '23', '3');
INSERT INTO `ams_role_permission` VALUES ('860', '23', '4');
INSERT INTO `ams_role_permission` VALUES ('861', '23', '5');
INSERT INTO `ams_role_permission` VALUES ('862', '23', '6');
INSERT INTO `ams_role_permission` VALUES ('863', '23', '7');
INSERT INTO `ams_role_permission` VALUES ('864', '23', '2');
INSERT INTO `ams_role_permission` VALUES ('865', '23', '23');
INSERT INTO `ams_role_permission` VALUES ('866', '23', '24');
INSERT INTO `ams_role_permission` VALUES ('867', '23', '12');
INSERT INTO `ams_role_permission` VALUES ('868', '43', '24');
INSERT INTO `ams_role_permission` VALUES ('869', '43', '23');
INSERT INTO `ams_role_permission` VALUES ('870', '43', '22');
INSERT INTO `ams_role_permission` VALUES ('871', '43', '21');
INSERT INTO `ams_role_permission` VALUES ('872', '43', '20');
INSERT INTO `ams_role_permission` VALUES ('873', '43', '19');
INSERT INTO `ams_role_permission` VALUES ('874', '43', '18');
INSERT INTO `ams_role_permission` VALUES ('875', '43', '17');
INSERT INTO `ams_role_permission` VALUES ('876', '43', '16');
INSERT INTO `ams_role_permission` VALUES ('877', '43', '15');
INSERT INTO `ams_role_permission` VALUES ('878', '43', '14');
INSERT INTO `ams_role_permission` VALUES ('879', '43', '13');
INSERT INTO `ams_role_permission` VALUES ('880', '43', '12');
INSERT INTO `ams_role_permission` VALUES ('881', '43', '11');
INSERT INTO `ams_role_permission` VALUES ('882', '43', '10');
INSERT INTO `ams_role_permission` VALUES ('883', '43', '9');
INSERT INTO `ams_role_permission` VALUES ('884', '43', '8');
INSERT INTO `ams_role_permission` VALUES ('885', '43', '7');
INSERT INTO `ams_role_permission` VALUES ('886', '43', '6');
INSERT INTO `ams_role_permission` VALUES ('887', '43', '5');
INSERT INTO `ams_role_permission` VALUES ('888', '43', '4');
INSERT INTO `ams_role_permission` VALUES ('889', '43', '3');
INSERT INTO `ams_role_permission` VALUES ('890', '43', '2');
INSERT INTO `ams_role_permission` VALUES ('891', '43', '1');
INSERT INTO `ams_role_permission` VALUES ('899', '6', '19');
INSERT INTO `ams_role_permission` VALUES ('900', '6', '22');
INSERT INTO `ams_role_permission` VALUES ('901', '6', '6');
INSERT INTO `ams_role_permission` VALUES ('902', '6', '7');
INSERT INTO `ams_role_permission` VALUES ('903', '6', '23');
INSERT INTO `ams_role_permission` VALUES ('904', '6', '24');
INSERT INTO `ams_role_permission` VALUES ('905', '6', '18');
INSERT INTO `ams_role_permission` VALUES ('906', '6', '5');
INSERT INTO `ams_role_permission` VALUES ('907', '6', '4');
INSERT INTO `ams_role_permission` VALUES ('908', '6', '3');
INSERT INTO `ams_role_permission` VALUES ('909', '6', '2');
INSERT INTO `ams_role_permission` VALUES ('910', '6', '1');
INSERT INTO `ams_role_permission` VALUES ('911', '6', '16');
INSERT INTO `ams_role_permission` VALUES ('912', '6', '15');
INSERT INTO `ams_role_permission` VALUES ('913', '6', '14');
INSERT INTO `ams_role_permission` VALUES ('914', '6', '13');
INSERT INTO `ams_role_permission` VALUES ('915', '6', '12');
INSERT INTO `ams_role_permission` VALUES ('916', '6', '11');
INSERT INTO `ams_role_permission` VALUES ('917', '6', '10');
INSERT INTO `ams_role_permission` VALUES ('918', '6', '9');
INSERT INTO `ams_role_permission` VALUES ('919', '6', '8');
INSERT INTO `ams_role_permission` VALUES ('920', '6', '17');
INSERT INTO `ams_role_permission` VALUES ('921', '6', '20');
INSERT INTO `ams_role_permission` VALUES ('922', '6', '21');
INSERT INTO `ams_role_permission` VALUES ('923', '44', '24');
INSERT INTO `ams_role_permission` VALUES ('924', '44', '23');
INSERT INTO `ams_role_permission` VALUES ('925', '44', '22');
INSERT INTO `ams_role_permission` VALUES ('926', '44', '21');
INSERT INTO `ams_role_permission` VALUES ('927', '44', '20');
INSERT INTO `ams_role_permission` VALUES ('928', '44', '19');
INSERT INTO `ams_role_permission` VALUES ('929', '44', '18');
INSERT INTO `ams_role_permission` VALUES ('930', '44', '17');
INSERT INTO `ams_role_permission` VALUES ('931', '44', '16');
INSERT INTO `ams_role_permission` VALUES ('932', '44', '15');
INSERT INTO `ams_role_permission` VALUES ('933', '44', '14');
INSERT INTO `ams_role_permission` VALUES ('934', '44', '13');
INSERT INTO `ams_role_permission` VALUES ('935', '44', '12');
INSERT INTO `ams_role_permission` VALUES ('936', '44', '11');
INSERT INTO `ams_role_permission` VALUES ('937', '44', '10');
INSERT INTO `ams_role_permission` VALUES ('938', '44', '9');
INSERT INTO `ams_role_permission` VALUES ('939', '44', '8');
INSERT INTO `ams_role_permission` VALUES ('940', '44', '7');
INSERT INTO `ams_role_permission` VALUES ('941', '44', '6');
INSERT INTO `ams_role_permission` VALUES ('942', '44', '5');
INSERT INTO `ams_role_permission` VALUES ('943', '44', '4');
INSERT INTO `ams_role_permission` VALUES ('944', '44', '3');
INSERT INTO `ams_role_permission` VALUES ('945', '44', '2');
INSERT INTO `ams_role_permission` VALUES ('946', '44', '1');
INSERT INTO `ams_role_permission` VALUES ('947', '45', '24');
INSERT INTO `ams_role_permission` VALUES ('948', '45', '23');
INSERT INTO `ams_role_permission` VALUES ('949', '45', '22');
INSERT INTO `ams_role_permission` VALUES ('950', '45', '21');
INSERT INTO `ams_role_permission` VALUES ('951', '45', '20');
INSERT INTO `ams_role_permission` VALUES ('952', '45', '19');
INSERT INTO `ams_role_permission` VALUES ('953', '45', '18');
INSERT INTO `ams_role_permission` VALUES ('954', '45', '17');
INSERT INTO `ams_role_permission` VALUES ('955', '45', '16');
INSERT INTO `ams_role_permission` VALUES ('956', '45', '15');
INSERT INTO `ams_role_permission` VALUES ('957', '45', '14');
INSERT INTO `ams_role_permission` VALUES ('958', '45', '13');
INSERT INTO `ams_role_permission` VALUES ('959', '45', '12');
INSERT INTO `ams_role_permission` VALUES ('960', '45', '11');
INSERT INTO `ams_role_permission` VALUES ('961', '45', '10');
INSERT INTO `ams_role_permission` VALUES ('962', '45', '9');
INSERT INTO `ams_role_permission` VALUES ('963', '45', '8');
INSERT INTO `ams_role_permission` VALUES ('964', '45', '7');
INSERT INTO `ams_role_permission` VALUES ('965', '45', '6');
INSERT INTO `ams_role_permission` VALUES ('966', '45', '5');
INSERT INTO `ams_role_permission` VALUES ('967', '45', '4');
INSERT INTO `ams_role_permission` VALUES ('968', '45', '3');
INSERT INTO `ams_role_permission` VALUES ('969', '45', '2');
INSERT INTO `ams_role_permission` VALUES ('970', '45', '1');
INSERT INTO `ams_role_permission` VALUES ('971', '46', '24');
INSERT INTO `ams_role_permission` VALUES ('972', '46', '23');
INSERT INTO `ams_role_permission` VALUES ('973', '46', '22');
INSERT INTO `ams_role_permission` VALUES ('974', '46', '21');
INSERT INTO `ams_role_permission` VALUES ('975', '46', '20');
INSERT INTO `ams_role_permission` VALUES ('976', '46', '19');
INSERT INTO `ams_role_permission` VALUES ('977', '46', '18');
INSERT INTO `ams_role_permission` VALUES ('978', '46', '17');
INSERT INTO `ams_role_permission` VALUES ('979', '46', '16');
INSERT INTO `ams_role_permission` VALUES ('980', '46', '15');
INSERT INTO `ams_role_permission` VALUES ('981', '46', '14');
INSERT INTO `ams_role_permission` VALUES ('982', '46', '13');
INSERT INTO `ams_role_permission` VALUES ('983', '46', '12');
INSERT INTO `ams_role_permission` VALUES ('984', '46', '11');
INSERT INTO `ams_role_permission` VALUES ('985', '46', '10');
INSERT INTO `ams_role_permission` VALUES ('986', '46', '9');
INSERT INTO `ams_role_permission` VALUES ('987', '46', '8');
INSERT INTO `ams_role_permission` VALUES ('988', '46', '7');
INSERT INTO `ams_role_permission` VALUES ('989', '46', '6');
INSERT INTO `ams_role_permission` VALUES ('990', '46', '5');
INSERT INTO `ams_role_permission` VALUES ('991', '46', '4');
INSERT INTO `ams_role_permission` VALUES ('992', '46', '3');
INSERT INTO `ams_role_permission` VALUES ('993', '46', '2');
INSERT INTO `ams_role_permission` VALUES ('994', '46', '1');
INSERT INTO `ams_role_permission` VALUES ('995', '47', '24');
INSERT INTO `ams_role_permission` VALUES ('996', '47', '23');
INSERT INTO `ams_role_permission` VALUES ('997', '47', '22');
INSERT INTO `ams_role_permission` VALUES ('998', '47', '21');
INSERT INTO `ams_role_permission` VALUES ('999', '47', '20');
INSERT INTO `ams_role_permission` VALUES ('1000', '47', '19');
INSERT INTO `ams_role_permission` VALUES ('1001', '47', '18');
INSERT INTO `ams_role_permission` VALUES ('1002', '47', '17');
INSERT INTO `ams_role_permission` VALUES ('1003', '47', '16');
INSERT INTO `ams_role_permission` VALUES ('1004', '47', '15');
INSERT INTO `ams_role_permission` VALUES ('1005', '47', '14');
INSERT INTO `ams_role_permission` VALUES ('1006', '47', '13');
INSERT INTO `ams_role_permission` VALUES ('1007', '47', '12');
INSERT INTO `ams_role_permission` VALUES ('1008', '47', '11');
INSERT INTO `ams_role_permission` VALUES ('1009', '47', '10');
INSERT INTO `ams_role_permission` VALUES ('1010', '47', '9');
INSERT INTO `ams_role_permission` VALUES ('1011', '47', '8');
INSERT INTO `ams_role_permission` VALUES ('1012', '47', '7');
INSERT INTO `ams_role_permission` VALUES ('1013', '47', '6');
INSERT INTO `ams_role_permission` VALUES ('1014', '47', '5');
INSERT INTO `ams_role_permission` VALUES ('1015', '47', '4');
INSERT INTO `ams_role_permission` VALUES ('1016', '47', '3');
INSERT INTO `ams_role_permission` VALUES ('1017', '47', '2');
INSERT INTO `ams_role_permission` VALUES ('1018', '47', '1');
INSERT INTO `ams_role_permission` VALUES ('1019', '48', '24');
INSERT INTO `ams_role_permission` VALUES ('1020', '48', '23');
INSERT INTO `ams_role_permission` VALUES ('1021', '48', '22');
INSERT INTO `ams_role_permission` VALUES ('1022', '48', '21');
INSERT INTO `ams_role_permission` VALUES ('1023', '48', '20');
INSERT INTO `ams_role_permission` VALUES ('1024', '48', '19');
INSERT INTO `ams_role_permission` VALUES ('1025', '48', '18');
INSERT INTO `ams_role_permission` VALUES ('1026', '48', '17');
INSERT INTO `ams_role_permission` VALUES ('1027', '48', '16');
INSERT INTO `ams_role_permission` VALUES ('1028', '48', '15');
INSERT INTO `ams_role_permission` VALUES ('1029', '48', '14');
INSERT INTO `ams_role_permission` VALUES ('1030', '48', '13');
INSERT INTO `ams_role_permission` VALUES ('1031', '48', '12');
INSERT INTO `ams_role_permission` VALUES ('1032', '48', '11');
INSERT INTO `ams_role_permission` VALUES ('1033', '48', '10');
INSERT INTO `ams_role_permission` VALUES ('1034', '48', '9');
INSERT INTO `ams_role_permission` VALUES ('1035', '48', '8');
INSERT INTO `ams_role_permission` VALUES ('1036', '48', '7');
INSERT INTO `ams_role_permission` VALUES ('1037', '48', '6');
INSERT INTO `ams_role_permission` VALUES ('1038', '48', '5');
INSERT INTO `ams_role_permission` VALUES ('1039', '48', '4');
INSERT INTO `ams_role_permission` VALUES ('1040', '48', '3');
INSERT INTO `ams_role_permission` VALUES ('1041', '48', '2');
INSERT INTO `ams_role_permission` VALUES ('1042', '48', '1');
INSERT INTO `ams_role_permission` VALUES ('1067', '50', '24');
INSERT INTO `ams_role_permission` VALUES ('1068', '50', '23');
INSERT INTO `ams_role_permission` VALUES ('1069', '50', '22');
INSERT INTO `ams_role_permission` VALUES ('1070', '50', '21');
INSERT INTO `ams_role_permission` VALUES ('1071', '50', '20');
INSERT INTO `ams_role_permission` VALUES ('1072', '50', '19');
INSERT INTO `ams_role_permission` VALUES ('1073', '50', '18');
INSERT INTO `ams_role_permission` VALUES ('1074', '50', '17');
INSERT INTO `ams_role_permission` VALUES ('1075', '50', '16');
INSERT INTO `ams_role_permission` VALUES ('1076', '50', '15');
INSERT INTO `ams_role_permission` VALUES ('1077', '50', '14');
INSERT INTO `ams_role_permission` VALUES ('1078', '50', '13');
INSERT INTO `ams_role_permission` VALUES ('1079', '50', '12');
INSERT INTO `ams_role_permission` VALUES ('1080', '50', '11');
INSERT INTO `ams_role_permission` VALUES ('1081', '50', '10');
INSERT INTO `ams_role_permission` VALUES ('1082', '50', '9');
INSERT INTO `ams_role_permission` VALUES ('1083', '50', '8');
INSERT INTO `ams_role_permission` VALUES ('1084', '50', '7');
INSERT INTO `ams_role_permission` VALUES ('1085', '50', '6');
INSERT INTO `ams_role_permission` VALUES ('1086', '50', '5');
INSERT INTO `ams_role_permission` VALUES ('1087', '50', '4');
INSERT INTO `ams_role_permission` VALUES ('1088', '50', '3');
INSERT INTO `ams_role_permission` VALUES ('1089', '50', '2');
INSERT INTO `ams_role_permission` VALUES ('1090', '50', '1');
INSERT INTO `ams_role_permission` VALUES ('1091', '51', '24');
INSERT INTO `ams_role_permission` VALUES ('1092', '51', '23');
INSERT INTO `ams_role_permission` VALUES ('1093', '51', '22');
INSERT INTO `ams_role_permission` VALUES ('1094', '51', '21');
INSERT INTO `ams_role_permission` VALUES ('1095', '51', '20');
INSERT INTO `ams_role_permission` VALUES ('1096', '51', '19');
INSERT INTO `ams_role_permission` VALUES ('1097', '51', '18');
INSERT INTO `ams_role_permission` VALUES ('1098', '51', '17');
INSERT INTO `ams_role_permission` VALUES ('1099', '51', '16');
INSERT INTO `ams_role_permission` VALUES ('1100', '51', '15');
INSERT INTO `ams_role_permission` VALUES ('1101', '51', '14');
INSERT INTO `ams_role_permission` VALUES ('1102', '51', '13');
INSERT INTO `ams_role_permission` VALUES ('1103', '51', '12');
INSERT INTO `ams_role_permission` VALUES ('1104', '51', '11');
INSERT INTO `ams_role_permission` VALUES ('1105', '51', '10');
INSERT INTO `ams_role_permission` VALUES ('1106', '51', '9');
INSERT INTO `ams_role_permission` VALUES ('1107', '51', '8');
INSERT INTO `ams_role_permission` VALUES ('1108', '51', '7');
INSERT INTO `ams_role_permission` VALUES ('1109', '51', '6');
INSERT INTO `ams_role_permission` VALUES ('1110', '51', '5');
INSERT INTO `ams_role_permission` VALUES ('1111', '51', '4');
INSERT INTO `ams_role_permission` VALUES ('1112', '51', '3');
INSERT INTO `ams_role_permission` VALUES ('1113', '51', '2');
INSERT INTO `ams_role_permission` VALUES ('1114', '51', '1');
INSERT INTO `ams_role_permission` VALUES ('1115', '52', '24');
INSERT INTO `ams_role_permission` VALUES ('1116', '52', '23');
INSERT INTO `ams_role_permission` VALUES ('1117', '52', '22');
INSERT INTO `ams_role_permission` VALUES ('1118', '52', '21');
INSERT INTO `ams_role_permission` VALUES ('1119', '52', '20');
INSERT INTO `ams_role_permission` VALUES ('1120', '52', '19');
INSERT INTO `ams_role_permission` VALUES ('1121', '52', '18');
INSERT INTO `ams_role_permission` VALUES ('1122', '52', '17');
INSERT INTO `ams_role_permission` VALUES ('1123', '52', '16');
INSERT INTO `ams_role_permission` VALUES ('1124', '52', '15');
INSERT INTO `ams_role_permission` VALUES ('1125', '52', '14');
INSERT INTO `ams_role_permission` VALUES ('1126', '52', '13');
INSERT INTO `ams_role_permission` VALUES ('1127', '52', '12');
INSERT INTO `ams_role_permission` VALUES ('1128', '52', '11');
INSERT INTO `ams_role_permission` VALUES ('1129', '52', '10');
INSERT INTO `ams_role_permission` VALUES ('1130', '52', '9');
INSERT INTO `ams_role_permission` VALUES ('1131', '52', '8');
INSERT INTO `ams_role_permission` VALUES ('1132', '52', '7');
INSERT INTO `ams_role_permission` VALUES ('1133', '52', '6');
INSERT INTO `ams_role_permission` VALUES ('1134', '52', '5');
INSERT INTO `ams_role_permission` VALUES ('1135', '52', '4');
INSERT INTO `ams_role_permission` VALUES ('1136', '52', '3');
INSERT INTO `ams_role_permission` VALUES ('1137', '52', '2');
INSERT INTO `ams_role_permission` VALUES ('1138', '52', '1');
INSERT INTO `ams_role_permission` VALUES ('1139', '53', '6');
INSERT INTO `ams_role_permission` VALUES ('1140', '53', '19');
INSERT INTO `ams_role_permission` VALUES ('1141', '53', '18');
INSERT INTO `ams_role_permission` VALUES ('1142', '53', '17');
INSERT INTO `ams_role_permission` VALUES ('1143', '53', '1');
INSERT INTO `ams_role_permission` VALUES ('1144', '53', '11');
INSERT INTO `ams_role_permission` VALUES ('1145', '53', '9');
INSERT INTO `ams_role_permission` VALUES ('1146', '53', '8');
INSERT INTO `ams_role_permission` VALUES ('1147', '54', '24');
INSERT INTO `ams_role_permission` VALUES ('1148', '54', '23');
INSERT INTO `ams_role_permission` VALUES ('1149', '54', '22');
INSERT INTO `ams_role_permission` VALUES ('1150', '54', '21');
INSERT INTO `ams_role_permission` VALUES ('1151', '54', '20');
INSERT INTO `ams_role_permission` VALUES ('1152', '54', '19');
INSERT INTO `ams_role_permission` VALUES ('1153', '54', '18');
INSERT INTO `ams_role_permission` VALUES ('1154', '54', '17');
INSERT INTO `ams_role_permission` VALUES ('1155', '54', '16');
INSERT INTO `ams_role_permission` VALUES ('1156', '54', '15');
INSERT INTO `ams_role_permission` VALUES ('1157', '54', '14');
INSERT INTO `ams_role_permission` VALUES ('1158', '54', '13');
INSERT INTO `ams_role_permission` VALUES ('1159', '54', '12');
INSERT INTO `ams_role_permission` VALUES ('1160', '54', '11');
INSERT INTO `ams_role_permission` VALUES ('1161', '54', '10');
INSERT INTO `ams_role_permission` VALUES ('1162', '54', '9');
INSERT INTO `ams_role_permission` VALUES ('1163', '54', '8');
INSERT INTO `ams_role_permission` VALUES ('1164', '54', '7');
INSERT INTO `ams_role_permission` VALUES ('1165', '54', '6');
INSERT INTO `ams_role_permission` VALUES ('1166', '54', '5');
INSERT INTO `ams_role_permission` VALUES ('1167', '54', '4');
INSERT INTO `ams_role_permission` VALUES ('1168', '54', '3');
INSERT INTO `ams_role_permission` VALUES ('1169', '54', '2');
INSERT INTO `ams_role_permission` VALUES ('1170', '54', '1');
INSERT INTO `ams_role_permission` VALUES ('1171', '49', '9');
INSERT INTO `ams_role_permission` VALUES ('1172', '49', '10');
INSERT INTO `ams_role_permission` VALUES ('1173', '49', '11');
INSERT INTO `ams_role_permission` VALUES ('1174', '49', '13');
INSERT INTO `ams_role_permission` VALUES ('1175', '49', '14');
INSERT INTO `ams_role_permission` VALUES ('1176', '49', '15');
INSERT INTO `ams_role_permission` VALUES ('1177', '49', '16');
INSERT INTO `ams_role_permission` VALUES ('1178', '49', '17');
INSERT INTO `ams_role_permission` VALUES ('1179', '49', '18');
INSERT INTO `ams_role_permission` VALUES ('1180', '49', '19');
INSERT INTO `ams_role_permission` VALUES ('1181', '49', '20');
INSERT INTO `ams_role_permission` VALUES ('1182', '49', '21');
INSERT INTO `ams_role_permission` VALUES ('1183', '49', '22');
INSERT INTO `ams_role_permission` VALUES ('1184', '49', '1');
INSERT INTO `ams_role_permission` VALUES ('1185', '49', '3');
INSERT INTO `ams_role_permission` VALUES ('1186', '49', '4');
INSERT INTO `ams_role_permission` VALUES ('1187', '49', '5');
INSERT INTO `ams_role_permission` VALUES ('1188', '49', '6');
INSERT INTO `ams_role_permission` VALUES ('1189', '49', '7');
INSERT INTO `ams_role_permission` VALUES ('1190', '49', '2');
INSERT INTO `ams_role_permission` VALUES ('1191', '49', '23');
INSERT INTO `ams_role_permission` VALUES ('1192', '49', '24');
INSERT INTO `ams_role_permission` VALUES ('1193', '49', '12');
INSERT INTO `ams_role_permission` VALUES ('1194', '49', '8');
INSERT INTO `ams_role_permission` VALUES ('1195', '17', '6');
INSERT INTO `ams_role_permission` VALUES ('1211', '21', '11');
INSERT INTO `ams_role_permission` VALUES ('1212', '21', '1');
INSERT INTO `ams_role_permission` VALUES ('1213', '21', '3');
INSERT INTO `ams_role_permission` VALUES ('1214', '21', '4');
INSERT INTO `ams_role_permission` VALUES ('1215', '21', '5');
INSERT INTO `ams_role_permission` VALUES ('1216', '21', '6');
INSERT INTO `ams_role_permission` VALUES ('1217', '21', '7');
INSERT INTO `ams_role_permission` VALUES ('1218', '21', '2');
INSERT INTO `ams_role_permission` VALUES ('1219', '21', '23');
INSERT INTO `ams_role_permission` VALUES ('1220', '21', '24');
INSERT INTO `ams_role_permission` VALUES ('1221', '13', '3');
INSERT INTO `ams_role_permission` VALUES ('1222', '13', '4');
INSERT INTO `ams_role_permission` VALUES ('1223', '13', '13');
INSERT INTO `ams_role_permission` VALUES ('1224', '13', '14');
INSERT INTO `ams_role_permission` VALUES ('1225', '13', '24');
INSERT INTO `ams_role_permission` VALUES ('1226', '13', '23');
INSERT INTO `ams_role_permission` VALUES ('1227', '13', '7');
INSERT INTO `ams_role_permission` VALUES ('1228', '13', '22');
INSERT INTO `ams_role_permission` VALUES ('1229', '13', '21');
INSERT INTO `ams_role_permission` VALUES ('1230', '13', '20');
INSERT INTO `ams_role_permission` VALUES ('1231', '13', '17');
INSERT INTO `ams_role_permission` VALUES ('1232', '13', '18');
INSERT INTO `ams_role_permission` VALUES ('1233', '13', '19');
INSERT INTO `ams_role_permission` VALUES ('1234', '13', '16');
INSERT INTO `ams_role_permission` VALUES ('1235', '13', '15');
INSERT INTO `ams_role_permission` VALUES ('1236', '13', '5');
INSERT INTO `ams_role_permission` VALUES ('1237', '13', '6');
INSERT INTO `ams_role_permission` VALUES ('1238', '13', '2');
INSERT INTO `ams_role_permission` VALUES ('1239', '13', '1');
INSERT INTO `ams_role_permission` VALUES ('1240', '13', '11');
INSERT INTO `ams_role_permission` VALUES ('1241', '13', '12');
INSERT INTO `ams_role_permission` VALUES ('1242', '13', '10');
INSERT INTO `ams_role_permission` VALUES ('1243', '13', '9');
INSERT INTO `ams_role_permission` VALUES ('1244', '13', '8');

-- ----------------------------
-- Table structure for ams_settlement_object
-- ----------------------------
DROP TABLE IF EXISTS `ams_settlement_object`;
CREATE TABLE `ams_settlement_object` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `settlement_object_id` varchar(20) DEFAULT NULL COMMENT '结算对象ID:自定义结算对象编码，全局唯一\r\n\r\n',
  `org_code` varchar(4) DEFAULT NULL COMMENT '结算对象组织编码:四位组织编码\n\n',
  `org_cname` varchar(50) DEFAULT NULL COMMENT '结算对象中文名\r\n',
  `org_ename` varchar(100) DEFAULT NULL COMMENT '英文名\r\n',
  `org_shortname` varchar(20) DEFAULT NULL COMMENT '简称\r\n',
  `country` varchar(20) DEFAULT NULL COMMENT '所在国\r\n',
  `currency` varchar(3) DEFAULT NULL COMMENT '结算币种:三位货币编码\r\n',
  `address` varchar(100) DEFAULT NULL COMMENT '公司地址\r\n',
  `contact_person` varchar(20) DEFAULT NULL COMMENT '联系人\r\n',
  `contact_phone` varchar(20) DEFAULT NULL COMMENT '联系人电话\r\n',
  `bank_account` varchar(20) DEFAULT NULL COMMENT '银行账号\r\n',
  `bank_name` varchar(20) DEFAULT NULL COMMENT '银行名称\r\n',
  `bank_address` varchar(100) DEFAULT NULL COMMENT '银行地址\r\n',
  `settle_type` varchar(1) DEFAULT NULL COMMENT '结算方式 0-现结；1-月结\r\n',
  `df` varchar(1) DEFAULT NULL COMMENT '状态:0存在,1已删除',
  `org_id` int(11) DEFAULT NULL COMMENT '组织id',
  `account_id` varchar(4) DEFAULT NULL COMMENT '账套编码[org_code]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COMMENT='结算对象';

-- ----------------------------
-- Records of ams_settlement_object
-- ----------------------------
INSERT INTO `ams_settlement_object` VALUES ('2', 'XXXX1505545387039', null, '网易', '网易', '网易', null, 'AUD', '中国北京', '交', '13833494589', null, null, null, '0', '0', '4', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('3', 'XXXX1505545388646', null, '网易', '网易', '网易', null, 'AUD', '中国北京', '交', '13833494589', null, null, null, '0', '0', '4', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('5', 'XXXX1505721812678', 'XXXX', 'API结算对象', 'APISettlement', 'set', '中国', 'CNY', '北京顺义空港米兰花园', '李新海', '13532336479', '345675433425323', '中国银行', '顺义区天柱路20号中外运一楼', '0', '0', '4', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('9', 'XXXX1505873397133', 'XXXX', '测试供应商002', 'Test02', '简称', '约旦', 'USD', '约旦米兰', '胡亥111', '18311400747', null, null, null, '0', '0', '4', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('10', 'AAAA1505878302475', 'AAAA', '圆通快递', null, '圆通', '不丹', 'USD', '圆通', '李凤娇', '18518579526', null, null, null, '1', '0', '116', 'AAAA');
INSERT INTO `ams_settlement_object` VALUES ('11', 'WAWJ1505878803540', 'WAWJ', '网易慧慧', null, '网易', '中国', 'USD', '北京朝阳', '郄凯霞', '18899377673', null, null, null, '1', '0', '117', 'WAWJ');
INSERT INTO `ams_settlement_object` VALUES ('12', 'BJCP1505878977012', 'BJCP', '1', null, '1', '孟加拉国', 'USD', '1', '1', '1', null, null, null, '1', '0', '114', 'BJCP');
INSERT INTO `ams_settlement_object` VALUES ('13', 'WAWJ1505879135455', 'WAWJ', '知行思远', null, 'zxsy', '中国', 'USD', '北京顺义', '郄凯霞', '12312333', null, null, null, '1', '0', '117', 'WAWJ');
INSERT INTO `ams_settlement_object` VALUES ('14', 'AAAA1505884464926', 'AAAA', '顺丰快速', null, '顺风', '柬埔寨', 'USD', '北京顺义', '王二娜', '18518579526', null, null, null, '1', '0', '116', 'AAAA');
INSERT INTO `ams_settlement_object` VALUES ('15', 'AAAA1505885620989', 'AAAA', '网易', null, '23', '中国', 'USD', '上海闽南区', '娇', '18518579526', null, null, null, '1', '0', '116', 'AAAA');
INSERT INTO `ams_settlement_object` VALUES ('16', 'WAWJ1505886644912', 'WAWJ', '知行思远信息技术有限公司', 'iktas', 'zxsy', '中国', 'USD', '北京顺义', '大姐', '15846574729', '0989767653426363333', '中国银行', '北京顺义', '1', '0', '117', 'WAWJ');
INSERT INTO `ams_settlement_object` VALUES ('17', 'WSXC1505887230937', 'WSXC', '泡泡信息技术有限公司', null, '泡泡', '中国', 'USD', '中国', '王飞', '15101550993', null, null, null, '1', '0', '127', 'WSXC');
INSERT INTO `ams_settlement_object` VALUES ('18', 'WSXC1505888195446', 'WSXC', '广百荟信息技术', null, '广百荟', '中国', 'USD', '中国广东', '王飞', '15101550993', null, null, null, '1', '0', '127', 'WSXC');
INSERT INTO `ams_settlement_object` VALUES ('19', 'BJCP1505895306213', 'BJCP', '张三', null, '张三', '孟加拉国', 'USD', '北京顺义', '王安', '17600668023', null, null, null, '1', '0', '128', 'BJCP');
INSERT INTO `ams_settlement_object` VALUES ('20', 'BJCP1505958821772', 'BJCP', '汪娜', null, 'wn', '塞浦路斯', 'USD', '北京市海淀区软件园二期', '汪娜', '17600668023', null, null, null, '1', '0', '128', 'BJCP');
INSERT INTO `ams_settlement_object` VALUES ('21', 'SZJT1506136234802', 'SZJT', '顺丰快递', null, '顺丰', '中国', 'USD', '广州', '张三', '1290000000', null, null, null, '1', '0', '186', 'SZJT');
INSERT INTO `ams_settlement_object` VALUES ('22', 'XXXX1506325228054', 'XXXX', '刀剑', 'DJ', 'DJ', '丹麦', 'USD', '丹麦', '胡亥', '1234567234', null, null, null, '1', '0', '134', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('23', 'XXXX1506406864915', 'XXXX', '送货小李子', null, '小李子', '约旦', 'USD', '北京市朝阳区花园东路', '大家庭', '15034362399', null, null, null, '1', '0', '4', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('24', 'XXXX1506409150444', 'XXXX', '井格大家庭', null, '大家庭', '不丹', 'USD', '北京市海定区花园东路', '大师兄', '15034362399', null, null, null, '1', '0', '4', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('25', 'XXXX1506409423306', 'XXXX', '1', null, '1', '不丹', 'USD', '1', '1', '1', null, null, null, '1', '0', '4', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('26', 'XXXX1506415131318', 'XXXX', '结算餐费1、2', 'jiesuancanfei2', '餐费1、2', '印度尼西亚', 'EUR', '北京市海定区花园东路1、2', '大家庭2', '15034362399122', '22222', '22222', '222222', '0', '0', '4', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('27', 'null1506416013749', null, '乐其有限公司', null, 'km', '不丹', 'USD', 'www.jingdong.com', '方粉', '672354612454575', null, null, null, '1', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('28', 'null1506416013749', null, '结算对象中文名', 'jiesuanduixiang', '结算对象中文名', '不丹', 'CNY', '北京市顺义区空港花园', '张三', '15034362399', '1234567890', '中国银行', '北京市上地支行', '1', '0', null, null);
INSERT INTO `ams_settlement_object` VALUES ('29', null, 'BOER', '供应商明细', null, '简称', '孟加拉国', 'USD', '米兰花园', '胡汉四', '1234576231', null, null, null, '1', '0', null, 'BOER');
INSERT INTO `ams_settlement_object` VALUES ('30', null, 'BOER', '供应商明细', null, '简称', '孟加拉国', 'USD', '米兰花园', '胡汉四', '1234576231', null, null, null, '1', '0', null, 'BOER');
INSERT INTO `ams_settlement_object` VALUES ('31', null, 'HHUI', '胡汉武', null, '简称', '孟加拉国', 'USD', '米兰', '胡汉武', '2134567', null, null, null, '1', '0', null, 'HHUI');
INSERT INTO `ams_settlement_object` VALUES ('32', null, 'CDJQ', '成大大', null, '大大', '孟加拉国', 'USD', '北京市朝阳区', '程小小', '150343462399', null, null, null, '1', '0', null, 'CDJQ');
INSERT INTO `ams_settlement_object` VALUES ('33', null, 'ASDF', '孙菲菲', null, '孙菲菲', '柬埔寨', 'USD', '是的冯绍峰发顺丰', '沙发扶手', '24324234', null, null, null, '1', '0', null, 'ASDF');
INSERT INTO `ams_settlement_object` VALUES ('34', null, 'LKJH', '诉讼费', null, '顺丰速递', '孟加拉国', 'USD', '爽肤水', 'ff相关的', '发顺丰', null, null, null, '1', '0', null, 'LKJH');
INSERT INTO `ams_settlement_object` VALUES ('35', null, 'QWEZ', '鼎折覆餗', null, '顺丰速递', '孟加拉国', 'USD', '沙发斯蒂芬', '舒服舒服', '胜多负少', null, null, null, '1', '0', null, 'QWEZ');
INSERT INTO `ams_settlement_object` VALUES ('36', null, 'EDGG', '2423', null, '24234', '不丹', 'USD', '42424', '323', '24324', null, null, null, '1', '0', null, 'EDGG');
INSERT INTO `ams_settlement_object` VALUES ('37', null, null, '阿里巴巴', 'alibab', '阿里', '孟加拉国', 'CNY', '中国', '马云', '1243243', null, null, null, '0', '0', null, null);
INSERT INTO `ams_settlement_object` VALUES ('38', null, 'HDDM', '韩国东大门', null, '东大门', '韩国', 'USD', '韩国东大门', 'OUby', '15668293740', null, null, null, '1', '0', null, 'HDDM');
INSERT INTO `ams_settlement_object` VALUES ('39', null, 'AZGH', '澳洲供货', null, 'AZGH', '澳大利亚', 'USD', '澳大利亚', 'kiki', '18346384747', null, null, null, '1', '0', null, 'AZGH');
INSERT INTO `ams_settlement_object` VALUES ('40', null, 'KKKK', '412', null, '34', '孟加拉国', 'USD', '24', '234', '24', null, null, null, '1', '0', null, 'KKKK');
INSERT INTO `ams_settlement_object` VALUES ('41', null, 'IIII', '3241', null, '2134', '孟加拉国', 'USD', '214', '2134', '23423', null, null, null, '1', '0', null, 'IIII');
INSERT INTO `ams_settlement_object` VALUES ('42', null, 'OOOO', '234', null, '234', '不丹', 'USD', '234', '24', '34', null, null, null, '1', '0', null, 'OOOO');
INSERT INTO `ams_settlement_object` VALUES ('43', null, 'EEEE', '354', null, '234', '柬埔寨', 'USD', '234', '234', '234', null, null, null, '1', '0', null, 'EEEE');
INSERT INTO `ams_settlement_object` VALUES ('44', 'OOPK1508217981707', 'OOPK', '胡亥结算对象测试', 'asj', '简称是', '孟加拉国', 'CNY', '米兰', '123546', '124235', '123467544234124', '工商', '米兰', '1', '0', '226', 'OOPK');
INSERT INTO `ams_settlement_object` VALUES ('45', 'PLOK1508219592496', 'PLOK', '张三', null, '张三', '不丹', 'USD', '客户地址', '李四', '121', null, null, null, '1', '0', '249', 'PLOK');
INSERT INTO `ams_settlement_object` VALUES ('46', 'ZJLS1508219667631', 'ZJLS', '送货小三儿', null, '小三儿', '柬埔寨', 'USD', '北京市朝阳区花园东路111', '小三儿', '13488990043', null, null, null, '1', '0', '251', 'ZJLS');
INSERT INTO `ams_settlement_object` VALUES ('47', 'ZJLS1508219962755', 'ZJLS', '234', null, '342', '塞浦路斯', 'USD', '421', '423', '432', null, null, null, '1', '0', '251', 'ZJLS');
INSERT INTO `ams_settlement_object` VALUES ('48', 'ZJLS1508220087060', 'ZJLS', '555', null, '4321', '孟加拉国', 'USD', '243', '4312', '432', null, null, null, '1', '0', '251', 'ZJLS');
INSERT INTO `ams_settlement_object` VALUES ('49', 'ZJLS1508220199859', 'ZJLS', '111', null, '423', '不丹', 'USD', '432', '312', '31', null, null, null, '1', '0', '251', 'ZJLS');
INSERT INTO `ams_settlement_object` VALUES ('50', 'ZJLS1508220265461', 'ZJLS', 'play', null, '222', '乌兹别克斯坦', 'USD', '2341', '222', '1234', null, null, null, '1', '0', '251', 'ZJLS');
INSERT INTO `ams_settlement_object` VALUES ('51', 'PLOK1508220517392', 'PLOK', '老张家常菜', null, '家常菜', '约旦', 'USD', '北京市海淀区花园东路', '酒水小李子', '110', null, null, null, '1', '0', '249', 'PLOK');
INSERT INTO `ams_settlement_object` VALUES ('52', 'ZJLS1508220787454', 'ZJLS', '342', null, '4321', '印度尼西亚', 'USD', '234', '432', '432', null, null, null, '1', '0', '251', 'ZJLS');
INSERT INTO `ams_settlement_object` VALUES ('53', 'KJNZ1508221039538', 'KJNZ', '韩衣控-中国', null, 'HYKC', '韩国', 'USD', '韩国东大门', '郄凯霞', '17874857747', null, null, null, '1', '0', '239', 'KJNZ');
INSERT INTO `ams_settlement_object` VALUES ('54', 'PLOK1508221510951', 'PLOK', '酒水小李子', null, '小李子', '孟加拉国', 'USD', '北京市海淀区', '家常菜', '112', null, null, null, '1', '0', '249', 'PLOK');
INSERT INTO `ams_settlement_object` VALUES ('55', 'KJNZ1508222198523', 'KJNZ', '网易考拉', 'wangyiKoala', 'Koala', '中国', 'CNY', '中国香港', '郄凯霞', '3134556', '6663674674838844', '中国银行', '中国香港', '0', '0', '239', 'KJNZ');
INSERT INTO `ams_settlement_object` VALUES ('56', 'PLOK1508223299228', 'PLOK', '供应商', null, '供应商', '不丹', 'USD', '北京市海淀区', '张三', '112', null, null, null, '1', '0', '249', 'PLOK');
INSERT INTO `ams_settlement_object` VALUES ('57', 'PLOK1508224127366', 'PLOK', '搬东西', null, '搬东西', '孟加拉国', 'USD', '1212', '张三', '112', null, null, null, '1', '0', '249', 'PLOK');
INSERT INTO `ams_settlement_object` VALUES ('58', 'XXXX1508225004078', 'XXXX', '12', null, '12', '孟加拉国', 'USD', '12', '21', '21', null, null, null, '1', '0', '134', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('59', 'XXXX1508225069990', 'XXXX', '12312', null, '31231', '不丹', 'USD', '123', '12', '12', null, null, null, '1', '0', '134', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('60', 'PLOK1508228106419', 'PLOK', '大大', null, '大大', '孟加拉国', 'USD', '北京顺义区', '小小', '112', null, null, null, '1', '0', '249', 'PLOK');
INSERT INTO `ams_settlement_object` VALUES ('61', 'PLOK1508228447637', 'PLOK', '老李123', 'laoli123', '老李123', '约旦', 'GBP', '北京123', '小李123', '112123', '1234567890123', '中国银行123', '北京市海淀区123', '0', '0', '249', 'PLOK');
INSERT INTO `ams_settlement_object` VALUES ('62', 'XXXX1508233982399', 'XXXX', '张三111', null, '张三11', '孟加拉国', 'USD', '北京市海淀区', '李四111', '112', null, null, null, '1', '0', '4', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('63', 'PLOK1508308691364', 'PLOK', '大大', 'jiesuanduixiang', '大大', '柬埔寨', 'USD', '北京', '大小', '112', '111111222222', '邮政银行', '北京市海淀区', '1', '0', '249', 'PLOK');
INSERT INTO `ams_settlement_object` VALUES ('64', 'ZJLS1508376461809', 'ZJLS', '132', null, '312', '不丹', 'USD', '132', '321', '312', null, null, null, '1', '0', '251', 'ZJLS');
INSERT INTO `ams_settlement_object` VALUES ('65', 'ZJLS1508376462576', 'ZJLS', '132', null, '312', '不丹', 'USD', '132', '321', '312', null, null, null, '1', '0', '251', 'ZJLS');
INSERT INTO `ams_settlement_object` VALUES ('66', 'ZJLS1508376463555', 'ZJLS', '132', null, '312', '不丹', 'USD', '132', '321', '312', null, null, null, '1', '0', '251', 'ZJLS');
INSERT INTO `ams_settlement_object` VALUES ('67', 'ZJLS1508376494069', 'ZJLS', '132', null, '3534565', '不丹', 'USD', '132', '321', '312', null, null, null, '1', '0', '251', 'ZJLS');
INSERT INTO `ams_settlement_object` VALUES ('68', 'ZJLS1508376609854', 'ZJLS', '送货小李子222', null, '小李子', '不丹', 'USD', '北京市朝阳区花园东路', '312', '312', null, null, null, '1', '0', '251', 'ZJLS');
INSERT INTO `ams_settlement_object` VALUES ('69', 'ZJLS1508376638420', 'ZJLS', '浙江龙蛇网络科技有限公司', null, '小李子', '塞浦路斯', 'USD', '北京市朝阳区花园东路', '张三11', '17600995566', null, null, null, '1', '0', '251', 'ZJLS');
INSERT INTO `ams_settlement_object` VALUES ('70', 'null1508377899479', null, '张三', null, '张三', '柬埔寨', 'USD', '北京', '李四', '15034362399', null, null, null, '1', '0', '249', null);
INSERT INTO `ams_settlement_object` VALUES ('71', 'null1508378052288', null, '一扇', null, '一扇', '不丹', 'USD', '北京市超区', '尔山', '112', null, null, null, '1', '0', '249', null);
INSERT INTO `ams_settlement_object` VALUES ('72', 'null1508379696693', null, '供应商', null, '供应商', '印度尼西亚', 'USD', '北京市海淀区', '张三', '15034362399', null, null, null, '1', '0', '249', null);
INSERT INTO `ams_settlement_object` VALUES ('73', 'XXXX1508380349350', 'XXXX', 'coffee', 'coffee', 'coffee', '不丹', 'AUD', '米兰', '小米米', '1234567', '126452353443', '工商银行', '米兰', '1', '0', '134', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('74', 'PLOK1508390849553', 'PLOK', '酒水小李子', null, '小李子', '不丹', 'USD', '北京市海淀区', '小王子', '15034362399', null, null, null, '1', '0', '249', 'PLOK');
INSERT INTO `ams_settlement_object` VALUES ('75', 'PLOK1508406832171', 'PLOK', '小王子', null, '小王子', '孟加拉国', 'USD', '北京市海淀区', '大王子', '15034362399', null, null, null, '1', '0', '249', 'PLOK');
INSERT INTO `ams_settlement_object` VALUES ('76', 'UUUU1508463376919', 'UUUU', '张三', null, '小三', '孟加拉国', 'USD', '北京市海淀区空港花园', '李四', '15034362399', null, null, null, '1', '0', '284', 'UUUU');
INSERT INTO `ams_settlement_object` VALUES ('77', 'UUUU1508464692507', 'UUUU', '张三供应商', null, '张三', '孟加拉国', 'USD', '北京市海淀区', '李四', '113', null, null, null, '1', '0', '284', 'UUUU');
INSERT INTO `ams_settlement_object` VALUES ('78', 'null1508468121097', null, '空供应商', null, '空供应商', '孟加拉国', 'USD', '北京', '张三', '15034362399', null, null, null, '1', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('79', 'null1508468194195', null, '空供应商', null, '空供应商', '孟加拉国', 'USD', '北京', '李四', '110', null, null, null, '1', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('80', 'null1508468310850', null, '空供应商', null, '空供应商', '不丹', 'USD', '北京', '王五', '112', null, null, null, '1', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('81', 'null1508468669405', null, '空供应商', null, '空供应商', '苏里南', 'USD', '北京', '王麻子', '15034362399', null, null, null, '1', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('82', 'null1508468961392', null, '空供应商', null, '空供应商', '委内瑞拉', 'USD', '北京', '小三', '110', null, null, null, '1', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('83', 'null1508469026642', null, '空供应商', null, '空供应商', '巴林', 'USD', '北京', '小四', '112', null, null, null, '1', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('84', 'null1508476518420', null, '舒服舒服', null, ' 递四方速递方式发送方', '柬埔寨', 'USD', '是的冯绍峰的', '沙发斯蒂芬的神水电费沙发沙发沙发', '水电费爽肤水佛挡杀佛', null, null, null, '1', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('85', 'null1508476623469', null, '是否水电费爽肤水', null, '方式发送方沙发沙发沙发', '柬埔寨', 'USD', '似懂非懂是否', '爽肤水发的说法是否', '沙发沙发斯蒂芬', null, null, null, '1', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('86', 'null1508476707042', null, ' 发顺丰似懂非懂是否颁发沙发斯蒂芬', null, '顺丰到付大幅度', '不丹', 'USD', 'fdsfds需现场', '沙发沙发沙发', '发似懂非懂是否', null, null, null, '1', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('87', 'null1508476926586', null, '方式发送方', null, '发是的冯绍峰', '孟加拉国', 'USD', '发顺丰锁定发生', '说法是否发放更多的冯绍峰认为我热', '2F尬78768定', null, null, null, '1', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('88', 'null1508477348580', null, '张三', null, '张三', '不丹', 'USD', '北京', '张三', '112', null, null, null, '1', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('89', 'null1508478693975', null, '李四', null, '舒服舒服', '不丹', 'USD', '沙发斯蒂芬', '是的冯绍峰', '所发生的反倒是', null, null, null, '1', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('90', 'null1508478783217', null, '的风格大方古典风格', null, ' 东风股份的电饭锅电费', '突尼斯', 'USD', '个电饭锅的费', '郭德纲的郭德纲', '公司发生地方大富大贵', null, null, null, '1', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('91', 'null1508494234599', null, '必填项供应商', null, '必填项', '不丹', 'USD', '北京市顺义区', '供应商', null, null, null, null, '1', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('92', 'null1508495164910', null, '胜多负少的', null, '是范德萨发的', '孟加拉国', 'USD', '胜多负少的', ' 递四方速递', '爽肤水', null, null, null, '1', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('93', 'QQQY1508660233141', 'QQQY', '王雷', null, '小雷子', '塞浦路斯', 'USD', '北京市临汾市', '成大洁', '15034362399', null, null, null, '1', '0', '308', 'QQQY');
INSERT INTO `ams_settlement_object` VALUES ('94', 'QQQY1508660904278', 'QQQY', '小李子供应商', null, '小李子', '柬埔寨', 'USD', '山西省临汾市', '王雷', '13068038899', null, null, null, '1', '0', '308', 'QQQY');
INSERT INTO `ams_settlement_object` VALUES ('95', 'null1508663386694', null, '双方是否', null, '双方第三方', '孟加拉国', 'USD', '放地方发生的', '郭德纲', '3535354', null, null, null, '1', '0', '303', null);
INSERT INTO `ams_settlement_object` VALUES ('96', 'KJNZ1508827246305', 'KJNZ', '213', null, '1232', '孟加拉国', 'USD', '123', '123', '213', null, null, null, '1', '0', '239', 'KJNZ');
INSERT INTO `ams_settlement_object` VALUES ('97', 'KJNZ1508827337362', 'KJNZ', '42525', null, '245', '不丹', 'USD', '245', '245', '25', null, null, null, '1', '0', '239', 'KJNZ');
INSERT INTO `ams_settlement_object` VALUES ('98', 'BILI1508997340216', 'BILI', '驭剑', 'VIST', 'YOOP', '不丹', 'CNY', '米兰', '驭剑', '12354678956', '12356789678543453', '工商银行', '米兰楼下', '1', '0', '306', 'BILI');
INSERT INTO `ams_settlement_object` VALUES ('99', 'KJNZ1509004384860', 'KJNZ', '美图美妆', 'MeituBeautiful', 'MB', '中国', 'CNY', '北京顺义', '郄凯霞', '3456789', '098765432345678900', '建设银行', '北京顺义', '1', '0', '239', 'KJNZ');
INSERT INTO `ams_settlement_object` VALUES ('100', 'XXXX1509351710085', 'XXXX', '外运香港仓', 'ChiGooseHK', '香港仓', '香港', 'HKD', '流浮山', '康师傅', '12345678', null, null, null, '1', '0', '4', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('101', 'BILI1509514338199', 'BILI', '肯德基', null, '肯德基', '中国', 'USD', '米兰花园', '林白白', '908765434567', null, null, null, '1', '0', '306', 'BILI');
INSERT INTO `ams_settlement_object` VALUES ('102', 'XXXX1509686385344', 'XXXX', '结算权限新增', 'qewe', '权限', '不丹', 'CNY', '米兰花园1', '小白', '32465789', '1325674573463246', '工商银行', '米兰花园', '1', '0', '134', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('103', 'BILI1509942018187', 'BILI', '1212', 'onetwoonetwo', '1212', '不丹', 'AUD', '12', '12', '21', '12', '21', '21555', '1', '0', '306', 'BILI');
INSERT INTO `ams_settlement_object` VALUES ('104', 'null1510111270773', null, '大悦城火锅城', 'Settlement Object', '火锅城', '印度', 'AUD', '北京市顺义区空港花园A区米兰花园1单元1号楼602', '常松杰', '15034362399', '6224216666062474166', null, '中国银行', '0', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('105', 'null1510111555060', null, '大悦城火锅城', 'Settlement Object', '大悦城', '马达加斯加', 'CNY', '北京市顺义区空港花园', '常松杰', '15034362389', '62231908', '中国', '花园东路', '0', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('106', 'VCVC1510126259460', 'VCVC', 'ACFUN', 'ACFUN', 'ACFN', '印度', 'CNY', '浦东新区', '雷老谋', '12345679345', '1234124353453423', '工商银行', '浦东', '1', '0', '348', 'VCVC');
INSERT INTO `ams_settlement_object` VALUES ('107', 'ASDJ1510282897920', 'ASDJ', '清华大学出版社', 'LOVE', 'LOVE', '中国', 'CNY', '五道口清华东路', '李明月', '135000671244', '234563423423534534', '工商银行', '米兰花园', '1', '0', '372', 'ASDJ');
INSERT INTO `ams_settlement_object` VALUES ('108', 'ASDJ1510291805997', 'ASDJ', '埃罗芒阿', null, '埃罗芒阿', '日本', 'USD', '米兰花园', '琴里', '1351345695889', null, null, null, '1', '0', '372', 'ASDJ');
INSERT INTO `ams_settlement_object` VALUES ('109', 'QWEW1510292033011', 'QWEW', '送货小李子', 'Leonardo DiCaprio', '小李子', null, 'JPY', '北京市顺义区米兰花园1单元602室', '小李子', '15034362356', null, null, null, '0', '0', '365', 'QWEW');
INSERT INTO `ams_settlement_object` VALUES ('110', 'QWEW1510292400089', 'QWEW', '送货小李子', '12', '12', '不丹', 'CNY', '1212', '12', '12', '12', '12', '12', '1', '0', '365', 'QWEW');
INSERT INTO `ams_settlement_object` VALUES ('111', 'XXXX1510294942901', 'XXXX', '送货小李子', 'song huo xiao li zi', '小星子', '黎巴嫩', 'EUR', '北京市顺义区', '小星子', '110', '1234567890987654321', '工商银行', '北京市顺义区', '1', '0', '4', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('112', 'XXXX1510295514025', 'XXXX', '666TTT', null, 'TTT', '不丹', 'USD', 'T', '1331', '18231278633', null, null, null, '1', '0', '4', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('113', 'POLK1510295842232', 'POLK', '贝贝网', 'BeiBei', '贝贝', '澳大利亚', 'CNY', '北京市海淀区软件园二期', '张亚文', '0456-89110978', null, null, null, '0', '0', '379', 'POLK');
INSERT INTO `ams_settlement_object` VALUES ('114', 'POLK1510296139004', 'POLK', '贝亲', 'Pigeon', '贝亲', '日本', 'JPY', 'Pigeon  1 Infinite Loop  Cupertino, CA 95014 ', '侯悦', '400-820-3376', null, null, null, '1', '0', '379', 'POLK');
INSERT INTO `ams_settlement_object` VALUES ('115', 'XXXX1510296636259', 'XXXX', '12', '12', '12', '不丹', 'CNY', '12', '123', '12', '12', '12', '12', '1', '0', '4', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('116', 'XXXX1510296636260', 'XXXX', '12', '12', '12', '不丹', 'CNY', '12', '123', '12', '12', '12', '12', '1', '0', '4', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('117', 'POLK1510296647113', 'POLK', '网易泡泡', 'NeteasePop01', '网易pop', '香港', 'HKD', '北京市中关村软件园二期网易大厦', '张晓宇', '010-58749001', null, null, null, '0', '0', '379', 'POLK');
INSERT INTO `ams_settlement_object` VALUES ('118', 'XXXX1510296685840', 'XXXX', '23', '23', '23', '孟加拉国', 'CNY', '23', '23', '23', '23', '232', '23', '1', '0', '4', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('119', 'XXXX1510296704800', 'XXXX', '23', '45', '45', '不丹', 'CNY', '23', '45', '45', '45', '45', '45', '1', '0', '4', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('120', 'XXXX1510296721392', 'XXXX', '56', '56', '56', '柬埔寨', 'CNY', '56', '56', '56', '56', '56', '56', '1', '0', '4', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('121', 'XXXX1510296750483', 'XXXX', '67', '67', '67', '柬埔寨', 'GBP', '67', '67', '67', '67', '67', '67', '0', '0', '4', 'XXXX');
INSERT INTO `ams_settlement_object` VALUES ('122', 'QWEW1510306718370', 'QWEW', '成大洁', 'chengdajei', '大大', '不丹', 'CNY', 'https://www.jd.com/?cu=true&utm_source=baidu-search&utm_medium=cpc&utm_campaign=t_262767352', '成大洁', '15034362399', null, null, null, '1', '0', '365', 'QWEW');
INSERT INTO `ams_settlement_object` VALUES ('123', 'QWEW1510557107931', 'QWEW', '清风纸巾', 'Settlement', '清风纸巾', '不丹', 'EUR', '北京市顺义区空港花园A区米兰花园1单元1号楼602', '张三', '15034362399', '1234 5678 9012 1234 ', '中国银行', '北京市中国银行', '0', '0', '365', 'QWEW');
INSERT INTO `ams_settlement_object` VALUES ('124', 'QWEW1510558278743', 'QWEW', '范湉湉', 'fantiantian', '恬恬', null, 'CNY', '北京市公安局', '范湉湉', '110', null, null, null, '0', '0', '365', 'QWEW');
INSERT INTO `ams_settlement_object` VALUES ('125', 'QWEW1510558313584', 'QWEW', '蔡康永', '蔡康永', '蔡康永', '不丹', 'GBP', '蔡康永', '蔡康永', '蔡康永', null, null, null, '1', '0', '365', 'QWEW');
INSERT INTO `ams_settlement_object` VALUES ('126', 'QWEW1510558377266', 'QWEW', '高晓松', 'gaoxiaosong', '高晓松', null, 'GBP', '米兰花园', '高晓松', '112', null, null, null, '0', '0', '365', 'QWEW');
INSERT INTO `ams_settlement_object` VALUES ('127', 'QWEW1510558422507', 'QWEW', '罗振宇', 'luozhenyu', '罗振宇', '孟加拉国', 'EUR', '花园东路', '罗振宇', '113', null, null, null, '1', '0', '365', 'QWEW');
INSERT INTO `ams_settlement_object` VALUES ('128', 'QWEW1510558470296', 'QWEW', '张泉灵', 'hangquanling', '张泉灵', '菲律宾', 'HKD', '花园东路', '张泉灵', '112', null, null, null, '1', '0', '365', 'QWEW');
INSERT INTO `ams_settlement_object` VALUES ('129', 'QWEW1510558519415', 'QWEW', '何大人', 'he da ren', '何大人', '阿富汗', 'CNY', '清华大学', '何大人', '141', null, null, null, '1', '0', '365', 'QWEW');
INSERT INTO `ams_settlement_object` VALUES ('130', 'QWEW1510558558596', 'QWEW', '马薇薇', 'maweiwei', '马薇薇', null, 'CNY', '东七门', '马薇薇', '115', '12345', null, null, '1', '0', '365', 'QWEW');
INSERT INTO `ams_settlement_object` VALUES ('131', 'QWEW1510565311825', 'QWEW', '张三供应商', null, '张三', '孟加拉国', 'USD', '米兰', '李四', '1234567', null, null, null, '1', '0', '365', 'QWEW');
INSERT INTO `ams_settlement_object` VALUES ('132', 'POLK1510640495216', 'POLK', '乐视科技信息技术有限公司', '乐视', '乐视科技', '中国', 'CNY', 'www.baidu.com', '仝芳芳', '18511106674', null, null, null, '1', '0', '379', 'POLK');
INSERT INTO `ams_settlement_object` VALUES ('133', 'ASDJ1510640956254', 'ASDJ', 'GGGP', null, 'GGGP', '不丹', 'USD', 'GGGP', 'GGGP', '12345679', null, null, null, '1', '0', '372', 'ASDJ');
INSERT INTO `ams_settlement_object` VALUES ('134', 'QWEW1510641057333', 'QWEW', 'DSGF', null, 'SDFD', '不丹', 'USD', 'SDF', 'SDFS', 'SDFDSF', null, null, null, '1', '0', '365', 'QWEW');
INSERT INTO `ams_settlement_object` VALUES ('135', 'ASDJ1510641950572', 'ASDJ', 'MMUI', null, 'MMUI', '不丹', 'USD', 'MMUI', 'MMUI', '12356798', null, null, null, '1', '0', '372', 'ASDJ');
INSERT INTO `ams_settlement_object` VALUES ('136', 'QWEW1510906238156', 'QWEW', '软通动力中文', 'isoftsone英文', 'isoftsone', '中国', 'HKD', 'www.baidu.com', 'fangfang', '15810682958', null, null, null, '1', '0', '365', 'QWEW');
INSERT INTO `ams_settlement_object` VALUES ('137', 'QWEW1510906430726', 'QWEW', '软通动力中文', 'Settlement Object', '软通动力', '不丹', 'CNY', 'http://sit.cms.chigoose.com/#/Frame/Settlement/SettlementAdd', '高晓松', '15034362399', null, null, null, '1', '0', '365', 'QWEW');
INSERT INTO `ams_settlement_object` VALUES ('138', 'ASDJ1513215294154', 'ASDJ', '神舟精盾系列', null, '精盾', '中国', 'USD', '米兰', '胡亥', '1234567897654', null, null, null, '1', '0', '372', 'ASDJ');
INSERT INTO `ams_settlement_object` VALUES ('139', 'ZVOP1513647301669', 'ZVOP', '大河内一楼', null, '大河内', '日本', 'USD', '琦玉县', '大河内', '123456789876', null, null, null, '1', '0', '397', 'ZVOP');
INSERT INTO `ams_settlement_object` VALUES ('140', 'null1548326163788', null, 'E年后', 'Enin', 'EP', null, 'CNY', '北京', 'XXX', '12345678', null, null, null, '1', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('141', 'null1548327411306', null, '出库', 'chuku', '出库', null, 'USD', '北京', '霍', '14375767785', null, null, null, '1', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('142', 'null1550475361885', null, '打包', 'Pack', '打包', null, 'CNY', '广州', '霍', '18520320234', null, null, null, '0', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('143', 'null1550476297474', null, '打包', 'TOutbound', '出库的', null, 'CNY', '北京', '霍', '18520320234', null, null, null, '0', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('144', 'null1550476538829', null, '出库', 'TOutbound', 'q去', null, 'CNY', '北京', '霍', '18520320234', null, null, null, '0', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('145', 'null1550554716327', null, '44444444444', '4444444444', ' 4444', null, 'EUR', 'asdasdsadsa', 'kkkkk', '15689596853', null, null, null, '0', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('146', 'null1550554745283', null, 'saasasassa', 'assasaassa', 'assaassasa', null, 'CNY', 'asdasdsadsadas', 'asdsadsa', '15689596356', null, null, null, '0', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('147', 'null1550554800668', null, 'saasasassa', 'aaaaa', 'saasasassa', null, 'CNY', 'sadsadsa', '立行行行', '15689596365', null, null, null, '0', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('148', 'null1550644584014', null, '生成波次单', 'bocidan', '波次单', '北京', 'CNY', '北京', '霍', '18520320234', '156895969696365656', '1515151515515', '北京朝阳门支行', '1', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('149', 'null1552550223032', null, '111', 'neteasy', '网易', '北京', 'CNY', '121221', 'wwww', '15659896365', null, null, null, '0', '0', '4', null);
INSERT INTO `ams_settlement_object` VALUES ('150', 'null1553054452662', null, '网易', 'www', '网易', '北京', 'CNY', '121221', '滚滚滚', '15969845236', null, null, null, '1', '0', '4', null);

-- ----------------------------
-- Table structure for ams_user_role
-- ----------------------------
DROP TABLE IF EXISTS `ams_user_role`;
CREATE TABLE `ams_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COMMENT='用户角色关系表';

-- ----------------------------
-- Records of ams_user_role
-- ----------------------------
INSERT INTO `ams_user_role` VALUES ('3', '213', '5');
INSERT INTO `ams_user_role` VALUES ('5', '246', '1');
INSERT INTO `ams_user_role` VALUES ('9', '285', '1');
INSERT INTO `ams_user_role` VALUES ('15', '250', '7');
INSERT INTO `ams_user_role` VALUES ('18', '287', '6');
INSERT INTO `ams_user_role` VALUES ('20', '220', '2');
INSERT INTO `ams_user_role` VALUES ('21', '275', '5');
INSERT INTO `ams_user_role` VALUES ('27', '35', '8');
INSERT INTO `ams_user_role` VALUES ('28', '28', '8');
INSERT INTO `ams_user_role` VALUES ('30', '5', '8');
INSERT INTO `ams_user_role` VALUES ('32', '294', '11');
INSERT INTO `ams_user_role` VALUES ('33', '294', '12');
INSERT INTO `ams_user_role` VALUES ('34', '26', '8');
INSERT INTO `ams_user_role` VALUES ('36', '7', '8');
INSERT INTO `ams_user_role` VALUES ('42', '301', '13');
INSERT INTO `ams_user_role` VALUES ('46', '320', '25');
INSERT INTO `ams_user_role` VALUES ('47', '321', '26');
INSERT INTO `ams_user_role` VALUES ('48', '322', '27');
INSERT INTO `ams_user_role` VALUES ('49', '322', '28');
INSERT INTO `ams_user_role` VALUES ('50', '323', '30');
INSERT INTO `ams_user_role` VALUES ('52', '324', '31');
INSERT INTO `ams_user_role` VALUES ('54', '299', '10');
INSERT INTO `ams_user_role` VALUES ('56', '286', '1');
INSERT INTO `ams_user_role` VALUES ('58', '302', '23');
INSERT INTO `ams_user_role` VALUES ('59', '332', '43');
INSERT INTO `ams_user_role` VALUES ('60', '340', '44');
INSERT INTO `ams_user_role` VALUES ('61', '340', '45');
INSERT INTO `ams_user_role` VALUES ('62', '341', '46');
INSERT INTO `ams_user_role` VALUES ('63', '344', '47');
INSERT INTO `ams_user_role` VALUES ('64', '345', '48');
INSERT INTO `ams_user_role` VALUES ('66', '365', '50');
INSERT INTO `ams_user_role` VALUES ('67', '367', '51');
INSERT INTO `ams_user_role` VALUES ('68', '368', '51');
INSERT INTO `ams_user_role` VALUES ('69', '369', '52');
INSERT INTO `ams_user_role` VALUES ('70', '370', '52');
INSERT INTO `ams_user_role` VALUES ('71', '371', '54');
INSERT INTO `ams_user_role` VALUES ('72', '363', '49');
INSERT INTO `ams_user_role` VALUES ('75', '291', '21');
INSERT INTO `ams_user_role` VALUES ('76', '4', '21');
INSERT INTO `ams_user_role` VALUES ('77', '300', '18');
INSERT INTO `ams_user_role` VALUES ('88', '2', '10');
INSERT INTO `ams_user_role` VALUES ('89', '1', '8');

-- ----------------------------
-- Table structure for cms_permission
-- ----------------------------
DROP TABLE IF EXISTS `cms_permission`;
CREATE TABLE `cms_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '资源名称',
  `code` varchar(200) DEFAULT NULL COMMENT '资源',
  `enabled` varchar(1) DEFAULT NULL COMMENT '是否可用,1：可用，0不可用',
  `pid` int(11) DEFAULT NULL COMMENT '层级',
  `icon` varchar(200) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='许可/权限';

-- ----------------------------
-- Records of cms_permission
-- ----------------------------
INSERT INTO `cms_permission` VALUES ('1', '记账管理', 'Settlement/accountingList', '1', '0', 'icon-bi');
INSERT INTO `cms_permission` VALUES ('2', '账单管理', 'Settlement/PrepareBillList', '1', '0', 'pay-circle-o');
INSERT INTO `cms_permission` VALUES ('3', '收款管理', 'Settlement/ReceiptList', '1', '0', 'icon-shoukuan');
INSERT INTO `cms_permission` VALUES ('4', '付款管理', 'Settlement/PaymentList', '1', '0', 'icon-pay');
INSERT INTO `cms_permission` VALUES ('5', '结算对象', 'Settlement/SettlementList', '1', '0', 'idcard');
INSERT INTO `cms_permission` VALUES ('6', '费用管理', 'Settlement/CostManageList', '1', '0', 'schedule');
INSERT INTO `cms_permission` VALUES ('7', '业务类型', 'Settlement/BusinessTypeList', '1', '0', 'bars');
INSERT INTO `cms_permission` VALUES ('8', '快捷添加收支', '/Accountitem/insertList.action', '1', '1', null);
INSERT INTO `cms_permission` VALUES ('9', '新增收支', '/Accountitem/insert.action', '1', '1', null);
INSERT INTO `cms_permission` VALUES ('10', '审批收支', '/Accountitem/audit.action', '1', '1', null);
INSERT INTO `cms_permission` VALUES ('11', '生成对账单', '/bill/insert.action', '1', '1', null);
INSERT INTO `cms_permission` VALUES ('12', '确认账单', '/bill/audit.action', '1', '2', null);
INSERT INTO `cms_permission` VALUES ('13', '收款开票', '/bill/invoiced.action', '1', '3', null);
INSERT INTO `cms_permission` VALUES ('14', '收款核销', '/bill/paid.action', '1', '3', null);
INSERT INTO `cms_permission` VALUES ('15', '添加结算对象', '/SettlementObject/insert.action', '1', '5', null);
INSERT INTO `cms_permission` VALUES ('16', '编辑结算对象', '/SettlementObject/update.action', '1', '5', null);
INSERT INTO `cms_permission` VALUES ('17', '导入费用管理', '/AccountCategory/upload.action', '1', '6', null);
INSERT INTO `cms_permission` VALUES ('18', '添加费用管理', '/AccountCategory/insert.action', '1', '6', null);
INSERT INTO `cms_permission` VALUES ('19', '编辑费用管理', '/AccountCategory/update.action', '1', '6', null);
INSERT INTO `cms_permission` VALUES ('20', '添加业务类型', '/AmsBusinessType/insert.action', '1', '7', null);
INSERT INTO `cms_permission` VALUES ('21', '编辑业务类型', '/AmsBusinessType/update.action', '1', '7', null);
INSERT INTO `cms_permission` VALUES ('22', '删除业务类型', '/AmsBusinessType/delete.action', '1', '7', null);
INSERT INTO `cms_permission` VALUES ('23', '权限管理', 'Settlement/PowerRole', '1', '0', 'lock');
INSERT INTO `cms_permission` VALUES ('24', '用户授权', 'Settlement/UserSetting', '1', '0', 'tool');

-- ----------------------------
-- Table structure for cms_role
-- ----------------------------
DROP TABLE IF EXISTS `cms_role`;
CREATE TABLE `cms_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '角色名称',
  `organization_id` int(11) DEFAULT NULL COMMENT '组织id',
  `available` varchar(1) DEFAULT NULL COMMENT '是否可用,1：可用，0不可用',
  `admin` int(11) DEFAULT NULL COMMENT '组织管理员 1/0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of cms_role
-- ----------------------------
INSERT INTO `cms_role` VALUES ('1', '测试角色', '306', '1', '1');
INSERT INTO `cms_role` VALUES ('2', '红三代', '251', '1', null);
INSERT INTO `cms_role` VALUES ('5', '管理员', '239', '1', '1');
INSERT INTO `cms_role` VALUES ('6', 'ceshiceshi', '306', '1', null);
INSERT INTO `cms_role` VALUES ('8', '超级管理员', '4', '1', null);
INSERT INTO `cms_role` VALUES ('10', '总经理', '4', '1', null);
INSERT INTO `cms_role` VALUES ('12', '管理员', '348', '1', '1');
INSERT INTO `cms_role` VALUES ('13', '董事长', '4', '1', null);
INSERT INTO `cms_role` VALUES ('14', '主管', '4', '1', null);
INSERT INTO `cms_role` VALUES ('16', '秘书', '4', '1', null);
INSERT INTO `cms_role` VALUES ('17', '助理', '4', '1', null);
INSERT INTO `cms_role` VALUES ('18', '职员', '4', '1', null);
INSERT INTO `cms_role` VALUES ('19', 'CEO', '4', '1', null);
INSERT INTO `cms_role` VALUES ('20', '副总经理', '4', '1', null);
INSERT INTO `cms_role` VALUES ('21', '开发员', '4', '1', null);
INSERT INTO `cms_role` VALUES ('22', '运维员', '4', '1', null);
INSERT INTO `cms_role` VALUES ('23', '管理员', '365', '1', '1');
INSERT INTO `cms_role` VALUES ('24', 'A门卫', '348', '1', null);
INSERT INTO `cms_role` VALUES ('26', '管理员', '370', '1', null);
INSERT INTO `cms_role` VALUES ('27', '管理员', '372', '1', '1');
INSERT INTO `cms_role` VALUES ('30', '管理员', '378', '1', '1');
INSERT INTO `cms_role` VALUES ('31', '管理员', '379', '1', '1');
INSERT INTO `cms_role` VALUES ('32', '管理员', '381', '1', '1');
INSERT INTO `cms_role` VALUES ('33', '董事长', '365', '1', null);
INSERT INTO `cms_role` VALUES ('34', '总经理', '365', '1', null);
INSERT INTO `cms_role` VALUES ('35', '副总经理', '365', '1', null);
INSERT INTO `cms_role` VALUES ('36', '秘书', '365', '1', null);
INSERT INTO `cms_role` VALUES ('37', 'CEO', '365', '1', null);
INSERT INTO `cms_role` VALUES ('38', '助手', '365', '1', null);
INSERT INTO `cms_role` VALUES ('39', '开发员', '365', '1', null);
INSERT INTO `cms_role` VALUES ('40', '测试员', '365', '1', null);
INSERT INTO `cms_role` VALUES ('41', '运维员', '365', '1', null);
INSERT INTO `cms_role` VALUES ('42', '销售员', '365', '1', null);
INSERT INTO `cms_role` VALUES ('43', '管理员', '390', '1', '1');
INSERT INTO `cms_role` VALUES ('44', '管理员', '392', '1', '1');
INSERT INTO `cms_role` VALUES ('45', '管理员', '392', '1', '1');
INSERT INTO `cms_role` VALUES ('46', '管理员', '393', '1', '1');
INSERT INTO `cms_role` VALUES ('47', '管理员', '394', '1', '1');
INSERT INTO `cms_role` VALUES ('48', '管理员', '395', '1', '1');
INSERT INTO `cms_role` VALUES ('49', '管理员', '397', '1', '1');
INSERT INTO `cms_role` VALUES ('50', '管理员', '399', '1', '1');
INSERT INTO `cms_role` VALUES ('51', '管理员', '400', '1', '1');
INSERT INTO `cms_role` VALUES ('52', '管理员', '401', '1', '1');
INSERT INTO `cms_role` VALUES ('53', '记账员', '401', '1', null);
INSERT INTO `cms_role` VALUES ('54', '管理员', '402', '1', '1');
INSERT INTO `cms_role` VALUES ('55', '213113', '4', '1', null);

-- ----------------------------
-- Table structure for cms_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `cms_role_permission`;
CREATE TABLE `cms_role_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色id',
  `permission_id` bigint(20) DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1221 DEFAULT CHARSET=utf8 COMMENT='许可and角色关系';

-- ----------------------------
-- Records of cms_role_permission
-- ----------------------------
INSERT INTO `cms_role_permission` VALUES ('93', '1', '8');
INSERT INTO `cms_role_permission` VALUES ('94', '1', '9');
INSERT INTO `cms_role_permission` VALUES ('95', '1', '10');
INSERT INTO `cms_role_permission` VALUES ('96', '1', '11');
INSERT INTO `cms_role_permission` VALUES ('97', '1', '12');
INSERT INTO `cms_role_permission` VALUES ('98', '1', '13');
INSERT INTO `cms_role_permission` VALUES ('99', '1', '14');
INSERT INTO `cms_role_permission` VALUES ('100', '1', '15');
INSERT INTO `cms_role_permission` VALUES ('101', '1', '16');
INSERT INTO `cms_role_permission` VALUES ('102', '1', '17');
INSERT INTO `cms_role_permission` VALUES ('103', '1', '18');
INSERT INTO `cms_role_permission` VALUES ('104', '1', '19');
INSERT INTO `cms_role_permission` VALUES ('105', '1', '20');
INSERT INTO `cms_role_permission` VALUES ('106', '1', '21');
INSERT INTO `cms_role_permission` VALUES ('107', '1', '22');
INSERT INTO `cms_role_permission` VALUES ('108', '1', '1');
INSERT INTO `cms_role_permission` VALUES ('109', '1', '3');
INSERT INTO `cms_role_permission` VALUES ('110', '1', '4');
INSERT INTO `cms_role_permission` VALUES ('111', '1', '5');
INSERT INTO `cms_role_permission` VALUES ('112', '1', '6');
INSERT INTO `cms_role_permission` VALUES ('113', '1', '7');
INSERT INTO `cms_role_permission` VALUES ('114', '1', '2');
INSERT INTO `cms_role_permission` VALUES ('115', '1', '23');
INSERT INTO `cms_role_permission` VALUES ('161', '1', '24');
INSERT INTO `cms_role_permission` VALUES ('162', '4', '24');
INSERT INTO `cms_role_permission` VALUES ('163', '4', '23');
INSERT INTO `cms_role_permission` VALUES ('164', '4', '7');
INSERT INTO `cms_role_permission` VALUES ('165', '4', '22');
INSERT INTO `cms_role_permission` VALUES ('166', '4', '21');
INSERT INTO `cms_role_permission` VALUES ('167', '4', '20');
INSERT INTO `cms_role_permission` VALUES ('227', '7', '24');
INSERT INTO `cms_role_permission` VALUES ('228', '7', '23');
INSERT INTO `cms_role_permission` VALUES ('229', '7', '7');
INSERT INTO `cms_role_permission` VALUES ('230', '7', '6');
INSERT INTO `cms_role_permission` VALUES ('231', '7', '5');
INSERT INTO `cms_role_permission` VALUES ('232', '7', '22');
INSERT INTO `cms_role_permission` VALUES ('233', '7', '19');
INSERT INTO `cms_role_permission` VALUES ('234', '7', '16');
INSERT INTO `cms_role_permission` VALUES ('235', '7', '15');
INSERT INTO `cms_role_permission` VALUES ('236', '7', '18');
INSERT INTO `cms_role_permission` VALUES ('237', '7', '21');
INSERT INTO `cms_role_permission` VALUES ('238', '7', '20');
INSERT INTO `cms_role_permission` VALUES ('239', '7', '17');
INSERT INTO `cms_role_permission` VALUES ('306', '5', '8');
INSERT INTO `cms_role_permission` VALUES ('307', '5', '9');
INSERT INTO `cms_role_permission` VALUES ('308', '5', '10');
INSERT INTO `cms_role_permission` VALUES ('309', '5', '11');
INSERT INTO `cms_role_permission` VALUES ('310', '5', '12');
INSERT INTO `cms_role_permission` VALUES ('311', '5', '13');
INSERT INTO `cms_role_permission` VALUES ('312', '5', '14');
INSERT INTO `cms_role_permission` VALUES ('313', '5', '15');
INSERT INTO `cms_role_permission` VALUES ('314', '5', '16');
INSERT INTO `cms_role_permission` VALUES ('315', '5', '17');
INSERT INTO `cms_role_permission` VALUES ('316', '5', '18');
INSERT INTO `cms_role_permission` VALUES ('317', '5', '19');
INSERT INTO `cms_role_permission` VALUES ('318', '5', '20');
INSERT INTO `cms_role_permission` VALUES ('319', '5', '21');
INSERT INTO `cms_role_permission` VALUES ('320', '5', '22');
INSERT INTO `cms_role_permission` VALUES ('321', '5', '1');
INSERT INTO `cms_role_permission` VALUES ('322', '5', '3');
INSERT INTO `cms_role_permission` VALUES ('323', '5', '4');
INSERT INTO `cms_role_permission` VALUES ('324', '5', '5');
INSERT INTO `cms_role_permission` VALUES ('325', '5', '6');
INSERT INTO `cms_role_permission` VALUES ('326', '5', '7');
INSERT INTO `cms_role_permission` VALUES ('327', '5', '2');
INSERT INTO `cms_role_permission` VALUES ('328', '5', '23');
INSERT INTO `cms_role_permission` VALUES ('329', '5', '24');
INSERT INTO `cms_role_permission` VALUES ('376', '11', '24');
INSERT INTO `cms_role_permission` VALUES ('377', '11', '23');
INSERT INTO `cms_role_permission` VALUES ('378', '11', '22');
INSERT INTO `cms_role_permission` VALUES ('379', '11', '21');
INSERT INTO `cms_role_permission` VALUES ('380', '11', '20');
INSERT INTO `cms_role_permission` VALUES ('381', '11', '19');
INSERT INTO `cms_role_permission` VALUES ('382', '11', '18');
INSERT INTO `cms_role_permission` VALUES ('383', '11', '17');
INSERT INTO `cms_role_permission` VALUES ('384', '11', '16');
INSERT INTO `cms_role_permission` VALUES ('385', '11', '15');
INSERT INTO `cms_role_permission` VALUES ('386', '11', '14');
INSERT INTO `cms_role_permission` VALUES ('387', '11', '13');
INSERT INTO `cms_role_permission` VALUES ('388', '11', '12');
INSERT INTO `cms_role_permission` VALUES ('389', '11', '11');
INSERT INTO `cms_role_permission` VALUES ('390', '11', '10');
INSERT INTO `cms_role_permission` VALUES ('391', '11', '9');
INSERT INTO `cms_role_permission` VALUES ('392', '11', '8');
INSERT INTO `cms_role_permission` VALUES ('393', '11', '7');
INSERT INTO `cms_role_permission` VALUES ('394', '11', '6');
INSERT INTO `cms_role_permission` VALUES ('395', '11', '5');
INSERT INTO `cms_role_permission` VALUES ('396', '11', '4');
INSERT INTO `cms_role_permission` VALUES ('397', '11', '3');
INSERT INTO `cms_role_permission` VALUES ('398', '11', '2');
INSERT INTO `cms_role_permission` VALUES ('399', '11', '1');
INSERT INTO `cms_role_permission` VALUES ('400', '12', '24');
INSERT INTO `cms_role_permission` VALUES ('401', '12', '23');
INSERT INTO `cms_role_permission` VALUES ('402', '12', '22');
INSERT INTO `cms_role_permission` VALUES ('403', '12', '21');
INSERT INTO `cms_role_permission` VALUES ('404', '12', '20');
INSERT INTO `cms_role_permission` VALUES ('405', '12', '19');
INSERT INTO `cms_role_permission` VALUES ('406', '12', '18');
INSERT INTO `cms_role_permission` VALUES ('407', '12', '17');
INSERT INTO `cms_role_permission` VALUES ('408', '12', '16');
INSERT INTO `cms_role_permission` VALUES ('409', '12', '15');
INSERT INTO `cms_role_permission` VALUES ('410', '12', '14');
INSERT INTO `cms_role_permission` VALUES ('411', '12', '13');
INSERT INTO `cms_role_permission` VALUES ('412', '12', '12');
INSERT INTO `cms_role_permission` VALUES ('413', '12', '11');
INSERT INTO `cms_role_permission` VALUES ('414', '12', '10');
INSERT INTO `cms_role_permission` VALUES ('415', '12', '9');
INSERT INTO `cms_role_permission` VALUES ('416', '12', '8');
INSERT INTO `cms_role_permission` VALUES ('417', '12', '7');
INSERT INTO `cms_role_permission` VALUES ('418', '12', '6');
INSERT INTO `cms_role_permission` VALUES ('419', '12', '5');
INSERT INTO `cms_role_permission` VALUES ('420', '12', '4');
INSERT INTO `cms_role_permission` VALUES ('421', '12', '3');
INSERT INTO `cms_role_permission` VALUES ('422', '12', '2');
INSERT INTO `cms_role_permission` VALUES ('423', '12', '1');
INSERT INTO `cms_role_permission` VALUES ('498', '2', '8');
INSERT INTO `cms_role_permission` VALUES ('499', '2', '9');
INSERT INTO `cms_role_permission` VALUES ('500', '2', '10');
INSERT INTO `cms_role_permission` VALUES ('501', '2', '11');
INSERT INTO `cms_role_permission` VALUES ('502', '2', '13');
INSERT INTO `cms_role_permission` VALUES ('503', '2', '14');
INSERT INTO `cms_role_permission` VALUES ('504', '2', '15');
INSERT INTO `cms_role_permission` VALUES ('505', '2', '16');
INSERT INTO `cms_role_permission` VALUES ('506', '2', '17');
INSERT INTO `cms_role_permission` VALUES ('507', '2', '18');
INSERT INTO `cms_role_permission` VALUES ('508', '2', '19');
INSERT INTO `cms_role_permission` VALUES ('509', '2', '22');
INSERT INTO `cms_role_permission` VALUES ('510', '2', '1');
INSERT INTO `cms_role_permission` VALUES ('511', '2', '3');
INSERT INTO `cms_role_permission` VALUES ('512', '2', '4');
INSERT INTO `cms_role_permission` VALUES ('513', '2', '5');
INSERT INTO `cms_role_permission` VALUES ('514', '2', '6');
INSERT INTO `cms_role_permission` VALUES ('515', '2', '7');
INSERT INTO `cms_role_permission` VALUES ('516', '2', '2');
INSERT INTO `cms_role_permission` VALUES ('517', '2', '23');
INSERT INTO `cms_role_permission` VALUES ('518', '2', '24');
INSERT INTO `cms_role_permission` VALUES ('519', '2', '12');
INSERT INTO `cms_role_permission` VALUES ('520', '2', '21');
INSERT INTO `cms_role_permission` VALUES ('521', '2', '20');
INSERT INTO `cms_role_permission` VALUES ('522', '8', '8');
INSERT INTO `cms_role_permission` VALUES ('523', '8', '9');
INSERT INTO `cms_role_permission` VALUES ('524', '8', '10');
INSERT INTO `cms_role_permission` VALUES ('525', '8', '11');
INSERT INTO `cms_role_permission` VALUES ('526', '8', '13');
INSERT INTO `cms_role_permission` VALUES ('527', '8', '14');
INSERT INTO `cms_role_permission` VALUES ('528', '8', '15');
INSERT INTO `cms_role_permission` VALUES ('529', '8', '16');
INSERT INTO `cms_role_permission` VALUES ('530', '8', '17');
INSERT INTO `cms_role_permission` VALUES ('531', '8', '18');
INSERT INTO `cms_role_permission` VALUES ('532', '8', '19');
INSERT INTO `cms_role_permission` VALUES ('533', '8', '20');
INSERT INTO `cms_role_permission` VALUES ('534', '8', '21');
INSERT INTO `cms_role_permission` VALUES ('535', '8', '22');
INSERT INTO `cms_role_permission` VALUES ('536', '8', '1');
INSERT INTO `cms_role_permission` VALUES ('537', '8', '3');
INSERT INTO `cms_role_permission` VALUES ('538', '8', '4');
INSERT INTO `cms_role_permission` VALUES ('539', '8', '5');
INSERT INTO `cms_role_permission` VALUES ('540', '8', '6');
INSERT INTO `cms_role_permission` VALUES ('541', '8', '7');
INSERT INTO `cms_role_permission` VALUES ('542', '8', '2');
INSERT INTO `cms_role_permission` VALUES ('543', '8', '23');
INSERT INTO `cms_role_permission` VALUES ('544', '8', '24');
INSERT INTO `cms_role_permission` VALUES ('545', '8', '12');
INSERT INTO `cms_role_permission` VALUES ('546', '13', '13');
INSERT INTO `cms_role_permission` VALUES ('547', '13', '14');
INSERT INTO `cms_role_permission` VALUES ('548', '13', '3');
INSERT INTO `cms_role_permission` VALUES ('549', '13', '4');
INSERT INTO `cms_role_permission` VALUES ('550', '16', '24');
INSERT INTO `cms_role_permission` VALUES ('599', '26', '24');
INSERT INTO `cms_role_permission` VALUES ('600', '26', '23');
INSERT INTO `cms_role_permission` VALUES ('601', '26', '22');
INSERT INTO `cms_role_permission` VALUES ('602', '26', '21');
INSERT INTO `cms_role_permission` VALUES ('603', '26', '20');
INSERT INTO `cms_role_permission` VALUES ('604', '26', '19');
INSERT INTO `cms_role_permission` VALUES ('605', '26', '18');
INSERT INTO `cms_role_permission` VALUES ('606', '26', '17');
INSERT INTO `cms_role_permission` VALUES ('607', '26', '16');
INSERT INTO `cms_role_permission` VALUES ('608', '26', '15');
INSERT INTO `cms_role_permission` VALUES ('609', '26', '14');
INSERT INTO `cms_role_permission` VALUES ('610', '26', '13');
INSERT INTO `cms_role_permission` VALUES ('611', '26', '12');
INSERT INTO `cms_role_permission` VALUES ('612', '26', '11');
INSERT INTO `cms_role_permission` VALUES ('613', '26', '10');
INSERT INTO `cms_role_permission` VALUES ('614', '26', '9');
INSERT INTO `cms_role_permission` VALUES ('615', '26', '8');
INSERT INTO `cms_role_permission` VALUES ('616', '26', '7');
INSERT INTO `cms_role_permission` VALUES ('617', '26', '6');
INSERT INTO `cms_role_permission` VALUES ('618', '26', '5');
INSERT INTO `cms_role_permission` VALUES ('619', '26', '4');
INSERT INTO `cms_role_permission` VALUES ('620', '26', '3');
INSERT INTO `cms_role_permission` VALUES ('621', '26', '2');
INSERT INTO `cms_role_permission` VALUES ('622', '26', '1');
INSERT INTO `cms_role_permission` VALUES ('623', '27', '24');
INSERT INTO `cms_role_permission` VALUES ('624', '27', '23');
INSERT INTO `cms_role_permission` VALUES ('625', '27', '22');
INSERT INTO `cms_role_permission` VALUES ('626', '27', '21');
INSERT INTO `cms_role_permission` VALUES ('627', '27', '20');
INSERT INTO `cms_role_permission` VALUES ('628', '27', '19');
INSERT INTO `cms_role_permission` VALUES ('629', '27', '18');
INSERT INTO `cms_role_permission` VALUES ('630', '27', '17');
INSERT INTO `cms_role_permission` VALUES ('631', '27', '16');
INSERT INTO `cms_role_permission` VALUES ('632', '27', '15');
INSERT INTO `cms_role_permission` VALUES ('633', '27', '14');
INSERT INTO `cms_role_permission` VALUES ('634', '27', '13');
INSERT INTO `cms_role_permission` VALUES ('635', '27', '12');
INSERT INTO `cms_role_permission` VALUES ('636', '27', '11');
INSERT INTO `cms_role_permission` VALUES ('637', '27', '10');
INSERT INTO `cms_role_permission` VALUES ('638', '27', '9');
INSERT INTO `cms_role_permission` VALUES ('639', '27', '8');
INSERT INTO `cms_role_permission` VALUES ('640', '27', '7');
INSERT INTO `cms_role_permission` VALUES ('641', '27', '6');
INSERT INTO `cms_role_permission` VALUES ('642', '27', '5');
INSERT INTO `cms_role_permission` VALUES ('643', '27', '4');
INSERT INTO `cms_role_permission` VALUES ('644', '27', '3');
INSERT INTO `cms_role_permission` VALUES ('645', '27', '2');
INSERT INTO `cms_role_permission` VALUES ('646', '27', '1');
INSERT INTO `cms_role_permission` VALUES ('671', '30', '24');
INSERT INTO `cms_role_permission` VALUES ('672', '30', '23');
INSERT INTO `cms_role_permission` VALUES ('673', '30', '22');
INSERT INTO `cms_role_permission` VALUES ('674', '30', '21');
INSERT INTO `cms_role_permission` VALUES ('675', '30', '20');
INSERT INTO `cms_role_permission` VALUES ('676', '30', '19');
INSERT INTO `cms_role_permission` VALUES ('677', '30', '18');
INSERT INTO `cms_role_permission` VALUES ('678', '30', '17');
INSERT INTO `cms_role_permission` VALUES ('679', '30', '16');
INSERT INTO `cms_role_permission` VALUES ('680', '30', '15');
INSERT INTO `cms_role_permission` VALUES ('681', '30', '14');
INSERT INTO `cms_role_permission` VALUES ('682', '30', '13');
INSERT INTO `cms_role_permission` VALUES ('683', '30', '12');
INSERT INTO `cms_role_permission` VALUES ('684', '30', '11');
INSERT INTO `cms_role_permission` VALUES ('685', '30', '10');
INSERT INTO `cms_role_permission` VALUES ('686', '30', '9');
INSERT INTO `cms_role_permission` VALUES ('687', '30', '8');
INSERT INTO `cms_role_permission` VALUES ('688', '30', '7');
INSERT INTO `cms_role_permission` VALUES ('689', '30', '6');
INSERT INTO `cms_role_permission` VALUES ('690', '30', '5');
INSERT INTO `cms_role_permission` VALUES ('691', '30', '4');
INSERT INTO `cms_role_permission` VALUES ('692', '30', '3');
INSERT INTO `cms_role_permission` VALUES ('693', '30', '2');
INSERT INTO `cms_role_permission` VALUES ('694', '30', '1');
INSERT INTO `cms_role_permission` VALUES ('695', '31', '24');
INSERT INTO `cms_role_permission` VALUES ('696', '31', '23');
INSERT INTO `cms_role_permission` VALUES ('697', '31', '22');
INSERT INTO `cms_role_permission` VALUES ('698', '31', '21');
INSERT INTO `cms_role_permission` VALUES ('699', '31', '20');
INSERT INTO `cms_role_permission` VALUES ('700', '31', '19');
INSERT INTO `cms_role_permission` VALUES ('701', '31', '18');
INSERT INTO `cms_role_permission` VALUES ('702', '31', '17');
INSERT INTO `cms_role_permission` VALUES ('703', '31', '16');
INSERT INTO `cms_role_permission` VALUES ('704', '31', '15');
INSERT INTO `cms_role_permission` VALUES ('705', '31', '14');
INSERT INTO `cms_role_permission` VALUES ('706', '31', '13');
INSERT INTO `cms_role_permission` VALUES ('707', '31', '12');
INSERT INTO `cms_role_permission` VALUES ('708', '31', '11');
INSERT INTO `cms_role_permission` VALUES ('709', '31', '10');
INSERT INTO `cms_role_permission` VALUES ('710', '31', '9');
INSERT INTO `cms_role_permission` VALUES ('711', '31', '8');
INSERT INTO `cms_role_permission` VALUES ('712', '31', '7');
INSERT INTO `cms_role_permission` VALUES ('713', '31', '6');
INSERT INTO `cms_role_permission` VALUES ('714', '31', '5');
INSERT INTO `cms_role_permission` VALUES ('715', '31', '4');
INSERT INTO `cms_role_permission` VALUES ('716', '31', '3');
INSERT INTO `cms_role_permission` VALUES ('717', '31', '2');
INSERT INTO `cms_role_permission` VALUES ('718', '31', '1');
INSERT INTO `cms_role_permission` VALUES ('719', '32', '24');
INSERT INTO `cms_role_permission` VALUES ('720', '32', '23');
INSERT INTO `cms_role_permission` VALUES ('721', '32', '22');
INSERT INTO `cms_role_permission` VALUES ('722', '32', '21');
INSERT INTO `cms_role_permission` VALUES ('723', '32', '20');
INSERT INTO `cms_role_permission` VALUES ('724', '32', '19');
INSERT INTO `cms_role_permission` VALUES ('725', '32', '18');
INSERT INTO `cms_role_permission` VALUES ('726', '32', '17');
INSERT INTO `cms_role_permission` VALUES ('727', '32', '16');
INSERT INTO `cms_role_permission` VALUES ('728', '32', '15');
INSERT INTO `cms_role_permission` VALUES ('729', '32', '14');
INSERT INTO `cms_role_permission` VALUES ('730', '32', '13');
INSERT INTO `cms_role_permission` VALUES ('731', '32', '12');
INSERT INTO `cms_role_permission` VALUES ('732', '32', '11');
INSERT INTO `cms_role_permission` VALUES ('733', '32', '10');
INSERT INTO `cms_role_permission` VALUES ('734', '32', '9');
INSERT INTO `cms_role_permission` VALUES ('735', '32', '8');
INSERT INTO `cms_role_permission` VALUES ('736', '32', '7');
INSERT INTO `cms_role_permission` VALUES ('737', '32', '6');
INSERT INTO `cms_role_permission` VALUES ('738', '32', '5');
INSERT INTO `cms_role_permission` VALUES ('739', '32', '4');
INSERT INTO `cms_role_permission` VALUES ('740', '32', '3');
INSERT INTO `cms_role_permission` VALUES ('741', '32', '2');
INSERT INTO `cms_role_permission` VALUES ('742', '32', '1');
INSERT INTO `cms_role_permission` VALUES ('743', '10', '9');
INSERT INTO `cms_role_permission` VALUES ('744', '10', '10');
INSERT INTO `cms_role_permission` VALUES ('745', '10', '11');
INSERT INTO `cms_role_permission` VALUES ('746', '10', '13');
INSERT INTO `cms_role_permission` VALUES ('747', '10', '14');
INSERT INTO `cms_role_permission` VALUES ('748', '10', '15');
INSERT INTO `cms_role_permission` VALUES ('749', '10', '16');
INSERT INTO `cms_role_permission` VALUES ('750', '10', '17');
INSERT INTO `cms_role_permission` VALUES ('751', '10', '18');
INSERT INTO `cms_role_permission` VALUES ('752', '10', '19');
INSERT INTO `cms_role_permission` VALUES ('753', '10', '20');
INSERT INTO `cms_role_permission` VALUES ('754', '10', '21');
INSERT INTO `cms_role_permission` VALUES ('755', '10', '22');
INSERT INTO `cms_role_permission` VALUES ('756', '10', '1');
INSERT INTO `cms_role_permission` VALUES ('757', '10', '3');
INSERT INTO `cms_role_permission` VALUES ('758', '10', '4');
INSERT INTO `cms_role_permission` VALUES ('759', '10', '5');
INSERT INTO `cms_role_permission` VALUES ('760', '10', '6');
INSERT INTO `cms_role_permission` VALUES ('761', '10', '7');
INSERT INTO `cms_role_permission` VALUES ('762', '10', '2');
INSERT INTO `cms_role_permission` VALUES ('763', '10', '24');
INSERT INTO `cms_role_permission` VALUES ('764', '10', '12');
INSERT INTO `cms_role_permission` VALUES ('765', '10', '23');
INSERT INTO `cms_role_permission` VALUES ('787', '34', '1');
INSERT INTO `cms_role_permission` VALUES ('788', '34', '3');
INSERT INTO `cms_role_permission` VALUES ('789', '34', '4');
INSERT INTO `cms_role_permission` VALUES ('790', '34', '5');
INSERT INTO `cms_role_permission` VALUES ('791', '34', '6');
INSERT INTO `cms_role_permission` VALUES ('792', '34', '7');
INSERT INTO `cms_role_permission` VALUES ('793', '34', '2');
INSERT INTO `cms_role_permission` VALUES ('794', '34', '23');
INSERT INTO `cms_role_permission` VALUES ('795', '34', '24');
INSERT INTO `cms_role_permission` VALUES ('844', '23', '8');
INSERT INTO `cms_role_permission` VALUES ('845', '23', '9');
INSERT INTO `cms_role_permission` VALUES ('846', '23', '10');
INSERT INTO `cms_role_permission` VALUES ('847', '23', '11');
INSERT INTO `cms_role_permission` VALUES ('848', '23', '13');
INSERT INTO `cms_role_permission` VALUES ('849', '23', '14');
INSERT INTO `cms_role_permission` VALUES ('850', '23', '15');
INSERT INTO `cms_role_permission` VALUES ('851', '23', '16');
INSERT INTO `cms_role_permission` VALUES ('852', '23', '17');
INSERT INTO `cms_role_permission` VALUES ('853', '23', '18');
INSERT INTO `cms_role_permission` VALUES ('854', '23', '19');
INSERT INTO `cms_role_permission` VALUES ('855', '23', '20');
INSERT INTO `cms_role_permission` VALUES ('856', '23', '21');
INSERT INTO `cms_role_permission` VALUES ('857', '23', '22');
INSERT INTO `cms_role_permission` VALUES ('858', '23', '1');
INSERT INTO `cms_role_permission` VALUES ('859', '23', '3');
INSERT INTO `cms_role_permission` VALUES ('860', '23', '4');
INSERT INTO `cms_role_permission` VALUES ('861', '23', '5');
INSERT INTO `cms_role_permission` VALUES ('862', '23', '6');
INSERT INTO `cms_role_permission` VALUES ('863', '23', '7');
INSERT INTO `cms_role_permission` VALUES ('864', '23', '2');
INSERT INTO `cms_role_permission` VALUES ('865', '23', '23');
INSERT INTO `cms_role_permission` VALUES ('866', '23', '24');
INSERT INTO `cms_role_permission` VALUES ('867', '23', '12');
INSERT INTO `cms_role_permission` VALUES ('868', '43', '24');
INSERT INTO `cms_role_permission` VALUES ('869', '43', '23');
INSERT INTO `cms_role_permission` VALUES ('870', '43', '22');
INSERT INTO `cms_role_permission` VALUES ('871', '43', '21');
INSERT INTO `cms_role_permission` VALUES ('872', '43', '20');
INSERT INTO `cms_role_permission` VALUES ('873', '43', '19');
INSERT INTO `cms_role_permission` VALUES ('874', '43', '18');
INSERT INTO `cms_role_permission` VALUES ('875', '43', '17');
INSERT INTO `cms_role_permission` VALUES ('876', '43', '16');
INSERT INTO `cms_role_permission` VALUES ('877', '43', '15');
INSERT INTO `cms_role_permission` VALUES ('878', '43', '14');
INSERT INTO `cms_role_permission` VALUES ('879', '43', '13');
INSERT INTO `cms_role_permission` VALUES ('880', '43', '12');
INSERT INTO `cms_role_permission` VALUES ('881', '43', '11');
INSERT INTO `cms_role_permission` VALUES ('882', '43', '10');
INSERT INTO `cms_role_permission` VALUES ('883', '43', '9');
INSERT INTO `cms_role_permission` VALUES ('884', '43', '8');
INSERT INTO `cms_role_permission` VALUES ('885', '43', '7');
INSERT INTO `cms_role_permission` VALUES ('886', '43', '6');
INSERT INTO `cms_role_permission` VALUES ('887', '43', '5');
INSERT INTO `cms_role_permission` VALUES ('888', '43', '4');
INSERT INTO `cms_role_permission` VALUES ('889', '43', '3');
INSERT INTO `cms_role_permission` VALUES ('890', '43', '2');
INSERT INTO `cms_role_permission` VALUES ('891', '43', '1');
INSERT INTO `cms_role_permission` VALUES ('899', '6', '19');
INSERT INTO `cms_role_permission` VALUES ('900', '6', '22');
INSERT INTO `cms_role_permission` VALUES ('901', '6', '6');
INSERT INTO `cms_role_permission` VALUES ('902', '6', '7');
INSERT INTO `cms_role_permission` VALUES ('903', '6', '23');
INSERT INTO `cms_role_permission` VALUES ('904', '6', '24');
INSERT INTO `cms_role_permission` VALUES ('905', '6', '18');
INSERT INTO `cms_role_permission` VALUES ('906', '6', '5');
INSERT INTO `cms_role_permission` VALUES ('907', '6', '4');
INSERT INTO `cms_role_permission` VALUES ('908', '6', '3');
INSERT INTO `cms_role_permission` VALUES ('909', '6', '2');
INSERT INTO `cms_role_permission` VALUES ('910', '6', '1');
INSERT INTO `cms_role_permission` VALUES ('911', '6', '16');
INSERT INTO `cms_role_permission` VALUES ('912', '6', '15');
INSERT INTO `cms_role_permission` VALUES ('913', '6', '14');
INSERT INTO `cms_role_permission` VALUES ('914', '6', '13');
INSERT INTO `cms_role_permission` VALUES ('915', '6', '12');
INSERT INTO `cms_role_permission` VALUES ('916', '6', '11');
INSERT INTO `cms_role_permission` VALUES ('917', '6', '10');
INSERT INTO `cms_role_permission` VALUES ('918', '6', '9');
INSERT INTO `cms_role_permission` VALUES ('919', '6', '8');
INSERT INTO `cms_role_permission` VALUES ('920', '6', '17');
INSERT INTO `cms_role_permission` VALUES ('921', '6', '20');
INSERT INTO `cms_role_permission` VALUES ('922', '6', '21');
INSERT INTO `cms_role_permission` VALUES ('923', '44', '24');
INSERT INTO `cms_role_permission` VALUES ('924', '44', '23');
INSERT INTO `cms_role_permission` VALUES ('925', '44', '22');
INSERT INTO `cms_role_permission` VALUES ('926', '44', '21');
INSERT INTO `cms_role_permission` VALUES ('927', '44', '20');
INSERT INTO `cms_role_permission` VALUES ('928', '44', '19');
INSERT INTO `cms_role_permission` VALUES ('929', '44', '18');
INSERT INTO `cms_role_permission` VALUES ('930', '44', '17');
INSERT INTO `cms_role_permission` VALUES ('931', '44', '16');
INSERT INTO `cms_role_permission` VALUES ('932', '44', '15');
INSERT INTO `cms_role_permission` VALUES ('933', '44', '14');
INSERT INTO `cms_role_permission` VALUES ('934', '44', '13');
INSERT INTO `cms_role_permission` VALUES ('935', '44', '12');
INSERT INTO `cms_role_permission` VALUES ('936', '44', '11');
INSERT INTO `cms_role_permission` VALUES ('937', '44', '10');
INSERT INTO `cms_role_permission` VALUES ('938', '44', '9');
INSERT INTO `cms_role_permission` VALUES ('939', '44', '8');
INSERT INTO `cms_role_permission` VALUES ('940', '44', '7');
INSERT INTO `cms_role_permission` VALUES ('941', '44', '6');
INSERT INTO `cms_role_permission` VALUES ('942', '44', '5');
INSERT INTO `cms_role_permission` VALUES ('943', '44', '4');
INSERT INTO `cms_role_permission` VALUES ('944', '44', '3');
INSERT INTO `cms_role_permission` VALUES ('945', '44', '2');
INSERT INTO `cms_role_permission` VALUES ('946', '44', '1');
INSERT INTO `cms_role_permission` VALUES ('947', '45', '24');
INSERT INTO `cms_role_permission` VALUES ('948', '45', '23');
INSERT INTO `cms_role_permission` VALUES ('949', '45', '22');
INSERT INTO `cms_role_permission` VALUES ('950', '45', '21');
INSERT INTO `cms_role_permission` VALUES ('951', '45', '20');
INSERT INTO `cms_role_permission` VALUES ('952', '45', '19');
INSERT INTO `cms_role_permission` VALUES ('953', '45', '18');
INSERT INTO `cms_role_permission` VALUES ('954', '45', '17');
INSERT INTO `cms_role_permission` VALUES ('955', '45', '16');
INSERT INTO `cms_role_permission` VALUES ('956', '45', '15');
INSERT INTO `cms_role_permission` VALUES ('957', '45', '14');
INSERT INTO `cms_role_permission` VALUES ('958', '45', '13');
INSERT INTO `cms_role_permission` VALUES ('959', '45', '12');
INSERT INTO `cms_role_permission` VALUES ('960', '45', '11');
INSERT INTO `cms_role_permission` VALUES ('961', '45', '10');
INSERT INTO `cms_role_permission` VALUES ('962', '45', '9');
INSERT INTO `cms_role_permission` VALUES ('963', '45', '8');
INSERT INTO `cms_role_permission` VALUES ('964', '45', '7');
INSERT INTO `cms_role_permission` VALUES ('965', '45', '6');
INSERT INTO `cms_role_permission` VALUES ('966', '45', '5');
INSERT INTO `cms_role_permission` VALUES ('967', '45', '4');
INSERT INTO `cms_role_permission` VALUES ('968', '45', '3');
INSERT INTO `cms_role_permission` VALUES ('969', '45', '2');
INSERT INTO `cms_role_permission` VALUES ('970', '45', '1');
INSERT INTO `cms_role_permission` VALUES ('971', '46', '24');
INSERT INTO `cms_role_permission` VALUES ('972', '46', '23');
INSERT INTO `cms_role_permission` VALUES ('973', '46', '22');
INSERT INTO `cms_role_permission` VALUES ('974', '46', '21');
INSERT INTO `cms_role_permission` VALUES ('975', '46', '20');
INSERT INTO `cms_role_permission` VALUES ('976', '46', '19');
INSERT INTO `cms_role_permission` VALUES ('977', '46', '18');
INSERT INTO `cms_role_permission` VALUES ('978', '46', '17');
INSERT INTO `cms_role_permission` VALUES ('979', '46', '16');
INSERT INTO `cms_role_permission` VALUES ('980', '46', '15');
INSERT INTO `cms_role_permission` VALUES ('981', '46', '14');
INSERT INTO `cms_role_permission` VALUES ('982', '46', '13');
INSERT INTO `cms_role_permission` VALUES ('983', '46', '12');
INSERT INTO `cms_role_permission` VALUES ('984', '46', '11');
INSERT INTO `cms_role_permission` VALUES ('985', '46', '10');
INSERT INTO `cms_role_permission` VALUES ('986', '46', '9');
INSERT INTO `cms_role_permission` VALUES ('987', '46', '8');
INSERT INTO `cms_role_permission` VALUES ('988', '46', '7');
INSERT INTO `cms_role_permission` VALUES ('989', '46', '6');
INSERT INTO `cms_role_permission` VALUES ('990', '46', '5');
INSERT INTO `cms_role_permission` VALUES ('991', '46', '4');
INSERT INTO `cms_role_permission` VALUES ('992', '46', '3');
INSERT INTO `cms_role_permission` VALUES ('993', '46', '2');
INSERT INTO `cms_role_permission` VALUES ('994', '46', '1');
INSERT INTO `cms_role_permission` VALUES ('995', '47', '24');
INSERT INTO `cms_role_permission` VALUES ('996', '47', '23');
INSERT INTO `cms_role_permission` VALUES ('997', '47', '22');
INSERT INTO `cms_role_permission` VALUES ('998', '47', '21');
INSERT INTO `cms_role_permission` VALUES ('999', '47', '20');
INSERT INTO `cms_role_permission` VALUES ('1000', '47', '19');
INSERT INTO `cms_role_permission` VALUES ('1001', '47', '18');
INSERT INTO `cms_role_permission` VALUES ('1002', '47', '17');
INSERT INTO `cms_role_permission` VALUES ('1003', '47', '16');
INSERT INTO `cms_role_permission` VALUES ('1004', '47', '15');
INSERT INTO `cms_role_permission` VALUES ('1005', '47', '14');
INSERT INTO `cms_role_permission` VALUES ('1006', '47', '13');
INSERT INTO `cms_role_permission` VALUES ('1007', '47', '12');
INSERT INTO `cms_role_permission` VALUES ('1008', '47', '11');
INSERT INTO `cms_role_permission` VALUES ('1009', '47', '10');
INSERT INTO `cms_role_permission` VALUES ('1010', '47', '9');
INSERT INTO `cms_role_permission` VALUES ('1011', '47', '8');
INSERT INTO `cms_role_permission` VALUES ('1012', '47', '7');
INSERT INTO `cms_role_permission` VALUES ('1013', '47', '6');
INSERT INTO `cms_role_permission` VALUES ('1014', '47', '5');
INSERT INTO `cms_role_permission` VALUES ('1015', '47', '4');
INSERT INTO `cms_role_permission` VALUES ('1016', '47', '3');
INSERT INTO `cms_role_permission` VALUES ('1017', '47', '2');
INSERT INTO `cms_role_permission` VALUES ('1018', '47', '1');
INSERT INTO `cms_role_permission` VALUES ('1019', '48', '24');
INSERT INTO `cms_role_permission` VALUES ('1020', '48', '23');
INSERT INTO `cms_role_permission` VALUES ('1021', '48', '22');
INSERT INTO `cms_role_permission` VALUES ('1022', '48', '21');
INSERT INTO `cms_role_permission` VALUES ('1023', '48', '20');
INSERT INTO `cms_role_permission` VALUES ('1024', '48', '19');
INSERT INTO `cms_role_permission` VALUES ('1025', '48', '18');
INSERT INTO `cms_role_permission` VALUES ('1026', '48', '17');
INSERT INTO `cms_role_permission` VALUES ('1027', '48', '16');
INSERT INTO `cms_role_permission` VALUES ('1028', '48', '15');
INSERT INTO `cms_role_permission` VALUES ('1029', '48', '14');
INSERT INTO `cms_role_permission` VALUES ('1030', '48', '13');
INSERT INTO `cms_role_permission` VALUES ('1031', '48', '12');
INSERT INTO `cms_role_permission` VALUES ('1032', '48', '11');
INSERT INTO `cms_role_permission` VALUES ('1033', '48', '10');
INSERT INTO `cms_role_permission` VALUES ('1034', '48', '9');
INSERT INTO `cms_role_permission` VALUES ('1035', '48', '8');
INSERT INTO `cms_role_permission` VALUES ('1036', '48', '7');
INSERT INTO `cms_role_permission` VALUES ('1037', '48', '6');
INSERT INTO `cms_role_permission` VALUES ('1038', '48', '5');
INSERT INTO `cms_role_permission` VALUES ('1039', '48', '4');
INSERT INTO `cms_role_permission` VALUES ('1040', '48', '3');
INSERT INTO `cms_role_permission` VALUES ('1041', '48', '2');
INSERT INTO `cms_role_permission` VALUES ('1042', '48', '1');
INSERT INTO `cms_role_permission` VALUES ('1067', '50', '24');
INSERT INTO `cms_role_permission` VALUES ('1068', '50', '23');
INSERT INTO `cms_role_permission` VALUES ('1069', '50', '22');
INSERT INTO `cms_role_permission` VALUES ('1070', '50', '21');
INSERT INTO `cms_role_permission` VALUES ('1071', '50', '20');
INSERT INTO `cms_role_permission` VALUES ('1072', '50', '19');
INSERT INTO `cms_role_permission` VALUES ('1073', '50', '18');
INSERT INTO `cms_role_permission` VALUES ('1074', '50', '17');
INSERT INTO `cms_role_permission` VALUES ('1075', '50', '16');
INSERT INTO `cms_role_permission` VALUES ('1076', '50', '15');
INSERT INTO `cms_role_permission` VALUES ('1077', '50', '14');
INSERT INTO `cms_role_permission` VALUES ('1078', '50', '13');
INSERT INTO `cms_role_permission` VALUES ('1079', '50', '12');
INSERT INTO `cms_role_permission` VALUES ('1080', '50', '11');
INSERT INTO `cms_role_permission` VALUES ('1081', '50', '10');
INSERT INTO `cms_role_permission` VALUES ('1082', '50', '9');
INSERT INTO `cms_role_permission` VALUES ('1083', '50', '8');
INSERT INTO `cms_role_permission` VALUES ('1084', '50', '7');
INSERT INTO `cms_role_permission` VALUES ('1085', '50', '6');
INSERT INTO `cms_role_permission` VALUES ('1086', '50', '5');
INSERT INTO `cms_role_permission` VALUES ('1087', '50', '4');
INSERT INTO `cms_role_permission` VALUES ('1088', '50', '3');
INSERT INTO `cms_role_permission` VALUES ('1089', '50', '2');
INSERT INTO `cms_role_permission` VALUES ('1090', '50', '1');
INSERT INTO `cms_role_permission` VALUES ('1091', '51', '24');
INSERT INTO `cms_role_permission` VALUES ('1092', '51', '23');
INSERT INTO `cms_role_permission` VALUES ('1093', '51', '22');
INSERT INTO `cms_role_permission` VALUES ('1094', '51', '21');
INSERT INTO `cms_role_permission` VALUES ('1095', '51', '20');
INSERT INTO `cms_role_permission` VALUES ('1096', '51', '19');
INSERT INTO `cms_role_permission` VALUES ('1097', '51', '18');
INSERT INTO `cms_role_permission` VALUES ('1098', '51', '17');
INSERT INTO `cms_role_permission` VALUES ('1099', '51', '16');
INSERT INTO `cms_role_permission` VALUES ('1100', '51', '15');
INSERT INTO `cms_role_permission` VALUES ('1101', '51', '14');
INSERT INTO `cms_role_permission` VALUES ('1102', '51', '13');
INSERT INTO `cms_role_permission` VALUES ('1103', '51', '12');
INSERT INTO `cms_role_permission` VALUES ('1104', '51', '11');
INSERT INTO `cms_role_permission` VALUES ('1105', '51', '10');
INSERT INTO `cms_role_permission` VALUES ('1106', '51', '9');
INSERT INTO `cms_role_permission` VALUES ('1107', '51', '8');
INSERT INTO `cms_role_permission` VALUES ('1108', '51', '7');
INSERT INTO `cms_role_permission` VALUES ('1109', '51', '6');
INSERT INTO `cms_role_permission` VALUES ('1110', '51', '5');
INSERT INTO `cms_role_permission` VALUES ('1111', '51', '4');
INSERT INTO `cms_role_permission` VALUES ('1112', '51', '3');
INSERT INTO `cms_role_permission` VALUES ('1113', '51', '2');
INSERT INTO `cms_role_permission` VALUES ('1114', '51', '1');
INSERT INTO `cms_role_permission` VALUES ('1115', '52', '24');
INSERT INTO `cms_role_permission` VALUES ('1116', '52', '23');
INSERT INTO `cms_role_permission` VALUES ('1117', '52', '22');
INSERT INTO `cms_role_permission` VALUES ('1118', '52', '21');
INSERT INTO `cms_role_permission` VALUES ('1119', '52', '20');
INSERT INTO `cms_role_permission` VALUES ('1120', '52', '19');
INSERT INTO `cms_role_permission` VALUES ('1121', '52', '18');
INSERT INTO `cms_role_permission` VALUES ('1122', '52', '17');
INSERT INTO `cms_role_permission` VALUES ('1123', '52', '16');
INSERT INTO `cms_role_permission` VALUES ('1124', '52', '15');
INSERT INTO `cms_role_permission` VALUES ('1125', '52', '14');
INSERT INTO `cms_role_permission` VALUES ('1126', '52', '13');
INSERT INTO `cms_role_permission` VALUES ('1127', '52', '12');
INSERT INTO `cms_role_permission` VALUES ('1128', '52', '11');
INSERT INTO `cms_role_permission` VALUES ('1129', '52', '10');
INSERT INTO `cms_role_permission` VALUES ('1130', '52', '9');
INSERT INTO `cms_role_permission` VALUES ('1131', '52', '8');
INSERT INTO `cms_role_permission` VALUES ('1132', '52', '7');
INSERT INTO `cms_role_permission` VALUES ('1133', '52', '6');
INSERT INTO `cms_role_permission` VALUES ('1134', '52', '5');
INSERT INTO `cms_role_permission` VALUES ('1135', '52', '4');
INSERT INTO `cms_role_permission` VALUES ('1136', '52', '3');
INSERT INTO `cms_role_permission` VALUES ('1137', '52', '2');
INSERT INTO `cms_role_permission` VALUES ('1138', '52', '1');
INSERT INTO `cms_role_permission` VALUES ('1139', '53', '6');
INSERT INTO `cms_role_permission` VALUES ('1140', '53', '19');
INSERT INTO `cms_role_permission` VALUES ('1141', '53', '18');
INSERT INTO `cms_role_permission` VALUES ('1142', '53', '17');
INSERT INTO `cms_role_permission` VALUES ('1143', '53', '1');
INSERT INTO `cms_role_permission` VALUES ('1144', '53', '11');
INSERT INTO `cms_role_permission` VALUES ('1145', '53', '9');
INSERT INTO `cms_role_permission` VALUES ('1146', '53', '8');
INSERT INTO `cms_role_permission` VALUES ('1147', '54', '24');
INSERT INTO `cms_role_permission` VALUES ('1148', '54', '23');
INSERT INTO `cms_role_permission` VALUES ('1149', '54', '22');
INSERT INTO `cms_role_permission` VALUES ('1150', '54', '21');
INSERT INTO `cms_role_permission` VALUES ('1151', '54', '20');
INSERT INTO `cms_role_permission` VALUES ('1152', '54', '19');
INSERT INTO `cms_role_permission` VALUES ('1153', '54', '18');
INSERT INTO `cms_role_permission` VALUES ('1154', '54', '17');
INSERT INTO `cms_role_permission` VALUES ('1155', '54', '16');
INSERT INTO `cms_role_permission` VALUES ('1156', '54', '15');
INSERT INTO `cms_role_permission` VALUES ('1157', '54', '14');
INSERT INTO `cms_role_permission` VALUES ('1158', '54', '13');
INSERT INTO `cms_role_permission` VALUES ('1159', '54', '12');
INSERT INTO `cms_role_permission` VALUES ('1160', '54', '11');
INSERT INTO `cms_role_permission` VALUES ('1161', '54', '10');
INSERT INTO `cms_role_permission` VALUES ('1162', '54', '9');
INSERT INTO `cms_role_permission` VALUES ('1163', '54', '8');
INSERT INTO `cms_role_permission` VALUES ('1164', '54', '7');
INSERT INTO `cms_role_permission` VALUES ('1165', '54', '6');
INSERT INTO `cms_role_permission` VALUES ('1166', '54', '5');
INSERT INTO `cms_role_permission` VALUES ('1167', '54', '4');
INSERT INTO `cms_role_permission` VALUES ('1168', '54', '3');
INSERT INTO `cms_role_permission` VALUES ('1169', '54', '2');
INSERT INTO `cms_role_permission` VALUES ('1170', '54', '1');
INSERT INTO `cms_role_permission` VALUES ('1171', '49', '9');
INSERT INTO `cms_role_permission` VALUES ('1172', '49', '10');
INSERT INTO `cms_role_permission` VALUES ('1173', '49', '11');
INSERT INTO `cms_role_permission` VALUES ('1174', '49', '13');
INSERT INTO `cms_role_permission` VALUES ('1175', '49', '14');
INSERT INTO `cms_role_permission` VALUES ('1176', '49', '15');
INSERT INTO `cms_role_permission` VALUES ('1177', '49', '16');
INSERT INTO `cms_role_permission` VALUES ('1178', '49', '17');
INSERT INTO `cms_role_permission` VALUES ('1179', '49', '18');
INSERT INTO `cms_role_permission` VALUES ('1180', '49', '19');
INSERT INTO `cms_role_permission` VALUES ('1181', '49', '20');
INSERT INTO `cms_role_permission` VALUES ('1182', '49', '21');
INSERT INTO `cms_role_permission` VALUES ('1183', '49', '22');
INSERT INTO `cms_role_permission` VALUES ('1184', '49', '1');
INSERT INTO `cms_role_permission` VALUES ('1185', '49', '3');
INSERT INTO `cms_role_permission` VALUES ('1186', '49', '4');
INSERT INTO `cms_role_permission` VALUES ('1187', '49', '5');
INSERT INTO `cms_role_permission` VALUES ('1188', '49', '6');
INSERT INTO `cms_role_permission` VALUES ('1189', '49', '7');
INSERT INTO `cms_role_permission` VALUES ('1190', '49', '2');
INSERT INTO `cms_role_permission` VALUES ('1191', '49', '23');
INSERT INTO `cms_role_permission` VALUES ('1192', '49', '24');
INSERT INTO `cms_role_permission` VALUES ('1193', '49', '12');
INSERT INTO `cms_role_permission` VALUES ('1194', '49', '8');
INSERT INTO `cms_role_permission` VALUES ('1195', '17', '6');
INSERT INTO `cms_role_permission` VALUES ('1211', '21', '11');
INSERT INTO `cms_role_permission` VALUES ('1212', '21', '1');
INSERT INTO `cms_role_permission` VALUES ('1213', '21', '3');
INSERT INTO `cms_role_permission` VALUES ('1214', '21', '4');
INSERT INTO `cms_role_permission` VALUES ('1215', '21', '5');
INSERT INTO `cms_role_permission` VALUES ('1216', '21', '6');
INSERT INTO `cms_role_permission` VALUES ('1217', '21', '7');
INSERT INTO `cms_role_permission` VALUES ('1218', '21', '2');
INSERT INTO `cms_role_permission` VALUES ('1219', '21', '23');
INSERT INTO `cms_role_permission` VALUES ('1220', '21', '24');

-- ----------------------------
-- Table structure for cms_sales
-- ----------------------------
DROP TABLE IF EXISTS `cms_sales`;
CREATE TABLE `cms_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(255) DEFAULT NULL,
  `t_code` varchar(255) DEFAULT NULL,
  `country_name` varchar(255) DEFAULT NULL,
  `english_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_sales
-- ----------------------------
INSERT INTO `cms_sales` VALUES ('1', '1111', '11', '北京', 'beijing');

-- ----------------------------
-- Table structure for cms_service
-- ----------------------------
DROP TABLE IF EXISTS `cms_service`;
CREATE TABLE `cms_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` varchar(255) DEFAULT NULL,
  `service_id` varchar(255) DEFAULT NULL,
  `service_cname` varchar(255) DEFAULT NULL,
  `admin` varchar(255) DEFAULT NULL,
  `service_type` varchar(255) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `df` varchar(255) DEFAULT NULL,
  `org_code` varchar(255) DEFAULT NULL,
  `service_ename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_service
-- ----------------------------

-- ----------------------------
-- Table structure for cms_user
-- ----------------------------
DROP TABLE IF EXISTS `cms_user`;
CREATE TABLE `cms_user` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `user_ename` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_cname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_identity_type` varchar(255) DEFAULT NULL,
  `user_identity_card_no` int(11) DEFAULT NULL,
  `user_location` varchar(255) NOT NULL,
  `login_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) DEFAULT NULL,
  `id_pic_front` varchar(255) DEFAULT NULL,
  `id_pic_behind` varchar(255) DEFAULT NULL,
  `default_logistics_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `user_wxid` int(11) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `managed_business` varchar(255) DEFAULT NULL,
  `user_level` varchar(255) DEFAULT NULL,
  `retry_time` int(11) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `user_status` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `org_code` varchar(255) DEFAULT NULL,
  `df` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of cms_user
-- ----------------------------
INSERT INTO `cms_user` VALUES ('1', '管理员1', 'admin', '4QrcOUm6Wau+VuBX8g+IPg==', 'admin', '17610059226', null, null, null, 'admin', '2019-03-27 02:13:40', '2019-03-27 02:13:40', null, null, null, null, '4', null, null, null, null, null, null, 'A', null, null, null, '0');
INSERT INTO `cms_user` VALUES ('2', '普通员工', 'test', 'ISMvKXpXpadDiUoOSoAfww==', null, null, null, null, null, 'test', '2019-03-13 02:00:26', '2019-03-13 02:00:26', null, null, null, null, '4', null, null, null, null, null, null, 'A', null, null, null, '0');

-- ----------------------------
-- Table structure for cms_user_role
-- ----------------------------
DROP TABLE IF EXISTS `cms_user_role`;
CREATE TABLE `cms_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='用户角色关系表';

-- ----------------------------
-- Records of cms_user_role
-- ----------------------------
INSERT INTO `cms_user_role` VALUES ('3', '213', '5');
INSERT INTO `cms_user_role` VALUES ('5', '246', '1');
INSERT INTO `cms_user_role` VALUES ('9', '285', '1');
INSERT INTO `cms_user_role` VALUES ('15', '250', '7');
INSERT INTO `cms_user_role` VALUES ('18', '287', '6');
INSERT INTO `cms_user_role` VALUES ('20', '220', '2');
INSERT INTO `cms_user_role` VALUES ('21', '275', '5');
INSERT INTO `cms_user_role` VALUES ('27', '35', '8');
INSERT INTO `cms_user_role` VALUES ('28', '28', '8');
INSERT INTO `cms_user_role` VALUES ('30', '5', '8');
INSERT INTO `cms_user_role` VALUES ('32', '294', '11');
INSERT INTO `cms_user_role` VALUES ('33', '1', '12');
INSERT INTO `cms_user_role` VALUES ('34', '26', '8');
INSERT INTO `cms_user_role` VALUES ('36', '7', '8');
INSERT INTO `cms_user_role` VALUES ('42', '301', '13');
INSERT INTO `cms_user_role` VALUES ('46', '320', '25');
INSERT INTO `cms_user_role` VALUES ('47', '321', '26');
INSERT INTO `cms_user_role` VALUES ('48', '322', '27');
INSERT INTO `cms_user_role` VALUES ('49', '322', '28');
INSERT INTO `cms_user_role` VALUES ('50', '323', '30');
INSERT INTO `cms_user_role` VALUES ('52', '324', '31');
INSERT INTO `cms_user_role` VALUES ('54', '299', '10');
INSERT INTO `cms_user_role` VALUES ('56', '286', '1');
INSERT INTO `cms_user_role` VALUES ('58', '302', '23');
INSERT INTO `cms_user_role` VALUES ('59', '332', '43');
INSERT INTO `cms_user_role` VALUES ('60', '340', '44');
INSERT INTO `cms_user_role` VALUES ('61', '340', '45');
INSERT INTO `cms_user_role` VALUES ('62', '341', '46');
INSERT INTO `cms_user_role` VALUES ('63', '344', '47');
INSERT INTO `cms_user_role` VALUES ('64', '345', '48');
INSERT INTO `cms_user_role` VALUES ('66', '365', '50');
INSERT INTO `cms_user_role` VALUES ('67', '367', '51');
INSERT INTO `cms_user_role` VALUES ('68', '368', '51');
INSERT INTO `cms_user_role` VALUES ('69', '369', '52');
INSERT INTO `cms_user_role` VALUES ('70', '370', '52');
INSERT INTO `cms_user_role` VALUES ('71', '371', '54');
INSERT INTO `cms_user_role` VALUES ('72', '363', '49');
INSERT INTO `cms_user_role` VALUES ('75', '291', '21');
INSERT INTO `cms_user_role` VALUES ('76', '4', '21');
INSERT INTO `cms_user_role` VALUES ('77', '300', '18');
