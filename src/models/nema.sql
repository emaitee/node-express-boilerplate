-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2020 at 12:00 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nema`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_assistance` (IN `a_id` INT(20))  NO SQL
DELETE FROM assistance WHERE household_id=a_id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_casualty_death` (IN `c_id` INT(20))  NO SQL
DELETE FROM casualty_death WHERE casualty_id=c_id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_disasater` (IN `d_id` INT(20))  NO SQL
DELETE FROM disaster WHERE disaster_id=d_id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_property` (IN `p_id` INT(20))  NO SQL
DELETE FROM property WHERE property_id=p_id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_victim` (IN `v_id` INT(20))  NO SQL
DELETE FROM victims WHERE victim_id=v_id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_assistance` (IN `a_id` INT(20), IN `a_gender` VARCHAR(20), IN `a_age` INT(20), IN `a_total_no` INT(20), IN `a_deleted_by` VARCHAR(20), IN `a_inserted_by` VARCHAR(20), IN `a_updated_by` VARCHAR(20), IN `a_deleted_time` INT, IN `a_inserted_time` INT, IN `a_updated_time` INT)  NO SQL
insert into assistance(household_id,gender,age,total_no,deleted_by,inserted_by,updated_by,deleted_time,inserted_time,updated_time)

values(a_id,a_gender,a_age,a_total_no,a_deleted_by,a_inserted_by,a_updated_by,a_deleted_time,a_inserted_time,a_updated_time)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_casualty_death` (IN `c_id` INT(20), IN `c_gender` VARCHAR(20), IN `c_age` INT(20), IN `c_death_casualty` VARCHAR(20), IN `c_total_no` INT(20), IN `c_deleted_by` VARCHAR(20), IN `c_inserted_by` VARCHAR(20), IN `c_updated_by` VARCHAR(20), IN `c_deleted_time` TIMESTAMP, IN `c_inserted_time` TIMESTAMP, IN `c_updated_time` TIMESTAMP)  NO SQL
INSERT INTO casualty_death(casualty_id,gender,age,death_casualty,total_no,deleted_by,inserted_by,updated_by,deleted_time,inserted_time,updated_time)

values(c_id,c_gender,c_age,c_death_casualty,c_total_no,c_deleted_by,c_inserted_by,c_updated_by,c_deleted_time,c_inserted_time,c_updated_time)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_disasater` (IN `d_date` INT, IN `d_id` VARCHAR(20), IN `d_state` VARCHAR(20), IN `d_lga` VARCHAR(20), IN `d_town` VARCHAR(20), IN `d_disaster` VARCHAR(20), IN `d_disaster_location` VARCHAR(20), IN `d_disaster_longitude` VARCHAR(20), IN `d_disaster_latitude` VARCHAR(20), IN `d_updated_time` TIMESTAMP, IN `d_inserted_time` TIMESTAMP, IN `d_deleted_time` TIMESTAMP, IN `d_updated_by` VARCHAR(20), IN `d_inserted_by` VARCHAR(20), IN `d_deleted_by` VARCHAR(20))  NO SQL
insert into disaster(disaster_date,disaster_id,state,lga,town,disaster,disaster_location,longitude,latitude,updated_time,inserted_time,deleted_time,updated_by,inserted_by,deleted_by)

values(d_date,d_id,d_state,d_lga,d_town,d_disaster,d_location,d_longitude,d_latitude,d_updated_time,d_inserted_time,d_deleted_time,d_updated_by,d_inserted_by,d_deleted_by)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_property` (IN `p_id` INT(20), IN `p_item_loss` VARCHAR(20), IN `p_quantity` VARCHAR(20), IN `p_estimated_cost` VARCHAR(20), IN `p_deleted_by` VARCHAR(20), IN `p_inserted_by` VARCHAR(20), IN `p_updated_by` VARCHAR(20), IN `p_deleted_time` TIMESTAMP, IN `p_inserted_time` TIMESTAMP, IN `updated_time` TIMESTAMP)  NO SQL
INSERT INTO property(property_id,item_loss,quantity,estimated_cost,deleted_by,inserted_by,updated_by,deleted_time,inserted_time,updated_time)

values(p_id,p_item_loss,p_quantity,p_estimated_cost,p_deleted_by,p_inserted_by,p_updated_by,p_deleted_time,p_inserted_time,p_updated_time)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_victim` (IN `v_id` INT(20), IN `v_name` VARCHAR(20), IN `v_gender` VARCHAR(20), IN `v_age` VARCHAR(20), IN `v_death` VARCHAR(20), IN `v_alive` VARCHAR(20), IN `v_any_casualty` VARCHAR(20), IN `v_hospital` VARCHAR(20), IN `v_location` VARCHAR(20), IN `v_injury_type` VARCHAR(20), IN `v_displaced` VARCHAR(20), IN `v_non_displaced` VARCHAR(20), IN `v_item_name` VARCHAR(20), IN `v_estimated_cost` VARCHAR(20), IN `v_quantity` VARCHAR(20), IN `v_deleted_by` VARCHAR(20), IN `v_inserted_by` VARCHAR(20), IN `v_updated_by` INT(20), IN `v_deleted_time` TIMESTAMP, IN `v_inserted_time` TIMESTAMP, IN `v_updated_time` TIMESTAMP)  NO SQL
insert into victims(victim_id,name,gender,age,death,alive,any_casualty,hospital,location,injury_type,displaced,non_displaced,item_name,estimated_cost,quantity,deleted_by,inserted_by,updated_by,deleted_time,inserted_time,updated_time)

values(v_id,v_name,v_gender,v_age,v_death,v_alive,v_any_casualty,v_hospital,v_location,v_injury_type,v_displaced,v_non_displaced,v_item_name,v_estimated_cost,v_quantity,v_deleted_by,v_inserted_by,v_updated_by,v_deleted_time,v_inserted_time,v_updated_time)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_assistance` (IN `a_id` INT(20), IN `a_gender` VARCHAR(20), IN `a_age` INT, IN `a_total_no` INT, IN `a_deleted_by` VARCHAR(20), IN `a_inserted_by` VARCHAR(20), IN `a_updated_by` VARCHAR(20), IN `a_deleted_time` TIMESTAMP, IN `a_inserted_time` TIMESTAMP, IN `a_updated_time` TIMESTAMP)  NO SQL
UPDATE assistance SET gender=a_gender,age=a_age,total_no=a_total_no,deleted_by=a_deleted_by,inserted_by=a_inserted_by,updated_by=a_updated_by,deleted_time=a_deleted_time,inserted_time=a_inserted_time,updated_time=a_updated_time WHERE household_id=a_id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_casualty_death` (IN `c_id` INT(20), IN `c_gender` VARCHAR(20), IN `c_age` INT(20), IN `c_death_casualty` VARCHAR(20), IN `c_total_no` INT(20), IN `c_deleted_by` VARCHAR(20), IN `c_inserted_by` VARCHAR(20), IN `c_updated_by` VARCHAR(20), IN `c_deleted_time` TIMESTAMP, IN `c_inserted_time` TIMESTAMP, IN `c_updated_time` TIMESTAMP)  NO SQL
UPDATE casualty_death SET gender=c_gender,age=c_age,death_casualty=c_death_casualty,total_no=c_total_no,deleted_by=c_deleted_by,inserted_by=c_inserted_by,updated_by=c_updated_by,deleted_time=c_deleted_time,inserted_time=c_inserted_time,updated_time=c_updated_time WHERE casualty_id=c_id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_disasater` (IN `d_date` INT, IN `d_id` VARCHAR(20), IN `d_state` VARCHAR(20), IN `d_lga` VARCHAR(20), IN `d_town` VARCHAR(20), IN `d_disaster` VARCHAR(20), IN `d_location` VARCHAR(20), IN `d_longitude` VARCHAR(20), IN `d_latitude` VARCHAR(20), IN `d_updated_time` TIMESTAMP, IN `d_inserted_time` TIMESTAMP, IN `d_deleted_time` TIMESTAMP, IN `d_updated_by` VARCHAR(20), IN `d_inserted_by` VARCHAR(20), IN `d_deleted_by` VARCHAR(20))  NO SQL
UPDATE disaster SET disaster_date=d_date,state=d_state,lga=d_lga,town=d_town,disaster=d_disaste,disaster_location=d_location,longitude=d_longitude,latitude=d_latitude,updated_time=d_updated_time,inserted_time=d_inserted_time,deleted_time=d_deleted_time,updated_by=d_updated_by,inserted_by=d_inserted_by,deleted_by=d_deleted_by WHERE disaster_id=d_id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_property` (IN `p_id` INT(20), IN `p_item_loss` VARCHAR(20), IN `p_quantity` VARCHAR(20), IN `p_estimated_cost` VARCHAR(20), IN `p_deleted_by` VARCHAR(20), IN `p_inserted_by` VARCHAR(20), IN `p_updated_by` VARCHAR(20), IN `p_deleted_time` TIMESTAMP, IN `p_inserted_time` TIMESTAMP, IN `p_update_time` TIMESTAMP)  NO SQL
UPDATE property SET item_loss=p_item_loss,quantity=p_quantity,estimated_cost=p_estimated_cost,deleted_by=p_deleted_by,inserted_by=p_inserted_by,updated_by=p_updated_by,deleted_time=p_deleted_time,inserted_time=p_inserted_time,updated_time=p_update_time WHERE property_id=p_id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_victim` (IN `v_id` INT(20), IN `v_name` VARCHAR(20), IN `v_gender` VARCHAR(20), IN `v_age` INT(20), IN `v_death` VARCHAR(20), IN `v_alive` VARCHAR(20), IN `v_any_casualty` VARCHAR(20), IN `v_hospital` VARCHAR(20), IN `v_location` VARCHAR(20), IN `v_injury_type` VARCHAR(20), IN `v_displaced` VARCHAR(20), IN `v_non_displaced` VARCHAR(20), IN `v_item_name` VARCHAR(20), IN `v_estimated_cost` VARCHAR(20), IN `v_quantity` VARCHAR(20), IN `v_deleted_by` VARCHAR(20), IN `v_inserted_by` VARCHAR(20), IN `v_updated_by` VARCHAR(20), IN `v_deleted_time` TIMESTAMP, IN `v_inserted_time` TIMESTAMP, IN `v_updated_time` TIMESTAMP)  NO SQL
UPDATE victims SET name=v_name,gender=v_gender,age=v_age,death=v_death,alive=v_alive,any_casualty=v_any_casualty,hospital=v_hospital,location=v_location,injury_type=v_injury_type,displaced=v_displaced,non_displaced=v_non_displaced,item_name=v_item_name,estimated_cost=v_estimated_cost,quantity=v_quantity,deleted_by=v_deleted_by,inserted_by=v_inserted_by,updated_by=v_updated_by,deleted_time=v_deleted_time,inserted_time=v_inserted_time,updated_time=v_updated_time WHERE victim_id=v_id$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `assistance`
--

CREATE TABLE `assistance` (
  `household_id` int(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `total_no` int(100) NOT NULL,
  `deleted_by` varchar(100) NOT NULL,
  `inserted_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `deleted_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `inserted_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `casualty_death`
--

CREATE TABLE `casualty_death` (
  `casualty_id` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `death_casualty` varchar(100) NOT NULL,
  `total_no` varchar(100) NOT NULL,
  `deleted_by` varchar(100) NOT NULL,
  `inserted_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `deleted_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `inserted_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `disaster`
--

CREATE TABLE `disaster` (
  `disaster_date` date NOT NULL,
  `disaster_id` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `lga` varchar(100) NOT NULL,
  `town` varchar(100) NOT NULL,
  `disaster` varchar(100) NOT NULL,
  `disaster_location` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `inserted_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `inserted_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items_needed`
--

CREATE TABLE `items_needed` (
  `item_id` int(100) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_quantity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `property_id` varchar(100) NOT NULL,
  `item_loss` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `estimated_cost` varchar(100) NOT NULL,
  `deleted_by` varchar(100) NOT NULL,
  `inserted_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `deleted_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `inserted_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `victims`
--

CREATE TABLE `victims` (
  `victim_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `death` varchar(100) NOT NULL,
  `alive` varchar(100) NOT NULL,
  `any_casualty` varchar(100) NOT NULL,
  `hospital` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `injury_type` varchar(100) NOT NULL,
  `displaced` varchar(100) NOT NULL,
  `non_displaced` varchar(100) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `estimated_cost` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `deleted_by` varchar(100) NOT NULL,
  `inserted_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `deleted_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `inserted_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assistance`
--
ALTER TABLE `assistance`
  ADD PRIMARY KEY (`household_id`);

--
-- Indexes for table `casualty_death`
--
ALTER TABLE `casualty_death`
  ADD PRIMARY KEY (`casualty_id`);

--
-- Indexes for table `disaster`
--
ALTER TABLE `disaster`
  ADD PRIMARY KEY (`disaster_id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`property_id`);

--
-- Indexes for table `victims`
--
ALTER TABLE `victims`
  ADD PRIMARY KEY (`victim_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `casualty_death`
--
ALTER TABLE `casualty_death`
  ADD CONSTRAINT `casualty_death_ibfk_1` FOREIGN KEY (`casualty_id`) REFERENCES `disaster` (`disaster_id`);

--
-- Constraints for table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `property_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `disaster` (`disaster_id`),
  ADD CONSTRAINT `property_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `victims` (`victim_id`);

--
-- Constraints for table `victims`
--
ALTER TABLE `victims`
  ADD CONSTRAINT `victims_ibfk_1` FOREIGN KEY (`victim_id`) REFERENCES `disaster` (`disaster_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
