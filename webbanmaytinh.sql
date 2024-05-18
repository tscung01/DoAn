-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 17, 2024 at 05:53 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2024_php_thuan_webmaytinh`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `phone`, `level`, `created_at`, `updated_at`) VALUES
(9, 'admin', 'doantotnghiep@gmail.com', '25f9e794323b453885f5181f1b624d0b', '0941445790', 2, '2022-05-22 06:27:16', '2023-06-15 18:54:18'),
(10, 'NV', '123@gmal.com', '25f9e794323b453885f5181f1b624d0b', '0123456789', 1, '2022-06-10 08:22:56', '2022-06-10 08:22:56');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `donhang_id` int(11) DEFAULT NULL,
  `sanpham_id` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `gia` int(11) DEFAULT NULL,
  `size` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`donhang_id`, `sanpham_id`, `soluong`, `gia`, `size`, `hinhanh`, `id`) VALUES
(7, 54, 2, 350000, NULL, 'gshopee1.jpg', 12),
(8, 46, 1, 380, NULL, 'MG_2403-600x600.jpg', 13),
(9, 59, 2, 250000, NULL, 'Ao-tap-gym-nam-gymshark-5-600x600.jpg', 14),
(10, 59, 1, 250000, NULL, 'Ao-tap-gym-nam-gymshark-5-600x600.jpg', 15),
(11, 59, 2, 250000, NULL, 'Ao-tap-gym-nam-gymshark-5-600x600.jpg', 16),
(15, 61, 1, 150000, NULL, 'Mu-thoi-trang-nam-Mu-tap-gym-under-armour-1.jpg', 20),
(16, 61, 2, 150000, NULL, 'Mu-thoi-trang-nam-Mu-tap-gym-under-armour-1.jpg', 21),
(17, 60, 1, 270000, NULL, 'sb6.jpg', 22),
(18, 66, 1, 315000, NULL, 'Bộ Quần Short + Áo Ngắn Tay Alphalete.jpg', 23),
(19, 120, 1, 90000, NULL, 'Dây Miniband.jpg', 24),
(20, 118, 2, 120000, 'm', 'Găng Tay SKDK.jpg', 25),
(21, 119, 1, 135000, 'XX', 'Dây Kéo Lưng Aolikes.jpg', 26),
(22, 122, 2, 900000, 'L', 'quan jin nam.webp', 27),
(23, 122, 1, 900000, 'tuỳ chọn', 'quan jin nam.webp', 28),
(24, 122, 2, 900000, 'tuỳ chọn', 'quan jin nam.webp', 29),
(24, 121, 1, 686000, 'tuỳ chọn', 'quan ao tay dung.webp', 30),
(25, 121, 1, 686000, 'tuỳ chọn', 'quan ao tay dung.webp', 31),
(26, 122, 1, 900000, 'tuỳ chọn', 'quan jin nam.webp', 32),
(27, 121, 1, 686000, 'tuỳ chọn', 'quan ao tay dung.webp', 33),
(28, 121, 1, 686000, 'tuỳ chọn', 'quan ao tay dung.webp', 34),
(29, 122, 1, 900000, 'tuỳ chọn', 'quan jin nam.webp', 35),
(30, 122, 1, 900000, 'tuỳ chọn', 'quan jin nam.webp', 36),
(31, 121, 1, 686000, 'tuỳ chọn', 'quan ao tay dung.webp', 37),
(32, 122, 1, 900000, 'tuỳ chọn', 'quan jin nam.webp', 38);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `tendanhmuc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `danhmuccha_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`tendanhmuc`, `slug`, `hinhanh`, `danhmuccha_id`, `created_at`, `updated_at`, `id`) VALUES
('Quần áo nam', 'quan-ao-nam', NULL, 0, '2023-06-15 19:00:38', '2023-06-15 19:00:38', 14),
('Quần áo nữ', 'quan-ao-nu', NULL, 0, '2023-06-15 19:00:43', '2023-06-15 19:00:43', 15),
('Quần áo thun', 'quan-ao-thun', NULL, 0, '2023-06-15 19:00:50', '2023-06-15 12:01:16', 16),
('Áo mùa hè', 'ao-mua-he', NULL, 0, '2023-06-15 19:01:29', '2023-06-15 19:01:29', 17);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `ten` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodienthoai` char(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tongtien` int(11) DEFAULT NULL,
  `loai` tinyint(4) NOT NULL DEFAULT '1',
  `thanhvien_id` int(11) NOT NULL DEFAULT '0',
  `noidung` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trangthai` tinyint(4) DEFAULT '0',
  `nhanviengiaohang_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`ten`, `diachi`, `sodienthoai`, `email`, `tongtien`, `loai`, `thanhvien_id`, `noidung`, `trangthai`, `nhanviengiaohang_id`, `created_at`, `updated_at`, `id`) VALUES
('Phú ĐZ', 'Hà Nội', '0909898666', 'doan@gmail.com', 900000, 2, 24, '', 1, 10, '2024-01-12 18:21:42', '2024-01-12 18:21:42', 32);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `tenmenu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vitri` tinyint(4) DEFAULT '0',
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`tenmenu`, `slug`, `vitri`, `id`) VALUES
('Tin Tức', 'tin-tuc.php', 0, 3),
('Giới Thiệu', NULL, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `tennhacc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodienthoai` char(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`tennhacc`, `diachi`, `sodienthoai`, `email`, `created_at`, `updated_at`, `id`) VALUES
('Công ty may mặc Hà Nội', 'Hà Nội', '0989898888', 'hanoi@gmail.com', '2023-06-15 19:02:32', '2023-06-15 19:02:32', 8),
('Cty may mặc bao bì Gia Lam', 'Gia Lâm Hà Nội', '0909888777', '0909888777@gmail.com', '2023-06-15 19:03:40', '2023-06-15 19:03:40', 9);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sodienthoai` varchar(255) DEFAULT NULL,
  `matkhau` varchar(255) DEFAULT NULL,
  `diachi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `ten`, `email`, `sodienthoai`, `matkhau`, `diachi`) VALUES
(1, 'Phú ha', 'doantotnghiep@gmail.com', '0987656111', '25f9e794323b453885f5181f1b624d0b', 'Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `tensanpham` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `danhmuc_id` int(11) DEFAULT NULL,
  `gia` int(11) DEFAULT '0',
  `soluong` int(11) DEFAULT '0',
  `giamgia` tinyint(4) DEFAULT '0',
  `hinhanh` varchar(255) DEFAULT NULL,
  `mota` text,
  `trangthai` varchar(255) DEFAULT NULL,
  `hot` tinyint(3) UNSIGNED DEFAULT '0',
  `yeuthich` int(11) DEFAULT '0',
  `nhacungcap_id` int(11) DEFAULT NULL,
  `gianhap` int(11) DEFAULT NULL,
  `pay` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL,
  `size` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`tensanpham`, `slug`, `danhmuc_id`, `gia`, `soluong`, `giamgia`, `hinhanh`, `mota`, `trangthai`, `hot`, `yeuthich`, `nhacungcap_id`, `gianhap`, `pay`, `created_at`, `updated_at`, `id`, `size`) VALUES
('Quần áo tây đứng', 'quan-ao-tay-dung', 14, 700000, 100, 2, 'quan ao tay dung.webp', '<p>M&ocirc; tả</p>\r\n', NULL, 0, 0, 1, 500000, 0, '2023-06-15 19:08:39', '2023-06-15 19:08:39', 121, 'L,M,N'),
('Quần Jin nam mới nhất', 'quan-jin-nam-moi-nhat', 14, 900000, 100, 0, 'quan jin nam.webp', '<p>M&ocirc; tả</p>\r\n', NULL, 1, 0, 1, 450000, 0, '2023-06-15 19:10:13', '2023-06-15 19:10:13', 122, 'L');

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE `thanhvien` (
  `hoten` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thunbar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` tinyint(4) DEFAULT '0',
  `sodienthoai` char(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL,
  `id_auth` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`hoten`, `email`, `password`, `diachi`, `thunbar`, `level`, `sodienthoai`, `created_at`, `updated_at`, `id`, `id_auth`) VALUES
('Phú ĐZ', 'doan@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'Hà Nội', NULL, 0, '0909898666', '2023-06-15 19:17:07', '2023-06-15 19:17:07', 24, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `tieude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noidung` text COLLATE utf8_unicode_ci,
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL,
  `Menu_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
