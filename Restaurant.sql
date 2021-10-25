-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2020 at 09:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `beverages`
--

CREATE TABLE `beverages` (
  `ID` int(11) NOT NULL,
  `Nationality` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beverages`
--

INSERT INTO `beverages` (`ID`, `Nationality`) VALUES
(5, 'American'),
(6, 'Egyptian');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `ID` int(11) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `address` varchar(30) NOT NULL,
  `ManagerID` int(11) NOT NULL,
  `Phone #` int(12) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Supplier ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`ID`, `Name`, `address`, `ManagerID`, `Phone #`, `Status`, `Supplier ID`) VALUES
(1, 'Madinty', '32Madintystreet', 1, 2389238, 'available', 1),
(2, 'El Areesh', '21SaharaDesert street', 2, 1289382, 'abandoned', 1);

-- --------------------------------------------------------

--
-- Table structure for table `branchitems`
--

CREATE TABLE `branchitems` (
  `BranchID` int(11) NOT NULL,
  `ItemsID` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branchitems`
--

INSERT INTO `branchitems` (`BranchID`, `ItemsID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `breakfast`
--

CREATE TABLE `breakfast` (
  `ID` int(11) NOT NULL,
  `Nationality` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `ID` int(11) NOT NULL,
  `Degree` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`ID`, `Degree`) VALUES
(3, 'Mechatronics');

-- --------------------------------------------------------

--
-- Table structure for table `chef`
--

CREATE TABLE `chef` (
  `ID` int(11) NOT NULL,
  `C-Title` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chef`
--

INSERT INTO `chef` (`ID`, `C-Title`) VALUES
(1, 'Executive Chef'),
(5, 'Head Chef');

-- --------------------------------------------------------

--
-- Table structure for table `cleaning guy`
--

CREATE TABLE `cleaning guy` (
  `ID` int(11) NOT NULL,
  `Rate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cleaning guy`
--

INSERT INTO `cleaning guy` (`ID`, `Rate`) VALUES
(4, '0');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `PreferredMeal` varchar(20) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID`, `Name`, `PreferredMeal`, `TimeStamp`) VALUES
(1, 'Youssef', 'ChickenStrips', '2020-05-08 20:20:10'),
(2, 'Rana', 'Meat', '2020-05-08 20:20:10'),
(3, 'Yara', 'Fries', '2020-05-02 20:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `customerphonenumber`
--

CREATE TABLE `customerphonenumber` (
  `CustomerID` int(11) NOT NULL,
  `PhoneNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerphonenumber`
--

INSERT INTO `customerphonenumber` (`CustomerID`, `PhoneNumber`) VALUES
(1, 1829572839),
(2, 1143143143),
(3, 1143143142);

-- --------------------------------------------------------

--
-- Table structure for table `desserts`
--

CREATE TABLE `desserts` (
  `ID` int(11) NOT NULL,
  `HotCold` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ID` int(11) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `JobID` int(11) NOT NULL,
  `Gender` text NOT NULL,
  `Salary` mediumint(9) NOT NULL,
  `BankAccount` int(11) DEFAULT NULL,
  `Branch ID` int(11) NOT NULL,
  `Shift` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `Name`, `JobID`, `Gender`, `Salary`, `BankAccount`, `Branch ID`, `Shift`) VALUES
(1, 'Amira', 2, 'Female ', 100, NULL, 1, 1),
(2, 'Pierre', 3, 'Male', 100, NULL, 1, 1),
(3, 'Ashraf', 4, 'Male', 100, NULL, 1, 1),
(4, 'Yomna', 5, 'Female ', 10, NULL, 1, 1),
(5, 'Mohamed', 2, 'Male', 1000, NULL, 1, 1),
(6, 'Gamal', 3, 'Male', 5, NULL, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employeeadress`
--

CREATE TABLE `employeeadress` (
  `ID` int(11) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employeeadress`
--

INSERT INTO `employeeadress` (`ID`, `address`) VALUES
(1, '32 october street'),
(1, '32Madintystreet');

-- --------------------------------------------------------

--
-- Table structure for table `employeenumber`
--

CREATE TABLE `employeenumber` (
  `ID` int(11) NOT NULL,
  `Number` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employeenumber`
--

INSERT INTO `employeenumber` (`ID`, `Number`) VALUES
(1, 38493172),
(1, 48129813);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `ItemID` int(11) NOT NULL,
  `MenuID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Price` float NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`ItemID`, `MenuID`, `Name`, `Price`, `Description`) VALUES
(1, 1, 'Eggs', 5, '2 boiled Eggs'),
(2, 1, 'Salad', 5, 'Salad with cucumber, tomatos and onions'),
(3, 2, 'Chicken Strips', 30, '4 chicken pieces'),
(4, 2, 'Meat', 30, '2 Meat pieces'),
(5, 3, 'Coca', 5, 'Cocacola drink'),
(6, 3, 'Hot Chocolate', 5, 'Hot Chocolate drink'),
(7, 4, 'Chocolate Cake', 10, 'Chocolate cake'),
(8, 4, 'Cheese Cake', 10, 'Cheese cake');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `ID` int(11) NOT NULL,
  `JobName` varchar(20) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`ID`, `JobName`, `Description`) VALUES
(1, 'Manager', 'Manages 1 branch'),
(2, 'Chef', 'Cooks items in the kitchen'),
(3, 'Waiter', 'Helps the customer'),
(4, 'Cashier', 'takes the order from the waiter and records it on the computer'),
(5, 'Cleaning guy', 'Makes sure that the restaurant is clean');

-- --------------------------------------------------------

--
-- Table structure for table `main dishes`
--

CREATE TABLE `main dishes` (
  `ID` int(11) NOT NULL,
  `HotCold` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main dishes`
--

INSERT INTO `main dishes` (`ID`, `HotCold`) VALUES
(3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `ID` int(11) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Job ID` int(11) NOT NULL DEFAULT 1,
  `Gender` varchar(10) NOT NULL,
  `Salary` int(10) NOT NULL,
  `BankAccount` varchar(20) NOT NULL,
  `Shift` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`ID`, `Name`, `Job ID`, `Gender`, `Salary`, `BankAccount`, `Shift`) VALUES
(1, 'OmarBats', 1, 'Male', 10, '4319049301490', 1),
(2, 'Mariam Mostafa', 1, 'Female', 10, '21930127387281', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `ID` int(11) NOT NULL,
  `Name` varchar(11) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`ID`, `Name`, `Description`) VALUES
(1, 'Breakfast', 'Menu which contains food like eggs, cheese,..etc'),
(2, 'Main Dishes', 'Menu which contains food like meat, chicken,..etc'),
(3, 'Beverages', 'Menu containing drinks'),
(4, 'Desserts', 'Menu which contain desserts like chocolate cake, cheese cake..etc');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `OrderID` int(11) NOT NULL,
  `ItemsID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`OrderID`, `ItemsID`) VALUES
(1, 3),
(1, 4),
(2, 4),
(2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `WaiterID` int(11) NOT NULL,
  `Table#` int(11) NOT NULL,
  `BranchID` int(11) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Taxes` float NOT NULL,
  `TotalPrice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ID`, `CustomerID`, `WaiterID`, `Table#`, `BranchID`, `TimeStamp`, `Taxes`, `TotalPrice`) VALUES
(1, 1, 2, 1, 1, '2020-05-08 20:20:10', 0, 60),
(2, 2, 2, 2, 1, '2020-05-08 20:20:10', 0, 35);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `ReviewID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Suggestions` varchar(50) NOT NULL,
  `Cleanliness` varchar(50) NOT NULL,
  `Service` varchar(50) NOT NULL,
  `TimeStamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`ReviewID`, `CustomerID`, `Description`, `Suggestions`, `Cleanliness`, `Service`, `TimeStamp`) VALUES
(1, 1, 'Very good restaurant', 'nothing', '10/10', '10/10', '2020-05-08 21:20:10.000000'),
(2, 2, 'Best restaurant ever', 'nothing', '10/10', '10/10', '2020-05-08 21:20:10.000000');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `phone #` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`ID`, `Name`, `Address`, `phone #`) VALUES
(1, 'Supplier1', '32Xstreet', 1239283);

-- --------------------------------------------------------

--
-- Table structure for table `waiter`
--

CREATE TABLE `waiter` (
  `ID` int(11) NOT NULL,
  `Skills` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `waiter`
--

INSERT INTO `waiter` (`ID`, `Skills`) VALUES
(2, 'knows 3 languages'),
(6, 'basic maths');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beverages`
--
ALTER TABLE `beverages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Supplier ID` (`Supplier ID`),
  ADD KEY `Manager iD` (`ManagerID`);

--
-- Indexes for table `branchitems`
--
ALTER TABLE `branchitems`
  ADD PRIMARY KEY (`BranchID`,`ItemsID`),
  ADD KEY `Items constraint` (`ItemsID`);

--
-- Indexes for table `breakfast`
--
ALTER TABLE `breakfast`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `chef`
--
ALTER TABLE `chef`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cleaning guy`
--
ALTER TABLE `cleaning guy`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customerphonenumber`
--
ALTER TABLE `customerphonenumber`
  ADD PRIMARY KEY (`CustomerID`,`PhoneNumber`);

--
-- Indexes for table `desserts`
--
ALTER TABLE `desserts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `JOB ID` (`JobID`),
  ADD KEY `Branch ID` (`Branch ID`);

--
-- Indexes for table `employeeadress`
--
ALTER TABLE `employeeadress`
  ADD PRIMARY KEY (`ID`,`address`);

--
-- Indexes for table `employeenumber`
--
ALTER TABLE `employeenumber`
  ADD PRIMARY KEY (`ID`,`Number`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`ItemID`),
  ADD KEY `Menu ID` (`MenuID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `main dishes`
--
ALTER TABLE `main dishes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `job constraint` (`Job ID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`OrderID`,`ItemsID`),
  ADD KEY `items id constraint` (`ItemsID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `customer constraint` (`CustomerID`),
  ADD KEY `Branch` (`BranchID`),
  ADD KEY `Waiter constraint` (`WaiterID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`ReviewID`),
  ADD KEY `customer` (`CustomerID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `waiter`
--
ALTER TABLE `waiter`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beverages`
--
ALTER TABLE `beverages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `breakfast`
--
ALTER TABLE `breakfast`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cashier`
--
ALTER TABLE `cashier`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chef`
--
ALTER TABLE `chef`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cleaning guy`
--
ALTER TABLE `cleaning guy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `desserts`
--
ALTER TABLE `desserts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `ItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `main dishes`
--
ALTER TABLE `main dishes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `ReviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `waiter`
--
ALTER TABLE `waiter`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `beverages`
--
ALTER TABLE `beverages`
  ADD CONSTRAINT `Beverages` FOREIGN KEY (`ID`) REFERENCES `items` (`ItemID`) ON UPDATE CASCADE;

--
-- Constraints for table `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `Manager iD` FOREIGN KEY (`ManagerID`) REFERENCES `manager` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Supplier ID` FOREIGN KEY (`Supplier ID`) REFERENCES `supplier` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `branchitems`
--
ALTER TABLE `branchitems`
  ADD CONSTRAINT `Branch Constraint` FOREIGN KEY (`BranchID`) REFERENCES `branch` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Items constraint` FOREIGN KEY (`ItemsID`) REFERENCES `items` (`ItemID`) ON UPDATE CASCADE;

--
-- Constraints for table `breakfast`
--
ALTER TABLE `breakfast`
  ADD CONSTRAINT `Breakfast ID` FOREIGN KEY (`ID`) REFERENCES `menu` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `cashier`
--
ALTER TABLE `cashier`
  ADD CONSTRAINT `Cashier ID` FOREIGN KEY (`ID`) REFERENCES `employee` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `chef`
--
ALTER TABLE `chef`
  ADD CONSTRAINT `ID` FOREIGN KEY (`ID`) REFERENCES `employee` (`ID`);

--
-- Constraints for table `cleaning guy`
--
ALTER TABLE `cleaning guy`
  ADD CONSTRAINT `Cleaning ID` FOREIGN KEY (`ID`) REFERENCES `employee` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `desserts`
--
ALTER TABLE `desserts`
  ADD CONSTRAINT `dessert ` FOREIGN KEY (`ID`) REFERENCES `menu` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `Branch ID` FOREIGN KEY (`Branch ID`) REFERENCES `branch` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `JOB ID` FOREIGN KEY (`JobID`) REFERENCES `job` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `employeeadress`
--
ALTER TABLE `employeeadress`
  ADD CONSTRAINT `Employee ID` FOREIGN KEY (`ID`) REFERENCES `employee` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `employeenumber`
--
ALTER TABLE `employeenumber`
  ADD CONSTRAINT `Employee Number` FOREIGN KEY (`ID`) REFERENCES `employee` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `Menu ID` FOREIGN KEY (`MenuID`) REFERENCES `menu` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `main dishes`
--
ALTER TABLE `main dishes`
  ADD CONSTRAINT `Main Dishes ID` FOREIGN KEY (`ID`) REFERENCES `items` (`ItemID`) ON UPDATE CASCADE;

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `job constraint` FOREIGN KEY (`Job ID`) REFERENCES `job` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `Order constraint` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `items id constraint` FOREIGN KEY (`ItemsID`) REFERENCES `items` (`ItemID`) ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `Branch` FOREIGN KEY (`BranchID`) REFERENCES `branch` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Waiter constraint` FOREIGN KEY (`WaiterID`) REFERENCES `employee` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `customer constraint` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `customer` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `waiter`
--
ALTER TABLE `waiter`
  ADD CONSTRAINT `Waiter ID` FOREIGN KEY (`ID`) REFERENCES `employee` (`ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
