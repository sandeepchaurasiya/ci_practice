-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2018 at 05:18 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `countrycode` char(3) NOT NULL,
  `countryname` varchar(200) NOT NULL,
  `code` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `countrycode`, `countryname`, `code`) VALUES
(4, 'AFG', 'Afghanistan', 'AF'),
(5, 'ALA', 'Åland', 'AX'),
(6, 'ALB', 'Albania', 'AL'),
(7, 'DZA', 'Algeria', 'DZ'),
(8, 'ASM', 'American Samoa', 'AS'),
(9, 'AND', 'Andorra', 'AD'),
(10, 'AGO', 'Angola', 'AO'),
(11, 'AIA', 'Anguilla', 'AI'),
(12, 'ATA', 'Antarctica', 'AQ'),
(13, 'ATG', 'Antigua and Barbuda', 'AG'),
(14, 'ARG', 'Argentina', 'AR'),
(15, 'ARM', 'Armenia', 'AM'),
(16, 'ABW', 'Aruba', 'AW'),
(17, 'AUS', 'Australia', 'AU'),
(18, 'AUT', 'Austria', 'AT'),
(19, 'AZE', 'Azerbaijan', 'AZ'),
(20, 'BHS', 'Bahamas', 'BS'),
(21, 'BHR', 'Bahrain', 'BH'),
(22, 'BGD', 'Bangladesh', 'BD'),
(23, 'BRB', 'Barbados', 'BB'),
(24, 'BLR', 'Belarus', 'BY'),
(25, 'BEL', 'Belgium', 'BE'),
(26, 'BLZ', 'Belize', 'BZ'),
(27, 'BEN', 'Benin', 'BJ'),
(28, 'BMU', 'Bermuda', 'BM'),
(29, 'BTN', 'Bhutan', 'BT'),
(30, 'BOL', 'Bolivia', 'BO'),
(31, 'BES', 'Bonaire', 'BQ'),
(32, 'BIH', 'Bosnia and Herzegovina', 'BA'),
(33, 'BWA', 'Botswana', 'BW'),
(34, 'BVT', 'Bouvet Island', 'BV'),
(35, 'BRA', 'Brazil', 'BR'),
(36, 'IOT', 'British Indian Ocean Territory', 'IO'),
(37, 'VGB', 'British Virgin Islands', 'VG'),
(38, 'BRN', 'Brunei', 'BN'),
(39, 'BGR', 'Bulgaria', 'BG'),
(40, 'BFA', 'Burkina Faso', 'BF'),
(41, 'BDI', 'Burundi', 'BI'),
(42, 'KHM', 'Cambodia', 'KH'),
(43, 'CMR', 'Cameroon', 'CM'),
(44, 'CAN', 'Canada', 'CA'),
(45, 'CPV', 'Cape Verde', 'CV'),
(46, 'CYM', 'Cayman Islands', 'KY'),
(47, 'CAF', 'Central African Republic', 'CF'),
(48, 'TCD', 'Chad', 'TD'),
(49, 'CHL', 'Chile', 'CL'),
(50, 'CHN', 'China', 'CN'),
(51, 'CXR', 'Christmas Island', 'CX'),
(52, 'CCK', 'Cocos [Keeling] Islands', 'CC'),
(53, 'COL', 'Colombia', 'CO'),
(54, 'COM', 'Comoros', 'KM'),
(55, 'COK', 'Cook Islands', 'CK'),
(56, 'CRI', 'Costa Rica', 'CR'),
(57, 'HRV', 'Croatia', 'HR'),
(58, 'CUB', 'Cuba', 'CU'),
(59, 'CUW', 'Curacao', 'CW'),
(60, 'CYP', 'Cyprus', 'CY'),
(61, 'CZE', 'Czech Republic', 'CZ'),
(62, 'COD', 'Democratic Republic of the Congo', 'CD'),
(63, 'DNK', 'Denmark', 'DK'),
(64, 'DJI', 'Djibouti', 'DJ'),
(65, 'DMA', 'Dominica', 'DM'),
(66, 'DOM', 'Dominican Republic', 'DO'),
(67, 'TLS', 'East Timor', 'TL'),
(68, 'ECU', 'Ecuador', 'EC'),
(69, 'EGY', 'Egypt', 'EG'),
(70, 'SLV', 'El Salvador', 'SV'),
(71, 'GNQ', 'Equatorial Guinea', 'GQ'),
(72, 'ERI', 'Eritrea', 'ER'),
(73, 'EST', 'Estonia', 'EE'),
(74, 'ETH', 'Ethiopia', 'ET'),
(75, 'FLK', 'Falkland Islands', 'FK'),
(76, 'FRO', 'Faroe Islands', 'FO'),
(77, 'FJI', 'Fiji', 'FJ'),
(78, 'FIN', 'Finland', 'FI'),
(79, 'FRA', 'France', 'FR'),
(80, 'GUF', 'French Guiana', 'GF'),
(81, 'PYF', 'French Polynesia', 'PF'),
(82, 'ATF', 'French Southern Territories', 'TF'),
(83, 'GAB', 'Gabon', 'GA'),
(84, 'GMB', 'Gambia', 'GM'),
(85, 'GEO', 'Georgia', 'GE'),
(86, 'DEU', 'Germany', 'DE'),
(87, 'GHA', 'Ghana', 'GH'),
(88, 'GIB', 'Gibraltar', 'GI'),
(89, 'GRC', 'Greece', 'GR'),
(90, 'GRL', 'Greenland', 'GL'),
(91, 'GRD', 'Grenada', 'GD'),
(92, 'GLP', 'Guadeloupe', 'GP'),
(93, 'GUM', 'Guam', 'GU'),
(94, 'GTM', 'Guatemala', 'GT'),
(95, 'GGY', 'Guernsey', 'GG'),
(96, 'GIN', 'Guinea', 'GN'),
(97, 'GNB', 'Guinea-Bissau', 'GW'),
(98, 'GUY', 'Guyana', 'GY'),
(99, 'HTI', 'Haiti', 'HT'),
(100, 'HMD', 'Heard Island and McDonald Islands', 'HM'),
(101, 'HND', 'Honduras', 'HN'),
(102, 'HKG', 'Hong Kong', 'HK'),
(103, 'HUN', 'Hungary', 'HU'),
(104, 'ISL', 'Iceland', 'IS'),
(105, 'IND', 'India', 'IN'),
(106, 'IDN', 'Indonesia', 'ID'),
(107, 'IRN', 'Iran', 'IR'),
(108, 'IRQ', 'Iraq', 'IQ'),
(109, 'IRL', 'Ireland', 'IE'),
(110, 'IMN', 'Isle of Man', 'IM'),
(111, 'ISR', 'Israel', 'IL'),
(112, 'ITA', 'Italy', 'IT'),
(113, 'CIV', 'Ivory Coast', 'CI'),
(114, 'JAM', 'Jamaica', 'JM'),
(115, 'JPN', 'Japan', 'JP'),
(116, 'JEY', 'Jersey', 'JE'),
(117, 'JOR', 'Jordan', 'JO'),
(118, 'KAZ', 'Kazakhstan', 'KZ'),
(119, 'KEN', 'Kenya', 'KE'),
(120, 'KIR', 'Kiribati', 'KI'),
(121, 'XKX', 'Kosovo', 'XK'),
(122, 'KWT', 'Kuwait', 'KW'),
(123, 'KGZ', 'Kyrgyzstan', 'KG'),
(124, 'LAO', 'Laos', 'LA'),
(125, 'LVA', 'Latvia', 'LV'),
(126, 'LBN', 'Lebanon', 'LB'),
(127, 'LSO', 'Lesotho', 'LS'),
(128, 'LBR', 'Liberia', 'LR'),
(129, 'LBY', 'Libya', 'LY'),
(130, 'LIE', 'Liechtenstein', 'LI'),
(131, 'LTU', 'Lithuania', 'LT'),
(132, 'LUX', 'Luxembourg', 'LU'),
(133, 'MAC', 'Macao', 'MO'),
(134, 'MKD', 'Macedonia', 'MK'),
(135, 'MDG', 'Madagascar', 'MG'),
(136, 'MWI', 'Malawi', 'MW'),
(137, 'MYS', 'Malaysia', 'MY'),
(138, 'MDV', 'Maldives', 'MV'),
(139, 'MLI', 'Mali', 'ML'),
(140, 'MLT', 'Malta', 'MT'),
(141, 'MHL', 'Marshall Islands', 'MH'),
(142, 'MTQ', 'Martinique', 'MQ'),
(143, 'MRT', 'Mauritania', 'MR'),
(144, 'MUS', 'Mauritius', 'MU'),
(145, 'MYT', 'Mayotte', 'YT'),
(146, 'MEX', 'Mexico', 'MX'),
(147, 'FSM', 'Micronesia', 'FM'),
(148, 'MDA', 'Moldova', 'MD'),
(149, 'MCO', 'Monaco', 'MC'),
(150, 'MNG', 'Mongolia', 'MN'),
(151, 'MNE', 'Montenegro', 'ME'),
(152, 'MSR', 'Montserrat', 'MS'),
(153, 'MAR', 'Morocco', 'MA'),
(154, 'MOZ', 'Mozambique', 'MZ'),
(155, 'MMR', 'Myanmar [Burma]', 'MM'),
(156, 'NAM', 'Namibia', 'NA'),
(157, 'NRU', 'Nauru', 'NR'),
(158, 'NPL', 'Nepal', 'NP'),
(159, 'NLD', 'Netherlands', 'NL'),
(160, 'NCL', 'New Caledonia', 'NC'),
(161, 'NZL', 'New Zealand', 'NZ'),
(162, 'NIC', 'Nicaragua', 'NI'),
(163, 'NER', 'Niger', 'NE'),
(164, 'NGA', 'Nigeria', 'NG'),
(165, 'NIU', 'Niue', 'NU'),
(166, 'NFK', 'Norfolk Island', 'NF'),
(167, 'PRK', 'North Korea', 'KP'),
(168, 'MNP', 'Northern Mariana Islands', 'MP'),
(169, 'NOR', 'Norway', 'NO'),
(170, 'OMN', 'Oman', 'OM'),
(171, 'PAK', 'Pakistan', 'PK'),
(172, 'PLW', 'Palau', 'PW'),
(173, 'PSE', 'Palestine', 'PS'),
(174, 'PAN', 'Panama', 'PA'),
(175, 'PNG', 'Papua New Guinea', 'PG'),
(176, 'PRY', 'Paraguay', 'PY'),
(177, 'PER', 'Peru', 'PE'),
(178, 'PHL', 'Philippines', 'PH'),
(179, 'PCN', 'Pitcairn Islands', 'PN'),
(180, 'POL', 'Poland', 'PL'),
(181, 'PRT', 'Portugal', 'PT'),
(182, 'PRI', 'Puerto Rico', 'PR'),
(183, 'QAT', 'Qatar', 'QA'),
(184, 'COG', 'Republic of the Congo', 'CG'),
(185, 'REU', 'Réunion', 'RE'),
(186, 'ROU', 'Romania', 'RO'),
(187, 'RUS', 'Russia', 'RU'),
(188, 'RWA', 'Rwanda', 'RW'),
(189, 'BLM', 'Saint Barthélemy', 'BL'),
(190, 'SHN', 'Saint Helena', 'SH'),
(191, 'KNA', 'Saint Kitts and Nevis', 'KN'),
(192, 'LCA', 'Saint Lucia', 'LC'),
(193, 'MAF', 'Saint Martin', 'MF'),
(194, 'SPM', 'Saint Pierre and Miquelon', 'PM'),
(195, 'VCT', 'Saint Vincent and the Grenadines', 'VC'),
(196, 'WSM', 'Samoa', 'WS'),
(197, 'SMR', 'San Marino', 'SM'),
(198, 'STP', 'São Tomé and Príncipe', 'ST'),
(199, 'SAU', 'Saudi Arabia', 'SA'),
(200, 'SEN', 'Senegal', 'SN'),
(201, 'SRB', 'Serbia', 'RS'),
(202, 'SYC', 'Seychelles', 'SC'),
(203, 'SLE', 'Sierra Leone', 'SL'),
(204, 'SGP', 'Singapore', 'SG'),
(205, 'SXM', 'Sint Maarten', 'SX'),
(206, 'SVK', 'Slovakia', 'SK'),
(207, 'SVN', 'Slovenia', 'SI'),
(208, 'SLB', 'Solomon Islands', 'SB'),
(209, 'SOM', 'Somalia', 'SO'),
(210, 'ZAF', 'South Africa', 'ZA'),
(211, 'SGS', 'South Georgia and the South Sandwich Islands', 'GS'),
(212, 'KOR', 'South Korea', 'KR'),
(213, 'SSD', 'South Sudan', 'SS'),
(214, 'ESP', 'Spain', 'ES'),
(215, 'LKA', 'Sri Lanka', 'LK'),
(216, 'SDN', 'Sudan', 'SD'),
(217, 'SUR', 'Suriname', 'SR'),
(218, 'SJM', 'Svalbard and Jan Mayen', 'SJ'),
(219, 'SWZ', 'Swaziland', 'SZ'),
(220, 'SWE', 'Sweden', 'SE'),
(221, 'CHE', 'Switzerland', 'CH'),
(222, 'SYR', 'Syria', 'SY'),
(223, 'TWN', 'Taiwan', 'TW'),
(224, 'TJK', 'Tajikistan', 'TJ'),
(225, 'TZA', 'Tanzania', 'TZ'),
(226, 'THA', 'Thailand', 'TH'),
(227, 'TGO', 'Togo', 'TG'),
(228, 'TKL', 'Tokelau', 'TK'),
(229, 'TON', 'Tonga', 'TO'),
(230, 'TTO', 'Trinidad and Tobago', 'TT'),
(231, 'TUN', 'Tunisia', 'TN'),
(232, 'TUR', 'Turkey', 'TR'),
(233, 'TKM', 'Turkmenistan', 'TM'),
(234, 'TCA', 'Turks and Caicos Islands', 'TC'),
(235, 'TUV', 'Tuvalu', 'TV'),
(236, 'UMI', 'U.S. Minor Outlying Islands', 'UM'),
(237, 'VIR', 'U.S. Virgin Islands', 'VI'),
(238, 'UGA', 'Uganda', 'UG'),
(239, 'UKR', 'Ukraine', 'UA'),
(240, 'ARE', 'United Arab Emirates', 'AE'),
(241, 'GBR', 'United Kingdom', 'GB'),
(242, 'USA', 'United States', 'US'),
(243, 'URY', 'Uruguay', 'UY'),
(244, 'UZB', 'Uzbekistan', 'UZ'),
(245, 'VUT', 'Vanuatu', 'VU'),
(246, 'VAT', 'Vatican City', 'VA'),
(247, 'VEN', 'Venezuela', 'VE'),
(248, 'VNM', 'Vietnam', 'VN'),
(249, 'WLF', 'Wallis and Futuna', 'WF'),
(250, 'ESH', 'Western Sahara', 'EH'),
(251, 'YEM', 'Yemen', 'YE'),
(252, 'ZMB', 'Zambia', 'ZM'),
(253, 'ZWE', 'Zimbabwe', 'ZW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
