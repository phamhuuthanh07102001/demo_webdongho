-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 05, 2023 lúc 05:26 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doandongho`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'phu', 'phu@gmail.com', 'phuAdmin', 'e10adc3949ba59abbe56e057f20f883e', 0),
(2, 'admin', 'admin@gmail.com', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_binhluan`
--

CREATE TABLE `tbl_binhluan` (
  `binhluan_id` int(11) NOT NULL,
  `tenbinhluan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `binhluan` text COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_binhluan`
--

INSERT INTO `tbl_binhluan` (`binhluan_id`, `tenbinhluan`, `binhluan`, `product_id`, `blog_id`, `image`) VALUES
(1, 'hieu', 'đẹp', 24, 0, ''),
(2, 'thành', 'uihuihu', 24, 0, ''),
(3, 'thành', 'uihuihu', 24, 0, ''),
(4, 'hieu', 'ok lắm', 36, 0, ''),
(5, 'thành', '6789 san bằng tất cả', 76, 0, ''),
(6, 'thành', 'poiuytrrewq', 65, 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) UNSIGNED NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(15, 'CALVIN KLEIN'),
(16, 'TISSOT'),
(17, 'ORIENT'),
(18, 'HUBLOT'),
(19, 'CASIO'),
(20, 'ROLEX');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`, `status`) VALUES
(27, 21, '3bfpn0ogo1aalm07hr39d94qnj', 'Apple New For Mysql Server', '50000', 3, '7daa1aac00.jpg', 0),
(30, 21, 'trt636cd8h5n9okcq6k4tmk399', 'Apple New For Mysql Server', '50000', 3, '7daa1aac00.jpg', 0),
(31, 23, 'vg73u7rueun71dgm56e05s2cvp', 'Đồng hồ Casio mới ra mắt', '123456', 8, 'fbe0fc934c.jpg', 0),
(32, 22, 'vg73u7rueun71dgm56e05s2cvp', 'Apple New For Mysql Server', '60000', 5, '9a647ac249.jpg', 0),
(37, 37, 'n3jsnac10kgg8eccvcujf090r7', 'Đồng hồ mạ bạc 1', '110110', 4, 'fef024c665.jpg', 0),
(38, 37, 'mfgp2ed2n2seamhkflt36b4isi', 'Đồng hồ mạ bạc 1', '110110', 7, 'fef024c665.jpg', 0),
(39, 37, 'mfgp2ed2n2seamhkflt36b4isi', 'Đồng hồ mạ bạc 1', '110110', 3, 'fef024c665.jpg', 0),
(53, 65, '1j4d4lq6hg5ou0imsqttqqg91o', 'Đồng hồ Casio mới 001', '700000', 2, '2245294bf0.jpg', 0),
(65, 64, 'tla8ghfnd9rju55mvqgjv479bk', 'oke chưa đẹp lắm', '120000', 1, '40ff75a970.jpg', 0),
(68, 48, 'opahksl8ipe1csaruq80s9b5bm', 'Đồng hồ mạ bạc', '56000', 10, 'efbad83829.jpg', 0),
(69, 48, 'd1rblv0rldecoi5ra4lp85nqmj', 'Đồng hồ mạ bạc', '56000', 2, 'efbad83829.jpg', 0),
(86, 48, 'rol7jj31acs787h51ida5j405d', 'Đồng hồ mạ bạc', '56000', 5, 'efbad83829.jpg', 0),
(87, 65, 'rol7jj31acs787h51ida5j405d', 'Đồng hồ Casio mới 001', '700000', 5, '2245294bf0.jpg', 0),
(90, 64, 'jd8f1g1kdrlu3627do6ungvrga', 'oke chưa đẹp lắm', '120000', 1, '40ff75a970.jpg', 1),
(91, 48, 'jd8f1g1kdrlu3627do6ungvrga', 'Đồng hồ mạ bạc', '56000', 3, 'efbad83829.jpg', 1),
(93, 48, 'o9f1ddb90bkvppuc2j9aoka7d8', 'Đồng hồ mạ bạc', '56000', 2, 'efbad83829.jpg', 0),
(111, 64, 'so1l31busha2884693khctqqeb', 'oke chưa đẹp lắm', '120000', 1, '40ff75a970.jpg', 1),
(112, 48, 'so1l31busha2884693khctqqeb', 'Đồng hồ mạ bạc', '56000', 2, 'efbad83829.jpg', 1),
(117, 64, 'a2s3p8mma4eimldvlgvbam59h8', 'oke chưa đẹp lắm', '120000', 1, '40ff75a970.jpg', 0),
(118, 64, '5oh8mt7fo8ealovbu09fmcbatn', 'oke chưa đẹp lắm', '120000', 10, '40ff75a970.jpg', 0),
(130, 65, 'qa5e3v06i99ssvkbj07ml5hm7a', 'SR SG8887.1202AT – Nam', '4650000', 1, '2245294bf0.jpg', 1),
(131, 65, 'gq2astgk0kcbi8b353s3tkloft', 'SR SG8887.1202AT – Nam', '4650000', 2, '2245294bf0.jpg', 1),
(132, 79, 'gq2astgk0kcbi8b353s3tkloft', 'Casio MTP-1375D-1AVDF – Nam – Quartz', '2177000', 1, 'fa00f06bd9.jpg', 1),
(139, 65, 'h8fue6k5564ha6m0s0geavk69j', 'SR SG8887.1202AT – Nam', '4650000', 1, '2245294bf0.jpg', 1),
(186, 122, 'f0cuis2anatfrvkpi294k0ppva', ' Calvin klein NH8373-88A – Nam', '1000000', 1, 'bb90c77af9.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) UNSIGNED NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(4, 'ĐỒNG HỒ TỰ ĐỘNG'),
(5, 'ĐỒNG HỒ CỔ ĐIỂN'),
(6, 'ĐỒNG HỒ GIÁ RẺ'),
(7, 'ĐỒNG HỒ SANG TRỌNG'),
(15, 'ĐỒNG HỒ THÔNG MINH'),
(16, 'ĐỒNG HỒ THỂ THAO'),
(17, 'ĐỒNG HỒ ĐIỆN TỬ'),
(18, 'ĐỒNG HỒ CƠ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(6, 'Phạm Hữu Thành', '14 Tố Hữu - Hoà Cường Bắc - Hải Châu - Đà Nẵng', 'Đà Nẵng', 'hcm', '1111', '0967456692', 'phamhuuthanh07102001@gmail.com', '4297f44b13955235245b2497399d7a93'),
(21, 'Văn Thành', 'Xô viết nghệ tĩnh', 'OOP', 'dn', '1000', '0967456692', 'vietthanh@gmail.com', '4297f44b13955235245b2497399d7a93'),
(22, 'hữu thành', 'Xô viết nghệ tĩnh', 'Triso', 'dn', '3000', '0967456692', 'huuthanhpham@gmail.com', '4297f44b13955235245b2497399d7a93');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(96, 91, 'Calvin klein NH8373-88A – Nam', 6, 1, '2590000', '56c19018e3.jpg', 0, '2023-12-05 20:05:33'),
(97, 91, 'Calvin klein NH8373-88A – Nam', 6, 1, '2590000', '56c19018e3.jpg', 0, '2023-12-05 20:10:54'),
(98, 90, 'Orient C7 NH8397-80H – Nam', 6, 1, '1925000', '1b2636acac.jpg', 0, '2023-12-05 20:11:58'),
(101, 92, 'Casio C7 NH8397-80H', 6, 1, '3500000', '5060204e70.jpg', 0, '2023-12-05 20:37:07'),
(105, 92, 'Casio C7 NH8397-80H', 22, 2, '7000000', '5060204e70.jpg', 2, '2023-12-05 21:08:38'),
(106, 122, ' Calvin klein NH8373-88A – Nam', 6, 3, '3000000', 'bb90c77af9.jpg', 2, '2023-12-05 21:44:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) UNSIGNED NOT NULL,
  `brandId` int(11) UNSIGNED NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(19, ' Apple Watch Series 4 GPS Aluminum Case ', 'MH1140', '65', '0', '65', 16, 7, '<p>&nbsp;iPhone</p>', 0, '9700000', '7dfa3faf68.jpg'),
(41, 'Tissot C7 NH8390-20L – Nam', 'NH8390', '8', '0', '23111', 16, 16, '<div class=\"product-short-description\">\r\n<p>Mẫu Citizen C7 NH8390-20L phi&ecirc;n bản d&acirc;y da tạo h&igrave;nh v&acirc;n lịch l&atilde;m kh&ocirc;ng k&eacute;m cạnh trẻ trung kết hợp c&ugrave;ng nền mặt số xanh size 40mm với họa tiết trải tia nhẹ.</p>\r\n<div>&nbsp;</div>\r\n</div>\r\n<div class=\"depots-wrap \">&nbsp;</div>', 0, '800000', 'b258d79864.jpg'),
(48, 'SR SL80071.1102CF – Nữ', 'SL80071.1102CF', '32', '36', '-4', 18, 16, '<p><span>Mẫu SR SL80071.1102CF phi&ecirc;n bản đơn giản 3 kim tr&ecirc;n nền mặt số trắng k&iacute;ch thước nhỏ 30mm, điểm nổi bật với phần vỏ m&aacute;y pin thiết kế trẻ trung chỉ d&agrave;y 6mm.</span></p>', 1, '2150000', 'efbad83829.jpg'),
(64, 'Kalkevin MTP-B130L-7AVDF – Nam', 'MTP-B130L-7AVDF', '02', '15', '-13', 4, 15, '<p><span>Mẫu Kalkevin&nbsp;MTP-B130L-7AVDF d&acirc;y da n&acirc;u phi&ecirc;n bản d&acirc;y da trơn phong c&aacute;ch trẻ trung kết hợp c&ugrave;ng thiết kế độc đ&aacute;o kim gi&acirc;y kh&ocirc;ng đồng trực tr&ecirc;n nền mặt số k&iacute;ch thước 41mm.</span></p>', 1, '120000', '40ff75a970.jpg'),
(78, 'Tissot NJ0155-87E – Nam', 'NJ0155', '22', '0', '22', 6, 16, '<p><span>Mẫu Tissot NJ0155-87E phi&ecirc;n bản mặt k&iacute;nh chất liệu k&iacute;nh Sapphire với k&iacute;ch thước nam t&iacute;nh 40mm, c&aacute;c chi tiết kim chỉ c&ugrave;ng cọc vạch số được phủ dạ quang nổi bật trong điều kiện thiếu s&aacute;ng</span></p>', 1, '550500', 'cf8e4f5655.jpg'),
(79, 'Hublot MTP-1375D-1AVDF – Nam ', 'MTP-1375D-1AVDF', '33', '9', '24', 18, 18, '<p><span>Viền đồng hồ Hublot MTP-1375D-1AVDF với họa tiết v&acirc;n kh&iacute;a sắc xảo tạo nển vẻ mạnh mẽ khi bo tr&ograve;n nền đen mặt số, kim chỉ v&agrave; vạch chỉ giờ được phủ bạc v&agrave; phản quang gi&uacute;p nh&igrave;n dễ hơn tr&ocirc;ng đ&ecirc;m.</span></p>', 0, '2177000', '515e904b09.jpg'),
(82, 'Rolex W-218H-3AVDF – Nam', 'W-218H-3AVDF', '10', '2', '23', 7, 20, '<p><span>Mẫu Rolex W-218H-3AVDF kiểu d&aacute;ng nền mặt số điện tử hiện thị đa chức năng đầy tiện &iacute;ch, với phi&ecirc;n bản thiết kế tổng thể bằng nhựa c&ugrave;ng khả năng chịu nước 5 ATM tạo n&ecirc;n vẻ c&aacute; t&iacute;nh đầy mạnh mẽ.</span></p>', 1, '777000', '4ad0b9fa69.jpg'),
(86, 'Orient MTP-1381L-9AVDF – Nam', 'MTP-1381L-9AVDF', '15', '0', '15', 17, 17, '<p><span>Đồng hồ nam Orient MTP-1381L-9AVDF với kiểu d&aacute;ng thời trang d&agrave;nh cho nam, kim chỉ v&agrave; vạch số to r&otilde; nổi bật tr&ecirc;n mặt đồng hồ tr&ograve;n to nam t&iacute;nh, phối c&ugrave;ng với d&acirc;y đeo bằng da n&acirc;u lịch l&atilde;m.</span></p>', 1, '1500000', '39a5f2a9f2.jpg'),
(87, 'Calvin Klein K6K33B46 – Nữ', 'K6K33B46', '22', '0', '22', 15, 15, '<p><span>Mẫu Calvin Klein K6K33B46 c&aacute;c chi tiết vạch số tạo n&eacute;t mỏng được phối tone m&agrave;u v&agrave;ng hồng trẻ trung tr&ecirc;n nền mặt số size nhỏ 30mm với thiết kế 3 kim đơn giản cho ph&aacute;i đẹp.</span></p>', 0, '6750000', 'f725ac623d.jpg'),
(88, 'Casio C7 NH8390-71L – Nam', 'NH8390', '2', '0', '2', 7, 19, '<p><span>Mẫu Citizen C7 NH8390-71L phi&ecirc;n bản nền mặt số xanh size 40mm với họa tiết trải tia nhẹ phong c&aacute;ch trẻ trung với thiết kế đơn giản 3 kim.</span></p>', 1, '500000', '4c3ec6c39a.jpg'),
(89, 'Hublot NH9130-84A – Nam', 'NH9130', '9', '0', '9', 18, 18, '<p><span>Mẫu Hublot NH9130-84A thiết kế Open heart (cơ lộ tim) tại vị tr&iacute; 9 giờ, tạo n&ecirc;n vẻ độc đ&aacute;o nổi bật tr&ecirc;n nền mặt số trắng k&iacute;ch thước 41mm, c&ugrave;ng với họa tiết Guilloche.</span></p>', 1, '9285000', '2ad3d6e476.jpg'),
(90, 'Orient C7 NH8397-80H – Nam', 'NH8397', '26', '3', '23', 18, 17, '<p><span>Mẫu Orient C7 NH8397-80H phi&ecirc;n bản d&acirc;y đeo dạng lưới tone m&agrave;u đen trẻ trung phối c&ugrave;ng thiết kế đơn giản chức năng 3 kim tr&ecirc;n nền mặt số size 40mm với họa tiết trải tia nhẹ.</span></p>', 1, '1925000', '1b2636acac.jpg'),
(91, 'Calvin klein NH8373-88A – Nam', 'NH8373', '13', '11', '2', 17, 15, '<p><span>Mẫu đồng hồ Calvin klein NH8373-88A với trải nghiệm nam t&iacute;nh từ bộ m&aacute;y cơ kết hợp c&ugrave;ng với nền vạch số được tạo h&igrave;nh d&agrave;y dặn mang lại một vẻ ngo&agrave;i đầy cuốn h&uacute;t cho ph&aacute;i mạnh</span></p>', 1, '2590000', '56c19018e3.jpg'),
(92, 'Casio C7 NH8397-80H', 'NH8397', '11', '10', '1', 17, 19, '<p><span>Mẫu Citizen C7 NH8397-80H phi&ecirc;n bản d&acirc;y đeo dạng lưới tone m&agrave;u đen trẻ trung phối c&ugrave;ng thiết kế đơn giản chức năng 3 kim tr&ecirc;n nền mặt số size 40mm với họa tiết trải tia nhẹ</span></p>', 1, '3500000', '5060204e70.jpg'),
(119, 'Orient C8 NH8397-80H – Nam', '', '12', '0', '12', 17, 17, '<p><span>Mẫu Orient C7 NH8397-80H phi&ecirc;n bản d&acirc;y đeo dạng lưới tone m&agrave;u đen trẻ trung phối c&ugrave;ng thiết kế đơn giản chức năng 3 kim tr&ecirc;n nền mặt số size 40mm với họa tiết trải tia nhẹ.</span></p>', 1, '500000', '7c70e54898.jpg'),
(120, 'Calvin klein NH8373-88A – Nam', '', '13', '0', '13', 16, 19, '<p><span>Mẫu đồng hồ Calvin klein NH8373-88A với trải nghiệm nam t&iacute;nh từ bộ m&aacute;y cơ kết hợp c&ugrave;ng với nền vạch số được tạo h&igrave;nh d&agrave;y dặn mang lại một vẻ ngo&agrave;i đầy cuốn h&uacute;t cho ph&aacute;i mạnh</span></p>', 0, '2500000', '736eb92c18.jpg'),
(122, ' Calvin klein NH8373-88A – Nam', 'NH8373', '13', '3', '10', 17, 15, '<p><span>Mẫu đồng hồ Calvin klein NH8373-88A với trải nghiệm nam t&iacute;nh từ bộ m&aacute;y cơ kết hợp c&ugrave;ng với nền vạch số được tạo h&igrave;nh d&agrave;y dặn mang lại một vẻ ngo&agrave;i đầy cuốn h&uacute;t cho ph&aacute;i mạnh</span></p>', 1, '1000000', 'bb90c77af9.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_rating`
--

INSERT INTO `tbl_rating` (`id`, `rating`, `product_id`, `customer_id`) VALUES
(4, 5, 64, 6),
(5, 5, 64, 6),
(6, 5, 64, 6),
(9, 5, 65, 6),
(11, 5, 65, 6),
(12, 5, 65, 6),
(13, 5, 65, 6),
(14, 5, 65, 6),
(15, 5, 65, 6),
(16, 5, 65, 6),
(17, 5, 65, 6),
(18, 5, 65, 6),
(19, 5, 65, 6),
(20, 5, 65, 6),
(23, 4, 64, 6),
(24, 4, 81, 6),
(25, 1, 81, 6),
(26, 3, 81, 6),
(27, 3, 81, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(5, 'slider1', '720bc173fa.png', 1),
(6, 'slider2', 'ff79579ac7.png', 1),
(7, 'slider3', 'a94222690e.png', 1),
(8, 'slider4', '5b2e64d6ab.jpg', 1),
(9, 'slider5', 'f50b2e4171.png', 1),
(11, 'slider6', '72a159f760.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) UNSIGNED NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) UNSIGNED NOT NULL,
  `productId` int(11) UNSIGNED NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(5, 6, 21, 'Apple New For Mysql Server', '50000', '7daa1aac00.jpg'),
(19, 22, 92, 'Casio C7 NH8397-80H', '3500000', '5060204e70.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
  ADD PRIMARY KEY (`binhluan_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`),
  ADD KEY `brandId` (`brandId`),
  ADD KEY `brandId_2` (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `productId` (`productId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`,`productId`),
  ADD KEY `productId` (`productId`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`productId`,`customer_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `catId` (`catId`,`brandId`);

--
-- Chỉ mục cho bảng `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Chỉ mục cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`),
  ADD KEY `id_sanpham` (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`,`productId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_binhluan`
--
ALTER TABLE `tbl_binhluan`
  MODIFY `binhluan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT cho bảng `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD CONSTRAINT `tbl_compare_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_compare_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `tbl_category` (`catId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD CONSTRAINT `tbl_warehouse_ibfk_1` FOREIGN KEY (`id_sanpham`) REFERENCES `tbl_product` (`productId`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD CONSTRAINT `tbl_wishlist_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
