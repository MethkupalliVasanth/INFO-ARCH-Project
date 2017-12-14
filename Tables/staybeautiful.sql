-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2017 at 04:41 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `staybeautiful`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `ID` int(11) NOT NULL,
  `Street1` varchar(60) NOT NULL,
  `Street2` varchar(60) NOT NULL,
  `City` varchar(60) NOT NULL,
  `State` varchar(60) NOT NULL,
  `Zipcode` int(255) NOT NULL,
  `Phone` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`ID`, `Street1`, `Street2`, `City`, `State`, `Zipcode`, `Phone`) VALUES
(1, '3230', 'Hoosier court Ave', 'Bloomington', 'Indiana', 47404, 2123467843);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `ItemId` int(11) NOT NULL,
  `CategoryId` varchar(20) NOT NULL,
  `SubCategoryId` varchar(20) NOT NULL,
  `Category` varchar(40) NOT NULL,
  `SubCategory` varchar(40) NOT NULL,
  `ProductName` varchar(40) NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `ImageLink` varchar(100) NOT NULL,
  `SubDescription` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`ItemId`, `CategoryId`, `SubCategoryId`, `Category`, `SubCategory`, `ProductName`, `Description`, `ImageLink`, `SubDescription`) VALUES
(1, '1', '5', 'Recipes', 'NorthIndian', 'Butter-Chicken', 'Using 2 Tbsp of butter in a large skillet over medium-high heat, brown the pieces of the chicken so each side is browned. They do not need to be fully cooked all the way through. Work in batches, and set aside when you’re done.\r\nMelt another 2 Tbsp of butter in the pan over medium heat. Add the onion, and cook until beginning to soften — about three minutes. Add the garlic, garam masala, ginger, chili powder, cumin, and cayenne. Stir to combine, and cook for about 45 seconds before adding the tomato sauce.\r\nBring the mixture to a simmer and let cook for five minutes before adding the cream. Bring the mixture back to a simmer, add the browned chicken, and let simmer for 10-15 minutes. Keep the heat low here — not a rolling boil.\r\nStir in the remaining 2 Tbsp of butter, and season with salt and pepper, to taste.\r\nServe garnished with lime and cilantro, alongside rice and naan.', 'images/recipes/northindian/Indianbutterchicken.jpg', 'images/recipes/northindian/Indianbutterchicken.jpg'),
(2, '1', '6', 'Recipes', 'SouthIndian', 'OnionRavaDosa', 'Mix the rice flour and rava with some water and mix till its a smooth batter. Add the asafoetida, cumin seeds and salt. Cover and keep it in a warm place for a few hours to ferment. Mix the chopped onions, green chillies, ginger, cashew nuts and black pepper in a bowl and keep it aside. Heat a flat pan (tawa) and grease it with a spoon of oil. Add some water in the dosa batter and make it into a thin batter. Pour 1/2 cup of the batter in center of the pan and quickly spread with outward spiral motion to form a thin pancake of about 8 inches in diameter. Sprinkle some onion-green chilli mixture on top of it. Dot the edges with little oil and cook until golden brown. Using a spatula carefully fold the dosa and remove from the pan. Serve hot with chutneys or sambhar.\r\n', 'images/recipes/southindian/ravadosa.jpg', 'https://www.yummytummyaarthi.com/wp-content/uploads/2012/03/1-1.jpg'),
(3, '1', '8', 'Recipes', 'WestIndian', 'Steamed-Dhokla', 'In a bowl mix gram flour, citric acid, salt, sugar and turmeric. Add water and make it into a smooth batter with medium thick consistency. In a glass make add the fruit salt or baking powder. Add water to it and pour this into the dhokla mixture. Grease the steaming tin with 2 drops of oil and por the mixture into it. Steam for about 15-20 minutes or till cooked. In a pan, add oil, mustard seeds, curry leaves and red chillies. Let it splutter. Pour the tadka over the prepared dhokla. Cut into pieces and serve.', 'images/recipes/westindian/dhokla.jpg', 'https://i1.wp.com/thenovicehousewife.files.wordpress.com/2010/12/dsc03917.jpg'),
(4, '1', '7', 'Recipes', 'EastIndian', 'Chicken-Vindaloo', 'Place cubed chicken pieces into a glass bowl or zip top bag and set aside.\r\nIn a glass bowl or measuring cup, add vinegar and all the spices needed for the spice blend and stir to combine. Set aside and allow this vinegar-spice mixture to stand for about 15-20 minutes. Then transfer the vinegar-spice blend into a blender and puree into a fine paste.\r\nPour the vinegar-spice mixture over the chicken and toss well to evenly coat all the chicken pieces. In a large and deep skillet/wok heat the oil over medium heat. Add the marinated chicken and cook for 4-5 minutes. Stirring often.\r\nAdd the chopped onions and tomato paste then season with salt and pepper stirring occasionally. Add 1/2 cup of water, cover the skillet with a tight-fitting lid and lower the heat to low. Let the chicken simmer on low for 7-10 minutes or till well done and the chicken is cooked through to 165°F.\r\nIf you prefer little thinner gravy add water as need and let it simmer for another 4-5 minutes before serving.', 'images/recipes/eastindian/Chicken-Vindaloo-main-main.jpg', 'http://www.lindysez.com/wp-content/uploads/2014/06/Chicken-Vindaloo-main-main.jpg'),
(5, '1', '5', 'test', 'test', 'test', 'test', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `MenuId` varchar(20) NOT NULL,
  `MenuName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`MenuId`, `MenuName`) VALUES
('', ''),
('1', 'Recipes'),
('2', 'Handicrafts'),
('3', 'Lifestyle'),
('4', 'About Us');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `vote` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `product_id`, `vote`) VALUES
(49, 3, 2.5),
(50, 3, 3.2),
(51, 3, 1.6),
(52, 3, 1.6),
(53, 2, 2.5),
(54, 6, 1.4),
(55, 2, 3.8);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `Name` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Review` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`Name`, `Email`, `Review`) VALUES
('vaishali sainaath', 'vaishalisainaath@gmail.com', 'Great product. Exceeded expectations.\r\nLasted longer than anticipated. I would recommend this for everyone.'),
('Deepika', 'dbajpai@iu.edu', 'Not bad. Could improve.\r\nI would suggest looking at other products too.'),
('vaishali sainaath', 'vaishalisainaath@gmail.com', 'Good'),
('Deepika Bajpai', 'dbajpai@iu.edu', 'better');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `SubId` varchar(20) NOT NULL,
  `SubName` varchar(20) NOT NULL,
  `Href` varchar(80) NOT NULL,
  `CatId` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`SubId`, `SubName`, `Href`, `CatId`) VALUES
('', '', '', ''),
('1', 'CaneHandicrafts', 'ProdList.php?clicked=CaneHandicrafts', '2'),
('10', 'Meditation', 'ProdList.php?clicked=Meditation', '3'),
('11', 'Mindfulness', 'ProdList.php?clicked=Mindfulness', '3'),
('12', 'Astrology', 'ProdList.php?clicked=Astrology', '3'),
('2', 'MarbleHandicrafts', 'ProdList.php?clicked=MarbleHandicrafts', '2'),
('3', 'Handlooms', 'ProdList.php?clicked=Handlooms', '2'),
('4', 'Pottery', 'ProdList.php?clicked=Pottery', '2'),
('5', 'NorthIndian', 'ProdList.php?clicked=NorthIndian', '1'),
('6', 'SouthIndian', 'ProdList.php?clicked=SouthIndian', '1'),
('7', 'EastIndian', 'ProdList.php?clicked=EastIndian', '1'),
('8', 'WestIndian', 'ProdList.php?clicked=WestIndian', '1'),
('9', 'Yoga', 'ProdList.php?clicked=Yoga', '3'),
('TEST', 'TEST', '', 'TEST');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`ItemId`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`MenuId`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`SubId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
