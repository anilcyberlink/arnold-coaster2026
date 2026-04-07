-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 07, 2026 at 01:16 AM
-- Server version: 8.0.45
-- PHP Version: 8.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arnold_coster_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cl_associated_posts`
--

CREATE TABLE `cl_associated_posts` (
  `id` int UNSIGNED NOT NULL,
  `post_id` int NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brief` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int DEFAULT NULL,
  `uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_associated_posts`
--

INSERT INTO `cl_associated_posts` (`id`, `post_id`, `title`, `brief`, `thumbnail`, `ordering`, `uri`, `page_key`, `created_at`, `updated_at`) VALUES
(3, 18, 'Sharing our Love of Travel Since 1998', '<p>\r\n\r\nOur office staff, guides, and support staff are all local to the towns and villages we pass through on our tours. All are experienced, registered, and qualified. Our extensive local knowledge as well as our experience and local contacts mean that we are able to provide the best service to our clients. We are proud of our reputation for quality, innovation and overall customer service with a focus on cultural and environmentally responsible travel. We aim to provide you with a friendly and personal service to a very high standard, at competitive and fair prices. We ensure you a truly memorable adventure!\r\n\r\n<br></p>', '1672574303.png', NULL, 'Sharing-our-Love-of-Travel-Since-1998', '1672574256892', '2023-01-01 22:42:36', '2023-01-01 22:43:23'),
(4, 18, 'Just a little more thought and care', '<p>\r\n\r\nAdventure tourism continues to grow worldwide and with that, so too does the accompanying pressures and impacts on local environments and communities in the places we visit. And with many travellers visiting Nepal and the Himalaya each year, the strain on this beautiful environment also continues to increase. We have seen at first hand the effect tourism has on local communities – both good and bad. Being responsible and protecting the environment does not mean a compromise in quality or standards of travel, if anything it requires just a little more thought and care and there are many admirable examples of how tourism can benefit and sustain the environment and indigenous peoples.\r\n\r\n<br></p>', '1672574737.png', 1, 'Just-a-little-more-thought-and-care', '1672574737591', '2023-01-01 22:50:37', '2023-01-01 22:50:37'),
(5, 17, 'Responsible Tourism', '<p>We do not only focus on promoting the local culture, lifestyle and natural beauty but aim to preserve it too</p>\r\n\r\n<br><p></p>', '1672651020.svg', 1, 'Responsible-Tourism', '1672650965612', '2023-01-02 20:01:05', '2023-01-02 20:49:35'),
(6, 17, 'Local Experts', '<p>From our managers to local guides, all are trained and skilled professionals who guarantees you absolute best travel experience</p>\r\n\r\n<br><p></p>', '1672653806.svg', 2, 'Local-Experts', '1672653806712', '2023-01-02 20:48:26', '2023-01-02 20:49:40'),
(7, 17, 'Safety', '<p>Our adventure guides are well trained and equipped in first aid and emergency rescue protocols to ensure your safety.<br>\r\n\r\n<br></p>', '1672653822.svg', 3, 'Safety', '1672653822913', '2023-01-02 20:48:42', '2023-01-02 20:48:42'),
(8, 17, 'Reliability', '<p>\r\n\r\nOur company policies and our secure payment channel emphasizes on security of your personal information<br>\r\n\r\n<br></p>', '1672653852.svg', 4, 'Reliability', '1672653852974', '2023-01-02 20:49:12', '2023-01-02 20:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `cl_banner`
--

CREATE TABLE `cl_banner` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_banner`
--

INSERT INTO `cl_banner` (`id`, `title`, `caption`, `picture`, `link`, `youtube_link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Seven Summit Treks', NULL, 'sst-logo-CSiekBbDiYjyqhbgi2ADOavEOtfwhEj22V47ID7J.png', 'https://sevensummittreks.com/', NULL, 1, '2023-01-02 19:58:27', '2024-04-08 20:44:42'),
(2, 'Scarpa', NULL, '04-19QeZHBLFXWiEHfG1lQQRkwb6CjtoLzEc7XQkANq.jpg', 'https://en-de.scarpa.com/', NULL, 1, '2023-01-03 16:20:08', '2024-11-27 18:05:42'),
(4, 'Xtra Link', NULL, '02-CCUM0ObFvsoo215JjQGlt6SQIe0qXLMmZf5rz9hP.jpg', 'https://www.xtra-link.com/', NULL, 1, '2023-02-09 05:26:51', '2024-05-02 16:03:07'),
(5, 'Osprey', NULL, '03-rqwNQRpfmDl6wZN4EoCPNvusTg4rPyTCVfsYiCxY.jpg', 'https://www.osprey.com/', NULL, 1, '2023-02-09 05:27:09', '2024-05-02 15:59:56'),
(6, 'Kailas', NULL, 'kailash-SpUuGX0ZAh14XGhHYje9j0nAER5JK9TcuICMm2n4.png', 'www.kailasgear.com', NULL, 1, '2024-02-28 14:51:09', '2024-04-10 15:32:27'),
(7, 'Nordisk', NULL, 'nordisk-RuhenMCzKlvzC8UnsMudGSeCFHZc83FjM0BtibGe.jpg', 'https://nordisk.eu/', NULL, 1, '2024-11-26 14:32:02', '2024-11-26 16:06:26');

-- --------------------------------------------------------

--
-- Table structure for table `cl_cost_excludes`
--

CREATE TABLE `cl_cost_excludes` (
  `id` int UNSIGNED NOT NULL,
  `trip_detail_id` int NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ordering` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_cost_excludes`
--

INSERT INTO `cl_cost_excludes` (`id`, `trip_detail_id`, `title`, `content`, `ordering`, `created_at`, `updated_at`) VALUES
(68, 105, 'Air travel to Kathmandu.', NULL, 1, '2024-05-20 18:31:42', '2024-05-20 18:31:42'),
(69, 105, 'Personal climbing clothes and equipment.', NULL, 2, '2024-05-20 18:31:42', '2024-05-20 18:31:42'),
(70, 105, 'Personal insurance, visas and inoculations.', NULL, 3, '2024-05-20 18:31:42', '2024-05-20 18:31:42'),
(71, 105, 'Food whilst the team is in Kathmandu.', NULL, 4, '2024-05-20 18:31:42', '2024-05-20 18:31:42'),
(72, 105, 'Importation taxes incurred by your personal equipment (e.g. satellite telephone and other high-tech equipment).', NULL, 5, '2024-05-20 18:31:42', '2024-05-20 18:31:42'),
(73, 105, 'Personal medical supplies and personal use of communication equipment.', NULL, 6, '2024-05-20 18:31:42', '2024-05-20 18:31:42'),
(74, 105, 'Tips and Sherpa Bonus.', NULL, 7, '2024-05-20 18:31:42', '2024-05-20 18:31:42'),
(75, 105, 'Additional Helicopter flights.', NULL, 8, '2024-05-20 18:31:42', '2024-05-20 18:31:42'),
(76, 105, 'Anything of Personal nature.', NULL, 9, '2024-05-20 18:31:42', '2024-05-20 18:31:42'),
(113, 117, 'Air travel to Kathmandu.', NULL, 1, '2024-05-27 16:06:24', '2024-05-27 16:06:24'),
(114, 117, 'Personal climbing clothes and equipment.', NULL, 2, '2024-05-27 16:06:24', '2024-05-27 16:06:24'),
(115, 117, 'Personal insurance,  visas and inoculations, food whilst the team is in Kathmandu.', NULL, 3, '2024-05-27 16:06:24', '2024-05-27 16:06:24'),
(116, 117, 'Importation taxes incurred by  your personal equipment (e.g. satellite telephone and other high-tech equipment).', NULL, 4, '2024-05-27 16:06:24', '2024-05-27 16:06:24'),
(117, 117, 'Personal  medical supplies and personal use of communication equipment.', NULL, 5, '2024-05-27 16:06:24', '2024-05-27 16:06:24'),
(118, 117, 'Tips and Sherpa Bonus.', NULL, 6, '2024-05-27 16:06:24', '2024-05-27 16:06:24'),
(128, 41, 'AIRFARE : International flight airfare (from and to Kathmandu).', NULL, 1, '2024-11-28 17:14:05', '2024-11-28 17:14:05'),
(129, 41, 'NEPAL ENTRY VISA FEES : Nepalese Visa Fee is $125 USD for 90 Days. (Apply for Multiple Entry Visa).', NULL, 2, '2024-11-28 17:14:05', '2024-11-28 17:14:05'),
(130, 41, 'LUNCH & DINNER : Lunch & dinner during the stay in Kathmandu (also in case of early return from Trekking / Expedition than the scheduled itinerary).', NULL, 3, '2024-11-28 17:14:05', '2024-11-28 17:14:05'),
(131, 41, 'EXTRA NIGHTS IN KATHMANDU : Extra nights’ accommodation in Kathmandu. In case of early arrival or late departure, early return from Trekking / Expedition, or domestic flight cancellation (due to any other reason) than the scheduled itinerary.', NULL, 4, '2024-11-28 17:14:05', '2024-11-28 17:14:05'),
(132, 41, 'TRIP EXPANSION : Any types of trips or programs not included in the program for any reason.', NULL, 5, '2024-11-28 17:14:05', '2024-11-28 17:14:05'),
(133, 41, 'EARLY RETURN FROM THE TRIP : Withdraw early from the trip, it will take at least 1-2 days for the arrangements of the porters, and manage all the logistics. This will cost you an extra mandatory price for all the necessary arrangements on the way back from the base camp.', NULL, 6, '2024-11-28 17:14:05', '2024-11-28 17:14:05'),
(134, 41, 'INSURANCE POLICY : Insurance covering both medical and high-altitude evacuation costs (for the trip cancellation, interruption, high-altitude rescue & air evacuation, medical treatment, repatriation, etc.) *Mandatory (Send us a copy of your insurance policy- before your arrival.)', NULL, 7, '2024-11-28 17:14:05', '2024-11-28 17:14:05'),
(135, 41, 'PERSONAL EXPENSES : Telephone Calls, Internet, Toiletries, battery recharge, hot shower, bottled / mineral water, laundry, soft drinks, beers, and any Alcoholic beverages (during the trek and in Kathmandu but we will have soft drinks for members at base camp).', NULL, 8, '2024-11-28 17:14:05', '2024-11-28 17:14:05'),
(136, 41, 'PERSONAL CLIMBING EQUIPMENT : Clothing, Packing Items, Bags, Personal Medical Kit, and all kinds of Personal Trekking / Climbing Gear.', NULL, 9, '2024-11-28 17:14:05', '2024-11-28 17:14:05'),
(137, 41, 'TOILETRIES : Soaps, shampoos, toilet and tissue papers, toothpaste, and other items used to keep yourself clean.', NULL, 10, '2024-11-28 17:14:05', '2024-11-28 17:14:05'),
(138, 41, 'FILMING : Special Filming, Camera, and Drone permit fee.', NULL, 11, '2024-11-28 17:14:05', '2024-11-28 17:14:05'),
(139, 41, 'INTERNET SERVICE : Not included during the trek and expedition.', NULL, 12, '2024-11-28 17:14:05', '2024-11-28 17:14:05'),
(140, 41, 'SUMMIT BONUS : Summit bonus for each climbing Sherpa- Minimum $ 1800 USD.', NULL, 13, '2024-11-28 17:14:05', '2024-11-28 17:14:05'),
(141, 41, 'TIPS : Each member needs to contribute a minimum of $100 USD for Guide and $400 USD for Basecamp, high camp, and other.', NULL, 14, '2024-11-28 17:14:05', '2024-11-28 17:14:05'),
(142, 41, 'YAKS : Per yak, it\'s $ 500 USD additional if the required luggage limit exceeds, a, (1 Yak can carry up to 50 KG).', NULL, 15, '2024-11-28 17:14:05', '2024-11-28 17:14:05'),
(143, 41, 'EXTRA : Any other services or activities, which are not mentioned in the itinerary and not listed in the “Cost Includes” section.', NULL, 16, '2024-11-28 17:14:05', '2024-11-28 17:14:05'),
(144, 119, 'Flights to/from Timika', NULL, 1, '2024-11-28 17:30:49', '2026-04-06 16:33:57'),
(145, 119, 'Cost of Indonesian visa', NULL, 2, '2024-11-28 17:30:49', '2026-04-06 16:33:57'),
(146, 119, 'Single rooms in Hotels & tents Base camp', NULL, 3, '2024-11-28 17:30:49', '2026-04-06 16:33:57'),
(147, 119, 'Sleeping bag and mattress', NULL, 4, '2024-11-28 17:30:49', '2026-04-06 16:33:57'),
(148, 119, 'Personal climbing equipment (detailed gear list will be provided up on registration)', NULL, 5, '2024-11-28 17:30:49', '2026-04-06 16:33:57'),
(149, 119, 'Meals & Drinks while in Timika (except Breakfast)', NULL, 6, '2024-11-28 17:30:49', '2026-04-06 16:33:57'),
(150, 119, 'Room service, laundry etc. and other extra’s', NULL, 7, '2024-11-28 17:30:49', '2026-04-06 16:33:57'),
(151, 119, 'Costs for excess luggage', NULL, 8, '2024-11-28 17:30:49', '2026-04-06 16:33:57'),
(152, 119, 'Cost of sightseeing tour in Jakarta', NULL, 9, '2024-11-28 17:30:49', '2026-04-06 16:33:57'),
(153, 119, 'Tips for our basecamp staff and local guides; expect to pay 200$ per member towards our staff', NULL, 10, '2024-11-28 17:30:49', '2026-04-06 16:33:57'),
(154, 120, 'International Flight to Leh', NULL, 1, '2024-12-02 16:26:47', '2025-01-16 12:42:09'),
(155, 120, 'Personal clothes, personal climbing gear, and sleeping bag', NULL, 2, '2024-12-02 16:26:47', '2024-12-02 16:26:47'),
(156, 120, 'Medical and evacuation insurance', NULL, 3, '2024-12-02 16:26:47', '2024-12-02 16:26:47'),
(157, 120, 'Lunch and dinner in Leh and Delhi (breakfast is included with accommodation)', NULL, 4, '2024-12-02 16:26:47', '2024-12-02 16:26:47'),
(158, 120, 'Extra cost if the expedition finishes early and the cost arising from early departures', NULL, 5, '2024-12-02 16:26:47', '2024-12-02 16:26:47'),
(159, 120, 'personal expenses like: laundry service, room service, souvenirs etc.', NULL, 6, '2024-12-02 16:26:47', '2024-12-02 16:26:47'),
(160, 120, 'Tipping our guides, porters and cooking staff; expect to pay 650$ for a job well done. The leader can help you deviding your tips among the staff.', NULL, 7, '2024-12-02 16:26:47', '2024-12-02 16:26:47'),
(161, 120, NULL, NULL, 8, '2024-12-02 16:26:47', '2024-12-02 16:26:47'),
(162, 120, NULL, NULL, 9, '2024-12-02 16:26:47', '2024-12-02 16:26:47'),
(163, 121, 'Climbing permit, approx. 1200$  (it varies according to the time of the year and your nationality)', NULL, 1, '2024-12-16 04:15:00', '2026-03-30 16:25:44'),
(164, 121, 'Flights from/to Mendoza;', NULL, 2, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(165, 121, 'Personal climbing equipment (check equipment tab);', NULL, 3, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(166, 121, 'Money return in case you abandon the expedition;', NULL, 4, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(167, 121, 'International travel insurance;', NULL, 5, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(168, 121, 'Any costs caused by excess luggage (over 20kg);', NULL, 6, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(169, 121, 'Porters for you personal equipment;', NULL, 7, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(170, 121, 'Lunch and dinner in Mendoza;', NULL, 8, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(171, 121, 'Reimbursement for loss or damage of your personal equipment.', NULL, 9, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(172, 122, 'INTERNATIONAL AIRFARE : International flight airfare (from and to Kathmandu).', NULL, 1, '2024-12-23 20:50:08', '2024-12-23 20:50:08'),
(173, 122, 'NEPAL VISA FEES : Nepalese visa fee150 USD for 90 days.', NULL, 2, '2024-12-23 20:50:08', '2024-12-23 20:50:08'),
(174, 122, 'LUNCH & DINNER : Lunch & dinner during the stay in Kathmandu (also in case of early return from Trekking / Expedition than the scheduled itinerary).', NULL, 3, '2024-12-23 20:50:08', '2024-12-23 20:50:08'),
(175, 122, 'EXTRA NIGHTS IN KATHMANDU : Extra nights’ accommodation in Kathmandu. In case of early arrival or late departure, early return from Trekking / Expedition (due to any reason) than the scheduled itinerary.', NULL, 4, '2024-12-23 20:50:08', '2024-12-23 20:50:08'),
(176, 122, 'INSURANCE : Travel and high altitude insurance, accident, Helicopter medical & emergency evacuation. *Mandatory', NULL, 5, '2024-12-23 20:50:08', '2024-12-23 20:50:08'),
(177, 122, 'Staff Tips & Sherpa summit Bonus', NULL, 6, '2024-12-23 20:50:08', '2024-12-23 20:50:08'),
(180, 123, 'International flight', NULL, 1, '2024-12-25 01:33:48', '2024-12-25 01:33:48'),
(181, 123, 'Food & drinks during your stay in Moshi; besides Breakfast, welcome & Farewell dinner', NULL, 2, '2024-12-25 01:33:48', '2024-12-25 01:33:48'),
(182, 123, 'Extra cost occured due to an early or late departure', NULL, 3, '2024-12-25 01:33:48', '2024-12-25 01:33:48'),
(183, 123, 'Personal trekking and climbing equipment', NULL, 4, '2024-12-25 01:33:48', '2024-12-25 01:33:48'),
(184, 123, 'Tanzania Visa', NULL, 5, '2024-12-25 01:33:48', '2024-12-25 01:33:48'),
(185, 123, 'Staff Tips; expect to pay around 350$ towards our loyal porters, cooks and African guides', NULL, 6, '2024-12-25 01:33:48', '2024-12-25 01:33:48'),
(186, 124, 'International airfare', NULL, 1, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(187, 124, 'Kenya Visa', NULL, 2, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(188, 124, 'Meals while in Nairobi', NULL, 3, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(189, 124, 'Personal climbing & trekking equipmet', NULL, 4, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(190, 124, 'tips for porters and guides (expect to pay around 350$ each)', NULL, 5, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(191, 124, 'Extra cost occured due to an early or late departure', NULL, 6, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(192, 124, 'EXTRA : Any other services or activities, which are not mentioned in the itinerary and not listed in the “Cost Includes” section.', NULL, 7, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(193, 125, 'International airfare to Leh', NULL, 1, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(194, 125, 'India Visa', NULL, 2, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(195, 125, 'INSURANCE : Travel and high altitude insurance, accident, Helicopter medical & emergency evacuation. *Mandatory!', NULL, 3, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(196, 125, 'Staff tips (expect to pay 250$)', NULL, 4, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(197, 125, 'Meals while in Leh', NULL, 5, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(198, 125, 'PERSONAL CLIMBING EQUIPMENT : Clothing, Packing Items, Bags, Personal Medical Kit, and all kinds of Personal Trekking / Climbing Gear.', NULL, 6, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(199, 125, 'Unforeseen costs caused by weather which might result in road, flight or other travel disruption', NULL, 7, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(200, 125, 'Extra cost occured due to an early or late departure', NULL, 8, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(201, 126, 'Air travel to Kathmandu.', NULL, 1, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(202, 126, 'Personal climbing clothes and equipment.', NULL, 2, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(203, 126, 'Personal insurance, visas and inoculations.', NULL, 3, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(204, 126, 'Food whilst the team is in Kathmandu and “extra’s” that are bought besides the group meals during travel.', NULL, 4, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(205, 126, 'Soft drinks, Alcoholic beverages, mineral water, Barista coffee etc. during our road travel to BC', NULL, 5, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(206, 126, 'Personal expenses like: laundry service, room service, private sightseeing, UNESCO entrance fee Importation taxes incurred by your personal equipment (e.g. Drones & satellite telephone and other High-Tec equipment). Please be aware that Drones require special permits in Nepal & Tibet and this can be expensive to obtain.', NULL, 6, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(207, 126, 'Cost for using 4/5G or WIFI on the way and in BC & ABC, China Mobile sim card etc.', NULL, 7, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(208, 126, 'Personal medical supplies and personal use of communication equipment.', NULL, 8, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(209, 126, 'Extra cost due to an early departure from the expedition', NULL, 9, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(210, 126, 'Tips and Sherpa Bonus.', NULL, 10, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(215, 128, 'Air travel to Kathmandu.', NULL, 1, '2026-03-30 17:47:41', '2026-03-30 17:47:41'),
(216, 128, 'Personal climbing clothes and equipment.', NULL, 2, '2026-03-30 17:47:41', '2026-03-30 17:47:41'),
(217, 128, 'Personal insurance, visas and inoculations.', NULL, 3, '2026-03-30 17:47:42', '2026-03-30 17:47:42'),
(218, 128, 'Food whilst the team is in Kathmandu.', NULL, 4, '2026-03-30 17:47:42', '2026-03-30 17:47:42'),
(219, 128, 'Extra’s in lodges during the trek & Mera peak: Barista coffee’s, Alcoholic beverages, Soft drinks, Mineral water, hot water bottles, charging, laundry service, snack & food bought outside meals etc.', NULL, 5, '2026-03-30 17:47:42', '2026-03-30 17:47:42'),
(220, 128, 'Importation taxes incurred by your personal equipment (e.g. satellite telephone and other high-tech equipment).', NULL, 6, '2026-03-30 17:47:42', '2026-03-30 17:47:42'),
(221, 128, 'Cost for WIFI in BC and in lodges during the trek.', NULL, 7, '2026-03-30 17:47:42', '2026-03-30 17:47:42'),
(222, 128, 'Tips and Sherpa Bonus; expect to pay 400$ totally as a “group tip” toward all support staff and 1800$ individually as a summit bonus to your Sherpa', NULL, 8, '2026-03-30 17:47:42', '2026-03-30 17:47:42'),
(223, 128, 'Additional Helicopter flights not mentioned on itinerary', NULL, 9, '2026-03-30 17:47:42', '2026-03-30 17:47:42'),
(224, 128, 'Extra cost due to an early or “solo” departure.', NULL, 10, '2026-03-30 17:47:42', '2026-03-30 17:47:42'),
(225, 127, 'Personal climbing clothes and equipment.', NULL, 1, '2026-04-01 14:34:30', '2026-04-01 14:34:30'),
(226, 127, 'Personal insurance, visas, departure tax and inoculations.', NULL, 2, '2026-04-01 14:34:30', '2026-04-01 14:34:30'),
(227, 127, 'International Airfare', NULL, 3, '2026-04-01 14:34:30', '2026-04-01 14:34:30'),
(228, 127, 'Cost for visa if applicable', NULL, 4, '2026-04-01 14:34:30', '2026-04-01 14:34:30'),
(229, 127, 'Drinks and hotel or guest house meals, unless specified.', NULL, 5, '2026-04-01 14:34:30', '2026-04-01 14:34:30'),
(230, 127, 'Personal medical supplies and personal use of communication equipment.', NULL, 6, '2026-04-01 14:34:30', '2026-04-01 14:34:30'),
(231, 127, 'Excess baggage.', NULL, 7, '2026-04-01 14:34:30', '2026-04-01 14:34:30'),
(232, 127, 'Individual Cost for early or late departure', NULL, 8, '2026-04-01 14:34:30', '2026-04-01 14:34:30'),
(233, 127, 'Tips for porters and local guides.', NULL, 9, '2026-04-01 14:34:30', '2026-04-01 14:34:30'),
(234, 127, 'Costs associated with extending a trip due to bad weather or other circumstances.', NULL, 10, '2026-04-01 14:34:30', '2026-04-01 14:34:30'),
(235, 127, 'Many clients join our expeditions as individuals if we cannot match you up with the same gender for the hotel nights you will be charged 50% of the single supplement fee.', NULL, 11, '2026-04-01 14:34:30', '2026-04-01 14:34:30'),
(236, 129, 'Tips.', NULL, 1, '2026-04-06 17:53:01', '2026-04-06 17:53:01');

-- --------------------------------------------------------

--
-- Table structure for table `cl_cost_includes`
--

CREATE TABLE `cl_cost_includes` (
  `id` int NOT NULL,
  `trip_detail_id` int DEFAULT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `video` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `ordering` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_cost_includes`
--

INSERT INTO `cl_cost_includes` (`id`, `trip_detail_id`, `title`, `content`, `thumbnail`, `country`, `video`, `ordering`, `status`, `created_at`, `updated_at`) VALUES
(138, 105, 'All permits, charges, important taxes and levies payable to the Nepal Government in connection with the expedition.', NULL, NULL, NULL, NULL, '1', 1, '2024-05-20 18:13:12', '2024-05-20 18:13:12'),
(139, 105, 'All hotel and other accommodation up to and including two nights accommodation in the beginning and 2 nights on our return to Kathmandu.', NULL, NULL, NULL, NULL, '2', 1, '2024-05-20 18:13:12', '2024-05-20 18:13:12'),
(140, 105, 'All tents, ropes and other communal equipment necessary for the climb.', NULL, NULL, NULL, NULL, '3', 1, '2024-05-20 18:13:12', '2024-05-20 18:13:12'),
(144, 105, 'All food, fuel and cooking equipment.', NULL, NULL, NULL, NULL, '6', 1, '2024-05-20 18:22:34', '2024-05-20 18:22:34'),
(145, 105, 'Base camp and Advance Base Camp services, cooks, cook, boys, tents, seating, etc.', NULL, NULL, NULL, NULL, '8', 1, '2024-05-20 18:22:34', '2024-05-20 18:26:04'),
(146, 105, 'Medical safety equipment and supplies.', NULL, NULL, NULL, NULL, '4', 1, '2024-05-20 18:22:34', '2024-05-20 18:22:34'),
(147, 105, 'Communication equipment (each member will have a radio on the hill), satellite telephone and e-mail facilities, website, weather forecasts.', NULL, NULL, NULL, NULL, '5', 1, '2024-05-20 18:22:34', '2024-05-20 18:22:34'),
(148, 105, 'All trucks, jeeps, yaks, base camp workers.', NULL, NULL, NULL, NULL, '7', 1, '2024-05-20 18:22:34', '2024-05-20 18:26:04'),
(149, 105, 'Climbing sherpa support on the mountain 2 member: 1 Sherpa.', NULL, NULL, NULL, NULL, '9', 1, '2024-05-20 18:22:34', '2024-05-20 18:26:04'),
(194, 117, 'All permits, charges, importation taxes and levies payable to Nepal in connection with the  expedition.', NULL, NULL, NULL, NULL, '1', 1, '2024-05-27 16:05:09', '2024-05-27 16:05:09'),
(195, 117, 'All hotel and other accommodation up as mentioned on the itinerary.', NULL, NULL, NULL, NULL, '2', 1, '2024-05-27 16:05:09', '2024-05-27 16:05:09'),
(196, 117, 'All tents,  ropes and other communal equipment necessary for the climb.', NULL, NULL, NULL, NULL, '3', 1, '2024-05-27 16:05:09', '2024-05-27 16:05:09'),
(197, 117, 'Medical safety equipment  and supplies.', NULL, NULL, NULL, NULL, '4', 1, '2024-05-27 16:05:09', '2024-05-27 16:05:09'),
(198, 117, 'Communication equipment (each member will have a radio on the hill), satellite telephone, and e-mail facilities, website, weather forecasts.', NULL, NULL, NULL, NULL, '5', 1, '2024-05-27 16:05:09', '2024-05-27 16:05:09'),
(199, 117, 'All food, fuel and  cooking equipment.', NULL, NULL, NULL, NULL, '6', 1, '2024-05-27 16:05:09', '2024-05-27 16:05:09'),
(200, 117, 'All trucks, jeeps, yaks, base camp workers.', NULL, NULL, NULL, NULL, '7', 1, '2024-05-27 16:05:09', '2024-05-27 16:05:09'),
(201, 117, 'Base Camp and Advance Base Camp services, cooks, cook boys, tents, seating etc.', NULL, NULL, NULL, NULL, '8', 1, '2024-05-27 16:05:09', '2024-05-27 16:05:09'),
(202, 117, 'Nepalese Climbing Sherpa support on the mountain; 1 member: 1 Sherpa. 3 4L Poisk Oxygen+ Mask & Regulator.', NULL, NULL, NULL, NULL, '9', 1, '2024-05-27 16:05:09', '2024-05-27 16:05:09'),
(212, 41, 'ARRIVAL AND DEPARTURE : Kathmandu Airport - Hotel transfers – Kathmandu Airport (Pick Up and Drop) by private vehicle.', NULL, NULL, NULL, NULL, '16', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:25'),
(213, 41, 'HOTEL ACCOMMODATION IN KATHMANDU : 6 nights hotel in Kathmandu (5-star category) - single room on bed and breakfast plan.', NULL, NULL, NULL, NULL, '1', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:25'),
(214, 41, 'PERMITS : Expedition Royalty and a permit fee of the Chinese Government (CMA / TMA) to climb Mt. Everest, Restricted are permit and fee.', NULL, NULL, NULL, NULL, '2', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:25'),
(215, 41, 'LIAISON OFFICER : 1 Government Liaison officer in Tibet with full equipment, salary, and accommodation', NULL, NULL, NULL, NULL, '3', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:25'),
(216, 41, 'RUBBISH COLLECTION FEE : $1500 USD Per Climber standard rubbish collection fee.', NULL, NULL, NULL, NULL, '4', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:25'),
(217, 41, 'INSURANCE : Medical & Emergency rescue Insurance for all involved Nepalese staff during the trek and expedition.', NULL, NULL, NULL, NULL, '5', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:25'),
(218, 41, 'TIBET VISA : All visa arrangements to enter China (Tibet), including visa fees, procedures, and rest.', NULL, NULL, NULL, NULL, '6', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:25'),
(219, 41, 'MEMBER TRANSPORTATION : Land Transportation (Members/Staffs): On a group basis: drive by jeep from Kathmandu to the Chinese Basecamp via the Kerong Border. On the return, drive by jeep from the Chinese Basecamp to Kathmandu via the Kerong Border. (In case a member has to return earlier than the team due to personal reasons, the member will have to pay their own transportation cost to Kathmandu).', NULL, NULL, NULL, NULL, '7', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:25'),
(220, 41, 'EXPEDITION STUFFS TRANSPORTATION : All necessary expedition equipment transportation for all Members and Staff from Kathmandu to Chinese Basecamp (by Jeep/Truck) - Basecamp to Advance Basecamp (ABC) by Yak. – While returning: Advance Base camp (ABC) to Basecamp (by Yak), Chinese Basecamp to Kathmandu (by Jeep/Truck). Based on the condition, different transportation variants may be adopted.', NULL, NULL, NULL, NULL, '8', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:25'),
(221, 41, 'MEMBER LUGGAGE : Up to 60 Kg per member for personal as a personal baggage during the expedition period carried by Yaks. If luggage exceeds 60 KG then extra Yak will be required. ($500 USD Per Yak and carry 50 KG).', NULL, NULL, NULL, NULL, '9', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:25'),
(222, 41, 'FOOD AND LODGING DURING THE TREK : Three (3) meals a day (breakfast, lunch, and dinner), including tea, coffee and hot water, will be provided, along with accessible accommodation at hotels, lodges, or tea houses (Sharing) during the trek. Hygienic foods will be served throughout the entire trek.', NULL, NULL, NULL, NULL, '10', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:25'),
(223, 41, 'BASECAMP LOGISTICS (FULL BOARD SUPPORT) : Three (3) meals a day (breakfast, lunch, and dinner), including tea, coffee, juice, soft drinks, etc., will be provided. Additionally, a comfortable box tent will be provided for accommodation at the base camp. Hygienic and green vegetables, fresh meat and soft drinks will be served throughout the entire expedition. A well-managed base camp & advanced base camp (ABC) setup, including a dining tent, kitchen tent, toilet, and shower tent, will be available for both members and staff.', NULL, NULL, NULL, NULL, '11', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:25'),
(224, 41, 'YAKS : Yaks for the transportation of member personal luggage (60 Kg maximum) and expeditions stuff up to the base camp and from the base camp (both ways). Overweight luggage costs extra.', NULL, NULL, NULL, NULL, '12', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:25'),
(225, 41, 'BASE CAMP / ADVANCE BC STAFF : Experienced and well-trained Base Camp / ABC Cook & Kitchen Helpers as required.', NULL, NULL, NULL, NULL, '13', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:25'),
(226, 41, 'STAFF SALARY AND ALLOWANCE : All Nepalese staff & and porter’s daily wages, salary, equipment, food, and clothing.', NULL, NULL, NULL, NULL, '14', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:25'),
(227, 41, 'BASE CAMP / ABC TENT : Each member will have an individual tent in Chinese Basecamp and Advance Basecamp.', NULL, NULL, NULL, NULL, '15', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:25'),
(228, 41, 'BASE CAMP / ABC EQUIPMENT : Single Tent, foam mattresses and pillow per member, 1 dining Tent, 1 Kitchen Tent, 1 Communication tent, 1 Toilet and 1 Shower Tent, 1 staff tent, 1 Tent for Nepalese base camp staff, Store tent, Tables & chairs & all necessary cooking gears.', NULL, NULL, NULL, NULL, '24', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:24'),
(229, 41, 'HEATER : Heater at base camp in each Dining and other necessary camps.', NULL, NULL, NULL, NULL, '32', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:24'),
(230, 41, 'SOLAR/GENERATOR/LIGHT : 1 Solar panel and Generator for lights at base camp, for battery charges, laptop, and other electronic devices.', NULL, NULL, NULL, NULL, '31', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:24'),
(231, 41, 'TRAINING : Oxygen, Mask Regulator, Ice wall, and Ladder training at Basecamp by a professional guide.', NULL, NULL, NULL, NULL, '30', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:24'),
(232, 41, 'HIGH ALTITUDE CLIMBING SHERPA : 1 veteran and government-licensed climbing Sherpa per member (1 Member: 1 Sherpa), during the entire climb from Basecamp to the summit and back, and on each rotation.', NULL, NULL, NULL, NULL, '29', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:24'),
(233, 41, 'ASSISTANCE : Climbing Sherpa to assist in carrying your gear to the high camps.', NULL, NULL, NULL, NULL, '28', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:24'),
(234, 41, 'CLIMBING SHERPA SALARY & ALLOWANCE : Climbing Sherpa Salary, Equipment, Food and Clothing.', NULL, NULL, NULL, NULL, '27', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:24'),
(235, 41, 'OXYGEN BOTTLE (O2) : 6 oxygen bottles (4 ltrs.) for each member and 4 oxygen bottle for each high-altitude Sherpa. **', NULL, NULL, NULL, NULL, '26', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:24'),
(236, 41, 'BACK UP OXYGEN, MASK & REGULATOR : An oxygen bottle, along with one set of summit oxygen masks and regulators, will be available at base camp for emergencies (subject to a charge).', NULL, NULL, NULL, NULL, '25', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:24'),
(237, 41, 'HIGH CAMP SERVICE (INFRASTRUCTURE AND LOGISTICS) : High Altitude Tent, Necessary cooking EPI gas, cooking pot, High food for a member, Sherpa, and other crews at (C1) (C2), and (C3). Group climbing gears, fixed and dynamic rope during the climbing period as required.', NULL, NULL, NULL, NULL, '33', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:24'),
(238, 41, 'HIGH ALTITUDE TENT : Members will share tents in high camps (2-3 members: 1 tent).', NULL, NULL, NULL, NULL, '23', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:24'),
(239, 41, 'ROPE FIXING TEAM : The team of experienced Sherpas from CMA / TMA (including personal Sherpa) will fix the route in Everest (no extra charge will be applied to members).', NULL, NULL, NULL, NULL, '22', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:24'),
(240, 41, 'SATELLITE PHONE : Satellite Phone for emergency communication carried by Leader, also available for members (subject to a charge).', NULL, NULL, NULL, NULL, '21', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:24'),
(241, 41, 'WALKIE-TALKIE : Walkie–Talkie for communicating from Base Camp to Mountain and Mountain to Base Camp.', NULL, NULL, NULL, NULL, '20', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:24'),
(242, 41, 'PERMIT : Walkie-talkie permit for all members and staff.', NULL, NULL, NULL, NULL, '19', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:25'),
(243, 41, 'WEATHER FORECAST : Weather forecast report regularly from Meteotest, Bern (Switzerland) during the entire expedition.', NULL, NULL, NULL, NULL, '18', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:25'),
(244, 41, 'MEDICAL KIT : Comprehensive Medical kit for members and staff.', NULL, NULL, NULL, NULL, '17', 1, '2024-11-27 19:02:06', '2024-11-27 19:06:25'),
(257, 120, 'Arnold Coster as the expedition leader', NULL, NULL, NULL, NULL, '2', 1, '2024-12-02 16:14:08', '2024-12-02 16:14:08'),
(258, 120, 'hight altitude Sherpa support: 3 Sherpa Guides for every 4 client members', NULL, NULL, NULL, NULL, '4', 1, '2024-12-02 16:14:08', '2024-12-02 16:14:08'),
(259, 120, 'Guide for monasteries &  all monastery entrance fees', NULL, NULL, NULL, NULL, '3', 1, '2024-12-02 16:14:08', '2024-12-02 16:14:08'),
(260, 120, 'Fixed ropes and equipment for fixing ropes', NULL, NULL, NULL, NULL, '5', 1, '2024-12-02 16:14:08', '2024-12-02 16:14:08'),
(261, 120, 'All accommodations in Leh with breakfast', NULL, NULL, NULL, NULL, '6', 1, '2024-12-02 16:14:08', '2025-01-16 12:41:51'),
(262, 120, 'fuel, stoves, tents & food for high camps', NULL, NULL, NULL, NULL, '7', 1, '2024-12-02 16:14:08', '2024-12-02 16:14:08'),
(263, 120, 'All camping equipment for Base Camp including individual sleeping tent, foam mattress, mess tent, dining tent and toilet tent', NULL, NULL, NULL, NULL, '8', 1, '2024-12-02 16:14:08', '2024-12-02 16:14:08'),
(264, 120, 'All meals and drinks (Excluding: alcohol & Soft drinks) while trekking, in BC and while climbing', NULL, NULL, NULL, NULL, '9', 1, '2024-12-02 16:14:08', '2024-12-02 16:14:08'),
(265, 120, 'All climbing permits, Liaison officer’s fee to the IMF, his accommodation, and his transportation-', NULL, NULL, NULL, NULL, '10', 1, '2024-12-02 16:14:08', '2024-12-02 16:14:08'),
(266, 120, '40 kgs porterage of personal equipment', NULL, NULL, NULL, NULL, '11', 1, '2024-12-02 16:14:09', '2024-12-02 16:14:09'),
(267, 120, 'All local transportation to and from the trekking trailhead according to itinerary.', NULL, NULL, NULL, NULL, '1', 1, '2024-12-02 16:14:09', '2025-01-16 12:41:51'),
(268, 120, 'Emergency Supplemental oxygen at Base camp, Gamov bag & comprehensive first aid kit', NULL, NULL, NULL, NULL, '12', 1, '2024-12-02 16:14:09', '2024-12-02 16:14:09'),
(273, 121, '2 hotel nights in Mendoza;', NULL, NULL, NULL, NULL, '1', 1, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(274, 121, '3 Clients per certified guides;', NULL, NULL, NULL, NULL, '2', 1, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(275, 121, 'Transfer from airport to hotel and back;', NULL, NULL, NULL, NULL, '3', 1, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(276, 121, 'Lunch and wine tasting at vineyard El Enemigo in Mendoza;', NULL, NULL, NULL, NULL, '4', 1, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(277, 121, 'Mineral water in Confluencia;', NULL, NULL, NULL, NULL, '5', 1, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(278, 121, 'Sleeping in Penitentes; B&B + Dinner', NULL, NULL, NULL, NULL, '6', 1, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(279, 121, 'Steak dinner in Uspallata;', NULL, NULL, NULL, NULL, '7', 1, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(280, 121, 'English speaking leader;', NULL, NULL, NULL, NULL, '8', 1, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(281, 121, '20% discount on equipment rental;', NULL, NULL, NULL, NULL, '9', 1, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(282, 121, '5 days full pension at Plaza de Mulas;', NULL, NULL, NULL, NULL, '10', 1, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(283, 121, '2 days full pension at Confluencia;', NULL, NULL, NULL, NULL, '11', 1, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(284, 121, 'Transport from Mendoza to Penitentes and back;', NULL, NULL, NULL, NULL, '12', 1, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(285, 121, 'Transport from Penitentes to Horcones and back;', NULL, NULL, NULL, NULL, '13', 1, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(286, 121, 'Mules for 20kgs each to/from basecamp;', NULL, NULL, NULL, NULL, '14', 1, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(287, 121, 'Porters for group equipment (tents, pots, etc);', NULL, NULL, NULL, NULL, '15', 1, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(288, 121, '2 person tents in all camps;', NULL, NULL, NULL, NULL, '16', 1, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(289, 121, 'Dinning tent for altitude camps;', NULL, NULL, NULL, NULL, '17', 1, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(290, 121, 'All meals on the mountain;', NULL, NULL, NULL, NULL, '18', 1, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(291, 121, 'Stoves, fuel and all kitchen utensils.', NULL, NULL, NULL, NULL, '19', 1, '2024-12-16 04:15:00', '2024-12-16 04:15:00'),
(292, 122, 'AIRPORT PICK-UP & DROP : Airport - Hotel transfer – Airport (Pick Up and Drop).', NULL, NULL, NULL, NULL, '1', 1, '2024-12-23 20:48:24', '2024-12-23 20:48:24'),
(293, 122, 'ACCOMMODATION IN KATHMANDU : 4 nights hotel (4-star category) in Kathmandu on bed & breakfast Plan- Sharing Twin Bed Room.', NULL, NULL, NULL, NULL, '2', 1, '2024-12-23 20:48:24', '2024-12-23 20:48:24'),
(294, 122, 'PERMIT : Expedition Royalty and permit of Nepal Government to climb Mt. Baruntse Peak, Permit of Mera Peak, Sagarmatha - National park entry permit and fee.', NULL, NULL, NULL, NULL, '3', 1, '2024-12-23 20:48:24', '2024-12-23 20:48:24'),
(295, 122, 'LIAISON OFFICER : 1 Government Liaison officer with full equipment, salary, and accommodation.', NULL, NULL, NULL, NULL, '4', 1, '2024-12-23 20:48:24', '2024-12-23 20:48:24'),
(296, 122, 'GARBAGE DEPOSIT : Garbage Deposit fees.', NULL, NULL, NULL, NULL, '5', 1, '2024-12-23 20:48:24', '2024-12-23 20:48:24'),
(297, 122, 'STAFF INSURANCE : : Medical & Emergency rescue Insurance for all involved Nepalese staff during the trek and climbing', NULL, NULL, NULL, NULL, '6', 1, '2024-12-23 20:48:24', '2024-12-23 20:48:24'),
(298, 122, 'TRANSPORTATION : Air Transportation: (Domestic Flight) Fly from Kathmandu – to Lukla and while returning Lukla – to Kathmandu, as per itinerary.', NULL, NULL, NULL, NULL, '7', 1, '2024-12-23 20:48:24', '2024-12-23 20:48:24'),
(299, 122, 'CLIMBING STUFFS TRANSPORTATION : All necessary equipment transportation for all Members and Staff from Kathmandu to Lukla (by air cargo) and Base camp (by Porters / Yak) – While returning: Base camp to Lukla (by porters / Yak) and Lukla to Kathmandu (by air cargo).', NULL, NULL, NULL, NULL, '8', 1, '2024-12-23 20:48:24', '2024-12-23 20:48:24'),
(300, 122, 'MEMBER LUGGAGE : Up to 60 Kg personal baggage per member during the trek carrying by porter or Yak.', NULL, NULL, NULL, NULL, '9', 1, '2024-12-23 20:48:24', '2024-12-23 20:48:24'),
(301, 122, 'FOODS & LODGING : 3 meals a day (BLD; including tea and coffee) along with accessible accommodation at Hotel/Lodge/Tea house/Camp during the trek and the Basecamp. Well-managed base camp set up for members & Staffs. Kailas or Yak Mountain tents will be set up while camping on a sharing basis.', NULL, NULL, NULL, NULL, '10', 1, '2024-12-23 20:48:24', '2024-12-23 20:48:24'),
(302, 122, 'PORTER : Porters per member up to Base camp from Lukla & Porters return from Base camp to Lukla.', NULL, NULL, NULL, NULL, '11', 1, '2024-12-23 20:48:24', '2024-12-23 20:48:24'),
(303, 122, 'CAMPING EQUIPMENT : All Necessary equipment for Camping during the trek.', NULL, NULL, NULL, NULL, '12', 1, '2024-12-23 20:48:24', '2024-12-23 20:48:24'),
(304, 122, 'BASE CAMP STAFF : Experienced and well-trained Base Camp Cook & kitchen Helpers as required.', NULL, NULL, NULL, NULL, '13', 1, '2024-12-23 20:48:24', '2024-12-23 20:48:24'),
(305, 122, 'STAFF SALARY & ALLOWANCE : All Nepalese staff & porter’s daily wages, equipment, food & clothing.', NULL, NULL, NULL, NULL, '14', 1, '2024-12-23 20:48:25', '2024-12-23 20:48:25'),
(306, 122, 'BASE CAMP TENT : Each member will have an individual Yak Mountain or Kailas tent in Base Camp.', NULL, NULL, NULL, NULL, '15', 1, '2024-12-23 20:48:25', '2024-12-23 20:48:25'),
(307, 122, 'BASE CAMP EQUIPMENT : All camping equipment such as a dining tent with table and chairs, Kitchen Tent, Toilet and Shower Tent, & all necessary cooking gear.', NULL, NULL, NULL, NULL, '16', 1, '2024-12-23 20:48:25', '2024-12-23 20:48:25'),
(308, 122, 'HEATER : Heater at base camp in each Dining and other necessary camps.', NULL, NULL, NULL, NULL, '17', 1, '2024-12-23 20:48:25', '2024-12-23 20:48:25'),
(309, 122, 'SOLAR/GENERATOR/LIGHT : 1 Solar panel or Generator for charging electronic devices, batteries, and light at base camp for use.', NULL, NULL, NULL, NULL, '18', 1, '2024-12-23 20:48:25', '2024-12-23 20:48:25'),
(310, 122, 'LIGHT : Necessary light at Dinning tent and Kitchen tent.', NULL, NULL, NULL, NULL, '19', 1, '2024-12-23 20:48:25', '2024-12-23 20:48:25'),
(311, 122, 'CLIMBING SHERPA : 1 Veteran and Government Licensed Climbing Sherpa per member. (1 Member: 1 Sherpa).', NULL, NULL, NULL, NULL, '20', 1, '2024-12-23 20:48:25', '2024-12-23 20:48:25'),
(312, 122, 'CLIMBING SHERPA SALARY & ALLOWANCE : Climbing Sherpa Salary, Equipment, Food, and Clothing.', NULL, NULL, NULL, NULL, '21', 1, '2024-12-23 20:48:25', '2024-12-23 20:48:25'),
(313, 122, 'OXYGEN BOTTLE (O2) : Oxygen bottles will be in stock at base camp in case of an emergency (with appropriate charge).', NULL, NULL, NULL, NULL, '22', 1, '2024-12-23 20:48:25', '2024-12-23 20:48:25'),
(314, 122, 'OXYGEN MASK & REGULATOR : 1 Set of Summit Oxygen masks and regulators will be in base camp in case of an emergency.', NULL, NULL, NULL, NULL, '23', 1, '2024-12-23 20:48:25', '2024-12-23 20:48:25'),
(315, 122, 'HIGH CAMP SERVICE : All high camp services in Mera peak, High Altitude Tent, Necessary cooking EPI gas, cooking pot for a member, High food for member, Sherpa, all climbing staff in (C1) (C2) and (C3). Group climbing gears, and fixed and dynamic rope during the climbing period as required.', NULL, NULL, NULL, NULL, '24', 1, '2024-12-23 20:48:25', '2024-12-23 20:48:25'),
(316, 122, 'ROPE FIXING : Veteran Team of Sherpa will fix the rope and the route. (No extra cost for members).', NULL, NULL, NULL, NULL, '25', 1, '2024-12-23 20:48:25', '2024-12-23 20:48:25'),
(317, 122, 'SATELLITE PHONE : Satellite Phone for emergency communication carried by Sherpa, also available for members with appropriate charge.', NULL, NULL, NULL, NULL, '26', 1, '2024-12-23 20:48:25', '2024-12-23 20:48:25'),
(318, 122, 'WALKIE-TALKIE : Walkie–Talkie for communicating from Base Camp to Mountain and Mountain to Base Camp.', NULL, NULL, NULL, NULL, '27', 1, '2024-12-23 20:48:25', '2024-12-23 20:48:25'),
(319, 122, 'WALKIE-TALKIE PERMIT : Walkie-talkie permit for all members and staff.', NULL, NULL, NULL, NULL, '28', 1, '2024-12-23 20:48:25', '2024-12-23 20:48:25'),
(320, 122, 'WEATHER FORECAST : Weather forecast report during the entire expedition.', NULL, NULL, NULL, NULL, '29', 1, '2024-12-23 20:48:25', '2024-12-23 20:48:25'),
(321, 122, 'MEDICAL KIT : Comprehensive Medical kit.', NULL, NULL, NULL, NULL, '30', 1, '2024-12-23 20:48:25', '2024-12-23 20:48:25'),
(322, 123, 'AIRPORT PICK-UP & DROP : Airport - Hotel transfer – Airport (Pick Up and Drop).', NULL, NULL, NULL, NULL, '1', 1, '2024-12-25 01:33:48', '2024-12-25 01:33:48'),
(323, 123, '3 Nights in Moshi in mid range hotel, twin sharing basis', NULL, NULL, NULL, NULL, '2', 1, '2024-12-25 01:33:48', '2024-12-25 01:33:48'),
(324, 123, 'Welcome & Farewell dinner', NULL, NULL, NULL, NULL, '3', 1, '2024-12-25 01:33:48', '2024-12-25 01:33:48'),
(325, 123, 'Arnold Coster as your leader', NULL, NULL, NULL, NULL, '4', 1, '2024-12-25 01:33:48', '2024-12-25 01:33:48'),
(326, 123, 'All Transportation to and from the trailhead, Porters, kitchen staff & all camping gear needed for the trek', NULL, NULL, NULL, NULL, '5', 1, '2024-12-25 01:33:48', '2024-12-25 01:33:48'),
(327, 123, 'Group climbing equipment (not personal equipment)', NULL, NULL, NULL, NULL, '6', 1, '2024-12-25 01:33:48', '2024-12-25 01:33:48'),
(328, 123, 'All permits - National park fees related to this trip', NULL, NULL, NULL, NULL, '7', 1, '2024-12-25 01:33:48', '2024-12-25 01:33:48'),
(329, 123, '15kg porterage of personal equipment', NULL, NULL, NULL, NULL, '8', 1, '2024-12-25 01:33:48', '2024-12-25 01:33:48'),
(330, 124, 'Arnold Coster as Expedition leader', NULL, NULL, NULL, NULL, '1', 1, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(331, 124, 'Airport transfers in Nairobi', NULL, NULL, NULL, NULL, '2', 1, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(332, 124, '2 nights Midrange Hotel Nairobi B&B', NULL, NULL, NULL, NULL, '3', 1, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(333, 124, 'Transfer from Nairobi to the mountain and back', NULL, NULL, NULL, NULL, '4', 1, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(334, 124, '4x4 drive to the National Park gate / end of the road, depending on conditions', NULL, NULL, NULL, NULL, '5', 1, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(335, 124, 'All camp equipment: dining tent, kitchen tent and kitchen material', NULL, NULL, NULL, NULL, '6', 1, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(336, 124, 'Catering by our experienced kitchen team, full board on the mountain', NULL, NULL, NULL, NULL, '7', 1, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(337, 124, 'Porters for our group material and food', NULL, NULL, NULL, NULL, '8', 1, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(338, 124, 'Team on the mountain incl. local guide', NULL, NULL, NULL, NULL, '9', 1, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(339, 124, 'Personal porter up to 18 kg during the trekking', NULL, NULL, NULL, NULL, '10', 1, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(340, 124, 'Emergency assistance', NULL, NULL, NULL, NULL, '11', 1, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(341, 124, 'Full first-aid kit', NULL, NULL, NULL, NULL, '12', 1, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(342, 124, 'Local mountain guide for the ascent of Batian (2 guests per guide)', NULL, NULL, NULL, NULL, '13', 1, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(343, 124, 'Group material for climbing: ropes & rack', NULL, NULL, NULL, NULL, '14', 1, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(344, 124, 'Satellite telephone/radio', NULL, NULL, NULL, NULL, '15', 1, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(345, 124, 'National Park fees (US$ 360 per person / 5-day package)', NULL, NULL, NULL, NULL, '16', 1, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(346, 124, 'sharing tents (2 person) and/or accomedation in Austrian Hut / Shipton\'s Hut (Dormitory)', NULL, NULL, NULL, NULL, '17', 1, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(347, 125, 'Arnold Coster as Expedition leader', NULL, NULL, NULL, NULL, '1', 1, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(348, 125, 'Leh airport transfers', NULL, NULL, NULL, NULL, '2', 1, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(349, 125, 'B&B accommodation in Leh at Hotel in twin share rooms', NULL, NULL, NULL, NULL, '3', 1, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(350, 125, 'Full board homestay/lodge accommodation during the trek; Breakfast, Lunch & dinner, Hotdrinks and we provide boiled or filtered drinking water.', NULL, NULL, NULL, NULL, '4', 1, '2024-12-26 23:32:09', '2025-01-16 12:35:28'),
(351, 125, 'professional Ladakh Mountain Guide and support crew', NULL, NULL, NULL, NULL, '5', 1, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(352, 125, 'All local road transportation as per the itinerary', NULL, NULL, NULL, NULL, '6', 1, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(353, 125, 'all permits, national park fees etc. related to this trip', NULL, NULL, NULL, NULL, '7', 1, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(354, 125, '15kg porterage of personal equipment', NULL, NULL, NULL, NULL, '8', 1, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(355, 125, 'all camping equipment necessary for the mountain camps', NULL, NULL, NULL, NULL, '9', 1, '2025-01-16 12:35:28', '2025-01-16 12:35:28'),
(356, 125, '2 members per guide ratio during the climbs', NULL, NULL, NULL, NULL, '10', 1, '2025-01-16 12:35:28', '2025-01-16 12:35:28'),
(363, 126, 'All permits, charges, importation taxes and levies payable to the Chinese Government in connection with the expedition.', NULL, NULL, NULL, NULL, '1', 1, '2026-02-11 17:05:26', '2026-02-11 17:05:26'),
(364, 126, 'All meals once we left Kathmandu; 3 meals per day + drinks during meals on our drive to Chinese Base camp.', NULL, NULL, NULL, NULL, '7', 1, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(365, 126, 'All food & drinks on the mountain and in Base Camp', NULL, NULL, NULL, NULL, '8', 1, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(366, 126, 'All trucks, jeeps, yaks, base camp workers.', NULL, NULL, NULL, NULL, '9', 1, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(367, 126, 'Base Camp and Advance Base Camp services, cooks, cook boys, tents, seating etc.', NULL, NULL, NULL, NULL, '10', 1, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(368, 126, 'Unlimited baggage allowance to Chinese Base camp and 40 kg baggage allowance to ABC', NULL, NULL, NULL, NULL, '11', 1, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(369, 126, 'Climbing Sherpa support on the mountain each member has 1 Sherpa’s.', NULL, NULL, NULL, NULL, '12', 1, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(370, 126, 'Oxygen (5*4ltrs) and Top Out or Summit oxygen mask.', NULL, NULL, NULL, NULL, '13', 1, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(371, 126, 'Arnold Coster as expert leader', NULL, NULL, NULL, NULL, '14', 1, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(372, 126, 'Chinese Tibet group Visa', NULL, NULL, NULL, NULL, '2', 1, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(373, 126, 'Hotel nights in Kathmandu with breakfast as mentioned on the itinerary (5 nights) and all other accommodation on the road to BC', NULL, NULL, NULL, NULL, '3', 1, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(374, 126, 'All tents, ropes and other communal equipment necessary for the climb.', NULL, NULL, NULL, NULL, '4', 1, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(375, 126, 'Medical safety equipment and supplies.', NULL, NULL, NULL, NULL, '5', 1, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(376, 126, 'Communication equipment (each member will have a radio on the hill), satellite telephone and e-mail facilities, weather forecasts.', NULL, NULL, NULL, NULL, '6', 1, '2026-02-11 17:05:27', '2026-02-11 17:25:31'),
(377, 128, 'All permits, charges, importation taxes and levies payable to the Nepal Government in connection with the expedition.', NULL, NULL, NULL, NULL, '1', 1, '2026-03-30 17:45:10', '2026-03-30 17:45:10'),
(378, 128, 'All hotel accommodation in Kathmandu Single room with Breakfast according proposed itinerary', NULL, NULL, NULL, NULL, '2', 1, '2026-03-30 17:45:10', '2026-03-30 17:45:10'),
(379, 128, 'Breakfast, Lunch & dinner during the trekking days including hot drinks; lodges are on Sharing basis.', NULL, NULL, NULL, NULL, '3', 1, '2026-03-30 17:45:10', '2026-03-30 17:45:10'),
(380, 128, '50kg of baggage allowance to Everest BC (approx.. 20kg to Mera peak & 30kg direct to EBC)', NULL, NULL, NULL, NULL, '4', 1, '2026-03-30 17:45:11', '2026-03-30 17:45:11'),
(381, 128, 'All Helicopter flights to Lukla and from Mera peak as mentioned in the itinerary', NULL, NULL, NULL, NULL, '5', 1, '2026-03-30 17:45:11', '2026-03-30 17:45:11'),
(382, 128, 'All necessary staff for the Mera peak climb: Porters, Guides, climbing assistance 2:1', NULL, NULL, NULL, NULL, '6', 1, '2026-03-30 17:45:11', '2026-03-30 17:45:11'),
(383, 128, 'All tents, ropes and other communal equipment necessary for the climb on Lhotse & Mera peak', NULL, NULL, NULL, NULL, '7', 1, '2026-03-30 17:45:11', '2026-03-30 17:45:11'),
(384, 128, 'Medical safety equipment and supplies.', NULL, NULL, NULL, NULL, '8', 1, '2026-03-30 17:45:11', '2026-03-30 17:45:11'),
(385, 128, 'All food, fuel and cooking equipment in EBC and on the mountain(s)', NULL, NULL, NULL, NULL, '9', 1, '2026-03-30 17:45:11', '2026-03-30 17:45:11'),
(386, 128, 'All trucks, jeeps, yaks, base camp workers.', NULL, NULL, NULL, NULL, '10', 1, '2026-03-30 17:45:11', '2026-03-30 17:45:11'),
(387, 128, 'Base Camp and Advance Base Camp services, cooks, cook boys, tents, seating etc.', NULL, NULL, NULL, NULL, '11', 1, '2026-03-30 17:45:11', '2026-03-30 17:45:11'),
(388, 128, 'Single member tents in EBC, Sharing tents on the mountain in the high camps.', NULL, NULL, NULL, NULL, '12', 1, '2026-03-30 17:45:11', '2026-03-30 17:45:11'),
(389, 128, 'Climbing Sherpa support on Lhotse 1;1, each member has 1 Sherpa’s once arrived in EBC.', NULL, NULL, NULL, NULL, '13', 1, '2026-03-30 17:45:11', '2026-03-30 17:45:11'),
(390, 128, 'Oxygen (6*4ltrs) and Top Out or Summit oxygen mask.', NULL, NULL, NULL, NULL, '14', 1, '2026-03-30 17:45:11', '2026-03-30 17:45:11'),
(391, 128, 'Arnold Coster as expedition leader', NULL, NULL, NULL, NULL, '15', 1, '2026-03-30 17:45:11', '2026-03-30 17:45:11'),
(392, 127, 'Arnold Coster as the team leader (Group size 5 or more)', NULL, NULL, NULL, NULL, '1', 1, '2026-04-01 14:28:41', '2026-04-01 14:28:41'),
(393, 127, 'Permits, charges, importation taxes and levies payable to the Local Authorities in connection with the expedition.', NULL, NULL, NULL, NULL, '2', 1, '2026-04-01 14:31:13', '2026-04-01 14:31:13'),
(394, 127, 'Food, fuel and cooking equipment whilst on the mountain.', NULL, NULL, NULL, NULL, '3', 1, '2026-04-01 14:31:13', '2026-04-01 14:31:13'),
(395, 127, 'Transportation of baggage by mules and porters', NULL, NULL, NULL, NULL, '4', 1, '2026-04-01 14:31:13', '2026-04-01 14:31:13'),
(396, 127, 'All airport pick up and drop', NULL, NULL, NULL, NULL, '5', 1, '2026-04-01 14:31:13', '2026-04-01 14:31:13'),
(397, 127, 'Hotel and other accommodation on a Bed & Breakfast basis.', NULL, NULL, NULL, NULL, '6', 1, '2026-04-01 14:31:13', '2026-04-01 14:31:13'),
(398, 127, 'All tents and other communal equipment necessary for the climb.', NULL, NULL, NULL, NULL, '7', 1, '2026-04-01 14:31:13', '2026-04-01 14:31:13'),
(399, 127, 'Medical safety equipment and supplies.', NULL, NULL, NULL, NULL, '8', 1, '2026-04-01 14:31:13', '2026-04-01 14:31:13'),
(400, 127, 'A Bolivian certified guide 2:1', NULL, NULL, NULL, NULL, '9', 1, '2026-04-01 14:31:13', '2026-04-01 14:31:13'),
(401, 119, 'Arnold Coster as expedition leader', NULL, NULL, NULL, NULL, '1', 1, '2026-04-06 16:30:33', '2026-04-06 16:30:33'),
(402, 119, 'All permits required', NULL, NULL, NULL, NULL, '2', 1, '2026-04-06 16:30:33', '2026-04-06 16:30:33'),
(403, 119, 'Airport pick up/drop from Timika airport', NULL, NULL, NULL, NULL, '3', 1, '2026-04-06 16:30:33', '2026-04-06 16:30:33'),
(404, 119, '2 nights mid range hotel with breakfast in Timika (double room)', NULL, NULL, NULL, NULL, '4', 1, '2026-04-06 16:30:33', '2026-04-06 16:30:33'),
(405, 119, 'Helicopter Charter flight to Base camp with 15kg baggage allowance', NULL, NULL, NULL, NULL, '5', 1, '2026-04-06 16:30:33', '2026-04-06 16:30:33'),
(406, 119, 'Cook, Dining tent & full board in BC', NULL, NULL, NULL, NULL, '6', 1, '2026-04-06 16:30:33', '2026-04-06 16:30:33'),
(407, 119, 'Sleeping tents in Base Camp, Sharing basis', NULL, NULL, NULL, NULL, '7', 1, '2026-04-06 16:30:33', '2026-04-06 16:30:33'),
(408, 119, 'Additional Local climbing guide(s)', NULL, NULL, NULL, NULL, '8', 1, '2026-04-06 16:30:33', '2026-04-06 16:30:33'),
(409, 119, 'First aid kit & Oxygen in BC', NULL, NULL, NULL, NULL, '9', 1, '2026-04-06 16:30:33', '2026-04-06 16:30:33'),
(410, 119, 'Emergency satellite phone', NULL, NULL, NULL, NULL, '10', 1, '2026-04-06 16:30:33', '2026-04-06 16:30:33'),
(411, 119, 'No hidden cost for additional helicopter flights if we need to return to the airport due to bad weather after take off.', NULL, NULL, NULL, NULL, '11', 1, '2026-04-06 16:30:33', '2026-04-06 16:30:33');

-- --------------------------------------------------------

--
-- Table structure for table `cl_country`
--

CREATE TABLE `cl_country` (
  `id` int NOT NULL,
  `country` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cl_country`
--

INSERT INTO `cl_country` (`id`, `country`) VALUES
(1, 'Abkhazia'),
(2, 'Afghanistan'),
(3, 'Akrotiri and Dhekelia (UK)'),
(4, 'Aland Island (Finland)'),
(5, 'Albania'),
(6, 'Algeria'),
(7, 'American Samoa (US)'),
(8, 'Andorra'),
(9, 'Angola'),
(10, 'Anguilla (UK)'),
(11, 'Antarctica'),
(12, 'Antigua and Barbuda'),
(13, 'Argentina'),
(14, 'Armenia'),
(15, 'Artsakh'),
(16, 'Aruba (Netherlands)'),
(17, 'Ashmore and Cartier Islands (Australia)'),
(18, 'Australia'),
(19, 'Austria'),
(20, 'Azerbaijan'),
(21, 'Bahamas'),
(22, 'Bahrain'),
(23, 'Bangladesh'),
(24, 'Barbados'),
(25, 'Belarus'),
(26, 'Belgium'),
(27, 'Belize'),
(28, 'Benin'),
(29, 'Bermuda (UK)'),
(30, 'Bhutan'),
(31, 'Bir Tawil (Terra Nullius)'),
(32, 'Bolivia'),
(33, 'Bonaire (Netherlands)'),
(34, 'Bosnia and Herzegovina'),
(35, 'Botswana'),
(36, 'Bouvet Island (Norway)'),
(37, 'Brazil'),
(38, 'British Indian Ocean Territory (UK)'),
(39, 'British Virgin Islands (UK)'),
(40, 'Brunei'),
(41, 'Bulgaria'),
(42, 'Burkina Faso'),
(43, 'Burundi'),
(44, 'Cambodia'),
(45, 'Cameroon'),
(46, 'Canada'),
(47, 'Cape Verde'),
(48, 'Cayman Islands (UK)'),
(49, 'Central African Republic'),
(50, 'Chad'),
(51, 'Chile'),
(52, 'China'),
(53, 'Christmas Island'),
(54, 'Clipperton Island (France)'),
(55, 'Cocos Keeling Islands (Australia)'),
(56, 'Colombia'),
(57, 'Comoros'),
(58, 'DR Congo'),
(59, 'Congo'),
(60, 'Cook Islands (New Zealand)'),
(61, 'Coral Sea Islands (Australia)'),
(62, 'Costa Rica'),
(63, 'Croatia'),
(64, 'Cuba'),
(65, 'Curacao (Netherlands)'),
(66, 'Cyprus'),
(67, 'Czech Republic'),
(68, 'Kingdom of Denmark'),
(69, 'Denmark'),
(70, 'Djibouti'),
(71, 'Dominica'),
(72, 'Dominican Republic'),
(73, 'East Timor'),
(74, 'Ecuador'),
(75, 'Egypt'),
(76, 'El Salvador'),
(77, 'Equtorial Guinea'),
(78, 'Eritrea'),
(79, 'Estonia'),
(80, 'Eswatini'),
(81, 'Ethiopia'),
(82, 'Falkland Islands (UK)'),
(83, 'Faroe Islands (Denmark)'),
(84, 'Fiji'),
(85, 'Finland'),
(86, 'France'),
(87, 'French Polynesia (France)'),
(88, 'French Southern Territories (France)'),
(89, 'Gabon'),
(90, 'Gambia'),
(91, 'Georgia'),
(92, 'Germany'),
(93, 'Ghana'),
(94, 'Gibraltar (UK)'),
(95, 'Great Britain'),
(96, 'Greece'),
(97, 'Greenland (Denmark)'),
(98, 'Grenada'),
(99, 'Guam (US)'),
(100, 'Guatemala'),
(101, 'Guernsey (British Crown Dependency)'),
(102, 'Guinea'),
(103, 'Guinea-Bissau'),
(104, 'Guyana'),
(105, 'Haiti'),
(106, 'Heard Island and McDonald Islands (Australia)'),
(107, 'Honduras'),
(108, 'Hong Kong (China)'),
(109, 'Hungary'),
(110, 'Iceland'),
(111, 'India'),
(112, 'Indonesia'),
(113, 'Iran'),
(114, 'Iraq'),
(115, 'Ireland'),
(116, 'Isle of Man (British Crown Dependency)'),
(117, 'Israel'),
(118, 'Italy'),
(119, 'Ivory Coast'),
(120, 'Jamaica'),
(121, 'Jan Mayen (Norway)'),
(122, 'Japan'),
(123, 'Jersey (British Crown Dependency)'),
(124, 'Jordan'),
(125, 'Kazakhstan'),
(126, 'Kenya'),
(127, 'Kiribati'),
(128, 'North Korea'),
(129, 'South Korea'),
(130, 'Kosovo'),
(131, 'Kuwait'),
(132, 'Kyrgyzstan'),
(133, 'Laos'),
(134, 'Latvia'),
(135, 'Lebanon'),
(136, 'Lesotho'),
(137, 'Liberia'),
(138, 'Libya'),
(139, 'Liechtenstein'),
(140, 'Lithuania'),
(141, 'Luxembourg'),
(142, 'Macau (China)'),
(143, 'Madagascar'),
(144, 'Malawi'),
(145, 'Malaysia'),
(146, 'Mali'),
(147, 'Malta'),
(148, 'Marshall Islands'),
(149, 'Mauritania'),
(150, 'Mauritius'),
(151, 'Mexico'),
(152, 'Micronesia'),
(153, 'Moldova'),
(154, 'Monaco'),
(155, 'Mongolia'),
(156, 'Montenegro'),
(157, 'Montserrat (UK)'),
(158, 'Morocco'),
(159, 'Mozambique'),
(160, 'Myanmar'),
(161, 'Namibia'),
(162, 'Nauru'),
(163, 'Nepal'),
(164, 'Netherlands'),
(165, 'New Caledonia (France)'),
(166, 'New Zealand'),
(167, 'Nicaragua'),
(168, 'Niger'),
(169, 'Nigeria'),
(170, 'Niue (New Zealand)'),
(171, 'Norfolk Island (Australia)'),
(172, 'North Macedonia'),
(173, 'Northern Cyprus'),
(174, 'Northern Mariana Islands (US)'),
(175, 'Norway'),
(176, 'Oman'),
(177, 'Pakistan'),
(178, 'Palau'),
(179, 'Palestine'),
(180, 'Panama'),
(181, 'Papua New Guinea'),
(182, 'Paraguay'),
(183, 'Peru'),
(184, 'Philippines'),
(185, 'Pitcairn Islands (UK)'),
(186, 'Poland'),
(187, 'Portugal'),
(188, 'Puerto Rico (US)'),
(189, 'Qatar'),
(190, 'Romania'),
(191, 'Russia'),
(192, 'Rwanda'),
(193, 'Saba (Netherlands)'),
(194, 'Sahrawi Arab Democratic Republic'),
(195, 'Saint Barthelemy (France)'),
(196, 'Saint Helena, Ascension and Tristan da Cunha (UK)'),
(197, 'Saint Kitts and Nevis'),
(198, 'Saint Lucia'),
(199, 'Saint Martin (France)'),
(200, 'Saint Pierre and Miquelon (France)'),
(201, 'Saint Vincent and the Grenadines'),
(202, 'Samoa'),
(203, 'San Marino'),
(204, 'Sao Tome and Principe'),
(205, 'Saudi Arabia'),
(206, 'Senegal'),
(207, 'Serbia'),
(208, 'Seychelles'),
(209, 'Sierra Leone'),
(210, 'Singapore'),
(211, 'Sint Eustatius (Netherlands)'),
(212, 'Sint Maarten (Netherlands)'),
(213, 'Slovakia'),
(214, 'Slovenia'),
(215, 'Solomon Islands'),
(216, 'Somalia'),
(217, 'Somalialand'),
(218, 'South Africa'),
(219, 'South Georigia and the South Sandwich Islands (UK)'),
(220, 'South Ossetia'),
(221, 'South Sudan'),
(222, 'Spain'),
(223, 'Sri Lanka'),
(224, 'Sudan'),
(225, 'Suriname'),
(226, 'Svalbard (Norway)'),
(227, 'Sweden'),
(228, 'Switzerland'),
(229, 'Syria'),
(230, 'Taiwan'),
(231, 'Tajikistan'),
(232, 'Tanzania'),
(233, 'Thailand'),
(234, 'Togo'),
(235, 'Tokelau (New Zealand)'),
(236, 'Tonga'),
(237, 'Transnistria'),
(238, 'Trinidad and Tobago'),
(239, 'Tunisia'),
(240, 'Turkey'),
(241, 'Turkmenistan'),
(242, 'Turks and Caicos Islands (UK)'),
(243, 'Tuvalu'),
(244, 'Uganda'),
(245, 'Ukraine'),
(246, 'United Arab Emirates'),
(247, 'United Kingdom'),
(248, 'United States of America'),
(249, 'US Virgin Islands (US)'),
(250, 'Uruguay'),
(251, 'Uzbekistan'),
(252, 'Vanuatu'),
(253, 'Vatican City'),
(254, 'Venezuela'),
(255, 'Vietnam'),
(256, 'Wallis and Futuna (France)'),
(257, 'Yemen'),
(258, 'Zambia'),
(259, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `cl_pagetype`
--

CREATE TABLE `cl_pagetype` (
  `id` bigint UNSIGNED NOT NULL,
  `page_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `external_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `ordering` int DEFAULT '0',
  `is_menu` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_pagetype`
--

INSERT INTO `cl_pagetype` (`id`, `page_type`, `uri`, `brief`, `external_link`, `image`, `template`, `ordering`, `is_menu`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Terms and Conditions', 'terms-and-conditions', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', NULL, 'intro-dh5dt79MYfWztBJfBXBy7PrcQ33VM8ojWaRZrPD3.jpg', '0', 1, '1', '1', '2021-03-12 22:51:27', '2023-03-07 22:33:46'),
(2, 'Gear List', 'gear-list', NULL, NULL, 'gear-list-banner-GoE82CqQvY4GMbyeKg6V5aGdpmfEiaLmhky7eGN2.jpg', '0', 2, '1', '1', '2021-03-12 22:51:38', '2024-04-11 15:39:05'),
(3, 'Travel Insurance', 'travel-insurane', NULL, NULL, 'travel-insurance-b-w6VKoCIe95EiWksuW79rXvWhi1kxFssLQO6N1OXs.jpg', '0', 3, '1', '1', '2021-03-12 23:09:48', '2024-06-09 16:01:51'),
(5, 'Expedition Permit Fees', 'expedition-permit-fees', NULL, NULL, 'expedition-permits-fees-aF4XmTrLzrSvKFXq3IDLGqYo1yL2bbUC4VSikJmx.jpg', '0', 5, '1', '1', '2021-03-12 23:10:24', '2024-06-09 15:25:26'),
(6, 'Visa Fee', 'visa-fee', NULL, NULL, 'visa-fee-banner-Z8N1YZAom2eCIkUoLWNOS6CU3hLdWyNFfADyjbSa.jpg', '0', 6, '1', '1', '2021-03-12 23:10:37', '2024-06-09 16:09:13'),
(7, 'FAQ', 'faq', 'Book the best Everest base camp trek package and get a free porter to help with your bags.', NULL, '01-hxECC5AvOaBnTOWMkr1ORoGw6UkIylZRfPllNze5.jpg', '0', 7, '0', '1', '2021-03-12 23:11:22', '2024-01-24 17:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `cl_page_docs`
--

CREATE TABLE `cl_page_docs` (
  `id` int NOT NULL,
  `page_id` int DEFAULT NULL,
  `key_string` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `ordering` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cl_page_docs`
--

INSERT INTO `cl_page_docs` (`id`, `page_id`, `key_string`, `title`, `document`, `thumbnail`, `ordering`, `created_at`, `updated_at`) VALUES
(10, 3, 'lVBiXFj1h9k4P4kGMfWP6aqSjHgAkvgSen1vV20D', 'Gear Guide Book for 8000er', 'gear-book-arnold-coaster-sample-6662bb1b14c1d.pdf', 'asset-2-at-4x-6662bb1b14309.png', 1, '2024-04-07 16:35:53', '2024-06-07 17:32:39'),
(11, 3, 'jhe2qJYfwSbGgBf2Il0wLi106yRyfivass6nvVfM', 'Gear Check List', '8000ers-6662bb60e44f7.pdf', 'asset-3-at-4x-6662bb60e4050.png', 2, '2024-06-07 17:33:48', '2024-06-07 17:33:48'),
(12, 11, 'enX4aPFg0zCsEsuuk3KiYG5nsCCu5YpESFUNu5n7', 'Gear Guide Book', 'gear-book-arnold-coaster-sample-6662bc1de9b83.pdf', 'asset-2-at-4x-6662bc1de9558.png', 3, '2024-06-07 17:36:57', '2024-06-07 17:36:57'),
(13, 11, 'qh6n72PlcLGAZ6PYgHgLaKNSwqpm7NzdYjZZ2VZf', 'Gear Check List', '6000ers-6662bc95b1b23.pdf', 'asset-3-at-4x-6662bc95b15cf.png', 4, '2024-06-07 17:38:57', '2024-06-07 17:38:57'),
(14, 9, 'XyfwLtMykaePkIvx2pTjdMDJwAVgKHf2ocFvbB6q', 'Gear Guide Book', 'gear-book-arnold-coaster-sample-6662befe78097.pdf', 'asset-2-at-4x-6662befe77ae8.png', 5, '2024-06-07 17:49:14', '2024-06-07 17:49:14'),
(16, 9, 'QEj2U9OnL4SqMZ6mcVT5fMVqaxwBaiwstOW5BFDt', 'Gear Chick List', '7000ers-6662c14a59a4e.pdf', 'asset-3-at-4x-6662c14a59570.png', 7, '2024-06-07 17:59:02', '2024-06-07 17:59:02'),
(17, 12, 'qnb3tdS31AdqD3P6gCvbpdzyEzZgTTXnOmwxScKV', 'Gear Book', 'gear-book-arnold-coaster-sample-6662ccde8f82e.pdf', 'asset-2-at-4x-6662ccde8f228.png', 8, '2024-06-07 18:48:26', '2024-06-07 18:48:26'),
(18, 12, 'wtvuOWPMF39YFK7LvBrx0714wVdFPn2TDMmUkkxv', 'Gear Check List', 'trekking-6662cd4f1631a.pdf', 'asset-3-at-4x-6662ccf87a916.png', 9, '2024-06-07 18:48:52', '2024-06-07 18:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `cl_posts`
--

CREATE TABLE `cl_posts` (
  `id` int UNSIGNED NOT NULL,
  `post_date` datetime DEFAULT NULL,
  `post_author` int NOT NULL DEFAULT '1',
  `template` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_child` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sub_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `post_type` int DEFAULT '0',
  `post_category` int DEFAULT '0',
  `post_parent` int DEFAULT '0',
  `post_order` int DEFAULT '0',
  `page_banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_video` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `associated_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `published` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `is_active` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `is_draft` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_trashed` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `show_in_home` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `is_password_protected` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `comment` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `lang` enum('en','np') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_posts`
--

INSERT INTO `cl_posts` (`id`, `post_date`, `post_author`, `template`, `template_child`, `post_title`, `sub_title`, `post_content`, `post_excerpt`, `uri`, `page_key`, `post_type`, `post_category`, `post_parent`, `post_order`, `page_banner`, `page_thumbnail`, `page_video`, `meta_keyword`, `meta_description`, `associated_title`, `external_link`, `post_tags`, `status`, `published`, `is_active`, `is_draft`, `is_trashed`, `show_in_home`, `is_password_protected`, `comment`, `lang`, `created_at`, `updated_at`) VALUES
(17, '2023-01-01 05:28:17', 1, 'template-why-with-us', NULL, 'Why with us', 'Specialized in providing family holidays as well as budget and luxury adventure holidays', '<p style=\"text-align: justify;\"><strong>Specialized in providing family holidays as well as budget and luxury adventure holidays</strong></p>\r\n<p style=\"text-align: justify;\">Tourism Industry has been highly commercialized in Nepal lately which instigated the birth of countless Travel enterprises, especially Trekking and Tours organizers. Nevertheless, it is a matter of the fact that one ought to cherry-pick their trip organizer very wisely in order to pursue their dream trip. The question is legitimate and logical that amongst numerous agencies, why to choose Nepal Mountain Trekkers and trust us to spend your valuable time and hard-earned money?</p>', '<p>Gurkha Encounters, a leading Travel Agency in Nepal is specialized in providing family holidays as well as budget and luxury adventure holidays based in Nepal, Tibet, Bhutan, India and Sikkim.</p>', 'why-with-us', '1670821520451331085', 15, NULL, 0, 1, '1672573474.jpg', '03-ABSxd.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2022-12-12 05:05:20', '2023-01-01 22:29:34'),
(18, '2023-01-02 12:22:09', 1, 'template-who-we-are', NULL, 'Who we are', 'High-altitude adventures led from the front by groundbreaking mountaineers.', '<p>Gurkha Encounters is a leading trekking, adventure and eco travel company, based in Kathmandu. Established in 1998, we specialize in the Himalaya region of Nepal, Tibet, Bhutan and India, including Sikkim. We are experts in providing advice, and planning and organising a wide range of adventure and trekking travel options and related services.</p>', NULL, 'who-we-are', '1670821639761668770', 15, NULL, 0, 2, '1672573843.jpg', '01-1-8cdA4.jpg', NULL, 'Who we are', 'High-altitude adventures led from the front by groundbreaking mountaineers.', NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2022-12-12 05:07:19', '2023-01-02 17:24:12'),
(19, '2023-01-03 02:40:37', 1, 'template-our-history', NULL, 'Our History', 'We love to travel', '<p>Growing up in Gorkha District, Rajendra Bajgain had a lot of history all around him. A history, that started, in fact, from Guru Gorkhanath, who gave the area its name. A name which has been adapted by the British to Gurkha (hence Gurkha soldiers) but both, Gorkha and Gurkha are correct. It was also here in Gorkha that Prithvi Narayan Shah was born; the last King of Gorkha and the person who went on to unit Nepal into its current form, becoming King of Nepal in 1768.</p>\r\n<p>Life was not always easy in this remote area and political upheaval continues on during the Panchayat era of 1960 to 1990, which curtailed civil rights and freedom of political parties. A movement spearheaded by KP Bhattarai, who became prime minister under the Congress Party, ended the Panchayat era and brought democracy to the country. During the struggle for democracy, one of Rajendra&rsquo;s relatives was the security chief for BP Koirala, a prominent politician and first democratically elected Prime Minister (1959 to 1960). Bisheshwar Prasad Koirala, fondly known as BP Koirala, is a pillar in modern Nepali history from overthrowing the Rana regime and bringing back King Tribhuwan from exile in India to fight against the Panchayat system (a party-less system of governance). Unfortunately BP Koirala died (1982) before he could see the new constitution put together by KP Bhatarai&rsquo;s government, balancing civil supremacy and monarchy. In this atmosphere, it is natural that the young Rajendra was greatly influenced by politics. Something he took up seriously during recent years, standing in the elections of 2018.</p>', '<p style=\"text-align: center;\"><strong>20 Years for the Love of People and Travel</strong></p>\r\n<div style=\"text-align: center;\">This year Gurkha Encounters celebrates its 20th anniversary. So to celebrate this event we would like to share something about our Managing Director, the driving force behind the company, and his love of both people and travel.</div>', 'our-history', '1670821720206557800', 15, NULL, 0, 3, '1672735655.jpeg', 'compass-da1d201f-pmbTh.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2022-12-12 05:08:40', '2023-01-03 19:42:21'),
(20, '2022-12-16 03:15:49', 1, 'template-our-team', NULL, 'Our Team', NULL, NULL, NULL, 'our-team', '1670821833221664762', 15, 0, 0, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2022-12-12 05:10:33', '2022-12-28 09:52:17'),
(21, '2022-12-27 06:13:46', 1, 'template-reviews', NULL, 'Reviews', NULL, NULL, 'This year Gurkha Encounters celebrates its 20th anniversary. So to celebrate this event we would like to share something about our Managing Director, the driving force behind the company, and his love of both people and travel.', 'reviews', '1670822074833115494', 15, 0, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2022-12-12 05:14:34', '2022-12-27 12:29:23'),
(22, '2023-01-04 01:45:47', 1, 'template-blog', NULL, 'Blog', NULL, '<p>Helicopter tour in Nepal is the best way to enjoy the stunning views of Himalayas in short period of time by riding a helicopter</p>\r\n<p>Nepal helicopter tour packages offers mountain views, city sightseeing, research tours, photoghraphy tours and filming tour in Nepal. Honeymoon tour for newly married couple or special event/moment celebrations in the remote part of the Himalayas with your beloved is the dream come true service.</p>\r\n<p><br />Dreaming to be in the Himalayas just in front of world\'s highest mountain peaks, most of our customers become mad and express their internal feeling along with the adrenaline rush in the Himalayas. The helicopter tours to the base camp of Mount Everest is one of the most famous tour in the world. To learn more about our tours, take a look at the standard tours and special packages that we offer. Whether you\'re looking for a helicopter ride above the Himalayas or to tie the knot over the Big Apple, we\'ve got the experience you\'re looking for.</p>\r\n<p>The best helicopter flights in Nepal are towards the Himalayas and remote destinations. Everest base camp helicopter tour, Annapurna Base Camp helicopter tour and Muktinath helicopter tour are the most popular helicopter ride in Nepal. The heli ride trips offers great experience of mountain views, quick and easy access to the religious places such as Muktinath, Pathivara, Helesi and Gosainkunda which is totally for the travel purpose.</p>', NULL, 'blog', '1670822190722421954', 15, NULL, 0, 6, NULL, 'blog-banner-48ea0155-jcC0c.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2022-12-12 05:16:30', '2023-01-08 18:52:34'),
(23, '2023-01-04 01:49:51', 1, 'template-blog', NULL, 'News & Update', NULL, NULL, NULL, 'news-update', '1670822252693864970', 15, NULL, 0, 7, '1672819490.jpeg', 'news-banner-2-af0ed4d8-2n1ds.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2022-12-12 05:17:32', '2023-01-04 18:50:04'),
(24, '2022-12-21 01:38:26', 1, 'template-blog', NULL, 'Giving back to communities', NULL, '<p class=\"has-text-align-center\">Aaja ma nai khusi chhu ma<br />Atit ko parwa chhaina<br />Timi chhau saath ta..<br />Aaune dina ko dara chhaina</p>\r\n<p class=\"has-text-align-center\">Aaa.., Aasha chha maya hamro<br />Tutera jane chhaina&hellip;<br />Mana bhari kati maya chha..<br />Timilai po thaha chhaina</p>', 'We care deeply about the places we visit and the people who live there and believe that tourism should and can be something positive for both the visitors and for local communities. Being responsible and protecting the environment does not mean a compromise in quality or standards of travel. We make every effort, as do our local counterparts, to continue to do what we can through our approaches and activities in playing an active role in the effort to minimize', 'giving-back-to-communities', '167082228881046569', 15, 0, 0, 8, '01-7PYpbQpoSamxGyv5tlBeEGg9qtS4OnR7ogsQ0rRL.jpg', '', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '1', '0', '0', 'en', '2022-12-12 05:18:08', '2022-12-21 07:56:50'),
(28, '2023-01-06 02:53:10', 1, 'single', NULL, 'Why should you opt for Heli Tours in Nepal?', NULL, '<p>Helicopter tour in Nepal is the best way to enjoy the stunning views of Himalayas in short period of time by riding a helicopter<br />Nepal helicopter tour packages offers mountain views, city sightseeing, research tours, photoghraphy tours and filming tour in Nepal. Honeymoon tour for newly married couple or special event/moment celebrations in the remote part of the Himalayas with your beloved is the dream come true service.<br />Dreaming to be in the Himalayas just in front of world\'s highest mountain peaks, most of our customers become mad and express their internal feeling along with the adrenaline rush in the Himalayas. The helicopter tours to the base camp of Mount Everest is one of the most famous tour in the world. To learn more about our tours, take a look at the standard tours and special packages that we offer. Whether you\'re looking for a helicopter ride above the Himalayas or to tie the knot over the Big Apple, we\'ve got the experience you\'re looking for.</p>', '<p>sajilo aorem ipsum dolor sit amet consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam vo...</p>', 'why-should-you-opt-for-heli-tours-in-nepal', '1670826037875735974', 15, NULL, 23, 12, '1672723476.jpg', 'images-10-J74fb.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2022-12-12 06:20:37', '2023-01-06 19:54:07'),
(30, '2023-01-27 05:19:29', 1, 'single', NULL, 'Beginner Mountains to Climb in Nepal', NULL, '<p>Nepal is arcadia for climbers and mountain enthusiasts, period.</p>\r\n<p>Nepalese Himalayas provide utmost of the challenges and adrenaline rush for range of climbers, be it novice looking to sharpen his skills or connoisseur of climbing testing his might. With over 800 named mountains, 8 of them being above 8000 meters, mountaineering here in Nepal is technical and challenging. However, at Gurkha Encounters we do have list of mountains that would definitely fascinate you if you are a noob to climbing and are willing hone your climbing skills in the Himalayan nation. Herein listed are beginner mountains that can be climbed in Nepal</p>', '<p>Nepal is arcadia for climbers and mountain enthusiasts, period.</p>', 'beginner-mountains-to-climb-in-nepal', '1670826683407749906', 15, NULL, 22, 67, '1672910654.jpg', '06-ILLJf.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '1', '0', '0', 'en', '2022-12-12 06:31:23', '2023-01-27 22:19:39'),
(31, '2023-01-03 11:05:44', 1, 'single', NULL, 'Lorem Ipsum', NULL, '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '<p>this is beautiful and i know it.</p>', 'lorem-ipsum', '1670832270619683111', 15, NULL, 24, 94, '1672723254.jpg', '09-NqEf6.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '1', '0', '0', 'en', '2022-12-12 08:04:30', '2023-01-03 16:05:54'),
(34, '2022-12-12 04:56:53', 1, 'template-info-single', NULL, 'Terms and Policy', NULL, '<p>travel-insurancevtravel-insurancetravel-insurancetravel-insurancetravel-insurancetravel-insurancetravel-<br />insurancetravel-insurancetravel-insurancetravel-insurancetravel-insurancetravel-insurance</p>', 'travel-insurancevtravel-insurancetravel-insurancetravel-insurancetravel-insurancetravel-insurancetravel-\r\ninsurancetravel-insurancetravel-insurancetravel-insurancetravel-insurancetravel-insurance', 'terms-and-policy', '1670843552740516979', 16, 0, 0, 97, '1670843552.jpg', '06-Gv1OqmwqfleuSVPYenDukYKOug336AfOpHEpJCGc.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2022-12-12 11:12:32', '2022-12-12 11:12:32'),
(36, '2022-12-14 05:15:09', 1, 'template-info-single', NULL, 'Disclaimer', NULL, '<div>\r\n<div>team-and-policy &nbsp;\r\n<div>\r\n<div>team-and-policy &nbsp;\r\n<div>\r\n<div>team-and-policy &nbsp;\r\n<div>\r\n<div>team-and-policy &nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'team-and-policy  team-and-policy  team-and-policy  team-and-policy  team-and-policy  team-and-policy', 'disclaimer', '1670843777198847347', 16, 0, 0, 99, '1670843777.jpg', '01-oME0a9yeJ234WkBhqbk4tbI2CyeRqyE8V9ZldXog.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2022-12-12 11:16:17', '2022-12-14 11:30:12'),
(41, '2023-01-08 12:54:46', 1, 'single', NULL, 'Why should you opt for Heli Tours in Nepal?', NULL, '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'why-should-you-opt-for-heli-tours-in-nepal', '1671014638620201238', 15, NULL, 22, 101, '1671014638.jpg', '03-fcEMx.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '1', '0', '0', 'en', '2022-12-14 10:43:58', '2023-01-08 17:55:45'),
(42, '2023-01-03 10:48:25', 1, 'single', NULL, 'Beautiful view', 'more-or-less normal distribution', '<p>Helicopter tour in Nepal is the best way to enjoy the stunning views of Himalayas in short period of time by riding a helicopter</p>\r\n<p>Nepal helicopter tour packages offers mountain views, city sightseeing, research tours, photoghraphy tours and filming tour in Nepal. Honeymoon tour for newly married couple or special event/moment celebrations in the remote part of the Himalayas with your beloved is the dream come true service.</p>\r\n<p><br />Dreaming to be in the Himalayas just in front of world\'s highest mountain peaks, most of our customers become mad and express their internal feeling along with the adrenaline rush in the Himalayas. The helicopter tours to the base camp of Mount Everest is one of the most famous tour in the world. To learn more about our tours, take a look at the standard tours and special packages that we offer. Whether you\'re looking for a helicopter ride above the Himalayas or to tie the knot over the Big Apple, we\'ve got the experience you\'re looking for.</p>\r\n<p>The best helicopter flights in Nepal are towards the Himalayas and remote destinations. Everest base camp helicopter tour, Annapurna Base Camp helicopter tour and Muktinath helicopter tour are the most popular helicopter ride in Nepal. The heli ride trips offers great experience of mountain views, quick and easy access to the religious places such as Muktinath, Pathivara, Helesi and Gosainkunda which is totally for the travel purpose.</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'beautiful-view', '1671081525127927207', 15, NULL, 22, 102, '1671081525.jpeg', '2022-10-26-sPHGc.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '1', '0', '0', 'en', '2022-12-15 05:18:45', '2023-01-03 15:49:15'),
(47, '2023-01-03 11:06:37', 1, 'single', NULL, 'Unique', NULL, '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '<p>This is not beautiful.</p>', 'unique', '1671089943906508227', 15, NULL, 24, 2, NULL, '06-iqv6l.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '1', '0', '0', 'en', '2022-12-15 07:39:03', '2023-01-03 16:07:33'),
(48, '2023-01-03 11:03:26', 1, 'single', NULL, 'Our Local Counterparts', NULL, '<p>We care deeply about the places we visit and the people who live there and believe that tourism should and can be something positive for both the visitors and for local communities. Being responsible and protecting the environment does not mean a compromise in quality or standards of travel. We make every effort, as do our local counterparts, to continue to do what we can through our approaches and activities in playing an active role in the effort to minimize</p>', '<p>Who cares when one light goes out?</p>', 'our-local-counterparts', '1671608744955551963', 15, NULL, 24, 3, '1672722929.jpg', '04-GuMcA.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '1', '0', '0', 'en', '2022-12-21 07:45:44', '2023-01-03 16:04:01'),
(49, '2023-01-27 05:15:49', 1, 'single', NULL, 'Crawling', NULL, NULL, '<p>somthingn inside me</p>', 'crawling', '1671608817287414894', 15, NULL, 24, 95, NULL, 'dhaap-dam-2-asThEERsTKzTarz6RSVyA9BcRKTg58qkEDP7h0hH.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2022-12-21 07:46:57', '2023-01-27 22:16:10'),
(51, '2023-01-02 04:55:51', 1, 'single', NULL, 'Being responsible and protecting the environment', NULL, NULL, '<p style=\"text-align: justify;\">We care deeply about the places we visit and the people who live there and believe that tourism should and can be something positive for both the visitors and for local communities. Being responsible and protecting the environment does not mean a compromise in quality or standards of travel. We make every effort, as do our local counterparts, to continue to do what we can through our approaches and activities in playing an active role in the effort to minimize the negative impact of tourism and to raise awareness of &lsquo;eco&rsquo; and responsible approaches to tourism, both with travellers and local people. We are member of Tourism Concern and a sponsor and supporter of the International Porter Protection Group.</p>', 'being-responsible-and-protecting-the-environment', '1672112271979482303', 20, NULL, 0, 106, '1672657851.jpg', '04-HFrye.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2022-12-27 03:37:51', '2023-01-02 21:56:09'),
(52, '2023-01-02 04:56:50', 1, 'single', NULL, 'Just a little more thought and care', NULL, NULL, '<p style=\"text-align: justify;\">Adventure tourism continues to grow worldwide and with that, so too does the accompanying pressures and impacts on local environments and communities in the places we visit. And with many travellers visiting Nepal and the Himalaya each year, the strain on this beautiful environment</p>', 'just-a-little-more-thought-and-care', '1672112298677307216', 20, NULL, 0, 107, '1672657910.jpg', '01-1-bo4ya.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2022-12-27 03:38:18', '2023-01-02 21:57:05'),
(53, '2023-01-02 04:57:50', 1, 'single', NULL, 'We aim to provide environmentally friendly trekking and adventures', NULL, NULL, '<p style=\"text-align: justify;\">We continue to do what we can through our approaches and activities in playing an active role in the effort to minimize the negative impact of tourism and to raise awareness of &lsquo;eco&rsquo; and responsible approaches to tourism, with our own staff, local counterparts, travellers and local people. We aim to provide environmentally friendly trekking and adventures, including arranging clear up treks, for example to Base camp and ensuring our own treks are environmentally friendly and our staff and clients aware of the importance of responsible travel.</p>', 'we-aim-to-provide-environmentally-friendly-trekking-and-adventures', '1672112320618159211', 20, NULL, 0, 108, '1672657988.jpg', '02-1-fMfDj.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2022-12-27 03:38:40', '2023-01-02 21:58:08'),
(55, '2023-01-02 04:53:21', 1, 'single', NULL, 'Being responsible', NULL, NULL, '<p style=\"text-align: justify;\">We care deeply about the places we visit and the people who live there and believe that tourism should and can be something positive for both the visitors and for local communities. Being responsible and protecting the environment does not mean a compromise in quality or standards of travel.</p>', 'being-responsible', '1672113286950354583', 19, NULL, 0, 105, '1672657686.jpg', '05-EGQKy.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2022-12-27 03:54:46', '2023-01-02 21:53:38'),
(56, '2023-01-06 02:55:01', 1, 'template-info-single', NULL, 'Gurkha Encounters’ flag atop Mt. Everest', NULL, '<p style=\"text-align: justify;\">Gurkha Encounters&rsquo; flag was hoisted on top of the world for the first time. Ms. Kanchhi Maya Tamang, one of the Team Members of Gurkha Encounters hoisted the flag atop Mt. Everest on 22 May 2019 at 08:00am local time on the occasion of the 20th Anniversary of Gurkha Encounters.</p>\r\n<p style=\"text-align: justify;\">Since mountain tourism is the most important part of Nepalese tourism, Gurkha Encounters and its Founder &amp; Managing Director, Mr. Rajendra Bajgain are always conscious about the global warming and its negative impacts on the mountains. Previously, Mr. Bajgain initiated and coordinated the government level programmes like, &ldquo;The Historic Cabinet Meeting of Nepalese government near Mt. Everest&rdquo; and &ldquo;Summiteers&rsquo; Summit to Save the Himalayas&rdquo; to drag the world&rsquo;s attention on the climate change. This time, the message was fluttered on the top of the world as &ldquo;Save The Mountains&rdquo;.</p>\r\n<p style=\"text-align: justify;\">Similarly, Ms. Chhoki Sherpa, another Team Member of Gurkha Encounters was chosen as one of the liaison officers by the Department of Tourism (DoT) for the Spring Everest Expedition 2019. She was one of the two liaison officers who were nominated by Everest Summiteers&rsquo; Association and approved by the DoT. Chhoki successfully climbed Mt. Everest in the spring of 2018, and as an Everest summiteer, she is well acquainted with the condition on the mountains and life of climbers. She successfully completed her duty as a liaison officer.</p>', '<p style=\"text-align: justify;\">Gurkha Encounters&rsquo; flag was hoisted on top of the world for the first time. Ms. Kanchhi Maya Tamang, one of the Team Members of Gurkha Encounters hoisted the flag atop Mt. Everest on 22 May 2019 at 08:00am local time on the occasion of the 20th Anniversary of Gurkha Encounters.</p>', 'gurkha-encounters-flag-atop-mt-everest', '1672126883673129921', 15, NULL, 23, 111, NULL, 'download-13-4tcQp.jpg', NULL, 'Et accusamus repelle', 'Proident voluptate', NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2022-12-27 07:41:23', '2023-01-06 19:57:18'),
(60, '2022-12-28 06:06:24', 1, 'template-info-single', NULL, 'Travel Insurance', NULL, NULL, NULL, 'travel-insurance', '1672230090890', 16, 0, 0, 112, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2022-12-28 12:21:30', '2022-12-28 12:21:30'),
(61, '2022-12-28 06:06:46', 1, 'template-info-single', NULL, 'Altitude Sickness', NULL, NULL, NULL, 'altitude-sickness', '1672230113697', 16, 0, 0, 113, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2022-12-28 12:21:53', '2022-12-28 12:21:53'),
(63, '2023-01-29 01:08:06', 1, 'single', NULL, 'Nepal: Birding Heaven', NULL, '<p style=\"text-align: justify;\">Nepal is home to over 800 different species of birds spread across 6 varieties of vegetation,</p>\r\n<p style=\"text-align: justify;\">tropical, subtropical, lower-temperate, temperate, sub-alpine and alpine. Nepal&rsquo;s wetlands, national parks, lakes, rivers and mountains offer first class bird watching experience. Herein given are some of the prominent birds that are rare, have a distinguished fascinating features.</p>\r\n<p style=\"text-align: justify;\"><strong>Blue Throated Barbet&nbsp;</strong></p>\r\n<p style=\"text-align: justify;\">The blue-throated barbet is an Asian barbet native to the foothills of the Himalayas and Southeast Asia. It inhabits lowland and montane forests at elevations of 200&ndash;2,000 m. It has bright green, blue and red plumage.</p>\r\n<p style=\"text-align: justify;\"><strong>Cattle Egret</strong></p>\r\n<p style=\"text-align: justify;\">The number of individual birds recorded in the winter census increased by 947 compared to the previous year when 5,754 individuals were recorded. The urban bird count was conducted by Bird Conservation Nepal. Overall, the top ten species recorded in the valley were mostly the same as the previous year, with rock dove, house crow, house sparrow, barn swallow and common myna comprising the top five. In addition, the most common species of birds spotted in the valley during winter season are the red-vented bulbul, jungle myna, Eurasian tree sparrow, black kite, and cattle Egret.</p>\r\n<p style=\"text-align: justify;\"><strong>Cormorant&nbsp;</strong></p>\r\n<p style=\"text-align: justify;\">The great cormorant (Phalacrocorax carbo), known as the black shag in New Zealand and formerly also known as the great black cormorant across the Northern Hemisphere, the black cormorant in Australia, and the large cormorant in India and Nepal, is a widespread member of the cormorant family of seabirds.</p>\r\n<p style=\"text-align: justify;\"><strong>Hoppoe</strong>&nbsp;</p>\r\n<p style=\"text-align: justify;\">Hoppoes are colourful birds found across Africa, Asia, and Europe, notable for their distinctive \"crown\" of feathers. Three living and one extinct species are recognized, though for many years all of the extant species were lumped as a single species&mdash;Upupa epops.</p>\r\n<p style=\"text-align: justify;\"><strong>Jungle Blabber</strong>&nbsp;</p>\r\n<p style=\"text-align: justify;\">The jungle babbler (Argya striata) is a member of the family Leiothrichidae found in the Indian subcontinent. They are gregarious birds that forage in small groups of six to ten birds, a habit that has given them the popular name of \"Seven Sisters\" in urban Northern India, and Saath bhai (seven brothers) in Bengali, with cognates in other regional languages which also mean \"seven brothers\".</p>\r\n<p style=\"text-align: justify;\"><strong>Red Vented Bulbul&nbsp;</strong></p>\r\n<p style=\"text-align: justify;\">Hoopoes are colourful birds found across Africa, Asia, and Europe, notable for their distinctive \"crown\" of feathers. Three living and one extinct species are recognized, though for many years all of the extant species were lumped as a single species&mdash;Upupa epops.</p>\r\n<p style=\"text-align: justify;\"><strong>Find best birding trips in Nepal with Gurkha Encounters. Enquire Now.</strong></p>', '<p style=\"text-align: justify;\">Nepal is home to over 800 different species of birds spread across 6 varieties of vegetation,</p>\r\n<p style=\"text-align: justify;\">tropical, subtropical, lower-temperate, temperate, sub-alpine and alpine. Nepal&rsquo;s wetlands, national parks, lakes, rivers and mountains offer first class bird watching experience. Herein given are some of the prominent birds that are rare, have a distinguished fascinating features.</p>', 'nepal-birding-heaven', '1672993610783', 15, NULL, 22, 114, '1672993610.jpg', '1200px-microcarbo-melanoleucos-austins-ferry-3-cN5Pt.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '1', '0', '0', 'en', '2023-01-06 19:11:50', '2023-01-29 18:08:10'),
(64, '2023-01-06 02:14:38', 1, 'single', NULL, 'Jungle Cats: Surge in Nepal', NULL, '<p style=\"text-align: justify;\">Number of tigers in Nepalese territory has increased in the recent years.On the occasion of Global Tiger Day, July 29th, a newfound information about the number of tigers in Nepal was released. The number of jungle cats within territorial boundary of Nepal had risen to 350 from 121 in 2010, almost tripling the count . The number of Bengal Tigers, specially in the western terai plains of Bardiya and Banke, has been on the rise since 2009 after Government of Nepal initiated the protection campaign. With the supporting hands of The World Wildlife Fund (which has been developing ecotourism projects in Nepal), Local Communities, Nepal Army and The Governing Body: Ministry of Culture, Aviation and Tourism, preservation of Tigers was put up on priority. Check our Wildlife Trips section to know more.</p>', '<p style=\"text-align: justify;\">Number of tigers in Nepalese territory has increased in the recent years.On the occasion of Global Tiger Day, July 29th, a newfound information about the number of tigers in Nepal was released. The number of jungle cats within territorial boundary of Nepal had risen to 350 from 121 in 2010, almost tripling the count . The number of Bengal Tigers, specially in the western terai plains of Bardiya and Banke, has been on the rise since 2009 after Government of Nepal initiated the protection campaign. With the supporting hands of The World Wildlife Fund (which has been developing ecotourism projects in Nepal), Local Communities, Nepal Army and The Governing Body: Ministry of Culture, Aviation and Tourism, preservation of Tigers was put up on priority. Check our Wildlife Trips section to know more.</p>', 'jungle-cats-surge-in-nepal', '1672994004907', 15, 0, 22, 115, '1672994004.jpg', 'download-1-RVqEc.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2023-01-06 19:18:24', '2023-01-06 19:18:24'),
(65, '2023-01-06 02:19:24', 1, 'single', NULL, 'Luxury Tour to Bhutan', NULL, '<p style=\"text-align: justify;\">Bhutan, a small land-locked country in South Asia, is an enigma is itself.</p>\r\n<p style=\"text-align: justify;\">From the concept of Happiness Index to the restrictions on travel, this Himalayan country is the right blend of modernization and preservation of ancient culture which makes it one of the most appealing things to tick off your bucket list. Cut off from the rest of the world until the 1960s, Bhutan still continues to impose heavy restrictions on tourists except from India, Bangladesh and Maldives. Others have to obtain visa and book their travel through Bhutanese travel agents. This may make you wonder about what Bhutan has been trying to hide. Brace yourselves; Bhutan is not your average destination. It is filled with monasteries, mountains, magic and much more.</p>\r\n<p style=\"text-align: justify;\">Being a country of the Drukpa Lineage (the Dragon People), the name Bhutan is believed to have originated form Sankskrit word &ldquo;Bhota-anta&rdquo; which means &ldquo;end of Tibet&rdquo; referring to the country being the southern extremity of the Tibetan Plateau and culture. The Bhutanese people take pride in their responsible as well as sustainable tourism approach. The minimum tariff of $250 per day for foreigners, which makes Bhutan one of the most expensive tourist destinations, explains their belief in low volume but high value tourism. On the bright side, this tariff paid is inclusionary of food, accommodation and transport with an official guide to accompany you through the whole trip.</p>\r\n<p style=\"text-align: justify;\">Bhutan is a country that will leave you in awe with disbelief. It is a unique blend of culture and technology where monks carry smart phones and giant penises are erected at the entrance of houses. Bhutanese believe that Phallus (image of an erected penis) keeps away evil people, spirits, and gossip. Although the country is still not very open to the world, the Bhutanese are well educated, easy going and very well informed about the world affairs. Along with technology and culture, the country has emphasized greatly on the preservation of their environment which makes it endlessly fascinating. Bhutan is not just carbon neutral; its nature absorbs more carbon that it produces. Thanks to the strict laws imposed, more than 70% of Bhutan is covered with forests that include over 5,400 species of plants. So don&rsquo;t be too shocked if you see lush spreads of blue poppies and hillsides ablaze with colorful rhododendron blooms in your trails.</p>\r\n<p style=\"text-align: justify;\">Bhutan is gifted with a wealthy primate life. It is home to the rare golden langur, Macaca munzala (a new variant of the Assamese macaque), Bengal tiger, clouded leopard, hispid hare, sloth bear, Himalayan black bear, red panda, snow leopard, blue sheep, the Himalayan Musk deer and many other rare animals. There are more than 770 species of Birds along with the endangered white-winged duck. Bhutan is well known for pristine mountain adventure trekking and hiking routes. Also while in Bhutan do not miss the Mask dance of the drums from Drametse which is registered in the UNESCO Intangible Cultural Heritage List. You will find the streets fascinating as they are filled with colorful textiles and handicrafts along with outrageous archery competitions every now and then. Imagine these streets in traditional Bhutanese villages shrouded with scenic Himalayan ranges and snow-capped mountains filled with picture-book landscape along with majestic fortress-like dzongs, monasteries and the welcoming Bhutanese smiles. Who wouldn&rsquo;t want to travel to Bhutan?</p>\r\n<p style=\"text-align: justify;\">But Bhutan is rapidly changing. With the recent political shift from absolute monarchy to constitutional monarchy, a great deal of construction is going on, particularly in Thimphu and Paro. This has posed some threat to the originality of the traditional places in these places. It might not be long before modernization starts taking its toll on Bhutan, just like many other countries. Therefore, if you\'re thinking about visiting Bhutan, hurry up, it\'s better to go sooner rather than later!</p>', '<p style=\"text-align: justify;\">Bhutan, a small land-locked country in South Asia, is an enigma is itself.</p>\r\n<p style=\"text-align: justify;\">From the concept of Happiness Index to the restrictions on travel, this Himalayan country is the right blend of modernization and preservation of ancient culture which makes it one of the most appealing things to tick off your bucket list. Cut off from the rest of the world until the 1960s, Bhutan still continues to impose heavy restrictions on tourists except from India, Bangladesh and Maldives. Others have to obtain visa and book their travel through Bhutanese travel agents. This may make you wonder about what Bhutan has been trying to hide. Brace yourselves; Bhutan is not your average destination. It is filled with monasteries, mountains, magic and much more.</p>\r\n<p style=\"text-align: justify;\">Being a country of the Drukpa Lineage (the Dragon People), the name Bhutan is believed to have originated form Sankskrit word &ldquo;Bhota-anta&rdquo; which means &ldquo;end of Tibet&rdquo; referring to the country being the southern extremity of the Tibetan Plateau and culture. The Bhutanese people take pride in their responsible as well as sustainable tourism approach. The minimum tariff of $250 per day for foreigners, which makes Bhutan one of the most expensive tourist destinations, explains their belief in low volume but high value tourism. On the bright side, this tariff paid is inclusionary of food, accommodation and transport with an official guide to accompany you through the whole trip.</p>', 'luxury-tour-to-bhutan', '1672994222841', 15, 0, 22, 116, '1672994222.jpg', 'download-2-AzzqJ.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2023-01-06 19:22:02', '2023-01-06 19:22:02'),
(66, '2023-01-06 02:23:14', 1, 'single', NULL, 'Indra Jatra', NULL, '<p style=\"text-align: justify;\">More commonly known as Yenyā, Indra Jatra is considered the biggest religious street festival in Kathmandu.</p>\r\n<p style=\"text-align: justify;\">More commonly known as Yenyā, Indra Jatra is considered the biggest religious street festival in Kathmandu. Ye means \"Kathmandu\", Ya means \"celebration\" and together it means \"celebration inside Kathmandu\" in Nepali language. The celebrations consist of two events, Indra Jātrā and Kumāri Jātrā. If you happen to be around Kathmandu during this time, you will surely find it filled with chariot possessions, masked dancers, religious enactments, lights, colors and the Living Goddess Kumari as the centre of celebrations. The eight-day long Indra Jatra festival falls in September and is one of the most exciting and revered festivals of the Newar community of the Kathmandu Valley. This also marks the beginning of a month-long festival season of autumn.</p>\r\n<p style=\"text-align: justify;\">Legend has it that Lord Indra, the King of Heaven, once disguised himself and visited the ancient city of Kathmandu to steal parijat (a night flowering jasmine), but instead got captured by the locals. Indra&rsquo;s mother, Dagini, then came down to earth to look her son. In return for her son&rsquo;s release, she promised to spread dew over the crops for the coming months and to take back with her to heaven all those who had died in the past year. The locals agreed and since then the festival of Indra Jatra is celebrated in the valley. Thus, the festival honors the recently deceased and pays homage to Indra and his mother Dagini for the upcoming harvests. It begins with the erection of a wooden pole (yosin) made of pine at Basantapur Sqaure in front of the old Hanuman Dhoka Palace in Kathmandu. For the pole-raising ceremony, hundreds of spectators gather at the Palace Square and on the surrounding temples. Images of Indra, usually as a captive are made along with various sacrifices of goats and roosters. Numerous processions are observed during this festival. Join us in witnessing this magnificent festival where we take you through the following processions:</p>\r\n<ul class=\"uk-list uk-list-bullet\">\r\n<li style=\"text-align: justify;\">\r\n<h3>Kumari Jatra</h3>\r\n<p>Also known as the chariot festival of Kumari, this festival falls during Indra Jatra. It starts with three chariots carrying the human representations of the glorious deities Ganesh, Bhairava and Kumari accompanied by musical bands are pulled along the festival route through Kathmandu on three days. The procession starts at around 3 pm. Route on first day of chariot festival, Kwaneyā (downtown procession): Basantapur, Maru, Chikanmugal, Jaisidewal, Lagan, Brahma Marga, Wonde, Hyumata, Kohity, Bhimsensthan, Maru, Basantapur. Route on second day of chariot festival, Thaneyā happens in the uptown area while the third day of the festival is around the midtown area of the valley. It was started in 1756 AD during the reign of Jaya Prakash Malla.</p>\r\n</li>\r\n<li style=\"text-align: justify;\">\r\n<h3>Mata Biye</h3>\r\n<p>On the first day of the chariot festival, Newars honor their deceased during the past year by offering small butter lamps along the processional route. The butter lamps are also offered to relatives and friends as a sign of respect. Mata biye means to offer these lamps. The procession starts at around 6 pm.</p>\r\n</li>\r\n<li style=\"text-align: justify;\">\r\n<h3>Dagin</h3>\r\n<p>This procession re-enacts the mythological story of Lord Indra&rsquo;s mother, Dagini, looking for him while he was a captive in the valley. The procession consists of a man wearing a mask accompanied by a musical band. It starts at around 8 pm when the chariot of Kumari returns to Maru after journeying around the southern part of town.</p>\r\n</li>\r\n<li>\r\n<h3>Bau Mata</h3>\r\n<p style=\"text-align: justify;\">A long replica of a holy snake is made of reeds on which a row of oil lamps are placed during this procession. This sculpture is suspended from poles carried on the shoulders and taken along the festival route. It starts at around 9 pm and is organized by the Manandhar caste group.</p>\r\n</li>\r\n</ul>', '<p style=\"text-align: justify;\">More commonly known as Yenyā, Indra Jatra is considered the biggest religious street festival in Kathmandu.</p>\r\n<p style=\"text-align: justify;\">More commonly known as Yenyā, Indra Jatra is considered the biggest religious street festival in Kathmandu. Ye means \"Kathmandu\", Ya means \"celebration\" and together it means \"celebration inside Kathmandu\" in Nepali language. The celebrations consist of two events, Indra Jātrā and Kumāri Jātrā. If you happen to be around Kathmandu during this time, you will surely find it filled with chariot possessions, masked dancers, religious enactments, lights, colors and the Living Goddess Kumari as the centre of celebrations. The eight-day long Indra Jatra festival falls in September and is one of the most exciting and revered festivals of the Newar community of the Kathmandu Valley. This also marks the beginning of a month-long festival season of autumn.</p>', 'indra-jatra', '1672994478931', 15, 0, 22, 117, '1672994478.jpg', 'download-3-DvmkP.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2023-01-06 19:26:18', '2023-01-06 19:26:18'),
(67, '2023-01-06 02:27:19', 1, 'single', NULL, 'Lake Rara', NULL, '<p style=\"text-align: justify;\">Lake Rara-a place for self-reflection:</p>\r\n<p style=\"text-align: justify;\">Nepal is a country with plentitude of hidden natural treasures; when you think you have discovered all places of mesmerizing beauty, you hear of a new place that is even more captivating and tempting to visit. Lake Rara is one of such places. It is a place of unexplainable beauty; a site that will leave you completely submerged in its profound serenity and enthralling magnificence.</p>\r\n<p style=\"text-align: justify;\">Ergo, if you are in Nepal or are planning to make a visit sometime soon, you should undoubtedly go explore and unravel Lake Rara. However, visiting a new country with a completely new culture and way of living can be somewhat overwhelming. Nevertheless, Gurkha encounters; a luxury and adventure travel company has everything planned out for you, in order to make your trip to Nepal an indelible and worthwhile one.</p>\r\n<p style=\"text-align: justify;\">Gurkha Encounter&rsquo;s eleven day trip to Rara is one of its most relished trips and will help you explore Western Nepal&rsquo;s mesmerizing beauty in depth. You will be greeted by our amiable staff members at the Tribhuwan International airport and will be escorted to the Hyatt Regency Hotel. The next day you will get an opportunity to visit architectural magnum opuses inside the valley such as Kathmandu Durbar Square, Pashupatinath Temple, the Swaymbunath Stupa and many more. The real adventure will begin from the second day of your trip as a private chartered B3E helicopter will take you to Jumla. The remaining day in Jumla will be spent unravelling the local bazars and visiting an ancient temple dedicated to a mystic; Chandan Nath. The next day you will trek to Chere Chaur and camp overnight. On the way to Chere Chaur you will discern stone stupas depicting some of Buddha&rsquo;s history. On the 6th day of the trip you will climb uphill to Sinja Valley. During this time you will get a once in a life time opportunity to take a look at the three hundred year old Kanaksundari Temple, where deftly built ancient stone lions will guard the inner altar. Sinja once used to be the flourishing winter capital of the Malla Kings and hence has a few Malla stones, dating from the medieval Khasa Kingdome.</p>\r\n<p style=\"text-align: justify;\">Finally on the eighth day of your trip your anticipation will lessen and your 4 days of rigorous trekking will seem worth it, as you will reach your final destination; the largest and the deepest freshwater lake in Nepal. The trek from Ghorosingha to Lake Rara will surely be a worthwhile one; your heart will be full of indefatigable energy and excitement as you will be closest to your destination then. During the evening of the eighth day you will get to laze your time away, relax, and regain some energy as everyone camp overnight near the shores of Rara. The next day you can walk up to the Murma hill for a full view of the lake and the surrounding scenic valleys. You can cleanse your body and your soul by swimming at the lake. You will be left feeling immediately recharged and energized after the swim because the water is extremely refreshing and cold.</p>\r\n<p style=\"text-align: justify;\">The pure crystal clear water of the Lake Rara will make you pensive and contemplative about the purpose of your life. The pellucid surface of the lake not only reflects the clear azure sky above, albeit will also help you reflect upon yourself.</p>', '<p>Lake Rara-a place for self-reflection:</p>\r\n<p style=\"text-align: justify;\">Nepal is a country with plentitude of hidden natural treasures; when you think you have discovered all places of mesmerizing beauty, you hear of a new place that is even more captivating and tempting to visit. Lake Rara is one of such places. It is a place of unexplainable beauty; a site that will leave you completely submerged in its profound serenity and enthralling magnificence.</p>', 'lake-rara', '1672994675538', 15, 0, 22, 118, '1672994675.jpg', 'images-3-UWnTC.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2023-01-06 19:29:35', '2023-01-06 19:29:35');
INSERT INTO `cl_posts` (`id`, `post_date`, `post_author`, `template`, `template_child`, `post_title`, `sub_title`, `post_content`, `post_excerpt`, `uri`, `page_key`, `post_type`, `post_category`, `post_parent`, `post_order`, `page_banner`, `page_thumbnail`, `page_video`, `meta_keyword`, `meta_description`, `associated_title`, `external_link`, `post_tags`, `status`, `published`, `is_active`, `is_draft`, `is_trashed`, `show_in_home`, `is_password_protected`, `comment`, `lang`, `created_at`, `updated_at`) VALUES
(68, '2023-01-06 02:33:16', 1, 'single', NULL, 'Krishna Janmashthami', NULL, '<p style=\"text-align: justify;\">Krishna Janmashtami, also known as Krishnashtami, Saatam Aatham, Gokulashtami, Ashtami Rohini, Srikrishna Jayanti, is an annual Hindu festival that celebrates the birth of Krishna, the eighth avatar of Vishnu; Hinduism believes in a trinity of gods: Brahma (the creator), Vishnu (the preserver), and Shiva (the destroyer).</p>\r\n<p style=\"text-align: justify;\">Krishna Janmashtami, also known as Krishnashtami, Saatam Aatham, Gokulashtami, Ashtami Rohini, Srikrishna Jayanti, is an annual Hindu festival that celebrates the birth of Krishna, the eighth avatar of Vishnu; Hinduism believes in a trinity of gods: Brahma (the creator), Vishnu (the preserver), and Shiva (the destroyer). Thus, in a country like Nepal where more than 80% of the population is Hindu, Krishna Janmashthami is a major festival celebrated with great devotion and enthusiasm. As per the Hindu calendar, this religious festival is celebrated on the Ashtami of Krishna Paksh or the 8th day of the dark fortnight in the month of Bhadra which falls during August/September of the Gregorian calendar. This year it is being celebrated on 23rd August as the 5244th Birth Anniversary of Lord Krishna. The holy book of Hinduism i.e. the Bhagavad Gita is set in a narrative framework of a dialogue between Pandava Prince Arjuna and his guide/charioteer Krishna. At the start of the Dharma Yudhha (righteous war) between Pandavas and Kauravas, Arjuna is filled with distress and moral dilemma about the violence and death the war will cause. He wonders if he should repudiate and seeks Krishna\'s counsel, whose reply and consultation constitute the Bhagadvad Gita. Krishna instructs Arjuna to \"fulfill his Kshatriya (warrior) duty to uphold the Dharma\" through \"selfless action\". For this and many other reasons, Krishna is considered to be the most powerful incarnations of Lord Vishnu.</p>\r\n<p style=\"text-align: justify;\">Krishna was born exactly at midnight in a prison cell. It is believed he was born to end the suffering of the people due to the wickedness of his maternal uncle Kansa. He was the biological child of Vasudev and Devaki, but he was brought up by Nanda and Yasoda Maiya. Krishna&rsquo;s childhood is full of fun and love. His youth is romantic and an example of love and friendship with Gopis and Gopinies. Krishna Janmashthami is celebrated all over the world by all Hindu. To mark the day, there will be performances at midnight that look back to the epic battle of Krishna against the evil King Kansa, when it was also very dark and windy. Many devotees will fast, worship Krishna, and offer such things as milk and cheese curds to him since he is thought to particularly enjoy dairy products. Janmashtami celebrations include singing bhajans and dancing, reenacting the &ldquo;life cycle of Krishna,&rdquo; visits to festively decorated Hindu temples, and exchanging of gifts. Most temples are lit up for the devotees who gather in the night to offer flowers, food and candy to a Krishna idol.</p>\r\n<p style=\"text-align: justify;\">Come join us to behold the best Krishna Janmashthami celebrations in Nepal. On 24th August, every street of Kathmandu remains abuzz with beautiful fragrance of flowers and incense sticks with devotees visiting all the beautiful temples in and around the valley rejoicing in the birth of their beloved god. All Krishna temples are placed with beautiful cribs holding a small idol of the &ldquo;Balgopal&rdquo; (baby Krishna), the makhan chor. Krishna lila (drama) is performed during this festival. But some places really stand out when it comes to celebrating this festival. So, if you want to immerse yourself into the majestic and colorful world of Krishna, you can join us on a tour to the following places.</p>\r\n<h2 style=\"text-align: justify;\">Patan Krishna Mandir</h2>\r\n<p style=\"text-align: justify;\">Re-opened only recently in 2018 after the devastating earthquake of 2015, this temple is swarmed with thousands of devotees during the festival. The sight of devotees standing in lines singing the name of the lord, waiting patiently just to catch a glimpse of his idol is almost infectious.</p>\r\n<h2 style=\"text-align: justify;\">ISKON Temples</h2>\r\n<p style=\"text-align: justify;\">Located in Budhanilkantha, the ISKON Temples really stand out when it comes to celebrating this day. The passion, magnificence and devotion of the people visiting will fill your heart with bliss. On this day Mahaprasad is offered to the diety that includes 56 delicacies prepared without garlic and onion.</p>\r\n<h2 style=\"text-align: justify;\">Shyam Shyam Dham</h2>\r\n<p style=\"text-align: justify;\">A religious fair that lasts for days is organized at Shyam Shyam Dham in Thimi Municipality, Bhaktapur. Devotees offer prayers, prasad (the god&rsquo;s leftovers, which carry his favour), arti, sing bhajans, perform skits and dance their heart out to celebrate the festival all night long.</p>', '<p style=\"text-align: justify;\">Krishna Janmashtami, also known as Krishnashtami, Saatam Aatham, Gokulashtami, Ashtami Rohini, Srikrishna Jayanti, is an annual Hindu festival that celebrates the birth of Krishna, the eighth avatar of Vishnu; Hinduism believes in a trinity of gods: Brahma (the creator), Vishnu (the preserver), and Shiva (the destroyer).</p>', 'krishna-janmashthami', '1672994895710', 15, NULL, 22, 119, '1672994968.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2023-01-06 19:33:15', '2023-01-08 17:46:34'),
(69, '2023-01-08 12:54:52', 1, 'single', NULL, 'Luxury Upper Dolpo and Phoksundo Lake TreK', 'Luxury Upper Dolpo and Phoksundo Lake TreK', '<p style=\"text-align: justify;\">Behind the Himalayan Mountains, shrouded by mystery and allure, lies Dolpo, one of the most remote and isolated places in Nepal.</p>\r\n<p style=\"text-align: justify;\">Behind the Himalayan Mountains, shrouded by mystery and allure, lies Dolpo, one of the most remote and isolated places in Nepal. Sandwiched between the Tibetan Plateau and the Dhaulagiri Ranges (8,167 meters; 7th highest mountain in the world), Dolpo was opened to trekkers only in 1989, still maintaining its pristine trekking routes as only a limited number of people are allowed into the region annually. This is in part due to the high &lsquo;restricted area&rsquo; fee levied on trekkers to this area. It resembles the mysterious and spiritual aura in the hidden valleys of Western Nepal; remoteness of which adds to the sense of adventure among its visitors. The area is, however, quite well known through the writings of David Snellgrove in his book &lsquo;Himalayan Pilgrimage&rsquo; (1956), and David Matthiessen&rsquo;s book &lsquo;The Snow Leopard&rsquo; (1973). Moreover, Eric Valli&rsquo;s visually stunning French-Nepalese Oscar-nominated film &lsquo;Himalaya&rsquo; or &lsquo;Caravan&rsquo; (1999) was set in Dolpo which brought the region to the world&rsquo;s attention. Historically it is divided into 4 valleys: Tsharka (good growing place), Tarap (auspicious excellence), Panzang (adobe of mountains) and Nangkhong (innermost place).</p>\r\n<p style=\"text-align: justify;\">Till 8th century, Dolpo was a Tibetan province, later a Kingdom of Purang until 18th century when King of Gorkha Prithivi Narayan Shah started the unification of Nepal and Dolpo also became a unified part of the country. Being inaccessible for a long time has preserved the Tibetan Culture in a relatively pure form and therefore it is one of the few places on earth that practices both Buddhism and Bon (similar to Buddhism). The Tibetan speaking people from this region are traditionally traders and yak herdsmen. Here also lies the country&rsquo;s largest national park and conservation area, the Shey Phoksundo National Park, at 3,500 km. sq. It is home to the glory of the Himalayan regions, the endangered snow leopard and other creatures like blue sheep, musk deer, wild yak, wild goat, marmot and several other animals&rsquo; species. Babbler Bhykur, a bird that is not found anywhere else in the world except Nepal is found here, alongside Golden Eagles, Partridges like Lophophorus and many more species of birds along with different verities of butterflies. It is also rich in valuable herbs like Yarsha Gompa/Jeevan Buti in local term (Cordyceps sinensis), Sea buckthorn (Daley chuck in local language); besides many more medicinal and aromatic herbs that are found here. While touring the area, you will pass across trees like pine, juniper, silver birch, wall nuts, apples, plums, etc.</p>\r\n<p style=\"text-align: justify;\">In the lower Dolpa lies the deepest high altitude lake of Nepal: Phoksundo. It is an alpine fresh water oligotrophic lake in Shey Phoksundo National Park, located at an elevation of 3611.5 meters (11,849 ft) above sea level in the Dopla district. Phoksundo Lake is 494 hectares (1.91 sq mi) in size with a water volume of 409,000,000 m3 and a discharge of 3.715 m3/s. In 2004, a survey by the Department of Hydrology and Meteorology measured the maximum depth of the lake at 145 m (476 ft). It was designated as a Ramsar site on September 2007 which is a wetland site designated to be of international importance under the Ramsar Convention. There are 2,231 Ramsar sites as of 2016 protecting 214,936,005 hectares (531,118,440 acres), and 169 national governments are currently participating. There are more than 20 stupas in the southern belt of the lake. On the eastern side, there is a gompa, where annual prayers are carried out. On the lake&rsquo; southern end, the village of Ringmo sits on the 30,000-40,000 year old landslide dam that formed the lake. Past the dam, the waters of the lake plunge over a 167 meter tall waterfall, called Phoksundo Waterfall. Shey Phoksundo is considered as a holy place by the Buddhists living in Dolpa region and around. Hence, one is not allowed to soak in the aquamarine water of the lake. Even then, the lake is worth a watch for its calmness, its aura and the clear deep blue water.</p>\r\n<p style=\"text-align: justify;\">Hidden away from the mainstream civilization, the upper Dolpo and Phoksundo Lake trek is a serene and exceptionally beautiful area that boasts a rich mixture of culture, religion, flora, fauna, history and mesmerizing natural beauty. Join us to step into this majestic part of Nepal which will quench your thirst for adventure but still leave you wanting for more.</p>', '<p style=\"text-align: justify;\">Behind the Himalayan Mountains, shrouded by mystery and allure, lies Dolpo, one of the most remote and isolated places in Nepal.</p>\r\n<p style=\"text-align: justify;\">Behind the Himalayan Mountains, shrouded by mystery and allure, lies Dolpo, one of the most remote and isolated places in Nepal. Sandwiched between the Tibetan Plateau and the Dhaulagiri Ranges (8,167 meters; 7th highest mountain in the world), Dolpo was opened to trekkers only in 1989, still maintaining its pristine trekking routes as only a limited number of people are allowed into the region annually. This is in part due to the high &lsquo;restricted area&rsquo; fee levied on trekkers to this area. It resembles the mysterious and spiritual aura in the hidden valleys of Western Nepal; remoteness of which adds to the sense of adventure among its visitors. The area is, however, quite well known through the writings of David Snellgrove in his book &lsquo;Himalayan Pilgrimage&rsquo; (1956), and David Matthiessen&rsquo;s book &lsquo;The Snow Leopard&rsquo; (1973). Moreover, Eric Valli&rsquo;s visually stunning French-Nepalese Oscar-nominated film &lsquo;Himalaya&rsquo; or &lsquo;Caravan&rsquo; (1999) was set in Dolpo which brought the region to the world&rsquo;s attention. Historically it is divided into 4 valleys: Tsharka (good growing place), Tarap (auspicious excellence), Panzang (adobe of mountains) and Nangkhong (innermost place).</p>', 'luxury-upper-dolpo-and-phoksundo-lake-trek', '1672995156980', 15, NULL, 22, 120, '1672995156.jpg', 'download-5-zAzQx.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2023-01-06 19:37:36', '2023-01-08 17:55:40'),
(70, '2023-01-06 02:38:31', 1, 'single', NULL, 'Yes its Monsoon – Yes you can travel', NULL, '<p style=\"text-align: justify;\">The summer season in Nepal tends to last from June to August, and is known for recurrent and unexpected rain showers. Ergo, summer season isn&rsquo;t generally considered ideal for high altitude treks and travel, as ambiguous mountain views, muddy trekking trails, unmanaged roads and flight delays are common.</p>\r\n<p style=\"text-align: justify;\">Albeit, many are oblivious of the fact that there are many places one can visit and unravel during the monsoon season in Nepal. There are certain rain-shadow zones in Nepal that experience lesser rainfall during the monsoon and are appropriate destinations for travel enthusiasts to explore. These rain-shadow zones in Nepal have only slight precipitation due to their topographic barrier of mountain ranges.</p>\r\n<p style=\"text-align: justify;\">One can go for a trek to Upper Mustang as it is situated on the rain shadow zone of the colossal Annapurna and Dhaulagiri mountain ranges, experiencing very little rainfall. While most trekking destinations in Nepal are verdant and full of greenery, Mustang is rather celebrated for its corroded hills and astonishing rocky landscapes. In addition, travelers also get to visit the forbidden kingdom of Lo Mangthang. Here one can discern people practicing ancient Tibetan culture and get to know their way of life and their cultural heritage.</p>\r\n<p style=\"text-align: justify;\">Gurkha Encounters has been giving travel enthusiasts a splendid opportunity to visit the magical kingdom of Mustang along with other similar pristine services. Hence, Gurkha Encounters 8 day trip is the perfect choice for travel lovers who are in search of some adventure during the monsoon season in Nepal.</p>\r\n<p style=\"text-align: justify;\">If you aren&rsquo;t much of a fan of trekking and exploring various hills and plains Gurkha Encounters has multiple tailor-made travel options just for you. You can either choose to go for a jungle safari and enjoy the serene atmosphere of lush forests or can get all pumped up and ready for an enjoyable comfort trek. Nothing can get better than this, as you get to personalize your dream trip according to your interests, budget and comfort. Gurkha Encounter&rsquo;s tailor made program allows travelers to choose the travel destination of their choice, along with the duration of their travel, approximate date of their travel and finally their hotel&rsquo;s specifications. This luxury travel company, hence has been making travelling in monsoon both worthwhile and comfortable.</p>\r\n<p style=\"text-align: justify;\">However, as it is always more thoughtful and pragmatic to be prepared, do carry trekking gears that are appropriate for the monsoon season along with umbrellas and raincoats in case there are slight rain showers.</p>\r\n<p style=\"text-align: justify;\">So, if you are planning to visit our versatile and majestic country, Nepal this monsoon make sure you contact Gurkha Encounters for the best luxury travel and tailor made services.</p>', '<p style=\"text-align: justify;\">The summer season in Nepal tends to last from June to August, and is known for recurrent and unexpected rain showers. Ergo, summer season isn&rsquo;t generally considered ideal for high altitude treks and travel, as ambiguous mountain views, muddy trekking trails, unmanaged roads and flight delays are common.</p>', 'yes-its-monsoon-yes-you-can-travel', '1672995345761', 15, 0, 22, 121, '1672995345.jpg', 'download-8-zb7HT.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2023-01-06 19:40:45', '2023-01-06 19:40:45'),
(71, '2023-01-06 02:42:35', 1, 'single', NULL, 'Why visit the Magical Kingdom of Nepal?', NULL, '<p style=\"text-align: justify;\">Plain of aspiration&rdquo; this is the precise meaning of the word Mustang in Tibetan, a word so powerful, optimistic and encouraging; the name for a city with a magnificent history. Mustang&rsquo;s unique name and its irresistible splendor has been persuading inquisitive travelers to make a visit to this magical kingdom. Gurkha Encounters, a luxury travel company has been making such trips possible.</p>\r\n<p style=\"text-align: justify;\">Gurkha Encounter&rsquo;s luxury trip to Mustang especially focuses on giving travelers, an opportunity to visit Lo-Manthang, also known as the forbidden kingdom of Lo. Lo-Manthang has a worth-listening back story to it. Its journey as an independent kingdom began after 1380, when Ame Pal, a warrior and a sincere follower of Buddhism from Western Tibet, built the fortress of Ketcher Dzong. The warrior along with his sons defeated the local warlords and finally built a wall capital naming it Lo-Mangthang. The newly victorious rulers invited Ngorchen Kunga Sangpo, a renowned teacher of the Sakya sect, from Tibet to introduce new religious beliefs to the kingdom.</p>\r\n<p style=\"text-align: justify;\">This eight day trip starts from the capital city Kathmandu. You will be attended by the amiable staff members of Gurkha Encounters, at the Tribhuwan International airport and, will be ushered to the Hyatt Regency Hotel. The real adventure begins on the third day of the trip as all travelers will board a helicopter to Jomsom. The one hour flight will end in a blink of an eye as you will totally get submerged into the scenic vistas outside. After spending a night in Kagbeni, the next day requires all travel enthusiasts to refill their energy quotient, as the day comprises of a long climb. You will also reach to the highest point of the trip, head of the Nye La pass at 3,950m on this day. On the way to Lo-Manthang you will get to observe various villages and the local&rsquo;s traditional way of living. Tsarang is one of the villages you will get to stopover. This village is a little world of its own with acres of maize fields, willow trees and a colossal red Dzong. Despite adhering to the traditional way of living, Tsarang has an electricity system of its own. The next day after a quick breakfast you will head to visit the ancient Lo-Manthang palace along with Namgyal Gompa and perhaps Tingkhar. The mesmerizing and inimitable beauty of this wall town will leave you feeling euphoric and awe-struck.</p>\r\n<p style=\"text-align: justify;\">The 7th day of the trip might make you think &ldquo;Why does this journey have to end so fast?&rdquo; However, this day too holds a lot of worthwhile activities and experiences. After breakfast a chartered helicopter will take you to the Annapurna Basecamp; one of the most well-known trekking destination in Nepal.</p>\r\n<p style=\"text-align: justify;\">You will surely be unable to let your eyes of the breathtaking Annapurna Mountain, the tenth tallest mountain of the world. Well the last day of the trip arrives faster than you had imagined. All international guests will be dropped at the airport on the 8th, and final day of the trip.</p>\r\n<p style=\"text-align: justify;\">This Luxury Trip to Mustang will surely be a lifetime experience for you, unlike any of your travel journeys. This journey will make you realize how diverse the world actually is, and will definitely be a great hideaway from the busy and hectic, yet monotonous city life.</p>', '<p style=\"text-align: justify;\">Plain of aspiration&rdquo; this is the precise meaning of the word Mustang in Tibetan, a word so powerful, optimistic and encouraging; the name for a city with a magnificent history. Mustang&rsquo;s unique name and its irresistible splendor has been persuading inquisitive travelers to make a visit to this magical kingdom. Gurkha Encounters, a luxury travel company has been making such trips possible.</p>', 'why-visit-the-magical-kingdom-of-nepal', '1672995565856', 15, 0, 22, 122, '1672995565.jpg', 'download-10-LRFdw.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2023-01-06 19:44:25', '2023-01-06 19:44:25'),
(73, '2023-01-06 02:57:44', 1, 'single', NULL, 'Gurkha Encounters’ Helping Hands for Storm Victims', NULL, '<p style=\"text-align: justify;\">The Founder and Managing Director of Gurkha Encounters, Mr. Rajendra Bajgain,arranged the distribution of 24 trekking tents, sanitary pads, and clothes to the families who are victims of the storm which took place in Bara District on 3April 2019. A 30-knot gale hit Bara and Parsa Districts of Nepal on 31 March 2019, killing more than 28 people and leaving more than 500 injured.</p>\r\n<p style=\"text-align: justify;\">Ms. Chhoki Sherpa and Ms. Kanchhi Maya Tamang from Gurkha Encounters went to the affected areas with relief materials and distributed the materials in Purainiya village of Pheta Rural Municipality; the most affected area and where 11 people died. &ldquo;The affected areas are heavily devastated by the storm and victims have no shelters. Mosquitoes are a big problem in the affected areas, mainly because there is currently no electricity and victims have lost their mosquito nets,&rdquo;shares Ms. Chhoki Sherpa after her visit. She also said that some of the victims have not received relief materials yet because of lack of proper management in the distribution process. Gurkha Encounters believes local authorities should ensure that the most affected and genuine victims should get relief materials as a priority.</p>\r\n<p style=\"text-align: justify;\">This is the first ever incident of this kind caused by a storm in Nepal. The government and local authorities should be aware of such natural disasters and take the necessary mitigating precautions and preparations for the future.</p>', '<p style=\"text-align: justify;\">The Founder and Managing Director of Gurkha Encounters, Mr. Rajendra Bajgain,arranged the distribution of 24 trekking tents, sanitary pads, and clothes to the families who are victims of the storm which took place in Bara District on 3April 2019. A 30-knot gale hit Bara and Parsa Districts of Nepal on 31 March 2019, killing more than 28 people and leaving more than 500 injured.</p>', 'gurkha-encounters-helping-hands-for-storm-victims', '1672996452850', 15, 0, 23, 124, '1672996451.jpg', '1-PBIEY.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2023-01-06 19:59:12', '2023-01-06 19:59:12'),
(74, '2023-01-06 03:02:27', 1, 'single', NULL, 'Kanchhi Maya Tamang - a Motivational Speaker in Peru', NULL, '<p style=\"text-align: justify;\">It was the first time that I gave a speech in an international conference. Being a guest speaker and sharing my experience of climbing Mt. Everest to a huge number of people was one of the most memorable days of my life&rdquo;, shares Kanchhi Maya Tamang after returning from Peru. Ms. Kanchhi Maya Tamang, a Trekking and Expedition Guide with Gurkha Encounters, went to Cajamarca, Peru on 6th and 7th February to attend the <strong>First Feminine Empowerment Conference.</strong>&nbsp;She had the honour to be the main speaker!</p>\r\n<p style=\"text-align: justify;\">There were approximately 400 people in the audience from different sectors; from high level government officers to female victims of domestic violence. Kanchhi Maya&rsquo;s speech was centered on her struggles when she worked as a domestic worker overseas in her teenage years and the challenges she had to face when climbing Mt. Everest. Her speech was to motivate those women who are suffering from domestic violence. Her aim was to show that one&rsquo;s bravery and self-confidence can overcome such violence.</p>\r\n<p style=\"text-align: justify;\">During her visit Kanchhi Maya also climbed Mt. Mateo in Peru. Becoming the first Nepalese woman to climb a Peruvian mountain. She proudly raised the logo of Gurkha Encounters on top of Mt. Mateo. She had planned to climb Pisco Mountain, but because of changes in the weather she chose Mt. Mateo as the alternative.</p>\r\n<p style=\"text-align: justify;\">We are extremely proud of Kanchhi Maya!</p>', '<p style=\"text-align: justify;\">It was the first time that I gave a speech in an international conference. Being a guest speaker and sharing my experience of climbing Mt. Everest to a huge number of people was one of the most memorable days of my life&rdquo;, shares Kanchhi Maya Tamang after returning from Peru. Ms. Kanchhi Maya Tamang, a Trekking and Expedition Guide with Gurkha Encounters, went to Cajamarca, Peru on 6th and 7th February to attend the <strong>First Feminine Empowerment Conference.</strong>&nbsp;She had the honour to be the main speaker!</p>', 'kanchhi-maya-tamang-a-motivational-speaker-in-peru', '1672996610645', 15, NULL, 23, 125, '1672996610.jpg', 'gallery3-YTzOl.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2023-01-06 20:01:50', '2023-01-06 20:02:33'),
(75, '2023-01-06 03:03:46', 1, 'single', NULL, 'Mr. Rajendra Bajgain featured in Latin Herald Tribune', NULL, '<p style=\"text-align: justify;\">Mr. Rajendra Bajgain speaks about the unethical actions happening in the tourism sector of Nepal. Clamping down on dishonest companies targeting profits to unethical business actions, Mr. Bajgain highlights cheap travel packages with elongated immoral schemes to target profits. Operators have been pocketing thousands of dollars from insurance companies by making multiple claims for a single chopper ride or pushing trekkers to agree to airlifts for minor illnesses. The news covered government taking actions against agencies running these kinds of scams where Mr. Bajgain highlights the importance of travelling with an experienced team to avoid such risks.</p>\r\n<p style=\"text-align: justify;\"><a href=\"http://www.laht.com/article.asp?CategoryId=12396&amp;ArticleId=2462836\">Nepal Moves to Clamp Down on Million-Dollar Helicopter Rescue Scams</a></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>', '<p style=\"text-align: justify;\">Mr. Rajendra Bajgain speaks about the unethical actions happening in the tourism sector of Nepal. Clamping down on dishonest companies targeting profits to unethical business actions, Mr. Bajgain highlights cheap travel packages with elongated immoral schemes to target profits. Operators have been pocketing thousands of dollars from insurance companies by making multiple claims for a single chopper ride or pushing trekkers to agree to airlifts for minor illnesses. The news covered government taking actions against agencies running these kinds of scams where Mr. Bajgain highlights the importance of travelling with an experienced team to avoid such risks.</p>', 'mr-rajendra-bajgain-featured-in-latin-herald-tribune', '1672996831712', 15, 0, 23, 126, '1672996830.jpeg', 'rajendra-171860fd-OX9RI.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2023-01-06 20:05:31', '2023-01-06 20:05:31'),
(76, '2023-01-06 03:06:24', 1, 'single', NULL, 'Ms. Chhoki Sherpa – Interpreter in Korean Medical Camp', NULL, '<p style=\"text-align: justify;\">Ms. Chhoki Sherpa, the Trekking &amp; Expedition guide of Gurkha Encounters has participated in a three-day Free Medical Volunteering camp in Ghacho, Kaski from 25 December &ndash; 27 December 2018. The Free Medical Service was provided by Korean doctors where Chhoki facilitated the entire programme as an interpreter.</p>\r\n<p style=\"text-align: justify;\">The medical camp provided general medical service, dental check-up and acupuncture from which more than 600 local patients were benefited. Chhoki said that the Korean doctors were amazed to see that most of the villagers in Ghacho were healthier than the villagers in other countries where they have already conducted the medical camp.</p>', '<p style=\"text-align: justify;\">Ms. Chhoki Sherpa, the Trekking &amp; Expedition guide of Gurkha Encounters has participated in a three-day Free Medical Volunteering camp in Ghacho, Kaski from 25 December &ndash; 27 December 2018. The Free Medical Service was provided by Korean doctors where Chhoki facilitated the entire programme as an interpreter.</p>', 'ms-chhoki-sherpa-interpreter-in-korean-medical-camp', '1672997096754', 15, 0, 23, 127, '1672997096.jpg', 'chhoki-medical-1-cf58efc9-EIP1B.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2023-01-06 20:09:56', '2023-01-06 20:09:56'),
(77, '2023-01-06 03:12:19', 1, 'single', NULL, 'Ms. Kanchhi Maya Tamang – The main speaker in Peru conference', NULL, '<p style=\"text-align: justify;\">Ms. Kanchhi Maya Tamang, the Trekking &amp; Expedition guide of Gurkha Encounters is going attend the &ldquo;First Feminine Empowerment Conference&rdquo; as the main speaker on the special invitation of Juan Carlos Mondrag&oacute;n Arroyo, the president of C&aacute;mara De Comercioy Producci&oacute;n, Cajamarca. The programme will take place on 6th and 7th February 2019 in Cajamarca, Republic of Peru where the target audience are businesswomen and entrepreneurs.</p>\r\n<p style=\"text-align: justify;\">Two times Everest Summiteer, Kanchhi Maya will speak about her struggles and dedication which made her to gain her dreams. She will also speak about the gender equality and women empowerment and her activities to decrease gender discrimination and promote women empowerment in rural areas of Nepal. As the Director of Save the Child Foundation in Nepal, she will also talk about how she has been working to promote girls education and stop girls trafficking.</p>\r\n<p style=\"text-align: justify;\">In addition, she will also give presentation on Gurkha Encounters and its tour service programmes. During her stay in Peru, she will also trek to Santa Cruz and climb Pisco Mountain (5,752m.)</p>', '<p style=\"text-align: justify;\">Ms. Kanchhi Maya Tamang, the Trekking &amp; Expedition guide of Gurkha Encounters is going attend the &ldquo;First Feminine Empowerment Conference&rdquo; as the main speaker on the special invitation of Juan Carlos Mondrag&oacute;n Arroyo, the president of C&aacute;mara De Comercioy Producci&oacute;n, Cajamarca. The programme will take place on 6th and 7th February 2019 in Cajamarca, Republic of Peru where the target audience are businesswomen and entrepreneurs.</p>', 'ms-kanchhi-maya-tamang-the-main-speaker-in-peru-conference', '1672997408857', 15, 0, 23, 128, '1672997408.jpg', 'download-15-NPxJw.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2023-01-06 20:15:08', '2023-01-06 20:15:08'),
(80, '2024-11-27 11:16:32', 1, 'single', NULL, 'About Arnold Coster', 'Taking people on extraordinary adventures for years.', '<p>Arnold learned climbing the hard way and knows the sharp edge of the blade. I am not advertising trips with catchy slogans, questionable success rates or encouraging high risks for success. With Arnold you get down to earth leadership based on knowledge from pervious experiences. <br>Arnold Coster Expeditions is a boutique climbing company operating with small groups to have the best experience and to be able to give each member the leadership they deserve. </p>\r\n<p>To get to know Arnold, just contact him for any kind of question and you will get a honest straightforward answer.</p>', '<p><strong>Arnold Coster</strong> is the founder and senior leader and is probably one of the most senior expedition leaders operating trips in the Himalayas. Arnold started climbing when he was fifteen years old and accumulated a ton of experience climbing numerous peaks and led close to one hundred climbing expeditions in the last two decades.</p>\r\n<p>Safety, Fun &amp; Success are the corner stones of each expedition. Arnold is a relaxed, considerate and thoughtful person; an expert leader and a highly-skilled professional who specializes in getting people to the summit and back down in 100 percent safety. He is a good communicator, a great motivator, has a positive attitude and believes that climbing these High Mountains is achievable for a lot of people; it’s a matter of guidance and support.  Arnold is at home in any terrain, with any kind of group. Teaching and sharing his experience is his privilege!</p>', 'about-arnold-coster', '1710144134725', 1, NULL, 0, 129, NULL, 'about-us-profile-O71aV.JPG', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2024-03-11 17:47:14', '2024-11-27 16:17:33'),
(82, '2026-02-27 01:44:30', 1, 'single', NULL, 'Jen Jen Lama', 'Senior Sirdar of Arnold Coster Expeditions', '<p>Jenjen serves as Senior Sirdar for Arnold Coster Expeditions &amp; is playing a key leadership role in managing large-scale Himalayan expeditions. He is responsible for overseeing Sherpa teams, coordinating logistics, fixing routes, and ensuring the highest standards of safety and efficiency throughout each expedition. His calm leadership, technical precision, and strong work ethic make him a vital part of the expedition team.</p>\r\n<p>As an NNMGA (Nepal National Mountain Guide Association) certified guide and an IFMGA guide candidate, Jenjen meets international standards of professional mountain guiding. He is also a certified Wilderness First Responder (WFR) and an experienced high-altitude rescuer, providing essential medical and emergency support in extreme environments.</p>\r\n<p><span style=\"text-decoration: underline;\">Major Climbing Achievements</span></p>\r\n<ul>\r\n<li>Mount Everest – 6 Summits<br>Led more than 50 groups successfully with 100% safety record and no major incidents.</li>\r\n<li>Ama Dablam – 12 Summits</li>\r\n<li>Lhotse – 1 Summit</li>\r\n<li>Manaslu – 1 Summit</li>\r\n<li>Lobuche East – 15 Summits</li>\r\n<li>Island Peak – 5 Summits</li>\r\n<li>Himlung Himal- 1 Summit </li>\r\n<li>Muztagh Ata (China)- 3 Summits</li>\r\n<li>CHHUAMA I – 1 Summit (Virgin peaks via Traverse)</li>\r\n<li>CHHUAMA II – 2 Summits (Virgin peaks via Traverse)</li>\r\n</ul>\r\n<p>Jenjen is Arnold Coster’s main guide and a key pillar of the expedition team. He prepares and organizes all expeditions together with the Sherpa staff, ensuring that every logistical, technical, and safety detail is handled with precision. During the off-season, he trains the climbing staff to maintain high professional standards and strong team performance. A strong Sherpa leader is just as important as leading the members themselves, and Jenjen’s leadership, responsibility, and experience are fundamental to the success of every expedition.</p>\r\n<p>With deep Himalayan roots, technical mastery, and proven leadership under extreme conditions, Jenjen Lama remains an essential part of the Arnold Coster guiding team, dedicated to delivering safe, professional, and world-class Himalayan expeditions.</p>\r\n<p> </p>\r\n<p>Instagram: https://www.instagram.com/jenjen_lama?igsh=Mjg0MmkxdjFxa2dx&amp;utm_source=qr</p>\r\n<p>Facebook: https://www.facebook.com/Lamajenjen?mibextid=wwXIfr&amp;mibextid=wwXIfr</p>', '<p>Jenjen Lama was born on 30 September 1992 in Bhotkhola-1, Sankhuwasabha, in Nepal’s remote Makalu region. Raised in the heart of the Himalayas, he developed a deep connection with the mountains from an early age and has since built an outstanding career in high-altitude mountaineering and expedition leadership.</p>', 'jen-jen-lama', '1771825421604', 1, NULL, 0, 130, NULL, 'whatsapp-image-2026-02-23-at-13-kIo77.jpeg', NULL, '#Sirdar #Jenjenlama #Arnoldcosterexpeditions', 'Jen jen lama is the senior sirdar of Arnold coster expeditions.', NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2026-02-23 16:28:41', '2026-02-27 18:45:31'),
(83, '2026-03-30 11:46:40', 1, 'single', NULL, 'Our Team', 'Underrated heroes of the mountains', '<p>Their experience, passion, and commitment are at the heart of everything we do. We are incredibly proud to have such a strong and reliable support team, whose expertise and dedication help make every expedition safe, successful, and memorable.</p>', '<p>Our team is made up of highly motivated and dedicated mountain guides who take great pride in their work. At Arnold Coster Expeditions, we are committed to maintaining the highest standards of safety and professionalism, which is why we ensure our guides receive training before every season to refresh and strengthen their skills.</p>\r\n<p> </p>', 'our-team', '1774174067558', 1, NULL, 0, 131, NULL, 'whatsapp-image-2026-03-22-at-15-ts7YG.jpeg', NULL, '#Sherpas #arnoldcosterexpediton #mountainheroes', 'Sherpa team of Arnold coster expeditions', NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2026-03-22 19:52:47', '2026-03-30 15:46:48'),
(84, '2026-04-05 03:15:08', 1, 'single', NULL, 'Maximo Kausch', 'Expedition leader of South America', '<p>Maximo is the founder of Andes Specialists and the Andes 6K+ Project, having completed 85% of his goal to climb all 104 Andean peaks above 6,000 meters.</p>\r\n<p>At Arnold Coster Expeditions, we are proud to regard him as a true South America expert. Known for his calm approach and meticulous planning, he prioritizes safety and proper acclimatization in every expedition.</p>', '<p>Maximo Kausch is one of the world’s most accomplished high-altitude mountaineers, with over 25 years of climbing experience and more than 118 expeditions led across the Andes, Himalayas, and beyond. Born in Argentina, raised in Brazil, and educated in the UK, he has been guiding professionally since the age of 23.</p>\r\n<p>Recognized by Guinness World Records, he holds the record for the most 6,000-meter peaks climbed, including 90 in the Andes, and has summited over 260 peaks above 5,500 meters. He has also taken part in multiple expeditions to 8,000-meter peaks, including K2.</p>', 'maximo-kausch', '1774851526649', 1, NULL, 0, 132, NULL, 'whatsapp-image-2026-04-05-at-14-UseiZ.jpeg', NULL, '#aconcagua #mountainleader #arnoldcosterexpeditions', NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', '0', 'en', '2026-03-30 16:03:46', '2026-04-05 19:15:22');

-- --------------------------------------------------------

--
-- Table structure for table `cl_post_categories`
--

CREATE TABLE `cl_post_categories` (
  `id` int UNSIGNED NOT NULL,
  `post_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_caption` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int DEFAULT '0',
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_post_type`
--

CREATE TABLE `cl_post_type` (
  `id` int UNSIGNED NOT NULL,
  `post_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int DEFAULT '0',
  `is_menu` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `post_tag` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_post_type`
--

INSERT INTO `cl_post_type` (`id`, `post_type`, `uri`, `brief`, `content`, `banner`, `thumbnail`, `template`, `ordering`, `is_menu`, `status`, `post_tag`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'About us', 'about-us', '<p><strong>Arnold Coster Expeditions </strong>is a small boutique adventure company run by the owner Arnold Coster himself. Arnold is probably the most experienced leader in the Himalayas at the moment and has more than two decades of leadership experience. He led close to 100 climbing expeditions in the Himalayas and other greater ranges!</p>\r\n<p>We don’t advertise with catchy slogans, questionable success rates or flashy videos claiming to be the best. We have been around long enough to know what we offer; good value for money with responsible leadership! Arnold learned his experience the hard way and is happy to share this experience with anybody. When you contact Arnold Coster you will immediately notice his down to earth mentality and this is how we run our trips also.</p>', '<p>Safety, Fun &amp; Succes is our company policy and exactly in this order. Once you contact Arnold Coster Expeditions he will answer your questions personally. He will guide you through the process of choosing the right trip, buying your equipment, training etc. Good communication and honesty from the very beginning is essential for a successful expedition.</p>\r\n<p>We keep our groups small and manageable , this way all members get the guidance they need and we can adopt easily to unexpected changes which always happen on expeditions.  Don’t hesitate to contact us for any kind of questions. Don’t worry we don’t do newsletters and you will get no sales pitch, just ask what you want to know and Arnold will answer.</p>\r\n<p>Do you want to join our climbing community? Leading you would be my privilege………….</p>\r\n<p>Arnold Coster</p>', 'everest-portraits-210425-hbk-6539-eyVQGgqGrBS95HrVhmnQ4IIGHbyfmmRKqiE0We8l.JPG', 'about-us-front-boayaCVhCsBFfY6bSngEiGK4eJ0H9a9MK3OwZ1xg.jpg', 'posttypeTemplate-about-us', 1, '1', '1', 'Taking people on extraordinary adventures for years.', NULL, NULL, '2023-02-07 04:58:05', '2024-12-02 20:43:21'),
(2, 'Contact us', 'contact-us', NULL, NULL, NULL, NULL, 'posttypeTemplate-contact', 2, '1', '1', NULL, NULL, NULL, '2023-02-07 05:03:10', '2024-04-09 19:24:43'),
(3, 'Expeditions', 'expeditions', NULL, '<p><strong>Embark on the Ultimate Climbing Expedition: </strong>Unveil the enigma of the mountains with our exclusive climbing expeditions. Journey into the unknown, where fog-cloaked peaks whisper ancient secrets and each ascent invites adventure. Feel the adrenaline surge as you navigate through rugged terrains that promise not just challenges but also breathtaking views that leave you spellbound. Join fellow explorers in a quest to conquer not just summits, but the very essence of nature\'s mystery.</p>\r\n<p>Are you ready to transform your spirit? Limited spots available—secure your place in this extraordinary adventure today. Climb higher, discover steeper, travel more remote, embrace the unknown.</p>', 'wechat-image-20211101190012-qvSUmPFup39UwJdkN5Gni39kp0E7fkKWmJir7P60.jpg', NULL, 'posttypeTemplate-expeditions-list', 3, '1', '1', NULL, NULL, NULL, '2023-02-12 04:42:55', '2024-12-02 20:36:19'),
(4, 'Trekkings', 'trekkings', NULL, '<p><strong>Unveil the Secrets of the Himalayas:</strong> A Trek Beyond the Ordinary, step into a realm where the air is crisp, and the mountains whisper ancient tales. Our Himalayan trek invites you to embark on a journey shrouded in mystery, where each path leads you deeper into nature’s sacred embrace. Picture yourself traversing rugged trails, flanked by towering peaks that pierce the sky, while the soft murmur of hidden streams echoes through the valleys. As you navigate this enchanting landscape, discover secluded villages that hold centuries of stories, and witness the vibrant tapestry of cultures interwoven with the majestic backdrop. Join us for an unforgettable adventure that promises to awaken your spirit and reveal the secrets of the high Himalayas. Are you ready to uncover the magic?</p>', 'p1000938-k8mBEq0bs0JrEkWrRSEfV3VxOeFBpKKxlroWqYKx.JPG', NULL, 'posttypeTemplate-trekkings-list', 4, '1', '1', NULL, NULL, NULL, '2023-02-12 04:43:20', '2024-11-26 18:13:40');

-- --------------------------------------------------------

--
-- Table structure for table `cl_related_trip_rel`
--

CREATE TABLE `cl_related_trip_rel` (
  `id` bigint NOT NULL,
  `trip_id` int NOT NULL,
  `related_trip_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_related_trip_rel`
--

INSERT INTO `cl_related_trip_rel` (`id`, `trip_id`, `related_trip_id`, `created_at`, `updated_at`) VALUES
(44, 6, 3, NULL, NULL),
(45, 6, 4, NULL, NULL),
(46, 6, 5, NULL, NULL),
(95, 12, 3, NULL, NULL),
(96, 12, 5, NULL, NULL),
(97, 12, 7, NULL, NULL),
(189, 15, 3, NULL, NULL),
(201, 7, 3, NULL, NULL),
(202, 7, 5, NULL, NULL),
(203, 7, 12, NULL, NULL),
(271, 5, 3, NULL, NULL),
(272, 5, 4, NULL, NULL),
(273, 5, 7, NULL, NULL),
(274, 5, 12, NULL, NULL),
(307, 3, 5, NULL, NULL),
(308, 3, 7, NULL, NULL),
(309, 3, 12, NULL, NULL),
(310, 3, 13, NULL, NULL),
(351, 13, 3, NULL, NULL),
(352, 13, 4, NULL, NULL),
(353, 13, 5, NULL, NULL),
(354, 13, 7, NULL, NULL),
(355, 13, 12, NULL, NULL),
(362, 69, 38, NULL, NULL),
(363, 14, 4, NULL, NULL),
(364, 14, 6, NULL, NULL),
(393, 83, 4, NULL, NULL),
(394, 83, 35, NULL, NULL),
(430, 117, 41, NULL, NULL),
(455, 128, 126, NULL, NULL),
(456, 126, 117, NULL, NULL),
(457, 126, 117, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cl_settings`
--

CREATE TABLE `cl_settings` (
  `id` int UNSIGNED NOT NULL,
  `site_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `worked_with` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affililiated_with` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_primary` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_secondary` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_map` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `google_map2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `copyright_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_settings`
--

INSERT INTO `cl_settings` (`id`, `site_name`, `logo`, `banner`, `worked_with`, `affililiated_with`, `phone`, `email_primary`, `email_secondary`, `address`, `fax`, `caption`, `skype`, `facebook_link`, `linkedin_link`, `youtube_link`, `twitter_link`, `google_plus`, `instagram_link`, `meta_key`, `meta_description`, `google_map`, `google_map2`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, 'Arnold Coster Expeditions', 'logo-1676959044-1718604833.png', NULL, NULL, NULL, '+31610686521', 'info@arnoldcoster.com', NULL, NULL, NULL, NULL, '@arnoldcosterexpeditions', 'https://www.facebook.com/ArnoldCoster', 'https://en.wikipedia.org/wiki/Arnold_Coster', 'https://www.youtube.com/', NULL, 'https://instagram.com/', 'https://www.instagram.com/coster.arnold/', NULL, NULL, NULL, NULL, 'Copyright © 2026 Arnold Coster Expeditions All rights reserved.', NULL, '2026-02-11 18:41:37');

-- --------------------------------------------------------

--
-- Table structure for table `cl_team`
--

CREATE TABLE `cl_team` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `wikipedia_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `brief` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `highlights` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `show_in_home` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_trip_activities`
--

CREATE TABLE `cl_trip_activities` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `template` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'single',
  `uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ordering` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `isdefault` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_trip_activities`
--

INSERT INTO `cl_trip_activities` (`id`, `title`, `sub_title`, `template`, `uri`, `thumbnail`, `banner`, `excerpt`, `content`, `category_video`, `meta_keyword`, `meta_description`, `ordering`, `status`, `isdefault`, `created_at`, `updated_at`) VALUES
(1, 'Trekkings', 'Explore our trekkings packages.', 'Activity-trekking', 'trekking', '02-eSdMEmNMh4RVPTVDv87dP9tE8pzxKjkI3tCXWMGf.jpg', NULL, 'Trekking is an outdoor activity of walking for more than a day. It is a form of walking, undertaken with the specific purpose of exploring and enjoying the scenery. Trekking could be a motive, It could be a commitment, an aim, an objective, a mission, a party, a social gathering. It could be a place where you find friends, and it could be a journey. It could be a slightest chance to save our future generation from losing the nature lovers, mother earth holding within. It can be shortened or extended as per the desire of trekkers.', '<p>Trekking is an outdoor activity of walking for more than a day. It is a form of walking, undertaken with the specific purpose of exploring and enjoying the scenery.&nbsp;<strong>Trekking</strong>&nbsp;could be a motive, It could be a commitment, an aim, an objective, a mission, a party, a social gathering. It could be a place where you find friends, and it could be a journey. It could be a slightest chance to save our future generation from losing the nature lovers, mother earth holding within. It can be shortened or extended as per the desire of trekkers.</p>', '7Zg_aPM2pVc', NULL, NULL, '1', '1', '0', '2021-09-01 06:06:19', '2023-02-09 08:50:32'),
(3, 'Expeditions', 'Explore our expeditions packages.', 'Activity-film-making', 'expedition', '03-yNi5j49EjDSSgH6chsIe6tlOsLzTvLfdrvaDDKJj.jpg', '6bcad9e23f788dd7c39c8a9e38fbc7e3-n60YQubAPoEZ1N6BKST3ZxHldT6KSWKrOkXgac8B.jpg', 'Set your mark on enigmatic highlands of Nepalese Himalayas.', '<p>Craft your mountain adventures with Gurkha Encounters. The Nepalese Himalayan Belt consists of over 600 mountains out of which most are permitted for climbing. It sounds beyond imagination but you could set your foot on top of the gigantic massifs that are considered the roof of the world.</p>', NULL, NULL, NULL, '3', '1', '0', '2022-12-04 10:50:51', '2023-02-09 09:06:39');

-- --------------------------------------------------------

--
-- Table structure for table `cl_trip_activity_rel`
--

CREATE TABLE `cl_trip_activity_rel` (
  `id` int UNSIGNED NOT NULL,
  `trip_id` int NOT NULL,
  `activity_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_trip_booking`
--

CREATE TABLE `cl_trip_booking` (
  `id` bigint UNSIGNED NOT NULL,
  `trip_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departure_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `terms_conditions` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `num_people` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_trip_customize`
--

CREATE TABLE `cl_trip_customize` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `trip_id` int DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `no_of_people` int DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `comments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `trip_start_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_trip_customize`
--

INSERT INTO `cl_trip_customize` (`id`, `title`, `name`, `trip_id`, `email`, `phone`, `country`, `no_of_people`, `duration`, `comments`, `trip_start_date`, `created_at`, `updated_at`) VALUES
(1, 'Everest Panorama Trek', 'Sudeepa Bajracharya', 4, 'admin@gmail.com', '+977-01-4417959', 'Thailand', 4, 1, 'nothing just good and tasty food', '2023-01-01', '2023-01-02 17:41:51', '2023-01-02 17:41:51'),
(2, 'Everest Panorama Trek', 'Laurel Cox', 4, 'paturocyf@mailinator.com', '+1 (985) 675-8888', 'Liechtenstein', 0, 0, 'Inventore dolore mai', '1983-07-21', '2023-01-02 17:43:54', '2023-01-02 17:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `cl_trip_destinations`
--

CREATE TABLE `cl_trip_destinations` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `brief` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `thumbnail` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_trip_destinations`
--

INSERT INTO `cl_trip_destinations` (`id`, `title`, `sub_title`, `uri`, `brief`, `content`, `thumbnail`, `banner`, `video`, `ordering`, `status`, `created_at`, `updated_at`) VALUES
(1, '8000er', 'Expeditions above 8000m', '8000er', 'There are 14x 8000ers in the world. Climbing one is a feat in itself, each mountain has their own character. The ultimate challenge would be to summit all 14!', NULL, '1733121580.JPG', '1733126602.JPG', NULL, 1, 1, '2023-01-31 11:17:07', '2024-12-02 18:49:23'),
(2, '7000er', 'Expeditions above 7000m', '7000er', '7000m peaks are often seen as a stepping stone to 8000m peak climbing, but many 7000m peaks are exciting expeditions on their own. 7000m peaks can often be climbed in less time and with a smaller budget, therefore the better choice if you are not sure how you will behave at altitude.', NULL, '1733121524.JPG', '1733126177.JPG', NULL, 2, 1, '2023-01-31 11:17:16', '2024-12-02 19:55:48'),
(3, '6000er', 'Expeditions above 6000m', '6000er', 'No matter what you are looking for, there is always a 6000m peak that suits your expectations. Climbing a 6000m peak can be a challenge on their own or an introduction to high altitude climbing. Some are easy approachable while others are serious expeditions that require multiple high camps. Check it out and explore yourself!', NULL, '1733125752.JPG', '1733126249.JPG', NULL, 3, 1, '2023-01-31 11:17:25', '2024-12-02 19:54:14'),
(4, '5000er', 'Expeditions above 5000m or close', '5000er', '5000m peaks are often overlooked, but many are beautiful expeditions. Most 5000m peaks require cheaper permits and are therefore more affordable. Some 5000m peaks are a good introduction to an Alpine environment while others are expert climbs. Like all mountains each of them has an unique character', NULL, '1733130375.jpg', '1733130313.jpg', NULL, 4, 1, '2024-11-27 17:13:47', '2024-12-02 19:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `cl_trip_destination_rel`
--

CREATE TABLE `cl_trip_destination_rel` (
  `id` bigint UNSIGNED NOT NULL,
  `trip_id` int NOT NULL,
  `destination_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_trip_destination_rel`
--

INSERT INTO `cl_trip_destination_rel` (`id`, `trip_id`, `destination_id`, `created_at`, `updated_at`) VALUES
(600, 122, 2, NULL, NULL),
(605, 123, 4, NULL, NULL),
(615, 124, 4, NULL, NULL),
(616, 125, 3, NULL, NULL),
(618, 120, 2, NULL, NULL),
(651, 105, 3, NULL, NULL),
(687, 117, 1, NULL, NULL),
(727, 41, 1, NULL, NULL),
(739, 128, 1, NULL, NULL),
(741, 127, 3, NULL, NULL),
(752, 119, 4, NULL, NULL),
(753, 126, 1, NULL, NULL),
(754, 121, 3, NULL, NULL),
(763, 129, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cl_trip_details`
--

CREATE TABLE `cl_trip_details` (
  `id` int UNSIGNED NOT NULL,
  `trip_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `duration` bigint DEFAULT NULL,
  `max_altitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `best_season` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `walking_per_day` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_size` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accommodation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trip_highlight` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `peak_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trip_type` int DEFAULT NULL,
  `starting_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `trip_map` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trip_video` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `trip_chart` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trip_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `trip_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `trip_grade` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guided_group` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `trip_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trip_pdf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visiter` int DEFAULT '0',
  `is_draft` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `is_menu` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_status` tinyint DEFAULT '0',
  `start_date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_trip_details`
--

INSERT INTO `cl_trip_details` (`id`, `trip_title`, `sub_title`, `duration`, `max_altitude`, `best_season`, `walking_per_day`, `group_size`, `accommodation`, `route`, `trip_highlight`, `peak_name`, `trip_type`, `starting_price`, `trip_map`, `trip_video`, `trip_chart`, `trip_excerpt`, `trip_content`, `trip_grade`, `guided_group`, `discount`, `status_text`, `uri`, `ordering`, `trip_code`, `meta_key`, `meta_description`, `banner`, `thumbnail`, `trip_pdf`, `visiter`, `is_draft`, `status`, `is_menu`, `video_status`, `start_date`, `created_at`, `updated_at`) VALUES
(41, 'Everest Expedition from the North (Tibet), the less crowded side of Everest', NULL, 51, '8848.86 m', 'Spring', '6-12hrs', '5-8', 'Hotel-Camping Tent', '10000', NULL, 'China', 2, '55000', 'everest-north-LeI10.jpg', NULL, '', '<p>Why to choose Everest from Tibet? The answer is simple: Less people, less objective danger and a better adventure experience.</p>\r\n<p><br>Ready to conquer a legend? The north side of Mount Everest, often overlooked, but offers a unique adventure that promises stunning vistas and fewer crowds. Picture this: rugged terrain, breathtaking views of the Tibetan plateau, and the glory of standing at the roof of the world. Unlike the crowded popular south side, the north side gets fewer visitors. Experience the thrill of navigating the Rongbuk Glacier in the footsteps of the first Everest explorers and the majesty of the North Col. Whether you\'re a seasoned climber or an intrepid explorer, the north side invites you to discover its raw beauty. Ready to make memories at the top of the world? Let’s climb!</p>', '<p>Mount Everest, the world\'s highest peak at 8,848.86 meters (29,031.7 feet), has long captivated the imagination of adventurers, mountaineers, and explorers. While the South Side, accessible from Nepal, garners more attention, the North Side, situated in the Tibet Autonomous Region of China, offers a unique and compelling experience. Climbing Everest from the North Side presents not only significant challenges but also unparalleled rewards, from the stunning vistas of the Tibetan Plateau to the spiritual ambiance of ancient monasteries. This essay explores the geographical, cultural, and technical aspects of the North Side of Everest, highlighting why it remains a coveted route for mountaineers.</p>\r\n<h4>Geographical and Climatic Features</h4>\r\n<p>The journey to Everest’s North Side begins in Tibet, often starting from the city of Lhasa, where climbers acclimatize before traveling to the base of the mountain. The approach to Everest’s North Side is marked by the Rongbuk Glacier and the Rongbuk Monastery. The Rongbuk Monastery, located at an altitude of 4,980 meters (16,340 feet), is the highest monastery in the world and offers a breathtaking view of the north face of Everest. The glacier itself is split into the East and West Rongbuk Glaciers, both of which are critical to the climbing route.</p>\r\n<p>North Base Camp, situated at approximately 5,150 meters (16,900 feet), is accessible by vehicle, easing logistical challenges. The camp provides a stunning panorama of Everest\'s north face, characterized by its steep slopes and sheer ice walls. From Base Camp, climbers proceed to the Advanced Base Camp (ABC) at around 6,400 meters (21,000 feet), traversing rocky moraines and glacial terrain. ABC serves as a crucial staging point for the ascent, offering closer views of the upper sections of Everest, including the formidable North Ridge.</p>\r\n<p> </p>\r\n<h4>The Climbing Route and Technical Challenges</h4>\r\n<p>The ascent via the North Side follows the North Ridge, a prominent feature that presents both opportunities and obstacles. The North Ridge offers a relatively direct path to the summit but is notorious for severe winds and technical challenges. Climbers must navigate several critical points, including the First Step, the Second Step, and the Third Step. Each of these rock formations poses significant technical difficulties, with the Second Step being particularly challenging. This nearly vertical rock face, situated at around 8,610 meters (28,250 feet), requires precise technical climbing skills and is equipped with a ladder to aid climbers.</p>\r\n<p>Beyond the Second Step, climbers encounter the Third Step before reaching the Summit Pyramid. The final push to the summit involves navigating snow and ice slopes, with high exposure to wind and cold. The summit itself offers an awe-inspiring view of the Himalayas and the Tibetan plateau, a reward for the arduous journey.</p>\r\n<p> </p>\r\n<p>Climbing Everest from the North Side involves significant challenges, from the harsh weather conditions to the logistical complexities. The North Side is known for its stronger winds and colder temperatures compared to the South Side, making weather a critical factor in the climb. Altitude acclimatization is essential, with careful schedules required to avoid altitude sickness. Additionally, obtaining permits from Chinese authorities can be more complex than the process in Nepal, adding another layer of logistical difficulty.</p>', '4', NULL, NULL, NULL, 'everest-expedition-from-the-north-tibet-the-less-crowded-side-of-everest', 1, NULL, NULL, NULL, 'everest-north-2-8xbZM.jpg', '1717583510_everest-north-thumb-CqYIk.jpg', '1773204918_everest-north-comp-Tk6jI.pdf', 5324, 0, '0', '1', NULL, '12 April 2026', '2023-01-26 20:38:41', '2026-04-07 11:43:36'),
(105, 'Ama Dablam Expedition, the Matterhorn of the Himalaya', NULL, 30, '6814', 'Spring', '8-12hr, summit day 16+hr', '5-10', 'Included in Package', '1500', NULL, '0', 2, NULL, 'ama-dablam-5Wh3L.jpg', NULL, '', '<p>Mount Ama Dablam, often referred to as the \"Matterhorn of the Himalayas,\" stands as one of the most stunning peaks in the Everest region. With its soaring height of 6,812 meters (22,349 feet), it captivates climbers and trekkers alike with its remarkable beauty and challenging ascents. The mountain, whose name translates to \"Mother’s Necklace,\" is renowned not only for its physical allure but also for its cultural and spiritual significance to the local Sherpa people.</p>\r\n<h4><strong>Geography and Features</strong></h4>\r\n<p>Ama Dablam is located in the Khumbu region of eastern Nepal, within the Sagarmatha National Park, a UNESCO World Heritage site. The mountain is part of the Mahalangur Range of the Himalayas, which includes several other iconic peaks such as Mount Everest, Lhotse, and Nuptse. The name \"Ama Dablam\" comes from the Sherpa language; \"Ama\" means mother and \"Dablam\" refers to a traditional double-pendant containing pictures of gods, worn by Sherpa women. The long ridges on each side of the peak resemble the arms of a mother (Ama) protecting her child, while the hanging glacier on its southwest face forms the Dablam, or the pendant.</p>', '<h4><strong>Climbing History and Routes</strong></h4>\r\n<p>The first successful ascent of Ama Dablam was made in 1961 by a team of climbers from New Zealand, the United States, and the United Kingdom, led by Sir Edmund Hillary. The most commonly used route for climbing is the Southwest Ridge, which was the route taken by the first ascent team. This route is known for its technical difficulty, requiring climbers to navigate steep rock, ice, and snow.</p>\r\n<p>Climbing Ama Dablam is considered a serious challenge, even for experienced mountaineers. The ascent involves several sections of mixed climbing, with exposed ridges, and narrow ice gullies. The base camp is situated at an elevation of approximately 4,570 meters (15,000 feet), from where climbers make their way up to Camp 1, Camp 2, and finally Camp 3 before attempting the summit. The final approach to the summit is particularly demanding, with steep ice faces and narrow crests that test the climber\'s skill and endurance.</p>', '3', NULL, NULL, NULL, 'ama-dablam-expedition-the-matterhorn-of-the-himalaya', 3, NULL, NULL, NULL, 'ama-banner-SFzxp.jpg', '1733118242_ama-trip-hPAh5.jpg', '', 2416, 0, '1', '0', NULL, NULL, '2024-05-10 18:44:25', '2026-04-07 11:57:15'),
(117, 'Manaslu Expedition, perfect first 8000er', NULL, 35, '8163m-28781ft', 'Autumn', '8-12hrs', '5-10', 'Hotel-Lodge-Camping', '4500', NULL, 'Nepal', 2, '17500', 'manaslu-lzvxp.jpg', NULL, '', '<p>Mount Manaslu is the eighth highest mountain in the world and, although it is considered one of the more technically approachable 8000-meter peaks, its extreme altitude still presents a serious challenge. A successful ascent demands thorough preparation, strong physical conditioning, and a well-planned acclimatization schedule.</p>\r\n<p>The expedition follows the classic Northeast Face route, with the climb typically established through four high camps and supported by an experienced team of professional climbing Sherpas. The route is relatively direct and not excessively steep, with no major technical obstacles. The main challenges include navigating ice cliffs and seracs on the way to Camp 2, sections of exposed terrain approaching Camp 4, and the final snow arête leading to the summit. Despite its reputation as a “straightforward” 8000er, Manaslu remains a demanding high-altitude expedition that should not be underestimated.</p>', '<p>Situated in the remote Gorkha region of Nepal, Manaslu—often called the “Mountain of the Spirit”—combines dramatic natural beauty with a rewarding high-altitude climbing experience. It is widely considered an ideal choice for mountaineers looking to progress to their first 8000-meter summit.</p>\r\n<p>The standard ascent follows the Northeast Face, a route known for being less technical than many other peaks in this category. With manageable terrain, well-fixed ropes, and strong logistical support from experienced Sherpa teams, Manaslu offers a comparatively accessible path to extreme altitude. While the climb still requires solid physical conditioning and careful acclimatization, the route provides a good balance between challenge and safety.</p>\r\n<p>What makes the Manaslu expedition truly special is the journey to the mountain itself. Climbers pass through pristine valleys, remote mountain villages, ancient monasteries, and stunning Himalayan landscapes before arriving at base camp. With fewer climbers than on Everest and a quieter, more exclusive environment, Manaslu delivers a genuine and immersive Himalayan adventure for those seeking both achievement and authenticity.</p>', '3', NULL, NULL, NULL, 'manaslu-expedition-perfect-first-8000er', 3, NULL, '#Manaslu #Mountaineering #Expeditions #Arnoldcoster #Nepal', 'Mount Manaslu Expedition 2026', '20171113165745-0RSff.jpg', '1771480457_resized-1500x1500-SNlz8.jpg', '1772086536_manaslu-compressed-compressed-YWqO5.pdf', 4353, 0, '1', '1', NULL, '5th  September 2026', '2024-05-27 15:34:09', '2026-04-07 14:41:05'),
(119, 'Carstensz Pyramid (Puncak Jaya), highest peak in Oceania', NULL, 20, '4884m-16024ft', 'Spring', '8hrs', '5-10', 'Hotel & Tent', '1500', NULL, 'Indonesia', 2, '16500', '1732691188_carstens-route-WnzYm.JPG', NULL, '', '<p><strong>Carstensz Pyramid: Oceania\'s Highest Mountain</strong></p>\r\n<p>Of all of the Seven Summits, Carstensz Pyramid ranks highest in the number of alternative names. The 16,024-foot (4,884-meter) mountain is also called Puncak Jaya, Puncak Jaya Kesuma, and Jaya Kesuma. Indonesians typically vary between the names Carstensz Pyramid and Puncak Jaya.</p>\r\n<div id=\"ad-unit-1\" class=\"ad-unit\"></div>\r\n<p>Besides its multiple names, the mountain has also had a bit of controversy regarding its continent designation, but that is primarily a political rather than geographical dispute. The Dutch ceded control of the area in 1962 to Indonesia, and the area remains politically unstable. Carstensz Pyramid is within the borders of Indonesia, which is on the Asian continent. The mountain is located in the western half of the island of New Guinea, in the Indonesian province of Papua. Most experts consider the island to be part of the Oceania continent, which also includes Polynesia, Melanesia, Micronesia, New Zealand and Australia.</p>\r\n<p>During this 10 days group expedition from/to Jakarta you will climb the Carstensz Pyramid, also known as Puncak Jaya. At 4,884 meters, the Carstensz Pyramid is the highest peak in Oceania, making it one of the famous 7-Summits, the highest peaks of the seven continents. The Carstensz was first climbed in 1962 by the Austrian Heinrich Harrer. And even today, expeditions to this mountainous region of New Guinea require complex approval procedures. Due to his experience and network, Dr. Weiglein is one of the few experts for Papua who can successfully guide and organize expeditions to the Carstensz region. From the wet and muddy jungle to the glaciers of Carstensz mountain, this trekking expedition in Papua is a real challenge for the truly adventurous.</p>\r\n<p> </p>', '<div class=\"flex flex-col text-sm pb-25\">\r\n<section class=\"text-token-text-primary w-full focus:outline-none [--shadow-height:45px] has-data-writing-block:pointer-events-none has-data-writing-block:-mt-(--shadow-height) has-data-writing-block:pt-(--shadow-height) [&amp;:has([data-writing-block])&gt;*]:pointer-events-auto scroll-mt-[calc(var(--header-height)+min(200px,max(70px,20svh)))]\" dir=\"auto\" data-turn-id=\"request-WEB:f85b453e-96d1-4413-aa1e-9e64663e0f17-0\" data-testid=\"conversation-turn-2\" data-scroll-anchor=\"true\" data-turn=\"assistant\">\r\n<div class=\"text-base my-auto mx-auto pb-10 [--thread-content-margin:var(--thread-content-margin-xs,calc(var(--spacing)*4))] @w-sm/main:[--thread-content-margin:var(--thread-content-margin-sm,calc(var(--spacing)*6))] @w-lg/main:[--thread-content-margin:var(--thread-content-margin-lg,calc(var(--spacing)*16))] px-(--thread-content-margin)\">\r\n<div class=\"[--thread-content-max-width:40rem] @w-lg/main:[--thread-content-max-width:48rem] mx-auto max-w-(--thread-content-max-width) flex-1 group/turn-messages focus-visible:outline-hidden relative flex w-full min-w-0 flex-col agent-turn\">\r\n<div class=\"flex max-w-full flex-col gap-4 grow\">\r\n<div class=\"min-h-8 text-message relative flex w-full flex-col items-end gap-2 text-start break-words whitespace-normal outline-none keyboard-focused:focus-ring [.text-message+&amp;]:mt-1\" dir=\"auto\" tabindex=\"0\" data-message-author-role=\"assistant\" data-message-id=\"861c8ae3-5827-4297-b8c3-afd36a6472e5\" data-message-model-slug=\"gpt-5-3\" data-turn-start-message=\"true\">\r\n<div class=\"flex w-full flex-col gap-1 empty:hidden\">\r\n<div class=\"markdown prose dark:prose-invert w-full wrap-break-word light markdown-new-styling\">\r\n<p data-start=\"0\" data-end=\"440\">Rising to 4,884 meters, Carstensz Pyramid is the smallest of the Seven Summits but the highest peak in Austral-Oceania. Despite its relatively lower height, it is far from easy. Known locally as “Puncak Jaya,” meaning “Victory Mountain,” it is widely regarded as the most technically demanding of the Seven Summits. The mountain lies on the world’s second-largest island, in Indonesia’s Papua province, surrounded by thick, lush rainforest.</p>\r\n<p data-start=\"442\" data-end=\"863\" data-is-last-node=\"\" data-is-only-node=\"\">Reaching Base Camp via the overland route requires trekking through dense jungle, often in heavy rain, making rubber boots and strong stamina essential. Even after arriving at Base Camp, the challenge continues with several more hours of climbing, including sections that require fixed ropes. At the summit, climbers are rewarded with stunning views—and in clear weather, it’s even possible to glimpse two oceans at once.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mt-3 w-full empty:hidden\"> </div>\r\n</div>\r\n</div>\r\n</section>\r\n</div>', '3', NULL, NULL, NULL, 'carstensz-pyramid-puncak-jaya-highest-peak-in-oceania', 4, NULL, NULL, NULL, 'img-carstensz-pyramid-seven-summits-dr-weiglein-expeditions-papua-explorer-header-BEi1R.jpg', '1738639941_img-carstensz-pyramid-seven-summits-dr-weiglein-expeditions-papua-explorer-header-BEIGy.jpg', '1741263655_carstensz-pyramid-trip-notes-pHvB6.pdf', 3641, 0, '1', '1', NULL, 'On Request', '2024-11-27 17:51:29', '2026-04-07 11:57:33'),
(120, 'Nun 7135m, Perfect entry level 7000m peak', NULL, 23, '7135m-23409ft', 'Spring', '6-12hrs', '5-8', 'Hotel-Camping Tent', '1500', NULL, 'India', 2, '6500', '1733106013_nun-route-BSOjT.jpg', NULL, '', '<p><strong>Mount Nun</strong>, standing tall at 7,135 meters, is the highest peak in the Nun-Kun massif, located in the stunning Zaskar Range of the Himalayas in northern India. The massif also features Mount Kun, which reaches 7,077 meters. Climbing Mount Nun is not just a remarkable achievement; it serves as a gateway for climbers to gain valuable high-altitude experience, potentially paving the way for ascents of even higher peaks, including those over 7,500 meters and some less-technical 8,000-meter summits.</p>', '<p><em>Mount Nun, at 7,135 meters,</em> is one of the most sought-after climbing expeditions in the Indian Himalayas, offering a relatively short approach to base camp. The route is graded AD/4, combining technical climbing with glacier travel. The ideal climbing season runs from June to August, coinciding with the dry period in many other Himalayan regions. Our team will ascend via the western ridge, which is deemed safer and more accessible.</p>\r\n<p><br>While considered semi-technical, climbers must maintain high physical fitness throughout the expedition. This is a prime opportunity for those looking to tackle a 7,000-meter climb and experience classic mountaineering.<br>Ladakh, known for its stunning natural beauty and Tibetan cultural influence, features breathtaking landscapes, high mountain passes, and historic Buddhist monasteries. It\'s an ideal destination for both culture enthusiasts and adventure seekers.</p>\r\n<p><br><em>History:</em> Mount Nun was first ascended in 1953 by a team led by Bernard Pierre and Pierre Vittoz via the west ridge.</p>\r\n<p> </p>', '2', NULL, NULL, NULL, 'nun-7135m-perfect-entry-level-7000m-peak', 5, NULL, NULL, NULL, 'nun-7135m-Cdccb.jpg', 'nun-7135m-BFxZi.jpg', '', 2302, 0, '1', '0', NULL, '1 August 2025', '2024-12-02 13:05:13', '2026-04-07 11:57:22'),
(121, 'Aconcagua 6962m an introduction to High Altitude Climbing', NULL, 17, '6962M/22,840ft', 'Spring', '8-12hr, summit day 16+hr', '5-10', 'Hotel & Tent', '1500', NULL, 'Argentina', 2, '4600', '', NULL, '', '<p>At 6962 metres above sea level, Aconcagua attracts climbers from all over the world. Climbers come with completely different climbing backgrounds. Despite having almost 7000 meters, its summit can be reached without any technical climbing at all. In addition, Aconcagua has one of the best logistics in the world. Making the mountain extremely accessible even to inexperienced climbers.</p>\r\n<p>Aconcagua, however, should not be underestimated. It is known that weather in Aconcagua can be very dangerous as it changes so fast. Altitude is also an issue: trying the summit without proper acclimatisation can be dangerous. Extreme altitude can cause serious or fatal altitude diseases. A good acclimatisation plan requires great planning, heavy logistics and time. This is where we come in.</p>\r\n<p>Arnold Coster runs expeditions differently. By running a very flexible acclimatisation plan, we stay on the mountain until everyone gets a good chance. We optimize our acclimatisation walks using the ‘climb high sleeping low’ strategy. This way our clients don’t have to carry too much weight.</p>\r\n<p>As for safety, we are prepared to most medical emergencies we might encounter. All our guides are trained WFR rescuers with previous rescuing experience. By running daily medical checks, we can prevent altitude-related problems of happening. A very large and complex medical kit is available in every single camp as well as oxygen and Gamow bag if necessary.</p>\r\n<p> </p>', NULL, '2', NULL, NULL, NULL, 'aconcagua-6962m-an-introduction-to-high-altitude-climbing', 7, NULL, NULL, NULL, 'a-parede-sul-do-cume-sul-do-aconcagua-com-6919m-foto-de-gabriel-tarso-825x550-MyH3a.jpg', '1734278596_a-face-sul-do-aconcagua-uma-das-maiores-paredes-da-terra-foto-de-ashok-kipatri-825x619-2tKjP.jpg', '', 1999, 0, '1', '1', NULL, '2025-01-16', '2024-12-16 02:39:11', '2026-04-07 07:57:24'),
(122, 'BARUNTSE EXPEDITION (7129M) + MERA PEAK (6476M)', NULL, 30, '7129M', 'Autumn', '8-12hr, summit day 16+hr', '5-8', 'Hotel & Tent', '1500', NULL, 'Nepal', 2, '8500', 'mera-peak-baruntse-nn83mhutxeptjcfbj7iahfxhw9enyhz8uiwyloy9-yToEl.jpg', NULL, '', '<div class=\"uk-show-more  \" style=\"height: 420px; transition: height 0.5s;\">\r\n<p class=\"uk-scrollspy-inview uk-animation-slide-left-small\" style=\"text-align: justify;\"><strong>Baruntse</strong> is one of the most beautiful peaks in Nepal, it is a considerable and symmetrical snow peak, and has four ridges and four summits. It is bounded on the east by the Barun Glacier flowing north-south from Cho, to the northwest by the Imja Tse glacier and the Hunku glacier forms the southeast boundary. Our expedition guides and climbing Sherpas are well experienced and have got a lot of practical experience. They have been in this field for the last two decades. So, they could give all necessary guidance to take all precautions and expected dangers and how to tackle them. This enhances our expeditors to have full confidence and courage.</p>\r\n<p class=\"uk-scrollspy-inview uk-animation-slide-left-small\" style=\"text-align: justify;\">The Southeast Ridge of Baruntse is a bit difficult because of being a straightforward and hard way to climb. In the Expedition of Mt. Baruntse, there are hard sections of 50 Degree elevation with a prominent ice cliff for climbing and facing the risk of avalanche. The climbers have succeeded in the mountain mostly in the spring season because of being the best season for the climber for safety. However, some climbers have reached the top of this mountain in the autumn season too.</p>\r\n<p class=\"uk-scrollspy-inview uk-animation-slide-left-small\" style=\"text-align: justify;\"><strong>Mera Peak</strong> elevates 6,476m above sea level in the Mahalangur section of the Himalayas, south of Mount Everest. Categorized as the trekking peak, it is one of the most popular in its category. Mera Peak is the highest trekking peak in Nepal. The summit offers some exquisite views of 8000m peaks namely, Mt. Everest, Makalu, Lhotse, Cho Oyo, Kanchenjunga, and several other peaks.  Spring and autumn seasons are the best time to trek this mountain.</p>\r\n</div>', NULL, '3', NULL, NULL, NULL, 'baruntse-expedition-7129m-mera-peak-6476m', 6, NULL, NULL, NULL, 'baruntse-banner-dhxSu.JPG', 'baruntse-trip-nS4Os.JPG', '', 1951, 0, '1', '0', NULL, '2025-10-15', '2024-12-16 04:50:16', '2026-04-07 12:21:03'),
(123, 'Kilimanjaro 5895m; the Mountaineers way', NULL, 11, '5895m/19,340ft', 'Spring', '8hrs', '5-8', 'Hotel & Tent', NULL, NULL, 'Tanzania', 2, '4150', '1735050450_thomas-glacier-route-3WHxD.jpg', NULL, '', '<p>The “Thomas Glacier Route” is a unique path that only a select few expedition outfitters offer. Join us for an epic Kilimanjaro adventure designed for experienced climbers! If you\'re looking to conquer Africa\'s highest peak in total seclusion, you’ve found your match!</p>\r\n<p><br>This nearly unmarked trail takes you through scree, features some short climbing on the \"Moonlight Wall,\" and traverses the impressive Credner Glacier, leading you into the Reusch Crater and past the bubbling \"Ashpit.\" It’s truly the most thrilling and inventive way to ascend Africa\'s tallest mountain! You’ll be amazed by the sheer scale of the Northern Icefield’s glaciers as you tackle Kilimanjaro with us. Our acclimatization plan, led by Arnold Coster, is spot on for this trek. We take our time hiking through lush rainforests, moorlands, and rugged lava landscapes across the Shira Plateau. At the final campsite near the \"Lava Tower,\" you’ll be struck by the tranquillity of this secluded northern side, allowing you to soak in the peace and exclusivity. It’s only on the way down via the Mweka Route that we’ll see other trekkers again. This journey still feels like a true adventure, and you’ll view Kilimanjaro trekking in a whole new light after this experience. A trip to Tanzania is definitely worth it.</p>', NULL, '2', NULL, NULL, NULL, 'kilimanjaro-5895m-the-mountaineers-way', 8, NULL, NULL, NULL, 'img-20200117-062727-VnT3d.jpg', 'img-20191223-073632-koSJ5.jpg', '', 1789, 0, '1', '0', NULL, '2025-01-06', '2024-12-25 01:12:30', '2026-04-07 13:19:03'),
(124, 'Mount Kenya, Batian 5199m- Reaching the True Summit', NULL, 9, '5199m/17057ft', 'Spring', '6-12hrs', '5-8', 'Hotel-Camping', NULL, NULL, 'Kenya', 0, '3500', '', NULL, '', '<p>Mount Kenya boasts the impressive twin peaks of Batian (5199m) and Nelion (5189m), making it the second tallest mountain in Africa. The trek to the base is both easy and picturesque, with most hikers stopping at Point Lenana (4985m). However, we’re all about reaching the highest points! Get ready for an exciting journey through untouched nature as we take the road less traveled. Our 9-day expedition is designed to give you a solid shot at summiting Batian (5199m) in a reasonable timeframe, truly conquering Mount Kenya.  </p>\r\n<p><br>For this climbing adventure, we’ll tackle Mount Kenya using one of the standard routes. In the summer, the North Face Normal Route takes you straight to Batian’s summit. In winter, we’ll first ascend to Nelion and then traverse over to Batian. Both routes feature sections that reach up to UIAA 5th degree difficulty, offering an alpine experience with stunning and thrilling passages.</p>', NULL, '3', NULL, NULL, NULL, 'mount-kenya-batian-5199m-reaching-the-true-summit', 9, NULL, NULL, NULL, '5000m-2nd-1lGoK.jpg', '1735212271_img-20200103-113209-HVrrU.jpg', '', 1594, 0, '1', '0', NULL, '2025-01-18', '2024-12-26 22:06:40', '2026-04-07 13:34:56'),
(125, 'Kangyatse II 6200m & Dzo Jongo 6050m, double header introduction to 6000m', NULL, 14, '6200m/20341ft', 'Spring', '6-12hrs', '5-8', 'Hotel-Camping Tent', NULL, NULL, 'India', 2, '3450', '', NULL, '', '<p>Markha Valley – Ladakh’s most popular trek has Mt. Kang Yatse dominating its skyline most of the route. Just a little distance from Kang Yatse is the little known Dzo Jongo. This demanding trip comprises the trek and the twin ascents into 12 days, packing in a powerful punch. Although the climbs don’t require serious climbing skills, it definitely requires some serious endurance and a love for prolonged periods in the outdoors.</p>\r\n<p>Nimaling at 4720m from where most of the action commences can get pretty cold and windy. It happens to be the grazing grounds of all the cattle in the Markha Valley and has a big parachute tent shelter in the summers for visiting trekkers. If you have some tough treks behind your back and atleast one small climb, then this is a good trip to up the game further. Brace up for some really demanding days if you are signing up for this one.</p>\r\n<p>If you want to test yourself at 6000m and make the transision to become a true mountaineer; this is the trip for you!</p>\r\n<p> </p>', NULL, '2', NULL, NULL, NULL, 'kangyatse-ii-6200m-dzo-jongo-6050m-double-header-introduction-to-6000m', 10, NULL, NULL, NULL, 'kang-yatse-rlecz.JPG', '1735216098_kang-yatse-AvBS2.JPG', '', 1926, 0, '1', '0', NULL, '6 July 2025', '2024-12-26 23:08:56', '2026-04-07 13:51:42'),
(126, 'CHO OYU EXPEDITION', NULL, 36, '8188 m', 'Autumn', '6-12 hours', '5-8', 'Hotel-Camping Tent', '4000', NULL, 'China', 2, '39500', 'cho-oyu-route-map-B27as.jpg', NULL, '', '<p>Known as the “Turquoise Goddess,” Cho Oyu offers climbers a perfect introduction to high-altitude mountaineering above 8,000m, combining extreme altitude with a relatively non-technical route. The standard ascent follows the Tibetan Northwest Ridge, featuring broad snow slopes, minimal objective danger, and fewer technical sections compared to other Himalayan giants, making it an ideal first 8,000m expedition for well-prepared climbers.<br>The expedition begins with a scenic journey to Tibet via Kathmandu, followed by gradual acclimatization through carefully planned rotations between Base Camp and high camps. This approach allows climbers to adapt safely to altitude while enjoying spectacular views of Everest, Lhotse, Makalu, and Shishapangma along the way. Thanks to regulated access by the Chinese authorities, Cho Oyu experiences far less crowding than peaks like Everest or Manaslu, offering a quieter, more remote, and genuinely expedition-style experience in one of the world’s most dramatic mountain landscapes.</p>', '<p class=\"MsoNormal\" style=\"text-align: justify;\">With a very high success rate and low objective dangers among 8,000m peaks, Cho Oyu is often considered the most practical and rewarding choice for climbers aiming to step into the elite world of extreme altitude. </p>', '4', NULL, NULL, NULL, 'cho-oyu-expedition', 3, NULL, '#Cho Oyu #Expeditions #Arnoldcoster', 'Join the Cho Oyu Expedition with Arnold Coster – six-time Cho Oyu summiteer. The safest and least crowded 8000m peak, guided by elite Sherpa team.', 'mg-2238-ykArJ.jpeg', '1770797033_upload-TT9p9.jpeg', '1770793966_cho-oyu-expedition-2026-compressed-3KjN2.pdf', 366, 0, '1', '0', NULL, '2026-09-06', '2026-02-11 17:05:26', '2026-04-07 11:57:37'),
(127, 'Bolivian Peaks', NULL, 18, '6462 m', 'Spring', NULL, '5 or more', NULL, '1500', NULL, 'Bolivia', 2, '3950', 'altitude-chart-page-0001-6yOfF.jpg', NULL, '', '<p dir=\"ltr\">This classic expedition in the Cordillera Real provides mountaineers with a stunning opportunity to climb a series of striking, well-shaped peaks. The journey begins in La Paz, followed by travel to Copacabana for acclimatization near Lake Titicaca, including visits to Inca ruins and the Island of the Sun. After acclimatizing, the trek continues into the Condoriri region—often described as magical—featuring pyramid-shaped mountains, pristine snow faces, elegant ridges, and fields of penitentes. Initial climbs include Pico Austria (5100m) and Pyramid Blanca (5230m), combined with glacier training, before progressing to the beautiful Pequeno Alpamayo (5337m).</p>\r\n<p dir=\"ltr\">After returning to La Paz for rest, the expedition continues with a three-day ascent of Chachacomani (6074 m). Afterwards we will also attempt Illimani (6462m), a dominant peak overlooking La Paz and a fitting finale. Bolivia is known for its consistently stable weather, which has historically allowed full completion of the climbing program.</p>\r\n<p> </p>', '<p dir=\"ltr\">This expedition is designed to allow climbers to attempt a wide range of peaks. Although the schedule is demanding, participants can choose to rest or skip certain climbs. Both 16-day and 22-day options are available.</p>\r\n<p dir=\"ltr\">The journey begins in the Condoriri range, home to thirteen peaks over 5,000m, all accessible within a day from base camp. The camp is set beside Laguna Chiar Khota, offering spectacular views. Equipment is transported with the help of mules. Planned ascents include:</p>\r\n<ul>\r\n<li dir=\"ltr\" aria-level=\"1\">\r\n<p dir=\"ltr\" role=\"presentation\">Pico Austria (5100m) – An excellent acclimatization climb over rocky terrain with panoramic views.</p>\r\n</li>\r\n<li dir=\"ltr\" aria-level=\"1\">\r\n<p dir=\"ltr\" role=\"presentation\">Pyramid Blanca (5230m) – Ideal for practicing crampon use and alpine movement while gaining altitude.</p>\r\n</li>\r\n<li dir=\"ltr\" aria-level=\"1\">\r\n<p dir=\"ltr\" role=\"presentation\">Pequeno Alpamayo (5337m) – A visually impressive peak reached via moraine and glacier travel, followed by a scenic ridge climb.</p>\r\n</li>\r\n<li dir=\"ltr\" aria-level=\"1\">\r\n<p dir=\"ltr\" role=\"presentation\">Chachacomani (6074 m) – A classic, accessible ice peak climbed over three days.</p>\r\n</li>\r\n<li dir=\"ltr\" aria-level=\"1\">\r\n<p dir=\"ltr\" role=\"presentation\">Illimani (6462m) – The highest peak in the Cordillera Real, climbed via two camps and is considered one of South America’s finest mountains.</p>\r\n</li>\r\n</ul>\r\n<p><strong> </strong></p>\r\n<p dir=\"ltr\">Experience Required</p>\r\n<p dir=\"ltr\">Suitable for climbers with prior experience such as Scottish winter mountaineering (Grade I), an introductory alpine course, Mont Blanc, or similar expeditions like Mera Peak or Ecuador’s volcanoes. Participants can opt out at various stages depending on their preferred trip length.</p>\r\n<p> </p>', '2', NULL, NULL, NULL, 'bolivian-peaks', 1, NULL, NULL, NULL, '11-FGgcA.jpg', '1775021327_6-25d8D.jpeg', 'bolivian-peaks-compressed-PC0mJ.pdf', 68, 0, '1', '1', NULL, '19th June 2027', '2026-03-24 16:24:40', '2026-04-07 14:51:52'),
(128, 'Everest South, Nepal Expedition', NULL, 55, '8848.86 m', 'Spring', '8-12hrs', '5-10', NULL, '4500', NULL, 'Nepal', 2, '47500', 'everest-south-Q5IrM.jpeg', NULL, '', '<p dir=\"ltr\">Climbing Mount Everest from the south side in Nepal is the most popular route used by mountaineers. The expedition begins with a helicopter flight to Lukla followed by a trek through the Khumbu Valley to reach Everest Base Camp at 5,364 meters. From base camp, climbers gradually ascend through several high camps across the Khumbu Icefall, Western Cwm, Lhotse Face, and South Col before making the final summit push to the top of the world at 8,848.86 meters.</p>\r\n<p> </p>', '<p dir=\"ltr\">A typical south-side Everest expedition usually takes about 50-52 days in total. This time includes trekking to base camp, acclimatization rotations between camps, rest days, and waiting for a suitable weather window for the summit attempt.</p>\r\n<p> </p>', '4', NULL, NULL, NULL, 'everest-south-nepal-expedition', 2, NULL, '#Everestnepal #mountaineering', 'Everest South Expedition Nepal 2027', 'eve-mHggw.JPG', '1774859079_everest-U8rgd.JPG', '1774933466_everest-south-compressed-compressed-TwJ32.pdf', 96, 0, '1', '1', NULL, '11th April, 2027', '2026-03-30 17:20:30', '2026-04-07 13:22:11'),
(129, 'Pisco and Chopiclaqui + Optional Alpamayo', NULL, NULL, '6345 m', 'Spring', '8hrs', '5 or more', NULL, '1500', NULL, 'Bolivia', 2, '4500', 'peru-page-0001-q7QUB.jpg', NULL, '', NULL, NULL, '2', NULL, NULL, NULL, 'pisco-and-chopiclaqui-optional-alpamayo', 11, NULL, NULL, NULL, 'trek-EUtDc.jpeg', '1775462237_pisco-qnjLv.jpeg', '', 22, 0, '1', '0', NULL, '2027-06-19', '2026-04-06 17:11:35', '2026-04-07 15:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `cl_trip_docs`
--

CREATE TABLE `cl_trip_docs` (
  `id` int NOT NULL,
  `trip_id` int DEFAULT NULL,
  `key_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `document` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ordering` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_trip_docs`
--

INSERT INTO `cl_trip_docs` (`id`, `trip_id`, `key_string`, `title`, `document`, `thumbnail`, `ordering`, `created_at`, `updated_at`) VALUES
(1, 325, 'gzhqiYWatmuAA7poAKtVklVs8CPdR4gxc96MWACp', 'something', '8000m-gear-6209fbefa1c7e.pdf', NULL, 1, '2022-02-13 07:13:21', '2022-02-14 06:51:27'),
(2, 325, '90KK3WKDIGKM3cYN4SC2KqliKQJmeZnZVTQuXAA0', 'another thing', '0b373c4eba89023c96e28d613da1be48-7gxry1uopciazg2boffyc3u3zie46doxtoz4tvfr-6208aff2e41ea.jpg', NULL, 2, '2022-02-13 07:14:58', '2022-02-13 07:14:58'),
(3, 269, 'b11rw3oO9hAvW31AZ5MF8sVf9CaguSMM2MVHLiLI', 'Everest Gear List', 'gear-guide-list-620cbf3caf84b.pdf', NULL, 1, '2022-02-13 08:37:42', '2022-02-16 09:09:21'),
(4, 269, 'jxZRFA1wy270wKgabard5egEJIms6bTUE36Dl1S9', 'Printable Checklist', 'everest-gear-checklist-620cbf807846f.pdf', NULL, 2, '2022-02-13 08:38:11', '2022-02-16 09:10:24'),
(7, 343, 'hTBARbr7UcSgyQf4vaOBB9NRzJ9CQX3V7rFhvCQS', 'Everest Gear Guide List', 'gear-book-2-623c00648f1f3.pdf', NULL, 1, '2022-03-24 05:23:48', '2022-03-24 05:24:50'),
(8, 343, 'z5krdjtcGoSc3iZh0JyFK9agHSGxPOIV8xaBgRh4', 'Everest Printable Checklist', 'everest-gear-printable-checklist-623c00919dc09.pdf', NULL, 2, '2022-03-24 05:24:33', '2022-03-24 05:24:33'),
(9, 345, 'pUAGTf3X8Q5yOMsXfUXsEJU11HFIMcj5xSRMUCBz', 'Gear Guide Book', 'gear-guide-book-634cf7bb55827.pdf', 'gear-guide-book-62985b076451b.jpg', 1, '2022-03-27 09:42:40', '2022-10-17 06:35:39'),
(10, 345, 'e9Gs0kB6O51rSfYtSRJ5DDooo9vUD8URQtTU1tmK', 'Printable Gear Checklist', 'everest-check-list-6347bce19894b.pdf', 'gear-list-thumblins-3-6299b7de0d647.jpg', 2, '2022-03-27 09:43:08', '2022-10-13 07:23:13'),
(11, 346, 'zuWJ9eBia3ZnmzI12c7VmmxYA7eFFl2ELgeNUODo', 'Gear Guide Book', 'gear-guide-book-634cf9a3a5e8f.pdf', 'gear-guide-book-6299b98bb14c3.jpg', 1, '2022-03-29 04:20:49', '2022-10-17 06:43:47'),
(12, 346, 'wbxussjTw3jylLjssOnlaFwFYlYPmjXkbdgUyqsq', 'Printable Gear Checklist', 'everest-check-list-6347bdc65e552.pdf', 'gear-list-thumblins-3-6299b992e0ed6.jpg', 2, '2022-03-29 04:22:02', '2022-10-13 07:27:02'),
(13, 348, 'gJH4p1j0CKikpeDoCZnDDsnkjgy2mmlpFASwrxCt', 'Gear Guide Book', 'mountaineering-gear-guide-book-6242c53d0e872.pdf', NULL, 1, '2022-03-29 08:37:17', '2022-03-29 08:37:17'),
(14, 348, 'Q3CtWpNE187h5JZeALAO5k8qTK3nbZJub2s7iDxz', 'Printable Gear Checklist', 'everest-printable-gear-checklist-6242c55764d15.pdf', NULL, 2, '2022-03-29 08:37:43', '2022-03-29 08:37:43'),
(25, 351, 'R4aTIUR9n9wxvAwAW3Ezct4FdqXGLTU3l4W28G9O', 'Gear Guide Book', 'gear-guide-book-634cf9dcafe71.pdf', 'gear-guide-book-6299b9cfcb0fb.jpg', 1, '2022-03-31 06:54:43', '2022-10-17 06:44:44'),
(26, 351, 'hvH7apjMfQyW7UV0lRRDUEfyOUD6sZQysLnewnm3', 'Printable Gear Checklist', 'everest-check-list-6347bdf540b3c.pdf', 'gear-list-thumblins-3-6299b9d868901.jpg', 2, '2022-03-31 06:55:34', '2022-10-13 07:27:49'),
(27, 352, 'IYw5DE0qlE0Zv5LJODykaotqhQVdpA2lTB3hkpzV', 'Gear Guide Book', 'gear-guide-book-634cfa17c9610.pdf', 'gear-guide-book-6299b9eda6b8d.jpg', 1, '2022-03-31 07:14:00', '2022-10-17 06:45:43'),
(28, 352, 'fXBW4Q0221VgvR3hYOBhFCnv1a47DGTgq2nk9TzN', 'Printable Gear Checklist', 'everest-lhtose-check-list-6347be1386961.pdf', 'gear-list-thumblins-3-6299b9f57f51e.jpg', 2, '2022-03-31 07:14:43', '2022-10-13 07:28:19'),
(29, 353, 'voMlM0Mr92Y11oGbvGN44oVMzgIc0tFw9nGTjtJU', 'Gear Guide Book', 'gear-guide-book-634cfa5eeb39b.pdf', 'gear-guide-book-6299ba0d6a25a.jpg', 1, '2022-03-31 07:29:55', '2022-10-17 06:46:54'),
(30, 353, 'OTnTp89OcA9kJ30mYDM1t7I3sWvSUZ7l5UgjZUz7', 'Printable Gear Checklist', 'k2-check-list-6347be294e462.pdf', 'gear-list-thumblins-3-6299ba1d88a38.jpg', 2, '2022-03-31 07:30:18', '2022-10-13 07:28:41'),
(32, 359, 'YOpeTl3E6UByCfoeTsDba9qGnS8JkzbXU2uW34WM', 'Gear Guide Book', 'gear-guide-book-634cfb9daeb82.pdf', 'gear-guide-book-6299ba6a2e89a.jpg', 1, '2022-04-01 07:51:54', '2022-10-17 06:52:13'),
(33, 359, 'zzvQ2sOlkr6NscPCsCvdKM75eih0M9pie9uFfvEN', 'Printable Gear Checklist', 'makalu-check-list-6347bead2fd6f.pdf', 'gear-list-thumblins-3-6299ba717903e.jpg', 2, '2022-04-01 07:52:33', '2022-10-13 07:30:53'),
(34, 362, 't6wxZCtTgP7UmTCM8u3OMevveyqKYKOfhS6nlMH0', 'Gear Guide Book', 'gear-guide-book-634cfc360f9f6.pdf', 'gear-guide-book-62985b4c45c7f.jpg', 1, '2022-04-01 08:23:40', '2022-10-17 06:54:46'),
(35, 362, 'MYaIy8MCicAB5hB3NLtgcxplHcy3Ga42GAkk8vo0', 'Printable Gear Checklist', 'manaslu-heck-list-6347bf13812ba.pdf', 'gear-list-thumblins-3-6299bb1dd0c10.jpg', 2, '2022-04-01 08:24:07', '2022-10-13 07:32:35'),
(36, 357, 'tdFN8RrTJZr1jKqifJbswHhleMty70Gh7hXz8dfT', 'Gear Guide Book', 'gear-guide-book-634cfb0c47348.pdf', 'gear-guide-book-6299ba33d0b2b.jpg', 1, '2022-04-03 04:54:22', '2022-10-17 06:49:48'),
(37, 357, '2xYv2uVHurr7aTQSw2eEtPpJFt9zj1Bhmc8VdAdK', 'Printable Gear Checklist', 'kanchenjunga-check-list-6347be525fed3.pdf', 'gear-list-thumblins-3-6299ba3b225be.jpg', 2, '2022-04-03 04:54:50', '2022-10-13 07:29:22'),
(38, 365, '7Iw9UgehTV2TpIDMfCYbFi2mcqhDoLS293suNrvV', 'Gear Guide Book', 'gear-guide-book-634cfca763d22.pdf', 'gear-guide-book-6299bb615030d.jpg', 1, '2022-04-03 06:25:15', '2022-10-17 06:56:39'),
(39, 365, 'LEAyTksSf8aWgiNMgHwaYkFqt5f8U0ygjZixkR2y', 'Printable Gear Checklist', 'annapurna-i-check-list-6347bf53111ba.pdf', 'gear-list-thumblins-3-6299bb6a7d185.jpg', 2, '2022-04-03 06:25:40', '2022-10-13 07:33:39'),
(40, 367, '9UEerviJTLdLaXtT9s9PAF27x35lWC8J33jdHsNE', 'Gear Guide Book', 'gear-guide-book-634cfce596960.pdf', 'gear-guide-book-6299bb8d78705.jpg', 1, '2022-04-03 08:05:18', '2022-10-17 06:57:41'),
(41, 367, 'wHyfH2pucJo06cgYRFklGjexkTAzTAM0KURNZpaU', 'Printable Gear Checklist', 'broad-peak-check-list-6347bf8824bbf.pdf', 'gear-list-thumblins-3-6299bb96e3ed3.jpg', 2, '2022-04-03 08:05:47', '2022-10-13 07:34:32'),
(43, 360, 'IlQkc9u7IRsHcwxQtrvncuFw8op1v2PVyLtL13lc', 'Gear Guide Book', 'gear-guide-book-634cfbd1efa59.pdf', 'gear-guide-book-6299ba7fe146f.jpg', 1, '2022-04-03 09:47:11', '2022-10-17 06:53:06'),
(44, 360, 'vUsNzHY7HG82gcY4W4xUieRHhOk6aMn86oS70zec', 'Printable Gear Checklist', 'cho-oyu-check-list-6347becf8e7c5.pdf', 'gear-list-thumblins-3-6299ba86aff52.jpg', 2, '2022-04-03 09:47:48', '2022-10-13 07:31:27'),
(45, 404, 'TpNEh9P0n70bzq8Bd99cxByKGUd1N39SHHgjWO0u', 'Gear Guide Book', 'gear-guide-book-634cfa44b2d3b.pdf', 'gear-guide-book-6299bd06126c5.jpg', 1, '2022-04-12 03:28:50', '2022-10-17 06:46:28'),
(46, 404, '1WH6JtBrSZtXbwBCwaXEGjrL3CksofdT2TbhXd78', 'Printable Gear Checklist', '6000-m-check-list-6347c706b9134.pdf', 'gear-list-thumblins-3-6299bd1493dd9.jpg', 2, '2022-04-12 03:29:41', '2022-10-13 08:06:30'),
(47, 390, 'bwcOBO8X2tE68NeiS42iudwdGLUFYodLrKTTih2O', 'Gear Guide Book', 'gear-guide-book-634cf7ebec3d0.pdf', 'gear-guide-book-6299bcbee2e2b.jpg', 1, '2022-04-12 03:38:33', '2022-10-17 06:36:27'),
(48, 390, 'FOABaKIyXo89GmmPgHFCVUkygglphxIq3HRIQ1Z0', 'Printable Gear Checklist', 'himlung-check-list-6347c4dd6540b.pdf', 'gear-list-thumblins-3-6299bcc6d775e.jpg', 2, '2022-04-12 03:40:26', '2022-10-13 07:57:17'),
(49, 389, 'z2zqx9onHcwxilAiWLKGHx2k63NTGEoTMIKOSDAw', 'Gear Guide Book', 'gear-guide-book-634cf9b5473da.pdf', 'gear-guide-book-6299bc94b2e67.jpg', 1, '2022-04-12 03:41:03', '2022-10-17 06:44:05'),
(50, 389, 'iKaBT9KAPLFwKcE2cPvIvXoLcXbHtAM1SBhOJ1XE', 'Printable Gear Checklist', 'baruntse-check-list-6347c4f336187.pdf', 'gear-list-thumblins-3-6299bca6326a6.jpg', 2, '2022-04-12 03:41:26', '2022-10-13 07:57:39'),
(51, 369, 'j5kNJVR9d1zzSumpnBh2uMk04a91766KEPKtHoDh', 'Gear Guide Book', 'gear-guide-book-634cfd151b666.pdf', 'gear-guide-book-6299bbe1dcd8a.jpg', 1, '2022-04-12 03:42:38', '2022-10-17 06:58:29'),
(52, 369, 'hEQjyw9FytwgdPCDoaZFyAla9FFjH4tz7KSwZdui', 'Printable Gear Checklist', 'shisha-pangma-check-list-6347bfd669b07.pdf', 'gear-list-thumblins-3-6299bbf3e9744.jpg', 2, '2022-04-12 03:43:02', '2022-10-13 07:35:50'),
(53, 358, 'fJYJPmDzgWB423LdlAg4Rv66vHR83dDPUou0Kydb', 'Gear Guide Book', 'gear-guide-book-634cfb5dd31c1.pdf', 'gear-guide-book-6299ba521ce47.jpg', 1, '2022-04-12 04:16:49', '2022-10-17 06:51:09'),
(54, 358, 'WvNPHsK7hOcHSG1BXRQJRtFL9Iddlz0DxmEgTCV9', 'Printable Gear Checklist', 'lhtose-check-list-6347be72c0d46.pdf', 'gear-list-thumblins-3-6299ba5981005.jpg', 2, '2022-04-12 04:17:18', '2022-10-13 07:29:54'),
(55, 368, 'UJzT9oweYyvueuTx30J7ZX0hmnKp2MMLaqpXxQHX', 'Gear Guide Book', 'gear-guide-book-634cfcfe3336e.pdf', 'gear-guide-book-6299bbbcd630e.jpg', 1, '2022-04-13 03:55:27', '2022-10-17 06:58:06'),
(56, 368, 'JihcdgzkM338k2Qv1oKlrnO5yM4Bq714ndbuAKfe', 'Printable Gear Checklist', 'gasherbrum-ii-check-list-6347bfa4a5919.pdf', 'gear-list-thumblins-3-6299bbc3d8caf.jpg', 2, '2022-04-13 03:55:52', '2022-10-13 07:35:00'),
(57, 366, 'Z765d0IEBRlw6h8kQRJ9T35MoP5T0eFoIoe1ICyZ', 'Gear Guide Book', 'gear-guide-book-634cfccaceb79.pdf', 'gear-guide-book-62ca612441558.jpg', 1, '2022-04-13 04:54:24', '2022-10-17 06:57:14'),
(58, 366, 'ngy6V9RhA1eXIhZgENiaRPvQjnNANRCAmLt8UOl0', 'Printable Gear Checklist', 'gasherbrum-i-check-list-6347bf6ab4d65.pdf', 'gear-list-thumblins-3-62ca60e7b0fad.jpg', 2, '2022-04-13 04:54:45', '2022-10-13 07:34:02'),
(59, 364, 'viyA0PV4Er2x9X18DJ5bP8zDACeoTYY9LVlyxfUZ', 'Gear Guide Book', 'gear-guide-book-634cfc7c39dec.pdf', 'gear-guide-book-6299bb310ef51.jpg', 1, '2022-04-13 05:03:50', '2022-10-17 06:55:56'),
(60, 364, '5ExZycr5myM8hKhk7MgoSScVKZ7hD2uKDMTd1UWX', 'Printable Gear Checklist', 'nanga-pargat-check-list-6347bf33b4203.pdf', 'gear-list-thumblins-3-6299bb38d9499.jpg', 2, '2022-04-13 05:04:16', '2022-10-13 07:33:07'),
(61, 372, 'Vw7lAUV07kN96yG3zBnyChOwUckMkoD514OcrhKk', 'Gear Guide Book', 'treking-gear-book-62776db0dc19f.pdf', 'trekking-1-01-629d7de930856.jpg', 1, '2022-05-08 07:13:53', '2022-06-06 04:09:13'),
(62, 372, 'rUqjuhQfhfpWTloUAK22QYFdgqIOaeKj7tjiqUSr', 'Printable Gear Checklist', 'trekking-gear-checklist-62776dc7bb750.pdf', 'trekking-1-03-629d7de28f45f.jpg', 2, '2022-05-08 07:14:15', '2022-06-06 04:09:06'),
(63, 435, 'bumi9f1BpkV3FAYHUkkJGSc6KvNntDy3g3D1lB5P', 'Gear Guide Book', 'treking-gear-guide-book-62833f706aeac.pdf', 'trekking-1-01-629d7db1a13d8.jpg', 1, '2022-05-17 06:23:44', '2022-06-06 04:08:17'),
(64, 435, 'iFqHgcEM0d1v4EKejtuacRM3IgniVjFV2MPCcoi5', 'Printable Gear Checklist', 'trekking-printable-gear-checklist-62833f9255293.pdf', 'trekking-1-03-629d7db8eef1b.jpg', 2, '2022-05-17 06:24:18', '2022-06-06 04:08:24'),
(65, 436, 'AKPqLskpyfYnhq7I9L2EBP5208uVkYuaEToKVaKs', 'Gear Guide Book', 'treking-gear-guide-book-62833fc925c8e.pdf', 'trekking-1-01-629d7d9da0538.jpg', 1, '2022-05-17 06:25:13', '2022-06-06 04:07:57'),
(66, 436, '5K89zci1af5rrvOdOoaaPt4aPAAnm3sOCZNmkyPg', 'Printable Gear Checklist', 'trekking-printable-gear-checklist-62833fdc5f5ed.pdf', 'trekking-1-03-629d7da4e0285.jpg', 2, '2022-05-17 06:25:32', '2022-06-06 04:08:04'),
(67, 437, '4Y4rN492K0frSwMSl1bKtZYtJ9UikAYdudtkl3Ms', 'Gear Guide Book', 'treking-gear-guide-book-62834004dd1af.pdf', 'trekking-1-01-629d7d40a01bb.jpg', 1, '2022-05-17 06:26:12', '2022-06-06 04:06:24'),
(68, 437, 'CgmmAIFWrZhZL2m6pLdEu3ku0x5RN14pva1wsgWn', 'Printable Gear Checklist', 'trekking-printable-gear-checklist-628340156805d.pdf', 'trekking-1-03-629d7d48b114a.jpg', 2, '2022-05-17 06:26:29', '2022-06-06 04:06:32'),
(69, 441, 'PvdrTPCmypqVYF1gFquI8VESYizKZdWPqjxHGZPC', 'Gear Guide Book', 'treking-gear-guide-book-628340379e6c9.pdf', 'trekking-1-01-629d7d2393823.jpg', 1, '2022-05-17 06:27:03', '2022-06-06 04:05:55'),
(70, 441, 'vZwY6fW8uKmSuflIWGTruSYh84rPkyTuf6OntOKP', 'Printable Gear Checklist', 'trekking-printable-gear-checklist-6283404696104.pdf', 'trekking-1-03-629d7d2adb044.jpg', 2, '2022-05-17 06:27:18', '2022-06-06 04:06:02'),
(71, 442, 'ow5476cd24iF9tYTauQKXci1g9xmLY9tqBsW4Nfs', 'Gear Guide Book', 'treking-gear-guide-book-628340b37a98d.pdf', 'trekking-1-01-629d7d0b0bdc9.jpg', 1, '2022-05-17 06:29:07', '2022-06-06 04:05:31'),
(72, 442, 'RRphfzgxLKVeFIBFJuXdW46BmRA1V6VuNs2ud3KO', 'Printable Gear Checklist', 'trekking-printable-gear-checklist-628340c34faf6.pdf', 'trekking-1-03-629d7d12e08a3.jpg', 2, '2022-05-17 06:29:23', '2022-06-06 04:05:38'),
(73, 445, 'TPd8187jNrsAbjY1nm9r56ytQqF9aL5Y5Dg2VIZl', 'Gear Guide Book', 'treking-gear-guide-book-62834111af8d4.pdf', 'trekking-1-01-629d7cec68485.jpg', 1, '2022-05-17 06:30:41', '2022-06-06 04:05:00'),
(74, 445, 'v0iqte79f7m2f03z8FqFauZutNnVx9hhUmWQPbkO', 'Printable Gear Checklist', 'trekking-printable-gear-checklist-6283411fd0ef1.pdf', 'trekking-1-03-629d7cf4a3c6f.jpg', 2, '2022-05-17 06:30:55', '2022-06-06 04:05:08'),
(75, 447, 'fqmFMUFjwlcz1mVvS0LgIqZJ74S8WaSgmn5NfnOd', 'Gear Guide Book', 'treking-gear-guide-book-6283416fc969d.pdf', NULL, 1, '2022-05-17 06:32:15', '2022-05-17 06:32:15'),
(76, 447, 'ylQjJRFFGy3GqiZWfEtEOBc9oHB4qX87dNiKPQ1a', 'Printable Gear Checklist', 'trekking-printable-gear-checklist-6283418cdfedb.pdf', NULL, 2, '2022-05-17 06:32:44', '2022-05-17 06:32:44'),
(77, 449, 'CUJwDOXGidspqV2crSkhezCzWMsgJKW9LMHybdXS', 'Gear Guide Book', 'treking-gear-guide-book-628341c855661.pdf', 'trekking-1-01-629d7ccb89f17.jpg', 1, '2022-05-17 06:33:44', '2022-06-06 04:04:27'),
(78, 449, 'wsj5AG2J1OAlozPrB2XQtOXFbEb1zxGNEsAXS319', 'Printable Gear Checklist', 'trekking-printable-gear-checklist-628341e20a562.pdf', 'trekking-1-03-629d7cd37912e.jpg', 2, '2022-05-17 06:34:10', '2022-06-06 04:04:35'),
(79, 452, 'c5gmU8aadffiG3KKUUucSVVHVibcB4Cqbx4mjdnj', 'Gear Guide Book', 'treking-gear-guide-book-628342268336c.pdf', 'trekking-1-01-629d7cae18b94.jpg', 1, '2022-05-17 06:35:18', '2022-06-06 04:03:58'),
(80, 452, 'OPgcRk5Ve3ghF4zGOE9RWU3TQleXwVlp5weSda6l', 'Printable Gear Checklist', 'trekking-printable-gear-checklist-6283423ead45d.pdf', 'trekking-1-03-629d7cb830323.jpg', 2, '2022-05-17 06:35:42', '2022-06-06 04:04:08'),
(81, 454, 'SI8zxguwh49HUqLffmmPwZNmX3veHXW5jtfb6SBR', 'Gear Guide Book', 'treking-gear-guide-book-62834265389c9.pdf', 'trekking-1-01-629d7c92ec05a.jpg', 1, '2022-05-17 06:36:21', '2022-06-06 04:03:30'),
(82, 454, 'G7bqyLFjoCerkksuPofziIdxm882qIOm1kIJrwwg', 'Printable Gear Checklist', 'trekking-printable-gear-checklist-6283427756420.pdf', 'trekking-1-03-629d7c9ab35e8.jpg', 2, '2022-05-17 06:36:39', '2022-06-06 04:03:38'),
(83, 457, 'xbZcGopZDZi1hBvxGiInjwBlJXjgZZcb6eCvtZh1', 'Gear Guide Book', 'treking-gear-guide-book-6283429ba60ac.pdf', 'trekking-1-01-629c83c87634c.jpg', 1, '2022-05-17 06:37:15', '2022-06-05 10:22:00'),
(84, 457, '9tixLBKe9leFTiDVrt8PJxiu4PdcA9iVlsuwjxeL', 'Printable Gear Checklist', 'trekking-printable-gear-checklist-628342ab2e64f.pdf', 'trekking-1-03-629c83d03d318.jpg', 2, '2022-05-17 06:37:31', '2022-06-05 10:22:08'),
(85, 460, 'ho9NRhUmiPoYN9c47yGMlDwgoO2OZ4P4Tga0ZHoP', 'Gear Guide Book', 'treking-gear-guide-book-628343295d30c.pdf', 'trekking-1-01-629c83aaaadce.jpg', 1, '2022-05-17 06:39:37', '2022-06-05 10:21:30'),
(86, 460, 'qBVmYpO06H5WNcbbTlvKBI8GU5DyidX1eprIYEvh', 'Printable Gear Checklist', 'trekking-printable-gear-checklist-6283433ae4e4c.pdf', 'trekking-1-03-629c83b260424.jpg', 2, '2022-05-17 06:39:54', '2022-06-05 10:21:38'),
(87, 461, '2OjF1pZbyA4HWZTrx71i6yo5J6UcGiaKtrXbfnHn', 'Gear Guide Book', 'treking-gear-guide-book-6283435e19483.pdf', 'trekking-1-01-629c839249faf.jpg', 1, '2022-05-17 06:40:30', '2022-06-05 10:21:06'),
(88, 461, 'JmgX4FNPWtYTkj9PGuCMPRlZghW0r6QcqDbRNhNx', 'Printable Gear Checklist', 'trekking-printable-gear-checklist-6283436eb06ec.pdf', 'trekking-1-03-629c839a4aab6.jpg', 2, '2022-05-17 06:40:46', '2022-06-05 10:21:14'),
(89, 466, '7vEWimse0tP6fFE5CxNt39bU5ldz4WfcacMQstFE', 'Gear Guide Book', 'treking-gear-guide-book-6283439de648b.pdf', 'trekking-1-01-629c833db9401.jpg', 1, '2022-05-17 06:41:33', '2022-06-05 10:19:41'),
(90, 466, 'layoKuFEf4OiXB0zQ4IleBtpL0CeQhdvY1iGCPlz', 'Printable Gear Checklist', 'trekking-printable-gear-checklist-62834477155c1.pdf', 'trekking-1-03-629c833301f14.jpg', 2, '2022-05-17 06:45:11', '2022-06-05 10:19:31'),
(91, 464, 'tOsw3G6SxNmFQqenI8DVKXbJSwxvGtL8BaUbWCk5', 'Gear Guide Book', 'treking-gear-guide-book-628344b4b5a79.pdf', 'trekking-1-01-629c835da0906.jpg', 1, '2022-05-17 06:46:12', '2022-06-05 10:20:13'),
(92, 464, 'I6RZ5VcLhACPi3uxjiKlasejANVivesngcHDFUt4', 'Printable Gear Checklist', 'trekking-printable-gear-checklist-628344c683794.pdf', 'trekking-1-03-629c8367145c1.jpg', 2, '2022-05-17 06:46:30', '2022-06-05 10:20:23'),
(93, 463, 'B88TFk0r9VlnETxHpCz8pP9uwQ9KLhPYOf3K92Bh', 'Gear Guide Book', 'treking-gear-guide-book-628344ef61ac3.pdf', 'trekking-1-01-629c83774a9db.jpg', 1, '2022-05-17 06:47:11', '2022-06-05 10:20:39'),
(94, 463, 'oju7iDytOVbiWG0ESayqQSWX8U8yiUuyRDK7KzO7', 'Printable Gear Checklist', 'trekking-printable-gear-checklist-6283451706be9.pdf', 'trekking-1-03-629c83802eef7.jpg', 2, '2022-05-17 06:47:51', '2022-06-05 10:20:48'),
(95, 378, 'dR0BPrKl53rTd8EFdX6l2Y6skb7CaTP2yb5EvHWM', 'Gear Guide Book', 'gear-guide-book-634cfa9aedf93.pdf', 'gear-guide-book-6299bc0ccd755.jpg', 1, '2022-05-24 05:21:23', '2022-10-17 06:47:54'),
(96, 378, 'zHSE1nHLpB3Rf7U8idHsJ1WO4l8UTvaAaV5RmENv', 'Printable Gear Checklist', '7000-m-check-list-6347c5788e015.pdf', 'gear-list-thumblins-3-6299bc16d4f73.jpg', 2, '2022-05-24 05:21:53', '2022-10-13 07:59:52'),
(97, 380, 'IMHbZ9i0U8XrIFoi6R41LD5CagIrvXAeMDOs1QuX', 'Gear Guide Book', 'gear-guide-book-634cfae4e759f.pdf', 'gear-guide-book-6299bc3817342.jpg', 1, '2022-05-24 05:25:21', '2022-10-17 06:49:08'),
(98, 380, 'j3Mcz2Z4ZLEskCOEjNYx2CJ6k3zXRRaXkkE2rrjr', 'Printable Gear Checklist', '7000-m-check-list-6347c598c446a.pdf', 'gear-list-thumblins-3-6299bc3f2a6bb.jpg', 2, '2022-05-24 05:25:41', '2022-10-13 08:00:24'),
(99, 382, 'XG0rDx0ZNUOizReJtTnac8iZi8s7XJSHZrICukco', 'Gear Guide Book', 'gear-guide-book-634cfb72d0128.pdf', 'gear-guide-book-6299bc50c6780.jpg', 1, '2022-05-24 05:26:50', '2022-10-17 06:51:30'),
(100, 382, 'HB3LKjh9pukvCTOCUpFAI0OofHmcU5qzHBSlhtu7', 'Printable Gear Checklist', '7000-m-check-list-6347c5ce9445c.pdf', 'gear-list-thumblins-3-6299bc5a26d1d.jpg', 2, '2022-05-24 05:27:23', '2022-10-13 08:01:18'),
(101, 387, 'QQD5Hty467JIDvynWT0dOZPoDgtMNxwYi9BiN20z', 'Gear Guide Book', 'gear-guide-book-634cfa7188b5d.pdf', 'gear-guide-book-6299bc6b361d9.jpg', 1, '2022-05-24 05:29:10', '2022-10-17 06:47:13'),
(102, 387, '2IQlMcFzzxBvmBIKcsBDNAOklzXWhPRA5FkjN1ze', 'Printable Gear Checklist', '7000-m-check-list-6347c543eddad.pdf', 'gear-list-thumblins-3-6299bc7237977.jpg', 2, '2022-05-24 05:29:33', '2022-10-13 07:58:59'),
(103, 400, 'QRgHFoYX4JVTmyjj2icYJeXr9BRKHnS29fE1Sv9a', 'Gear Guide Book', 'gear-guide-book-634cfab66d25b.pdf', 'gear-guide-book-6299bd5318503.jpg', 1, '2022-05-24 07:43:04', '2022-10-17 06:48:22'),
(104, 400, 'KWpBa2tCx0th9QM0gHMDRmRq9OM8y6iyU15t5pyn', 'Printable Gear Checklist', '6000-m-check-list-6347c7352158e.pdf', 'gear-list-thumblins-3-6299bd5be9ea3.jpg', 2, '2022-05-24 07:43:31', '2022-10-13 08:07:17'),
(105, 399, 'DIjL5Uzx8Kp3RV63eqb2Q7SwqehVROwNyA2R2FKB', 'Gear Guide Book', 'gear-guide-book-634cfc1cbdc86.pdf', 'gear-guide-book-6299bd7b9a9d0.jpg', 1, '2022-05-24 07:44:30', '2022-10-17 06:54:20'),
(106, 399, 'ungXhihaFlRx75xJcEoiNHop0E0jW7hIxI6OVzE7', 'Printable Gear Checklist', '6000-m-check-list-6347c7b128d61.pdf', 'gear-list-thumblins-3-6299bd82dfba5.jpg', 2, '2022-05-24 07:44:54', '2022-10-13 08:09:21'),
(107, 395, '7NPk70TBysAQzeS3l2ef6f47L9o1XM8RFlVljbmj', 'Gear Guide Book', 'gear-guide-book-634cfb8ac9759.pdf', 'gear-guide-book-6299bd97a1f48.jpg', 1, '2022-05-24 07:46:13', '2022-10-17 06:51:54'),
(108, 395, 'A7h6W5yNdYTOJc4c9BfkmwDDe7xAekV057USWlKj', 'Printable Gear Checklist', '6000-m-check-list-6347c75f72b5b.pdf', 'gear-list-thumblins-3-6299bd9eba4fe.jpg', 2, '2022-05-24 07:46:36', '2022-10-13 08:07:59'),
(109, 393, 'OdJh3oLQijcbiFNiOoNSEgd0H0bKuHYlUlHVA6Pb', 'Gear Guide Book', 'gear-guide-book-634cf8012b150.pdf', 'gear-guide-book-6299bdb905fc1.jpg', 1, '2022-05-24 07:47:07', '2022-10-17 06:36:49'),
(110, 393, 'qyasjbQ8VQ6DQvvehDGN9hbghsaUZqphBUb2arqW', 'Printable Gear Checklist', 'amadablam-check-list-6347c6b6af670.pdf', 'gear-list-thumblins-3-6299bdbf96156.jpg', 2, '2022-05-24 07:47:29', '2022-10-13 08:05:10'),
(111, 411, '5RdUyWPmRASqRSLYtHRwmlVdDEYIkPVl6pLQ6rDT', 'Gear Guide Book', 'gear-guide-book-634cf9cb780a1.pdf', 'gear-guide-book-6299b2f91eabf.jpg', 1, '2022-06-03 07:06:33', '2022-10-17 06:44:27'),
(112, 411, '0FCIAFrmF1UxKT7dDT4a77vsx95wKSVmmJ2PKo3M', 'Printable Gear Checklist', 'amadablam-check-list-6347c6c87d49b.pdf', 'gear-list-thumblins-3-6299b323b21c0.jpg', 2, '2022-06-03 07:07:15', '2022-10-13 08:05:28'),
(113, 361, 'Qzq6jdU5Ml9diB5fKh3gEGLGp2g6a1keQVxOXaHr', 'Gear Guide Book', 'gear-guide-book-634cfc030ea78.pdf', 'gear-guide-book-6299babadeca3.jpg', 1, '2022-06-03 07:39:38', '2022-10-17 06:53:55'),
(114, 361, 'CLhaX280FU95JW92TAFqlM1rOu2Fdg10QFFT0tYO', 'Printable Gear Checklist', 'dhaulagiri-check-list-6347beed7b654.pdf', 'gear-list-thumblins-3-6299badaa07bd.jpg', 2, '2022-06-03 07:40:10', '2022-10-13 07:31:57'),
(115, 385, 'YkUxhDFSFVh1lEJTCU7duzirgrKDFJroDqQceizW', 'Gear Guide Book', 'gear-guide-book-634cfa29368cf.pdf', 'gear-guide-book-629ef36f2498e.jpg', 1, '2022-06-07 06:40:17', '2022-10-17 06:46:01'),
(116, 385, 'LN3i0y68buXyu4ICqZNeK0AArIvi3rM092fRgjeK', 'Printable Gear Checklist', '7000-m-check-list-6347c52e506ea.pdf', 'gear-list-thumblins-3-629ef37723dba.jpg', 2, '2022-06-07 06:40:49', '2022-10-13 07:58:38'),
(117, 396, '83VbozGUoFee7kY7CZ37J47MhdjhSo8Y6K1e3EL0', 'Gear Guide Book', 'gear-guide-book-634cfbc19c123.pdf', 'gear-guide-book-62a029b2ea008.jpg', 1, '2022-06-08 04:46:42', '2022-10-17 06:52:49'),
(118, 396, 'rMnNRxwRNdaNv6eorxlO4V79rNUkE1oDETD1ydKC', 'Printable Gear Checklist', '6000-m-check-list-6347c7729f76d.pdf', 'gear-list-thumblins-3-62a029d070ea2.jpg', 2, '2022-06-08 04:47:12', '2022-10-13 08:08:18'),
(119, 397, 'LbTrufYs3yCCFryV1pmKIphVBjJJpOfQDFTPw7zi', 'Gear Guide Book', 'gear-guide-book-634cfbeb83e88.pdf', 'gear-guide-book-62a06e057535c.jpg', 1, '2022-06-08 09:38:13', '2022-10-17 06:53:31'),
(120, 397, 'o7VyeezN0vSFULGPHuHBKGD3efimCSmrixCC3R1E', 'Printable Gear Checklist', '6000-m-check-list-6347c79707ab8.pdf', 'gear-list-thumblins-3-62a06e276c977.jpg', 2, '2022-06-08 09:38:47', '2022-10-13 08:08:55'),
(121, 374, '7YOJMsHicWjjhcIdYRah637zs7HfbIYhWS2zrN2m', 'Gear Guide Book', 'gear-guide-book-634cfb2bc5199.pdf', 'gear-guide-book-62a1c55a4eefe.jpg', 1, '2022-06-09 10:03:06', '2022-10-17 06:50:19'),
(122, 374, 'DyuOjcsxXrwrEBoscDPWLz428jtKDxIcJPIPK5Ng', 'Printable Gear Checklist', '7000-m-check-list-6347c5b272259.pdf', 'gear-list-thumblins-3-62a1c572bf02b.jpg', 2, '2022-06-09 10:03:30', '2022-10-13 08:00:50'),
(123, 406, '91FFj9ue8S03lpjmOcO5PyQWpa5jMhu7MHimfoAg', 'Gear Guide Book', 'gear-guide-book-634cfc6483fca.pdf', 'gear-guide-book-62a2ce6ae2efc.jpg', 1, '2022-06-10 04:54:02', '2022-10-17 06:55:32'),
(124, 406, 'vkurXXxxCFZYr3RBeBluGfncaq9nWhlesz0wMf2v', 'Printable Gear Checklist', '6000-m-check-list-6347c7eb595e9.pdf', 'gear-list-thumblins-3-62a2ce8a8e8f2.jpg', 2, '2022-06-10 04:54:34', '2022-10-13 08:10:19'),
(125, 409, 'N5AYx4dQcDgIDafDEMIxrFpFUzjPEAgzS6K6Wigj', 'Gear Guide Book', 'gear-guide-book-634cfc91dd209.pdf', 'gear-guide-book-62a56efed7391.jpg', 1, '2022-06-12 04:43:42', '2022-10-17 06:56:17'),
(126, 409, 'fnALGpEQHbgcfAOwOZ01FIbeeqrnoiSePFaIzpp6', 'Printable Gear Checklist', '6000-m-check-list-6347c7fee42d5.pdf', 'gear-list-thumblins-3-62a56f1dbc1a9.jpg', 2, '2022-06-12 04:44:13', '2022-10-13 08:10:38'),
(127, 388, 'CgcV7aJDjc5DakOZKyjsNGP2DVJMcjKeVGFkbzV6', 'Gear Guide Book', 'gear-guide-book-634cfbb04835e.pdf', 'gear-guide-book-62a5ac893d084.jpg', 1, '2022-06-12 09:06:17', '2022-10-17 06:52:32'),
(128, 388, 'xXWDOWFWHeqeMNi8u69t14ZUqLXcinWqxWCBYJL4', 'Printable Gear Checklist', '7000-m-check-list-6347c5e91b719.pdf', 'gear-list-thumblins-3-62a5aca2f302b.jpg', 2, '2022-06-12 09:06:42', '2022-10-13 08:01:45'),
(129, 467, 'xfCsaJ3Zftiuv993afKUuVOdWGJe4lxCndZjyvoZ', 'Gear Guide Book', 'gear-guide-book-634cf9f22ea4d.pdf', 'gear-guide-book-62a83daf8fdaf.jpg', 1, '2022-06-14 07:50:07', '2022-10-17 06:45:06'),
(130, 467, 'DJxXaLGJVNNPdTllhheqT9bx9z7RU2aftpeK4fNO', 'Printable Gear Checklist', 'baruntse-check-list-6347c50ccb9c1.pdf', 'gear-list-thumblins-3-62a83dd3ee0de.jpg', 2, '2022-06-14 07:50:43', '2022-10-13 07:58:04'),
(131, 345, '4uOpt3pxaEoibMphNMiSfx61jWQGdNdn16C6VcAM', 'Price', 'price-62ca7f693458a.pdf', 'price-62a9953a84d79.jpg', 3, '2022-06-15 08:11:05', '2022-07-10 07:27:37'),
(132, 345, 'd0r52gC8pm37kzJxVJHaJP8L4JJhadrwoEkoIqfK', 'Trip Details PDF', 'vvip-everest-62b0218bcbaf6.pdf', 'trip-pdf-62b0218bcb477.jpg', 4, '2022-06-20 07:28:11', '2022-06-20 07:28:11'),
(133, 346, 'q7xX0mPpLhBLMYajhpxuSQMsaQBmdU46bb8lY3tV', 'Price', 'price-62ca7f581bd2d.pdf', 'price-62c15e0cee985.jpg', 3, '2022-07-03 09:14:52', '2022-07-10 07:27:20'),
(135, 346, 'WdAVaNFNT63y0RiFAR4uYpOpSCKxhfdrhnFXojIC', 'Trip PDF', 'everest-fb-23-63bbea51ec20d.pdf', 'trip-pdf-62c2a31db1c85.jpg', 4, '2022-07-04 08:21:49', '2023-01-09 10:20:14'),
(136, 393, '42zbWqjezLsTRgp0YpXCG4UOsfyZO8IGfdOrgEG6', 'Price', 'price-62ca7f0ca15b3.pdf', 'price-62c2a70ac3352.jpg', 3, '2022-07-04 08:38:34', '2022-07-10 07:26:04'),
(137, 393, 'HXiipNPtywVbf92gpolj9G329ZUcsAhZ5kNERgwF', 'Trip Details PDF', 'ama-fb-62c2a732171e1.pdf', 'trip-pdf-62c2a73216fc6.jpg', 4, '2022-07-04 08:39:14', '2022-07-04 08:39:14'),
(138, 362, 'NeBFwqMZVsKA0ztRSbM1h5ArLaLkQPoNH5NQnSOk', 'Price', 'price-62ca7f7eaae18.pdf', 'price-62c2b88862f78.jpg', 3, '2022-07-04 09:53:12', '2022-07-10 07:27:58'),
(139, 362, 'OiamwbOmbENpY3TW4tJzIThF8jgYkj70Ao4hQ3L6', 'Trip Details PDF', 'manaslu-fb-62c3c63a8e9f7.pdf', 'trip-pdf-62c2b8b78de02.jpg', 4, '2022-07-04 09:53:59', '2022-07-05 05:03:54'),
(140, 411, 'cXcUgU5g1W4tVfzzXUhAcfSunL7ISkm7Gl4IRKqt', 'Price', 'price-62ca7ef155774.pdf', 'price-62c3c2a5bd25e.jpg', 3, '2022-07-05 04:48:37', '2022-07-10 07:25:37'),
(141, 411, 'DLRV9uYqmKfhLEBsSF5b2qlb9yF9akN5OAfcbgf2', 'Trip Details PDF', 'amalo-fb-62c3c2c3f3034.pdf', 'trip-pdf-62c3c2c3f2e03.jpg', 4, '2022-07-05 04:49:07', '2022-07-05 04:49:07'),
(142, 468, 'YiEfjTtXgiI8tVKevQE9d4QmNSrSmJSAtBCuEzVL', 'Gear Guide Book', 'gear-guide-book-634cfa0573b4b.pdf', 'gear-guide-book-62c3c32aebc43.jpg', 1, '2022-07-05 04:50:50', '2022-10-17 06:45:25'),
(143, 468, 'mDOkH837D9xBeF4FIQBHywAWtuEH1FCDsFuyeXf9', 'Printable Gear Checklist', 'amadablam-check-list-6347c6e04353a.pdf', 'gear-list-thumblins-3-62c3c34e7f117.jpg', 2, '2022-07-05 04:51:26', '2022-10-13 08:05:52'),
(144, 468, 'GXHj27s2r8y7EsOv8AvnxJdj8fMAUe1VzZ1Vcv5W', 'Price', 'price-62ca7ec9a371e.pdf', 'price-62c3c3667355e.jpg', 3, '2022-07-05 04:51:50', '2022-07-10 07:24:57'),
(145, 468, 'WRMUNW5Db4q4pYI5Epqlv05yMXCQr2O6TPFjMdZg', 'Trip Details PDF', 'ama-island-fb-62c3c38c835bb.pdf', 'trip-pdf-62c3c38c83342.jpg', 4, '2022-07-05 04:52:28', '2022-07-05 04:52:28'),
(146, 390, 'vK6fAoUWD0SKvXGyDAxpu22RT0z6LP28EoTUSdSG', 'Price', 'price-62ca7f336dcb2.pdf', 'price-62c5429fe702a.jpg', 3, '2022-07-06 08:06:55', '2022-07-10 07:26:43'),
(147, 390, 'SQ3XnRepNQkG4a5wUVjsPAVyijbiloi5AP9qwqoW', 'Trip Details PDF', 'himlung-fb-62c542e809526.pdf', 'trip-pdf-62c542e8092ff.jpg', 4, '2022-07-06 08:08:08', '2022-07-06 08:08:08'),
(148, 389, 'q9ibaieBnKrWLmNlsLlQNMVdtZCAg9JH6LTPgXak', 'Price', 'price-62ca7f1f333be.pdf', 'price-62c5430dbf57a.jpg', 3, '2022-07-06 08:08:45', '2022-07-10 07:26:23'),
(149, 389, 'pQOtUuWuarHMZzV01oNsa6Hc9Se64S1FfVAxrmaF', 'Trip Details PDF', 'baurntse-fb-62c5432ea6e2e.pdf', 'trip-pdf-62c5432ea6c0f.jpg', 4, '2022-07-06 08:09:18', '2022-07-06 08:09:18'),
(150, 401, 'HrK4ZRifGTt8IV3HUU71hmQ59sQ1EjEHd0GaxAzv', 'Gear Guide Book', 'gear-guide-book-634cfc4c6a31f.pdf', 'gear-guide-book-62ca59c3f0f47.jpg', 1, '2022-07-10 04:46:59', '2022-10-17 06:55:08'),
(151, 401, 't2VeNw5MFe44I6gYgravMRqyUoo9sB4YcDSqYmZF', 'Printable Gear Checklist', '6000-m-check-list-6347c7c59e92e.pdf', 'gear-list-thumblins-3-62ca59e3839e6.jpg', 2, '2022-07-10 04:47:31', '2022-10-13 08:09:41'),
(152, 351, 'HnMJBgvzb2EQdFWPm2mk4RD45CYO1k6kzFUYZmP4', 'Price', 'price-62cd31c72a93f.pdf', 'price-62cd31c72a54b.jpg', 3, '2022-07-12 08:33:11', '2022-07-12 08:33:11'),
(153, 352, 'hmF11Rmo7VDJHeqFyk7sGPPwKl0im3fnLWAkxkBI', 'Price', 'price-62cd31e4c40cc.pdf', 'price-62cd31e4c3cc3.jpg', 3, '2022-07-12 08:33:40', '2022-07-12 08:33:40'),
(154, 353, 'i5bstzRCuh7WKDG1p4N0GIGZmhSLqNFEMSCyD9TK', 'Price', 'price-62cd31fa61232.pdf', 'price-62cd31fa60de3.jpg', 3, '2022-07-12 08:34:02', '2022-07-12 08:34:02'),
(155, 357, 'Yb9PSArapbmv6Gkn7pieQnnp9ewT2rajxJwfOSu5', 'Price', 'price-62cd32168018a.pdf', 'price-62cd32167fd44.jpg', 3, '2022-07-12 08:34:30', '2022-07-12 08:34:30'),
(156, 358, 'JtajS7NkJhY57bBuGdfCNh6x6ZVAEaipR5vk0vBo', 'Price', 'price-62cd323199b17.pdf', 'price-62cd3231994d1.jpg', 3, '2022-07-12 08:34:57', '2022-07-12 08:35:04'),
(157, 359, 'rTrF0hwQmJzel4c15xnQH3RtR8LgZ0Tgctaogu8t', 'Price', 'price-62cd325c7fa16.pdf', 'price-62cd325c7f5e0.jpg', 3, '2022-07-12 08:35:40', '2022-07-12 08:35:40'),
(158, 360, '2lALHXMffVNkRygf9hmAoEV5DkO9L8HSNS5U39bX', 'Price', 'price-62cd32776beb7.pdf', 'price-62cd32776baa0.jpg', 3, '2022-07-12 08:36:07', '2022-07-12 08:36:07'),
(159, 361, 'ANVAKmZp1OuHDCbgLl9boPSpZltZdbYOPS592ZH0', 'Price', 'price-62cd328edbb91.pdf', 'price-62cd328edb752.jpg', 3, '2022-07-12 08:36:30', '2022-07-12 08:36:30'),
(160, 364, '9Aaf0OOyz5vU0XU4FQ0LMPjuuXWheDzn7cG7iN2r', 'Price', 'price-62cd32acebf05.pdf', 'price-62cd32acebafe.jpg', 3, '2022-07-12 08:37:00', '2022-07-12 08:37:00'),
(161, 365, '3uRfXIqLwZTCjBKj4zwrHH1gDANKY5xaMmce2vXE', 'Price', 'price-62cd32c51c950.pdf', 'price-62cd32c51c57e.jpg', 3, '2022-07-12 08:37:25', '2022-07-12 08:37:25'),
(162, 366, 'UfDFWGUkrzV78qqwdGGNzd5ejZIfAuqXWgapZUCx', 'Price', 'price-62cd32de747b1.pdf', 'price-62cd32de7439e.jpg', 3, '2022-07-12 08:37:50', '2022-07-12 08:37:50'),
(163, 367, 'fMxHFPv1pLtl4BDBnWQRMG2cBX21RlxMx1nbd9Bd', 'Price', 'price-62cd32f680ef9.pdf', 'price-62cd32f680b17.jpg', 3, '2022-07-12 08:38:14', '2022-07-12 08:38:14'),
(164, 368, 'knz2VrHkIYd2QSkaGtSCvVuMXBqsxpPyi2unizsG', 'Price', 'price-62cd330cf3328.pdf', 'price-62cd330cf2f30.jpg', 3, '2022-07-12 08:38:36', '2022-07-12 08:38:36'),
(165, 369, 'nRqfGPjPrvaRWauvcNt12V7fGIHsJtGXDoOxgldP', 'Price', 'price-62cd33287c39c.pdf', 'price-62cd33287be60.jpg', 3, '2022-07-12 08:39:04', '2022-07-12 08:39:04'),
(166, 361, 'CA83nXH2AsaeURyY4p8IDnDcqQNPnqQ8M2Qfaw4v', 'Trip PDF', 'dhaulagiri-i-fb-23spr-63b7c027bb517.pdf', 'trip-pdf-62d63a825658f.jpg', 4, '2022-07-19 05:00:50', '2023-01-06 06:31:03'),
(167, 404, 'k0Mxko0FGBKt5erBCupYSfAgZsPJyT0JQ9Dp2k12', 'Price', 'price-630b217e2d1cc.pdf', 'price-630b217e2cdd4.jpg', 3, '2022-08-28 08:04:14', '2022-08-28 08:04:14'),
(168, 404, 'NiCp3wDgGLlf7OYaSthRJDsd5fyfwI91X67TKWZf', 'Trip Details PDF', 'ebclobuche-630b220ba18f6.pdf', 'trip-pdf-630b220ba16ce.jpg', 4, '2022-08-28 08:06:35', '2022-08-28 08:06:35'),
(169, 400, 'r9T8mDIF2ORrxLC6B0kwbqoy8SGp5Wfg0SoiX7Pt', 'Price', 'price-630c6a30627f2.pdf', 'price-630c6a306240e.jpg', 3, '2022-08-29 07:26:40', '2022-08-29 07:26:40'),
(170, 400, 'IDd6xHvxafzuTVkSR33J8aUhF9h7pnZpiTY0Q6CD', 'Trip Details PDF', 'ebc-island-peak-630c6a623cb13.pdf', 'trip-pdf-630c6a623c900.jpg', 4, '2022-08-29 07:27:30', '2022-08-29 07:27:30'),
(171, 470, 'dWIlDQUvh4CrM06ypbwQAn8KiT4o1H0xJm4T7Fpg', 'Gear Guide Book', 'gear-guide-book-634cfa83cfe69.pdf', 'gear-guide-book-630c7defa8530.jpg', 1, '2022-08-29 08:50:55', '2022-10-17 06:47:31'),
(172, 470, '4aU8s6KRZkhhFVhuQeWIhMJgbFOirTp6JQ5Uwqx9', 'Printable Gear Checklist', '6000-m-check-list-6347c718964c6.pdf', 'gear-list-thumblins-3-630c7e16072e7.jpg', 2, '2022-08-29 08:51:34', '2022-10-13 08:06:48'),
(173, 470, 'NsQDlCiWO97aXoBmeCWiEwjd1Zh3h2m6PTWTA1b9', 'Price', 'price-630c7e2a2ef3c.pdf', 'price-630c7e2a2ea19.jpg', 3, '2022-08-29 08:51:54', '2022-08-29 08:51:54'),
(174, 470, 'BcYShozaI3W8ezn4x8fp2koxZKYXkLPoH74xj0dP', 'Trip Details PDF', 'lobuche-630c7e564ac2e.pdf', 'trip-pdf-630c7e564aa38.jpg', 4, '2022-08-29 08:52:38', '2022-08-29 08:52:38'),
(175, 359, 'zL0COC1Tka2KFgE6kglD2K98D9eANguFDwJVoUip', 'Trip PDF', 'makalu-fb-23-63bce92cf0cf2.pdf', 'trip-pdf-637c47177e317.jpg', 4, '2022-11-22 03:50:47', '2023-01-10 04:27:24'),
(176, 472, 'c6wjDiDEINYDAC3NKw4qx3TxQ5SoxdpAi9gYBPa2', 'Gear Guide Book', 'gear-guide-book-6383006f5f9d0.pdf', 'gear-guide-book-6383006f5f7e9.jpg', 1, '2022-11-27 06:15:11', '2022-11-27 06:15:11'),
(177, 472, '8y4sf9v3n2kGO8jlYE7z71bH4eEaLu5d1Ncw4vTc', 'Printable Gear Checklist', '6000-m-check-list-6383008dae2b0.pdf', 'gear-list-thumblins-3-6383008dae098.jpg', 2, '2022-11-27 06:15:41', '2022-11-27 06:15:41'),
(178, 472, 'yvfWEl7VrBRg12L7Q5NzLzNh36Y0g6PgX0EYmZCZ', 'Price', 'price-638300a26cd76.pdf', 'price-638300a26c985.jpg', 3, '2022-11-27 06:16:02', '2022-11-27 06:16:02'),
(179, 472, 'QhwnIOlydzT0JmaNEgMPpEFTlRzN70Cvndfstz9u', 'Trip Details PDF', 'ebclobuche-island-v1-6383013db9c46.pdf', 'trip-pdf-6383013db9a11.jpg', 4, '2022-11-27 06:18:37', '2022-11-27 06:18:37'),
(180, 353, 'QSsrdKGiZl0K659j1h7hRgWgVg3hk9ePYaneo9kW', 'Trip PDF', 'k2-fb-23-638f080070878.pdf', 'trip-pdf-638f0800701ca.jpg', 4, '2022-12-06 09:14:40', '2022-12-06 09:14:40'),
(181, 368, 'WXC5xPbEtYirFzjyDHF9MJl2nCyIKLRHKCxJ2rUD', 'Trip PDF', 'gasherbrum-ii-fb-23-6396bd9d99a59.pdf', 'trip-pdf-63902e7595a07.jpg', 4, '2022-12-07 06:11:01', '2022-12-12 05:35:25'),
(182, 358, 'p8Soif3QAFxp6mahO9lRauPKuVJEdGoM08TAm9zz', 'Trip PDF', 'lhotse-fb-23-63bce315bd9b5.pdf', 'trip-pdf-6391650973157.jpg', 4, '2022-12-08 04:16:09', '2023-01-10 04:01:25'),
(184, 365, 'A8GrKfRU2tSlkco9S52Kgs7LyPzsjUKtznnQBrrR', 'Trip PDF', 'annapurna-i-fb-23-63b7a3d2df2bb.pdf', 'trip-pdf-63956fc5f389a.jpg', 4, '2022-12-11 05:51:02', '2023-01-06 04:30:10'),
(185, 370, 'xKAD2zqc4qU1qFfYE1uULK8QEKXYuMJ8uUYk3Kzx', 'Gear Guide Book', 'gear-guide-book-63958db486ccc.pdf', 'gear-guide-book-63958db486aef.jpg', 1, '2022-12-11 07:58:44', '2022-12-11 07:58:44'),
(186, 370, '3haR0nqpJ7IAg8sqjVimiLolZGJae62ohhHTLWSr', 'Printable Gear Checklist', 'gi-gii-check-list-63958dde8ebeb.pdf', 'gear-list-thumblins-3-63958dde8ea07.jpg', 2, '2022-12-11 07:59:26', '2022-12-11 07:59:26'),
(187, 370, 'OVqEW7oWrMGjwBuaPeY6vViEUiIjeErWYpbFS0X6', 'Price', 'price-63958dfdd5082.pdf', 'price-63958dfdd4c4a.jpg', 3, '2022-12-11 07:59:57', '2022-12-11 07:59:57'),
(188, 370, 'Saaji3Ibdpo1vt7zhXmR3HGUp4MyoSfmIXqkT0ps', 'Trip PDF', 'g1-g2-fb-23-63958edfb33f7.pdf', 'trip-pdf-63958edfb31a9.jpg', 4, '2022-12-11 08:03:43', '2022-12-11 08:03:43'),
(189, 366, 'P06Ku1M5OE7rTqhDHnlZD2FXJleDFSTLJAqS65pc', 'Trip PDF', 'gasherbrum-i-fb-23-6396a64370c5f.pdf', 'trip-pdf-6396a6437058e.jpg', 4, '2022-12-12 03:55:47', '2022-12-12 03:55:47'),
(190, 367, 'O5f62AX4M8EMrwV8MXusvh8quAIMUwTbmVmU1QmE', 'Trip PDF', 'broad-peak-fb-23-6396bb21b549a.pdf', 'trip-pdf-6396bb21b525d.jpg', 4, '2022-12-12 05:24:49', '2022-12-12 05:24:49'),
(191, 364, 'rRjErrMEAdBYR11Xv78U6ir2jSInluGDVh8rwf3z', 'Trip PDF', 'nanga-parbat-fb-23-63982955c41f6.pdf', 'trip-pdf-63982955c3da5.jpg', 4, '2022-12-13 07:27:17', '2022-12-13 07:27:17'),
(192, 357, 'BJWeoTgtiuL3cwvYRq0FCe3FRiBnUtgALMdeMDpq', 'Trip PDF', 'kangchenjunga-fb-23-63b79812a0895.pdf', 'trip-pdf-63b79812a03a4.jpg', 4, '2023-01-06 03:40:02', '2023-01-06 03:40:02'),
(193, 352, 'Q2uo53iKCOKuYM4BbrYx1Lqk02b1LUZ3JNvchW1D', 'Trip PDF', 'everlhotse-fb-23-63bb94048029b.pdf', 'trip-pdf-63bb940480040.jpg', 4, '2023-01-09 04:11:48', '2023-01-09 04:11:48'),
(194, 474, 'NgjDeUlPnh7rjpxvd9BfpS2G1bFkwEZLeukRmVDr', 'Gear Guide Book', 'gear-guide-book-63bbb157612e1.pdf', 'gear-guide-book-63bbb15760e3d.jpg', 1, '2023-01-09 06:16:55', '2023-01-09 06:16:55'),
(195, 474, 'k6xM7616kpjyFGBkasnlzhqhMdxelFmNForyg37x', 'Printable Gear Checklist', 'everest-check-list-63bbb185dc6a3.pdf', 'gear-list-thumblins-3-63bbb185dc49e.jpg', 2, '2023-01-09 06:17:41', '2023-01-09 06:17:41'),
(196, 474, '83ndcRIWjLqW3iBHE9lg42T3t84aQ3KPXGqIK3Wc', 'Price', 'price-63bbb1a2b5aa0.pdf', 'price-63bbb1a2b5662.jpg', 3, '2023-01-09 06:18:10', '2023-01-09 06:18:10'),
(197, 474, 'xv5qaWP27PLi0XP2SKrwUS42tJFUXzVfWqPblFpy', 'Trip PDF', 'everest-fb-23-with-lobuche-63bbb1cb2febd.pdf', 'trip-pdf-63bbb1cb2fca6.jpg', 4, '2023-01-09 06:18:51', '2023-01-09 06:18:51'),
(198, 356, 'zgFnvo1z1zK4gQCOptLZx1z4UB2owMCN4534z4kJ', 'Gear Guide Book', 'gear-guide-book-63bf7e68b1af7.pdf', 'gear-guide-book-63bf7e68b1918.jpg', 1, '2023-01-12 03:28:40', '2023-01-12 03:28:40'),
(199, 356, 'J2lzzrXAfDtXBjJMv7QA9Cj6sk5l7dMdArttTW1N', 'Printable Gear Checklist', '8000m-63bf7e8ea27ea.pdf', 'gear-list-thumblins-3-63bf7e8ea25ec.jpg', 2, '2023-01-12 03:29:18', '2023-01-12 03:29:18'),
(200, 356, 'o7BDiQXXuS3I04N8VtrUWFfanidlrwyHDL2u4vCs', 'Price', 'price-63bf7ec3ae985.pdf', 'price-63bf7ec3ae5b3.jpg', 3, '2023-01-12 03:30:11', '2023-01-12 03:30:11'),
(201, 356, '3mENyQmvJctVoYWX0GBQfHeu8JPjqddTaTgdRwIc', 'Trip PDF', 'k2-bp-fb-23-63bfbd0e507ca.pdf', 'trip-pdf-63bfbd0e5047d.jpg', 4, '2023-01-12 07:55:58', '2023-01-12 07:55:58'),
(202, 76, 'V3wADAQBa4JO6RXbgEnhUn1mGD0xQdWaX0wT5waw', 'Gear Guide Book', 'gear-guide-book-634cf7bb55827-63dcc2f7a32e1.pdf', 'gear-guide-book-62985b076451b-63dcc2f79e5e1.jpg', 1, '2023-02-03 08:16:55', '2023-02-03 08:16:55'),
(203, 76, 'VmbRNmlOxZSeBStKbxXb5LItKEjrswzhNpib1cfr', 'Printable Gear Checklist', 'gear-guide-book-634cf7bb55827-63dcc39a450a6.pdf', 'gear-list-thumblins-3-6299b7de0d647-63dcc39a44d53.jpg', 2, '2023-02-03 08:19:38', '2023-02-03 08:19:38'),
(204, 83, '5WhSc6ixRQwJKPHkP7ElCcgzt0YksyQxvMN3wWNG', 'Gear Guide  Book', 'gear-book-arnold-coaster-sample-6662ab1c10ee5.pdf', 'asset-2-at-4x-6662ab1c1076f.png', 5, '2023-02-15 07:51:32', '2024-06-07 16:24:24'),
(205, 83, 'x5RsBHF4Q7i6yKmxOwCC27ddpA3rWfinzTQP5Pai', 'Gear Check List', '8000ers-6662ad274b12f.pdf', 'asset-3-at-4x-6662ad274ac56.png', 6, '2023-02-15 07:52:52', '2024-06-07 16:33:07'),
(206, 41, 'TkDN1wOckQz5sLwMQxMklWCtHG4jd8KBK6hpwg81', 'Gear Guide Book', 'gear-book-arnold-coaster-sample-6662b19601ad8.pdf', 'asset-2-at-4x-6662b19601456.png', 7, '2024-06-07 16:52:02', '2024-06-07 16:52:02'),
(207, 41, '4QuIT3JHrVjOnEModK3KQCxZPhDheEcn53RWocxA', 'Gear Check List', '8000ers-6662b1d70d746.pdf', 'asset-3-at-4x-6662b1d70d302.png', 8, '2024-06-07 16:53:07', '2024-06-07 16:53:07'),
(208, 117, 'MzBb5bif6qzKNPUgEpwimv0diOrkRxkb8Spvmzuu', 'Gear Book', 'gear-book-arnold-coaster-sample-66655bc68e912.pdf', 'asset-2-at-4x-66655bc68e3c4.png', 9, '2024-06-09 17:22:42', '2024-06-09 17:24:52'),
(209, 117, 'Y8nqezLPk1Iy1XJLwFq2HtAvU1DXnGDsLwT8TndZ', 'Gear Check List', '8000ers-66655c2b282bf.pdf', 'asset-3-at-4x-66655c2b27e21.png', 10, '2024-06-09 17:24:23', '2024-06-09 17:24:23'),
(210, 105, 'Ofgb5KalwHbCSkX7uOE9IO0gFrPg4kZx7HRGowdj', 'Gear Book', 'gear-book-arnold-coaster-sample-66655e515119b.pdf', 'asset-2-at-4x-66655e129ee9d.png', 11, '2024-06-09 17:32:30', '2024-06-09 17:33:33'),
(211, 105, 'pQDkPzSsLNRTUamset1XCk4O93KneeqHfs6TvuGK', 'Gear Check List', '6000ers-66655e3808652.pdf', 'asset-3-at-4x-66655e3808249.png', 12, '2024-06-09 17:33:08', '2024-06-09 17:33:08'),
(212, 107, 'XZiJyDxWCeTOp0WQlZSkeylfKSS07WhIXsIOCcpc', 'Gear Book', 'gear-book-arnold-coaster-sample-6665728c4f665.pdf', 'asset-2-at-4x-6665728c4f0e7.png', 13, '2024-06-09 18:59:52', '2024-06-09 18:59:52'),
(213, 107, 'S2puG7M4mGsVUNV3sBbiDclqcJV9hOzQuP1qEVel', 'Gear Check List', '7000ers-6665731952168.pdf', 'asset-3-at-4x-6665731951c60.png', 14, '2024-06-09 19:01:05', '2024-06-09 19:02:13'),
(214, 4, 'PypY0u0RDYfZ5lODFx0IEsfVpawPBSJji5ZMpz7I', 'Gear Guide Book', 'trekking-gear-book-arnold-666bf0181fe3e.pdf', 'asset-4-at-4x-666bf0181f96f.png', 15, '2024-06-14 17:01:00', '2024-06-14 17:09:08'),
(215, 4, 'vN0RZ0sHKP0oVHGtALKJIkWx9n7uXzzrDteRUmfc', 'Printable Gear Check List', 'trekking-666bf06272877.pdf', 'asset-3-at-4x-666bf062723e5.png', 16, '2024-06-14 17:10:22', '2024-06-14 17:10:22'),
(216, 36, 'bB5qjJP82fmI8XEY7V2NYdBTcPITkIRw8cIYg4ui', 'Trekking Gear Guide Book', 'trekking-gear-book-arnold-666e99d59061e.pdf', 'asset-4-at-4x-666e99d590226.png', 17, '2024-06-16 17:37:53', '2024-06-16 17:37:53'),
(217, 36, 'XuUtyGBCYJ2LfJ170lXkCN8AEgfM6Y3DMuK1DHPq', 'Trekking Gear Check List', 'trekking-666e9a1fe7f98.pdf', 'asset-3-at-4x-666e9a1fe7b0c.png', 18, '2024-06-16 17:39:07', '2024-06-16 17:39:07');

-- --------------------------------------------------------

--
-- Table structure for table `cl_trip_film_making`
--

CREATE TABLE `cl_trip_film_making` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `trip_id` int NOT NULL,
  `num_ppl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `duration` int NOT NULL,
  `start_date` date DEFAULT NULL,
  `full_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contact` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_trip_gear`
--

CREATE TABLE `cl_trip_gear` (
  `id` int NOT NULL,
  `trip_detail_id` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `video` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `ordering` int DEFAULT '1',
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_trip_gear`
--

INSERT INTO `cl_trip_gear` (`id`, `trip_detail_id`, `title`, `content`, `thumbnail`, `video`, `ordering`, `status`, `created_at`, `updated_at`) VALUES
(66, 105, NULL, NULL, '1717658872-1jIolTrek Trail to Ama Dablam.jpg', NULL, NULL, 1, '2024-06-06 17:12:52', '2024-06-06 17:12:52'),
(67, 105, NULL, NULL, '1717659061-VX9Z0amadablam base camp.jpg', NULL, NULL, 1, '2024-06-06 17:16:01', '2024-06-06 17:16:01'),
(68, 105, NULL, NULL, '1717659061-i3dwYama dablam.jpg', NULL, NULL, 1, '2024-06-06 17:16:01', '2024-06-06 17:16:01'),
(70, 120, 'Nun seen from C1', NULL, '1733118107-IZffmNun seen from C1.jpg', NULL, 1, 1, '2024-12-02 16:26:47', '2024-12-02 16:26:47'),
(71, 120, 'Leaving C1', NULL, '1733118107-R9olhLeaving C1 toward C2.jpg', NULL, 2, 1, '2024-12-02 16:26:47', '2024-12-02 16:26:47'),
(72, 120, 'Approaching the summit', NULL, '1733118107-rGu6yapproaching the summit.jpg', NULL, 3, 1, '2024-12-02 16:26:47', '2024-12-02 16:26:47'),
(73, 121, NULL, NULL, '1734278596-8FS0AA-parede-Oeste-do-Aconcágua-desde-Plaza-de-Mulas-Foto-de-Maximo-Kausch-825x464.jpg', NULL, 1, 1, '2024-12-16 02:48:16', '2024-12-16 02:48:16'),
(74, 121, NULL, NULL, '1734278596-qVmaOA-parede-sul-do-cume-sul-do-Aconcagua-com-6919m-Foto-de-Gabriel-Tarso-825x550.jpg', NULL, 2, 1, '2024-12-16 02:48:16', '2024-12-16 02:48:16'),
(75, 121, NULL, NULL, '1734278596-D2DcgCaminho-a-Confluencia-Foto-de-Ashok-Kipatri-825x550.jpg', NULL, 3, 1, '2024-12-16 02:48:16', '2024-12-16 02:48:16'),
(76, 121, NULL, NULL, '1734278596-Umrw6Caminho-ao-cume-do-Aconcágua-último-dia-da-expedição-a-6700m-825x552.jpg', NULL, 4, 1, '2024-12-16 02:48:16', '2024-12-16 02:48:16'),
(77, 121, NULL, NULL, '1734278596-TtaBMCaminho-a-Plaza-Canada-4750m-Foto-de-Maximilian-Kaml-825x619.jpg', NULL, 5, 1, '2024-12-16 02:48:16', '2024-12-16 02:48:16'),
(78, 121, NULL, NULL, '1734278596-Z5rLXCaminho-a-Plaza-Canada-em-janeiro-de-2015-Foto-de-Bruno-Novarini-825x550.jpg', NULL, 6, 1, '2024-12-16 02:48:16', '2024-12-16 02:48:16'),
(79, 121, NULL, NULL, '1734278596-Hx9r3Canaleta-trecho-inclinado-entr-6700-e-6870m-Foto-de-Fernando-Schlosser-825x550.jpg', NULL, 7, 1, '2024-12-16 02:48:16', '2024-12-16 02:48:16'),
(80, 121, NULL, NULL, '1734278596-sLANyCerro-Cuerno-no-fundo-com-5300m-Foto-de-Maximilian-Kaml-825x619.jpg', NULL, 8, 1, '2024-12-16 02:48:16', '2024-12-16 02:48:16'),
(81, 121, NULL, NULL, '1734278596-RAfRoCume-do-Aconcágua-em-dezembro-de-2014-825x619.jpg', NULL, 9, 1, '2024-12-16 02:48:16', '2024-12-16 02:48:16'),
(82, 121, NULL, NULL, '1734278596-Ljcv2Cume-do-Aconcágua-Foto-de-Adrian-Lyons-825x619.jpg', NULL, 10, 1, '2024-12-16 02:48:16', '2024-12-16 02:48:16'),
(83, 121, NULL, NULL, '1734278596-LkMlPDegrau-a-5780m-Foto-de-James-Shipton-825x619.jpg', NULL, 11, 1, '2024-12-16 02:48:16', '2024-12-16 02:48:16'),
(84, 121, NULL, NULL, '1734278596-RwNPFGustavo-olhando-o-que-acabou-de-percorrer-18-km-deserticos-da-playa-ancha-que-ficam-na-base-do-Aconcagua-a-3700m-Foto-de-Gabriel-Tarso-825x550.jpg', NULL, 12, 1, '2024-12-16 02:48:16', '2024-12-16 02:48:16'),
(85, 121, NULL, NULL, '1734278596-2waxEDescanso-em-Plaza-de-Mulas-Foto-de-Maximilian-Kaml-825x619.jpg', NULL, 13, 1, '2024-12-16 02:48:16', '2024-12-16 02:48:16'),
(86, 121, NULL, NULL, '1734278596-JiFKUMaximo-carregando-35kg-para-Colera-a-6000m-Foto-de-Jan-Willems-825x619.jpg', NULL, 14, 1, '2024-12-16 02:48:16', '2024-12-16 02:48:16'),
(87, 123, NULL, NULL, '1735050589-ut3PmIMG_20191224_072352.jpg', NULL, NULL, 1, '2024-12-25 01:14:49', '2024-12-25 01:14:49'),
(88, 123, NULL, NULL, '1735050589-Dm3bMIMG_20200116_133529.jpg', NULL, NULL, 1, '2024-12-25 01:14:49', '2024-12-25 01:14:49'),
(89, 123, NULL, NULL, '1735050589-D3jJKIMG_20200117_061105.jpg', NULL, NULL, 1, '2024-12-25 01:14:49', '2024-12-25 01:14:49'),
(90, 123, NULL, NULL, '1735050589-UdrZPIMG_20200117_062727.jpg', NULL, NULL, 1, '2024-12-25 01:14:49', '2024-12-25 01:14:49'),
(91, 123, NULL, NULL, '1735050589-gcFvcIMG_20200117_064647.jpg', NULL, NULL, 1, '2024-12-25 01:14:49', '2024-12-25 01:14:49'),
(92, 123, NULL, NULL, '1735050589-HxOCIIMG_20200117_064658.jpg', NULL, NULL, 1, '2024-12-25 01:14:49', '2024-12-25 01:14:49'),
(93, 123, NULL, NULL, '1735050589-O3QFJIMG_20200117_064713.jpg', NULL, NULL, 1, '2024-12-25 01:14:49', '2024-12-25 01:14:49'),
(94, 123, NULL, NULL, '1735050589-lO26dIMG_20200116_140319.jpg', NULL, NULL, 1, '2024-12-25 01:14:49', '2024-12-25 01:14:49'),
(95, 119, 'Ilaga Airstrip', NULL, '1738640279-bkf8GAirport 1.jpg', NULL, 1, 1, '2025-02-04 14:22:59', '2025-02-04 14:22:59'),
(96, 119, 'Twin Otter', NULL, '1738640279-FIZC2airport 2.jpg', NULL, 2, 1, '2025-02-04 14:22:59', '2025-02-04 14:22:59'),
(97, 119, 'Dense Jungle trekking', NULL, '1738640279-XUB0Cimg-carstensz-pyramid-jungle-trekking-dr-weiglein-expeditions-papua-explorer-header.jpg', NULL, 3, 1, '2025-02-04 14:22:59', '2025-02-04 14:22:59'),
(98, 119, 'Jungle Trek', NULL, '1738640279-urV7sjungle trek 3.jpg', NULL, 4, 1, '2025-02-04 14:22:59', '2025-02-04 14:22:59'),
(99, 119, 'Jungle trek', NULL, '1738640279-hSALAjungle trek 3.jpg', NULL, 5, 1, '2025-02-04 14:22:59', '2025-02-04 14:22:59'),
(100, 119, 'Papua Highlands', NULL, '1738640279-Ldkn7img-carstensz-pyramid-savannah-trekking-dr-weiglein-expeditions-papua-explorer-header.jpg', NULL, 6, 1, '2025-02-04 14:22:59', '2025-02-04 14:22:59'),
(101, 119, 'Porter on their way to BC', NULL, '1738640279-AMDBMimg-carstensz-pyramid-porters-dr-weiglein-expeditions-papua-explorer-header.jpg', NULL, 7, 1, '2025-02-04 14:22:59', '2025-02-04 14:22:59'),
(102, 119, 'Meren lakes', NULL, '1738640279-TcIJKimg-carstensz-pyramid-meren-lakes-dr-weiglein-expeditions-papua-explorer-header.jpg', NULL, 8, 1, '2025-02-04 14:22:59', '2025-02-04 14:22:59'),
(103, 119, 'trekking Camp', NULL, '1738640279-Y0dnvCamp.jpg', NULL, 9, 1, '2025-02-04 14:22:59', '2025-02-04 14:22:59'),
(104, 119, 'trekking Kitchen', NULL, '1738640279-LMZpbkitchen.jpg', NULL, 10, 1, '2025-02-04 14:22:59', '2025-02-04 14:22:59'),
(105, 119, 'BC at the Lake', NULL, '1738640279-ZdIQ2Base camp 1.jpg', NULL, 11, 1, '2025-02-04 14:22:59', '2025-02-04 14:22:59'),
(106, 119, 'Glacier', NULL, '1738640279-I50Yhimg-carstensz-pyramid-glacier-ice-dr-weiglein-expeditions-papua-explorer-header.jpg', NULL, 12, 1, '2025-02-04 14:22:59', '2025-02-04 14:22:59'),
(107, 119, 'Tyrolian', NULL, '1738640279-5mAqBimg-carstensz-pyramid-summit-ropes-dr-weiglein-expeditions-papua-explorer-header.jpg', NULL, 13, 1, '2025-02-04 14:22:59', '2025-02-04 14:22:59'),
(108, 119, 'working on the fixed ropes', NULL, '1738640279-zgRGYclimb.jpg', NULL, 14, 1, '2025-02-04 14:22:59', '2025-02-04 14:22:59'),
(109, 119, 'summit', NULL, '1738640279-QzH5ESummit.jpg', NULL, 15, 1, '2025-02-04 14:22:59', '2025-02-04 14:22:59'),
(111, 117, NULL, NULL, '1771305617-QyuWtDSC08917.JPG (1).jpeg', NULL, 2, 1, '2026-02-17 16:05:17', '2026-02-17 16:05:17'),
(112, 117, 'Camps', NULL, '1771305619-KPrzxDSC08905.JPG (1).jpeg', NULL, 1, 1, '2026-02-17 16:05:19', '2026-02-17 16:05:19'),
(113, 126, NULL, NULL, '1771731172-Oa5JE_MG_2145.JPG', NULL, NULL, 1, '2026-02-22 14:10:18', '2026-02-22 14:17:52'),
(114, 126, NULL, NULL, '1771731172-l4UWA_MG_2238.JPG', NULL, NULL, 1, '2026-02-22 14:17:52', '2026-02-22 14:17:52'),
(115, 126, NULL, NULL, '1771731172-XZVtn_MG_2253.JPG', NULL, NULL, 1, '2026-02-22 14:17:52', '2026-02-22 14:17:52'),
(116, 126, NULL, NULL, '1771731172-OA0Ug_MG_2322.JPG', NULL, NULL, 1, '2026-02-22 14:17:52', '2026-02-22 14:17:52'),
(117, 126, NULL, NULL, '1771731172-WCSvv_MG_2350.JPG', NULL, NULL, 1, '2026-02-22 14:17:52', '2026-02-22 14:17:52'),
(118, 126, NULL, NULL, '1771731172-xSb9l19. Looking for buried fixed lines.JPG', NULL, NULL, 1, '2026-02-22 14:17:52', '2026-02-22 14:17:52'),
(119, 126, NULL, NULL, '1771731172-3Y07QC1.jpg', NULL, NULL, 1, '2026-02-22 14:17:52', '2026-02-22 14:17:52'),
(120, 126, NULL, NULL, '1771731172-B8tevChatGPT Image Feb 6, 2026, 01_21_09 PM.png', NULL, NULL, 1, '2026-02-22 14:17:52', '2026-02-22 14:17:52'),
(121, 126, NULL, NULL, '1771731172-dzfMkCho Oyu 1 182.jpg', NULL, NULL, 1, '2026-02-22 14:17:52', '2026-02-22 14:17:52'),
(122, 126, NULL, NULL, '1771731172-95ibfCho Oyu 1 192.jpg', NULL, NULL, 1, '2026-02-22 14:17:52', '2026-02-22 14:17:52'),
(123, 126, NULL, NULL, '1771731172-xeNiJCho Oyu- Karen 283.JPG', NULL, NULL, 1, '2026-02-22 14:17:52', '2026-02-22 14:17:52'),
(124, 126, NULL, NULL, '1771731172-qUytBCho Oyu summit.png', NULL, NULL, 1, '2026-02-22 14:17:52', '2026-02-22 14:17:52'),
(125, 126, NULL, NULL, '1771731172-6xB5ZClimber navigating the snowy ridge.png', NULL, NULL, 1, '2026-02-22 14:17:52', '2026-02-22 14:17:52'),
(126, 117, 'm3', NULL, '1774422986-6opOm1st.jpeg', NULL, 3, 1, '2026-03-25 17:01:26', '2026-03-25 17:08:04'),
(127, 117, 'm4', NULL, '1774423384-5IR9rm2.jpeg', NULL, 4, 1, '2026-03-25 17:08:04', '2026-03-25 17:08:04'),
(128, 117, NULL, NULL, '1774423384-R3zi3m4.jpeg', NULL, 5, 1, '2026-03-25 17:08:04', '2026-03-25 17:08:04'),
(129, 117, NULL, NULL, '1774425161-Wv3zv5.jpeg', NULL, 6, 1, '2026-03-25 17:37:41', '2026-03-25 17:37:41'),
(130, 117, NULL, NULL, '1774425277-maOcm7.jpeg', NULL, 7, 1, '2026-03-25 17:39:37', '2026-03-25 17:39:37'),
(131, 117, NULL, NULL, '1774425278-Ny2Wx7.jpeg', NULL, 7, 1, '2026-03-25 17:39:38', '2026-03-25 17:39:38'),
(132, 117, NULL, NULL, '1774425712-LVyaN_20171024173042.jpg.jpeg', NULL, 8, 1, '2026-03-25 17:46:52', '2026-03-25 17:46:52'),
(133, 117, NULL, NULL, NULL, NULL, NULL, 1, '2026-03-25 17:46:52', '2026-03-25 17:46:52'),
(134, 117, NULL, NULL, NULL, NULL, NULL, 1, '2026-03-25 17:46:52', '2026-03-25 17:46:52'),
(135, 117, NULL, NULL, '1774425713-B0Nuw_20171024173042.jpg.jpeg', NULL, 8, 1, '2026-03-25 17:46:53', '2026-03-25 17:46:53'),
(136, 117, NULL, NULL, NULL, NULL, NULL, 1, '2026-03-25 17:46:53', '2026-03-25 17:46:53'),
(137, 117, NULL, NULL, NULL, NULL, NULL, 1, '2026-03-25 17:46:53', '2026-03-25 17:46:53'),
(138, 117, NULL, NULL, NULL, NULL, NULL, 1, '2026-03-25 17:46:54', '2026-03-25 17:46:54'),
(139, 117, NULL, NULL, NULL, NULL, NULL, 1, '2026-03-25 17:46:54', '2026-03-25 17:46:54'),
(140, 117, NULL, NULL, NULL, NULL, NULL, 1, '2026-03-25 17:46:54', '2026-03-25 17:46:54'),
(142, 128, NULL, NULL, '1774941018-gsEIZ1.jpg', NULL, 1, 1, '2026-03-31 16:55:18', '2026-03-31 16:55:18'),
(143, 128, NULL, NULL, '1774941018-PLnVz2.jpg', NULL, 2, 1, '2026-03-31 16:55:18', '2026-03-31 16:55:18'),
(144, 128, NULL, NULL, '1774941018-B7OOz3.JPG', NULL, 3, 1, '2026-03-31 16:55:18', '2026-03-31 16:55:18'),
(145, 128, NULL, NULL, '1774941018-rljsn4.JPG', NULL, 4, 1, '2026-03-31 16:55:18', '2026-03-31 16:55:18'),
(146, 128, NULL, NULL, '1774941018-TOitG5.JPG', NULL, 5, 1, '2026-03-31 16:55:18', '2026-03-31 16:55:18'),
(147, 128, NULL, NULL, '1774941018-0StUh6.JPG', NULL, 6, 1, '2026-03-31 16:55:18', '2026-03-31 16:55:18'),
(148, 128, NULL, NULL, '1774941018-Qu7IV7.JPG', NULL, 7, 1, '2026-03-31 16:55:18', '2026-03-31 16:55:18'),
(149, 128, NULL, NULL, '1774941018-06KeM8.JPG', NULL, 8, 1, '2026-03-31 16:55:18', '2026-03-31 16:55:18'),
(150, 128, NULL, NULL, '1774941018-7vX239.JPG', NULL, 9, 1, '2026-03-31 16:55:18', '2026-03-31 16:55:18'),
(151, 128, NULL, NULL, '1774941018-CUHmH10.JPG', NULL, 10, 1, '2026-03-31 16:55:18', '2026-03-31 16:55:18'),
(152, 128, NULL, NULL, '1774941018-jHq2D11.JPG', NULL, 11, 1, '2026-03-31 16:55:18', '2026-03-31 16:55:18'),
(153, 128, NULL, NULL, '1774941018-5gNFg12.JPG', NULL, 12, 1, '2026-03-31 16:55:18', '2026-03-31 16:55:18'),
(154, 128, NULL, NULL, '1774941018-HhXJl13.JPG', NULL, 13, 1, '2026-03-31 16:55:18', '2026-03-31 16:55:18'),
(155, 128, NULL, NULL, '1774941018-3xrVo14.JPG', NULL, 14, 1, '2026-03-31 16:55:18', '2026-03-31 16:55:18'),
(156, 128, NULL, NULL, '1774941018-uCtLT15.JPG', NULL, 15, 1, '2026-03-31 16:55:18', '2026-03-31 16:55:18'),
(157, 128, NULL, NULL, '1774941018-j5k8p16.JPG', NULL, 16, 1, '2026-03-31 16:55:18', '2026-03-31 16:55:18'),
(158, 128, NULL, NULL, '1774941018-vKUn017.JPG', NULL, 17, 1, '2026-03-31 16:55:18', '2026-03-31 16:55:18'),
(159, 128, NULL, NULL, '1774941018-UvNSw18.JPG', NULL, 18, 1, '2026-03-31 16:55:18', '2026-03-31 16:55:18'),
(160, 128, NULL, NULL, '1774941018-rb5Oa19.JPG', NULL, 19, 1, '2026-03-31 16:55:18', '2026-03-31 16:55:18'),
(161, 128, NULL, NULL, '1774941020-wEdBN1.jpg', NULL, 1, 1, '2026-03-31 16:55:20', '2026-03-31 16:55:20'),
(162, 128, NULL, NULL, '1774941020-csNmC2.jpg', NULL, 2, 1, '2026-03-31 16:55:20', '2026-03-31 16:55:20'),
(163, 128, NULL, NULL, '1774941020-tUOaK3.JPG', NULL, 3, 1, '2026-03-31 16:55:20', '2026-03-31 16:55:20'),
(164, 41, NULL, NULL, '1774941548-3e5JD1.jpg', NULL, 1, 1, '2026-03-31 17:04:08', '2026-03-31 17:04:08'),
(165, 41, NULL, NULL, '1774941548-9xIMT2.jpg', NULL, 2, 1, '2026-03-31 17:04:08', '2026-03-31 17:04:08'),
(166, 41, NULL, NULL, '1774941548-mjqh33.jpg', NULL, 3, 1, '2026-03-31 17:04:08', '2026-03-31 17:04:08'),
(167, 41, NULL, NULL, '1774941548-Y4KTl4.jpg', NULL, 4, 1, '2026-03-31 17:04:08', '2026-03-31 17:04:08'),
(168, 41, NULL, NULL, '1774941548-zgrw25.jpg', NULL, 5, 1, '2026-03-31 17:04:08', '2026-03-31 17:04:08'),
(169, 41, NULL, NULL, '1774941548-LEdI36.jpg', NULL, 6, 1, '2026-03-31 17:04:08', '2026-03-31 17:04:08'),
(170, 41, NULL, NULL, '1774941548-GtmFn7.jpg', NULL, 7, 1, '2026-03-31 17:04:08', '2026-03-31 17:04:08'),
(171, 41, NULL, NULL, '1774941548-8Q0Wh8.jpg', NULL, 8, 1, '2026-03-31 17:04:08', '2026-03-31 17:04:08'),
(172, 41, NULL, NULL, '1774941548-EojUh9.jpg', NULL, 9, 1, '2026-03-31 17:04:08', '2026-03-31 17:04:08'),
(173, 41, NULL, NULL, '1774941548-sldxd10.jpg', NULL, 10, 1, '2026-03-31 17:04:08', '2026-03-31 17:04:08'),
(174, 41, NULL, NULL, '1774941548-ocyc611.jpg', NULL, 11, 1, '2026-03-31 17:04:08', '2026-03-31 17:04:08'),
(175, 127, NULL, NULL, '1774942274-53ZMD1.jpeg', NULL, 1, 1, '2026-03-31 17:16:14', '2026-03-31 17:16:14'),
(176, 127, NULL, NULL, '1774942274-Gxm0v2.jpeg', NULL, 2, 1, '2026-03-31 17:16:14', '2026-03-31 17:16:14'),
(177, 127, NULL, NULL, '1774942274-G2xgM3.jpeg', NULL, 3, 1, '2026-03-31 17:16:14', '2026-03-31 17:16:14'),
(178, 127, NULL, NULL, '1774942274-iAPck4.jpeg', NULL, 4, 1, '2026-03-31 17:16:14', '2026-03-31 17:16:14'),
(179, 127, NULL, NULL, '1774942274-IGKEP5.jpeg', NULL, 5, 1, '2026-03-31 17:16:14', '2026-03-31 17:16:14'),
(180, 127, NULL, NULL, '1774942274-EcnzR6.jpeg', NULL, 6, 1, '2026-03-31 17:16:14', '2026-03-31 17:16:14'),
(181, 127, NULL, NULL, '1774942274-77BNi7.jpeg', NULL, 7, 1, '2026-03-31 17:16:14', '2026-03-31 17:16:14'),
(182, 127, NULL, NULL, '1774942274-IMU9p8.jpeg', NULL, 8, 1, '2026-03-31 17:16:14', '2026-03-31 17:16:14'),
(183, 127, NULL, NULL, '1774942274-wMHnP9.jpeg', NULL, 9, 1, '2026-03-31 17:16:14', '2026-03-31 17:16:14'),
(184, 127, NULL, NULL, '1774942274-T8AE210.jpg', NULL, 10, 1, '2026-03-31 17:16:14', '2026-03-31 17:16:14'),
(185, 127, NULL, NULL, '1774942274-z5P0811.jpg', NULL, 11, 1, '2026-03-31 17:16:14', '2026-03-31 17:16:14'),
(186, 127, NULL, NULL, '1774942276-aYpZT1.jpeg', NULL, 1, 1, '2026-03-31 17:16:16', '2026-03-31 17:16:16');

-- --------------------------------------------------------

--
-- Table structure for table `cl_trip_grade`
--

CREATE TABLE `cl_trip_grade` (
  `id` int NOT NULL,
  `grade_message` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `trip_grade` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_trip_grade`
--

INSERT INTO `cl_trip_grade` (`id`, `grade_message`, `trip_grade`) VALUES
(1, 'Light walking and generally level hiking that is good for most fitness levels. During these trips, hill-walking experience is desirable.', 'Light'),
(2, 'Trek has various types of moderate to difficult terrain, including rough trails and normally 3 to 5 hours a day. Requires an average to above average fitness level.', 'Moderate'),
(3, 'High altitude treks above 3000 meters or in fairly difficult terrain- normally 4 to 6 hours a day. Requires an above average fitness level and high level of stamina.', 'Moderate+'),
(4, 'These high altitude treks or passes are known to be the most strenuous and has difficult terrain and conditions. These treks may require a degree of mountaineering skills and you capability of carrying on normally at an altitude of 4000-5600 meters. Daily walking is 5-8 hours approx.', 'Extreme');

-- --------------------------------------------------------

--
-- Table structure for table `cl_trip_groups`
--

CREATE TABLE `cl_trip_groups` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ordering` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_trip_groups`
--

INSERT INTO `cl_trip_groups` (`id`, `title`, `sub_title`, `uri`, `banner`, `content`, `meta_keyword`, `meta_description`, `ordering`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Is Popular', 'is popular', 'is-popular', NULL, '<p>For popular trips.</p>', NULL, NULL, '2', '1', '2022-12-09 08:38:26', '2022-12-29 03:02:42');

-- --------------------------------------------------------

--
-- Table structure for table `cl_trip_group_rel`
--

CREATE TABLE `cl_trip_group_rel` (
  `id` int UNSIGNED NOT NULL,
  `trip_id` int NOT NULL,
  `group_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_trip_group_rel`
--

INSERT INTO `cl_trip_group_rel` (`id`, `trip_id`, `group_id`, `created_at`, `updated_at`) VALUES
(359, 122, 4, NULL, NULL),
(361, 120, 4, NULL, NULL),
(394, 105, 4, NULL, NULL),
(409, 41, 4, NULL, NULL),
(426, 128, 4, NULL, NULL),
(428, 127, 4, NULL, NULL),
(439, 119, 4, NULL, NULL),
(440, 126, 4, NULL, NULL),
(441, 121, 4, NULL, NULL),
(450, 129, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cl_trip_itinerary`
--

CREATE TABLE `cl_trip_itinerary` (
  `id` bigint UNSIGNED NOT NULL,
  `trip_detail_id` int NOT NULL,
  `days` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meals` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ordering` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_trip_itinerary`
--

INSERT INTO `cl_trip_itinerary` (`id`, `trip_detail_id`, `days`, `meals`, `title`, `content`, `ordering`, `created_at`, `updated_at`) VALUES
(396, 41, '1', NULL, 'Arrive at Kathmandu (1300m) and Transfer to Hotel', 'Meet upon arrival in Kathmandu and transfer to the hotel in Kathmandu. Overnight at the hotel in Kathmandu.', 1, '2023-01-26 20:38:41', '2023-01-26 20:38:41'),
(947, 105, '01', NULL, 'Depart from home country.', NULL, 1, '2024-05-10 18:44:25', '2024-05-10 18:44:25'),
(948, 105, '02', NULL, 'Arrive in Kathmandu.', 'Transfer to hotel close to the famous, bustling Thamel district of \r\nKathmandu , a place with lovely gardens where one can relax', 2, '2024-05-10 18:44:25', '2024-05-10 18:44:25'),
(949, 105, '03', NULL, 'Sightseeing in Kathmandu.', '<p>Day enjoying the ‘bombardment of the senses’ that is Kathmandu. Sightseeing tours \r\ncan be arranged and would include visiting the temples of Bodnath, Swayambhunath (The \r\nMonkey Temple), Pashupatinath and Durbar Square. Simply wandering around the huge \r\narray of shops, markets, cafes, bars and restaurants in Thamel is a fascinating experience.</p>', 3, '2024-05-10 18:44:25', '2024-05-19 15:59:11'),
(950, 105, '04', NULL, 'Fly to Lukla (2800m) Trek to Phakding (2610m).', 'A spectacular short internal flight takes us to this tiny \r\nairstrip town and the gateway to the Sherpa Kingdom. \r\nAfter lunch we start our short trek along the typically \r\nstony path that descends from the forested terraces \r\nof Lukla right into the Dudh Kosi valley and the \r\nbrightly painted lodges of Phakding. There are good \r\nviews of Kusum Kanguru’s North Face (6367m)', 4, '2024-05-19 15:59:11', '2024-05-19 15:59:11'),
(951, 105, '05', NULL, 'Phakding to Namche Bazaar (3440m)', 'Into the Sherpa capital and the heart of the \r\nKhumbu. You will now be becoming familiar with local protocol for passing chortens, mani \r\nstones, yaks, spinning prayer wheels etc. and enjoying the hustle and bustle of trekking \r\nand everyday life that exists on the ‘Everest Trail’. At \r\nMonjo we enter Sagarmartha National Park and can \r\nvisit the small visitor centre there. (Four hours)', 5, '2024-05-19 15:59:11', '2024-05-19 15:59:11'),
(952, 105, '06', NULL, 'Rest Day in Namche Bazaar', 'It is important to \r\nhave a couple of nights and a rest day in Namche \r\nbefore proceeding any higher. You can spend the day \r\ntaking short walks up to Thami or Khumjung, visiting the Everest and Ama Dablam viewpoints or just relaxing and exploring the narrow streets \r\nof the busy Sherpa capital.', 6, '2024-05-19 15:59:11', '2024-05-19 15:59:11'),
(953, 105, '07', NULL, 'Namche Bazaar to Pangboche (3930m)', 'We climb steeply out of Namche, turn the corner and are immediately presented with superb views of Everest, Lhotse , Nuptse and our destination, Ama Dablam. Crossing the Dudh Koshi involves a steep descent to Phunki Thanghka and its fine water driven prayer wheels before re-ascending to Thyangboche. The famous Sherpa monastery can be visited here and the surrounding panorama is rightly deemed to be one of the most magnificent Mountain View points in the world. The going is easy now and Pangboche, the highest year round settlement valley, is soon reached. (Six hours)', 7, '2024-05-19 15:59:11', '2024-05-19 15:59:11'),
(954, 105, '08', NULL, 'Pangboche to Ama Dablam Base Camp (4450m)', 'We leave the busy Everest trail and cross the Imja Khola. Climbing steeply out of the valley and above the tree line we enter the alpine meadows that provide such a fine location for a base camp, no cold and scrappy glacier moraine sites here!', 8, '2024-05-19 16:50:55', '2024-05-19 16:50:55'),
(955, 105, '09', NULL, 'Rest Day at Base Camp', 'Another acclimatisation day spent exploring the alpine meadows and views around camp, packing gear for higher on the mountain and relaxing.', 9, '2024-05-19 16:50:55', '2024-05-19 16:50:55'),
(956, 105, '10-25', NULL, 'Ascent of Ama Dablam , South West Ridge', 'It would be impossible&nbsp;to produce an itinerary that suited all people’s abilities &amp; \r\npreferences. Climbing a mountain like Ama Dablam involves a lot of different stresses on \r\nthe body and folk will respond to this in different ways and at different rates. Through \r\nutilizing a good ratio of leaders and Sherpa’s to clients we can allow people to progress up \r\nthe mountain at a rate appropriate to their own needs. A description of the route is \r\nincluded and the program is flexible enough for people to listen to their own bodies\r\nand rest, climb high, sleep low, or ‘go for it’ accordingly.', 10, '2024-05-19 16:50:55', '2024-05-20 17:55:47'),
(957, 105, '26', NULL, 'Base Camp to Namche Bazar (3440m)', 'Today we walk back to \"civilization\" and Namche offers the pleasures of a small Alpine town.', 11, '2024-05-19 16:50:55', '2024-05-19 16:50:55'),
(958, 105, '27', NULL, 'Namche to Lukla', 'Today is a long day of walking back to Lukla. First mainly diwn, but then 2hr before Liukla a long slow slope up again. This is what we call \'Nepali flat\', a little bit up and a little but down.', 12, '2024-05-20 17:31:03', '2024-05-20 17:31:03'),
(959, 105, '28', NULL, 'Fly from Lukla to Kathmandu', 'Back to the comforts of our hotel in Thamel and the enjoyable hustle and bustle. This is a good time to buy souvenirs and try your hand at haggling with the  local shopkeepers. We will dine in one of Kathmandu\'s finest restaurants and experience some local dancing styles!', 13, '2024-05-20 17:31:03', '2024-05-20 17:31:03'),
(960, 105, '29', NULL, 'Sightseeing in Kathmandu', 'This is a day to rest and visit the Kathmandu valley and enjoy Kathmandu before departing Nepal,', 14, '2024-05-20 17:31:03', '2024-05-20 17:31:03'),
(961, 105, '30', NULL, 'Return flight from Kathmandu', 'The flight usually departs late afternoon so you will have a final morning free in Kathmandu.', 15, '2024-05-20 17:31:03', '2024-05-20 17:31:03'),
(1056, 117, '01', NULL, 'Arrival in Kathmandu', '<p>\r\n\r\n</p><p>Arrive in Kathmandu, where you will be met at the airport and transferred to your hotel near the lively Thamel area.</p>\r\n<p>Thamel is the vibrant heart of Kathmandu, known for its narrow streets, colorful shops, cafés, and mountaineering stores — the perfect place to feel the energy of an upcoming Himalayan adventure.</p>\r\n<p>After check-in, you can relax or explore the area at your leisure. Overnight at the hotel. (H, B)</p>\r\n\r\n<br><p></p>', 1, '2024-05-27 15:41:21', '2026-02-22 17:36:24'),
(1057, 117, '02', NULL, 'Expedition briefing in the Ministry of Tourism', '<p>\r\n\r\n</p><p>After breakfast, attend the official expedition briefing at Nepal’s Ministry of Culture, Tourism and Civil Aviation, where final formalities and climbing permits are confirmed. This is an important step before heading into the mountains, ensuring all logistics and documentation are in place for the expedition.</p>\r\n<p>The remainder of the day is free to enjoy the “bombardment of the senses” that is Kathmandu — a fascinating blend of ancient temples, incense-filled courtyards, bustling markets, and lively streets. Wander through colorful alleys, explore historic squares, or relax in one of the many cafés as you soak in the unique atmosphere of Nepal’s capital. Overnight at the hotel. (H, B)</p>\r\n\r\n<br><p></p>', 2, '2024-05-27 15:41:21', '2026-02-22 17:36:24'),
(1058, 117, '03', NULL, 'Drive to Besisahar (760m)', '<p>\r\n\r\n</p><p>Depart Kathmandu after breakfast for a scenic drive to Besisahar (760m), the traditional gateway to the Annapurna region.</p>\r\n<p>The journey follows winding mountain highways alongside rushing rivers, terraced hillsides, and small rural villages, offering a glimpse into everyday life beyond the capital. After several hours on the road, arrive in Besisahar and settle into your lodge for the night, preparing for the next stage of the journey into the Himalaya.</p>\r\n\r\n&nbsp;Overnight in Besisahar.&nbsp;<p></p>', 3, '2024-05-27 15:41:21', '2026-02-22 17:36:24'),
(1059, 117, '04', NULL, 'Jeep from Besisahar to Dharapani (1,860m)', '<p>\r\n\r\n</p><p>From Besisahar, continue the journey by jeep toward Dharapani (1,860m).</p><p>The road becomes more rugged and adventurous, following the Marsyangdi River through narrow valleys, waterfalls, and traditional mountain villages. As you gain altitude, the landscape gradually shifts, with thicker forests giving way to more dramatic alpine scenery.</p><p>Upon arrival in Dharapani — a key junction on the Annapurna Circuit — settle into your lodge and enjoy your first real sense of being in the high Himalaya.</p>\r\n\r\n<br><p></p>', 4, '2024-05-27 15:41:21', '2026-02-22 17:36:24'),
(1060, 117, '05', NULL, 'Trek from Dharapani to Tilije (2,300m)', '<p>\r\n\r\n</p><p>Begin your trek from Dharapani (1,860m), following the classic Annapurna trail as it gradually climbs through forests of pine and fir.</p>\r\n<p>The path winds through traditional villages adorned with prayer flags and mani walls, reflecting the growing Tibetan influence as you move higher into the valley. With steady elevation gain and beautiful views of surrounding peaks, the walk offers a pleasant introduction to trekking at altitude.</p>\r\n<p>Arrive in Tilije (2,300m), a charming stone-built village set above the river. Overnight in a local lodge.</p>\r\n\r\n<br><p></p>', 5, '2024-05-27 15:41:21', '2026-02-22 17:52:54'),
(1061, 117, '06', NULL, 'Trek from Tilije to Bhimthang (3,720m)', '<p>\r\n\r\n</p><p>rek from Tilije (2,300m) toward Bhimthang (3,720m), following the narrowing valley upstream.</p>\r\n<p>The trail climbs steadily through dense rhododendron and pine forests before opening into wide alpine pastures. As you gain altitude, the scenery becomes increasingly dramatic, with snow-capped peaks rising above the valley and the air turning noticeably cooler and thinner.</p>\r\n<p>After a rewarding ascent, arrive at Bhimthang, a beautiful high-altitude meadow surrounded by towering mountains — an ideal place to rest and acclimatize. Overnight in a lodge.</p>\r\n\r\n<br><p></p>', 6, '2024-05-27 15:41:21', '2026-02-22 17:52:54'),
(1062, 117, '07', NULL, 'Acclimatization at Bhimthang (rest day)', '<p>\r\n\r\n</p><p>Today is dedicated to rest and proper acclimatization as you prepare for higher elevations. While it is a rest day, light activity is encouraged — short hikes to nearby ridges or viewpoints help the body adjust more effectively to the altitude. From these vantage points, enjoy impressive views of surrounding Himalayan peaks and the expansive glacial valley.</p>\r\n<p>The remainder of the day can be spent relaxing, hydrating, and conserving energy for the days ahead. Overnight in the lodge.</p>\r\n\r\n<br><p></p>', 7, '2024-05-27 15:41:21', '2026-02-22 17:52:54'),
(1063, 117, '08', NULL, 'Trek from Bhimthan to Samdo (3,872m) via Larke Pass(5,160m)', '<p>\r\n\r\n</p><p>An early start for one of the most demanding and rewarding days of the journey. Depart from Bhimthang (3,720m) and begin the steady ascent toward Larkya La Pass (5,160m).</p>\r\n<p>The climb to the pass is gradual but sustained, crossing moraines and high alpine terrain as the landscape becomes increasingly stark and dramatic. Reaching the summit of Larkya La is a true highlight — prayer flags flutter in the wind, and vast Himalayan panoramas stretch in every direction.</p>\r\n<p>From the pass, descend carefully along rocky trails and glacial valleys before continuing toward Samdo (3,872m). After a long and challenging day, arrive in this remote mountain village and settle into your lodge for a well-earned rest.</p>\r\n\r\n<br><p></p>', 8, '2024-05-27 15:41:21', '2026-02-22 17:52:54'),
(1064, 117, '09', NULL, 'Trek from Samdo to Sama Gaun (3,541m)', '<p>\r\n\r\n</p><p>Today’s walk is shorter and more gradual, allowing the body to recover while still moving through spectacular high-altitude terrain. The trail follows wide alpine paths with expansive valley views and a strong Tibetan cultural influence visible in chortens, mani walls, and traditional stone houses.</p>\r\n<p>As you descend slightly toward Sama Gaun, the dramatic presence of Manaslu dominates the skyline, signaling your deeper approach into the heart of the Himalaya. Overnight in a local lodge.</p>\r\n\r\n<br><p></p>', 9, '2024-05-27 15:41:21', '2026-02-22 17:52:54'),
(1065, 117, '10', NULL, 'Trek from Sama Gaun to Manaslu Basecamp (4700m)', '<p>\r\n\r\n</p><p>Depart from Sama Gaun and begin the steady ascent toward Manaslu Base Camp (4,700m).</p>\r\n<p>The trail climbs gradually above the village, passing Birendra Lake and following glacial moraines as the landscape becomes increasingly rugged and barren. With every step, views of Manaslu grow more impressive, its massive snow-covered slopes rising dramatically above the valley.</p>\r\n<p>As you gain altitude, the pace slows to allow proper acclimatization. Upon arrival at base camp, settle into your expedition camp, surrounded by towering Himalayan peaks — the true beginning of your high-altitude climbing adventure.</p>\r\n\r\n<br><p></p>', 10, '2024-05-27 15:41:21', '2026-02-22 17:52:54'),
(1066, 117, '11', NULL, 'Samagaon Village To Manaslu base camp (4800m)', '<p>\r\n\r\n</p><p>The trail climbs gradually above the village, passing the turquoise waters of Birendra Lake before traversing glacial moraines and increasingly rugged alpine terrain. As you gain height, the air becomes thinner and the views more dramatic, with Manaslu towering directly ahead.</p>\r\n<p>This demanding but rewarding day brings you into the heart of the high Himalaya. Upon arrival at base camp, settle into your expedition tents and prepare for the climbing phase ahead.</p>\r\n\r\n<br><p></p>', 11, '2024-05-27 15:41:21', '2026-02-22 18:17:30'),
(1067, 117, '12 - 30', NULL, 'Climbing Period for Manaslu (8163m)', '<p>\r\n\r\n</p><p>These days are dedicated to the ascent of Manaslu, the world’s eighth-highest mountain. The climbing period is carefully planned to allow for proper acclimatization, rotation between camps, load carries, rest days, and ultimately a safe summit attempt.</p>\r\n<p>From Base Camp, climbers establish higher camps along the normal route, gradually moving up and down the mountain to adapt to the altitude. The route typically involves glacier travel, fixed rope sections, steep snow slopes, and exposed ridgelines. Patience is essential, as weather conditions and team strength determine the summit window.</p>\r\n<p>Life during this period revolves around monitoring forecasts, maintaining health, hydrating, and conserving energy. When a favorable weather window arrives, the team launches the summit push, ascending through the higher camps toward the 8,163m summit — a demanding but immensely rewarding objective in the high Himalaya.</p>\r\n<p>After the summit attempt, descend carefully to Base Camp for rest and recovery.</p>\r\n\r\n<br><p></p>', 12, '2024-05-27 15:41:21', '2026-02-22 18:17:30'),
(1068, 117, '31', NULL, 'Packing up Base Camp', '<p>\r\n\r\n</p><div><div><div><div><div><div><div><p>After weeks on the mountain, it is time to dismantle Manaslu Base Camp. The morning is spent organizing equipment, sorting personal and group gear, and ensuring all waste is properly packed out in accordance with expedition and environmental regulations.</p>\r\n<p>Tents are taken down, supplies are consolidated, and loads are prepared for porters and yaks. It is also a moment to reflect on the climb — the challenges faced, the summit attempt, and the shared experience on Manaslu (8,163m).</p>\r\n<p>By the end of the day, Base Camp is cleared, leaving the site as it was found, and preparations are made for the trek back down valley.</p></div></div></div></div><div></div><div><div></div></div></div></div></div><div></div>\r\n\r\n<br><p></p>', 13, '2024-05-27 15:41:21', '2026-02-22 18:17:30'),
(1069, 117, '32', NULL, 'Base camp - Samagaon village', '<p>\r\n\r\n</p><p>Depart from Manaslu Base Camp (4,800m) and begin the descent back to Sama Gaun (3,541m).</p>\r\n<p>After weeks spent in the high-altitude environment of base camp, the return trek feels noticeably easier as you lose elevation and the air grows thicker. The trail retraces the route past glacial moraines and alpine terrain, with expansive views of Manaslu gradually receding behind you.</p>\r\n<p>Upon arrival in Sama Gaun, enjoy the comfort of a lodge, a warm meal, and the first real sense of returning to village life after your time on the mountain.</p>\r\n\r\n<br><p></p>', 14, '2024-05-27 15:41:21', '2026-02-22 18:17:30'),
(1070, 117, '33', NULL, 'Fly to Kathmandu from Helicopter', '<p>\r\n\r\n</p><p>Depart from Sama Gaun and board a helicopter for a spectacular flight back to Kathmandu.</p>\r\n<p>The aerial journey offers a final, unforgettable perspective of the Himalayan landscape — soaring above deep valleys, remote villages, glacial rivers, and towering snow-covered peaks. It’s a dramatic and rewarding conclusion to your Manaslu adventure.</p>\r\n<p>Upon arrival in Kathmandu, transfer to your hotel and enjoy the comfort of the city once again after weeks in the mountains.</p>\r\n\r\n<br><p></p>', 15, '2024-05-27 15:41:21', '2026-02-22 18:17:30'),
(1071, 117, '34', NULL, 'At leisure in Kathmandu. (H,B)', '<p>\r\n\r\n</p><p>Enjoy a leisure day in Kathmandu, giving you time to relax and recover after your expedition.</p>\r\n<p>You may choose to explore cultural highlights such as ancient temples and bustling markets, stroll through the lively streets of Thamel, shop for souvenirs, or simply unwind at a café and reflect on your time in the Himalaya. This is also an ideal opportunity for a celebratory meal or to explore more of the valley at your own pace.</p>\r\n<p>Overnight at the hotel. (H, B)</p>\r\n\r\n<br><p></p>', 16, '2024-05-27 15:41:21', '2026-02-22 18:17:30'),
(1072, 117, '35', NULL, 'Departure (H,B)', '<p>\r\n\r\n</p><p>Transfer to the airport in Kathmandu for your onward flight.</p>\r\n<p>Depending on your departure time, you may have a final opportunity to enjoy a relaxed breakfast at the hotel or take in a last glimpse of the city before heading to the airport.</p>\r\n\r\n<br><p></p>', 17, '2024-05-27 15:41:21', '2026-02-22 18:17:30'),
(1106, 120, '1', NULL, 'Arrive Delhi', 'Arrive in Delhi. We’ll be transferred from the airport to our comfortable hotel accommodation in the city.\r\n\r\nOnce we’re settled in, we’ll go with our Arnold Coster exp.  guide to the Indian Mountaineering Federation for a briefing and to obtain our climbing permits, before returning to our hotel for the night.\r\n\r\n(D)', 1, '2024-12-02 14:11:47', '2024-12-02 14:11:47'),
(1107, 120, '2', NULL, 'Arrive Leh 3,350m', 'The spectacular early morning connection flight over the Himalaya takes us to one of the highest airports in the world at 3,350m.\r\n\r\nAfter lunch we will have a comprehensive pre-expedition briefing and will have a thorough kit check. Leh will be our last chance before the expedition commences to obtain any kit we might still need.\r\n\r\nThen we are free to relax and begin acclimatising to the altitude at 3,500m. Leh is a colourful mountain town full of bazaars and is our home for the next couple of days.\r\n\r\n(B/L/D)', 2, '2024-12-02 14:11:47', '2024-12-02 14:11:47'),
(1108, 120, '3', NULL, 'Leh', 'We stay in Leh in order to begin acclimatising. You are welcome to join us on a very leisurely sightseeing tour to three of the major gompas (monasteries) in the area. We first drive to Shey, a former Royal Palace of the Ladakh kings, inside is a small temple containing a 350 year old copper and gold statue of Buddha. Next stop is Tikse, perched prominently on top of a hill, its red and white buildings are visible for miles. It’s a recently built temple containing a magnificent image of the future Buddha. The final stop is Stakna, a small, friendly monastery high above the Indus River.\r\n\r\n(B/L/D)', 3, '2024-12-02 14:11:47', '2024-12-02 14:11:47'),
(1109, 120, '4', NULL, 'Leh', 'In the morning, you’re welcome to join us to climb the 540 steps to Shanti Stupa, a peace pagoda built by a Japanese monk in the 80s. Standing on the top of a mountain it provides beautiful views of the town and surrounding mountains. From here, we can continue to Sankar Monastery, one of the few monasteries built on a flat ground. The monastery is relatively new and home to about 30 monks.\r\n\r\nIn the late afternoon, it’s nice to walk to Tsemo temple to enjoy the panoramic view of the town in the afternoon light.\r\n\r\n(B/L/D)', 4, '2024-12-02 14:11:47', '2024-12-02 14:11:47'),
(1110, 120, '5', NULL, 'Leh to Lamayuru Monastery and Kargil 2,676m', 'Much of our time today will be spent driving to Kargil.\r\n\r\nWe’ll stop en-route in Lamayuru where there is spectacular landscape that has been compared to our moon’s surface. We’ll also spend some time visiting Lamayuru Monastery. Belonging to the Drikung Kagyu sect, it is one of the largest and oldest monasteries in Ladakh, dating back to the 10th century. The monastery houses a rich collection of artefacts and wall paintings.\r\n\r\n(B/L/D)', 5, '2024-12-02 14:11:47', '2024-12-02 14:11:47'),
(1111, 120, '6', NULL, 'Kargil to Tangol 3,700m', 'From Kargil, we will drive alongside the Suru River to reach Tangol passing some beautiful villages spread across the vast serene Suru Valley.\r\n\r\nWe will see Kun and Nun for the first time today and will meet our porter team, sorting and distributing equipment in the evening. Tonight will be out first camp.\r\n\r\n(B/L/D)', 6, '2024-12-02 14:11:47', '2024-12-02 14:11:47'),
(1112, 120, '7', NULL, 'Tangol to Base Camp (4,600m)', 'After a good early morning breakfast, we will begin the hike to Nun Base Camp. Our porter team will arrive very early morning, so expect some early morning noise.\r\n\r\nIt is a beautiful climb up on grassy meadows with the climb getting steeper and steeper. Once we are up it’s a gradual walk amongst wildflowers and then on loose rocks on glacial moraine. We will have to cross the snout of the glacier and climb a steep tricky part before getting to Base Camp which is located next to a stream and amongst rock boulders. This will be our home for the next few days.\r\n\r\n(B/L/D)', 7, '2024-12-02 14:11:47', '2024-12-02 14:11:47'),
(1113, 120, '8', NULL, 'Rest day at Base Camp (4,600m)', 'We’ll spend the day around Base Camp, exploring the area, chilling out and heading on short acclimatisation walks.\r\n\r\nWe’ll also spend some time preparing our personal &amp; group equipment and our food for the climb.\r\n\r\n(B/L/D)', 8, '2024-12-02 14:11:47', '2024-12-02 14:12:38'),
(1114, 120, '9', NULL, 'Base Camp to crampon point (5,100m) - sleep at Base Camp', 'Today we climb 500 meters to crampon point and the bottom of the Nun glacier and perhaps carry a few bits of our high-altitude equipment (to lighten our loads for the future). Above us rises the immense glacial wall of the Nun glacier which during our ascent of Nun Peak we’ll have to ascend and descend several times. Our climb to crampon point is straightforward but spectacular. Our Base Camp seems minute from the various viewpoints we stop at along the way, and we get a real sense of perspective about what is in store for us for the following week. Eager anticipation for what is ahead of us starts to redline!', 9, '2024-12-02 14:11:47', '2024-12-02 14:11:47'),
(1115, 120, '10', NULL, 'Acclimatisation and practice climb to Camp 1 (5,400m)', 'Today we climb back up to crampon point and ascend the mighty glacial head wall leading to Camp 1. Your guide and Sherpa team are there to instruct you on the use of ice tools and jumar equipment. We might be rolling up our sleeves and carrying a load to Camp 1 but at the same time you’ll be refining your skills.\r\n\r\nWe’ll cache some kit and return to Base Camp for the night.\r\n\r\n(B/L/D)', 10, '2024-12-02 14:11:47', '2024-12-02 14:11:47'),
(1116, 120, '11', NULL, 'Climb to Camp 1 (5,400m)', 'Today we will use all our finely polished skills to ascend to Camp 1. We are now on the way to the summit. Our Base Camp staff will help us carry the final equipment needed for our summit push and our exceptional chef and kitchen crew will be joining us at camp 1 to ensure we continue to have high quality meals.\r\n\r\n(B/L/D)', 11, '2024-12-02 14:11:47', '2024-12-02 14:11:47'),
(1117, 120, '12', NULL, 'Rest day at Camp 1 (5,400m)', 'Chilling out, eating, acclimatising and sleeping at Camp 1.\r\n\r\n(B/L/D)', 12, '2024-12-02 14:11:47', '2024-12-02 14:11:47'),
(1118, 120, '13', NULL, 'Carry and cache climbing equipment at Camp 2 (5,400m)', 'e’ll have scoped out the route to Camp 2. It’s just across the glacier from us but today we’ll start carrying our own high altitude climbing equipment and perhaps a few items of team equipment to the mighty rock wall above where Camp 2 is situated. The most awesome thing about today (and there really is no other way to describe this) is that today we’ll get up close and personal with Nun Peak. From Camp 1 it looks like a distant and beautiful pyramid, from Camp 2 the mountain soars from the glacier like a monumental icy giant. Things just got real!\r\n\r\n(B/L/D)', 13, '2024-12-02 14:11:47', '2024-12-02 14:11:47'),
(1119, 120, '14', NULL, 'Rest day at Camp 2', 'Chilling out, eating, sleeping at the spectacularly located Camp 2.\r\n\r\n(B/L/D)', 14, '2024-12-02 14:11:47', '2024-12-02 14:11:47'),
(1120, 120, '15', NULL, 'Move to Camp 3 (6,300m)', 'Today is one of the toughest days on this itinerary. We leave Camp 2 early and make our way up to the mighty 800-meter high (50 degree) head wall separating these two camps. The sun rise is invariably going to provide us with an awesome distraction, make sure you have your camera handy. Today you’ll have to roll up your sleeves once again and jumar a lot of fixed line. But despite the hard work the views are continuously going to enthral. Opening up all around us are the distant peaks of the mystical Srinagar and Ladakh, as a climbing day today sure is hard to beat.\r\n\r\n(B/L/D)', 15, '2024-12-02 14:11:47', '2024-12-02 14:11:47'),
(1121, 120, '16', NULL, 'Rest day at Camp 3', 'Chilling out and preparing mind and bodies for the summit push.\r\n\r\n(B/L/D)', 16, '2024-12-02 14:11:47', '2024-12-02 14:11:47'),
(1122, 120, '17', NULL, 'First summit day (7,135m) - return to Camp 2 (5,400m)', 'The summit is 700 meters above us, not to far when compared to Kilimanjaro or our popular 6,000-meter peak summit days, but nothing is taken for granted when climbing above 7,000 meters. Plus, the distance we need to cover to reach the summit of Nun peak is quite long. We depart around midnight carrying only the essential survival equipment to reach the summit and come back safely.\r\n\r\nOn our ascent we initially climb the short but steep head wall above Camp 3 to gain the broad west ridge. From here we climb several 40-degree icy steps to reach the first of two rock bands below the summit. An easy snow ramp leads its way through both the rock bands and we follow this to the final summit ridge. We now at 7,000 meters. We follow the ridge to its highest point. The summit!  The views are nothing short of mind blowing. To the west the distinct summits of the Karakoram are clearly visible to the east several 7,000 meter + peaks breach the horizon. We hope to reach the summit as the sun rises which adds exponentially to the spectacle surrounding you. When it comes to memorable experiences, today is surely one that will be hard to beat! We descend after we’ve had our fill of summit success and our camera’s have cooled down from taking thousands of images. Our aim is to descend to Camp 2 where we’ll have left several tents to provide us with a temporary shelter and where we’ll have cached enough food to provide us with what is sure to be an incredibly tasting meal.\r\n\r\n(B/L/D)', 17, '2024-12-02 14:11:47', '2024-12-02 14:11:47'),
(1123, 120, '18', NULL, 'Second summit day - return to Camp 2', 'A contingency day\r\n\r\n(B/L/D)', 18, '2024-12-02 14:11:47', '2024-12-02 14:11:47'),
(1124, 120, '19', NULL, 'Descend from Camp 2 to Base Camp', '(B/L/D)', 19, '2024-12-02 14:11:47', '2024-12-02 14:11:47'),
(1125, 120, '20', NULL, 'Base Camp to Tangol and drive to Leh 3,350m', 'We’ll follow in our footsteps from a few weeks ago, descending a steep tricky section, through the snout of the glacier, across glacial moraine and wild flower and grassy meadows before descending steeply down and down to Tangol. It’s here we’ll say goodbye to our porter team.\r\n\r\nWe’ll then start the big journey back to Leh, it’ll take around 10 hours. It may take some acclimatising returning to civilisation again!\r\n\r\n(B/L/D)', 20, '2024-12-02 14:11:47', '2024-12-02 14:11:47'),
(1126, 120, '21', NULL, 'Leh', 'We’ll spend the day resting in Leh, reflecting on our journey and celebrating our achievements of the last few weeks.\r\n\r\n(B/L/D)', 21, '2024-12-02 14:11:47', '2024-12-02 14:11:47'),
(1127, 120, '22', NULL, 'Leh to Delhi and departure home', 'We have an early start from Leh to catch our flight back to Delhi. All flights from Leh arrive either mid-morning or early afternoon into Delhi as, flying later in the day, there is always the risk of storms over the mountain.\r\n\r\nfor most people its possible to catch a connecting flight back home late in the evening', 22, '2024-12-02 14:11:47', '2024-12-02 14:11:47'),
(1128, 121, '1', NULL, 'Arrival to Mendoza – 900m', 'One member of our staff will welcome you at the airport and bring you to the hotel. In the evening all expedition members will meet for dinner. Depending upon your arrival time, we will assist you to buy or rent all equipment you need. Included: Transport and hotel.', 1, '2024-12-16 02:39:11', '2024-12-16 02:39:11'),
(1129, 121, '2', NULL, 'Permissions and drive to Penitentes – 2300m', 'We will have morning meeting about logistics and all expedition aspects as well as answering any questions you might have. We will also check all your personal equipment, assist you for rentals and purchases and sort out all climbing permits so you can legally climb Aconcagua. Included: Transport, hotel, and dinner.', 2, '2024-12-16 02:39:11', '2024-12-16 02:39:11'),
(1130, 121, '3', NULL, 'Penitentes – Confluencia – 3300m', 'Our luggage is carried by mules at 5am to Confluencia so we will have everything packed in the previous night. After taking breakfast at our hotel in Penitentes we’ll take a private transport to Horcones where we entry Aconcagua Provincial Park. We’ll stop for lunch at Puente del Inca and at 2pm we’ll start the 3-4 hour trek to Confluencia. Our staff will wait for us with a reception meal at our dining tent. In the evening we will have dinner and sleep in tents. Included: Private transport, breakfast, lunch at Puente del Inca, reception meal in Confluencia and dinner.', 3, '2024-12-16 02:39:11', '2024-12-16 02:39:11'),
(1131, 121, '4', NULL, 'Confluencia – Plaza Francia – Confluencia – 4150m', 'This is one of our acclimatisation days. We’ll walk carrying a basic rucksack with water, jacket, gloves, trekking poles, sunscreen, etc. and walk very slowly to the base of the south face of Aconcagua. The views are absolutely stunning! We might even see some avalanches falling from the southern steep slopes of Aconcagua. Included: Double tents with mattress, Breakfast, lunch and dinner.', 4, '2024-12-16 02:39:11', '2024-12-16 02:39:11'),
(1132, 121, '5', NULL, 'Confluencia – Plaza de Mulas – 4300m', 'Today is the longest day. The 18km walk to BC might take us from 5 to 8 hours. We’ll carry a very light rucksack and have lunch at the base of a huge rock named Ibañez. The landscape here is very dry so you might want to bring a good hat. At the end of the huge open valley named Horcones, we will arrive in Plaza de Mulas, our basecamp. Included: Double tents with mattress, breakfast, lunch and dinner.', 5, '2024-12-16 02:39:11', '2024-12-16 02:39:11'),
(1133, 121, '6', NULL, 'Rest – 4300m', 'Rest day at Plaza de Mulas. Depending on the state of the entire team, we can take a short walk to a nearby glacier. Included: Double tents with mattress, Breakfast, lunch and dinner.', 6, '2024-12-16 02:39:11', '2024-12-16 02:39:11'),
(1134, 121, '7', NULL, 'Acclimatization Walk to Plaza Canada – 4900m', 'About 4 hour walk to 4900 metres (600 metre altitude gain) taking part of our personal climbing equipment. We’ll return to sleep at BC in the same day. Included: Double tents with mattress, Breakfast, lunch, and dinner.', 7, '2024-12-16 02:39:11', '2024-12-16 02:39:11'),
(1135, 121, '8', NULL, 'Rest – 4300m', 'Rest day at Plaza de Mulas. We recommend you to do absolutely nothing today. Included: Double tents with mattress, Breakfast, lunch, and dinner.', 8, '2024-12-16 02:39:11', '2024-12-16 02:39:11'),
(1136, 121, '9', NULL, 'Plaza de Mulas – Plaza Canada – 4900m', 'Four-hour walk to Plaza Canada after a nice breakfast at BC. Included: Double tents, breakfast, lunch, and dinner.', 9, '2024-12-16 02:39:11', '2024-12-16 02:39:11'),
(1137, 121, '10', NULL, 'Plaza Canada – Nido de Condores – 5600m', 'Five hour walk to Nido de Condores, our second camp. Included: Double tents, Breakfast, lunch, and dinner.', 10, '2024-12-16 02:39:11', '2024-12-16 02:39:11'),
(1138, 121, '11', NULL, 'Rest at Nido de Condores – 5600m', 'Light walks around camp to improve acclimatisation. Included: Double tents, Breakfast, lunch, and dinner.', 11, '2024-12-16 02:39:11', '2024-12-16 02:39:11'),
(1139, 121, '12', NULL, 'Nido de Condores – Colera – 5950m', '3 to 4-hour walk with carrying climbing equipment (wearing most of it) to Colera, our last camp at almost 6000 metres. Included: Double tents, Breakfast, and lunch.', 12, '2024-12-16 02:39:11', '2024-12-16 02:39:11'),
(1140, 121, '13', NULL, 'Colera – Summit – Colera – 6962m', 'Early start to the first summit attempt (2 or 3am). We’ll hidrate as much as we can and leave camp at around 4am for the 12 hour round trip to the summit (average time) Included: Double tents and water melting', 13, '2024-12-16 02:39:11', '2024-12-16 02:39:11'),
(1141, 121, '14', NULL, 'Colera – Plaza de Mulas – 4300m', 'We’ll walk down through all camps arriving at BC at around 4pm. Included: Double tents with mattress, Breakfast, lunch and celebration dinner.', 14, '2024-12-16 02:39:11', '2024-12-16 02:39:11'),
(1142, 121, '15', NULL, 'Plaza de Mulas, Confluencia, Mendoza – 4300m', 'After an 8am breakfast, we’ll pack our duffels and send them to Horcones on mules and start the 8 hour walk to Horcones. On the way, we’ll stop at Confluencia for food and a short break. Our private transport will wait for us at Horcones and take us to Penitentes so we can take another private transport to Mendoza. On the way, we’ll stop at Uspallata for a steak dinner. Included: Breakfast, pack lunch, snack food in Confluencia, private transport, hotel and celebration steak dinner.', 15, '2024-12-16 02:39:11', '2024-12-16 02:39:11'),
(1143, 121, '16', NULL, 'Flight out – 900m', 'You will be taken to the airport 2-3 hours before your flight. Included: breakfast and private transport.', 16, '2024-12-16 02:39:11', '2024-12-16 02:39:11'),
(1144, 121, '17', NULL, 'Spare acclimatisation day or weather day.', NULL, 17, '2024-12-16 02:39:11', '2024-12-16 02:39:11'),
(1145, 122, '1', NULL, 'Arrival in Kathmandu (1400m) & Transfer to the Hotel', NULL, 1, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1146, 122, '2', NULL, 'Rest in Kathmandu, Expedition briefing and Prepare', NULL, 2, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1147, 122, '3', NULL, 'Fly from Kathmandu – to Lukla and trek to Chutanga (3,060m)', NULL, 3, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1148, 122, '4', NULL, 'Trek from Chutanga to Tuli Kharka (3,900m) Via Zatrawa La Pass (4,610m)', NULL, 4, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1149, 122, '5', NULL, 'Trek from Tuli Kharka to Kothe (4,095m)', NULL, 5, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1150, 122, '6', NULL, 'Trek from Kothe to Thangnak (4,350m)', NULL, 6, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1151, 122, '7', NULL, 'Trek from Thangnak to Khare (5,054m)', NULL, 7, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1152, 122, '8', NULL, 'Acclimatization at Khare (Rest day)', NULL, 8, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1153, 122, '9', NULL, 'Trek from Khare to High Camp (5,790m)', NULL, 9, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1154, 122, '10', NULL, 'High Camp to Mera Peak Summit (6,476m) and Back to Khare', NULL, 10, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1155, 122, '11', NULL, 'Contingency Day (Reserve day due to bad weather)', NULL, 11, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1156, 122, '12', NULL, 'Trek from Khare to Khamedingma', NULL, 12, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1157, 122, '13', NULL, 'Trek from Khamedingma to Seto Pokhari (5,035m)', NULL, 13, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1158, 122, '14', NULL, 'Trek from Seto Pokhari to Baruntse Basecamp (5,400m)', NULL, 14, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1159, 122, '15', NULL, 'Rest & Acclimatization, Sherpa prayer ceremony (puja).', NULL, 15, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1160, 122, '16', NULL, 'Glacier and fixed rope training on small ice walls near basecamp.', NULL, 16, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1161, 122, '17', NULL, 'Climb to camp 1 on the West Col, 6,126 metres (20,100 feet) using fixed ropes. Stunning views of Baruntse climbing route and massive Mt. Makalu return to BC', NULL, 17, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1162, 122, '18', NULL, 'Restday at Base Camp', NULL, 18, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1163, 122, '19', NULL, 'Climb to camp 1 on the West Col, 6,126 metres (20,100 feet) & sleep', NULL, 19, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1164, 122, '20', NULL, 'Very short climb to camp 2 at 6,350 metres (20,828 feet). Camp 2 lies at the base of the Baruntse Ridge.', NULL, 20, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1165, 122, '21', NULL, 'Summit attempt using fixed ropes, 7,129 metres (23,390 feet).', NULL, 21, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1166, 122, '22', NULL, 'Extra day for summit attempt, return to basecamp.', NULL, 22, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1167, 122, '23', NULL, 'Return to basecamp, rest, pack up.', NULL, 23, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1168, 122, '24', NULL, 'Trek from Baruntse Basecamp to Khamedingma', NULL, 24, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1169, 122, '25', NULL, 'Trek from Khamedingma to Thangnak', NULL, 25, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1170, 122, '26', NULL, 'Trek from Thagnak to Chatrabu', NULL, 26, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1171, 122, '27', NULL, 'Trek from Chatrabu to Lukla', NULL, 27, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1172, 122, '28', NULL, 'Fly from Lukla to Kathmandu Valley & transfer to the Hotel', NULL, 28, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1173, 122, '29', NULL, 'Spare day for lukla flight', NULL, 29, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1174, 122, '30', NULL, 'Transfer to International Airport for final departure', NULL, 30, '2024-12-16 04:50:16', '2024-12-16 04:50:16'),
(1175, 123, '1', NULL, 'Arrive at Arusha/Kilimanjaro Airport (JRO)', 'head to a hotel near Moshi for dinner. Spend the night at the hotel.  (B&amp;B)', 1, '2024-12-25 01:23:25', '2024-12-25 01:33:48'),
(1176, 123, '2', NULL, 'Enjoy a leisurely morning before kicking off the Kilimanjaro adventure', 'You can catch a glimpse of Kilimanjaro\'s ice fields. We will take an acclimatization tour on rental bikes through lush coffee plantations and quaint villages at the mountain\'s base. Wrap up the day with dinner and another night at the hotel. (B&amp;B)', 2, '2024-12-25 01:23:25', '2024-12-25 01:33:48'),
(1177, 123, '3', NULL, 'Hop on our bus to the Lemosho Gate (2385 m)', 'start a gentle climb through the mountain rainforest to Big Tree Camp (Mkubwa Camp 2780 m). Experience your first night in a tent surrounded by trees, dining in a tent, and sharing sleeping arrangements or opting for a single tent if you prefer.  (Full Board)', 3, '2024-12-25 01:23:25', '2024-12-25 01:23:25'),
(1178, 123, '4', NULL, 'It\'s all about acclimatization today!', 'We’ll gradually ascend and descend through the stunning montane rainforest, then tackle a short stretch across the heathland to set up camp at Shira 1 (3500 m). This marks our first night above 3000 m.  (Full Board)', 4, '2024-12-25 01:23:25', '2024-12-25 01:23:25'),
(1179, 123, '5', NULL, 'We’re taking it easy today with a hike to Shira Peak (3872 m) at Cathedral Point', 'The views are incredible, often shrouded in mist over the Senecias, with the mountain rainforest far below. After soaking in the sights, we’ll head back for another night at Camp Shira 1 (3500 m).  (Full Board)', 5, '2024-12-25 01:23:25', '2024-12-25 01:23:25'),
(1180, 123, '6', NULL, 'Our journey continues across the expansive moorland and heathland, passing Simba Cave to reach the camp at Moir Hut (4175 m)', 'Nestled on steep rocky cliffs at the edge of the next vegetation zone, the camp is picturesque, with bubbling streams and stunning golden sunsets. We’ll stay here for two nights to fully acclimatize.  (Full Board)', 6, '2024-12-25 01:23:25', '2024-12-25 01:23:25'),
(1181, 123, '7', NULL, 'From Moir Camp (4175 m), we’ll slowly ascend to our \"high camp\" at Lava Tower (4640 m)', 'In this high alpine, barren landscape, we’ll be surrounded by lichens and hardy immortelle flowers, with the occasional lobelia. This hike over 4500 m will be beneficial for our bodies as we prepare for the next leg of the journey. (Full Board)', 7, '2024-12-25 01:23:25', '2024-12-25 01:23:25'),
(1182, 123, '8', NULL, 'Today, we’re heading up to the \"high camp\" at Lava Tower Camp, which sits at 4640 m', 'It’s our last night before we tackle the summit! (Full Board)', 8, '2024-12-25 01:23:25', '2024-12-25 01:23:25'),
(1183, 123, '9', NULL, ': It’s summit day! We kick things off at midnight with a climb up the pathless Moonlight Wall to reach the Northern Ice Field', 'Expect some solitude on this journey. If the conditions are right, we’ll strap on crampons and tackle the Credner Glacier. After descending from the glacier, we’ll cross the Reusch Crater and make our way up to Uhuru Peak (5895 m) in the late morning. We’ll then head down via Stella Point and take the Mweka Route back to Barafu Camp (4640 m), continuing down to Millennium Camp (3790 m) surrounded by beautiful trees. The thrill of conquering the Kibo massif is incredible! We’ll spend one last night in the tent. (Full Board)', 9, '2024-12-25 01:23:25', '2024-12-25 01:23:25'),
(1184, 123, '10', NULL, 'We’ll descend through the lush mountain rainforest all the way to Mweka Gate (1630 m) near Moshi', 'After enjoying lunch and some cold drinks at the gate, we’ll transfer to the hotel. Most flights leave at night from JRO. (Breakfast &amp; Lunch)', 10, '2024-12-25 01:23:25', '2024-12-25 01:33:48'),
(1185, 124, '1-2', NULL, 'Arrival in Kenya', 'You’ll arrive by flight and head to your hotel in Nairobi, where you’ll enjoy a bed &amp; breakfast setup. Take the day to unwind, explore Nairobi (check out the National Park and Bomas), do some last-minute shopping for snacks, and get in some climbing training at Lukenya, which is about an hour\'s drive from the city. In the evening, we’ll have dinner together, go over the tour details, and meet everyone in the group.', 1, '2024-12-26 22:06:40', '2024-12-26 22:06:57'),
(1186, 124, '3-5', NULL, 'Trekking and acclimatization', 'Along the way, our mountain guides and fellow climbers will chat about the ascent and go over some essential climbing techniques (like belaying and commands).', 2, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(1187, 124, '6', NULL, 'Climbing on Mount Kenya', 'In winter, we’ll trek up to the Austrian Hut, and from there, we can tackle Point Lenana (4985m). In summer, we’ll start from Shipton\'s Camp, where we can either do a training hike or attempt the ascent of Batian.', 3, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(1188, 124, '7', NULL, 'Climbing Mount Kenya', 'Today, we\'re gearing up to tackle Batian, which stands at 5199 meters. We’ll rise early to hit the trail as the sun comes up.  \r\n\r\nIn winter, we kick off our climb on the Nelion Normal Route, which starts off pretty chill, allowing us to gain altitude quickly. After passing MacKinder\'s Gendarme, we hit a crucial rope section, then navigate some rocky terrain with a couple of spots rated UIAA 4rd degree difficulty before reaching the summit of Nelion at 5189 meters. Before we can make our way to Batian, we need to rappel down into the Gate of the Mists and then tackle a third ridge to reach Batian. For the way down from Nelion, we’ll rappel down the Austrian rescue line.  \r\n\r\nIn summer, the first rope section presents a key challenge (UIAA 5-) that can leave your fingers feeling numb. After that, we’ll navigate through a couloir to the amphitheatre, keeping an eye out for falling rocks. We’ll then make our way over Firmin\'s Tower to the west ridge, which stretches on past Shipton\'s Notch to the main summit of Batian. The descent will follow the same route, involving some rappelling and climbing down.', 4, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(1189, 124, '8-9', NULL, 'Descent', 'We trek down to the National park gate and drive back to Nairobi, flight back home.', 5, '2024-12-26 22:06:40', '2024-12-26 22:06:40'),
(1190, 125, '1', NULL, 'Arrive Leh 3,350m', NULL, 1, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(1191, 125, '2', NULL, 'Drive Leh to Chilling and Trek to Skiu (3400m)', 'A little ahead of Chilling lays Kaya-Do, where we cross the river and start our trek to the village of Skiu.', 2, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(1192, 125, '3', NULL, 'Trek Skiu to Markha (3700m)', 'The trail to Markha is not too strenuous, rising about 300m over 22 km. Being at a relatively low altitude it gets very hot in the sun. Walkthrough small villages will help in getting some shade under the tree to reach Markha.', 3, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(1193, 125, '4', NULL, 'Trek Markha to Thochung-Tse (4150m)', 'The path keeps close to the river until it reaches a wooden bridge crossing the river. Prayer flags signifies the entrance to Zhunglam (extremely demanding route to Zanskar). Passing by Umlung and Hankar is only 1-hour walk to Thochung-Tse, a popular watering spot for Bharal is the campsite.', 4, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(1194, 125, '5', NULL, 'Trek Thochung-Tse to Nimaling (4720m)', 'After trekking to top of the first ridge with hundreds of Cairns, note the beautifully eroded rock spikes down to the left and the Kang-yatse massive (6400m) on the right. The trails raise gently passes lots of Mani walls descend slowly to Nimaling.', 5, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(1195, 125, '6', NULL, 'Trek to Kongmaru La (5100m) and back to Nimaling', 'Start acclimatisation walk to Kongmaru-La. Descend back to Nimaling for Lunch. After lunch, relax and check climbing gear.', 6, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(1196, 125, '7', NULL, 'Trek Nimaling to Kang-yatze Base Camp (5000m)', 'The first section is quite steep and loosed rocks will be found sometimes till the ridge. The trail ease down a bit with gentle walk to reach the base camp.', 7, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(1197, 125, '8-9', NULL, ': Summit Day (6200m)', 'Rest for the whole day, a practice with gears and ropes are must in case of using it for the first time. Early dinner and sleep, to leave for summit midnight and scale the 6200m peak early morning for a wonderful view of sunrise. Descend back to base camp from summit', 8, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(1198, 125, '10', NULL, 'Trek Kang-yatse BC to Dzo-jongo BC (5500m)', 'Trek through the ridge to reach Dzo-jongo base camp.', 9, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(1199, 125, '11-12', NULL, 'Summit Day (6050m)', 'Rest whole day, early dinner and sleep. Leave for summit midnight, scale summit and back to Base camp.', 10, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(1200, 125, '13', NULL, 'Trek Dzo-jongo BC to Chokdo and drive to Leh', 'Trek over the grazing grounds of Nimaling, a gradual ascent to Kongmaru-La. After crossing the last pass, descend all the way to Chokdo. Car will be waiting there to drive you back to Leh.', 11, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(1201, 125, '14', NULL, 'Departure to Delhi', 'Most flights leave Leh in the morning to catch an international flight from Delhi in afternoon/evening', 12, '2024-12-26 23:32:09', '2024-12-26 23:32:09'),
(1202, 119, '1', NULL, 'Arrival in Timika Papua', '<p>\r\n\r\nMost flights are at night and arrive in the morning in Timika. Transfer to Hotel and Briefing and Gear Check.\r\nThe rest of the day is spend relaxing at the swimming pool.<br></p>', 1, '2025-02-04 14:48:23', '2026-04-06 16:27:23'),
(1203, 119, '2', NULL, 'Timika – Carstensz BC (Helicopter)', '<p>\r\n\r\nAn early transfer to the airport where we will be “stand-by” for our Helicopter flight to our Base Camp in the\r\n“yellow valley”. Helicopters flights are very weather dependant and only happen when weather allows. This\r\ncan go smoothly, but sometimes requires quite some waiting. This is all part of the adventure! \r\n\r\n<br></p>', 2, '2025-02-04 14:48:23', '2026-04-06 16:27:23'),
(1204, 119, '3', NULL, 'Acclimatizational and Training', '<p>\r\n\r\nToday we will review some rope techniques, acclimate, rest and enjoy our time in BC.<br></p>', 3, '2025-02-04 14:48:23', '2026-04-06 16:27:23');
INSERT INTO `cl_trip_itinerary` (`id`, `trip_detail_id`, `days`, `meals`, `title`, `content`, `ordering`, `created_at`, `updated_at`) VALUES
(1205, 119, '4', NULL, 'Summit to Carstensz Pyramid 8848m', '<p>\r\n\r\nIf weather allows we will leave early in the morning, usually around 5am and walk to the start of the fixed\r\nlines (about 1hr). Maybe we still climb the first pitch(es) in the dark, but it quickly will become light. It will\r\ntake approximately 6-8hr to summit and 3-4hr to descent. \r\n\r\n<br></p>', 4, '2025-02-04 14:48:23', '2026-04-06 16:27:23'),
(1206, 119, '5', NULL, 'Extra day', '<p>\r\n\r\nExtra Day in case of bad weather, acclimatization problems or other setbacks. \r\n\r\n<br></p>', 5, '2025-02-04 14:48:23', '2026-04-06 16:27:23'),
(1207, 119, '6', NULL, 'Extra day', '<p>\r\n\r\nExtra Day in case of bad weather, acclimatization problems or other setbacks.\r\n\r\n<br></p>', 6, '2025-02-04 14:48:23', '2026-04-06 16:27:23'),
(1208, 119, '7', NULL, 'Extra day', '<p>\r\n\r\nExtra Day in case of bad weather, acclimatization problems or other setbacks.\r\n\r\n<br></p>', 7, '2025-02-04 14:48:23', '2026-04-06 16:27:23'),
(1209, 119, '8', NULL, 'Carstensz BC – Timika (Helicopter)', '<p>\r\n\r\nEarly morning we will fly back to Timika (if weather allows) and enjoy the luxury of the hotel. \r\n\r\n<br></p>', 8, '2025-02-04 14:48:23', '2026-04-06 16:27:23'),
(1210, 119, '9', NULL, 'Departure to Jakarta or other destination', '<p>\r\n\r\nFlight to Jakarta usually depart in the morning. Its possible to extent your trip with a visit to the remote\r\nBaliem valley where we can visit the traditional Papua tribes. If you are an ocean lover Raja Ampat is a must\r\ndo destination in Iran Jaya also.\r\n\r\n\r\n<br></p>', 9, '2025-02-04 14:48:23', '2026-04-06 16:27:23'),
(1231, 41, '2', NULL, 'In Kathmandu for official procedures and preparations. Today we also apply for our Tibet VISA what can only be done as a group with original passports', NULL, 2, '2025-07-19 14:46:26', '2025-07-19 15:22:52'),
(1232, 41, '3', NULL, 'Heli flight: Kathmandu to Lukla (2866m-9400ft) and trek to Paiya ( 2730m-8954ft).O/N Lodge', NULL, 3, '2025-07-19 14:46:26', '2025-07-19 15:22:52'),
(1233, 41, '4', NULL, 'Trek to Pangokma ( 2846m-9334ft).O/N Lodge', NULL, 4, '2025-07-19 14:46:26', '2025-07-19 14:46:26'),
(1234, 41, '5', NULL, 'Trek to Chatra khola (3150m-10332ft) via Ramailo danda. O/N Lodge', NULL, 5, '2025-07-19 14:46:26', '2025-07-19 15:22:52'),
(1235, 41, '6', NULL, 'Trek to Kothe (3550m-11644ft). O/N Lodge', NULL, 6, '2025-07-19 14:46:26', '2025-07-19 14:46:26'),
(1236, 41, '7', NULL, 'Trek to Thagnak (4350m-14268 ft). O/N Lodge', NULL, 7, '2025-07-19 14:46:26', '2025-07-19 14:46:26'),
(1237, 41, '8', NULL, 'Trek to Khare ( 4800m-15744ft). O/N Lodge', NULL, 8, '2025-07-19 14:46:26', '2025-07-19 14:46:26'),
(1238, 41, '9', NULL, 'At Khare: Preparations for the climbing', NULL, 9, '2025-07-19 14:46:26', '2025-07-19 15:22:52'),
(1239, 41, '10', NULL, 'High camp (5800m-19024ft). Camp', NULL, 10, '2025-07-19 14:46:26', '2025-07-19 14:46:26'),
(1240, 41, '11', NULL, 'Summit Mera Peak (6654m-21825ft) and back to Khare. O/N Lodge', NULL, 11, '2025-07-19 14:46:26', '2025-07-19 15:22:52'),
(1241, 41, '12', NULL, 'Contingency day for climbing.', NULL, 12, '2025-07-19 14:46:26', '2025-07-19 14:46:26'),
(1242, 41, '13', NULL, 'Trek from Khare to Khote', NULL, 13, '2025-07-19 14:46:26', '2025-07-19 14:46:26'),
(1243, 41, '14', NULL, 'Heli flight : Khote-Lukla-Ktm', NULL, 14, '2025-07-19 14:46:26', '2025-07-19 15:22:52'),
(1244, 41, '15', NULL, 'Rest & relax in Kathmandu, last minute shopping etc.', NULL, 15, '2025-07-19 15:22:52', '2025-07-19 15:22:52'),
(1245, 41, '16', NULL, 'Fly Kathmandu-Gonggor airport and drive to Lhasa (3650m-11680ft). O/N hotel', NULL, 16, '2025-07-19 15:22:52', '2025-07-19 15:22:52'),
(1246, 41, '17', NULL, 'In Lhasa : sightseeing', NULL, 17, '2025-07-19 15:22:52', '2025-07-19 15:22:52'),
(1247, 41, '18', NULL, 'Drive to Shigatse (3900m-12480ft)- O/N Hotel', NULL, 18, '2025-07-19 15:22:52', '2025-07-19 15:22:52'),
(1248, 41, '19', NULL, 'Drive to Thingri (4350m-14,268ft)- O/N Guest House', NULL, 19, '2025-07-19 15:22:52', '2025-07-19 15:22:52'),
(1249, 41, '20', NULL, 'Drive to Everest base camp (5200m-17,056ft)', NULL, 20, '2025-07-19 15:22:52', '2025-07-19 15:22:52'),
(1250, 41, '21-22', NULL, 'At the base camp to acclimatize and preparing loads for advance base camp', NULL, 21, '2025-07-19 15:22:52', '2025-07-19 15:22:52'),
(1251, 41, '23', NULL, 'Trek to Intermediate Camp (5800 meters-19,029 feet)', NULL, 22, '2025-07-19 15:22:52', '2025-07-19 15:22:52'),
(1252, 41, '24', NULL, 'Arrive at advance base camp (6400m-20,992ft)', NULL, 23, '2025-07-19 15:22:52', '2025-07-19 15:22:52'),
(1253, 41, '25', NULL, 'Rest & Acclimatisation in ABC', NULL, 24, '2025-07-19 15:22:52', '2025-07-19 15:22:52'),
(1254, 41, '26-46', NULL, 'climbing period: please check trip PDF for full itinerary', NULL, 25, '2025-07-19 15:22:52', '2025-07-19 15:22:52'),
(1255, 41, '47', NULL, 'Descent to ABC', NULL, 26, '2025-07-19 15:22:52', '2025-07-19 15:22:52'),
(1256, 41, '48', NULL, 'Drive to Kyirong (2700m-8,856ft) O/N hotel', NULL, 27, '2025-07-19 15:22:52', '2025-07-19 15:22:52'),
(1257, 41, '49', NULL, 'Cross border to Nepal and drive to Kathmandu', NULL, 28, '2025-07-19 15:22:52', '2025-07-19 15:22:52'),
(1258, 41, '50', NULL, 'In Kathmandu', NULL, 29, '2025-07-19 15:22:52', '2025-07-19 15:22:52'),
(1259, 41, '51', NULL, 'Departure', NULL, 30, '2025-07-19 15:22:52', '2025-07-19 15:22:52'),
(1260, 126, '2', NULL, 'Tibet Visa Preparation day in Kathmandu.', '<p></p><p>Filling VISA application form, Passport\r\ncollection, passport Photo collection etc. (Tibet VISA applications can only be\r\ndone with original passport) at breakfast. Afternoon free for leisur</p><p></p>', 2, '2026-02-11 17:05:26', '2026-02-11 18:36:34'),
(1261, 126, '1', NULL, 'Arrival in Kathmandu', '<p></p><p>You will be picked up from the airport\r\nand transferred to the hotel where you can relax after a long flight. Standard\r\ncheck-in times are around 12pm, but usually we can arrange an earlier check-in\r\n(depending on the hotel occupation). If you arrive really early this day its\r\nbetter to request for an early check-in or just enjoy breakfast and wait until\r\nyour room is ready.</p><p></p>', 1, '2026-02-11 17:05:26', '2026-02-11 18:36:34'),
(1262, 126, '3', NULL, 'Apply for Tibet Visa with your original passport.', 'Expedition briefing by expedition leader in the morning. Afternoon is free for last minute shopping, sightseeing etc.', 3, '2026-02-11 18:36:34', '2026-02-11 18:36:34'),
(1263, 126, '4', NULL, 'Shivapuri Hike day while we wait for visa in Kathmandu.', 'Shivapuri day hike to stretch our legs while we are waiting for the Visa.', 4, '2026-02-11 18:36:34', '2026-02-11 18:36:34'),
(1264, 126, '5', NULL, 'Drive from Kathmandu to Timure.', 'Timure is the Nepalese border town with Tibet. It takes approximately 8hr to drive here from Kathmandu across a windy road.', 5, '2026-02-11 18:36:34', '2026-02-11 18:36:34'),
(1265, 126, '6', NULL, 'Cross the border of Nepal and Drive to Kerung (1962m).', 'Today we cross the border with all our expedition gear and drive into Tibet. It will take serval hours to cross the border due to the border formalities. We need to change from Nepali to Chinese vehicles and trucks. From the border its about an hour drive to our Hotel in Kerung.', 6, '2026-02-11 18:36:34', '2026-02-11 18:36:34'),
(1266, 126, '7', NULL, 'Drive from Kerung to Thingri (4,300m)', 'Today we head straight up to the Tibetan plateau. The first hours we follow a the road up the pass that ends up at a spectacular lake. From here we will be at 4200+m and there is no going down until the expedition ends.', 7, '2026-02-11 18:36:34', '2026-02-11 18:36:34'),
(1267, 126, '8', NULL, 'Tingri: final checks, acclimatization', 'Rest day, final shopping (fresh food), meet yak/porter teams and liaison officers. Brief on approach and safety.', 8, '2026-02-11 18:36:34', '2026-02-11 18:36:34'),
(1268, 126, '9', NULL, 'Drive Tingri → Cho Oyu Base Camp (approx 4,900m)', 'Drive to Chinese/British basecamp area on the Tibetan plateau. Set up camp, short walks, rest.', 9, '2026-02-11 18:36:34', '2026-02-11 18:36:34'),
(1269, 126, '10', NULL, 'Base Camp: rest & orientation', 'Acclimatization: short hikes, set up communal tents, Team medical checks, arranging Yaks.', 10, '2026-02-11 18:36:34', '2026-02-11 18:36:34'),
(1270, 126, '11', NULL, 'Trek from Cho-Oyu Chinese Basecamp to Intermediate Camp (5,400m)', 'Trek from Cho-Oyu Chinese Basecamp to Intermediate Camp (5,400m)', 11, '2026-02-11 18:36:34', '2026-02-11 18:36:34'),
(1271, 126, '12', NULL, 'Intermediate camp → Advanced Base Camp (ABC) (5,700 m)', 'Trek or load-carriage with yaks/mules to ABC at foot of the Nangpa La valley; set up ABC.', 12, '2026-02-11 18:36:34', '2026-02-11 18:36:34'),
(1272, 126, '13', NULL, 'ABC: rest & light hikes', 'Short climbs around ABC (sleep low, walk high principles). Organize caches and check comms and oxygen equipment.', 13, '2026-02-11 18:36:34', '2026-02-11 18:36:34'),
(1273, 126, '14', NULL, 'ABC rest + equipment sorting', 'Recovery day at ABC; staff may begin fixing ropes lower on the route.', 14, '2026-02-11 18:36:34', '2026-02-11 18:36:34'),
(1274, 126, '15', NULL, 'ABC → Recon/Carry to Camp 1 (6,300–6,400 m) (touch & go)', 'Load-carrying reconnaissance to Camp 1: establish tent sites briefly and return to ABC to sleep (first rotation).', 15, '2026-02-11 18:36:34', '2026-02-11 18:36:34'),
(1275, 126, '16', NULL, 'ABC → Camp 1 (move higher)', 'Move higher to Camp 1 and sleep there if weather/fitness good. Continue route fixing and caching.', 16, '2026-02-11 18:36:34', '2026-02-11 18:36:34'),
(1276, 126, '17', NULL, 'Camp 1 → Return to ABC (sleep low for recovery)', 'Carry loads to deposit, descend to ABC to consolidate acclimatization. (Classic climb-high/sleep-low rotation.)', 17, '2026-02-11 18:36:35', '2026-02-11 18:36:35'),
(1277, 126, '18', NULL, 'ABC rest day', 'Recovery, medical check, adjust plan based on weather forecasts.', 18, '2026-02-11 18:36:35', '2026-02-11 18:36:35'),
(1278, 126, '19', NULL, 'ABC → Camp 1 and sleep there', 'This will be our 2nd night in C1 for acclimatization.', 19, '2026-02-11 18:36:35', '2026-02-11 18:36:35'),
(1279, 126, '20', NULL, 'Camp 1 → Camp 2 (7,000–7,200 m) (establish C2)', 'Climb to C2 and return to ABC or C1 for recovery depending on team condition.', 20, '2026-02-11 18:36:35', '2026-02-11 18:36:35'),
(1280, 126, '21', NULL, 'Rest in ABC in preparation for summit push.', 'Recover from rotation, eat &amp; sleep.', 21, '2026-02-11 18:36:35', '2026-02-11 18:48:53'),
(1281, 126, '22', NULL, 'Rest in ABC in preparation for summit push.', 'Recover from rotation, final gear check for summit push, prepare freeze dried meals &amp; snacks', 22, '2026-02-11 18:36:35', '2026-02-11 18:48:53'),
(1282, 126, '23', NULL, 'Rest in ABC in preparation for summit push.', 'Final weather report check and enjoy the last day of comfort in ABC.', 23, '2026-02-11 18:36:35', '2026-02-11 18:36:35'),
(1283, 126, '24', NULL, 'Climb to C1 6400m & sleep', 'Climb to C1 6400m &amp; sleep', 24, '2026-02-11 18:36:35', '2026-02-11 18:48:53'),
(1284, 126, '25', NULL, 'Climb to C2 approx 7000m & sleep', 'Climb to C2 approx 7000m &amp; sleep', 25, '2026-02-11 18:36:35', '2026-02-11 18:48:53'),
(1285, 126, '26', NULL, 'Climb to C3 7400m & sleep', 'Climb to C3 7400m &amp; sleep', 26, '2026-02-11 18:36:35', '2026-02-11 18:48:53'),
(1286, 126, '27', NULL, 'Contingency day if something didn’t go as planned or rest in C3', 'Contingency day if something didn’t go as planned or rest in C3', 27, '2026-02-11 18:36:35', '2026-02-11 18:36:35'),
(1287, 126, '28', NULL, 'Summit Day (Camp 3 → summit 8,188 m → Camp 3/Camp 2)', 'Depart pre-dawn (typically 00:00–02:00), ascend final snow slopes and summit plateau; return the same day to Camp 3 or Camp 2. Round trip from Camp 3 is commonly 8–12 hours but can be longer depending on conditions and party speed.', 28, '2026-02-11 18:36:35', '2026-02-11 18:36:35'),
(1288, 126, '29', NULL, 'Rest / contingency', 'Used if summit was delayed or as recovery day for those who summited.', 29, '2026-02-11 18:36:35', '2026-02-11 18:36:35'),
(1289, 126, '30', NULL, 'Descend to ABC (safe descent, break down higher camps)', 'If summit successful, staged descent to ABC; begin breaking down upper camps.', 30, '2026-02-11 18:36:35', '2026-02-11 18:36:35'),
(1290, 126, '31', NULL, 'ABC — pack & prepare for base camp descent', 'Consolidate gear, demobilize caches, pack for drive back.', 31, '2026-02-11 18:36:35', '2026-02-11 18:36:35'),
(1291, 126, '32', NULL, 'ABC → Base Camp (drive/lower porters/yaks)', 'Return to base camp social debrief, large meals, begin packing for overland return.', 32, '2026-02-11 18:36:35', '2026-02-11 18:36:35'),
(1292, 126, '33', NULL, 'Drive Base Camp → Tingri', 'Drive to Tingri; sleep in lodge/hotel big warm meal and showers (if available).', 33, '2026-02-11 18:36:35', '2026-02-11 18:36:35'),
(1293, 126, '34', NULL, 'Tingri → Kerung (Chinese side border)', 'Begin return over the border; overnight near Kerung/China-Nepal border area.', 34, '2026-02-11 18:36:35', '2026-02-11 18:36:35'),
(1294, 126, '35', NULL, 'Kerung→ border crossing toward Nepal side → Kathmandu (long drive )', 'Drive back to Kathmandu', 35, '2026-02-11 18:36:35', '2026-02-11 18:36:35'),
(1295, 126, '36', NULL, 'Departure', 'Relax in Kathmandu, theoretically its possible to book an afternoon/evening flight.', 36, '2026-02-11 18:36:35', '2026-02-11 18:36:35'),
(1350, 128, '1', NULL, 'Arrival in Kathmandu', '<p>\r\n\r\nArrival in Tribhuvan International Airport (TIA), Kathmandu. Upon arrival, you will be warmly received and transferred to your hotel for check-in and rest.\r\n\r\n<br></p>', 1, '2026-03-30 18:20:55', '2026-03-31 15:27:45'),
(1351, 128, '2', NULL, 'Expedition Briefing & Last Hour Shopping', '<p>\r\n\r\nAn expedition briefing will be held in the morning, where you’ll meet your guides, review the itinerary, discuss safety protocols, and go over essential preparations for the journey ahead. The afternoon is left free for last-minute shopping, sightseeing, or simply relaxing and enjoying your surroundings before the adventure begins.\r\n\r\n<br></p>', 2, '2026-03-30 18:20:55', '2026-03-31 15:27:45'),
(1352, 128, '3', NULL, 'Fly to Lukla', '<p>\r\n\r\nScenic helicopter flight from Kathmandu to Lukla (2,866m/9,400ft), followed by a trek to Paiya (2,730m/8,954ft). Overnight stay at a lodge.\r\n\r\n<br></p>', 3, '2026-03-30 18:20:55', '2026-03-31 15:27:45'),
(1353, 128, '4', NULL, 'Trek to Pangokma', '<p>&nbsp;(2,846m/9,334ft), passing through scenic trails and traditional villages. Overnight stay at a lodge.<br></p>', 4, '2026-03-30 18:20:55', '2026-03-31 15:27:45'),
(1354, 128, '5', NULL, 'Trek to Chatra Khola', '<p>\r\n\r\nTrek to Chatra Khola (3,150m/10,332ft) via Ramailo Danda, following scenic forested trails and ridge walks with beautiful mountain views. Overnight stay at a lodge.\r\n\r\n<br></p>', 5, '2026-03-30 18:20:55', '2026-03-31 15:27:45'),
(1370, 128, '6', NULL, 'Trek to Kothe', 'Trek to Kothe (3,550m/11,644ft), following the beautiful Hinku Valley alongside rivers and dense forests with occasional mountain views. Overnight stay at a lodge.', 6, '2026-03-31 16:06:28', '2026-03-31 16:06:28'),
(1371, 128, '7', NULL, 'Trek to Thagnak', 'Trek to Thagnak (4,350m/14,268ft), ascending through alpine landscapes with increasing views of surrounding peaks and glacial terrain. Overnight stay at a lodge.', 7, '2026-03-31 16:06:28', '2026-03-31 16:06:28'),
(1372, 128, '8', NULL, 'Acclimatization day at Thagnak', 'Acclimatization day at Thagnak, with short hikes to nearby viewpoints and surrounding ridges to aid altitude adjustment while enjoying impressive Himalayan scenery. Overnight stay at a lodge.', 8, '2026-03-31 16:06:28', '2026-03-31 16:06:28'),
(1373, 128, '9', NULL, 'Trek to Khare', 'Trek to Khare (4,800m/15,744ft), gradually ascending through glacial moraines with stunning views of surrounding Himalayan peaks. Overnight stay at a lodge', 9, '2026-03-31 16:06:28', '2026-03-31 16:06:28'),
(1374, 128, '10', NULL, 'Climbing Preparations', 'Day dedicated to climbing preparations, including gear check, basic mountaineering training, and briefing on route, safety, and techniques for the ascent. Overnight stay at a lodge.', 10, '2026-03-31 16:06:28', '2026-03-31 16:06:28'),
(1375, 128, '11', NULL, 'Climb High camp (5800m-19024ft)', '(5800m-19024ft)', 11, '2026-03-31 16:06:29', '2026-03-31 16:06:29'),
(1376, 128, '12', NULL, 'Summit Mera Peak', 'Summit Mera Peak (6654m-21825ft) and trek back to Khare. Overnight stay at a lodge.', 12, '2026-03-31 16:06:29', '2026-03-31 16:06:29'),
(1377, 128, '13', NULL, 'Contingency day', 'For Climbing.', 13, '2026-03-31 16:06:30', '2026-03-31 16:06:30'),
(1378, 128, '14', NULL, 'Trek to Thagnak', 'After the summit, trek back to Thagnak.', 14, '2026-03-31 16:06:30', '2026-03-31 16:06:30'),
(1379, 128, '15', NULL, 'Fly back to Lukla', 'Heli ﬂight : Thagnak 4350m to Lukla', 15, '2026-03-31 16:06:30', '2026-03-31 16:06:30'),
(1380, 128, '16', NULL, 'Fly to Lobuche', 'Heli ﬂight Lukla to Lobuche 4950m', 16, '2026-03-31 16:06:30', '2026-03-31 16:06:30'),
(1381, 128, '17', NULL, 'Trek to EBC 5364 m', 'Trek to Everest Basecamp 5364m', 17, '2026-03-31 16:06:30', '2026-03-31 16:06:30'),
(1382, 128, '18', NULL, 'Settle in Base camp', 'Relax, organize, getting settled in BC.', 18, '2026-03-31 16:06:30', '2026-03-31 16:06:30'),
(1383, 128, '19', NULL, 'Rope & ladder practice', 'Rope &amp; ladder practice in the icefall nearby', 19, '2026-03-31 16:06:30', '2026-03-31 16:18:43'),
(1384, 128, '20', NULL, 'Puja Ceremony', 'Puja ceremony to get permission from the mountain god to enter the mountain.', 20, '2026-03-31 16:06:30', '2026-03-31 16:06:30'),
(1385, 128, '21', NULL, 'Sleep at Camp 1', 'First time through the icefall to camp 1 6065m.', 21, '2026-03-31 16:06:30', '2026-03-31 16:06:30'),
(1386, 128, '22', NULL, 'Sleep at Camp 2', 'We continue through the western CWM to Camp 2 at 6400m.', 22, '2026-03-31 16:06:30', '2026-03-31 16:06:30'),
(1387, 128, '23', NULL, 'Acclimatization day in Camp 2', 'Acclimatization day in C2, walk around if we feel good.', 23, '2026-03-31 16:06:30', '2026-03-31 16:06:30'),
(1388, 128, '24', NULL, 'Walk towards fixed ropes', 'Walk to the start of the ﬁxed ropes at 6800m.', 24, '2026-03-31 16:06:30', '2026-03-31 16:06:30'),
(1389, 128, '25', NULL, 'Climb camp 3', 'Climb to Camp 3 at 7000m and return to C2', 25, '2026-03-31 16:06:30', '2026-03-31 16:06:30'),
(1390, 128, '26', NULL, 'Descent to Base camp', 'After the climb, return back to Base camp.', 26, '2026-03-31 16:18:43', '2026-03-31 16:18:43'),
(1391, 128, '27', NULL, 'Recover at Base Camp', 'Going down by helicopter to Namche 3440m (optional on your own cost)', 27, '2026-03-31 16:18:43', '2026-03-31 16:18:43'),
(1392, 128, '28', NULL, 'Recover in Namche 3440m', 'After the climb, take your time and enjoy your time in Namche bazaar.', 28, '2026-03-31 16:18:43', '2026-03-31 16:18:43'),
(1393, 128, '29', NULL, 'Recover in Namche 3440m', 'Recover', 29, '2026-03-31 16:18:43', '2026-03-31 16:18:43'),
(1394, 128, '30', NULL, 'Recover in Namche 3440m', 'Recover', 30, '2026-03-31 16:18:43', '2026-03-31 16:18:43'),
(1395, 128, '31', NULL, 'Return to Base Camp', 'After the stay in Namche, trek back to the base camp.', 31, '2026-03-31 16:18:43', '2026-03-31 16:18:43'),
(1396, 128, '32', NULL, 'Return to Base Camp', 'Trek back to Base camp', 32, '2026-03-31 16:18:43', '2026-03-31 16:18:43'),
(1397, 128, '33', NULL, 'Climb to C2 6400m', 'Climb towards Camp 2.', 33, '2026-03-31 16:18:43', '2026-03-31 16:18:43'),
(1398, 128, '34', NULL, 'Climb to C3', 'Climb to Camp 3 7000m', 34, '2026-03-31 16:18:43', '2026-03-31 16:18:43'),
(1399, 128, '35', NULL, 'Climb to C4', 'Climb to Camp 4 7950m', 35, '2026-03-31 16:18:43', '2026-03-31 16:18:43'),
(1400, 128, '36', NULL, 'Rest in C4', 'Rest in Camp 4 (optional)', 36, '2026-03-31 16:18:43', '2026-03-31 16:18:43'),
(1401, 128, '37', NULL, 'Summit Mount Everest', 'Summit Everest 8848.86 m and descent to C3-2', 37, '2026-03-31 16:29:36', '2026-03-31 16:29:36'),
(1402, 128, '38', NULL, 'Descend to Camp 2', 'Continue down to C2 and rest', 38, '2026-03-31 16:29:36', '2026-03-31 16:29:36'),
(1403, 128, '39', NULL, 'Descent to Base camp', 'Early morning Descent to Basecamp', 39, '2026-03-31 16:29:36', '2026-03-31 16:29:36'),
(1404, 128, '40', NULL, 'Celebrations', 'Celebrate you summit success.', 40, '2026-03-31 16:29:36', '2026-03-31 16:29:36'),
(1405, 128, '41', NULL, '7 spare days', 'From day 40-46&nbsp; we have 7 spare days for any kind of issues: Bad health, Bad weather, crowdy days. Only in theory we could have climbed Everest by now, but during an expedition there are always setbacks.&nbsp;', 41, '2026-03-31 16:29:36', '2026-03-31 16:37:27'),
(1406, 128, '47', NULL, 'Trek back to pheriche', 'On day 47 we Trek to Pheriche 4371m', 47, '2026-03-31 16:29:36', '2026-03-31 16:37:27'),
(1407, 128, '48', NULL, 'Trek to Namche', 'On day 48 Trek to Namche 3440m', 48, '2026-03-31 16:34:53', '2026-03-31 16:34:53'),
(1408, 128, '49', NULL, 'Trek to Lukla', 'On day 49 Trek to Lukla 2860m', 49, '2026-03-31 16:34:54', '2026-03-31 16:34:54'),
(1409, 128, '50', NULL, 'Fly back to Kathmandu', 'Fly Lukla to Kathmandu by Helicopter.', 50, '2026-03-31 16:34:54', '2026-03-31 16:34:54'),
(1410, 128, '51', NULL, 'Spare day for Lukla ﬂight', 'Due to weather conditions, there\'s one spare day for the heli flight.', 51, '2026-03-31 16:34:54', '2026-03-31 16:34:54'),
(1411, 128, '52', NULL, 'Departure', 'Departure towards your home country.', 52, '2026-03-31 16:34:54', '2026-03-31 16:34:54'),
(1412, 127, '1', NULL, 'Arrive in La Paz, Bolivia.', 'Arrive in La Paz, Bolivia. From El Alto Airport on the high-altitude plateau, descend into the city, one of the highest capitals in the world. Spend the day adjusting to the altitude, exploring the city, and enjoying views of the Cordillera Real via the extensive cable car system. A gear check and briefing will also take place. Overnight in a hotel in La Paz (3600 m).', 1, '2026-04-01 14:35:25', '2026-04-01 14:35:25'),
(1413, 127, '2', NULL, 'Travel to Tiwanaku', 'Travel to Tiwanaku, an important pre-Incan archaeological site known for its massive stone structures and the famous Gate of the Sun. Continue across the altiplano along Lake Titicaca, the largest high-altitude lake, and cross the Strait of Tiquina by boat before reaching Copacabana. Overnight in Copacabana (3841 m).', 2, '2026-04-01 14:38:02', '2026-04-01 14:38:02'),
(1414, 127, '3', NULL, 'Hike above Copacabana', 'Begin with a hike above Copacabana for panoramic views, followed by a boat ride to Isla del Sol. Visit Incan ruins such as Pilko Kaina and trek across the island, stopping at archaeological sites like the Chincana complex. Enjoy sweeping views of the lake and surrounding mountains before reaching your lodge in Yumani. Overnight at an ecolodge (3972 m).', 3, '2026-04-01 14:38:02', '2026-04-01 14:38:02'),
(1415, 127, '4', NULL, 'Drive to Rinconada', 'Return by boat to Copacabana, then drive to Rinconada, the gateway to the Condoriri mountains. From there, trek with donkeys carrying gear to Laguna Chiar Khota, where base camp is established with views of the surrounding peaks. Overnight at base camp (4700 m).', 4, '2026-04-01 14:41:08', '2026-04-01 14:41:08'),
(1416, 127, '5', NULL, 'Climb Pico Austria', 'Climb Pico Austria, a non-technical peak ideal for acclimatization, offering excellent views of the Cordillera Real and surrounding landscapes. Overnight at base camp (4700 m).', 5, '2026-04-01 14:41:08', '2026-04-01 14:41:08'),
(1417, 127, '6', NULL, 'Hike to the glacier edge', 'Hike to the glacier edge for a full day of mountaineering practice, including crampon use and glacier travel techniques. Overnight at base camp (4700 m).', 6, '2026-04-01 14:41:08', '2026-04-01 14:41:08'),
(1418, 127, '7', NULL, 'Rest & Preparation', 'Rest and prepare for the upcoming climb of Pequeño Alpamayo. Overnight at base camp (4700 m).', 7, '2026-04-01 14:41:08', '2026-04-01 14:41:08'),
(1419, 127, '8', NULL, 'Attempt the ascent of Pequeño Alpamayo', 'Attempt the ascent of Pequeño Alpamayo, a striking peak known for its elegant shape. The route follows a glacier to Pico Tarija before continuing over mixed rock and snow terrain to the summit. Overnight at base camp (4700 m).', 8, '2026-04-01 14:41:08', '2026-04-01 14:41:08'),
(1420, 127, '9', NULL, 'Return on foot to Rinconada', 'Return on foot to Rinconada with the help of pack animals, then travel back to La Paz for rest. Overnight in a hotel (3600 m).', 9, '2026-04-01 14:41:08', '2026-04-01 14:41:08'),
(1421, 127, '10', NULL, 'Trek to Chachacomani', 'Drive to Alto Cruz Pampa and begin a three-hour trek to Chachacomani Base Camp through a scenic glacial valley. Overnight at base camp (4470 m).', 10, '2026-04-01 14:45:37', '2026-04-01 14:45:37'),
(1422, 127, '11', NULL, 'Ascend to high camp', 'Ascend to high camp over several hours, with porters or donkeys carrying equipment. Camp near the glacier’s edge. Overnight at high camp (5130 m).', 11, '2026-04-01 14:45:37', '2026-04-01 14:45:37'),
(1423, 127, '12', NULL, 'Summit attempt of Chachacomani.', 'Summit attempt of Chachacomani. Traverse glaciers and climb steeper sections to reach the summit, which offers expansive views across the altiplano and surrounding ranges. Return to base camp. Overnight at base camp (4470 m).', 12, '2026-04-01 14:45:37', '2026-04-01 14:45:37'),
(1424, 127, '13', NULL, 'Return to La Paz', 'Retrace the route back to Alto Cruz Pampa and return to La Paz. Overnight in a hotel (3600 m).', 13, '2026-04-01 14:45:37', '2026-04-01 14:45:37'),
(1425, 127, '14', NULL, 'Drive towards Illimani BC', 'Drive through scenic countryside to Pinaya and continue to Puente Roto, the base camp for Illimani. Overnight at camp (4495 m).', 14, '2026-04-01 14:45:38', '2026-04-01 14:45:38'),
(1426, 127, '15', NULL, 'Climb High Camp', 'Climb gradually to the high camp at Nido de Condores, traversing slopes and a rocky ridge. Porters assist with carrying loads. Overnight at high camp (5500 m).', 15, '2026-04-01 14:45:38', '2026-04-01 14:45:38'),
(1427, 127, '16', NULL, 'Summit attempt of Illimani', 'Summit attempt of Illimani. Ascend snow ridges and slopes to reach the top, rewarded with spectacular panoramic views. Descend back to base camp. Overnight at Puente Roto (4495 m).', 16, '2026-04-01 14:45:38', '2026-04-01 14:45:38'),
(1428, 127, '17', NULL, 'Return to La Paz', 'Return by vehicle to La Paz via Pinaya. Overnight in a hotel (3600 m).', 17, '2026-04-01 14:46:51', '2026-04-01 14:46:51'),
(1429, 127, '18', NULL, 'Departure', 'Departure towards your home country.', 18, '2026-04-01 14:46:51', '2026-04-01 14:46:51'),
(1430, 129, '1', NULL, 'Fly to Lima', 'Fly to Lima &amp; Overnight hotel.\r\nThose joining on a ‘Land Only’ basis should arrive in Lima\r\ntoday.', 1, '2026-04-06 17:47:29', '2026-04-06 17:53:01'),
(1431, 129, '2', NULL, 'Fly to Huaraz (3,050m)', 'Fly to Huaraz (3,050m) - A bustling town with an economy largely based on agriculture and trekking. To welcome you to the outdoor capital of the Cordillera Blanca, you will be treated to dinner and we can discuss our trekking plans. Overnight hotel.', 2, '2026-04-07 14:36:41', '2026-04-07 14:36:41'),
(1432, 129, '3', NULL, 'Rest day at Huaraz', 'Rest day at Huaraz (3,050m) - Having come from sea level to 3,050m, it is important for you to have a rest day today. The emphasis is on balanced acclimatization and relax.', 3, '2026-04-07 14:37:45', '2026-04-07 14:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `cl_trip_itinerary_rel`
--

CREATE TABLE `cl_trip_itinerary_rel` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `trip_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_trip_regions`
--

CREATE TABLE `cl_trip_regions` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'NULL',
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ordering` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cl_trip_regions`
--

INSERT INTO `cl_trip_regions` (`id`, `title`, `sub_title`, `uri`, `thumbnail`, `banner`, `excerpt`, `content`, `video`, `meta_keyword`, `meta_description`, `ordering`, `status`, `created_at`, `updated_at`) VALUES
(31, 'À la carte Trekking', 'Choose treks according to your taste & preference', '-la-carte-Trekking-', 'annapurna-panorama-trek-yp9kfnh88q7fghhpl2g6prwjnl46tfnxgg2znu7w-ddlFIqxD9s7KgNQRh7qpdycPiDmjqsviSBDYUphQ.jpg', '', '<p><strong data-start=\"0\" data-end=\"23\">À la carte trekking</strong> is a flexible, custom-designed trekking style where you choose exactly what you want instead of booking a fixed package.</p>\r\n<p>The term “à la carte” (from French) means “from the menu.” In trekking, it refers to building your own itinerary and services based on your preferences.</p>\r\n<p>In Alacarte trek, we don\'t offer fixed departures but we love to customize treks for you. </p>', NULL, NULL, '#alacartetrekking', NULL, '1', '1', '2026-04-01 15:06:41', '2026-04-01 15:42:07'),
(32, 'Everest Base Camp', 'A Premier trekking', 'Everest-Base-Camp-', 'whatsapp-image-2026-03-13-at-11-as4hvqxoZ3cyjigzHiKIF1rDRKVTSrRaARa8BF2E.jpg', '', '<p data-start=\"0\" data-end=\"801\">The Everest Base Camp (EBC) Trek is a once-in-a-lifetime adventure that goes beyond a simple hike—it’s a journey that takes you above the clouds. Situated in the heart of the Khumbu Valley, EBC is a remarkable destination attracting travelers from all over the world. It serves as the breathtaking endpoint for those eager to witness the grandeur of Mount Everest up close. Standing at 8,848 meters, Mount Everest is the highest peak on Earth, named after Sir George Everest and widely known in Nepal as Sagarmatha. The first successful ascent was achieved in 1953 by Sir Edmund Hillary and Tenzing Norgay via the Khumbu Icefall. As you trek, you’ll be surrounded by these historic achievements and awe-inspiring landscapes, making the journey feel like a dream come true—truly a voyage of a lifetime.</p>\r\n<p data-start=\"803\" data-end=\"1535\">The trek begins in Lukla (2,828m), a bustling town in the Khumbu region, home to the renowned Sherpa people and the legendary Yeti. Towering peaks such as Ama Dablam (6,812m), Lhotse (8,516m), Makalu (8,463m), Pumori (7,161m), and Nuptse (7,855m) rise dramatically, welcoming visitors into this majestic region. Over a couple of weeks, trekkers experience vast landscapes, rich Sherpa-Tibetan culture, and the challenges of high-altitude terrain. The trail follows the Dudh Koshi River, winding through rhododendron forests and offering chances to spot wildlife like blue sheep, musk deer, and various bird species including the Himalayan pheasant (Danphe) and Monal. Though rare, the elusive snow leopard also inhabits this region.</p>\r\n<p data-start=\"1537\" data-end=\"1982\">As the journey progresses, trekkers reach Namche Bazaar (3,500m), a vibrant hub and key acclimatization stop for those heading toward Everest and surrounding peaks. Due to its altitude, most travelers spend at least two nights here to adjust properly. From Namche, the route continues along the Imja Khola River toward the Everest region, passing through traditional stops like Lobuche and Gorakshep before finally arriving at Everest Base Camp.</p>\r\n<p data-start=\"1984\" data-end=\"2264\" data-is-last-node=\"\" data-is-only-node=\"\">After reaching EBC, trekkers often hike up to Kala Patthar, a viewpoint offering some of the most spectacular panoramic views of Mount Everest and the surrounding Himalayan giants. Standing there, with Everest towering before you, is an unforgettable and deeply moving experience.</p>', NULL, NULL, NULL, NULL, '3', '1', '2026-04-02 23:07:28', '2026-04-02 23:07:28'),
(33, 'Manaslu Base Camp Trek', NULL, 'Manaslu-Base-Camp-Trek-', '', '', NULL, NULL, NULL, NULL, NULL, '7', '0', '2026-04-03 16:41:38', '2026-04-03 16:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `cl_trip_region_rel`
--

CREATE TABLE `cl_trip_region_rel` (
  `id` int UNSIGNED NOT NULL,
  `trip_id` int NOT NULL,
  `region_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_trip_tailor_made`
--

CREATE TABLE `cl_trip_tailor_made` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `trip_id` int NOT NULL,
  `num_ppl` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `duration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `full_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_trip_type`
--

CREATE TABLE `cl_trip_type` (
  `id` int NOT NULL,
  `trip_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cl_trip_type`
--

INSERT INTO `cl_trip_type` (`id`, `trip_type`, `created_at`, `updated_at`) VALUES
(1, 'Regions', '2021-03-14 06:45:15', '2021-03-14 06:45:15'),
(2, 'Expeditions', '2021-03-14 06:45:15', '2021-03-14 06:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int UNSIGNED NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dymantic_instagram_basic_profiles`
--

CREATE TABLE `dymantic_instagram_basic_profiles` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dymantic_instagram_basic_profiles`
--

INSERT INTO `dymantic_instagram_basic_profiles` (`id`, `username`, `created_at`, `updated_at`) VALUES
(1, 'my-profile', '2022-12-12 06:58:21', '2022-12-12 06:58:21');

-- --------------------------------------------------------

--
-- Table structure for table `dymantic_instagram_feed_tokens`
--

CREATE TABLE `dymantic_instagram_feed_tokens` (
  `id` int UNSIGNED NOT NULL,
  `profile_id` int UNSIGNED NOT NULL,
  `access_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_profile_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guide_images`
--

CREATE TABLE `guide_images` (
  `id` int UNSIGNED NOT NULL,
  `guide_id` int UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guide_images`
--

INSERT INTO `guide_images` (`id`, `guide_id`, `image`, `ordering`, `created_at`, `updated_at`) VALUES
(14, 12, '1648029033-69NslYZQCKf48fvUntitled-3.jpg', 'test test', '2022-03-23 09:50:33', '2022-03-23 09:50:33'),
(15, 12, '1648029033-Wgf1Ya3tqALcWWuUntitled-4.jpg', 'test test test', '2022-03-23 09:50:33', '2022-03-23 09:50:33'),
(16, 17, '1653983066-aJvoG5iNIgPhyv0DSC03152.jpg', NULL, '2022-05-31 07:44:26', '2022-05-31 07:44:26'),
(17, 17, '1653983066-0Edo7YwUYCYFQoJDSC07449.jpg', NULL, '2022-05-31 07:44:26', '2022-05-31 07:44:26'),
(18, 17, '1653983066-x2FeAv0FUW8unZHDSC03882.jpg', NULL, '2022-05-31 07:44:26', '2022-05-31 07:44:26'),
(23, 2, '1675534944-LGWZCyeN7XHCNrnphoto_gallery.jpg', NULL, '2023-02-04 18:22:24', '2023-02-04 18:22:24'),
(24, 2, '1675534998-RpUmSWxTQPV0aCapng-clipart-logo-windows-10-s-microsoft-windows-organization-windows-xp-logo-blue-angle.png', NULL, '2023-02-04 18:23:18', '2023-02-04 18:23:18'),
(26, 1, '1675592208-C2l0k9g2IAmLVRLtrip-pdf-62b0218bcb477.jpg', NULL, '2023-02-05 10:16:48', '2023-02-05 10:16:48'),
(27, 20, '1676289033-QMFAE30yqCrMsVKtrip-pdf-62b0218bcb477.jpg', NULL, '2023-02-13 11:50:33', '2023-02-13 11:50:33'),
(28, 20, '1676289137-dfSmHner1cSWOYQ01.jpg', '2', '2023-02-13 11:52:17', '2023-02-13 11:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_01_135020_cl_trip_expedition_rel', 2),
(5, '2021_01_01_163603_create_cl_trip_booking_table', 3),
(8, '2021_02_19_141602_create_cl_trip_expedition_expeditiongroup_rel_table', 4),
(9, '2022_02_21_143448_create_itinerary_categories_table', 5),
(10, '2022_03_28_173704_create_instagram_basic_profile_table', 6),
(11, '2022_03_28_173704_create_instagram_feed_token_table', 6),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_details`
--

CREATE TABLE `page_details` (
  `id` bigint UNSIGNED NOT NULL,
  `page_id` int DEFAULT NULL,
  `title` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ordering` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_details`
--

INSERT INTO `page_details` (`id`, `page_id`, `title`, `content`, `ordering`, `created_at`, `updated_at`) VALUES
(6, 8, 'How to obtain visa to travel to Nepal?', '<p style=\"text-align: justify;\">You can obtain &ldquo;VISA&rdquo; to Nepal through embassy or other diplomatic mission to your country. You can also obtain visa at entry points to Nepal, or at the airport in the immigration for merely $40. The extension of visa requires an additional payment of $30. Do not forget to carry some passport size photos with you.</p>', '1', '2023-02-02 07:11:25', '2024-02-07 19:20:47'),
(7, 8, 'I want to go on a trek. What is the best time and place for it?', '<p style=\"text-align: justify;\">Everything you want to do is time and cost specific. Besides, your experience in trekking will also matter. There are wide range of options in Nepal if you want to explore. If you arrive in proper season, that is, between September to November (Autumn Season) and March to May (Spring Season), you might just experience something that you will be able to cherish for the lifetime. The shortest of trek can be Ghorepani Poon Hill trek, Langtang Helambu Trek or the Annapurna Circuit. The Everest trek and the full Annapurna sanctuary Trek can be ideal if you have a little more time. Finally, if you are looking for something that&rsquo;s longer and more challenging, you&rsquo;re looking at Kanchanjunga or Makalu area Trek.</p>', '2', '2023-02-02 07:11:25', '2024-02-07 19:20:47'),
(8, 8, 'What are the best trekking routes?', '<p style=\"text-align: justify;\">Annapurna Circuit, Annapurna Basecamp, Everest Basecamp, Dhaulagiri Circuit, Manaslu Circuit and Kanchanjunga are the most popular trekking routes in Nepal.</p>', '3', '2023-02-02 07:11:25', '2024-02-07 19:20:47'),
(9, 12, 'ng', '<p>test</p>', '1', '2023-02-02 08:54:30', '2024-04-11 15:11:22'),
(10, 1, '2. PAYMENTS & DEPOSITS', '<p style=\"text-align: justify;\">Trekking programs require a deposit payment of USD 750. Unless otherwise directed climbing programs under 8000m require a deposit of USD 1500 and 8000m peaks a USD 2500 deposit, Everest require 4000USD deposit. Positions can be reserved by completing the trip registration form and forwarding the deposit to ACE. Consideration can be given to members requiring paying smaller deposits and to making extended payments if circumstances require and at the discretion of ACE.</p>', '1', '2023-02-21 06:23:56', '2024-02-07 19:17:55'),
(11, 1, '2.1 Surcharges and bank expenses', '<p style=\"text-align: justify;\">The member understands and accepts that any costs associated with the transference and receipt of funds into the ACE bank account, including but not limited to bank fee&rsquo;s, PayPal fees, surcharges, and the like are the responsibility of the member and will be included in the final statement of cost to be met by the member. In addition the member accepts that a surcharge on the cost of the trip, not exceeding 10% of the value of the ground services of the program, may be levied within 4 weeks to departure in the event of any unexpected costs being borne by the company in the organization and execution of the program. This levy also accounts for currency fluctuations and exchange variations that need to be met by the company in the issuance of funds to overseas destinations.</p>', '2', '2023-02-21 06:23:56', '2024-02-07 19:17:55');

-- --------------------------------------------------------

--
-- Table structure for table `page_models`
--

CREATE TABLE `page_models` (
  `id` bigint UNSIGNED NOT NULL,
  `page_author` int NOT NULL DEFAULT '1',
  `template` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `page_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_type` int DEFAULT NULL,
  `page_category` int NOT NULL DEFAULT '0',
  `page_parent` int NOT NULL DEFAULT '0',
  `page_order` int NOT NULL DEFAULT '0',
  `page_banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `published` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `is_active` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `is_draft` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_trashed` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_password_protected` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `comment` enum('1','0') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `lang` enum('en','np') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_models`
--

INSERT INTO `page_models` (`id`, `page_author`, `template`, `page_title`, `sub_title`, `page_content`, `page_excerpt`, `uri`, `page_type`, `page_category`, `page_parent`, `page_order`, `page_banner`, `page_thumbnail`, `page_key`, `meta_keyword`, `meta_description`, `external_link`, `page_tags`, `status`, `published`, `is_active`, `is_draft`, `is_trashed`, `is_password_protected`, `comment`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'NEPAL', 'Company Policy Participant Agreement, Release, Risk Acknowledgement', '<p><strong>1 Participant Agreement, Release, Risk Acknowledgement</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</p>\r\n<p>In consideration of the services of Arnold Coster Expeditions, their agents, owners, officers, volunteers, participants, employees, and all other persons or entities acting in any capacity on their behalf (hereinafter collectively referred to as \"A.C.E.\"), I hereby agree to release and forever discharge A.C.E. on behalf of myself, my children, my parents, my spouse, my siblings, my other relatives and/or dependants, my heirs, assigns, personal representative and estate as follows: &nbsp;</p>\r\n<ol>\r\n<li>I acknowledge that the mountain climbing expedition entails known and unanticipated risks, which could result in physical or emotional injury, paralysis, death, or damage to myself, to property, or to third parties. These inherent risks are some of the elements that contribute to the unique character of this activity. These same elements can be causes of loss of or damage to my equipment, accidental injury or illness or, in extreme cases, permanent trauma or death. I understand than A.C.E. does not want to frighten me or reduce my enthusiasm for this activity, but believes it is important for me to know in advance what to expect and to be informed of the inherent risks. I understand that such risks cannot be eliminated and are an inherent part of the activity.</li>\r\n<li>The risks include, among other things: the hazards of walking on uneven terrain and slips and falls; being struck by avalanche, rock-fall, icefall or other objects dislodged, dropped, or thrown from above; the use of climbing ropes and equipment; the forces of nature, including lightning, weather changes and avalanche; the risks of falling off the rock, ice, mountain or into a crevasse; the risks of exposure to insect bites and numerous diseases, digestive tract infections and ailments; the risk of altitude and cold including hypothermia, frostbite, acute mountain sickness, cerebral and pulmonary edema; my own physical condition, and the physical exertion associated with this activity, and other natural occurrences; misuse, failure or loss of equipment; shortage of food or water supply; the hazards of traveling in politically unstable areas; the dangers of civil disturbances, war, terrorism, crime, kidnapping; the forces of nature; acts or omissions of A.C.E.; travel by boat, automobile, bus, truck, train, ship, aircraft, camel, horse, donkey, yak, or other means of conveyance; and accident or illness in remote places without access to medical facilities, transportation, or means of rapid evacuation and assistance. All of the risks are complicated by the potential difficulty or lack of rescue, including unavailability of light aircraft and no helicopter rescue. A.C.E. organizers, leaders, guides, and staff have difficult jobs to perform. Guides leaders and staff may not be present at any time, especially in the case of \"basic climbs\". When present, they seek safety, but they are not infallible. They might be unaware of a participant\'s fitness, abilities, pre-existing conditions, or ill health.&nbsp; They might misjudge a participant\'s health or illness, at anytime during the expedition. They might misjudge the weather, the elements, or the terrain.&nbsp; They may become incapacitated or distracted. They may make errors of judgment, mistakes, or be negligent. They may give inadequate warnings or instructions. Equipment being used may malfunction, wear-out, break, be lost, be inadequate, and be worn-out, poorly maintained, or missing. I expressly agree and promise to accept and assume all of the risks existing in this activity. My participation in this activity is purely voluntary, I am fully aware of the risks, and I elect to participate in spite of the risks.</li>\r\n<li>As a member of a expedition, I understand that at times of emergency I may be called upon to carry group equipment up and down the mountain, as well as my own personal equipment and belongings, help with group work, establish and maintain camps, and anything else that is necessary for the good and safety of the expedition, including helping sick and injured members on the team descend to safety. I know that dispatches and news sent from the mountain and reported in any form may be inaccurate, missing, or nonexistent. I know that the leader may not be climbing and trekking with me for certain times or at any time during the expedition. I know that group and/or personal Sherpa&rsquo;s may not climb or descend with me, that I may at times have to ascend and descend alone during the expedition, as well as trek by myself before, during or after the expedition.</li>\r\n<li>I acknowledge that engaging in this activity may require a degree of skill and knowledge different than other activities and that I have responsibilities as a participant. I acknowledge that the staff of A.C.E. has been available to talk to me extensively and more fully explain to me the nature and physical, mental, and experiential demands of this activity and the inherent risks, hazards, and dangers associated with this activity. However, I understand that this is not a climbing school, nor is this a guided expedition, and that I am expected to have a level of proficiency commensurate with the activity of high-altitude mountain climbing and technical climbing in all conditions. &nbsp;</li>\r\n<li>I certify that I am familiar with the dangers, hazards and risks incident to mountain climbing as above. I accept and clearly understand that these hazards and risks may result in personal injuries to myself and others and hereby expressly assume all of the above risks including; the risks of acts or omissions of A.C.E. and do hereby expressly agree to hold A.C.E. harmless and defend A.C.E. against any and all liability. &nbsp;</li>\r\n<li>C.E. gives notice that they act only as agents for hotels, transportation companies, land operators and suppliers of travel services. &nbsp;Assume no responsibility or liability in connection with the operation or service of any aircraft, motor vehicle, other co A.C.E. nveyance, restaurant, teahouse, inn, lodge or hotel which may be used wholly, or in part, for services to A.C.E., and its clients. , A.C.E. &nbsp;Its operators, airlines and agents will not be responsible for any act, error, omission, nor for any injury, loss accident, delay, inconvenience, irregularity or damage which may be occasioned by any cause whatsoever. This includes acts of nature, civil disturbance, crime, terrorism, government restrictions or failure of any means of conveyance to adhere to published schedule. &nbsp;</li>\r\n<li>I hereby voluntarily release, forever discharge, and agree to indemnify and hold harmless A.C.E. from any and all claims, demands, or causes of action, which are in any way connected with my participation in this activity or my use of A.C.E.\'s equipment or facilities, including any such claims which allege negligent acts or omissions of C.E. &nbsp;</li>\r\n<li>I hereby voluntarily release, forever discharge, and agree to indemnify and hold harmless A.C.E. and any of its assigns or other delegated persons from any and all claims, demands, or causes of action, which are in any way connected with the use of my image, words, voice, or likeness which are in any way connected with my participation in this activity, in any electronic, electromagnetic, digital, photographic, print, sound, or audio-visual format in regards to advertising, promotions, marketing, cybercasts, literature, newspaper/journal articles, television, documentary films and video, radio, recordings, websites, email, and/or any other use which &nbsp;C.E. deems fit. &nbsp;</li>\r\n<li>Should A.C.E. or anyone acting on their behalf, be required to incur attorney\'s fees and costs to enforce this agreement, I agree to indemnify and hold them harmless for all such fees and costs. &nbsp;</li>\r\n<li>In consideration of the services furnished me, and to be furnished me as a member of this mountaineering expedition, I hereby release A.C.E. and all the members of the mountaineering expedition from any and all damages, injuries, losses, or any cause of action which may result in me, my legal representatives, heirs, or others purporting to exercise statutory or other rights arising out of, or in connection with this expedition. And I hereby assume each and every damage incident to my participation, and agree to indemnify and hold harmless A.C.E. and all members of the expedition against any sums which they, or any of them may be subject to pay in consequence of any claim or demand by or through me, or resulting from my being a member of this mountaineering expedition. By signing this document I acknowledge that if anyone is hurt or property is damaged or any financial or other loss occurs before, during, or after my participation in this activity, I may be found by a court of law to have waived my right to maintain a lawsuit against C.E. On the basis of any claim from which I have released them herein.</li>\r\n<li>If any portion of this agreement is unenforceable, the remaining portions shall remain in full force and effect.</li>\r\n</ol>\r\n<p><strong>2 PAYMENTS &amp; DEPOSITS</strong></p>\r\n<p>Trekking programs require a deposit payment of USD 750. Unless otherwise directed climbing programs under 8000m require a deposit of USD 1500 and 8000m peaks a USD 4000 deposit, Everest require 8500USD deposit. Positions can be reserved by completing the trip registration form and forwarding the deposit to ACE. Consideration can be given to members requiring paying smaller deposits and to making extended payments if circumstances require and at the discretion of ACE.</p>\r\n<p><strong>2.1 Surcharges and bank expenses</strong></p>\r\n<p>The member understands and accepts that any costs associated with the transference and receipt of funds into the ACE bank account, including but not limited to bank fee&rsquo;s, PayPal fees, surcharges, and the like are the responsibility of the member and will be included in the final statement of cost to be met by the member. In addition the member accepts that a surcharge on the cost of the trip, not exceeding 10% of the value of the ground services of the program, may be levied within 4 weeks to departure in the event of any unexpected costs being borne by the company in the organization and execution of the program. This levy also accounts for currency fluctuations and exchange variations that need to be met by the company in the issuance of funds to overseas destinations.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>3 CANCELLATION AND REFUND POLICY</strong></p>\r\n<p>Note: ACE highly recommends trip cancellation insurance for all programs. Due to the nature and heavy costs of government and operator permits, ACE must adhere to a stringent refund policy. Specific program cancellation and refund policies may supersede those enumerated below.</p>\r\n<ul>\r\n<li>All Expedition balances are due 90 days prior to departure date unless otherwise specified.</li>\r\n<li>Full refunds will be provided 90-days prior to departure date.</li>\r\n<li>50% refunds will be provided 60-89 days prior departure date.</li>\r\n<li>No refunds will be provided 59-days prior to departure date.</li>\r\n<li>Participants whose balances are not received by the 90-day deadline as stated above, risk forfeiture of their place on the program.</li>\r\n<li>All refund requests must be made in writing and be received in our office within the 90-day period, as stated above</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p><strong>4 TRAVELS AND RESCUE INSURANCE</strong></p>\r\n<p>The participant certifies that adequate insurance has been obtained to cover any injury or damage or financial or other loss participant may cause or suffer while participating in all aspects of the climbing expedition, including travel, rescue, life, health, trip interruption and cancellation. Participant further certifies that there are no medical or</p>\r\n<p>Physical conditions which could interfere with participant&rsquo;s safety in this activity. Participants are strongly advised to purchase trip interruption and cancellation insurance.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>5 PARTICIPANT RESPONSIBILITIES</strong></p>\r\n<p>Trip participants are responsible for their own well-being.&nbsp; This includes good health and strong physical condition. Participants joining an expedition may be required to obtain a physician\'s release prior to departure. All members are responsible for: having the skills and knowledge required for each climb, knowing all pre-departure information, preparing proper equipment, clothing, snack-energy food, visas, insurance, inoculations, flights, acting in a safety conscious, team-spirited, considerate manner toward all group members and with respect for each country\'s customs, environment, and people, and conforming to basic standards of personal and group hygiene (to minimize the risk of traveler\'s diseases, and pollution of the environment). Like it or not, we are guests of the governments of the nations we visit. Participants are not allowed to engage in any acts involving physical nor provocative contact, nor any political discussions nor political actions with the local, associated, nor governing populace.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>6 AIRLINE RESPONSIBILITY</strong></p>\r\n<p>Participants are responsible for arranging their own air transportation to and from the starting location of the expedition.&nbsp; In the event A.C.E. uses local air transportation during the expedition, the air carrier&rsquo;s responsibilities shall be defined by the laws, rules and regulations of the country in which it operates.&nbsp; Please be advised that generally such nations provide fewer remedies to passengers than most European and American jurisdictions provide.&nbsp;</p>\r\n<p>If any portion of this agreement is unenforceable, the remaining portions shall remain in full force and effect.</p>\r\n<p><em>effective from: 1 January 2020</em></p>\r\n<p>&nbsp;</p>', NULL, 'nepal', 1, 0, 0, 1, 'terms-condition-banner-1-gix63TJmAzMSmnRLkqOp0jvbXXAqW5CwhobELMhp.jpg', 'for-nepal-HdPFrExyNptQp5IKAiXY1EXltJ3tkb8nzWjmCQoo.jpg', '1615622552463669802', 'Terms and Conditions For Arnold Coster Expeditions', 'Terms and Conditions For Arnold Coster Expeditions', NULL, NULL, '1', '1', '1', '0', '0', '0', '0', 'en', '2021-03-13 18:47:32', '2024-06-07 18:54:30'),
(3, 1, NULL, 'Gear List For 8000ers', 'Gear List For 8000ers', '<div style=\"text-align: justify;\">\r\n<p>In mountaineering, we have to deal with high altitude, rough terrain, and unpredictable weather so we have to bring the perfect gear and clothing for successful climbing.</p>\r\n<p>A mountaineering gear might be weighty and hard to choose when it comes to the body of survival in the mountains. But here we have made things much more possible easier with our decade of experience in the climbing community. These are the outfit; that climbers have chosen for an expedition.</p>\r\n</div>', '<p>In mountaineering, we have to deal with high altitude, rough terrain, and unpredictable weather so we have to bring the perfect gear and clothing for successful climbing.</p>', 'gear-list-for-8000ers', 2, 0, 0, 1, 'gear-8000-banner-BvxxyrPhT3PnsjNaDt19R4C0RURbsQ6ANXjGEUU2.jpg', 'adobestock-805006080-preview-transformed-dv87UBw9D8joi59OyP2PbUmg20OHr7rvtTdEtuyC.jpeg', '1630842625571594399', NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', 'en', '2021-09-05 11:50:25', '2024-06-07 15:37:24'),
(4, 1, NULL, 'Travel Insurance', 'Travel Insurance', '<p style=\"text-align: justify;\">There is a fine line between adventure and blatant risk. What parts them is the level of preparation that does in a particular activity. Leaving behind the comforts of your home into the embrace of nature is an adventure; not making sure that you are properly insured is a risk. Therefore, Arnold Coster Expeditions, requests you purchase insurance that is comprehensive enough to cover all possibilities that may ensue during your stay in Nepal.</p>\r\n<p style=\"text-align: justify;\">As mentioned in the Terms and Conditions of Arnold Coster Expeditions, the agency is exempt from being liable for different expenses that may occur in case of different emergencies or unforeseen situations. In addition to that, a foreigner isn&rsquo;t allowed to purchase insurance in Nepal. Both facts point out the requirement of a client to purchase an elaborate travel insurance plan in their place of origin that protects their interest in case of trip cancellation, helicopter evacuation, medical emergencies, other illnesses, lost luggage, theft, disasters, death, and so on.</p>\r\n<p style=\"text-align: justify;\"><strong>Points to remember regarding your Travel Insurance Plan:</strong></p>\r\n<ol>\r\n<li style=\"text-align: justify;\">In case of accidents, or sickness, there may be the necessity of evacuation through helicopter. The tourism agencies can make provisions for helicopter evacuation, but refrain to involve themselves in the financial matters that ensue. And even if they do, they will seek compensation for their expenses. If you do not obtain an insurance plan that specifically covers helicopter rescue, the resulting expenses can be back-breaking for you.</li>\r\n<li style=\"text-align: justify;\">Apart from the rescue, even medical treatments for accidents in high altitudes and cold temperatures are quite expensive. In certain instances, a mobile medical team will have to accompany the helicopter crew to the base camps, which further increases the medical expenses. Hence, you must be properly insured for probable medical conditions.</li>\r\n<li style=\"text-align: justify;\">While purchasing insurance, it is wise to completely explain what you&rsquo;re getting into and make sure that your insurance agent understands you. Your itinerary should be disclosed and the risks involved should be openly discussed before picking an insurance plan. This makes the client able to understand what is agreeable to the insurance company. Besides, it also makes claiming the insurance easier, in case the aforementioned circumstances take place.</li>\r\n<li style=\"text-align: justify;\">Consultation with multiple insurance providers before finally picking an insurance policy can be helpful. Mountaineering is a very challenging task that is never devoid of certain risks. So, it is necessary to specifically mention &lsquo;mountaineering&rsquo; or &lsquo;alpinism&rsquo; while explaining to the insurance providers your needs.</li>\r\n<li style=\"text-align: justify;\">Since the deposits made by a client are not refundable because of the company&rsquo;s obligations, the client must be also insured against trip cancellation.</li>\r\n<li style=\"text-align: justify;\">The client must provide us with a copy of their insurance policy (or insurance certificate) so that we can take due steps during the time of emergency.</li>\r\n</ol>\r\n<p style=\"text-align: justify;\">&nbsp;</p>', NULL, 'travel-insurance', 3, 0, 0, 1, 'travel-insurance-banner-QbPGV9D3k6WfqfSdwWk1SuHBtS2lWzua7j9CFvy4.jpg', 'travel-OqMSrOxxfrUgpBbAwocpxsR2j427p5OglEaRs8uf.jpeg', '163084269238282440', 'Seven Summit Treks; Travel Insurance; Expedition; Trekking', NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', 'en', '2021-09-05 11:51:32', '2024-06-09 15:21:50'),
(7, 1, NULL, 'Visa Procedure / Fees for Nepal', 'Visa Procedure / Fees for Nepal', '<p style=\"text-align: justify;\">Immigration Office, TIA (Tribhuvan International Airport) under the Department of Immigration has been facilitating tourists flying to Nepal by providing visas on Arrival. To obtain a visa upon arrival by air in Nepal you must fill in an application form and provide a passport copy. Visa application forms are available at the arrival hall, though some airlines provide this form on the flight. There are now visa registration machines in the immigration hall for people with electronic passports, which will automatically fill out the visa form for you after inserting your passport. Or, you can get a visa from Nepalese Diplomatic Missions stationed in your own country before your arrival.</p>\r\n<p>Nationals of the following countries are requested to acquire visas before they arrive from their nearby Diplomatic missions (Embassies/consulates) of the Nepal Government :</p>\r\n<ol>\r\n<li>Nigeria</li>\r\n<li>Ghana</li>\r\n<li>Zimbabwe</li>\r\n<li>Swaziland</li>\r\n<li>Cameroon</li>\r\n<li>Somalia</li>\r\n<li>Liberia</li>\r\n<li>Ethiopia</li>\r\n<li>Iraq</li>\r\n<li>Palestine</li>\r\n<li>Afghanistan</li>\r\n<li>Syria</li>\r\n<li>Refugees with a travel document</li>\r\n</ol>\r\n<p><strong>On Arrival Visa Fee at Entry Points</strong></p>\r\n<ul>\r\n<li>15 Days - 30 USD</li>\r\n<li>30 Days - 50 USD</li>\r\n<li>90 Days - 125 USD</li>\r\n</ul>\r\n<p><strong>&nbsp;Visa Extension Fee </strong></p>\r\n<ul>\r\n<li>Tourist visa extension is done for a minimum of 15 days with USD 45 and USD 3 per day for additional days.</li>\r\n<li>In the case of a delay of fewer than 150 days additional USD 5 per day is a late fine.</li>\r\n</ul>\r\n<p><strong>Gratis Visa (Visa for Free)</strong></p>\r\n<p>Gratis Visa is issued free of cost in case of the following categories of Visa applicants:</p>\r\n<ul>\r\n<li>Children below 10 years except for US citizens</li>\r\n<li>Up to 30 days for SAARC Citizens (except Afghanistan) visiting Nepal for the first time in a given visa Year. Afghan citizens are eligible for Gratis Visa on Arrival only upon the recommendation of the Department of Immigration. If you are an Afghan citizen, you can request a concerned institution inviting you to Nepal for necessary paperwork with the Department of Immigration to get you a Gratis Visa \'On Arrival.</li>\r\n<li>Non-Residential Nepalese (NRN) card holder (issued by MoFA /Nepalese diplomatic missions abroad)</li>\r\n<li>Chinese Nationals</li>\r\n<li>Officials from China, Brazil, Russia, and Thailand do not need Entry Visa based on a reciprocal visa waiver agreement.</li>\r\n</ul>', '<p style=\"text-align: justify;\">Immigration Office, TIA (Tribhuvan International Airport) under the Department of Immigration has been facilitating tourists flying to Nepal by providing visas on Arrival. To obtain a visa upon arrival by air in Nepal you must fill in an application form and provide a passport copy. Visa application forms are available at the arrival hall, though some airlines provide this form on the flight. There are now visa registration machines in the immigration hall for people with electronic passports, which will automatically fill out the visa form for you after inserting your passport. Or, you can get a visa from Nepalese Diplomatic Missions stationed in your own country before your arrival.</p>', 'visa-procedure-fees-for-nepal', 6, 0, 0, 1, 'visa-nepal-side-banner-n0KMgw4zPr2Uuv7KTpuAazdeSdAK4Lm8F5a0q0mz.jpg', 'nepal-side-03-W9nRgC37RxAMhK5zyuMz1UW0UCwdmgOwXAWtTKB5.jpg', '1630842849385684499', 'Visa fees for Nepal', 'Visa fees for Nepal', NULL, NULL, '1', '1', '1', '0', '0', '0', '0', 'en', '2021-09-05 11:54:09', '2024-06-09 16:30:51'),
(8, 1, NULL, 'Frequently Asked Questions', 'General FAQs', NULL, NULL, 'frequently-asked-questions', 7, 0, 0, 1, NULL, '1676174903-H36Wt8Es4mA9fcCRmrzNVTgJF8dYA8gZapnHBgUK.JPG', '1630842939341315647', 'FAQs', 'FAQs', NULL, NULL, '1', '1', '1', '0', '0', '0', '0', 'en', '2021-09-05 11:55:39', '2024-01-24 17:40:25'),
(9, 1, NULL, 'Gear List For 7000\'ers', 'Gear List For 7000\'ers', '<p style=\"text-align: justify;\">In mountaineering, we have to deal with high altitude, rough terrain, and unpredictable weather so we have to bring the perfect gear and clothing for successful climbing.</p>\r\n<p style=\"text-align: justify;\">A mountaineering gear might be weighty and hard to choose when it comes to the body of survival in the mountains. But here we have made things much more possible easier with our decade of experience in the climbing community. These are the outfit; that climbers have chosen for an expedition.</p>\r\n<h2 style=\"text-align: justify;\"><a href=\"/storage/files/1/gear-book-2-a-64d886c10ad94.pdf\"><strong>Test</strong></a></h2>\r\n<h2 style=\"text-align: justify;\"><a href=\"/storage/files/1/gear-book-2-a-64d886c10ad94.pdf\"><strong>Gear List</strong></a></h2>', '<p style=\"text-align: justify;\">In mountaineering, we have to deal with high altitude, rough terrain, and unpredictable weather so we have to bring the perfect gear and clothing for successful climbing.</p>', 'gear-list-for-7000ers', 2, 0, 0, 2, 'contact-us-YGpLdCOYu35wUA5tOXDLhYcwMm85lSJCx3E0yaIw.jpg', 'gear-list-for-7000ers-copy-LBZ2Wn3KWpsKdFrBUV77ERPjlr73htUBaOFYKSEn.jpg', '1644552646209061898', NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', 'en', '2022-02-11 04:10:46', '2024-06-04 16:51:57'),
(11, 1, NULL, 'Gear List For 6000\'ers', 'Gear List For 6000\'ers', '<p style=\"text-align: justify;\">In mountaineering, we have to deal with high altitude, rough terrain, and unpredictable weather so we have to bring the perfect gear and clothing for successful climbing.</p>\r\n<p style=\"text-align: justify;\">A mountaineering gear might be weighty and hard to choose when it comes to the body of survival in the mountains. But here we have made things much more possible easier with our decade of experience in the climbing community. These are the outfit; that climbers have chosen for an expedition.</p>', '<p style=\"text-align: justify;\">In mountaineering, we have to deal with high altitude, rough terrain, and unpredictable weather so we have to bring the perfect gear and clothing for successful climbing.</p>', 'gear-list-for-6000ers', 2, 0, 0, 3, 'gear-6000-banner-XVOAi1P6CuVSVVlZxqtibN9RGPa31HwDaKflPolO.jpg', '44e21117bf9daefb15cab6905f4f171b-copy-KWbMtXeqyO7cZrsEjZQ4yGbNtU7IVmvCco2SuShb.jpg', '1644822126388626950', NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', 'en', '2022-02-14 07:02:06', '2024-06-07 17:11:59'),
(12, 1, NULL, 'Gear List For Trekking in Nepal', 'Gear List For Trekking in Nepal', '<p style=\"text-align: justify;\">Trekking gear may vary depending upon the route, season and the types of accommodation to be used. It is important to keep your bag lightweight and also consider bringing breathable, warm, and dry clothing during the trek. With our decades of experience in the trekking field, we have made things easy and these outfits are chosen especially for trekking purposes.</p>', '<p>Trekking gear may vary depending upon the route, season and the types of accommodation to be used. It is important to keep your bag lightweight and also consider bringing breathable, warm, and dry clothing during the trek. With our decades of experience in the trekking field, we have made things easy and these outfits are chosen especially for trekking purposes.</p>', 'gear-list-for-trekking-in-nepal', 2, 0, 0, 4, 'gear-trekking-banner-7FJ0UEq68No5lKAYdTQxCaxNKACtBHSIWK8i2dCq.jpg', 'adobestock-664908578-preview-transformed-U4OwjXcXqtmBTgNz1cmWBVWTmU8AxmiwnxlQxrBY.jpg', '1644822161236765529', NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', 'en', '2022-02-14 07:02:41', '2024-06-07 18:05:45'),
(16, 1, NULL, 'Visa Procedure / Fees for Pakistan', 'Visa Procedure / Fees for Pakistan', '<p>Pakistan is regarded as one of the most popular destinations for undertaking mountaineering and trekking expeditions around the world. Arnold Coster Expedition specializes in operating these adventure expeditions in Pakistan. The clients traveling to Pakistan for mountaineering and trekking purposes with us have to apply for online visas to explore Pakistan. It might take 40-50 days to get a visa for Pakistan so the clients must apply 2 (two) months before the expedition or trek starts.</p>\r\n<p><strong>Application Type</strong></p>\r\n<p>A client can apply for First Time (New) Single Entry Visa <strong><a href=\"https://visa.nadra.gov.pk/tourist-visit-visas/\" target=\"_blank\" rel=\"nofollow noopener\">online</a></strong> in the following subcategories:</p>\r\n<ul>\r\n<li>Mountaineering (List of Mountains for which Visa can be applied can be seen <strong><a href=\"https://visa.nadra.gov.pk/list-of-peaks/\" target=\"_blank\" rel=\"nofollow noopener\">here</a></strong>.)</li>\r\n<li>Trekking (List of Treks for which Visa can be applied can be seen <strong><a href=\"https://visa.nadra.gov.pk/list-of-treks/\" target=\"_blank\" rel=\"nofollow noopener\">here</a></strong>.)</li>\r\n</ul>\r\n<p>Note: In your application, under Purpose of Visit - Mention the Mountains included in this list that you intend to climb).</p>\r\n<p><strong>Eligibility</strong></p>\r\n<p>Applicant must be a national of <strong><a href=\"https://visa.nadra.gov.pk/electronic-travel-authorization-eta/\" target=\"_blank\" rel=\"nofollow noopener\">191 Countries</a></strong> eligible for an online visa under the Pakistan Online Visa System.</p>\r\n<p><strong>Required Documents</strong></p>\r\n<ul>\r\n<li>Passport</li>\r\n<li>Photograph</li>\r\n<li>Mountaineering Application-Form (It is required if the application is made under Sub-Category “a”)</li>\r\n<li>Trekking Application-Form (It is required if the application is made under Sub-Category “b”)</li>\r\n<li>Sponsor letter/Agreement with designated tour operator by Department of Tourist Services (DTS)</li>\r\n</ul>\r\n<p>  Note: Your Sponsor letter/Agreement must be with a tour operator authorized by the DTS</p>\r\n<ul>\r\n<li>List of any members who are accompanying the applicant for Mountaineering or Trekking, if available with the applicant at the time of application submission.</li>\r\n</ul>\r\n<p><strong>Duration and Validity</strong></p>\r\n<p>The visa received under this category is valid for up to 3 Months – Single Entry Visa</p>\r\n<p><strong>Processing Time</strong></p>\r\n<p>Issuance of a Visa is the prerogative of the Government of Pakistan. Normally, it takes 6 - 8 Weeks (Working Days).</p>\r\n<ul>\r\n<li>If the application is Sent Back for Review to the Applicant, the set processing time will be applicable again (The processing time will re-start from the date of re-submission of the application).<strong> <strong>The Application will stand canceled if the applicant doesn’t resubmit his/her application within Seven (7) days from the date of application sent for review.</strong></strong></li>\r\n<li>You may plan your trip after acquiring Visa Grant Notice against your application.</li>\r\n<li>The fee charged online upon submission of your application is Visa Application Fee – IF Visa is GRANTED against your application then you will be required to pay Royalty Fee for Mountaineering and Trekking after coming to Pakistan – The guidelines to pay the Royalty Fee when you arrive in Pakistan are available <strong><a href=\"https://visa.nadra.gov.pk/wp-content/uploads/2019/09/Royalty-Fee.pdf\" target=\"_blank\" rel=\"nofollow noopener\">here</a></strong>.</li>\r\n</ul>\r\n<p><strong>To calculate the fees for mountaineering or trekking you can visit the following link:</strong></p>\r\n<p><strong>Link:</strong> <a href=\"https://visa.nadra.gov.pk/fee-structure/\" target=\"_blank\" rel=\"nofollow noopener\">https://visa.nadra.gov.pk/fee-structure/</a></p>\r\n<p><strong>To apply for a visa for mountaineering or trekking purposes you can visit the following link: </strong></p>\r\n<p><strong>Link:</strong> <a title=\"Link: https://visa.nadra.gov.pk/tourist-visit-visas/\" href=\"https://visa.nadra.gov.pk/tourist-visit-visas/\" target=\"_blank\" rel=\"nofollow noopener\">https://visa.nadra.gov.pk/tourist-visit-visas/</a></p>', '<p>Pakistan is regarded as one of the most popular destinations for undertaking mountaineering and trekking expeditions around the world. Arnold Coster Expedition specializes in operating these adventure expeditions in Pakistan. The clients traveling to Pakistan for mountaineering and trekking purposes with us have to apply for online visas to explore Pakistan. It might take 40-50 days to get a visa for Pakistan so the clients must apply 2 (two) months before the expedition starts.</p>', 'visa-procedure-fees-for-pakistan', 6, 0, 0, 2, 'visa-pakistan-side-banner-LKo4fzrswZxjFrfX5RAlat5ITW7IKozLpnh3PLJQ.jpg', 'pakistan-side-04-moUryfaceVFj2zJPTWLRBFqSc9gWFCnIwYn5QqF5.jpg', '164482246555254425', NULL, NULL, NULL, NULL, '0', '1', '1', '0', '0', '0', '0', 'en', '2022-02-14 07:07:45', '2024-12-02 18:50:56'),
(17, 1, NULL, 'Permit Fees of Mountains under Government of Nepal', 'Permit Fees of Mountains under Government of Nepal', '<p class=\"MsoNormal\"><strong>Permit Fees of Mountains under the Government of Nepal effective from 1 September 2025</strong></p>\r\n<p><em><strong>1. Royalty for Foreig</strong><strong>n Climber per Person in USD ($)</strong></em></p>\r\n<div class=\"uk-overflow-auto\">\r\n<table class=\"uk-table uk-table-striped\">\r\n<tbody>\r\n<tr>\r\n<td width=\"42\">\r\n<p><strong>S.N.</strong></p>\r\n</td>\r\n<td width=\"208\">\r\n<p><strong>MOUNTAINS</strong></p>\r\n</td>\r\n<td width=\"125\">\r\n<p><strong>SPRING</strong></p>\r\n</td>\r\n<td width=\"125\">\r\n<p><strong>AUTUMN</strong></p>\r\n</td>\r\n<td width=\"125\">\r\n<p><strong>WINTER/SUMMER</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"42\">\r\n<p>1.</p>\r\n</td>\r\n<td width=\"208\">\r\n<p>Mt. Everest - Normal Route</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$15,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$7,500</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$3,750</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"42\">\r\n<p>2.</p>\r\n</td>\r\n<td width=\"208\">\r\n<p>Mt. Everest - Other Route</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$10,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$5,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$2,500</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"42\">\r\n<p>3.</p>\r\n</td>\r\n<td width=\"208\">\r\n<p>Other Mountains above 8,000m</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$3,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$1,500</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$750</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"42\">\r\n<p>4.</p>\r\n</td>\r\n<td>\r\n<p>Manaslu</p>\r\n</td>\r\n<td>\r\n<p>$1,500</p>\r\n</td>\r\n<td>\r\n<p>$3,000</p>\r\n</td>\r\n<td>\r\n<p>$1,500</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"42\">\r\n<p>5.</p>\r\n</td>\r\n<td width=\"208\">\r\n<p>7,501m - 8,000m</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$1,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$500</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$250</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"42\">\r\n<p>6.</p>\r\n</td>\r\n<td width=\"208\">\r\n<p>7,001m - 7,500m</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$800</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$400</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$200</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"42\">\r\n<p>7.</p>\r\n</td>\r\n<td width=\"208\">\r\n<p>6,501m - 7,000m</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$500</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$250</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$200</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"42\">\r\n<p>8.</p>\r\n</td>\r\n<td width=\"208\">\r\n<p>Mt. Amadablam (6,812m)</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$1,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$1,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$500</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"42\">9.</td>\r\n<td width=\"208\">\r\n<p>Less than 6,500m</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$350</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$175</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>$175</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p><em><strong>2. Royalty for Nepalese Climber per Person in NPR</strong></em></p>\r\n<div class=\"uk-overflow-auto\">\r\n<table class=\"uk-table uk-table-striped\">\r\n<tbody>\r\n<tr>\r\n<td width=\"42\">\r\n<p><strong>S.N.</strong></p>\r\n</td>\r\n<td width=\"208\">\r\n<p><strong>MOUNTAINS</strong></p>\r\n</td>\r\n<td width=\"125\">\r\n<p><strong>SPRING</strong></p>\r\n</td>\r\n<td width=\"125\">\r\n<p><strong>AUTUMN</strong></p>\r\n</td>\r\n<td width=\"125\">\r\n<p><strong>WINTER/SUMMER</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"42\">\r\n<p>1.</p>\r\n</td>\r\n<td width=\"208\">\r\n<p>Everest - Normal Route</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>150,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>75,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>37,500</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"42\">\r\n<p>2.</p>\r\n</td>\r\n<td width=\"208\">\r\n<p>Everest - Other Route</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>100,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>50,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>25,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"42\">\r\n<p>3.</p>\r\n</td>\r\n<td width=\"208\">\r\n<p>Other Mountains above 8,000m</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>50,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>25,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>12,500</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"42\">\r\n<p>4.</p>\r\n</td>\r\n<td width=\"208\">\r\n<p>7,501m - 8,000m</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>40,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>20,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>10,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"42\">\r\n<p>5.</p>\r\n</td>\r\n<td width=\"208\">\r\n<p>7,001m - 7,500m</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>30,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>15,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>7,500</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"42\">\r\n<p>6.</p>\r\n</td>\r\n<td width=\"208\">\r\n<p>6,501m - 7,000m</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>25,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>12,500</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>6,250</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"42\">\r\n<p>7.</p>\r\n</td>\r\n<td width=\"208\">\r\n<p>Mt. Amadablam (6,812m)</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>40,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>20,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>10,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"42\">\r\n<p>8.</p>\r\n</td>\r\n<td width=\"208\">\r\n<p>Less than 6,500m</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>20,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>10,000</p>\r\n</td>\r\n<td width=\"125\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<ul>\r\n<li>Royalty for Foreign climbers is effective from 1 September 2025 AD</li>\r\n<li>Royalty for Nepali climbers is effective from 16 Bhadra 2082 BS</li>\r\n</ul>\r\n<p><em>Note: Maximum number of members in one team is 15 following the regulation.</em></p>', NULL, 'permit-fees-of-mountains-under-government-of-nepal', 5, 0, 0, 1, 'permit-under-gov-Y2kmEuwurfTQm2SL3l4ZDubUlpcEYb5l5MxlMsMC.jpg', 'under-govt-h9MoZWVJXbuzciYuW6qw5n4bhNdcwG7c6KVQQUZz.jpg', '1644909023818699403', 'Permit fee of Nepalese Peak, everest permit cost, permit of 8000m peak in Nepal, Spring cost of Everest permit, winter permit of Everest, Mountain climbing fee in Nepal, permit price of mountain in Nepal.', NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', 'en', '2022-02-15 07:10:23', '2025-07-20 17:07:28'),
(18, 1, NULL, 'Fees for Garbage Management of Mountains under Government of Nepal', 'Fees for Garbage Management of Mountains under Government of Nepal', '<p style=\"text-align: justify;\">Seven Summit Treks is always responsible to destroy or bring back the garbage waste of all the expeditions organized by the company itself. The team must destroy or recycle the possible items in front of the concerned authorities of the Nepal Government, however, the team is responsible to bring back the garbage to Kathmandu, which cannot be destroyed or recycled in the mountains and is handed over to the department as directed by the Government.</p>\r\n<p style=\"text-align: justify;\">The Mountaineering expedition team shall deposit the following amount for the garbage management:</p>\r\n<p><strong>(a) For the following mountains of the Khumbu and Annapurna Himalayan range:</strong></p>\r\n<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 46.2908%;\" width=\"295\">\r\n<p>For the Mount Everest</p>\r\n</td>\r\n<td style=\"width: 53.7092%;\" width=\"343\">\r\n<p>USD 4000 or equivalent to that in Nepalese Rupees</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 46.2908%;\" width=\"295\">\r\n<p>For the other mountain having the height of above 8001 meter except Mount Everest</p>\r\n</td>\r\n<td style=\"width: 53.7092%;\" width=\"343\">\r\n<p>USD 3000 or equivalent to that in Nepalese Rupees</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 46.2908%;\" width=\"295\">\r\n<p>For the mountain having the height of 7001 to 8000 meters and Amadablam mountain</p>\r\n</td>\r\n<td style=\"width: 53.7092%;\" width=\"343\">\r\n<p>USD 2000 or equivalent to that in Nepalese Rupees</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 46.2908%;\" width=\"295\">\r\n<p>For the mountain having the height of 6501 to 7000 meter</p>\r\n</td>\r\n<td style=\"width: 53.7092%;\" width=\"343\">\r\n<p>USD 1000 or equivalent to that in Nepalese Rupees</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 46.2908%;\" width=\"295\">\r\n<p>For the mountain having the height of less than 6500 meter</p>\r\n</td>\r\n<td style=\"width: 53.7092%;\" width=\"343\">\r\n<p>USD 500 or equivalent to that in Nepalese Rupees</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>(b) For the following mountains of the other Himalayan range other than expressed in clause (a):</strong></p>\r\n<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 46.2908%;\" width=\"295\">\r\n<p>Mountains above than 8,000 meters</p>\r\n</td>\r\n<td style=\"width: 53.7092%;\" width=\"343\">\r\n<p>USD 3000 or equivalent to that in Nepalese Rupees</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 46.2908%;\" width=\"295\">\r\n<p>Mountains less than 8,000 meters</p>\r\n</td>\r\n<td style=\"width: 53.7092%;\" width=\"343\">\r\n<p>USD 500 or equivalent to that in Nepalese Rupees</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<p style=\"text-align: justify;\">Seven Summit Treks is always responsible to destroy or bring back the garbage waste of all the expeditions organized by the company itself. The team must destroy or recycle the possible items in front of the concerned authorities of the Nepal Government, however, the team is responsible to bring back the garbage to Kathmandu, which cannot be destroyed or recycled in the mountains and is handed over to the department as directed by the Government.</p>', 'fees-for-garbage-management-of-mountains-under-government-of-nepal', 5, 0, 0, 2, 'garbage-under-gov-YMHGqlEruV4SXZIDQwjbbSGcgpsWN8GehSmSTWy4.jpg', 'garbage-4iJ4VDXzhKSd5K921ajPNSshJVdrze2rMAYc0rdi.jpg', '1644918164565297316', NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', 'en', '2022-02-15 09:42:44', '2024-06-09 16:53:20');
INSERT INTO `page_models` (`id`, `page_author`, `template`, `page_title`, `sub_title`, `page_content`, `page_excerpt`, `uri`, `page_type`, `page_category`, `page_parent`, `page_order`, `page_banner`, `page_thumbnail`, `page_key`, `meta_keyword`, `meta_description`, `external_link`, `page_tags`, `status`, `published`, `is_active`, `is_draft`, `is_trashed`, `is_password_protected`, `comment`, `lang`, `created_at`, `updated_at`) VALUES
(20, 1, NULL, 'Permit Fees of Nepal Mountaineering Association (NMA) Peaks', 'Permit Fees of Nepal Mountaineering Association (NMA) Peaks', '<p style=\"text-align: justify;\">Nepal Mountaineering Association (NMA) is regulating 27 peaks and these peaks are termed “Expedition Peaks” or “Trekking Peaks”. These peaks are relatively easier to climb but some of them can be technically challenging which can be taken as preparation peaks for 8000ers mountains.</p>\r\n<p style=\"text-align: justify;\">The NMA has structured permit fees into two groups: Group A “NMA Expedition Peaks” and Group B “NMA Trekking Peaks”. The fee structure is as follows:</p>\r\n<p><strong>1. Service Charges for Foreign Climber per Person in USD</strong></p>\r\n<div class=\"uk-overflow-auto\">\r\n<table class=\"uk-table uk-table-striped\" style=\"width: 100%; height: 886.234px;\">\r\n<tbody>\r\n<tr style=\"height: 68.1719px;\">\r\n<td style=\"width: 8.8993%; text-align: center;\" width=\"60\">\r\n<p><strong>S.N.</strong></p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"97\">\r\n<p><strong>PEAKS</strong></p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p><strong>REGION</strong></p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p><strong>HEIGHT</strong></p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p><strong>SPRING</strong></p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p><strong>AUTUMN</strong></p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p><strong>SUMMER/WINTER</strong></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 68.1719px;\">\r\n<td style=\"width: 8.8993%; text-align: center;\" width=\"60\">\r\n<p>1.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"97\">\r\n<p>Cholatse</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Khumbu</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,440m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 68.1719px;\">\r\n<td style=\"width: 8.8993%; text-align: center;\" width=\"60\">\r\n<p>2.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"97\">\r\n<p>Kyazo Ri</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Mahalangur</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,186m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 68.1719px;\">\r\n<td style=\"width: 8.8993%; text-align: center;\" width=\"60\">\r\n<p>3.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"97\">\r\n<p>Phari Lapcha</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Mahalangur</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,017m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 68.1719px;\">\r\n<td style=\"width: 8.8993%; text-align: center;\" width=\"60\">\r\n<p>4.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"97\">\r\n<p>Nirekha</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Mahalangur</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,159m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 68.1719px;\">\r\n<td style=\"width: 8.8993%; text-align: center;\" width=\"60\">\r\n<p>5.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"97\">\r\n<p>Langsisa Ri</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Jugal</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,427m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 68.1719px;\">\r\n<td style=\"width: 8.8993%; text-align: center;\" width=\"60\">\r\n<p>6.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"97\">\r\n<p>Ombigaichen</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Mahalangur</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,340m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 68.1719px;\">\r\n<td style=\"width: 8.8993%; text-align: center;\" width=\"60\">\r\n<p>7.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"97\">\r\n<p>Bokta</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Kanchenjunga</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,143m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 68.1719px;\">\r\n<td style=\"width: 8.8993%; text-align: center;\" width=\"60\">\r\n<p>8.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"97\">\r\n<p>Chekigo</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Gaurishankar</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,257m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 68.1719px;\">\r\n<td style=\"width: 8.8993%; text-align: center;\" width=\"60\">\r\n<p>9.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"97\">\r\n<p>Lobuje West</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Khumbu</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,145m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 68.1719px;\">\r\n<td style=\"width: 8.8993%; text-align: center;\" width=\"60\">\r\n<p>10.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"97\">\r\n<p>Larkya Peak</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Manaslu</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,249m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 68.1719px;\">\r\n<td style=\"width: 8.8993%; text-align: center;\" width=\"60\">\r\n<p>11.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"97\">\r\n<p>ABI</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Mahalangur</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,097m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 68.1719px;\">\r\n<td style=\"width: 8.8993%; text-align: center;\" width=\"60\">\r\n<p>12.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"97\">\r\n<p>Yubra Himal</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Langtang</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,035m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.8993%; text-align: center;\">\r\n<p>13.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"111\">\r\n<p>Hiunchuli</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Annapurna</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,441m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.8993%; text-align: center;\">\r\n<p>14.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"111\">\r\n<p>Singu Chuli</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Annapurna</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,501m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>500</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"72\">\r\n<p>250</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"128\">\r\n<p>200</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.8993%; text-align: center;\">\r\n<p>15.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"111\">\r\n<p>Mera Peak</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Khumbu</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,470m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.8993%; text-align: center;\">\r\n<p>16.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"111\">\r\n<p>Kusum Kangaru</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Khumbu</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,367m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.8993%; text-align: center;\">\r\n<p>17.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"111\">\r\n<p>Kwangde</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Khumbu</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,011m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.8993%; text-align: center;\">\r\n<p>18.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"111\">\r\n<p>Chulu West</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Manang</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,419m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"72\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"128\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.8993%; text-align: center;\">\r\n<p>19.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"111\">\r\n<p>Chulu East</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Manang</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,584m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>500</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"72\">\r\n<p>250</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"128\">\r\n<p>200</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.8993%; text-align: center;\">\r\n<p>20.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"111\">\r\n<p>Island Peak</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Khumbu</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,160m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.8993%; text-align: center;\">\r\n<p>21.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"111\">\r\n<p>Pharchamo</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Rolwaling</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,187m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.8993%; text-align: center;\">\r\n<p>22.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"111\">\r\n<p>Lobuje/Lobuche</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Khumbu</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,119m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.8993%; text-align: center;\">\r\n<p>23.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"111\">\r\n<p>Ramdung</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Rolwaling</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>5,925m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.8993%; text-align: center;\">\r\n<p>24.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"111\">\r\n<p>Pisang Peak</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Manang</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>6,091m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.8993%; text-align: center;\">\r\n<p>25.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"111\">\r\n<p>Khongma-Tse</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Khumbu</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>5,849m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.8993%; text-align: center;\">\r\n<p>26.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"111\">\r\n<p>Naya Kanga</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Langtang</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>5,844m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.8993%; text-align: center;\">\r\n<p>27.</p>\r\n</td>\r\n<td style=\"width: 18.9696%; text-align: center;\" width=\"111\">\r\n<p>Paldor Peak</p>\r\n</td>\r\n<td style=\"width: 17.2131%; text-align: center;\" width=\"104\">\r\n<p>Langtang</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>5,896m</p>\r\n</td>\r\n<td style=\"width: 11.1241%; text-align: center;\" width=\"63\">\r\n<p>350</p>\r\n</td>\r\n<td style=\"width: 12.6464%; text-align: center;\" width=\"51\">\r\n<p>175</p>\r\n</td>\r\n<td style=\"width: 20.0234%; text-align: center;\" width=\"47\">\r\n<p>175</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p><strong>2. Service Charges for Nepalese Climber per Person in NPR</strong></p>\r\n<div class=\"uk-overflow-auto\">\r\n<table class=\"uk-table uk-table-striped\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\" width=\"60\">\r\n<p><strong>S.N.</strong></p>\r\n</td>\r\n<td style=\"width: 16.1721%; text-align: center;\" width=\"97\">\r\n<p><strong>PEAKS</strong></p>\r\n</td>\r\n<td style=\"width: 17.2107%; text-align: center;\" width=\"104\">\r\n<p><strong>REGION</strong></p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p><strong>HEIGHT</strong></p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p><strong>SPRING</strong></p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p><strong>AUTUMN</strong></p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p><strong>SUMMER/WINTER</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\" width=\"60\">\r\n<p>1.</p>\r\n</td>\r\n<td style=\"width: 16.1721%; text-align: center;\" width=\"97\">\r\n<p>Cholatse</p>\r\n</td>\r\n<td style=\"width: 17.2107%; text-align: center;\" width=\"104\">\r\n<p>Khumbu</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,440m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\" width=\"60\">\r\n<p>2.</p>\r\n</td>\r\n<td style=\"width: 16.1721%; text-align: center;\" width=\"97\">\r\n<p>Kyazo Ri</p>\r\n</td>\r\n<td style=\"width: 17.2107%; text-align: center;\" width=\"104\">\r\n<p>Mahalangur</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,186m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\" width=\"60\">\r\n<p>3.</p>\r\n</td>\r\n<td style=\"width: 16.1721%; text-align: center;\" width=\"97\">\r\n<p>Phari Lapcha</p>\r\n</td>\r\n<td style=\"width: 17.2107%; text-align: center;\" width=\"104\">\r\n<p>Mahalangur</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,017m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\" width=\"60\">\r\n<p>4.</p>\r\n</td>\r\n<td style=\"width: 16.1721%; text-align: center;\" width=\"97\">\r\n<p>Nirekha</p>\r\n</td>\r\n<td style=\"width: 17.2107%; text-align: center;\" width=\"104\">\r\n<p>Mahalangur</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,159m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\" width=\"60\">\r\n<p>5.</p>\r\n</td>\r\n<td style=\"width: 16.1721%; text-align: center;\" width=\"97\">\r\n<p>Langsisa Ri</p>\r\n</td>\r\n<td style=\"width: 17.2107%; text-align: center;\" width=\"104\">\r\n<p>Jugal</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,427m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\" width=\"60\">\r\n<p>6.</p>\r\n</td>\r\n<td style=\"width: 16.1721%; text-align: center;\" width=\"97\">\r\n<p>Ombigaichen</p>\r\n</td>\r\n<td style=\"width: 17.2107%; text-align: center;\" width=\"104\">\r\n<p>Mahalangur</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,340m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\" width=\"60\">\r\n<p>7.</p>\r\n</td>\r\n<td style=\"width: 16.1721%; text-align: center;\" width=\"97\">\r\n<p>Bokta</p>\r\n</td>\r\n<td style=\"width: 17.2107%; text-align: center;\" width=\"104\">\r\n<p>Kanchenjunga</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,143m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\" width=\"60\">\r\n<p>8.</p>\r\n</td>\r\n<td style=\"width: 16.1721%; text-align: center;\" width=\"97\">\r\n<p>Chekigo</p>\r\n</td>\r\n<td style=\"width: 17.2107%; text-align: center;\" width=\"104\">\r\n<p>Gaurishankar</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,257m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\" width=\"60\">\r\n<p>9.</p>\r\n</td>\r\n<td style=\"width: 16.1721%; text-align: center;\" width=\"97\">\r\n<p>Lobuje West</p>\r\n</td>\r\n<td style=\"width: 17.2107%; text-align: center;\" width=\"104\">\r\n<p>Khumbu</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,145m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\" width=\"60\">\r\n<p>10.</p>\r\n</td>\r\n<td style=\"width: 16.1721%; text-align: center;\" width=\"97\">\r\n<p>Larkya Peak</p>\r\n</td>\r\n<td style=\"width: 17.2107%; text-align: center;\" width=\"104\">\r\n<p>Manaslu</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,249m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\" width=\"60\">\r\n<p>11.</p>\r\n</td>\r\n<td style=\"width: 16.1721%; text-align: center;\" width=\"97\">\r\n<p>ABI</p>\r\n</td>\r\n<td style=\"width: 17.2107%; text-align: center;\" width=\"104\">\r\n<p>Mahalangur</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,097m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\" width=\"60\">\r\n<p>12.</p>\r\n</td>\r\n<td style=\"width: 16.1721%; text-align: center;\" width=\"97\">\r\n<p>Yubra Himal</p>\r\n</td>\r\n<td style=\"width: 17.2107%; text-align: center;\" width=\"104\">\r\n<p>Langtang</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,035m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\">\r\n<p>13.</p>\r\n</td>\r\n<td style=\"width: 18.9911%; text-align: center;\" width=\"111\">\r\n<p>Hiunchuli</p>\r\n</td>\r\n<td style=\"width: 15.1335%; text-align: center;\" width=\"104\">\r\n<p>Annapurna</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,441m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\">\r\n<p>14.</p>\r\n</td>\r\n<td style=\"width: 18.9911%; text-align: center;\" width=\"111\">\r\n<p>Singu Chuli</p>\r\n</td>\r\n<td style=\"width: 15.1335%; text-align: center;\" width=\"104\">\r\n<p>Annapurna</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,501m</p>\r\n</td>\r\n<td style=\"width: 10.9792%; text-align: center;\" width=\"63\">\r\n<p>25,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>12,500</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>6,250</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\">\r\n<p>15.</p>\r\n</td>\r\n<td style=\"width: 18.9911%; text-align: center;\" width=\"111\">\r\n<p>Mera Peak</p>\r\n</td>\r\n<td style=\"width: 15.1335%; text-align: center;\" width=\"104\">\r\n<p>Khumbu</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,470m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\">\r\n<p>16.</p>\r\n</td>\r\n<td style=\"width: 18.9911%; text-align: center;\" width=\"111\">\r\n<p>Kusum Kangaru</p>\r\n</td>\r\n<td style=\"width: 15.1335%; text-align: center;\" width=\"104\">\r\n<p>Khumbu</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,367m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\">\r\n<p>17.</p>\r\n</td>\r\n<td style=\"width: 18.9911%; text-align: center;\" width=\"111\">\r\n<p>Kwangde</p>\r\n</td>\r\n<td style=\"width: 15.1335%; text-align: center;\" width=\"104\">\r\n<p>Khumbu</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,011m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\">\r\n<p>18.</p>\r\n</td>\r\n<td style=\"width: 18.9911%; text-align: center;\" width=\"111\">\r\n<p>Chulu West</p>\r\n</td>\r\n<td style=\"width: 15.1335%; text-align: center;\" width=\"104\">\r\n<p>Manang</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,419m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\">\r\n<p>19.</p>\r\n</td>\r\n<td style=\"width: 18.9911%; text-align: center;\" width=\"111\">\r\n<p>Chulu East</p>\r\n</td>\r\n<td style=\"width: 15.1335%; text-align: center;\" width=\"104\">\r\n<p>Manang</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,584m</p>\r\n</td>\r\n<td style=\"width: 10.9792%; text-align: center;\" width=\"63\">\r\n<p>25,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>12,500</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>6,250</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\">\r\n<p>20.</p>\r\n</td>\r\n<td style=\"width: 18.9911%; text-align: center;\" width=\"111\">\r\n<p>Island Peak</p>\r\n</td>\r\n<td style=\"width: 15.1335%; text-align: center;\" width=\"104\">\r\n<p>Khumbu</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,160m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\">\r\n<p>21.</p>\r\n</td>\r\n<td style=\"width: 18.9911%; text-align: center;\" width=\"111\">\r\n<p>Pharchamo</p>\r\n</td>\r\n<td style=\"width: 15.1335%; text-align: center;\" width=\"104\">\r\n<p>Rolwaling</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,187m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\">\r\n<p>22.</p>\r\n</td>\r\n<td style=\"width: 18.9911%; text-align: center;\" width=\"111\">\r\n<p>Lobuje/Lobuche</p>\r\n</td>\r\n<td style=\"width: 15.1335%; text-align: center;\" width=\"104\">\r\n<p>Khumbu</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,119m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\">\r\n<p>23.</p>\r\n</td>\r\n<td style=\"width: 18.9911%; text-align: center;\" width=\"111\">\r\n<p>Ramdung</p>\r\n</td>\r\n<td style=\"width: 15.1335%; text-align: center;\" width=\"104\">\r\n<p>Rolwaling</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>5,925m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\">\r\n<p>24.</p>\r\n</td>\r\n<td style=\"width: 18.9911%; text-align: center;\" width=\"111\">\r\n<p>Pisang Peak</p>\r\n</td>\r\n<td style=\"width: 15.1335%; text-align: center;\" width=\"104\">\r\n<p>Manang</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>6,091m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\">\r\n<p>25.</p>\r\n</td>\r\n<td style=\"width: 18.9911%; text-align: center;\" width=\"111\">\r\n<p>Khongma-Tse</p>\r\n</td>\r\n<td style=\"width: 15.1335%; text-align: center;\" width=\"104\">\r\n<p>Khumbu</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>5,849m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\">\r\n<p>26.</p>\r\n</td>\r\n<td style=\"width: 18.9911%; text-align: center;\" width=\"111\">\r\n<p>Naya Kanga</p>\r\n</td>\r\n<td style=\"width: 15.1335%; text-align: center;\" width=\"104\">\r\n<p>Langtang</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>5,844m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.90208%; text-align: center;\">\r\n<p>27.</p>\r\n</td>\r\n<td style=\"width: 18.9911%; text-align: center;\" width=\"111\">\r\n<p>Paldor Peak</p>\r\n</td>\r\n<td style=\"width: 15.1335%; text-align: center;\" width=\"104\">\r\n<p>Langtang</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>5,896m</p>\r\n</td>\r\n<td style=\"width: 11.1276%; text-align: center;\" width=\"63\">\r\n<p>20,000</p>\r\n</td>\r\n<td style=\"width: 12.6113%; text-align: center;\" width=\"72\">\r\n<p>10,000</p>\r\n</td>\r\n<td style=\"width: 22.8487%; text-align: center;\" width=\"128\">\r\n<p>5,000</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p><em>Note: Maximum number of members in one team is 15.</em></p>\r\n<p><strong>Garbage Deposit Fees:</strong></p>\r\n<p style=\"text-align: justify;\">A Garbage Deposit fee of USD 500 is necessary payable to the NMA to obtain permits for all 27 peaks. And, refunds on the Garbage Deposit shall be as per the NMA rules and regulations.</p>', '<p style=\"text-align: justify;\">Nepal Mountaineering Association (NMA) is regulating 27 peaks and these peaks are termed “Expedition Peaks” or “Trekking Peaks”. These peaks are relatively easier to climb but some of them can be technically challenging which can be taken as preparation peaks for 8000ers mountains.</p>', 'permit-fees-of-nepal-mountaineering-association-nma-peaks', 5, 0, 0, 3, 'permit-under-nma-a8sgNzH0S8a2mASxyuEarsDtavYxAX8YiMRMS5fe.jpg', 'nma-r1dXxrBbADcl4RkPYogK3bmKAZrJx9t1BDX43vym.jpg', '1644918359971395479', NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', 'en', '2022-02-15 09:45:59', '2025-07-20 14:29:57');
INSERT INTO `page_models` (`id`, `page_author`, `template`, `page_title`, `sub_title`, `page_content`, `page_excerpt`, `uri`, `page_type`, `page_category`, `page_parent`, `page_order`, `page_banner`, `page_thumbnail`, `page_key`, `meta_keyword`, `meta_description`, `external_link`, `page_tags`, `status`, `published`, `is_active`, `is_draft`, `is_trashed`, `is_password_protected`, `comment`, `lang`, `created_at`, `updated_at`) VALUES
(22, 1, NULL, 'Permit Fees for Trekking in Nepal', 'Permit Fees for Trekking in Nepal', '<p>Trekkers are required to have a valid permit for the region they want to trek. These permits may differ from one region to another. Trekkers must have a special permit issued by the Department of Immigration for trekking in restricted areas and other trekking permits for the rest of the regions from authorized associations controlled and supervised by the government.</p>\r\n<p><strong><u>1. 1. SPECIAL PERMIT FOR RESTRICTED AREAS</u></strong></p>\r\n<p>Trekkers in Nepal are permitted to trek as FIT (Free Individual Trekker) or in a group of various sizes. Some of the trekking regions are categorized as restricted areas that are regulated by the Government of Nepal and FITs are strictly prohibited. Restricted areas are the areas that are highly regulated by the government of Nepal due to close international borders in proximity. Trekkers are required to have a special permit issued by the Department of Immigration. Trekking regions like Mustang, Dolpo, Kanchenjunga, and Manaslu are among the restricted areas of Nepal. To obtain the permit, you will need to have at least 2 participants, accompanied by a licensed trekking guide, and need to go through a registered trekking company in Nepal.</p>\r\n<p>Interested trekkers should contact the authorized trekking agencies who then can apply for permits (on behalf of trekkers) at the Department of Immigration fulfilling all the necessary formalities. Trekkers should be trekking in a group (minimum of two persons) accompanied by a licensed trekking guide. There are different rates (trekking Permit fees) applicable for different routes to acquire the Permits in restricted areas. Permit fees are quoted in US dollars but payable in Nepali Rupees. A trekking permit is not issued beyond the visa expiration date. Hence, trekkers must have a valid visa for a sufficient number of days covering their trekking schedule.</p>\r\n<p>Trekkers are required to trek only in the specified or designated route as per the Trekking Permit. They are not allowed to change routes or the concerned trekking agency/trekking guide accompanying the group must not let trekkers change the route. Mountaineers with expedition permits should get trekking permits as well if they have to pass through restricted areas to climb peaks.</p>\r\n<table border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td width=\"60\">\r\n<p><strong>S.N.</strong></p>\r\n</td>\r\n<td width=\"356\">\r\n<p><strong>REGIONS / VDCS</strong></p>\r\n</td>\r\n<td width=\"208\">\r\n<p><strong>PERMIT FEE</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"60\">\r\n<p>1.</p>\r\n</td>\r\n<td width=\"356\">\r\n<p>Upper Mustang</p>\r\n<ol>\r\n<li>Lomanthang Rural Municipality (All areas of wards no. 1 to 5)</li>\r\n<li>Lo-Ghekar Damodarkunda Rural Municipality (All areas of wards no. 1 to 5)</li>\r\n<li>Baragung Muktichetra Rural Municipality (All areas of ward no. 3 and Satang Village of ward no.5)</li>\r\n</ol>\r\n</td>\r\n<td width=\"208\">\r\n<p>USD500 per person (for the first 10 days)</p>\r\n<p>USD 50 per person /Day (beyond 10 days)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"60\">\r\n<p>2.</p>\r\n</td>\r\n<td width=\"356\">\r\n<p>Upper Dolpa</p>\r\n<ol>\r\n<li>Dolpo Buddha Rural Municipality (All areas of wards no. 4 to 6)</li>\r\n<li>Shey Phoksundo Rural Municipality (All areas of wards no. 1 to 7)</li>\r\n<li>Charka Tangsong Rural Municipality (All areas of wards no. 1 to 6)</li>\r\n</ol>\r\n</td>\r\n<td width=\"208\">\r\n<p>USD500 per person (for the first 10 days)</p>\r\n<p>USD 50 per person /Day (beyond 10 days)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"60\">\r\n<p>3.</p>\r\n</td>\r\n<td width=\"356\">\r\n<p>Gorkha Manaslu Area</p>\r\n<p>Chumnubri Rural Municipality (All areas of wards nos. 1,2,3 and 4)</p>\r\n</td>\r\n<td width=\"208\">\r\n<p><strong>September – November:</strong></p>\r\n<p>USD 100 per person/week</p>\r\n<p>USD 15 per person/day (beyond 1 week)</p>\r\n<p><strong>December – August:</strong></p>\r\n<p>USD 75 per person/week</p>\r\n<p>USD 10 per person/day (beyond 1 week)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"60\">\r\n<p>4.</p>\r\n</td>\r\n<td width=\"356\">\r\n<p>Humla</p>\r\n<ol>\r\n<li>Simikot Rural Municipality (All areas of wards nos. 1,6 and 7)</li>\r\n<li>Namkha Rural Municipality (All areas of wards no. 1 to 6)</li>\r\n<li>Changkheli Rural Municipality (All areas of wards no. 3 to 5)</li>\r\n</ol>\r\n</td>\r\n<td width=\"208\">\r\n<p>USD 50 per person/week</p>\r\n<p>USD 10 per person/day (beyond 1 week)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"60\">\r\n<p>5.</p>\r\n</td>\r\n<td width=\"356\">\r\n<p>Taplejung</p>\r\n<ol>\r\n<li>Phantanglung Rural Municipality (All areas of wards nos. 6 and 7)</li>\r\n<li>Mikwakhola Rural Municipality (All areas of ward no. 5)</li>\r\n<li>Sirijunga Rural Municipality (All areas of ward no. 8)</li>\r\n</ol>\r\n</td>\r\n<td width=\"208\">\r\n<p>USD 20 per person/ week (for the first 4 weeks)</p>\r\n<p>USD 25 per person /week (beyond 4 weeks)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"60\">\r\n<p>6.</p>\r\n</td>\r\n<td width=\"356\">\r\n<p>Lower Dolpa Area</p>\r\n<ol>\r\n<li>Thulibheri municipality (All areas of wards no. 1 to 11)</li>\r\n<li>Tripurasundari municipality (All areas of wards no. 1 to 11)</li>\r\n<li>Dolpo Buddha Rural Municipality (All areas of wards no. 1 to 3)</li>\r\n<li>Shey Phoksundo Rural Municipality (All areas of wards no. 8 and 9)</li>\r\n<li>Jagdulla Rural Municipality (All areas of wards no. 1 to 6)</li>\r\n<li>Mudkechula Rural Municipality (All areas of wards no. 1 to 9)</li>\r\n<li>Kaike Rural Municipality (All areas of wards no. 1 to 7)</li>\r\n</ol>\r\n</td>\r\n<td width=\"208\">\r\n<p>USD 20 per person/ week</p>\r\n<p>USD 5 per person /day (beyond 1 week)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"60\">\r\n<p>7.</p>\r\n</td>\r\n<td width=\"356\">\r\n<p>Dolakha</p>\r\n<ol>\r\n<li>Gaurishankhar Rural Municipality (All areas of ward no. 9)</li>\r\n<li>Bighu Rural Municipality (All areas of ward no. 1)</li>\r\n</ol>\r\n</td>\r\n<td width=\"208\">\r\n<p>USD 20 per person/ week</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"60\">\r\n<p>8.</p>\r\n</td>\r\n<td width=\"356\">\r\n<p>Gorkha Tsum Valley Area</p>\r\n<p>Sirdibas-Lokpa-Chumling-Chekampar-Nile-Chule</p>\r\n<p> </p>\r\n<ol>\r\n<li>Chumnubri   Rural Municipality (All areas of wards nos. 3,6 and 7)</li>\r\n</ol>\r\n</td>\r\n<td width=\"208\">\r\n<p><strong>September – November:</strong></p>\r\n<p>USD 40 per person/week</p>\r\n<p>USD 7 per person/day (beyond 1 week)</p>\r\n<p><strong>December – August:</strong></p>\r\n<p>USD 30 per person/week</p>\r\n<p>USD 7 per person/day (beyond 1 week)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"60\">\r\n<p>9.</p>\r\n</td>\r\n<td width=\"356\">\r\n<p>Sankhuwasabha</p>\r\n<ol>\r\n<li>Bhotkhola Rural Municipality (All areas of wards no. 1 to 5)</li>\r\n<li>Makalu Rural Municipality (All areas of ward no. 4)</li>\r\n</ol>\r\n</td>\r\n<td width=\"208\">\r\n<p>USD 20 per person/ week (for the first 4 weeks)</p>\r\n<p>USD 25 per person /week (beyond 4 weeks)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"60\">\r\n<p>10.</p>\r\n</td>\r\n<td width=\"356\">\r\n<p>Solukhumbu</p>\r\n<p>Khumbu Pasang Lahmu Rural Municipality (All areas of ward no. 5)</p>\r\n</td>\r\n<td width=\"208\">\r\n<p>USD 20 per person/ week (for the first 4 weeks)</p>\r\n<p>USD 25 per person /week (beyond 4 weeks)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"60\">\r\n<p>11.</p>\r\n</td>\r\n<td width=\"356\">\r\n<p>Rasuwa</p>\r\n<p>Gosaikunda Rural Municipality (All areas of ward no. 1 and some areas of ward no. 2)</p>\r\n</td>\r\n<td width=\"208\">\r\n<p>USD 20 per person /week</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"60\">\r\n<p>12.</p>\r\n</td>\r\n<td width=\"356\">\r\n<p>Manang</p>\r\n<ol>\r\n<li>Narpa Rural Municipality (All areas of wards no. 1 to 5)</li>\r\n<li>Nasho Rural Municipality (All areas of wards no. 6 and 7)</li>\r\n</ol>\r\n</td>\r\n<td width=\"208\">\r\n<p><strong>September – November:</strong></p>\r\n<p>USD 100 per person/week</p>\r\n<p>USD 15 per person/day (beyond 1 week)</p>\r\n<p><strong>December – August:</strong></p>\r\n<p>USD 75 per person/week</p>\r\n<p>USD 15 per person/day (beyond 1 week)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"60\">\r\n<p>13.</p>\r\n</td>\r\n<td width=\"356\">\r\n<p>Bajhang</p>\r\n<ol>\r\n<li>Saipal Rural Municipality (All areas of wards no. 1 to 5)</li>\r\n</ol>\r\n</td>\r\n<td width=\"208\">\r\n<p>USD 90 per person/week for the first week</p>\r\n<p>USD 15 per person/day (beyond 1 week)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"60\">\r\n<p>14.</p>\r\n</td>\r\n<td width=\"356\">\r\n<p>Mugu</p>\r\n<p>Mugumakarmarong Rural Municipality (All areas of wards no. 1 to 9)</p>\r\n</td>\r\n<td width=\"208\">\r\n<p>USD 100 per person/week</p>\r\n<p>USD 15 per person/day (beyond 1 week)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"60\">\r\n<p>15.</p>\r\n</td>\r\n<td width=\"356\">\r\n<p>Darchula</p>\r\n<p>Vyas Rural Municipality (All areas of ward no. 1)</p>\r\n</td>\r\n<td width=\"208\">\r\n<p>USD 90 per person/week</p>\r\n<p>USD 15 per person/day (beyond 1 week)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><em>Note: In the case of Upper Mustang and Upper Dolpa Region if the royalty paid for mountain expedition is less than the fee for the trekking permit then the difference amount should be paid.</em></p>\r\n<p> </p>\r\n<p><strong><u>2. 2. NATIONAL PARK / CONSERVATION AREAS PROJECT PERMITS</u></strong></p>\r\n<p>Most of the trekking regions in Nepal are located either inside national parks or conservation areas. Trekkers are required to obtain these permits for most of the trekking trails in Nepal. FITs are allowed to trek inside the national parks or conservation areas. To obtain a trekking permit for these regions you need to fill up a form and submit it with a copy of your passport and passport size photo attached at the Nepal Tourism Board Office. This permit is issued by Nepal Tourism Board for trekking in Everest, Annapurna, Langtang, Manaslu, Mustang, and Rolwaling regions are some of the notable regions where you will need this permit.</p>\r\n<p>Where to get it: Nepal Tourism Board, Bhrikuti Mandap, Kathmandu</p>\r\n<p>Permit Cost:</p>\r\n<ul>\r\n<li><em>NPR 3,390 for National Park Permit</em></li>\r\n<li><em>NPR 3,000 for Conservation Area Permit per Trekker</em></li>\r\n</ul>\r\n<p><strong>3. TREKKING INFORMATION MANAGEMENT SYSTEM (TIMS)</strong></p>\r\n<p>Trekkers Information Management System or in short TIMS is a permit implemented jointly by the Nepal Tourism Board (NTB) and Trekking Agencies Association of Nepal (TAAN). TIMS is implemented to ensure trekkers’ safety and security and control illegal trekking. This permit is required in all trekking regions of Nepal apart from the controlled area, where you will need a special permit. Group trekkers will have to obtain Blue TIMS cards by paying a fee of Rs 1,000 per person, while Free Individual Trekkers (FITs) have to get Green TIMS cards by paying a fee of Rs 2,000. Similarly, group trekkers from SAARC countries have to pay Rs 300 for TIMS cards, while FITs from the SAARC region have to pay Rs 600 each.</p>\r\n<p>Although the majority of the trekking regions in Nepal require a TIMS permit, the permit is only valid for the trekking area/route as mentioned in the permit.</p>\r\n<p>Where to get it: Nepal Tourism Board, Bhrikuti Mandap, Kathmandu</p>\r\n<p>Permit Cost: <em>NPR 2,000 per Trekker</em></p>\r\n<p><strong>4. RURAL MUNICIPALITY FEES</strong></p>\r\n<p>A few rural municipalities have implemented that trekkers who are trekking inside these areas need a permit. These permits are issued at the starting point of the trek.</p>\r\n<p>Where to get it: You can obtain this permit at the check post of the rural municipalities, such as Lukla, in the Everest region.</p>\r\n<p>Permit Cost:</p>\r\n<ul>\r\n<li><em>NPR 2,000 per trekker for Everest Region</em></li>\r\n<li><em>NPR 2,000 per trekkerfor Makalu Region</em></li>\r\n</ul>', '<p style=\"text-align: justify;\">Trekkers are required to have a valid permit for the region they want to trek. These permits may differ from one region to another. Trekkers must have a special permit issued by the Department of Immigration for trekking in restricted areas and other trekking permits for the rest of the regions from authorized associations controlled and supervised by the government.</p>', 'permit-fees-for-trekking-in-nepal', 5, 0, 0, 4, 'permit-for-trekking-ZcXYo7nHGR3eR28mYsyJk004xOuk5L2uukJTy226.jpg', 'taan-JOnBFHG3AtWdKKUEzI34ZObrY6xrYGCHfB9rTkCo.jpg', '1644918515132392630', NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', 'en', '2022-02-15 09:48:35', '2025-07-20 13:16:45'),
(25, 1, NULL, 'Inquiry / Booking', 'Inquiry / Booking', NULL, NULL, 'inquiry-booking', 11, 0, 0, 1, 'inquiry-booking-banner-tcA0gidZWnc51rnHmm8hj6T8RBXNqMp66pgaR6qc.jpg', 'inquiry-booking-OgCnnTV9Fi9VCPEUYRsHxQ0KMunpksGVpK2LPbOL.jpg', '1661147111715564735', NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', 'en', '2022-08-22 05:45:11', '2022-08-25 07:45:52'),
(26, 1, NULL, 'Payment', 'Payment', '<p style=\"text-align: justify;\">After the confirmation of your booking, the client must deposit another 30% of the total amount before a month of arrival or the amount that has been agreed upon during the correspondence has to be deposited. And the remaining final payment must be paid after you arrive in Nepal. The payment could be in any form whether it be cash or credit payment. If you make a payment through a credit card there will be some extra charge by the bank. The clients must have a credit card with enough transaction limits available for any payment. Sometimes, cards are not acceptable or may not be applicable for enough transactions, so it is necessary to know the limits beforehand and contact your banks at the origin place for all the details required.</p>\r\n<p style=\"text-align: justify;\">All bank charges or any wire transfer charges will be yours (for the final payment), we don\'t charge any extra amount for the money transferred. Make sure to transfer the money to the account details provided during the correspondence. We won\'t be responsible for the loss of money deposited on any other accounts except those provided by us.</p>\r\n<p style=\"text-align: justify;\">You can also find the company\'s bank details provided <a href=\"https://www.sevensummittreks.com/storage/files/1/pDF/Seven%20Summit%20Treks%20HB.pdf\" target=\"_blank\" rel=\"noopener\"><strong>here</strong></a>.</p>', NULL, 'payment', 11, 0, 0, 2, 'payment-vi9AjiElPvkf8jlU0OOrTDis1RfD9oODN5T4MVPv.jpg', 'payment-thumbnail-cRYdh1MLoQBrrb2gV4Zbz2G2Cq610YyW8hzxqGcd.jpg', '1661416286760268043', NULL, NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', 'en', '2022-08-25 08:31:26', '2022-08-25 09:14:37'),
(28, 1, NULL, 'Fixed Departure Date for 8000m Peaks', 'Fixed Departure Date for 8000m Peaks', '<p style=\"text-align: justify;\">We offer fixed departure dates for our expeditions on all 14 peaks above 8000m. Climbing an 8000-meter peak is a challenging and physically demanding undertaking that requires a high level of fitness and previous mountaineering experience. These expeditions are led by experienced guides and support staff and include accommodations, meals, and all necessary equipment. It is also a time-consuming and expensive endeavor, as it typically requires several weeks of travel and acclimatization. The cost of the expeditions can vary depending on the mountain and the length of the trip.</p>\r\n<p><strong>Fixed Departure Dates for 8000m Expedition in Nepal:</strong></p>\r\n<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 8.66511%; text-align: center;\"><strong>S.N.</strong></td>\r\n<td style=\"width: 22.4824%; text-align: center;\"><strong>EXPEDITION</strong></td>\r\n<td style=\"width: 25.2938%; text-align: center;\"><strong>ARRIVAL IN KATHMANDU</strong></td>\r\n<td style=\"width: 23.6523%; text-align: center;\"><strong>DEPARTURE FROM KATHMANDU TO</strong></td>\r\n<td style=\"width: 19.9063%; text-align: center;\"><strong>DEPARTURE DATE FROM KATHMANDU</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.66511%; text-align: center;\">1.</td>\r\n<td style=\"width: 22.4824%; text-align: center;\"><a href=\"https://www.sevensummittreks.com/page/mt-everest-expedition-884886m-south.html\" target=\"_blank\" rel=\"noopener\">Mt. Everest</a></td>\r\n<td style=\"width: 25.2938%; text-align: center;\">07 April 2023</td>\r\n<td style=\"width: 23.6523%; text-align: center;\">Lukla</td>\r\n<td style=\"width: 19.9063%; text-align: center;\">09 April 2023</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.66511%; text-align: center;\">2.</td>\r\n<td style=\"width: 22.4824%; text-align: center;\"><a href=\"https://www.sevensummittreks.com/page/mt-kangchenjunga-expedition-8586m.html\" target=\"_blank\" rel=\"noopener\">Mt. Kangchenjunga</a></td>\r\n<td style=\"width: 25.2938%; text-align: center;\">10 April 2023</td>\r\n<td style=\"width: 23.6523%; text-align: center;\">Bhadrapur</td>\r\n<td style=\"width: 19.9063%; text-align: center;\">12 April 2023</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.66511%; text-align: center;\">3.</td>\r\n<td style=\"width: 22.4824%; text-align: center;\"><a href=\"https://www.sevensummittreks.com/page/mt-lhotse-expedition-8516m.html\" target=\"_blank\" rel=\"noopener\">Mt. Lhotse</a></td>\r\n<td style=\"width: 25.2938%; text-align: center;\">07 April 2023</td>\r\n<td style=\"width: 23.6523%; text-align: center;\">Lukla</td>\r\n<td style=\"width: 19.9063%; text-align: center;\">09 April 2023</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.66511%; text-align: center;\">4.</td>\r\n<td style=\"width: 22.4824%; text-align: center;\"><a href=\"https://www.sevensummittreks.com/page/mt-makalu-expedition-8485m.html\" target=\"_blank\" rel=\"noopener\">Mt. Makalu</a></td>\r\n<td style=\"width: 25.2938%; text-align: center;\">10 April 2023</td>\r\n<td style=\"width: 23.6523%; text-align: center;\">Tumlingtar</td>\r\n<td style=\"width: 19.9063%; text-align: center;\">12 April 2023</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.66511%; text-align: center;\">5.</td>\r\n<td style=\"width: 22.4824%; text-align: center;\"><a href=\"https://www.sevensummittreks.com/page/mt-dhaulagiri-expedition-8167m.html\" target=\"_blank\" rel=\"noopener\">Mt. Dhaulagiri</a></td>\r\n<td style=\"width: 25.2938%; text-align: center;\">03 April 2023</td>\r\n<td style=\"width: 23.6523%; text-align: center;\">Pokhara</td>\r\n<td style=\"width: 19.9063%; text-align: center;\">05 April 2023</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.66511%; text-align: center;\">6.</td>\r\n<td style=\"width: 22.4824%; text-align: center;\"><a href=\"https://www.sevensummittreks.com/page/mt-manaslu-expedition-8163m.html\" target=\"_blank\" rel=\"noopener\">Mt. Manaslu</a></td>\r\n<td style=\"width: 25.2938%; text-align: center;\">05 September 2023</td>\r\n<td style=\"width: 23.6523%; text-align: center;\">Besisahar</td>\r\n<td style=\"width: 19.9063%; text-align: center;\">07 September 2023</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.66511%; text-align: center;\">7.</td>\r\n<td style=\"width: 22.4824%; text-align: center;\"><a href=\"https://www.sevensummittreks.com/page/mt-annapurna-i-expedition-8091m.html\" target=\"_blank\" rel=\"noopener\">Mt. Annapurna I</a></td>\r\n<td style=\"width: 25.2938%; text-align: center;\">15 March 2023</td>\r\n<td style=\"width: 23.6523%; text-align: center;\">Pokhara</td>\r\n<td style=\"width: 19.9063%; text-align: center;\">17 March 2023</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>Fixed Departure Dates for 8000m Expedition in Pakistan:</strong></p>\r\n<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 8.75371%; text-align: center;\"><strong>S.N.</strong></td>\r\n<td style=\"width: 22.4036%; text-align: center;\"><strong>EXPEDITION</strong></td>\r\n<td style=\"width: 25.3714%; text-align: center;\"><strong>ARRIVAL IN ISLAMABAD</strong></td>\r\n<td style=\"width: 23.7384%; text-align: center;\"><strong>DEPARTURE FROM ISLAMABAD TO</strong></td>\r\n<td style=\"width: 19.7329%; text-align: center;\"><strong>DEPARTURE DATE FROM ISLAMABAD</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.75371%; text-align: center;\">1.</td>\r\n<td style=\"width: 22.4036%; height: 22.3906px; text-align: center;\"><a href=\"https://www.sevensummittreks.com/page/mt-k2-expedition-8611m.html\" target=\"_blank\" rel=\"noopener\">Mt. K2</a></td>\r\n<td style=\"width: 25.3714%; height: 22.3906px; text-align: center;\">15 June 2023</td>\r\n<td style=\"width: 23.7384%; height: 22.3906px; text-align: center;\">Skardu</td>\r\n<td style=\"width: 19.7329%; height: 22.3906px; text-align: center;\">16 June 2023</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.75371%; text-align: center;\">2.</td>\r\n<td style=\"width: 22.4036%; height: 22.3906px; text-align: center;\"><a href=\"https://www.sevensummittreks.com/page/mt-nanga-parbat-expedition-8125m.html\" target=\"_blank\" rel=\"noopener\">Mt. Nanga Parbat</a></td>\r\n<td style=\"width: 25.3714%; height: 22.3906px; text-align: center;\">07 June 2023</td>\r\n<td style=\"width: 23.7384%; height: 22.3906px; text-align: center;\">Chilas</td>\r\n<td style=\"width: 19.7329%; height: 22.3906px; text-align: center;\">09 June 2023</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.75371%; text-align: center;\">3.</td>\r\n<td style=\"width: 22.4036%; height: 22.3906px; text-align: center;\"><a href=\"https://www.sevensummittreks.com/page/mt-gasherbrum-i-expedition-8080m.html\" target=\"_blank\" rel=\"noopener\">Mt. Gasherbrum I</a></td>\r\n<td style=\"width: 25.3714%; height: 22.3906px; text-align: center;\">15 June 2023</td>\r\n<td style=\"width: 23.7384%; height: 22.3906px; text-align: center;\">Skardu</td>\r\n<td style=\"width: 19.7329%; height: 22.3906px; text-align: center;\">16 June 2023</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.75371%; text-align: center;\">4.</td>\r\n<td style=\"width: 22.4036%; height: 22.3906px; text-align: center;\"><a href=\"https://www.sevensummittreks.com/page/mt-broad-peak-expedition-8051m.html\" target=\"_blank\" rel=\"noopener\">Mt. Broad Peak</a></td>\r\n<td style=\"width: 25.3714%; height: 22.3906px; text-align: center;\">15 June 2023</td>\r\n<td style=\"width: 23.7384%; height: 22.3906px; text-align: center;\">Skardu</td>\r\n<td style=\"width: 19.7329%; height: 22.3906px; text-align: center;\">16 June 2023</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 8.75371%; text-align: center;\">5.</td>\r\n<td style=\"width: 22.4036%; height: 22.3906px; text-align: center;\"><a href=\"https://www.sevensummittreks.com/page/mt-gasherbrum-ii-expedition-8034m.html\" target=\"_blank\" rel=\"noopener\">Mt. Gasherbrum II</a></td>\r\n<td style=\"width: 25.3714%; height: 22.3906px; text-align: center;\">15 June 2023</td>\r\n<td style=\"width: 23.7384%; height: 22.3906px; text-align: center;\">Skardu</td>\r\n<td style=\"width: 19.7329%; height: 22.3906px; text-align: center;\">16 June 2023</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p><em><strong><a href=\"https://www.sevensummittreks.com/info/inquirybookingpayment\" target=\"_blank\" rel=\"noopener\">BOOK &amp; INQUIRY 📝</a></strong></em></p>\r\n<p><a href=\"https://www.sevensummittreks.com/type-contact-us\"><em><strong>CONTACT✉️</strong></em></a></p>', NULL, 'fixed-departure-date-for-8000m-peaks', 12, 0, 0, 5, '8000ers-01-B1SfM4K7WjODpRedXqXX9R5fuNb61JwSCkIEIn70.jpg', 'thumbnail-logo-mid-owGghxbN6RhwNKBbIf7NoYgpzz5vH3dcl6fpuqPt.jpg', '1672805881334652492', 'fixed departure dates, seven summit treks 2023, 8000m peaks,', NULL, NULL, NULL, '1', '1', '1', '0', '0', '0', '0', 'en', '2023-01-04 04:18:01', '2023-01-07 05:44:56');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `verified`, `created_at`, `updated_at`) VALUES
(17, 'bibekaryal0@gmail.com', 1, '2021-08-23 05:37:41', '2021-08-23 05:38:15'),
(19, 'admin@admin.com', 0, '2021-12-10 10:46:25', '2021-12-10 10:46:25'),
(20, 'root@admin.com', 1, '2021-12-10 10:47:04', '2021-12-10 10:47:07'),
(21, 'info@cyberlink.com.np', 1, '2021-12-10 10:50:34', '2021-12-10 10:50:36'),
(23, 'thaneswar.guragai@gmail.com', 1, '2022-02-01 08:02:02', '2022-02-01 08:02:07'),
(24, 'srbunitydeveloper@gmail.com', 1, '2022-12-19 06:19:21', '2022-12-19 06:20:16'),
(25, 'admin@admin45.com', 1, '2022-12-19 06:35:13', '2022-12-19 06:35:26'),
(26, 'eliza@email.com', 0, '2022-12-19 06:40:51', '2022-12-19 06:40:51'),
(27, 'june@test.com', 0, '2022-12-19 07:18:53', '2022-12-19 07:18:53'),
(28, 'june@tesrt.com', 0, '2022-12-19 07:20:09', '2022-12-19 07:20:09'),
(29, 'admin@admin.comg', 0, '2022-12-19 07:21:26', '2022-12-19 07:21:26'),
(30, 'admin@admin.comgfvf', 0, '2022-12-19 07:22:10', '2022-12-19 07:22:10'),
(31, 'jun@test.com', 0, '2022-12-19 07:22:41', '2023-01-02 17:05:36'),
(32, 'eliza@email.comff', 0, '2022-12-19 07:23:47', '2022-12-19 07:23:47'),
(33, 'vexa@mailinator.com', 0, '2022-12-19 07:24:38', '2022-12-19 07:24:38'),
(34, 'admin@test.com', 0, '2022-12-19 08:59:37', '2022-12-19 08:59:37'),
(35, 'june@te6.com', 0, '2022-12-19 09:16:02', '2022-12-19 09:16:02'),
(36, 'admin@tes1t.com', 0, '2022-12-19 09:17:46', '2022-12-19 09:17:46'),
(37, 'srxxbunitydeveloper@gmail.com', 0, '2022-12-19 09:19:06', '2022-12-19 09:19:06'),
(39, 'wedovo@mailinator.com', 0, '2023-01-01 09:16:04', '2023-01-01 09:16:18'),
(40, 'junepudasaini@gmail.com', 0, '2023-01-02 16:58:35', '2023-01-02 16:58:35'),
(41, 'ajsthapit@gmail.com', 0, '2023-01-23 15:08:47', '2023-01-23 15:08:47'),
(42, 'a.akeem@hotmail.com', 0, '2023-01-23 15:09:02', '2023-01-23 15:09:02'),
(43, 'a.thomson@coventry.ac.uk', 0, '2023-01-23 15:09:08', '2023-01-23 15:09:08'),
(44, 'adi.gans@virgin.net', 0, '2023-01-23 15:09:14', '2023-01-23 15:09:14'),
(45, 'aewieler@hotmail.com', 0, '2023-01-23 15:09:20', '2023-01-23 15:09:20'),
(46, 'agent_sly@hotmail.com', 0, '2023-01-23 15:09:32', '2023-01-23 15:09:32'),
(47, 'AJH104@bham.ac.uk', 0, '2023-01-23 15:09:43', '2023-01-23 15:09:43'),
(48, 'ajrehberg@gmail.com', 0, '2023-01-23 15:09:51', '2023-01-23 15:09:51'),
(49, 'alambert@tsn.cc', 0, '2023-01-23 15:10:00', '2023-01-23 15:10:00'),
(50, 'alberthorowitz@gmail.com', 0, '2023-01-23 15:10:10', '2023-01-23 15:10:10'),
(51, 'albertkwan@gmail.com', 0, '2023-01-23 15:10:20', '2023-01-23 15:10:20'),
(52, 'alex_hatfield@btinternet.com', 0, '2023-01-23 15:10:26', '2023-01-23 15:10:26'),
(53, 'alexander.mandl@chello.at', 0, '2023-01-23 15:10:38', '2023-01-23 15:10:38'),
(54, 'almir_memic@yahoo.com', 0, '2023-01-23 15:11:09', '2023-01-23 15:11:09'),
(55, 'alyshawebb@yahoo.com', 0, '2023-01-23 15:11:15', '2023-01-23 15:11:15'),
(56, 'amaai@dds.nl', 0, '2023-01-23 15:11:22', '2023-01-23 15:11:22'),
(57, 'amunshi@eim.ae', 0, '2023-01-23 15:11:29', '2023-01-23 15:11:29'),
(58, 'andremans@btinternet.com', 0, '2023-01-23 15:11:44', '2023-01-23 15:11:44'),
(59, 'Andrewcgreen@aol.com', 0, '2023-01-23 15:11:52', '2023-01-23 15:11:52'),
(60, 'angelcsargo@yahoo.com', 0, '2023-01-23 15:12:01', '2023-01-23 15:12:01'),
(61, 'Angelika.Lener@taa.at', 0, '2023-01-23 15:12:08', '2023-01-23 15:12:08'),
(62, 'annybe5@bigpond.com', 0, '2023-01-23 15:12:16', '2023-01-23 15:12:16'),
(63, 'anthea_gordon@hotmail.com', 0, '2023-01-23 15:12:23', '2023-01-23 15:12:23'),
(64, 'anthony_j_kwan@yahoo.com.au', 0, '2023-01-23 15:12:29', '2023-01-23 15:12:29'),
(65, 'anthony_kwan@arnotts.com', 0, '2023-01-23 15:12:35', '2023-01-23 15:12:35'),
(66, 'anthonyphilips_4@yahoo.com.hk', 0, '2023-01-23 15:12:44', '2023-01-23 15:12:44'),
(67, 'Antje.M.Herlyn.00@Alum.Dartmouth.ORG', 0, '2023-01-23 15:12:51', '2023-01-23 15:12:51'),
(68, 'anuprm@gmail.com', 0, '2023-01-23 15:13:00', '2023-01-23 15:13:00'),
(69, 'Anurag@himalayanadventure.com', 0, '2023-01-23 15:13:08', '2023-01-23 15:13:08'),
(70, 'apopke@telus.net', 0, '2023-01-23 15:13:13', '2023-01-23 15:13:13'),
(71, 'arnikotv@mos.com.np', 0, '2023-01-23 15:13:21', '2023-01-23 15:13:21'),
(72, 'as.karan@gmail.com', 0, '2023-01-23 15:13:29', '2023-01-23 15:13:29'),
(73, 'asawyer@wwv.org.uk', 0, '2023-01-23 15:13:35', '2023-01-23 15:13:35'),
(74, 'asia_janusz@hotmail.com', 0, '2023-01-23 15:13:43', '2023-01-23 15:13:43'),
(75, 'astridevrensel@gmail.com', 0, '2023-01-23 15:13:56', '2023-01-23 15:13:56'),
(76, 'audrey.dara@homedics.com', 0, '2023-01-23 15:14:03', '2023-01-23 15:14:03'),
(77, 'awheaton@shms.com', 0, '2023-01-23 15:14:10', '2023-01-23 15:14:10'),
(78, 'b.stoot@uniglobecomforttravel.nl', 0, '2023-01-23 15:14:16', '2023-01-23 15:14:16'),
(79, 'badgan@rambler.ru', 0, '2023-01-23 15:14:23', '2023-01-23 15:14:23'),
(80, 'Ben.Fryer.lon@flightcentre.co.uk', 0, '2023-01-23 15:14:29', '2023-01-23 15:14:29'),
(81, 'Benda@vencorp.sk', 0, '2023-01-23 15:14:35', '2023-01-23 15:14:35'),
(82, 'Bill.Arnemann@HNBhawaii.com', 0, '2023-01-23 15:14:43', '2023-01-23 15:14:43'),
(83, 'BLewis@dominioncap.com', 0, '2023-01-23 15:14:50', '2023-01-23 15:14:50'),
(84, 'bmkader@qatarairways.com.qa', 0, '2023-01-23 15:14:58', '2023-01-23 15:14:58'),
(85, 'bobmc_lisat@hotmail.com', 0, '2023-01-23 15:15:05', '2023-01-23 15:15:05'),
(86, 'bogdana.n.angelova@gmail.com', 0, '2023-01-23 15:15:12', '2023-01-23 15:15:12'),
(87, 'Brandywell2@aol.com', 0, '2023-01-23 15:15:20', '2023-01-23 15:15:20'),
(88, 'brentjlewis35@yahoo.com', 0, '2023-01-23 15:15:27', '2023-01-23 15:15:27'),
(89, 'brian.mcilroy@hotmail.co.uk', 0, '2023-01-23 15:15:34', '2023-01-23 15:15:34'),
(90, 'brian.williams@redpandaproject.org', 0, '2023-01-23 15:15:43', '2023-01-23 15:15:43'),
(91, 'briantaylor90@hotmail.com', 0, '2023-01-23 15:16:13', '2023-01-23 15:16:13'),
(92, 'briggsian@hotmail.com', 0, '2023-01-23 15:16:21', '2023-01-23 15:16:21'),
(93, 'brigitte.brasch@t-online.de', 0, '2023-01-23 15:16:29', '2023-01-23 15:16:29'),
(94, 'brodey@sympatico.ca', 0, '2023-01-23 15:16:36', '2023-01-23 15:16:36'),
(95, 'bryanwall1@gmail.com', 0, '2023-01-23 15:16:44', '2023-01-23 15:16:44'),
(96, 'bwpkr@yahoo.com', 0, '2023-01-23 15:16:52', '2023-01-23 15:16:52'),
(97, 'byng.robert@yahoo.com', 0, '2023-01-23 15:17:01', '2023-01-23 15:17:01'),
(98, 'BYY06320@nifty.com', 0, '2023-01-23 15:17:09', '2023-01-23 15:17:09'),
(99, 'c.j.parker@hotmail.co.uk', 0, '2023-01-23 15:17:20', '2023-01-23 15:17:20'),
(100, 'carlyhames@dulayseymour.com', 0, '2023-01-23 15:17:29', '2023-01-23 15:17:29'),
(101, 'carmency.monteiro@semco.com.br', 0, '2023-01-23 15:17:36', '2023-01-23 15:17:36'),
(102, 'carolineatthac@yahoo.co.uk', 0, '2023-01-23 15:17:43', '2023-01-23 15:17:43'),
(103, 'Catherine@hicksco.com.au', 0, '2023-01-23 15:17:50', '2023-01-23 15:17:50'),
(104, 'catherinedeane@hotmail.com', 0, '2023-01-23 15:17:56', '2023-01-23 15:17:56'),
(105, 'cathwright03@hotmail.com', 0, '2023-01-23 15:18:03', '2023-01-23 15:18:03'),
(106, 'cathymiaou@yahoo.com', 0, '2023-01-23 15:18:10', '2023-01-23 15:18:10'),
(107, 'ccheng@amanresorts.com', 0, '2023-01-23 15:18:39', '2023-01-23 15:18:39'),
(108, 'ccs7@cornell.edu', 0, '2023-01-23 15:18:51', '2023-01-23 15:18:51'),
(109, 'cdoylept@gmail.com', 0, '2023-01-23 15:19:08', '2023-01-23 15:19:08'),
(110, 'chadandgwen@yahoo.ca', 0, '2023-01-23 15:19:16', '2023-01-23 15:19:16'),
(111, 'Chaitanya.Yadav@hyattintl.com', 0, '2023-01-23 15:19:23', '2023-01-23 15:19:23'),
(112, 'Cherylfrost@mac.com', 0, '2023-01-23 15:19:30', '2023-01-23 15:19:30'),
(113, 'cindycoffill@gmail.com', 0, '2023-01-23 15:19:37', '2023-01-23 15:19:37'),
(114, 'cjmiller@chuckmillerdev.com', 0, '2023-01-23 15:19:43', '2023-01-23 15:19:43'),
(115, 'claireallen70@hotmail.com', 0, '2023-01-23 15:19:52', '2023-01-23 15:19:52'),
(116, 'cmj556@gmail.com', 0, '2023-01-23 15:19:59', '2023-01-23 15:19:59'),
(117, 'Colin.Bray1@education.nsw.gov.au', 0, '2023-01-23 15:20:13', '2023-01-23 15:20:13'),
(118, 'consmith@bigpond.net.au', 0, '2023-01-23 15:20:22', '2023-01-23 15:20:22'),
(119, 'coral_navarro@hotmail.com', 0, '2023-01-23 15:20:29', '2023-01-23 15:20:29'),
(120, 'coutts_jennifer@hotmail.com', 0, '2023-01-23 15:21:07', '2023-01-23 15:21:07'),
(121, 'ctownzie@gmail.com', 0, '2023-01-23 15:21:13', '2023-01-23 15:21:13'),
(122, 'dandmpagett@bellsouth.net', 0, '2023-01-23 15:21:20', '2023-01-23 15:21:20'),
(123, 'darren@nance.net', 0, '2023-01-23 15:21:26', '2023-01-23 15:21:26'),
(124, 'david@frankelfamily.eu', 0, '2023-01-23 15:21:34', '2023-01-23 15:21:34'),
(125, 'ddurkan@start.no', 0, '2023-01-23 15:21:40', '2023-01-23 15:21:40'),
(126, 'debbieaubrook@hotmail.com', 0, '2023-01-23 15:21:46', '2023-01-23 15:21:46'),
(127, 'DebbieT@csnz.co.nz', 0, '2023-01-23 15:21:54', '2023-01-23 15:21:54'),
(128, 'deborah_rogerson@yahoo.com', 0, '2023-01-23 15:22:01', '2023-01-23 15:22:01'),
(129, 'deetken@telus.net', 0, '2023-01-23 15:22:09', '2023-01-23 15:22:09'),
(130, 'delph_51@hotmail.com', 0, '2023-01-23 15:22:15', '2023-01-23 15:22:15'),
(131, 'derecktribe@hotmail.com', 0, '2023-01-23 15:22:22', '2023-01-23 15:22:22'),
(132, 'derval@terra-anatolia.com', 0, '2023-01-23 15:22:29', '2023-01-23 15:22:29'),
(133, 'design@mail.ee', 0, '2023-01-23 15:22:40', '2023-01-23 15:22:40'),
(134, 'dgottdenker@gmail.com', 0, '2023-01-23 15:22:46', '2023-01-23 15:22:46'),
(135, 'DGraham@pb.com.au', 0, '2023-01-23 15:22:52', '2023-01-23 15:22:52'),
(136, 'di@4ddesign.com.au', 0, '2023-01-23 15:22:58', '2023-01-23 15:22:58'),
(137, 'Dina.Ondocin@barclayscapital.com', 0, '2023-01-23 15:23:05', '2023-01-23 15:23:05'),
(138, 'dr.jill@virgin.net', 0, '2023-01-23 15:23:11', '2023-01-23 15:23:11'),
(139, 'drap@psg.sk', 0, '2023-01-23 15:23:19', '2023-01-23 15:23:19'),
(140, 'drapstudio@cabelmax.sk', 0, '2023-01-23 15:23:25', '2023-01-23 15:23:25'),
(141, 'dstudden@qatarairways.com.qa', 0, '2023-01-23 15:23:31', '2023-01-23 15:23:31'),
(142, 'dtaylor@usfca.edu', 0, '2023-01-23 15:23:38', '2023-01-23 15:23:38'),
(143, 'duncan@saltspring.com', 0, '2023-01-23 15:23:44', '2023-01-23 15:23:44'),
(144, 'dwpenjor@druknet.bt', 0, '2023-01-23 15:23:52', '2023-01-23 15:23:52'),
(145, 'Edward.Alden@FT.com', 0, '2023-01-23 15:23:57', '2023-01-23 15:23:57'),
(146, 'elan27@msn.com', 0, '2023-01-23 15:24:04', '2023-01-23 15:24:04'),
(147, 'elishkeenan@hotmail.com', 0, '2023-01-23 15:24:11', '2023-01-23 15:24:11'),
(148, 'Eloise.Dewar@diversiti.com.au', 0, '2023-01-23 15:24:18', '2023-01-23 15:24:18'),
(149, 'emma.strong@blueyonder.co.uk', 0, '2023-01-23 15:24:25', '2023-01-23 15:24:25'),
(150, 'tom_cadigan@hotmail.com', 0, '2023-01-23 15:24:33', '2023-01-23 15:24:33'),
(151, 'kristian40tel@yahoo.com', 0, '2023-01-23 15:24:40', '2023-01-23 15:24:40'),
(152, 'emmaloggin@hotmail.com', 0, '2023-01-23 15:24:47', '2023-01-23 15:24:47'),
(153, 'F_Hoeher@web.de', 0, '2023-01-23 15:24:54', '2023-01-23 15:24:54'),
(154, 'fami.hu@aon.at', 0, '2023-01-23 15:25:02', '2023-01-23 15:25:02'),
(155, 'famiglia.guidelli@alice.it', 0, '2023-01-23 15:25:10', '2023-01-23 15:25:10'),
(156, 'ferran@grupoasesoresepis.com', 0, '2023-01-23 15:25:17', '2023-01-23 15:25:17'),
(157, 'filtsol1@acenet.com.au', 0, '2023-01-23 15:25:23', '2023-01-23 15:25:23'),
(158, 'fischer.edda@t-online.de', 0, '2023-01-23 15:25:30', '2023-01-23 15:25:30'),
(159, 'fish.chelsea@gmail.com', 0, '2023-01-23 15:25:35', '2023-01-23 15:25:35'),
(160, 'fishermanxx@gmail.com', 0, '2023-01-23 15:25:42', '2023-01-23 15:25:42'),
(161, 'footecaroline@yahoo.fr', 0, '2023-01-23 15:25:47', '2023-01-23 15:25:47'),
(162, 'fwatt@jmorris.org.uk', 0, '2023-01-23 15:25:53', '2023-01-23 15:25:53'),
(163, 'galther@cedpa.org', 0, '2023-01-23 15:25:59', '2023-01-23 15:25:59'),
(164, 'gareth@atestabovetherest.com', 0, '2023-01-23 15:26:06', '2023-01-23 15:26:06'),
(165, 'garvallagh@hotmail.com', 0, '2023-01-23 15:26:14', '2023-01-23 15:26:14'),
(166, 'georgemoore_7@yahoo.gr', 0, '2023-01-23 15:26:20', '2023-01-23 15:26:20'),
(167, 'GerhardSteindl@gmx.at', 0, '2023-01-23 15:26:37', '2023-01-23 15:26:37'),
(168, 'gerrit_polderman@hotmail.com', 0, '2023-01-23 15:26:43', '2023-01-23 15:26:43'),
(169, 'ghughes23@csc.com', 0, '2023-01-23 15:26:49', '2023-01-23 15:26:49'),
(170, 'Gianluca.Giulini@fao.org', 0, '2023-01-23 15:26:55', '2023-01-23 15:26:55'),
(171, 'gilesandshona@blueyonder.co.uk', 0, '2023-01-23 15:27:01', '2023-01-23 15:27:01'),
(172, 'gileshughes@blueyonder.co.uk', 0, '2023-01-23 15:27:08', '2023-01-23 15:27:08'),
(173, 'giorgos_soultis@ganymedes.gr', 0, '2023-01-23 15:27:13', '2023-01-23 15:27:13'),
(174, 'givingasha@yahoo.com', 0, '2023-01-23 15:27:20', '2023-01-23 15:27:20'),
(175, 'glennverheul@hotmail.com', 0, '2023-01-23 15:27:26', '2023-01-23 15:27:26'),
(176, 'golden_bridge@pacific.net.sg', 0, '2023-01-23 15:27:33', '2023-01-23 15:27:33'),
(177, 'grace.devlin@hertford.oxford.ac.uk', 0, '2023-01-23 15:27:42', '2023-01-23 15:27:42'),
(178, 'graham.hoyland@bbc.co.uk', 0, '2023-01-23 15:27:49', '2023-01-23 15:27:49'),
(179, 'joelcarcone@gmail.com', 0, '2023-01-23 15:40:05', '2023-01-23 15:40:05'),
(180, 'graham.hoyland@gmail.com', 0, '2023-01-23 15:40:38', '2023-01-23 15:40:38'),
(181, 'grietdepypere@calaluna.com', 0, '2023-01-23 15:40:45', '2023-01-23 15:40:45'),
(182, 'grivna@post.sk', 0, '2023-01-23 15:40:51', '2023-01-23 15:40:51'),
(183, 'gulik@cabelmax.sk', 0, '2023-01-23 15:40:57', '2023-01-23 15:40:57'),
(184, 'gulikova@pobox.sk', 0, '2023-01-23 15:41:05', '2023-01-23 15:41:05'),
(185, 'gypsyhands@hotmail.com', 0, '2023-01-23 15:41:11', '2023-01-23 15:41:11'),
(186, 'haidermeghjee@msn.com', 0, '2023-01-23 15:41:17', '2023-01-23 15:41:17'),
(187, 'haley.dawna@gmail.com', 0, '2023-01-23 15:41:24', '2023-01-23 15:41:24'),
(188, 'hallo@erlebniskurse.biz', 0, '2023-01-23 15:41:30', '2023-01-23 15:41:30'),
(189, 'hanaqueen@hotmail.com', 0, '2023-01-23 15:41:50', '2023-01-23 15:41:50'),
(190, 'hari@powercomm.com.np', 0, '2023-01-23 15:42:01', '2023-01-23 15:42:01'),
(191, 'heller@nextra.sk', 0, '2023-01-23 15:42:10', '2023-01-23 15:42:10'),
(192, 'herbs_npj@wlink.com.np', 0, '2023-01-23 15:42:16', '2023-01-23 15:42:16'),
(193, 'herokumal@mail.com.np', 0, '2023-01-23 15:42:23', '2023-01-23 15:42:23'),
(194, 'hfconnolly@gmail.com', 0, '2023-01-23 15:42:28', '2023-01-23 15:42:28'),
(195, 'hhex@mail.com.np', 0, '2023-01-23 15:42:38', '2023-01-23 15:42:38'),
(196, 'hhr@wlink.com.np', 0, '2023-01-23 15:42:45', '2023-01-23 15:42:45'),
(197, 'hlg132@yahoo.com', 0, '2023-01-23 15:42:52', '2023-01-23 15:42:52'),
(198, 'howard.bassett@exeter.gov.uk', 0, '2023-01-23 15:42:58', '2023-01-23 15:42:58'),
(199, 'ian@fidge1962.freeserve.co.uk', 0, '2023-01-23 15:43:06', '2023-01-23 15:43:06'),
(200, 'ian@ianva.co.uk', 0, '2023-01-23 15:43:12', '2023-01-23 15:43:12'),
(201, 'ianwall@gotadsl.co.uk', 0, '2023-01-23 15:43:19', '2023-01-23 15:43:19'),
(202, 'ieatsnails@yahoo.com', 0, '2023-01-23 15:43:25', '2023-01-23 15:43:25'),
(203, 'imalinka@bigboard.sk', 0, '2023-01-23 15:43:32', '2023-01-23 15:43:32'),
(204, 'inachis@mongol.net', 0, '2023-01-23 15:43:39', '2023-01-23 15:43:39'),
(205, 'info@nazirsabir.com', 0, '2023-01-23 15:43:45', '2023-01-23 15:43:45'),
(206, 'info@overcross.de', 0, '2023-01-23 15:43:51', '2023-01-23 15:43:51'),
(207, 'j.louis@gawab.com', 0, '2023-01-23 15:43:57', '2023-01-23 15:43:57'),
(208, 'james@sanders.name', 0, '2023-01-23 15:44:04', '2023-01-23 15:44:04'),
(209, 'jandyrsantos@gmail.com', 0, '2023-01-23 15:44:11', '2023-01-23 15:44:11'),
(210, 'jaqperu@hotmail.com', 0, '2023-01-23 15:44:17', '2023-01-23 15:44:17'),
(211, 'jbrown-p@bigpond.net.au', 0, '2023-01-23 15:45:08', '2023-01-23 15:45:08'),
(212, 'JChapman@lordbissell.com', 0, '2023-01-23 15:45:15', '2023-01-23 15:45:15'),
(213, 'jennyanded@hotmail.com', 0, '2023-01-23 15:45:22', '2023-01-23 15:45:22'),
(214, 'jesseaitchison@gmail.com', 0, '2023-01-23 15:45:28', '2023-01-23 15:45:28'),
(215, 'Jessica.Carvin@barclayscapital.com', 0, '2023-01-23 15:45:35', '2023-01-23 15:45:35'),
(216, 'jessica_corbett@usa.com', 0, '2023-01-23 15:45:41', '2023-01-23 15:45:41'),
(217, 'jewelnepal@hotmail.com', 0, '2023-01-23 15:45:48', '2023-01-23 15:45:48'),
(218, 'jhrrsn@onetel.com', 0, '2023-01-23 15:45:56', '2023-01-23 15:45:56'),
(219, 'jillypeterson@hotmail.com', 0, '2023-01-23 15:46:02', '2023-01-23 15:46:02'),
(220, 'jjbumpas@yahoo.com', 0, '2023-01-23 15:46:09', '2023-01-23 15:46:09'),
(221, 'jkb@isbridge.com', 0, '2023-01-23 15:46:19', '2023-01-23 15:46:19'),
(222, 'jlarraza@tiscali.co.uk', 0, '2023-01-23 15:46:26', '2023-01-23 15:46:26'),
(223, 'jlmendonca@hotmail.com', 0, '2023-01-23 15:46:34', '2023-01-23 15:46:34'),
(224, 'jmcbride@gaa.sch.ae', 0, '2023-01-23 15:46:41', '2023-01-23 15:46:41'),
(225, 'joanna-mcdonald@dfid.gov.uk', 0, '2023-01-23 15:46:48', '2023-01-23 15:46:48'),
(226, 'johanna.holzmann@siemens.com', 0, '2023-01-23 15:47:02', '2023-01-23 15:47:02'),
(227, 'johha856@student.liu.se', 0, '2023-01-23 15:47:08', '2023-01-23 15:47:08'),
(228, 'Jojo@IBCJAPAN.CO.JP', 0, '2023-01-23 15:47:15', '2023-01-23 15:47:15'),
(229, 'jolee_242@hotmail.com', 0, '2023-01-23 15:47:21', '2023-01-23 15:47:21'),
(230, 'jorgeluislinares@yahoo.com', 0, '2023-01-23 15:47:28', '2023-01-23 15:47:28'),
(231, 'joss-bugs@jocelinwills.wanadoo.co.uk', 0, '2023-01-23 15:48:22', '2023-01-23 15:48:22'),
(232, 'jphimalayas@yahoo.ca', 0, '2023-01-23 15:48:28', '2023-01-23 15:48:28'),
(233, 'JStevens@ohchr.org', 0, '2023-01-23 15:48:36', '2023-01-23 15:48:36'),
(234, 'jswann@mail.mcps.org', 0, '2023-01-23 15:48:43', '2023-01-23 15:48:43'),
(235, 'judith@circleway.com', 0, '2023-01-23 15:48:49', '2023-01-23 15:48:49'),
(236, 'julia.morris@flightcentre.co.uk', 0, '2023-01-23 15:48:56', '2023-01-23 15:48:56'),
(237, 'julianjenny@tiscali.co.uk', 0, '2023-01-23 15:49:03', '2023-01-23 15:49:03'),
(238, 'justininlondon@yahoo.com', 0, '2023-01-23 15:49:09', '2023-01-23 15:49:09'),
(239, 'jylsm444@163.com', 0, '2023-01-23 15:49:15', '2023-01-23 15:49:15'),
(240, 'k.tanya.prince@gmail.com', 0, '2023-01-23 15:49:21', '2023-01-23 15:49:21'),
(241, 'kahua@kahuainstitute.com', 0, '2023-01-23 15:49:27', '2023-01-23 15:49:27'),
(242, 'kahuainstitute@gmail.com', 0, '2023-01-23 15:49:34', '2023-01-23 15:49:34'),
(243, 'karlacosgriff@islandschool.org', 0, '2023-01-23 15:49:40', '2023-01-23 15:49:40'),
(244, 'karyn@blackcactus.com.au', 0, '2023-01-23 15:49:47', '2023-01-23 15:49:47'),
(245, 'kathy@shipwreckmaui.com', 0, '2023-01-23 15:49:55', '2023-01-23 15:49:55'),
(246, 'kathygertsch@hotmail.com', 0, '2023-01-23 15:50:02', '2023-01-23 15:50:02'),
(247, 'katie.plumbly@btopenworld.com', 0, '2023-01-23 15:50:09', '2023-01-23 15:50:09'),
(248, 'keemee752@hotmail.com', 0, '2023-01-23 15:50:15', '2023-01-23 15:50:15'),
(249, 'keigcarol@pon.net', 0, '2023-01-23 15:50:22', '2023-01-23 15:50:22'),
(250, 'kenblake@live.com', 0, '2023-01-23 15:50:29', '2023-01-23 15:50:29'),
(251, 'keren_el@dalia.org.il', 0, '2023-01-23 15:50:35', '2023-01-23 15:50:35'),
(252, 'klitos1@hotmail.com', 0, '2023-01-23 15:50:42', '2023-01-23 15:50:42'),
(253, 'knowlester@hotmail.com', 0, '2023-01-23 15:51:02', '2023-01-23 15:51:02'),
(254, 'kristen@clearpathinternational.org', 0, '2023-01-23 15:51:11', '2023-01-23 15:51:11'),
(255, 'kuleanaproductions@hawaiiantel.net', 0, '2023-01-23 15:51:19', '2023-01-23 15:51:19'),
(256, 'kunz@stanford.edu', 0, '2023-01-23 15:51:26', '2023-01-23 15:51:26'),
(257, 'kuodeping@yahoo.com', 0, '2023-01-23 15:51:33', '2023-01-23 15:51:33'),
(258, 'kutira@kutira.com', 0, '2023-01-23 15:51:40', '2023-01-23 15:51:40'),
(259, 'kutira@mauiretreat.com', 0, '2023-01-23 15:51:46', '2023-01-23 15:51:46'),
(260, 'kutira555@yahoo.com', 0, '2023-01-23 15:51:55', '2023-01-23 15:51:55'),
(261, 'kwolls@yahoo.com', 0, '2023-01-23 15:52:01', '2023-01-23 15:52:01'),
(262, 'l.w@interia.pl', 0, '2023-01-23 15:52:07', '2023-01-23 15:52:07'),
(263, 'langunilla@bigpond.com', 0, '2023-01-23 15:52:13', '2023-01-23 15:52:13'),
(264, 'latifahhamid@yahoo.co.uk', 0, '2023-01-23 15:52:19', '2023-01-23 15:52:19'),
(265, 'leginenob@hotmail.com', 0, '2023-01-23 15:52:25', '2023-01-23 15:52:25'),
(266, 'lemare@porchhouse.fsnet.co.uk', 0, '2023-01-23 15:52:32', '2023-01-23 15:52:32'),
(267, 'lexang@bhutankiga.com', 0, '2023-01-23 15:52:38', '2023-01-23 15:52:38'),
(268, 'lexang06@gmail.com', 0, '2023-01-23 15:52:45', '2023-01-23 15:52:45'),
(269, 'lhe3@le.ac.uk', 0, '2023-01-23 15:52:52', '2023-01-23 15:52:52'),
(270, 'lisa.donner@gmail.com', 0, '2023-01-23 15:52:58', '2023-01-23 15:52:58'),
(271, 'lisa.henderson@gm.com', 0, '2023-01-23 15:53:05', '2023-01-23 15:53:05'),
(272, 'lisapetrie@yahoo.com', 0, '2023-01-23 15:53:11', '2023-01-23 15:53:11'),
(273, 'liujin_69@yahoo.com', 0, '2023-01-23 15:53:16', '2023-01-23 15:53:16'),
(274, 'lizziemary@hotmail.com', 0, '2023-01-23 15:53:28', '2023-01-23 15:53:28'),
(275, 'lokesh.bagga@sita.in', 0, '2023-01-23 15:53:34', '2023-01-23 15:53:34'),
(276, 'lokesh_bagga@hotmail.com', 0, '2023-01-23 15:53:41', '2023-01-23 15:53:41'),
(277, 'lou@lifeofriley.org', 0, '2023-01-23 15:53:47', '2023-01-23 15:53:47'),
(278, 'louandsimo@bigpond.com', 0, '2023-01-23 15:53:54', '2023-01-23 15:53:54'),
(279, 'lpiano1@cox.net', 0, '2023-01-23 15:54:01', '2023-01-23 15:54:01'),
(280, 'lsx149@coventry.ac.uk', 0, '2023-01-23 15:54:08', '2023-01-23 15:54:08'),
(281, 'luciano@gcsnet.com.br', 0, '2023-01-23 15:54:15', '2023-01-23 15:54:15'),
(282, 'ludhova@gmail.com', 0, '2023-01-23 15:54:22', '2023-01-23 15:54:22'),
(283, 'lynnfrancis@zoom.co.uk', 0, '2023-01-23 15:54:30', '2023-01-23 15:54:30'),
(284, 'LYNNGeorgelynn@aol.com', 0, '2023-01-23 15:54:36', '2023-01-23 15:54:36'),
(285, 'maaike.linde@hotmail.com', 0, '2023-01-23 15:54:44', '2023-01-23 15:54:44'),
(286, 'maelsch@bigpond.com', 0, '2023-01-23 15:55:12', '2023-01-23 15:55:12'),
(287, 'maggieastrup@hotmail.com', 0, '2023-01-23 15:55:20', '2023-01-23 15:55:20'),
(288, 'maireo@montana.edu', 0, '2023-01-23 15:55:28', '2023-01-23 15:55:28'),
(289, 'malik.chaabouni@yahoo.fr', 0, '2023-01-23 15:56:18', '2023-01-23 15:56:18'),
(290, 'maomao@uninet.com.cn', 0, '2023-01-23 15:56:29', '2023-01-23 15:56:29'),
(291, 'marco@refinery.co.za', 0, '2023-01-23 15:56:39', '2023-01-23 15:56:39'),
(292, 'marco_chiantore@hotmail.com', 0, '2023-01-23 15:56:57', '2023-01-23 15:56:57'),
(293, 'marek.romanowicz@onet.eu', 0, '2023-01-23 15:57:14', '2023-01-23 15:57:14'),
(294, 'margaret_collins45@yahoo.co.uk', 0, '2023-01-23 15:57:29', '2023-01-23 15:57:29'),
(295, 'marie-jose.chapelier@laposte.net', 0, '2023-01-23 15:57:35', '2023-01-23 15:57:35'),
(296, 'marinaard@zeelandnet.nl', 0, '2023-01-23 15:57:42', '2023-01-23 15:57:42'),
(297, 'mariospenard@videotron.ca', 0, '2023-01-23 15:58:08', '2023-01-23 15:58:08'),
(298, 'marit_andreassen@c2i.net', 0, '2023-01-23 15:58:21', '2023-01-23 15:58:21'),
(299, 'Mark.Baldwin@lewisham.gov.uk', 0, '2023-01-23 15:59:52', '2023-01-23 15:59:52'),
(300, 'markusbueler@bluewin.ch', 0, '2023-01-23 15:59:59', '2023-01-23 15:59:59'),
(301, 'markusegli@hotmail.com', 0, '2023-01-23 16:00:06', '2023-01-23 16:00:06'),
(302, 'markwatling@hotmail.com', 0, '2023-01-23 16:00:13', '2023-01-23 16:00:13'),
(303, 'martinharris_mhe@yahoo.co.uk', 0, '2023-01-23 16:00:19', '2023-01-23 16:00:19'),
(304, 'maryann@vip.net', 0, '2023-01-23 16:00:25', '2023-01-23 16:00:25'),
(305, 'matee_c@ccp.or.th', 0, '2023-01-23 16:00:32', '2023-01-23 16:00:32'),
(306, 'matt_robshaw@hotmail.com', 0, '2023-01-23 16:00:39', '2023-01-23 16:00:39'),
(307, 'mcarter@theskonkworks.com', 0, '2023-01-23 16:00:45', '2023-01-23 16:00:45'),
(308, 'mdfgarrett@hotmail.com', 0, '2023-01-23 16:00:54', '2023-01-23 16:00:54'),
(309, 'meggs888@hotmail.com', 0, '2023-01-23 16:01:02', '2023-01-23 16:01:02'),
(310, 'mh8@soas.ac.uk', 0, '2023-01-23 16:01:09', '2023-01-23 16:01:09'),
(311, 'michailastanton@yahoo.co.uk', 0, '2023-01-23 16:01:16', '2023-01-23 16:01:16'),
(312, 'michelle.walker1@hotmail.com', 0, '2023-01-23 16:01:23', '2023-01-23 16:01:23'),
(313, 'mike.buck77@yahoo.co.uk', 0, '2023-01-23 16:01:30', '2023-01-23 16:01:30'),
(314, 'mike@artichokedesign.com.au', 0, '2023-01-23 16:01:35', '2023-01-23 16:01:35'),
(315, 'mike@consciouslifestyle.org', 0, '2023-01-23 16:01:42', '2023-01-23 16:01:42'),
(316, 'miri.bach@googlemail.com', 0, '2023-01-23 16:01:50', '2023-01-23 16:01:50'),
(317, 'mjblandy@blandy.com', 0, '2023-01-23 16:01:55', '2023-01-23 16:01:55'),
(318, 'monahan@persona.ca', 0, '2023-01-23 16:02:03', '2023-01-23 16:02:03'),
(319, 'monty.wates@btinternet.com', 0, '2023-01-23 16:02:10', '2023-01-23 16:02:10'),
(320, 'mrinalini_rc@hotmail.com', 0, '2023-01-23 16:02:15', '2023-01-23 16:02:15'),
(321, 'msemp@sent.com', 0, '2023-01-23 16:02:22', '2023-01-23 16:02:22'),
(322, 'msurina@gmail.com', 0, '2023-01-23 16:02:30', '2023-01-23 16:02:30'),
(323, 'nadiapendleton@hotmail.com', 0, '2023-01-23 16:02:35', '2023-01-23 16:02:35'),
(324, 'namaste@nepal-dia.de', 0, '2023-01-23 16:02:42', '2023-01-23 16:02:42'),
(325, 'nancywilson17@gmail.com', 0, '2023-01-23 16:02:48', '2023-01-23 16:02:48'),
(326, 'naomi_engelman@yahoo.com', 0, '2023-01-23 16:02:57', '2023-01-23 16:02:57'),
(327, 'nasim.nour@gmail.com', 0, '2023-01-23 16:03:04', '2023-01-23 16:03:04'),
(328, 'nepalcyclist@yahoo.com', 0, '2023-01-23 16:03:10', '2023-01-23 16:03:10'),
(329, 'nga.nyc@gmail.com', 0, '2023-01-23 16:03:17', '2023-01-23 16:03:17'),
(330, 'nickyconti@googlemail.com', 0, '2023-01-23 16:03:22', '2023-01-23 16:03:22'),
(331, 'nikymail@inwind.it', 0, '2023-01-23 16:03:31', '2023-01-23 16:03:31'),
(332, 'nisha@cyberwebhotels.com', 0, '2023-01-23 16:03:37', '2023-01-23 16:03:37'),
(333, 'nobletravel@direcway.com', 0, '2023-01-23 16:03:43', '2023-01-23 16:03:43'),
(334, 'nobletravel@hughes.net', 0, '2023-01-23 16:03:49', '2023-01-23 16:03:49'),
(335, 'nonolacrevette@hotmail.com', 0, '2023-01-23 16:03:56', '2023-01-23 16:03:56'),
(336, 'olof@sundstrom.com', 0, '2023-01-23 16:04:02', '2023-01-23 16:04:02'),
(337, 'ontour8000@hotmail.co.uk', 0, '2023-01-23 16:04:08', '2023-01-23 16:04:08'),
(338, 'osac@m1.blackberry.com', 0, '2023-01-23 16:04:13', '2023-01-23 16:04:13'),
(339, 'palashasplace@hotmail.com', 0, '2023-01-23 16:04:20', '2023-01-23 16:04:20'),
(340, 'Palova.Emilia@slposta.sk', 0, '2023-01-23 16:04:26', '2023-01-23 16:04:26'),
(341, 'pandatracker@sbcglobal.net', 0, '2023-01-23 16:04:32', '2023-01-23 16:04:32'),
(342, 'patriciaerwin@yahoo.com', 0, '2023-01-23 16:04:37', '2023-01-23 16:04:37'),
(343, 'Paul.lee@primehorizontal.com', 0, '2023-01-23 16:04:44', '2023-01-23 16:04:44'),
(344, 'paula.tuck@gmail.com', 0, '2023-01-23 16:04:54', '2023-01-23 16:04:54'),
(345, 'pbiant@hotmail.com', 0, '2023-01-23 16:05:01', '2023-01-23 16:05:01'),
(346, 'peter.dunn@citi.com', 0, '2023-01-23 16:05:07', '2023-01-23 16:05:07'),
(347, 'peter.dunn@citigroup.com', 0, '2023-01-23 16:05:14', '2023-01-23 16:05:14'),
(348, 'peter.grivna@celltex.sk', 0, '2023-01-23 16:05:23', '2023-01-23 16:05:23'),
(349, 'peter@heller.sk', 0, '2023-01-23 16:05:35', '2023-01-23 16:05:35'),
(350, 'peter@travelgrove.com', 0, '2023-01-23 16:05:41', '2023-01-23 16:05:41'),
(351, 'peter@trekhimalayas.com', 0, '2023-01-23 16:05:47', '2023-01-23 16:05:47'),
(352, 'petralouisepeters@hotmail.com', 0, '2023-01-23 16:05:59', '2023-01-23 16:05:59'),
(353, 'philip.harris@agedwards.com', 0, '2023-01-23 16:06:05', '2023-01-23 16:06:05'),
(354, 'pierre.l@rayonviolet.com', 0, '2023-01-23 16:06:11', '2023-01-23 16:06:11'),
(355, 'prematara@mac.com', 0, '2023-01-23 16:06:17', '2023-01-23 16:06:17'),
(356, 'ralf@schniederluther.de', 0, '2023-01-23 16:06:23', '2023-01-23 16:06:23'),
(357, 'rauljp@adinet.com.uy', 0, '2023-01-23 16:06:30', '2023-01-23 16:06:30'),
(358, 'RBashir@qatarairways.com.qa', 0, '2023-01-23 16:06:36', '2023-01-23 16:06:36'),
(359, 'rcontreras@leesherman.com', 0, '2023-01-23 16:06:43', '2023-01-23 16:06:43'),
(360, 'reijo.harkonen@pp.inet.fi', 0, '2023-01-23 16:06:50', '2023-01-23 16:06:50'),
(361, 'relmes@semco.com.br', 0, '2023-01-23 16:06:55', '2023-01-23 16:06:55'),
(362, 'richard@richardalexanderdesign.com', 0, '2023-01-23 16:07:02', '2023-01-23 16:07:02'),
(363, 'richschroko1@yahoo.com', 0, '2023-01-23 16:07:07', '2023-01-23 16:07:07'),
(364, 'rickpizzoli@salesforceeurope.com', 0, '2023-01-23 16:07:13', '2023-01-23 16:07:13'),
(365, 'Robert_Pendleton@infosys.com', 0, '2023-01-23 16:07:20', '2023-01-23 16:07:20'),
(366, 'Ron@homedics.com', 0, '2023-01-23 16:07:26', '2023-01-23 16:07:26'),
(367, 'rosieblandy@fastmail.fm', 0, '2023-01-23 16:07:33', '2023-01-23 16:07:33'),
(368, 'runge.claire@gmail.com', 0, '2023-01-23 16:07:38', '2023-01-23 16:07:38'),
(369, 'russel.freeman@gmail.com', 0, '2023-01-23 16:07:43', '2023-01-23 16:07:43'),
(370, 's.s.h@hotmail.co.uk', 0, '2023-01-23 16:07:49', '2023-01-23 16:07:49'),
(371, 's4100837@student.uq.edu.au', 0, '2023-01-23 16:07:55', '2023-01-23 16:07:55'),
(372, 'sabina.magra@sanpaoloimi.com', 0, '2023-01-23 16:08:05', '2023-01-23 16:08:05'),
(373, 'sam.gegg@osborneclarke.com', 0, '2023-01-23 16:08:11', '2023-01-23 16:08:11'),
(374, 'sandi.wilson@appealing.org.uk', 0, '2023-01-23 16:08:16', '2023-01-23 16:08:16'),
(375, 'sanyad@bol.net.in', 0, '2023-01-23 16:08:23', '2023-01-23 16:08:23'),
(376, 'sarah.bastrow@googlemail.com', 0, '2023-01-23 16:08:29', '2023-01-23 16:08:29'),
(377, 'sarah_simkin@hotmail.com', 0, '2023-01-23 16:08:37', '2023-01-23 16:08:37'),
(378, 'sarahedgar81@yahoo.co.uk', 0, '2023-01-23 16:08:43', '2023-01-23 16:08:43'),
(379, 'sarahnyberg@hotmail.com', 0, '2023-01-23 16:08:50', '2023-01-23 16:08:50'),
(380, 'savagebill@iinet.net.au', 0, '2023-01-23 16:08:56', '2023-01-23 16:08:56'),
(381, 'secretspot@pipeline.com', 0, '2023-01-23 16:09:03', '2023-01-23 16:09:03'),
(382, 'sewellmj@aol.com', 0, '2023-01-23 16:09:09', '2023-01-23 16:09:09'),
(383, 'sguardia@telus.net', 0, '2023-01-23 16:09:17', '2023-01-23 16:09:17'),
(384, 'Shane.Tuckey@international.gc.ca', 0, '2023-01-23 16:09:25', '2023-01-23 16:09:25'),
(385, 'shane.tuckey@rcmp-grc.gc.ca', 0, '2023-01-23 16:09:36', '2023-01-23 16:09:36'),
(386, 'sherpa@sherpaviaggi.it', 0, '2023-01-23 16:09:42', '2023-01-23 16:09:42'),
(387, 'simo.zoltan@vnet.hu', 0, '2023-01-23 16:09:48', '2023-01-23 16:09:48'),
(388, 'simon.plotkin@electricsky.com', 0, '2023-01-23 16:09:56', '2023-01-23 16:09:56'),
(389, 'simon_dann@yahoo.com', 0, '2023-01-23 16:10:04', '2023-01-23 16:10:04'),
(390, 'Simone.Ross@takeda.ie', 0, '2023-01-23 16:10:12', '2023-01-23 16:10:12'),
(391, 'siu_lun@hotmail.com', 0, '2023-01-23 16:10:19', '2023-01-23 16:10:19'),
(392, 'sjoh20@bath.ac.uk', 0, '2023-01-23 16:10:28', '2023-01-23 16:10:28'),
(393, 'SKawaguchi@IBCJAPAN.CO.JP', 0, '2023-01-23 16:10:35', '2023-01-23 16:10:35'),
(394, 'skeggy@hotmail.co.uk', 0, '2023-01-23 16:10:49', '2023-01-23 16:10:49'),
(395, 'slytaylor@netquick.hu', 0, '2023-01-23 16:11:03', '2023-01-23 16:11:03'),
(396, 'sophie_zajicek@hotmail.com', 0, '2023-01-23 16:11:10', '2023-01-23 16:11:10'),
(397, 'SOPHIE1FEI@126.COM', 0, '2023-01-23 16:11:16', '2023-01-23 16:11:16'),
(398, 'sophieveugelen@gmail.com', 0, '2023-01-23 16:11:22', '2023-01-23 16:11:22'),
(399, 'spjjharrison@yahoo.com', 0, '2023-01-23 16:11:27', '2023-01-23 16:11:27'),
(400, 'stao@habitatchicago.com', 0, '2023-01-23 16:11:34', '2023-01-23 16:11:34'),
(401, 'Stefano_Filauri@amat.com', 0, '2023-01-23 16:11:40', '2023-01-23 16:11:40'),
(402, 'stephenclifton@ntlworld.com', 0, '2023-01-23 16:11:46', '2023-01-23 16:11:46'),
(403, 'steve.cole@connectfree.co.uk', 0, '2023-01-23 16:11:53', '2023-01-23 16:11:53'),
(404, 'steve.cole@forestry.gsi.gov.uk', 0, '2023-01-23 16:11:59', '2023-01-23 16:11:59'),
(405, 'Steve.D.Horness@usdoj.gov', 0, '2023-01-23 16:12:04', '2023-01-23 16:12:04'),
(406, 'steve@cheedale.co.uk', 0, '2023-01-23 16:12:11', '2023-01-23 16:12:11'),
(407, 'steveandjenwestall@hotmail.com', 0, '2023-01-23 16:12:17', '2023-01-23 16:12:17'),
(408, 'steveglobey@yahoo.co.uk', 0, '2023-01-23 16:12:23', '2023-01-23 16:12:23'),
(409, 'stockton.jon@gmail.com', 0, '2023-01-23 16:12:30', '2023-01-23 16:12:30'),
(410, 'stuart_alaska@yahoo.com', 0, '2023-01-23 16:12:35', '2023-01-23 16:12:35'),
(411, 'stuartdeane.cjbayliss@btconnect.com', 0, '2023-01-23 16:12:42', '2023-01-23 16:12:42'),
(412, 'subash@everest-express.com.np', 0, '2023-01-23 16:12:47', '2023-01-23 16:12:47'),
(413, 'suestirling15@hotmail.com', 0, '2023-01-23 16:12:53', '2023-01-23 16:12:53'),
(414, 'suetao@habitatbrokerage.com', 0, '2023-01-23 16:13:01', '2023-01-23 16:13:01'),
(415, 'susan_sha@sify.com', 0, '2023-01-23 16:13:31', '2023-01-23 16:13:31'),
(416, 'tashunke74@yahoo.it', 0, '2023-01-23 16:13:37', '2023-01-23 16:13:37'),
(417, 'ted_rybakowski@hotmail.com', 0, '2023-01-23 16:13:43', '2023-01-23 16:13:43'),
(418, 'teitur@tokyo.com', 0, '2023-01-23 16:13:48', '2023-01-23 16:13:48'),
(419, 'tek@idc.minpaku.ac.jp', 0, '2023-01-23 16:13:54', '2023-01-23 16:13:54'),
(420, 'theresa@chamtour.sy', 0, '2023-01-23 16:14:00', '2023-01-23 16:14:00'),
(421, 'ThmWo@aol.com', 0, '2023-01-23 16:14:06', '2023-01-23 16:14:06'),
(422, 'Thomas.B.Bacon@usdoj.gov', 0, '2023-01-23 16:14:13', '2023-01-23 16:14:13'),
(423, 'thomo28@blueyonder.co.uk', 0, '2023-01-23 16:14:20', '2023-01-23 16:14:20'),
(424, 'tino@mout.nl', 0, '2023-01-23 16:14:26', '2023-01-23 16:14:26'),
(425, 'Tmcur@aol.com', 0, '2023-01-23 16:14:32', '2023-01-23 16:14:32'),
(426, 'tnepal@gmail.com', 0, '2023-01-23 16:14:38', '2023-01-23 16:14:38'),
(427, 'tom.hugh-jones@bbc.co.uk', 0, '2023-01-23 16:14:45', '2023-01-23 16:14:45'),
(428, 'tom@funetics.net', 0, '2023-01-23 16:14:52', '2023-01-23 16:14:52'),
(429, 'tomwood@doctors.org.uk', 0, '2023-01-23 16:14:57', '2023-01-23 16:14:57'),
(430, 'tostidas@hotmail.com', 0, '2023-01-23 16:15:13', '2023-01-23 16:15:13'),
(431, 'tours@travelchinaguide.com', 0, '2023-01-23 16:15:20', '2023-01-23 16:15:20'),
(432, 'translator53@yahoo.com', 0, '2023-01-23 16:15:25', '2023-01-23 16:15:25'),
(433, 'travelorganiserindia@yahoo.co.in', 0, '2023-01-23 16:15:31', '2023-01-23 16:15:31'),
(434, 'trippingkerry@hotmail.com', 0, '2023-01-23 16:15:38', '2023-01-23 16:15:38'),
(435, 'troey1@bigpond.com', 0, '2023-01-23 16:15:47', '2023-01-23 16:15:47'),
(436, 'twanke@yahoo-inc.com', 0, '2023-01-23 16:15:53', '2023-01-23 16:15:53'),
(437, 'valerie.blandy@hotmail.com', 0, '2023-01-23 16:15:59', '2023-01-23 16:15:59'),
(438, 'vandaele.john@skynet.be', 0, '2023-01-23 16:16:06', '2023-01-23 16:16:06'),
(439, 'veric@ureach.com', 0, '2023-01-23 16:16:13', '2023-01-23 16:16:13'),
(440, 'vgirishin@rediffmail.com', 0, '2023-01-23 16:16:19', '2023-01-23 16:16:19'),
(441, 'vriendremco@hotmail.com', 0, '2023-01-23 16:16:24', '2023-01-23 16:16:24'),
(442, 'WardenKtm@state.gov', 0, '2023-01-23 16:16:32', '2023-01-23 16:16:32'),
(443, 'weiss.michal@zelpo.sk', 0, '2023-01-23 16:16:37', '2023-01-23 16:16:37'),
(444, 'wiesiek@iname.com', 0, '2023-01-23 16:16:45', '2023-01-23 16:16:45'),
(445, 'wrx2002@bigpond.com', 0, '2023-01-23 16:16:51', '2023-01-23 16:16:51'),
(446, 'wsky@hoga.pl', 0, '2023-01-23 16:16:56', '2023-01-23 16:16:56'),
(447, 'yingshaobj@gmail.com', 0, '2023-01-23 16:17:06', '2023-01-23 16:17:06'),
(448, 'yudren@bambootechnologies.com', 0, '2023-01-23 16:17:12', '2023-01-23 16:17:12'),
(449, 'zain@berkeley.edu', 0, '2023-01-23 16:17:18', '2023-01-23 16:17:18'),
(450, 'ronnie.lennon@amnch.ie', 0, '2023-01-23 16:17:24', '2023-01-23 16:17:24'),
(451, 'CagdasG@AddressDoctor.com', 0, '2023-01-23 16:17:29', '2023-01-23 16:17:29'),
(452, 'maja@tholidays.com', 0, '2023-01-23 16:17:37', '2023-01-23 16:17:37'),
(453, 'stefano.brambilla@touringclub.it', 0, '2023-01-23 16:17:43', '2023-01-23 16:17:43'),
(454, 'Julian@inspired-trading.com', 0, '2023-01-23 16:17:49', '2023-01-23 16:17:49'),
(455, 'davinder.kaur@emirates.com', 0, '2023-01-23 16:17:54', '2023-01-23 16:17:54'),
(456, 'lina@chamtour.net.cn', 0, '2023-01-23 16:18:01', '2023-01-23 16:18:01'),
(457, 'fabiana.gaehwiler@stc.ch', 0, '2023-01-23 16:18:06', '2023-01-23 16:18:06'),
(458, 'jesetters2005@yahoo.com', 0, '2023-01-23 16:18:13', '2023-01-23 16:18:13'),
(459, 'jacob@aljasratravel.com', 0, '2023-01-23 16:18:21', '2023-01-23 16:18:21'),
(460, 'MiriamR@abbey.ie', 0, '2023-01-23 16:18:26', '2023-01-23 16:18:26'),
(461, 'nadeem@ziyadtravel.com', 0, '2023-01-23 16:18:32', '2023-01-23 16:18:32'),
(462, 'angie.lacia@rotana.com', 0, '2023-01-23 16:18:37', '2023-01-23 16:18:37'),
(463, 'ahmed.jilani@gta-travel.com', 0, '2023-01-23 16:18:44', '2023-01-23 16:18:44'),
(464, 'mustafak@metglobal.com', 0, '2023-01-23 16:19:43', '2023-01-23 16:19:43'),
(465, 'pantelish@expedia.com', 0, '2023-01-23 16:19:51', '2023-01-23 16:19:51'),
(466, 'robert@maxit.ae', 0, '2023-01-23 16:19:58', '2023-01-23 16:19:58'),
(467, 'georgina.ghazal@wilddiscovery.com.lb', 0, '2023-01-23 16:20:03', '2023-01-23 16:20:03'),
(468, 'issam.nehlawl@panoramatravel.org', 0, '2023-01-23 16:20:10', '2023-01-23 16:20:10'),
(469, 'surbhi@ddppl.com', 0, '2023-01-23 16:20:15', '2023-01-23 16:20:15'),
(470, 'spyn@stgalobe.com', 0, '2023-01-23 16:20:21', '2023-01-23 16:20:21'),
(471, 'terhal2008@hotmail.com', 0, '2023-01-23 16:20:27', '2023-01-23 16:20:27'),
(472, 'director.inb.tour@altayyargroup.com', 0, '2023-01-23 16:20:34', '2023-01-23 16:20:34'),
(473, 'radxb757@emirates.net.ae', 0, '2023-01-23 16:20:38', '2023-01-23 16:20:38'),
(474, 'maherFaried52@gmail.com', 0, '2023-01-23 16:20:44', '2023-01-23 16:20:44'),
(475, 'mmf786@emirates.net.ae', 0, '2023-01-23 16:20:48', '2023-01-23 16:20:48'),
(476, 'holiday1@alkobaisitravel.com', 0, '2023-01-23 16:20:53', '2023-01-23 16:20:53'),
(477, 'mahant@emirates.net.ae', 0, '2023-01-23 16:20:59', '2023-01-23 16:20:59'),
(478, 'peterim@emiratesbank.com', 0, '2023-01-23 16:21:05', '2023-01-23 16:21:05'),
(479, 'aiveen@tourismireland.ae', 0, '2023-01-23 16:21:11', '2023-01-23 16:21:11'),
(480, 'sophia.clifferoberts@condenast.co.uk', 0, '2023-01-23 16:21:17', '2023-01-23 16:21:17'),
(481, 'roisin.osullivan@westin.com', 0, '2023-01-23 16:21:23', '2023-01-23 16:21:23'),
(482, 'info@fadaaqtravel.com', 0, '2023-01-23 16:21:28', '2023-01-23 16:21:28'),
(483, 'gorkha@emirates.net.ae', 0, '2023-01-23 16:21:36', '2023-01-23 16:21:36'),
(484, 'tours@tarom.ro', 0, '2023-01-23 16:21:42', '2023-01-23 16:21:42'),
(485, 'mili@holidays2treasureindia.com', 0, '2023-01-23 16:21:47', '2023-01-23 16:21:47'),
(486, 'issamR@asteco.com', 0, '2023-01-23 16:21:52', '2023-01-23 16:21:52'),
(487, 'michael@iqdam.com', 0, '2023-01-23 16:21:59', '2023-01-23 16:21:59'),
(488, 'info@tibet-adventures.com', 0, '2023-01-23 16:22:11', '2023-01-23 16:22:11'),
(489, 'hikmatkunwar@yahoo.com', 0, '2023-01-23 16:22:20', '2023-01-23 16:22:20'),
(490, 'isbnnepal@gmail.com', 0, '2023-01-23 16:22:25', '2023-01-23 16:22:25'),
(491, 'tibetimports@wlink.com.np', 0, '2023-01-23 16:22:32', '2023-01-23 16:22:32'),
(492, 'shivani@onemain.com', 0, '2023-01-23 16:22:36', '2023-01-23 16:22:36'),
(493, 'evrensel@un.org', 0, '2023-01-23 16:22:42', '2023-01-23 16:22:42'),
(494, 'pratiksha384@yahoo.com', 0, '2023-01-23 16:22:47', '2023-01-23 16:22:47'),
(495, 'ktmmedia@yahoo.com', 0, '2023-01-23 16:22:56', '2023-01-23 16:22:56'),
(496, 'saddam@sdnbd.org', 0, '2023-01-23 16:23:04', '2023-01-23 16:23:04'),
(497, 'bsumit@starcruises.com.my', 0, '2023-01-23 16:23:09', '2023-01-23 16:23:09'),
(498, 'skarmtt@druknet.bt', 0, '2023-01-23 16:23:14', '2023-01-23 16:23:14'),
(499, 'teitur.torkelsson@tufts.edu', 0, '2023-01-23 16:23:22', '2023-01-23 16:23:22'),
(500, 'exploraterur@videotron.ca', 0, '2023-01-23 16:23:27', '2023-01-23 16:23:27'),
(501, 'bpchourx@btt.net.bd', 0, '2023-01-23 16:23:33', '2023-01-23 16:23:33'),
(502, 'riovine@otadventures.com', 0, '2023-01-23 16:23:38', '2023-01-23 16:23:38'),
(503, 'zak.nields@defensegp.com', 0, '2023-01-23 16:23:44', '2023-01-23 16:23:44'),
(504, 'info@reserplus.com', 0, '2023-01-23 16:23:49', '2023-01-23 16:23:49'),
(505, 'thuptengendun@yahoo.com', 0, '2023-01-23 16:23:55', '2023-01-23 16:23:55'),
(506, 'Himalayana@hotmail.com', 0, '2023-01-23 16:24:03', '2023-01-23 16:24:03'),
(507, 'julia@nfunorge.org', 0, '2023-01-23 16:24:08', '2023-01-23 16:24:08'),
(508, 'sampatheena@hotmail.com', 0, '2023-01-23 16:24:16', '2023-01-23 16:24:16'),
(509, 'peter@rowinc.com', 0, '2023-01-23 16:24:27', '2023-01-23 16:24:27'),
(510, 'sue.mcalinden@wexas.com', 0, '2023-01-23 16:24:34', '2023-01-23 16:24:34'),
(511, 'alexander.mandl@domea.com', 0, '2023-01-23 16:24:39', '2023-01-23 16:24:39'),
(512, 'Christian@carebangladesh.org', 0, '2023-01-23 16:24:45', '2023-01-23 16:24:45'),
(513, 'reijo-harkonen@pp.inet.fi', 0, '2023-01-23 16:24:51', '2023-01-23 16:24:51'),
(514, 'boss@fmh.munich-airport.de', 0, '2023-01-23 16:24:56', '2023-01-23 16:24:56'),
(515, 'ashfords@accanel.com', 0, '2023-01-23 16:25:04', '2023-01-23 16:25:04'),
(516, 'amitabh@koreaindia.com', 0, '2023-01-23 16:25:09', '2023-01-23 16:25:09'),
(517, 'dr.rana@the-afc.com', 0, '2023-01-23 16:25:14', '2023-01-23 16:25:14'),
(518, 'travelkingtx@hotmail.com', 0, '2023-01-23 16:25:20', '2023-01-23 16:25:20'),
(519, 'paul.handley@undp.org', 0, '2023-01-23 16:25:26', '2023-01-23 16:25:26'),
(520, 'bellthomas78@hotmail.com', 0, '2023-01-23 16:25:32', '2023-01-23 16:25:32'),
(521, 'raymund@brandtech.com.ph', 0, '2023-01-23 16:25:37', '2023-01-23 16:25:37'),
(522, 'jeet320b6@hotmail.com', 0, '2023-01-23 16:25:44', '2023-01-23 16:25:44'),
(523, 'ktmkktg@info.com.np', 0, '2023-01-23 16:25:48', '2023-01-23 16:25:48'),
(524, 'abc66@vip.163.com', 0, '2023-01-23 16:25:54', '2023-01-23 16:25:54'),
(525, 'ksophastienphong@worldbank.org', 0, '2023-01-23 16:26:05', '2023-01-23 16:26:05'),
(526, 'rum_doodle@gohimalaya.com', 0, '2023-01-23 16:26:12', '2023-01-23 16:26:12'),
(527, 'brainwilliams@redpandaproject.org', 0, '2023-01-23 16:26:19', '2023-01-23 16:26:19'),
(528, 'paul.linehan@hicom.co.uk', 0, '2023-01-23 16:26:24', '2023-01-23 16:26:24'),
(529, 'tran-sports@msa.hinet.net', 0, '2023-01-23 16:26:29', '2023-01-23 16:26:29'),
(530, 'aurigm@schneider.com', 0, '2023-01-23 16:26:36', '2023-01-23 16:26:36'),
(531, 'annabel@blueprintpartners.com', 0, '2023-01-23 16:26:41', '2023-01-23 16:26:41'),
(532, 'tools@ms64.hinet.net', 0, '2023-01-23 16:26:47', '2023-01-23 16:26:47'),
(533, 'imtiaz.ahmed@bradford.gov.uk', 0, '2023-01-23 16:26:53', '2023-01-23 16:26:53');

-- --------------------------------------------------------

--
-- Table structure for table `travel_guides`
--

CREATE TABLE `travel_guides` (
  `id` int UNSIGNED NOT NULL,
  `trip_id` int UNSIGNED NOT NULL,
  `category` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_guides`
--

INSERT INTO `travel_guides` (`id`, `trip_id`, `category`, `title`, `brief`, `description`, `banner`, `thumbnail`, `link`, `created_at`, `updated_at`) VALUES
(1, 4, 'insurance', 'Insurance', '<p style=\"text-align: justify;\"><strong>Tourist Visa</strong></p>\r\n<p style=\"text-align: justify;\">Immigration Office, TIA (Tribhuvan International Airport) under the Department of Immigration has been facilitating tourists flying to Nepal by providing visas on Arrival. To obtain a visa upon arrival by air in Nepal you must fill in an application form and provide a passport copy. Visa application forms are available at the arrival hall, though some airlines provide this form on the flight. There are now visa registration machines in the immigration hall for people with electronic passports, which will automatically fill out the visa form for you after inserting your passport. Or, you can get a visa from Nepalese Diplomatic Missions stationed in your own country before your arrival.</p>\r\n<p style=\"text-align: justify;\"><strong>Getting in Nepal</strong></p>\r\n<p style=\"text-align: justify;\">There are many entry points in Nepal but most of you will take a flight to Kathmandu which is the only entry point for travelers who are entering by air. Your expedition will officially begin after flying to Kathmandu where you will be picked up by a Seven Summit Treks representative at the airport, so you need to provide your arrival details in advance. And also lets us know if your flight gets delayed right away so we can manage everything accordingly.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>Domestic Flights</strong></p>', '<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Domestic flights in Nepal are the main intercommunication to reach the region where you are going for your expedition as most of these regions are disconnected by road transport. Your flights into the Khumbu and any other region that are mentioned in your trip program will be reserved by us on your behalf. Due to the terrain and landscapes of Nepal domestic flights might get caught in weather delays which is why we recommend your return flight back to home be changeable at any time.</p>\r\n<p style=\"text-align: justify;\"><strong>Altitude Sickness</strong></p>\r\n<p style=\"text-align: justify;\">Altitude Sickness is an effect of high-altitude atmospheric pressure that results in a quick change in oxygen level and air pressure of a human body. The symptoms will arise while walking at a high altitude without properly acclimatizing the body. It can happen to anyone even if they have great physical fitness if you climb faster at a higher altitude. It is better to ascend gradually to prevent altitude sickness.</p>\r\n<p style=\"text-align: justify;\"><strong>Money</strong></p>\r\n<p style=\"text-align: justify;\">There is good access to ATMs anywhere in most city areas, however, you will find it hard in rural areas. Different banks have their maximum withdrawal amount limit. Most hotels, restaurants, airlines, and travel agents accept cards as well. It is more important to have enough cash as there will be very limited or no ATMs access in trekking areas and also some reserves cash for emergencies. USD is selectively acceptable in Nepal but still, you need to make sure you have Nepalese currency on hand during the expedition.</p>\r\n<p style=\"text-align: justify;\"><strong>Tipping</strong></p>\r\n<p style=\"text-align: justify;\">There is no significant rule about tipping your guide or porter but it has been more common in Nepal. It is on you to decide whether to thank the guide and porter with tips or not. But in most cases, guides and porters expect tips from you though they don&rsquo;t ask for tips verbally.</p>\r\n<p style=\"text-align: justify;\"><strong>Drinking-Water</strong></p>\r\n<p style=\"text-align: justify;\">The water quality in Nepal isn&rsquo;t the greatest so it is better to use a water filtration or purification tablet. You can also drink boiled water if you like. Make sure to drink a lot of water during the expedition as your body requires more at a higher altitude.</p>\r\n<p style=\"text-align: justify;\"><strong>Safety</strong></p>\r\n<p style=\"text-align: justify;\">Nepal is a heaven for adventures and is comparatively a safe destination for those adventures. There is a low rate of serious crime however you should still take sensible safety measures. Keep an eye on pick-pocketers and snatchers in buses and tourist areas. You can avoid walking with a large amount of cash on your own. Always let your guide know if you&rsquo;re going out during the trip.</p>\r\n<p style=\"text-align: justify;\"><strong>Internet and SIM Card</strong></p>\r\n<p style=\"text-align: justify;\">Most cities have extensive access to the internet, also hotels, restaurants, and cafes that offer free WIFI. But outside the cities, in the remote trekking areas, it&rsquo;s fair to non-existent. During the expedition, the internet is available at the base camp for a certain amount of cost. You can easily purchase a SIM card at an affordable cost. You can use the data package using the SIM card as well.</p>\r\n<p style=\"text-align: justify;\"><strong>Vaccinations &amp; Immunization</strong></p>\r\n<p style=\"text-align: justify;\">Before traveling to Nepal, please consult your travel clinic for updated information on vaccinations and immunizations. The commonly recommended vaccinations are Chickenpox, Diphtheria-Tetanus, Polio, Shingles, Covid-19, Hepatitis A &amp; B, Encephalitis, Malaria, Measles, Rabies, Typhoid, and Yellow Fever.</p>', 'insurance-62808c07ba1aa-w2ttE.jpg', '1678188073_1649840759-LyYiL.jpg', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', '2023-02-03 18:52:09', '2024-02-21 18:47:27'),
(2, 76, 'payment', 'Makalu Base Camp Trek Payment Process', '<p style=\"text-align: justify;\"><strong>Tourist Visa</strong></p>\r\n<p style=\"text-align: justify;\">Immigration Office, TIA (Tribhuvan International Airport) under the Department of Immigration has been facilitating tourists flying to Nepal by providing visas on Arrival. To obtain a visa upon arrival by air in Nepal you must fill in an application form and provide a passport copy. Visa application forms are available at the arrival hall, though some airlines provide this form on the flight. There are now visa registration machines in the immigration hall for people with electronic passports, which will automatically fill out the visa form for you after inserting your passport. Or, you can get a visa from Nepalese Diplomatic Missions stationed in your own country before your arrival.</p>\r\n<p style=\"text-align: justify;\"><strong>Getting in Nepal</strong></p>', '<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">There are many entry points in Nepal but most of you will take a flight to Kathmandu which is the only entry point for travelers who are entering by air. Your expedition will officially begin after flying to Kathmandu where you will be picked up by a Seven Summit Treks representative at the airport, so you need to provide your arrival details in advance. And also lets us know if your flight gets delayed right away so we can manage everything accordingly.</p>\r\n<p style=\"text-align: justify;\"><strong>Domestic Flights</strong></p>\r\n<p style=\"text-align: justify;\">Domestic flights in Nepal are the main intercommunication to reach the region where you are going for your expedition as most of these regions are disconnected by road transport. Your flights into the Khumbu and any other region that are mentioned in your trip program will be reserved by us on your behalf. Due to the terrain and landscapes of Nepal domestic flights might get caught in weather delays which is why we recommend your return flight back to home be changeable at any time.</p>\r\n<p style=\"text-align: justify;\"><strong>Altitude Sickness</strong></p>\r\n<p style=\"text-align: justify;\">Altitude Sickness is an effect of high-altitude atmospheric pressure that results in a quick change in oxygen level and air pressure of a human body. The symptoms will arise while walking at a high altitude without properly acclimatizing the body. It can happen to anyone even if they have great physical fitness if you climb faster at a higher altitude. It is better to ascend gradually to prevent altitude sickness.</p>\r\n<p style=\"text-align: justify;\"><strong>Money</strong></p>\r\n<p style=\"text-align: justify;\">There is good access to ATMs anywhere in most city areas, however, you will find it hard in rural areas. Different banks have their maximum withdrawal amount limit. Most hotels, restaurants, airlines, and travel agents accept cards as well. It is more important to have enough cash as there will be very limited or no ATMs access in trekking areas and also some reserves cash for emergencies. USD is selectively acceptable in Nepal but still, you need to make sure you have Nepalese currency on hand during the expedition.</p>\r\n<p style=\"text-align: justify;\"><strong>Tipping</strong></p>\r\n<p style=\"text-align: justify;\">There is no significant rule about tipping your guide or porter but it has been more common in Nepal. It is on you to decide whether to thank the guide and porter with tips or not. But in most cases, guides and porters expect tips from you though they don&rsquo;t ask for tips verbally.</p>\r\n<p style=\"text-align: justify;\"><strong>Drinking-Water</strong></p>\r\n<p style=\"text-align: justify;\">The water quality in Nepal isn&rsquo;t the greatest so it is better to use a water filtration or purification tablet. You can also drink boiled water if you like. Make sure to drink a lot of water during the expedition as your body requires more at a higher altitude.</p>\r\n<p style=\"text-align: justify;\"><strong>Safety</strong></p>\r\n<p style=\"text-align: justify;\">Nepal is a heaven for adventures and is comparatively a safe destination for those adventures. There is a low rate of serious crime however you should still take sensible safety measures. Keep an eye on pick-pocketers and snatchers in buses and tourist areas. You can avoid walking with a large amount of cash on your own. Always let your guide know if you&rsquo;re going out during the trip.</p>\r\n<p style=\"text-align: justify;\"><strong>Internet and SIM Card</strong></p>\r\n<p style=\"text-align: justify;\">Most cities have extensive access to the internet, also hotels, restaurants, and cafes that offer free WIFI. But outside the cities, in the remote trekking areas, it&rsquo;s fair to non-existent. During the expedition, the internet is available at the base camp for a certain amount of cost. You can easily purchase a SIM card at an affordable cost. You can use the data package using the SIM card as well.</p>\r\n<p style=\"text-align: justify;\"><strong>Vaccinations &amp; Immunization</strong></p>\r\n<p style=\"text-align: justify;\">Before traveling to Nepal, please consult your travel clinic for updated information on vaccinations and immunizations. The commonly recommended vaccinations are Chickenpox, Diphtheria-Tetanus, Polio, Shingles, Covid-19, Hepatitis A &amp; B, Encephalitis, Malaria, Measles, Rabies, Typhoid, and Yellow Fever.</p>', NULL, '1675521229_269603111-1362730430846736-1646778647248994775-n-xPPfQ.jpg', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', '2023-02-03 18:57:39', '2023-02-04 18:21:54'),
(15, 4, 'guide', 'Bhadrabas trip', NULL, '<p>Bhadrabas</p>', 'fqvgltlx0accn-k-R1UK3.jpeg', NULL, NULL, '2023-02-04 12:21:31', '2023-05-15 18:07:54'),
(17, 4, 'insurance', 'june', NULL, '<p>dsdsd june</p>', NULL, NULL, NULL, '2023-02-04 14:04:29', '2024-02-16 19:03:28'),
(18, 83, 'insurance', 'Insurance', '<p>VVIP Everest Expedition Insurance.</p>', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>', 'trip-pdf-62b0218bcb477-OKgDw.jpg', 'lasha-banner1-31226ce5-mrEAe7QGZD6fJdFKbEnMfwF1SZ4NXchNykhSAktz.jpeg', 'Insurance', '2023-02-13 10:47:09', '2023-02-13 11:10:01'),
(19, 82, 'payment', 'Royal Trek', NULL, '<p>test</p>', '', 'intro-beTIj3gIiJwGcKQoWgye1qXsmVUkczoTDrAg2mpc.jpg', 'Quia explicabo Dolo', '2023-02-13 10:51:04', '2023-02-13 10:51:04'),
(20, 4, 'payment', 'Payment Process', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'dji-0147-8u6rgeqrnp93qyxxujdazanvjh0jptti4jeizosc-YjISMBa5Wazkw4jyzCFN5GYhvK4JDj2D8Uh1KcQq.jpg', 'k2-broadpeak-irdsv8whjcivbtrqftsb1xwwt8xkperoufgqehva-VfzWwKISrtKvx6YQjsnFsmxE4LaLGv80m7gRTnor.jpg', 'Everest Expedition Payment Process', '2023-02-13 11:13:46', '2024-02-21 18:39:12');

-- --------------------------------------------------------

--
-- Table structure for table `trip_highlights`
--

CREATE TABLE `trip_highlights` (
  `id` bigint UNSIGNED NOT NULL,
  `trip_detail_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trip_inquiries`
--

CREATE TABLE `trip_inquiries` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trip_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trip_start_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trip_reviews`
--

CREATE TABLE `trip_reviews` (
  `id` int UNSIGNED NOT NULL,
  `trip_id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brief` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `pin`, `created_at`, `updated_at`) VALUES
(1, 'Cyberlink', 'admin@admin.com', NULL, '$2y$10$3DzIBQGsy.5WgODOJkvf..dF8YrJrv7fcbVJ2jp8RbgqH8YuQEj6m', NULL, 1100, '2020-12-22 01:00:49', '2021-03-12 23:51:49');

-- --------------------------------------------------------

--
-- Table structure for table `verify_users`
--

CREATE TABLE `verify_users` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_users`
--

INSERT INTO `verify_users` (`id`, `user_id`, `token`, `created_at`, `updated_at`) VALUES
(1, 40, 'pmysb5FcsW3q9gQ68SWO', '2023-01-02 16:58:35', '2023-01-02 16:58:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cl_associated_posts`
--
ALTER TABLE `cl_associated_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_banner`
--
ALTER TABLE `cl_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_cost_excludes`
--
ALTER TABLE `cl_cost_excludes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_cost_includes`
--
ALTER TABLE `cl_cost_includes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_country`
--
ALTER TABLE `cl_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_pagetype`
--
ALTER TABLE `cl_pagetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_page_docs`
--
ALTER TABLE `cl_page_docs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_posts`
--
ALTER TABLE `cl_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_post_categories`
--
ALTER TABLE `cl_post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_post_type`
--
ALTER TABLE `cl_post_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_related_trip_rel`
--
ALTER TABLE `cl_related_trip_rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_settings`
--
ALTER TABLE `cl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_team`
--
ALTER TABLE `cl_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_trip_activities`
--
ALTER TABLE `cl_trip_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_trip_activity_rel`
--
ALTER TABLE `cl_trip_activity_rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_trip_booking`
--
ALTER TABLE `cl_trip_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_trip_customize`
--
ALTER TABLE `cl_trip_customize`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_trip_destinations`
--
ALTER TABLE `cl_trip_destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_trip_destination_rel`
--
ALTER TABLE `cl_trip_destination_rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_trip_details`
--
ALTER TABLE `cl_trip_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_trip_docs`
--
ALTER TABLE `cl_trip_docs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_trip_film_making`
--
ALTER TABLE `cl_trip_film_making`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_trip_gear`
--
ALTER TABLE `cl_trip_gear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_trip_grade`
--
ALTER TABLE `cl_trip_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_trip_groups`
--
ALTER TABLE `cl_trip_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_trip_group_rel`
--
ALTER TABLE `cl_trip_group_rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_trip_itinerary`
--
ALTER TABLE `cl_trip_itinerary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_trip_itinerary_rel`
--
ALTER TABLE `cl_trip_itinerary_rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_trip_regions`
--
ALTER TABLE `cl_trip_regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_trip_region_rel`
--
ALTER TABLE `cl_trip_region_rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_trip_tailor_made`
--
ALTER TABLE `cl_trip_tailor_made`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_trip_type`
--
ALTER TABLE `cl_trip_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dymantic_instagram_basic_profiles`
--
ALTER TABLE `dymantic_instagram_basic_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dymantic_instagram_basic_profiles_username_unique` (`username`);

--
-- Indexes for table `dymantic_instagram_feed_tokens`
--
ALTER TABLE `dymantic_instagram_feed_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_images`
--
ALTER TABLE `guide_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_details`
--
ALTER TABLE `page_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_models`
--
ALTER TABLE `page_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_guides`
--
ALTER TABLE `travel_guides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_highlights`
--
ALTER TABLE `trip_highlights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_inquiries`
--
ALTER TABLE `trip_inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_reviews`
--
ALTER TABLE `trip_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trip_reviews_trip_id_foreign` (`trip_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `verify_users_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cl_associated_posts`
--
ALTER TABLE `cl_associated_posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cl_banner`
--
ALTER TABLE `cl_banner`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cl_cost_excludes`
--
ALTER TABLE `cl_cost_excludes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `cl_cost_includes`
--
ALTER TABLE `cl_cost_includes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `cl_country`
--
ALTER TABLE `cl_country`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `cl_pagetype`
--
ALTER TABLE `cl_pagetype`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cl_page_docs`
--
ALTER TABLE `cl_page_docs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cl_posts`
--
ALTER TABLE `cl_posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `cl_post_categories`
--
ALTER TABLE `cl_post_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_post_type`
--
ALTER TABLE `cl_post_type`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cl_related_trip_rel`
--
ALTER TABLE `cl_related_trip_rel`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=458;

--
-- AUTO_INCREMENT for table `cl_settings`
--
ALTER TABLE `cl_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cl_team`
--
ALTER TABLE `cl_team`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_trip_activities`
--
ALTER TABLE `cl_trip_activities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cl_trip_activity_rel`
--
ALTER TABLE `cl_trip_activity_rel`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `cl_trip_booking`
--
ALTER TABLE `cl_trip_booking`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cl_trip_customize`
--
ALTER TABLE `cl_trip_customize`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cl_trip_destinations`
--
ALTER TABLE `cl_trip_destinations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cl_trip_destination_rel`
--
ALTER TABLE `cl_trip_destination_rel`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=764;

--
-- AUTO_INCREMENT for table `cl_trip_details`
--
ALTER TABLE `cl_trip_details`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `cl_trip_docs`
--
ALTER TABLE `cl_trip_docs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `cl_trip_film_making`
--
ALTER TABLE `cl_trip_film_making`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_trip_gear`
--
ALTER TABLE `cl_trip_gear`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `cl_trip_grade`
--
ALTER TABLE `cl_trip_grade`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cl_trip_groups`
--
ALTER TABLE `cl_trip_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cl_trip_group_rel`
--
ALTER TABLE `cl_trip_group_rel`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;

--
-- AUTO_INCREMENT for table `cl_trip_itinerary`
--
ALTER TABLE `cl_trip_itinerary`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1433;

--
-- AUTO_INCREMENT for table `cl_trip_itinerary_rel`
--
ALTER TABLE `cl_trip_itinerary_rel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_trip_regions`
--
ALTER TABLE `cl_trip_regions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `cl_trip_region_rel`
--
ALTER TABLE `cl_trip_region_rel`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `cl_trip_tailor_made`
--
ALTER TABLE `cl_trip_tailor_made`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cl_trip_type`
--
ALTER TABLE `cl_trip_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dymantic_instagram_basic_profiles`
--
ALTER TABLE `dymantic_instagram_basic_profiles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dymantic_instagram_feed_tokens`
--
ALTER TABLE `dymantic_instagram_feed_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guide_images`
--
ALTER TABLE `guide_images`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_details`
--
ALTER TABLE `page_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `page_models`
--
ALTER TABLE `page_models`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=534;

--
-- AUTO_INCREMENT for table `travel_guides`
--
ALTER TABLE `travel_guides`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `trip_highlights`
--
ALTER TABLE `trip_highlights`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trip_inquiries`
--
ALTER TABLE `trip_inquiries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trip_reviews`
--
ALTER TABLE `trip_reviews`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `verify_users`
--
ALTER TABLE `verify_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `trip_reviews`
--
ALTER TABLE `trip_reviews`
  ADD CONSTRAINT `trip_reviews_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `cl_trip_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `verify_users`
--
ALTER TABLE `verify_users`
  ADD CONSTRAINT `verify_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `subscribers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
