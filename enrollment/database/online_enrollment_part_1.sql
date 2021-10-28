-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2021 at 10:01 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

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
(123, 'BSCS', '2021-10-15 07:19:09', '2021-10-15 07:19:09', 'Pogi si Jose'),
(124, 'BSCRIM', '2021-10-15 07:19:09', '2021-10-15 07:19:09', 'Pogi');

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
(10101, 'Bachelor of Science in Computer Science', '2021-10-20 09:02:21', NULL, 'First Year 1st Sem - BSCS', 10101, 123, 1, 123, 123),
(10101, 'Bachelor of Science in Computer Science', '2021-10-20 09:02:21', NULL, 'First Year 1st Sem - BSCS', 10102, 123, 1, 123, 123),
(10101, 'Bachelor of Science in Computer Science', '2021-10-20 09:13:22', NULL, 'First Year 1st Sem - BSCS', 10103, 123, 1, 123, 123),
(10101, 'Bachelor of Science in Computer Science', '2021-10-20 09:13:22', NULL, 'First Year 1st Sem - BSCS', 10104, 123, 1, 123, 123),
(10101, 'Bachelor of Science in Computer Science', '2021-10-20 09:15:03', NULL, 'First Year 1st Sem - BSCS', 10105, 123, 1, 123, 123),
(10101, 'Bachelor of Science in Computer Science', '2021-10-20 09:15:03', NULL, 'First Year 1st Sem - BSCS', 10106, 123, 1, 123, 123),
(10101, 'Bachelor of Science in Computer Science', '2021-10-20 09:15:03', NULL, 'First Year 1st Sem - BSCS', 10107, 123, 1, 123, 123),
(10101, 'Bachelor of Science in Computer Science', '2021-10-20 09:15:03', NULL, 'First Year 1st Sem - BSCS', 10108, 123, 1, 123, 123),
(10201, 'Bachelor of Science in Computer Science', '2021-10-20 09:40:59', NULL, 'First Year 2nd Sem - BSCS', 10103, 123, 1, 123, 123),
(10201, 'Bachelor of Science in Computer Science', '2021-10-20 09:38:41', NULL, 'First Year 2nd Sem - BSCS', 10201, 123, 1, 123, 123),
(10201, 'Bachelor of Science in Computer Science', '2021-10-20 09:38:41', NULL, 'First Year 2nd Sem - BSCS', 10202, 123, 1, 123, 123),
(10201, 'Bachelor of Science in Computer Science', '2021-10-20 09:40:59', NULL, 'First Year 2nd Sem - BSCS', 10204, 123, 1, 123, 123),
(10201, 'Bachelor of Science in Computer Science', '2021-10-20 09:45:52', NULL, 'First Year 2nd Sem - BSCS', 10205, 123, 1, 123, 123),
(10201, 'Bachelor of Science in Computer Science', '2021-10-20 09:46:53', NULL, 'First Year 2nd Sem - BSCS', 10206, 123, 1, 123, 123);

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
  `curriculum_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(123, '2021-2022', '2021-10-15 07:19:59', '2021-10-15 07:19:59', 'Pogi si Jose');

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
(123, 'Set A', '2021-10-15 07:20:21', '2021-10-15 07:20:21', 'Pogi si Jose'),
(124, 'Set B', '2021-10-15 07:20:21', '2021-10-15 07:20:21', 'Pogi');

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
(123, '1st Semester', '2021-10-15 07:21:58', '2021-10-15 07:21:58', 'pogi'),
(124, '2nd Semester', '2021-10-15 07:21:58', '2021-10-15 07:21:58', 'pgio');

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
  `email_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` int(11) NOT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(10101, 'Understanding One\'s Self', 'GE 1', 3, '2021-10-20 08:48:59', '2021-10-20 08:48:59', 'First Year - 1st Sem'),
(10102, 'Readings in Philippine History', 'GE 2', 3, '2021-10-20 08:51:28', '2021-10-20 08:51:28', 'First Year - 1st Sem'),
(10103, 'The Contemporary World', 'GE 3', 3, '2021-10-20 08:51:28', '2021-10-20 08:51:28', 'First Year - 1st Sem'),
(10104, 'Mathematics in the Modern World', 'GE 4', 3, '2021-10-20 08:54:57', '2021-10-20 08:54:57', 'First Year - 1st Sem'),
(10105, 'Introduction of Computing', 'CC 101', 3, '2021-10-20 08:56:10', '2021-10-20 08:56:10', 'First Year - 1st Sem'),
(10106, 'Computer Programming 1', 'CC 102', 3, '2021-10-20 08:58:03', '2021-10-20 08:58:03', 'First Year - 1st Sem'),
(10107, 'Operating System 1', 'OS 1', 3, '2021-10-20 08:59:25', '2021-10-20 08:59:25', 'First Year - 1st Sem'),
(10108, 'Computer Programming 2', 'CC 103', 3, '2021-10-20 09:00:40', '2021-10-20 09:00:40', 'First Year - 1st Sem'),
(10201, 'Mariano V. de los Santos Life, Works, and Writings', 'MVSLWW', 2, '2021-10-20 09:22:39', '2021-10-10 15:37:46', 'First Year - 2nd Sem'),
(10202, 'National Service Training Program', 'NSTP', 2, '2021-10-20 09:22:39', '2021-10-20 09:22:39', 'First Year - 2nd Sem'),
(10203, 'Purposive Communication', 'GE 5', 3, '2021-10-20 09:29:34', '2021-10-20 09:29:34', 'First Year - 2nd Sem'),
(10204, 'Art Appreciation', 'GE 6', 3, '2021-10-20 09:29:34', '2021-10-20 09:29:34', 'First Year - 2nd Sem'),
(10205, 'Science, Technology and Society', 'GE 7', 3, '2021-10-20 09:31:49', '2021-10-20 09:31:49', 'First Year - 2nd Sem'),
(10206, 'Ethics', 'GE 8', 3, '2021-10-20 09:33:01', '2021-10-20 09:33:01', 'First Year - 2nd Sem');

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
(1, 'admin', 'admin', '123123', '2021-10-15 07:34:38', '2021-10-15 07:34:38', NULL);

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
(1, '1st Year', '2021-10-15 07:25:02', '2021-10-15 07:25:02', 'Pogi si Jose'),
(2, '2nd Year', '2021-10-15 07:25:02', '2021-10-15 07:25:02', NULL),
(3, '3rd Year', '2021-10-15 07:25:53', '2021-10-15 07:25:53', NULL),
(4, '4th Year', '2021-10-15 07:25:53', '2021-10-15 07:25:53', NULL);

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
  ADD KEY `fk_enrollment_curriculum1_idx` (`curriculum_id`);

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
  ADD CONSTRAINT `fk_enrollment_curriculum1` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum` (`curriculum_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_enrollment_sections1` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_enrollment_students` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_enrollment_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
