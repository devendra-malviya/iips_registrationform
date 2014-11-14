-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 13, 2014 at 05:47 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sim database`
--
CREATE DATABASE IF NOT EXISTS `sim database` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sim database`;

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE IF NOT EXISTS `student_info` (
  `High_School_Name` varchar(30) NOT NULL,
  `Year_Of_Passing` int(4) NOT NULL,
  `Higher_Secondary_School_Name` varchar(30) NOT NULL,
  `Year_Of_Passing1` int(4) NOT NULL,
  `Enrollment_Number` varchar(10) NOT NULL,
  `Roll_Number` varchar(10) NOT NULL,
  `Current_Course` varchar(15) NOT NULL,
  `Current_Sem` tinyint(2) NOT NULL COMMENT 'This is the current semester in which the student is studying',
  `Current_section` varchar(1) NOT NULL,
  `Enrollment_Year` int(4) NOT NULL,
  `Alternate_Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`High_School_Name`, `Year_Of_Passing`, `Higher_Secondary_School_Name`, `Year_Of_Passing1`, `Enrollment_Number`, `Roll_Number`, `Current_Course`, `Current_Sem`, `Current_section`, `Enrollment_Year`, `Alternate_Email`) VALUES
('Vindhaya', 2017, 'Anything', 2017, '2011', 'IT-2k11-11', 'M.Tech', 7, 'A', 2011, 'any@gmail.com'),
('Vindhaya', 2017, 'Anything', 2017, '2011', 'IT-2k11-11', 'M.Tech', 0, 'A', 2011, 'any@gmail.com'),
('Vindhaya', 2017, 'Anything', 2017, '2011', 'IT-2k11-11', 'M.Tech', 0, 'A', 2011, 'any@gmail.com'),
('Vindhaya', 2017, 'Anything', 2017, '2011', 'IT-2k11-11', 'M.Tech', 0, 'A', 2011, 'any@gmail.com'),
('Vindhaya', 2017, 'Anything', 2017, '2011', 'IT-2k11-11', 'M.Tech', 1, 'A', 2011, 'any@gmail.com'),
('', 0, '', 0, '', '', 'Select Course', 0, 'A', 0, ''),
('', 0, '', 0, '', '', 'Select Course', 0, 'A', 0, ''),
('dsflds', 0, 'qwljrqqle', 0, 'asdlfk', 'afj', 'MCA', 4, 'A', 0, 'klfd@gmailcom');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE IF NOT EXISTS `user_master` (
  `First_Name` text NOT NULL,
  `Mid_name` text NOT NULL,
  `Last_Name` text NOT NULL,
  `Father_Name` text NOT NULL,
  `Mother_Name` text NOT NULL,
  `Bmonth` varchar(50) NOT NULL,
  `Bdate` int(2) NOT NULL,
  `Byear` varchar(4) NOT NULL,
  `Gender` varchar(8) NOT NULL,
  `Category` varchar(10) NOT NULL,
  `Mobile_Number` varchar(14) NOT NULL,
  `Telephone_Number` varchar(16) DEFAULT NULL,
  `Email` varchar(40) NOT NULL COMMENT '(Domain Specific Email)This is another identity of a user. Ex- username@iips.edu.in',
  `Current_Address` varchar(40) NOT NULL,
  `Permanent_Address` varchar(40) NOT NULL,
  `Type` text NOT NULL COMMENT 'This is type of user like student, faculty , staff, alumni, admin',
  `Status` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Status of user whether he is active(1) in the system or not(0). '
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table includes basic info of each user exist/left in the system.';

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`First_Name`, `Mid_name`, `Last_Name`, `Father_Name`, `Mother_Name`, `Bmonth`, `Bdate`, `Byear`, `Gender`, `Category`, `Mobile_Number`, `Telephone_Number`, `Email`, `Current_Address`, `Permanent_Address`, `Type`, `Status`) VALUES
('', '', '', '', '', '0', 0, '', '', '', '', '', '', '', '1', '', 1),
('First_Name', '$Mid_name', '$Last_Name', '$Father_Name', '$Mother_Name', '0', 0, '$Bye', '$Gender', '$category', '$Mobile_Number', '$Telephone_Numbe', '$Email', '$Current_Address', '$Permanent_Address', '', 0),
('First_Name', 'k', 'jkh', 'jk', 'kh', '0', 1, '1950', '', '', '9879879769', '9798798797', 'devendra.iips@gmail.com', 'ksjdf', 'ksjdf', '', 0),
('First_Name', 'h', 'h', 'h', 'k', '0', 1, '1950', '', '', '3216161616', '3113165165', 'ranimalviya91@gmail.com', 'lksdjfn', 'lksdjfn', '', 0),
('First_Name', 'anand', 'malviya', 'papa', 'maa', '0', 2, '1960', '', '', '9755918099', '0731256487', 'ram@gmail.com', 'barwani', 'barwani', '', 0),
('deva', 'j', 'j', 'baba', 'mom', '0', 1, '1950', '', '', '9788685478', '0731589898', 'deva@gmail.com', 'anjad\r\n', 'anjad\r\n', '', 0),
('d', 'd', 'd', 'js', 'df', '0', 8, '1964', 'ST', '', '4536456456', '5464567864', 'devendra.iips@gmail.com', 'srfsdg', 'srfsdg', '', 0),
('', '', '', '', '', '0', 1, '1950', 'Male', 'ST', '', '', '', '', '', '', 0),
('', '', '', '', '', '0', 1, '1950', 'Male', 'ST', '', '', '', '', '', '', 0),
('', '', '', '', '', '0', 1, '1950', 'Male', 'ST', '', '', '', '', '', '', 0),
('jj', 'jj', 'jj', 'j', 'j', '0', 1, '1950', 'Male', 'ST', '989', '98', 'devendra.iips@gmail.com', 'jj', 'vd', '', 0),
('686df', '54546', '545454', '545', '45', '0', 0, '', 'Male', 'ST', 'sorry', 'but', 'devendra.iips@gmail.com', 'a', 'a', '', 0),
('dev', 'mal', 'viya', 'papa', 'mom', '0', 9, '1992', 'Male', 'OBC', '9770126777', '0731256487', 'devendra.iips@gmail.com', 'asdjf', 'asdjf', 'student', 0),
('asldk', 'ajsd', 'ljfd', 'lasd', 'laksdf', '0', 14, '1968', 'Male', 'ST', '1084018401', '0450283405', 'devendra.iips@gmail.com', 'asdjfljqklwefjk', 'asdjfljqklwefjk', 'student', 0),
('aldsjf', 'ljdfl', 'ljqalj', 'jqdflk', 'ljasdlj', '0', 18, '1950', 'Male', 'ST', '2345075097', '1341241566', 'devendra.iips@gmail.com', 'a,sdnfa', 'a,sdnfa', 'student', 0),
('aldsjf', 'ljdfl', 'ljqalj', 'jqdflk', 'ljasdlj', '0', 18, '1950', 'Male', 'ST', '2345075097', '1341241566', 'devendra.iips@gmail.com', 'a,sdnfa', 'a,sdnfa', 'student', 0),
('aldsjf', 'ljdfl', 'ljqalj', 'jqdflk', 'ljasdlj', '0', 18, '1950', 'Male', 'ST', '2345075097', '1341241566', 'devendra.iips@gmail.com', 'a,sdnfa', 'a,sdnfa', 'student', 0),
('', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', 'student', 0),
('dfjskl', 'jjdflqjdlw', 'lakdsf', 'asdlk', 'asdjf', 'May', 18, '1950', 'Male', 'ST', '9544509270', '7497154972', 'devendra.iips@gmail.com', 'awjdflsa', 'awjdflsa', 'student', 0),
('dfjskl', 'jjdflqjdlw', 'lakdsf', 'asdlk', 'asdjf', 'May', 18, '1950', 'Male', 'ST', '9544509270', '7497154972', 'devendra.iips@gmail.com', 'awjdflsa', 'awjdflsa', 'student', 0),
('awk', 'dfhl', 'hllha', 'lhlkahf', 'lhqllh', 'January', 1, '1950', 'Male', 'ST', '12434', '0970', 'devendra.iips@gmail.com', 'lksdf', 'lksdf', 'student', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
