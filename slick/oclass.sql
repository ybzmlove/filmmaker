-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- 생성 시간: 22-06-20 09:49
-- 서버 버전: 10.4.25-MariaDB
-- PHP 버전: 8.0.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `oclass`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `cart`
--

CREATE TABLE `cart` (
  `num` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `pd_num` char(20) NOT NULL,
  `pd_title` char(200) NOT NULL,
  `pd_sub` char(200) NOT NULL,
  `pd_img` mediumtext NOT NULL,
  `pd_ea` int(11) NOT NULL,
  `pd_price` int(11) NOT NULL,
  `pd_total_price` int(11) NOT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `pay` char(1) NOT NULL,
  `review` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `cart`
--

INSERT INTO `cart` (`num`, `id`, `pd_num`, `pd_title`, `pd_sub`, `pd_img`, `pd_ea`, `pd_price`, `pd_total_price`, `regist_day`, `pay`, `review`) VALUES
(1, 'abc', '9', '스마트 에디터 테스트 - 1', '스마트 에디터 테스트 - 1', './products/62a980151a6401.71273753.png', 2, 60000, 120000, '2022-06-16 (11:52)', '0', '0'),
(2, 'abc', '8', '국내 관광 여행 클래스', '국내 유적지 탐사 대원을 모집합니다.', './products/62a958ec65d6a9.07108330.png', 2, 40000, 80000, '2022-06-16 (12:03)', '0', '0'),
(5, 'bbb', '2', '뜨개질 클래스', '연인을 위한 장갑 목도리 세트 만들기', './products/2022_06_14_12_50_26.png', 5, 32000, 160000, '2022-06-16 (17:05)', '1', '0'),
(7, 'bbb', '6', '마카롱 클래스2', '황금강아지 마카롱 만드는 법!', './products/2022_06_14_15_29_43.jpg', 4, 30000, 120000, '2022-06-17 (09:34)', '1', '0'),
(8, 'bbb', '3', '드로잉 클래스', '[2주과정]연필하나만으로 모든 분위기를 담아내요', './products/2022_06_14_12_51_12.png', 5, 14900, 74500, '2022-06-17 (15:50)', '1', '0'),
(9, 'bbb', '7', '피아노 클래스', '도레미파솔라시도~~', './products/62a955a3e680f8.42741775.png', 2, 50000, 100000, '2022-06-17 (15:51)', '1', '0'),
(10, 'bbb', '7', '피아노 클래스', '도레미파솔라시도~~', './products/62a955a3e680f8.42741775.png', 1, 50000, 50000, '2022-06-17 (16:00)', '1', '0'),
(11, 'bbb', '5', '영어 클래스', '영화 캐롤의 간결하고 임팩트 있는 대사로 배우는영어회화', './products/2022_06_14_12_52_34.png', 3, 41000, 123000, '2022-06-17 (16:01)', '1', '0'),
(12, 'bbb', '4', '사진 클래스', '일상을 동화처럼 표현하는 사진. 오직 아이폰으로만', './products/2022_06_14_12_51_54.png', 2, 31900, 63800, '2022-06-17 (16:05)', '1', '0'),
(13, 'bbb', '5', '영어 클래스', '영화 캐롤의 간결하고 임팩트 있는 대사로 배우는영어회화', './products/2022_06_14_12_52_34.png', 1, 41000, 41000, '2022-06-17 (16:07)', '1', '0'),
(14, 'bbb', '7', '피아노 클래스', '도레미파솔라시도~~', './products/62a955a3e680f8.42741775.png', 1, 50000, 50000, '2022-06-17 (16:10)', '1', '0'),
(20, 'bbb', '8', '국내 관광 여행 클래스', '국내 유적지 탐사 대원을 모집합니다.', './products/62a958ec65d6a9.07108330.png', 1, 40000, 40000, '2022-06-17 (18:14)', '0', '0');

-- --------------------------------------------------------

--
-- 테이블 구조 `fav`
--

CREATE TABLE `fav` (
  `num` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `pd_num` char(20) NOT NULL,
  `fav` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `fav`
--

INSERT INTO `fav` (`num`, `id`, `pd_num`, `fav`) VALUES
(3, 'bbb', '4', '1'),
(4, 'abc', '4', '1'),
(5, 'abc', '2', '1'),
(6, 'bbb', '5', '1'),
(7, 'bbb', '1', '1'),
(9, 'abc', '3', '1'),
(10, 'bbb', '6', '1');

-- --------------------------------------------------------

--
-- 테이블 구조 `members`
--

CREATE TABLE `members` (
  `num` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `pass` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `email` char(80) NOT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `members`
--

INSERT INTO `members` (`num`, `id`, `pass`, `name`, `email`, `regist_day`, `level`, `point`) VALUES
(1, 'abc', '1111', '알파벳', 'abc@gmail.com', '2022-06-14 (01:23)', 9, 0),
(2, 'aaa', '1111', '알파고', 'aaa@naver.com', '2022-06-14 (01:24)', 9, 0),
(3, 'bbb', '1111', '비비고', 'bbb@daum.net', '2022-06-14 (12:54)', 9, 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `message`
--

CREATE TABLE `message` (
  `num` int(11) NOT NULL,
  `send_id` char(20) NOT NULL,
  `rv_id` char(20) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` mediumtext NOT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `readed` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `message`
--

INSERT INTO `message` (`num`, `send_id`, `rv_id`, `subject`, `content`, `regist_day`, `readed`) VALUES
(1, 'abc', 'aaa', '메시지 #1 - from abc', '메시지 내용 #1 - from abc', '2022-06-14 (01:26)', '0'),
(2, 'bbb', 'aaa', '예약 문의 : [영어 클래스]에 관하여 문의합니다.', '수업 진행 방향 요청', '2022-06-15 (10:14)', '0'),
(3, 'bbb', 'aaa', '예약 문의 : [영어 클래스]에 관하여 문의합니다.', '영어 회화 알고 싶어요~~~~', '2022-06-15 (10:20)', '1'),
(4, 'aaa', 'bbb', 'RE : 예약 문의 : [영어 클래스]에 관하여 문의합니다.', '내용 작성\r\n\r\n ----- Original Message ----- \r\n영어 회화 알고 싶어요~~~~', '2022-06-15 (10:22)', '1');

-- --------------------------------------------------------

--
-- 테이블 구조 `pay`
--

CREATE TABLE `pay` (
  `num` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `pay_title` char(200) NOT NULL,
  `pay_price_total` int(11) DEFAULT NULL,
  `regist_day` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `pay`
--

INSERT INTO `pay` (`num`, `id`, `pay_title`, `pay_price_total`, `regist_day`) VALUES
(3, 'bbb', '마카롱 클래스2 포함 2개', 280000, '2022-06-17 (13:05)'),
(4, 'bbb', '마카롱 클래스2 포함 2개', 280000, '2022-06-17 (13:19)'),
(5, 'bbb', '마카롱 클래스2 포함 2개', 280000, '2022-06-17 (13:20)'),
(6, 'bbb', '마카롱 클래스2 포함 2개', 460000, '2022-06-17 (15:28)'),
(7, 'bbb', '피아노 클래스 포함 4개', 454500, '2022-06-17 (15:51)'),
(8, 'bbb', '사진 클래스 포함 3개', 122900, '2022-06-17 (16:06)'),
(9, 'bbb', '피아노 클래스 포함 2개', 141000, '2022-06-17 (16:14)');

-- --------------------------------------------------------

--
-- 테이블 구조 `products`
--

CREATE TABLE `products` (
  `num` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `title` char(100) NOT NULL,
  `sub` char(150) NOT NULL,
  `content` mediumtext NOT NULL,
  `detail` mediumtext NOT NULL,
  `price` int(11) NOT NULL,
  `fav` int(11) NOT NULL,
  `hit` int(11) NOT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `file_name` mediumtext DEFAULT NULL,
  `file_type` mediumtext DEFAULT NULL,
  `file_copied` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `products`
--

INSERT INTO `products` (`num`, `id`, `name`, `title`, `sub`, `content`, `detail`, `price`, `fav`, `hit`, `regist_day`, `file_name`, `file_type`, `file_copied`) VALUES
(1, 'abc', '알파벳', '마카롱클래스', '오늘은 커피와 잘 어울리는 달다구리 마카롱 만들기', '작은 차이가 완성도를 좌우하는 만큼 완벽하게 원형의 꼬끄를 만드는 방법, 초콜릿을 이해하여 나만의 가나슈 크림 만드는 법, 잘 구워진 마카롱을 마무리하는 법까지 그동안 미완성식탁을 운영하며 하나씩 부딪혀 가며 익힌 저만의 TIP을 함께 공유하겠습니다.', 'aaaa', 28000, 1, 11, '20220614110122', 'class_01.png', 'image/png', './products/2022_06_14_11_01_22.png'),
(2, 'aaa', '알파고', '뜨개질 클래스', '연인을 위한 장갑 목도리 세트 만들기', '[2주]초급자분들을 위한 대바늘 양말뜨기 클래스입니다. LOOOP의 양말뜨기 클래스에서는 뜨개질 기초부터 대바늘로 입체를 만들 때 필요한 다양한 기법들을 배우며 총 5가지 패턴의 목도리와 장갑을 완성할 수 있어요.', '', 32000, 1, 6, '20220614125026', 'class_02.png', 'image/png', './products/2022_06_14_12_50_26.png'),
(3, 'aaa', '알파고', '드로잉 클래스', '[2주과정]연필하나만으로 모든 분위기를 담아내요', '입문자분들을 위한 연필 인물 드로잉 클래스입니다. 연필 인물화 드로잉을 처음 시작하시는 분들을 위해, 연필에 대해서 하나 하나 파고들어볼거에요. 클래스 후에는 연필 하나로도 완성도 높은 인물화를 그릴 수 있습니다.', '', 14900, 1, 10, '20220614125112', 'class_03.png', 'image/png', './products/2022_06_14_12_51_12.png'),
(4, 'aaa', '알파고', '사진 클래스', '일상을 동화처럼 표현하는 사진. 오직 아이폰으로만', '어떤 구도로 사진을 찍어야 하는지, 어느 곳에 포커스를 둬야 하는지, 그리고 어떤 색을 사용해서 보정을 해야 하는지 모르는 분들을 위한 클래스입니다.', '', 31900, 2, 14, '20220614125154', 'class_04.png', 'image/png', './products/2022_06_14_12_51_54.png'),
(5, 'aaa', '알파고', '영어 클래스', '영화 캐롤의 간결하고 임팩트 있는 대사로 배우는영어회화', '티처의 영어 노하우를 담은 체계적인 클래스 그동안 찾아헤맨 성공하는 영어 공부법 티처가 직접 경험한 성공 노하우를 알려 드리겠습니다.', '', 41000, 1, 20, '20220614125234', 'class_05.png', 'image/png', './products/2022_06_14_12_52_34.png'),
(6, 'abc', '알파벳', '마카롱 클래스2', '황금강아지 마카롱 만드는 법!', '무술년을 맞이해 정원이가 귀여운 강아지 마카롱 만들기를 소개할게요! 초콜릿 가나슈를 넣어 더욱 달콤하게 즐길 수 있는데요~ 달콤하다보니 따뜻한 커피 한잔과도 잘 어울리는 강아지 모양 마카롱! 아이싱으로 귀여운 얼굴을 그려가면서 재밌게 만들어볼까요', '', 30000, 1, 10, '20220614152943', 'macaron.jpg', 'image/jpeg', './products/2022_06_14_15_29_43.jpg'),
(7, 'aaa', '알파고', '피아노 클래스', '도레미파솔라시도~~', '도레미파솔라시도~~도도도', '', 50000, 0, 17, '20220615124435', '', '', './products/62a955a3e680f8.42741775.png,./products/62a955a3e6ab30.80554826.jpg'),
(8, 'aaa', '알파고', '국내 관광 여행 클래스', '국내 유적지 탐사 대원을 모집합니다.', '국내 유적지 탐사 대원을 모집합니다. 경복궁, 창경궁, 종각 등의 서울시내 유적지를 탐사할 예정입니다.', '', 40000, 0, 28, '20220615125836', '', '', './products/62a958ec65d6a9.07108330.png,./products/62a958ec65fdc2.92575666.png'),
(9, 'aaa', '알파고', '스마트 에디터 테스트 - 1', '스마트 에디터 테스트 - 1', '스마트 에디터 테스트 - 1', '<p><img src=\"/oclass/productsDetail/class_22.png\" title=\"class_22.png\"></p><p>&nbsp;</p><p style=\"text-align: center; \" align=\"center\"><span style=\"font-size: 36pt;\">텍스트 넣기 테스트1</span></p><p>&nbsp;</p><p style=\"text-align: right; \" align=\"right\"><span style=\"font-size: 18pt;\">텍스트 넣기 테스트1</span></p><p style=\"text-align: center; \" align=\"center\"><span style=\"color: rgb(255, 0, 0); font-size: 14pt;\">텍스트 넣기 테스트1</span></p><p style=\"text-align: center; \" align=\"center\"><span style=\"font-size: 12pt;\">텍스트 넣기 테스트1</span></p><p style=\"text-align: center; \" align=\"center\"><span style=\"font-size: 12pt;\">텍스트 넣기 테스트1</span></p><p style=\"text-align: center; \" align=\"center\"><span style=\"font-size: 12pt; color: rgb(0, 117, 200);\"><b><u>텍스트 넣기 테스트1</u></b></span></p><p style=\"text-align: center; \" align=\"center\"><span style=\"font-size: 12pt;\">텍스트 넣기 테스트1</span></p><p style=\"text-align: center; \" align=\"center\"><span style=\"font-size: 12pt; color: rgb(0, 176, 162);\"><i><b>텍스트 넣기 테스트1</b></i></span></p><p style=\"text-align: center; \" align=\"center\"><span style=\"font-size: 12pt;\">텍스트 넣기 테스트1</span></p><p>&nbsp;</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border:1px solid #cccccc; border-left:0; border-bottom:0;\" class=\"__se_tbl\"><tbody>\r\n<tr><td style=\"border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-image: initial; border-top-style: initial; border-top-color: initial; border-right-style: initial; border-right-color: initial; width: 248px; height: 18px; background-color: rgb(83, 174, 168);\" class=\"\"><p><span style=\"color: rgb(255, 255, 255); background-color: rgb(51, 51, 204);\">&nbsp;구분1</span></p></td>\r\n<td style=\"border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-image: initial; border-top-style: initial; border-top-color: initial; border-right-style: initial; border-right-color: initial; width: 248px; height: 18px; background-color: rgb(83, 174, 168);\" class=\"\"><p><span style=\"color: rgb(255, 255, 255); background-color: rgb(51, 51, 204);\">&nbsp;구분2</span></p></td>\r\n<td style=\"border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-image: initial; border-top-style: initial; border-top-color: initial; border-right-style: initial; border-right-color: initial; width: 248px; height: 18px; background-color: rgb(83, 174, 168);\" class=\"\"><p><span style=\"color: rgb(255, 255, 255); background-color: rgb(51, 51, 204);\">&nbsp;구분3</span></p></td>\r\n<td style=\"border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-image: initial; border-top-style: initial; border-top-color: initial; border-right-style: initial; border-right-color: initial; width: 248px; height: 18px; background-color: rgb(83, 174, 168);\" class=\"\"><p><span style=\"color: rgb(255, 255, 255); background-color: rgb(51, 51, 204);\">&nbsp;구분4</span></p></td>\r\n</tr>\r\n<tr><td style=\"border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-image: initial; border-top-style: initial; border-top-color: initial; border-right-style: initial; border-right-color: initial; background-color: rgb(255, 255, 255); width: 248px; height: 18px;\"><p>&nbsp;데이터1</p></td>\r\n<td style=\"border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-image: initial; border-top-style: initial; border-top-color: initial; border-right-style: initial; border-right-color: initial; background-color: rgb(255, 255, 255); width: 248px; height: 18px;\"><p>데이터4</p></td>\r\n<td style=\"border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-image: initial; border-top-style: initial; border-top-color: initial; border-right-style: initial; border-right-color: initial; background-color: rgb(255, 255, 255); width: 248px; height: 18px;\"><p>&nbsp;데이터7</p></td>\r\n<td style=\"border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-image: initial; border-top-style: initial; border-top-color: initial; border-right-style: initial; border-right-color: initial; background-color: rgb(255, 255, 255); width: 248px; height: 18px;\"><p>&nbsp;데이터10</p></td>\r\n</tr>\r\n<tr><td style=\"border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-image: initial; border-top-style: initial; border-top-color: initial; border-right-style: initial; border-right-color: initial; background-color: rgb(255, 255, 255); width: 248px; height: 18px;\"><p>&nbsp;데이터2</p></td>\r\n<td style=\"border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-image: initial; border-top-style: initial; border-top-color: initial; border-right-style: initial; border-right-color: initial; background-color: rgb(255, 255, 255); width: 248px; height: 18px;\"><p>데이터5&nbsp;</p></td>\r\n<td style=\"border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-image: initial; border-top-style: initial; border-top-color: initial; border-right-style: initial; border-right-color: initial; background-color: rgb(255, 255, 255); width: 248px; height: 18px;\"><p>데이터8</p></td>\r\n<td style=\"border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-image: initial; border-top-style: initial; border-top-color: initial; border-right-style: initial; border-right-color: initial; background-color: rgb(255, 255, 255); width: 248px; height: 18px;\"><p>데이터11</p></td>\r\n</tr>\r\n<tr><td style=\"border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-image: initial; border-top-style: initial; border-top-color: initial; border-right-style: initial; border-right-color: initial; background-color: rgb(255, 255, 255); width: 248px; height: 18px;\"><p>&nbsp;데이터3</p></td>\r\n<td style=\"border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-image: initial; border-top-style: initial; border-top-color: initial; border-right-style: initial; border-right-color: initial; background-color: rgb(255, 255, 255); width: 248px; height: 18px;\"><p>데이터6</p></td>\r\n<td style=\"border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-image: initial; border-top-style: initial; border-top-color: initial; border-right-style: initial; border-right-color: initial; background-color: rgb(255, 255, 255); width: 248px; height: 18px;\"><p>데이터9</p></td>\r\n<td style=\"border-width: 0px 0px 1px 1px; border-bottom-style: solid; border-left-style: solid; border-bottom-color: rgb(204, 204, 204); border-left-color: rgb(204, 204, 204); border-image: initial; border-top-style: initial; border-top-color: initial; border-right-style: initial; border-right-color: initial; background-color: rgb(255, 255, 255); width: 248px; height: 18px;\"><p>데이터12</p></td>\r\n</tr>\r\n</tbody>\r\n</table><p><br style=\"clear:both;\"><img src=\"/oclass/productsDetail/home_banner.jpg\" title=\"home_banner.jpg\">&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>', 60000, 0, 17, '20220615154541', '', '', './products/62a980151a6401.71273753.png,./products/62a980151a8b92.69134163.png,./products/62a980151ab6b4.45929545.png,./products/62a980151b2558.23072050.jpg'),
(10, 'aaa', '알파고', '영어 클래스', '딱 3개월 만에 영어 프리토킹! 딱 이만큼 영어회화, 딱영어', '딱 원하는 만큼 할 수 있게 되는 영어회화 클래스 입니다. 월부터 금까지, 하루에 1간씩 화상영어! 딱 3개월만에 여러분은 프리토킹이 됩니다.', '<img src=\"/oclass/productsDetail/class_20.png\" title=\"class_20.png\"><br style=\"clear:both;\"><br>', 58000, 0, 0, '20220617190144', '', '', './products/62ac5108a1b402.86553699.png');

-- --------------------------------------------------------

--
-- 테이블 구조 `review`
--

CREATE TABLE `review` (
  `num` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `pd_num` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `content` mediumtext NOT NULL,
  `regist_day` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `fav`
--
ALTER TABLE `fav`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`num`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `cart`
--
ALTER TABLE `cart`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 테이블의 AUTO_INCREMENT `fav`
--
ALTER TABLE `fav`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 테이블의 AUTO_INCREMENT `members`
--
ALTER TABLE `members`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 테이블의 AUTO_INCREMENT `message`
--
ALTER TABLE `message`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 테이블의 AUTO_INCREMENT `pay`
--
ALTER TABLE `pay`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 테이블의 AUTO_INCREMENT `products`
--
ALTER TABLE `products`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 테이블의 AUTO_INCREMENT `review`
--
ALTER TABLE `review`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
