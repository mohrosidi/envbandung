## code to prepare `DATASET` dataset goes here

library(tidyverse)

kual_sungai <- read_csv("http://data.bandung.go.id/dataset/507d8f81-76cc-43a1-b0ef-929a59e1a5ea/resource/a8b04e34-399c-4cd5-8f7e-a4f4ecbca7b5/download/data-kualitas-air-sungai-tahun-2018.csv") %>%
  select(No, Sungai = `Nama Sungai`, Storet_Score = `Nilai Indeks Storet`,
         Golongan, Kategori)

KangPisMan1 <- read_csv("http://data.bandung.go.id/dataset/f7069c54-8274-434b-a843-154100809b5e/resource/c341a0e3-0237-4bde-988c-c78f765168cf/download/data-kegiatan-sosialisasi-kangpisman-tahun-2018.csv") %>%
  select(No, Tanggal, Kegiatan = `Nama Kegiatan`, Narasumber, Tempat)
KangPisMan2 <- read_csv("http://data.bandung.go.id/dataset/f7069c54-8274-434b-a843-154100809b5e/resource/b7acfdb7-11da-468f-8ea1-a084fede01af/download/data-kegiatan-sosialisasi-kangpisman-tahun-2019.csv") %>%
  select(No, Tanggal, Kegiatan = `Nama Kegiatan`, Narasumber, Tempat)
KangPisMan <- bind_rows(KangPisMan1, KangPisMan2)

mitra_KangPisMan <- read_csv("http://data.bandung.go.id/dataset/edb203ff-064b-46a9-8e53-853f6568988b/resource/a6851944-4e73-49ad-8ad2-892befc750da/download/data-mitra-komersil-kangpisman-tahun-2019.csv") %>%
  select(Kategori, Mitra = `Nama Mitra`)

bank_sampah <- read_csv("http://data.bandung.go.id/dataset/90a91b72-12a7-4a3d-b14a-c3e1f780f565/resource/72ae9c53-28cd-4c56-ad56-5ca18abf83da/download/data-unit-bank-sampah-tahun-2018.csv")%>%
  select(Kategori, Instansi = `Nama Instansi`, Alamat, Kelurahan, Kecamatan) %>%
  mutate(Kelurahan = ifelse(Kelurahan=='-', NA, Kelurahan),
         Kecamatan = ifelse(Kecamatan=='-', NA, Kecamatan))

taman <- read_csv("http://data.bandung.go.id/dataset/057b0e8c-3597-4818-a376-e239ae10c65f/resource/bbdd95c9-3ca8-47e7-ba24-4746276011eb/download/data-luas-taman-di-sub-wilayah-kota-bandung-tahun-2018.csv") %>%
  select(Wilayah, Luas = `Luas (m2)`, Jumlah = `Jumlah Taman`)

tps <- read_csv("http://data.bandung.go.id/dataset/9f6ef681-6d4e-491c-8db7-86ba61ea517d/resource/654fc9f8-5851-4c44-8138-31c7e89adbf9/download/data-tps-kota-bandung-2018.csv") %>%
  select(No = No., Wilayah, Kecamatan, TPS = `Nama TPS`, Lokasi = `Lokasi TPS (Jalan)`,
         Sampah_masuk = `Sampah Yang Masuk (M3/hari)`, Sampah_diangkut = `Sampah Diangkut ke TPA (M3/hari)`,
         Ritasi, Peruntukkan, Jadwal_pengangkutan = `Jadwal Pengangkutan`, Sumber_sampah=`Sumber Sampah (RW - Kelurahan - Kecamatan)`)

bendungan <- read_csv("http://data.bandung.go.id/dataset/9d2a9857-d828-489a-ba9c-2784aaa3e921/resource/93f9ec1b-9cdc-4fb9-8b98-a5d590ec0639/download/data-bendungan---tahun-2008.csv") %>%
  select(No, Bendungan = `Nama Bendungan`, Sumber_air = `Sumber Air`, Kelurahan, Kecamatan, Keterangan) %>%
  mutate(Keterangan = ifelse(Keterangan=='-', NA, Keterangan))

mata_air <- read_csv("http://data.bandung.go.id/dataset/995b8ac6-05ce-4b57-a504-fc6492fcab28/resource/544d8cee-6ec5-4981-a401-4e685658b5bc/download/data-sumber-mata-air---tahun-2008.csv") %>%
  select(No, Wilayah, Mata_air = `Nama Mata Air`, Saluran = `Saluran/Sungai`,
         Kampung, Kelurahan, Kecamatan, Debit = `Debit Rata-rata I / det`,
         Penggunaan, Keterangan)

anak_sungai <- read_csv("http://data.bandung.go.id/dataset/22e9c22b-124f-4a58-9969-f1c652a66654/resource/ff548d54-c339-48a8-a2ac-6bffd87bb79e/download/data-panjang-anak-sungai-citarum-di-kota-bandung-2017.csv") %>%
  select(anak_sungai = `Nama Anak Sungai`, Panjang = `Panjang (km)`)

am1 <- read_csv("http://data.bandung.go.id/dataset/ac8e7947-9f98-458b-be51-06fa78cf427c/resource/0fd94759-ac74-4c2a-afec-07340ccdcb57/download/jumlah-pelanggan-air-minum-berdasarkan-golongan-tarif-2015.csv") %>%
  select(-X14 ) %>%
  rename(Golongan_tarif = `Golongan Tarif`) %>%
  mutate_all(function(x){ifelse(x=='-', NA, x)}) %>%
  gather(key="Bulan", value="Jumlah_pelanggan",-Golongan_tarif) %>%
  mutate(Jumlah_pelanggan=as.numeric(Jumlah_pelanggan), Tahun=2015)
am2 <- read_csv("http://data.bandung.go.id/dataset/ac8e7947-9f98-458b-be51-06fa78cf427c/resource/24285a01-14ba-4dcc-8559-8d077fdf040d/download/jumlah-pelanggan-air-minum-berdasarkan-golongan-tarif-2016.csv") %>%
  rename(Golongan_tarif = `Golongan Tarif`)  %>%
  gather(key="Bulan", value="Jumlah_pelanggan",-Golongan_tarif, convert = TRUE) %>%
  mutate(Tahun=2016)
am3 <- read_csv("http://data.bandung.go.id/dataset/ac8e7947-9f98-458b-be51-06fa78cf427c/resource/9e18c867-e578-4eb8-b5b6-4e996e79f2c4/download/jumlah-pelanggan-air-minum-berdasarkan-golongan-tarif-2017.csv") %>%
  rename(Golongan_tarif = `Golongan Tarif`, Jumlah_pelanggan = `Jumlah Pelanggan`) %>%
  mutate(Bulan = "Desember", Tahun = 2017) %>%
  select(Golongan_tarif, Bulan, Jumlah_pelanggan, Tahun)
am4 <- read_csv("http://data.bandung.go.id/dataset/ac8e7947-9f98-458b-be51-06fa78cf427c/resource/4ab7cf37-8c09-4829-a59b-3ead0bb5f429/download/jumlah-pelanggan-air-minum-berdasarkan-golongan-tarif-2018.csv") %>%
  select(-Agustus_1) %>%
  rename(Golongan_tarif=`Golongan Tarif`)  %>%
  gather(key="Bulan", value="Jumlah_pelanggan",-Golongan_tarif, convert = TRUE) %>%
  mutate(Tahun=2018)
pelanggan_am <- bind_rows(am1, am2, am3, am4)

usethis::use_data(kual_sungai, KangPisMan, mitra_KangPisMan, bank_sampah,
                  taman, tps, bendungan, mata_air, anak_sungai, pelanggan_am,
                  overwrite = TRUE)
