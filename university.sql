-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2018 at 10:42 AM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `university`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_calender`
--

CREATE TABLE IF NOT EXISTS `academic_calender` (
  `Date` varchar(50) NOT NULL,
  `Day` varchar(50) NOT NULL,
  `Details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academic_calender`
--

INSERT INTO `academic_calender` (`Date`, `Day`, `Details`) VALUES
('August 6, 2018', 'Monday', 'Make-up class: Regular Sunday Classes'),
('August 8, 2018', 'Wednesday', 'A further amount of Tk. 1000/- will be imposed as late fine if students fail to make payment of Tuition Fee and Trimester Fee within this date'),
('August 13, 2018 ', 'Monday', 'Make-up class: Regular Wednesday Classes'),
('August 14, 2018 ', 'Tuesday', 'Last Day of Course Withdrawal'),
('August 15, 2018', 'Wednesday', 'Holiday: National Mourning Day'),
('August 20 , 2018-August 26, 2018', 'Monday-Sunday', 'Holiday: *Eid-ul-Azha'),
('September 2, 2018', 'Sunday', 'Holiday: Janmashtomi'),
('September 3, 2018', 'Monday', 'Make-up class: Regular Tuesday Classes'),
('September 5, 2018', 'Wednesday', 'A further amount of Tk. 1000/- will be imposed as late fine if students fail to make payment of Tuition Fee and Trimester Fee within this date.'),
('September 10, 2018', 'Monday', 'Make-up class: Regular Wednesday Classes'),
('September 17, 2018-September 19, 2018', 'Monday-Wednesday', 'Classes will remain suspended'),
('September 20 , 2018-September 29, 2018', 'Thursday-Saturday', 'Final Exam'),
('September 21, 2018', 'Friday', 'Holiday: *Ashura'),
('October 3, 2018', 'Wednesday', 'Last Day of Grade Submission (including Self-Study courses)');

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `ID` varchar(5) NOT NULL DEFAULT '',
  `tot_amnt` int(11) DEFAULT NULL,
  `paid` int(11) DEFAULT NULL,
  `due` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `ID` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `password`) VALUES
('111222', '12345'),
('333444', '67890');

-- --------------------------------------------------------

--
-- Table structure for table `calender`
--

CREATE TABLE IF NOT EXISTS `calender` (
  `SL` int(20) NOT NULL,
  `Timester` varchar(20) NOT NULL,
  `Date` varchar(10) NOT NULL,
  `Day` varchar(20) NOT NULL,
  `Details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calender`
--

INSERT INTO `calender` (`SL`, `Timester`, `Date`, `Day`, `Details`) VALUES
(1, 'Summer-2018', '2018-05-1', 'Tuesday', ' Holiday: May Day'),
(2, 'Summer-2018', '2018-05-2', 'Wednesday', ' Holiday: *Shab-e-Barat'),
(3, 'Summer-2018', '2018-05-10', 'Thursday', ' Make-up class: Regular Wednesday Classes'),
(4, 'Summer-2018', '2018-05-10', 'Thursday', ' A further amount of Tk. 1000/- will be imposed as late fine if students fail to make payment of Tuition Fee and Trimester Fee within this date.'),
(5, 'Summer-2018', '2018-05-13', 'Sunday', ' Course advising & section selection start..'),
(6, 'Summer-2018', '2018-05-16', 'Tuesday', 'Last day of section selection'),
(7, 'Spring-2019', '2018-05-20', 'Sunday', ' Final Exam'),
(7, 'Summer-2018', '2018-05-31', 'Thursday', 'Last day of Grade Submission (including Self-Study courses)');

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE IF NOT EXISTS `classroom` (
  `building` varchar(15) NOT NULL DEFAULT '',
  `room_number` varchar(7) NOT NULL DEFAULT '',
  `capacity` decimal(4,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`building`, `room_number`, `capacity`) VALUES
('campus-1', '102', '30'),
('campus-1', '104', '30'),
('campus-1', '106', '30'),
('campus-1', '111', '30'),
('campus-1', '206', '30'),
('campus-1', '211', '30'),
('campus-1', '412', '30'),
('campus-4', '4302', '30'),
('campus-4', '4405', '30'),
('campus-4', '4602', '30');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `course_id` varchar(8) NOT NULL DEFAULT '',
  `title` varchar(50) DEFAULT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `credits` decimal(2,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `title`, `dept_name`, `credits`) VALUES
('BBA-103', 'Management', 'BBA', '3'),
('BBA-119', 'Finance', 'BBA', '3'),
('CSE-007', 'Elementary Calculas', 'EEE', '3'),
('CSE-210', 'Elementary Calculas', 'BBA', '3'),
('CSI-121', 'Structure Programing Language', 'CSE', '3'),
('CSI-122', 'Structure Programing Language Lab', 'CSE', '1'),
('CSI-217', 'Data Structure', 'CSE', '3'),
('CSI-218', 'Data Structure Lab', 'CSE', '1'),
('CSI-411', 'Object Oriented Programing', 'CSE', '3'),
('CSI-412', 'Object Oriented Programing Lab', 'CSE', '1'),
('EEE-210', 'Electrical Circuit', 'EEE', '3'),
('EEE-211', 'Electrical Circuit Lab ', 'EEE', '1'),
('MATH-003', 'Elementary Calculas', 'CSE', '3'),
('PHY-105', 'Physics', 'CSE', '3');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `dept_name` varchar(100) NOT NULL DEFAULT '',
  `building` varchar(100) DEFAULT NULL,
  `tot_cred` decimal(3,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_name`, `building`, `tot_cred`) VALUES
('BBA', 'campus-2', '138'),
('CSE', 'campus-1', '138'),
('EEE', 'campus-1', '138'),
('ETE', 'campus-4', '138');

-- --------------------------------------------------------

--
-- Table structure for table `exam_routine`
--

CREATE TABLE IF NOT EXISTS `exam_routine` (
  `course_id` varchar(8) DEFAULT NULL,
  `day` varchar(50) DEFAULT NULL,
  `time` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_routine`
--

INSERT INTO `exam_routine` (`course_id`, `day`, `time`) VALUES
('MATH-003', '2', '9.00'),
('CSI-411', '2', '9.00'),
('CSI-121', '5', '2.30'),
('PHY-105', '5', '2.30');

-- --------------------------------------------------------

--
-- Table structure for table `grade_value`
--

CREATE TABLE IF NOT EXISTS `grade_value` (
  `grade` varchar(5) NOT NULL DEFAULT '',
  `grade_val` varchar(5) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade_value`
--

INSERT INTO `grade_value` (`grade`, `grade_val`) VALUES
('A', '4.00'),
('A-', '3.87'),
('B', '3.00'),
('B+', '3.33'),
('B-', '2.67'),
('C', '2.00'),
('C+', '2.33'),
('C-', '1.67'),
('D', '1.00'),
('D+', '1.33'),
('F', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `prereq`
--

CREATE TABLE IF NOT EXISTS `prereq` (
  `course_id` varchar(8) NOT NULL DEFAULT '',
  `prereq_id` varchar(8) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prereq`
--

INSERT INTO `prereq` (`course_id`, `prereq_id`) VALUES
('BBA-103', 'BBA-119'),
('EEE-210', 'CSE-007'),
('EEE-211', 'CSE-007'),
('BBA-119', 'CSE-210'),
('CSI-217', 'CSI-121'),
('CSI-218', 'CSI-122');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `ID` varchar(100) DEFAULT NULL,
  `course_id` varchar(8) DEFAULT NULL,
  `sec_id` varchar(8) DEFAULT NULL,
  `semester` varchar(6) DEFAULT NULL,
  `year` decimal(4,0) DEFAULT NULL,
  `time_slot_id` varchar(4) DEFAULT NULL,
  `approval` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`ID`, `course_id`, `sec_id`, `semester`, `year`, `time_slot_id`, `approval`) VALUES
('011141116', 'CSI-122', NULL, NULL, NULL, NULL, 'conf'),
('011141116', 'CSI-121', NULL, NULL, NULL, NULL, 'conf'),
('011141116', 'MATH-003', NULL, NULL, NULL, NULL, 'conf');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
  `ID` varchar(100) NOT NULL DEFAULT '',
  `course_id` varchar(8) NOT NULL DEFAULT '',
  `grade` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scriptcheck`
--

CREATE TABLE IF NOT EXISTS `scriptcheck` (
  `ID` varchar(100) DEFAULT NULL,
  `course_id` varchar(8) DEFAULT NULL,
  `sec_id` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE IF NOT EXISTS `section` (
  `course_id` varchar(8) NOT NULL DEFAULT '',
  `sec_id` varchar(8) NOT NULL DEFAULT '',
  `semester` varchar(6) NOT NULL DEFAULT '',
  `year` decimal(4,0) NOT NULL DEFAULT '0',
  `building` varchar(15) DEFAULT NULL,
  `room_number` varchar(7) DEFAULT NULL,
  `time_slot_id` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `ID` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `comp_cred` decimal(3,0) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `name`, `email`, `dept_name`, `comp_cred`, `password`) VALUES
('011141116', 'Sultana Kowser', 'sarahkawser00@gmail.com', 'CSE', '0', '121212'),
('011143040', 'Jahir Ahmed', 'jahir13@gmail.com', 'CSE', '0', '101010'),
('011143062', 'Abdullah Al Noman', 'noman13@gmail.com', 'CSE', '0', '151515'),
('011143063', 'Moumita Kabir', 'moumitakabir13@gmail.com', 'CSE', '0', '232323'),
('011143076', 'Sagor Sarker', 'sagor13@gmail.com', 'CSE', '0', '131313');

-- --------------------------------------------------------

--
-- Table structure for table `takes`
--

CREATE TABLE IF NOT EXISTS `takes` (
  `ID` varchar(100) NOT NULL DEFAULT '',
  `course_id` varchar(8) NOT NULL DEFAULT '',
  `sec_id` varchar(8) NOT NULL DEFAULT '',
  `semester` varchar(6) NOT NULL DEFAULT '',
  `year` decimal(4,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `time_slot`
--

CREATE TABLE IF NOT EXISTS `time_slot` (
  `time_slot_id` varchar(4) NOT NULL DEFAULT '',
  `day` varchar(100) NOT NULL DEFAULT '',
  `start` decimal(3,2) NOT NULL DEFAULT '0.00',
  `end` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_slot`
--

INSERT INTO `time_slot` (`time_slot_id`, `day`, `start`, `end`) VALUES
('A', 'Mon', '8.30', '9.50'),
('B', 'Mon', '2.10', '3.30'),
('C', 'Tues', '9.55', '9.99'),
('D', 'Tues', '3.30', '5.00'),
('E', 'Wed', '9.99', '9.99'),
('F', 'Wed', '2.10', '5.00'),
('G', 'Sun', '9.99', '2.05'),
('H', 'Sun', '8.30', '9.99');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE IF NOT EXISTS `upload` (
  `C_ID` int(100) NOT NULL,
  `course_id` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `path` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`C_ID`, `course_id`, `file`, `description`, `path`) VALUES
(1, 'CSI-122', 'notification.txt', 'sp111', 'uploads/notification.txt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`building`,`room_number`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`), ADD KEY `dept_name` (`dept_name`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_name`);

--
-- Indexes for table `exam_routine`
--
ALTER TABLE `exam_routine`
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `grade_value`
--
ALTER TABLE `grade_value`
  ADD PRIMARY KEY (`grade`,`grade_val`);

--
-- Indexes for table `prereq`
--
ALTER TABLE `prereq`
  ADD PRIMARY KEY (`course_id`,`prereq_id`), ADD KEY `prereq_id` (`prereq_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD KEY `ID` (`ID`), ADD KEY `course_id` (`course_id`,`sec_id`,`semester`,`year`), ADD KEY `time_slot_id` (`time_slot_id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`ID`,`course_id`), ADD KEY `course_id` (`course_id`), ADD KEY `grade` (`grade`);

--
-- Indexes for table `scriptcheck`
--
ALTER TABLE `scriptcheck`
  ADD KEY `ID` (`ID`), ADD KEY `course_id` (`course_id`,`sec_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`course_id`,`sec_id`,`semester`,`year`), ADD KEY `time_slot_id` (`time_slot_id`), ADD KEY `building` (`building`,`room_number`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`), ADD KEY `dept_name` (`dept_name`);

--
-- Indexes for table `takes`
--
ALTER TABLE `takes`
  ADD PRIMARY KEY (`ID`,`course_id`,`sec_id`,`semester`,`year`), ADD KEY `course_id` (`course_id`,`sec_id`,`semester`,`year`);

--
-- Indexes for table `time_slot`
--
ALTER TABLE `time_slot`
  ADD PRIMARY KEY (`time_slot_id`,`day`,`start`);

--
-- Indexes for table `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`C_ID`), ADD KEY `course_id` (`course_id`) COMMENT 'course_id';

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `upload`
--
ALTER TABLE `upload`
  MODIFY `C_ID` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `student` (`ID`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`) ON DELETE SET NULL;

--
-- Constraints for table `exam_routine`
--
ALTER TABLE `exam_routine`
ADD CONSTRAINT `exam_routine_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE;

--
-- Constraints for table `prereq`
--
ALTER TABLE `prereq`
ADD CONSTRAINT `prereq_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE,
ADD CONSTRAINT `prereq_ibfk_2` FOREIGN KEY (`prereq_id`) REFERENCES `course` (`course_id`);

--
-- Constraints for table `registration`
--
ALTER TABLE `registration`
ADD CONSTRAINT `registration_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `student` (`ID`),
ADD CONSTRAINT `registration_ibfk_2` FOREIGN KEY (`course_id`, `sec_id`, `semester`, `year`) REFERENCES `section` (`course_id`, `sec_id`, `semester`, `year`),
ADD CONSTRAINT `registration_ibfk_3` FOREIGN KEY (`time_slot_id`) REFERENCES `time_slot` (`time_slot_id`);

--
-- Constraints for table `result`
--
ALTER TABLE `result`
ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE,
ADD CONSTRAINT `result_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `student` (`ID`),
ADD CONSTRAINT `result_ibfk_3` FOREIGN KEY (`grade`) REFERENCES `grade_value` (`grade`);

--
-- Constraints for table `scriptcheck`
--
ALTER TABLE `scriptcheck`
ADD CONSTRAINT `scriptcheck_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `student` (`ID`),
ADD CONSTRAINT `scriptcheck_ibfk_2` FOREIGN KEY (`course_id`, `sec_id`) REFERENCES `section` (`course_id`, `sec_id`);

--
-- Constraints for table `section`
--
ALTER TABLE `section`
ADD CONSTRAINT `section_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE,
ADD CONSTRAINT `section_ibfk_2` FOREIGN KEY (`time_slot_id`) REFERENCES `time_slot` (`time_slot_id`) ON DELETE CASCADE,
ADD CONSTRAINT `section_ibfk_3` FOREIGN KEY (`building`, `room_number`) REFERENCES `classroom` (`building`, `room_number`) ON DELETE SET NULL;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`) ON DELETE SET NULL;

--
-- Constraints for table `takes`
--
ALTER TABLE `takes`
ADD CONSTRAINT `takes_ibfk_1` FOREIGN KEY (`course_id`, `sec_id`, `semester`, `year`) REFERENCES `section` (`course_id`, `sec_id`, `semester`, `year`) ON DELETE CASCADE,
ADD CONSTRAINT `takes_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `student` (`ID`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
