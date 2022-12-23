-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2022 at 10:47 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebook_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Bookid` int(11) NOT NULL,
  `Book_Name` varchar(100) NOT NULL,
  `Image` varchar(225) NOT NULL,
  `Author_Name` varchar(100) NOT NULL,
  `Edition` varchar(100) NOT NULL,
  `Price` varchar(50) NOT NULL,
  `Delivery_Details` varchar(100) NOT NULL,
  `weight_in_Kg` int(50) NOT NULL,
  `DealersDetail` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Bookid`, `Book_Name`, `Image`, `Author_Name`, `Edition`, `Price`, `Delivery_Details`, `weight_in_Kg`, `DealersDetail`, `cat_id`) VALUES
(2, 'Childern Of Dune', '../BooksImages/Book1.jpg', 'Furqan', 'III Edition', '500', 'This Book based on three types.', 1, 1, 1),
(3, 'Different Winter', '../BooksImages/Book2.png', 'Muniba', 'III Edition', '560', 'This book based on three forms.', 2, 2, 2),
(19, 'Write Who you are ', '../BooksImages/Book4.png', 'albert', '1', '1299', 'asdasdasdasd', 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `booktype`
--

CREATE TABLE `booktype` (
  `Typeid` int(11) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `booksName` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booktype`
--

INSERT INTO `booktype` (`Typeid`, `Type`, `booksName`) VALUES
(4, 'PDF', 2),
(5, 'Hard Copy', 2),
(6, 'CD', 2),
(7, 'PDF', 3),
(8, 'Hard Copy', 3),
(9, 'CD', 3),
(10, 'CD', 19),
(11, 'Online', 19),
(12, 'Hard Copy', 19);

-- --------------------------------------------------------

--
-- Table structure for table `book_weight`
--

CREATE TABLE `book_weight` (
  `weightid` int(11) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `bookid` int(11) NOT NULL,
  `weight` int(100) NOT NULL,
  `Booktype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_weight`
--

INSERT INTO `book_weight` (`weightid`, `Description`, `bookid`, `weight`, `Booktype`) VALUES
(10, 'PHP', 2, 1, 5),
(11, 'Javascript', 3, 2, 8),
(16, 'PHP', 2, 0, 4),
(17, 'PHP', 2, 0, 6),
(18, 'Javascript', 3, 0, 7),
(19, 'Javascript', 3, 0, 9),
(20, '', 19, 2, 6),
(21, '', 19, 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Cartid` int(11) NOT NULL,
  `Customer` varchar(100) NOT NULL,
  `Bookid` int(11) NOT NULL,
  `Price` varchar(100) NOT NULL,
  `Qty` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`Cartid`, `Customer`, `Bookid`, `Price`, `Qty`) VALUES
(5, 'Furqan', 3, '560', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cash_on_delivery`
--

CREATE TABLE `cash_on_delivery` (
  `cid` int(11) NOT NULL,
  `Postal_Address` varchar(100) NOT NULL,
  `Contact` varchar(50) NOT NULL,
  `custid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cash_on_delivery`
--

INSERT INTO `cash_on_delivery` (`cid`, `Postal_Address`, `Contact`, `custid`) VALUES
(4, 'jjhjkhkjhk', '03785632147', 1),
(5, 'House No. 983 Gulberg Zone Karachi.', '03784563217', 2),
(6, 'kjklhjhuyuyffhgffhfhgfhg', '034878965321', 1),
(7, 'yyuyiuiiuyiuy', '454545', 1),
(8, 'jlkhiuiuuuuuuuuuuuuuuuuuuuuuugggg.', '34569871230', 1),
(9, 'Gulberg Zone Karachi', '03456231456', 2),
(10, 'hkjhk', '4654', 2),
(11, 'House No. B-40 Gulshan, Karachi.', '03127896325', 1),
(12, '12321312', '1231232', 1),
(13, '12312312', '123123', 2),
(14, '12312312', '12312313', 2),
(15, '234234234', '342', 2),
(16, 'sdfsdfsd', 'fsdf', 2),
(17, 'asdasdasd', 'asdasda', 2),
(18, 'asdasdasdas', 'asdasdasdasd', 2),
(19, 'asdasdas', 'asdasd', 2),
(20, '', '1231232', 2),
(21, 'dasdas', 'asdas', 2),
(22, 'asdas', 'asdasd', 2),
(23, 'dasdas', 'asdas', 2),
(24, 'asdasdas', 'asd', 2),
(25, 'asdasd', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Catid` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Catid`, `category_name`) VALUES
(1, 'English'),
(2, 'Science'),
(3, 'Urdu'),
(4, 'Kids'),
(5, 'Horror'),
(6, 'Story');

-- --------------------------------------------------------

--
-- Table structure for table `charge_on_weight`
--

CREATE TABLE `charge_on_weight` (
  `kgid` int(11) NOT NULL,
  `charge` int(50) NOT NULL,
  `Weightid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `charge_on_weight`
--

INSERT INTO `charge_on_weight` (`kgid`, `charge`, `Weightid`) VALUES
(9, 150, 10),
(10, 200, 11),
(11, 0, 16),
(12, 0, 17),
(13, 0, 18),
(14, 0, 19);

-- --------------------------------------------------------

--
-- Table structure for table `competition`
--

CREATE TABLE `competition` (
  `compid` int(11) NOT NULL,
  `comp_name` varchar(225) NOT NULL,
  `Topics` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `Passing_Marks` int(30) NOT NULL,
  `Total_Marks` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `competition`
--

INSERT INTO `competition` (`compid`, `comp_name`, `Topics`, `start_date`, `Passing_Marks`, `Total_Marks`) VALUES
(1, 'Eassy Writing', 'Technology', '2022-12-15', 50, 100),
(2, 'Story Writing', 'Happy Event of Life', '2022-12-19', 50, 100),
(3, 'Paragraph Writing', 'Illuminati', '2022-12-21', 50, 100);

-- --------------------------------------------------------

--
-- Table structure for table `credit_card`
--

CREATE TABLE `credit_card` (
  `cardid` int(11) NOT NULL,
  `cardnumber` varchar(100) NOT NULL,
  `Date_of_Expiry` date NOT NULL,
  `Title_of_Ac` varchar(100) NOT NULL,
  `custid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `credit_card`
--

INSERT INTO `credit_card` (`cardid`, `cardnumber`, `Date_of_Expiry`, `Title_of_Ac`, `custid`) VALUES
(44, '123', '2022-12-09', 'Noman', 1),
(45, '12345678912345', '2022-12-03', 'Furqan', 1),
(46, '987', '2022-12-03', 'Farzam', 1),
(47, '1236', '2022-12-03', 'Anis', 2),
(48, '12345678912345', '2022-12-03', 'Azeem', 1),
(49, '7845', '2022-12-03', 'Anis', 2),
(50, '1236', '2022-12-14', 'Anum', 2),
(52, '478', '2022-12-17', 'Aziz', 1),
(53, '1236', '2022-12-05', 'Kashif', 1),
(55, '456321', '2022-12-21', 'Anis', 2),
(56, '321', '2022-12-14', 'Hassan', 1),
(57, '124', '2022-12-07', 'Kashif', 1),
(58, '1236', '2022-12-08', 'Azeem', 1),
(59, '123654', '2022-12-08', 'Azeem', 1),
(63, '111', '2022-12-09', 'Azeem', 1),
(64, '222', '2022-12-23', 'Azeem', 1),
(68, '555', '2022-12-14', 'Azeem', 1),
(69, '1236', '2022-12-16', 'Azeem', 1),
(70, '478', '2022-12-16', 'Azeem', 1),
(82, '444', '2022-12-16', 'Anis', 2),
(83, '7888888', '2022-12-17', 'Azeem', 1),
(84, '', '0000-00-00', '', 1),
(85, '', '0000-00-00', '', 1),
(86, '', '0000-00-00', '', 1),
(87, '', '0000-00-00', '', 1),
(88, '', '0000-00-00', '', 1),
(89, '', '0000-00-00', '', 2),
(90, '', '0000-00-00', '', 2),
(91, '', '0000-00-00', '', 2),
(92, '', '0000-00-00', '', 2),
(93, '', '0000-00-00', '', 2),
(94, '', '0000-00-00', '', 2),
(95, '', '0000-00-00', '', 2),
(96, '', '0000-00-00', '', 2),
(97, '', '0000-00-00', '', 2),
(98, '', '0000-00-00', '', 2),
(99, '', '0000-00-00', '', 2),
(100, '', '0000-00-00', '', 2),
(101, '', '0000-00-00', '', 2),
(102, '', '0000-00-00', '', 2),
(103, '', '0000-00-00', '', 2),
(104, '', '0000-00-00', '', 2),
(105, '', '0000-00-00', '', 2),
(106, '', '0000-00-00', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custid` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Age` int(30) NOT NULL,
  `Role` varchar(50) NOT NULL,
  `Qualification` varchar(225) NOT NULL,
  `Contact` varchar(100) NOT NULL,
  `Address` varchar(225) NOT NULL,
  `Email` varchar(225) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `dateofregistration` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custid`, `Name`, `Age`, `Role`, `Qualification`, `Contact`, `Address`, `Email`, `Password`, `dateofregistration`) VALUES
(1, 'Furqan Ur Rehman', 32, 'Customer', 'Graduation', '03657893214', 'Karachi', 'customer@gmail.com', 'customer', '2022-11-27'),
(2, 'Hassan Mujtaba', 25, 'Admin', 'BCS', '03421107554', 'North', 'admin@gmail.com', 'admin', '2022-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `dealers`
--

CREATE TABLE `dealers` (
  `dealerid` int(11) NOT NULL,
  `Dealer_name` varchar(50) NOT NULL,
  `Dealers_Location` varchar(225) NOT NULL,
  `shop_Name` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dealers`
--

INSERT INTO `dealers` (`dealerid`, `Dealer_name`, `Dealers_Location`, `shop_Name`, `City`, `contact`) VALUES
(1, 'Ali', 'Sector 7/C North Karachi.', 'Bismillah Shop', 'Karachi', '03462584736'),
(2, 'Kashif', 'Gulberg Zone', 'Kashif Books Center', 'Karachi', '03457845123'),
(3, 'Dilbar', 'Nazimabad Urdu Bazar', 'Dilbar Book Shop', 'Karachi', '03235563533');

-- --------------------------------------------------------

--
-- Table structure for table `deliverylocation`
--

CREATE TABLE `deliverylocation` (
  `Locationid` int(11) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Loc_on_booktype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deliverylocation`
--

INSERT INTO `deliverylocation` (`Locationid`, `Location`, `Loc_on_booktype`) VALUES
(8, 'Through Online', 4),
(9, 'Through Online', 7),
(10, 'Karachi', 5),
(11, 'Karachi', 8),
(12, 'Outside Karachi', 5),
(13, 'Outside Karachi', 8),
(14, 'Karachi', 6),
(15, 'Outside Karachi', 6),
(16, 'Karachi', 9),
(17, 'Outside Karachi', 9),
(18, 'fghfh', 4);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_charges`
--

CREATE TABLE `delivery_charges` (
  `chargeid` int(11) NOT NULL,
  `Charge_Amount` int(50) NOT NULL DEFAULT 0,
  `Delivery_Location` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_charges`
--

INSERT INTO `delivery_charges` (`chargeid`, `Charge_Amount`, `Delivery_Location`) VALUES
(9, 0, 8),
(10, 0, 9),
(11, 150, 10),
(12, 200, 12),
(13, 150, 14),
(14, 200, 15),
(15, 150, 11),
(16, 200, 13),
(17, 150, 16),
(18, 200, 17);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `Custid` int(11) NOT NULL,
  `TotalPrice` int(11) NOT NULL,
  `InvoiceDate` date NOT NULL,
  `Delivery_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invid`, `orderid`, `bookid`, `Custid`, `TotalPrice`, `InvoiceDate`, `Delivery_Date`) VALUES
(1, 45, 3, 2, 1200, '2022-12-23', '2022-12-25'),
(2, 45, 3, 1, 12300, '2022-12-23', '2022-12-25');

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `orderid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `qty` int(30) NOT NULL,
  `Payment_Method` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `Custid` int(11) NOT NULL,
  `BookType` int(11) NOT NULL,
  `Delivery_on_Location` int(11) NOT NULL,
  `Delivery_Charges` int(11) NOT NULL,
  `Weight_of_Book_in_Kg` int(30) NOT NULL,
  `Charge_on_Weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`orderid`, `bookid`, `qty`, `Payment_Method`, `order_date`, `Custid`, `BookType`, `Delivery_on_Location`, `Delivery_Charges`, `Weight_of_Book_in_Kg`, `Charge_on_Weight`) VALUES
(45, 2, 2, 2, '2022-11-29', 1, 6, 15, 14, 17, 12),
(51, 2, 3, 1, '2022-12-09', 1, 5, 12, 12, 10, 9),
(65, 2, 3, 1, '2022-12-16', 1, 5, 12, 12, 10, 9),
(66, 3, 2, 1, '2022-12-16', 2, 7, 9, 10, 18, 13),
(68, 3, 2, 2, '2022-12-16', 2, 8, 11, 15, 11, 10),
(71, 3, 1, 1, '2022-12-17', 1, 8, 13, 16, 11, 10),
(72, 3, 1, 1, '2022-12-23', 1, 7, 9, 10, 18, 13),
(74, 2, 1, 1, '2022-12-23', 1, 4, 8, 9, 16, 11),
(75, 2, 1, 1, '2022-12-23', 2, 4, 8, 9, 16, 11),
(76, 2, 1, 2, '2022-12-22', 2, 4, 8, 9, 16, 11),
(77, 2, 1, 1, '2022-12-21', 2, 4, 8, 9, 16, 11),
(78, 2, 2, 2, '2022-12-22', 2, 4, 8, 9, 16, 11),
(79, 3, 1, 1, '2022-12-22', 2, 7, 9, 10, 18, 13),
(83, 3, 1, 1, '2022-12-20', 2, 7, 9, 10, 18, 13),
(89, 3, 1, 1, '2022-12-12', 2, 8, 13, 16, 11, 10),
(90, 3, 1, 1, '2022-12-15', 2, 7, 9, 10, 18, 13),
(91, 3, 1, 1, '2022-12-14', 2, 8, 13, 16, 11, 10),
(92, 3, 1, 2, '2022-12-09', 2, 8, 13, 16, 11, 10),
(93, 3, 1, 1, '2022-12-30', 2, 8, 11, 15, 11, 10),
(94, 3, 1, 2, '2022-12-19', 2, 8, 13, 16, 11, 10),
(95, 3, 1, 1, '2022-12-21', 2, 8, 13, 16, 11, 10),
(96, 3, 1, 2, '2022-12-22', 2, 8, 13, 16, 11, 10),
(97, 3, 1, 1, '2022-12-22', 2, 8, 13, 16, 11, 10),
(98, 3, 1, 2, '2022-12-13', 2, 8, 11, 15, 11, 10),
(100, 3, 1, 1, '2022-12-22', 2, 8, 11, 15, 11, 10),
(101, 3, 1, 2, '2022-12-15', 2, 7, 9, 10, 18, 13),
(102, 3, 1, 1, '2022-12-13', 2, 8, 13, 16, 11, 10),
(103, 3, 1, 1, '2022-12-21', 2, 8, 13, 16, 11, 10);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `PaymentId` int(11) NOT NULL,
  `PaymentMethod` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`PaymentId`, `PaymentMethod`) VALUES
(1, 'Credit Card Online'),
(2, 'Cash on Delivery');

-- --------------------------------------------------------

--
-- Table structure for table `winners`
--

CREATE TABLE `winners` (
  `winid` int(11) NOT NULL,
  `compid` int(11) NOT NULL,
  `prizes` int(11) NOT NULL,
  `custid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `winners`
--

INSERT INTO `winners` (`winid`, `compid`, `prizes`, `custid`) VALUES
(1, 1, 10000, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Bookid`),
  ADD KEY `books_ibfk_1` (`cat_id`),
  ADD KEY `DealersDetail` (`DealersDetail`);

--
-- Indexes for table `booktype`
--
ALTER TABLE `booktype`
  ADD PRIMARY KEY (`Typeid`),
  ADD KEY `booksName` (`booksName`);

--
-- Indexes for table `book_weight`
--
ALTER TABLE `book_weight`
  ADD PRIMARY KEY (`weightid`),
  ADD KEY `bookid` (`bookid`),
  ADD KEY `Booktype` (`Booktype`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`Cartid`),
  ADD KEY `fkbookid` (`Bookid`);

--
-- Indexes for table `cash_on_delivery`
--
ALTER TABLE `cash_on_delivery`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `custid` (`custid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Catid`);

--
-- Indexes for table `charge_on_weight`
--
ALTER TABLE `charge_on_weight`
  ADD PRIMARY KEY (`kgid`),
  ADD KEY `Weightid` (`Weightid`);

--
-- Indexes for table `competition`
--
ALTER TABLE `competition`
  ADD PRIMARY KEY (`compid`);

--
-- Indexes for table `credit_card`
--
ALTER TABLE `credit_card`
  ADD PRIMARY KEY (`cardid`),
  ADD KEY `custid` (`custid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custid`);

--
-- Indexes for table `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`dealerid`);

--
-- Indexes for table `deliverylocation`
--
ALTER TABLE `deliverylocation`
  ADD PRIMARY KEY (`Locationid`),
  ADD KEY `Loc_on_booktype` (`Loc_on_booktype`);

--
-- Indexes for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  ADD PRIMARY KEY (`chargeid`),
  ADD KEY `Delivery_Location` (`Delivery_Location`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invid`),
  ADD KEY `Custid` (`Custid`),
  ADD KEY `bookid` (`bookid`),
  ADD KEY `orderid` (`orderid`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `BookType` (`BookType`),
  ADD KEY `Delivery_on_Location` (`Delivery_on_Location`),
  ADD KEY `Delivery_Charges` (`Delivery_Charges`),
  ADD KEY `bookid` (`bookid`),
  ADD KEY `Custid` (`Custid`),
  ADD KEY `Payment_Method` (`Payment_Method`),
  ADD KEY `Charge_on_Weight` (`Charge_on_Weight`),
  ADD KEY `order_table_ibfk_10` (`Weight_of_Book_in_Kg`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`PaymentId`);

--
-- Indexes for table `winners`
--
ALTER TABLE `winners`
  ADD PRIMARY KEY (`winid`),
  ADD KEY `custid` (`custid`),
  ADD KEY `compid` (`compid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `Bookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `booktype`
--
ALTER TABLE `booktype`
  MODIFY `Typeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `book_weight`
--
ALTER TABLE `book_weight`
  MODIFY `weightid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `Cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cash_on_delivery`
--
ALTER TABLE `cash_on_delivery`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `charge_on_weight`
--
ALTER TABLE `charge_on_weight`
  MODIFY `kgid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `competition`
--
ALTER TABLE `competition`
  MODIFY `compid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `credit_card`
--
ALTER TABLE `credit_card`
  MODIFY `cardid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `custid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `dealerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deliverylocation`
--
ALTER TABLE `deliverylocation`
  MODIFY `Locationid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  MODIFY `chargeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_table`
--
ALTER TABLE `order_table`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `PaymentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `winners`
--
ALTER TABLE `winners`
  MODIFY `winid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`Catid`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`DealersDetail`) REFERENCES `dealers` (`dealerid`);

--
-- Constraints for table `booktype`
--
ALTER TABLE `booktype`
  ADD CONSTRAINT `booktype_ibfk_1` FOREIGN KEY (`booksName`) REFERENCES `books` (`Bookid`);

--
-- Constraints for table `book_weight`
--
ALTER TABLE `book_weight`
  ADD CONSTRAINT `book_weight_ibfk_1` FOREIGN KEY (`bookid`) REFERENCES `books` (`Bookid`),
  ADD CONSTRAINT `book_weight_ibfk_2` FOREIGN KEY (`Booktype`) REFERENCES `booktype` (`Typeid`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `fkbookid` FOREIGN KEY (`Bookid`) REFERENCES `books` (`Bookid`);

--
-- Constraints for table `cash_on_delivery`
--
ALTER TABLE `cash_on_delivery`
  ADD CONSTRAINT `cash_on_delivery_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customer` (`custid`);

--
-- Constraints for table `charge_on_weight`
--
ALTER TABLE `charge_on_weight`
  ADD CONSTRAINT `charge_on_weight_ibfk_1` FOREIGN KEY (`Weightid`) REFERENCES `book_weight` (`weightid`);

--
-- Constraints for table `credit_card`
--
ALTER TABLE `credit_card`
  ADD CONSTRAINT `credit_card_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customer` (`custid`);

--
-- Constraints for table `deliverylocation`
--
ALTER TABLE `deliverylocation`
  ADD CONSTRAINT `deliverylocation_ibfk_1` FOREIGN KEY (`Loc_on_booktype`) REFERENCES `booktype` (`Typeid`);

--
-- Constraints for table `delivery_charges`
--
ALTER TABLE `delivery_charges`
  ADD CONSTRAINT `delivery_charges_ibfk_1` FOREIGN KEY (`Delivery_Location`) REFERENCES `deliverylocation` (`Locationid`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`Custid`) REFERENCES `customer` (`custid`),
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`bookid`) REFERENCES `books` (`Bookid`),
  ADD CONSTRAINT `invoice_ibfk_3` FOREIGN KEY (`orderid`) REFERENCES `order_table` (`orderid`);

--
-- Constraints for table `order_table`
--
ALTER TABLE `order_table`
  ADD CONSTRAINT `order_table_ibfk_1` FOREIGN KEY (`BookType`) REFERENCES `booktype` (`Typeid`),
  ADD CONSTRAINT `order_table_ibfk_10` FOREIGN KEY (`Weight_of_Book_in_Kg`) REFERENCES `book_weight` (`weightid`),
  ADD CONSTRAINT `order_table_ibfk_12` FOREIGN KEY (`Payment_Method`) REFERENCES `payment_method` (`PaymentId`),
  ADD CONSTRAINT `order_table_ibfk_13` FOREIGN KEY (`Charge_on_Weight`) REFERENCES `charge_on_weight` (`kgid`),
  ADD CONSTRAINT `order_table_ibfk_2` FOREIGN KEY (`Delivery_on_Location`) REFERENCES `deliverylocation` (`Locationid`),
  ADD CONSTRAINT `order_table_ibfk_3` FOREIGN KEY (`Delivery_Charges`) REFERENCES `delivery_charges` (`chargeid`),
  ADD CONSTRAINT `order_table_ibfk_6` FOREIGN KEY (`bookid`) REFERENCES `books` (`Bookid`),
  ADD CONSTRAINT `order_table_ibfk_7` FOREIGN KEY (`Custid`) REFERENCES `customer` (`custid`);

--
-- Constraints for table `winners`
--
ALTER TABLE `winners`
  ADD CONSTRAINT `winners_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customer` (`custid`),
  ADD CONSTRAINT `winners_ibfk_2` FOREIGN KEY (`compid`) REFERENCES `competition` (`compid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
