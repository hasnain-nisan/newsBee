-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2021 at 03:56 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsbee`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Argentina', 'ar', '2021-01-02 06:19:24', '2021-01-02 06:19:24'),
(2, 'Australia', 'au', '2021-01-02 06:19:24', '2021-01-02 06:19:24'),
(3, 'Austria', 'at', '2021-01-02 06:20:44', '2021-01-02 06:20:44'),
(4, 'Belgium', 'be', '2021-01-02 06:20:44', '2021-01-02 06:20:44'),
(5, 'Brazil', 'br', '2021-01-02 06:26:39', '2021-01-02 06:26:39'),
(6, 'Bulgaria', 'bg', '2021-01-02 06:26:39', '2021-01-02 06:26:39'),
(7, 'Bangladesh', 'bd', '2021-01-02 06:26:39', '2021-01-02 06:26:39'),
(8, 'Canada', 'ca', '2021-01-02 06:26:39', '2021-01-02 06:26:39'),
(9, 'China', 'cn', '2021-01-02 06:26:39', '2021-01-02 06:26:39'),
(10, 'Colombia', 'co', '2021-01-02 06:26:39', '2021-01-02 06:26:39'),
(11, 'Czech Republic', 'cz', '2021-01-02 06:26:39', '2021-01-02 06:26:39'),
(12, 'Egypt', 'eg', '2021-01-02 06:26:39', '2021-01-02 06:26:39'),
(13, 'France', 'fr', '2021-01-02 06:26:39', '2021-01-02 06:26:39'),
(14, 'Germany', 'de', '2021-01-02 06:26:39', '2021-01-02 06:26:39'),
(15, 'Greece', 'gr', '2021-01-02 06:33:29', '2021-01-02 06:33:29'),
(16, 'Hong Kong', 'hk', '2021-01-02 06:33:29', '2021-01-02 06:33:29'),
(17, 'Hungary', 'hu', '2021-01-02 06:33:29', '2021-01-02 06:33:29'),
(18, 'India', 'in', '2021-01-02 06:33:29', '2021-01-02 06:33:29'),
(19, 'Indonesia', 'id', '2021-01-02 06:33:29', '2021-01-02 06:33:29'),
(20, 'Ireland', 'ie', '2021-01-02 06:33:29', '2021-01-02 06:33:29'),
(21, 'Israel', 'il', '2021-01-02 06:33:29', '2021-01-02 06:33:29'),
(22, 'Italy', 'it', '2021-01-02 06:33:29', '2021-01-02 06:33:29'),
(23, 'Japan', 'jp', '2021-01-02 06:33:29', '2021-01-02 06:33:29'),
(24, 'Latvia', 'lv', '2021-01-02 06:33:29', '2021-01-02 06:33:29'),
(25, 'Lithuania', 'lt', '2021-01-02 06:33:29', '2021-01-02 06:33:29'),
(26, 'Malaysia', 'my', '2021-01-02 06:33:29', '2021-01-02 06:33:29'),
(27, 'Mexico', 'mx', '2021-01-02 06:36:13', '2021-01-02 06:36:13'),
(28, 'Morocco', 'ma', '2021-01-02 06:36:13', '2021-01-02 06:36:13'),
(29, 'Netherlands', 'nl', '2021-01-02 06:36:13', '2021-01-02 06:36:13'),
(30, 'Newzeland', 'nz', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(31, 'Nigeria', 'ng', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(32, 'Norway', 'no', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(33, 'Philippines', 'ph', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(34, 'Poland', 'pl', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(35, 'Portugal', 'pt', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(36, 'Romania', 'ro', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(37, 'Saudi Arabia', 'sa', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(38, 'Serbia', 'rs', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(39, 'Singapore', 'sg', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(40, 'Slovakia', 'sk', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(41, 'Slovenia', 'si', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(42, 'South Africa', 'za', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(43, 'South Korea', 'kr', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(44, 'Sweden', 'se', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(45, 'Switzerland', 'ch', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(46, 'Taiwan', 'tw', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(47, 'Thailand', 'th', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(48, 'Turkey', 'tr', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(49, 'United Arab Emirates', 'ae', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(50, 'Ukraine', 'ua', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(51, 'United Kingdom', 'gb', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(52, 'United States', 'us', '2021-01-02 06:52:57', '2021-01-02 06:52:57'),
(53, 'Venuzuela', 've', '2021-01-02 06:52:57', '2021-01-02 06:52:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_12_28_151320_create_countries_table', 1),
(4, '2020_12_29_101142_create_news_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `status`, `user_id`, `author`, `title`, `description`, `url`, `source`, `image`, `category`, `language`, `country`, `published_at`, `created_at`, `updated_at`) VALUES
(1, '1st share', 1, 'Slav Kornik', 'Calgary Police Service officer joins somber list of members killed in line of duty', 'Sgt. Andrew Harnett has become the 12th Calgary Police Service officer to die in the line of duty, and the first officer to be killed in nearly 20 years.', 'https://globalnews.ca/news/7551190/calgary-police-officer-killed-sgt-andrew-harnett-list/', 'chbcnews', 'https://globalnews.ca/wp-content/uploads/2021/01/CPS-OFFICER-KILLED-BG.jpg?quality=85&strip=all&w=720&h=480&crop=1', 'general', 'en', 'ca', '2021-01-02T03:04:18+00:00', '2021-01-02 01:15:20', '2021-01-02 01:15:20'),
(2, '2nd share', 1, 'Amy Judd', 'Massive landslide in northern B.C. registered as earthquake in Juneau, Alaska', 'The rockfall is believed to have been triggered on Christmas Eve along the border, sending millions of cubic metres of rock falling thousands of feet into the Taku River valley.', 'https://globalnews.ca/news/7551158/landslide-taku-river-northern-bc-alaska/', 'chbcnews', 'https://globalnews.ca/wp-content/uploads/2021/01/mCaRTHur-tAKu.jpg?quality=85&strip=all&w=720&h=480&crop=1', 'general', 'en', 'ca', '2021-01-02T02:12:54+00:00', '2021-01-02 01:16:03', '2021-01-02 01:16:03'),
(3, 'Is this your dog???', 1, 'Ian Holliday', 'Is this your dog? Burnaby RCMP looking for owner of samoyed that turned up at detachment', 'Mounties in Burnaby took to social media to find the owner of a lost dog that showed up at their detachment Friday morning.', 'https://bc.ctvnews.ca/is-this-your-dog-burnaby-rcmp-looking-for-owner-of-samoyed-that-turned-up-at-detachment-1.5251060', 'ctvbc', 'https://www.ctvnews.ca/polopoly_fs/1.5251061.1609552948!/httpImage/image.jpeg_gen/derivatives/landscape_300/image.jpeg', 'general', 'en', 'ca', '2021-01-02T02:06:52+00:00', '2021-01-02 01:16:24', '2021-01-02 01:16:24'),
(4, 'psychiatrist goal 2021', 1, 'Sarah Komadina', 'Edmonton psychiatrist suggests short-term goals for 2021', 'There still a long road ahead when it comes to the pandemic. One Edmonton psychiatrist suggests a 100-day challenge to improve mental health.', 'https://globalnews.ca/news/7551128/2021-new-years-goals-mental-health/', 'chbcnews', 'https://globalnews.ca/wp-content/uploads/2021/01/mental.jpg?quality=85&strip=all&w=720&h=480&crop=1', 'general', 'en', 'ca', '2021-01-02T01:05:22+00:00', '2021-01-02 01:17:27', '2021-01-02 01:17:27'),
(5, 'Avalance risk', 1, 'Amy Judd', 'Warning issued for human-triggered avalanches in B.C. mountains this weekend', 'The risk of a slide on the South Coast and the Sea to Sky regions is at level four, meaning that human-triggered avalanches are very likely.', 'https://globalnews.ca/news/7551117/avalanche-warning-bc-mountains/', 'chbcnews', 'https://globalnews.ca/wp-content/uploads/2021/01/avalanche-risk.png?w=720&h=480&crop=1', 'general', 'en', 'ca', '2021-01-02T00:46:47+00:00', '2021-01-02 01:17:56', '2021-01-02 01:17:56'),
(6, 'new years eve celebration', 1, 'Malika Karim', '22,000 views and counting: the Forks virtual New Year’s Eve celebrations a hit', '\"We\'ve been one of the biggest in the city, so it felt odd not to be able to do anything.\"', 'https://globalnews.ca/news/7550879/the-forks-virtual-new-years-eve-celebrations-2021/', 'globalnews', 'https://globalnews.ca/wp-content/uploads/2021/01/forks-online-NYE.jpg?quality=85&strip=all&w=688&h=381&crop=1', 'general', 'en', 'ca', '2021-01-02T00:40:51+00:00', '2021-01-02 01:18:25', '2021-01-02 01:18:25'),
(7, 'police checkpost', 1, 'Brenden Purdy', '18 vehicles impounded following Saskatoon New Year’s Eve sobriety checkpoint', 'According to the Saskatoon Police Department 13 of the 18 drivers were under the influence of cannabis or cocaine, while five were impaired by alcohol.', 'https://globalnews.ca/news/7551061/18-vehicles-impounded-saskatoon-nye-sobriety-checkpoint/', 'globalnews', 'https://globalnews.ca/wp-content/uploads/2021/01/purdy-pic-jan-1.jpg?quality=85&strip=all&w=720&h=480&crop=1', 'general', 'en', 'ca', '2021-01-01T23:42:12+00:00', '2021-01-02 01:19:02', '2021-01-02 01:19:02'),
(8, 'women shot', 1, 'Bryann Aguilar', 'Arrest made after woman found shot in vehicle at Appleby GO station parking lot', 'A suspect was arrested on Friday in connection with a shooting in Burlington that seriously injured a woman.', 'https://toronto.ctvnews.ca/arrest-made-after-woman-found-shot-in-vehicle-at-appleby-go-station-parking-lot-1.5250939', 'CTV Toronto News', 'https://www.ctvnews.ca/polopoly_fs/1.120300.1567786835!/httpImage/image.jpg_gen/derivatives/landscape_300/image.jpg', 'general', 'en', 'ca', '2021-01-01T23:38:42+00:00', '2021-01-02 01:19:24', '2021-01-02 01:19:24'),
(9, 'bank closed', 1, 'Olivia O&#8217;Malley', 'Coronavirus: On Rock food bank temporarily closes after employees test positive', 'In order for the staff members and volunteers to finish quarantining the food bank will open a week later than expected, on January 11.', 'https://globalnews.ca/news/7550929/coronavirus-on-rock-food-bank-temporarily-closes/', 'chbcnews', 'https://globalnews.ca/wp-content/uploads/2021/01/on-rock.jpg?quality=85&strip=all&w=720&h=480&crop=1', 'general', 'en', 'ca', '2021-01-01T21:59:07+00:00', '2021-01-02 01:19:41', '2021-01-02 01:19:41'),
(10, 'apartment fire', 1, 'Amy Judd', 'One person dies following New Year’s Eve apartment fire in Duncan', 'Crews were called to a four-storey building in the 2500-block of Lewis Street just before 1 p.m. and saw flames shooting from the top floor suite on the east side.', 'https://globalnews.ca/news/7550934/death-apartment-fire-duncan/', 'globalnews', 'https://globalnews.ca/wp-content/uploads/2021/01/Duncan-fire.jpg?quality=85&strip=all&w=720&h=480&crop=1', 'general', 'en', 'ca', '2021-01-01T21:57:32+00:00', '2021-01-02 01:20:07', '2021-01-02 01:20:07'),
(11, 'politics', 1, 'Richard Zussman', 'Year in Review: The biggest B.C. political stories of 2020', 'This list will give you a sense of the decisions made in 2020 and the events that unfolded.', 'https://globalnews.ca/news/7475323/year-in-review-political-bc-stories-2020/', 'chbcnews', 'https://globalnews.ca/wp-content/uploads/2020/05/jfj50261326-1.jpg?quality=85&strip=all&w=720&h=480&crop=1', 'general', 'en', 'ca', '2021-01-01T21:51:16+00:00', '2021-01-02 01:20:24', '2021-01-02 01:20:24'),
(12, 'stormy start', 1, 'Amy Judd', 'Snow, rain and strong winds: A stormy start to 2021 for B.C.', 'Meteorologist Yvonne Schalle said this \"parade of storms\" will carry into the weekend and strong winds will accompany each storm. Other areas will get heavy rain and snow.', 'https://globalnews.ca/news/7550803/bc-weather-forecast-new-years-day-2021/', 'chbcnews', 'https://globalnews.ca/wp-content/uploads/2013/09/clipboard015.jpg?quality=85&strip=all&w=720&h=414&crop=1', 'general', 'en', 'ca', '2021-01-01T21:08:44+00:00', '2021-01-02 01:21:10', '2021-01-02 01:21:10'),
(13, 'youtube', 1, 'Erica Vella', 'Drake, Justin Trudeau, squirrel warrior course some of Canada’s most popular YouTube videos for 2020', 'A look back at YouTube’s top videos of 2020, an annual list that looks at some of the most popular videos and creators of the year.', 'https://globalnews.ca/news/7523833/drake-justin-trudeau-squirrel-warrior-course-canada-top-youtube-videos-2020/', 'globalnews', 'https://globalnews.ca/wp-content/uploads/2020/02/nyhk103-320_2018_204548.jpg?quality=85&strip=all&w=720&h=480&crop=1', 'general', 'en', 'ca', '2021-01-01T20:33:57+00:00', '2021-01-02 01:21:39', '2021-01-02 01:21:39'),
(14, 'Hugs over masks :)', 1, 'Amy Judd', 'Dozens, including former Canucks anthem singer, attend Vancouver NYE anti-mask rally', 'Former Vancouver Canucks anthem singer Mark Donnelly was also in attendance, speaking to the crowd gathered outside the art gallery before singing the national anthem.', 'https://globalnews.ca/news/7550669/new-years-eve-anti-mask-freedom-rally-vancouver/', 'chbcnews', 'https://globalnews.ca/wp-content/uploads/2021/01/WEB-ANTI-MASK-SIGN.jpg?quality=85&strip=all&w=720&h=480&crop=1', 'general', 'en', 'ca', '2021-01-01T20:23:52+00:00', '2021-01-02 01:22:04', '2021-01-02 01:22:04'),
(15, 'frozen cat', 1, 'Alyse Kotyk', 'Cat that was frozen on icy highway, hit by vehicle recovering in BC SPCA care', 'A cat that was hit by vehicle after collapsing and freezing to an icy highway in northern B.C. is miraculously recovering in SPCA care.', 'https://bc.ctvnews.ca/cat-that-was-frozen-on-icy-highway-hit-by-vehicle-recovering-in-bc-spca-care-1.5250093', 'ctvbc', 'https://www.ctvnews.ca/polopoly_fs/1.5250134.1609452957!/httpImage/image.jpg_gen/derivatives/landscape_300/image.jpg', 'general', 'en', 'ca', '2020-12-31T22:19:25+00:00', '2021-01-02 01:22:31', '2021-01-02 01:22:31'),
(16, '$250k', 1, 'Shelby Thom', 'Princeton, B.C., woman ordered to pay $250k for care of seized, neglected animals', 'Janet Foulds filed the appeal with the British Columbia Farm Industry Review Board after 67 dogs and puppies, 27 horses, and three cats were seized from her property.', 'https://globalnews.ca/news/7534565/princeton-b-c-woman-ordered-to-pay-250k-for-care-of-seized-neglected-animals/', 'chbcnews', 'https://globalnews.ca/wp-content/uploads/2020/09/Princeton-97-animals-seized-BC-SPCA.jpg?quality=85&strip=all&w=720&h=480&crop=1', 'general', 'en', 'ca', '2020-12-20T23:48:15+00:00', '2021-01-02 01:22:50', '2021-01-02 01:22:50'),
(17, 'pet owner', 1, 'Robyn Crawford', 'BC SPCA urges pet owners against at-home neutering after ‘horrific’ incident', 'The BC SPCA is warning against at-home neutering after two cats were dropped off at the Vancouver shelter with disturbing injuries earlier this month.', 'https://globalnews.ca/news/7482072/bc-spca-urges-pet-owners-against-at-home-neutering-after-horrific-incident/', 'chbcnews', 'https://globalnews.ca/wp-content/uploads/2020/11/news-cat-geiger-2.png?w=720&h=480&crop=1', 'general', 'en', 'ca', '2020-11-24T23:20:30+00:00', '2021-01-02 01:23:20', '2021-01-02 01:23:20'),
(18, '72 cat rescued', 1, 'Karla Renic', 'Nova Scotia SPCA seeks urgent help after rescuing 72 cats from two hoarding situations', 'SPCA says medical treatment for cats rescued could exceed $58,000.', 'https://globalnews.ca/news/7438150/nova-scotia-spca-cats-rescued-hoarding/', 'globalnews', 'https://globalnews.ca/wp-content/uploads/2020/11/SPA-cat-rescue.png?w=720&h=396&crop=1', 'general', 'en', 'ca', '2020-11-02T23:40:10+00:00', '2021-01-02 01:23:44', '2021-01-02 01:23:44'),
(19, 'keep your cats at home', 1, 'Amy Judd', '‘They won’t be returned to you’: Warning note posted to cat owners’ mailbox in North Saanich', 'Cat owners in a North Saanich neighbourhood were disturbed recently to find a warning note about their pets posted on their mailbox.', 'https://globalnews.ca/news/7433782/warning-note-cat-owners-saanich/', 'chbcnews', 'https://globalnews.ca/wp-content/uploads/2020/10/cat-notice.jpg?quality=85&strip=all&w=720&h=480&crop=1', 'general', 'en', 'ca', '2020-10-30T23:59:20+00:00', '2021-01-02 01:24:12', '2021-01-02 01:24:12'),
(21, 'missing', 1, 'Karla Renic', 'Yarmouth RCMP search for 20-year-old missing since New Year’s Eve', 'Police say 20-year-old Zachery Lefave, from Hebron, was last seen walking down Hwy. 334 in Plymouth, N.S., around 12:30 a.m. on Jan. 1. ', 'https://globalnews.ca/news/7551392/yarmouth-rcmp-missing-man/', 'chbcnews', 'https://globalnews.ca/wp-content/uploads/2021/01/blu.png?w=720&h=480&crop=1', 'general', 'en', 'ca', '2021-01-02T13:57:17+00:00', '2021-01-02 08:31:27', '2021-01-02 08:31:27'),
(22, 'COVID-19 Vaccine', 1, NULL, 'Britain to allow coronavirus vaccine mixing on rare occasions', 'Mary Ramsay, head of immunisations at Public Health England, said this would only happen on extremely rare occasions.', 'https://globalnews.ca/news/7551382/britain-coronavirus-vaccine-mixing/', 'chbcnews', 'https://globalnews.ca/wp-content/uploads/2020/12/GettyImages-1230157153.jpg?quality=85&strip=all&w=720&h=480&crop=1', 'general', 'en', 'ca', '2021-01-02T13:21:33+00:00', '2021-01-02 08:31:47', '2021-01-02 08:31:47'),
(23, 'david attenborough', 1, 'Chris Jancelewicz', '‘A Perfect Planet’: David Attenborough talks narrating nature series amid COVID-19 lockdown', 'The spellbinding series provides a close, at times mesmerizing look at how the forces of nature drive, shape and support Earth\'s greatest diversity of wildlife.', 'https://globalnews.ca/news/7549021/david-attenborough-a-perfect-planet-interview/', 'chbcnews', 'https://globalnews.ca/wp-content/uploads/2020/12/perfect-planet-turtle.jpg?quality=85&strip=all&w=720&h=480&crop=1', 'general', 'en', 'ca', '2021-01-02T13:00:35+00:00', '2021-01-02 08:32:04', '2021-01-02 08:32:04'),
(24, NULL, 1, NULL, 'China suggests U.S. relations may recover after period of ‘unprecedented difficulty’', 'Wang Yi, China\'s state councilor and foreign minister, said recent U.S. policies towards China had harmed the interests of both countries and brought huge dangers to the world.', 'https://globalnews.ca/news/7551311/china-us-relations-biden/', 'chbcnews', 'https://globalnews.ca/wp-content/uploads/2018/10/xaw103-108_2018_0455361.jpg?quality=85&strip=all&w=720&h=480&crop=1', 'general', 'en', 'ca', '2021-01-02T07:17:02+00:00', '2021-01-02 08:32:55', '2021-01-02 08:32:55'),
(25, NULL, 1, 'Elizabeth McSheffrey', 'Crowd celebrates grand opening of Atlantic Tennis Centre, but not everyone stayed six feet apart', 'More than 40 people attended the ribbon-cutting ceremony, but not all of them kept a safe, six-foot distance.', 'https://globalnews.ca/news/7437580/grand-opening-atlantic-tennis-centre-physical-distancing/', 'globalnews', 'https://globalnews.ca/wp-content/uploads/2020/11/Atlantic-Tennis-Centre.jpg?quality=85&strip=all&w=720&h=480&crop=1', 'general', 'en', 'ca', '2020-11-02T22:42:13+00:00', '2021-01-02 08:35:05', '2021-01-02 08:35:05'),
(26, NULL, 1, NULL, 'Iran tells nuclear inspectors it will enrich uranium up to 20% at underground facility', 'The decision comes after parliament passed a bill, later approved by a constitutional watchdog, aimed at hiking enrichment to pressure Europe into providing sanctions relief.', 'https://globalnews.ca/news/7551286/iran-nuclear-uranium-fordo/', 'chbcnews', 'https://globalnews.ca/wp-content/uploads/2021/01/800.jpeg?quality=85&strip=all&w=720&h=480&crop=1', 'general', 'en', 'ca', '2021-01-02T04:38:44+00:00', '2021-01-02 08:36:22', '2021-01-02 08:36:22'),
(27, NULL, 1, NULL, 'NYSE to delist 3 major Chinese telecom firms as China warns of retaliation', 'The stock exchange said Thursday that it would delist China Telecom Corp. Ltd., China Mobile Ltd. and China Unicom Hong Kong Ltd.', 'https://globalnews.ca/news/7551377/china-us-nyse-delist-telecom/', 'chbcnews', 'https://globalnews.ca/wp-content/uploads/2021/01/1000-29.jpeg?quality=85&strip=all&w=720&h=480&crop=1', 'general', 'en', 'ca', '2021-01-02T12:58:14+00:00', '2021-01-02 08:37:26', '2021-01-02 08:37:26'),
(28, 'brisbane times', 2, 'Latika Bourke', 'Britain\'s bleak midwinter: Will a shot in the arm come too late?', 'There is little sign Brits will be scared or cajoled into saving their National Health Service from breaking point, which insiders fear could come this January.', 'https://www.brisbanetimes.com.au/world/europe/britain-s-bleak-midwinter-will-a-shot-in-the-arm-come-too-late-20210101-p56r4m.html?ref=rss&utm_medium=rss&utm_source=rss_feed', 'brisbanetimes', NULL, 'general', 'en', 'au', '2021-01-02T13:05:00+00:00', '2021-01-02 08:40:54', '2021-01-02 08:40:54'),
(29, NULL, 2, 'AAP Newswire', 'Vatican fund transfers to Aust a mystery', 'The Vatican and the Australian Catholic Church have both denied knowledge of transfers worth $A2.35 billion which Australia\'s financial watchdog says have been sent from Rome to Australia in the past seven years.\"That amount of money and that number of transfers did not leave the Vatican City,\" a senior Vatican official with knowledge of the city-state\'s finances said on Wednesday.The official, who spoke on condition of anonymity, said the Vatican would be seeking details from Australian authorities on the specific origin and destination of the money.\"It\'s not our money because we don\'t have that kind of money,\" he said. \"I am absolutely stunned.\"The figures were made public in December by the Australian Transaction Reports and Analysis Centre (AUSTRAC) in response to a parliamentary question by Australian Senator Concetta Fierravanti-Wells, and first reported by the newspaper The Australian.They involved about 47,000 separate transfers, according to AUSTRAC.Archbishop Mark Coleridge of Brisbane told Reuters the Australian Church was not aware of any such transfers: \"I can assure you that no diocese or other Church entity saw any of the money.\"Fierravanti-Wells had asked what funds had been transferred to Australia \"from the Vatican or any of its entities, or individuals associated with the Vatican or Vatican entities\" since 2014.The official in Rome said the Vatican had around 100 legal entities, including hospitals and the like, \"but they don\'t have that kind of money\".AUSTRAC said the transfers ranged from yearly totals of $A71.6 million in 2014 to $A581.3 million million in 2017.In an email to Reuters on December 24, AUSTRAC said it had no further comment. On Thursday, in a further email, it said it could not comment on the specifics of this story before next week.Two Vatican offices handle money transfers - its bank, commonly known as the IOR, and APSA, the Administration of the Patrimony of the Holy See.The Vatican official said APSA had sent less than 800,000 euros ($A1.28 million) to Australia since 2014, mostly for payment of salaries and expenses for the Vatican embassy, as well as pensions and travel costs.Similarly, the money sent to Australia by the IOR for its clients, typically members of religious orders, was nowhere near the amounts listed by AUSTRAC, he said.\"The Holy See\'s entire yearly budget is about 330 million euros. The (AUSTRAC) figures are about four times that,\" the official said. \"It seems like science fiction.\"He said the Vatican wanted to find out if others had illegally used its name or that of a related entity to move money through banks in other countries.Archbishop Coleridge said the funds had not been used for financial settlements with victims of sexual abuse or for legal costs related to Cardinal George Pell.\"Given the speculation that is rife, there is a need for clarification,\" he said.Pell worked in the Vatican as its treasurer from 2014 to 2017, when he returned to his native Australia to face charges of historical sexual abuse.He spent 404 days in jail before his conviction was overturned last April, and he is currently in Rome. He did not respond to a request for comment.', 'https://www.sheppnews.com.au/world/2020/12/31/2470627/vatican-fund-transfers-to-aust-a-mystery', 'sheppnews', 'http://cognitives-res.cloudinary.com/image/upload/v1609409726/zgpolltvw8nrmqaqtgtt.jpg', 'general', 'en', 'au', '2020-12-31T10:15:00+00:00', '2021-01-02 08:41:26', '2021-01-02 08:41:26'),
(31, 'ganguly heart attack', 2, 'Andrew Wu', 'BCCI president Ganguly in hospital after suspected heart attack', 'The Indian cricket great was reportedly admitted to hospital after complaining of chest pain while working out on Saturday morning.', 'https://www.theage.com.au/sport/cricket/bcci-president-ganguly-in-hospital-after-suspected-heart-attack-20210102-p56rct.html?ref=rss&utm_medium=rss&utm_source=rss_sport', 'theage', NULL, 'general', 'en', 'au', '2021-01-02T09:54:00+00:00', '2021-01-02 08:43:10', '2021-01-02 08:43:10'),
(32, '60,000 Babies Born', 3, 'Basit Aijaz', '60,000 Babies Born On New Year\'s Day In India, Highest In The World', 'India saw the highest number of births in the world on new year\'s day at nearly 60,000, much more than any other country. The number of births, however, is 7,390 less than 2020.', 'https://www.indiatimes.com/trending/social-relevance/india-january-1-births-60000-record-531009.html', 'Indiatimes', 'https://im.indiatimes.in/content/2021/Jan/child-care-1200_5ff0666f9f8ca.jpg', 'general', 'en', 'in', '2021-01-02T14:06:07+00:00', '2021-01-02 08:44:34', '2021-01-02 08:44:34'),
(33, 'Bosnia sets up tents for freezing migrants', 4, 'CDE News', 'Bosnia sets up tents for freezing migrants', 'Trying to resolve a humanitarian disaster, the Bosnian military set up tents Friday for hundreds of migrants who have been stuck in a burned-out refugee &#8230; Read more', 'https://cde.news/bosnia-sets-up-tents-for-freezing-migrants/?utm_source=rss&utm_medium=rss&utm_campaign=bosnia-sets-up-tents-for-freezing-migrants', 'di-ve', NULL, 'general', 'en', 'us', '2021-01-02T14:15:00+00:00', '2021-01-02 08:46:12', '2021-01-02 08:46:12'),
(34, 'death of politicians', 4, NULL, 'The Deaths That Shook Politics in 2020', 'The Deaths That Shook Politics in 2020', 'https://www.politico.com/section/magazine/2020-deaths-obituaries-politics', 'politico', 'https://static.politico.com/12/64/999dac6743c793ad388fbd601096/ledeimage-2020.jpg', 'general', 'en', 'us', '2021-01-02T14:15:59+00:00', '2021-01-02 08:46:37', '2021-01-02 08:46:37'),
(35, NULL, 5, 'Kaz Nagatsuka', 'Soka University races to Day 1 lead at Hakone ekiden', 'The Hachioji-based school captured the Day 1 crown for the first time, crossing the finish line in 5 hours, 28 minutes, 8 seconds.', 'https://www.japantimes.co.jp/sports/2021/01/02/more-sports/track-field/soka-university-races-day-1-lead-hakone-ekiden/', 'search', 'https://cdn-japantimes.com/wp-content/uploads/2021/01/np_file_60893-870x489.jpeg', 'general', 'en', 'jp', '2021-01-02T13:10:41+00:00', '2021-01-02 08:48:34', '2021-01-02 08:48:34'),
(36, NULL, 5, NULL, 'World’s oldest person marks 118th birthday in Fukuoka', 'Kane Tanaka, born on Jan. 2, 1903, was recognized by Guinness World Records as the world\'s oldest living person in March 2019 at the age ...', 'https://www.japantimes.co.jp/news/2021/01/02/national/worlds-oldest-person-marks-118th-birthday-fukuoka/', 'search', 'https://www.japantimes.co.jp/wp-content/uploads/2021/01/np_file_60898-870x489.jpeg', 'general', 'en', 'jp', '2021-01-02T14:15:45+00:00', '2021-01-02 08:48:48', '2021-01-02 08:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `country`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hasnain Nisan', 'nisan', 'nisan@gmail.com', NULL, '$2y$10$fN5NhE7HucJp7oR3CcVN/OLJGqDRf0xak54KECWVvpwB8Na2cSKtG', 'ca', NULL, '2021-01-02 01:12:13', '2021-01-02 01:12:13'),
(2, 'arif parvez', 'arif', 'arif@gmail.com', NULL, '$2y$10$X8I/LFgpfqE//If7GLmGo.8teJnyEZPcPppwS7cpELs89SB2z4Nj.', 'au', NULL, '2021-01-02 08:39:59', '2021-01-02 08:39:59'),
(3, 'Rafiq Mia', 'rafiq', 'rafiq@gmail.com', NULL, '$2y$10$aXb4fNVtluRz8fmsmzbuXeWQftl1yxCQ1cp.POF9a2466wuNCjm9i', 'in', NULL, '2021-01-02 08:43:58', '2021-01-02 08:43:58'),
(4, 'Jahid Hasan', 'jahid', 'jahid@gmail.com', NULL, '$2y$10$dUHjDxDdszdaV6V15jtT6u1qkO23a1muP03cEP5SwTO0JwHfiWA7a', 'us', NULL, '2021-01-02 08:45:32', '2021-01-02 08:45:32'),
(5, 'Mehedi Pulak', 'pulak', 'pulak@gmail.com', NULL, '$2y$10$GbB1JpxBey.0EBHgOa3YkuSZ7ShzVmCKqIIzwnKLwIIaoxhTnRPa2', 'jp', NULL, '2021-01-02 08:48:09', '2021-01-02 08:48:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
