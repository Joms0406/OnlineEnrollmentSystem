-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2021 at 06:05 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enrollment`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time_created` datetime DEFAULT NULL,
  `date_time_updated` datetime DEFAULT NULL,
  `remarks` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `date_time_created`, `date_time_updated`, `remarks`) VALUES
(1, 'BSCS', '2021-10-15 19:53:31', NULL, 'May Computer'),
(2, 'BSCRIM', '2021-10-15 20:28:29', NULL, 'May Baril');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum`
--

CREATE TABLE `curriculum` (
  `curriculum_id` int(11) NOT NULL,
  `descriptive_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time_created` datetime DEFAULT NULL,
  `date_time_updated` datetime DEFAULT NULL,
  `remarks` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `year_level_id` int(11) NOT NULL,
  `school_year_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curriculum`
--

INSERT INTO `curriculum` (`curriculum_id`, `descriptive_name`, `date_time_created`, `date_time_updated`, `remarks`, `subject_id`, `course_id`, `year_level_id`, `school_year_id`, `semester_id`) VALUES
(1, 'Computer Science', '2021-10-15 19:53:58', NULL, 'Madali lang to Basic Ba?', 1, 1, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `enrollment_id` int(11) NOT NULL,
  `enrollment_date_time` datetime DEFAULT NULL,
  `enrollment_date_time_updated` datetime DEFAULT NULL,
  `remarks` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `year_level_id` int(11) NOT NULL,
  `curriculum_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`enrollment_id`, `enrollment_date_time`, `enrollment_date_time_updated`, `remarks`, `student_id`, `section_id`, `user_id`, `course_id`, `year_level_id`, `curriculum_id`) VALUES
(1, '2021-10-15 19:52:33', NULL, 'Student', 1, 1, 1, 2, 1, 1),
(4, '2021-10-15 19:52:33', NULL, 'Pogi', 1401804, 1, 1, 1, 3, 1),
(5, '2021-10-15 22:58:00', NULL, 'Student', 1401821, 1, 1, 2, 1, 1),
(7, '2021-10-15 23:36:52', NULL, 'Student', 1401823, 1, 1, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `schoolyear`
--

CREATE TABLE `schoolyear` (
  `school_year_id` int(11) NOT NULL,
  `school_year` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time_created` datetime DEFAULT NULL,
  `date_time_updated` datetime DEFAULT NULL,
  `remarks` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schoolyear`
--

INSERT INTO `schoolyear` (`school_year_id`, `school_year`, `date_time_created`, `date_time_updated`, `remarks`) VALUES
(1, '2021 - 2022', '2021-10-15 19:51:55', '2021-10-15 19:51:55', 'Pademics Feels');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `section_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time_created` datetime DEFAULT NULL,
  `date_time_updated` datetime DEFAULT NULL,
  `remarks` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`section_id`, `name`, `date_time_created`, `date_time_updated`, `remarks`) VALUES
(1, 'Set - A', '2021-10-15 19:50:49', '2021-10-15 19:50:49', 'Pang Matalino');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semester_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time_created` datetime DEFAULT NULL,
  `date_time_updated` datetime DEFAULT NULL,
  `remarks` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`semester_id`, `name`, `date_time_created`, `date_time_updated`, `remarks`) VALUES
(1, '1st Semester', '2021-10-15 19:48:56', '2021-10-15 19:48:56', 'Max 3 Months'),
(2, '2nd Semester', '2021-10-15 19:50:03', '2021-10-15 19:50:03', '2 Months Max');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` enum('Male','Female','No Comment','') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `email_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_school_attended` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_phone_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_phone_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_phone_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time_created` datetime DEFAULT NULL,
  `date_time_updated` datetime DEFAULT NULL,
  `remarks` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `first_name`, `middle_name`, `last_name`, `birth_date`, `gender`, `address`, `contact`, `email_address`, `last_school_attended`, `username`, `password`, `mother_name`, `mother_occupation`, `father_name`, `father_occupation`, `mother_phone_number`, `father_phone_number`, `guardian_name`, `guardian_occupation`, `guardian_phone_number`, `date_time_created`, `date_time_updated`, `remarks`) VALUES
(1, 'Jose', 'Ryan', 'Otod', NULL, NULL, NULL, 2147483647, 'ryan@gmail.com', NULL, 'Jose', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1401804, 'John', NULL, 'Doe', '2000-05-03', 'Female', 'MANILA CITY', 2147483647, 'Steve@gmail.com', 'University of Manila', 'john', '123', 'Laura Clive', 'Nurse', 'Richard Clive', 'Policy Advisory', '09234272012', '09994523512', 'Richrad Clive', 'Policy Advisor', '09994523512', '2021-10-14 19:40:23', NULL, 'Pogi'),
(1401821, 'Mary', 'Juana', 'Jane', NULL, NULL, NULL, 2147483647, 'Mary@gmail.com', NULL, 'Mary', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1401823, 'Doña ', '', 'Juanita', NULL, NULL, NULL, 923133232, 'Doña@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_unit` int(11) DEFAULT NULL,
  `date_time_created` datetime DEFAULT NULL,
  `date_time_updated` datetime DEFAULT NULL,
  `remarks` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `name`, `subject_code`, `subject_unit`, `date_time_created`, `date_time_updated`, `remarks`) VALUES
(1, 'Human Computer Interaction', 'CS 101', 3, '2021-10-15 19:47:40', '2021-10-15 19:47:40', 'Mahirap');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_password` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time_created` datetime DEFAULT NULL,
  `date_time_updated` datetime DEFAULT NULL,
  `remarks` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `username`, `user_password`, `date_time_created`, `date_time_updated`, `remarks`) VALUES
(1, 'Admin', 'Admin', 'Admin', '2021-10-15 19:45:10', '2021-10-15 19:45:10', 'Pogi');

-- --------------------------------------------------------

--
-- Table structure for table `yearlevel`
--

CREATE TABLE `yearlevel` (
  `year_level_id` int(11) NOT NULL,
  `year_level` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time_created` datetime DEFAULT NULL,
  `date_time_updated` datetime DEFAULT NULL,
  `remarks` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `yearlevel`
--

INSERT INTO `yearlevel` (`year_level_id`, `year_level`, `date_time_created`, `date_time_updated`, `remarks`) VALUES
(1, '1st Year', '2021-10-15 19:54:46', NULL, 'Freshmen'),
(2, '2nd Year', '2021-10-15 19:55:09', NULL, 'Sophomore '),
(3, '3rd Year', '2021-10-15 19:55:09', NULL, 'Junior'),
(4, '4th Year', '2021-10-15 19:56:33', NULL, 'Senior');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`curriculum_id`,`subject_id`,`course_id`,`year_level_id`,`school_year_id`,`semester_id`),
  ADD KEY `fk_curriculum_subjects1_idx` (`subject_id`),
  ADD KEY `fk_curriculum_courses1_idx` (`course_id`),
  ADD KEY `fk_curriculum_yearlevel1_idx` (`year_level_id`),
  ADD KEY `fk_curriculum_schoolyear1_idx` (`school_year_id`),
  ADD KEY `fk_curriculum_semester1_idx` (`semester_id`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`enrollment_id`,`student_id`,`section_id`,`user_id`,`curriculum_id`),
  ADD KEY `fk_enrollment_students_idx` (`student_id`),
  ADD KEY `fk_enrollment_sections1_idx` (`section_id`),
  ADD KEY `fk_enrollment_users1_idx` (`user_id`),
  ADD KEY `fk_enrollment_curriculum1_idx` (`curriculum_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `year_level_id` (`year_level_id`);

--
-- Indexes for table `schoolyear`
--
ALTER TABLE `schoolyear`
  ADD PRIMARY KEY (`school_year_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `yearlevel`
--
ALTER TABLE `yearlevel`
  ADD PRIMARY KEY (`year_level_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `enrollment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1401824;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `curriculum`
--
ALTER TABLE `curriculum`
  ADD CONSTRAINT `fk_curriculum_courses1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `fk_curriculum_schoolyear1` FOREIGN KEY (`school_year_id`) REFERENCES `schoolyear` (`school_year_id`),
  ADD CONSTRAINT `fk_curriculum_semester1` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`semester_id`),
  ADD CONSTRAINT `fk_curriculum_subjects1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`),
  ADD CONSTRAINT `fk_curriculum_yearlevel1` FOREIGN KEY (`year_level_id`) REFERENCES `yearlevel` (`year_level_id`);

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`year_level_id`) REFERENCES `yearlevel` (`year_level_id`),
  ADD CONSTRAINT `enrollment_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `enrollment_ibfk_4` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `enrollment_ibfk_5` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `fk_enrollment_curriculum1` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum` (`curriculum_id`),
  ADD CONSTRAINT `fk_enrollment_sections1` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`),
  ADD CONSTRAINT `fk_enrollment_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
