-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2022 at 04:25 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Programming', '2022-06-11 18:39:35', '2022-06-11 18:39:35'),
(2, 'Personal Blog', '2022-06-11 18:40:01', '2022-06-11 18:40:01'),
(4, 'Gaming', '2022-06-12 04:02:49', '2022-06-12 04:02:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_11_061501_create_posts_table', 1),
(6, '2022_06_12_001036_create_categories_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `judul`, `kategori_id`, `image`, `isi`, `created_at`, `updated_at`) VALUES
(2, 'Captain America', 2, '20220612021444.jpg', '<div>Envious of his friend Bucky Barnes’ military enlistment, and undeterred by his own multiple rejections by the U.S. Army, physical weakling Steve Rogers made one more attempt to join the march of men to fight for their country in the dark days of World War II. Rogers’ valiant wish to fight bullies wherever they were grabbed the attention of scientist Dr. Abraham Erskine, and he handpicked the idealistic young man for the Army’s Super-Soldier program under his supervision. Though Rogers learned of Erskine’s disastrous previous attempts to realize a super-soldier, Germany’s so-called “Red Skull,” he braved the process and emerged from it a new man. With a powerful body and heightened speed and reflexes, Rogers faced his first challenge when forced to chase down Dr. Erskine’s assassin immediately following the experiment. In doing so, he also learned of the involvement of Hydra, the Nazi science division, in the doctor’s murder. The Army moved swiftly to create a colorful, star-spangled persona for Steve Rogers they called “Captain America,” and put him on a tour to sell war bonds. Chafing at what he felt was inaction, Rogers jumped at the chance to join the real fighting when he received news of the capture of his friend Barnes’ army division and rushed to rescue the soldiers. Upon the successful completion of the unplanned mission—and a brief meeting with the Red Skull himself—Rogers determined his path as a one-man fighting force.</div>', '2022-06-11 19:14:44', '2022-06-13 00:43:19'),
(6, 'PUBG: Battlegrounds', 4, '20220612110602.jpg', '<div>PUBG: Battlegrounds (previously known as PlayerUnknown\'s Battlegrounds, or simply PUBG) is an online multiplayer battle royale game developed and published by PUBG Studios, a subsidiary of Krafton. The game is based on previous mods that were created by Brendan \"PlayerUnknown\" Greene for other games, inspired by the 2000 Japanese film Battle Royale, and expanded into a standalone game under Greene\'s creative direction. In the game, up to one hundred players parachute onto an island and scavenge for weapons and equipment to kill others while avoiding getting killed themselves. The available safe area of the game\'s map decreases in size over time, directing surviving players into tighter areas to force encounters. The last surviving player (or team) wins the round.&nbsp;<br><br>This is the first game in the series, named PUBG Universe. PUBG: Battlegrounds was first released for Microsoft Windows via Steam\'s early access beta program in March 2017, with a full release in December 2017. The game was also released by Microsoft Studios for the Xbox One via its Xbox Game Preview program that same month, and officially released in September 2018. PUBG Mobile, a free-to-play mobile game version for Android and iOS, was released in 2018, in addition to a port for the PlayStation 4. A version for the Stadia streaming platform was released in April 2020, Xbox Series X/S and PlayStation 5 versions released in November 2020. PUBG: Battlegrounds is the best-selling video game on PC and Xbox One, also the fifth best-selling video game of all time, sold over 75 million copies on personal computers and game consoles as end of 2021. While the more successful PUBG Mobile\'s global version has accumulated more than 1 billion downloads and grossed over $8.3 billion on mobile devices making it the fourth highest-grossing mobile game, combined with the revenue of PC and console game\'s $4.65 billion, PUBG: Battlegrounds has a total revenue of $12.87 billion as of April 2022, making it one of the highest-grossing video games of all time. Also, combined with 1.12 billion mobile players, PUBG: Battlegrounds has a total player count of 1.2 billion as of August 2021, surpassed Crossfire to be the most-played video game of all time.&nbsp;<br><br>The main game has been free-to-play since January 2022. PUBG received positive reviews from critics, who found that while the game had some technical flaws, it presented new types of gameplay that could be easily approached by players of any skill level and was highly replayable. The game was attributed to popularizing the battle royale genre, with a number of unofficial Chinese clones also being produced following its success. The game received several Game of the Year nominations, among other accolades. PUBG Corporation has run several small tournaments and introduced in-game tools to help with broadcasting the game to spectators, as they wish for it to become a popular esport.</div>', '2022-06-12 04:06:02', '2022-06-13 00:43:01'),
(7, 'Laravel - The PHP Framework For Web Artisans', 1, '20220612110906.png', '<div>Laravel and its other first-party packages follow Semantic Versioning. Major framework releases are released every year (~February), while minor and patch releases may be released as often as every week. Minor and patch releases should never contain breaking changes. When referencing the Laravel framework or its components from your application or package, you should always use a version constraint such as ^9.0, since major releases of Laravel do include breaking changes. However, we strive to always ensure you may update to a new major release in one day or less.&nbsp;<br><br>As you may know, Laravel transitioned to yearly releases with the release of Laravel 8. Previously, major versions were released every 6 months. This transition is intended to ease the maintenance burden on the community and challenge our development team to ship amazing, powerful new features without introducing breaking changes. Therefore, we have shipped a variety of robust features to Laravel 8 without breaking backwards compatibility, such as parallel testing support, improved Breeze starter kits, HTTP client improvements, and even new Eloquent relationship types such as \"has one of many\".&nbsp;<br><br>Therefore, this commitment to ship great new features during the current release will likely lead to future \"major\" releases being primarily used for \"maintenance\" tasks such as upgrading upstream dependencies, which can be seen in these release notes. Laravel 9 continues the improvements made in Laravel 8.x by introducing support for Symfony 6.0 components, Symfony Mailer, Flysystem 3.0, improved route:list output, a Laravel Scout database driver, new Eloquent accessor / mutator syntax, implicit route bindings via Enums, and a variety of other bug fixes and usability improvements.</div>', '2022-06-12 04:09:06', '2022-06-12 23:37:04'),
(13, 'Lorem Ipsum', 1, '20220613081847.jpg', '<div>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Natus, saepe ipsam porro consequatur praesentium quibusdam reiciendis illum quidem iure quas tempore alias sunt sapiente magni ea error nesciunt voluptatem perferendis veritatis earum rem cupiditate eum provident nemo. Harum iusto aliquid, totam quod eligendi reiciendis voluptates, nihil aperiam vitae ipsum in veniam molestiae voluptatum error doloremque.&nbsp;<br><br>Ratione libero perspiciatis labore architecto corrupti atque, pariatur sit necessitatibus eaque iste, voluptates velit eligendi inventore reprehenderit, magni deserunt voluptatem quidem iusto nulla? Facere fugiat consequatur laboriosam, voluptatibus asperiores ad! Qui fugiat nam dolores commodi voluptate, autem molestiae. Aspernatur, harum. Dolorum at vero voluptate odit?</div>', '2022-06-13 00:17:30', '2022-06-13 01:18:47'),
(14, 'Acara Musang II', 2, '20220613081826.png', '<div>Debitis ullam quaerat, quod optio voluptatum id adipisci natus eius soluta voluptate vel laborum provident alias sequi placeat libero est laboriosam perspiciatis iste quam veritatis minus omnis. Debitis quisquam itaque nobis iusto impedit, exercitationem deleniti corporis ea laboriosam sequi rerum excepturi ex molestias veritatis asperiores corrupti reprehenderit. Nesciunt sint adipisci eius ex quibusdam ad perferendis commodi explicabo sed magnam eligendi omnis vel nobis in, dignissimos iste! Et reiciendis similique unde recusandae, distinctio ratione. Illum numquam inventore enim recusandae saepe ut accusamus quia dolores debitis voluptatem non sit, voluptate ex.</div><div><br></div><div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates suscipit laboriosam hic provident quisquam sequi, excepturi nobis pariatur officia unde eos rerum ratione, quos laudantium saepe, consectetur tempora nisi error nulla. Earum, esse. Doloremque natus voluptate alias perferendis nemo unde architecto sed vero dolorem odio tempora consectetur, quasi inventore suscipit nobis assumenda ea accusamus. Nam sint, quam nemo saepe rerum reprehenderit fugit iure doloremque consectetur consequuntur at minus blanditiis, nesciunt porro accusantium corporis veniam tenetur quaerat temporibus! Est, provident. Dicta vel officiis temporibus pariatur perferendis labore blanditiis, totam quibusdam, dolorum harum animi corrupti nostrum iure autem molestiae quod amet et, nam error aliquid voluptatem. A dolorum facilis reiciendis, aliquam sint nihil!&nbsp;</div>', '2022-06-13 00:58:15', '2022-06-13 01:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Rayhan Naufal', 'rayhan.naufal@gmail.com', '$2y$10$daKGWaH2Nqhxu792bMbdUeYggc.s2mgt668aRuMgdngMX2kHECCt2', NULL, '2022-06-12 02:46:33', '2022-06-12 02:46:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
