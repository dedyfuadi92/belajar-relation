-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.27-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for belajar-relation
CREATE DATABASE IF NOT EXISTS `belajar-relation` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `belajar-relation`;

-- Dumping structure for table belajar-relation.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table belajar-relation.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;

-- Dumping structure for table belajar-relation.hutang_kantins
CREATE TABLE IF NOT EXISTS `hutang_kantins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `siswanto_id` bigint(20) unsigned NOT NULL,
  `nominal` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table belajar-relation.hutang_kantins: ~1 rows (approximately)
DELETE FROM `hutang_kantins`;
INSERT INTO `hutang_kantins` (`id`, `siswanto_id`, `nominal`, `created_at`, `updated_at`) VALUES
	(1, 1, '123000', '2023-08-24 00:07:39', '2023-08-24 00:07:39');

-- Dumping structure for table belajar-relation.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table belajar-relation.migrations: ~9 rows (approximately)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_08_24_063442_create_siswas_table', 1),
	(6, '2023_08_24_064121_create_pinjam_bukus_table', 1),
	(7, '2023_08_24_071544_rename_column_in_table', 2),
	(8, '2023_08_24_080440_create_hutang_kantins_table', 3),
	(9, '2023_08_24_081204_create_slot_parkirs_table', 4);

-- Dumping structure for table belajar-relation.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table belajar-relation.password_reset_tokens: ~0 rows (approximately)
DELETE FROM `password_reset_tokens`;

-- Dumping structure for table belajar-relation.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table belajar-relation.personal_access_tokens: ~0 rows (approximately)
DELETE FROM `personal_access_tokens`;

-- Dumping structure for table belajar-relation.pinjam_bukus
CREATE TABLE IF NOT EXISTS `pinjam_bukus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `buku_nama` varchar(255) NOT NULL,
  `buku_kode` varchar(255) NOT NULL,
  `buku_jenis` varchar(255) NOT NULL,
  `siswa_id` bigint(20) unsigned NOT NULL,
  `mulai` varchar(255) NOT NULL,
  `akhir` varchar(255) NOT NULL,
  `kembali` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table belajar-relation.pinjam_bukus: ~3 rows (approximately)
DELETE FROM `pinjam_bukus`;
INSERT INTO `pinjam_bukus` (`id`, `buku_nama`, `buku_kode`, `buku_jenis`, `siswa_id`, `mulai`, `akhir`, `kembali`, `created_at`, `updated_at`) VALUES
	(1, 'Mencari Cuan Cepat', 'SIS-PB-01', 'Bisnis', 1, '23-08-2023', '24-08-2023', '00-00-0000', '2023-08-23 23:25:20', '2023-08-23 23:25:20'),
	(2, 'Cinta Empat Sudut', 'SIS-PB-02', 'Psikologi', 1, '20-08-2023', '21-08-2023', '23-08-2023', '2023-08-23 23:34:32', '2023-08-23 23:34:32'),
	(3, 'Algoritma Dasar 1', 'SIS-PB-03', 'Komputer', 2, '18-08-2023', '19-08-2023', '24-08-2023', '2023-08-23 23:35:59', '2023-08-23 23:35:59');

-- Dumping structure for table belajar-relation.siswas
CREATE TABLE IF NOT EXISTS `siswas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `nis` varchar(255) DEFAULT NULL,
  `kelas` varchar(255) DEFAULT NULL,
  `wali_murid_ayah` varchar(255) DEFAULT NULL,
  `wali_murid_ibu` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table belajar-relation.siswas: ~2 rows (approximately)
DELETE FROM `siswas`;
INSERT INTO `siswas` (`id`, `nama`, `nis`, `kelas`, `wali_murid_ayah`, `wali_murid_ibu`, `alamat`, `created_at`, `updated_at`) VALUES
	(1, 'Abitole', '123456', '3A', 'Joko', 'Siti', 'Jl. Kalimantan', '2023-08-23 23:08:55', '2023-08-23 23:08:55'),
	(2, 'Salome', '234567', '3B', 'Ferdinand', 'Angel', 'Jl. Merak', '2023-08-23 23:10:07', '2023-08-23 23:10:07');

-- Dumping structure for table belajar-relation.slot_parkirs
CREATE TABLE IF NOT EXISTS `slot_parkirs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `siswanto_id` bigint(20) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table belajar-relation.slot_parkirs: ~1 rows (approximately)
DELETE FROM `slot_parkirs`;
INSERT INTO `slot_parkirs` (`id`, `siswanto_id`, `kode`, `created_at`, `updated_at`) VALUES
	(1, 2, 'ABC-1', '2023-08-24 00:14:50', '2023-08-24 00:14:50');

-- Dumping structure for table belajar-relation.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table belajar-relation.users: ~0 rows (approximately)
DELETE FROM `users`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
