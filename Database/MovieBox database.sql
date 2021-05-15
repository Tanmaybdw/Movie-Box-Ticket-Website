-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql301.byetcluster.com
-- Generation Time: May 15, 2021 at 02:30 AM
-- Server version: 5.6.48-88.0
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_27019411_db_movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookings`
--

CREATE TABLE `tbl_bookings` (
  `book_id` int(11) NOT NULL,
  `ticket_id` varchar(30) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theater id',
  `user_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `no_seats` int(3) NOT NULL COMMENT 'number of seats',
  `amount` int(5) NOT NULL,
  `ticket_date` date NOT NULL,
  `date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bookings`
--

INSERT INTO `tbl_bookings` (`book_id`, `ticket_id`, `t_id`, `user_id`, `show_id`, `screen_id`, `no_seats`, `amount`, `ticket_date`, `date`, `status`) VALUES
(3, '', 4, 4, 3, 3, 200, 75, '2017-05-21', '2017-05-21', 1),
(4, '', 4, 4, 1, 3, 2, 150, '2017-05-22', '2017-05-22', 1),
(5, '', 3, 3, 6, 1, 200, 70, '2017-05-25', '2017-05-22', 1),
(6, '', 3, 3, 6, 1, 100, 70, '2017-05-22', '2017-05-22', 1),
(7, '', 3, 3, 5, 1, 1, 70, '2017-05-22', '2017-05-22', 1),
(11, 'BKID5258816', 4, 2, 3, 3, 1, 75, '2017-05-22', '2017-05-22', 1),
(13, 'BKID7851648', 3, 6, 6, 1, 4, 280, '2020-11-06', '2020-11-05', 1),
(15, 'BKID1903488', 3, 6, 11, 2, 6, 360, '2020-11-06', '2020-11-05', 1),
(16, 'BKID6702014', 3, 4, 14, 1, 4, 280, '2020-12-03', '2020-12-02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chatbot_hints`
--

CREATE TABLE `tbl_chatbot_hints` (
  `id` int(11) NOT NULL,
  `question` varchar(100) CHARACTER SET latin1 NOT NULL,
  `reply` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_chatbot_hints`
--

INSERT INTO `tbl_chatbot_hints` (`id`, `question`, `reply`) VALUES
(1, 'hi||hello||hey', 'hello welcome to MovieBox'),
(2, 'what is you name', 'My Name is Genie'),
(3, 'why genie||why is it genie||why is your name genie', 'Because I am Genie of Movie World, Haaaaa !!!'),
(4, 'which is a good movie to watch now||good movie to watch||any movie to watch', 'Bad Boys for life & Bloodshot'),
(5, 'no in hindi||not in English in hindi||what about hindi||what about in hindi', 'Shakuntala Devi or Street Dancer 3D'),
(6, 'no in marathi||not in English in marathi||what about marathi||what about in marathi||not in hindi', 'AB Aani CD or Sweety Satarkar'),
(7, 'ok bye||bye||see you later', 'bye bye & have a nice day'),
(8, 'good night', 'good night'),
(9, 'what is my name||do you know my name', 'Sorry, We can\'t share your data.'),
(10, 'any good marathi movie||good marathi movie', 'AB Aani CD or Sweety Satarkar'),
(11, 'any good hindi movie||good hindi movie', 'Shakuntala Devi or Street Dancer 3D'),
(12, 'any good english movie||good english movie', 'Bad Boys for life & Bloodshot');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `subject` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL COMMENT 'email',
  `password` varchar(50) NOT NULL,
  `user_type` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `user_id`, `username`, `password`, `user_type`) VALUES
(1, 0, 'admin', 'Dampass', 0),
(2, 3, 'theatre', 'DamPass', 1),
(3, 4, 'theatre2', 'p@ssw0rd', 1),
(4, 4, 'varadkolte192019@gmail.com', 'dampass', 2),
(5, 6, 'kolte_varad.ghrcemit@raisoni.net', '9552582127', 2),
(20, 7, 'kolte_varad.ghrcemit@raisoni.net', '9552582127', 2),
(21, 8, 'TPB@gmail.com', '123456789', 2),
(22, 9, 'a@gmail.com', 'India11@', 2),
(23, 10, 'Nikhil@gmail.com', 'Nikhil', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_massage`
--

CREATE TABLE `tbl_massage` (
  `Id` int(11) NOT NULL,
  `message` text CHARACTER SET latin1 NOT NULL,
  `added_on` datetime NOT NULL,
  `type` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_massage`
--

INSERT INTO `tbl_massage` (`Id`, `message`, `added_on`, `type`) VALUES
(11, 'hi', '2020-11-05 11:54:13', 'user'),
(12, 'hello welcome to MovieBox', '2020-11-05 11:54:13', 'bot'),
(13, 'hello', '2020-11-05 11:54:21', 'user'),
(14, 'hello welcome to MovieBox', '2020-11-05 11:54:21', 'bot'),
(15, 'which movie is best', '2020-11-05 11:54:35', 'user'),
(16, 'Sorry not be able to understand you', '2020-11-05 11:54:35', 'bot'),
(17, 'good movie to watch', '2020-11-05 11:55:02', 'user'),
(18, 'Bad Boys for life & Bloodshot', '2020-11-05 11:55:02', 'bot'),
(19, 'ok', '2020-11-05 11:55:22', 'user'),
(20, 'bye bye & have a nice day', '2020-11-05 11:55:22', 'bot'),
(21, 'bye', '2020-11-05 11:55:29', 'user'),
(22, 'bye bye & have a nice day', '2020-11-05 11:55:29', 'bot'),
(23, 'hello', '2020-11-05 11:58:28', 'user'),
(24, 'hello welcome to MovieBox', '2020-11-05 11:58:28', 'bot');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movie`
--

CREATE TABLE `tbl_movie` (
  `movie_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `lang` varchar(10) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `cast` varchar(500) NOT NULL,
  `desc` varchar(1000) NOT NULL,
  `release_date` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `status` int(1) NOT NULL COMMENT '0 means active '
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_movie`
--

INSERT INTO `tbl_movie` (`movie_id`, `t_id`, `lang`, `movie_name`, `cast`, `desc`, `release_date`, `image`, `video_url`, `status`) VALUES
(1, 3, 'eng', 'Bloodshot', 'Vin Diesel, Eiza Gonzalez', 'Ray Garrison, an elite soldier killed in battle, is resurrected and given superhuman abilities. As he sets out to get revenge, he uncovers secrets about his life and the people supposedly helping him.', '2020-03-13', 'images/bloodshot.jpg', 'https://www.youtube.com/watch?v=vOUVVDWdXbo&list=PLn_l-EBAZvjX8o2geE8AzieR9QwQFIvTu&ab_channel=SonyPicturesEntertainment', 0),
(2, 3, 'eng', 'Extraction', 'Chris Hemsworth, Golshifteh Farahani, Randeep Hooda', 'A black-market mercenary who has nothing to lose is hired to rescue the kidnapped son of an imprisoned international crime lord. But in the murky underworld of weapons dealers and drug traffickers, an already deadly mission approaches the impossible.', '2020-04-24', 'images/extraction.jpg', 'https://www.youtube.com/watch?v=9AuMVVldB64&ab_channel=ZeroMedia', 0),
(3, 3, 'hin', 'Baaghi 3', 'Tiger Shroff, Shraddha Kapoor', 'Ronnie, a young man, shares a deep bond with Vikram, his elder brother and a policeman. When Vikram gets kidnapped in Syria while on a mission, Ronnie sets out to rescue him.', '2020-03-05', 'images/baaghi3.jpg', 'https://www.youtube.com/watch?v=jQzDujMzfoU&vl=en&ab_channel=FoxStarHindi', 0),
(4, 3, 'mar', 'Sweety Satarkar', 'Amruta Deshmukh, Sangram Samel, Pushkar lonarkar', ' A loud and daring woman falls in love with a bold man and attempts to win his heart by trying everything in the book to attract him.', '2020-02-21', 'images/sweet.webp', 'https://www.youtube.com/watch?v=xVIqMNetjgI&ab_channel=RajshriMarathi', 0),
(5, 3, 'eng', 'Bad Boys For Life', 'Will Smith, Martin Lawrence, Vanessa Hundgens', 'Detectives Mike Lowrey and Marcus Burnett join the Miami Police Department\'s special team AMMO to bring down the ruthless Armando, who is on a mission to kill Mike at his mother Isabel\'s orders.', '2020-01-07', 'images/badboy.jpg', 'https://www.youtube.com/watch?v=jKCj3XuPG8M&ab_channel=SonyPicturesEntertainment', 0),
(6, 3, 'eng', 'Fantasy Island', 'Lucy Hale, Michael Pena', 'A mysterious man invites a group of lucky guests to his secretive resort to fulfil their darkest fantasies. However, when people start arriving, things take an unexpected turn.', '2020-02-06', 'images/fantasy.png', 'https://www.youtube.com/watch?v=a6O30nJ02PU&ab_channel=SonyPicturesEntertainment', 0),
(11, 2, 'mar', 'AB Aani CD', ' Amitabh Bachchan, Subodh Bhave', 'After almost 70 years, two play-school friends, Bachchan and Gokhale, meet for a birthday party.', '2020-03-13', 'images/abandcd.jpg', 'https://www.youtube.com/watch?v=rvt-OmQ6sp4&ab_channel=RajshriMarathi', 0),
(12, 5, 'hin', 'Street Dancer 3D', 'Nora Fatehi, Varun Dhawan', 'Two rival dance groups, Street Dancer and Rule Breakers, despise each other and participate in a dance battle. Later, they decide to join hands for a greater cause.', '2020-01-24', 'images/3d.jpg', 'https://www.youtube.com/watch?v=2Ym7LJv6L_c&ab_channel=T-Series', 1),
(13, 3, 'hin', 'Shakuntala Devi', 'Vidya Balan, Sanya Malhotra', 'Shakuntala Devi is a 2020 Indian Hindi-language biographical comedy-drama film written and directed by Anu Menon and produced by Sony Pictures Networks India and Vikram Malhotra under his banner Abundantia Entertainment.', '2020-07-31', 'images/devi.jpg', 'https://www.youtube.com/watch?v=8HA1HRufYso&ab_channel=AmazonPrimeVideoIndia', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cast` varchar(100) NOT NULL,
  `news_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `attachment` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `name`, `cast`, `news_date`, `description`, `attachment`) VALUES
(3, 'Star Wars: The Rise of Skywalker', 'Daisy Ridley, John Boyega, Oscar Isaac', '2019-12-16', 'When it\'s discovered that the evil Emperor Palpatine did not die at the hands of Darth Vader, the rebels must race against the clock to find out his whereabouts.', 'news_images/5.jpg'),
(5, 'Dolittle', 'Robert Downey', '2020-01-24', 'Dr. John Dolittle lives in solitude behind the high walls of his lush manor in 19th-century England. His only companionship comes from an array of exotic animals that he speaks to on a daily basis.', 'news_images/4.jpg'),
(6, 'Bhaybheet', 'Subodh Bhave, Madhu Sharma, Girija Joshi', '2020-02-28', 'The innocent daughter of a simple man starts behaving in an erratically odd manner after his wife dies.', 'news_images/2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `age` int(2) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`user_id`, `name`, `email`, `phone`, `age`, `gender`) VALUES
(4, 'varad kolte', 'kolte_varad.ghrcemit@raisoni.net', '9168799940', 20, 'male'),
(6, 'varad kolte', 'varadkolte1920@gmail.com', '9552582127', 22, 'male'),
(7, 'varad kolte', 'kolte_varad.ghrcemit@raisoni.net', '09168799940', 0, 'gender'),
(8, 'TOM', 'TPB@gmail.com', '1234567890', 0, 'gender'),
(9, 'S', 'a@gmail.com', '9730215198', 0, 'gender'),
(10, 'Nikhil', 'Nikhil@gmail.com', '1234567890', 0, 'gender');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_screens`
--

CREATE TABLE `tbl_screens` (
  `screen_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL COMMENT 'theatre id',
  `screen_name` varchar(110) NOT NULL,
  `seats` int(11) NOT NULL COMMENT 'number of seats',
  `charge` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_screens`
--

INSERT INTO `tbl_screens` (`screen_id`, `t_id`, `screen_name`, `seats`, `charge`) VALUES
(1, 3, 'Screen 1', 100, 70),
(2, 3, 'Screen 2', 150, 60),
(3, 4, 'Screen 1', 200, 75),
(4, 5, 'Screen1', 34, 120),
(5, 2, 'Screen1', 340, 140),
(6, 2, 'Screen2', 60, 240);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shows`
--

CREATE TABLE `tbl_shows` (
  `s_id` int(11) NOT NULL,
  `st_id` int(11) NOT NULL COMMENT 'show time id',
  `theatre_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 means show available',
  `r_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shows`
--

INSERT INTO `tbl_shows` (`s_id`, `st_id`, `theatre_id`, `movie_id`, `start_date`, `status`, `r_status`) VALUES
(1, 9, 4, 1, '2020-05-01', 1, 1),
(2, 10, 2, 1, '2020-05-01', 1, 1),
(3, 11, 5, 2, '2020-05-01', 1, 1),
(4, 12, 4, 2, '2020-05-01', 1, 1),
(5, 1, 3, 3, '2020-05-01', 1, 1),
(6, 2, 3, 1, '2020-05-01', 1, 1),
(7, 3, 3, 1, '2020-05-01', 1, 1),
(8, 4, 5, 1, '2020-05-01', 1, 1),
(9, 5, 3, 2, '2020-05-01', 1, 1),
(10, 6, 4, 3, '2020-05-01', 1, 1),
(11, 7, 3, 2, '2020-05-01', 1, 1),
(12, 8, 2, 2, '2020-05-01', 1, 1),
(13, 1, 3, 5, '2020-02-25', 1, 0),
(14, 2, 3, 5, '2020-02-25', 1, 0),
(15, 9, 4, 6, '2020-05-28', 1, 0),
(16, 10, 4, 6, '2020-05-28', 1, 0),
(17, 11, 2, 4, '2020-05-28', 1, 0),
(18, 12, 4, 4, '2020-05-28', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_show_time`
--

CREATE TABLE `tbl_show_time` (
  `st_id` int(11) NOT NULL,
  `screen_id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'noon,second,etc',
  `start_time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_show_time`
--

INSERT INTO `tbl_show_time` (`st_id`, `screen_id`, `name`, `start_time`) VALUES
(1, 1, 'Noon', '10:00:00'),
(2, 1, 'Matinee', '14:00:00'),
(3, 1, 'First', '18:00:00'),
(4, 1, 'Second', '21:00:00'),
(5, 2, 'Noon', '10:00:00'),
(6, 2, 'Matinee', '14:00:00'),
(7, 2, 'First', '18:00:00'),
(8, 2, 'Second', '21:00:00'),
(9, 3, 'Noon', '10:00:00'),
(10, 3, 'Matinee', '14:00:00'),
(11, 3, 'First', '18:00:00'),
(12, 3, 'Second', '21:00:00'),
(14, 4, 'Noon', '12:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theatre`
--

CREATE TABLE `tbl_theatre` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pin` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_theatre`
--

INSERT INTO `tbl_theatre` (`id`, `name`, `address`, `place`, `state`, `pin`) VALUES
(2, 'Carnival Cinemas Moshi', '177, MIDC Rd, Sector No. 9, Moshi', ' Pimpri-Chinchwad, Pune', 'Maharashtra', 412105),
(3, 'Vishal E - Square theater', 'Old Pune-Mumbai highway', ', Pimpri-Chinchwad, behind Bank of India, Pune,', 'Maharashtra', 411018),
(4, 'Carnival Spine City Moshi', 'Sector No. 9, Moshi, Pimpri-Chinchwad', 'Pune', 'Maharashtra', 412105),
(5, 'PVR', 'City One Mall 3rd Floor Finolex Chowk, Old Mumbai - Pune Hwy, Pimpri Colony,', 'Pune', 'Maharashtra', 411018);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `tbl_chatbot_hints`
--
ALTER TABLE `tbl_chatbot_hints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_massage`
--
ALTER TABLE `tbl_massage`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  ADD PRIMARY KEY (`screen_id`);

--
-- Indexes for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_chatbot_hints`
--
ALTER TABLE `tbl_chatbot_hints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_massage`
--
ALTER TABLE `tbl_massage`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_movie`
--
ALTER TABLE `tbl_movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_screens`
--
ALTER TABLE `tbl_screens`
  MODIFY `screen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_shows`
--
ALTER TABLE `tbl_shows`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_show_time`
--
ALTER TABLE `tbl_show_time`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_theatre`
--
ALTER TABLE `tbl_theatre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
