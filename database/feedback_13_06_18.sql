-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 13, 2018 at 08:13 AM
-- Server version: 5.7.21
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedback`
--

-- --------------------------------------------------------

--
-- Table structure for table `analysis_master`
--

DROP TABLE IF EXISTS `analysis_master`;
CREATE TABLE IF NOT EXISTS `analysis_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row_id staff analysis',
  `class_id` int(11) NOT NULL COMMENT 'class id from class master',
  `point_id` int(11) NOT NULL COMMENT 'point_id from criteria_master',
  `points` int(11) NOT NULL DEFAULT '0' COMMENT 'points got 0 - 5',
  `emp_code` int(11) NOT NULL COMMENT 'emp_code from employee_master',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class_id` (`class_id`),
  UNIQUE KEY `point_id` (`point_id`),
  UNIQUE KEY `emp_code` (`emp_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Staff points table';

-- --------------------------------------------------------

--
-- Table structure for table `class_master`
--

DROP TABLE IF EXISTS `class_master`;
CREATE TABLE IF NOT EXISTS `class_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row id class master',
  `class_id` int(11) NOT NULL COMMENT 'class_id by college',
  `class_name` varchar(255) DEFAULT NULL COMMENT 'class_name',
  `dept_id` int(11) DEFAULT NULL COMMENT 'dept_id from department_master',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class_id` (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Class Master Table';

--
-- Dumping data for table `class_master`
--

INSERT INTO `class_master` (`id`, `class_id`, `class_name`, `dept_id`, `created_at`, `updated_at`) VALUES
(2, 2, 'BCA', 1, '1528282824', '1528283999'),
(3, 3, 'MCA', 1, '1528367575', '1528367575'),
(4, 4, 'MsciT', 1, '1528367588', '1528367588'),
(5, 5, 'BsciT', 1, '1528367596', '1528367596');

-- --------------------------------------------------------

--
-- Table structure for table `criteria_master`
--

DROP TABLE IF EXISTS `criteria_master`;
CREATE TABLE IF NOT EXISTS `criteria_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row id of criteria Master',
  `section_id` int(11) NOT NULL COMMENT 'section_id from section_master',
  `point_name` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Criteria Master Table';

--
-- Dumping data for table `criteria_master`
--

INSERT INTO `criteria_master` (`id`, `section_id`, `point_name`, `created_at`, `updated_at`) VALUES
(9, 2, 'Cleanliness', '1528877091', '1528877091');

-- --------------------------------------------------------

--
-- Table structure for table `department_master`
--

DROP TABLE IF EXISTS `department_master`;
CREATE TABLE IF NOT EXISTS `department_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row id department master',
  `dept_id` int(11) NOT NULL COMMENT 'dept_id',
  `dept_name` varchar(255) DEFAULT NULL COMMENT 'dept name',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dept_id` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Department Master Table';

--
-- Dumping data for table `department_master`
--

INSERT INTO `department_master` (`id`, `dept_id`, `dept_name`, `created_at`, `updated_at`) VALUES
(4, 1, 'Computer', '1528099679', '1528099679');

-- --------------------------------------------------------

--
-- Table structure for table `employee_allocation`
--

DROP TABLE IF EXISTS `employee_allocation`;
CREATE TABLE IF NOT EXISTS `employee_allocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row id emloyee_allocation master',
  `class_id` int(11) NOT NULL COMMENT 'class id from class master',
  `employee_codes` text NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='emloyee_allocation master';

--
-- Dumping data for table `employee_allocation`
--

INSERT INTO `employee_allocation` (`id`, `class_id`, `employee_codes`, `created_at`, `updated_at`) VALUES
(15, 5, '23', NULL, NULL),
(17, 3, '23', NULL, NULL),
(18, 2, '23', NULL, NULL),
(19, 2, '5', NULL, NULL),
(20, 2, '21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_master`
--

DROP TABLE IF EXISTS `employee_master`;
CREATE TABLE IF NOT EXISTS `employee_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row id employee master',
  `emp_code` int(11) NOT NULL COMMENT 'employee unique id from college',
  `emp_name` varchar(255) DEFAULT NULL,
  `emp_phone` varchar(15) DEFAULT NULL COMMENT 'employee phone',
  `emp_email` varchar(255) DEFAULT NULL COMMENT 'employee table email',
  `dept_id` int(11) DEFAULT NULL COMMENT 'dept id from department_master',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emp_code` (`emp_code`),
  UNIQUE KEY `emp_email` (`emp_email`),
  KEY `deparmtent id link` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Emplyoees Master table';

--
-- Dumping data for table `employee_master`
--

INSERT INTO `employee_master` (`id`, `emp_code`, `emp_name`, `emp_phone`, `emp_email`, `dept_id`, `created_at`, `updated_at`) VALUES
(4, 23, 'rushik', '6565656565', 'rushik2@gmail.com', 0, '1528032553', '1528032553'),
(5, 5, 'meet', '9898989898', 'as@gmail.com', 0, '1528104035', '1528367615'),
(6, 21, 'rushi', '6565656562', 'rushi@gmail.com', 0, '1528367673', '1528367673');

-- --------------------------------------------------------

--
-- Table structure for table `remarks_master`
--

DROP TABLE IF EXISTS `remarks_master`;
CREATE TABLE IF NOT EXISTS `remarks_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row id for remarks_master',
  `section_id` int(11) NOT NULL COMMENT 'section_id from section_master',
  `remarks` text NOT NULL COMMENT 'remarks',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='remarks for all section';

-- --------------------------------------------------------

--
-- Table structure for table `section_master`
--

DROP TABLE IF EXISTS `section_master`;
CREATE TABLE IF NOT EXISTS `section_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'seciotn_mster id',
  `section_name` varchar(255) NOT NULL COMMENT 'section_name unique',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sectioin_name` (`section_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='section_master';

--
-- Dumping data for table `section_master`
--

INSERT INTO `section_master` (`id`, `section_name`, `created_at`, `updated_at`) VALUES
(2, 'College', 1528876805, 1528876805);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row id for user',
  `user_email` varchar(255) NOT NULL COMMENT 'user email',
  `user_type` int(1) NOT NULL COMMENT 'user type 1=admin',
  `user_password` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT '1',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='User table ';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_email`, `user_type`, `user_password`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'admin@feedback.com', 1, '96e79218965eb72c92a549dd5a330112', 1, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
