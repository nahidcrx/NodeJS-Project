-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2018 at 06:48 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `username` varchar(50) NOT NULL,
  `pass_word` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`username`, `pass_word`) VALUES
('deepta', '9876543210'),
('', ''),
('naymul', '12345678'),
('nahidcrx', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `adtable`
--

CREATE TABLE `adtable` (
  `adid` int(50) NOT NULL,
  `regid` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `price_per_unit` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adtable`
--

INSERT INTO `adtable` (`adid`, `regid`, `product_name`, `product_category`, `quantity`, `price_per_unit`, `description`, `phone`, `division`) VALUES
(16, '201823', 'Rui Mas', 'Fish', '500', '555', 'Freah', '1777431117', 'Chittagong'),
(17, '201823', 'Elish Mas', 'Fish', '50', '555', 'Fresh', '1554328455', 'Chittagong'),
(19, '201822', 'Mango', 'Fruit', '500', '80', 'Fresh', '1777431117', 'Barisal'),
(21, '201822', 'ABCD', 'Fish', '4', '6778899', 'New', '1777431117', 'Barisal'),
(22, '201822', 'Amon', 'Rice', '500', '50', 'Fresh', '1777431117', 'Barisal'),
(24, '201841', 'Chicken', 'Fish', '500 Pices', '250 Tk', 'ABCD', '01777431117', 'Barisal'),
(25, '201841', 'Mango', 'Fruit', '500Kg', '90Tk', 'Full Fresh', '01777431117', 'Rajshahi'),
(26, '201852', 'Mango', 'Fruit', '500', '50', 'Full Fresh', '01777431117', 'Chittagong');

-- --------------------------------------------------------

--
-- Table structure for table `categorytable`
--

CREATE TABLE `categorytable` (
  `cname` varchar(50) NOT NULL,
  `curl` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorytable`
--

INSERT INTO `categorytable` (`cname`, `curl`) VALUES
('Fish', 'category/Fish.jpg'),
('Fruit', 'category/Fruit.jpg'),
('Meat', 'category/Meat.jpg'),
('Milk', 'category/Milk.jpg'),
('Rice', 'category/Rice.jpg'),
('Vegetable', 'category/Vegetables.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `divisiontable`
--

CREATE TABLE `divisiontable` (
  `divisionID` int(50) NOT NULL,
  `divisionname` varchar(50) NOT NULL,
  `districtid` int(50) NOT NULL,
  `districtname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisiontable`
--

INSERT INTO `divisiontable` (`divisionID`, `divisionname`, `districtid`, `districtname`) VALUES
(11, 'Chittagong', 11, 'chittagong'),
(22, 'Dhaka', 22, 'dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `registrationtable`
--

CREATE TABLE `registrationtable` (
  `ID` int(50) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `User_Name` varchar(50) NOT NULL,
  `Pass` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Division` varchar(50) NOT NULL,
  `District` varchar(50) NOT NULL,
  `User_Type` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `NID` varchar(50) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `DB_Date` varchar(20) NOT NULL,
  `DB_Month` varchar(50) NOT NULL,
  `DB_Year` varchar(50) NOT NULL,
  `Nationality` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registrationtable`
--

INSERT INTO `registrationtable` (`ID`, `First_Name`, `Last_Name`, `User_Name`, `Pass`, `Phone`, `Division`, `District`, `User_Type`, `Email`, `NID`, `Gender`, `DB_Date`, `DB_Month`, `DB_Year`, `Nationality`) VALUES
(201822, 'Naymul', 'Islam', 'nahidcbf', '07ae9365f4ce310a1d784108a0f869e5', '01677523600', 'Dhaka', '', 'seller', '', '1234567890000', 'Male', '15', 'April', '1996', 'Bangladeshi'),
(201823, 'Imtiazur', 'Rahman', 'deepta71', 'c01ec0e348ef36c95480f8398c7dd4ce', '01554328455', 'Chittagong', '', 'seller', '', '1234567890000', 'Male', '1', 'January', '1991', 'Bangladeshi'),
(201824, 'Naymul', 'Islam', 'naymulcbfg', '1424a5bd8efd15d2d689f7bf4151d0e3', '01777431117', 'Dhaka', '', 'buyer', '', '1234567890000', 'Male', '1', 'January', '1991', 'Bangladeshi'),
(201830, 'Jawad', 'Abid', 'jawad007', '133ebdf37c3ef44284db8a1546c44687', '01777431117', 'Dhaka', '', 'buyer', '', '1234567890000', 'Male', '1', 'January', '1991', 'Bangladeshi'),
(201836, 'aseer', 'ahmed', 'aseerooo', 'e807f1fcf82d132f9bb018ca6738a19f', '01777431117', 'Dhaka', '', 'buyer', '', '1234567890000', 'Male', '1', 'January', '1991', 'Bangladeshi'),
(201841, 'Naymul', 'Islam', 'nahidcrx', '29ab0c6e659ae076dd9725a629816b50', '01777431117', 'Dhaka', '', 'seller', 'nahidcrx@gmail.com', '0123456789011', 'Male', '1', 'January', '1991', 'Bangladeshi'),
(201844, 'Jawad', 'Abid', 'jawadabid', '8dc137e07af8d789fb1574ff7ce386af', '01777431117', 'Dhaka', '', 'buyer', 'nahid@gmail.com', '0123456789011', 'Male', '1', 'January', '1991', 'Bangladeshi'),
(201845, 'Naymul', 'Islam', 'naymulcbf', '25f9e794323b453885f5181f1b624d0b', '01777431117', 'Dhaka', '', 'buyer', 'nahid@gmail.com', '1234567890000', 'Male', '1', 'January', '1991', 'Bangladeshi'),
(201846, 'sdsksk', 'sdsksk', 'sdsksk', 'sdsksk', 'sdsksk', 'Dhaka', 'Dhaka', 'buyer', 'sdsksk', 'sdsksk', 'Male', '1', 'January', '1991', 'Bangladeshi'),
(201847, '', '', '', '', '', 'Dhaka', 'Dhaka', 'buyer', '', '', 'Male', '1', 'January', '1991', 'Bangladeshi'),
(201849, '', '', 'sjdfiefhfkhdfk', '', '', 'Dhaka', 'Dhaka', 'buyer', '', '', 'Female', '1', 'January', '1991', 'Bangladeshi'),
(201850, '', '', 'sjdfiefhfkhdfkamamam', '', '', 'Dhaka', 'Dhaka', 'buyer', '', '', 'Female', '1', 'January', '1991', 'Bangladeshi'),
(201851, 'nahid', 'nahid', 'nahid12345', '25f9e794323b453885f5181f1b624d0b', '01777431117', 'Dhaka', '', 'buyer', 'nahid@gmail.com', '1234567890000', '', '1', 'January', '1991', 'Bangladeshi'),
(201852, 'Naymul', 'Islam Nahid', 'naymulcbfff', '123456789', '01777431117', 'Dhaka', 'Dhaka', 'buyer', 'nahid@gmail.com', '1234567890000', 'Male', '1', 'January', '1991', 'Bangladeshi'),
(201853, 'md d', 'ddmd', 'ddmd', 'ddmd', '01777431117', 'Dhaka', 'Dhaka', 'buyer', 'ddmd', '1234567890000', 'Male', '1', 'January', '1991', 'Bangladeshi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adtable`
--
ALTER TABLE `adtable`
  ADD PRIMARY KEY (`adid`);

--
-- Indexes for table `categorytable`
--
ALTER TABLE `categorytable`
  ADD PRIMARY KEY (`cname`);

--
-- Indexes for table `divisiontable`
--
ALTER TABLE `divisiontable`
  ADD PRIMARY KEY (`divisionname`);

--
-- Indexes for table `registrationtable`
--
ALTER TABLE `registrationtable`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `User_Name` (`User_Name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adtable`
--
ALTER TABLE `adtable`
  MODIFY `adid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `registrationtable`
--
ALTER TABLE `registrationtable`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201854;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
