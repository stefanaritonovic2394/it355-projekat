-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2017 at 12:06 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `authorities`
--

CREATE TABLE `authorities` (
  `authoritiesId` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `authority` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authorities`
--

INSERT INTO `authorities` (`authoritiesId`, `username`, `authority`) VALUES
(2, 'admin', 'ROLE_ADMIN'),
(3, 'marko.markovic', 'ROLE_USER'),
(1, 'stefan.aritonovic.2394', 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerId` int(11) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `customerEmail` varchar(50) NOT NULL,
  `customerPhone` varchar(50) NOT NULL,
  `customerStreetName` varchar(50) NOT NULL,
  `customerCity` varchar(50) NOT NULL,
  `customerCountry` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerId`, `customerName`, `customerEmail`, `customerPhone`, `customerStreetName`, `customerCity`, `customerCountry`, `username`, `password`, `enabled`) VALUES
(1, 'Stefan', 'stefan@gmail.com', '0638514222', '/', 'Bujanovac', 'Srbija', 'stefan.aritonovic.2394', 'stefan2394', 1),
(2, 'Marko', 'marko@gmail.com', '0602244789', 'Ulica Kralja Petra', 'Beograd', 'Srbija', 'marko.markovic', 'marko123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ordersId` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `ordersName` varchar(50) DEFAULT NULL,
  `dateCreation` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ordersdetail`
--

CREATE TABLE `ordersdetail` (
  `ordersDetailId` int(11) NOT NULL,
  `productId` int(11) NOT NULL DEFAULT '0',
  `ordersId` int(11) NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `quantity` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(50) DEFAULT NULL,
  `productDescription` varchar(256) DEFAULT NULL,
  `productCategory` varchar(50) DEFAULT NULL,
  `productPrice` double DEFAULT NULL,
  `productStatus` varchar(50) DEFAULT NULL,
  `unitInStock` int(11) DEFAULT NULL,
  `productManufacturer` varchar(50) DEFAULT NULL,
  `productImage` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `productName`, `productDescription`, `productCategory`, `productPrice`, `productStatus`, `unitInStock`, `productManufacturer`, `productImage`) VALUES
(1, 'ELITE PC SUPER OFFICE', 'Veoma dobar racunar, namenjen za svakodnevni rad.', 'Desktop', 60390, 'active', 60, 'Monitor System', '/PCShop/resources/images/pc1.jpg'),
(2, 'ELITE PC GAMING AMD I', 'Veoma mocan racunar, namenjen za igrace.', 'Desktop', 57000, 'active', 30, 'Monitor System', '/PCShop/resources/images/pc2.jpg'),
(3, 'PC AXE 700 Gold', 'Veoma mocan racunar, namenjen za igrace.', 'Desktop', 80775, 'active', 23, 'Monitor System', '/PCShop/resources/images/pc3.jpg'),
(4, 'PC AXE 750 Gold', 'Veoma mocan racunar, namenjen za igrace.', 'Desktop', 96850, 'active', 150, 'Monitor System', '/PCShop/resources/images/pc4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersId` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersId`, `username`, `password`, `enabled`) VALUES
(1, 'stefan.aritonovic.2394', 'stefan2394', 1),
(2, 'admin', 'admin', 1),
(3, 'marko.markovic', 'marko123', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authorities`
--
ALTER TABLE `authorities`
  ADD PRIMARY KEY (`authoritiesId`),
  ADD UNIQUE KEY `uni_username_role` (`authority`,`username`),
  ADD KEY `fk_username_idx` (`username`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerId`),
  ADD UNIQUE KEY `uni_username_email` (`customerEmail`,`username`),
  ADD KEY `fk_username_idx` (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ordersId`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `ordersdetail`
--
ALTER TABLE `ordersdetail`
  ADD PRIMARY KEY (`ordersDetailId`),
  ADD KEY `productId` (`productId`),
  ADD KEY `ordersId` (`ordersId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersId`),
  ADD KEY `Index 2` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authorities`
--
ALTER TABLE `authorities`
  MODIFY `authoritiesId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ordersId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ordersdetail`
--
ALTER TABLE `ordersdetail`
  MODIFY `ordersDetailId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `authorities`
--
ALTER TABLE `authorities`
  ADD CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `FK_customer_users` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_orders_customer` FOREIGN KEY (`username`) REFERENCES `customer` (`username`);

--
-- Constraints for table `ordersdetail`
--
ALTER TABLE `ordersdetail`
  ADD CONSTRAINT `FK_ordersdetail_orders` FOREIGN KEY (`ordersId`) REFERENCES `orders` (`ordersId`),
  ADD CONSTRAINT `FK_ordersdetail_product` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
