-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2017 at 06:12 PM
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
(2, '1', '5', 'Recipes', 'South Indian', 'Onion Rava Dosa', 'Mix the rice flour and rava with some water and mix till its a smooth batter. Add the asafoetida, cumin seeds and salt. Cover and keep it in a warm place for a few hours to ferment. Mix the chopped onions, green chillies, ginger, cashew nuts and black pepper in a bowl and keep it aside. Heat a flat pan (tawa) and grease it with a spoon of oil. Add some water in the dosa batter and make it into a thin batter. Pour 1/2 cup of the batter in center of the pan and quickly spread with outward spiral motion to form a thin pancake of about 8 inches in diameter. Sprinkle some onion-green chilli mixture on top of it. Dot the edges with little oil and cook until golden brown. Using a spatula carefully fold the dosa and remove from the pan. Serve hot with chutneys or sambhar.\r\n', 'images/recipes/southindian/ravadosa.jpg', 'https://www.yummytummyaarthi.com/wp-content/uploads/2012/03/1-1.jpg'),
(3, '1', '5', 'Recipes', 'West Indian', 'Steamed Dhokla', 'In a bowl mix gram flour, citric acid, salt, sugar and turmeric. Add water and make it into a smooth batter with medium thick consistency. In a glass make add the fruit salt or baking powder. Add water to it and pour this into the dhokla mixture. Grease the steaming tin with 2 drops of oil and por the mixture into it. Steam for about 15-20 minutes or till cooked. In a pan, add oil, mustard seeds, curry leaves and red chillies. Let it splutter. Pour the tadka over the prepared dhokla. Cut into pieces and serve.', 'images/recipes/westindian/dhokla.jpg', 'https://i1.wp.com/thenovicehousewife.files.wordpress.com/2010/12/dsc03917.jpg'),
(4, '1', '5', 'Recipes', 'East India', 'Chicken Vindaloo', 'Place cubed chicken pieces into a glass bowl or zip top bag and set aside.\r\nIn a glass bowl or measuring cup, add vinegar and all the spices needed for the spice blend and stir to combine. Set aside and allow this vinegar-spice mixture to stand for about 15-20 minutes. Then transfer the vinegar-spice blend into a blender and puree into a fine paste.\r\nPour the vinegar-spice mixture over the chicken and toss well to evenly coat all the chicken pieces. In a large and deep skillet/wok heat the oil over medium heat. Add the marinated chicken and cook for 4-5 minutes. Stirring often.\r\nAdd the chopped onions and tomato paste then season with salt and pepper stirring occasionally. Add 1/2 cup of water, cover the skillet with a tight-fitting lid and lower the heat to low. Let the chicken simmer on low for 7-10 minutes or till well done and the chicken is cooked through to 165°F.\r\nIf you prefer little thinner gravy add water as need and let it simmer for another 4-5 minutes before serving.', 'images/recipes/eastindian/Chicken-Vindaloo-main-main.jpg', 'http://www.lindysez.com/wp-content/uploads/2014/06/Chicken-Vindaloo-main-main.jpg'),
(5, '2', '3', 'MakeUp', 'Lips', 'Rimmel-Lipstick', 'Rimmel London Lasting Finish by Kate Lipstick, Shade 001. Delivers sheer natural long wearing sexy color.', 'images/makeup/lips/rimmel.jpg', 'images/makeup/lips/rimmelF.jpg'),
(6, '2', '3', 'MakeUp', 'Lips', 'L.AGirl-Lipstick', 'About the Product L.A. GIRL Matte Flat Velvet Lipstick - Va Voom! PLUM', 'images/makeup/lips/lagirl.jpg', 'images/makeup/lips/lagirlF.jpg'),
(7, '2', '3', 'MakeUp', 'Lips', 'MAC-Lipstick ', 'About the Product MAC Retro Matte Lipstick - Ruby Woo Description: Vivid bluish-red (Matte)', 'images/makeup/lips/mac.jpg', 'images/makeup/lips/macF.jpg'),
(8, '2', '3', 'MakeUp', 'Lips', 'Maybelline-Lipstick', 'About the Product:- (4 Pack) Maybelline ColorSensational Lipstick 100th Anniversary Limited Edition', 'images/makeup/lips/maybelline.jpg', 'images/makeup/lips/maybellineF.jpg'),
(9, '3', '9', 'Hairs', 'Shampoo', 'Loreal-Shampoo', 'L\'Oreal Professional Vitamino Color Shampoo gently cleanses color treated and highlighted hair. This formula works to keep your hair color vibrant and uses antioxidants and UV filters to prevent damage.', 'images/hair/shampoo/loreal.jpg', 'images/hair/shampoo/lorealF.jpg'),
(10, '3', '9', 'Hairs', 'Shampoo', 'Ginger-Shampoo', 'Stop flakes and soothe your scalp using a gentle, yet effective shampoo with refreshing ginger for healthy, more manageable locks.\r\nGinger root, birch bark, white willow and oak moss, known for their astringent properties, help to promote a healthy scalp.\r\nCommunity Trade organic honey moisturizes and conditions hair and adds shine.\r\nPanthenol nourishes and strengthens hair, reducing breakage and split ends.', 'images/hair/shampoo/GingerShampoo.jpg', 'images/hair/shampoo/GingerShampooF.jpg'),
(11, '3', '9', 'Hairs', 'Shampoo', 'Gloss-Shampoo', 'GLOSS Moderne is Clean Luxury. Gentle on hair and the Planet, this collection avoids dangerous toxins and is 100% Sulfate-Free + Paraben-Free. \r\n\r\nQuintessential cleanser perfect for all hair types. Protects hair color and extends keratin treatments. A mini-shot of this go-to shampoo leaves hair shiny, clean and optimistic. It’s like pouring a million tiny champagne bubbles on your hair.', 'images/hair/shampoo/Gloss.jpg', 'images/hair/shampoo/GlossF.jpg'),
(12, '3', '11', 'Hairs', 'Conditioner', 'Banana-Conditioner', 'This is hydrating banana conditioner', 'images/hair/conditioner/banana.jpg', 'images/hair/conditioner/bananaF.jpg'),
(13, '2', '2', 'MakeUp', 'Eyes', 'Mascara', 'A lengthening mascara that curls, volumizes, lifts, and separates lashes for an \"out-of-here\" lookâ€”now available in three vibrant shades', 'images/makeup/eyes/Mascara.jpg', 'images/makeup/eyes/MascaraF.jpg'),
(14, '2', '2', 'MakeUp', 'Eyes', 'Eyelashes', 'A set with a pair of the bestselling Seductress lashes plus two mini lash adhesives in a travel-friendly gem case.', 'images/makeup/eyes/Eyelash.jpg', 'images/makeup/eyes/EyelashF.jpg'),
(15, '6', '21', 'Samples', 'Free Samples', 'Becca-Foundation', 'Aqua Luminous Perfecting Foundation. SIZE 1 ozA flexible, liquid foundation, made from pigments that blur and perfect to reflect your perfect skintone, for light, buildable coverage and a radiant finish. This product is an Allure Best of Beauty award winner.', 'images/samples/becca.JPG', 'images/samples/beccaF.JPG'),
(16, '2', '21', 'Samples', 'Free Samples', 'Versache Parfume', 'The primal power of woman is captured in this radiant, sensual essence. Attraction, desire, and passion intertwine in an alchemical mix of tempting, bright, and feminine notes. A refined accord of lemon and jasmine is exalted by sensual and smooth woods for a fragrance of strength, individuality, and seduction.   The bottle is crafted within the mythological codes of the Versace DNA. The gold Medusa and the Greek key design are engraved on the edge, stamping their imposing authority on the bottle.   â€œEros Pour Femme is the ultimate in power and seduction from Versace, from the captivating fragrance to the elegance of the bottle and the stunning campaign by Mert Alas and Marcus Piggott starring Lara Stone.â€â€”Donatella Versace, Chief Designer for Versace ', 'images/samples/versache.jpg', 'images/samples/versacheF.jpg'),
(17, '1', '6', 'Skin', 'Toner', 'Lancome-Toner', 'A silky-soft moisturizing toner that gently purifies and immediately rehydrates complexion. The instantly soothing formula made with honey and sweet almond extract gives skin a soft, fresh, clean, and incredibly comfortable feeling. Great for all skin types, it deeply hydrates for a healthy-looking complexion. ', 'images/skin/toner/lancome.jpg', 'images/skin/toner/lancomeF.jpg'),
(18, '1', '7', 'Skin', 'Cleanser', 'Clinique-Cleanser', 'By combining gentle cleansing with exfoliating power, this two-in-one formula takes away dirt, dulling dead skin cells, excess oil, and impurities to give skin a smooth finish and a radiant glow. Gentle enough to use twice a day, it preps skin for flawless makeup application. ', 'images/skin/cleanser/Ccleanser.jpg', 'images/skin/cleanser/CcleanserF.jpg'),
(19, '1', '8', 'Skin', 'AntiAging', 'Nightcream', 'Try this new antiaging night creme from Philosophy.Make the nighttime your prime time for rejuvenation. A unique age-resetting complex contains a rare marine algae extract to help target age-accelerating proteins. Powerful peptides and next-generation vitamin C help support natural collagen while proven hydrators lock in moisture while you sleep. With miracle worker overnight, you can now wake to deeply hydrated, healthier-looking, silky soft skin. ', 'images/skin/antiaging/philosophy.jpg', 'images/skin/antiaging/philosophyF.jpg'),
(20, '5', '17', 'Fragrance', 'MensFragrance', 'Armani-Deodorant', 'A seductive fragrance for men, Armani Code is a sexy blend of fresh lemon and bergamot softened with hints of orange tree blossom, warmed with soothing guaiac wood, and tonka bean.', 'images/fragrance/men/Armani.jpg', 'images/fragrance/men/ArmaniF.jpg'),
(21, '5', '17', 'Fragrance', 'MensFragrance', 'Chanel', 'A woody aromatic fragrance for the man who defies convention, and resists the ordinary every day, finding satisfaction in the unexpected. His fragrance, a provocative blend of citrus and woods, liberates the senses â€” fresh, clean, profoundly sensual â€” a signature statement of determination and desire. Be unexpected.', 'images/fragrance/men/Chanel.jpg', 'images/fragrance/men/ChanelF.jpg'),
(22, '5', '18', 'Fragrance', 'WomensFragrance', 'MarcJacobs', 'Enter the world of Daisy: fresh and feminine, with a playful innocence. The heart of Daisy is floral with vintage edge of violet', 'images/fragrance/women/Marc.jpg', 'images/fragrance/women/MarcF.jpg'),
(23, '5', '18', 'Fragrance', 'WomensFragrance', 'Gucci-Perfume', 'Created for a contemporary libertine, Gucci Guilty for Her is defined by a signature FougÃ¨re accord of Geranium usually found in menâ€™s scents. Intimate and magical lilac flower is laced with amber to radiate warmth and grace at the fragranceâ€™s heart. ', 'images/fragrance/women/Gucci.jpg', 'images/fragrance/women/GucciF.jpg'),
(24, '5', '19', 'Fragrance', 'Unisex', 'Bvlgari', ' The soothing white tea scent combines with white pepper accents and is appropriate for day or evening. White tea, the principal ingredient, has been used in China as an elixir of youth because of its antioxidant and revitalizing properties. Cultivated only a few times per year, this rare essence imparts an overall sense of well being.', 'images/fragrance/unisex/Bvlgari.jpg', 'images/fragrance/unisex/BvlgariF.jpg'),
(25, '5', '19', 'Fragrance', 'Unisex', 'Serpentine', 'Inspired by the Serpentine Galleriesâ€™ location in a historical parkland setting within a modern city, SERPENTINE is a collaborative bespoke unisex fragrance with a bottle and box designed by Tracey Emin. ', 'images/fragrance/unisex/Serpentine.jpg', 'images/fragrance/unisex/SerpentineF.jpg'),
(26, '5', '20', 'Fragrance', 'Deodrant', 'Burberry-Deodrant', 'Lightweight and easily absorbed, this mist formula helps to soften and moisturize the skin while scenting it with notes of rose, patchouli, and geranium leaf. ', 'images/fragrance/deo/Burberry.jpg', 'images/fragrance/deo/BurberryF.jpg'),
(27, '5', '20', 'Fragrance', 'Deodrant', 'Tom-Ford', 'To Tom Ford, this scent perfectly captures the cool breezes, sparkling clear water, and lush foliage of the Italian Rivera. His reinvention of a classic eau de cologne features crisp citrus oils, surprising floral notes, and amber undertones to leave a splashy yet substantive impression. ', 'images/fragrance/deo/TomFord.jpg', 'images/fragrance/deo/TomFordF.jpg'),
(28, '4', '14', 'Health Supplements', 'Vitamins', 'NW-VitaminD3', 'NatureWise Vitamin D3 in certified organic olive oil helps to maintain healthy bones and teeth, provide immune support, and support muscle function', 'images/health/vitamins/vitamin.jpg', 'images/health/vitamins/vitamindF.jpg'),
(29, '4', '14', 'Health Supplements', 'Vitamins', 'Natrol-Biotin', 'Water-soluble B-complex vitamin necessary for cell growth and the production and metabolism of fat into amino acids.', 'images/health/vitamins/biotins.jpg', 'images/health/vitamins/biotinsF.jpg'),
(30, '4', '13', 'Health Supplements', 'Proteins', 'Protein-Powder', 'For maintaining and increasing lean muscle mass', 'images/health/protein/wheys.jpg', 'images/health/protein/wheysF.jpg'),
(31, '4', '13', 'Health Supplements', 'Proteins', 'Protein-Shake', 'Use in conjunction with an intense daily exercise program and a balanced diet including an adequate caloric intake.', 'images/health/protein/proteins.jpg', 'images/health/protein/proteinsF.jpg'),
(32, '4', '15', 'Health Supplements', 'Minerals', 'SugarFree-Energizer', 'Caffeine from green tea and yerba matÃ© for increased endurance, anaerobic capacity, and enhanced mental focus', 'images/health/minerals/energisers.jpg', 'images/health/minerals/energisersF.jpg'),
(33, '4', '15', 'Health Supplements', 'Minerals', 'MuscleMilk-Powder', 'Precision protein blend featuring rapidly releasing whey and slower digesting micellar caseins', 'images/health/minerals/muscles.jpg', 'images/health/minerals/musclesF.jpg'),
(34, '4', '16', 'Health Supplements', 'Essentials', 'Cacao-Powder', 'In its raw state, Cacao powder contains a wide array of unique properties, antioxidants and minerals that enhance both physical and mental well-being. It has an incredibly rich supply of magnesium, along with other essential minerals: calcium, zinc, iron, copper, phosphorous, chromium and potassium', 'images/health/essentials/cacaos.jpg', 'images/health/essentials/cacaosF.jpg'),
(35, '4', '16', 'Health Supplements', 'Essentials', 'Organic-SuperFood', 'Super Greens contains vitamins and minerals from real foods and provides key electrolytes needed for physical activity and recovery', 'images/health/essentials/superfoods.jpg', 'images/health/essentials/superfoodsF.jpg'),
(36, '2', '1', 'MakeUp', 'Face', 'Black-FaceMask', 'The Luminizing Black Mask visibly minimizes the appearance of pores, absorbs excess oil, and gently exfoliates for a bright, fresh-faced appearance. Rich in antiaging vitamin C and antioxidants, this formula visibly reduces hyperpigmentation, minimizes large pores, reduces fine lines and wrinkles, and combats excess oil while lifting away clogging impurities for radiant skin. ', 'images/makeup/face/facemask.jpg', 'images/makeup/face/facemaskF.jpg'),
(37, '2', '1', 'MakeUp', 'Face', 'Armani-Foundation', 'This award-winning foundation is formulated with micro-fil technology, producing a low-density product that pairs high-impact pigments with weightless texture. Inspired by the silk shantung worn by kings and emperors, this foundation glides seamlessly onto the skin leaving a finish thatâ€™s reminiscent of charmeuse silk.', 'images/makeup/face/armaniFoundation.jpg', 'images/makeup/face/armaniFoundationF.jpg'),
(38, '2', '4', 'MakeUp', 'Nail', 'Dior-NailPaint', 'This advanced nail formula provides glassy, long-wearing shine. A precision brush applies the ideal amount of polish in a single sweep, allowing for a smooth application, vibrant color intensity, and a perfect finish. ', 'images/makeup/nails/DiorNail.jpg', 'images/makeup/nails/DiorNailF.jpg'),
(39, '2', '4', 'MakeUp', 'Nail', 'Lakme-NailPaint', 'This advanced nail formula provides glassy, long-wearing shine. A precision brush applies the ideal amount of polish in a single sweep, allowing for a smooth application, vibrant color intensity, and a perfect finish. ', 'images/makeup/nails/LakmeNail.jpg', 'images/makeup/nails/LakmeNailF.jpg'),
(40, '3', '10', 'Hairs', 'HairMask', 'Stri-HairMask', 'Ultimate Restore Deep Repair Mask starts at the scalp to restore essential hydration and dramatically improve the condition of overworked strands. Formulated with patented NIA-114 and Fibramend Ceramide Complex™, it reinforces natural cell cohesion in the hair and cuticle and restructures strands for improved resilience and vigor. This hair mask deeply nourishes for renewed shine, enhanced manageability, and increased softness—and it\'s fragranced with notes of warm fig.	', 'images/hair/hairmask/strivectinhairmask.jpg', 'images/hair/hairmask/strivectinhairmask.jpg'),
(42, '3', '12', 'Hairs', 'Oil', 'Argan-Oil', 'This legendary, 100 percent pure Argan Oil is rich in vitamin E and essential fatty acids to deeply hydrate and nourish skin. Grown organically in Morocco, the multitasking formula contains astonishing healing, conditioning, and antiaging properties to create a nourished, youthful-looking complexion. It easily absorbs into skin, delivering a fresh, dewy glow, and keeps you looking beautiful from head to toe. Especially great for sensitive and acne-prone skin, it may also be used to treat split ends and soften cuticles.', 'images/hair/oil/oil.jpg', 'images/hair/oil/oil.jpg');

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
(54, 6, 1.4);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
