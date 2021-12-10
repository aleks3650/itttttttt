-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Gru 2021, 18:09
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `it4`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `it_users`
--

CREATE TABLE `it_users` (
  `id` int(11) NOT NULL,
  `user` text COLLATE utf8_polish_ci NOT NULL,
  `pass` text COLLATE utf8_polish_ci NOT NULL,
  `email` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `it_users`
--

INSERT INTO `it_users` (`id`, `user`, `pass`, `email`) VALUES
(1, 'Michal', 'qwerty', 'michalpadlo@gmail.com'),
(2, 'Olek', 'asdfgh', '1313'),
(16, 'Stary', '$2y$10$LIgVe9yDBnCzRtipnQDuJe9e8AMDfCUIlF0vEqekBjnuw.SNwISde', 'aledddks3650@interia.pl'),
(17, 'Stara', '$2y$10$G5ICH/32Xts4pP2AQPpo2OoT3EMuy6R2jZLT4Dhw6nQ1LguuCIQKq', 'alaaaeks3650@interia.pl'),
(19, '12345', '$2y$10$wgMt7SFqwynEUXSeONg0i.m1Svbn80JCa28LbumPhNze9vzNVG4NK', 'aleks365zx0@interia.pl'),
(21, '123456', '$2y$10$Ptny1CkzPfV4V5/Zuc0Qo.1u7/xfNbFDnZkvqir/0U8Cp85zN/doy', 'aleks365asg0@interia.pl'),
(26, 'zxcv', 'zxcv', 'alekzxcvzxcvs3650@interia.pl'),
(31, '1234', '1234', 'aleks3650@interia.pl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mq-2`
--

CREATE TABLE `mq-2` (
  `id` int(11) NOT NULL,
  `status` text NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sensors`
--

CREATE TABLE `sensors` (
  `ID` int(11) NOT NULL,
  `gas` varchar(10) NOT NULL,
  `smoke` text NOT NULL,
  `temperature` text NOT NULL,
  `humidity` text NOT NULL,
  `doors` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `sensors`
--

INSERT INTO `sensors` (`ID`, `gas`, `smoke`, `temperature`, `humidity`, `doors`, `date`) VALUES
(1, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:2:45'),
(2, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:2:48'),
(3, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:2:51'),
(4, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:2:54'),
(5, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:2:57'),
(6, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:3:0'),
(7, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:3:3'),
(8, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:3:6'),
(9, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:3:10'),
(10, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:3:13'),
(11, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:3:16'),
(12, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:3:19'),
(13, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:3:22'),
(14, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:3:25'),
(15, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:3:28'),
(16, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:3:31'),
(17, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:3:34'),
(18, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:3:37'),
(19, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:3:40'),
(20, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:3:43'),
(21, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:3:46'),
(22, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:3:49'),
(23, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:3:52'),
(24, 'OK', 'OK', '25.00', '25.00', 'CLOSED', '7-12-2021 14:3:55'),
(25, 'OK', 'OK', '26.00', '25.00', 'CLOSED', '7-12-2021 14:3:58');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `it_users`
--
ALTER TABLE `it_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indeksy dla tabeli `mq-2`
--
ALTER TABLE `mq-2`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sensors`
--
ALTER TABLE `sensors`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `it_users`
--
ALTER TABLE `it_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT dla tabeli `mq-2`
--
ALTER TABLE `mq-2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `sensors`
--
ALTER TABLE `sensors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
