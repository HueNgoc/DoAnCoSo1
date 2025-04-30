-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 30, 2025 lúc 05:55 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlcafe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ban`
--

CREATE TABLE `ban` (
  `MaBan` int(11) NOT NULL,
  `TenBan` varchar(55) NOT NULL,
  `TrangThai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ban`
--

INSERT INTO `ban` (`MaBan`, `TenBan`, `TrangThai`) VALUES
(1, 'Bàn 1', 'Đang phục vụ'),
(2, 'Bàn 2', 'Trống'),
(3, 'Bàn 3', 'Trống'),
(4, 'Bàn 4', 'Đang phục vụ'),
(5, 'Bàn 5', 'Trống'),
(6, 'Bàn 6', 'Đang phục vụ'),
(7, 'Bàn 7', 'Trống'),
(8, 'Bàn 8', 'Đang phục vụ'),
(9, 'Bàn 9', 'Trống'),
(10, 'Bàn 10', 'Đang phục vụ'),
(11, 'Bàn 11', 'Trống'),
(13, 'Bàn 12', 'Đang phục vụ'),
(14, 'Bàn 13', 'Đang phục vụ'),
(15, 'Bàn 14', 'Đang phục vụ'),
(16, 'Bàn 15', 'Đang phục vụ'),
(17, 'Bàn 16', 'Đang phục vụ'),
(18, 'Bàn 17', 'Trống'),
(19, 'Bàn 18', 'Trống'),
(25, 'Bàn 19', 'Đã đặt trước'),
(31, 'Bàn 20', 'Trống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethd`
--

CREATE TABLE `chitiethd` (
  `MaChiTietHD` int(11) NOT NULL,
  `MaHoaDon` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `Gia` int(11) NOT NULL,
  `MaMon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethd`
--

INSERT INTO `chitiethd` (`MaChiTietHD`, `MaHoaDon`, `SoLuong`, `Gia`, `MaMon`) VALUES
(428, 248, 1, 23000, 1),
(429, 249, 1, 35000, 3),
(431, 250, 1, 39000, 24),
(432, 251, 1, 45000, 86),
(433, 251, 1, 39000, 24),
(434, 252, 1, 45000, 83),
(435, 252, 1, 36000, 11),
(436, 253, 1, 38000, 22),
(437, 254, 1, 38000, 22),
(438, 250, 1, 23000, 1),
(458, 254, 1, 32000, 68),
(479, 250, 1, 38000, 26),
(480, 250, 1, 36000, 25),
(485, 250, 1, 37000, 40),
(487, 250, 1, 42000, 18),
(488, 250, 1, 32000, 51),
(513, 256, 1, 39000, 24),
(514, 257, 1, 29000, 13),
(517, 260, 1, 35000, 3),
(518, 261, 1, 12000, 74),
(522, 265, 1, 39000, 24),
(524, 267, 1, 45000, 86);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHoaDon` int(11) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNum` varchar(200) DEFAULT NULL,
  `GiamGia` int(11) DEFAULT NULL,
  `MaBan` int(11) NOT NULL,
  `GioDen` datetime NOT NULL,
  `TongTien` int(11) DEFAULT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHoaDon`, `Name`, `MobileNum`, `GiamGia`, `MaBan`, `GioDen`, `TongTien`, `TrangThai`) VALUES
(248, 'Hoàng', '1231231233', NULL, 1, '2024-05-31 09:47:21', 23000, 1),
(249, 'n', '1212121212', NULL, 1, '2024-05-31 13:42:22', 35000, 1),
(250, '', '', NULL, 10, '2024-05-31 13:42:53', NULL, 0),
(251, 'Ngọc Huệ', '0376712640', 5, 2, '2024-05-31 16:08:05', 79800, 1),
(252, 'Hoang0376712640', '0376712640', 5, 2, '2024-05-31 16:36:29', 76950, 1),
(253, '', '', NULL, 13, '2024-06-01 00:46:26', NULL, 0),
(254, 'a', '1212121212', NULL, 1, '2024-06-01 20:36:38', 70000, 1),
(256, 'a', '1212121234', NULL, 2, '2024-06-14 15:18:04', 39000, 1),
(257, NULL, NULL, NULL, 8, '2024-06-14 15:18:20', NULL, 0),
(260, NULL, NULL, NULL, 16, '2024-06-14 21:11:38', NULL, 0),
(261, 'Trần Công Hoàng', '0912490014', NULL, 3, '2024-06-14 21:28:05', 12000, 1),
(265, NULL, NULL, NULL, 4, '2024-06-15 08:22:03', NULL, 0),
(266, NULL, NULL, NULL, 1, '2024-06-15 08:27:59', NULL, 0),
(267, 'hoàng', '1212121212', 5, 2, '2024-06-15 08:42:13', 42750, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhommon`
--

CREATE TABLE `nhommon` (
  `MaLoai` int(11) NOT NULL,
  `TenLoai` varchar(55) NOT NULL,
  `MauSac` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhommon`
--

INSERT INTO `nhommon` (`MaLoai`, `TenLoai`, `MauSac`) VALUES
(1, 'Cà Phê Phin', '#ac3939'),
(2, 'PhinDi', '#40ff00'),
(3, 'Espresso', '#00ffff'),
(4, 'Trà', '#ffcc00'),
(6, 'Ăn Vặt', '#ff3333'),
(7, 'Trà Sữa', '#ff6600'),
(8, 'Trà Trái Cây', '#00cc66'),
(9, 'Macchiato', '#cc00cc'),
(10, 'Sữa Tươi', '#00ffff'),
(11, 'Đá Xay', '#99ff00'),
(12, 'Milo_Cacao', '#66b3ff'),
(13, 'SoDa', '#99ccff'),
(14, 'Món Khác', '#66ff00'),
(15, 'Topping', '#ff0066');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `lv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `username`, `password`, `lv`) VALUES
(7, 'nhanvien', '1', 2),
(10, 'nhanvien2', '1', 2),
(11, 'admin', 'admin', 1),
(14, 'TranCongHoang', 'tranconghoang', 2),
(15, 'NgocHue', 'ngochue', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thucdon`
--

CREATE TABLE `thucdon` (
  `MaMon` int(11) NOT NULL,
  `TenMon` varchar(55) NOT NULL,
  `MaLoai` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `DVT` varchar(55) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thucdon`
--

INSERT INTO `thucdon` (`MaMon`, `TenMon`, `MaLoai`, `DonGia`, `DVT`) VALUES
(1, ' Thái Xanh', 7, 23000, 'Ly'),
(2, 'Trà Sữa Ô Long', 7, 43000, 'Ly'),
(3, 'Trà Sữa Cookie', 7, 35000, 'Ly'),
(4, 'Trà Sữa Củ Năng', 7, 36000, 'Ly'),
(5, 'Trà Sữa Phô Mai', 7, 42000, 'Ly'),
(6, 'Trà Sữa Bông', 7, 45000, 'Ly'),
(7, 'Trà Sữa Brulee Trứng', 7, 45000, 'Ly'),
(8, 'Trà Sữa Muối Chôm Chôm', 7, 42000, 'Ly'),
(9, 'Thái Xanh Đặc Biệt', 7, 37000, 'Ly'),
(10, 'Khoai Môn Đặc Biệt', 7, 43000, 'Ly'),
(11, 'Trà Đào', 8, 36000, 'Ly'),
(12, 'Trà Tăc Xí Muội', 8, 29000, 'Ly'),
(13, 'Trà Chanh Xí Muội', 8, 29000, 'Ly'),
(14, 'Trà Xoài Nha Đam', 8, 33000, 'Ly'),
(15, 'Trà Việt Quất ', 8, 33000, 'Ly'),
(16, 'Trà Kiwi Nha Đam', 8, 33000, 'Ly'),
(17, 'Trà Tắc Thái ', 8, 35000, 'Ly'),
(18, 'Trà Đào Xả Chôm Chôm', 8, 42000, 'Ly'),
(19, 'Trà Trái Vải', 8, 38000, 'Ly'),
(21, 'Trà Ổi', 8, 33000, 'Ly'),
(22, 'Chocolate Kem Sữa', 9, 38000, 'Ly'),
(23, 'Trà Xoài Kem Sữa', 9, 38000, 'Ly'),
(24, 'Trà Sữa Cookie', 9, 39000, 'Ly'),
(25, 'Dừa Kem Sữa', 9, 36000, 'Ly'),
(26, 'Khoai Môn Kem Sữa', 9, 38000, 'Ly'),
(27, 'Matcha Oreo Kem Sữa', 9, 43000, 'Ly'),
(28, 'Ô Long Sữa', 9, 40000, 'Ly'),
(29, 'Thạch Nhà Làm', 15, 12000, 'Phần'),
(30, 'Bánh Flan', 15, 8000, 'Phần'),
(31, 'Pudding', 15, 8000, 'Phần'),
(32, 'Khúc Bạch', 15, 8000, 'Phần'),
(33, 'Trân Châu', 15, 8000, 'Phần'),
(34, 'Kem Sữa', 15, 10000, 'Phần'),
(35, 'Chôm Chôm', 15, 8000, 'Phần'),
(36, 'Trái Vải', 15, 8000, 'Phần'),
(37, 'Phô Mai Viên', 15, 12000, 'Phần'),
(38, 'Sương Sáo', 15, 8000, 'Phần'),
(39, 'Nha Đam', 15, 8000, 'Phần'),
(40, 'Sữa Tươi Sương Sáo ', 10, 37000, 'Ly'),
(41, 'Sữa Tươi Trân Châu', 10, 37000, 'Ly'),
(42, 'Latte Đào', 10, 38000, 'Ly'),
(43, 'Ô Long Sương Sáo', 10, 37000, 'Ly'),
(44, 'Chocolate Latte', 10, 40000, 'Ly'),
(45, 'Sữa Tươi', 10, 43000, 'Ly'),
(46, 'Chanh Tuyết Xay', 11, 28000, 'Ly'),
(47, 'Tắc Xay', 11, 28000, 'Ly'),
(48, 'Sữa Tuyết Dâu Tươi', 11, 32000, 'Ly'),
(49, 'Matcha Đá Xay', 11, 32000, 'Ly'),
(50, 'Socola Đá Xay', 11, 32000, 'Ly'),
(51, 'Socola Bạc Hà Đá Xay', 11, 32000, 'Ly'),
(52, 'Cookie Bạc Hà Đá Xay', 11, 32000, 'Ly'),
(53, 'Phin Sữa Đá', 1, 45000, 'Ly'),
(54, 'Phin Đen Đá', 1, 39000, 'Ly'),
(55, 'Bạc Xỉu', 1, 45000, 'Ly'),
(56, 'Cà Phê Đen Sài Gòn', 1, 18000, 'Ly'),
(57, 'Cà Phê Sữa Sài Gòn', 1, 22000, 'Ly'),
(58, 'Cà Phê Muối', 1, 28000, 'Ly'),
(59, 'Cà Phê Cốt Dừa', 1, 29000, 'Ly'),
(60, 'Milo Cốt Dừa', 12, 32000, 'Ly'),
(61, 'Milo Dầm', 12, 29000, 'Ly'),
(62, 'Cacao bánh', 12, 25000, 'Phần'),
(63, 'Soda Blue Ocean', 13, 32000, 'Ly'),
(64, 'Soda Chanh', 13, 33000, 'Ly'),
(65, 'Soda Vị trái Cây', 13, 32000, 'Ly'),
(66, 'Bánh Flan', 14, 23000, 'Phần'),
(67, 'Trà Gừng Nóng', 14, 22000, 'Ly'),
(68, 'Yaourt Thạch Đặc Biệt', 14, 32000, 'Ly'),
(69, 'Yaourt Vải Tươi', 14, 29000, 'Ly'),
(70, 'Chanh Dây Đá Viên', 14, 39000, 'Ly'),
(71, 'Socola (nóng/lạnh)', 14, 55000, 'Ly'),
(72, 'Bánh Sữa Tươi', 6, 7000, 'Cái'),
(73, 'Phô Mai Que', 6, 10000, 'Que'),
(74, 'Ram Hải Sản', 6, 12000, 'Phần'),
(75, 'Xúc Xích Đức', 6, 10000, 'Cây'),
(76, 'Cá Viên', 6, 13000, 'Phần'),
(77, 'Thanh Cua Chiên', 6, 13000, 'Phần'),
(78, 'Nem Chua Rán', 6, 25000, 'Phần'),
(79, 'Khô Gà Lá Chanh', 6, 35000, 'Phần'),
(80, 'PhinDi Hạnh Nhân', 2, 45000, 'Ly'),
(81, 'PhinDi Kem Sữa', 2, 45000, 'Ly'),
(82, 'PhinDi Choco', 2, 45000, 'Ly'),
(83, 'Espresso/ Americano', 3, 45000, 'Ly'),
(84, 'Cappuchino/Latte', 3, 65000, 'Ly'),
(85, 'Bánh Mì Que', 14, 19000, 'Que'),
(86, 'Trà Thạch Vải', 4, 45000, 'Ly'),
(87, 'Trà Xanh Đậu Đỏ', 4, 45000, 'Ly'),
(88, 'Bánh Tráng Trộn', 6, 20000, 'Phần'),
(89, 'Khô Bò', 6, 30000, 'Phần'),
(90, 'Bánh Tráng Nướng', 6, 20000, 'Cái');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ban`
--
ALTER TABLE `ban`
  ADD PRIMARY KEY (`MaBan`);

--
-- Chỉ mục cho bảng `chitiethd`
--
ALTER TABLE `chitiethd`
  ADD PRIMARY KEY (`MaChiTietHD`),
  ADD KEY `MaHoaDon` (`MaHoaDon`),
  ADD KEY `MaMon` (`MaMon`) USING BTREE;

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHoaDon`),
  ADD KEY `MaBan` (`MaBan`);

--
-- Chỉ mục cho bảng `nhommon`
--
ALTER TABLE `nhommon`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thucdon`
--
ALTER TABLE `thucdon`
  ADD PRIMARY KEY (`MaMon`),
  ADD KEY `FK__nhommon` (`MaLoai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `ban`
--
ALTER TABLE `ban`
  MODIFY `MaBan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `chitiethd`
--
ALTER TABLE `chitiethd`
  MODIFY `MaChiTietHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=525;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHoaDon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT cho bảng `nhommon`
--
ALTER TABLE `nhommon`
  MODIFY `MaLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `thucdon`
--
ALTER TABLE `thucdon`
  MODIFY `MaMon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethd`
--
ALTER TABLE `chitiethd`
  ADD CONSTRAINT `chitiethd_ibfk_1` FOREIGN KEY (`MaHoaDon`) REFERENCES `hoadon` (`MaHoaDon`),
  ADD CONSTRAINT `chitiethd_ibfk_2` FOREIGN KEY (`MaMon`) REFERENCES `thucdon` (`MaMon`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaBan`) REFERENCES `ban` (`MaBan`);

--
-- Các ràng buộc cho bảng `thucdon`
--
ALTER TABLE `thucdon`
  ADD CONSTRAINT `FK__nhommon` FOREIGN KEY (`MaLoai`) REFERENCES `nhommon` (`MaLoai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
