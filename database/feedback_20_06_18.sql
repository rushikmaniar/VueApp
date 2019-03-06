-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2018 at 05:55 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

CREATE TABLE `analysis_master` (
  `id` int(11) NOT NULL COMMENT 'row_id staff analysis',
  `class_id` int(11) NOT NULL COMMENT 'class id from class master',
  `point_id` int(11) NOT NULL COMMENT 'point_id from criteria_master',
  `points` int(11) NOT NULL DEFAULT '0' COMMENT 'points got 0 - 5',
  `emp_code` int(11) NOT NULL COMMENT 'emp_code from employee_master',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Staff points table';

-- --------------------------------------------------------

--
-- Table structure for table `class_master`
--

CREATE TABLE `class_master` (
  `id` int(11) NOT NULL COMMENT 'row id class master',
  `class_id` int(11) NOT NULL COMMENT 'class_id by college',
  `class_name` varchar(255) DEFAULT NULL COMMENT 'class_name',
  `dept_id` int(11) DEFAULT NULL COMMENT 'dept_id from department_master',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Class Master Table';

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

CREATE TABLE `criteria_master` (
  `id` int(11) NOT NULL COMMENT 'row id of criteria Master',
  `section_id` int(11) NOT NULL COMMENT 'section_id from section_master',
  `point_name` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Criteria Master Table';

--
-- Dumping data for table `criteria_master`
--

INSERT INTO `criteria_master` (`id`, `section_id`, `point_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Subject Knowlege', '1528878417', '1528878417'),
(2, 1, 'Prepardness', '1528878432', '1528878432'),
(3, 1, 'Regularity', '1528878503', '1528878503'),
(4, 1, 'Fluency in English', '1528878526', '1528878526'),
(5, 1, 'Starts class in time', '1528878541', '1528878541'),
(6, 1, 'Relationship with Students', '1528878562', '1528878562'),
(7, 1, 'Class Disicpline', '1528878575', '1528878644'),
(8, 1, 'Periodic Class Test', '1528878599', '1528878599'),
(9, 2, 'Class Rooms', '1528878687', '1528878687'),
(10, 2, 'Laboratories', '1528878715', '1528878722'),
(11, 2, 'Cleanliness Of College Campus', '1528878751', '1528878816'),
(12, 2, 'Urinals', '1528878763', '1528878763'),
(13, 2, 'Parking Facility', '1528878784', '1528878784'),
(14, 3, 'Reception', '1528878838', '1528878838'),
(15, 3, 'First Aid', '1528878851', '1528878851'),
(16, 3, 'Do You Read Notice Board?', '1528878875', '1528878875'),
(17, 3, 'Frequency Of Office Visit', '1528878913', '1528878913'),
(18, 3, 'Overall', '1528878954', '1528878954'),
(19, 3, 'Bonafide', '1528878967', '1528878967'),
(20, 3, 'Admission', '1528878976', '1528878976'),
(21, 3, 'ID Card', '1528878984', '1528878984'),
(22, 3, 'Enrolment', '1528879000', '1528879000'),
(23, 3, 'Uni Exam Forms', '1528879015', '1528879027'),
(24, 4, 'Cooperation Of Library Staff ?', '1528879081', '1528879081'),
(25, 4, 'BOOKS AND REFERENCES', '1528879142', '1528879142'),
(26, 4, 'CDS', '1528879151', '1528879151'),
(27, 4, 'MAGAZINES', '1528879165', '1528879165'),
(28, 4, 'QUESTION PAPER', '1528879175', '1528879175'),
(29, 5, 'Quality Of Food Available', '1528879216', '1528879216'),
(30, 5, 'Cleanliness Of Canteen', '1528879246', '1528879246'),
(31, 5, 'Cleanliness Of Surrounding Area', '1528879269', '1528879269'),
(32, 5, 'Variety Of Food Available', '1528879291', '1528879291'),
(33, 5, 'Pricing Of Food', '1528879313', '1528879313'),
(34, 6, 'Are You a Member Of Sports club ?', '1528879352', '1528879352'),
(35, 6, 'Which Sports Facility Need Importance ?', '1528879403', '1528879411'),
(36, 6, 'Do college tournaments Affects Studies?', '1528879433', '1528879449');

-- --------------------------------------------------------

--
-- Table structure for table `department_master`
--

CREATE TABLE `department_master` (
  `id` int(11) NOT NULL COMMENT 'row id department master',
  `dept_id` int(11) NOT NULL COMMENT 'dept_id',
  `dept_name` varchar(255) DEFAULT NULL COMMENT 'dept name',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Department Master Table';

--
-- Dumping data for table `department_master`
--

INSERT INTO `department_master` (`id`, `dept_id`, `dept_name`, `created_at`, `updated_at`) VALUES
(4, 1, 'Computer', '1528099679', '1528099679');

-- --------------------------------------------------------

--
-- Table structure for table `employee_allocation`
--

CREATE TABLE `employee_allocation` (
  `id` int(11) NOT NULL COMMENT 'row id emloyee_allocation master',
  `class_id` int(11) NOT NULL COMMENT 'class id from class master',
  `employee_codes` text NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='emloyee_allocation master';

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

CREATE TABLE `employee_master` (
  `id` int(11) NOT NULL COMMENT 'row id employee master',
  `emp_code` int(11) NOT NULL COMMENT 'employee unique id from college',
  `emp_name` varchar(255) DEFAULT NULL,
  `emp_phone` varchar(15) DEFAULT NULL COMMENT 'employee phone',
  `emp_email` varchar(255) DEFAULT NULL COMMENT 'employee table email',
  `dept_id` int(11) DEFAULT NULL COMMENT 'dept id from department_master',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Emplyoees Master table';

--
-- Dumping data for table `employee_master`
--

INSERT INTO `employee_master` (`id`, `emp_code`, `emp_name`, `emp_phone`, `emp_email`, `dept_id`, `created_at`, `updated_at`) VALUES
(4, 23, 'rushik', '6565656565', 'rushik2@gmail.com', 0, '1528032553', '1528032553'),
(5, 5, 'meet', '9898989898', 'as@gmail.com', 0, '1528104035', '1528367615'),
(6, 21, 'rushi', '6565656562', 'rushi@gmail.com', 0, '1528367673', '1528367673');

-- --------------------------------------------------------

--
-- Table structure for table `option_master`
--

CREATE TABLE `option_master` (
  `id` int(11) NOT NULL,
  `criteria_id` int(11) NOT NULL,
  `option_text` varchar(255) NOT NULL,
  `option_value` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COMMENT='dynamic option for criteria';

-- --------------------------------------------------------

--
-- Table structure for table `remarks_master`
--

CREATE TABLE `remarks_master` (
  `id` int(11) NOT NULL COMMENT 'row id for remarks_master',
  `section_id` int(11) NOT NULL COMMENT 'section_id from section_master',
  `remarks` text NOT NULL COMMENT 'remarks'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='remarks for all section';

-- --------------------------------------------------------

--
-- Table structure for table `section_master`
--

CREATE TABLE `section_master` (
  `id` int(11) NOT NULL COMMENT 'seciotn_mster id',
  `section_name` varchar(255) NOT NULL COMMENT 'section_name unique',
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='section_master';

--
-- Dumping data for table `section_master`
--

INSERT INTO `section_master` (`id`, `section_name`, `created_at`, `updated_at`) VALUES
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

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL COMMENT 'row id for user',
  `user_email` varchar(255) NOT NULL COMMENT 'user email',
  `user_type` int(1) NOT NULL COMMENT 'user type 1=admin',
  `user_password` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT '1',
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='User table ';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_email`, `user_type`, `user_password`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'admin@feedback.com', 1, '96e79218965eb72c92a549dd5a330112', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analysis_master`
--
ALTER TABLE `analysis_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_id` (`class_id`),
  ADD UNIQUE KEY `point_id` (`point_id`),
  ADD UNIQUE KEY `emp_code` (`emp_code`);

--
-- Indexes for table `class_master`
--
ALTER TABLE `class_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_id` (`class_id`);

--
-- Indexes for table `criteria_master`
--
ALTER TABLE `criteria_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_master`
--
ALTER TABLE `department_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dept_id` (`dept_id`);

--
-- Indexes for table `employee_allocation`
--
ALTER TABLE `employee_allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_master`
--
ALTER TABLE `employee_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emp_code` (`emp_code`),
  ADD UNIQUE KEY `emp_email` (`emp_email`),
  ADD KEY `deparmtent id link` (`dept_id`);

--
-- Indexes for table `remarks_master`
--
ALTER TABLE `remarks_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_master`
--
ALTER TABLE `section_master`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sectioin_name` (`section_name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analysis_master`
--
ALTER TABLE `analysis_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row_id staff analysis';
--
-- AUTO_INCREMENT for table `class_master`
--
ALTER TABLE `class_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row id class master', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `criteria_master`
--
ALTER TABLE `criteria_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row id of criteria Master', AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `department_master`
--
ALTER TABLE `department_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row id department master', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `employee_allocation`
--
ALTER TABLE `employee_allocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row id emloyee_allocation master', AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `employee_master`
--
ALTER TABLE `employee_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row id employee master', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `remarks_master`
--
ALTER TABLE `remarks_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row id for remarks_master';
--
-- AUTO_INCREMENT for table `section_master`
--
ALTER TABLE `section_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'seciotn_mster id', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'row id for user', AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
