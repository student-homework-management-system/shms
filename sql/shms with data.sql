/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50515
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50515
 File Encoding         : 65001

 Date: 14/05/2018 11:31:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) NOT NULL DEFAULT 0,
  `class_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `class_num` tinyint(4) NOT NULL DEFAULT 0,
  `major_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `Refmajor25`(`major_id`) USING BTREE,
  CONSTRAINT `Refmajor25` FOREIGN KEY (`major_id`) REFERENCES `major` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (1, 2011, '1班', 1, 1);
INSERT INTO `class` VALUES (2, 2012, '2班', 2, 2);
INSERT INTO `class` VALUES (3, 2013, '3班', 3, 3);
INSERT INTO `class` VALUES (4, 2014, '4班', 4, 4);
INSERT INTO `class` VALUES (5, 2015, '5班', 1, 5);
INSERT INTO `class` VALUES (6, 2016, '6班', 2, 6);
INSERT INTO `class` VALUES (7, 2017, '7班', 3, 7);
INSERT INTO `class` VALUES (8, 2011, '8班', 4, 8);
INSERT INTO `class` VALUES (9, 2012, '9班', 1, 9);
INSERT INTO `class` VALUES (10, 2013, '10班', 2, 10);
INSERT INTO `class` VALUES (11, 2014, '11班', 3, 1);
INSERT INTO `class` VALUES (12, 2015, '12班', 4, 2);
INSERT INTO `class` VALUES (13, 2016, '13班', 1, 3);
INSERT INTO `class` VALUES (14, 2017, '14班', 2, 4);
INSERT INTO `class` VALUES (15, 2011, '15班', 3, 5);
INSERT INTO `class` VALUES (16, 2012, '16班', 4, 6);
INSERT INTO `class` VALUES (17, 2013, '17班', 1, 7);
INSERT INTO `class` VALUES (18, 2014, '18班', 2, 8);
INSERT INTO `class` VALUES (19, 2015, '19班', 3, 9);
INSERT INTO `class` VALUES (20, 2016, '20班', 4, 10);

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UQ4`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, '1课程', '工科', '1课程是一个好课程');
INSERT INTO `course` VALUES (2, '2课程', '工科', '2课程是一个好课程');
INSERT INTO `course` VALUES (3, '3课程', '工科', '3课程是一个好课程');
INSERT INTO `course` VALUES (4, '4课程', '工科', '4课程是一个好课程');
INSERT INTO `course` VALUES (5, '5课程', '工科', '5课程是一个好课程');
INSERT INTO `course` VALUES (6, '6课程', '工科', '6课程是一个好课程');
INSERT INTO `course` VALUES (7, '7课程', '工科', '7课程是一个好课程');
INSERT INTO `course` VALUES (8, '8课程', '工科', '8课程是一个好课程');
INSERT INTO `course` VALUES (9, '9课程', '工科', '9课程是一个好课程');
INSERT INTO `course` VALUES (10, '10课程', '工科', '10课程是一个好课程');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UQ1`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, '1院', '1是一个好学院', '93416559564', '525755658@qq.com');
INSERT INTO `department` VALUES (2, '2院', '2是一个好学院', '133416559564', '1525755658@qq.com');
INSERT INTO `department` VALUES (3, '3院', '3是一个好学院', '93416559564', '1225755658@qq.com');
INSERT INTO `department` VALUES (4, '4院', '4是一个好学院', '33416559564', '1925755658@qq.com');
INSERT INTO `department` VALUES (5, '5院', '5是一个好学院', '153416559564', '1925755658@qq.com');

-- ----------------------------
-- Table structure for department_branch
-- ----------------------------
DROP TABLE IF EXISTS `department_branch`;
CREATE TABLE `department_branch`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `department_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UQ3`(`name`) USING BTREE,
  INDEX `Refdepartment23`(`department_id`) USING BTREE,
  CONSTRAINT `Refdepartment23` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of department_branch
-- ----------------------------
INSERT INTO `department_branch` VALUES (1, '1分支', '1系是一个好系', '83458631465', '3286815454@qq.com', 5);
INSERT INTO `department_branch` VALUES (2, '2分支', '2系是一个好系', '763458631465', '3586815454@qq.com', 2);
INSERT INTO `department_branch` VALUES (3, '3分支', '3系是一个好系', '773458631465', '5486815454@qq.com', 1);
INSERT INTO `department_branch` VALUES (4, '4分支', '4系是一个好系', '53458631465', '3286815454@qq.com', 1);
INSERT INTO `department_branch` VALUES (5, '5分支', '5系是一个好系', '293458631465', '386815454@qq.com', 4);
INSERT INTO `department_branch` VALUES (6, '6分支', '6系是一个好系', '333458631465', '5686815454@qq.com', 2);
INSERT INTO `department_branch` VALUES (7, '7分支', '7系是一个好系', '233458631465', '7286815454@qq.com', 5);
INSERT INTO `department_branch` VALUES (8, '8分支', '8系是一个好系', '773458631465', '186815454@qq.com', 3);
INSERT INTO `department_branch` VALUES (9, '9分支', '9系是一个好系', '433458631465', '4786815454@qq.com', 4);
INSERT INTO `department_branch` VALUES (10, '10分支', '10系是一个好系', '373458631465', '3286815454@qq.com', 4);

-- ----------------------------
-- Table structure for directory
-- ----------------------------
DROP TABLE IF EXISTS `directory`;
CREATE TABLE `directory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `create time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `opened_course_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `Refopened_course54`(`opened_course_id`) USING BTREE,
  CONSTRAINT `Refopened_course54` FOREIGN KEY (`opened_course_id`) REFERENCES `opened_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for examination
-- ----------------------------
DROP TABLE IF EXISTS `examination`;
CREATE TABLE `examination`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total_score` float(8, 0) NOT NULL DEFAULT 0,
  `single_chioce_amount` tinyint(4) NOT NULL DEFAULT 0,
  `multipe_chioce_amount` tinyint(4) NOT NULL DEFAULT 0,
  `blank_filling_amount` tinyint(4) NOT NULL DEFAULT 0,
  `true_or_false_amount` tinyint(4) NOT NULL DEFAULT 0,
  `true_or_false_score` float(8, 0) NOT NULL DEFAULT 0,
  `single_choice_score` float(8, 0) NOT NULL DEFAULT 0,
  `multiple_choice_score` float(8, 0) NOT NULL DEFAULT 0,
  `blank_filling_score` float(8, 0) NOT NULL DEFAULT 0,
  `exam_time` int(11) NOT NULL DEFAULT 0,
  `start time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `creator` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `opened_course_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `Refopened_course29`(`opened_course_id`) USING BTREE,
  CONSTRAINT `Refopened_course29` FOREIGN KEY (`opened_course_id`) REFERENCES `opened_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for exmation_question_answer
-- ----------------------------
DROP TABLE IF EXISTS `exmation_question_answer`;
CREATE TABLE `exmation_question_answer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `question_score` float(8, 0) NOT NULL DEFAULT 0,
  `student_id` int(11) NOT NULL DEFAULT 0,
  `exam_question_id` int(11) NOT NULL DEFAULT 0,
  `exam_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `Refquestion43`(`exam_question_id`) USING BTREE,
  INDEX `Refexamination44`(`exam_id`) USING BTREE,
  INDEX `Refstudent38`(`student_id`) USING BTREE,
  CONSTRAINT `Refstudent38` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Refexamination44` FOREIGN KEY (`exam_id`) REFERENCES `examination` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Refquestion43` FOREIGN KEY (`exam_question_id`) REFERENCES `question` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for experiment
-- ----------------------------
DROP TABLE IF EXISTS `experiment`;
CREATE TABLE `experiment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `start time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `commit_amount` int(11) NOT NULL DEFAULT 0,
  `average` float(8, 0) NOT NULL DEFAULT 0,
  `opened_course_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `Refopened_course10`(`opened_course_id`) USING BTREE,
  CONSTRAINT `Refopened_course10` FOREIGN KEY (`opened_course_id`) REFERENCES `opened_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of experiment
-- ----------------------------
INSERT INTO `experiment` VALUES (1, '无附件', '实验1', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 40, 72, 1);
INSERT INTO `experiment` VALUES (2, '无附件', '实验2', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 74, 72, 2);
INSERT INTO `experiment` VALUES (3, '无附件', '实验3', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 149, 74, 3);
INSERT INTO `experiment` VALUES (4, '无附件', '实验4', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 89, 62, 4);
INSERT INTO `experiment` VALUES (5, '无附件', '实验5', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 131, 74, 5);
INSERT INTO `experiment` VALUES (6, '无附件', '实验6', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 38, 61, 6);
INSERT INTO `experiment` VALUES (7, '无附件', '实验7', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 106, 72, 7);
INSERT INTO `experiment` VALUES (8, '无附件', '实验8', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 142, 64, 8);
INSERT INTO `experiment` VALUES (9, '无附件', '实验9', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 47, 68, 9);
INSERT INTO `experiment` VALUES (10, '无附件', '实验10', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 111, 63, 10);
INSERT INTO `experiment` VALUES (11, '无附件', '实验11', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 66, 65, 1);
INSERT INTO `experiment` VALUES (12, '无附件', '实验12', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 67, 60, 2);
INSERT INTO `experiment` VALUES (13, '无附件', '实验13', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 102, 72, 3);
INSERT INTO `experiment` VALUES (14, '无附件', '实验14', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 73, 74, 4);
INSERT INTO `experiment` VALUES (15, '无附件', '实验15', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 108, 65, 5);
INSERT INTO `experiment` VALUES (16, '无附件', '实验16', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 137, 67, 6);
INSERT INTO `experiment` VALUES (17, '无附件', '实验17', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 35, 64, 7);
INSERT INTO `experiment` VALUES (18, '无附件', '实验18', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 149, 67, 8);
INSERT INTO `experiment` VALUES (19, '无附件', '实验19', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 46, 70, 9);
INSERT INTO `experiment` VALUES (20, '无附件', '实验20', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 85, 71, 10);
INSERT INTO `experiment` VALUES (21, '无附件', '实验21', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 59, 67, 1);
INSERT INTO `experiment` VALUES (22, '无附件', '实验22', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 100, 63, 2);
INSERT INTO `experiment` VALUES (23, '无附件', '实验23', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 96, 72, 3);
INSERT INTO `experiment` VALUES (24, '无附件', '实验24', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 150, 61, 4);
INSERT INTO `experiment` VALUES (25, '无附件', '实验25', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 80, 62, 5);
INSERT INTO `experiment` VALUES (26, '无附件', '实验26', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 62, 70, 6);
INSERT INTO `experiment` VALUES (27, '无附件', '实验27', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 55, 67, 7);
INSERT INTO `experiment` VALUES (28, '无附件', '实验28', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 125, 62, 8);
INSERT INTO `experiment` VALUES (29, '无附件', '实验29', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 69, 70, 9);
INSERT INTO `experiment` VALUES (30, '无附件', '实验30', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 46, 71, 10);
INSERT INTO `experiment` VALUES (31, '无附件', '实验31', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 30, 73, 1);
INSERT INTO `experiment` VALUES (32, '无附件', '实验32', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 52, 70, 2);
INSERT INTO `experiment` VALUES (33, '无附件', '实验33', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 90, 68, 3);
INSERT INTO `experiment` VALUES (34, '无附件', '实验34', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 80, 74, 4);
INSERT INTO `experiment` VALUES (35, '无附件', '实验35', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 82, 70, 5);
INSERT INTO `experiment` VALUES (36, '无附件', '实验36', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 121, 67, 6);
INSERT INTO `experiment` VALUES (37, '无附件', '实验37', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 69, 75, 7);
INSERT INTO `experiment` VALUES (38, '无附件', '实验38', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 64, 73, 8);
INSERT INTO `experiment` VALUES (39, '无附件', '实验39', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 147, 70, 9);
INSERT INTO `experiment` VALUES (40, '无附件', '实验40', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 77, 69, 10);
INSERT INTO `experiment` VALUES (41, '无附件', '实验41', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 109, 67, 1);
INSERT INTO `experiment` VALUES (42, '无附件', '实验42', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 114, 64, 2);
INSERT INTO `experiment` VALUES (43, '无附件', '实验43', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 108, 68, 3);
INSERT INTO `experiment` VALUES (44, '无附件', '实验44', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 32, 67, 4);
INSERT INTO `experiment` VALUES (45, '无附件', '实验45', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 137, 69, 5);
INSERT INTO `experiment` VALUES (46, '无附件', '实验46', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 116, 60, 6);
INSERT INTO `experiment` VALUES (47, '无附件', '实验47', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 140, 72, 7);
INSERT INTO `experiment` VALUES (48, '无附件', '实验48', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 112, 68, 8);
INSERT INTO `experiment` VALUES (49, '无附件', '实验49', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 130, 62, 9);
INSERT INTO `experiment` VALUES (50, '无附件', '实验50', '2018-05-14 11:15:30', '2018-06-14 11:15:30', '实验并不困难', 140, 65, 10);

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `department_branch_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UQ2`(`name`) USING BTREE,
  INDEX `Refdepartment_branch24`(`department_branch_id`) USING BTREE,
  CONSTRAINT `Refdepartment_branch24` FOREIGN KEY (`department_branch_id`) REFERENCES `department_branch` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES (1, '1工程', '1工程是一个好专业', 5);
INSERT INTO `major` VALUES (2, '2工程', '2工程是一个好专业', 9);
INSERT INTO `major` VALUES (3, '3工程', '3工程是一个好专业', 10);
INSERT INTO `major` VALUES (4, '4工程', '4工程是一个好专业', 6);
INSERT INTO `major` VALUES (5, '5工程', '5工程是一个好专业', 7);
INSERT INTO `major` VALUES (6, '6工程', '6工程是一个好专业', 2);
INSERT INTO `major` VALUES (7, '7工程', '7工程是一个好专业', 6);
INSERT INTO `major` VALUES (8, '8工程', '8工程是一个好专业', 2);
INSERT INTO `major` VALUES (9, '9工程', '9工程是一个好专业', 9);
INSERT INTO `major` VALUES (10, '10工程', '10工程是一个好专业', 2);
INSERT INTO `major` VALUES (11, '11工程', '11工程是一个好专业', 4);
INSERT INTO `major` VALUES (12, '12工程', '12工程是一个好专业', 1);
INSERT INTO `major` VALUES (13, '13工程', '13工程是一个好专业', 10);
INSERT INTO `major` VALUES (14, '14工程', '14工程是一个好专业', 2);
INSERT INTO `major` VALUES (15, '15工程', '15工程是一个好专业', 10);

-- ----------------------------
-- Table structure for opened_course
-- ----------------------------
DROP TABLE IF EXISTS `opened_course`;
CREATE TABLE `opened_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opend_course_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `introduction` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hits` int(11) NOT NULL DEFAULT 0,
  `total_amount` int(11) NOT NULL DEFAULT 0,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `course_id` int(11) NOT NULL DEFAULT 0,
  `semester_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `Refcourse4`(`course_id`) USING BTREE,
  INDEX `Refsemester5`(`semester_id`) USING BTREE,
  CONSTRAINT `Refsemester5` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Refcourse4` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of opened_course
-- ----------------------------
INSERT INTO `opened_course` VALUES (1, '1程序设计', '2000-08-30 11:34:25', '2017-09-30 11:34:25', '1程序设计是一门好课', 3466, 274, 'java', 2, 7);
INSERT INTO `opened_course` VALUES (2, '2程序设计', '2000-08-30 11:34:25', '2017-09-30 11:34:25', '2程序设计是一门好课', 2732, 220, 'java', 10, 9);
INSERT INTO `opened_course` VALUES (3, '3程序设计', '2000-08-30 11:34:25', '2017-09-30 11:34:25', '3程序设计是一门好课', 3462, 223, 'java', 5, 5);
INSERT INTO `opened_course` VALUES (4, '4程序设计', '2000-08-30 11:34:25', '2017-09-30 11:34:25', '4程序设计是一门好课', 3541, 249, 'java', 6, 2);
INSERT INTO `opened_course` VALUES (5, '5程序设计', '2000-08-30 11:34:25', '2017-09-30 11:34:25', '5程序设计是一门好课', 2413, 207, 'java', 8, 5);
INSERT INTO `opened_course` VALUES (6, '6程序设计', '2000-08-30 11:34:25', '2017-09-30 11:34:25', '6程序设计是一门好课', 2460, 225, 'java', 9, 8);
INSERT INTO `opened_course` VALUES (7, '7程序设计', '2000-08-30 11:34:25', '2017-09-30 11:34:25', '7程序设计是一门好课', 3697, 284, 'java', 2, 2);
INSERT INTO `opened_course` VALUES (8, '8程序设计', '2000-08-30 11:34:25', '2017-09-30 11:34:25', '8程序设计是一门好课', 3196, 213, 'java', 1, 5);
INSERT INTO `opened_course` VALUES (9, '9程序设计', '2000-08-30 11:34:25', '2017-09-30 11:34:25', '9程序设计是一门好课', 4063, 230, 'java', 5, 2);
INSERT INTO `opened_course` VALUES (10, '10程序设计', '2000-08-30 11:34:25', '2017-09-30 11:34:25', '10程序设计是一门好课', 4070, 239, 'java', 10, 9);

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` float(8, 0) NOT NULL DEFAULT 0,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `option_A` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `option_B` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `option_C` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `option_D` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `option_E` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `option_F` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `correct_answer` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `exam_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `Refexamination30`(`exam_id`) USING BTREE,
  CONSTRAINT `Refexamination30` FOREIGN KEY (`exam_id`) REFERENCES `examination` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for semester
-- ----------------------------
DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) NOT NULL DEFAULT 1970,
  `first_second` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of semester
-- ----------------------------
INSERT INTO `semester` VALUES (1, 2014, 0);
INSERT INTO `semester` VALUES (2, 2015, 1);
INSERT INTO `semester` VALUES (3, 2016, 0);
INSERT INTO `semester` VALUES (4, 2017, 1);
INSERT INTO `semester` VALUES (5, 2018, 0);
INSERT INTO `semester` VALUES (6, 2014, 1);
INSERT INTO `semester` VALUES (7, 2015, 0);
INSERT INTO `semester` VALUES (8, 2016, 1);
INSERT INTO `semester` VALUES (9, 2017, 0);
INSERT INTO `semester` VALUES (10, 2018, 1);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL DEFAULT 0,
  `student_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `sex` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `e_mail` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `class_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UQ5`(`student_id`) USING BTREE,
  INDEX `Refclass26`(`class_id`) USING BTREE,
  CONSTRAINT `Refclass26` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '20152131421', '1同学', 1, '1是一个善良的人', '877975686452', '4126632145@qq.com', '9市白云区', 2);
INSERT INTO `student` VALUES (2, '20152131422', '2同学', 0, '2是一个善良的人', '288575686452', '7060632145@qq.com', '6市白云区', 11);
INSERT INTO `student` VALUES (3, '20152131423', '3同学', 1, '3是一个善良的人', '965375686452', '5118632145@qq.com', '1市白云区', 1);
INSERT INTO `student` VALUES (4, '20152131424', '4同学', 0, '4是一个善良的人', '710675686452', '5687632145@qq.com', '4市白云区', 2);
INSERT INTO `student` VALUES (5, '20152131425', '5同学', 1, '5是一个善良的人', '761875686452', '3272632145@qq.com', '8市白云区', 20);
INSERT INTO `student` VALUES (6, '20152131426', '6同学', 1, '6是一个善良的人', '279075686452', '6791632145@qq.com', '10市白云区', 3);
INSERT INTO `student` VALUES (7, '20152131427', '7同学', 1, '7是一个善良的人', '635075686452', '8241632145@qq.com', '9市白云区', 20);
INSERT INTO `student` VALUES (8, '20152131428', '8同学', 0, '8是一个善良的人', '67075686452', '9271632145@qq.com', '4市白云区', 9);
INSERT INTO `student` VALUES (9, '20152131429', '9同学', 0, '9是一个善良的人', '616875686452', '5525632145@qq.com', '1市白云区', 6);
INSERT INTO `student` VALUES (10, '201521314210', '10同学', 1, '10是一个善良的人', '313175686452', '5131632145@qq.com', '3市白云区', 6);
INSERT INTO `student` VALUES (11, '201521314211', '11同学', 0, '11是一个善良的人', '967975686452', '6921632145@qq.com', '7市白云区', 6);
INSERT INTO `student` VALUES (12, '201521314212', '12同学', 1, '12是一个善良的人', '204275686452', '6517632145@qq.com', '9市白云区', 18);
INSERT INTO `student` VALUES (13, '201521314213', '13同学', 1, '13是一个善良的人', '578975686452', '6377632145@qq.com', '3市白云区', 15);
INSERT INTO `student` VALUES (14, '201521314214', '14同学', 0, '14是一个善良的人', '215375686452', '3845632145@qq.com', '1市白云区', 14);
INSERT INTO `student` VALUES (15, '201521314215', '15同学', 1, '15是一个善良的人', '856875686452', '8955632145@qq.com', '6市白云区', 7);
INSERT INTO `student` VALUES (16, '201521314216', '16同学', 1, '16是一个善良的人', '533975686452', '5681632145@qq.com', '6市白云区', 11);
INSERT INTO `student` VALUES (17, '201521314217', '17同学', 1, '17是一个善良的人', '114275686452', '5377632145@qq.com', '4市白云区', 1);
INSERT INTO `student` VALUES (18, '201521314218', '18同学', 1, '18是一个善良的人', '871175686452', '4230632145@qq.com', '1市白云区', 17);
INSERT INTO `student` VALUES (19, '201521314219', '19同学', 0, '19是一个善良的人', '660975686452', '932632145@qq.com', '2市白云区', 10);
INSERT INTO `student` VALUES (20, '201521314220', '20同学', 0, '20是一个善良的人', '497175686452', '6886632145@qq.com', '3市白云区', 8);
INSERT INTO `student` VALUES (21, '201521314221', '21同学', 0, '21是一个善良的人', '421475686452', '5980632145@qq.com', '6市白云区', 14);
INSERT INTO `student` VALUES (22, '201521314222', '22同学', 0, '22是一个善良的人', '57075686452', '8354632145@qq.com', '2市白云区', 7);
INSERT INTO `student` VALUES (23, '201521314223', '23同学', 0, '23是一个善良的人', '5875686452', '7502632145@qq.com', '1市白云区', 8);
INSERT INTO `student` VALUES (24, '201521314224', '24同学', 1, '24是一个善良的人', '792875686452', '4227632145@qq.com', '4市白云区', 10);
INSERT INTO `student` VALUES (25, '201521314225', '25同学', 0, '25是一个善良的人', '757275686452', '4518632145@qq.com', '2市白云区', 8);
INSERT INTO `student` VALUES (26, '201521314226', '26同学', 0, '26是一个善良的人', '479375686452', '4236632145@qq.com', '7市白云区', 5);
INSERT INTO `student` VALUES (27, '201521314227', '27同学', 1, '27是一个善良的人', '378175686452', '4112632145@qq.com', '6市白云区', 11);
INSERT INTO `student` VALUES (28, '201521314228', '28同学', 0, '28是一个善良的人', '11975686452', '9208632145@qq.com', '4市白云区', 14);
INSERT INTO `student` VALUES (29, '201521314229', '29同学', 0, '29是一个善良的人', '213975686452', '1875632145@qq.com', '2市白云区', 13);
INSERT INTO `student` VALUES (30, '201521314230', '30同学', 0, '30是一个善良的人', '733075686452', '9246632145@qq.com', '6市白云区', 6);
INSERT INTO `student` VALUES (31, '201521314231', '31同学', 0, '31是一个善良的人', '194675686452', '3617632145@qq.com', '1市白云区', 1);
INSERT INTO `student` VALUES (32, '201521314232', '32同学', 1, '32是一个善良的人', '636275686452', '5758632145@qq.com', '6市白云区', 16);
INSERT INTO `student` VALUES (33, '201521314233', '33同学', 0, '33是一个善良的人', '932875686452', '3156632145@qq.com', '10市白云区', 14);
INSERT INTO `student` VALUES (34, '201521314234', '34同学', 1, '34是一个善良的人', '772075686452', '9237632145@qq.com', '2市白云区', 13);
INSERT INTO `student` VALUES (35, '201521314235', '35同学', 0, '35是一个善良的人', '162575686452', '6472632145@qq.com', '2市白云区', 8);
INSERT INTO `student` VALUES (36, '201521314236', '36同学', 0, '36是一个善良的人', '946775686452', '1856632145@qq.com', '8市白云区', 7);
INSERT INTO `student` VALUES (37, '201521314237', '37同学', 1, '37是一个善良的人', '927675686452', '8425632145@qq.com', '3市白云区', 19);
INSERT INTO `student` VALUES (38, '201521314238', '38同学', 0, '38是一个善良的人', '738275686452', '8473632145@qq.com', '10市白云区', 1);
INSERT INTO `student` VALUES (39, '201521314239', '39同学', 1, '39是一个善良的人', '655775686452', '2227632145@qq.com', '6市白云区', 6);
INSERT INTO `student` VALUES (40, '201521314240', '40同学', 1, '40是一个善良的人', '558875686452', '8326632145@qq.com', '9市白云区', 1);
INSERT INTO `student` VALUES (41, '201521314241', '41同学', 1, '41是一个善良的人', '605875686452', '4802632145@qq.com', '9市白云区', 12);
INSERT INTO `student` VALUES (42, '201521314242', '42同学', 1, '42是一个善良的人', '224475686452', '6715632145@qq.com', '8市白云区', 8);
INSERT INTO `student` VALUES (43, '201521314243', '43同学', 0, '43是一个善良的人', '183675686452', '2001632145@qq.com', '8市白云区', 13);
INSERT INTO `student` VALUES (44, '201521314244', '44同学', 1, '44是一个善良的人', '921375686452', '8545632145@qq.com', '3市白云区', 12);
INSERT INTO `student` VALUES (45, '201521314245', '45同学', 0, '45是一个善良的人', '210775686452', '1011632145@qq.com', '8市白云区', 18);
INSERT INTO `student` VALUES (46, '201521314246', '46同学', 0, '46是一个善良的人', '608575686452', '9832632145@qq.com', '2市白云区', 11);
INSERT INTO `student` VALUES (47, '201521314247', '47同学', 0, '47是一个善良的人', '129175686452', '9646632145@qq.com', '8市白云区', 18);
INSERT INTO `student` VALUES (48, '201521314248', '48同学', 0, '48是一个善良的人', '273675686452', '6993632145@qq.com', '6市白云区', 4);
INSERT INTO `student` VALUES (49, '201521314249', '49同学', 1, '49是一个善良的人', '98175686452', '8996632145@qq.com', '3市白云区', 2);
INSERT INTO `student` VALUES (50, '201521314250', '50同学', 1, '50是一个善良的人', '762675686452', '523632145@qq.com', '8市白云区', 15);
INSERT INTO `student` VALUES (51, '201521314251', '51同学', 1, '51是一个善良的人', '300775686452', '2106632145@qq.com', '10市白云区', 9);
INSERT INTO `student` VALUES (52, '201521314252', '52同学', 0, '52是一个善良的人', '938875686452', '2019632145@qq.com', '8市白云区', 9);
INSERT INTO `student` VALUES (53, '201521314253', '53同学', 1, '53是一个善良的人', '506775686452', '8194632145@qq.com', '5市白云区', 11);
INSERT INTO `student` VALUES (54, '201521314254', '54同学', 0, '54是一个善良的人', '831175686452', '9168632145@qq.com', '10市白云区', 13);
INSERT INTO `student` VALUES (55, '201521314255', '55同学', 1, '55是一个善良的人', '113675686452', '4982632145@qq.com', '7市白云区', 10);
INSERT INTO `student` VALUES (56, '201521314256', '56同学', 0, '56是一个善良的人', '445275686452', '7063632145@qq.com', '8市白云区', 9);
INSERT INTO `student` VALUES (57, '201521314257', '57同学', 1, '57是一个善良的人', '77575686452', '2022632145@qq.com', '6市白云区', 15);
INSERT INTO `student` VALUES (58, '201521314258', '58同学', 0, '58是一个善良的人', '961675686452', '6099632145@qq.com', '6市白云区', 12);
INSERT INTO `student` VALUES (59, '201521314259', '59同学', 0, '59是一个善良的人', '336675686452', '1484632145@qq.com', '5市白云区', 2);
INSERT INTO `student` VALUES (60, '201521314260', '60同学', 0, '60是一个善良的人', '549175686452', '7310632145@qq.com', '3市白云区', 14);
INSERT INTO `student` VALUES (61, '201521314261', '61同学', 0, '61是一个善良的人', '413175686452', '8239632145@qq.com', '2市白云区', 16);
INSERT INTO `student` VALUES (62, '201521314262', '62同学', 1, '62是一个善良的人', '431975686452', '5191632145@qq.com', '3市白云区', 17);
INSERT INTO `student` VALUES (63, '201521314263', '63同学', 1, '63是一个善良的人', '55075686452', '746632145@qq.com', '4市白云区', 20);
INSERT INTO `student` VALUES (64, '201521314264', '64同学', 1, '64是一个善良的人', '95875686452', '1617632145@qq.com', '3市白云区', 2);
INSERT INTO `student` VALUES (65, '201521314265', '65同学', 1, '65是一个善良的人', '144675686452', '5454632145@qq.com', '3市白云区', 8);
INSERT INTO `student` VALUES (66, '201521314266', '66同学', 1, '66是一个善良的人', '790875686452', '339632145@qq.com', '10市白云区', 18);
INSERT INTO `student` VALUES (67, '201521314267', '67同学', 0, '67是一个善良的人', '821575686452', '8219632145@qq.com', '10市白云区', 18);
INSERT INTO `student` VALUES (68, '201521314268', '68同学', 0, '68是一个善良的人', '274275686452', '2365632145@qq.com', '7市白云区', 20);
INSERT INTO `student` VALUES (69, '201521314269', '69同学', 0, '69是一个善良的人', '455575686452', '3022632145@qq.com', '9市白云区', 20);
INSERT INTO `student` VALUES (70, '201521314270', '70同学', 0, '70是一个善良的人', '480975686452', '7416632145@qq.com', '3市白云区', 12);
INSERT INTO `student` VALUES (71, '201521314271', '71同学', 1, '71是一个善良的人', '492575686452', '6593632145@qq.com', '6市白云区', 17);
INSERT INTO `student` VALUES (72, '201521314272', '72同学', 1, '72是一个善良的人', '474475686452', '4620632145@qq.com', '1市白云区', 15);
INSERT INTO `student` VALUES (73, '201521314273', '73同学', 0, '73是一个善良的人', '996375686452', '3117632145@qq.com', '5市白云区', 9);
INSERT INTO `student` VALUES (74, '201521314274', '74同学', 0, '74是一个善良的人', '336175686452', '9438632145@qq.com', '10市白云区', 14);
INSERT INTO `student` VALUES (75, '201521314275', '75同学', 1, '75是一个善良的人', '183275686452', '8498632145@qq.com', '6市白云区', 9);
INSERT INTO `student` VALUES (76, '201521314276', '76同学', 1, '76是一个善良的人', '301075686452', '814632145@qq.com', '9市白云区', 11);
INSERT INTO `student` VALUES (77, '201521314277', '77同学', 0, '77是一个善良的人', '754775686452', '6971632145@qq.com', '9市白云区', 10);
INSERT INTO `student` VALUES (78, '201521314278', '78同学', 0, '78是一个善良的人', '726075686452', '9869632145@qq.com', '10市白云区', 2);
INSERT INTO `student` VALUES (79, '201521314279', '79同学', 1, '79是一个善良的人', '178175686452', '3245632145@qq.com', '5市白云区', 6);
INSERT INTO `student` VALUES (80, '201521314280', '80同学', 1, '80是一个善良的人', '26075686452', '9781632145@qq.com', '3市白云区', 4);
INSERT INTO `student` VALUES (81, '201521314281', '81同学', 0, '81是一个善良的人', '172975686452', '8525632145@qq.com', '10市白云区', 10);
INSERT INTO `student` VALUES (82, '201521314282', '82同学', 1, '82是一个善良的人', '36275686452', '7976632145@qq.com', '2市白云区', 9);
INSERT INTO `student` VALUES (83, '201521314283', '83同学', 1, '83是一个善良的人', '211475686452', '1306632145@qq.com', '3市白云区', 9);
INSERT INTO `student` VALUES (84, '201521314284', '84同学', 0, '84是一个善良的人', '859375686452', '6302632145@qq.com', '10市白云区', 19);
INSERT INTO `student` VALUES (85, '201521314285', '85同学', 0, '85是一个善良的人', '176075686452', '7967632145@qq.com', '9市白云区', 9);
INSERT INTO `student` VALUES (86, '201521314286', '86同学', 0, '86是一个善良的人', '444175686452', '7684632145@qq.com', '2市白云区', 12);
INSERT INTO `student` VALUES (87, '201521314287', '87同学', 0, '87是一个善良的人', '481675686452', '171632145@qq.com', '3市白云区', 14);
INSERT INTO `student` VALUES (88, '201521314288', '88同学', 1, '88是一个善良的人', '35375686452', '3323632145@qq.com', '5市白云区', 4);
INSERT INTO `student` VALUES (89, '201521314289', '89同学', 1, '89是一个善良的人', '214875686452', '916632145@qq.com', '5市白云区', 3);
INSERT INTO `student` VALUES (90, '201521314290', '90同学', 1, '90是一个善良的人', '406075686452', '2135632145@qq.com', '4市白云区', 15);
INSERT INTO `student` VALUES (91, '201521314291', '91同学', 0, '91是一个善良的人', '953875686452', '2499632145@qq.com', '10市白云区', 4);
INSERT INTO `student` VALUES (92, '201521314292', '92同学', 0, '92是一个善良的人', '669275686452', '9951632145@qq.com', '5市白云区', 9);
INSERT INTO `student` VALUES (93, '201521314293', '93同学', 1, '93是一个善良的人', '103275686452', '683632145@qq.com', '1市白云区', 17);
INSERT INTO `student` VALUES (94, '201521314294', '94同学', 1, '94是一个善良的人', '125875686452', '2765632145@qq.com', '2市白云区', 2);
INSERT INTO `student` VALUES (95, '201521314295', '95同学', 1, '95是一个善良的人', '555575686452', '3521632145@qq.com', '7市白云区', 18);
INSERT INTO `student` VALUES (96, '201521314296', '96同学', 1, '96是一个善良的人', '118875686452', '2722632145@qq.com', '7市白云区', 9);
INSERT INTO `student` VALUES (97, '201521314297', '97同学', 0, '97是一个善良的人', '678775686452', '8687632145@qq.com', '7市白云区', 4);
INSERT INTO `student` VALUES (98, '201521314298', '98同学', 0, '98是一个善良的人', '358375686452', '7652632145@qq.com', '1市白云区', 11);
INSERT INTO `student` VALUES (99, '201521314299', '99同学', 0, '99是一个善良的人', '326875686452', '8600632145@qq.com', '7市白云区', 16);
INSERT INTO `student` VALUES (100, '2015213142100', '100同学', 0, '100是一个善良的人', '943075686452', '8339632145@qq.com', '9市白云区', 16);

-- ----------------------------
-- Table structure for student_course_select
-- ----------------------------
DROP TABLE IF EXISTS `student_course_select`;
CREATE TABLE `student_course_select`  (
  `score` float(8, 0) NOT NULL DEFAULT 0,
  `student_id` int(11) NOT NULL DEFAULT 0,
  `opened_course_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`student_id`, `opened_course_id`) USING BTREE,
  INDEX `Refopened_course14`(`opened_course_id`) USING BTREE,
  CONSTRAINT `Refopened_course14` FOREIGN KEY (`opened_course_id`) REFERENCES `opened_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Refstudent13` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student_course_select
-- ----------------------------
INSERT INTO `student_course_select` VALUES (59, 1, 1);
INSERT INTO `student_course_select` VALUES (60, 2, 2);
INSERT INTO `student_course_select` VALUES (78, 3, 3);
INSERT INTO `student_course_select` VALUES (69, 4, 4);
INSERT INTO `student_course_select` VALUES (66, 5, 5);
INSERT INTO `student_course_select` VALUES (67, 6, 6);
INSERT INTO `student_course_select` VALUES (55, 7, 7);
INSERT INTO `student_course_select` VALUES (52, 8, 8);
INSERT INTO `student_course_select` VALUES (68, 9, 9);
INSERT INTO `student_course_select` VALUES (71, 10, 10);
INSERT INTO `student_course_select` VALUES (66, 11, 1);
INSERT INTO `student_course_select` VALUES (69, 12, 2);
INSERT INTO `student_course_select` VALUES (80, 13, 3);
INSERT INTO `student_course_select` VALUES (86, 14, 4);
INSERT INTO `student_course_select` VALUES (67, 15, 5);
INSERT INTO `student_course_select` VALUES (87, 16, 6);
INSERT INTO `student_course_select` VALUES (58, 17, 7);
INSERT INTO `student_course_select` VALUES (62, 18, 8);
INSERT INTO `student_course_select` VALUES (54, 19, 9);
INSERT INTO `student_course_select` VALUES (68, 20, 10);
INSERT INTO `student_course_select` VALUES (70, 21, 1);
INSERT INTO `student_course_select` VALUES (50, 22, 2);
INSERT INTO `student_course_select` VALUES (68, 23, 3);
INSERT INTO `student_course_select` VALUES (81, 24, 4);
INSERT INTO `student_course_select` VALUES (60, 25, 5);
INSERT INTO `student_course_select` VALUES (53, 26, 6);
INSERT INTO `student_course_select` VALUES (81, 27, 7);
INSERT INTO `student_course_select` VALUES (65, 28, 8);
INSERT INTO `student_course_select` VALUES (68, 29, 9);
INSERT INTO `student_course_select` VALUES (87, 30, 10);
INSERT INTO `student_course_select` VALUES (66, 31, 1);
INSERT INTO `student_course_select` VALUES (78, 32, 2);
INSERT INTO `student_course_select` VALUES (79, 33, 3);
INSERT INTO `student_course_select` VALUES (67, 34, 4);
INSERT INTO `student_course_select` VALUES (69, 35, 5);
INSERT INTO `student_course_select` VALUES (65, 36, 6);
INSERT INTO `student_course_select` VALUES (82, 37, 7);
INSERT INTO `student_course_select` VALUES (61, 38, 8);
INSERT INTO `student_course_select` VALUES (90, 39, 9);
INSERT INTO `student_course_select` VALUES (87, 40, 10);
INSERT INTO `student_course_select` VALUES (81, 41, 1);
INSERT INTO `student_course_select` VALUES (67, 42, 2);
INSERT INTO `student_course_select` VALUES (67, 43, 3);
INSERT INTO `student_course_select` VALUES (90, 44, 4);
INSERT INTO `student_course_select` VALUES (88, 45, 5);
INSERT INTO `student_course_select` VALUES (87, 46, 6);
INSERT INTO `student_course_select` VALUES (81, 47, 7);
INSERT INTO `student_course_select` VALUES (80, 48, 8);
INSERT INTO `student_course_select` VALUES (64, 49, 9);
INSERT INTO `student_course_select` VALUES (65, 50, 10);
INSERT INTO `student_course_select` VALUES (52, 51, 1);
INSERT INTO `student_course_select` VALUES (81, 52, 2);
INSERT INTO `student_course_select` VALUES (59, 53, 3);
INSERT INTO `student_course_select` VALUES (56, 54, 4);
INSERT INTO `student_course_select` VALUES (84, 55, 5);
INSERT INTO `student_course_select` VALUES (79, 56, 6);
INSERT INTO `student_course_select` VALUES (50, 57, 7);
INSERT INTO `student_course_select` VALUES (70, 58, 8);
INSERT INTO `student_course_select` VALUES (56, 59, 9);
INSERT INTO `student_course_select` VALUES (62, 60, 10);
INSERT INTO `student_course_select` VALUES (73, 61, 1);
INSERT INTO `student_course_select` VALUES (65, 62, 2);
INSERT INTO `student_course_select` VALUES (74, 63, 3);
INSERT INTO `student_course_select` VALUES (74, 64, 4);
INSERT INTO `student_course_select` VALUES (68, 65, 5);
INSERT INTO `student_course_select` VALUES (87, 66, 6);
INSERT INTO `student_course_select` VALUES (84, 67, 7);
INSERT INTO `student_course_select` VALUES (80, 68, 8);
INSERT INTO `student_course_select` VALUES (68, 69, 9);
INSERT INTO `student_course_select` VALUES (66, 70, 10);
INSERT INTO `student_course_select` VALUES (56, 71, 1);
INSERT INTO `student_course_select` VALUES (81, 72, 2);
INSERT INTO `student_course_select` VALUES (68, 73, 3);
INSERT INTO `student_course_select` VALUES (57, 74, 4);
INSERT INTO `student_course_select` VALUES (74, 75, 5);
INSERT INTO `student_course_select` VALUES (79, 76, 6);
INSERT INTO `student_course_select` VALUES (63, 77, 7);
INSERT INTO `student_course_select` VALUES (84, 78, 8);
INSERT INTO `student_course_select` VALUES (66, 79, 9);
INSERT INTO `student_course_select` VALUES (58, 80, 10);
INSERT INTO `student_course_select` VALUES (65, 81, 1);
INSERT INTO `student_course_select` VALUES (54, 82, 2);
INSERT INTO `student_course_select` VALUES (65, 83, 3);
INSERT INTO `student_course_select` VALUES (75, 84, 4);
INSERT INTO `student_course_select` VALUES (71, 85, 5);
INSERT INTO `student_course_select` VALUES (82, 86, 6);
INSERT INTO `student_course_select` VALUES (78, 87, 7);
INSERT INTO `student_course_select` VALUES (81, 88, 8);
INSERT INTO `student_course_select` VALUES (85, 89, 9);
INSERT INTO `student_course_select` VALUES (52, 90, 10);
INSERT INTO `student_course_select` VALUES (70, 91, 1);
INSERT INTO `student_course_select` VALUES (51, 92, 2);
INSERT INTO `student_course_select` VALUES (85, 93, 3);
INSERT INTO `student_course_select` VALUES (59, 94, 4);
INSERT INTO `student_course_select` VALUES (67, 95, 5);
INSERT INTO `student_course_select` VALUES (72, 96, 6);
INSERT INTO `student_course_select` VALUES (52, 97, 7);
INSERT INTO `student_course_select` VALUES (82, 98, 8);
INSERT INTO `student_course_select` VALUES (90, 99, 9);
INSERT INTO `student_course_select` VALUES (69, 100, 10);

-- ----------------------------
-- Table structure for student_exam_completion
-- ----------------------------
DROP TABLE IF EXISTS `student_exam_completion`;
CREATE TABLE `student_exam_completion`  (
  `commitDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `check_state` tinyint(4) NOT NULL DEFAULT 0,
  `exma_src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `score` float(8, 0) NOT NULL DEFAULT 0,
  `exam_id` int(11) NOT NULL DEFAULT 0,
  `student_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`exam_id`, `student_id`) USING BTREE,
  INDEX `Refstudent37`(`student_id`) USING BTREE,
  CONSTRAINT `Refstudent37` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Refexamination35` FOREIGN KEY (`exam_id`) REFERENCES `examination` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for student_expr_completion
-- ----------------------------
DROP TABLE IF EXISTS `student_expr_completion`;
CREATE TABLE `student_expr_completion`  (
  `commit_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `check_state` tinyint(4) NOT NULL DEFAULT 0,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expr_src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `score` float(8, 0) NOT NULL DEFAULT 0,
  `expr_id` int(11) NOT NULL DEFAULT 0,
  `student_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`expr_id`, `student_id`) USING BTREE,
  INDEX `Refstudent22`(`student_id`) USING BTREE,
  CONSTRAINT `Refstudent22` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Refexperiment21` FOREIGN KEY (`expr_id`) REFERENCES `experiment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student_expr_completion
-- ----------------------------
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 3, 2, '这是答案', '无附件', 74, 1, 1);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 3, 0, '这是答案', '无附件', 68, 2, 2);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 2, 1, '这是答案', '无附件', 89, 3, 3);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 0, 0, '这是答案', '无附件', 89, 4, 4);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 3, 1, '这是答案', '无附件', 79, 5, 5);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 0, 1, '这是答案', '无附件', 89, 6, 6);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 3, 1, '这是答案', '无附件', 86, 7, 7);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 2, 2, '这是答案', '无附件', 73, 8, 8);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 1, 2, '这是答案', '无附件', 62, 9, 9);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 0, 0, '这是答案', '无附件', 81, 10, 10);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 2, 0, '这是答案', '无附件', 88, 11, 11);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 3, 3, '这是答案', '无附件', 74, 12, 12);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 3, 1, '这是答案', '无附件', 65, 13, 13);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 3, 0, '这是答案', '无附件', 88, 14, 14);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 2, 0, '这是答案', '无附件', 76, 15, 15);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 1, 1, '这是答案', '无附件', 77, 16, 16);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 2, 1, '这是答案', '无附件', 70, 17, 17);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 3, 3, '这是答案', '无附件', 70, 18, 18);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 3, 3, '这是答案', '无附件', 86, 19, 19);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 1, 0, '这是答案', '无附件', 77, 20, 20);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 1, 3, '这是答案', '无附件', 61, 21, 21);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 3, 3, '这是答案', '无附件', 72, 22, 22);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 0, 0, '这是答案', '无附件', 72, 23, 23);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 1, 0, '这是答案', '无附件', 74, 24, 24);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 2, 0, '这是答案', '无附件', 60, 25, 25);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 2, 0, '这是答案', '无附件', 89, 26, 26);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 0, 2, '这是答案', '无附件', 79, 27, 27);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 0, 1, '这是答案', '无附件', 78, 28, 28);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 1, 1, '这是答案', '无附件', 80, 29, 29);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 3, 0, '这是答案', '无附件', 85, 30, 30);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 1, 3, '这是答案', '无附件', 76, 31, 31);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 2, 2, '这是答案', '无附件', 63, 32, 32);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 1, 0, '这是答案', '无附件', 74, 33, 33);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 1, 3, '这是答案', '无附件', 81, 34, 34);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 3, 0, '这是答案', '无附件', 65, 35, 35);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 3, 0, '这是答案', '无附件', 70, 36, 36);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 1, 0, '这是答案', '无附件', 66, 37, 37);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 2, 2, '这是答案', '无附件', 71, 38, 38);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 1, 2, '这是答案', '无附件', 62, 39, 39);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 2, 1, '这是答案', '无附件', 60, 40, 40);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 3, 3, '这是答案', '无附件', 75, 41, 41);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 0, 2, '这是答案', '无附件', 64, 42, 42);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 3, 1, '这是答案', '无附件', 76, 43, 43);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 2, 0, '这是答案', '无附件', 77, 44, 44);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 2, 0, '这是答案', '无附件', 73, 45, 45);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 0, 1, '这是答案', '无附件', 77, 46, 46);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 0, 0, '这是答案', '无附件', 80, 47, 47);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 3, 0, '这是答案', '无附件', 64, 48, 48);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 0, 3, '这是答案', '无附件', 67, 49, 49);
INSERT INTO `student_expr_completion` VALUES ('2018-05-13 11:18:14', 2, 0, '这是答案', '无附件', 73, 50, 50);

-- ----------------------------
-- Table structure for teach_resource
-- ----------------------------
DROP TABLE IF EXISTS `teach_resource`;
CREATE TABLE `teach_resource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `save_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `directory_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `Refdirectory53`(`directory_id`) USING BTREE,
  CONSTRAINT `Refdirectory53` FOREIGN KEY (`directory_id`) REFERENCES `directory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `department_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `Refdepartment28`(`department_id`) USING BTREE,
  CONSTRAINT `Refdepartment28` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, '1老师', '581313@qq.com', '316215561', '1是一个好老师', 4);
INSERT INTO `teacher` VALUES (2, '2老师', '746313@qq.com', '631215561', '2是一个好老师', 2);
INSERT INTO `teacher` VALUES (3, '3老师', '951313@qq.com', '458215561', '3是一个好老师', 2);
INSERT INTO `teacher` VALUES (4, '4老师', '207313@qq.com', '594215561', '4是一个好老师', 3);
INSERT INTO `teacher` VALUES (5, '5老师', '276313@qq.com', '15215561', '5是一个好老师', 2);
INSERT INTO `teacher` VALUES (6, '6老师', '550313@qq.com', '539215561', '6是一个好老师', 3);
INSERT INTO `teacher` VALUES (7, '7老师', '246313@qq.com', '619215561', '7是一个好老师', 2);
INSERT INTO `teacher` VALUES (8, '8老师', '742313@qq.com', '139215561', '8是一个好老师', 1);
INSERT INTO `teacher` VALUES (9, '9老师', '331313@qq.com', '715215561', '9是一个好老师', 1);
INSERT INTO `teacher` VALUES (10, '10老师', '832313@qq.com', '851215561', '10是一个好老师', 3);
INSERT INTO `teacher` VALUES (11, '11老师', '56313@qq.com', '611215561', '11是一个好老师', 3);
INSERT INTO `teacher` VALUES (12, '12老师', '768313@qq.com', '905215561', '12是一个好老师', 3);
INSERT INTO `teacher` VALUES (13, '13老师', '282313@qq.com', '193215561', '13是一个好老师', 4);
INSERT INTO `teacher` VALUES (14, '14老师', '979313@qq.com', '255215561', '14是一个好老师', 2);
INSERT INTO `teacher` VALUES (15, '15老师', '597313@qq.com', '568215561', '15是一个好老师', 5);
INSERT INTO `teacher` VALUES (16, '16老师', '193313@qq.com', '417215561', '16是一个好老师', 3);
INSERT INTO `teacher` VALUES (17, '17老师', '501313@qq.com', '97215561', '17是一个好老师', 2);
INSERT INTO `teacher` VALUES (18, '18老师', '208313@qq.com', '6215561', '18是一个好老师', 1);
INSERT INTO `teacher` VALUES (19, '19老师', '904313@qq.com', '597215561', '19是一个好老师', 4);
INSERT INTO `teacher` VALUES (20, '20老师', '23313@qq.com', '89215561', '20是一个好老师', 5);
INSERT INTO `teacher` VALUES (21, '21老师', '701313@qq.com', '411215561', '21是一个好老师', 3);
INSERT INTO `teacher` VALUES (22, '22老师', '922313@qq.com', '657215561', '22是一个好老师', 4);
INSERT INTO `teacher` VALUES (23, '23老师', '33313@qq.com', '65215561', '23是一个好老师', 3);
INSERT INTO `teacher` VALUES (24, '24老师', '771313@qq.com', '817215561', '24是一个好老师', 5);
INSERT INTO `teacher` VALUES (25, '25老师', '998313@qq.com', '189215561', '25是一个好老师', 2);
INSERT INTO `teacher` VALUES (26, '26老师', '36313@qq.com', '97215561', '26是一个好老师', 2);
INSERT INTO `teacher` VALUES (27, '27老师', '866313@qq.com', '81215561', '27是一个好老师', 5);
INSERT INTO `teacher` VALUES (28, '28老师', '537313@qq.com', '880215561', '28是一个好老师', 5);
INSERT INTO `teacher` VALUES (29, '29老师', '780313@qq.com', '837215561', '29是一个好老师', 3);
INSERT INTO `teacher` VALUES (30, '30老师', '226313@qq.com', '956215561', '30是一个好老师', 1);

-- ----------------------------
-- Table structure for teacher_course_teach
-- ----------------------------
DROP TABLE IF EXISTS `teacher_course_teach`;
CREATE TABLE `teacher_course_teach`  (
  `opened_course_id` int(11) NOT NULL DEFAULT 0,
  `teacher_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`opened_course_id`, `teacher_id`) USING BTREE,
  INDEX `Refteacher18`(`teacher_id`) USING BTREE,
  CONSTRAINT `Refteacher18` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Refopened_course16` FOREIGN KEY (`opened_course_id`) REFERENCES `opened_course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of teacher_course_teach
-- ----------------------------
INSERT INTO `teacher_course_teach` VALUES (2, 5);
INSERT INTO `teacher_course_teach` VALUES (10, 11);
INSERT INTO `teacher_course_teach` VALUES (2, 13);
INSERT INTO `teacher_course_teach` VALUES (2, 16);
INSERT INTO `teacher_course_teach` VALUES (5, 19);
INSERT INTO `teacher_course_teach` VALUES (2, 24);
INSERT INTO `teacher_course_teach` VALUES (3, 25);
INSERT INTO `teacher_course_teach` VALUES (8, 25);
INSERT INTO `teacher_course_teach` VALUES (7, 26);
INSERT INTO `teacher_course_teach` VALUES (2, 28);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nickname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `login_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '2018-05-14 11:00:58', '小1', 'xiao1');
INSERT INTO `user` VALUES (2, '2018-05-14 11:00:58', '小2', 'xiao2');
INSERT INTO `user` VALUES (3, '2018-05-14 11:00:58', '小3', 'xiao3');
INSERT INTO `user` VALUES (4, '2018-05-14 11:00:58', '小4', 'xiao4');
INSERT INTO `user` VALUES (5, '2018-05-14 11:00:58', '小5', 'xiao5');
INSERT INTO `user` VALUES (6, '2018-05-14 11:00:58', '小6', 'xiao6');
INSERT INTO `user` VALUES (7, '2018-05-14 11:00:58', '小7', 'xiao7');
INSERT INTO `user` VALUES (8, '2018-05-14 11:00:58', '小8', 'xiao8');
INSERT INTO `user` VALUES (9, '2018-05-14 11:00:58', '小9', 'xiao9');
INSERT INTO `user` VALUES (10, '2018-05-14 11:00:58', '小10', 'xiao10');

-- ----------------------------
-- Table structure for user_psw
-- ----------------------------
DROP TABLE IF EXISTS `user_psw`;
CREATE TABLE `user_psw`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `psw` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ' ',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `Refuser52`(`user_id`) USING BTREE,
  CONSTRAINT `Refuser52` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_psw
-- ----------------------------
INSERT INTO `user_psw` VALUES (1, '123', 1);
INSERT INTO `user_psw` VALUES (2, '123', 2);
INSERT INTO `user_psw` VALUES (3, '123', 3);
INSERT INTO `user_psw` VALUES (4, '123', 4);
INSERT INTO `user_psw` VALUES (5, '123', 5);
INSERT INTO `user_psw` VALUES (6, '123', 6);
INSERT INTO `user_psw` VALUES (7, '123', 7);
INSERT INTO `user_psw` VALUES (8, '123', 8);
INSERT INTO `user_psw` VALUES (9, '123', 9);
INSERT INTO `user_psw` VALUES (10, '123', 10);

SET FOREIGN_KEY_CHECKS = 1;
