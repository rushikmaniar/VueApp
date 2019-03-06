-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 17, 2018 at 06:59 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

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
-- Table structure for table `class_master`
--

DROP TABLE IF EXISTS `class_master`;
CREATE TABLE IF NOT EXISTS `class_master` (
  `id` int(11) NOT NULL COMMENT 'row id class master',
  `class_id` int(11) NOT NULL COMMENT 'class_id by college',
  `class_name` varchar(255) DEFAULT NULL COMMENT 'class_name',
  `dept_id` int(11) DEFAULT NULL COMMENT 'dept_id from department_master',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class_id` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Class Master Table';

-- --------------------------------------------------------

--
-- Table structure for table `criteria_master`
--

DROP TABLE IF EXISTS `criteria_master`;
CREATE TABLE IF NOT EXISTS `criteria_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row id of criteria Master',
  `point_name` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Criteria Master Table';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Department Master Table';

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `class_id` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='emloyee_allocation master';

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Emplyoees Master table';

-- --------------------------------------------------------

--
-- Table structure for table `staff_analysis_master`
--

DROP TABLE IF EXISTS `staff_analysis_master`;
CREATE TABLE IF NOT EXISTS `staff_analysis_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row_id staff analysis',
  `class_id` int(11) NOT NULL COMMENT 'class id from class master',
  `point_id` int(11) NOT NULL COMMENT 'point_id from criteria_master',
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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department_master`
--
ALTER TABLE `department_master`
  ADD CONSTRAINT `deparmtent id link` FOREIGN KEY (`id`) REFERENCES `employee_master` (`dept_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
