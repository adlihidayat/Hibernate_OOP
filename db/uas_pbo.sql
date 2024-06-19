-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 05:38 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_pbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `description`, `name`, `class_id`, `course_id`, `teacher_id`) VALUES
(1, 'penerapan javafx dan jframe dalam aplikasi', 'p1 pbo', 1, 1, 1),
(2, 'penerapan javafx dan jframe dalam aplikasi', 'p2 pbo', 1, 1, 1),
(3, 'penerapan javafx dan jframe dalam aplikasi', 'p3 pbo', 2, 1, 1),
(4, 'penerapan javafx dan jframe dalam aplikasi', 'p4 pbo', 2, 1, 1),
(5, 'penerapan javafx dan jframe dalam aplikasi', 'p5 pbo', 3, 1, 1),
(6, 'penerapan javafx dan jframe dalam aplikasi', 'p6 pbo', 3, 1, 1),
(7, 'buatlah sebuah aplikasi menggunakan javafx', 'tugas javafxx', 1, 1, 1),
(8, 'buatlah sebuah aplikasi menggunakan javafx', 'tugas javafxx', 2, 1, 1),
(9, 'buatlah sebuah aplikasi menggunakan javafx', 'tugas javafxx', 3, 1, 1),
(10, 'buatlah sebuah aplikasi menggunakan javafx', 'tugas javafxx', 4, 1, 1),
(11, 'buatlah sebuah aplikasi menggunakan javafx', 'tugas javafxx', 4, 1, 1),
(12, 'buatlah sebuah aplikasi menggunakan javafx', 'tugas javafxx', 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `dueDate` datetime DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`dueDate`, `id`) VALUES
('2024-06-16 10:30:00', 7),
('2024-06-16 10:30:00', 8),
('2024-06-16 10:30:00', 9),
('2024-06-16 10:30:00', 10),
('2024-06-16 10:30:00', 11),
('2024-06-16 10:30:00', 12);

-- --------------------------------------------------------

--
-- Table structure for table `assignment_student`
--

CREATE TABLE `assignment_student` (
  `assignment_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignment_student`
--

INSERT INTO `assignment_student` (`assignment_id`, `student_id`) VALUES
(7, 5),
(8, 5),
(9, 5),
(10, 5),
(11, 5),
(12, 5);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `course_name`) VALUES
(1, 'Algoritma Pemrograman'),
(3, 'Analisis dan Desain Perangkat Lunak'),
(4, 'Jaringan Komputer'),
(2, 'Pemrograman Berorientasi Objek');

-- --------------------------------------------------------

--
-- Table structure for table `classes_score`
--

CREATE TABLE `classes_score` (
  `Class_id` int(11) NOT NULL,
  `scores_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_course`
--

CREATE TABLE `class_course` (
  `class_id` int(11) NOT NULL,
  `course_name` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_course`
--

INSERT INTO `class_course` (`class_id`, `course_name`) VALUES
(1, 1),
(1, 3),
(2, 3),
(2, 4),
(3, 4),
(4, 1),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `class_teacher`
--

CREATE TABLE `class_teacher` (
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_teacher`
--

INSERT INTO `class_teacher` (`class_id`, `teacher_id`) VALUES
(1, 4),
(2, 2),
(2, 3),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) NOT NULL,
  `courseCode` varchar(255) NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `credits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `courseCode`, `courseName`, `credits`) VALUES
(1, 'ILK010101', 'Algoritma Pemrograman', 3),
(2, 'ILK020202', 'Pemrograman Berorientasi Objek', 3),
(3, 'ILK030303', 'Analisis dan Desain Perangkat Lunak', 3),
(4, 'ILK040404', 'Jaringan Komputer', 3);

-- --------------------------------------------------------

--
-- Table structure for table `courses_score`
--

CREATE TABLE `courses_score` (
  `Course_id` bigint(20) NOT NULL,
  `scores_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses_score`
--

INSERT INTO `courses_score` (`Course_id`, `scores_id`) VALUES
(1, 1),
(1, 3),
(1, 5),
(1, 7),
(1, 9),
(1, 11),
(1, 26),
(1, 28),
(1, 30),
(1, 32),
(1, 34),
(2, 27),
(2, 29),
(2, 31),
(2, 33),
(2, 35),
(3, 2),
(3, 4),
(3, 6),
(3, 8),
(3, 10),
(3, 12),
(3, 13),
(3, 15),
(3, 17),
(3, 19),
(4, 14),
(4, 16),
(4, 18),
(4, 20),
(4, 21),
(4, 22),
(4, 23),
(4, 24),
(4, 25);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequences`
--

CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) NOT NULL,
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hibernate_sequences`
--

INSERT INTO `hibernate_sequences` (`sequence_name`, `next_val`) VALUES
('default', 12);

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `meetingRoom` varchar(255) DEFAULT NULL,
  `meetingStartTime` datetime DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`meetingRoom`, `meetingStartTime`, `id`) VALUES
('ouy-wegr-wws', '2024-06-16 10:30:00', 1),
('ouy-wegr-wws', '2024-06-16 10:30:00', 2),
('ouy-wegr-wws', '2024-06-16 10:30:00', 3),
('ouy-wegr-wws', '2024-06-16 10:30:00', 4),
('ouy-wegr-wws', '2024-06-16 10:30:00', 5),
('ouy-wegr-wws', '2024-06-16 10:30:00', 6);

-- --------------------------------------------------------

--
-- Table structure for table `meeting_student`
--

CREATE TABLE `meeting_student` (
  `assignment_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meeting_student`
--

INSERT INTO `meeting_student` (`assignment_id`, `student_id`) VALUES
(1, 5),
(1, 6),
(2, 5),
(2, 6),
(3, 5),
(3, 6),
(4, 5),
(4, 6),
(5, 5),
(5, 6),
(6, 5),
(6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `id` bigint(20) NOT NULL,
  `scoreValue` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`id`, `scoreValue`, `class_id`, `course_id`, `student_id`) VALUES
(1, 85, 1, 1, 5),
(2, 90, 1, 3, 5),
(3, 78, 1, 1, 6),
(4, 83, 1, 3, 6),
(5, 92, 1, 1, 7),
(6, 88, 1, 3, 7),
(7, 76, 1, 1, 8),
(8, 81, 1, 3, 8),
(9, 88, 1, 1, 9),
(10, 84, 1, 3, 9),
(11, 91, 1, 1, 14),
(12, 87, 1, 3, 14),
(13, 88, 2, 3, 10),
(14, 91, 2, 4, 10),
(15, 85, 2, 3, 11),
(16, 87, 2, 4, 11),
(17, 89, 2, 3, 12),
(18, 93, 2, 4, 12),
(19, 80, 2, 3, 13),
(20, 82, 2, 4, 13),
(21, 77, 3, 4, 15),
(22, 84, 3, 4, 16),
(23, 79, 3, 4, 17),
(24, 88, 3, 4, 18),
(25, 86, 3, 4, 14),
(26, 90, 4, 1, 20),
(27, 85, 4, 2, 20),
(28, 78, 4, 1, 21),
(29, 82, 4, 2, 21),
(30, 88, 4, 1, 22),
(31, 86, 4, 2, 22),
(32, 80, 4, 1, 23),
(33, 83, 4, 2, 23),
(34, 87, 4, 1, 24),
(35, 90, 4, 2, 24);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `teacherPA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_name`, `id`, `class_id`, `teacherPA`) VALUES
('221401001', 'Rizky', 5, NULL, 1),
('221401002', 'Karina', 6, NULL, 1),
('221401003', 'Berutu', 7, NULL, 2),
('221401004', 'Andi', 8, NULL, 2),
('221401005', 'Budi', 9, NULL, 3),
('221401006', 'Citra', 10, NULL, 3),
('221401007', 'Dewi', 11, NULL, 4),
('221401008', 'Eka', 12, NULL, 4),
('221401009', 'Fitri', 13, NULL, 1),
('221401010', 'Gunawan', 14, NULL, 1),
('221401011', 'Hendra', 15, NULL, 2),
('221401012', 'Indah', 16, NULL, 3),
('221401013', 'Joko', 17, NULL, 4),
('221401014', 'Kartika', 18, NULL, 2),
('221401015', 'Made', 19, NULL, 3),
('221401016', 'Lestari', 20, NULL, 4),
('221401017', 'Alya', 21, NULL, 2),
('221401018', 'Oka', 22, NULL, 3),
('221401019', 'Putri', 23, NULL, 4),
('221401020', 'Sari', 24, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `students_score`
--

CREATE TABLE `students_score` (
  `Student_id` int(11) NOT NULL,
  `scores_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students_score`
--

INSERT INTO `students_score` (`Student_id`, `scores_id`) VALUES
(5, 1),
(5, 2),
(6, 3),
(6, 4),
(7, 5),
(7, 6),
(8, 7),
(8, 8),
(9, 9),
(9, 10),
(10, 13),
(10, 14),
(11, 15),
(11, 16),
(12, 17),
(12, 18),
(13, 19),
(13, 20),
(14, 11),
(14, 12),
(14, 25),
(15, 21),
(16, 22),
(17, 23),
(18, 24),
(20, 26),
(20, 27),
(21, 28),
(21, 29),
(22, 30),
(22, 31),
(23, 32),
(23, 33),
(24, 34),
(24, 35);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `subject` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`subject`, `id`) VALUES
('Mathematics', 1),
('English', 2),
('Fisika', 3),
('Algorithm', 4);

-- --------------------------------------------------------

--
-- Table structure for table `teachers_students`
--

CREATE TABLE `teachers_students` (
  `Teacher_id` int(11) NOT NULL,
  `studentsSupervised_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`) VALUES
(1, 'Dr. John', '101'),
(2, 'Dr. James', '102'),
(3, 'Dr. Smith', '103'),
(4, 'Dr. Alex', '104'),
(5, 'Rizky', '12345'),
(6, 'Karina', '12345'),
(7, 'Berutu', '12345'),
(8, 'Andi', '12345'),
(9, 'Budi', '12345'),
(10, 'Citra', '12345'),
(11, 'Dewi', '12345'),
(12, 'Eka', '12345'),
(13, 'Fitri', '12345'),
(14, 'Gunawan', '12345'),
(15, 'Hendra', '12345'),
(16, 'Indah', '12345'),
(17, 'Joko', '12345'),
(18, 'Kartika', '12345'),
(19, 'Made', '12345'),
(20, 'Lestari', '12345'),
(21, 'Alya', '12345'),
(22, 'Oka', '12345'),
(23, 'Putri', '12345'),
(24, 'Sari', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdhwma4smmu3qlgericd2mio9n` (`class_id`),
  ADD KEY `FK2ffbfqepfc7d708tgo77g4n6d` (`course_id`),
  ADD KEY `FKgmog083oxfm34xcmgp8hywmmh` (`teacher_id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_student`
--
ALTER TABLE `assignment_student`
  ADD KEY `FKl1v2wik6ux3xj51ssyjnob58h` (`student_id`),
  ADD KEY `FKsgugpcxyhjaqobgq9oukqppip` (`assignment_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_7a9rf9tvwcb05ydx0r6a2bkmb` (`course_name`);

--
-- Indexes for table `classes_score`
--
ALTER TABLE `classes_score`
  ADD UNIQUE KEY `UK_rn3aeetdqrcqvoelnq9ojkydf` (`scores_id`),
  ADD KEY `FKq7watv54a7d48f754dcxivmyv` (`Class_id`);

--
-- Indexes for table `class_course`
--
ALTER TABLE `class_course`
  ADD KEY `FK5cvxtib5lkqhepamk1mt5omyy` (`course_name`),
  ADD KEY `FK9du9ebuwji5k5hbndcebj1p47` (`class_id`);

--
-- Indexes for table `class_teacher`
--
ALTER TABLE `class_teacher`
  ADD KEY `FK68fn3re49ccbgdhs3hnpvbgad` (`teacher_id`),
  ADD KEY `FKfh695osd6ugijlg3hb6nd50` (`class_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses_score`
--
ALTER TABLE `courses_score`
  ADD UNIQUE KEY `UK_3sq5ri5n3d1m879h97ruhyigk` (`scores_id`),
  ADD KEY `FKptampeqa1g69vuqsobrmj5cgm` (`Course_id`);

--
-- Indexes for table `hibernate_sequences`
--
ALTER TABLE `hibernate_sequences`
  ADD PRIMARY KEY (`sequence_name`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_student`
--
ALTER TABLE `meeting_student`
  ADD KEY `FKmg5isr7pudfexxwxio9s801ui` (`student_id`),
  ADD KEY `FKm0bl5wfwg3dq7h7fwtpkdgtb` (`assignment_id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2ybpj4nfnhkedsgi0m2y8cmco` (`class_id`),
  ADD KEY `FKirdfvqqwqqnvh3jnd6gj2s2u3` (`course_id`),
  ADD KEY `FKh4ntjhse239r1mhyqjnf0fjcw` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_5mbus2m1tm2acucrp6t627jmx` (`student_id`),
  ADD KEY `FKhnslh0rm5bthlble8vjunbnwe` (`class_id`),
  ADD KEY `FKrkhd1lgvcnr0gluifylpkoiq8` (`teacherPA`);

--
-- Indexes for table `students_score`
--
ALTER TABLE `students_score`
  ADD UNIQUE KEY `UK_55ilu7wbl3gfq1idfr4b6tlps` (`scores_id`),
  ADD KEY `FK9735akptca30jxxbltfa3r7bn` (`Student_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers_students`
--
ALTER TABLE `teachers_students`
  ADD UNIQUE KEY `UK_gbpnrapi9pksmn0iaegddh4a7` (`studentsSupervised_id`),
  ADD KEY `FK5gchdbtn2w547rmouei99x5nu` (`Teacher_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `FK2ffbfqepfc7d708tgo77g4n6d` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `FKdhwma4smmu3qlgericd2mio9n` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `FKgmog083oxfm34xcmgp8hywmmh` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `FKo64ctdutola6yo16rxq5kmo85` FOREIGN KEY (`id`) REFERENCES `activities` (`id`);

--
-- Constraints for table `assignment_student`
--
ALTER TABLE `assignment_student`
  ADD CONSTRAINT `FKl1v2wik6ux3xj51ssyjnob58h` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `FKsgugpcxyhjaqobgq9oukqppip` FOREIGN KEY (`assignment_id`) REFERENCES `assignments` (`id`);

--
-- Constraints for table `classes_score`
--
ALTER TABLE `classes_score`
  ADD CONSTRAINT `FKg53j5ukqxl6ib2jep5cg58hpx` FOREIGN KEY (`scores_id`) REFERENCES `score` (`id`),
  ADD CONSTRAINT `FKq7watv54a7d48f754dcxivmyv` FOREIGN KEY (`Class_id`) REFERENCES `classes` (`id`);

--
-- Constraints for table `class_course`
--
ALTER TABLE `class_course`
  ADD CONSTRAINT `FK5cvxtib5lkqhepamk1mt5omyy` FOREIGN KEY (`course_name`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `FK9du9ebuwji5k5hbndcebj1p47` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`);

--
-- Constraints for table `class_teacher`
--
ALTER TABLE `class_teacher`
  ADD CONSTRAINT `FK68fn3re49ccbgdhs3hnpvbgad` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`),
  ADD CONSTRAINT `FKfh695osd6ugijlg3hb6nd50` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`);

--
-- Constraints for table `courses_score`
--
ALTER TABLE `courses_score`
  ADD CONSTRAINT `FKptampeqa1g69vuqsobrmj5cgm` FOREIGN KEY (`Course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `FKqwut9g8xsxnm4u01nyvsrd1rp` FOREIGN KEY (`scores_id`) REFERENCES `score` (`id`);

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `FK8cssom4a963w6b7vo594qja8n` FOREIGN KEY (`id`) REFERENCES `activities` (`id`);

--
-- Constraints for table `meeting_student`
--
ALTER TABLE `meeting_student`
  ADD CONSTRAINT `FKm0bl5wfwg3dq7h7fwtpkdgtb` FOREIGN KEY (`assignment_id`) REFERENCES `meetings` (`id`),
  ADD CONSTRAINT `FKmg5isr7pudfexxwxio9s801ui` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `FK2ybpj4nfnhkedsgi0m2y8cmco` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `FKh4ntjhse239r1mhyqjnf0fjcw` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `FKirdfvqqwqqnvh3jnd6gj2s2u3` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `FKhnslh0rm5bthlble8vjunbnwe` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `FKp88n6gtrda9sqmmir58atdj2u` FOREIGN KEY (`id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKrkhd1lgvcnr0gluifylpkoiq8` FOREIGN KEY (`teacherPA`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `students_score`
--
ALTER TABLE `students_score`
  ADD CONSTRAINT `FK9735akptca30jxxbltfa3r7bn` FOREIGN KEY (`Student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `FKgqgtyyvt609ae6femliog30ko` FOREIGN KEY (`scores_id`) REFERENCES `score` (`id`);

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `FKkdle1vf5nqykoif4jqv9haxhh` FOREIGN KEY (`id`) REFERENCES `user` (`id`);

--
-- Constraints for table `teachers_students`
--
ALTER TABLE `teachers_students`
  ADD CONSTRAINT `FK5gchdbtn2w547rmouei99x5nu` FOREIGN KEY (`Teacher_id`) REFERENCES `teachers` (`id`),
  ADD CONSTRAINT `FKfvleyxvn0xph7yewuwdkg4jyu` FOREIGN KEY (`studentsSupervised_id`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
