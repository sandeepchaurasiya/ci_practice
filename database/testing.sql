-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2019 at 03:37 AM
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
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
(1, 'Samsung'),
(2, 'Sony'),
(3, 'Motorola'),
(4, 'Xiaomi');

-- --------------------------------------------------------

--
-- Table structure for table `codeigniter_register`
--

CREATE TABLE `codeigniter_register` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `verification_key` varchar(250) NOT NULL,
  `is_email_verified` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codeigniter_register`
--

INSERT INTO `codeigniter_register` (`id`, `name`, `email`, `password`, `verification_key`, `is_email_verified`) VALUES
(4, 'sandeep', 'sandeepchaurasiya9211@gmail.com', 'sandeep@123', '3f0811e33656ef02a1d998869a054b87', 'yes');

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

-- --------------------------------------------------------

--
-- Table structure for table `country_state_city`
--

CREATE TABLE `country_state_city` (
  `id` int(11) NOT NULL,
  `country` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_state_city`
--

INSERT INTO `country_state_city` (`id`, `country`, `state`, `city`) VALUES
(1, 'USA', 'New York', 'New York city'),
(2, 'USA', 'New York', 'Buffalo'),
(3, 'USA', 'New York', 'Albany'),
(4, 'USA', 'Alabama', 'Birmingham'),
(5, 'USA', 'Alabama', 'Montgomery'),
(6, 'USA', 'Alabama', 'Huntsville'),
(7, 'USA', 'California', 'Los Angeles'),
(8, 'USA', 'California', 'San Francisco'),
(9, 'USA', 'California', 'San Diego'),
(10, 'Canada', 'Ontario', 'Toronto'),
(11, 'Canada', 'Ontario', 'Ottawa'),
(12, 'Canada', 'British Columbia', 'Vancouver'),
(13, 'Canada', 'British Columbia', 'Victoria'),
(14, 'Australia', 'New South Wales', 'Sydney'),
(15, 'Australia', 'New South Wales', 'Newcastle'),
(16, 'Australia', 'Queensland', 'City of Brisbane'),
(17, 'Australia', 'Queensland', 'Gold Coast\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_title` text NOT NULL,
  `page_url` text NOT NULL,
  `page_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`page_id`, `page_title`, `page_url`, `page_order`) VALUES
(1, 'JSON - Dynamic Dependent Dropdown List using Jquery and Ajax', 'json-dynamic-dependent-dropdown-list-using-jquery-and-ajax', 1),
(2, 'Live Table Data Edit Delete using Tabledit Plugin in PHP', 'live-table-data-edit-delete-using-tabledit-plugin-in-php', 5),
(3, 'Create Treeview with Bootstrap Treeview Ajax JQuery in PHP\r\n', 'create-treeview-with-bootstrap-treeview-ajax-jquery-in-php', 9),
(4, 'Bootstrap Multiselect Dropdown with Checkboxes using Jquery in PHP\r\n', 'bootstrap-multiselect-dropdown-with-checkboxes-using-jquery-in-php', 0),
(5, 'Facebook Style Popup Notification using PHP Ajax Bootstrap\r\n', 'facebook-style-popup-notification-using-php-ajax-bootstrap', 2),
(6, 'Modal with Dynamic Previous & Next Data Button by Ajax PHP\r\n', 'modal-with-dynamic-previous-next-data-button-by-ajax-php', 6),
(7, 'How to Use Bootstrap Select Plugin with Ajax Jquery PHP\r\n', 'how-to-use-bootstrap-select-plugin-with-ajax-jquery-php', 7),
(8, 'How to Load CSV File data into HTML Table Using AJAX jQuery\r\n', 'how-to-load-csv-file-data-into-html-table-using-ajax-jquery', 8),
(9, 'Autocomplete Textbox using Typeahead with Ajax PHP Bootstrap\r\n', 'autocomplete-textbox-using-typeahead-with-ajax-php-bootstrap', 4),
(10, 'Export Data to Excel in Codeigniter using PHPExcel\r\n', 'export-data-to-excel-in-codeigniter-using-phpexcel', 3);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `post_title` text,
  `post_description` text,
  `post_status` varchar(100) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `post_title`, `post_description`, `post_status`, `author`) VALUES
(1, 'tristique senectus', 'ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec', NULL, NULL),
(2, '\r\neget odio. Aliquam vulputate ullamcorper magna. Sed eu', '\r\nCras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est.', NULL, NULL),
(3, 'cursus et, magna. Praesent interdum ligula', 'semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede', NULL, NULL),
(4, 'Duis risus odio, auctor vitae, aliquet nec, imperdiet', 'arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin', NULL, NULL),
(5, 'tristique senectus', 'ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec', NULL, NULL),
(6, '\r\neget odio. Aliquam vulputate ullamcorper magna. Sed eu', '\r\nCras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est.', NULL, NULL),
(7, 'cursus et, magna. Praesent interdum ligula', 'semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede', NULL, NULL),
(8, 'Duis risus odio, auctor vitae, aliquet nec, imperdiet', 'arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin', NULL, NULL),
(9, 'tristique senectus', 'ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec', NULL, NULL),
(10, '\r\neget odio. Aliquam vulputate ullamcorper magna. Sed eu', '\r\nCras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est.', NULL, NULL),
(11, 'cursus et, magna. Praesent interdum ligula', 'semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede', NULL, NULL),
(12, 'Duis risus odio, auctor vitae, aliquet nec, imperdiet', 'arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin', NULL, NULL),
(13, 'tristique senectus', 'ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec', NULL, NULL),
(14, '\r\neget odio. Aliquam vulputate ullamcorper magna. Sed eu', '\r\nCras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est.', NULL, NULL),
(15, 'cursus et, magna. Praesent interdum ligula', 'semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede', NULL, NULL),
(16, 'Duis risus odio, auctor vitae, aliquet nec, imperdiet', 'arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin', NULL, NULL),
(17, 'tristique senectus', 'ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec', NULL, NULL),
(18, '\r\neget odio. Aliquam vulputate ullamcorper magna. Sed eu', '\r\nCras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est.', NULL, NULL),
(19, 'cursus et, magna. Praesent interdum ligula', 'semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede', NULL, NULL),
(20, 'Duis risus odio, auctor vitae, aliquet nec, imperdiet', 'arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin', NULL, NULL),
(21, 'tdujtjtj', 'jsyjsrfyjrsyjj6u6jsy', 'draft', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produc`
--

CREATE TABLE `produc` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_image` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produc`
--

INSERT INTO `produc` (`product_id`, `product_name`, `brand_id`, `product_price`, `product_image`) VALUES
(1, 'Samsung Galaxy A9', 1, 36000, 'Samsung_Galaxy_A9_L_1.jpg'),
(2, 'Samsung Galaxy S7', 1, 25000, 'samsung-galaxy-s7--.jpg'),
(3, 'Samsung Galaxy S6 edge', 1, 51000, 'Samsung-Galaxy-S6-Edge-32-SDL982046267-1-e60ad.jpg'),
(4, 'Xperia Z5 Premium', 2, 40000, 'Sony-Xperia-Z5-Premium-3.jpg'),
(5, 'Xperia M5 Dual', 2, 20000, '83201512213PM_635_sony_xperia_m5_dual.jpeg'),
(6, 'Xperia C5 uplta', 2, 15000, 'Sony-Xperia-C5-Ultra.jpeg'),
(7, 'Moto G Turbo', 3, 10500, 'moto-g-turbo-black-540.jpg'),
(8, 'Moto X Force', 3, 35000, '1029201574637PM_635_moto_x_force.jpg'),
(9, 'Redmi 3 Pro', 4, 12000, 'xiaomi-redmi-3-pro.jpg'),
(10, 'Mi 5', 4, 25000, '224201614903PM_635_xiaomi_mi_5_front_side.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(20) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_price` varchar(30) NOT NULL,
  `product_image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_image`) VALUES
(1, 1, 'ASUS Laptop 1500', '799.00', 'asus-laptop.jpg'),
(2, 1, 'Microsoft Surface Pro 3', '898.00', 'surface-pro.jpg'),
(3, 1, 'Samsung EVO 32GB', '12.00', 'samsung-sd-card.jpg'),
(4, 1, 'Desktop Hard Drive', '50.00', 'computer-hard-disk.jpg'),
(5, 1, 'External Hard Drive', '80.00', 'external-hard-disk.jpg'),
(6, 2, 'Crock-Pot Oval Slow Cooker', '34.00', 'crok-pot-cooker.jpg'),
(7, 2, 'Magic Blender System', '80.00', 'blender.jpg'),
(8, 2, 'Cordless Hand Vacuum', '40.00', 'vaccum-cleaner.jpg'),
(9, 2, 'Dishwasher Detergent', '15.00', 'detergent-powder.jpg'),
(10, 2, 'Essential Oil Diffuser', '20.00', 'unpower-difuser.jpg'),
(11, 3, 'Medical Personalized', '11.00', 'hand-bag.jpg'),
(12, 3, 'Best Bridle Leather Belt', '64.00', 'mens-belt.jpg'),
(13, 3, 'HANDMADE Bow set', '24.00', 'pastal-colors.jpg'),
(14, 3, 'Ceramic Coffee Mug', '18.00', 'coffee-mug.jpg'),
(15, 3, 'Wine Birthday Glass', '18.00', 'wine-glass.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product1`
--

CREATE TABLE `product1` (
  `product_id` int(20) NOT NULL,
  `product_name` varchar(120) NOT NULL,
  `product_brand` varchar(100) NOT NULL,
  `product_price` decimal(8,2) NOT NULL,
  `product_ram` char(5) NOT NULL,
  `product_storage` varchar(50) NOT NULL,
  `product_camera` varchar(20) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_quantity` mediumint(5) NOT NULL,
  `product_status` enum('0','1') NOT NULL COMMENT '0-active,1-inactive'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product1`
--

INSERT INTO `product1` (`product_id`, `product_name`, `product_brand`, `product_price`, `product_ram`, `product_storage`, `product_camera`, `product_image`, `product_quantity`, `product_status`) VALUES
(1, 'Honor 9 Lite (Sapphire Blue, 64 GB)  (4 GB RAM)', 'Honor', '14499.00', '4', '64', '13', 'image-1.jpeg', 10, '1'),
(2, '\r\nInfinix Hot S3 (Sandstone Black, 32 GB)  (3 GB RAM)', 'Infinix', '8999.00', '3', '32', '13', 'image-2.jpeg', 10, '1'),
(3, 'VIVO V9 Youth (Gold, 32 GB)  (4 GB RAM)', 'VIVO', '16990.00', '4', '32', '16', 'image-3.jpeg', 10, '1'),
(4, 'Moto E4 Plus (Fine Gold, 32 GB)  (3 GB RAM)', 'Moto', '11499.00', '3', '32', '8', 'image-4.jpeg', 10, '1'),
(5, 'Lenovo K8 Plus (Venom Black, 32 GB)  (3 GB RAM)', 'Lenevo', '9999.00', '3', '32', '13', 'image-5.jpg', 10, '1'),
(6, 'Samsung Galaxy On Nxt (Gold, 16 GB)  (3 GB RAM)', 'Samsung', '10990.00', '3', '16', '13', 'image-6.jpeg', 10, '1'),
(7, 'Moto C Plus (Pearl White, 16 GB)  (2 GB RAM)', 'Moto', '7799.00', '2', '16', '8', 'image-7.jpeg', 10, '1'),
(8, 'Panasonic P77 (White, 16 GB)  (1 GB RAM)', 'Panasonic', '5999.00', '1', '16', '8', 'image-8.jpeg', 10, '1'),
(9, 'OPPO F5 (Black, 64 GB)  (6 GB RAM)', 'OPPO', '19990.00', '6', '64', '16', 'image-9.jpeg', 10, '1'),
(10, 'Honor 7A (Gold, 32 GB)  (3 GB RAM)', 'Honor', '8999.00', '3', '32', '13', 'image-10.jpeg', 10, '1'),
(11, 'Asus ZenFone 5Z (Midnight Blue, 64 GB)  (6 GB RAM)', 'Asus', '29999.00', '6', '128', '12', 'image-12.jpeg', 10, '1'),
(12, 'Redmi 5A (Gold, 32 GB)  (3 GB RAM)', 'MI', '5999.00', '3', '32', '13', 'image-12.jpeg', 10, '1'),
(13, 'Intex Indie 5 (Black, 16 GB)  (2 GB RAM)', 'Intex', '4999.00', '2', '16', '8', 'image-13.jpeg', 10, '1'),
(14, 'Google Pixel 2 XL (18:9 Display, 64 GB) White', 'Google', '61990.00', '4', '64', '12', 'image-14.jpeg', 10, '1'),
(15, 'Samsung Galaxy A9', 'Samsung', '36000.00', '8', '128', '24', 'image-15.jpeg', 10, '1'),
(16, 'Lenovo A5', 'Lenovo', '5999.00', '2', '16', '13', 'image-16.jpeg', 10, '1'),
(17, 'Asus Zenfone Lite L1', 'Asus', '5999.00', '2', '16', '13', 'image-17.jpeg', 10, '1'),
(18, 'Lenovo K9', 'Lenovo', '8999.00', '3', '32', '13', 'image-18.jpeg', 10, '1'),
(19, 'Infinix Hot S3x', 'Infinix', '9999.00', '3', '32', '13', 'image-19.jpeg', 10, '1'),
(20, 'Realme 2', 'Realme', '8990.00', '4', '64', '13', 'image-20.jpeg', 10, '1'),
(21, 'Redmi Note 6 Pro', 'Redmi', '13999.00', '4', '64', '20', 'image-21.jpeg', 10, '1'),
(22, 'Realme C1', 'Realme', '7999.00', '2', '16', '15', 'image-22.jpeg', 10, '1'),
(23, 'Vivo V11', 'Vivo', '22900.00', '6', '64', '21', 'image-23.jpeg', 10, '1'),
(24, 'Oppo F9 Pro', 'Oppo', '23990.00', '6', '64', '18', 'image-24.jpg', 10, '1'),
(25, 'Honor 9N', 'Honor', '11999.00', '4', '64', '15', 'image-25.jpg', 10, '1'),
(26, 'Redmi 6A', 'Redmi', '6599.00', '2', '16', '13', 'image-26.jpeg', 10, '1'),
(27, 'InFocus Vision 3', 'InFocus', '7399.00', '2', '16', '13', 'image-27.jpeg', 10, '1'),
(28, 'Vivo Y69', 'Vivo', '11390.00', '3', '32', '16', 'image-28.jpeg', 10, '1'),
(29, 'Honor 7x', 'Honor', '12721.00', '4', '32', '18', 'image-29.jpeg', 10, '1'),
(30, 'Nokia 2.1', 'Nokia', '6580.00', '2', '1', '8', 'image-30.jpeg', 10, '1');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `brand_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `brand_id`) VALUES
(1, 'Samsung Galaxy A9', 1),
(2, 'Samsung Galaxy S7', 1),
(3, 'Samsung Galaxy S6 edge', 1),
(4, 'Xperia Z5 Premium', 2),
(5, 'Xperia M5 Dual', 2),
(6, 'Xperia C5 uplta', 2),
(7, 'Moto G Turbo', 3),
(8, 'Moto X Force', 3),
(9, 'Redmi 3 Pro', 4),
(10, 'Mi 5', 4);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `email`, `password`) VALUES
(1, 'sandeep@gmail.com', 'sandeep'),
(2, 'sandeepchaurasiya9211@gmail.com', 'sandeep');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cnf_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `number`, `email`, `password`, `cnf_password`) VALUES
(1, 'sandeep', '882-8193-9080', 'sandeepchaurasiya9211@gmail.com', 'Sandeep@123', 'Sandeep@123'),
(2, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sample_data`
--

CREATE TABLE `sample_data` (
  `id` int(10) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `age` text NOT NULL,
  `gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Andorra'),
(2, 'United Arab Emirates'),
(3, 'Afghanistan'),
(4, 'Antigua and Barbuda'),
(5, 'Anguilla'),
(6, 'Albania'),
(7, 'Armenia'),
(8, 'Angola'),
(9, 'Antarctica'),
(10, 'Argentina'),
(11, 'American Samoa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(250) NOT NULL,
  `Address` text NOT NULL,
  `City` varchar(250) NOT NULL,
  `PostalCode` varchar(30) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `images` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`CustomerID`, `CustomerName`, `Address`, `City`, `PostalCode`, `Country`, `images`) VALUES
(3, 'Antonio Moreno', 'Mataderos 2312', 'Mexico D.F.', '5023', 'Mexico', '3.jpg'),
(4, 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK', '4.jpg'),
(5, 'Paula Parente', 'Rua do Mercado, 12', 'Resende', '08737-363', 'Brazil', '5.jpg'),
(6, 'Wolski Zbyszek', 'ul. Filtrowa 68', 'Walla', '01-012', 'Poland', '2.jpg'),
(7, 'Matti Karttunen', 'Keskuskatu 45', 'Helsinki', '21240', 'Finland', '3.jpg'),
(8, 'Karl Jablonski', '305 - 14th Ave. S. Suite 3B', 'Seattle', '98128', 'USA', '4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(250) NOT NULL,
  `Address` text NOT NULL,
  `City` varchar(250) NOT NULL,
  `PostalCode` varchar(30) NOT NULL,
  `Country` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`CustomerID`, `CustomerName`, `Address`, `City`, `PostalCode`, `Country`) VALUES
(2, 'Sandeep', 'Gorai', 'Mumbai', '400092', 'India'),
(3, 'Kavita', 'Gorai', 'Mumbai', '400092', 'India'),
(4, 'Sandeep', 'Gorai', 'Mumbai', '400092', 'India'),
(5, 'Kavita', 'Gorai', 'Mumbai', '400092', 'India'),
(37, 'Sandeep', 'Gorai', 'Mumbai', '400092', 'India'),
(38, 'Kavita', 'Gorai', 'Mumbai', '400092', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `gender` varchar(10) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`id`, `name`, `address`, `gender`, `designation`, `age`) VALUES
(4, 'Charles D. Horst', '1636 Walnut Hill Drive\r\nCincinnati, OH 45202', 'Male', 'Financial investigator', 29),
(5, 'Beau L. Clayton', '3588 Karen Lane\r\nLouisville, KY 40223', 'Male', 'Extractive metallurgical engin', 33),
(6, 'Ramona W. Burns', '2170 Ocala Street\r\nOrlando, FL 32801', 'Female', 'Electronic typesetting machine operator', 27),
(7, 'Jennifer A. Morrison', '2135 Lakeland Terrace\r\nPlymouth, MI 48170', 'Female', 'Rigging chaser', 29),
(8, 'Susan M. Juarez', '3177 Horseshoe Lane\r\nNorristown, PA 19403', 'Female', 'Control and valve installer', 25),
(9, 'Ellan D. Downie', '384 Flynn Street\r\nStrongsville, OH 44136', 'Female', 'Education and training manager', 26),
(10, 'Larry T. Williamson', '1424 Andell Road\r\nBrentwood, TN 37027', 'Male', 'Teaching assistant', 30),
(11, 'Lauren M. Reynolds', '4798 Echo Lane\r\nKentwood, MI 49512', 'Female', 'Internet developer', 22),
(12, 'Joseph L. Judge', '3717 Junkins Avenue\r\nMoultrie, GA 31768', 'Male', 'Refrigeration mechanic', 35),
(13, 'Eric C. Lavelle', '1120 Whitetail Lane\r\nDallas, TX 75207', 'Male', 'Model', 21),
(14, 'Cheryl T. Smithers', '1203 Abia Martin Drive\r\nCommack, NY 11725', 'Female', 'Personal banker', 23),
(15, 'Tonia J. zain', '4724 Rocky Road\r\nPhiladelphia, PA 19107', 'Male', 'Facilitator', 29),
(16, 'Stephanie P. Lederman', '2117 Larry Street\r\nWaukesha, WI 53186', 'Female', 'Mental health aide', 27),
(17, 'Edward F. Sanchez', '2313 Elliott Street\r\nManchester, NH 03101', 'Male', 'Marine oiler', 28),
(18, 'Clara Gilliam', '63 Woodridge Lane\r\nMemphis, TN 38138', 'Female', 'Programmer', 24),
(19, 'Barbra K. Hurley', '1241 Canis Heights Drive\r\nLos Angeles, CA 90017', 'Female', 'Service technician', 26),
(20, 'Antonio J. Forbes', '403 Snyder Avenue\r\nCharlotte, NC 28208', 'Male', 'Faller', 32),
(21, 'Charles D. Horst', '1636 Walnut Hill Drive\r\nCincinnati, OH 45202', 'Male', 'Financial investigator', 29),
(22, 'Beau L. Clayton', '3588 Karen Lane\r\nLouisville, KY 40223', 'Male', 'Extractive metallurgical engin', 33),
(23, 'Ramona W. Burns', '2170 Ocala Street\r\nOrlando, FL 32801', 'Female', 'Electronic typesetting machine operator', 27),
(24, 'Jennifer A. Morrison', '2135 Lakeland Terrace\r\nPlymouth, MI 48170', 'Female', 'Rigging chaser', 29),
(25, 'Susan M. Juarez', '3177 Horseshoe Lane\r\nNorristown, PA 19403', 'Female', 'Control and valve installer', 25),
(26, 'Ellan D. Downie', '384 Flynn Street\r\nStrongsville, OH 44136', 'Female', 'Education and training manager', 26),
(27, 'Larry T. Williamson', '1424 Andell Road\r\nBrentwood, TN 37027', 'Male', 'Teaching assistant', 30),
(28, 'Lauren M. Reynolds', '4798 Echo Lane\r\nKentwood, MI 49512', 'Female', 'Internet developer', 22),
(29, 'Joseph L. Judge', '3717 Junkins Avenue\r\nMoultrie, GA 31768', 'Male', 'Refrigeration mechanic', 35),
(30, 'Eric C. Lavelle', '1120 Whitetail Lane\r\nDallas, TX 75207', 'Male', 'Model', 21),
(31, 'Cheryl T. Smithers', '1203 Abia Martin Drive\r\nCommack, NY 11725', 'Female', 'Personal banker', 23),
(32, 'Tonia J. Diaz', '4724 Rocky Road\r\nPhiladelphia, PA 19107', 'Female', 'Facilitator', 29),
(33, 'Stephanie P. Lederman', '2117 Larry Street\r\nWaukesha, WI 53186', 'Female', 'Mental health aide', 27),
(34, 'Edward F. Sanchez', '2313 Elliott Street\r\nManchester, NH 03101', 'Male', 'Marine oiler', 28),
(35, 'Clara Gilliam', '63 Woodridge Lane\r\nMemphis, TN 38138', 'Female', 'Programmer', 24),
(36, 'Barbra K. Hurley', '1241 Canis Heights Drive\r\nLos Angeles, CA 90017', 'Female', 'Service technician', 26),
(37, 'Antonio J. Forbes', '403 Snyder Avenue\r\nCharlotte, NC 28208', 'Male', 'Faller', 32),
(38, 'Charles D. Horst', '1636 Walnut Hill Drive\r\nCincinnati, OH 45202', 'Male', 'Financial investigator', 29),
(39, 'Beau L. Clayton', '3588 Karen Lane\r\nLouisville, KY 40223', 'Male', 'Extractive metallurgical engin', 33),
(40, 'Ramona W. Burns', '2170 Ocala Street\r\nOrlando, FL 32801', 'Female', 'Electronic typesetting machine operator', 27),
(41, 'Jennifer A. Morrison', '2135 Lakeland Terrace\r\nPlymouth, MI 48170', 'Female', 'Rigging chaser', 29),
(42, 'Susan M. Juarez', '3177 Horseshoe Lane\r\nNorristown, PA 19403', 'Female', 'Control and valve installer', 25),
(43, 'Ellan D. Downie', '384 Flynn Street\r\nStrongsville, OH 44136', 'Female', 'Education and training manager', 26),
(44, 'Larry T. Williamson', '1424 Andell Road\r\nBrentwood, TN 37027', 'Male', 'Teaching assistant', 30),
(45, 'Lauren M. Reynolds', '4798 Echo Lane\r\nKentwood, MI 49512', 'Female', 'Internet developer', 22),
(46, 'Joseph L. Judge', '3717 Junkins Avenue\r\nMoultrie, GA 31768', 'Male', 'Refrigeration mechanic', 35);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_form`
--

CREATE TABLE `tbl_form` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_form`
--

INSERT INTO `tbl_form` (`id`, `name`, `message`) VALUES
(1, 'sandeep ', 'hii sandeep'),
(2, 'sandeep ', 'hello sandeep'),
(3, 'sandeep ', 'fsdgdfgtd'),
(4, 'admin', 'admin'),
(5, 'sandeep ', 'hello world'),
(6, 'sandeep ', 'dskbkshj'),
(7, 'fasdfsdf', 'klsnfosvhnvf'),
(8, 'xcZCXCXC', 'vsdvsdvs'),
(9, 'sandeep ', ''),
(10, 'sandeep ', ''),
(11, 'xzxbxg', ''),
(12, 'arman ansari', ''),
(13, 'eaew', ''),
(14, 'sandeep ', 'fjhyudgfigjkvncbdhf'),
(15, 'sandeep', ',kgnjnjzjzbxczxv,nkjsd'),
(16, 'dgfdsgdgha', 'hyfjuuk'),
(17, 'efargsg', 'gregser'),
(18, 'csdgdhh', 'greu67i8t7'),
(19, 'sandeep ', 'dfsdfhdsh'),
(20, 'sandeep ', 'gdfzgfdsg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gender`
--

CREATE TABLE `tbl_gender` (
  `id` int(11) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gender`
--

INSERT INTO `tbl_gender` (`id`, `gender`) VALUES
(1, 'Male'),
(2, 'Female'),
(3, 'Other'),
(4, 'Female'),
(5, ''),
(6, 'Male'),
(7, 'Female'),
(8, 'Other'),
(9, 'Male'),
(10, 'Female'),
(11, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_images`
--

CREATE TABLE `tbl_images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_images`
--

INSERT INTO `tbl_images` (`id`, `name`) VALUES
(16, 'backblue.gif'),
(15, 'pubg1.jpg'),
(14, 'pubg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`id`, `name`) VALUES
(1, 'PHP,ASP,JSP'),
(2, 'ASP,JSP,Python'),
(3, 'ASP,JSP,Python');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_name`
--

CREATE TABLE `tbl_name` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_name`
--

INSERT INTO `tbl_name` (`id`, `name`) VALUES
(1, 'gdjtfv,jhv'),
(2, 'hfcmnb bbfjkuv'),
(3, 'hgukyghj,'),
(4, 'jbiygbhj'),
(5, 'nvjgv'),
(6, 'nbcmhv,jhv '),
(7, 'gkfkgvj'),
(8, 'kguvjhb '),
(9, 'kdac jhv');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` text NOT NULL,
  `post_description` text NOT NULL,
  `post_status` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_description`, `post_status`) VALUES
(1, 'In this post we are going to learn how to save data automatic', 'In this post we are going to learn how to save data automatically in database on specific time interval using Ajax Jquery with PHP and Mysql. This type of functionality you have seen into Wordpress Admin side if you have used Wordpress. If you have used Wordpress CMS, then at Admin side when we have create new post or page then after a specific interval of time it will save as draft our post or page automatically in Database. So our data will safe if we are forget to publish our content and we come after some time then our content will be placed in Database as draft. So, Tthis type of functionality we are going to learn into this post. In this post We will describe you a simple post example. In We have simple form for posting simple article with title and description. When user enter title and description thenafter some time interval post automatically insert into database table. This things happends only after user enter post title and description. In this tutorial if post enter for first time then it insert into database table but if post already inserted then it will update that post data on regular time interval. ', 'draft'),
(2, 'is post we are going to learn how to save data automatically in database on specific time interval using Ajax Jquery with PHP and Mysq', 'is post we are going to learn how to save data automatically in database on specific time interval using Ajax Jquery with PHP and Mysqis post we are going to learn how to save data automatically in database on specific time interval using Ajax Jquery with PHP and Mysqis post we are going to learn how to save data automatically in database on specific time interval using Ajax Jquery with PHP and Mysq', 'draft'),
(3, 'sdfgsdhfggbzfvD', 'sdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvDsdfgsdhfggbzfvD', 'draft'),
(4, 'fgsdgsdggsdfgsdfgsdfgdfgfg', 'fgsdfgsfdgsfdsdgsdgsfdgsffsdfzdsdsdgsdgs', 'draft'),
(5, 'afdddsdffsf', 'fsdafdfd', 'draft'),
(6, 'afdddsdffsf', 'fsdafdfd', 'draft'),
(7, 'sadeepppppp', 'chaurasiya samdeeodifhfncchcn', 'draft'),
(8, 'sandelijsflfnlkj', 'sdlkfjsfhlnsghfsgdsfg.dglh', 'draft'),
(9, 'fxfhhgfhsdfhfhfgfghfghfg', 'sdhshsthsfdhs', 'draft'),
(10, 'dgsdggdsgsdgfdfgsdfgs', 'bdghgngnffdf hmgkjgjhfku,vkjh,v', 'draft'),
(11, 'dfsgdfvdfdfdfb', 'cbnchgjgjmghrdhstrdhdh', 'draft');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `image`, `price`) VALUES
(1, 'Samsung J2 Pro', '1.jpeg', 100.00),
(2, 'HP Notebook', '2.jpeg', 299.00),
(3, 'Panasonic T44 Lite', '3.jpg', 125.00);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sample`
--

CREATE TABLE `tbl_sample` (
  `id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sample`
--

INSERT INTO `tbl_sample` (`id`, `first_name`, `last_name`) VALUES
(10834, 'dgjfgjfgjj', 'fhjfhjfhjhf'),
(10835, 'dfgjdfjfjff', 'jfjfjff,bmhÂ '),
(10836, 'jdfjdfjfhjfh', 'jfhjfghjg'),
(10837, 'fhgjfhjfgjfg', 'jfgjhjfgjfgjg'),
(10838, 'fhjfghjg', 'hjg'),
(10839, 'utyiyturtrty', 'rtyeryreteter'),
(10840, 'dsdfzdffdncjhcm', 'fgxfgxfgdfgfg'),
(10841, 'fgfgfgfg', 'fgfgfgfgfgffg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(250) NOT NULL,
  `student_phone` varchar(20) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `student_name`, `student_phone`, `image`) VALUES
(1, 'Pauline S. Rich', '412-735-0224', 'image_1.jpg'),
(2, 'Sarah C. White', '320-552-9961', 'image_2.jpg'),
(3, 'Samuel L. Leslie', '201-324-8264', 'image_3.jpg'),
(4, 'Norma R. Manly', '478-322-4715', 'image_4.jpg'),
(5, 'Kimberly R. Castro', '479-966-6788', 'image_5.jpg'),
(6, 'Elaine R. Davis', '701-685-8912', 'image_6.jpg'),
(7, 'Concepcion S. Gardner', '607-829-8758', 'image_7.jpg'),
(8, 'Patricia J. White', '803-789-0429', 'image_8.jpg'),
(9, 'Michael M. Bothwell', '214-585-0737', 'image_9.jpg'),
(10, 'Ronald C. Vansickle', '630-571-4107', 'image_10.jpg'),
(11, 'Clarence A. Rich', '904-459-3747', 'image_11.jpg'),
(12, 'Elizabeth W. Peterson', '404-380-9481', 'image_12.jpg'),
(13, 'Renee R. Hewitt', '323-350-4973', 'image_13.jpg'),
(14, 'John K. Love', '337-229-1983', 'image_14.jpg'),
(15, 'Teresa J. Rincon', '216-394-6894', 'image_15.jpg'),
(16, 'Erin S. Huckaby', '503-284-8652', 'image_16.jpg'),
(17, 'Brian A. Handley', '989-304-7122', 'image_17.jpg'),
(18, 'Michelle A. Polk', '540-232-0351', 'image_18.jpg'),
(19, 'Wanda M. Brown', '718-262-7466', 'image_19.jpg'),
(20, 'Phillip A. Hatcher', '407-492-5727', 'image_20.jpg'),
(21, 'Dennis J. Terrell', '903-863-5810', 'image_21.jpg'),
(22, 'Britney F. Johnson', '972-421-6933', 'image_22.jpg'),
(23, 'Rachelle J. Martin', '920-397-4224', 'image_23.jpg'),
(24, 'Leila E. Ledoux', '615-425-9930', 'image_24.jpg'),
(25, 'Darrell A. Fields', '708-887-1913', 'image_25.jpg'),
(26, 'Linda D. Carter', '909-386-7998', 'image_26.jpg'),
(27, 'Melva J. Palmisano', '630-643-8763', 'image_27.jpg'),
(28, 'Jessica V. Windham', '513-807-9224', 'image_28.jpg'),
(29, 'Karen T. Martin', '847-385-1621', 'image_29.jpg'),
(30, 'Jack K. McDonough', '561-641-4509', 'image_30.jpg'),
(31, 'John M. Williams', '508-269-9346', 'image_31.jpg'),
(32, 'Amelia W. Davis', '347-537-8052', 'image_32.jpg'),
(33, 'Gertrude W. Lawrence', '510-702-7415', 'image_33.jpg'),
(34, 'Michael L. Harris', '252-219-4076', 'image_34.jpg'),
(35, 'Casey A. Groves', '810-334-9674', 'image_35.jpg'),
(36, 'James H. Wilson', '865-259-6772', 'image_36.jpg'),
(37, 'James A. Wesley', '443-217-1859', 'image_37.jpg'),
(38, 'Armando C. Gay', '716-252-9230', 'image_38.jpg'),
(39, 'James M. Duarte', '402-840-0541', 'image_39.jpg'),
(40, 'Jason E. West', '360-610-7730', 'image_40.jpg'),
(41, 'Gloria H. Saucedo', '205-861-3306', 'image_41.jpg'),
(42, 'Paul T. Moody', '914-683-4994', 'image_42.jpg'),
(43, 'Sandra L. Williams', '310-335-1336', 'image_43.jpg'),
(44, 'Elaine T. Deville', '626-513-8306', 'image_44.jpg'),
(45, 'Robyn L. Spangler', '754-224-7023', 'image_45.jpg'),
(46, 'Sam A. Pino', '806-823-5344', 'image_46.jpg'),
(47, 'Joseph H. Marble', '201-917-2804', 'image_47.jpg'),
(48, 'Mark M. Bassett', '206-592-4665', 'image_48.jpg'),
(49, 'Edgar M. Billy', '978-365-0324', 'image_49.jpg'),
(50, 'Connie M. Yang', '815-288-5435', 'image_50.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `first_name`, `last_name`) VALUES
(89, 'christine', 'Smith'),
(104, 'deepak', 'chaurasiya'),
(87, 'Romeo', 'Mary'),
(86, 'Smith', 'John'),
(103, 'sonal', 'chaurasiya'),
(96, 'Sandeep', 'Chaur'),
(102, 'Manoj', 'chaurasiya');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `first_name`, `last_name`, `phone`, `email`) VALUES
(10, 'Lynn', 'Madrid', '989-685-6300', 'lymmmadrid@gmail.com'),
(11, 'Donald', 'Wheeler', '252-315-7813', 'donaldwheeler@gmail.com'),
(12, 'Margaret', 'Washington', '936-854-0533', 'margaretwashington@gmail.com'),
(13, 'William', 'Olivarez', '856-855-0612', 'williamolivaraz@gmail.com'),
(14, 'Larry', 'Henson', '515-314-7896', 'larryhenson@gmail.com'),
(15, 'Ladonna', 'Hughes', '601-637-7771', 'ladonnahugjes@gmail.com'),
(16, 'Joshua', 'Tinker', '757-413-7159', 'joshuatinker@gmail.com'),
(17, 'Damian', 'Salley', '330-302-5687', 'damiansalley@gmail.com'),
(18, 'Joyce', 'Hollins', '412-374-0949', 'joycehollins@gmail.com'),
(19, 'Jan', 'Schuman', '775-243-7818', 'janschuman@gmail.com'),
(20, 'Millie', 'Richards', '802-694-4273', 'millierichards@gmail.com'),
(21, 'Mary', 'Navarrete', '601-986-1079', 'marynavarrete@gmail.com'),
(22, 'Maggie', 'Noble', '432-332-0287', 'maggienoble@gmail.com'),
(23, 'Doris', 'Evans', '803-744-0440', 'dorisevans@gmail.com'),
(24, 'Christopher', 'Thompson', '919-902-9049', 'christoperthompson@gmail.com'),
(25, 'Lynn', 'Madrid', '989-685-6300', 'lymmmadrid@gmail.com'),
(26, 'Donald', 'Wheeler', '252-315-7813', 'donaldwheeler@gmail.com'),
(27, 'Margaret', 'Washington', '936-854-0533', 'margaretwashington@gmail.com'),
(28, 'William', 'Olivarez', '856-855-0612', 'williamolivaraz@gmail.com'),
(29, 'Larry', 'Henson', '515-314-7896', 'larryhenson@gmail.com'),
(30, 'Ladonna', 'Hughes', '601-637-7771', 'ladonnahugjes@gmail.com'),
(31, 'Joshua', 'Tinker', '757-413-7159', 'joshuatinker@gmail.com'),
(32, 'Damian', 'Salley', '330-302-5687', 'damiansalley@gmail.com'),
(33, 'Joyce', 'Hollins', '412-374-0949', 'joycehollins@gmail.com'),
(34, 'Jan', 'Schuman', '775-243-7818', 'janschuman@gmail.com'),
(35, 'Millie', 'Richards', '802-694-4273', 'millierichards@gmail.com'),
(36, 'Mary', 'Navarrete', '601-986-1079', 'marynavarrete@gmail.com'),
(37, 'Maggie', 'Noble', '432-332-0287', 'maggienoble@gmail.com'),
(38, 'Doris', 'Evans', '803-744-0440', 'dorisevans@gmail.com'),
(39, 'sand', 'deep', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `image`) VALUES
(1, 'sandeep', 'chaurasiya', 'img.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `codeigniter_register`
--
ALTER TABLE `codeigniter_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_state_city`
--
ALTER TABLE `country_state_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produc`
--
ALTER TABLE `produc`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product1`
--
ALTER TABLE `product1`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sample_data`
--
ALTER TABLE `sample_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_form`
--
ALTER TABLE `tbl_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gender`
--
ALTER TABLE `tbl_gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_name`
--
ALTER TABLE `tbl_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sample`
--
ALTER TABLE `tbl_sample`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `codeigniter_register`
--
ALTER TABLE `codeigniter_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `country_state_city`
--
ALTER TABLE `country_state_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `produc`
--
ALTER TABLE `produc`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sample_data`
--
ALTER TABLE `sample_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tbl_form`
--
ALTER TABLE `tbl_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_gender`
--
ALTER TABLE `tbl_gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_images`
--
ALTER TABLE `tbl_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_name`
--
ALTER TABLE `tbl_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_sample`
--
ALTER TABLE `tbl_sample`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10843;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
