-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Фев 28 2025 г., 13:52
-- Версия сервера: 5.7.24
-- Версия PHP: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `demoexam`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `ClientID` int(11) NOT NULL,
  `CompanyName` text NOT NULL,
  `NameClient` text NOT NULL,
  `ClientType` text NOT NULL,
  `Phone` text NOT NULL,
  `Rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`ClientID`, `CompanyName`, `NameClient`, `ClientType`, `Phone`, `Rating`) VALUES
(1, 'Мотыга', 'Курочкин', 'ООО', '+79056600844', 10),
(2, 'AnansikRodeo', 'Евгений Онегин', 'ООО', '+79059977344', 1),
(3, 'TechNova', 'Иван Петров', 'ИП', '+79051234567', 8),
(4, 'GreenField', 'Алексей Смирнов', 'ООО', '+79052345678', 5),
(5, 'SkylineCorp', 'Мария Иванова', 'ООО', '+79053456789', 9),
(6, 'EduStart', 'Анна Сидорова', 'ИП', '+79054567890', 6),
(7, 'FoodieLand', 'Дмитрий Кузнецов', 'ООО', '+79055678901', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `ordern`
--

CREATE TABLE `ordern` (
  `ClientID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `ProductName` text NOT NULL,
  `ProductData` date NOT NULL,
  `Price` int(11) NOT NULL,
  `ammount` int(11) NOT NULL,
  `summ` int(11) NOT NULL,
  `FinalSum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ordern`
--

INSERT INTO `ordern` (`ClientID`, `ProductID`, `ProductName`, `ProductData`, `Price`, `ammount`, `summ`, `FinalSum`) VALUES
(1, 1, 'Батон', '2024-11-09', 45, 100, 4500, 4050),
(2, 2, 'Молоко', '2024-11-09', 145, 10, 1450, 1305),
(3, 3, 'Кефир', '2024-11-10', 90, 20, 1800, 1620),
(4, 4, 'Яйца', '2024-11-08', 60, 50, 3000, 2700),
(5, 5, 'Хлеб', '2024-11-11', 50, 80, 4000, 3600),
(6, 6, 'Сметана', '2024-11-11', 120, 25, 3000, 2700),
(7, 7, 'Масло', '2024-11-12', 200, 30, 6000, 5400);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`ClientID`);

--
-- Индексы таблицы `ordern`
--
ALTER TABLE `ordern`
  ADD PRIMARY KEY (`ClientID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `ClientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `ordern`
--
ALTER TABLE `ordern`
  MODIFY `ClientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
