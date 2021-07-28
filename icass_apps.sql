/*
 Navicat Premium Data Transfer

 Source Server         : mariadb_lokal
 Source Server Type    : MariaDB
 Source Server Version : 100510
 Source Host           : localhost:3306
 Source Schema         : icass_apps

 Target Server Type    : MariaDB
 Target Server Version : 100510
 File Encoding         : 65001

 Date: 28/07/2021 18:38:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_apicustom
-- ----------------------------
DROP TABLE IF EXISTS `cms_apicustom`;
CREATE TABLE `cms_apicustom`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tabel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `aksi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kolom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `orderby` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sub_query_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sql_where` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parameter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `responses` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_apicustom
-- ----------------------------
INSERT INTO `cms_apicustom` VALUES (1, 'menu_all', 'm_menu', 'list', NULL, NULL, NULL, NULL, 'Menu All', '<p>Menampilkan semua data menu dari tabel m_menu</p>', NULL, NULL, NULL, 'get', 'a:5:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:5:\"harga\";s:4:\"type\";s:7:\"numeric\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:3;a:5:{s:4:\"name\";s:8:\"group_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:4;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"bigint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:5:\"harga\";s:4:\"type\";s:7:\"numeric\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:10:\"keterangan\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:6:\"gambar\";s:4:\"type\";s:5:\"image\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:8:\"group_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');
INSERT INTO `cms_apicustom` VALUES (3, 'menu_by_id', 'm_menu', 'detail', NULL, NULL, NULL, NULL, 'Menu By Id', '<p>Detail data menu by ID</p>', NULL, NULL, NULL, 'get', 'a:2:{i:0;a:5:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"bigint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:5:\"harga\";s:4:\"type\";s:7:\"numeric\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:10:\"keterangan\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:6:\"gambar\";s:4:\"type\";s:5:\"image\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:8:\"group_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');
INSERT INTO `cms_apicustom` VALUES (4, 'menu_minuman', 'vw_menu_minuman', 'list', NULL, 'id', NULL, NULL, 'menu minuman', 'daftar semua minuman', NULL, NULL, NULL, 'get', 'a:1:{i:0;a:5:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"bigint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:5:\"harga\";s:4:\"type\";s:7:\"numeric\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:10:\"keterangan\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:6:\"gambar\";s:4:\"type\";s:5:\"image\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:8:\"group_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');
INSERT INTO `cms_apicustom` VALUES (5, 'menu_makanan', 'vw_menu_makanan', 'list', NULL, 'id', NULL, NULL, 'menu makanan', '<p>all menu makanan</p>', NULL, NULL, NULL, 'get', 'a:1:{i:0;a:5:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"bigint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:5:\"harga\";s:4:\"type\";s:7:\"numeric\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:10:\"keterangan\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:6:\"gambar\";s:4:\"type\";s:5:\"image\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:8:\"group_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');
INSERT INTO `cms_apicustom` VALUES (6, 'menu_snack', 'vw_menu_cemilan', 'list', NULL, NULL, NULL, NULL, 'menu_snack', '<p>data menu snack</p>', NULL, NULL, NULL, 'get', 'a:1:{i:0;a:5:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"bigint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:5:\"harga\";s:4:\"type\";s:7:\"numeric\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:10:\"keterangan\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:6:\"gambar\";s:4:\"type\";s:5:\"image\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:8:\"group_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');
INSERT INTO `cms_apicustom` VALUES (7, 'meja_aktif', 'm_meja', 'list', NULL, NULL, NULL, NULL, 'Meja Aktif', '<p>daftar meja yang sedang aktif</p>', NULL, NULL, NULL, 'get', 'a:3:{i:0;a:5:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}i:1;a:5:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"0\";}i:2;a:5:{s:4:\"name\";s:8:\"customer\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"bigint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:10:\"keterangan\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:9:\"kapasitas\";s:4:\"type\";s:7:\"numeric\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:7:\"tinyint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:10:\"pesanan_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:8:\"customer\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');
INSERT INTO `cms_apicustom` VALUES (8, 'pesanan', 'vw_pesanan', 'list', NULL, NULL, NULL, NULL, 'pesanan', '<p>daftar pesanan&nbsp;</p>', NULL, NULL, NULL, 'get', 'a:2:{i:0;a:5:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}i:1;a:5:{s:4:\"name\";s:8:\"customer\";s:4:\"type\";s:6:\"string\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"1\";}}', 'a:11:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:4:\"nama\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:11:\"meja_status\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:8:\"customer\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:10:\"pesanan_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:5:\"total\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:5:\"bayar\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:9:\"kembalian\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:9:\"tgl_bayar\";s:4:\"type\";s:8:\"datetime\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:10:\"nama_kasir\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:14:\"status_pesanan\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');
INSERT INTO `cms_apicustom` VALUES (9, 'pesanan_detail', 't_pesanan_detail', 'list', NULL, NULL, NULL, NULL, 'pesanan detail', '<p>detail pesanan</p>', NULL, NULL, NULL, 'get', 'a:1:{i:0;a:5:{s:4:\"name\";s:12:\"t_pesanan_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"0\";}}', 'a:9:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"bigint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:12:\"t_pesanan_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:9:\"m_menu_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:6:\"jumlah\";s:4:\"type\";s:7:\"numeric\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:5:\"harga\";s:4:\"type\";s:7:\"numeric\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:11:\"total_harga\";s:4:\"type\";s:7:\"numeric\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:7:\"numeric\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:9:\"nama_menu\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:46:\"(select nama from m_menu where id = m_menu_id)\";s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:6:\"urutan\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');
INSERT INTO `cms_apicustom` VALUES (10, 'urutan_pesanan', 'vw_urutan_pesanan', 'list', NULL, NULL, NULL, NULL, 'urutan pesanan', '<p>jumlah urutan</p>', NULL, NULL, NULL, 'get', 'a:1:{i:0;a:5:{s:4:\"name\";s:12:\"t_pesanan_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"0\";}}', 'a:2:{i:0;a:4:{s:4:\"name\";s:12:\"t_pesanan_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:6:\"urutan\";s:4:\"type\";s:7:\"numeric\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');
INSERT INTO `cms_apicustom` VALUES (11, 'pesanan_by_id', 't_pesanan_detail', 'list', NULL, NULL, NULL, NULL, 'pesanan by id', '<p>pesanan by ID</p>', NULL, NULL, NULL, 'get', 'a:1:{i:0;a:5:{s:4:\"name\";s:12:\"t_pesanan_id\";s:4:\"type\";s:7:\"integer\";s:6:\"config\";N;s:8:\"required\";s:1:\"0\";s:4:\"used\";s:1:\"0\";}}', 'a:11:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"bigint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:12:\"t_pesanan_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:9:\"m_menu_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:6:\"jumlah\";s:4:\"type\";s:7:\"numeric\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:5:\"harga\";s:4:\"type\";s:7:\"numeric\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:11:\"total_harga\";s:4:\"type\";s:7:\"numeric\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:7:\"numeric\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:6:\"urutan\";s:4:\"type\";s:7:\"numeric\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:9:\"nama_menu\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:46:\"(select nama from m_menu where id = m_menu_id)\";s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:6:\"gambar\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:48:\"(select gambar from m_menu where id = m_menu_id)\";s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:6:\"jumlah\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";s:72:\"(select sum(jumlah) as jumlah from t_pesanan_detail  group by m_menu_id)\";s:4:\"used\";s:1:\"1\";}}');

-- ----------------------------
-- Table structure for cms_apikey
-- ----------------------------
DROP TABLE IF EXISTS `cms_apikey`;
CREATE TABLE `cms_apikey`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hit` int(11) NULL DEFAULT NULL,
  `status` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_apikey
-- ----------------------------
INSERT INTO `cms_apikey` VALUES (2, 'b6e11605e6a081388c2fdc99e78e866a', 0, 'active', '2021-06-30 03:14:52', NULL);
INSERT INTO `cms_apikey` VALUES (3, 'e9bcea6155e98ab3e9f9a065269584d5', 0, 'active', '2021-06-30 03:15:07', NULL);

-- ----------------------------
-- Table structure for cms_dashboard
-- ----------------------------
DROP TABLE IF EXISTS `cms_dashboard`;
CREATE TABLE `cms_dashboard`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_dashboard
-- ----------------------------

-- ----------------------------
-- Table structure for cms_email_queues
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_queues`;
CREATE TABLE `cms_email_queues`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `send_at` datetime NULL DEFAULT NULL,
  `email_recipient` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_from_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_cc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_sent` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_email_queues
-- ----------------------------

-- ----------------------------
-- Table structure for cms_email_templates
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_templates`;
CREATE TABLE `cms_email_templates`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `from_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `from_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_email_templates
-- ----------------------------
INSERT INTO `cms_email_templates` VALUES (1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2021-06-27 17:19:39', NULL);

-- ----------------------------
-- Table structure for cms_logs
-- ----------------------------
DROP TABLE IF EXISTS `cms_logs`;
CREATE TABLE `cms_logs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `useragent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_cms_users` int(11) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_logs
-- ----------------------------
INSERT INTO `cms_logs` VALUES (1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2021-06-27 17:20:50', NULL);
INSERT INTO `cms_logs` VALUES (2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/add-save', 'Add New Data MonitoringMeja at Statistic Builder', '', 1, '2021-06-27 17:48:39', NULL);
INSERT INTO `cms_logs` VALUES (3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/users/add-save', 'Add New Data admin at Users Management', '', 1, '2021-06-27 17:52:23', NULL);
INSERT INTO `cms_logs` VALUES (4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2021-06-27 17:52:32', NULL);
INSERT INTO `cms_logs` VALUES (5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@icass.com login with IP Address 127.0.0.1', '', 2, '2021-06-27 17:52:42', NULL);
INSERT INTO `cms_logs` VALUES (6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/edit-save/1', 'Update data Monitoring Meja at Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>MonitoringMeja</td><td>Monitoring Meja</td></tr><tr><td>slug</td><td>monitoringmeja</td><td></td></tr></tbody></table>', 2, '2021-06-27 18:04:29', NULL);
INSERT INTO `cms_logs` VALUES (7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/add-save', 'Add New Data Pengunjung at Statistic Builder', '', 2, '2021-06-27 18:05:54', NULL);
INSERT INTO `cms_logs` VALUES (8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/add-save', 'Add New Data Menu at Statistic Builder', '', 2, '2021-06-27 18:06:10', NULL);
INSERT INTO `cms_logs` VALUES (9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/statistic_builder/edit-save/1', 'Update data Monitoring Cafe at Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Monitoring Meja</td><td>Monitoring Cafe</td></tr><tr><td>slug</td><td>monitoringmeja</td><td></td></tr></tbody></table>', 2, '2021-06-27 18:08:16', NULL);
INSERT INTO `cms_logs` VALUES (10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@icass.com login with IP Address 127.0.0.1', '', 2, '2021-06-28 02:55:37', NULL);
INSERT INTO `cms_logs` VALUES (11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/users/delete-image', 'Delete the image of admin at Users Management', '', 2, '2021-06-28 03:33:22', NULL);
INSERT INTO `cms_logs` VALUES (12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/2', 'Update data admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/2/2021-06/profile_pic_3.png</td></tr><tr><td>password</td><td>$2y$10$YjofqCgmbNOPAl6MmWCHZufSg..MBefj4AZlu5hbCloGwl8g7xc6m</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 2, '2021-06-28 03:33:33', NULL);
INSERT INTO `cms_logs` VALUES (13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/2', 'Update data admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$YjofqCgmbNOPAl6MmWCHZufSg..MBefj4AZlu5hbCloGwl8g7xc6m</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 2, '2021-06-28 03:33:39', NULL);
INSERT INTO `cms_logs` VALUES (14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@icass.com login with IP Address 127.0.0.1', '', 2, '2021-06-29 15:19:24', NULL);
INSERT INTO `cms_logs` VALUES (15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/m_menu/add-save', 'Add New Data Bakso Biasa at Daftar Menu', '', 2, '2021-06-29 15:45:07', NULL);
INSERT INTO `cms_logs` VALUES (16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/m_meja/add-save', 'Add New Data Meja 1 at Master Meja', '', 2, '2021-06-29 15:55:50', NULL);
INSERT INTO `cms_logs` VALUES (17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/m_meja/add-save', 'Add New Data Meja 2 at Master Meja', '', 2, '2021-06-29 15:56:10', NULL);
INSERT INTO `cms_logs` VALUES (18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/m_meja/add-save', 'Add New Data Gazebo 1 at Master Meja', '', 2, '2021-06-29 15:56:43', NULL);
INSERT INTO `cms_logs` VALUES (19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/m_meja/add-save', 'Add New Data Gazebo 2 at Master Meja', '', 2, '2021-06-29 15:57:20', NULL);
INSERT INTO `cms_logs` VALUES (20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/m_menu/add-save', 'Add New Data Batagor at Daftar Menu', '', 2, '2021-06-29 16:02:34', NULL);
INSERT INTO `cms_logs` VALUES (21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/m_menu/add-save', 'Add New Data es teh at Daftar Menu', '', 2, '2021-06-29 16:03:04', NULL);
INSERT INTO `cms_logs` VALUES (22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/m_menu/add-save', 'Add New Data Kentang Goreng at Daftar Menu', '', 2, '2021-06-29 16:03:44', NULL);
INSERT INTO `cms_logs` VALUES (23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/m_menu/edit-save/4', 'Update data Kentang Goreng at Daftar Menu', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 2, '2021-06-29 16:04:05', NULL);
INSERT INTO `cms_logs` VALUES (24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/m_menu/add-save', 'Add New Data dim sum ayam at Daftar Menu', '', 2, '2021-06-29 16:05:17', NULL);
INSERT INTO `cms_logs` VALUES (25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/m_menu/add-save', 'Add New Data Jus Alpukat at Daftar Menu', '', 2, '2021-06-29 16:05:52', NULL);
INSERT INTO `cms_logs` VALUES (26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/m_menu/edit-save/5', 'Update data dim sum ayam at Daftar Menu', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>0</td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 2, '2021-06-29 16:07:22', NULL);
INSERT INTO `cms_logs` VALUES (27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@icass.com login with IP Address 127.0.0.1', '', 2, '2021-06-30 02:49:50', NULL);
INSERT INTO `cms_logs` VALUES (28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@icass.com login with IP Address 127.0.0.1', '', 2, '2021-07-01 05:05:51', NULL);
INSERT INTO `cms_logs` VALUES (29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@icass.com login with IP Address 127.0.0.1', '', 2, '2021-07-05 08:36:55', NULL);
INSERT INTO `cms_logs` VALUES (30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@icass.com login with IP Address 127.0.0.1', '', 2, '2021-07-07 03:11:20', NULL);
INSERT INTO `cms_logs` VALUES (31, '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost:8080/admin/login', 'admin@icass.com login with IP Address 172.18.0.1', '', 2, '2021-07-09 17:33:17', NULL);
INSERT INTO `cms_logs` VALUES (32, '172.18.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost:8080/admin/login', 'admin@icass.com login with IP Address 172.18.0.1', '', 2, '2021-07-09 22:13:44', NULL);
INSERT INTO `cms_logs` VALUES (33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/admin/login', 'admin@icass.com login with IP Address ::1', '', 2, '2021-07-15 04:34:09', NULL);
INSERT INTO `cms_logs` VALUES (34, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/admin/m_meja/add-save', 'Add New Data Meja 3 at Master Meja', '', 2, '2021-07-15 09:25:45', NULL);
INSERT INTO `cms_logs` VALUES (35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/admin/m_meja/add-save', 'Add New Data Meja 5 at Master Meja', '', 2, '2021-07-15 09:26:03', NULL);
INSERT INTO `cms_logs` VALUES (36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/admin/m_meja/add-save', 'Add New Data Meja6 at Master Meja', '', 2, '2021-07-15 09:26:26', NULL);
INSERT INTO `cms_logs` VALUES (37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/admin/m_meja/add-save', 'Add New Data Gazebo 3 at Master Meja', '', 2, '2021-07-15 09:42:47', NULL);
INSERT INTO `cms_logs` VALUES (38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/admin/m_meja/add-save', 'Add New Data Gazebo 4 at Master Meja', '', 2, '2021-07-15 09:43:02', NULL);
INSERT INTO `cms_logs` VALUES (39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/admin/m_meja/add-save', 'Add New Data Gazebo 5 at Master Meja', '', 2, '2021-07-15 09:43:13', NULL);
INSERT INTO `cms_logs` VALUES (40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/admin/m_meja/add-save', 'Add New Data Gazebo 6 at Master Meja', '', 2, '2021-07-15 09:45:37', NULL);
INSERT INTO `cms_logs` VALUES (41, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/admin/login', 'admin@icass.com login with IP Address ::1', '', 2, '2021-07-17 11:59:50', NULL);
INSERT INTO `cms_logs` VALUES (42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/admin/menu_management/edit-save/1', 'Update data Master Meja at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 2, '2021-07-17 14:37:59', NULL);
INSERT INTO `cms_logs` VALUES (43, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', 'http://localhost/admin/login', 'admin@icass.com login with IP Address ::1', '', 2, '2021-07-20 07:34:54', NULL);
INSERT INTO `cms_logs` VALUES (44, '30.30.30.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://pesan.sekarang/admin/login', 'admin@icass.com login with IP Address 30.30.30.2', '', 2, '2021-07-20 15:22:09', NULL);
INSERT INTO `cms_logs` VALUES (45, '30.30.30.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://pesan.sekarang/admin/users/add-save', 'Add New Data manager at Users Management', '', 2, '2021-07-20 15:24:14', NULL);
INSERT INTO `cms_logs` VALUES (46, '30.30.30.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://pesan.sekarang/admin/logout', 'admin@icass.com logout', '', 2, '2021-07-20 15:24:27', NULL);
INSERT INTO `cms_logs` VALUES (47, '30.30.30.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://pesan.sekarang/admin/login', 'admin@icass.com login with IP Address 30.30.30.2', '', 2, '2021-07-20 15:26:13', NULL);
INSERT INTO `cms_logs` VALUES (48, '30.30.30.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://pesan.sekarang/admin/users/edit-save/3', 'Update data manager at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td></td><td>$2y$10$.HTErvJmDcSOO.GVV/1bfuo7Ak8B8o7sHVFsGiHsKbi0Za/75DGV6</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 2, '2021-07-20 15:26:58', NULL);
INSERT INTO `cms_logs` VALUES (49, '30.30.30.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://pesan.sekarang/admin/logout', 'admin@icass.com logout', '', 2, '2021-07-20 15:27:09', NULL);
INSERT INTO `cms_logs` VALUES (50, '30.30.30.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://pesan.sekarang/admin/login', 'manager@icass.com login with IP Address 30.30.30.2', '', 3, '2021-07-20 15:27:28', NULL);
INSERT INTO `cms_logs` VALUES (51, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://localhost/admin/login', 'admin@icass.com login with IP Address ::1', '', 2, '2021-07-20 15:28:05', NULL);
INSERT INTO `cms_logs` VALUES (52, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://localhost/admin/menu_management/edit-save/2', 'Update data Daftar Menu at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 2, '2021-07-20 15:29:09', NULL);
INSERT INTO `cms_logs` VALUES (53, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://localhost/admin/menu_management/edit-save/2', 'Update data Daftar Menu at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 2, '2021-07-20 15:29:35', NULL);
INSERT INTO `cms_logs` VALUES (54, '30.30.30.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://pesan.sekarang/admin/m_menu/add-save', 'Add New Data kopi dangdut at Daftar Menu', '', 3, '2021-07-20 15:31:16', NULL);
INSERT INTO `cms_logs` VALUES (55, '30.30.30.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://pesan.sekarang/admin/m_meja/add-save', 'Add New Data meja 6 at Master Meja', '', 3, '2021-07-20 15:32:09', NULL);
INSERT INTO `cms_logs` VALUES (56, '30.30.30.2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://pesan.sekarang/admin/m_meja/edit-save/12', 'Update data meja 6 at Master Meja', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>1</td><td>0</td></tr><tr><td>pesanan_id</td><td></td><td></td></tr><tr><td>customer</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 3, '2021-07-20 15:32:26', NULL);
INSERT INTO `cms_logs` VALUES (57, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://localhost/admin/login', 'admin@icass.com login with IP Address ::1', '', 2, '2021-07-22 04:16:10', NULL);
INSERT INTO `cms_logs` VALUES (58, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://localhost/admin/m_menu/delete-image', 'Delete the image of kopi dangdut at Daftar Menu', '', 2, '2021-07-22 04:20:00', NULL);
INSERT INTO `cms_logs` VALUES (59, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://localhost/admin/m_menu/edit-save/7', 'Update data coto at Daftar Menu', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>nama</td><td>kopi dangdut</td><td>coto</td></tr><tr><td>harga</td><td>1500000</td><td>20000</td></tr><tr><td>keterangan</td><td>kopi spesial dangdut</td><td>coto makasar</td></tr><tr><td>gambar</td><td></td><td>uploads/2/2021-07/coto.jpeg</td></tr><tr><td>group_id</td><td>2</td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 2, '2021-07-22 04:23:08', NULL);
INSERT INTO `cms_logs` VALUES (60, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://localhost/admin/m_menu/add-save', 'Add New Data gado gado at Daftar Menu', '', 2, '2021-07-22 04:23:51', NULL);
INSERT INTO `cms_logs` VALUES (61, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://localhost/admin/m_menu/add-save', 'Add New Data nasi goreng at Daftar Menu', '', 2, '2021-07-22 04:24:22', NULL);
INSERT INTO `cms_logs` VALUES (62, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://localhost/admin/m_menu/add-save', 'Add New Data es kopi susu at Daftar Menu', '', 2, '2021-07-22 04:25:42', NULL);
INSERT INTO `cms_logs` VALUES (63, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://localhost/admin/m_menu/add-save', 'Add New Data es buah at Daftar Menu', '', 2, '2021-07-22 04:27:26', NULL);
INSERT INTO `cms_logs` VALUES (64, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://localhost/admin/login', 'admin@icass.com login with IP Address ::1', '', 2, '2021-07-23 12:08:26', NULL);
INSERT INTO `cms_logs` VALUES (65, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://localhost/admin/login', 'admin@icass.com login with IP Address ::1', '', 2, '2021-07-23 17:02:57', NULL);
INSERT INTO `cms_logs` VALUES (66, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'http://localhost/admin/login', 'admin@icass.com login with IP Address ::1', '', 2, '2021-07-26 05:17:46', NULL);
INSERT INTO `cms_logs` VALUES (67, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36', 'http://localhost/admin/login', 'admin@icass.com login with IP Address ::1', '', 2, '2021-07-28 09:37:07', NULL);

-- ----------------------------
-- Table structure for cms_menus
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus`;
CREATE TABLE `cms_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  `sorting` int(11) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_menus
-- ----------------------------
INSERT INTO `cms_menus` VALUES (1, 'Master Meja', 'Route', 'AdminMMejaControllerGetIndex', 'normal', 'fa fa-table', 0, 1, 0, 1, 1, '2021-06-27 17:21:59', '2021-07-17 14:37:59');
INSERT INTO `cms_menus` VALUES (2, 'Daftar Menu', 'Route', 'AdminMMenuControllerGetIndex', 'normal', 'fa fa-leaf', 0, 1, 0, 1, 2, '2021-06-27 17:38:01', '2021-07-20 15:29:35');

-- ----------------------------
-- Table structure for cms_menus_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus_privileges`;
CREATE TABLE `cms_menus_privileges`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_menus_privileges
-- ----------------------------
INSERT INTO `cms_menus_privileges` VALUES (3, 1, 2);
INSERT INTO `cms_menus_privileges` VALUES (4, 1, 1);
INSERT INTO `cms_menus_privileges` VALUES (7, 2, 2);
INSERT INTO `cms_menus_privileges` VALUES (8, 2, 1);

-- ----------------------------
-- Table structure for cms_moduls
-- ----------------------------
DROP TABLE IF EXISTS `cms_moduls`;
CREATE TABLE `cms_moduls`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_moduls
-- ----------------------------
INSERT INTO `cms_moduls` VALUES (1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2021-06-27 17:19:39', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2021-06-27 17:19:39', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2021-06-27 17:19:39', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2021-06-27 17:19:39', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2021-06-27 17:19:39', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2021-06-27 17:19:39', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2021-06-27 17:19:39', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2021-06-27 17:19:39', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2021-06-27 17:19:39', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2021-06-27 17:19:39', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2021-06-27 17:19:39', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (12, 'Master Meja', 'fa fa-table', 'm_meja', 'm_meja', 'AdminMMejaController', 0, 0, '2021-06-27 17:21:59', NULL, NULL);
INSERT INTO `cms_moduls` VALUES (13, 'Daftar Menu', 'fa fa-leaf', 'm_menu', 'm_menu', 'AdminMMenuController', 0, 0, '2021-06-27 17:38:01', NULL, NULL);

-- ----------------------------
-- Table structure for cms_notifications
-- ----------------------------
DROP TABLE IF EXISTS `cms_notifications`;
CREATE TABLE `cms_notifications`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_read` tinyint(1) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_notifications
-- ----------------------------

-- ----------------------------
-- Table structure for cms_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges`;
CREATE TABLE `cms_privileges`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_superadmin` tinyint(1) NULL DEFAULT NULL,
  `theme_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_privileges
-- ----------------------------
INSERT INTO `cms_privileges` VALUES (1, 'Super Administrator', 1, 'skin-red', '2021-06-27 17:19:39', NULL);
INSERT INTO `cms_privileges` VALUES (2, 'Manajer', 0, 'skin-blue', NULL, NULL);
INSERT INTO `cms_privileges` VALUES (3, 'Kasir', 0, 'skin-blue', NULL, NULL);
INSERT INTO `cms_privileges` VALUES (4, 'Waiters', 0, 'skin-blue', NULL, NULL);

-- ----------------------------
-- Table structure for cms_privileges_roles
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges_roles`;
CREATE TABLE `cms_privileges_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) NULL DEFAULT NULL,
  `is_create` tinyint(1) NULL DEFAULT NULL,
  `is_read` tinyint(1) NULL DEFAULT NULL,
  `is_edit` tinyint(1) NULL DEFAULT NULL,
  `is_delete` tinyint(1) NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  `id_cms_moduls` int(11) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_privileges_roles
-- ----------------------------
INSERT INTO `cms_privileges_roles` VALUES (1, 1, 0, 0, 0, 0, 1, 1, '2021-06-27 17:19:39', NULL);
INSERT INTO `cms_privileges_roles` VALUES (2, 1, 1, 1, 1, 1, 1, 2, '2021-06-27 17:19:39', NULL);
INSERT INTO `cms_privileges_roles` VALUES (3, 0, 1, 1, 1, 1, 1, 3, '2021-06-27 17:19:39', NULL);
INSERT INTO `cms_privileges_roles` VALUES (4, 1, 1, 1, 1, 1, 1, 4, '2021-06-27 17:19:39', NULL);
INSERT INTO `cms_privileges_roles` VALUES (5, 1, 1, 1, 1, 1, 1, 5, '2021-06-27 17:19:39', NULL);
INSERT INTO `cms_privileges_roles` VALUES (6, 1, 1, 1, 1, 1, 1, 6, '2021-06-27 17:19:39', NULL);
INSERT INTO `cms_privileges_roles` VALUES (7, 1, 1, 1, 1, 1, 1, 7, '2021-06-27 17:19:39', NULL);
INSERT INTO `cms_privileges_roles` VALUES (8, 1, 1, 1, 1, 1, 1, 8, '2021-06-27 17:19:39', NULL);
INSERT INTO `cms_privileges_roles` VALUES (9, 1, 1, 1, 1, 1, 1, 9, '2021-06-27 17:19:39', NULL);
INSERT INTO `cms_privileges_roles` VALUES (10, 1, 1, 1, 1, 1, 1, 10, '2021-06-27 17:19:39', NULL);
INSERT INTO `cms_privileges_roles` VALUES (11, 1, 0, 1, 0, 1, 1, 11, '2021-06-27 17:19:39', NULL);
INSERT INTO `cms_privileges_roles` VALUES (12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (14, 1, 1, 1, 1, 1, 1, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (15, 1, 1, 1, 1, 1, 2, 13, NULL, NULL);
INSERT INTO `cms_privileges_roles` VALUES (16, 1, 1, 1, 1, 1, 2, 12, NULL, NULL);

-- ----------------------------
-- Table structure for cms_settings
-- ----------------------------
DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE `cms_settings`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content_input_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dataenum` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `helper` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_settings
-- ----------------------------
INSERT INTO `cms_settings` VALUES (1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2021-06-27 17:19:39', NULL, 'Login Register Style', 'Login Background Color');
INSERT INTO `cms_settings` VALUES (2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2021-06-27 17:19:39', NULL, 'Login Register Style', 'Login Font Color');
INSERT INTO `cms_settings` VALUES (3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2021-06-27 17:19:39', NULL, 'Login Register Style', 'Login Background Image');
INSERT INTO `cms_settings` VALUES (4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2021-06-27 17:19:39', NULL, 'Email Setting', 'Email Sender');
INSERT INTO `cms_settings` VALUES (5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2021-06-27 17:19:39', NULL, 'Email Setting', 'Mail Driver');
INSERT INTO `cms_settings` VALUES (6, 'smtp_host', '', 'text', NULL, NULL, '2021-06-27 17:19:39', NULL, 'Email Setting', 'SMTP Host');
INSERT INTO `cms_settings` VALUES (7, 'smtp_port', '25', 'text', NULL, 'default 25', '2021-06-27 17:19:39', NULL, 'Email Setting', 'SMTP Port');
INSERT INTO `cms_settings` VALUES (8, 'smtp_username', '', 'text', NULL, NULL, '2021-06-27 17:19:39', NULL, 'Email Setting', 'SMTP Username');
INSERT INTO `cms_settings` VALUES (9, 'smtp_password', '', 'text', NULL, NULL, '2021-06-27 17:19:39', NULL, 'Email Setting', 'SMTP Password');
INSERT INTO `cms_settings` VALUES (10, 'appname', 'ICASS', 'text', NULL, NULL, '2021-06-27 17:19:39', NULL, 'Application Setting', 'Application Name');
INSERT INTO `cms_settings` VALUES (11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2021-06-27 17:19:39', NULL, 'Application Setting', 'Default Paper Print Size');
INSERT INTO `cms_settings` VALUES (12, 'logo', 'uploads/2021-06/44c99d8d551372a483a23f7a732ee126.png', 'upload_image', NULL, NULL, '2021-06-27 17:19:39', NULL, 'Application Setting', 'Logo');
INSERT INTO `cms_settings` VALUES (13, 'favicon', 'uploads/2021-06/5a997922925a4b2179bcf1f27404addd.png', 'upload_image', NULL, NULL, '2021-06-27 17:19:39', NULL, 'Application Setting', 'Favicon');
INSERT INTO `cms_settings` VALUES (14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2021-06-27 17:19:39', NULL, 'Application Setting', 'API Debug Mode');
INSERT INTO `cms_settings` VALUES (15, 'google_api_key', NULL, 'text', NULL, NULL, '2021-06-27 17:19:39', NULL, 'Application Setting', 'Google API Key');
INSERT INTO `cms_settings` VALUES (16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2021-06-27 17:19:39', NULL, 'Application Setting', 'Google FCM Key');

-- ----------------------------
-- Table structure for cms_statistic_components
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistic_components`;
CREATE TABLE `cms_statistic_components`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) NULL DEFAULT NULL,
  `componentID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `component_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `area_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sorting` int(11) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_statistic_components
-- ----------------------------
INSERT INTO `cms_statistic_components` VALUES (1, 1, '1333c5e1fada0e82d4011a052e6eab7f', 'smallbox', NULL, 0, 'Untitled', NULL, '2021-06-27 18:05:08', NULL);
INSERT INTO `cms_statistic_components` VALUES (4, 1, 'c92550b7000df8a1d40e906304e8b152', 'table', 'area5', 0, NULL, '{\"name\":\"Menu Favorit\",\"sql\":\"select * from vw_pesanan_terbanyak LIMIT 5\"}', '2021-06-27 18:11:28', NULL);
INSERT INTO `cms_statistic_components` VALUES (5, 1, '9e7d2fcc08bfb3ba7b46c97e4067a051', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Omzet\",\"icon\":\"cash-outline\",\"color\":\"bg-green\",\"link\":\"http:\\/\\/localhost:8000\\/admin\\/\",\"sql\":\"select ifNULL(sum(a.total_harga), 0) as jumlah from t_pesanan_detail as a \\r\\njoin t_pesanan as b on b.id=a.id\\r\\nwhere b.tgl_bayar = NOW()\"}', '2021-06-27 18:12:51', NULL);
INSERT INTO `cms_statistic_components` VALUES (6, 1, '6176fe322ebdb35d681329ee0f486828', 'table', 'area5', 0, NULL, '{\"name\":\"Menu Favorit\",\"sql\":\"select * from vw_pesanan_terbanyak LIMIT 5\"}', '2021-06-27 18:18:34', NULL);
INSERT INTO `cms_statistic_components` VALUES (7, 1, '926b4b626c8221f1a764698dca79daa4', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Jumlah Transaksi\",\"icon\":\"cash-outline\",\"color\":\"bg-aqua\",\"link\":\"http:\\/\\/localhost:8000\\/admin\\/\",\"sql\":\"SELECT count(id) as jumlah from t_pesanan where tgl_bayar = NOW()\"}', '2021-06-27 18:19:54', NULL);
INSERT INTO `cms_statistic_components` VALUES (8, 1, '79fe5ac9aba52141576bf21f80eff2ac', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Total Pesanan\",\"icon\":\"cash-outline\",\"color\":\"bg-yellow\",\"link\":\"http:\\/\\/localhost:8000\\/admin\\/\",\"sql\":\"SELECT ifnull(sum(a.id),0) as jumlah from t_pesanan_detail as a\\r\\njoin t_pesanan as b on b.id=a.id\\r\\nwhere b.tgl_bayar = NOW()\"}', '2021-06-27 18:25:15', NULL);

-- ----------------------------
-- Table structure for cms_statistics
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistics`;
CREATE TABLE `cms_statistics`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_statistics
-- ----------------------------
INSERT INTO `cms_statistics` VALUES (1, 'Monitoring Cafe', 'monitoringmeja', '2021-06-27 17:48:39', '2021-06-27 18:08:16');
INSERT INTO `cms_statistics` VALUES (2, 'Pengunjung', 'pengunjung', '2021-06-27 18:05:54', NULL);
INSERT INTO `cms_statistics` VALUES (3, 'Menu', 'menu', '2021-06-27 18:06:10', NULL);

-- ----------------------------
-- Table structure for cms_users
-- ----------------------------
DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE `cms_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_cms_privileges` int(11) NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cms_users
-- ----------------------------
INSERT INTO `cms_users` VALUES (1, 'Super Admin', NULL, 'admin@crudbooster.com', '$2y$10$nl.bhoy1cMRiJL9wI22rTeexm/srFssur7s6yiaJXZyJOdw2Z6ASm', 1, '2021-06-27 17:19:39', NULL, 'Active');
INSERT INTO `cms_users` VALUES (2, 'admin', 'uploads/2/2021-06/profile_pic_3.png', 'admin@icass.com', '$2y$10$YjofqCgmbNOPAl6MmWCHZufSg..MBefj4AZlu5hbCloGwl8g7xc6m', 1, '2021-06-27 17:52:23', '2021-06-28 03:33:39', NULL);
INSERT INTO `cms_users` VALUES (3, 'manager', 'uploads/2/2021-07/sem_test_network.PNG', 'manager@icass.com', '$2y$10$.HTErvJmDcSOO.GVV/1bfuo7Ak8B8o7sHVFsGiHsKbi0Za/75DGV6', 2, '2021-07-20 15:24:14', '2021-07-20 15:26:58', NULL);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for m_group_menu
-- ----------------------------
DROP TABLE IF EXISTS `m_group_menu`;
CREATE TABLE `m_group_menu`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=non active, 1=non active',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `m_group_menu_nama_unique`(`nama`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_group_menu
-- ----------------------------
INSERT INTO `m_group_menu` VALUES (1, 'Makanan', 1, NULL, NULL, NULL);
INSERT INTO `m_group_menu` VALUES (2, 'Minuman', 1, NULL, NULL, NULL);
INSERT INTO `m_group_menu` VALUES (3, 'Snack', 1, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for m_meja
-- ----------------------------
DROP TABLE IF EXISTS `m_meja`;
CREATE TABLE `m_meja`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kapasitas` decimal(4, 0) NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'ready = 0, usage = 1',
  `pesanan_id` int(11) NULL DEFAULT NULL COMMENT 'id_pesanan yang sedang aktif',
  `customer` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `m_meja_nama_unique`(`nama`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_meja
-- ----------------------------
INSERT INTO `m_meja` VALUES (1, 'Meja 1', 'Meja 1 outdor', 4, 0, NULL, NULL, NULL, '2021-06-29 15:55:50', NULL);
INSERT INTO `m_meja` VALUES (2, 'Meja 2', 'Meja outdor', 4, 0, NULL, NULL, NULL, '2021-06-29 15:56:10', NULL);
INSERT INTO `m_meja` VALUES (3, 'Gazebo 1', 'Gazebo Timur', 8, 0, NULL, NULL, NULL, '2021-06-29 15:56:43', NULL);
INSERT INTO `m_meja` VALUES (4, 'Gazebo 2', 'Gazebo Timur', 9, 0, NULL, NULL, NULL, '2021-06-29 15:57:20', NULL);
INSERT INTO `m_meja` VALUES (5, 'Meja 3', 'Meja 3 Outdoor', 4, 0, NULL, NULL, NULL, '2021-07-15 09:25:45', NULL);
INSERT INTO `m_meja` VALUES (6, 'Meja 5', 'Meja 5 outdor', 4, 0, NULL, NULL, NULL, '2021-07-15 09:26:03', NULL);
INSERT INTO `m_meja` VALUES (7, 'Meja6', 'Meja 6 outdor', 4, 0, NULL, NULL, NULL, '2021-07-15 09:26:26', NULL);
INSERT INTO `m_meja` VALUES (8, 'Gazebo 3', 'Gazebo 3', 3, 0, NULL, NULL, NULL, '2021-07-15 09:42:47', NULL);
INSERT INTO `m_meja` VALUES (9, 'Gazebo 4', 'Gazebo 4', 4, 0, NULL, NULL, NULL, '2021-07-15 09:43:02', NULL);
INSERT INTO `m_meja` VALUES (10, 'Gazebo 5', 'Gazebo 5', 5, 0, NULL, NULL, NULL, '2021-07-15 09:43:13', NULL);
INSERT INTO `m_meja` VALUES (11, 'Gazebo 6', 'Gazebo 6', 4, 0, NULL, NULL, NULL, '2021-07-15 09:45:37', NULL);
INSERT INTO `m_meja` VALUES (12, 'meja 6', 'meja spesial koruptor', 6, 0, NULL, NULL, NULL, '2021-07-20 15:32:09', '2021-07-20 15:32:26');

-- ----------------------------
-- Table structure for m_menu
-- ----------------------------
DROP TABLE IF EXISTS `m_menu`;
CREATE TABLE `m_menu`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` double(10, 0) NOT NULL COMMENT 'harga per menu',
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'keterangan menu',
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'alamat file gambar',
  `group_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=non active, 1=active',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of m_menu
-- ----------------------------
INSERT INTO `m_menu` VALUES (1, 'Bakso Biasa', 15000, 'Bakso Sapi', 'uploads/2/2021-06/bakso_istockphoto_copy.jpg', 1, 1, NULL, '2021-06-29 15:45:07', NULL);
INSERT INTO `m_menu` VALUES (2, 'Batagor', 12000, 'Batagor ikan', 'uploads/2/2021-06/batagor.jpg', 1, 1, NULL, '2021-06-29 16:02:34', NULL);
INSERT INTO `m_menu` VALUES (3, 'es teh', 5000, 'es tek manis', 'uploads/2/2021-06/produk_1578041377.jpg', 2, 1, NULL, '2021-06-29 16:03:04', NULL);
INSERT INTO `m_menu` VALUES (4, 'Kentang Goreng', 7000, 'Kentang goreng rasa original', 'uploads/2/2021-06/kentang_goreng.jpg', 3, 1, NULL, '2021-06-29 16:03:44', '2021-06-29 16:04:05');
INSERT INTO `m_menu` VALUES (5, 'dim sum ayam', 15000, 'dimsum kukus', 'uploads/2/2021-06/resepresepmemasak_110237558_281669469755916_7120470348266671505_n.jpg', 3, 1, NULL, '2021-06-29 16:05:17', '2021-06-29 16:07:22');
INSERT INTO `m_menu` VALUES (6, 'Jus Alpukat', 12000, 'Jus Alpukas + coklat', 'uploads/2/2021-06/resep_jus_alpukat.jpg', 2, 1, NULL, '2021-06-29 16:05:52', NULL);
INSERT INTO `m_menu` VALUES (7, 'coto', 20000, 'coto makasar', 'uploads/2/2021-07/coto.jpeg', 1, 1, NULL, '2021-07-20 15:31:16', '2021-07-22 04:23:08');
INSERT INTO `m_menu` VALUES (8, 'gado gado', 17000, 'gado gado enak', 'uploads/2/2021-07/gado2.jpeg', 1, 1, NULL, '2021-07-22 04:23:51', NULL);
INSERT INTO `m_menu` VALUES (9, 'nasi goreng', 12000, 'nasgor special', 'uploads/2/2021-07/nasgor.jpeg', 1, 1, NULL, '2021-07-22 04:24:22', NULL);
INSERT INTO `m_menu` VALUES (10, 'es kopi susu', 8000, 'kopsus', 'uploads/2/2021-07/kopsus.jpg', 2, 1, NULL, '2021-07-22 04:25:42', NULL);
INSERT INTO `m_menu` VALUES (11, 'es buah', 10000, 'es buah', 'uploads/2/2021-07/qstftizu7xgq4cwsgzmg.jpg', 2, 1, NULL, '2021-07-22 04:27:26', NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_08_07_145904_add_table_cms_apicustom', 1);
INSERT INTO `migrations` VALUES (4, '2016_08_07_150834_add_table_cms_dashboard', 1);
INSERT INTO `migrations` VALUES (5, '2016_08_07_151210_add_table_cms_logs', 1);
INSERT INTO `migrations` VALUES (6, '2016_08_07_151211_add_details_cms_logs', 1);
INSERT INTO `migrations` VALUES (7, '2016_08_07_152014_add_table_cms_privileges', 1);
INSERT INTO `migrations` VALUES (8, '2016_08_07_152214_add_table_cms_privileges_roles', 1);
INSERT INTO `migrations` VALUES (9, '2016_08_07_152320_add_table_cms_settings', 1);
INSERT INTO `migrations` VALUES (10, '2016_08_07_152421_add_table_cms_users', 1);
INSERT INTO `migrations` VALUES (11, '2016_08_07_154624_add_table_cms_menus_privileges', 1);
INSERT INTO `migrations` VALUES (12, '2016_08_07_154624_add_table_cms_moduls', 1);
INSERT INTO `migrations` VALUES (13, '2016_08_17_225409_add_status_cms_users', 1);
INSERT INTO `migrations` VALUES (14, '2016_08_20_125418_add_table_cms_notifications', 1);
INSERT INTO `migrations` VALUES (15, '2016_09_04_033706_add_table_cms_email_queues', 1);
INSERT INTO `migrations` VALUES (16, '2016_09_16_035347_add_group_setting', 1);
INSERT INTO `migrations` VALUES (17, '2016_09_16_045425_add_label_setting', 1);
INSERT INTO `migrations` VALUES (18, '2016_09_17_104728_create_nullable_cms_apicustom', 1);
INSERT INTO `migrations` VALUES (19, '2016_10_01_141740_add_method_type_apicustom', 1);
INSERT INTO `migrations` VALUES (20, '2016_10_01_141846_add_parameters_apicustom', 1);
INSERT INTO `migrations` VALUES (21, '2016_10_01_141934_add_responses_apicustom', 1);
INSERT INTO `migrations` VALUES (22, '2016_10_01_144826_add_table_apikey', 1);
INSERT INTO `migrations` VALUES (23, '2016_11_14_141657_create_cms_menus', 1);
INSERT INTO `migrations` VALUES (24, '2016_11_15_132350_create_cms_email_templates', 1);
INSERT INTO `migrations` VALUES (25, '2016_11_15_190410_create_cms_statistics', 1);
INSERT INTO `migrations` VALUES (26, '2016_11_17_102740_create_cms_statistic_components', 1);
INSERT INTO `migrations` VALUES (27, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);
INSERT INTO `migrations` VALUES (28, '2019_08_19_000000_create_failed_jobs_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for t_logs
-- ----------------------------
DROP TABLE IF EXISTS `t_logs`;
CREATE TABLE `t_logs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `param` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_logs
-- ----------------------------

-- ----------------------------
-- Table structure for t_pesanan
-- ----------------------------
DROP TABLE IF EXISTS `t_pesanan`;
CREATE TABLE `t_pesanan`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `meja_id` int(11) NOT NULL,
  `urutan` int(11) NULL DEFAULT NULL COMMENT 'urutan pesanan',
  `total` double(10, 0) NOT NULL COMMENT 'total pembayaran',
  `bayar` double(10, 0) NULL DEFAULT NULL COMMENT 'jumlah yg di bayar konsumen',
  `kembalian` double(10, 0) NULL DEFAULT NULL COMMENT 'kembalian ke konsumen',
  `tgl_bayar` datetime NULL DEFAULT NULL COMMENT 'tanggal pembayaran',
  `nama_kasir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'nama user kasir',
  `customer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'nama customer',
  `device` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'device customer',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'proses = 0, selesai = 1',
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_pesanan
-- ----------------------------

-- ----------------------------
-- Table structure for t_pesanan_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_pesanan_detail`;
CREATE TABLE `t_pesanan_detail`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `t_pesanan_id` int(11) NOT NULL,
  `m_menu_id` int(11) NOT NULL,
  `jumlah` decimal(8, 0) NOT NULL COMMENT 'jumlah item yang di pesan',
  `harga` double(10, 0) NOT NULL COMMENT 'harga per item',
  `total_harga` double(10, 0) NOT NULL COMMENT 'total_harga = jumlah*harga',
  `status` decimal(8, 0) NOT NULL DEFAULT 0 COMMENT '0=belum di buat, 1=proses di buat, 2=disajikan, 3=retur, 4=cancel',
  `urutan` decimal(4, 0) NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_pesanan_detail
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- View structure for vw_menu_all
-- ----------------------------
DROP VIEW IF EXISTS `vw_menu_all`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vw_menu_all` AS select a.*, b.nama as nama_group from m_menu a
join m_group_menu b on a.group_id = b.id ;

-- ----------------------------
-- View structure for vw_menu_cemilan
-- ----------------------------
DROP VIEW IF EXISTS `vw_menu_cemilan`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vw_menu_cemilan` AS select a.*, b.nama as nama_group from m_menu a
join m_group_menu b on a.group_id = b.id
where b.id = 3 ;

-- ----------------------------
-- View structure for vw_menu_makanan
-- ----------------------------
DROP VIEW IF EXISTS `vw_menu_makanan`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vw_menu_makanan` AS select a.*, b.nama as nama_group from m_menu a
join m_group_menu b on a.group_id = b.id
where b.id = 1 ;

-- ----------------------------
-- View structure for vw_menu_minuman
-- ----------------------------
DROP VIEW IF EXISTS `vw_menu_minuman`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vw_menu_minuman` AS select a.*, b.nama as nama_group from m_menu a
join m_group_menu b on a.group_id = b.id
where b.id = 2 ;

-- ----------------------------
-- View structure for vw_pesanan
-- ----------------------------
DROP VIEW IF EXISTS `vw_pesanan`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vw_pesanan` AS select a.id,a.nama,a.status as meja_status,a.customer,b.id as pesanan_id,sum(c.harga*c.jumlah) as total,b.bayar,b.kembalian,b.tgl_bayar,b.nama_kasir,b.status as status_pesanan from m_meja as a
join t_pesanan as b on a.pesanan_id = b.id 
join t_pesanan_detail as c on b.id = c.t_pesanan_id 
GROUP BY a.id,a.nama,a.`status`,a.customer,b.id,c.t_pesanan_id, b.bayar,b.kembalian,b.tgl_bayar,b.nama_kasir,b.status ;

-- ----------------------------
-- View structure for vw_pesanan_detail
-- ----------------------------
DROP VIEW IF EXISTS `vw_pesanan_detail`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vw_pesanan_detail` AS SELECT
	t_pesanan.*, 
	m_menu.nama as nama_menu, 
	t_pesanan_detail.jumlah, 
	t_pesanan_detail.harga, 
	t_pesanan_detail.total_harga, 
	t_pesanan_detail.`status` as detail_status, 
	t_pesanan_detail.urutan as detail_urutan, 
	m_meja.nama as nama_meja
FROM
	t_pesanan
	INNER JOIN
	t_pesanan_detail
	ON 
		t_pesanan.id = t_pesanan_detail.t_pesanan_id
	INNER JOIN
	m_menu
	ON 
		t_pesanan_detail.m_menu_id = m_menu.id
	INNER JOIN
	m_meja
	ON 
		t_pesanan.meja_id = m_meja.id ;

-- ----------------------------
-- View structure for vw_pesanan_terbanyak
-- ----------------------------
DROP VIEW IF EXISTS `vw_pesanan_terbanyak`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vw_pesanan_terbanyak` AS select b.nama, count(a.id) as jumlah from t_pesanan_detail as a
join m_menu as b on a.id=b.id ;

-- ----------------------------
-- View structure for vw_urutan_pesanan
-- ----------------------------
DROP VIEW IF EXISTS `vw_urutan_pesanan`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vw_urutan_pesanan` AS SELECT t_pesanan_id, urutan from t_pesanan_detail GROUP BY t_pesanan_id,urutan ;

SET FOREIGN_KEY_CHECKS = 1;
