-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Wrz 21, 2025 at 11:20 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `polska`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `miasta`
--

CREATE TABLE `miasta` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `powiat_id` int(11) DEFAULT NULL,
  `wojewodztwo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `miasta`
--

INSERT INTO `miasta` (`id`, `name`, `powiat_id`, `wojewodztwo_id`) VALUES
(1, 'Warszawa', 1, 1),
(2, 'Kraków', 2, 2),
(3, 'Łódź', 3, 3),
(4, 'Wrocław', 4, 4),
(5, 'Poznań', 5, 5),
(6, 'Gdańsk', 6, 6),
(7, 'Szczecin', 7, 7),
(8, 'Bydgoszcz', 8, 8),
(9, 'Lublin', 9, 9),
(10, 'Katowice', 10, 10),
(11, 'Białystok', 11, 11),
(12, 'Gdynia', 12, 12),
(13, 'Częstochowa', 13, 13),
(14, 'Radom', 14, 14),
(15, 'Toruń', 15, 15),
(16, 'Kielce', 16, 16),
(17, 'Zabrze', 17, 12),
(18, 'Bielsko-Biała', 18, 12),
(19, 'Rzeszów', 19, 9),
(20, 'Gliwice', 20, 12),
(21, 'Zielona Góra', 21, 7),
(22, 'Opole', 22, 8),
(23, 'Tychy', 23, 12),
(24, 'Elbląg', 24, 11),
(25, 'Dąbrowa Górnicza', 25, 12),
(26, 'Chorzów', 26, 12),
(27, 'Koszalin', 27, 16);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osoby`
--

CREATE TABLE `osoby` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `miasto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `osoby`
--

INSERT INTO `osoby` (`id`, `name`, `miasto_id`) VALUES
(1, 'Jan Kowalski', 1),
(2, 'Anna Nowak', 1),
(3, 'Piotr Wiśniewski', 1),
(4, 'Tomasz Lewandowski', 2),
(5, 'Maria Kaczmarek', 2),
(6, 'Paweł Kamiński', 2),
(7, 'Agnieszka Wiśniewska', 3),
(8, 'Michał Wójcik', 3),
(9, 'Joanna Kowalczyk', 3),
(10, 'Robert Jabłoński', 4),
(11, 'Ewa Piotrowska', 4),
(12, 'Łukasz Król', 4),
(13, 'Grzegorz Nowicki', 5),
(14, 'Barbara Maj', 5),
(15, 'Krzysztof Pawlak', 5),
(16, 'Sylwia Dąbrowska', 6),
(17, 'Adam Nowak', 6),
(18, 'Monika Kamińska', 6),
(19, 'Jakub Wiśniewski', 7),
(20, 'Karolina Zielińska', 7),
(21, 'Marcin Lewandowski', 7),
(22, 'Anna Król', 8),
(23, 'Paweł Szymański', 8),
(24, 'Ewa Nowicka', 8),
(25, 'Marek Kaczmarek', 9),
(26, 'Agnieszka Piotrowska', 9),
(27, 'Tomasz Jabłoński', 9),
(28, 'Joanna Wójcik', 10),
(29, 'Łukasz Maj', 10),
(30, 'Barbara Pawlak', 10),
(31, 'Kamil Lewandowski', 11),
(32, 'Magdalena Dąbrowska', 11),
(33, 'Piotr Król', 11),
(34, 'Anna Wiśniewska', 12),
(35, 'Tomasz Nowicki', 12),
(36, 'Maria Jabłońska', 12),
(37, 'Paweł Wójcik', 13),
(38, 'Katarzyna Maj', 13),
(39, 'Łukasz Pawlak', 13),
(40, 'Grzegorz Kaczmarek', 14),
(41, 'Joanna Piotrowska', 14),
(42, 'Adam Lewandowski', 14),
(43, 'Barbara Nowak', 15),
(44, 'Michał Szymański', 15),
(45, 'Anna Król', 15),
(46, 'Tomasz Wiśniewski', 16),
(47, 'Monika Jabłońska', 16),
(48, 'Łukasz Maj', 16),
(49, 'Jan Kowalski', 17),
(50, 'Anna Nowak', 17),
(51, 'Piotr Wiśniewski', 17),
(52, 'Tomasz Lewandowski', 18),
(53, 'Maria Kaczmarek', 18),
(54, 'Paweł Kamiński', 18),
(55, 'Agnieszka Wiśniewska', 19),
(56, 'Michał Wójcik', 19),
(57, 'Joanna Kowalczyk', 19),
(58, 'Robert Jabłoński', 20),
(59, 'Ewa Piotrowska', 20),
(60, 'Łukasz Król', 20),
(61, 'Grzegorz Nowicki', 21),
(62, 'Barbara Maj', 21),
(63, 'Krzysztof Pawlak', 21),
(64, 'Sylwia Dąbrowska', 22),
(65, 'Adam Nowak', 22),
(66, 'Monika Kamińska', 22),
(67, 'Jakub Wiśniewski', 23),
(68, 'Karolina Zielińska', 23),
(69, 'Marcin Lewandowski', 23),
(70, 'Anna Król', 24),
(71, 'Paweł Szymański', 24),
(72, 'Ewa Nowicka', 24),
(73, 'Marek Kaczmarek', 25),
(74, 'Agnieszka Piotrowska', 25),
(75, 'Tomasz Jabłoński', 25),
(76, 'Joanna Wójcik', 26),
(77, 'Łukasz Maj', 26),
(78, 'Barbara Pawlak', 26),
(79, 'Kamil Lewandowski', 27),
(80, 'Magdalena Dąbrowska', 27),
(81, 'Piotr Król', 27);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `powiaty`
--

CREATE TABLE `powiaty` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `wojewodztwo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `powiaty`
--

INSERT INTO `powiaty` (`id`, `name`, `wojewodztwo_id`) VALUES
(1, 'Warszawski', 1),
(2, 'Krakowski', 2),
(3, 'Łódzki', 3),
(4, 'Wrocławski', 4),
(5, 'Poznański', 5),
(6, 'Gdański', 6),
(7, 'Szczeciński', 7),
(8, 'Bydgoski', 8),
(9, 'Lubelski', 9),
(10, 'Katowicki', 10),
(11, 'Białostocki', 11),
(12, 'Gdyński', 12),
(13, 'Częstochowski', 13),
(14, 'Radomski', 14),
(15, 'Toruński', 15),
(16, 'Kielecki', 16),
(17, 'Zabrzański', 12),
(18, 'Bielski', 12),
(19, 'Rzeszowski', 9),
(20, 'Gliwicki', 12),
(21, 'Zielonogórski', 7),
(22, 'Opolski', 8),
(23, 'Tyski', 12),
(24, 'Elbląski', 11),
(25, 'Dąbrowski', 12),
(26, 'Chorzowski', 12),
(27, 'Koszaliński', 16);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wojewodztwa`
--

CREATE TABLE `wojewodztwa` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wojewodztwa`
--

INSERT INTO `wojewodztwa` (`id`, `name`) VALUES
(1, 'Mazowieckie'),
(2, 'Małopolskie'),
(3, 'Łódzkie'),
(4, 'Dolnośląskie'),
(5, 'Wielkopolskie'),
(6, 'Pomorskie'),
(7, 'Lubuskie'),
(8, 'Opolskie'),
(9, 'Podkarpackie'),
(10, 'Śląskie'),
(11, 'Podlaskie'),
(12, 'Śląskie'),
(13, 'Świętokrzyskie'),
(14, 'Warmińsko-Mazurskie'),
(15, 'Śląskie'),
(16, 'Zachodniopomorskie');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `miasta`
--
ALTER TABLE `miasta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `powiat_id` (`powiat_id`),
  ADD KEY `wojewodztwo_id` (`wojewodztwo_id`);

--
-- Indeksy dla tabeli `osoby`
--
ALTER TABLE `osoby`
  ADD PRIMARY KEY (`id`),
  ADD KEY `miasto_id` (`miasto_id`);

--
-- Indeksy dla tabeli `powiaty`
--
ALTER TABLE `powiaty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wojewodztwo_id` (`wojewodztwo_id`);

--
-- Indeksy dla tabeli `wojewodztwa`
--
ALTER TABLE `wojewodztwa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `miasta`
--
ALTER TABLE `miasta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `osoby`
--
ALTER TABLE `osoby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `powiaty`
--
ALTER TABLE `powiaty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wojewodztwa`
--
ALTER TABLE `wojewodztwa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `miasta`
--
ALTER TABLE `miasta`
  ADD CONSTRAINT `miasta_ibfk_1` FOREIGN KEY (`powiat_id`) REFERENCES `powiaty` (`id`),
  ADD CONSTRAINT `miasta_ibfk_2` FOREIGN KEY (`wojewodztwo_id`) REFERENCES `wojewodztwa` (`id`);

--
-- Constraints for table `osoby`
--
ALTER TABLE `osoby`
  ADD CONSTRAINT `osoby_ibfk_1` FOREIGN KEY (`miasto_id`) REFERENCES `miasta` (`id`);

--
-- Constraints for table `powiaty`
--
ALTER TABLE `powiaty`
  ADD CONSTRAINT `powiaty_ibfk_1` FOREIGN KEY (`wojewodztwo_id`) REFERENCES `wojewodztwa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
