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


usethis::use_data(kual_sungai, KangPisMan, mitra_KangPisMan, bank_sampah,
                  taman,
                  overwrite = TRUE)
