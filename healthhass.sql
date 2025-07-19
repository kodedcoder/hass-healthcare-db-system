-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2025 at 01:42 PM
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
create Database 'health';
use 'health';
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `Patient_id` int(15) NOT NULL,
  `date` date NOT NULL,
  `reason_for_visit` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `staff_id` int(15) NOT NULL,
  `appointment_id` int(15) NOT NULL,
  `time` time NOT NULL,
  `doctor_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Patient_id`, `date`, `reason_for_visit`, `status`, `staff_id`, `appointment_id`, `time`, `doctor_id`) VALUES
(4, '2024-05-12', 'Skin Rash', 'Cancelled', 13, 1, '08:00:00', 16),
(2, '2025-02-12', 'Allergy', 'Completed', 10, 2, '11:30:00', 16),
(1, '2024-06-13', 'Prescription Refill', 'Completed', 11, 3, '08:45:00', 20),
(3, '2024-11-11', 'Follow-up', 'Completed', 11, 4, '09:45:00', 20),
(1, '2025-04-13', 'Allergy', 'Completed', 11, 5, '14:00:00', 17),
(6, '2024-07-03', 'Blood Test', 'Completed', 14, 6, '11:30:00', 16),
(6, '2024-06-29', 'Routine Checkup', 'Completed', 13, 7, '12:45:00', 18),
(4, '2025-05-01', 'Vaccination', 'Scheduled', 9, 8, '12:45:00', 19),
(8, '2024-07-02', 'Flu Symptoms', 'Scheduled', 11, 9, '15:15:00', 16),
(8, '2025-02-24', 'Prescription Refill', 'Cancelled', 12, 10, '09:45:00', 19);

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `billing_id` int(15) NOT NULL,
  `amount_due` int(100) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `insurance_claim_status` varchar(50) NOT NULL,
  `Staff_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`billing_id`, `amount_due`, `payment_status`, `insurance_claim_status`, `Staff_id`) VALUES
(1, 2250, 'Paid', 'Approved', 15),
(2, 2600, 'Paid', 'Approved', 10),
(3, 4220, 'Unpaid', 'Pending', 9),
(4, 1840, 'Pending', 'Denied', 12),
(5, 2650, 'Paid', 'Denied', 15),
(6, 4690, 'Paid', 'Denied', 13),
(7, 1630, 'Pending', 'Denied', 14),
(8, 3110, 'Pending', 'Denied', 9),
(9, 1320, 'Paid', 'Denied', 10),
(10, 3730, 'Paid', 'Pending', 10);

-- --------------------------------------------------------

--
-- Table structure for table `diagnoses`
--

CREATE TABLE `diagnoses` (
  `record_id` int(15) NOT NULL,
  `diagnoses` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diagnoses`
--

INSERT INTO `diagnoses` (`record_id`, `diagnoses`) VALUES
(1, 'Hypertension'),
(2, 'Seasonal Allergies'),
(3, 'Type 2 Diabetes'),
(4, 'Bacterial Infection'),
(5, 'Skin Rash'),
(6, 'Asthma'),
(7, 'Arthritis'),
(8, 'Viral Flu'),
(9, 'High Cholesterol'),
(10, 'Migraine');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(15) NOT NULL,
  `contact_info` varchar(50) NOT NULL,
  `specialization` varchar(50) NOT NULL,
  `person_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `contact_info`, `specialization`, `person_id`) VALUES
(16, '+447559953499', 'Cardiology', 16),
(17, '+447066946097', 'Neurology', 17),
(18, '+447851833469', 'Pediatrics', 18),
(19, '+447980406382', 'Dermatology', 19),
(20, '+447566984911', 'General Medicine', 20);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(15) NOT NULL,
  `comment` varchar(50) NOT NULL,
  `rating` varchar(50) NOT NULL,
  `appointment_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `comment`, `rating`, `appointment_id`) VALUES
(1, 'Very professional service.', 'Fair', 1),
(2, 'Doctor was attentive and kind.', 'Average', 2),
(3, 'Wait time was too long.', 'Good', 3),
(4, 'Great experience overall.', 'Average', 4),
(5, 'Facilities were clean and modern.', 'Excellent', 5),
(6, 'Unsatisfied with consultation.', 'Fair', 6),
(7, 'Helpful and knowledgeable staff.', 'Poor', 7),
(8, 'Easy appointment process.', 'Fair', 8),
(9, 'Would recommend to others.', 'Fair', 9),
(10, 'Follow-up needed, but decent service.', 'Good', 10);

-- --------------------------------------------------------

--
-- Table structure for table `medicalrecord`
--

CREATE TABLE `medicalrecord` (
  `record_id` int(15) NOT NULL,
  `doctor_notes` varchar(50) NOT NULL,
  `patient_id` int(15) NOT NULL,
  `doctor_id` int(15) NOT NULL,
  `prescription` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicalrecord`
--

INSERT INTO `medicalrecord` (`record_id`, `doctor_notes`, `patient_id`, `doctor_id`, `prescription`) VALUES
(1, 'Patient responding well to medication.', 6, 19, 'Paracetamol'),
(2, 'Follow-up required in two weeks.', 1, 20, 'Ibuprofen'),
(3, 'Blood pressure slightly elevated.', 2, 17, 'Amoxicillin'),
(4, 'Prescribed antibiotics for infection.', 1, 18, 'Cetirizine'),
(5, 'Allergy symptoms under control.', 4, 20, 'Lisinopril'),
(6, 'Monitor sugar levels regularly.', 8, 17, 'Metformin'),
(7, 'Recommended physical therapy.', 2, 18, 'Omeprazole'),
(8, 'Skin rash improving.', 1, 19, 'Salbutamol'),
(9, 'Routine check-up, no issues.', 7, 19, 'Atorvastatin'),
(10, 'Continue current treatment plan.', 4, 18, 'Loratadine');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(15) NOT NULL,
  `timestamp` time NOT NULL,
  `message` varchar(50) NOT NULL,
  `read_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `timestamp`, `message`, `read_status`) VALUES
(1, '09:15:00', 'New appointment scheduled.', 'Read'),
(2, '08:30:00', 'Billing statement ready.', 'Read'),
(3, '10:00:00', 'Test results available.', 'Read'),
(4, '11:30:00', 'Doctor note updated.', 'Read'),
(5, '10:30:00', 'Prescription ready for pickup.', 'Unread'),
(6, '16:00:00', 'Follow-up appointment required.', 'Unread'),
(7, '08:15:00', 'Insurance claim updated.', 'Read'),
(8, '14:45:00', 'Patient feedback received.', 'Unread'),
(9, '08:00:00', 'System maintenance notice.', 'Read'),
(10, '17:15:00', 'New message from patient portal.', 'Read');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(15) NOT NULL,
  `person_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `person_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` int(15) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `Date_of_birth` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact_info` varchar(50) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `first_name`, `last_name`, `Date_of_birth`, `address`, `contact_info`, `gender`) VALUES
(1, 'Emily', 'Wilson', '1991-10-28', '168 High Street, London', '+447846007572', 'Male'),
(2, 'Amelia', 'Wilson', '1968-11-06', '6 Mill Lane, London', '+447873538337', 'Male'),
(3, 'Amelia', 'Johnson', '1983-10-09', '37 London Road, London', '+447380342740', 'Female'),
(4, 'George', 'Wilson', '1975-01-12', '48 High Street, London', '+447747330731', 'Female'),
(5, 'Amelia', 'Brown', '1999-10-14', '64 Station Road, London', '+447043895221', 'Male'),
(6, 'Oliver', 'Brown', '1976-06-04', '83 King Street, London', '+447654596112', 'Female'),
(7, 'Jack', 'Davies', '1966-10-20', '183 London Road, London', '+447663104566', 'Male'),
(8, 'Amelia', 'Davies', '1967-01-17', '107 Victoria Avenue, London', '+447987199509', 'Female'),
(9, 'Charlie', 'Williams', '1986-04-26', '40 King Street, London', '+447475216722', 'Female'),
(10, 'Amelia', 'Wilson', '1986-01-03', '96 Victoria Avenue, London', '+447961335289', 'Female'),
(11, 'Oliver', 'Taylor', '1966-01-07', '144 Station Road, London', '+447371620734', 'Male'),
(12, 'Sophia', 'Smith', '1983-07-09', '158 High Street, London', '+447489223188', 'Female'),
(13, 'Ava', 'Jones', '2003-11-01', '146 High Street, London', '+447626707184', 'Male'),
(14, 'Ava', 'Davies', '1984-09-02', '152 Park Road, London', '+447940071654', 'Male'),
(15, 'Jack', 'Jones', '1999-02-11', '7 Victoria Avenue, London', '+447361922754', 'Female'),
(16, 'Harry', 'Smith', '1984-01-02', '30 Station Road, London', '+447124614765', 'Male'),
(17, 'Jack', 'Williams', '2001-02-26', '81 Church Lane, London', '+447858107369', 'Male'),
(18, 'Emily', 'Taylor', '1995-10-18', '91 King Street, London', '+447051997964', 'Male'),
(19, 'Harry', 'Johnson', '1966-01-04', '13 Chester Road, London', '+447949381908', 'Male'),
(20, 'Jack', 'Taylor', '1989-01-26', '177 London Road, London', '+447201172613', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(15) NOT NULL,
  `working_hours` time NOT NULL,
  `contact_info` varchar(50) NOT NULL,
  `person_id` int(15) NOT NULL,
  `role_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `working_hours`, `contact_info`, `person_id`, `role_id`) VALUES
(9, '09:00:00', '+447530458845', 9, 1),
(10, '09:00:00', '+447068815320', 10, 2),
(11, '09:00:00', '+447147117747', 11, 3),
(12, '09:00:00', '+447571483169', 12, 2),
(13, '09:00:00', '+447161372849', 13, 5),
(14, '09:00:00', '+447675083751', 14, 6),
(15, '09:00:00', '+447984162898', 15, 7);

-- --------------------------------------------------------

--
-- Table structure for table `test_result`
--

CREATE TABLE `test_result` (
  `record_id` int(15) NOT NULL,
  `test_result` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `test_result`
--

INSERT INTO `test_result` (`record_id`, `test_result`) VALUES
(1, 'BP: 145/90'),
(2, 'Normal IgE Levels'),
(3, 'HbA1c: 8.1%'),
(4, 'WBC Elevated'),
(5, 'Skin biopsy: Dermatitis'),
(6, 'Peak Flow: 400L/min'),
(7, 'X-ray shows mild joint inflammation'),
(8, 'Rapid flu test: Positive'),
(9, 'LDL: 170 mg/dL'),
(10, 'CT scan: Normal');

-- --------------------------------------------------------

--
-- Table structure for table `userrole`
--

CREATE TABLE `userrole` (
  `role_id` int(15) NOT NULL,
  `role_type` varchar(50) NOT NULL,
  `permissions` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userrole`
--

INSERT INTO `userrole` (`role_id`, `role_type`, `permissions`) VALUES
(1, 'Administrator', 'manage_all'),
(2, 'Receptionist', 'manage_appointments'),
(3, 'Nurse', 'view_patients'),
(4, 'receptionist', 'manage_records'),
(5, 'Billing Officer', 'manage_billing'),
(6, 'Pharmacist', 'view_prescriptions'),
(7, 'Lab Technician', 'manage_tests');

-- --------------------------------------------------------

--
-- Table structure for table `userrolenotification`
--

CREATE TABLE `userrolenotification` (
  `role_id` int(15) NOT NULL,
  `notification_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userrolenotification`
--

INSERT INTO `userrolenotification` (`role_id`, `notification_id`) VALUES
(1, 2),
(2, 5),
(3, 4),
(4, 3),
(5, 1),
(6, 7),
(6, 10),
(7, 6),
(7, 8),
(7, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `Patient_id` (`Patient_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`billing_id`),
  ADD KEY `Staff_id` (`Staff_id`);

--
-- Indexes for table `diagnoses`
--
ALTER TABLE `diagnoses`
  ADD PRIMARY KEY (`diagnoses`),
  ADD KEY `record_id` (`record_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `medicalrecord`
--
ALTER TABLE `medicalrecord`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `test_result`
--
ALTER TABLE `test_result`
  ADD PRIMARY KEY (`test_result`),
  ADD KEY `record_id` (`record_id`);

--
-- Indexes for table `userrole`
--
ALTER TABLE `userrole`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `userrolenotification`
--
ALTER TABLE `userrolenotification`
  ADD PRIMARY KEY (`role_id`,`notification_id`),
  ADD KEY `notification_id` (`notification_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`Patient_id`) REFERENCES `patient` (`patient_id`),
  ADD CONSTRAINT `appointment_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `billing`
--
ALTER TABLE `billing`
  ADD CONSTRAINT `billing_ibfk_1` FOREIGN KEY (`Staff_id`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `diagnoses`
--
ALTER TABLE `diagnoses`
  ADD CONSTRAINT `diagnoses_ibfk_1` FOREIGN KEY (`record_id`) REFERENCES `medicalrecord` (`record_id`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appointment_id`);

--
-- Constraints for table `medicalrecord`
--
ALTER TABLE `medicalrecord`
  ADD CONSTRAINT `medicalrecord_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  ADD CONSTRAINT `medicalrecord_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `userrole` (`role_id`);

--
-- Constraints for table `test_result`
--
ALTER TABLE `test_result`
  ADD CONSTRAINT `test_result_ibfk_1` FOREIGN KEY (`record_id`) REFERENCES `medicalrecord` (`record_id`);

--
-- Constraints for table `userrolenotification`
--
ALTER TABLE `userrolenotification`
  ADD CONSTRAINT `userrolenotification_ibfk_1` FOREIGN KEY (`notification_id`) REFERENCES `notification` (`notification_id`),
  ADD CONSTRAINT `userrolenotification_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `userrole` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
