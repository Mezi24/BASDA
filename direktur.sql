
CREATE TABLE `direktur` (
  `id_direktur` int(30) NOT NULL,
  `nama_direktur` varchar(25) DEFAULT NULL,
  `jenis_kelamin` varchar(25) DEFAULT NULL,
  `nomor_telepon` varchar(13) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
ALTER TABLE `direktur`
  ADD PRIMARY KEY (`id_direktur`);
COMMIT;

