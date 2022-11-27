-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27, 2022 lúc 10:36 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop_project`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 1, 'aaaa', 'bbbbb', 'bhhh', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 150, 2331, ''),
(2, 1, 'aaaa', 'bbbbb', 'bhhh', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 150, 2331, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'O8quGJXCGEYxv4g4RYE1yzTea0JQdm2AKrBdfREB6to4wn5CX5DEMduKNkp9Q6Y5Q4EaO61KCpPvK38SP15W2gK2MQOzCGNgPActMGNbQWJXzY3dhJEQyFyQprwuyiode981LPzWLCbH17Ip5oOHNBOyKmqCxXsj7i0uAYPeSjm8OG3NhcsFhlZnMIsEGvzOx3zv9nzMdyaaZ9UO5uPwP4qISqKXcvQbbaL4z9L6D7w5rxfza8PQU6DWebXFP6B6', 1, '2022-11-12 14:30:13', '2022-11-12 14:30:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 1, '::1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `session_id`, `ip`, `date_added`, `date_modified`) VALUES
(1, 1, '7997af7591b9697a67cc520e04', '::1', '2022-11-22 16:41:48', '2022-11-22 16:41:48'),
(2, 1, '5277dcc3af0cc48b3311758cd4', '::1', '2022-11-26 15:44:30', '2022-11-26 15:44:30'),
(3, 1, 'af2e01ab9bd72049868c5c5503', '::1', '2022-11-26 15:47:31', '2022-11-26 15:47:31'),
(4, 1, 'f9379ee385cc20f0eb9193469c', '::1', '2022-11-26 15:47:55', '2022-11-26 15:47:55'),
(5, 1, '5b119ae3e3dab9af0e4b04ae52', '::1', '2022-11-26 15:48:03', '2022-11-26 15:48:03'),
(6, 1, '431abf8fbdae688cd8c09e5324', '::1', '2022-11-26 15:48:17', '2022-11-26 15:48:17'),
(7, 1, '1395304a8693c51efdc66095f6', '::1', '2022-11-26 15:48:24', '2022-11-26 15:48:24'),
(8, 1, '542e0c7366edc071e15e024d43', '::1', '2022-11-27 09:11:28', '2022-11-27 09:11:28'),
(9, 1, '85ca7398a4552c485f8f8797a0', '::1', '2022-11-27 10:34:24', '2022-11-27 10:34:24'),
(10, 1, '0501a0196a87fcc917d4c1dcea', '::1', '2022-11-27 10:34:30', '2022-11-27 10:34:30'),
(11, 1, '6e3ddb5d02b77c739801cfccf1', '::1', '2022-11-27 15:03:51', '2022-11-27 15:03:51'),
(12, 1, '9d9c451cf98c4034bb38607c0e', '::1', '2022-11-27 15:03:56', '2022-11-27 15:03:56'),
(13, 1, '2134626eef9f9fd3594920ed66', '::1', '2022-11-27 16:18:22', '2022-11-27 16:18:22'),
(14, 1, 'c0fd9f0f0269c621a15337365a', '::1', '2022-11-27 16:18:27', '2022-11-27 16:18:27'),
(15, 1, 'cf25a8286925d6c63cf8369b9a', '::1', '2022-11-27 16:21:33', '2022-11-27 16:21:33'),
(16, 1, '96e4f433ae77d77c7606c1b76b', '::1', '2022-11-27 16:21:38', '2022-11-27 16:21:38'),
(17, 1, '3bd1532f9d5d642ccec947a693', '::1', '2022-11-27 16:22:21', '2022-11-27 16:22:21'),
(18, 1, '510159a8ab86f67b90812b54b9', '::1', '2022-11-27 16:22:26', '2022-11-27 16:22:26'),
(19, 1, '122b415b350dd6871cd9ead23e', '::1', '2022-11-27 16:22:55', '2022-11-27 16:22:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_as_customer_query`
--

CREATE TABLE `oc_as_customer_query` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `text` char(128) NOT NULL,
  `choose` char(128) NOT NULL,
  `type` char(128) NOT NULL,
  `type_id` char(128) NOT NULL,
  `count` int(11) NOT NULL,
  `date_modify` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_as_customer_query`
--

INSERT INTO `oc_as_customer_query` (`id`, `customer_id`, `text`, `choose`, `type`, `type_id`, `count`, `date_modify`) VALUES
(1, 1, 'b', 'MacBook Pro', 'product', '45', 1, '2022-11-26 23:11:53'),
(2, 1, 'b', 'Samsung Galaxy Tab 10.1', 'product', '49', 1, '2022-11-26 23:12:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_as_query`
--

CREATE TABLE `oc_as_query` (
  `query_id` int(11) NOT NULL,
  `text` char(128) NOT NULL,
  `redirect` char(128) NOT NULL,
  `count` int(11) NOT NULL,
  `date_modify` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_as_query`
--

INSERT INTO `oc_as_query` (`query_id`, `text`, `redirect`, `count`, `date_modify`) VALUES
(1, 'b', '', 2, '2022-11-26 23:12:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_as_query_results`
--

CREATE TABLE `oc_as_query_results` (
  `query_results_id` int(11) NOT NULL,
  `query_id` int(11) NOT NULL,
  `type` char(128) NOT NULL,
  `type_id` char(128) NOT NULL,
  `count` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date_modify` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_as_query_results`
--

INSERT INTO `oc_as_query_results` (`query_results_id`, `query_id`, `type`, `type_id`, `count`, `status`, `date_modify`) VALUES
(1, 1, 'product', '45', 1, 1, '2022-11-26 23:11:53'),
(2, 1, 'product', '49', 1, 1, '2022-11-26 23:12:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_as_statistic`
--

CREATE TABLE `oc_as_statistic` (
  `statistic_id` int(11) NOT NULL,
  `search` char(128) NOT NULL,
  `select` char(128) NOT NULL,
  `type` char(128) NOT NULL,
  `type_id` char(128) NOT NULL,
  `count` int(11) NOT NULL,
  `date_modify` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_as_statistic`
--

INSERT INTO `oc_as_statistic` (`statistic_id`, `search`, `select`, `type`, `type_id`, `count`, `date_modify`) VALUES
(1, 'b', 'MacBook Pro', 'product', '45', 1, '2022-11-26 23:11:53'),
(2, 'b', 'Samsung Galaxy Tab 10.1', 'product', '49', 1, '2022-11-26 23:12:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(79, 7, 1, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(87, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(94, 8, 1, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, 1, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, 1, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, 1, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, 1, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, 1, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, 1, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, 1, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, 1, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(80, 7, 1, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(97, 8, 1, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, 1, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0),
(99, 7, 2, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(100, 6, 2, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(101, 8, 2, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(102, 8, 2, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(103, 8, 2, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(104, 8, 2, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(105, 8, 2, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(106, 8, 2, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(107, 8, 2, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(108, 8, 2, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(109, 8, 2, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(110, 7, 2, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(111, 8, 2, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(112, 8, 2, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(21, 0, 0, '78cd1eb2483d81a4a30b2bf7e0', 47, 0, '{\"225\":\"2011-04-22\"}', 1, '2022-11-27 16:24:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `nmm_image` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `nmm_promo_status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `nmm_image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `nmm_promo_status`, `date_added`, `date_modified`) VALUES
(25, '', '', 0, 1, 1, 3, 1, 0, '2009-01-31 01:04:25', '2011-05-30 12:14:55'),
(27, '', '', 20, 0, 0, 2, 1, 0, '2009-01-31 01:55:34', '2010-08-22 06:32:15'),
(20, 'catalog/demo/compaq_presario.jpg', '', 0, 1, 1, 1, 1, 0, '2009-01-05 21:49:43', '2011-07-16 02:14:42'),
(24, '', '', 0, 1, 1, 5, 1, 0, '2009-01-20 02:36:26', '2011-05-30 12:15:18'),
(18, 'catalog/demo/hp_2.jpg', '', 0, 1, 0, 2, 1, 0, '2009-01-05 21:49:15', '2011-05-30 12:13:55'),
(17, '', '', 0, 1, 1, 4, 1, 0, '2009-01-03 21:08:57', '2011-05-30 12:15:11'),
(28, '', '', 25, 0, 0, 1, 1, 0, '2009-02-02 13:11:12', '2010-08-22 06:32:46'),
(26, '', '', 20, 0, 0, 1, 1, 0, '2009-01-31 01:55:14', '2010-08-22 06:31:45'),
(29, '', '', 25, 0, 0, 1, 1, 0, '2009-02-02 13:11:37', '2010-08-22 06:32:39'),
(30, '', '', 25, 0, 0, 1, 1, 0, '2009-02-02 13:11:59', '2010-08-22 06:33:00'),
(31, '', '', 25, 0, 0, 1, 1, 0, '2009-02-03 14:17:24', '2010-08-22 06:33:06'),
(32, '', '', 25, 0, 0, 1, 1, 0, '2009-02-03 14:17:34', '2010-08-22 06:33:12'),
(33, '', '', 0, 1, 1, 6, 1, 0, '2009-02-03 14:17:55', '2011-05-30 12:15:25'),
(34, 'catalog/demo/ipod_touch_4.jpg', '', 0, 1, 4, 7, 1, 0, '2009-02-03 14:18:11', '2011-05-30 12:15:31'),
(35, '', '', 28, 0, 0, 0, 1, 0, '2010-09-17 10:06:48', '2010-09-18 14:02:42'),
(36, '', '', 28, 0, 0, 0, 1, 0, '2010-09-17 10:07:13', '2010-09-18 14:02:55'),
(37, '', '', 34, 0, 0, 0, 1, 0, '2010-09-18 14:03:39', '2011-04-22 01:55:08'),
(38, '', '', 34, 0, 0, 0, 1, 0, '2010-09-18 14:03:51', '2010-09-18 14:03:51'),
(39, '', '', 34, 0, 0, 0, 1, 0, '2010-09-18 14:04:17', '2011-04-22 01:55:20'),
(40, '', '', 34, 0, 0, 0, 1, 0, '2010-09-18 14:05:36', '2010-09-18 14:05:36'),
(41, '', '', 34, 0, 0, 0, 1, 0, '2010-09-18 14:05:49', '2011-04-22 01:55:30'),
(42, '', '', 34, 0, 0, 0, 1, 0, '2010-09-18 14:06:34', '2010-11-07 20:31:04'),
(43, '', '', 34, 0, 0, 0, 1, 0, '2010-09-18 14:06:49', '2011-04-22 01:55:40'),
(44, '', '', 34, 0, 0, 0, 1, 0, '2010-09-21 15:39:21', '2010-11-07 20:30:55'),
(45, '', '', 18, 0, 0, 0, 1, 0, '2010-09-24 18:29:16', '2011-04-26 08:52:11'),
(46, '', '', 18, 0, 0, 0, 1, 0, '2010-09-24 18:29:31', '2011-04-26 08:52:23'),
(47, '', '', 34, 0, 0, 0, 1, 0, '2010-11-07 11:13:16', '2010-11-07 11:13:16'),
(48, '', '', 34, 0, 0, 0, 1, 0, '2010-11-07 11:13:33', '2010-11-07 11:13:33'),
(49, '', '', 34, 0, 0, 0, 1, 0, '2010-11-07 11:14:04', '2010-11-07 11:14:04'),
(50, '', '', 34, 0, 0, 0, 1, 0, '2010-11-07 11:14:23', '2011-04-22 01:16:01'),
(51, '', '', 34, 0, 0, 0, 1, 0, '2010-11-07 11:14:38', '2011-04-22 01:16:13'),
(52, '', '', 34, 0, 0, 0, 1, 0, '2010-11-07 11:16:09', '2011-04-22 01:54:57'),
(53, '', '', 34, 0, 0, 0, 1, 0, '2010-11-07 11:28:53', '2011-04-22 01:14:36'),
(54, '', '', 34, 0, 0, 0, 1, 0, '2010-11-07 11:29:16', '2011-04-22 01:16:50'),
(55, '', '', 34, 0, 0, 0, 1, 0, '2010-11-08 10:31:32', '2010-11-08 10:31:32'),
(56, '', '', 34, 0, 0, 0, 1, 0, '2010-11-08 10:31:50', '2011-04-22 01:16:37'),
(57, '', '', 0, 1, 1, 3, 1, 0, '2011-04-26 08:53:16', '2011-05-30 12:15:05'),
(58, '', '', 52, 0, 0, 0, 1, 0, '2011-05-08 13:44:16', '2011-05-08 13:44:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `nmm_alt` varchar(255) NOT NULL,
  `nmm_title` varchar(255) NOT NULL,
  `nmm_text` text NOT NULL,
  `nmm_link` varchar(255) NOT NULL,
  `nmm_anchor` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `nmm_alt`, `nmm_title`, `nmm_text`, `nmm_link`, `nmm_anchor`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(28, 1, 'Monitors', '', '', '', '', '', '', 'Monitors', '', ''),
(33, 1, 'Cameras', '', '', '', '', '', '', 'Cameras', '', ''),
(32, 1, 'Web Cameras', '', '', '', '', '', '', 'Web Cameras', '', ''),
(31, 1, 'Scanners', '', '', '', '', '', '', 'Scanners', '', ''),
(30, 1, 'Printers', '', '', '', '', '', '', 'Printers', '', ''),
(29, 1, 'Mice and Trackballs', '', '', '', '', '', '', 'Mice and Trackballs', '', ''),
(27, 1, 'Mac', '', '', '', '', '', '', 'Mac', '', ''),
(26, 1, 'PC', '', '', '', '', '', '', 'PC', '', ''),
(17, 1, 'Software', '', '', '', '', '', '', 'Software', '', ''),
(25, 1, 'Components', '', '', '', '', '', '', 'Components', '', ''),
(24, 1, 'Phones &amp; PDAs', '', '', '', '', '', '', 'Phones &amp; PDAs', '', ''),
(20, 1, 'Desktops', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', '', '', '', '', '', 'Desktops', 'Example of category description', ''),
(35, 1, 'test 1', '', '', '', '', '', '', 'test 1', '', ''),
(36, 1, 'test 2', '', '', '', '', '', '', 'test 2', '', ''),
(37, 1, 'test 5', '', '', '', '', '', '', 'test 5', '', ''),
(38, 1, 'test 4', '', '', '', '', '', '', 'test 4', '', ''),
(39, 1, 'test 6', '', '', '', '', '', '', 'test 6', '', ''),
(40, 1, 'test 7', '', '', '', '', '', '', 'test 7', '', ''),
(41, 1, 'test 8', '', '', '', '', '', '', 'test 8', '', ''),
(42, 1, 'test 9', '', '', '', '', '', '', 'test 9', '', ''),
(43, 1, 'test 11', '', '', '', '', '', '', 'test 11', '', ''),
(34, 1, 'MP3 Players', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', '', '', '', '', '', 'MP3 Players', '', ''),
(18, 1, 'Laptops &amp; Notebooks', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', '', '', '', '', '', 'Laptops &amp; Notebooks', '', ''),
(44, 1, 'test 12', '', '', '', '', '', '', 'test 12', '', ''),
(45, 1, 'Windows', '', '', '', '', '', '', 'Windows', '', ''),
(46, 1, 'Macs', '', '', '', '', '', '', 'Macs', '', ''),
(47, 1, 'test 15', '', '', '', '', '', '', 'test 15', '', ''),
(48, 1, 'test 16', '', '', '', '', '', '', 'test 16', '', ''),
(49, 1, 'test 17', '', '', '', '', '', '', 'test 17', '', ''),
(50, 1, 'test 18', '', '', '', '', '', '', 'test 18', '', ''),
(51, 1, 'test 19', '', '', '', '', '', '', 'test 19', '', ''),
(52, 1, 'test 20', '', '', '', '', '', '', 'test 20', '', ''),
(53, 1, 'test 21', '', '', '', '', '', '', 'test 21', '', ''),
(54, 1, 'test 22', '', '', '', '', '', '', 'test 22', '', ''),
(55, 1, 'test 23', '', '', '', '', '', '', 'test 23', '', ''),
(56, 1, 'test 24', '', '', '', '', '', '', 'test 24', '', ''),
(57, 1, 'Tablets', '', '', '', '', '', '', 'Tablets', '', ''),
(58, 1, 'test 25', '', '', '', '', '', '', 'test 25', '', ''),
(28, 2, 'Monitors', '', '', '', '', '', '', 'Monitors', '', ''),
(33, 2, 'Cameras', '', '', '', '', '', '', 'Cameras', '', ''),
(32, 2, 'Web Cameras', '', '', '', '', '', '', 'Web Cameras', '', ''),
(31, 2, 'Scanners', '', '', '', '', '', '', 'Scanners', '', ''),
(30, 2, 'Printers', '', '', '', '', '', '', 'Printers', '', ''),
(29, 2, 'Mice and Trackballs', '', '', '', '', '', '', 'Mice and Trackballs', '', ''),
(27, 2, 'Mac', '', '', '', '', '', '', 'Mac', '', ''),
(26, 2, 'PC', '', '', '', '', '', '', 'PC', '', ''),
(17, 2, 'Software', '', '', '', '', '', '', 'Software', '', ''),
(25, 2, 'Components', '', '', '', '', '', '', 'Components', '', ''),
(24, 2, 'Phones &amp; PDAs', '', '', '', '', '', '', 'Phones &amp; PDAs', '', ''),
(20, 2, 'Desktops', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', '', '', '', '', '', 'Desktops', 'Example of category description', ''),
(35, 2, 'test 1', '', '', '', '', '', '', 'test 1', '', ''),
(36, 2, 'test 2', '', '', '', '', '', '', 'test 2', '', ''),
(37, 2, 'test 5', '', '', '', '', '', '', 'test 5', '', ''),
(38, 2, 'test 4', '', '', '', '', '', '', 'test 4', '', ''),
(39, 2, 'test 6', '', '', '', '', '', '', 'test 6', '', ''),
(40, 2, 'test 7', '', '', '', '', '', '', 'test 7', '', ''),
(41, 2, 'test 8', '', '', '', '', '', '', 'test 8', '', ''),
(42, 2, 'test 9', '', '', '', '', '', '', 'test 9', '', ''),
(43, 2, 'test 11', '', '', '', '', '', '', 'test 11', '', ''),
(34, 2, 'MP3 Players', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', '', '', '', '', '', 'MP3 Players', '', ''),
(18, 2, 'Laptops &amp; Notebooks', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', '', '', '', '', '', 'Laptops &amp; Notebooks', '', ''),
(44, 2, 'test 12', '', '', '', '', '', '', 'test 12', '', ''),
(45, 2, 'Windows', '', '', '', '', '', '', 'Windows', '', ''),
(46, 2, 'Macs', '', '', '', '', '', '', 'Macs', '', ''),
(47, 2, 'test 15', '', '', '', '', '', '', 'test 15', '', ''),
(48, 2, 'test 16', '', '', '', '', '', '', 'test 16', '', ''),
(49, 2, 'test 17', '', '', '', '', '', '', 'test 17', '', ''),
(50, 2, 'test 18', '', '', '', '', '', '', 'test 18', '', ''),
(51, 2, 'test 19', '', '', '', '', '', '', 'test 19', '', ''),
(52, 2, 'test 20', '', '', '', '', '', '', 'test 20', '', ''),
(53, 2, 'test 21', '', '', '', '', '', '', 'test 21', '', ''),
(54, 2, 'test 22', '', '', '', '', '', '', 'test 22', '', ''),
(55, 2, 'test 23', '', '', '', '', '', '', 'test 23', '', ''),
(56, 2, 'test 24', '', '', '', '', '', '', 'test 24', '', ''),
(57, 2, 'Tablets', '', '', '', '', '', '', 'Tablets', '', ''),
(58, 2, 'test 25', '', '', '', '', '', '', 'test 25', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(28, 25, 0),
(28, 28, 1),
(35, 25, 0),
(35, 28, 1),
(35, 35, 2),
(36, 25, 0),
(36, 28, 1),
(36, 36, 2),
(29, 25, 0),
(29, 29, 1),
(30, 25, 0),
(30, 30, 1),
(31, 25, 0),
(31, 31, 1),
(32, 25, 0),
(32, 32, 1),
(20, 20, 0),
(27, 20, 0),
(27, 27, 1),
(26, 20, 0),
(26, 26, 1),
(24, 24, 0),
(18, 18, 0),
(45, 18, 0),
(45, 45, 1),
(46, 18, 0),
(46, 46, 1),
(17, 17, 0),
(33, 33, 0),
(34, 34, 0),
(37, 34, 0),
(37, 37, 1),
(38, 34, 0),
(38, 38, 1),
(39, 34, 0),
(39, 39, 1),
(40, 34, 0),
(40, 40, 1),
(41, 34, 0),
(41, 41, 1),
(42, 34, 0),
(42, 42, 1),
(43, 34, 0),
(43, 43, 1),
(44, 34, 0),
(44, 44, 1),
(47, 34, 0),
(47, 47, 1),
(48, 34, 0),
(48, 48, 1),
(49, 34, 0),
(49, 49, 1),
(50, 34, 0),
(50, 50, 1),
(51, 34, 0),
(51, 51, 1),
(52, 34, 0),
(52, 52, 1),
(58, 34, 0),
(58, 52, 1),
(58, 58, 2),
(53, 34, 0),
(53, 53, 1),
(54, 34, 0),
(54, 54, 1),
(55, 34, 0),
(55, 55, 1),
(56, 34, 0),
(56, 56, 1),
(57, 57, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(17, 0),
(18, 0),
(20, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.61250001, 1, '2014-09-25 14:40:00'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2022-11-27 11:28:13'),
(3, 'Euro', 'EUR', '', '€', '2', 0.78460002, 1, '2014-09-25 14:40:00'),
(4, 'VNĐ', 'VND', '', 'đ', '', 1.00000000, 1, '2022-11-27 16:26:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text DEFAULT NULL,
  `wishlist` text DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `oauth_provider` enum('','facebook','google','twitter') DEFAULT NULL,
  `oauth_uid` varchar(128) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `locale` varchar(10) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `safe`, `token`, `code`, `date_added`, `oauth_provider`, `oauth_uid`, `gender`, `locale`, `picture`, `link`, `modified`) VALUES
(1, 1, 0, 2, 'viet', 'kd', 'kviet91.cdp@gmail.com', '', '', '', '', NULL, NULL, 0, 0, '', '::1', 1, 0, '', '', '2022-11-26 15:37:47', 'google', '106408266904945107476', '', 'vi', '', '', '2022-11-26 15:37:47'),
(2, 1, 0, 2, '', '', '', '', '', 'eb149c6c79b77cf6a0d4ae75c9455171bfccb9d3', 'AguxeUJl7', NULL, NULL, 0, 0, '', '::1', 1, 0, '', '', '2022-11-26 09:46:41', NULL, '', '', '', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT 0.00,
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_authentication`
--

CREATE TABLE `oc_customer_authentication` (
  `customer_authentication_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `provider` varchar(55) NOT NULL,
  `identifier` varchar(200) NOT NULL,
  `web_site_url` varchar(255) NOT NULL,
  `profile_url` varchar(255) NOT NULL,
  `photo_url` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `birth_day` varchar(255) NOT NULL,
  `birth_month` varchar(255) NOT NULL,
  `birth_year` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '::1', '2022-11-26 09:19:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_dqc_setting`
--

CREATE TABLE `oc_dqc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_dqc_setting`
--

INSERT INTO `oc_dqc_setting` (`setting_id`, `store_id`, `name`, `date_added`, `date_modified`) VALUES
(1, 0, 'Setting', '2022-11-26 09:55:08', '2022-11-26 09:55:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_dqc_setting_data`
--

CREATE TABLE `oc_dqc_setting_data` (
  `setting_id` int(11) NOT NULL,
  `key` varchar(32) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_dqc_statistic`
--

CREATE TABLE `oc_dqc_statistic` (
  `statistic_id` int(11) NOT NULL,
  `setting_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `data` text NOT NULL,
  `rating` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_d_validator`
--

CREATE TABLE `oc_d_validator` (
  `validator_id` int(11) NOT NULL,
  `codename` varchar(191) NOT NULL,
  `date_show` datetime NOT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturnHistory/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0),
(34, 'advertise_google', 'admin/model/catalog/product/deleteProduct/after', 'extension/advertise/google/deleteProduct', 1, 0),
(35, 'advertise_google', 'admin/model/catalog/product/copyProduct/after', 'extension/advertise/google/copyProduct', 1, 0),
(36, 'advertise_google', 'admin/view/common/column_left/before', 'extension/advertise/google/admin_link', 1, 0),
(37, 'advertise_google', 'admin/model/catalog/product/addProduct/after', 'extension/advertise/google/addProduct', 1, 0),
(38, 'advertise_google', 'catalog/controller/checkout/success/before', 'extension/advertise/google/before_checkout_success', 1, 0),
(39, 'advertise_google', 'catalog/view/common/header/after', 'extension/advertise/google/google_global_site_tag', 1, 0),
(40, 'advertise_google', 'catalog/view/common/success/after', 'extension/advertise/google/google_dynamic_remarketing_purchase', 1, 0),
(41, 'advertise_google', 'catalog/view/product/product/after', 'extension/advertise/google/google_dynamic_remarketing_product', 1, 0),
(42, 'advertise_google', 'catalog/view/product/search/after', 'extension/advertise/google/google_dynamic_remarketing_searchresults', 1, 0),
(43, 'advertise_google', 'catalog/view/product/category/after', 'extension/advertise/google/google_dynamic_remarketing_category', 1, 0),
(44, 'advertise_google', 'catalog/view/common/home/after', 'extension/advertise/google/google_dynamic_remarketing_home', 1, 0),
(45, 'advertise_google', 'catalog/view/checkout/cart/after', 'extension/advertise/google/google_dynamic_remarketing_cart', 1, 0),
(46, 'd_validator', 'admin/view/extension/module/d_quick_order/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(47, 'd_validator', 'admin/view/extension/d_ajax_filter/layout/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(48, 'd_validator', 'admin/view/extension/module/d_quickcheckout/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(49, 'd_validator', 'admin/view/extension/module/d_blog_module/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(50, 'd_validator', 'admin/view/extension/d_blog_module/post_list/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(51, 'd_validator', 'admin/view/extension/d_blog_module/category_list/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(52, 'd_validator', 'admin/view/extension/d_visual_designer/setting/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(53, 'd_validator', 'admin/view/extension/module/d_visual_designer_module/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(54, 'd_validator', 'admin/view/extension/d_visual_designer/designer/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(55, 'd_validator', 'admin/view/extension/d_visual_designer_landing/page_list/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(56, 'd_validator', 'admin/view/extension/module/d_download_manager_pro/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(57, 'd_validator', 'admin/view/extension/module/d_seo_module_manager/setting', 'extension/d_shopunity/d_validator/view', 1, 0),
(58, 'd_validator', 'admin/view/extension/module/d_seo_module_url/setting', 'extension/d_shopunity/d_validator/view', 1, 0),
(59, 'd_validator', 'admin/view/extension/module/d_seo_module_blog/setting', 'extension/d_shopunity/d_validator/view', 1, 0),
(60, 'd_validator', 'admin/view/extension/module/d_seo_module/dashboard', 'extension/d_shopunity/d_validator/view', 1, 0),
(61, 'd_validator', 'admin/view/extension/module/d_social_login/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(62, 'd_validator', 'admin/view/extension/d_export_import/excel/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(63, 'd_validator', 'admin/view/extension/d_gdpr_module/d_gdpr_module', 'extension/d_shopunity/d_validator/view', 1, 0),
(64, 'd_validator', 'admin/view/extension/d_security_module/d_security_module/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(65, 'd_validator', 'admin/view/extension/module/d_social_like/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(66, 'd_validator', 'admin/view/extension/feed/d_google_sitemap/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(67, 'd_validator', 'admin/view/extension/module/d_cart_related/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(68, 'd_validator', 'admin/view/extension/module/d_gift_with_purchase/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(69, 'd_validator', 'admin/view/extension/shipping/d_multiflat/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(70, 'd_validator', 'admin/view/extension/module/d_image_product_tag/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(71, 'd_validator', 'admin/view/extension/module/d_shipping_based_payment/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(72, 'd_validator', 'admin/view/extension/module/d_payment_by_customer_group/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(73, 'd_validator', 'admin/view/extension/module/d_shipping_by_customer_group/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(74, 'd_validator', 'admin/view/extension/total/d_payment_fee/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(75, 'd_validator', 'admin/view/extension/module/d_link_cart/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(76, 'd_validator', 'admin/view/extension/module/d_seo_module_adviser/setting/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(77, 'd_validator', 'admin/view/extension/module/d_contact_map/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(78, 'd_validator', 'admin/view/extension/shipping/d_free_shipping_advanced/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(79, 'd_validator', 'admin/view/extension/module/d_ajax_search/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(80, 'd_validator', 'admin/view/extension/module/d_spin_product/after', 'extension/d_shopunity/d_validator/view', 1, 0),
(81, 'd_quickcheckout', 'catalog/view/checkout/checkout/before', 'extension/module/d_quickcheckout/view_checkout_checkout_before', 1, 0),
(82, 'd_quickcheckout', 'catalog/view/checkout/checkout/after', 'extension/module/d_quickcheckout/view_checkout_checkout_after', 1, 0),
(83, 'd_ajax_search', 'admin/view/customer/customer_form/after', 'extension/module/d_ajax_search/view_customer_customer_form_after', 1, 0),
(84, 'd_ajax_search', 'catalog/view/common/header/after', 'extension/module/d_ajax_search/view_common_header_after', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(56, 'module', 'responsive_slideshow'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'advertise', 'google'),
(50, 'theme', 'nice'),
(52, 'module', 'social_login'),
(51, 'module', 'd_social_login'),
(47, 'module', 'pilibaba_button'),
(49, 'module', 'd_quickcheckout'),
(53, 'module', 'optionfilter'),
(54, 'module', 'd_ajax_search'),
(59, 'module', 'paypal_smart_button'),
(60, 'module', 'pp_braintree_button'),
(62, 'payment', 'paypal'),
(63, 'payment', 'pp_standard'),
(64, 'payment', 'pp_express'),
(65, 'payment', 'pp_braintree'),
(66, 'shipping', 'free');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(25, 0, 'paypalcommercepatformoc3xv1.5.0.ocmod.zip', '2022-11-27 10:49:48'),
(3, 0, 'adminhtml53x.ocmod.zip', '2022-11-21 16:17:54'),
(4, 0, 'dvuefrontcompiledoc3.0.3.6.v2.1.4.ocmod.zip', '2022-11-21 16:21:19'),
(5, 0, 'admin_logo_footer.ocmod.zip', '2022-11-21 16:51:02'),
(6, 0, 'fixoc3installer.ocmod.zip', '2022-11-21 16:57:57'),
(18, 0, 'NiceTheme_OpenCart3_v1.5.0.ocmod.zip', '2022-11-26 10:39:11'),
(8, 0, 'quickview-3x.ocmod.zip', '2022-11-22 15:41:54'),
(9, 0, 'admin-lang-toggle-3x.ocmod.zip', '2022-11-22 15:45:10'),
(10, 0, 'fix-breadcrumbs-3x.ocmod.zip', '2022-11-22 16:08:50'),
(11, 0, 'Admin Filter Reset v0.1.0 for Opencart v3.x.ocmod.zip', '2022-11-22 16:33:33'),
(12, 0, 'showid.ocmod.zip', '2022-11-22 16:40:28'),
(13, 0, 'bnit.it-remove-admin-promotion-3.x.ocmod.zip', '2022-11-22 16:42:15'),
(14, 0, 'owdAdminProductsByCategoryFilter.ocmod.zip', '2022-11-22 16:47:34'),
(15, 0, 'FbAndGoogleLogin.ocmod.zip', '2022-11-26 09:05:14'),
(17, 0, 'dquickcheckoutcompiledoc3v7.5.2.ocmod.zip', '2022-11-26 09:53:29'),
(19, 0, 'vqmod-2.6.7.ocmod.zip', '2022-11-26 15:14:39'),
(20, 0, 'OrderSearchExtended-oc3.0-v01.03.01-20220324.ocmod.zip', '2022-11-26 15:47:19'),
(21, 0, 'gotostorefromadminpanel.ocmod.zip', '2022-11-26 15:52:09'),
(22, 0, 'themabilityquickview.ocmod.zip', '2022-11-26 23:05:03'),
(23, 0, 'dajaxsearchcompiledoc3.0.3.1.v6.2.0.ocmod.zip', '2022-11-26 23:09:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_extension_path`
--

INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(3856, 25, 'system/config/paypal.php', '2022-11-27 10:49:48'),
(3857, 25, 'system/config/paypal_smart_button.php', '2022-11-27 10:49:48'),
(4, 3, 'admin/view/javascript/menu-fix.js', '2022-11-21 16:17:54'),
(5, 3, 'admin/view/stylesheet/admin.css', '2022-11-21 16:17:54'),
(6, 4, 'system/library/d_graphql', '2022-11-21 16:21:20'),
(7, 4, 'system/library/d_shopunity', '2022-11-21 16:21:20'),
(8, 4, 'admin/model/extension/d_opencart_patch', '2022-11-21 16:21:20'),
(9, 4, 'admin/view/image/d_vuefront', '2022-11-21 16:21:20'),
(10, 4, 'admin/view/javascript/d_vuefront', '2022-11-21 16:21:20'),
(11, 4, 'catalog/controller/extension/d_vuefront', '2022-11-21 16:21:20'),
(12, 4, 'catalog/model/extension/d_opencart_patch', '2022-11-21 16:21:20'),
(13, 4, 'catalog/model/extension/d_vuefront', '2022-11-21 16:21:20'),
(14, 4, 'catalog/view/javascript/d_vuefront', '2022-11-21 16:21:20'),
(15, 4, 'system/library/d_graphql/composer.json', '2022-11-21 16:21:20'),
(16, 4, 'system/library/d_graphql/composer.lock', '2022-11-21 16:21:20'),
(17, 4, 'system/library/d_graphql/vendor', '2022-11-21 16:21:20'),
(18, 4, 'system/library/d_shopunity/extension', '2022-11-21 16:21:20'),
(19, 4, 'system/library/d_shopunity/install', '2022-11-21 16:21:20'),
(20, 4, 'system/library/d_shopunity/readme', '2022-11-21 16:21:20'),
(21, 4, 'system/library/template/Twig', '2022-11-21 16:21:20'),
(22, 4, 'admin/controller/extension/module/d_vuefront.php', '2022-11-21 16:21:20'),
(23, 4, 'admin/model/extension/d_opencart_patch/cache.php', '2022-11-21 16:21:20'),
(24, 4, 'admin/model/extension/d_opencart_patch/event.php', '2022-11-21 16:21:20'),
(25, 4, 'admin/model/extension/d_opencart_patch/extension.php', '2022-11-21 16:21:20'),
(26, 4, 'admin/model/extension/d_opencart_patch/load.php', '2022-11-21 16:21:20'),
(27, 4, 'admin/model/extension/d_opencart_patch/modification.php', '2022-11-21 16:21:20'),
(28, 4, 'admin/model/extension/d_opencart_patch/module.php', '2022-11-21 16:21:20'),
(29, 4, 'admin/model/extension/d_opencart_patch/setting.php', '2022-11-21 16:21:20'),
(30, 4, 'admin/model/extension/d_opencart_patch/store.php', '2022-11-21 16:21:20'),
(31, 4, 'admin/model/extension/d_opencart_patch/url.php', '2022-11-21 16:21:20'),
(32, 4, 'admin/model/extension/d_opencart_patch/user.php', '2022-11-21 16:21:20'),
(33, 4, 'admin/model/extension/d_opencart_patch/vqmod.php', '2022-11-21 16:21:20'),
(34, 4, 'admin/model/extension/module/d_twig_manager.php', '2022-11-21 16:21:20'),
(35, 4, 'admin/view/image/d_vuefront/logo.png', '2022-11-21 16:21:20'),
(36, 4, 'admin/view/javascript/d_vuefront/1752130d064cc59c9a4d.bundle.js', '2022-11-21 16:21:20'),
(37, 4, 'admin/view/javascript/d_vuefront/b56b7e21cb50fdf91ff3.bundle.js', '2022-11-21 16:21:20'),
(38, 4, 'admin/view/javascript/d_vuefront/img', '2022-11-21 16:21:20'),
(39, 4, 'admin/view/javascript/d_vuefront/main.1752130d064cc59c9a4d.css', '2022-11-21 16:21:20'),
(40, 4, 'admin/view/javascript/d_vuefront/main.b56b7e21cb50fdf91ff3.css', '2022-11-21 16:21:20'),
(41, 4, 'admin/view/javascript/d_vuefront/manifest.json', '2022-11-21 16:21:20'),
(42, 4, 'catalog/controller/extension/d_vuefront/blog', '2022-11-21 16:21:20'),
(43, 4, 'catalog/controller/extension/d_vuefront/common', '2022-11-21 16:21:20'),
(44, 4, 'catalog/controller/extension/d_vuefront/store', '2022-11-21 16:21:20'),
(45, 4, 'catalog/controller/extension/module/d_vuefront.php', '2022-11-21 16:21:20'),
(46, 4, 'catalog/controller/extension/module/d_vuefront_schema', '2022-11-21 16:21:20'),
(47, 4, 'catalog/model/extension/d_opencart_patch/load.php', '2022-11-21 16:21:20'),
(48, 4, 'catalog/model/extension/d_opencart_patch/user.php', '2022-11-21 16:21:20'),
(49, 4, 'catalog/model/extension/d_vuefront/address.php', '2022-11-21 16:21:20'),
(50, 4, 'catalog/model/extension/d_vuefront/cart.php', '2022-11-21 16:21:20'),
(51, 4, 'catalog/model/extension/d_vuefront/category.php', '2022-11-21 16:21:20'),
(52, 4, 'catalog/model/extension/d_vuefront/compare.php', '2022-11-21 16:21:20'),
(53, 4, 'catalog/model/extension/d_vuefront/country.php', '2022-11-21 16:21:20'),
(54, 4, 'catalog/model/extension/d_vuefront/customer.php', '2022-11-21 16:21:20'),
(55, 4, 'catalog/model/extension/d_vuefront/d_blog_module.php', '2022-11-21 16:21:20'),
(56, 4, 'catalog/model/extension/d_vuefront/manufacturer.php', '2022-11-21 16:21:20'),
(57, 4, 'catalog/model/extension/d_vuefront/option.php', '2022-11-21 16:21:20'),
(58, 4, 'catalog/model/extension/d_vuefront/page.php', '2022-11-21 16:21:20'),
(59, 4, 'catalog/model/extension/d_vuefront/product.php', '2022-11-21 16:21:20'),
(60, 4, 'catalog/model/extension/d_vuefront/seo.php', '2022-11-21 16:21:20'),
(61, 4, 'catalog/model/extension/d_vuefront/wishlist.php', '2022-11-21 16:21:20'),
(62, 4, 'catalog/model/extension/d_vuefront/zone.php', '2022-11-21 16:21:20'),
(63, 4, 'catalog/model/extension/module/d_vuefront.php', '2022-11-21 16:21:20'),
(64, 4, 'catalog/view/javascript/d_vuefront/css', '2022-11-21 16:21:20'),
(65, 4, 'catalog/view/javascript/d_vuefront/js', '2022-11-21 16:21:20'),
(66, 4, 'system/library/d_graphql/vendor/autoload.php', '2022-11-21 16:21:20'),
(67, 4, 'system/library/d_graphql/vendor/composer', '2022-11-21 16:21:20'),
(68, 4, 'system/library/d_graphql/vendor/webonyx', '2022-11-21 16:21:20'),
(69, 4, 'system/library/d_shopunity/extension/d_opencart_patch.json', '2022-11-21 16:21:20'),
(70, 4, 'system/library/d_shopunity/extension/d_twig_manager.json', '2022-11-21 16:21:20'),
(71, 4, 'system/library/d_shopunity/extension/d_vuefront.json', '2022-11-21 16:21:20'),
(72, 4, 'system/library/d_shopunity/install/d_opencart_patch.xml', '2022-11-21 16:21:20'),
(73, 4, 'system/library/d_shopunity/install/d_twig_manager.xml', '2022-11-21 16:21:20'),
(74, 4, 'system/library/d_shopunity/readme/d_opencart_patch.md', '2022-11-21 16:21:20'),
(75, 4, 'system/library/template/Twig/Extension', '2022-11-21 16:21:20'),
(76, 4, 'admin/language/en-gb/extension/module/d_vuefront.php', '2022-11-21 16:21:20'),
(77, 4, 'admin/view/javascript/d_vuefront/img/bottom-info.svg', '2022-11-21 16:21:20'),
(78, 4, 'admin/view/javascript/d_vuefront/img/confirm-email.svg', '2022-11-21 16:21:20'),
(79, 4, 'admin/view/javascript/d_vuefront/img/firstBuild.svg', '2022-11-21 16:21:20'),
(80, 4, 'admin/view/javascript/d_vuefront/img/rocket.png', '2022-11-21 16:21:20'),
(81, 4, 'admin/view/template/extension/module/d_vuefront.twig', '2022-11-21 16:21:20'),
(82, 4, 'catalog/controller/extension/d_vuefront/blog/category.php', '2022-11-21 16:21:20'),
(83, 4, 'catalog/controller/extension/d_vuefront/blog/post.php', '2022-11-21 16:21:20'),
(84, 4, 'catalog/controller/extension/d_vuefront/blog/review.php', '2022-11-21 16:21:20'),
(85, 4, 'catalog/controller/extension/d_vuefront/common/account.php', '2022-11-21 16:21:20'),
(86, 4, 'catalog/controller/extension/d_vuefront/common/contact.php', '2022-11-21 16:21:20'),
(87, 4, 'catalog/controller/extension/d_vuefront/common/country.php', '2022-11-21 16:21:20'),
(88, 4, 'catalog/controller/extension/d_vuefront/common/file.php', '2022-11-21 16:21:20'),
(89, 4, 'catalog/controller/extension/d_vuefront/common/home.php', '2022-11-21 16:21:20'),
(90, 4, 'catalog/controller/extension/d_vuefront/common/language.php', '2022-11-21 16:21:20'),
(91, 4, 'catalog/controller/extension/d_vuefront/common/page.php', '2022-11-21 16:21:20'),
(92, 4, 'catalog/controller/extension/d_vuefront/common/zone.php', '2022-11-21 16:21:20'),
(93, 4, 'catalog/controller/extension/d_vuefront/store/cart.php', '2022-11-21 16:21:20'),
(94, 4, 'catalog/controller/extension/d_vuefront/store/category.php', '2022-11-21 16:21:20'),
(95, 4, 'catalog/controller/extension/d_vuefront/store/checkout.php', '2022-11-21 16:21:20'),
(96, 4, 'catalog/controller/extension/d_vuefront/store/compare.php', '2022-11-21 16:21:20'),
(97, 4, 'catalog/controller/extension/d_vuefront/store/currency.php', '2022-11-21 16:21:20'),
(98, 4, 'catalog/controller/extension/d_vuefront/store/manufacturer.php', '2022-11-21 16:21:20'),
(99, 4, 'catalog/controller/extension/d_vuefront/store/option.php', '2022-11-21 16:21:20'),
(100, 4, 'catalog/controller/extension/d_vuefront/store/product.php', '2022-11-21 16:21:20'),
(101, 4, 'catalog/controller/extension/d_vuefront/store/review.php', '2022-11-21 16:21:20'),
(102, 4, 'catalog/controller/extension/d_vuefront/store/wishlist.php', '2022-11-21 16:21:20'),
(103, 4, 'catalog/controller/extension/module/d_vuefront_schema/mapping.json', '2022-11-21 16:21:20'),
(104, 4, 'catalog/controller/extension/module/d_vuefront_schema/schema.graphql', '2022-11-21 16:21:20'),
(105, 4, 'catalog/controller/extension/module/d_vuefront_schema/schemaAdmin.graphql', '2022-11-21 16:21:20'),
(106, 4, 'catalog/view/javascript/d_vuefront/css/index.css', '2022-11-21 16:21:20'),
(107, 4, 'catalog/view/javascript/d_vuefront/css/index.css.map', '2022-11-21 16:21:20'),
(108, 4, 'catalog/view/javascript/d_vuefront/js/middleware.js', '2022-11-21 16:21:20'),
(109, 4, 'catalog/view/javascript/d_vuefront/js/middleware.js.map', '2022-11-21 16:21:20'),
(110, 4, 'system/library/d_graphql/vendor/composer/ClassLoader.php', '2022-11-21 16:21:20'),
(111, 4, 'system/library/d_graphql/vendor/composer/LICENSE', '2022-11-21 16:21:20'),
(112, 4, 'system/library/d_graphql/vendor/composer/autoload_classmap.php', '2022-11-21 16:21:20'),
(113, 4, 'system/library/d_graphql/vendor/composer/autoload_files.php', '2022-11-21 16:21:20'),
(114, 4, 'system/library/d_graphql/vendor/composer/autoload_namespaces.php', '2022-11-21 16:21:20'),
(115, 4, 'system/library/d_graphql/vendor/composer/autoload_psr4.php', '2022-11-21 16:21:20'),
(116, 4, 'system/library/d_graphql/vendor/composer/autoload_real.php', '2022-11-21 16:21:20'),
(117, 4, 'system/library/d_graphql/vendor/composer/autoload_static.php', '2022-11-21 16:21:20'),
(118, 4, 'system/library/d_graphql/vendor/composer/installed.json', '2022-11-21 16:21:20'),
(119, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php', '2022-11-21 16:21:20'),
(120, 4, 'system/library/template/Twig/Extension/DTwigManager.php', '2022-11-21 16:21:20'),
(121, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/CHANGELOG.md', '2022-11-21 16:21:20'),
(122, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/CONTRIBUTING.md', '2022-11-21 16:21:20'),
(123, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/LICENSE', '2022-11-21 16:21:20'),
(124, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/README.md', '2022-11-21 16:21:20'),
(125, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/UPGRADE.md', '2022-11-21 16:21:20'),
(126, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/benchmarks', '2022-11-21 16:21:20'),
(127, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/composer.json', '2022-11-21 16:21:20'),
(128, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs', '2022-11-21 16:21:20'),
(129, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples', '2022-11-21 16:21:20'),
(130, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/mkdocs.yml', '2022-11-21 16:21:20'),
(131, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/phpbench.json', '2022-11-21 16:21:20'),
(132, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/phpunit.xml.dist', '2022-11-21 16:21:20'),
(133, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src', '2022-11-21 16:21:20'),
(134, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests', '2022-11-21 16:21:20'),
(135, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tools', '2022-11-21 16:21:20'),
(136, 4, 'catalog/view/theme/default/template/extension/module/d_vuefront.twig', '2022-11-21 16:21:20'),
(137, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/benchmarks/HugeSchemaBench.php', '2022-11-21 16:21:20'),
(138, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/benchmarks/LexerBench.php', '2022-11-21 16:21:20'),
(139, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/benchmarks/StarWarsBench.php', '2022-11-21 16:21:20'),
(140, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/benchmarks/Utils', '2022-11-21 16:21:20'),
(141, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/best-practices.md', '2022-11-21 16:21:20'),
(142, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/complementary-tools.md', '2022-11-21 16:21:20'),
(143, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/concepts.md', '2022-11-21 16:21:20'),
(144, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/data-fetching.md', '2022-11-21 16:21:20'),
(145, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/error-handling.md', '2022-11-21 16:21:20'),
(146, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/executing-queries.md', '2022-11-21 16:21:20'),
(147, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/getting-started.md', '2022-11-21 16:21:20'),
(148, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/how-it-works.md', '2022-11-21 16:21:20'),
(149, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/index.md', '2022-11-21 16:21:20'),
(150, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/reference.md', '2022-11-21 16:21:20'),
(151, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/security.md', '2022-11-21 16:21:20'),
(152, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/type-system', '2022-11-21 16:21:20'),
(153, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/00-hello-world', '2022-11-21 16:21:20'),
(154, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog', '2022-11-21 16:21:20'),
(155, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/02-shorthand', '2022-11-21 16:21:20'),
(156, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/03-server', '2022-11-21 16:21:20'),
(157, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Deferred.php', '2022-11-21 16:21:20'),
(158, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Error', '2022-11-21 16:21:20'),
(159, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Error.php', '2022-11-21 16:21:20'),
(160, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Executor', '2022-11-21 16:21:20'),
(161, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/GraphQL.php', '2022-11-21 16:21:20'),
(162, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language', '2022-11-21 16:21:20'),
(163, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Schema.php', '2022-11-21 16:21:20'),
(164, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Server', '2022-11-21 16:21:20'),
(165, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Server.php', '2022-11-21 16:21:20'),
(166, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type', '2022-11-21 16:21:20'),
(167, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Utils', '2022-11-21 16:21:20'),
(168, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Utils.php', '2022-11-21 16:21:20'),
(169, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator', '2022-11-21 16:21:20'),
(170, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/deprecated.php', '2022-11-21 16:21:20'),
(171, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/ErrorTest.php', '2022-11-21 16:21:20'),
(172, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor', '2022-11-21 16:21:20'),
(173, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Language', '2022-11-21 16:21:20'),
(174, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Server', '2022-11-21 16:21:20'),
(175, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/ServerTest.php', '2022-11-21 16:21:20'),
(176, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/StarWarsData.php', '2022-11-21 16:21:20'),
(177, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/StarWarsIntrospectionTest.php', '2022-11-21 16:21:20'),
(178, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/StarWarsQueryTest.php', '2022-11-21 16:21:20'),
(179, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/StarWarsSchema.php', '2022-11-21 16:21:20'),
(180, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/StarWarsValidationTest.php', '2022-11-21 16:21:20'),
(181, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Type', '2022-11-21 16:21:20'),
(182, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Utils', '2022-11-21 16:21:20'),
(183, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/UtilsTest.php', '2022-11-21 16:21:20'),
(184, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator', '2022-11-21 16:21:20'),
(185, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tools/gendocs.php', '2022-11-21 16:21:20'),
(186, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/benchmarks/Utils/QueryGenerator.php', '2022-11-21 16:21:20'),
(187, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/benchmarks/Utils/SchemaGenerator.php', '2022-11-21 16:21:20'),
(188, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/type-system/directives.md', '2022-11-21 16:21:20'),
(189, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/type-system/enum-types.md', '2022-11-21 16:21:20'),
(190, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/type-system/index.md', '2022-11-21 16:21:20'),
(191, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/type-system/input-types.md', '2022-11-21 16:21:20'),
(192, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/type-system/interfaces.md', '2022-11-21 16:21:20'),
(193, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/type-system/lists-and-nonnulls.md', '2022-11-21 16:21:20'),
(194, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/type-system/object-types.md', '2022-11-21 16:21:20'),
(195, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/type-system/scalar-types.md', '2022-11-21 16:21:20'),
(196, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/type-system/schema.md', '2022-11-21 16:21:20'),
(197, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/type-system/type-language.md', '2022-11-21 16:21:20'),
(198, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/docs/type-system/unions.md', '2022-11-21 16:21:20'),
(199, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/00-hello-world/README.md', '2022-11-21 16:21:20'),
(200, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/00-hello-world/graphql.php', '2022-11-21 16:21:20'),
(201, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog', '2022-11-21 16:21:20'),
(202, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/README.md', '2022-11-21 16:21:20'),
(203, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/graphql.php', '2022-11-21 16:21:20'),
(204, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/02-shorthand/README.md', '2022-11-21 16:21:20'),
(205, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/02-shorthand/graphql.php', '2022-11-21 16:21:20'),
(206, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/02-shorthand/rootvalue.php', '2022-11-21 16:21:20'),
(207, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/02-shorthand/schema.graphqls', '2022-11-21 16:21:20'),
(208, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/03-server/README.md', '2022-11-21 16:21:20'),
(209, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/03-server/graphql.php', '2022-11-21 16:21:20'),
(210, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Error/ClientAware.php', '2022-11-21 16:21:20'),
(211, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Error/Debug.php', '2022-11-21 16:21:20'),
(212, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Error/Error.php', '2022-11-21 16:21:20'),
(213, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Error/FormattedError.php', '2022-11-21 16:21:20'),
(214, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Error/InvariantViolation.php', '2022-11-21 16:21:20'),
(215, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Error/SyntaxError.php', '2022-11-21 16:21:20'),
(216, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Error/UserError.php', '2022-11-21 16:21:20'),
(217, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Error/Warning.php', '2022-11-21 16:21:20'),
(218, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Executor/ExecutionContext.php', '2022-11-21 16:21:20'),
(219, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Executor/ExecutionResult.php', '2022-11-21 16:21:20'),
(220, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Executor/Executor.php', '2022-11-21 16:21:20'),
(221, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Executor/Promise', '2022-11-21 16:21:20'),
(222, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Executor/Values.php', '2022-11-21 16:21:20'),
(223, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST', '2022-11-21 16:21:20'),
(224, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/Lexer.php', '2022-11-21 16:21:20'),
(225, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/Parser.php', '2022-11-21 16:21:20'),
(226, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/Printer.php', '2022-11-21 16:21:20'),
(227, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/Source.php', '2022-11-21 16:21:20'),
(228, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/SourceLocation.php', '2022-11-21 16:21:20'),
(229, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/Token.php', '2022-11-21 16:21:20'),
(230, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/Visitor.php', '2022-11-21 16:21:20'),
(231, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Server/Helper.php', '2022-11-21 16:21:20'),
(232, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Server/OperationParams.php', '2022-11-21 16:21:20'),
(233, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Server/RequestError.php', '2022-11-21 16:21:20'),
(234, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Server/ServerConfig.php', '2022-11-21 16:21:20'),
(235, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Server/StandardServer.php', '2022-11-21 16:21:20'),
(236, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition', '2022-11-21 16:21:20'),
(237, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/EagerResolution.php', '2022-11-21 16:21:20'),
(238, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Introspection.php', '2022-11-21 16:21:20'),
(239, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/LazyResolution.php', '2022-11-21 16:21:20'),
(240, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Resolution.php', '2022-11-21 16:21:20'),
(241, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Schema.php', '2022-11-21 16:21:20'),
(242, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/SchemaConfig.php', '2022-11-21 16:21:20'),
(243, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Utils/AST.php', '2022-11-21 16:21:20'),
(244, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Utils/BuildSchema.php', '2022-11-21 16:21:20'),
(245, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Utils/FindBreakingChanges.php', '2022-11-21 16:21:20'),
(246, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Utils/MixedStore.php', '2022-11-21 16:21:20'),
(247, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Utils/PairSet.php', '2022-11-21 16:21:20'),
(248, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Utils/SchemaPrinter.php', '2022-11-21 16:21:20'),
(249, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Utils/TypeComparators.php', '2022-11-21 16:21:20'),
(250, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Utils/TypeInfo.php', '2022-11-21 16:21:20'),
(251, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Utils/Utils.php', '2022-11-21 16:21:20'),
(252, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/DocumentValidator.php', '2022-11-21 16:21:20'),
(253, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules', '2022-11-21 16:21:20'),
(254, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/ValidationContext.php', '2022-11-21 16:21:20'),
(255, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor/AbstractPromiseTest.php', '2022-11-21 16:21:20'),
(256, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor/AbstractTest.php', '2022-11-21 16:21:20'),
(257, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor/DeferredFieldsTest.php', '2022-11-21 16:21:20'),
(258, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor/DirectivesTest.php', '2022-11-21 16:21:20'),
(259, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor/ExecutionResultTest.php', '2022-11-21 16:21:20'),
(260, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor/ExecutorLazySchemaTest.php', '2022-11-21 16:21:20'),
(261, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor/ExecutorSchemaTest.php', '2022-11-21 16:21:20'),
(262, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor/ExecutorTest.php', '2022-11-21 16:21:21'),
(263, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor/LazyInterfaceTest.php', '2022-11-21 16:21:21'),
(264, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor/ListsTest.php', '2022-11-21 16:21:21'),
(265, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor/MutationsTest.php', '2022-11-21 16:21:21'),
(266, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor/NonNullTest.php', '2022-11-21 16:21:21'),
(267, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor/Promise', '2022-11-21 16:21:21'),
(268, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor/ResolveTest.php', '2022-11-21 16:21:21'),
(269, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor/TestClasses.php', '2022-11-21 16:21:21'),
(270, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor/UnionInterfaceTest.php', '2022-11-21 16:21:21'),
(271, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor/ValuesTest.php', '2022-11-21 16:21:21'),
(272, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor/VariablesTest.php', '2022-11-21 16:21:21'),
(273, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Language/LexerTest.php', '2022-11-21 16:21:21'),
(274, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Language/ParserTest.php', '2022-11-21 16:21:21'),
(275, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Language/PrinterTest.php', '2022-11-21 16:21:21'),
(276, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Language/SchemaParserTest.php', '2022-11-21 16:21:21'),
(277, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Language/SchemaPrinterTest.php', '2022-11-21 16:21:21'),
(278, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Language/SerializationTest.php', '2022-11-21 16:21:21'),
(279, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Language/TestUtils.php', '2022-11-21 16:21:21'),
(280, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Language/TokenTest.php', '2022-11-21 16:21:21'),
(281, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Language/VisitorTest.php', '2022-11-21 16:21:21'),
(282, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Language/kitchen-sink-noloc.ast', '2022-11-21 16:21:21'),
(283, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Language/kitchen-sink.ast', '2022-11-21 16:21:21'),
(284, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Language/kitchen-sink.graphql', '2022-11-21 16:21:21'),
(285, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Language/schema-kitchen-sink.graphql', '2022-11-21 16:21:21'),
(286, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Server/Psr7', '2022-11-21 16:21:21'),
(287, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Server/PsrResponseTest.php', '2022-11-21 16:21:21'),
(288, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Server/QueryExecutionTest.php', '2022-11-21 16:21:21'),
(289, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Server/RequestParsingTest.php', '2022-11-21 16:21:21'),
(290, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Server/RequestValidationTest.php', '2022-11-21 16:21:21'),
(291, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Server/ServerConfigTest.php', '2022-11-21 16:21:21'),
(292, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Server/StandardServerTest.php', '2022-11-21 16:21:21'),
(293, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Server/TestCase.php', '2022-11-21 16:21:21'),
(294, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Type/ConfigTest.php', '2022-11-21 16:21:21'),
(295, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Type/DefinitionTest.php', '2022-11-21 16:21:21'),
(296, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Type/EnumTypeTest.php', '2022-11-21 16:21:21'),
(297, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Type/IntrospectionTest.php', '2022-11-21 16:21:21'),
(298, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Type/ObjectIdStub.php', '2022-11-21 16:21:21'),
(299, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Type/ResolutionTest.php', '2022-11-21 16:21:21'),
(300, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Type/ResolveInfoTest.php', '2022-11-21 16:21:21'),
(301, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Type/ScalarSerializationTest.php', '2022-11-21 16:21:21'),
(302, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Type/TestClasses.php', '2022-11-21 16:21:21'),
(303, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Type/TypeLoaderTest.php', '2022-11-21 16:21:21'),
(304, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Type/ValidationTest.php', '2022-11-21 16:21:21'),
(305, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Utils/AstFromValueTest.php', '2022-11-21 16:21:21'),
(306, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Utils/BuildSchemaTest.php', '2022-11-21 16:21:21'),
(307, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Utils/ExtractTypesTest.php', '2022-11-21 16:21:21'),
(308, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Utils/FindBreakingChangesTest.php', '2022-11-21 16:21:21'),
(309, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Utils/IsValidPHPValueTest.php', '2022-11-21 16:21:21'),
(310, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Utils/MixedStoreTest.php', '2022-11-21 16:21:21'),
(311, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Utils/SchemaPrinterTest.php', '2022-11-21 16:21:21'),
(312, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Utils/ValueFromAstTest.php', '2022-11-21 16:21:21'),
(313, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/AbstractQuerySecurityTest.php', '2022-11-21 16:21:21'),
(314, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/ArgumentsOfCorrectTypeTest.php', '2022-11-21 16:21:21'),
(315, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/DefaultValuesOfCorrectTypeTest.php', '2022-11-21 16:21:21'),
(316, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/DisableIntrospectionTest.php', '2022-11-21 16:21:21'),
(317, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/FieldsOnCorrectTypeTest.php', '2022-11-21 16:21:21'),
(318, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/FragmentsOnCompositeTypesTest.php', '2022-11-21 16:21:21'),
(319, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/KnownArgumentNamesTest.php', '2022-11-21 16:21:21'),
(320, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/KnownDirectivesTest.php', '2022-11-21 16:21:21'),
(321, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/KnownFragmentNamesTest.php', '2022-11-21 16:21:21'),
(322, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/KnownTypeNamesTest.php', '2022-11-21 16:21:21'),
(323, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/LoneAnonymousOperationTest.php', '2022-11-21 16:21:21'),
(324, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/NoFragmentCyclesTest.php', '2022-11-21 16:21:21'),
(325, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/NoUndefinedVariablesTest.php', '2022-11-21 16:21:21'),
(326, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/NoUnusedFragmentsTest.php', '2022-11-21 16:21:21'),
(327, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/NoUnusedVariablesTest.php', '2022-11-21 16:21:21'),
(328, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/OverlappingFieldsCanBeMergedTest.php', '2022-11-21 16:21:21'),
(329, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/PossibleFragmentSpreadsTest.php', '2022-11-21 16:21:21'),
(330, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/ProvidedNonNullArgumentsTest.php', '2022-11-21 16:21:21'),
(331, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/QueryComplexityTest.php', '2022-11-21 16:21:21'),
(332, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/QueryDepthTest.php', '2022-11-21 16:21:21'),
(333, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/QuerySecuritySchema.php', '2022-11-21 16:21:21'),
(334, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/ScalarLeafsTest.php', '2022-11-21 16:21:21'),
(335, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/TestCase.php', '2022-11-21 16:21:21'),
(336, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/UniqueArgumentNamesTest.php', '2022-11-21 16:21:21'),
(337, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/UniqueDirectivesPerLocationTest.php', '2022-11-21 16:21:21'),
(338, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/UniqueFragmentNamesTest.php', '2022-11-21 16:21:21'),
(339, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/UniqueInputFieldNamesTest.php', '2022-11-21 16:21:21'),
(340, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/UniqueOperationNamesTest.php', '2022-11-21 16:21:21'),
(341, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/UniqueVariableNamesTest.php', '2022-11-21 16:21:21'),
(342, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/ValidationTest.php', '2022-11-21 16:21:21'),
(343, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/VariablesAreInputTypesTest.php', '2022-11-21 16:21:21'),
(344, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Validator/VariablesInAllowedPositionTest.php', '2022-11-21 16:21:21'),
(345, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/AppContext.php', '2022-11-21 16:21:21'),
(346, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Data', '2022-11-21 16:21:21'),
(347, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Type', '2022-11-21 16:21:21'),
(348, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Types.php', '2022-11-21 16:21:21'),
(349, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Executor/Promise/Adapter', '2022-11-21 16:21:21'),
(350, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Executor/Promise/Promise.php', '2022-11-21 16:21:21'),
(351, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Executor/Promise/PromiseAdapter.php', '2022-11-21 16:21:21'),
(352, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/ArgumentNode.php', '2022-11-21 16:21:21'),
(353, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/BooleanValueNode.php', '2022-11-21 16:21:21'),
(354, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/DefinitionNode.php', '2022-11-21 16:21:21'),
(355, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/DirectiveDefinitionNode.php', '2022-11-21 16:21:21'),
(356, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/DirectiveNode.php', '2022-11-21 16:21:21'),
(357, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/DocumentNode.php', '2022-11-21 16:21:21'),
(358, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/EnumTypeDefinitionNode.php', '2022-11-21 16:21:21'),
(359, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/EnumValueDefinitionNode.php', '2022-11-21 16:21:21'),
(360, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/EnumValueNode.php', '2022-11-21 16:21:21'),
(361, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/FieldDefinitionNode.php', '2022-11-21 16:21:21'),
(362, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/FieldNode.php', '2022-11-21 16:21:21'),
(363, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/FloatValueNode.php', '2022-11-21 16:21:21'),
(364, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/FragmentDefinitionNode.php', '2022-11-21 16:21:21'),
(365, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/FragmentSpreadNode.php', '2022-11-21 16:21:21'),
(366, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/HasSelectionSet.php', '2022-11-21 16:21:21'),
(367, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/InlineFragmentNode.php', '2022-11-21 16:21:21'),
(368, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/InputObjectTypeDefinitionNode.php', '2022-11-21 16:21:21'),
(369, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/InputValueDefinitionNode.php', '2022-11-21 16:21:21'),
(370, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/IntValueNode.php', '2022-11-21 16:21:21'),
(371, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/InterfaceTypeDefinitionNode.php', '2022-11-21 16:21:21'),
(372, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/ListTypeNode.php', '2022-11-21 16:21:21'),
(373, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/ListValueNode.php', '2022-11-21 16:21:21'),
(374, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/Location.php', '2022-11-21 16:21:21'),
(375, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/NameNode.php', '2022-11-21 16:21:21'),
(376, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/NamedTypeNode.php', '2022-11-21 16:21:21'),
(377, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/Node.php', '2022-11-21 16:21:21'),
(378, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/NodeKind.php', '2022-11-21 16:21:21'),
(379, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/NodeList.php', '2022-11-21 16:21:21'),
(380, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/NonNullTypeNode.php', '2022-11-21 16:21:21'),
(381, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/NullValueNode.php', '2022-11-21 16:21:21'),
(382, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/ObjectFieldNode.php', '2022-11-21 16:21:21'),
(383, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/ObjectTypeDefinitionNode.php', '2022-11-21 16:21:21'),
(384, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/ObjectValueNode.php', '2022-11-21 16:21:21'),
(385, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/OperationDefinitionNode.php', '2022-11-21 16:21:21'),
(386, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/OperationTypeDefinitionNode.php', '2022-11-21 16:21:21'),
(387, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/ScalarTypeDefinitionNode.php', '2022-11-21 16:21:21'),
(388, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/SchemaDefinitionNode.php', '2022-11-21 16:21:21'),
(389, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/SelectionNode.php', '2022-11-21 16:21:21'),
(390, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/SelectionSetNode.php', '2022-11-21 16:21:21'),
(391, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/StringValueNode.php', '2022-11-21 16:21:21'),
(392, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/TypeDefinitionNode.php', '2022-11-21 16:21:21'),
(393, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/TypeExtensionDefinitionNode.php', '2022-11-21 16:21:21'),
(394, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/TypeNode.php', '2022-11-21 16:21:21'),
(395, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/TypeSystemDefinitionNode.php', '2022-11-21 16:21:21'),
(396, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/UnionTypeDefinitionNode.php', '2022-11-21 16:21:21'),
(397, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/ValueNode.php', '2022-11-21 16:21:21'),
(398, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/VariableDefinitionNode.php', '2022-11-21 16:21:21'),
(399, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Language/AST/VariableNode.php', '2022-11-21 16:21:21'),
(400, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/AbstractType.php', '2022-11-21 16:21:21'),
(401, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/BooleanType.php', '2022-11-21 16:21:21'),
(402, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/CompositeType.php', '2022-11-21 16:21:21'),
(403, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/Config.php', '2022-11-21 16:21:21'),
(404, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/CustomScalarType.php', '2022-11-21 16:21:21'),
(405, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/Directive.php', '2022-11-21 16:21:21'),
(406, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/DirectiveLocation.php', '2022-11-21 16:21:21'),
(407, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/EnumType.php', '2022-11-21 16:21:21'),
(408, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/EnumValueDefinition.php', '2022-11-21 16:21:21'),
(409, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/FieldArgument.php', '2022-11-21 16:21:21'),
(410, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/FieldDefinition.php', '2022-11-21 16:21:21'),
(411, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/FloatType.php', '2022-11-21 16:21:21'),
(412, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/IDType.php', '2022-11-21 16:21:21'),
(413, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/InputObjectField.php', '2022-11-21 16:21:21'),
(414, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/InputObjectType.php', '2022-11-21 16:21:21'),
(415, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/InputType.php', '2022-11-21 16:21:21'),
(416, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/IntType.php', '2022-11-21 16:21:21'),
(417, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/InterfaceType.php', '2022-11-21 16:21:21'),
(418, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/LeafType.php', '2022-11-21 16:21:21'),
(419, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/ListOfType.php', '2022-11-21 16:21:21'),
(420, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/NonNull.php', '2022-11-21 16:21:21'),
(421, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/ObjectType.php', '2022-11-21 16:21:21'),
(422, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/OutputType.php', '2022-11-21 16:21:21'),
(423, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/ResolveInfo.php', '2022-11-21 16:21:21'),
(424, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/ScalarType.php', '2022-11-21 16:21:21'),
(425, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/StringType.php', '2022-11-21 16:21:21'),
(426, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/Type.php', '2022-11-21 16:21:21'),
(427, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/UnionType.php', '2022-11-21 16:21:21'),
(428, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/UnmodifiedType.php', '2022-11-21 16:21:21'),
(429, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Type/Definition/WrappingType.php', '2022-11-21 16:21:21'),
(430, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/AbstractQuerySecurity.php', '2022-11-21 16:21:21'),
(431, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/AbstractValidationRule.php', '2022-11-21 16:21:21'),
(432, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/ArgumentsOfCorrectType.php', '2022-11-21 16:21:21'),
(433, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/CustomValidationRule.php', '2022-11-21 16:21:21'),
(434, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/DefaultValuesOfCorrectType.php', '2022-11-21 16:21:21'),
(435, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/DisableIntrospection.php', '2022-11-21 16:21:21'),
(436, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/FieldsOnCorrectType.php', '2022-11-21 16:21:21'),
(437, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/FragmentsOnCompositeTypes.php', '2022-11-21 16:21:21'),
(438, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/KnownArgumentNames.php', '2022-11-21 16:21:21'),
(439, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/KnownDirectives.php', '2022-11-21 16:21:21'),
(440, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/KnownFragmentNames.php', '2022-11-21 16:21:21'),
(441, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/KnownTypeNames.php', '2022-11-21 16:21:21'),
(442, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/LoneAnonymousOperation.php', '2022-11-21 16:21:21'),
(443, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/NoFragmentCycles.php', '2022-11-21 16:21:21'),
(444, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/NoUndefinedVariables.php', '2022-11-21 16:21:21'),
(445, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/NoUnusedFragments.php', '2022-11-21 16:21:21'),
(446, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/NoUnusedVariables.php', '2022-11-21 16:21:21'),
(447, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/OverlappingFieldsCanBeMerged.php', '2022-11-21 16:21:21'),
(448, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/PossibleFragmentSpreads.php', '2022-11-21 16:21:21'),
(449, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/ProvidedNonNullArguments.php', '2022-11-21 16:21:21'),
(450, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/QueryComplexity.php', '2022-11-21 16:21:21'),
(451, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/QueryDepth.php', '2022-11-21 16:21:21'),
(452, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/ScalarLeafs.php', '2022-11-21 16:21:21'),
(453, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/UniqueArgumentNames.php', '2022-11-21 16:21:21'),
(454, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/UniqueDirectivesPerLocation.php', '2022-11-21 16:21:21'),
(455, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/UniqueFragmentNames.php', '2022-11-21 16:21:21'),
(456, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/UniqueInputFieldNames.php', '2022-11-21 16:21:21'),
(457, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/UniqueOperationNames.php', '2022-11-21 16:21:21'),
(458, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/UniqueVariableNames.php', '2022-11-21 16:21:21'),
(459, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/VariablesAreInputTypes.php', '2022-11-21 16:21:21');
INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(460, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Validator/Rules/VariablesInAllowedPosition.php', '2022-11-21 16:21:21'),
(461, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor/Promise/ReactPromiseAdapterTest.php', '2022-11-21 16:21:21'),
(462, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor/Promise/SyncPromiseAdapterTest.php', '2022-11-21 16:21:21'),
(463, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Executor/Promise/SyncPromiseTest.php', '2022-11-21 16:21:21'),
(464, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Server/Psr7/PsrRequestStub.php', '2022-11-21 16:21:21'),
(465, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Server/Psr7/PsrResponseStub.php', '2022-11-21 16:21:21'),
(466, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/tests/Server/Psr7/PsrStreamStub.php', '2022-11-21 16:21:21'),
(467, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Data/Comment.php', '2022-11-21 16:21:21'),
(468, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Data/DataSource.php', '2022-11-21 16:21:21'),
(469, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Data/Image.php', '2022-11-21 16:21:21'),
(470, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Data/Story.php', '2022-11-21 16:21:21'),
(471, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Data/User.php', '2022-11-21 16:21:21'),
(472, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Type/CommentType.php', '2022-11-21 16:21:21'),
(473, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Type/Enum', '2022-11-21 16:21:21'),
(474, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Type/Field', '2022-11-21 16:21:21'),
(475, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Type/ImageType.php', '2022-11-21 16:21:21'),
(476, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Type/NodeType.php', '2022-11-21 16:21:21'),
(477, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Type/QueryType.php', '2022-11-21 16:21:21'),
(478, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Type/Scalar', '2022-11-21 16:21:21'),
(479, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Type/SearchResultType.php', '2022-11-21 16:21:21'),
(480, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Type/StoryType.php', '2022-11-21 16:21:21'),
(481, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Type/UserType.php', '2022-11-21 16:21:21'),
(482, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Executor/Promise/Adapter/ReactPromiseAdapter.php', '2022-11-21 16:21:21'),
(483, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Executor/Promise/Adapter/SyncPromise.php', '2022-11-21 16:21:21'),
(484, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/src/Executor/Promise/Adapter/SyncPromiseAdapter.php', '2022-11-21 16:21:21'),
(485, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Type/Enum/ContentFormatEnum.php', '2022-11-21 16:21:21'),
(486, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Type/Enum/ImageSizeEnumType.php', '2022-11-21 16:21:21'),
(487, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Type/Field/HtmlField.php', '2022-11-21 16:21:21'),
(488, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Type/Scalar/EmailType.php', '2022-11-21 16:21:21'),
(489, 4, 'system/library/d_graphql/vendor/webonyx/graphql-php/examples/01-blog/Blog/Type/Scalar/UrlType.php', '2022-11-21 16:21:21'),
(3410, 18, 'system/nice-theme-megamenu.ocmod.xml', '2022-11-26 10:39:11'),
(3411, 18, 'system/nice-theme-productlist.ocmod.xml', '2022-11-26 10:39:11'),
(3412, 18, 'admin/language/ro-ro', '2022-11-26 10:39:11'),
(3413, 18, 'admin/language/ru-ru', '2022-11-26 10:39:11'),
(3414, 18, 'admin/language/uk-ua', '2022-11-26 10:39:11'),
(3415, 18, 'catalog/controller/block', '2022-11-26 10:39:11'),
(3416, 18, 'catalog/language/ro-ro', '2022-11-26 10:39:11'),
(3417, 18, 'catalog/language/ru-ru', '2022-11-26 10:39:11'),
(3418, 18, 'catalog/language/uk-ua', '2022-11-26 10:39:11'),
(3419, 18, 'system/library/nice', '2022-11-26 10:39:11'),
(3420, 18, 'admin/language/ro-ro/extension', '2022-11-26 10:39:11'),
(3421, 18, 'admin/language/ru-ru/extension', '2022-11-26 10:39:11'),
(3422, 18, 'admin/language/uk-ua/extension', '2022-11-26 10:39:11'),
(3423, 18, 'admin/model/extension/theme', '2022-11-26 10:39:11'),
(3424, 18, 'admin/view/image/nice', '2022-11-26 10:39:11'),
(3425, 18, 'admin/view/javascript/spectrum-2.0.8', '2022-11-26 10:39:11'),
(3426, 18, 'admin/view/stylesheet/nice-theme.css', '2022-11-26 10:39:11'),
(3427, 18, 'catalog/controller/block/productpage_conversion.php', '2022-11-26 10:39:11'),
(3428, 18, 'catalog/controller/block/productpage_image.php', '2022-11-26 10:39:11'),
(3429, 18, 'catalog/controller/block/productpage_options.php', '2022-11-26 10:39:11'),
(3430, 18, 'catalog/controller/block/productpage_products_related.php', '2022-11-26 10:39:11'),
(3431, 18, 'catalog/controller/block/productpage_review_form.php', '2022-11-26 10:39:11'),
(3432, 18, 'catalog/controller/block/productpage_review_form_modal.php', '2022-11-26 10:39:11'),
(3433, 18, 'catalog/controller/common/block_home_top.php', '2022-11-26 10:39:11'),
(3434, 18, 'catalog/controller/common/menu_top.php', '2022-11-26 10:39:11'),
(3435, 18, 'catalog/controller/extension/theme', '2022-11-26 10:39:11'),
(3436, 18, 'catalog/language/ro-ro/extension', '2022-11-26 10:39:11'),
(3437, 18, 'catalog/language/ru-ru/extension', '2022-11-26 10:39:11'),
(3438, 18, 'catalog/language/uk-ua/extension', '2022-11-26 10:39:11'),
(3439, 18, 'catalog/model/extension/theme', '2022-11-26 10:39:11'),
(3440, 18, 'catalog/view/theme/nice', '2022-11-26 10:39:11'),
(3441, 18, 'system/library/nice/colors.css', '2022-11-26 10:39:11'),
(3442, 18, 'system/library/nice/scssphp-1.10.3', '2022-11-26 10:39:11'),
(3443, 18, 'admin/controller/extension/module/nice_megamenu.php', '2022-11-26 10:39:11'),
(3444, 18, 'admin/controller/extension/module/nice_slideshow.php', '2022-11-26 10:39:11'),
(3445, 18, 'admin/controller/extension/theme/nice.php', '2022-11-26 10:39:11'),
(3446, 18, 'admin/language/ro-ro/extension/module', '2022-11-26 10:39:11'),
(3447, 18, 'admin/language/ro-ro/extension/theme', '2022-11-26 10:39:11'),
(3448, 18, 'admin/language/ru-ru/extension/module', '2022-11-26 10:39:11'),
(3449, 18, 'admin/language/ru-ru/extension/theme', '2022-11-26 10:39:11'),
(3450, 18, 'admin/language/uk-ua/extension/module', '2022-11-26 10:39:11'),
(3451, 18, 'admin/language/uk-ua/extension/theme', '2022-11-26 10:39:11'),
(3452, 18, 'admin/model/extension/module/nice_megamenu.php', '2022-11-26 10:39:11'),
(3453, 18, 'admin/model/extension/module/nice_slideshow.php', '2022-11-26 10:39:11'),
(3454, 18, 'admin/view/image/nice/about', '2022-11-26 10:39:11'),
(3455, 18, 'admin/view/image/nice/productlist_cols_on_mobile_1.jpg', '2022-11-26 10:39:11'),
(3456, 18, 'admin/view/image/nice/productlist_cols_on_mobile_2.jpg', '2022-11-26 10:39:11'),
(3457, 18, 'admin/view/image/nice/productlist_description_disabled.jpg', '2022-11-26 10:39:11'),
(3458, 18, 'admin/view/image/nice/productlist_description_enabled.jpg', '2022-11-26 10:39:11'),
(3459, 18, 'admin/view/image/nice/productlist_description_on_mobile_disabled.jpg', '2022-11-26 10:39:11'),
(3460, 18, 'admin/view/image/nice/productlist_description_on_mobile_enabled.jpg', '2022-11-26 10:39:11'),
(3461, 18, 'admin/view/image/nice/productlist_grid_hover_effect_disabled.jpg', '2022-11-26 10:39:11'),
(3462, 18, 'admin/view/image/nice/productlist_grid_hover_effect_enabled.jpg', '2022-11-26 10:39:11'),
(3463, 18, 'admin/view/image/nice/productlist_image_1.jpg', '2022-11-26 10:39:12'),
(3464, 18, 'admin/view/image/nice/productlist_image_2.jpg', '2022-11-26 10:39:12'),
(3465, 18, 'admin/view/image/nice/productlist_image_2.psd', '2022-11-26 10:39:12'),
(3466, 18, 'admin/view/image/nice/productlist_name_font_weight_bold.jpg', '2022-11-26 10:39:12'),
(3467, 18, 'admin/view/image/nice/productlist_name_font_weight_regular.jpg', '2022-11-26 10:39:12'),
(3468, 18, 'admin/view/image/nice/productlist_price_font_weight_bold.jpg', '2022-11-26 10:39:12'),
(3469, 18, 'admin/view/image/nice/productlist_price_font_weight_regular.jpg', '2022-11-26 10:39:12'),
(3470, 18, 'admin/view/javascript/spectrum-2.0.8/spectrum.css', '2022-11-26 10:39:12'),
(3471, 18, 'admin/view/javascript/spectrum-2.0.8/spectrum.js', '2022-11-26 10:39:12'),
(3472, 18, 'admin/view/javascript/spectrum-2.0.8/spectrum.min.css', '2022-11-26 10:39:12'),
(3473, 18, 'admin/view/javascript/spectrum-2.0.8/spectrum.min.js', '2022-11-26 10:39:12'),
(3474, 18, 'admin/view/javascript/spectrum-2.0.8/spectrum.scss', '2022-11-26 10:39:12'),
(3475, 18, 'catalog/controller/extension/module/nice_slideshow.php', '2022-11-26 10:39:12'),
(3476, 18, 'catalog/language/en-gb/extension/theme', '2022-11-26 10:39:12'),
(3477, 18, 'catalog/language/ro-ro/extension/theme', '2022-11-26 10:39:12'),
(3478, 18, 'catalog/language/ru-ru/extension/theme', '2022-11-26 10:39:12'),
(3479, 18, 'catalog/language/uk-ua/extension/theme', '2022-11-26 10:39:12'),
(3480, 18, 'catalog/model/extension/module/nice_slideshow.php', '2022-11-26 10:39:12'),
(3481, 18, 'catalog/view/theme/nice/image', '2022-11-26 10:39:12'),
(3482, 18, 'catalog/view/theme/nice/javascript', '2022-11-26 10:39:12'),
(3483, 18, 'catalog/view/theme/nice/stylesheet', '2022-11-26 10:39:12'),
(3484, 18, 'catalog/view/theme/nice/template', '2022-11-26 10:39:12'),
(3485, 18, 'system/library/nice/scssphp-1.10.3/LICENSE.md', '2022-11-26 10:39:12'),
(3486, 18, 'system/library/nice/scssphp-1.10.3/README.md', '2022-11-26 10:39:12'),
(3487, 18, 'system/library/nice/scssphp-1.10.3/bin', '2022-11-26 10:39:12'),
(3488, 18, 'system/library/nice/scssphp-1.10.3/composer.json', '2022-11-26 10:39:12'),
(3489, 18, 'system/library/nice/scssphp-1.10.3/phpcs.xml.dist', '2022-11-26 10:39:12'),
(3490, 18, 'system/library/nice/scssphp-1.10.3/scss.inc.php', '2022-11-26 10:39:12'),
(3491, 18, 'system/library/nice/scssphp-1.10.3/src', '2022-11-26 10:39:12'),
(3492, 18, 'admin/language/en-gb/extension/module/nice_megamenu.php', '2022-11-26 10:39:12'),
(3493, 18, 'admin/language/en-gb/extension/module/nice_megamenu_category.php', '2022-11-26 10:39:12'),
(3494, 18, 'admin/language/en-gb/extension/module/nice_slideshow.php', '2022-11-26 10:39:12'),
(3495, 18, 'admin/language/en-gb/extension/theme/nice.php', '2022-11-26 10:39:12'),
(3496, 18, 'admin/language/ro-ro/extension/module/nice_megamenu.php', '2022-11-26 10:39:12'),
(3497, 18, 'admin/language/ro-ro/extension/module/nice_megamenu_category.php', '2022-11-26 10:39:12'),
(3498, 18, 'admin/language/ro-ro/extension/module/nice_slideshow.php', '2022-11-26 10:39:12'),
(3499, 18, 'admin/language/ro-ro/extension/theme/nice.php', '2022-11-26 10:39:12'),
(3500, 18, 'admin/language/ru-ru/extension/module/nice_megamenu.php', '2022-11-26 10:39:12'),
(3501, 18, 'admin/language/ru-ru/extension/module/nice_megamenu_category.php', '2022-11-26 10:39:12'),
(3502, 18, 'admin/language/ru-ru/extension/module/nice_slideshow.php', '2022-11-26 10:39:12'),
(3503, 18, 'admin/language/ru-ru/extension/theme/nice.php', '2022-11-26 10:39:12'),
(3504, 18, 'admin/language/uk-ua/extension/module/nice_megamenu.php', '2022-11-26 10:39:12'),
(3505, 18, 'admin/language/uk-ua/extension/module/nice_megamenu_category.php', '2022-11-26 10:39:12'),
(3506, 18, 'admin/language/uk-ua/extension/module/nice_slideshow.php', '2022-11-26 10:39:12'),
(3507, 18, 'admin/language/uk-ua/extension/theme/nice.php', '2022-11-26 10:39:12'),
(3508, 18, 'admin/view/image/nice/about/536404-small.jpg', '2022-11-26 10:39:12'),
(3509, 18, 'admin/view/image/nice/about/donate-png_donate-fcb48-png.png', '2022-11-26 10:39:12'),
(3510, 18, 'admin/view/image/nice/about/logo-7-e-nunito-sans.png', '2022-11-26 10:39:12'),
(3511, 18, 'admin/view/image/nice/about/open-source.png', '2022-11-26 10:39:12'),
(3512, 18, 'admin/view/image/nice/about/paypal-donate-button.png', '2022-11-26 10:39:12'),
(3513, 18, 'admin/view/image/nice/about/serge-tkach-200px.jpg', '2022-11-26 10:39:12'),
(3514, 18, 'admin/view/template/extension/module/nice_megamenu.twig', '2022-11-26 10:39:12'),
(3515, 18, 'admin/view/template/extension/module/nice_slideshow_form.twig', '2022-11-26 10:39:12'),
(3516, 18, 'admin/view/template/extension/module/nice_slideshow_list.twig', '2022-11-26 10:39:12'),
(3517, 18, 'admin/view/template/extension/theme/nice.twig', '2022-11-26 10:39:12'),
(3518, 18, 'catalog/language/en-gb/extension/theme/nice.php', '2022-11-26 10:39:12'),
(3519, 18, 'catalog/language/ro-ro/extension/theme/nice.php', '2022-11-26 10:39:12'),
(3520, 18, 'catalog/language/ru-ru/extension/theme/nice.php', '2022-11-26 10:39:12'),
(3521, 18, 'catalog/language/uk-ua/extension/theme/nice.php', '2022-11-26 10:39:12'),
(3522, 18, 'catalog/view/theme/nice/image/nice.png', '2022-11-26 10:39:12'),
(3523, 18, 'catalog/view/theme/nice/javascript/common.js', '2022-11-26 10:39:12'),
(3524, 18, 'catalog/view/theme/nice/stylesheet/stylesheet.css', '2022-11-26 10:39:12'),
(3525, 18, 'catalog/view/theme/nice/template/block', '2022-11-26 10:39:12'),
(3526, 18, 'catalog/view/theme/nice/template/common', '2022-11-26 10:39:12'),
(3527, 18, 'catalog/view/theme/nice/template/extension', '2022-11-26 10:39:12'),
(3528, 18, 'catalog/view/theme/nice/template/product', '2022-11-26 10:39:12'),
(3529, 18, 'system/library/nice/scssphp-1.10.3/bin/pscss', '2022-11-26 10:39:12'),
(3530, 18, 'system/library/nice/scssphp-1.10.3/src/Base', '2022-11-26 10:39:12'),
(3531, 18, 'system/library/nice/scssphp-1.10.3/src/Block', '2022-11-26 10:39:12'),
(3532, 18, 'system/library/nice/scssphp-1.10.3/src/Block.php', '2022-11-26 10:39:12'),
(3533, 18, 'system/library/nice/scssphp-1.10.3/src/Cache.php', '2022-11-26 10:39:12'),
(3534, 18, 'system/library/nice/scssphp-1.10.3/src/Colors.php', '2022-11-26 10:39:12'),
(3535, 18, 'system/library/nice/scssphp-1.10.3/src/CompilationResult.php', '2022-11-26 10:39:12'),
(3536, 18, 'system/library/nice/scssphp-1.10.3/src/Compiler', '2022-11-26 10:39:12'),
(3537, 18, 'system/library/nice/scssphp-1.10.3/src/Compiler.php', '2022-11-26 10:39:12'),
(3538, 18, 'system/library/nice/scssphp-1.10.3/src/Exception', '2022-11-26 10:39:12'),
(3539, 18, 'system/library/nice/scssphp-1.10.3/src/Formatter', '2022-11-26 10:39:12'),
(3540, 18, 'system/library/nice/scssphp-1.10.3/src/Formatter.php', '2022-11-26 10:39:12'),
(3541, 18, 'system/library/nice/scssphp-1.10.3/src/Logger', '2022-11-26 10:39:12'),
(3542, 18, 'system/library/nice/scssphp-1.10.3/src/Node', '2022-11-26 10:39:12'),
(3543, 18, 'system/library/nice/scssphp-1.10.3/src/Node.php', '2022-11-26 10:39:12'),
(3544, 18, 'system/library/nice/scssphp-1.10.3/src/OutputStyle.php', '2022-11-26 10:39:12'),
(3545, 18, 'system/library/nice/scssphp-1.10.3/src/Parser.php', '2022-11-26 10:39:12'),
(3546, 18, 'system/library/nice/scssphp-1.10.3/src/SourceMap', '2022-11-26 10:39:12'),
(3547, 18, 'system/library/nice/scssphp-1.10.3/src/Type.php', '2022-11-26 10:39:12'),
(3548, 18, 'system/library/nice/scssphp-1.10.3/src/Util', '2022-11-26 10:39:12'),
(3549, 18, 'system/library/nice/scssphp-1.10.3/src/Util.php', '2022-11-26 10:39:12'),
(3550, 18, 'system/library/nice/scssphp-1.10.3/src/ValueConverter.php', '2022-11-26 10:39:12'),
(3551, 18, 'system/library/nice/scssphp-1.10.3/src/Version.php', '2022-11-26 10:39:12'),
(3552, 18, 'system/library/nice/scssphp-1.10.3/src/Warn.php', '2022-11-26 10:39:12'),
(3553, 18, 'catalog/view/theme/nice/template/block/productpage_conversion.twig', '2022-11-26 10:39:12'),
(3554, 18, 'catalog/view/theme/nice/template/block/productpage_image.twig', '2022-11-26 10:39:12'),
(3555, 18, 'catalog/view/theme/nice/template/block/productpage_options.twig', '2022-11-26 10:39:12'),
(3556, 18, 'catalog/view/theme/nice/template/block/productpage_products_related.twig', '2022-11-26 10:39:12'),
(3557, 18, 'catalog/view/theme/nice/template/block/productpage_review_form.twig', '2022-11-26 10:39:12'),
(3558, 18, 'catalog/view/theme/nice/template/block/productpage_review_form_modal.twig', '2022-11-26 10:39:12'),
(3559, 18, 'catalog/view/theme/nice/template/common/block_home_top.twig', '2022-11-26 10:39:12'),
(3560, 18, 'catalog/view/theme/nice/template/common/cart.twig', '2022-11-26 10:39:12'),
(3561, 18, 'catalog/view/theme/nice/template/common/column_left.twig', '2022-11-26 10:39:12'),
(3562, 18, 'catalog/view/theme/nice/template/common/column_right.twig', '2022-11-26 10:39:12'),
(3563, 18, 'catalog/view/theme/nice/template/common/content_bottom.twig', '2022-11-26 10:39:12'),
(3564, 18, 'catalog/view/theme/nice/template/common/content_top.twig', '2022-11-26 10:39:12'),
(3565, 18, 'catalog/view/theme/nice/template/common/currency.twig', '2022-11-26 10:39:12'),
(3566, 18, 'catalog/view/theme/nice/template/common/footer.twig', '2022-11-26 10:39:12'),
(3567, 18, 'catalog/view/theme/nice/template/common/header.twig', '2022-11-26 10:39:12'),
(3568, 18, 'catalog/view/theme/nice/template/common/home.twig', '2022-11-26 10:39:12'),
(3569, 18, 'catalog/view/theme/nice/template/common/language.twig', '2022-11-26 10:39:12'),
(3570, 18, 'catalog/view/theme/nice/template/common/maintenance.twig', '2022-11-26 10:39:12'),
(3571, 18, 'catalog/view/theme/nice/template/common/menu.twig', '2022-11-26 10:39:12'),
(3572, 18, 'catalog/view/theme/nice/template/common/menu_top.twig', '2022-11-26 10:39:12'),
(3573, 18, 'catalog/view/theme/nice/template/common/nice_megamenu.twig', '2022-11-26 10:39:12'),
(3574, 18, 'catalog/view/theme/nice/template/common/search.twig', '2022-11-26 10:39:12'),
(3575, 18, 'catalog/view/theme/nice/template/common/success.twig', '2022-11-26 10:39:12'),
(3576, 18, 'catalog/view/theme/nice/template/extension/module', '2022-11-26 10:39:12'),
(3577, 18, 'catalog/view/theme/nice/template/product/category.twig', '2022-11-26 10:39:12'),
(3578, 18, 'catalog/view/theme/nice/template/product/compare.twig', '2022-11-26 10:39:12'),
(3579, 18, 'catalog/view/theme/nice/template/product/manufacturer_info.twig', '2022-11-26 10:39:12'),
(3580, 18, 'catalog/view/theme/nice/template/product/manufacturer_list.twig', '2022-11-26 10:39:12'),
(3581, 18, 'catalog/view/theme/nice/template/product/product.twig', '2022-11-26 10:39:12'),
(3582, 18, 'catalog/view/theme/nice/template/product/review.twig', '2022-11-26 10:39:12'),
(3583, 18, 'catalog/view/theme/nice/template/product/search.twig', '2022-11-26 10:39:12'),
(3584, 18, 'catalog/view/theme/nice/template/product/special.twig', '2022-11-26 10:39:12'),
(3585, 18, 'system/library/nice/scssphp-1.10.3/src/Base/Range.php', '2022-11-26 10:39:12'),
(3586, 18, 'system/library/nice/scssphp-1.10.3/src/Block/AtRootBlock.php', '2022-11-26 10:39:12'),
(3587, 18, 'system/library/nice/scssphp-1.10.3/src/Block/CallableBlock.php', '2022-11-26 10:39:12'),
(3588, 18, 'system/library/nice/scssphp-1.10.3/src/Block/ContentBlock.php', '2022-11-26 10:39:12'),
(3589, 18, 'system/library/nice/scssphp-1.10.3/src/Block/DirectiveBlock.php', '2022-11-26 10:39:12'),
(3590, 18, 'system/library/nice/scssphp-1.10.3/src/Block/EachBlock.php', '2022-11-26 10:39:12'),
(3591, 18, 'system/library/nice/scssphp-1.10.3/src/Block/ElseBlock.php', '2022-11-26 10:39:12'),
(3592, 18, 'system/library/nice/scssphp-1.10.3/src/Block/ElseifBlock.php', '2022-11-26 10:39:12'),
(3593, 18, 'system/library/nice/scssphp-1.10.3/src/Block/ForBlock.php', '2022-11-26 10:39:12'),
(3594, 18, 'system/library/nice/scssphp-1.10.3/src/Block/IfBlock.php', '2022-11-26 10:39:12'),
(3595, 18, 'system/library/nice/scssphp-1.10.3/src/Block/MediaBlock.php', '2022-11-26 10:39:12'),
(3596, 18, 'system/library/nice/scssphp-1.10.3/src/Block/NestedPropertyBlock.php', '2022-11-26 10:39:12'),
(3597, 18, 'system/library/nice/scssphp-1.10.3/src/Block/WhileBlock.php', '2022-11-26 10:39:12'),
(3598, 18, 'system/library/nice/scssphp-1.10.3/src/Compiler/CachedResult.php', '2022-11-26 10:39:12'),
(3599, 18, 'system/library/nice/scssphp-1.10.3/src/Compiler/Environment.php', '2022-11-26 10:39:12'),
(3600, 18, 'system/library/nice/scssphp-1.10.3/src/Exception/CompilerException.php', '2022-11-26 10:39:12'),
(713, 15, 'system/library/facebook', '2022-11-26 09:05:14'),
(714, 15, 'system/library/fblog.php', '2022-11-26 09:05:14'),
(715, 15, 'system/library/gmlog.php', '2022-11-26 09:05:14'),
(716, 15, 'system/library/google', '2022-11-26 09:05:14'),
(717, 15, 'system/library/facebook/Authentication', '2022-11-26 09:05:14'),
(718, 15, 'system/library/facebook/Exceptions', '2022-11-26 09:05:14'),
(719, 15, 'system/library/facebook/Facebook.php', '2022-11-26 09:05:14'),
(720, 15, 'system/library/facebook/FacebookApp.php', '2022-11-26 09:05:14'),
(721, 15, 'system/library/facebook/FacebookBatchRequest.php', '2022-11-26 09:05:14'),
(722, 15, 'system/library/facebook/FacebookBatchResponse.php', '2022-11-26 09:05:14'),
(723, 15, 'system/library/facebook/FacebookClient.php', '2022-11-26 09:05:14'),
(724, 15, 'system/library/facebook/FacebookRequest.php', '2022-11-26 09:05:14'),
(725, 15, 'system/library/facebook/FacebookResponse.php', '2022-11-26 09:05:14'),
(726, 15, 'system/library/facebook/FileUpload', '2022-11-26 09:05:14'),
(727, 15, 'system/library/facebook/GraphNodes', '2022-11-26 09:05:14'),
(728, 15, 'system/library/facebook/Helpers', '2022-11-26 09:05:14'),
(729, 15, 'system/library/facebook/Http', '2022-11-26 09:05:14'),
(730, 15, 'system/library/facebook/HttpClients', '2022-11-26 09:05:14'),
(731, 15, 'system/library/facebook/PersistentData', '2022-11-26 09:05:14'),
(732, 15, 'system/library/facebook/PseudoRandomString', '2022-11-26 09:05:14'),
(733, 15, 'system/library/facebook/SignedRequest.php', '2022-11-26 09:05:14'),
(734, 15, 'system/library/facebook/Url', '2022-11-26 09:05:14'),
(735, 15, 'system/library/facebook/autoload.php', '2022-11-26 09:05:14'),
(736, 15, 'system/library/facebook/polyfills.php', '2022-11-26 09:05:14'),
(737, 15, 'system/library/google/Google_Client.php', '2022-11-26 09:05:14'),
(738, 15, 'system/library/google/auth', '2022-11-26 09:05:14'),
(739, 15, 'system/library/google/cache', '2022-11-26 09:05:14'),
(740, 15, 'system/library/google/config.php', '2022-11-26 09:05:14'),
(741, 15, 'system/library/google/contrib', '2022-11-26 09:05:14'),
(742, 15, 'system/library/google/external', '2022-11-26 09:05:14'),
(743, 15, 'system/library/google/io', '2022-11-26 09:05:14'),
(744, 15, 'system/library/google/service', '2022-11-26 09:05:14'),
(745, 15, 'admin/controller/extension/module/social_login.php', '2022-11-26 09:05:14'),
(746, 15, 'admin/model/extension/module/social_login.php', '2022-11-26 09:05:14'),
(747, 15, 'catalog/controller/extension/module/social_login', '2022-11-26 09:05:14'),
(748, 15, 'catalog/controller/extension/module/social_login.php', '2022-11-26 09:05:14'),
(749, 15, 'catalog/model/extension/module/social_login', '2022-11-26 09:05:14'),
(750, 15, 'catalog/model/extension/module/social_login.php', '2022-11-26 09:05:14'),
(751, 15, 'system/library/facebook/Authentication/AccessToken.php', '2022-11-26 09:05:14'),
(752, 15, 'system/library/facebook/Authentication/AccessTokenMetadata.php', '2022-11-26 09:05:14'),
(753, 15, 'system/library/facebook/Authentication/OAuth2Client.php', '2022-11-26 09:05:14'),
(754, 15, 'system/library/facebook/Exceptions/FacebookAuthenticationException.php', '2022-11-26 09:05:14'),
(755, 15, 'system/library/facebook/Exceptions/FacebookAuthorizationException.php', '2022-11-26 09:05:14'),
(756, 15, 'system/library/facebook/Exceptions/FacebookClientException.php', '2022-11-26 09:05:14'),
(757, 15, 'system/library/facebook/Exceptions/FacebookOtherException.php', '2022-11-26 09:05:14'),
(758, 15, 'system/library/facebook/Exceptions/FacebookResponseException.php', '2022-11-26 09:05:14'),
(759, 15, 'system/library/facebook/Exceptions/FacebookResumableUploadException.php', '2022-11-26 09:05:14'),
(760, 15, 'system/library/facebook/Exceptions/FacebookSDKException.php', '2022-11-26 09:05:14'),
(761, 15, 'system/library/facebook/Exceptions/FacebookServerException.php', '2022-11-26 09:05:14'),
(762, 15, 'system/library/facebook/Exceptions/FacebookThrottleException.php', '2022-11-26 09:05:14'),
(763, 15, 'system/library/facebook/FileUpload/FacebookFile.php', '2022-11-26 09:05:14'),
(764, 15, 'system/library/facebook/FileUpload/FacebookResumableUploader.php', '2022-11-26 09:05:14'),
(765, 15, 'system/library/facebook/FileUpload/FacebookTransferChunk.php', '2022-11-26 09:05:14'),
(766, 15, 'system/library/facebook/FileUpload/FacebookVideo.php', '2022-11-26 09:05:14'),
(767, 15, 'system/library/facebook/FileUpload/Mimetypes.php', '2022-11-26 09:05:14'),
(768, 15, 'system/library/facebook/GraphNodes/Birthday.php', '2022-11-26 09:05:14'),
(769, 15, 'system/library/facebook/GraphNodes/Collection.php', '2022-11-26 09:05:14'),
(770, 15, 'system/library/facebook/GraphNodes/GraphAchievement.php', '2022-11-26 09:05:14'),
(771, 15, 'system/library/facebook/GraphNodes/GraphAlbum.php', '2022-11-26 09:05:14'),
(772, 15, 'system/library/facebook/GraphNodes/GraphApplication.php', '2022-11-26 09:05:14'),
(773, 15, 'system/library/facebook/GraphNodes/GraphCoverPhoto.php', '2022-11-26 09:05:14'),
(774, 15, 'system/library/facebook/GraphNodes/GraphEdge.php', '2022-11-26 09:05:14'),
(775, 15, 'system/library/facebook/GraphNodes/GraphEvent.php', '2022-11-26 09:05:14'),
(776, 15, 'system/library/facebook/GraphNodes/GraphGroup.php', '2022-11-26 09:05:14'),
(777, 15, 'system/library/facebook/GraphNodes/GraphList.php', '2022-11-26 09:05:14'),
(778, 15, 'system/library/facebook/GraphNodes/GraphLocation.php', '2022-11-26 09:05:14'),
(779, 15, 'system/library/facebook/GraphNodes/GraphNode.php', '2022-11-26 09:05:14'),
(780, 15, 'system/library/facebook/GraphNodes/GraphNodeFactory.php', '2022-11-26 09:05:14'),
(781, 15, 'system/library/facebook/GraphNodes/GraphObject.php', '2022-11-26 09:05:14'),
(782, 15, 'system/library/facebook/GraphNodes/GraphObjectFactory.php', '2022-11-26 09:05:14'),
(783, 15, 'system/library/facebook/GraphNodes/GraphPage.php', '2022-11-26 09:05:14'),
(784, 15, 'system/library/facebook/GraphNodes/GraphPicture.php', '2022-11-26 09:05:14'),
(785, 15, 'system/library/facebook/GraphNodes/GraphSessionInfo.php', '2022-11-26 09:05:15'),
(786, 15, 'system/library/facebook/GraphNodes/GraphUser.php', '2022-11-26 09:05:15'),
(787, 15, 'system/library/facebook/Helpers/FacebookCanvasHelper.php', '2022-11-26 09:05:15'),
(788, 15, 'system/library/facebook/Helpers/FacebookJavaScriptHelper.php', '2022-11-26 09:05:15'),
(789, 15, 'system/library/facebook/Helpers/FacebookPageTabHelper.php', '2022-11-26 09:05:15'),
(790, 15, 'system/library/facebook/Helpers/FacebookRedirectLoginHelper.php', '2022-11-26 09:05:15'),
(791, 15, 'system/library/facebook/Helpers/FacebookSignedRequestFromInputHelper.php', '2022-11-26 09:05:15'),
(792, 15, 'system/library/facebook/Http/GraphRawResponse.php', '2022-11-26 09:05:15'),
(793, 15, 'system/library/facebook/Http/RequestBodyInterface.php', '2022-11-26 09:05:15'),
(794, 15, 'system/library/facebook/Http/RequestBodyMultipart.php', '2022-11-26 09:05:15'),
(795, 15, 'system/library/facebook/Http/RequestBodyUrlEncoded.php', '2022-11-26 09:05:15'),
(796, 15, 'system/library/facebook/HttpClients/FacebookCurl.php', '2022-11-26 09:05:15'),
(797, 15, 'system/library/facebook/HttpClients/FacebookCurlHttpClient.php', '2022-11-26 09:05:15'),
(798, 15, 'system/library/facebook/HttpClients/FacebookGuzzleHttpClient.php', '2022-11-26 09:05:15'),
(799, 15, 'system/library/facebook/HttpClients/FacebookHttpClientInterface.php', '2022-11-26 09:05:15'),
(800, 15, 'system/library/facebook/HttpClients/FacebookStream.php', '2022-11-26 09:05:15'),
(801, 15, 'system/library/facebook/HttpClients/FacebookStreamHttpClient.php', '2022-11-26 09:05:15'),
(802, 15, 'system/library/facebook/HttpClients/HttpClientsFactory.php', '2022-11-26 09:05:15'),
(803, 15, 'system/library/facebook/HttpClients/certs', '2022-11-26 09:05:15'),
(804, 15, 'system/library/facebook/PersistentData/FacebookMemoryPersistentDataHandler.php', '2022-11-26 09:05:15'),
(805, 15, 'system/library/facebook/PersistentData/FacebookSessionPersistentDataHandler.php', '2022-11-26 09:05:15'),
(806, 15, 'system/library/facebook/PersistentData/PersistentDataFactory.php', '2022-11-26 09:05:15'),
(807, 15, 'system/library/facebook/PersistentData/PersistentDataInterface.php', '2022-11-26 09:05:15'),
(808, 15, 'system/library/facebook/PseudoRandomString/McryptPseudoRandomStringGenerator.php', '2022-11-26 09:05:15'),
(809, 15, 'system/library/facebook/PseudoRandomString/OpenSslPseudoRandomStringGenerator.php', '2022-11-26 09:05:15'),
(810, 15, 'system/library/facebook/PseudoRandomString/PseudoRandomStringGeneratorFactory.php', '2022-11-26 09:05:15'),
(811, 15, 'system/library/facebook/PseudoRandomString/PseudoRandomStringGeneratorInterface.php', '2022-11-26 09:05:15'),
(812, 15, 'system/library/facebook/PseudoRandomString/PseudoRandomStringGeneratorTrait.php', '2022-11-26 09:05:15'),
(813, 15, 'system/library/facebook/PseudoRandomString/RandomBytesPseudoRandomStringGenerator.php', '2022-11-26 09:05:15'),
(814, 15, 'system/library/facebook/PseudoRandomString/UrandomPseudoRandomStringGenerator.php', '2022-11-26 09:05:15'),
(815, 15, 'system/library/facebook/Url/FacebookUrlDetectionHandler.php', '2022-11-26 09:05:15'),
(816, 15, 'system/library/facebook/Url/FacebookUrlManipulator.php', '2022-11-26 09:05:15'),
(817, 15, 'system/library/facebook/Url/UrlDetectionInterface.php', '2022-11-26 09:05:15'),
(818, 15, 'system/library/google/auth/Google_AssertionCredentials.php', '2022-11-26 09:05:15'),
(819, 15, 'system/library/google/auth/Google_Auth.php', '2022-11-26 09:05:15'),
(820, 15, 'system/library/google/auth/Google_AuthNone.php', '2022-11-26 09:05:15'),
(821, 15, 'system/library/google/auth/Google_LoginTicket.php', '2022-11-26 09:05:15'),
(822, 15, 'system/library/google/auth/Google_OAuth2.php', '2022-11-26 09:05:15'),
(823, 15, 'system/library/google/auth/Google_P12Signer.php', '2022-11-26 09:05:15'),
(824, 15, 'system/library/google/auth/Google_PemVerifier.php', '2022-11-26 09:05:15'),
(825, 15, 'system/library/google/auth/Google_Signer.php', '2022-11-26 09:05:15'),
(826, 15, 'system/library/google/auth/Google_Verifier.php', '2022-11-26 09:05:15'),
(827, 15, 'system/library/google/cache/Google_ApcCache.php', '2022-11-26 09:05:15'),
(828, 15, 'system/library/google/cache/Google_Cache.php', '2022-11-26 09:05:15'),
(829, 15, 'system/library/google/cache/Google_FileCache.php', '2022-11-26 09:05:15'),
(830, 15, 'system/library/google/cache/Google_MemcacheCache.php', '2022-11-26 09:05:15'),
(831, 15, 'system/library/google/contrib/Google_AdexchangebuyerService.php', '2022-11-26 09:05:15'),
(832, 15, 'system/library/google/contrib/Google_AdsenseService.php', '2022-11-26 09:05:15'),
(833, 15, 'system/library/google/contrib/Google_AdsensehostService.php', '2022-11-26 09:05:15'),
(834, 15, 'system/library/google/contrib/Google_AnalyticsService.php', '2022-11-26 09:05:15'),
(835, 15, 'system/library/google/contrib/Google_BigqueryService.php', '2022-11-26 09:05:15'),
(836, 15, 'system/library/google/contrib/Google_BloggerService.php', '2022-11-26 09:05:15'),
(837, 15, 'system/library/google/contrib/Google_BooksService.php', '2022-11-26 09:05:15'),
(838, 15, 'system/library/google/contrib/Google_CalendarService.php', '2022-11-26 09:05:15'),
(839, 15, 'system/library/google/contrib/Google_ComputeService.php', '2022-11-26 09:05:15'),
(840, 15, 'system/library/google/contrib/Google_CustomsearchService.php', '2022-11-26 09:05:15'),
(841, 15, 'system/library/google/contrib/Google_DriveService.php', '2022-11-26 09:05:15'),
(842, 15, 'system/library/google/contrib/Google_FreebaseService.php', '2022-11-26 09:05:15'),
(843, 15, 'system/library/google/contrib/Google_FusiontablesService.php', '2022-11-26 09:05:15'),
(844, 15, 'system/library/google/contrib/Google_GanService.php', '2022-11-26 09:05:15'),
(845, 15, 'system/library/google/contrib/Google_LatitudeService.php', '2022-11-26 09:05:15'),
(846, 15, 'system/library/google/contrib/Google_LicensingService.php', '2022-11-26 09:05:15'),
(847, 15, 'system/library/google/contrib/Google_ModeratorService.php', '2022-11-26 09:05:15'),
(848, 15, 'system/library/google/contrib/Google_Oauth2Service.php', '2022-11-26 09:05:15'),
(849, 15, 'system/library/google/contrib/Google_OrkutService.php', '2022-11-26 09:05:15'),
(850, 15, 'system/library/google/contrib/Google_PagespeedonlineService.php', '2022-11-26 09:05:15'),
(851, 15, 'system/library/google/contrib/Google_PlusMomentsService.php', '2022-11-26 09:05:15'),
(852, 15, 'system/library/google/contrib/Google_PlusService.php', '2022-11-26 09:05:15'),
(853, 15, 'system/library/google/contrib/Google_PredictionService.php', '2022-11-26 09:05:15'),
(854, 15, 'system/library/google/contrib/Google_ShoppingService.php', '2022-11-26 09:05:15'),
(855, 15, 'system/library/google/contrib/Google_SiteVerificationService.php', '2022-11-26 09:05:15'),
(856, 15, 'system/library/google/contrib/Google_StorageService.php', '2022-11-26 09:05:15'),
(857, 15, 'system/library/google/contrib/Google_TaskqueueService.php', '2022-11-26 09:05:15'),
(858, 15, 'system/library/google/contrib/Google_TasksService.php', '2022-11-26 09:05:15'),
(859, 15, 'system/library/google/contrib/Google_TranslateService.php', '2022-11-26 09:05:15'),
(860, 15, 'system/library/google/contrib/Google_UrlshortenerService.php', '2022-11-26 09:05:15'),
(861, 15, 'system/library/google/contrib/Google_WebfontsService.php', '2022-11-26 09:05:15'),
(862, 15, 'system/library/google/contrib/Google_YoutubeService.php', '2022-11-26 09:05:15'),
(863, 15, 'system/library/google/external/URITemplateParser.php', '2022-11-26 09:05:15'),
(864, 15, 'system/library/google/io/Google_CacheParser.php', '2022-11-26 09:05:15'),
(865, 15, 'system/library/google/io/Google_CurlIO.php', '2022-11-26 09:05:15'),
(866, 15, 'system/library/google/io/Google_HttpRequest.php', '2022-11-26 09:05:15'),
(867, 15, 'system/library/google/io/Google_IO.php', '2022-11-26 09:05:15'),
(868, 15, 'system/library/google/io/Google_REST.php', '2022-11-26 09:05:15'),
(869, 15, 'system/library/google/io/cacerts.pem', '2022-11-26 09:05:15'),
(870, 15, 'system/library/google/service/Google_BatchRequest.php', '2022-11-26 09:05:15'),
(871, 15, 'system/library/google/service/Google_MediaFileUpload.php', '2022-11-26 09:05:15'),
(872, 15, 'system/library/google/service/Google_Model.php', '2022-11-26 09:05:15'),
(873, 15, 'system/library/google/service/Google_Service.php', '2022-11-26 09:05:15'),
(874, 15, 'system/library/google/service/Google_ServiceResource.php', '2022-11-26 09:05:15'),
(875, 15, 'system/library/google/service/Google_Utils.php', '2022-11-26 09:05:15'),
(876, 15, 'admin/language/en-gb/extension/module/social_login.php', '2022-11-26 09:05:15'),
(877, 15, 'admin/view/template/extension/module/social_login.twig', '2022-11-26 09:05:15'),
(878, 15, 'catalog/controller/extension/module/social_login/account', '2022-11-26 09:05:15'),
(879, 15, 'catalog/language/en-gb/extension/module/social_login', '2022-11-26 09:05:15'),
(880, 15, 'catalog/language/en-gb/extension/module/social_login.php', '2022-11-26 09:05:15'),
(881, 15, 'catalog/model/extension/module/social_login/account.php', '2022-11-26 09:05:15'),
(882, 15, 'catalog/view/theme/default/image/fb.png', '2022-11-26 09:05:15'),
(883, 15, 'catalog/view/theme/default/image/google.png', '2022-11-26 09:05:15'),
(884, 15, 'system/library/facebook/HttpClients/certs/DigiCertHighAssuranceEVRootCA.pem', '2022-11-26 09:05:15'),
(885, 15, 'catalog/controller/extension/module/social_login/account/fb.php', '2022-11-26 09:05:15'),
(886, 15, 'catalog/controller/extension/module/social_login/account/google.php', '2022-11-26 09:05:15'),
(887, 15, 'catalog/language/en-gb/extension/module/social_login/account', '2022-11-26 09:05:15'),
(888, 15, 'catalog/language/en-gb/extension/module/social_login/account/social.php', '2022-11-26 09:05:15'),
(889, 15, 'catalog/view/theme/default/template/extension/module/social_login', '2022-11-26 09:05:15'),
(890, 15, 'catalog/view/theme/default/template/extension/module/social_login.twig', '2022-11-26 09:05:15'),
(891, 15, 'catalog/view/theme/default/template/extension/module/social_login/fb.twig', '2022-11-26 09:05:15'),
(1254, 17, 'image/catalog/d_quickcheckout', '2022-11-26 09:53:33'),
(1255, 17, 'image/catalog/d_social_login', '2022-11-26 09:53:33'),
(1256, 17, 'system/config/d_event_manager.php', '2022-11-26 09:53:33'),
(1257, 17, 'system/config/d_quickcheckout', '2022-11-26 09:53:33'),
(1258, 17, 'system/config/d_quickcheckout_layout', '2022-11-26 09:53:33'),
(1259, 17, 'system/config/d_social_login', '2022-11-26 09:53:33'),
(1260, 17, 'system/config/d_social_login.php', '2022-11-26 09:53:33'),
(1261, 17, 'system/config/d_validator.php', '2022-11-26 09:53:33'),
(1262, 17, 'system/library/d_browser.php', '2022-11-26 09:53:33'),
(1263, 17, 'system/library/d_simple_html_dom.php', '2022-11-26 09:53:33'),
(1264, 17, 'system/library/d_social_login', '2022-11-26 09:53:33'),
(1265, 17, 'system/library/libphonenumber', '2022-11-26 09:53:33'),
(1266, 17, 'admin/controller/extension/d_shopunity', '2022-11-26 09:53:33'),
(1267, 17, 'admin/model/extension/d_admin_style', '2022-11-26 09:53:33'),
(1268, 17, 'admin/model/extension/d_shopunity', '2022-11-26 09:53:33'),
(1269, 17, 'admin/view/image/d_admin_style', '2022-11-26 09:53:33'),
(1270, 17, 'admin/view/image/d_quickcheckout', '2022-11-26 09:53:33'),
(1271, 17, 'admin/view/image/d_social_login', '2022-11-26 09:53:33'),
(1272, 17, 'admin/view/javascript/d_admin_style', '2022-11-26 09:53:33'),
(1273, 17, 'admin/view/javascript/d_alertify', '2022-11-26 09:53:33'),
(1274, 17, 'admin/view/javascript/d_bootstrap_colorpicker', '2022-11-26 09:53:33'),
(1275, 17, 'admin/view/javascript/d_bootstrap_select', '2022-11-26 09:53:33'),
(1276, 17, 'admin/view/javascript/d_bootstrap_switch', '2022-11-26 09:53:33'),
(1277, 17, 'admin/view/javascript/d_bootstrap_tour', '2022-11-26 09:53:33'),
(1278, 17, 'admin/view/javascript/d_riot', '2022-11-26 09:53:33'),
(1279, 17, 'admin/view/javascript/d_social_login', '2022-11-26 09:53:33'),
(1280, 17, 'admin/view/javascript/d_tinysort', '2022-11-26 09:53:33'),
(1281, 17, 'admin/view/stylesheet/d_admin_style', '2022-11-26 09:53:33'),
(1282, 17, 'admin/view/stylesheet/d_bootstrap_extra', '2022-11-26 09:53:33'),
(1283, 17, 'admin/view/stylesheet/d_social_login.css', '2022-11-26 09:53:33'),
(1284, 17, 'catalog/controller/extension/d_quickcheckout', '2022-11-26 09:53:33'),
(1285, 17, 'catalog/controller/extension/d_quickcheckout_captcha', '2022-11-26 09:53:33'),
(1286, 17, 'catalog/model/extension/d_quickcheckout', '2022-11-26 09:53:33'),
(1287, 17, 'catalog/view/javascript/d_alertify', '2022-11-26 09:53:33'),
(1288, 17, 'catalog/view/javascript/d_bootstrap_colorpicker', '2022-11-26 09:53:34'),
(1289, 17, 'catalog/view/javascript/d_bootstrap_select', '2022-11-26 09:53:34'),
(1290, 17, 'catalog/view/javascript/d_bootstrap_switch', '2022-11-26 09:53:34'),
(1291, 17, 'catalog/view/javascript/d_bootstrap_tour', '2022-11-26 09:53:34'),
(1292, 17, 'catalog/view/javascript/d_quickcheckout', '2022-11-26 09:53:34'),
(1293, 17, 'catalog/view/javascript/d_riot', '2022-11-26 09:53:34'),
(1294, 17, 'catalog/view/javascript/d_social_login', '2022-11-26 09:53:34'),
(1295, 17, 'catalog/view/javascript/d_tinysort', '2022-11-26 09:53:34'),
(1296, 17, 'image/catalog/d_quickcheckout/payment', '2022-11-26 09:53:34'),
(1297, 17, 'image/catalog/d_quickcheckout/step', '2022-11-26 09:53:34'),
(1298, 17, 'image/catalog/d_social_login/google.svg', '2022-11-26 09:53:34'),
(1299, 17, 'image/catalog/d_social_login/linkedin.svg', '2022-11-26 09:53:34'),
(1300, 17, 'image/catalog/d_social_login/steam.svg', '2022-11-26 09:53:34'),
(1301, 17, 'image/catalog/d_social_login/yahoo.svg', '2022-11-26 09:53:34'),
(1302, 17, 'system/config/d_quickcheckout/account.php', '2022-11-26 09:53:34'),
(1303, 17, 'system/config/d_quickcheckout/cart.php', '2022-11-26 09:53:34'),
(1304, 17, 'system/config/d_quickcheckout/confirm.php', '2022-11-26 09:53:34'),
(1305, 17, 'system/config/d_quickcheckout/custom.php', '2022-11-26 09:53:34'),
(1306, 17, 'system/config/d_quickcheckout/payment.php', '2022-11-26 09:53:34'),
(1307, 17, 'system/config/d_quickcheckout/payment_address.php', '2022-11-26 09:53:34'),
(1308, 17, 'system/config/d_quickcheckout/payment_method.php', '2022-11-26 09:53:34'),
(1309, 17, 'system/config/d_quickcheckout/shipping_address.php', '2022-11-26 09:53:34'),
(1310, 17, 'system/config/d_quickcheckout/shipping_method.php', '2022-11-26 09:53:34'),
(1311, 17, 'system/config/d_quickcheckout_layout/default.php', '2022-11-26 09:53:34'),
(1312, 17, 'system/config/d_social_login/google.php', '2022-11-26 09:53:34'),
(1313, 17, 'system/config/d_social_login/linkedin.php', '2022-11-26 09:53:34'),
(1314, 17, 'system/config/d_social_login/steam.php', '2022-11-26 09:53:34'),
(1315, 17, 'system/config/d_social_login/yahoo.php', '2022-11-26 09:53:34'),
(1316, 17, 'system/library/d_social_login/hybrid', '2022-11-26 09:53:34'),
(1317, 17, 'system/library/libphonenumber/alternateformatscountrycodeset.php', '2022-11-26 09:53:34'),
(1318, 17, 'system/library/libphonenumber/asyoutypeformatter.php', '2022-11-26 09:53:34'),
(1319, 17, 'system/library/libphonenumber/carrier', '2022-11-26 09:53:34'),
(1320, 17, 'system/library/libphonenumber/countrycodesource.php', '2022-11-26 09:53:34'),
(1321, 17, 'system/library/libphonenumber/countrycodetoregioncodemap.php', '2022-11-26 09:53:34'),
(1322, 17, 'system/library/libphonenumber/countrycodetoregioncodemapfortesting.php', '2022-11-26 09:53:34'),
(1323, 17, 'system/library/libphonenumber/data', '2022-11-26 09:53:34'),
(1324, 17, 'system/library/libphonenumber/defaultmetadataloader.php', '2022-11-26 09:53:34'),
(1325, 17, 'system/library/libphonenumber/geocoding', '2022-11-26 09:53:34'),
(1326, 17, 'system/library/libphonenumber/leniency', '2022-11-26 09:53:34'),
(1327, 17, 'system/library/libphonenumber/leniency.php', '2022-11-26 09:53:34'),
(1328, 17, 'system/library/libphonenumber/matcher.php', '2022-11-26 09:53:34'),
(1329, 17, 'system/library/libphonenumber/matcherapiinterface.php', '2022-11-26 09:53:34'),
(1330, 17, 'system/library/libphonenumber/matchtype.php', '2022-11-26 09:53:34'),
(1331, 17, 'system/library/libphonenumber/metadataloaderinterface.php', '2022-11-26 09:53:34'),
(1332, 17, 'system/library/libphonenumber/metadatasourceinterface.php', '2022-11-26 09:53:34'),
(1333, 17, 'system/library/libphonenumber/multifilemetadatasourceimpl.php', '2022-11-26 09:53:34'),
(1334, 17, 'system/library/libphonenumber/numberformat.php', '2022-11-26 09:53:34'),
(1335, 17, 'system/library/libphonenumber/numberparseexception.php', '2022-11-26 09:53:34'),
(1336, 17, 'system/library/libphonenumber/phonemetadata.php', '2022-11-26 09:53:34'),
(1337, 17, 'system/library/libphonenumber/phonenumber.php', '2022-11-26 09:53:34'),
(1338, 17, 'system/library/libphonenumber/phonenumberdesc.php', '2022-11-26 09:53:34'),
(1339, 17, 'system/library/libphonenumber/phonenumberformat.php', '2022-11-26 09:53:34'),
(1340, 17, 'system/library/libphonenumber/phonenumbermatch.php', '2022-11-26 09:53:34'),
(1341, 17, 'system/library/libphonenumber/phonenumbermatcher.php', '2022-11-26 09:53:34'),
(1342, 17, 'system/library/libphonenumber/phonenumbertocarriermapper.php', '2022-11-26 09:53:34'),
(1343, 17, 'system/library/libphonenumber/phonenumbertotimezonesmapper.php', '2022-11-26 09:53:34'),
(1344, 17, 'system/library/libphonenumber/phonenumbertype.php', '2022-11-26 09:53:34'),
(1345, 17, 'system/library/libphonenumber/phonenumberutil.php', '2022-11-26 09:53:34'),
(1346, 17, 'system/library/libphonenumber/phonnumberutil.php', '2022-11-26 09:53:34'),
(1347, 17, 'system/library/libphonenumber/prefixmapper', '2022-11-26 09:53:34'),
(1348, 17, 'system/library/libphonenumber/regexbasedmatcher.php', '2022-11-26 09:53:34'),
(1349, 17, 'system/library/libphonenumber/regioncode.php', '2022-11-26 09:53:34'),
(1350, 17, 'system/library/libphonenumber/shortnumbercost.php', '2022-11-26 09:53:34'),
(1351, 17, 'system/library/libphonenumber/shortnumberinfo.php', '2022-11-26 09:53:34'),
(1352, 17, 'system/library/libphonenumber/shortnumbersregioncodeset.php', '2022-11-26 09:53:34'),
(1353, 17, 'system/library/libphonenumber/timezone', '2022-11-26 09:53:34'),
(1354, 17, 'system/library/libphonenumber/validationresult.php', '2022-11-26 09:53:34'),
(1355, 17, 'admin/controller/extension/d_shopunity/d_validator.php', '2022-11-26 09:53:34'),
(1356, 17, 'admin/controller/extension/module/d_quickcheckout.php', '2022-11-26 09:53:34'),
(1357, 17, 'admin/controller/extension/module/d_social_login.php', '2022-11-26 09:53:34'),
(1358, 17, 'admin/language/en-gb/extension/d_admin_style', '2022-11-26 09:53:34'),
(1359, 17, 'admin/language/en-gb/extension/d_shopunity', '2022-11-26 09:53:34'),
(1360, 17, 'admin/model/extension/d_admin_style/style.php', '2022-11-26 09:53:34'),
(1361, 17, 'admin/model/extension/d_opencart_patch/cache.php', '2022-11-26 09:53:34'),
(1362, 17, 'admin/model/extension/d_opencart_patch/event.php', '2022-11-26 09:53:34'),
(1363, 17, 'admin/model/extension/d_opencart_patch/extension.php', '2022-11-26 09:53:34'),
(1364, 17, 'admin/model/extension/d_opencart_patch/load.php', '2022-11-26 09:53:34'),
(1365, 17, 'admin/model/extension/d_opencart_patch/modification.php', '2022-11-26 09:53:34'),
(1366, 17, 'admin/model/extension/d_opencart_patch/module.php', '2022-11-26 09:53:34'),
(1367, 17, 'admin/model/extension/d_opencart_patch/setting.php', '2022-11-26 09:53:34'),
(1368, 17, 'admin/model/extension/d_opencart_patch/store.php', '2022-11-26 09:53:34'),
(1369, 17, 'admin/model/extension/d_opencart_patch/url.php', '2022-11-26 09:53:34'),
(1370, 17, 'admin/model/extension/d_opencart_patch/user.php', '2022-11-26 09:53:34'),
(1371, 17, 'admin/model/extension/d_opencart_patch/vqmod.php', '2022-11-26 09:53:34'),
(1372, 17, 'admin/model/extension/d_shopunity/d_validator.php', '2022-11-26 09:53:34'),
(1373, 17, 'admin/model/extension/module/d_event_manager.php', '2022-11-26 09:53:34'),
(1374, 17, 'admin/model/extension/module/d_quickcheckout.php', '2022-11-26 09:53:34'),
(1375, 17, 'admin/model/extension/module/d_social_login.php', '2022-11-26 09:53:34'),
(1376, 17, 'admin/model/extension/module/d_twig_manager.php', '2022-11-26 09:53:34'),
(1377, 17, 'admin/view/image/d_admin_style/checkmark.png', '2022-11-26 09:53:34'),
(1378, 17, 'admin/view/image/d_admin_style/checkmark.svg', '2022-11-26 09:53:34'),
(1379, 17, 'admin/view/image/d_quickcheckout/bg.svg', '2022-11-26 09:53:34'),
(1380, 17, 'admin/view/image/d_quickcheckout/icons', '2022-11-26 09:53:34'),
(1381, 17, 'admin/view/image/d_quickcheckout/logo.svg', '2022-11-26 09:53:34'),
(1382, 17, 'admin/view/image/d_social_login/500px', '2022-11-26 09:53:34'),
(1383, 17, 'admin/view/image/d_social_login/amazon', '2022-11-26 09:53:34'),
(1384, 17, 'admin/view/image/d_social_login/bg.png', '2022-11-26 09:53:34'),
(1385, 17, 'admin/view/image/d_social_login/bg.svg', '2022-11-26 09:53:34'),
(1386, 17, 'admin/view/image/d_social_login/dribbble', '2022-11-26 09:53:34'),
(1387, 17, 'admin/view/image/d_social_login/extra_step.png', '2022-11-26 09:53:34'),
(1388, 17, 'admin/view/image/d_social_login/facebook', '2022-11-26 09:53:34'),
(1389, 17, 'admin/view/image/d_social_login/foursquare', '2022-11-26 09:53:34'),
(1390, 17, 'admin/view/image/d_social_login/github', '2022-11-26 09:53:34'),
(1391, 17, 'admin/view/image/d_social_login/google', '2022-11-26 09:53:34'),
(1392, 17, 'admin/view/image/d_social_login/icons', '2022-11-26 09:53:34'),
(1393, 17, 'admin/view/image/d_social_login/instagram', '2022-11-26 09:53:34'),
(1394, 17, 'admin/view/image/d_social_login/lastfm', '2022-11-26 09:53:34'),
(1395, 17, 'admin/view/image/d_social_login/linkedin', '2022-11-26 09:53:34'),
(1396, 17, 'admin/view/image/d_social_login/live', '2022-11-26 09:53:34'),
(1397, 17, 'admin/view/image/d_social_login/logo.svg', '2022-11-26 09:53:34'),
(1398, 17, 'admin/view/image/d_social_login/odnoklassniki', '2022-11-26 09:53:34'),
(1399, 17, 'admin/view/image/d_social_login/paypal', '2022-11-26 09:53:34'),
(1400, 17, 'admin/view/image/d_social_login/tumblr', '2022-11-26 09:53:34'),
(1401, 17, 'admin/view/image/d_social_login/twitter', '2022-11-26 09:53:34'),
(1402, 17, 'admin/view/image/d_social_login/vkontakte', '2022-11-26 09:53:34'),
(1403, 17, 'admin/view/image/d_social_login/yahoo', '2022-11-26 09:53:34'),
(1404, 17, 'admin/view/image/d_social_login/yandex', '2022-11-26 09:53:34'),
(1405, 17, 'admin/view/javascript/d_admin_style/gulp', '2022-11-26 09:53:34'),
(1406, 17, 'admin/view/javascript/d_alertify/alertify.js', '2022-11-26 09:53:34'),
(1407, 17, 'admin/view/javascript/d_alertify/alertify.min.js', '2022-11-26 09:53:34'),
(1408, 17, 'admin/view/javascript/d_alertify/css', '2022-11-26 09:53:34'),
(1409, 17, 'admin/view/javascript/d_bootstrap_colorpicker/css', '2022-11-26 09:53:34'),
(1410, 17, 'admin/view/javascript/d_bootstrap_colorpicker/img', '2022-11-26 09:53:34'),
(1411, 17, 'admin/view/javascript/d_bootstrap_colorpicker/js', '2022-11-26 09:53:34'),
(1412, 17, 'admin/view/javascript/d_bootstrap_select/css', '2022-11-26 09:53:34'),
(1413, 17, 'admin/view/javascript/d_bootstrap_select/js', '2022-11-26 09:53:34'),
(1414, 17, 'admin/view/javascript/d_bootstrap_switch/css', '2022-11-26 09:53:34'),
(1415, 17, 'admin/view/javascript/d_bootstrap_switch/js', '2022-11-26 09:53:34'),
(1416, 17, 'admin/view/javascript/d_bootstrap_tour/css', '2022-11-26 09:53:34'),
(1417, 17, 'admin/view/javascript/d_bootstrap_tour/js', '2022-11-26 09:53:34'),
(1418, 17, 'admin/view/javascript/d_riot/package-lock.json', '2022-11-26 09:53:34'),
(1419, 17, 'admin/view/javascript/d_riot/package.json', '2022-11-26 09:53:34'),
(1420, 17, 'admin/view/javascript/d_riot/riot+compiler.js', '2022-11-26 09:53:34'),
(1421, 17, 'admin/view/javascript/d_riot/riot+compiler.min.js', '2022-11-26 09:53:34'),
(1422, 17, 'admin/view/javascript/d_riot/riot.csp.js', '2022-11-26 09:53:34'),
(1423, 17, 'admin/view/javascript/d_riot/riot.js', '2022-11-26 09:53:34'),
(1424, 17, 'admin/view/javascript/d_riot/riot.min.js', '2022-11-26 09:53:34'),
(1425, 17, 'admin/view/javascript/d_riot/riotcompiler.js', '2022-11-26 09:53:34'),
(1426, 17, 'admin/view/javascript/d_riot/riotcompiler.min.js', '2022-11-26 09:53:34'),
(1427, 17, 'admin/view/javascript/d_social_login/bootstrap-sortable.js', '2022-11-26 09:53:34');
INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1428, 17, 'admin/view/javascript/d_tinysort/jquery.tinysort.js', '2022-11-26 09:53:34'),
(1429, 17, 'admin/view/javascript/d_tinysort/jquery.tinysort.min.js', '2022-11-26 09:53:34'),
(1430, 17, 'admin/view/javascript/d_tinysort/tinysort.charorder.js', '2022-11-26 09:53:34'),
(1431, 17, 'admin/view/javascript/d_tinysort/tinysort.charorder.min.js', '2022-11-26 09:53:34'),
(1432, 17, 'admin/view/javascript/d_tinysort/tinysort.js', '2022-11-26 09:53:34'),
(1433, 17, 'admin/view/javascript/d_tinysort/tinysort.min.js', '2022-11-26 09:53:34'),
(1434, 17, 'admin/view/stylesheet/d_admin_style/core', '2022-11-26 09:53:34'),
(1435, 17, 'admin/view/stylesheet/d_admin_style/themes', '2022-11-26 09:53:34'),
(1436, 17, 'admin/view/stylesheet/d_bootstrap_extra/bootstrap.css', '2022-11-26 09:53:34'),
(1437, 17, 'admin/view/template/extension/d_admin_style', '2022-11-26 09:53:34'),
(1438, 17, 'admin/view/template/extension/d_quickcheckout', '2022-11-26 09:53:34'),
(1439, 17, 'admin/view/template/extension/d_shopunity', '2022-11-26 09:53:34'),
(1440, 17, 'catalog/controller/extension/d_quickcheckout/account.php', '2022-11-26 09:53:34'),
(1441, 17, 'catalog/controller/extension/d_quickcheckout/cart.php', '2022-11-26 09:53:34'),
(1442, 17, 'catalog/controller/extension/d_quickcheckout/confirm.php', '2022-11-26 09:53:34'),
(1443, 17, 'catalog/controller/extension/d_quickcheckout/custom.php', '2022-11-26 09:53:34'),
(1444, 17, 'catalog/controller/extension/d_quickcheckout/payment.php', '2022-11-26 09:53:34'),
(1445, 17, 'catalog/controller/extension/d_quickcheckout/payment_address.php', '2022-11-26 09:53:34'),
(1446, 17, 'catalog/controller/extension/d_quickcheckout/payment_method.php', '2022-11-26 09:53:34'),
(1447, 17, 'catalog/controller/extension/d_quickcheckout/shipping_address.php', '2022-11-26 09:53:34'),
(1448, 17, 'catalog/controller/extension/d_quickcheckout/shipping_method.php', '2022-11-26 09:53:34'),
(1449, 17, 'catalog/controller/extension/d_quickcheckout_captcha/basic_captcha.php', '2022-11-26 09:53:34'),
(1450, 17, 'catalog/controller/extension/module/d_quickcheckout.php', '2022-11-26 09:53:34'),
(1451, 17, 'catalog/controller/extension/module/d_social_login.php', '2022-11-26 09:53:34'),
(1452, 17, 'catalog/language/en-gb/extension/d_quickcheckout', '2022-11-26 09:53:34'),
(1453, 17, 'catalog/model/extension/d_opencart_patch/load.php', '2022-11-26 09:53:34'),
(1454, 17, 'catalog/model/extension/d_opencart_patch/user.php', '2022-11-26 09:53:34'),
(1455, 17, 'catalog/model/extension/d_quickcheckout/account.php', '2022-11-26 09:53:34'),
(1456, 17, 'catalog/model/extension/d_quickcheckout/address.php', '2022-11-26 09:53:34'),
(1457, 17, 'catalog/model/extension/d_quickcheckout/error.php', '2022-11-26 09:53:34'),
(1458, 17, 'catalog/model/extension/d_quickcheckout/method.php', '2022-11-26 09:53:34'),
(1459, 17, 'catalog/model/extension/d_quickcheckout/order.php', '2022-11-26 09:53:34'),
(1460, 17, 'catalog/model/extension/d_quickcheckout/page.php', '2022-11-26 09:53:34'),
(1461, 17, 'catalog/model/extension/d_quickcheckout/store.php', '2022-11-26 09:53:34'),
(1462, 17, 'catalog/model/extension/d_quickcheckout/view.php', '2022-11-26 09:53:34'),
(1463, 17, 'catalog/model/extension/module/d_social_login.php', '2022-11-26 09:53:34'),
(1464, 17, 'catalog/view/javascript/d_alertify/alertify.js', '2022-11-26 09:53:34'),
(1465, 17, 'catalog/view/javascript/d_alertify/alertify.min.js', '2022-11-26 09:53:34'),
(1466, 17, 'catalog/view/javascript/d_alertify/css', '2022-11-26 09:53:34'),
(1467, 17, 'catalog/view/javascript/d_bootstrap_colorpicker/css', '2022-11-26 09:53:34'),
(1468, 17, 'catalog/view/javascript/d_bootstrap_colorpicker/img', '2022-11-26 09:53:34'),
(1469, 17, 'catalog/view/javascript/d_bootstrap_colorpicker/js', '2022-11-26 09:53:34'),
(1470, 17, 'catalog/view/javascript/d_bootstrap_select/css', '2022-11-26 09:53:34'),
(1471, 17, 'catalog/view/javascript/d_bootstrap_select/js', '2022-11-26 09:53:34'),
(1472, 17, 'catalog/view/javascript/d_bootstrap_switch/css', '2022-11-26 09:53:34'),
(1473, 17, 'catalog/view/javascript/d_bootstrap_switch/js', '2022-11-26 09:53:34'),
(1474, 17, 'catalog/view/javascript/d_bootstrap_tour/css', '2022-11-26 09:53:34'),
(1475, 17, 'catalog/view/javascript/d_bootstrap_tour/js', '2022-11-26 09:53:34'),
(1476, 17, 'catalog/view/javascript/d_quickcheckout/animate', '2022-11-26 09:53:34'),
(1477, 17, 'catalog/view/javascript/d_quickcheckout/bootstrap', '2022-11-26 09:53:34'),
(1478, 17, 'catalog/view/javascript/d_quickcheckout/datetimepicker', '2022-11-26 09:53:34'),
(1479, 17, 'catalog/view/javascript/d_quickcheckout/gulp', '2022-11-26 09:53:34'),
(1480, 17, 'catalog/view/javascript/d_quickcheckout/immutable', '2022-11-26 09:53:34'),
(1481, 17, 'catalog/view/javascript/d_quickcheckout/intltelinput', '2022-11-26 09:53:34'),
(1482, 17, 'catalog/view/javascript/d_quickcheckout/jquerymask', '2022-11-26 09:53:34'),
(1483, 17, 'catalog/view/javascript/d_quickcheckout/jqueryui', '2022-11-26 09:53:34'),
(1484, 17, 'catalog/view/javascript/d_quickcheckout/jsondiffpatch', '2022-11-26 09:53:34'),
(1485, 17, 'catalog/view/javascript/d_quickcheckout/ripecss', '2022-11-26 09:53:34'),
(1486, 17, 'catalog/view/javascript/d_quickcheckout/serializejson', '2022-11-26 09:53:34'),
(1487, 17, 'catalog/view/javascript/d_quickcheckout/sortable', '2022-11-26 09:53:34'),
(1488, 17, 'catalog/view/javascript/d_riot/package.json', '2022-11-26 09:53:34'),
(1489, 17, 'catalog/view/javascript/d_riot/riot+compiler.js', '2022-11-26 09:53:34'),
(1490, 17, 'catalog/view/javascript/d_riot/riot+compiler.min.js', '2022-11-26 09:53:34'),
(1491, 17, 'catalog/view/javascript/d_riot/riot.csp.js', '2022-11-26 09:53:34'),
(1492, 17, 'catalog/view/javascript/d_riot/riot.js', '2022-11-26 09:53:34'),
(1493, 17, 'catalog/view/javascript/d_riot/riot.min.js', '2022-11-26 09:53:34'),
(1494, 17, 'catalog/view/javascript/d_riot/riotcompiler.js', '2022-11-26 09:53:34'),
(1495, 17, 'catalog/view/javascript/d_riot/riotcompiler.min.js', '2022-11-26 09:53:34'),
(1496, 17, 'catalog/view/javascript/d_social_login/gulp', '2022-11-26 09:53:34'),
(1497, 17, 'catalog/view/javascript/d_social_login/jquery.magnific-popup.js', '2022-11-26 09:53:34'),
(1498, 17, 'catalog/view/javascript/d_social_login/jquery.maskedinput.min.js', '2022-11-26 09:53:34'),
(1499, 17, 'catalog/view/javascript/d_social_login/jquery.validate.js', '2022-11-26 09:53:34'),
(1500, 17, 'catalog/view/javascript/d_social_login/spin.min.js', '2022-11-26 09:53:34'),
(1501, 17, 'catalog/view/javascript/d_tinysort/jquery.tinysort.js', '2022-11-26 09:53:34'),
(1502, 17, 'catalog/view/javascript/d_tinysort/jquery.tinysort.min.js', '2022-11-26 09:53:34'),
(1503, 17, 'catalog/view/javascript/d_tinysort/tinysort.charorder.js', '2022-11-26 09:53:34'),
(1504, 17, 'catalog/view/javascript/d_tinysort/tinysort.charorder.min.js', '2022-11-26 09:53:34'),
(1505, 17, 'catalog/view/javascript/d_tinysort/tinysort.js', '2022-11-26 09:53:34'),
(1506, 17, 'catalog/view/javascript/d_tinysort/tinysort.min.js', '2022-11-26 09:53:34'),
(1507, 17, 'catalog/view/theme/default/javascript', '2022-11-26 09:53:34'),
(1508, 17, 'image/catalog/d_quickcheckout/payment/authorizenet_aim.png', '2022-11-26 09:53:34'),
(1509, 17, 'image/catalog/d_quickcheckout/payment/bank_transfer.png', '2022-11-26 09:53:34'),
(1510, 17, 'image/catalog/d_quickcheckout/payment/cheque.png', '2022-11-26 09:53:34'),
(1511, 17, 'image/catalog/d_quickcheckout/payment/cod.png', '2022-11-26 09:53:34'),
(1512, 17, 'image/catalog/d_quickcheckout/payment/liqpay.png', '2022-11-26 09:53:34'),
(1513, 17, 'image/catalog/d_quickcheckout/payment/moneybookers.png', '2022-11-26 09:53:34'),
(1514, 17, 'image/catalog/d_quickcheckout/payment/nochex.png', '2022-11-26 09:53:34'),
(1515, 17, 'image/catalog/d_quickcheckout/payment/paymate.png', '2022-11-26 09:53:34'),
(1516, 17, 'image/catalog/d_quickcheckout/payment/paypoint.png', '2022-11-26 09:53:34'),
(1517, 17, 'image/catalog/d_quickcheckout/payment/payza.png', '2022-11-26 09:53:34'),
(1518, 17, 'image/catalog/d_quickcheckout/payment/pp_express.png', '2022-11-26 09:53:34'),
(1519, 17, 'image/catalog/d_quickcheckout/payment/pp_pro.png', '2022-11-26 09:53:34'),
(1520, 17, 'image/catalog/d_quickcheckout/payment/pp_pro_uk.png', '2022-11-26 09:53:34'),
(1521, 17, 'image/catalog/d_quickcheckout/payment/pp_standard.png', '2022-11-26 09:53:34'),
(1522, 17, 'image/catalog/d_quickcheckout/payment/sagepay.png', '2022-11-26 09:53:34'),
(1523, 17, 'image/catalog/d_quickcheckout/payment/sagepay_direct.png', '2022-11-26 09:53:34'),
(1524, 17, 'image/catalog/d_quickcheckout/payment/sagepay_us.png', '2022-11-26 09:53:34'),
(1525, 17, 'image/catalog/d_quickcheckout/payment/twocheckout.png', '2022-11-26 09:53:34'),
(1526, 17, 'image/catalog/d_quickcheckout/payment/web_payment_software.png', '2022-11-26 09:53:34'),
(1527, 17, 'image/catalog/d_quickcheckout/payment/worldpay.png', '2022-11-26 09:53:34'),
(1528, 17, 'image/catalog/d_quickcheckout/step/account.svg', '2022-11-26 09:53:34'),
(1529, 17, 'image/catalog/d_quickcheckout/step/cart.svg', '2022-11-26 09:53:34'),
(1530, 17, 'image/catalog/d_quickcheckout/step/confirm.svg', '2022-11-26 09:53:34'),
(1531, 17, 'image/catalog/d_quickcheckout/step/custom.svg', '2022-11-26 09:53:34'),
(1532, 17, 'image/catalog/d_quickcheckout/step/payment.svg', '2022-11-26 09:53:34'),
(1533, 17, 'image/catalog/d_quickcheckout/step/payment_address.svg', '2022-11-26 09:53:34'),
(1534, 17, 'image/catalog/d_quickcheckout/step/payment_method.svg', '2022-11-26 09:53:34'),
(1535, 17, 'image/catalog/d_quickcheckout/step/shipping_address.svg', '2022-11-26 09:53:34'),
(1536, 17, 'image/catalog/d_quickcheckout/step/shipping_method.svg', '2022-11-26 09:53:34'),
(1537, 17, 'system/library/d_shopunity/extension/d_admin_style.json', '2022-11-26 09:53:34'),
(1538, 17, 'system/library/d_shopunity/extension/d_alertify.json', '2022-11-26 09:53:34'),
(1539, 17, 'system/library/d_shopunity/extension/d_bootstrap_colorpicker.json', '2022-11-26 09:53:34'),
(1540, 17, 'system/library/d_shopunity/extension/d_bootstrap_extra.json', '2022-11-26 09:53:34'),
(1541, 17, 'system/library/d_shopunity/extension/d_bootstrap_select.json', '2022-11-26 09:53:34'),
(1542, 17, 'system/library/d_shopunity/extension/d_bootstrap_switch.json', '2022-11-26 09:53:34'),
(1543, 17, 'system/library/d_shopunity/extension/d_bootstrap_tour.json', '2022-11-26 09:53:34'),
(1544, 17, 'system/library/d_shopunity/extension/d_browser.json', '2022-11-26 09:53:34'),
(1545, 17, 'system/library/d_shopunity/extension/d_event_manager.json', '2022-11-26 09:53:34'),
(1546, 17, 'system/library/d_shopunity/extension/d_opencart_patch.json', '2022-11-26 09:53:34'),
(1547, 17, 'system/library/d_shopunity/extension/d_quickcheckout.json', '2022-11-26 09:53:34'),
(1548, 17, 'system/library/d_shopunity/extension/d_riot.json', '2022-11-26 09:53:34'),
(1549, 17, 'system/library/d_shopunity/extension/d_simple_html_dom.json', '2022-11-26 09:53:34'),
(1550, 17, 'system/library/d_shopunity/extension/d_social_login.json', '2022-11-26 09:53:34'),
(1551, 17, 'system/library/d_shopunity/extension/d_tinysort.json', '2022-11-26 09:53:34'),
(1552, 17, 'system/library/d_shopunity/extension/d_twig_manager.json', '2022-11-26 09:53:34'),
(1553, 17, 'system/library/d_shopunity/extension/d_validator.json', '2022-11-26 09:53:34'),
(1554, 17, 'system/library/d_shopunity/extension/libphonenumber.json', '2022-11-26 09:53:34'),
(1555, 17, 'system/library/d_shopunity/install/d_opencart_patch.xml', '2022-11-26 09:53:34'),
(1556, 17, 'system/library/d_shopunity/install/d_quickcheckout.xml', '2022-11-26 09:53:34'),
(1557, 17, 'system/library/d_shopunity/install/d_social_login.xml', '2022-11-26 09:53:34'),
(1558, 17, 'system/library/d_shopunity/install/d_twig_manager.xml', '2022-11-26 09:53:34'),
(1559, 17, 'system/library/d_shopunity/readme/d_opencart_patch.md', '2022-11-26 09:53:34'),
(1560, 17, 'system/library/d_social_login/hybrid/Adapter', '2022-11-26 09:53:34'),
(1561, 17, 'system/library/d_social_login/hybrid/Data', '2022-11-26 09:53:34'),
(1562, 17, 'system/library/d_social_login/hybrid/Exception', '2022-11-26 09:53:34'),
(1563, 17, 'system/library/d_social_login/hybrid/HttpClient', '2022-11-26 09:53:34'),
(1564, 17, 'system/library/d_social_login/hybrid/Hybridauth.php', '2022-11-26 09:53:34'),
(1565, 17, 'system/library/d_social_login/hybrid/Logger', '2022-11-26 09:53:34'),
(1566, 17, 'system/library/d_social_login/hybrid/Provider', '2022-11-26 09:53:34'),
(1567, 17, 'system/library/d_social_login/hybrid/Storage', '2022-11-26 09:53:34'),
(1568, 17, 'system/library/d_social_login/hybrid/Thirdparty', '2022-11-26 09:53:34'),
(1569, 17, 'system/library/d_social_login/hybrid/User', '2022-11-26 09:53:34'),
(1570, 17, 'system/library/d_social_login/hybrid/autoload.php', '2022-11-26 09:53:34'),
(1571, 17, 'system/library/libphonenumber/carrier/data', '2022-11-26 09:53:34'),
(1572, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_255.php', '2022-11-26 09:53:34'),
(1573, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_27.php', '2022-11-26 09:53:34'),
(1574, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_30.php', '2022-11-26 09:53:34'),
(1575, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_31.php', '2022-11-26 09:53:34'),
(1576, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_34.php', '2022-11-26 09:53:34'),
(1577, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_350.php', '2022-11-26 09:53:34'),
(1578, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_351.php', '2022-11-26 09:53:34'),
(1579, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_352.php', '2022-11-26 09:53:34'),
(1580, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_358.php', '2022-11-26 09:53:34'),
(1581, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_359.php', '2022-11-26 09:53:34'),
(1582, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_36.php', '2022-11-26 09:53:34'),
(1583, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_372.php', '2022-11-26 09:53:34'),
(1584, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_373.php', '2022-11-26 09:53:34'),
(1585, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_380.php', '2022-11-26 09:53:34'),
(1586, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_381.php', '2022-11-26 09:53:34'),
(1587, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_385.php', '2022-11-26 09:53:34'),
(1588, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_39.php', '2022-11-26 09:53:34'),
(1589, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_43.php', '2022-11-26 09:53:34'),
(1590, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_44.php', '2022-11-26 09:53:34'),
(1591, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_49.php', '2022-11-26 09:53:34'),
(1592, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_505.php', '2022-11-26 09:53:34'),
(1593, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_506.php', '2022-11-26 09:53:34'),
(1594, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_52.php', '2022-11-26 09:53:34'),
(1595, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_54.php', '2022-11-26 09:53:34'),
(1596, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_55.php', '2022-11-26 09:53:34'),
(1597, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_58.php', '2022-11-26 09:53:34'),
(1598, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_595.php', '2022-11-26 09:53:34'),
(1599, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_61.php', '2022-11-26 09:53:34'),
(1600, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_62.php', '2022-11-26 09:53:34'),
(1601, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_63.php', '2022-11-26 09:53:34'),
(1602, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_64.php', '2022-11-26 09:53:34'),
(1603, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_66.php', '2022-11-26 09:53:34'),
(1604, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_675.php', '2022-11-26 09:53:34'),
(1605, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_676.php', '2022-11-26 09:53:34'),
(1606, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_679.php', '2022-11-26 09:53:34'),
(1607, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_7.php', '2022-11-26 09:53:34'),
(1608, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_81.php', '2022-11-26 09:53:34'),
(1609, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_84.php', '2022-11-26 09:53:34'),
(1610, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_855.php', '2022-11-26 09:53:34'),
(1611, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_856.php', '2022-11-26 09:53:34'),
(1612, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_90.php', '2022-11-26 09:53:34'),
(1613, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_91.php', '2022-11-26 09:53:34'),
(1614, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_94.php', '2022-11-26 09:53:34'),
(1615, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_95.php', '2022-11-26 09:53:34'),
(1616, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_971.php', '2022-11-26 09:53:34'),
(1617, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_972.php', '2022-11-26 09:53:34'),
(1618, 17, 'system/library/libphonenumber/data/PhoneNumberAlternateFormats_995.php', '2022-11-26 09:53:34'),
(1619, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_800.php', '2022-11-26 09:53:34'),
(1620, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_808.php', '2022-11-26 09:53:34'),
(1621, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_870.php', '2022-11-26 09:53:34'),
(1622, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_878.php', '2022-11-26 09:53:34'),
(1623, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_881.php', '2022-11-26 09:53:34'),
(1624, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_882.php', '2022-11-26 09:53:34'),
(1625, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_883.php', '2022-11-26 09:53:34'),
(1626, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_888.php', '2022-11-26 09:53:34'),
(1627, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_979.php', '2022-11-26 09:53:34'),
(1628, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_AC.php', '2022-11-26 09:53:34'),
(1629, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_AD.php', '2022-11-26 09:53:34'),
(1630, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_AE.php', '2022-11-26 09:53:34'),
(1631, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_AF.php', '2022-11-26 09:53:34'),
(1632, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_AG.php', '2022-11-26 09:53:34'),
(1633, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_AI.php', '2022-11-26 09:53:34'),
(1634, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_AL.php', '2022-11-26 09:53:34'),
(1635, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_AM.php', '2022-11-26 09:53:34'),
(1636, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_AO.php', '2022-11-26 09:53:34'),
(1637, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_AR.php', '2022-11-26 09:53:34'),
(1638, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_AS.php', '2022-11-26 09:53:34'),
(1639, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_AT.php', '2022-11-26 09:53:34'),
(1640, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_AU.php', '2022-11-26 09:53:34'),
(1641, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_AW.php', '2022-11-26 09:53:34'),
(1642, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_AX.php', '2022-11-26 09:53:34'),
(1643, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_AZ.php', '2022-11-26 09:53:34'),
(1644, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_BA.php', '2022-11-26 09:53:34'),
(1645, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_BB.php', '2022-11-26 09:53:34'),
(1646, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_BD.php', '2022-11-26 09:53:34'),
(1647, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_BE.php', '2022-11-26 09:53:34'),
(1648, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_BF.php', '2022-11-26 09:53:34'),
(1649, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_BG.php', '2022-11-26 09:53:34'),
(1650, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_BH.php', '2022-11-26 09:53:34'),
(1651, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_BI.php', '2022-11-26 09:53:34'),
(1652, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_BJ.php', '2022-11-26 09:53:34'),
(1653, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_BL.php', '2022-11-26 09:53:34'),
(1654, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_BM.php', '2022-11-26 09:53:34'),
(1655, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_BN.php', '2022-11-26 09:53:34'),
(1656, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_BO.php', '2022-11-26 09:53:34'),
(1657, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_BQ.php', '2022-11-26 09:53:34'),
(1658, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_BR.php', '2022-11-26 09:53:34'),
(1659, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_BS.php', '2022-11-26 09:53:34'),
(1660, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_BT.php', '2022-11-26 09:53:34'),
(1661, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_BW.php', '2022-11-26 09:53:34'),
(1662, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_BY.php', '2022-11-26 09:53:34'),
(1663, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_BZ.php', '2022-11-26 09:53:34'),
(1664, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_CA.php', '2022-11-26 09:53:34'),
(1665, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_CC.php', '2022-11-26 09:53:34'),
(1666, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_CD.php', '2022-11-26 09:53:34'),
(1667, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_CF.php', '2022-11-26 09:53:34'),
(1668, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_CG.php', '2022-11-26 09:53:34'),
(1669, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_CH.php', '2022-11-26 09:53:34'),
(1670, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_CI.php', '2022-11-26 09:53:34'),
(1671, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_CK.php', '2022-11-26 09:53:34'),
(1672, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_CL.php', '2022-11-26 09:53:34'),
(1673, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_CM.php', '2022-11-26 09:53:34'),
(1674, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_CN.php', '2022-11-26 09:53:34'),
(1675, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_CO.php', '2022-11-26 09:53:34'),
(1676, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_CR.php', '2022-11-26 09:53:34'),
(1677, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_CU.php', '2022-11-26 09:53:34'),
(1678, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_CV.php', '2022-11-26 09:53:34'),
(1679, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_CW.php', '2022-11-26 09:53:34'),
(1680, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_CX.php', '2022-11-26 09:53:34'),
(1681, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_CY.php', '2022-11-26 09:53:34'),
(1682, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_CZ.php', '2022-11-26 09:53:34'),
(1683, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_DE.php', '2022-11-26 09:53:34'),
(1684, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_DJ.php', '2022-11-26 09:53:34'),
(1685, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_DK.php', '2022-11-26 09:53:34'),
(1686, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_DM.php', '2022-11-26 09:53:34'),
(1687, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_DO.php', '2022-11-26 09:53:34'),
(1688, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_DZ.php', '2022-11-26 09:53:34'),
(1689, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_EC.php', '2022-11-26 09:53:34'),
(1690, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_EE.php', '2022-11-26 09:53:34'),
(1691, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_EG.php', '2022-11-26 09:53:34'),
(1692, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_EH.php', '2022-11-26 09:53:34'),
(1693, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_ER.php', '2022-11-26 09:53:34'),
(1694, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_ES.php', '2022-11-26 09:53:34'),
(1695, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_ET.php', '2022-11-26 09:53:34'),
(1696, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_FI.php', '2022-11-26 09:53:34'),
(1697, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_FJ.php', '2022-11-26 09:53:34'),
(1698, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_FK.php', '2022-11-26 09:53:34'),
(1699, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_FM.php', '2022-11-26 09:53:34'),
(1700, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_FO.php', '2022-11-26 09:53:34'),
(1701, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_FR.php', '2022-11-26 09:53:34'),
(1702, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_GA.php', '2022-11-26 09:53:34'),
(1703, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_GB.php', '2022-11-26 09:53:34'),
(1704, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_GD.php', '2022-11-26 09:53:34'),
(1705, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_GE.php', '2022-11-26 09:53:34'),
(1706, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_GF.php', '2022-11-26 09:53:34'),
(1707, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_GG.php', '2022-11-26 09:53:34'),
(1708, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_GH.php', '2022-11-26 09:53:34'),
(1709, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_GI.php', '2022-11-26 09:53:34'),
(1710, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_GL.php', '2022-11-26 09:53:34'),
(1711, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_GM.php', '2022-11-26 09:53:34'),
(1712, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_GN.php', '2022-11-26 09:53:34'),
(1713, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_GP.php', '2022-11-26 09:53:34'),
(1714, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_GQ.php', '2022-11-26 09:53:34'),
(1715, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_GR.php', '2022-11-26 09:53:34'),
(1716, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_GT.php', '2022-11-26 09:53:34'),
(1717, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_GU.php', '2022-11-26 09:53:34'),
(1718, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_GW.php', '2022-11-26 09:53:34'),
(1719, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_GY.php', '2022-11-26 09:53:34'),
(1720, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_HK.php', '2022-11-26 09:53:34'),
(1721, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_HN.php', '2022-11-26 09:53:34'),
(1722, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_HR.php', '2022-11-26 09:53:34'),
(1723, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_HT.php', '2022-11-26 09:53:34'),
(1724, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_HU.php', '2022-11-26 09:53:34'),
(1725, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_ID.php', '2022-11-26 09:53:34'),
(1726, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_IE.php', '2022-11-26 09:53:34'),
(1727, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_IL.php', '2022-11-26 09:53:34'),
(1728, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_IM.php', '2022-11-26 09:53:34'),
(1729, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_IN.php', '2022-11-26 09:53:34'),
(1730, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_IO.php', '2022-11-26 09:53:34'),
(1731, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_IQ.php', '2022-11-26 09:53:34'),
(1732, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_IR.php', '2022-11-26 09:53:34'),
(1733, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_IS.php', '2022-11-26 09:53:34'),
(1734, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_IT.php', '2022-11-26 09:53:34'),
(1735, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_JE.php', '2022-11-26 09:53:34'),
(1736, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_JM.php', '2022-11-26 09:53:34'),
(1737, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_JO.php', '2022-11-26 09:53:34'),
(1738, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_JP.php', '2022-11-26 09:53:34'),
(1739, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_KE.php', '2022-11-26 09:53:34'),
(1740, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_KG.php', '2022-11-26 09:53:34'),
(1741, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_KH.php', '2022-11-26 09:53:34'),
(1742, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_KI.php', '2022-11-26 09:53:34'),
(1743, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_KM.php', '2022-11-26 09:53:34'),
(1744, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_KN.php', '2022-11-26 09:53:34'),
(1745, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_KP.php', '2022-11-26 09:53:34'),
(1746, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_KR.php', '2022-11-26 09:53:34'),
(1747, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_KW.php', '2022-11-26 09:53:34'),
(1748, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_KY.php', '2022-11-26 09:53:34'),
(1749, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_KZ.php', '2022-11-26 09:53:34'),
(1750, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_LA.php', '2022-11-26 09:53:34'),
(1751, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_LB.php', '2022-11-26 09:53:35'),
(1752, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_LC.php', '2022-11-26 09:53:35'),
(1753, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_LI.php', '2022-11-26 09:53:35'),
(1754, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_LK.php', '2022-11-26 09:53:35'),
(1755, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_LR.php', '2022-11-26 09:53:35'),
(1756, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_LS.php', '2022-11-26 09:53:35'),
(1757, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_LT.php', '2022-11-26 09:53:35'),
(1758, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_LU.php', '2022-11-26 09:53:35'),
(1759, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_LV.php', '2022-11-26 09:53:35'),
(1760, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_LY.php', '2022-11-26 09:53:35'),
(1761, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_MA.php', '2022-11-26 09:53:35'),
(1762, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_MC.php', '2022-11-26 09:53:35'),
(1763, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_MD.php', '2022-11-26 09:53:35'),
(1764, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_ME.php', '2022-11-26 09:53:35'),
(1765, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_MF.php', '2022-11-26 09:53:35'),
(1766, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_MG.php', '2022-11-26 09:53:35'),
(1767, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_MH.php', '2022-11-26 09:53:35'),
(1768, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_MK.php', '2022-11-26 09:53:35'),
(1769, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_ML.php', '2022-11-26 09:53:35'),
(1770, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_MM.php', '2022-11-26 09:53:35'),
(1771, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_MN.php', '2022-11-26 09:53:35'),
(1772, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_MO.php', '2022-11-26 09:53:35'),
(1773, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_MP.php', '2022-11-26 09:53:35'),
(1774, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_MQ.php', '2022-11-26 09:53:35'),
(1775, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_MR.php', '2022-11-26 09:53:35'),
(1776, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_MS.php', '2022-11-26 09:53:35'),
(1777, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_MT.php', '2022-11-26 09:53:35'),
(1778, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_MU.php', '2022-11-26 09:53:35'),
(1779, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_MV.php', '2022-11-26 09:53:35'),
(1780, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_MW.php', '2022-11-26 09:53:35'),
(1781, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_MX.php', '2022-11-26 09:53:35'),
(1782, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_MY.php', '2022-11-26 09:53:35'),
(1783, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_MZ.php', '2022-11-26 09:53:35'),
(1784, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_NA.php', '2022-11-26 09:53:35'),
(1785, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_NC.php', '2022-11-26 09:53:35'),
(1786, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_NE.php', '2022-11-26 09:53:35'),
(1787, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_NF.php', '2022-11-26 09:53:35'),
(1788, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_NG.php', '2022-11-26 09:53:35'),
(1789, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_NI.php', '2022-11-26 09:53:35'),
(1790, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_NL.php', '2022-11-26 09:53:35'),
(1791, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_NO.php', '2022-11-26 09:53:35'),
(1792, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_NP.php', '2022-11-26 09:53:35'),
(1793, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_NR.php', '2022-11-26 09:53:35'),
(1794, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_NU.php', '2022-11-26 09:53:35'),
(1795, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_NZ.php', '2022-11-26 09:53:35'),
(1796, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_OM.php', '2022-11-26 09:53:35'),
(1797, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_PA.php', '2022-11-26 09:53:35'),
(1798, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_PE.php', '2022-11-26 09:53:35'),
(1799, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_PF.php', '2022-11-26 09:53:35'),
(1800, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_PG.php', '2022-11-26 09:53:35'),
(1801, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_PH.php', '2022-11-26 09:53:35'),
(1802, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_PK.php', '2022-11-26 09:53:35'),
(1803, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_PL.php', '2022-11-26 09:53:35'),
(1804, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_PM.php', '2022-11-26 09:53:35'),
(1805, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_PR.php', '2022-11-26 09:53:35'),
(1806, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_PS.php', '2022-11-26 09:53:35'),
(1807, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_PT.php', '2022-11-26 09:53:35'),
(1808, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_PW.php', '2022-11-26 09:53:35'),
(1809, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_PY.php', '2022-11-26 09:53:35'),
(1810, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_QA.php', '2022-11-26 09:53:35'),
(1811, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_RE.php', '2022-11-26 09:53:35'),
(1812, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_RO.php', '2022-11-26 09:53:35'),
(1813, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_RS.php', '2022-11-26 09:53:35'),
(1814, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_RU.php', '2022-11-26 09:53:35'),
(1815, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_RW.php', '2022-11-26 09:53:35'),
(1816, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_SA.php', '2022-11-26 09:53:35'),
(1817, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_SB.php', '2022-11-26 09:53:35'),
(1818, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_SC.php', '2022-11-26 09:53:35'),
(1819, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_SD.php', '2022-11-26 09:53:35'),
(1820, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_SE.php', '2022-11-26 09:53:35'),
(1821, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_SG.php', '2022-11-26 09:53:35'),
(1822, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_SH.php', '2022-11-26 09:53:35'),
(1823, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_SI.php', '2022-11-26 09:53:35'),
(1824, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_SJ.php', '2022-11-26 09:53:35'),
(1825, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_SK.php', '2022-11-26 09:53:35'),
(1826, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_SL.php', '2022-11-26 09:53:35'),
(1827, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_SM.php', '2022-11-26 09:53:35'),
(1828, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_SN.php', '2022-11-26 09:53:35'),
(1829, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_SO.php', '2022-11-26 09:53:35'),
(1830, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_SR.php', '2022-11-26 09:53:35'),
(1831, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_SS.php', '2022-11-26 09:53:35'),
(1832, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_ST.php', '2022-11-26 09:53:35'),
(1833, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_SV.php', '2022-11-26 09:53:35'),
(1834, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_SX.php', '2022-11-26 09:53:35'),
(1835, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_SY.php', '2022-11-26 09:53:35'),
(1836, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_SZ.php', '2022-11-26 09:53:35'),
(1837, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_TA.php', '2022-11-26 09:53:35'),
(1838, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_TC.php', '2022-11-26 09:53:35'),
(1839, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_TD.php', '2022-11-26 09:53:35'),
(1840, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_TG.php', '2022-11-26 09:53:35'),
(1841, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_TH.php', '2022-11-26 09:53:35'),
(1842, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_TJ.php', '2022-11-26 09:53:35'),
(1843, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_TK.php', '2022-11-26 09:53:35'),
(1844, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_TL.php', '2022-11-26 09:53:35'),
(1845, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_TM.php', '2022-11-26 09:53:35'),
(1846, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_TN.php', '2022-11-26 09:53:35'),
(1847, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_TO.php', '2022-11-26 09:53:35'),
(1848, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_TR.php', '2022-11-26 09:53:35'),
(1849, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_TT.php', '2022-11-26 09:53:35'),
(1850, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_TV.php', '2022-11-26 09:53:35'),
(1851, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_TW.php', '2022-11-26 09:53:35'),
(1852, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_TZ.php', '2022-11-26 09:53:35'),
(1853, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_UA.php', '2022-11-26 09:53:35'),
(1854, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_UG.php', '2022-11-26 09:53:35'),
(1855, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_US.php', '2022-11-26 09:53:35'),
(1856, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_UY.php', '2022-11-26 09:53:35'),
(1857, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_UZ.php', '2022-11-26 09:53:35'),
(1858, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_VA.php', '2022-11-26 09:53:35'),
(1859, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_VC.php', '2022-11-26 09:53:35'),
(1860, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_VE.php', '2022-11-26 09:53:35'),
(1861, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_VG.php', '2022-11-26 09:53:35'),
(1862, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_VI.php', '2022-11-26 09:53:35'),
(1863, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_VN.php', '2022-11-26 09:53:35'),
(1864, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_VU.php', '2022-11-26 09:53:35'),
(1865, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_WF.php', '2022-11-26 09:53:35'),
(1866, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_WS.php', '2022-11-26 09:53:35'),
(1867, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_XK.php', '2022-11-26 09:53:35'),
(1868, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_YE.php', '2022-11-26 09:53:35'),
(1869, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_YT.php', '2022-11-26 09:53:35'),
(1870, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_ZA.php', '2022-11-26 09:53:35'),
(1871, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_ZM.php', '2022-11-26 09:53:35'),
(1872, 17, 'system/library/libphonenumber/data/PhoneNumberMetadata_ZW.php', '2022-11-26 09:53:35'),
(1873, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_AC.php', '2022-11-26 09:53:35'),
(1874, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_AD.php', '2022-11-26 09:53:35'),
(1875, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_AE.php', '2022-11-26 09:53:35'),
(1876, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_AF.php', '2022-11-26 09:53:35'),
(1877, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_AG.php', '2022-11-26 09:53:35'),
(1878, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_AI.php', '2022-11-26 09:53:35'),
(1879, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_AL.php', '2022-11-26 09:53:35'),
(1880, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_AM.php', '2022-11-26 09:53:35'),
(1881, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_AO.php', '2022-11-26 09:53:35'),
(1882, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_AR.php', '2022-11-26 09:53:35'),
(1883, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_AS.php', '2022-11-26 09:53:35'),
(1884, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_AT.php', '2022-11-26 09:53:35'),
(1885, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_AU.php', '2022-11-26 09:53:35'),
(1886, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_AW.php', '2022-11-26 09:53:35'),
(1887, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_AX.php', '2022-11-26 09:53:35'),
(1888, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_AZ.php', '2022-11-26 09:53:35'),
(1889, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_BA.php', '2022-11-26 09:53:35'),
(1890, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_BB.php', '2022-11-26 09:53:35'),
(1891, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_BD.php', '2022-11-26 09:53:35'),
(1892, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_BE.php', '2022-11-26 09:53:35'),
(1893, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_BF.php', '2022-11-26 09:53:35'),
(1894, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_BG.php', '2022-11-26 09:53:35'),
(1895, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_BH.php', '2022-11-26 09:53:35'),
(1896, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_BI.php', '2022-11-26 09:53:35'),
(1897, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_BJ.php', '2022-11-26 09:53:35'),
(1898, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_BL.php', '2022-11-26 09:53:35'),
(1899, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_BM.php', '2022-11-26 09:53:35'),
(1900, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_BN.php', '2022-11-26 09:53:35'),
(1901, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_BO.php', '2022-11-26 09:53:35'),
(1902, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_BQ.php', '2022-11-26 09:53:35'),
(1903, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_BR.php', '2022-11-26 09:53:35'),
(1904, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_BS.php', '2022-11-26 09:53:35'),
(1905, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_BT.php', '2022-11-26 09:53:35'),
(1906, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_BW.php', '2022-11-26 09:53:35'),
(1907, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_BY.php', '2022-11-26 09:53:35'),
(1908, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_BZ.php', '2022-11-26 09:53:35'),
(1909, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_CA.php', '2022-11-26 09:53:35'),
(1910, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_CC.php', '2022-11-26 09:53:35'),
(1911, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_CD.php', '2022-11-26 09:53:35'),
(1912, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_CF.php', '2022-11-26 09:53:35'),
(1913, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_CG.php', '2022-11-26 09:53:35'),
(1914, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_CH.php', '2022-11-26 09:53:35'),
(1915, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_CI.php', '2022-11-26 09:53:35'),
(1916, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_CK.php', '2022-11-26 09:53:35'),
(1917, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_CL.php', '2022-11-26 09:53:35'),
(1918, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_CM.php', '2022-11-26 09:53:35'),
(1919, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_CN.php', '2022-11-26 09:53:35'),
(1920, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_CO.php', '2022-11-26 09:53:35'),
(1921, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_CR.php', '2022-11-26 09:53:35'),
(1922, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_CU.php', '2022-11-26 09:53:35'),
(1923, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_CV.php', '2022-11-26 09:53:35'),
(1924, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_CW.php', '2022-11-26 09:53:35'),
(1925, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_CX.php', '2022-11-26 09:53:35'),
(1926, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_CY.php', '2022-11-26 09:53:35'),
(1927, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_CZ.php', '2022-11-26 09:53:35'),
(1928, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_DE.php', '2022-11-26 09:53:35'),
(1929, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_DJ.php', '2022-11-26 09:53:35'),
(1930, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_DK.php', '2022-11-26 09:53:35'),
(1931, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_DM.php', '2022-11-26 09:53:35'),
(1932, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_DO.php', '2022-11-26 09:53:35'),
(1933, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_DZ.php', '2022-11-26 09:53:35'),
(1934, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_EC.php', '2022-11-26 09:53:35'),
(1935, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_EE.php', '2022-11-26 09:53:35'),
(1936, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_EG.php', '2022-11-26 09:53:35'),
(1937, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_EH.php', '2022-11-26 09:53:35'),
(1938, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_ER.php', '2022-11-26 09:53:35'),
(1939, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_ES.php', '2022-11-26 09:53:35'),
(1940, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_ET.php', '2022-11-26 09:53:35'),
(1941, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_FI.php', '2022-11-26 09:53:35'),
(1942, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_FJ.php', '2022-11-26 09:53:35'),
(1943, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_FK.php', '2022-11-26 09:53:35'),
(1944, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_FM.php', '2022-11-26 09:53:35'),
(1945, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_FO.php', '2022-11-26 09:53:35'),
(1946, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_FR.php', '2022-11-26 09:53:35'),
(1947, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_GA.php', '2022-11-26 09:53:35');
INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1948, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_GB.php', '2022-11-26 09:53:35'),
(1949, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_GD.php', '2022-11-26 09:53:35'),
(1950, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_GE.php', '2022-11-26 09:53:35'),
(1951, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_GF.php', '2022-11-26 09:53:35'),
(1952, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_GG.php', '2022-11-26 09:53:35'),
(1953, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_GH.php', '2022-11-26 09:53:35'),
(1954, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_GI.php', '2022-11-26 09:53:35'),
(1955, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_GL.php', '2022-11-26 09:53:35'),
(1956, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_GM.php', '2022-11-26 09:53:35'),
(1957, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_GN.php', '2022-11-26 09:53:35'),
(1958, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_GP.php', '2022-11-26 09:53:35'),
(1959, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_GR.php', '2022-11-26 09:53:35'),
(1960, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_GT.php', '2022-11-26 09:53:35'),
(1961, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_GU.php', '2022-11-26 09:53:35'),
(1962, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_GW.php', '2022-11-26 09:53:35'),
(1963, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_GY.php', '2022-11-26 09:53:35'),
(1964, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_HK.php', '2022-11-26 09:53:35'),
(1965, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_HN.php', '2022-11-26 09:53:35'),
(1966, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_HR.php', '2022-11-26 09:53:35'),
(1967, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_HT.php', '2022-11-26 09:53:35'),
(1968, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_HU.php', '2022-11-26 09:53:35'),
(1969, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_ID.php', '2022-11-26 09:53:35'),
(1970, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_IE.php', '2022-11-26 09:53:35'),
(1971, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_IL.php', '2022-11-26 09:53:35'),
(1972, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_IM.php', '2022-11-26 09:53:35'),
(1973, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_IN.php', '2022-11-26 09:53:35'),
(1974, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_IQ.php', '2022-11-26 09:53:35'),
(1975, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_IR.php', '2022-11-26 09:53:35'),
(1976, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_IS.php', '2022-11-26 09:53:35'),
(1977, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_IT.php', '2022-11-26 09:53:35'),
(1978, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_JE.php', '2022-11-26 09:53:35'),
(1979, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_JM.php', '2022-11-26 09:53:35'),
(1980, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_JO.php', '2022-11-26 09:53:35'),
(1981, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_JP.php', '2022-11-26 09:53:35'),
(1982, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_KE.php', '2022-11-26 09:53:35'),
(1983, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_KG.php', '2022-11-26 09:53:35'),
(1984, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_KH.php', '2022-11-26 09:53:35'),
(1985, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_KI.php', '2022-11-26 09:53:35'),
(1986, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_KM.php', '2022-11-26 09:53:35'),
(1987, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_KN.php', '2022-11-26 09:53:35'),
(1988, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_KP.php', '2022-11-26 09:53:35'),
(1989, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_KR.php', '2022-11-26 09:53:35'),
(1990, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_KW.php', '2022-11-26 09:53:35'),
(1991, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_KY.php', '2022-11-26 09:53:35'),
(1992, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_KZ.php', '2022-11-26 09:53:35'),
(1993, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_LA.php', '2022-11-26 09:53:35'),
(1994, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_LB.php', '2022-11-26 09:53:35'),
(1995, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_LC.php', '2022-11-26 09:53:35'),
(1996, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_LI.php', '2022-11-26 09:53:35'),
(1997, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_LK.php', '2022-11-26 09:53:35'),
(1998, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_LR.php', '2022-11-26 09:53:35'),
(1999, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_LS.php', '2022-11-26 09:53:35'),
(2000, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_LT.php', '2022-11-26 09:53:35'),
(2001, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_LU.php', '2022-11-26 09:53:35'),
(2002, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_LV.php', '2022-11-26 09:53:35'),
(2003, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_LY.php', '2022-11-26 09:53:35'),
(2004, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_MA.php', '2022-11-26 09:53:35'),
(2005, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_MC.php', '2022-11-26 09:53:35'),
(2006, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_MD.php', '2022-11-26 09:53:35'),
(2007, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_ME.php', '2022-11-26 09:53:35'),
(2008, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_MF.php', '2022-11-26 09:53:35'),
(2009, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_MG.php', '2022-11-26 09:53:35'),
(2010, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_MH.php', '2022-11-26 09:53:35'),
(2011, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_MK.php', '2022-11-26 09:53:35'),
(2012, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_ML.php', '2022-11-26 09:53:35'),
(2013, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_MM.php', '2022-11-26 09:53:35'),
(2014, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_MN.php', '2022-11-26 09:53:35'),
(2015, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_MO.php', '2022-11-26 09:53:35'),
(2016, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_MP.php', '2022-11-26 09:53:35'),
(2017, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_MQ.php', '2022-11-26 09:53:35'),
(2018, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_MR.php', '2022-11-26 09:53:35'),
(2019, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_MS.php', '2022-11-26 09:53:35'),
(2020, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_MT.php', '2022-11-26 09:53:35'),
(2021, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_MU.php', '2022-11-26 09:53:35'),
(2022, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_MV.php', '2022-11-26 09:53:35'),
(2023, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_MW.php', '2022-11-26 09:53:35'),
(2024, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_MX.php', '2022-11-26 09:53:35'),
(2025, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_MY.php', '2022-11-26 09:53:35'),
(2026, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_MZ.php', '2022-11-26 09:53:35'),
(2027, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_NA.php', '2022-11-26 09:53:35'),
(2028, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_NC.php', '2022-11-26 09:53:35'),
(2029, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_NE.php', '2022-11-26 09:53:35'),
(2030, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_NF.php', '2022-11-26 09:53:35'),
(2031, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_NG.php', '2022-11-26 09:53:35'),
(2032, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_NI.php', '2022-11-26 09:53:35'),
(2033, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_NL.php', '2022-11-26 09:53:35'),
(2034, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_NO.php', '2022-11-26 09:53:35'),
(2035, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_NP.php', '2022-11-26 09:53:35'),
(2036, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_NR.php', '2022-11-26 09:53:35'),
(2037, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_NU.php', '2022-11-26 09:53:35'),
(2038, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_NZ.php', '2022-11-26 09:53:35'),
(2039, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_OM.php', '2022-11-26 09:53:35'),
(2040, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_PA.php', '2022-11-26 09:53:35'),
(2041, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_PE.php', '2022-11-26 09:53:35'),
(2042, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_PF.php', '2022-11-26 09:53:35'),
(2043, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_PG.php', '2022-11-26 09:53:35'),
(2044, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_PH.php', '2022-11-26 09:53:35'),
(2045, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_PK.php', '2022-11-26 09:53:35'),
(2046, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_PL.php', '2022-11-26 09:53:35'),
(2047, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_PM.php', '2022-11-26 09:53:35'),
(2048, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_PR.php', '2022-11-26 09:53:35'),
(2049, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_PS.php', '2022-11-26 09:53:35'),
(2050, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_PT.php', '2022-11-26 09:53:35'),
(2051, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_PW.php', '2022-11-26 09:53:35'),
(2052, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_PY.php', '2022-11-26 09:53:35'),
(2053, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_QA.php', '2022-11-26 09:53:35'),
(2054, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_RE.php', '2022-11-26 09:53:35'),
(2055, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_RO.php', '2022-11-26 09:53:35'),
(2056, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_RS.php', '2022-11-26 09:53:35'),
(2057, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_RU.php', '2022-11-26 09:53:35'),
(2058, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_RW.php', '2022-11-26 09:53:35'),
(2059, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_SA.php', '2022-11-26 09:53:35'),
(2060, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_SB.php', '2022-11-26 09:53:35'),
(2061, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_SC.php', '2022-11-26 09:53:35'),
(2062, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_SD.php', '2022-11-26 09:53:35'),
(2063, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_SE.php', '2022-11-26 09:53:35'),
(2064, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_SG.php', '2022-11-26 09:53:35'),
(2065, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_SH.php', '2022-11-26 09:53:35'),
(2066, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_SI.php', '2022-11-26 09:53:35'),
(2067, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_SJ.php', '2022-11-26 09:53:35'),
(2068, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_SK.php', '2022-11-26 09:53:35'),
(2069, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_SL.php', '2022-11-26 09:53:35'),
(2070, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_SM.php', '2022-11-26 09:53:35'),
(2071, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_SN.php', '2022-11-26 09:53:35'),
(2072, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_SO.php', '2022-11-26 09:53:35'),
(2073, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_SR.php', '2022-11-26 09:53:35'),
(2074, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_ST.php', '2022-11-26 09:53:35'),
(2075, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_SV.php', '2022-11-26 09:53:35'),
(2076, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_SX.php', '2022-11-26 09:53:35'),
(2077, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_SY.php', '2022-11-26 09:53:35'),
(2078, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_SZ.php', '2022-11-26 09:53:35'),
(2079, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_TC.php', '2022-11-26 09:53:35'),
(2080, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_TD.php', '2022-11-26 09:53:35'),
(2081, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_TG.php', '2022-11-26 09:53:35'),
(2082, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_TH.php', '2022-11-26 09:53:35'),
(2083, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_TJ.php', '2022-11-26 09:53:35'),
(2084, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_TL.php', '2022-11-26 09:53:35'),
(2085, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_TM.php', '2022-11-26 09:53:35'),
(2086, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_TN.php', '2022-11-26 09:53:35'),
(2087, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_TO.php', '2022-11-26 09:53:35'),
(2088, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_TR.php', '2022-11-26 09:53:35'),
(2089, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_TT.php', '2022-11-26 09:53:35'),
(2090, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_TV.php', '2022-11-26 09:53:35'),
(2091, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_TW.php', '2022-11-26 09:53:35'),
(2092, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_TZ.php', '2022-11-26 09:53:35'),
(2093, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_UA.php', '2022-11-26 09:53:35'),
(2094, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_UG.php', '2022-11-26 09:53:35'),
(2095, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_US.php', '2022-11-26 09:53:35'),
(2096, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_UY.php', '2022-11-26 09:53:35'),
(2097, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_UZ.php', '2022-11-26 09:53:35'),
(2098, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_VA.php', '2022-11-26 09:53:35'),
(2099, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_VC.php', '2022-11-26 09:53:35'),
(2100, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_VE.php', '2022-11-26 09:53:35'),
(2101, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_VG.php', '2022-11-26 09:53:35'),
(2102, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_VI.php', '2022-11-26 09:53:35'),
(2103, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_VN.php', '2022-11-26 09:53:35'),
(2104, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_VU.php', '2022-11-26 09:53:35'),
(2105, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_WF.php', '2022-11-26 09:53:35'),
(2106, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_WS.php', '2022-11-26 09:53:35'),
(2107, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_XK.php', '2022-11-26 09:53:35'),
(2108, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_YE.php', '2022-11-26 09:53:35'),
(2109, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_YT.php', '2022-11-26 09:53:35'),
(2110, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_ZA.php', '2022-11-26 09:53:35'),
(2111, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_ZM.php', '2022-11-26 09:53:35'),
(2112, 17, 'system/library/libphonenumber/data/ShortNumberMetadata_ZW.php', '2022-11-26 09:53:35'),
(2113, 17, 'system/library/libphonenumber/geocoding/data', '2022-11-26 09:53:35'),
(2114, 17, 'system/library/libphonenumber/geocoding/phonenumberofflinegeocoder.php', '2022-11-26 09:53:35'),
(2115, 17, 'system/library/libphonenumber/leniency/abstractleniency.php', '2022-11-26 09:53:35'),
(2116, 17, 'system/library/libphonenumber/leniency/exactgrouping.php', '2022-11-26 09:53:35'),
(2117, 17, 'system/library/libphonenumber/leniency/possible.php', '2022-11-26 09:53:35'),
(2118, 17, 'system/library/libphonenumber/leniency/strictgrouping.php', '2022-11-26 09:53:35'),
(2119, 17, 'system/library/libphonenumber/leniency/valid.php', '2022-11-26 09:53:35'),
(2120, 17, 'system/library/libphonenumber/prefixmapper/mappingfileprovider.php', '2022-11-26 09:53:35'),
(2121, 17, 'system/library/libphonenumber/prefixmapper/phoneprefixmap.php', '2022-11-26 09:53:35'),
(2122, 17, 'system/library/libphonenumber/prefixmapper/prefixfilereader.php', '2022-11-26 09:53:35'),
(2123, 17, 'system/library/libphonenumber/prefixmapper/prefixtimezonesmap.php', '2022-11-26 09:53:35'),
(2124, 17, 'system/library/libphonenumber/timezone/data', '2022-11-26 09:53:35'),
(2125, 17, 'admin/language/en-gb/extension/d_admin_style/style.php', '2022-11-26 09:53:35'),
(2126, 17, 'admin/language/en-gb/extension/d_shopunity/d_validator.php', '2022-11-26 09:53:35'),
(2127, 17, 'admin/language/en-gb/extension/module/d_quickcheckout.php', '2022-11-26 09:53:35'),
(2128, 17, 'admin/language/en-gb/extension/module/d_social_login.php', '2022-11-26 09:53:35'),
(2129, 17, 'admin/view/image/d_quickcheckout/icons/customisable.svg', '2022-11-26 09:53:35'),
(2130, 17, 'admin/view/image/d_quickcheckout/icons/extensible.svg', '2022-11-26 09:53:35'),
(2131, 17, 'admin/view/image/d_quickcheckout/icons/github.svg', '2022-11-26 09:53:35'),
(2132, 17, 'admin/view/image/d_quickcheckout/icons/layout.svg', '2022-11-26 09:53:35'),
(2133, 17, 'admin/view/image/d_quickcheckout/icons/mulipage.svg', '2022-11-26 09:53:35'),
(2134, 17, 'admin/view/image/d_quickcheckout/icons/themes.svg', '2022-11-26 09:53:35'),
(2135, 17, 'admin/view/image/d_quickcheckout/icons/updates.svg', '2022-11-26 09:53:35'),
(2136, 17, 'admin/view/image/d_quickcheckout/icons/visual-editor.svg', '2022-11-26 09:53:35'),
(2137, 17, 'admin/view/image/d_social_login/500px/01.png', '2022-11-26 09:53:35'),
(2138, 17, 'admin/view/image/d_social_login/500px/02.png', '2022-11-26 09:53:35'),
(2139, 17, 'admin/view/image/d_social_login/500px/03.png', '2022-11-26 09:53:35'),
(2140, 17, 'admin/view/image/d_social_login/amazon/01.png', '2022-11-26 09:53:35'),
(2141, 17, 'admin/view/image/d_social_login/dribbble/01.png', '2022-11-26 09:53:35'),
(2142, 17, 'admin/view/image/d_social_login/dribbble/02.png', '2022-11-26 09:53:35'),
(2143, 17, 'admin/view/image/d_social_login/dribbble/03.png', '2022-11-26 09:53:35'),
(2144, 17, 'admin/view/image/d_social_login/facebook/01.jpg', '2022-11-26 09:53:35'),
(2145, 17, 'admin/view/image/d_social_login/facebook/02.jpg', '2022-11-26 09:53:35'),
(2146, 17, 'admin/view/image/d_social_login/facebook/03.jpg', '2022-11-26 09:53:35'),
(2147, 17, 'admin/view/image/d_social_login/facebook/04.png', '2022-11-26 09:53:35'),
(2148, 17, 'admin/view/image/d_social_login/facebook/05.jpg', '2022-11-26 09:53:35'),
(2149, 17, 'admin/view/image/d_social_login/facebook/06.jpg', '2022-11-26 09:53:35'),
(2150, 17, 'admin/view/image/d_social_login/facebook/07.png', '2022-11-26 09:53:35'),
(2151, 17, 'admin/view/image/d_social_login/facebook/08.jpg', '2022-11-26 09:53:35'),
(2152, 17, 'admin/view/image/d_social_login/facebook/09.png', '2022-11-26 09:53:35'),
(2153, 17, 'admin/view/image/d_social_login/foursquare/1-create.png', '2022-11-26 09:53:35'),
(2154, 17, 'admin/view/image/d_social_login/foursquare/2-keys.png', '2022-11-26 09:53:35'),
(2155, 17, 'admin/view/image/d_social_login/github/01.png', '2022-11-26 09:53:35'),
(2156, 17, 'admin/view/image/d_social_login/github/02.png', '2022-11-26 09:53:35'),
(2157, 17, 'admin/view/image/d_social_login/github/03.png', '2022-11-26 09:53:35'),
(2158, 17, 'admin/view/image/d_social_login/google/1.png', '2022-11-26 09:53:35'),
(2159, 17, 'admin/view/image/d_social_login/google/2.png', '2022-11-26 09:53:35'),
(2160, 17, 'admin/view/image/d_social_login/google/3.png', '2022-11-26 09:53:35'),
(2161, 17, 'admin/view/image/d_social_login/google/4.png', '2022-11-26 09:53:35'),
(2162, 17, 'admin/view/image/d_social_login/google/5.png', '2022-11-26 09:53:35'),
(2163, 17, 'admin/view/image/d_social_login/google/50.png', '2022-11-26 09:53:35'),
(2164, 17, 'admin/view/image/d_social_login/google/51.png', '2022-11-26 09:53:35'),
(2165, 17, 'admin/view/image/d_social_login/google/52.png', '2022-11-26 09:53:35'),
(2166, 17, 'admin/view/image/d_social_login/google/53.png', '2022-11-26 09:53:35'),
(2167, 17, 'admin/view/image/d_social_login/google/6.png', '2022-11-26 09:53:35'),
(2168, 17, 'admin/view/image/d_social_login/google/61.png', '2022-11-26 09:53:35'),
(2169, 17, 'admin/view/image/d_social_login/google/7.png', '2022-11-26 09:53:35'),
(2170, 17, 'admin/view/image/d_social_login/icons/gdpr_compilant.svg', '2022-11-26 09:53:35'),
(2171, 17, 'admin/view/image/d_social_login/icons/install.svg', '2022-11-26 09:53:35'),
(2172, 17, 'admin/view/image/d_social_login/icons/login.svg', '2022-11-26 09:53:35'),
(2173, 17, 'admin/view/image/d_social_login/icons/register_field.svg', '2022-11-26 09:53:35'),
(2174, 17, 'admin/view/image/d_social_login/instagram/01.png', '2022-11-26 09:53:35'),
(2175, 17, 'admin/view/image/d_social_login/instagram/02.png', '2022-11-26 09:53:35'),
(2176, 17, 'admin/view/image/d_social_login/instagram/03.png', '2022-11-26 09:53:35'),
(2177, 17, 'admin/view/image/d_social_login/lastfm/01.png', '2022-11-26 09:53:35'),
(2178, 17, 'admin/view/image/d_social_login/lastfm/02.png', '2022-11-26 09:53:35'),
(2179, 17, 'admin/view/image/d_social_login/linkedin/01.png', '2022-11-26 09:53:35'),
(2180, 17, 'admin/view/image/d_social_login/linkedin/02.png', '2022-11-26 09:53:35'),
(2181, 17, 'admin/view/image/d_social_login/linkedin/03.png', '2022-11-26 09:53:35'),
(2182, 17, 'admin/view/image/d_social_login/linkedin/04.png', '2022-11-26 09:53:35'),
(2183, 17, 'admin/view/image/d_social_login/live/01.png', '2022-11-26 09:53:35'),
(2184, 17, 'admin/view/image/d_social_login/live/02.png', '2022-11-26 09:53:35'),
(2185, 17, 'admin/view/image/d_social_login/live/03.png', '2022-11-26 09:53:35'),
(2186, 17, 'admin/view/image/d_social_login/live/04.png', '2022-11-26 09:53:35'),
(2187, 17, 'admin/view/image/d_social_login/live/05.png', '2022-11-26 09:53:35'),
(2188, 17, 'admin/view/image/d_social_login/odnoklassniki/01.png', '2022-11-26 09:53:35'),
(2189, 17, 'admin/view/image/d_social_login/paypal/01.png', '2022-11-26 09:53:35'),
(2190, 17, 'admin/view/image/d_social_login/paypal/02.png', '2022-11-26 09:53:35'),
(2191, 17, 'admin/view/image/d_social_login/paypal/03.png', '2022-11-26 09:53:35'),
(2192, 17, 'admin/view/image/d_social_login/paypal/04.png', '2022-11-26 09:53:35'),
(2193, 17, 'admin/view/image/d_social_login/paypal/05.png', '2022-11-26 09:53:35'),
(2194, 17, 'admin/view/image/d_social_login/tumblr/01.png', '2022-11-26 09:53:35'),
(2195, 17, 'admin/view/image/d_social_login/tumblr/02.png', '2022-11-26 09:53:35'),
(2196, 17, 'admin/view/image/d_social_login/twitter/01.png', '2022-11-26 09:53:35'),
(2197, 17, 'admin/view/image/d_social_login/twitter/02.png', '2022-11-26 09:53:35'),
(2198, 17, 'admin/view/image/d_social_login/twitter/03.png', '2022-11-26 09:53:35'),
(2199, 17, 'admin/view/image/d_social_login/twitter/04.png', '2022-11-26 09:53:35'),
(2200, 17, 'admin/view/image/d_social_login/vkontakte/01.png', '2022-11-26 09:53:35'),
(2201, 17, 'admin/view/image/d_social_login/vkontakte/02.png', '2022-11-26 09:53:35'),
(2202, 17, 'admin/view/image/d_social_login/vkontakte/03.png', '2022-11-26 09:53:35'),
(2203, 17, 'admin/view/image/d_social_login/vkontakte/04.png', '2022-11-26 09:53:35'),
(2204, 17, 'admin/view/image/d_social_login/yahoo/1-create-app.png', '2022-11-26 09:53:35'),
(2205, 17, 'admin/view/image/d_social_login/yahoo/2-fill-data.png', '2022-11-26 09:53:35'),
(2206, 17, 'admin/view/image/d_social_login/yahoo/3-keys.png', '2022-11-26 09:53:35'),
(2207, 17, 'admin/view/image/d_social_login/yandex/01.png', '2022-11-26 09:53:35'),
(2208, 17, 'admin/view/image/d_social_login/yandex/02.png', '2022-11-26 09:53:35'),
(2209, 17, 'admin/view/javascript/d_admin_style/gulp/gulpfile.js', '2022-11-26 09:53:35'),
(2210, 17, 'admin/view/javascript/d_admin_style/gulp/package-lock.json', '2022-11-26 09:53:35'),
(2211, 17, 'admin/view/javascript/d_admin_style/gulp/package.json', '2022-11-26 09:53:35'),
(2212, 17, 'admin/view/javascript/d_alertify/css/alertify.css', '2022-11-26 09:53:35'),
(2213, 17, 'admin/view/javascript/d_alertify/css/alertify.min.css', '2022-11-26 09:53:35'),
(2214, 17, 'admin/view/javascript/d_alertify/css/alertify.rtl.css', '2022-11-26 09:53:35'),
(2215, 17, 'admin/view/javascript/d_alertify/css/alertify.rtl.min.css', '2022-11-26 09:53:35'),
(2216, 17, 'admin/view/javascript/d_alertify/css/themes', '2022-11-26 09:53:35'),
(2217, 17, 'admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css', '2022-11-26 09:53:35'),
(2218, 17, 'admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css.map', '2022-11-26 09:53:35'),
(2219, 17, 'admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css', '2022-11-26 09:53:35'),
(2220, 17, 'admin/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css.map', '2022-11-26 09:53:35'),
(2221, 17, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker', '2022-11-26 09:53:35'),
(2222, 17, 'admin/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.js', '2022-11-26 09:53:35'),
(2223, 17, 'admin/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.min.js', '2022-11-26 09:53:35'),
(2224, 17, 'admin/view/javascript/d_bootstrap_select/css/bootstrap-select.css', '2022-11-26 09:53:35'),
(2225, 17, 'admin/view/javascript/d_bootstrap_select/css/bootstrap-select.css.map', '2022-11-26 09:53:35'),
(2226, 17, 'admin/view/javascript/d_bootstrap_select/css/bootstrap-select.min.css', '2022-11-26 09:53:35'),
(2227, 17, 'admin/view/javascript/d_bootstrap_select/js/bootstrap-select.js', '2022-11-26 09:53:35'),
(2228, 17, 'admin/view/javascript/d_bootstrap_select/js/bootstrap-select.js.map', '2022-11-26 09:53:35'),
(2229, 17, 'admin/view/javascript/d_bootstrap_select/js/bootstrap-select.min.js', '2022-11-26 09:53:35'),
(2230, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n', '2022-11-26 09:53:35'),
(2231, 17, 'admin/view/javascript/d_bootstrap_switch/css/bootstrap-switch.css', '2022-11-26 09:53:35'),
(2232, 17, 'admin/view/javascript/d_bootstrap_switch/css/bootstrap-switch.min.css', '2022-11-26 09:53:35'),
(2233, 17, 'admin/view/javascript/d_bootstrap_switch/js/bootstrap-switch.js', '2022-11-26 09:53:35'),
(2234, 17, 'admin/view/javascript/d_bootstrap_switch/js/bootstrap-switch.min.js', '2022-11-26 09:53:35'),
(2235, 17, 'admin/view/javascript/d_bootstrap_tour/css/bootstrap-tour-standalone.css', '2022-11-26 09:53:35'),
(2236, 17, 'admin/view/javascript/d_bootstrap_tour/css/bootstrap-tour-standalone.min.css', '2022-11-26 09:53:35'),
(2237, 17, 'admin/view/javascript/d_bootstrap_tour/css/bootstrap-tour.css', '2022-11-26 09:53:35'),
(2238, 17, 'admin/view/javascript/d_bootstrap_tour/css/bootstrap-tour.min.css', '2022-11-26 09:53:35'),
(2239, 17, 'admin/view/javascript/d_bootstrap_tour/js/bootstrap-tour-standalone.js', '2022-11-26 09:53:35'),
(2240, 17, 'admin/view/javascript/d_bootstrap_tour/js/bootstrap-tour-standalone.min.js', '2022-11-26 09:53:35'),
(2241, 17, 'admin/view/javascript/d_bootstrap_tour/js/bootstrap-tour.js', '2022-11-26 09:53:35'),
(2242, 17, 'admin/view/javascript/d_bootstrap_tour/js/bootstrap-tour.min.js', '2022-11-26 09:53:35'),
(2243, 17, 'admin/view/stylesheet/d_admin_style/core/_blog.scss', '2022-11-26 09:53:35'),
(2244, 17, 'admin/view/stylesheet/d_admin_style/core/_common.scss', '2022-11-26 09:53:35'),
(2245, 17, 'admin/view/stylesheet/d_admin_style/core/_compatible.scss', '2022-11-26 09:53:35'),
(2246, 17, 'admin/view/stylesheet/d_admin_style/core/_notification.scss', '2022-11-26 09:53:35'),
(2247, 17, 'admin/view/stylesheet/d_admin_style/core/_tables.scss', '2022-11-26 09:53:35'),
(2248, 17, 'admin/view/stylesheet/d_admin_style/core/core.css', '2022-11-26 09:53:35'),
(2249, 17, 'admin/view/stylesheet/d_admin_style/core/core.css.map', '2022-11-26 09:53:35'),
(2250, 17, 'admin/view/stylesheet/d_admin_style/core/core.scss', '2022-11-26 09:53:35'),
(2251, 17, 'admin/view/stylesheet/d_admin_style/core/header', '2022-11-26 09:53:35'),
(2252, 17, 'admin/view/stylesheet/d_admin_style/core/normalize', '2022-11-26 09:53:35'),
(2253, 17, 'admin/view/stylesheet/d_admin_style/core/scss', '2022-11-26 09:53:35'),
(2254, 17, 'admin/view/stylesheet/d_admin_style/core/setup.css', '2022-11-26 09:53:35'),
(2255, 17, 'admin/view/stylesheet/d_admin_style/core/setup.css.map', '2022-11-26 09:53:35'),
(2256, 17, 'admin/view/stylesheet/d_admin_style/core/setup.scss', '2022-11-26 09:53:35'),
(2257, 17, 'admin/view/stylesheet/d_admin_style/core/svg', '2022-11-26 09:53:35'),
(2258, 17, 'admin/view/stylesheet/d_admin_style/core/welcome.css', '2022-11-26 09:53:35'),
(2259, 17, 'admin/view/stylesheet/d_admin_style/core/welcome.css.map', '2022-11-26 09:53:35'),
(2260, 17, 'admin/view/stylesheet/d_admin_style/core/welcome.scss', '2022-11-26 09:53:35'),
(2261, 17, 'admin/view/stylesheet/d_admin_style/themes/dark', '2022-11-26 09:53:35'),
(2262, 17, 'admin/view/stylesheet/d_admin_style/themes/default', '2022-11-26 09:53:35'),
(2263, 17, 'admin/view/stylesheet/d_admin_style/themes/light', '2022-11-26 09:53:35'),
(2264, 17, 'admin/view/template/extension/d_admin_style/setup.twig', '2022-11-26 09:53:35'),
(2265, 17, 'admin/view/template/extension/d_quickcheckout/editor.twig', '2022-11-26 09:53:35'),
(2266, 17, 'admin/view/template/extension/d_shopunity/d_validator.twig', '2022-11-26 09:53:35'),
(2267, 17, 'admin/view/template/extension/module/d_quickcheckout.twig', '2022-11-26 09:53:35'),
(2268, 17, 'admin/view/template/extension/module/d_social_login.twig', '2022-11-26 09:53:35'),
(2269, 17, 'catalog/language/en-gb/extension/d_quickcheckout/account.php', '2022-11-26 09:53:35'),
(2270, 17, 'catalog/language/en-gb/extension/d_quickcheckout/cart.php', '2022-11-26 09:53:35'),
(2271, 17, 'catalog/language/en-gb/extension/d_quickcheckout/confirm.php', '2022-11-26 09:53:35'),
(2272, 17, 'catalog/language/en-gb/extension/d_quickcheckout/custom.php', '2022-11-26 09:53:35'),
(2273, 17, 'catalog/language/en-gb/extension/d_quickcheckout/payment.php', '2022-11-26 09:53:35'),
(2274, 17, 'catalog/language/en-gb/extension/d_quickcheckout/payment_address.php', '2022-11-26 09:53:35'),
(2275, 17, 'catalog/language/en-gb/extension/d_quickcheckout/payment_method.php', '2022-11-26 09:53:35'),
(2276, 17, 'catalog/language/en-gb/extension/d_quickcheckout/shipping_address.php', '2022-11-26 09:53:35'),
(2277, 17, 'catalog/language/en-gb/extension/d_quickcheckout/shipping_method.php', '2022-11-26 09:53:35'),
(2278, 17, 'catalog/language/en-gb/extension/module/d_quickcheckout.php', '2022-11-26 09:53:35'),
(2279, 17, 'catalog/language/en-gb/extension/module/d_social_login.php', '2022-11-26 09:53:35'),
(2280, 17, 'catalog/view/javascript/d_alertify/css/alertify.css', '2022-11-26 09:53:35'),
(2281, 17, 'catalog/view/javascript/d_alertify/css/alertify.min.css', '2022-11-26 09:53:35'),
(2282, 17, 'catalog/view/javascript/d_alertify/css/alertify.rtl.css', '2022-11-26 09:53:35'),
(2283, 17, 'catalog/view/javascript/d_alertify/css/alertify.rtl.min.css', '2022-11-26 09:53:35'),
(2284, 17, 'catalog/view/javascript/d_alertify/css/themes', '2022-11-26 09:53:35'),
(2285, 17, 'catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css', '2022-11-26 09:53:35'),
(2286, 17, 'catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.css.map', '2022-11-26 09:53:35'),
(2287, 17, 'catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css', '2022-11-26 09:53:35'),
(2288, 17, 'catalog/view/javascript/d_bootstrap_colorpicker/css/bootstrap-colorpicker.min.css.map', '2022-11-26 09:53:35'),
(2289, 17, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker', '2022-11-26 09:53:35'),
(2290, 17, 'catalog/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.js', '2022-11-26 09:53:35'),
(2291, 17, 'catalog/view/javascript/d_bootstrap_colorpicker/js/bootstrap-colorpicker.min.js', '2022-11-26 09:53:35'),
(2292, 17, 'catalog/view/javascript/d_bootstrap_select/css/bootstrap-select.css', '2022-11-26 09:53:35'),
(2293, 17, 'catalog/view/javascript/d_bootstrap_select/css/bootstrap-select.css.map', '2022-11-26 09:53:35'),
(2294, 17, 'catalog/view/javascript/d_bootstrap_select/css/bootstrap-select.min.css', '2022-11-26 09:53:35'),
(2295, 17, 'catalog/view/javascript/d_bootstrap_select/js/bootstrap-select.js', '2022-11-26 09:53:35'),
(2296, 17, 'catalog/view/javascript/d_bootstrap_select/js/bootstrap-select.js.map', '2022-11-26 09:53:35'),
(2297, 17, 'catalog/view/javascript/d_bootstrap_select/js/bootstrap-select.min.js', '2022-11-26 09:53:35'),
(2298, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n', '2022-11-26 09:53:35'),
(2299, 17, 'catalog/view/javascript/d_bootstrap_switch/css/bootstrap-switch.css', '2022-11-26 09:53:35'),
(2300, 17, 'catalog/view/javascript/d_bootstrap_switch/css/bootstrap-switch.min.css', '2022-11-26 09:53:35'),
(2301, 17, 'catalog/view/javascript/d_bootstrap_switch/js/bootstrap-switch.js', '2022-11-26 09:53:35'),
(2302, 17, 'catalog/view/javascript/d_bootstrap_switch/js/bootstrap-switch.min.js', '2022-11-26 09:53:35'),
(2303, 17, 'catalog/view/javascript/d_bootstrap_tour/css/bootstrap-tour-standalone.css', '2022-11-26 09:53:35'),
(2304, 17, 'catalog/view/javascript/d_bootstrap_tour/css/bootstrap-tour-standalone.min.css', '2022-11-26 09:53:35'),
(2305, 17, 'catalog/view/javascript/d_bootstrap_tour/css/bootstrap-tour.css', '2022-11-26 09:53:35'),
(2306, 17, 'catalog/view/javascript/d_bootstrap_tour/css/bootstrap-tour.min.css', '2022-11-26 09:53:35'),
(2307, 17, 'catalog/view/javascript/d_bootstrap_tour/js/bootstrap-tour-standalone.js', '2022-11-26 09:53:35'),
(2308, 17, 'catalog/view/javascript/d_bootstrap_tour/js/bootstrap-tour-standalone.min.js', '2022-11-26 09:53:35'),
(2309, 17, 'catalog/view/javascript/d_bootstrap_tour/js/bootstrap-tour.js', '2022-11-26 09:53:35'),
(2310, 17, 'catalog/view/javascript/d_bootstrap_tour/js/bootstrap-tour.min.js', '2022-11-26 09:53:35'),
(2311, 17, 'catalog/view/javascript/d_quickcheckout/animate/animate.css', '2022-11-26 09:53:35'),
(2312, 17, 'catalog/view/javascript/d_quickcheckout/animate/animate.min.css', '2022-11-26 09:53:35'),
(2313, 17, 'catalog/view/javascript/d_quickcheckout/bootstrap/conflict.js', '2022-11-26 09:53:35'),
(2314, 17, 'catalog/view/javascript/d_quickcheckout/datetimepicker/bootstrap-datetimepicker.min.css', '2022-11-26 09:53:35'),
(2315, 17, 'catalog/view/javascript/d_quickcheckout/datetimepicker/bootstrap-datetimepicker.min.js', '2022-11-26 09:53:35'),
(2316, 17, 'catalog/view/javascript/d_quickcheckout/datetimepicker/moment', '2022-11-26 09:53:35'),
(2317, 17, 'catalog/view/javascript/d_quickcheckout/gulp/gulpfile.js', '2022-11-26 09:53:35'),
(2318, 17, 'catalog/view/javascript/d_quickcheckout/gulp/package.json', '2022-11-26 09:53:35'),
(2319, 17, 'catalog/view/javascript/d_quickcheckout/immutable/immutable-nonambient.d.ts', '2022-11-26 09:53:35'),
(2320, 17, 'catalog/view/javascript/d_quickcheckout/immutable/immutable.d.ts', '2022-11-26 09:53:35'),
(2321, 17, 'catalog/view/javascript/d_quickcheckout/immutable/immutable.js', '2022-11-26 09:53:35'),
(2322, 17, 'catalog/view/javascript/d_quickcheckout/immutable/immutable.js.flow', '2022-11-26 09:53:35'),
(2323, 17, 'catalog/view/javascript/d_quickcheckout/immutable/immutable.min.js', '2022-11-26 09:53:35'),
(2324, 17, 'catalog/view/javascript/d_quickcheckout/intltelinput/css', '2022-11-26 09:53:35'),
(2325, 17, 'catalog/view/javascript/d_quickcheckout/intltelinput/img', '2022-11-26 09:53:35'),
(2326, 17, 'catalog/view/javascript/d_quickcheckout/intltelinput/js', '2022-11-26 09:53:35'),
(2327, 17, 'catalog/view/javascript/d_quickcheckout/jquerymask/jquery.mask.js', '2022-11-26 09:53:35'),
(2328, 17, 'catalog/view/javascript/d_quickcheckout/jquerymask/jquery.mask.min.js', '2022-11-26 09:53:35'),
(2329, 17, 'catalog/view/javascript/d_quickcheckout/jqueryui/external', '2022-11-26 09:53:35'),
(2330, 17, 'catalog/view/javascript/d_quickcheckout/jqueryui/images', '2022-11-26 09:53:35'),
(2331, 17, 'catalog/view/javascript/d_quickcheckout/jqueryui/jquery-ui.css', '2022-11-26 09:53:35'),
(2332, 17, 'catalog/view/javascript/d_quickcheckout/jqueryui/jquery-ui.js', '2022-11-26 09:53:35'),
(2333, 17, 'catalog/view/javascript/d_quickcheckout/jqueryui/jquery-ui.min.css', '2022-11-26 09:53:35'),
(2334, 17, 'catalog/view/javascript/d_quickcheckout/jqueryui/jquery-ui.min.js', '2022-11-26 09:53:35'),
(2335, 17, 'catalog/view/javascript/d_quickcheckout/jqueryui/jquery-ui.structure.css', '2022-11-26 09:53:35'),
(2336, 17, 'catalog/view/javascript/d_quickcheckout/jqueryui/jquery-ui.structure.min.css', '2022-11-26 09:53:35'),
(2337, 17, 'catalog/view/javascript/d_quickcheckout/jqueryui/jquery-ui.theme.css', '2022-11-26 09:53:35'),
(2338, 17, 'catalog/view/javascript/d_quickcheckout/jqueryui/jquery-ui.theme.min.css', '2022-11-26 09:53:35'),
(2339, 17, 'catalog/view/javascript/d_quickcheckout/jsondiffpatch/jsondiffpatch.js', '2022-11-26 09:53:35'),
(2340, 17, 'catalog/view/javascript/d_quickcheckout/jsondiffpatch/jsondiffpatch.min.js', '2022-11-26 09:53:35'),
(2341, 17, 'catalog/view/javascript/d_quickcheckout/ripecss/ripe.css', '2022-11-26 09:53:35'),
(2342, 17, 'catalog/view/javascript/d_quickcheckout/ripecss/ripe.css.map', '2022-11-26 09:53:35'),
(2343, 17, 'catalog/view/javascript/d_quickcheckout/ripecss/ripe.rtl.css', '2022-11-26 09:53:35'),
(2344, 17, 'catalog/view/javascript/d_quickcheckout/ripecss/ripe.rtl.css.map', '2022-11-26 09:53:35'),
(2345, 17, 'catalog/view/javascript/d_quickcheckout/serializejson/jquery.serializejson.js', '2022-11-26 09:53:35'),
(2346, 17, 'catalog/view/javascript/d_quickcheckout/serializejson/jquery.serializejson.min.js', '2022-11-26 09:53:35'),
(2347, 17, 'catalog/view/javascript/d_quickcheckout/sortable/jquery.sortable.js', '2022-11-26 09:53:35'),
(2348, 17, 'catalog/view/javascript/d_quickcheckout/sortable/jquery.sortable.min.js', '2022-11-26 09:53:35'),
(2349, 17, 'catalog/view/javascript/d_social_login/gulp/gulpfile.js', '2022-11-26 09:53:35'),
(2350, 17, 'catalog/view/javascript/d_social_login/gulp/package-lock.json', '2022-11-26 09:53:35'),
(2351, 17, 'catalog/view/javascript/d_social_login/gulp/package.json', '2022-11-26 09:53:35'),
(2352, 17, 'catalog/view/theme/default/image/d_quickcheckout', '2022-11-26 09:53:35'),
(2353, 17, 'catalog/view/theme/default/javascript/d_quickcheckout', '2022-11-26 09:53:35'),
(2354, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout', '2022-11-26 09:53:35'),
(2355, 17, 'catalog/view/theme/default/stylesheet/d_social_login', '2022-11-26 09:53:35'),
(2356, 17, 'system/library/d_social_login/hybrid/Adapter/AbstractAdapter.php', '2022-11-26 09:53:35'),
(2357, 17, 'system/library/d_social_login/hybrid/Adapter/AdapterInterface.php', '2022-11-26 09:53:35'),
(2358, 17, 'system/library/d_social_login/hybrid/Adapter/DataStoreTrait.php', '2022-11-26 09:53:35'),
(2359, 17, 'system/library/d_social_login/hybrid/Adapter/OAuth1.php', '2022-11-26 09:53:35'),
(2360, 17, 'system/library/d_social_login/hybrid/Adapter/OAuth2.php', '2022-11-26 09:53:35'),
(2361, 17, 'system/library/d_social_login/hybrid/Adapter/OpenID.php', '2022-11-26 09:53:35'),
(2362, 17, 'system/library/d_social_login/hybrid/Data/Collection.php', '2022-11-26 09:53:35'),
(2363, 17, 'system/library/d_social_login/hybrid/Data/Parser.php', '2022-11-26 09:53:35'),
(2364, 17, 'system/library/d_social_login/hybrid/Exception/AuthorizationDeniedException.php', '2022-11-26 09:53:35'),
(2365, 17, 'system/library/d_social_login/hybrid/Exception/BadMethodCallException.php', '2022-11-26 09:53:35'),
(2366, 17, 'system/library/d_social_login/hybrid/Exception/Exception.php', '2022-11-26 09:53:35'),
(2367, 17, 'system/library/d_social_login/hybrid/Exception/ExceptionInterface.php', '2022-11-26 09:53:35'),
(2368, 17, 'system/library/d_social_login/hybrid/Exception/HttpClientFailureException.php', '2022-11-26 09:53:35'),
(2369, 17, 'system/library/d_social_login/hybrid/Exception/HttpRequestFailedException.php', '2022-11-26 09:53:35'),
(2370, 17, 'system/library/d_social_login/hybrid/Exception/InvalidAccessTokenException.php', '2022-11-26 09:53:35'),
(2371, 17, 'system/library/d_social_login/hybrid/Exception/InvalidApplicationCredentialsException.php', '2022-11-26 09:53:35'),
(2372, 17, 'system/library/d_social_login/hybrid/Exception/InvalidArgumentException.php', '2022-11-26 09:53:35'),
(2373, 17, 'system/library/d_social_login/hybrid/Exception/InvalidAuthorizationCodeException.php', '2022-11-26 09:53:35'),
(2374, 17, 'system/library/d_social_login/hybrid/Exception/InvalidAuthorizationStateException.php', '2022-11-26 09:53:35'),
(2375, 17, 'system/library/d_social_login/hybrid/Exception/InvalidOauthTokenException.php', '2022-11-26 09:53:35'),
(2376, 17, 'system/library/d_social_login/hybrid/Exception/InvalidOpenidIdentifierException.php', '2022-11-26 09:53:35'),
(2377, 17, 'system/library/d_social_login/hybrid/Exception/NotImplementedException.php', '2022-11-26 09:53:35'),
(2378, 17, 'system/library/d_social_login/hybrid/Exception/RuntimeException.php', '2022-11-26 09:53:35'),
(2379, 17, 'system/library/d_social_login/hybrid/Exception/UnexpectedApiResponseException.php', '2022-11-26 09:53:35'),
(2380, 17, 'system/library/d_social_login/hybrid/Exception/UnexpectedValueException.php', '2022-11-26 09:53:35'),
(2381, 17, 'system/library/d_social_login/hybrid/HttpClient/Curl.php', '2022-11-26 09:53:35'),
(2382, 17, 'system/library/d_social_login/hybrid/HttpClient/Guzzle.php', '2022-11-26 09:53:35'),
(2383, 17, 'system/library/d_social_login/hybrid/HttpClient/HttpClientInterface.php', '2022-11-26 09:53:35'),
(2384, 17, 'system/library/d_social_login/hybrid/HttpClient/Util.php', '2022-11-26 09:53:35'),
(2385, 17, 'system/library/d_social_login/hybrid/Logger/Logger.php', '2022-11-26 09:53:35'),
(2386, 17, 'system/library/d_social_login/hybrid/Logger/LoggerInterface.php', '2022-11-26 09:53:35'),
(2387, 17, 'system/library/d_social_login/hybrid/Logger/Psr3LoggerWrapper.php', '2022-11-26 09:53:35'),
(2388, 17, 'system/library/d_social_login/hybrid/Provider/AOLOpenID.php', '2022-11-26 09:53:35'),
(2389, 17, 'system/library/d_social_login/hybrid/Provider/Amazon.php', '2022-11-26 09:53:35'),
(2390, 17, 'system/library/d_social_login/hybrid/Provider/Authentiq.php', '2022-11-26 09:53:35'),
(2391, 17, 'system/library/d_social_login/hybrid/Provider/BitBucket.php', '2022-11-26 09:53:35'),
(2392, 17, 'system/library/d_social_login/hybrid/Provider/Blizzard.php', '2022-11-26 09:53:35'),
(2393, 17, 'system/library/d_social_login/hybrid/Provider/BlizzardAPAC.php', '2022-11-26 09:53:35'),
(2394, 17, 'system/library/d_social_login/hybrid/Provider/BlizzardEU.php', '2022-11-26 09:53:35'),
(2395, 17, 'system/library/d_social_login/hybrid/Provider/Discord.php', '2022-11-26 09:53:35'),
(2396, 17, 'system/library/d_social_login/hybrid/Provider/Disqus.php', '2022-11-26 09:53:35'),
(2397, 17, 'system/library/d_social_login/hybrid/Provider/Dribbble.php', '2022-11-26 09:53:35'),
(2398, 17, 'system/library/d_social_login/hybrid/Provider/Facebook.php', '2022-11-26 09:53:35'),
(2399, 17, 'system/library/d_social_login/hybrid/Provider/Foursquare.php', '2022-11-26 09:53:35'),
(2400, 17, 'system/library/d_social_login/hybrid/Provider/GitHub.php', '2022-11-26 09:53:35'),
(2401, 17, 'system/library/d_social_login/hybrid/Provider/GitLab.php', '2022-11-26 09:53:35'),
(2402, 17, 'system/library/d_social_login/hybrid/Provider/Google.php', '2022-11-26 09:53:35'),
(2403, 17, 'system/library/d_social_login/hybrid/Provider/Instagram.php', '2022-11-26 09:53:35'),
(2404, 17, 'system/library/d_social_login/hybrid/Provider/LinkedIn.php', '2022-11-26 09:53:35'),
(2405, 17, 'system/library/d_social_login/hybrid/Provider/Mailru.php', '2022-11-26 09:53:35'),
(2406, 17, 'system/library/d_social_login/hybrid/Provider/MicrosoftGraph.php', '2022-11-26 09:53:35'),
(2407, 17, 'system/library/d_social_login/hybrid/Provider/ORCID.php', '2022-11-26 09:53:35'),
(2408, 17, 'system/library/d_social_login/hybrid/Provider/Odnoklassniki.php', '2022-11-26 09:53:35'),
(2409, 17, 'system/library/d_social_login/hybrid/Provider/OpenID.php', '2022-11-26 09:53:35'),
(2410, 17, 'system/library/d_social_login/hybrid/Provider/Paypal.php', '2022-11-26 09:53:35'),
(2411, 17, 'system/library/d_social_login/hybrid/Provider/PaypalOpenID.php', '2022-11-26 09:53:35'),
(2412, 17, 'system/library/d_social_login/hybrid/Provider/Reddit.php', '2022-11-26 09:53:35'),
(2413, 17, 'system/library/d_social_login/hybrid/Provider/Spotify.php', '2022-11-26 09:53:35'),
(2414, 17, 'system/library/d_social_login/hybrid/Provider/StackExchange.php', '2022-11-26 09:53:35'),
(2415, 17, 'system/library/d_social_login/hybrid/Provider/StackExchangeOpenID.php', '2022-11-26 09:53:35'),
(2416, 17, 'system/library/d_social_login/hybrid/Provider/Steam.php', '2022-11-26 09:53:35'),
(2417, 17, 'system/library/d_social_login/hybrid/Provider/SteemConnect.php', '2022-11-26 09:53:35'),
(2418, 17, 'system/library/d_social_login/hybrid/Provider/Telegram.php', '2022-11-26 09:53:35'),
(2419, 17, 'system/library/d_social_login/hybrid/Provider/Tumblr.php', '2022-11-26 09:53:35'),
(2420, 17, 'system/library/d_social_login/hybrid/Provider/TwitchTV.php', '2022-11-26 09:53:35'),
(2421, 17, 'system/library/d_social_login/hybrid/Provider/Twitter.php', '2022-11-26 09:53:35'),
(2422, 17, 'system/library/d_social_login/hybrid/Provider/Vkontakte.php', '2022-11-26 09:53:35'),
(2423, 17, 'system/library/d_social_login/hybrid/Provider/WeChat.php', '2022-11-26 09:53:35'),
(2424, 17, 'system/library/d_social_login/hybrid/Provider/WeChatChina.php', '2022-11-26 09:53:35'),
(2425, 17, 'system/library/d_social_login/hybrid/Provider/WindowsLive.php', '2022-11-26 09:53:35'),
(2426, 17, 'system/library/d_social_login/hybrid/Provider/WordPress.php', '2022-11-26 09:53:35'),
(2427, 17, 'system/library/d_social_login/hybrid/Provider/Yahoo.php', '2022-11-26 09:53:35'),
(2428, 17, 'system/library/d_social_login/hybrid/Provider/YahooOpenID.php', '2022-11-26 09:53:35'),
(2429, 17, 'system/library/d_social_login/hybrid/Provider/Yandex.php', '2022-11-26 09:53:35'),
(2430, 17, 'system/library/d_social_login/hybrid/Storage/Session.php', '2022-11-26 09:53:35'),
(2431, 17, 'system/library/d_social_login/hybrid/Storage/StorageInterface.php', '2022-11-26 09:53:35'),
(2432, 17, 'system/library/d_social_login/hybrid/Thirdparty/OAuth', '2022-11-26 09:53:35'),
(2433, 17, 'system/library/d_social_login/hybrid/Thirdparty/OpenID', '2022-11-26 09:53:35'),
(2434, 17, 'system/library/d_social_login/hybrid/Thirdparty/readme.md', '2022-11-26 09:53:35'),
(2435, 17, 'system/library/d_social_login/hybrid/User/Activity.php', '2022-11-26 09:53:35'),
(2436, 17, 'system/library/d_social_login/hybrid/User/Contact.php', '2022-11-26 09:53:35'),
(2437, 17, 'system/library/d_social_login/hybrid/User/Profile.php', '2022-11-26 09:53:35'),
(2438, 17, 'system/library/libphonenumber/carrier/data/Map.php', '2022-11-26 09:53:35'),
(2439, 17, 'system/library/libphonenumber/carrier/data/ar', '2022-11-26 09:53:35'),
(2440, 17, 'system/library/libphonenumber/carrier/data/be', '2022-11-26 09:53:35'),
(2441, 17, 'system/library/libphonenumber/carrier/data/en', '2022-11-26 09:53:35'),
(2442, 17, 'system/library/libphonenumber/carrier/data/fa', '2022-11-26 09:53:35'),
(2443, 17, 'system/library/libphonenumber/carrier/data/ru', '2022-11-26 09:53:35'),
(2444, 17, 'system/library/libphonenumber/carrier/data/uk', '2022-11-26 09:53:35'),
(2445, 17, 'system/library/libphonenumber/carrier/data/zh', '2022-11-26 09:53:35'),
(2446, 17, 'system/library/libphonenumber/carrier/data/zh_Hant', '2022-11-26 09:53:35'),
(2447, 17, 'system/library/libphonenumber/geocoding/data/Map.php', '2022-11-26 09:53:35'),
(2448, 17, 'system/library/libphonenumber/geocoding/data/ar', '2022-11-26 09:53:35'),
(2449, 17, 'system/library/libphonenumber/geocoding/data/be', '2022-11-26 09:53:35'),
(2450, 17, 'system/library/libphonenumber/geocoding/data/bg', '2022-11-26 09:53:35'),
(2451, 17, 'system/library/libphonenumber/geocoding/data/bs', '2022-11-26 09:53:35'),
(2452, 17, 'system/library/libphonenumber/geocoding/data/ca', '2022-11-26 09:53:35'),
(2453, 17, 'system/library/libphonenumber/geocoding/data/cs', '2022-11-26 09:53:35'),
(2454, 17, 'system/library/libphonenumber/geocoding/data/de', '2022-11-26 09:53:35'),
(2455, 17, 'system/library/libphonenumber/geocoding/data/el', '2022-11-26 09:53:35'),
(2456, 17, 'system/library/libphonenumber/geocoding/data/en', '2022-11-26 09:53:35'),
(2457, 17, 'system/library/libphonenumber/geocoding/data/es', '2022-11-26 09:53:35'),
(2458, 17, 'system/library/libphonenumber/geocoding/data/fa', '2022-11-26 09:53:35'),
(2459, 17, 'system/library/libphonenumber/geocoding/data/fi', '2022-11-26 09:53:35'),
(2460, 17, 'system/library/libphonenumber/geocoding/data/fr', '2022-11-26 09:53:35'),
(2461, 17, 'system/library/libphonenumber/geocoding/data/hi', '2022-11-26 09:53:35'),
(2462, 17, 'system/library/libphonenumber/geocoding/data/hr', '2022-11-26 09:53:35'),
(2463, 17, 'system/library/libphonenumber/geocoding/data/hu', '2022-11-26 09:53:35'),
(2464, 17, 'system/library/libphonenumber/geocoding/data/hy', '2022-11-26 09:53:35'),
(2465, 17, 'system/library/libphonenumber/geocoding/data/id', '2022-11-26 09:53:35'),
(2466, 17, 'system/library/libphonenumber/geocoding/data/it', '2022-11-26 09:53:35'),
(2467, 17, 'system/library/libphonenumber/geocoding/data/iw', '2022-11-26 09:53:35'),
(2468, 17, 'system/library/libphonenumber/geocoding/data/ja', '2022-11-26 09:53:35'),
(2469, 17, 'system/library/libphonenumber/geocoding/data/ko', '2022-11-26 09:53:35');
INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(2470, 17, 'system/library/libphonenumber/geocoding/data/nl', '2022-11-26 09:53:35'),
(2471, 17, 'system/library/libphonenumber/geocoding/data/pl', '2022-11-26 09:53:35'),
(2472, 17, 'system/library/libphonenumber/geocoding/data/pt', '2022-11-26 09:53:35'),
(2473, 17, 'system/library/libphonenumber/geocoding/data/ro', '2022-11-26 09:53:35'),
(2474, 17, 'system/library/libphonenumber/geocoding/data/ru', '2022-11-26 09:53:35'),
(2475, 17, 'system/library/libphonenumber/geocoding/data/sl', '2022-11-26 09:53:35'),
(2476, 17, 'system/library/libphonenumber/geocoding/data/sq', '2022-11-26 09:53:35'),
(2477, 17, 'system/library/libphonenumber/geocoding/data/sr', '2022-11-26 09:53:35'),
(2478, 17, 'system/library/libphonenumber/geocoding/data/sv', '2022-11-26 09:53:35'),
(2479, 17, 'system/library/libphonenumber/geocoding/data/th', '2022-11-26 09:53:35'),
(2480, 17, 'system/library/libphonenumber/geocoding/data/tr', '2022-11-26 09:53:35'),
(2481, 17, 'system/library/libphonenumber/geocoding/data/uk', '2022-11-26 09:53:35'),
(2482, 17, 'system/library/libphonenumber/geocoding/data/vi', '2022-11-26 09:53:35'),
(2483, 17, 'system/library/libphonenumber/geocoding/data/zh', '2022-11-26 09:53:35'),
(2484, 17, 'system/library/libphonenumber/geocoding/data/zh_Hant', '2022-11-26 09:53:35'),
(2485, 17, 'system/library/libphonenumber/timezone/data/map_data.php', '2022-11-26 09:53:35'),
(2486, 17, 'system/library/template/Twig/Extension/DTwigManager.php', '2022-11-26 09:53:35'),
(2487, 17, 'admin/view/javascript/d_alertify/css/themes/bootstrap.css', '2022-11-26 09:53:35'),
(2488, 17, 'admin/view/javascript/d_alertify/css/themes/bootstrap.min.css', '2022-11-26 09:53:35'),
(2489, 17, 'admin/view/javascript/d_alertify/css/themes/bootstrap.rtl.css', '2022-11-26 09:53:35'),
(2490, 17, 'admin/view/javascript/d_alertify/css/themes/bootstrap.rtl.min.css', '2022-11-26 09:53:35'),
(2491, 17, 'admin/view/javascript/d_alertify/css/themes/default.css', '2022-11-26 09:53:35'),
(2492, 17, 'admin/view/javascript/d_alertify/css/themes/default.min.css', '2022-11-26 09:53:35'),
(2493, 17, 'admin/view/javascript/d_alertify/css/themes/default.rtl.css', '2022-11-26 09:53:35'),
(2494, 17, 'admin/view/javascript/d_alertify/css/themes/default.rtl.min.css', '2022-11-26 09:53:35'),
(2495, 17, 'admin/view/javascript/d_alertify/css/themes/semantic.css', '2022-11-26 09:53:35'),
(2496, 17, 'admin/view/javascript/d_alertify/css/themes/semantic.min.css', '2022-11-26 09:53:35'),
(2497, 17, 'admin/view/javascript/d_alertify/css/themes/semantic.rtl.css', '2022-11-26 09:53:35'),
(2498, 17, 'admin/view/javascript/d_alertify/css/themes/semantic.rtl.min.css', '2022-11-26 09:53:35'),
(2499, 17, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha-horizontal.png', '2022-11-26 09:53:35'),
(2500, 17, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha.png', '2022-11-26 09:53:35'),
(2501, 17, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue-horizontal.png', '2022-11-26 09:53:35'),
(2502, 17, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue.png', '2022-11-26 09:53:35'),
(2503, 17, 'admin/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/saturation.png', '2022-11-26 09:53:35'),
(2504, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-ar_AR.js', '2022-11-26 09:53:35'),
(2505, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-ar_AR.min.js', '2022-11-26 09:53:35'),
(2506, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-bg_BG.js', '2022-11-26 09:53:35'),
(2507, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-bg_BG.min.js', '2022-11-26 09:53:35'),
(2508, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-cro_CRO.js', '2022-11-26 09:53:35'),
(2509, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-cro_CRO.min.js', '2022-11-26 09:53:35'),
(2510, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-cs_CZ.js', '2022-11-26 09:53:35'),
(2511, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-cs_CZ.min.js', '2022-11-26 09:53:35'),
(2512, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-da_DK.js', '2022-11-26 09:53:35'),
(2513, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-da_DK.min.js', '2022-11-26 09:53:35'),
(2514, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-de_DE.js', '2022-11-26 09:53:35'),
(2515, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-de_DE.min.js', '2022-11-26 09:53:35'),
(2516, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-en_US.js', '2022-11-26 09:53:35'),
(2517, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-en_US.min.js', '2022-11-26 09:53:35'),
(2518, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-es_CL.js', '2022-11-26 09:53:35'),
(2519, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-es_CL.min.js', '2022-11-26 09:53:35'),
(2520, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-es_ES.js', '2022-11-26 09:53:35'),
(2521, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-es_ES.min.js', '2022-11-26 09:53:35'),
(2522, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-et_EE.js', '2022-11-26 09:53:35'),
(2523, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-et_EE.min.js', '2022-11-26 09:53:35'),
(2524, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-eu.js', '2022-11-26 09:53:35'),
(2525, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-eu.min.js', '2022-11-26 09:53:35'),
(2526, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-fa_IR.js', '2022-11-26 09:53:35'),
(2527, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-fa_IR.min.js', '2022-11-26 09:53:35'),
(2528, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-fi_FI.js', '2022-11-26 09:53:35'),
(2529, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-fi_FI.min.js', '2022-11-26 09:53:35'),
(2530, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-fr_FR.js', '2022-11-26 09:53:35'),
(2531, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-fr_FR.min.js', '2022-11-26 09:53:35'),
(2532, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-hu_HU.js', '2022-11-26 09:53:35'),
(2533, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-hu_HU.min.js', '2022-11-26 09:53:35'),
(2534, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-id_ID.js', '2022-11-26 09:53:35'),
(2535, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-id_ID.min.js', '2022-11-26 09:53:35'),
(2536, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-it_IT.js', '2022-11-26 09:53:35'),
(2537, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-it_IT.min.js', '2022-11-26 09:53:35'),
(2538, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-ja_JP.js', '2022-11-26 09:53:35'),
(2539, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-ja_JP.min.js', '2022-11-26 09:53:35'),
(2540, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-kh_KM.js', '2022-11-26 09:53:35'),
(2541, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-kh_KM.min.js', '2022-11-26 09:53:35'),
(2542, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-ko_KR.js', '2022-11-26 09:53:35'),
(2543, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-ko_KR.min.js', '2022-11-26 09:53:35'),
(2544, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-lt_LT.js', '2022-11-26 09:53:35'),
(2545, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-lt_LT.min.js', '2022-11-26 09:53:35'),
(2546, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-nb_NO.js', '2022-11-26 09:53:35'),
(2547, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-nb_NO.min.js', '2022-11-26 09:53:35'),
(2548, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-nl_NL.js', '2022-11-26 09:53:35'),
(2549, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-nl_NL.min.js', '2022-11-26 09:53:35'),
(2550, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-pl_PL.js', '2022-11-26 09:53:35'),
(2551, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-pl_PL.min.js', '2022-11-26 09:53:35'),
(2552, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-pt_BR.js', '2022-11-26 09:53:35'),
(2553, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-pt_BR.min.js', '2022-11-26 09:53:35'),
(2554, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-pt_PT.js', '2022-11-26 09:53:35'),
(2555, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-pt_PT.min.js', '2022-11-26 09:53:35'),
(2556, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-ro_RO.js', '2022-11-26 09:53:35'),
(2557, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-ro_RO.min.js', '2022-11-26 09:53:35'),
(2558, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-ru_RU.js', '2022-11-26 09:53:35'),
(2559, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-ru_RU.min.js', '2022-11-26 09:53:35'),
(2560, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-sk_SK.js', '2022-11-26 09:53:35'),
(2561, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-sk_SK.min.js', '2022-11-26 09:53:35'),
(2562, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-sl_SI.js', '2022-11-26 09:53:35'),
(2563, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-sl_SI.min.js', '2022-11-26 09:53:35'),
(2564, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-sv_SE.js', '2022-11-26 09:53:35'),
(2565, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-sv_SE.min.js', '2022-11-26 09:53:35'),
(2566, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-tr_TR.js', '2022-11-26 09:53:35'),
(2567, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-tr_TR.min.js', '2022-11-26 09:53:35'),
(2568, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-ua_UA.js', '2022-11-26 09:53:35'),
(2569, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-ua_UA.min.js', '2022-11-26 09:53:35'),
(2570, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-vi_VN.js', '2022-11-26 09:53:35'),
(2571, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-vi_VN.min.js', '2022-11-26 09:53:35'),
(2572, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-zh_CN.js', '2022-11-26 09:53:35'),
(2573, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-zh_CN.min.js', '2022-11-26 09:53:35'),
(2574, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-zh_TW.js', '2022-11-26 09:53:35'),
(2575, 17, 'admin/view/javascript/d_bootstrap_select/js/i18n/defaults-zh_TW.min.js', '2022-11-26 09:53:35'),
(2576, 17, 'admin/view/stylesheet/d_admin_style/core/header/header.css', '2022-11-26 09:53:35'),
(2577, 17, 'admin/view/stylesheet/d_admin_style/core/header/header.css.map', '2022-11-26 09:53:35'),
(2578, 17, 'admin/view/stylesheet/d_admin_style/core/header/header.scss', '2022-11-26 09:53:35'),
(2579, 17, 'admin/view/stylesheet/d_admin_style/core/header/headerold.css', '2022-11-26 09:53:35'),
(2580, 17, 'admin/view/stylesheet/d_admin_style/core/header/headerold.css.map', '2022-11-26 09:53:35'),
(2581, 17, 'admin/view/stylesheet/d_admin_style/core/header/headerold.scss', '2022-11-26 09:53:35'),
(2582, 17, 'admin/view/stylesheet/d_admin_style/core/normalize/normalize.css', '2022-11-26 09:53:35'),
(2583, 17, 'admin/view/stylesheet/d_admin_style/core/scss/_mixin.scss', '2022-11-26 09:53:35'),
(2584, 17, 'admin/view/stylesheet/d_admin_style/core/scss/_mixins.sass', '2022-11-26 09:53:35'),
(2585, 17, 'admin/view/stylesheet/d_admin_style/core/scss/_variable.scss', '2022-11-26 09:53:35'),
(2586, 17, 'admin/view/stylesheet/d_admin_style/core/scss/modification', '2022-11-26 09:53:35'),
(2587, 17, 'admin/view/stylesheet/d_admin_style/core/scss/mofication', '2022-11-26 09:53:35'),
(2588, 17, 'admin/view/stylesheet/d_admin_style/core/scss/section', '2022-11-26 09:53:35'),
(2589, 17, 'admin/view/stylesheet/d_admin_style/core/scss/third_party', '2022-11-26 09:53:35'),
(2590, 17, 'admin/view/stylesheet/d_admin_style/core/svg/loader.svg', '2022-11-26 09:53:35'),
(2591, 17, 'admin/view/stylesheet/d_admin_style/themes/dark/dark.css', '2022-11-26 09:53:35'),
(2592, 17, 'admin/view/stylesheet/d_admin_style/themes/dark/dark.css.map', '2022-11-26 09:53:35'),
(2593, 17, 'admin/view/stylesheet/d_admin_style/themes/dark/dark.scss', '2022-11-26 09:53:35'),
(2594, 17, 'admin/view/stylesheet/d_admin_style/themes/dark/scss', '2022-11-26 09:53:35'),
(2595, 17, 'admin/view/stylesheet/d_admin_style/themes/dark/styles.css', '2022-11-26 09:53:35'),
(2596, 17, 'admin/view/stylesheet/d_admin_style/themes/dark/styles.css.map', '2022-11-26 09:53:35'),
(2597, 17, 'admin/view/stylesheet/d_admin_style/themes/dark/styles.scss', '2022-11-26 09:53:35'),
(2598, 17, 'admin/view/stylesheet/d_admin_style/themes/default/styles.css', '2022-11-26 09:53:35'),
(2599, 17, 'admin/view/stylesheet/d_admin_style/themes/light/light.css', '2022-11-26 09:53:35'),
(2600, 17, 'admin/view/stylesheet/d_admin_style/themes/light/light.css.map', '2022-11-26 09:53:35'),
(2601, 17, 'admin/view/stylesheet/d_admin_style/themes/light/light.scss', '2022-11-26 09:53:35'),
(2602, 17, 'admin/view/stylesheet/d_admin_style/themes/light/modification', '2022-11-26 09:53:35'),
(2603, 17, 'admin/view/stylesheet/d_admin_style/themes/light/scss', '2022-11-26 09:53:35'),
(2604, 17, 'admin/view/stylesheet/d_admin_style/themes/light/styles.css', '2022-11-26 09:53:35'),
(2605, 17, 'admin/view/stylesheet/d_admin_style/themes/light/styles.css.map', '2022-11-26 09:53:35'),
(2606, 17, 'admin/view/stylesheet/d_admin_style/themes/light/styles.scss', '2022-11-26 09:53:35'),
(2607, 17, 'catalog/view/javascript/d_alertify/css/themes/bootstrap.css', '2022-11-26 09:53:35'),
(2608, 17, 'catalog/view/javascript/d_alertify/css/themes/bootstrap.min.css', '2022-11-26 09:53:35'),
(2609, 17, 'catalog/view/javascript/d_alertify/css/themes/bootstrap.rtl.css', '2022-11-26 09:53:35'),
(2610, 17, 'catalog/view/javascript/d_alertify/css/themes/bootstrap.rtl.min.css', '2022-11-26 09:53:36'),
(2611, 17, 'catalog/view/javascript/d_alertify/css/themes/default.css', '2022-11-26 09:53:36'),
(2612, 17, 'catalog/view/javascript/d_alertify/css/themes/default.min.css', '2022-11-26 09:53:36'),
(2613, 17, 'catalog/view/javascript/d_alertify/css/themes/default.rtl.css', '2022-11-26 09:53:36'),
(2614, 17, 'catalog/view/javascript/d_alertify/css/themes/default.rtl.min.css', '2022-11-26 09:53:36'),
(2615, 17, 'catalog/view/javascript/d_alertify/css/themes/semantic.css', '2022-11-26 09:53:36'),
(2616, 17, 'catalog/view/javascript/d_alertify/css/themes/semantic.min.css', '2022-11-26 09:53:36'),
(2617, 17, 'catalog/view/javascript/d_alertify/css/themes/semantic.rtl.css', '2022-11-26 09:53:36'),
(2618, 17, 'catalog/view/javascript/d_alertify/css/themes/semantic.rtl.min.css', '2022-11-26 09:53:36'),
(2619, 17, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha-horizontal.png', '2022-11-26 09:53:36'),
(2620, 17, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/alpha.png', '2022-11-26 09:53:36'),
(2621, 17, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue-horizontal.png', '2022-11-26 09:53:36'),
(2622, 17, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/hue.png', '2022-11-26 09:53:36'),
(2623, 17, 'catalog/view/javascript/d_bootstrap_colorpicker/img/bootstrap-colorpicker/saturation.png', '2022-11-26 09:53:36'),
(2624, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-ar_AR.js', '2022-11-26 09:53:36'),
(2625, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-ar_AR.min.js', '2022-11-26 09:53:36'),
(2626, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-bg_BG.js', '2022-11-26 09:53:36'),
(2627, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-bg_BG.min.js', '2022-11-26 09:53:36'),
(2628, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-cro_CRO.js', '2022-11-26 09:53:36'),
(2629, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-cro_CRO.min.js', '2022-11-26 09:53:36'),
(2630, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-cs_CZ.js', '2022-11-26 09:53:36'),
(2631, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-cs_CZ.min.js', '2022-11-26 09:53:36'),
(2632, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-da_DK.js', '2022-11-26 09:53:36'),
(2633, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-da_DK.min.js', '2022-11-26 09:53:36'),
(2634, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-de_DE.js', '2022-11-26 09:53:36'),
(2635, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-de_DE.min.js', '2022-11-26 09:53:36'),
(2636, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-en_US.js', '2022-11-26 09:53:36'),
(2637, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-en_US.min.js', '2022-11-26 09:53:36'),
(2638, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-es_CL.js', '2022-11-26 09:53:36'),
(2639, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-es_CL.min.js', '2022-11-26 09:53:36'),
(2640, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-es_ES.js', '2022-11-26 09:53:36'),
(2641, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-es_ES.min.js', '2022-11-26 09:53:36'),
(2642, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-et_EE.js', '2022-11-26 09:53:36'),
(2643, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-et_EE.min.js', '2022-11-26 09:53:36'),
(2644, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-eu.js', '2022-11-26 09:53:36'),
(2645, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-eu.min.js', '2022-11-26 09:53:36'),
(2646, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-fa_IR.js', '2022-11-26 09:53:36'),
(2647, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-fa_IR.min.js', '2022-11-26 09:53:36'),
(2648, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-fi_FI.js', '2022-11-26 09:53:36'),
(2649, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-fi_FI.min.js', '2022-11-26 09:53:36'),
(2650, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-fr_FR.js', '2022-11-26 09:53:36'),
(2651, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-fr_FR.min.js', '2022-11-26 09:53:36'),
(2652, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-hu_HU.js', '2022-11-26 09:53:36'),
(2653, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-hu_HU.min.js', '2022-11-26 09:53:36'),
(2654, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-id_ID.js', '2022-11-26 09:53:36'),
(2655, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-id_ID.min.js', '2022-11-26 09:53:36'),
(2656, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-it_IT.js', '2022-11-26 09:53:36'),
(2657, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-it_IT.min.js', '2022-11-26 09:53:36'),
(2658, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-ja_JP.js', '2022-11-26 09:53:36'),
(2659, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-ja_JP.min.js', '2022-11-26 09:53:36'),
(2660, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-kh_KM.js', '2022-11-26 09:53:36'),
(2661, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-kh_KM.min.js', '2022-11-26 09:53:36'),
(2662, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-ko_KR.js', '2022-11-26 09:53:36'),
(2663, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-ko_KR.min.js', '2022-11-26 09:53:36'),
(2664, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-lt_LT.js', '2022-11-26 09:53:36'),
(2665, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-lt_LT.min.js', '2022-11-26 09:53:36'),
(2666, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-nb_NO.js', '2022-11-26 09:53:36'),
(2667, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-nb_NO.min.js', '2022-11-26 09:53:36'),
(2668, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-nl_NL.js', '2022-11-26 09:53:36'),
(2669, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-nl_NL.min.js', '2022-11-26 09:53:36'),
(2670, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-pl_PL.js', '2022-11-26 09:53:36'),
(2671, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-pl_PL.min.js', '2022-11-26 09:53:36'),
(2672, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-pt_BR.js', '2022-11-26 09:53:36'),
(2673, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-pt_BR.min.js', '2022-11-26 09:53:36'),
(2674, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-pt_PT.js', '2022-11-26 09:53:36'),
(2675, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-pt_PT.min.js', '2022-11-26 09:53:36'),
(2676, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-ro_RO.js', '2022-11-26 09:53:36'),
(2677, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-ro_RO.min.js', '2022-11-26 09:53:36'),
(2678, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-ru_RU.js', '2022-11-26 09:53:36'),
(2679, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-ru_RU.min.js', '2022-11-26 09:53:36'),
(2680, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-sk_SK.js', '2022-11-26 09:53:36'),
(2681, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-sk_SK.min.js', '2022-11-26 09:53:36'),
(2682, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-sl_SI.js', '2022-11-26 09:53:36'),
(2683, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-sl_SI.min.js', '2022-11-26 09:53:36'),
(2684, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-sv_SE.js', '2022-11-26 09:53:36'),
(2685, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-sv_SE.min.js', '2022-11-26 09:53:36'),
(2686, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-tr_TR.js', '2022-11-26 09:53:36'),
(2687, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-tr_TR.min.js', '2022-11-26 09:53:36'),
(2688, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-ua_UA.js', '2022-11-26 09:53:36'),
(2689, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-ua_UA.min.js', '2022-11-26 09:53:36'),
(2690, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-vi_VN.js', '2022-11-26 09:53:36'),
(2691, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-vi_VN.min.js', '2022-11-26 09:53:36'),
(2692, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-zh_CN.js', '2022-11-26 09:53:36'),
(2693, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-zh_CN.min.js', '2022-11-26 09:53:36'),
(2694, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-zh_TW.js', '2022-11-26 09:53:36'),
(2695, 17, 'catalog/view/javascript/d_bootstrap_select/js/i18n/defaults-zh_TW.min.js', '2022-11-26 09:53:36'),
(2696, 17, 'catalog/view/javascript/d_quickcheckout/datetimepicker/moment/locales.js', '2022-11-26 09:53:36'),
(2697, 17, 'catalog/view/javascript/d_quickcheckout/datetimepicker/moment/locales.min.js', '2022-11-26 09:53:36'),
(2698, 17, 'catalog/view/javascript/d_quickcheckout/datetimepicker/moment/moment-with-locales.js', '2022-11-26 09:53:36'),
(2699, 17, 'catalog/view/javascript/d_quickcheckout/datetimepicker/moment/moment-with-locales.min.js', '2022-11-26 09:53:36'),
(2700, 17, 'catalog/view/javascript/d_quickcheckout/datetimepicker/moment/moment.min.js', '2022-11-26 09:53:36'),
(2701, 17, 'catalog/view/javascript/d_quickcheckout/datetimepicker/moment/tests.js', '2022-11-26 09:53:36'),
(2702, 17, 'catalog/view/javascript/d_quickcheckout/intltelinput/css/demo.css', '2022-11-26 09:53:36'),
(2703, 17, 'catalog/view/javascript/d_quickcheckout/intltelinput/css/intlTelInput.css', '2022-11-26 09:53:36'),
(2704, 17, 'catalog/view/javascript/d_quickcheckout/intltelinput/css/intlTelInput.min.css', '2022-11-26 09:53:36'),
(2705, 17, 'catalog/view/javascript/d_quickcheckout/intltelinput/img/flags.png', '2022-11-26 09:53:36'),
(2706, 17, 'catalog/view/javascript/d_quickcheckout/intltelinput/img/flags@2x.png', '2022-11-26 09:53:36'),
(2707, 17, 'catalog/view/javascript/d_quickcheckout/intltelinput/js/intlTelInput.js', '2022-11-26 09:53:36'),
(2708, 17, 'catalog/view/javascript/d_quickcheckout/intltelinput/js/intlTelInput.min.js', '2022-11-26 09:53:36'),
(2709, 17, 'catalog/view/javascript/d_quickcheckout/intltelinput/js/utils.js', '2022-11-26 09:53:36'),
(2710, 17, 'catalog/view/javascript/d_quickcheckout/jqueryui/external/jquery', '2022-11-26 09:53:36'),
(2711, 17, 'catalog/view/javascript/d_quickcheckout/jqueryui/images/ui-icons_444444_256x240.png', '2022-11-26 09:53:36'),
(2712, 17, 'catalog/view/javascript/d_quickcheckout/jqueryui/images/ui-icons_555555_256x240.png', '2022-11-26 09:53:36'),
(2713, 17, 'catalog/view/javascript/d_quickcheckout/jqueryui/images/ui-icons_777620_256x240.png', '2022-11-26 09:53:36'),
(2714, 17, 'catalog/view/javascript/d_quickcheckout/jqueryui/images/ui-icons_777777_256x240.png', '2022-11-26 09:53:36'),
(2715, 17, 'catalog/view/javascript/d_quickcheckout/jqueryui/images/ui-icons_cc0000_256x240.png', '2022-11-26 09:53:36'),
(2716, 17, 'catalog/view/javascript/d_quickcheckout/jqueryui/images/ui-icons_ffffff_256x240.png', '2022-11-26 09:53:36'),
(2717, 17, 'catalog/view/theme/default/image/d_quickcheckout/logo.png', '2022-11-26 09:53:36'),
(2718, 17, 'catalog/view/theme/default/image/d_quickcheckout/logo.svg', '2022-11-26 09:53:36'),
(2719, 17, 'catalog/view/theme/default/javascript/d_quickcheckout/component', '2022-11-26 09:53:36'),
(2720, 17, 'catalog/view/theme/default/javascript/d_quickcheckout/main.js', '2022-11-26 09:53:36'),
(2721, 17, 'catalog/view/theme/default/javascript/d_quickcheckout/step', '2022-11-26 09:53:36'),
(2722, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/main.css', '2022-11-26 09:53:36'),
(2723, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/main.css.map', '2022-11-26 09:53:36'),
(2724, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/main.scss', '2022-11-26 09:53:36'),
(2725, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/scss', '2022-11-26 09:53:36'),
(2726, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/skin', '2022-11-26 09:53:36'),
(2727, 17, 'catalog/view/theme/default/stylesheet/d_social_login/form.css', '2022-11-26 09:53:36'),
(2728, 17, 'catalog/view/theme/default/stylesheet/d_social_login/form.scss', '2022-11-26 09:53:36'),
(2729, 17, 'catalog/view/theme/default/stylesheet/d_social_login/icons', '2022-11-26 09:53:36'),
(2730, 17, 'catalog/view/theme/default/stylesheet/d_social_login/pre_loader', '2022-11-26 09:53:36'),
(2731, 17, 'catalog/view/theme/default/stylesheet/d_social_login/styles.css', '2022-11-26 09:53:36'),
(2732, 17, 'catalog/view/theme/default/stylesheet/d_social_login/styles.css.map', '2022-11-26 09:53:36'),
(2733, 17, 'catalog/view/theme/default/stylesheet/d_social_login/styles.scss', '2022-11-26 09:53:36'),
(2734, 17, 'catalog/view/theme/default/template/checkout/d_quickcheckout.twig', '2022-11-26 09:53:36'),
(2735, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout', '2022-11-26 09:53:36'),
(2736, 17, 'catalog/view/theme/default/template/extension/d_social_login', '2022-11-26 09:53:36'),
(2737, 17, 'system/library/d_social_login/hybrid/Thirdparty/OAuth/OAuthConsumer.php', '2022-11-26 09:53:36'),
(2738, 17, 'system/library/d_social_login/hybrid/Thirdparty/OAuth/OAuthRequest.php', '2022-11-26 09:53:36'),
(2739, 17, 'system/library/d_social_login/hybrid/Thirdparty/OAuth/OAuthSignatureMethod.php', '2022-11-26 09:53:36'),
(2740, 17, 'system/library/d_social_login/hybrid/Thirdparty/OAuth/OAuthSignatureMethodHMACSHA1.php', '2022-11-26 09:53:36'),
(2741, 17, 'system/library/d_social_login/hybrid/Thirdparty/OAuth/OAuthUtil.php', '2022-11-26 09:53:36'),
(2742, 17, 'system/library/d_social_login/hybrid/Thirdparty/OpenID/LightOpenID.php', '2022-11-26 09:53:36'),
(2743, 17, 'system/library/libphonenumber/carrier/data/ar/965.php', '2022-11-26 09:53:36'),
(2744, 17, 'system/library/libphonenumber/carrier/data/be/375.php', '2022-11-26 09:53:36'),
(2745, 17, 'system/library/libphonenumber/carrier/data/en/1.php', '2022-11-26 09:53:36'),
(2746, 17, 'system/library/libphonenumber/carrier/data/en/20.php', '2022-11-26 09:53:36'),
(2747, 17, 'system/library/libphonenumber/carrier/data/en/211.php', '2022-11-26 09:53:36'),
(2748, 17, 'system/library/libphonenumber/carrier/data/en/212.php', '2022-11-26 09:53:36'),
(2749, 17, 'system/library/libphonenumber/carrier/data/en/213.php', '2022-11-26 09:53:36'),
(2750, 17, 'system/library/libphonenumber/carrier/data/en/216.php', '2022-11-26 09:53:36'),
(2751, 17, 'system/library/libphonenumber/carrier/data/en/220.php', '2022-11-26 09:53:36'),
(2752, 17, 'system/library/libphonenumber/carrier/data/en/221.php', '2022-11-26 09:53:36'),
(2753, 17, 'system/library/libphonenumber/carrier/data/en/222.php', '2022-11-26 09:53:36'),
(2754, 17, 'system/library/libphonenumber/carrier/data/en/223.php', '2022-11-26 09:53:36'),
(2755, 17, 'system/library/libphonenumber/carrier/data/en/224.php', '2022-11-26 09:53:36'),
(2756, 17, 'system/library/libphonenumber/carrier/data/en/225.php', '2022-11-26 09:53:36'),
(2757, 17, 'system/library/libphonenumber/carrier/data/en/226.php', '2022-11-26 09:53:36'),
(2758, 17, 'system/library/libphonenumber/carrier/data/en/227.php', '2022-11-26 09:53:36'),
(2759, 17, 'system/library/libphonenumber/carrier/data/en/228.php', '2022-11-26 09:53:36'),
(2760, 17, 'system/library/libphonenumber/carrier/data/en/229.php', '2022-11-26 09:53:36'),
(2761, 17, 'system/library/libphonenumber/carrier/data/en/230.php', '2022-11-26 09:53:36'),
(2762, 17, 'system/library/libphonenumber/carrier/data/en/231.php', '2022-11-26 09:53:36'),
(2763, 17, 'system/library/libphonenumber/carrier/data/en/232.php', '2022-11-26 09:53:36'),
(2764, 17, 'system/library/libphonenumber/carrier/data/en/233.php', '2022-11-26 09:53:36'),
(2765, 17, 'system/library/libphonenumber/carrier/data/en/234.php', '2022-11-26 09:53:36'),
(2766, 17, 'system/library/libphonenumber/carrier/data/en/235.php', '2022-11-26 09:53:36'),
(2767, 17, 'system/library/libphonenumber/carrier/data/en/236.php', '2022-11-26 09:53:36'),
(2768, 17, 'system/library/libphonenumber/carrier/data/en/237.php', '2022-11-26 09:53:36'),
(2769, 17, 'system/library/libphonenumber/carrier/data/en/238.php', '2022-11-26 09:53:36'),
(2770, 17, 'system/library/libphonenumber/carrier/data/en/239.php', '2022-11-26 09:53:36'),
(2771, 17, 'system/library/libphonenumber/carrier/data/en/240.php', '2022-11-26 09:53:36'),
(2772, 17, 'system/library/libphonenumber/carrier/data/en/241.php', '2022-11-26 09:53:36'),
(2773, 17, 'system/library/libphonenumber/carrier/data/en/242.php', '2022-11-26 09:53:36'),
(2774, 17, 'system/library/libphonenumber/carrier/data/en/243.php', '2022-11-26 09:53:36'),
(2775, 17, 'system/library/libphonenumber/carrier/data/en/244.php', '2022-11-26 09:53:36'),
(2776, 17, 'system/library/libphonenumber/carrier/data/en/245.php', '2022-11-26 09:53:36'),
(2777, 17, 'system/library/libphonenumber/carrier/data/en/248.php', '2022-11-26 09:53:36'),
(2778, 17, 'system/library/libphonenumber/carrier/data/en/249.php', '2022-11-26 09:53:36'),
(2779, 17, 'system/library/libphonenumber/carrier/data/en/250.php', '2022-11-26 09:53:36'),
(2780, 17, 'system/library/libphonenumber/carrier/data/en/251.php', '2022-11-26 09:53:36'),
(2781, 17, 'system/library/libphonenumber/carrier/data/en/252.php', '2022-11-26 09:53:36'),
(2782, 17, 'system/library/libphonenumber/carrier/data/en/253.php', '2022-11-26 09:53:36'),
(2783, 17, 'system/library/libphonenumber/carrier/data/en/254.php', '2022-11-26 09:53:36'),
(2784, 17, 'system/library/libphonenumber/carrier/data/en/255.php', '2022-11-26 09:53:36'),
(2785, 17, 'system/library/libphonenumber/carrier/data/en/256.php', '2022-11-26 09:53:36'),
(2786, 17, 'system/library/libphonenumber/carrier/data/en/257.php', '2022-11-26 09:53:36'),
(2787, 17, 'system/library/libphonenumber/carrier/data/en/258.php', '2022-11-26 09:53:36'),
(2788, 17, 'system/library/libphonenumber/carrier/data/en/260.php', '2022-11-26 09:53:36'),
(2789, 17, 'system/library/libphonenumber/carrier/data/en/261.php', '2022-11-26 09:53:36'),
(2790, 17, 'system/library/libphonenumber/carrier/data/en/262.php', '2022-11-26 09:53:36'),
(2791, 17, 'system/library/libphonenumber/carrier/data/en/263.php', '2022-11-26 09:53:36'),
(2792, 17, 'system/library/libphonenumber/carrier/data/en/264.php', '2022-11-26 09:53:36'),
(2793, 17, 'system/library/libphonenumber/carrier/data/en/265.php', '2022-11-26 09:53:36'),
(2794, 17, 'system/library/libphonenumber/carrier/data/en/267.php', '2022-11-26 09:53:36'),
(2795, 17, 'system/library/libphonenumber/carrier/data/en/268.php', '2022-11-26 09:53:36'),
(2796, 17, 'system/library/libphonenumber/carrier/data/en/269.php', '2022-11-26 09:53:36'),
(2797, 17, 'system/library/libphonenumber/carrier/data/en/27.php', '2022-11-26 09:53:36'),
(2798, 17, 'system/library/libphonenumber/carrier/data/en/297.php', '2022-11-26 09:53:36'),
(2799, 17, 'system/library/libphonenumber/carrier/data/en/298.php', '2022-11-26 09:53:36'),
(2800, 17, 'system/library/libphonenumber/carrier/data/en/299.php', '2022-11-26 09:53:36'),
(2801, 17, 'system/library/libphonenumber/carrier/data/en/30.php', '2022-11-26 09:53:36'),
(2802, 17, 'system/library/libphonenumber/carrier/data/en/31.php', '2022-11-26 09:53:36'),
(2803, 17, 'system/library/libphonenumber/carrier/data/en/32.php', '2022-11-26 09:53:36'),
(2804, 17, 'system/library/libphonenumber/carrier/data/en/33.php', '2022-11-26 09:53:36'),
(2805, 17, 'system/library/libphonenumber/carrier/data/en/34.php', '2022-11-26 09:53:36'),
(2806, 17, 'system/library/libphonenumber/carrier/data/en/350.php', '2022-11-26 09:53:36'),
(2807, 17, 'system/library/libphonenumber/carrier/data/en/351.php', '2022-11-26 09:53:36'),
(2808, 17, 'system/library/libphonenumber/carrier/data/en/352.php', '2022-11-26 09:53:36'),
(2809, 17, 'system/library/libphonenumber/carrier/data/en/353.php', '2022-11-26 09:53:36'),
(2810, 17, 'system/library/libphonenumber/carrier/data/en/354.php', '2022-11-26 09:53:36'),
(2811, 17, 'system/library/libphonenumber/carrier/data/en/355.php', '2022-11-26 09:53:36'),
(2812, 17, 'system/library/libphonenumber/carrier/data/en/356.php', '2022-11-26 09:53:36'),
(2813, 17, 'system/library/libphonenumber/carrier/data/en/357.php', '2022-11-26 09:53:36'),
(2814, 17, 'system/library/libphonenumber/carrier/data/en/358.php', '2022-11-26 09:53:36'),
(2815, 17, 'system/library/libphonenumber/carrier/data/en/359.php', '2022-11-26 09:53:36'),
(2816, 17, 'system/library/libphonenumber/carrier/data/en/36.php', '2022-11-26 09:53:36'),
(2817, 17, 'system/library/libphonenumber/carrier/data/en/370.php', '2022-11-26 09:53:36'),
(2818, 17, 'system/library/libphonenumber/carrier/data/en/372.php', '2022-11-26 09:53:36'),
(2819, 17, 'system/library/libphonenumber/carrier/data/en/373.php', '2022-11-26 09:53:36'),
(2820, 17, 'system/library/libphonenumber/carrier/data/en/374.php', '2022-11-26 09:53:36'),
(2821, 17, 'system/library/libphonenumber/carrier/data/en/375.php', '2022-11-26 09:53:36'),
(2822, 17, 'system/library/libphonenumber/carrier/data/en/376.php', '2022-11-26 09:53:36'),
(2823, 17, 'system/library/libphonenumber/carrier/data/en/380.php', '2022-11-26 09:53:36'),
(2824, 17, 'system/library/libphonenumber/carrier/data/en/381.php', '2022-11-26 09:53:36'),
(2825, 17, 'system/library/libphonenumber/carrier/data/en/382.php', '2022-11-26 09:53:36'),
(2826, 17, 'system/library/libphonenumber/carrier/data/en/383.php', '2022-11-26 09:53:36'),
(2827, 17, 'system/library/libphonenumber/carrier/data/en/385.php', '2022-11-26 09:53:36'),
(2828, 17, 'system/library/libphonenumber/carrier/data/en/386.php', '2022-11-26 09:53:36'),
(2829, 17, 'system/library/libphonenumber/carrier/data/en/387.php', '2022-11-26 09:53:36'),
(2830, 17, 'system/library/libphonenumber/carrier/data/en/389.php', '2022-11-26 09:53:36'),
(2831, 17, 'system/library/libphonenumber/carrier/data/en/39.php', '2022-11-26 09:53:36'),
(2832, 17, 'system/library/libphonenumber/carrier/data/en/40.php', '2022-11-26 09:53:36'),
(2833, 17, 'system/library/libphonenumber/carrier/data/en/41.php', '2022-11-26 09:53:36'),
(2834, 17, 'system/library/libphonenumber/carrier/data/en/420.php', '2022-11-26 09:53:36'),
(2835, 17, 'system/library/libphonenumber/carrier/data/en/421.php', '2022-11-26 09:53:36'),
(2836, 17, 'system/library/libphonenumber/carrier/data/en/423.php', '2022-11-26 09:53:36'),
(2837, 17, 'system/library/libphonenumber/carrier/data/en/43.php', '2022-11-26 09:53:36'),
(2838, 17, 'system/library/libphonenumber/carrier/data/en/44.php', '2022-11-26 09:53:36'),
(2839, 17, 'system/library/libphonenumber/carrier/data/en/45.php', '2022-11-26 09:53:36'),
(2840, 17, 'system/library/libphonenumber/carrier/data/en/47.php', '2022-11-26 09:53:36'),
(2841, 17, 'system/library/libphonenumber/carrier/data/en/48.php', '2022-11-26 09:53:36'),
(2842, 17, 'system/library/libphonenumber/carrier/data/en/49.php', '2022-11-26 09:53:36'),
(2843, 17, 'system/library/libphonenumber/carrier/data/en/501.php', '2022-11-26 09:53:36'),
(2844, 17, 'system/library/libphonenumber/carrier/data/en/502.php', '2022-11-26 09:53:36'),
(2845, 17, 'system/library/libphonenumber/carrier/data/en/503.php', '2022-11-26 09:53:36'),
(2846, 17, 'system/library/libphonenumber/carrier/data/en/505.php', '2022-11-26 09:53:36'),
(2847, 17, 'system/library/libphonenumber/carrier/data/en/506.php', '2022-11-26 09:53:36'),
(2848, 17, 'system/library/libphonenumber/carrier/data/en/507.php', '2022-11-26 09:53:36'),
(2849, 17, 'system/library/libphonenumber/carrier/data/en/508.php', '2022-11-26 09:53:36'),
(2850, 17, 'system/library/libphonenumber/carrier/data/en/509.php', '2022-11-26 09:53:36'),
(2851, 17, 'system/library/libphonenumber/carrier/data/en/51.php', '2022-11-26 09:53:36'),
(2852, 17, 'system/library/libphonenumber/carrier/data/en/53.php', '2022-11-26 09:53:36'),
(2853, 17, 'system/library/libphonenumber/carrier/data/en/54.php', '2022-11-26 09:53:36'),
(2854, 17, 'system/library/libphonenumber/carrier/data/en/55.php', '2022-11-26 09:53:36'),
(2855, 17, 'system/library/libphonenumber/carrier/data/en/56.php', '2022-11-26 09:53:36'),
(2856, 17, 'system/library/libphonenumber/carrier/data/en/57.php', '2022-11-26 09:53:36'),
(2857, 17, 'system/library/libphonenumber/carrier/data/en/58.php', '2022-11-26 09:53:36'),
(2858, 17, 'system/library/libphonenumber/carrier/data/en/590.php', '2022-11-26 09:53:36'),
(2859, 17, 'system/library/libphonenumber/carrier/data/en/591.php', '2022-11-26 09:53:36'),
(2860, 17, 'system/library/libphonenumber/carrier/data/en/592.php', '2022-11-26 09:53:36'),
(2861, 17, 'system/library/libphonenumber/carrier/data/en/593.php', '2022-11-26 09:53:36'),
(2862, 17, 'system/library/libphonenumber/carrier/data/en/594.php', '2022-11-26 09:53:36'),
(2863, 17, 'system/library/libphonenumber/carrier/data/en/595.php', '2022-11-26 09:53:36'),
(2864, 17, 'system/library/libphonenumber/carrier/data/en/596.php', '2022-11-26 09:53:36'),
(2865, 17, 'system/library/libphonenumber/carrier/data/en/597.php', '2022-11-26 09:53:36'),
(2866, 17, 'system/library/libphonenumber/carrier/data/en/598.php', '2022-11-26 09:53:36'),
(2867, 17, 'system/library/libphonenumber/carrier/data/en/599.php', '2022-11-26 09:53:36'),
(2868, 17, 'system/library/libphonenumber/carrier/data/en/60.php', '2022-11-26 09:53:36'),
(2869, 17, 'system/library/libphonenumber/carrier/data/en/61.php', '2022-11-26 09:53:36'),
(2870, 17, 'system/library/libphonenumber/carrier/data/en/62.php', '2022-11-26 09:53:36'),
(2871, 17, 'system/library/libphonenumber/carrier/data/en/63.php', '2022-11-26 09:53:36'),
(2872, 17, 'system/library/libphonenumber/carrier/data/en/64.php', '2022-11-26 09:53:36'),
(2873, 17, 'system/library/libphonenumber/carrier/data/en/65.php', '2022-11-26 09:53:36'),
(2874, 17, 'system/library/libphonenumber/carrier/data/en/66.php', '2022-11-26 09:53:36'),
(2875, 17, 'system/library/libphonenumber/carrier/data/en/670.php', '2022-11-26 09:53:36'),
(2876, 17, 'system/library/libphonenumber/carrier/data/en/673.php', '2022-11-26 09:53:36'),
(2877, 17, 'system/library/libphonenumber/carrier/data/en/674.php', '2022-11-26 09:53:36'),
(2878, 17, 'system/library/libphonenumber/carrier/data/en/675.php', '2022-11-26 09:53:36'),
(2879, 17, 'system/library/libphonenumber/carrier/data/en/676.php', '2022-11-26 09:53:36'),
(2880, 17, 'system/library/libphonenumber/carrier/data/en/677.php', '2022-11-26 09:53:36'),
(2881, 17, 'system/library/libphonenumber/carrier/data/en/678.php', '2022-11-26 09:53:36'),
(2882, 17, 'system/library/libphonenumber/carrier/data/en/679.php', '2022-11-26 09:53:36'),
(2883, 17, 'system/library/libphonenumber/carrier/data/en/680.php', '2022-11-26 09:53:36'),
(2884, 17, 'system/library/libphonenumber/carrier/data/en/685.php', '2022-11-26 09:53:36'),
(2885, 17, 'system/library/libphonenumber/carrier/data/en/686.php', '2022-11-26 09:53:36'),
(2886, 17, 'system/library/libphonenumber/carrier/data/en/688.php', '2022-11-26 09:53:36'),
(2887, 17, 'system/library/libphonenumber/carrier/data/en/689.php', '2022-11-26 09:53:36'),
(2888, 17, 'system/library/libphonenumber/carrier/data/en/7.php', '2022-11-26 09:53:36'),
(2889, 17, 'system/library/libphonenumber/carrier/data/en/84.php', '2022-11-26 09:53:36'),
(2890, 17, 'system/library/libphonenumber/carrier/data/en/852.php', '2022-11-26 09:53:36'),
(2891, 17, 'system/library/libphonenumber/carrier/data/en/853.php', '2022-11-26 09:53:36'),
(2892, 17, 'system/library/libphonenumber/carrier/data/en/855.php', '2022-11-26 09:53:36'),
(2893, 17, 'system/library/libphonenumber/carrier/data/en/856.php', '2022-11-26 09:53:36'),
(2894, 17, 'system/library/libphonenumber/carrier/data/en/86.php', '2022-11-26 09:53:36'),
(2895, 17, 'system/library/libphonenumber/carrier/data/en/880.php', '2022-11-26 09:53:36'),
(2896, 17, 'system/library/libphonenumber/carrier/data/en/886.php', '2022-11-26 09:53:36'),
(2897, 17, 'system/library/libphonenumber/carrier/data/en/90.php', '2022-11-26 09:53:36'),
(2898, 17, 'system/library/libphonenumber/carrier/data/en/91.php', '2022-11-26 09:53:36'),
(2899, 17, 'system/library/libphonenumber/carrier/data/en/92.php', '2022-11-26 09:53:36'),
(2900, 17, 'system/library/libphonenumber/carrier/data/en/93.php', '2022-11-26 09:53:36'),
(2901, 17, 'system/library/libphonenumber/carrier/data/en/94.php', '2022-11-26 09:53:36'),
(2902, 17, 'system/library/libphonenumber/carrier/data/en/95.php', '2022-11-26 09:53:36'),
(2903, 17, 'system/library/libphonenumber/carrier/data/en/960.php', '2022-11-26 09:53:36'),
(2904, 17, 'system/library/libphonenumber/carrier/data/en/961.php', '2022-11-26 09:53:36'),
(2905, 17, 'system/library/libphonenumber/carrier/data/en/962.php', '2022-11-26 09:53:36'),
(2906, 17, 'system/library/libphonenumber/carrier/data/en/963.php', '2022-11-26 09:53:36'),
(2907, 17, 'system/library/libphonenumber/carrier/data/en/964.php', '2022-11-26 09:53:36'),
(2908, 17, 'system/library/libphonenumber/carrier/data/en/965.php', '2022-11-26 09:53:36'),
(2909, 17, 'system/library/libphonenumber/carrier/data/en/966.php', '2022-11-26 09:53:36'),
(2910, 17, 'system/library/libphonenumber/carrier/data/en/967.php', '2022-11-26 09:53:36'),
(2911, 17, 'system/library/libphonenumber/carrier/data/en/968.php', '2022-11-26 09:53:36'),
(2912, 17, 'system/library/libphonenumber/carrier/data/en/970.php', '2022-11-26 09:53:36'),
(2913, 17, 'system/library/libphonenumber/carrier/data/en/971.php', '2022-11-26 09:53:36'),
(2914, 17, 'system/library/libphonenumber/carrier/data/en/972.php', '2022-11-26 09:53:36'),
(2915, 17, 'system/library/libphonenumber/carrier/data/en/973.php', '2022-11-26 09:53:36'),
(2916, 17, 'system/library/libphonenumber/carrier/data/en/974.php', '2022-11-26 09:53:36'),
(2917, 17, 'system/library/libphonenumber/carrier/data/en/975.php', '2022-11-26 09:53:36'),
(2918, 17, 'system/library/libphonenumber/carrier/data/en/976.php', '2022-11-26 09:53:36'),
(2919, 17, 'system/library/libphonenumber/carrier/data/en/977.php', '2022-11-26 09:53:36'),
(2920, 17, 'system/library/libphonenumber/carrier/data/en/98.php', '2022-11-26 09:53:36'),
(2921, 17, 'system/library/libphonenumber/carrier/data/en/992.php', '2022-11-26 09:53:36'),
(2922, 17, 'system/library/libphonenumber/carrier/data/en/993.php', '2022-11-26 09:53:36'),
(2923, 17, 'system/library/libphonenumber/carrier/data/en/994.php', '2022-11-26 09:53:36'),
(2924, 17, 'system/library/libphonenumber/carrier/data/en/995.php', '2022-11-26 09:53:36'),
(2925, 17, 'system/library/libphonenumber/carrier/data/en/996.php', '2022-11-26 09:53:36'),
(2926, 17, 'system/library/libphonenumber/carrier/data/en/998.php', '2022-11-26 09:53:36'),
(2927, 17, 'system/library/libphonenumber/carrier/data/fa/93.php', '2022-11-26 09:53:36'),
(2928, 17, 'system/library/libphonenumber/carrier/data/fa/98.php', '2022-11-26 09:53:36'),
(2929, 17, 'system/library/libphonenumber/carrier/data/ru/374.php', '2022-11-26 09:53:36'),
(2930, 17, 'system/library/libphonenumber/carrier/data/ru/375.php', '2022-11-26 09:53:36'),
(2931, 17, 'system/library/libphonenumber/carrier/data/ru/7.php', '2022-11-26 09:53:36'),
(2932, 17, 'system/library/libphonenumber/carrier/data/uk/380.php', '2022-11-26 09:53:36'),
(2933, 17, 'system/library/libphonenumber/carrier/data/zh/852.php', '2022-11-26 09:53:36'),
(2934, 17, 'system/library/libphonenumber/carrier/data/zh/86.php', '2022-11-26 09:53:36'),
(2935, 17, 'system/library/libphonenumber/carrier/data/zh_Hant/852.php', '2022-11-26 09:53:36'),
(2936, 17, 'system/library/libphonenumber/carrier/data/zh_Hant/86.php', '2022-11-26 09:53:36'),
(2937, 17, 'system/library/libphonenumber/geocoding/data/ar/82.php', '2022-11-26 09:53:36'),
(2938, 17, 'system/library/libphonenumber/geocoding/data/ar/966.php', '2022-11-26 09:53:36'),
(2939, 17, 'system/library/libphonenumber/geocoding/data/be/375.php', '2022-11-26 09:53:36'),
(2940, 17, 'system/library/libphonenumber/geocoding/data/bg/359.php', '2022-11-26 09:53:36'),
(2941, 17, 'system/library/libphonenumber/geocoding/data/bg/82.php', '2022-11-26 09:53:36'),
(2942, 17, 'system/library/libphonenumber/geocoding/data/bs/387.php', '2022-11-26 09:53:36'),
(2943, 17, 'system/library/libphonenumber/geocoding/data/ca/82.php', '2022-11-26 09:53:36'),
(2944, 17, 'system/library/libphonenumber/geocoding/data/cs/82.php', '2022-11-26 09:53:36'),
(2945, 17, 'system/library/libphonenumber/geocoding/data/de/32.php', '2022-11-26 09:53:36'),
(2946, 17, 'system/library/libphonenumber/geocoding/data/de/352.php', '2022-11-26 09:53:36'),
(2947, 17, 'system/library/libphonenumber/geocoding/data/de/41.php', '2022-11-26 09:53:36'),
(2948, 17, 'system/library/libphonenumber/geocoding/data/de/43.php', '2022-11-26 09:53:36'),
(2949, 17, 'system/library/libphonenumber/geocoding/data/de/49.php', '2022-11-26 09:53:36'),
(2950, 17, 'system/library/libphonenumber/geocoding/data/el/30.php', '2022-11-26 09:53:36'),
(2951, 17, 'system/library/libphonenumber/geocoding/data/el/82.php', '2022-11-26 09:53:36'),
(2952, 17, 'system/library/libphonenumber/geocoding/data/en/12.php', '2022-11-26 09:53:36'),
(2953, 17, 'system/library/libphonenumber/geocoding/data/en/13.php', '2022-11-26 09:53:36'),
(2954, 17, 'system/library/libphonenumber/geocoding/data/en/14.php', '2022-11-26 09:53:36'),
(2955, 17, 'system/library/libphonenumber/geocoding/data/en/15.php', '2022-11-26 09:53:36'),
(2956, 17, 'system/library/libphonenumber/geocoding/data/en/16.php', '2022-11-26 09:53:36'),
(2957, 17, 'system/library/libphonenumber/geocoding/data/en/17.php', '2022-11-26 09:53:36'),
(2958, 17, 'system/library/libphonenumber/geocoding/data/en/18.php', '2022-11-26 09:53:36'),
(2959, 17, 'system/library/libphonenumber/geocoding/data/en/19.php', '2022-11-26 09:53:36'),
(2960, 17, 'system/library/libphonenumber/geocoding/data/en/20.php', '2022-11-26 09:53:36'),
(2961, 17, 'system/library/libphonenumber/geocoding/data/en/212.php', '2022-11-26 09:53:36'),
(2962, 17, 'system/library/libphonenumber/geocoding/data/en/213.php', '2022-11-26 09:53:36'),
(2963, 17, 'system/library/libphonenumber/geocoding/data/en/216.php', '2022-11-26 09:53:36'),
(2964, 17, 'system/library/libphonenumber/geocoding/data/en/218.php', '2022-11-26 09:53:36'),
(2965, 17, 'system/library/libphonenumber/geocoding/data/en/220.php', '2022-11-26 09:53:36'),
(2966, 17, 'system/library/libphonenumber/geocoding/data/en/221.php', '2022-11-26 09:53:36'),
(2967, 17, 'system/library/libphonenumber/geocoding/data/en/222.php', '2022-11-26 09:53:36'),
(2968, 17, 'system/library/libphonenumber/geocoding/data/en/223.php', '2022-11-26 09:53:36'),
(2969, 17, 'system/library/libphonenumber/geocoding/data/en/224.php', '2022-11-26 09:53:36'),
(2970, 17, 'system/library/libphonenumber/geocoding/data/en/225.php', '2022-11-26 09:53:36'),
(2971, 17, 'system/library/libphonenumber/geocoding/data/en/226.php', '2022-11-26 09:53:36'),
(2972, 17, 'system/library/libphonenumber/geocoding/data/en/227.php', '2022-11-26 09:53:36'),
(2973, 17, 'system/library/libphonenumber/geocoding/data/en/228.php', '2022-11-26 09:53:36'),
(2974, 17, 'system/library/libphonenumber/geocoding/data/en/229.php', '2022-11-26 09:53:36'),
(2975, 17, 'system/library/libphonenumber/geocoding/data/en/230.php', '2022-11-26 09:53:36'),
(2976, 17, 'system/library/libphonenumber/geocoding/data/en/232.php', '2022-11-26 09:53:36'),
(2977, 17, 'system/library/libphonenumber/geocoding/data/en/233.php', '2022-11-26 09:53:36'),
(2978, 17, 'system/library/libphonenumber/geocoding/data/en/234.php', '2022-11-26 09:53:36'),
(2979, 17, 'system/library/libphonenumber/geocoding/data/en/237.php', '2022-11-26 09:53:36'),
(2980, 17, 'system/library/libphonenumber/geocoding/data/en/238.php', '2022-11-26 09:53:36'),
(2981, 17, 'system/library/libphonenumber/geocoding/data/en/239.php', '2022-11-26 09:53:36');
INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(2982, 17, 'system/library/libphonenumber/geocoding/data/en/240.php', '2022-11-26 09:53:36'),
(2983, 17, 'system/library/libphonenumber/geocoding/data/en/241.php', '2022-11-26 09:53:36'),
(2984, 17, 'system/library/libphonenumber/geocoding/data/en/242.php', '2022-11-26 09:53:36'),
(2985, 17, 'system/library/libphonenumber/geocoding/data/en/243.php', '2022-11-26 09:53:36'),
(2986, 17, 'system/library/libphonenumber/geocoding/data/en/244.php', '2022-11-26 09:53:36'),
(2987, 17, 'system/library/libphonenumber/geocoding/data/en/245.php', '2022-11-26 09:53:36'),
(2988, 17, 'system/library/libphonenumber/geocoding/data/en/247.php', '2022-11-26 09:53:36'),
(2989, 17, 'system/library/libphonenumber/geocoding/data/en/249.php', '2022-11-26 09:53:36'),
(2990, 17, 'system/library/libphonenumber/geocoding/data/en/251.php', '2022-11-26 09:53:36'),
(2991, 17, 'system/library/libphonenumber/geocoding/data/en/252.php', '2022-11-26 09:53:36'),
(2992, 17, 'system/library/libphonenumber/geocoding/data/en/254.php', '2022-11-26 09:53:36'),
(2993, 17, 'system/library/libphonenumber/geocoding/data/en/255.php', '2022-11-26 09:53:36'),
(2994, 17, 'system/library/libphonenumber/geocoding/data/en/256.php', '2022-11-26 09:53:36'),
(2995, 17, 'system/library/libphonenumber/geocoding/data/en/257.php', '2022-11-26 09:53:36'),
(2996, 17, 'system/library/libphonenumber/geocoding/data/en/258.php', '2022-11-26 09:53:36'),
(2997, 17, 'system/library/libphonenumber/geocoding/data/en/260.php', '2022-11-26 09:53:36'),
(2998, 17, 'system/library/libphonenumber/geocoding/data/en/261.php', '2022-11-26 09:53:36'),
(2999, 17, 'system/library/libphonenumber/geocoding/data/en/263.php', '2022-11-26 09:53:36'),
(3000, 17, 'system/library/libphonenumber/geocoding/data/en/264.php', '2022-11-26 09:53:36'),
(3001, 17, 'system/library/libphonenumber/geocoding/data/en/266.php', '2022-11-26 09:53:36'),
(3002, 17, 'system/library/libphonenumber/geocoding/data/en/267.php', '2022-11-26 09:53:36'),
(3003, 17, 'system/library/libphonenumber/geocoding/data/en/268.php', '2022-11-26 09:53:36'),
(3004, 17, 'system/library/libphonenumber/geocoding/data/en/269.php', '2022-11-26 09:53:36'),
(3005, 17, 'system/library/libphonenumber/geocoding/data/en/27.php', '2022-11-26 09:53:36'),
(3006, 17, 'system/library/libphonenumber/geocoding/data/en/290.php', '2022-11-26 09:53:36'),
(3007, 17, 'system/library/libphonenumber/geocoding/data/en/299.php', '2022-11-26 09:53:36'),
(3008, 17, 'system/library/libphonenumber/geocoding/data/en/30.php', '2022-11-26 09:53:36'),
(3009, 17, 'system/library/libphonenumber/geocoding/data/en/31.php', '2022-11-26 09:53:36'),
(3010, 17, 'system/library/libphonenumber/geocoding/data/en/32.php', '2022-11-26 09:53:36'),
(3011, 17, 'system/library/libphonenumber/geocoding/data/en/33.php', '2022-11-26 09:53:36'),
(3012, 17, 'system/library/libphonenumber/geocoding/data/en/34.php', '2022-11-26 09:53:36'),
(3013, 17, 'system/library/libphonenumber/geocoding/data/en/351.php', '2022-11-26 09:53:36'),
(3014, 17, 'system/library/libphonenumber/geocoding/data/en/352.php', '2022-11-26 09:53:36'),
(3015, 17, 'system/library/libphonenumber/geocoding/data/en/353.php', '2022-11-26 09:53:36'),
(3016, 17, 'system/library/libphonenumber/geocoding/data/en/354.php', '2022-11-26 09:53:36'),
(3017, 17, 'system/library/libphonenumber/geocoding/data/en/355.php', '2022-11-26 09:53:36'),
(3018, 17, 'system/library/libphonenumber/geocoding/data/en/358.php', '2022-11-26 09:53:36'),
(3019, 17, 'system/library/libphonenumber/geocoding/data/en/359.php', '2022-11-26 09:53:36'),
(3020, 17, 'system/library/libphonenumber/geocoding/data/en/36.php', '2022-11-26 09:53:36'),
(3021, 17, 'system/library/libphonenumber/geocoding/data/en/370.php', '2022-11-26 09:53:36'),
(3022, 17, 'system/library/libphonenumber/geocoding/data/en/371.php', '2022-11-26 09:53:36'),
(3023, 17, 'system/library/libphonenumber/geocoding/data/en/372.php', '2022-11-26 09:53:36'),
(3024, 17, 'system/library/libphonenumber/geocoding/data/en/373.php', '2022-11-26 09:53:36'),
(3025, 17, 'system/library/libphonenumber/geocoding/data/en/374.php', '2022-11-26 09:53:36'),
(3026, 17, 'system/library/libphonenumber/geocoding/data/en/375.php', '2022-11-26 09:53:36'),
(3027, 17, 'system/library/libphonenumber/geocoding/data/en/380.php', '2022-11-26 09:53:36'),
(3028, 17, 'system/library/libphonenumber/geocoding/data/en/381.php', '2022-11-26 09:53:36'),
(3029, 17, 'system/library/libphonenumber/geocoding/data/en/382.php', '2022-11-26 09:53:36'),
(3030, 17, 'system/library/libphonenumber/geocoding/data/en/383.php', '2022-11-26 09:53:36'),
(3031, 17, 'system/library/libphonenumber/geocoding/data/en/385.php', '2022-11-26 09:53:36'),
(3032, 17, 'system/library/libphonenumber/geocoding/data/en/387.php', '2022-11-26 09:53:36'),
(3033, 17, 'system/library/libphonenumber/geocoding/data/en/389.php', '2022-11-26 09:53:36'),
(3034, 17, 'system/library/libphonenumber/geocoding/data/en/39.php', '2022-11-26 09:53:36'),
(3035, 17, 'system/library/libphonenumber/geocoding/data/en/40.php', '2022-11-26 09:53:36'),
(3036, 17, 'system/library/libphonenumber/geocoding/data/en/41.php', '2022-11-26 09:53:36'),
(3037, 17, 'system/library/libphonenumber/geocoding/data/en/420.php', '2022-11-26 09:53:36'),
(3038, 17, 'system/library/libphonenumber/geocoding/data/en/421.php', '2022-11-26 09:53:36'),
(3039, 17, 'system/library/libphonenumber/geocoding/data/en/43.php', '2022-11-26 09:53:36'),
(3040, 17, 'system/library/libphonenumber/geocoding/data/en/44.php', '2022-11-26 09:53:36'),
(3041, 17, 'system/library/libphonenumber/geocoding/data/en/46.php', '2022-11-26 09:53:36'),
(3042, 17, 'system/library/libphonenumber/geocoding/data/en/47.php', '2022-11-26 09:53:36'),
(3043, 17, 'system/library/libphonenumber/geocoding/data/en/48.php', '2022-11-26 09:53:36'),
(3044, 17, 'system/library/libphonenumber/geocoding/data/en/49.php', '2022-11-26 09:53:36'),
(3045, 17, 'system/library/libphonenumber/geocoding/data/en/501.php', '2022-11-26 09:53:36'),
(3046, 17, 'system/library/libphonenumber/geocoding/data/en/504.php', '2022-11-26 09:53:36'),
(3047, 17, 'system/library/libphonenumber/geocoding/data/en/51.php', '2022-11-26 09:53:36'),
(3048, 17, 'system/library/libphonenumber/geocoding/data/en/52.php', '2022-11-26 09:53:36'),
(3049, 17, 'system/library/libphonenumber/geocoding/data/en/53.php', '2022-11-26 09:53:36'),
(3050, 17, 'system/library/libphonenumber/geocoding/data/en/54.php', '2022-11-26 09:53:36'),
(3051, 17, 'system/library/libphonenumber/geocoding/data/en/55.php', '2022-11-26 09:53:36'),
(3052, 17, 'system/library/libphonenumber/geocoding/data/en/56.php', '2022-11-26 09:53:36'),
(3053, 17, 'system/library/libphonenumber/geocoding/data/en/57.php', '2022-11-26 09:53:36'),
(3054, 17, 'system/library/libphonenumber/geocoding/data/en/58.php', '2022-11-26 09:53:36'),
(3055, 17, 'system/library/libphonenumber/geocoding/data/en/592.php', '2022-11-26 09:53:36'),
(3056, 17, 'system/library/libphonenumber/geocoding/data/en/599.php', '2022-11-26 09:53:36'),
(3057, 17, 'system/library/libphonenumber/geocoding/data/en/60.php', '2022-11-26 09:53:36'),
(3058, 17, 'system/library/libphonenumber/geocoding/data/en/61.php', '2022-11-26 09:53:36'),
(3059, 17, 'system/library/libphonenumber/geocoding/data/en/62.php', '2022-11-26 09:53:36'),
(3060, 17, 'system/library/libphonenumber/geocoding/data/en/64.php', '2022-11-26 09:53:36'),
(3061, 17, 'system/library/libphonenumber/geocoding/data/en/66.php', '2022-11-26 09:53:36'),
(3062, 17, 'system/library/libphonenumber/geocoding/data/en/675.php', '2022-11-26 09:53:36'),
(3063, 17, 'system/library/libphonenumber/geocoding/data/en/680.php', '2022-11-26 09:53:36'),
(3064, 17, 'system/library/libphonenumber/geocoding/data/en/686.php', '2022-11-26 09:53:36'),
(3065, 17, 'system/library/libphonenumber/geocoding/data/en/688.php', '2022-11-26 09:53:36'),
(3066, 17, 'system/library/libphonenumber/geocoding/data/en/7.php', '2022-11-26 09:53:36'),
(3067, 17, 'system/library/libphonenumber/geocoding/data/en/81.php', '2022-11-26 09:53:36'),
(3068, 17, 'system/library/libphonenumber/geocoding/data/en/82.php', '2022-11-26 09:53:36'),
(3069, 17, 'system/library/libphonenumber/geocoding/data/en/84.php', '2022-11-26 09:53:36'),
(3070, 17, 'system/library/libphonenumber/geocoding/data/en/86.php', '2022-11-26 09:53:36'),
(3071, 17, 'system/library/libphonenumber/geocoding/data/en/8610.php', '2022-11-26 09:53:36'),
(3072, 17, 'system/library/libphonenumber/geocoding/data/en/86130.php', '2022-11-26 09:53:36'),
(3073, 17, 'system/library/libphonenumber/geocoding/data/en/86131.php', '2022-11-26 09:53:36'),
(3074, 17, 'system/library/libphonenumber/geocoding/data/en/86132.php', '2022-11-26 09:53:36'),
(3075, 17, 'system/library/libphonenumber/geocoding/data/en/86133.php', '2022-11-26 09:53:36'),
(3076, 17, 'system/library/libphonenumber/geocoding/data/en/86134.php', '2022-11-26 09:53:36'),
(3077, 17, 'system/library/libphonenumber/geocoding/data/en/86135.php', '2022-11-26 09:53:36'),
(3078, 17, 'system/library/libphonenumber/geocoding/data/en/86136.php', '2022-11-26 09:53:36'),
(3079, 17, 'system/library/libphonenumber/geocoding/data/en/86137.php', '2022-11-26 09:53:36'),
(3080, 17, 'system/library/libphonenumber/geocoding/data/en/86138.php', '2022-11-26 09:53:36'),
(3081, 17, 'system/library/libphonenumber/geocoding/data/en/86139.php', '2022-11-26 09:53:36'),
(3082, 17, 'system/library/libphonenumber/geocoding/data/en/86145.php', '2022-11-26 09:53:36'),
(3083, 17, 'system/library/libphonenumber/geocoding/data/en/86147.php', '2022-11-26 09:53:36'),
(3084, 17, 'system/library/libphonenumber/geocoding/data/en/86150.php', '2022-11-26 09:53:36'),
(3085, 17, 'system/library/libphonenumber/geocoding/data/en/86151.php', '2022-11-26 09:53:36'),
(3086, 17, 'system/library/libphonenumber/geocoding/data/en/86152.php', '2022-11-26 09:53:36'),
(3087, 17, 'system/library/libphonenumber/geocoding/data/en/86153.php', '2022-11-26 09:53:36'),
(3088, 17, 'system/library/libphonenumber/geocoding/data/en/86155.php', '2022-11-26 09:53:36'),
(3089, 17, 'system/library/libphonenumber/geocoding/data/en/86156.php', '2022-11-26 09:53:36'),
(3090, 17, 'system/library/libphonenumber/geocoding/data/en/86157.php', '2022-11-26 09:53:36'),
(3091, 17, 'system/library/libphonenumber/geocoding/data/en/86158.php', '2022-11-26 09:53:36'),
(3092, 17, 'system/library/libphonenumber/geocoding/data/en/86159.php', '2022-11-26 09:53:36'),
(3093, 17, 'system/library/libphonenumber/geocoding/data/en/86170.php', '2022-11-26 09:53:36'),
(3094, 17, 'system/library/libphonenumber/geocoding/data/en/86176.php', '2022-11-26 09:53:36'),
(3095, 17, 'system/library/libphonenumber/geocoding/data/en/86177.php', '2022-11-26 09:53:36'),
(3096, 17, 'system/library/libphonenumber/geocoding/data/en/86178.php', '2022-11-26 09:53:36'),
(3097, 17, 'system/library/libphonenumber/geocoding/data/en/86180.php', '2022-11-26 09:53:36'),
(3098, 17, 'system/library/libphonenumber/geocoding/data/en/86181.php', '2022-11-26 09:53:36'),
(3099, 17, 'system/library/libphonenumber/geocoding/data/en/86182.php', '2022-11-26 09:53:36'),
(3100, 17, 'system/library/libphonenumber/geocoding/data/en/86183.php', '2022-11-26 09:53:36'),
(3101, 17, 'system/library/libphonenumber/geocoding/data/en/86184.php', '2022-11-26 09:53:36'),
(3102, 17, 'system/library/libphonenumber/geocoding/data/en/86185.php', '2022-11-26 09:53:36'),
(3103, 17, 'system/library/libphonenumber/geocoding/data/en/86186.php', '2022-11-26 09:53:36'),
(3104, 17, 'system/library/libphonenumber/geocoding/data/en/86187.php', '2022-11-26 09:53:36'),
(3105, 17, 'system/library/libphonenumber/geocoding/data/en/86188.php', '2022-11-26 09:53:36'),
(3106, 17, 'system/library/libphonenumber/geocoding/data/en/86189.php', '2022-11-26 09:53:36'),
(3107, 17, 'system/library/libphonenumber/geocoding/data/en/880.php', '2022-11-26 09:53:36'),
(3108, 17, 'system/library/libphonenumber/geocoding/data/en/886.php', '2022-11-26 09:53:36'),
(3109, 17, 'system/library/libphonenumber/geocoding/data/en/90.php', '2022-11-26 09:53:36'),
(3110, 17, 'system/library/libphonenumber/geocoding/data/en/91.php', '2022-11-26 09:53:36'),
(3111, 17, 'system/library/libphonenumber/geocoding/data/en/93.php', '2022-11-26 09:53:36'),
(3112, 17, 'system/library/libphonenumber/geocoding/data/en/94.php', '2022-11-26 09:53:36'),
(3113, 17, 'system/library/libphonenumber/geocoding/data/en/95.php', '2022-11-26 09:53:36'),
(3114, 17, 'system/library/libphonenumber/geocoding/data/en/960.php', '2022-11-26 09:53:36'),
(3115, 17, 'system/library/libphonenumber/geocoding/data/en/962.php', '2022-11-26 09:53:36'),
(3116, 17, 'system/library/libphonenumber/geocoding/data/en/966.php', '2022-11-26 09:53:36'),
(3117, 17, 'system/library/libphonenumber/geocoding/data/en/968.php', '2022-11-26 09:53:36'),
(3118, 17, 'system/library/libphonenumber/geocoding/data/en/972.php', '2022-11-26 09:53:36'),
(3119, 17, 'system/library/libphonenumber/geocoding/data/en/975.php', '2022-11-26 09:53:36'),
(3120, 17, 'system/library/libphonenumber/geocoding/data/en/976.php', '2022-11-26 09:53:36'),
(3121, 17, 'system/library/libphonenumber/geocoding/data/en/98.php', '2022-11-26 09:53:36'),
(3122, 17, 'system/library/libphonenumber/geocoding/data/en/992.php', '2022-11-26 09:53:36'),
(3123, 17, 'system/library/libphonenumber/geocoding/data/en/994.php', '2022-11-26 09:53:36'),
(3124, 17, 'system/library/libphonenumber/geocoding/data/en/996.php', '2022-11-26 09:53:36'),
(3125, 17, 'system/library/libphonenumber/geocoding/data/es/228.php', '2022-11-26 09:53:36'),
(3126, 17, 'system/library/libphonenumber/geocoding/data/es/230.php', '2022-11-26 09:53:36'),
(3127, 17, 'system/library/libphonenumber/geocoding/data/es/34.php', '2022-11-26 09:53:36'),
(3128, 17, 'system/library/libphonenumber/geocoding/data/es/52.php', '2022-11-26 09:53:36'),
(3129, 17, 'system/library/libphonenumber/geocoding/data/es/54.php', '2022-11-26 09:53:36'),
(3130, 17, 'system/library/libphonenumber/geocoding/data/es/56.php', '2022-11-26 09:53:36'),
(3131, 17, 'system/library/libphonenumber/geocoding/data/es/58.php', '2022-11-26 09:53:36'),
(3132, 17, 'system/library/libphonenumber/geocoding/data/es/82.php', '2022-11-26 09:53:36'),
(3133, 17, 'system/library/libphonenumber/geocoding/data/fa/93.php', '2022-11-26 09:53:36'),
(3134, 17, 'system/library/libphonenumber/geocoding/data/fa/98.php', '2022-11-26 09:53:36'),
(3135, 17, 'system/library/libphonenumber/geocoding/data/fi/358.php', '2022-11-26 09:53:36'),
(3136, 17, 'system/library/libphonenumber/geocoding/data/fi/82.php', '2022-11-26 09:53:36'),
(3137, 17, 'system/library/libphonenumber/geocoding/data/fr/212.php', '2022-11-26 09:53:36'),
(3138, 17, 'system/library/libphonenumber/geocoding/data/fr/222.php', '2022-11-26 09:53:36'),
(3139, 17, 'system/library/libphonenumber/geocoding/data/fr/225.php', '2022-11-26 09:53:36'),
(3140, 17, 'system/library/libphonenumber/geocoding/data/fr/228.php', '2022-11-26 09:53:36'),
(3141, 17, 'system/library/libphonenumber/geocoding/data/fr/229.php', '2022-11-26 09:53:36'),
(3142, 17, 'system/library/libphonenumber/geocoding/data/fr/230.php', '2022-11-26 09:53:36'),
(3143, 17, 'system/library/libphonenumber/geocoding/data/fr/243.php', '2022-11-26 09:53:36'),
(3144, 17, 'system/library/libphonenumber/geocoding/data/fr/290.php', '2022-11-26 09:53:36'),
(3145, 17, 'system/library/libphonenumber/geocoding/data/fr/32.php', '2022-11-26 09:53:36'),
(3146, 17, 'system/library/libphonenumber/geocoding/data/fr/33.php', '2022-11-26 09:53:36'),
(3147, 17, 'system/library/libphonenumber/geocoding/data/fr/352.php', '2022-11-26 09:53:36'),
(3148, 17, 'system/library/libphonenumber/geocoding/data/fr/41.php', '2022-11-26 09:53:36'),
(3149, 17, 'system/library/libphonenumber/geocoding/data/fr/82.php', '2022-11-26 09:53:36'),
(3150, 17, 'system/library/libphonenumber/geocoding/data/hi/82.php', '2022-11-26 09:53:36'),
(3151, 17, 'system/library/libphonenumber/geocoding/data/hr/387.php', '2022-11-26 09:53:36'),
(3152, 17, 'system/library/libphonenumber/geocoding/data/hu/36.php', '2022-11-26 09:53:36'),
(3153, 17, 'system/library/libphonenumber/geocoding/data/hu/82.php', '2022-11-26 09:53:36'),
(3154, 17, 'system/library/libphonenumber/geocoding/data/hy/374.php', '2022-11-26 09:53:36'),
(3155, 17, 'system/library/libphonenumber/geocoding/data/id/62.php', '2022-11-26 09:53:36'),
(3156, 17, 'system/library/libphonenumber/geocoding/data/it/39.php', '2022-11-26 09:53:36'),
(3157, 17, 'system/library/libphonenumber/geocoding/data/it/41.php', '2022-11-26 09:53:36'),
(3158, 17, 'system/library/libphonenumber/geocoding/data/iw/82.php', '2022-11-26 09:53:36'),
(3159, 17, 'system/library/libphonenumber/geocoding/data/iw/972.php', '2022-11-26 09:53:36'),
(3160, 17, 'system/library/libphonenumber/geocoding/data/ja/81.php', '2022-11-26 09:53:36'),
(3161, 17, 'system/library/libphonenumber/geocoding/data/ja/82.php', '2022-11-26 09:53:36'),
(3162, 17, 'system/library/libphonenumber/geocoding/data/ko/82.php', '2022-11-26 09:53:36'),
(3163, 17, 'system/library/libphonenumber/geocoding/data/nl/31.php', '2022-11-26 09:53:36'),
(3164, 17, 'system/library/libphonenumber/geocoding/data/nl/32.php', '2022-11-26 09:53:36'),
(3165, 17, 'system/library/libphonenumber/geocoding/data/pl/48.php', '2022-11-26 09:53:36'),
(3166, 17, 'system/library/libphonenumber/geocoding/data/pl/82.php', '2022-11-26 09:53:36'),
(3167, 17, 'system/library/libphonenumber/geocoding/data/pt/238.php', '2022-11-26 09:53:36'),
(3168, 17, 'system/library/libphonenumber/geocoding/data/pt/239.php', '2022-11-26 09:53:36'),
(3169, 17, 'system/library/libphonenumber/geocoding/data/pt/244.php', '2022-11-26 09:53:36'),
(3170, 17, 'system/library/libphonenumber/geocoding/data/pt/245.php', '2022-11-26 09:53:36'),
(3171, 17, 'system/library/libphonenumber/geocoding/data/pt/258.php', '2022-11-26 09:53:36'),
(3172, 17, 'system/library/libphonenumber/geocoding/data/pt/351.php', '2022-11-26 09:53:36'),
(3173, 17, 'system/library/libphonenumber/geocoding/data/pt/55.php', '2022-11-26 09:53:36'),
(3174, 17, 'system/library/libphonenumber/geocoding/data/pt/82.php', '2022-11-26 09:53:36'),
(3175, 17, 'system/library/libphonenumber/geocoding/data/ro/373.php', '2022-11-26 09:53:36'),
(3176, 17, 'system/library/libphonenumber/geocoding/data/ro/40.php', '2022-11-26 09:53:36'),
(3177, 17, 'system/library/libphonenumber/geocoding/data/ro/82.php', '2022-11-26 09:53:36'),
(3178, 17, 'system/library/libphonenumber/geocoding/data/ru/373.php', '2022-11-26 09:53:36'),
(3179, 17, 'system/library/libphonenumber/geocoding/data/ru/374.php', '2022-11-26 09:53:36'),
(3180, 17, 'system/library/libphonenumber/geocoding/data/ru/375.php', '2022-11-26 09:53:36'),
(3181, 17, 'system/library/libphonenumber/geocoding/data/ru/7.php', '2022-11-26 09:53:36'),
(3182, 17, 'system/library/libphonenumber/geocoding/data/ru/82.php', '2022-11-26 09:53:36'),
(3183, 17, 'system/library/libphonenumber/geocoding/data/sl/82.php', '2022-11-26 09:53:36'),
(3184, 17, 'system/library/libphonenumber/geocoding/data/sq/383.php', '2022-11-26 09:53:36'),
(3185, 17, 'system/library/libphonenumber/geocoding/data/sr/381.php', '2022-11-26 09:53:36'),
(3186, 17, 'system/library/libphonenumber/geocoding/data/sr/383.php', '2022-11-26 09:53:36'),
(3187, 17, 'system/library/libphonenumber/geocoding/data/sr/387.php', '2022-11-26 09:53:36'),
(3188, 17, 'system/library/libphonenumber/geocoding/data/sr/82.php', '2022-11-26 09:53:36'),
(3189, 17, 'system/library/libphonenumber/geocoding/data/sv/358.php', '2022-11-26 09:53:36'),
(3190, 17, 'system/library/libphonenumber/geocoding/data/sv/46.php', '2022-11-26 09:53:36'),
(3191, 17, 'system/library/libphonenumber/geocoding/data/th/66.php', '2022-11-26 09:53:36'),
(3192, 17, 'system/library/libphonenumber/geocoding/data/tr/82.php', '2022-11-26 09:53:36'),
(3193, 17, 'system/library/libphonenumber/geocoding/data/tr/90.php', '2022-11-26 09:53:36'),
(3194, 17, 'system/library/libphonenumber/geocoding/data/uk/380.php', '2022-11-26 09:53:36'),
(3195, 17, 'system/library/libphonenumber/geocoding/data/uk/82.php', '2022-11-26 09:53:36'),
(3196, 17, 'system/library/libphonenumber/geocoding/data/vi/82.php', '2022-11-26 09:53:36'),
(3197, 17, 'system/library/libphonenumber/geocoding/data/vi/84.php', '2022-11-26 09:53:36'),
(3198, 17, 'system/library/libphonenumber/geocoding/data/zh/82.php', '2022-11-26 09:53:36'),
(3199, 17, 'system/library/libphonenumber/geocoding/data/zh/86.php', '2022-11-26 09:53:36'),
(3200, 17, 'system/library/libphonenumber/geocoding/data/zh/8610.php', '2022-11-26 09:53:36'),
(3201, 17, 'system/library/libphonenumber/geocoding/data/zh/86130.php', '2022-11-26 09:53:36'),
(3202, 17, 'system/library/libphonenumber/geocoding/data/zh/86131.php', '2022-11-26 09:53:36'),
(3203, 17, 'system/library/libphonenumber/geocoding/data/zh/86132.php', '2022-11-26 09:53:36'),
(3204, 17, 'system/library/libphonenumber/geocoding/data/zh/86133.php', '2022-11-26 09:53:36'),
(3205, 17, 'system/library/libphonenumber/geocoding/data/zh/86134.php', '2022-11-26 09:53:36'),
(3206, 17, 'system/library/libphonenumber/geocoding/data/zh/86135.php', '2022-11-26 09:53:36'),
(3207, 17, 'system/library/libphonenumber/geocoding/data/zh/86136.php', '2022-11-26 09:53:36'),
(3208, 17, 'system/library/libphonenumber/geocoding/data/zh/86137.php', '2022-11-26 09:53:36'),
(3209, 17, 'system/library/libphonenumber/geocoding/data/zh/86138.php', '2022-11-26 09:53:36'),
(3210, 17, 'system/library/libphonenumber/geocoding/data/zh/86139.php', '2022-11-26 09:53:36'),
(3211, 17, 'system/library/libphonenumber/geocoding/data/zh/86145.php', '2022-11-26 09:53:36'),
(3212, 17, 'system/library/libphonenumber/geocoding/data/zh/86147.php', '2022-11-26 09:53:36'),
(3213, 17, 'system/library/libphonenumber/geocoding/data/zh/86150.php', '2022-11-26 09:53:36'),
(3214, 17, 'system/library/libphonenumber/geocoding/data/zh/86151.php', '2022-11-26 09:53:36'),
(3215, 17, 'system/library/libphonenumber/geocoding/data/zh/86152.php', '2022-11-26 09:53:36'),
(3216, 17, 'system/library/libphonenumber/geocoding/data/zh/86153.php', '2022-11-26 09:53:36'),
(3217, 17, 'system/library/libphonenumber/geocoding/data/zh/86155.php', '2022-11-26 09:53:36'),
(3218, 17, 'system/library/libphonenumber/geocoding/data/zh/86156.php', '2022-11-26 09:53:36'),
(3219, 17, 'system/library/libphonenumber/geocoding/data/zh/86157.php', '2022-11-26 09:53:36'),
(3220, 17, 'system/library/libphonenumber/geocoding/data/zh/86158.php', '2022-11-26 09:53:36'),
(3221, 17, 'system/library/libphonenumber/geocoding/data/zh/86159.php', '2022-11-26 09:53:36'),
(3222, 17, 'system/library/libphonenumber/geocoding/data/zh/86170.php', '2022-11-26 09:53:36'),
(3223, 17, 'system/library/libphonenumber/geocoding/data/zh/86176.php', '2022-11-26 09:53:36'),
(3224, 17, 'system/library/libphonenumber/geocoding/data/zh/86177.php', '2022-11-26 09:53:36'),
(3225, 17, 'system/library/libphonenumber/geocoding/data/zh/86178.php', '2022-11-26 09:53:36'),
(3226, 17, 'system/library/libphonenumber/geocoding/data/zh/86180.php', '2022-11-26 09:53:36'),
(3227, 17, 'system/library/libphonenumber/geocoding/data/zh/86181.php', '2022-11-26 09:53:36'),
(3228, 17, 'system/library/libphonenumber/geocoding/data/zh/86182.php', '2022-11-26 09:53:36'),
(3229, 17, 'system/library/libphonenumber/geocoding/data/zh/86183.php', '2022-11-26 09:53:36'),
(3230, 17, 'system/library/libphonenumber/geocoding/data/zh/86184.php', '2022-11-26 09:53:36'),
(3231, 17, 'system/library/libphonenumber/geocoding/data/zh/86185.php', '2022-11-26 09:53:36'),
(3232, 17, 'system/library/libphonenumber/geocoding/data/zh/86186.php', '2022-11-26 09:53:36'),
(3233, 17, 'system/library/libphonenumber/geocoding/data/zh/86187.php', '2022-11-26 09:53:36'),
(3234, 17, 'system/library/libphonenumber/geocoding/data/zh/86188.php', '2022-11-26 09:53:36'),
(3235, 17, 'system/library/libphonenumber/geocoding/data/zh/86189.php', '2022-11-26 09:53:36'),
(3236, 17, 'system/library/libphonenumber/geocoding/data/zh/886.php', '2022-11-26 09:53:36'),
(3237, 17, 'system/library/libphonenumber/geocoding/data/zh_Hant/82.php', '2022-11-26 09:53:36'),
(3238, 17, 'system/library/libphonenumber/geocoding/data/zh_Hant/886.php', '2022-11-26 09:53:36'),
(3239, 17, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_button.scss', '2022-11-26 09:53:36'),
(3240, 17, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_callout.scss', '2022-11-26 09:53:36'),
(3241, 17, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_checkbox.scss', '2022-11-26 09:53:36'),
(3242, 17, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_common.scss', '2022-11-26 09:53:36'),
(3243, 17, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_forms.scss', '2022-11-26 09:53:36'),
(3244, 17, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_import.scss', '2022-11-26 09:53:36'),
(3245, 17, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_info.scss', '2022-11-26 09:53:36'),
(3246, 17, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_navigation.scss', '2022-11-26 09:53:36'),
(3247, 17, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_pagination.scss', '2022-11-26 09:53:36'),
(3248, 17, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_panels.scss', '2022-11-26 09:53:36'),
(3249, 17, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_button.scss', '2022-11-26 09:53:36'),
(3250, 17, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_callout.scss', '2022-11-26 09:53:36'),
(3251, 17, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_common.scss', '2022-11-26 09:53:36'),
(3252, 17, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_forms.scss', '2022-11-26 09:53:36'),
(3253, 17, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_import.scss', '2022-11-26 09:53:36'),
(3254, 17, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_navigation.scss', '2022-11-26 09:53:36'),
(3255, 17, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_panels.scss', '2022-11-26 09:53:36'),
(3256, 17, 'admin/view/stylesheet/d_admin_style/core/scss/section/_dashboard.scss', '2022-11-26 09:53:36'),
(3257, 17, 'admin/view/stylesheet/d_admin_style/core/scss/section/_firewall.scss', '2022-11-26 09:53:36'),
(3258, 17, 'admin/view/stylesheet/d_admin_style/core/scss/section/_help.scss', '2022-11-26 09:53:36'),
(3259, 17, 'admin/view/stylesheet/d_admin_style/core/scss/section/_low_php.scss', '2022-11-26 09:53:36'),
(3260, 17, 'admin/view/stylesheet/d_admin_style/core/scss/section/_scan.scss', '2022-11-26 09:53:36'),
(3261, 17, 'admin/view/stylesheet/d_admin_style/core/scss/section/_setting.scss', '2022-11-26 09:53:36'),
(3262, 17, 'admin/view/stylesheet/d_admin_style/core/scss/section/_statistic.scss', '2022-11-26 09:53:36'),
(3263, 17, 'admin/view/stylesheet/d_admin_style/core/scss/third_party/_chart.scss', '2022-11-26 09:53:36'),
(3264, 17, 'admin/view/stylesheet/d_admin_style/core/scss/third_party/_diff.scss', '2022-11-26 09:53:36'),
(3265, 17, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/_mixin.scss', '2022-11-26 09:53:36'),
(3266, 17, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/_variable.scss', '2022-11-26 09:53:36'),
(3267, 17, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section', '2022-11-26 09:53:36'),
(3268, 17, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/third_party', '2022-11-26 09:53:36'),
(3269, 17, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_button.scss', '2022-11-26 09:53:36'),
(3270, 17, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_common.scss', '2022-11-26 09:53:36'),
(3271, 17, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_form.scss', '2022-11-26 09:53:36'),
(3272, 17, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_forms.scss', '2022-11-26 09:53:36'),
(3273, 17, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_info.scss', '2022-11-26 09:53:36'),
(3274, 17, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_modal.scss', '2022-11-26 09:53:36'),
(3275, 17, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_navigation.scss', '2022-11-26 09:53:36'),
(3276, 17, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_notification.scss', '2022-11-26 09:53:36'),
(3277, 17, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_pagination.scss', '2022-11-26 09:53:36'),
(3278, 17, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_panel.scss', '2022-11-26 09:53:36'),
(3279, 17, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_table.scss', '2022-11-26 09:53:36'),
(3280, 17, 'admin/view/stylesheet/d_admin_style/themes/light/scss/_mixin.scss', '2022-11-26 09:53:36'),
(3281, 17, 'admin/view/stylesheet/d_admin_style/themes/light/scss/_variable.scss', '2022-11-26 09:53:36'),
(3282, 17, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section', '2022-11-26 09:53:36'),
(3283, 17, 'admin/view/stylesheet/d_admin_style/themes/light/scss/third_party', '2022-11-26 09:53:36'),
(3284, 17, 'catalog/view/javascript/d_quickcheckout/jqueryui/external/jquery/jquery.js', '2022-11-26 09:53:36'),
(3285, 17, 'catalog/view/theme/default/javascript/d_quickcheckout/component/col.js', '2022-11-26 09:53:36'),
(3286, 17, 'catalog/view/theme/default/javascript/d_quickcheckout/component/error.js', '2022-11-26 09:53:36'),
(3287, 17, 'catalog/view/theme/default/javascript/d_quickcheckout/component/field.js', '2022-11-26 09:53:36'),
(3288, 17, 'catalog/view/theme/default/javascript/d_quickcheckout/component/page.js', '2022-11-26 09:53:36'),
(3289, 17, 'catalog/view/theme/default/javascript/d_quickcheckout/component/row.js', '2022-11-26 09:53:36'),
(3290, 17, 'catalog/view/theme/default/javascript/d_quickcheckout/component/setting.js', '2022-11-26 09:53:36'),
(3291, 17, 'catalog/view/theme/default/javascript/d_quickcheckout/component/step.js', '2022-11-26 09:53:36'),
(3292, 17, 'catalog/view/theme/default/javascript/d_quickcheckout/step/account.js', '2022-11-26 09:53:36'),
(3293, 17, 'catalog/view/theme/default/javascript/d_quickcheckout/step/cart.js', '2022-11-26 09:53:36'),
(3294, 17, 'catalog/view/theme/default/javascript/d_quickcheckout/step/confirm.js', '2022-11-26 09:53:36'),
(3295, 17, 'catalog/view/theme/default/javascript/d_quickcheckout/step/custom.js', '2022-11-26 09:53:36'),
(3296, 17, 'catalog/view/theme/default/javascript/d_quickcheckout/step/payment.js', '2022-11-26 09:53:36'),
(3297, 17, 'catalog/view/theme/default/javascript/d_quickcheckout/step/payment_address.js', '2022-11-26 09:53:36'),
(3298, 17, 'catalog/view/theme/default/javascript/d_quickcheckout/step/payment_method.js', '2022-11-26 09:53:36'),
(3299, 17, 'catalog/view/theme/default/javascript/d_quickcheckout/step/shipping_address.js', '2022-11-26 09:53:36'),
(3300, 17, 'catalog/view/theme/default/javascript/d_quickcheckout/step/shipping_method.js', '2022-11-26 09:53:36'),
(3301, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/scss/component', '2022-11-26 09:53:36'),
(3302, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/scss/step', '2022-11-26 09:53:36'),
(3303, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/skin/default', '2022-11-26 09:53:36'),
(3304, 17, 'catalog/view/theme/default/stylesheet/d_social_login/icons/amazon.svg', '2022-11-26 09:53:36'),
(3305, 17, 'catalog/view/theme/default/stylesheet/d_social_login/icons/dribbble.svg', '2022-11-26 09:53:36'),
(3306, 17, 'catalog/view/theme/default/stylesheet/d_social_login/icons/facebook.svg', '2022-11-26 09:53:36'),
(3307, 17, 'catalog/view/theme/default/stylesheet/d_social_login/icons/foursquare.svg', '2022-11-26 09:53:36'),
(3308, 17, 'catalog/view/theme/default/stylesheet/d_social_login/icons/github.svg', '2022-11-26 09:53:36'),
(3309, 17, 'catalog/view/theme/default/stylesheet/d_social_login/icons/google.svg', '2022-11-26 09:53:36'),
(3310, 17, 'catalog/view/theme/default/stylesheet/d_social_login/icons/instagram.svg', '2022-11-26 09:53:36'),
(3311, 17, 'catalog/view/theme/default/stylesheet/d_social_login/icons/lastfm.svg', '2022-11-26 09:53:36'),
(3312, 17, 'catalog/view/theme/default/stylesheet/d_social_login/icons/line.svg', '2022-11-26 09:53:36'),
(3313, 17, 'catalog/view/theme/default/stylesheet/d_social_login/icons/linkedin.svg', '2022-11-26 09:53:36'),
(3314, 17, 'catalog/view/theme/default/stylesheet/d_social_login/icons/paypal.svg', '2022-11-26 09:53:36'),
(3315, 17, 'catalog/view/theme/default/stylesheet/d_social_login/icons/px500.svg', '2022-11-26 09:53:36'),
(3316, 17, 'catalog/view/theme/default/stylesheet/d_social_login/icons/steam.svg', '2022-11-26 09:53:36'),
(3317, 17, 'catalog/view/theme/default/stylesheet/d_social_login/icons/tumblr.svg', '2022-11-26 09:53:36'),
(3318, 17, 'catalog/view/theme/default/stylesheet/d_social_login/icons/twitter.svg', '2022-11-26 09:53:36'),
(3319, 17, 'catalog/view/theme/default/stylesheet/d_social_login/icons/vkontakte.svg', '2022-11-26 09:53:36'),
(3320, 17, 'catalog/view/theme/default/stylesheet/d_social_login/icons/yahoo.svg', '2022-11-26 09:53:36'),
(3321, 17, 'catalog/view/theme/default/stylesheet/d_social_login/pre_loader/clip-rotate.css', '2022-11-26 09:53:36'),
(3322, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component', '2022-11-26 09:53:36'),
(3323, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/field', '2022-11-26 09:53:36'),
(3324, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/step', '2022-11-26 09:53:36'),
(3325, 17, 'catalog/view/theme/default/template/extension/d_social_login/auth.twig', '2022-11-26 09:53:36'),
(3326, 17, 'catalog/view/theme/default/template/extension/d_social_login/confirm.twig', '2022-11-26 09:53:36'),
(3327, 17, 'catalog/view/theme/default/template/extension/d_social_login/form.twig', '2022-11-26 09:53:36'),
(3328, 17, 'catalog/view/theme/default/template/extension/module/d_quickcheckout.tag', '2022-11-26 09:53:36'),
(3329, 17, 'catalog/view/theme/default/template/extension/module/d_quickcheckout.twig', '2022-11-26 09:53:36'),
(3330, 17, 'catalog/view/theme/default/template/extension/module/d_social_login.twig', '2022-11-26 09:53:36'),
(3331, 17, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_dashboard.scss', '2022-11-26 09:53:36'),
(3332, 17, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_firewall.scss', '2022-11-26 09:53:36'),
(3333, 17, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_help.scss', '2022-11-26 09:53:36'),
(3334, 17, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_low_php.scss', '2022-11-26 09:53:36'),
(3335, 17, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_scan.scss', '2022-11-26 09:53:36'),
(3336, 17, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_setting.scss', '2022-11-26 09:53:36'),
(3337, 17, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_statistic.scss', '2022-11-26 09:53:36'),
(3338, 17, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/third_party/_chart.scss', '2022-11-26 09:53:36'),
(3339, 17, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/third_party/_diff.scss', '2022-11-26 09:53:36'),
(3340, 17, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_dashboard.scss', '2022-11-26 09:53:36'),
(3341, 17, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_firewall.scss', '2022-11-26 09:53:36'),
(3342, 17, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_help.scss', '2022-11-26 09:53:36'),
(3343, 17, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_low_php.scss', '2022-11-26 09:53:36'),
(3344, 17, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_scan.scss', '2022-11-26 09:53:36'),
(3345, 17, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_setting.scss', '2022-11-26 09:53:36'),
(3346, 17, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_statistic.scss', '2022-11-26 09:53:36'),
(3347, 17, 'admin/view/stylesheet/d_admin_style/themes/light/scss/third_party/_chart.scss', '2022-11-26 09:53:36'),
(3348, 17, 'admin/view/stylesheet/d_admin_style/themes/light/scss/third_party/_diff.scss', '2022-11-26 09:53:36'),
(3349, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/scss/component/_alertify.scss', '2022-11-26 09:53:36'),
(3350, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/scss/component/_bootstrap.scss', '2022-11-26 09:53:36'),
(3351, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/scss/component/_checkbox.scss', '2022-11-26 09:53:36'),
(3352, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/scss/component/_editor.scss', '2022-11-26 09:53:36'),
(3353, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/scss/component/_field.scss', '2022-11-26 09:53:36'),
(3354, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/scss/component/_layout.scss', '2022-11-26 09:53:36'),
(3355, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/scss/component/_loader.scss', '2022-11-26 09:53:36'),
(3356, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/scss/component/_page.scss', '2022-11-26 09:53:36'),
(3357, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/scss/component/_radio.scss', '2022-11-26 09:53:36'),
(3358, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/scss/component/_setting.scss', '2022-11-26 09:53:36'),
(3359, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/scss/step/_account.scss', '2022-11-26 09:53:36'),
(3360, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/scss/step/_cart.scss', '2022-11-26 09:53:36'),
(3361, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/scss/step/_payment.scss', '2022-11-26 09:53:36'),
(3362, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/scss/step/_payment_method.scss', '2022-11-26 09:53:36'),
(3363, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/skin/default/default.css', '2022-11-26 09:53:36'),
(3364, 17, 'catalog/view/theme/default/stylesheet/d_quickcheckout/skin/default/default.scss', '2022-11-26 09:53:36'),
(3365, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component/qc_address_radio.tag', '2022-11-26 09:53:36'),
(3366, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component/qc_address_select.tag', '2022-11-26 09:53:36'),
(3367, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component/qc_col.tag', '2022-11-26 09:53:36'),
(3368, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component/qc_custom_field.tag', '2022-11-26 09:53:36'),
(3369, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component/qc_depend_setting.tag', '2022-11-26 09:53:36'),
(3370, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component/qc_depends.tag', '2022-11-26 09:53:36'),
(3371, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component/qc_design_setting.tag', '2022-11-26 09:53:36'),
(3372, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component/qc_error_setting.tag', '2022-11-26 09:53:36'),
(3373, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component/qc_errors.tag', '2022-11-26 09:53:36'),
(3374, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component/qc_field_setting.tag', '2022-11-26 09:53:36'),
(3375, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component/qc_layout.tag', '2022-11-26 09:53:36'),
(3376, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component/qc_layout_setting.tag', '2022-11-26 09:53:36'),
(3377, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component/qc_page.tag', '2022-11-26 09:53:36'),
(3378, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component/qc_page_nav.tag', '2022-11-26 09:53:36'),
(3379, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component/qc_popup_setting.tag', '2022-11-26 09:53:36'),
(3380, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component/qc_pro_label.tag', '2022-11-26 09:53:36'),
(3381, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component/qc_raw.tag', '2022-11-26 09:53:36'),
(3382, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component/qc_row.tag', '2022-11-26 09:53:36'),
(3383, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component/qc_setting.tag', '2022-11-26 09:53:36'),
(3384, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component/qc_step_setting.tag', '2022-11-26 09:53:36'),
(3385, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/component/qc_switcher.tag', '2022-11-26 09:53:36'),
(3386, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/field/qc_captcha.tag', '2022-11-26 09:53:36'),
(3387, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/field/qc_checkbox.tag', '2022-11-26 09:53:36'),
(3388, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/field/qc_date.tag', '2022-11-26 09:53:36'),
(3389, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/field/qc_datetime.tag', '2022-11-26 09:53:36'),
(3390, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/field/qc_email.tag', '2022-11-26 09:53:36'),
(3391, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/field/qc_google_recaptcha.tag', '2022-11-26 09:53:36'),
(3392, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/field/qc_heading.tag', '2022-11-26 09:53:36'),
(3393, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/field/qc_label.tag', '2022-11-26 09:53:36'),
(3394, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/field/qc_password.tag', '2022-11-26 09:53:36'),
(3395, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/field/qc_radio.tag', '2022-11-26 09:53:36'),
(3396, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/field/qc_select.tag', '2022-11-26 09:53:36'),
(3397, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/field/qc_tel.tag', '2022-11-26 09:53:36'),
(3398, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/field/qc_text.tag', '2022-11-26 09:53:36'),
(3399, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/field/qc_textarea.tag', '2022-11-26 09:53:36'),
(3400, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/field/qc_time.tag', '2022-11-26 09:53:36'),
(3401, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/step/qc_account.tag', '2022-11-26 09:53:36'),
(3402, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/step/qc_cart.tag', '2022-11-26 09:53:36'),
(3403, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/step/qc_confirm.tag', '2022-11-26 09:53:36'),
(3404, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/step/qc_custom.tag', '2022-11-26 09:53:36'),
(3405, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/step/qc_payment.tag', '2022-11-26 09:53:36'),
(3406, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/step/qc_payment_address.tag', '2022-11-26 09:53:36'),
(3407, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/step/qc_payment_method.tag', '2022-11-26 09:53:36'),
(3408, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/step/qc_shipping_address.tag', '2022-11-26 09:53:36'),
(3409, 17, 'catalog/view/theme/default/template/extension/d_quickcheckout/step/qc_shipping_method.tag', '2022-11-26 09:53:36'),
(3601, 18, 'system/library/nice/scssphp-1.10.3/src/Exception/ParserException.php', '2022-11-26 10:39:12'),
(3602, 18, 'system/library/nice/scssphp-1.10.3/src/Exception/RangeException.php', '2022-11-26 10:39:12'),
(3603, 18, 'system/library/nice/scssphp-1.10.3/src/Exception/SassException.php', '2022-11-26 10:39:12'),
(3604, 18, 'system/library/nice/scssphp-1.10.3/src/Exception/SassScriptException.php', '2022-11-26 10:39:12'),
(3605, 18, 'system/library/nice/scssphp-1.10.3/src/Exception/ServerException.php', '2022-11-26 10:39:12'),
(3606, 18, 'system/library/nice/scssphp-1.10.3/src/Formatter/Compact.php', '2022-11-26 10:39:12'),
(3607, 18, 'system/library/nice/scssphp-1.10.3/src/Formatter/Compressed.php', '2022-11-26 10:39:12'),
(3608, 18, 'system/library/nice/scssphp-1.10.3/src/Formatter/Crunched.php', '2022-11-26 10:39:12'),
(3609, 18, 'system/library/nice/scssphp-1.10.3/src/Formatter/Debug.php', '2022-11-26 10:39:12'),
(3610, 18, 'system/library/nice/scssphp-1.10.3/src/Formatter/Expanded.php', '2022-11-26 10:39:12'),
(3611, 18, 'system/library/nice/scssphp-1.10.3/src/Formatter/Nested.php', '2022-11-26 10:39:12'),
(3612, 18, 'system/library/nice/scssphp-1.10.3/src/Formatter/OutputBlock.php', '2022-11-26 10:39:12'),
(3613, 18, 'system/library/nice/scssphp-1.10.3/src/Logger/LoggerInterface.php', '2022-11-26 10:39:12'),
(3614, 18, 'system/library/nice/scssphp-1.10.3/src/Logger/QuietLogger.php', '2022-11-26 10:39:12'),
(3615, 18, 'system/library/nice/scssphp-1.10.3/src/Logger/StreamLogger.php', '2022-11-26 10:39:12'),
(3616, 18, 'system/library/nice/scssphp-1.10.3/src/Node/Number.php', '2022-11-26 10:39:12'),
(3617, 18, 'system/library/nice/scssphp-1.10.3/src/SourceMap/Base64.php', '2022-11-26 10:39:12'),
(3618, 18, 'system/library/nice/scssphp-1.10.3/src/SourceMap/Base64VLQ.php', '2022-11-26 10:39:12'),
(3619, 18, 'system/library/nice/scssphp-1.10.3/src/SourceMap/SourceMapGenerator.php', '2022-11-26 10:39:12'),
(3620, 18, 'system/library/nice/scssphp-1.10.3/src/Util/Path.php', '2022-11-26 10:39:12'),
(3621, 18, 'catalog/view/theme/nice/template/extension/module/banner.twig', '2022-11-26 10:39:12'),
(3622, 18, 'catalog/view/theme/nice/template/extension/module/bestseller.twig', '2022-11-26 10:39:12'),
(3623, 18, 'catalog/view/theme/nice/template/extension/module/carousel.twig', '2022-11-26 10:39:12'),
(3624, 18, 'catalog/view/theme/nice/template/extension/module/category.twig', '2022-11-26 10:39:12'),
(3625, 18, 'catalog/view/theme/nice/template/extension/module/featured.twig', '2022-11-26 10:39:12'),
(3626, 18, 'catalog/view/theme/nice/template/extension/module/filter.twig', '2022-11-26 10:39:12'),
(3627, 18, 'catalog/view/theme/nice/template/extension/module/html.twig', '2022-11-26 10:39:12'),
(3628, 18, 'catalog/view/theme/nice/template/extension/module/latest.twig', '2022-11-26 10:39:12'),
(3629, 18, 'catalog/view/theme/nice/template/extension/module/nice_slideshow.twig', '2022-11-26 10:39:12'),
(3630, 18, 'catalog/view/theme/nice/template/extension/module/slideshow.twig', '2022-11-26 10:39:12'),
(3631, 18, 'catalog/view/theme/nice/template/extension/module/special.twig', '2022-11-26 10:39:12'),
(3632, 18, 'catalog/view/theme/nice/template/extension/module/store.twig', '2022-11-26 10:39:12'),
(3633, 19, 'vqmod', '2022-11-26 15:14:39'),
(3634, 19, 'vqmod/install', '2022-11-26 15:14:39'),
(3635, 19, 'vqmod/pathReplaces.php', '2022-11-26 15:14:39'),
(3636, 19, 'vqmod/readme.txt', '2022-11-26 15:14:39'),
(3637, 19, 'vqmod/vqmod.php', '2022-11-26 15:14:39'),
(3638, 19, 'vqmod/xml', '2022-11-26 15:14:39'),
(3639, 19, 'vqmod/install/index.php', '2022-11-26 15:14:39'),
(3640, 19, 'vqmod/install/ugrsr.class.php', '2022-11-26 15:14:39'),
(3641, 19, 'vqmod/xml/vqmod_opencart.xml', '2022-11-26 15:14:39'),
(3642, 22, 'catalog/view/javascript/themability-quick-view', '2022-11-26 23:05:03'),
(3643, 22, 'catalog/view/javascript/themability-quick-view/jquery-ui.css', '2022-11-26 23:05:03'),
(3644, 22, 'catalog/view/javascript/themability-quick-view/jquery-ui.js', '2022-11-26 23:05:03'),
(3645, 22, 'catalog/view/javascript/themability-quick-view/loading.gif', '2022-11-26 23:05:03'),
(3646, 22, 'catalog/view/javascript/themability-quick-view/themability-quick-view.css', '2022-11-26 23:05:03'),
(3647, 22, 'catalog/view/javascript/themability-quick-view/themability-quick-view.js', '2022-11-26 23:05:03'),
(3648, 23, 'image/catalog/d_ajax_search', '2022-11-26 23:10:00'),
(3649, 23, 'system/config/d_ajax_search', '2022-11-26 23:10:00'),
(3650, 23, 'system/config/d_ajax_search.php', '2022-11-26 23:10:00'),
(3651, 23, 'system/config/d_event_manager.php', '2022-11-26 23:10:00'),
(3652, 23, 'system/library/d_simple_html_dom.php', '2022-11-26 23:10:00'),
(3653, 23, 'admin/controller/extension/d_ajax_search', '2022-11-26 23:10:00'),
(3654, 23, 'admin/view/image/d_ajax_search', '2022-11-26 23:10:00'),
(3655, 23, 'admin/view/javascript/d_rubaxa_sortable', '2022-11-26 23:10:00'),
(3656, 23, 'admin/view/stylesheet/d_ajax_search', '2022-11-26 23:10:00'),
(3657, 23, 'catalog/view/javascript/d_rubaxa_sortable', '2022-11-26 23:10:00'),
(3658, 23, 'image/catalog/d_ajax_search/no_image_search.png', '2022-11-26 23:10:00'),
(3659, 23, 'system/config/d_ajax_search/product_simple.php', '2022-11-26 23:10:00'),
(3660, 23, 'admin/controller/extension/d_ajax_search/product_simple.php', '2022-11-26 23:10:00'),
(3661, 23, 'admin/controller/extension/module/d_ajax_search.php', '2022-11-26 23:10:00'),
(3662, 23, 'admin/model/extension/d_admin_style/style.php', '2022-11-26 23:10:00'),
(3663, 23, 'admin/model/extension/d_opencart_patch/cache.php', '2022-11-26 23:10:00'),
(3664, 23, 'admin/model/extension/d_opencart_patch/event.php', '2022-11-26 23:10:00'),
(3665, 23, 'admin/model/extension/d_opencart_patch/extension.php', '2022-11-26 23:10:00'),
(3666, 23, 'admin/model/extension/d_opencart_patch/load.php', '2022-11-26 23:10:00'),
(3667, 23, 'admin/model/extension/d_opencart_patch/modification.php', '2022-11-26 23:10:00'),
(3668, 23, 'admin/model/extension/d_opencart_patch/module.php', '2022-11-26 23:10:00'),
(3669, 23, 'admin/model/extension/d_opencart_patch/setting.php', '2022-11-26 23:10:00'),
(3670, 23, 'admin/model/extension/d_opencart_patch/store.php', '2022-11-26 23:10:00'),
(3671, 23, 'admin/model/extension/d_opencart_patch/url.php', '2022-11-26 23:10:00'),
(3672, 23, 'admin/model/extension/d_opencart_patch/user.php', '2022-11-26 23:10:00'),
(3673, 23, 'admin/model/extension/d_opencart_patch/vqmod.php', '2022-11-26 23:10:00'),
(3674, 23, 'admin/model/extension/module/d_ajax_search.php', '2022-11-26 23:10:00'),
(3675, 23, 'admin/model/extension/module/d_event_manager.php', '2022-11-26 23:10:00'),
(3676, 23, 'admin/model/extension/module/d_twig_manager.php', '2022-11-26 23:10:00'),
(3677, 23, 'admin/view/image/d_admin_style/checkmark.png', '2022-11-26 23:10:00'),
(3678, 23, 'admin/view/image/d_admin_style/checkmark.svg', '2022-11-26 23:10:00'),
(3679, 23, 'admin/view/image/d_ajax_search/bg.svg', '2022-11-26 23:10:00');
INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(3680, 23, 'admin/view/image/d_ajax_search/d_ajax_search_code_source.png', '2022-11-26 23:10:00'),
(3681, 23, 'admin/view/image/d_ajax_search/d_ajax_search_result_dropdown.png', '2022-11-26 23:10:00'),
(3682, 23, 'admin/view/image/d_ajax_search/icons', '2022-11-26 23:10:00'),
(3683, 23, 'admin/view/image/d_ajax_search/logo.svg', '2022-11-26 23:10:00'),
(3684, 23, 'admin/view/javascript/d_rubaxa_sortable/jquery.binding.js', '2022-11-26 23:10:00'),
(3685, 23, 'admin/view/javascript/d_rubaxa_sortable/knockout-sortable.js', '2022-11-26 23:10:00'),
(3686, 23, 'admin/view/javascript/d_rubaxa_sortable/ng-sortable.js', '2022-11-26 23:10:00'),
(3687, 23, 'admin/view/javascript/d_rubaxa_sortable/react-sortable-mixin.js', '2022-11-26 23:10:00'),
(3688, 23, 'admin/view/javascript/d_rubaxa_sortable/sortable.css', '2022-11-26 23:10:00'),
(3689, 23, 'admin/view/javascript/d_rubaxa_sortable/sortable.js', '2022-11-26 23:10:00'),
(3690, 23, 'admin/view/javascript/d_rubaxa_sortable/sortable.min.js', '2022-11-26 23:10:00'),
(3691, 23, 'admin/view/javascript/d_tinysort/jquery.tinysort.js', '2022-11-26 23:10:00'),
(3692, 23, 'admin/view/javascript/d_tinysort/jquery.tinysort.min.js', '2022-11-26 23:10:00'),
(3693, 23, 'admin/view/javascript/d_tinysort/tinysort.charorder.js', '2022-11-26 23:10:00'),
(3694, 23, 'admin/view/javascript/d_tinysort/tinysort.charorder.min.js', '2022-11-26 23:10:00'),
(3695, 23, 'admin/view/javascript/d_tinysort/tinysort.js', '2022-11-26 23:10:00'),
(3696, 23, 'admin/view/javascript/d_tinysort/tinysort.min.js', '2022-11-26 23:10:00'),
(3697, 23, 'admin/view/stylesheet/d_ajax_search/d_ajax_search.css', '2022-11-26 23:10:00'),
(3698, 23, 'admin/view/stylesheet/d_bootstrap_extra/bootstrap.css', '2022-11-26 23:10:00'),
(3699, 23, 'admin/view/template/extension/d_ajax_search', '2022-11-26 23:10:00'),
(3700, 23, 'catalog/controller/extension/module/d_ajax_search.php', '2022-11-26 23:10:00'),
(3701, 23, 'catalog/model/extension/d_opencart_patch/load.php', '2022-11-26 23:10:00'),
(3702, 23, 'catalog/model/extension/d_opencart_patch/user.php', '2022-11-26 23:10:00'),
(3703, 23, 'catalog/model/extension/module/d_ajax_search.php', '2022-11-26 23:10:00'),
(3704, 23, 'catalog/view/javascript/d_rubaxa_sortable/jquery.binding.js', '2022-11-26 23:10:00'),
(3705, 23, 'catalog/view/javascript/d_rubaxa_sortable/knockout-sortable.js', '2022-11-26 23:10:00'),
(3706, 23, 'catalog/view/javascript/d_rubaxa_sortable/ng-sortable.js', '2022-11-26 23:10:00'),
(3707, 23, 'catalog/view/javascript/d_rubaxa_sortable/react-sortable-mixin.js', '2022-11-26 23:10:00'),
(3708, 23, 'catalog/view/javascript/d_rubaxa_sortable/sortable.css', '2022-11-26 23:10:00'),
(3709, 23, 'catalog/view/javascript/d_rubaxa_sortable/sortable.js', '2022-11-26 23:10:00'),
(3710, 23, 'catalog/view/javascript/d_rubaxa_sortable/sortable.min.js', '2022-11-26 23:10:00'),
(3711, 23, 'catalog/view/javascript/d_tinysort/jquery.tinysort.js', '2022-11-26 23:10:00'),
(3712, 23, 'catalog/view/javascript/d_tinysort/jquery.tinysort.min.js', '2022-11-26 23:10:00'),
(3713, 23, 'catalog/view/javascript/d_tinysort/tinysort.charorder.js', '2022-11-26 23:10:00'),
(3714, 23, 'catalog/view/javascript/d_tinysort/tinysort.charorder.min.js', '2022-11-26 23:10:00'),
(3715, 23, 'catalog/view/javascript/d_tinysort/tinysort.js', '2022-11-26 23:10:00'),
(3716, 23, 'catalog/view/javascript/d_tinysort/tinysort.min.js', '2022-11-26 23:10:00'),
(3717, 23, 'system/library/d_shopunity/extension/d_admin_style.json', '2022-11-26 23:10:00'),
(3718, 23, 'system/library/d_shopunity/extension/d_ajax_search.json', '2022-11-26 23:10:00'),
(3719, 23, 'system/library/d_shopunity/extension/d_bootstrap_extra.json', '2022-11-26 23:10:00'),
(3720, 23, 'system/library/d_shopunity/extension/d_bootstrap_switch.json', '2022-11-26 23:10:00'),
(3721, 23, 'system/library/d_shopunity/extension/d_event_manager.json', '2022-11-26 23:10:00'),
(3722, 23, 'system/library/d_shopunity/extension/d_opencart_patch.json', '2022-11-26 23:10:00'),
(3723, 23, 'system/library/d_shopunity/extension/d_rubaxa_sortable.json', '2022-11-26 23:10:00'),
(3724, 23, 'system/library/d_shopunity/extension/d_simple_html_dom.json', '2022-11-26 23:10:00'),
(3725, 23, 'system/library/d_shopunity/extension/d_tinysort.json', '2022-11-26 23:10:00'),
(3726, 23, 'system/library/d_shopunity/extension/d_twig_manager.json', '2022-11-26 23:10:00'),
(3727, 23, 'system/library/d_shopunity/install/d_ajax_search.xml', '2022-11-26 23:10:00'),
(3728, 23, 'system/library/d_shopunity/install/d_opencart_patch.xml', '2022-11-26 23:10:00'),
(3729, 23, 'system/library/d_shopunity/install/d_twig_manager.xml', '2022-11-26 23:10:00'),
(3730, 23, 'system/library/d_shopunity/readme/d_opencart_patch.md', '2022-11-26 23:10:00'),
(3731, 23, 'admin/language/en-gb/extension/d_admin_style/style.php', '2022-11-26 23:10:00'),
(3732, 23, 'admin/language/en-gb/extension/module/d_ajax_search.php', '2022-11-26 23:10:00'),
(3733, 23, 'admin/view/image/d_ajax_search/icons/bg.svg', '2022-11-26 23:10:00'),
(3734, 23, 'admin/view/image/d_ajax_search/icons/extremely_fast.svg', '2022-11-26 23:10:00'),
(3735, 23, 'admin/view/image/d_ajax_search/icons/intelligent_search.svg', '2022-11-26 23:10:00'),
(3736, 23, 'admin/view/image/d_ajax_search/icons/live_ajax_search.svg', '2022-11-26 23:10:00'),
(3737, 23, 'admin/view/image/d_ajax_search/icons/search_over_20_parameters.svg', '2022-11-26 23:10:00'),
(3738, 23, 'admin/view/image/d_ajax_search/icons/search_suggestions.svg', '2022-11-26 23:10:00'),
(3739, 23, 'admin/view/javascript/d_admin_style/gulp/gulpfile.js', '2022-11-26 23:10:00'),
(3740, 23, 'admin/view/javascript/d_admin_style/gulp/package-lock.json', '2022-11-26 23:10:00'),
(3741, 23, 'admin/view/javascript/d_admin_style/gulp/package.json', '2022-11-26 23:10:00'),
(3742, 23, 'admin/view/javascript/d_bootstrap_switch/css/bootstrap-switch.css', '2022-11-26 23:10:00'),
(3743, 23, 'admin/view/javascript/d_bootstrap_switch/css/bootstrap-switch.min.css', '2022-11-26 23:10:00'),
(3744, 23, 'admin/view/javascript/d_bootstrap_switch/js/bootstrap-switch.js', '2022-11-26 23:10:00'),
(3745, 23, 'admin/view/javascript/d_bootstrap_switch/js/bootstrap-switch.min.js', '2022-11-26 23:10:00'),
(3746, 23, 'admin/view/stylesheet/d_admin_style/core/_blog.scss', '2022-11-26 23:10:00'),
(3747, 23, 'admin/view/stylesheet/d_admin_style/core/_common.scss', '2022-11-26 23:10:00'),
(3748, 23, 'admin/view/stylesheet/d_admin_style/core/_compatible.scss', '2022-11-26 23:10:00'),
(3749, 23, 'admin/view/stylesheet/d_admin_style/core/_notification.scss', '2022-11-26 23:10:00'),
(3750, 23, 'admin/view/stylesheet/d_admin_style/core/_tables.scss', '2022-11-26 23:10:00'),
(3751, 23, 'admin/view/stylesheet/d_admin_style/core/core.css', '2022-11-26 23:10:00'),
(3752, 23, 'admin/view/stylesheet/d_admin_style/core/core.css.map', '2022-11-26 23:10:00'),
(3753, 23, 'admin/view/stylesheet/d_admin_style/core/core.scss', '2022-11-26 23:10:00'),
(3754, 23, 'admin/view/stylesheet/d_admin_style/core/setup.css', '2022-11-26 23:10:00'),
(3755, 23, 'admin/view/stylesheet/d_admin_style/core/setup.css.map', '2022-11-26 23:10:00'),
(3756, 23, 'admin/view/stylesheet/d_admin_style/core/setup.scss', '2022-11-26 23:10:00'),
(3757, 23, 'admin/view/stylesheet/d_admin_style/core/welcome.css', '2022-11-26 23:10:00'),
(3758, 23, 'admin/view/stylesheet/d_admin_style/core/welcome.css.map', '2022-11-26 23:10:00'),
(3759, 23, 'admin/view/stylesheet/d_admin_style/core/welcome.scss', '2022-11-26 23:10:00'),
(3760, 23, 'admin/view/template/extension/d_admin_style/setup.twig', '2022-11-26 23:10:00'),
(3761, 23, 'admin/view/template/extension/d_ajax_search/customer_search_history.twig', '2022-11-26 23:10:00'),
(3762, 23, 'admin/view/template/extension/module/d_ajax_search.twig', '2022-11-26 23:10:00'),
(3763, 23, 'catalog/language/en-gb/extension/module/d_ajax_search.php', '2022-11-26 23:10:00'),
(3764, 23, 'catalog/view/javascript/d_bootstrap_switch/css/bootstrap-switch.css', '2022-11-26 23:10:00'),
(3765, 23, 'catalog/view/javascript/d_bootstrap_switch/css/bootstrap-switch.min.css', '2022-11-26 23:10:00'),
(3766, 23, 'catalog/view/javascript/d_bootstrap_switch/js/bootstrap-switch.js', '2022-11-26 23:10:00'),
(3767, 23, 'catalog/view/javascript/d_bootstrap_switch/js/bootstrap-switch.min.js', '2022-11-26 23:10:00'),
(3768, 23, 'catalog/view/theme/default/stylesheet/d_ajax_search', '2022-11-26 23:10:00'),
(3769, 23, 'system/library/template/Twig/Extension/DTwigManager.php', '2022-11-26 23:10:00'),
(3770, 23, 'admin/view/stylesheet/d_admin_style/core/header/header.css', '2022-11-26 23:10:00'),
(3771, 23, 'admin/view/stylesheet/d_admin_style/core/header/header.css.map', '2022-11-26 23:10:00'),
(3772, 23, 'admin/view/stylesheet/d_admin_style/core/header/header.scss', '2022-11-26 23:10:00'),
(3773, 23, 'admin/view/stylesheet/d_admin_style/core/header/headerold.css', '2022-11-26 23:10:00'),
(3774, 23, 'admin/view/stylesheet/d_admin_style/core/header/headerold.css.map', '2022-11-26 23:10:00'),
(3775, 23, 'admin/view/stylesheet/d_admin_style/core/header/headerold.scss', '2022-11-26 23:10:00'),
(3776, 23, 'admin/view/stylesheet/d_admin_style/core/normalize/normalize.css', '2022-11-26 23:10:00'),
(3777, 23, 'admin/view/stylesheet/d_admin_style/core/scss/_mixin.scss', '2022-11-26 23:10:00'),
(3778, 23, 'admin/view/stylesheet/d_admin_style/core/scss/_mixins.sass', '2022-11-26 23:10:00'),
(3779, 23, 'admin/view/stylesheet/d_admin_style/core/scss/_variable.scss', '2022-11-26 23:10:00'),
(3780, 23, 'admin/view/stylesheet/d_admin_style/core/svg/loader.svg', '2022-11-26 23:10:00'),
(3781, 23, 'admin/view/stylesheet/d_admin_style/themes/dark/dark.css', '2022-11-26 23:10:00'),
(3782, 23, 'admin/view/stylesheet/d_admin_style/themes/dark/dark.css.map', '2022-11-26 23:10:00'),
(3783, 23, 'admin/view/stylesheet/d_admin_style/themes/dark/dark.scss', '2022-11-26 23:10:00'),
(3784, 23, 'admin/view/stylesheet/d_admin_style/themes/dark/styles.css', '2022-11-26 23:10:00'),
(3785, 23, 'admin/view/stylesheet/d_admin_style/themes/dark/styles.css.map', '2022-11-26 23:10:00'),
(3786, 23, 'admin/view/stylesheet/d_admin_style/themes/dark/styles.scss', '2022-11-26 23:10:00'),
(3787, 23, 'admin/view/stylesheet/d_admin_style/themes/default/styles.css', '2022-11-26 23:10:00'),
(3788, 23, 'admin/view/stylesheet/d_admin_style/themes/light/light.css', '2022-11-26 23:10:00'),
(3789, 23, 'admin/view/stylesheet/d_admin_style/themes/light/light.css.map', '2022-11-26 23:10:00'),
(3790, 23, 'admin/view/stylesheet/d_admin_style/themes/light/light.scss', '2022-11-26 23:10:00'),
(3791, 23, 'admin/view/stylesheet/d_admin_style/themes/light/styles.css', '2022-11-26 23:10:00'),
(3792, 23, 'admin/view/stylesheet/d_admin_style/themes/light/styles.css.map', '2022-11-26 23:10:00'),
(3793, 23, 'admin/view/stylesheet/d_admin_style/themes/light/styles.scss', '2022-11-26 23:10:00'),
(3794, 23, 'catalog/view/theme/default/stylesheet/d_ajax_search/d_ajax_search.css', '2022-11-26 23:10:00'),
(3795, 23, 'catalog/view/theme/default/stylesheet/d_ajax_search/mobile.css', '2022-11-26 23:10:00'),
(3796, 23, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_button.scss', '2022-11-26 23:10:00'),
(3797, 23, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_callout.scss', '2022-11-26 23:10:00'),
(3798, 23, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_checkbox.scss', '2022-11-26 23:10:00'),
(3799, 23, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_common.scss', '2022-11-26 23:10:00'),
(3800, 23, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_forms.scss', '2022-11-26 23:10:00'),
(3801, 23, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_import.scss', '2022-11-26 23:10:00'),
(3802, 23, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_info.scss', '2022-11-26 23:10:00'),
(3803, 23, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_navigation.scss', '2022-11-26 23:10:00'),
(3804, 23, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_pagination.scss', '2022-11-26 23:10:00'),
(3805, 23, 'admin/view/stylesheet/d_admin_style/core/scss/modification/_panels.scss', '2022-11-26 23:10:00'),
(3806, 23, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_button.scss', '2022-11-26 23:10:00'),
(3807, 23, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_callout.scss', '2022-11-26 23:10:00'),
(3808, 23, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_common.scss', '2022-11-26 23:10:00'),
(3809, 23, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_forms.scss', '2022-11-26 23:10:00'),
(3810, 23, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_import.scss', '2022-11-26 23:10:00'),
(3811, 23, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_navigation.scss', '2022-11-26 23:10:00'),
(3812, 23, 'admin/view/stylesheet/d_admin_style/core/scss/mofication/_panels.scss', '2022-11-26 23:10:00'),
(3813, 23, 'admin/view/stylesheet/d_admin_style/core/scss/section/_dashboard.scss', '2022-11-26 23:10:00'),
(3814, 23, 'admin/view/stylesheet/d_admin_style/core/scss/section/_firewall.scss', '2022-11-26 23:10:00'),
(3815, 23, 'admin/view/stylesheet/d_admin_style/core/scss/section/_help.scss', '2022-11-26 23:10:00'),
(3816, 23, 'admin/view/stylesheet/d_admin_style/core/scss/section/_low_php.scss', '2022-11-26 23:10:00'),
(3817, 23, 'admin/view/stylesheet/d_admin_style/core/scss/section/_scan.scss', '2022-11-26 23:10:00'),
(3818, 23, 'admin/view/stylesheet/d_admin_style/core/scss/section/_setting.scss', '2022-11-26 23:10:00'),
(3819, 23, 'admin/view/stylesheet/d_admin_style/core/scss/section/_statistic.scss', '2022-11-26 23:10:00'),
(3820, 23, 'admin/view/stylesheet/d_admin_style/core/scss/third_party/_chart.scss', '2022-11-26 23:10:00'),
(3821, 23, 'admin/view/stylesheet/d_admin_style/core/scss/third_party/_diff.scss', '2022-11-26 23:10:00'),
(3822, 23, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/_mixin.scss', '2022-11-26 23:10:00'),
(3823, 23, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/_variable.scss', '2022-11-26 23:10:00'),
(3824, 23, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_button.scss', '2022-11-26 23:10:00'),
(3825, 23, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_common.scss', '2022-11-26 23:10:00'),
(3826, 23, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_form.scss', '2022-11-26 23:10:00'),
(3827, 23, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_forms.scss', '2022-11-26 23:10:00'),
(3828, 23, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_info.scss', '2022-11-26 23:10:00'),
(3829, 23, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_modal.scss', '2022-11-26 23:10:00'),
(3830, 23, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_navigation.scss', '2022-11-26 23:10:00'),
(3831, 23, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_notification.scss', '2022-11-26 23:10:00'),
(3832, 23, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_pagination.scss', '2022-11-26 23:10:00'),
(3833, 23, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_panel.scss', '2022-11-26 23:10:00'),
(3834, 23, 'admin/view/stylesheet/d_admin_style/themes/light/modification/_table.scss', '2022-11-26 23:10:00'),
(3835, 23, 'admin/view/stylesheet/d_admin_style/themes/light/scss/_mixin.scss', '2022-11-26 23:10:00'),
(3836, 23, 'admin/view/stylesheet/d_admin_style/themes/light/scss/_variable.scss', '2022-11-26 23:10:00'),
(3837, 23, 'catalog/view/theme/default/template/extension/module/d_ajax_search.twig', '2022-11-26 23:10:00'),
(3838, 23, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_dashboard.scss', '2022-11-26 23:10:00'),
(3839, 23, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_firewall.scss', '2022-11-26 23:10:00'),
(3840, 23, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_help.scss', '2022-11-26 23:10:00'),
(3841, 23, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_low_php.scss', '2022-11-26 23:10:00'),
(3842, 23, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_scan.scss', '2022-11-26 23:10:00'),
(3843, 23, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_setting.scss', '2022-11-26 23:10:00'),
(3844, 23, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/section/_statistic.scss', '2022-11-26 23:10:00'),
(3845, 23, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/third_party/_chart.scss', '2022-11-26 23:10:00'),
(3846, 23, 'admin/view/stylesheet/d_admin_style/themes/dark/scss/third_party/_diff.scss', '2022-11-26 23:10:00'),
(3847, 23, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_dashboard.scss', '2022-11-26 23:10:00'),
(3848, 23, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_firewall.scss', '2022-11-26 23:10:00'),
(3849, 23, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_help.scss', '2022-11-26 23:10:00'),
(3850, 23, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_low_php.scss', '2022-11-26 23:10:00'),
(3851, 23, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_scan.scss', '2022-11-26 23:10:00'),
(3852, 23, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_setting.scss', '2022-11-26 23:10:00'),
(3853, 23, 'admin/view/stylesheet/d_admin_style/themes/light/scss/section/_statistic.scss', '2022-11-26 23:10:00'),
(3854, 23, 'admin/view/stylesheet/d_admin_style/themes/light/scss/third_party/_chart.scss', '2022-11-26 23:10:00'),
(3855, 23, 'admin/view/stylesheet/d_admin_style/themes/light/scss/third_party/_diff.scss', '2022-11-26 23:10:00'),
(3858, 25, 'system/library/paypal/paypal.php', '2022-11-27 10:49:48'),
(3859, 25, 'admin/controller/extension/module/paypal_smart_button.php', '2022-11-27 10:49:48'),
(3860, 25, 'admin/controller/extension/payment/paypal.php', '2022-11-27 10:49:48'),
(3861, 25, 'admin/model/extension/module/paypal_smart_button.php', '2022-11-27 10:49:48'),
(3862, 25, 'admin/model/extension/payment/paypal.php', '2022-11-27 10:49:48'),
(3863, 25, 'admin/view/image/payment/paypal.png', '2022-11-27 10:49:48'),
(3864, 25, 'catalog/controller/extension/module/paypal_smart_button.php', '2022-11-27 10:49:48'),
(3865, 25, 'catalog/controller/extension/payment/paypal.php', '2022-11-27 10:49:48'),
(3866, 25, 'catalog/model/extension/module/paypal_smart_button.php', '2022-11-27 10:49:48'),
(3867, 25, 'catalog/model/extension/payment/paypal.php', '2022-11-27 10:49:48'),
(3868, 25, 'admin/language/en-gb/extension/module/paypal_smart_button.php', '2022-11-27 10:49:48'),
(3869, 25, 'admin/language/en-gb/extension/payment/paypal.php', '2022-11-27 10:49:48'),
(3870, 25, 'admin/view/template/extension/module/paypal_smart_button.twig', '2022-11-27 10:49:48'),
(3871, 25, 'admin/view/template/extension/payment/paypal.twig', '2022-11-27 10:49:48'),
(3872, 25, 'catalog/language/en-gb/extension/module/paypal_smart_button.php', '2022-11-27 10:49:48'),
(3873, 25, 'catalog/language/en-gb/extension/payment/paypal.php', '2022-11-27 10:49:48'),
(3874, 25, 'catalog/view/theme/default/template/extension/module/paypal_smart_button.twig', '2022-11-27 10:49:48'),
(3875, 25, 'catalog/view/theme/default/template/extension/payment/paypal.twig', '2022-11-27 10:49:48'),
(3876, 25, 'catalog/view/theme/default/template/extension/module/paypal_smart_button/confirm.twig', '2022-11-27 10:49:48'),
(3877, 25, 'catalog/view/theme/default/template/extension/module/paypal_smart_button/payment_address.twig', '2022-11-27 10:49:48'),
(3878, 25, 'catalog/view/theme/default/template/extension/module/paypal_smart_button/shipping_address.twig', '2022-11-27 10:49:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_googleshopping_category`
--

CREATE TABLE `oc_googleshopping_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_googleshopping_product`
--

CREATE TABLE `oc_googleshopping_product` (
  `product_advertise_google_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `conversions` int(11) NOT NULL DEFAULT 0,
  `cost` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `conversion_value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int(11) DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_googleshopping_product_status`
--

CREATE TABLE `oc_googleshopping_product_status` (
  `product_id` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_googleshopping_product_target`
--

CREATE TABLE `oc_googleshopping_product_target` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_googleshopping_target`
--

CREATE TABLE `oc_googleshopping_target` (
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  `date_added` date DEFAULT NULL,
  `roas` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT 0,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(4, 2, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 2, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1),
(2, 'Tiếng Việt', 'vi-vn', 'vi_VN.UTF-8, vi_VN, vi-vn, vietnamese', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'account', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(67, 1, 'carousel.29', 'content_top', 3),
(66, 1, 'slideshow.27', 'content_top', 1),
(65, 1, 'featured.28', 'content_top', 2),
(72, 3, 'category', 'column_left', 1),
(73, 3, 'banner.30', 'column_left', 2),
(74, 6, 'd_social_login', 'content_top', 0),
(75, 2, 'paypal_smart_button', 'content_top', 0),
(76, 7, 'paypal_smart_button', 'content_top', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(44, 3, 0, 'product/category'),
(42, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(5, 5, 'Dynamic Admin Logo And Footer', 'dynamic_admin_logo_and_footer', 'Codely Infotech (contact@codelyinfotech.com)', '1.0', 'https://codelyinfotech.com/', '<modification>\r\n  	<name>Dynamic Admin Logo And Footer</name>\r\n	<id>Dynamic Admin Logo And Footer</id>\r\n	<code>dynamic_admin_logo_and_footer</code>\r\n	<version>1.0</version>\r\n	<author>Codely Infotech (contact@codelyinfotech.com)</author>\r\n	<link>https://codelyinfotech.com/</link>\r\n	<file path=\"admin/controller/setting/setting.php\">\r\n		<operation>\r\n			<search><![CDATA[if (isset($this->request->post[\'config_open\'])) {]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				if (isset($this->request->post[\'config_logo_image\'])) {\r\n					$data[\'config_logo_image\'] = $this->request->post[\'config_logo_image\'];\r\n				} else {\r\n					$data[\'config_logo_image\'] = $this->config->get(\'config_logo_image\');\r\n				}\r\n\r\n				if (isset($this->request->post[\'config_logo_image\']) && is_file(DIR_IMAGE . $this->request->post[\'config_logo_image\'])) {\r\n					$data[\'logo_thumb\'] = $this->model_tool_image->resize($this->request->post[\'config_logo_image\'], 100, 100);\r\n				} elseif ($this->config->get(\'config_logo_image\') && is_file(DIR_IMAGE . $this->config->get(\'config_logo_image\'))) {\r\n					$data[\'logo_thumb\'] = $this->model_tool_image->resize($this->config->get(\'config_logo_image\'), 100, 100);\r\n				} else {\r\n					$data[\'logo_thumb\'] = $this->model_tool_image->resize(\'no_image.png\', 100, 100);\r\n				}\r\n\r\n				$data[\'logo_placeholder\'] = $this->model_tool_image->resize(\'no_image.png\', 100, 100);\r\n				\r\n				if (isset($this->request->post[\'config_footer_text\'])) {\r\n					$data[\'config_footer_text\'] = $this->request->post[\'config_footer_text\'];\r\n				} else {\r\n					$data[\'config_footer_text\'] = $this->config->get(\'config_footer_text\');\r\n				}\r\n\r\n                if (isset($this->request->post[\'config_version_text\'])) {\r\n					$data[\'config_version_text\'] = $this->request->post[\'config_version_text\'];\r\n				} else {\r\n					$data[\'config_version_text\'] = $this->config->get(\'config_version_text\');\r\n				}\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/setting/setting.twig\">\r\n		<operation>\r\n			<search><![CDATA[<li><a href=\"#tab-server\" data-toggle=\"tab\">{{ tab_server }}</a></li>]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				<li><a href=\"#tab-admin-logo-footer\" data-toggle=\"tab\">{{ text_admin_logo }}</a></li>\r\n				]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[<div class=\"tab-pane\" id=\"tab-server\">]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				<div class=\"tab-pane\" id=\"tab-admin-logo-footer\">\r\n				<div class=\"form-group\">\r\n                <label class=\"col-sm-2 control-label\" for=\"logo-input-image\">{{ text_logo_img }}</label>\r\n                <div class=\"col-sm-10\">\r\n				<a href=\"\" id=\"logo-thumb-image\" data-toggle=\"image\" class=\"img-thumbnail\"><img src=\"{{ logo_thumb }}\" alt=\"\" title=\"\" data-placeholder=\"{{ logo_placeholder }}\" /></a>\r\n                  <input type=\"hidden\" name=\"config_logo_image\" value=\"{{ config_logo_image }}\" id=\"logo-input-image\" />\r\n                </div>\r\n              </div>\r\n				  <div class=\"form-group\">\r\n            <label class=\"col-sm-2 control-label\" for=\"input-footer-text\">{{ text_footer_text }}</label>\r\n            <div class=\"col-sm-10\">		\r\n			  <textarea name=\"config_footer_text\" rows=\"5\" placeholder=\"{{ text_footer_text }}\" class=\"form-control\">{{ config_footer_text }}</textarea>\r\n			</div>\r\n          </div>\r\n				<div class=\"form-group\">\r\n            		<label class=\"col-sm-2 control-label\" for=\"input-version-text\">{{ text_version_text }}</label>\r\n            		<div class=\"col-sm-10\">		\r\n			  			<textarea name=\"config_version_text\" rows=\"5\" placeholder=\"{{ text_version_text }}\" class=\"form-control\">{{ config_version_text }}</textarea>\r\n					</div>\r\n          		</div>\r\n			</div>\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/language/en-gb/setting/setting.php\">\r\n		<operation>\r\n			<search><![CDATA[$_[\'text_general\']]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				$_[\'text_logo_img\']                   = \'Logo Image\';\r\n				$_[\'text_footer_text\']                = \'Footer Text\';\r\n				$_[\'text_version_text\']                = \'Version Text\';\r\n				$_[\'text_admin_logo\']                = \'Admin Logo & Footer\';\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'direction\'] = $this->language->get(\'direction\');]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'config_logo_image\'] = $this->config->get(\'config_logo_image\');\r\n					$this->load->model(\'tool/image\');\r\n					\r\n					if (isset($this->request->post[\'config_logo_image\']) && is_file(DIR_IMAGE . $this->request->post[\'config_logo_image\'])) {\r\n						$data[\'logo_thumb\'] = $this->model_tool_image->resize($this->request->post[\'config_logo_image\'], 180, 35);\r\n					} elseif ($this->config->get(\'config_logo_image\') && is_file(DIR_IMAGE . $this->config->get(\'config_logo_image\'))) {\r\n						$data[\'logo_thumb\'] = $this->model_tool_image->resize($this->config->get(\'config_logo_image\'), 180, 35);\r\n					} else {\r\n						$data[\'logo_thumb\'] = \'view/image/logo.png\';\r\n					}\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/common/header.twig\">\r\n		<operation>\r\n			<search><![CDATA[<div id=\"header-logo\" class=\"navbar-header\"><a href=\"{{ home }}\" class=\"navbar-brand\"><img src=\"view/image/logo.png\" alt=\"{{ heading_title }}\" title=\"{{ heading_title }}\" /></a></div>]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n				<div id=\"header-logo\" class=\"navbar-header\"><a href=\"{{ home }}\" class=\"navbar-brand\"><img src=\"{{ logo_thumb }}\" alt=\"{{ heading_title }}\" title=\"{{ heading_title }}\" /></a></div>\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/common/footer.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->load->language(\'common/footer\');]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				if($this->config->get(\'config_footer_text\')){\r\n					$data[\'config_footer_text\'] = html_entity_decode($this->config->get(\'config_footer_text\'));\r\n				}else{\r\n					if ($this->user->isLogged() && isset($this->request->get[\'user_token\']) && ($this->request->get[\'user_token\'] == $this->session->data[\'user_token\'])) {\r\n						$data[\'config_footer_text\'] = sprintf($this->language->get(\'text_version\'), VERSION);\r\n					} else {\r\n						$data[\'config_footer_text\'] = \'\';\r\n					}\r\n				}\r\n                \r\n                if($this->config->get(\'config_version_text\')){\r\n					$data[\'config_version_text\'] = html_entity_decode($this->config->get(\'config_version_text\'));\r\n				}else{\r\n					if ($this->user->isLogged() && isset($this->request->get[\'user_token\']) && ($this->request->get[\'user_token\'] == $this->session->data[\'user_token\'])) {\r\n						$data[\'config_version_text\'] = sprintf($this->language->get(\'text_version\'), VERSION);\r\n					} else {\r\n						$data[\'config_version_text\'] = \'\';\r\n					}\r\n				}\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/common/footer.twig\">\r\n		<operation>\r\n			<search><![CDATA[<footer id=\"footer\">{{ text_footer }}<br/>{{ text_version }}</footer></div>]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n				  <footer id=\"footer\">{{ config_footer_text }}<br/>{{ config_version_text }}</footer>\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n \r\n</modification>', 1, '2022-11-21 16:51:02'),
(6, 6, 'Fix opencart 3 installer folder limitation', 'fix_oc3_installer', 'GeekoDev', '1.0', 'https://geekodev.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n  <id>Fix opencart 3 installer folder limitation</id>\n  <name>Fix opencart 3 installer folder limitation</name>\n  <code>fix_oc3_installer</code>\n  <version>1.0</version>\n  <author>GeekoDev</author>\n  <link><![CDATA[https://geekodev.com]]></link>\n\n  <file path=\"admin/controller/marketplace/install.php\">\n  \n    <operation>\n      <search position=\"replace\"><![CDATA[$safe = false;]]></search>\n      <add position=\"replace\"><![CDATA[$safe = true;]]></add>\n    </operation>\n    \n    <operation>\n      <search position=\"before\"><![CDATA[if (is_dir($file) && !is_dir($path)) {]]></search>\n      <add position=\"before\"><![CDATA[		\n        if ($path == \'\') {\n          $path = DIR_CATALOG . \'../\' . $destination;\n        }\n      ]]></add>\n    </operation>\n    \n  </file>\n  \n</modification>', 1, '2022-11-21 16:57:58'),
(20, 18, 'Nice Theme', 'NiceThemeBySergeTkach', 'Serge Tkach', '1.5.0 (for OpenCart 3.x)', 'https://sergetkach.com/', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n  <name>Nice Theme</name>\n  <code>NiceThemeBySergeTkach</code>\n  <version>1.5.0 (for OpenCart 3.x)</version>\n  <author>Serge Tkach</author>\n  <link>https://sergetkach.com/</link>\n\n\n\n  <!-- Language\n  ================================================================== -->\n\n  <!-- Header -->\n  <file path=\"catalog/controller/common/header.php\">\n    <operation>\n      <search><![CDATA[\n        $this->load->language(\'common/header\');\n      ]]></search>\n      <add position=\"after\"><![CDATA[		$this->load->language(\'extension/theme/nice\'); // Nice Theme]]></add>\n    </operation>\n    <operation>\n      <search><![CDATA[\n        $data[\'wishlist\']\n      ]]></search>\n      <add position=\"after\"><![CDATA[		$data[\'compare\'] = $this->url->link(\'product/compare\', \'\', true); // Nice Theme]]></add>\n    </operation>\n  </file>\n  \n  <!-- Footer -->\n  <file path=\"catalog/controller/common/footer.php\">\n    <operation>\n      <search><![CDATA[\n        $this->load->language(\'common/footer\');\n      ]]></search>\n      <add position=\"after\"><![CDATA[		$this->load->language(\'extension/theme/nice\'); // Nice Theme]]></add>\n    </operation>\n    <operation>\n      <search><![CDATA[\n        $data[\'powered\'] = sprintf($this->language->get(\'text_powered\'), $this->config->get(\'config_name\'), date(\'Y\', time()));\n      ]]></search>\n      <add position=\"replace\"><![CDATA[//$data[\'powered\'] = sprintf($this->language->get(\'text_powered\'), $this->config->get(\'config_name\'), date(\'Y\', time()));\n		$data[\'powered\'] = sprintf($this->language->get(\'nice_text_powered\'), $this->config->get(\'config_name\'), date(\'Y\', time())); // Nice Theme]]></add>\n    </operation>\n  </file>\n  \n  <!-- Product Page -->\n  <file path=\"catalog/controller/product/product.php\">\n    <operation>\n      <search><![CDATA[\n        $this->load->language(\'product/product\');\n      ]]></search>\n      <add position=\"after\"><![CDATA[		$this->load->language(\'extension/theme/nice\'); // Nice Theme]]></add>\n    </operation>\n  </file>\n  \n  <!-- Cart -->\n  <file path=\"catalog/controller/checkout/cart.php\">\n    <operation>\n      <search><![CDATA[\n        $this->load->language(\'checkout/cart\');\n      ]]></search>\n      <add position=\"after\"><![CDATA[		$this->load->language(\'extension/theme/nice\'); // Nice Theme]]></add>\n    </operation>\n  </file>\n  \n  <!-- Compare -->\n  <file path=\"catalog/controller/product/compare.php\">\n    <operation>\n      <search><![CDATA[\n        $this->load->language(\'product/compare\');\n      ]]></search>\n      <add position=\"after\"><![CDATA[		$this->load->language(\'extension/theme/nice\'); // Nice Theme]]></add>\n    </operation>\n  </file>\n  \n  <!-- Wishlist -->\n  <file path=\"catalog/controller/account/wishlist.php\">\n    <operation>\n      <search><![CDATA[\n        $this->load->language(\'account/wishlist\');\n      ]]></search>\n      <add position=\"after\"><![CDATA[		$this->load->language(\'extension/theme/nice\'); // Nice Theme]]></add>\n    </operation>\n  </file>  \n  \n  \n  \n  <!-- Modals\n  ================================================================== -->\n  <!-- Checkout Modal -->\n  <file path=\"catalog/controller/checkout/cart.php\">\n    <operation>\n			<search><![CDATA[\n				$json[\'total\'] = sprintf($this->language->get(\'text_items\'),\n			]]></search>\n			<add position=\"before\"><![CDATA[        // Nice Theme . Begin\n        $json[\'button_to_cart_link\'] = $this->url->link(\'checkout/cart\');\n\n        $json[\'nice_text_modal_add_to_cart_title\'] = $this->language->get(\'nice_text_modal_add_to_cart_title\');\n        $json[\'nice_text_modal_button_to_cart\'] = $this->language->get(\'nice_text_modal_button_to_cart\');\n        $json[\'nice_text_modal_button_to_continue\'] = $this->language->get(\'nice_text_modal_button_to_continue\');\n        // Nice Theme . End\n        ]]></add>\n		</operation>\n  </file>\n  \n  <!-- Compare Modal -->\n  <file path=\"catalog/controller/product/compare.php\">\n    <operation>\n      <search><![CDATA[\n        $json[\'total\'] = sprintf($this->language->get(\'text_compare\'), (isset($this->session->data[\'compare\']) ? count($this->session->data[\'compare\']) : 0));\n      ]]></search>\n      <add position=\"after\"><![CDATA[			\n			// Nice Theme . Begin\n			$json[\'nice_text_modal_compare_title\'] = $this->language->get(\'nice_text_modal_compare_title\');\n			$json[\'nice_text_modal_button_to_continue\'] = $this->language->get(\'nice_text_modal_button_to_continue\');\n			// Nice Theme . End]]></add>\n    </operation>\n  </file>\n  \n  <!-- Wishlist Modal -->\n  <file path=\"catalog/controller/account/wishlist.php\">\n    <!-- $this->customer->isLogged() -->\n    <operation>\n      <search><![CDATA[\n        $json[\'total\'] = sprintf($this->language->get(\'text_wishlist\'), $this->model_account_wishlist->getTotalWishlist());\n      ]]></search>\n      <add position=\"after\"><![CDATA[			\n			// Nice Theme . Begin\n			$json[\'is_logged\'] = 1;\n			$json[\'nice_text_modal_wishlist_title\'] = $this->language->get(\'nice_text_modal_wishlist_title\');\n			// Nice Theme . End]]></add>\n    </operation>\n    <!-- !$this->customer->isLogged() -->\n    <operation>\n      <search><![CDATA[\n        $json[\'total\'] = sprintf($this->language->get(\'text_wishlist\'), (isset($this->session->data[\'wishlist\']) ? count($this->session->data[\'wishlist\']) : 0));\n      ]]></search>\n      <add position=\"after\"><![CDATA[			\n			// Nice Theme . Begin\n			$json[\'is_logged\'] = 0;\n			$json[\'nice_text_modal_wishlist_title\'] = $this->language->get(\'nice_text_modal_wishlist_title\');\n			$json[\'nice_text_modal_button_to_create_account\'] = $this->language->get(\'nice_text_modal_button_to_create_account\');\n			$json[\'wishlist_create_account_link\'] = $this->url->link(\'account/register\', \'\', true);\n			// Nice Theme . End]]></add>\n    </operation>\n  </file>\n  \n  \n  <!-- Cart\n  ================================================================== -->\n  <!-- Header -->\n  <file path=\"catalog/controller/common/cart.php\">\n    <operation>\n      <search><![CDATA[\n        $this->load->language(\'common/cart\');\n      ]]></search>\n      <add position=\"after\"><![CDATA[		$this->load->language(\'extension/theme/nice\'); // Nice Theme]]></add>\n    </operation>\n    <operation>\n      <search><![CDATA[\n        $data[\'text_items\'] = sprintf($this->language->get(\'text_items\'), $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0), $this->currency->format($total, $this->session->data[\'currency\']));\n      ]]></search>\n      <add position=\"replace\"><![CDATA[//$data[\'text_items\'] = sprintf($this->language->get(\'text_items\'), $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0), $this->currency->format($total, $this->session->data[\'currency\']));\n		\n		$data[\'quantity\'] = $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0); // Nice Theme\n		$data[\'total\'] = $this->currency->format($total, $this->session->data[\'currency\']); // Nice Theme]]></add>\n    </operation>\n  </file>\n  \n  <!-- Checkout -->\n  <file path=\"catalog/controller/checkout/cart.php\">\n    <operation>\n      <search><![CDATA[\n        $json[\'total\'] = sprintf($this->language->get(\'text_items\'), $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0), $this->currency->format($total, $this->session->data[\'currency\']));\n      ]]></search>\n      <add position=\"replace\"><![CDATA[//$json[\'total\'] = sprintf($this->language->get(\'text_items\'), $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0), $this->currency->format($total, $this->session->data[\'currency\']));\n		\n				$json[\'quantity\'] = $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0); // Nice Theme\n				$json[\'total\'] = $this->currency->format($total, $this->session->data[\'currency\']); // Nice Theme]]></add>\n    </operation>\n  </file>\n  \n  \n  \n  \n  <!-- Search\n  ================================================================== -->\n  <file path=\"catalog/controller/common/search.php\">\n    <operation>\n      <search><![CDATA[\n        return $this->load->view(\'common/search\', $data);\n      ]]></search>\n      <add position=\"before\"><![CDATA[		// Nice Theme . Begin\n		$this->load->language(\'extension/theme/nice\');\n		\n		$this->load->model(\'catalog/category\');\n		\n		$data[\'categories\'] = array();\n		\n		$data[\'categories\'] = $this->cache->get(\'nice_search.\' . (int)$this->config->get(\'config_language_id\') . \'.\' . (int)$this->config->get(\'config_store_id\'));\n		\n		if ($data[\'categories\']) {\n			goto search_cached;\n		}\n		\n		$categories = $this->model_catalog_category->getCategories(0);\n		\n		foreach ($categories as $category) {\n			$children_data = array();\n\n			$children = $this->model_catalog_category->getCategories($category[\'category_id\']);\n			\n			foreach ($children as $child) {\n				$grandchildren_data = array();\n\n				$grandchildren = $this->model_catalog_category->getCategories($child[\'category_id\']);\n				\n				foreach ($grandchildren as $grandchild) {\n					$grandchildren_data[] = array(\n						\'name\'  => $grandchild[\'name\'],\n						\'category_id\' => $grandchild[\'category_id\'],\n					);\n				}\n				\n				$children_data[] = array(\n					\'name\'  => $child[\'name\'],\n					\'grandchildren\' => $grandchildren_data,\n					\'category_id\' => $child[\'category_id\'],\n				);\n			}\n		\n			$data[\'categories\'][] = array(\n				\'name\' => $category[\'name\'],\n				\'category_id\' => $category[\'category_id\'],\n				\'children\' => $children_data,\n			);\n		}\n		\n		$this->cache->set(\'nice_search.\' . (int)$this->config->get(\'config_language_id\') . \'.\' . (int)$this->config->get(\'config_store_id\'), $data[\'categories\']);\n		\n		search_cached:\n\n		$data[\'selected_category_id\'] = $this->request->get[\'category_id\'] ?? 0;\n		// Nice Theme . End\n]]></add>\n    </operation>\n  </file>\n  \n  \n  \n  <!-- Menu Top\n  ================================================================== -->\n  <!-- Header -->\n  <file path=\"catalog/controller/common/header.php\">\n    <operation>\n      <search><![CDATA[\n        $data[\'menu\'] = $this->load->controller(\'common/menu\');\n      ]]></search>\n      <add position=\"after\"><![CDATA[		$data[\'menu_top\'] = $this->load->controller(\'common/menu_top\'); // Nice Theme]]></add>\n    </operation>\n  </file>\n  \n  \n  \n  <!-- HMVC\n  ================================================================== -->\n  \n  <!-- Product Page -->\n  <file path=\"catalog/controller/product/product.php\">\n    <operation>\n      <search index=\"0\"><![CDATA[\n        $data[\'header\'] = $this->load->controller(\'common/header\');\n      ]]></search>\n      <add position=\"after\"><![CDATA[			\n			// Nice Theme . Begin\n			$data[\'block_image\'] = $this->load->controller(\'block/productpage_image\', $data);\n			$data[\'block_conversion\'] = $this->load->controller(\'block/productpage_conversion\', $data); // it contains options - A!!\n			$data[\'block_review_form\'] = $this->load->controller(\'block/productpage_review_form\', $data);\n			$data[\'block_review_form_modal\'] = $this->load->controller(\'block/productpage_review_form_modal\', $data);\n			$data[\'block_products_related\'] = $this->load->controller(\'block/productpage_products_related\', $data);\n			// Nice Theme . End]]></add>\n    </operation>\n  </file>\n  \n  \n  \n  \n  <!-- LAYOUT CHANGES\n  ================================================================== -->\n  <!-- Nice Slideshow -->\n<!--  <file path=\"catalog/controller/common/content_top.php\">\n    <operation>\n      <search><![CDATA[\n        $data[\'modules\'] = array();\n      ]]></search>\n      <add position=\"after\"><![CDATA[		\n		// Nice Theme . Begin\n		if ($this->config->get(\'theme_nice_home_slideshow_status\') && \'common/home\' == $route) {\n			$setting_info[\'slideshow_id\'] = $this->config->get(\'theme_nice_home_slideshow_id\');\n			$setting_info[\'width\'] = $this->config->get(\'theme_nice_home_slideshow_width\');\n			$setting_info[\'height\'] = $this->config->get(\'theme_nice_home_slideshow_height\');\n			\n			$setting_info[\'with_banners\'] = false;\n			\n			if ($this->config->get(\'theme_nice_home_banner_near_slideshow_status\')) {\n				$setting_info[\'with_banners\'] = true;\n				$setting_info[\'banners\'][1][\'image\'] = HTTPS_SERVER . \'image/\' . $this->config->get(\'theme_nice_home_banner_1\')[$this->config->get(\'config_language_id\')];\n				$setting_info[\'banners\'][1][\'link\'] = $this->config->get(\'theme_nice_home_banner_1_link\')[$this->config->get(\'config_language_id\')];\n				$setting_info[\'banners\'][2][\'image\'] = HTTPS_SERVER . \'image/\' . $this->config->get(\'theme_nice_home_banner_2\')[$this->config->get(\'config_language_id\')];\n				$setting_info[\'banners\'][2][\'link\'] = $this->config->get(\'theme_nice_home_banner_2_link\')[$this->config->get(\'config_language_id\')];\n			}\n			\n			$data[\'modules\'][] = $this->load->controller(\'extension/module/nice_slideshow\', $setting_info);\n		}\n		// Nice Theme . End]]></add>\n    </operation>\n  </file>-->\n  <file path=\"catalog/controller/common/home.php\">\n    <operation>\n      <search><![CDATA[\n        $data[\'column_left\']\n      ]]></search>\n      <add position=\"before\"><![CDATA[		$data[\'block_home_top\'] = $this->load->controller(\'common/block_home_top\'); // Nice Theme\n]]></add>\n    </operation>\n  </file>\n  \n  <!-- Product Page -->\n  <file path=\"catalog/controller/product/product.php\">\n    <operation>\n      <search index=\"0\"><![CDATA[\n        $data[\'column_left\'] = $this->load->controller(\'common/column_left\');\n      ]]></search>\n      <add position=\"replace\"><![CDATA[//$data[\'column_left\'] = $this->load->controller(\'common/column_left\');// Nice Theme]]></add>\n    </operation>\n    <operation>\n      <search index=\"0\"><![CDATA[\n        $data[\'column_right\'] = $this->load->controller(\'common/column_right\');\n      ]]></search>\n      <add position=\"replace\"><![CDATA[//$data[\'column_right\'] = $this->load->controller(\'common/column_right\');// Nice Theme]]></add>\n    </operation>\n  </file>\n  \n  \n  \n  <!-- MICRO CHANGES\n  ================================================================== -->\n  \n  <!-- Header -->\n  <file path=\"catalog/controller/common/header.php\">\n    <operation>\n      <search><![CDATA[\n        $data[\'name\'] = $this->config->get(\'config_name\');\n      ]]></search>\n      <add position=\"replace\"><![CDATA[//$data[\'name\'] = $this->config->get(\'config_name\');\n		$data[\'name\'] = html_entity_decode($this->config->get(\'config_name\'), ENT_QUOTES, \'UTF-8\'); // Nice Theme -- for text logo tags]]></add>\n    </operation>\n  </file>\n  \n</modification>\n', 1, '2022-11-26 10:39:12'),
(8, 8, 'Quick View', 'quickview-adw', 'AlexDW', '1.00', 'https://www.opencart.com/index.php?route=marketplace/extension&filter_member=AlexDW', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<name>Quick View</name>\r\n	<version>1.00</version>\r\n	<author>AlexDW</author>\r\n	<link><![CDATA[https://www.opencart.com/index.php?route=marketplace/extension&filter_member=AlexDW]]></link>\r\n	<code>quickview-adw</code>\r\n	<file path=\"admin/controller/catalog/category.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n=> $result[\'sort_order\'],\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n//quickview\r\n				\'qview\' => HTTP_CATALOG.\'index.php?route=product/category&path=\' . $result[\'category_id\'],\r\n//quickview end\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/catalog/category_list.twig\">\r\n		<operation>\r\n			<search><![CDATA[<a href=\"{{ category.edit }}\"]]></search>\r\n			<add position=\"replace\"><![CDATA[<!-- quickview --><a href=\"{{ category.qview }}\" target=\"_blank\" data-toggle=\"tooltip\" title=\"View\" class=\"btn btn-info\"><i class=\"fa fa-eye\"></i></a><!-- quickview end --> <a href=\"{{ category.edit }}\"]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/controller/catalog/product.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n=> $result[\'product_id\'],\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n//quickview\r\n				\'qview\' => HTTP_CATALOG.\'index.php?route=product/product&product_id=\' . $result[\'product_id\'],\r\n//quickview end\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/catalog/product_list.twig\">\r\n		<operation>\r\n			<search><![CDATA[<a href=\"{{ product.edit }}\"]]></search>\r\n			<add position=\"replace\"><![CDATA[<!-- quickview --><a href=\"{{ product.qview }}\" target=\"_blank\" data-toggle=\"tooltip\" title=\"View\" class=\"btn btn-info\"><i class=\"fa fa-eye\"></i></a><!-- quickview end --> <a href=\"{{ product.edit }}\"]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/controller/catalog/manufacturer.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n=> $result[\'sort_order\'],\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n//quickview\r\n				\'qview\' => HTTP_CATALOG.\'index.php?route=product/manufacturer/info&manufacturer_id=\' . $result[\'manufacturer_id\'],\r\n//quickview end\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/catalog/manufacturer_list.twig\">\r\n		<operation>\r\n			<search><![CDATA[<a href=\"{{ manufacturer.edit }}\"]]></search>\r\n			<add position=\"replace\"><![CDATA[<!-- quickview --><a href=\"{{ manufacturer.qview }}\" target=\"_blank\" data-toggle=\"tooltip\" title=\"View\" class=\"btn btn-info\"><i class=\"fa fa-eye\"></i></a><!-- quickview end --> <a href=\"{{ manufacturer.edit }}\"]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/controller/catalog/information.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n=> $result[\'sort_order\'],\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n//quickview\r\n				\'qview\' => HTTP_CATALOG.\'index.php?route=information/information&information_id=\' . $result[\'information_id\'],\r\n//quickview end\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/catalog/information_list.twig\">\r\n		<operation>\r\n			<search><![CDATA[<a href=\"{{ information.edit }}\"]]></search>\r\n			<add position=\"replace\"><![CDATA[<!-- quickview --><a href=\"{{ information.qview }}\" target=\"_blank\" data-toggle=\"tooltip\" title=\"View\" class=\"btn btn-info\"><i class=\"fa fa-eye\"></i></a><!-- quickview end --> <a href=\"{{ information.edit }}\"]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/model/catalog/review.php\">\r\n		<operation>\r\n			<search><![CDATA[\"SELECT r.review_id, pd.name]]></search>\r\n			<add position=\"replace\"><![CDATA[\"SELECT r.review_id, r.product_id, pd.name]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/catalog/review.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n=> $result[\'review_id\'],\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n//quickview\r\n				\'qview\' => !empty($result[\'product_id\']) ? HTTP_CATALOG.\'index.php?route=product/product&product_id=\' . $result[\'product_id\'] : !1,\r\n//quickview end\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/catalog/review_list.twig\">\r\n		<operation>\r\n			<search><![CDATA[<a href=\"{{ review.edit }}\"]]></search>\r\n			<add position=\"replace\"><![CDATA[<!-- quickview -->{% if review.qview %}<a href=\"{{ review.qview }}\" target=\"_blank\" data-toggle=\"tooltip\" title=\"View\" class=\"btn btn-info\"><i class=\"fa fa-eye\"></i></a>{% endif %} <!-- quickview end --><a href=\"{{ review.edit }}\"]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2022-11-22 15:41:54'),
(9, 9, 'Admin Language toggle', 'admin-lang-toggle-adw', 'AlexDW', '1.00', 'https://www.opencart.com/index.php?route=marketplace/extension&filter_member=AlexDW', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<name>Admin Language toggle</name>\r\n	<version>1.00</version>\r\n	<author>AlexDW</author>\r\n	<link>https://www.opencart.com/index.php?route=marketplace/extension&amp;filter_member=AlexDW</link>\r\n	<code>admin-lang-toggle-adw</code>\r\n	<file path=\"admin/controller/common/header.php\">\r\n		<operation>\r\n		<search><![CDATA[\r\n$data[\'logged\'] = true;\r\n			]]></search>\r\n			<add position=\"after\" ><![CDATA[\r\n//AdminLang\r\n			$data[\'user_token\'] = $this->session->data[\'user_token\'];\r\n			$this->load->model(\'localisation/language\');\r\n			$data[\'text_admlang\'] = $this->language->get(\'text_admlang\');\r\n			$data[\'text_admlang_warning\'] = $this->language->get(\'text_admlang_warning\');\r\n			$data[\'admlang_change\'] = $this->language->get(\'admlang_change\');\r\n			$data[\'admlang_cancel\'] = $this->language->get(\'admlang_cancel\');\r\n			$data[\'admlangs\'] = $this->model_localisation_language->getLanguages();\r\n			$data[\'admclang\'] = $this->config->get(\'config_admin_language\');\r\n//AdminLang\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/common/column_left.php\">\r\n		<operation>\r\n		<search><![CDATA[\r\npublic function index() {\r\n			]]></search>\r\n			<add position=\"before\" ><![CDATA[\r\n//AdminLang\r\n	public function adw_adminlang() {\r\n		if (isset($this->request->get[\'admlang\']) && isset($this->request->get[\'user_token\']) && isset($this->session->data[\'user_token\']) && ($this->request->get[\'user_token\'] == $this->session->data[\'user_token\'])) {\r\n\r\n		$json = array();\r\n		$this->load->language(\'setting/setting\');\r\n\r\n		if (!$this->user->hasPermission(\'modify\', \'setting/setting\')) {\r\n			$json[\'nop\'] = $this->language->get(\'error_permission\');\r\n		} else {\r\n			$admlang = $this->request->get[\'admlang\'];\r\n			$query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"language` WHERE code = \'\" . $this->db->escape($admlang) . \"\'\");\r\n			if (!empty($query->row)) {\r\n			$this->db->query(\"UPDATE `\" . DB_PREFIX . \"setting` SET `value`=\'\" . $this->db->escape($admlang) . \"\' WHERE `key` = \'config_admin_language\'\");\r\n			$this->config->set(\'config_admin_language\', $admlang);\r\n			$json[\'success\'] = $this->language->get(\'text_success\');\r\n			}\r\n		}\r\n		$this->response->addHeader(\'Content-Type: application/json\');\r\n		$this->response->setOutput(json_encode($json));\r\n		}\r\n	}\r\n//AdminLang\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/common/header.twig\">\r\n		<operation>\r\n		<search index=\"0\"><![CDATA[\r\n<ul class=\"nav navbar-nav navbar-right\">\r\n			]]></search>\r\n			<add position=\"after\" ><![CDATA[\r\n<!-- AdminLang -->\r\n<style type=\"text/css\">\r\n.admlang_act{display:block;padding:3px 20px;clear:both;font-weight:400;line-height:1.42857;color:#333;white-space:nowrap;outline:0;outline-offset:0;cursor:pointer}.admlang_header{color:#fff;background-color:#3ea9e3}.admlang>li>a{outline:0;outline-offset:0}\r\n</style>\r\n    <li class=\"dropdown\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\">\r\n		{% for admlang in admlangs %}\r\n			{% if admlang.code == admclang %}\r\n				<img src=\"language/{{ admlang.code }}/{{ admlang.code }}.png\" />\r\n			{% endif %}\r\n		{% endfor %}\r\n	</a>\r\n      <ul class=\"dropdown-menu admlang\">\r\n        <li class=\"dropdown-header admlang_header\">{{ text_admlang }}</li>\r\n		{% for admlang in admlangs %}\r\n			{% if admlang.code == admclang %}\r\n				<li class=\"admlang_act\"><img src=\"language/{{ admlang.code }}/{{ admlang.code }}.png\" /> {{ admlang.name }}</li>\r\n			{% else %}\r\n        <li><a href=\"#\" name=\"{{ admlang.code }}\"><img src=\"language/{{ admlang.code }}/{{ admlang.code }}.png\" /> {{ admlang.name }}</a></li>\r\n			{% endif %}\r\n		{% endfor %}\r\n      </ul>\r\n    </li>\r\n<script type=\"text/javascript\"><!--\r\n$(\'.admlang > li > a\').on(\'click\', function(e) {\r\n	e.preventDefault();\r\n	e.stopPropagation();\r\n	var admlang = this.name;\r\n	$(\'#admlang .eout\').remove();\r\nvar htm =\'\';\r\nhtm += \'<div id=\"admlang\" class=\"modal\" role=\"dialog\" aria-labelledby=\"dataConfirmLabel\" aria-hidden=\"true\">\';\r\nhtm += \'<div class=\"modal-dialog\"><div class=\"modal-content\">\';\r\nhtm += \'	<div class=\"modal-header\">{{ text_admlang }}\';\r\nhtm += \'		<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>\';\r\nhtm += \'	</div>\';\r\nhtm += \'	<div class=\"modal-body\">\';\r\nhtm += \'<div class=\"row\">\';\r\nhtm += \'<div class=\"col-sm-12\">\';\r\nhtm += \'<p>{{ text_admlang_warning }}</p>\';\r\nhtm += \'</div>\';\r\nhtm += \'</div>\';\r\nhtm += \'<div class=\"col-sm-12\" id=\"eout\"></div>\';\r\nhtm += \'<div class=\"row\" style=\"margin-top:10px;\">\';\r\nhtm += \'<div class=\"col-sm-12 ck_buttons\">\';\r\nhtm += \'	<div class=\"pull-left\"><button class=\"btn btn-primary\" id=\"adwchnLang\">{{ admlang_change }}</button></div><div class=\"pull-right\"><button class=\"btn btn-default\" data-dismiss=\"modal\" aria-hidden=\"true\">{{ admlang_cancel }}</button></div>\';\r\nhtm += \'</div>\';\r\nhtm += \'</div>\';\r\nhtm += \'	</div>\';\r\nhtm += \'</div></div>\';\r\nhtm += \'</div>\';\r\nif (!$(\'#admlang\').length > 0) {\r\n	$(\'body\').append(htm);\r\n	$(\'#admlang\').modal({show:true, keyboard:true, backdrop:true});\r\n\r\n	$(\'#adwchnLang\').on(\'click\', function(e) {\r\n		e.preventDefault();\r\n		$(\'#admlang .alert-danger\').remove();\r\n		$(\'#admlang .eout\').remove();\r\n        $.ajax({\r\n			url : \'index.php?route=common/column_left/adw_adminlang&user_token={{ user_token }}\' + \'&admlang=\' + encodeURIComponent(admlang),\r\n            dataType: \'json\',\r\n			beforeSend: function() {\r\n				$(\'#adwchnLang\').prop(\'disabled\', true);\r\n				$(\'#admlang .eout\').remove();\r\n			},\r\n			complete: function() {\r\n				$(\'#adwchnLang\').prop(\'disabled\', false);\r\n			},\r\n            success : function (json) {\r\n				$(\'#admlang .eout\').remove();\r\n				if (json[\'nop\']) {\r\n					$(\'#adwchnLang\').remove();\r\n					html = \'<div class=\"alert alert-danger\">\' + json[\'nop\'] + \'</div>\';\r\n					$(\'#eout\').append(html).hide().fadeIn(200);\r\n				}\r\n				if (json[\'success\']) {\r\n				$(\'#admlang\').remove();\r\n				document.location.reload();\r\n				}\r\n            },\r\n		error: function(xhr, ajaxOptions, thrownError) {\r\n			alert(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);\r\n		}\r\n        });\r\n	});\r\n}\r\n	$(\"#admlang\").on(\'hidden.bs.modal\', function(){\r\n		$(\'#admlang\').remove();\r\n	});\r\n});\r\n//--></script>\r\n<!-- AdminLang -->\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/language/ru*/common/header.php\">\r\n		<operation error=\"skip\">\r\n		<search><![CDATA[\r\n<?php\r\n			]]></search>\r\n			<add position=\"after\" ><![CDATA[\r\n//MaintenanceModeWarn\r\n$_[\'text_admlang\'] 			= \'Язык администратора\';\r\n$_[\'text_admlang_warning\']	= \'Обратите внимание! При смене языка текущая страница будет перезагружена, а все несохраненные данные утеряны\';\r\n$_[\'admlang_change\']		= \'Сменить язык\';\r\n$_[\'admlang_cancel\']		= \'Отмена\';\r\n//MaintenanceModeWarn\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/language/en*/common/header.php\">\r\n		<operation error=\"skip\">\r\n		<search><![CDATA[\r\n<?php\r\n			]]></search>\r\n			<add position=\"after\" ><![CDATA[\r\n//MaintenanceModeWarn\r\n$_[\'text_admlang\'] 			= \'Admin language\';\r\n$_[\'text_admlang_warning\']	= \'Please note!<br>If you change the language, the current page will be reloaded and all unsaved data will be lost!\';\r\n$_[\'admlang_change\']		= \'Change language\';\r\n$_[\'admlang_cancel\']		= \'Cancel\';\r\n//MaintenanceModeWarn\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2022-11-22 15:45:10'),
(10, 10, 'Fix Breadcrumbs 3x', 'adw-fix-breadcrumbs', 'AlexDW', '1.00', 'https://www.opencart.com/index.php?route=marketplace/extension&filter_member=AlexDW', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<name>Fix Breadcrumbs 3x</name>\r\n	<version>1.00</version>\r\n	<author>AlexDW</author>\r\n	<link><![CDATA[https://www.opencart.com/index.php?route=marketplace/extension&filter_member=AlexDW]]></link>\r\n	<code>adw-fix-breadcrumbs</code>\r\n	<file path=\"catalog/view/theme/*/template/{product,information}/*.twig\">		\r\n		<operation>\r\n		<search><![CDATA[\r\n{% for breadcrumb in breadcrumbs %}\r\n			]]></search>\r\n			<add position=\"before\" ><![CDATA[\r\n<!-- FixBreadcrumbs -->\r\n		{% set breadcrumbslast = breadcrumbs|last %}\r\n		{% set breadcrumbs = breadcrumbs|slice(0,-1) %}\r\n		{% set tt = breadcrumbs|length %}\r\n<!-- FixBreadcrumbs -->\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n		<search><![CDATA[\r\n<li><a href=\"{{ breadcrumb.href }}\">{{ breadcrumb.text }}</a></li>\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n<!-- FixBreadcrumbs -->\r\n		{% set tt = tt - 1 %}\r\n		{% if tt < 1 %}\r\n		<li>{{ breadcrumbslast.text }}</li>\r\n		{% endif %}\r\n<!-- FixBreadcrumbs -->\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2022-11-22 16:08:50'),
(11, 11, 'Admin Filter Resets', 'admin_filter_reset', 'Webiggle Team', '0.1.0', 'https://store.webiggle.com/', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n    <name>Admin Filter Resets</name>\r\n    <code>admin_filter_reset</code>\r\n    <version>0.1.0</version>\r\n    <author>Webiggle Team</author>\r\n    <link>https://store.webiggle.com/</link>\r\n    \r\n    <!-- Add Button -->\r\n    <file path=\"admin/view/template/{catalog,sale,customer,marketing}/{product_list,order_list,return_list,recurring_list,customer_list,marketing_list}.twig\">\r\n        <operation error=\"skip\">\r\n            <search><![CDATA[<button type=\"button\" id=\"button-filter\" class=\"btn btn-default\"><i class=\"fa fa-filter\"></i> {{ button_filter }}</button>]]></search>\r\n            <add position=\"after\"><![CDATA[<button type=\"button\" id=\"button-reset\" class=\"btn btn-danger\"><i class=\"fa fa-undo\"></i> {{ button_reset }}</button>]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <!-- Add Button logic -->\r\n    <file path=\"admin/view/template/common/footer.twig\">\r\n        <operation error=\"skip\">\r\n            <search><![CDATA[<footer id=\"footer\">]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            <script type=\"text/javascript\"><!--\r\n                $(\'#button-reset\').on(\'click\', function() {\r\n                    $(this).closest(\'[id^=filter]\').find(\"input\").val(\"\");\r\n                    $(this).closest(\'[id^=filter]\').find(\"select\").each(function(index, element) {\r\n                        $(element).find(\'option:eq(0)\').prop(\'selected\', true);\r\n                    });\r\n                });\r\n            //--></script>\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n</modification>\r\n              \r\n              \r\n', 1, '2022-11-22 16:33:33'),
(12, 12, 'show product id on admin', 'show_product_id', 'Moqi(www.mall178.com)', '1.0', 'http://www.mall178.com/category/opencart', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n    <name>show product id on admin</name>\r\n    <code>show_product_id</code>\r\n    <version>1.0</version>\r\n    <author>Moqi(www.mall178.com)</author>\r\n    <link>http://www.mall178.com/category/opencart</link>\r\n    <file path=\"admin/view/template/catalog/product_list.twig\">\r\n        <operation>\r\n            <search><![CDATA[\r\n<td class=\"text-center\">{{ column_image }}</td>\r\n]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n            <td class=\"text-center\">Prodcut_id</td>\r\n    ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n<td class=\"text-left\">{{ product.name }}</td>\r\n]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n          <td class=\"text-left\">{{ product.product_id }}</td>\r\n    ]]></add>\r\n        </operation>\r\n    </file>\r\n</modification>', 1, '2022-11-22 16:40:28'),
(13, 13, 'bnit.it-remove-admin-promotion', 'bnit.it-remove-admin-promotion', 'BNIT.it', '1.0', 'http://www.bnit.it/', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>bnit.it-remove-admin-promotion</name>\r\n	<code>bnit.it-remove-admin-promotion</code>\r\n	<version>1.0</version>\r\n	<vqmver>2.x</vqmver>\r\n	<author>BNIT.it</author>\r\n	<link>http://www.bnit.it/</link>\r\n\r\n	<file path=\"admin/controller/extension/extension/*.php\" error=\"skip\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'promotion\'] = $this->load->controller(\'extension/extension/promotion\');]]></search>\r\n			<add position=\"replace\"><![CDATA[$data[\'promotion\'] = \'\';]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/common/column_left.php\" error=\"skip\">\r\n		<operation>\r\n			<search><![CDATA[if ($this->user->hasPermission(\'access\', \'marketplace/marketplace\')) {]]></search>\r\n			<add position=\"replace\" offset=\"6\"><![CDATA[]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2022-11-22 16:42:15');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(14, 14, 'Filter Products By Category', 'owdAdminProductsByCategoryFilter', 'Oleg Kononchuk', '1.4', 'http://buymeacoff.ee/D0daCsFcQ', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n    <name>Filter Products By Category</name>\r\n    <code>owdAdminProductsByCategoryFilter</code>\r\n    <version>1.4</version>\r\n    <author>Oleg Kononchuk</author>\r\n    <link>http://buymeacoff.ee/D0daCsFcQ</link>\r\n\r\n    <file path=\"admin/controller/catalog/product.php\">\r\n        <operation>\r\n            <search><![CDATA[protected function getList() {]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                if (isset($this->request->get[\'filter_category\'])) {\r\n                    $filter_category = $this->request->get[\'filter_category\'];\r\n                } else {\r\n                    $filter_category = \'\';\r\n                }\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$url = \'\';]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n            if (isset($this->request->get[\'filter_category\'])) {\r\n				$url .= \'&filter_category=\' . $this->request->get[\'filter_category\'];\r\n			}\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$data[\'filter_model\'] = $filter_model;]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                $data[\'filter_category\'] = $filter_category;\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\'filter_model\'	  => $filter_model,]]></search>\r\n            <add position=\"before\"><![CDATA[\'filter_category\'	  => $filter_category,]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$data[\'sort\'] = $sort;]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                $data[\'text_category\'] = \"Category\";\r\n                $data[\'categories\'] = array();\r\n                $this->load->model(\'catalog/category\');\r\n                $cat_filter = array(\'sort\' => \'name\', \'order\'=> \'ASC\');\r\n                $results = $this->model_catalog_category->getCategories($cat_filter);\r\n                foreach ($results as $result) {\r\n                    $data[\'categories\'][] = array(\r\n                        \'category_id\' => $result[\'category_id\'],\r\n                        \'name\'        => $result[\'name\'],\r\n                    );\r\n                }\r\n                array_unshift($data[\'categories\'], array(\'category_id\' => \'no_cat\', \'name\' => \'Without category\'));\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"admin/model/catalog/product.php\">\r\n        <operation>\r\n            <search><![CDATA[$sql = \"SELECT * FROM \" . DB_PREFIX . \"product p LEFT JOIN \" . DB_PREFIX . \"product_description pd ON (p.product_id = pd.product_id) WHERE pd.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\";]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                /*** start owdAdminProductsByCategoryFilter ***/\r\n                $sql = \"SELECT * FROM \" . DB_PREFIX . \"product p LEFT JOIN \" . DB_PREFIX . \"product_description pd ON (p.product_id = pd.product_id)\";\r\n\r\n                $and_sql = \'\';\r\n                if ( isset($data[\'filter_category\']) && $data[\'filter_category\'] !== \'\' ) {\r\n                    if($data[\'filter_category\'] !== \'no_cat\'){\r\n                        $sql .= \" LEFT JOIN \" . DB_PREFIX . \"product_to_category p2c ON (p.product_id = p2c.product_id)\";\r\n                        $and_sql = \" AND p2c.category_id = \'\" . (int)$data[\'filter_category\'] . \"\'\";\r\n                    }else{\r\n                        $and_sql = \" AND p.product_id NOT IN (SELECT product_id  FROM \" . DB_PREFIX . \"product_to_category)\";\r\n                    }\r\n                }\r\n\r\n                $sql .= \" WHERE pd.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\" . $and_sql;\r\n                /*** end owdAdminProductsByCategoryFilter ***/\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$sql .= \" WHERE pd.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\";]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                if (isset($data[\'filter_category\']) && $data[\'filter_category\'] !== \'\' && $data[\'filter_category\'] !== \'no_cat\') {\r\n                    $sql .= \" LEFT JOIN \" . DB_PREFIX . \"product_to_category p2c ON (p.product_id = p2c.product_id)\";\r\n                }\r\n                ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$sql .= \" WHERE pd.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\";]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                if (isset($data[\'filter_category\']) && $data[\'filter_category\'] !== \'\') {\r\n                    if ($data[\'filter_category\'] == \'no_cat\') {\r\n                        $sql .= \" AND p.product_id NOT IN (SELECT product_id  FROM \" . DB_PREFIX . \"product_to_category)\";\r\n                    }else{\r\n                        $sql .= \" AND p2c.category_id = \'\" . $this->db->escape($data[\'filter_category\']) . \"\'\";\r\n                    }\r\n                }\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"admin/view/template/catalog/product_list.twig\">\r\n        <operation>\r\n            <search><![CDATA[<label class=\"control-label\" for=\"input-name\">{{ entry_name }}</label>]]></search>\r\n            <add position=\"before\" offset=\"1\">\r\n                <![CDATA[\r\n                <div class=\"form-group\">\r\n                    <label class=\"control-label\" for=\"filter-category\">{{ text_category }}&nbsp;<a href=\"https://www.buymeacoffee.com/D0daCsFcQ\" target=\"_blank\" data-toggle=\"tooltip\" title=\"Buy coffee for developer\"><i class=\"fa fa-coffee\"></i></a>&nbsp;<a href=\"https://www.paypal.com/donate?hosted_button_id=9UMF6UF387DLN\" target=\"_blank\" data-toggle=\"tooltip\" title=\"Make donation\"><i class=\"fa fa-paypal\"></i></a></label>\r\n                    <select name=\"filter_category\" id=\"filter-category\" class=\"form-control\">\r\n                    {% if categories %}\r\n                        <option value=\"\">All categories</option>\r\n                        {% for category in categories %}\r\n                        <option value=\"{{ category.category_id }}\"{% if category.category_id == filter_category %} selected=\"selected\"{% endif %}>{{ category.name }}</option>\r\n                        {% endfor %}\r\n                    {% endif %}\r\n                </select>\r\n                </div>\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[var filter_model = $(\'input[name=\\\'filter_model\\\']\').val();]]></search>\r\n            <add position=\"before\" offset=\"1\">\r\n                <![CDATA[\r\n                var filter_category = $(\'select[name=\\\'filter_category\\\']\').val();\r\n\r\n                if (filter_category !== \'\') {\r\n                    url += \'&filter_category=\' + encodeURIComponent(filter_category);\r\n                }\r\n                ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n\r\n</modification>', 1, '2022-11-22 16:47:34'),
(15, 15, 'Social Login', 'social_login-gifary', 'muhammadgifary@gmail.com', '1.1.0', 'https://gifary.github.io/portofolio/', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<modification>\n	<name>Social Login</name>\n	<version>1.1.0</version>\n	<code>social_login-gifary</code>\n	<author>muhammadgifary@gmail.com</author>\n	<link>https://gifary.github.io/portofolio/</link>\n\n	<file path=\"catalog/controller/account/login.php\">\n		<operation>\n			<search><![CDATA[\n        $data[\'header\'] = $this->load->controller(\'common/header\');\n      ]]></search>\n			<add position=\"after\"><![CDATA[\n              $data[\'social_login\'] = $this->load->controller(\'extension/module/social_login\');\n        ]]></add>\n		</operation>\n	</file>\n\n	<file path=\"catalog/view/theme/default/template/account/login.twig\">\n		<operation>\n			<search><![CDATA[\n			<h2>{{ text_returning_customer }}</h2>\n			]]></search>\n			<add position=\"after\"><![CDATA[\n			{% if social_login %}\n				{{ social_login }}\n			{% endif %}\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"catalog/controller/account/register.php\">\n		<operation>\n			<search><![CDATA[\n			$data[\'header\'] = $this->load->controller(\'common/header\');\n			]]></search>\n			<add position=\"after\"><![CDATA[\n			$data[\'social_login\'] = $this->load->controller(\'extension/module/social_login\');\n			]]></add>\n		</operation>\n\n	</file>\n	<file path=\"catalog/view/theme/default/template/account/register.twig\">\n		<operation>\n			<search><![CDATA[\n			<h1>{{ heading_title }}</h1>\n			]]></search>\n			<add position=\"after\"><![CDATA[\n			{% if social_login %}\n				{{ social_login }}\n			{% endif %}\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"catalog/controller/account/logout.php\">\n		<operation>\n			<search><![CDATA[\n			unset($this->session->data[\'vouchers\']);\n			]]></search>\n			<add position=\"after\"><![CDATA[\n			unset($this->session->data[\'facebook_token\']);\n			unset($this->session->data[\'google_token\']);\n			]]></add>\n		</operation>\n	</file>\n</modification>\n', 1, '2022-11-26 09:05:15'),
(26, 0, 'd_ajax_search', 'd_ajax_search', 'Dreamvention', '6.0.0', 'http://www.dreamvention.ee/', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>d_ajax_search</name>\n    <code>d_ajax_search</code>\n    <description>Live Ajax Search</description>\n    <version>6.0.0</version>\n    <author>Dreamvention</author>\n    <link>http://www.dreamvention.ee/</link>\n\n\n        <file path=\"catalog/controller/common/header.php\">\n            <operation error=\"skip\">\n                <search><![CDATA[public function index() {]]></search>\n                <add position=\"after\"><![CDATA[$data[\'d_ajax_search\'] = $this->load->controller(\'extension/module/d_ajax_search\');]]></add>\n            </operation>\n        </file>\n\n        <!-- <file path=\"catalog/view/theme/*/template/common/header.tpl\">\n            <operation error=\"skip\">\n                <search regex=\"true\" limit=\"1\"><![CDATA[($)]]></search>\n                <add><![CDATA[<?php echo $d_ajax_search; ?>]]></add>\n            </operation>\n        </file> -->\n\n\n        <!-- 3.x compatibility START -->\n        <!-- <file path=\"catalog/view/theme/*/template/common/header.twig\">\n            <operation error=\"skip\">\n                <search regex=\"true\" limit=\"1\"><![CDATA[($)]]></search>\n                <add><![CDATA[{{ d_ajax_search }}]]></add>\n            </operation>\n        </file> -->\n        <!-- 3.x compatibility END -->\n\n\n</modification>', 1, '2022-11-26 23:11:17'),
(17, 0, 'd_twig_manager', 'd_twig_manager', 'Dreamvention', '2.0.0', 'http://dreamvention.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>d_twig_manager</name>\n    <code>d_twig_manager</code>\n    <description>Adds support for twig templating engine</description>\n    <version>2.0.0</version>\n    <author>Dreamvention</author>\n    <link>http://dreamvention.com</link>\n    <file path=\"system/engine/loader.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$template = new Template($this->registry->get(\'config\')->get(\'template_engine\'));]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            $template = new Template($this->registry->get(\'config\')->get(\'template_engine\'), $this->registry);\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"system/library/template.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[public function __construct($adaptor) {]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            public function __construct($adaptor, $registry) {\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$this->adaptor = new $class();]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            $this->adaptor = new $class($registry);\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"system/library/template/twig.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[private $data = array();]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            private $registry = array();\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[public function __construct() {]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_twig_manager.xml\n            public function __construct($registry) {\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[\\Twig_Autoloader::register();]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            $this->registry = $registry;\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$this->twig = new \\Twig_Environment($loader, $config);]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            if (file_exists(DIR_SYSTEM . \'library/template/Twig/Extension/DTwigManager.php\')) {\n                $this->twig->addExtension(new \\Twig_Extension_DTwigManager($this->registry));\n            }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"catalog/controller/event/theme.php\">\n        <operation error=\"skip\" info=\"\">\n            <search><![CDATA[$twig = new \\Twig_Environment($loader, $config);]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_twig_manager.xml\n            if (file_exists(DIR_SYSTEM . \'library/template/Twig/Extension/DTwigManager.php\')) {\n                $twig->addExtension(new Twig_Extension_DTwigManager($this->registry));\n            }\n            ]]></add>\n        </operation>\n    </file>\n</modification>', 1, '2022-11-26 09:44:26'),
(18, 0, 'Ajax Quick Checkout', 'd_quickcheckout', 'Dreamvention', '6.4.1', 'https://dreamvention.zendesk.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>Ajax Quick Checkout</name>\n    <code>d_quickcheckout</code>\n    <version>6.4.1</version>\n    <author>Dreamvention</author>\n    <link>https://dreamvention.zendesk.com</link>\n\n    <file path=\"catalog/controller/checkout/checkout.php\">\n        <operation>\n            <search ><![CDATA[if (file_exists(DIR_TEMPLATE . $this->config->get(\'config_template\') . \'/template/checkout/checkout.tpl\')) {]]></search>\n            <add position=\"replace\" offset=\"4\"><![CDATA[\n            // a_vqmod_d_quickcheckout.xml\n            if($this->config->get(\'d_quickcheckout_status\')){\n                $template = \'d_quickcheckout\';\n            }else{\n                $template = \'checkout\';\n            }\n            \n            if (file_exists(DIR_TEMPLATE . $this->config->get(\'config_template\') . \'/template/checkout/\'.$template.\'.tpl\')) {\n                $template = $this->config->get(\'config_template\') . \'/template/checkout/\'.$template.\'.tpl\';\n            } else {\n                $template = \'default/template/checkout/\'.$template.\'.tpl\';\n            }\n            $this->response->setOutput($this->load->view($template, $data));]]>\n            </add>\n        </operation>\n    </file>\n    <file path=\"catalog/controller/checkout/checkout.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$this->response->setOutput($this->load->view(\'checkout/checkout\', $data));]]></search>\n            <add position=\"replace\"><![CDATA[\n            // a_vqmod_d_quickcheckout.xml\n            if($this->config->get(\'d_quickcheckout_status\')){\n                $template = \'d_quickcheckout\';\n            }else{\n                $template = \'checkout\';\n            }\n            \n            $this->response->setOutput($this->load->view(\'checkout/\'.$template, $data));]]></add>\n        </operation>\n    </file>\n    <file path=\"catalog/controller/checkout/checkout.php\">\n        <operation>\n            <search ><![CDATA[$data[\'header\'] = $this->load->controller(\'common/header\');]]></search>\n            <add position=\"before\"><![CDATA[\n        if($this->config->get(\'d_quickcheckout_status\')){\n            $data[\'d_quickcheckout\'] = $this->load->controller(\'extension/module/d_quickcheckout\');\n        }\n        ]]></add>\n        </operation>\n    </file>\n    <file path=\"system/library/cart/tax.php\">\n        <operation>\n            <search ><![CDATA[final class Tax {]]></search>\n            <add position=\"after\"><![CDATA[\n    // a_vqmod_d_quickcheckout.xml\n    public function clearRates(){\n        $this->tax_rates = array();\n    }\n            ]]></add>\n        </operation>\n    </file> \n    <file path=\"system/library/tax.php\">\n        <operation>\n            <search ><![CDATA[final class Tax {]]></search>\n            <add position=\"after\"><![CDATA[\n    // a_vqmod_d_quickcheckout.xml\n    public function clearRates(){\n        $this->tax_rates = array();\n    }\n            ]]></add>\n        </operation>\n    </file> \n</modification>', 1, '2022-11-26 09:44:37'),
(25, 23, 'd_opencart_patch', 'd_opencart_patch', 'Dreamvention', '3.0.9', 'http://dreamvention.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>d_opencart_patch</name>\n    <code>d_opencart_patch</code>\n    <description>Permission fixes in Opencart 3.x</description>\n    <version>3.0.9</version>\n    <author>Dreamvention</author>\n    <link>http://dreamvention.com</link>\n    <file path=\"admin/controller/user/user_permission.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$path[] = $file . \'/*\';]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_opencart_patch.xml 1\n            $files[] = $file;\n            ]]></add>\n        </operation>\n        <operation error=\"skip\">\n            <search><![CDATA[$permission = substr($controller, 0, strrpos($controller, \'.\'));]]></search>\n            <add position=\"replace\"><![CDATA[\n            //d_opencart_patch.xml 2\n            $permission = (strrpos($controller, \'.\') !== false) ? substr($controller, 0, strrpos($controller, \'.\')) : $controller;\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/extension/installer.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$modification_info = $this->model_setting_modification->getModificationByCode($code);]]></search>\n            <add position=\"after\"><![CDATA[\n            //d_opencart_patch.xml 1\n            if (strpos($code, \'d_\') === 0 && $modification_info) {\n                $this->model_setting_modification->deleteModification($modification_info[\'modification_id\']);\n                $modification_info = false; \n            }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/model/setting/extension.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_path` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\' ORDER BY `date_added` ASC\");]]></search>\n            <add position=\"replace\"><![CDATA[\n        //d_opencart_patch.xml 1\n        $query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_install` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\'\");\n\n        $extension = $query->row;\n\n        if(isset($extension[\'filename\']) && strpos($extension[\'filename\'], \'_compiled_\')){\n\n\n            $parts = explode(\'_compiled_\', $extension[\'filename\']);\n            $extension_name = $parts[0];\n            $query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_path` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\' AND path LIKE \'%\".$this->db->escape($extension_name).\"%\' ORDER BY `date_added` ASC\");\n        }else{\n            $query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_path` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\' ORDER BY `date_added` ASC\");\n        }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/model/setting/modification.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"modification` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\'\");]]></search>\n            <add position=\"replace\"><![CDATA[\n        //d_opencart_patch.xml 1\n        $query = $this->db->query(\"SELECT * FROM `\" . DB_PREFIX . \"extension_install` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\'\");\n\n        $extension = $query->row;\n\n        if(isset($extension[\'filename\']) && strpos($extension[\'filename\'], \'_compiled_\') !== false){\n\n\n            $parts = explode(\'_compiled_\', $extension[\'filename\']);\n            $extension_name = $parts[0];\n            $this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"modification` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\' AND `name` LIKE \'%\".$this->db->escape($extension_name).\"%\'\");\n\n        }else{\n            $this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"modification` WHERE `extension_install_id` = \'\" . (int)$extension_install_id . \"\'\");\n        }\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/marketplace/install.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$this->model_setting_extension->deleteExtensionInstall($extension_install_id);]]></search>\n            <add position=\"replace\"><![CDATA[//d_opencart_patch.xml 1 moved down]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/marketplace/install.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[$this->model_setting_modification->deleteModificationsByExtensionInstallId($extension_install_id);]]></search>\n            <add position=\"after\"><![CDATA[\n                //d_opencart_patch.xml 2\n                $this->model_setting_extension->deleteExtensionInstall($extension_install_id);]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/controller/common/filemanager.php\">\n        <operation>\n            <search><![CDATA[$files = glob($directory . \'/\' . $filter_name . \'*.{jpg,jpeg,png,gif,JPG,JPEG,PNG,GIF}\', GLOB_BRACE);]]></search>\n            <add position=\"replace\"><![CDATA[$files = glob($directory . \'/\' . $filter_name . \'*.{jpg,jpeg,svg,png,gif,JPG,JPEG,PNG,GIF}\', GLOB_BRACE);]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[\'jpg\',]]></search>\n            <add position=\"after\"><![CDATA[\'svg\',]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[\'image/jpeg\',]]></search>\n            <add position=\"after\"><![CDATA[\'image/svg+xml\',]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/view/template/common/filemanager.twig\">\n        <operation>\n            <search><![CDATA[<img src=\"{{ image.thumb }}\" alt=\"{{ image.name }}\" title=\"{{ image.name }}\" />]]></search>\n            <add position=\"replace\"><![CDATA[<img src=\"{{ image.thumb }}\" alt=\"{{ image.name }}\" title=\"{{ image.name }}\" width=\"100\" height=\"100\" />]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/view/template/common/header.twig\">\n        <operation>\n            <search><![CDATA[</header>]]></search>\n            <add position=\"before\"><![CDATA[\n                <style type=\"text/css\">\n                    a.img-thumbnail{\n                        min-width:100px;\n                    }\n                </style>\n                ]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/model/tool/image.php\">\n        <operation>\n            <search><![CDATA[public function resize($filename, $width, $height) {]]></search>\n            <add position=\"after\"><![CDATA[\n                if (isset($this->request->server[\'HTTPS\']) && (($this->request->server[\'HTTPS\'] == \'on\') || ($this->request->server[\'HTTPS\'] == \'1\'))) {\n                    $server = HTTPS_CATALOG;\n                } else {\n                    $server = HTTP_CATALOG;\n                }\n\n                if ($filename) {\n                    $image_info = @getimagesize(DIR_IMAGE . $filename);\n                    if (!$image_info) {\n                        return $server . \'image/\' . $filename;\n                    }\n                } else {\n                    $filename = \"no_image.png\";\n                }\n                ]]></add>\n        </operation>\n    </file>\n    <file path=\"catalog/model/tool/image.php\">\n        <operation>\n            <search><![CDATA[public function resize($filename, $width, $height) {]]></search>\n            <add position=\"after\"><![CDATA[\n                if (isset($this->request->server[\'HTTPS\']) && (($this->request->server[\'HTTPS\'] == \'on\') || ($this->request->server[\'HTTPS\'] == \'1\'))) {\n                    $server = HTTPS_SERVER;\n                } else {\n                    $server = HTTP_SERVER;\n                }\n\n                if ($filename) {\n                    $image_info = @getimagesize(DIR_IMAGE . $filename);\n                    if (!$image_info) {\n                        return $server . \'image/\' . $filename;\n                    }\n                } else {\n                    $filename = \"no_image.png\";\n                }\n                ]]></add>\n        </operation>\n    </file>\n    <file path=\"system/config/catalog.php\">\n        <operation>\n            <search index=\"1\" ><![CDATA[\'view/*/before\' => array(]]></search>\n            <add position=\"replace\" offset=\"2\"><![CDATA[\n                   //    \"view/*/before\" => array(\n                   //        1000  => \'event/debug/before\'\n                   //    ),\n                ]]></add>\n        </operation>\n        <operation>\n            <search ><![CDATA[\'controller/*/after\'  => array(]]></search>\n            <add position=\"replace\" offset=\"2\"><![CDATA[\n                    //	\'controller/*/after\'  => array(\n                    //\'event/debug/after\'\n                    //)\n                ]]></add>\n        </operation>\n    </file>\n\n</modification>', 1, '2022-11-26 23:10:00'),
(21, 0, 'd_social_login', 'd_social_login', 'Dreamvention', '6.0.0', 'http://www.dreamvention.ee/', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>d_social_login</name>\n    <code>d_social_login</code>\n    <description>Social Login</description>\n    <version>6.0.0</version>\n    <author>Dreamvention</author>\n    <link>http://www.dreamvention.ee/</link>\n        <file path=\"admin/model/customer/customer.php\">\n            <operation error=\"skip\">\n                <search><![CDATA[$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"customer WHERE customer_id = \'\" . (int)$customer_id . \"\'\");]]></search>\n                <add position=\"after\"><![CDATA[$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"customer_authentication WHERE customer_id = \'\" . (int)$customer_id . \"\'\");]]></add>\n            </operation>\n        </file>\n        <file path=\"admin/model/sale/customer.php\">\n            <operation error=\"skip\">\n                <search><![CDATA[$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"customer WHERE customer_id = \'\" . (int)$customer_id . \"\'\");]]></search>\n                <add position=\"after\"><![CDATA[$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"customer_authentication WHERE customer_id = \'\" . (int)$customer_id . \"\'\");]]></add>\n            </operation>\n        </file>\n        <file path=\"catalog/controller/common/header.php\">\n            <operation error=\"skip\">\n                <search><![CDATA[public function index() {]]></search>\n                <add position=\"after\"><![CDATA[$data[\'d_social_login\'] = $this->load->controller(\'extension/module/d_social_login/header\');]]></add>\n            </operation>\n        </file>\n        <file path=\"catalog/controller/startup/seo_url.php\">\n            <operation error=\"skip\">\n                <search><![CDATA[public function index() {]]></search>\n                <add position=\"after\"><![CDATA[if(isset($this->session->data[\'d_social_login\'])){ unset($this->session->data[\'d_social_login\']); return new Action(\'extension/module/d_social_login/login\'); }]]></add>\n            </operation>\n        </file>\n</modification>\n', 1, '2022-11-26 15:18:53');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(22, 20, 'Order Search Extended', 'order_search_extended_vh', 'vh', '01.03.01', '', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<code>order_search_extended_vh</code>\r\n	<name>Order Search Extended</name>\r\n	<version>01.03.01</version>\r\n    <author>vh</author>\r\n\r\n  <file path=\"admin/controller/sale/order.php\">\r\n    <operation>\r\n      <search><![CDATA[$filter_customer = $this->request->get[\'filter_customer\'];]]></search>\r\n      <add position=\"before\" offset=\"1\"><![CDATA[\r\n		if (isset($this->request->get[\'filter_customer_vh\'])) {\r\n			$filter_customer_vh = $this->request->get[\'filter_customer_vh\'];\r\n		} else {\r\n			$filter_customer_vh = null;\r\n		}\r\n		if (isset($this->request->get[\'filter_payment_method_vh\'])) {\r\n			$filter_payment_method_vh = $this->request->get[\'filter_payment_method_vh\'];\r\n		} else {\r\n			$filter_payment_method_vh = null;\r\n		}\r\n		if (isset($this->request->get[\'filter_product\'])) {\r\n			$filter_product = $this->request->get[\'filter_product\'];\r\n		} else {\r\n			$filter_product = null;\r\n		}\r\n\r\n]]></add>\r\n    </operation>\r\n    <operation>\r\n      <search><![CDATA[$url .= \'&filter_customer=\' . urlencode(html_entity_decode($this->request->get[\'filter_customer\'], ENT_QUOTES, \'UTF-8\'));]]></search>\r\n      <add position=\"before\" offset=\"1\"><![CDATA[\r\n		if (isset($this->request->get[\'filter_customer_vh\'])) {\r\n			$url .= \'&filter_customer_vh=\' . urlencode(html_entity_decode($this->request->get[\'filter_customer_vh\'], ENT_QUOTES, \'UTF-8\'));\r\n		}\r\n		if (isset($this->request->get[\'filter_payment_method_vh\'])) {\r\n			$url .= \'&filter_payment_method_vh=\' . urlencode(html_entity_decode($this->request->get[\'filter_payment_method_vh\'], ENT_QUOTES, \'UTF-8\'));\r\n		}\r\n		if (isset($this->request->get[\'filter_product\'])) {\r\n			$url .= \'&filter_product=\' . urlencode(html_entity_decode($this->request->get[\'filter_product\'], ENT_QUOTES, \'UTF-8\'));\r\n		}\r\n]]></add>\r\n    </operation>\r\n\r\n    <operation>\r\n      <search><![CDATA[=> $filter_customer,]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n		\'filter_customer_vh\'     => $filter_customer_vh,\r\n		\'filter_payment_method_vh\' => $filter_payment_method_vh,\r\n		\'filter_product\'         => $filter_product,\r\n]]></add>\r\n    </operation>\r\n\r\n    <operation>\r\n      <search><![CDATA[$data[\'filter_customer\'] = $filter_customer;]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n		$data[\'filter_customer_vh\'] = $filter_customer_vh;\r\n		$data[\'filter_payment_method_vh\'] = $filter_payment_method_vh;\r\n		$data[\'filter_product\'] = $filter_product;\r\n\r\n		// Payment Methods\r\n		$data[\'payment_methods\'] = array();\r\n		$this->load->model(\'setting/extension\');\r\n		$extensions = $this->model_setting_extension->getInstalled(\'payment\');\r\n		foreach ($extensions as $key => $code) {\r\n            $this->load->language(\'extension/payment/\' . $code);\r\n			$data[\'payment_methods\'][$code] = $this->language->get(\'heading_title\');\r\n		}\r\n]]></add>\r\n    </operation>\r\n\r\n    <operation error=\"skip\">\r\n      <search><![CDATA[$data[\'entry_customer\'] = $this->language->get(\'entry_customer\');]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n		$data[\'entry_customer_search_extended\'] = $this->language->get(\'entry_customer_search_extended\');\r\n		$data[\'entry_payment_method_extended\'] = $this->language->get(\'entry_payment_method_extended\');\r\n		$data[\'entry_product_search_extended\'] = $this->language->get(\'entry_product_search_extended\');\r\n]]></add>\r\n    </operation>\r\n	\r\n    <operation>\r\n      <search><![CDATA[$order_total = $this->model_sale_order->getTotalOrders($filter_data);]]></search>\r\n      <add position=\"replace\"><![CDATA[$order_total = $this->model_sale_order->getTotalOrdersBySearchExtended($filter_data);]]></add>\r\n    </operation>	\r\n	\r\n    <operation>\r\n      <search><![CDATA[$results = $this->model_sale_order->getOrders($filter_data);]]></search>\r\n      <add position=\"replace\"><![CDATA[$results = $this->model_sale_order->getOrdersBySearchExtended($filter_data);]]></add>\r\n    </operation>	\r\n  </file>\r\n\r\n  <file path=\"admin/language/en/sale/order.php|admin/language/en-gb/sale/order.php\">\r\n    <operation error=\"skip\">\r\n      <search><![CDATA[$_[\'entry_customer\']]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n$_[\'entry_customer_search_extended\']            = \'Customer (names, phone, address, ect)\';\r\n$_[\'entry_payment_method_extended\']             = \'Payment method\';\r\n$_[\'entry_product_search_extended\']             = \'Product (Id, Name, Model, SKU)\';\r\n]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n  <file path=\"admin/language/ru/sale/order.php|admin/language/ru-ru/sale/order.php\">\r\n    <operation error=\"skip\">\r\n      <search><![CDATA[$_[\'entry_customer\']]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n$_[\'entry_customer_search_extended\']            = \'Покупатель (имя, телефон, адрес, и тд.)\';\r\n$_[\'entry_payment_method_extended\']             = \'Метод оплаты\';\r\n$_[\'entry_product_search_extended\']             = \'Товар (Id, Имя, Модель, Артикул)\';\r\n]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n  <file path=\"admin/language/uk/sale/order.php|admin/language/uk-ua/sale/order.php\">\r\n    <operation error=\"skip\">\r\n      <search><![CDATA[$_[\'entry_customer\']]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n$_[\'entry_customer_search_extended\']            = \'Покупець (імя, телефон, адреса, та ін.)\';\r\n$_[\'entry_payment_method_extended\']             = \'Метод оплати\';\r\n$_[\'entry_product_search_extended\']             = \'Товар (Id, Імя, Модель, Артикул)\';\r\n]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n  <file path=\"admin/model/sale/order.php\">\r\n    <operation>\r\n      <search><![CDATA[o.date_modified FROM `\" . DB_PREFIX . \"order` o\"]]></search>\r\n      <add position=\"replace\"><![CDATA[o.date_modified FROM `\" . DB_PREFIX . \"order` o\" . (empty($data[\'filter_product\']) ? \"\" : \" join (select _op.order_id, count(*) from \" . DB_PREFIX . \"product _p join \" . DB_PREFIX . \"order_product _op on _p.product_id = _op.product_id join \" . DB_PREFIX . \"product_description _pd on _pd.product_id = _p.product_id where concat(_p.product_id, \'|\', _pd.name, \'|\', _p.model, \'|\', _p.sku) LIKE \'%\" . $this->db->escape($data[\'filter_product\']) . \"%\' group by _op.order_id) op on op.order_id = o.order_id\")]]></add>\r\n    </operation>\r\n\r\n    <operation>\r\n      <search><![CDATA[public function getTotalOrders($data = array()) {]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n	public function getOrdersBySearchExtended($data = array()) {\r\n		if ((!isset($data[\'filter_customer_vh\']) || empty($data[\'filter_customer_vh\']))\r\n		  && (!isset($data[\'filter_payment_method_vh\']) || empty($data[\'filter_payment_method_vh\']))\r\n		  && (!isset($data[\'filter_product\']) || empty($data[\'filter_product\']))\r\n		)\r\n		{\r\n			return $this->getOrders($data);\r\n		}\r\n		\r\n		$sql = \"\r\n			SELECT o.order_id,\r\n				CONCAT(o.firstname, \' \', o.lastname) AS customer,\r\n				(\r\n					SELECT os.name \r\n					FROM \" . DB_PREFIX . \"order_status os \r\n					WHERE os.order_status_id = o.order_status_id \r\n						AND os.language_id = \'\" . (int)$this->config->get(\'config_language_id\') . \"\'\r\n				) AS order_status, \r\n				o.shipping_code, \r\n				o.total, \r\n				o.currency_code, \r\n				o.currency_value, \r\n				o.date_added, \r\n				o.date_modified \r\n			FROM `\" . DB_PREFIX . \"order` o\r\n			\" . (empty($data[\'filter_product\']) ? \"\" : \"\r\n			join (\r\n				select _op.order_id,\r\n					concat(\r\n						GROUP_CONCAT(DISTINCT _p.product_id separator \'|\'), \'|\',\r\n						GROUP_CONCAT(DISTINCT _pd.name separator \'|\'), \'|\', \r\n						GROUP_CONCAT(DISTINCT _p.model separator \'|\'), \'|\',\r\n						GROUP_CONCAT(DISTINCT _p.sku separator \'|\')\r\n					) as product_search_full_text\r\n				from \" . DB_PREFIX . \"product _p \r\n				join \" . DB_PREFIX . \"order_product _op on _p.product_id = _op.product_id \r\n				join \" . DB_PREFIX . \"product_description _pd on _pd.product_id = _p.product_id \r\n				group by _op.order_id\r\n			) op_full on op_full.order_id = o.order_id\r\n			\") . \"\r\n			\" . (empty($data[\'filter_customer_vh\']) ? \"\" : \"\r\n			join (\r\n				select _o.order_id,\r\n					concat(\r\n						_o.customer_group_id,\r\n						\'|\', GROUP_CONCAT(DISTINCT _cgd.name separator \'|\'),\r\n						\'|\', _o.firstname, \' \', _o.lastname,\r\n						\'|\', _o.email,\r\n						\'|\', _o.telephone,\r\n						\'|\', _o.fax,\r\n						\'|\', _o.payment_firstname,\r\n						\'|\', _o.payment_lastname,\r\n						\'|\', _o.payment_address_1,\r\n						\'|\', _o.payment_address_2,\r\n						\'|\', _o.payment_city,\r\n						\'|\', _o.payment_postcode,\r\n						\'|\', _o.payment_country,\r\n						\'|\', _o.payment_zone,\r\n						\'|\', _o.payment_custom_field,\r\n						\'|\', _o.shipping_firstname,\r\n						\'|\', _o.shipping_lastname,\r\n						\'|\', _o.shipping_address_1,\r\n						\'|\', _o.shipping_address_2,\r\n						\'|\', _o.shipping_city,\r\n						\'|\', _o.shipping_postcode,\r\n						\'|\', _o.shipping_country,\r\n						\'|\', _o.shipping_zone,\r\n						\'|\', _o.shipping_custom_field\r\n					) order_search_full_text\r\n				from \" . DB_PREFIX . \"order _o\r\n				join \" . DB_PREFIX . \"customer_group_description _cgd on _cgd.customer_group_id = _o.customer_group_id\r\n				group by _o.order_id		\r\n			) o_full on o_full.order_id = o.order_id\r\n			\") . \"\r\n		\";\r\n\r\n		if (isset($data[\'filter_order_status\']) && !empty($data[\'filter_order_status\'])) {\r\n			$implode = array();\r\n\r\n			$order_statuses = explode(\',\', $data[\'filter_order_status\']);\r\n\r\n			foreach ($order_statuses as $order_status_id) {\r\n				$implode[] = \"o.order_status_id = \'\" . (int)$order_status_id . \"\'\";\r\n			}\r\n\r\n			if ($implode) {\r\n				$sql .= \" WHERE (\" . implode(\" OR \", $implode) . \")\";\r\n			}\r\n			else {\r\n				$sql .= \" WHERE (1 = 1)\";\r\n			}\r\n		} else {\r\n			$sql .= \" WHERE o.order_status_id > \'0\'\";\r\n		}\r\n\r\n		if (!empty($data[\'filter_order_id\'])) {\r\n			$sql .= \" AND o.order_id = \'\" . (int)$data[\'filter_order_id\'] . \"\'\";\r\n		}\r\n\r\n		if (!empty($data[\'filter_product\'])) {\r\n			$sql .= \" AND op_full.product_search_full_text LIKE \'%\" . $this->db->escape($data[\'filter_product\']) . \"%\'\";\r\n		}\r\n\r\n		if (!empty($data[\'filter_customer_vh\'])) {\r\n			$sql .= \" AND o_full.order_search_full_text LIKE \'%\" . $this->db->escape($data[\'filter_customer_vh\']) . \"%\'\";\r\n		}\r\n\r\n		if (!empty($data[\'filter_date_added\'])) {\r\n			$sql .= \" AND DATE(o.date_added) = DATE(\'\" . $this->db->escape($data[\'filter_date_added\']) . \"\')\";\r\n		}\r\n\r\n		if (!empty($data[\'filter_date_modified\'])) {\r\n			$sql .= \" AND DATE(o.date_modified) = DATE(\'\" . $this->db->escape($data[\'filter_date_modified\']) . \"\')\";\r\n		}\r\n\r\n		if (!empty($data[\'filter_total\'])) {\r\n			$sql .= \" AND o.total = \'\" . (float)$data[\'filter_total\'] . \"\'\";\r\n		}\r\n\r\n		if (!empty($data[\'filter_payment_method_vh\'])) {\r\n			$sql .= \" AND o.payment_code = \'\" . $this->db->escape($data[\'filter_payment_method_vh\']) . \"\'\";\r\n		}\r\n\r\n		$sort_data = array(\r\n			\'o.order_id\',\r\n			\'customer\',\r\n			\'order_status\',\r\n			\'o.date_added\',\r\n			\'o.date_modified\',\r\n			\'o.total\'\r\n		);\r\n\r\n		if (isset($data[\'sort\']) && in_array($data[\'sort\'], $sort_data)) {\r\n			$sql .= \" ORDER BY \" . $data[\'sort\'];\r\n		} else {\r\n			$sql .= \" ORDER BY o.order_id\";\r\n		}\r\n\r\n		if (isset($data[\'order\']) && ($data[\'order\'] == \'DESC\')) {\r\n			$sql .= \" DESC\";\r\n		} else {\r\n			$sql .= \" ASC\";\r\n		}		\r\n\r\n		if (isset($data[\'start\']) || isset($data[\'limit\'])) {\r\n			if ($data[\'start\'] < 0) {\r\n				$data[\'start\'] = 0;\r\n			}\r\n\r\n			if ($data[\'limit\'] < 1) {\r\n				$data[\'limit\'] = 20;\r\n			}\r\n\r\n			$sql .= \" LIMIT \" . (int)$data[\'start\'] . \",\" . (int)$data[\'limit\'];\r\n		}\r\n\r\n		$query = $this->db->query($sql);\r\n\r\n		return $query->rows;\r\n	}\r\n	\r\n	public function getTotalOrdersBySearchExtended($data = array()) {\r\n		if ((!isset($data[\'filter_customer_vh\']) || empty($data[\'filter_customer_vh\']))\r\n		  && (!isset($data[\'filter_payment_method_vh\']) || empty($data[\'filter_payment_method_vh\']))\r\n		  && (!isset($data[\'filter_product\']) || empty($data[\'filter_product\']))\r\n		)\r\n		{\r\n			return $this->getTotalOrders($data);\r\n		}\r\n\r\n		$sql = \"\r\n			SELECT COUNT(*) AS total \r\n			FROM `\" . DB_PREFIX . \"order` o\r\n			\" . (empty($data[\'filter_product\']) ? \"\" : \"\r\n			join (\r\n				select _op.order_id,\r\n					concat(\r\n						GROUP_CONCAT(DISTINCT _p.product_id separator \'|\'), \'|\',\r\n						GROUP_CONCAT(DISTINCT _pd.name separator \'|\'), \'|\', \r\n						GROUP_CONCAT(DISTINCT _p.model separator \'|\'), \'|\',\r\n						GROUP_CONCAT(DISTINCT _p.sku separator \'|\')\r\n					) as product_search_full_text\r\n				from \" . DB_PREFIX . \"product _p \r\n				join \" . DB_PREFIX . \"order_product _op on _p.product_id = _op.product_id \r\n				join \" . DB_PREFIX . \"product_description _pd on _pd.product_id = _p.product_id \r\n				group by _op.order_id\r\n			) op_full on op_full.order_id = o.order_id\r\n			\") . \"\r\n			\" . (empty($data[\'filter_customer_vh\']) ? \"\" : \"\r\n			join (\r\n				select _o.order_id,\r\n					concat(\r\n						_o.customer_group_id,\r\n						\'|\', GROUP_CONCAT(DISTINCT _cgd.name separator \'|\'),\r\n						\'|\', _o.firstname, \' \', _o.lastname,\r\n						\'|\', _o.email,\r\n						\'|\', _o.telephone,\r\n						\'|\', _o.fax,\r\n						\'|\', _o.payment_firstname,\r\n						\'|\', _o.payment_lastname,\r\n						\'|\', _o.payment_address_1,\r\n						\'|\', _o.payment_address_2,\r\n						\'|\', _o.payment_city,\r\n						\'|\', _o.payment_postcode,\r\n						\'|\', _o.payment_country,\r\n						\'|\', _o.payment_zone,\r\n						\'|\', _o.payment_custom_field,\r\n						\'|\', _o.shipping_firstname,\r\n						\'|\', _o.shipping_lastname,\r\n						\'|\', _o.shipping_address_1,\r\n						\'|\', _o.shipping_address_2,\r\n						\'|\', _o.shipping_city,\r\n						\'|\', _o.shipping_postcode,\r\n						\'|\', _o.shipping_country,\r\n						\'|\', _o.shipping_zone,\r\n						\'|\', _o.shipping_custom_field\r\n					) order_search_full_text\r\n				from \" . DB_PREFIX . \"order _o\r\n				join \" . DB_PREFIX . \"customer_group_description _cgd on _cgd.customer_group_id = _o.customer_group_id\r\n				group by _o.order_id		\r\n			) o_full on o_full.order_id = o.order_id\r\n			\") . \"\r\n		\";\r\n\r\n		if (isset($data[\'filter_order_status\']) && !empty($data[\'filter_order_status\'])) {\r\n			$implode = array();\r\n\r\n			$order_statuses = explode(\',\', $data[\'filter_order_status\']);\r\n\r\n			foreach ($order_statuses as $order_status_id) {\r\n				$implode[] = \"o.order_status_id = \'\" . (int)$order_status_id . \"\'\";\r\n			}\r\n\r\n			if ($implode) {\r\n				$sql .= \" WHERE (\" . implode(\" OR \", $implode) . \")\";\r\n			}\r\n			else{\r\n				$sql .= \" WHERE (1 = 1)\";\r\n			}\r\n		} else {\r\n			$sql .= \" WHERE o.order_status_id > \'0\'\";\r\n		}\r\n\r\n		if (!empty($data[\'filter_order_id\'])) {\r\n			$sql .= \" AND o.order_id = \'\" . (int)$data[\'filter_order_id\'] . \"\'\";\r\n		}\r\n\r\n		if (!empty($data[\'filter_product\'])) {\r\n			$sql .= \" AND op_full.product_search_full_text LIKE \'%\" . $this->db->escape($data[\'filter_product\']) . \"%\'\";\r\n		}\r\n\r\n		if (!empty($data[\'filter_customer_vh\'])) {\r\n			$sql .= \" AND o_full.order_search_full_text LIKE \'%\" . $this->db->escape($data[\'filter_customer_vh\']) . \"%\'\";\r\n		}\r\n\r\n		if (!empty($data[\'filter_date_added\'])) {\r\n			$sql .= \" AND DATE(o.date_added) = DATE(\'\" . $this->db->escape($data[\'filter_date_added\']) . \"\')\";\r\n		}\r\n\r\n		if (!empty($data[\'filter_date_modified\'])) {\r\n			$sql .= \" AND DATE(o.date_modified) = DATE(\'\" . $this->db->escape($data[\'filter_date_modified\']) . \"\')\";\r\n		}\r\n\r\n		if (!empty($data[\'filter_total\'])) {\r\n			$sql .= \" AND o.total = \'\" . (float)$data[\'filter_total\'] . \"\'\";\r\n		}\r\n\r\n		if (!empty($data[\'filter_payment_method_vh\'])) {\r\n			$sql .= \" AND o.payment_code = \'\" . $this->db->escape($data[\'filter_payment_method_vh\']) . \"\'\";\r\n		}\r\n\r\n		$query = $this->db->query($sql);\r\n\r\n		return $query->row[\'total\'];\r\n	}\r\n	  ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n  <file path=\"admin/view/template/sale/order_list.twig\">\r\n    <operation>\r\n      <search><![CDATA[<label class=\"control-label\" for=\"input-customer\">{{ entry_customer }}</label>]]></search>\r\n      <add position=\"before\" offset=\"1\"><![CDATA[\r\n              <div class=\"form-group\">\r\n                <label class=\"control-label\" for=\"input-filter_customer-vh\">{{ entry_customer_search_extended }}</label>\r\n                <input type=\"text\" name=\"filter_customer_vh\" value=\"{{ filter_customer_vh }}\" placeholder=\"{{ entry_customer_search_extended }}\" id=\"input-filter_customer-vh\" class=\"form-control\" />\r\n              </div>\r\n              <div class=\"form-group\">\r\n                <label class=\"control-label\" for=\"input-filter-payment-method-vh\">{{ entry_payment_method_extended }}</label>\r\n                <select name=\"filter_payment_method_vh\" id=\"input-filter-payment-method-vh\" class=\"form-control\">\r\n                  <option value=\"\"></option>\r\n                  {%for key,value in payment_methods %}\r\n					{% if key == filter_payment_method_vh %}\r\n						<option value=\"{{ key }}\" selected=\"selected\">{{ value }}</option>\r\n					{% else %}\r\n						<option value=\"{{ key }}\">{{ value }}</option>\r\n					{% endif %}\r\n                  {% endfor %}\r\n                </select>\r\n              </div>\r\n              <div class=\"form-group\">\r\n                <label class=\"control-label\" for=\"input-filter-product\">{{ entry_product_search_extended }}</label>\r\n                <input type=\"text\" name=\"filter_product\" value=\"{{ filter_product }}\" placeholder=\"{{ entry_product_search_extended }}\" id=\"input-filter-product\" class=\"form-control\" />\r\n              </div>\r\n]]></add>\r\n    </operation>\r\n	\r\n    <!--operation>\r\n      <search><![CDATA[<label class=\"control-label\" for=\"input-customer\">{{ entry_customer }}</label>]]></search>\r\n      <add position=\"replace\"><![CDATA[<label class=\"control-label\" for=\"input-customer\">{{ entry_customer_search_extended }}</label>]]></add>\r\n    </operation-->\r\n	\r\n    <operation>\r\n      <search><![CDATA[var filter_customer = $(\'input[name=\\\'filter_customer\\\']\').val();]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n	var filter_customer_vh = $(\'input[name=\\\'filter_customer_vh\\\']\').val();\r\n	if (filter_customer_vh) {\r\n		url += \'&filter_customer_vh=\' + encodeURIComponent(filter_customer_vh);\r\n	}\r\n	\r\n	var filter_payment_method_vh = $(\'select[name=\\\'filter_payment_method_vh\\\']\').val();\r\n	if (filter_payment_method_vh != \'\') {\r\n		url += \'&filter_payment_method_vh=\' + encodeURIComponent(filter_payment_method_vh);\r\n	}\r\n\r\n	var filter_product = $(\'input[name=\\\'filter_product\\\']\').val();\r\n	if (filter_product) {\r\n		url += \'&filter_product=\' + encodeURIComponent(filter_product);\r\n	}	\r\n]]></add>\r\n    </operation>\r\n\r\n    <operation>\r\n      <search><![CDATA[$(\'input[name=\\\'filter_customer\\\']\').autocomplete({]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n$(\'input[name=\\\'filter_product\\\']\').autocomplete({\r\n	\'source\': function(request, response) {\r\n		$.ajax({\r\n			url: \'index.php?route=catalog/product/autocomplete&user_token={{ user_token }}&filter_name=\' +  encodeURIComponent(request),\r\n			dataType: \'json\',\r\n			success: function(json) {\r\n				response($.map(json, function(item) {\r\n					return {\r\n						label: item[\'name\'],\r\n						value: item[\'product_id\']\r\n					}\r\n				}));\r\n			}\r\n		});\r\n	},\r\n	\'select\': function(item) {\r\n		$(\'input[name=\\\'filter_product\\\']\').val(item[\'label\']);\r\n	}\r\n});\r\n]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n</modification>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 1, '2022-11-26 15:47:19'),
(23, 21, 'Go To Store From Admin Panel', 'go_to_store_from_admin_panel', '<font color=\"#16a085\"><b>NNGO Software</font>', '1.4', 'https://www.nngostudio.com', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<modification>\n  <name>Go To Store From Admin Panel</name>\n  <code>go_to_store_from_admin_panel</code>\n  <version>1.4</version>\n  <author><![CDATA[<font color=\"#16a085\"><b>NNGO Software</font>]]></author>\n  <link>https://www.nngostudio.com</link>\n  <file path=\"admin/view/template/common/header.twig\">\n    <operation>\n      <search index=\"0\"><![CDATA[<ul class=\"nav navbar-nav navbar-right\">]]></search>\n      <add position=\"after\"><![CDATA[<style>.go-home{position:absolute;background-color:#45aaf2;}.go-home:hover>a>i{color:#111111;}.go-home>a{width:20px;}.go-home>a>i{color:#ffffff;margin-left:-7px;font-size:1.2em;}</style><li class=\"go-home\" title=\"{{ go_home_tooltip}}\"><a href=\"../\" target=\"_blank\"><i class=\"fa fa-home\"></i></a></li>]]></add>\n    </operation>\n  </file>\n  <file path=\"admin/language/en*/common/header.php\">\n    <operation error=\"skip\">\n      <search><![CDATA[<?php]]></search>\n      <add position=\"after\"><![CDATA[$_[\'go_home_tooltip\'] 		= \'Go To Store\';]]></add>\n    </operation>\n  </file>\n</modification>', 1, '2022-11-26 15:52:10'),
(24, 22, 'Product Quick View - Themability', 'themability_quick_view', 'Themability', '1.0', 'https://themability.com/', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>Product Quick View - Themability</name>\r\n	<code>themability_quick_view</code>\r\n	<version>1.0</version>\r\n	<author>Themability</author>\r\n	<link>https://themability.com/</link>\r\n 	<file path=\"catalog/view/theme/default/template/common/header.twig\">\r\n		<operation error=\"abort\">\r\n		<search><![CDATA[<script src=\"catalog/view/javascript/bootstrap/js/bootstrap.min.js\" type=\"text/javascript\"></script>]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<script src=\"catalog/view/javascript/themability-quick-view/jquery-ui.js\" type=\"text/javascript\"></script>\r\n<script src=\"catalog/view/javascript/themability-quick-view/themability-quick-view.js\" type=\"text/javascript\"></script>\r\n<link href=\"catalog/view/javascript/themability-quick-view/jquery-ui.css\" rel=\"stylesheet\">\r\n<link href=\"catalog/view/javascript/themability-quick-view/themability-quick-view.css\" rel=\"stylesheet\">\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2022-11-26 23:05:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Home Page', 'carousel', '{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),
(28, 'Home Page', 'featured', '{\"name\":\"Home Page\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(32, 'Homepage', 'responsive_slideshow', '{\"name\":\"Homepage\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"350\",\"effect\":\"cube\",\"duration\":\"20\",\"duration1\":\"100\",\"delay\":\"20\",\"delay1\":\"100\",\"autoplay\":\"1\",\"playpause\":\"1\",\"stoponhover\":\"0\",\"loop\":\"0\",\"caption\":\"1\",\"controls\":\"1\",\"controlsthumb\":\"1\",\"status\":\"1\"}'),
(33, 'Homepage', 'responsive_slideshow', '{\"name\":\"Homepage\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"350\",\"effect\":\"cube\",\"duration\":\"20\",\"duration1\":\"100\",\"delay\":\"20\",\"delay1\":\"100\",\"autoplay\":\"1\",\"playpause\":\"1\",\"stoponhover\":\"1\",\"loop\":\"0\",\"caption\":\"0\",\"controls\":\"1\",\"controlsthumb\":\"1\",\"status\":\"1\"}'),
(34, 'Homepage', 'slideshow', '{\"name\":\"Homepage\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"350\",\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_nice_slideshow`
--

CREATE TABLE `oc_nice_slideshow` (
  `slideshow_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_nice_slideshow_image`
--

CREATE TABLE `oc_nice_slideshow_image` (
  `slideshow_image_id` int(11) NOT NULL,
  `slideshow_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT 0,
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT 1.00000000,
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2022-00', 0, 'Your Store', 'http://localhost/shop_project1/', 0, 1, '', '', 'test@gmail.com', '', '', '[]', '', '', '', '', '', '', '', 'United Kingdom', 222, 'Lancashire', 3563, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Cash On Delivery', 'cod', '', '', '', '', '', '', '', 'United Kingdom', 222, 'Lancashire', 3563, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '130.0000', 0, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'vi,en;q=0.9,ja;q=0.8', '2022-11-26 09:44:46', '2022-11-26 09:44:46'),
(2, 0, 'INV-2022-00', 0, 'Your Store', 'http://localhost/shop_project1/', 0, 1, '', '', 'test@gmail.com', '', '', '[]', '', '', '', '', '', '', '', 'United Kingdom', 222, 'Lancashire', 3563, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Cash On Delivery', 'cod', '', '', '', '', '', '', '', 'United Kingdom', 222, 'Lancashire', 3563, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '130.0000', 0, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'vi,en;q=0.9,ja;q=0.8', '2022-11-26 09:48:10', '2022-11-26 09:48:10'),
(3, 0, 'INV-2022-00', 0, 'Your Store', 'http://localhost/shop_project1/', 0, 1, '', '', 'test@gmail.com', '', '', '[]', '', '', '', '', '', '', '', 'United Kingdom', 222, 'Lancashire', 3563, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Cash On Delivery', 'cod', '', '', '', '', '', '', '', 'United Kingdom', 222, 'Lancashire', 3563, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '130.0000', 0, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'vi,en;q=0.9,ja;q=0.8', '2022-11-26 09:49:01', '2022-11-26 09:49:01'),
(4, 0, 'INV-2022-00', 0, 'Your Store', 'http://localhost/shop_project1/', 0, 1, '', '', 'test@gmail.com', '', '', '[]', '', '', '', '', '', '', '', 'United Kingdom', 222, 'Lancashire', 3563, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Cash On Delivery', 'cod', '', '', '', '', '', '', '', 'United Kingdom', 222, 'Lancashire', 3563, '{firstname} {lastname}\n{company}\n{address_1}\n{address_2}\n{city} {postcode}\n{zone}\n{country}', '[]', 'Flat Shipping Rate', 'flat.flat', '', '130.0000', 0, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'vi,en;q=0.9,ja;q=0.8', '2022-11-26 09:50:30', '2022-11-26 09:50:30'),
(5, 0, 'INV-2022-00', 0, 'Your Store', 'http://localhost/shop_project1/', 0, 1, 're', 'rew', 'test@gmail.com', '76575', '', '[]', 're', 'rew', 'rrew', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Friesland', 2331, '', '[]', 'Cash On Delivery', 'cod', 're', 'rew', 'rrew', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Friesland', 2331, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '105.0000', 1, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'vi,en;q=0.9,ja;q=0.8', '2022-11-26 09:56:09', '2022-11-26 09:56:09'),
(6, 0, 'INV-2022-00', 0, 'Your Store', 'http://localhost/shop_project1/', 0, 1, 'ff', 'ff', 'test@gmail.com', '76575', '', '[]', 'ff', 'ff', '', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Friesland', 2331, '', '[]', 'Cash On Delivery', 'cod', 'ff', 'ff', '', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Friesland', 2331, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '106.0000', 1, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'vi,en;q=0.9,ja;q=0.8', '2022-11-26 09:56:51', '2022-11-26 09:56:51'),
(7, 0, 'INV-2022-00', 0, 'Your Store', 'http://localhost/shop_project1/', 0, 1, '', '', 'test@gmail.com', '', '', '[]', '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', 'Cash On Delivery', 'cod', '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '105.0000', 0, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'vi,en;q=0.9,ja;q=0.8', '2022-11-26 09:56:59', '2022-11-26 09:56:59'),
(8, 0, 'INV-2022-00', 0, 'Your Store', 'http://localhost/shop_project1/', 0, 1, 'aaaa', 'bbbbb', 'test@gmail.com', '76575', '', '[]', 'aaaa', 'bbbbb', '', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Flevoland', 2330, '', '[]', 'Cash On Delivery', 'cod', 'aaaa', 'bbbbb', '', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Flevoland', 2330, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '85.0000', 1, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'vi,en;q=0.9,ja;q=0.8', '2022-11-26 09:58:34', '2022-11-26 09:58:35'),
(9, 0, 'INV-2022-00', 0, 'Your Store', 'http://localhost/shop_project1/', 0, 1, 'test', 'tss', 'test@gmail.com', '76575', '', '[]', 'test', 'tss', '', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Flevoland', 2330, '', '[]', 'Cash On Delivery', 'cod', 'test', 'tss', '', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Flevoland', 2330, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '106.0000', 1, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'vi,en;q=0.9,ja;q=0.8', '2022-11-26 10:09:32', '2022-11-26 10:09:33'),
(10, 0, 'INV-2022-00', 0, 'Your Store', 'http://localhost/shop_project1/', 0, 1, 'aaaa', 'bbbbb', 'test@gmail.com', '76575', '', '[]', 'aaaa', 'bbbbb', '', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Flevoland', 2330, '', '[]', 'Cash On Delivery', 'cod', 'aaaa', 'bbbbb', '', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Flevoland', 2330, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '106.0000', 1, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'vi,en;q=0.9,ja;q=0.8', '2022-11-26 10:13:17', '2022-11-26 10:13:18'),
(11, 0, 'INV-2022-00', 0, 'Your Store', 'http://localhost/shop_project1/', 0, 1, 'aaaa', 'bbbbb', 'test@gmail.com', '76575', '', '[]', 'aaaa', 'bbbbb', '', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Friesland', 2331, '', '[]', 'Cash On Delivery', 'cod', 'aaaa', 'bbbbb', '', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Friesland', 2331, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '106.0000', 1, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'vi,en;q=0.9,ja;q=0.8', '2022-11-26 10:15:35', '2022-11-26 10:15:36'),
(12, 0, 'INV-2022-00', 0, 'Your Store', 'http://localhost/shop_project1/', 0, 1, 'aaaa', 'bbbbb', 'test@gmail.com', '76575', '', '[]', 'aaaa', 'bbbbb', '', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Flevoland', 2330, '', '[]', 'Cash On Delivery', 'cod', 'aaaa', 'bbbbb', '', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Flevoland', 2330, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '106.0000', 1, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'vi,en;q=0.9,ja;q=0.8', '2022-11-26 10:17:26', '2022-11-26 10:17:27'),
(13, 0, 'INV-2022-00', 0, 'Your Store', 'http://localhost/shop_project1/', 1, 1, 'viet', 'kd', 'kviet91.cdp@gmail.com', '', '', 'null', 'aaaa', 'bbbbb', 'bhhh', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Friesland', 2331, '', '[]', 'Cash On Delivery', 'cod', 'aaaa', 'bbbbb', 'bhhh', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Friesland', 2331, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '85.0000', 1, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'vi,en;q=0.9,ja;q=0.8', '2022-11-26 15:56:03', '2022-11-26 15:56:06'),
(14, 0, 'INV-2022-00', 0, 'Your Store', 'http://localhost/shop_project1/', 0, 1, 'aaaa', 'bbbbb', 'test@gmail.com', '76575', '', '[]', 'aaaa', 'bbbbb', '', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Groningen', 2333, '', '[]', 'Cash On Delivery', 'cod', 'aaaa', 'bbbbb', '', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Groningen', 2333, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '105.0000', 1, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'vi,en;q=0.9,ja;q=0.8', '2022-11-27 10:17:14', '2022-11-27 10:17:14'),
(15, 0, 'INV-2022-00', 0, 'Your Store', 'http://localhost/shop_project1/', 0, 1, 'aaaa', 'bbbbb', 'test@gmail.com', '76575', '', '[]', 'aaaa', 'bbbbb', '', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Flevoland', 2330, '', '[]', 'PayPal Express Checkout', 'pp_express', 'aaaa', 'bbbbb', '', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Flevoland', 2330, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '165.0000', 1, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'vi,en;q=0.9,ja;q=0.8', '2022-11-27 16:16:59', '2022-11-27 16:18:04'),
(16, 0, 'INV-2022-00', 0, 'Your Store', 'http://localhost/shop_project1/', 0, 1, 'aaaa', 'bbbbb', 'test@gmail.com', '76575', '', '[]', 'aaaa', 'bbbbb', '', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Gelderland', 2332, '', '[]', 'PayPal', 'pp_standard', 'aaaa', 'bbbbb', '', 'Ds. Israëlstraat 1', '', 'Bemmel', '6681 ZD', 'Netherlands', 150, 'Gelderland', 2332, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '85.0000', 0, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'vi,en;q=0.9,ja;q=0.8', '2022-11-27 16:20:53', '2022-11-27 16:20:53'),
(17, 0, 'INV-2022-00', 0, 'Your Store', 'http://localhost/shop_project1/', 0, 1, '', '', 'test@gmail.com', '', '', '[]', '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', 'PayPal', 'pp_standard', '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', 'Free Shipping', 'free.free', '', '100.0000', 0, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'vi,en;q=0.9,ja;q=0.8', '2022-11-27 16:35:02', '2022-11-27 16:35:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 5, 1, 0, '', '2022-11-26 09:56:02'),
(2, 5, 1, 0, '', '2022-11-26 09:56:09'),
(3, 6, 1, 0, '', '2022-11-26 09:56:46'),
(4, 6, 1, 0, '', '2022-11-26 09:56:51'),
(5, 8, 1, 0, '', '2022-11-26 09:58:14'),
(6, 8, 1, 0, '', '2022-11-26 09:58:35'),
(7, 9, 1, 0, '', '2022-11-26 10:05:52'),
(8, 9, 1, 0, '', '2022-11-26 10:09:33'),
(9, 10, 1, 0, '', '2022-11-26 10:13:07'),
(10, 10, 1, 0, '', '2022-11-26 10:13:18'),
(11, 11, 1, 0, '', '2022-11-26 10:15:15'),
(12, 11, 1, 0, '', '2022-11-26 10:15:36'),
(13, 12, 1, 0, '', '2022-11-26 10:16:09'),
(14, 12, 1, 0, '', '2022-11-26 10:17:27'),
(15, 13, 1, 0, '', '2022-11-26 15:56:06'),
(16, 13, 1, 0, '', '2022-11-26 15:56:06'),
(17, 14, 1, 0, '', '2022-11-27 10:17:05'),
(18, 14, 1, 0, '', '2022-11-27 10:17:14'),
(19, 15, 1, 0, '', '2022-11-27 16:18:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(22, 8, 106, 226, 15, 'Select', 'Red', 'select'),
(65, 13, 305, 226, 15, 'Select', 'Red', 'select'),
(209, 15, 501, 226, 16, 'Select', 'Blue', 'select'),
(233, 16, 525, 226, 16, 'Select', 'Blue', 'select'),
(300, 17, 592, 225, 0, 'Delivery Date', '2011-04-22', 'date');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '22.0000', 0),
(2, 2, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '22.0000', 0),
(3, 3, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '22.0000', 0),
(4, 4, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '22.0000', 0),
(54, 5, 41, 'iMac', 'Product 14', 1, '100.0000', '100.0000', '0.0000', 0),
(80, 6, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(84, 7, 28, 'HTC Touch HD', 'Product 1', 1, '100.0000', '100.0000', '0.0000', 400),
(106, 8, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(150, 9, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(184, 10, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(224, 11, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(246, 12, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(305, 13, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(331, 14, 48, 'iPod Classic', 'product 20', 1, '100.0000', '100.0000', '0.0000', 0),
(501, 15, 30, 'Canon EOS 5D', 'Product 3', 2, '80.0000', '160.0000', '0.0000', 400),
(525, 16, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(592, 17, 47, 'HP LP3065', 'Product 21', 1, '100.0000', '100.0000', '0.0000', 300);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_shipment`
--

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Sub-Total', '100.0000', 1),
(2, 1, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(3, 1, 'tax', 'Eco Tax (-2.00)', '4.0000', 5),
(4, 1, 'tax', 'VAT (20%)', '21.0000', 5),
(5, 1, 'total', 'Total', '130.0000', 9),
(6, 2, 'sub_total', 'Sub-Total', '100.0000', 1),
(7, 2, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(8, 2, 'tax', 'Eco Tax (-2.00)', '4.0000', 5),
(9, 2, 'tax', 'VAT (20%)', '21.0000', 5),
(10, 2, 'total', 'Total', '130.0000', 9),
(11, 3, 'sub_total', 'Sub-Total', '100.0000', 1),
(12, 3, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(13, 3, 'tax', 'Eco Tax (-2.00)', '4.0000', 5),
(14, 3, 'tax', 'VAT (20%)', '21.0000', 5),
(15, 3, 'total', 'Total', '130.0000', 9),
(16, 4, 'sub_total', 'Sub-Total', '100.0000', 1),
(17, 4, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(18, 4, 'tax', 'Eco Tax (-2.00)', '4.0000', 5),
(19, 4, 'tax', 'VAT (20%)', '21.0000', 5),
(20, 4, 'total', 'Total', '130.0000', 9),
(252, 6, 'total', 'Total', '106.0000', 9),
(174, 5, 'total', 'Total', '105.0000', 9),
(251, 6, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(173, 5, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(172, 5, 'sub_total', 'Sub-Total', '100.0000', 1),
(250, 6, 'sub_total', 'Sub-Total', '101.0000', 1),
(264, 7, 'total', 'Total', '105.0000', 9),
(262, 7, 'sub_total', 'Sub-Total', '100.0000', 1),
(263, 7, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(330, 8, 'total', 'Total', '85.0000', 9),
(329, 8, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(328, 8, 'sub_total', 'Sub-Total', '80.0000', 1),
(462, 9, 'total', 'Total', '106.0000', 9),
(461, 9, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(460, 9, 'sub_total', 'Sub-Total', '101.0000', 1),
(564, 10, 'total', 'Total', '106.0000', 9),
(563, 10, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(562, 10, 'sub_total', 'Sub-Total', '101.0000', 1),
(666, 11, 'total', 'Total', '106.0000', 9),
(665, 11, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(664, 11, 'sub_total', 'Sub-Total', '101.0000', 1),
(732, 12, 'total', 'Total', '106.0000', 9),
(731, 12, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(730, 12, 'sub_total', 'Sub-Total', '101.0000', 1),
(895, 13, 'total', 'Total', '85.0000', 9),
(893, 13, 'sub_total', 'Sub-Total', '80.0000', 1),
(894, 13, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(973, 14, 'total', 'Total', '105.0000', 9),
(972, 14, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(971, 14, 'sub_total', 'Sub-Total', '100.0000', 1),
(1453, 15, 'total', 'Total', '165.0000', 9),
(1452, 15, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(1451, 15, 'sub_total', 'Sub-Total', '160.0000', 1),
(1525, 16, 'total', 'Total', '85.0000', 9),
(1524, 16, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(1523, 16, 'sub_total', 'Sub-Total', '80.0000', 1),
(1726, 17, 'total', 'Total', '100.0000', 9),
(1725, 17, 'shipping', 'Free Shipping', '0.0000', 3),
(1724, 17, 'sub_total', 'Sub-Total', '100.0000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_paypal_order`
--

CREATE TABLE `oc_paypal_order` (
  `paypal_order_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `capture_status` enum('Complete','NotComplete') DEFAULT NULL,
  `currency_code` char(3) NOT NULL,
  `authorization_id` varchar(30) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_paypal_order`
--

INSERT INTO `oc_paypal_order` (`paypal_order_id`, `order_id`, `date_added`, `date_modified`, `capture_status`, `currency_code`, `authorization_id`, `total`) VALUES
(1, 15, '2022-11-27 16:18:04', '2022-11-27 16:22:03', 'Complete', 'USD', '1A080080AY578222H', '165.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_paypal_order_transaction`
--

CREATE TABLE `oc_paypal_order_transaction` (
  `paypal_order_transaction_id` int(11) NOT NULL,
  `paypal_order_id` int(11) NOT NULL,
  `transaction_id` char(20) NOT NULL,
  `parent_id` char(20) NOT NULL,
  `date_added` datetime NOT NULL,
  `note` varchar(255) NOT NULL,
  `msgsubid` char(38) NOT NULL,
  `receipt_id` char(20) NOT NULL,
  `payment_type` enum('none','echeck','instant','refund','void') DEFAULT NULL,
  `payment_status` char(20) NOT NULL,
  `pending_reason` char(50) NOT NULL,
  `transaction_entity` char(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `debug_data` text NOT NULL,
  `call_data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_paypal_order_transaction`
--

INSERT INTO `oc_paypal_order_transaction` (`paypal_order_transaction_id`, `paypal_order_id`, `transaction_id`, `parent_id`, `date_added`, `note`, `msgsubid`, `receipt_id`, `payment_type`, `payment_status`, `pending_reason`, `transaction_entity`, `amount`, `debug_data`, `call_data`) VALUES
(1, 1, '1A080080AY578222H', '', '2022-11-27 16:18:04', '', '', '', 'instant', 'Pending', 'authorization', 'auth', '165.00', '{\"TOKEN\":\"EC-9RM02337R3913950G\",\"SUCCESSPAGEREDIRECTREQUESTED\":\"false\",\"TIMESTAMP\":\"2022-11-27T09:18:02Z\",\"CORRELATIONID\":\"1bac87be6053f\",\"ACK\":\"Success\",\"VERSION\":\"109.0\",\"BUILD\":\"57888165\",\"INSURANCEOPTIONSELECTED\":\"false\",\"SHIPPINGOPTIONISDEFAULT\":\"false\",\"PAYMENTINFO_0_TRANSACTIONID\":\"1A080080AY578222H\",\"PAYMENTINFO_0_TRANSACTIONTYPE\":\"cart\",\"PAYMENTINFO_0_PAYMENTTYPE\":\"instant\",\"PAYMENTINFO_0_ORDERTIME\":\"2022-11-27T09:18:01Z\",\"PAYMENTINFO_0_AMT\":\"165.00\",\"PAYMENTINFO_0_TAXAMT\":\"0.00\",\"PAYMENTINFO_0_CURRENCYCODE\":\"USD\",\"PAYMENTINFO_0_PAYMENTSTATUS\":\"Pending\",\"PAYMENTINFO_0_PENDINGREASON\":\"authorization\",\"PAYMENTINFO_0_REASONCODE\":\"None\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITY\":\"Eligible\",\"PAYMENTINFO_0_PROTECTIONELIGIBILITYTYPE\":\"ItemNotReceivedEligible,UnauthorizedPaymentEligible\",\"PAYMENTINFO_0_SECUREMERCHANTACCOUNTID\":\"MGXQZRZKQU5LJ\",\"PAYMENTINFO_0_ERRORCODE\":\"0\",\"PAYMENTINFO_0_ACK\":\"Success\"}', ''),
(2, 1, '0VF23986AP0385103', '1A080080AY578222H', '2022-11-27 16:22:03', '', '158684561463832c3909ca27.52398889', '', 'instant', 'Completed', 'None', 'payment', '165.00', '{\"AUTHORIZATIONID\":\"1A080080AY578222H\",\"MSGSUBID\":\"158684561463832c3909ca27.52398889\",\"TIMESTAMP\":\"2022-11-27T09:22:03Z\",\"CORRELATIONID\":\"345bc057eb2bf\",\"ACK\":\"Success\",\"VERSION\":\"84\",\"BUILD\":\"57888165\",\"TRANSACTIONID\":\"0VF23986AP0385103\",\"PARENTTRANSACTIONID\":\"1A080080AY578222H\",\"PAYMENTTYPE\":\"instant\",\"ORDERTIME\":\"2022-11-27T09:22:02Z\",\"AMT\":\"165.00\",\"FEEAMT\":\"6.25\",\"CURRENCYCODE\":\"USD\",\"PAYMENTSTATUS\":\"Completed\",\"PENDINGREASON\":\"None\",\"REASONCODE\":\"None\",\"SHIPPINGMETHOD\":\"Default\",\"PROTECTIONELIGIBILITY\":\"Eligible\",\"PROTECTIONELIGIBILITYTYPE\":\"ItemNotReceivedEligible,UnauthorizedPaymentEligible\"}', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `points` int(8) NOT NULL DEFAULT 0,
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `weight_class_id` int(11) NOT NULL DEFAULT 0,
  `length` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `width` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `height` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `length_class_id` int(11) NOT NULL DEFAULT 0,
  `subtract` tinyint(1) NOT NULL DEFAULT 1,
  `minimum` int(11) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(28, 'Product 1', '', '', '', '', '', '', '', 939, 7, 'catalog/demo/htc_touch_hd_1.jpg', 5, 1, '100.0000', 200, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 16:06:50', '2011-09-30 01:05:39'),
(29, 'Product 2', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/palm_treo_pro_1.jpg', 6, 1, '279.9900', 0, 9, '2009-02-03', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 16:42:17', '2011-09-30 01:06:08'),
(30, 'Product 3', '', '', '', '', '', '', '', 3, 6, 'catalog/demo/canon_eos_5d_1.jpg', 9, 1, '100.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 6, '2009-02-03 16:59:00', '2011-09-30 01:05:23'),
(31, 'Product 4', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/nikon_d300_1.jpg', 0, 1, '80.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 17:00:10', '2011-09-30 01:06:00'),
(32, 'Product 5', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/ipod_touch_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 17:07:26', '2011-09-30 01:07:22'),
(33, 'Product 6', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/samsung_syncmaster_941bw.jpg', 0, 1, '200.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 17:08:31', '2011-09-30 01:06:29'),
(34, 'Product 7', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/ipod_shuffle_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:07:54', '2011-09-30 01:07:17'),
(35, 'Product 8', '', '', '', '', '', '', '', 1000, 5, '', 0, 0, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 18:08:31', '2011-09-30 01:06:17'),
(36, 'Product 9', '', '', '', '', '', '', '', 994, 6, 'catalog/demo/ipod_nano_1.jpg', 8, 0, '100.0000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:09:19', '2011-09-30 01:07:12'),
(40, 'product 11', '', '', '', '', '', '', '', 965, 5, 'catalog/demo/iphone_1.jpg', 8, 1, '101.0000', 0, 9, '2009-02-03', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 6, '2009-02-03 21:07:12', '2011-09-30 01:06:53'),
(41, 'Product 14', '', '', '', '', '', '', '', 976, 5, 'catalog/demo/imac_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 4, '2009-02-03 21:07:26', '2011-09-30 01:06:44'),
(42, 'Product 15', '', '', '', '', '', '', '', 990, 5, 'catalog/demo/apple_cinema_30.jpg', 8, 1, '100.0000', 400, 9, '2009-02-04', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 0, 1, 8, '2009-02-03 21:07:37', '2011-09-30 00:46:19'),
(43, 'Product 16', '', '', '', '', '', '', '', 929, 5, 'catalog/demo/macbook_1.jpg', 8, 0, '500.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 10, '2009-02-03 21:07:49', '2011-09-30 01:05:46'),
(44, 'Product 17', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/macbook_air_1.jpg', 8, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:00', '2011-09-30 01:05:53'),
(45, 'Product 18', '', '', '', '', '', '', '', 998, 5, 'catalog/demo/macbook_pro_1.jpg', 8, 1, '2000.0000', 0, 100, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 1, '2009-02-03 21:08:17', '2011-09-15 22:22:01'),
(46, 'Product 19', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/sony_vaio_1.jpg', 10, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:29', '2011-09-30 01:06:39'),
(47, 'Product 21', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/hp_1.jpg', 7, 1, '100.0000', 400, 9, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 1, '2009-02-03 21:08:40', '2011-09-30 01:05:28'),
(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 994, 5, 'catalog/demo/ipod_classic_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-08 17:21:51', '2011-09-30 01:07:06'),
(49, 'SAM1', '', '', '', '', '', '', '', 0, 8, 'catalog/demo/samsung_tab_1.jpg', 0, 1, '199.9900', 0, 9, '2011-04-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2011-04-26 08:57:34', '2011-09-30 01:06:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(43, 2, 1, '1'),
(47, 4, 1, '16GB'),
(43, 4, 1, '8gb'),
(42, 3, 1, '100mhz'),
(47, 2, 1, '4'),
(43, 2, 2, '1'),
(47, 4, 2, '16GB'),
(43, 4, 2, '8gb'),
(42, 3, 2, '100mhz'),
(47, 2, 2, '4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(35, 1, 'Product 8', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', 'Product 8', '', ''),
(48, 1, 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'iPod Classic', '', ''),
(40, 1, 'iPhone', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'iPhone', '', ''),
(28, 1, 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '	 HTC Touch HD', '', ''),
(44, 1, 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'MacBook Air', '', ''),
(45, 1, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'MacBook Pro', '', ''),
(29, 1, 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Palm Treo Pro', '', ''),
(36, 1, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Nano', '', ''),
(46, 1, 'Sony VAIO', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'Sony VAIO', '', ''),
(47, 1, 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'HP LP3065', '', ''),
(32, 1, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '	 iPod Touch', '', ''),
(41, 1, 'iMac', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'iMac', '', ''),
(33, 1, 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n', '', 'Samsung SyncMaster 941BW', '', ''),
(34, 1, 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Shuffle', '', ''),
(43, 1, 'MacBook', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'MacBook', '', ''),
(31, 1, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Nikon D300', '', ''),
(49, 1, 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n', '', 'Samsung Galaxy Tab 10.1', '', ''),
(42, 1, 'Apple Cinema 30&quot;', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Apple Cinema 30', '', ''),
(30, 1, 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', '', 'sdf', '', ''),
(35, 2, 'Product 8', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', 'Product 8', '', ''),
(48, 2, 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'iPod Classic', '', ''),
(40, 2, 'iPhone', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'iPhone', '', ''),
(28, 2, 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '	 HTC Touch HD', '', ''),
(44, 2, 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'MacBook Air', '', ''),
(45, 2, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'MacBook Pro', '', ''),
(29, 2, 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Palm Treo Pro', '', ''),
(36, 2, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Nano', '', ''),
(46, 2, 'Sony VAIO', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'Sony VAIO', '', ''),
(47, 2, 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'HP LP3065', '', ''),
(32, 2, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '	 iPod Touch', '', ''),
(41, 2, 'iMac', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'iMac', '', ''),
(33, 2, 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n', '', 'Samsung SyncMaster 941BW', '', ''),
(34, 2, 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Shuffle', '', ''),
(43, 2, 'MacBook', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'MacBook', '', ''),
(31, 2, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Nikon D300', '', ''),
(49, 2, 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n', '', 'Samsung Galaxy Tab 10.1', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(42, 2, 'Apple Cinema 30&quot;', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Apple Cinema 30', '', ''),
(30, 2, 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', '', 'sdf', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(440, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(439, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(438, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2345, 30, 'catalog/demo/canon_eos_5d_2.jpg', 0),
(2321, 47, 'catalog/demo/hp_3.jpg', 0),
(2035, 28, 'catalog/demo/htc_touch_hd_2.jpg', 0),
(2351, 41, 'catalog/demo/imac_3.jpg', 0),
(1982, 40, 'catalog/demo/iphone_6.jpg', 0),
(2001, 36, 'catalog/demo/ipod_nano_5.jpg', 0),
(2000, 36, 'catalog/demo/ipod_nano_4.jpg', 0),
(2005, 34, 'catalog/demo/ipod_shuffle_5.jpg', 0),
(2004, 34, 'catalog/demo/ipod_shuffle_4.jpg', 0),
(2011, 32, 'catalog/demo/ipod_touch_7.jpg', 0),
(2010, 32, 'catalog/demo/ipod_touch_6.jpg', 0),
(2009, 32, 'catalog/demo/ipod_touch_5.jpg', 0),
(1971, 43, 'catalog/demo/macbook_5.jpg', 0),
(1970, 43, 'catalog/demo/macbook_4.jpg', 0),
(1974, 44, 'catalog/demo/macbook_air_4.jpg', 0),
(1973, 44, 'catalog/demo/macbook_air_2.jpg', 0),
(1977, 45, 'catalog/demo/macbook_pro_2.jpg', 0),
(1976, 45, 'catalog/demo/macbook_pro_3.jpg', 0),
(1986, 31, 'catalog/demo/nikon_d300_3.jpg', 0),
(1985, 31, 'catalog/demo/nikon_d300_2.jpg', 0),
(1988, 29, 'catalog/demo/palm_treo_pro_3.jpg', 0),
(1995, 46, 'catalog/demo/sony_vaio_5.jpg', 0),
(1994, 46, 'catalog/demo/sony_vaio_4.jpg', 0),
(1991, 48, 'catalog/demo/ipod_classic_4.jpg', 0),
(1990, 48, 'catalog/demo/ipod_classic_3.jpg', 0),
(1981, 40, 'catalog/demo/iphone_2.jpg', 0),
(1980, 40, 'catalog/demo/iphone_5.jpg', 0),
(2344, 30, 'catalog/demo/canon_eos_5d_3.jpg', 0),
(2320, 47, 'catalog/demo/hp_2.jpg', 0),
(2034, 28, 'catalog/demo/htc_touch_hd_3.jpg', 0),
(2350, 41, 'catalog/demo/imac_2.jpg', 0),
(1979, 40, 'catalog/demo/iphone_3.jpg', 0),
(1978, 40, 'catalog/demo/iphone_4.jpg', 0),
(1989, 48, 'catalog/demo/ipod_classic_2.jpg', 0),
(1999, 36, 'catalog/demo/ipod_nano_2.jpg', 0),
(1998, 36, 'catalog/demo/ipod_nano_3.jpg', 0),
(2003, 34, 'catalog/demo/ipod_shuffle_2.jpg', 0),
(2002, 34, 'catalog/demo/ipod_shuffle_3.jpg', 0),
(2008, 32, 'catalog/demo/ipod_touch_2.jpg', 0),
(2007, 32, 'catalog/demo/ipod_touch_3.jpg', 0),
(2006, 32, 'catalog/demo/ipod_touch_4.jpg', 0),
(1969, 43, 'catalog/demo/macbook_2.jpg', 0),
(1968, 43, 'catalog/demo/macbook_3.jpg', 0),
(1972, 44, 'catalog/demo/macbook_air_3.jpg', 0),
(1975, 45, 'catalog/demo/macbook_pro_4.jpg', 0),
(1984, 31, 'catalog/demo/nikon_d300_4.jpg', 0),
(1983, 31, 'catalog/demo/nikon_d300_5.jpg', 0),
(1987, 29, 'catalog/demo/palm_treo_pro_2.jpg', 0),
(1993, 46, 'catalog/demo/sony_vaio_2.jpg', 0),
(1992, 46, 'catalog/demo/sony_vaio_3.jpg', 0),
(2327, 49, 'catalog/demo/samsung_tab_7.jpg', 0),
(2326, 49, 'catalog/demo/samsung_tab_6.jpg', 0),
(2325, 49, 'catalog/demo/samsung_tab_5.jpg', 0),
(2324, 49, 'catalog/demo/samsung_tab_4.jpg', 0),
(2323, 49, 'catalog/demo/samsung_tab_3.jpg', 0),
(2322, 49, 'catalog/demo/samsung_tab_2.jpg', 0),
(2317, 42, 'catalog/demo/canon_logo.jpg', 0),
(2316, 42, 'catalog/demo/hp_1.jpg', 0),
(2315, 42, 'catalog/demo/compaq_presario.jpg', 0),
(2314, 42, 'catalog/demo/canon_eos_5d_1.jpg', 0),
(2313, 42, 'catalog/demo/canon_eos_5d_2.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(224, 35, 11, '', 1),
(225, 47, 12, '2011-04-22', 1),
(223, 42, 2, '', 1),
(217, 42, 5, '', 1),
(209, 42, 6, '', 1),
(218, 42, 1, '', 1),
(208, 42, 4, 'test', 1),
(219, 42, 8, '2011-02-20', 1),
(222, 42, 7, '', 1),
(221, 42, 9, '22:25', 1),
(220, 42, 10, '2011-02-20 22:25', 1),
(226, 30, 5, '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(1, 217, 42, 5, 41, 100, 0, '1.0000', '+', 0, '+', '1.00000000', '+'),
(6, 218, 42, 1, 31, 146, 1, '20.0000', '+', 2, '-', '20.00000000', '+'),
(7, 218, 42, 1, 43, 300, 1, '30.0000', '+', 3, '+', '30.00000000', '+'),
(5, 218, 42, 1, 32, 96, 1, '10.0000', '+', 1, '+', '10.00000000', '+'),
(4, 217, 42, 5, 39, 92, 1, '4.0000', '+', 0, '+', '4.00000000', '+'),
(2, 217, 42, 5, 42, 200, 1, '2.0000', '+', 0, '+', '2.00000000', '+'),
(3, 217, 42, 5, 40, 300, 0, '3.0000', '+', 0, '+', '3.00000000', '+'),
(8, 223, 42, 2, 23, 48, 1, '10.0000', '+', 0, '+', '10.00000000', '+'),
(10, 223, 42, 2, 44, 2696, 1, '30.0000', '+', 0, '+', '30.00000000', '+'),
(9, 223, 42, 2, 24, 194, 1, '20.0000', '+', 0, '+', '20.00000000', '+'),
(11, 223, 42, 2, 45, 3998, 1, '40.0000', '+', 0, '+', '40.00000000', '+'),
(12, 224, 35, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(13, 224, 35, 11, 47, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(14, 224, 35, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(16, 226, 30, 5, 40, 3, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(15, 226, 30, 5, 39, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(40, 42),
(41, 42),
(42, 40),
(42, 41);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `points` int(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(515, 42, 1, 100),
(519, 47, 1, 300),
(379, 28, 1, 400),
(329, 43, 1, 600),
(339, 29, 1, 0),
(343, 48, 1, 0),
(335, 40, 1, 0),
(539, 30, 1, 200),
(331, 44, 1, 700),
(333, 45, 1, 800),
(337, 31, 1, 0),
(425, 35, 1, 0),
(345, 33, 1, 0),
(347, 46, 1, 0),
(545, 41, 1, 0),
(351, 36, 1, 0),
(353, 34, 1, 0),
(355, 32, 1, 0),
(521, 49, 1, 1000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(419, 42, 1, 1, '90.0000', '0000-00-00', '0000-00-00'),
(439, 30, 1, 2, '90.0000', '0000-00-00', '0000-00-00'),
(438, 30, 1, 1, '80.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 20),
(28, 24),
(29, 20),
(29, 24),
(30, 20),
(30, 33),
(31, 33),
(32, 34),
(33, 20),
(33, 28),
(34, 34),
(35, 20),
(36, 34),
(40, 20),
(40, 24),
(41, 27),
(42, 20),
(42, 28),
(43, 18),
(43, 20),
(44, 18),
(44, 20),
(45, 18),
(46, 18),
(46, 20),
(47, 18),
(47, 20),
(48, 20),
(48, 34),
(49, 57);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(824, 0, 1, 'product_id=48', 'ipod-classic'),
(836, 0, 1, 'category_id=20', 'desktops'),
(834, 0, 1, 'category_id=26', 'pc'),
(835, 0, 1, 'category_id=27', 'mac'),
(730, 0, 1, 'manufacturer_id=8', 'apple'),
(772, 0, 1, 'information_id=4', 'about_us'),
(768, 0, 1, 'product_id=42', 'test'),
(789, 0, 1, 'category_id=34', 'mp3-players'),
(781, 0, 1, 'category_id=36', 'test2'),
(774, 0, 1, 'category_id=18', 'laptop-notebook'),
(775, 0, 1, 'category_id=46', 'macs'),
(776, 0, 1, 'category_id=45', 'windows'),
(777, 0, 1, 'category_id=25', 'component'),
(778, 0, 1, 'category_id=29', 'mouse'),
(779, 0, 1, 'category_id=28', 'monitor'),
(780, 0, 1, 'category_id=35', 'test1'),
(782, 0, 1, 'category_id=30', 'printer'),
(783, 0, 1, 'category_id=31', 'scanner'),
(784, 0, 1, 'category_id=32', 'web-camera'),
(785, 0, 1, 'category_id=57', 'tablet'),
(786, 0, 1, 'category_id=17', 'software'),
(787, 0, 1, 'category_id=24', 'smartphone'),
(788, 0, 1, 'category_id=33', 'camera'),
(790, 0, 1, 'category_id=43', 'test11'),
(791, 0, 1, 'category_id=44', 'test12'),
(792, 0, 1, 'category_id=47', 'test15'),
(793, 0, 1, 'category_id=48', 'test16'),
(794, 0, 1, 'category_id=49', 'test17'),
(795, 0, 1, 'category_id=50', 'test18'),
(796, 0, 1, 'category_id=51', 'test19'),
(797, 0, 1, 'category_id=52', 'test20'),
(798, 0, 1, 'category_id=58', 'test25'),
(799, 0, 1, 'category_id=53', 'test21'),
(800, 0, 1, 'category_id=54', 'test22'),
(801, 0, 1, 'category_id=55', 'test23'),
(802, 0, 1, 'category_id=56', 'test24'),
(803, 0, 1, 'category_id=38', 'test4'),
(804, 0, 1, 'category_id=37', 'test5'),
(805, 0, 1, 'category_id=39', 'test6'),
(806, 0, 1, 'category_id=40', 'test7'),
(807, 0, 1, 'category_id=41', 'test8'),
(808, 0, 1, 'category_id=42', 'test9'),
(809, 0, 1, 'product_id=30', 'canon-eos-5d'),
(840, 0, 1, 'product_id=47', 'hp-lp3065'),
(811, 0, 1, 'product_id=28', 'htc-touch-hd'),
(812, 0, 1, 'product_id=43', 'macbook'),
(813, 0, 1, 'product_id=44', 'macbook-air'),
(814, 0, 1, 'product_id=45', 'macbook-pro'),
(816, 0, 1, 'product_id=31', 'nikon-d300'),
(817, 0, 1, 'product_id=29', 'palm-treo-pro'),
(818, 0, 1, 'product_id=35', 'product-8'),
(819, 0, 1, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(820, 0, 1, 'product_id=33', 'samsung-syncmaster-941bw'),
(821, 0, 1, 'product_id=46', 'sony-vaio'),
(837, 0, 1, 'product_id=41', 'imac'),
(823, 0, 1, 'product_id=40', 'iphone'),
(825, 0, 1, 'product_id=36', 'ipod-nano'),
(826, 0, 1, 'product_id=34', 'ipod-shuffle'),
(827, 0, 1, 'product_id=32', 'ipod-touch'),
(828, 0, 1, 'manufacturer_id=9', 'canon'),
(829, 0, 1, 'manufacturer_id=5', 'htc'),
(830, 0, 1, 'manufacturer_id=7', 'hewlett-packard'),
(831, 0, 1, 'manufacturer_id=6', 'palm'),
(832, 0, 1, 'manufacturer_id=10', 'sony'),
(841, 0, 1, 'information_id=6', 'delivery'),
(842, 0, 1, 'information_id=3', 'privacy'),
(843, 0, 1, 'information_id=5', 'terms');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('0501a0196a87fcc917d4c1dcea', '{\"api_id\":\"1\"}', '2022-11-27 10:58:30'),
('122b415b350dd6871cd9ead23e', '{\"api_id\":\"1\"}', '2022-11-27 16:46:55'),
('2134626eef9f9fd3594920ed66', '{\"api_id\":\"1\"}', '2022-11-27 16:42:22'),
('3bd1532f9d5d642ccec947a693', '{\"api_id\":\"1\"}', '2022-11-27 16:46:21'),
('510159a8ab86f67b90812b54b9', '{\"api_id\":\"1\"}', '2022-11-27 16:46:26'),
('542e0c7366edc071e15e024d43', '{\"api_id\":\"1\"}', '2022-11-27 09:35:28'),
('6e3ddb5d02b77c739801cfccf1', '{\"api_id\":\"1\"}', '2022-11-27 15:27:51'),
('78cd1eb2483d81a4a30b2bf7e0', '{\"user_id\":\"1\",\"user_token\":\"sJOCteklBG1wVeRvqqO4E9kBiSoCUw1i\",\"install\":\"yHz6WsOt3e\",\"language\":\"vi-vn\",\"currency\":\"USD\",\"setting_id\":\"1\",\"status\":true,\"setting_name\":\"Setting\",\"account\":\"guest\",\"addresses\":false,\"total\":100,\"payment_address\":{\"firstname\":\"\",\"lastname\":\"\",\"email\":\"\",\"email_confirm\":\"\",\"telephone\":\"\",\"fax\":\"\",\"password\":\"\",\"confirm\":\"\",\"company\":\"\",\"address_1\":\"\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"\",\"country_id\":\"\",\"zone_id\":\"\",\"country\":\"\",\"iso_code_2\":\"\",\"iso_code_3\":\"\",\"address_format\":\"\",\"custom_field\":[],\"zone\":\"\",\"zone_code\":\"\",\"agree\":\"0\",\"shipping_address\":1,\"newsletter\":\"1\",\"address_id\":0,\"captcha\":\"\",\"google_recaptcha\":\"\",\"customer_group_id\":\"1\"},\"shipping_address\":{\"firstname\":\"\",\"lastname\":\"\",\"company\":\"\",\"address_1\":\"\",\"address_2\":\"\",\"postcode\":\"\",\"city\":\"\",\"country_id\":\"\",\"zone_id\":\"\",\"country\":\"\",\"iso_code_2\":\"\",\"iso_code_3\":\"\",\"address_format\":\"\",\"custom_field\":[],\"zone\":\"\",\"zone_code\":\"\",\"address_id\":0},\"has_shipping\":true,\"custom\":{\"comment\":\"\",\"agree\":\"1\",\"custom_field\":[]},\"quantity\":\"1\",\"cart\":{\"products\":[{\"key\":\"21\",\"product_id\":\"47\",\"image\":\"http:\\/\\/localhost\\/shop_project1\\/image\\/cache\\/catalog\\/demo\\/hp_1-180x180.jpg\",\"thumb\":\"http:\\/\\/localhost\\/shop_project1\\/image\\/cache\\/catalog\\/demo\\/hp_1-60x60.jpg\",\"name\":\"HP LP3065\",\"model\":\"Product 21\",\"option\":[{\"name\":\"Delivery Date\",\"value\":\"2011-04-22\"}],\"recurring\":\"\",\"quantity\":\"1\",\"stock\":true,\"reward\":\"\\u0110i\\u1ec3m th\\u01b0\\u1edfng: 300\",\"price\":\"$100,00\",\"total\":\"$100,00\",\"href\":\"http:\\/\\/localhost\\/shop_project1\\/index.php?route=product\\/product&amp;product_id=47\"}]},\"pages\":[\"page0\"],\"page_id\":\"page0\",\"confirm\":{\"checkout\":false,\"trigger\":\"#button-confirm, .button, .btn, .button_oc, input[type=submit]\"},\"payment\":{\"payment_popup\":false,\"payment\":\"<div class=\\\"alert alert-danger alert-dismissible\\\"><i class=\\\"fa fa-exclamation-circle\\\"><\\/i> Warning: The payment gateway is in \'Sandbox Mode\'. Your account will not be charged.<\\/div>\\n<form action=\\\"https:\\/\\/www.sandbox.paypal.com\\/cgi-bin\\/webscr&pal=V4T754QB63XXL\\\" method=\\\"post\\\">\\n  <input type=\\\"hidden\\\" name=\\\"cmd\\\" value=\\\"_cart\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"upload\\\" value=\\\"1\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"business\\\" value=\\\"sb-i3gip22737712@business.example.com\\\" \\/>\\n      <input type=\\\"hidden\\\" name=\\\"item_name_1\\\" value=\\\"HP LP3065\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"item_number_1\\\" value=\\\"Product 21\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"amount_1\\\" value=\\\"100\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"quantity_1\\\" value=\\\"1\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"weight_1\\\" value=\\\"1\\\" \\/>\\n      <input type=\\\"hidden\\\" name=\\\"on0_1\\\" value=\\\"Delivery Date\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"os0_1\\\" value=\\\"2011-04-22\\\" \\/>\\n            <input type=\\\"hidden\\\" name=\\\"currency_code\\\" value=\\\"USD\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"first_name\\\" value=\\\"\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"last_name\\\" value=\\\"\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"address1\\\" value=\\\"\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"address2\\\" value=\\\"\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"city\\\" value=\\\"\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"state\\\" value=\\\"\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"zip\\\" value=\\\"\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"country\\\" value=\\\"\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"address_override\\\" value=\\\"1\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"email\\\" value=\\\"test@gmail.com\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"invoice\\\" value=\\\"17 -  \\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"lc\\\" value=\\\"vi-vn\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"rm\\\" value=\\\"1\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"no_note\\\" value=\\\"1\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"no_shipping\\\" value=\\\"2\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"charset\\\" value=\\\"utf-8\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"return\\\" value=\\\"http:\\/\\/localhost\\/shop_project1\\/index.php?route=checkout\\/success\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"notify_url\\\" value=\\\"http:\\/\\/localhost\\/shop_project1\\/index.php?route=extension\\/payment\\/pp_standard\\/callback\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"cancel_return\\\" value=\\\"http:\\/\\/localhost\\/shop_project1\\/index.php?route=checkout\\/checkout\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"paymentaction\\\" value=\\\"authorization\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"custom\\\" value=\\\"17\\\" \\/>\\n  <input type=\\\"hidden\\\" name=\\\"bn\\\" value=\\\"OpenCart_2.0_WPS\\\" \\/>\\n  <div class=\\\"buttons\\\">\\n    <div class=\\\"pull-right\\\">\\n      <input type=\\\"submit\\\" value=\\\"X\\u00e1c nh\\u1eadn \\u0111\\u01a1n h\\u00e0ng\\\" class=\\\"btn btn-primary\\\" \\/>\\n    <\\/div>\\n  <\\/div>\\n<\\/form>\\n\",\"payment_popup_title\":\"PayPal\"},\"environment\":\"sandbox\",\"authorization_code\":\"C21AAJf70akklXqFdkHekuAHomm8kxdKWfCB1A7iE6lfYiczsCwGGoipOGkZAL-WWv7B7j5H6_E9O-XERFTxFqQM7DVjV6dXA\",\"shared_id\":\"AdkfdMFPx3jxH6Pz8hpFG9TpuKBJxDwrpYclh0PGfu7zQebCc7TQ-X93WBv0uPHJYSBpn0asZlTSg4Zz\",\"seller_nonce\":\"9jCprkOrOJ7t27cB8Gf4i3xTqYtQlNhqKI33dWbWS7cIENPLGw\",\"guest\":{\"customer_group_id\":\"1\",\"firstname\":\"aaaa\",\"lastname\":\"bbbbb\",\"email\":\"test@gmail.com\",\"telephone\":\"76575\",\"fax\":\"\",\"custom_field\":[],\"shipping_address\":1},\"comment\":\"\",\"order_id\":17,\"shipping_methods\":{\"free\":{\"title\":\"Free Shipping\",\"quote\":{\"free\":{\"code\":\"free.free\",\"title\":\"Free Shipping\",\"cost\":0,\"tax_class_id\":0,\"text\":\"$0,00\"}},\"sort_order\":\"\",\"error\":false},\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5,00\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"free.free\",\"title\":\"Free Shipping\",\"cost\":0,\"tax_class_id\":0,\"text\":\"$0,00\"},\"payment_methods\":{\"pp_express\":{\"code\":\"pp_express\",\"title\":\"PayPal Express Checkout\",\"terms\":\"\",\"sort_order\":\"\",\"image\":\"image\\/catalog\\/d_quickcheckout\\/payment\\/pp_express.png\"},\"pp_standard\":{\"code\":\"pp_standard\",\"title\":\"PayPal\",\"terms\":\"\",\"sort_order\":\"\",\"image\":\"image\\/catalog\\/d_quickcheckout\\/payment\\/pp_standard.png\"},\"cod\":{\"code\":\"cod\",\"title\":\"Cash On Delivery\",\"terms\":\"\",\"sort_order\":\"5\",\"image\":\"image\\/catalog\\/d_quickcheckout\\/payment\\/cod.png\"}},\"payment_method\":{\"code\":\"pp_standard\",\"title\":\"PayPal\",\"terms\":\"\",\"sort_order\":\"\",\"image\":\"image\\/catalog\\/d_quickcheckout\\/payment\\/pp_standard.png\"},\"totals\":[{\"title\":\"Sub-Total\",\"text\":\"$100,00\"},{\"title\":\"Free Shipping\",\"text\":\"$0,00\"},{\"title\":\"Total\",\"text\":\"$100,00\"}]}', '2022-11-27 16:59:03'),
('85ca7398a4552c485f8f8797a0', '{\"api_id\":\"1\"}', '2022-11-27 10:58:24'),
('96e4f433ae77d77c7606c1b76b', '{\"api_id\":\"1\"}', '2022-11-27 16:45:38'),
('9d9c451cf98c4034bb38607c0e', '{\"api_id\":\"1\"}', '2022-11-27 15:27:56'),
('c0fd9f0f0269c621a15337365a', '{\"api_id\":\"1\"}', '2022-11-27 16:42:27'),
('cf25a8286925d6c63cf8369b9a', '{\"api_id\":\"1\"}', '2022-11-27 16:45:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(2528, 0, 'module_paypal_smart_button', 'module_paypal_smart_button_setting', '{\"page\":{\"product\":{\"status\":\"1\",\"insert_tag\":\"#content #product #button-cart\",\"insert_type\":\"after\",\"button_align\":\"center\",\"button_size\":\"responsive\",\"button_color\":\"gold\",\"button_shape\":\"rect\",\"button_label\":\"paypal\",\"button_tagline\":\"false\",\"message_status\":\"1\",\"message_align\":\"center\",\"message_size\":\"responsive\",\"message_layout\":\"text\",\"message_text_color\":\"black\",\"message_text_size\":\"12\",\"message_flex_color\":\"blue\",\"message_flex_ratio\":\"8x1\",\"button_funding\":{\"card\":\"0\",\"credit\":\"0\",\"bancontact\":\"0\",\"blik\":\"0\",\"eps\":\"0\",\"giropay\":\"0\",\"ideal\":\"0\",\"mercadopago\":\"0\",\"mybank\":\"0\",\"p24\":\"0\",\"sepa\":\"0\",\"sofort\":\"0\",\"venmo\":\"0\",\"paylater\":\"0\"}},\"cart\":{\"status\":\"1\",\"insert_tag\":\"#content\",\"insert_type\":\"append\",\"button_align\":\"right\",\"button_size\":\"large\",\"button_color\":\"gold\",\"button_shape\":\"rect\",\"button_label\":\"paypal\",\"button_tagline\":\"false\",\"message_status\":\"1\",\"message_align\":\"right\",\"message_size\":\"large\",\"message_layout\":\"text\",\"message_text_color\":\"black\",\"message_text_size\":\"12\",\"message_flex_color\":\"blue\",\"message_flex_ratio\":\"8x1\",\"button_funding\":{\"card\":\"0\",\"credit\":\"0\",\"bancontact\":\"0\",\"blik\":\"0\",\"eps\":\"0\",\"giropay\":\"0\",\"ideal\":\"0\",\"mercadopago\":\"0\",\"mybank\":\"0\",\"p24\":\"0\",\"sepa\":\"0\",\"sofort\":\"0\",\"venmo\":\"0\",\"paylater\":\"0\"}}}}', 1),
(2525, 0, 'config', 'config_error_filename', 'error.log', 0),
(2499, 0, 'config', 'config_logo', 'catalog/7Shop.png', 0),
(2500, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(2523, 0, 'config', 'config_error_display', '1', 0),
(2524, 0, 'config', 'config_error_log', '1', 0),
(2522, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(2521, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(2520, 0, 'config', 'config_file_max_size', '300000', 0),
(2519, 0, 'config', 'config_encryption', 'F8nvT3RErJfLp2xmFryZjMlsRfYazQKgm0prMLlo43B5JExTxDPUzegnpseFnGDmFFvJEDZ8JCibmbLxgXKV3esnMk5QMKMsrXSZmMNyGcLLsw5gt2q0AVYHOMG11hbqT0mDXhWkE7O2AlR916iBxQvxM1flmG0HmoSNJfS5CQyiapw05oRxbiGFzsjxex72vNI5UYFPNGsJwEd7q1DRuZfphtIjXsihVXKhRmmYuA4EZ1GXI30R8OPCi19caiSUcDVCkuJWRdUm0MPOWZVuj2LjzRTKKAKudVV6QEkof3ydQY4riz208xbqMpWz13NMLtBPGBWK95yAphlhvnnCp4mWzx2bRiVtFkBVZBxsajkjGTnkX5Gu7Rtn6LtbRoROiEstkhdVEihVY3goRYIykqDMzaBXwe2V5cpDlWtDW2l8xTwX3AXhe2pCiTjJKwRNUfLiIyDfzYsahvulh7FM5p4BBYSEcgRaBNL0dHSPHe0O0onDUeiAKCeNASTTLlprb5H26HSkEwCf59OfJcD6uH8cc2jnh0Y7eRE2afxBlaBgtzncWFAvHsYBPRydeXFwQPvjjUAqgecv1odizh7ZSi9N4nlDo5EeI71li6iRTfcQWu0vo3PrZcvD4WGlW9C5GRDA03FrsWId1vBlNzmtdRjEzFaqOCZENi1XiOqpNu2nCwwexzXSbySN1ipEf4r59sjWuumykdRnB1AiHw8aP5GuHy8soy7xnXfzCIl9140mvhWCHs0VjMIb0TogHqd0BQtFz5p4QLSM8jDH01OT9miSsHuQj363M2Nfnimu9KORt7UjdXJ2zEzgHKG5YojOW7XSMEcKu6CEc2cfGQ4R3GtyL1y2EgGEkM62EbQRLbLB9abUaJnPmh8FU7VMPghcDTQ1JrlrzwbBDu4d804JBp1N4bUopC4m3Ifz8hLyZRyLttSSmAzPuTXI0Uo02oOXvg9yiPQs4Rt5LVJiIDaZ0TPqIbgpXFm1ZTg9BAINMOVJBcGYAZ4X7muP3d5w8YtR', 0),
(2518, 0, 'config', 'config_shared', '0', 0),
(2517, 0, 'config', 'config_password', '1', 0),
(2516, 0, 'config', 'config_secure', '0', 0),
(2515, 0, 'config', 'config_compression', '0', 0),
(2501, 0, 'config', 'config_mail_engine', 'mail', 0),
(2502, 0, 'config', 'config_mail_parameter', '', 0),
(2503, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(2504, 0, 'config', 'config_mail_smtp_username', '', 0),
(2457, 0, 'config', 'config_currency', 'VND', 0),
(2458, 0, 'config', 'config_currency_auto', '1', 0),
(2459, 0, 'config', 'config_length_class_id', '1', 0),
(2460, 0, 'config', 'config_weight_class_id', '1', 0),
(2461, 0, 'config', 'config_product_count', '1', 0),
(2462, 0, 'config', 'config_limit_admin', '20', 0),
(2463, 0, 'config', 'config_review_status', '1', 0),
(2464, 0, 'config', 'config_review_guest', '1', 0),
(2465, 0, 'config', 'config_voucher_min', '1', 0),
(2466, 0, 'config', 'config_voucher_max', '1000', 0),
(2467, 0, 'config', 'config_tax', '1', 0),
(2468, 0, 'config', 'config_tax_default', 'shipping', 0),
(2469, 0, 'config', 'config_tax_customer', 'shipping', 0),
(2470, 0, 'config', 'config_customer_online', '0', 0),
(2471, 0, 'config', 'config_customer_activity', '0', 0),
(2472, 0, 'config', 'config_customer_search', '0', 0),
(2473, 0, 'config', 'config_customer_group_id', '1', 0),
(2474, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(2475, 0, 'config', 'config_customer_price', '0', 0),
(2476, 0, 'config', 'config_login_attempts', '5', 0),
(2477, 0, 'config', 'config_account_id', '3', 0),
(2478, 0, 'config', 'config_invoice_prefix', 'INV-2022-00', 0),
(2479, 0, 'config', 'config_cart_weight', '1', 0),
(2480, 0, 'config', 'config_checkout_guest', '1', 0),
(2481, 0, 'config', 'config_checkout_id', '5', 0),
(2482, 0, 'config', 'config_order_status_id', '1', 0),
(2483, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(94, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_order_status_id', '1', 0),
(96, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(97, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(98, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(99, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(100, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(101, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(102, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(105, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(106, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(107, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(108, 0, 'total_sub_total', 'total_sub_total_sort_order', '1', 0),
(109, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(110, 0, 'total_tax', 'total_tax_status', '1', 0),
(111, 0, 'total_total', 'total_total_sort_order', '9', 0),
(112, 0, 'total_total', 'total_total_status', '1', 0),
(113, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(114, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(115, 0, 'total_credit', 'total_credit_status', '1', 0),
(116, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(117, 0, 'total_reward', 'total_reward_status', '1', 0),
(118, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(120, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(121, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(122, 0, 'total_voucher', 'total_voucher_sort_order', '8', 0),
(123, 0, 'total_voucher', 'total_voucher_status', '1', 0),
(124, 0, 'module_category', 'module_category_status', '1', 0),
(125, 0, 'module_account', 'module_account_status', '1', 0),
(1256, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(1255, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(1254, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(1253, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(1252, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(1251, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(1250, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(1249, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(1248, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(1247, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(1246, 0, 'theme_default', 'theme_default_image_product_height', '228', 0),
(1245, 0, 'theme_default', 'theme_default_image_product_width', '228', 0),
(1244, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(1243, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(1241, 0, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(1242, 0, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(1240, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(1239, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(1238, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(2834, 0, 'payment_pp_express', 'payment_pp_express_expired_status_id', '14', 0),
(2835, 0, 'payment_pp_express', 'payment_pp_express_failed_status_id', '10', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(153, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(155, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(157, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(2851, 0, 'shipping_free', 'shipping_free_status', '1', 0),
(2850, 0, 'shipping_free', 'shipping_free_geo_zone_id', '0', 0),
(2849, 0, 'shipping_free', 'shipping_free_total', '', 0),
(2209, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(2208, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(2207, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(165, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(166, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(2843, 0, 'payment_pp_express', 'payment_pp_express_logo', '', 0),
(2844, 0, 'payment_pp_express', 'payment_pp_express_incontext_disable', '0', 0),
(169, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(171, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(173, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(175, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(177, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(179, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(181, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(183, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(185, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(187, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(188, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(189, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(190, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(191, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(193, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(195, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(197, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(198, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(199, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(200, 0, 'developer', 'developer_theme', '1', 0),
(201, 0, 'developer', 'developer_sass', '1', 0),
(2505, 0, 'config', 'config_mail_smtp_password', '', 0),
(2506, 0, 'config', 'config_mail_smtp_port', '25', 0),
(2507, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(2508, 0, 'config', 'config_mail_alert_email', '', 0),
(2509, 0, 'config', 'config_logo_image', 'catalog/7Shop.png', 0),
(2510, 0, 'config', 'config_footer_text', '', 0),
(2511, 0, 'config', 'config_version_text', '', 0),
(2512, 0, 'config', 'config_maintenance', '0', 0),
(2513, 0, 'config', 'config_seo_url', '0', 0),
(2514, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(2498, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(2497, 0, 'config', 'config_captcha', '', 0),
(2496, 0, 'config', 'config_return_status_id', '2', 0),
(2484, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(2485, 0, 'config', 'config_fraud_status_id', '7', 0),
(2486, 0, 'config', 'config_api_id', '1', 0),
(2487, 0, 'config', 'config_stock_display', '0', 0),
(2488, 0, 'config', 'config_stock_warning', '0', 0),
(2489, 0, 'config', 'config_stock_checkout', '0', 0),
(2490, 0, 'config', 'config_affiliate_group_id', '1', 0),
(2491, 0, 'config', 'config_affiliate_approval', '0', 0),
(2492, 0, 'config', 'config_affiliate_auto', '0', 0),
(2493, 0, 'config', 'config_affiliate_commission', '5', 0),
(2494, 0, 'config', 'config_affiliate_id', '4', 0),
(2495, 0, 'config', 'config_return_id', '0', 0),
(2456, 0, 'config', 'config_admin_language', 'vi-vn', 0),
(1257, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(1237, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(1236, 0, 'theme_default', 'theme_default_status', '1', 0),
(1235, 0, 'theme_default', 'theme_default_directory', 'default', 0),
(2455, 0, 'config', 'config_language', 'vi-vn', 0),
(2454, 0, 'config', 'config_timezone', 'Asia/Bangkok', 0),
(2453, 0, 'config', 'config_zone_id', '3776', 0),
(2452, 0, 'config', 'config_country_id', '230', 0),
(2451, 0, 'config', 'config_comment', '', 0),
(2450, 0, 'config', 'config_open', '', 0),
(2449, 0, 'config', 'config_image', 'catalog/7Shop.png', 0),
(2448, 0, 'config', 'config_fax', '', 0),
(2447, 0, 'config', 'config_telephone', '123456789', 0),
(2446, 0, 'config', 'config_email', 'test@gmail.com', 0),
(2445, 0, 'config', 'config_geocode', '', 0),
(2444, 0, 'config', 'config_address', 'Address 1', 0),
(2443, 0, 'config', 'config_owner', 'Your Name', 0),
(2442, 0, 'config', 'config_name', 'Your Store', 0),
(2441, 0, 'config', 'config_layout_id', '4', 0),
(1792, 0, 'theme_nice', 'theme_nice_page_product_shortdescritipon_length', '255', 0),
(1791, 0, 'theme_nice', 'theme_nice_productlist_cols_on_mobile', '2', 0),
(1790, 0, 'theme_nice', 'theme_nice_productlist_grid_hover_effect', '0', 0),
(1787, 0, 'theme_nice', 'theme_nice_productlist_description_on_mobile', '0', 0),
(1788, 0, 'theme_nice', 'theme_nice_productlist_name_font_weight', 'bold', 0),
(1789, 0, 'theme_nice', 'theme_nice_productlist_price_font_weight', 'regular', 0),
(1786, 0, 'theme_nice', 'theme_nice_productlist_description', '0', 0),
(1785, 0, 'theme_nice', 'theme_nice_productlist_image_margins', '0', 0),
(1782, 0, 'theme_nice', 'theme_nice_home_banner_1_link', '{\"1\":\"\",\"2\":\"\"}', 1),
(1783, 0, 'theme_nice', 'theme_nice_home_banner_2', '{\"1\":\"\",\"2\":\"\"}', 1),
(1784, 0, 'theme_nice', 'theme_nice_home_banner_2_link', '{\"1\":\"\",\"2\":\"\"}', 1),
(1780, 0, 'theme_nice', 'theme_nice_home_banner_near_slideshow_status', '0', 0),
(1781, 0, 'theme_nice', 'theme_nice_home_banner_1', '{\"1\":\"\",\"2\":\"\"}', 1),
(1777, 0, 'theme_nice', 'theme_nice_home_slideshow_id', '0', 0),
(1778, 0, 'theme_nice', 'theme_nice_home_slideshow_width', '1370', 0),
(1779, 0, 'theme_nice', 'theme_nice_home_slideshow_height', '570', 0),
(1774, 0, 'theme_nice', 'theme_nice_color_footer_bg', '#525a5d', 0),
(1775, 0, 'theme_nice', 'theme_nice_menu_top_status', '0', 0),
(1776, 0, 'theme_nice', 'theme_nice_home_slideshow_status', '0', 0),
(1773, 0, 'theme_nice', 'theme_nice_color_accent__darker_3', '#5859a0', 0),
(1772, 0, 'theme_nice', 'theme_nice_color_accent__darker_2', '#4f508f', 0),
(1771, 0, 'theme_nice', 'theme_nice_color_accent__darker_1', '#5859a0', 0),
(1770, 0, 'theme_nice', 'theme_nice_color_accent', '#ea435d', 0),
(1768, 0, 'theme_nice', 'theme_nice_color_accent__lighter_2', '#8788bd', 0),
(1769, 0, 'theme_nice', 'theme_nice_color_accent__lighter_1', '#7677b4', 0),
(1767, 0, 'theme_nice', 'theme_nice_color_accent__lighter_3', '#9798c6', 0),
(1766, 0, 'theme_nice', 'theme_nice_color_primary__darker_3', '#5859a0', 0),
(1765, 0, 'theme_nice', 'theme_nice_color_primary__darker_2', '#4f508f', 0),
(1764, 0, 'theme_nice', 'theme_nice_color_primary__darker_1', '#5859a0', 0),
(1763, 0, 'theme_nice', 'theme_nice_color_primary', '#6667ab', 0),
(1761, 0, 'theme_nice', 'theme_nice_color_primary__lighter_2', '#8788bd', 0),
(1762, 0, 'theme_nice', 'theme_nice_color_primary__lighter_1', '#7677b4', 0),
(1760, 0, 'theme_nice', 'theme_nice_color_primary__lighter_3', '#9798c6', 0),
(1759, 0, 'theme_nice', 'theme_nice_image_location_height', '50', 0),
(1758, 0, 'theme_nice', 'theme_nice_image_location_width', '268', 0),
(1757, 0, 'theme_nice', 'theme_nice_image_cart_height', '47', 0),
(1756, 0, 'theme_nice', 'theme_nice_image_cart_width', '47', 0),
(1755, 0, 'theme_nice', 'theme_nice_image_wishlist_height', '47', 0),
(1754, 0, 'theme_nice', 'theme_nice_image_wishlist_width', '47', 0),
(1753, 0, 'theme_nice', 'theme_nice_image_compare_height', '90', 0),
(1752, 0, 'theme_nice', 'theme_nice_image_compare_width', '90', 0),
(1751, 0, 'theme_nice', 'theme_nice_image_related_height', '80', 0),
(1749, 0, 'theme_nice', 'theme_nice_image_additional_height', '74', 0),
(1750, 0, 'theme_nice', 'theme_nice_image_related_width', '80', 0),
(1747, 0, 'theme_nice', 'theme_nice_image_product_height', '228', 0),
(1748, 0, 'theme_nice', 'theme_nice_image_additional_width', '74', 0),
(2440, 0, 'config', 'config_theme', 'nice', 0),
(2439, 0, 'config', 'config_meta_keyword', '', 0),
(1746, 0, 'theme_nice', 'theme_nice_image_product_width', '228', 0),
(1745, 0, 'theme_nice', 'theme_nice_image_popup_height', '500', 0),
(1744, 0, 'theme_nice', 'theme_nice_image_popup_width', '500', 0),
(1743, 0, 'theme_nice', 'theme_nice_image_thumb_height', '228', 0),
(1742, 0, 'theme_nice', 'theme_nice_image_thumb_width', '228', 0),
(1741, 0, 'theme_nice', 'theme_nice_image_manufacturer_height', '80', 0),
(1740, 0, 'theme_nice', 'theme_nice_image_manufacturer_width', '80', 0),
(1739, 0, 'theme_nice', 'theme_nice_image_category_height', '80', 0),
(1738, 0, 'theme_nice', 'theme_nice_image_category_width', '80', 0),
(1737, 0, 'theme_nice', 'theme_nice_product_description_length', '100', 0),
(1736, 0, 'theme_nice', 'theme_nice_product_limit', '15', 0),
(1735, 0, 'theme_nice', 'theme_nice_directory', 'nice', 0),
(1734, 0, 'theme_nice', 'theme_nice_status', '1', 0),
(1258, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(1926, 0, 'module_social_login', 'module_social_login_google_secret', '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', 0),
(1927, 0, 'module_social_login', 'module_social_login_google_callback', 'http://localhost/shop_project1/index.php?route=extension/module/social_login/account/google', 0),
(1922, 0, 'module_social_login', 'module_social_login_facebook_callback', 'http://localhost/shop_project1/index.php?route=extension/module/social_login/account/fb', 0),
(1925, 0, 'module_social_login', 'module_social_login_google_client_id', '627878842234-77d43u2t00j77jj8lvnbjgivptqe12qn.apps.googleusercontent.com', 0),
(1924, 0, 'module_social_login', 'module_social_login_google_status', '1', 0),
(1923, 0, 'module_social_login', 'module_social_login_facebook_image', '', 0),
(1921, 0, 'module_social_login', 'module_social_login_facebook_secret', '', 0),
(1919, 0, 'module_social_login', 'module_social_login_facebook_status', '0', 0),
(1920, 0, 'module_social_login', 'module_social_login_facebook_app_id', '', 0),
(1918, 0, 'module_social_login', 'module_social_login_status', '1', 0),
(1292, 0, 'module_pilibaba_button', 'module_pilibaba_button_status', '1', 0),
(2842, 0, 'payment_pp_express', 'payment_pp_express_colour', '', 0),
(2841, 0, 'payment_pp_express', 'payment_pp_express_allow_note', '1', 0),
(2840, 0, 'payment_pp_express', 'payment_pp_express_voided_status_id', '16', 0),
(2837, 0, 'payment_pp_express', 'payment_pp_express_processed_status_id', '15', 0),
(2838, 0, 'payment_pp_express', 'payment_pp_express_refunded_status_id', '11', 0),
(2839, 0, 'payment_pp_express', 'payment_pp_express_reversed_status_id', '12', 0),
(2836, 0, 'payment_pp_express', 'payment_pp_express_pending_status_id', '1', 0),
(2530, 0, 'module_pp_braintree_button', 'module_pp_braintree_button_status', '1', 0),
(1315, 0, 'd_quickcheckout', 'd_quickcheckout_status', '1', 0),
(1316, 0, 'd_quickcheckout', 'd_quickcheckout_rtl', '{\"en-gb\":\"1\",\"vi-vn\":\"0\"}', 1),
(2202, 0, 'd_ajax_search', 'd_ajax_search_status', '1', 0),
(2203, 0, 'd_ajax_search', 'd_ajax_search_setting', '{\"class\":\"#search [name=search], #search [name=filter_name], #search [name=search_oc], #search_input\",\"max_symbols\":\"0\",\"extension\":{\"product_simple\":{\"sort_order\":\"0\",\"enabled\":\"1\",\"max_count\":\"7\",\"query\":{\"Name\":\"1\",\"Description\":\"1\",\"Model\":\"1\"}}},\"price\":\"1\",\"where_search\":\"1\",\"width\":\"372px\",\"max_results\":\"7\",\"block_result\":\"1\",\"image_width\":\"60\",\"image_height\":\"60\",\"all_result_status\":\"1\",\"all_result_count\":\"5\"}', 1),
(2201, 0, 'module_d_ajax_search', 'module_d_ajax_search_status', '1', 0),
(2527, 0, 'module_paypal_smart_button', 'module_paypal_smart_button_status', '1', 0),
(2438, 0, 'config', 'config_meta_description', '7 Shop', 0),
(2437, 0, 'config', 'config_meta_title', '7Shop', 0),
(1929, 0, 'module_optionfilter', 'module_optionfilter_status', '1', 0),
(1928, 0, 'module_social_login', 'module_social_login_google_image', '', 0),
(1916, 0, 'd_social_login', 'd_social_login_status', '0', 0),
(1917, 0, 'd_social_login', 'd_social_login_setting', '{\"providers\":{\"Google\":{\"id\":\"google\",\"sort_order\":\"1\",\"enabled\":\"1\",\"icon\":\"google.svg\",\"background_color\":\"#dd4b39\",\"background_color_active\":\"#be3e2e\",\"background_color_hover\":\"#be3e2e\",\"keys\":{\"id\":\"627878842234-77d43u2t00j77jj8lvnbjgivptqe12qn.apps.googleusercontent.com\",\"secret\":\"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\"},\"scope\":\"https:\\/\\/www.googleapis.com\\/auth\\/userinfo.email\"},\"Yahoo\":{\"id\":\"yahoo\",\"sort_order\":\"4\",\"enabled\":\"0\",\"icon\":\"yahoo.svg\",\"background_color\":\"#500095\",\"background_color_active\":\"#3d026f\",\"background_color_hover\":\"#3d026f\",\"keys\":{\"id\":\"\",\"secret\":\"\"}},\"LinkedIn\":{\"id\":\"linkedin\",\"sort_order\":\"5\",\"enabled\":\"0\",\"icon\":\"linkedin.svg\",\"background_color\":\"#2a72b6\",\"background_color_active\":\"#21588d\",\"background_color_hover\":\"#21588d\",\"keys\":{\"key\":\"\",\"secret\":\"\"}},\"Steam\":{\"id\":\"steam\",\"sort_order\":\"15\",\"enabled\":\"0\",\"icon\":\"steam.svg\",\"background_color\":\"#171a21\",\"background_color_active\":\"#000000\",\"background_color_hover\":\"#000000\",\"keys\":{\"key\":\"\"}}},\"title\":{\"1\":\"Sign in\",\"2\":\"Sign in\"},\"size\":\"large\",\"customer_group\":\"1\",\"newsletter\":\"1\",\"header\":\"0\",\"return_page_url\":\"\",\"debug_mode\":\"0\",\"iframe\":\"1\",\"background_img\":\"catalog\\/d_social_login\\/bg.png\",\"fields\":{\"email\":{\"id\":\"email\",\"enabled\":\"1\",\"required\":\"1\",\"sort_order\":\"0\",\"type\":\"email\"},\"firstname\":{\"id\":\"firstname\",\"enabled\":\"1\",\"required\":\"1\",\"sort_order\":\"1\",\"type\":\"text\"},\"lastname\":{\"id\":\"lastname\",\"enabled\":\"1\",\"required\":\"1\",\"sort_order\":\"2\",\"type\":\"text\"},\"telephone\":{\"id\":\"telephone\",\"enabled\":\"1\",\"required\":\"1\",\"sort_order\":\"3\",\"type\":\"tel\",\"mask\":\"9(999) 9999-9999?9\"},\"address_1\":{\"id\":\"address_1\",\"enabled\":\"1\",\"required\":\"0\",\"sort_order\":\"4\",\"type\":\"text\"},\"address_2\":{\"id\":\"address_2\",\"enabled\":\"1\",\"required\":\"0\",\"sort_order\":\"5\",\"type\":\"text\"},\"city\":{\"id\":\"city\",\"enabled\":\"1\",\"required\":\"0\",\"sort_order\":\"6\",\"type\":\"text\"},\"postcode\":{\"id\":\"postcode\",\"enabled\":\"1\",\"required\":\"0\",\"sort_order\":\"7\",\"type\":\"text\"},\"country_id\":{\"id\":\"country_id\",\"enabled\":\"1\",\"required\":\"0\",\"sort_order\":\"8\",\"type\":\"select\"},\"zone_id\":{\"id\":\"zone_id\",\"enabled\":\"1\",\"required\":\"0\",\"sort_order\":\"9\",\"type\":\"select\"},\"company\":{\"id\":\"company\",\"enabled\":\"1\",\"required\":\"0\",\"sort_order\":\"10\",\"type\":\"text\"},\"password\":{\"id\":\"password\",\"enabled\":\"1\",\"required\":\"0\",\"sort_order\":\"13\",\"type\":\"password\"},\"confirm\":{\"id\":\"confirm\",\"enabled\":\"1\",\"required\":\"0\",\"sort_order\":\"14\",\"type\":\"password\"}},\"debug_file\":\"d_social_login.txt\"}', 1),
(1915, 0, 'module_d_social_login', 'module_d_social_login_status', '0', 0),
(2833, 0, 'payment_pp_express', 'payment_pp_express_denied_status_id', '8', 0),
(2831, 0, 'payment_pp_express', 'payment_pp_express_canceled_reversal_status_id', '9', 0),
(2832, 0, 'payment_pp_express', 'payment_pp_express_completed_status_id', '5', 0),
(2830, 0, 'payment_pp_express', 'payment_pp_express_sort_order', '', 0),
(2829, 0, 'payment_pp_express', 'payment_pp_express_geo_zone_id', '0', 0),
(2828, 0, 'payment_pp_express', 'payment_pp_express_total', '', 0),
(2827, 0, 'payment_pp_express', 'payment_pp_express_transaction', 'Authorization', 0),
(2826, 0, 'payment_pp_express', 'payment_pp_express_recurring_cancel', '1', 0),
(2824, 0, 'payment_pp_express', 'payment_pp_express_debug', '0', 0),
(2825, 0, 'payment_pp_express', 'payment_pp_express_currency', 'USD', 0),
(2823, 0, 'payment_pp_express', 'payment_pp_express_test', '1', 0),
(2822, 0, 'payment_pp_express', 'payment_pp_express_status', '1', 0),
(2848, 0, 'payment_paypal', 'payment_paypal_webhook_id', '', 0),
(2847, 0, 'payment_paypal', 'payment_paypal_merchant_id', '', 0),
(2846, 0, 'payment_paypal', 'payment_paypal_secret', '', 0),
(2845, 0, 'payment_paypal', 'payment_paypal_client_id', '', 0),
(2817, 0, 'payment_pp_express', 'payment_pp_express_password', '', 0),
(2818, 0, 'payment_pp_express', 'payment_pp_express_signature', '', 0),
(2819, 0, 'payment_pp_express', 'payment_pp_express_sandbox_username', 'sb-i3gip22737712_api1.business.example.com', 0),
(2820, 0, 'payment_pp_express', 'payment_pp_express_sandbox_password', 'WCRNY4JX5SZUENPE', 0),
(2821, 0, 'payment_pp_express', 'payment_pp_express_sandbox_signature', 'AEgNpJ7JBo2Og4krjrjA-mSf4bAxAgRw8Ubd8.qR866sSGn3eXG5xChd', 0),
(2816, 0, 'payment_pp_express', 'payment_pp_express_username', '', 0),
(2757, 0, 'payment_pp_braintree', 'payment_pp_braintree_voided_id', '16', 0),
(2756, 0, 'payment_pp_braintree', 'payment_pp_braintree_submitted_for_settlement_id', '2', 0),
(2755, 0, 'payment_pp_braintree', 'payment_pp_braintree_settling_id', '2', 0),
(2754, 0, 'payment_pp_braintree', 'payment_pp_braintree_settled_id', '2', 0),
(2753, 0, 'payment_pp_braintree', 'payment_pp_braintree_processor_declined_id', '8', 0),
(2752, 0, 'payment_pp_braintree', 'payment_pp_braintree_gateway_rejected_id', '8', 0),
(2751, 0, 'payment_pp_braintree', 'payment_pp_braintree_failed_id', '10', 0),
(2750, 0, 'payment_pp_braintree', 'payment_pp_braintree_settlement_pending_id', '2', 0),
(2749, 0, 'payment_pp_braintree', 'payment_pp_braintree_authorizing_id', '1', 0),
(2748, 0, 'payment_pp_braintree', 'payment_pp_braintree_authorized_id', '2', 0),
(2747, 0, 'payment_pp_braintree', 'payment_pp_braintree_authorization_expired_id', '14', 0),
(2746, 0, 'payment_pp_braintree', 'payment_pp_braintree_account', '{\"EUR\":{\"merchant_account_id\":\"\",\"status\":0},\"GBP\":{\"merchant_account_id\":\"\",\"status\":0},\"USD\":{\"merchant_account_id\":\"\",\"status\":0},\"VND\":{\"merchant_account_id\":\"\",\"status\":0}}', 1),
(2745, 0, 'payment_pp_braintree', 'payment_pp_braintree_sort_order', '', 0),
(2744, 0, 'payment_pp_braintree', 'payment_pp_braintree_status', '0', 0),
(2743, 0, 'payment_pp_braintree', 'payment_pp_braintree_geo_zone_id', '0', 0),
(2742, 0, 'payment_pp_braintree', 'payment_pp_braintree_total', '', 0),
(2741, 0, 'payment_pp_braintree', 'payment_pp_braintree_debug', '1', 0),
(2740, 0, 'payment_pp_braintree', 'payment_pp_braintree_settlement_immediate', '1', 0),
(2739, 0, 'payment_pp_braintree', 'payment_pp_braintree_environment', 'sandbox', 0),
(2738, 0, 'payment_pp_braintree', 'payment_pp_braintree_private_key', '', 0),
(2737, 0, 'payment_pp_braintree', 'payment_pp_braintree_public_key', '', 0),
(2736, 0, 'payment_pp_braintree', 'payment_pp_braintree_merchant_id', '', 0),
(2735, 0, 'payment_pp_braintree', 'payment_pp_braintree_refresh_token', '', 0),
(2734, 0, 'payment_pp_braintree', 'payment_pp_braintree_access_token', '', 0),
(2758, 0, 'payment_pp_braintree', 'payment_pp_braintree_3ds_status', '0', 0),
(2759, 0, 'payment_pp_braintree', 'payment_pp_braintree_card_vault', '1', 0),
(2760, 0, 'payment_pp_braintree', 'payment_pp_braintree_card_check_vault', '1', 0),
(2761, 0, 'payment_pp_braintree', 'payment_pp_braintree_vault_cvv_3ds', '0', 0),
(2762, 0, 'payment_pp_braintree', 'payment_pp_braintree_paypal_vault', '0', 0),
(2763, 0, 'payment_pp_braintree', 'payment_pp_braintree_paypal_check_vault', '0', 0),
(2764, 0, 'payment_pp_braintree', 'payment_pp_braintree_paypal_option', '0', 0),
(2765, 0, 'payment_pp_standard', 'payment_pp_standard_email', 'sb-i3gip22737712@business.example.com', 0),
(2766, 0, 'payment_pp_standard', 'payment_pp_standard_test', '1', 0),
(2767, 0, 'payment_pp_standard', 'payment_pp_standard_debug', '1', 0),
(2768, 0, 'payment_pp_standard', 'payment_pp_standard_transaction', '0', 0),
(2769, 0, 'payment_pp_standard', 'payment_pp_standard_total', '', 0),
(2770, 0, 'payment_pp_standard', 'payment_pp_standard_geo_zone_id', '0', 0),
(2771, 0, 'payment_pp_standard', 'payment_pp_standard_status', '1', 0),
(2772, 0, 'payment_pp_standard', 'payment_pp_standard_sort_order', '', 0),
(2773, 0, 'payment_pp_standard', 'payment_pp_standard_canceled_reversal_status_id', '7', 0),
(2774, 0, 'payment_pp_standard', 'payment_pp_standard_completed_status_id', '7', 0),
(2775, 0, 'payment_pp_standard', 'payment_pp_standard_denied_status_id', '7', 0),
(2776, 0, 'payment_pp_standard', 'payment_pp_standard_expired_status_id', '7', 0),
(2777, 0, 'payment_pp_standard', 'payment_pp_standard_failed_status_id', '7', 0),
(2778, 0, 'payment_pp_standard', 'payment_pp_standard_pending_status_id', '7', 0),
(2779, 0, 'payment_pp_standard', 'payment_pp_standard_processed_status_id', '7', 0),
(2780, 0, 'payment_pp_standard', 'payment_pp_standard_refunded_status_id', '7', 0),
(2781, 0, 'payment_pp_standard', 'payment_pp_standard_reversed_status_id', '7', 0),
(2782, 0, 'payment_pp_standard', 'payment_pp_standard_voided_status_id', '7', 0),
(2852, 0, 'shipping_free', 'shipping_free_sort_order', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_shipping_courier`
--

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '1985.0000'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '0.0000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '39ca118aaf862b3703342f48be01640e244da848', 'umCMFvNLw', 'John', 'Doe', 'test@gmail.com', '', '', '::1', 1, '2022-11-12 14:30:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/theme\",\"design\\/translation\",\"design\\/seo_url\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/marketing\\/remarketing\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/payment\\/pp_braintree\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/theme\\/nice\",\"extension\\/module\\/nice_slideshow\",\"extension\\/module\\/nice_megamenu\",\"extension\\/module\\/social_login\",\"extension\\/module\\/nice_slideshow\",\"extension\\/module\\/nice_slideshow\",\"extension\\/module\\/nice_megamenu\",\"extension\\/module\\/nice_megamenu\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/d_quickcheckout\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/module\\/d_quickcheckout\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/theme\\/nice\",\"extension\\/module\\/nice_slideshow\",\"extension\\/module\\/nice_megamenu\",\"extension\\/module\\/d_social_login\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/module\\/social_login\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/module\\/optionfilter\",\"extension\\/module\\/d_ajax_search\",\"extension\\/d_ajax_search\",\"extension\\/d_ajax_search\\/product_simple\",\"extension\\/d_ajax_search\\/product_simple\",\"extension\\/d_ajax_search\\/product_simple\",\"extension\\/module\\/nice_megamenu\",\"extension\\/module\\/nice_megamenu\",\"extension\\/module\\/responsive_slideshow\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_standard\",\"extension\\/module\\/paypal_smart_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/paypal\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_braintree\",\"extension\\/shipping\\/free\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/theme\",\"design\\/translation\",\"design\\/seo_url\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/marketing\\/remarketing\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/payment\\/pp_braintree\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/event\",\"marketplace\\/api\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/theme\\/nice\",\"extension\\/module\\/nice_slideshow\",\"extension\\/module\\/nice_megamenu\",\"extension\\/module\\/social_login\",\"extension\\/module\\/nice_slideshow\",\"extension\\/module\\/nice_slideshow\",\"extension\\/module\\/nice_megamenu\",\"extension\\/module\\/nice_megamenu\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/d_quickcheckout\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/module\\/d_quickcheckout\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/theme\\/nice\",\"extension\\/module\\/nice_slideshow\",\"extension\\/module\\/nice_megamenu\",\"extension\\/module\\/d_social_login\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/module\\/social_login\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/\",\"extension\\/\\/d_validator\",\"extension\\/module\\/optionfilter\",\"extension\\/module\\/d_ajax_search\",\"extension\\/d_ajax_search\",\"extension\\/d_ajax_search\\/product_simple\",\"extension\\/d_ajax_search\\/product_simple\",\"extension\\/d_ajax_search\\/product_simple\",\"extension\\/module\\/nice_megamenu\",\"extension\\/module\\/nice_megamenu\",\"extension\\/module\\/responsive_slideshow\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_standard\",\"extension\\/module\\/paypal_smart_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/paypal\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_braintree\",\"extension\\/shipping\\/free\"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT 0.00000000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abū Z̧aby', 'AZ', 1),
(3507, 221, '‘Ajmān', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shāriqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'Ra’s al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1),
(4236, 105, 'Barletta-Andria-Trani', 'BT', 1),
(4237, 105, 'Fermo', 'FM', 1),
(4238, 105, 'Monza Brianza', 'MB', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Chỉ mục cho bảng `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Chỉ mục cho bảng `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Chỉ mục cho bảng `oc_as_customer_query`
--
ALTER TABLE `oc_as_customer_query`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_duplicate` (`customer_id`,`text`,`choose`);

--
-- Chỉ mục cho bảng `oc_as_query`
--
ALTER TABLE `oc_as_query`
  ADD PRIMARY KEY (`query_id`),
  ADD UNIQUE KEY `no_duplicate` (`text`);

--
-- Chỉ mục cho bảng `oc_as_query_results`
--
ALTER TABLE `oc_as_query_results`
  ADD PRIMARY KEY (`query_results_id`),
  ADD UNIQUE KEY `no_duplicate` (`query_id`,`type`,`type_id`);

--
-- Chỉ mục cho bảng `oc_as_statistic`
--
ALTER TABLE `oc_as_statistic`
  ADD PRIMARY KEY (`statistic_id`),
  ADD UNIQUE KEY `no_duplicate` (`select`);

--
-- Chỉ mục cho bảng `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Chỉ mục cho bảng `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Chỉ mục cho bảng `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Chỉ mục cho bảng `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Chỉ mục cho bảng `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Chỉ mục cho bảng `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Chỉ mục cho bảng `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Chỉ mục cho bảng `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Chỉ mục cho bảng `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Chỉ mục cho bảng `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Chỉ mục cho bảng `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Chỉ mục cho bảng `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Chỉ mục cho bảng `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Chỉ mục cho bảng `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Chỉ mục cho bảng `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Chỉ mục cho bảng `oc_customer_authentication`
--
ALTER TABLE `oc_customer_authentication`
  ADD PRIMARY KEY (`customer_authentication_id`),
  ADD UNIQUE KEY `identifier` (`identifier`,`provider`);

--
-- Chỉ mục cho bảng `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Chỉ mục cho bảng `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Chỉ mục cho bảng `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Chỉ mục cho bảng `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Chỉ mục cho bảng `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Chỉ mục cho bảng `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Chỉ mục cho bảng `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Chỉ mục cho bảng `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Chỉ mục cho bảng `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Chỉ mục cho bảng `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Chỉ mục cho bảng `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Chỉ mục cho bảng `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Chỉ mục cho bảng `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Chỉ mục cho bảng `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_dqc_setting`
--
ALTER TABLE `oc_dqc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Chỉ mục cho bảng `oc_dqc_setting_data`
--
ALTER TABLE `oc_dqc_setting_data`
  ADD PRIMARY KEY (`setting_id`,`key`);

--
-- Chỉ mục cho bảng `oc_dqc_statistic`
--
ALTER TABLE `oc_dqc_statistic`
  ADD PRIMARY KEY (`statistic_id`);

--
-- Chỉ mục cho bảng `oc_d_validator`
--
ALTER TABLE `oc_d_validator`
  ADD PRIMARY KEY (`validator_id`);

--
-- Chỉ mục cho bảng `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Chỉ mục cho bảng `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Chỉ mục cho bảng `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Chỉ mục cho bảng `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Chỉ mục cho bảng `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Chỉ mục cho bảng `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Chỉ mục cho bảng `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Chỉ mục cho bảng `oc_googleshopping_category`
--
ALTER TABLE `oc_googleshopping_category`
  ADD PRIMARY KEY (`google_product_category`,`store_id`),
  ADD KEY `category_id_store_id` (`category_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_googleshopping_product`
--
ALTER TABLE `oc_googleshopping_product`
  ADD PRIMARY KEY (`product_advertise_google_id`),
  ADD UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_googleshopping_product_status`
--
ALTER TABLE `oc_googleshopping_product_status`
  ADD PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`);

--
-- Chỉ mục cho bảng `oc_googleshopping_product_target`
--
ALTER TABLE `oc_googleshopping_product_target`
  ADD PRIMARY KEY (`product_id`,`advertise_google_target_id`);

--
-- Chỉ mục cho bảng `oc_googleshopping_target`
--
ALTER TABLE `oc_googleshopping_target`
  ADD PRIMARY KEY (`advertise_google_target_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Chỉ mục cho bảng `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Chỉ mục cho bảng `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Chỉ mục cho bảng `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Chỉ mục cho bảng `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Chỉ mục cho bảng `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Chỉ mục cho bảng `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Chỉ mục cho bảng `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Chỉ mục cho bảng `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Chỉ mục cho bảng `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Chỉ mục cho bảng `oc_nice_slideshow`
--
ALTER TABLE `oc_nice_slideshow`
  ADD PRIMARY KEY (`slideshow_id`);

--
-- Chỉ mục cho bảng `oc_nice_slideshow_image`
--
ALTER TABLE `oc_nice_slideshow_image`
  ADD PRIMARY KEY (`slideshow_image_id`,`slideshow_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Chỉ mục cho bảng `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Chỉ mục cho bảng `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Chỉ mục cho bảng `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Chỉ mục cho bảng `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Chỉ mục cho bảng `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Chỉ mục cho bảng `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Chỉ mục cho bảng `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Chỉ mục cho bảng `oc_paypal_order`
--
ALTER TABLE `oc_paypal_order`
  ADD PRIMARY KEY (`paypal_order_id`);

--
-- Chỉ mục cho bảng `oc_paypal_order_transaction`
--
ALTER TABLE `oc_paypal_order_transaction`
  ADD PRIMARY KEY (`paypal_order_transaction_id`);

--
-- Chỉ mục cho bảng `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Chỉ mục cho bảng `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Chỉ mục cho bảng `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Chỉ mục cho bảng `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Chỉ mục cho bảng `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Chỉ mục cho bảng `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Chỉ mục cho bảng `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Chỉ mục cho bảng `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Chỉ mục cho bảng `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Chỉ mục cho bảng `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Chỉ mục cho bảng `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Chỉ mục cho bảng `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Chỉ mục cho bảng `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Chỉ mục cho bảng `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Chỉ mục cho bảng `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Chỉ mục cho bảng `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Chỉ mục cho bảng `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Chỉ mục cho bảng `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Chỉ mục cho bảng `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Chỉ mục cho bảng `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Chỉ mục cho bảng `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Chỉ mục cho bảng `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Chỉ mục cho bảng `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Chỉ mục cho bảng `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Chỉ mục cho bảng `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Chỉ mục cho bảng `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Chỉ mục cho bảng `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Chỉ mục cho bảng `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Chỉ mục cho bảng `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Chỉ mục cho bảng `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `oc_as_customer_query`
--
ALTER TABLE `oc_as_customer_query`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oc_as_query`
--
ALTER TABLE `oc_as_query`
  MODIFY `query_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `oc_as_query_results`
--
ALTER TABLE `oc_as_query_results`
  MODIFY `query_results_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oc_as_statistic`
--
ALTER TABLE `oc_as_statistic`
  MODIFY `statistic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT cho bảng `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT cho bảng `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_customer_authentication`
--
ALTER TABLE `oc_customer_authentication`
  MODIFY `customer_authentication_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_dqc_setting`
--
ALTER TABLE `oc_dqc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `oc_dqc_setting_data`
--
ALTER TABLE `oc_dqc_setting_data`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_dqc_statistic`
--
ALTER TABLE `oc_dqc_statistic`
  MODIFY `statistic_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_d_validator`
--
ALTER TABLE `oc_d_validator`
  MODIFY `validator_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3879;

--
-- AUTO_INCREMENT cho bảng `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `oc_googleshopping_product`
--
ALTER TABLE `oc_googleshopping_product`
  MODIFY `product_advertise_google_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `oc_nice_slideshow`
--
ALTER TABLE `oc_nice_slideshow`
  MODIFY `slideshow_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_nice_slideshow_image`
--
ALTER TABLE `oc_nice_slideshow_image`
  MODIFY `slideshow_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT cho bảng `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=593;

--
-- AUTO_INCREMENT cho bảng `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1727;

--
-- AUTO_INCREMENT cho bảng `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_paypal_order`
--
ALTER TABLE `oc_paypal_order`
  MODIFY `paypal_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `oc_paypal_order_transaction`
--
ALTER TABLE `oc_paypal_order_transaction`
  MODIFY `paypal_order_transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT cho bảng `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2352;

--
-- AUTO_INCREMENT cho bảng `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT cho bảng `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=546;

--
-- AUTO_INCREMENT cho bảng `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT cho bảng `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=844;

--
-- AUTO_INCREMENT cho bảng `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2853;

--
-- AUTO_INCREMENT cho bảng `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT cho bảng `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4239;

--
-- AUTO_INCREMENT cho bảng `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
