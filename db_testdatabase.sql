-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2024 at 11:41 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_testdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_cardhomepage`
--

CREATE TABLE `tb_cardhomepage` (
  `id` int(11) NOT NULL,
  `img` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `caption` varchar(500) NOT NULL,
  `ToHome` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_contenthomepage`
--

CREATE TABLE `tb_contenthomepage` (
  `id` int(11) NOT NULL,
  `sizes` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `caption` varchar(500) NOT NULL,
  `color` varchar(500) NOT NULL,
  `ToHome` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_courses`
--

CREATE TABLE `tb_courses` (
  `course_id` int(255) NOT NULL,
  `course_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_coverphotohomepage`
--

CREATE TABLE `tb_coverphotohomepage` (
  `id` int(11) NOT NULL,
  `img` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `caption` varchar(500) NOT NULL,
  `ToHome` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_messages`
--

CREATE TABLE `tb_messages` (
  `messageid` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_messages`
--

INSERT INTO `tb_messages` (`messageid`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Niel', 'moniclabniel@uniromax.com', 'Suggestion', 'I want to eat na ba'),
(2, 'Niel', 'moniclabniel@uniromax.com', 'Suggestion', 'I want to eat na ba');

-- --------------------------------------------------------

--
-- Table structure for table `tb_profile`
--

CREATE TABLE `tb_profile` (
  `id` int(11) NOT NULL,
  `img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_schedule`
--

CREATE TABLE `tb_schedule` (
  `shed_id` int(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `slot` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_schedule`
--

INSERT INTO `tb_schedule` (`shed_id`, `date`, `day`, `start_time`, `end_time`, `slot`) VALUES
(4, '2024-02-13', 'Tuesday', '05:58 PM', '03:58 AM', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_schoolprofile`
--

CREATE TABLE `tb_schoolprofile` (
  `id` int(11) NOT NULL,
  `SchoolName` varchar(500) NOT NULL,
  `Lokation` varchar(500) NOT NULL,
  `Email` varchar(500) NOT NULL,
  `MobileNumber` varchar(15) NOT NULL,
  `TelephoneNumber` varchar(15) NOT NULL,
  `Discription` varchar(500) NOT NULL,
  `ToHome` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_schoolprofile`
--

INSERT INTO `tb_schoolprofile` (`id`, `SchoolName`, `Lokation`, `Email`, `MobileNumber`, `TelephoneNumber`, `Discription`, `ToHome`) VALUES
(1, 'HEHE', 'Sta. Lucia, Sta. Ana, Pampanga', 'sample@gmail.Ccom', '0942498798', '09488170896', 'Preliminary Exam', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_studentinfo`
--

CREATE TABLE `tb_studentinfo` (
  `student_id` int(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `appointment_date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `elem` varchar(255) NOT NULL,
  `elem_year` varchar(255) NOT NULL,
  `jhs` varchar(255) NOT NULL,
  `jhs_year` varchar(255) NOT NULL,
  `shs` varchar(255) NOT NULL,
  `shs_year` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `num` varchar(255) NOT NULL,
  `guardian` varchar(255) NOT NULL,
  `guardian_number` varchar(255) NOT NULL,
  `guardian_address` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_studentinfo`
--

INSERT INTO `tb_studentinfo` (`student_id`, `username`, `appointment_date`, `time`, `elem`, `elem_year`, `jhs`, `jhs_year`, `shs`, `shs_year`, `fname`, `mname`, `lname`, `gender`, `course`, `year`, `section`, `birthday`, `address`, `num`, `guardian`, `guardian_number`, `guardian_address`, `status`, `user_id`) VALUES
(28, '', '', '', 'San Isidro Elementary School', '2015', 'San Isidro High School', '2019', 'Holy Cross College', '2021', 'Reniel', 'Ostia', 'Deang', 'Male', 'BS Computer Science', 'III', 'A', '2002-08-08', '508 San Isidro Sta.ana Pampanga', '09555328922', 'Anelyn Deang', '09555328922', '508 San Isidro Sta. Ana Pampanga', 1, 29);

-- --------------------------------------------------------

--
-- Table structure for table `tb_subject`
--

CREATE TABLE `tb_subject` (
  `subject_id` int(255) NOT NULL,
  `subjectname` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `instructor` varchar(255) NOT NULL,
  `years` varchar(255) NOT NULL,
  `numhours` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_userdata`
--

CREATE TABLE `tb_userdata` (
  `user_id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_userdata`
--

INSERT INTO `tb_userdata` (`user_id`, `username`, `pass`, `email`, `verified`) VALUES
(1, 'Admin@admin', 'admin', '', 3),
(29, 'Nielo@student', 'grimlocker08', 'rxthespankengine@gmail.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_cardhomepage`
--
ALTER TABLE `tb_cardhomepage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_contenthomepage`
--
ALTER TABLE `tb_contenthomepage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_courses`
--
ALTER TABLE `tb_courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `tb_coverphotohomepage`
--
ALTER TABLE `tb_coverphotohomepage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_messages`
--
ALTER TABLE `tb_messages`
  ADD PRIMARY KEY (`messageid`);

--
-- Indexes for table `tb_profile`
--
ALTER TABLE `tb_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_schedule`
--
ALTER TABLE `tb_schedule`
  ADD PRIMARY KEY (`shed_id`);

--
-- Indexes for table `tb_schoolprofile`
--
ALTER TABLE `tb_schoolprofile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_studentinfo`
--
ALTER TABLE `tb_studentinfo`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tb_subject`
--
ALTER TABLE `tb_subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `tb_userdata`
--
ALTER TABLE `tb_userdata`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_cardhomepage`
--
ALTER TABLE `tb_cardhomepage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tb_contenthomepage`
--
ALTER TABLE `tb_contenthomepage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_courses`
--
ALTER TABLE `tb_courses`
  MODIFY `course_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_coverphotohomepage`
--
ALTER TABLE `tb_coverphotohomepage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tb_messages`
--
ALTER TABLE `tb_messages`
  MODIFY `messageid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_profile`
--
ALTER TABLE `tb_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_schedule`
--
ALTER TABLE `tb_schedule`
  MODIFY `shed_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_schoolprofile`
--
ALTER TABLE `tb_schoolprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_studentinfo`
--
ALTER TABLE `tb_studentinfo`
  MODIFY `student_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tb_subject`
--
ALTER TABLE `tb_subject`
  MODIFY `subject_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_userdata`
--
ALTER TABLE `tb_userdata`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_studentinfo`
--
ALTER TABLE `tb_studentinfo`
  ADD CONSTRAINT `tb_studentinfo_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tb_userdata` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
