-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3307
-- Thời gian đã tạo: Th7 25, 2021 lúc 03:53 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blog`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL COMMENT 'tên chuyên mục',
  `slug` varchar(500) NOT NULL COMMENT 'tên chuyên mục không dấu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL COMMENT 'tiêu đề bài viết',
  `slug` varchar(500) NOT NULL COMMENT 'tiêu đề không dấu',
  `view_number` int(11) NOT NULL COMMENT 'lượt xem',
  `image` varchar(500) NOT NULL COMMENT 'ảnh',
  `summary` text NOT NULL COMMENT 'tóm tắt',
  `content` longtext NOT NULL COMMENT 'nội dung',
  `category_id` int(11) NOT NULL COMMENT 'id chuyên mục',
  `user_id` int(11) NOT NULL COMMENT 'id thành viên',
  `date` date NOT NULL COMMENT 'thời gian đăng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL COMMENT 'tên đăng nhập',
  `password` varchar(20) NOT NULL COMMENT 'mật khẩu',
  `full_name` varchar(50) NOT NULL COMMENT 'tên đầy đủ',
  `level` int(11) NOT NULL DEFAULT 0 COMMENT 'quyền'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `full_name`, `level`) VALUES
(1, 'dung', '0248a8cac62a6a3a9c91', 'qeqeqeqe', 0),
(2, 'test', 'd9b1d7db4cd6e7093536', 'nguyen tien', 0),
(3, 'hung1', '14e1b600b1fd579f4743', 'nguyen tien', 0),
(4, 'ngtiencong2701@gmail', '14e1b600b1fd579f4743', 'nguyen van', 0),
(5, 'test1', '28c8edde3d61a0411511', 'nguyen tien', 1),
(6, '123', '28c8edde3d61a0411511', '235', 0),
(7, 'dungbn', 'd9b1d7db4cd6e7093536', 'tien', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
