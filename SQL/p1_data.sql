CREATE TABLE vanorder (
  `idvanOrder` int(10) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `order_status` tinyint(3) unsigned NOT NULL DEFAULT '0',  
  `order_subset` varchar(10) NOT NULL DEFAULT 'A',
  `requestor_client_id` int(11) DEFAULT NULL,
  `servicer_auth` int(10) unsigned DEFAULT NULL,  
  `total_price` smallint(5) unsigned NOT NULL DEFAULT '0',
  `order_datetime` datetime NOT NULL,  
  `txCreate` datetime NOT NULL
)
;

CREATE TABLE vaninterest (
  `idvanInterest` int(10) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `idvanOrder` int(10) unsigned NOT NULL,
  `order_subset_assigned` varchar(10) NOT NULL DEFAULT 'A',
  `servicer_auth` int(10) unsigned DEFAULT NULL,
  `txCreate` datetime NOT NULL
)
;

INSERT INTO vanorder
(idvanOrder,order_status,order_subset,requestor_client_id,servicer_auth,total_price,order_datetime,txCreate)
VALUES
(1,2,'A',1,199,84,'2017-04-18 15:30:00','2017-04-18 00:46:44'),
(2,2,'A',2,97,163,'2017-04-18 07:10:00','2017-04-18 06:42:40'),
(3,2,'A',3,15,149,'2017-04-18 07:10:00','2017-04-18 06:44:09'),
(4,3,'A',4,NULL,84,'2017-04-18 11:10:00','2017-04-18 07:23:30'),
(5,2,'A',5,211,127,'2017-04-18 09:00:00','2017-04-18 07:27:42'),
(6,2,'A',6,4,117,'2017-04-18 08:30:00','2017-04-18 07:43:05'),
(7,2,'A',7,101,289,'2017-04-18 08:40:00','2017-04-18 08:11:40'),
(8,2,'A',8,276,98,'2017-04-18 09:20:00','2017-04-18 08:29:50'),
(9,2,'A',9,216,381,'2017-04-18 09:30:00','2017-04-18 08:43:59'),
(10,2,'B',10,252,1115,'2017-04-18 09:40:00','2017-04-18 09:07:10'),
(11,3,'A',11,NULL,142,'2017-04-18 09:50:00','2017-04-18 09:23:39'),
(12,2,'A',12,84,306,'2017-04-18 10:20:00','2017-04-18 09:31:06'),
(13,2,'A',13,249,192,'2017-04-18 10:20:00','2017-04-18 09:32:05'),
(14,2,'A',14,8,228,'2017-04-18 10:50:00','2017-04-18 09:38:47'),
(15,2,'A',15,151,62,'2017-04-18 10:10:00','2017-04-18 09:44:56'),
(16,2,'A',16,150,1332,'2017-04-18 10:40:00','2017-04-18 09:45:11'),
(17,2,'A',17,266,1190,'2017-04-18 11:00:00','2017-04-18 09:47:16'),
(18,2,'A',18,46,156,'2017-04-18 10:20:00','2017-04-18 09:59:08'),
(19,2,'A',19,92,127,'2017-04-18 10:50:00','2017-04-18 10:03:17'),
(20,2,'A',20,55,594,'2017-04-18 10:50:00','2017-04-18 10:03:22'),
(21,2,'A',14,42,145,'2017-04-18 10:50:00','2017-04-18 10:03:59'),
(22,2,'B',21,59,64,'2017-04-18 10:10:00','2017-04-18 10:05:06'),
(23,2,'A',22,125,91,'2017-04-18 11:00:00','2017-04-18 10:05:29'),
(24,2,'A',23,224,91,'2017-04-18 11:30:00','2017-04-18 10:06:35'),
(25,2,'A',24,113,160,'2017-04-18 11:00:00','2017-04-18 10:06:45'),
(26,2,'A',12,186,221,'2017-04-18 13:20:00','2017-04-18 10:07:15'),
(27,2,'A',25,180,163,'2017-04-18 10:30:00','2017-04-18 10:07:27'),
(28,2,'A',26,160,167,'2017-04-18 10:30:00','2017-04-18 10:09:01'),
(29,2,'A',26,160,167,'2017-04-18 10:30:00','2017-04-18 10:09:01'),
(30,2,'A',14,57,217,'2017-04-18 11:50:00','2017-04-18 10:13:01'),
(31,2,'A',27,262,149,'2017-04-18 11:00:00','2017-04-18 10:13:32'),
(32,2,'A',28,103,395,'2017-04-18 11:00:00','2017-04-18 10:14:10'),
(33,2,'A',29,149,170,'2017-04-18 10:50:00','2017-04-18 10:22:30'),
(34,2,'A',30,72,192,'2017-04-18 11:10:00','2017-04-18 10:22:59'),
(35,2,'A',31,217,170,'2017-04-18 11:20:00','2017-04-18 10:33:12'),
(36,2,'A',32,100,221,'2017-04-18 11:00:00','2017-04-18 10:33:13'),
(37,2,'A',33,54,145,'2017-04-18 11:30:00','2017-04-18 10:33:41'),
(38,2,'A',34,46,199,'2017-04-18 11:30:00','2017-04-18 10:35:55'),
(39,2,'A',35,235,142,'2017-04-18 11:00:00','2017-04-18 10:37:18'),
(40,2,'A',36,243,195,'2017-04-18 11:00:00','2017-04-18 10:40:21'),
(41,2,'A',37,58,195,'2017-04-18 11:10:00','2017-04-18 10:43:35'),
(42,2,'A',38,196,320,'2017-04-18 11:40:00','2017-04-18 10:45:41'),
(43,2,'A',37,258,264,'2017-04-18 11:20:00','2017-04-18 10:51:15'),
(44,2,'A',39,94,586,'2017-04-18 11:20:00','2017-04-18 10:52:59'),
(45,2,'A',40,123,206,'2017-04-18 11:40:00','2017-04-18 10:54:24'),
(46,2,'A',41,3,120,'2017-04-18 11:10:00','2017-04-18 10:54:53'),
(47,2,'A',42,240,77,'2017-04-18 11:20:00','2017-04-18 10:56:51'),
(48,2,'A',43,99,185,'2017-04-18 11:20:00','2017-04-18 10:58:50'),
(49,2,'A',44,202,483,'2017-04-18 11:20:00','2017-04-18 11:00:36'),
(50,2,'A',28,118,127,'2017-04-18 15:20:00','2017-04-18 11:06:28'),
(51,2,'A',45,33,156,'2017-04-18 12:00:00','2017-04-18 11:10:01'),
(52,2,'A',46,111,149,'2017-04-18 14:00:00','2017-04-18 11:11:14'),
(53,2,'A',47,76,42,'2017-04-18 12:00:00','2017-04-18 11:13:35'),
(54,2,'A',38,34,320,'2017-04-18 12:00:00','2017-04-18 11:14:41'),
(55,2,'A',48,280,238,'2017-04-18 12:30:00','2017-04-18 11:14:42'),
(56,2,'A',48,281,238,'2017-04-18 12:30:00','2017-04-18 11:14:42'),
(57,2,'A',49,177,120,'2017-04-18 12:10:00','2017-04-18 11:18:25'),
(58,5,'A',48,NULL,238,'2017-04-18 12:30:00','2017-04-18 11:19:33'),
(59,2,'A',48,282,238,'2017-04-18 12:30:00','2017-04-18 11:19:33'),
(60,2,'A',48,282,238,'2017-04-18 12:30:00','2017-04-18 11:19:33'),
(61,2,'A',48,277,238,'2017-04-18 12:30:00','2017-04-18 11:20:50'),
(62,2,'A',50,24,149,'2017-04-18 12:10:00','2017-04-18 11:21:44'),
(63,2,'A',51,171,156,'2017-04-18 11:50:00','2017-04-18 11:22:04'),
(64,2,'A',52,247,214,'2017-04-18 12:10:00','2017-04-18 11:23:39'),
(65,2,'B',53,25,84,'2017-04-18 11:50:00','2017-04-18 11:26:42'),
(66,2,'B',54,242,167,'2017-04-18 12:20:00','2017-04-18 11:28:44'),
(67,2,'A',55,224,77,'2017-04-18 12:20:00','2017-04-18 11:29:11'),
(68,2,'A',56,157,306,'2017-04-18 11:50:00','2017-04-18 11:29:25'),
(69,2,'A',57,86,91,'2017-04-18 11:40:00','2017-04-18 11:31:55'),
(70,2,'A',49,5,113,'2017-04-18 12:20:00','2017-04-18 11:35:14'),
(71,2,'A',58,191,113,'2017-04-18 12:00:00','2017-04-18 11:39:08'),
(72,2,'A',59,172,178,'2017-04-18 12:30:00','2017-04-18 11:40:31'),
(73,2,'A',60,16,156,'2017-04-18 12:10:00','2017-04-18 11:41:23'),
(74,2,'A',61,163,238,'2017-04-18 12:10:00','2017-04-18 11:42:09'),
(75,2,'A',62,26,362,'2017-04-18 12:10:00','2017-04-18 11:49:58'),
(76,2,'A',63,104,321,'2017-04-18 12:40:00','2017-04-18 11:52:31'),
(77,2,'A',64,63,142,'2017-04-18 12:40:00','2017-04-18 11:53:54'),
(78,2,'A',65,141,260,'2017-04-18 12:50:00','2017-04-18 11:56:58'),
(79,2,'A',66,49,178,'2017-04-18 12:20:00','2017-04-18 11:59:03'),
(80,2,'A',67,77,178,'2017-04-18 12:50:00','2017-04-18 12:03:46'),
(81,2,'A',68,139,113,'2017-04-18 12:50:00','2017-04-18 12:06:00'),
(82,2,'A',69,212,192,'2017-04-18 13:00:00','2017-04-18 12:11:04'),
(83,2,'A',70,22,106,'2017-04-18 13:00:00','2017-04-18 12:13:26'),
(84,3,'A',71,NULL,472,'2017-04-18 15:30:00','2017-04-18 12:13:57'),
(85,2,'A',72,48,346,'2017-04-18 13:00:00','2017-04-18 12:14:53'),
(86,2,'A',73,226,127,'2017-04-18 12:40:00','2017-04-18 12:16:38'),
(87,2,'A',74,31,438,'2017-04-21 07:00:00','2017-04-18 12:16:46'),
(88,2,'A',75,187,403,'2017-04-18 12:40:00','2017-04-18 12:19:00'),
(89,2,'B',76,39,300,'2017-04-18 13:10:00','2017-04-18 12:22:33'),
(90,2,'A',77,214,62,'2017-04-18 13:10:00','2017-04-18 12:23:00'),
(91,2,'A',78,194,199,'2017-04-18 15:00:00','2017-04-18 12:24:00'),
(92,2,'A',78,194,199,'2017-04-18 15:00:00','2017-04-18 12:24:00'),
(93,2,'A',79,107,192,'2017-04-18 12:50:00','2017-04-18 12:29:55'),
(94,2,'A',80,170,221,'2017-04-18 13:20:00','2017-04-18 12:33:12'),
(95,2,'A',81,269,206,'2017-04-18 13:30:00','2017-04-18 12:35:06'),
(96,2,'A',49,208,214,'2017-04-18 13:00:00','2017-04-18 12:39:27'),
(97,2,'A',82,108,163,'2017-04-18 13:30:00','2017-04-18 12:39:46'),
(98,2,'A',83,70,278,'2017-04-18 13:10:00','2017-04-18 12:40:15'),
(99,2,'A',84,109,77,'2017-04-18 13:10:00','2017-04-18 12:42:53'),
(100,2,'A',85,166,221,'2017-04-18 13:40:00','2017-04-18 12:46:16'),
(101,2,'A',7,105,296,'2017-04-18 13:20:00','2017-04-18 12:53:30'),
(102,2,'A',86,168,120,'2017-04-18 13:20:00','2017-04-18 12:57:09'),
(103,2,'A',87,207,261,'2017-04-18 13:50:00','2017-04-18 12:57:43'),
(104,2,'A',88,92,156,'2017-04-18 13:30:00','2017-04-18 12:58:15'),
(105,2,'A',89,106,127,'2017-04-18 13:20:00','2017-04-18 12:58:23'),
(106,2,'A',90,91,84,'2017-04-18 13:20:00','2017-04-18 12:59:57'),
(107,2,'A',91,43,159,'2017-04-18 13:50:00','2017-04-18 13:00:47'),
(108,2,'A',92,51,134,'2017-04-18 13:30:00','2017-04-18 13:01:47'),
(109,2,'A',93,233,468,'2017-04-18 13:50:00','2017-04-18 13:04:44'),
(110,2,'A',82,146,170,'2017-04-18 14:00:00','2017-04-18 13:08:01'),
(111,2,'A',94,155,20,'2017-04-18 13:30:00','2017-04-18 13:08:12'),
(112,2,'A',95,88,235,'2017-04-18 13:40:00','2017-04-18 13:11:45'),
(113,2,'A',96,183,558,'2017-04-18 13:40:00','2017-04-18 13:12:04'),
(114,2,'A',97,127,127,'2017-04-18 14:00:00','2017-04-18 13:12:13'),
(115,2,'A',98,56,246,'2017-04-18 13:40:00','2017-04-18 13:15:42'),
(116,2,'A',99,246,149,'2017-04-18 13:40:00','2017-04-18 13:19:03'),
(117,2,'B',100,64,306,'2017-04-18 15:20:00','2017-04-18 13:20:00'),
(118,2,'B',101,159,84,'2017-04-18 13:50:00','2017-04-18 13:22:57'),
(119,2,'A',102,165,127,'2017-04-18 13:50:00','2017-04-18 13:25:25'),
(120,2,'A',103,265,62,'2017-04-18 13:50:00','2017-04-18 13:27:17'),
(121,2,'A',104,144,178,'2017-04-18 14:20:00','2017-04-18 13:27:27'),
(122,2,'A',105,192,167,'2017-04-18 14:20:00','2017-04-18 13:31:12'),
(123,2,'A',106,234,375,'2017-04-18 14:30:00','2017-04-18 13:34:31'),
(124,2,'A',107,78,134,'2017-04-18 14:30:00','2017-04-18 13:35:52'),
(125,2,'A',108,44,320,'2017-04-18 14:00:00','2017-04-18 13:41:00'),
(126,2,'A',109,220,192,'2017-04-18 14:30:00','2017-04-18 13:41:15'),
(127,2,'A',110,61,185,'2017-04-18 15:00:00','2017-04-18 13:42:12'),
(128,2,'A',111,184,106,'2017-04-18 14:10:00','2017-04-18 13:42:59'),
(129,2,'A',112,270,106,'2017-04-18 14:40:00','2017-04-18 13:46:26'),
(130,2,'A',113,152,156,'2017-04-18 14:40:00','2017-04-18 13:46:58'),
(131,2,'A',114,74,156,'2017-04-18 14:40:00','2017-04-18 13:47:15'),
(132,2,'A',115,204,127,'2017-04-18 14:10:00','2017-04-18 13:47:37'),
(133,2,'A',116,181,178,'2017-04-18 14:10:00','2017-04-18 13:48:01'),
(134,2,'A',117,162,242,'2017-04-18 14:30:00','2017-04-18 13:51:03'),
(135,2,'A',118,19,502,'2017-04-18 14:20:00','2017-04-18 13:52:29'),
(136,2,'A',119,121,120,'2017-04-18 14:40:00','2017-04-18 13:53:08'),
(137,2,'A',120,126,192,'2017-04-18 14:40:00','2017-04-18 13:53:32'),
(138,2,'A',121,227,91,'2017-04-19 08:00:00','2017-04-18 13:56:21'),
(139,2,'A',122,138,257,'2017-04-18 14:20:00','2017-04-18 13:58:23'),
(140,2,'A',123,38,98,'2017-04-18 14:20:00','2017-04-18 13:59:24'),
(141,2,'A',14,6,120,'2017-04-18 14:10:00','2017-04-18 14:06:41'),
(142,2,'A',124,257,142,'2017-04-18 14:40:00','2017-04-18 14:16:22'),
(143,2,'A',125,65,98,'2017-04-18 15:10:00','2017-04-18 14:18:07'),
(144,2,'A',120,190,192,'2017-04-18 15:10:00','2017-04-18 14:18:48'),
(145,2,'A',126,60,120,'2017-04-18 14:50:00','2017-04-18 14:21:56'),
(146,2,'A',127,253,87,'2017-04-18 14:50:00','2017-04-18 14:22:01'),
(147,2,'A',128,173,221,'2017-04-18 15:30:00','2017-04-18 14:24:31'),
(148,2,'A',129,143,257,'2017-04-18 15:10:00','2017-04-18 14:24:45'),
(149,2,'A',130,157,185,'2017-04-18 14:50:00','2017-04-18 14:26:33'),
(150,2,'A',125,65,127,'2017-04-18 15:20:00','2017-04-18 14:29:19'),
(151,2,'A',131,79,185,'2017-04-18 15:20:00','2017-04-18 14:30:56'),
(152,2,'A',125,65,113,'2017-04-18 15:20:00','2017-04-18 14:31:21'),
(153,2,'A',132,10,142,'2017-04-18 15:30:00','2017-04-18 14:31:31'),
(154,2,'A',125,65,113,'2017-04-18 15:20:00','2017-04-18 14:33:33'),
(155,2,'A',133,17,189,'2017-04-19 07:00:00','2017-04-18 14:36:38'),
(156,2,'A',85,166,278,'2017-04-18 15:00:00','2017-04-18 14:36:48'),
(157,2,'A',134,114,134,'2017-04-18 15:10:00','2017-04-18 14:41:19'),
(158,2,'A',135,245,206,'2017-04-18 15:10:00','2017-04-18 14:41:58'),
(159,3,'A',136,NULL,84,'2017-04-18 15:40:00','2017-04-18 14:46:45'),
(160,2,'A',137,61,77,'2017-04-18 15:40:00','2017-04-18 14:46:48'),
(161,3,'A',138,NULL,145,'2017-04-18 15:10:00','2017-04-18 14:48:02'),
(162,2,'A',125,241,142,'2017-04-18 15:40:00','2017-04-18 14:49:42'),
(163,2,'A',139,244,98,'2017-04-18 15:20:00','2017-04-18 14:52:59'),
(164,2,'A',140,145,615,'2017-04-18 15:30:00','2017-04-18 15:00:47'),
(165,2,'A',141,206,127,'2017-04-18 15:50:00','2017-04-18 15:03:32'),
(166,2,'A',142,256,502,'2017-04-18 15:30:00','2017-04-18 15:07:22'),
(167,2,'A',143,218,182,'2017-04-18 15:30:00','2017-04-18 15:09:14'),
(168,2,'A',144,182,250,'2017-04-18 15:40:00','2017-04-18 15:12:47'),
(169,2,'A',145,264,113,'2017-04-18 15:40:00','2017-04-18 15:13:09'),
(170,2,'A',146,123,214,'2017-04-18 16:10:00','2017-04-18 15:14:25'),
(171,2,'A',48,271,238,'2017-04-18 16:30:00','2017-04-18 15:18:39'),
(172,2,'A',48,279,238,'2017-04-18 16:30:00','2017-04-18 15:18:39'),
(173,2,'A',48,274,238,'2017-04-18 16:30:00','2017-04-18 15:19:53'),
(174,2,'A',147,273,106,'2017-04-18 16:10:00','2017-04-18 15:22:10'),
(175,2,'A',82,146,432,'2017-04-18 16:20:00','2017-04-18 15:26:32'),
(176,2,'A',148,27,77,'2017-04-18 16:00:00','2017-04-18 15:31:32'),
(177,3,'A',93,NULL,438,'2017-04-18 16:30:00','2017-04-18 15:31:52'),
(178,2,'A',149,75,192,'2017-04-18 16:00:00','2017-04-18 15:33:24'),
(179,2,'A',133,213,335,'2017-04-19 09:50:00','2017-04-18 15:36:49'),
(180,2,'A',150,223,134,'2017-04-18 16:00:00','2017-04-18 15:39:58'),
(181,2,'A',14,8,196,'2017-04-18 16:50:00','2017-04-18 15:42:58'),
(182,2,'A',151,120,257,'2017-04-18 16:30:00','2017-04-18 15:43:06'),
(183,2,'A',152,110,232,'2017-04-18 16:30:00','2017-04-18 15:43:54'),
(184,3,'A',153,NULL,98,'2017-04-18 16:30:00','2017-04-18 15:43:58'),
(185,2,'A',154,140,120,'2017-04-18 16:20:00','2017-04-18 15:44:19'),
(186,3,'A',155,NULL,292,'2017-04-18 16:10:00','2017-04-18 15:48:20'),
(187,2,'A',156,193,106,'2017-04-18 16:20:00','2017-04-18 15:53:56'),
(188,2,'B',157,119,221,'2017-04-18 16:30:00','2017-04-18 15:54:58'),
(189,3,'A',158,NULL,62,'2017-04-18 16:20:00','2017-04-18 15:56:14'),
(190,2,'A',159,197,84,'2017-04-18 16:00:00','2017-04-18 15:56:23'),
(191,2,'A',76,129,138,'2017-04-18 16:50:00','2017-04-18 16:00:12'),
(192,3,'A',14,NULL,178,'2017-04-18 16:50:00','2017-04-18 16:02:39'),
(193,2,'A',160,178,221,'2017-04-18 16:30:00','2017-04-18 16:04:37'),
(194,2,'A',161,260,156,'2017-04-18 16:30:00','2017-04-18 16:06:38'),
(195,2,'A',161,260,156,'2017-04-18 16:30:00','2017-04-18 16:06:38'),
(196,2,'A',162,239,206,'2017-04-18 16:30:00','2017-04-18 16:07:42'),
(197,2,'A',163,179,145,'2017-04-18 16:30:00','2017-04-18 16:08:20'),
(198,3,'A',164,NULL,163,'2017-04-18 16:40:00','2017-04-18 16:14:03'),
(199,2,'A',165,51,85,'2017-04-18 17:40:00','2017-04-18 16:14:50'),
(200,2,'A',166,80,91,'2017-04-18 17:10:00','2017-04-18 16:19:21'),
(201,2,'A',167,275,178,'2017-04-18 16:40:00','2017-04-18 16:20:41'),
(202,2,'A',168,222,113,'2017-04-18 16:50:00','2017-04-18 16:20:53'),
(203,2,'A',169,169,199,'2017-04-18 16:50:00','2017-04-18 16:21:50'),
(204,2,'A',170,35,98,'2017-04-18 16:50:00','2017-04-18 16:24:19'),
(205,2,'A',170,35,98,'2017-04-18 16:50:00','2017-04-18 16:24:19'),
(206,2,'A',171,229,192,'2017-04-18 16:50:00','2017-04-18 16:24:43'),
(207,2,'A',172,236,221,'2017-04-18 16:30:00','2017-04-18 16:24:57'),
(208,2,'A',173,254,188,'2017-04-18 16:50:00','2017-04-18 16:25:03'),
(209,2,'A',160,44,120,'2017-04-18 16:50:00','2017-04-18 16:25:37'),
(210,2,'B',174,82,192,'2017-04-18 16:50:00','2017-04-18 16:26:49'),
(211,2,'A',160,40,113,'2017-04-18 16:50:00','2017-04-18 16:27:19'),
(212,2,'A',160,40,113,'2017-04-18 16:50:00','2017-04-18 16:27:19'),
(213,2,'A',175,156,163,'2017-04-19 10:00:00','2017-04-18 16:27:21'),
(214,2,'A',176,209,77,'2017-04-18 16:50:00','2017-04-18 16:27:44'),
(215,2,'A',177,174,456,'2017-04-18 17:00:00','2017-04-18 16:28:27'),
(216,2,'A',178,1,62,'2017-04-18 17:30:00','2017-04-18 16:35:51'),
(217,2,'A',179,231,70,'2017-04-18 17:30:00','2017-04-18 16:36:27'),
(218,2,'A',180,268,214,'2017-04-18 17:00:00','2017-04-18 16:37:24'),
(219,2,'A',181,7,170,'2017-04-18 17:10:00','2017-04-18 16:40:09'),
(220,2,'A',182,116,221,'2017-04-18 17:30:00','2017-04-18 16:41:51'),
(221,2,'A',183,263,84,'2017-04-19 11:00:00','2017-04-18 16:44:39'),
(222,2,'A',63,164,195,'2017-04-18 17:30:00','2017-04-18 16:45:30'),
(223,2,'A',93,188,84,'2017-04-18 17:40:00','2017-04-18 16:45:49'),
(224,2,'B',184,122,231,'2017-04-19 10:10:00','2017-04-18 16:46:52'),
(225,2,'A',185,135,120,'2017-04-18 17:10:00','2017-04-18 16:47:28'),
(226,2,'A',186,237,192,'2017-04-18 17:20:00','2017-04-18 16:51:58'),
(227,3,'A',187,NULL,113,'2017-04-18 17:10:00','2017-04-18 16:53:38'),
(228,2,'A',120,115,91,'2017-04-19 07:00:00','2017-04-18 16:54:46'),
(229,2,'A',188,88,142,'2017-04-18 17:20:00','2017-04-18 16:58:18'),
(230,2,'A',188,88,142,'2017-04-18 17:20:00','2017-04-18 16:58:18'),
(231,2,'A',189,32,185,'2017-04-18 17:40:00','2017-04-18 17:00:39'),
(232,2,'A',190,117,199,'2017-04-18 17:30:00','2017-04-18 17:02:27'),
(233,2,'A',191,238,185,'2017-04-18 17:30:00','2017-04-18 17:05:46'),
(234,2,'A',192,28,62,'2017-04-18 17:30:00','2017-04-18 17:09:48'),
(235,2,'A',192,28,62,'2017-04-18 17:30:00','2017-04-18 17:10:01'),
(236,2,'A',193,278,149,'2017-04-18 17:40:00','2017-04-18 17:13:39'),
(237,2,'A',12,267,192,'2017-04-18 18:10:00','2017-04-18 17:17:00'),
(238,2,'A',194,20,257,'2017-04-18 17:40:00','2017-04-18 17:19:02'),
(239,2,'A',195,133,170,'2017-04-18 17:50:00','2017-04-18 17:23:21'),
(240,2,'A',195,133,170,'2017-04-18 17:50:00','2017-04-18 17:23:21'),
(241,2,'A',196,255,120,'2017-04-18 18:10:00','2017-04-18 17:24:24'),
(242,2,'A',197,96,1710,'2017-04-19 09:00:00','2017-04-18 17:26:38'),
(243,2,'A',198,228,120,'2017-04-18 18:00:00','2017-04-18 17:39:59'),
(244,2,'A',199,12,60,'2017-04-18 18:40:00','2017-04-18 17:45:28'),
(245,2,'A',200,154,106,'2017-04-18 18:20:00','2017-04-18 17:50:07'),
(246,2,'A',201,189,160,'2017-04-18 18:20:00','2017-04-18 17:53:29'),
(247,2,'A',202,219,214,'2017-04-18 18:20:00','2017-04-18 17:58:20'),
(248,2,'A',203,131,378,'2017-04-19 10:00:00','2017-04-18 18:01:31'),
(249,2,'A',204,232,149,'2017-04-18 18:30:00','2017-04-18 18:02:29'),
(250,2,'A',205,202,149,'2017-04-18 18:30:00','2017-04-18 18:03:43'),
(251,2,'A',206,81,334,'2017-04-18 18:30:00','2017-04-18 18:04:41'),
(252,2,'A',199,12,60,'2017-04-19 07:00:00','2017-04-18 18:08:10'),
(253,2,'A',199,12,60,'2017-04-19 07:00:00','2017-04-18 18:09:57'),
(254,2,'A',199,185,113,'2017-04-18 19:00:00','2017-04-18 18:12:08'),
(255,2,'A',207,71,113,'2017-04-18 18:40:00','2017-04-18 18:14:14'),
(256,2,'A',208,136,156,'2017-04-18 19:00:00','2017-04-18 18:14:59'),
(257,2,'A',76,129,120,'2017-04-18 19:10:00','2017-04-18 18:16:24'),
(258,2,'A',209,132,163,'2017-04-18 18:50:00','2017-04-18 18:24:26'),
(259,2,'A',210,272,114,'2017-04-18 18:50:00','2017-04-18 18:26:51'),
(260,2,'A',211,153,70,'2017-04-19 09:50:00','2017-04-18 18:37:48'),
(261,2,'A',100,201,334,'2017-04-18 19:30:00','2017-04-18 18:43:15'),
(262,2,'A',212,112,474,'2017-04-19 10:00:00','2017-04-18 18:45:16'),
(263,2,'A',213,85,257,'2017-04-18 19:10:00','2017-04-18 18:47:59'),
(264,2,'A',214,83,142,'2017-04-18 19:30:00','2017-04-18 18:50:05'),
(265,2,'A',215,205,334,'2017-04-18 19:40:00','2017-04-18 18:50:22'),
(266,2,'A',216,73,345,'2017-04-18 19:20:00','2017-04-18 18:51:27'),
(267,2,'A',217,221,98,'2017-04-18 19:50:00','2017-04-18 18:58:20'),
(268,2,'A',213,11,586,'2017-04-18 19:30:00','2017-04-18 19:02:56'),
(269,2,'A',218,69,149,'2017-04-18 19:30:00','2017-04-18 19:03:23'),
(270,2,'A',200,259,84,'2017-04-18 19:30:00','2017-04-18 19:06:51'),
(271,2,'A',219,17,120,'2017-04-18 20:00:00','2017-04-18 19:14:13'),
(272,3,'A',216,NULL,306,'2017-04-18 19:50:00','2017-04-18 19:20:31'),
(273,2,'A',220,229,292,'2017-04-18 19:50:00','2017-04-18 19:23:05'),
(274,2,'A',221,86,131,'2017-04-18 20:20:00','2017-04-18 19:26:13'),
(275,2,'A',222,200,142,'2017-04-18 20:20:00','2017-04-18 19:33:23'),
(276,2,'A',223,95,131,'2017-04-18 20:00:00','2017-04-18 19:39:53'),
(277,2,'B',224,2,106,'2017-04-19 10:00:00','2017-04-18 19:44:13'),
(278,2,'A',225,50,163,'2017-04-18 20:10:00','2017-04-18 19:47:26'),
(279,2,'A',226,210,170,'2017-04-18 20:40:00','2017-04-18 19:49:22'),
(280,2,'A',227,128,192,'2017-04-18 20:20:00','2017-04-18 19:51:52'),
(281,2,'A',228,22,264,'2017-04-19 09:30:00','2017-04-18 19:57:43'),
(282,2,'A',229,198,91,'2017-04-18 20:50:00','2017-04-18 20:03:25'),
(283,2,'A',189,37,185,'2017-04-18 20:50:00','2017-04-18 20:08:43'),
(284,2,'A',230,141,299,'2017-04-19 04:00:00','2017-04-18 20:11:30'),
(285,2,'A',60,137,131,'2017-04-18 20:40:00','2017-04-18 20:19:09'),
(286,2,'A',231,248,148,'2017-04-18 21:00:00','2017-04-18 20:34:37'),
(287,2,'A',232,175,213,'2017-04-18 21:40:00','2017-04-18 20:55:11'),
(288,2,'A',232,175,213,'2017-04-18 21:40:00','2017-04-18 20:55:11'),
(289,2,'A',233,251,120,'2017-04-19 10:30:00','2017-04-18 21:12:33'),
(290,2,'A',234,97,592,'2017-04-18 22:00:00','2017-04-18 21:18:35'),
(291,2,'A',235,102,390,'2017-04-19 16:30:00','2017-04-18 21:23:22'),
(292,2,'A',236,148,148,'2017-04-18 21:50:00','2017-04-18 21:29:29'),
(293,2,'A',237,28,170,'2017-04-18 22:30:00','2017-04-18 21:43:41'),
(294,3,'A',238,NULL,242,'2017-04-18 22:30:00','2017-04-18 22:05:50'),
(295,2,'A',239,215,106,'2017-04-19 08:00:00','2017-04-18 22:06:50'),
(296,3,'A',240,NULL,170,'2017-04-19 10:30:00','2017-04-18 22:09:22'),
(297,2,'A',241,250,185,'2017-04-19 08:00:00','2017-04-18 22:19:30'),
(298,2,'A',239,53,228,'2017-04-19 10:00:00','2017-04-18 22:49:16'),
(299,3,'A',242,21,178,'2017-04-19 20:00:00','2017-04-18 23:01:23'),
(300,3,'A',243,NULL,178,'2017-04-19 09:30:00','2017-04-18 23:16:23')
;

INSERT INTO vaninterest
(idvanInterest,idvanOrder,order_subset_assigned,servicer_auth,txCreate)
VALUES
(1,1,'A',199,'2017-04-18 05:06:00'),
(2,2,'A',97,'2017-04-18 06:43:00'),
(3,3,'A',15,'2017-04-18 06:59:00'),
(4,5,'A',211,'2017-04-18 07:32:00'),
(5,6,'A',4,'2017-04-18 07:45:00'),
(6,7,'A',101,'2017-04-18 08:12:00'),
(7,8,'A',276,'2017-04-18 08:30:00'),
(8,9,'A',216,'2017-04-18 08:45:00'),
(9,10,'A',290,'2017-04-18 09:09:00'),
(10,10,'B',252,'2017-04-18 09:16:00'),
(11,11,'A',291,'2017-04-18 09:23:00'),
(12,12,'A',84,'2017-04-18 09:31:00'),
(13,13,'A',249,'2017-04-18 09:33:00'),
(14,14,'A',8,'2017-04-18 09:39:00'),
(15,15,'A',151,'2017-04-18 09:45:00'),
(16,16,'A',150,'2017-04-18 09:45:00'),
(17,17,'A',266,'2017-04-18 09:47:00'),
(18,18,'A',46,'2017-04-18 09:59:00'),
(19,19,'A',92,'2017-04-18 10:03:00'),
(20,20,'A',55,'2017-04-18 10:04:00'),
(21,22,'A',59,'2017-04-18 10:05:00'),
(22,23,'A',125,'2017-04-18 10:06:00'),
(23,24,'A',224,'2017-04-18 10:07:00'),
(24,26,'A',186,'2017-04-18 10:07:00'),
(25,21,'A',42,'2017-04-18 10:07:00'),
(26,27,'A',180,'2017-04-18 10:08:00'),
(27,25,'A',113,'2017-04-18 10:08:00'),
(28,28,'A',160,'2017-04-18 10:09:00'),
(29,30,'A',57,'2017-04-18 10:13:00'),
(30,31,'A',262,'2017-04-18 10:14:00'),
(31,32,'A',103,'2017-04-18 10:14:00'),
(32,33,'A',149,'2017-04-18 10:22:00'),
(33,34,'A',72,'2017-04-18 10:23:00'),
(34,36,'A',100,'2017-04-18 10:33:00'),
(35,35,'A',217,'2017-04-18 10:33:00'),
(36,38,'A',46,'2017-04-18 10:36:00'),
(37,39,'A',235,'2017-04-18 10:38:00'),
(38,40,'A',243,'2017-04-18 10:40:00'),
(39,37,'A',54,'2017-04-18 10:42:00'),
(40,42,'A',196,'2017-04-18 10:47:00'),
(41,41,'A',58,'2017-04-18 10:51:00'),
(42,44,'A',94,'2017-04-18 10:53:00'),
(43,45,'A',123,'2017-04-18 10:54:00'),
(44,46,'A',3,'2017-04-18 10:55:00'),
(45,43,'A',258,'2017-04-18 10:57:00'),
(46,47,'A',240,'2017-04-18 10:58:00'),
(47,48,'A',99,'2017-04-18 11:00:00'),
(48,49,'A',202,'2017-04-18 11:00:00'),
(49,22,'B',59,'2017-04-18 11:01:00'),
(50,50,'A',118,'2017-04-18 11:06:00'),
(51,51,'A',33,'2017-04-18 11:10:00'),
(52,52,'A',111,'2017-04-18 11:11:00'),
(53,53,'A',76,'2017-04-18 11:14:00'),
(54,57,'A',177,'2017-04-18 11:18:00'),
(55,54,'A',34,'2017-04-18 11:21:00'),
(56,63,'A',171,'2017-04-18 11:22:00'),
(57,62,'A',24,'2017-04-18 11:23:00'),
(58,64,'A',247,'2017-04-18 11:25:00'),
(59,66,'A',242,'2017-04-18 11:29:00'),
(60,65,'A',25,'2017-04-18 11:29:00'),
(61,67,'A',224,'2017-04-18 11:29:00'),
(62,68,'A',157,'2017-04-18 11:29:00'),
(63,69,'A',86,'2017-04-18 11:32:00'),
(64,70,'A',5,'2017-04-18 11:35:00'),
(65,71,'A',191,'2017-04-18 11:39:00'),
(66,72,'A',172,'2017-04-18 11:40:00'),
(67,73,'A',16,'2017-04-18 11:41:00'),
(68,74,'A',163,'2017-04-18 11:42:00'),
(69,61,'A',277,'2017-04-18 11:49:00'),
(70,59,'A',282,'2017-04-18 11:49:00'),
(71,55,'A',280,'2017-04-18 11:49:00'),
(72,56,'A',281,'2017-04-18 11:49:00'),
(73,75,'A',26,'2017-04-18 11:50:00'),
(74,76,'A',104,'2017-04-18 11:52:00'),
(75,77,'A',63,'2017-04-18 11:54:00'),
(76,78,'A',141,'2017-04-18 11:57:00'),
(77,79,'A',49,'2017-04-18 11:59:00'),
(78,65,'B',25,'2017-04-18 11:59:00'),
(79,80,'A',77,'2017-04-18 12:04:00'),
(80,82,'A',212,'2017-04-18 12:11:00'),
(81,66,'B',242,'2017-04-18 12:12:00'),
(82,83,'A',22,'2017-04-18 12:14:00'),
(83,86,'A',226,'2017-04-18 12:16:00'),
(84,87,'A',31,'2017-04-18 12:18:00'),
(85,85,'A',48,'2017-04-18 12:19:00'),
(86,88,'A',187,'2017-04-18 12:19:00'),
(87,84,'A',297,'2017-04-18 12:19:00'),
(88,81,'A',139,'2017-04-18 12:19:00'),
(89,90,'A',214,'2017-04-18 12:23:00'),
(90,91,'A',194,'2017-04-18 12:24:00'),
(91,89,'A',39,'2017-04-18 12:24:00'),
(92,93,'A',107,'2017-04-18 12:30:00'),
(93,94,'A',170,'2017-04-18 12:33:00'),
(94,95,'A',269,'2017-04-18 12:36:00'),
(95,96,'A',208,'2017-04-18 12:39:00'),
(96,97,'A',108,'2017-04-18 12:40:00'),
(97,98,'A',70,'2017-04-18 12:40:00'),
(98,99,'A',109,'2017-04-18 12:43:00'),
(99,100,'A',166,'2017-04-18 12:46:00'),
(100,101,'A',105,'2017-04-18 12:54:00'),
(101,102,'A',168,'2017-04-18 12:57:00'),
(102,103,'A',207,'2017-04-18 12:57:00'),
(103,105,'A',106,'2017-04-18 12:58:00'),
(104,104,'A',92,'2017-04-18 12:58:00'),
(105,106,'A',91,'2017-04-18 13:00:00'),
(106,107,'A',43,'2017-04-18 13:01:00'),
(107,108,'A',51,'2017-04-18 13:02:00'),
(108,109,'A',233,'2017-04-18 13:06:00'),
(109,111,'A',155,'2017-04-18 13:08:00'),
(110,112,'A',88,'2017-04-18 13:12:00'),
(111,113,'A',183,'2017-04-18 13:12:00'),
(112,114,'A',127,'2017-04-18 13:12:00'),
(113,110,'A',146,'2017-04-18 13:12:00'),
(114,115,'A',56,'2017-04-18 13:17:00'),
(115,116,'A',246,'2017-04-18 13:19:00'),
(116,117,'A',284,'2017-04-18 13:20:00'),
(117,118,'A',159,'2017-04-18 13:23:00'),
(118,119,'A',165,'2017-04-18 13:25:00'),
(119,117,'B',64,'2017-04-18 13:26:00'),
(120,120,'A',265,'2017-04-18 13:27:00'),
(121,121,'A',144,'2017-04-18 13:28:00'),
(122,122,'A',192,'2017-04-18 13:31:00'),
(123,123,'A',234,'2017-04-18 13:34:00'),
(124,124,'A',78,'2017-04-18 13:36:00'),
(125,118,'B',159,'2017-04-18 13:38:00'),
(126,125,'A',44,'2017-04-18 13:41:00'),
(127,126,'A',220,'2017-04-18 13:41:00'),
(128,127,'A',61,'2017-04-18 13:43:00'),
(129,128,'A',184,'2017-04-18 13:43:00'),
(130,130,'A',152,'2017-04-18 13:47:00'),
(131,129,'A',270,'2017-04-18 13:47:00'),
(132,132,'A',204,'2017-04-18 13:47:00'),
(133,131,'A',74,'2017-04-18 13:47:00'),
(134,133,'A',181,'2017-04-18 13:48:00'),
(135,134,'A',162,'2017-04-18 13:51:00'),
(136,135,'A',19,'2017-04-18 13:53:00'),
(137,136,'A',121,'2017-04-18 13:53:00'),
(138,137,'A',126,'2017-04-18 13:53:00'),
(139,139,'A',138,'2017-04-18 13:58:00'),
(140,140,'A',38,'2017-04-18 14:00:00'),
(141,141,'A',6,'2017-04-18 14:08:00'),
(142,138,'A',227,'2017-04-18 14:09:00'),
(143,142,'A',257,'2017-04-18 14:16:00'),
(144,144,'A',190,'2017-04-18 14:19:00'),
(145,145,'A',60,'2017-04-18 14:22:00'),
(146,146,'A',253,'2017-04-18 14:22:00'),
(147,148,'A',143,'2017-04-18 14:24:00'),
(148,147,'A',173,'2017-04-18 14:25:00'),
(149,143,'A',65,'2017-04-18 14:26:00'),
(150,149,'A',157,'2017-04-18 14:26:00'),
(151,150,'A',65,'2017-04-18 14:30:00'),
(152,151,'A',79,'2017-04-18 14:31:00'),
(153,153,'A',10,'2017-04-18 14:31:00'),
(154,156,'A',166,'2017-04-18 14:37:00'),
(155,155,'A',17,'2017-04-18 14:39:00'),
(156,157,'A',114,'2017-04-18 14:41:00'),
(157,158,'A',245,'2017-04-18 14:42:00'),
(158,159,'A',285,'2017-04-18 14:47:00'),
(159,161,'A',294,'2017-04-18 14:49:00'),
(160,154,'A',65,'2017-04-18 14:50:00'),
(161,152,'A',65,'2017-04-18 14:50:00'),
(162,160,'A',61,'2017-04-18 14:52:00'),
(163,162,'A',241,'2017-04-18 14:52:00'),
(164,163,'A',244,'2017-04-18 14:53:00'),
(165,164,'A',145,'2017-04-18 15:01:00'),
(166,165,'A',206,'2017-04-18 15:03:00'),
(167,166,'A',256,'2017-04-18 15:07:00'),
(168,167,'A',218,'2017-04-18 15:09:00'),
(169,168,'A',182,'2017-04-18 15:12:00'),
(170,169,'A',264,'2017-04-18 15:13:00'),
(171,170,'A',123,'2017-04-18 15:14:00'),
(172,174,'A',273,'2017-04-18 15:22:00'),
(173,175,'A',146,'2017-04-18 15:27:00'),
(174,176,'A',27,'2017-04-18 15:32:00'),
(175,173,'A',274,'2017-04-18 15:32:00'),
(176,177,'A',233,'2017-04-18 15:33:00'),
(177,178,'A',75,'2017-04-18 15:34:00'),
(178,89,'B',39,'2017-04-18 15:35:00'),
(179,179,'A',213,'2017-04-18 15:38:00'),
(180,180,'A',223,'2017-04-18 15:40:00'),
(181,181,'A',8,'2017-04-18 15:43:00'),
(182,182,'A',120,'2017-04-18 15:43:00'),
(183,184,'A',287,'2017-04-18 15:44:00'),
(184,185,'A',140,'2017-04-18 15:44:00'),
(185,183,'A',110,'2017-04-18 15:44:00'),
(186,171,'A',271,'2017-04-18 15:45:00'),
(187,172,'A',279,'2017-04-18 15:46:00'),
(188,186,'A',286,'2017-04-18 15:49:00'),
(189,187,'A',193,'2017-04-18 15:55:00'),
(190,188,'A',119,'2017-04-18 15:55:00'),
(191,190,'A',197,'2017-04-18 15:57:00'),
(192,191,'A',129,'2017-04-18 16:00:00'),
(193,193,'A',178,'2017-04-18 16:04:00'),
(194,194,'A',260,'2017-04-18 16:06:00'),
(195,196,'A',239,'2017-04-18 16:07:00'),
(196,197,'A',179,'2017-04-18 16:08:00'),
(197,199,'A',51,'2017-04-18 16:15:00'),
(198,200,'A',80,'2017-04-18 16:20:00'),
(199,201,'A',275,'2017-04-18 16:20:00'),
(200,202,'A',222,'2017-04-18 16:21:00'),
(201,203,'A',169,'2017-04-18 16:21:00'),
(202,204,'A',35,'2017-04-18 16:24:00'),
(203,206,'A',229,'2017-04-18 16:24:00'),
(204,207,'A',236,'2017-04-18 16:25:00'),
(205,209,'A',44,'2017-04-18 16:25:00'),
(206,208,'A',254,'2017-04-18 16:26:00'),
(207,210,'A',82,'2017-04-18 16:26:00'),
(208,213,'A',156,'2017-04-18 16:27:00'),
(209,211,'A',40,'2017-04-18 16:27:00'),
(210,214,'A',209,'2017-04-18 16:28:00'),
(211,188,'B',119,'2017-04-18 16:28:00'),
(212,215,'A',174,'2017-04-18 16:29:00'),
(213,216,'A',1,'2017-04-18 16:36:00'),
(214,217,'A',231,'2017-04-18 16:36:00'),
(215,218,'A',268,'2017-04-18 16:37:00'),
(216,219,'A',7,'2017-04-18 16:40:00'),
(217,220,'A',116,'2017-04-18 16:42:00'),
(218,210,'B',82,'2017-04-18 16:43:00'),
(219,221,'A',263,'2017-04-18 16:44:00'),
(220,222,'A',164,'2017-04-18 16:45:00'),
(221,224,'A',295,'2017-04-18 16:47:00'),
(222,223,'A',188,'2017-04-18 16:47:00'),
(223,225,'A',135,'2017-04-18 16:48:00'),
(224,226,'A',237,'2017-04-18 16:52:00'),
(225,227,'A',296,'2017-04-18 16:54:00'),
(226,228,'A',115,'2017-04-18 16:55:00'),
(227,229,'A',88,'2017-04-18 16:58:00'),
(228,231,'A',32,'2017-04-18 17:00:00'),
(229,232,'A',117,'2017-04-18 17:02:00'),
(230,233,'A',238,'2017-04-18 17:05:00'),
(231,235,'A',28,'2017-04-18 17:11:00'),
(232,234,'A',28,'2017-04-18 17:11:00'),
(233,236,'A',278,'2017-04-18 17:14:00'),
(234,237,'A',267,'2017-04-18 17:17:00'),
(235,238,'A',20,'2017-04-18 17:20:00'),
(236,239,'A',133,'2017-04-18 17:23:00'),
(237,241,'A',255,'2017-04-18 17:25:00'),
(238,242,'A',96,'2017-04-18 17:26:00'),
(239,243,'A',228,'2017-04-18 17:40:00'),
(240,244,'A',12,'2017-04-18 17:46:00'),
(241,245,'A',154,'2017-04-18 17:52:00'),
(242,246,'A',189,'2017-04-18 17:53:00'),
(243,247,'A',219,'2017-04-18 17:58:00'),
(244,248,'A',131,'2017-04-18 18:01:00'),
(245,249,'A',232,'2017-04-18 18:02:00'),
(246,250,'A',202,'2017-04-18 18:03:00'),
(247,251,'A',81,'2017-04-18 18:04:00'),
(248,252,'A',12,'2017-04-18 18:11:00'),
(249,253,'A',12,'2017-04-18 18:12:00'),
(250,254,'A',185,'2017-04-18 18:12:00'),
(251,255,'A',71,'2017-04-18 18:14:00'),
(252,256,'A',136,'2017-04-18 18:15:00'),
(253,257,'A',129,'2017-04-18 18:17:00'),
(254,258,'A',132,'2017-04-18 18:25:00'),
(255,259,'A',272,'2017-04-18 18:27:00'),
(256,260,'A',153,'2017-04-18 18:37:00'),
(257,261,'A',201,'2017-04-18 18:44:00'),
(258,263,'A',85,'2017-04-18 18:49:00'),
(259,265,'A',205,'2017-04-18 18:50:00'),
(260,264,'A',83,'2017-04-18 18:51:00'),
(261,266,'A',73,'2017-04-18 18:51:00'),
(262,267,'A',221,'2017-04-18 18:59:00'),
(263,269,'A',69,'2017-04-18 19:04:00'),
(264,268,'A',11,'2017-04-18 19:04:00'),
(265,270,'A',259,'2017-04-18 19:08:00'),
(266,271,'A',17,'2017-04-18 19:14:00'),
(267,272,'A',184,'2017-04-18 19:21:00'),
(268,273,'A',229,'2017-04-18 19:23:00'),
(269,274,'A',86,'2017-04-18 19:29:00'),
(270,262,'A',112,'2017-04-18 19:33:00'),
(271,275,'A',200,'2017-04-18 19:33:00'),
(272,276,'A',95,'2017-04-18 19:40:00'),
(273,277,'A',292,'2017-04-18 19:44:00'),
(274,278,'A',50,'2017-04-18 19:48:00'),
(275,279,'A',210,'2017-04-18 19:49:00'),
(276,277,'B',2,'2017-04-18 19:50:00'),
(277,280,'A',128,'2017-04-18 19:52:00'),
(278,281,'A',22,'2017-04-18 19:57:00'),
(279,282,'A',198,'2017-04-18 20:04:00'),
(280,283,'A',37,'2017-04-18 20:09:00'),
(281,284,'A',141,'2017-04-18 20:11:00'),
(282,285,'A',137,'2017-04-18 20:19:00'),
(283,286,'A',248,'2017-04-18 20:35:00'),
(284,287,'A',175,'2017-04-18 20:55:00'),
(285,289,'A',251,'2017-04-18 21:12:00'),
(286,290,'A',97,'2017-04-18 21:19:00'),
(287,291,'A',102,'2017-04-18 21:24:00'),
(288,292,'A',148,'2017-04-18 21:29:00'),
(289,293,'A',28,'2017-04-18 21:44:00'),
(290,294,'A',288,'2017-04-18 22:06:00'),
(291,295,'A',215,'2017-04-18 22:07:00'),
(292,296,'A',289,'2017-04-18 22:09:00'),
(293,297,'A',250,'2017-04-18 22:19:00'),
(294,298,'A',53,'2017-04-18 22:49:00'),
(295,299,'A',21,'2017-04-18 23:01:00'),
(296,300,'A',293,'2017-04-18 23:16:00'),
(297,224,'B',122,'2017-04-19 08:56:00')
;
select count(idvanorder) from vanorder group by hour(order_datetime);

select total_price / sum_price, order_status from (select * from vanorder left join (select sum(total_price) as sum_price, order_status as os from vanorder group by order_status) as vanorder_new
on vanorder.order_status = vanorder_new.os) as vanorder_new_all where order_status = 2;

select * from vanorder;

select sum(total_price) as sum_price, count(order_status) as count_status, requestor_client_id from vanorder
where order_status = 2
group by requestor_client_id
order by sum_price desc, count_status desc;

select * from vaninterest;

select sum(total_price) as total_income, count(order_status) as total_order, servicer_auth from (select total_price, order_status, vaninterest.servicer_auth from vanorder right join vaninterest on vanorder.idvanOrder = vaninterest.idvanOrder) as combine
where order_status = 2
group by servicer_auth
order by total_income desc, total_order desc;

select order_status, servicer_auth from (select total_price, order_status, vaninterest.servicer_auth from vanorder right join vaninterest on vanorder.idvanOrder = vaninterest.idvanOrder) as combine
where order_status = 3 or order_status = 5;
