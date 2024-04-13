-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 13, 2024 lúc 11:40 AM
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
-- Cơ sở dữ liệu: `gplx`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chapter`
--

CREATE TABLE `chapter` (
  `id` int(100) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `totalQuestion` int(100) NOT NULL,
  `totalCritical` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chapter`
--

INSERT INTO `chapter` (`id`, `title`, `totalQuestion`, `totalCritical`) VALUES
(1, 'Chương 1. Khái niệm và quy tắc giao thông', 107, 11),
(2, 'Chương 2. Văn hóa, đạo đức', 12, 0),
(3, 'Chương 3. Kỹ thuật lái xe', 13, 1),
(4, 'Chương 4. Hệ thống biển báo', 84, 0),
(5, 'Chương 5. Giải các thế sa hình', 84, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detailnoticeboard`
--

CREATE TABLE `detailnoticeboard` (
  `id` int(100) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `content` varchar(3000) NOT NULL,
  `detail_titlenoticeboard` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `detailnoticeboard`
--

INSERT INTO `detailnoticeboard` (`id`, `img`, `title`, `content`, `detail_titlenoticeboard`) VALUES
(1, 'https://onthigplx.vn/images/signP101.webp', 'Đường cấm - P.101', 'Biển báo đường cấm tất cả các loại phương tiện tham gia giao thông đi lại cả hai hướng, trừ xe ưu tiên theo luật định.', 1),
(2, 'https://onthigplx.vn/images/signP102.webp', 'Cấm đi ngược chiều - P.102', 'Biển báo đường cấm tất cả các loại phương tiện tham gia giao thông đi vào theo chiều đặt biển.', 1),
(3, 'https://onthigplx.vn/images/signP103a.webp', 'Cấm ô tô - P.103a', 'Biển báo đường cấm tất cả các loại xe cơ giới kể cả mô tô 3 bánh có thùng đi qua, trừ xe mô tô 2 bánh, xe gắn máy (kể cả xe máy điện) và các xe được ưu tiên theo Luật Giao thông đường bộ.', 1),
(4, 'https://onthigplx.vn/images/signP103b.webp', 'Cấm ô tô rẽ phải - P.103b', 'Biển báo đường cấm xe ô tô rẽ phải ( kể cả xe mô tô ba bánh), trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 1),
(5, 'https://onthigplx.vn/images/signP103c.webp', 'Cấm ô tô rẽ trái - P.103c', 'Biển báo đường cấm xe ô tô rẽ trái và cũng không được phép quay đầu xe, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 1),
(6, 'https://onthigplx.vn/images/signP104.webp', 'Cấm mô tô - P.104', 'Biển báo đường cấm tất cả các loại mô tô đi qua, trừ các loại xe mô tô được ưu tiên theo Luật Giao thông đường bộ.', 1),
(7, 'https://onthigplx.vn/images/signP105.webp', 'Cấm ô tô và mô tô - P.105', 'Biển báo đường cấm tất cả xe cơ giới và xe mô tô đi qua trừ xe gắn máy và xe được ưu tiên theo Luật Giao thông đường bộ.', 1),
(8, 'https://onthigplx.vn/images/signP106a.webp', 'Cấm ô tô tải - P.106a', 'Biển báo đường cấm tất cả các loại xe ô tô tải trừ các xe được ưu tiên theo Luật Giao thông đường bộ, hiệu lực cấm đối với cả máy kéo và xe máy chuyên dùng.', 1),
(9, 'https://onthigplx.vn/images/signP106b.webp', 'Cấm ô tô tải theo trọng lượng - P.106b', 'Trọng lượng được tính theo tấn ghi trên biển', 1),
(10, 'https://onthigplx.vn/images/signP106c.webp', 'Cấm ô tô tải chở hàng nguy hiểm - P.106c', 'Biển báo P.106c đường cấm tất cả các loại xe ô tô tải chở hàng nguy hiểm.', 1),
(11, 'https://onthigplx.vn/images/signP107.webp', 'Cấm ô tô khách và ô tô tải - P.107', 'Biển báo đường cấm xe ô tô khách và các loại xe ô tô tải, kể cả máy kéo và xe máy chuyên dùng đi qua, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 1),
(12, 'https://onthigplx.vn/images/signP107a.webp', 'Cấm ô tô khách - P.107a', 'Biển báo đường cấm ôtô chở khách đi qua trừ các xe ưu tiên theo quy định. Biển này không cấm xe buýt.', 1),
(13, 'https://onthigplx.vn/images/signP107b.webp', 'Cấm xe taxi - P.107b', 'Biển báo đường cấm ôtô taxi đi lại. Trường hợp cấm xe ôtô taxi theo giờ thì đặt biển phụ ghi giờ cấm.', 1),
(14, 'https://onthigplx.vn/images/signP108.webp', 'Cấm ôtô kéo rơ moóc - P.108', 'Biển báo đường cấm tất cả các loại xe cơ giới kéo theo rơ moóc kể cả xe mô tô, máy kéo, xe ô tô khách kéo theo rơ moóc đi qua, trừ loại xe ô tô sơ mi rơ moóc và các xe được ưu tiên theo Luật Giao thông đường bộ (có kéo theo rơ moóc).', 1),
(15, 'https://onthigplx.vn/images/signP108a.webp', 'Cấm xe sơ-mi rơ-moóc - P.108a', 'Biển báo đường cấm các loại xe sơ-mi-rơ-moóc và các xe kéo rơ- moóc trừ các xe được ưu tiên (có dạng xe sơ-mi-rơ-moóc hoặc có kéo theo rơ-moóc) theo quy định.', 1),
(16, 'https://onthigplx.vn/images/signP109.webp', 'Cấm máy kéo - P.109', 'Biển báo đường cấm tất cả các loại máy kéo, kể cả máy kéo bánh hơi và bánh xích đi qua.', 1),
(17, 'https://onthigplx.vn/images/signP110a.webp', 'Cấm xe đạp - P.110a', 'Biển báo đường cấm xe đạp đi qua. Biển không có giá trị cấm những người dắt xe đạp.', 1),
(18, 'https://onthigplx.vn/images/signP110b.webp', 'Cấm xe đạp thồ - P.110b', 'Biển báo đường cấm xe đạp thồ đi qua. Biển không có giá trị cấm người dắt loại xe này.', 1),
(19, 'https://onthigplx.vn/images/signP111a.webp', 'Cấm xe gắn máy - P.111a', 'Biển báo đường cấm xe gắn máy đi qua. Biển không có giá trị cấm đối với xe đạp.', 1),
(20, 'https://onthigplx.vn/images/signP112.webp', 'Cấm người đi bộ - P.112', 'Biển báo đường cấm người đi bộ qua lại.', 1),
(21, 'https://onthigplx.vn/images/signP113.webp', 'Cấm xe người kéo, đẩy - P.113', 'Biển báo đường cấm xe người kéo đẩy đi qua. Biển không có giá trị cấm những xe nôi của trẻ em và phương tiện chuyên dùng để đi lại của những người khuyết tật.', 1),
(22, 'https://onthigplx.vn/images/signP114.webp', 'Cấm xe súc vật kéo - P.114', 'Biển báo đường cấm súc vậtấtt vận tải hàng hóa hoặc hành khách dù kéo xe hay chở trên lưng đi qua.', 1),
(23, 'https://onthigplx.vn/images/signP115.webp', 'Hạn chế trọng lượng xe - P.115', 'Biển báo đường cấm các loại phương tiện giao thông đường bộ kể cả các xe được ưu tiên theo Luật Giao thông đường bộ có trọng lượng toàn bộ (cả xe và hàng) vượt quá trị số ghi trên biển tính bằng tấn đi qua.', 1),
(24, 'https://onthigplx.vn/images/signP116.webp', 'Hạn chế trọng lượng trên trục xe - P.116', 'Biển báo đường cấm các loại phương tiện giao thông đường bộ, kể cả các xe được ưu tiên theo Luật Giao thông đường bộ có trọng lượng toàn bộ (cả xe và hàng) phân bố trên một trục bất kỳ của xe vượt quá trị số ghi trên biển tính bằng tấn đi qua.', 1),
(25, 'https://onthigplx.vn/images/signP117.webp', 'Hạn chế chiều cao - P.117', 'Biển có hiệu lực cấm các loại phương tiện giao thông đường bộ đi qua, kể cả các xe được ưu tiên theo Luật Giao thông đường bộ có chiều cao (tính đến điểm cao nhất cả xe và hàng hóa) vượt quá trị số ghi trên biển tính bằng mét đi qua.', 1),
(26, 'https://onthigplx.vn/images/signP118.webp', 'Hạn chế chiều ngang - P.118', 'Biển có hiệu lực cấm các loại phương tiện giao thông đường bộ kể cả các xe được ưu tiên theo Luật Giao thông đường bộ có chiều ngang (cả xe và hàng hóa) vượt quá trị số ghi trên Biển tính bằng mét đi qua.', 1),
(27, 'https://onthigplx.vn/images/signP119.webp', 'Hạn chế chiều dài ô tô - P.119', 'Biển báo đường cấm các loại xe (cơ giới và thô sơ), kể cả các xe được ưu tiên theo Luật Giao thông đường bộ, có độ dài toàn bộ (cả xe và hàng) vượt quá trị số ghi trên biển tính bằng mét đi qua.', 1),
(28, 'https://onthigplx.vn/images/signP120.webp', 'Hạn chế chiều dài ô tô kéo moóc - P.120', 'Biển báo đường cấm các loại phương tiện giao thông đường bộ kéo theo rơ moóc kể cả ô tô sơ mi rơ moóc và các xe được ưu tiên theo Luật Giao thông đường bộ kéo theo rơ moóc có độ dài toàn bộ (cả xe, rơ moóc và hàng) vượt quá trị số ghi trên biển đi qua.', 1),
(29, 'https://onthigplx.vn/images/signP121.webp', 'Cự ly tối thiểu giữa hai xe - P.121', 'Biển báo xe ô tô phải đi cách nhau một khoảng tối thiểu. Biển có hiệu lực cấm các xe ô tô không được đi cách nhau với cự ly nhỏ hơn trị số ghi trên biển tính bằng mét, kể cả các xe được ưu tiên theo Luật Giao thông đường bộ.', 1),
(30, 'https://onthigplx.vn/images/signP123a.webp', 'Cấm rẽ trái - P.123a', 'Biển báo đường cấm các loại phương tiện giao thông đường bộ (xe cơ giới và xe thô sơ) rẽ trái, trừ các xe được ưu tiên theo Luật Giao thông đường bộ. Biển không có giá trị cấm quay đầu xe.', 1),
(31, 'https://onthigplx.vn/images/signP123b.webp', 'Cấm rẽ phải - P.123b', 'Biển báo đường cấm các loại phương tiện giao thông đường bộ (xe cơ giới và xe thô sơ) rẽ phải, trừ các xe được ưu tiên theo Luật Giao thông đường bộ. Biển không có giá trị cấm quay đầu xe.', 1),
(32, 'https://onthigplx.vn/images/signP124a.webp', 'Cấm quay đầu xe - P.124a', 'Biển báo đường cấm các loại phương tiện giao thông đường bộ quay đầu xe theo kiểu chữ U, trừ các xe được ưu tiên theo Luật Giao thông đường bộ. Biển không có giá trị cấm rẽ trái để sang hướng đường khác.', 1),
(33, 'https://onthigplx.vn/images/signP124b.webp', 'Cấm ô tô quay đầu - P.124b', 'Biển báo đường cấm xe ô tô và xe mô tô 3 bánh quay đầu xe theo kiểu chữ U, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 1),
(34, 'https://onthigplx.vn/images/signP124c.webp', 'Cấm rẽ trái và quay đầu xe - P.124c', 'Biển báo cấm các loại xe rẽ trái đồng thời cấm quay đầu, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 1),
(35, 'https://onthigplx.vn/images/signP124d.webp', 'Cấm rẽ phải và quay đầu xe - P.124d', 'Biển báo cấm các loại xe rẽ phải đồng thời cấm quay đầu, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 1),
(36, 'https://onthigplx.vn/images/signP124e.webp', 'Cấm ô tô rẽ trái và quay xe - P.124e', 'Biển báo cấm xe ôtô rẽ trái và đồng thời cấm quay đầu phải, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 1),
(37, 'https://onthigplx.vn/images/signP124f.webp', 'Cấm ô tô rẽ phải và quay xe - P.124f', 'Biển báo cấm xe ôtô rẽ phải và đồng thời cấm quay đầu phải, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 1),
(38, 'https://onthigplx.vn/images/signP125.webp', 'Cấm vượt - P.125', 'Biển có hiệu lực cấm tất cả các loại xe cơ giới vượt nhau, kể cả các xe được ưu tiên theo Luật Giao thông đường bộ. được phép vượt xe mô tô 2 bánh, xe gắn máy. Biển hết hiệu lực cấm khi có biển số DP.133 “Hết cấm vượt” hoặc đến chỗ có biển số DP.135 “Hết tất cả các lệnh cấm” nếu đồng thời có nhiều biển cấm khác hết tác dụng.', 1),
(39, 'https://onthigplx.vn/images/signP126.webp', 'Cấm ôtô tải vượt - P.126', 'Biển có hiệu lực cấm các loại ôtô tải có khối lượng chuyên chở (theo Giấy chứng nhận kiểm định an toàn kỹ thuật và bảo vệ môi trường phương tiện giao thông cơ giới đường bộ) lớn hơn 3.500 kg (3,5 tấn) kể cả các xe được ưu tiên theo quy định vượt xe cơ giới khác. được phép vượt xe máy 2 bánh, xe gắn máy. Biển không có giá trị cấm các loại xe cơ giới khác vượt nhau và vượt xe ô tô tải.', 1),
(40, 'https://onthigplx.vn/images/signP127.webp', 'Tốc độ tối đa cho phép - P.127', 'Biển có hiệu lực cấm tất cả các loại xe cơ giới đường bộ chạy với tốc độ tối đa vượt quá trị số ghi trên Biển (tính bằng km/h), trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 1),
(41, 'https://onthigplx.vn/images/signP127a.webp', 'Tốc độ tối đa cho phép về ban đêm - P.127a', 'Biển có hiệu lực cấm tất cả các loại xe cơ giới đường bộ chạy ban đêm với tốc độ tối đa vượt quá trị số ghi trên biển (tính bằng km/h), trừ một số trường hợp ưu tiên được quy định.', 1),
(42, 'https://onthigplx.vn/images/signP127b.webp', 'Tốc độ tối đa trên từng làn đường - P.127b', 'Biển ghép tốc độ tối đa cho phép trên từng làn đường', 1),
(43, 'https://onthigplx.vn/images/signP127c.webp', 'Tốc độ tối đa phương tiện trên từng làn đường - P.127c', 'Biển ghép tốc độ tối đa cho phép theo phương tiện, trên từng làn đường', 1),
(44, 'https://onthigplx.vn/images/signP127d.webp', 'Biển hết hạn chế tốc độ tối đa - P.127d', 'Biển hết hạn chế tốc độ tối đa cho phép theo biển ghép', 1),
(45, 'https://onthigplx.vn/images/signP128.webp', 'Cấm bóp còi - P.128', 'Biển báo cấm các loại xe cơ giới sử dụng còi.', 1),
(46, 'https://onthigplx.vn/images/signP129.webp', 'Kiểm tra - P.129', 'Biển báo nơi đặt trạm kiểm tra, các loại phương tiện vận tải qua đó phải dừng lại để làm thủ tục kiểm tra, kiểm soát theo quy định.', 1),
(47, 'https://onthigplx.vn/images/signP130.webp', 'Cấm dừng và đỗ xe - P.130', 'Biển có hiệu lực cấm các loại xe cơ giới đường bộ dừng và đỗ lại ở phía đường có đặt biển,', 1),
(48, 'https://onthigplx.vn/images/signP131a.webp', 'Cấm đỗ xe - P.131a', 'Biển số 131a có hiệu lực cấm các loại xe cơ giới đỗ ở phía đường có đặt biển vào bất kể ngày nào.', 1),
(49, 'https://onthigplx.vn/images/signP131b.webp', 'Cấm đỗ xe ngày lẻ - P.131b', 'Biển có hiệu lực cấm các loại xe cơ giới đỗ ở phía đường có đặt biển vào những ngày lẻ.', 1),
(50, 'https://onthigplx.vn/images/signP131c.webp', 'Cấm đỗ xe ngày chẵn - P.131c', 'Biển có hiệu lực cấm các loại xe cơ giới đỗ ở phía đường có đặt biển vào những ngày chẵn.', 1),
(51, 'https://onthigplx.vn/images/signP132.webp', 'Nhường cho xe ngược chiều qua đường hẹp - P.132', 'Biển báo cho các loại phương tiện giao thông đường bộ (cơ giới và thô sơ), kể cả các xe được ưu tiên theo Luật Giao thông đường bộ đi theo chiều nhìn thấy biển phải nhường đường cho các loại xe cơ giới đi theo chiều ngược lại khi đi qua các đoạn đường và cầu hẹp.', 1),
(52, 'https://onthigplx.vn/images/signDP133.webp', 'Hết cấm vượtD - P.133', 'Biển báo cho người lái xe biết hiệu lực của biển số P.125 “Cấm vượt” và biển số P.126 “Cấm ô tô tải vượt” hết tác dụng.', 1),
(53, 'https://onthigplx.vn/images/signDP134.webp', 'Hết hạn chế tốc độ tối đaD - P.134', 'Biển báo cho người lái xe biết hiệu lực của biển số P.127 “Hạn chế tốc độ tối đa” hết tác dụng. Kể từ biển này, các xe được phép chạy với tốc độ tối đa đã quy định trong Luật Giao thông đường bộ.', 1),
(54, 'https://onthigplx.vn/images/signDP135.webp', 'Hết tất cả các lệnh cấmD - P.135', 'Biển báo cho người lái xe biết hiệu lực của biển số P.121 “Cự ly tối thiểu giữa hai xe” và các biển từ biển số P.125 đến P.131 (a, b, c) được đặt trước đó cùng hết tác dụng.', 1),
(55, 'https://onthigplx.vn/images/signP136.webp', 'Cấm đi thẳng - P.136', 'Biển được đặt trước nơi đường giao nhau và có hiệu lực cấm tất cả các loại phương tiện giao thông đường bộ (cơ giới và thô sơ) đi thẳng ở nơi đường giao nhau.', 1),
(56, 'https://onthigplx.vn/images/signP137.webp', 'Cấm rẽ trái và rẽ phải - P.137', 'Biển được đặt trước nơi đường giao nhau và có hiệu lực cấm tất cả các loại phương tiện giao thông đường bộ (cơ giới và thô sơ) rẽ trái và rẽ phải ở nơi đường giao nhau.', 1),
(57, 'https://onthigplx.vn/images/signP138.webp', 'Cấm đi thẳng và rẽ trái - P.138', 'Biển được đặt trước nơi đường giao nhau và có hiệu lực cấm tất cả các loại phương tiện giao thông đường bộ (cơ giới và thô sơ) đi thẳng và rẽ trái ở nơi đường giao nhau.', 1),
(58, 'https://onthigplx.vn/images/signP139.webp', 'Cấm đi thẳng và rẽ phải - P.139', 'Biển được đặt trước nơi đường giao nhau và có hiệu lực cấm tất cả các loại phương tiện giao thông đường bộ (cơ giới và thô sơ) đi thẳng và rẽ phải ở nơi đường giao nhau.', 1),
(59, 'https://onthigplx.vn/images/signP140.webp', 'Cấm xe công nông và các loại xe tương tự - P.140', 'Biển báo đường cấm tất cả các loại xe công nông và các loại xe tương tự đi qua.', 1),
(60, 'https://onthigplx.vn/images/signS508a.webp', 'Biển cấm theo giờ - S.508a', 'Khi cần báo hiệu cấm các loại phương tiện giao thông đường bộ theo giờ trong thành phố, thị xã phải đặt biển phụ số S508(a,b) dưới biển cấm và có chú thích bằng tiếng Việt, phụ đề tiếng Anh trong biển này.', 1),
(61, 'https://onthigplx.vn/images/signS508b.webp', 'Biển cấm theo giờ - S.508b', 'Khi cần báo hiệu cấm các loại phương tiện giao thông đường bộ theo giờ trong thành phố, thị xã phải đặt biển phụ số S508(a,b) dưới biển cấm và có chú thích bằng tiếng Việt, phụ đề tiếng Anh trong biển này.', 1),
(62, 'https://onthigplx.vn//images/signW201a.webp', 'Chỗ ngoặt nguy hiểm bên trái - W.201a', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(63, 'https://onthigplx.vn//images/signW201b.webp', 'Chỗ ngoặt nguy hiểm bên phải - W.201b', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(64, 'https://onthigplx.vn//images/signW201c.webp', 'Chỗ ngoặt nguy hiểm có nguy cơ lật bên phải - W.201c', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(65, 'https://onthigplx.vn//images/signW201d.webp', 'Chỗ ngoặt nguy hiểm có nguy cơ lật bên trái - W.201d', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(66, 'https://onthigplx.vn//images/signW202a.webp', 'Nhiều chỗ ngoặt nguy hiểm liên tiếp - W.202a', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(67, 'https://onthigplx.vn//images/signW202b.webp', 'Nhiều chỗ ngoặt nguy hiểm liên tiếp - W.202b', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(68, 'https://onthigplx.vn//images/signW203a.webp', 'Đường bị hẹp cả hai bên - W.203a', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(69, 'https://onthigplx.vn//images/signW203b.webp', 'Đường bị hẹp bên trái - W.203b', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(70, 'https://onthigplx.vn//images/signW203c.webp', 'Đường bị hẹp bên phải - W.203c', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(71, 'https://onthigplx.vn//images/signW204.webp', 'Đường hai chiều - W.204', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(72, 'https://onthigplx.vn//images/signW205a.webp', 'Nơi giao nhau của đường đồng cấp - W.205a', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(73, 'https://onthigplx.vn//images/signW205b.webp', 'Nơi giao nhau của đường đồng cấp - W.205b', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(74, 'https://onthigplx.vn//images/signW205c.webp', 'Nơi giao nhau của đường đồng cấp - W.205c', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(75, 'https://onthigplx.vn//images/signW205d.webp', 'Nơi giao nhau của đường đồng cấp - W.205d', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(76, 'https://onthigplx.vn//images/signW205e.webp', 'Nơi giao nhau của đường đồng cấp - W.205e', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(77, 'https://onthigplx.vn//images/signW206.webp', 'Giao nhau chạy theo vòng xuyến - W.206', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(78, 'https://onthigplx.vn//images/signW207a.webp', 'Giao nhau với đường không ưu tiên - W.207a', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(79, 'https://onthigplx.vn//images/signW207b.webp', 'Giao nhau với đường không ưu tiên - W.207b', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(80, 'https://onthigplx.vn//images/signW207c.webp', 'Giao nhau với đường không ưu tiên - W.207c', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(81, 'https://onthigplx.vn//images/signW207d.webp', 'Giao nhau với đường không ưu tiên - W.207d', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(82, 'https://onthigplx.vn//images/signW207e.webp', 'Giao nhau với đường không ưu tiên - W.207e', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(83, 'https://onthigplx.vn//images/signW207f.webp', 'Giao nhau với đường không ưu tiên - W.207f', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(84, 'https://onthigplx.vn//images/signW207g.webp', 'Giao nhau với đường không ưu tiên - W.207g', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(85, 'https://onthigplx.vn//images/signW207h.webp', 'Giao nhau với đường không ưu tiên - W.207h', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(86, 'https://onthigplx.vn//images/signW207i.webp', 'Giao nhau với đường không ưu tiên - W.207i', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(87, 'https://onthigplx.vn//images/signW207k.webp', 'Giao nhau với đường không ưu tiên - W.207k', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(88, 'https://onthigplx.vn//images/signW207l.webp', 'Giao nhau với đường không ưu tiên - W.207l', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(89, 'https://onthigplx.vn//images/signW208.webp', 'Giao nhau với đường ưu tiên - W.208', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(90, 'https://onthigplx.vn//images/signW209.webp', 'Giao nhau có tín hiệu đèn - W.209', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(91, 'https://onthigplx.vn//images/signW210.webp', 'Giao nhau với đường sắt có rào chắn - W.210', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(92, 'https://onthigplx.vn//images/signW211a.webp', 'Giao nhau với đường sắt không có rào chắn - W.211a', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(93, 'https://onthigplx.vn//images/signW211b.webp', 'Giao nhau với đường tàu điện - W.211b', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(94, 'https://onthigplx.vn//images/signW212.webp', 'Cầu hẹp - W.212', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(95, 'https://onthigplx.vn//images/signW213.webp', 'Cầu tạm - W.213', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(96, 'https://onthigplx.vn//images/signW214.webp', 'Cầu xoay-cầu cất - W.214', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(97, 'https://onthigplx.vn//images/signW215a.webp', 'Kè, vực sâu phía trước - W.215a', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(98, 'https://onthigplx.vn//images/signW215b.webp', 'Kè, vực sâu bên đường phía bên phải - W.215b', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(99, 'https://onthigplx.vn//images/signW215c.webp', 'Kè, vực sâu bên đường phía bên trái - W.215c', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(100, 'https://onthigplx.vn//images/signW216a.webp', 'Đường ngầm - W.216a', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(101, 'https://onthigplx.vn//images/signW216b.webp', 'Đường ngầm có nguy cơ lũ quét - W.216b', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(102, 'https://onthigplx.vn//images/signW217.webp', 'Bến phà - W.217', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(103, 'https://onthigplx.vn//images/signW218.webp', 'Cửa chui - W.218', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(104, 'https://onthigplx.vn//images/signW219.webp', 'Dốc xuống nguy hiểm - W.219', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(105, 'https://onthigplx.vn//images/signW220.webp', 'Dốc lên nguy hiểm - W.220', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(106, 'https://onthigplx.vn//images/signW221a.webp', 'Đường ổ gà, sống trâu - W.221a', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(107, 'https://onthigplx.vn//images/signW221b.webp', 'Đường có gồ giảm tốc - W.221b', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(108, 'https://onthigplx.vn//images/signW222a.webp', 'Đường trơn - W.222a', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(109, 'https://onthigplx.vn//images/signW222b.webp', 'Lề đường nguy hiểm - W.222b', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(110, 'https://onthigplx.vn//images/signW223a.webp', 'Vách núi nguy hiểm - W.223a', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(111, 'https://onthigplx.vn//images/signW223b.webp', 'Vách núi nguy hiểm - W.223b', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(112, 'https://onthigplx.vn//images/signW224.webp', 'Đường người đi bộ cắt ngang - W.224', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(113, 'https://onthigplx.vn//images/signW225.webp', 'Trẻ em - W.225', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(114, 'https://onthigplx.vn//images/signW226.webp', 'Đường người đi xe đạp cắt ngang - W.226', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(115, 'https://onthigplx.vn//images/signW227.webp', 'Công trường - W.227', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(116, 'https://onthigplx.vn//images/signW228a.webp', 'Đá lở - W.228a', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(117, 'https://onthigplx.vn//images/signW228b.webp', 'Đá lở - W.228b', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(118, 'https://onthigplx.vn//images/signW228c.webp', 'Sỏi đá bắn lên - W.228c', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(119, 'https://onthigplx.vn//images/signW228d.webp', 'Nền đường yếu - W.228d', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(120, 'https://onthigplx.vn//images/signW229.webp', 'Dải máy bay lên xuống - W.229', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(121, 'https://onthigplx.vn//images/signW230.webp', 'Gia súc - W.230', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(122, 'https://onthigplx.vn//images/signW231.webp', 'Thú rừng vượt qua đường - W.231', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(123, 'https://onthigplx.vn//images/signW232.webp', 'Gió ngang - W.232', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(124, 'https://onthigplx.vn//images/signW233.webp', 'Nguy hiểm khác - W.233', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(125, 'https://onthigplx.vn//images/signW234.webp', 'Giao nhau với đường hai chiều - W.234', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(126, 'https://onthigplx.vn//images/signW235.webp', 'Đường đôi - W.235', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(127, 'https://onthigplx.vn//images/signW236.webp', 'Hết đường đôi - W.236', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(128, 'https://onthigplx.vn//images/signW237.webp', 'Đường có độ vòng lớn - W.237', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(129, 'https://onthigplx.vn//images/signW238.webp', 'Đường cao tốc phía trước - W.238', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(130, 'https://onthigplx.vn//images/signW239.webp', 'Đường cáp điện ở phía trên - W.239', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(131, 'https://onthigplx.vn//images/signW240.webp', 'Đường hầm phía trước - W.240', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(132, 'https://onthigplx.vn//images/signW241.webp', 'Ùn tắc giao thông - W.241', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(133, 'https://onthigplx.vn//images/signW242a.webp', 'Nơi đường sắt giao vuông góc với đường bộ - W.242a', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(134, 'https://onthigplx.vn//images/signW242b.webp', 'Nơi 2 đường sắt giao nhau với đường bộ - W.242b', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(135, 'https://onthigplx.vn//images/signW243a.webp', 'Nơi đường sắt giao không vuông góc với đường bộ - W.243a', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(136, 'https://onthigplx.vn//images/signW243b.webp', 'Nơi đường sắt giao không vuông góc với đường bộ - W.243b', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(137, 'https://onthigplx.vn//images/signW243c.webp', 'Nơi đường sắt giao không vuông góc với đường bộ - W.243c', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(138, 'https://onthigplx.vn//images/signW244.webp', 'Đoạn đường hay xảy ra tai nạn - W.244', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(139, 'https://onthigplx.vn//images/signW245a.webp', 'Đi chậm - W.245a', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(140, 'https://onthigplx.vn//images/signW245b.webp', 'Đi chậm - W.245b', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(141, 'https://onthigplx.vn//images/signW246a.webp', 'Chú ý chướng ngại vật: Vòng tránh sang hai bên - W.246a', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(142, 'https://onthigplx.vn//images/signW246b.webp', 'Chú ý chướng ngại vật: Vòng tránh sang bên trái - W.246b', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(143, 'https://onthigplx.vn//images/signW246c.webp', 'Chú ý chướng ngại vật: Vòng tránh sang bên phải - W.246c', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(144, 'https://onthigplx.vn//images/signW247.webp', 'Chú ý xe đỗ - W.247', 'Biển báo đường sắp đến chỗ ngoặt nguy hiểm.', 2),
(145, 'https://onthigplx.vn/images/signR122.webp', 'Dừng lại - R.122', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(146, 'https://onthigplx.vn/images/signR301a.webp', 'Các xe chỉ được đi thẳng - R.301a', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(147, 'https://onthigplx.vn/images/signR301b.webp', 'Các xe chỉ được rẽ phải - R.301b', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(148, 'https://onthigplx.vn/images/signR301c.webp', 'Các xe chỉ được rẽ trái - R.301c', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(149, 'https://onthigplx.vn/images/signR301d.webp', 'Các xe chỉ được rẽ phải - R.301d', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(150, 'https://onthigplx.vn/images/signR301e.webp', 'Các xe chỉ được rẽ trái - R.301e', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(151, 'https://onthigplx.vn/images/signR301f.webp', 'Các xe chỉ được đi thẳng và rẽ phải - R.301f', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(152, 'https://onthigplx.vn/images/signR301g.webp', 'Các xe chỉ được đi thẳng và rẽ trái - R.301g', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(153, 'https://onthigplx.vn/images/signR301h.webp', 'Các xe chỉ được rẽ trái và phải - R.301h', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(154, 'https://onthigplx.vn/images/signR302a.webp', 'Hướng phải đi vòng chướng ngại vật - R.302a', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(155, 'https://onthigplx.vn/images/signR302b.webp', 'Hướng phải đi vòng chướng ngại vật - R.302b', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(156, 'https://onthigplx.vn/images/signR302c.webp', 'Hướng phải đi vòng chướng ngại vật - R.302c', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(157, 'https://onthigplx.vn/images/signR303.webp', 'Nơi giao nhau chạy theo vòng xuyến - R.303', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(158, 'https://onthigplx.vn/images/signR304.webp', 'Đường dành cho xe thô sơ - R.304', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(159, 'https://onthigplx.vn/images/signR305.webp', 'Đường dành cho người đi bộ - R.305', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(160, 'https://onthigplx.vn/images/signR306.webp', 'Tốc độ tối thiểu cho phép - R.306', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(161, 'https://onthigplx.vn/images/signR307.webp', 'Hết hạn chế tốc độ tối thiểu - R.307', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(162, 'https://onthigplx.vn/images/signR308a.webp', 'Tuyến đường cầu vượt cắt qua - R.308a', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(163, 'https://onthigplx.vn/images/signR308b.webp', 'Tuyến đường cầu vượt cắt qua - R.308b', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(164, 'https://onthigplx.vn/images/signR309.webp', 'Ấn còi - R.309', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(165, 'https://onthigplx.vn/images/signR310a.webp', 'Hướng đi phải theo cho xe chở hàng nguy hiểm - R.310a', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(166, 'https://onthigplx.vn/images/signR310b.webp', 'Hướng đi phải theo cho xe chở hàng nguy hiểm - R.310b', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(167, 'https://onthigplx.vn/images/signR310c.webp', 'Hướng đi phải theo cho xe chở hàng nguy hiểm - R.310c', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(168, 'https://onthigplx.vn/images/signR403a.webp', 'Đường dành cho ôtô - R.403a', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(169, 'https://onthigplx.vn/images/signR403b.webp', 'Đường dành cho ôtô, xe máy - R.403b', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(170, 'https://onthigplx.vn/images/signR404a.webp', 'Hết đoạn đường dành cho ôtô - R.404a', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(171, 'https://onthigplx.vn/images/signR404b.webp', 'Hết đoạn đường dành cho ôtô và xe máy - R.404b', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(172, 'https://onthigplx.vn/images/signR411.webp', 'Hướng đi trên mỗi làn đường phải theo - R.411', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(173, 'https://onthigplx.vn/images/signR412a.webp', 'Làn đường dành cho xe khách - R.412a', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(174, 'https://onthigplx.vn/images/signR412b.webp', 'Làn đường dành cho xe con - R.412b', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(175, 'https://onthigplx.vn/images/signR412c.webp', 'Làn đường dành cho xe tải - R.412c', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(176, 'https://onthigplx.vn/images/signR412d.webp', 'Làn đường dành cho xe mô tô - R.412d', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(177, 'https://onthigplx.vn/images/signR412f.webp', 'Làn đường dành cho xe ô tô - R.412f', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(178, 'https://onthigplx.vn/images/signR413i.webp', 'Kết thúc làn đường dành cho xe khách - R.413i', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(179, 'https://onthigplx.vn/images/signR413j.webp', 'Kết thúc làn đường dành cho xe con - R.413j', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(180, 'https://onthigplx.vn/images/signR413k.webp', 'Kết thúc làn đường dành cho xe tải - R.413k', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(181, 'https://onthigplx.vn/images/signR413l.webp', 'Kết thúc làn đường dành cho xe mô tô - R.413l', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(182, 'https://onthigplx.vn/images/signR413n.webp', 'Kết thúc làn đường dành cho xe ô tô - R.413n', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(183, 'https://onthigplx.vn/images/signR415.webp', 'Biển gộp làn đường theo phương tiện - R.415', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(184, 'https://onthigplx.vn/images/signR420.webp', 'Bắt đầu khu dân cư - R.420', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(185, 'https://onthigplx.vn/images/signR421.webp', 'Hết khu đông dân cư - R.421', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(186, 'https://onthigplx.vn/images/signRE9a.webp', 'Cấm đỗ xe trong khu vực - R.E,9a', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(187, 'https://onthigplx.vn/images/signRE9b.webp', 'Cấm đỗ xe theo giờ trong khu vực - R.E,9b', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(188, 'https://onthigplx.vn/images/signRE9c.webp', 'Khu vực đỗ xe - R.E,9c', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(189, 'https://onthigplx.vn/images/signRE9d.webp', 'Hạn chế tốc độ tối đa trong khu vực - R.E,9d', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(190, 'https://onthigplx.vn/images/signRE10a.webp', 'Hết cấm đỗ xe trong khu vực - R.E,10a', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(191, 'https://onthigplx.vn/images/signRE10a.webp', 'Hết cấm đỗ xe theo giờ trong khu vực - R.E,10a', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(192, 'https://onthigplx.vn/images/signRE10c.webp', 'Hết khu vực đỗ xe - R.E,10c', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(193, 'https://onthigplx.vn/images/signRE10d.webp', 'Hết hạn chế tốc độ tối đa trong khu vực - R.E,10d', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(194, 'https://onthigplx.vn/images/signRE11a.webp', 'Báo hiệu có hầm chui - R.E,11a', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(195, 'https://onthigplx.vn/images/signRE11b.webp', 'Kết thúc hầm chui - R.E,11b', 'Biển báo hiệu buộc các xe cơ giới và thô sơ kể cả xe được ưu tiên theo quy định phải dừng lại. Chỉ được phép đi nếu có người điều khiển giao thông hoặc đèn cờ cho phép đi. Nếu không thì chỉ được phép đi khi trên đường không còn nguy cơ gây mất an toàn giao thông.', 3),
(196, 'https://onthigplx.vn/images/signI401.webp', 'Bắt đầu đường ưu tiên - I.401', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(197, 'https://onthigplx.vn/images/signI402.webp', 'Hết đường ưu tiên - I.402', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(198, 'https://onthigplx.vn/images/signI405a.webp', 'Đường cụt - I.405a', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(199, 'https://onthigplx.vn/images/signI405b.webp', 'Đường cụt - I.405b', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(200, 'https://onthigplx.vn/images/signI405c.webp', 'Đường cụt - I.405c', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(201, 'https://onthigplx.vn/images/signI406.webp', 'Được ưu tiên qua đường hẹp - I.406', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(202, 'https://onthigplx.vn/images/signI407a.webp', 'Đường một chiều - I.407a', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(203, 'https://onthigplx.vn/images/signI407b.webp', 'Đường một chiều - I.407b', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(204, 'https://onthigplx.vn/images/signI407c.webp', 'Đường một chiều - I.407c', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(205, 'https://onthigplx.vn/images/signI408.webp', 'Nơi đỗ xe - I.408', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(206, 'https://onthigplx.vn/images/signI408a.webp', 'Nơi đỗ xe một phần trên hè phố - I.408a', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(207, 'https://onthigplx.vn/images/signI409.webp', 'Chỗ quay xe - I.409', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(208, 'https://onthigplx.vn/images/signI410.webp', 'Khu vực quay xe - I.410', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(209, 'https://onthigplx.vn/images/signI413a.webp', 'Đường phía trước có làn đường dành cho ô tô khách - I.413a', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4);
INSERT INTO `detailnoticeboard` (`id`, `img`, `title`, `content`, `detail_titlenoticeboard`) VALUES
(210, 'https://onthigplx.vn/images/signI413b.webp', 'Rẽ ra đường có làn dành cho xe khách - I.413b', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(211, 'https://onthigplx.vn/images/signI413c.webp', 'Rẽ ra đường có làn dành cho xe khách - I.413c', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(212, 'https://onthigplx.vn/images/signI418.webp', 'Lối đi ở những chỗ cấm rẽ - I.418', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(213, 'https://onthigplx.vn/images/signI423a.webp', 'Đường người đi bộ sang ngang - I.423a', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(214, 'https://onthigplx.vn/images/signI437.webp', 'Đường cao tốc - I.437', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(215, 'https://onthigplx.vn/images/signI444.webp', 'Xe kéo moóc - I.444', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(216, 'https://onthigplx.vn/images/signI446.webp', 'Nơi đỗ xe dành cho người tàn tật - I.446', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(217, 'https://onthigplx.vn/images/signI447a.webp', 'Cầu vượt liên thông - I.447a', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(218, 'https://onthigplx.vn/images/signI447b.webp', 'Cầu vượt liên thông - I.447b', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(219, 'https://onthigplx.vn/images/signI448.webp', 'Làn đường cứu nạn hay làn thoát xe khẩn cấp - I.448', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(220, 'https://onthigplx.vn/images/signI449.webp', 'Biển tên đường - I.449', 'Biển chỉ dẫn các phương tiện trên trục đường chính được ưu tiên đi trước ở nơi đường giao nhau, các phương tiện từ đường nhánh ra phải dừng lại nhường đường cho phương tiện trên đường chính đi trước, trừ các xe được ưu tiên theo Luật Giao thông đường bộ.', 4),
(221, 'https://onthigplx.vn/images/signS501.webp', 'Phạm vi tác dụng của biển - S.501', 'Biển được đặt dưới các loại biển báo nguy hiểm, biển báo cấm hoặc hạn chế. Biển thông báo chiều dài đoạn đường nguy hiểm hay đoạn đường phải thi hành lệnh cấm hoặc hạn chế.', 5),
(222, 'https://onthigplx.vn/images/signS502.webp', 'Khoảng cách đến đối tượng báo hiệu - S.502', 'Biển được đặt dưới các loại biển báo nguy hiểm, biển báo cấm hoặc hạn chế. Biển thông báo chiều dài đoạn đường nguy hiểm hay đoạn đường phải thi hành lệnh cấm hoặc hạn chế.', 5),
(223, 'https://onthigplx.vn/images/signS503a.webp', 'Hướng tác dụng của biển - S.503a', 'Biển được đặt dưới các loại biển báo nguy hiểm, biển báo cấm hoặc hạn chế. Biển thông báo chiều dài đoạn đường nguy hiểm hay đoạn đường phải thi hành lệnh cấm hoặc hạn chế.', 5),
(224, 'https://onthigplx.vn/images/signS503b.webp', 'Hướng tác dụng của biển - S.503b', 'Biển được đặt dưới các loại biển báo nguy hiểm, biển báo cấm hoặc hạn chế. Biển thông báo chiều dài đoạn đường nguy hiểm hay đoạn đường phải thi hành lệnh cấm hoặc hạn chế.', 5),
(225, 'https://onthigplx.vn/images/signS503c.webp', 'Hướng tác dụng của biển - S.503c', 'Biển được đặt dưới các loại biển báo nguy hiểm, biển báo cấm hoặc hạn chế. Biển thông báo chiều dài đoạn đường nguy hiểm hay đoạn đường phải thi hành lệnh cấm hoặc hạn chế.', 5),
(226, 'https://onthigplx.vn/images/signS503d.webp', 'Hướng tác dụng của biển - S.503d', 'Biển được đặt dưới các loại biển báo nguy hiểm, biển báo cấm hoặc hạn chế. Biển thông báo chiều dài đoạn đường nguy hiểm hay đoạn đường phải thi hành lệnh cấm hoặc hạn chế.', 5),
(227, 'https://onthigplx.vn/images/signS503e.webp', 'Hướng tác dụng của biển - S.503e', 'Biển được đặt dưới các loại biển báo nguy hiểm, biển báo cấm hoặc hạn chế. Biển thông báo chiều dài đoạn đường nguy hiểm hay đoạn đường phải thi hành lệnh cấm hoặc hạn chế.', 5),
(228, 'https://onthigplx.vn/images/signS503f.webp', 'Hướng tác dụng của biển - S.503f', 'Biển được đặt dưới các loại biển báo nguy hiểm, biển báo cấm hoặc hạn chế. Biển thông báo chiều dài đoạn đường nguy hiểm hay đoạn đường phải thi hành lệnh cấm hoặc hạn chế.', 5),
(229, 'https://onthigplx.vn/images/signS504.webp', 'Làn đường - S.504', 'Biển được đặt dưới các loại biển báo nguy hiểm, biển báo cấm hoặc hạn chế. Biển thông báo chiều dài đoạn đường nguy hiểm hay đoạn đường phải thi hành lệnh cấm hoặc hạn chế.', 5),
(230, 'https://onthigplx.vn/images/signS506a.webp', 'Hướng đường ưu tiên - S.506a', 'Biển được đặt dưới các loại biển báo nguy hiểm, biển báo cấm hoặc hạn chế. Biển thông báo chiều dài đoạn đường nguy hiểm hay đoạn đường phải thi hành lệnh cấm hoặc hạn chế.', 5),
(231, 'https://onthigplx.vn/images/signS506b.webp', 'Hướng đường ưu tiên - S.506b', 'Biển được đặt dưới các loại biển báo nguy hiểm, biển báo cấm hoặc hạn chế. Biển thông báo chiều dài đoạn đường nguy hiểm hay đoạn đường phải thi hành lệnh cấm hoặc hạn chế.', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exam`
--

CREATE TABLE `exam` (
  `id` int(250) NOT NULL,
  `total` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `exam`
--

INSERT INTO `exam` (`id`, `total`) VALUES
(1, 25),
(2, 25),
(3, 25),
(4, 25),
(5, 25),
(6, 25),
(7, 25),
(8, 25),
(9, 25),
(10, 25),
(11, 25),
(12, 25);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `img` varchar(1000) DEFAULT NULL,
  `answers` mediumtext NOT NULL,
  `answer` int(2) NOT NULL,
  `critical` tinyint(1) NOT NULL,
  `hint` varchar(1000) NOT NULL,
  `question_exam` int(100) DEFAULT NULL,
  `question_chapter` int(100) DEFAULT NULL,
  `totalqserr` int(100) NOT NULL,
  `totalqscorrect` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `question`
--

INSERT INTO `question` (`id`, `text`, `img`, `answers`, `answer`, `critical`, `hint`, `question_exam`, `question_chapter`, `totalqserr`, `totalqscorrect`) VALUES
(1, 'Xe nào được quyền đi trước trong trường hợp này?', 'https://onthigplx.vn/images/onthigplx_vn__q495.webp', 'Mô tô.,Xe cứu thương.', 1, 0, 'Xe ưu tiên đi trước.', 1, 5, 7, 7),
(2, 'Theo Luật Giao thông đường bộ, tín hiệu đèn giao thông gồm 3 màu nào dưới đây?', '', 'Đỏ - Vàng - Xanh.,Cam - Vàng - Xanh.,Vàng - Xanh dương - Xanh lá.,Đỏ - Cam - Xanh.', 0, 0, '', 1, 1, 0, 0),
(3, 'Trường hợp này xe nào được quyền đi trước?', 'https://onthigplx.vn/images/onthigplx_vn__q492.webp', 'Mô tô.,Xe con.', 1, 0, 'Xe con được đi trước vì mô tô có biển STOP trước mặt.', 1, 5, 7, 7),
(4, 'Biển nào cấm tất cả các loại xe cơ giới và thô sơ đi lại trên đường, trừ xe ưu tiên theo luật định (nếu đường vẫn cho xe chạy được)?', 'https://onthigplx.vn/images/onthigplx_vn__q334.webp', 'Biển 1.,Biển 2.,Cả hai biển.', 0, 0, 'Biển 1: P.101 “Đường cấm” không cấm xe ưu tiên; Biển 2: R.122 “Dừng lại” áp dụng với cả xe ưu tiên; Nên Biển 1 là đáp án đúng.', 1, 4, 0, 0),
(5, 'Khi gặp biển nào thì xe mô tô hai bánh được đi vào?', 'https://onthigplx.vn/images/onthigplx_vn__q311.webp', 'Không biển nào.,Biển 1 và 2.,Biển 2 và 3.,Cả ba biển.', 2, 0, '', 1, 4, 7, 7),
(6, 'Trong hình dưới, những xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q543.webp', 'Xe con (E), mô tô (C).,Xe tải (A), mô tô (D).,Xe khách (B), mô tô (C).,Xe khách (B), mô tô (D).', 0, 0, 'Xe mô tô C chạy vào làn dành riêng xe ô tô: Vi phạm; Xe con E chạy vào làn dành riêng xe máy: Vi phạm.', 1, 5, 0, 0),
(7, 'Việc lái xe mô tô, ô tô, máy kéo ngay sau khi uống rượu, bia có được phép hay không?', '', 'Không được phép.,Chỉ được lái ở tốc độ chậm và quãng đường ngắn.,Chỉ được lái nếu trong cơ thể có nồng độ cồn thấp.', 0, 1, '', 1, 1, 0, 0),
(8, 'Trong các hành vi dưới đây, người lái xe mô tô có văn hóa giao thông phải ứng xử như thế nào?', '', 'Điều khiển xe đi bên phải theo chiều đi của mình; đi đúng phần đường, làn đường quy định; đội mũ bảo hiểm đạt chuẩn, cài quai đúng quy cách.,Điều khiển xe đi trên phần đường, làn đường có ít phương tiện tham gia giao thông,Đội mũ bảo hiểm ở nơi có biển báo bắt buộc đội mũ bảo hiểm', 0, 0, '', 1, 2, 0, 0),
(9, 'Xe của bạn đang di chuyển gần đến khu vực giao cắt với đường sắt, khi rào chắn đang dịch chuyển, bạn điều khiển xe như thế nào là đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q596.webp', 'Quan sát nếu thấy không có tàu thì tăng tốc cho xe vượt qua đường sắt.,Dừng lại trước rào chắn một khoảng cách an toàn.,Ra tín hiệu, yêu cầu người gác chắn tàu kéo chậm Barie để xe bạn qua.', 1, 0, 'Bắt buộc phải dừng xe.', 1, 5, 0, 0),
(10, 'Người lái xe được hiểu như thế nào trong các khái niệm dưới đây?', '', 'Là người điều khiển xe cơ giới,Là người điều khiển xe thô sơ.,Là người điều khiển xe có súc vật kéo.', 0, 0, '', 1, 1, 0, 0),
(11, 'Trong các biển dưới đây biển nào là biển “Hết mọi lệnh cấm”?', 'https://onthigplx.vn/images/onthigplx_vn__q443.webp', 'Biển 1.,Biển 2.,Biển 3.,Cả ba biển', 1, 0, 'Biển 1: DP.134 “Hết hạn chế tốc độ tối đa”; Biển 2: DP.135 “Hết tất cả các lệnh cấm”; Biển 3: R.307 “Hết hạn chế tốc độ tối thiểu”.', 1, 4, 0, 0),
(12, 'Bạn có được phép vượt xe mô tô phía trước không?', 'https://onthigplx.vn/images/onthigplx_vn__q556.webp', 'Cho phép.,Không được vượt.', 1, 0, 'Tại nơi giao nhau, trên đoạn đường có làn đường dành cho người đi bộ cắt ngang thì không được phép vượt.', 1, 5, 0, 0),
(13, 'Những thói quen nào dưới đây khi điều khiển xe mô tô tay ga tham gia giao thông dễ gây tai nạn nguy hiểm?', '', 'Sử dụng còi.,Phanh đồng thời cả phanh trước và phanh sau.,Chỉ sử dụng phanh trước.', 2, 0, '', 1, 3, 0, 0),
(14, 'Tại nơi đường giao nhau, khi đèn điều khiển giao thông có tín hiệu màu vàng, người điều khiển phương tiện giao thông phải chấp hành như thế nào là đúng quy tắc giao thông?', '', 'Phải cho xe dừng lại trước vạch dừng, trường hợp đã đi quá vạch dừng hoặc đã quá gần vạch dừng nếu dừng lại thấy nguy hiểm thì được đi tiếp.,Trong trường hợp tín hiệu vàng nhấp nháy là được đi nhưng phải giảm tốc độ, chú ý quan sát nhường đường cho người đi bộ qua đường.,Nhanh chóng tăng tốc độ, vượt qua nút giao và chú ý đảm bảo an toàn.,Cả ý 1 và ý 2.', 3, 0, '', 1, 1, 0, 0),
(15, 'Vạch kẻ đường nào dưới đây là vạch phân chia hai chiều xe chạy (vạch tim đường), xe không được lấn làn, không được đè lên vạch?', 'https://onthigplx.vn/images/onthigplx_vn__q479.webp', 'Vạch 1.,Vạch 2.,Vạch 3.,Cả 3 vạch.', 1, 0, '', 1, 4, 0, 0),
(16, 'Biển nào cấm các phương tiện giao thông đường bộ rẽ phải?', 'https://onthigplx.vn/images/onthigplx_vn__q321.webp', 'Biển 1 và 2.,Biển 1 và 3.,Biển 2 và 3.,Cả ba biển.', 0, 0, 'Biển 1: 123b “Cấm rẽ phải”; Biển 2: 124d “Cấm rẽ phải và quay xe”; Biển 3: 124f “Cấm ô tô rẽ phải và quay xe”. Nên biển 3 chỉ cấm xe ô tô, còn biển 1 và biển 2 cấm toàn bộ phương tiện rẽ phải.', 1, 4, 0, 0),
(17, 'Trong các khái niệm dưới đây, “dải phân cách” được hiểu như thế nào là đúng?', '', 'Là bộ phận của đường để ngăn cách không cho các loại xe vào những nơi không được phép.,Là bộ phận của đường để phân tách phần đường xe chạy và hành lang an toàn giao thông.,Là bộ phận của đường để phân chia mặt đường thành hai chiều xe chạy riêng biệt hoặc để phân chia phần đường của xe cơ giới và xe thô sơ.', 2, 0, '', 1, 1, 0, 0),
(18, 'Biển báo này có ý nghĩa như thế nào?', 'https://onthigplx.vn/images/onthigplx_vn__q339.webp', 'Tốc độ tối đa cho phép về ban đêm cho các phương tiện là 70 km/h.,Tốc độ tối thiểu cho phép về ban đêm cho các phương tiện là 70 km/h.', 0, 0, '', 1, 4, 0, 0),
(19, 'Theo hướng mũi tên, những hướng nào xe gắn máy đi được?', 'https://onthigplx.vn/images/onthigplx_vn__q507.webp', 'Cả ba hướng.,Chỉ hướng 1 và 3.,Chỉ hướng 1.', 0, 0, 'Bạn lưu ý câu hỏi này hỏi về hướng đi của xe <b>GẮN MÁY</b>. Hướng 1 và 3 chắc chắn là đi được rồi. Với hướng 2, biển báo cấm mô tô đi vào chỉ có tác dụng với xe MÔ TÔ nên xe gắn máy không có hiệu lực. Do đó vẫn đi vào bình thường.', 1, 5, 0, 0),
(20, 'Trên đường có nhiều làn đường cho xe đi cùng chiều được phân biệt bằng vạch kẻ phân làn đường, người điều khiển phương tiện phải cho xe đi như thế nào?', '', 'Cho xe đi trên bất kỳ làn đường nào hoặc giữa 02 làn đường nếu không có xe phía trước; khi cần thiết phải chuyển làn đường, người lái xe phải quan sát xe phía trước để bảo đảm an toàn.,Phải cho xe đi trong một làn đường và chỉ được chuyển làn đường ở những nơi cho phép; khi chuyển làn phải có tín hiệu báo trước và phải bảo đảm an toàn.,Phải cho xe đi trong một làn đường, khi cần thiết phải chuyển làn đường, người lái xe phải quan sát xe phía trước để bảo đảm an toàn.', 1, 0, '', 1, 1, 0, 0),
(21, 'Trong trường hợp này, thứ tự xe đi như thế nào là đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q540.webp', 'Xe công an, xe quân sự, xe con + mô tô.,Xe quân sự, xe công an, xe con + mô tô.,Xe mô tô + xe con, xe quân sự, xe công an.', 1, 0, 'Thứ tự ưu tiên: Xe ưu tiên - Đường ưu tiên - Bên phải trống - Rẽ phải - Đi thẳng - Rẽ trái. 1. Xe quân sự: Xe ưu tiên cùng cấp xe công an nhưng đi thẳng; 2. Xe công an: Xe ưu tiên; rẽ trái; 3. Xe con và xe mô tô: Cùng đi thẳng.', 1, 5, 0, 0),
(22, '“Dải phân cách” trên đường bộ gồm những loại nào?', '', 'Dải phân cách gồm loại cố định và loại di động.,Dải phân cách gồm tường chống ồn, hộ lan cứng và hộ lan mềm.,Dải phân cách gồm giá long môn và biển báo hiệu đường bộ.', 0, 0, '', 1, 1, 0, 0),
(23, 'Khái niệm “phương tiện giao thông thô sơ đường bộ” được hiểu thế nào là đúng?', '', 'Gồm xe đạp (kể cả xe đạp máy, xe đạp điện), xe xích lô, xe lăn dùng cho người khuyết tật, xe súc vật kéo và các loại xe tương tự.,Gồm xe đạp (kể cả xe đạp máy, xe đạp điện), xe gắn máy, xe cơ giới dùng cho người khuyết tật và xe máy chuyên dùng.,Gồm xe ô tô, máy kéo, rơ moóc hoặc sơ mi rơ moóc được kéo bởi xe ô tô, máy kéo.', 0, 0, 'Không có xe máy chuyên dùng, xe ô tô.', 1, 1, 0, 0),
(24, 'Đường bộ trong khu vực đông dân cư gồm những đoạn đường nào dưới đây?', '', 'Là đoạn đường nằm trong khu công nghiệp có đông người và phương tiện tham gia giao thông và được xác định cụ thể bằng biển chỉ dẫn địa giới.,Là đoạn đường bộ nằm trong khu vực nội thành phố, nội thị xã, nội thị trấn và những đoạn đường có dân cư sinh sống sát dọc theo đường, có các hoạt động có thể ảnh hưởng đến giao thông đường bộ và được xác định bằng biển báo là đường qua khu đông dân cư.,Là đoạn đường nằm ngoài khu vực nội thành phố, nội thị xã có đông người và phương tiện tham gia giao thông và được xác định cụ thể bằng biển chỉ dẫn địa giới.', 1, 0, '', 1, 1, 0, 0),
(25, 'Biển nào chỉ dẫn cho người đi bộ sử dụng cầu vượt qua đường?', 'https://onthigplx.vn/images/onthigplx_vn__q454.webp', 'Biển 1.,Biển 2.,Cả hai biển.,Không biển nào.', 0, 0, 'Biển 1: I424a “Cầu vượt qua đường cho người đi bộ”; Biển 2: I424c “Hầm chui qua đường cho người đi bộ” nên đáp án đúng là biển 1.', 1, 4, 0, 0),
(26, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q520.webp', 'Xe con (A), mô tô, xe con (B), xe đạp.,Xe con (B), xe đạp, mô tô, xe con (A).,Xe con (A), xe con (B), mô tô + xe đạp.,Mô tô + xe đạp, xe con (A), xe con (B).', 3, 0, 'Thứ tự ưu tiên đường cùng cấp: Xe ưu tiên - Đường ưu tiên - Bên phải trống - rẽ phải - đi thẳng - rẽ trái. 1. Mô tô và xe đạp: Bên phải trống; 2. Xe con (A): Đi thẳng; 3. Xe con (B): Rẽ trái.', 2, 5, 0, 0),
(27, 'Người điều khiển xe mô tô hai bánh, xe gắn máy không được thực hiện những hành vi nào dưới đây?', '', 'Đi vào phần đường dành cho người đi bộ và phương tiện khác; sử dụng ô, điện thoại di động, thiết bị âm thanh (trừ thiết bị trợ thính), đi xe dàn hàng ngang.,Chở 02 người; trong đó, có người bệnh đi cấp cứu hoặc trẻ em dưới 14 tuổi hoặc áp giải người có hành vi vi phạm pháp luật.,Điều khiển phương tiện tham gia giao thông trên đường tỉnh lộ hoặc quốc lộ.', 0, 0, '', 2, 1, 0, 0),
(28, 'Bạn đang lái xe trong khu vực đô thị từ 22 giờ đến 5 giờ sáng hôm sau và cần vượt một xe khác, bạn cần báo hiệu như thế nào để đảm bảo an toàn giao thông?', '', 'Phải báo hiệu bằng đèn hoặc còi.,Chỉ được báo hiệu bằng còi.,Phải báo hiệu bằng cả còi và đèn.,Chỉ được báo hiệu bằng đèn.', 3, 0, '', 2, 1, 0, 0),
(29, 'Theo hướng mũi tên, xe nào được phép đi?', 'https://onthigplx.vn/images/onthigplx_vn__q529.webp', 'Mô tô, xe con.,Xe con, xe tải.,Mô tô, xe tải.,Cả ba xe.', 2, 0, 'Giang ngang tay: Trái phải đi; Trước sau dừng. Xe mô tô và xe tải được phép đi là đáp án đúng.', 2, 5, 0, 0),
(30, '“Phương tiện tham gia giao thông đường bộ” gồm những loại nào?', '', 'Phương tiện giao thông cơ giới đường bộ.,Phương tiện giao thông thô sơ đường bộ và xe máy chuyên dùng.,Cả ý 1 và ý 2.', 2, 0, 'Tất cả các loại phương tiện.', 2, 1, 0, 0),
(31, 'Khi xảy ra tai nạn giao thông, có người bị thương nghiêm trọng, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì?', '', 'Thực hiện sơ cứu ban đầu trong trường hợp khẩn cấp; thông báo vụ tai nạn đến cơ quan thi hành pháp luật.,Nhanh chóng lái xe gây tai nạn hoặc đi nhờ xe khác ra khỏi hiện trường vụ tai nạn.,Cả ý 1 và ý 2.', 0, 0, '', 2, 2, 0, 0),
(32, 'Tại các điểm giao cắt giữa đường bộ và đường sắt, quyền ưu tiên thuộc về loại phương tiện nào dưới đây?', '', 'Xe cứu hỏa.,Xe cứu thương.,Phương tiện giao thông đường sắt.,Ô tô, mô tô và xe máy chuyên dùng.', 2, 1, '', 2, 1, 0, 0),
(33, 'Xe nào đỗ vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q509.webp', 'Chỉ mô tô.,Chỉ xe tải.,Cả ba xe.,Chỉ mô tô và xe tải.', 2, 0, 'Xe tải đậu trái đường; Xe con và mô tô đậu xe đè vạch nên cả 3 xe vi phạm.', 2, 5, 0, 0),
(34, 'Phần của đường bộ được sử dụng cho các phương tiện giao thông qua lại là gì?', '', 'Phần mặt đường và lề đường.,Phần đường xe chạy.,Phần đường xe cơ giới.', 1, 0, 'Lề đường không sử dụng cho các phương tiện giao thông qua lại.', 2, 1, 0, 0),
(35, 'Khái niệm “người điều khiển giao thông” được hiểu như thế nào là đúng?', '', 'Là người điều khiển phương tiện tham gia giao thông tại nơi thi công, nơi ùn tắc giao thông, ở bến phà, tại cầu đường bộ đi chung với đường sắt.,Là cảnh sát giao thông, người được giao nhiệm vụ hướng dẫn giao thông tại nơi thi công, nơi ùn tắc giao thông, ở bến phà, tại cầu đường bộ đi chung với đường sắt.,Là người tham gia giao thông tại nơi thi công, nơi ùn tắc giao thông, ở bến phà, tại cầu đường bộ đi chung với đường sắt.', 1, 0, 'Người điều khiển giao thông là cảnh sát giao thông.', 2, 1, 0, 0),
(36, 'Các xe đi như thế nào là đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q528.webp', 'Các xe ở phía tay phải và tay trái của người điều khiển được phép đi thẳng.,Cho phép các xe ở mọi hướng được rẽ phải.,Tất cả các xe phải dừng lại trước ngã tư, trừ những xe đã ở trong ngã tư được phép tiếp tục đi.', 2, 0, 'Giơ tay thẳng đứng: Tất cả dừng, trừ xe đã ở trong ngã tư được phép đi; Giang ngang tay: Trái phải đi; Trước sau dừng; Tay phải giơ trước: Sau, phải dừng, trước rẽ phải, trái đi các hướng, người đi bộ qua đường đi sau người điều khiển.', 2, 5, 0, 0),
(37, 'Biển nào chỉ dẫn cho người đi bộ sử dụng hầm chui qua đường?', 'https://onthigplx.vn/images/onthigplx_vn__q455.webp', 'Biển 1.,Biển 2.,Cả hai biển.,Không biển nào.', 1, 0, 'Biển 1: I424b “Cầu vượt qua đường cho người đi bộ”; Biển 2: I424d “Hầm chui qua đường cho người đi bộ” nên đáp án đúng là biển 2.', 2, 4, 0, 0),
(38, 'Các xe đi theo thứ tự nào là đúng quy tắc giao thông đường bộ?', 'https://onthigplx.vn/images/onthigplx_vn__q568.webp', 'Xe của bạn, mô tô, xe con.,Xe con, xe của bạn, mô tô.,Mô tô, xe con, xe của bạn.', 1, 0, 'Thứ tự ưu tiên: Xe ưu tiên - Đường ưu tiên - Đường cùng cấp: Bên phải trống, rẽ phải, đi thẳng, rẽ trái. 1. Xe con: Rẽ phải; 2. Xe của bạn: Đi thẳng; 3. Mô tô: Rẽ trái.', 2, 5, 0, 0),
(39, 'Biển nào báo hiệu “Giao nhau với đường không ưu tiên”?', 'https://onthigplx.vn/images/onthigplx_vn__q386.webp', 'Biển 1.,Biển 2.,Biển 3.,Biển 2 và 3.', 0, 0, 'Biển 1: W.207a “Giao nhau với đường không ưu tiên”; Biển 2: W.208 “Giao nhau với đường ưu tiên”; Biển 3: I.401 “Bắt đầu đường ưu tiên”.', 2, 4, 0, 0),
(40, 'Biển nào báo hiệu “Giao nhau với đường hai chiều”?', 'https://onthigplx.vn/images/onthigplx_vn__q401.webp', 'Biển 1.,Biển 2.,Biển 3.', 1, 0, '', 2, 4, 0, 0),
(41, 'Đường mà trên đó phương tiện tham gia giao thông được các phương tiện giao thông đến từ hướng khác nhường đường khi qua nơi đường giao nhau, được cắm biển báo hiệu đường ưu tiên là loại đường gì?', '', 'Đường không ưu tiên.,Đường tỉnh lộ.,Đường quốc lộ.,Đường ưu tiên.', 3, 0, '', 2, 1, 0, 0),
(42, 'Khi quay đầu xe, người lái xe cần phải quan sát và thực hiện các thao tác nào để đảm bảo an toàn giao thông?', '', 'Quan sát biển báo hiệu để biết nơi được phép quay đầu; quan sát kỹ địa hình nơi chọn để quay đầu; lựa chọn quỹ đạo quay đầu xe cho thích hợp; quay đầu xe với tốc độ thấp; thường xuyên báo tín hiệu để người, các phương tiện xung quanh được biết; nếu quay đầu xe ở nơi nguy hiểm thì đưa đầu xe về phía nguy hiểm đưa đuôi xe về phía an toàn.,Quan sát biển báo hiệu để biết nơi được phép quay đầu; quan sát kỹ địa hình nơi chọn để quay đầu; lựa chọn quỹ đạo quay đầu xe; quay đầu xe với tốc độ tối đa; thường xuyên báo tín hiệu để người, các phương tiện xung quanh được biết; nếu quay đầu xe ở nơi nguy hiểm thì đưa đuôi xe về phía nguy hiểm và đầu xe về phía an toàn.', 0, 0, 'Quay đầu xe với tốc độ thấp.', 2, 3, 0, 0),
(43, 'Vạch dưới đây có ý nghĩa gì?', 'https://onthigplx.vn/images/onthigplx_vn__q486.webp', 'Vị trí dừng xe của các phương tiện vận tải hành khách công cộng.,Báo cho người điều khiển được dừng phương tiện trong phạm vi phần mặt đường có bố trí vạch để tránh ùn tắc giao thông.,Dùng để xác định vị trí giữa các phương tiện trên đường.', 0, 0, 'Vạch 9.2: Vạch quy định vị trí dừng đỗ của phương tiện giao thông công cộng trên đường.', 2, 4, 0, 0),
(44, 'Khi gặp biển nào xe ưu tiên theo luật định vẫn phải dừng lại?', 'https://onthigplx.vn/images/onthigplx_vn__q333.webp', 'Biển 1.,Biển 2.,Cả ba biển.', 1, 0, 'Biển 1: P.101 “Đường cấm” không cấm xe ưu tiên; Biển 2: R.122 “Dừng lại” áp dụng với cả xe ưu tiên; Biển 3: P.102 “Cấm đi ngược chiều” không áp dụng với xe ưu tiên; Nên Biển 2 là đáp án đúng, áp dụng với cả xe ưu tiên.', 2, 4, 0, 0),
(45, 'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q562.webp', 'Xe con, xe tải, xe khách.,Xe tải, xe khách, xe mô tô.,Xe khách, xe mô tô, xe con.,Cả bốn xe.', 1, 0, 'Xe con đi đúng làn đường theo hướng rẽ và tín hiệu đèn. Xe khách: Sai làn đường và tín hiệu đèn. Xe tải: Đi thẳng vi phạm đèn đỏ. Xe mô tô: Đi thẳng vi phạm đèn đỏ.', 2, 5, 0, 0),
(46, 'Xe nào dừng đúng theo quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q592.webp', 'Xe con.,Xe mô tô.,Cả 2 xe đều sai.', 0, 0, 'Biển số W.211a “Giao nhau với đường sắt không có rào chắn” thì các phương tiện đứng cách xa đường sắt tối thiểu 5m nên xe con đúng.', 2, 5, 0, 0),
(47, 'Khi điều khiển xe chạy trên đường biết có xe sau xin vượt nếu đủ điều kiện an toàn người lái xe phải làm gì?', '', 'Tăng tốc độ và ra hiệu cho xe sau vượt, không được gây trở ngại cho xe sau vượt.,Người điều khiển phương tiện phía trước phải giảm tốc độ, đi sát về bên phải của phần đường xe chạy cho đến khi xe sau đã vượt qua, không được gây trở ngại cho xe sau vượt.,Cho xe tránh về bên trái mình và ra hiệu cho xe sau vượt; nếu có chướng ngại vật phía trước hoặc thiếu điều kiện an toàn chưa cho vượt được phải ra hiệu cho xe sau biết; cấm gây trở ngại cho xe xin vượt.', 1, 0, '', 2, 1, 0, 0),
(48, 'Biển nào cho phép xe rẽ trái?', 'https://onthigplx.vn/images/onthigplx_vn__q326.webp', 'Biển 1.,Biển 2.,Không biển nào.', 1, 0, 'Biển 1: P.123a “Cấm rẽ trái” không cấm quay đầu xe; Biển 2: I.410 “Khu vực quay xe”. Nên Biển 2 cho phép quay xe là đáp án đúng.', 2, 4, 0, 0),
(49, 'Khi gặp biển nào, người lái xe phải giảm tốc độ, chú ý xe đi ngược chiều, xe đi ở phía đường bị hẹp phải nhường đường cho xe đi ngược chiều?', 'https://onthigplx.vn/images/onthigplx_vn__q389.webp', 'Biển 1.,Biển 1 và 3.,Biển 2 và 3.,Cả ba biển.', 2, 0, 'Biển 1: W.236 “Hết đường đôi”; Biển 2: Biển 2: W203b “Đường bị hẹp về phía trái”; Biển 3:  Biển 3: W203c “Đường bị hẹp về phía phải”. Câu này hỏi về việc đường bị thu hẹp nên câu trả lời đúng là Biển 2 và Biển 3.', 2, 4, 0, 0),
(50, 'Biển báo hiệu hình tròn có nền xanh lam có hình vẽ màu trắng là loại biển gì dưới đây?', 'https://onthigplx.vn/images/onthigplx_vn__q74.webp', 'Biển báo nguy hiểm.,Biển báo cấm.,Biển báo hiệu lệnh phải thi hành.,Biển báo chỉ dẫn.', 2, 0, '', 2, 1, 0, 0),
(51, 'Biển nào xe quay đầu không bị cấm?', 'https://onthigplx.vn/images/onthigplx_vn__q327.webp', 'Biển 1.,Biển 2.,Cả 2 biển.', 2, 0, 'Biển 1: P.123a “Cấm rẽ trái” không cấm quay đầu xe; Biển 2: I.410 “Khu vực quay xe”. Nên cả 2 biển cho phép quay đầu xe là đáp án đúng.', 3, 4, 0, 0),
(52, 'Biển nào báo hiệu cấm xe mô tô hai bánh đi vào?', 'https://onthigplx.vn/images/onthigplx_vn__q310.webp', 'Biển 1.,Biển 2.,Biển 3.', 0, 0, '', 3, 4, 0, 0),
(53, 'Biển nào báo hiệu “Đường một chiều”?', 'https://onthigplx.vn/images/onthigplx_vn__q438.webp', 'Biển 1.,Biển 2.,Cả hai biển.', 1, 0, 'Biển 1: R.301a “Hướng đi phải theo” chỉ được đi thẳng đặt trước ngã ba, ngã tư; Biển 2: I.407a “Đường một chiều”; Nên Biển 2 là đáp án đúng.', 3, 4, 0, 0),
(54, 'Biển nào dưới đây báo hiệu hết cấm vượt?', 'https://onthigplx.vn/images/onthigplx_vn__q442.webp', 'Biển 1.,Biển 2.,Biển 3.,Biển 2 và 3.', 3, 0, 'Biển 1: DP.134 “Hết hạn chế tốc độ tối đa”; Biển 2: DP.135 “Hết tất cả các lệnh cấm”; Biển 3: DP.133 “Hết cấm vượt”; Nên đáp án đúng phải là Biển 2 và Biển 3.', 3, 4, 0, 0),
(55, 'Trong trường hợp này xe nào đỗ vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q505.webp', 'Xe tải.,Xe con và mô tô.,Cả ba xe.,Xe con và xe tải.', 0, 0, 'Biển cấm đỗ xe tải (ở biển phụ) nên chỉ có xe tải vi phạm.', 3, 5, 0, 0),
(56, 'Người có giấy phép lái xe mô tô hạng A1 không được phép điều khiển loại xe nào dưới đây?', '', 'Xe mô tô có dung tích xi-lanh 125 cm3.,Xe mô tô có dung tích xi-lanh từ 175 cm3 trở lên.,Xe mô tô có dung tích xi-lanh 100 cm3.', 1, 0, '', 3, 1, 0, 0),
(57, 'Trong các hành vi dưới đây, người lái xe ô tô có văn hóa giao thông phải ứng xử như thế nào?', '', 'Điều khiển xe đi bên phải theo chiều đi của mình; đi đúng phần đường, làn đường quy định; dừng, đỗ xe đúng nơi quy định; đã uống rượu, bia thì không lái xe.,Điều khiển xe đi trên phần đường, làn đường có ít phương tiện giao thông; dừng xe, đỗ xe ở nơi thuận tiện hoặc theo yêu cầu của hành khách, của người thân.,Dừng và đỗ xe ở nơi thuận tiện cho việc giao nhận hành khách và hàng hóa; sử dụng ít rượu, bia thì có thể lái xe.', 0, 0, '', 3, 2, 0, 0),
(58, 'Xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q527.webp', 'Xe khách.,Mô tô.,Xe con.,Xe con và mô tô.', 2, 0, 'Xe con quay đầu đè vạch liền trên đường nên vi phạm.', 3, 5, 0, 0),
(59, 'Khi muốn chuyển hướng, người lái xe phải thực hiện như thế nào để đảm bảo an toàn giao thông?', '', 'Quan sát gương, ra tín hiệu chuyển hướng, quan sát an toàn và chuyển hướng.,Quan sát gương, giảm tốc độ, ra tín hiệu chuyển hướng, quan sát an toàn và chuyển hướng.,Quan sát gương, tăng tốc độ, ra tín hiệu và chuyển hướng.', 1, 0, '', 3, 1, 0, 0),
(60, '“Người tham gia giao thông đường bộ” gồm những đối tượng nào?', '', 'Người điều khiển, người sử dụng phương tiện tham gia giao thông đường bộ.,Người điều khiển, dẫn dắt súc vật; người đi bộ trên đường bộ.,Cả ý 1 và ý 2.', 2, 0, 'Có đi trên đường là tham gia giao thông.', 3, 1, 0, 0),
(61, 'Biển nào báo hiệu “Giao nhau có tín hiệu đèn”?', 'https://onthigplx.vn/images/onthigplx_vn__q376.webp', 'Biển 1.,Biển 2.,Biển 3.,Cả ba biển.', 2, 0, 'Biển 1: W.210 “Giao nhau với đường sắt có rào chắn”; Biển 2: W.208 “Giao nhau với đường ưu tiên”; Biển 3: W.209 “Giao nhau có tín hiệu đèn”.', 3, 4, 0, 0),
(62, 'Gặp biển nào xe xích lô được phép đi vào?', 'https://onthigplx.vn/images/onthigplx_vn__q336.webp', 'Biển 1.,Biển 2.,Biển 3.,Biển 1 và 2.', 3, 0, '', 3, 4, 0, 0),
(63, 'Trên đoạn đường bộ giao nhau cùng mức với đường sắt, cầu đường bộ đi chung với đường sắt thì loại phương tiện nào được quyền ưu tiên đi trước?', '', 'Phương tiện nào bên phải không vướng.,Phương tiện nào ra tín hiệu xin đường trước.,Phương tiện giao thông đường sắt.', 2, 1, '', 3, 1, 0, 0),
(64, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q504.webp', 'Xe khách, xe tải, mô tô, xe con.,Xe con, xe khách, xe tải, mô tô.,Mô tô, xe tải, xe khách, xe con.,Mô tô, xe tải, xe con, xe khách.', 2, 0, 'Giao nhau cùng cấp có vòng xuyến: Chưa vào vòng xuyến thì ưu tiên xe bên phải; đã vào vòng xuyến ưu tiên xe từ bên trái tới. Toàn bộ các xe chưa vào phòng xuyến nên ưu tiên xe bên phải. Thứ tự sẽ là Mô tô, xe tải, xe khách, xe con.', 3, 5, 0, 0),
(65, 'Khi gặp xe buýt đang dừng đón, trả khách, người điều khiển xe mô tô phải xử lý như thế nào dưới đây để đảm bảo an toàn giao thông?', '', 'Tăng tốc độ để nhanh chóng vượt qua bến đỗ.,Giảm tốc độ đến mức an toàn có thể và quan sát người qua đường và từ từ vượt qua xe buýt.,Yêu cầu phải dừng lại phía sau xe buýt chờ xe rời bến mới đi tiếp.', 1, 0, '', 3, 1, 0, 0),
(66, 'Gương chiếu hậu của xe mô tô hai bánh, có tác dụng gì trong các trường hợp dưới đây?', '', 'Để quan sát an toàn phía bên trái khi chuẩn bị rẽ trái.,Để quan sát an toàn phía bên phải khi chuẩn bị rẽ phải.,Để quan sát an toàn phía sau cả bên trái và bên phải trước khi chuyển hướng.,Để quan sát an toàn phía trước cả bên trái và bên phải trước khi chuyển hướng.', 2, 0, '', 3, 3, 0, 0),
(67, 'Bạn xử lý như thế nào trong trường hợp này?', 'https://onthigplx.vn/images/onthigplx_vn__q572.webp', 'Tăng tốc độ, rẽ phải trước xe tải và xe đạp.,Giảm tốc độ, rẽ phải sau xe tải và xe đạp.,Tăng tốc độ, rẽ phải trước xe đạp.', 1, 0, 'Xe tải đã vào nơi giao nhau trước nên sẽ được ưu tiên trước. Biển báo phía trước là đường ưu tiên dành cho xe thô sơ nên phải nhường đường cho xe đạp. Do đó, xe bạn rẽ phải sau xe tải và xe đạp.', 3, 5, 0, 0),
(68, 'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q560.webp', 'Xe con.,Xe tải.,Xe con, xe tải.', 1, 0, 'Xe con trong cả hai phía đều đang ở đúng làn đường và đi theo hướng mà đèn xanh đang bật nên đúng quy tắc. Xe tải trong cả hai phía đều ở sai làn đường so với hướng rẽ nên vi phạm quy tắc giao thông.', 3, 5, 0, 0),
(69, 'Người có giấy phép lái xe mô tô hạng A1 được phép điều khiển loại xe nào dưới đây?', '', 'Xe mô tô có dung tích xi-lanh từ 50 cm3 đến dưới 175 cm3.,Xe mô tô ba bánh dành cho người khuyết tật.,Cả ý 1 và ý 2.', 2, 0, '', 3, 1, 0, 0),
(70, 'Các phương tiện tham gia giao thông đường bộ (kể cả những xe có quyền ưu tiên) đều phải dừng lại bên phải đường của mình và trước vạch “dừng xe” tại các điểm giao cắt giữa đường bộ và đường sắt khi có báo hiệu dừng nào dưới đây?', '', 'Hiệu lệnh của nhân viên gác chắn.,Đèn đỏ sáng nháy, cờ đỏ, biển đỏ.,Còi, chuông kêu, chắn đã đóng.,Tất cả các ý trên.', 3, 0, '', 3, 1, 0, 0),
(71, 'Người lái xe sử dụng đèn như thế nào khi lái xe trong khu đô thị và đông dân cư vào ban đêm?', '', 'Bất cứ đèn nào miễn là mắt nhìn rõ phía trước.,Chỉ bật đèn chiếu xa (đèn pha) khi không nhìn rõ đường.,Đèn chiếu xa (đèn pha) khi đường vắng, đèn pha chiếu gần (đèn cốt) khi có xe đi ngược chiều.,Đèn chiếu gần (đèn cốt).', 3, 0, '', 3, 1, 0, 0),
(72, 'Trên đường bộ (trừ đường cao tốc) trong khu vực đông dân cư, đường đôi có dải phân cách giữa, xe mô tô hai bánh, ô tô chở người đến 30 chỗ tham gia giao thông với tốc độ tối đa cho phép là bao nhiêu?', '', '60 km/h.,50 km/h.,40 km/h.', 0, 0, '', 3, 1, 0, 0),
(73, 'Xe nào được quyền đi trước trong trường hợp này?', 'https://onthigplx.vn/images/onthigplx_vn__q525.webp', 'Mô tô.,Xe con.', 0, 0, 'Thứ tự ưu tiên: Xe ưu tiên - Đường ưu tiên - Bên phải trống - Rẽ phải - Đi thẳng - Rẽ trái. Xe mô tô rẽ trái từ đường ưu tiên vào đường ưu tiên (theo biển báo và biển phụ) nên được quyền đi trước.', 3, 5, 0, 0),
(74, 'Biển nào báo hiệu “Đường hai chiều”?', 'https://onthigplx.vn/images/onthigplx_vn__q400.webp', 'Biển 1.,Biển 2.,Biển 3.', 1, 0, '', 3, 4, 0, 0),
(75, 'Trong tình huống dưới đây, xe đầu kéo kéo rơ moóc (xe container) đang rẽ phải, xe con màu xanh đi như thế nào để đảm bảo an toàn?', 'https://onthigplx.vn/images/onthigplx_vn__q600.webp', 'Vượt về phía bên phải để đi tiếp.,Giảm tốc độ chờ xe đầu kéo rẽ phải, rồi tiếp tục đi.,Vượt về phía bên trái để đi tiếp.', 1, 0, 'Giảm tốc độ chờ xe đầu kéo rẽ phải rồi mới tiếp tục đi.', 3, 5, 0, 0),
(76, 'Biển báo hiệu hình chữ nhật hoặc hình vuông hoặc hình mũi tên nền xanh lam là loại biển gì dưới đây?', 'https://onthigplx.vn/images/onthigplx_vn__q75.webp', 'Biển báo nguy hiểm.,Biển báo cấm.,Biển báo hiệu lệnh phải thi hành.,Biển báo chỉ dẫn.', 3, 0, '', 4, 1, 0, 0),
(77, 'Người lái xe phải xử lý như thế nào khi quan sát phía trước thấy người đi bộ đang sang đường tại nơi có vạch đường dành cho người đi bộ để đảm bảo an toàn?', '', 'Giảm tốc độ, đi từ từ để vượt qua trước người đi bộ.,Giảm tốc độ, có thể dừng lại nếu cần thiết trước vạch dừng xe để nhường đường cho người đi bộ qua đường.,Tăng tốc độ để vượt qua trước người đi bộ.', 1, 0, '', 4, 1, 0, 0),
(78, 'Khi đã đỗ xe ô tô sát lề đường bên phải, người lái xe phải thực hiện các thao tác nào dưới đây khi mở cửa xuống xe để đảm bảo an toàn?', '', 'Quan sát tình hình giao thông phía sau, mở hé cánh cửa, nếu đảm bảo an toàn thì mở cửa ở mức cần thiết để xuống xe ô tô.,Mở cánh cửa và quan sát tình hình giao thông phía trước, nếu đảm bảo an toàn thì mở cửa ở mức cần thiết để xuống xe ô tô.,Mở cánh cửa hết hành trình và nhanh chóng ra khỏi xe ô tô.', 0, 1, '', 4, 3, 0, 0),
(79, 'Theo hướng mũi tên, những hướng nào xe mô tô được phép đi?', 'https://onthigplx.vn/images/onthigplx_vn__q539.webp', 'Cả ba hướng.,Hướng 1 và 2.,Hướng 1 và 3.,Hướng 2 và 3.', 2, 0, 'Hướng 2 có Biển số P.104 “Cấm mô tô”. Hướng 3 Biển số P.103a “Cấm ô tô” nhưng không cấm mô tô. Nên đáp án đúng là hướng 1 và hướng 3.', 4, 5, 0, 0),
(80, 'Trên đường bộ (trừ đường cao tốc) trong khu vực đông dân cư, đường hai chiều không có dải phân cách giữa, xe mô tô hai bánh, ô tô chở người đến 30 chỗ tham gia giao thông với tốc độ tối đa cho phép là bao nhiêu?', '', '60 km/h.,50 km/h.,40 km/h.', 1, 0, '', 4, 1, 0, 0),
(81, 'Biển báo nào báo hiệu bắt đầu đoạn đường vào phạm vi khu dân cư, các phương tiện tham gia giao thông phải tuân theo các quy định đi đường được áp dụng ở khu đông dân cư?', 'https://onthigplx.vn/images/onthigplx_vn__q365.webp', 'Biển 1.,Biển 2.', 0, 0, '', 4, 4, 0, 0),
(82, 'Để đạt được hiệu quả phanh cao nhất, người lái xe mô tô phải sử dụng các kỹ năng như thế nào dưới đây?', '', 'Sử dụng phanh trước.,Sử dụng phanh sau.,Giảm hết ga; sử dụng đồng thời cả phanh sau và phanh trước.', 2, 0, '', 4, 3, 0, 0),
(83, 'Biển nào xe mô tô hai bánh được đi vào?', 'https://onthigplx.vn/images/onthigplx_vn__q353.webp', 'Biển 1 và 2.,Biển 1 và 3.,Biển 2 và 3.', 1, 0, 'Biển chính là P.101 “Đường cấm”, có biển phụ thì áp dụng cấm theo biển phụ. Nên Biển 1 và Biển 3 không áp dụng với xe mô tô là câu trả lời đúng.', 4, 4, 0, 0),
(84, 'Trên đường đang xảy ra ùn tắc những hành vi nào sau đây là thiếu văn hóa khi tham gia giao thông?', '', 'Bấm còi liên tục thúc giục các phương tiện phía trước nhường đường.,Đi lên vỉa hè, tận dụng mọi khoảng trống để nhanh chóng thoát khỏi nơi ùn tắc.,Lấn sang làn đường bên trái cố gắng vượt lên xe khác,Tất cả các ý nêu trên.', 3, 0, '', 4, 2, 0, 0),
(85, 'Biển báo này có ý nghĩa gì?', 'https://onthigplx.vn/images/onthigplx_vn__q424.webp', 'Báo hiệu đường có ổ gà, lồi lõm.,Báo hiệu đường có gờ giảm tốc phía trước.', 1, 0, 'Biển W221b “Đường có sóng mấp mô nhân tạo”', 4, 4, 0, 0),
(86, 'Xe nào được quyền đi trước trong trường hợp này?', 'https://onthigplx.vn/images/onthigplx_vn__q517.webp', 'Xe con.,Xe mô tô.', 1, 0, 'Đèn xanh nên áp dụng quy tắc Đường cùng cấp: Bên phải trống - Rẽ phải - Đi thẳng - Rẽ trái. Nên đáp án đúng là Xe xích lô rẽ phải đi trước.', 4, 5, 0, 0),
(87, 'Người điều khiển xe mô tô phải giảm tốc độ và hết sức thận trọng khi qua những đoạn đường nào dưới đây?', '', 'Đường ướt, đường có sỏi cát trên nền đường.,Đường hẹp có nhiều điểm giao cắt từ hai phía.,Đường đèo dốc, vòng liên tục.,Tất cả các ý nêu trên.', 3, 0, '', 4, 1, 0, 0),
(88, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q487.webp', 'Xe tải, xe khách, xe con, mô tô.,Xe tải, mô tô, xe khách, xe con.,Xe khách, xe tải, xe con, mô tô.,Mô tô, xe khách, xe tải, xe con.', 1, 0, 'Thứ tự ưu tiên: Xe ưu tiên - Đường ưu tiên - Đường cùng cấp theo thứ tự bên phải trống - rẽ phải - đi thẳng - rẽ trái. 1. Xe tải: Đường ưu tiên và đi thẳng; 2. Mô tô: Đường ưu tiên và rẽ trái; 3. Xe khách: Đường không ưu tiên, đi thẳng. 4. Xe con: Đường không ưu tiên, rẽ trái.', 4, 5, 0, 0),
(89, 'Bạn đang lái xe phía trước có một xe cảnh sát giao thông không phát tín hiệu ưu tiên bạn có được phép vượt hay không?', '', 'Không được vượt.,Được vượt khi đang đi trên cầu.,Được phép vượt khi đi qua nơi giao nhau có ít phương tiện cùng tham gia giao thông.,Được vượt khi đảm bảo an toàn.', 3, 0, 'Được vượt khi xe không phát tín hiệu ưu tiên.', 4, 1, 0, 0),
(90, 'Bạn đang lái xe trên đường hẹp, xuống dốc và gặp một xe đang đi lên dốc, bạn cần làm gì?', '', 'Tiếp tục đi vì xe lên dốc phải nhường đường cho mình.,Nhường đường cho xe lên dốc.,Chỉ nhường đường khi xe lên dốc nháy đèn.', 1, 0, '', 4, 1, 0, 0),
(91, 'Biển nào chỉ dẫn nơi bắt đầu đoạn đường dành cho người đi bộ?', 'https://onthigplx.vn/images/onthigplx_vn__q416.webp', 'Biển 1.,Biển 2.,Biển 3.', 1, 0, 'Biển 1: W.224 “Đường người đi bộ cắt ngang”; Biển 2: I.423c “Điểm bắt đầu đường đi bộ”; Biển 3: W.225 “Trẻ em”', 4, 4, 0, 0),
(92, 'Trong hình dưới, những xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q548.webp', 'Xe con (B), mô tô (C).,Xe con (A), mô tô (C).,Xe con (E), mô tô (D).,Tất cả các loại xe trên.', 2, 0, 'Nhìn vào bảng chỉ dẫn loại phương tiện theo làn đường: Xe con (E) đi trên làn dành riêng cho mô tô nên vi phạm: Xe mô tô (D) chạy trên làn dành riêng xe ô tô nên cũng vi phạm.', 4, 5, 0, 0),
(93, 'Các xe đi theo thứ tự nào là đúng quy tắc giao thông đường bộ?', 'https://onthigplx.vn/images/onthigplx_vn__q567.webp', 'Xe của bạn, mô tô, xe con.,Xe con, xe của bạn, mô tô.,Mô tô, xe con, xe của bạn.', 2, 0, 'Thứ tự ưu tiên: Xe ưu tiên - Đường ưu tiên - Bên phải trống - Rẽ phải - Đi thẳng - Rẽ trái. Biển báo phía trước là đường ưu tiên và biển phụ báo hướng di chuyển của xe mô tô là hướng ưu tiên. 1. Xe mô tô: Đường ưu tiên; 2. Xe con: Đường không ưu tiên, bên phải trống; 3. Xe của bạn: Đường không ưu tiên, bên phải vướng xe con.', 4, 5, 0, 0),
(94, 'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q503.webp', 'Xe khách, xe tải, mô tô.,Xe tải, xe con, mô tô.,Xe khách, xe con, mô tô.', 0, 0, '1. Xe khách: Sai làn, Đi thẳng đèn đang đỏ; 2. Xe tải: Sai làn: Đi trên làn đi thẳng trong khi thực hiện rẽ trái. 3. Xe mô tô: Sai làn: Đi trên làn rẽ trái trong khi thực hiện rẽ phải, Nên đáp án đúng là xe khách, xe tải và xe mô tô đều vi phạm quy tắc giao thông.', 4, 5, 0, 0),
(95, 'Khi gặp biển nào xe được rẽ trái?', 'https://onthigplx.vn/images/onthigplx_vn__q319.webp', 'Biển 1.,Biển 2.,Không biển nào.', 1, 0, 'Biển 1: P.123a “Cấm rẽ trái” không cấm quay đầu xe; Biển 2: P.124a “Cấm quay xe” không cấm rẽ trái. Nên Biển 2 là đáp án đúng.', 4, 4, 0, 0),
(96, 'Để báo hiệu cho xe phía trước biết xe mô tô của bạn muốn vượt, bạn phải có tín hiệu như thế nào dưới đây?', '', 'Ra hiệu bằng tay rồi cho xe vượt qua.,Tăng ga mạnh để gây sự chú ý rồi cho xe vượt qua.,Bạn phải có báo hiệu bằng đèn hoặc còi.', 2, 0, '', 4, 1, 0, 0),
(97, 'Trong các biển dưới đây biển nào là biển “Hết tốc độ tối thiểu”?', 'https://onthigplx.vn/images/onthigplx_vn__q441.webp', 'Biển 1.,Biển 2.,Biển 3.,Cả ba biển', 2, 0, 'Biển 1: DP134 “Hết hạn chế tốc độ tối đa”; Biển 2: DP135 “Hết mọi lệnh cấm”; Biển 3: R307 “Hết hạn chế tốc độ tối thiểu”. Nên Biển 3 là biển “Hết hạn chế tốc độ tối thiểu”. Chú ý câu này hỏi ý nghĩa của biển.', 4, 4, 0, 0),
(98, 'Các xe đi theo hướng mũi tên, xe nào chấp hành đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q565.webp', 'Xe tải, mô tô.,Xe khách, mô tô.,Xe tải, xe con.,Mô tô, xe con.', 1, 0, 'Xe con và xe tải: Vi phạm tín hiệu đèn; Xe khách và xe mô tô: Đúng làn đường và đúng tín hiệu đèn.', 4, 5, 0, 0),
(99, 'Tác dụng của mũ bảo hiểm đối với người ngồi trên xe mô tô hai bánh trong trường hợp xảy ra tai nạn giao thông là gì?', '', 'Để làm đẹp.,Để tránh mưa nắng,Để giảm thiểu chấn thương vùng đầu.,Để các loại phương tiện khác dễ quan sát.', 2, 0, '', 4, 1, 0, 0),
(100, 'Biển nào (đặt trước ngã ba, ngã tư) cho phép xe được rẽ sang hướng khác?', 'https://onthigplx.vn/images/onthigplx_vn__q436.webp', 'Biển 1.,Biển 2.,Không biển nào', 2, 0, 'Biển 1: R.301a “Hướng đi phải theo” chỉ được đi thẳng đặt trước ngã ba, ngã tư; Biển 2: R.301h “Hướng đi phải theo” chỉ được rẽ trái hoặc rẽ phải đặt sau ngã ba, ngã tư; Nên đáp án đúng là không có biển nào.', 4, 4, 0, 0),
(101, 'Trong hình dưới đây, xe nào chấp hành đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q538.webp', 'Chỉ xe khách, mô tô.,Tất cả các loại xe trên.,Không xe nào chấp hành đúng quy tắc giao thông.', 1, 0, 'Xe khách chờ đèn đỏ rẽ trái. Xe tải đi thẳng và rẽ phải theo tín hiệu đèn xanh. Xe con đi thẳng và rẽ phải theo tín hiệu đèn xanh. Xe mô tô chờ đèn đỏ rẽ trái. Nên tất cả xe đều chấp hành.', 5, 5, 0, 0),
(102, 'Người đủ 16 tuổi được điều khiển các loại xe nào dưới đây?', '', 'Xe mô tô 2 bánh có dung tích xi-lanh từ 50 cm3 trở lên.,Xe gắn máy có dung tích xi-lanh dưới 50 cm3.,Xe ô tô tải dưới 3.500 kg; xe chở người đến 9 chỗ ngồi.,Tất cả các ý nêu trên.', 1, 0, '', 5, 1, 0, 0),
(103, 'Các vạch dưới đây có tác dụng gì?', 'https://onthigplx.vn/images/onthigplx_vn__q481.webp', 'Phân chia hai chiều xe chạy ngược chiều nhau.,Phân chia các làn xe chạy cùng chiều nhau.', 0, 0, '', 5, 4, 0, 0),
(104, 'Theo tín hiệu đèn của xe cơ giới, xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q559.webp', 'Xe mô tô.,Xe ô tô con,Không xe nào vi phạm.,Cả hai xe.', 3, 0, 'Biển số R.301a chỉ cho phép các phương tiện đi thẳng trong khi cả hai xe đều có tín hiệu xi nhan rẽ sang hướng khác nên cả 2 xe đều vi phạm quy tắc giao thông.', 5, 5, 0, 0),
(105, 'Xe tải kéo mô tô ba bánh như hình này có đúng quy tắc giao thông không?', 'https://onthigplx.vn/images/onthigplx_vn__q510.webp', 'Đúng.,Không đúng.', 1, 0, 'Xe tải kéo xe mô tô 3 bánh như trên hình là không đúng vì đi vào đường có biển P.108 “Cấm ô tô kéo moóc” kể cả xe máy kéo, xe ô tô khách kéo theo rơ moóc đi qua.', 5, 5, 0, 0),
(106, 'Biển nào báo hiệu “Giao nhau với đường hai chiều”?', 'https://onthigplx.vn/images/onthigplx_vn__q399.webp', 'Biển 1.,Biển 2.,Biển 3.', 0, 0, '', 5, 4, 0, 0),
(107, 'Khi gặp hiệu lệnh như dưới đây của cảnh sát giao thông thì người tham gia giao thông phải đi như thế nào là đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q82.webp', 'Người tham gia giao thông ở các hướng phải dừng lại.,Người tham gia giao thông ở các hướng được đi theo chiều gậy chỉ của cảnh sát giao thông.,Người tham gia giao thông ở phía trước và phía sau người điều khiển được đi tất cả các hướng; giao thông ở phía bên phải và phía bên trái người điều khiển phải dừng lại.,Người tham gia giao thông ở phía trước và phía sau người điều khiển phải dừng lại; giao thông ở phía bên phải và bên trái người điều khiển được đi tất cả các hướng.', 3, 0, '', 5, 1, 0, 0),
(108, 'Khái niệm “phương tiện giao thông cơ giới đường bộ” được hiểu thế nào là đúng?', '', 'Gồm xe ô tô; máy kéo; xe mô tô hai bánh; xe mô tô ba bánh; xe gắn máy; xe cơ giới dùng cho người khuyết tật và xe máy chuyên dùng.,Gồm xe ô tô; máy kéo; rơ moóc hoặc sơ mi rơ moóc được kéo bởi xe ô tô, máy kéo; xe mô tô hai bánh; xe mô tô ba bánh, xe gắn máy (kể cả xe máy điện) và các loại xe tương tự.', 1, 0, 'Không có xe máy chuyên dùng.', 5, 1, 0, 0),
(109, 'Trên đường một chiều có vạch kẻ phân làn đường, xe thô sơ và xe cơ giới phải đi như thế nào là đúng quy tắc giao thông?', '', 'Xe thô sơ phải đi trên làn đường bên trái ngoài cùng, xe cơ giới, xe máy chuyên dùng đi trên làn đường bên phải.,Xe thô sơ phải đi trên làn đường bên phải trong cùng; xe cơ giới, xe máy chuyên dùng đi trên làn đường bên trái.,Xe thô sơ đi trên làn đường phù hợp không gây cản trở giao thông, xe cơ giới, xe máy chuyên dùng đi trên làn đường bên phải.', 1, 0, '', 5, 1, 0, 0),
(110, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q490.webp', 'Xe tải, xe con, mô tô.,Xe con, xe tải, mô tô.,Mô tô, xe con, xe tải.,Xe con, mô tô, xe tải.', 2, 0, 'Thứ tự ưu tiên: Xe ưu tiên - Đường ưu tiên - Đường cùng cấp theo thứ tự bên phải trống - rẽ phải - đi thẳng - rẽ trái. 1. Xe mô tô: Bên phải trống; 2. Xe con: Đi thẳng; 3. Xe tải: Rẽ trái;', 5, 5, 0, 0),
(111, 'Người điều khiển phương tiện tham gia giao thông trong hầm đường bộ ngoài việc phải tuân thủ các quy tắc giao thông còn phải thực hiện những quy định nào dưới đây?', '', 'Xe cơ giới, xe máy chuyên dùng phải bật đèn; xe thô sơ phải bật đèn hoặc có vật phát sáng báo hiệu; chỉ được dừng xe, đỗ xe ở nơi quy định.,Xe cơ giới phải bật đèn ngay cả khi đường hầm sáng; phải cho xe chạy trên một làn đường và chỉ chuyển làn ở nơi được phép; được quay đầu xe, lùi xe khi cần thiết.,Xe máy chuyên dùng phải bật đèn ngay cả khi đường hầm sáng; phải cho xe chạy trên một làn đường và chỉ chuyển làn ở nơi được phép; được quay đầu xe, lùi xe khi cần thiết.', 0, 0, '', 5, 1, 0, 0),
(112, 'Chiều dài đoạn đường 500 m từ nơi đặt biển này, người lái xe có được phép bấm còi không?', 'https://onthigplx.vn/images/onthigplx_vn__q352.webp', 'Được phép.,Không được phép.', 1, 0, 'Biển phụ là biển S.501 “Phạm vi tác dụng của biển” xác định chiều dài áp dụng biển chính từ nơi đặt biển.', 5, 4, 0, 0),
(113, 'Gặp biển báo này, người tham gia giao thông phải xử lý như thế nào?', 'https://onthigplx.vn/images/onthigplx_vn__q458.webp', 'Dừng xe tại khu vực có trạm Cảnh sát giao thông.,Tiếp tục lưu thông với tốc độ bình thường.,Phải giảm tốc độ đến mức an toàn và không được vượt khi đi qua khu vực này.', 2, 0, 'Biển I.436 “Trạm cảnh sát giao thông”. Các phương tiện phải giảm tốc độ đến mức an toàn và không được vượt khi đi qua khu vực này.', 5, 4, 0, 0),
(114, 'Hành vi vượt xe tại các vị trí có tầm nhìn hạn chế, đường vòng, đầu dốc có bị nghiêm cấm hay không?', '', 'Không bị nghiêm cấm.,Không bị nghiêm cấm khi rất vội.,Bị nghiêm cấm.,Không bị nghiêm cấm khi khẩn cấp.', 2, 1, '', 5, 1, 0, 0),
(115, 'Trên đoạn đường hai chiều không có giải phân cách giữa, người lái xe không được vượt xe khác trong các trường hợp nào dưới đây?', '', 'Xe bị vượt bất ngờ tăng tốc độ và cố tình không nhường đường.,Xe bị vượt giảm tốc độ và nhường đường.,Phát hiện có xe đi ngược chiều.,Cả ý 1 và ý 3.', 3, 0, '', 5, 1, 0, 0),
(116, 'Khi tránh xe đi ngược chiều, các xe phải nhường đường như thế nào là đúng quy tắc giao thông?', '', 'Nơi đường hẹp chỉ đủ cho một xe chạy và có chỗ tránh xe thì xe nào ở gần chỗ tránh hơn phải vào vị trí tránh, nhường đường cho xe kia đi.,Xe xuống dốc phải nhường đường cho xe đang lên dốc; xe nào có chướng ngại vật phía trước phải nhường đường cho xe không có chướng ngại vật đi trước.,Xe lên dốc phải nhường đường cho xe xuống dốc; xe nào không có chướng ngại vật phía trước phải nhường đường cho xe có chướng ngại vật đi trước,Cả ý 1 và ý 2.', 3, 0, '', 5, 1, 0, 0),
(117, 'Người lái xe phải giảm tốc độ thấp hơn tốc độ tối đa cho phép (có thể dừng lại một cách an toàn) trong trường hợp nào dưới đây?', '', 'Khi có báo hiệu cảnh báo nguy hiểm hoặc có chướng ngại vật trên đường; khi chuyển hướng xe chạy hoặc tầm nhìn bị hạn chế; khi qua nơi đường giao nhau, nơi đường bộ giao nhau với đường sắt; đường vòng; đường có địa hình quanh co, đèo dốc.,Khi qua cầu, cống hẹp; khi lên gần đỉnh dốc, khi xuống dốc, khi qua trường học, khu đông dân cư, khu vực đang thi công trên đường bộ; hiện trường xảy ra tai nạn giao thông.,Khi điều khiển xe vượt xe khác trên đường quốc lộ, đường cao tốc.,Cả ý 1 và ý 2.', 3, 0, '', 5, 1, 0, 0),
(118, 'Biển số 1 có ý nghĩa gì?', 'https://onthigplx.vn/images/onthigplx_vn__q462.webp', 'Đi thẳng hoặc rẽ trái trên cầu vượt.,Đi thẳng hoặc rẽ phải trên cầu vượt.,Báo hiệu cầu vượt liên thông.', 2, 0, '', 5, 4, 0, 0),
(119, 'Theo tín hiệu đèn, xe nào được phép đi?', 'https://onthigplx.vn/images/onthigplx_vn__q499.webp', 'Xe con và xe khách.,Mô tô.', 0, 0, 'Xe con và xe khách đang ở làn đường có tín hiệu đèn xanh nên được phép đi.', 5, 5, 0, 0),
(120, 'Xe nào đỗ vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q508.webp', 'Cả hai xe.,Không xe nào vi phạm.,Chỉ xe mô tô vi phạm.,Chỉ xe tải vi phạm.', 0, 0, 'Biển cấm đỗ xe ở cả phía trước và phía sau biển (ở biển báo phụ) nên cả 2 xe vi phạm.', 5, 5, 0, 0),
(121, 'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q561.webp', 'Xe tải, xe con.,Xe khách, xe con.,Xe khách, xe tải.', 2, 0, 'Xe con và xe mô tô đang ở đúng làn đường, đúng hướng rẽ với tín hiệu đèn xanh nên đúng quy tắc giao thông. Xe khách và xe tải đang ở sai làn đường so với hướng rẽ nên đều vi phạm.', 5, 5, 0, 0),
(122, 'Biển nào báo hiệu nguy hiểm giao nhau với đường sắt?', 'https://onthigplx.vn/images/onthigplx_vn__q377.webp', 'Biển 1 và 2.,Biển 1 và 3.,Biển 2 và 3.,Cả ba biển.', 1, 0, 'Biển 1: W.210 “Giao nhau với đường sắt có rào chắn”; Biển 2: W.234 “Giao nhau với đường hai chiều”; Biển 3: W.242a “Nơi đường sắt giao vuông góc với đường bộ”.', 5, 4, 0, 0),
(123, 'Khi tránh nhau trên đường hẹp, người lái xe cần phải chú ý những điểm nào để đảm bảo an toàn giao thông?', '', 'Không nên đi cố vào đường hẹp; xe đi ở phía sườn núi nên dừng lại trước để nhường đường; khi dừng xe nhường đường phải đỗ ngay ngắn.,Trong khi tránh nhau không nên đổi số; khi tránh nhau ban đêm, phải tắt đèn pha bật đèn cốt.,Khi tránh nhau ban đêm, phải thường xuyên bật đèn pha tắt đèn cốt.,Cả ý 1 và ý 2.', 3, 0, '', 5, 3, 0, 0),
(124, 'Khái niệm về văn hóa giao thông được hiểu như thế nào là đúng?', '', 'Là sự hiểu biết và chấp hành nghiêm chỉnh pháp luật về giao thông; là ý thức trách nhiệm với cộng đồng khi tham gia giao thông.,Là ứng xử có văn hóa, có tình yêu thương con người trong các tình huống không may xảy ra khi tham gia giao thông.,Cả ý 1 và ý 2.', 2, 0, '', 5, 2, 0, 0),
(125, 'Biển nào cấm các phương tiện giao thông đường bộ rẽ trái?', 'https://onthigplx.vn/images/onthigplx_vn__q322.webp', 'Biển 1 và 2.,Biển 1 và 3,Biển 2 và 3,Cả ba biển.', 0, 0, 'Biển 1: 123a “Cấm rẽ trái”; Biển 2: 124c “Cấm rẽ trái và quay xe”; Biển 3: 124e “Cấm ô tô rẽ trái và quay xe”. Nên biển 3 chỉ cấm xe ô tô, còn biển 1 và biển 2 cấm toàn bộ phương tiện rẽ trái.', 5, 4, 0, 0),
(126, 'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q560.webp', 'Xe con.,Xe tải.,Xe con, xe tải.', 1, 0, 'Xe con trong cả hai phía đều đang ở đúng làn đường và đi theo hướng mà đèn xanh đang bật nên đúng quy tắc. Xe tải trong cả hai phía đều ở sai làn đường so với hướng rẽ nên vi phạm quy tắc giao thông.', 6, 5, 0, 0),
(127, 'Khi tránh nhau trên đường hẹp, người lái xe cần phải chú ý những điểm nào để đảm bảo an toàn giao thông?', '', 'Không nên đi cố vào đường hẹp; xe đi ở phía sườn núi nên dừng lại trước để nhường đường; khi dừng xe nhường đường phải đỗ ngay ngắn.,Trong khi tránh nhau không nên đổi số; khi tránh nhau ban đêm, phải tắt đèn pha bật đèn cốt.,Khi tránh nhau ban đêm, phải thường xuyên bật đèn pha tắt đèn cốt.,Cả ý 1 và ý 2.', 3, 0, '', 6, 3, 0, 0),
(128, 'Bạn đang lái xe phía trước có một xe cứu thương đang phát tín hiệu ưu tiên bạn có được phép vượt hay không?', '', 'Không được vượt.,Được vượt khi đang đi trên cầu.,Được phép vượt khi đi qua nơi giao nhau có ít phương tiện cùng tham gia giao thông.,Được vượt khi đảm bảo an toàn.', 0, 0, 'Không được vượt khi đang phát tín hiệu ưu tiên.', 6, 1, 0, 0),
(129, 'Khi gặp biển nào xe ưu tiên theo luật định vẫn phải dừng lại?', 'https://onthigplx.vn/images/onthigplx_vn__q333.webp', 'Biển 1.,Biển 2.,Cả ba biển.', 1, 0, 'Biển 1: P.101 “Đường cấm” không cấm xe ưu tiên; Biển 2: R.122 “Dừng lại” áp dụng với cả xe ưu tiên; Biển 3: P.102 “Cấm đi ngược chiều” không áp dụng với xe ưu tiên; Nên Biển 2 là đáp án đúng, áp dụng với cả xe ưu tiên.', 6, 4, 0, 0),
(130, 'Theo hướng mũi tên, những hướng nào xe gắn máy đi được?', 'https://onthigplx.vn/images/onthigplx_vn__q507.webp', 'Cả ba hướng.,Chỉ hướng 1 và 3.,Chỉ hướng 1.', 0, 0, 'Bạn lưu ý câu hỏi này hỏi về hướng đi của xe <b>GẮN MÁY</b>. Hướng 1 và 3 chắc chắn là đi được rồi. Với hướng 2, biển báo cấm mô tô đi vào chỉ có tác dụng với xe MÔ TÔ nên xe gắn máy không có hiệu lực. Do đó vẫn đi vào bình thường.', 6, 5, 0, 0),
(131, '“Làn đường” là gì?', '', 'Là một phần của phần đường xe chạy được chia theo chiều dọc của đường, sử dụng cho xe chạy.,Là một phần của phần đường xe chạy được chia theo chiều dọc của đường, có bề rộng đủ cho xe chạy an toàn.,Là một phần của phần đường xe chạy được chia theo chiều dọc của đường, có đủ bề rộng cho xe ô tô chạy an toàn.', 1, 0, 'Có bề rộng đủ cho xe chạy an toàn.', 6, 1, 0, 0),
(132, 'Biển nào báo hiệu “Đường hai chiều”?', 'https://onthigplx.vn/images/onthigplx_vn__q400.webp', 'Biển 1.,Biển 2.,Biển 3.', 1, 0, '', 6, 4, 0, 0),
(133, 'Khi điều khiển xe cơ giới người lái xe phải bật đèn tín hiệu rẽ nào trong các trường hợp nào sau đây?', '', 'Khi cho xe chạy thẳng.,Trước khi thay đổi làn đường.,Sau khi thay đổi làn đường.', 1, 0, '', 6, 1, 0, 0),
(134, 'Người điều khiển phương tiện tham gia giao thông trong hầm đường bộ ngoài việc phải tuân thủ các quy tắc giao thông còn phải thực hiện những quy định nào dưới đây?', '', 'Xe cơ giới, xe máy chuyên dùng phải bật đèn; xe thô sơ phải bật đèn hoặc có vật phát sáng báo hiệu; chỉ được dừng xe, đỗ xe ở nơi quy định.,Xe cơ giới phải bật đèn ngay cả khi đường hầm sáng; phải cho xe chạy trên một làn đường và chỉ chuyển làn ở nơi được phép; được quay đầu xe, lùi xe khi cần thiết.,Xe máy chuyên dùng phải bật đèn ngay cả khi đường hầm sáng; phải cho xe chạy trên một làn đường và chỉ chuyển làn ở nơi được phép; được quay đầu xe, lùi xe khi cần thiết.', 0, 0, '', 6, 1, 0, 0),
(135, 'Xe tải kéo mô tô ba bánh như hình này có đúng quy tắc giao thông không?', 'https://onthigplx.vn/images/onthigplx_vn__q510.webp', 'Đúng.,Không đúng.', 1, 0, 'Xe tải kéo xe mô tô 3 bánh như trên hình là không đúng vì đi vào đường có biển P.108 “Cấm ô tô kéo moóc” kể cả xe máy kéo, xe ô tô khách kéo theo rơ moóc đi qua.', 6, 5, 0, 0),
(136, 'Khi điều khiển xe chạy trên đường biết có xe sau xin vượt nếu đủ điều kiện an toàn người lái xe phải làm gì?', '', 'Tăng tốc độ và ra hiệu cho xe sau vượt, không được gây trở ngại cho xe sau vượt.,Người điều khiển phương tiện phía trước phải giảm tốc độ, đi sát về bên phải của phần đường xe chạy cho đến khi xe sau đã vượt qua, không được gây trở ngại cho xe sau vượt.,Cho xe tránh về bên trái mình và ra hiệu cho xe sau vượt; nếu có chướng ngại vật phía trước hoặc thiếu điều kiện an toàn chưa cho vượt được phải ra hiệu cho xe sau biết; cấm gây trở ngại cho xe xin vượt.', 1, 0, '', 6, 1, 0, 0),
(137, 'Biển nào là biển “Cấm đi ngược chiều”?', 'https://onthigplx.vn/images/onthigplx_vn__q329.webp', 'Biển 1.,Biển 2.,Cả ba biển.', 1, 0, 'Biển 1: P.101 “Đường cấm”; Biển 2: P.102 “Cấm đi ngược chiều”; Biển 3: P.301a “Cấm đỗ xe”. Nên biển 2 là cấm đi ngược chiều.', 6, 4, 0, 0),
(138, 'Người lái xe sử dụng đèn như thế nào khi lái xe trong khu đô thị và đông dân cư vào ban đêm?', '', 'Bất cứ đèn nào miễn là mắt nhìn rõ phía trước.,Chỉ bật đèn chiếu xa (đèn pha) khi không nhìn rõ đường.,Đèn chiếu xa (đèn pha) khi đường vắng, đèn pha chiếu gần (đèn cốt) khi có xe đi ngược chiều.,Đèn chiếu gần (đèn cốt).', 3, 0, '', 6, 1, 0, 0);
INSERT INTO `question` (`id`, `text`, `img`, `answers`, `answer`, `critical`, `hint`, `question_exam`, `question_chapter`, `totalqserr`, `totalqscorrect`) VALUES
(139, 'Gặp biển nào người lái xe phải nhường đường cho người đi bộ?', 'https://onthigplx.vn/images/onthigplx_vn__q371.webp', 'Biển 1.,Biển 2.,Biển 3.,Biển 1 và 3.', 0, 0, 'Biển 1: W.224 “Đường người đi bộ cắt ngang”; Biển 2: P.112 “Cấm người đi bộ”; Biển 3: R.305 “Đường dành cho người đi bộ”. Biển 1 báo ưu tiên cho người đi bộ nên phải nhường đường.', 6, 4, 0, 0),
(140, 'Theo tín hiệu đèn của xe cơ giới, xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q559.webp', 'Xe mô tô.,Xe ô tô con,Không xe nào vi phạm.,Cả hai xe.', 3, 0, 'Biển số R.301a chỉ cho phép các phương tiện đi thẳng trong khi cả hai xe đều có tín hiệu xi nhan rẽ sang hướng khác nên cả 2 xe đều vi phạm quy tắc giao thông.', 6, 5, 0, 0),
(141, 'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q561.webp', 'Xe tải, xe con.,Xe khách, xe con.,Xe khách, xe tải.', 2, 0, 'Xe con và xe mô tô đang ở đúng làn đường, đúng hướng rẽ với tín hiệu đèn xanh nên đúng quy tắc giao thông. Xe khách và xe tải đang ở sai làn đường so với hướng rẽ nên đều vi phạm.', 6, 5, 0, 0),
(142, 'Người điều khiển xe mô tô hai bánh, xe gắn máy không được thực hiện những hành vi nào dưới đây?', '', 'Đi vào phần đường dành cho người đi bộ và phương tiện khác; sử dụng ô, điện thoại di động, thiết bị âm thanh (trừ thiết bị trợ thính), đi xe dàn hàng ngang.,Chở 02 người; trong đó, có người bệnh đi cấp cứu hoặc trẻ em dưới 14 tuổi hoặc áp giải người có hành vi vi phạm pháp luật.,Điều khiển phương tiện tham gia giao thông trên đường tỉnh lộ hoặc quốc lộ.', 0, 0, '', 6, 1, 0, 0),
(143, 'Khi xảy ra tai nạn giao thông, có người bị thương nghiêm trọng, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì?', '', 'Thực hiện sơ cứu ban đầu trong trường hợp khẩn cấp; thông báo vụ tai nạn đến cơ quan thi hành pháp luật.,Nhanh chóng lái xe gây tai nạn hoặc đi nhờ xe khác ra khỏi hiện trường vụ tai nạn.,Cả ý 1 và ý 2.', 0, 0, '', 6, 2, 0, 0),
(144, 'Biển nào xe được phép quay đầu nhưng không được rẽ trái?', 'https://onthigplx.vn/images/onthigplx_vn__q328.webp', 'Biển 1.,Biển 2.,Cả 2 biển.', 0, 0, 'Biển 1: 123a “Cấm rẽ trái” nhưng không cấm quay đầu xe. Biển 2: R.301e đặt trước ngã ba ngã tư chỉ được rẽ trái ở phạm vi ngã ba, ngã tư phía sau mặt biển nên không thể quay đầu xe.', 6, 4, 0, 0),
(145, 'Khái niệm “đỗ xe” được hiểu như thế nào là đúng quy tắc giao thông?', '', 'Là trạng thái đứng yên của phương tiện giao thông có giới hạn trong một khoảng thời gian cần thiết đủ để cho người lên, xuống phương tiện đó, xếp dỡ hàng hóa hoặc thực hiện công việc khác.,Là trạng thái đứng yên của phương tiện giao thông không giới hạn thời gian.', 1, 0, 'Đỗ xe là đứng yên không giới hạn thời gian', 6, 1, 0, 0),
(146, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q520.webp', 'Xe con (A), mô tô, xe con (B), xe đạp.,Xe con (B), xe đạp, mô tô, xe con (A).,Xe con (A), xe con (B), mô tô + xe đạp.,Mô tô + xe đạp, xe con (A), xe con (B).', 3, 0, 'Thứ tự ưu tiên đường cùng cấp: Xe ưu tiên - Đường ưu tiên - Bên phải trống - rẽ phải - đi thẳng - rẽ trái. 1. Mô tô và xe đạp: Bên phải trống; 2. Xe con (A): Đi thẳng; 3. Xe con (B): Rẽ trái.', 6, 5, 0, 0),
(147, 'Biển nào báo hiệu “Hướng đi thẳng phải theo”?', 'https://onthigplx.vn/images/onthigplx_vn__q437.webp', 'Biển 1.,Biển 2.', 0, 0, 'Biển 1: R.301a “Hướng đi phải theo” chỉ được đi thẳng đặt trước ngã ba, ngã tư; Biển 2: I.407a “Đường một chiều” không liên quan hướng đi phải theo. Nên Biển 1 là đáp án đúng.', 6, 4, 0, 0),
(148, 'Việc lái xe mô tô, ô tô, máy kéo ngay sau khi uống rượu, bia có được phép hay không?', '', 'Không được phép.,Chỉ được lái ở tốc độ chậm và quãng đường ngắn.,Chỉ được lái nếu trong cơ thể có nồng độ cồn thấp.', 0, 1, '', 6, 1, 0, 0),
(149, 'Xe nào được quyền đi trước trong trường hợp này?', 'https://onthigplx.vn/images/onthigplx_vn__q517.webp', 'Xe con.,Xe mô tô.', 1, 0, 'Đèn xanh nên áp dụng quy tắc Đường cùng cấp: Bên phải trống - Rẽ phải - Đi thẳng - Rẽ trái. Nên đáp án đúng là Xe xích lô rẽ phải đi trước.', 6, 5, 0, 0),
(150, 'Gặp biển báo này, người tham gia giao thông phải xử lý như thế nào?', 'https://onthigplx.vn/images/onthigplx_vn__q458.webp', 'Dừng xe tại khu vực có trạm Cảnh sát giao thông.,Tiếp tục lưu thông với tốc độ bình thường.,Phải giảm tốc độ đến mức an toàn và không được vượt khi đi qua khu vực này.', 2, 0, 'Biển I.436 “Trạm cảnh sát giao thông”. Các phương tiện phải giảm tốc độ đến mức an toàn và không được vượt khi đi qua khu vực này.', 6, 4, 0, 0),
(151, 'Người điều khiển phương tiện tham gia giao thông trong hầm đường bộ ngoài việc phải tuân thủ các quy tắc giao thông còn phải thực hiện những quy định nào dưới đây?', '', 'Xe cơ giới, xe máy chuyên dùng phải bật đèn; xe thô sơ phải bật đèn hoặc có vật phát sáng báo hiệu; chỉ được dừng xe, đỗ xe ở nơi quy định.,Xe cơ giới phải bật đèn ngay cả khi đường hầm sáng; phải cho xe chạy trên một làn đường và chỉ chuyển làn ở nơi được phép; được quay đầu xe, lùi xe khi cần thiết.,Xe máy chuyên dùng phải bật đèn ngay cả khi đường hầm sáng; phải cho xe chạy trên một làn đường và chỉ chuyển làn ở nơi được phép; được quay đầu xe, lùi xe khi cần thiết.', 0, 0, '', 7, 1, 0, 0),
(152, 'Biển nào báo hiệu “Giao nhau với đường ưu tiên”?', 'https://onthigplx.vn/images/onthigplx_vn__q387.webp', 'Biển 1 và 3.,Biển 2.,Biển 3.', 1, 0, 'Biển 1: W.207a “Giao nhau với đường không ưu tiên”; Biển 2: W.208 “Giao nhau với đường ưu tiên”; Biển 3: I.401 “Bắt đầu đường ưu tiên”.', 7, 4, 0, 0),
(153, 'Trên đường có nhiều làn đường cho xe đi cùng chiều được phân biệt bằng vạch kẻ phân làn đường, người điều khiển phương tiện phải cho xe đi như thế nào?', '', 'Cho xe đi trên bất kỳ làn đường nào hoặc giữa 02 làn đường nếu không có xe phía trước; khi cần thiết phải chuyển làn đường, người lái xe phải quan sát xe phía trước để bảo đảm an toàn.,Phải cho xe đi trong một làn đường và chỉ được chuyển làn đường ở những nơi cho phép; khi chuyển làn phải có tín hiệu báo trước và phải bảo đảm an toàn.,Phải cho xe đi trong một làn đường, khi cần thiết phải chuyển làn đường, người lái xe phải quan sát xe phía trước để bảo đảm an toàn.', 1, 0, '', 7, 1, 0, 0),
(154, 'Để đảm bảo an toàn khi tham gia giao thông, người lái xe lái xe mô tô hai bánh cần điều khiển tay ga như thế nào trong các trường hợp dưới đây?', '', 'Tăng ga thật nhanh, giảm ga từ từ.,Tăng ga thật nhanh, giảm ga thật nhanh.,Tăng ga từ từ, giảm ga thật nhanh.,Tăng ga từ từ, giảm ga từ từ.', 2, 0, '', 7, 3, 0, 0),
(155, 'Người có giấy phép lái xe mô tô hạng A1 được phép điều khiển loại xe nào dưới đây?', '', 'Xe mô tô có dung tích xi-lanh từ 50 cm3 đến dưới 175 cm3.,Xe mô tô ba bánh dành cho người khuyết tật.,Cả ý 1 và ý 2.', 2, 0, '', 7, 1, 0, 0),
(156, 'Người điều khiển phương tiện tham gia giao thông đường bộ phải giảm tốc độ để có thể dừng lại một cách an toàn trong các trường hợp nào dưới đây?', '', 'Khi có người đi bộ, xe lăn của người khuyết tật qua đường; đến gần bến xe buýt, điểm dừng đỗ xe có khách đang lên, xuống xe.,Khi điều khiển phương tiện đi qua khu vực trạm kiểm soát tải trọng xe, trạm cảnh sát giao thông, trạm giao dịch thanh toán đối với các phương tiện sử dụng đường bộ.,Cả ý 1 và ý 2.', 2, 1, '', 7, 1, 0, 0),
(157, 'Khi xảy ra tai nạn giao thông, có người bị thương nghiêm trọng, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì?', '', 'Thực hiện sơ cứu ban đầu trong trường hợp khẩn cấp; thông báo vụ tai nạn đến cơ quan thi hành pháp luật.,Nhanh chóng lái xe gây tai nạn hoặc đi nhờ xe khác ra khỏi hiện trường vụ tai nạn.,Cả ý 1 và ý 2.', 0, 0, '', 7, 2, 0, 0),
(158, 'Tại nơi đường bộ giao nhau cùng mức với đường sắt chỉ có đèn tín hiệu hoặc chuông báo hiệu, khi đèn tín hiệu màu đỏ đã bật sáng hoặc có tiếng chuông báo hiệu, người tham gia giao thông phải dừng lại ngay và giữ khoảng cách tối thiểu bao nhiêu mét tính từ ray gần nhất?', '', '5 mét.,3 mét.,4 mét.', 0, 0, '', 7, 1, 0, 0),
(159, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q490.webp', 'Xe tải, xe con, mô tô.,Xe con, xe tải, mô tô.,Mô tô, xe con, xe tải.,Xe con, mô tô, xe tải.', 2, 0, 'Thứ tự ưu tiên: Xe ưu tiên - Đường ưu tiên - Đường cùng cấp theo thứ tự bên phải trống - rẽ phải - đi thẳng - rẽ trái. 1. Xe mô tô: Bên phải trống; 2. Xe con: Đi thẳng; 3. Xe tải: Rẽ trái;', 7, 5, 0, 0),
(160, 'Các xe đi theo hướng mũi tên, xe nào chấp hành đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q565.webp', 'Xe tải, mô tô.,Xe khách, mô tô.,Xe tải, xe con.,Mô tô, xe con.', 1, 0, 'Xe con và xe tải: Vi phạm tín hiệu đèn; Xe khách và xe mô tô: Đúng làn đường và đúng tín hiệu đèn.', 7, 5, 0, 0),
(161, 'Theo hướng mũi tên, xe nào được phép đi?', 'https://onthigplx.vn/images/onthigplx_vn__q529.webp', 'Mô tô, xe con.,Xe con, xe tải.,Mô tô, xe tải.,Cả ba xe.', 2, 0, 'Giang ngang tay: Trái phải đi; Trước sau dừng. Xe mô tô và xe tải được phép đi là đáp án đúng.', 7, 5, 0, 0),
(162, 'Biển nào báo hiệu “Đường bị thu hẹp”?', 'https://onthigplx.vn/images/onthigplx_vn__q388.webp', 'Biển 1 và 2.,Biển 1 và 3.,Biển 2 và 3.,Cả ba biển.', 0, 0, 'Biển 1: W.203a “Đường bị hẹp cả hai bên”; Biển 2: W203b “Đường bị hẹp về phía trái”; Biển 3: W.201b “Chỗ ngoặt nguy hiểm vòng bên phải”. Nên đáp án đúng là Biển 1 và Biển 2.', 7, 4, 0, 0),
(163, 'Biển nào cấm các phương tiện giao thông đường bộ rẽ trái?', 'https://onthigplx.vn/images/onthigplx_vn__q322.webp', 'Biển 1 và 2.,Biển 1 và 3,Biển 2 và 3,Cả ba biển.', 0, 0, 'Biển 1: 123a “Cấm rẽ trái”; Biển 2: 124c “Cấm rẽ trái và quay xe”; Biển 3: 124e “Cấm ô tô rẽ trái và quay xe”. Nên biển 3 chỉ cấm xe ô tô, còn biển 1 và biển 2 cấm toàn bộ phương tiện rẽ trái.', 7, 4, 0, 0),
(164, 'Biển nào báo hiệu sắp đến chỗ giao nhau nguy hiểm?', 'https://onthigplx.vn/images/onthigplx_vn__q374.webp', 'Biển 1.,Biển 1 và 2.,Biển 2 và 3.,Cả ba biển.', 3, 0, 'Biển 1: W.210 “Giao nhau với đường sắt có rào chắn”; Biển 2: W.208 “Giao nhau với đường ưu tiên”; Biển 3: W.209 “Giao nhau có tín hiệu đèn”.', 7, 4, 0, 0),
(165, 'Bạn đang lái xe phía trước có một xe cảnh sát giao thông không phát tín hiệu ưu tiên bạn có được phép vượt hay không?', '', 'Không được vượt.,Được vượt khi đang đi trên cầu.,Được phép vượt khi đi qua nơi giao nhau có ít phương tiện cùng tham gia giao thông.,Được vượt khi đảm bảo an toàn.', 3, 0, 'Được vượt khi xe không phát tín hiệu ưu tiên.', 7, 1, 0, 0),
(166, 'Biển nào báo hiệu “Đường hai chiều”?', 'https://onthigplx.vn/images/onthigplx_vn__q400.webp', 'Biển 1.,Biển 2.,Biển 3.', 1, 0, '', 7, 4, 0, 0),
(167, 'Xe nào đỗ vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q509.webp', 'Chỉ mô tô.,Chỉ xe tải.,Cả ba xe.,Chỉ mô tô và xe tải.', 2, 0, 'Xe tải đậu trái đường; Xe con và mô tô đậu xe đè vạch nên cả 3 xe vi phạm.', 7, 5, 0, 0),
(168, 'Gặp biển nào xe xích lô được phép đi vào?', 'https://onthigplx.vn/images/onthigplx_vn__q336.webp', 'Biển 1.,Biển 2.,Biển 3.,Biển 1 và 2.', 3, 0, '', 7, 4, 0, 0),
(169, 'Tại nơi đường giao nhau, khi đèn điều khiển giao thông có tín hiệu màu vàng, người điều khiển phương tiện giao thông phải chấp hành như thế nào là đúng quy tắc giao thông?', '', 'Phải cho xe dừng lại trước vạch dừng, trường hợp đã đi quá vạch dừng hoặc đã quá gần vạch dừng nếu dừng lại thấy nguy hiểm thì được đi tiếp.,Trong trường hợp tín hiệu vàng nhấp nháy là được đi nhưng phải giảm tốc độ, chú ý quan sát nhường đường cho người đi bộ qua đường.,Nhanh chóng tăng tốc độ, vượt qua nút giao và chú ý đảm bảo an toàn.,Cả ý 1 và ý 2.', 3, 0, '', 7, 1, 0, 0),
(170, 'Khi gặp xe buýt đang dừng đón, trả khách, người điều khiển xe mô tô phải xử lý như thế nào dưới đây để đảm bảo an toàn giao thông?', '', 'Tăng tốc độ để nhanh chóng vượt qua bến đỗ.,Giảm tốc độ đến mức an toàn có thể và quan sát người qua đường và từ từ vượt qua xe buýt.,Yêu cầu phải dừng lại phía sau xe buýt chờ xe rời bến mới đi tiếp.', 1, 0, '', 7, 1, 0, 0),
(171, 'Người lái xe sử dụng đèn như thế nào khi lái xe trong khu đô thị và đông dân cư vào ban đêm?', '', 'Bất cứ đèn nào miễn là mắt nhìn rõ phía trước.,Chỉ bật đèn chiếu xa (đèn pha) khi không nhìn rõ đường.,Đèn chiếu xa (đèn pha) khi đường vắng, đèn pha chiếu gần (đèn cốt) khi có xe đi ngược chiều.,Đèn chiếu gần (đèn cốt).', 3, 0, '', 7, 1, 0, 0),
(172, 'Gặp biển nào người lái xe phải nhường đường cho người đi bộ?', 'https://onthigplx.vn/images/onthigplx_vn__q371.webp', 'Biển 1.,Biển 2.,Biển 3.,Biển 1 và 3.', 0, 0, 'Biển 1: W.224 “Đường người đi bộ cắt ngang”; Biển 2: P.112 “Cấm người đi bộ”; Biển 3: R.305 “Đường dành cho người đi bộ”. Biển 1 báo ưu tiên cho người đi bộ nên phải nhường đường.', 7, 4, 0, 0),
(173, 'Trong hình dưới đây, xe nào chấp hành đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q538.webp', 'Chỉ xe khách, mô tô.,Tất cả các loại xe trên.,Không xe nào chấp hành đúng quy tắc giao thông.', 1, 0, 'Xe khách chờ đèn đỏ rẽ trái. Xe tải đi thẳng và rẽ phải theo tín hiệu đèn xanh. Xe con đi thẳng và rẽ phải theo tín hiệu đèn xanh. Xe mô tô chờ đèn đỏ rẽ trái. Nên tất cả xe đều chấp hành.', 7, 5, 0, 0),
(174, 'Xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q527.webp', 'Xe khách.,Mô tô.,Xe con.,Xe con và mô tô.', 2, 0, 'Xe con quay đầu đè vạch liền trên đường nên vi phạm.', 7, 5, 0, 0),
(175, 'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q503.webp', 'Xe khách, xe tải, mô tô.,Xe tải, xe con, mô tô.,Xe khách, xe con, mô tô.', 0, 0, '1. Xe khách: Sai làn, Đi thẳng đèn đang đỏ; 2. Xe tải: Sai làn: Đi trên làn đi thẳng trong khi thực hiện rẽ trái. 3. Xe mô tô: Sai làn: Đi trên làn rẽ trái trong khi thực hiện rẽ phải, Nên đáp án đúng là xe khách, xe tải và xe mô tô đều vi phạm quy tắc giao thông.', 7, 5, 0, 0),
(176, 'Tại nơi đường giao nhau không có báo hiệu đi theo vòng xuyến, người điều khiển phương tiện phải nhường đường như thế nào là đúng quy tắc giao thông?', '', 'Phải nhường đường cho xe đi đến từ bên phải.,Xe báo hiệu xin đường trước xe đó được đi trước.,Phải nhường đường cho xe đi đến từ bên trái.', 0, 0, '', 8, 1, 0, 0),
(177, 'Người điều khiển xe mô tô phải giảm tốc độ và hết sức thận trọng khi qua những đoạn đường nào dưới đây?', '', 'Đường ướt, đường có sỏi cát trên nền đường.,Đường hẹp có nhiều điểm giao cắt từ hai phía.,Đường đèo dốc, vòng liên tục,Tất cả các ý nêu trên.', 3, 0, '', 8, 1, 0, 0),
(178, 'Trên đường bộ (trừ đường cao tốc) trong khu vực đông dân cư, đường đôi có dải phân cách giữa, xe mô tô hai bánh, ô tô chở người đến 30 chỗ tham gia giao thông với tốc độ tối đa cho phép là bao nhiêu?', '', '60 km/h.,50 km/h.,40 km/h.', 0, 0, '', 8, 1, 0, 0),
(179, 'Khi gặp hiệu lệnh như dưới đây của cảnh sát giao thông thì người tham gia giao thông phải đi như thế nào là đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q82.webp', 'Người tham gia giao thông ở các hướng phải dừng lại.,Người tham gia giao thông ở các hướng được đi theo chiều gậy chỉ của cảnh sát giao thông.,Người tham gia giao thông ở phía trước và phía sau người điều khiển được đi tất cả các hướng; giao thông ở phía bên phải và phía bên trái người điều khiển phải dừng lại.,Người tham gia giao thông ở phía trước và phía sau người điều khiển phải dừng lại; giao thông ở phía bên phải và bên trái người điều khiển được đi tất cả các hướng.', 3, 0, '', 8, 1, 0, 0),
(180, 'Biển nào dưới đây báo hiệu hết cấm vượt?', 'https://onthigplx.vn/images/onthigplx_vn__q442.webp', 'Biển 1.,Biển 2.,Biển 3.,Biển 2 và 3.', 3, 0, 'Biển 1: DP.134 “Hết hạn chế tốc độ tối đa”; Biển 2: DP.135 “Hết tất cả các lệnh cấm”; Biển 3: DP.133 “Hết cấm vượt”; Nên đáp án đúng phải là Biển 2 và Biển 3.', 8, 4, 0, 0),
(181, 'Người có giấy phép lái xe mô tô hạng A1 không được phép điều khiển loại xe nào dưới đây?', '', 'Xe mô tô có dung tích xi-lanh 125 cm3.,Xe mô tô có dung tích xi-lanh từ 175 cm3 trở lên.,Xe mô tô có dung tích xi-lanh 100 cm3.', 1, 0, '', 8, 1, 0, 0),
(182, 'Tay ga trên xe mô tô hai bánh có tác dụng gì trong các trường hợp dưới đây?', '', 'Để điều khiển xe chạy về phía trước.,Để điều tiết công suất động cơ qua đó điều khiển tốc độ của xe.,Để điều khiển xe chạy lùi.,Cả ý 1 và ý 2.', 3, 0, '', 8, 3, 0, 0),
(183, 'Xe nào dừng đúng theo quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q592.webp', 'Xe con.,Xe mô tô.,Cả 2 xe đều sai.', 0, 0, 'Biển số W.211a “Giao nhau với đường sắt không có rào chắn” thì các phương tiện đứng cách xa đường sắt tối thiểu 5m nên xe con đúng.', 8, 5, 0, 0),
(184, 'Biển nào cấm quay xe?', 'https://onthigplx.vn/images/onthigplx_vn__q317.webp', 'Biển 1.,Biển 2.,Không biển nào.,Cả hai biển.', 1, 0, 'Biển 1: P.123a “Cấm rẽ trái” không cấm quay đầu xe; Biển 2: P.124a “Cấm quay xe” không cấm rẽ trái. Nên Biển 2 là đáp án đúng.', 8, 4, 0, 0),
(185, 'Vạch kẻ đường nào dưới đây là vạch phân chia hai chiều xe chạy (vạch tim đường), xe không được lấn làn, không được đè lên vạch?', 'https://onthigplx.vn/images/onthigplx_vn__q479.webp', 'Vạch 1.,Vạch 2.,Vạch 3.,Cả 3 vạch.', 1, 0, '', 8, 4, 0, 0),
(186, 'Các xe đi theo thứ tự nào là đúng quy tắc giao thông đường bộ?', 'https://onthigplx.vn/images/onthigplx_vn__q567.webp', 'Xe của bạn, mô tô, xe con.,Xe con, xe của bạn, mô tô.,Mô tô, xe con, xe của bạn.', 2, 0, 'Thứ tự ưu tiên: Xe ưu tiên - Đường ưu tiên - Bên phải trống - Rẽ phải - Đi thẳng - Rẽ trái. Biển báo phía trước là đường ưu tiên và biển phụ báo hướng di chuyển của xe mô tô là hướng ưu tiên. 1. Xe mô tô: Đường ưu tiên; 2. Xe con: Đường không ưu tiên, bên phải trống; 3. Xe của bạn: Đường không ưu tiên, bên phải vướng xe con.', 8, 5, 0, 0),
(187, 'Trong các hành vi dưới đây, người lái xe ô tô có văn hóa giao thông phải ứng xử như thế nào?', '', 'Điều khiển xe đi bên phải theo chiều đi của mình; đi đúng phần đường, làn đường quy định; dừng, đỗ xe đúng nơi quy định; đã uống rượu, bia thì không lái xe.,Điều khiển xe đi trên phần đường, làn đường có ít phương tiện giao thông; dừng xe, đỗ xe ở nơi thuận tiện hoặc theo yêu cầu của hành khách, của người thân.,Dừng và đỗ xe ở nơi thuận tiện cho việc giao nhận hành khách và hàng hóa; sử dụng ít rượu, bia thì có thể lái xe.', 0, 0, '', 8, 2, 0, 0),
(188, 'Người lái xe được hiểu như thế nào trong các khái niệm dưới đây?', '', 'Là người điều khiển xe cơ giới,Là người điều khiển xe thô sơ.,Là người điều khiển xe có súc vật kéo.', 0, 0, '', 8, 1, 0, 0),
(189, 'Xe của bạn đang di chuyển gần đến khu vực giao cắt với đường sắt, khi rào chắn đang dịch chuyển, bạn điều khiển xe như thế nào là đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q596.webp', 'Quan sát nếu thấy không có tàu thì tăng tốc cho xe vượt qua đường sắt.,Dừng lại trước rào chắn một khoảng cách an toàn.,Ra tín hiệu, yêu cầu người gác chắn tàu kéo chậm Barie để xe bạn qua.', 1, 0, 'Bắt buộc phải dừng xe.', 8, 5, 0, 0),
(190, 'Biển báo này có ý nghĩa như thế nào?', 'https://onthigplx.vn/images/onthigplx_vn__q339.webp', 'Tốc độ tối đa cho phép về ban đêm cho các phương tiện là 70 km/h.,Tốc độ tối thiểu cho phép về ban đêm cho các phương tiện là 70 km/h.', 0, 0, '', 8, 4, 0, 0),
(191, 'Khi gặp xe buýt đang dừng đón, trả khách, người điều khiển xe mô tô phải xử lý như thế nào dưới đây để đảm bảo an toàn giao thông?', '', 'Tăng tốc độ để nhanh chóng vượt qua bến đỗ.,Giảm tốc độ đến mức an toàn có thể và quan sát người qua đường và từ từ vượt qua xe buýt.,Yêu cầu phải dừng lại phía sau xe buýt chờ xe rời bến mới đi tiếp.', 1, 0, '', 8, 1, 0, 0),
(192, 'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q560.webp', 'Xe con.,Xe tải.,Xe con, xe tải.', 1, 0, 'Xe con trong cả hai phía đều đang ở đúng làn đường và đi theo hướng mà đèn xanh đang bật nên đúng quy tắc. Xe tải trong cả hai phía đều ở sai làn đường so với hướng rẽ nên vi phạm quy tắc giao thông.', 8, 5, 0, 0),
(193, 'Khi gặp một đoàn xe, một đoàn xe tang hay gặp một đoàn người có tổ chức theo đội ngũ, người lái xe phải xử lý như thế nào?', '', 'Từ từ đi cắt qua đoàn người, đoàn xe.,Không được cắt ngang qua đoàn người, đoàn xe.,Báo hiệu từ từ cho xe đi cắt qua để bảo đảm an toàn.', 1, 1, '', 8, 1, 0, 0),
(194, 'Xe nào đỗ vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q509.webp', 'Chỉ mô tô.,Chỉ xe tải.,Cả ba xe.,Chỉ mô tô và xe tải.', 2, 0, 'Xe tải đậu trái đường; Xe con và mô tô đậu xe đè vạch nên cả 3 xe vi phạm.', 8, 5, 0, 0),
(195, 'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q561.webp', 'Xe tải, xe con.,Xe khách, xe con.,Xe khách, xe tải.', 2, 0, 'Xe con và xe mô tô đang ở đúng làn đường, đúng hướng rẽ với tín hiệu đèn xanh nên đúng quy tắc giao thông. Xe khách và xe tải đang ở sai làn đường so với hướng rẽ nên đều vi phạm.', 8, 5, 0, 0),
(196, 'Biển số 1 có ý nghĩa gì?', 'https://onthigplx.vn/images/onthigplx_vn__q462.webp', 'Đi thẳng hoặc rẽ trái trên cầu vượt.,Đi thẳng hoặc rẽ phải trên cầu vượt.,Báo hiệu cầu vượt liên thông.', 2, 0, '', 8, 4, 0, 0),
(197, 'Khi gặp biển nào xe được rẽ trái?', 'https://onthigplx.vn/images/onthigplx_vn__q319.webp', 'Biển 1.,Biển 2.,Không biển nào.', 1, 0, 'Biển 1: P.123a “Cấm rẽ trái” không cấm quay đầu xe; Biển 2: P.124a “Cấm quay xe” không cấm rẽ trái. Nên Biển 2 là đáp án đúng.', 8, 4, 0, 0),
(198, 'Trong trường hợp này, thứ tự xe đi như thế nào là đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q540.webp', 'Xe công an, xe quân sự, xe con + mô tô.,Xe quân sự, xe công an, xe con + mô tô.,Xe mô tô + xe con, xe quân sự, xe công an.', 1, 0, 'Thứ tự ưu tiên: Xe ưu tiên - Đường ưu tiên - Bên phải trống - Rẽ phải - Đi thẳng - Rẽ trái. 1. Xe quân sự: Xe ưu tiên cùng cấp xe công an nhưng đi thẳng; 2. Xe công an: Xe ưu tiên; rẽ trái; 3. Xe con và xe mô tô: Cùng đi thẳng.', 8, 5, 0, 0),
(199, 'Trên đoạn đường hai chiều không có giải phân cách giữa, người lái xe không được vượt xe khác trong các trường hợp nào dưới đây?', '', 'Xe bị vượt bất ngờ tăng tốc độ và cố tình không nhường đường.,Xe bị vượt giảm tốc độ và nhường đường.,Phát hiện có xe đi ngược chiều.,Cả ý 1 và ý 3.', 3, 0, '', 8, 1, 0, 0),
(200, 'Khi gặp biển nào xe ưu tiên theo luật định vẫn phải dừng lại?', 'https://onthigplx.vn/images/onthigplx_vn__q333.webp', 'Biển 1.,Biển 2.,Cả ba biển.', 1, 0, 'Biển 1: P.101 “Đường cấm” không cấm xe ưu tiên; Biển 2: R.122 “Dừng lại” áp dụng với cả xe ưu tiên; Biển 3: P.102 “Cấm đi ngược chiều” không áp dụng với xe ưu tiên; Nên Biển 2 là đáp án đúng, áp dụng với cả xe ưu tiên.', 8, 4, 0, 0),
(201, 'Hành vi đưa xe cơ giới, xe máy chuyên dùng không bảo đảm tiêu chuẩn an toàn kỹ thuật và bảo vệ môi trường vào tham gia giao thông đường bộ có bị nghiêm cấm hay không?', '', 'Không nghiêm cấm.,Bị nghiêm cấm.,Bị nghiêm cấm tùy theo các tuyến đường.,Bị nghiêm cấm tuỳ theo loại xe.', 1, 1, '', 9, 1, 0, 0),
(202, 'Theo Luật Giao thông đường bộ, tín hiệu đèn giao thông gồm 3 màu nào dưới đây?', '', 'Đỏ - Vàng - Xanh,Cam - Vàng - Xanh.,Vàng - Xanh dương - Xanh lá.,Đỏ - Cam - Xanh.', 0, 0, '', 9, 1, 0, 0),
(203, 'Bạn đang lái xe phía trước có một xe cảnh sát giao thông không phát tín hiệu ưu tiên bạn có được phép vượt hay không?', '', 'Không được vượt.,Được vượt khi đang đi trên cầu.,Được phép vượt khi đi qua nơi giao nhau có ít phương tiện cùng tham gia giao thông.,Được vượt khi đảm bảo an toàn.', 3, 0, 'Được vượt khi xe không phát tín hiệu ưu tiên.', 9, 1, 0, 0),
(204, 'Tại nơi đường giao nhau, khi đèn điều khiển giao thông có tín hiệu màu vàng, người điều khiển phương tiện giao thông phải chấp hành như thế nào là đúng quy tắc giao thông?', '', 'Phải cho xe dừng lại trước vạch dừng, trường hợp đã đi quá vạch dừng hoặc đã quá gần vạch dừng nếu dừng lại thấy nguy hiểm thì được đi tiếp.,Trong trường hợp tín hiệu vàng nhấp nháy là được đi nhưng phải giảm tốc độ, chú ý quan sát nhường đường cho người đi bộ qua đường.,Nhanh chóng tăng tốc độ, vượt qua nút giao và chú ý đảm bảo an toàn.,Cả ý 1 và ý 2.', 3, 0, '', 9, 1, 0, 0),
(205, 'Biển nào là biển “Cấm đi ngược chiều”?', 'https://onthigplx.vn/images/onthigplx_vn__q329.webp', 'Biển 1.,Biển 2.,Cả ba biển.', 1, 0, 'Biển 1: P.101 “Đường cấm”; Biển 2: P.102 “Cấm đi ngược chiều”; Biển 3: P.301a “Cấm đỗ xe”. Nên biển 2 là cấm đi ngược chiều.', 9, 4, 0, 0),
(206, 'Biển nào chỉ đường dành cho người đi bộ, các loại xe không được đi vào khi gặp biển này?', 'https://onthigplx.vn/images/onthigplx_vn__q372.webp', 'Biển 1.,Biển 1 và 3,Biển 3.,Cả ba biển.', 2, 0, 'Biển 1: W.224 “Đường người đi bộ cắt ngang”; Biển 2: P.112 “Cấm người đi bộ”; Biển 3: R.305 “Đường dành cho người đi bộ”. Biển 3 báo đường dành cho người đi bộ nên phương tiện khác không được đi vào.', 9, 4, 0, 0),
(207, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q490.webp', 'Xe tải, xe con, mô tô.,Xe con, xe tải, mô tô.,Mô tô, xe con, xe tải.,Xe con, mô tô, xe tải.', 2, 0, 'Thứ tự ưu tiên: Xe ưu tiên - Đường ưu tiên - Đường cùng cấp theo thứ tự bên phải trống - rẽ phải - đi thẳng - rẽ trái. 1. Xe mô tô: Bên phải trống; 2. Xe con: Đi thẳng; 3. Xe tải: Rẽ trái;', 9, 5, 0, 0),
(208, 'Khái niệm về văn hóa giao thông được hiểu như thế nào là đúng?', '', 'Là sự hiểu biết và chấp hành nghiêm chỉnh pháp luật về giao thông; là ý thức trách nhiệm với cộng đồng khi tham gia giao thông.,Là ứng xử có văn hóa, có tình yêu thương con người trong các tình huống không may xảy ra khi tham gia giao thông.,Cả ý 1 và ý 2.', 2, 0, '', 9, 2, 0, 0),
(209, 'Xe nào được quyền đi trước trong trường hợp này?', 'https://onthigplx.vn/images/onthigplx_vn__q495.webp', 'Mô tô.,Xe cứu thương.', 1, 0, 'Xe ưu tiên đi trước.', 9, 5, 0, 0),
(210, 'Chiều dài đoạn đường 500 m từ nơi đặt biển này, người lái xe có được phép bấm còi không?', 'https://onthigplx.vn/images/onthigplx_vn__q352.webp', 'Được phép.,Không được phép.', 1, 0, 'Biển phụ là biển S.501 “Phạm vi tác dụng của biển” xác định chiều dài áp dụng biển chính từ nơi đặt biển.', 9, 4, 0, 0),
(211, 'Xe của bạn đang di chuyển gần đến khu vực giao cắt với đường sắt, khi rào chắn đang dịch chuyển, bạn điều khiển xe như thế nào là đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q596.webp', 'Quan sát nếu thấy không có tàu thì tăng tốc cho xe vượt qua đường sắt.,Dừng lại trước rào chắn một khoảng cách an toàn.,Ra tín hiệu, yêu cầu người gác chắn tàu kéo chậm Barie để xe bạn qua.', 1, 0, 'Bắt buộc phải dừng xe.', 9, 5, 0, 0),
(212, 'Trên đường bộ (trừ đường cao tốc) trong khu vực đông dân cư, đường hai chiều hoặc đường một chiều có một làn xe cơ giới, loại xe nào tham gia giao thông với tốc độ tối đa cho phép là 50 km/h?', '', 'Ô tô con, ô tô tải, ô tô chở người trên 30 chỗ.,Xe gắn máy, xe máy chuyên dùng.,Cả ý 1 và ý 2.', 0, 0, '', 9, 1, 0, 0),
(213, 'Khi gặp biển nào, người lái xe phải giảm tốc độ, chú ý xe đi ngược chiều, xe đi ở phía đường bị hẹp phải nhường đường cho xe đi ngược chiều?', 'https://onthigplx.vn/images/onthigplx_vn__q389.webp', 'Biển 1.,Biển 1 và 3.,Biển 2 và 3.,Cả ba biển.', 2, 0, 'Biển 1: W.236 “Hết đường đôi”; Biển 2: Biển 2: W203b “Đường bị hẹp về phía trái”; Biển 3:  Biển 3: W203c “Đường bị hẹp về phía phải”. Câu này hỏi về việc đường bị thu hẹp nên câu trả lời đúng là Biển 2 và Biển 3.', 9, 4, 0, 0),
(214, 'Bạn đang lái xe phía trước có một xe cứu thương đang phát tín hiệu ưu tiên bạn có được phép vượt hay không?', '', 'Không được vượt.,Được vượt khi đang đi trên cầu.,Được phép vượt khi đi qua nơi giao nhau có ít phương tiện cùng tham gia giao thông.,Được vượt khi đảm bảo an toàn.', 0, 0, 'Không được vượt khi đang phát tín hiệu ưu tiên.', 9, 1, 0, 0),
(215, 'Khi điều khiển xe chạy với tốc độ dưới 60 km/h, người lái xe phải chủ động điều khiển xe như thế nào để đảm bảo an toàn giao thông?', '', 'Chủ động giữ khoảng cách an toàn phù hợp với xe chạy liền trước xe của mình.,Đảm bảo khoảng cách an toàn theo mật độ phương tiện, tình hình giao thông thực tế.,Cả ý 1 và ý 2.', 2, 0, '', 9, 1, 0, 0),
(216, 'Biển nào báo hiệu “Chú ý chướng ngại vật”?', 'https://onthigplx.vn/images/onthigplx_vn__q402.webp', 'Biển 1.,Biển 2 và 3.,Cả ba biển.', 1, 0, '', 9, 4, 0, 0),
(217, 'Khi điều khiển xe mô tô quay đầu người lái xe cần thực hiện như thế nào để đảm bảo an toàn?', '', 'Bật tín hiệu báo rẽ trước khi quay đầu, từ từ giảm tốc độ đến mức có thể dừng lại.,Chỉ quay đầu xe tại những nơi được phép quay đầu.,Quan sát an toàn các phương tiện tới từ phía trước, phía sau, hai bên đồng thời nhường đường cho xe từ bên phải và phía trước đi tới.,Tất cả các ý nêu trên.', 3, 0, '', 9, 3, 0, 0),
(218, 'Bạn có được phép vượt xe mô tô phía trước không?', 'https://onthigplx.vn/images/onthigplx_vn__q556.webp', 'Cho phép.,Không được vượt.', 1, 0, 'Tại nơi giao nhau, trên đoạn đường có làn đường dành cho người đi bộ cắt ngang thì không được phép vượt.', 9, 5, 0, 0),
(219, 'Các xe đi theo thứ tự nào là đúng quy tắc giao thông đường bộ?', 'https://onthigplx.vn/images/onthigplx_vn__q567.webp', 'Xe của bạn, mô tô, xe con.,Xe con, xe của bạn, mô tô.,Mô tô, xe con, xe của bạn.', 2, 0, 'Thứ tự ưu tiên: Xe ưu tiên - Đường ưu tiên - Bên phải trống - Rẽ phải - Đi thẳng - Rẽ trái. Biển báo phía trước là đường ưu tiên và biển phụ báo hướng di chuyển của xe mô tô là hướng ưu tiên. 1. Xe mô tô: Đường ưu tiên; 2. Xe con: Đường không ưu tiên, bên phải trống; 3. Xe của bạn: Đường không ưu tiên, bên phải vướng xe con.', 9, 5, 0, 0),
(220, 'Các xe đi như thế nào là đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q528.webp', 'Các xe ở phía tay phải và tay trái của người điều khiển được phép đi thẳng.,Cho phép các xe ở mọi hướng được rẽ phải.,Tất cả các xe phải dừng lại trước ngã tư, trừ những xe đã ở trong ngã tư được phép tiếp tục đi.', 2, 0, 'Giơ tay thẳng đứng: Tất cả dừng, trừ xe đã ở trong ngã tư được phép đi; Giang ngang tay: Trái phải đi; Trước sau dừng; Tay phải giơ trước: Sau, phải dừng, trước rẽ phải, trái đi các hướng, người đi bộ qua đường đi sau người điều khiển.', 9, 5, 0, 0),
(221, 'Các phương tiện tham gia giao thông đường bộ (kể cả những xe có quyền ưu tiên) đều phải dừng lại bên phải đường của mình và trước vạch “dừng xe” tại các điểm giao cắt giữa đường bộ và đường sắt khi có báo hiệu dừng nào dưới đây?', '', 'Hiệu lệnh của nhân viên gác chắn.,Đèn đỏ sáng nháy, cờ đỏ, biển đỏ.,Còi, chuông kêu, chắn đã đóng.,Tất cả các ý trên.', 3, 0, '', 9, 1, 0, 0),
(222, 'Người điều khiển xe mô tô hai bánh, xe gắn máy được phép chở tối đa 2 người trong những trường hợp nào?', '', 'Chở người bệnh đi cấp cứu; trẻ em dưới 14 tuổi.,Áp giải người có hành vi vi phạm pháp luật.,Cả ý 1 và ý 2.', 2, 0, '', 9, 1, 0, 0),
(223, 'Vạch dưới đây có ý nghĩa gì?', 'https://onthigplx.vn/images/onthigplx_vn__q486.webp', 'Vị trí dừng xe của các phương tiện vận tải hành khách công cộng.,Báo cho người điều khiển được dừng phương tiện trong phạm vi phần mặt đường có bố trí vạch để tránh ùn tắc giao thông.,Dùng để xác định vị trí giữa các phương tiện trên đường.', 0, 0, 'Vạch 9.2: Vạch quy định vị trí dừng đỗ của phương tiện giao thông công cộng trên đường.', 9, 4, 0, 0),
(224, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q520.webp', 'Xe con (A), mô tô, xe con (B), xe đạp.,Xe con (B), xe đạp, mô tô, xe con (A).,Xe con (A), xe con (B), mô tô + xe đạp.,Mô tô + xe đạp, xe con (A), xe con (B).', 3, 0, 'Thứ tự ưu tiên đường cùng cấp: Xe ưu tiên - Đường ưu tiên - Bên phải trống - rẽ phải - đi thẳng - rẽ trái. 1. Mô tô và xe đạp: Bên phải trống; 2. Xe con (A): Đi thẳng; 3. Xe con (B): Rẽ trái.', 9, 5, 0, 0),
(225, 'Gặp biển nào người lái xe phải nhường đường cho người đi bộ?', 'https://onthigplx.vn/images/onthigplx_vn__q371.webp', 'Biển 1.,Biển 2.,Biển 3.,Biển 1 và 3.', 0, 0, 'Biển 1: W.224 “Đường người đi bộ cắt ngang”; Biển 2: P.112 “Cấm người đi bộ”; Biển 3: R.305 “Đường dành cho người đi bộ”. Biển 1 báo ưu tiên cho người đi bộ nên phải nhường đường.', 9, 4, 0, 0),
(226, 'Người điều khiển phương tiện giao thông trên đường phố có được dừng xe, đỗ xe trên miệng cống thoát nước, miệng hầm của đường điện thoại, điện cao thế, chỗ dành riêng cho xe chữa cháy lấy nước hay không?', '', 'Được dừng xe, đỗ xe trong trường hợp cần thiết.,Không được dừng xe, đỗ xe.,Được dừng xe, không được đỗ xe.', 1, 1, '', 10, 1, 0, 0),
(227, 'Biển nào là biển “Cấm đi ngược chiều”?', 'https://onthigplx.vn/images/onthigplx_vn__q329.webp', 'Biển 1.,Biển 2.,Cả ba biển.', 1, 0, 'Biển 1: P.101 “Đường cấm”; Biển 2: P.102 “Cấm đi ngược chiều”; Biển 3: P.301a “Cấm đỗ xe”. Nên biển 2 là cấm đi ngược chiều.', 10, 4, 0, 0),
(228, 'Các xe đi theo thứ tự nào là đúng quy tắc giao thông đường bộ?', 'https://onthigplx.vn/images/onthigplx_vn__q568.webp', 'Xe của bạn, mô tô, xe con.,Xe con, xe của bạn, mô tô.,Mô tô, xe con, xe của bạn.', 1, 0, 'Thứ tự ưu tiên: Xe ưu tiên - Đường ưu tiên - Đường cùng cấp: Bên phải trống, rẽ phải, đi thẳng, rẽ trái. 1. Xe con: Rẽ phải; 2. Xe của bạn: Đi thẳng; 3. Mô tô: Rẽ trái.', 10, 5, 0, 0),
(229, 'Khi gặp hiệu lệnh như dưới đây của cảnh sát giao thông thì người tham gia giao thông phải đi như thế nào là đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q82.webp', 'Người tham gia giao thông ở các hướng phải dừng lại.,Người tham gia giao thông ở các hướng được đi theo chiều gậy chỉ của cảnh sát giao thông.,Người tham gia giao thông ở phía trước và phía sau người điều khiển được đi tất cả các hướng; giao thông ở phía bên phải và phía bên trái người điều khiển phải dừng lại.,Người tham gia giao thông ở phía trước và phía sau người điều khiển phải dừng lại; giao thông ở phía bên phải và bên trái người điều khiển được đi tất cả các hướng.', 3, 0, '', 10, 1, 0, 0),
(230, 'Người lái xe sử dụng đèn như thế nào khi lái xe trong khu đô thị và đông dân cư vào ban đêm?', '', 'Bất cứ đèn nào miễn là mắt nhìn rõ phía trước.,Chỉ bật đèn chiếu xa (đèn pha) khi không nhìn rõ đường.,Đèn chiếu xa (đèn pha) khi đường vắng, đèn pha chiếu gần (đèn cốt) khi có xe đi ngược chiều.,Đèn chiếu gần (đèn cốt).', 3, 0, '', 10, 1, 0, 0),
(231, 'Tại nơi đường giao nhau, khi đèn điều khiển giao thông có tín hiệu màu vàng, người điều khiển phương tiện giao thông phải chấp hành như thế nào là đúng quy tắc giao thông?', '', 'Phải cho xe dừng lại trước vạch dừng, trường hợp đã đi quá vạch dừng hoặc đã quá gần vạch dừng nếu dừng lại thấy nguy hiểm thì được đi tiếp.,Trong trường hợp tín hiệu vàng nhấp nháy là được đi nhưng phải giảm tốc độ, chú ý quan sát nhường đường cho người đi bộ qua đường.,Nhanh chóng tăng tốc độ, vượt qua nút giao và chú ý đảm bảo an toàn.,Cả ý 1 và ý 2.', 3, 0, '', 10, 1, 0, 0),
(232, 'Hiệu lực của biển “Tốc độ tối đa cho phép” hết tác dụng khi gặp biển nào dưới đây?', 'https://onthigplx.vn/images/onthigplx_vn__q440.webp', 'Biển 1.,Biển 2.,Biển 3.,Biển 1 và 2.', 3, 0, 'Biển 1: DP134 “Hết hạn chế tốc độ tối đa”; Biển 2: DP135 “Hết mọi lệnh cấm”; Biển 3: R307 “Hết hạn chế tốc độ tối thiểu”. Nên Biển 1 và Biển 2 là đều hết hạn chế tốc độ tối đa. Chú ý câu hỏi các biển hết hạn chế, không phải ý nghĩa của biển.', 10, 4, 0, 0),
(233, 'Đường mà trên đó phương tiện tham gia giao thông được các phương tiện giao thông đến từ hướng khác nhường đường khi qua nơi đường giao nhau, được cắm biển báo hiệu đường ưu tiên là loại đường gì?', '', 'Đường không ưu tiên.,Đường tỉnh lộ.,Đường quốc lộ.,Đường ưu tiên.', 3, 0, '', 10, 1, 0, 0),
(234, 'Bạn xử lý như thế nào trong trường hợp này?', 'https://onthigplx.vn/images/onthigplx_vn__q572.webp', 'Tăng tốc độ, rẽ phải trước xe tải và xe đạp.,Giảm tốc độ, rẽ phải sau xe tải và xe đạp.,Tăng tốc độ, rẽ phải trước xe đạp.', 1, 0, 'Xe tải đã vào nơi giao nhau trước nên sẽ được ưu tiên trước. Biển báo phía trước là đường ưu tiên dành cho xe thô sơ nên phải nhường đường cho xe đạp. Do đó, xe bạn rẽ phải sau xe tải và xe đạp.', 10, 5, 0, 0),
(235, 'Vạch kẻ đường nào dưới đây là vạch phân chia hai chiều xe chạy (vạch tim đường)?', 'https://onthigplx.vn/images/onthigplx_vn__q480.webp', 'Vạch 1.,Vạch 2.,Vạch 3.,Vạch 1 và 3.', 3, 0, '', 10, 4, 0, 0),
(236, 'Trong các hành vi dưới đây, người lái xe ô tô có văn hóa giao thông phải ứng xử như thế nào?', '', 'Điều khiển xe đi bên phải theo chiều đi của mình; đi đúng phần đường, làn đường quy định; dừng, đỗ xe đúng nơi quy định; đã uống rượu, bia thì không lái xe.,Điều khiển xe đi trên phần đường, làn đường có ít phương tiện giao thông; dừng xe, đỗ xe ở nơi thuận tiện hoặc theo yêu cầu của hành khách, của người thân.,Dừng và đỗ xe ở nơi thuận tiện cho việc giao nhận hành khách và hàng hóa; sử dụng ít rượu, bia thì có thể lái xe.', 0, 0, '', 10, 2, 0, 0),
(237, 'Theo tín hiệu đèn của xe cơ giới, xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q559.webp', 'Xe mô tô.,Xe ô tô con.,Không xe nào vi phạm.,Cả hai xe.', 3, 0, 'Biển số R.301a chỉ cho phép các phương tiện đi thẳng trong khi cả hai xe đều có tín hiệu xi nhan rẽ sang hướng khác nên cả 2 xe đều vi phạm quy tắc giao thông.', 10, 5, 0, 0),
(238, 'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q503.webp', 'Xe khách, xe tải, mô tô.,Xe tải, xe con, mô tô.,Xe khách, xe con, mô tô.', 0, 0, '1. Xe khách: Sai làn, Đi thẳng đèn đang đỏ; 2. Xe tải: Sai làn: Đi trên làn đi thẳng trong khi thực hiện rẽ trái. 3. Xe mô tô: Sai làn: Đi trên làn rẽ trái trong khi thực hiện rẽ phải, Nên đáp án đúng là xe khách, xe tải và xe mô tô đều vi phạm quy tắc giao thông.', 10, 5, 0, 0),
(239, 'Khái niệm “đỗ xe” được hiểu như thế nào là đúng quy tắc giao thông?', '', 'Là trạng thái đứng yên của phương tiện giao thông có giới hạn trong một khoảng thời gian cần thiết đủ để cho người lên, xuống phương tiện đó, xếp dỡ hàng hóa hoặc thực hiện công việc khác.,Là trạng thái đứng yên của phương tiện giao thông không giới hạn thời gian.', 1, 0, 'Đỗ xe là đứng yên không giới hạn thời gian', 10, 1, 0, 0),
(240, 'Các vạch dưới đây có tác dụng gì?', 'https://onthigplx.vn/images/onthigplx_vn__q481.webp', 'Phân chia hai chiều xe chạy ngược chiều nhau.,Phân chia các làn xe chạy cùng chiều nhau.', 0, 0, '', 10, 4, 0, 0),
(241, 'Các xe đi theo hướng mũi tên, xe nào chấp hành đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q565.webp', 'Xe tải, mô tô.,Xe khách, mô tô.,Xe tải, xe con.,Mô tô, xe con.', 1, 0, 'Xe con và xe tải: Vi phạm tín hiệu đèn; Xe khách và xe mô tô: Đúng làn đường và đúng tín hiệu đèn.', 10, 5, 0, 0),
(242, 'Trên đường một chiều có vạch kẻ phân làn đường, xe thô sơ và xe cơ giới phải đi như thế nào là đúng quy tắc giao thông?', '', 'Xe thô sơ phải đi trên làn đường bên trái ngoài cùng, xe cơ giới, xe máy chuyên dùng đi trên làn đường bên phải.,Xe thô sơ phải đi trên làn đường bên phải trong cùng; xe cơ giới, xe máy chuyên dùng đi trên làn đường bên trái.,Xe thô sơ đi trên làn đường phù hợp không gây cản trở giao thông, xe cơ giới, xe máy chuyên dùng đi trên làn đường bên phải.', 1, 0, '', 10, 1, 0, 0),
(243, 'Vạch kẻ đường nào dưới đây là vạch phân chia các làn xe cùng chiều?', 'https://onthigplx.vn/images/onthigplx_vn__q478.webp', 'Vạch 1.,Vạch 2.,Vạch 3.,Vạch 1 và 2.', 3, 0, '', 10, 4, 0, 0),
(244, 'Biển nào báo hiệu, chỉ dẫn xe đi trên đường này được quyền ưu tiên qua nơi giao nhau?', 'https://onthigplx.vn/images/onthigplx_vn__q385.webp', 'Biển 1 và 2.,Biển 1 và 3.,Biển 2 và 3.,Cả ba biển.', 1, 0, 'Biển 1: W.207a “Giao nhau với đường không ưu tiên”; Biển 2: W.208 “Giao nhau với đường ưu tiên”; Biển 3: I.401 “Bắt đầu đường ưu tiên”. Nên Biển 1 và Biển 3 là đáp án đúng.', 10, 4, 0, 0),
(245, 'Khi điều khiển xe mô tô quay đầu người lái xe cần thực hiện như thế nào để đảm bảo an toàn?', '', 'Bật tín hiệu báo rẽ trước khi quay đầu, từ từ giảm tốc độ đến mức có thể dừng lại.,Chỉ quay đầu xe tại những nơi được phép quay đầu.,Quan sát an toàn các phương tiện tới từ phía trước, phía sau, hai bên đồng thời nhường đường cho xe từ bên phải và phía trước đi tới.,Tất cả các ý nêu trên.', 3, 0, '', 10, 3, 0, 0),
(246, 'Biển nào cấm các phương tiện giao thông đường bộ rẽ phải?', 'https://onthigplx.vn/images/onthigplx_vn__q321.webp', 'Biển 1 và 2.,Biển 1 và 3.,Biển 2 và 3.,Cả ba biển.', 0, 0, 'Biển 1: 123b “Cấm rẽ phải”; Biển 2: 124d “Cấm rẽ phải và quay xe”; Biển 3: 124f “Cấm ô tô rẽ phải và quay xe”. Nên biển 3 chỉ cấm xe ô tô, còn biển 1 và biển 2 cấm toàn bộ phương tiện rẽ phải.', 10, 4, 0, 0),
(247, 'Theo hướng mũi tên, những hướng nào xe mô tô được phép đi?', 'https://onthigplx.vn/images/onthigplx_vn__q539.webp', 'Cả ba hướng.,Hướng 1 và 2.,Hướng 1 và 3,Hướng 2 và 3.', 2, 0, 'Hướng 2 có Biển số P.104 “Cấm mô tô”. Hướng 3 Biển số P.103a “Cấm ô tô” nhưng không cấm mô tô. Nên đáp án đúng là hướng 1 và hướng 3.', 10, 5, 0, 0),
(248, 'Tại nơi đường giao nhau không có báo hiệu đi theo vòng xuyến, người điều khiển phương tiện phải nhường đường như thế nào là đúng quy tắc giao thông?', '', 'Phải nhường đường cho xe đi đến từ bên phải.,Xe báo hiệu xin đường trước xe đó được đi trước.,Phải nhường đường cho xe đi đến từ bên trái.', 0, 0, '', 10, 1, 0, 0),
(249, 'Trong các khái niệm dưới đây khái niệm “dừng xe” được hiểu như thế nào là đúng?', '', 'Là trạng thái đứng yên của phương tiện giao thông không giới hạn thời gian để cho người lên, xuống phương tiện, xếp dỡ hàng hóa hoặc thực hiện công việc khác.,Là trạng thái đứng yên tạm thời của phương tiện giao thông trong một khoảng thời gian cần thiết đủ để cho người lên, xuống phương tiện, xếp dỡ hàng hóa hoặc thực hiện công việc khác.,Là trạng thái đứng yên của phương tiện giao thông không giới hạn thời gian giữa 02 lần vận chuyển hàng hóa hoặc hành khách.', 1, 0, '', 10, 1, 0, 0),
(250, 'Trong hình dưới, những xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q548.webp', 'Xe con (B), mô tô (C).,Xe con (A), mô tô (C).,Xe con (E), mô tô (D).,Tất cả các loại xe trên.', 2, 0, 'Nhìn vào bảng chỉ dẫn loại phương tiện theo làn đường: Xe con (E) đi trên làn dành riêng cho mô tô nên vi phạm: Xe mô tô (D) chạy trên làn dành riêng xe ô tô nên cũng vi phạm.', 10, 5, 0, 0),
(251, '“Phương tiện tham gia giao thông đường bộ” gồm những loại nào?', '', 'Phương tiện giao thông cơ giới đường bộ.,Phương tiện giao thông thô sơ đường bộ và xe máy chuyên dùng.,Cả ý 1 và ý 2.', 2, 0, 'Tất cả các loại phương tiện.', 11, 1, 0, 0),
(252, 'Trên đường đang xảy ra ùn tắc những hành vi nào sau đây là thiếu văn hóa khi tham gia giao thông?', '', 'Bấm còi liên tục thúc giục các phương tiện phía trước nhường đường.,Đi lên vỉa hè, tận dụng mọi khoảng trống để nhanh chóng thoát khỏi nơi ùn tắc.,Lấn sang làn đường bên trái cố gắng vượt lên xe khác,Tất cả các ý nêu trên.', 3, 0, '', 11, 2, 0, 0),
(253, 'Tại ngã ba hoặc ngã tư không có đảo an toàn, người lái xe phải nhường đường như thế nào là đúng trong các trường hợp dưới đây?', '', 'Nhường đường cho người đi bộ đang đi trên phần đường dành cho người đi bộ sang đường; nhường đường cho xe đi trên đường ưu tiên, đường chính từ bất kỳ hướng nào tới; nhường đường cho xe ưu tiên, xe đi từ bên phải đến.,Nhường đường cho người đi bộ đang đứng chờ đi qua phần đường dành cho người đi bộ sang đường; nhường đường cho xe đi trên đường ngược chiều, đường nhánh từ bất kỳ hướng nào tới; nhường đường cho xe đi từ bên trái đến.,Không phải nhường đường.', 0, 0, '', 11, 1, 0, 0),
(254, 'Biển báo hiệu có dạng tam giác đều, viền đỏ, nền màu vàng, trên có hình vẽ màu đen là loại biển gì dưới đây?', 'https://onthigplx.vn/images/onthigplx_vn__q73.webp', 'Biển báo nguy hiểm.,Biển báo cấm.,Biển báo hiệu lệnh.,Biển báo chỉ dẫn.', 0, 0, '', 11, 1, 0, 0),
(255, 'Tốc độ tối đa cho phép đối với xe máy chuyên dùng, xe gắn máy (kể cả xe máy điện) và các loại xe tương tự trên đường bộ (trừ đường cao tốc) không được vượt quá bao nhiêu km/h?', '', '50 km/h.,40 km/h.,60 km/h.', 1, 0, '', 11, 1, 0, 0),
(256, 'Gặp biển nào xe xích lô được phép đi vào?', 'https://onthigplx.vn/images/onthigplx_vn__q336.webp', 'Biển 1.,Biển 2.,Biển 3.,Biển 1 và 2.', 3, 0, '', 11, 4, 0, 0),
(257, 'Thứ tự các xe đi như thế nào là đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q504.webp', 'Xe khách, xe tải, mô tô, xe con.,Xe con, xe khách, xe tải, mô tô.,Mô tô, xe tải, xe khách, xe con.,Mô tô, xe tải, xe con, xe khách.', 2, 0, 'Giao nhau cùng cấp có vòng xuyến: Chưa vào vòng xuyến thì ưu tiên xe bên phải; đã vào vòng xuyến ưu tiên xe từ bên trái tới. Toàn bộ các xe chưa vào phòng xuyến nên ưu tiên xe bên phải. Thứ tự sẽ là Mô tô, xe tải, xe khách, xe con.', 11, 5, 0, 0),
(258, 'Biển nào báo hiệu “Hướng đi thẳng phải theo”?', 'https://onthigplx.vn/images/onthigplx_vn__q437.webp', 'Biển 1.,Biển 2.', 0, 0, 'Biển 1: R.301a “Hướng đi phải theo” chỉ được đi thẳng đặt trước ngã ba, ngã tư; Biển 2: I.407a “Đường một chiều” không liên quan hướng đi phải theo. Nên Biển 1 là đáp án đúng.', 11, 4, 0, 0),
(259, 'Người có giấy phép lái xe mô tô hạng A1 được phép điều khiển loại xe nào dưới đây?', '', 'Xe mô tô có dung tích xi-lanh từ 50 cm3 đến dưới 175 cm3.,Xe mô tô ba bánh dành cho người khuyết tật.,Cả ý 1 và ý 2.', 2, 0, '', 11, 1, 0, 0),
(260, 'Hành vi nào dưới đây bị nghiêm cấm?', '', 'Đỗ xe trên đường phố.,Sử dụng xe đạp đi trên các tuyến quốc lộ có tốc độ cao.,Làm hỏng (cố ý) cọc tiêu, gương cầu, dải phân cách.,Sử dụng còi và quay đầu xe trong khu dân cư.', 2, 1, '', 11, 1, 0, 0),
(261, 'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q562.webp', 'Xe con, xe tải, xe khách.,Xe tải, xe khách, xe mô tô.,Xe khách, xe mô tô, xe con.,Cả bốn xe.', 1, 0, 'Xe con đi đúng làn đường theo hướng rẽ và tín hiệu đèn. Xe khách: Sai làn đường và tín hiệu đèn. Xe tải: Đi thẳng vi phạm đèn đỏ. Xe mô tô: Đi thẳng vi phạm đèn đỏ.', 11, 5, 0, 0),
(262, 'Vạch kẻ đường nào dưới đây là vạch phân chia hai chiều xe chạy (vạch tim đường), xe không được lấn làn, không được đè lên vạch?', 'https://onthigplx.vn/images/onthigplx_vn__q479.webp', 'Vạch 1.,Vạch 2.,Vạch 3.,Cả 3 vạch.', 1, 0, '', 11, 4, 0, 0),
(263, 'Theo tín hiệu đèn, xe nào được phép đi?', 'https://onthigplx.vn/images/onthigplx_vn__q499.webp', 'Xe con và xe khách.,Mô tô.', 0, 0, 'Xe con và xe khách đang ở làn đường có tín hiệu đèn xanh nên được phép đi.', 11, 5, 0, 0),
(264, 'Trong hình dưới, những xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q548.webp', 'Xe con (B), mô tô (C).,Xe con (A), mô tô (C).,Xe con (E), mô tô (D).,Tất cả các loại xe trên.', 2, 0, 'Nhìn vào bảng chỉ dẫn loại phương tiện theo làn đường: Xe con (E) đi trên làn dành riêng cho mô tô nên vi phạm: Xe mô tô (D) chạy trên làn dành riêng xe ô tô nên cũng vi phạm.', 11, 5, 0, 0),
(265, 'Theo tín hiệu đèn của xe cơ giới, xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q559.webp', 'Xe mô tô.,Xe ô tô con,Không xe nào vi phạm.,Cả hai xe.', 3, 0, 'Biển số R.301a chỉ cho phép các phương tiện đi thẳng trong khi cả hai xe đều có tín hiệu xi nhan rẽ sang hướng khác nên cả 2 xe đều vi phạm quy tắc giao thông.', 11, 5, 0, 0),
(266, 'Biển nào báo hiệu “Chú ý chướng ngại vật”?', 'https://onthigplx.vn/images/onthigplx_vn__q402.webp', 'Biển 1.,Biển 2 và 3.,Cả ba biển.', 1, 0, '', 11, 4, 0, 0),
(267, 'Kỹ thuật cơ bản để giữ thăng bằng khi điều khiển xe mô tô đi trên đường gồ ghề như thế nào trong các trường hợp dưới đây?', '', 'Đứng thẳng trên giá gác chân lái sau đó hơi gập đầu gối và khuỷu tay, đi chậm để không nẩy quá mạnh.,Ngồi lùi lại phía sau, tăng ga vượt nhanh qua đoạn đường xóc.,Ngồi lệch sang bên trái hoặc bên phải để lấy thăng bằng qua đoạn đường gồ ghề.', 0, 0, '', 11, 3, 0, 0),
(268, 'Khái niệm “phương tiện giao thông cơ giới đường bộ” được hiểu thế nào là đúng?', '', 'Gồm xe ô tô; máy kéo; xe mô tô hai bánh; xe mô tô ba bánh; xe gắn máy; xe cơ giới dùng cho người khuyết tật và xe máy chuyên dùng.,Gồm xe ô tô; máy kéo; rơ moóc hoặc sơ mi rơ moóc được kéo bởi xe ô tô, máy kéo; xe mô tô hai bánh; xe mô tô ba bánh, xe gắn máy (kể cả xe máy điện) và các loại xe tương tự.', 1, 0, 'Không có xe máy chuyên dùng.', 11, 1, 0, 0),
(269, 'Biển nào xe mô tô hai bánh không được đi vào?', 'https://onthigplx.vn/images/onthigplx_vn__q354.webp', 'Biển 1.,Biển 2,Biển 3', 1, 0, 'Biển chính là P.101 “Đường cấm”, có biển phụ thì áp dụng kèm theo biển phụ. Nên Biển 2 áp dụng với xe mô tô là câu trả lời đúng.', 11, 4, 0, 0),
(270, 'Biển nào báo hiệu “Đường bị thu hẹp”?', 'https://onthigplx.vn/images/onthigplx_vn__q388.webp', 'Biển 1 và 2.,Biển 1 và 3.,Biển 2 và 3.,Cả ba biển.', 0, 0, 'Biển 1: W.203a “Đường bị hẹp cả hai bên”; Biển 2: W203b “Đường bị hẹp về phía trái”; Biển 3: W.201b “Chỗ ngoặt nguy hiểm vòng bên phải”. Nên đáp án đúng là Biển 1 và Biển 2.', 11, 4, 0, 0),
(271, 'Theo hướng mũi tên, những hướng nào xe mô tô được phép đi?', 'https://onthigplx.vn/images/onthigplx_vn__q539.webp', 'Cả ba hướng.,Hướng 1 và 2.,Hướng 1 và 3,Hướng 2 và 3.', 2, 0, 'Hướng 2 có Biển số P.104 “Cấm mô tô”. Hướng 3 Biển số P.103a “Cấm ô tô” nhưng không cấm mô tô. Nên đáp án đúng là hướng 1 và hướng 3.', 11, 5, 0, 0),
(272, 'Để báo hiệu cho xe phía trước biết xe mô tô của bạn muốn vượt, bạn phải có tín hiệu như thế nào dưới đây?', '', 'Ra hiệu bằng tay rồi cho xe vượt qua.,Tăng ga mạnh để gây sự chú ý rồi cho xe vượt qua.,Bạn phải có báo hiệu bằng đèn hoặc còi.', 2, 0, '', 11, 1, 0, 0),
(273, 'Các xe đi theo hướng mũi tên, xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q560.webp', 'Xe con.,Xe tải.,Xe con, xe tải.', 1, 0, 'Xe con trong cả hai phía đều đang ở đúng làn đường và đi theo hướng mà đèn xanh đang bật nên đúng quy tắc. Xe tải trong cả hai phía đều ở sai làn đường so với hướng rẽ nên vi phạm quy tắc giao thông.', 11, 5, 0, 0),
(274, 'Trong các biển dưới đây biển nào là biển “Hết tốc độ tối đa cho phép”?', 'https://onthigplx.vn/images/onthigplx_vn__q439.webp', 'Biển 1.,Biển 2.,Biển 3,Cả ba biển.', 0, 0, 'Biển 1: DP134 “Hết hạn chế tốc độ tối đa”; Biển 2: DP135 “Hết mọi lệnh cấm”; Biển 3: R307 “Hết hạn chế tốc độ tối thiểu”. Nên Biển 1 là biển “Hết hạn chế tốc độ tối đa”. Chú ý câu này hỏi ý nghĩa của biển.', 11, 4, 0, 0);
INSERT INTO `question` (`id`, `text`, `img`, `answers`, `answer`, `critical`, `hint`, `question_exam`, `question_chapter`, `totalqserr`, `totalqscorrect`) VALUES
(275, '“Người tham gia giao thông đường bộ” gồm những đối tượng nào?', '', 'Người điều khiển, người sử dụng phương tiện tham gia giao thông đường bộ.,Người điều khiển, dẫn dắt súc vật; người đi bộ trên đường bộ.,Cả ý 1 và ý 2.', 2, 0, 'Có đi trên đường là tham gia giao thông.', 11, 1, 0, 0),
(276, 'Trên đường bộ (trừ đường cao tốc) trong khu vực đông dân cư, đường hai chiều không có dải phân cách giữa, xe mô tô hai bánh, ô tô chở người đến 30 chỗ tham gia giao thông với tốc độ tối đa cho phép là bao nhiêu?', '', '60 km/h.,50 km/h.,40 km/h.', 1, 0, '', 12, 1, 0, 0),
(277, 'Gặp biển nào xe lam, xe xích lô máy được phép đi vào?', 'https://onthigplx.vn/images/onthigplx_vn__q337.webp', 'Biển 1.,Biển 2.,Biển 3.', 2, 0, '', 12, 4, 0, 0),
(278, 'Vạch dưới đây có ý nghĩa gì?', 'https://onthigplx.vn/images/onthigplx_vn__q486.webp', 'Vị trí dừng xe của các phương tiện vận tải hành khách công cộng.,Báo cho người điều khiển được dừng phương tiện trong phạm vi phần mặt đường có bố trí vạch để tránh ùn tắc giao thông.,Dùng để xác định vị trí giữa các phương tiện trên đường.', 0, 0, 'Vạch 9.2: Vạch quy định vị trí dừng đỗ của phương tiện giao thông công cộng trên đường.', 12, 4, 0, 0),
(279, 'Xe của bạn đang di chuyển gần đến khu vực giao cắt với đường sắt, khi rào chắn đang dịch chuyển, bạn điều khiển xe như thế nào là đúng quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q596.webp', 'Quan sát nếu thấy không có tàu thì tăng tốc cho xe vượt qua đường sắt.,Dừng lại trước rào chắn một khoảng cách an toàn.,Ra tín hiệu, yêu cầu người gác chắn tàu kéo chậm Barie để xe bạn qua.', 1, 0, 'Bắt buộc phải dừng xe.', 12, 5, 0, 0),
(280, 'Biển nào báo hiệu sắp đến chỗ giao nhau giữa đường bộ và đường sắt?', 'https://onthigplx.vn/images/onthigplx_vn__q379.webp', 'Biển 1.,Biển 2.,Biển 3.,Biển 1 và 3.', 0, 0, 'Biển 1: Biển 211a Giao nhau với đường sắt không có rào chắn. Biển 2: Biển 208 Giao nhau với đường ưu tiên. Biển 3: Biển 211b Giao nhau với tàu điện.', 12, 4, 0, 0),
(281, 'Xe nào được quyền đi trước trong trường hợp này?', 'https://onthigplx.vn/images/onthigplx_vn__q525.webp', 'Mô tô.,Xe con.', 0, 0, 'Thứ tự ưu tiên: Xe ưu tiên - Đường ưu tiên - Bên phải trống - Rẽ phải - Đi thẳng - Rẽ trái. Xe mô tô rẽ trái từ đường ưu tiên vào đường ưu tiên (theo biển báo và biển phụ) nên được quyền đi trước.', 12, 5, 0, 0),
(282, 'Việc sản xuất, mua bán, sử dụng biển số xe cơ giới, xe máy chuyên dùng được quy định như thế nào trong Luật Giao thông đường bộ?', '', 'Được phép sản xuất, sử dụng khi bị mất biển số.,Được phép mua bán, sử dụng khi bị mất biển số.,Nghiêm cấm sản xuất, mua bán, sử dụng trái phép.', 2, 1, '', 12, 1, 0, 0),
(283, 'Biển nào dưới đây các phương tiện không được phép đi vào?', 'https://onthigplx.vn/images/onthigplx_vn__q330.webp', 'Biển 1.,Biển 2.,Biển 1 và 2.', 2, 0, 'Biển 1: P.101 “Đường cấm”; Biển 2: P.102 “Cấm đi ngược chiều” cấm đi vào theo chiều đặt biển; Biển 3: P.301a “Cấm đỗ xe”. Nên biển 1 và biển 2 là cấm các phương tiện không được phép đi vào.', 12, 4, 0, 0),
(284, 'Người đủ bao nhiêu tuổi trở lên thì được điều khiển xe mô tô hai bánh, xe mô tô ba bánh có dung tích xi lanh từ 50 cm3 trở lên và các loại xe có kết cấu tương tự; xe ô tô tải, máy kéo có trọng tải dưới 3.500 kg; xe ô tô chở người đến 9 chỗ ngồi?', '', '16 tuổi.,18 tuổi.,17 tuổi.', 1, 0, '', 12, 1, 0, 0),
(285, 'Người điều khiển xe mô tô hai bánh, xe gắn máy không được thực hiện những hành vi nào dưới đây?', '', 'Đi vào phần đường dành cho người đi bộ và phương tiện khác; sử dụng ô, điện thoại di động, thiết bị âm thanh (trừ thiết bị trợ thính), đi xe dàn hàng ngang.,Chở 02 người; trong đó, có người bệnh đi cấp cứu hoặc trẻ em dưới 14 tuổi hoặc áp giải người có hành vi vi phạm pháp luật.,Điều khiển phương tiện tham gia giao thông trên đường tỉnh lộ hoặc quốc lộ.', 0, 0, '', 12, 1, 0, 0),
(286, 'Tại nơi có biển báo hiệu cố định lại có báo hiệu tạm thời thì người tham gia giao thông phải chấp hành hiệu lệnh của báo hiệu nào?', '', 'Biển báo hiệu cố định.,Báo hiệu tạm thời.', 1, 0, '', 12, 1, 0, 0),
(287, 'Xe nào đỗ vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q509.webp', 'Chỉ mô tô.,Chỉ xe tải.,Cả ba xe.,Chỉ mô tô và xe tải.', 2, 0, 'Xe tải đậu trái đường; Xe con và mô tô đậu xe đè vạch nên cả 3 xe vi phạm.', 12, 5, 0, 0),
(288, 'Tại nơi đường giao nhau không có báo hiệu đi theo vòng xuyến, người điều khiển phương tiện phải nhường đường như thế nào là đúng quy tắc giao thông?', '', 'Phải nhường đường cho xe đi đến từ bên phải.,Xe báo hiệu xin đường trước xe đó được đi trước.,Phải nhường đường cho xe đi đến từ bên trái.', 0, 0, '', 12, 1, 0, 0),
(289, 'Khi tránh nhau trên đường hẹp, người lái xe cần phải chú ý những điểm nào để đảm bảo an toàn giao thông?', '', 'Không nên đi cố vào đường hẹp; xe đi ở phía sườn núi nên dừng lại trước để nhường đường; khi dừng xe nhường đường phải đỗ ngay ngắn.,Trong khi tránh nhau không nên đổi số; khi tránh nhau ban đêm, phải tắt đèn pha bật đèn cốt.,Khi tránh nhau ban đêm, phải thường xuyên bật đèn pha tắt đèn cốt.,Cả ý 1 và ý 2.', 3, 0, '', 12, 3, 0, 0),
(290, 'Khi điều khiển xe cơ giới người lái xe phải bật đèn tín hiệu rẽ nào trong các trường hợp nào sau đây?', '', 'Khi cho xe chạy thẳng.,Trước khi thay đổi làn đường.,Sau khi thay đổi làn đường.', 1, 0, '', 12, 1, 0, 0),
(291, '“Người điều khiển phương tiện tham gia giao thông đường bộ” gồm những đối tượng nào dưới đây?', '', 'Người điều khiển xe cơ giới, người điều khiển xe thô sơ.,Người điều khiển xe máy chuyên dùng tham gia giao thông đường bộ.,Cả ý 1 và ý 2', 2, 0, '', 12, 1, 0, 0),
(292, 'Xe nào được quyền đi trước trong trường hợp này?', 'https://onthigplx.vn/images/onthigplx_vn__q517.webp', 'Xe con.,Xe mô tô.', 1, 0, 'Đèn xanh nên áp dụng quy tắc Đường cùng cấp: Bên phải trống - Rẽ phải - Đi thẳng - Rẽ trái. Nên đáp án đúng là Xe xích lô rẽ phải đi trước.', 12, 5, 0, 0),
(293, 'Xe nào được quyền đi trước trong trường hợp này?', 'https://onthigplx.vn/images/onthigplx_vn__q495.webp', 'Mô tô.,Xe cứu thương.', 1, 0, 'Xe ưu tiên đi trước.', 12, 5, 0, 0),
(294, 'Trong hình dưới, những xe nào vi phạm quy tắc giao thông?', 'https://onthigplx.vn/images/onthigplx_vn__q543.webp', 'Xe con (E), mô tô (C).,Xe tải (A), mô tô (D).,Xe khách (B), mô tô (C).,Xe khách (B), mô tô (D).', 0, 0, 'Xe mô tô C chạy vào làn dành riêng xe ô tô: Vi phạm; Xe con E chạy vào làn dành riêng xe máy: Vi phạm.', 12, 5, 0, 0),
(295, 'Biển nào báo hiệu sắp đến chỗ giao nhau nguy hiểm?', 'https://onthigplx.vn/images/onthigplx_vn__q374.webp', 'Biển 1.,Biển 1 và 2.,Biển 2 và 3.,Cả ba biển.', 3, 0, 'Biển 1: W.210 “Giao nhau với đường sắt có rào chắn”; Biển 2: W.208 “Giao nhau với đường ưu tiên”; Biển 3: W.209 “Giao nhau có tín hiệu đèn”.', 12, 4, 0, 0),
(296, 'Biển nào báo hiệu “Đường đôi”?', 'https://onthigplx.vn/images/onthigplx_vn__q397.webp', 'Biển 1.,Biển 2.,Biển 3.', 2, 0, '', 12, 4, 0, 0),
(297, 'Khi xảy ra tai nạn giao thông, có người bị thương nghiêm trọng, người lái xe và người có mặt tại hiện trường vụ tai nạn phải thực hiện các công việc gì?', '', 'Thực hiện sơ cứu ban đầu trong trường hợp khẩn cấp; thông báo vụ tai nạn đến cơ quan thi hành pháp luật.,Nhanh chóng lái xe gây tai nạn hoặc đi nhờ xe khác ra khỏi hiện trường vụ tai nạn.,Cả ý 1 và ý 2.', 0, 0, '', 12, 2, 0, 0),
(298, 'Để báo hiệu cho xe phía trước biết xe mô tô của bạn muốn vượt, bạn phải có tín hiệu như thế nào dưới đây?', '', 'Ra hiệu bằng tay rồi cho xe vượt qua.,Tăng ga mạnh để gây sự chú ý rồi cho xe vượt qua.,Bạn phải có báo hiệu bằng đèn hoặc còi.', 2, 0, '', 12, 1, 0, 0),
(299, 'Trong tình huống dưới đây, xe đầu kéo kéo rơ moóc (xe container) đang rẽ phải, xe con màu xanh đi như thế nào để đảm bảo an toàn?', 'https://onthigplx.vn/images/onthigplx_vn__q600.webp', 'Vượt về phía bên phải để đi tiếp.,Giảm tốc độ chờ xe đầu kéo rẽ phải, rồi tiếp tục đi.,Vượt về phía bên trái để đi tiếp.', 1, 0, 'Giảm tốc độ chờ xe đầu kéo rẽ phải rồi mới tiếp tục đi.', 12, 5, 0, 0),
(300, 'Biển nào báo hiệu “Giao nhau với đường không ưu tiên”?', 'https://onthigplx.vn/images/onthigplx_vn__q386.webp', 'Biển 1.,Biển 2.,Biển 3.,Biển 2 và 3.', 0, 0, 'Biển 1: W.207a “Giao nhau với đường không ưu tiên”; Biển 2: W.208 “Giao nhau với đường ưu tiên”; Biển 3: I.401 “Bắt đầu đường ưu tiên”.', 12, 4, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questionserror`
--

CREATE TABLE `questionserror` (
  `id` int(100) NOT NULL,
  `questionid` int(100) NOT NULL,
  `totaltimes` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `questionserror`
--

INSERT INTO `questionserror` (`id`, `questionid`, `totaltimes`) VALUES
(1, 24, 30),
(2, 21, 30),
(3, 20, 29),
(4, 17, 31),
(5, 15, 29),
(6, 14, 32),
(7, 13, 31),
(8, 12, 31),
(9, 11, 31),
(10, 9, 31),
(11, 5, 63),
(12, 3, 65),
(13, 1, 65),
(14, 50, 2),
(15, 49, 1),
(16, 48, 1),
(17, 47, 1),
(18, 45, 2),
(19, 44, 1),
(20, 41, 1),
(21, 40, 1),
(22, 38, 2),
(23, 37, 1),
(24, 36, 1),
(25, 35, 1),
(26, 34, 1),
(27, 33, 1),
(28, 32, 1),
(29, 30, 34),
(30, 29, 34),
(31, 28, 43),
(32, 26, 42),
(33, 22, 3),
(34, 18, 3),
(35, 25, 3),
(36, 155, 4),
(37, 109, 2),
(38, 204, 5),
(39, 215, 1),
(40, 266, 2),
(41, 276, 4),
(42, 198, 2),
(43, 244, 3),
(44, 191, 3),
(45, 186, 4),
(46, 216, 1),
(47, 237, 4),
(48, 165, 2),
(49, 207, 1),
(50, 293, 3),
(51, 299, 2),
(52, 298, 1),
(53, 296, 1),
(54, 295, 1),
(55, 292, 1),
(56, 291, 2),
(57, 290, 2),
(58, 289, 3),
(59, 287, 1),
(60, 286, 1),
(61, 284, 1),
(62, 283, 1),
(63, 282, 2),
(64, 279, 2),
(65, 277, 2),
(66, 124, 2),
(67, 123, 1),
(68, 122, 1),
(69, 121, 2),
(70, 118, 1),
(71, 117, 1),
(72, 116, 1),
(73, 115, 2),
(74, 114, 1),
(75, 113, 2),
(76, 112, 1),
(77, 110, 1),
(78, 108, 1),
(79, 107, 2),
(80, 105, 3),
(81, 104, 3),
(82, 102, 4),
(83, 101, 4),
(84, 99, 1),
(85, 89, 1),
(86, 245, 3),
(87, 192, 3),
(88, 169, 1),
(89, 211, 1),
(90, 203, 3),
(91, 184, 2),
(92, 197, 2),
(93, 60, 1),
(94, 213, 1),
(95, 84, 1),
(96, 173, 1),
(97, 250, 5),
(98, 219, 1),
(99, 251, 5),
(100, 220, 1),
(101, 87, 1),
(102, 177, 4),
(103, 262, 3),
(104, 249, 2),
(105, 247, 2),
(106, 243, 3),
(107, 242, 3),
(108, 241, 2),
(109, 239, 2),
(110, 236, 2),
(111, 235, 2),
(112, 233, 3),
(113, 232, 2),
(114, 231, 3),
(115, 230, 5),
(116, 229, 6),
(117, 228, 5),
(118, 227, 5),
(119, 226, 6),
(120, 275, 2),
(121, 273, 1),
(122, 272, 1),
(123, 271, 1),
(124, 269, 1),
(125, 268, 1),
(126, 265, 2),
(127, 264, 1),
(128, 261, 2),
(129, 260, 1),
(130, 259, 1),
(131, 257, 1),
(132, 256, 1),
(133, 255, 5),
(134, 252, 5),
(135, 27, 2),
(136, 77, 6),
(137, 76, 6),
(138, 153, 4),
(139, 152, 4),
(140, 205, 3),
(141, 201, 2),
(142, 200, 1),
(143, 199, 1),
(144, 196, 1),
(145, 195, 2),
(146, 194, 1),
(147, 193, 1),
(148, 189, 1),
(149, 185, 2),
(150, 182, 1),
(151, 181, 1),
(152, 180, 3),
(153, 179, 3),
(154, 137, 4),
(155, 222, 1),
(156, 208, 1),
(157, 96, 1),
(158, 86, 1),
(159, 23, 2),
(160, 19, 2),
(161, 16, 2),
(162, 4, 1),
(163, 2, 1),
(164, 129, 9),
(165, 127, 9),
(166, 126, 9),
(167, 54, 8),
(168, 53, 7),
(169, 51, 7),
(170, 80, 5),
(171, 79, 5),
(172, 150, 2),
(173, 149, 2),
(174, 146, 3),
(175, 145, 2),
(176, 141, 2),
(177, 140, 2),
(178, 138, 3),
(179, 136, 3),
(180, 135, 2),
(181, 133, 2),
(182, 132, 2),
(183, 131, 2),
(184, 52, 1),
(185, 154, 3),
(186, 210, 1),
(187, 91, 1),
(188, 93, 1),
(189, 161, 1),
(190, 167, 1),
(191, 66, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `titlenoticeboard`
--

CREATE TABLE `titlenoticeboard` (
  `id` int(100) NOT NULL,
  `count` int(100) NOT NULL,
  `title` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `titlenoticeboard`
--

INSERT INTO `titlenoticeboard` (`id`, `count`, `title`) VALUES
(1, 61, 'biển báo cấm'),
(2, 83, 'biển báo nguy hiểm'),
(3, 51, 'biển báo hiệu lệnh'),
(4, 25, 'biển báo chỉ dẫn'),
(5, 11, 'biển báo phụ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `picture` varchar(1000) NOT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `userID` varchar(1000) DEFAULT NULL,
  `account` varchar(1000) DEFAULT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `questionerr` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `picture`, `email`, `userID`, `account`, `password`, `questionerr`) VALUES
(1, 'Ngô Duy Vũ 64.', 'https://lh3.googleusercontent.com/a/ACg8ocKNAkWYwkA-5exT-P2djd5I00zEK9jqbdO7jgCgWkkuhnnmUg=s96-c', 'vungovu00@gmail.com', '', NULL, NULL, '[\"5\",\"3\",\"1\",\"76\"]'),
(2, 'Tẩn Láo San', 'https://scontent.fhan14-3.fna.fbcdn.net/v/t1.30497-1/84628273_176159830277856_972693363922829312_n.jpg?stp=c15.0.50.50a_cp0_dst-jpg_p50x50&_nc_cat=1&ccb=1-7&_nc_sid=5f2048&_nc_ohc=_z4EAHRnXnQAb6qimp9&_nc_ht=scontent.fhan14-3.fna&edm=AP4hL3IEAAAA&oh=00_AfDvvZoQb-eqzt9Sd1OR7UnO6vtArRmIupHwWHhKC1OwqQ&oe=66416A19', '', '392109856965222', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detailnoticeboard`
--
ALTER TABLE `detailnoticeboard`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `questionserror`
--
ALTER TABLE `questionserror`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `titlenoticeboard`
--
ALTER TABLE `titlenoticeboard`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account` (`account`) USING HASH,
  ADD UNIQUE KEY `email` (`email`) USING HASH,
  ADD UNIQUE KEY `email_2` (`email`) USING HASH,
  ADD UNIQUE KEY `account_2` (`account`) USING HASH;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `detailnoticeboard`
--
ALTER TABLE `detailnoticeboard`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT cho bảng `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT cho bảng `questionserror`
--
ALTER TABLE `questionserror`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT cho bảng `titlenoticeboard`
--
ALTER TABLE `titlenoticeboard`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
