-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Bulan Mei 2023 pada 07.49
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `strapi_desa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::upload.read', NULL, '{}', '[]', '2023-05-23 11:17:06.420000', '2023-05-23 11:17:06.420000', NULL, NULL),
(2, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-05-23 11:17:06.534000', '2023-05-23 11:17:06.534000', NULL, NULL),
(3, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-05-23 11:17:06.724000', '2023-05-23 11:17:06.724000', NULL, NULL),
(4, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-05-23 11:17:06.799000', '2023-05-23 11:17:06.799000', NULL, NULL),
(5, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-05-23 11:17:06.875000', '2023-05-23 11:17:06.875000', NULL, NULL),
(6, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-05-23 11:17:07.291000', '2023-05-23 11:17:07.291000', NULL, NULL),
(7, 'plugin::upload.read', NULL, '{}', '[\"admin::is-creator\"]', '2023-05-23 11:17:07.699000', '2023-05-23 11:17:07.699000', NULL, NULL),
(8, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-05-23 11:17:07.998000', '2023-05-23 11:17:07.998000', NULL, NULL),
(9, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-05-23 11:17:08.141000', '2023-05-23 11:17:08.141000', NULL, NULL),
(10, 'plugin::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', '2023-05-23 11:17:08.215000', '2023-05-23 11:17:08.215000', NULL, NULL),
(11, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-05-23 11:17:08.290000', '2023-05-23 11:17:08.290000', NULL, NULL),
(12, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-05-23 11:17:08.374000', '2023-05-23 11:17:08.374000', NULL, NULL),
(13, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2023-05-23 11:17:08.512000', '2023-05-23 11:17:08.512000', NULL, NULL),
(14, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2023-05-23 11:17:08.573000', '2023-05-23 11:17:08.573000', NULL, NULL),
(15, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2023-05-23 11:17:08.640000', '2023-05-23 11:17:08.640000', NULL, NULL),
(16, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2023-05-23 11:17:08.715000', '2023-05-23 11:17:08.715000', NULL, NULL),
(17, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2023-05-23 11:17:08.782000', '2023-05-23 11:17:08.782000', NULL, NULL),
(18, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2023-05-23 11:17:08.857000', '2023-05-23 11:17:08.857000', NULL, NULL),
(19, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2023-05-23 11:17:08.925000', '2023-05-23 11:17:08.925000', NULL, NULL),
(20, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2023-05-23 11:17:09.245000', '2023-05-23 11:17:09.245000', NULL, NULL),
(21, 'plugin::email.settings.read', NULL, '{}', '[]', '2023-05-23 11:17:09.931000', '2023-05-23 11:17:09.931000', NULL, NULL),
(22, 'plugin::upload.read', NULL, '{}', '[]', '2023-05-23 11:17:10.014000', '2023-05-23 11:17:10.014000', NULL, NULL),
(23, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-05-23 11:17:10.089000', '2023-05-23 11:17:10.089000', NULL, NULL),
(24, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-05-23 11:17:10.180000', '2023-05-23 11:17:10.180000', NULL, NULL),
(25, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-05-23 11:17:10.248000', '2023-05-23 11:17:10.248000', NULL, NULL),
(26, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-05-23 11:17:10.314000', '2023-05-23 11:17:10.314000', NULL, NULL),
(27, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-05-23 11:17:10.397000', '2023-05-23 11:17:10.397000', NULL, NULL),
(28, 'plugin::upload.settings.read', NULL, '{}', '[]', '2023-05-23 11:17:10.456000', '2023-05-23 11:17:10.456000', NULL, NULL),
(29, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2023-05-23 11:17:10.514000', '2023-05-23 11:17:10.514000', NULL, NULL),
(30, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2023-05-23 11:17:10.789000', '2023-05-23 11:17:10.789000', NULL, NULL),
(31, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2023-05-23 11:17:12.067000', '2023-05-23 11:17:12.067000', NULL, NULL),
(32, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2023-05-23 11:17:12.391000', '2023-05-23 11:17:12.391000', NULL, NULL),
(33, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2023-05-23 11:17:12.466000', '2023-05-23 11:17:12.466000', NULL, NULL),
(34, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2023-05-23 11:17:12.557000', '2023-05-23 11:17:12.557000', NULL, NULL),
(35, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2023-05-23 11:17:12.641000', '2023-05-23 11:17:12.641000', NULL, NULL),
(36, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2023-05-23 11:17:12.740000', '2023-05-23 11:17:12.740000', NULL, NULL),
(37, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2023-05-23 11:17:12.815000', '2023-05-23 11:17:12.815000', NULL, NULL),
(38, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2023-05-23 11:17:12.885000', '2023-05-23 11:17:12.885000', NULL, NULL),
(39, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2023-05-23 11:17:14.693000', '2023-05-23 11:17:14.693000', NULL, NULL),
(40, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2023-05-23 11:17:14.881000', '2023-05-23 11:17:14.881000', NULL, NULL),
(41, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2023-05-23 11:17:14.956000', '2023-05-23 11:17:14.956000', NULL, NULL),
(42, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2023-05-23 11:17:15.031000', '2023-05-23 11:17:15.031000', NULL, NULL),
(43, 'admin::marketplace.read', NULL, '{}', '[]', '2023-05-23 11:17:15.106000', '2023-05-23 11:17:15.106000', NULL, NULL),
(44, 'admin::webhooks.create', NULL, '{}', '[]', '2023-05-23 11:17:15.173000', '2023-05-23 11:17:15.173000', NULL, NULL),
(45, 'admin::webhooks.read', NULL, '{}', '[]', '2023-05-23 11:17:15.239000', '2023-05-23 11:17:15.239000', NULL, NULL),
(46, 'admin::webhooks.update', NULL, '{}', '[]', '2023-05-23 11:17:15.298000', '2023-05-23 11:17:15.298000', NULL, NULL),
(47, 'admin::webhooks.delete', NULL, '{}', '[]', '2023-05-23 11:17:15.562000', '2023-05-23 11:17:15.562000', NULL, NULL),
(48, 'admin::users.create', NULL, '{}', '[]', '2023-05-23 11:17:15.715000', '2023-05-23 11:17:15.715000', NULL, NULL),
(49, 'admin::users.read', NULL, '{}', '[]', '2023-05-23 11:17:15.907000', '2023-05-23 11:17:15.907000', NULL, NULL),
(50, 'admin::users.update', NULL, '{}', '[]', '2023-05-23 11:17:15.980000', '2023-05-23 11:17:15.980000', NULL, NULL),
(51, 'admin::users.delete', NULL, '{}', '[]', '2023-05-23 11:17:16.047000', '2023-05-23 11:17:16.047000', NULL, NULL),
(52, 'admin::roles.create', NULL, '{}', '[]', '2023-05-23 11:17:16.130000', '2023-05-23 11:17:16.130000', NULL, NULL),
(53, 'admin::roles.read', NULL, '{}', '[]', '2023-05-23 11:17:16.198000', '2023-05-23 11:17:16.198000', NULL, NULL),
(54, 'admin::roles.update', NULL, '{}', '[]', '2023-05-23 11:17:16.270000', '2023-05-23 11:17:16.270000', NULL, NULL),
(55, 'admin::roles.delete', NULL, '{}', '[]', '2023-05-23 11:17:16.331000', '2023-05-23 11:17:16.331000', NULL, NULL),
(56, 'admin::api-tokens.access', NULL, '{}', '[]', '2023-05-23 11:17:16.405000', '2023-05-23 11:17:16.405000', NULL, NULL),
(57, 'admin::api-tokens.create', NULL, '{}', '[]', '2023-05-23 11:17:16.472000', '2023-05-23 11:17:16.472000', NULL, NULL),
(58, 'admin::api-tokens.read', NULL, '{}', '[]', '2023-05-23 11:17:16.547000', '2023-05-23 11:17:16.547000', NULL, NULL),
(59, 'admin::api-tokens.update', NULL, '{}', '[]', '2023-05-23 11:17:16.622000', '2023-05-23 11:17:16.622000', NULL, NULL),
(60, 'admin::api-tokens.regenerate', NULL, '{}', '[]', '2023-05-23 11:17:16.927000', '2023-05-23 11:17:16.927000', NULL, NULL),
(61, 'admin::api-tokens.delete', NULL, '{}', '[]', '2023-05-23 11:17:16.989000', '2023-05-23 11:17:16.989000', NULL, NULL),
(62, 'admin::project-settings.update', NULL, '{}', '[]', '2023-05-23 11:17:17.055000', '2023-05-23 11:17:17.055000', NULL, NULL),
(63, 'admin::project-settings.read', NULL, '{}', '[]', '2023-05-23 11:17:17.122000', '2023-05-23 11:17:17.122000', NULL, NULL),
(64, 'admin::transfer.tokens.access', NULL, '{}', '[]', '2023-05-23 11:17:17.197000', '2023-05-23 11:17:17.197000', NULL, NULL),
(65, 'admin::transfer.tokens.create', NULL, '{}', '[]', '2023-05-23 11:17:17.264000', '2023-05-23 11:17:17.264000', NULL, NULL),
(66, 'admin::transfer.tokens.read', NULL, '{}', '[]', '2023-05-23 11:17:17.331000', '2023-05-23 11:17:17.331000', NULL, NULL),
(67, 'admin::transfer.tokens.update', NULL, '{}', '[]', '2023-05-23 11:17:17.397000', '2023-05-23 11:17:17.397000', NULL, NULL),
(68, 'admin::transfer.tokens.regenerate', NULL, '{}', '[]', '2023-05-23 11:17:17.464000', '2023-05-23 11:17:17.464000', NULL, NULL),
(69, 'admin::transfer.tokens.delete', NULL, '{}', '[]', '2023-05-23 11:17:17.530000', '2023-05-23 11:17:17.530000', NULL, NULL),
(73, 'plugin::content-manager.explorer.delete', 'api::penduduk.penduduk', '{}', '[]', '2023-05-23 11:22:21.811000', '2023-05-23 11:22:21.811000', NULL, NULL),
(90, 'plugin::content-manager.explorer.delete', 'api::goldar.goldar', '{}', '[]', '2023-05-23 13:32:39.411000', '2023-05-23 13:32:39.411000', NULL, NULL),
(91, 'plugin::content-manager.explorer.publish', 'api::goldar.goldar', '{}', '[]', '2023-05-23 13:32:39.475000', '2023-05-23 13:32:39.475000', NULL, NULL),
(104, 'plugin::content-manager.explorer.delete', 'api::agama.agama', '{}', '[]', '2023-05-24 08:28:50.226000', '2023-05-24 08:28:50.226000', NULL, NULL),
(105, 'plugin::content-manager.explorer.publish', 'api::agama.agama', '{}', '[]', '2023-05-24 08:28:50.330000', '2023-05-24 08:28:50.330000', NULL, NULL),
(124, 'plugin::content-manager.explorer.delete', 'api::wilayah.wilayah', '{}', '[]', '2023-05-24 09:20:40.662000', '2023-05-24 09:20:40.662000', NULL, NULL),
(135, 'plugin::content-manager.explorer.create', 'api::wilayah.wilayah', '{\"fields\":[\"name\",\"penduduks\"]}', '[]', '2023-05-24 09:33:02.773000', '2023-05-24 09:33:02.773000', NULL, NULL),
(137, 'plugin::content-manager.explorer.read', 'api::wilayah.wilayah', '{\"fields\":[\"name\",\"penduduks\"]}', '[]', '2023-05-24 09:33:02.906000', '2023-05-24 09:33:02.906000', NULL, NULL),
(139, 'plugin::content-manager.explorer.update', 'api::wilayah.wilayah', '{\"fields\":[\"name\",\"penduduks\"]}', '[]', '2023-05-24 09:33:04.150000', '2023-05-24 09:33:04.150000', NULL, NULL),
(152, 'plugin::content-manager.explorer.delete', 'api::province.province', '{}', '[]', '2023-05-24 10:09:50.640000', '2023-05-24 10:09:50.640000', NULL, NULL),
(163, 'plugin::content-manager.explorer.delete', 'api::kk.kk', '{}', '[]', '2023-05-24 10:20:10.499000', '2023-05-24 10:20:10.499000', NULL, NULL),
(196, 'plugin::content-manager.explorer.create', 'api::agama.agama', '{\"fields\":[\"nama\"]}', '[]', '2023-05-24 12:22:13.377000', '2023-05-24 12:22:13.377000', NULL, NULL),
(197, 'plugin::content-manager.explorer.create', 'api::goldar.goldar', '{\"fields\":[\"nama\"]}', '[]', '2023-05-24 12:22:13.451000', '2023-05-24 12:22:13.451000', NULL, NULL),
(199, 'plugin::content-manager.explorer.read', 'api::agama.agama', '{\"fields\":[\"nama\"]}', '[]', '2023-05-24 12:22:13.801000', '2023-05-24 12:22:13.801000', NULL, NULL),
(200, 'plugin::content-manager.explorer.read', 'api::goldar.goldar', '{\"fields\":[\"nama\"]}', '[]', '2023-05-24 12:22:13.993000', '2023-05-24 12:22:13.993000', NULL, NULL),
(202, 'plugin::content-manager.explorer.update', 'api::agama.agama', '{\"fields\":[\"nama\"]}', '[]', '2023-05-24 12:22:14.176000', '2023-05-24 12:22:14.176000', NULL, NULL),
(203, 'plugin::content-manager.explorer.update', 'api::goldar.goldar', '{\"fields\":[\"nama\"]}', '[]', '2023-05-24 12:22:14.276000', '2023-05-24 12:22:14.276000', NULL, NULL),
(217, 'plugin::content-manager.explorer.create', 'api::penduduk.penduduk', '{\"fields\":[\"nama\",\"foto_ktp\",\"jenis_kelamin\",\"foto_profil\",\"foto_tanda_tangan\",\"dokter\",\"tanggal_lahir\",\"kenegaraan\",\"lokasi\",\"goldar\",\"agama\",\"wilayah\",\"NIK\"]}', '[]', '2023-05-24 12:33:51.936000', '2023-05-24 12:33:51.936000', NULL, NULL),
(218, 'plugin::content-manager.explorer.read', 'api::penduduk.penduduk', '{\"fields\":[\"nama\",\"foto_ktp\",\"jenis_kelamin\",\"foto_profil\",\"foto_tanda_tangan\",\"dokter\",\"tanggal_lahir\",\"kenegaraan\",\"lokasi\",\"goldar\",\"agama\",\"wilayah\",\"NIK\"]}', '[]', '2023-05-24 12:33:52.017000', '2023-05-24 12:33:52.017000', NULL, NULL),
(219, 'plugin::content-manager.explorer.update', 'api::penduduk.penduduk', '{\"fields\":[\"nama\",\"foto_ktp\",\"jenis_kelamin\",\"foto_profil\",\"foto_tanda_tangan\",\"dokter\",\"tanggal_lahir\",\"kenegaraan\",\"lokasi\",\"goldar\",\"agama\",\"wilayah\",\"NIK\"]}', '[]', '2023-05-24 12:33:54.467000', '2023-05-24 12:33:54.467000', NULL, NULL),
(229, 'plugin::content-manager.explorer.create', 'api::province.province', '{\"fields\":[\"name\"]}', '[]', '2023-05-24 12:46:56.862000', '2023-05-24 12:46:56.862000', NULL, NULL),
(230, 'plugin::content-manager.explorer.read', 'api::province.province', '{\"fields\":[\"name\"]}', '[]', '2023-05-24 12:46:56.936000', '2023-05-24 12:46:56.936000', NULL, NULL),
(231, 'plugin::content-manager.explorer.update', 'api::province.province', '{\"fields\":[\"name\"]}', '[]', '2023-05-24 12:46:57.037000', '2023-05-24 12:46:57.037000', NULL, NULL),
(235, 'plugin::content-manager.explorer.delete', 'api::city.city', '{}', '[]', '2023-05-24 12:55:57.557000', '2023-05-24 12:55:57.557000', NULL, NULL),
(239, 'plugin::content-manager.explorer.create', 'api::city.city', '{\"fields\":[\"name\",\"prov_id\"]}', '[]', '2023-05-24 13:08:55.922000', '2023-05-24 13:08:55.922000', NULL, NULL),
(240, 'plugin::content-manager.explorer.read', 'api::city.city', '{\"fields\":[\"name\",\"prov_id\"]}', '[]', '2023-05-24 13:08:56.069000', '2023-05-24 13:08:56.069000', NULL, NULL),
(241, 'plugin::content-manager.explorer.update', 'api::city.city', '{\"fields\":[\"name\",\"prov_id\"]}', '[]', '2023-05-24 13:08:56.143000', '2023-05-24 13:08:56.143000', NULL, NULL),
(245, 'plugin::content-manager.explorer.delete', 'api::berita.berita', '{}', '[]', '2023-05-24 13:26:21.840000', '2023-05-24 13:26:21.840000', NULL, NULL),
(246, 'plugin::content-manager.explorer.publish', 'api::berita.berita', '{}', '[]', '2023-05-24 13:26:21.898000', '2023-05-24 13:26:21.898000', NULL, NULL),
(247, 'plugin::content-manager.explorer.create', 'api::berita.berita', '{\"fields\":[\"judul\",\"artikel\",\"image\",\"author\",\"headline\"]}', '[]', '2023-05-24 13:53:52.328000', '2023-05-24 13:53:52.328000', NULL, NULL),
(248, 'plugin::content-manager.explorer.read', 'api::berita.berita', '{\"fields\":[\"judul\",\"artikel\",\"image\",\"author\",\"headline\"]}', '[]', '2023-05-24 13:53:52.408000', '2023-05-24 13:53:52.408000', NULL, NULL),
(249, 'plugin::content-manager.explorer.update', 'api::berita.berita', '{\"fields\":[\"judul\",\"artikel\",\"image\",\"author\",\"headline\"]}', '[]', '2023-05-24 13:53:52.477000', '2023-05-24 13:53:52.477000', NULL, NULL),
(250, 'plugin::content-manager.explorer.create', 'api::district.district', '{\"fields\":[\"name\",\"city_id\"]}', '[]', '2023-05-25 10:01:49.377000', '2023-05-25 10:01:49.377000', NULL, NULL),
(251, 'plugin::content-manager.explorer.read', 'api::district.district', '{\"fields\":[\"name\",\"city_id\"]}', '[]', '2023-05-25 10:01:51.269000', '2023-05-25 10:01:51.269000', NULL, NULL),
(252, 'plugin::content-manager.explorer.update', 'api::district.district', '{\"fields\":[\"name\",\"city_id\"]}', '[]', '2023-05-25 10:01:52.301000', '2023-05-25 10:01:52.301000', NULL, NULL),
(253, 'plugin::content-manager.explorer.delete', 'api::district.district', '{}', '[]', '2023-05-25 10:01:53.360000', '2023-05-25 10:01:53.360000', NULL, NULL),
(287, 'plugin::content-manager.explorer.create', 'api::kk.kk', '{\"fields\":[\"no_kk\",\"peran\",\"province\",\"upload_kk\",\"kepala_keluarga\",\"city\",\"district\"]}', '[]', '2023-05-25 12:34:43.487000', '2023-05-25 12:34:43.487000', NULL, NULL),
(288, 'plugin::content-manager.explorer.read', 'api::kk.kk', '{\"fields\":[\"no_kk\",\"peran\",\"province\",\"upload_kk\",\"kepala_keluarga\",\"city\",\"district\"]}', '[]', '2023-05-25 12:34:44.916000', '2023-05-25 12:34:44.916000', NULL, NULL),
(289, 'plugin::content-manager.explorer.update', 'api::kk.kk', '{\"fields\":[\"no_kk\",\"peran\",\"province\",\"upload_kk\",\"kepala_keluarga\",\"city\",\"district\"]}', '[]', '2023-05-25 12:34:45.578000', '2023-05-25 12:34:45.578000', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 3, 1),
(8, 8, 3, 2),
(9, 9, 3, 3),
(10, 10, 3, 4),
(11, 11, 3, 5),
(12, 12, 3, 6),
(13, 13, 1, 1),
(14, 14, 1, 2),
(15, 15, 1, 3),
(16, 16, 1, 4),
(17, 17, 1, 5),
(18, 18, 1, 6),
(19, 19, 1, 7),
(20, 20, 1, 8),
(21, 21, 1, 9),
(22, 22, 1, 10),
(23, 23, 1, 11),
(24, 24, 1, 12),
(25, 25, 1, 13),
(26, 26, 1, 14),
(27, 27, 1, 15),
(28, 28, 1, 16),
(29, 29, 1, 17),
(30, 30, 1, 18),
(31, 31, 1, 19),
(32, 32, 1, 20),
(33, 33, 1, 21),
(34, 34, 1, 22),
(35, 35, 1, 23),
(36, 36, 1, 24),
(37, 37, 1, 25),
(38, 38, 1, 26),
(39, 39, 1, 27),
(40, 40, 1, 28),
(41, 41, 1, 29),
(42, 42, 1, 30),
(43, 43, 1, 31),
(44, 44, 1, 32),
(45, 45, 1, 33),
(46, 46, 1, 34),
(47, 47, 1, 35),
(48, 48, 1, 36),
(49, 49, 1, 37),
(50, 50, 1, 38),
(51, 51, 1, 39),
(52, 52, 1, 40),
(53, 53, 1, 41),
(54, 54, 1, 42),
(55, 55, 1, 43),
(56, 56, 1, 44),
(57, 57, 1, 45),
(58, 58, 1, 46),
(59, 59, 1, 47),
(60, 60, 1, 48),
(61, 61, 1, 49),
(62, 62, 1, 50),
(63, 63, 1, 51),
(64, 64, 1, 52),
(65, 65, 1, 53),
(66, 66, 1, 54),
(67, 67, 1, 55),
(68, 68, 1, 56),
(69, 69, 1, 57),
(73, 73, 1, 61),
(90, 90, 1, 69),
(91, 91, 1, 70),
(104, 104, 1, 82),
(105, 105, 1, 83),
(124, 124, 1, 95),
(135, 135, 1, 97),
(137, 137, 1, 99),
(139, 139, 1, 101),
(152, 152, 1, 108),
(163, 163, 1, 119),
(196, 196, 1, 138),
(197, 197, 1, 139),
(199, 199, 1, 141),
(200, 200, 1, 142),
(202, 202, 1, 144),
(203, 203, 1, 145),
(217, 217, 1, 155),
(218, 218, 1, 156),
(219, 219, 1, 157),
(229, 229, 1, 163),
(230, 230, 1, 164),
(231, 231, 1, 165),
(235, 235, 1, 169),
(239, 239, 1, 173),
(240, 240, 1, 174),
(241, 241, 1, 175),
(245, 245, 1, 179),
(246, 246, 1, 180),
(247, 247, 1, 181),
(248, 248, 1, 182),
(249, 249, 1, 183),
(250, 250, 1, 184),
(251, 251, 1, 185),
(252, 252, 1, 186),
(253, 253, 1, 187),
(287, 287, 1, 188),
(288, 288, 1, 189),
(289, 289, 1, 190);

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2023-05-23 11:17:04.758000', '2023-05-23 11:17:04.758000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2023-05-23 11:17:05.619000', '2023-05-23 11:17:05.619000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2023-05-23 11:17:06.375000', '2023-05-23 11:17:06.375000', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super', 'Admin', NULL, 'superadmin@gmail.com', '$2a$10$lDODklfSyIAMzV8eX43PaeiMYb5.bVREwrn98u2orTiq07zyvfqUe', NULL, NULL, 1, 0, NULL, '2023-05-23 11:18:01.418000', '2023-05-23 11:18:01.418000', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `role_order` double UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `agamas`
--

CREATE TABLE `agamas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `agamas`
--

INSERT INTO `agamas` (`id`, `nama`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Islam', '2023-05-24 08:29:56.483000', '2023-05-24 08:29:58.943000', '2023-05-24 08:29:58.940000', 1, 1),
(2, 'Kristen', '2023-05-24 08:30:27.025000', '2023-05-24 08:30:28.270000', '2023-05-24 08:30:28.267000', 1, 1),
(3, 'Katolik', '2023-05-24 08:30:37.384000', '2023-05-24 08:30:38.585000', '2023-05-24 08:30:38.582000', 1, 1),
(4, 'Hindu', '2023-05-24 08:30:48.607000', '2023-05-24 08:30:49.386000', '2023-05-24 08:30:49.383000', 1, 1),
(5, 'Budha', '2023-05-24 08:31:01.452000', '2023-05-24 08:31:02.402000', '2023-05-24 08:31:02.400000', 1, 1),
(6, 'Konghucu', '2023-05-24 08:31:12.712000', '2023-05-24 08:31:13.702000', '2023-05-24 08:31:13.700000', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `beritas`
--

CREATE TABLE `beritas` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `artikel` longtext DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `headline` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `prov_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cities`
--

INSERT INTO `cities` (`id`, `name`, `prov_id`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(215, 'GRESIK', 15, '2023-05-24 12:59:41.865000', '2023-05-24 12:59:41.863000', NULL, NULL),
(216, 'KEDIRI', 15, '2023-05-24 12:59:41.946000', '2023-05-24 12:59:41.945000', NULL, NULL),
(217, 'SAMPANG', 15, '2023-05-24 12:59:42.110000', '2023-05-24 12:59:42.109000', NULL, NULL),
(218, 'BANGKALAN', 15, '2023-05-24 12:59:42.152000', '2023-05-24 13:00:40.602000', NULL, 1),
(219, 'SUMENEP', 15, '2023-05-24 12:59:42.195000', '2023-05-24 12:59:42.194000', NULL, NULL),
(220, 'SITUBONDO', 15, '2023-05-24 12:59:42.261000', '2023-05-24 12:59:42.261000', NULL, NULL),
(221, 'SURABAYA', 15, '2023-05-24 12:59:42.294000', '2023-05-24 13:01:00.801000', NULL, 1),
(222, 'JEMBER', 15, '2023-05-24 12:59:42.328000', '2023-05-24 12:59:42.327000', NULL, NULL),
(223, 'PAMEKASAN', 15, '2023-05-24 12:59:42.355000', '2023-05-24 12:59:42.354000', NULL, NULL),
(224, 'JOMBANG', 15, '2023-05-24 12:59:42.386000', '2023-05-24 12:59:42.385000', NULL, NULL),
(225, 'PROBOLINGGO', 15, '2023-05-24 12:59:42.419000', '2023-05-24 12:59:42.419000', NULL, NULL),
(226, 'BANYUWANGI', 15, '2023-05-24 12:59:42.453000', '2023-05-24 12:59:42.453000', NULL, NULL),
(227, 'PASURUAN', 15, '2023-05-24 12:59:42.495000', '2023-05-24 12:59:42.494000', NULL, NULL),
(228, 'BOJONEGORO', 15, '2023-05-24 12:59:42.536000', '2023-05-24 12:59:42.535000', NULL, NULL),
(229, 'BONDOWOSO', 15, '2023-05-24 12:59:42.571000', '2023-05-24 12:59:42.570000', NULL, NULL),
(230, 'MAGETAN', 15, '2023-05-24 12:59:42.603000', '2023-05-24 12:59:42.602000', NULL, NULL),
(231, 'LUMAJANG', 15, '2023-05-24 12:59:42.637000', '2023-05-24 12:59:42.636000', NULL, NULL),
(232, 'MALANG', 15, '2023-05-24 12:59:42.668000', '2023-05-24 12:59:42.667000', NULL, NULL),
(233, 'BLITAR', 15, '2023-05-24 12:59:42.703000', '2023-05-24 12:59:42.703000', NULL, NULL),
(234, 'SIDOARJO', 15, '2023-05-24 12:59:42.736000', '2023-05-24 12:59:42.735000', NULL, NULL),
(235, 'LAMONGAN', 15, '2023-05-24 12:59:42.770000', '2023-05-24 12:59:42.769000', NULL, NULL),
(236, 'PACITAN', 15, '2023-05-24 12:59:42.811000', '2023-05-24 12:59:42.810000', NULL, NULL),
(237, 'TULUNGAGUNG', 15, '2023-05-24 12:59:43.063000', '2023-05-24 12:59:43.061000', NULL, NULL),
(238, 'MOJOKERTO', 15, '2023-05-24 12:59:43.105000', '2023-05-24 12:59:43.104000', NULL, NULL),
(239, 'MADIUN', 15, '2023-05-24 12:59:43.147000', '2023-05-24 12:59:43.146000', NULL, NULL),
(240, 'PONOROGO', 15, '2023-05-24 12:59:43.197000', '2023-05-24 12:59:43.195000', NULL, NULL),
(241, 'NGAWI', 15, '2023-05-24 12:59:43.275000', '2023-05-24 12:59:43.272000', NULL, NULL),
(242, 'NGANJUK', 15, '2023-05-24 12:59:43.324000', '2023-05-24 12:59:43.322000', NULL, NULL),
(243, 'TUBAN', 15, '2023-05-24 12:59:43.366000', '2023-05-24 12:59:43.364000', NULL, NULL),
(244, 'TRENGGALEK', 15, '2023-05-24 12:59:43.400000', '2023-05-24 12:59:43.397000', NULL, NULL),
(245, 'BATU', 15, '2023-05-24 12:59:43.442000', '2023-05-24 12:59:43.440000', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `districts`
--

INSERT INTO `districts` (`id`, `name`, `city_id`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(3255, 'DAMPIT', 232, '2023-05-25 10:07:39.742000', '2023-05-25 10:07:39.740000', NULL, NULL),
(3267, 'KARANGPLOSO', 232, '2023-05-25 10:07:39.841000', '2023-05-25 10:07:39.841000', NULL, NULL),
(3268, 'PAKIS', 232, '2023-05-25 10:07:39.952000', '2023-05-25 10:07:39.951000', NULL, NULL),
(3270, 'TIRTOYUDO', 232, '2023-05-25 10:07:39.996000', '2023-05-25 10:07:39.994000', NULL, NULL),
(3283, 'SINGOSARI', 232, '2023-05-25 10:07:40.055000', '2023-05-25 10:07:40.053000', NULL, NULL),
(3284, 'KEPANJEN', 232, '2023-05-25 10:07:40.120000', '2023-05-25 10:07:40.118000', NULL, NULL),
(3287, 'JABUNG', 232, '2023-05-25 10:07:40.160000', '2023-05-25 10:07:40.158000', NULL, NULL),
(3289, 'PONCOKUSUMO', 232, '2023-05-25 10:07:40.201000', '2023-05-25 10:07:40.200000', NULL, NULL),
(3290, 'SUMBERMANJING WETAN', 232, '2023-05-25 10:07:40.248000', '2023-05-25 10:07:40.248000', NULL, NULL),
(3291, 'AMPELGADING', 232, '2023-05-25 10:07:40.354000', '2023-05-25 10:07:40.354000', NULL, NULL),
(3296, 'BLIMBING', 232, '2023-05-25 10:07:40.513000', '2023-05-25 10:07:40.512000', NULL, NULL),
(3297, 'KALIPARE', 232, '2023-05-25 10:07:40.562000', '2023-05-25 10:07:40.561000', NULL, NULL),
(3299, 'KEDUNGKANDANG', 232, '2023-05-25 10:07:40.615000', '2023-05-25 10:07:40.613000', NULL, NULL),
(3317, 'NGAJUNG (NGAJUM)', 232, '2023-05-25 10:07:40.676000', '2023-05-25 10:07:40.675000', NULL, NULL),
(3372, 'SUKUN', 232, '2023-05-25 10:07:40.723000', '2023-05-25 10:07:40.722000', NULL, NULL),
(3375, 'BULULAWANG', 232, '2023-05-25 10:07:40.760000', '2023-05-25 10:07:40.758000', NULL, NULL),
(3393, 'PAGELARAN', 232, '2023-05-25 10:07:40.809000', '2023-05-25 10:07:40.808000', NULL, NULL),
(3426, 'WAJAK', 232, '2023-05-25 10:07:40.848000', '2023-05-25 10:07:40.847000', NULL, NULL),
(3454, 'BANTUR', 232, '2023-05-25 10:07:40.884000', '2023-05-25 10:07:40.883000', NULL, NULL),
(3458, 'WONOSARI', 232, '2023-05-25 10:07:40.923000', '2023-05-25 10:07:40.922000', NULL, NULL),
(3510, 'NGANTANG', 232, '2023-05-25 10:07:40.959000', '2023-05-25 10:07:40.958000', NULL, NULL),
(3517, 'DONOMULYO', 232, '2023-05-25 10:07:40.999000', '2023-05-25 10:07:40.997000', NULL, NULL),
(3560, 'KLOJEN', 232, '2023-05-25 10:07:41.035000', '2023-05-25 10:07:41.033000', NULL, NULL),
(3584, 'KASEMBON', 232, '2023-05-25 10:07:41.073000', '2023-05-25 10:07:41.072000', NULL, NULL),
(3591, 'LAWANG', 232, '2023-05-25 10:07:41.110000', '2023-05-25 10:07:41.108000', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Screenshot 2023-04-19 133559.png', NULL, NULL, 501, 314, '{\"thumbnail\":{\"name\":\"thumbnail_Screenshot 2023-04-19 133559.png\",\"hash\":\"thumbnail_Screenshot_2023_04_19_133559_301e890a0e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":245,\"height\":154,\"size\":64.9,\"url\":\"/uploads/thumbnail_Screenshot_2023_04_19_133559_301e890a0e.png\"},\"small\":{\"name\":\"small_Screenshot 2023-04-19 133559.png\",\"hash\":\"small_Screenshot_2023_04_19_133559_301e890a0e\",\"ext\":\".png\",\"mime\":\"image/png\",\"path\":null,\"width\":500,\"height\":313,\"size\":233.12,\"url\":\"/uploads/small_Screenshot_2023_04_19_133559_301e890a0e.png\"}}', 'Screenshot_2023_04_19_133559_301e890a0e', '.png', 'image/png', '57.95', '/uploads/Screenshot_2023_04_19_133559_301e890a0e.png', NULL, 'local', NULL, '/', '2023-05-23 11:25:54.660000', '2023-05-24 12:35:11.612000', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `files_folder_links`
--

CREATE TABLE `files_folder_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `file_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(11, 1, 5, 'api::penduduk.penduduk', 'foto_ktp', 1),
(12, 1, 5, 'api::penduduk.penduduk', 'foto_profil', 1),
(13, 1, 5, 'api::penduduk.penduduk', 'foto_tanda_tangan', 1),
(15, 1, 1, 'api::kk.kk', 'upload_kk', 1),
(16, 1, 6, 'api::penduduk.penduduk', 'foto_ktp', 1),
(17, 1, 6, 'api::penduduk.penduduk', 'foto_profil', 1),
(18, 1, 6, 'api::penduduk.penduduk', 'foto_tanda_tangan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `goldars`
--

CREATE TABLE `goldars` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `goldars`
--

INSERT INTO `goldars` (`id`, `nama`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'A+', '2023-05-23 13:32:58.498000', '2023-05-23 13:32:59.545000', '2023-05-23 13:32:59.542000', 1, 1),
(2, 'A-', '2023-05-23 13:33:08.951000', '2023-05-23 13:33:10.721000', '2023-05-23 13:33:10.717000', 1, 1),
(3, 'B+', '2023-05-23 13:33:31.155000', '2023-05-23 13:33:32.395000', '2023-05-23 13:33:32.393000', 1, 1),
(4, 'B-', '2023-05-23 13:33:42.186000', '2023-05-23 13:33:43.235000', '2023-05-23 13:33:43.233000', 1, 1),
(5, 'O+', '2023-05-23 13:33:52.901000', '2023-05-23 13:33:53.966000', '2023-05-23 13:33:53.964000', 1, 1),
(6, 'O-', '2023-05-23 13:34:01.476000', '2023-05-23 13:34:02.384000', '2023-05-23 13:34:02.380000', 1, 1),
(7, 'AB+', '2023-05-23 13:34:22.062000', '2023-05-23 13:34:22.708000', '2023-05-23 13:34:22.707000', 1, 1),
(8, 'AB-', '2023-05-23 13:34:35.200000', '2023-05-23 13:34:36.110000', '2023-05-23 13:34:36.108000', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2023-05-23 11:17:04.369000', '2023-05-23 11:17:04.369000', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kks`
--

CREATE TABLE `kks` (
  `id` int(10) UNSIGNED NOT NULL,
  `no_kk` varchar(255) DEFAULT NULL,
  `peran` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kks`
--

INSERT INTO `kks` (`id`, `no_kk`, `peran`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, '1234567890123456', 'Ayah', '2023-05-24 10:28:25.240000', '2023-05-24 12:31:52.822000', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kks_city_links`
--

CREATE TABLE `kks_city_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `kk_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kks_district_links`
--

CREATE TABLE `kks_district_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `kk_id` int(10) UNSIGNED DEFAULT NULL,
  `district_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kks_kepala_keluarga_links`
--

CREATE TABLE `kks_kepala_keluarga_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `kk_id` int(10) UNSIGNED DEFAULT NULL,
  `penduduk_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kks_kepala_keluarga_links`
--

INSERT INTO `kks_kepala_keluarga_links` (`id`, `kk_id`, `penduduk_id`) VALUES
(1, 1, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kks_province_links`
--

CREATE TABLE `kks_province_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `kk_id` int(10) UNSIGNED DEFAULT NULL,
  `province_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kks_province_links`
--

INSERT INTO `kks_province_links` (`id`, `kk_id`, `province_id`) VALUES
(1, 1, 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penduduks`
--

CREATE TABLE `penduduks` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `jenis_kelamin` varchar(255) DEFAULT NULL,
  `dokter` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `kenegaraan` varchar(255) DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penduduks`
--

INSERT INTO `penduduks` (`id`, `nama`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `jenis_kelamin`, `dokter`, `tanggal_lahir`, `kenegaraan`, `lokasi`, `nik`) VALUES
(5, 'Hafidz Alif Rachman ', '2023-05-24 10:06:37.102000', '2023-05-24 10:06:37.102000', 1, 1, 'Laki-laki', 'Budi', '2023-05-22', 'ID', 'Malang', '1234567890123456'),
(6, 'Asep', '2023-05-24 12:35:23.813000', '2023-05-24 12:35:23.813000', 1, 1, 'Laki-laki', 'Budi', '2023-05-07', 'AF', 'Malang', '1234567890123455');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penduduks_agama_links`
--

CREATE TABLE `penduduks_agama_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `penduduk_id` int(10) UNSIGNED DEFAULT NULL,
  `agama_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penduduks_agama_links`
--

INSERT INTO `penduduks_agama_links` (`id`, `penduduk_id`, `agama_id`) VALUES
(4, 5, 1),
(5, 6, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penduduks_goldar_links`
--

CREATE TABLE `penduduks_goldar_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `penduduk_id` int(10) UNSIGNED DEFAULT NULL,
  `goldar_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penduduks_goldar_links`
--

INSERT INTO `penduduks_goldar_links` (`id`, `penduduk_id`, `goldar_id`) VALUES
(4, 5, 7),
(5, 6, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penduduks_wilayah_links`
--

CREATE TABLE `penduduks_wilayah_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `penduduk_id` int(10) UNSIGNED DEFAULT NULL,
  `wilayah_id` int(10) UNSIGNED DEFAULT NULL,
  `penduduk_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penduduks_wilayah_links`
--

INSERT INTO `penduduks_wilayah_links` (`id`, `penduduk_id`, `wilayah_id`, `penduduk_order`) VALUES
(3, 5, 232, 1),
(4, 6, 14, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinces`
--

CREATE TABLE `provinces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'ACEH', '2023-05-24 10:10:43.302000', '2023-05-24 10:21:21.051000', NULL, 1),
(2, 'SUMATERA UTARA', '2023-05-24 10:10:43.386000', '2023-05-24 10:21:25.233000', NULL, 1),
(3, 'SUMATERA BARAT', '2023-05-24 10:10:43.554000', '2023-05-24 10:21:37.518000', NULL, 1),
(4, 'RIAU', '2023-05-24 10:10:43.595000', '2023-05-24 10:21:42.307000', NULL, 1),
(5, 'JAMBI', '2023-05-24 10:10:43.728000', '2023-05-24 10:21:46.300000', NULL, 1),
(6, 'SUMATERA SELATAN', '2023-05-24 10:10:43.795000', '2023-05-24 10:21:49.924000', NULL, 1),
(7, 'BENGKULU', '2023-05-24 10:10:43.844000', '2023-05-24 10:21:53.597000', NULL, 1),
(8, 'LAMPUNG', '2023-05-24 10:10:43.886000', '2023-05-24 10:21:57.486000', NULL, 1),
(9, 'KEPULAUAN BANGKA BELITUNG', '2023-05-24 10:10:43.936000', '2023-05-24 10:22:02.244000', NULL, 1),
(10, 'KEPULAUAN RIAU', '2023-05-24 10:10:43.982000', '2023-05-24 10:22:05.791000', NULL, 1),
(11, 'DKI JAKARTA', '2023-05-24 10:10:44.028000', '2023-05-24 10:22:11.627000', NULL, 1),
(12, 'JAWA BARAT', '2023-05-24 10:10:44.061000', '2023-05-24 10:22:15.281000', NULL, 1),
(13, 'JAWA TENGAH', '2023-05-24 10:10:44.104000', '2023-05-24 10:22:18.523000', NULL, 1),
(14, 'DI YOGYAKARTA', '2023-05-24 10:10:44.145000', '2023-05-24 10:22:21.755000', NULL, 1),
(15, 'JAWA TIMUR', '2023-05-24 10:10:44.186000', '2023-05-24 10:22:25.289000', NULL, 1),
(16, 'BANTEN', '2023-05-24 10:10:44.270000', '2023-05-24 10:22:29.122000', NULL, 1),
(17, 'BALI', '2023-05-24 10:10:44.312000', '2023-05-24 10:22:32.211000', NULL, 1),
(18, 'NUSA TENGGARA BARAT', '2023-05-24 10:10:44.352000', '2023-05-24 10:22:35.807000', NULL, 1),
(19, 'NUSA TENGGARA TIMUR', '2023-05-24 10:10:44.385000', '2023-05-24 10:22:39.163000', NULL, 1),
(20, 'KALIMANTAN BARAT', '2023-05-24 10:10:44.429000', '2023-05-24 10:22:44.606000', NULL, 1),
(21, 'KALIMANTAN TENGAH', '2023-05-24 10:10:44.469000', '2023-05-24 10:22:49.447000', NULL, 1),
(22, 'KALIMANTAN SELATAN', '2023-05-24 10:10:44.506000', '2023-05-24 10:22:53.133000', NULL, 1),
(23, 'KALIMANTAN TIMUR', '2023-05-24 10:10:44.539000', '2023-05-24 10:22:55.983000', NULL, 1),
(24, 'KALIMANTAN UTARA', '2023-05-24 10:10:44.587000', '2023-05-24 10:23:00.663000', NULL, 1),
(25, 'SULAWESI UTARA', '2023-05-24 10:10:44.627000', '2023-05-24 10:23:04.766000', NULL, 1),
(26, 'SULAWESI TENGAH', '2023-05-24 10:10:44.669000', '2023-05-24 10:23:07.411000', NULL, 1),
(27, 'SULAWESI SELATAN', '2023-05-24 10:10:44.843000', '2023-05-24 10:23:10.610000', NULL, 1),
(28, 'SULAWESI TENGGARA', '2023-05-24 10:10:44.880000', '2023-05-24 10:23:13.645000', NULL, 1),
(29, 'GORONTALO', '2023-05-24 10:10:44.921000', '2023-05-24 10:23:16.811000', NULL, 1),
(30, 'SULAWESI BARAT', '2023-05-24 10:10:44.955000', '2023-05-24 10:23:20.201000', NULL, 1),
(31, 'MALUKU', '2023-05-24 10:10:45.003000', '2023-05-24 10:23:26.622000', NULL, 1),
(32, 'MALUKU UTARA', '2023-05-24 10:10:45.055000', '2023-05-24 10:23:29.803000', NULL, 1),
(33, 'PAPUA', '2023-05-24 10:10:45.087000', '2023-05-24 10:23:34.780000', NULL, 1),
(34, 'PAPUA BARAT', '2023-05-24 10:10:45.121000', '2023-05-24 10:23:37.653000', NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `strapi_api_token_permissions_token_links`
--

CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token\",\"connection\":\"default\",\"uid\":\"admin::transfer-token\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token-permission\",\"connection\":\"default\",\"uid\":\"admin::transfer-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"api::agama.agama\":{\"kind\":\"collectionType\",\"collectionName\":\"agamas\",\"info\":{\"singularName\":\"agama\",\"pluralName\":\"agamas\",\"displayName\":\"agama\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nama\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"agamas\",\"info\":{\"singularName\":\"agama\",\"pluralName\":\"agamas\",\"displayName\":\"agama\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nama\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"agama\",\"connection\":\"default\",\"uid\":\"api::agama.agama\",\"apiName\":\"agama\",\"globalId\":\"Agama\",\"actions\":{},\"lifecycles\":{}},\"api::berita.berita\":{\"kind\":\"collectionType\",\"collectionName\":\"beritas\",\"info\":{\"singularName\":\"berita\",\"pluralName\":\"beritas\",\"displayName\":\"berita\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"judul\":{\"type\":\"string\",\"required\":true},\"artikel\":{\"type\":\"richtext\",\"required\":true},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"]},\"author\":{\"type\":\"string\",\"required\":true},\"headline\":{\"type\":\"boolean\",\"default\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"beritas\",\"info\":{\"singularName\":\"berita\",\"pluralName\":\"beritas\",\"displayName\":\"berita\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"judul\":{\"type\":\"string\",\"required\":true},\"artikel\":{\"type\":\"richtext\",\"required\":true},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"]},\"author\":{\"type\":\"string\",\"required\":true},\"headline\":{\"type\":\"boolean\",\"default\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"berita\",\"connection\":\"default\",\"uid\":\"api::berita.berita\",\"apiName\":\"berita\",\"globalId\":\"Berita\",\"actions\":{},\"lifecycles\":{}},\"api::city.city\":{\"kind\":\"collectionType\",\"collectionName\":\"cities\",\"info\":{\"singularName\":\"city\",\"pluralName\":\"cities\",\"displayName\":\"city\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"prov_id\":{\"type\":\"integer\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"cities\",\"info\":{\"singularName\":\"city\",\"pluralName\":\"cities\",\"displayName\":\"city\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"prov_id\":{\"type\":\"integer\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"city\",\"connection\":\"default\",\"uid\":\"api::city.city\",\"apiName\":\"city\",\"globalId\":\"City\",\"actions\":{},\"lifecycles\":{}},\"api::district.district\":{\"kind\":\"collectionType\",\"collectionName\":\"districts\",\"info\":{\"singularName\":\"district\",\"pluralName\":\"districts\",\"displayName\":\"district\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"city_id\":{\"type\":\"integer\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"districts\",\"info\":{\"singularName\":\"district\",\"pluralName\":\"districts\",\"displayName\":\"district\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"city_id\":{\"type\":\"integer\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"district\",\"connection\":\"default\",\"uid\":\"api::district.district\",\"apiName\":\"district\",\"globalId\":\"District\",\"actions\":{},\"lifecycles\":{}},\"api::goldar.goldar\":{\"kind\":\"collectionType\",\"collectionName\":\"goldars\",\"info\":{\"singularName\":\"goldar\",\"pluralName\":\"goldars\",\"displayName\":\"goldar\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nama\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"goldars\",\"info\":{\"singularName\":\"goldar\",\"pluralName\":\"goldars\",\"displayName\":\"goldar\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"nama\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"goldar\",\"connection\":\"default\",\"uid\":\"api::goldar.goldar\",\"apiName\":\"goldar\",\"globalId\":\"Goldar\",\"actions\":{},\"lifecycles\":{}},\"api::kk.kk\":{\"kind\":\"collectionType\",\"collectionName\":\"kks\",\"info\":{\"singularName\":\"kk\",\"pluralName\":\"kks\",\"displayName\":\"kk\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"no_kk\":{\"type\":\"string\",\"maxLength\":16,\"required\":true},\"peran\":{\"type\":\"enumeration\",\"enum\":[\"Ayah\",\"Ibu\"],\"required\":true},\"province\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::province.province\"},\"upload_kk\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"]},\"kepala_keluarga\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::penduduk.penduduk\"},\"city\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::city.city\"},\"district\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::district.district\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"kks\",\"info\":{\"singularName\":\"kk\",\"pluralName\":\"kks\",\"displayName\":\"kk\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"no_kk\":{\"type\":\"string\",\"maxLength\":16,\"required\":true},\"peran\":{\"type\":\"enumeration\",\"enum\":[\"Ayah\",\"Ibu\"],\"required\":true},\"province\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::province.province\"},\"upload_kk\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"]},\"kepala_keluarga\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::penduduk.penduduk\"},\"city\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::city.city\"},\"district\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::district.district\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"kk\",\"connection\":\"default\",\"uid\":\"api::kk.kk\",\"apiName\":\"kk\",\"globalId\":\"Kk\",\"actions\":{},\"lifecycles\":{}},\"api::penduduk.penduduk\":{\"kind\":\"collectionType\",\"collectionName\":\"penduduks\",\"info\":{\"singularName\":\"penduduk\",\"pluralName\":\"penduduks\",\"displayName\":\"penduduk\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"nama\":{\"type\":\"string\",\"required\":true},\"foto_ktp\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"]},\"jenis_kelamin\":{\"type\":\"enumeration\",\"enum\":[\"Laki-laki\",\"Perempuan\"],\"required\":true},\"foto_profil\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"]},\"foto_tanda_tangan\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"]},\"dokter\":{\"type\":\"string\"},\"tanggal_lahir\":{\"type\":\"date\",\"required\":true},\"kenegaraan\":{\"type\":\"string\",\"customField\":\"plugin::country-select.country\",\"required\":true},\"lokasi\":{\"type\":\"string\"},\"goldar\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::goldar.goldar\"},\"agama\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::agama.agama\"},\"wilayah\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::wilayah.wilayah\",\"inversedBy\":\"penduduks\"},\"NIK\":{\"type\":\"string\",\"maxLength\":16,\"unique\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"penduduks\",\"info\":{\"singularName\":\"penduduk\",\"pluralName\":\"penduduks\",\"displayName\":\"penduduk\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"nama\":{\"type\":\"string\",\"required\":true},\"foto_ktp\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"]},\"jenis_kelamin\":{\"type\":\"enumeration\",\"enum\":[\"Laki-laki\",\"Perempuan\"],\"required\":true},\"foto_profil\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"]},\"foto_tanda_tangan\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\"]},\"dokter\":{\"type\":\"string\"},\"tanggal_lahir\":{\"type\":\"date\",\"required\":true},\"kenegaraan\":{\"type\":\"customField\",\"customField\":\"plugin::country-select.country\",\"required\":true},\"lokasi\":{\"type\":\"string\"},\"goldar\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::goldar.goldar\"},\"agama\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::agama.agama\"},\"wilayah\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::wilayah.wilayah\",\"inversedBy\":\"penduduks\"},\"NIK\":{\"type\":\"string\",\"maxLength\":16,\"unique\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"penduduk\",\"connection\":\"default\",\"uid\":\"api::penduduk.penduduk\",\"apiName\":\"penduduk\",\"globalId\":\"Penduduk\",\"actions\":{},\"lifecycles\":{}},\"api::province.province\":{\"kind\":\"collectionType\",\"collectionName\":\"provinces\",\"info\":{\"singularName\":\"province\",\"pluralName\":\"provinces\",\"displayName\":\"province\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"provinces\",\"info\":{\"singularName\":\"province\",\"pluralName\":\"provinces\",\"displayName\":\"province\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"province\",\"connection\":\"default\",\"uid\":\"api::province.province\",\"apiName\":\"province\",\"globalId\":\"Province\",\"actions\":{},\"lifecycles\":{}},\"api::wilayah.wilayah\":{\"kind\":\"collectionType\",\"collectionName\":\"wilayahs\",\"info\":{\"singularName\":\"wilayah\",\"pluralName\":\"wilayahs\",\"displayName\":\"wilayah\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"penduduks\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::penduduk.penduduk\",\"mappedBy\":\"wilayah\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"wilayahs\",\"info\":{\"singularName\":\"wilayah\",\"pluralName\":\"wilayahs\",\"displayName\":\"wilayah\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"penduduks\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::penduduk.penduduk\",\"mappedBy\":\"wilayah\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"wilayah\",\"connection\":\"default\",\"uid\":\"api::wilayah.wilayah\",\"apiName\":\"wilayah\",\"globalId\":\"Wilayah\",\"actions\":{},\"lifecycles\":{}}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"uid\":\"admin::transfer-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"uid\":\"admin::api-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]}}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"uid\":\"admin::transfer-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]}}', 'object', NULL, NULL),
(15, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(16, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(17, 'plugin_upload_metrics', '{\"weeklySchedule\":\"33 30 11 * * 2\",\"lastWeeklyUpdate\":1684816233050}', 'object', NULL, NULL),
(18, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]}}', 'object', NULL, NULL),
(19, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(20, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(21, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(22, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}', 'object', NULL, NULL),
(23, 'plugin_content_manager_configuration_content_types::api::penduduk.penduduk', '{\"uid\":\"api::penduduk.penduduk\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nama\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"nama\":{\"edit\":{\"label\":\"Nama\",\"description\":\"\",\"placeholder\":\"Masukan Nama Lengkap\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nama\",\"searchable\":true,\"sortable\":true}},\"foto_ktp\":{\"edit\":{\"label\":\"Foto KTP\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"foto_ktp\",\"searchable\":false,\"sortable\":false}},\"jenis_kelamin\":{\"edit\":{\"label\":\"Jenis Kelamin\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"jenis_kelamin\",\"searchable\":true,\"sortable\":true}},\"foto_profil\":{\"edit\":{\"label\":\"Foto Profil\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"foto_profil\",\"searchable\":false,\"sortable\":false}},\"foto_tanda_tangan\":{\"edit\":{\"label\":\"Foto Tanda Tangan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"foto_tanda_tangan\",\"searchable\":false,\"sortable\":false}},\"dokter\":{\"edit\":{\"label\":\"Dokter\",\"description\":\"\",\"placeholder\":\"Dokter\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"dokter\",\"searchable\":true,\"sortable\":true}},\"tanggal_lahir\":{\"edit\":{\"label\":\"Tanggal Lahir\",\"description\":\"\",\"placeholder\":\"Masukan Tanggal Lahir\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"tanggal_lahir\",\"searchable\":true,\"sortable\":true}},\"kenegaraan\":{\"edit\":{\"label\":\"Kenegaraan\",\"description\":\"\",\"placeholder\":\"Pilih Kenegaraan\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"kenegaraan\",\"searchable\":true,\"sortable\":true}},\"lokasi\":{\"edit\":{\"label\":\"Lokasi\",\"description\":\"\",\"placeholder\":\"Lokasi/Rumah Sakit\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lokasi\",\"searchable\":true,\"sortable\":true}},\"goldar\":{\"edit\":{\"label\":\"Golongan Darah\",\"description\":\"\",\"placeholder\":\"Pilih Golongan Darah\",\"visible\":true,\"editable\":true,\"mainField\":\"nama\"},\"list\":{\"label\":\"goldar\",\"searchable\":true,\"sortable\":true}},\"agama\":{\"edit\":{\"label\":\"Agama\",\"description\":\"\",\"placeholder\":\"Pilih Agama\",\"visible\":true,\"editable\":true,\"mainField\":\"nama\"},\"list\":{\"label\":\"agama\",\"searchable\":true,\"sortable\":true}},\"wilayah\":{\"edit\":{\"label\":\"Kota\",\"description\":\"\",\"placeholder\":\"Kota/Wilayah\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"wilayah\",\"searchable\":true,\"sortable\":true}},\"NIK\":{\"edit\":{\"label\":\"NIK\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"NIK\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"nama\",\"createdAt\",\"NIK\"],\"edit\":[[{\"name\":\"nama\",\"size\":6},{\"name\":\"NIK\",\"size\":6}],[{\"name\":\"jenis_kelamin\",\"size\":6},{\"name\":\"agama\",\"size\":6}],[{\"name\":\"kenegaraan\",\"size\":6},{\"name\":\"tanggal_lahir\",\"size\":6}],[{\"name\":\"lokasi\",\"size\":6},{\"name\":\"dokter\",\"size\":6}],[{\"name\":\"wilayah\",\"size\":6},{\"name\":\"goldar\",\"size\":6}],[{\"name\":\"foto_profil\",\"size\":12}],[{\"name\":\"foto_tanda_tangan\",\"size\":6},{\"name\":\"foto_ktp\",\"size\":6}]]}}', 'object', NULL, NULL),
(24, 'plugin_content_manager_configuration_content_types::api::goldar.goldar', '{\"uid\":\"api::goldar.goldar\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nama\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"nama\":{\"edit\":{\"label\":\"nama\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nama\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"nama\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"nama\",\"size\":6}]]}}', 'object', NULL, NULL),
(25, 'plugin_content_manager_configuration_content_types::api::agama.agama', '{\"uid\":\"api::agama.agama\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"nama\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"nama\":{\"edit\":{\"label\":\"nama\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"nama\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"nama\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"nama\",\"size\":6}]]}}', 'object', NULL, NULL),
(26, 'plugin_content_manager_configuration_content_types::api::wilayah.wilayah', '{\"uid\":\"api::wilayah.wilayah\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"penduduks\":{\"edit\":{\"label\":\"penduduks\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"nama\"},\"list\":{\"label\":\"penduduks\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"penduduks\",\"size\":6}]]}}', 'object', NULL, NULL),
(27, 'plugin_content_manager_configuration_content_types::api::province.province', '{\"uid\":\"api::province.province\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]]}}', 'object', NULL, NULL),
(28, 'plugin_content_manager_configuration_content_types::api::kk.kk', '{\"uid\":\"api::kk.kk\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"no_kk\",\"defaultSortBy\":\"no_kk\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"no_kk\":{\"edit\":{\"label\":\"No KK\",\"description\":\"\",\"placeholder\":\"Masukan No KK\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"no_kk\",\"searchable\":true,\"sortable\":true}},\"peran\":{\"edit\":{\"label\":\"Peran\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"peran\",\"searchable\":true,\"sortable\":true}},\"province\":{\"edit\":{\"label\":\"Provinsi\",\"description\":\"\",\"placeholder\":\"Cari Provinsi\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"province\",\"searchable\":true,\"sortable\":true}},\"upload_kk\":{\"edit\":{\"label\":\"Upload KK\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"upload_kk\",\"searchable\":false,\"sortable\":false}},\"kepala_keluarga\":{\"edit\":{\"label\":\"Kepala Keluarga\",\"description\":\"\",\"placeholder\":\"Masukan Kepala Keluarga\",\"visible\":true,\"editable\":true,\"mainField\":\"nama\"},\"list\":{\"label\":\"kepala_keluarga\",\"searchable\":true,\"sortable\":true}},\"city\":{\"edit\":{\"label\":\"Kota/Kabupaten\",\"description\":\"\",\"placeholder\":\"Cari Kota/Kabupaten\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"city\",\"searchable\":true,\"sortable\":true}},\"district\":{\"edit\":{\"label\":\"Kecamatan\",\"description\":\"\",\"placeholder\":\"Cari Kecamatan\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"district\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"no_kk\",\"peran\",\"kepala_keluarga\"],\"edit\":[[{\"name\":\"no_kk\",\"size\":6},{\"name\":\"kepala_keluarga\",\"size\":6}],[{\"name\":\"peran\",\"size\":12}],[{\"name\":\"province\",\"size\":6},{\"name\":\"city\",\"size\":6}],[{\"name\":\"district\",\"size\":6},{\"name\":\"upload_kk\",\"size\":6}]]}}', 'object', NULL, NULL),
(34, 'plugin_content_manager_configuration_content_types::api::city.city', '{\"uid\":\"api::city.city\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"prov_id\":{\"edit\":{\"label\":\"prov_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"prov_id\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"prov_id\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"prov_id\",\"size\":4}]]}}', 'object', NULL, NULL),
(35, 'plugin_content_manager_configuration_content_types::api::berita.berita', '{\"uid\":\"api::berita.berita\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"judul\",\"defaultSortBy\":\"judul\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"judul\":{\"edit\":{\"label\":\"judul\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"judul\",\"searchable\":true,\"sortable\":true}},\"artikel\":{\"edit\":{\"label\":\"artikel\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"artikel\",\"searchable\":false,\"sortable\":false}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"author\":{\"edit\":{\"label\":\"author\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"author\",\"searchable\":true,\"sortable\":true}},\"headline\":{\"edit\":{\"label\":\"headline\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"headline\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"judul\",\"image\",\"author\"],\"edit\":[[{\"name\":\"judul\",\"size\":6}],[{\"name\":\"artikel\",\"size\":12}],[{\"name\":\"image\",\"size\":6},{\"name\":\"author\",\"size\":6}],[{\"name\":\"headline\",\"size\":4}]]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(36, 'plugin_content_manager_configuration_content_types::api::district.district', '{\"uid\":\"api::district.district\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"city_id\":{\"edit\":{\"label\":\"city_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"city_id\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"city_id\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"city_id\",\"size\":4}]]}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(81, '{\"tables\":[{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_tokens\",\"indexes\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files\",\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null},{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"folder_path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders\",\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"},{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"agamas\",\"indexes\":[{\"name\":\"agamas_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"agamas_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"agamas_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"agamas_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"nama\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"beritas\",\"indexes\":[{\"name\":\"beritas_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"beritas_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"beritas_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"beritas_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"judul\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"artikel\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"author\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headline\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"cities\",\"indexes\":[{\"name\":\"cities_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"cities_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"cities_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"cities_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prov_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"districts\",\"indexes\":[{\"name\":\"districts_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"districts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"districts_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"districts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"city_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"goldars\",\"indexes\":[{\"name\":\"goldars_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"goldars_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"goldars_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"goldars_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"nama\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"kks\",\"indexes\":[{\"name\":\"kks_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"kks_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"kks_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"kks_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"no_kk\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"peran\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"penduduks\",\"indexes\":[{\"name\":\"penduduks_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"penduduks_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"penduduks_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"penduduks_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"nama\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"jenis_kelamin\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"dokter\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tanggal_lahir\",\"type\":\"date\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"kenegaraan\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lokasi\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"nik\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"provinces\",\"indexes\":[{\"name\":\"provinces_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"provinces_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"provinces_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"provinces_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"wilayahs\",\"indexes\":[{\"name\":\"wilayahs_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"wilayahs_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"wilayahs_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"wilayahs_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_links\",\"indexes\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_links\",\"indexes\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_users_roles_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_users_roles_links_order_fk\",\"columns\":[\"role_order\"]},{\"name\":\"admin_users_roles_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions_token_links\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_unique\",\"columns\":[\"api_token_permission_id\",\"api_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_api_token_permissions_token_links_order_inv_fk\",\"columns\":[\"api_token_permission_order\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"api_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions_token_links\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_token_links_fk\",\"columns\":[\"transfer_token_permission_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_links_inv_fk\",\"columns\":[\"transfer_token_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_links_unique\",\"columns\":[\"transfer_token_permission_id\",\"transfer_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_transfer_token_permissions_token_links_order_inv_fk\",\"columns\":[\"transfer_token_permission_order\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_token_links_fk\",\"columns\":[\"transfer_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_transfer_token_permissions_token_links_inv_fk\",\"columns\":[\"transfer_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"transfer_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_morphs\",\"indexes\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_related_morphs_order_index\",\"columns\":[\"order\"],\"type\":null},{\"name\":\"files_related_morphs_id_column_index\",\"columns\":[\"related_id\"],\"type\":null}],\"foreignKeys\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_folder_links\",\"indexes\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"files_folder_links_unique\",\"columns\":[\"file_id\",\"folder_id\"],\"type\":\"unique\"},{\"name\":\"files_folder_links_order_inv_fk\",\"columns\":[\"file_order\"]}],\"foreignKeys\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"file_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders_parent_links\",\"indexes\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"]},{\"name\":\"upload_folders_parent_links_unique\",\"columns\":[\"folder_id\",\"inv_folder_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_parent_links_order_inv_fk\",\"columns\":[\"folder_order\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_links\",\"indexes\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_links\",\"indexes\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_users_role_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_users_role_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"kks_province_links\",\"indexes\":[{\"name\":\"kks_province_links_fk\",\"columns\":[\"kk_id\"]},{\"name\":\"kks_province_links_inv_fk\",\"columns\":[\"province_id\"]},{\"name\":\"kks_province_links_unique\",\"columns\":[\"kk_id\",\"province_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"kks_province_links_fk\",\"columns\":[\"kk_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"kks\",\"onDelete\":\"CASCADE\"},{\"name\":\"kks_province_links_inv_fk\",\"columns\":[\"province_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"provinces\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"kk_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"province_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"kks_kepala_keluarga_links\",\"indexes\":[{\"name\":\"kks_kepala_keluarga_links_fk\",\"columns\":[\"kk_id\"]},{\"name\":\"kks_kepala_keluarga_links_inv_fk\",\"columns\":[\"penduduk_id\"]},{\"name\":\"kks_kepala_keluarga_links_unique\",\"columns\":[\"kk_id\",\"penduduk_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"kks_kepala_keluarga_links_fk\",\"columns\":[\"kk_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"kks\",\"onDelete\":\"CASCADE\"},{\"name\":\"kks_kepala_keluarga_links_inv_fk\",\"columns\":[\"penduduk_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"penduduks\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"kk_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"penduduk_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"kks_city_links\",\"indexes\":[{\"name\":\"kks_city_links_fk\",\"columns\":[\"kk_id\"]},{\"name\":\"kks_city_links_inv_fk\",\"columns\":[\"city_id\"]},{\"name\":\"kks_city_links_unique\",\"columns\":[\"kk_id\",\"city_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"kks_city_links_fk\",\"columns\":[\"kk_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"kks\",\"onDelete\":\"CASCADE\"},{\"name\":\"kks_city_links_inv_fk\",\"columns\":[\"city_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"cities\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"kk_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"city_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"kks_district_links\",\"indexes\":[{\"name\":\"kks_district_links_fk\",\"columns\":[\"kk_id\"]},{\"name\":\"kks_district_links_inv_fk\",\"columns\":[\"district_id\"]},{\"name\":\"kks_district_links_unique\",\"columns\":[\"kk_id\",\"district_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"kks_district_links_fk\",\"columns\":[\"kk_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"kks\",\"onDelete\":\"CASCADE\"},{\"name\":\"kks_district_links_inv_fk\",\"columns\":[\"district_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"districts\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"kk_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"district_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"penduduks_goldar_links\",\"indexes\":[{\"name\":\"penduduks_goldar_links_fk\",\"columns\":[\"penduduk_id\"]},{\"name\":\"penduduks_goldar_links_inv_fk\",\"columns\":[\"goldar_id\"]},{\"name\":\"penduduks_goldar_links_unique\",\"columns\":[\"penduduk_id\",\"goldar_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"penduduks_goldar_links_fk\",\"columns\":[\"penduduk_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"penduduks\",\"onDelete\":\"CASCADE\"},{\"name\":\"penduduks_goldar_links_inv_fk\",\"columns\":[\"goldar_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"goldars\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"penduduk_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"goldar_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"penduduks_agama_links\",\"indexes\":[{\"name\":\"penduduks_agama_links_fk\",\"columns\":[\"penduduk_id\"]},{\"name\":\"penduduks_agama_links_inv_fk\",\"columns\":[\"agama_id\"]},{\"name\":\"penduduks_agama_links_unique\",\"columns\":[\"penduduk_id\",\"agama_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"penduduks_agama_links_fk\",\"columns\":[\"penduduk_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"penduduks\",\"onDelete\":\"CASCADE\"},{\"name\":\"penduduks_agama_links_inv_fk\",\"columns\":[\"agama_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"agamas\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"penduduk_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"agama_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"penduduks_wilayah_links\",\"indexes\":[{\"name\":\"penduduks_wilayah_links_fk\",\"columns\":[\"penduduk_id\"]},{\"name\":\"penduduks_wilayah_links_inv_fk\",\"columns\":[\"wilayah_id\"]},{\"name\":\"penduduks_wilayah_links_unique\",\"columns\":[\"penduduk_id\",\"wilayah_id\"],\"type\":\"unique\"},{\"name\":\"penduduks_wilayah_links_order_inv_fk\",\"columns\":[\"penduduk_order\"]}],\"foreignKeys\":[{\"name\":\"penduduks_wilayah_links_fk\",\"columns\":[\"penduduk_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"penduduks\",\"onDelete\":\"CASCADE\"},{\"name\":\"penduduks_wilayah_links_inv_fk\",\"columns\":[\"wilayah_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"wilayahs\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"penduduk_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"wilayah_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"penduduk_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2023-05-25 12:48:34', '17e30d5a6da91c308f0d978bf34e39cd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `strapi_transfer_tokens`
--

CREATE TABLE `strapi_transfer_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `strapi_transfer_token_permissions`
--

CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `strapi_transfer_token_permissions_token_links`
--

CREATE TABLE `strapi_transfer_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload_folders_parent_links`
--

CREATE TABLE `upload_folders_parent_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_folder_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.user.me', '2023-05-23 11:17:03.822000', '2023-05-23 11:17:03.822000', NULL, NULL),
(2, 'plugin::users-permissions.auth.changePassword', '2023-05-23 11:17:03.822000', '2023-05-23 11:17:03.822000', NULL, NULL),
(3, 'plugin::users-permissions.auth.callback', '2023-05-23 11:17:04.175000', '2023-05-23 11:17:04.175000', NULL, NULL),
(4, 'plugin::users-permissions.auth.connect', '2023-05-23 11:17:04.175000', '2023-05-23 11:17:04.175000', NULL, NULL),
(5, 'plugin::users-permissions.auth.forgotPassword', '2023-05-23 11:17:04.175000', '2023-05-23 11:17:04.175000', NULL, NULL),
(6, 'plugin::users-permissions.auth.resetPassword', '2023-05-23 11:17:04.175000', '2023-05-23 11:17:04.175000', NULL, NULL),
(7, 'plugin::users-permissions.auth.register', '2023-05-23 11:17:04.175000', '2023-05-23 11:17:04.175000', NULL, NULL),
(8, 'plugin::users-permissions.auth.emailConfirmation', '2023-05-23 11:17:04.175000', '2023-05-23 11:17:04.175000', NULL, NULL),
(9, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-05-23 11:17:04.175000', '2023-05-23 11:17:04.175000', NULL, NULL),
(15, 'api::penduduk.penduduk.find', '2023-05-23 11:33:40.565000', '2023-05-23 11:33:40.565000', NULL, NULL),
(18, 'api::province.province.find', '2023-05-25 11:29:41.041000', '2023-05-25 11:29:41.041000', NULL, NULL),
(19, 'api::province.province.findOne', '2023-05-25 11:29:41.041000', '2023-05-25 11:29:41.041000', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 2, 1),
(4, 5, 2, 2),
(5, 9, 2, 2),
(6, 8, 2, 2),
(7, 4, 2, 2),
(8, 6, 2, 2),
(9, 7, 2, 3),
(15, 15, 1, 2),
(18, 18, 2, 5),
(19, 19, 2, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2023-05-23 11:17:03.614000', '2023-05-23 11:33:40.511000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2023-05-23 11:17:03.794000', '2023-05-25 11:29:40.975000', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `up_users`
--

INSERT INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'superadmin', 'tes@tes.com', 'local', '$2a$10$8JJ704OCcKZhGtqIHz9WTenkqyniyIPNVrlbXwEBLgb3pgBH4ocJq', NULL, NULL, 1, 0, '2023-05-23 11:30:58.014000', '2023-05-23 11:30:58.014000', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `up_users_role_links`
--

INSERT INTO `up_users_role_links` (`id`, `user_id`, `role_id`, `user_order`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wilayahs`
--

CREATE TABLE `wilayahs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `wilayahs`
--

INSERT INTO `wilayahs` (`id`, `name`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'PIDIE JAYA', '2023-05-24 09:21:17.832000', '2023-05-24 09:21:17.831000', NULL, NULL),
(2, 'SIMEULUE', '2023-05-24 09:21:17.904000', '2023-05-24 09:21:17.903000', NULL, NULL),
(3, 'BIREUEN', '2023-05-24 09:21:18.257000', '2023-05-24 09:21:18.257000', NULL, NULL),
(4, 'ACEH TIMUR', '2023-05-24 09:21:18.308000', '2023-05-24 09:21:18.305000', NULL, NULL),
(5, 'ACEH UTARA', '2023-05-24 09:21:18.357000', '2023-05-24 09:21:18.354000', NULL, NULL),
(6, 'PIDIE', '2023-05-24 09:21:18.399000', '2023-05-24 09:21:18.397000', NULL, NULL),
(7, 'ACEH BARAT DAYA', '2023-05-24 09:21:18.440000', '2023-05-24 09:21:18.438000', NULL, NULL),
(8, 'GAYO LUES', '2023-05-24 09:21:18.602000', '2023-05-24 09:21:18.601000', NULL, NULL),
(9, 'ACEH SELATAN', '2023-05-24 09:21:18.693000', '2023-05-24 09:21:18.692000', NULL, NULL),
(10, 'ACEH TAMIANG', '2023-05-24 09:21:18.731000', '2023-05-24 09:21:18.729000', NULL, NULL),
(11, 'ACEH BESAR', '2023-05-24 09:21:18.773000', '2023-05-24 09:21:18.771000', NULL, NULL),
(12, 'ACEH TENGGARA', '2023-05-24 09:21:18.815000', '2023-05-24 09:21:18.812000', NULL, NULL),
(13, 'BENER MERIAH', '2023-05-24 09:21:18.847000', '2023-05-24 09:21:18.845000', NULL, NULL),
(14, 'ACEH JAYA', '2023-05-24 09:21:18.890000', '2023-05-24 09:21:18.887000', NULL, NULL),
(15, 'LHOKSEUMAWE', '2023-05-24 09:21:18.931000', '2023-05-24 09:21:18.929000', NULL, NULL),
(16, 'ACEH BARAT', '2023-05-24 09:21:18.965000', '2023-05-24 09:21:18.963000', NULL, NULL),
(17, 'NAGAN RAYA', '2023-05-24 09:21:18.999000', '2023-05-24 09:21:18.997000', NULL, NULL),
(18, 'LANGSA', '2023-05-24 09:21:19.040000', '2023-05-24 09:21:19.037000', NULL, NULL),
(19, 'BANDA ACEH', '2023-05-24 09:21:19.074000', '2023-05-24 09:21:19.072000', NULL, NULL),
(20, 'ACEH SINGKIL', '2023-05-24 09:21:19.106000', '2023-05-24 09:21:19.104000', NULL, NULL),
(21, 'SABANG', '2023-05-24 09:21:19.139000', '2023-05-24 09:21:19.137000', NULL, NULL),
(22, 'ACEH TENGAH', '2023-05-24 09:21:19.181000', '2023-05-24 09:21:19.179000', NULL, NULL),
(23, 'SUBULUSSALAM', '2023-05-24 09:21:19.215000', '2023-05-24 09:21:19.212000', NULL, NULL),
(24, 'NIAS SELATAN', '2023-05-24 09:21:19.256000', '2023-05-24 09:21:19.254000', NULL, NULL),
(25, 'MANDAILING NATAL', '2023-05-24 09:21:19.298000', '2023-05-24 09:21:19.295000', NULL, NULL),
(26, 'DAIRI', '2023-05-24 09:21:19.339000', '2023-05-24 09:21:19.337000', NULL, NULL),
(27, 'LABUHAN BATU UTARA', '2023-05-24 09:21:19.373000', '2023-05-24 09:21:19.371000', NULL, NULL),
(28, 'TAPANULI UTARA', '2023-05-24 09:21:19.406000', '2023-05-24 09:21:19.404000', NULL, NULL),
(29, 'SIMALUNGUN', '2023-05-24 09:21:19.456000', '2023-05-24 09:21:19.454000', NULL, NULL),
(30, 'LANGKAT', '2023-05-24 09:21:19.489000', '2023-05-24 09:21:19.487000', NULL, NULL),
(31, 'SERDANG BEDAGAI', '2023-05-24 09:21:19.604000', '2023-05-24 09:21:19.601000', NULL, NULL),
(32, 'TAPANULI SELATAN', '2023-05-24 09:21:19.648000', '2023-05-24 09:21:19.646000', NULL, NULL),
(33, 'ASAHAN', '2023-05-24 09:21:19.711000', '2023-05-24 09:21:19.710000', NULL, NULL),
(34, 'PADANG LAWAS UTARA', '2023-05-24 09:21:19.767000', '2023-05-24 09:21:19.765000', NULL, NULL),
(35, 'PADANG LAWAS', '2023-05-24 09:21:19.807000', '2023-05-24 09:21:19.804000', NULL, NULL),
(36, 'LABUHAN BATU SELATAN', '2023-05-24 09:21:19.839000', '2023-05-24 09:21:19.837000', NULL, NULL),
(37, 'PADANG SIDEMPUAN', '2023-05-24 09:21:19.883000', '2023-05-24 09:21:19.881000', NULL, NULL),
(38, 'TOBA SAMOSIR', '2023-05-24 09:21:19.932000', '2023-05-24 09:21:19.930000', NULL, NULL),
(39, 'TAPANULI TENGAH', '2023-05-24 09:21:19.973000', '2023-05-24 09:21:19.971000', NULL, NULL),
(40, 'HUMBANG HASUNDUTAN', '2023-05-24 09:21:20.008000', '2023-05-24 09:21:20.004000', NULL, NULL),
(41, 'SIBOLGA', '2023-05-24 09:21:20.048000', '2023-05-24 09:21:20.046000', NULL, NULL),
(42, 'BATU BARA', '2023-05-24 09:21:20.089000', '2023-05-24 09:21:20.087000', NULL, NULL),
(43, 'SAMOSIR', '2023-05-24 09:21:20.124000', '2023-05-24 09:21:20.122000', NULL, NULL),
(44, 'PEMATANG SIANTAR', '2023-05-24 09:21:20.159000', '2023-05-24 09:21:20.158000', NULL, NULL),
(45, 'LABUHAN BATU', '2023-05-24 09:21:20.193000', '2023-05-24 09:21:20.192000', NULL, NULL),
(46, 'DELI SERDANG', '2023-05-24 09:21:20.233000', '2023-05-24 09:21:20.229000', NULL, NULL),
(47, 'GUNUNGSITOLI', '2023-05-24 09:21:20.268000', '2023-05-24 09:21:20.267000', NULL, NULL),
(48, 'NIAS UTARA', '2023-05-24 09:21:20.301000', '2023-05-24 09:21:20.300000', NULL, NULL),
(49, 'NIAS', '2023-05-24 09:21:20.336000', '2023-05-24 09:21:20.335000', NULL, NULL),
(50, 'KARO', '2023-05-24 09:21:20.369000', '2023-05-24 09:21:20.368000', NULL, NULL),
(51, 'NIAS BARAT', '2023-05-24 09:21:20.402000', '2023-05-24 09:21:20.401000', NULL, NULL),
(52, 'MEDAN', '2023-05-24 09:21:20.435000', '2023-05-24 09:21:20.434000', NULL, NULL),
(53, 'PAKPAK BHARAT', '2023-05-24 09:21:20.469000', '2023-05-24 09:21:20.468000', NULL, NULL),
(54, 'TEBING TINGGI', '2023-05-24 09:21:20.502000', '2023-05-24 09:21:20.501000', NULL, NULL),
(55, 'BINJAI', '2023-05-24 09:21:20.535000', '2023-05-24 09:21:20.534000', NULL, NULL),
(56, 'TANJUNG BALAI', '2023-05-24 09:21:20.637000', '2023-05-24 09:21:20.635000', NULL, NULL),
(57, 'DHARMASRAYA', '2023-05-24 09:21:20.677000', '2023-05-24 09:21:20.676000', NULL, NULL),
(58, 'SOLOK SELATAN', '2023-05-24 09:21:20.827000', '2023-05-24 09:21:20.825000', NULL, NULL),
(59, 'SIJUNJUNG (SAWAH LUNTO SIJUNJUNG)', '2023-05-24 09:21:20.861000', '2023-05-24 09:21:20.859000', NULL, NULL),
(60, 'PASAMAN BARAT', '2023-05-24 09:21:20.893000', '2023-05-24 09:21:20.892000', NULL, NULL),
(61, 'SOLOK', '2023-05-24 09:21:20.927000', '2023-05-24 09:21:20.926000', NULL, NULL),
(62, 'PASAMAN', '2023-05-24 09:21:20.960000', '2023-05-24 09:21:20.959000', NULL, NULL),
(63, 'PARIAMAN', '2023-05-24 09:21:20.993000', '2023-05-24 09:21:20.992000', NULL, NULL),
(64, 'TANAH DATAR', '2023-05-24 09:21:21.027000', '2023-05-24 09:21:21.026000', NULL, NULL),
(65, 'PADANG PARIAMAN', '2023-05-24 09:21:21.060000', '2023-05-24 09:21:21.059000', NULL, NULL),
(66, 'PESISIR SELATAN', '2023-05-24 09:21:21.094000', '2023-05-24 09:21:21.092000', NULL, NULL),
(67, 'PADANG', '2023-05-24 09:21:21.127000', '2023-05-24 09:21:21.126000', NULL, NULL),
(68, 'SAWAH LUNTO', '2023-05-24 09:21:21.160000', '2023-05-24 09:21:21.159000', NULL, NULL),
(69, 'LIMA PULUH KOTO / KOTA', '2023-05-24 09:21:21.193000', '2023-05-24 09:21:21.192000', NULL, NULL),
(70, 'AGAM', '2023-05-24 09:21:21.226000', '2023-05-24 09:21:21.225000', NULL, NULL),
(71, 'PAYAKUMBUH', '2023-05-24 09:21:21.260000', '2023-05-24 09:21:21.259000', NULL, NULL),
(72, 'BUKITTINGGI', '2023-05-24 09:21:21.293000', '2023-05-24 09:21:21.292000', NULL, NULL),
(73, 'PADANG PANJANG', '2023-05-24 09:21:21.327000', '2023-05-24 09:21:21.326000', NULL, NULL),
(74, 'KEPULAUAN MENTAWAI', '2023-05-24 09:21:21.360000', '2023-05-24 09:21:21.359000', NULL, NULL),
(75, 'INDRAGIRI HILIR', '2023-05-24 09:21:21.386000', '2023-05-24 09:21:21.385000', NULL, NULL),
(76, 'KUANTAN SINGINGI', '2023-05-24 09:21:21.418000', '2023-05-24 09:21:21.417000', NULL, NULL),
(77, 'PELALAWAN', '2023-05-24 09:21:21.451000', '2023-05-24 09:21:21.451000', NULL, NULL),
(78, 'PEKANBARU', '2023-05-24 09:21:21.484000', '2023-05-24 09:21:21.483000', NULL, NULL),
(79, 'ROKAN HILIR', '2023-05-24 09:21:21.527000', '2023-05-24 09:21:21.526000', NULL, NULL),
(80, 'BENGKALIS', '2023-05-24 09:21:21.560000', '2023-05-24 09:21:21.559000', NULL, NULL),
(81, 'INDRAGIRI HULU', '2023-05-24 09:21:21.593000', '2023-05-24 09:21:21.592000', NULL, NULL),
(82, 'ROKAN HULU', '2023-05-24 09:21:21.701000', '2023-05-24 09:21:21.700000', NULL, NULL),
(83, 'KAMPAR', '2023-05-24 09:21:21.733000', '2023-05-24 09:21:21.733000', NULL, NULL),
(84, 'KEPULAUAN MERANTI', '2023-05-24 09:21:21.758000', '2023-05-24 09:21:21.758000', NULL, NULL),
(85, 'DUMAI', '2023-05-24 09:21:21.970000', '2023-05-24 09:21:21.969000', NULL, NULL),
(86, 'SIAK', '2023-05-24 09:21:22.107000', '2023-05-24 09:21:22.103000', NULL, NULL),
(87, 'TEBO', '2023-05-24 09:21:22.255000', '2023-05-24 09:21:22.253000', NULL, NULL),
(88, 'TANJUNG JABUNG BARAT', '2023-05-24 09:21:22.380000', '2023-05-24 09:21:22.378000', NULL, NULL),
(89, 'MUARO JAMBI', '2023-05-24 09:21:22.513000', '2023-05-24 09:21:22.511000', NULL, NULL),
(90, 'KERINCI', '2023-05-24 09:21:22.646000', '2023-05-24 09:21:22.644000', NULL, NULL),
(91, 'MERANGIN', '2023-05-24 09:21:22.813000', '2023-05-24 09:21:22.811000', NULL, NULL),
(92, 'BUNGO', '2023-05-24 09:21:22.938000', '2023-05-24 09:21:22.936000', NULL, NULL),
(93, 'TANJUNG JABUNG TIMUR', '2023-05-24 09:21:23.134000', '2023-05-24 09:21:23.133000', NULL, NULL),
(94, 'SUNGAIPENUH', '2023-05-24 09:21:23.330000', '2023-05-24 09:21:23.328000', NULL, NULL),
(95, 'BATANG HARI', '2023-05-24 09:21:23.363000', '2023-05-24 09:21:23.361000', NULL, NULL),
(96, 'JAMBI', '2023-05-24 09:21:23.404000', '2023-05-24 09:21:23.402000', NULL, NULL),
(97, 'SAROLANGUN', '2023-05-24 09:21:23.446000', '2023-05-24 09:21:23.444000', NULL, NULL),
(98, 'PALEMBANG', '2023-05-24 09:21:23.488000', '2023-05-24 09:21:23.486000', NULL, NULL),
(99, 'LAHAT', '2023-05-24 09:21:23.529000', '2023-05-24 09:21:23.527000', NULL, NULL),
(100, 'OGAN KOMERING ULU TIMUR', '2023-05-24 09:21:23.565000', '2023-05-24 09:21:23.563000', NULL, NULL),
(101, 'MUSI BANYUASIN', '2023-05-24 09:21:23.604000', '2023-05-24 09:21:23.602000', NULL, NULL),
(102, 'PAGAR ALAM', '2023-05-24 09:21:23.638000', '2023-05-24 09:21:23.636000', NULL, NULL),
(103, 'OGAN KOMERING ULU SELATAN', '2023-05-24 09:21:23.680000', '2023-05-24 09:21:23.678000', NULL, NULL),
(104, 'BANYUASIN', '2023-05-24 09:21:23.729000', '2023-05-24 09:21:23.727000', NULL, NULL),
(105, 'MUSI RAWAS', '2023-05-24 09:21:23.771000', '2023-05-24 09:21:23.769000', NULL, NULL),
(106, 'MUARA ENIM', '2023-05-24 09:21:23.805000', '2023-05-24 09:21:23.803000', NULL, NULL),
(107, 'OGAN KOMERING ULU', '2023-05-24 09:21:24.106000', '2023-05-24 09:21:24.104000', NULL, NULL),
(108, 'OGAN KOMERING ILIR', '2023-05-24 09:21:24.398000', '2023-05-24 09:21:24.395000', NULL, NULL),
(109, 'EMPAT LAWANG', '2023-05-24 09:21:24.463000', '2023-05-24 09:21:24.461000', NULL, NULL),
(110, 'LUBUK LINGGAU', '2023-05-24 09:21:24.504000', '2023-05-24 09:21:24.502000', NULL, NULL),
(111, 'PRABUMULIH', '2023-05-24 09:21:24.546000', '2023-05-24 09:21:24.544000', NULL, NULL),
(112, 'OGAN ILIR', '2023-05-24 09:21:24.587000', '2023-05-24 09:21:24.585000', NULL, NULL),
(113, 'BENGKULU TENGAH', '2023-05-24 09:21:24.629000', '2023-05-24 09:21:24.627000', NULL, NULL),
(114, 'REJANG LEBONG', '2023-05-24 09:21:24.671000', '2023-05-24 09:21:24.669000', NULL, NULL),
(115, 'MUKO MUKO', '2023-05-24 09:21:24.705000', '2023-05-24 09:21:24.703000', NULL, NULL),
(116, 'KAUR', '2023-05-24 09:21:24.747000', '2023-05-24 09:21:24.744000', NULL, NULL),
(117, 'BENGKULU UTARA', '2023-05-24 09:21:24.779000', '2023-05-24 09:21:24.777000', NULL, NULL),
(118, 'LEBONG', '2023-05-24 09:21:24.816000', '2023-05-24 09:21:24.815000', NULL, NULL),
(119, 'KEPAHIANG', '2023-05-24 09:21:24.850000', '2023-05-24 09:21:24.849000', NULL, NULL),
(120, 'BENGKULU SELATAN', '2023-05-24 09:21:25.054000', '2023-05-24 09:21:25.052000', NULL, NULL),
(121, 'SELUMA', '2023-05-24 09:21:25.221000', '2023-05-24 09:21:25.219000', NULL, NULL),
(122, 'BENGKULU', '2023-05-24 09:21:25.262000', '2023-05-24 09:21:25.260000', NULL, NULL),
(123, 'LAMPUNG UTARA', '2023-05-24 09:21:25.854000', '2023-05-24 09:21:25.852000', NULL, NULL),
(124, 'WAY KANAN', '2023-05-24 09:21:26.185000', '2023-05-24 09:21:26.183000', NULL, NULL),
(125, 'LAMPUNG TENGAH', '2023-05-24 09:21:26.345000', '2023-05-24 09:21:26.343000', NULL, NULL),
(126, 'MESUJI', '2023-05-24 09:21:26.383000', '2023-05-24 09:21:26.382000', NULL, NULL),
(127, 'PRINGSEWU', '2023-05-24 09:21:26.424000', '2023-05-24 09:21:26.424000', NULL, NULL),
(128, 'LAMPUNG TIMUR', '2023-05-24 09:21:26.462000', '2023-05-24 09:21:26.460000', NULL, NULL),
(129, 'LAMPUNG SELATAN', '2023-05-24 09:21:26.512000', '2023-05-24 09:21:26.510000', NULL, NULL),
(130, 'TULANG BAWANG', '2023-05-24 09:21:26.554000', '2023-05-24 09:21:26.552000', NULL, NULL),
(131, 'TULANG BAWANG BARAT', '2023-05-24 09:21:26.588000', '2023-05-24 09:21:26.586000', NULL, NULL),
(132, 'TANGGAMUS', '2023-05-24 09:21:26.622000', '2023-05-24 09:21:26.619000', NULL, NULL),
(133, 'LAMPUNG BARAT', '2023-05-24 09:21:26.654000', '2023-05-24 09:21:26.651000', NULL, NULL),
(134, 'PESISIR BARAT', '2023-05-24 09:21:26.696000', '2023-05-24 09:21:26.694000', NULL, NULL),
(135, 'PESAWARAN', '2023-05-24 09:21:26.753000', '2023-05-24 09:21:26.751000', NULL, NULL),
(136, 'BANDAR LAMPUNG', '2023-05-24 09:21:26.787000', '2023-05-24 09:21:26.785000', NULL, NULL),
(137, 'METRO', '2023-05-24 09:21:26.820000', '2023-05-24 09:21:26.818000', NULL, NULL),
(138, 'BELITUNG', '2023-05-24 09:21:26.854000', '2023-05-24 09:21:26.852000', NULL, NULL),
(139, 'BELITUNG TIMUR', '2023-05-24 09:21:27.271000', '2023-05-24 09:21:27.269000', NULL, NULL),
(140, 'BANGKA', '2023-05-24 09:21:27.511000', '2023-05-24 09:21:27.509000', NULL, NULL),
(141, 'BANGKA SELATAN', '2023-05-24 09:21:27.762000', '2023-05-24 09:21:27.760000', NULL, NULL),
(142, 'BANGKA BARAT', '2023-05-24 09:21:27.895000', '2023-05-24 09:21:27.893000', NULL, NULL),
(143, 'PANGKAL PINANG', '2023-05-24 09:21:27.932000', '2023-05-24 09:21:27.931000', NULL, NULL),
(144, 'BANGKA TENGAH', '2023-05-24 09:21:27.973000', '2023-05-24 09:21:27.973000', NULL, NULL),
(145, 'KEPULAUAN ANAMBAS', '2023-05-24 09:21:28.011000', '2023-05-24 09:21:28.009000', NULL, NULL),
(146, 'BINTAN', '2023-05-24 09:21:28.045000', '2023-05-24 09:21:28.043000', NULL, NULL),
(147, 'NATUNA', '2023-05-24 09:21:28.127000', '2023-05-24 09:21:28.125000', NULL, NULL),
(148, 'BATAM', '2023-05-24 09:21:28.488000', '2023-05-24 09:21:28.487000', NULL, NULL),
(149, 'TANJUNG PINANG', '2023-05-24 09:21:28.531000', '2023-05-24 09:21:28.530000', NULL, NULL),
(150, 'KARIMUN', '2023-05-24 09:21:28.556000', '2023-05-24 09:21:28.556000', NULL, NULL),
(151, 'LINGGA', '2023-05-24 09:21:28.623000', '2023-05-24 09:21:28.622000', NULL, NULL),
(152, 'JAKARTA UTARA', '2023-05-24 09:21:28.656000', '2023-05-24 09:21:28.655000', NULL, NULL),
(153, 'JAKARTA BARAT', '2023-05-24 09:21:28.714000', '2023-05-24 09:21:28.713000', NULL, NULL),
(154, 'JAKARTA TIMUR', '2023-05-24 09:21:28.756000', '2023-05-24 09:21:28.755000', NULL, NULL),
(155, 'JAKARTA SELATAN', '2023-05-24 09:21:28.789000', '2023-05-24 09:21:28.788000', NULL, NULL),
(156, 'JAKARTA PUSAT', '2023-05-24 09:21:28.823000', '2023-05-24 09:21:28.822000', NULL, NULL),
(157, 'KEPULAUAN SERIBU', '2023-05-24 09:21:28.856000', '2023-05-24 09:21:28.855000', NULL, NULL),
(158, 'DEPOK', '2023-05-24 09:21:28.883000', '2023-05-24 09:21:28.882000', NULL, NULL),
(159, 'KARAWANG', '2023-05-24 09:21:28.914000', '2023-05-24 09:21:28.913000', NULL, NULL),
(160, 'CIREBON', '2023-05-24 09:21:28.939000', '2023-05-24 09:21:28.939000', NULL, NULL),
(161, 'BANDUNG', '2023-05-24 09:21:28.972000', '2023-05-24 09:21:28.971000', NULL, NULL),
(162, 'SUKABUMI', '2023-05-24 09:21:29.006000', '2023-05-24 09:21:29.005000', NULL, NULL),
(163, 'SUMEDANG', '2023-05-24 09:21:29.047000', '2023-05-24 09:21:29.047000', NULL, NULL),
(164, 'INDRAMAYU', '2023-05-24 09:21:29.081000', '2023-05-24 09:21:29.080000', NULL, NULL),
(165, 'MAJALENGKA', '2023-05-24 09:21:29.114000', '2023-05-24 09:21:29.113000', NULL, NULL),
(166, 'KUNINGAN', '2023-05-24 09:21:29.148000', '2023-05-24 09:21:29.147000', NULL, NULL),
(167, 'TASIKMALAYA', '2023-05-24 09:21:29.442000', '2023-05-24 09:21:29.440000', NULL, NULL),
(168, 'CIAMIS', '2023-05-24 09:21:29.731000', '2023-05-24 09:21:29.729000', NULL, NULL),
(169, 'SUBANG', '2023-05-24 09:21:30.239000', '2023-05-24 09:21:30.237000', NULL, NULL),
(170, 'PURWAKARTA', '2023-05-24 09:21:30.277000', '2023-05-24 09:21:30.275000', NULL, NULL),
(171, 'BOGOR', '2023-05-24 09:21:30.310000', '2023-05-24 09:21:30.308000', NULL, NULL),
(172, 'BEKASI', '2023-05-24 09:21:30.363000', '2023-05-24 09:21:30.361000', NULL, NULL),
(173, 'GARUT', '2023-05-24 09:21:30.410000', '2023-05-24 09:21:30.408000', NULL, NULL),
(174, 'PANGANDARAN', '2023-05-24 09:21:30.452000', '2023-05-24 09:21:30.450000', NULL, NULL),
(175, 'CIANJUR', '2023-05-24 09:21:30.535000', '2023-05-24 09:21:30.533000', NULL, NULL),
(176, 'BANJAR', '2023-05-24 09:21:30.710000', '2023-05-24 09:21:30.708000', NULL, NULL),
(177, 'BANDUNG BARAT', '2023-05-24 09:21:30.744000', '2023-05-24 09:21:30.742000', NULL, NULL),
(178, 'CIMAHI', '2023-05-24 09:21:30.785000', '2023-05-24 09:21:30.783000', NULL, NULL),
(179, 'PURBALINGGA', '2023-05-24 09:21:30.903000', '2023-05-24 09:21:30.902000', NULL, NULL),
(180, 'KEBUMEN', '2023-05-24 09:21:30.944000', '2023-05-24 09:21:30.942000', NULL, NULL),
(181, 'MAGELANG', '2023-05-24 09:21:30.976000', '2023-05-24 09:21:30.974000', NULL, NULL),
(182, 'CILACAP', '2023-05-24 09:21:31.008000', '2023-05-24 09:21:31.006000', NULL, NULL),
(183, 'BATANG', '2023-05-24 09:21:31.066000', '2023-05-24 09:21:31.065000', NULL, NULL),
(184, 'BANJARNEGARA', '2023-05-24 09:21:31.133000', '2023-05-24 09:21:31.131000', NULL, NULL),
(185, 'BLORA', '2023-05-24 09:21:31.442000', '2023-05-24 09:21:31.440000', NULL, NULL),
(186, 'BREBES', '2023-05-24 09:21:31.677000', '2023-05-24 09:21:31.675000', NULL, NULL),
(187, 'BANYUMAS', '2023-05-24 09:21:31.848000', '2023-05-24 09:21:31.846000', NULL, NULL),
(188, 'WONOSOBO', '2023-05-24 09:21:32.005000', '2023-05-24 09:21:32.003000', NULL, NULL),
(189, 'TEGAL', '2023-05-24 09:21:32.038000', '2023-05-24 09:21:32.036000', NULL, NULL),
(190, 'PURWOREJO', '2023-05-24 09:21:32.080000', '2023-05-24 09:21:32.078000', NULL, NULL),
(191, 'PATI', '2023-05-24 09:21:32.130000', '2023-05-24 09:21:32.128000', NULL, NULL),
(192, 'SUKOHARJO', '2023-05-24 09:21:32.201000', '2023-05-24 09:21:32.199000', NULL, NULL),
(193, 'KARANGANYAR', '2023-05-24 09:21:32.238000', '2023-05-24 09:21:32.236000', NULL, NULL),
(194, 'PEKALONGAN', '2023-05-24 09:21:32.280000', '2023-05-24 09:21:32.278000', NULL, NULL),
(195, 'PEMALANG', '2023-05-24 09:21:32.321000', '2023-05-24 09:21:32.319000', NULL, NULL),
(196, 'BOYOLALI', '2023-05-24 09:21:32.351000', '2023-05-24 09:21:32.350000', NULL, NULL),
(197, 'GROBOGAN', '2023-05-24 09:21:32.738000', '2023-05-24 09:21:32.736000', NULL, NULL),
(198, 'SEMARANG', '2023-05-24 09:21:32.908000', '2023-05-24 09:21:32.906000', NULL, NULL),
(199, 'DEMAK', '2023-05-24 09:21:33.253000', '2023-05-24 09:21:33.251000', NULL, NULL),
(200, 'REMBANG', '2023-05-24 09:21:33.515000', '2023-05-24 09:21:33.513000', NULL, NULL),
(201, 'KLATEN', '2023-05-24 09:21:33.563000', '2023-05-24 09:21:33.561000', NULL, NULL),
(202, 'KUDUS', '2023-05-24 09:21:33.596000', '2023-05-24 09:21:33.594000', NULL, NULL),
(203, 'TEMANGGUNG', '2023-05-24 09:21:33.637000', '2023-05-24 09:21:33.635000', NULL, NULL),
(204, 'SRAGEN', '2023-05-24 09:21:33.671000', '2023-05-24 09:21:33.669000', NULL, NULL),
(205, 'JEPARA', '2023-05-24 09:21:33.713000', '2023-05-24 09:21:33.711000', NULL, NULL),
(206, 'WONOGIRI', '2023-05-24 09:21:33.746000', '2023-05-24 09:21:33.744000', NULL, NULL),
(207, 'KENDAL', '2023-05-24 09:21:33.787000', '2023-05-24 09:21:33.785000', NULL, NULL),
(208, 'SURAKARTA (SOLO)', '2023-05-24 09:21:33.868000', '2023-05-24 09:21:33.867000', NULL, NULL),
(209, 'SALATIGA', '2023-05-24 09:21:34.037000', '2023-05-24 09:21:34.035000', NULL, NULL),
(210, 'SLEMAN', '2023-05-24 09:21:34.084000', '2023-05-24 09:21:34.081000', NULL, NULL),
(211, 'BANTUL', '2023-05-24 09:21:34.283000', '2023-05-24 09:21:34.282000', NULL, NULL),
(212, 'YOGYAKARTA', '2023-05-24 09:21:34.511000', '2023-05-24 09:21:34.509000', NULL, NULL),
(213, 'GUNUNG KIDUL', '2023-05-24 09:21:34.544000', '2023-05-24 09:21:34.542000', NULL, NULL),
(214, 'KULON PROGO', '2023-05-24 09:21:34.578000', '2023-05-24 09:21:34.576000', NULL, NULL),
(215, 'GRESIK', '2023-05-24 09:21:34.611000', '2023-05-24 09:21:34.609000', NULL, NULL),
(216, 'KEDIRI', '2023-05-24 09:21:34.644000', '2023-05-24 09:21:34.643000', NULL, NULL),
(217, 'SAMPANG', '2023-05-24 09:21:34.669000', '2023-05-24 09:21:34.667000', NULL, NULL),
(218, 'BANGKALAN', '2023-05-24 09:21:34.703000', '2023-05-24 09:21:34.701000', NULL, NULL),
(219, 'SUMENEP', '2023-05-24 09:21:34.753000', '2023-05-24 09:21:34.751000', NULL, NULL),
(220, 'SITUBONDO', '2023-05-24 09:21:34.794000', '2023-05-24 09:21:34.793000', NULL, NULL),
(221, 'SURABAYA', '2023-05-24 09:21:34.827000', '2023-05-24 09:21:34.826000', NULL, NULL),
(222, 'JEMBER', '2023-05-24 09:21:35.086000', '2023-05-24 09:21:35.084000', NULL, NULL),
(223, 'PAMEKASAN', '2023-05-24 09:21:35.259000', '2023-05-24 09:21:35.257000', NULL, NULL),
(224, 'JOMBANG', '2023-05-24 09:21:35.832000', '2023-05-24 09:21:35.830000', NULL, NULL),
(225, 'PROBOLINGGO', '2023-05-24 09:21:35.986000', '2023-05-24 09:21:35.984000', NULL, NULL),
(226, 'BANYUWANGI', '2023-05-24 09:21:36.144000', '2023-05-24 09:21:36.143000', NULL, NULL),
(227, 'PASURUAN', '2023-05-24 09:21:36.486000', '2023-05-24 09:21:36.484000', NULL, NULL),
(228, 'BOJONEGORO', '2023-05-24 09:21:36.772000', '2023-05-24 09:21:36.772000', NULL, NULL),
(229, 'BONDOWOSO', '2023-05-24 09:21:37.281000', '2023-05-24 09:21:37.281000', NULL, NULL),
(230, 'MAGETAN', '2023-05-24 09:21:37.601000', '2023-05-24 09:21:37.600000', NULL, NULL),
(231, 'LUMAJANG', '2023-05-24 09:21:37.739000', '2023-05-24 09:21:37.738000', NULL, NULL),
(232, 'MALANG', '2023-05-24 09:21:37.873000', '2023-05-24 09:21:37.873000', NULL, NULL),
(233, 'BLITAR', '2023-05-24 09:21:38.137000', '2023-05-24 09:21:38.134000', NULL, NULL),
(234, 'SIDOARJO', '2023-05-24 09:21:38.211000', '2023-05-24 09:21:38.209000', NULL, NULL),
(235, 'LAMONGAN', '2023-05-24 09:21:38.253000', '2023-05-24 09:21:38.251000', NULL, NULL),
(236, 'PACITAN', '2023-05-24 09:21:38.295000', '2023-05-24 09:21:38.293000', NULL, NULL),
(237, 'TULUNGAGUNG', '2023-05-24 09:21:38.324000', '2023-05-24 09:21:38.323000', NULL, NULL),
(238, 'MOJOKERTO', '2023-05-24 09:21:38.395000', '2023-05-24 09:21:38.393000', NULL, NULL),
(239, 'MADIUN', '2023-05-24 09:21:38.446000', '2023-05-24 09:21:38.444000', NULL, NULL),
(240, 'PONOROGO', '2023-05-24 09:21:38.477000', '2023-05-24 09:21:38.475000', NULL, NULL),
(241, 'NGAWI', '2023-05-24 09:21:38.511000', '2023-05-24 09:21:38.509000', NULL, NULL),
(242, 'NGANJUK', '2023-05-24 09:21:38.553000', '2023-05-24 09:21:38.551000', NULL, NULL),
(243, 'TUBAN', '2023-05-24 09:21:38.594000', '2023-05-24 09:21:38.592000', NULL, NULL),
(244, 'TRENGGALEK', '2023-05-24 09:21:38.627000', '2023-05-24 09:21:38.625000', NULL, NULL),
(245, 'BATU', '2023-05-24 09:21:38.790000', '2023-05-24 09:21:38.789000', NULL, NULL),
(246, 'TANGERANG', '2023-05-24 09:21:38.824000', '2023-05-24 09:21:38.823000', NULL, NULL),
(247, 'SERANG', '2023-05-24 09:21:38.854000', '2023-05-24 09:21:38.852000', NULL, NULL),
(248, 'PANDEGLANG', '2023-05-24 09:21:38.887000', '2023-05-24 09:21:38.884000', NULL, NULL),
(249, 'LEBAK', '2023-05-24 09:21:38.918000', '2023-05-24 09:21:38.916000', NULL, NULL),
(250, 'TANGERANG SELATAN', '2023-05-24 09:21:38.965000', '2023-05-24 09:21:38.965000', NULL, NULL),
(251, 'CILEGON', '2023-05-24 09:21:39.001000', '2023-05-24 09:21:38.999000', NULL, NULL),
(252, 'KLUNGKUNG', '2023-05-24 09:21:39.044000', '2023-05-24 09:21:39.042000', NULL, NULL),
(253, 'KARANGASEM', '2023-05-24 09:21:39.078000', '2023-05-24 09:21:39.075000', NULL, NULL),
(254, 'BANGLI', '2023-05-24 09:21:39.172000', '2023-05-24 09:21:39.171000', NULL, NULL),
(255, 'TABANAN', '2023-05-24 09:21:39.206000', '2023-05-24 09:21:39.206000', NULL, NULL),
(256, 'GIANYAR', '2023-05-24 09:21:39.257000', '2023-05-24 09:21:39.256000', NULL, NULL),
(257, 'BADUNG', '2023-05-24 09:21:39.282000', '2023-05-24 09:21:39.281000', NULL, NULL),
(258, 'JEMBRANA', '2023-05-24 09:21:39.319000', '2023-05-24 09:21:39.317000', NULL, NULL),
(259, 'BULELENG', '2023-05-24 09:21:39.353000', '2023-05-24 09:21:39.351000', NULL, NULL),
(260, 'DENPASAR', '2023-05-24 09:21:39.516000', '2023-05-24 09:21:39.513000', NULL, NULL),
(261, 'MATARAM', '2023-05-24 09:21:39.620000', '2023-05-24 09:21:39.618000', NULL, NULL),
(262, 'DOMPU', '2023-05-24 09:21:39.652000', '2023-05-24 09:21:39.650000', NULL, NULL),
(263, 'SUMBAWA BARAT', '2023-05-24 09:21:39.694000', '2023-05-24 09:21:39.692000', NULL, NULL),
(264, 'SUMBAWA', '2023-05-24 09:21:39.727000', '2023-05-24 09:21:39.726000', NULL, NULL),
(265, 'LOMBOK TENGAH', '2023-05-24 09:21:39.769000', '2023-05-24 09:21:39.767000', NULL, NULL),
(266, 'LOMBOK TIMUR', '2023-05-24 09:21:39.836000', '2023-05-24 09:21:39.834000', NULL, NULL),
(267, 'LOMBOK UTARA', '2023-05-24 09:21:39.893000', '2023-05-24 09:21:39.891000', NULL, NULL),
(268, 'LOMBOK BARAT', '2023-05-24 09:21:39.925000', '2023-05-24 09:21:39.924000', NULL, NULL),
(269, 'BIMA', '2023-05-24 09:21:39.957000', '2023-05-24 09:21:39.956000', NULL, NULL),
(270, 'TIMOR TENGAH SELATAN', '2023-05-24 09:21:39.995000', '2023-05-24 09:21:39.993000', NULL, NULL),
(271, 'FLORES TIMUR', '2023-05-24 09:21:40.052000', '2023-05-24 09:21:40.050000', NULL, NULL),
(272, 'ALOR', '2023-05-24 09:21:40.101000', '2023-05-24 09:21:40.099000', NULL, NULL),
(273, 'ENDE', '2023-05-24 09:21:40.135000', '2023-05-24 09:21:40.133000', NULL, NULL),
(274, 'NAGEKEO', '2023-05-24 09:21:40.169000', '2023-05-24 09:21:40.167000', NULL, NULL),
(275, 'KUPANG', '2023-05-24 09:21:40.202000', '2023-05-24 09:21:40.200000', NULL, NULL),
(276, 'SIKKA', '2023-05-24 09:21:40.235000', '2023-05-24 09:21:40.233000', NULL, NULL),
(277, 'NGADA', '2023-05-24 09:21:40.288000', '2023-05-24 09:21:40.287000', NULL, NULL),
(278, 'TIMOR TENGAH UTARA', '2023-05-24 09:21:40.321000', '2023-05-24 09:21:40.321000', NULL, NULL),
(279, 'BELU', '2023-05-24 09:21:40.346000', '2023-05-24 09:21:40.346000', NULL, NULL),
(280, 'LEMBATA', '2023-05-24 09:21:40.379000', '2023-05-24 09:21:40.379000', NULL, NULL),
(281, 'SUMBA BARAT DAYA', '2023-05-24 09:21:40.405000', '2023-05-24 09:21:40.404000', NULL, NULL),
(282, 'SUMBA BARAT', '2023-05-24 09:21:40.438000', '2023-05-24 09:21:40.437000', NULL, NULL),
(283, 'SUMBA TENGAH', '2023-05-24 09:21:40.471000', '2023-05-24 09:21:40.471000', NULL, NULL),
(284, 'SUMBA TIMUR', '2023-05-24 09:21:40.506000', '2023-05-24 09:21:40.506000', NULL, NULL),
(285, 'ROTE NDAO', '2023-05-24 09:21:40.538000', '2023-05-24 09:21:40.538000', NULL, NULL),
(286, 'MANGGARAI TIMUR', '2023-05-24 09:21:40.571000', '2023-05-24 09:21:40.571000', NULL, NULL),
(287, 'MANGGARAI', '2023-05-24 09:21:40.639000', '2023-05-24 09:21:40.638000', NULL, NULL),
(288, 'SABU RAIJUA', '2023-05-24 09:21:40.751000', '2023-05-24 09:21:40.751000', NULL, NULL),
(289, 'MANGGARAI BARAT', '2023-05-24 09:21:40.871000', '2023-05-24 09:21:40.871000', NULL, NULL),
(290, 'LANDAK', '2023-05-24 09:21:41.145000', '2023-05-24 09:21:41.144000', NULL, NULL),
(291, 'KETAPANG', '2023-05-24 09:21:41.180000', '2023-05-24 09:21:41.180000', NULL, NULL),
(292, 'SINTANG', '2023-05-24 09:21:41.217000', '2023-05-24 09:21:41.215000', NULL, NULL),
(293, 'KUBU RAYA', '2023-05-24 09:21:41.243000', '2023-05-24 09:21:41.241000', NULL, NULL),
(294, 'PONTIANAK', '2023-05-24 09:21:41.272000', '2023-05-24 09:21:41.271000', NULL, NULL),
(295, 'KAYONG UTARA', '2023-05-24 09:21:41.329000', '2023-05-24 09:21:41.329000', NULL, NULL),
(296, 'BENGKAYANG', '2023-05-24 09:21:41.354000', '2023-05-24 09:21:41.353000', NULL, NULL),
(297, 'KAPUAS HULU', '2023-05-24 09:21:41.387000', '2023-05-24 09:21:41.387000', NULL, NULL),
(298, 'SAMBAS', '2023-05-24 09:21:41.421000', '2023-05-24 09:21:41.420000', NULL, NULL),
(299, 'SINGKAWANG', '2023-05-24 09:21:41.455000', '2023-05-24 09:21:41.454000', NULL, NULL),
(300, 'SANGGAU', '2023-05-24 09:21:41.488000', '2023-05-24 09:21:41.488000', NULL, NULL),
(301, 'MELAWI', '2023-05-24 09:21:41.521000', '2023-05-24 09:21:41.521000', NULL, NULL),
(302, 'SEKADAU', '2023-05-24 09:21:41.555000', '2023-05-24 09:21:41.554000', NULL, NULL),
(303, 'KOTAWARINGIN TIMUR', '2023-05-24 09:21:41.580000', '2023-05-24 09:21:41.579000', NULL, NULL),
(304, 'SUKAMARA', '2023-05-24 09:21:41.643000', '2023-05-24 09:21:41.641000', NULL, NULL),
(305, 'KOTAWARINGIN BARAT', '2023-05-24 09:21:41.842000', '2023-05-24 09:21:41.841000', NULL, NULL),
(306, 'BARITO TIMUR', '2023-05-24 09:21:42.389000', '2023-05-24 09:21:42.387000', NULL, NULL),
(307, 'KAPUAS', '2023-05-24 09:21:42.547000', '2023-05-24 09:21:42.546000', NULL, NULL),
(308, 'PULANG PISAU', '2023-05-24 09:21:42.583000', '2023-05-24 09:21:42.581000', NULL, NULL),
(309, 'LAMANDAU', '2023-05-24 09:21:42.613000', '2023-05-24 09:21:42.612000', NULL, NULL),
(310, 'SERUYAN', '2023-05-24 09:21:42.646000', '2023-05-24 09:21:42.646000', NULL, NULL),
(311, 'KATINGAN', '2023-05-24 09:21:42.683000', '2023-05-24 09:21:42.681000', NULL, NULL),
(312, 'BARITO SELATAN', '2023-05-24 09:21:42.716000', '2023-05-24 09:21:42.714000', NULL, NULL),
(313, 'MURUNG RAYA', '2023-05-24 09:21:42.750000', '2023-05-24 09:21:42.748000', NULL, NULL),
(314, 'BARITO UTARA', '2023-05-24 09:21:42.791000', '2023-05-24 09:21:42.790000', NULL, NULL),
(315, 'GUNUNG MAS', '2023-05-24 09:21:42.833000', '2023-05-24 09:21:42.831000', NULL, NULL),
(316, 'PALANGKA RAYA', '2023-05-24 09:21:42.875000', '2023-05-24 09:21:42.873000', NULL, NULL),
(317, 'TAPIN', '2023-05-24 09:21:42.909000', '2023-05-24 09:21:42.907000', NULL, NULL),
(318, 'BANJAR', '2023-05-24 09:21:42.941000', '2023-05-24 09:21:42.940000', NULL, NULL),
(319, 'HULU SUNGAI TENGAH', '2023-05-24 09:21:42.983000', '2023-05-24 09:21:42.981000', NULL, NULL),
(320, 'TABALONG', '2023-05-24 09:21:43.016000', '2023-05-24 09:21:43.015000', NULL, NULL),
(321, 'HULU SUNGAI UTARA', '2023-05-24 09:21:43.050000', '2023-05-24 09:21:43.048000', NULL, NULL),
(322, 'BALANGAN', '2023-05-24 09:21:43.083000', '2023-05-24 09:21:43.081000', NULL, NULL),
(323, 'TANAH BUMBU', '2023-05-24 09:21:43.116000', '2023-05-24 09:21:43.115000', NULL, NULL),
(324, 'BANJARMASIN', '2023-05-24 09:21:43.149000', '2023-05-24 09:21:43.147000', NULL, NULL),
(325, 'KOTABARU', '2023-05-24 09:21:43.176000', '2023-05-24 09:21:43.174000', NULL, NULL),
(326, 'TANAH LAUT', '2023-05-24 09:21:43.208000', '2023-05-24 09:21:43.206000', NULL, NULL),
(327, 'HULU SUNGAI SELATAN', '2023-05-24 09:21:43.240000', '2023-05-24 09:21:43.239000', NULL, NULL),
(328, 'BARITO KUALA', '2023-05-24 09:21:43.278000', '2023-05-24 09:21:43.278000', NULL, NULL),
(329, 'BANJARBARU', '2023-05-24 09:21:43.307000', '2023-05-24 09:21:43.306000', NULL, NULL),
(330, 'KUTAI BARAT', '2023-05-24 09:21:43.345000', '2023-05-24 09:21:43.345000', NULL, NULL),
(331, 'SAMARINDA', '2023-05-24 09:21:43.379000', '2023-05-24 09:21:43.379000', NULL, NULL),
(332, 'PASER', '2023-05-24 09:21:43.446000', '2023-05-24 09:21:43.445000', NULL, NULL),
(333, 'KUTAI KARTANEGARA', '2023-05-24 09:21:43.511000', '2023-05-24 09:21:43.511000', NULL, NULL),
(334, 'BERAU', '2023-05-24 09:21:43.613000', '2023-05-24 09:21:43.613000', NULL, NULL),
(335, 'PENAJAM PASER UTARA', '2023-05-24 09:21:43.646000', '2023-05-24 09:21:43.645000', NULL, NULL),
(336, 'BONTANG', '2023-05-24 09:21:43.679000', '2023-05-24 09:21:43.678000', NULL, NULL),
(337, 'KUTAI TIMUR', '2023-05-24 09:21:43.712000', '2023-05-24 09:21:43.712000', NULL, NULL),
(338, 'BALIKPAPAN', '2023-05-24 09:21:43.746000', '2023-05-24 09:21:43.745000', NULL, NULL),
(339, 'MALINAU', '2023-05-24 09:21:43.779000', '2023-05-24 09:21:43.778000', NULL, NULL),
(340, 'NUNUKAN', '2023-05-24 09:21:43.805000', '2023-05-24 09:21:43.805000', NULL, NULL),
(341, 'BULUNGAN (BULONGAN)', '2023-05-24 09:21:43.843000', '2023-05-24 09:21:43.841000', NULL, NULL),
(342, 'TANA TIDUNG', '2023-05-24 09:21:43.876000', '2023-05-24 09:21:43.874000', NULL, NULL),
(343, 'TARAKAN', '2023-05-24 09:21:43.917000', '2023-05-24 09:21:43.915000', NULL, NULL),
(344, 'BOLAANG MONGONDOW (BOLMONG)', '2023-05-24 09:21:43.950000', '2023-05-24 09:21:43.948000', NULL, NULL),
(345, 'BOLAANG MONGONDOW SELATAN', '2023-05-24 09:21:43.992000', '2023-05-24 09:21:43.990000', NULL, NULL),
(346, 'MINAHASA SELATAN', '2023-05-24 09:21:44.025000', '2023-05-24 09:21:44.023000', NULL, NULL),
(347, 'BITUNG', '2023-05-24 09:21:44.067000', '2023-05-24 09:21:44.065000', NULL, NULL),
(348, 'MINAHASA', '2023-05-24 09:21:44.101000', '2023-05-24 09:21:44.099000', NULL, NULL),
(349, 'KEPULAUAN SANGIHE', '2023-05-24 09:21:44.139000', '2023-05-24 09:21:44.138000', NULL, NULL),
(350, 'MINAHASA UTARA', '2023-05-24 09:21:44.171000', '2023-05-24 09:21:44.170000', NULL, NULL),
(351, 'KEPULAUAN TALAUD', '2023-05-24 09:21:44.196000', '2023-05-24 09:21:44.195000', NULL, NULL),
(352, 'KEPULAUAN SIAU TAGULANDANG BIARO (SITARO)', '2023-05-24 09:21:44.229000', '2023-05-24 09:21:44.228000', NULL, NULL),
(353, 'MANADO', '2023-05-24 09:21:44.255000', '2023-05-24 09:21:44.255000', NULL, NULL),
(354, 'BOLAANG MONGONDOW UTARA', '2023-05-24 09:21:44.288000', '2023-05-24 09:21:44.287000', NULL, NULL),
(355, 'BOLAANG MONGONDOW TIMUR', '2023-05-24 09:21:44.322000', '2023-05-24 09:21:44.321000', NULL, NULL),
(356, 'MINAHASA TENGGARA', '2023-05-24 09:21:44.355000', '2023-05-24 09:21:44.354000', NULL, NULL),
(357, 'KOTAMOBAGU', '2023-05-24 09:21:44.389000', '2023-05-24 09:21:44.387000', NULL, NULL),
(358, 'TOMOHON', '2023-05-24 09:21:44.425000', '2023-05-24 09:21:44.423000', NULL, NULL),
(359, 'BANGGAI KEPULAUAN', '2023-05-24 09:21:44.501000', '2023-05-24 09:21:44.499000', NULL, NULL),
(360, 'TOLI-TOLI', '2023-05-24 09:21:44.551000', '2023-05-24 09:21:44.549000', NULL, NULL),
(361, 'PARIGI MOUTONG', '2023-05-24 09:21:44.625000', '2023-05-24 09:21:44.623000', NULL, NULL),
(362, 'BUOL', '2023-05-24 09:21:44.681000', '2023-05-24 09:21:44.680000', NULL, NULL),
(363, 'DONGGALA', '2023-05-24 09:21:44.748000', '2023-05-24 09:21:44.747000', NULL, NULL),
(364, 'POSO', '2023-05-24 09:21:44.780000', '2023-05-24 09:21:44.779000', NULL, NULL),
(365, 'MOROWALI', '2023-05-24 09:21:44.825000', '2023-05-24 09:21:44.823000', NULL, NULL),
(366, 'TOJO UNA-UNA', '2023-05-24 09:21:44.850000', '2023-05-24 09:21:44.848000', NULL, NULL),
(367, 'BANGGAI', '2023-05-24 09:21:44.892000', '2023-05-24 09:21:44.890000', NULL, NULL),
(368, 'SIGI', '2023-05-24 09:21:44.923000', '2023-05-24 09:21:44.922000', NULL, NULL),
(369, 'PALU', '2023-05-24 09:21:44.953000', '2023-05-24 09:21:44.953000', NULL, NULL),
(370, 'MAROS', '2023-05-24 09:21:44.987000', '2023-05-24 09:21:44.987000', NULL, NULL),
(371, 'WAJO', '2023-05-24 09:21:45.020000', '2023-05-24 09:21:45.019000', NULL, NULL),
(372, 'BONE', '2023-05-24 09:21:45.045000', '2023-05-24 09:21:45.045000', NULL, NULL),
(373, 'SOPPENG', '2023-05-24 09:21:45.078000', '2023-05-24 09:21:45.078000', NULL, NULL),
(374, 'SIDENRENG RAPPANG / RAPANG', '2023-05-24 09:21:45.142000', '2023-05-24 09:21:45.140000', NULL, NULL),
(375, 'TAKALAR', '2023-05-24 09:21:45.175000', '2023-05-24 09:21:45.173000', NULL, NULL),
(376, 'BARRU', '2023-05-24 09:21:45.213000', '2023-05-24 09:21:45.212000', NULL, NULL),
(377, 'LUWU TIMUR', '2023-05-24 09:21:45.247000', '2023-05-24 09:21:45.246000', NULL, NULL),
(378, 'SINJAI', '2023-05-24 09:21:45.280000', '2023-05-24 09:21:45.279000', NULL, NULL),
(379, 'PANGKAJENE KEPULAUAN', '2023-05-24 09:21:45.305000', '2023-05-24 09:21:45.304000', NULL, NULL),
(380, 'PINRANG', '2023-05-24 09:21:45.343000', '2023-05-24 09:21:45.339000', NULL, NULL),
(381, 'JENEPONTO', '2023-05-24 09:21:45.375000', '2023-05-24 09:21:45.373000', NULL, NULL),
(382, 'PALOPO', '2023-05-24 09:21:45.416000', '2023-05-24 09:21:45.415000', NULL, NULL),
(383, 'TORAJA UTARA', '2023-05-24 09:21:45.459000', '2023-05-24 09:21:45.457000', NULL, NULL),
(384, 'LUWU', '2023-05-24 09:21:45.566000', '2023-05-24 09:21:45.565000', NULL, NULL),
(385, 'BULUKUMBA', '2023-05-24 09:21:45.617000', '2023-05-24 09:21:45.615000', NULL, NULL),
(386, 'MAKASSAR', '2023-05-24 09:21:45.684000', '2023-05-24 09:21:45.682000', NULL, NULL),
(387, 'SELAYAR (KEPULAUAN SELAYAR)', '2023-05-24 09:21:45.721000', '2023-05-24 09:21:45.720000', NULL, NULL),
(388, 'TANA TORAJA', '2023-05-24 09:21:45.780000', '2023-05-24 09:21:45.779000', NULL, NULL),
(389, 'LUWU UTARA', '2023-05-24 09:21:45.833000', '2023-05-24 09:21:45.831000', NULL, NULL),
(390, 'BANTAENG', '2023-05-24 09:21:45.875000', '2023-05-24 09:21:45.873000', NULL, NULL),
(391, 'GOWA', '2023-05-24 09:21:45.908000', '2023-05-24 09:21:45.906000', NULL, NULL),
(392, 'ENREKANG', '2023-05-24 09:21:45.942000', '2023-05-24 09:21:45.940000', NULL, NULL),
(393, 'PAREPARE', '2023-05-24 09:21:45.983000', '2023-05-24 09:21:45.981000', NULL, NULL),
(394, 'KOLAKA', '2023-05-24 09:21:46.016000', '2023-05-24 09:21:46.015000', NULL, NULL),
(395, 'MUNA', '2023-05-24 09:21:46.051000', '2023-05-24 09:21:46.049000', NULL, NULL),
(396, 'KONAWE SELATAN', '2023-05-24 09:21:46.091000', '2023-05-24 09:21:46.089000', NULL, NULL),
(397, 'KENDARI', '2023-05-24 09:21:46.125000', '2023-05-24 09:21:46.123000', NULL, NULL),
(398, 'KONAWE', '2023-05-24 09:21:46.349000', '2023-05-24 09:21:46.347000', NULL, NULL),
(399, 'KONAWE UTARA', '2023-05-24 09:21:46.392000', '2023-05-24 09:21:46.390000', NULL, NULL),
(400, 'KOLAKA UTARA', '2023-05-24 09:21:46.433000', '2023-05-24 09:21:46.431000', NULL, NULL),
(401, 'BUTON', '2023-05-24 09:21:46.474000', '2023-05-24 09:21:46.472000', NULL, NULL),
(402, 'BOMBANA', '2023-05-24 09:21:46.504000', '2023-05-24 09:21:46.503000', NULL, NULL),
(403, 'WAKATOBI', '2023-05-24 09:21:47.255000', '2023-05-24 09:21:47.253000', NULL, NULL),
(404, 'BAU-BAU', '2023-05-24 09:21:47.630000', '2023-05-24 09:21:47.627000', NULL, NULL),
(405, 'BUTON UTARA', '2023-05-24 09:21:47.951000', '2023-05-24 09:21:47.950000', NULL, NULL),
(406, 'GORONTALO UTARA', '2023-05-24 09:21:48.272000', '2023-05-24 09:21:48.270000', NULL, NULL),
(407, 'BONE BOLANGO', '2023-05-24 09:21:49.545000', '2023-05-24 09:21:49.544000', NULL, NULL),
(408, 'GORONTALO', '2023-05-24 09:21:50.071000', '2023-05-24 09:21:50.070000', NULL, NULL),
(409, 'BOALEMO', '2023-05-24 09:21:50.130000', '2023-05-24 09:21:50.129000', NULL, NULL),
(410, 'POHUWATO', '2023-05-24 09:21:50.172000', '2023-05-24 09:21:50.171000', NULL, NULL),
(411, 'MAJENE', '2023-05-24 09:21:50.205000', '2023-05-24 09:21:50.204000', NULL, NULL),
(412, 'MAMUJU', '2023-05-24 09:21:50.230000', '2023-05-24 09:21:50.228000', NULL, NULL),
(413, 'MAMUJU UTARA', '2023-05-24 09:21:50.272000', '2023-05-24 09:21:50.271000', NULL, NULL),
(414, 'POLEWALI MANDAR', '2023-05-24 09:21:50.305000', '2023-05-24 09:21:50.303000', NULL, NULL),
(415, 'MAMASA', '2023-05-24 09:21:50.337000', '2023-05-24 09:21:50.336000', NULL, NULL),
(416, 'MALUKU TENGGARA BARAT', '2023-05-24 09:21:50.372000', '2023-05-24 09:21:50.371000', NULL, NULL),
(417, 'MALUKU TENGGARA', '2023-05-24 09:21:50.406000', '2023-05-24 09:21:50.405000', NULL, NULL),
(418, 'SERAM BAGIAN BARAT', '2023-05-24 09:21:50.438000', '2023-05-24 09:21:50.437000', NULL, NULL),
(419, 'MALUKU TENGAH', '2023-05-24 09:21:50.480000', '2023-05-24 09:21:50.479000', NULL, NULL),
(420, 'SERAM BAGIAN TIMUR', '2023-05-24 09:21:50.602000', '2023-05-24 09:21:50.600000', NULL, NULL),
(421, 'MALUKU BARAT DAYA', '2023-05-24 09:21:50.630000', '2023-05-24 09:21:50.629000', NULL, NULL),
(422, 'AMBON', '2023-05-24 09:21:50.663000', '2023-05-24 09:21:50.662000', NULL, NULL),
(423, 'BURU', '2023-05-24 09:21:50.694000', '2023-05-24 09:21:50.694000', NULL, NULL),
(424, 'BURU SELATAN', '2023-05-24 09:21:50.727000', '2023-05-24 09:21:50.726000', NULL, NULL),
(425, 'KEPULAUAN ARU', '2023-05-24 09:21:50.786000', '2023-05-24 09:21:50.786000', NULL, NULL),
(426, 'TUAL', '2023-05-24 09:21:50.819000', '2023-05-24 09:21:50.818000', NULL, NULL),
(427, 'HALMAHERA BARAT', '2023-05-24 09:21:50.852000', '2023-05-24 09:21:50.851000', NULL, NULL),
(428, 'TIDORE KEPULAUAN', '2023-05-24 09:21:50.911000', '2023-05-24 09:21:50.910000', NULL, NULL),
(429, 'TERNATE', '2023-05-24 09:21:50.936000', '2023-05-24 09:21:50.935000', NULL, NULL),
(430, 'PULAU MOROTAI', '2023-05-24 09:21:50.969000', '2023-05-24 09:21:50.968000', NULL, NULL),
(431, 'KEPULAUAN SULA', '2023-05-24 09:21:51.019000', '2023-05-24 09:21:51.019000', NULL, NULL),
(432, 'HALMAHERA SELATAN', '2023-05-24 09:21:51.052000', '2023-05-24 09:21:51.051000', NULL, NULL),
(433, 'HALMAHERA TENGAH', '2023-05-24 09:21:51.077000', '2023-05-24 09:21:51.076000', NULL, NULL),
(434, 'HALMAHERA TIMUR', '2023-05-24 09:21:51.110000', '2023-05-24 09:21:51.109000', NULL, NULL),
(435, 'HALMAHERA UTARA', '2023-05-24 09:21:51.170000', '2023-05-24 09:21:51.169000', NULL, NULL),
(436, 'YALIMO', '2023-05-24 09:21:51.211000', '2023-05-24 09:21:51.210000', NULL, NULL),
(437, 'DOGIYAI', '2023-05-24 09:21:51.245000', '2023-05-24 09:21:51.244000', NULL, NULL),
(438, 'ASMAT', '2023-05-24 09:21:51.278000', '2023-05-24 09:21:51.277000', NULL, NULL),
(439, 'JAYAPURA', '2023-05-24 09:21:51.311000', '2023-05-24 09:21:51.310000', NULL, NULL),
(440, 'PANIAI', '2023-05-24 09:21:51.352000', '2023-05-24 09:21:51.351000', NULL, NULL),
(441, 'MAPPI', '2023-05-24 09:21:51.386000', '2023-05-24 09:21:51.385000', NULL, NULL),
(442, 'TOLIKARA', '2023-05-24 09:21:51.419000', '2023-05-24 09:21:51.418000', NULL, NULL),
(443, 'PUNCAK JAYA', '2023-05-24 09:21:51.453000', '2023-05-24 09:21:51.452000', NULL, NULL),
(444, 'PEGUNUNGAN BINTANG', '2023-05-24 09:21:51.486000', '2023-05-24 09:21:51.485000', NULL, NULL),
(445, 'JAYAWIJAYA', '2023-05-24 09:21:51.519000', '2023-05-24 09:21:51.518000', NULL, NULL),
(446, 'LANNY JAYA', '2023-05-24 09:21:51.552000', '2023-05-24 09:21:51.551000', NULL, NULL),
(447, 'NDUGA', '2023-05-24 09:21:51.586000', '2023-05-24 09:21:51.585000', NULL, NULL),
(448, 'BIAK NUMFOR', '2023-05-24 09:21:51.619000', '2023-05-24 09:21:51.618000', NULL, NULL),
(449, 'KEPULAUAN YAPEN (YAPEN WAROPEN)', '2023-05-24 09:21:51.646000', '2023-05-24 09:21:51.645000', NULL, NULL),
(450, 'PUNCAK', '2023-05-24 09:21:51.677000', '2023-05-24 09:21:51.676000', NULL, NULL),
(451, 'INTAN JAYA', '2023-05-24 09:21:51.703000', '2023-05-24 09:21:51.702000', NULL, NULL),
(452, 'WAROPEN', '2023-05-24 09:21:51.735000', '2023-05-24 09:21:51.735000', NULL, NULL),
(453, 'NABIRE', '2023-05-24 09:21:51.769000', '2023-05-24 09:21:51.768000', NULL, NULL),
(454, 'MIMIKA', '2023-05-24 09:21:51.810000', '2023-05-24 09:21:51.810000', NULL, NULL),
(455, 'BOVEN DIGOEL', '2023-05-24 09:21:51.844000', '2023-05-24 09:21:51.843000', NULL, NULL),
(456, 'YAHUKIMO', '2023-05-24 09:21:51.902000', '2023-05-24 09:21:51.902000', NULL, NULL),
(457, 'SARMI', '2023-05-24 09:21:51.962000', '2023-05-24 09:21:51.961000', NULL, NULL),
(458, 'MERAUKE', '2023-05-24 09:21:52.069000', '2023-05-24 09:21:52.068000', NULL, NULL),
(459, 'DEIYAI (DELIYAI)', '2023-05-24 09:21:52.103000', '2023-05-24 09:21:52.102000', NULL, NULL),
(460, 'KEEROM', '2023-05-24 09:21:52.136000', '2023-05-24 09:21:52.135000', NULL, NULL),
(461, 'SUPIORI', '2023-05-24 09:21:52.169000', '2023-05-24 09:21:52.168000', NULL, NULL),
(462, 'MAMBERAMO RAYA', '2023-05-24 09:21:52.248000', '2023-05-24 09:21:52.247000', NULL, NULL),
(463, 'MAMBERAMO TENGAH', '2023-05-24 09:21:52.289000', '2023-05-24 09:21:52.288000', NULL, NULL),
(464, 'RAJA AMPAT', '2023-05-24 09:21:52.322000', '2023-05-24 09:21:52.320000', NULL, NULL),
(465, 'MANOKWARI SELATAN', '2023-05-24 09:21:52.355000', '2023-05-24 09:21:52.354000', NULL, NULL),
(466, 'MANOKWARI', '2023-05-24 09:21:52.389000', '2023-05-24 09:21:52.387000', NULL, NULL),
(467, 'KAIMANA', '2023-05-24 09:21:52.419000', '2023-05-24 09:21:52.418000', NULL, NULL),
(468, 'MAYBRAT', '2023-05-24 09:21:52.452000', '2023-05-24 09:21:52.451000', NULL, NULL),
(469, 'SORONG SELATAN', '2023-05-24 09:21:52.480000', '2023-05-24 09:21:52.478000', NULL, NULL),
(470, 'FAKFAK', '2023-05-24 09:21:52.522000', '2023-05-24 09:21:52.520000', NULL, NULL),
(471, 'PEGUNUNGAN ARFAK', '2023-05-24 09:21:52.556000', '2023-05-24 09:21:52.555000', NULL, NULL),
(472, 'TAMBRAUW', '2023-05-24 09:21:52.589000', '2023-05-24 09:21:52.587000', NULL, NULL),
(473, 'SORONG', '2023-05-24 09:21:52.631000', '2023-05-24 09:21:52.629000', NULL, NULL),
(474, 'TELUK WONDAMA', '2023-05-24 09:21:52.668000', '2023-05-24 09:21:52.667000', NULL, NULL),
(475, 'TELUK BINTUNI', '2023-05-24 09:21:52.701000', '2023-05-24 09:21:52.701000', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indeks untuk tabel `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indeks untuk tabel `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indeks untuk tabel `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indeks untuk tabel `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`),
  ADD KEY `admin_users_roles_links_order_fk` (`role_order`),
  ADD KEY `admin_users_roles_links_order_inv_fk` (`user_order`);

--
-- Indeks untuk tabel `agamas`
--
ALTER TABLE `agamas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agamas_created_by_id_fk` (`created_by_id`),
  ADD KEY `agamas_updated_by_id_fk` (`updated_by_id`);

--
-- Indeks untuk tabel `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `beritas_created_by_id_fk` (`created_by_id`),
  ADD KEY `beritas_updated_by_id_fk` (`updated_by_id`);

--
-- Indeks untuk tabel `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_created_by_id_fk` (`created_by_id`),
  ADD KEY `cities_updated_by_id_fk` (`updated_by_id`);

--
-- Indeks untuk tabel `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_created_by_id_fk` (`created_by_id`),
  ADD KEY `districts_updated_by_id_fk` (`updated_by_id`);

--
-- Indeks untuk tabel `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indeks untuk tabel `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`),
  ADD KEY `files_folder_links_order_inv_fk` (`file_order`);

--
-- Indeks untuk tabel `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_morphs_fk` (`file_id`),
  ADD KEY `files_related_morphs_order_index` (`order`),
  ADD KEY `files_related_morphs_id_column_index` (`related_id`);

--
-- Indeks untuk tabel `goldars`
--
ALTER TABLE `goldars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `goldars_created_by_id_fk` (`created_by_id`),
  ADD KEY `goldars_updated_by_id_fk` (`updated_by_id`);

--
-- Indeks untuk tabel `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indeks untuk tabel `kks`
--
ALTER TABLE `kks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kks_created_by_id_fk` (`created_by_id`),
  ADD KEY `kks_updated_by_id_fk` (`updated_by_id`);

--
-- Indeks untuk tabel `kks_city_links`
--
ALTER TABLE `kks_city_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kks_city_links_unique` (`kk_id`,`city_id`),
  ADD KEY `kks_city_links_fk` (`kk_id`),
  ADD KEY `kks_city_links_inv_fk` (`city_id`);

--
-- Indeks untuk tabel `kks_district_links`
--
ALTER TABLE `kks_district_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kks_district_links_unique` (`kk_id`,`district_id`),
  ADD KEY `kks_district_links_fk` (`kk_id`),
  ADD KEY `kks_district_links_inv_fk` (`district_id`);

--
-- Indeks untuk tabel `kks_kepala_keluarga_links`
--
ALTER TABLE `kks_kepala_keluarga_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kks_kepala_keluarga_links_unique` (`kk_id`,`penduduk_id`),
  ADD KEY `kks_kepala_keluarga_links_fk` (`kk_id`),
  ADD KEY `kks_kepala_keluarga_links_inv_fk` (`penduduk_id`);

--
-- Indeks untuk tabel `kks_province_links`
--
ALTER TABLE `kks_province_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kks_province_links_unique` (`kk_id`,`province_id`),
  ADD KEY `kks_province_links_fk` (`kk_id`),
  ADD KEY `kks_province_links_inv_fk` (`province_id`);

--
-- Indeks untuk tabel `penduduks`
--
ALTER TABLE `penduduks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penduduks_created_by_id_fk` (`created_by_id`),
  ADD KEY `penduduks_updated_by_id_fk` (`updated_by_id`);

--
-- Indeks untuk tabel `penduduks_agama_links`
--
ALTER TABLE `penduduks_agama_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `penduduks_agama_links_unique` (`penduduk_id`,`agama_id`),
  ADD KEY `penduduks_agama_links_fk` (`penduduk_id`),
  ADD KEY `penduduks_agama_links_inv_fk` (`agama_id`);

--
-- Indeks untuk tabel `penduduks_goldar_links`
--
ALTER TABLE `penduduks_goldar_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `penduduks_goldar_links_unique` (`penduduk_id`,`goldar_id`),
  ADD KEY `penduduks_goldar_links_fk` (`penduduk_id`),
  ADD KEY `penduduks_goldar_links_inv_fk` (`goldar_id`);

--
-- Indeks untuk tabel `penduduks_wilayah_links`
--
ALTER TABLE `penduduks_wilayah_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `penduduks_wilayah_links_unique` (`penduduk_id`,`wilayah_id`),
  ADD KEY `penduduks_wilayah_links_fk` (`penduduk_id`),
  ADD KEY `penduduks_wilayah_links_inv_fk` (`wilayah_id`),
  ADD KEY `penduduks_wilayah_links_order_inv_fk` (`penduduk_order`);

--
-- Indeks untuk tabel `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provinces_created_by_id_fk` (`created_by_id`),
  ADD KEY `provinces_updated_by_id_fk` (`updated_by_id`);

--
-- Indeks untuk tabel `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indeks untuk tabel `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indeks untuk tabel `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`);

--
-- Indeks untuk tabel `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indeks untuk tabel `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indeks untuk tabel `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_links_unique` (`transfer_token_permission_id`,`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_fk` (`transfer_token_permission_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_inv_fk` (`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_order_inv_fk` (`transfer_token_permission_order`);

--
-- Indeks untuk tabel `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indeks untuk tabel `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`);

--
-- Indeks untuk tabel `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indeks untuk tabel `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `up_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indeks untuk tabel `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indeks untuk tabel `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indeks untuk tabel `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`),
  ADD KEY `up_users_role_links_order_inv_fk` (`user_order`);

--
-- Indeks untuk tabel `wilayahs`
--
ALTER TABLE `wilayahs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wilayahs_created_by_id_fk` (`created_by_id`),
  ADD KEY `wilayahs_updated_by_id_fk` (`updated_by_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT untuk tabel `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT untuk tabel `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `agamas`
--
ALTER TABLE `agamas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT untuk tabel `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3592;

--
-- AUTO_INCREMENT untuk tabel `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `files_folder_links`
--
ALTER TABLE `files_folder_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `goldars`
--
ALTER TABLE `goldars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kks`
--
ALTER TABLE `kks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kks_city_links`
--
ALTER TABLE `kks_city_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kks_district_links`
--
ALTER TABLE `kks_district_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kks_kepala_keluarga_links`
--
ALTER TABLE `kks_kepala_keluarga_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kks_province_links`
--
ALTER TABLE `kks_province_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `penduduks`
--
ALTER TABLE `penduduks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `penduduks_agama_links`
--
ALTER TABLE `penduduks_agama_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `penduduks_goldar_links`
--
ALTER TABLE `penduduks_goldar_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `penduduks_wilayah_links`
--
ALTER TABLE `penduduks_wilayah_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `wilayahs`
--
ALTER TABLE `wilayahs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=476;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `agamas`
--
ALTER TABLE `agamas`
  ADD CONSTRAINT `agamas_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `agamas_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `beritas`
--
ALTER TABLE `beritas`
  ADD CONSTRAINT `beritas_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `beritas_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `cities_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `districts_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `goldars`
--
ALTER TABLE `goldars`
  ADD CONSTRAINT `goldars_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `goldars_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `kks`
--
ALTER TABLE `kks`
  ADD CONSTRAINT `kks_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `kks_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `kks_city_links`
--
ALTER TABLE `kks_city_links`
  ADD CONSTRAINT `kks_city_links_fk` FOREIGN KEY (`kk_id`) REFERENCES `kks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `kks_city_links_inv_fk` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kks_district_links`
--
ALTER TABLE `kks_district_links`
  ADD CONSTRAINT `kks_district_links_fk` FOREIGN KEY (`kk_id`) REFERENCES `kks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `kks_district_links_inv_fk` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kks_kepala_keluarga_links`
--
ALTER TABLE `kks_kepala_keluarga_links`
  ADD CONSTRAINT `kks_kepala_keluarga_links_fk` FOREIGN KEY (`kk_id`) REFERENCES `kks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `kks_kepala_keluarga_links_inv_fk` FOREIGN KEY (`penduduk_id`) REFERENCES `penduduks` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kks_province_links`
--
ALTER TABLE `kks_province_links`
  ADD CONSTRAINT `kks_province_links_fk` FOREIGN KEY (`kk_id`) REFERENCES `kks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `kks_province_links_inv_fk` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penduduks`
--
ALTER TABLE `penduduks`
  ADD CONSTRAINT `penduduks_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `penduduks_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `penduduks_agama_links`
--
ALTER TABLE `penduduks_agama_links`
  ADD CONSTRAINT `penduduks_agama_links_fk` FOREIGN KEY (`penduduk_id`) REFERENCES `penduduks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `penduduks_agama_links_inv_fk` FOREIGN KEY (`agama_id`) REFERENCES `agamas` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penduduks_goldar_links`
--
ALTER TABLE `penduduks_goldar_links`
  ADD CONSTRAINT `penduduks_goldar_links_fk` FOREIGN KEY (`penduduk_id`) REFERENCES `penduduks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `penduduks_goldar_links_inv_fk` FOREIGN KEY (`goldar_id`) REFERENCES `goldars` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penduduks_wilayah_links`
--
ALTER TABLE `penduduks_wilayah_links`
  ADD CONSTRAINT `penduduks_wilayah_links_fk` FOREIGN KEY (`penduduk_id`) REFERENCES `penduduks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `penduduks_wilayah_links_inv_fk` FOREIGN KEY (`wilayah_id`) REFERENCES `wilayahs` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `provinces`
--
ALTER TABLE `provinces`
  ADD CONSTRAINT `provinces_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `provinces_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_inv_fk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `wilayahs`
--
ALTER TABLE `wilayahs`
  ADD CONSTRAINT `wilayahs_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `wilayahs_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
