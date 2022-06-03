-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 04, 2021 lúc 02:37 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `pet`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `Id` int(11) NOT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`Id`, `HinhAnh`) VALUES
(3, 'img/banners/banner1.png'),
(4, 'img/banners/banner2.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`) VALUES
(12, 60, 1, 0),
(12, 64, 1, 0),
(13, 63, 1, 0),
(15, 61, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Chó'),
(2, 'Mèo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `NgayLap` datetime NOT NULL,
  `NguoiNhan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PhuongThucTT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TongTien` float NOT NULL,
  `TrangThai` varchar(70) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaND`, `NgayLap`, `NguoiNhan`, `SDT`, `DiaChi`, `PhuongThucTT`, `TongTien`, `TrangThai`) VALUES
(1, 1, '2020-07-23 17:44:22', 'Duong Duong', '0976942493', 'An Vĩnh', '', 10880000, '0'),
(2, 1, '2020-07-24 21:54:03', 'Duong Duong', '0976942493', 'An Vĩnh', '', 39932000, '1'),
(3, 1, '2020-07-24 22:05:07', 'Duong Duong', '0976942493', 'An Vĩnh', '', 39932000, '0'),
(4, 1, '2020-07-24 22:06:01', 'Duong Duong', '0976942493', 'An Vĩnh', '', 39932000, '0'),
(6, 13, '2020-07-25 11:59:47', 'Nguyễn Trí', '02354129852', '39 đường 3/2 Đà Nẵng', '', 15340000, '0'),
(7, 1, '2020-07-27 10:49:40', 'Duong Duong', '0976942493', 'An Vĩnh', '', 9440000, '0'),
(8, 14, '2020-10-19 14:41:42', 'admin admin', '23423', 'nui thanh', '', 8590000, '0'),
(9, 15, '2020-10-22 08:05:50', 'a c', '1234567890', 'abc', '', 6900000, '1'),
(10, 14, '2021-11-06 22:38:05', 'admin admin', '23423', 'nui thanh', '', 0, '0'),
(11, 14, '2021-11-17 20:37:30', 'admin admin', '23423', 'nui thanh', '', 0, '0'),
(12, 14, '2021-11-17 20:59:25', 'admin admin', '23423', 'nui thanh', '', 0, '1'),
(13, 14, '2021-11-18 22:36:03', 'admin admin', '23423', 'nui thanh', '', 0, '1'),
(14, 14, '2021-11-19 20:49:06', 'admin admin', '23423', 'nui thanh', '', 0, '0'),
(15, 14, '2021-11-19 20:50:26', 'admin admin', '23423', 'nui thanh', '', 0, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LoaiKM` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GiaTriKM` float(11,0) NOT NULL,
  `NgayBD` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `LoaiKM`, `GiaTriKM`, `NgayBD`, `TrangThai`) VALUES
(1, 'Không khuyến mãi', 'Nothing', 0, '2019-04-08 00:00:00', 1),
(2, 'Giảm giá', 'GiamGia', 500000, '2019-05-01 00:00:00', 1),
(3, 'Giá rẻ online', 'GiaReOnline', 650000, '2019-05-01 00:00:00', 1),
(4, 'Trả góp', 'TraGop', 0, '2019-05-01 00:00:00', 1),
(5, 'Mới ra mắt', 'MoiRaMat', 0, '2019-05-01 00:00:00', 1),
(13, 'Thích thì khuyến mãi', 'Khuyến mãi Ok', 100, '2020-07-18 11:26:06', 1),
(14, '', '', 0, '2020-07-21 10:10:45', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` int(11) NOT NULL,
  `TenLSP` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MaDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `HinhAnh`, `Mota`, `MaDM`) VALUES
(44, 'Chó Husky', 'dac-tinh-cua-cho-husky.jpg', 'Chúng thường có một bộ lông hai lớp và có thể có màu xám, đen, đồng đỏ hoặc trắng Đôi mắt của chúng thường có màu xanh nhạt, mặc dù chúng có thể có màu nâu, xanh lục, xanh dương, vàng hoặc dị sắc', 1),
(45, 'Chó Yorkshire', 'cho-yorkshire-terrier.jpg', 'Chó sục Yorkshire có nguồn gốc từ nước Anh, chúng là giống chó nhỏ bé có bộ lông dáng óng mượt, là giống chó cảnh được yêu chuộng tại các nước Châu Âu.', 1),
(46, ' Mèo Ba Tư', 'Meo-3.jpg', 'Giống mèo này thông minh, điềm tĩnh và biết giữ trật tự. Tuy nhiên, chúng có bộ lông 2 lớp và bạn sẽ gặp bất lợi khi phải chải lông mỗi ngày nếu không, bộ lông của chúng sẽ trở nên rối tung. Bên cạnh ', 2),
(47, 'Chó Chihuahua', 'cho-chihuahua-2.jpg', ' là giống chó nhỏ bé nhất trên thế giới. Có lẽ bởi vì sự nhỏ nhắn có phần tinh nghịch và thông minh của mình mà giống chó này trở thành thú cưng được yêu thích trên thế giới.', 1),
(48, 'Chó Phốc Sóc', 'cho-pom-6.jpg', 'Chó Phốc sóc hay còn gọi là chó Phốc, chó Pom (từ viết tắt của tên quốc tế Pomeranian) được phát triển ở tỉnh Pomerania – vùng phía bắc lạnh giá của Ba Lan và Đức từ các giống chó Spitz cổ xưa.', 1),
(49, 'Mèo Mucnhkin', 'tải xuống.jpg', 'Mèo Munchkin là một giống mèo khá mới từ Mỹ. Chính vì thế, Munchkin còn khá mới lạ ở Việt Nam. Đối với những người yêu mèo, Munchkin cat rất được yêu thích, ưa chuộng bởi 4 chân ngắn chũn chĩn với khu', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int(11) NOT NULL,
  `Ho` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ten` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MaQuyen` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `Anh` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`, `TrangThai`, `Anh`) VALUES
(1, 'Duong', 'Duong', 'Nam', '0976942493', 'duongls2ls@gmail.com', 'An Vĩnh', 'duongls2ls', '57f231b1ec41dc6641270cb09a56f897', 2, 1, NULL),
(2, 'Duong', 'A ', 'Nam', '0976942494', 'duonglslata@gmail.com', 'An Hải', 'duongls', 'e99a18c428cb38d5f260853678922e03', 3, 1, NULL),
(12, 'Trịnh', 'Phúc', 'Nam', '0383425354', 'phucaguero611@gmail.com', 'Đà Nẵng', 'liqin', 'e99a18c428cb38d5f260853678922e03', 2, 1, NULL),
(13, 'Nguyễn', 'Trí', '', '02354129852', 'tringuyendb@gmail.com', '', 'trimen', 'e99a18c428cb38d5f260853678922e03', 1, 1, NULL),
(14, 'admin', 'admin', 'Nam', '23423', 'admin@gmail.com', 'nui thanh', 'admin', '21232f297a57a5a743894a0e4a801fc3', 2, 1, NULL),
(15, 'a', 'c', 'Nam', '1234567890', 'a@gmail.com', '', '123456', '8929c46b02ed312239f6f99022739f15', 3, 1, NULL),
(16, 'Vi', 'thi', 'Nữ', '0523058646', 'thivy2606@gmail.com', 'Đà Nẵng', 'thivi2002', 'af8abfe404e5c9af1ded5eb2122c5364', 1, 1, NULL),
(17, 'Vi', 'vi', '', '0523058646', 'tvi02@gmail.com', '', 'vivivi', 'af8abfe404e5c9af1ded5eb2122c5364', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` int(11) NOT NULL,
  `TenQuyen` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ChiTietQuyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
(1, 'Customer', 'Người chủ'),
(2, 'Admin', 'Quản trị viên'),
(3, 'Personnel', 'Người mượn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `MaDM` int(11) NOT NULL,
  `TenSP` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` int(11) NOT NULL,
  `SoLuong` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `HinhAnh1` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhAnh3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaKM` int(11) NOT NULL,
  `ManHinh` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HDH` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CamSau` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CamTruoc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CPU` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Ram` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Rom` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SDCard` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Pin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoSao` int(11) NOT NULL,
  `SoDanhGia` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `MoTa` text COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `MaDM`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh1`, `HinhAnh2`, `HinhAnh3`, `MaKM`, `ManHinh`, `HDH`, `CamSau`, `CamTruoc`, `CPU`, `Ram`, `Rom`, `SDCard`, `Pin`, `SoSao`, `SoDanhGia`, `TrangThai`, `MoTa`, `ThoiGian`) VALUES
(58, 44, 1, 'Tiên Tử', 0, 0, 'img/products/dac-tinh-cua-cho-husky.jpg', '/img/products/anh1.png', '/img/products/cho-husky-1.jpg', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p><span style=\"color: rgb(58, 58, 58); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Là giống chó có nguồn gốc từ vùng Đông Bắc Siberia, Nga. Tại đây, từ khoảng hơn 3000 năm trước, chúng đã được tộc người Chukchi nuôi dưỡng và huấn luyện để giúp đỡ con người trong việc di chuyển hay vận chuyển hàng hóa.</span></p><p><span style=\"color: rgb(58, 58, 58); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\"><span style=\"color: rgb(32, 33, 36); font-family: arial, sans-serif;\">Chạy rất khỏe với tốc độ cực nhanh</span></span></p><h4 style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; line-height: 16px;\"><p style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; line-height: 16px;\"><font color=\"#888888\" face=\"Helvetica, Arial, sans-serif\"><span style=\"font-size: 12px;\">Đặc điểm của dòng Husky Siberian: </span></font></p><p style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; line-height: 16px;\"><font color=\"#888888\" face=\"Helvetica, Arial, sans-serif\"><span style=\"font-size: 12px;\">Khuôn mặt đẹp. Vóc dáng cao ráo. </span></font></p><p style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; line-height: 16px;\"><font color=\"#888888\" face=\"Helvetica, Arial, sans-serif\"><span style=\"font-size: 12px;\">Gương mặt thông minh. </span></font></p><p style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; line-height: 16px;\"><font color=\"#888888\" face=\"Helvetica, Arial, sans-serif\"><span style=\"font-size: 12px;\">Tuy nhiên, chúng là loài chó rụng hơi nhiều lông. </span></font></p><p style=\"margin-right: 0px; margin-bottom: 5px; margin-left: 0px; line-height: 16px;\"><font color=\"#888888\" face=\"Helvetica, Arial, sans-serif\"><span style=\"font-size: 12px;\">Husky Siberian có tính chiếm hữu cao.</span></font><br></p></h4><p><span style=\"color: rgb(58, 58, 58); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\"><br></span><br></p>', '2021-11-19 21:49:03'),
(59, 46, 2, 'Jerry', 0, 0, 'img/products/Meo-3.jpg', '/img/products/tải xuống.jpg', '/img/products/meo-ba-tu-thumb-.jpg', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p><span style=\"color: rgb(51, 51, 51); font-family: \" open=\"\" sans\",=\"\" sans-serif;\"=\"\">Có nguồn gốc từ xứ sở Ba Tư, vì đặc điểm mũi bẹt nên chúng còn có tên là Ba Tư mặt tịt. Hiện nay, những chú mèo này rất được săn đón và nuôi khá rộng rãi tại nhiều quốc gia dù giá thành không hề rẻ.</span></p><p><font color=\"#333333\">Đặc điểm:</font></p><p dir=\"ltr\" style=\"font-size: 15px; border: 0px; margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Open Sans&quot;, sans-serif;\">Nặng 4 kg với chiều cao từ 30cm. </p><p dir=\"ltr\" style=\"font-size: 15px; border: 0px; margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Open Sans&quot;, sans-serif;\">Đầu lớn, tròn, hai bá mầu bĩnh, mũi ngắn và mõm sâu, tổng thể khuôn mặt phẳng. </p><p dir=\"ltr\" style=\"font-size: 15px; border: 0px; margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Open Sans&quot;, sans-serif;\">Cùng với đó là đôi tai nhỏ hình tam giác dựng đứng, đôi mắt to</p><p dir=\"ltr\" style=\"font-size: 15px; border: 0px; margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Open Sans&quot;, sans-serif;\">Đặc điểm nhận diện đó là mũi bé và mắt to,&nbsp;</p><p><span style=\"color: rgb(51, 51, 51); font-family: \" open=\"\" sans\",=\"\" sans-serif;\"=\"\"></span><br></p>', '2021-11-19 21:53:11'),
(60, 45, 1, 'Vivo', 0, 0, 'img/products/cho-yorkshire-1.jpg', 'img/products/cho-yorkshire-3.jpg', 'img/products/cho-yorkshire-4.jpg', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p><span style=\"border: 0px; margin: 0px; padding: 0px; font-weight: var(--g-bold-weight, bold); color: rgb(58, 58, 58); font-family: \"Open Sans\", sans-serif; font-size: 15px; text-align: justify;\">Chó Yorkshire</span><span style=\"color: rgb(58, 58, 58); font-family: \"Open Sans\", sans-serif; font-size: 15px; text-align: justify;\"> có xuất thân từ bang Yorkshire, nước Anh.</span></p><p><span style=\"color: rgb(58, 58, 58); font-family: \"Open Sans\", sans-serif; font-size: 15px; text-align: justify;\">Đặc điểm:</span></p><p><span style=\"color: rgb(58, 58, 58); font-family: \"Open Sans\", sans-serif; font-size: 15px; text-align: justify;\">Đầu</span><span style=\"color: rgb(58, 58, 58); font-family: \"Open Sans\", sans-serif; font-size: 15px; text-align: justify;\"> khá nhỏ có tỉ lệ cân đối với cân thể. </span></p><p><span style=\"color: rgb(58, 58, 58); font-family: \"Open Sans\", sans-serif; font-size: 15px; text-align: justify;\">Khuôn mặt rất đáng yêu với đôi mắt đen nháy có khả năng biểu cảm mạnh mẽ và luôn hướng thẳng, cái mũi cao và hai tai hình tam giác lúc nào cũng vểnh lên. Có hàm hoàn chỉnh, răng không quá dài, mọc đều đặn và đúng vị trí.</span></p><p><span style=\"color: rgb(58, 58, 58); font-family: \"Open Sans\", sans-serif; font-size: 15px; text-align: justify;\">Tính cách:</span></p><p><span style=\"color: rgb(58, 58, 58); font-family: \"Open Sans\", sans-serif; font-size: 15px;\">Thích chơi với trẻ con</span></p><p><span style=\"color: rgb(58, 58, 58); font-family: \"Open Sans\", sans-serif; font-size: 15px; text-align: justify;\">Nhanh nhẹn và thông minh, thích chạy nhảy suốt ngày. </span></p><p><span style=\"color: rgb(58, 58, 58); font-family: \"Open Sans\", sans-serif; font-size: 15px; text-align: justify;\">Bạn nên dành thời gian chơi với chúng, dắt chúng ra ngoài đi dạo thường xuyên hay bày ra các trò chơi vận động. </span></p><p><span style=\"color: rgb(58, 58, 58); font-family: \"Open Sans\", sans-serif; font-size: 15px; text-align: justify;\">Không nên nhốt</span><em style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: \"Open Sans\", sans-serif; font-size: 15px; text-align: justify;\"> </em><span style=\"color: rgb(58, 58, 58); font-family: \"Open Sans\", sans-serif; font-size: 15px; text-align: justify;\">trong nhà nhiều, có thể khiến chú chó trở nên nhút nhát với xã hội hoặc khiến chúng đập phá, cắn đồ đạc trong nhà.</span><span style=\"color: rgb(58, 58, 58); font-family: \"Open Sans\", sans-serif; font-size: 15px;\"><br></span><br></p>', '2021-11-19 22:04:40'),
(61, 48, 1, 'min min', 0, 0, 'img/products/gia-cho-phoc-soc-4.jpg', 'img/products/cho-pom-6.jpg', 'img/products/cho-phoc-soc-trang-7.jpg', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p><span style=\"color: rgb(33, 37, 41); font-family: Nunito, sans-serif; text-align: justify;\">Chó Phốc sóc hay còn gọi là chó Phốc, chó Pom (từ viết tắt của tên quốc tế Pomeranian) được phát triển ở tỉnh Pomerania – vùng phía bắc lạnh giá của Ba Lan và Đức từ các giống chó Spitz cổ xưa.</span></p><p style=\"margin-bottom: 0.6rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif;\"><span style=\"font-size: 18px; color: rgb(40, 40, 40);\"><span style=\"font-weight: bolder;\">Đặc điểm ngoại hình của chó Phốc sóc</span></span></p><p style=\"margin-bottom: 0.6rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; text-align: justify;\">có lông xù và có kích thước bé nhỏ.</p><p style=\"margin-bottom: 0.6rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; text-align: justify;\">Kích thước 23 cm và nặng 2.5 kg</p><p style=\"margin-bottom: 0.6rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; text-align: justify;\">Chiếc đuôi bồng bềnh cong vút hướng ra phía sau, đôi tai vểnh và đôi mắt tròn xoe màu đen.</p><p style=\"margin-bottom: 0.6rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; text-align: justify;\"><span style=\"font-size: 1rem;\">Có một lớp lông dày quấn quanh cổ trông tròn trịa đáng yêu như một cục bông.</span></p><p style=\"margin-bottom: 0.6rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; text-align: justify;\"><span style=\"font-weight: bolder; text-align: start;\"><span style=\"color: rgb(40, 40, 40);\">Đặc điểm tính cách của chó Phốc sóc</span></span><br></p><p style=\"margin-bottom: 0.6rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; text-align: justify;\">Có tính cách hướng ngoại, vui tươi, tò mò với tất cả mọi thứ&nbsp;</p><p style=\"margin-bottom: 0.6rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; text-align: justify;\">Trung thành, người bạn đồng hành tuyệt vời trong các gia đình, nhưng nó không thân thiện với tất cả mọi người, chúng khá kiêu kỳ, hách dịch với người lạ.</p><p style=\"margin-bottom: 0.6rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; text-align: justify;\">Những gia đình có trẻ nhỏ không phải là ngôi nhà lý tưởng cho chó Pom, nó chỉ thường hòa thuận với những đứa trẻ lớn hơn, điềm tĩnh hơn.</p>', '2021-11-19 22:20:32'),
(62, 47, 1, 'Hua Hua', 0, 0, 'img/products/cho-chihuahua-3.jpg', 'img/products/cho-chihuahua-2.jpg', 'img/products/cho-teacup-chihuahua.jpg', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p><font color=\"#333333\">Đặc điểm:</font></p><p><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Đầu tròn và mõm ngắn.</span></p><p><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"> Nó có đôi mắt to tròn, màu sẫm gần như đen.</span></p><p><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"> Đôi tai đặc hiệu to đùng luôn giữ vểnh.&nbsp;</span></p><p><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Tính cách:</span></p><p><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">&nbsp;Can đảm, cực kỳ sống động, kiêu hãnh và mạnh dạn, nó luôn bày tỏ tình cảm và cũng đòi hỏi sự chăm sóc của người chủ.</span><span style=\"color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><br></span><font color=\"#333333\"><br></font></p>', '2021-11-19 22:27:36'),
(63, 49, 2, 'Vivon', 0, 0, 'img/products/meo-munchkin-chan-ngan.jpg', 'img/products/meo-munchkin-chan-ngan-2.jpg', 'img/products/meo-munchkin-chan-ngan-1.jpg', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<h6><em style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">Mèo Munchkin là một giống mèo khá mới từ Mỹ. Chính vì thế, Munchkin còn khá mới lạ ở Việt Nam. Đối với những người yêu mèo, Munchkin cat rất được yêu thích, ưa chuộng bởi 4 chân ngắn chũn chĩn với khuôn mặt tròn ngây thơ vô cùng</em></h6><h6><em style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\">Đặc điểm:</em></h6><h6>Đôi chân ngắn cũn, dáng đi “điệu chảy nước” và cực kỳ “õng ẹo”.&nbsp;</h6><h6><em style=\"border: 0px; margin: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 15px;\"><p dir=\"ltr\" style=\"border: 0px; margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; font-style: normal;\">Về kích thước cơ thể,&nbsp;<em style=\"border: 0px; margin: 0px; padding: 0px;\">Vivon</em>&nbsp;có chiều dài 50 cm cao 20cm. </p><p dir=\"ltr\" style=\"border: 0px; margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; font-style: normal;\">Cân nặng 2 kg, bốn chân của chúng luôn giữ ở trạng thái khum khum, không bao giờ duỗi thẳng.</p><p dir=\"ltr\" style=\"border: 0px; margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; font-style: normal;\">Tính cách:</p><p dir=\"ltr\" style=\"border: 0px; margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; font-style: normal;\">khá tinh nghịch, lém lỉnh, lúc nào cũng vui tươi nhưng cũng không kém phần ngọt ngào, nũng nịu&nbsp;</p><p dir=\"ltr\" style=\"border: 0px; margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; font-style: normal;\">tính cách rất tốt, hiền lành, dễ tính, thông minh và sống tình cảm.</p></em><br></h6>', '2021-11-19 22:35:38'),
(64, 44, 1, 'YuHan', 0, 0, 'img/products/Meo-3.jpg', '/img/products/dac-tinh-cua-cho-husky.jpg', '', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p><span style=\"color: rgb(51, 51, 51); font-family: \"Open Sans\", sans-serif;\">có nguồn gốc từ xứ sở Ba Tư, vì đặc điểm mũi bẹt nên chúng còn có tên là Ba Tư mặt tịt. Hiện nay, những chú mèo này rất được săn đón và nuôi khá rộng rãi tại nhiều quốc gia dù giá thành không hề rẻ.</span><br></p>', '2021-11-19 21:22:06'),
(76, 44, 1, 'husky', 0, 0, 'img/products/Hoahuongduong.jpg', '', '', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p>ghjkl;</p>', '2021-11-19 20:26:19'),
(78, 49, 2, 'Mon Lat', 0, 1, 'img/products/meo-anh-long-ngan-british-shorthair-624959.jpg', 'img/products/meo-anh-long-ngan-british-shorthair-624958.jpg', 'img/products/meo-anh-long-ngan-british-shorthair-624958.jpg', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p dir=\"ltr\" style=\"font-size: 15px; border: 0px; margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Open Sans&quot;, sans-serif;\">Tính cách:</p><p dir=\"ltr\" style=\"font-size: 15px; border: 0px; margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Open Sans&quot;, sans-serif;\">tinh nghịch, lém lỉnh, lúc nào cũng vui tươi nhưng cũng không kém phần ngọt ngào, nũng nịu với chủ nhân.&nbsp;</p><p dir=\"ltr\" style=\"font-size: 15px; border: 0px; margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; padding: 0px; color: rgb(58, 58, 58); font-family: &quot;Open Sans&quot;, sans-serif;\">Tính cách rất tốt, hiền lành, dễ tính, thông minh và sống tình cảm</p>', '2021-11-19 22:47:28'),
(81, 44, 1, 'Yummie', 0, 0, 'img/products/anh1.png', '', '', 1, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<h6>Chó Husky</h6>', '2021-11-29 10:38:04');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`) USING BTREE,
  ADD KEY `MaSP` (`MaSP`) USING BTREE;

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`) USING BTREE;

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`) USING BTREE,
  ADD KEY `MaKH` (`MaND`) USING BTREE;

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`) USING BTREE;

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`) USING BTREE,
  ADD KEY `MaDM` (`MaDM`) USING BTREE,
  ADD KEY `MaLSP` (`MaLSP`,`MaDM`) USING BTREE,
  ADD KEY `MaLSP_2` (`MaLSP`) USING BTREE;

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`) USING BTREE,
  ADD KEY `MaQuyen` (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`) USING BTREE,
  ADD KEY `LoaiSP` (`MaLSP`) USING BTREE,
  ADD KEY `MaKM` (`MaKM`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `MaQuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Các ràng buộc cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD CONSTRAINT `MaDM` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`MaLSP`) REFERENCES `loaisanpham` (`MaLSP`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
