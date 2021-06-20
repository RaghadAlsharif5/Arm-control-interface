-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20 يونيو 2021 الساعة 22:53
-- إصدار الخادم: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robot arm`
--

-- --------------------------------------------------------

--
-- بنية الجدول `motor_table`
--

CREATE TABLE `motor_table` (
  `Motor1` int(11) NOT NULL,
  `Motor2` int(11) NOT NULL,
  `Motor3` int(11) NOT NULL,
  `Motor4` int(11) NOT NULL,
  `Motor5` int(11) NOT NULL,
  `Motor6` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `motor_table`
--

INSERT INTO `motor_table` (`Motor1`, `Motor2`, `Motor3`, `Motor4`, `Motor5`, `Motor6`) VALUES
(0, 0, 0, 0, 0, 0),
(0, 0, 0, 0, 0, 0),
(118, 90, 0, 130, 121, 122);

-- --------------------------------------------------------

--
-- بنية الجدول `on_off_table`
--

CREATE TABLE `on_off_table` (
  `isOn` int(10) NOT NULL,
  `isOff` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `on_off_table`
--

INSERT INTO `on_off_table` (`isOn`, `isOff`) VALUES
(1, 0),
(0, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
