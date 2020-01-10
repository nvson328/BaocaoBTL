-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 09, 2020 lúc 03:31 PM
-- Phiên bản máy phục vụ: 10.4.10-MariaDB
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db diemdanh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangnhap`
--

CREATE TABLE `dangnhap` (
  `id` int(11) NOT NULL,
  `account` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dangnhap`
--

INSERT INTO `dangnhap` (`id`, `account`, `password`) VALUES
(1, 'admin', '123456'),
(2, 'gv', '123456'),
(3, 'sv', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `dd`
-- (See below for the actual view)
--
CREATE TABLE `dd` (
`idlop_mon` varchar(10)
,`sinhvienID` int(11)
,`b1` int(11)
,`b2` int(11)
,`b3` int(11)
,`Tong` bigint(13)
);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemdanh`
--

CREATE TABLE `diemdanh` (
  `idlop_mon` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sinhvienID` int(11) NOT NULL,
  `b1` int(11) DEFAULT NULL,
  `b2` int(11) DEFAULT NULL,
  `b3` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `diemdanh`
--

INSERT INTO `diemdanh` (`idlop_mon`, `sinhvienID`, `b1`, `b2`, `b3`) VALUES
('CSE484-03', 1, 1, 1, 1),
('CSE484-03', 2, 1, 0, 1),
('CSE485-01', 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien`
--

CREATE TABLE `giangvien` (
  `idGiangvien` int(11) NOT NULL,
  `masoGV` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `hoten` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `trinhdo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `chuyenmon` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` int(11) DEFAULT NULL,
  `link_avt_GV` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giangvien`
--

INSERT INTO `giangvien` (`idGiangvien`, `masoGV`, `hoten`, `trinhdo`, `chuyenmon`, `email`, `sdt`, `link_avt_GV`) VALUES
(1, 'GV001', 'Kiều Tuấn Dũng', NULL, 'Web, C++,...', NULL, NULL, NULL),
(2, 'GV002', 'Nguyễn Phương Dung', NULL, 'C#, C++,...', NULL, NULL, NULL),
(3, 'GV003', 'Trần Mạnh Tuấn', NULL, 'python, phân tích thiết kế', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lophoc`
--

CREATE TABLE `lophoc` (
  `lopID` int(11) NOT NULL,
  `tenlop` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `chunhiem` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonghoc` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lophoc`
--

INSERT INTO `lophoc` (`lopID`, `tenlop`, `chunhiem`, `phonghoc`) VALUES
(1, 'TH1', 'Nguyễn Bích Phương', 'A201'),
(2, 'TH3', 'Trần Giang Long', 'B305');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop_mon`
--

CREATE TABLE `lop_mon` (
  `IDlop_mon` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `IDmonhoc` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idGiangvien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lop_mon`
--

INSERT INTO `lop_mon` (`IDlop_mon`, `IDmonhoc`, `idGiangvien`) VALUES
('CSE484-03', 'CSE484', 3),
('CSE485-01', 'CSE485', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

CREATE TABLE `monhoc` (
  `IDmonhoc` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tenmonhoc` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sotinchi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `monhoc`
--

INSERT INTO `monhoc` (`IDmonhoc`, `tenmonhoc`, `sotinchi`) VALUES
('CSE484', 'Cơ sở dữ liệu', 3),
('CSE485', 'Công nghệ Web', 3),
('CSE488', 'Hệ thống thông tin', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `sinhvienID` int(11) NOT NULL,
  `MaSV` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lopID` int(11) DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phonenumber` int(11) DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `avt` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_truong` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`sinhvienID`, `MaSV`, `lopID`, `name`, `birthday`, `phonenumber`, `address`, `avt`, `so_truong`) VALUES
(1, 'SV001', 1, 'Nguyễn Văn A', '1999-12-10', NULL, 'Hà Nội', NULL, NULL),
(2, 'SV002', 1, 'Trần Đức B', '1999-07-06', NULL, 'Hưng Yên', NULL, NULL),
(3, 'SV003', 2, 'Phạm Minh C', '1999-03-08', NULL, 'Hà Nội', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbao`
--

CREATE TABLE `thongbao` (
  `Tong` int(11) NOT NULL,
  `ghichu` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongbao`
--

INSERT INTO `thongbao` (`Tong`, `ghichu`) VALUES
(0, 'Cấm thi'),
(1, 'Cảnh báo'),
(2, 'Trung bình'),
(3, 'Tốt');

-- --------------------------------------------------------

--
-- Cấu trúc cho view `dd`
--
DROP TABLE IF EXISTS `dd`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dd`  AS  select `diemdanh`.`idlop_mon` AS `idlop_mon`,`diemdanh`.`sinhvienID` AS `sinhvienID`,`diemdanh`.`b1` AS `b1`,`diemdanh`.`b2` AS `b2`,`diemdanh`.`b3` AS `b3`,`diemdanh`.`b1` + `diemdanh`.`b2` + `diemdanh`.`b3` AS `Tong` from `diemdanh` ;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dangnhap`
--
ALTER TABLE `dangnhap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD PRIMARY KEY (`idlop_mon`,`sinhvienID`),
  ADD KEY `sinhvienID` (`sinhvienID`);

--
-- Chỉ mục cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD PRIMARY KEY (`idGiangvien`);

--
-- Chỉ mục cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD PRIMARY KEY (`lopID`);

--
-- Chỉ mục cho bảng `lop_mon`
--
ALTER TABLE `lop_mon`
  ADD PRIMARY KEY (`IDlop_mon`),
  ADD KEY `IDmonhoc` (`IDmonhoc`),
  ADD KEY `idGiangvien` (`idGiangvien`);

--
-- Chỉ mục cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`IDmonhoc`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`sinhvienID`),
  ADD KEY `lopID` (`lopID`);

--
-- Chỉ mục cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`Tong`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dangnhap`
--
ALTER TABLE `dangnhap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  MODIFY `idGiangvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  MODIFY `lopID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `sinhvienID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD CONSTRAINT `diemdanh_ibfk_1` FOREIGN KEY (`idlop_mon`) REFERENCES `lop_mon` (`IDlop_mon`),
  ADD CONSTRAINT `diemdanh_ibfk_2` FOREIGN KEY (`sinhvienID`) REFERENCES `sinhvien` (`sinhvienID`);

--
-- Các ràng buộc cho bảng `lop_mon`
--
ALTER TABLE `lop_mon`
  ADD CONSTRAINT `lop_mon_ibfk_1` FOREIGN KEY (`IDmonhoc`) REFERENCES `monhoc` (`IDmonhoc`),
  ADD CONSTRAINT `lop_mon_ibfk_2` FOREIGN KEY (`idGiangvien`) REFERENCES `giangvien` (`idGiangvien`);

--
-- Các ràng buộc cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `sinhvien_ibfk_1` FOREIGN KEY (`lopID`) REFERENCES `lophoc` (`lopID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
