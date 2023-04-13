-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 13 2023 г., 06:27
-- Версия сервера: 10.5.12-MariaDB-cll-lve
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u929278937_crm_create_001`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FIO` varchar(45) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `FIO`, `Username`, `Password`) VALUES
(1, 'Elshod Musurmonov', 'Admin123', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Структура таблицы `chiqim_xarajat`
--

CREATE TABLE `chiqim_xarajat` (
  `id` int(11) NOT NULL,
  `Filial_ID` varchar(25) NOT NULL,
  `Summa` int(11) NOT NULL,
  `ChiqimVaqt` timestamp NULL DEFAULT current_timestamp(),
  `Meneger` varchar(25) NOT NULL,
  `Status` varchar(15) NOT NULL,
  `TasdiqVaqt` timestamp NULL DEFAULT current_timestamp(),
  `Xisobchi` varchar(55) NOT NULL,
  `XarajatType` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `chiqim_xarajat`
--

INSERT INTO `chiqim_xarajat` (`id`, `Filial_ID`, `Summa`, `ChiqimVaqt`, `Meneger`, `Status`, `TasdiqVaqt`, `Xisobchi`, `XarajatType`) VALUES
(7, '1676304186', 55000, '2023-03-16 18:54:39', '1676304186', 'true', '2023-03-30 18:57:14', 'h1678637373', 'chiqim'),
(9, '1676304186', 20000, '2023-03-16 18:54:57', '1676304186', 'true', '2023-03-28 19:03:28', 'h1678637373', 'chiqim'),
(13, '1676304186', 12000, '2023-03-17 19:16:18', '1676304186', 'true', '2023-03-29 19:16:57', 'h1678637373', 'xarajat'),
(14, '1676304186', 10000, '2023-03-17 19:16:29', '1676304186', 'true', '2023-01-26 19:17:31', 'h1678637373', 'xarajat'),
(16, '1676304186', 8000, '2023-03-19 16:50:09', 'h1678637323', 'true', '2023-03-31 16:51:13', 'h1678637373', 'xarajat'),
(17, '1676304186', 10000, '2023-03-19 16:50:17', 'h1678637323', 'true', '2023-03-31 16:51:07', 'h1678637373', 'chiqim');

-- --------------------------------------------------------

--
-- Структура таблицы `cours`
--

CREATE TABLE `cours` (
  `id` int(11) NOT NULL,
  `Filial_ID` varchar(45) NOT NULL,
  `Cours_ID` varchar(45) NOT NULL,
  `Cours_Name` varchar(150) NOT NULL,
  `Mavzu_Coint` int(11) NOT NULL,
  `Test_Coint` int(11) NOT NULL,
  `User_ID` varchar(45) NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `cours`
--

INSERT INTO `cours` (`id`, `Filial_ID`, `Cours_ID`, `Cours_Name`, `Mavzu_Coint`, `Test_Coint`, `User_ID`, `Data`) VALUES
(7, '1676304186', '1678642548', 'Ingliz tili', 15, 15, '1676304186', '2023-03-12 17:35:48'),
(8, '1676304186', '1678642602', 'Web dasturlash', 15, 15, '1676304186', '2023-03-12 17:36:42'),
(9, '1676304186', '1678642631', 'Java Script', 15, 15, '1676304186', '2023-03-12 17:37:11');

-- --------------------------------------------------------

--
-- Структура таблицы `filial`
--

CREATE TABLE `filial` (
  `id` int(11) NOT NULL,
  `Filial_ID` varchar(25) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Action` varchar(25) NOT NULL,
  `Addres` varchar(150) NOT NULL,
  `Drektor` varchar(150) NOT NULL,
  `About` varchar(150) NOT NULL,
  `Logo` varchar(150) NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `filial`
--

INSERT INTO `filial` (`id`, `Filial_ID`, `Name`, `Action`, `Addres`, `Drektor`, `About`, `Logo`, `Data`) VALUES
(15, '1680630523', 'Atko Tema', 'true', 'Qarshi shaxar', 'Tulanov Abbos', 'Atko tema o`quv markazi', 'logo.png', '2023-04-04 17:48:43');

-- --------------------------------------------------------

--
-- Структура таблицы `guruh`
--

CREATE TABLE `guruh` (
  `id` int(11) NOT NULL,
  `Filial_ID` varchar(45) NOT NULL,
  `Cours_ID` varchar(45) NOT NULL,
  `Guruh_ID` varchar(45) NOT NULL,
  `Guruh_Name` varchar(150) NOT NULL,
  `Tulov_Coint` int(11) NOT NULL,
  `Tulov_Summa` int(11) NOT NULL,
  `Ulish` int(11) NOT NULL,
  `Start` timestamp NOT NULL DEFAULT current_timestamp(),
  `End` timestamp NOT NULL DEFAULT current_timestamp(),
  `Room_ID` varchar(25) NOT NULL,
  `Admin` varchar(50) NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `guruh`
--

INSERT INTO `guruh` (`id`, `Filial_ID`, `Cours_ID`, `Guruh_ID`, `Guruh_Name`, `Tulov_Coint`, `Tulov_Summa`, `Ulish`, `Start`, `End`, `Room_ID`, `Admin`, `Data`) VALUES
(11, '1676304186', '1678642631', '1678643444', 'JavaScript Darslari', 3, 200000, 15, '2023-02-28 19:39:38', '2023-06-29 19:00:00', '1676395419', '1676304186', '2023-03-12 17:50:44'),
(12, '1676304186', '1678642548', '1678643608', 'Ingliz tili', 3, 350000, 20, '2023-02-28 19:00:00', '2023-03-30 18:59:59', '1676395419', '1676304186', '2023-03-12 17:53:28'),
(13, '1676304186', '1678642602', '1678643724', 'Web Dasturlash', 3, 320000, 25, '2023-04-30 19:00:00', '2023-06-30 18:59:59', '1676395419', '1676304186', '2023-03-12 17:55:24'),
(14, '1676304186', '1678642548', '1679237163', 'test uchun', 5, 150000, 15, '2023-03-02 19:00:00', '2023-07-07 18:59:59', '1676395419', '1676304186', '2023-03-19 14:46:03');

-- --------------------------------------------------------

--
-- Структура таблицы `guruh_davomad`
--

CREATE TABLE `guruh_davomad` (
  `id` int(11) NOT NULL,
  `Filial_ID` varchar(24) NOT NULL,
  `Guruh_ID` varchar(24) NOT NULL,
  `User_ID` varchar(24) NOT NULL,
  `Data` date NOT NULL,
  `Hafta` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `guruh_davomad`
--

INSERT INTO `guruh_davomad` (`id`, `Filial_ID`, `Guruh_ID`, `User_ID`, `Data`, `Hafta`) VALUES
(14, '1676304186', '1678643444', '1678644052', '2023-04-02', 'Yakshanba'),
(15, '1676304186', '1678643444', '1678644137', '2023-04-02', 'Yakshanba'),
(16, '1676304186', '1678643444', '1678644052', '2023-04-01', 'Dushanba'),
(17, '1676304186', '1678643444', '1678644137', '2023-04-01', 'Dushanba'),
(18, '1676304186', '1678643444', '1678644052', '2023-03-03', 'Dushanba'),
(19, '1676304186', '1678643444', '1678644137', '2023-03-07', 'Dushanba'),
(20, '1676304186', '1678643444', '1678644052', '2023-04-03', 'Dushanba'),
(21, '1676304186', '1678643444', '1678644137', '2023-04-03', 'Dushanba');

-- --------------------------------------------------------

--
-- Структура таблицы `guruh_narx`
--

CREATE TABLE `guruh_narx` (
  `id` int(11) NOT NULL,
  `Guruh_ID` varchar(25) NOT NULL,
  `Summa` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `guruh_techer`
--

CREATE TABLE `guruh_techer` (
  `id` int(11) NOT NULL,
  `Filial_ID` int(11) NOT NULL,
  `Guruh_ID` varchar(25) NOT NULL,
  `User_ID` varchar(25) NOT NULL,
  `Izoh` varchar(150) NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `guruh_techer`
--

INSERT INTO `guruh_techer` (`id`, `Filial_ID`, `Guruh_ID`, `User_ID`, `Izoh`, `Data`, `Status`) VALUES
(7, 1676304186, '1678643444', 'T1678643212', 'test', '2023-03-12 17:57:39', 'true'),
(8, 1676304186, '1678643608', 'T1678643844', 'test', '2023-03-12 17:57:53', 'true'),
(9, 1676304186, '1678643724', 'T1678642704', 'test', '2023-03-12 17:58:19', 'true');

-- --------------------------------------------------------

--
-- Структура таблицы `guruh_users`
--

CREATE TABLE `guruh_users` (
  `id` int(11) NOT NULL,
  `Filial_ID` varchar(25) NOT NULL,
  `Guruh_ID` varchar(25) NOT NULL,
  `User_ID` varchar(25) NOT NULL,
  `Comment` varchar(150) NOT NULL,
  `Status` varchar(25) NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `guruh_users`
--

INSERT INTO `guruh_users` (`id`, `Filial_ID`, `Guruh_ID`, `User_ID`, `Comment`, `Status`, `Data`) VALUES
(14, '1676304186', '1678643444', '1678644052', 'test', 'true', '2023-03-12 18:04:28'),
(15, '1676304186', '1678643444', '1678644137', 'test', 'true', '2023-03-12 18:27:51');

-- --------------------------------------------------------

--
-- Структура таблицы `guruh_users2`
--

CREATE TABLE `guruh_users2` (
  `id` int(11) NOT NULL,
  `User_ID` varchar(25) NOT NULL,
  `Guruh_ID` varchar(25) NOT NULL,
  `Comment` varchar(150) NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `messeg`
--

CREATE TABLE `messeg` (
  `id` int(11) NOT NULL,
  `Filial_ID` varchar(25) NOT NULL,
  `Messeg_Time` datetime NOT NULL,
  `Messege` varchar(150) NOT NULL,
  `Status` varchar(15) NOT NULL,
  `User_ID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `Filial_ID` varchar(45) NOT NULL,
  `Room_ID` varchar(45) NOT NULL,
  `Room_Name` varchar(150) NOT NULL,
  `Volume` varchar(15) NOT NULL,
  `Masul` varchar(150) NOT NULL,
  `Admin` varchar(150) NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `rooms`
--

INSERT INTO `rooms` (`id`, `Filial_ID`, `Room_ID`, `Room_Name`, `Volume`, `Masul`, `Admin`, `Data`) VALUES
(6, '1676304186', '1676395419', 'Web dasturlash honasi 2', '22', 'Elshod Musurmonov', '1676304186', '2023-02-14 17:23:39'),
(9, '1676304186', '1679769894', '1-xona', '15', '15', '1676304186', '2023-03-25 18:44:54');

-- --------------------------------------------------------

--
-- Структура таблицы `rooms_time`
--

CREATE TABLE `rooms_time` (
  `id` int(11) NOT NULL,
  `Room_ID` varchar(45) NOT NULL,
  `Cours_ID` varchar(45) NOT NULL,
  `Hafta` varchar(45) NOT NULL,
  `Time` varchar(45) NOT NULL,
  `Start` varchar(45) NOT NULL,
  `End` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `rooms_time`
--

INSERT INTO `rooms_time` (`id`, `Room_ID`, `Cours_ID`, `Hafta`, `Time`, `Start`, `End`) VALUES
(41, '1676395419', '1678643444', 'Dushanba', '08:00-09:30', '2023-03-15 00:00:00', '2023-07-15 23:59:59'),
(43, '1676395419', '1678643444', 'Chorshanba', '08:00-09:30', '2023-03-15 00:00:00', '2023-07-15 23:59:59'),
(45, '1676395419', '1678643444', 'Juma', '08:00-09:30', '2023-03-15 00:00:00', '2023-07-15 23:59:59'),
(47, '1676395419', '1678643608', 'Dushanba', '09:30-11:00', '2023-03-15 00:00:00', '2023-06-30 23:59:59'),
(49, '1676395419', '1678643608', 'Chorshanba', '09:30-11:00', '2023-03-15 00:00:00', '2023-06-30 23:59:59'),
(51, '1676395419', '1678643608', 'Juma', '09:30-11:00', '2023-03-15 00:00:00', '2023-06-30 23:59:59'),
(54, '1676395419', '1678643724', 'Seshanba', '08:00-09:30', '2023-03-01 00:00:00', '2023-06-30 23:59:59'),
(56, '1676395419', '1678643724', 'Payshanba', '08:00-09:30', '2023-03-01 00:00:00', '2023-06-30 23:59:59'),
(58, '1676395419', '1678643724', 'Shanba', '08:00-09:30', '2023-03-01 00:00:00', '2023-06-30 23:59:59'),
(59, '1676395419', '1679237163', 'Dushanba', '09:30-11:00', '2023-08-03 00:00:00', '2023-07-07 23:59:59'),
(61, '1676395419', '1679237163', 'Chorshanba', '09:30-11:00', '2023-08-03 00:00:00', '2023-07-07 23:59:59'),
(63, '1676395419', '1679237163', 'Juma', '11:00-12:30', '2023-08-03 00:00:00', '2023-07-07 23:59:59');

-- --------------------------------------------------------

--
-- Структура таблицы `tulovlar`
--

CREATE TABLE `tulovlar` (
  `id` int(11) NOT NULL,
  `Filial_ID` varchar(25) NOT NULL,
  `Guruh_ID` varchar(25) NOT NULL,
  `User_ID` varchar(25) NOT NULL,
  `Tulov_tur` varchar(25) NOT NULL,
  `Tulov_Somma` int(11) NOT NULL,
  `Tulov_haqida` varchar(150) NOT NULL,
  `Tulov_vaqt` timestamp NOT NULL DEFAULT current_timestamp(),
  `Meneger` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tulovlar`
--

INSERT INTO `tulovlar` (`id`, `Filial_ID`, `Guruh_ID`, `User_ID`, `Tulov_tur`, `Tulov_Somma`, `Tulov_haqida`, `Tulov_vaqt`, `Meneger`) VALUES
(16, '1676304186', '1678643444', '1678644052', 'naqt', 150000, 'test', '2023-02-12 18:17:36', '1676304186'),
(17, '1676304186', '1678643444', '1678644052', 'naqt', 20000, 'test', '2023-03-12 18:18:48', ''),
(18, '1676304186', '1678643444', '1678644052', 'naqt', 5000, 'test', '2023-01-12 18:19:08', '1676304186'),
(19, '1676304186', '1678643444', '1678644052', 'plastik', 2000, 'test', '2023-03-12 18:27:12', '1676304186'),
(20, '1676304186', '1678643444', '1678644137', 'plastik', 200000, 'test', '2022-12-12 18:28:13', ''),
(21, '1676304186', '1678643444', '1678644137', 'chegirma', 200000, 'test', '2023-03-12 18:28:29', ''),
(22, '1676304186', '1678643444', '1678644137', 'chegirma', 20000, 'test', '2023-01-12 18:28:58', ''),
(23, '1676304186', '1678643444', '1678644137', 'qaytarildi', 20000, 'test', '2023-03-12 18:29:14', ''),
(24, '1676304186', '1678643444', '1678644052', 'naqt', 5000, '5000', '2023-03-30 18:32:28', ''),
(25, '1676304186', '1678643444', '1678644052', 'qaytarildi', 3000, '3000', '2023-03-30 18:35:58', ''),
(26, '1676304186', '1678643444', '1678644052', 'chegirma', 1000, '1000', '2023-03-30 18:36:18', ''),
(27, '1676304186', '1678643444', '1678644137', 'plastik', 1500, '1500', '2023-03-30 18:36:49', ''),
(28, '1676304186', '1678643444', '1678644052', 'naqt', 5000, 'secd', '2023-04-01 18:01:40', '');

-- --------------------------------------------------------

--
-- Структура таблицы `tulovlar_techer`
--

CREATE TABLE `tulovlar_techer` (
  `id` int(11) NOT NULL,
  `Filial_ID` varchar(25) NOT NULL,
  `Guruh_ID` varchar(25) NOT NULL,
  `User_ID` varchar(25) NOT NULL,
  `Tulov_tur` varchar(25) NOT NULL,
  `Tulov_Somma` varchar(25) NOT NULL,
  `Izoh` varchar(150) NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tulovlar_techer`
--

INSERT INTO `tulovlar_techer` (`id`, `Filial_ID`, `Guruh_ID`, `User_ID`, `Tulov_tur`, `Tulov_Somma`, `Izoh`, `Data`) VALUES
(2, '1676304186', '1678643444', 'T1678643212', 'naqt', '19550', 'test', '2023-03-12 18:31:30');

-- --------------------------------------------------------

--
-- Структура таблицы `tulov_hodim`
--

CREATE TABLE `tulov_hodim` (
  `id` int(11) NOT NULL,
  `Filial_ID` varchar(25) NOT NULL,
  `User_ID` varchar(25) NOT NULL,
  `Tulov_Turi` varchar(15) NOT NULL,
  `Tulov_Summa` varchar(15) NOT NULL,
  `Izoh` varchar(150) NOT NULL,
  `Tulov_Vaqt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tulov_hodim`
--

INSERT INTO `tulov_hodim` (`id`, `Filial_ID`, `User_ID`, `Tulov_Turi`, `Tulov_Summa`, `Izoh`, `Tulov_Vaqt`) VALUES
(1, '1676304186', 'h1678637323', 'naqt', '1212', '1221', '2023-03-14 18:51:20'),
(2, '1676304186', 'h1678637323', 'plastik', '45000', 'tets', '2023-03-14 18:51:50'),
(3, '1676304186', 'h1678637323', 'naqt', '25000', 'test', '2023-03-14 18:57:25'),
(4, '1676304186', 'h1678637457', 'naqt', '15000', '15000', '2023-03-31 19:04:38'),
(5, '1676304186', 'h1678637457', 'qaytarildi', '5000', '1221', '2023-03-14 19:05:50'),
(6, '1676304186', 'h1678637323', 'naqt', '5000', 'test 5000', '2023-03-15 17:33:10');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `User_ID` varchar(20) NOT NULL,
  `Filial_ID` varchar(20) NOT NULL,
  `Username` varchar(70) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `FIO` varchar(70) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Tkun` varchar(20) NOT NULL,
  `Manzil` varchar(150) NOT NULL,
  `Tanish` varchar(70) NOT NULL,
  `TanishPhone` varchar(20) NOT NULL,
  `Haqimizda` varchar(150) NOT NULL,
  `Qiziqishlari` varchar(150) NOT NULL,
  `Pasport` varchar(11) NOT NULL,
  `PNFL` varchar(20) NOT NULL,
  `Mutahasislik` varchar(150) NOT NULL,
  `TechAbout` varchar(150) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Status` varchar(25) NOT NULL,
  `Action` varchar(45) NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `User_ID`, `Filial_ID`, `Username`, `Password`, `FIO`, `Phone`, `Tkun`, `Manzil`, `Tanish`, `TanishPhone`, `Haqimizda`, `Qiziqishlari`, `Pasport`, `PNFL`, `Mutahasislik`, `TechAbout`, `Type`, `Status`, `Action`, `Data`) VALUES
(13, '1676304186', '1676304186', 'aaa', '202cb962ac59075b964b07152d234b70', '', '999(89) 088 5745', '1997-03-08', 'Ayroport', '', '', '', '', 'AA 7857023', '74848475875485', '', '', 'admin', 'admin', 'true', '2023-02-13 16:03:06'),
(49, 'h1678637323', '1676304186', 'H1678637323', '202cb962ac59075b964b07152d234b70', 'Dilshod Xolmurodov', '998(91) 225 1001', '1994-09-18', '', '', '', '', '', 'AA 1234567', '87878787878787', '', '', 'admin', 'meneger', 'true', '2023-03-12 16:08:43'),
(50, 'h1678637373', '1676304186', 'H1678637373', 'e10adc3949ba59abbe56e057f20f883e', 'Murod Xojmatov', '998(91) 780 7007', '1987-08-15', '', '', '', '', '', 'AB 7878787', '87878787848787', '', '', 'admin', 'xisobchi', 'true', '2023-03-12 16:09:33'),
(51, 'h1678637422', '1676304186', 'H1678637422', 'e10adc3949ba59abbe56e057f20f883e', 'Abbos Xalilov', '998(94) 856 9009', '1993-05-05', '', '', '', '', '', 'AC 1515787', '87788777788787', '', '', 'admin', 'mexmon', 'true', '2023-03-12 16:10:22'),
(52, 'h1678637457', '1676304186', 'H1678637457', 'e10adc3949ba59abbe56e057f20f883e', 'Muzrob Karimov', '998(84) 515 0111', '1996-05-08', '', '', '', '', '', 'AA 7858787', '88877787878787', '', '', 'admin', 'admin', 'true', '2023-03-12 16:10:57'),
(53, 'T1678642704', '1676304186', 'T1678642704', 'e10adc3949ba59abbe56e057f20f883e', 'Dilmurodov Zuhruddin', '998(90) 888 4455', '1993-02-15', 'Koson_tuman', '', '', '', '', 'AC 5898598', '98958578589875', 'Web', 'Muhandis dasturchi', 'techer', 'techer', 'true', '2023-03-12 17:38:24'),
(54, 'T1678643212', '1676304186', 'T1678643212', '202cb962ac59075b964b07152d234b70', 'Hayriddin Normamatov', '998(78) 585 7857', '1986-03-15', 'Qarshi_tuman', '', '', '', 'web 1', 'AX 7858585', '85858585858585', 'Muhandis Dasturchi', 'Java Dasturchi', 'techer', 'techer', 'true', '2023-03-12 17:46:52'),
(55, 'T1678643844', '1676304186', 'T1678643844', 'e10adc3949ba59abbe56e057f20f883e', 'Hilola Qodirova', '998(57) 570 7507', '1993-03-01', 'Qarshi_shahar', '', '', '', '', 'AA 4578587', '48451365416841', 'Ingliz tili', 'Ingliz tili', 'techer', 'techer', 'true', '2023-03-12 17:57:24'),
(56, '1678644052', '1676304186', 'S1678644052', 'e10adc3949ba59abbe56e057f20f883e', 'Xolmurodov Dilshod1', '998(91) 225 1001', '1994-09-18', 'Qarshi_shahar', 'Elshod Musurmonov', '998(90) 883 0450', 'Tanishlar', 'Tarmoq', 'AA 0000000', '00000000000000', '', '', 'student', 'student', 'true', '2023-02-28 18:00:52'),
(57, '1678644137', '1676304186', 'S1678644137', 'e10adc3949ba59abbe56e057f20f883e', 'Bobayorov Ozod', '998(91) 520 1707', '1992-01-12', 'Koson_tuman', 'Dilshod Xolmurodov', '998(91) 225 1001', 'Telegram', 'Taksi', '', '', '', '', 'student', 'student', 'true', '2023-02-28 18:02:17'),
(58, '1678644187', '1676304186', 'S1678644187', 'e10adc3949ba59abbe56e057f20f883e', 'Murodov Nodir', '998(87) 909 7898', '1988-05-04', 'Qarshi_shahar', 'Boboyarov Ozod', '998(99) 858 1707', 'Facebook', 'Test', '', '', '', '', 'student', 'student', 'true', '2023-03-12 18:03:07'),
(60, 'F1679221439', '1676304186', 'AAAasw', '9fc58423aa0341dd75c031e1b2fabe0a', 'Jaxongi JAhongirov', '998(78) 585 7485', '2002-12-02', 'Qarshi_shahar', 'Web', '998(32) 313 2334', 'Tanishlar', 'wec', 'AA 8787478', '24333534546546', '', '', 'Form', 'student', 'true', '2023-03-28 10:23:59'),
(61, 'F1679221641', '1676304186', '323232323', 'dd2d6cd5ca978c3acaf80dbdbdee6f38', 'Jaxongi JAhongirov', '998(12) 332 1212', '1212-02-12', 'Qarshi_shahar', '234234', '998(32) 423 4234', 'Tanishlar', '32243', 'WW 2131231', '12312332412312', '', '', 'Form', 'student', 'true', '2023-02-28 10:23:59'),
(62, '1680196838', '1676304186', 'S1680196838', 'e10adc3949ba59abbe56e057f20f883e', 'rvszfvsd', '998(42) 456 3453', '3434-04-05', 'Muborak_tuman', '34345', '998(34) 534 5345', 'Instagram', '345egr', '', '', '', '', 'student', 'student', 'true', '2023-03-30 17:20:38'),
(63, '1680341301', '1676304186', 'S1680341301', 'e10adc3949ba59abbe56e057f20f883e', 'erdbvsdvb', '998(34) 343 3434', '0034-03-04', 'Yakkabog_tuman', 'dfvserdv', '998(43) 423 4243', 'Bannerlar', 'dsbrbs', '', '', '', '', 'student', 'student', 'true', '2023-04-01 09:28:21'),
(64, '1680341316', '1676304186', 'S1680341316', 'e10adc3949ba59abbe56e057f20f883e', 'dzfvdfv', '998(34) 343 423_', '0004-02-04', 'Koson_tuman', '3geasrv', '998(67) 564 646_', 'Boshqalar', 'fsbgrfbg', '', '', '', '', 'student', 'student', 'true', '2023-04-01 09:28:36'),
(65, '1680341455', '1676304186', 'S1680341455', 'e10adc3949ba59abbe56e057f20f883e', 'srtdbsdbg', '998(57) 645 7546', '75467-05-06', 'Mirishkor_tuman', '5475467', '998(56) 756 7567', 'Instagram', '5675467456', '', '', '', '', 'student', 'student', 'true', '2023-04-01 09:30:55'),
(66, 'F1680459128', '1676304186', 'Admin123', '202cb962ac59075b964b07152d234b70', 'Elshod Musurmonov', '998(89) 564 6416', '0046-06-04', 'Qarshi_shahar', '64164146416151', '998(61) 461 6161', 'Tanishlar', 'Web dasturlash', 'AA 4964164', '46184654653165', '', '', 'Form', 'student', 'true', '2023-04-02 18:12:08'),
(67, '1680630523', '1680630523', 'Abbos1101', 'e10adc3949ba59abbe56e057f20f883e', 'Tulanov Abbos', '+998993301101', '1987-09-09', 'Qarshi Shahar', '', '', '', '', 'AA 7878785', '12312312312312', '', '', 'admin', 'admin', 'true', '2023-04-04 17:48:43'),
(68, 'h1680632084', '1680630523', 'Admin123', 'df29f809cfdcef66b2ee8196e33ded3e', 'Elshod Musurmonov', '998(94) 520 4004', '1997-01-02', '', '', '', '', '', 'AA 7857023', '30201972600013', '', '', 'admin', 'admin', 'true', '2023-04-04 18:14:44');

-- --------------------------------------------------------

--
-- Структура таблицы `user_history`
--

CREATE TABLE `user_history` (
  `id` int(11) NOT NULL,
  `Filial_ID` varchar(45) NOT NULL,
  `User_ID` varchar(45) NOT NULL,
  `Status` varchar(45) NOT NULL,
  `history_ID` varchar(45) NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `user_history`
--

INSERT INTO `user_history` (`id`, `Filial_ID`, `User_ID`, `Status`, `history_ID`, `Data`) VALUES
(111, '1676304186', '1676304186', 'Yangi hodim qo`shildi', 'h1678637323', '2023-03-12 16:08:43'),
(112, '1676304186', '1676304186', 'Yangi hodim qo`shildi', 'h1678637373', '2023-03-12 16:09:33'),
(113, '1676304186', '1676304186', 'Yangi hodim qo`shildi', 'h1678637422', '2023-03-12 16:10:22'),
(114, '1676304186', '1676304186', 'Yangi hodim qo`shildi', 'h1678637457', '2023-03-12 16:10:57'),
(115, '1676304186', '1676304186', 'Yangi kurs qo`shildi', '1678642548', '2023-03-12 17:35:48'),
(116, '1676304186', '1676304186', 'Yangi kurs qo`shildi', '1678642602', '2023-03-12 17:36:42'),
(117, '1676304186', '1676304186', 'Yangi kurs qo`shildi', '1678642631', '2023-03-12 17:37:11'),
(118, '1676304186', '1676304186', 'Yangi o`qituvchi qo`shildi', 'T1678642704', '2023-03-12 17:38:24'),
(119, '1676304186', '1676304186', 'Yangi o`qituvchi qo`shildi', 'T1678643212', '2023-03-12 17:46:52'),
(120, '1676304186', '1676304186', 'Yangi guruh qo`shildi', '1678643444', '2023-03-12 17:50:44'),
(121, '1676304186', '1676304186', 'Yangi guruh qo`shildi', '1678643608', '2023-03-12 17:53:28'),
(122, '1676304186', '1676304186', 'Yangi guruh qo`shildi', '1678643724', '2023-03-12 17:55:24'),
(123, '1676304186', '1676304186', 'Yangi o`qituvchi qo`shildi', 'T1678643844', '2023-03-12 17:57:24'),
(124, '1676304186', '1676304186', 'Guruhga o`qituvchi qo`shildi', 'T1678643212', '2023-03-12 17:57:39'),
(125, '1676304186', '1676304186', 'Guruhga o`qituvchi qo`shildi', 'T1678643844', '2023-03-12 17:57:53'),
(126, '1676304186', '1676304186', 'Guruhga o`qituvchi qo`shildi', 'T1678642704', '2023-03-12 17:58:19'),
(127, '1676304186', '1676304186', 'Guruhga yangi talaba qo`shildi', '1678644052', '2023-03-12 18:04:28'),
(128, '1676304186', '1676304186', 'Talaba tulov amalga oshirildi', '1678644052', '2023-03-12 18:17:36'),
(129, '1676304186', '', 'Talaba guruhga to`lov amalga oshirdi', '1678644052', '2023-03-12 18:18:48'),
(130, '1676304186', '1676304186', 'Talaba tulov amalga oshirildi', '1678644052', '2023-03-12 18:19:08'),
(131, '1676304186', '1676304186', 'Talaba tulov amalga oshirildi', '1678644052', '2023-03-12 18:27:12'),
(132, '1676304186', '1676304186', 'Guruhga yangi talaba qo`shildi', '1678644137', '2023-03-12 18:27:51'),
(133, '1676304186', '', 'Talaba guruhga to`lov amalga oshirdi', '1678644137', '2023-03-12 18:28:13'),
(134, '1676304186', '', 'Talaba guruhga to`lov amalga oshirdi', '1678644137', '2023-03-12 18:28:29'),
(135, '1676304186', '', 'Talaba guruhga to`lov amalga oshirdi', '1678644137', '2023-03-12 18:28:58'),
(136, '1676304186', '', 'Talaba guruhga to`lov amalga oshirdi', '1678644137', '2023-03-12 18:29:14'),
(137, '1676304186', '1676304186', 'O`qituvchi uchun to`lov amalga oshirildi', 'T1678643212', '2023-03-12 18:31:30'),
(138, '1676304186', '1676304186', 'Yangi hodim qo`shildi', 'h1678819490', '2023-03-14 18:44:50'),
(139, '1676304186', '1676304186', 'Yangi guruh qo`shildi', '1679237163', '2023-03-19 14:46:03'),
(140, '1676304186', '1676304186', 'roon_plus', '1679769894', '2023-03-25 18:44:54'),
(141, '1676304186', '', 'Talaba guruhga to`lov amalga oshirdi', '1678644052', '2023-03-30 18:32:28'),
(142, '1676304186', '', 'Talaba guruhga to`lov amalga oshirdi', '1678644052', '2023-03-30 18:35:58'),
(143, '1676304186', '', 'Talaba guruhga to`lov amalga oshirdi', '1678644052', '2023-03-30 18:36:18'),
(144, '1676304186', '', 'Talaba guruhga to`lov amalga oshirdi', '1678644137', '2023-03-30 18:36:49'),
(145, '1676304186', '', 'Talaba guruhga to`lov amalga oshirdi', '1678644052', '2023-04-01 18:01:40'),
(146, '1680630523', '1680630523', 'Yangi hodim qo`shildi', 'h1680632084', '2023-04-04 18:14:44');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chiqim_xarajat`
--
ALTER TABLE `chiqim_xarajat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `filial`
--
ALTER TABLE `filial`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `guruh`
--
ALTER TABLE `guruh`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `guruh_davomad`
--
ALTER TABLE `guruh_davomad`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `guruh_narx`
--
ALTER TABLE `guruh_narx`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `guruh_techer`
--
ALTER TABLE `guruh_techer`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `guruh_users`
--
ALTER TABLE `guruh_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `guruh_users2`
--
ALTER TABLE `guruh_users2`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messeg`
--
ALTER TABLE `messeg`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rooms_time`
--
ALTER TABLE `rooms_time`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tulovlar`
--
ALTER TABLE `tulovlar`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tulovlar_techer`
--
ALTER TABLE `tulovlar_techer`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tulov_hodim`
--
ALTER TABLE `tulov_hodim`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_history`
--
ALTER TABLE `user_history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `chiqim_xarajat`
--
ALTER TABLE `chiqim_xarajat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `cours`
--
ALTER TABLE `cours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `filial`
--
ALTER TABLE `filial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `guruh`
--
ALTER TABLE `guruh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `guruh_davomad`
--
ALTER TABLE `guruh_davomad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `guruh_narx`
--
ALTER TABLE `guruh_narx`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `guruh_techer`
--
ALTER TABLE `guruh_techer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `guruh_users`
--
ALTER TABLE `guruh_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `guruh_users2`
--
ALTER TABLE `guruh_users2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `messeg`
--
ALTER TABLE `messeg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `rooms_time`
--
ALTER TABLE `rooms_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT для таблицы `tulovlar`
--
ALTER TABLE `tulovlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `tulovlar_techer`
--
ALTER TABLE `tulovlar_techer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `tulov_hodim`
--
ALTER TABLE `tulov_hodim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT для таблицы `user_history`
--
ALTER TABLE `user_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
