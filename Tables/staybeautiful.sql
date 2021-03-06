-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2017 at 07:11 AM
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
(5, '3', '10', 'Lifestyle', 'Meditation', 'Meditation', 'Meditation is an approach to training the mind, similar to the way that fitness is an approach to training the body. But many meditation techniques exist — so how do you learn how to meditate?\r\n\r\n“In Buddhist tradition, the word ‘meditation’ is equivalent to a word like ‘sports’ in the U.S. It’s a family of activities, not a single thing,” University of Wisconsin neuroscience lab director Richard J. Davidson, Ph.D., told The New York Times. And different meditation practices require different mental skills.\r\n\r\nIt’s extremely difficult for a beginner to sit for hours and think of nothing or have an “empty mind.” We have some tools such as a beginner mediation DVD or a brain sensing headband to help you through this process when you are starting out. In general, the easiest way to begin meditating is by focusing on the breath — an example of one of the most common approaches to meditation: concentration.\r\n', 'images/lifestyle/meditation.jpg', 'Meditation, a form of lifestyle'),
(6, '3', '9', 'Lifestyle', 'Yoga', 'Yoga', 'Yoga is an old discipline from India. It is both spiritual and physical. Yoga uses breathing techniques, exercise and meditation. It helps to improve health and happiness.\r\nYoga is the Sanskrit word for union.\r\nPatanjali was a pioneer of classical yoga. He defined yoga as \"the cessation of the modification of the mind\". (stopping changing the mind).\r\nA person doing yoga will move from one posture (called asana) to another. For example, the \"sun-salutation\" contains 12 poses of asanas, one after the other, and is said to help balance body and soul. The \"sun-salutation\" is popularly known as \"Suryanamaskar\".\r\n', 'images/lifestyle/yoga.jpg', 'Yoga, a form of lifestyle'),
(7, '3', '11', 'Lifestyle', 'Mindfulness', 'Mindfulness', 'Mindfulness. It’s a pretty straightforward word. It suggests that the mind is fully attending to what’s happening, to what you’re doing, to the space you’re moving through. That might seem trivial, except for the annoying fact that we so often veer from the matter at hand. Our mind takes flight, we lose touch with our body, and pretty soon we’re engrossed in obsessive thoughts about something that just happened or fretting about the future. And that makes us anxious.\r\nMindfulness is the basic human ability to be fully present, aware of where we are and what we’re doing, and not overly reactive or overwhelmed by what’s going on around us.\r\n', 'images/lifestyle/mindfulness.jpg', 'mindfulness, a form of lifestyle'),
(8, '3', '12', 'Lifestyle', 'Astrology', 'Astrology', 'Astrology is the study of how the positions of the stars and movements of the planets have a supposed influence on events and on the lives and behavior of people.\r\nAn astrologer looks at the planets\' positions and tries to understand a person\'s character or tries to predict the future. Modern astrologers see astrology as a symbolic language. It is also seen as an art, or a kind of divination. Astrologers often say that the position of the stars help them know the future, but they can not really do it.[5]\r\nAstrology and astronomy started out as the same thing, but today they are very different.\r\nNewspapers will often print horoscopes trying to guess persons future based on their birth sign.\r\n', 'images/lifestyle/astrology.jpg', 'astrology'),
(9, '2', '1', 'Handicrafts', 'CaneHandicrafts', 'CaneHandicrafts', 'Assam is rich in sylvan resources and most of its forests are richly stocked with bamboos and canes of various species. Bamboo is a raw material of great versatility and forms an integral part of the lifestyle and economy of Assam. Special mention may however be made of the forests of Mizo Hills, Cachar, Mikir and North Cachar Hills, Nowgong and Lakhimpur districts. While touring in the hill districts, one sometimes wonders at the vast expanses of bamboos and canes. \r\nThe making of bamboo and cane products is perhaps the most universal of all the crafts practiced by a large number of artisans scattered throughout the State. It is practiced as a household industry and no mechanical device is used. Cane and bamboo products are used for a wide range of purposes and extensively used in every household.\r\n', 'images/handicrafts/cane.jpg', 'Cane handicrafts'),
(10, '2', '2', 'Handicrafts', 'MarbleHandicrafts', 'MarbleHandicrafts', 'Marble sculpture is the art of creating three-dimensional forms from marble. Sculpture is among the oldest of the arts. Even before painting cave walls, early humans fashioned shapes from stone. From these beginnings, artifacts have evolved to their current complexity.\r\nMarble is a metamorphic rock derived from limestone, composed mostly of calcite (a crystalline form of calcium carbonate, CaCO3). The original source of the parent limestone is the seabed deposition of calcium carbonate in the form of microscopic animal skeletons or similar materials. \r\n', 'images/handicrafts/marble.jpg', 'marble'),
(11, '2', '3', 'Handicrafts', 'Handlooms', 'Handlooms', 'Handloom sarees are a traditional textile art of Bangladesh and India. The production of handloom sarees are important for economic development in rural India. Completion of a single saree takes two to three days of work. Several regions have their own traditions of handloom sarees.\r\nA handloom saree is often woven on a shuttle-pit loom made from ropes, wooden beams and poles.\r\n', 'images/handicrafts/handlooms.jpeg', 'handlooms'),
(12, '2', '4', 'Handicrafts', 'Pottery', 'Pottery', 'Pottery is the ceramic material which makes up potterywares, of which major types include earthenware, stoneware and porcelain. The place where such wares are made by a potter is also called a pottery (plural \"potteries\"). The definition of pottery used by the American Society for Testing and Materials (ASTM) is \"all fired ceramic wares that contain clay when formed, except technical, structural, and refractory products.\"\r\n', 'images/handicrafts/pottery.jpg', 'pottery');

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
(55, 2, 3.8),
(56, 12, 2.4);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
