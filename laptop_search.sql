-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 11, 2022 lúc 04:51 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laptop_search`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `laptopid` varchar(30) NOT NULL,
  `hangsx` varchar(50) DEFAULT NULL,
  `phanloai` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `laptopid`, `hangsx`, `phanloai`) VALUES
(1, '425', 'ASUS', 'GAMING'),
(2, '123123123213', 'MACBOOK', 'SINH VIÊN'),
(3, '1234', 'DELL', 'SINH VIÊN'),
(4, '123123', 'DELL', 'SINH VIÊN'),
(5, '123', 'MACBOOK', 'VĂN PHÒNG'),
(6, '23123', 'DELL', 'SINH VIÊN'),
(12, '12345', 'DELL', 'SINH VIÊN'),
(143, '1', 'DELL', 'SINH VIÊN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `laptop`
--

CREATE TABLE `laptop` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `status` varchar(10) NOT NULL,
  `cpu` varchar(30) NOT NULL,
  `ram` varchar(10) NOT NULL,
  `hard` varchar(30) NOT NULL,
  `screen` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `image_path` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `laptop`
--

INSERT INTO `laptop` (`id`, `name`, `status`, `cpu`, `ram`, `hard`, `screen`, `date`, `image_path`) VALUES
(1, 'Lenovo', 'New', 'i9', '12GB', 'SSD1TB', '15 inch', '23/03/2020', 'C:\\Users\\GTX\\Desktop\\Product\\asus-q408-1-8329.jpeg'),
(2, 'Acer', 'New', 'I7', '4GB', 'SSD256', '15inch', '12/03/2022', 'C:\\Users\\GTX\\Desktop\\Product\\asus-q408-2-3468.jpeg'),
(3, 'Asus', 'New', 'Core i7', '4GB', 'SSD256', '15inch', '12/05/2015', 'C:\\Users\\GTX\\Desktop\\Product\\asus-q408-1-8329.jpeg'),
(4, '', 'New', '', '', '', '', '', NULL),
(5, 'Macbook', 'New', 'M1', '16GB', 'SSD512', '16inch', '12/08/2021', 'C:\\Users\\GTX\\Desktop\\Product\\asus-q408-3-1336.jpeg'),
(6, 'DELL Y2', 'LikeNew', 'Core i7', '4GB', 'SSD 512', '14 inch', '22/11/2019', NULL),
(7, 'rqwer', 'New', 'qưer', 'qưer', 'qưerqwe', 'rqwer', 'qưerqwe', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mamay` (`laptopid`);

--
-- Chỉ mục cho bảng `laptop`
--
ALTER TABLE `laptop`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT cho bảng `laptop`
--
ALTER TABLE `laptop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
