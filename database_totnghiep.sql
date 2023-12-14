-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 15, 2023 lúc 06:53 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `database_totnghiep`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anhsanpham`
--

CREATE TABLE `anhsanpham` (
  `id_anh_san_pham` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `ten_anh` varchar(255) DEFAULT NULL,
  `id_san_pham` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `anhsanpham`
--

INSERT INTO `anhsanpham` (`id_anh_san_pham`, `link`, `ten_anh`, `id_san_pham`) VALUES
(1, '1.jpg', 'AP1', 1),
(2, 'SK1.jpg', 'OM1', 2),
(3, '3.jpg', 'BP1', 3),
(4, '4.jpg', 'RL1', 4),
(5, '5.jpg', 'LG1', 5),
(6, '6.jpg', 'OS1', 6),
(7, '7.jpg', 'CT1', 7),
(8, '8.jpg', 'SK1', 8),
(9, 'anhsp1.1.jpg', 'OG1', 9),
(10, 'AP4.jpg', 'CS1', 10),
(11, 'Julius1.jpg', 'OR1', 11),
(12, 'product-09.jpg', 'OR2', 12),
(13, 'product-02.png', 'OR3', 13),
(14, 'product-03.png', 'OR4', 14),
(15, 'product-04.png', 'CS2', 15),
(16, 'product-05.png', 'CS3', 16),
(17, 'anhsp1.2.jpg', 'OG1', 9),
(18, 'anhsp1.3.jpg', 'OG1', 9),
(19, 'anhsp1.4.jpg', 'OG1', 9),
(20, 'anhsp2.2.jpg', 'CS1', 10),
(21, 'anhsp2.3.jpg', 'CS1', 10),
(22, 'anhsp2.4.jpg', 'CS1', 10),
(23, 'product-06.jpg', 'LG2', 17),
(24, 'product-07.jpg', 'LG3', 18),
(25, '9.jpg', 'OM2', 19),
(26, '10.jpg', 'OM3', 20),
(27, 'AP1.jpg', 'AP2', 21),
(28, 'Julius2.jpg', 'OM4', 22),
(29, '11.jpg', 'OM5', 23),
(30, '12.jpg', 'OM6', 24),
(31, 'LG2.1.png', 'LG4', 25),
(32, 'LG2.2.png', 'LG4', 25),
(33, 'LG3.jpg', 'LG5', 26),
(34, 'LG4.jpg', 'LG6', 27),
(35, 'LG5.1.jpg', 'LG7', 28),
(36, 'LG5.2.jpg', 'LG7', 28),
(37, 'LG6.1.jpg', 'LG8', 29),
(38, 'LG6.2.jpg', 'LG8', 29),
(39, 'LG7.1.jpg', 'LG9', 30),
(40, 'LG7.2.jpg', 'LG9', 30),
(43, 'RL2.1.jpg', NULL, 31),
(46, 'CS1.jpg', NULL, 32),
(49, 'CS3.2.jpg', NULL, 32),
(50, 'CS2.jpg', NULL, 32),
(51, 'CS3.1.jpg', NULL, 32),
(52, 'CS3.3.jpg', NULL, 32),
(53, 'CS4.jpg', NULL, 32),
(54, 'RL1.1.jpg', 'AP1', 1),
(55, 'RL1.2.png', 'AP1', 1),
(56, 'RL1.3.png', 'AP1', 1),
(57, 'RL2.1.jpg', NULL, 31),
(58, 'RL2.3.jpg', NULL, 31),
(59, 'SK2.1.jpg', 'OM1', 2),
(60, 'SK2.2.jpg', 'OM1', 2),
(61, 'SK2.3.jpg', 'OM1', 2),
(62, 'SK4.1.jpg', 'BP1', 3),
(63, 'SK4.2.jpg', 'BP1', 3),
(64, 'SK4.3.jpg', 'BP1', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietgiohang`
--

CREATE TABLE `chitietgiohang` (
  `id_chi_tiet_gio_hang` int(11) NOT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL,
  `gia_ban` double DEFAULT NULL,
  `ngay_tao` datetime DEFAULT NULL,
  `so_luong_san_pham` int(11) DEFAULT NULL,
  `id_chi_tiet_san_pham` int(11) DEFAULT NULL,
  `id_gio_hang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `id_chi_tiet_san_pham` int(11) NOT NULL,
  `chieu_dai_day_deo` double DEFAULT NULL,
  `do_chiu_nuoc` int(11) DEFAULT NULL,
  `do_day_mat_dong_ho` double DEFAULT NULL,
  `duong_kinh_mat_dong_ho` double DEFAULT NULL,
  `gia_san_pham` double DEFAULT NULL,
  `ma_chi_tiet_san_pham` varchar(255) DEFAULT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `trang_thai` int(11) DEFAULT NULL,
  `id_day_deo` int(11) DEFAULT NULL,
  `id_khuyen_mai` int(11) DEFAULT NULL,
  `id_kich_co` int(11) DEFAULT NULL,
  `id_mau_sac` int(11) DEFAULT NULL,
  `id_san_pham` int(11) DEFAULT NULL,
  `id_vat_lieu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`id_chi_tiet_san_pham`, `chieu_dai_day_deo`, `do_chiu_nuoc`, `do_day_mat_dong_ho`, `duong_kinh_mat_dong_ho`, `gia_san_pham`, `ma_chi_tiet_san_pham`, `so_luong`, `trang_thai`, `id_day_deo`, `id_khuyen_mai`, `id_kich_co`, `id_mau_sac`, `id_san_pham`, `id_vat_lieu`) VALUES
(1, 23, 100, 11, 39, 20000000, 'SP2023081101', 30, 1, 4, 1, 2, 2, 1, 1),
(2, 19, 99, 11, 39, 19000000, 'SP2023081102', 12, 1, 3, 1, 2, 1, 1, 1),
(3, 20, 100, 7, 39, 19500000, 'SP2023081103', 30, 1, 2, 2, 3, 3, 1, 2),
(4, 23, 100, 12, 41, 9000000, 'SP2023081104', 24, 1, 1, 2, 2, 4, 2, 3),
(5, 19, 90, 12, 41, 9500000, 'SP2023081105', 50, 1, 4, 2, 2, 5, 2, 4),
(6, 22, 89, 7, 41, 10000000, 'SP2023081106', 16, 1, 5, NULL, 3, 6, 2, 5),
(7, 18, 90, 9, 36, 9000000, 'SP2023081107', 8, 1, 6, 10, 1, 5, 3, 3),
(8, 17, 98, 9, 36, 9500000, 'SP2023081108', 12, 1, 7, NULL, 1, 2, 3, 6),
(9, 23, 89, 9, 36, 10000000, 'SP2023081109', 21, 1, 6, 4, 1, 4, 3, 4),
(10, 22, 98, 13, 38, 80000000, 'SP2023081110', 17, 1, 8, 4, 3, 1, 4, 5),
(11, 22, 99, 13, 40, 81000000, 'SP2023081111', 9, 1, 9, 4, 2, 2, 4, 3),
(12, 17, 98, 13, 40, 82000000, 'SP2023081112', 12, 1, 10, 4, 3, 4, 4, 1),
(13, 22, 98, 13, 40, 20000000, 'SP2023081113', 26, 1, 1, 4, 3, 2, 5, 1),
(14, 22, 89, 13, 38, 21000000, 'SP2023081114', 24, 1, 2, 8, 3, 6, 5, 2),
(15, 22, 99, 13, 40, 20500000, 'SP2023081115', 12, 1, 3, 4, 3, 4, 5, 3),
(16, 20, 98, 12, 38, 20000000, 'SP2023081116', 14, 1, 4, NULL, 1, 1, 6, 2),
(17, 20, 97, 11, 37, 21000000, 'SP2023081117', 23, 1, 5, NULL, 2, 5, 6, 2),
(18, 20, 99, 11, 37, 8000000, 'SP2023081118', 15, 1, 6, 8, 2, 1, 7, 2),
(19, 20, 97, 11, 37, 8500000, 'SP2023081119', 11, 1, 7, 8, 3, 5, 7, 2),
(20, 20, 99, 9, 37, 8550000, 'SP2023081120', 7, 1, 8, NULL, 2, 3, 7, 2),
(21, 20, 97, 11, 38, 10000000, 'SP2023081121', 7, 1, 9, NULL, 1, 4, 8, 4),
(22, 20, 97, 10, 37, 9000000, 'SP2023081122', 9, 1, 10, 9, 2, 1, 8, 4),
(23, 20, 89, 11, 37, 12000000, 'SP2023081123', 10, 1, 1, NULL, 2, 1, 9, 3),
(24, 20, 90, 7, 37, 3000000, 'SP2023081124', 13, 1, 2, 3, 1, 1, 10, 6),
(25, 18, 97, 11, 37, 5000000, 'SP2023081125', 14, 1, 3, 3, 2, 4, 11, 3),
(26, 18, 90, 10, 37, 5000000, 'SP2023081126', 15, 1, 4, 3, 1, 6, 12, 2),
(27, 20, 97, 11, 37, 5000000, 'SP2023081127', 16, 1, 5, 3, 2, 4, 13, 1),
(28, 19, 89, 7, 37, 5000000, 'SP2023081128', 18, 1, 6, 3, 2, 1, 14, 4),
(29, 20, 97, 11, 37, 5600000, 'SP2023081129', 19, 1, 7, 3, 1, 5, 15, 4),
(30, 15, 97, 11, 37, 3200000, 'SP2023081130', 6, 1, 9, 3, 2, 2, 16, 1),
(31, 20, 98, 7, 37, 60000000, 'SP2023081131', 25, 1, 8, NULL, 3, 3, 17, 2),
(32, 15, 97, 11, 37, 50000000, 'SP2023081132', 17, 1, 10, 7, 2, 2, 18, 2),
(33, 17, 99, 11, 37, 39000000, 'SP2023081133', 11, 1, 1, NULL, 1, 6, 19, 2),
(34, 20, 91, 11, 38, 29000000, 'SP2023081134', 22, 1, 2, 7, 3, 2, 20, 3),
(35, 15, 89, 10, 38, 50000000, 'SP2023081135', 23, 1, 3, NULL, 1, 5, 21, 3),
(36, 20, 99, 11, 37, 29000000, 'SP2023081136', 5, 1, 4, NULL, 3, 4, 22, 3),
(37, 17, 90, 10, 37, 29000000, 'SP2023081137', 5, 1, 5, NULL, 1, 3, 23, 3),
(38, 20, 91, 7, 37, 19000000, 'SP2023081138', 6, 1, 6, NULL, 3, 5, 24, 3),
(39, 17, 89, 11, 37, 18000000, 'SP2023081139', 7, 1, 7, 5, 3, 4, 25, 3),
(40, 15, 91, 7, 38, 18000000, 'SP2023081140', 13, 1, 8, 5, 2, 1, 26, 3),
(41, 19, 90, 10, 37, 15000000, 'SP2023081141', 16, 1, 9, NULL, 3, 6, 27, 4),
(42, 15, 99, 11, 38, 18000000, 'SP2023081142', 14, 1, 10, NULL, 1, 4, 28, 2),
(43, 17, 91, 10, 37, 28000000, 'SP2023081143', 18, 1, 1, 6, 1, 5, 29, 4),
(44, 19, 99, 11, 38, 10000000, 'SP2023081144', 10, 1, 2, NULL, 1, 3, 30, 5),
(45, 20, 98, 7, 37, 65000000, 'SP2023081145', 12, 1, 8, NULL, 2, 3, 17, 2),
(46, 15, 97, 11, 37, 17000000, 'SP2023081146', 21, 1, 10, 7, 2, 2, 18, 3),
(47, 17, 99, 11, 37, 19000000, 'SP2023081147', 7, 1, 1, NULL, 1, 6, 19, 5),
(48, 20, 91, 11, 38, 14000000, 'SP2023081148', 17, 1, 2, 7, 2, 2, 20, 5),
(49, 15, 89, 10, 38, 21000000, 'SP2023081149', 15, 1, 3, NULL, 1, 5, 21, 3),
(50, 20, 99, 11, 37, 29000000, 'SP2023081150', 8, 1, 4, NULL, 2, 4, 22, 5),
(51, 17, 90, 10, 37, 30000000, 'SP2023081151', 9, 1, 5, NULL, 1, 3, 23, 3),
(52, 20, 91, 7, 37, 19000000, 'SP2023081152', 12, 1, 6, NULL, 2, 5, 24, 3),
(53, 17, 89, 11, 37, 18000000, 'SP2023081153', 16, 1, 7, 5, 3, 4, 25, 3),
(54, 15, 91, 7, 38, 26000000, 'SP2023081154', 14, 1, 8, 5, 2, 1, 26, 4),
(55, 19, 90, 10, 37, 15000000, 'SP2023081155', 18, 1, 9, NULL, 3, 6, 27, 3),
(56, 15, 99, 11, 38, 24000000, 'SP2023081156', 10, 1, 10, NULL, 1, 4, 28, 2),
(57, 17, 91, 10, 37, 22000000, 'SP2023081157', 8, 1, 1, 6, 1, 5, 29, 3),
(58, 19, 99, 11, 38, 11000000, 'SP2023081158', 20, 1, 2, NULL, 1, 3, 30, 3),
(59, 20, 90, 7, 37, 11500000, 'SP2023081159', 11, 1, 1, 3, 3, 3, 10, 1),
(60, 18, 97, 11, 37, 15500000, 'SP2023081160', 15, 1, 9, 3, 3, 2, 11, 5),
(61, 18, 90, 10, 37, 16000000, 'SP2023081161', 16, 1, 8, 3, 2, 6, 12, 2),
(62, 20, 97, 11, 37, 31000000, 'SP2023081162', 13, 1, 7, 3, 3, 4, 13, 1),
(63, 19, 89, 7, 37, 9000000, 'SP2023081163', 17, 1, 6, 7, 1, 3, 14, 5),
(64, 20, 97, 11, 37, 5100000, 'SP2023081164', 24, 1, 7, 8, 3, 4, 15, 5),
(65, 10, 100, 1, 1, 21000000, 'SP2023081865', 21, 1, 6, 11, 2, 2, 31, 2),
(66, 12, 100, 1, 12, 10000000, 'SP2023081866', 10, 1, 8, 1, 1, 1, 31, 1),
(67, 10, 100, 1, 14, 11000000, 'SP2023081867', 10, 1, 6, 12, 2, 4, 32, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucvu`
--

CREATE TABLE `chucvu` (
  `id_chuc_vu` int(11) NOT NULL,
  `trang_thai` varchar(150) NOT NULL,
  `ten_chuc_vu` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cuahang`
--

CREATE TABLE `cuahang` (
  `id_cua_hang` int(11) NOT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `ma_cua_hang` varchar(255) DEFAULT NULL,
  `quoc_gia` varchar(255) DEFAULT NULL,
  `ten_cua_hang` varchar(255) DEFAULT NULL,
  `thanh_pho` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `ten` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `enabled`, `ten`) VALUES
(1, b'1', 'Đồng Hồ Cơ'),
(2, b'1', 'Đồng Hồ Điện Tử'),
(3, b'1', 'Đồng Hồ Thông Minh'),
(4, b'1', 'Đồng Hồ Thể Thao'),
(5, b'1', 'Đồng Hồ Định Vị GPS'),
(6, b'1', 'Đồng hồ cổ điển');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `daydeo`
--

CREATE TABLE `daydeo` (
  `id_day_deo` int(11) NOT NULL,
  `chat_lieu` varchar(255) DEFAULT NULL,
  `chieu_dai` float DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `mo_ta_day_deo` varchar(255) DEFAULT NULL,
  `ten_day_deo` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `daydeo`
--

INSERT INTO `daydeo` (`id_day_deo`, `chat_lieu`, `chieu_dai`, `enabled`, `mo_ta_day_deo`, `ten_day_deo`) VALUES
(1, 'Vải nylon chất lượng cao', 18, b'1', 'Dây đeo đồng hồ kiểu NATO được ưa chuộng với nhiều màu sắc và hoa văn độc đáo, thường được sử dụng trong môi trường ngoài trời', 'Dây đeo NATO'),
(2, 'Da cừu mềm mại và thoải mái', 20, b'1', 'Dây đeo da cừu thường có cảm giác êm dịu trên da, thích hợp cho những người ưa thích sự sang trọng và thanh lịch', 'Dây đeo da cừu'),
(3, 'Cao su silicon đàn hồi', 20, b'1', 'Dây đeo cao su silicon đa dụng, chống nước tốt, thích hợp cho các hoạt động thể thao và năng động', 'Dây đeo cao su silicon'),
(4, 'Thép không gỉ mạ PVD', 21, b'1', 'Dây đeo mesh bằng thép không gỉ mang lại vẻ hiện đại và mạnh mẽ cho chiếc đồng hồ, phù hợp cho cả nam và nữ.', 'Dây đeo thép không gỉ (mesh)'),
(5, 'Vải canvas chất lượng', 20, b'1', 'Dây đeo vải canvas thường có vẻ bền bỉ và thô mộc, thích hợp cho phong cách thời trang không chính thống', 'Dây đeo vải canvas'),
(6, 'Da tổng hợp polyurethane', 20, b'1', 'Dây đeo da tổng hợp thường có giá thành thấp hơn da thật nhưng vẫn mang đến vẻ ngoại hình cơ bản và đa dạng màu sắc.', 'Dây đeo da tổng hợp (PU)'),
(7, 'Cao su có hoa văn hoặc họa tiết', 22, b'1', 'Dây đeo cao su dập hoa văn thường có thiết kế độc đáo và thú vị, là lựa chọn thú vị để tạo điểm nhấn cho đồng hồ', 'Dây đeo cao su dập hoa văn'),
(8, 'Da cá sấu thật', 22, b'1', 'Dây đeo da cá sấu thường được ưa chuộng trong các đồng hồ cao cấp, mang đến vẻ đẳng cấp và độc đáo.', 'Dây đeo da cá sấu'),
(9, 'Dù bện tạo hình xích', 25, b'1', 'Dây đeo dù đan xích thường có thiết kế độc đáo với các xích liên kết, thể hiện sự mạnh mẽ và phong cách thể thao.', 'Dây đeo dù đan xích'),
(10, 'Gỗ tự nhiên được xử lý', 24, b'1', 'Dây đeo gỗ mang lại vẻ tự nhiên và gần gũi với thiên nhiên, thích hợp cho người ưa thích phong cách bohemia hoặc vintage.', 'Dây đeo gỗ tự nhiên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diachi`
--

CREATE TABLE `diachi` (
  `id_dia_chi` int(11) NOT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL,
  `id_phuong_xa` varchar(255) DEFAULT NULL,
  `id_quan_huyen` int(11) DEFAULT NULL,
  `id_tinh_thanh` int(11) DEFAULT NULL,
  `ma_buu_chinh` int(11) DEFAULT NULL,
  `so_dien_thoai` varchar(255) DEFAULT NULL,
  `trang_thai_mac_dinh` int(11) DEFAULT NULL,
  `id_khach_hang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `diachi`
--

INSERT INTO `diachi` (`id_dia_chi`, `dia_chi`, `ghi_chu`, `id_phuong_xa`, `id_quan_huyen`, `id_tinh_thanh`, `ma_buu_chinh`, `so_dien_thoai`, `trang_thai_mac_dinh`, `id_khach_hang`) VALUES
(1, 'Số 11', 'aaaaaa', '11001', 1482, 201, 123, '0816134100', 1, 1),
(3, 'Số 10', '', '1A0109', 1484, 201, 123, '0816134101', 1, 2),
(4, 'Số 10', '', '580107', 1560, 214, 123, '123456789', 1, 3),
(8, 'Số 10', '', '1A0604', 1485, 201, 123, '0123456711', 0, 1),
(9, 'Số 1111', NULL, '20303', 1444, 202, 123, '0123456789', 0, 1),
(10, 'Số 10', '', '20204', 1443, 202, 123, '0816134100', 1, 5),
(11, 'Đồng tháp', '', '400712', 1954, 210, 123, '0335728316', 1, 8),
(12, 'Số 01', NULL, '1A0502', 1492, 201, 123, '033572812', 0, 8),
(13, '29 Mỹ Đình', 'Không nhận hàng sau 17h', '13004', 3440, 201, 123, '0989553732', 0, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id_don_hang` int(11) NOT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL,
  `id_phuong_xa` varchar(255) DEFAULT NULL,
  `id_quan_huyen` int(11) DEFAULT NULL,
  `id_tinh_thanh` int(11) DEFAULT NULL,
  `ly_do` varchar(255) DEFAULT NULL,
  `ma_don_hang` varchar(255) DEFAULT NULL,
  `ngay_cap_nhap` datetime DEFAULT NULL,
  `ngay_giao_hang` datetime DEFAULT NULL,
  `ngay_tao` datetime DEFAULT NULL,
  `phi_van_chuyen` double DEFAULT NULL,
  `tong_tien` double DEFAULT NULL,
  `trang_thai_don_hang` int(11) DEFAULT NULL,
  `id_khach_hang` int(11) DEFAULT NULL,
  `id_nhan_vien` int(11) DEFAULT NULL,
  `phuong_thuc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id_don_hang`, `dia_chi`, `ghi_chu`, `id_phuong_xa`, `id_quan_huyen`, `id_tinh_thanh`, `ly_do`, `ma_don_hang`, `ngay_cap_nhap`, `ngay_giao_hang`, `ngay_tao`, `phi_van_chuyen`, `tong_tien`, `trang_thai_don_hang`, `id_khach_hang`, `id_nhan_vien`, `phuong_thuc`) VALUES
(1, 'Số 11', NULL, '11001', 1482, 201, NULL, 'DH1691850230586', '2023-08-12 21:27:30', NULL, '2023-08-12 21:23:50', 30800, 20000000, 1, 1, NULL, 1),
(2, 'Số 11', NULL, '11001', 1482, 201, 'Không muốn mua nữa', 'DH1691850725336', '2023-07-02 21:32:05', NULL, '2023-07-01 21:32:05', 27500, 17000000, 4, 1, NULL, 0),
(3, 'Số 11', NULL, '20303', 1444, 202, NULL, 'DH1691850891813', '2023-08-20 15:02:27', '2023-07-26 21:35:45', '2023-07-24 21:34:51', 68201, 64900000, 3, 1, NULL, 1),
(4, 'Số 11', NULL, '20303', 1444, 202, NULL, 'DH1691851437825', '2023-08-23 00:39:52', NULL, '2023-08-12 21:43:57', 55001, 12000000, 2, 1, NULL, 1),
(7, 'Số 11', NULL, '11001', 1482, 201, 'Muốn thay đổi địa chỉ', 'DH1692269365678', '2023-08-19 20:31:43', NULL, '2023-08-17 17:49:25', 27500, 10000000, 4, 1, NULL, 0),
(37, 'Đồng tháp', NULL, '400712', 1954, 210, 'Muốn thay đổi địa chỉ', 'DH1692631730676', '2023-08-21 22:33:03', NULL, '2023-08-21 22:28:50', 70401, 9350000, 6, 8, NULL, 0),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 'DHDAUG22B8F4D', '2023-08-23 00:38:30', '2023-08-23 00:38:30', '2023-08-23 00:38:30', NULL, 10000000, 3, 9, 1, NULL),
(45, '29 Mỹ Đình', NULL, '13004', 3440, 201, NULL, 'DH1692726279500', '2023-08-23 00:47:26', NULL, '2023-08-23 00:44:39', 27500, 10000000, 5, 2, NULL, 0),
(46, 'Số 11', NULL, '11001', 1482, 201, NULL, 'DH1700027259078', '2023-11-15 12:47:39', NULL, '2023-11-15 12:47:39', 27500, 28000000, 0, 1, NULL, 0),
(47, 'Số 11', NULL, '11001', 1482, 201, NULL, 'DH1700027373033', '2023-11-15 12:49:33', NULL, '2023-11-15 12:49:33', 27500, 10000000, 0, 1, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id_gio_hang` int(11) NOT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL,
  `ngay_tao_gio_hang` datetime DEFAULT NULL,
  `thoi_gian_cap_nhap_gio_hang` datetime DEFAULT NULL,
  `trang_thai_gio_hang` int(11) DEFAULT NULL,
  `id_khach_hang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`id_gio_hang`, `ghi_chu`, `ngay_tao_gio_hang`, `thoi_gian_cap_nhap_gio_hang`, `trang_thai_gio_hang`, `id_khach_hang`) VALUES
(1, NULL, '2023-08-18 00:38:17', '2023-08-18 00:38:17', 1, 2),
(2, NULL, '2023-08-18 00:39:51', '2023-08-18 00:39:51', 1, 1),
(3, NULL, '2023-08-21 23:38:37', '2023-08-21 23:38:37', 1, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadonchitiet`
--

CREATE TABLE `hoadonchitiet` (
  `id_hoa_don_chi_tiet` int(11) NOT NULL,
  `gia_ban` double DEFAULT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `id_chi_tiet_san_pham` int(11) DEFAULT NULL,
  `id_don_hang` int(11) DEFAULT NULL,
  `chiet_khau` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadonchitiet`
--

INSERT INTO `hoadonchitiet` (`id_hoa_don_chi_tiet`, `gia_ban`, `so_luong`, `id_chi_tiet_san_pham`, `id_don_hang`, `chiet_khau`) VALUES
(1, 10000000, 2, 44, 1, NULL),
(2, 17000000, 1, 46, 2, NULL),
(3, 7200000, 2, 7, 3, 20),
(4, 12000000, 1, 23, 4, NULL),
(5, 20000000, 1, 1, 3, NULL),
(6, 20500000, 1, 15, 3, NULL),
(7, 10000000, 1, 21, 3, NULL),
(9, 10000000, 1, 44, 7, NULL),
(32, 10000000, 1, 6, 44, NULL),
(33, 10000000, 1, 44, 45, NULL),
(34, 28000000, 1, 43, 46, NULL),
(35, 10000000, 1, 44, 47, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id_khach_hang` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `gioi_tinh` int(11) DEFAULT NULL,
  `ngay_sinh` datetime DEFAULT NULL,
  `ngay_sua` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `so_dien_thoai` varchar(255) DEFAULT NULL,
  `ten_khach_hang` varchar(255) DEFAULT NULL,
  `thoi_gian_tao_tai_khoan` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id_khach_hang`, `email`, `enabled`, `gioi_tinh`, `ngay_sinh`, `ngay_sua`, `password`, `so_dien_thoai`, `ten_khach_hang`, `thoi_gian_tao_tai_khoan`) VALUES
(1, 'tamlttph19033@fpt.edu.vn', b'1', 1, '2002-10-24 00:00:00', '2023-08-12 21:21:29', '$2a$10$G34z1xCdF.BAz8XqF1HL2ujgZvFicloMBy5RpvA0LMbMeKNaTJ3re', '0816134112', 'Lê Thị Thanh Tâm', '2023-08-12 21:21:29'),
(2, 'tamltt.2410@gmail.com', b'1', 0, '2001-01-21 00:00:00', '2023-08-12 21:30:35', '$2a$10$ZJq2vPs5.K.VIzR03h4KmOEwfegyoQ3XKXXr.gVsJQMF1gokBIIBy', '0816134111', 'Thanh Tâm', '2023-08-12 21:30:35'),
(3, 'tam4@gmail.com', b'1', 1, '2023-08-08 00:00:00', '2023-08-14 14:27:24', '$2a$10$pIxpw8tNyxOoZVIQcUH.QurTvQahv.UGMYsGDen.cWl5JYAxPT4Oa', '123456789', 'tam4@gmail.com', '2023-08-14 14:27:24'),
(5, 'anh@gmail.com', b'1', 1, '2023-08-01 00:00:00', '2023-08-20 20:47:37', '$2a$10$tBYwg69zv2LruaSQMc9zlun0ASaTNpFg6NsSNUykc0.TwBK5Kf2tS', '0816134100', 'Lê Phương Anh', '2023-08-20 20:47:37'),
(7, NULL, b'1', NULL, NULL, '2023-08-20 23:59:55', NULL, '03383422277', 'ajnfsdsfsf', NULL),
(8, 'tamltt@gmail.com', b'1', 1, '2023-08-08 00:00:00', '2023-08-21 00:56:54', '$2a$10$qO6H3AEtkvFRDlGEDMBCAO734tQ9fLotDOHjXbLr0wp7vlHlwNaoW', '0335728316', 'Thanh Tâm', '2023-08-21 00:56:54'),
(9, NULL, b'1', NULL, NULL, '2023-08-23 00:38:30', NULL, '0989553732', 'BAOERR', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `id_khuyen_mai` int(11) NOT NULL,
  `chiet_khau` int(11) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `ma_khuyen_mai` varchar(255) DEFAULT NULL,
  `mo_ta_khuyen_mai` varchar(255) DEFAULT NULL,
  `ngay_bat_dau` datetime DEFAULT NULL,
  `ngay_ket_thuc` datetime DEFAULT NULL,
  `ngay_sua` datetime DEFAULT NULL,
  `ten_khuyen_mai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`id_khuyen_mai`, `chiet_khau`, `enabled`, `ma_khuyen_mai`, `mo_ta_khuyen_mai`, `ngay_bat_dau`, `ngay_ket_thuc`, `ngay_sua`, `ten_khuyen_mai`) VALUES
(1, 15, b'0', 'SUMMER15', 'Giảm giá 15% cho mùa hè - Thời gian hạn chế.', '2023-06-06 00:00:00', '2023-08-08 00:00:00', '2023-06-05 00:00:00', 'Chào hè 2023'),
(2, 20, b'0', 'FLASHSALE20', 'Khuyến mại nhanh, giảm 20% cho đồng hồ chọn lọc - Chỉ trong 24 giờ.', '2023-06-17 00:00:00', '2023-06-18 00:00:00', '2023-06-17 00:00:00', 'Giảm nhanh giá sốc'),
(3, 10, b'0', 'EXTRA10OFF', 'Giảm thêm 10% cho các sản phẩm đang giảm giá.', '2023-06-19 00:00:00', '2023-07-07 00:00:00', '2023-06-19 00:00:00', 'Giảm thêm 10%'),
(4, 15, b'0', 'GIFTFORDAD', 'Quà tặng cho cha - Giảm 15% cho đồng hồ nam.', '2023-06-19 00:00:00', '2023-07-07 00:00:00', '2023-06-19 00:00:00', 'Giảm 15% cho đồng hồ nam.'),
(5, 25, b'0', 'LOYALTY25', 'Ưu đãi cho khách hàng thân thiết - Giảm 25% ', '2023-07-08 00:00:00', '2023-07-15 00:00:00', '2023-07-08 10:00:00', 'Giảm 25% - khách thân thiết'),
(6, 10, b'0', 'NEWARRIVAL', 'Giảm giá 10% cho các sản phẩm mới - Thời gian hạn chế.', '2023-07-17 00:00:00', '2023-07-19 00:00:00', '2023-07-17 00:00:00', 'Giảm giá 10% cho các sản phẩm mới - Thời gian hạn chế.'),
(7, 60, b'0', 'CLEARANCE60', 'Giảm giá lên đến 60% cho các sản phẩm dọn kho.', '2023-07-22 00:00:00', '2023-07-25 00:00:00', '2023-07-17 00:00:00', 'Giảm giá đến 60% cho sản phẩm dọn kho'),
(8, 15, b'1', 'HOLIDAYGIFT', 'Giảm 15% cho đồng hồ vàng và bạc.', '2023-08-08 00:00:00', '2023-08-31 00:00:00', '2023-08-07 00:00:00', 'Quà tặng mùa lễ hội'),
(9, 20, b'1', 'WEEKENDSALE', 'Giảm 20% cho đồng hồ chọn lọc vào tháng 8.', '2023-08-01 00:00:00', '2023-08-30 00:00:00', '2023-08-01 00:00:00', 'Khuyến mại tháng 8'),
(10, 20, b'1', 'MEMBERS20', 'Giảm 20% cho tất cả sản phẩm cho Thành viên VIP ', '2023-08-15 00:00:00', '2023-08-30 00:00:00', '2023-08-15 00:00:00', 'Khuyến mại Thành viên VIP'),
(11, 10, b'0', 'WD2ITKILJS', 'Khuyến mại cho người chưa có gia đình', '2023-08-18 00:00:00', '2023-08-21 00:00:00', NULL, 'Khuyến mại Độc thân'),
(12, 15, b'1', 'UHHLAT4MYD', 'Khuyến mại cho người chưa có gia đình', '2023-08-19 00:00:00', '2023-08-31 00:00:00', NULL, 'Khuyến mại FA');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kichco`
--

CREATE TABLE `kichco` (
  `id_kich_co` int(11) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `mo_ta_kich_co` varchar(255) DEFAULT NULL,
  `ngay_tao_kich_co` datetime DEFAULT NULL,
  `ten_kich_co` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `kichco`
--

INSERT INTO `kichco` (`id_kich_co`, `enabled`, `mo_ta_kich_co`, `ngay_tao_kich_co`, `ten_kich_co`) VALUES
(1, b'1', 'Nhỏ', '2023-07-08 00:00:00', 'Small'),
(2, b'1', 'Vừa', '2023-07-08 00:00:00', 'Medium'),
(3, b'1', 'To', '2023-07-08 00:00:00', 'Large');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mausac`
--

CREATE TABLE `mausac` (
  `id_mau_sac` int(11) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `ten_mau_sac` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mausac`
--

INSERT INTO `mausac` (`id_mau_sac`, `enabled`, `ten_mau_sac`) VALUES
(1, b'1', 'Bạc (Silver)'),
(2, b'1', 'Đen (Black)'),
(3, b'1', 'Vàng (Gold)'),
(4, b'1', 'Xanh (Blue)'),
(5, b'1', 'Nâu (Brown)'),
(6, b'1', 'Trắng (White)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien_chucvu`
--

CREATE TABLE `nhanvien_chucvu` (
  `nhanvien_id` int(11) NOT NULL,
  `chucvu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `id` int(11) NOT NULL,
  `anh` varchar(64) DEFAULT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `gioi_tinh` int(11) DEFAULT NULL,
  `ho` varchar(45) NOT NULL,
  `mat_khau` varchar(255) DEFAULT NULL,
  `mo_ta` varchar(255) DEFAULT NULL,
  `ngay_sinh` varchar(255) DEFAULT NULL,
  `so_dien_thoai` varchar(255) DEFAULT NULL,
  `ten` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhan_vien`
--

INSERT INTO `nhan_vien` (`id`, `anh`, `dia_chi`, `email`, `enabled`, `gioi_tinh`, `ho`, `mat_khau`, `mo_ta`, `ngay_sinh`, `so_dien_thoai`, `ten`) VALUES
(1, NULL, '39 Mỹ Đình', 'baolqph18829@fpt.edu.vn', b'1', 0, 'Lương', '$2a$12$BJ1ABym/gCBDgnDdGtNhkeZmHMtJ59uhr5yR3Qj6/c7PmWKDcjEKK', 'Nhân Viên', '1998-09-29', '0989553729', 'Bảo'),
(2, NULL, '39 Mỹ Đình', 'tamltt9@fpt.edu.vn', b'1', 0, 'Lê', '123456', 'Nhân Viên', '2001-06-06', '0989553721', 'Tam'),
(3, NULL, '39 Mỹ Đình', 'hungtn9@fpt.edu.vn', b'1', 0, 'Tô', '123456', 'Nhân Viên', '2001-06-06', '0989553722', 'Hùng'),
(4, NULL, '39 Mỹ Đình', 'anntph18823@fpt.edu.vn', b'1', 0, 'Trường', '123456', 'Quản lý', '2001-06-06', '0989553723', 'An'),
(5, NULL, '39 Mỹ Đình', 'hoangdv@fpt.edu.vn', b'1', 0, 'Đàm', '123456', 'Quản lý', '2001-06-04', '0989553723', 'Hoàng'),
(6, 'unknown.png', 'Hà Nam ', 'tam@gmail.com', b'1', NULL, 'Thanh', '$2a$12$mMbFWhC1N.MJu5PkDd.p1OO/0fTd22GhWgpp5voD8Erfuv24XuUma', NULL, NULL, '0816134100', 'Tam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_token`
--

CREATE TABLE `password_reset_token` (
  `id` bigint(20) NOT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `id_khach_hang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanhoi`
--

CREATE TABLE `phanhoi` (
  `id_phan_hoi` int(11) NOT NULL,
  `danh_gia` int(11) DEFAULT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL,
  `ngay_sua` datetime DEFAULT NULL,
  `ngay_tao` datetime DEFAULT NULL,
  `noi_dung_phan_hoi` varchar(255) DEFAULT NULL,
  `thoi_gian_phan_hoi` datetime DEFAULT NULL,
  `trang_thai_phan_hoi` int(11) DEFAULT NULL,
  `id_chi_tiet_san_pham` int(11) DEFAULT NULL,
  `id_khach_hang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phanhoi`
--

INSERT INTO `phanhoi` (`id_phan_hoi`, `danh_gia`, `ghi_chu`, `ngay_sua`, `ngay_tao`, `noi_dung_phan_hoi`, `thoi_gian_phan_hoi`, `trang_thai_phan_hoi`, `id_chi_tiet_san_pham`, `id_khach_hang`) VALUES
(1, 5, NULL, NULL, '2023-08-15 13:50:51', 'Sản phẩm tốt', '2023-08-15 13:50:51', 1, 7, 1),
(12, 5, NULL, NULL, '2023-08-19 20:38:13', '', '2023-08-19 20:38:13', 0, 1, 1),
(13, 5, NULL, NULL, '2023-08-22 00:22:14', 'okela', '2023-08-22 00:22:14', 0, 7, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_san_pham` int(11) NOT NULL,
  `ma_san_pham` varchar(255) DEFAULT NULL,
  `main_image` varchar(255) NOT NULL,
  `mo_ta_san_pham` varchar(1500) DEFAULT NULL,
  `ten_san_pham` varchar(255) DEFAULT NULL,
  `trang_thai` int(11) DEFAULT NULL,
  `id_danh_muc` int(11) DEFAULT NULL,
  `id_thuong_hieu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_san_pham`, `ma_san_pham`, `main_image`, `mo_ta_san_pham`, `ten_san_pham`, `trang_thai`, `id_danh_muc`, `id_thuong_hieu`) VALUES
(1, 'AP1', '1.jpg', 'Nhắc đến thương hiệu đồng hồ Audemars Piguet, không ít người nghĩ ngay đến những thiết kế Royal Oak trứ danh với dáng thiết kế bát giác đặc trưng đã gắn liền với thương hiệu từ năm 1972. Và cho đến nay, Royak Oak vẫn luôn là một trong những cái tên được tìm kiếm và khao khát sở hữu bậc nhất đối với giới mộ điệu đồng hồ\r\n\r\nCấu tạo đồng hồ:\r\nĐối với chiếc đồng hồ này, một trong những điều đáng chú ý nhất là đó chính là sắc đen huyền bí xuyên suốt từ mặt số, lớp vỏ cho đến dây đeo đồng hồ. Thương hiệu đã sử dụng chất liệu ceramic đen cho chiếc đồng hồ này, và đây cũng là chiếc đồng hồ đầu tiên dành cho nữ giới được làm từ chất liệu ceramic đen.\r\n\r\nSắc độ và chiều sâu của chất liệu ceramic từ bộ vỏ càng nổi bật hơn khi được kết hợp với các chi tiết bằng thép không gỉ. Tám con ốc hình lục giác giúp cố định phần vỏ đồng hồ cũng được chế tác bằng vàng trắng 18k. Từng thiết kế đều được hoàn thiện tỉ mỉ bằng thủ công. Và kết quả là một ngoại hình không thể bắt mắt và hoàn mỹ hơn.', 'Đồng hồ cơ Audemars Piguet', 1, 1, 1),
(2, 'OM1', '2.jpg', 'Omega là một trong những hãng đồng hồ xa xỉ nổi tiếng hàng đầu thế giới luôn được nhắc tới bởi độ chính xác hoàn hảo.\r\n\r\nChất lượng của sản phẩm Omega được đánh giá dựa trên các yếu tố sau:\r\n\r\nBộ máy\r\nViệc sử dụng bộ máy sản xuất đáp ứng các tiêu chí nghiêm ngặt đạt chuẩn Thụy Sĩ với toàn bộ được sản xuất in house. Omega đã khẳng định vị thế là thương hiệu đứng ở vị trí top đầu trong thế giới mà không một thương hiệu nào có thể làm lu mờ được.', 'Đồng hồ cơ Omega', 1, 1, 2),
(3, 'BP1', '3.jpg', 'Blancpain được xem như một huyền thoại trong thế giới đồng hồ.\r\n\r\nGiới thiệu đồng hồ Blancpain Fifty Fathoms Flyback 5200-0153-B52A\r\nBên cạnh Submariner, dòng Fifty Fathoms của Blancpain cũng đóng vai trò cực kỳ quan trọng trong việc định hình thiết kế đồng hồ lặn. Với sự đặc biệt như vậy, hẳn nhiên thương hiệu Blancpain phải chăm sóc cho đứa con cưng này cực kỳ cẩn thận. Trong đó, việc quan trọng nhất chắc chắn phải là cho ra nhiều thiết kế đặc biệt như chiếc Blancpain Fifty Fathoms Flyback 5200 0153 B52A.\r\n\r\nNhắc tới Fifty Fathoms, người ta thường nghĩ tới một thiết kế đồng hồ lặn cơ bản, có mặt số đen cùng cọc số trắng. Tuy nhiên, mẫu đồng hồ này lại đi ngược lại khuôn mẫu đó. Với phiên bản Blancpain Fifty Fathoms Flyback 5200 0153 B52A, ta có mặt số khói màu xanh lục, đi kèm với cơ chế Fly-Back Chronograph.', 'Đồng hồ cơ Blancpain', 1, 1, 3),
(4, 'RL1', '4.jpg', 'Đồng Hồ Rolex Thụy Sỹ Chính Hãng\r\nRolex một thương hiệu đồng hồ cao cấp bậc nhất ở thế giới hiện nay. Thương hiệu này nổi lên với phiên bản đồng hồ đeo tay chống nước và có độ bền cao, chất liệu tốt. Vậy bạn có biết nguồn gốc của đồng hồ Rolex thế nào, chúng có đặc điểm nổi bật gì và giá thành đắt đỏ không?. Tất cả sẽ được giải đáp chi tiết ở bài viết dưới đây nhé. \r\nĐặc điểm của đồng hồ Rolex\r\nVề thiết kế\r\nBán Rolex nhờ vào thiết kế\r\n\r\nViệc tạo sao bán Rolex đem lại doanh thu lớn là do một phần nhờ vào thiết kế của hãng. Bởi đồng hồ Rolex có thiết kế tinh tế và chất lượng vượt trội. Mặt đồng hồ được làm bằng chất liệu sapphire, các kim chỉ và vạch số được làm bằng vật liệu kim loại quý. Những chi tiết nhỏ trên đồng hồ được chế tác bằng công nghệ cao cấp và hoàn thiện bởi những nghệ nhân tài ba. Đồng hồ Rolex cũng có khả năng chống nước tốt, thích hợp cho những hoạt động dưới nước. Mỗi mẫu đồng hồ Rolex đều có thiết kế riêng biệt và độc đáo, từ mẫu đồng hồ đơn giản đến các mẫu đồng hồ cao cấp. Đồng hồ Rolex đã trở thành biểu tượng của sự sang trọng và đẳng cấp.\r\nVề chế tác\r\nBán Rolex nhờ vào chế tác\r\n\r\nChế tác đồng hồ Rolex là quá trình công phu và tinh tế. Tất cả các chi tiết của đồng hồ được chế tác và lắp ráp bằng tay bởi những nghệ nhân có kinh nghiệm. Việc chế tác đồng hồ Rolex đòi hỏi sự chính xác và tinh tế trong từng chi tiết, từ việc thiết kế mẫu đồng hồ ban đầu, cho đến gia công, lắp ráp và kiểm tra chất lượng.\r\n', 'Đồng hồ cơ Rolex', 1, 1, 4),
(5, 'LG1', '5.jpg', 'Longines mang trong mình sự tinh tế và truyền thống', 'Đồng hồ cơ Longines', 1, 1, 5),
(6, 'OS1', '6.jpg', 'Olympia Star mang trong mình sự tinh tế và truyền thống', 'Đồng hồ cơ Olympia Star', 1, 1, 6),
(7, 'CT1', '7.jpg', 'Citizen nổi bật với tiên phong trong công nghệ đồng hồ', 'Đồng hồ cơ Citizen', 1, 1, 7),
(8, 'SK1', '8.jpg', 'Seiko là biểu tượng của sự đa dạng và chất lượng', 'Đồng hồ cơ Seiko', 1, 1, 8),
(9, 'OG1', 'anhsp1.1.jpg', 'Ogival mang trong mình vẻ đẹp cổ điển và sự tinh tế theo thời gian', 'Đồng hồ cổ điển Ogival', 1, 6, 9),
(10, 'CS1', 'anhsp2.1.jpg', 'Casio mang trong mình sự tinh tế và truyền thống', 'Đồng hồ thông minh Casio', 1, 3, 10),
(11, 'OR1', 'Julius1.jpg', 'Đồng hồ Ogival mang đậm phong cách Pháp', 'Đồng hồ thể thao Ogival', 1, 4, 9),
(12, 'OR2', 'product-09.jpg', 'Đồng hồ Seiko mang đậm phong cách Nhật Bản', 'Đồng hồ thể thao Seiko', 1, 4, 8),
(13, 'OR3', 'product-02.png', 'Đồng hồ Longines mang đậm phong cách Hàn Quốc', 'Đồng hồ thể thao Longines', 1, 4, 5),
(14, 'OR4', 'product-03.png', 'Đồng hồ Orient mang đậm phong cách Singapore', 'Đồng hồ thể thao Orient', 1, 4, 11),
(15, 'CS2', 'product-04.png', 'Thương hiệu đồng hồ Rolex nổi tiếng với sự kết hợp công nghệ tương lai', 'Đồng hồ điện tử Rolex', 1, 2, 4),
(16, 'CS3', 'product-05.png', 'Thương hiệu đồng hồ Casio nổi tiếng với sự kết hợp công nghệ tương lai', 'Đồng hồ điện tử Casio', 1, 2, 10),
(17, 'LG2', 'product-06.jpg', 'Longines mang trong mình sự tinh tế và truyền thống của các quý ông đến từ Thụy Điển', 'Đồng hồ cổ điển Longines', 1, 6, 5),
(18, 'LG3', 'product-07.jpg', 'Longinesmang trong mình sự tinh tế và truyền thống của các quý ông đến từ Thụy Điển', 'Đồng hồ cổ điển Longines', 1, 6, 5),
(19, 'OM2', '9.jpg', 'Một biểu tượng của sự độc quyền và đẳng cấp của Olympia Star', 'Đồng hồ thông minh Olympia Star', 1, 3, 6),
(20, 'OM3', '10.jpg', 'Một biểu tượng của sự độc quyền và đẳng cấp Omega', 'Đồng hồ thông minh Omega', 1, 3, 2),
(21, 'AP2', 'AP1.jpg', 'Rolex là biểu tượng của sự tinh tế và đẳp', 'Đồng hồ thông minh Rolex', 1, 3, 4),
(22, 'OM4', 'Julius2.jpg', 'Olympia Star là một thương hiệu đồng hồ Thụy Sỹ thuộc tập đoàn Olympia Star', 'Đồng hồ điện tử Olympia Star', 1, 2, 6),
(23, 'OM5', '11.jpg', 'Một biểu tượng của sự độc quyền và đẳng cấp của Blancpain ', 'Đồng hồ điện tử Omega', 1, 2, 2),
(24, 'OM6', '12.jpg', 'Một biểu tượng của sự độc quyền và đẳng cấp', 'Đồng hồ cơ Casio', 1, 1, 10),
(25, 'LG4', 'LG2.1.png', 'Blancpain mang trong mình sự tinh tế và truyền thống', 'Đồng hồ cổ điển Blancpain', 1, 6, 3),
(26, 'LG5', 'LG3.jpg', 'Longines mang trong mình sự tinh tế và truyền thống', 'Đồng hồ định vị Longines', 1, 5, 5),
(27, 'LG6', 'LG4.jpg', 'Audemars Piguet mang trong mình sự tinh tế và truyền thống', 'Đồng hồ định vị Audemars Piguet', 1, 5, 1),
(28, 'LG7', 'LG5.1.jpg', 'Blancpain mang trong mình sự tinh tế và truyền thống', 'Đồng hồ định vị Blancpain', 1, 5, 3),
(29, 'LG8', 'LG6.1.jpg', 'Citizen mang trong mình sự tinh tế và truyền thống', 'Đồng hồ định vị Citizen', 1, 5, 7),
(30, 'LG9', 'LG7.1.jpg', 'Ogival mang trong mình sự tinh tế và truyền thống', 'Đồng hồ định vị Ogival', 1, 5, 9),
(31, 'LG10', 'SK2.1.jpg', 'Rolex là thương hiệu vươn tầm quốc tế, chất lượng sản phẩm luôn đi đầu ', 'Đồng hồ đẳng cấp VIP', 1, 3, 4),
(32, 'LG11', '', 'Blancpain là thương hiệu vươn tầm quốc tế, chất lượng sản phẩm luôn đi đầu ', 'Đồng hồ định vị Blancpain  Pro', 1, 5, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seri`
--

CREATE TABLE `seri` (
  `id_seri` int(11) NOT NULL,
  `id_imei` varchar(255) DEFAULT NULL,
  `ngay_ban` datetime DEFAULT NULL,
  `ngay_nhap` datetime DEFAULT NULL,
  `trang_thai` int(11) DEFAULT NULL,
  `id_chi_tiet_san_pham` int(11) DEFAULT NULL,
  `id_hoa_don_chi_tiet` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `seri`
--

INSERT INTO `seri` (`id_seri`, `id_imei`, `ngay_ban`, `ngay_nhap`, `trang_thai`, `id_chi_tiet_san_pham`, `id_hoa_don_chi_tiet`) VALUES
(1, 'Imei2023081401', '2023-08-01 21:34:51', '2023-06-07 21:37:59', 3, 1, 5),
(5, 'Imei2023081405', '2023-08-20 20:33:37', '2023-08-14 21:37:59', 1, 1, NULL),
(6, 'Imei2023081406', '2023-08-20 22:56:29', '2023-08-14 21:37:59', 1, 1, NULL),
(7, 'Imei2023081407', '2023-08-21 00:55:00', '2023-08-14 21:37:59', 1, 1, NULL),
(8, 'Imei2023081408', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(9, 'Imei2023081409', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(10, 'Imei2023081410', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(11, 'Imei2023081411', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(12, 'Imei2023081412', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(13, 'Imei2023081413', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(14, 'Imei2023081414', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(15, 'Imei2023081415', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(16, 'Imei2023081416', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(17, 'Imei2023081417', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(18, 'Imei2023081418', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(19, 'Imei2023081419', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(20, 'Imei2023081420', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(21, 'Imei2023081421', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(22, 'Imei2023081422', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(23, 'Imei2023081423', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(24, 'Imei2023081424', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(25, 'Imei2023081425', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(26, 'Imei2023081426', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(27, 'Imei2023081427', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(28, 'Imei2023081428', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(29, 'Imei2023081429', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(30, 'Imei2023081430', NULL, '2023-08-14 21:37:59', 1, 1, NULL),
(31, '70fb1772-3ab7-11ee-be56-0242ac120002', '2023-08-20 21:07:12', '2023-08-14 22:31:34', 1, 2, NULL),
(32, '70fb1b64-3ab7-11ee-be56-0242ac120002', NULL, '2023-08-14 22:31:35', 1, 2, NULL),
(33, '70fb1d3a-3ab7-11ee-be56-0242ac120002', NULL, '2023-08-14 22:31:35', 1, 2, NULL),
(34, '70fb1eca-3ab7-11ee-be56-0242ac120002', NULL, '2023-08-14 22:31:35', 1, 2, NULL),
(35, '70fb2992-3ab7-11ee-be56-0242ac120002', NULL, '2023-08-14 22:31:35', 1, 2, NULL),
(36, '70fb2cb2-3ab7-11ee-be56-0242ac120002', NULL, '2023-08-14 22:31:35', 1, 2, NULL),
(37, '70fb2eb0-3ab7-11ee-be56-0242ac120002', NULL, '2023-08-14 22:31:35', 1, 2, NULL),
(38, '70fb3054-3ab7-11ee-be56-0242ac120002', NULL, '2023-08-14 22:31:35', 1, 2, NULL),
(39, '70fb31e4-3ab7-11ee-be56-0242ac120002', NULL, '2023-08-14 22:31:35', 1, 2, NULL),
(40, '70fb337e-3ab7-11ee-be56-0242ac120002', NULL, '2023-08-14 22:31:35', 1, 2, NULL),
(41, '70fb4378-3ab7-11ee-be56-0242ac120002', NULL, '2023-08-14 22:31:35', 1, 2, NULL),
(42, '70fb4580-3ab7-11ee-be56-0242ac120002', NULL, '2023-08-14 22:31:35', 1, 2, NULL),
(43, 'e8106a8e-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:04', 1, 3, NULL),
(44, 'e8106d4a-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:04', 1, 3, NULL),
(45, 'e8106ee4-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:04', 1, 3, NULL),
(46, 'e810711e-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:04', 1, 3, NULL),
(47, 'e81074d4-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:04', 1, 3, NULL),
(48, 'e810761e-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:04', 1, 3, NULL),
(49, 'e8107740-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(50, 'e8107862-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(51, 'e810797a-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(52, 'e8107a88-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(53, 'e8107b96-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(54, 'e8107fe2-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(55, 'e810810e-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(56, 'e8108226-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(57, 'e81083ac-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(58, 'e81084d8-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(59, 'e81085fa-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(60, 'e8108712-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(61, 'e8108ac8-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(62, 'e8108c08-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(63, 'e8108dca-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(64, 'e8108f28-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(65, 'e810904a-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(66, 'e81091d0-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(67, 'e8109310-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(68, 'e810964e-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(69, 'e8109784-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(70, 'e810989c-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(71, 'e81099aa-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(72, 'e8109b58-3b38-11ee-be56-0242ac120002', NULL, '2023-08-15 14:00:05', 1, 3, NULL),
(73, 'c49ef727-ba2a-4f9b-a106-d938b51207d4', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(74, '05c1c96e-5d56-4164-b15b-faddee187b50', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(75, '69024c89-7506-496a-8ca5-ba0f10bf6c88', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(76, '86110efc-0ce0-4b55-b59a-2368c15532a4', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(77, 'ee28d8fa-24ca-4bb1-994b-2ef83c08f33e', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(78, '432ede4e-6c5c-4104-a4bc-34699bfdeab2', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(79, 'c6ee1436-0b32-4967-a640-5a4843c814cb', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(80, '2d8c0c66-1e31-4321-a47f-a912a4927820', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(81, '1ac25ca8-a85b-4d2c-8991-36e39288682e', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(82, 'beea6a40-5c54-41a9-bdfc-26abc88ab819', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(83, 'ef9164e3-9e75-42d6-b3fb-b5d2dfc33357', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(84, '240380a0-420a-4d52-80f8-3d0d213a19e6', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(85, 'd5374e1d-468c-46f1-9808-bf8f84146c71', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(86, '73d2bf06-fa87-42c4-9c97-8486cd1efc72', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(87, '221fad4e-f4ce-44e5-904f-1056b0079b7c', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(88, '55828508-089c-44af-bf5b-ae9a4d3a56ea', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(89, '11c11eec-7970-4cf1-aa42-1663121a5708', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(90, '99150792-7d2f-4901-b841-c62284a02bbc', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(91, '5cdb1464-4f6c-4780-8026-8dca79b997e9', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(92, '310cce05-d935-484f-a596-19b4bd4c6423', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(93, '0087fd59-1126-47a7-97d8-c519d773f3ef', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(94, '5d735d57-12e6-4dae-bf0a-8e21453f4b59', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(95, '840b4194-0e8c-47fa-9d11-28c9b5a1b4df', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(96, '76a8b39a-e8e2-4f0c-841d-81495f0e3bfa', NULL, '2023-08-15 14:06:33', 1, 4, NULL),
(97, 'f91dac15-09ee-431b-a02d-fb258327dcb0', '2023-08-21 01:13:51', '2023-08-15 14:08:01', 1, 5, NULL),
(98, '68c314bc-96dc-4041-a482-84c0d401a04a', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(99, '9b54f25b-cf87-4398-8954-db5d738c7cc8', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(100, '555bca09-924c-4f33-9aac-49e2547e6a79', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(101, '87e1ad2b-76d6-426c-8ae7-05bd5b44b720', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(102, '3559ab41-952a-4433-8449-2582bbce7751', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(103, 'cf0f5831-96e7-4536-ba56-a396e274fda4', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(104, '6f61e1d8-708c-4153-9a86-befbab86179b', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(105, 'd334e50a-21db-4c03-88d5-0f71b1457f24', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(106, 'bdefc475-24b9-4f3f-b015-3c21d3559704', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(107, 'e2d15598-0661-4f73-ad12-87f29529f5e7', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(108, 'f8e875af-65f2-46c3-ac3b-8886b9107a5c', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(109, 'bce1621a-b6c5-476e-8c88-bfe97d619e93', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(110, '52f07826-e19a-4321-b9b8-5c0ae471faba', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(111, 'fe78be16-7728-4661-aeec-52124fd26289', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(112, '4d27d6c3-f020-4d6b-ada5-6f2c6e3d52b3', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(113, '756ae4e9-0bc1-47e1-92f7-79dc7591e500', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(114, '4103c581-5a7b-49a4-88e1-06878c0f9074', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(115, 'dcbfa670-0860-4224-8874-533dc8a2075e', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(116, 'b1d91aca-645f-40ff-9d06-98c86d24e286', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(117, 'db241d95-0123-4eba-a713-ef519b07b938', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(118, '3b74c4f3-b9c6-4b02-a8db-1d378f49c569', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(119, 'de39440e-bbc2-4170-8421-ceaf28697180', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(120, '5ebf7140-0766-4bb7-ae13-314ad2b9e758', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(121, 'd755fabf-11b6-4098-a846-3666f8598654', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(122, '7d82bf78-b5c4-440f-b5eb-7761d971cb2f', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(123, 'ff9b8868-03b6-4d56-96ce-d95775e87627', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(124, '15708d10-21dc-42be-8dee-f2424bfc74fe', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(125, '1b1493cf-fe5b-4202-8c8f-42751fde1c04', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(126, '640d1081-9cae-4496-a949-a397e4f24ef1', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(127, '2f2f7a88-1013-45c5-94a9-346018bd96c0', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(128, '1abc4fea-3b3a-48f4-a7d6-6d0c51c61a07', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(129, '412a6a97-9bcc-484f-bf35-a28c1bdbda14', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(130, '9bf19545-3f42-45ba-8f58-360b5fde10b1', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(131, 'e599dd1e-285f-4262-8e08-e1c3b8aabbba', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(132, 'cef07502-7ec3-4416-aa4f-bd7fe9e6006d', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(133, 'bd1081fd-7373-414d-a3df-da4de7d3a0f1', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(134, '12acac54-d417-42f7-8338-066c56b23610', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(135, '82176802-5464-4358-a5f8-6963fdbc196f', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(136, '6d6097d8-6230-4c6b-a384-a36b8d129b56', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(137, 'b003e87b-096c-4405-b38c-3bbfdaf4326b', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(138, '71072ede-6395-425c-a044-754dc4468fb8', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(139, '79a54357-9984-426c-b10e-09262025ba8a', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(140, 'f9060a1c-1ea7-456d-9348-bdd813836e2e', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(141, 'e01c3ec8-7624-4b54-b8cc-d55aa54617c6', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(142, '9ab3903f-1ac6-4ae6-b7d2-b6085459597d', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(143, '38d6af62-6ee7-432a-a18d-860b1f5f4076', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(144, '69e96636-3040-4481-ab83-8ec5bdff790b', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(145, '28b92e8b-c04e-454d-9eeb-58dc8cf832ae', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(146, '3be8ddc4-444e-40f8-af77-dec194ab3418', NULL, '2023-08-15 14:08:01', 1, 5, NULL),
(147, '953b8e9a-3b3a-11ee-be56-0242ac120002', '2023-08-23 00:38:43', '2023-08-15 14:09:49', 3, 6, 32),
(148, '953b9156-3b3a-11ee-be56-0242ac120002', NULL, '2023-08-15 14:09:49', 1, 6, NULL),
(149, '953b928c-3b3a-11ee-be56-0242ac120002', NULL, '2023-08-15 14:09:49', 1, 6, NULL),
(150, '953b93c2-3b3a-11ee-be56-0242ac120002', NULL, '2023-08-15 14:09:49', 1, 6, NULL),
(151, '953b94ee-3b3a-11ee-be56-0242ac120002', NULL, '2023-08-15 14:09:49', 1, 6, NULL),
(152, '953b9606-3b3a-11ee-be56-0242ac120002', NULL, '2023-08-15 14:09:49', 1, 6, NULL),
(153, '953b9732-3b3a-11ee-be56-0242ac120002', NULL, '2023-08-15 14:09:49', 1, 6, NULL),
(154, '953b98b8-3b3a-11ee-be56-0242ac120002', NULL, '2023-08-15 14:09:49', 1, 6, NULL),
(155, '953b9cbe-3b3a-11ee-be56-0242ac120002', NULL, '2023-08-15 14:09:49', 1, 6, NULL),
(156, '953b9df4-3b3a-11ee-be56-0242ac120002', NULL, '2023-08-15 14:09:49', 1, 6, NULL),
(157, '953b9f0c-3b3a-11ee-be56-0242ac120002', NULL, '2023-08-15 14:09:49', 1, 6, NULL),
(158, '953ba024-3b3a-11ee-be56-0242ac120002', NULL, '2023-08-15 14:09:49', 1, 6, NULL),
(159, '953ba150-3b3a-11ee-be56-0242ac120002', NULL, '2023-08-15 14:09:49', 1, 6, NULL),
(160, '953ba268-3b3a-11ee-be56-0242ac120002', NULL, '2023-08-15 14:09:49', 1, 6, NULL),
(161, '953ba38a-3b3a-11ee-be56-0242ac120002', NULL, '2023-08-15 14:09:49', 1, 6, NULL),
(162, '953ba524-3b3a-11ee-be56-0242ac120002', NULL, '2023-08-15 14:09:49', 1, 6, NULL),
(163, '7e6122cb-b627-4512-a1e1-5c9f4b98348e', '2023-08-01 21:34:51', '2023-06-06 14:11:43', 3, 7, 3),
(164, 'ae14ee15-db03-43f4-8ba9-30a1e2309daf', '2023-08-01 21:34:51', '2023-05-16 14:11:43', 3, 7, 3),
(165, '1e554bc6-f5e0-4639-89ee-99c6425d2054', NULL, '2023-08-15 14:11:43', 1, 7, NULL),
(166, '097381cc-19c0-4d01-88e4-be30de37ddcd', NULL, '2023-08-15 14:11:43', 1, 7, NULL),
(167, '63b2a6fe-0475-4634-b3f5-a7f70e59195f', '2023-08-22 00:21:40', '2023-08-15 14:11:43', 3, 7, NULL),
(168, 'c0c7dc90-313c-44cf-b09e-235fac234db8', '2023-08-22 00:21:40', '2023-08-15 14:11:43', 3, 7, NULL),
(169, '0194fe17-8822-4966-b9cb-2b114a795805', NULL, '2023-08-15 14:11:43', 1, 7, NULL),
(170, 'f1685001-e1c3-4e0a-a114-f39dff89c1d2', NULL, '2023-08-15 14:11:43', 1, 7, NULL),
(171, '41546b04-f7a1-40b4-8dc9-ad26ae70ad2f', NULL, '2023-08-15 14:11:43', 1, 7, NULL),
(172, '3890c38f-4782-465c-81ec-b76d7bf2d3a8', NULL, '2023-08-15 14:11:43', 1, 7, NULL),
(173, '149c77ee-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:13:53', 1, 8, NULL),
(174, '149c7f28-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:13:53', 1, 8, NULL),
(175, '149c8090-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:13:53', 1, 8, NULL),
(176, '149c81b2-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:13:53', 1, 8, NULL),
(177, '149c82d4-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:13:53', 1, 8, NULL),
(178, '149c83f6-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:13:53', 1, 8, NULL),
(179, '149c8504-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:13:53', 1, 8, NULL),
(180, '149c8612-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:13:53', 1, 8, NULL),
(181, '149c88ec-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:13:53', 1, 8, NULL),
(182, '149c8a04-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:13:53', 1, 8, NULL),
(183, '149c8b1c-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:13:53', 1, 8, NULL),
(184, '149c8c34-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:13:53', 1, 8, NULL),
(185, 'bb7488ea-8973-4c44-8411-42e08a6fdd54', NULL, '2023-08-15 14:15:13', 1, 9, NULL),
(186, 'fb6fc4f5-a0f6-451d-ae46-83b7128f1465', NULL, '2023-08-15 14:15:13', 1, 9, NULL),
(187, '525d2235-3da1-482d-9a64-f048fbcea638', NULL, '2023-08-15 14:15:13', 1, 9, NULL),
(188, 'b759e080-dce6-4550-9e23-f6d09e7a9185', NULL, '2023-08-15 14:15:13', 1, 9, NULL),
(189, '45615538-d01a-4f4a-bf84-afa99cba69ad', NULL, '2023-08-15 14:15:13', 1, 9, NULL),
(190, '0b042dd8-1839-44e7-b11a-07c9d0823b16', NULL, '2023-08-15 14:15:13', 1, 9, NULL),
(191, '73d5baef-7d39-40e0-acb3-7fb5d24031ce', NULL, '2023-08-15 14:15:13', 1, 9, NULL),
(192, '7bdd5323-9c0d-4d3e-b3a0-9590adc0a9a0', NULL, '2023-08-15 14:15:13', 1, 9, NULL),
(193, '767be014-e9ad-4667-aec0-102f3a0eaf99', NULL, '2023-08-15 14:15:13', 1, 9, NULL),
(194, 'cd9b7722-f0e4-413e-afb6-e21900b2f1fd', NULL, '2023-08-15 14:15:13', 1, 9, NULL),
(195, '11944051-dbf4-44ae-922c-8025ee99081b', NULL, '2023-08-15 14:15:13', 1, 9, NULL),
(196, '19262c79-f740-4399-880b-9b11aebfbec0', NULL, '2023-08-15 14:15:13', 1, 9, NULL),
(197, '8883a0ce-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:17:06', 1, 10, NULL),
(198, '8883a3da-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:17:06', 1, 10, NULL),
(199, '8883a7f4-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:17:06', 1, 10, NULL),
(200, '8883a920-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:17:06', 1, 10, NULL),
(201, '8883aa42-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:17:06', 1, 10, NULL),
(202, '8883ab96-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:17:06', 1, 10, NULL),
(203, '8883ad30-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:17:06', 1, 10, NULL),
(204, '8883ae7a-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:17:06', 1, 10, NULL),
(205, '8883af92-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:17:06', 1, 10, NULL),
(206, '8883b3f2-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:17:06', 1, 10, NULL),
(207, '8883b53c-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:17:06', 1, 10, NULL),
(208, '8883b744-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:17:06', 1, 10, NULL),
(209, '8883b8e8-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:17:06', 1, 10, NULL),
(210, '8883ba46-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:17:06', 1, 10, NULL),
(211, '8883bbae-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:17:06', 1, 10, NULL),
(212, '8883bd16-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:17:06', 1, 10, NULL),
(213, '8883be88-3b3b-11ee-be56-0242ac120002', NULL, '2023-08-15 14:17:06', 1, 10, NULL),
(214, '48dc7bef-3c86-4821-b30b-c4de4e073f40', NULL, '2023-08-15 14:22:43', 1, 11, NULL),
(215, 'f3720f42-d6f1-4f13-9987-cbd077a63fdf', NULL, '2023-08-15 14:22:43', 1, 11, NULL),
(216, '711ec629-d2ed-45d9-aec0-d324226f42c1', NULL, '2023-08-15 14:22:43', 1, 11, NULL),
(217, 'c7d4aa6f-ee24-4ba1-b3c3-f54983535e02', NULL, '2023-08-15 14:22:43', 1, 11, NULL),
(218, 'd3f6c6b9-8a10-4675-8795-495815d9bd46', NULL, '2023-08-15 14:22:43', 1, 11, NULL),
(219, '22294893-0662-48df-ad21-12bed201818f', NULL, '2023-08-15 14:22:43', 1, 11, NULL),
(220, '887b412f-b747-48c7-9a49-80104531125c', NULL, '2023-08-15 14:22:43', 1, 11, NULL),
(221, 'bf622de3-cd85-4930-ab7f-baaff08f16b3', NULL, '2023-08-15 14:22:43', 1, 11, NULL),
(222, '79ae5b83-d02b-47f5-8107-5d0c85c35298', NULL, '2023-08-15 14:22:43', 1, 11, NULL),
(223, '9d25b9f8-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:23:52', 1, 12, NULL),
(224, '9d25bc82-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:23:52', 1, 12, NULL),
(225, '9d25bdc2-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:23:52', 1, 12, NULL),
(226, '9d25beee-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:23:52', 1, 12, NULL),
(227, '9d25c006-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:23:52', 1, 12, NULL),
(228, '9d25c420-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:23:52', 1, 12, NULL),
(229, '9d25c556-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:23:52', 1, 12, NULL),
(230, '9d25c664-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:23:52', 1, 12, NULL),
(231, '9d25c786-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:23:52', 1, 12, NULL),
(232, '9d25c89e-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:23:52', 1, 12, NULL),
(233, '9d25c9d4-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:23:52', 1, 12, NULL),
(234, '9d25cae2-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:23:52', 1, 12, NULL),
(235, '9d25cbfa-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:23:52', 1, 12, NULL),
(236, '9d25cf88-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:23:52', 1, 12, NULL),
(237, '9d25d0aa-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:23:52', 1, 12, NULL),
(238, '9d25d1c2-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:23:52', 1, 12, NULL),
(239, '9d25d2da-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:23:52', 1, 12, NULL),
(240, '9d25d3e8-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:23:52', 1, 12, NULL),
(241, '05c4b3d7-edcf-4478-a136-52c0f449a975', NULL, '2023-08-15 14:25:07', 1, 13, NULL),
(242, 'f10a7977-1e3b-49c1-93d2-9685a1ecf111', NULL, '2023-08-15 14:25:07', 1, 13, NULL),
(243, '96303cf1-a954-4a80-a97c-b328e83eafb7', NULL, '2023-08-15 14:25:07', 1, 13, NULL),
(244, '997a9ac0-9441-413e-b803-6a9317cea064', NULL, '2023-08-15 14:25:07', 1, 13, NULL),
(245, 'cd2f8f54-c218-42b2-ae41-e266a7009f22', NULL, '2023-08-15 14:25:07', 1, 13, NULL),
(246, '06efa78a-9f40-4c2b-ad97-a724ad80a706', NULL, '2023-08-15 14:25:07', 1, 13, NULL),
(247, '62c97c5f-caf1-40f1-b890-e443adef755c', NULL, '2023-08-15 14:25:07', 1, 13, NULL),
(248, '93a817f5-ce77-4d4a-aa51-26ce0b807661', NULL, '2023-08-15 14:25:07', 1, 13, NULL),
(249, '88b5f8ce-b527-49ee-af63-3ff4e0e70ba8', NULL, '2023-08-15 14:25:07', 1, 13, NULL),
(250, '15665937-a5d9-41ed-90eb-15f06f7d770c', NULL, '2023-08-15 14:25:07', 1, 13, NULL),
(251, '41bb3f07-705a-4f32-b1af-cdf85d055bdb', NULL, '2023-08-15 14:25:07', 1, 13, NULL),
(252, '275d8e6a-10aa-4362-8930-eba0f57bcc63', NULL, '2023-08-15 14:25:07', 1, 13, NULL),
(253, 'bb470a8f-d555-4812-ba17-88113444fe8c', NULL, '2023-08-15 14:25:07', 1, 13, NULL),
(254, '2ae58d76-6daf-4c03-b4ea-f1144602baec', NULL, '2023-08-15 14:25:07', 1, 13, NULL),
(255, '1fd25b4b-3132-4bb9-a38b-a9bec9738d02', NULL, '2023-08-15 14:25:07', 1, 13, NULL),
(256, 'be1b9c23-a8af-4f09-92c7-38614dff3a1f', NULL, '2023-08-15 14:25:08', 1, 13, NULL),
(257, '1706803d-b8a5-4825-afb7-399301c6ef45', NULL, '2023-08-15 14:25:08', 1, 13, NULL),
(258, '9706654c-1208-4c30-8d7f-54446c32c61f', NULL, '2023-08-15 14:25:08', 1, 13, NULL),
(259, 'b5170008-6af1-45a6-a8e9-657a47225aba', NULL, '2023-08-15 14:25:08', 1, 13, NULL),
(260, '30f90da9-e223-46f4-943e-ba67dbc87bec', NULL, '2023-08-15 14:25:08', 1, 13, NULL),
(261, '2b4b69af-94f5-43b8-9a2b-8cdb8b7ca536', NULL, '2023-08-15 14:25:08', 1, 13, NULL),
(262, '620bd165-0551-478a-9e7e-dd1cb1ab06b8', NULL, '2023-08-15 14:25:08', 1, 13, NULL),
(263, '71547682-b06b-47d6-a7a8-b45b3762722c', NULL, '2023-08-15 14:25:08', 1, 13, NULL),
(264, '1f650370-6479-4ab7-8633-85f60e1a1733', NULL, '2023-08-15 14:25:08', 1, 13, NULL),
(265, '9970513b-e02c-4fcf-9719-6a36fd1b4d2a', NULL, '2023-08-15 14:25:08', 1, 13, NULL),
(266, '552a914b-5588-465e-bc09-77af4d788745', NULL, '2023-08-15 14:25:08', 1, 13, NULL),
(267, 'f249aec6-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(268, 'f249b51a-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(269, 'f249b6be-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(270, 'f249b830-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(271, 'f249b9fc-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(272, 'f249bbd2-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(273, 'f249bd4e-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(274, 'f249beb6-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(275, 'f249c028-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(276, 'f249c640-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(277, 'f249c852-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(278, 'f249c9ba-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(279, 'f249caf0-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(280, 'f249cc12-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(281, 'f249cd34-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(282, 'f249ce60-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(283, 'f249cfa0-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(284, 'f249d324-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(285, 'f249d4e6-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(286, 'f249d630-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(287, 'f249d75c-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(288, 'f249d874-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(289, 'f249d996-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(290, 'f249daae-3b3c-11ee-be56-0242ac120002', NULL, '2023-08-15 14:26:38', 1, 14, NULL),
(291, 'b627665a-197e-4cc0-b779-38dc0d9c2429', '2023-08-01 21:34:51', '2023-08-15 14:27:40', 3, 15, 6),
(292, 'fb56c058-9793-4ed2-997d-dad441013648', NULL, '2023-08-15 14:27:40', 1, 15, NULL),
(293, 'f175fc2c-3a22-4ce5-9487-f7de172fd0b9', NULL, '2023-08-15 14:27:40', 1, 15, NULL),
(294, '102c7ed9-43b9-4580-9f7e-a64676cc6e96', NULL, '2023-08-15 14:27:40', 1, 15, NULL),
(295, 'f8cb84b1-037f-42e5-beeb-37de3d1207f3', NULL, '2023-08-15 14:27:40', 1, 15, NULL),
(296, '8c09262c-da18-42f0-8d13-5b62f823923d', NULL, '2023-08-15 14:27:40', 1, 15, NULL),
(297, '3998cd0d-eac8-468f-a147-d80396661ea4', NULL, '2023-08-15 14:27:40', 1, 15, NULL),
(298, '55b1fa15-e87d-4bff-87ed-f7eeecf4e660', NULL, '2023-08-15 14:27:40', 1, 15, NULL),
(299, '048f06e8-7f83-48b9-9925-31ad116467ef', NULL, '2023-08-15 14:27:40', 1, 15, NULL),
(300, '571e70cb-6b75-480f-a48c-187bbd73579e', NULL, '2023-08-15 14:27:40', 1, 15, NULL),
(301, 'e6ef81a8-415a-4d3c-a8f4-170964ced82a', NULL, '2023-08-15 14:27:40', 1, 15, NULL),
(302, '1d5874a5-4dcb-42df-8f53-57498c2a4662', NULL, '2023-08-15 14:27:40', 1, 15, NULL),
(303, '8293af39-497b-4134-bb42-85515c80872b', NULL, '2023-08-15 14:27:40', 1, 15, NULL),
(304, '597f861a-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:29:09', 1, 16, NULL),
(305, '597f885e-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:29:09', 1, 16, NULL),
(306, '597f8962-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:29:09', 1, 16, NULL),
(307, '597f8a3e-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:29:09', 1, 16, NULL),
(308, '597f8da4-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:29:09', 1, 16, NULL),
(309, '597f8ebc-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:29:09', 1, 16, NULL),
(310, '597f8fc0-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:29:09', 1, 16, NULL),
(311, '597f90ce-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:29:09', 1, 16, NULL),
(312, '597f91d2-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:29:09', 1, 16, NULL),
(313, '597f92d6-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:29:09', 1, 16, NULL),
(314, '597f93ee-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:29:09', 1, 16, NULL),
(315, '597f9524-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:29:09', 1, 16, NULL),
(316, '597f986c-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:29:09', 1, 16, NULL),
(317, '597f9984-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:29:09', 1, 16, NULL),
(318, 'e6dd7042-d877-49bf-9e4d-07b3b0869b3d', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(319, '718e2fd1-9fa5-476c-b95c-1fe811cf150e', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(320, '4b13157f-dbc1-4b4e-9d91-6f00080ca86a', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(321, 'd1fb1a37-19b2-4b62-802f-30dfa1f5185c', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(322, 'f57e31a2-2ec0-4ccf-b861-75dc2e4a223e', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(323, '3b1a4e75-46b5-4869-8952-423e059deaeb', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(324, '7853d39f-7dcc-4e46-8a2f-a36f219f3cc9', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(325, '08630782-8ff8-41ee-a2d8-b9ab60429df7', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(326, '775b2131-a209-43f7-a497-6bf05d5278d5', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(327, 'ec1c1117-3ba4-4fac-ae3e-3f0b77205738', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(328, '7a01066d-74fe-436a-b753-791933666839', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(329, '07ebf35f-43de-4f78-9208-98829f8ef92c', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(330, 'd32cc58e-03cb-4787-ad35-ddb49eafc4bf', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(331, 'e4158b91-212f-45ea-a393-1b680cda0fdd', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(332, '962e7cb4-0145-4881-8cfe-3a5b466fbdd3', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(333, '6c793a66-01f2-4698-b1d2-7dced35628f1', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(334, '54bd4dd0-05bb-4bbb-927b-c6a422ee0be8', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(335, '63bdad28-91d6-47dd-a3ba-820bfc715ec9', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(336, '05d090fa-64cc-4a70-bddd-423589ffd37c', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(337, 'e7ccab8b-d303-47ae-bf67-a7ada7ba4c39', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(338, '2efdc632-6045-40a7-a8ac-1037e0ebddc1', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(339, '8147174f-3fcd-4d67-a14d-ffea143ccd52', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(340, '7bc1b01c-53fd-4338-8eca-ca127d15f000', NULL, '2023-08-15 14:30:06', 1, 17, NULL),
(341, 'a165afae-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:31:01', 1, 18, NULL),
(342, 'a165b260-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:31:01', 1, 18, NULL),
(343, 'a165b3a0-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:31:01', 1, 18, NULL),
(344, 'a165b4cc-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:31:01', 1, 18, NULL),
(345, 'a165ba80-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:31:01', 1, 18, NULL),
(346, 'a165bbf2-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:31:01', 1, 18, NULL),
(347, 'a165bd28-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:31:01', 1, 18, NULL),
(348, 'a165be40-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:31:01', 1, 18, NULL),
(349, 'a165bf62-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:31:01', 1, 18, NULL),
(350, 'a165c084-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:31:01', 1, 18, NULL),
(351, 'a165c19c-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:31:01', 1, 18, NULL),
(352, 'a165c598-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:31:01', 1, 18, NULL),
(353, 'a165c6d8-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:31:01', 1, 18, NULL),
(354, 'a165c7fa-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:31:01', 1, 18, NULL),
(355, 'a165c91c-3b3d-11ee-be56-0242ac120002', NULL, '2023-08-15 14:31:01', 1, 18, NULL),
(356, '0429a14f-7431-4d5c-873c-12ba4120cf30', NULL, '2023-08-15 14:32:20', 1, 19, NULL),
(357, '590c3d09-11e4-4b0a-98d9-91cd6a2a4860', NULL, '2023-08-15 14:32:20', 1, 19, NULL),
(358, 'a7a87b7b-4abf-4712-9bd1-66344bc37fc7', NULL, '2023-08-15 14:32:20', 1, 19, NULL),
(359, '0ca25ee4-9745-49fa-a3cb-784b24826268', NULL, '2023-08-15 14:32:20', 1, 19, NULL),
(360, 'e31cd22e-09b8-4e92-843d-b37129ea1b73', NULL, '2023-08-15 14:32:20', 1, 19, NULL),
(361, '2255e3fe-16cb-43ca-917f-20b63e4b6386', NULL, '2023-08-15 14:32:20', 1, 19, NULL),
(362, 'ff484213-b201-4cf2-b6d2-1daf31bc3fce', NULL, '2023-08-15 14:32:20', 1, 19, NULL),
(363, 'df554552-418b-485d-bb9d-dd0afdab7137', NULL, '2023-08-15 14:32:20', 1, 19, NULL),
(364, '12793289-4cf9-440b-8145-1e74ca1fcf42', NULL, '2023-08-15 14:32:20', 1, 19, NULL),
(365, 'c007cd37-a2c3-4bfc-a21e-0138e7a2ec0a', NULL, '2023-08-15 14:32:20', 1, 19, NULL),
(366, 'a06ce5b0-cf50-47c0-aea6-08a7bac2a081', NULL, '2023-08-15 14:32:20', 1, 19, NULL),
(367, '0137322c-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:33:42', 1, 20, NULL),
(368, '0137352e-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:33:42', 1, 20, NULL),
(369, '0137366e-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:33:42', 1, 20, NULL),
(370, '013737ae-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:33:42', 1, 20, NULL),
(371, '013738da-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:33:42', 1, 20, NULL),
(372, '01373a10-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:33:42', 1, 20, NULL),
(373, '01373baa-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:33:42', 1, 20, NULL),
(374, '21423e9c-61a4-437d-8c4a-4c9219c568d3', '2023-08-01 21:34:51', '2023-05-01 14:34:34', 3, 21, 7),
(375, 'd58894c8-eb35-4da8-9b0d-7f9f084f6b35', NULL, '2023-08-15 14:34:34', 1, 21, NULL),
(376, '6a374918-c386-438e-8cba-0408107c73ea', NULL, '2023-08-15 14:34:34', 1, 21, NULL),
(377, '87f717ba-8a7c-48ec-86f5-bd5b698d55d6', NULL, '2023-08-15 14:34:34', 1, 21, NULL),
(378, '41e9faa4-6512-485c-93f2-9ec65e633c10', NULL, '2023-08-15 14:34:34', 1, 21, NULL),
(379, '0b19d8ed-6447-4af3-ade9-230f6626c3d5', NULL, '2023-08-15 14:34:34', 1, 21, NULL),
(380, '2b9cee9a-10e2-4abf-9b5f-f2295ecbf64a', NULL, '2023-08-15 14:34:34', 1, 21, NULL),
(381, '2449672d-ea8a-47aa-89a4-72fa193cfd63', NULL, '2023-08-15 14:34:34', 1, 21, NULL),
(382, '3e8f78a0-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:35:28', 1, 22, NULL),
(383, '3e8f7bde-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:35:28', 1, 22, NULL),
(384, '3e8f7d6e-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:35:28', 1, 22, NULL),
(385, '3e8f820a-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:35:28', 1, 22, NULL),
(386, '3e8f8412-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:35:28', 1, 22, NULL),
(387, '3e8f85f2-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:35:28', 1, 22, NULL),
(388, '3e8f8796-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:35:28', 1, 22, NULL),
(389, '3e8f894e-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:35:28', 1, 22, NULL),
(390, '3e8f8afc-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:35:28', 1, 22, NULL),
(391, 'de654d7b-0120-45fc-a69a-ad56555f5235', NULL, '2023-08-15 14:36:22', 2, 23, 4),
(392, '6656de5f-550a-4261-b2d2-73404b6d074c', NULL, '2023-08-15 14:36:22', 1, 23, NULL),
(393, '48fa96ef-6c7c-4ec7-a3af-19ac45bff4a6', NULL, '2023-08-15 14:36:22', 1, 23, NULL),
(394, '307d6a6c-44d6-4ca3-9c6a-bda0a4b17d63', NULL, '2023-08-15 14:36:22', 1, 23, NULL),
(395, '940c9a61-23e9-4cac-833a-d04c3d1f38b6', NULL, '2023-08-15 14:36:22', 1, 23, NULL),
(396, '4205f0e3-c26a-4d48-9a75-c4b0c55d6017', NULL, '2023-08-15 14:36:22', 1, 23, NULL),
(397, '04175344-1f15-4ef0-a0f5-d65e7d32ed5f', NULL, '2023-08-15 14:36:22', 1, 23, NULL),
(398, 'e8072d54-8e20-49b4-89aa-0be94c809adf', NULL, '2023-08-15 14:36:22', 1, 23, NULL),
(399, 'e9da0c35-0f73-4823-b6bf-a4441506a572', NULL, '2023-08-15 14:36:22', 1, 23, NULL),
(400, '27868ad2-ae7c-4868-96d8-62d1ab9e100d', NULL, '2023-08-15 14:36:22', 1, 23, NULL),
(413, '8179def8-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:37:52', 1, 24, NULL),
(414, 'f091d9c5-cd90-426e-a489-32de57df2094', NULL, '2023-08-15 14:39:05', 1, 25, NULL),
(415, 'e546c208-bbd8-4886-95fa-130e2cacdbd1', NULL, '2023-08-15 14:39:05', 1, 25, NULL),
(416, '9cc87da7-05ec-4f7b-8b6c-9316941a32da', NULL, '2023-08-15 14:39:05', 1, 25, NULL),
(417, 'd5785eeb-63ed-4dfe-9074-a38a5483ea59', NULL, '2023-08-15 14:39:05', 1, 25, NULL),
(418, '3eb0f42b-824e-4c37-bae6-a7ee9046a6ec', NULL, '2023-08-15 14:39:05', 1, 25, NULL),
(419, 'c1fbc67e-f386-4abb-8d89-df84bd8dc58a', NULL, '2023-08-15 14:39:05', 1, 25, NULL),
(420, '7f019a5a-69c9-4d94-abd3-61331946c79d', NULL, '2023-08-15 14:39:05', 1, 25, NULL),
(421, '99c72fcc-6815-46bd-a486-708bf0f2205f', NULL, '2023-08-15 14:39:05', 1, 25, NULL),
(422, '62aea7b9-2321-4e90-8e08-68e927a3442f', NULL, '2023-08-15 14:39:05', 1, 25, NULL),
(423, '06d0799d-d94b-4760-a743-9af781e63f06', NULL, '2023-08-15 14:39:05', 1, 25, NULL),
(424, '4bc3484d-cb23-4f7d-bf99-987b2f24469a', NULL, '2023-08-15 14:39:05', 1, 25, NULL),
(425, 'a993c3f4-6b24-44a9-9d9c-943915695510', NULL, '2023-08-15 14:39:05', 1, 25, NULL),
(426, '73430aa7-e396-49c1-93ac-e6f4c34f3726', NULL, '2023-08-15 14:39:05', 1, 25, NULL),
(427, 'f72779bc-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:40:48', 1, 26, NULL),
(428, 'f7277cc8-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:40:48', 1, 26, NULL),
(429, 'f7277e62-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:40:48', 1, 26, NULL),
(430, 'f727804c-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:40:48', 1, 26, NULL),
(431, 'f727824a-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:40:48', 1, 26, NULL),
(432, 'f727883a-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:40:48', 1, 26, NULL),
(433, 'f72789c0-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:40:48', 1, 26, NULL),
(434, 'f7278aec-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:40:48', 1, 26, NULL),
(435, 'f7278bfa-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:40:48', 1, 26, NULL),
(436, 'f7278d08-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:40:48', 1, 26, NULL),
(437, 'f7278e16-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:40:48', 1, 26, NULL),
(438, 'f7278f24-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:40:48', 1, 26, NULL),
(439, 'f727901e-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:40:48', 1, 26, NULL),
(440, 'f72793e8-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:40:48', 1, 26, NULL),
(441, 'f727958c-3b3e-11ee-be56-0242ac120002', NULL, '2023-08-15 14:40:48', 1, 26, NULL),
(442, '0b79e2b2-09ba-4665-bbbe-de90e5ea2230', NULL, '2023-08-15 14:42:33', 1, 27, NULL),
(443, '1fd3f37d-6999-46b2-ad26-b0c15e157505', NULL, '2023-08-15 14:42:33', 1, 27, NULL),
(444, '9a7486b4-b047-420a-8746-6c05fe76c2a6', NULL, '2023-08-15 14:42:33', 1, 27, NULL),
(445, 'a15735ff-3ea8-432b-99bf-170736244e9a', NULL, '2023-08-15 14:42:33', 1, 27, NULL),
(446, '3632366a-96b4-4d30-ac52-835f2cbaf97d', NULL, '2023-08-15 14:42:33', 1, 27, NULL),
(447, 'd1229349-f466-4214-9ce2-b1b8cc4747b8', NULL, '2023-08-15 14:42:33', 1, 27, NULL),
(448, '7d93ecd3-19fc-4fd3-b756-f758ac7ee41f', NULL, '2023-08-15 14:42:33', 1, 27, NULL),
(449, 'fea3f0f8-b494-4ec1-b207-f313f378a637', NULL, '2023-08-15 14:42:33', 1, 27, NULL),
(450, '4f858035-988d-4367-90f3-c2b90c8d43a7', NULL, '2023-08-15 14:42:33', 1, 27, NULL),
(451, 'c8f1ddd2-1cc4-4157-af46-0207c5136b9f', NULL, '2023-08-15 14:42:33', 1, 27, NULL),
(452, '23e411ae-3ad4-43fb-b1dd-e30013fbfb26', NULL, '2023-08-15 14:42:33', 1, 27, NULL),
(453, '4fd4e473-2cb1-4e6b-8fdc-7eb47d270d71', NULL, '2023-08-15 14:42:33', 1, 27, NULL),
(454, '6263fb46-cf0c-48d6-a1df-408b66a6eeb7', NULL, '2023-08-15 14:42:33', 1, 27, NULL),
(455, 'b8d655bc-1c42-42ae-9f1c-a6421c8c8291', NULL, '2023-08-15 14:42:33', 1, 27, NULL),
(456, 'a692eca5-ce8f-47df-adc5-045e99c6b22d', NULL, '2023-08-15 14:42:33', 1, 27, NULL),
(457, '4d083345-7b82-4757-ad04-db2869d18204', NULL, '2023-08-15 14:42:33', 1, 27, NULL),
(458, '5c454ed2-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:43:28', 1, 28, NULL),
(459, '5c4551c0-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:43:28', 1, 28, NULL),
(460, '5c455300-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:43:28', 1, 28, NULL),
(461, '5c455454-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:43:28', 1, 28, NULL),
(462, '5c45559e-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:43:28', 1, 28, NULL),
(463, '5c4556f2-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:43:28', 1, 28, NULL),
(464, '5c455850-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:43:28', 1, 28, NULL),
(465, '5c455990-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:43:28', 1, 28, NULL),
(466, '5c455fda-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:43:28', 1, 28, NULL),
(467, '5c456138-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:43:28', 1, 28, NULL),
(468, '5c456278-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:43:28', 1, 28, NULL),
(469, '5c4563d6-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:43:28', 1, 28, NULL),
(470, '5c456552-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:43:28', 1, 28, NULL),
(471, '5c4566b0-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:43:28', 1, 28, NULL),
(472, '5c45682c-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:43:28', 1, 28, NULL),
(473, '5c456c0a-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:43:28', 1, 28, NULL),
(474, 'be5d7cf0-8fdf-423b-89db-37ae56af25d6', NULL, '2023-08-15 14:44:46', 1, 29, NULL),
(475, '0beb977f-95bf-49bd-8048-817560c6ddce', NULL, '2023-08-15 14:44:46', 1, 29, NULL),
(476, '5ebd3551-9038-4bb4-927e-a765adc6f164', NULL, '2023-08-15 14:44:46', 1, 29, NULL),
(477, '755b67fd-c789-4e5d-9de5-c4921a99dccc', NULL, '2023-08-15 14:44:46', 1, 29, NULL),
(478, 'f017f241-36f6-4a39-a989-a8885b8ec683', NULL, '2023-08-15 14:44:46', 1, 29, NULL),
(479, '9e2550dd-e68d-41dc-8ce6-31c9c90e58ce', NULL, '2023-08-15 14:44:46', 1, 29, NULL),
(480, '9f6809be-0ba8-4026-b7d2-2bcb0a1eb13c', NULL, '2023-08-15 14:44:46', 1, 29, NULL),
(481, 'ec19ccf4-2d9a-4f84-a5e6-ce498b85b9c1', NULL, '2023-08-15 14:44:46', 1, 29, NULL),
(482, '5dd5eb25-c55f-4935-b6b5-6c62d9987436', NULL, '2023-08-15 14:44:46', 1, 29, NULL),
(483, '01abcd2f-3060-4694-9fe1-b8c4edad5ec6', NULL, '2023-08-15 14:44:46', 1, 29, NULL),
(484, 'b6b5ad6a-9e78-418a-8882-22953b72c340', NULL, '2023-08-15 14:44:46', 1, 29, NULL),
(485, '2cbdc6fe-414a-47f3-a73e-bc61aa6a7716', NULL, '2023-08-15 14:44:46', 1, 29, NULL),
(486, '86dceff6-4bea-4717-bb06-8b1925ba25a0', NULL, '2023-08-15 14:44:46', 1, 29, NULL),
(487, '5db8ea4c-f1d7-4dc4-a94a-c847c97f6434', NULL, '2023-08-15 14:44:46', 1, 29, NULL),
(488, '55a08580-c84e-4dc1-8627-b1d27438fd3c', NULL, '2023-08-15 14:44:46', 1, 29, NULL),
(489, 'c3b83aaf-effe-4739-8df9-0df5ffe5d6fc', NULL, '2023-08-15 14:44:46', 1, 29, NULL),
(490, '370fb75a-4372-4683-a2ad-c765456a1f22', NULL, '2023-08-15 14:44:46', 1, 29, NULL),
(491, 'f1f09ea3-745e-4529-8a4e-48bfaf94d1f0', NULL, '2023-08-15 14:44:46', 1, 29, NULL),
(492, '6fd9ac45-fc62-4bde-8a09-3765842be3fb', NULL, '2023-08-15 14:44:46', 1, 29, NULL),
(493, 'd1e4a5e8-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:46:54', 1, 30, NULL),
(494, 'd1e4a868-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:46:54', 1, 30, NULL),
(495, 'd1e4a994-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:46:54', 1, 30, NULL),
(496, 'd1e4aba6-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:46:54', 1, 30, NULL),
(497, 'd1e4adea-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:46:54', 1, 30, NULL),
(498, 'd1e4afb6-3b3f-11ee-be56-0242ac120002', NULL, '2023-08-15 14:46:54', 1, 30, NULL),
(499, '03375332-620f-46e4-9df4-c6a9b3a0a709', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(500, '8d3ebd35-d42c-4e8a-a422-a5f371db36f8', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(501, 'dec551c4-4682-4adb-bc37-d3327bbe91b0', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(502, 'fc7be83b-095b-4179-8ee2-a227f852c06c', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(503, 'a96aa7d4-c9e4-4cd9-bb79-4b825c6419f4', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(504, '0391ec36-202a-4ce1-a1fe-e5643e68a367', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(505, '9beb50f8-2dd4-4e98-9418-dda481e0b9ea', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(506, '0785ce16-d9ac-4b67-bb6d-45fcb89f97e9', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(507, 'e11b3ea4-25a5-4b7c-8949-032c913d5bcf', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(508, '25e11fb4-dacf-43f1-956a-ba1c4277564b', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(509, 'f96aacc9-d20d-4892-807a-5ed09860b0e1', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(510, 'a9753c16-4f4b-4841-9557-0b5c84865331', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(511, 'b20224bf-b249-4298-ab9d-2762b07ca4be', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(512, '2c86694c-2fd6-48ac-ac77-8f161e517ecc', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(513, 'b6d5f856-cabd-451f-b53d-cbc0518e11c0', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(514, 'f70eb198-5712-4f5c-b67f-e63cb7c9adc8', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(515, 'b2fa50af-7f4b-4e53-8f5a-647a7d9e435a', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(516, '07cebcdd-b746-4695-a57b-867210cab8d6', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(517, 'dee8d2d8-0c98-44d6-a411-439fd2c2b0a7', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(518, '07ab1cd1-1736-4e2b-bf70-9b100fbf001a', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(519, 'd789f41e-be54-49f5-8b36-ba3e557d9af0', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(520, 'f7c440c0-6da2-42c8-99cb-b58c4f8882cd', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(521, '6f115ba1-2711-4e78-9f06-076ed92abaf9', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(522, 'd5ca4c63-692f-44e1-ac1a-56f740466f3f', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(523, '275ef3a0-0353-4203-beea-3238b4ee1906', NULL, '2023-08-15 14:47:53', 1, 31, NULL),
(524, '2aa8533c-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:49:13', 1, 32, NULL),
(525, '2aa85756-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:49:13', 1, 32, NULL),
(526, '2aa858a0-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:49:13', 1, 32, NULL),
(527, '2aa859d6-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:49:13', 1, 32, NULL),
(528, '2aa85b48-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:49:13', 1, 32, NULL),
(529, '2aa85c74-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:49:13', 1, 32, NULL),
(530, '2aa85ff8-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:49:13', 1, 32, NULL),
(531, '2aa86174-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:49:13', 1, 32, NULL),
(532, '2aa86296-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:49:13', 1, 32, NULL),
(533, '2aa863ae-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:49:13', 1, 32, NULL),
(534, '2aa864bc-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:49:13', 1, 32, NULL),
(535, '2aa865d4-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:49:13', 1, 32, NULL),
(536, '2aa866ec-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:49:13', 1, 32, NULL),
(537, '2aa8680e-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:49:13', 1, 32, NULL),
(538, '2aa86d04-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:49:13', 1, 32, NULL),
(539, '2aa86e26-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:49:13', 1, 32, NULL),
(540, '2aa86f48-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:49:13', 1, 32, NULL),
(541, '413797ef-2829-40e4-8553-c96b66d51db8', NULL, '2023-08-15 14:50:22', 1, 33, NULL),
(542, '33a34135-acd3-464f-9533-294495877c19', NULL, '2023-08-15 14:50:22', 1, 33, NULL),
(543, '9e2c7ade-576e-400a-92e7-bfb022ef83ce', NULL, '2023-08-15 14:50:22', 1, 33, NULL),
(544, 'c3b32516-0697-41db-904c-e257e5d8d39d', NULL, '2023-08-15 14:50:22', 1, 33, NULL),
(545, 'c6237ab4-121a-4c8a-a9b7-9f465bbc2f58', NULL, '2023-08-15 14:50:22', 1, 33, NULL),
(546, 'affc9802-9c26-464d-b259-77268d2179cd', NULL, '2023-08-15 14:50:22', 1, 33, NULL),
(547, '29d2f365-0f0a-4dca-9d03-80f24ff0e0b4', NULL, '2023-08-15 14:50:22', 1, 33, NULL),
(548, '5b77fde8-7fcb-4bfe-8abc-497d74b6e440', NULL, '2023-08-15 14:50:22', 1, 33, NULL),
(549, '83d66ee2-be30-41aa-b071-f9349aaf195f', NULL, '2023-08-15 14:50:22', 1, 33, NULL),
(550, 'ba791675-4fc8-401b-96d8-d3952aa5380e', NULL, '2023-08-15 14:50:22', 1, 33, NULL),
(551, '2abde783-32ca-461f-aae6-284ada24ec8b', NULL, '2023-08-15 14:50:22', 1, 33, NULL),
(552, '75f716de-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(553, '75f7199a-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(554, '75f71b02-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(555, '75f71c6a-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(556, '75f71e18-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(557, '75f71fa8-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(558, '75f72480-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(559, '75f725e8-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(560, '75f7270a-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(561, '75f72822-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(562, '75f7293a-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(563, '75f72a3e-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(564, '75f72b88-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(565, '75f72eda-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(566, '75f73006-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(567, '75f73114-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(568, '75f732cc-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(569, '75f7340c-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(570, '75f73524-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(571, '75f7363c-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(572, '75f73754-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(573, '75f73af6-3b40-11ee-be56-0242ac120002', NULL, '2023-08-15 14:51:21', 1, 34, NULL),
(574, 'e0f2d6c4-401c-4575-903d-b9a835fc569a', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(575, 'f70f0623-d10a-48f3-a81c-1d043094f9b0', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(576, '0e204a99-5eda-4725-9634-2fff54060ace', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(577, 'cee406fe-8e1c-4bf4-85a2-fda6b2dbea76', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(578, '1b66e2f2-01da-4da7-9d27-258a23e0cce0', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(579, '99bf90b6-273d-4ad7-91fa-3cc24cda2803', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(580, 'e8de934e-c2a0-434b-8872-9a32170b9b48', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(581, 'f16c405e-b696-4db8-9c64-249463d1528c', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(582, '2e2484c3-db3b-4000-b25d-238f51f61676', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(583, '6af54a0e-41c1-480f-8983-925ad28e0cfe', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(584, '7e01c458-a8f1-4e17-bdb4-3e570f1dcb04', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(585, '38548947-29a8-4eb2-b112-37142880422a', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(586, '7bb05c8f-f258-4f48-a1ca-23c642cbe45f', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(587, '0773fffb-c34a-4b64-87d2-6d56ea7cc6d5', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(588, '44dfce41-fc6d-4d9c-a7ae-c6ed8b7ee7ed', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(589, '8ea46563-a614-4556-97c6-fc686a3aa9c4', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(590, '618fdef4-01ac-4ac9-b6c0-2e514cc60951', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(591, '7efc1be3-78b3-4c15-8955-fae24848394c', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(592, 'dd36717c-3c3d-475e-b537-ecf6b7fe210a', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(593, 'ca39ee55-4819-4b43-9d5c-55719bdf97ce', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(594, 'a8847d78-b849-464b-a062-029a6d7a178c', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(595, '341557b2-5ba0-48de-9bc3-c604564f2984', NULL, '2023-08-15 14:52:18', 1, 35, NULL),
(596, '00de9b9d-6b05-49c9-a122-b452f6c97525', NULL, '2023-08-15 14:52:18', 1, 35, NULL);
INSERT INTO `seri` (`id_seri`, `id_imei`, `ngay_ban`, `ngay_nhap`, `trang_thai`, `id_chi_tiet_san_pham`, `id_hoa_don_chi_tiet`) VALUES
(597, '4fa05738-3b41-11ee-be56-0242ac120002', NULL, '2023-08-15 14:57:35', 1, 36, NULL),
(598, '4fa05986-3b41-11ee-be56-0242ac120002', NULL, '2023-08-15 14:57:35', 1, 36, NULL),
(599, '4fa05ea4-3b41-11ee-be56-0242ac120002', NULL, '2023-08-15 14:57:35', 1, 36, NULL),
(600, '4fa05fda-3b41-11ee-be56-0242ac120002', NULL, '2023-08-15 14:57:35', 1, 36, NULL),
(601, '4fa060de-3b41-11ee-be56-0242ac120002', NULL, '2023-08-15 14:57:35', 1, 36, NULL),
(602, 'ba144bf9-7253-4217-84d5-18a2d454b391', NULL, '2023-08-15 14:58:26', 1, 37, NULL),
(603, '73a17320-b30d-4aff-9c04-245a18055e71', NULL, '2023-08-15 14:58:26', 1, 37, NULL),
(604, '27b63272-6023-4763-ae93-0bd63b10fb5a', NULL, '2023-08-15 14:58:26', 1, 37, NULL),
(605, '3032156a-d3cb-4a0d-9abb-7b4b4d7ccb17', NULL, '2023-08-15 14:58:26', 1, 37, NULL),
(606, '7e7303f8-2da9-498f-a3b7-558833f5ad26', NULL, '2023-08-15 14:58:26', 1, 37, NULL),
(607, '39d46b39-885f-428f-96a7-689ee6071fa5', NULL, '2023-08-15 15:02:16', 1, 38, NULL),
(608, '802eafd3-87dc-4309-9440-3bc10c6aa242', NULL, '2023-08-15 15:02:16', 1, 38, NULL),
(609, '67d1b340-e882-4a9a-8f38-29c44e0da6ae', NULL, '2023-08-15 15:02:16', 1, 38, NULL),
(610, '8f6078ad-28f0-4275-b668-b5df5dff2c8b', NULL, '2023-08-15 15:02:16', 1, 38, NULL),
(611, 'f1722fdb-4cce-45c5-86fe-725d414416f5', NULL, '2023-08-15 15:02:16', 1, 38, NULL),
(612, '2a471197-0b18-445a-9ca2-e431a268194f', NULL, '2023-08-15 15:02:16', 1, 38, NULL),
(613, '26471ace-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:03:25', 1, 39, NULL),
(614, '26471de4-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:03:25', 1, 39, NULL),
(615, '26471fc4-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:03:25', 1, 39, NULL),
(616, '26472140-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:03:25', 1, 39, NULL),
(617, '264725c8-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:03:25', 1, 39, NULL),
(618, '26472776-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:03:25', 1, 39, NULL),
(619, '2647292e-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:03:25', 1, 39, NULL),
(620, 'd7569c6f-6f93-4afe-86ea-f60e05ef67b5', NULL, '2023-08-15 15:04:25', 1, 40, NULL),
(621, 'ec708062-e5d8-473b-a4ed-2bf05b95c9d7', NULL, '2023-08-15 15:04:25', 1, 40, NULL),
(622, '07fd47b5-1eeb-46d8-96dd-a7546ef17c5d', NULL, '2023-08-15 15:04:25', 1, 40, NULL),
(623, '04773f08-1ebc-4b86-aa99-64835402ce31', NULL, '2023-08-15 15:04:25', 1, 40, NULL),
(624, '88b3cde2-e8e3-4138-997b-4cf95c077e7d', NULL, '2023-08-15 15:04:25', 1, 40, NULL),
(625, '59fcdd01-466b-4b42-aa5e-bf28ffb34ea7', NULL, '2023-08-15 15:04:25', 1, 40, NULL),
(626, '8b095531-8c81-4e66-96b2-5ec9073a289a', NULL, '2023-08-15 15:04:25', 1, 40, NULL),
(627, '5140c855-0a69-442b-a0d8-9f8fb42dbaab', NULL, '2023-08-15 15:04:25', 1, 40, NULL),
(628, 'b5dd8e9f-064a-479d-873c-50318b2cc947', NULL, '2023-08-15 15:04:25', 1, 40, NULL),
(629, '29e17d65-dcc9-442d-b80b-8d67631bc056', NULL, '2023-08-15 15:04:25', 1, 40, NULL),
(630, 'df0f2476-dead-486e-9af1-db554e18013d', NULL, '2023-08-15 15:04:25', 1, 40, NULL),
(631, '13c4cb49-9ae6-4f6b-9cc9-e84fed325362', NULL, '2023-08-15 15:04:25', 1, 40, NULL),
(632, '8c3cb098-8f0a-43f8-8b07-41f889c801bc', NULL, '2023-08-15 15:04:25', 1, 40, NULL),
(633, '725a4dbe-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:05:31', 1, 41, NULL),
(634, '725a5322-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:05:31', 1, 41, NULL),
(635, '725a5494-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:05:31', 1, 41, NULL),
(636, '725a55ca-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:05:31', 1, 41, NULL),
(637, '725a56ec-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:05:31', 1, 41, NULL),
(638, '725a59c6-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:05:31', 1, 41, NULL),
(639, '725a5ae8-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:05:31', 1, 41, NULL),
(640, '725a5c0a-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:05:31', 1, 41, NULL),
(641, '725a5d2c-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:05:31', 1, 41, NULL),
(642, '725a6010-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:05:31', 1, 41, NULL),
(643, '725a6128-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:05:31', 1, 41, NULL),
(644, '725a624a-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:05:31', 1, 41, NULL),
(645, '725a636c-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:05:31', 1, 41, NULL),
(646, '725a66aa-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:05:31', 1, 41, NULL),
(647, '725a67d6-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:05:31', 1, 41, NULL),
(648, '725a68ee-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:05:31', 1, 41, NULL),
(649, '42b76b9e-0853-410f-a582-da7a80ccfe7e', NULL, '2023-08-15 15:06:24', 1, 42, NULL),
(650, '1ac1beea-ea5c-4209-9af7-d8896ea87855', NULL, '2023-08-15 15:06:24', 1, 42, NULL),
(651, '51bc97bb-9360-4fe0-bf31-f9027ccc88f2', NULL, '2023-08-15 15:06:24', 1, 42, NULL),
(652, '837ada42-0edb-4ed8-bedb-8aa6df2b8b48', NULL, '2023-08-15 15:06:24', 1, 42, NULL),
(653, '3ea92c7a-293c-4a9a-a971-b5aa9d43fa98', NULL, '2023-08-15 15:06:24', 1, 42, NULL),
(654, 'bd257aa8-9423-46b9-b8ea-236e3b4674ab', NULL, '2023-08-15 15:06:24', 1, 42, NULL),
(655, '9a50fbb8-f777-423d-b60a-dafe39a34b3c', NULL, '2023-08-15 15:06:24', 1, 42, NULL),
(656, 'd37e6e33-8232-490a-a5ff-1d29d0282fc1', NULL, '2023-08-15 15:06:24', 1, 42, NULL),
(657, 'e5b61fb5-84fc-4093-b3d6-f5869ffef788', NULL, '2023-08-15 15:06:24', 1, 42, NULL),
(658, '0b0f8b46-ed0c-4fbb-b56a-654654642048', NULL, '2023-08-15 15:06:24', 1, 42, NULL),
(659, '9ef5f601-c744-4d3d-aa9e-71f5b03a5ad6', NULL, '2023-08-15 15:06:24', 1, 42, NULL),
(660, 'f9e6ccba-1f39-459e-9920-02b179b4627a', NULL, '2023-08-15 15:06:24', 1, 42, NULL),
(661, '364be029-2b40-4a1e-8bd4-5852ed6abaf8', NULL, '2023-08-15 15:06:24', 1, 42, NULL),
(662, 'e382578c-6f76-40ad-9308-69c559d32229', NULL, '2023-08-15 15:06:24', 1, 42, NULL),
(663, '683205af-657c-409d-8eb9-fe2dfbfe2c1d', NULL, '2023-08-15 15:08:09', 1, 43, NULL),
(664, '25254c72-dfed-44a9-abb5-afc8a6c7fe1f', NULL, '2023-08-15 15:08:09', 1, 43, NULL),
(665, '2c9f8eea-442d-4b46-a456-aa4bb456fa6c', NULL, '2023-08-15 15:08:09', 1, 43, NULL),
(666, '9cabce43-ad08-4a3b-9154-4c42fe415af0', NULL, '2023-08-15 15:08:09', 1, 43, NULL),
(667, 'c9498a92-ab86-48fd-84e3-4be7f6e9317b', NULL, '2023-08-15 15:08:09', 1, 43, NULL),
(668, 'ca03c243-63a3-42ed-b672-863846588712', NULL, '2023-08-15 15:08:09', 1, 43, NULL),
(669, '909eb2af-bea3-4ac3-9c1d-2d495dabb814', NULL, '2023-08-15 15:08:09', 1, 43, NULL),
(670, 'eb350091-4d61-43e2-ae98-6b96b8e0b7ab', NULL, '2023-08-15 15:08:09', 1, 43, NULL),
(671, 'b6102e64-5471-4790-b2dc-a89266b520d3', NULL, '2023-08-15 15:08:09', 1, 43, NULL),
(672, 'ac08780f-0b77-4cae-9d3b-5ab50099da90', NULL, '2023-08-15 15:08:09', 1, 43, NULL),
(673, '411cc715-fb3c-4f51-9737-e746099b8f2d', NULL, '2023-08-15 15:08:09', 1, 43, NULL),
(674, 'f4850653-03b3-4a14-a4bd-37f3501bd0b6', NULL, '2023-08-15 15:08:09', 1, 43, NULL),
(675, '637fae05-7f33-4b15-8558-ff109722c125', NULL, '2023-08-15 15:08:09', 1, 43, NULL),
(676, '1048b917-11a6-4e58-a990-516942d37bdf', NULL, '2023-08-15 15:08:09', 1, 43, NULL),
(677, '5835535f-96b5-46a8-be36-73256c9c443f', NULL, '2023-08-15 15:08:09', 1, 43, NULL),
(678, 'fb18e0a6-4742-4a28-9c99-29db5475a1c8', NULL, '2023-08-15 15:08:09', 1, 43, NULL),
(679, '1433511a-8351-4fed-99a9-f1024acb513c', NULL, '2023-08-15 15:08:09', 1, 43, NULL),
(680, 'a7f392c7-3a47-4050-84ca-46b8b1529831', NULL, '2023-08-15 15:08:09', 1, 43, NULL),
(681, 'f8b2f23a-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:09:20', 2, 44, 1),
(682, 'f8b2f4ce-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:09:20', 2, 44, 1),
(683, 'f8b2f60e-3b42-11ee-be56-0242ac120002', '2023-08-23 00:45:37', '2023-08-15 15:09:20', 3, 44, 33),
(684, 'f8b2f8ca-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:09:20', 1, 44, NULL),
(685, 'f8b2fa00-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:09:20', 1, 44, NULL),
(686, 'f8b2fb36-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:09:21', 1, 44, NULL),
(687, 'f8b2fc58-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:09:21', 1, 44, NULL),
(688, 'f8b2fd84-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:09:21', 1, 44, NULL),
(689, 'f8b3000e-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:09:21', 1, 44, NULL),
(690, 'f8b3013a-3b42-11ee-be56-0242ac120002', NULL, '2023-08-15 15:09:21', 1, 44, NULL),
(691, '987908ba-f649-4d0c-884c-973086de70a7', NULL, '2023-08-15 15:10:18', 1, 45, NULL),
(692, '7667da49-6dc2-45fc-94ee-7257055e0272', NULL, '2023-08-15 15:10:18', 1, 45, NULL),
(693, '40f04f05-919e-4727-b9b6-1fac78de19e1', NULL, '2023-08-15 15:10:18', 1, 45, NULL),
(694, '17d0f08c-34a9-45a8-9b34-0d3b54ff1a8d', NULL, '2023-08-15 15:10:18', 1, 45, NULL),
(695, '3bfc0339-07ef-4462-8f73-81dbcce3eff0', NULL, '2023-08-15 15:10:18', 1, 45, NULL),
(696, '4efcbbc5-1e15-42a7-8b09-cd98993240b0', NULL, '2023-08-15 15:10:18', 1, 45, NULL),
(697, 'd90aaae7-d63d-4480-9e77-1a75aaf015e8', NULL, '2023-08-15 15:10:18', 1, 45, NULL),
(698, 'e51d0a2a-e7fb-4b06-8d14-a3d40e2651a8', NULL, '2023-08-15 15:10:18', 1, 45, NULL),
(699, '358a9abf-d968-4959-b20b-8cf8db143772', NULL, '2023-08-15 15:10:18', 1, 45, NULL),
(700, '3d6e98cc-7487-417a-b7aa-a25bc24a4aa3', NULL, '2023-08-15 15:10:18', 1, 45, NULL),
(701, 'f90e8924-02b5-4989-af17-674a6e3545a9', NULL, '2023-08-15 15:10:18', 1, 45, NULL),
(702, 'b9fe1b1f-ef6c-4810-a616-85998237f670', NULL, '2023-08-15 15:10:18', 1, 45, NULL),
(703, '397dccea-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:11:18', 1, 46, NULL),
(704, '397dd230-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:11:18', 1, 46, NULL),
(705, '397dd38e-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:11:18', 1, 46, NULL),
(706, '397dd56e-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:11:18', 1, 46, NULL),
(707, '397dd6a4-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:11:18', 1, 46, NULL),
(708, '397dd7c6-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:11:18', 1, 46, NULL),
(709, '397dd8fc-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:11:18', 1, 46, NULL),
(710, '397ddce4-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:11:18', 1, 46, NULL),
(711, '397dde56-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:11:18', 1, 46, NULL),
(712, '397ddf64-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:11:18', 1, 46, NULL),
(713, '397de07c-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:11:18', 1, 46, NULL),
(714, '397de194-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:11:18', 1, 46, NULL),
(715, '397de2ca-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:11:18', 1, 46, NULL),
(716, '397de608-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:11:18', 1, 46, NULL),
(717, '397de734-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:11:18', 1, 46, NULL),
(718, '397de860-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:11:18', 1, 46, NULL),
(719, '397de98c-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:11:18', 1, 46, NULL),
(720, '397deafe-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:11:18', 1, 46, NULL),
(721, '397dec20-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:11:18', 1, 46, NULL),
(722, '397ded42-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:11:18', 1, 46, NULL),
(723, '397df120-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:11:18', 1, 46, NULL),
(724, '0852680e-4db3-4ee8-8023-f6350bc39865', NULL, '2023-08-15 15:12:37', 1, 47, NULL),
(725, '49060911-3dad-4470-b8f1-bc62bac861ea', NULL, '2023-08-15 15:12:37', 1, 47, NULL),
(726, '5f46a293-87da-4240-b2ce-608fcee53c38', NULL, '2023-08-15 15:12:37', 1, 47, NULL),
(727, 'fb274f1f-61a1-4f18-ba8f-66b9f132367d', NULL, '2023-08-15 15:12:37', 1, 47, NULL),
(728, 'e75dfb21-a99f-4052-b60c-72becf730a97', NULL, '2023-08-15 15:12:37', 1, 47, NULL),
(729, 'c0c41536-cfaf-4fa7-b264-b420b0ee861f', NULL, '2023-08-15 15:12:37', 1, 47, NULL),
(730, '81e4a29e-2e08-4122-aa0c-c174a6bc6ab1', NULL, '2023-08-15 15:12:37', 1, 47, NULL),
(731, '8d03d3fa-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:13:43', 1, 48, NULL),
(732, '8d03d670-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:13:43', 1, 48, NULL),
(733, '8d03d7b0-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:13:43', 1, 48, NULL),
(734, '8d03dcd8-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:13:43', 1, 48, NULL),
(735, '8d03de22-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:13:43', 1, 48, NULL),
(736, '8d03df44-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:13:43', 1, 48, NULL),
(737, '8d03e05c-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:13:43', 1, 48, NULL),
(738, '8d03e17e-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:13:43', 1, 48, NULL),
(739, '8d03e2a0-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:13:43', 1, 48, NULL),
(740, '8d03e66a-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:13:43', 1, 48, NULL),
(741, '8d03e7f0-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:13:43', 1, 48, NULL),
(742, '8d03e912-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:13:43', 1, 48, NULL),
(743, '8d03ea20-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:13:43', 1, 48, NULL),
(744, '8d03eb56-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:13:43', 1, 48, NULL),
(745, '8d03ec6e-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:13:43', 1, 48, NULL),
(746, '8d03ed9a-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:13:43', 1, 48, NULL),
(747, '8d03eebc-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:13:43', 1, 48, NULL),
(748, 'cad72d3a-3fda-472d-9d9f-74377b059758', NULL, '2023-08-15 15:14:40', 1, 49, NULL),
(749, '444ccc10-3b6d-4fc3-b8f6-d26ba62ce52c', NULL, '2023-08-15 15:14:40', 1, 49, NULL),
(750, 'cb678f0a-73f7-44fd-8565-392fd6a5ff50', NULL, '2023-08-15 15:14:40', 1, 49, NULL),
(751, '1c176998-e961-4df0-9852-a6d144755c3a', NULL, '2023-08-15 15:14:40', 1, 49, NULL),
(752, '9fd2581c-a128-4eef-8bed-f98487ce275d', NULL, '2023-08-15 15:14:40', 1, 49, NULL),
(753, 'd5d1a398-92a0-4c96-a650-15b54178e29b', NULL, '2023-08-15 15:14:40', 1, 49, NULL),
(754, 'd3cdf8bc-a97e-462a-b2ca-7105e20477c1', NULL, '2023-08-15 15:14:40', 1, 49, NULL),
(755, '6b291eb5-c1c6-41d2-9780-48183a9d3e15', NULL, '2023-08-15 15:14:40', 1, 49, NULL),
(756, 'e4ec6831-7617-49ae-a6cf-da77649f246d', NULL, '2023-08-15 15:14:40', 1, 49, NULL),
(757, '897e9850-c860-4c49-bb7e-6451c885c210', NULL, '2023-08-15 15:14:40', 1, 49, NULL),
(758, '989eb264-4454-43c8-9233-1cec9976cb88', NULL, '2023-08-15 15:14:40', 1, 49, NULL),
(759, 'a8bf7c1e-34b3-4be5-9a60-60b24039d0f4', NULL, '2023-08-15 15:14:40', 1, 49, NULL),
(760, '07a9de1f-e171-4fbf-ac1c-92f9859e3efd', NULL, '2023-08-15 15:14:40', 1, 49, NULL),
(761, '152d496b-af8f-4e61-8b40-2a985997ff9a', NULL, '2023-08-15 15:14:40', 1, 49, NULL),
(762, '99ed2706-9467-401f-a5fd-df3789f3423d', NULL, '2023-08-15 15:14:40', 1, 49, NULL),
(763, 'da46d694-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:15:30', 1, 50, NULL),
(764, 'da46d91e-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:15:30', 1, 50, NULL),
(765, 'da46dd56-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:15:30', 1, 50, NULL),
(766, 'da46de96-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:15:30', 1, 50, NULL),
(767, 'da46dfae-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:15:30', 1, 50, NULL),
(768, 'da46e0ee-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:15:30', 1, 50, NULL),
(769, 'da46e210-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:15:30', 1, 50, NULL),
(770, 'da46e3e6-3b43-11ee-be56-0242ac120002', NULL, '2023-08-15 15:15:30', 1, 50, NULL),
(771, 'fa3f777b-a57c-4055-a23d-5b03def892f9', NULL, '2023-08-15 15:16:58', 1, 51, NULL),
(772, '63dd285d-05f7-4e28-af12-300951447404', NULL, '2023-08-15 15:16:58', 1, 51, NULL),
(773, 'a656467a-2424-428e-a6bb-9f70a859719a', NULL, '2023-08-15 15:16:58', 1, 51, NULL),
(774, 'babfb03c-5b69-4ca2-8774-753326e8086e', NULL, '2023-08-15 15:16:58', 1, 51, NULL),
(775, '36a517eb-1f50-42b0-869a-ae09ad2d7894', NULL, '2023-08-15 15:16:58', 1, 51, NULL),
(776, '4e2480ff-f18f-4e4b-9f11-020d79fc6788', NULL, '2023-08-15 15:16:58', 1, 51, NULL),
(777, 'd06f8359-38e1-4be9-8642-839b8b6b3052', NULL, '2023-08-15 15:16:58', 1, 51, NULL),
(778, 'ddedfa95-2c97-4a82-9110-7a6854307e21', NULL, '2023-08-15 15:16:58', 1, 51, NULL),
(779, '99f8229c-a681-4603-be97-6ec7b34428f4', NULL, '2023-08-15 15:16:58', 1, 51, NULL),
(780, '253ff34c-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:17:35', 1, 52, NULL),
(781, '253ff5f4-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:17:35', 1, 52, NULL),
(782, '253ff73e-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:17:35', 1, 52, NULL),
(783, '253ff874-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:17:35', 1, 52, NULL),
(784, '253ffd1a-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:17:35', 1, 52, NULL),
(785, '253ffe6e-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:17:35', 1, 52, NULL),
(786, '253fff90-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:17:35', 1, 52, NULL),
(787, '254000ee-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:17:35', 1, 52, NULL),
(788, '2540021a-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:17:35', 1, 52, NULL),
(789, '25400332-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:17:35', 1, 52, NULL),
(790, '25400436-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:17:35', 1, 52, NULL),
(791, '2540053a-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:17:35', 1, 52, NULL),
(792, '59766262-1997-4082-a35f-7bc5554581c5', NULL, '2023-08-15 15:18:24', 1, 53, NULL),
(793, '852f2e1c-0d26-484e-823d-ed95f3e1f8e4', NULL, '2023-08-15 15:18:24', 1, 53, NULL),
(794, 'b8152fbd-2410-492a-b8f9-bb54ba692088', NULL, '2023-08-15 15:18:24', 1, 53, NULL),
(795, '69c2bf85-9902-42ef-9108-ba48b3d2440e', NULL, '2023-08-15 15:18:24', 1, 53, NULL),
(796, '5a971f70-26da-4e3a-b2c0-27ea4c9e56c4', NULL, '2023-08-15 15:18:24', 1, 53, NULL),
(797, 'e04d3e95-2ffa-4e50-b0f2-092a11b16d6b', NULL, '2023-08-15 15:18:24', 1, 53, NULL),
(798, '4d61ea49-45a6-405d-95db-0d824386dbff', NULL, '2023-08-15 15:18:24', 1, 53, NULL),
(799, '7830ace7-f1e3-4f0e-a6d1-ad54b8a7ea62', NULL, '2023-08-15 15:18:24', 1, 53, NULL),
(800, '750d0362-c181-4d88-9c97-f4674126193f', NULL, '2023-08-15 15:18:24', 1, 53, NULL),
(801, '0331dbcf-3e26-4aaa-9334-096cb79cc4e2', NULL, '2023-08-15 15:18:24', 1, 53, NULL),
(802, '52c328ac-892d-4777-81eb-496aac5a269b', NULL, '2023-08-15 15:18:24', 1, 53, NULL),
(803, '983ab0b3-0107-427b-860b-9661a0e9c698', NULL, '2023-08-15 15:18:24', 1, 53, NULL),
(804, 'f5eb7750-3f8a-4f4f-99b5-be0af4ee0ca7', NULL, '2023-08-15 15:18:24', 1, 53, NULL),
(805, 'f2ebf062-7731-45c2-92dd-452cd289ec7b', NULL, '2023-08-15 15:18:24', 1, 53, NULL),
(806, '4ee261b3-2fad-4949-8daf-b446eba42c58', NULL, '2023-08-15 15:18:24', 1, 53, NULL),
(807, '22de7e03-1202-4ecd-9d87-c751003034cb', NULL, '2023-08-15 15:18:24', 1, 53, NULL),
(808, '973ecc8e-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:20:53', 1, 54, NULL),
(809, '973ed0a8-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:20:53', 1, 54, NULL),
(810, '973ed1de-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:20:53', 1, 54, NULL),
(811, '973ed2e2-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:20:53', 1, 54, NULL),
(812, '973ed3e6-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:20:53', 1, 54, NULL),
(813, '973ed508-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:20:53', 1, 54, NULL),
(814, '973ed968-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:20:53', 1, 54, NULL),
(815, '973edaa8-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:20:53', 1, 54, NULL),
(816, '973edbac-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:20:53', 1, 54, NULL),
(817, '973edca6-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:20:53', 1, 54, NULL),
(818, '973eddb4-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:20:53', 1, 54, NULL),
(819, '973edec2-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:20:53', 1, 54, NULL),
(820, '973edfbc-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:20:53', 1, 54, NULL),
(821, '973ee43a-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:20:53', 1, 54, NULL),
(822, 'cc16ef25-5606-4129-80ff-f235201653e0', NULL, '2023-08-15 15:21:45', 1, 55, NULL),
(823, 'f52e9716-1e3d-4c6e-ae9d-39ad49d932de', NULL, '2023-08-15 15:21:45', 1, 55, NULL),
(824, '23c65b2d-63e2-4207-8b7c-82ab4771ce94', NULL, '2023-08-15 15:21:45', 1, 55, NULL),
(825, '233ffb6f-9fef-4307-ba24-03d7a9ffe4c4', NULL, '2023-08-15 15:21:45', 1, 55, NULL),
(826, 'c9dce7af-e8da-4248-8f11-4e7fb1fb74d7', NULL, '2023-08-15 15:21:45', 1, 55, NULL),
(827, '7f5aa1d6-8d9f-44f7-ab3d-c243c273e71d', NULL, '2023-08-15 15:21:45', 1, 55, NULL),
(828, 'a1eeb71e-8ea1-43db-a6d5-b058637d6f93', NULL, '2023-08-15 15:21:45', 1, 55, NULL),
(829, 'd359a064-594a-4a83-924e-1134ce5b96d3', NULL, '2023-08-15 15:21:45', 1, 55, NULL),
(830, '44df3c8d-e73c-4d3e-a73a-13b6d5da14fc', NULL, '2023-08-15 15:21:45', 1, 55, NULL),
(831, 'd18648c6-94f3-4dd5-842c-d88b4ae38b7e', NULL, '2023-08-15 15:21:45', 1, 55, NULL),
(832, '383f775e-1baf-49b2-aa3f-cfc71f464dbd', NULL, '2023-08-15 15:21:45', 1, 55, NULL),
(833, 'dbab9ed6-9c1e-43ad-9aad-a99d1cf3221c', NULL, '2023-08-15 15:21:45', 1, 55, NULL),
(834, '62b30f60-6c7a-46bd-bc84-aecdb4b80a40', NULL, '2023-08-15 15:21:45', 1, 55, NULL),
(835, '4802a533-0ea8-4be4-a286-27a7fd228986', NULL, '2023-08-15 15:21:45', 1, 55, NULL),
(836, 'ab2f556f-37c4-4f12-9438-56f0c2c3991c', NULL, '2023-08-15 15:21:45', 1, 55, NULL),
(837, '05d10b60-9205-46bc-ae44-1fab81ffedb4', NULL, '2023-08-15 15:21:45', 1, 55, NULL),
(838, 'f297ffa1-a8ea-47ed-8056-3a08aeeecc49', NULL, '2023-08-15 15:21:45', 1, 55, NULL),
(839, '42d95936-d9c6-422c-92ec-84648f117ead', NULL, '2023-08-15 15:21:45', 1, 55, NULL),
(840, 'd82f7c66-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:22:39', 1, 56, NULL),
(841, 'd82f7ff4-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:22:39', 1, 56, NULL),
(842, 'd82f8206-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:22:39', 1, 56, NULL),
(843, 'd82f83c8-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:22:39', 1, 56, NULL),
(844, 'd82f8580-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:22:39', 1, 56, NULL),
(845, 'd82f8738-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:22:39', 1, 56, NULL),
(846, 'd82f88d2-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:22:39', 1, 56, NULL),
(847, 'd82f8d14-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:22:39', 1, 56, NULL),
(848, 'd82f8ecc-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:22:39', 1, 56, NULL),
(849, 'd82f907a-3b44-11ee-be56-0242ac120002', NULL, '2023-08-15 15:22:39', 1, 56, NULL),
(850, '59b6ee61-0897-418a-a62a-47f163f22ec6', NULL, '2023-08-15 15:23:26', 1, 57, NULL),
(851, '2d368307-615f-4ae8-b5ab-4c050e05dc8f', NULL, '2023-08-15 15:23:26', 1, 57, NULL),
(852, '80d42bcf-a63b-41a6-ada6-9b31e06ba27d', NULL, '2023-08-15 15:23:26', 1, 57, NULL),
(853, 'e94503c7-5177-48ae-b9a9-71a261f4b36c', NULL, '2023-08-15 15:23:26', 1, 57, NULL),
(854, 'c86dfcbe-c5d1-41f4-bc4e-13b4c7f5d9a5', NULL, '2023-08-15 15:23:26', 1, 57, NULL),
(855, 'dbf80a60-eea2-4a26-9a79-ad2b7a0525df', NULL, '2023-08-15 15:23:26', 1, 57, NULL),
(856, '3e2c27ad-11e6-4225-b6a1-605f12a9289b', NULL, '2023-08-15 15:23:26', 1, 57, NULL),
(857, '4f3730c3-4570-4a66-9f5a-3fe8dac908d1', NULL, '2023-08-15 15:23:26', 1, 57, NULL),
(858, '1cef3832-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:24:34', 1, 58, NULL),
(859, '1cef3df0-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:24:34', 1, 58, NULL),
(860, '1cef3fc6-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:24:34', 1, 58, NULL),
(861, '1cef4156-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:24:34', 1, 58, NULL),
(862, '1cef42a0-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:24:34', 1, 58, NULL),
(863, '1cef43ea-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:24:34', 1, 58, NULL),
(864, '1cef4516-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:24:34', 1, 58, NULL),
(865, '1cef4656-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:24:34', 1, 58, NULL),
(866, '1cef4b2e-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:24:34', 1, 58, NULL),
(867, '1cef4c8c-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:24:34', 1, 58, NULL),
(868, '1cef4dc2-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:24:34', 1, 58, NULL),
(869, '1cef4ef8-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:24:34', 1, 58, NULL),
(870, '1cef501a-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:24:34', 1, 58, NULL),
(871, '1cef53e4-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:24:34', 1, 58, NULL),
(872, '1cef5506-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:24:34', 1, 58, NULL),
(873, '1cef57e0-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:24:34', 1, 58, NULL),
(874, '1cef58e4-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:24:34', 1, 58, NULL),
(875, '1cef59de-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:24:34', 1, 58, NULL),
(876, '1cef5ad8-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:24:34', 1, 58, NULL),
(877, '1cef5bd2-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:24:34', 1, 58, NULL),
(878, 'ff2d239c-a738-4297-9a7a-99e586932641', NULL, '2023-08-15 15:25:30', 1, 59, NULL),
(879, '0bf16f1e-f4b0-4638-ac7d-a6bcbd56b552', NULL, '2023-08-15 15:25:30', 1, 59, NULL),
(880, '140cdedb-7369-49c6-ba52-7ff9b12f3b83', NULL, '2023-08-15 15:25:30', 1, 59, NULL),
(881, '68cd45ec-a6df-4548-be06-bc6bf93b4a4d', NULL, '2023-08-15 15:25:30', 1, 59, NULL),
(882, 'c5cce9e0-e66d-4c6b-916b-1037c8fed025', NULL, '2023-08-15 15:25:30', 1, 59, NULL),
(883, 'cb5d4272-e56d-4079-8bb7-77eb47ec8854', NULL, '2023-08-15 15:25:30', 1, 59, NULL),
(884, '6aeddaef-cf12-4bd6-b4e3-b0ce2a4280e1', NULL, '2023-08-15 15:25:30', 1, 59, NULL),
(885, 'f8c54786-7e06-4447-a756-308219aa1571', NULL, '2023-08-15 15:25:30', 1, 59, NULL),
(886, 'd60b2c47-fff0-4fa6-bdb2-b4504c70afbf', NULL, '2023-08-15 15:25:30', 1, 59, NULL),
(887, '95657c77-692e-4ae9-9767-b0b087f2168f', NULL, '2023-08-15 15:25:30', 1, 59, NULL),
(888, 'd8a84f07-a428-4629-8ab0-5175f54a3ed8', NULL, '2023-08-15 15:25:30', 1, 59, NULL),
(889, '669d6a58-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:26:41', 1, 60, NULL),
(890, '669d6e04-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:26:41', 1, 60, NULL),
(891, '669d6f58-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:26:41', 1, 60, NULL),
(892, '669d7098-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:26:41', 1, 60, NULL),
(893, '669d71a6-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:26:41', 1, 60, NULL),
(894, '669d72b4-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:26:41', 1, 60, NULL),
(895, '669d73ae-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:26:41', 1, 60, NULL),
(896, '669d78fe-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:26:41', 1, 60, NULL),
(897, '669d7a34-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:26:41', 1, 60, NULL),
(898, '669d7b4c-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:26:41', 1, 60, NULL),
(899, '669d7c50-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:26:41', 1, 60, NULL),
(900, '669d7d4a-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:26:41', 1, 60, NULL),
(901, '669d7e44-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:26:41', 1, 60, NULL),
(902, '669d7f3e-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:26:41', 1, 60, NULL),
(903, '669d8038-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:26:41', 1, 60, NULL),
(904, '4f0860f9-5a7b-4393-a82f-3e06be8ebb0f', NULL, '2023-08-15 15:27:36', 1, 61, NULL),
(905, '92d47478-3734-4af8-ac1c-9547819b054a', NULL, '2023-08-15 15:27:36', 1, 61, NULL),
(906, '32c1dc7d-cb55-4940-83a1-1eabe5dfb648', NULL, '2023-08-15 15:27:36', 1, 61, NULL),
(907, 'a1cf8907-feaf-420e-b464-5aec72bb2fcf', NULL, '2023-08-15 15:27:36', 1, 61, NULL),
(908, '5836fcb4-4913-48d4-b3c9-f2511df4a164', NULL, '2023-08-15 15:27:36', 1, 61, NULL),
(909, 'e9eed894-1a56-4f5f-b4a6-660b0b16509f', NULL, '2023-08-15 15:27:36', 1, 61, NULL),
(910, '59531190-632b-4808-9994-895cd736a582', NULL, '2023-08-15 15:27:36', 1, 61, NULL),
(911, 'a49991f6-1e4f-4528-a58e-18b551009592', NULL, '2023-08-15 15:27:36', 1, 61, NULL),
(912, 'c73ffa58-4a42-4209-9e50-14d0523863dc', NULL, '2023-08-15 15:27:36', 1, 61, NULL),
(913, 'f40dfd1c-2a84-43d5-b2d2-8b3c4a5f5602', NULL, '2023-08-15 15:27:36', 1, 61, NULL),
(914, '7da9835f-aec7-4bd0-8d7c-20d231fc1f30', NULL, '2023-08-15 15:27:36', 1, 61, NULL),
(915, 'f63ea28a-247a-4c04-a5ec-f18d82bb7b2c', NULL, '2023-08-15 15:27:36', 1, 61, NULL),
(916, '4c9b9159-b28b-4914-a3f7-6d012d8a8e56', NULL, '2023-08-15 15:27:36', 1, 61, NULL),
(917, '20ace288-4a60-4725-9d26-b7e0a84ad4c9', NULL, '2023-08-15 15:27:36', 1, 61, NULL),
(918, 'bbe8d5b3-e78b-45ca-8192-8ce9a181084c', NULL, '2023-08-15 15:27:36', 1, 61, NULL),
(919, '176e0397-0c36-4e6d-bb8d-5a2882117905', NULL, '2023-08-15 15:27:36', 1, 61, NULL),
(920, 'a535c4fe-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:28:19', 1, 62, NULL),
(921, 'a535c7a6-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:28:19', 1, 62, NULL),
(922, 'a535c8e6-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:28:19', 1, 62, NULL),
(923, 'a535c9f4-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:28:19', 1, 62, NULL),
(924, 'a535d372-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:28:19', 1, 62, NULL),
(925, 'a535d610-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:28:19', 1, 62, NULL),
(926, 'a535d782-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:28:19', 1, 62, NULL),
(927, 'a535d8e0-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:28:19', 1, 62, NULL),
(928, 'a535da34-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:28:19', 1, 62, NULL),
(929, 'a535e1c8-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:28:19', 1, 62, NULL),
(930, 'a535e2f4-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:28:19', 1, 62, NULL),
(931, 'a535e42a-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:28:19', 1, 62, NULL),
(932, 'a535e52e-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:28:19', 1, 62, NULL),
(933, '4a3e36d6-30ca-4e11-b152-3031459eb7e5', NULL, '2023-08-15 15:29:05', 1, 63, NULL),
(934, '24e77a0e-b336-431c-a666-d60772243b56', NULL, '2023-08-15 15:29:05', 1, 63, NULL),
(935, 'cd34a5b4-2521-4083-b506-5b140beb95ce', NULL, '2023-08-15 15:29:05', 1, 63, NULL),
(936, '41f89423-b954-4fd4-8cf2-138ad0e4c9fe', NULL, '2023-08-15 15:29:05', 1, 63, NULL),
(937, 'e29222ff-07a1-4bc3-a151-1b98f0595077', NULL, '2023-08-15 15:29:05', 1, 63, NULL),
(938, '33e87f30-329a-49f2-9753-745021786c80', NULL, '2023-08-15 15:29:05', 1, 63, NULL),
(939, 'cfad014a-56d0-42ae-95d0-ed7d3879b4a1', NULL, '2023-08-15 15:29:05', 1, 63, NULL),
(940, '4afb7066-4540-4c4e-923e-b4ec8f621d31', NULL, '2023-08-15 15:29:05', 1, 63, NULL),
(941, 'd1d64c6f-f7a3-4c20-b914-d169b16884ea', NULL, '2023-08-15 15:29:05', 1, 63, NULL),
(942, '38e198bd-be02-4c2f-b0e5-c5269365110c', NULL, '2023-08-15 15:29:05', 1, 63, NULL),
(943, '59404428-0c80-44ef-9ce2-f93373acfe7f', NULL, '2023-08-15 15:29:05', 1, 63, NULL),
(944, 'a3719bfa-2014-4499-84c5-432a1eb3fc07', NULL, '2023-08-15 15:29:05', 1, 63, NULL),
(945, '848597bf-549e-4d2d-b073-6204b212fb7c', NULL, '2023-08-15 15:29:05', 1, 63, NULL),
(946, '307d4214-a620-420a-9dd8-85d4e4b10721', NULL, '2023-08-15 15:29:05', 1, 63, NULL),
(947, '49b3ddca-3342-4d73-9ea3-9aa0d96e26fb', NULL, '2023-08-15 15:29:05', 1, 63, NULL),
(948, 'e2360235-2f17-49f5-a246-fc94ae1f3efc', NULL, '2023-08-15 15:29:05', 1, 63, NULL),
(949, '86778ea2-19d0-4651-80e8-f8ff426f53bb', NULL, '2023-08-15 15:29:05', 1, 63, NULL),
(950, 'e1f9e94c-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(951, 'e1f9ebb8-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(952, 'e1f9ed02-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(953, 'e1f9ee2e-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(954, 'e1f9ef50-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(955, 'e1f9f220-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(956, 'e1f9f34c-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(957, 'e1f9f45a-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(958, 'e1f9f586-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(959, 'e1f9f7ac-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(960, 'e1f9f8c4-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(961, 'e1f9fa2c-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(962, 'e1f9fb58-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(963, 'e1f9fcde-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(964, 'e1f9fdf6-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(965, 'e1fa0120-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(966, 'e1fa0256-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(967, 'e1fa0378-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(968, 'e1fa0490-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(969, 'e1fa059e-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(970, 'e1fa077e-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(971, 'e1fa088c-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(972, 'e1fa099a-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(973, 'e1fa0aa8-3b45-11ee-be56-0242ac120002', NULL, '2023-08-15 15:30:05', 1, 64, NULL),
(974, 'a28a907c-3df2-11ee-be56-0242ac120002', NULL, '2023-08-19 01:12:26', 1, 67, NULL),
(975, 'a28a948c-3df2-11ee-be56-0242ac120002', NULL, '2023-08-19 01:12:26', 1, 67, NULL),
(976, 'a28a9630-3df2-11ee-be56-0242ac120002', '2023-08-19 16:00:34', '2023-08-19 01:12:26', 1, 67, NULL),
(977, 'a28a97de-3df2-11ee-be56-0242ac120002', '2023-08-19 16:00:34', '2023-08-19 01:12:26', 1, 67, NULL),
(978, 'a28a9928-3df2-11ee-be56-0242ac120002', '2023-08-21 00:25:21', '2023-08-19 01:12:26', 1, 67, NULL),
(979, 'a28a9a4a-3df2-11ee-be56-0242ac120002', '2023-08-21 22:32:06', '2023-08-19 01:12:26', 1, 67, NULL),
(980, 'a28a9b94-3df2-11ee-be56-0242ac120002', NULL, '2023-08-19 01:12:26', 1, 67, NULL),
(981, 'a28a9e5a-3df2-11ee-be56-0242ac120002', NULL, '2023-08-19 01:12:26', 1, 67, NULL),
(982, 'a28a9f86-3df2-11ee-be56-0242ac120002', NULL, '2023-08-19 01:12:26', 1, 67, NULL),
(983, 'a28aa116-3df2-11ee-be56-0242ac120002', NULL, '2023-08-19 01:12:26', 1, 67, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `id_thuong_hieu` int(11) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `mo_ta_thuong_hieu` varchar(128) NOT NULL,
  `ten_thuong_hieu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thuonghieu`
--

INSERT INTO `thuonghieu` (`id_thuong_hieu`, `enabled`, `mo_ta_thuong_hieu`, `ten_thuong_hieu`) VALUES
(1, b'1', 'Audemars Piguet là biểu tượng của sự tinh tế và đẳng cấp, với các mẫu đồng hồ chế tác thủ công mang trong mình sự kết hợp hoàn h', 'Audemars Piguet'),
(2, b'1', 'Omega, là một biểu tượng của sự độc quyền và đẳng cấp, được biết đến với việc làm việc chính thức trong nhiều chương trình thám ', 'Omega'),
(3, b'1', 'Blancpain được xem như một huyền thoại trong thế giới đồng hồ cao cấp, với các sản phẩm thủ công tỉ mỉ và sự tập trung vào sự ti', 'Blancpain'),
(4, b'1', 'Rolex không chỉ là biểu tượng của thời gian đẳng cấp mà còn thể hiện sự thành công và sự chuẩn mực trong thiết kế đồng hồ thế gi', 'Rolex'),
(5, b'1', 'Longines mang trong mình sự tinh tế và truyền thống của đồng hồ Thụy Sĩ, với thiết kế thanh lịch và đa dạng phong cách, phù hợp ', 'Longines'),
(6, b'1', 'Olympia Star tỏa sáng với sự kết hợp tinh tế giữa thiết kế hiện đại và giá trị truyền thống, thể hiện sự lôi cuốn và phong cách ', 'Olympia Star'),
(7, b'1', 'Citizen nổi bật với tiên phong trong công nghệ đồng hồ eco-drive, kết hợp tính năng thời trang với sự bền bỉ và tiết kiệm năng l', 'Citizen'),
(8, b'1', 'Seiko là biểu tượng của sự đa dạng và chất lượng, với mẫu mã phong phú từ đồng hồ cơ cổ điển đến các dòng sản phẩm hiện đại và đ', 'Seiko'),
(9, b'1', 'Ogival mang trong mình vẻ đẹp cổ điển và sự tinh tế, thể hiện sự chú trọng đến chi tiết và phong cách truyền thống.', 'Ogival'),
(10, b'1', 'Thương hiệu đồng hồ Casio nổi tiếng với sự kết hợp giữa thiết kế hiện đại và tính năng đa dạng, phù hợp cho nhiều phong cách và ', 'Casio'),
(11, b'1', 'Đồng hồ Orient mang đậm phong cách Nhật Bản, chú trọng vào sự tinh tế trong thiết kế và chất lượng đáng tin cậy.', 'Orient');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vatlieu`
--

CREATE TABLE `vatlieu` (
  `id_vat_lieu` int(11) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `mo_ta_vat_lieu` varchar(255) DEFAULT NULL,
  `ten_vat_lieu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `vatlieu`
--

INSERT INTO `vatlieu` (`id_vat_lieu`, `enabled`, `mo_ta_vat_lieu`, `ten_vat_lieu`) VALUES
(1, b'1', 'Vỏ đồng hồ làm bằng thép không gỉ luôn toát lên nét mới mẻ, sang trọng, và đặc biệt là nó có thể phối được với nhiều phong cách trang phục khác nhau.', 'Thép không gỉ'),
(2, b'1', 'Thường xuất hiện ở các thương hiệu cao cấp và dòng sản phẩm cổ điển hoặc phái nữ, vỏ đồng hồ bằng vàng luôn mang vẻ đẹp sang trọng, đẳng cấp; bởi giá thành của vàng thường cao hơn so với các chất liệu khác.', 'Vàng'),
(3, b'1', 'Titanium được biết đến là chất liệu hoàn hảo mà thương hiệu Citizen tin dùng trong dòng sản phẩm Eco-drive , bởi chính hãng này đã phát triển công nghệ riêng để giải quyết vấn đề nhằm chống lại khả năng gây dị ứng của nickel và các kim loại khác.', 'Titanium'),
(4, b'1', 'Ceramic hay còn gọi là gốm, sứ. Với việc sở hữu một chiếc đồng hồ có vỏ làm từ chất liệu gốm thì  bạn không phải lo nó hỏng hóc do gỉ sét hay bị xước xát. Bạn chỉ cần lưu ý giữ gìn không để nó va đập mạnh thì chiếc đồng hồ của bạn sẽ gần như “bất tử”.', 'Ceramic'),
(5, b'1', 'Bạch kim hay còn gọi là Platinum là một nguyên tố kim loại quý hiếm trên thế giới từng được phong là “nữ hoàng của các kim loại”. Nó sở hữu màu trắng ánh kim tự nhiên, sáng bóng, khi dùng để chế tác trang sức hoặc vỏ đồng hồ thì không cần phải xi mạ thêm.', 'Bạch kim'),
(6, b'1', 'Tantalum là nguyên tố hiếm và có nhiều đặc điểm tương tự như Titanium. Thuộc tính của Tantalum có màu xám, cứng, nặng, dễ uốn, dễ gia công, chống ăn mòn bởi axít rất tốt', 'Tantalum');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anhsanpham`
--
ALTER TABLE `anhsanpham`
  ADD PRIMARY KEY (`id_anh_san_pham`),
  ADD KEY `FK3uxj9w2xtdj215ki5gluinti6` (`id_san_pham`);

--
-- Chỉ mục cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD PRIMARY KEY (`id_chi_tiet_gio_hang`),
  ADD KEY `FKod4g3nfpyvpx30rtwi5j8n8u8` (`id_chi_tiet_san_pham`),
  ADD KEY `FKnhq1i00ysl2m6cf0u2apwqmxd` (`id_gio_hang`);

--
-- Chỉ mục cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`id_chi_tiet_san_pham`),
  ADD KEY `FKjmhk4ycj1cb2hgreee187qv0n` (`id_day_deo`),
  ADD KEY `FKs1b4y46nmjuddw3rr8kv1su6m` (`id_khuyen_mai`),
  ADD KEY `FKr8rtyd39o8vyqkl4v7uxbe9ev` (`id_kich_co`),
  ADD KEY `FK51ib1k91pyvvqj9nxo7in7x5j` (`id_mau_sac`),
  ADD KEY `FKiemodmjm6trkaj3p75vc0pque` (`id_san_pham`),
  ADD KEY `FKet2w5pakhwntob6gop3v00lyw` (`id_vat_lieu`);

--
-- Chỉ mục cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`id_chuc_vu`),
  ADD UNIQUE KEY `UK_51ypgplq5wu9nuy67738ofcto` (`ten_chuc_vu`);

--
-- Chỉ mục cho bảng `cuahang`
--
ALTER TABLE `cuahang`
  ADD PRIMARY KEY (`id_cua_hang`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_oj8mpf4ment9fi3qs9s4ati6a` (`ten`);

--
-- Chỉ mục cho bảng `daydeo`
--
ALTER TABLE `daydeo`
  ADD PRIMARY KEY (`id_day_deo`),
  ADD UNIQUE KEY `UK_ausdrvee8iejkh7yrdd3077ys` (`ten_day_deo`);

--
-- Chỉ mục cho bảng `diachi`
--
ALTER TABLE `diachi`
  ADD PRIMARY KEY (`id_dia_chi`),
  ADD KEY `FKir0s3utpcefjccnbgo3f60u8m` (`id_khach_hang`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id_don_hang`),
  ADD KEY `FK6wt5nds3lj1cb1kjvduut9r8` (`id_khach_hang`),
  ADD KEY `FKfq0ei47hkjgdlojk22u259sdy` (`id_nhan_vien`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id_gio_hang`),
  ADD KEY `FK61qmpovdk1da8mjovst4xfxtq` (`id_khach_hang`);

--
-- Chỉ mục cho bảng `hoadonchitiet`
--
ALTER TABLE `hoadonchitiet`
  ADD PRIMARY KEY (`id_hoa_don_chi_tiet`),
  ADD KEY `FKqxqfsarsyvquf2cvi1p9kmhl0` (`id_chi_tiet_san_pham`),
  ADD KEY `FKktmtuks6qc1dy0qsqxx1xpuev` (`id_don_hang`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id_khach_hang`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`id_khuyen_mai`),
  ADD UNIQUE KEY `UK_jjoxktb95tsm9mvdpcq3ap1w5` (`ma_khuyen_mai`),
  ADD UNIQUE KEY `UK_rf6o170lvdtnbc4ujfp15xtqb` (`ten_khuyen_mai`);

--
-- Chỉ mục cho bảng `kichco`
--
ALTER TABLE `kichco`
  ADD PRIMARY KEY (`id_kich_co`);

--
-- Chỉ mục cho bảng `mausac`
--
ALTER TABLE `mausac`
  ADD PRIMARY KEY (`id_mau_sac`);

--
-- Chỉ mục cho bảng `nhanvien_chucvu`
--
ALTER TABLE `nhanvien_chucvu`
  ADD PRIMARY KEY (`nhanvien_id`,`chucvu_id`),
  ADD KEY `FK7plls1lpbflpgwq95yacttmch` (`chucvu_id`);

--
-- Chỉ mục cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_12waxxsiniyddv2lt9ianfh8a` (`email`);

--
-- Chỉ mục cho bảng `password_reset_token`
--
ALTER TABLE `password_reset_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKlfkt7a8ky5d7andd70nfihbsq` (`id_khach_hang`);

--
-- Chỉ mục cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`id_phan_hoi`),
  ADD KEY `FK8jl39ltygkp6c6uha8he6gg1c` (`id_chi_tiet_san_pham`),
  ADD KEY `FKku6t245xkm53k0pi7mfkys3t3` (`id_khach_hang`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_san_pham`),
  ADD KEY `FKf24pmx2bu35kw48cm6mnc14hj` (`id_danh_muc`),
  ADD KEY `FK1ddreoiaqcb2igtefppq2jq6k` (`id_thuong_hieu`);

--
-- Chỉ mục cho bảng `seri`
--
ALTER TABLE `seri`
  ADD PRIMARY KEY (`id_seri`),
  ADD KEY `FK72k35v0vklglfvvq9ksemhf4k` (`id_chi_tiet_san_pham`),
  ADD KEY `FKt68f0eskl00ipqw4kmo0bn7nr` (`id_hoa_don_chi_tiet`);

--
-- Chỉ mục cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`id_thuong_hieu`),
  ADD UNIQUE KEY `UK_snvaotlj4m7k43khh4yemhoai` (`mo_ta_thuong_hieu`),
  ADD UNIQUE KEY `UK_16al54hk681703f2nkf7yvqni` (`ten_thuong_hieu`);

--
-- Chỉ mục cho bảng `vatlieu`
--
ALTER TABLE `vatlieu`
  ADD PRIMARY KEY (`id_vat_lieu`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anhsanpham`
--
ALTER TABLE `anhsanpham`
  MODIFY `id_anh_san_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  MODIFY `id_chi_tiet_gio_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  MODIFY `id_chi_tiet_san_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  MODIFY `id_chuc_vu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cuahang`
--
ALTER TABLE `cuahang`
  MODIFY `id_cua_hang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `daydeo`
--
ALTER TABLE `daydeo`
  MODIFY `id_day_deo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `diachi`
--
ALTER TABLE `diachi`
  MODIFY `id_dia_chi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id_don_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id_gio_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `hoadonchitiet`
--
ALTER TABLE `hoadonchitiet`
  MODIFY `id_hoa_don_chi_tiet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id_khach_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `id_khuyen_mai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `kichco`
--
ALTER TABLE `kichco`
  MODIFY `id_kich_co` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `mausac`
--
ALTER TABLE `mausac`
  MODIFY `id_mau_sac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nhan_vien`
--
ALTER TABLE `nhan_vien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  MODIFY `id_phan_hoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_san_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `seri`
--
ALTER TABLE `seri`
  MODIFY `id_seri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=984;

--
-- AUTO_INCREMENT cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `id_thuong_hieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `vatlieu`
--
ALTER TABLE `vatlieu`
  MODIFY `id_vat_lieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `anhsanpham`
--
ALTER TABLE `anhsanpham`
  ADD CONSTRAINT `FK3uxj9w2xtdj215ki5gluinti6` FOREIGN KEY (`id_san_pham`) REFERENCES `sanpham` (`id_san_pham`);

--
-- Các ràng buộc cho bảng `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD CONSTRAINT `FKnhq1i00ysl2m6cf0u2apwqmxd` FOREIGN KEY (`id_gio_hang`) REFERENCES `giohang` (`id_gio_hang`),
  ADD CONSTRAINT `FKod4g3nfpyvpx30rtwi5j8n8u8` FOREIGN KEY (`id_chi_tiet_san_pham`) REFERENCES `chitietsanpham` (`id_chi_tiet_san_pham`);

--
-- Các ràng buộc cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD CONSTRAINT `FK51ib1k91pyvvqj9nxo7in7x5j` FOREIGN KEY (`id_mau_sac`) REFERENCES `mausac` (`id_mau_sac`),
  ADD CONSTRAINT `FKet2w5pakhwntob6gop3v00lyw` FOREIGN KEY (`id_vat_lieu`) REFERENCES `vatlieu` (`id_vat_lieu`),
  ADD CONSTRAINT `FKiemodmjm6trkaj3p75vc0pque` FOREIGN KEY (`id_san_pham`) REFERENCES `sanpham` (`id_san_pham`),
  ADD CONSTRAINT `FKjmhk4ycj1cb2hgreee187qv0n` FOREIGN KEY (`id_day_deo`) REFERENCES `daydeo` (`id_day_deo`),
  ADD CONSTRAINT `FKr8rtyd39o8vyqkl4v7uxbe9ev` FOREIGN KEY (`id_kich_co`) REFERENCES `kichco` (`id_kich_co`),
  ADD CONSTRAINT `FKs1b4y46nmjuddw3rr8kv1su6m` FOREIGN KEY (`id_khuyen_mai`) REFERENCES `khuyenmai` (`id_khuyen_mai`);

--
-- Các ràng buộc cho bảng `diachi`
--
ALTER TABLE `diachi`
  ADD CONSTRAINT `FKir0s3utpcefjccnbgo3f60u8m` FOREIGN KEY (`id_khach_hang`) REFERENCES `khachhang` (`id_khach_hang`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `FK6wt5nds3lj1cb1kjvduut9r8` FOREIGN KEY (`id_khach_hang`) REFERENCES `khachhang` (`id_khach_hang`),
  ADD CONSTRAINT `FKfq0ei47hkjgdlojk22u259sdy` FOREIGN KEY (`id_nhan_vien`) REFERENCES `nhan_vien` (`id`);

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `FK61qmpovdk1da8mjovst4xfxtq` FOREIGN KEY (`id_khach_hang`) REFERENCES `khachhang` (`id_khach_hang`);

--
-- Các ràng buộc cho bảng `hoadonchitiet`
--
ALTER TABLE `hoadonchitiet`
  ADD CONSTRAINT `FKktmtuks6qc1dy0qsqxx1xpuev` FOREIGN KEY (`id_don_hang`) REFERENCES `donhang` (`id_don_hang`),
  ADD CONSTRAINT `FKqxqfsarsyvquf2cvi1p9kmhl0` FOREIGN KEY (`id_chi_tiet_san_pham`) REFERENCES `chitietsanpham` (`id_chi_tiet_san_pham`);

--
-- Các ràng buộc cho bảng `nhanvien_chucvu`
--
ALTER TABLE `nhanvien_chucvu`
  ADD CONSTRAINT `FK7plls1lpbflpgwq95yacttmch` FOREIGN KEY (`chucvu_id`) REFERENCES `chucvu` (`id_chuc_vu`),
  ADD CONSTRAINT `FKdcdk5vduu7ostneedw4el0d00` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhan_vien` (`id`);

--
-- Các ràng buộc cho bảng `password_reset_token`
--
ALTER TABLE `password_reset_token`
  ADD CONSTRAINT `FKlfkt7a8ky5d7andd70nfihbsq` FOREIGN KEY (`id_khach_hang`) REFERENCES `khachhang` (`id_khach_hang`);

--
-- Các ràng buộc cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD CONSTRAINT `FK8jl39ltygkp6c6uha8he6gg1c` FOREIGN KEY (`id_chi_tiet_san_pham`) REFERENCES `chitietsanpham` (`id_chi_tiet_san_pham`),
  ADD CONSTRAINT `FKku6t245xkm53k0pi7mfkys3t3` FOREIGN KEY (`id_khach_hang`) REFERENCES `khachhang` (`id_khach_hang`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK1ddreoiaqcb2igtefppq2jq6k` FOREIGN KEY (`id_thuong_hieu`) REFERENCES `thuonghieu` (`id_thuong_hieu`),
  ADD CONSTRAINT `FKf24pmx2bu35kw48cm6mnc14hj` FOREIGN KEY (`id_danh_muc`) REFERENCES `danhmuc` (`id`);

--
-- Các ràng buộc cho bảng `seri`
--
ALTER TABLE `seri`
  ADD CONSTRAINT `FK72k35v0vklglfvvq9ksemhf4k` FOREIGN KEY (`id_chi_tiet_san_pham`) REFERENCES `chitietsanpham` (`id_chi_tiet_san_pham`),
  ADD CONSTRAINT `FKt68f0eskl00ipqw4kmo0bn7nr` FOREIGN KEY (`id_hoa_don_chi_tiet`) REFERENCES `hoadonchitiet` (`id_hoa_don_chi_tiet`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
