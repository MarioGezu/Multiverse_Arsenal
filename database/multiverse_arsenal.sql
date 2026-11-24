-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2026 at 11:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multiverse_arsenal`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `shipping_address` varchar(100) NOT NULL,
  `isvip` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `email`, `phone_number`, `shipping_address`, `isvip`) VALUES
(1, 'Alex Mercer', 'alex.mercer@example.com', '+1 415 555 0141', '742 Evergreen Terrace, San Francisco, US', 1),
(2, 'Elena Vance', 'elena.vance@example.com', '+44 20 7946 0198', '221B Baker Street, London, UK', 1),
(3, 'Marcus Sterling', 'm.sterling@example.com', '+49 30 5550 0123', 'Torstraße 112, Berlin, DE', 0),
(4, 'Chloe Lindqvist', 'chloe.l@example.com', '+46 8 501 24177', 'Drottninggatan 88, Stockholm, SE', 0),
(5, 'Kenji Takahashi', 'kenji.t@example.com', '+81 3 5550 0164', '1-1-2 Oshiage, Tokyo, JP', 1);

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `currency` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `name`, `currency`) VALUES
(1, 'Counter-Strike 2', 'USD'),
(2, 'Satisfactory', 'Ficsit Ticket'),
(3, 'Resident Evil', 'LEI'),
(4, 'Team Fortress 2', 'Scrap Metal'),
(5, 'Cyberpunk', 'EU-USD'),
(6, 'Valorant', 'Credit'),
(7, 'Minecraft', 'Emerald');

-- --------------------------------------------------------

--
-- Table structure for table `t_transaction`
--

CREATE TABLE `t_transaction` (
  `id` int(11) NOT NULL,
  `weapon_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `t_date` date NOT NULL,
  `discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `t_transaction`
--

INSERT INTO `t_transaction` (`id`, `weapon_id`, `customer_id`, `t_date`, `discount`) VALUES
(1, 20, 1, '2026-10-14', 10),
(2, 111, 2, '2026-10-28', 15),
(3, 47, 3, '2026-11-02', 10),
(4, 55, 4, '2026-11-09', 0),
(5, 102, 5, '2026-11-20', 20);

-- --------------------------------------------------------

--
-- Table structure for table `weapons`
--

CREATE TABLE `weapons` (
  `id` int(11) NOT NULL,
  `game_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- Dumping data for table `weapons`
--

INSERT INTO `weapons` (`id`, `game_id`, `name`, `price`) VALUES
(1, 1, 'Glock-18', 200),
(2, 1, 'P2000', 200),
(3, 1, 'USP-S', 200),
(4, 1, 'Dual Berettas', 300),
(5, 1, 'P250', 300),
(6, 1, 'Five-SeveN', 500),
(7, 1, 'Tec-9', 500),
(8, 1, 'CZ75-Auto', 500),
(9, 1, 'R8 Revolver', 600),
(10, 1, 'Desert Eagle', 700),
(11, 1, 'MAC-10', 1050),
(12, 1, 'UMP-45', 1200),
(13, 1, 'MP9', 1250),
(14, 1, 'PP-Bizon', 1300),
(15, 1, 'MP7', 1400),
(16, 1, 'MP5-SD', 1400),
(17, 1, 'P90', 2350),
(18, 1, 'Galil AR', 1800),
(19, 1, 'FAMAS', 1950),
(20, 1, 'AK-47', 2700),
(21, 1, 'M4A4', 2900),
(22, 1, 'M4A1-S', 2900),
(23, 1, 'SG 553', 3000),
(24, 1, 'AUG', 3300),
(25, 1, 'SSG 08', 1700),
(26, 1, 'AWP', 4750),
(27, 1, 'G3SG1', 5000),
(28, 1, 'SCAR-20', 5000),
(29, 1, 'Nova', 1050),
(30, 1, 'Sawed-Off', 1100),
(31, 1, 'MAG-7', 1300),
(32, 1, 'XM1014', 2000),
(33, 1, 'Negev', 1700),
(34, 1, 'M249', 5200),
(35, 1, 'Zeus x27', 200),
(36, 6, 'Shorty', 300),
(37, 6, 'Frenzy', 450),
(38, 6, 'Ghost', 500),
(39, 6, 'Sheriff', 800),
(40, 6, 'Stinger', 1100),
(41, 6, 'Spectre', 1600),
(42, 6, 'Bucky', 850),
(43, 6, 'Judge', 1850),
(44, 6, 'Bulldog', 2050),
(45, 6, 'Guardian', 2250),
(46, 6, 'Phantom', 2900),
(47, 6, 'Vandal', 2900),
(48, 6, 'Marshal', 950),
(49, 6, 'Outlaw', 2400),
(50, 6, 'Operator', 4700),
(51, 6, 'Ares', 1600),
(52, 6, 'Odin', 3200),
(53, 7, 'Iron Sword', 3),
(54, 7, 'Diamond Sword', 15),
(55, 7, 'Netherite Sword', 30),
(56, 7, 'Iron Axe', 2),
(57, 7, 'Diamond Axe', 14),
(58, 7, 'Netherite Axe', 28),
(59, 7, 'Bow', 2),
(60, 7, 'Crossbow', 4),
(61, 7, 'Mace', 32),
(62, 7, 'Trident', 48),
(63, 7, 'Iron Spear', 4),
(64, 7, 'Diamond Spear', 16),
(65, 7, 'Netherite Spear', 28),
(66, 2, 'Xeno-Zapper', 1),
(67, 2, 'Xeno-Basher', 2),
(68, 2, 'Rebar Gun', 4),
(69, 2, 'Rifle', 8),
(70, 2, 'Boombox', 2),
(71, 2, 'Rifle', 8),
(72, 2, 'Nobelisk', 10),
(73, 2, 'Pulse Nobelisk', 12),
(74, 2, 'Gas Nobelisk', 14),
(75, 2, 'Cluster Nobelisk', 20),
(76, 2, 'Nuke Nobelisk', 100),
(77, 4, 'Scattergun', 4),
(78, 4, 'Pistol', 1),
(79, 4, 'Rocket Launcher', 16),
(80, 4, 'Shotgun', 2),
(81, 4, 'Flame Thrower', 12),
(82, 4, 'Grenade Launcher', 14),
(83, 4, 'Stickybomb Launcher', 18),
(84, 4, 'Minigun', 17),
(85, 4, 'Syringe Gun', 2),
(86, 4, 'Sniper Rifle', 15),
(87, 4, 'SMG', 4),
(88, 4, 'Revolver', 2),
(89, 4, 'Invisibility Watch', 20),
(90, 3, 'LEMI', 200),
(91, 3, 'M1911', 400),
(92, 3, 'V61 Custom', 120000),
(93, 3, 'USM-AI', 350),
(94, 3, 'Samurai Edge - AW Model-01', 200),
(95, 3, 'M1897', 1000),
(96, 3, 'W870 TAC', 3000),
(97, 3, 'SYG-12', 180000),
(98, 3, 'F2 Rifle', 6000),
(99, 3, 'WCX', 200),
(100, 3, 'Dragoon', 400),
(101, 3, 'M1851 Wolfsbane', 120000),
(102, 3, 'S.T.A.K.E.', 300000),
(103, 3, 'Handcannon PZ', 1100),
(104, 3, 'GM 79', 50000),
(105, 3, 'Rocket Pistol', 1500),
(106, 3, 'Matilda', 800),
(107, 3, 'Requiem', 130000),
(108, 3, 'Rocket Launcher (Special)', 250000),
(109, 5, 'Dying Night', 2500),
(110, 5, 'Skippy', 5000),
(111, 5, 'Malorian Arms 3516', 50000),
(112, 5, 'Kongou', 3000),
(113, 5, 'Lizzie', 2000),
(114, 5, 'Archangel', 12000),
(115, 5, 'Crash', 10000),
(116, 5, 'Comrades Hammer', 5000),
(117, 5, 'Amnesty', 3000),
(118, 5, 'Divided We Stand', 7500),
(119, 5, 'Moron Labe', 6000),
(120, 5, 'Psalm 11:6', 6500),
(121, 5, 'Guts', 45000),
(122, 5, 'Mox', 20000),
(123, 5, 'Ba Xing Chong', 15000),
(124, 5, 'Fenrir', 9000),
(125, 5, 'Buzzsaw', 3000),
(126, 5, 'Yinglong', 3500),
(127, 5, 'Overwatch', 18000),
(128, 5, 'O Five', 1500),
(129, 5, 'Errata', 10000),
(130, 5, 'Her Majesty', 13000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_transaction`
--
ALTER TABLE `t_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `weapon_id` (`weapon_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `weapons`
--
ALTER TABLE `weapons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_id` (`game_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `t_transaction`
--
ALTER TABLE `t_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `weapons`
--
ALTER TABLE `weapons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_transaction`
--
ALTER TABLE `t_transaction`
  ADD CONSTRAINT `t_transaction_ibfk_1` FOREIGN KEY (`weapon_id`) REFERENCES `weapons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_transaction_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `weapons`
--
ALTER TABLE `weapons`
  ADD CONSTRAINT `weapons_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
