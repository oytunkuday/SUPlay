-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 29 Ara 2021, 21:51:46
-- Sunucu sürümü: 10.1.38-MariaDB
-- PHP Sürümü: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `suplay`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `achievements`
--

CREATE TABLE `achievements` (
  `achievement_id` int(11) NOT NULL,
  `achievement_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `achievements`
--

INSERT INTO `achievements` (`achievement_id`, `achievement_name`) VALUES
(1, '1 hours played'),
(2, '3 hours played'),
(3, '12 hours played'),
(4, '24 hours played'),
(5, '1 hours played'),
(6, '3 hours played'),
(7, '12 hours played'),
(8, '24 hours played'),
(9, '1 hours played'),
(10, '3 hours played'),
(11, '12 hours played'),
(12, '24 hours played');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `belongs_to`
--

CREATE TABLE `belongs_to` (
  `game_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `belongs_to`
--

INSERT INTO `belongs_to` (`game_id`, `genre_id`) VALUES
(23, 1),
(23, 3),
(24, 3),
(25, 2),
(26, 9),
(26, 15),
(27, 16),
(27, 19),
(28, 7),
(29, 1),
(29, 7),
(30, 5),
(30, 18),
(31, 6),
(31, 19),
(32, 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `development_company`
--

CREATE TABLE `development_company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `development_company`
--

INSERT INTO `development_company` (`company_id`, `company_name`) VALUES
(2, 'FLAMEZARD'),
(3, 'Passivesion'),
(4, 'AE'),
(5, 'SUbifost'),
(6, 'asdas'),
(7, 'Triangle Enix'),
(8, 'FLAMEZARD'),
(9, 'Passivesion'),
(10, 'AE'),
(11, 'SUbifost'),
(12, 'Triangle Enix'),
(13, 'FLAMEZARD'),
(14, 'Passivesion'),
(15, 'AE'),
(16, 'SUbifost');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `develops`
--

CREATE TABLE `develops` (
  `company_id` int(11) DEFAULT NULL,
  `game_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `game`
--

CREATE TABLE `game` (
  `game_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `avr_rate` int(11) DEFAULT NULL,
  `release_date` date NOT NULL,
  `time_played` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `game`
--

INSERT INTO `game` (`game_id`, `name`, `avr_rate`, `release_date`, `time_played`) VALUES
(23, 'DARK SOUL', 8, '2015-01-13', 23),
(24, 'BATMAN', 2, '2021-04-15', 213),
(25, 'BLACK DESERT', 9, '2021-09-28', 53),
(26, 'COUNTER STRIKE: GLOBAL OFFENSIVE', 2, '2010-03-01', 675),
(27, 'DARK SOULS 2', 9, '2021-05-11', 543),
(28, 'WORLD OF WARCRAFT', 3, '2003-06-11', 543),
(29, 'POOL PARTY SIMULATOR', 3, '2021-11-13', 12),
(30, 'DOTA 2', 4, '2011-06-23', 534),
(31, 'AMONG US', 8, '2020-12-13', 90),
(32, 'LIFE IS NOT STRANGE', 10, '2021-06-23', 98);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_name`) VALUES
(1, 'A-RPG'),
(2, 'MMORPG'),
(3, 'Action'),
(5, 'SIMULATION'),
(6, 'MOBA'),
(7, 'Adventure'),
(8, 'Battle-Royale'),
(9, 'A-RPG'),
(10, 'MMORPG'),
(11, 'Action'),
(12, 'FPS'),
(13, 'SIMULATION'),
(14, 'MOBA'),
(15, 'Adventure'),
(16, 'Battle-Royale'),
(17, 'A-RPG'),
(18, 'MMORPG'),
(19, 'Action'),
(20, 'FPS'),
(21, 'SIMULATION'),
(22, 'MOBA'),
(23, 'Adventure'),
(24, 'Battle-Royale');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hardware_requirement`
--

CREATE TABLE `hardware_requirement` (
  `requirement_id` int(11) NOT NULL,
  `cpu_model` varchar(20) DEFAULT NULL,
  `gpu_model` varchar(20) DEFAULT NULL,
  `ram` varchar(20) DEFAULT NULL,
  `disk_space` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `hardware_requirement`
--

INSERT INTO `hardware_requirement` (`requirement_id`, `cpu_model`, `gpu_model`, `ram`, `disk_space`) VALUES
(3, 'intel i5', 'gtx970', '8GB', '50 GB'),
(4, 'intel i7', 'rtx2060', '16GB', '100 GB'),
(5, 'dfxghjk', 'gvhjbkl', 'vhbjÃ¶nkbnm', 'Ã¶Ã§'),
(6, 'AMD R1', 'gt530', '2GB', '10 GB'),
(7, 'intel i3', 'gtx760', '4GB', '25 GB'),
(8, 'intel i5', 'gtx970', '8GB', '50 GB'),
(9, 'intel i7', 'rtx2060', '16GB', '100 GB'),
(10, 'AMD R1', 'gt530', '2GB', '10 GB'),
(11, 'intel i3', 'gtx760', '4GB', '25 GB'),
(12, 'intel i5', 'gtx970', '8GB', '50 GB'),
(13, 'intel i7', 'rtx2060', '16GB', '100 GB');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `language`
--

CREATE TABLE `language` (
  `language_id` int(11) NOT NULL,
  `language_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `language`
--

INSERT INTO `language` (`language_id`, `language_name`) VALUES
(1, 'Turkish'),
(2, 'English'),
(3, 'German'),
(4, 'Azerbaijanese'),
(5, 'Japanese'),
(6, 'French'),
(8, 'Turkish'),
(9, 'English'),
(10, 'German'),
(11, 'Azerbaijanese'),
(12, 'Japanese'),
(13, 'French'),
(14, 'Turkish'),
(15, 'English'),
(16, 'German'),
(17, 'Azerbaijanese'),
(18, 'Japanese'),
(19, 'French');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `owns`
--

CREATE TABLE `owns` (
  `play_id` int(11) NOT NULL,
  `player_id` int(11) DEFAULT NULL,
  `achievement_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `player`
--

CREATE TABLE `player` (
  `player_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `suplay_coin` int(11) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `region` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `player`
--

INSERT INTO `player` (`player_id`, `name`, `surname`, `suplay_coin`, `birth_date`, `email`, `phone_number`, `region`) VALUES
(1, 'Albert', 'Levi', 400, '1969-08-28', 'albert@sabanciuniv.edu', '+90555444332', 'Turkey'),
(3, 'Hamit', 'Kartal', 200, '2001-02-13', 'hamit@sabanciuniv.edu', '+90531964782', 'Turkey'),
(4, 'Yasin', 'Ughur', 200, '2001-07-06', 'yasinughur@sabanciuniv.edu', '+90531947482', 'Azerbaijan'),
(5, 'Yigit', 'Karamanli', 200, '2000-01-23', 'yigitkaramanli@sabanciuniv.edu', '+90538329182', 'Turkey'),
(6, 'Oytun Kuday', 'Duran', 250, '2001-10-11', 'oytunkuday@sabanciuniv.edu', '+905309572968', 'Turkey'),
(7, 'Albert', 'Levi', 400, '1969-08-28', 'albert@sabanciuniv.edu', '+90555444332', 'Turkey'),
(8, 'Yucel', 'Saygin', 500, '1987-06-15', 'y.saygin@sabanciuniv.edu', '+90535362482', 'Turkey'),
(9, 'Hamit', 'Kartal', 200, '2001-02-13', 'hamit@sabanciuniv.edu', '+90531964782', 'Turkey'),
(10, 'Yasin', 'Ughur', 200, '2001-07-06', 'yasinughur@sabanciuniv.edu', '+90531947482', 'Azerbaijan'),
(11, 'Yigit', 'Karamanli', 200, '2000-01-23', 'yigitkaramanli@sabanciuniv.edu', '+90538329182', 'Turkey'),
(12, 'Oytun Kuday', 'Duran', 250, '2001-10-11', 'oytunkuday@sabanciuniv.edu', '+905309572968', 'Turkey'),
(13, 'Albert', 'Levi', 400, '1969-08-28', 'albert@sabanciuniv.edu', '+90555444332', 'Turkey'),
(14, 'Yucel', 'Saygin', 500, '1987-06-15', 'y.saygin@sabanciuniv.edu', '+90535362482', 'Turkey'),
(15, 'Hamit', 'Kartal', 200, '2001-02-13', 'hamit@sabanciuniv.edu', '+90531964782', 'Turkey'),
(16, 'Yasin', 'Ughur', 200, '2001-07-06', 'yasinughur@sabanciuniv.edu', '+90531947482', 'Azerbaijan'),
(17, 'Yigit', 'Karamanli', 200, '2000-01-23', 'yigitkaramanli@sabanciuniv.edu', '+90538329182', 'Turkey'),
(18, 'Oytun Kuday', 'Duran', 250, '2001-10-11', 'oytunkuday@sabanciuniv.edu', '+905309572968', 'Turkey');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `plays`
--

CREATE TABLE `plays` (
  `play_id` int(11) NOT NULL,
  `game_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `bought_price` int(11) DEFAULT NULL,
  `time_played` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `requires`
--

CREATE TABLE `requires` (
  `game_id` int(11) NOT NULL,
  `requirement_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `requires`
--

INSERT INTO `requires` (`game_id`, `requirement_id`) VALUES
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `game_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `review_comment` varchar(128) DEFAULT NULL,
  `review_point` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `supports`
--

CREATE TABLE `supports` (
  `game_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `supports`
--

INSERT INTO `supports` (`game_id`, `language_id`) VALUES
(23, 1),
(23, 2),
(24, 2),
(24, 4),
(25, 5),
(26, 9),
(27, 12),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`achievement_id`);

--
-- Tablo için indeksler `belongs_to`
--
ALTER TABLE `belongs_to`
  ADD PRIMARY KEY (`game_id`,`genre_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Tablo için indeksler `development_company`
--
ALTER TABLE `development_company`
  ADD PRIMARY KEY (`company_id`);

--
-- Tablo için indeksler `develops`
--
ALTER TABLE `develops`
  ADD PRIMARY KEY (`game_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Tablo için indeksler `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`game_id`);

--
-- Tablo için indeksler `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Tablo için indeksler `hardware_requirement`
--
ALTER TABLE `hardware_requirement`
  ADD PRIMARY KEY (`requirement_id`);

--
-- Tablo için indeksler `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`);

--
-- Tablo için indeksler `owns`
--
ALTER TABLE `owns`
  ADD PRIMARY KEY (`play_id`,`achievement_id`),
  ADD KEY `achievement_id` (`achievement_id`),
  ADD KEY `player_id` (`player_id`);

--
-- Tablo için indeksler `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`player_id`);

--
-- Tablo için indeksler `plays`
--
ALTER TABLE `plays`
  ADD PRIMARY KEY (`play_id`),
  ADD KEY `game_id` (`game_id`),
  ADD KEY `player_id` (`player_id`);

--
-- Tablo için indeksler `requires`
--
ALTER TABLE `requires`
  ADD PRIMARY KEY (`game_id`,`requirement_id`),
  ADD KEY `requirement_id` (`requirement_id`);

--
-- Tablo için indeksler `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `game_id` (`game_id`),
  ADD KEY `player_id` (`player_id`);

--
-- Tablo için indeksler `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`game_id`,`language_id`),
  ADD KEY `language_id` (`language_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `achievements`
--
ALTER TABLE `achievements`
  MODIFY `achievement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `development_company`
--
ALTER TABLE `development_company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `game`
--
ALTER TABLE `game`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Tablo için AUTO_INCREMENT değeri `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Tablo için AUTO_INCREMENT değeri `hardware_requirement`
--
ALTER TABLE `hardware_requirement`
  MODIFY `requirement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `language`
--
ALTER TABLE `language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `player`
--
ALTER TABLE `player`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `plays`
--
ALTER TABLE `plays`
  MODIFY `play_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `belongs_to`
--
ALTER TABLE `belongs_to`
  ADD CONSTRAINT `belongs_to_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `belongs_to_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `develops`
--
ALTER TABLE `develops`
  ADD CONSTRAINT `develops_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `development_company` (`company_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `develops_ibfk_2` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `owns`
--
ALTER TABLE `owns`
  ADD CONSTRAINT `owns_ibfk_1` FOREIGN KEY (`play_id`) REFERENCES `plays` (`play_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `owns_ibfk_2` FOREIGN KEY (`achievement_id`) REFERENCES `achievements` (`achievement_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `owns_ibfk_3` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `plays`
--
ALTER TABLE `plays`
  ADD CONSTRAINT `plays_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `plays_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `requires`
--
ALTER TABLE `requires`
  ADD CONSTRAINT `requires_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `requires_ibfk_2` FOREIGN KEY (`requirement_id`) REFERENCES `hardware_requirement` (`requirement_id`) ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `player` (`player_id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `supports`
--
ALTER TABLE `supports`
  ADD CONSTRAINT `supports_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `supports_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
