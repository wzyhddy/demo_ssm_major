/*
 Navicat Premium Data Transfer

 Source Server         : wzy
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : localhost:3306
 Source Schema         : majordb

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 23/04/2023 11:39:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college`  (
  `cid` int NOT NULL AUTO_INCREMENT COMMENT '学院编号',
  `cname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '学院名称',
  `caddress` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '学院地址',
  `createtime` date NOT NULL COMMENT '创办时间',
  `cpic` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '学院院徽',
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 224 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES (145, '马克思主义学院', '洛阳市', '1921-10-16', 'lynulogo.png');
INSERT INTO `college` VALUES (146, '文学院', '南京市', '1956-01-23', 'lynulogo.png');
INSERT INTO `college` VALUES (147, '历史文化学院', '桐柏县', '1911-10-16', 'haiyang.png');
INSERT INTO `college` VALUES (148, '法学与社会学院', '郑州市', '1926-10-16', '1618569490493.jpg');
INSERT INTO `college` VALUES (149, '外国语学院', '纽约', '1956-01-23', 'lynulogo.png');
INSERT INTO `college` VALUES (150, '数学科学学院', '华盛顿', '1926-10-16', '1618569490493.jpg');
INSERT INTO `college` VALUES (151, '物理与电子信息学院', '西南', '1921-10-16', 'bj.png');
INSERT INTO `college` VALUES (152, '化学化工学院', '上海市', '1926-10-16', 'bj.png');
INSERT INTO `college` VALUES (153, '信息技术学院', '西南', '1921-10-16', '');
INSERT INTO `college` VALUES (155, '体育学院', '郑州市', '1956-01-23', '');
INSERT INTO `college` VALUES (156, '音乐学院', '新疆', '1921-10-16', '');
INSERT INTO `college` VALUES (157, '美术与艺术设计学院', '广州', '1921-10-16', '');
INSERT INTO `college` VALUES (158, '教育科学学院', '深圳市', '1956-01-23', '');
INSERT INTO `college` VALUES (159, '生命科学学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (160, '商学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (161, '新闻与传播学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (162, '国土与旅游学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (163, '电子商务学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (164, '食品与药品学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (165, '国际教育学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (166, '继续教育学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (167, '医学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (168, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', 'lynulogo.png');
INSERT INTO `college` VALUES (169, '南阳理工学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (170, '南阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (171, '安阳工学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (172, '物理与电子信息学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (173, '物理与电子信息学院', '南阳市', '1921-10-16', 'haiyang.png');
INSERT INTO `college` VALUES (174, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '1655123343112.jpg.jpg');
INSERT INTO `college` VALUES (175, '圣彼得堡学院', '圣彼得堡', '1921-10-16', 'haiyang.png');
INSERT INTO `college` VALUES (176, '沈阳医学院', '沈阳市', '1956-01-23', 'haiyang.png');
INSERT INTO `college` VALUES (177, '麻省理工学院', '美国', '1956-01-23', 'haiyang.png');
INSERT INTO `college` VALUES (178, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (179, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '1655123343112.jpg.jpg');
INSERT INTO `college` VALUES (180, '南阳理工学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (181, '洛阳师范学院', 'sparrow-telling-his-heart', '1956-01-23', '');
INSERT INTO `college` VALUES (182, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', 'bj.png');
INSERT INTO `college` VALUES (183, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '1655123343112.jpg.jpg');
INSERT INTO `college` VALUES (184, '洛阳师范学院', 'sparrow-telling-his-heart', '1956-01-23', '1655123343112.jpg.jpg');
INSERT INTO `college` VALUES (185, '洛阳师范学院', 'sparrow-telling-his-heart', '1956-01-23', '');
INSERT INTO `college` VALUES (186, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (187, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (188, '洛阳师范学院', 'sparrow-telling-his-heart', '1945-10-31', '');
INSERT INTO `college` VALUES (189, '物理与电子信息学院', 'sparrow-telling-his-heart', '1956-01-23', '');
INSERT INTO `college` VALUES (190, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (191, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (192, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (193, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (194, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (195, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (196, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (197, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (198, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (199, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (200, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (201, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (202, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (203, '物理与电子信息学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (204, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (205, '物理与电子信息学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (206, '洛阳师范学院', 'sparrow-telling-his-heart', '1956-01-23', '');
INSERT INTO `college` VALUES (207, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (208, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (209, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (210, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (211, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '1655123343112.jpg.jpg');
INSERT INTO `college` VALUES (212, '洛阳师范大学', 'sparrow-telling-his-heart', '1921-10-16', '1655123343112.jpg.jpg');
INSERT INTO `college` VALUES (213, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (214, '洛阳师范学院', 'sparrow-telling-his-heart', '1956-01-23', '');
INSERT INTO `college` VALUES (215, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (216, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (217, '南阳理工学院', '南阳市', '1956-01-23', 'haiyang.png');
INSERT INTO `college` VALUES (218, '洛阳师范学院', 'sparrow-telling-his-heart', '1956-01-23', '');
INSERT INTO `college` VALUES (219, '洛阳师范学院', 'sparrow-telling-his-heart', '1956-01-23', '');
INSERT INTO `college` VALUES (220, '洛阳师范学院', 'sparrow-telling-his-heart', '1956-01-23', '');
INSERT INTO `college` VALUES (221, '洛阳师范学院', 'sparrow-telling-his-heart', '1956-01-23', '');
INSERT INTO `college` VALUES (222, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');
INSERT INTO `college` VALUES (223, '洛阳师范学院', 'sparrow-telling-his-heart', '1921-10-16', '');

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major`  (
  `mid` int NOT NULL AUTO_INCREMENT COMMENT '专业编号',
  `mname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '专业名称',
  `credit` int NOT NULL COMMENT '学分',
  `LifeYear` int NOT NULL COMMENT '学制',
  `introduction` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '专业介绍',
  `cid` int NOT NULL,
  PRIMARY KEY (`mid`) USING BTREE,
  INDEX `cid`(`cid` ASC) USING BTREE,
  CONSTRAINT `major_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `college` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES (61, '思想政治', 180, 5, '  思想道德是做人的基本素质', 146);
INSERT INTO `major` VALUES (62, '社会主义', 160, 2, '   社会主义现代化新征程', 145);
INSERT INTO `major` VALUES (63, '马克思主义', 166, 6, '   马克思主义是指导人类进步的阶梯', 157);
INSERT INTO `major` VALUES (64, '马克思和恩格斯主义', 183, 6, '      马克思是人类思想走向进步的伟大阶梯', 171);
INSERT INTO `major` VALUES (66, '文学', 42, 4, '  文学是一门充满艺术色彩的学科', 146);
INSERT INTO `major` VALUES (68, '历史学', 180, 4, '  以史为鉴知兴衰以人为镜明得失以铜为镜正衣冠', 146);
INSERT INTO `major` VALUES (69, '法律学', 180, 4, '法律捍卫正义，为弱者打抱不平', 148);
INSERT INTO `major` VALUES (70, '计算机专业', 160, 4, '  计算机是最热门的专业', 146);
INSERT INTO `major` VALUES (73, '地理学', 180, 2, ' 研究地质能帮我们更清楚的认识这个地球', 145);
INSERT INTO `major` VALUES (75, '逻辑学', 160, 4, '的框架的设计的建设计划的时间的时间和大数据', 168);
INSERT INTO `major` VALUES (76, '神经康复学', 160, 2, '速度较快的数据库的设计第四', 167);
INSERT INTO `major` VALUES (77, '经济学', 160, 4, 'VS觉得很就是回家后i看地理', 160);
INSERT INTO `major` VALUES (78, '政治经济学', 160, 2, '政治经济学是研究贸易和生产及其与海关、法律和政府的关系，以及由于与国际政治的相互作用而产生的或受其影响的问题。政治经济学专业的毕业生有各种各样的就业机会，如经济学家、金融分析师、通讯员和政治顾问', 160);
INSERT INTO `major` VALUES (79, '人工智能', 160, 4, '人工智能改变了人类的时代，未来绝对是AI的时代', 153);
INSERT INTO `major` VALUES (80, '区块链', 160, 4, ' 洛阳师范学院是一所省属普通高等本科院校，位于千年帝都、牡丹花城、丝路起点——洛阳。学校地处伊水之滨，万安山下，东汉太学便发端于此。南望二程故里，传颂着程门立雪、鲁台望道的佳话；西望关林和世界文化遗产龙门石窟，绽放着世界文化遗产的璀璨光芒。', 155);
INSERT INTO `major` VALUES (83, 'web开发', 73, 6, '', 153);
INSERT INTO `major` VALUES (84, 'Java开发', 26, 3, '是的但是但是犯得上大师傅', 153);
INSERT INTO `major` VALUES (85, '软件工程', 160, 4, '大师史蒂芬地方大师傅士大夫大师傅', 168);
INSERT INTO `major` VALUES (86, '软件工程', 160, 4, '立地成佛一股火v就包括了你们', 163);
INSERT INTO `major` VALUES (87, '物理', 120, 5, '常规赛的框架的设计看到顾客', 172);
INSERT INTO `major` VALUES (88, '法学与社会学', 4, 8, '收到付款方式的接口1', 148);
INSERT INTO `major` VALUES (89, '圣彼得堡', 1000, 4, '但是肯定是假的时间空间', 175);
INSERT INTO `major` VALUES (90, '化学', 200, 4, '俺是个随从丢哦死哦i哦', 174);
INSERT INTO `major` VALUES (92, '人工智能', 180, 2, '成绩考得好数据库hi第四', 174);
INSERT INTO `major` VALUES (93, '软件工程', 160, 100, '和大家卡多少机会更大', 150);
INSERT INTO `major` VALUES (94, '软件工程', 160, 4, '马上的撒', 148);
INSERT INTO `major` VALUES (95, '软件工程', 160, 3, '和采购计划恐惧包括', 146);
INSERT INTO `major` VALUES (96, '软件工程', 160, 2, '成功化解还不包括', 145);
INSERT INTO `major` VALUES (97, '软件工程', 160, 4, 'fxgcvkjk', 162);
INSERT INTO `major` VALUES (98, '软件工程', 197, 4, ' tydyugkhlj;lk', 162);
INSERT INTO `major` VALUES (99, '马克思主义', 160, 4, '现代国防和采购计划扩建', 145);
INSERT INTO `major` VALUES (100, '软件工程', 160, 4, '会吃饭感觉被坑了', 164);
INSERT INTO `major` VALUES (101, '软件工程', 160, 4, '浮现出赶紧离开', 146);
INSERT INTO `major` VALUES (102, '物理', 180, 4, '碍于覅哦大声的哭', 151);
INSERT INTO `major` VALUES (103, '软件工程', 180, 4, '非常关键看你看', 145);

SET FOREIGN_KEY_CHECKS = 1;
