-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2023 at 05:44 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_ck`
--

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `price` double NOT NULL,
  `img` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id`, `name`, `description`, `price`, `img`, `created_at`, `updated_at`) VALUES
(2, 'Lẩu vịt nấu chao', 'Lẩu vịt nấu chao – món vịt được chọn từ loại vịt xiêm hay vịt cỏ, thịt nhiều và ít mỡ. Trước khi nấu, vịt được dùng ướp với chao trắng chao đỏ, xào cùng hành tím, tỏi, ninh kỹ từ trước, nên khi múc ra cho vào lẩu đã rất mềm ngọt. Khi nấu có thêm rất nhiều nguyên liệu đi kèm như: khoai cao, rau muống, bún, đường, nước mắm ngon, dầu ăn…Thịt vịt trước khi nấu được xào cho săn, đổ nước dừa xâm xấp. Nước lẩu vịt nấu chao vừa có vị cay nồng của chao trắng, chao đỏ, hòa quyện với sự ngọt mát của nước dừa, nước hầm xương.', 348000, 'pA7VKkO9CntrgT34ahXYWCbXuGwneIZI.png', '2023-12-18 11:07:10', '2023-12-18 20:48:26'),
(3, 'Bê xào xả ớt', 'Bê xào xả ớt -là một món ăn hấp dẫn và ngon miệng, kết hợp giữa sự thơm ngon của thịt bê và hương vị đặc trưng của xả và ớt. Món ăn này không chỉ mang lại hương vị cay nồng mà còn là sự kết hợp tinh tế giữa các thành phần chính, tạo nên một trải nghiệm ẩm thực độc đáo.', 198000, 'DGAdtFf6SXoUpClJ1eUy4WHe2Ze20c71.png', '2023-12-18 11:35:14', '2023-12-18 20:53:48'),
(4, 'Nem nướng cuốn bánh hỏi', '\"Nem nướng cuốn bánh hỏi\" là một món ăn truyền thống Việt Nam hấp dẫn, nổi tiếng với hương vị độc đáo và cách bài trí độc đáo. Đây là một sự kết hợp tuyệt vời giữa nem nướng thơm ngon và sợi bánh hỏi mềm mại, tạo nên một trải nghiệm ẩm thực tuyệt vời.', 148000, 'caZrIt8RLaiXdjU7AbRDn4zo7I3ZyFED.png', '2023-12-18 20:58:16', '2023-12-18 20:58:16'),
(5, 'Mắm kho quẹt', '\"Mắm kho quẹt\" là một món ăn truyền thống của người Việt Nam, có hương vị độc đáo và đậm đà. Đây là một loại mắm được làm từ cá, thường là cá linh hoặc cá lóc, và được ướp gia vị rồi phơi khô để tạo ra một sản phẩm có độ mặn, thơm ngon và bền vững.', 90000, '8DORqkQs9MLFXYF6NNZULaRbFuvrxA2i.png', '2023-12-18 21:01:05', '2023-12-18 21:01:05'),
(6, 'Bánh xèo củ hũ dừa', 'Món chay độc lạ đánh bay nắng hè oi ả. Không giống với món bánh xèo truyền thống, củ hũ dừa thơm phức, ngọt lịm tạo nên khác biệt bên trong nhân cùng nấm linh chi nâu sần sật, chấm với nước mắm chua ngọt.', 148000, 'SNNf0Bz2HG4WwsrbuUQdGWnljn9g2dV8.png', '2023-12-18 21:02:56', '2023-12-18 21:02:56'),
(7, 'Măng trúc xào bò', 'Măng trúc xào bò là một món hội tụ đủ chất xơ của măng và đạm của thịt bò. Măng tươi giòn, thịt bò mềm thái mỏng xào cùng tỏi phi thơm tạo nên hương vị đậm đà gần gũi như ngồi bên mâm cơm nóng ở nhà.', 178000, 'X0HVaHb3MOD2CSVjSroSA7zXhWZ4E3tM.png', '2023-12-18 21:04:47', '2023-12-18 21:04:47'),
(8, 'Cá lóc hấp bầu', 'Cá lóc hấp bầu là món ăn lạ mắt, xuất sứ từ miền sông nước, được thưc hiên công phu và tỉ mỉ. Bếp trưởng nhà hàng Phương Nam đã khéo léo nhồi con cá lóc vào trong quả bầu, khi mang ra chỉ thấy quá bầu hình con cá. Cá lóc hấp bầu không chỉ lạ mắt mà còn có hương vị rất thơm ngon, chắc chắn bạn sẽ mê ngay chỉ sau một lần thử', 408000, 'vFA8wriLm01qH1EjUoipcY6SNbB1ZPQi.png', '2023-12-18 21:06:50', '2023-12-18 21:06:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_18_084809_create_dishes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
