-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 22 2020 г., 14:41
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `logbase`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `Login` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Reg_Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`Login`, `Password`, `Reg_Date`) VALUES
('NIKOLAY', '123', '2020-12-04 00:14:25'),
('OMELCHENKO', 'ttiip313', '2020-12-04 00:14:56'),
('Nikola', '123123', '2020-12-04 00:22:20'),
('Nikola22', '12', '2020-12-04 00:45:13'),
('123', '123', '2020-12-04 01:08:45'),
('аврва', '123', '2020-12-04 10:47:24'),
('dsfsdf', 'sdfdsf', '2020-12-04 10:52:49'),
('12333', '123', '2020-12-04 21:38:07'),
('1233', '123', '2020-12-07 00:53:57'),
('123123', '22', '2020-12-07 00:54:02'),
('123123123', '123', '2020-12-07 01:14:26'),
('sdfsdf', 'sdfsfd', '2020-12-07 01:15:44'),
('sdf', 'sdf', '2020-12-07 01:15:49'),
('123впав', '123аввап', '2020-12-10 18:57:06');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
