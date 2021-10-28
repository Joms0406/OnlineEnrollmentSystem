-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2021 at 12:22 PM
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
-- Database: `online_enrollment`
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
(124, 'BSCRIM', '2021-10-15 07:19:09', '2021-10-15 07:19:09', 'Pogi'),
(125, 'BSHRM', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `curriculums`
--

CREATE TABLE `curriculums` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `datetime_created` datetime DEFAULT current_timestamp(),
  `datetime_updated` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `curriculums`
--

INSERT INTO `curriculums` (`id`, `name`, `description`, `datetime_created`, `datetime_updated`) VALUES
(1, 'BSCS', NULL, '2021-10-20 17:55:36', '2021-10-20 17:55:36'),
(2, 'BSHRM', NULL, '2021-10-20 17:55:36', '2021-10-20 17:55:36'),
(3, 'BSBA', NULL, '2021-10-20 17:55:36', '2021-10-20 17:55:36'),
(4, 'IRREG-BSCS', NULL, '2021-10-20 18:11:08', '2021-10-20 18:11:08'),
(5, 'IRREG-BSHRM', NULL, '2021-10-20 18:11:08', '2021-10-20 18:11:08');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_details`
--

CREATE TABLE `curriculum_details` (
  `id` int(11) NOT NULL,
  `descriptive_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time_created` datetime DEFAULT NULL,
  `date_time_updated` datetime DEFAULT NULL,
  `remarks` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `curriculum_id` int(11) DEFAULT NULL,
  `subject_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `year_level_id` int(11) NOT NULL,
  `school_year_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `curriculum_details`
--

INSERT INTO `curriculum_details` (`id`, `descriptive_name`, `date_time_created`, `date_time_updated`, `remarks`, `curriculum_id`, `subject_id`, `course_id`, `year_level_id`, `school_year_id`, `semester_id`) VALUES
(10101, 'Bachelor of Science in Computer Science', '2021-10-20 09:02:21', NULL, 'First Year 1st Sem - BSCS', NULL, 10101, 123, 1, 123, 123),
(10101, 'Bachelor of Science in Computer Science', '2021-10-20 09:02:21', NULL, 'First Year 1st Sem - BSCS', NULL, 10102, 123, 1, 123, 123),
(10101, 'Bachelor of Science in Computer Science', '2021-10-20 09:13:22', NULL, 'First Year 1st Sem - BSCS', NULL, 10103, 123, 1, 123, 123),
(10101, 'Bachelor of Science in Computer Science', '2021-10-20 09:13:22', NULL, 'First Year 1st Sem - BSCS', NULL, 10104, 123, 1, 123, 123),
(10101, 'Bachelor of Science in Computer Science', '2021-10-20 09:15:03', NULL, 'First Year 1st Sem - BSCS', NULL, 10105, 123, 1, 123, 123),
(10101, 'Bachelor of Science in Computer Science', '2021-10-20 09:15:03', NULL, 'First Year 1st Sem - BSCS', NULL, 10106, 123, 1, 123, 123),
(10101, 'Bachelor of Science in Computer Science', '2021-10-20 09:15:03', NULL, 'First Year 1st Sem - BSCS', NULL, 10107, 123, 1, 123, 123),
(10101, 'Bachelor of Science in Computer Science', '2021-10-20 09:15:03', NULL, 'First Year 1st Sem - BSCS', NULL, 10108, 123, 1, 123, 123),
(10201, 'Bachelor of Science in Computer Science', '2021-10-20 09:40:59', NULL, 'First Year 2nd Sem - BSCS', NULL, 10103, 123, 1, 123, 123),
(10201, 'Bachelor of Science in Computer Science', '2021-10-20 09:38:41', NULL, 'First Year 2nd Sem - BSCS', NULL, 10201, 123, 1, 123, 123),
(10201, 'Bachelor of Science in Computer Science', '2021-10-20 09:38:41', NULL, 'First Year 2nd Sem - BSCS', NULL, 10202, 123, 1, 123, 123),
(10201, 'Bachelor of Science in Computer Science', '2021-10-20 09:40:59', NULL, 'First Year 2nd Sem - BSCS', NULL, 10204, 123, 1, 123, 123),
(10201, 'Bachelor of Science in Computer Science', '2021-10-20 09:45:52', NULL, 'First Year 2nd Sem - BSCS', NULL, 10205, 123, 1, 123, 123),
(10201, 'Bachelor of Science in Computer Science', '2021-10-20 09:46:53', NULL, 'First Year 2nd Sem - BSCS', NULL, 10206, 123, 1, 123, 123),
(20101, 'Bachelor of Science in Computer Science', '2021-10-28 09:57:36', NULL, 'Second Year 1st Sem - BSCS', NULL, 20101, 123, 2, 123, 123),
(20101, 'Bachelor of Science in Computer Science', '2021-10-28 09:57:36', NULL, 'Second Year 1st Sem - BSCS', NULL, 20102, 123, 2, 123, 123),
(20101, 'Bachelor of Science in Computer Science', '2021-10-28 10:03:57', NULL, 'Second Year 1st Sem - BSCS', NULL, 20103, 123, 2, 123, 123),
(20101, 'Bachelor of Science in Computer Science', '2021-10-28 10:03:57', NULL, 'Second Year 1st Sem - BSCS', NULL, 20104, 123, 2, 123, 123),
(20101, 'Bachelor of Science in Computer Science', '2021-10-28 10:03:57', NULL, 'Second Year 1st Sem - BSCS', NULL, 20105, 123, 2, 123, 123),
(20101, 'Bachelor of Science in Computer Science', '2021-10-28 10:03:57', NULL, 'Second Year 1st Sem - BSCS', NULL, 20106, 123, 2, 123, 123),
(20201, 'Bachelor of Science in Computer Science', '2021-10-28 10:03:57', NULL, 'Second Year 2nd Sem - BSCS', NULL, 20201, 123, 2, 123, 124),
(20201, 'Bachelor of Science in Computer Science', '2021-10-28 10:10:55', NULL, 'Second Year 2nd Sem - BSCS', NULL, 20202, 123, 2, 123, 124),
(20201, 'Bachelor of Science in Computer Science', '2021-10-28 10:10:55', NULL, 'Second Year 2nd Sem - BSCS', NULL, 20203, 123, 2, 123, 124),
(20201, 'Bachelor of Science in Computer Science', '2021-10-28 10:10:55', NULL, 'Second Year 2nd Sem - BSCS', NULL, 20204, 123, 2, 123, 124),
(20201, 'Bachelor of Science in Computer Science', '2021-10-28 10:10:55', NULL, 'Second Year 2nd Sem - BSCS', NULL, 20205, 123, 2, 123, 124),
(20201, 'Bachelor of Science in Computer Science', '2021-10-28 10:10:55', NULL, 'Second Year 2nd Sem - BSCS', NULL, 20206, 123, 2, 123, 124),
(30101, 'Bachelor of Science in Computer Science', '2021-10-28 16:11:11', NULL, 'Third Year 1st Sem - BSCS', NULL, 30101, 123, 3, 123, 123),
(30101, 'Bachelor of Science in Computer Science', '2021-10-28 10:26:40', NULL, 'Third Year 1st Sem -BSCS', NULL, 30102, 123, 3, 123, 123),
(30101, 'Bachelor of Science in Computer Science', '2021-10-28 10:26:40', NULL, 'Third Year 1st Sem -BSCS', NULL, 30103, 123, 3, 123, 123),
(30101, 'Bachelor of Science in Computer Science', '2021-10-28 10:26:40', NULL, 'Third Year 1st Sem -BSCS', NULL, 30104, 123, 3, 123, 123),
(30101, 'Bachelor of Science in Computer Science', '2021-10-28 16:38:36', NULL, 'Third Year 1st Sem -BSCS', NULL, 30105, 123, 3, 123, 123),
(30101, 'Bachelor of Science in Computer Science', '2021-10-28 16:38:09', NULL, 'Third Year 1st Sem -BSCS', NULL, 30106, 123, 3, 123, 123),
(30201, 'Bachelor of Science in Computer Science', '2021-10-28 16:38:09', NULL, 'Third Year 2nd Sem -BSCS', NULL, 30201, 123, 3, 123, 124),
(30201, 'Bachelor of Science in Computer Science', '2021-10-28 10:37:10', NULL, 'Third Year 2nd Sem -BSCS', NULL, 30202, 123, 3, 123, 124),
(30201, 'Bachelor of Science in Computer Science', '2021-10-28 10:44:04', NULL, 'Third Year 2nd Sem -BSCS', NULL, 30203, 123, 3, 123, 124),
(30201, 'Bachelor of Science in Computer Science', '2021-10-28 10:44:04', NULL, 'Third Year 2nd Sem -BSCS', NULL, 30204, 123, 3, 123, 124),
(30201, 'Bachelor of Science in Computer Science', '2021-10-28 10:44:04', NULL, 'Third Year 2nd Sem -BSCS', NULL, 30205, 123, 3, 123, 124),
(30201, 'Bachelor of Science in Computer Science', '2021-10-28 10:44:04', NULL, 'Third Year 2nd Sem -BSCS', NULL, 30206, 123, 3, 123, 124),
(40101, 'Bachelor of Science in Computer Science', '2021-10-28 11:04:58', NULL, 'Fourth Year 1st Sem - BSCS', NULL, 40101, 123, 4, 123, 123),
(40101, 'Bachelor of Science in Computer Science', '2021-10-28 11:04:59', NULL, 'Fourth Year 1st Sem - BSCS', NULL, 40102, 123, 4, 123, 123),
(40101, 'Bachelor of Science in Computer Science', '2021-10-28 11:04:59', NULL, 'Fourth Year 1st Sem - BSCS', NULL, 40103, 123, 4, 123, 123),
(40101, 'Bachelor of Science in Computer Science', '2021-10-28 11:04:59', NULL, 'Fourth Year 1st Sem - BSCS', NULL, 40104, 123, 4, 123, 123),
(40201, 'Bachelor of Science in Computer Science', '2021-10-28 11:09:49', NULL, 'Fourth Year 2nd Sem - BSCS', NULL, 40201, 123, 4, 123, 124),
(40201, 'Bachelor of Science in Computer Science', '2021-10-28 11:09:49', NULL, 'Fourth Year 2nd Sem - BSCS', NULL, 40202, 123, 4, 123, 124),
(40201, 'Bachelor of Science in Computer Science', '2021-10-28 11:09:49', NULL, 'Fourth Year 2nd Sem - BSCS', NULL, 40203, 123, 4, 123, 124),
(40201, 'Bachelor of Science in Computer Science', '2021-10-28 11:09:49', NULL, 'Fourth Year 2nd Sem - BSCS', NULL, 40204, 123, 4, 123, 124);

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

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`enrollment_id`, `enrollment_date_time`, `enrollment_date_time_updated`, `remarks`, `student_id`, `section_id`, `user_id`, `curriculum_id`) VALUES
(1, NULL, NULL, NULL, 12345, 123, 1, 1),
(2, NULL, NULL, NULL, 67890, 123, 1, 2),
(3, NULL, NULL, NULL, 99999, 123, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `irregular_curriculum_details`
--

CREATE TABLE `irregular_curriculum_details` (
  `id` int(11) NOT NULL,
  `curriculum_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `year_level_id` int(11) DEFAULT NULL,
  `school_year_id` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `irregular_curriculum_details`
--

INSERT INTO `irregular_curriculum_details` (`id`, `curriculum_id`, `subject_id`, `course_id`, `year_level_id`, `school_year_id`, `semester_id`) VALUES
(1, 4, 10101, 123, 1, 123, 123),
(2, 4, 10102, 123, 1, 123, 123),
(3, 4, 10103, 123, 1, 123, 123);

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

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `first_name`, `middle_name`, `last_name`, `birth_date`, `gender`, `address`, `email_address`, `contact`, `last_school_attended`, `username`, `password`, `mother_name`, `mother_occupation`, `father_name`, `father_occupation`, `mother_phone_number`, `father_phone_number`, `guardian_name`, `guardian_occupation`, `guardian_phone_number`, `date_time_created`, `date_time_updated`, `remarks`) VALUES
(12345, 'test', 'test', 'teste', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67890, 'juan', 'tamad', 'dela cruz', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99999, 'maria', 'makiling', 'chuchu', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(10206, 'Ethics', 'GE 8', 3, '2021-10-20 09:33:01', '2021-10-20 09:33:01', 'First Year - 2nd Sem'),
(20101, 'Rizal Life Works and Writings', 'GE 9', 3, '2021-10-28 09:00:03', '2021-10-28 09:00:03', 'Second Year - 1st Sem'),
(20102, 'Sining ng Pakikipagtalastasan', 'SINFIL', 3, '2021-10-28 09:00:03', '2021-10-28 09:00:03', 'Second Year - 1st Sem'),
(20103, 'Panitikang Filipino', 'PANFIL', 3, '2021-10-28 09:02:03', '2021-10-28 09:02:03', 'Second Year - 1st Sem'),
(20104, 'Arts and Humanities', 'AAH', 3, '2021-10-28 09:02:03', '2021-10-28 09:02:03', 'Second Year - 1st Sem'),
(20105, 'Data Structures and Algorithms', 'CC 104', 3, '2021-10-28 09:02:03', '2021-10-28 09:02:03', 'Second Year - 1st Sem'),
(20106, 'Discrete Structures 1', 'DS 101', 3, '2021-10-28 09:02:03', '2021-10-28 09:02:03', 'Second Year - 1st Sem'),
(20201, 'Statistic and Probability', 'STAT 1', 3, '2021-10-28 09:06:19', '2021-10-28 09:06:19', 'Second Year - 2nd Sem'),
(20202, 'Operating System 1', 'OS 1', 3, '2021-10-28 09:06:19', '2021-10-28 09:06:19', 'Second Year - 2nd Sem'),
(20203, 'Information Management', 'CC 105', 3, '2021-10-28 09:06:19', '2021-10-28 09:06:19', 'Second Year - 2nd Sem'),
(20204, 'Applications Development and Emerging Technologies', 'CC 106', 3, '2021-10-28 09:06:19', '2021-10-28 09:06:19', 'Second Year - 2nd Sem'),
(20205, 'Discrete Structures 2', 'DS 102', 3, '2021-10-28 09:06:19', '2021-10-28 09:06:19', 'Second Year - 2nd Sem'),
(20206, 'Algoritms and Complexity', 'AL 101', 3, '2021-10-28 09:06:19', '2021-10-28 09:06:19', 'Second Year - 2nd Sem'),
(30101, 'Architecture and Organization', 'AR 101', 3, '2021-10-28 09:28:57', '2021-10-28 09:28:57', 'Third Year - 1st Sem'),
(30102, 'Object-Oriented Programming', 'SDF 104', 3, '2021-10-28 09:28:57', '2021-10-28 09:28:57', 'Third Year - 1st Sem'),
(30103, 'Human Computer Interaction 1', 'HCI 101', 1, '2021-10-28 09:28:57', '2021-10-28 09:28:57', 'Third Year - 1st Sem'),
(30104, 'Automata Theory and Formal Language', 'AL 102', 3, '2021-10-28 09:28:57', '2021-10-28 09:28:57', 'Third Year - 1st Sem'),
(30105, 'Networks and Communication 1', 'NC 101', 3, '2021-10-28 09:28:57', '2021-10-28 09:28:57', 'Third Year - 1st Sem'),
(30106, 'Microcomputer Packages 1', 'CS 15', 3, '2021-10-28 09:28:57', '2021-10-28 09:28:57', 'Third Year - 1st Sem'),
(30201, 'Human Computer Interaction 2', 'HCI 102', 3, '2021-10-28 09:34:19', '2021-10-28 09:34:19', 'Third Year - 2nd Sem'),
(30202, 'Networks and Communication 2', 'NC 102', 3, '2021-10-28 09:34:19', '2021-10-28 09:34:19', 'Third Year - 2nd Sem'),
(30203, 'Microcomputer Packages 2', 'CS 20', 3, '2021-10-28 09:34:19', '2021-10-28 09:34:19', 'Third Year - 2nd Sem'),
(30204, 'Programming Language 1', 'PL 101', 3, '2021-10-28 09:34:19', '2021-10-28 09:34:19', 'Third Year - 2nd Sem'),
(30205, 'Graphic and Visual Computing', 'GV 101', 3, '2021-10-28 09:34:19', '2021-10-28 09:34:19', 'Third Year - 2nd Sem'),
(30206, 'Parallel Distributed Computing', 'PD 101', 3, '2021-10-28 09:34:19', '2021-10-28 09:34:19', 'Third Year - 2nd Sem'),
(40101, 'Software Engineering 1', 'SE 101', 3, '2021-10-28 10:50:07', '2021-10-28 10:50:07', 'Fourth Year - 1st Sem'),
(40102, 'Social Issues and Professional Practice', 'SP 101', 3, '2021-10-28 10:50:07', '2021-10-28 10:50:07', 'Fourth Year - 1st Sem'),
(40103, 'Computer Science Thesis Writing 1', 'THS 101', 3, '2021-10-28 10:50:07', '2021-10-28 10:50:07', 'Fourth Year - 1st Sem'),
(40104, 'Intelligent Systems 1', 'IS 101', 3, '2021-10-28 10:50:07', '2021-10-28 10:50:07', 'Fourth Year - 1st Sem'),
(40201, 'Software Engineering', 'SE 102', 3, '2021-10-28 10:56:28', '2021-10-28 10:56:28', 'Fourth Year - 2nd Sem'),
(40202, 'Information Assurance and Security', 'IAS 101', 2, '2021-10-28 10:56:28', '2021-10-28 10:56:28', 'Fourth Year - 2nd Sem'),
(40203, 'Computer Science Thesis Writing 2', 'THS 102', 3, '2021-10-28 10:56:28', '2021-10-28 10:56:28', 'Fourth Year - 2nd Sem'),
(40204, 'Practicum (162 hrs)', 'PRC 101', 3, '2021-10-28 10:56:28', '2021-10-28 10:56:28', 'Fourth Year - 2nd Sem');

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
-- Indexes for table `curriculums`
--
ALTER TABLE `curriculums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curriculum_details`
--
ALTER TABLE `curriculum_details`
  ADD PRIMARY KEY (`id`,`subject_id`,`course_id`,`year_level_id`,`school_year_id`,`semester_id`),
  ADD KEY `fk_curriculum_subjects1_idx` (`subject_id`),
  ADD KEY `fk_curriculum_courses1_idx` (`course_id`),
  ADD KEY `fk_curriculum_yearlevel1_idx` (`year_level_id`),
  ADD KEY `fk_curriculum_schoolyear1_idx` (`school_year_id`),
  ADD KEY `fk_curriculum_semester1_idx` (`semester_id`),
  ADD KEY `fk_curriculum_curriculum1` (`curriculum_id`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`enrollment_id`,`student_id`,`section_id`,`user_id`,`curriculum_id`),
  ADD KEY `fk_enrollment_students_idx` (`student_id`),
  ADD KEY `fk_enrollment_sections1_idx` (`section_id`),
  ADD KEY `fk_enrollment_users1_idx` (`user_id`),
  ADD KEY `curriculum_id` (`curriculum_id`);

--
-- Indexes for table `irregular_curriculum_details`
--
ALTER TABLE `irregular_curriculum_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curriculum_id` (`curriculum_id`,`subject_id`,`course_id`,`year_level_id`,`school_year_id`,`semester_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `year_level_id` (`year_level_id`),
  ADD KEY `semester_id` (`semester_id`),
  ADD KEY `school_year_id` (`school_year_id`);

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
-- AUTO_INCREMENT for table `curriculums`
--
ALTER TABLE `curriculums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `enrollment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `irregular_curriculum_details`
--
ALTER TABLE `irregular_curriculum_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `curriculum_details`
--
ALTER TABLE `curriculum_details`
  ADD CONSTRAINT `fk_curriculum_courses1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_curriculum_curriculum1` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_curriculum_schoolyear1` FOREIGN KEY (`school_year_id`) REFERENCES `schoolyear` (`school_year_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_curriculum_semester1` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`semester_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_curriculum_subjects1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_curriculum_yearlevel1` FOREIGN KEY (`year_level_id`) REFERENCES `yearlevel` (`year_level_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_enrollment_sections1` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_enrollment_students` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_enrollment_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `irregular_curriculum_details`
--
ALTER TABLE `irregular_curriculum_details`
  ADD CONSTRAINT `irregular_curriculum_details_ibfk_1` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `irregular_curriculum_details_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `irregular_curriculum_details_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `irregular_curriculum_details_ibfk_4` FOREIGN KEY (`year_level_id`) REFERENCES `yearlevel` (`year_level_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `irregular_curriculum_details_ibfk_5` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`semester_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `irregular_curriculum_details_ibfk_6` FOREIGN KEY (`school_year_id`) REFERENCES `schoolyear` (`school_year_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
