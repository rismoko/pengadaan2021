-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Agu 2021 pada 11.14
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengadaan2021`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `token` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama`, `email`, `alamat`, `password`, `status`, `token`, `created_at`, `updated_at`) VALUES
(3, 'Rismoko', 'admin1@mail.com', 'karawang', 'eyJpdiI6ImRWS3RySTkzMm9BcjYzSHlub2o4emc9PSIsInZhbHVlIjoiOU5XdWR2OEhRTmRaMDJOQko5dmJqWmxkYWRDdEV1VFlJYzNVUHpqend2dz0iLCJtYWMiOiJjNzM3NmY2MjhjZjg2YmVmMGZjNmJiNzRlMDg2YTNkYjE1YTFlNmI5ZWZhZjExOGMwMjRkNTljMjg2OTJmZGZlIn0=', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZF9hZG1pbiI6M30.dW7s_a0SW6J8Q_Ucr287vncNsN3F5iVqcuRrg4f4U_g', '2021-08-03 20:15:09', '2021-08-09 06:04:17'),
(5, 'adiba', 'admin2@mail.com', 'kcp', 'eyJpdiI6InJFUURaZDA2aFRLdE1BSzJhdmtMdGc9PSIsInZhbHVlIjoiRFBueTc2QitWWU1NMGlNZnJxS1VNbEFmc2hlUE93d2d1cHFheUprd3J3dz0iLCJtYWMiOiI5ZWQ5ZDIyOGU2ZWQzNjY3MGY3ODQxYWNiY2M3ODQ4MDY0ZmUyNjQzOTU2ZWE5OTc5NzI1ZDdlYjQ1NTNiZGNkIn0=', 1, NULL, '2021-08-09 07:45:32', '2021-08-09 07:45:32'),
(6, 'zakia', 'admin3@mail.com', 'johar', 'eyJpdiI6InR6d3QyQTd0eXZ6NjFmSEh0SlZYVkE9PSIsInZhbHVlIjoieWJET1k4STJic2ZpQkdGaTdlZDJpOUd3T0M0dGdMT1NnZk1rUHYxUFVlZz0iLCJtYWMiOiJhZWIyZDFjOWFlZjYxYmFiZDVjZjdlMzMyYWUxMzdmNjkxMjQ4ZGI1YTg2YzJmNGVlYzZiZDc5NjVhYzUzOWUyIn0=', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZF9hZG1pbiI6Nn0.h2VS6RoEZtSrdXZzIX38hlEU8nVZlTu3CchkISciqTk', '2021-08-09 20:08:04', '2021-08-22 22:22:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_laporan`
--

CREATE TABLE `tbl_laporan` (
  `id_laporan` int(11) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `id_suplier` int(11) NOT NULL,
  `laporan` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_laporan`
--

INSERT INTO `tbl_laporan` (`id_laporan`, `id_pengajuan`, `id_suplier`, `laporan`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'public/laporan/LC99JhdaVWVhK8guwTFsfEQYcxE3SGrk1Ofb86gw.pdf', '2021-08-10 20:06:09', '2021-08-10 20:06:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengadaan`
--

CREATE TABLE `tbl_pengadaan` (
  `id_pengadaan` int(11) NOT NULL,
  `nama_pengadaan` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` text NOT NULL,
  `anggaran` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pengadaan`
--

INSERT INTO `tbl_pengadaan` (`id_pengadaan`, `nama_pengadaan`, `deskripsi`, `gambar`, `anggaran`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Meja', 'http://www.djpk.kemenkeu.go.id/wp-content/uploads/2017/05/presentasi-e-procurement.pdf', 'public/gambar/ScmPfMws4F2Na0MUHykquvOADjaOUQjF92yOta7S.png', 10000000, 1, '2021-08-04 20:33:44', '2021-08-09 06:33:51'),
(2, 'buku', 'http://www.djpk.kemenkeu.go.id/wp-content/uploads/2017/05/presentasi-e-procurement.pdf', 'public/gambar/BZ3Y9S3ZOYTCFCuE4BhMUFCgckelC6UjpqnDK7PE.png', 9000000, 1, '2021-08-04 20:40:12', '2021-08-05 00:23:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengajuan`
--

CREATE TABLE `tbl_pengajuan` (
  `id_pengajuan` int(11) NOT NULL,
  `id_suplier` int(11) NOT NULL,
  `id_pengadaan` int(11) NOT NULL,
  `anggaran` double NOT NULL,
  `proposal` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pengajuan`
--

INSERT INTO `tbl_pengajuan` (`id_pengajuan`, `id_suplier`, `id_pengadaan`, `anggaran`, `proposal`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 12000000, 'public/proposal/Lim1MLTSeIG79WHVynWFVPQRGrHJzSM5FHibJ7pP.pdf', 3, '2021-08-10 16:42:46', '2021-08-15 15:58:59'),
(2, 2, 2, 9000000, 'public/proposal/YFKMvQCGUDA3ZRxIlZnOhuD1chZqmg8vzEu4p6bz.pdf', 2, '2021-08-10 19:07:18', '2021-08-11 20:31:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_suplier`
--

CREATE TABLE `tbl_suplier` (
  `id_suplier` int(11) NOT NULL,
  `nama_usaha` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `no_npwp` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `token` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_suplier`
--

INSERT INTO `tbl_suplier` (`id_suplier`, `nama_usaha`, `email`, `alamat`, `no_npwp`, `password`, `status`, `token`, `created_at`, `updated_at`) VALUES
(2, 'pt.maju terus', 'rismoko35@gmail.com', 'jl.citra', '12435465656445', 'eyJpdiI6IlhDWXYyR2JPOGtaTmRZVEJGWlMwa1E9PSIsInZhbHVlIjoiSXFxaUpvN1RHWVhQMFhjMU9aWXp4UT09IiwibWFjIjoiNTAyZmU5NWJlNzE3OWQ4NWVhNWEyMzY1N2JhOTk4ZTgyZmExMDBjOWExZDQxOTZiNGJmMjMzNjQ3M2E4YWIzZiJ9', 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZF9zdXBsaWVyIjoyfQ.OJVL_9oZui0FZ4rsJSyAwANNAphOirsr2bNj47KLdaY', '2021-07-28 20:33:37', '2021-08-22 22:07:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tbl_laporan`
--
ALTER TABLE `tbl_laporan`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indeks untuk tabel `tbl_pengadaan`
--
ALTER TABLE `tbl_pengadaan`
  ADD PRIMARY KEY (`id_pengadaan`);

--
-- Indeks untuk tabel `tbl_pengajuan`
--
ALTER TABLE `tbl_pengajuan`
  ADD PRIMARY KEY (`id_pengajuan`);

--
-- Indeks untuk tabel `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  ADD PRIMARY KEY (`id_suplier`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_laporan`
--
ALTER TABLE `tbl_laporan`
  MODIFY `id_laporan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengadaan`
--
ALTER TABLE `tbl_pengadaan`
  MODIFY `id_pengadaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengajuan`
--
ALTER TABLE `tbl_pengajuan`
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  MODIFY `id_suplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
