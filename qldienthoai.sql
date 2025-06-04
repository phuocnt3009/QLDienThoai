-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 29, 2025 lúc 02:40 PM
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
-- Cơ sở dữ liệu: `qldienthoai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietddh`
--

CREATE TABLE `chitietddh` (
  `MaDDH` varchar(10) NOT NULL,
  `MaSP` varchar(10) NOT NULL,
  `MaMau` varchar(10) NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietddh`
--

INSERT INTO `chitietddh` (`MaDDH`, `MaSP`, `MaMau`, `SoLuong`) VALUES
('DH001', 'SP001', 'M005', 1),
('DH001', 'SP002', 'M006', 2),
('DH002', 'SP003', 'M002', 1),
('DH002', 'SP004', 'M004', 3),
('DH002', 'SP005', 'M002', 2),
('DH003', 'SP006', 'M002', 1),
('DH004', 'SP007', 'M001', 3),
('DH004', 'SP008', 'M001', 1),
('DH005', 'SP009', 'M005', 1),
('DH005', 'SP010', 'M002', 2),
('DH005', 'SP011', 'M006', 1),
('DH006', 'SP012', 'M006', 2),
('DH006', 'SP013', 'M001', 1),
('DH007', 'SP014', 'M005', 3),
('DH008', 'SP015', 'M005', 1),
('DH008', 'SP016', 'M002', 2),
('DH009', 'SP017', 'M005', 2),
('DH009', 'SP018', 'M003', 1),
('DH009', 'SP019', 'M004', 3),
('DH010', 'SP020', 'M002', 1),
('DH011', 'SP021', 'M005', 2),
('DH011', 'SP022', 'M004', 1),
('DH012', 'SP023', 'M003', 3),
('DH012', 'SP024', 'M004', 1),
('DH012', 'SP025', 'M002', 2),
('DH013', 'SP026', 'M005', 1),
('DH014', 'SP027', 'M005', 2),
('DH014', 'SP028', 'M005', 1),
('DH015', 'SP001', 'M005', 2),
('DH015', 'SP029', 'M002', 1),
('DH015', 'SP030', 'M006', 3),
('DH016', 'SP002', 'M005', 2),
('DH017', 'SP003', 'M002', 1),
('DH017', 'SP004', 'M004', 1),
('DH018', 'SP005', 'M005', 2),
('DH018', 'SP006', 'M002', 1),
('DH018', 'SP007', 'M001', 3),
('DH019', 'SP008', 'M005', 1),
('DH020', 'SP009', 'M005', 2),
('DH020', 'SP010', 'M002', 1),
('DH021', 'SP011', 'M005', 1),
('DH021', 'SP012', 'M006', 2),
('DH021', 'SP013', 'M001', 1),
('DH022', 'SP014', 'M002', 1),
('DH023', 'SP015', 'M005', 3),
('DH023', 'SP016', 'M002', 1),
('DH024', 'SP017', 'M005', 1),
('DH024', 'SP018', 'M002', 2),
('DH024', 'SP019', 'M005', 1),
('DH025', 'SP020', 'M002', 2),
('DH026', 'SP021', 'M004', 1),
('DH026', 'SP022', 'M004', 3),
('DH027', 'SP023', 'M006', 1),
('DH027', 'SP024', 'M004', 2),
('DH027', 'SP025', 'M005', 1),
('DH028', 'SP026', 'M004', 2),
('DH029', 'SP027', 'M005', 1),
('DH029', 'SP028', 'M005', 2),
('DH030', 'SP001', 'M005', 3),
('DH030', 'SP029', 'M005', 2),
('DH030', 'SP030', 'M006', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `MaSP` varchar(10) NOT NULL,
  `MaMau` varchar(10) NOT NULL,
  `AnhBia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`MaSP`, `MaMau`, `AnhBia`) VALUES
('SP001', 'M004', 'sp1_trang.jpg'),
('SP001', 'M005', 'sp1_den.jpg'),
('SP002', 'M005', 'sp2_den.jpg'),
('SP002', 'M006', 'sp2_xam.jpg'),
('SP003', 'M002', 'sp3_xanh.jpg'),
('SP003', 'M005', 'sp3_den.jpg'),
('SP004', 'M004', 'sp4_trang.jpg'),
('SP005', 'M002', 'sp5_xanh.jpg'),
('SP005', 'M004', 'sp5_trang.jpg'),
('SP005', 'M005', 'sp5_den.jpg'),
('SP006', 'M002', 'sp6_xanh.jpg'),
('SP006', 'M005', 'sp6_den.jpg'),
('SP007', 'M001', 'sp7_do.jpg'),
('SP007', 'M002', 'sp7_xanh.jpg'),
('SP008', 'M001', 'sp8_do.jpg'),
('SP008', 'M002', 'sp8_xanh.jpg'),
('SP008', 'M005', 'sp8_den.jpg'),
('SP009', 'M005', 'sp9_den.jpg'),
('SP010', 'M002', 'sp10_xanh.jpg'),
('SP011', 'M005', 'sp11_den.jpg'),
('SP011', 'M006', 'sp11_xam.jpg'),
('SP012', 'M006', 'sp12_xam.jpg'),
('SP013', 'M001', 'sp13_do.jpg'),
('SP013', 'M002', 'sp13_xanh.jpg'),
('SP014', 'M002', 'sp14_xanh.jpg'),
('SP014', 'M005', 'sp14_den.jpg'),
('SP014', 'M006', 'sp14_xam.jpg'),
('SP015', 'M005', 'sp15_den.jpg'),
('SP016', 'M002', 'sp16_xanh.jpg'),
('SP017', 'M003', 'sp17_vang.jpg'),
('SP017', 'M005', 'sp17_den.jpg'),
('SP018', 'M001', 'sp18_do.jpg'),
('SP018', 'M002', 'sp18_xanh.jpg'),
('SP018', 'M003', 'sp18_vang.jpg'),
('SP019', 'M004', 'sp19_trang.jpg'),
('SP019', 'M005', 'sp19_den.jpg'),
('SP020', 'M002', 'sp20_xanh.jpg'),
('SP021', 'M004', 'sp21_trang.jpg'),
('SP021', 'M005', 'sp21_den.jpg'),
('SP022', 'M004', 'sp22_trang.jpg'),
('SP023', 'M003', 'sp23_vang.jpg'),
('SP023', 'M006', 'sp23_xam.jpg'),
('SP024', 'M004', 'sp24_trang.jpg'),
('SP025', 'M002', 'sp25_xanh.jpg'),
('SP025', 'M005', 'sp25_den.jpg'),
('SP026', 'M004', 'sp26_trang.jpg'),
('SP026', 'M005', 'sp26_den.jpg'),
('SP027', 'M005', 'sp27_den.jpg'),
('SP028', 'M005', 'sp28_den.jpg'),
('SP029', 'M002', 'sp29_xanh.jpg'),
('SP029', 'M005', 'sp29_den.jpg'),
('SP030', 'M002', 'sp30_xanh.jpg'),
('SP030', 'M006', 'sp30_xam.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

CREATE TABLE `dondathang` (
  `MaDDH` varchar(10) NOT NULL,
  `Ngay` datetime NOT NULL,
  `TinhTrang` int(11) NOT NULL,
  `ThanhToan` int(11) NOT NULL,
  `DiaChiNhanHang` varchar(100) NOT NULL,
  `MaKhachHang` varchar(10) NOT NULL,
  `MaNhanVien` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dondathang`
--

INSERT INTO `dondathang` (`MaDDH`, `Ngay`, `TinhTrang`, `ThanhToan`, `DiaChiNhanHang`, `MaKhachHang`, `MaNhanVien`) VALUES
('DH001', '2025-01-06 09:00:00', 2, 0, '78 Trần Hưng Đạo, Nha Trang, Khánh Hòa', 'USER003', 'USER008'),
('DH002', '2025-01-06 09:50:00', 2, 1, '45 Nguyễn Bỉnh Khiêm, Nha Trang, Khánh Hòa', 'USER004', 'USER008'),
('DH003', '2025-01-06 10:01:00', 2, 1, '12 Lê Lợi, Nha Trang, Khánh Hòa', 'USER005', 'USER002'),
('DH004', '2025-01-08 10:30:00', 2, 0, '101 Võ Nguyên Giáp, Nha Trang, Khánh Hòa', 'USER006', 'USER002'),
('DH005', '2025-01-10 10:00:00', 3, 0, '200 Trần Phú, Nha Trang, Khánh Hòa', 'USER007', 'USER008'),
('DH006', '2025-01-10 11:30:00', 3, 1, '33 Phan Bội Châu, Nha Trang, Khánh Hòa', 'USER003', 'USER008'),
('DH007', '2025-01-10 15:00:00', 3, 1, '88 Lý Tự Trọng, Nha Trang, Khánh Hòa', 'USER004', 'USER002'),
('DH008', '2025-01-11 12:30:00', 2, 1, '15 Nguyễn Tất Thành, Nha Trang, Khánh Hòa', 'USER005', 'USER002'),
('DH009', '2025-01-11 17:30:00', 3, 0, '67 Hai Bà Trưng, Nha Trang, Khánh Hòa', 'USER006', 'USER002'),
('DH010', '2025-01-11 19:30:00', 2, 1, '99 Lê Duẩn, Nha Trang, Khánh Hòa', 'USER007', 'USER008'),
('DH011', '2025-01-12 14:00:00', 3, 1, '50 Bùi Thị Xuân, Nha Trang, Khánh Hòa', 'USER003', 'USER002'),
('DH012', '2025-01-13 18:30:00', 3, 1, '123 Lê Hồng Phong, Nha Trang, Khánh Hòa', 'USER004', 'USER002'),
('DH013', '2025-01-14 15:57:00', 3, 0, '77 Lê Lợi, Nha Trang, Khánh Hòa', 'USER005', 'USER002'),
('DH014', '2025-01-16 22:30:00', 1, 1, '30 Phan Chu Trinh, Nha Trang, Khánh Hòa', 'USER006', 'USER008'),
('DH015', '2025-01-16 16:01:00', 2, 1, '88 Nguyễn Huệ, Nha Trang, Khánh Hòa', 'USER007', 'USER002'),
('DH016', '2025-01-18 21:30:00', 1, 1, '56 Hùng Vương, Nha Trang, Khánh Hòa', 'USER003', 'USER008'),
('DH017', '2025-01-18 17:15:00', 1, 1, '101 Phạm Văn Đồng, Nha Trang, Khánh Hòa', 'USER004', 'USER002'),
('DH018', '2025-01-19 18:30:00', 1, 1, '44 Lý Thường Kiệt, Nha Trang, Khánh Hòa', 'USER005', 'USER002'),
('DH019', '2025-01-20 11:00:00', 1, 0, '33 Trần Phú, Nha Trang, Khánh Hòa', 'USER006', 'USER008'),
('DH020', '2025-01-20 22:30:00', 1, 1, '200 Nguyễn Trãi, Nha Trang, Khánh Hòa', 'USER007', 'USER008'),
('DH021', '2025-01-22 06:10:00', 1, 1, '150 Đinh Tiên Hoàng, Nha Trang, Khánh Hòa', 'USER003', 'USER008'),
('DH022', '2025-01-23 19:40:00', 0, 1, '89 Võ Văn Kiệt, Nha Trang, Khánh Hòa', 'USER004', NULL),
('DH023', '2025-01-27 20:00:00', 0, 0, '78 Trần Hưng Đạo, Nha Trang, Khánh Hòa', 'USER005', NULL),
('DH024', '2025-02-01 20:30:00', 0, 1, '65 Hòa Bình, Nha Trang, Khánh Hòa', 'USER006', NULL),
('DH025', '2025-02-02 21:00:00', 3, 0, '99 Bình Thuận, Nha Trang, Khánh Hòa', 'USER007', NULL),
('DH026', '2025-02-05 21:30:00', 3, 0, '123 Lê Lợi, Nha Trang, Khánh Hòa', 'USER003', NULL),
('DH027', '2025-02-06 22:00:00', 1, 1, '110 Nguyễn Ái Quốc, Nha Trang, Khánh Hòa', 'USER004', 'USER008'),
('DH028', '2025-02-09 22:30:00', 2, 1, '77 Võ Thị Sáu, Nha Trang, Khánh Hòa', 'USER005', 'USER002'),
('DH029', '2025-02-10 23:00:00', 3, 0, '88 Bùi Thị Xuân, Nha Trang, Khánh Hòa', 'USER006', NULL),
('DH030', '2025-02-10 23:30:00', 3, 1, '101 Phan Đăng Lưu, Nha Trang, Khánh Hòa', 'USER007', 'USER002');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hangsanxuat`
--

CREATE TABLE `hangsanxuat` (
  `MaHSX` varchar(10) NOT NULL,
  `TenHSX` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hangsanxuat`
--

INSERT INTO `hangsanxuat` (`MaHSX`, `TenHSX`) VALUES
('HSX001', 'Samsung'),
('HSX002', 'Apple'),
('HSX003', 'Xiaomi'),
('HSX004', 'Huawei'),
('HSX005', 'Redmi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mausac`
--

CREATE TABLE `mausac` (
  `MaMau` varchar(10) NOT NULL,
  `TenMau` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mausac`
--

INSERT INTO `mausac` (`MaMau`, `TenMau`) VALUES
('M001', 'Đỏ'),
('M002', 'Xanh'),
('M003', 'Vàng'),
('M004', 'Trắng'),
('M005', 'Đen'),
('M006', 'Xám');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaNguoiDung` varchar(10) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `GioiTinh` tinyint(1) DEFAULT 1,
  `SDT` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `MatKhau` varchar(50) NOT NULL,
  `DiaChi` varchar(100) DEFAULT NULL,
  `AnhDaiDien` varchar(30) DEFAULT NULL,
  `VaiTro` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaNguoiDung`, `HoTen`, `GioiTinh`, `SDT`, `Email`, `MatKhau`, `DiaChi`, `AnhDaiDien`, `VaiTro`) VALUES
('USER001', 'Nguyễn Tấn Phước', 1, '0812883630', 'tanphuoc@gmail.com', '12345678', 'Nha Trang - Khánh Hòa', 'images.png', 'AD'),
('USER002', 'Nguyễn Khánh Linh', 1, '0927172612', 'khanhlinh@gmail.com', '01021998', 'Nha Trang - Khánh Hòa', 'user002.jpg', 'NV'),
('USER003', 'Lê Văn Hùng', 1, '0899123456', 'levanhung@gmail.com', 'Hung@123', 'Nha Trang - Khánh Hòa', 'user003.jpg', 'KH'),
('USER004', 'Trần Thị Mai', 0, '0908234567', 'tranthimai@gmail.com', 'maitt456', 'Nha Trang - Khánh Hòa', 'user004.jpg', 'KH'),
('USER005', 'Phạm Minh Tuấn', 1, '0919345678', 'minhtuan@gmail.com', '0901Tuan', 'Nha Trang - Khánh Hòa', 'user005.jpg', 'KH'),
('USER006', 'Hoàng Thị Lan', 1, '0929456789', 'hoanglan@gmail.com', 'hoanglan123', 'Nha Trang - Khánh Hòa', 'user006.jpg', 'KH'),
('USER007', 'Võ Quang Dũng', 1, '0939567890', 'voquangdung@gmail.com', 'DungVo1991', 'Nha Trang - Khánh Hòa', 'user007.jpg', 'KH'),
('USER008', 'Ngô Ngọc Dung', 0, '0972618612', 'ngocdung@gmail.com', '0323@dung', 'Nha Trang - Khánh Hòa', 'user008.jpg', 'NV'),
('USER009', 'b', 0, '1234567843', 'a@gmail.com', '31a32771', 'abc', 'images.png', 'KH'),
('USER010', 'b', 1, '1231231231', 'b@gmail.com', '123456', '123', 'images.png', 'KH'),
('USER011', 'abc', 1, '1231231231', '123@gmail.com', '123456', '123', 'avt.jpg', 'KH');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` varchar(10) NOT NULL,
  `TenSP` varchar(50) NOT NULL,
  `GiaBan` int(11) NOT NULL,
  `Mota` text DEFAULT NULL,
  `Ram` int(11) NOT NULL,
  `DungLuong` int(11) NOT NULL,
  `HeDieuHanh` varchar(50) NOT NULL,
  `MaHSX` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `GiaBan`, `Mota`, `Ram`, `DungLuong`, `HeDieuHanh`, `MaHSX`) VALUES
('SP001', 'Samsung Galaxy S23 Ultra', 30000000, 'Samsung Galaxy S23 Ultra 5G với màn hình Dynamic AMOLED 6.8\", chip Snapdragon 8 Gen 2, 12GB RAM, 256GB lưu trữ, hệ điều hành Android 13, camera 200MP hỗ trợ zoom quang học.', 8, 128, 'Android 13 với One UI 5.1', 'HSX001'),
('SP002', 'IPhone 15 Pro Max', 45000000, 'Apple IPhone 15 Pro Max với màn hình Super Retina XDR, chip A17 Pro hiệu năng vượt trội, 6GB RAM, 256GB lưu trữ, hệ điều hành iOS 17 và thiết kế bằng titan cao cấp.', 6, 256, 'iOS 17', 'HSX002'),
('SP003', 'Xiaomi 13 Pro', 22000000, 'Xiaomi 13 Pro trang bị màn hình AMOLED 6.73\", chip Snapdragon 8 Gen 2, 8GB RAM, 256GB lưu trữ, hệ điều hành Android 13 (MIUI 14), camera Leica 50MP và thiết kế tinh tế.', 8, 256, 'Android 13 với MIUI 14', 'HSX003'),
('SP004', 'Huawei Mate 60 Pro', 32000000, 'Huawei Mate 60 Pro với màn hình OLED 6.82\", chip Kirin 9000S, 8GB RAM, 256GB lưu trữ, hệ điều hành HarmonyOS 3.0, khả năng chụp ảnh đa chức năng và thiết kế sang trọng.', 8, 256, 'HarmonyOS 3.0', 'HSX004'),
('SP005', 'Redmi Note 12 Pro+ 5G', 8500000, 'Redmi Note 12 Pro+ 5G sở hữu màn hình AMOLED 6.67\", chip MediaTek Dimensity 1080, 8GB RAM, 256GB lưu trữ, camera chính 200MP và pin 5000mAh hỗ trợ sạc nhanh.', 8, 256, 'Android 13 với MIUI 14', 'HSX005'),
('SP006', 'Samsung Galaxy A54', 15000000, 'Samsung Galaxy A54 với màn hình Super AMOLED 6.4\", chip Exynos 1380, 8GB RAM, 128GB lưu trữ, hệ điều hành Android 13 với One UI 5.1, thiết kế hiện đại và tiết kiệm năng lượng.', 8, 128, 'Android 13 với One UI 5.1', 'HSX001'),
('SP007', 'IPhone 15 Plus', 35000000, 'Apple IPhone 15 Plus với màn hình Super Retina XDR, chip A17, 6GB RAM, 128GB lưu trữ, hệ điều hành iOS 17, thiết kế sang trọng và hiệu năng vượt trội.', 6, 128, 'iOS 17', 'HSX002'),
('SP008', 'Xiaomi 13 Lite', 12000000, 'Xiaomi 13 Lite với màn hình AMOLED 6.55\", chip Snapdragon 778G, 6GB RAM, 128GB lưu trữ, hệ điều hành Android 13 với MIUI 14, thiết kế mỏng nhẹ và hiệu năng ấn tượng.', 6, 128, 'Android 13 với MIUI 14', 'HSX003'),
('SP009', 'Huawei P60 Pro', 29000000, 'Huawei P60 Pro với màn hình OLED 6.67\", chip Kirin 9000, 8GB RAM, 256GB lưu trữ, hệ điều hành HarmonyOS 3.0, khả năng chụp ảnh chuyên nghiệp và thiết kế tinh tế.', 8, 256, 'HarmonyOS 3.0', 'HSX004'),
('SP010', 'Redmi Note 12', 7000000, 'Redmi Note 12 với màn hình AMOLED 6.5\", chip MediaTek Dimensity 810, 6GB RAM, 128GB lưu trữ, hệ điều hành Android 13 với MIUI 14, thiết kế trẻ trung và hiệu năng ổn định.', 6, 128, 'Android 13 với MIUI 14', 'HSX005'),
('SP011', 'Samsung Galaxy Z Fold 5', 60000000, 'Samsung Galaxy Z Fold 5 với màn hình gập Dynamic AMOLED, chip Snapdragon 8+ Gen 1, 12GB RAM, 512GB lưu trữ, hệ điều hành Android 13 với One UI 5.1, thiết kế đột phá và tính năng độc đáo.', 12, 512, 'Android 13 với One UI 5.1', 'HSX001'),
('SP012', 'IPhone 15', 33000000, 'Apple IPhone 15 với màn hình Super Retina XDR, chip A16, 4GB RAM, 128GB lưu trữ, hệ điều hành iOS 17, thiết kế tinh tế và hiệu năng mượt mà.', 4, 128, 'iOS 17', 'HSX002'),
('SP013', 'Xiaomi 12T Pro', 18000000, 'Xiaomi 12T Pro với màn hình AMOLED 6.67\", chip MediaTek Dimensity 8100, 8GB RAM, 256GB lưu trữ, hệ điều hành Android 12, camera 108MP và thiết kế hiện đại.', 8, 256, 'Android 12', 'HSX003'),
('SP014', 'Huawei Nova 10', 13000000, 'Huawei Nova 10 với màn hình OLED 6.4\", chip Kirin 710, 8GB RAM, 128GB lưu trữ, hệ điều hành HarmonyOS, thiết kế thanh lịch và cấu hình cân đối.', 8, 128, 'HarmonyOS', 'HSX004'),
('SP015', 'Redmi 12C', 4000000, 'Redmi 12C với màn hình LCD 6.5\", chip MediaTek Helio G85, 3GB RAM, 64GB lưu trữ, hệ điều hành Android 12, sản phẩm giá rẻ, phù hợp cho người dùng cơ bản.', 4, 64, 'Android 12', 'HSX005'),
('SP016', 'Samsung Galaxy M14', 7500000, 'Samsung Galaxy M14 với màn hình PLS LCD 6.5\", chip Exynos 850, 4GB RAM, 64GB lưu trữ, hệ điều hành Android 12, pin dung lượng lớn 6000mAh, hiệu năng ổn định.', 4, 64, 'Android 12', 'HSX001'),
('SP017', 'IPhone 14 Pro', 40000000, 'Apple IPhone 14 Pro với màn hình Super Retina XDR, chip A16, 6GB RAM, 128GB lưu trữ, hệ điều hành iOS 16, camera cải tiến và thiết kế cao cấp.', 6, 128, 'iOS 16', 'HSX002'),
('SP018', 'Xiaomi Mi 11 Lite', 10000000, 'Xiaomi Mi 11 Lite với màn hình AMOLED 6.55\", chip Snapdragon 732G, 6GB RAM, 128GB lưu trữ, hệ điều hành Android 11, thiết kế mỏng nhẹ và sang trọng.', 6, 128, 'Android 11', 'HSX003'),
('SP019', 'Huawei Mate 50 Pro', 35000000, 'Huawei Mate 50 Pro với màn hình OLED 6.8\", chip Kirin 9000, 8GB RAM, 256GB lưu trữ, hệ điều hành HarmonyOS 3.0, camera vượt trội và thiết kế đẳng cấp.', 8, 256, 'HarmonyOS 3.0', 'HSX004'),
('SP020', 'Redmi 10', 5500000, 'Redmi 10 với màn hình IPS LCD 6.5\", chip MediaTek Helio G88, 4GB RAM, 64GB lưu trữ, hệ điều hành Android 12, thiết kế trẻ trung và hiệu năng tiết kiệm.', 4, 64, 'Android 12', 'HSX005'),
('SP021', 'Samsung Galaxy A34', 11000000, 'Samsung Galaxy A34 với màn hình Super AMOLED 6.6\", chip Exynos 1380, 6GB RAM, 128GB lưu trữ, hệ điều hành Android 13, thiết kế hiện đại và năng động.', 6, 128, 'Android 13', 'HSX001'),
('SP022', 'IPhone SE (3rd Generation)', 20000000, 'Apple IPhone SE thế hệ 3 với màn hình Retina HD, chip A15 Bionic, 4GB RAM, 64GB lưu trữ, hệ điều hành iOS 15, thiết kế nhỏ gọn nhưng mạnh mẽ.', 4, 64, 'iOS 15', 'HSX002'),
('SP023', 'Xiaomi Poco F4', 15000000, 'Xiaomi Poco F4 với màn hình AMOLED 6.67\", chip Snapdragon 870, 6GB RAM, 128GB lưu trữ, hệ điều hành Android 12, hiệu năng mạnh mẽ và giá cạnh tranh.', 6, 128, 'Android 12', 'HSX003'),
('SP024', 'Huawei P50 Pocket', 45000000, 'Huawei P50 Pocket với thiết kế màn hình gập, màn hình OLED 6.9\", chip Kirin 9000, 8GB RAM, 256GB lưu trữ, hệ điều hành HarmonyOS, sản phẩm đột phá và sang trọng.', 8, 256, 'HarmonyOS', 'HSX004'),
('SP025', 'Redmi Note 11', 6500000, 'Redmi Note 11 với màn hình AMOLED 6.43\", chip MediaTek Helio G88, 4GB RAM, 64GB lưu trữ, hệ điều hành Android 12, thiết kế trẻ trung và giá hợp lý.', 4, 64, 'Android 12', 'HSX005'),
('SP026', 'Samsung Galaxy Z Flip 5', 32000000, 'Samsung Galaxy Z Flip 5 với thiết kế gập độc đáo, màn hình Dynamic AMOLED, chip Snapdragon 8+ Gen 1, 8GB RAM, 256GB lưu trữ, hệ điều hành Android 13, tính năng ấn tượng.', 8, 256, 'Android 13', 'HSX001'),
('SP027', 'IPhone 14', 28000000, 'Apple IPhone 14 với màn hình Super Retina XDR, chip A15, 4GB RAM, 128GB lưu trữ, hệ điều hành iOS 16, thiết kế tinh tế và hiệu năng ổn định.', 4, 128, 'iOS 16', 'HSX002'),
('SP028', 'Redmi Note 12S', 9500000, 'Redmi Note 12S với màn hình IPS LCD 6.67\", chip MediaTek Dimensity 810, 6GB RAM, 128GB lưu trữ, hệ điều hành Android 13, thiết kế năng động và hiệu năng mượt mà.', 6, 128, 'Android 13', 'HSX005'),
('SP029', 'Huawei Nova Y70', 8000000, 'Huawei Nova Y70 với màn hình IPS LCD 6.7\", chip Kirin 710A, 4GB RAM, 64GB lưu trữ, hệ điều hành HarmonyOS, thiết kế trẻ trung và năng động.', 4, 64, 'HarmonyOS', 'HSX004'),
('SP030', 'Samsung Galaxy M33', 9000000, 'Samsung Galaxy M33 với màn hình TFT 6.4\", chip Exynos 1280, 6GB RAM, 128GB lưu trữ, hệ điều hành Android 12, pin dung lượng lớn và thiết kế bền bỉ.', 6, 128, 'Android 12', 'HSX001');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietddh`
--
ALTER TABLE `chitietddh`
  ADD PRIMARY KEY (`MaDDH`,`MaSP`,`MaMau`),
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `MaMau` (`MaMau`);

--
-- Chỉ mục cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`MaSP`,`MaMau`),
  ADD KEY `MaMau` (`MaMau`);

--
-- Chỉ mục cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`MaDDH`),
  ADD KEY `MaKhachHang` (`MaKhachHang`),
  ADD KEY `MaNhanVien` (`MaNhanVien`);

--
-- Chỉ mục cho bảng `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  ADD PRIMARY KEY (`MaHSX`);

--
-- Chỉ mục cho bảng `mausac`
--
ALTER TABLE `mausac`
  ADD PRIMARY KEY (`MaMau`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaNguoiDung`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaHSX` (`MaHSX`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietddh`
--
ALTER TABLE `chitietddh`
  ADD CONSTRAINT `chitietddh_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietddh_ibfk_2` FOREIGN KEY (`MaDDH`) REFERENCES `dondathang` (`MaDDH`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietddh_ibfk_3` FOREIGN KEY (`MaMau`) REFERENCES `mausac` (`MaMau`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD CONSTRAINT `chitietsanpham_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietsanpham_ibfk_2` FOREIGN KEY (`MaMau`) REFERENCES `mausac` (`MaMau`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `dondathang_ibfk_1` FOREIGN KEY (`MaKhachHang`) REFERENCES `nguoidung` (`MaNguoiDung`),
  ADD CONSTRAINT `dondathang_ibfk_2` FOREIGN KEY (`MaNhanVien`) REFERENCES `nguoidung` (`MaNguoiDung`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaHSX`) REFERENCES `hangsanxuat` (`MaHSX`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
