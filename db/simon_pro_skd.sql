/*
 Navicat Premium Data Transfer

 Source Server         : skdigital.id
 Source Server Type    : PostgreSQL
 Source Server Version : 100013
 Source Host           : localhost:5432
 Source Catalog        : simon_pro_skd
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 100013
 File Encoding         : 65001

 Date: 28/10/2021 14:21:02
*/


-- ----------------------------
-- Sequence structure for data_projek_ID_sequence
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."data_projek_ID_sequence";
CREATE SEQUENCE "public"."data_projek_ID_sequence" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for induk_projek_ID_sequence
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."induk_projek_ID_sequence";
CREATE SEQUENCE "public"."induk_projek_ID_sequence" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for isi_modul_ID_sequence
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."isi_modul_ID_sequence";
CREATE SEQUENCE "public"."isi_modul_ID_sequence" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for jabatan_ID_sequence
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."jabatan_ID_sequence";
CREATE SEQUENCE "public"."jabatan_ID_sequence" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for laporan_pegawai_ID_sequence
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."laporan_pegawai_ID_sequence";
CREATE SEQUENCE "public"."laporan_pegawai_ID_sequence" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for laporan_projek_ID_sequence
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."laporan_projek_ID_sequence";
CREATE SEQUENCE "public"."laporan_projek_ID_sequence" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for modul_projek_ID_sequence
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."modul_projek_ID_sequence";
CREATE SEQUENCE "public"."modul_projek_ID_sequence" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for modul_tetap_ID_sequence
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."modul_tetap_ID_sequence";
CREATE SEQUENCE "public"."modul_tetap_ID_sequence" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for pegawai_ID_sequence
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pegawai_ID_sequence";
CREATE SEQUENCE "public"."pegawai_ID_sequence" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for persentase_projek_ID_sequence
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."persentase_projek_ID_sequence";
CREATE SEQUENCE "public"."persentase_projek_ID_sequence" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for posisi_ID_sequence
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."posisi_ID_sequence";
CREATE SEQUENCE "public"."posisi_ID_sequence" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for progres_pegawai_ID_sequence
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."progres_pegawai_ID_sequence";
CREATE SEQUENCE "public"."progres_pegawai_ID_sequence" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for rekap_bulanan_ID_sequence
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rekap_bulanan_ID_sequence";
CREATE SEQUENCE "public"."rekap_bulanan_ID_sequence" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for rekap_mingguan_ID_sequence
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rekap_mingguan_ID_sequence";
CREATE SEQUENCE "public"."rekap_mingguan_ID_sequence" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for status_projek_ID_sequence
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."status_projek_ID_sequence";
CREATE SEQUENCE "public"."status_projek_ID_sequence" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tim_projek_ID_sequence
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tim_projek_ID_sequence";
CREATE SEQUENCE "public"."tim_projek_ID_sequence" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for user_ID_sequence
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."user_ID_sequence";
CREATE SEQUENCE "public"."user_ID_sequence" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for data_induk_projek
-- ----------------------------
DROP TABLE IF EXISTS "public"."data_induk_projek";
CREATE TABLE "public"."data_induk_projek" (
  "id_induk_projek" int8 NOT NULL DEFAULT nextval('"induk_projek_ID_sequence"'::regclass),
  "nama_projek" varchar(255) COLLATE "pg_catalog"."default",
  "instansi" varchar(255) COLLATE "pg_catalog"."default",
  "tgl_dimulai" date,
  "keterangan" varchar(255) COLLATE "pg_catalog"."default",
  "status" int8,
  "add_time" timestamp(6) NOT NULL,
  "tgl_berakhir" date
)
;

-- ----------------------------
-- Records of data_induk_projek
-- ----------------------------
INSERT INTO "public"."data_induk_projek" VALUES (3, 'Aplikasi Hotel', 'Retail', '2019-12-01', 'aplikasi administrasi dan marketing hotel', 1, '2020-04-22 15:07:22', '2019-12-31');
INSERT INTO "public"."data_induk_projek" VALUES (4, 'Aplikasi Pesantren', 'Retail', '2020-02-02', '', 1, '2020-04-22 15:13:23', '2020-04-30');
INSERT INTO "public"."data_induk_projek" VALUES (5, 'Aplikasi Apotek', 'Retail', '2019-11-01', '', 1, '2020-04-22 15:14:09', '2020-04-30');
INSERT INTO "public"."data_induk_projek" VALUES (6, 'RO Travel', 'Highlight Tours Travel', '2019-12-01', '', 1, '2020-04-22 15:26:26', '2020-05-16');
INSERT INTO "public"."data_induk_projek" VALUES (2, 'ARSIP BJB', ' BJB', '2020-02-01', 'Aplikasi Pengarsipan', 1, '2020-04-22 15:29:51', '2020-02-29');
INSERT INTO "public"."data_induk_projek" VALUES (18, 'FORMI', 'Federasi Olahraga Rekreasi-Masyarakat Indonesia', '2020-01-06', 'Web Informasi FORMI', 1, '2020-04-26 12:00:05', '2020-04-30');
INSERT INTO "public"."data_induk_projek" VALUES (12, 'I-DRIVE', 'Solusi Prima Syndicate', '2020-02-03', '', 1, '2020-04-23 16:22:05', '2020-04-30');
INSERT INTO "public"."data_induk_projek" VALUES (21, 'LP3I', 'LP3I', '2019-12-02', '', 1, '2020-04-23 16:50:24', '2019-12-31');
INSERT INTO "public"."data_induk_projek" VALUES (27, 'HRD Kepolisian', 'POLRI', '2020-01-06', '', 1, '2020-04-24 09:29:14', '2020-06-30');
INSERT INTO "public"."data_induk_projek" VALUES (28, 'SAKU PA+', 'KSK Insurance', '2020-04-06', '', 1, '2020-04-24 09:30:12', '2020-05-29');
INSERT INTO "public"."data_induk_projek" VALUES (29, 'SAKU AL-AMIN', 'AL-AMIN', '2020-04-06', '', 1, '2020-04-24 09:30:51', '2020-05-29');
INSERT INTO "public"."data_induk_projek" VALUES (31, 'AJK (Asuransi Jiwa Kredit)', 'Solusi Prima Syndicate', '2020-04-06', '', 1, '2020-04-24 09:33:18', '2020-05-15');
INSERT INTO "public"."data_induk_projek" VALUES (32, 'Zakat DEKOPIN', 'DEKOPIN', '2020-04-13', '', 1, '2020-04-24 09:36:24', '2020-05-15');
INSERT INTO "public"."data_induk_projek" VALUES (34, 'SIMONPRO', 'Solusi Karya Digital', '2020-04-02', 'Sistem Monitoring Projek', 1, '2020-04-24 09:40:05', '2020-04-13');
INSERT INTO "public"."data_induk_projek" VALUES (10, 'PAKEM V1', 'Retail', '2019-10-01', 'Aplikasi Smart Homey', 1, '2020-04-26 12:01:28', '2020-02-13');
INSERT INTO "public"."data_induk_projek" VALUES (11, 'PAKEM V2', 'Retail', '2020-02-14', 'Aplikasi Smart Homey', 1, '2020-04-26 12:01:35', '2020-02-28');
INSERT INTO "public"."data_induk_projek" VALUES (25, 'Dumas Reskrim / TOPAN', 'RESKRIM PORESTABES BANDUNG', '2020-03-17', 'Aplikasi Tombol Panik ', 1, '2020-04-26 11:42:46', '2020-04-24');
INSERT INTO "public"."data_induk_projek" VALUES (35, 'HAREMIS', 'Solusi Prima Syndicate', '2018-12-03', 'Human Resource and Management Information System', 1, '2020-04-26 11:43:12', '2020-03-27');
INSERT INTO "public"."data_induk_projek" VALUES (23, 'Buby V1', 'Rumah Buby', '2019-07-01', 'Aplikasi Management System Rumah Buby ', 1, '2020-04-26 11:45:54', '2020-03-09');
INSERT INTO "public"."data_induk_projek" VALUES (22, 'KPR MANDIRI', 'BANK MANDIRI', '2020-02-01', 'Web Informasi dan Simulasi Perhitungan KPR', 1, '2020-04-26 11:48:13', '2020-01-31');
INSERT INTO "public"."data_induk_projek" VALUES (33, 'SOLSIP', 'Solusi Prima Syndicate', '2020-04-06', 'Aplikasi Pengarsian Internal', 1, '2020-04-26 11:48:30', '2020-04-10');
INSERT INTO "public"."data_induk_projek" VALUES (30, 'Aplikasi UMKM BAGJA', 'Retail', '2020-04-13', 'Aplikasi Monitoring UMKM', 1, '2020-04-26 11:49:38', '2020-04-22');
INSERT INTO "public"."data_induk_projek" VALUES (26, 'Aplikasi Keuangan', 'Solusi Prima Syndicate', '2019-11-11', 'Sistem Penjurnalan Cashflow dan Pembukuan Keuangan', 1, '2020-04-26 11:52:08', '2020-05-29');
INSERT INTO "public"."data_induk_projek" VALUES (20, 'SOMAT/MKD', 'Retail', '2019-10-14', 'Aplikasi Monitoring Laba Rugi Pembiayaan UMKM', 1, '2020-04-26 11:53:17', '2019-12-31');
INSERT INTO "public"."data_induk_projek" VALUES (19, 'Aplikasi ATM MANDIRI', 'BANK MANDIRI', '2019-11-04', 'Aplikasi Monitoring Tasklist', 1, '2020-04-26 11:54:13', '2019-12-31');
INSERT INTO "public"."data_induk_projek" VALUES (15, 'Aplikasi Produksi V1', 'Solusi Prima Sinergi Mandiri', '2019-09-09', 'Aplikasi Pencatatan Kegiatan Produksi', 1, '2020-04-26 11:54:35', '2019-12-23');
INSERT INTO "public"."data_induk_projek" VALUES (16, 'Aplikasi Produksi V2', 'Solusi Prima Sinergi Mandiri', '2020-02-21', 'Penyempurnaan Alur Bank Garansi', 1, '2020-04-26 11:54:53', '2020-03-31');
INSERT INTO "public"."data_induk_projek" VALUES (8, 'Aplikasi Shodaqoh', 'Solusi Prima Syndicate', '2020-02-05', 'Aplikasi Monitoring Kolektif dan Penyaluran Shodaqoh', 1, '2020-04-26 11:55:32', '2020-03-09');
INSERT INTO "public"."data_induk_projek" VALUES (13, 'Aplikasi Pariwisata', 'Dinas Pariwisata dan Kebudayaan Jawa Timur', '2019-10-07', 'Aplikasi Pendataan Rekap Wisatawan Provinsi Jawa Timur', 1, '2020-04-26 11:55:59', '2020-03-02');
INSERT INTO "public"."data_induk_projek" VALUES (24, 'Buby V2', 'Rumah Buby', '2020-03-20', 'Penyempurnaan Pengelolaan Home Care dan In House', 1, '2020-04-26 11:57:06', '2020-05-29');
INSERT INTO "public"."data_induk_projek" VALUES (9, 'CARE', 'Solusi Prima Selindo', '2019-02-04', 'Collective and Recoveries System', 1, '2020-04-26 11:57:23', '2020-02-03');
INSERT INTO "public"."data_induk_projek" VALUES (17, 'DAKWAH MUI', 'Majelis Ulama Indonesia', '2019-02-04', 'Aplikasi pemetaan dakwah dan layanan informasi keislaman', 1, '2020-04-26 11:59:42', '2020-03-09');

-- ----------------------------
-- Table structure for data_projek
-- ----------------------------
DROP TABLE IF EXISTS "public"."data_projek";
CREATE TABLE "public"."data_projek" (
  "id_data_projek" int8 NOT NULL DEFAULT nextval('"data_projek_ID_sequence"'::regclass),
  "id_induk_projek" int8,
  "nama_sub_projek" varchar(255) COLLATE "pg_catalog"."default",
  "status" int8,
  "add_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of data_projek
-- ----------------------------
INSERT INTO "public"."data_projek" VALUES (1, 2, 'Web Aplikasi ARSIP BJB', 1, '2020-04-20 18:36:40');
INSERT INTO "public"."data_projek" VALUES (2, 3, 'Web Aplikasi Hotel', 1, '2020-04-24 09:18:51');
INSERT INTO "public"."data_projek" VALUES (3, 9, 'I - Care', 1, '2020-04-24 09:20:25');
INSERT INTO "public"."data_projek" VALUES (4, 9, 'V - Care', 1, '2020-04-24 09:21:15');
INSERT INTO "public"."data_projek" VALUES (5, 9, 'A - Care', 1, '2020-04-24 09:21:51');
INSERT INTO "public"."data_projek" VALUES (6, 9, 'D - Care', 1, '2020-04-24 09:22:06');
INSERT INTO "public"."data_projek" VALUES (7, 9, 'R - Care', 1, '2020-04-24 09:23:31');
INSERT INTO "public"."data_projek" VALUES (16, 19, 'Web Aplikasi Tasklist Mandiri', 1, '2020-04-24 09:43:13');
INSERT INTO "public"."data_projek" VALUES (17, 19, 'Android Aplikasi Tasklist Mandiri', 1, '2020-04-24 09:43:31');
INSERT INTO "public"."data_projek" VALUES (20, 26, 'Web Aplikasi Keuangan', 1, '2020-04-24 09:48:00');
INSERT INTO "public"."data_projek" VALUES (21, 13, 'Web Aplikasi Pariwisata', 1, '2020-04-24 09:48:20');
INSERT INTO "public"."data_projek" VALUES (22, 13, 'Android Aplikasi Pariwisata', 1, '2020-04-24 09:48:37');
INSERT INTO "public"."data_projek" VALUES (23, 4, 'Web Aplikasi Pesantren', 1, '2020-04-24 09:49:00');
INSERT INTO "public"."data_projek" VALUES (24, 15, 'Web Aplikasi Produksi', 1, '2020-04-24 09:49:51');
INSERT INTO "public"."data_projek" VALUES (25, 16, 'Web Aplikasi Produksi (Bank Garansi)', 1, '2020-04-24 09:50:12');
INSERT INTO "public"."data_projek" VALUES (26, 8, 'Web Aplikasi Shodaqoh', 1, '2020-04-24 09:50:30');
INSERT INTO "public"."data_projek" VALUES (28, 23, 'Web Aplikasi Buby V1', 1, '2020-04-24 09:51:45');
INSERT INTO "public"."data_projek" VALUES (31, 23, 'Android Aplikasi Buby V1', 1, '2020-04-24 09:56:01');
INSERT INTO "public"."data_projek" VALUES (33, 24, 'Web Aplikasi Buby V2', 1, '2020-04-24 10:08:43');
INSERT INTO "public"."data_projek" VALUES (34, 24, 'Android Aplikasi Buby V2', 1, '2020-04-24 10:09:44');
INSERT INTO "public"."data_projek" VALUES (35, 17, 'Web Aplikasi Dakwah MUI', 1, '2020-04-24 10:10:14');
INSERT INTO "public"."data_projek" VALUES (36, 17, 'Android Aplikasi Dakwah MUI', 1, '2020-04-24 10:10:40');
INSERT INTO "public"."data_projek" VALUES (37, 17, 'IOS Aplikasi Dakwah MUI', 1, '2020-04-24 10:11:10');
INSERT INTO "public"."data_projek" VALUES (39, 18, 'Web Informasi FORMI', 1, '2020-04-24 10:12:52');
INSERT INTO "public"."data_projek" VALUES (41, 18, 'Prototipe Android Aplikasi FORMI', 1, '2020-04-24 10:33:52');
INSERT INTO "public"."data_projek" VALUES (42, 12, 'Web Aplikasi I - Drive ', 1, '2020-04-24 10:45:07');
INSERT INTO "public"."data_projek" VALUES (43, 12, 'Android Aplikasi I - Drive', 1, '2020-04-24 10:45:28');
INSERT INTO "public"."data_projek" VALUES (44, 7, 'Web Informasi dan Simulasi Perhitungan KPR Mandiri', 1, '2020-04-24 10:46:52');
INSERT INTO "public"."data_projek" VALUES (45, 22, 'Web Informasi dan Simulasi Perhitungan KPR MANDIRI', 1, '2020-04-24 10:52:32');
INSERT INTO "public"."data_projek" VALUES (46, 10, 'Web Aplikasi PAKEM V1', 1, '2020-04-24 10:57:10');
INSERT INTO "public"."data_projek" VALUES (47, 10, 'Android Aplikasi PAKEM V1', 1, '2020-04-24 10:58:00');
INSERT INTO "public"."data_projek" VALUES (48, 11, 'Web Aplikasi PAKEM V2', 1, '2020-04-24 10:58:26');
INSERT INTO "public"."data_projek" VALUES (49, 11, 'Android Aplikasi PAKEM V2', 1, '2020-04-24 10:58:56');
INSERT INTO "public"."data_projek" VALUES (50, 6, 'Web Aplikasi RO Travel ', 1, '2020-04-24 11:01:58');
INSERT INTO "public"."data_projek" VALUES (52, 28, 'Prototipe Android Aplikasi SAKU PA+', 1, '2020-04-24 11:03:57');
INSERT INTO "public"."data_projek" VALUES (51, 29, 'Prototipe Android Aplikasi SAKU AL-AMIN', 1, '2020-04-24 11:04:07');
INSERT INTO "public"."data_projek" VALUES (53, 34, 'Web Aplikasi SIMONPRO', 1, '2020-04-24 11:05:01');
INSERT INTO "public"."data_projek" VALUES (55, 33, 'Web Aplikasi Pengarsipan Internal (SOLSIP)', 1, '2020-04-24 11:09:44');
INSERT INTO "public"."data_projek" VALUES (56, 20, 'Web Aplikasi SOMAT', 1, '2020-04-24 11:10:32');
INSERT INTO "public"."data_projek" VALUES (57, 30, 'Web Aplikasi UMKM BAGJA', 1, '2020-04-24 11:39:59');
INSERT INTO "public"."data_projek" VALUES (58, 30, 'Android Aplikasi UMKM BAGJA', 1, '2020-04-24 11:41:02');
INSERT INTO "public"."data_projek" VALUES (59, 31, 'Web Aplikasi AJK', 1, '2020-04-24 11:47:17');
INSERT INTO "public"."data_projek" VALUES (38, 25, 'Web Aplikasi TOPAN (Dumas Reskrim)', 1, '2020-04-26 10:36:58');
INSERT INTO "public"."data_projek" VALUES (60, 35, 'Web Aplikasi HAREMIS', 1, '2020-04-26 11:00:53');
INSERT INTO "public"."data_projek" VALUES (61, 5, 'Web Aplikasi Apotek', 1, '2020-04-26 11:07:01');
INSERT INTO "public"."data_projek" VALUES (62, 2, 'Android Aplikasi ARSIP BJB', 1, '2020-05-22 09:57:58');

-- ----------------------------
-- Table structure for isi_modul_projek
-- ----------------------------
DROP TABLE IF EXISTS "public"."isi_modul_projek";
CREATE TABLE "public"."isi_modul_projek" (
  "id_isi_modul" int8 NOT NULL DEFAULT nextval('"isi_modul_ID_sequence"'::regclass),
  "isi_modul" varchar(255) COLLATE "pg_catalog"."default",
  "id_modul_projek" int8,
  "add_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of isi_modul_projek
-- ----------------------------
INSERT INTO "public"."isi_modul_projek" VALUES (1, 'Rubrik Arsip', 1, '2020-04-20 18:52:06');
INSERT INTO "public"."isi_modul_projek" VALUES (2, 'Kode Masalah', 1, '2020-04-20 18:52:23');
INSERT INTO "public"."isi_modul_projek" VALUES (3, 'Lemari Arsip', 1, '2020-04-20 18:52:32');
INSERT INTO "public"."isi_modul_projek" VALUES (4, 'Jenis Arsip', 1, '2020-04-20 18:52:42');
INSERT INTO "public"."isi_modul_projek" VALUES (5, 'Sarana Penyimpanan', 1, '2020-04-20 18:53:01');

-- ----------------------------
-- Table structure for laporan_per_projek
-- ----------------------------
DROP TABLE IF EXISTS "public"."laporan_per_projek";
CREATE TABLE "public"."laporan_per_projek" (
  "id_laporan_projek" int8 NOT NULL DEFAULT nextval('"laporan_projek_ID_sequence"'::regclass),
  "id_persentase_projek" int8,
  "deskripsi" text COLLATE "pg_catalog"."default",
  "add_time" timestamp(6) DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Table structure for laporan_projek
-- ----------------------------
DROP TABLE IF EXISTS "public"."laporan_projek";
CREATE TABLE "public"."laporan_projek" (
  "id_laporan" int8 NOT NULL DEFAULT nextval('"laporan_pegawai_ID_sequence"'::regclass),
  "id_progres_pegawai" int8,
  "tanggal_laporan" date,
  "deskripsi" text COLLATE "pg_catalog"."default",
  "id_tim_projek" int8,
  "id_modul" int8,
  "add_time" timestamp(0),
  "progres" int8,
  "jenis_modul" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of laporan_projek
-- ----------------------------
INSERT INTO "public"."laporan_projek" VALUES (7, NULL, '2020-01-16', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Memperbaiki tampilan view penggajian.php.<o:p></o:p></span></p><p>

</p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Mengulik cara pemecahan error no operator matches
dalam query jumlah karyawan.<o:p></o:p></span></p>', 147, 261, '2020-05-14 14:58:11', 1, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (8, NULL, '2020-01-17', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi printPeriode pada Controller
Penggajian.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi print_periode pada model
M_penggajian.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_anggota_2 pada model
M_penggajian.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat view print_periode.php untuk fungsi cetak
data penggajian per periode.<o:p></o:p></span></p><p>







<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Menambahkan modal
view pada view Penggajian_Detail.php.</span><br></p>', 147, 261, '2020-05-15 09:13:29', 42, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (11, NULL, '2020-01-20', '<p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;, serif; font-size: 12pt;">- Mempelajari javascript dan jquery untuk format
numbering.</span><br></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Mengintegrasikan format number pada form tambah
gaji.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Menyesuaikan tampilan slip gaji dalam table
penggajian per periode untuk level user HRD dan direktur.<o:p></o:p></span></p><p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Menyesuaikan table
penggajian per periode pada view Detail penggajian untuk level user direktur.</span><br></p>', 147, 261, '2020-05-15 09:33:58', 45, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (13, NULL, '2020-01-27', '<p><span style="font-family: &quot;Times New Roman&quot;, serif; font-size: 12pt;">- Membuat fungsi get_periode pada Model
M_penggajian.php.</span><br></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membenarkan tampilan view penggajian_Detail.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Memperbaiki perhitungan penggajian dalam fungsi
tambah penggajian.<o:p></o:p></span></p><p>





<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Menambahkan fitur
print slip gaji bagi user level hrd.</span><br></p>', 147, 261, '2020-05-15 09:34:22', 45, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (56, NULL, '2020-04-23', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi cetak_pengeluaran_pdf Controller
Umkm.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi cetak_pengeluaran_excel Controller
Umkm.php.<o:p></o:p></span></p>', 99, 281, '2020-05-15 10:43:36', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (58, NULL, '2020-04-24', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_list_no_filter Controller
Summary.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_list_by_umkm Controller
Summary.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_list_by_period Controller
Summary.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_list_by_all Controller Summary.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_laba_umkm Controller Summary.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">









</span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_laba_period Controller
Summary.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_laba_all Controller Summary.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_laba Controller Summary.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi cetak Controller Summary.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_total_umkm Controller
Summary.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_total_period Controller
Summary.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_total_all Controller Summary.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_total Controller Summary.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_table_no_filter pada model
M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_table_by_umkm pada model
M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_table_by_period pada model
M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_table_by_all pada model
M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_laba pada model M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_laba_umkm pada model
M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_laba_by_umkm pada model
M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_laba_period pada model
M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_laba_by_period pada model
M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_laba_all pada model M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_laba_by_all pada model
M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat View print_summary.php<o:p></o:p></span></p><p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Membuat View
print_summary_excel.php</span><br></p>', 99, 282, '2020-05-15 10:44:00', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (185, NULL, '2020-05-22', '<p><span style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:
AR-SA">membuat icon buku kasbon aplikasi bagja</span><br></p>', 96, 5, '2020-05-28 16:31:32', 10, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (178, NULL, '2020-01-23', '<div>- membuat database baru mui semuatabel</div><div>- maintenance perbaikan database yang di hack</div><div>- setting privilege untuk database baru dengan setting user disesuaikan dengan config aplikasi</div><div>- execute database mui dan restore record data ke host baru</div><div><div>- analisis kebutuhan SPK</div><div>- analisis alur data transaksi debitur tiap SPK</div><div>- analisis kondisi data debitur pada user level cabang asuransi</div></div>', 63, 2, '2020-05-22 10:52:17', 90, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (187, NULL, '2020-03-03', '<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Membuat motion baru dari setiap
komposisi scene<o:p></o:p></span></p><p class="MsoNormal">

<span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Membuat template baru dari setiap scene<o:p></o:p></span></p>', 65, 8, '2020-05-29 09:26:49', 35, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (12, NULL, '2020-01-23', '<p><span style="font-family: &quot;Times New Roman&quot;, serif; font-size: 12pt;">- &nbsp;Membuat
fungsi slip pada Controller Penggajian.</span><br></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- &nbsp;Membuat
fungsi slip pada Model M_penggajian.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- &nbsp;Menyesuaikan
tampilan penggajian pada view direktur/penggajian_Detail.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- &nbsp;Mengintegrasikan
HTML2PDF pada fungsi slip dalam Controller Penggajian untuk fitur print slip
gaji.<o:p></o:p></span></p><p>







<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- &nbsp;Membuat view slip_gaji.php pada direktori
view/direktur.&nbsp;&nbsp;</span><br></p>', 147, 261, '2020-05-15 09:34:11', 45, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (28, NULL, '2020-02-26', '<span style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:
AR-SA">- Mengulik permasalahan pada kalkulasi tunjangan terhadap angka absensi</span>', 147, 261, '2020-05-15 09:54:44', 47, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (15, NULL, '2020-02-06', '<p><span style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:
AR-SA">- Memperbaiki tampilan pada sidebar admin.</span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Memperbaiki tampilan dasbor admin<o:p></o:p></span></p><p><span style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:
AR-SA"></span><br></p>', 66, 52, '2020-05-15 09:35:55', 10, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (17, NULL, '2020-02-07', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif"></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi add pada Controller Anak_asuh.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update pada Controller Anak_asuh.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi delete pada Controller Anak_asuh.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi add pada model M_anak.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update pada model M_anak.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat Controller Jenis_penyaluran.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi add pada Controller
Jenis_penyaluran.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update pada Controller
Jenis_penyaluran.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi delete pada Controller
Jenis_penyaluran.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat Controller master_penyaluran.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi add_event pada Controller
master_penyaluran.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update_event pada Controller
master_penyaluran.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update_event_status pada Controller
master_penyaluran.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi delete_event pada Controller
master_penyaluran.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat Model M_jenis_penyaluran.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get pada model
M_jenis_penyaluran.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi add pada model
M_jenis_penyaluran.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update pada model
M_jenis_penyaluran.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update_status pada model
M_jenis_penyaluran.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat Model M_event.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get pada model
M_jenis_penyaluran.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi add pada model
M_jenis_penyaluran.php.<o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Membuat view
data_jenis_penyaluran.php.</span>', 66, 46, '2020-05-15 09:40:17', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (18, NULL, '2020-02-10', '<span style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:
AR-SA">- Menyelesaikan front end dashboard investor.</span>', 66, 52, '2020-05-15 09:41:35', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (16, NULL, '2020-02-06', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Memperbaiki flow tambah user.</span></p><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;, serif; font-size: 12pt;">- Membuat Controller User.php.</span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi add pada Controller User.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi edit pada controller User.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi delete pada Controller User.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi username_check pada Controller
User.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat Model M_user.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get pada model M_user.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi add pada model M_user.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi edit pada model M_user.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat View data_user.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat controller anak_asuh<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat model anak_asuh.<o:p></o:p></span></p><p><p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif"><o:p></o:p></span></p></p></p>', 66, 46, '2020-05-15 09:43:18', 26, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (19, NULL, '2020-02-10', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat tabel histori penyaluran.<o:p></o:p></span></p>', 66, 50, '2020-05-15 09:44:35', 10, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (20, NULL, '2020-02-10', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat alur fungsi penyaluran event.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat alur fungsi penyaluran donasi anak asuh.<o:p></o:p></span></p>', 66, 47, '2020-05-15 09:46:10', 10, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (21, NULL, '2020-02-11', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi add_donasi_event pada Controller
Home.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi add_donasi_anak pada Controller
Home.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi add_donasi_anak_investor pada Model
M_penyaluran.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi add_donasi_event_investor pada Model
M_penyaluran.php.<o:p></o:p></span></p>', 66, 47, '2020-05-15 09:47:34', 50, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (22, NULL, '2020-02-11', '<p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;, serif; font-size: 12pt; color: rgb(0, 0, 0);">- Membuat Controller
History_investor.php.</span></p>', 66, 50, '2020-05-15 09:48:42', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (23, NULL, '2020-02-12', '<span style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:
AR-SA">- Memperbaiki tampilan data user.</span>', 66, 45, '2020-05-15 09:49:11', 16, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (24, NULL, '2020-02-17', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Memperbaiki tampilan data user.<o:p></o:p></span></p>', 66, 45, '2020-05-15 09:49:31', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (25, NULL, '2020-02-17', '<p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;, serif; font-size: 12pt;">- Memperbaiki tampilan menu report pada user operator.</span></p>', 66, 49, '2020-05-15 09:50:40', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (54, NULL, '2020-04-22', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat Controller Umkm.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_list_pemasukan Controller
Umkm.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_list_pengeluaran Controller
Umkm.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi cetak_pemasukan Controller Umkm.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi cetak_pengeluaran Controller
Umkm.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_total_pengeluaran_umkm Controller
Umkm.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_total_pengeluaran_period
Controller Umkm.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_total_pengeluaran_all Controller
Umkm.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_total_pengeluaran Controller
Umkm.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi cetak_pemasukan_pdf Controller
Umkm.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi cetak_pemasukan_excel Controller
Umkm.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat model M_pemasukan.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _get_datatables_query pada model
M_pemasukan.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_datatables pada model
M_pemasukan.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi count_filtered pada model
M_pemasukan.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi count_all pada model M_pemasukan.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get pada model M_pemasukan.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_by_id pada model M_pemasukan.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi view_no_filter pada model
M_pemasukan.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi view_by_umkm pada model
M_pemasukan.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi view_by_periode pada model
M_pemasukan.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi view_by_all pada model
M_pemasukan.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi total_no_filter pada model
M_pemasukan.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi total_by_umkm pada model
M_pemasukan.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi total_by_periode pada model
M_pemasukan.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi total_by_all pada model
M_pemasukan.php<o:p></o:p></span></p>', 99, 138, '2020-05-15 10:43:12', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (26, NULL, '2020-02-17', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Memperbaiki tampilan data user.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Menambah tabel salur pada database.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Mengubah alur penyaluran anak asuh dan event.</span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Memperbaiki tampilan menu iklan donasi pada user
operator.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Memperbaiki bug looping pada iklan penyaluran.<o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Memperbaiki bug
anak asuh tidak dapat memiliki iklan ganda, lebih dari satu.</span>', 66, 47, '2020-05-15 09:51:17', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (27, NULL, '2020-01-28', '<p><span style="font-family: &quot;Times New Roman&quot;, serif; font-size: 12pt;">- Memperbaiki tampilan slip gaji.</span><br></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Mengintegrasikan library MPDF pada haremis.<o:p></o:p></span></p><p><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Memperbaiki tampilan view master_grade.php, tambah_master_grade.php, dan edit_master_grade.php dengan menambahkan elemen field flat_tunjungan.</span></p>', 147, 261, '2020-05-15 09:54:15', 46, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (29, NULL, '2020-02-27', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Perbaikan alur perhitungan penggajian.<o:p></o:p></span></p>', 147, 261, '2020-05-15 09:55:25', 48, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (30, NULL, '2020-02-27', '<span style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:
AR-SA">- Perbaikan menu update grade_karyawan.</span>', 147, 259, '2020-05-15 09:56:00', 10, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (33, NULL, '2020-02-28', '<p class="MsoNormal" style="font-size: 14px;"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Membuat fungsi import pada Controller Penggajian pada folder hrd.<o:p></o:p></span></p><span style="color: rgb(33, 37, 41); font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Mengintegrasikan library PHPExcel pada aplikasi Haremis untuk fungsi import data penggajian.</span>', 147, 261, '2020-05-15 10:00:38', 49, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (35, NULL, '2020-03-02', '<div>- Mengulik permasalahan data karyawan yang tidak muncul.</div><div>- Membuat fungsi update_anggota pada Controller hrd/Master_anggota.php.</div><div>- Memperbaiki tampilan edit anggota.</div>', 147, 259, '2020-05-15 10:02:52', 20, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (59, NULL, '2020-04-29', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi cetak_surat pada Controller phk.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi lihat_surat pada Controller phk.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi bulan pada Controller phk.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_by_id pada model M_phk.php.<o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Membuat view
surat_phk.php.</span>', 147, 258, '2020-05-15 10:35:18', 50, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (55, NULL, '2020-04-22', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat model M_pengeluaran.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _get_datatables_query pada model
M_pengeluaran.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_datatables pada model
M_pengeluaran.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi count_filtered pada model M_pengeluaran.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi count_all pada model
M_pengeluaran.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get pada model M_pengeluaran.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_by_id pada model
M_pengeluaran.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi view_no_filter pada model
M_pengeluaran.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi view_by_umkm pada model
M_pengeluaran.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi view_by_periode pada model
M_pengeluaran.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi view_by_all pada model
M_pengeluaran.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi total_no_filter pada model
M_pengeluaran.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi total_by_umkm pada model
M_pengeluaran.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi total_by_periode pada model
M_pengeluaran.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi total_by_all pada model
M_pengeluaran.php<o:p></o:p></span></p>', 99, 281, '2020-05-15 10:43:27', 90, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (57, NULL, '2020-04-23', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat Controller Summary.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_list Controller Summary.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi cetak Controller Summary.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_total_pengeluaran_umkm Controller
Summary.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_total_pengeluaran_period
Controller Summary.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_total_pengeluaran_all Controller
Summary.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_total_pengeluaran Controller
Summary.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi cetak_pdf Controller Summary.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi cetak_excel Controller Summary.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat model M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _get_datatables_query pada model
M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_datatables pada model
M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi count_filtered pada model
M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi count_all pada model M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get pada model M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_by_id pada model M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi view_no_filter pada model
M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi view_by_umkm pada model M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi view_by_periode pada model
M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi view_by_all pada model M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi total_no_filter pada model M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi total_by_umkm pada model
M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi total_by_periode pada model
M_summary.php<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi total_by_all pada model M_summary.php<o:p></o:p></span></p><p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Membuat View
Summary.php</span><br></p>', 99, 282, '2020-05-15 10:43:52', 50, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (128, NULL, '2020-02-17', '<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- penggabungan database
i-drive ke database hrd ( menambahkan tabel history kendaraan, menambahkan
tabel history perjalanan, menambahkan tabel jenis biaya, menambahkan tabel
jenis kebutuhan kendaraan, menambahkan tabel jenis keperluan, menambahkan tabel
kendaraan, menambahkan tabel pengajuan driver, menambahkan tabel reminder,
menambahkan tabel task list)<o:p></o:p></span></p>', 120, 2, '2020-05-18 15:41:07', 80, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (184, NULL, '2020-05-28', '<p>-perbaikan gambar manual book bagja</p><p>-perbaikan teks manual book bagja</p><p>-membuat layout baru manual book bagja</p>', 96, 7, '2020-05-28 16:29:31', 40, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (186, NULL, '2020-03-02', '<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Membuat motion baru dari setiap komposisi
scene<o:p></o:p></span></p><p>

</p><p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Membuat template baru dari setiap scene<o:p></o:p></span></p>', 65, 8, '2020-05-29 09:27:27', 35, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (213, NULL, '2020-03-09', '<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Nama Projek : Apotik<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Tahapan : Analisis <o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">detail :<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis aplikasi
apotik (desktop)<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis menu
pembelian, sub menu daftar pembelian<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menambahkan wireframe
menu pembelian, sub menu daftar pembelian<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis menu
pembelian, sub menu history pembelian<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menambahkan wireframe
menu pembelian, sub menu history pembelian<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis menu
pembelian, sub menu history pembelian<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menambahkan wireframe
menu pembelian, sub menu history pembelian<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menambahkan wireframe
menu master data, sub menu item, tab data obat<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menambahkan wireframe
menu master data, sub menu item, tab data resep<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menambahkan wireframe
menu master data, sub menu item, tab jasa<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menambahkan wireframe
menu master data, sub menu item, tab data tindakan<o:p></o:p></span></p>', 150, 1, '2020-05-29 09:31:50', 47, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (36, NULL, '2020-03-03', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Memperbaiki tampilan front end let''s work!<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi registrasi pada Controller Career.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi keluar pada Controller Career.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi Detail pada Controller Career.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat model M_pelamar.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi create pada Model M_pelamar.php. <o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi cek_user pada Model M_pelamar.php. <o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ambil pada Model M_lowongan.php. <o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Membuat view
register_pelamar.php. (direktori: view/frontend)</span>', 147, 262, '2020-05-15 10:04:36', 4, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (37, NULL, '2020-03-04', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Memperbaiki tampilan front end let''s work!<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi cari pada Controller Career.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi kategori pada Controller Career.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi lokasi pada Controller Career.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi apply pada Controller Career.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi login pada Controller Career.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi lamar pada Controller Career.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi masuk_lewat_front_end pada Controller
Career.php.<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_a_job pada Model M_pelamar.php. <o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi cari pada Model M_pelamar.php. <o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_full_time pada Model
M_lowongan.php. <o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_intern pada Model M_lowongan.php.
<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_part_time pada Model
M_lowongan.php. <o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_per_lokasi pada Model
M_lowongan.php. <o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_per_lokasi_full_time pada Model
M_lowongan.php. <o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_per_lokasi_intern pada Model
M_lowongan.php. <o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_per_lokasi_part_time pada Model
M_lowongan.php. <o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_buat_iklan pada Model
M_lowongan.php. <o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi jumlah_data_lokasi pada Model
M_lowongan.php. <o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi jumlah_data_lokasi_full_time pada
Model M_lowongan.php. <o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi jumlah_data_lokasi_intern pada Model
M_lowongan.php. <o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi jumlah_data_lokasi_part_time pada
Model M_lowongan.php. <o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi jumlah_data_full_time pada Model
M_lowongan.php. <o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi jumlah_data_intern pada Model
M_lowongan.php. <o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi jumlah_data_part_time pada Model
M_lowongan.php. <o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi lamaran pada Model M_lowongan.php. <o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat view apply.php. (direktori: view/frontend).<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat view cari_career.php. (direktori:
view/frontend).<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat view Detail_lowongan.php. (direktori:
view/frontend).<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat view full_time.php. (direktori:
view/frontend).<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat view intern.php. (direktori: view/frontend).<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat view login_pelamar.php. (direktori:
view/frontend).<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat view part_time.php. (direktori:
view/frontend).<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat view full_time.php. (direktori:
view/frontend/lokasi).<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat view intern.php. (direktori:
view/frontend/lokasi).</span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat view part_time.php. (direktori:
view/frontend/lokasi).<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">

<span style="font-size: 12pt; line-height: 107%;">- Membuat view
recent.php. (direktori: view/frontend/lokasi).</span><br></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif"><o:p></o:p></span></p>', 147, 262, '2020-05-15 10:08:34', 50, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (39, NULL, '2020-03-06', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Memperbaiki tampilan front end let''s work!<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update_status pada Controller
Lamaran_masuk.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update_status_2 pada Controller
Lamaran_masuk.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi download_pdf pada Controller
Lamaran_masuk.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi delete_lamaran pada Controller
Lamaran_masuk.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi delete_lamaran_2 pada Controller
Lamaran_masuk.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi delete_lamaran_3 pada Controller
Lamaran_masuk.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_Detail pada Model M_pelamar.php. <o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_Detail_interview pada Model
M_pelamar.php. <o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_Detail_selected pada Model
M_pelamar.php. <o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_resume pada Model M_pelamar.php. <o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update_status pada Model
M_pelamar.php.&nbsp; <o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Memperbaiki
tampilan view Kelola Lowongan.</span>', 147, 262, '2020-05-15 10:09:52', 90, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (40, NULL, '2020-03-11', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Memperbaiki tampilan backend user hrd.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat Controller Master_bagian.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi create pada Controller
Master_bagian.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update pada Controller
Master_bagian.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi delete pada Controller Master_bagian.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat Controller Master_jabatan.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi create pada Controller
Master_jabatan.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update pada Controller
Master_jabatan.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi delete pada Controller
Master_jabatan.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat Controller Master_posisi.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi create pada Controller
Master_posisi.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update pada Controller
Master_posisi.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi delete pada Controller
Master_posisi.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat Model M_bagian.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get pada Model M_bagian.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi create pada Model M_bagian.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update pada Model M_bagian.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi delete pada Model M_bagian.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat Model M_jabatan.php.</span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get pada Model M_jabatan.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi create pada Model M_jabatan.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update pada Model M_jabatan.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi delete pada Model M_jabatan.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat Model M_posisi.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get pada Model M_posisi.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi create pada Model M_posisi.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update pada Model M_posisi.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi delete pada Model M_posisi.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat view master_bagian.php (direktori:
views/hrd.)<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat view master_jabatan.php (direktori:
views/hrd.)<o:p></o:p></span></p><p class="MsoNormal">





















<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Membuat view
master_posisi.php (direktori: views/hrd.)</span><br></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif"><o:p></o:p></span></p>', 147, 259, '2020-05-15 10:11:53', 50, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (41, NULL, '2020-03-12', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Memperbaiki tampilan master data posisi level hrd.<o:p></o:p></span></p>', 147, 259, '2020-05-15 10:12:11', 51, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (42, NULL, '2020-03-12', '<span style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:
AR-SA">- Memperbaiki tampilan frontend haremis.</span>', 147, 262, '2020-05-15 10:14:59', 91, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (43, NULL, '2020-03-13', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat Controller Master_jurusan.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi create pada Controller
Master_jurusan.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update pada Controller
Master_jurusan.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi delete pada Controller
Master_jurusan.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat Model M_jurusan.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get pada Model M_jurusan.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi create pada Model M_jurusan.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update pada Model M_jurusan.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi delete pada Model M_jurusan.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_data_posisi pada Model
M_lowongan.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat view master_jurusan.php (direktori:
views/hrd.)<o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Memperbaiki
tampilan kelola lowongan pekerjaan.</span>', 147, 259, '2020-05-15 10:17:43', 52, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (44, NULL, '2020-03-02', '<div>- Memperbaiki alur edit gaji karyawan.</div><div>- Menambahkan field status pada tabel grade_karyawan.</div><div>- Mengulik kesalahan perhitungan THP Gross pada tampilan penggajian_detail.php</div>', 147, 261, '2020-05-15 10:18:17', 50, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (45, NULL, '2020-03-16', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi download pada Controller
Penggajian.php.<o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Mengulik alur edit
penggajian</span>', 147, 261, '2020-05-15 10:18:42', 51, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (46, NULL, '2020-03-17', '<span style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:
AR-SA">-Menyelesaikan fitur edit penggajian</span>', 147, 261, '2020-05-15 10:19:27', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (47, NULL, '2020-04-04', '<span style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:
AR-SA">- Perbaikan tampilan keluarga karyawan.</span>', 147, 259, '2020-05-15 10:20:30', 53, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (50, NULL, '2020-04-29', '<p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Membuat fungsi terbitkan_surat pada Controller Lembur.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Membuat fungsi surat pada Controller Lembur.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Membuat fungsi hari pada Controller Lembur.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Membuat fungsi get_by_id pada model M_lembur.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Membuat view surat_lembur.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Membuat fungsi cetak_surat pada Controller Perizinan_cuti.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Membuat fungsi bulan pada Controller Perizinan_cuti.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Membuat fungsi hari pada Controller Perizinan_cuti.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Membuat fungsi get_by_id pada model M_cuti.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Membuat view surat_cuti.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Membuat fungsi cetak_surat pada Controller phk.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Membuat fungsi lihat_surat pada Controller phk.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Membuat fungsi bulan pada Controller phk.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Membuat fungsi get_by_id pada model M_phk.php.<o:p></o:p></span></p><p><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Membuat view surat_phk.php.</span></p>', 147, 255, '2020-05-15 10:23:41', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (60, NULL, '2020-04-30', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi cetak_surat pada Controller
Promosi.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi bulan pada Controller Promosi.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi tampil_data_kepdep pada model
M_promosi.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_by_id pada model M_promosi.php.<o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Membuat view
surat_promosi.php.</span>', 147, 258, '2020-05-15 10:35:39', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (62, NULL, '2020-04-20', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_list Controller Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_create Controller Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_edit Controller Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_update Controller Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_delete Controller Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _validate_create Controller Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _validate_update Controller Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat Controller User_Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_list Controller User_Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_create Controller User_Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_edit Controller User_Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_update Controller User_Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_update_status Controller
User_Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_delete Controller User_Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _validate_create Controller
User_Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _validate_update Controller
User_Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat model M_user.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get pada model M_user.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat model M_umkm.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _get_datatables_query pada model
M_umkm.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_datatables pada model M_umkm.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi count_filtered pada model M_umkm.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi count_all pada model M_umkm.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get pada model M_umkm.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_by_id pada model M_umkm.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi create pada model M_umkm.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update pada model M_umkm.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi delete pada model M_umkm.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat model M_user_umkm.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _get_datatables_query pada model
M_user_umkm.php</span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_datatables pada model
M_user_umkm.php<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi count_filtered pada model
M_user_umkm.php<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi count_all pada model M_user_umkm.php<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get pada model M_user_umkm.php<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_by_id pada model M_user_umkm.php<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi create pada model M_user_umkm.php<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update pada model M_user_umkm.php<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi delete pada model M_user_umkm.php<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat View log_in.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat View dashboard.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat View master_umkm.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat View master_user_umkm.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat View header.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat View sidebar.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat View content.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat View footer.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat View wrapper.php.<o:p></o:p></span></p><p class="MsoNormal">

































<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Menyelesaikan
tampilan Frontend.</span><br></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif"><o:p></o:p></span></p>', 99, 137, '2020-05-15 10:42:04', 32, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (63, NULL, '2020-04-21', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat Controller Produk.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_list Controller Produk.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_create Controller Produk.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_edit Controller Produk.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_update Controller Produk.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_delete Controller Produk.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _validate_create Controller
Produk.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _validate_update Controller
Produk.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat model M_produk.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _get_datatables_query pada model
M_produk.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_datatables pada model
M_produk.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi count_filtered pada model
M_produk.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi count_all pada model M_produk.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get pada model M_produk.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_by_id pada model M_produk.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi create pada model M_produk.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update pada model M_produk.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi delete pada model M_produk.php<o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Membuat View
produk.php.</span>', 99, 137, '2020-05-15 10:42:44', 48, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (64, NULL, '2020-05-05', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat Controller Paket.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_list pada Controller Paket.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_create pada Controller Paket.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_edit pada Controller Paket.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_update pada Controller Paket.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_delete pada Controller Paket.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _validate_create pada Controller
Paket.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _validate_update pada Controller
Paket.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat model M_paket.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _get_datatables_query pada model
M_paket.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_datatables pada model M_paket.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi count_filtered pada model M_paket.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi count_all pada model M_paket.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get pada model M_paket.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_by_id pada model M_paket.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi create pada model M_paket.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update pada model M_paket.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi delete pada model M_paket.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat View master_paket.php.<o:p></o:p></span></p>', 99, 137, '2020-05-15 10:44:51', 50, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (65, NULL, '2020-05-05', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat Controller Angsuran.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat model M_angsuran.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get pada model M_angsuran.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat View angsuran.php.<o:p></o:p></span></p>', 99, 283, '2020-05-15 10:45:38', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (66, NULL, '2020-05-07', '<span style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:
AR-SA">- Perbaikan tampilan keluarga karyawan.</span>', 147, 259, '2020-05-15 10:46:19', 54, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (67, NULL, '2020-05-07', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat Controller Kategori.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_list pada Controller
Kategori.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_create pada Controller Kategori.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_edit pada Controller
Kategori.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_update pada Controller
Kategori.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_delete pada Controller
Kategori.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _validate_create pada Controller
Kategori.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _validate_update pada Controller
Kategori.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat model M_kategori.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _get_datatables_query pada model
M_kategori.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_datatables pada model
M_kategori.php</span><span style="font-family: &quot;Times New Roman&quot;, serif; font-size: 12pt;">- Membuat fungsi count_filtered pada model M_kategori.php</span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi count_all pada model M_kategori.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get pada model M_kategori.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_by_id pada model M_kategori.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi create pada model M_kategori.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update pada model M_kategori.php<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi delete pada model M_kategori.php<o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Membuat View
master_kategori.php.</span><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif"><o:p></o:p></span></p>', 99, 137, '2020-05-15 10:47:22', 70, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (68, NULL, '2020-05-13', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_create pada Controller Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update pada Controller Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_delete pada Controller Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _do_upload pada Controller Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _validate_create pada Controller
Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi read pada Model M_umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get pada Model M_umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi create pada Model M_umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update pada Model M_umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update_kategori pada Model
M_Umkm.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi delete_by_id pada Model M_Umkm.php.</span><span style="font-family: &quot;Times New Roman&quot;, serif; font-size: 12pt;">-Membuat Controller Outlet.</span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_create pada Controller
Outlet.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update pada Controller Outlet.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi ajax_delete pada Controller
Outlet.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _do_upload pada Controller
Outlet.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi _validate_create pada Controller
Outlet.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi read pada Model M_outlet.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi get_by_id pada Model M_ outlet.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi create pada Model M_ outlet.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update pada Model M_outlet.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi update_kategori pada Model
M_outlet.php.<o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Membuat fungsi delete_by_id
pada Model M_outlet.php.</span><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif"><o:p></o:p></span></p>', 99, 137, '2020-05-15 10:48:04', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (70, NULL, '2020-04-30', '<p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Membuat fungsi cetak_surat pada Controller Promosi.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Membuat fungsi bulan pada Controller Promosi.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Membuat fungsi tampil_data_kepdep pada model M_promosi.php.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Membuat fungsi get_by_id pada model M_promosi.php.<o:p></o:p></span></p><p><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- Membuat view surat_promosi.php.</span></p>', 147, 260, '2020-05-15 10:50:49', 50, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (71, NULL, '2020-05-11', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi cetak_surat pada Controller Mutasi.php.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat view surat_mutasi.<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,serif">- Membuat fungsi cetak_surat pada Controller Pengunduran_diri.php.<o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Membuat view
surat_pengunduran_diri.</span>', 147, 260, '2020-05-15 10:51:06', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (72, NULL, '2020-03-26', '<p>Perbaikan manual book versi baru.&nbsp;</p>', 32, 7, '2020-05-18 09:54:54', 100, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (110, NULL, '2020-01-20', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout halaman atendance
atau absensi user terapis aplikasi rumah buby android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat function absesnsi pada
halaman atendance atau absessi user terapis pada aplikasi android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat function get absensi pada
halaman atendance atau absensi user terapis pada aplikasi android Rumah Buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat function api post kehadiran
untuk fungsi absensi aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat model query untuk post
kehadiran fungsi absensi aplikasi android rumah buby.<o:p></o:p></span></p>', 74, 58, '2020-05-18 15:13:12', 10, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (111, NULL, '2020-02-03', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout halaman atendance
atau absensi user terapis aplikasi rumah buby android.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat function absesnsi pada
halaman atendance atau absessi user terapis pada aplikasi android.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat function get absensi pada
halaman atendance atau absensi user terapis pada aplikasi android Rumah Buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat function api post kehadiran
untuk fungsi absensi aplikasi android rumah buby.<o:p></o:p></span></p><p>







</p><p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat model query untuk post
kehadiran fungsi absensi aplikasi android rumah buby.<o:p></o:p></span></p>', 74, 59, '2020-05-18 15:15:05', 62, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (112, NULL, '2020-02-14', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout login aplikasi rumah
buby android kotlin.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi login aplikasi rumah
buby android kotlin&nbsp; untuk authentifikasi
user level bidan pada aplikasi pakem android/<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout dashboard menu utama
rumah boby adnroid kotlin.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi tampil informasi
aplikasi rumah buby andrdoi kotin user level terapis.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity login aplikasi
rumah buby android kotlin.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity dashboard menu
utama rumah buby aplikasi android.<o:p></o:p></span></p>', 74, 59, '2020-05-18 15:15:39', 63, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (113, NULL, '2020-02-17', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout halaman atendance atau
absensi user terapis aplikasi rumah buby android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function absesnsi pada
halaman atendance atau absessi user terapis pada aplikasi android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function get absensi pada
halaman atendance atau absensi user terapis pada aplikasi android Rumah Buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function api post kehadiran
untuk fungsi absensi aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update model query untuk post
kehadiran fungsi absensi aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout halaman menu list
item peminjaman barang aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity halaman menu list
item peminjaman barang aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat adapter list item peminjaman
barang aplikasi android rumah buby.<o:p></o:p></span></p>', 74, 59, '2020-05-18 15:16:21', 64, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (114, NULL, '2020-02-18', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout halaman atendance atau
absensi user terapis aplikasi rumah buby android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function absesnsi pada
halaman atendance atau absessi user terapis pada aplikasi android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function get absensi pada
halaman atendance atau absensi user terapis pada aplikasi android Rumah Buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function api post kehadiran
untuk fungsi absensi aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update model query untuk post
kehadiran fungsi absensi aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">update layout halaman menu list item
peminjaman barang aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">update activity halaman menu list
item peminjaman barang aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">update adapter list item peminjaman
barang aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment history pada
aplikasi android rumah buby.<o:p></o:p></span></p>', 74, 59, '2020-05-18 15:16:37', 65, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (115, NULL, '2020-05-19', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout halaman atendance atau
absensi user terapis aplikasi rumah buby android.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function absesnsi pada
halaman atendance atau absessi user terapis pada aplikasi android.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function get absensi pada
halaman atendance atau absensi user terapis pada aplikasi android Rumah Buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function api post kehadiran
untuk fungsi absensi aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update model query untuk post
kehadiran fungsi absensi aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout halaman menu list
item peminjaman barang aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity halaman menu list
item peminjaman barang aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat adapter list item peminjaman
barang aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fragment history pada
aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout history pada apliaksi
android rumah buby untuk melihat list pengunjung yang sudah d treatment.<o:p></o:p></span></p><p>



















<span style="font-size:11.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:IN;mso-fareast-language:
IN;mso-bidi-language:AR-SA">Membuat fungsi history untuk list pengunjung yang
sudah d treatment oleh teraphist</span><br></p>', 74, 58, '2020-05-18 15:17:21', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (116, NULL, '2020-02-19', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout halaman atendance atau
absensi user terapis aplikasi rumah buby android.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function absesnsi pada
halaman atendance atau absessi user terapis pada aplikasi android.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function get absensi pada
halaman atendance atau absensi user terapis pada aplikasi android Rumah Buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function api post kehadiran
untuk fungsi absensi aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update model query untuk post
kehadiran fungsi absensi aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout halaman menu list
item peminjaman barang aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity halaman menu list
item peminjaman barang aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat adapter list item peminjaman
barang aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fragment history pada
aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout history pada apliaksi
android rumah buby untuk melihat list pengunjung yang sudah d treatment.<o:p></o:p></span></p><p>



















<span style="font-size:11.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:IN;mso-fareast-language:
IN;mso-bidi-language:AR-SA">Membuat fungsi history untuk list pengunjung yang
sudah d treatment oleh teraphist</span><br></p>', 74, 59, '2020-05-18 15:18:11', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (117, NULL, '2020-04-21', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout halaman atendance atau
absensi user terapis aplikasi rumah buby android.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity detail treatment
activity untuk fungsi melihan detail treatment per pelanggan pada aplikasi
android kotlin rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout detail treatment
untuk tampilan detail treatment per pelanggan pada aplikasi android kotlin
rurmah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout main activity untuk
tampilan main pada aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity main yang berfungsi
sebagai parent fragment menu2 android kotlin rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity notification yang
berfungsi sebagai notifikasi untuk mengingatkan treharpist bawa terapi sudah
selesai pada aplikasi andoid rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat adapter detail treatment
untuk menyimpan list view treatment apa saja yang di ambil olah pelanggan.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout adapter detail
treatment sebagai tampilan list treatment pada aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout adapter detail
pembelian product sebagai list view pembelian product apa saja yang dibeli oleh
pelanggan.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout attendance untuk
absensi therapist pada aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi attendance untuk
absesnsi therapist pada aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat ftagment attendance untuk
absensi therapist pada aplikasi anadoir rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat framgnet list item pinjaman
barang pada aplikasi android rumah buby.<o:p></o:p></span></p><p>

























</p><p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout list fragment item
pinjaman barang pada aplikasi android rumah buby.<o:p></o:p></span></p>', 74, 60, '2020-05-18 15:19:07', 80, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (118, NULL, '2020-02-24', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout halaman atendance atau
absensi user terapis aplikasi rumah buby android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity detail treatment
activity untuk fungsi melihan detail treatment per pelanggan pada aplikasi
android kotlin rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout detail treatment
untuk tampilan detail treatment per pelanggan pada aplikasi android kotlin
rurmah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout main activity untuk
tampilan main pada aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity main yang berfungsi
sebagai parent fragment menu2 android kotlin rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity notification yang
berfungsi sebagai notifikasi untuk mengingatkan treharpist bawa terapi sudah
selesai pada aplikasi andoid rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat adapter detail treatment
untuk menyimpan list view treatment apa saja yang di ambil olah pelanggan.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout adapter detail
treatment sebagai tampilan list treatment pada aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout adapter detail
pembelian product sebagai list view pembelian product apa saja yang dibeli oleh
pelanggan.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout attendance untuk
absensi therapist pada aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi attendance untuk
absesnsi therapist pada aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat ftagment attendance untuk
absensi therapist pada aplikasi anadoir rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat framgnet list item pinjaman
barang pada aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout list fragment item
pinjaman barang pada aplikasi android rumah buby.<o:p></o:p></span></p>', 74, 60, '2020-05-18 15:19:25', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (119, NULL, '2020-04-24', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout halaman atendance atau
absensi user terapis aplikasi rumah buby android.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity detail treatment
activity untuk fungsi melihan detail treatment per pelanggan pada aplikasi
android kotlin rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout detail treatment
untuk tampilan detail treatment per pelanggan pada aplikasi android kotlin
rurmah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout main activity untuk
tampilan main pada aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update activity main yang berfungsi
sebagai parent fragment menu2 android kotlin rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update activity notification yang
berfungsi sebagai notifikasi untuk mengingatkan treharpist bawa terapi sudah
selesai pada aplikasi andoid rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update adapter detail treatment
untuk menyimpan list view treatment apa saja yang di ambil olah pelanggan.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout adapter detail
treatment sebagai tampilan list treatment pada aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout adapter detail
pembelian product sebagai list view pembelian product apa saja yang dibeli oleh
pelanggan.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout attendance untuk
absensi therapist pada aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fungsi attendance untuk
absesnsi therapist pada aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update ftagment attendance untuk
absensi therapist pada aplikasi anadoir rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update framgnet list item pinjaman
barang pada aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout list fragment item
pinjaman barang pada aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi play terapist pada
adapter list treatment untuk memulai terapi ke pelanggan pada aplikasi android
rumah buby.<o:p></o:p></span></p><p>





























</p><p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi alarm untuk
notifikasi selesai treatment pada adapter list treatment untuk mengingatkan
therapist bahwa waktu terapi sudah habis<o:p></o:p></span></p>', 74, 61, '2020-05-18 15:20:00', 90, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (135, NULL, '2020-03-06', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update
layout login android kotlin android<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update
fungsi login untuk proses authentifikasi login agar bisa masuk ke aplikasi
android I drive.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update
layout register android kotlin untuk aplikasi I drive<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update
animasi untuk perpindahan layout login ke layout register aplikasi I drive
android.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update
layout home android aplikasi I drive android.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update
activity login android kotlin untuk menyimpan fungsi login proses pada aplikasi
andrdoid I drive.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update
activity main untuk root main fragment menu menu pada aplikasi android I drive.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update
layout tampilan home pada aplikasi Idrive.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update
fragment home pada aplikasi I drive untuk menampilkan layout I drive pada
aplikasi android kotlin I drive.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update </span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">fragment
</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Biaya pada aplikasi I drive kotlin
untuk menampilkan layout fragment biaya pada aplikasi I Drive.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update layout
fragment biaya pada aplikasi I drive kotlin sebagai tampilan layout fragment
biaya pada aplikasi I Drive.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update
fragment history kendaraan pada aplikasi I drive kotlin <o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
layout tambah biaya pada aplikasi I drive kotlin<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update activity
tambah biaya pada aplikasi idrive kotlin<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update function
spinner pada activity tambah biaya aplikasi I drive kotlin.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout task pada aplikasi idrive kotlin<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fragment task pada aplikasi idrive kotlin<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
function spinner pada aplikasi idrive kotlin.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout laporan task driver pada aplikasi idrive kotlin.<o:p></o:p></span></p><p>





































</p><p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity laporan task driver pada aplikasi idrive koltin<o:p></o:p></span></p>', 118, 101, '2020-05-18 15:52:04', 75, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (120, NULL, '2020-02-25', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout halaman atendance atau
absensi user terapis aplikasi rumah buby android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity detail treatment
activity untuk fungsi melihan detail treatment per pelanggan pada aplikasi
android kotlin rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout detail treatment
untuk tampilan detail treatment per pelanggan pada aplikasi android kotlin
rurmah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout main activity untuk
tampilan main pada aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update activity main yang berfungsi
sebagai parent fragment menu2 android kotlin rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update activity notification yang
berfungsi sebagai notifikasi untuk mengingatkan treharpist bawa terapi sudah
selesai pada aplikasi andoid rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update adapter detail treatment
untuk menyimpan list view treatment apa saja yang di ambil olah pelanggan.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout adapter detail
treatment sebagai tampilan list treatment pada aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout adapter detail
pembelian product sebagai list view pembelian product apa saja yang dibeli oleh
pelanggan.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout attendance untuk
absensi therapist pada aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fungsi attendance untuk
absesnsi therapist pada aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update ftagment attendance untuk
absensi therapist pada aplikasi anadoir rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update framgnet list item pinjaman
barang pada aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout list fragment item
pinjaman barang pada aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi play terapist pada
adapter list treatment untuk memulai terapi ke pelanggan pada aplikasi android
rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi alarm untuk
notifikasi selesai treatment pada adapter list treatment untuk mengingatkan
therapist bahwa waktu terapi sudah habis<o:p></o:p></span></p>', 74, 61, '2020-05-18 15:20:20', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (121, NULL, '2020-04-26', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update ftagment attendance untuk absensi
therapist pada aplikasi anadoir rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update framgnet list item pinjaman
barang pada aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout list fragment item
pinjaman barang pada aplikasi android rumah buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fungsi play terapist pada adapter
list treatment untuk memulai terapi ke pelanggan pada aplikasi android rumah
buby.<o:p></o:p></span></p><p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1">







</p><p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fungsi alarm untuk notifikasi
selesai treatment pada adapter list treatment untuk mengingatkan therapist
bahwa waktu terapi sudah habis</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>', 74, 62, '2020-05-18 15:21:10', 98, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (122, NULL, '2020-04-27', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update ftagment attendance untuk absensi
therapist pada aplikasi anadoir rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update framgnet list item pinjaman
barang pada aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout list fragment item
pinjaman barang pada aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fungsi play terapist pada adapter
list treatment untuk memulai terapi ke pelanggan pada aplikasi android rumah
buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fungsi alarm untuk notifikasi
selesai treatment pada adapter list treatment untuk mengingatkan therapist
bahwa waktu terapi sudah habis</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>', 74, 62, '2020-05-18 15:21:28', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (109, NULL, '2020-02-13', '<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Nama Projek : Aplikasi
I-Drive <o:p></o:p></span></p><p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Tahapan : Analisis<o:p></o:p></span></p><p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">detail :<o:p></o:p></span></p><p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Melengkapi wireframe
I-Drive (mobile) Home, penambahan informasi saldo<o:p></o:p></span></p><p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Melengkapi wireframe
I-Drive (mobile) Biaya yang diinput driver<o:p></o:p></span></p><p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Melengkapi wireframe
I-Drive (mobile) Riwayat kendaraan<o:p></o:p></span></p><p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Melengkapi wireframe
I-Drive (mobile) Riwayat perjalanan<o:p></o:p></span></p><p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Melengkapi wireframe
I-Drive (mobile) Reminder<o:p></o:p></span></p><p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Melengkapi wireframe
I-Drive (mobile) Task List<o:p></o:p></span></p><p class="MsoNormal" style="line-height:150%">

















<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Melengkapi
wireframe I-Drive (mobile) Pengajuan</span><br></p>', 120, 1, '2020-05-18 15:35:57', 40, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (123, NULL, '2020-04-01', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout login aplikasi
android kotlin rumah buby costumer andorid.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout register aplikasi
android kotlin rumah buby costumer android.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout home aplikasi android
kotlin rumah buby costumer android.</span><span lang="EN-US" style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout treatment bayi dan
anak aplikasi android kotlin rumah buby costumer android.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity login aplikasi
android kotlin rrumah buby costumer android untuk fungsi login
authentification.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat api login untuk fungsi login
android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity register untuk
fungsi register costumer android kotlin rumah buby android.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p>













</p><p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity main untuk
menampilkan fragment menu2 yang terdapat pada aplikasi rumah buby costumer</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>', 152, 63, '2020-05-18 15:36:02', 10, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (124, NULL, '2020-04-02', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout home fragment
aplikasi android kotlin rumah buby costumer android.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment function aplikasi
android untuk menyimpan code yang akan menampilkan layout fragment home.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi menampilkan slide
show bidan pada fragment home aplikasi android kotlin rumah buby costumer
android.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi menampilkan list
artikel pada fragment home aplikasi android kotlin rumah buby costumer android.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat Layout artikel apliaksi
andrroid kotlin rumah buby costumer android.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment artikel aplikasi
android kotlin rumah buby costumer android.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p><p>











</p><p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi get list artikel
aplikasi android kotlin rumah buby costumer android.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>', 152, 63, '2020-05-18 15:36:52', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (125, NULL, '2020-04-03', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout detail judul artikel
aplikasi android kotlin rumah buby costumer android.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout detail artikel
aplikasi android kotlin rumah buby costumer android.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat function view detail judul
artikel aplikasi android kotlin fragment artikel.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat function view detail artikel
aplikasi android kotlin fragment artikel.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat function get list artikel
aplikasi android kotlin fragment artikel.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p><p>









</p><p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fuunction get list detail
artikel aplikasi android kotlin fragment artikel.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>', 152, 66, '2020-05-18 15:37:38', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (126, NULL, '2020-02-13', '<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Nama Projek : Aplikasi
I-Drive <o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Tahapan : Analisis<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">detail :<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-family: &quot;Times New Roman&quot;, serif; font-size: 12pt;">- menambahkan tabel
biaya</span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel
driver<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel
history kendaraan<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel
history perjalanan<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel
jenis biaya<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel
jenis history<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel
jenis keperluan<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel
kendaraan<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel
pengajuan<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel
reminder<o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- menambahkan tabel
task list</span>', 120, 2, '2020-05-18 15:40:26', 40, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (127, NULL, '2020-04-06', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout aktifitas saya pada
aplikasi android kotlin rumah buby costumer android.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout chat pada aplikasi
android kotlin rumah buby costumer android.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout detail chat pada
aplikasi android kotlin rumah buby costumer android.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout profil pada aplikasi
android kotlin rumah buby costumer android.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment aktivitas saya pada
aplikasi android kotlin rumah buby costumer android.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment chat pada aplikasi
android kotlin rumah buby costumer android.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p><p>











<span style="font-size:11.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:IN;mso-fareast-language:
IN;mso-bidi-language:AR-SA"><span style="font-family: Symbol; font-size: 14px; text-indent: -24px;">·</span><span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;; text-indent: -24px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>Membuat fragment profil pada aplikasi android
kotlin rumah buby costumer android</span><br></p>', 152, 64, '2020-05-18 15:40:32', 25, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (129, NULL, '2020-02-27', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout login android kotlin android<o:p></o:p></span></p><p>

</p><p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi login untuk proses authentifikasi login agar bisa masuk ke aplikasi
android I drive.<o:p></o:p></span></p>', 118, 99, '2020-05-18 15:42:14', 50, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (130, NULL, '2020-02-28', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout login android kotlin android<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi login untuk proses authentifikasi login agar bisa masuk ke aplikasi
android I drive.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout register android kotlin untuk aplikasi I drive<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
animasi untuk perpindahan layout login ke layout register aplikasi I drive
android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout home android aplikasi I drive android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity login android kotlin untuk menyimpan fungsi login proses pada aplikasi
andrdoid I drive.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity main untuk root main fragment menu menu pada aplikasi android I drive.<o:p></o:p></span></p>', 118, 99, '2020-05-18 15:42:32', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (131, NULL, '2020-02-03', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout login android kotlin android<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi login untuk proses authentifikasi login agar bisa masuk ke aplikasi
android I drive.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout register android kotlin untuk aplikasi I drive<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
animasi untuk perpindahan layout login ke layout register aplikasi I drive
android.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout home android aplikasi I drive android.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity login android kotlin untuk menyimpan fungsi login proses pada aplikasi
andrdoid I drive.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity main untuk root main fragment menu menu pada aplikasi android I drive.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout tampilan home pada aplikasi Idrive.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fragment home pada aplikasi I drive untuk menampilkan layout I drive pada
aplikasi android kotlin I drive.<o:p></o:p></span></p><p>

















</p><p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Biaya pada aplikasi I drive kotlin
untuk menampilkan layout fragment biaya pada aplikasi I Drive.<o:p></o:p></span></p>', 118, 100, '2020-05-18 15:48:11', 10, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (132, NULL, '2020-03-03', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout login android kotlin android<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi login untuk proses authentifikasi login agar bisa masuk ke aplikasi
android I drive.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout register android kotlin untuk aplikasi I drive<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
animasi untuk perpindahan layout login ke layout register aplikasi I drive
android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout home android aplikasi I drive android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity login android kotlin untuk menyimpan fungsi login proses pada aplikasi
andrdoid I drive.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity main untuk root main fragment menu menu pada aplikasi android I drive.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout tampilan home pada aplikasi Idrive.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fragment home pada aplikasi I drive untuk menampilkan layout I drive pada
aplikasi android kotlin I drive.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Biaya pada aplikasi I drive kotlin
untuk menampilkan layout fragment biaya pada aplikasi I Drive.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout fragment biaya pada aplikasi I drive kotlin sebagai tampilan layout
fragment biaya pada aplikasi I Drive.<o:p></o:p></span></p>', 118, 100, '2020-05-18 15:48:50', 20, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (133, NULL, '2020-03-04', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update fungsi
login untuk proses authentifikasi login agar bisa masuk ke aplikasi android I
drive.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update layout
register android kotlin untuk aplikasi I drive<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update animasi
untuk perpindahan layout login ke layout register aplikasi I drive android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update layout
home android aplikasi I drive android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update activity
login android kotlin untuk menyimpan fungsi login proses pada aplikasi andrdoid
I drive.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update activity
main untuk root main fragment menu menu pada aplikasi android I drive.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update layout
tampilan home pada aplikasi Idrive.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update fragment
home pada aplikasi I drive untuk menampilkan layout I drive pada aplikasi
android kotlin I drive.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update </span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">fragment
</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Biaya pada aplikasi I drive kotlin
untuk menampilkan layout fragment biaya pada aplikasi I Drive.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update layout
fragment biaya pada aplikasi I drive kotlin sebagai tampilan layout fragment
biaya pada aplikasi I Drive.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update fragment
history kendaraan pada aplikasi I drive kotlin&nbsp;<o:p></o:p></span></p>', 118, 100, '2020-05-18 15:49:12', 25, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (157, NULL, '2020-02-02', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat menu fragment pembayaran
iuran cash di entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout menu fragment
pembayaran iuran cash di entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout activity iuran
pembayaran cash di entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout adapter iuran cash di
entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity iuran cash di
entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi tablayout fragment
cash dan fragment transfer di entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment iuran cash di
entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi simpan iuran pada
fragment pembauaran iuran cash pada aplikasi pakem android.<o:p></o:p></span></p>', 43, 236, '2020-05-19 10:18:50', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (134, NULL, '2020-03-05', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update
layout login android kotlin android<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update
fungsi login untuk proses authentifikasi login agar bisa masuk ke aplikasi
android I drive.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update
layout register android kotlin untuk aplikasi I drive<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update
animasi untuk perpindahan layout login ke layout register aplikasi I drive
android.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update
layout home android aplikasi I drive android.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update
activity login android kotlin untuk menyimpan fungsi login proses pada aplikasi
andrdoid I drive.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update
activity main untuk root main fragment menu menu pada aplikasi android I drive.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update
layout tampilan home pada aplikasi Idrive.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update
fragment home pada aplikasi I drive untuk menampilkan layout I drive pada
aplikasi android kotlin I drive.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update </span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">fragment
</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Biaya pada aplikasi I drive kotlin
untuk menampilkan layout fragment biaya pada aplikasi I Drive.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update
layout fragment biaya pada aplikasi I drive kotlin sebagai tampilan layout
fragment biaya pada aplikasi I Drive.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">update
fragment history kendaraan pada aplikasi I drive kotlin <o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout tambah biaya pada aplikasi I drive kotlin<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity tambah biaya pada aplikasi idrive kotlin<o:p></o:p></span></p><p>



























</p><p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
function spinner pada activity tambah biaya aplikasi I drive kotlin.<o:p></o:p></span></p>', 118, 100, '2020-05-18 15:51:23', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (209, NULL, '2020-03-04', '<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Nama Projek : Apotik<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Tahapan : Analisis <o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">detail :<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis aplikasi
apotik (desktop)<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis menu
klinik, sub menu daftar registrasi pasien<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menambahkan wireframe
menu klinik, sub menu daftar registrasi pasien<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis menu
klinik, sub menu daftar diagnosa dokter<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menambahkan wireframe
menu klinik, sub menu daftar diagnosa dokter<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis menu
klinik, sub menu history pasien datang<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menambahkan wireframe
menu klinik, sub menu history pasien datang<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis menu
klinik, sub menu daftar pesanan obat<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menambahkan wireframe
menu klinik, sub menu daftar pesanan obat<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis menu
klinik, sub menu kasir klinik<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menambahkan wireframe
menu klinik, sub menu kasir klinik<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis menu
klinik, sub menu daftar pembayaran asuransi<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menambahkan wireframe
menu klinik, sub menu daftar pembayaran asuransi<o:p></o:p></span></p>', 150, 1, '2020-05-29 09:24:15', 35, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (136, NULL, '2020-03-09', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout halaman atendance atau
absensi user terapis aplikasi rumah buby android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity detail treatment
activity untuk fungsi melihan detail treatment per pelanggan pada aplikasi
android kotlin rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout detail treatment
untuk tampilan detail treatment per pelanggan pada aplikasi android kotlin
rurmah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout main activity untuk
tampilan main pada aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update activity main yang berfungsi
sebagai parent fragment menu2 android kotlin rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update activity notification yang
berfungsi sebagai notifikasi untuk mengingatkan treharpist bawa terapi sudah
selesai pada aplikasi andoid rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update adapter detail treatment
untuk menyimpan list view treatment apa saja yang di ambil olah pelanggan.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout adapter detail
treatment sebagai tampilan list treatment pada aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout adapter detail
pembelian product sebagai list view pembelian product apa saja yang dibeli oleh
pelanggan.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout attendance untuk
absensi therapist pada aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fungsi attendance untuk
absesnsi therapist pada aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update ftagment attendance untuk
absensi therapist pada aplikasi anadoir rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update framgnet list item pinjaman
barang pada aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout list fragment item
pinjaman barang pada aplikasi android rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fungsi play terapist pada
adapter list treatment untuk memulai terapi ke pelanggan pada aplikasi android
rumah buby.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fungsi alarm untuk notifikasi
selesai treatment pada adapter list treatment untuk mengingatkan therapist
bahwa waktu terapi sudah habis<o:p></o:p></span></p>', 118, 101, '2020-05-18 15:52:26', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (137, NULL, '2020-04-07', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout home aplikasi idrive
android.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membetulkan fungsi topup aplikasi
android idrive pada fragment home.</span><span lang="EN-US" style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membetulkan fungsi reminder aplikasi
android idribe pada fragment home/</span><span lang="EN-US" style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update API fungsi simpan topup
aplikasi android idrive pada controller dan model API andorid iDrive</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membetulkan query untuk menampilkan
infromasi sisa saldo pada aplikasi android Idrive</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>', 118, 102, '2020-05-18 15:53:28', 75, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (138, NULL, '2020-04-08', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membetulkan halaman home</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membetulkan fungsi get informasi
saldo driver.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membetulkan fungsi simpan topup.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membetulkan fungsi simpan reminder.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membetulkan halaman biaya android.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membetulkan fungsi tambah biaya
history pengeluaran idrive.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membetulkan fungsi get history
pengeluaran menu biaya idrive.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membetulkan fungsi get history
perjalanan menu history idrive.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membetulkan fungsi tambah history
perjalanan menu history idrive.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membetulkan halaman tasklist
aplikasi idrive</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membetulkan fungsi get tasklist
aplikasi idrive</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membetulkan fungsi laporan tasklist
aplikasi idrive</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p>























</p><p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membetulkan fungsi detail laporan
tasklist apliakasi idrive</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>', 118, 102, '2020-05-19 09:44:26', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (139, NULL, '2020-03-12', '<p>Membuat halaman login layout aplikasi android Formi android, membuat function login activity login aplikasi android formi, membuat function model user untuk menyimpan user login activity, membuat function main activity profile untuk aplikasi formi android, membuat layout main activity profile android formi</p>', 111, 254, '2020-05-19 09:49:04', 50, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (140, NULL, '2020-03-13', 'Membuat function controller login api aplikasi formi, membuat function controller profile api aplikasi formi, Membuat function model query login api aplikasi formi, membuat function model profie api aplikasi formi', 111, 254, '2020-05-19 09:50:13', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (141, NULL, '2020-01-14', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout login activity pada aplikasi pakem android dan menyesuaikannya dengan
mockup.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout splash screen pada aplikasi pakem android dan menyesuaikannya dengan
mockup.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p><p>



</p><p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity login pada aplikasi pakem android dan function authentifikasi login
pada activity.<o:p></o:p></span></p>', 43, 226, '2020-05-19 09:58:13', 2, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (142, NULL, '2020-01-15', '<p class="MsoListParagraphCxSpFirst" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
activity login pada aplikasi pakem android dan function authentifikasi login
pada activity.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
activity login membuat function verifikasi input username dan password login
pada activity login.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
model user pada aplikasi pakem android untuk simpan local data sementara
apabila authentifikasi loginnya berhasil.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat api
controller login untuk authentifikasi login aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
model login untuk menyimpan query yang akan memanggil data pada database.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:57.0pt;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout menu utama pada aplikasi pakem android.<o:p></o:p></span></p>', 43, 226, '2020-05-19 09:58:27', 7, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (143, NULL, '2020-01-16', '<p class="MsoListParagraphCxSpFirst" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout android menu utama
kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout android menu
pengaduan kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang
telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout android menu tambah
pengaduan kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang
telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat adapter layout list acara
menu utama kotlin android aplikasi pakem dan menyesuaikannya dengan mocup yang
telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat adapter layout list
pengaduan kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang
telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment layout menu history
kotlin android aplikasi pakem dan menyesuaikannnya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment layout menu utama
kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat drawable add circle xml
untuk floating action button pada menu layout pengaduan aplikasi pakem dan
menyesuaikannya dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity pengaduan pada aplikasi
pakem android kotlin fungsi list pengaduan dan fungsi tambah pengaduan.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity Tambah pengaduan
pada aplikasi pakem android kotlin fungsi tambah pengaduan, fuungsi get image
from camera and gallery, fungsi spinner list item.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment history pengafuan
pada aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment history poling pada
aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:57.0pt;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment home pada aplikasi
pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>', 43, 226, '2020-05-19 09:58:44', 15, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (158, NULL, '2020-02-12', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Memperbaharui menu fragment
pembayaran iuran cash di entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Memperbaharui layout menu fragment
pembayaran iuran cash di entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Memperbaharui layout activity iuran
pembayaran cash di entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Memperbaharui layout adapter iuran
cash di entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Memperbaharui activity iuran cash di
entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Memperbaharui fungsi tablayout
fragment cash dan fragment transfer di entitas warga pada aplikasi pakem
android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Memperbaharui fragment iuran cash di
entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Memperbaharui fungsi simpan iuran
pada fragment pembauaran iuran cash pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi list adapter iuran
cash pada fragment pembayaran iuran cash pada aplikasi pakem android entitas
warga.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat adapter list iuran cash di
entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi hapus list iuran cash
pada adapter pembayaran iuran cash pada aplikasi pakem android entitas warga.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout tampilan scan QR code
pada enttias warga aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi scan QR code pada
activity Qr code entitas warga aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi simpan iuran warga
setelah QR code di cek pada entitas warga aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout fragment pembayaran
iuran transfer pada entitas warga aplikasi pakem andriod.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment iuran transfer pada
entitas warga aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi simpan data transfer
pada fragment iuran transfer pada entitas warga aplikasi pakem android.<o:p></o:p></span></p>', 43, 237, '2020-05-19 10:19:34', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (253, NULL, '2020-01-08', '<p>- halaman histori polling</p><p>- halaman history bantuan</p><p>- halaman edit profile</p><p>- export seluruh asset icon</p>', 36, 5, '2020-05-29 11:51:32', 45, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (144, NULL, '2020-01-16', '<p class="MsoListParagraphCxSpFirst" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
layout android menu utama kotlin android aplikasi pakem dan menyesuaikannya
dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"> </span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">layout android menu pengaduan kotlin
android aplikasi pakem dan menyesuaikannya dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"> </span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">layout android menu tambah pengaduan
kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"> </span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">adapter layout list acara menu utama
kotlin android aplikasi pakem dan menyesuaikannya dengan mocup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"> </span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">adapter layout list pengaduan kotlin
android aplikasi pakem dan menyesuaikannya dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"> </span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">fragment layout menu history kotlin
android aplikasi pakem dan menyesuaikannnya dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"> </span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">fragment layout menu utama kotlin
android aplikasi pakem dan menyesuaikannya dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"> </span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">drawable add circle xml untuk
floating action button pada menu layout pengaduan aplikasi pakem dan
menyesuaikannya dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"> </span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">activity pengaduan pada aplikasi
pakem android kotlin fungsi list pengaduan dan fungsi tambah pengaduan.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"> </span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">activity Tambah pengaduan pada
aplikasi pakem android kotlin fungsi tambah pengaduan, fuungsi get image from
camera and gallery, fungsi spinner list item.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"> </span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">fragment history pengafuan pada
aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"> </span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">fragment history poling pada
aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"> </span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">fragment home pada aplikasi pakem
android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
activity login pada aplikasi pakem android dan function authentifikasi login
pada activity.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
activity login membuat function verifikasi input username dan password login
pada activity login.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update model
user pada aplikasi pakem android untuk simpan local data sementara apabila
authentifikasi loginnya berhasil.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update api
controller login untuk authentifikasi login aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update model
login untuk menyimpan query yang akan memanggil data pada database.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update layout
menu utama pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update layout
login activity pada aplikasi pakem android dan menyesuaikannya dengan mockup.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update layout
splash screen pada aplikasi pakem android dan menyesuaikannya dengan mockup.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update activity
login pada aplikasi pakem android dan function authentifikasi login pada
activity.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
layout menu utama, menambahkan tampilan list berita, tampilan list kegiatan,
tampilan list pemberitahuan aplikasi pakem android kotlin.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
fragment home menu utama, menambahkan fungsi get data list berita aplikasi
pakem android kotlin.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
fragment home menu utama, menambahkan fungsi get data list pemberitahuan
aplikasi pakem android kotlin.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat api
function get data berita untuk mengirimkan data berita dari API pakem ke
aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
adapter berita pada aplikasi pakem android untuk menampilkan list berita yang
didapat dari json data API.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
adaptet kegiatan pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:57.0pt;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
adapter pemberitahuan pada aplikasi pakem&nbsp;
android.<o:p></o:p></span></p>', 43, 226, '2020-05-19 09:59:18', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (145, NULL, '2020-01-20', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout fragment history
pengaduan pada aplikasi android kotlin pakem dan menyesuaikannya dengan mockup yang
telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout fragment history
poling pada aplikasi android kotlin pakem dan menyesuaikannya dengan mockup
yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat function fragment history
pengaduan pada aplikasi android kotlin untuk menampilkan halaman history pengaduan.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat function fragment history
poling pada aplikasi android kotlin untuk menampilkan halaman history poling.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat model history poling pada
aplikasi android kotlin untuk menyimpan list data dari api aplikasi pakem.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat model history pengaduan pada
aplikasi android kotlin untuk menyimpan list data dari aplikasi pakem.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>', 43, 227, '2020-05-19 09:59:47', 30, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (146, NULL, '2020-01-21', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout fragment history
pengaduan pada aplikasi android kotlin pakem dan menyesuaikannya dengan mockup
yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout fragment history
poling pada aplikasi android kotlin pakem dan menyesuaikannya dengan mockup
yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function fragment history
pengaduan pada aplikasi android kotlin untuk menampilkan halaman history
pengaduan.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function fragment history
poling pada aplikasi android kotlin untuk menampilkan halaman history poling.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update model history poling pada aplikasi
android kotlin untuk menyimpan list data dari api aplikasi pakem.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update model history pengaduan pada
aplikasi android kotlin untuk menyimpan list data dari aplikasi pakem.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat function api simpan data
pengaduan untuk menyimpan data pengaduan ke database yang dikirim dari aplikasi
android kotlin pakem.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
layout android menu utama kotlin android aplikasi pakem dan menyesuaikannya
dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
layout android menu pengaduan kotlin android aplikasi pakem dan menyesuaikannya
dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
layout android menu tambah pengaduan kotlin android aplikasi pakem dan
menyesuaikannya dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
adapter layout list acara menu utama kotlin android aplikasi pakem dan
menyesuaikannya dengan mocup yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
adapter layout list pengaduan kotlin android aplikasi pakem dan menyesuaikannya
dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
fragment layout menu history kotlin android aplikasi pakem dan menyesuaikannnya
dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
fragment layout menu utama kotlin android aplikasi pakem dan menyesuaikannya
dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
drawable add circle xml untuk floating action button pada menu layout pengaduan
aplikasi pakem dan menyesuaikannya dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
activity pengaduan pada aplikasi pakem android kotlin fungsi list pengaduan dan
fungsi tambah pengaduan.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
activity Tambah pengaduan pada aplikasi pakem android kotlin fungsi tambah
pengaduan, fuungsi get image from camera and gallery, fungsi spinner list item.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
fragment history pengafuan pada aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
fragment history poling pada aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
fragment home pada aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>', 43, 227, '2020-05-19 10:00:12', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (147, NULL, '2020-01-22', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
layout android menu tambah pengaduan kotlin android aplikasi pakem dan
menyesuaikannya dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
adapter layout list acara menu utama kotlin android aplikasi pakem dan
menyesuaikannya dengan mocup yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
adapter layout list pengaduan kotlin android aplikasi pakem dan menyesuaikannya
dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
fragment layout menu history kotlin android aplikasi pakem dan menyesuaikannnya
dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
fragment layout menu utama kotlin android aplikasi pakem dan menyesuaikannya
dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
drawable add circle xml untuk floating action button pada menu layout pengaduan
aplikasi pakem dan menyesuaikannya dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
activity pengaduan pada aplikasi pakem android kotlin fungsi list pengaduan dan
fungsi tambah pengaduan.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
activity Tambah pengaduan pada aplikasi pakem android kotlin fungsi tambah
pengaduan, fuungsi get image from camera and gallery, fungsi spinner list item.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
fragment history pengafuan pada aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
fragment history poling pada aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
fragment home pada aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>', 43, 228, '2020-05-19 10:03:22', 60, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (148, NULL, '2020-01-23', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout halaman menu monitoring keuangan&nbsp;
pada aplikasi pakem android kotlin dan menyesuaikannya dengan mockup
yang telah di buat.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout halaman informasi nomor penting pada aplikasi pakem android kotlin dan
menyesuaikannya dengan mockup yang telah di buat.</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi date picker spinner pada menu monitoring keuangan pada aplikasi pakem
android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi back pada menu monitoring keuangan pada aplikasi pakem android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi tampilkan history pengaduan pada menu history aplikasi pakem android
kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
adapter history pengaduan untuk menyimpan dan menampilkan list history
pengaduan aplikasi pakem anroid kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi get data from api aplikasi pakem android kotlin dan meneruskanya ke
adapter history pengaduan.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
controller fungsi tampil data history pengaduan pada api pakem android.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
model fungsi tampil data history pengaduan pada api pakem android untuk
menyimpan fungsi query untuk mengambil data dari database.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi tampilkan history poling pada menu history aplikasi pakem android
kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
adapter history pengaduan untuk menyimpan dan menampilkan list history pakem
android kotlin</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi get data from api aplikasi pakem android kotlin dan meneruskannya ke
adapter history poling.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>', 43, 228, '2020-05-19 10:04:24', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (168, NULL, '2020-03-12', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat menu fragment pembayaran
iuran cash di entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout menu fragment
pembayaran iuran cash di entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout activity iuran
pembayaran cash di entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout adapter iuran cash di
entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity iuran cash di
entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi tablayout fragment
cash dan fragment transfer di entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment iuran cash di
entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi simpan iuran pada
fragment pembauaran iuran cash pada aplikasi pakem android.<o:p></o:p></span></p>', 43, 242, '2020-05-19 13:38:39', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (254, NULL, '2020-01-15', '<p>-membuat re-mockup website informasi formi dari yang sebelumnya</p><p>- membuat persentasi berupa video paparan tentang formi</p>', 125, 5, '2020-05-29 11:54:15', 10, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (255, NULL, '2020-01-16', '<p>-membuat re-mockup website informasi formi dari yang sebelumnya</p><p>- membuat persentasi paparan tentang formi</p>', 125, 5, '2020-05-29 11:55:26', 13, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (149, NULL, '2020-01-24', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
layout halaman menu monitoring keuangan&nbsp;
pada aplikasi pakem android kotlin dan menyesuaikannya dengan mockup
yang telah di buat.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update layout
halaman informasi nomor penting pada aplikasi pakem android kotlin dan
menyesuaikannya dengan mockup yang telah di buat.</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update fungsi
date picker spinner pada menu monitoring keuangan pada aplikasi pakem android
kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update fungsi
back pada menu monitoring keuangan pada aplikasi pakem android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update fungsi
tampilkan history pengaduan pada menu history aplikasi pakem android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update adapter
history pengaduan untuk menyimpan dan menampilkan list history pengaduan
aplikasi pakem anroid kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update fungsi
get data from api aplikasi pakem android kotlin dan meneruskanya ke adapter
history pengaduan.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update controller
fungsi tampil data history pengaduan pada api pakem android.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update model
fungsi tampil data history pengaduan pada api pakem android untuk menyimpan fungsi
query untuk mengambil data dari database.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update fungsi
tampilkan history poling pada menu history aplikasi pakem android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update adapter
history pengaduan untuk menyimpan dan menampilkan list history pakem android
kotlin</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update fungsi
get data from api aplikasi pakem android kotlin dan meneruskannya ke adapter
history poling.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi get informasi monitoring status pembayaran iuran bulanan pada aplikasi
pakem android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi date picker costum bulan dan tahun untuk menu monitoring informasi
pembayaran iuran bulanan android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout dialog fragment date picker bulan dan tahun untuk menu monitoring
informasi pembayaran iuran bulanan android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>', 43, 229, '2020-05-19 10:08:53', 75, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (150, NULL, '2020-01-27', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
fungsi date picker costum bulan dan tahun untuk menu monitoring informasi
pembayaran iuran bulanan android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update layout
dialog fragment date picker bulan dan tahun untuk menu monitoring informasi
pembayaran iuran bulanan android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update layout
adapter pilihan poling pada aplikasi pakem android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
layout monitoring pembayaran pada aplikasi pakem andpiroid kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
activity monitoring pembayaran pada aplikasi pakem android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
fragment profil pada aplikasi pakem android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
fragmen history pengaduan pada aplikasi pakem android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
fragment history poling pada aplikasi pakem android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update api
list adapter pilihan poling pada aplikasi pakem android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update api
monitoring pembayaran pada aplikasi pakem android kotlim.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Upadate api
authentifikasi login pada aplikasi pakem android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
layout login pada aplikasi pakem android kotlin.</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
sharereference manager user login pada aplikasi pakem android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>', 43, 229, '2020-05-19 10:09:11', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (151, NULL, '2020-05-28', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
layout android menu tambah pengaduan kotlin android aplikasi pakem dan
menyesuaikannya dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
adapter layout list acara menu utama kotlin android aplikasi pakem dan
menyesuaikannya dengan mocup yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
adapter layout list pengaduan kotlin android aplikasi pakem dan menyesuaikannya
dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
fragment layout menu history kotlin android aplikasi pakem dan menyesuaikannnya
dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
fragment layout menu utama kotlin android aplikasi pakem dan menyesuaikannya
dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
drawable add circle xml untuk floating action button pada menu layout pengaduan
aplikasi pakem dan menyesuaikannya dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
activity pengaduan pada aplikasi pakem android kotlin fungsi list pengaduan dan
fungsi tambah pengaduan.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
activity Tambah pengaduan pada aplikasi pakem android kotlin fungsi tambah
pengaduan, fuungsi get image from camera and gallery, fungsi spinner list item.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
fragment history pengafuan pada aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
fragment history poling pada aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p><p>



















</p><p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
fragment home pada aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>', 43, 230, '2020-05-19 10:10:56', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (152, NULL, '2020-05-29', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
layout android menu </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">pengantar</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity pengantar kolin untuk menampilkan layout pengantar kotlin aplikasi
pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
adapter list pengantar yang telah dibuat, berungsi untuk menampilkan list
pengantar ke activity pengantar.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi get pengantar pada activity pengantar kotlin untuk mengerima data dari
api pakem dan meneruskannya ke adapter pengantar.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
controller pengantar pada api pakem yang berfungsi mengirimkan data pengantar
ke aplikasi android pakem.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
model pengantar pada api pakem yang berfungsi untuk menyimpan query yang akan memanggil
data yang ada d database.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
controller informasi pada api pakem yang berfungsi untuk mengirimkan data
infromasi nomor penting ke aplikasi android pakem,<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
model infromasi pada api pakem yang berfungsi untuk mengambil data yang di
database dengan query yang disimpan di model informasi.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
layout informasi pakem android.<o:p></o:p></span></p>', 43, 231, '2020-05-19 10:11:48', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (153, NULL, '2020-05-30', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout android menu </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US">pengantar</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">activity pengantar kolin untuk menampilkan layout
pengantar kotlin aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">adapter list pengantar yang telah dibuat, berungsi
untuk menampilkan list pengantar ke activity pengantar.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">fungsi get pengantar pada activity pengantar kotlin
untuk mengerima data dari api pakem dan meneruskannya ke adapter pengantar.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">controller pengantar pada api pakem yang berfungsi
mengirimkan data pengantar ke aplikasi android pakem.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">model pengantar pada api pakem yang berfungsi untuk
menyimpan query yang akan memanggil data yang ada d database.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">controller informasi pada api pakem yang berfungsi
untuk mengirimkan data infromasi nomor penting ke aplikasi android pakem,<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">model infromasi pada api pakem yang berfungsi untuk
mengambil data yang di database dengan query yang disimpan di model informasi.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat function call nomor penting
pada adapter nomor penting pada aplikasi pakem android kotlin</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat function pie chart pada
adapter history poling pada aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>', 43, 232, '2020-05-19 10:12:39', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (154, NULL, '2020-05-31', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout android menu </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US">pengantar</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">activity pengantar kolin untuk menampilkan layout
pengantar kotlin aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">adapter list pengantar yang telah dibuat, berungsi
untuk menampilkan list pengantar ke activity pengantar.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">fungsi get pengantar pada activity pengantar kotlin
untuk mengerima data dari api pakem dan meneruskannya ke adapter pengantar.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">controller pengantar pada api pakem yang berfungsi
mengirimkan data pengantar ke aplikasi android pakem.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">model pengantar pada api pakem yang berfungsi untuk
menyimpan query yang akan memanggil data yang ada d database.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">controller informasi pada api pakem yang berfungsi
untuk mengirimkan data infromasi nomor penting ke aplikasi android pakem,<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">model infromasi pada api pakem yang berfungsi untuk
mengambil data yang di database dengan query yang disimpan di model informasi.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function call nomor penting
pada adapter nomor penting pada aplikasi pakem android kotlin</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function pie chart pada
adapter history poling pada aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
drawable add circle xml untuk floating action button pada menu layout pengaduan
aplikasi pakem dan menyesuaikannya dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
activity pengaduan pada aplikasi pakem android kotlin fungsi list pengaduan dan
fungsi tambah pengaduan.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
activity Tambah pengaduan pada aplikasi pakem android kotlin fungsi tambah
pengaduan, fuungsi get image from camera and gallery, fungsi spinner list item.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
fragment history pengafuan pada aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
fragment history poling pada aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
fragment home pada aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>', 43, 233, '2020-05-19 10:16:54', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (155, NULL, '2020-04-07', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout android menu </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US">pengantar</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">activity pengantar kolin untuk menampilkan layout
pengantar kotlin aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">adapter list pengantar yang telah dibuat, berungsi
untuk menampilkan list pengantar ke activity pengantar.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">fungsi get pengantar pada activity pengantar kotlin
untuk mengerima data dari api pakem dan meneruskannya ke adapter pengantar.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">controller pengantar pada api pakem yang berfungsi
mengirimkan data pengantar ke aplikasi android pakem.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">model pengantar pada api pakem yang berfungsi untuk
menyimpan query yang akan memanggil data yang ada d database.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">controller informasi pada api pakem yang berfungsi
untuk mengirimkan data infromasi nomor penting ke aplikasi android pakem,<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout android menu </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US">pengantar</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">activity pengantar kolin untuk menampilkan layout
pengantar kotlin aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">adapter list pengantar yang telah dibuat, berungsi
untuk menampilkan list pengantar ke activity pengantar.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">fungsi get pengantar pada activity pengantar kotlin
untuk mengerima data dari api pakem dan meneruskannya ke adapter pengantar.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">controller pengantar pada api pakem yang berfungsi
mengirimkan data pengantar ke aplikasi android pakem.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">model pengantar pada api pakem yang berfungsi untuk
menyimpan query yang akan memanggil data yang ada d database.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">controller informasi pada api pakem yang berfungsi
untuk mengirimkan data infromasi nomor penting ke aplikasi android pakem,<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">model infromasi pada api pakem yang berfungsi untuk
mengambil data yang di database dengan query yang disimpan di model informasi.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function call nomor penting
pada adapter nomor penting pada aplikasi pakem android kotlin</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function pie chart pada
adapter history poling pada aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">dan
menyesuaikannya dengan mockup yang telah di buat.</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
layout halaman informasi nomor penting pada aplikasi pakem android kotlin dan
menyesuaikannya dengan mockup yang telah di buat.</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
fungsi date picker spinner pada menu monitoring keuangan pada aplikasi pakem
android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
fungsi back pada menu monitoring keuangan pada aplikasi pakem android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
fungsi tampilkan history pengaduan pada menu history aplikasi pakem android
kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
adapter history pengaduan untuk menyimpan dan menampilkan list history
pengaduan aplikasi pakem anroid kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
fungsi get data from api aplikasi pakem android kotlin dan meneruskanya ke
adapter history pengaduan.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
controller fungsi tampil data history pengaduan pada api pakem android.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update model
fungsi tampil data history pengaduan pada api pakem android untuk menyimpan
fungsi query untuk mengambil data dari database.</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
fungsi tampilkan history poling pada menu history aplikasi pakem android
kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
adapter history pengaduan untuk menyimpan dan menampilkan list history pakem
android kotlin</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
fungsi get data from api aplikasi pakem android kotlin dan meneruskannya ke
adapter history poling.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>', 43, 234, '2020-05-19 10:17:45', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (156, NULL, '2020-04-10', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout android menu </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US">pengantar</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">activity pengantar kolin untuk menampilkan layout
pengantar kotlin aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">adapter list pengantar yang telah dibuat, berungsi
untuk menampilkan list pengantar ke activity pengantar.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">fungsi get pengantar pada activity pengantar kotlin
untuk mengerima data dari api pakem dan meneruskannya ke adapter pengantar.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">controller pengantar pada api pakem yang berfungsi
mengirimkan data pengantar ke aplikasi android pakem.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">model pengantar pada api pakem yang berfungsi untuk
menyimpan query yang akan memanggil data yang ada d database.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">controller informasi pada api pakem yang berfungsi
untuk mengirimkan data infromasi nomor penting ke aplikasi android pakem,<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout android menu </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US">pengantar</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;">
kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">activity pengantar kolin untuk menampilkan layout
pengantar kotlin aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">adapter list pengantar yang telah dibuat, berungsi
untuk menampilkan list pengantar ke activity pengantar.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">fungsi get pengantar pada activity pengantar kotlin
untuk mengerima data dari api pakem dan meneruskannya ke adapter pengantar.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">controller pengantar pada api pakem yang berfungsi
mengirimkan data pengantar ke aplikasi android pakem.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">model pengantar pada api pakem yang berfungsi untuk
menyimpan query yang akan memanggil data yang ada d database.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">controller informasi pada api pakem yang berfungsi
untuk mengirimkan data infromasi nomor penting ke aplikasi android pakem,<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update </span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">model infromasi pada api pakem yang berfungsi untuk
mengambil data yang di database dengan query yang disimpan di model informasi.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function call nomor penting
pada adapter nomor penting pada aplikasi pakem android kotlin</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function pie chart pada
adapter history poling pada aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">dan
menyesuaikannya dengan mockup yang telah di buat.</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
layout halaman informasi nomor penting pada aplikasi pakem android kotlin dan
menyesuaikannya dengan mockup yang telah di buat.</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
fungsi date picker spinner pada menu monitoring keuangan pada aplikasi pakem
android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
fungsi back pada menu monitoring keuangan pada aplikasi pakem android kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
fungsi tampilkan history pengaduan pada menu history aplikasi pakem android
kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
adapter history pengaduan untuk menyimpan dan menampilkan list history
pengaduan aplikasi pakem anroid kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
fungsi get data from api aplikasi pakem android kotlin dan meneruskanya ke
adapter history pengaduan.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
controller fungsi tampil data history pengaduan pada api pakem android.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update model
fungsi tampil data history pengaduan pada api pakem android untuk menyimpan
fungsi query untuk mengambil data dari database.</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
fungsi tampilkan history poling pada menu history aplikasi pakem android
kotlin.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
adapter history pengaduan untuk menyimpan dan menampilkan list history pakem
android kotlin</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
fungsi get data from api aplikasi pakem android kotlin dan meneruskannya ke
adapter history poling.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>', 43, 235, '2020-05-19 10:18:16', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (256, NULL, '2020-01-17', '<p>-membuat re-mockup website informasi formi dari yang sebelumnya</p><p>- membuat persentasi paparan tentang formi</p>', 125, 5, '2020-05-29 11:55:45', 20, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (159, NULL, '2020-01-02', '<p>- membuat wireframe user masyarakat halaman login</p><p>- membuat wireframe user masyarakat halaman awal home</p><p>- membuat wireframe user masyarakat halaman home belanja bahan masak</p><p>- membuat wireframe user masyarakat halaman home belanja alat rumah tangga</p><p>- membuat wireframe user masyarakat halaman home belanja dapur input pesanan</p><p>- membuat wireframe user masyarakat halaman home pengaduan</p><p>- membuat wireframe user masyarakat halaman home tambah pengaduan</p><p>- membuat wireframe user masyarakat halaman home polling</p><p>- membuat wireframe user masyarakat halaman home bantuan</p><p>- membuat wireframe user masyarakat halaman home bantuan tambah permohonan</p><p>- membuat wireframe user masyarakat halaman home duty officer (pejabat komplek)</p><p>- membuat wireframe user masyarakat halaman home duty officer (security)</p><p>- membuat wireframe user masyarakat halaman home monitoring</p><p>- membuat wireframe user masyarakat halaman home pengantar</p><p>- membuat wireframe user masyarakat halaman home tambah pengantar</p><p>- membuat wireframe user masyarakat halaman home informasi</p><p>- membuat wireframe user masyarakat halaman history belanja dapur kondisi a</p><p>- membuat wireframe user masyarakat halaman history belanja dapur kondisi b</p><p>- membuat wireframe user masyarakat halaman history pengaduan</p><p>- membuat wireframe user masyarakat halaman history polling</p><p>- membuat wireframe user masyarakat halaman history polling detail</p><p>- membuat wireframe user masyarakat halaman history bantuan</p><p>- membuat wireframe user masyarakat halaman profil</p>', 35, 1, '2020-05-19 11:09:28', 90, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (160, NULL, '2020-01-02', '<p>-Membuat database</p><p>-Setting privilege</p><p>-Membuat Sequence ID untuk Setting Auto Increment</p>', 35, 2, '2020-05-19 11:18:28', 90, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (161, NULL, '2020-01-02', '<div>- update nominal bayar debitur salah input</div><div>- hapus data input bayar di tr_recoveries_asuransi dan tr_recoveries_bank yang salah input</div>', 27, 1, '2020-05-19 11:21:59', 80, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (162, NULL, '2020-02-13', '<p class="MsoListParagraphCxSpFirst" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l1 level1 lfo2"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Memperbaharui fragment iuran cash di
entitas warga pada aplikasi pakem android.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Memperbaharui fungsi simpan iuran
pada fragment pembauaran iuran cash pada aplikasi pakem android.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi list adapter iuran
cash pada fragment pembayaran iuran cash pada aplikasi pakem android entitas
warga.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat adapter list iuran cash di
entitas warga pada aplikasi pakem android.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi hapus list iuran cash
pada adapter pembayaran iuran cash pada aplikasi pakem android entitas warga.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout tampilan scan QR code
pada enttias warga aplikasi pakem android.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi scan QR code pada
activity Qr code entitas warga aplikasi pakem android.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi simpan iuran warga
setelah QR code di cek pada entitas warga aplikasi pakem android.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout fragment pembayaran
iuran transfer pada entitas warga aplikasi pakem andriod.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment iuran transfer pada
entitas warga aplikasi pakem android.<o:p></o:p></span></p><p>



















</p><p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi simpan data transfer
pada fragment iuran transfer pada entitas warga aplikasi pakem android.<o:p></o:p></span></p>', 43, 238, '2020-05-19 11:47:30', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (163, NULL, '2020-01-03', '<div>- membuat activity diagram alur register user untuk aktor sekretaris</div><div>- membuat activity diagram alur iuran warga untuk aktor sekretaris</div><div>- membuat activity diagram alur kelola informasi untuk aktor sekretaris</div><div>- membuat activity diagram alur pengaduan untuk aktor sekretaris</div><div>- membuat activity diagram alur bantuan untuk aktor sekretaris</div><div>- membuat activity diagram alur polling untuk aktor sekretaris</div><div>- membuat activity diagram alurpatroli untuk aktor sekretaris</div>', 35, 3, '2020-05-19 13:20:43', 40, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (164, NULL, '2020-01-03', '- hapus data input bayar di tr_recoveries_asuransi dan tr_recoveries_bank yang salah input', 27, 2, '2020-05-19 13:25:09', 90, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (165, NULL, '2020-03-10', '<p class="MsoListParagraphCxSpFirst" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout android menu utama
kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout android menu
pengaduan kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang
telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout android menu tambah
pengaduan kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang
telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat adapter layout list acara
menu utama kotlin android aplikasi pakem dan menyesuaikannya dengan mocup yang
telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat adapter layout list pengaduan
kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment layout menu history
kotlin android aplikasi pakem dan menyesuaikannnya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment layout menu utama
kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat drawable add circle xml
untuk floating action button pada menu layout pengaduan aplikasi pakem dan
menyesuaikannya dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity pengaduan pada
aplikasi pakem android kotlin fungsi list pengaduan dan fungsi tambah
pengaduan.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity Tambah pengaduan
pada aplikasi pakem android kotlin fungsi tambah pengaduan, fuungsi get image
from camera and gallery, fungsi spinner list item.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment history pengafuan
pada aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment history poling pada
aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:57.0pt;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment home pada aplikasi
pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>', 43, 239, '2020-05-19 13:37:22', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (166, NULL, '2020-03-11', '<p class="MsoListParagraphCxSpFirst" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout android menu utama
kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout android menu
pengaduan kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang
telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout android menu tambah
pengaduan kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang
telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat adapter layout list acara
menu utama kotlin android aplikasi pakem dan menyesuaikannya dengan mocup yang
telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat adapter layout list pengaduan
kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment layout menu history
kotlin android aplikasi pakem dan menyesuaikannnya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment layout menu utama
kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat drawable add circle xml
untuk floating action button pada menu layout pengaduan aplikasi pakem dan
menyesuaikannya dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity pengaduan pada
aplikasi pakem android kotlin fungsi list pengaduan dan fungsi tambah
pengaduan.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity Tambah pengaduan
pada aplikasi pakem android kotlin fungsi tambah pengaduan, fuungsi get image
from camera and gallery, fungsi spinner list item.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment history pengafuan
pada aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment history poling pada
aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:57.0pt;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment home pada aplikasi
pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>', 43, 240, '2020-05-19 13:37:43', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (180, NULL, '2020-01-23', '<div>- membuat database baru mui semuatabel</div><div>- maintenance perbaikan database yang di hack</div><div>- setting privilege untuk database baru dengan setting user disesuaikan dengan config aplikasi</div><div>- execute database mui dan restore record data ke host baru</div><div><div>- analisis kebutuhan SPK</div><div>- analisis alur data transaksi debitur tiap SPK</div><div>- analisis kondisi data debitur pada user level cabang asuransi</div></div>', 156, 2, '2020-05-22 10:51:35', 90, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (167, NULL, '2020-03-12', '<p class="MsoListParagraphCxSpFirst" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout android menu utama
kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout android menu
pengaduan kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang
telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout android menu tambah
pengaduan kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang
telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat adapter layout list acara
menu utama kotlin android aplikasi pakem dan menyesuaikannya dengan mocup yang
telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat adapter layout list pengaduan
kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment layout menu history
kotlin android aplikasi pakem dan menyesuaikannnya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment layout menu utama
kotlin android aplikasi pakem dan menyesuaikannya dengan mockup yang telah
dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat drawable add circle xml
untuk floating action button pada menu layout pengaduan aplikasi pakem dan
menyesuaikannya dengan mockup yang telah dibuat.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity pengaduan pada
aplikasi pakem android kotlin fungsi list pengaduan dan fungsi tambah
pengaduan.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity Tambah pengaduan
pada aplikasi pakem android kotlin fungsi tambah pengaduan, fuungsi get image
from camera and gallery, fungsi spinner list item.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment history pengafuan
pada aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:57.0pt;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment history poling pada
aplikasi pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:57.0pt;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment home pada aplikasi
pakem android kotlin.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>', 43, 241, '2020-05-19 13:38:07', 90, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (169, NULL, '2020-03-13', '<p class="MsoListParagraphCxSpFirst" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat menu fragment pembayaran
iuran cash di entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout menu fragment
pembayaran iuran cash di entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout activity iuran
pembayaran cash di entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout adapter iuran cash di
entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity iuran cash di
entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi tablayout fragment
cash dan fragment transfer di entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:.75in;mso-add-space:
auto;text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment iuran cash di
entitas warga pada aplikasi pakem android.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:.75in;mso-add-space:auto;
text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi simpan iuran pada
fragment pembauaran iuran cash pada aplikasi pakem android.<o:p></o:p></span></p>', 43, 243, '2020-05-19 13:39:00', 98, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (170, NULL, '2020-01-07', '<ul><li>membuat wireframe halaman login</li><li>membuat wireframe halaman dashboard</li><li>membuat wireframe halaman master level</li><li>membuat wireframe halaman master jabatan</li><li>membuat wireframe halaman master pegawai</li><li>membuat wireframe halaman master user</li></ul>', 2, 1, '2020-05-19 13:42:02', 45, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (172, NULL, '2020-01-10', '<div>- analisis alur data laporan keuangan per PIC</div><div>- analisis relasi data antara bagian, anggota, karyawan dan posisi untuk filter PIC keuangan subrogasi</div><div><br></div>', 27, 2, '2020-05-19 13:52:50', 92, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (173, NULL, '2020-01-16', '<div>- analisis sistem dan alur peminjaman</div><div>- analisis sistem dan alur peyiangan</div><div>- analisis sistem dan alur pemusnahan</div><div>- analisis sistem dan alur pelaporan</div>', 2, 2, '2020-05-19 14:05:12', 75, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (174, NULL, '2020-01-16', '<ul><li>- membuat wireframe admin backend halaman peminjaman</li><li>- membuat wireframe admin backend halaman tambah peminjaman</li><li>- membuat wireframe admin backend halaman&nbsp; penyiangan</li><li>- membuat wireframe admin backend halaman&nbsp; pemusnahan</li><li>- membuat wireframe admin backend halaman pelaporan</li></ul>', 2, 1, '2020-05-19 14:08:38', 75, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (171, NULL, '2020-01-10', '<ul><li>- membuat wireframe halaman master kode masalah</li><li>- membuat wireframe halaman master jenis berkas</li><li>- membuat wireframe halaman master sarana penyimpanan</li><li>- membuat wireframe halaman master dokumen unit</li><li>- membuat wireframe halaman master gudang arsip</li><li>- membuat wireframe halaman master lemari berkas</li><li>- membuat wireframe halaman master rak arsip</li><li>- membuat wireframe halaman pengarsipan</li></ul><div>- membuat wireframe halaman detail pengarsipan</div><div>- membuat wireframe halaman tambah pengarsipan</div><div><br></div>', 2, 1, '2020-05-19 14:08:47', 70, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (175, NULL, '2020-01-17', '<div>- membuat wireframe halaman home</div><div>- membuat wireframe halaman home informasi</div><div>- membuat wireframe halaman home keunggulan</div><div>- membuat wireframe halaman home ketentuan</div><div>- membuat wireframe halaman home kontak</div><div>- membuat wireframe halaman simulasi kontak</div><div>- membuat wireframe halaman simulasi otp</div><div>- membuat wireframe halaman simulasi data pribadi</div><div>- membuat wireframe halaman simulasi kalkulator</div><div>- membuat wireframe halaman simulasi perhitungan</div><div>- membuat wireframe halaman simulasi rekomendasi</div><div>- membuat wireframe halaman kebijakan</div>', 27, 1, '2020-05-19 14:10:07', 85, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (176, NULL, '2020-01-22', '<ul><li>membuat wireframe android halaman login</li><li>membuat wireframe android halaman awal</li><li>membuat wireframe android halaman pencarian</li><li>membuat wireframe android halaman peminjaman</li><li>membuat wireframe android halaman approval</li></ul>', 161, 1, '2020-05-22 10:32:55', 70, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (177, NULL, '2020-01-23', '<ul><li>membuat wireframe halaman home</li><li>membuat wireframe halaman home informasi</li><li>membuat wireframe halaman home keunggulan</li><li>membuat wireframe halaman home syarat ketentuan</li><li>membuat wireframe halaman home kontak</li><li>membuat wireframe halaman simulasi kontak</li><li>membuat wireframe halaman simulasi otp</li><li>membuat wireframe halaman simulasi data pribadi</li><li>membuat wireframe halaman&nbsp; simulasi kalkulator</li><li>membuat wireframe halaman&nbsp; simulasi perhitungan</li><li>membuat wireframe halaman simulasi rekomendasi</li><li>membuat wireframe halaman kebijakan</li></ul>', 16, 1, '2020-05-22 10:47:56', 75, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (179, NULL, '2020-01-23', '<div>- membuat database baru mui semuatabel</div><div>- maintenance perbaikan database yang di hack</div><div>- setting privilege untuk database baru dengan setting user disesuaikan dengan config aplikasi</div><div>- execute database mui dan restore record data ke host baru</div><div><div>- analisis kebutuhan SPK</div><div>- analisis alur data transaksi debitur tiap SPK</div><div>- analisis kondisi data debitur pada user level cabang asuransi</div></div>', 78, 2, '2020-05-22 10:51:58', 90, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (181, NULL, '2020-01-27', '<div>- perbaiki alur logic pada menu polling</div><div>- menambahkan field tanggal bayar pada tabel iuran rutin</div>', 35, 2, '2020-05-22 10:53:27', 92, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (182, NULL, '2020-01-27', '<div>- setting configurasai aplikasi dan database&nbsp;</div><div>- analisis perhitungan slip gaji</div><div>- perbaikan slip gaji dan data tabel penggajian</div>', 146, 2, '2020-05-22 10:55:25', 80, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (183, NULL, '2020-01-27', '<ul><li>- setting configurasai aplikasi dan database&nbsp;</li><li>- install database dari local ke server</li></ul>', 6, 2, '2020-05-22 11:00:33', 90, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (189, NULL, '2020-04-16', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout welcome screen activity 1 untuk halaman selamat dating umkm mobile
bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout welcome screen activity 2 untuk halaman selamat dating umkm mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout welcome screen activiry 3 untuk halaman selamat dating umkm mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout login activity untuk proses login ke aplikasi umkm mobile bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout register activity untuk prroses register ke aplikasi umkm mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity login untuk menyimpan function login aplikasi umkm mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity register untuk menyimpan fungsi register user aplikasi mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity welcome screen 1 untuk menampilkan halaman welcome 1 aplikasi umkm
mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity welcome screen 2 untuk menampilkan halaman welcome 2 aplikasi umkm
modul bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity welcome screen 3 untuk menampilkan halaman welcome 3 aplikasi umkm
bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat&nbsp; Rest FUll api untuk proses data pada apliaksi
mobile bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi login RestFull Api pada backend aplikasi mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi register RestFull Api pada backend aplikasi mobinle bajga<o:p></o:p></span></p><p>

























</p><p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi informasi dashboard home RestFull Api pada backend aplikasi mobile
bagja.<o:p></o:p></span></p>', 94, 133, '2020-05-28 16:43:34', 100, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (190, NULL, '2020-03-05', '<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing scene Peta Dakwah<o:p></o:p></span></p><p class="MsoNormal">

<span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- scene Media Dakwah<o:p></o:p></span></p><p class="MsoNormal">

<span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing scene Panduan Dakwah<o:p></o:p></span></p><p class="MsoNormal">

<span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing scene Khutbah<o:p></o:p></span></p>', 65, 8, '2020-05-29 09:26:24', 35, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (257, NULL, '2020-01-24', '<p>-&nbsp; membuat mockup arsip bjb android</p><p>- halaman spash</p><p>- halaman login</p><p>- halaman pencarian</p><p><br></p>', 162, 5, '2020-05-29 11:58:04', 20, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (192, NULL, '2020-04-17', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat layout
home dashboard aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout menu transaksi aplikasi mobile bagja.</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout item produk available di transaksi aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity home dashboard aplikasi mobile bagja.</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
function get informasi menu home dashboard dari backend api dan di tampilkan di
layout menu home aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi adapter list item produk pada aplikasi mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat data
class model produk pada aplikasi mobile bagja</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat data
class model user pada aplikasi mobile bagja.</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat data
class model transaksi pada aplikasi mobile bagja.</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
MainActivity untuk menamping fragment halaman menu aplikasi mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
framgnet home dashboard pada aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fragment transaksi pada aplikasi mobile bagaja.</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi post pilihan barang pada aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p>

























</p><p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuag api
RestFull untuk fungsi post produk pada aplikasi mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>', 94, 135, '2020-05-28 16:45:52', 25, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (193, NULL, '2020-04-20', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> layout home dashboard aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"> <span lang="EN-US">layout menu transaksi aplikasi mobile bagja.</span></span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"> <span lang="EN-US">layout item produk available di transaksi aplikasi
mobile bagja.</span></span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"> <span lang="EN-US">activity home dashboard aplikasi mobile bagja.</span></span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"> <span lang="EN-US">function get informasi menu home dashboard dari
backend api dan di tampilkan di layout menu home aplikasi mobile bagja.</span></span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"> <span lang="EN-US">fungsi adapter list item produk pada aplikasi mobile
bagja</span></span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"> <span lang="EN-US">data class model produk pada aplikasi mobile bagja</span></span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"> <span lang="EN-US">data class model user pada aplikasi mobile bagja.</span></span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"> <span lang="EN-US">data class model transaksi pada aplikasi mobile bagja.</span></span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"> <span lang="EN-US">MainActivity untuk menamping fragment halaman menu
aplikasi mobile bagja</span></span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"> <span lang="EN-US">framgnet home dashboard pada aplikasi mobile bagja.</span></span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"> <span lang="EN-US">fragment transaksi pada aplikasi mobile bagaja.</span></span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"> <span lang="EN-US">fungsi post pilihan barang pada aplikasi mobile bagja.</span></span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"> <span lang="EN-US">api RestFull untuk fungsi post produk pada aplikasi
mobile bagja</span></span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout detail transaksi pada
aplikai umkm bagja.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout bottom view pada aplikasi
bagja umkm/<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment bottom shet view
menu pada aplikasi bagja umkm<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity detail transaksi
pada aplikasi umkm bagja.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungs get list data
transaksi pada activity detail transaksi aplikasi bagja umkm.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat api RestFull untuk
mengirimkan list data transaksi.<o:p></o:p></span></p>', 94, 135, '2020-05-28 16:46:13', 45, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (194, NULL, '2020-04-21', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout detail transaksi pada
aplikai umkm bagja.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout bottom view pada
aplikasi bagja umkm/<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fragment bottom shet view
menu pada aplikasi bagja umkm<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update activity detail transaksi
pada aplikasi umkm bagja.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fungs get list data transaksi
pada activity detail transaksi aplikasi bagja umkm.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update api RestFull untuk
mengirimkan list data transaksi.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fungsi transaksi pada
aplikasi umkm bagja.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi print transaksi pada
aplikasi umkm bagja.<o:p></o:p></span></p>', 94, 135, '2020-05-28 16:46:31', 70, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (195, NULL, '2020-04-21', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout detail transaksi pada aplikasi
umkm bagja<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fungsi bottom view fragment
pada aplikasi umkm bagja untuk menampilkan list pembeliaan produk aplikasi umkm
bagja<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Upadte fungsi cetai print termal
pada aplikasi umkm bagja<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fungsi cek permisson
bluetooth untuk cetak print thermal pada aplikasi umkm bagja.<o:p></o:p></span></p>', 94, 135, '2020-05-28 16:46:44', 80, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (196, NULL, '2020-04-22', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> data class model produk pada aplikasi mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> data class model user pada aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US"> <span lang="EN-US">data class model transaksi pada aplikasi mobile bagja.</span></span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> MainActivity untuk menamping fragment halaman menu
aplikasi mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> framgnet home dashboard pada aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> fragment transaksi pada aplikasi mobile bagaja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> fungsi post pilihan barang pada aplikasi mobile
bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> api RestFull untuk fungsi post produk pada aplikasi
mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;">.<o:p></o:p></span></p>', 94, 136, '2020-05-28 16:47:43', 50, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (212, NULL, '2020-03-09', '<p class="MsoListParagraphCxSpFirst" style="margin-left:18.0pt;mso-add-space:
auto;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">-<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-size:12.0pt;
line-height:107%;font-family:&quot;Times New Roman&quot;,serif">Editing Aset Restoran,
Kosmetik Halal<o:p></o:p></span></p><p><p class="MsoListParagraphCxSpMiddle" style="margin-left:18.0pt;mso-add-space:
auto;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">-<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-size:12.0pt;
line-height:107%;font-family:&quot;Times New Roman&quot;,serif">Membuat scene Halal<o:p></o:p></span></p><p><p class="MsoListParagraphCxSpMiddle" style="margin-left:18.0pt;mso-add-space:
auto;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">-<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-size:12.0pt;
line-height:107%;font-family:&quot;Times New Roman&quot;,serif">Editing asset Fatwa<o:p></o:p></span></p><p><p class="MsoListParagraphCxSpMiddle" style="margin-left:18.0pt;mso-add-space:
auto;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">-<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-size:12.0pt;
line-height:107%;font-family:&quot;Times New Roman&quot;,serif">Membuat scene Fatwa<o:p></o:p></span></p><p><p class="MsoListParagraphCxSpMiddle" style="margin-left:18.0pt;mso-add-space:
auto;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">-<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-size:12.0pt;
line-height:107%;font-family:&quot;Times New Roman&quot;,serif">Editing scene Kalender<o:p></o:p></span></p><p><p class="MsoListParagraphCxSpLast" style="margin-left:18.0pt;mso-add-space:auto;
text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">-<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-size:12.0pt;
line-height:107%;font-family:&quot;Times New Roman&quot;,serif">Membuat scene Kalender<o:p></o:p></span></p></p></p></p></p></p>', 65, 8, '2020-05-29 09:32:18', 50, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (237, NULL, '2020-03-18', '<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing scene fitur PAKEM<o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing scene fitur Kelola database
pemukiman<o:p></o:p></span></p>', 37, 8, '2020-05-29 09:42:06', 20, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (197, NULL, '2020-04-24', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> data class model produk pada aplikasi mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> data class model user pada aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> data class model transaksi pada aplikasi mobile
bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> MainActivity untuk menamping fragment halaman menu
aplikasi mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> framgnet home dashboard pada aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> fragment transaksi pada aplikasi mobile bagaja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> fungsi post pilihan barang pada aplikasi mobile
bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> api RestFull untuk fungsi post produk pada aplikasi
mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;">.<o:p></o:p></span></p>', 94, 136, '2020-05-28 16:48:10', 70, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (198, NULL, '2020-05-01', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fungsi topup saldo driver
pada aplikasi mobile i-drive.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fungsi acc pengajuan aplikasi
i-drive web<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fungsi tambah history
perjalanan pada aplikasi mobile i-drive.<o:p></o:p></span></p><p>





</p><p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fungsi tambah biaya pada
aplikasi mobile i-drive.<o:p></o:p></span></p>', 94, 276, '2020-05-28 16:52:15', 40, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (208, NULL, '2020-05-07', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout fragment home pada
aplikasi umkm bagja mobile.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout activity detail
transaksi pembayaran pada aplikasi android umkm bagja.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function activity detail
tramsaksi pembauaran pada aplikasi android umkm bagja.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout resport fragment pada
aplikasi android umkm bagja.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>', 94, 277, '2020-05-29 09:22:11', 47, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (199, NULL, '2020-01-27', '<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Nama Projek : Aplikasi
Pesantren<o:p></o:p></span></p><p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Tahapan : analisis<o:p></o:p></span></p><p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Detail :<o:p></o:p></span></p><p>





<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">-merancang dan membuat struktur
database untuk sistem aplikasi pesantren sesuai dengan wireframe yang telah dibuat sebelumnya</span><br></p>', 131, 2, '2020-05-29 09:13:22', 50, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (200, NULL, '2020-01-28', '<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Nama Projek : Aplikasi
Pesantren<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Tahapan : Analisis<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Detail :<o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- menganalisis
wireframe aplikasi pesantren, kemudian merancang dan membuat struktur database untuk sistem
aplikasi pesantren (28 tables)</span>', 131, 2, '2020-05-29 09:14:38', 80, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (201, NULL, '2020-01-28', '<p><p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Nama Projek : Aplikasi
Apotik<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Tahapan : Analisis<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Detail :<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- menginstall aplikasi
apotik (desktop)<o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- setting database
aplikasi apotik</span></p><p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- mempelajari aplikasi
apotik, sebagai admin. menginput data sesuai alur aplikasi.<o:p></o:p></span></p><p><span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">

<span style="font-size: 12pt; line-height: 107%;">- membuat wireframe
aplikasi apotik berbasis web.</span><br></span></p><p><span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA"><br></span><br></p>', 150, 1, '2020-05-29 09:17:11', 10, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (202, NULL, '2020-01-29', '<p><p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Nama Projek : Aplikasi
Apotik<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Tahapan : Analisis<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Detail :<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- mempelajari aplikasi
apotik, sebagai admin. menginput data sesuai alur aplikasi, mulai dari
menginputkan inventaris obat, data SDM (supplier, sales, dokter), pasien baru,
pelanggan dan lainnya.</span></p><p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA"><span style="font-size: 12pt; color: rgb(33, 37, 41); font-family: &quot;Times New Roman&quot;, serif;">- mempelajari aplikasi
apotik, sebagai admin. menginput data sesuai alur aplikasi, mulai dari
menginputkan Master Data : inventaris obat, data SDM (supplier, sales, dokter),
pasien baru, pelanggan.Persediaan, Transaksi Pembelian dan penjualan. Bagian
Klinik dan Kasir.</span></span></p><p><span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA"></span></p><p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Mempelajari FIFO,
LIFO dan Coa.&nbsp;<o:p></o:p></span></p><p><span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- melanjutkan membuat
wireframe aplikasi apotik berbasis web sesuai alur pada aplikasi desktop.</span></p>', 150, 1, '2020-05-29 09:19:09', 30, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (203, NULL, '2020-05-19', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout welcome screen activity 1 untuk halaman selamat dating umkm mobile
bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout welcome screen activity 2 untuk halaman selamat dating umkm mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout welcome screen activiry 3 untuk halaman selamat dating umkm mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat layout
login activity untuk proses login ke aplikasi umkm mobile bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout register activity untuk prroses register ke aplikasi umkm mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity login untuk menyimpan function login aplikasi umkm mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity register untuk menyimpan fungsi register user aplikasi mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity welcome screen 1 untuk menampilkan halaman welcome 1 aplikasi umkm
mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity welcome screen 2 untuk menampilkan halaman welcome 2 aplikasi umkm
modul bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity welcome screen 3 untuk menampilkan halaman welcome 3 aplikasi umkm
bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat&nbsp; Rest FUll api untuk proses data pada apliaksi
mobile bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi login RestFull Api pada backend aplikasi mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi register RestFull Api pada backend aplikasi mobinle bajga<o:p></o:p></span></p><p>

























</p><p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi informasi dashboard home RestFull Api pada backend aplikasi mobile
bagja.<o:p></o:p></span></p>', 94, 277, '2020-05-29 09:20:57', 40, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (204, NULL, '2020-05-15', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">&nbsp; Rest FUll api
untuk proses data pada apliaksi mobile bagja.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">&nbsp; fungsi login
RestFull Api pada backend aplikasi mobile bagja<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">&nbsp; fungsi
register RestFull Api pada backend aplikasi mobinle bajga<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US">&nbsp; fungsi
informasi dashboard home RestFull Api pada backend aplikasi mobile bagja.<o:p></o:p></span></p>', 94, 277, '2020-05-29 09:21:13', 42, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (205, NULL, '2020-05-05', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update masking money number format
pada aplikasi android umkm bagja mobile.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Upadte masking money number format pembayaran
transaksi aplikasi andorid bagja mobile.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update masking money number format
tambah produk bagja aplikasi android mobile.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>', 94, 277, '2020-05-29 09:21:26', 43, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (206, NULL, '2020-02-14', '<p><p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Nama Projek : Aplikasi
I-Drive <o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Tahapan : Analisis<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">detail :<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis business
requirment document<o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- melengkapi
wireframe I-Drive (web), wireframe dashboard, Master Data yang terdiri dari
Data Driver dan Data Kendaraan, Biaya, History Perjalanan, Pengajuan dan Task
List</span></p><p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Melengkapi wireframe
I-Drive (mobile) Home, penambahan informasi saldo<o:p></o:p></span></p><p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Melengkapi wireframe
I-Drive (mobile) Biaya yang diinput driver<o:p></o:p></span></p><p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Melengkapi wireframe
I-Drive (mobile) Riwayat kendaraan<o:p></o:p></span></p><p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Melengkapi wireframe
I-Drive (mobile) Reminder<o:p></o:p></span></p><p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Melengkapi wireframe
I-Drive (mobile) Task List<o:p></o:p></span></p><p><span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">









<span style="font-size: 12pt; line-height: 107%;">- Melengkapi
wireframe I-Drive (mobile) Pengajuan</span><br></span></p>', 120, 1, '2020-05-29 09:21:42', 45, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (207, NULL, '2020-05-12', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
layout fragment transaksi aplikasi android umkm bagja mobile.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
fragment transaksi pada aplikasi android umkm bagja mobile<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
adapter view holder list produk transaksi untuk fungsi pilih barang pada
aplikasi bagja mobile.<o:p></o:p></span></p><p>





</p><p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
detail activity transakdi pada aplikasi android umkm Bagja mobile.<o:p></o:p></span></p>', 94, 277, '2020-05-29 09:21:58', 45, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (258, NULL, '2020-01-27', '<p>- halaman peminjaman</p><p>- halaman approval</p>', 162, 5, '2020-05-29 11:59:04', 28, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (259, NULL, '2020-01-29', 'revisi mockup arsip BJB', 162, 5, '2020-05-29 12:01:07', 30, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (260, NULL, '2020-02-04', '<ul><li>membuat manual book atm mandiri user head, manager TBI, dan manager TBM</li></ul>', 13, 7, '2020-05-29 12:03:55', 15, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (210, NULL, '2020-03-05', '<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Nama Projek : Apotik<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Tahapan : Analisis <o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">detail :<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis aplikasi
apotik (desktop)<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis menu persediaan,
sub menu stock opname<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menambahkan wireframe
menu persediaan, sub menu stock opname<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis menu
persediaan, sub menu pencatatan stock awal item<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menambahkan wireframe
menu persediaan, sub menu pencatatan stock awal item<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis menu
persediaan, sub menu data expire date<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menambahkan wireframe
menu persediaan, sub menu data expire date<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis menu
persediaan, sub menu daftar item masuk<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menambahkan wireframe
menu persediaan, sub menu daftar item masuk<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis menu
persediaan, sub menu daftar item keluar<o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Menambahkan
wireframe menu persediaan, sub menu daftar item keluar</span>', 150, 1, '2020-05-29 09:24:48', 40, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (191, NULL, '2020-03-06', '<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing scene Peta Dakwah<o:p></o:p></span></p><p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- scene Media Dakwah<o:p></o:p></span></p><p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing scene Panduan Dakwah<o:p></o:p></span></p><p class="MsoNormal">





</p><p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing scene Khutbah<o:p></o:p></span></p>', 65, 8, '2020-05-29 09:25:56', 40, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (188, NULL, '2020-03-04', '<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing asset opening<o:p></o:p></span></p><p class="MsoNormal">

<span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Membuat scene opening<o:p></o:p></span></p><p class="MsoNormal">

<span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing asset Peta Dakwah<o:p></o:p></span></p><p class="MsoNormal">

<span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Membuat scene Peta Dakwah<o:p></o:p></span></p>', 65, 8, '2020-05-29 09:26:34', 35, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (211, NULL, '2020-03-06', '<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Nama Projek : Apotik<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Tahapan : Analisis <o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">detail :<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis aplikasi
apotik (desktop)<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis menu
pembelian, sub menu daftar pesanan beli<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menambahkan wireframe
menu pembeilan, sub menu daftar pesanan beli<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis menu
pembelian, sub menu daftar pembelian<o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Menambahkan
wireframe menu pembelian, sub menu daftar pembelian</span>', 150, 1, '2020-05-29 09:31:17', 43, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (214, NULL, '2020-03-10', '<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Nama Projek : Apotik<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Tahapan : Analisis <o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">detail :<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis aplikasi
apotik (desktop)<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis menu
penjualan, sub menu daftar pesanan jual<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menambahkan wireframe
menu penjuaan, sub menu daftar pesanan jual<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menganalisis menu
penjualan, sub menu daftar penjualan<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Menambahkan wireframe
menu penjuaan, sub menu daftar penjualan<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Mengubah wireframe
tambah data item sesuai tipe item (data obat/data resep/jasa)<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Mengubah wireframe
tambah data pasien (master data pasien)<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Mengubah wireframe
registrasi pasien (menu klinik)<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Mengubah wireframe
tambah data diagnosa dokter<o:p></o:p></span></p>', 150, 1, '2020-05-29 09:32:27', 50, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (215, NULL, '2020-05-08', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> layout home dashboard aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> layout menu transaksi aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> layout item produk available di transaksi aplikasi
mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> activity home dashboard aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> function get informasi menu home dashboard dari
backend api dan di tampilkan di layout menu home aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>', 94, 277, '2020-05-29 09:32:38', 42, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (216, NULL, '2020-03-10', '<p class="MsoListParagraphCxSpFirst" style="margin-left:18.0pt;mso-add-space:
auto;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">-<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-size:12.0pt;
line-height:107%;font-family:&quot;Times New Roman&quot;,serif">Editing aset Buku Saku<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:18.0pt;mso-add-space:
auto;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">-<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-size:12.0pt;
line-height:107%;font-family:&quot;Times New Roman&quot;,serif">Membuat scene Buku Saku<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:18.0pt;mso-add-space:
auto;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">-<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-size:12.0pt;
line-height:107%;font-family:&quot;Times New Roman&quot;,serif">Editing aset Profil Dai<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:18.0pt;mso-add-space:auto;
text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">-<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-size:12.0pt;
line-height:107%;font-family:&quot;Times New Roman&quot;,serif">Membuat scene Profil Dai<o:p></o:p></span></p>', 65, 8, '2020-05-29 09:32:54', 60, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (217, NULL, '2020-03-11', '<p class="MsoListParagraphCxSpFirst" style="margin-left:18.0pt;mso-add-space:
auto;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">-<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-size:12.0pt;
line-height:107%;font-family:&quot;Times New Roman&quot;,serif">Editing aset Share Konten<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:18.0pt;mso-add-space:
auto;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">-<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-size:12.0pt;
line-height:107%;font-family:&quot;Times New Roman&quot;,serif">Membuat scene Share
Konten<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="margin-left:18.0pt;mso-add-space:
auto;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">-<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-size:12.0pt;
line-height:107%;font-family:&quot;Times New Roman&quot;,serif">Editing asset Closing<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:18.0pt;mso-add-space:auto;
text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">-<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-size:12.0pt;
line-height:107%;font-family:&quot;Times New Roman&quot;,serif">Membuat scene Closing<o:p></o:p></span></p>', 65, 8, '2020-05-29 09:33:42', 75, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (218, NULL, '2020-05-11', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> fungsi adapter list item produk pada aplikasi mobile
bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> data class model produk pada aplikasi mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> data class model user pada aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> data class model transaksi pada aplikasi mobile
bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> MainActivity untuk menamping fragment halaman menu
aplikasi mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> framgnet home dashboard pada aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> fragment transaksi pada aplikasi mobile bagaja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> fungsi post pilihan barang pada aplikasi mobile
bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> api RestFull untuk fungsi post produk pada aplikasi
mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;">.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout detail transaksi pada
aplikai umkm bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout bottom view pada
aplikasi bagja umkm/<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment bottom shet view
menu pada aplikasi bagja umkm<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity detail transaksi
pada aplikasi umkm bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungs get list data
transaksi pada activity detail transaksi aplikasi bagja umkm.<o:p></o:p></span></p><p>



























</p><p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat api RestFull untuk
mengirimkan list data transaksi.<o:p></o:p></span></p>', 94, 277, '2020-05-29 09:33:48', 48, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (219, NULL, '2020-03-12', '<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing closing video MUI</span></p><p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif"><o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Membuat scene MUI</span></p><p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Dubbing audio MUI&nbsp;<o:p></o:p></span></p>', 65, 8, '2020-05-29 09:34:50', 80, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (220, NULL, '2020-03-06', '<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Nama Projek : I-Drive<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Tahapan : Analisis <o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">detail :<o:p></o:p></span></p>

<p class="MsoNormal" style="line-height:150%"><span style="font-size:12.0pt;
line-height:150%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">- Perubahan wireframe
I-drive (mobile), penggabungan realisasi history kendaraan dan biaya<o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- penghapusan riwayat
pengeluaran</span>', 120, 1, '2020-05-29 09:35:06', 48, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (221, NULL, '2020-05-14', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout welcome screen activity 1 untuk halaman selamat dating umkm mobile bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout welcome screen activity 2 untuk halaman selamat dating umkm mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout welcome screen activiry 3 untuk halaman selamat dating umkm mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout login activity untuk proses login ke aplikasi umkm mobile bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
layout register activity untuk prroses register ke aplikasi umkm mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity login untuk menyimpan function login aplikasi umkm mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity register untuk menyimpan fungsi register user aplikasi mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity welcome screen 1 untuk menampilkan halaman welcome 1 aplikasi umkm
mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity welcome screen 2 untuk menampilkan halaman welcome 2 aplikasi umkm
modul bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
activity welcome screen 3 untuk menampilkan halaman welcome 3 aplikasi umkm
bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat&nbsp; Rest FUll api untuk proses data pada apliaksi
mobile bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi login RestFull Api pada backend aplikasi mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi register RestFull Api pada backend aplikasi mobinle bajga<o:p></o:p></span></p><p>

























</p><p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Membuat
fungsi informasi dashboard home RestFull Api pada backend aplikasi mobile
bagja.<o:p></o:p></span></p>', 94, 277, '2020-05-29 09:35:14', 55, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (222, NULL, '2020-03-13', '<p class="MsoListParagraphCxSpFirst" style="margin-left:18.0pt;mso-add-space:
auto;text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">-<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-size:12.0pt;
line-height:107%;font-family:&quot;Times New Roman&quot;,serif">Editing audio MUI<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="margin-left:18.0pt;mso-add-space:auto;
text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">-<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-size:12.0pt;
line-height:107%;font-family:&quot;Times New Roman&quot;,serif">Rendering video MUI<o:p></o:p></span></p>', 65, 8, '2020-05-29 09:35:20', 90, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (223, NULL, '2020-04-07', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Project : I-Drive<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Tahapan : Analisis perbaikan<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Detail :<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- merubah wireframe pengajuan, item yang diajukan
diambil dari id_biaya bukan dari jenis_biaya sesuai review perbaikan (mobile)<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat wireframe untuk halaman petty cash pada
backend i-drive<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- merubah wireframe halaman pengajuan pada backend
i-drive, menambahakan aksi unduh rekap pengajuan<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan beberapa tabel pada database hrd yang
berkaitan dengan perbaiakan i-drive<o:p></o:p></span></p>', 120, 1, '2020-05-29 09:36:08', 55, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (224, NULL, '2020-05-14', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
layout welcome screen activity 1 untuk halaman selamat dating umkm mobile
bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update layout
welcome screen activity 2 untuk halaman selamat dating umkm mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update layout
welcome screen activiry 3 untuk halaman selamat dating umkm mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update layout
login activity untuk proses login ke aplikasi umkm mobile bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update layout
register activity untuk prroses register ke aplikasi umkm mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update activity
login untuk menyimpan function login aplikasi umkm mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update activity
register untuk menyimpan fungsi register user aplikasi mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update activity
welcome screen 1 untuk menampilkan halaman welcome 1 aplikasi umkm mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update activity
welcome screen 2 untuk menampilkan halaman welcome 2 aplikasi umkm modul bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update activity
welcome screen 3 untuk menampilkan halaman welcome 3 aplikasi umkm bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update Rest
FUll api untuk proses data pada apliaksi mobile bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update fungsi
login RestFull Api pada backend aplikasi mobile bagja<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update fungsi
register RestFull Api pada backend aplikasi mobinle bajga<o:p></o:p></span></p><p>

























</p><p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update fungsi
informasi dashboard home RestFull Api pada backend aplikasi mobile bagja.<o:p></o:p></span></p>', 94, 280, '2020-05-29 09:36:14', 70, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (225, NULL, '2020-05-18', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout fragment home pada
aplikasi umkm bagja mobile.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout activity detail
transaksi pembayaran pada aplikasi android umkm bagja.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update function activity detail
tramsaksi pembauaran pada aplikasi android umkm bagja.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout resport fragment pada
aplikasi android umkm bagja.</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US"><o:p></o:p></span></p>', 94, 280, '2020-05-29 09:36:39', 85, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (227, NULL, '2020-04-13', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Project : UMKM (BAGJA)<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Tahapan : Analisis<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Detail :</span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">(database)<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat tabel produk<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat tabel stock<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat tabel transaksi<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat tabel umkm<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat tabel user_umkm<o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- membuat tabel user</span>', 98, 2, '2020-05-29 09:39:13', 30, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (226, NULL, '2020-04-13', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Project : UMKM (BAGJA)<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Tahapan : Analisis<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Detail :<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">(mobile)<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- Membuat wireframe register user UMKM<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat wireframe login user<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat wireframe home (isi jumlah customer datang
dan total income/harian)<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat wireframe transaksi (ketika customer
memesan produk umkm)<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat wireframe transaksi (penghitungan jumlah
bayar)<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat wireframe daftar produk<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat wireframe tambah produk<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat wireframe report dan history penjualan<o:p></o:p></span></p><p class="MsoNormal">

<span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat wireframe detail history penjualan</span></p>', 98, 1, '2020-05-29 09:40:08', 30, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (234, NULL, '2020-05-21', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update data
class model produk pada aplikasi mobile bagja</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update data
class model user pada aplikasi mobile bagja.</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update data
class model transaksi pada aplikasi mobile bagja.</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update MainActivity
untuk menamping fragment halaman menu aplikasi mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update framgnet
home dashboard pada aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update fragment
transaksi pada aplikasi mobile bagaja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update fungsi
post pilihan barang pada aplikasi mobile bagja.</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update api
RestFull untuk fungsi post produk pada aplikasi mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>', 94, 134, '2020-05-29 09:41:31', 60, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (236, NULL, '2020-05-22', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout detail transaksi pada
aplikai umkm bagja.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout bottom view pada
aplikasi bagja umkm/<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fragment bottom shet view
menu pada aplikasi bagja umkm<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update activity detail transaksi
pada aplikasi umkm bagja.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fungs get list data transaksi
pada activity detail transaksi aplikasi bagja umkm.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update api RestFull untuk
mengirimkan list data transaksi.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fungsi transaksi pada aplikasi
umkm bagja.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungsi print transaksi pada
aplikasi umkm bagja.<o:p></o:p></span></p>', 94, 134, '2020-05-29 09:41:49', 70, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (228, NULL, '2020-04-13', '<p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">Project : UMKM (BAGJA)<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">Tahapan : Analisis<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">Detail :</span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">(web)<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- membuat wireframe daftar umkm<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- membuat wireframe tambah data umkm<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- membuat wireframe daftar user umkm<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- membuat wireframe tambah data user umkm<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- membuat wireframe daftar produk dengan filter per umkm<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- membuat wireframe tambah data produk per umkm<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- membuat wireframe data penjualan umkm dengan filter per umkm</span></p>', 101, 1, '2020-05-29 09:40:37', 30, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (229, NULL, '2020-05-14', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> layout home dashboard aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> layout menu transaksi aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> layout item produk available di transaksi aplikasi
mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> activity home dashboard aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> function get informasi menu home dashboard dari
backend api dan di tampilkan di layout menu home aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> fungsi adapter list item produk pada aplikasi mobile
bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> data class model produk pada aplikasi mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> data class model user pada aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> data class model transaksi pada aplikasi mobile
bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> MainActivity untuk menamping fragment halaman menu
aplikasi mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> framgnet home dashboard pada aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> fragment transaksi pada aplikasi mobile bagaja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> fungsi post pilihan barang pada aplikasi mobile
bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> api RestFull untuk fungsi post produk pada aplikasi
mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;">.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout detail transaksi pada
aplikai umkm bagja.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout bottom view pada
aplikasi bagja umkm/<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment bottom shet view
menu pada aplikasi bagja umkm<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity detail transaksi
pada aplikasi umkm bagja.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungs get list data
transaksi pada activity detail transaksi aplikasi bagja umkm.<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat api RestFull untuk
mengirimkan list data transaksi.<o:p></o:p></span></p>', 94, 134, '2020-05-29 09:40:51', 45, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (261, NULL, '2020-04-03', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Project : Simon Pro<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Tahapan : Analisis<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Detail :<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat wireframe pelaporan harian<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat wireframe pelaporan harian per projek<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat wireframe detail pelaporan harian per
projek<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat wireframe pelaporan detail harian per
pegawai<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat wireframe detail pelaporan detail harian
per pegawai<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat wireframe rekap mingguan<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat wireframe detail rekap mingguan<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat wireframe rekap bulanan<o:p></o:p></span></p><p>





















</p><p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat wireframe detail rekap bulanan<o:p></o:p></span></p>', 91, 1, '2020-05-29 13:25:03', 20, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (230, NULL, '2020-05-19', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> data class model produk pada aplikasi mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> data class model user pada aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> data class model transaksi pada aplikasi mobile
bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> MainActivity untuk menamping fragment halaman menu
aplikasi mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> framgnet home dashboard pada aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> fragment transaksi pada aplikasi mobile bagaja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> fungsi post pilihan barang pada aplikasi mobile
bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> api RestFull untuk fungsi post produk pada aplikasi
mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;">.<o:p></o:p></span></p>', 94, 134, '2020-05-29 09:41:06', 50, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (231, NULL, '2020-03-16', '<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Mencari asset video PAKEM<o:p></o:p></span></p><p>

</p><p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing asset video PAKEM<o:p></o:p></span></p>', 37, 8, '2020-05-29 09:41:11', 5, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (232, NULL, '2020-04-13', '<p class="MsoNormal" style="font-size: 14px;"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">Project : UMKM (BAGJA)<o:p></o:p></span></p><p class="MsoNormal" style="font-size: 14px;"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">Tahapan : Analisis<o:p></o:p></span></p><p class="MsoNormal" style="font-size: 14px;"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">Detail :</span></p><p class="MsoNormal" style="font-size: 14px;"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">(database)<o:p></o:p></span></p><p class="MsoNormal" style="font-size: 14px;"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- membuat tabel produk<o:p></o:p></span></p><p class="MsoNormal" style="font-size: 14px;"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- membuat tabel stock<o:p></o:p></span></p><p class="MsoNormal" style="font-size: 14px;"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- membuat tabel transaksi<o:p></o:p></span></p><p class="MsoNormal" style="font-size: 14px;"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- membuat tabel umkm<o:p></o:p></span></p><p class="MsoNormal" style="font-size: 14px;"><span style="font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- membuat tabel user_umkm<o:p></o:p></span></p><span style="color: rgb(33, 37, 41); font-size: 12pt; line-height: 17.12px; font-family: &quot;Times New Roman&quot;, serif;">- membuat tabel user</span>', 101, 2, '2020-05-29 09:41:13', 30, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (233, NULL, '2020-05-20', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
layout home dashboard aplikasi mobile bagja.</span><span style="font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update layout
menu transaksi aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update layout
item produk available di transaksi aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update activity
home dashboard aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update function
get informasi menu home dashboard dari backend api dan di tampilkan di layout
menu home aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update fungsi
adapter list item produk pada aplikasi mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p>', 94, 134, '2020-05-29 09:41:19', 55, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (235, NULL, '2020-03-17', '<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing opening PAKEM<o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing scene tujuan PAKEM<o:p></o:p></span></p>', 37, 8, '2020-05-29 09:41:39', 10, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (238, NULL, '2020-04-14', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Project : UMKM (BAGJA)<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Tahapan : Analisis<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Detail :<o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- penambahan beberapa
detail fitur pada wireframe mobile UMKM BAGJA (transaksi, produk, report)</span>', 98, 1, '2020-05-29 09:42:14', 35, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (239, NULL, '2020-04-17', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Project : UMKM BAGJA<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Tahapan : analisis perubahan<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Detail :<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- mengubah struktur menu navigasi</span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- merubah wireframe umkm mobile menu report,
menambahkan total pendapatan<o:p></o:p></span></p>

<span style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- menambahkan tabel
pengeluaran pada database umkm</span>', 98, 1, '2020-05-29 09:43:28', 38, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (240, NULL, '2020-05-07', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update layout detail transaksi pada
aplikasi umkm bagja<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fungsi bottom view fragment
pada aplikasi umkm bagja untuk menampilkan list pembeliaan produk aplikasi umkm
bagja<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Upadte fungsi cetai print termal
pada aplikasi umkm bagja<o:p></o:p></span></p>

<p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update fungsi cek permisson
bluetooth untuk cetak print thermal pada aplikasi umkm bagja.<o:p></o:p></span></p>', 94, 276, '2020-05-29 09:43:55', 75, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (241, NULL, '2020-03-19', '<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing scene fitur monitoring<o:p></o:p></span></p><p>

</p><p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing scene fitur Poling<o:p></o:p></span></p>', 37, 8, '2020-05-29 09:44:07', 30, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (242, NULL, '2020-04-17', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Project : UMKM BAGJA<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Tahapan : analisis perubahan<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Detail :</span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan wireframe pengeluaran (backend)<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan wireframe summary (backend)<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- merubah wireframe menu report,
menambahkan total pendapatan</span></p>', 101, 1, '2020-05-29 09:44:30', 38, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (243, NULL, '2020-03-20', '<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing scene fitur layanan Informasi<o:p></o:p></span></p>

<span lang="EN-US" style="font-size:12.0pt;line-height:107%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">- Editing scene iuran
Warga</span>', 37, 8, '2020-05-29 09:45:32', 40, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (244, NULL, '2020-03-23', '<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing scene permohonan Surat<o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing scene mockup phone<o:p></o:p></span></p>', 37, 8, '2020-05-29 09:49:07', 50, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (245, NULL, '2020-03-24', '<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing scene mockup phone<o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing scene closing<o:p></o:p></span></p>', 37, 8, '2020-05-29 09:49:36', 60, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (246, NULL, '2020-03-25', '<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing scene mockup phone <o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing scene closing<o:p></o:p></span></p>', 37, 8, '2020-05-29 09:50:55', 75, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (247, NULL, '2020-05-27', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
layout transaksi pada aplikasi umkm bagja mobile menambahkan shadows pada
cardview produk.<o:p></o:p></span></p><p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1">

</p><p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span lang="EN-US" style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol;mso-ansi-language:EN-US">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US">Update
layout report pada aplikasi umkm bagja mobile, menyesuaikan icon buku kasbon pada
aplikasi umkm bagja mobile<o:p></o:p></span></p>', 94, 277, '2020-05-29 09:51:22', 56, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (248, NULL, '2020-03-26', '<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Dubbing video PAKEM<o:p></o:p></span></p>

<p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif">- Editing audio PAKEM</span></p><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;, serif; font-size: 12pt;">- Rendering audio PAKEM</span></p><p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif"><o:p></o:p></span></p><p class="MsoNormal"><span lang="EN-US" style="font-size:12.0pt;line-height:107%;
font-family:&quot;Times New Roman&quot;,serif"><o:p></o:p></span></p>', 37, 8, '2020-05-29 09:52:02', 90, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (249, NULL, '2020-05-14', '<p class="MsoListParagraphCxSpFirst" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> layout home dashboard aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> layout menu transaksi aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> layout item produk available di transaksi aplikasi
mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> activity home dashboard aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> function get informasi menu home dashboard dari
backend api dan di tampilkan di layout menu home aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> fungsi adapter list item produk pada aplikasi mobile
bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> data class model produk pada aplikasi mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> data class model user pada aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> data class model transaksi pada aplikasi mobile
bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> MainActivity untuk menamping fragment halaman menu
aplikasi mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> framgnet home dashboard pada aplikasi mobile bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> fragment transaksi pada aplikasi mobile bagaja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> fungsi post pilihan barang pada aplikasi mobile
bagja.</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;"><o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Update</span><span lang="EN-US" style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-US"> api RestFull untuk fungsi post produk pada aplikasi
mobile bagja</span><span style="font-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:
&quot;Times New Roman&quot;">.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout detail transaksi pada
aplikai umkm bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat layout bottom view pada
aplikasi bagja umkm/<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fragment bottom shet view
menu pada aplikasi bagja umkm<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat activity detail transaksi
pada aplikasi umkm bagja.<o:p></o:p></span></p><p class="MsoListParagraphCxSpMiddle" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat fungs get list data
transaksi pada activity detail transaksi aplikasi bagja umkm.<o:p></o:p></span></p><p>





































</p><p class="MsoListParagraphCxSpLast" style="text-indent:-.25in;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span style="font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:
Symbol">·<span style="font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><!--[endif]--><span style="font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:&quot;Times New Roman&quot;">Membuat api RestFull untuk
mengirimkan list data transaksi.<o:p></o:p></span></p>', 94, 277, '2020-05-29 09:52:15', 70, 'Modul Projek');
INSERT INTO "public"."laporan_projek" VALUES (250, NULL, '2020-01-03', '<p>membuat desain mockup aplikasi pakem android</p><p>- halaman login</p><p>- halaman home (a,b,c)</p><p>- halaman home belanja dapur bahan masakan</p><p>- halaman home belanja dapur alat rumah tangga</p>', 36, 5, '2020-05-29 11:43:20', 10, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (251, NULL, '2020-01-06', '<p>- halaman&nbsp; input pesanan</p><p>- halaman home pengaduan</p><p>- halam an home polling</p><p>-&nbsp; halaman home bantuan&nbsp;</p><p>- halaman bantuan tambah permohonan</p><p>&nbsp;- halaman home duty officer</p>', 36, 5, '2020-05-29 11:46:17', 25, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (252, NULL, '2020-01-07', '<p>&nbsp;- halaman duty officer pejabat komplek</p><p>- halaman duty officer security</p><p>&nbsp;- halaman&nbsp; home monitoring</p><p>- halaman home pengantar</p><p>- halaman home tambah pengantar</p><p>- halaman home informasi</p><p>- halaman history belanja</p>', 36, 5, '2020-05-29 11:50:29', 35, 'Modul Tetap');
INSERT INTO "public"."laporan_projek" VALUES (262, NULL, '2020-04-06', '<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Project : Simon Pro<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Tahapan : Analisis<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">Detail :<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- membuat database simon_pro<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel data_induk_projek<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel data_projek<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel m_jabatan<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel m_pegawai<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel m_posisi<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel m_user<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel modul_projek<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel modul_tetap<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel persentase_projek<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel progres_pegawai<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel tim_projek<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel rekap_bulanan<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel rekap_mingguan<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel laporan_pegawai<o:p></o:p></span></p>

<p class="MsoNormal"><span style="font-size:12.0pt;line-height:107%;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;">- menambahkan tabel laporan_projek<o:p></o:p></span></p>', 91, 2, '2020-05-29 13:25:50', 40, 'Modul Tetap');

-- ----------------------------
-- Table structure for m_jabatan
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_jabatan";
CREATE TABLE "public"."m_jabatan" (
  "id_jabatan" int8 NOT NULL DEFAULT nextval('"jabatan_ID_sequence"'::regclass),
  "nama_jabatan" varchar(255) COLLATE "pg_catalog"."default",
  "add_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of m_jabatan
-- ----------------------------
INSERT INTO "public"."m_jabatan" VALUES (1, 'Manager', '2020-04-05 00:58:14');
INSERT INTO "public"."m_jabatan" VALUES (2, 'Staff', '2020-04-20 14:27:30');
INSERT INTO "public"."m_jabatan" VALUES (3, 'Direktur', '2020-04-22 14:11:27');

-- ----------------------------
-- Table structure for m_pegawai
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_pegawai";
CREATE TABLE "public"."m_pegawai" (
  "id_pegawai" int8 NOT NULL DEFAULT nextval('"pegawai_ID_sequence"'::regclass),
  "nama_pegawai" varchar(255) COLLATE "pg_catalog"."default",
  "nik" varchar(255) COLLATE "pg_catalog"."default",
  "kontak" varchar(255) COLLATE "pg_catalog"."default",
  "email" varchar(255) COLLATE "pg_catalog"."default",
  "id_posisi" int8,
  "id_jabatan" int8,
  "alamat" text COLLATE "pg_catalog"."default",
  "add_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of m_pegawai
-- ----------------------------
INSERT INTO "public"."m_pegawai" VALUES (5, 'Indah Siti Sarah', '3203017005970001', '085659168514', 'indahstsrh@hmail.com', 3, 2, 'Cianjur', '2020-04-20 14:27:17');
INSERT INTO "public"."m_pegawai" VALUES (3, 'Kevin Lia Audiana', '3525024810970001', '087869123931', 'kevinliaaudiana1@gmail.com', 3, 1, 'Gresik', '2020-04-20 14:21:35');
INSERT INTO "public"."m_pegawai" VALUES (6, 'Raden Roro Fitriyani Vinasti Perwitasari', '3277026004960012', '0899661965122', 'rvinastip@gmail.com', 2, 2, 'Cimahi', '2020-04-20 14:42:45');
INSERT INTO "public"."m_pegawai" VALUES (7, 'Imam Farid Rizaldi', '32055112012950001', '081322139234', 'imam.faridrizaldi@gmail.com', 2, 2, 'Garut', '2020-04-20 14:50:39');
INSERT INTO "public"."m_pegawai" VALUES (8, 'Muhammad Afif ', '3204371002950001', '081220279652', 'muh10afif@gmail.com', 1, 2, 'Soreang', '2020-04-20 14:52:14');
INSERT INTO "public"."m_pegawai" VALUES (9, 'Rangga Adi Pratama', '3273181207960007', '081573650396', 'masterrangga@gmail.com', 1, 2, 'Cikutra', '2020-04-20 14:57:14');
INSERT INTO "public"."m_pegawai" VALUES (10, 'Syarif Nurhayat', '', '08112498777', '', NULL, 3, 'Cimahi', '2020-04-22 14:18:32');
INSERT INTO "public"."m_pegawai" VALUES (11, 'Rio Sukmawan', '', '0811898777', '', NULL, 3, '', '2020-04-24 09:10:46');
INSERT INTO "public"."m_pegawai" VALUES (13, 'Maulana Afandi', '', '', '', 1, 1, 'Ujung Berung', '2020-04-26 10:22:12');
INSERT INTO "public"."m_pegawai" VALUES (12, 'Defitra Muhammad Yasin', '', '089636132185', '', 1, 2, '', '2020-04-26 10:39:32');
INSERT INTO "public"."m_pegawai" VALUES (14, 'Khrisna', '', '081646870503', '', 1, 2, '', '2020-04-26 10:40:07');
INSERT INTO "public"."m_pegawai" VALUES (15, 'Salman Alfarisy', '', '08112105262', '', 1, 3, 'Ciwastra', '2020-04-26 10:43:13');
INSERT INTO "public"."m_pegawai" VALUES (16, 'Amar Nurdin', '', '082320164045', '', 1, 2, '', '2020-04-26 10:46:36');
INSERT INTO "public"."m_pegawai" VALUES (17, 'Yogi Pranoto', '', '', '', 1, 2, '', '2020-04-26 10:57:02');
INSERT INTO "public"."m_pegawai" VALUES (4, 'Iqbal Muhammad Siswanto', '3273251609960002', '08112460122', 'iqbalbesari@gmail.com', 1, 2, 'Cilengkrang', '2020-05-18 14:35:13');

-- ----------------------------
-- Table structure for m_posisi
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_posisi";
CREATE TABLE "public"."m_posisi" (
  "id_posisi" int8 NOT NULL DEFAULT nextval('"posisi_ID_sequence"'::regclass),
  "nama_posisi" varchar(255) COLLATE "pg_catalog"."default",
  "jenis_modul" varchar(64) COLLATE "pg_catalog"."default",
  "add_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of m_posisi
-- ----------------------------
INSERT INTO "public"."m_posisi" VALUES (3, 'Analis', 'Modul Tetap', '2020-04-20 13:56:43');
INSERT INTO "public"."m_posisi" VALUES (1, 'Programmer', 'Modul Projek', '2020-04-20 14:19:57');
INSERT INTO "public"."m_posisi" VALUES (2, 'Desainer', 'Modul Tetap', '2020-04-20 18:46:54');
INSERT INTO "public"."m_posisi" VALUES (6, 'Tester', 'Modul Tetap', '2020-04-26 12:15:24');

-- ----------------------------
-- Table structure for m_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."m_user";
CREATE TABLE "public"."m_user" (
  "id_user" int8 NOT NULL DEFAULT nextval('"user_ID_sequence"'::regclass),
  "id_pegawai" int8,
  "username" varchar(255) COLLATE "pg_catalog"."default",
  "password" varchar(255) COLLATE "pg_catalog"."default",
  "status" int8,
  "add_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of m_user
-- ----------------------------
INSERT INTO "public"."m_user" VALUES (1, 1, 'user', '$2y$10$YH9gGdYUGBY.cggw4pK5fOZhwVNYZRQmFIHsYqbxsaRBOLc/paFd6', 1, '2020-04-05 00:55:42.826034');
INSERT INTO "public"."m_user" VALUES (2, 3, 'kevin', '$2y$10$YH9gGdYUGBY.cggw4pK5fOZhwVNYZRQmFIHsYqbxsaRBOLc/paFd6', 1, '2020-04-20 17:48:50');
INSERT INTO "public"."m_user" VALUES (5, 10, 'syarif', '$2y$10$YH9gGdYUGBY.cggw4pK5fOZhwVNYZRQmFIHsYqbxsaRBOLc/paFd6', 1, '2020-04-22 14:20:54');
INSERT INTO "public"."m_user" VALUES (6, 5, 'indah', '$2y$10$YH9gGdYUGBY.cggw4pK5fOZhwVNYZRQmFIHsYqbxsaRBOLc/paFd6', 1, '2020-04-22 14:35:32');
INSERT INTO "public"."m_user" VALUES (7, 6, 'rere', '$2y$10$YH9gGdYUGBY.cggw4pK5fOZhwVNYZRQmFIHsYqbxsaRBOLc/paFd6', 1, '2020-04-22 14:39:31');
INSERT INTO "public"."m_user" VALUES (8, 9, 'rangga', '$2y$10$YH9gGdYUGBY.cggw4pK5fOZhwVNYZRQmFIHsYqbxsaRBOLc/paFd6', 1, '2020-04-22 14:41:03');
INSERT INTO "public"."m_user" VALUES (4, 7, 'imam', '$2y$10$YH9gGdYUGBY.cggw4pK5fOZhwVNYZRQmFIHsYqbxsaRBOLc/paFd6', 1, '2020-04-22 14:48:02');
INSERT INTO "public"."m_user" VALUES (9, 4, 'iqbal', '$2y$10$YH9gGdYUGBY.cggw4pK5fOZhwVNYZRQmFIHsYqbxsaRBOLc/paFd6', 1, '2020-04-22 16:43:47');
INSERT INTO "public"."m_user" VALUES (10, 11, 'rio', '$2y$10$YH9gGdYUGBY.cggw4pK5fOZhwVNYZRQmFIHsYqbxsaRBOLc/paFd6', 1, '2020-04-24 09:11:06');
INSERT INTO "public"."m_user" VALUES (11, 15, 'Salman', '$2y$10$YH9gGdYUGBY.cggw4pK5fOZhwVNYZRQmFIHsYqbxsaRBOLc/paFd6', 1, '2020-04-26 10:40:32');
INSERT INTO "public"."m_user" VALUES (3, 8, 'afif', '$2y$10$/Y5mPoI4mNmMTqu20PSiyOVXTx4XLvdEKhc0WCYjZUUvo52n3RMFW', 1, '2020-04-22 14:19:49');

-- ----------------------------
-- Table structure for modul_projek
-- ----------------------------
DROP TABLE IF EXISTS "public"."modul_projek";
CREATE TABLE "public"."modul_projek" (
  "id_modul_projek" int8 NOT NULL DEFAULT nextval('"modul_projek_ID_sequence"'::regclass),
  "id_data_projek" int8,
  "nama_modul" varchar(255) COLLATE "pg_catalog"."default",
  "persentase" float4,
  "id_posisi" int8,
  "add_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of modul_projek
-- ----------------------------
INSERT INTO "public"."modul_projek" VALUES (1, 1, 'Master Data', 30, 1, '2020-04-20 18:48:51');
INSERT INTO "public"."modul_projek" VALUES (4, 1, 'Penyiangan', 10, 1, '2020-04-20 18:49:21');
INSERT INTO "public"."modul_projek" VALUES (5, 1, 'Pemusnahan', 10, 1, '2020-04-20 18:49:43');
INSERT INTO "public"."modul_projek" VALUES (6, 1, 'Pelaporan', 10, 1, '2020-04-20 18:49:51');
INSERT INTO "public"."modul_projek" VALUES (2, 1, 'Pengarsipan', 25, 1, '2020-04-20 18:50:22');
INSERT INTO "public"."modul_projek" VALUES (3, 1, 'Peminjaman', 15, 1, '2020-04-20 18:51:17');
INSERT INTO "public"."modul_projek" VALUES (99, 43, 'Home', 0, 1, '2020-04-24 11:34:39');
INSERT INTO "public"."modul_projek" VALUES (100, 43, 'Biaya', 0, 1, '2020-04-24 11:34:47');
INSERT INTO "public"."modul_projek" VALUES (101, 43, 'History', 0, 1, '2020-04-24 11:34:56');
INSERT INTO "public"."modul_projek" VALUES (102, 43, 'Task List', 0, 1, '2020-04-24 11:35:21');
INSERT INTO "public"."modul_projek" VALUES (7, 2, 'Divisi', 5, 1, '2020-05-14 09:35:58');
INSERT INTO "public"."modul_projek" VALUES (8, 2, 'Karyawan', 5, 1, '2020-05-14 09:37:17');
INSERT INTO "public"."modul_projek" VALUES (9, 2, 'User', 5, 1, '2020-05-14 09:37:26');
INSERT INTO "public"."modul_projek" VALUES (10, 2, 'Barang', 5, 1, '2020-05-14 09:38:00');
INSERT INTO "public"."modul_projek" VALUES (12, 2, 'Kamar', 5, 1, '2020-05-14 09:38:16');
INSERT INTO "public"."modul_projek" VALUES (13, 2, 'Pelanggan', 5, 1, '2020-05-14 09:38:22');
INSERT INTO "public"."modul_projek" VALUES (14, 2, 'Room', 5, 1, '2020-05-14 09:38:37');
INSERT INTO "public"."modul_projek" VALUES (16, 2, 'Laundry', 10, 1, '2020-05-14 09:43:46');
INSERT INTO "public"."modul_projek" VALUES (15, 2, 'Penjualan', 10, 1, '2020-05-14 09:41:05');
INSERT INTO "public"."modul_projek" VALUES (17, 2, 'Event', 10, 1, '2020-05-14 09:43:52');
INSERT INTO "public"."modul_projek" VALUES (18, 2, 'Sewa Kamar', 10, 1, '2020-05-14 09:43:58');
INSERT INTO "public"."modul_projek" VALUES (19, 2, 'Penugasan', 5, 1, '2020-05-14 09:44:06');
INSERT INTO "public"."modul_projek" VALUES (23, 21, 'Master', 10, 1, '2020-05-14 10:29:59');
INSERT INTO "public"."modul_projek" VALUES (21, 2, 'Disposisi', 5, 1, '2020-05-14 09:45:16');
INSERT INTO "public"."modul_projek" VALUES (22, 2, 'Laporan', 10, 1, '2020-05-14 09:45:53');
INSERT INTO "public"."modul_projek" VALUES (24, 21, 'Kelola Users', 20, 1, '2020-05-14 10:30:42');
INSERT INTO "public"."modul_projek" VALUES (25, 21, 'Rekap Wisatawan', 20, 1, '2020-05-14 10:30:47');
INSERT INTO "public"."modul_projek" VALUES (26, 21, 'Report', 25, 1, '2020-05-14 10:30:57');
INSERT INTO "public"."modul_projek" VALUES (27, 21, 'Unduh Database', 25, 1, '2020-05-14 10:31:04');
INSERT INTO "public"."modul_projek" VALUES (75, 24, 'Registrasi User', 20, 1, '2020-05-14 10:38:12');
INSERT INTO "public"."modul_projek" VALUES (76, 24, 'Master Data', 20, 1, '2020-05-14 10:38:21');
INSERT INTO "public"."modul_projek" VALUES (78, 24, 'Kredit Non Konsumtif', 30, 1, '2020-05-14 10:38:32');
INSERT INTO "public"."modul_projek" VALUES (54, 25, 'Retemplating Registrasi User', 10, 1, '2020-05-14 10:40:58');
INSERT INTO "public"."modul_projek" VALUES (55, 25, 'Retemplating Master Data', 10, 1, '2020-05-14 10:41:10');
INSERT INTO "public"."modul_projek" VALUES (56, 25, 'Retempleting Kredit Konsumtif', 10, 1, '2020-05-14 10:42:17');
INSERT INTO "public"."modul_projek" VALUES (52, 26, 'Dashboard (Front-End)', 10, 1, '2020-05-14 10:48:53');
INSERT INTO "public"."modul_projek" VALUES (45, 26, 'Management User', 5, 1, '2020-05-14 10:47:30');
INSERT INTO "public"."modul_projek" VALUES (47, 26, 'Iklan Donasi', 15, 1, '2020-05-14 10:47:44');
INSERT INTO "public"."modul_projek" VALUES (48, 26, 'Sodaqoh', 15, 1, '2020-05-14 10:47:58');
INSERT INTO "public"."modul_projek" VALUES (46, 26, 'Master Data', 5, 1, '2020-05-14 10:48:43');
INSERT INTO "public"."modul_projek" VALUES (50, 26, 'History Donatur', 20, 1, '2020-05-14 10:48:58');
INSERT INTO "public"."modul_projek" VALUES (49, 26, 'Report', 20, 1, '2020-05-14 10:49:04');
INSERT INTO "public"."modul_projek" VALUES (53, 26, 'Riwayat Sodaqoh (Front-End)', 10, 1, '2020-05-14 10:49:11');
INSERT INTO "public"."modul_projek" VALUES (61, 31, 'Item', 15, 1, '2020-05-14 11:35:50');
INSERT INTO "public"."modul_projek" VALUES (59, 31, 'Treatment', 35, 1, '2020-05-14 11:36:53');
INSERT INTO "public"."modul_projek" VALUES (60, 31, 'Attendance', 15, 1, '2020-05-14 11:36:32');
INSERT INTO "public"."modul_projek" VALUES (28, 28, 'Dashboard', 5, 1, '2020-05-14 13:07:16');
INSERT INTO "public"."modul_projek" VALUES (62, 31, 'History', 25, 1, '2020-05-14 11:36:19');
INSERT INTO "public"."modul_projek" VALUES (58, 31, 'Home', 10, 1, '2020-05-14 11:36:39');
INSERT INTO "public"."modul_projek" VALUES (30, 28, 'Sosial Media', 5, 1, '2020-05-14 13:07:25');
INSERT INTO "public"."modul_projek" VALUES (29, 28, 'Customer', 5, 1, '2020-05-14 13:07:45');
INSERT INTO "public"."modul_projek" VALUES (31, 28, 'Therapist', 5, 1, '2020-05-14 13:08:00');
INSERT INTO "public"."modul_projek" VALUES (32, 28, 'Menu Treatment', 5, 1, '2020-05-14 13:08:07');
INSERT INTO "public"."modul_projek" VALUES (33, 28, 'Paket Treatment', 5, 1, '2020-05-14 13:08:16');
INSERT INTO "public"."modul_projek" VALUES (35, 28, 'Divisi', 5, 1, '2020-05-14 13:08:31');
INSERT INTO "public"."modul_projek" VALUES (36, 28, 'Karyawan', 5, 1, '2020-05-14 13:08:37');
INSERT INTO "public"."modul_projek" VALUES (38, 28, 'User', 5, 1, '2020-05-14 13:08:43');
INSERT INTO "public"."modul_projek" VALUES (39, 28, 'Asset', 5, 1, '2020-05-14 13:08:51');
INSERT INTO "public"."modul_projek" VALUES (37, 28, 'Room', 5, 1, '2020-05-14 13:09:00');
INSERT INTO "public"."modul_projek" VALUES (40, 28, 'Produk', 5, 1, '2020-05-14 13:09:06');
INSERT INTO "public"."modul_projek" VALUES (43, 28, 'Reminder', 5, 1, '2020-05-14 13:09:12');
INSERT INTO "public"."modul_projek" VALUES (34, 28, 'Kehadiran', 10, 1, '2020-05-14 13:09:33');
INSERT INTO "public"."modul_projek" VALUES (41, 28, 'Treatment', 10, 1, '2020-05-14 13:09:55');
INSERT INTO "public"."modul_projek" VALUES (44, 28, 'Laporan', 5, 1, '2020-05-14 13:10:13');
INSERT INTO "public"."modul_projek" VALUES (65, 34, 'Buby Kitchen', 20, 1, '2020-05-14 14:21:14');
INSERT INTO "public"."modul_projek" VALUES (71, 34, 'Treatment (Therapist)', 10, 1, '2020-05-14 14:24:54');
INSERT INTO "public"."modul_projek" VALUES (74, 34, 'History (Therapist)', 5, 1, '2020-05-14 14:25:03');
INSERT INTO "public"."modul_projek" VALUES (64, 34, 'Buby Treatment', 20, 1, '2020-05-14 14:20:53');
INSERT INTO "public"."modul_projek" VALUES (67, 34, 'Aktifitas Saya', 10, 1, '2020-05-14 14:18:33');
INSERT INTO "public"."modul_projek" VALUES (63, 34, 'Beranda', 5, 1, '2020-05-14 14:25:08');
INSERT INTO "public"."modul_projek" VALUES (66, 34, 'Artikel', 5, 1, '2020-05-14 14:25:13');
INSERT INTO "public"."modul_projek" VALUES (68, 34, 'Chat', 5, 1, '2020-05-14 14:25:18');
INSERT INTO "public"."modul_projek" VALUES (69, 34, 'Profile', 5, 1, '2020-05-14 14:25:23');
INSERT INTO "public"."modul_projek" VALUES (70, 34, 'Home (Therapist)', 5, 1, '2020-05-14 14:25:28');
INSERT INTO "public"."modul_projek" VALUES (72, 34, 'Attendance (Therapist)', 5, 1, '2020-05-14 14:25:32');
INSERT INTO "public"."modul_projek" VALUES (73, 34, 'Chat (Therapist)', 5, 1, '2020-05-14 14:25:38');
INSERT INTO "public"."modul_projek" VALUES (79, 42, 'Master Data', 10, 1, '2020-05-18 14:17:51');
INSERT INTO "public"."modul_projek" VALUES (80, 42, 'Petty Cash', 15, 1, '2020-05-18 14:18:11');
INSERT INTO "public"."modul_projek" VALUES (81, 42, 'Biaya', 15, 1, '2020-05-18 14:18:24');
INSERT INTO "public"."modul_projek" VALUES (83, 42, 'Pengajuan', 20, 1, '2020-05-18 14:19:02');
INSERT INTO "public"."modul_projek" VALUES (84, 42, 'Reminder', 15, 1, '2020-05-18 14:19:12');
INSERT INTO "public"."modul_projek" VALUES (93, 55, 'Master Kearsipan', 10, 1, '2020-05-18 14:28:46');
INSERT INTO "public"."modul_projek" VALUES (85, 42, 'Task List', 15, 1, '2020-05-18 14:19:58');
INSERT INTO "public"."modul_projek" VALUES (94, 55, 'Pengarsipan', 25, 1, '2020-05-18 14:30:19');
INSERT INTO "public"."modul_projek" VALUES (92, 55, 'Manajemen User', 15, 1, '2020-05-18 14:28:18');
INSERT INTO "public"."modul_projek" VALUES (98, 55, 'Pelaporan', 20, 1, '2020-05-18 14:29:41');
INSERT INTO "public"."modul_projek" VALUES (96, 55, 'Penyiangan', 10, 1, '2020-05-18 14:29:01');
INSERT INTO "public"."modul_projek" VALUES (97, 55, 'Pemusnahan', 10, 1, '2020-05-18 14:29:06');
INSERT INTO "public"."modul_projek" VALUES (95, 55, 'Peminjaman', 10, 1, '2020-05-18 14:29:23');
INSERT INTO "public"."modul_projek" VALUES (86, 53, 'Master Data', 10, 1, '2020-05-18 14:41:33');
INSERT INTO "public"."modul_projek" VALUES (88, 53, 'Kelola Modul', 10, 1, '2020-05-18 14:45:59');
INSERT INTO "public"."modul_projek" VALUES (91, 53, 'Rekap', 20, 1, '2020-05-18 14:46:24');
INSERT INTO "public"."modul_projek" VALUES (90, 53, 'Pelaporan Harian', 25, 1, '2020-05-18 14:47:06');
INSERT INTO "public"."modul_projek" VALUES (87, 53, 'Kelola Projek', 10, 1, '2020-05-18 14:45:34');
INSERT INTO "public"."modul_projek" VALUES (104, 56, 'Summary', 40, 1, '2020-05-18 14:58:11');
INSERT INTO "public"."modul_projek" VALUES (89, 53, 'Progress Projek', 25, 1, '2020-05-18 14:46:38');
INSERT INTO "public"."modul_projek" VALUES (103, 56, 'Transaksi', 35, 1, '2020-05-18 14:58:03');
INSERT INTO "public"."modul_projek" VALUES (106, 7, 'Dashboard', 0, 1, '2020-04-24 12:56:15');
INSERT INTO "public"."modul_projek" VALUES (107, 7, 'Report OTS', 0, 1, '2020-04-24 12:56:34');
INSERT INTO "public"."modul_projek" VALUES (108, 7, 'Report NOA', 0, 1, '2020-04-24 12:56:51');
INSERT INTO "public"."modul_projek" VALUES (109, 7, 'Report Recoveries', 0, 1, '2020-04-24 12:57:15');
INSERT INTO "public"."modul_projek" VALUES (110, 7, 'Report Proses', 0, 1, '2020-04-24 12:57:39');
INSERT INTO "public"."modul_projek" VALUES (111, 7, 'Report Eks Asset', 0, 1, '2020-04-24 12:58:46');
INSERT INTO "public"."modul_projek" VALUES (112, 7, 'Foto Dokumen', 0, 1, '2020-04-24 12:59:00');
INSERT INTO "public"."modul_projek" VALUES (113, 7, 'Print Report', 0, 1, '2020-04-24 12:59:16');
INSERT INTO "public"."modul_projek" VALUES (124, 6, 'Kelolaan', 0, 1, '2020-04-24 13:12:26');
INSERT INTO "public"."modul_projek" VALUES (125, 6, 'Kunjungan', 0, 1, '2020-04-24 13:12:37');
INSERT INTO "public"."modul_projek" VALUES (126, 6, 'Lat Long', 0, 1, '2020-04-24 13:12:48');
INSERT INTO "public"."modul_projek" VALUES (127, 6, 'Validasi Data Angunan', 0, 1, '2020-04-24 13:13:05');
INSERT INTO "public"."modul_projek" VALUES (128, 6, 'Desk Collection', 0, 1, '2020-04-24 13:13:20');
INSERT INTO "public"."modul_projek" VALUES (129, 6, 'Task List', 0, 1, '2020-04-24 13:13:30');
INSERT INTO "public"."modul_projek" VALUES (130, 6, 'Tindakan Hukum', 0, 1, '2020-04-24 13:13:40');
INSERT INTO "public"."modul_projek" VALUES (131, 6, 'Eksekusi Jaminan', 0, 1, '2020-04-24 13:13:52');
INSERT INTO "public"."modul_projek" VALUES (132, 6, 'Summary', 0, 1, '2020-04-24 13:14:02');
INSERT INTO "public"."modul_projek" VALUES (140, 36, 'Waktu Shalat', 0, 1, '2020-04-24 13:25:01');
INSERT INTO "public"."modul_projek" VALUES (141, 36, 'Peta Dakwah', 0, 1, '2020-04-24 13:25:11');
INSERT INTO "public"."modul_projek" VALUES (142, 36, 'Arah Kiblat', 0, 1, '2020-04-24 13:25:23');
INSERT INTO "public"."modul_projek" VALUES (143, 36, 'Hitung Zakat', 0, 1, '2020-04-24 13:25:36');
INSERT INTO "public"."modul_projek" VALUES (144, 36, 'Halal', 0, 1, '2020-04-24 13:25:47');
INSERT INTO "public"."modul_projek" VALUES (145, 36, 'Fatwa', 0, 1, '2020-04-24 13:25:57');
INSERT INTO "public"."modul_projek" VALUES (146, 36, 'Kalender', 0, 1, '2020-04-24 13:26:12');
INSERT INTO "public"."modul_projek" VALUES (151, 37, 'Waktu Shalat', 0, 1, '2020-04-24 13:28:04');
INSERT INTO "public"."modul_projek" VALUES (152, 37, 'Peta Dakwah', 0, 1, '2020-04-24 13:28:13');
INSERT INTO "public"."modul_projek" VALUES (153, 37, 'Arah Kiblat', 0, 1, '2020-04-24 13:28:29');
INSERT INTO "public"."modul_projek" VALUES (154, 37, 'Hitung Zakat', 0, 1, '2020-04-24 13:28:39');
INSERT INTO "public"."modul_projek" VALUES (155, 37, 'Halal', 0, 1, '2020-04-24 13:28:51');
INSERT INTO "public"."modul_projek" VALUES (156, 37, 'Fatwa', 0, 1, '2020-04-24 13:29:00');
INSERT INTO "public"."modul_projek" VALUES (157, 37, 'Kalender', 0, 1, '2020-04-24 13:29:08');
INSERT INTO "public"."modul_projek" VALUES (158, 37, 'Media Dakwah', 0, 1, '2020-04-24 13:29:18');
INSERT INTO "public"."modul_projek" VALUES (159, 37, 'Panduan Dakwah', 0, 1, '2020-04-24 13:29:26');
INSERT INTO "public"."modul_projek" VALUES (160, 37, 'Khutbah & Ceramah', 0, 1, '2020-04-24 13:29:46');
INSERT INTO "public"."modul_projek" VALUES (161, 37, 'Buku Saku', 0, 1, '2020-04-24 13:29:56');
INSERT INTO "public"."modul_projek" VALUES (162, 37, 'Da''i', 0, 1, '2020-04-24 13:30:05');
INSERT INTO "public"."modul_projek" VALUES (147, 36, 'Media Dakwah', 0, 1, '2020-04-24 13:31:23');
INSERT INTO "public"."modul_projek" VALUES (163, 36, 'Panduan Dakwah', 0, 1, '2020-04-24 13:32:03');
INSERT INTO "public"."modul_projek" VALUES (164, 36, 'Khutbah & Ceramah', 0, 1, '2020-04-24 13:32:31');
INSERT INTO "public"."modul_projek" VALUES (165, 36, 'Buku Saku', 0, 1, '2020-04-24 13:32:43');
INSERT INTO "public"."modul_projek" VALUES (166, 36, 'Da''i', 0, 1, '2020-04-24 13:32:54');
INSERT INTO "public"."modul_projek" VALUES (167, 23, 'Administrasi Keuangan', 25, 1, '2020-05-14 10:32:47');
INSERT INTO "public"."modul_projek" VALUES (168, 23, 'Perizinan Santri', 10, 1, '2020-05-14 10:32:55');
INSERT INTO "public"."modul_projek" VALUES (169, 23, 'Kesehatan', 10, 1, '2020-05-14 10:33:03');
INSERT INTO "public"."modul_projek" VALUES (170, 23, 'Broadcast', 10, 1, '2020-05-14 10:33:10');
INSERT INTO "public"."modul_projek" VALUES (171, 23, 'Pelanggaran', 10, 1, '2020-05-14 10:33:17');
INSERT INTO "public"."modul_projek" VALUES (172, 23, 'Master Data', 15, 1, '2020-05-14 10:33:31');
INSERT INTO "public"."modul_projek" VALUES (174, 23, 'Rapor Nilai', 10, 1, '2020-05-14 10:34:44');
INSERT INTO "public"."modul_projek" VALUES (173, 23, 'Tata Ruang', 10, 1, '2020-05-14 10:34:33');
INSERT INTO "public"."modul_projek" VALUES (134, 58, 'Transaksi', 20, 1, '2020-05-14 11:11:37');
INSERT INTO "public"."modul_projek" VALUES (135, 58, 'Produk', 10, 1, '2020-05-14 11:11:16');
INSERT INTO "public"."modul_projek" VALUES (133, 58, 'Home', 5, 1, '2020-05-14 11:11:24');
INSERT INTO "public"."modul_projek" VALUES (136, 58, 'Report', 10, 1, '2020-05-14 11:11:44');
INSERT INTO "public"."modul_projek" VALUES (137, 57, 'Master Data', 15, 1, '2020-05-14 11:26:00');
INSERT INTO "public"."modul_projek" VALUES (184, 33, 'Karyawan', 2, 1, '2020-05-14 13:13:16');
INSERT INTO "public"."modul_projek" VALUES (138, 57, 'Transaksi Pemasukan', 15, 1, '2020-05-14 11:23:41');
INSERT INTO "public"."modul_projek" VALUES (187, 33, 'Asset', 2, 1, '2020-05-14 13:13:37');
INSERT INTO "public"."modul_projek" VALUES (188, 33, 'Produk', 2, 1, '2020-05-14 13:13:52');
INSERT INTO "public"."modul_projek" VALUES (186, 33, 'User', 2, 1, '2020-05-14 13:14:14');
INSERT INTO "public"."modul_projek" VALUES (185, 33, 'Room', 2, 1, '2020-05-14 13:14:31');
INSERT INTO "public"."modul_projek" VALUES (176, 33, 'Customer', 5, 1, '2020-05-14 13:14:43');
INSERT INTO "public"."modul_projek" VALUES (177, 33, 'Member', 5, 1, '2020-05-14 13:14:53');
INSERT INTO "public"."modul_projek" VALUES (183, 33, 'Divisi', 2, 1, '2020-05-14 13:15:04');
INSERT INTO "public"."modul_projek" VALUES (178, 33, 'Sosial Media', 2, 1, '2020-05-14 13:15:10');
INSERT INTO "public"."modul_projek" VALUES (193, 33, 'Artikel', 2, 1, '2020-05-14 13:15:50');
INSERT INTO "public"."modul_projek" VALUES (179, 33, 'Therapist', 5, 1, '2020-05-14 13:37:56');
INSERT INTO "public"."modul_projek" VALUES (180, 33, 'Menu Treatment', 2, 1, '2020-05-14 13:18:36');
INSERT INTO "public"."modul_projek" VALUES (181, 33, 'Paket Treatment', 2, 1, '2020-05-14 13:19:00');
INSERT INTO "public"."modul_projek" VALUES (175, 33, 'Dashboard', 20, 1, '2020-05-14 13:36:22');
INSERT INTO "public"."modul_projek" VALUES (182, 33, 'Kehadiran', 10, 1, '2020-05-14 13:38:18');
INSERT INTO "public"."modul_projek" VALUES (189, 33, 'History Treatment', 10, 1, '2020-05-14 13:38:26');
INSERT INTO "public"."modul_projek" VALUES (190, 33, 'Pembayaran', 10, 1, '2020-05-14 13:39:09');
INSERT INTO "public"."modul_projek" VALUES (191, 33, 'Reminder', 5, 1, '2020-05-14 13:39:25');
INSERT INTO "public"."modul_projek" VALUES (192, 33, 'Chat', 5, 1, '2020-05-14 13:39:31');
INSERT INTO "public"."modul_projek" VALUES (194, 33, 'Laporan', 5, 1, '2020-05-14 13:39:37');
INSERT INTO "public"."modul_projek" VALUES (118, 3, 'Master', 25, 1, '2020-05-14 14:38:12');
INSERT INTO "public"."modul_projek" VALUES (119, 3, 'Rekonsiliasi', 20, 1, '2020-05-14 14:38:27');
INSERT INTO "public"."modul_projek" VALUES (120, 3, 'Monitoring', 20, 1, '2020-05-14 14:38:39');
INSERT INTO "public"."modul_projek" VALUES (122, 3, 'Laporan Keuangan', 15, 1, '2020-05-14 14:39:51');
INSERT INTO "public"."modul_projek" VALUES (121, 3, 'Pembayaran Klien', 10, 1, '2020-05-14 14:40:01');
INSERT INTO "public"."modul_projek" VALUES (123, 3, 'Upload Dokumen', 10, 1, '2020-05-14 14:40:08');
INSERT INTO "public"."modul_projek" VALUES (117, 5, 'Dokumen Aset', 35, 1, '2020-05-14 14:45:01');
INSERT INTO "public"."modul_projek" VALUES (208, 35, 'Update Hari Besar Islam', 5, 1, '2020-05-18 13:26:59');
INSERT INTO "public"."modul_projek" VALUES (116, 5, 'Katalog', 35, 1, '2020-05-14 14:44:53');
INSERT INTO "public"."modul_projek" VALUES (115, 5, 'Informasi', 10, 1, '2020-05-14 14:45:21');
INSERT INTO "public"."modul_projek" VALUES (114, 5, 'Home', 20, 1, '2020-05-14 14:45:32');
INSERT INTO "public"."modul_projek" VALUES (210, 35, 'User', 5, 1, '2020-05-18 13:29:07');
INSERT INTO "public"."modul_projek" VALUES (206, 35, 'Halal', 10, 1, '2020-05-18 13:28:06');
INSERT INTO "public"."modul_projek" VALUES (207, 35, 'Fatwa', 5, 1, '2020-05-18 13:28:19');
INSERT INTO "public"."modul_projek" VALUES (203, 35, 'Peta Dakwah', 15, 1, '2020-05-18 13:28:29');
INSERT INTO "public"."modul_projek" VALUES (205, 35, 'Da''i', 10, 1, '2020-05-18 13:28:59');
INSERT INTO "public"."modul_projek" VALUES (209, 35, 'Ketentuan Zakat', 10, 1, '2020-05-18 13:29:18');
INSERT INTO "public"."modul_projek" VALUES (105, 56, 'Master Data', 25, 1, '2020-05-18 14:57:37');
INSERT INTO "public"."modul_projek" VALUES (223, 46, 'Iuran Warga', 25, 1, '2020-05-18 14:25:32');
INSERT INTO "public"."modul_projek" VALUES (226, 49, 'Pengaduan (Warga)', 0, 1, '2020-04-27 11:58:15');
INSERT INTO "public"."modul_projek" VALUES (227, 49, 'Poling (Warga)', 0, 1, '2020-04-27 13:03:32');
INSERT INTO "public"."modul_projek" VALUES (228, 49, 'Iuran (Warga)', 0, 1, '2020-04-27 13:04:39');
INSERT INTO "public"."modul_projek" VALUES (229, 49, 'Duty Officer (Warga)', 0, 1, '2020-04-27 13:05:18');
INSERT INTO "public"."modul_projek" VALUES (230, 49, 'Monitoring (Warga)', 0, 1, '2020-04-27 13:06:30');
INSERT INTO "public"."modul_projek" VALUES (231, 49, 'Pengantar (Warga)', 0, 1, '2020-04-27 13:11:18');
INSERT INTO "public"."modul_projek" VALUES (232, 49, 'informasi (Warga)', 0, 1, '2020-04-27 13:19:01');
INSERT INTO "public"."modul_projek" VALUES (233, 49, 'History (Warga)', 0, 1, '2020-04-27 13:19:46');
INSERT INTO "public"."modul_projek" VALUES (234, 49, 'Profile (Warga)', 0, 1, '2020-04-27 13:20:28');
INSERT INTO "public"."modul_projek" VALUES (235, 49, 'Pengaduan (RT Supervisor)', 0, 1, '2020-04-27 13:34:55');
INSERT INTO "public"."modul_projek" VALUES (236, 49, 'Poling (RT Supervisor)', 0, 1, '2020-04-27 13:35:09');
INSERT INTO "public"."modul_projek" VALUES (237, 49, 'Monitoring (RT Supervisor)', 0, 1, '2020-04-27 13:40:40');
INSERT INTO "public"."modul_projek" VALUES (238, 49, 'Duty Officer (RT Supervisor)', 0, 1, '2020-04-27 13:40:52');
INSERT INTO "public"."modul_projek" VALUES (239, 49, 'Pengantar (RT Supervisor)', 0, 1, '2020-04-27 13:41:17');
INSERT INTO "public"."modul_projek" VALUES (240, 49, 'Informasi (RT Supervisor)', 0, 1, '2020-04-27 13:41:33');
INSERT INTO "public"."modul_projek" VALUES (241, 49, 'Bendahara (RT Supervisor)', 0, 1, '2020-04-27 13:46:18');
INSERT INTO "public"."modul_projek" VALUES (242, 49, 'Penagihan (Clerk)', 0, 1, '2020-04-27 14:01:12');
INSERT INTO "public"."modul_projek" VALUES (243, 49, 'Profile (Clerk)', 0, 1, '2020-04-27 14:01:33');
INSERT INTO "public"."modul_projek" VALUES (244, 49, 'Iuran (Bendahara)', 0, 1, '2020-04-27 14:02:17');
INSERT INTO "public"."modul_projek" VALUES (245, 49, 'Pembayaran (Bendahara)', 0, 1, '2020-04-27 14:02:36');
INSERT INTO "public"."modul_projek" VALUES (246, 49, 'Profile (Bendahara)', 0, 1, '2020-04-27 14:02:52');
INSERT INTO "public"."modul_projek" VALUES (254, 41, 'Informasi User', 0, 1, '2020-04-27 15:08:35');
INSERT INTO "public"."modul_projek" VALUES (263, 59, 'Master Data', 15, 1, '2020-05-13 20:07:59');
INSERT INTO "public"."modul_projek" VALUES (264, 59, 'Kelola User', 5, 1, '2020-05-13 20:08:12');
INSERT INTO "public"."modul_projek" VALUES (265, 59, 'Pertanggungan', 40, 1, '2020-05-13 20:22:26');
INSERT INTO "public"."modul_projek" VALUES (266, 59, 'Klaim', 15, 1, '2020-05-14 09:21:25');
INSERT INTO "public"."modul_projek" VALUES (267, 59, 'Monitorng Klaim', 25, 1, '2020-05-14 09:21:47');
INSERT INTO "public"."modul_projek" VALUES (275, 39, 'Dashboard', 0, 1, '2020-05-14 09:29:18');
INSERT INTO "public"."modul_projek" VALUES (11, 2, 'Produk', 5, 1, '2020-05-14 09:38:10');
INSERT INTO "public"."modul_projek" VALUES (249, 22, 'Rekap Wisatawan (Petugas)', 20, 1, '2020-05-14 10:04:21');
INSERT INTO "public"."modul_projek" VALUES (251, 22, 'Rekap Wisatawan (Hotel)', 20, 1, '2020-05-14 10:04:30');
INSERT INTO "public"."modul_projek" VALUES (253, 22, 'Rekap Wisatawan (DTW)', 20, 1, '2020-05-14 10:04:38');
INSERT INTO "public"."modul_projek" VALUES (247, 22, 'Kelola DTW (Petugas)', 10, 1, '2020-05-14 10:04:48');
INSERT INTO "public"."modul_projek" VALUES (248, 22, 'Kelola Hotel (Petugas)', 10, 1, '2020-05-14 10:04:56');
INSERT INTO "public"."modul_projek" VALUES (250, 22, 'Input Wisatawan (Hotel)', 10, 1, '2020-05-14 10:05:02');
INSERT INTO "public"."modul_projek" VALUES (252, 22, 'Input Wisatawan (DTW)', 10, 1, '2020-05-14 10:05:12');
INSERT INTO "public"."modul_projek" VALUES (268, 61, 'Master Data', 20, 1, '2020-05-14 10:23:12');
INSERT INTO "public"."modul_projek" VALUES (273, 61, 'Akuntansi', 20, 1, '2020-05-14 10:23:34');
INSERT INTO "public"."modul_projek" VALUES (269, 61, 'Persediaan', 10, 1, '2020-05-14 10:23:53');
INSERT INTO "public"."modul_projek" VALUES (270, 61, 'Pembelian', 10, 1, '2020-05-14 10:24:02');
INSERT INTO "public"."modul_projek" VALUES (271, 61, 'Penjualan', 10, 1, '2020-05-14 10:24:07');
INSERT INTO "public"."modul_projek" VALUES (272, 61, 'Klinik', 15, 1, '2020-05-14 10:24:16');
INSERT INTO "public"."modul_projek" VALUES (274, 61, 'Laporan', 15, 1, '2020-05-14 10:24:30');
INSERT INTO "public"."modul_projek" VALUES (77, 24, 'Kredit Konsumtif', 30, 1, '2020-05-14 10:38:27');
INSERT INTO "public"."modul_projek" VALUES (57, 25, 'Penambahan Alur Bank Garansi Kredit Non Konsumtif', 70, 1, '2020-05-14 10:45:41');
INSERT INTO "public"."modul_projek" VALUES (276, 58, 'Angsuran', 10, 1, '2020-05-14 11:11:55');
INSERT INTO "public"."modul_projek" VALUES (42, 28, 'Pembayaran', 10, 1, '2020-05-14 13:09:44');
INSERT INTO "public"."modul_projek" VALUES (277, 58, 'Pelanggan dan Kasbon', 15, 1, '2020-05-14 11:12:18');
INSERT INTO "public"."modul_projek" VALUES (280, 58, 'Pengaturan', 5, 1, '2020-05-14 11:12:31');
INSERT INTO "public"."modul_projek" VALUES (279, 58, 'Tracking', 15, 1, '2020-05-14 11:12:46');
INSERT INTO "public"."modul_projek" VALUES (278, 58, 'Outlet', 10, 1, '2020-05-14 11:12:56');
INSERT INTO "public"."modul_projek" VALUES (284, 57, 'Tracking UMKM', 15, 1, '2020-05-14 11:22:55');
INSERT INTO "public"."modul_projek" VALUES (212, 35, 'Panduan Dakwah', 5, 1, '2020-05-18 13:27:14');
INSERT INTO "public"."modul_projek" VALUES (281, 57, 'Transaksi Pengeluaran', 15, 1, '2020-05-14 11:24:24');
INSERT INTO "public"."modul_projek" VALUES (213, 35, 'Khutbah dan Ceramah', 5, 1, '2020-05-18 13:27:27');
INSERT INTO "public"."modul_projek" VALUES (283, 57, 'Angsuran UMKM', 15, 1, '2020-05-14 11:25:30');
INSERT INTO "public"."modul_projek" VALUES (282, 57, 'Summary', 25, 1, '2020-05-14 11:25:54');
INSERT INTO "public"."modul_projek" VALUES (216, 35, 'Master', 10, 1, '2020-05-18 13:35:29');
INSERT INTO "public"."modul_projek" VALUES (211, 35, 'Pembayaran Zakat', 10, 1, '2020-05-18 13:36:13');
INSERT INTO "public"."modul_projek" VALUES (215, 35, 'Buku Saku', 5, 1, '2020-05-18 13:38:45');
INSERT INTO "public"."modul_projek" VALUES (214, 35, 'Media Dakwah', 5, 1, '2020-05-18 13:40:37');
INSERT INTO "public"."modul_projek" VALUES (255, 60, 'Pengajuan', 15, 1, '2020-05-18 13:44:10');
INSERT INTO "public"."modul_projek" VALUES (222, 46, 'Permohonan Surat Pengantar', 10, 1, '2020-05-18 14:23:36');
INSERT INTO "public"."modul_projek" VALUES (257, 60, 'Report Kehadiran', 10, 1, '2020-05-18 13:44:38');
INSERT INTO "public"."modul_projek" VALUES (256, 60, 'Perizinan', 15, 1, '2020-05-18 13:44:46');
INSERT INTO "public"."modul_projek" VALUES (259, 60, 'Master Data', 10, 1, '2020-05-18 13:45:45');
INSERT INTO "public"."modul_projek" VALUES (260, 60, 'Disposisi SDM', 10, 1, '2020-05-18 13:46:01');
INSERT INTO "public"."modul_projek" VALUES (261, 60, 'Upah Karyawan', 20, 1, '2020-05-18 13:47:44');
INSERT INTO "public"."modul_projek" VALUES (258, 60, 'Termination', 10, 1, '2020-05-18 13:50:24');
INSERT INTO "public"."modul_projek" VALUES (262, 60, 'Rekrutmen', 10, 1, '2020-05-18 13:57:31');
INSERT INTO "public"."modul_projek" VALUES (82, 42, 'History Perjalanan', 10, 1, '2020-05-18 14:18:47');
INSERT INTO "public"."modul_projek" VALUES (217, 46, 'Master Data', 15, 1, '2020-05-18 14:22:58');
INSERT INTO "public"."modul_projek" VALUES (285, 47, 'Pengaduan (Warga)', 0, 1, '2020-05-19 09:55:59');
INSERT INTO "public"."modul_projek" VALUES (286, 47, 'Polling (Warga)', 0, 1, '2020-05-19 10:05:53');
INSERT INTO "public"."modul_projek" VALUES (287, 47, 'Iuran (Warga)', 0, 1, '2020-05-19 10:06:14');
INSERT INTO "public"."modul_projek" VALUES (224, 46, 'Nomor Penting', 10, 1, '2020-05-18 14:24:09');
INSERT INTO "public"."modul_projek" VALUES (219, 46, 'Informasi', 10, 1, '2020-05-18 14:24:21');
INSERT INTO "public"."modul_projek" VALUES (291, 47, 'Informasi (Warga)', 0, 1, '2020-05-19 10:10:35');
INSERT INTO "public"."modul_projek" VALUES (218, 46, 'Registran', 10, 1, '2020-05-18 14:24:46');
INSERT INTO "public"."modul_projek" VALUES (220, 46, 'Monitoring', 20, 1, '2020-05-18 14:25:00');
INSERT INTO "public"."modul_projek" VALUES (288, 47, 'Duty Officer (Warga)', 0, 1, '2020-05-19 10:06:32');
INSERT INTO "public"."modul_projek" VALUES (289, 47, 'Monitoring (Warga)', 0, 1, '2020-05-19 10:07:42');
INSERT INTO "public"."modul_projek" VALUES (290, 47, 'Pengantar (Warga)', 0, 1, '2020-05-19 10:09:52');
INSERT INTO "public"."modul_projek" VALUES (292, 47, 'History (Warga)', 0, 1, '2020-05-19 10:14:34');
INSERT INTO "public"."modul_projek" VALUES (293, 47, 'Profile (Warga)', 0, 1, '2020-05-19 10:14:53');
INSERT INTO "public"."modul_projek" VALUES (294, 47, 'Pengaduan (RT Supervisor)', 0, 1, '2020-05-19 10:18:40');
INSERT INTO "public"."modul_projek" VALUES (295, 47, 'Poling (RT Supervisor)', 0, 1, '2020-05-19 10:18:58');
INSERT INTO "public"."modul_projek" VALUES (296, 47, 'Monitoring (RT Supervisor)', 0, 1, '2020-05-19 10:19:08');
INSERT INTO "public"."modul_projek" VALUES (297, 47, 'Duty Officer (RT Supervisor)', 0, 1, '2020-05-19 10:19:19');
INSERT INTO "public"."modul_projek" VALUES (298, 47, 'Pengantar (RT Supervisor)', 0, 1, '2020-05-19 10:19:29');
INSERT INTO "public"."modul_projek" VALUES (299, 47, 'Informasi (RT Supervisor)', 0, 1, '2020-05-19 10:19:37');
INSERT INTO "public"."modul_projek" VALUES (300, 47, 'Bendahara (RT Supervisor)', 0, 1, '2020-05-19 10:19:49');
INSERT INTO "public"."modul_projek" VALUES (301, 47, 'Iuran (Bendahara)', 0, 1, '2020-05-19 10:19:58');
INSERT INTO "public"."modul_projek" VALUES (302, 47, 'Pembayaran (Bendahara)', 0, 1, '2020-05-19 10:20:09');
INSERT INTO "public"."modul_projek" VALUES (303, 47, 'Profile (Bendahara)', 0, 1, '2020-05-19 10:20:24');

-- ----------------------------
-- Table structure for modul_tetap
-- ----------------------------
DROP TABLE IF EXISTS "public"."modul_tetap";
CREATE TABLE "public"."modul_tetap" (
  "id_modul_tetap" int8 NOT NULL DEFAULT nextval('"modul_tetap_ID_sequence"'::regclass),
  "id_posisi" int8,
  "nama_modul" varchar(255) COLLATE "pg_catalog"."default",
  "persentase" int8,
  "add_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of modul_tetap
-- ----------------------------
INSERT INTO "public"."modul_tetap" VALUES (1, 3, 'Wireframe', 60, '2020-04-24 12:34:25');
INSERT INTO "public"."modul_tetap" VALUES (2, 3, 'Database', 20, '2020-04-24 12:34:56');
INSERT INTO "public"."modul_tetap" VALUES (3, 3, 'SKPL', 10, '2020-04-24 12:36:42');
INSERT INTO "public"."modul_tetap" VALUES (4, 3, 'BRD', 10, '2020-04-24 12:36:51');
INSERT INTO "public"."modul_tetap" VALUES (6, 2, 'Proposal', 10, '2020-04-24 12:38:46');
INSERT INTO "public"."modul_tetap" VALUES (7, 2, 'Manual Book', 10, '2020-04-24 12:39:00');
INSERT INTO "public"."modul_tetap" VALUES (8, 2, 'Video Teaser', 40, '2020-04-24 12:39:55');
INSERT INTO "public"."modul_tetap" VALUES (5, 2, 'Mockup, Asset, Logo, Launcher', 40, '2020-04-24 12:40:23');
INSERT INTO "public"."modul_tetap" VALUES (9, 6, 'User Acceptance Test', 50, '2020-04-26 12:15:58');
INSERT INTO "public"."modul_tetap" VALUES (10, 6, 'Quality Assurance', 50, '2020-04-26 12:16:11');

-- ----------------------------
-- Table structure for persentase_projek
-- ----------------------------
DROP TABLE IF EXISTS "public"."persentase_projek";
CREATE TABLE "public"."persentase_projek" (
  "id_persentase_projek" int8 NOT NULL DEFAULT nextval('"persentase_projek_ID_sequence"'::regclass),
  "id_data_projek" int8,
  "id_pegawai" int8,
  "id_transaksi" int8,
  "jenis_modul" int8,
  "progres" float4,
  "add_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Table structure for progres_pegawai
-- ----------------------------
DROP TABLE IF EXISTS "public"."progres_pegawai";
CREATE TABLE "public"."progres_pegawai" (
  "id_progres_pegawai" int8 NOT NULL DEFAULT nextval('"progres_pegawai_ID_sequence"'::regclass),
  "id_data_projek" int8,
  "id_pegawai" int8,
  "progres" float4,
  "id_transaksi" int8,
  "jenis_modul" int8,
  "add_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Table structure for rekap_bulanan
-- ----------------------------
DROP TABLE IF EXISTS "public"."rekap_bulanan";
CREATE TABLE "public"."rekap_bulanan" (
  "id_rekap_bulanan" int8 NOT NULL DEFAULT nextval('"rekap_bulanan_ID_sequence"'::regclass),
  "id_persentase_projek" int8,
  "id_tim_projek" int8
)
;

-- ----------------------------
-- Table structure for rekap_mingguan
-- ----------------------------
DROP TABLE IF EXISTS "public"."rekap_mingguan";
CREATE TABLE "public"."rekap_mingguan" (
  "id_rekap_mingguan" int8 NOT NULL DEFAULT nextval('"rekap_mingguan_ID_sequence"'::regclass),
  "id_presentase_projek" int8
)
;

-- ----------------------------
-- Table structure for status_projek
-- ----------------------------
DROP TABLE IF EXISTS "public"."status_projek";
CREATE TABLE "public"."status_projek" (
  "id_status_projek" int8 DEFAULT nextval('"status_projek_ID_sequence"'::regclass),
  "nama_status" varchar(255) COLLATE "pg_catalog"."default",
  "add_time" timestamp(0) DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of status_projek
-- ----------------------------
INSERT INTO "public"."status_projek" VALUES (1, 'On Progress', '2020-04-12 06:48:39');
INSERT INTO "public"."status_projek" VALUES (2, 'Postponed', '2020-04-12 06:48:45');
INSERT INTO "public"."status_projek" VALUES (3, 'Waiting List', '2020-04-12 06:48:52');
INSERT INTO "public"."status_projek" VALUES (4, 'Clear Project', '2020-04-12 06:48:58');

-- ----------------------------
-- Table structure for tim_projek
-- ----------------------------
DROP TABLE IF EXISTS "public"."tim_projek";
CREATE TABLE "public"."tim_projek" (
  "id_tim_projek" int8 NOT NULL DEFAULT nextval('"tim_projek_ID_sequence"'::regclass),
  "id_data_projek" int8,
  "id_pegawai" int8,
  "status_pic" int8,
  "add_time" timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
)
;

-- ----------------------------
-- Records of tim_projek
-- ----------------------------
INSERT INTO "public"."tim_projek" VALUES (92, 53, 6, 0, '2020-04-26 10:32:39');
INSERT INTO "public"."tim_projek" VALUES (93, 53, 7, 0, '2020-04-26 10:32:47');
INSERT INTO "public"."tim_projek" VALUES (2, 1, 3, 0, '2020-04-20 18:37:28');
INSERT INTO "public"."tim_projek" VALUES (1, 1, 8, 1, '2020-04-20 18:37:00');
INSERT INTO "public"."tim_projek" VALUES (3, 1, 1, 0, '2020-04-20 18:38:44');
INSERT INTO "public"."tim_projek" VALUES (5, 24, 8, 1, '2020-04-24 12:42:04');
INSERT INTO "public"."tim_projek" VALUES (6, 24, 3, 0, '2020-04-24 12:42:22');
INSERT INTO "public"."tim_projek" VALUES (94, 58, 4, 1, '2020-04-26 10:33:28');
INSERT INTO "public"."tim_projek" VALUES (95, 58, 3, 0, '2020-04-26 10:33:40');
INSERT INTO "public"."tim_projek" VALUES (96, 58, 6, 0, '2020-04-26 10:33:46');
INSERT INTO "public"."tim_projek" VALUES (9, 16, 3, 0, '2020-04-24 12:46:34');
INSERT INTO "public"."tim_projek" VALUES (7, 16, 8, 1, '2020-04-24 12:45:41');
INSERT INTO "public"."tim_projek" VALUES (10, 2, 3, 1, '2020-04-24 12:47:14');
INSERT INTO "public"."tim_projek" VALUES (11, 56, 8, 1, '2020-04-24 12:48:44');
INSERT INTO "public"."tim_projek" VALUES (12, 56, 3, 0, '2020-04-24 12:48:50');
INSERT INTO "public"."tim_projek" VALUES (13, 16, 6, 0, '2020-04-24 12:49:46');
INSERT INTO "public"."tim_projek" VALUES (14, 17, 4, 1, '2020-04-24 12:51:10');
INSERT INTO "public"."tim_projek" VALUES (15, 17, 3, 0, '2020-04-24 12:52:42');
INSERT INTO "public"."tim_projek" VALUES (16, 45, 3, 1, '2020-04-24 12:56:53');
INSERT INTO "public"."tim_projek" VALUES (97, 58, 7, 0, '2020-04-26 10:33:55');
INSERT INTO "public"."tim_projek" VALUES (98, 58, 5, 0, '2020-04-26 10:34:06');
INSERT INTO "public"."tim_projek" VALUES (18, 7, 6, 0, '2020-04-24 12:57:16');
INSERT INTO "public"."tim_projek" VALUES (19, 7, 7, 0, '2020-04-24 12:57:25');
INSERT INTO "public"."tim_projek" VALUES (20, 7, 3, 0, '2020-04-24 12:58:06');
INSERT INTO "public"."tim_projek" VALUES (17, 7, 8, 1, '2020-04-24 12:57:10');
INSERT INTO "public"."tim_projek" VALUES (21, 6, 8, 1, '2020-04-24 12:59:00');
INSERT INTO "public"."tim_projek" VALUES (22, 6, 7, 0, '2020-04-24 12:59:09');
INSERT INTO "public"."tim_projek" VALUES (23, 6, 6, 0, '2020-04-24 13:01:30');
INSERT INTO "public"."tim_projek" VALUES (24, 6, 3, 0, '2020-04-24 13:01:36');
INSERT INTO "public"."tim_projek" VALUES (25, 3, 8, 1, '2020-04-24 13:02:43');
INSERT INTO "public"."tim_projek" VALUES (27, 3, 3, 0, '2020-04-24 13:03:35');
INSERT INTO "public"."tim_projek" VALUES (28, 3, 6, 0, '2020-04-24 13:03:46');
INSERT INTO "public"."tim_projek" VALUES (29, 3, 7, 0, '2020-04-24 13:05:35');
INSERT INTO "public"."tim_projek" VALUES (30, 5, 8, 1, '2020-04-24 13:05:55');
INSERT INTO "public"."tim_projek" VALUES (31, 5, 3, 0, '2020-04-24 13:06:01');
INSERT INTO "public"."tim_projek" VALUES (32, 5, 6, 0, '2020-04-24 13:06:06');
INSERT INTO "public"."tim_projek" VALUES (33, 5, 7, 0, '2020-04-24 13:06:12');
INSERT INTO "public"."tim_projek" VALUES (34, 47, 4, 1, '2020-04-24 13:12:59');
INSERT INTO "public"."tim_projek" VALUES (35, 47, 3, 0, '2020-04-24 13:13:05');
INSERT INTO "public"."tim_projek" VALUES (36, 47, 6, 0, '2020-04-24 13:13:34');
INSERT INTO "public"."tim_projek" VALUES (37, 47, 7, 0, '2020-04-24 13:14:13');
INSERT INTO "public"."tim_projek" VALUES (38, 46, 12, 1, '2020-04-24 13:16:13');
INSERT INTO "public"."tim_projek" VALUES (39, 46, 3, 0, '2020-04-24 13:16:19');
INSERT INTO "public"."tim_projek" VALUES (41, 46, 6, 0, '2020-04-24 13:17:40');
INSERT INTO "public"."tim_projek" VALUES (42, 46, 7, 0, '2020-04-24 13:17:55');
INSERT INTO "public"."tim_projek" VALUES (43, 49, 4, 1, '2020-04-24 13:19:04');
INSERT INTO "public"."tim_projek" VALUES (44, 49, 3, 0, '2020-04-24 13:19:11');
INSERT INTO "public"."tim_projek" VALUES (45, 49, 6, 0, '2020-04-24 13:19:28');
INSERT INTO "public"."tim_projek" VALUES (46, 49, 7, 0, '2020-04-24 13:19:34');
INSERT INTO "public"."tim_projek" VALUES (47, 48, 12, 1, '2020-04-26 10:17:36');
INSERT INTO "public"."tim_projek" VALUES (48, 48, 3, 0, '2020-04-26 10:17:44');
INSERT INTO "public"."tim_projek" VALUES (49, 48, 6, 0, '2020-04-26 10:18:06');
INSERT INTO "public"."tim_projek" VALUES (50, 48, 7, 0, '2020-04-26 10:18:11');
INSERT INTO "public"."tim_projek" VALUES (51, 27, 8, 1, '2020-04-26 10:18:27');
INSERT INTO "public"."tim_projek" VALUES (52, 27, 3, 0, '2020-04-26 10:18:33');
INSERT INTO "public"."tim_projek" VALUES (53, 27, 6, 0, '2020-04-26 10:18:41');
INSERT INTO "public"."tim_projek" VALUES (54, 27, 7, 0, '2020-04-26 10:19:00');
INSERT INTO "public"."tim_projek" VALUES (56, 22, 4, 1, '2020-04-26 10:19:36');
INSERT INTO "public"."tim_projek" VALUES (57, 22, 3, 0, '2020-04-26 10:19:40');
INSERT INTO "public"."tim_projek" VALUES (58, 22, 6, 0, '2020-04-26 10:19:49');
INSERT INTO "public"."tim_projek" VALUES (59, 21, 8, 1, '2020-04-26 10:20:12');
INSERT INTO "public"."tim_projek" VALUES (60, 21, 3, 0, '2020-04-26 10:20:41');
INSERT INTO "public"."tim_projek" VALUES (61, 21, 6, 0, '2020-04-26 10:20:51');
INSERT INTO "public"."tim_projek" VALUES (62, 36, 13, 1, '2020-04-26 10:22:44');
INSERT INTO "public"."tim_projek" VALUES (63, 36, 3, 0, '2020-04-26 10:22:51');
INSERT INTO "public"."tim_projek" VALUES (64, 36, 6, 0, '2020-04-26 10:22:56');
INSERT INTO "public"."tim_projek" VALUES (65, 36, 7, 0, '2020-04-26 10:23:04');
INSERT INTO "public"."tim_projek" VALUES (66, 26, 9, 1, '2020-04-26 10:25:09');
INSERT INTO "public"."tim_projek" VALUES (67, 26, 3, 0, '2020-04-26 10:25:49');
INSERT INTO "public"."tim_projek" VALUES (68, 26, 6, 0, '2020-04-26 10:26:21');
INSERT INTO "public"."tim_projek" VALUES (69, 26, 7, 0, '2020-04-26 10:26:27');
INSERT INTO "public"."tim_projek" VALUES (70, 28, 3, 1, '2020-04-26 10:26:42');
INSERT INTO "public"."tim_projek" VALUES (71, 28, 4, 0, '2020-04-26 10:26:58');
INSERT INTO "public"."tim_projek" VALUES (72, 28, 6, 0, '2020-04-26 10:27:05');
INSERT INTO "public"."tim_projek" VALUES (73, 28, 14, 0, '2020-04-26 10:28:05');
INSERT INTO "public"."tim_projek" VALUES (99, 57, 9, 1, '2020-04-26 10:35:13');
INSERT INTO "public"."tim_projek" VALUES (74, 31, 4, 1, '2020-04-26 10:28:24');
INSERT INTO "public"."tim_projek" VALUES (75, 31, 3, 0, '2020-04-26 10:28:40');
INSERT INTO "public"."tim_projek" VALUES (76, 31, 6, 0, '2020-04-26 10:28:47');
INSERT INTO "public"."tim_projek" VALUES (77, 37, 12, 1, '2020-04-26 10:29:14');
INSERT INTO "public"."tim_projek" VALUES (78, 37, 3, 0, '2020-04-26 10:29:21');
INSERT INTO "public"."tim_projek" VALUES (79, 37, 6, 0, '2020-04-26 10:29:28');
INSERT INTO "public"."tim_projek" VALUES (80, 37, 7, 0, '2020-04-26 10:29:37');
INSERT INTO "public"."tim_projek" VALUES (81, 25, 8, 1, '2020-04-26 10:30:20');
INSERT INTO "public"."tim_projek" VALUES (82, 25, 3, 0, '2020-04-26 10:30:27');
INSERT INTO "public"."tim_projek" VALUES (83, 25, 6, 0, '2020-04-26 10:30:36');
INSERT INTO "public"."tim_projek" VALUES (84, 25, 7, 0, '2020-04-26 10:30:44');
INSERT INTO "public"."tim_projek" VALUES (85, 55, 3, 1, '2020-04-26 10:31:05');
INSERT INTO "public"."tim_projek" VALUES (86, 55, 12, 0, '2020-04-26 10:31:23');
INSERT INTO "public"."tim_projek" VALUES (87, 55, 6, 0, '2020-04-26 10:31:33');
INSERT INTO "public"."tim_projek" VALUES (88, 55, 7, 0, '2020-04-26 10:31:42');
INSERT INTO "public"."tim_projek" VALUES (89, 53, 8, 0, '2020-04-26 10:32:06');
INSERT INTO "public"."tim_projek" VALUES (90, 53, 3, 1, '2020-04-26 10:32:14');
INSERT INTO "public"."tim_projek" VALUES (91, 53, 5, 0, '2020-04-26 10:32:33');
INSERT INTO "public"."tim_projek" VALUES (100, 57, 3, 0, '2020-04-26 10:35:22');
INSERT INTO "public"."tim_projek" VALUES (101, 57, 5, 0, '2020-04-26 10:35:28');
INSERT INTO "public"."tim_projek" VALUES (102, 57, 6, 0, '2020-04-26 10:35:36');
INSERT INTO "public"."tim_projek" VALUES (103, 57, 7, 0, '2020-04-26 10:35:45');
INSERT INTO "public"."tim_projek" VALUES (105, 38, 3, 0, '2020-04-26 10:42:52');
INSERT INTO "public"."tim_projek" VALUES (104, 38, 12, 1, '2020-04-26 10:37:19');
INSERT INTO "public"."tim_projek" VALUES (106, 38, 6, 0, '2020-04-26 10:44:08');
INSERT INTO "public"."tim_projek" VALUES (107, 38, 7, 0, '2020-04-26 10:44:14');
INSERT INTO "public"."tim_projek" VALUES (110, 41, 6, 0, '2020-04-26 10:44:48');
INSERT INTO "public"."tim_projek" VALUES (109, 41, 3, 0, '2020-04-26 10:44:35');
INSERT INTO "public"."tim_projek" VALUES (111, 41, 4, 1, '2020-04-26 10:45:28');
INSERT INTO "public"."tim_projek" VALUES (116, 42, 6, 0, '2020-04-26 10:50:11');
INSERT INTO "public"."tim_projek" VALUES (114, 42, 4, 1, '2020-04-26 10:49:35');
INSERT INTO "public"."tim_projek" VALUES (117, 42, 7, 0, '2020-04-26 10:50:27');
INSERT INTO "public"."tim_projek" VALUES (118, 43, 4, 1, '2020-04-26 10:51:08');
INSERT INTO "public"."tim_projek" VALUES (112, 42, 16, 0, '2020-04-26 10:48:16');
INSERT INTO "public"."tim_projek" VALUES (113, 42, 3, 0, '2020-04-26 10:48:22');
INSERT INTO "public"."tim_projek" VALUES (119, 43, 3, 0, '2020-04-26 10:51:20');
INSERT INTO "public"."tim_projek" VALUES (115, 42, 5, 0, '2020-04-26 10:49:45');
INSERT INTO "public"."tim_projek" VALUES (120, 43, 5, 0, '2020-04-26 10:51:46');
INSERT INTO "public"."tim_projek" VALUES (121, 43, 7, 0, '2020-04-26 10:51:54');
INSERT INTO "public"."tim_projek" VALUES (122, 43, 6, 0, '2020-04-26 10:52:03');
INSERT INTO "public"."tim_projek" VALUES (123, 39, 3, 1, '2020-04-26 10:52:53');
INSERT INTO "public"."tim_projek" VALUES (124, 39, 12, 0, '2020-04-26 10:53:06');
INSERT INTO "public"."tim_projek" VALUES (125, 39, 6, 0, '2020-04-26 10:53:24');
INSERT INTO "public"."tim_projek" VALUES (126, 39, 7, 0, '2020-04-26 10:53:51');
INSERT INTO "public"."tim_projek" VALUES (127, 23, 3, 1, '2020-04-26 10:54:26');
INSERT INTO "public"."tim_projek" VALUES (128, 23, 16, 0, '2020-04-26 10:54:40');
INSERT INTO "public"."tim_projek" VALUES (129, 23, 6, 0, '2020-04-26 10:54:49');
INSERT INTO "public"."tim_projek" VALUES (130, 23, 7, 0, '2020-04-26 10:54:56');
INSERT INTO "public"."tim_projek" VALUES (131, 23, 5, 0, '2020-04-26 10:55:03');
INSERT INTO "public"."tim_projek" VALUES (132, 59, 3, 0, '2020-04-26 10:55:30');
INSERT INTO "public"."tim_projek" VALUES (133, 59, 8, 1, '2020-04-26 10:55:37');
INSERT INTO "public"."tim_projek" VALUES (134, 59, 6, 0, '2020-04-26 10:55:45');
INSERT INTO "public"."tim_projek" VALUES (135, 59, 7, 0, '2020-04-26 10:56:15');
INSERT INTO "public"."tim_projek" VALUES (136, 50, 3, 0, '2020-04-26 10:56:28');
INSERT INTO "public"."tim_projek" VALUES (137, 20, 3, 1, '2020-04-26 10:57:33');
INSERT INTO "public"."tim_projek" VALUES (138, 20, 17, 0, '2020-04-26 10:57:41');
INSERT INTO "public"."tim_projek" VALUES (139, 51, 4, 1, '2020-04-26 10:57:54');
INSERT INTO "public"."tim_projek" VALUES (140, 51, 7, 0, '2020-04-26 10:58:03');
INSERT INTO "public"."tim_projek" VALUES (141, 33, 4, 0, '2020-04-26 10:58:24');
INSERT INTO "public"."tim_projek" VALUES (142, 33, 3, 1, '2020-04-26 10:58:28');
INSERT INTO "public"."tim_projek" VALUES (143, 33, 5, 0, '2020-04-26 10:58:38');
INSERT INTO "public"."tim_projek" VALUES (144, 33, 6, 0, '2020-04-26 10:58:49');
INSERT INTO "public"."tim_projek" VALUES (145, 33, 7, 0, '2020-04-26 10:58:56');
INSERT INTO "public"."tim_projek" VALUES (146, 60, 3, 1, '2020-04-26 11:04:27');
INSERT INTO "public"."tim_projek" VALUES (147, 60, 9, 0, '2020-04-26 11:04:36');
INSERT INTO "public"."tim_projek" VALUES (148, 60, 6, 0, '2020-04-26 11:04:46');
INSERT INTO "public"."tim_projek" VALUES (149, 60, 7, 0, '2020-04-26 11:04:54');
INSERT INTO "public"."tim_projek" VALUES (150, 61, 5, 1, '2020-04-26 11:07:24');
INSERT INTO "public"."tim_projek" VALUES (151, 61, 3, 0, '2020-04-26 11:07:34');
INSERT INTO "public"."tim_projek" VALUES (152, 34, 4, 1, '2020-05-13 20:05:01');
INSERT INTO "public"."tim_projek" VALUES (153, 34, 5, 0, '2020-05-13 20:06:11');
INSERT INTO "public"."tim_projek" VALUES (154, 34, 6, 0, '2020-05-13 20:06:20');
INSERT INTO "public"."tim_projek" VALUES (155, 34, 7, 0, '2020-05-13 20:06:28');
INSERT INTO "public"."tim_projek" VALUES (156, 35, 3, 0, '2020-05-18 15:35:35');
INSERT INTO "public"."tim_projek" VALUES (157, 35, 14, 0, '2020-05-18 15:35:43');
INSERT INTO "public"."tim_projek" VALUES (158, 35, 4, 1, '2020-05-18 15:35:52');
INSERT INTO "public"."tim_projek" VALUES (159, 4, 4, 1, '2020-05-18 16:23:15');
INSERT INTO "public"."tim_projek" VALUES (160, 4, 3, 0, '2020-05-18 16:23:21');
INSERT INTO "public"."tim_projek" VALUES (161, 62, 3, 1, '2020-05-22 10:27:56');
INSERT INTO "public"."tim_projek" VALUES (162, 62, 6, 0, '2020-05-22 10:30:06');

-- ----------------------------
-- Table structure for total_persentase
-- ----------------------------
DROP TABLE IF EXISTS "public"."total_persentase";
CREATE TABLE "public"."total_persentase" (
  "id_total_persentase" int8 NOT NULL,
  "id_data_projek" int8,
  "total_keseluruhan" float8,
  "add_time" timestamp(6)
)
;

-- ----------------------------
-- Table structure for total_persentase_modul
-- ----------------------------
DROP TABLE IF EXISTS "public"."total_persentase_modul";
CREATE TABLE "public"."total_persentase_modul" (
  "id_tot_persentase_modul" int8 NOT NULL,
  "id_total_persentase" int8,
  "id_posisi" int8,
  "total_modul" float8,
  "add_time" timestamp(6),
  "id_tim_projek" int8
)
;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"public"."data_projek_ID_sequence"', 63, true);
SELECT setval('"public"."induk_projek_ID_sequence"', 36, true);
SELECT setval('"public"."isi_modul_ID_sequence"', 6, true);
SELECT setval('"public"."jabatan_ID_sequence"', 4, true);
SELECT setval('"public"."laporan_pegawai_ID_sequence"', 263, true);
SELECT setval('"public"."laporan_projek_ID_sequence"', 2, false);
SELECT setval('"public"."modul_projek_ID_sequence"', 304, true);
SELECT setval('"public"."modul_tetap_ID_sequence"', 11, true);
SELECT setval('"public"."pegawai_ID_sequence"', 18, true);
SELECT setval('"public"."persentase_projek_ID_sequence"', 2, false);
SELECT setval('"public"."posisi_ID_sequence"', 7, true);
SELECT setval('"public"."progres_pegawai_ID_sequence"', 2, false);
SELECT setval('"public"."rekap_bulanan_ID_sequence"', 2, false);
SELECT setval('"public"."rekap_mingguan_ID_sequence"', 2, false);
ALTER SEQUENCE "public"."status_projek_ID_sequence"
OWNED BY "public"."status_projek"."id_status_projek";
SELECT setval('"public"."status_projek_ID_sequence"', 2, false);
SELECT setval('"public"."tim_projek_ID_sequence"', 163, true);
SELECT setval('"public"."user_ID_sequence"', 12, true);

-- ----------------------------
-- Primary Key structure for table data_induk_projek
-- ----------------------------
ALTER TABLE "public"."data_induk_projek" ADD CONSTRAINT "data_induk_projek_pkey" PRIMARY KEY ("id_induk_projek");

-- ----------------------------
-- Primary Key structure for table data_projek
-- ----------------------------
ALTER TABLE "public"."data_projek" ADD CONSTRAINT "data_projek_pkey" PRIMARY KEY ("id_data_projek");

-- ----------------------------
-- Primary Key structure for table isi_modul_projek
-- ----------------------------
ALTER TABLE "public"."isi_modul_projek" ADD CONSTRAINT "isi_modul_projek_pkey" PRIMARY KEY ("id_isi_modul");

-- ----------------------------
-- Primary Key structure for table laporan_per_projek
-- ----------------------------
ALTER TABLE "public"."laporan_per_projek" ADD CONSTRAINT "laporan_per_projek_pkey" PRIMARY KEY ("id_laporan_projek");

-- ----------------------------
-- Primary Key structure for table laporan_projek
-- ----------------------------
ALTER TABLE "public"."laporan_projek" ADD CONSTRAINT "laporan_per_pegawai_pkey" PRIMARY KEY ("id_laporan");

-- ----------------------------
-- Primary Key structure for table m_jabatan
-- ----------------------------
ALTER TABLE "public"."m_jabatan" ADD CONSTRAINT "m_jabatan_pkey" PRIMARY KEY ("id_jabatan");

-- ----------------------------
-- Primary Key structure for table m_pegawai
-- ----------------------------
ALTER TABLE "public"."m_pegawai" ADD CONSTRAINT "m_pegawai_pkey" PRIMARY KEY ("id_pegawai");

-- ----------------------------
-- Primary Key structure for table m_posisi
-- ----------------------------
ALTER TABLE "public"."m_posisi" ADD CONSTRAINT "m_posisi_pkey" PRIMARY KEY ("id_posisi");

-- ----------------------------
-- Primary Key structure for table m_user
-- ----------------------------
ALTER TABLE "public"."m_user" ADD CONSTRAINT "m_user_pkey" PRIMARY KEY ("id_user");

-- ----------------------------
-- Primary Key structure for table modul_projek
-- ----------------------------
ALTER TABLE "public"."modul_projek" ADD CONSTRAINT "modul_projek_pkey" PRIMARY KEY ("id_modul_projek");

-- ----------------------------
-- Primary Key structure for table modul_tetap
-- ----------------------------
ALTER TABLE "public"."modul_tetap" ADD CONSTRAINT "modul_tetap_pkey" PRIMARY KEY ("id_modul_tetap");

-- ----------------------------
-- Primary Key structure for table persentase_projek
-- ----------------------------
ALTER TABLE "public"."persentase_projek" ADD CONSTRAINT "persentase_projek_pkey" PRIMARY KEY ("id_persentase_projek");

-- ----------------------------
-- Primary Key structure for table progres_pegawai
-- ----------------------------
ALTER TABLE "public"."progres_pegawai" ADD CONSTRAINT "progres_pegawai_pkey" PRIMARY KEY ("id_progres_pegawai");

-- ----------------------------
-- Primary Key structure for table rekap_bulanan
-- ----------------------------
ALTER TABLE "public"."rekap_bulanan" ADD CONSTRAINT "rekap_bulanan_pkey" PRIMARY KEY ("id_rekap_bulanan");

-- ----------------------------
-- Primary Key structure for table rekap_mingguan
-- ----------------------------
ALTER TABLE "public"."rekap_mingguan" ADD CONSTRAINT "rekap_mingguan_pkey" PRIMARY KEY ("id_rekap_mingguan");

-- ----------------------------
-- Primary Key structure for table tim_projek
-- ----------------------------
ALTER TABLE "public"."tim_projek" ADD CONSTRAINT "tim_projek_pkey" PRIMARY KEY ("id_tim_projek");

-- ----------------------------
-- Primary Key structure for table total_persentase
-- ----------------------------
ALTER TABLE "public"."total_persentase" ADD CONSTRAINT "total_persentase_pkey" PRIMARY KEY ("id_total_persentase");

-- ----------------------------
-- Primary Key structure for table total_persentase_modul
-- ----------------------------
ALTER TABLE "public"."total_persentase_modul" ADD CONSTRAINT "total_persentase_modul_pkey" PRIMARY KEY ("id_tot_persentase_modul");
