-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2015 at 07:05 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hhgroup`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `HHGroup_GetCMSData` (`CountryID` INT, `PageName` VARCHAR(50))  BEGIN
	SELECT 	CMSContentID AS CMSContentID, 
			CMSTypeID AS CMSType, 
            CountryID AS CountryID,
            ViewID AS ViewID,
            CMSKey AS CMSKey,
            CMSValue AS CMSValue,
            Src AS CMSSrc,
            Href AS CMSHref
    FROM CMSContent CMS
    WHERE CMS.CountryID = CountryID;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `carouselcms`
--

CREATE TABLE `carouselcms` (
  `ID` int(11) NOT NULL,
  `CarouselID` int(11) NOT NULL,
  `CMSContentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carouselmaster`
--

CREATE TABLE `carouselmaster` (
  `CarouselID` int(11) NOT NULL,
  `CarouselName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Rank` int(11) NOT NULL,
  `Active` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `carouselmaster`
--

INSERT INTO `carouselmaster` (`CarouselID`, `CarouselName`, `Rank`, `Active`) VALUES
(1, 'CAROUSEL_1', 1, b'1'),
(2, 'CAROUSEL_2', 2, b'1'),
(3, 'CAROUSEL_3', 3, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `cmscontent`
--

CREATE TABLE `cmscontent` (
  `CMSContentID` int(11) NOT NULL,
  `CMSTypeID` int(11) NOT NULL,
  `CountryID` int(11) NOT NULL,
  `ViewID` int(11) DEFAULT NULL,
  `CMSKey` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CMSValue` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Src` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Href` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cmscontent`
--

INSERT INTO `cmscontent` (`CMSContentID`, `CMSTypeID`, `CountryID`, `ViewID`, `CMSKey`, `CMSValue`, `Src`, `Href`) VALUES
(1, 1, 1, 1, 'Header_Home', 'Home', NULL, NULL),
(2, 1, 1, 1, 'Header_Products', 'Products', NULL, NULL),
(3, 1, 1, 1, 'Header_About', 'About', NULL, NULL),
(4, 1, 1, 1, 'Header_ContactUs', 'Contact Us', NULL, NULL),
(5, 1, 2, 1, 'Header_Home', 'HomeCN', NULL, NULL),
(6, 1, 2, 1, 'Header_Products', 'ProductsCN', NULL, NULL),
(7, 1, 2, 1, 'Header_About', 'AboutCN', NULL, NULL),
(8, 1, 2, 1, 'Header_ContactUs', 'Contact UsCN', NULL, NULL),
(9, 1, 3, 1, 'Header_Home', 'HomeUK', NULL, NULL),
(10, 1, 3, 1, 'Header_Products', 'ProductsUK', NULL, NULL),
(11, 1, 3, 1, 'Header_About', 'AboutUK', NULL, NULL),
(12, 1, 3, 1, 'Header_ContactUs', 'Contact UsUK', NULL, NULL),
(13, 2, 1, 2, 'Carousel_Msg_1', '1 One more for good measure. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.', NULL, NULL),
(14, 3, 1, 2, 'Carousel_Img_1', 'Img_1', NULL, NULL),
(15, 2, 1, 2, 'Carousel_Msg_2', '2 One mroe for good measure. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.', NULL, NULL),
(16, 3, 1, 2, 'Carousel_Img_2', 'Img_2', NULL, NULL),
(17, 2, 1, 2, 'Carousel_Msg_3', '3 One more for good measure. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.', NULL, NULL),
(18, 3, 1, 2, 'Carousel_Img_3', 'Img_3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cmstype`
--

CREATE TABLE `cmstype` (
  `CMSTypeID` int(11) NOT NULL,
  `CMSType` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cmstype`
--

INSERT INTO `cmstype` (`CMSTypeID`, `CMSType`) VALUES
(1, 'LABEL'),
(2, 'MESSAGE'),
(3, 'IMAGE'),
(4, 'LINK');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `ContactID` int(11) NOT NULL,
  `CompanyName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ContactName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ContactAddress` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Telephone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Fax` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Web` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Latitude` int(11) NOT NULL,
  `Longitude` int(11) NOT NULL,
  `MapURL` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `CountryID` int(11) NOT NULL,
  `CountryName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CountryCode` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `LanguageName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LanguageCode` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`CountryID`, `CountryName`, `CountryCode`, `LanguageName`, `LanguageCode`) VALUES
(1, 'India', 'in', 'English', 'en'),
(2, 'China', 'ch', 'Chinese', 'cn'),
(3, 'United Kingdom', 'uk', 'English', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `menuitem`
--

CREATE TABLE `menuitem` (
  `MenuID` int(11) NOT NULL,
  `MenuName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Rank` int(11) NOT NULL,
  `IsActive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menuitemcms`
--

CREATE TABLE `menuitemcms` (
  `ID` int(11) NOT NULL,
  `MenuID` int(11) NOT NULL,
  `CMSContentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productbrochure`
--

CREATE TABLE `productbrochure` (
  `BrochureID` int(11) NOT NULL,
  `BrochureName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BrochureURL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productbrochuredownoad`
--

CREATE TABLE `productbrochuredownoad` (
  `ID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `CustomerEmail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CustomerFirstName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CustomerLastName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DownloadedDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productcategory`
--

CREATE TABLE `productcategory` (
  `CategoryID` int(11) NOT NULL,
  `CategoryCode` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CategoryName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productcms`
--

CREATE TABLE `productcms` (
  `ID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `CMSContentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `BrochureID` int(11) NOT NULL,
  `CMSContentID` int(11) NOT NULL,
  `ProductCode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ProductName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `FootNote` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Rank` int(11) NOT NULL,
  `Active` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productsusage`
--

CREATE TABLE `productsusage` (
  `ID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `UsageID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usage`
--

CREATE TABLE `usage` (
  `UsageID` int(11) NOT NULL,
  `UsageName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UsageDescription` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `viewmaster`
--

CREATE TABLE `viewmaster` (
  `ViewID` int(11) NOT NULL,
  `ViewName` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `viewmaster`
--

INSERT INTO `viewmaster` (`ViewID`, `ViewName`) VALUES
(1, 'HEADER'),
(2, 'CAROUSEL'),
(3, 'FOOTER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carouselcms`
--
ALTER TABLE `carouselcms`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `carouselmaster`
--
ALTER TABLE `carouselmaster`
  ADD PRIMARY KEY (`CarouselID`);

--
-- Indexes for table `cmscontent`
--
ALTER TABLE `cmscontent`
  ADD PRIMARY KEY (`CMSContentID`);

--
-- Indexes for table `cmstype`
--
ALTER TABLE `cmstype`
  ADD PRIMARY KEY (`CMSTypeID`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`ContactID`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`CountryID`);

--
-- Indexes for table `menuitem`
--
ALTER TABLE `menuitem`
  ADD PRIMARY KEY (`MenuID`);

--
-- Indexes for table `menuitemcms`
--
ALTER TABLE `menuitemcms`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `productbrochure`
--
ALTER TABLE `productbrochure`
  ADD PRIMARY KEY (`BrochureID`);

--
-- Indexes for table `productbrochuredownoad`
--
ALTER TABLE `productbrochuredownoad`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `productcategory`
--
ALTER TABLE `productcategory`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `productcms`
--
ALTER TABLE `productcms`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `productsusage`
--
ALTER TABLE `productsusage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `usage`
--
ALTER TABLE `usage`
  ADD PRIMARY KEY (`UsageID`);

--
-- Indexes for table `viewmaster`
--
ALTER TABLE `viewmaster`
  ADD PRIMARY KEY (`ViewID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carouselcms`
--
ALTER TABLE `carouselcms`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `carouselmaster`
--
ALTER TABLE `carouselmaster`
  MODIFY `CarouselID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cmscontent`
--
ALTER TABLE `cmscontent`
  MODIFY `CMSContentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `cmstype`
--
ALTER TABLE `cmstype`
  MODIFY `CMSTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `ContactID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `CountryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `menuitem`
--
ALTER TABLE `menuitem`
  MODIFY `MenuID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menuitemcms`
--
ALTER TABLE `menuitemcms`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productbrochure`
--
ALTER TABLE `productbrochure`
  MODIFY `BrochureID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productbrochuredownoad`
--
ALTER TABLE `productbrochuredownoad`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productcategory`
--
ALTER TABLE `productcategory`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productcms`
--
ALTER TABLE `productcms`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productsusage`
--
ALTER TABLE `productsusage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usage`
--
ALTER TABLE `usage`
  MODIFY `UsageID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `viewmaster`
--
ALTER TABLE `viewmaster`
  MODIFY `ViewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
