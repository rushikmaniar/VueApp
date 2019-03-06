-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2018 at 09:49 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `feedback`
--

-- --------------------------------------------------------

--
-- Table structure for table `analysis_master`
--

CREATE TABLE IF NOT EXISTS `analysis_master` (
  `analysis_master_id` int(11) NOT NULL COMMENT 'row_id staff analysis',
  `entry_id` int(11) NOT NULL COMMENT 'entry_id from entry_record',
  `class_id` int(11) NOT NULL COMMENT 'class id from class master',
  `section_id` int(11) NOT NULL COMMENT 'section bifergate',
  `criteria_id` int(11) NOT NULL COMMENT 'criteria_id from criteria_master',
  `criteria_points` int(11) NOT NULL DEFAULT '0' COMMENT 'points got 0 - 5',
  `emp_code` int(11) DEFAULT NULL COMMENT 'emp_code from employee_master',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8 COMMENT='Staff points table';

--
-- Dumping data for table `analysis_master`
--

INSERT INTO `analysis_master` (`analysis_master_id`, `entry_id`, `class_id`, `section_id`, `criteria_id`, `criteria_points`, `emp_code`, `created_at`, `updated_at`) VALUES
(173, 5, 1, 1, 1, 3, 1, '1531747620', '1531747620'),
(174, 5, 1, 1, 2, 3, 1, '1531747620', '1531747620'),
(175, 5, 1, 1, 3, 3, 1, '1531747620', '1531747620'),
(176, 5, 1, 1, 4, 3, 1, '1531747620', '1531747620'),
(177, 5, 1, 1, 5, 3, 1, '1531747620', '1531747620'),
(178, 5, 1, 1, 6, 3, 1, '1531747620', '1531747620'),
(179, 5, 1, 1, 7, 3, 1, '1531747620', '1531747620'),
(180, 5, 1, 1, 8, 3, 1, '1531747620', '1531747620'),
(181, 5, 1, 1, 1, 3, 3, '1531747620', '1531747620'),
(182, 5, 1, 1, 2, 3, 3, '1531747620', '1531747620'),
(183, 5, 1, 1, 3, 3, 3, '1531747620', '1531747620'),
(184, 5, 1, 1, 4, 3, 3, '1531747620', '1531747620'),
(185, 5, 1, 1, 5, 3, 3, '1531747620', '1531747620'),
(186, 5, 1, 1, 6, 3, 3, '1531747620', '1531747620'),
(187, 5, 1, 1, 7, 2, 3, '1531747620', '1531747620'),
(188, 5, 1, 1, 8, 3, 3, '1531747620', '1531747620'),
(189, 5, 1, 2, 9, 1, NULL, '1531747620', '1531747620'),
(190, 5, 1, 2, 10, 1, NULL, '1531747620', '1531747620'),
(191, 5, 1, 2, 11, 1, NULL, '1531747620', '1531747620'),
(192, 5, 1, 2, 12, 1, NULL, '1531747620', '1531747620'),
(193, 5, 1, 2, 13, 1, NULL, '1531747620', '1531747620'),
(194, 5, 1, 3, 14, 3, NULL, '1531747620', '1531747620'),
(195, 5, 1, 3, 15, 3, NULL, '1531747620', '1531747620'),
(196, 5, 1, 3, 16, 47, NULL, '1531747620', '1531747620'),
(197, 5, 1, 3, 17, 50, NULL, '1531747620', '1531747620'),
(198, 5, 1, 3, 18, 3, NULL, '1531747620', '1531747620'),
(199, 5, 1, 3, 19, 3, NULL, '1531747620', '1531747620'),
(200, 5, 1, 3, 20, 3, NULL, '1531747620', '1531747620'),
(201, 5, 1, 3, 21, 3, NULL, '1531747620', '1531747620'),
(202, 5, 1, 3, 22, 3, NULL, '1531747620', '1531747620'),
(203, 5, 1, 3, 23, 3, NULL, '1531747620', '1531747620'),
(204, 5, 1, 4, 24, 4, NULL, '1531747620', '1531747620'),
(205, 5, 1, 4, 25, 4, NULL, '1531747620', '1531747620'),
(206, 5, 1, 4, 26, 4, NULL, '1531747620', '1531747620'),
(207, 5, 1, 4, 27, 4, NULL, '1531747620', '1531747620'),
(208, 5, 1, 4, 28, 4, NULL, '1531747620', '1531747620'),
(209, 5, 1, 5, 29, 4, NULL, '1531747620', '1531747620'),
(210, 5, 1, 5, 30, 4, NULL, '1531747620', '1531747620'),
(211, 5, 1, 5, 31, 4, NULL, '1531747620', '1531747620'),
(212, 5, 1, 5, 32, 4, NULL, '1531747620', '1531747620'),
(213, 5, 1, 5, 33, 4, NULL, '1531747620', '1531747620'),
(214, 5, 1, 6, 34, 45, NULL, '1531747620', '1531747620'),
(215, 5, 1, 6, 35, 59, NULL, '1531747620', '1531747620'),
(216, 6, 1, 1, 1, 4, 1, '1531747669', '1531747669'),
(217, 6, 1, 1, 2, 4, 1, '1531747669', '1531747669'),
(218, 6, 1, 1, 3, 4, 1, '1531747669', '1531747669'),
(219, 6, 1, 1, 4, 4, 1, '1531747669', '1531747669'),
(220, 6, 1, 1, 5, 4, 1, '1531747669', '1531747669'),
(221, 6, 1, 1, 6, 4, 1, '1531747669', '1531747669'),
(222, 6, 1, 1, 7, 4, 1, '1531747669', '1531747669'),
(223, 6, 1, 1, 8, 4, 1, '1531747669', '1531747669'),
(224, 6, 1, 1, 1, 4, 3, '1531747669', '1531747669'),
(225, 6, 1, 1, 2, 4, 3, '1531747669', '1531747669'),
(226, 6, 1, 1, 3, 4, 3, '1531747669', '1531747669'),
(227, 6, 1, 1, 4, 4, 3, '1531747669', '1531747669'),
(228, 6, 1, 1, 5, 4, 3, '1531747669', '1531747669'),
(229, 6, 1, 1, 6, 4, 3, '1531747669', '1531747669'),
(230, 6, 1, 1, 7, 4, 3, '1531747669', '1531747669'),
(231, 6, 1, 1, 8, 4, 3, '1531747669', '1531747669'),
(232, 6, 1, 2, 9, 3, NULL, '1531747670', '1531747670'),
(233, 6, 1, 2, 10, 3, NULL, '1531747670', '1531747670'),
(234, 6, 1, 2, 11, 3, NULL, '1531747670', '1531747670'),
(235, 6, 1, 2, 12, 3, NULL, '1531747670', '1531747670'),
(236, 6, 1, 2, 13, 3, NULL, '1531747670', '1531747670'),
(237, 6, 1, 3, 14, 2, NULL, '1531747670', '1531747670'),
(238, 6, 1, 3, 15, 2, NULL, '1531747670', '1531747670'),
(239, 6, 1, 3, 16, 47, NULL, '1531747670', '1531747670'),
(240, 6, 1, 3, 17, 50, NULL, '1531747670', '1531747670'),
(241, 6, 1, 3, 18, 2, NULL, '1531747670', '1531747670'),
(242, 6, 1, 3, 19, 2, NULL, '1531747670', '1531747670'),
(243, 6, 1, 3, 20, 2, NULL, '1531747670', '1531747670'),
(244, 6, 1, 3, 21, 2, NULL, '1531747670', '1531747670'),
(245, 6, 1, 3, 22, 2, NULL, '1531747670', '1531747670'),
(246, 6, 1, 3, 23, 2, NULL, '1531747670', '1531747670'),
(247, 6, 1, 4, 24, 3, NULL, '1531747670', '1531747670'),
(248, 6, 1, 4, 25, 3, NULL, '1531747670', '1531747670'),
(249, 6, 1, 4, 26, 3, NULL, '1531747670', '1531747670'),
(250, 6, 1, 4, 27, 3, NULL, '1531747670', '1531747670'),
(251, 6, 1, 4, 28, 3, NULL, '1531747670', '1531747670'),
(252, 6, 1, 5, 29, 1, NULL, '1531747670', '1531747670'),
(253, 6, 1, 5, 30, 1, NULL, '1531747670', '1531747670'),
(254, 6, 1, 5, 31, 1, NULL, '1531747670', '1531747670'),
(255, 6, 1, 5, 32, 1, NULL, '1531747670', '1531747670'),
(256, 6, 1, 5, 33, 1, NULL, '1531747670', '1531747670'),
(257, 6, 1, 6, 34, 45, NULL, '1531747670', '1531747670'),
(258, 6, 1, 6, 35, 59, NULL, '1531747670', '1531747670');

-- --------------------------------------------------------

--
-- Table structure for table `class_master`
--

CREATE TABLE IF NOT EXISTS `class_master` (
  `class_id` int(11) NOT NULL COMMENT 'class_id by college',
  `class_name` varchar(255) DEFAULT NULL COMMENT 'class_name',
  `dept_id` int(11) DEFAULT NULL COMMENT 'dept_id from department_master',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Class Master Table';

--
-- Dumping data for table `class_master`
--

INSERT INTO `class_master` (`class_id`, `class_name`, `dept_id`, `created_at`, `updated_at`) VALUES
(1, 'BCA', 0, '1530886343', '1530886343'),
(2, 'MCA', 0, '1531504134', '1531504134');

-- --------------------------------------------------------

--
-- Table structure for table `criteria_master`
--

CREATE TABLE IF NOT EXISTS `criteria_master` (
  `criteria_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL COMMENT 'section_id from section_master',
  `criteria_name` varchar(255) DEFAULT NULL,
  `type_data` int(1) NOT NULL DEFAULT '0' COMMENT '0=simple,1=radio',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='Criteria Master Table';

--
-- Dumping data for table `criteria_master`
--

INSERT INTO `criteria_master` (`criteria_id`, `section_id`, `criteria_name`, `type_data`, `created_at`, `updated_at`) VALUES
(1, 1, 'Subject Knowlege', 0, '1528878417', '1530078002'),
(2, 1, 'Prepardness', 0, '1528878432', '1528878432'),
(3, 1, 'Regularity', 0, '1528878503', '1528878503'),
(4, 1, 'Fluency in English', 0, '1528878526', '1528878526'),
(5, 1, 'Starts class in time', 0, '1528878541', '1528878541'),
(6, 1, 'Relationship with Students', 0, '1528878562', '1528878562'),
(7, 1, 'Class Disicpline', 0, '1528878575', '1528878644'),
(8, 1, 'Periodic Class Test', 0, '1528878599', '1528878599'),
(9, 2, 'Class Rooms', 0, '1528878687', '1528878687'),
(10, 2, 'Laboratories', 0, '1528878715', '1530887366'),
(11, 2, 'Cleanliness Of College Campus', 0, '1528878751', '1528878816'),
(12, 2, 'Urinals', 0, '1528878763', '1528878763'),
(13, 2, 'Parking Facility', 0, '1528878784', '1528878784'),
(14, 3, 'Reception', 0, '1528878838', '1528878838'),
(15, 3, 'First Aid', 0, '1528878851', '1528878851'),
(16, 3, 'Do You Read Notice Board?', 1, '1528878875', '1529739198'),
(17, 3, 'Frequency Of Office Visit', 1, '1528878913', '1529739257'),
(18, 3, 'Overall', 0, '1528878954', '1528878954'),
(19, 3, 'Bonafide', 0, '1528878967', '1528878967'),
(20, 3, 'Admission', 0, '1528878976', '1528878976'),
(21, 3, 'ID Card', 0, '1528878984', '1528878984'),
(22, 3, 'Enrolment', 0, '1528879000', '1528879000'),
(23, 3, 'Uni Exam Forms', 0, '1528879015', '1528879027'),
(24, 4, 'Cooperation Of Library Staff ?', 0, '1528879081', '1528879081'),
(25, 4, 'BOOKS AND REFERENCES', 0, '1528879142', '1528879142'),
(26, 4, 'CDS', 0, '1528879151', '1528879151'),
(27, 4, 'MAGAZINES', 0, '1528879165', '1528879165'),
(28, 4, 'QUESTION PAPER', 0, '1528879175', '1528879175'),
(29, 5, 'Quality Of Food Available', 0, '1528879216', '1528879216'),
(30, 5, 'Cleanliness Of Canteen', 0, '1528879246', '1528879246'),
(31, 5, 'Cleanliness Of Surrounding Area', 0, '1528879269', '1528879269'),
(32, 5, 'Variety Of Food Available', 0, '1528879291', '1528879291'),
(33, 5, 'Pricing Of Food', 0, '1528879313', '1528879313'),
(34, 6, 'Are You a Member Of Sports club ?', 1, '1528879352', '1529739138'),
(35, 6, 'Which Sports Facility Need Importance ?', 1, '1528879403', '1529740828');

-- --------------------------------------------------------

--
-- Table structure for table `department_master`
--

CREATE TABLE IF NOT EXISTS `department_master` (
  `dept_id` int(11) NOT NULL COMMENT 'dept_id',
  `dept_name` varchar(255) DEFAULT NULL COMMENT 'dept name',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Department Master Table';

--
-- Dumping data for table `department_master`
--

INSERT INTO `department_master` (`dept_id`, `dept_name`, `created_at`, `updated_at`) VALUES
(0, 'No Department', NULL, NULL),
(1, 'Computer', '1530886173', '1530886289');

-- --------------------------------------------------------

--
-- Table structure for table `employee_allocation`
--

CREATE TABLE IF NOT EXISTS `employee_allocation` (
  `employee_allocation_id` int(11) NOT NULL COMMENT 'row id emloyee_allocation master',
  `class_id` int(11) NOT NULL COMMENT 'class id from class master',
  `emp_code` int(11) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='emloyee_allocation master';

--
-- Dumping data for table `employee_allocation`
--

INSERT INTO `employee_allocation` (`employee_allocation_id`, `class_id`, `emp_code`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 3, NULL, NULL),
(4, 2, 1, NULL, NULL),
(5, 2, 2, NULL, NULL),
(6, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_master`
--

CREATE TABLE IF NOT EXISTS `employee_master` (
  `emp_code` int(11) NOT NULL COMMENT 'employee unique id from college',
  `emp_name` varchar(255) DEFAULT NULL,
  `emp_phone` varchar(15) DEFAULT NULL COMMENT 'employee phone',
  `emp_email` varchar(255) DEFAULT NULL COMMENT 'employee table email',
  `dept_id` int(11) DEFAULT '0' COMMENT 'dept id from department_master',
  `emp_image` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Emplyoees Master table';

--
-- Dumping data for table `employee_master`
--

INSERT INTO `employee_master` (`emp_code`, `emp_name`, `emp_phone`, `emp_email`, `dept_id`, `emp_image`, `created_at`, `updated_at`) VALUES
(1, 'rushik', '9898989898', 'rushik@gmail.com', 1, 'emp_img_1', '1530886463', '1532202827'),
(2, 'rushi', '9898989887', 'rushi2@gmail.com', 1, 'emp_img_2.jpg', '1530886520', '1532591022'),
(3, 'meet', '9898988798', 'meet@gmail.com', 1, NULL, '1530886637', '1530886637');

-- --------------------------------------------------------

--
-- Table structure for table `entry_record`
--

CREATE TABLE IF NOT EXISTS `entry_record` (
  `entry_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='counts total entry feedback';

--
-- Dumping data for table `entry_record`
--

INSERT INTO `entry_record` (`entry_id`, `class_id`, `created_at`, `updated_at`) VALUES
(5, 1, 1531747620, 1531747620),
(6, 1, 1531747669, 1531747669);

-- --------------------------------------------------------

--
-- Table structure for table `option_master`
--

CREATE TABLE IF NOT EXISTS `option_master` (
  `option_id` int(11) NOT NULL,
  `criteria_id` int(11) NOT NULL,
  `option_text` varchar(255) NOT NULL,
  `option_value` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf16 COMMENT='dynamic option for criteria';

--
-- Dumping data for table `option_master`
--

INSERT INTO `option_master` (`option_id`, `criteria_id`, `option_text`, `option_value`, `created_at`, `updated_at`) VALUES
(45, 34, 'Yes', 'Yes', 1529739137, 1529739137),
(46, 34, 'No', 'No', 1529739138, 1529739138),
(47, 16, 'Daily', 'Daily', 1529739198, 1529739198),
(48, 16, 'Twice a week', 'Twice a week', 1529739198, 1529739198),
(49, 16, 'Thrice a week', 'Thrice a week', 1529739198, 1529739198),
(50, 17, 'Daily', 'Daily', 1529739256, 1529739256),
(51, 17, 'Once a Week', 'Once a Week', 1529739257, 1529739257),
(52, 17, 'With Reference to Notice', 'With Reference to Notice', 1529739257, 1529739257),
(59, 35, 'volley Ball', 'volley Ball', 1529740828, 1529740828),
(60, 35, 'Basket Ball', 'Basket Ball', 1529740828, 1529740828),
(61, 35, 'Kabbadi', 'Kabbadi', 1529740828, 1529740828);

-- --------------------------------------------------------

--
-- Table structure for table `ranking`
--

CREATE TABLE IF NOT EXISTS `ranking` (
  `rank_id` int(11) NOT NULL,
  `rank_name` varchar(255) NOT NULL,
  `rank_value` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ranking`
--

INSERT INTO `ranking` (`rank_id`, `rank_name`, `rank_value`) VALUES
(1, 'UNSATIFACTORY', 1),
(2, 'SATISFACTORY', 2),
(3, 'GOOD', 3),
(4, 'VERY GOOD', 4),
(5, 'EXCELLENT', 5);

-- --------------------------------------------------------

--
-- Table structure for table `remarks_master`
--

CREATE TABLE IF NOT EXISTS `remarks_master` (
  `remark_id` int(11) NOT NULL COMMENT 'row id for remarks_master',
  `entry_id` int(11) NOT NULL COMMENT 'entry_id from entry_record',
  `section_id` int(11) NOT NULL COMMENT 'section_id from section_master',
  `remarks` text NOT NULL COMMENT 'remarks',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='remarks for all section';

--
-- Dumping data for table `remarks_master`
--

INSERT INTO `remarks_master` (`remark_id`, `entry_id`, `section_id`, `remarks`, `created_at`, `updated_at`) VALUES
(25, 5, 1, '3', 1531747620, 1531747620),
(26, 5, 2, '1', 1531747620, 1531747620),
(27, 5, 3, '3', 1531747620, 1531747620),
(28, 5, 4, 'as', 1531747620, 1531747620),
(29, 5, 5, '4', 1531747620, 1531747620),
(30, 5, 6, '1', 1531747620, 1531747620),
(31, 6, 1, '', 1531747669, 1531747669),
(32, 6, 2, '', 1531747670, 1531747670),
(33, 6, 3, '2', 1531747670, 1531747670),
(34, 6, 4, '', 1531747670, 1531747670),
(35, 6, 5, '', 1531747670, 1531747670),
(36, 6, 6, '1', 1531747670, 1531747670);

-- --------------------------------------------------------

--
-- Table structure for table `section_master`
--

CREATE TABLE IF NOT EXISTS `section_master` (
  `section_id` int(11) NOT NULL COMMENT 'seciotn_mster id',
  `section_name` varchar(255) NOT NULL COMMENT 'section_name unique',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='section_master';

--
-- Dumping data for table `section_master`
--

INSERT INTO `section_master` (`section_id`, `section_name`, `created_at`, `updated_at`) VALUES
(1, 'Employee Section', 1528878251, 1528878251),
(2, 'College Campus', 1528878260, 1528878260),
(3, 'Administration Section', 1528878273, 1528878273),
(4, 'Library Section', 1528878287, 1528878287),
(5, 'Canteen And Food', 1528878298, 1528878298),
(6, 'Sports Section', 1528878307, 1528878307);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL COMMENT 'row id for user',
  `user_email` varchar(255) NOT NULL COMMENT 'user email',
  `user_type` int(1) NOT NULL COMMENT 'user type 1=admin',
  `user_password` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT '1',
  `user_image` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='User table ';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_email`, `user_type`, `user_password`, `is_active`, `user_image`, `created_at`, `updated_at`) VALUES
(1, 'admin@feedback.com', 1, '96e79218965eb72c92a549dd5a330112', 1, 'user_img_1.jpg', NULL, '1532498676');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analysis_master`
--
ALTER TABLE `analysis_master`
  ADD PRIMARY KEY (`analysis_master_id`), ADD KEY `entryid_link` (`entry_id`), ADD KEY `related_index` (`class_id`,`section_id`,`criteria_id`,`emp_code`) USING BTREE, ADD KEY `employee_master_analysis` (`emp_code`), ADD KEY `section_id_analysis_link` (`section_id`), ADD KEY `criteria_analysis_link` (`criteria_id`);

--
-- Indexes for table `class_master`
--
ALTER TABLE `class_master`
  ADD PRIMARY KEY (`class_id`), ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `criteria_master`
--
ALTER TABLE `criteria_master`
  ADD PRIMARY KEY (`criteria_id`), ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `department_master`
--
ALTER TABLE `department_master`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `employee_allocation`
--
ALTER TABLE `employee_allocation`
  ADD PRIMARY KEY (`employee_allocation_id`), ADD KEY `class_emplyoee_allocation` (`class_id`), ADD KEY `employee_employee_allocation` (`emp_code`);

--
-- Indexes for table `employee_master`
--
ALTER TABLE `employee_master`
  ADD PRIMARY KEY (`emp_code`), ADD UNIQUE KEY `emp_email` (`emp_email`), ADD KEY `deparmtent id link` (`dept_id`);

--
-- Indexes for table `entry_record`
--
ALTER TABLE `entry_record`
  ADD PRIMARY KEY (`entry_id`), ADD KEY `classid` (`class_id`);

--
-- Indexes for table `option_master`
--
ALTER TABLE `option_master`
  ADD PRIMARY KEY (`option_id`), ADD KEY `criteria_option_link` (`criteria_id`);

--
-- Indexes for table `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `remarks_master`
--
ALTER TABLE `remarks_master`
  ADD PRIMARY KEY (`remark_id`), ADD KEY `entry_id` (`entry_id`), ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `section_master`
--
ALTER TABLE `section_master`
  ADD PRIMARY KEY (`section_id`), ADD UNIQUE KEY `sectioin_name` (`section_name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analysis_master`
--
ALTER TABLE `analysis_master`
  MODIFY `analysis_master_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row_id staff analysis',AUTO_INCREMENT=259;
--
-- AUTO_INCREMENT for table `class_master`
--
ALTER TABLE `class_master`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'class_id by college',AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `criteria_master`
--
ALTER TABLE `criteria_master`
  MODIFY `criteria_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `department_master`
--
ALTER TABLE `department_master`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'dept_id',AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employee_allocation`
--
ALTER TABLE `employee_allocation`
  MODIFY `employee_allocation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row id emloyee_allocation master',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `employee_master`
--
ALTER TABLE `employee_master`
  MODIFY `emp_code` int(11) NOT NULL AUTO_INCREMENT COMMENT 'employee unique id from college',AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `entry_record`
--
ALTER TABLE `entry_record`
  MODIFY `entry_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `option_master`
--
ALTER TABLE `option_master`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `ranking`
--
ALTER TABLE `ranking`
  MODIFY `rank_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `remarks_master`
--
ALTER TABLE `remarks_master`
  MODIFY `remark_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row id for remarks_master',AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `section_master`
--
ALTER TABLE `section_master`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'seciotn_mster id',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row id for user',AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `analysis_master`
--
ALTER TABLE `analysis_master`
ADD CONSTRAINT `class_id_analysis_class_id` FOREIGN KEY (`class_id`) REFERENCES `class_master` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `criteria_analysis_link` FOREIGN KEY (`criteria_id`) REFERENCES `criteria_master` (`criteria_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `employee_master_analysis` FOREIGN KEY (`emp_code`) REFERENCES `employee_master` (`emp_code`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `entry_id_analysis_link` FOREIGN KEY (`entry_id`) REFERENCES `entry_record` (`entry_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `section_id_analysis_link` FOREIGN KEY (`section_id`) REFERENCES `section_master` (`section_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `class_master`
--
ALTER TABLE `class_master`
ADD CONSTRAINT `department_class_link` FOREIGN KEY (`dept_id`) REFERENCES `department_master` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `criteria_master`
--
ALTER TABLE `criteria_master`
ADD CONSTRAINT `section_id_criteria_link` FOREIGN KEY (`section_id`) REFERENCES `section_master` (`section_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee_allocation`
--
ALTER TABLE `employee_allocation`
ADD CONSTRAINT `class_employee_allocation_link` FOREIGN KEY (`class_id`) REFERENCES `class_master` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `employee_master_allocation_link` FOREIGN KEY (`emp_code`) REFERENCES `employee_master` (`emp_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee_master`
--
ALTER TABLE `employee_master`
ADD CONSTRAINT `department_employee_link` FOREIGN KEY (`dept_id`) REFERENCES `department_master` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `entry_record`
--
ALTER TABLE `entry_record`
ADD CONSTRAINT `class_entry_record_link` FOREIGN KEY (`class_id`) REFERENCES `class_master` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `option_master`
--
ALTER TABLE `option_master`
ADD CONSTRAINT `criteria_id_option_master_link` FOREIGN KEY (`criteria_id`) REFERENCES `criteria_master` (`criteria_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `remarks_master`
--
ALTER TABLE `remarks_master`
ADD CONSTRAINT `entry_id_rematk_link` FOREIGN KEY (`entry_id`) REFERENCES `entry_record` (`entry_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `section_id_remark_section_id` FOREIGN KEY (`section_id`) REFERENCES `section_master` (`section_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
