UPDATE `pages` SET `url_key`='our-store' WHERE `id`='7';

CREATE  TABLE `products` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `category` VARCHAR(45) NOT NULL DEFAULT 'Beauty Products' ,
  `description` VARCHAR(45) NOT NULL ,
  `price` DOUBLE NOT NULL ,
  `image_file_name` VARCHAR(255) NULL ,
  `image_content_type` VARCHAR(45) NULL ,
  `image_file_size` INT NULL ,
  `created_at` TIMESTAMP NOT NULL ,
  `updated_at` TIMESTAMP NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;

-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 28, 2011 at 06:58 PM
-- Server version: 5.1.44
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `potter_kuuleilani`
--

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `description`, `price`, `image_file_name`, `image_content_type`, `image_file_size`, `created_at`, `updated_at`) VALUES
(1, 'Hemp Lotion', 'Beauty Products', '2 ounce bottle', 7, 'hemp_lotion.jpg', 'image/jpeg', 38624, '2011-11-28 12:50:01', '2011-11-28 12:50:01'),
(2, 'Hemp Lotion', 'Beauty Products', '28 ounce bottle', 28, 'hemp_lotion.jpg', 'image/jpeg', 38624, '2011-11-28 12:50:37', '2011-11-28 12:50:37'),
(3, 'Moroccan Oil', 'Beauty Products', '2 ounce bottle', 22, 'moroccan_oil.jpg', 'image/jpeg', 39042, '2011-11-28 12:50:57', '2011-11-28 12:50:57'),
(4, 'Herbal Teas', 'Beauty Products', '.5 ounce (5 tea bags)', 5, 'herbal_teas.jpg', 'image/jpeg', 46398, '2011-11-28 12:51:17', '2011-11-28 12:51:17'),
(5, 'Herbal Teas', 'Beauty Products', '1.5 ounce (loose tea)', 10, 'herbal_teas.jpg', 'image/jpeg', 46398, '2011-11-28 12:51:39', '2011-11-28 12:51:39'),
(6, 'Aroma Therapy Mist', 'Beauty Products', 'Calming (4 ounce bottle)', 15, 'aroma_therapy_mist.jpg', 'image/jpeg', 48933, '2011-11-28 12:52:32', '2011-11-28 12:52:32'),
(7, 'Aroma Therapy Mist', 'Beauty Products', 'Heart Song (4 ounce bottle)', 15, 'aroma_therapy_mist.jpg', 'image/jpeg', 48933, '2011-11-28 12:52:49', '2011-11-28 12:52:49'),
(8, 'Aroma Therapy Mist', 'Beauty Products', 'Thieves (4 ounce bottle)', 15, 'aroma_therapy_mist.jpg', 'image/jpeg', 48933, '2011-11-28 12:53:04', '2011-11-28 12:53:04'),
(9, 'Aroma Therapy Mist', 'Beauty Products', 'Radience (4 ounce bottle)', 15, 'aroma_therapy_mist.jpg', 'image/jpeg', 48933, '2011-11-28 12:53:18', '2011-11-28 12:53:18'),
(10, 'Aroma Therapy Mist', 'Beauty Products', 'Energize (4 ounce bottle)', 15, 'aroma_therapy_mist.jpg', 'image/jpeg', 48933, '2011-11-28 12:53:32', '2011-11-28 12:53:32'),
(11, 'Soy Massage Candles', 'Beauty Products', '6.8 ounce Candle', 25, 'soy_massage_candles.jpg', 'image/jpeg', 45196, '2011-11-28 12:54:07', '2011-11-28 12:54:07'),
(12, 'Shakeology', 'Beauty Products', '7 day pack', 50, 'shakeology.jpg', 'image/jpeg', 42016, '2011-11-28 12:54:23', '2011-11-28 12:54:23'),
(13, 'Shakeology', 'Beauty Products', '25 day pack', 90, 'shakeology.jpg', 'image/jpeg', 42016, '2011-11-28 12:54:37', '2011-11-28 12:54:37'),
(14, 'Shakeology', 'Beauty Products', '1 Month pack', 125, 'shakeology.jpg', 'image/jpeg', 42016, '2011-11-28 12:54:52', '2011-11-28 12:54:52'),
(15, 'Tropical Wash Set', 'Beauty Products', 'Bar Soap, Lotion, Body Wash', 35, 'tropical_wash_set.jpg', 'image/jpeg', 50892, '2011-11-28 12:55:20', '2011-11-28 12:55:20'),
(16, 'Hemp Sunless Tan', 'Beauty Products', 'Organic Sunless Tanning', 28, 'hemp_sunless_tan.jpg', 'image/jpeg', 36868, '2011-11-28 12:55:41', '2011-11-28 12:55:41');

CREATE TABLE `addresses` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `zip` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `cart_line_items` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cart_id` int(10) NOT NULL,
  `product_id` int(10) DEFAULT NULL,
  `quantity` int(10) NOT NULL,
  `line_total` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `cart_id` (`cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `carts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `session_id` (`session_id`),
  KEY `session_id_2` (`session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `transactions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL,
  `command` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `success` tinyint(1) NOT NULL,
  `response` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avs` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `billing_address_id` int(10) NOT NULL,
  `shipping_address_id` int(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;


