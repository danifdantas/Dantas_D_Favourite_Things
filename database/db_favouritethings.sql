-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 30, 2019 at 12:59 AM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favouritethings`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(4) UNSIGNED NOT NULL,
  `things_id` int(4) DEFAULT NULL,
  `image` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `things_id`, `image`) VALUES
(1, 1, 'ocean_2.jpg'),
(2, 1, 'ocean_3.jpg'),
(7, 1, 'ocean_4.jpg'),
(8, 2, 'coffee_2.jpg'),
(9, 2, 'coffee_3.jpg'),
(10, 2, 'coffee_4.jpg'),
(11, 3, 'nieces_2.jpg'),
(12, 3, 'nieces_3.jpg'),
(13, 3, 'nieces_4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `things`
--

CREATE TABLE `things` (
  `things_id` tinyint(4) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `desc` text,
  `quote` varchar(255) DEFAULT NULL,
  `quote_author` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `things`
--

INSERT INTO `things` (`things_id`, `title`, `desc`, `quote`, `quote_author`, `image`) VALUES
(1, 'The Ocean', 'One of my favourite things is the sea because of the calming effect it has on me. Everything about the sea is amazing, its mysteriousness, its power, its relaxing sound.\n\nLife itself arose from the oceans. The ocean is vast, covering 140 million square miles, some 72 per cent of the earth\'s surface. Not only has the oceans always been a prime source of nourishment for the life it helped generate, but from earliest recorded history it has served for trade and commerce, adventure and discovery. It has kept people apart and brought them together.\n\nEven now, when the continents have been mapped and their interiors made accessible by road, river and air, most of the world\'s people live no more than 200 miles from the sea and relate closely to it. (United Nations, 2018).', 'It is a curious situation that the sea, from which life first arose should now be threatened by the activities of one form of that life. But the sea, though changed in a sinister way, will continue to exist; the threat is rather to life itself.', 'Rachel Carson, The Sea Around Us', 'ocean_1.jpg'),
(2, 'Coffee', 'Brazil is the leading grower of coffee beans, producing one-third of the worlds total. Maybe that\'s why I love it so much, or maybe it is because of its rich flavours, hipnotizing aroma and energizing effects.\n \nCoffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species. The genus Coffea is native to tropical Africa (specifically having its origin in Ethiopia and Sudan) and Madagascar, the Comoros, Mauritius, and Réunion in the Indian Ocean. Coffee plants are now cultivated in over 70 countries, primarily in the equatorial regions of the Americas, Southeast Asia, Indian subcontinent, and Africa. The two most commonly grown are C. arabica and C. robusta. Once ripe, coffee berries are picked, processed, and dried. Dried coffee seeds (referred to as \"beans\") are roasted to varying degrees, depending on the desired flavor. Roasted beans are ground and then brewed with near-boiling water to produce the beverage known as coffee.\n\nCoffee is darkly colored, bitter, slightly acidic and has a stimulating effect in humans, primarily due to its caffeine content. It is one of the most popular drinks in the world, and it can be prepared and presented in a variety of ways (e.g., espresso, French press, café latte). It is usually served hot, although iced coffee is a popular alternative. Clinical studies indicate that moderate coffee consumption is benign or mildly beneficial in healthy adults, with continuing research on whether long-term consumption lowers the risk of some diseases, although those long-term studies are of generally poor quality. (Wikipedia)', 'Good communication is just as stimulating as black coffee, and just as hard to sleep after.', 'Anne Morrow Lindbergh', 'coffee_1.jpg'),
(3, 'My Nieces', 'I thought I new everything about love and all of its meanings. However, it was only after my nieces were born that I actually discovered its true strength and power. They are the cutest kids ever!', 'Only an aunt can give hugs like a mother, keep secrets like a sister and share love like a friend', 'Unknown', 'nieces_1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `things`
--
ALTER TABLE `things`
  ADD PRIMARY KEY (`things_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `things`
--
ALTER TABLE `things`
  MODIFY `things_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
