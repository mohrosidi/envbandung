## code to prepare `DATASET` dataset goes here

library(tidyverse)
library(janitor)

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

il1 <- read_csv("http://data.bandung.go.id/dataset/6eba04c7-555f-418d-a7b9-6d7695ccf91e/resource/9684c1ee-6e3c-419d-aea6-03520e708fce/download/data-izin-lingkungan-tahun-2015.csv") %>%
  clean_names() %>%
  mutate(tahun=2015)%>%
  mutate_all(function(x){ifelse(x=='-', NA, x)})%>%
  select(no, nomor_izin, tahun, jenis_lingkungan:bentuk_perusahaan)
il2 <- read_csv("http://data.bandung.go.id/dataset/6eba04c7-555f-418d-a7b9-6d7695ccf91e/resource/6594a2a0-c92b-4b71-8471-841548cc097d/download/data-izin-lingkungan-tahun-2016.csv")%>%
  clean_names() %>%
  mutate(tahun=2016)%>%
  mutate_all(function(x){ifelse(x=='-', NA, x)})%>%
  select(no, nomor_izin, tahun, jenis_lingkungan:bentuk_perusahaan)
il3 <- read_csv("http://data.bandung.go.id/dataset/6eba04c7-555f-418d-a7b9-6d7695ccf91e/resource/0a9c1ab8-d529-419b-b6cb-ac17b4fd3642/download/data-izin-lingkungan-tahun-2017.csv")%>%
  clean_names() %>%
  mutate(tahun=2017)%>%
  mutate_all(function(x){ifelse(x=='-', NA, x)})%>%
  select(no, nomor_izin, tahun, jenis_lingkungan:bentuk_perusahaan)
il4 <- read_csv("http://data.bandung.go.id/dataset/6eba04c7-555f-418d-a7b9-6d7695ccf91e/resource/791d826a-bd6b-47be-a580-1e0ebe7287f2/download/data-izin-lingkungan-tahun-2018.csv")%>%
  clean_names() %>%
  mutate(tahun=2018)%>%
  mutate_all(function(x){ifelse(x=='-', NA, x)})%>%
  select(no, nomor_izin, tahun, jenis_lingkungan:bentuk_perusahaan)
izin_lingkungan <- bind_rows(il1,il2,il3,il4)

tanam_pohon1 <- read_csv("http://data.bandung.go.id/dataset/ee792310-f8d9-4812-9fc2-f4d17c765fc7/resource/76483bff-c81e-4381-a964-ced603e61d3e/download/data-penanaman-pohon-tahun-2012.csv") %>%
  clean_names()

tanam_pohon2 <- read_csv("http://data.bandung.go.id/dataset/ee792310-f8d9-4812-9fc2-f4d17c765fc7/resource/ae7da370-de47-4d9a-8d7f-1c6922fdaecb/download/rekapitulasi-penanaman-pohon-di-kota-bandung-tahun-2013.csv")%>%
  clean_names()

sw_prod_sumber <- read_csv("http://data.bandung.go.id/dataset/08434bde-58c5-4355-8d88-b779a278aa32/resource/95bcdbc2-6f0b-4bf0-8958-87ebe946cf77/download/rata-rata-produksi-sampah-di-kota-bandung-tahun-2017.csv") %>%
  select(-X3, Sumber, Prod_sampah = `ProduksiSampah(ton)`) %>%
  drop_na()

sw1 <- read_csv("http://data.bandung.go.id/dataset/eb104f7f-fdf3-4505-b532-b3ba8654b8cc/resource/7e17430b-f92f-4152-9156-9d43f9775583/download/produksi-sampah-menurut-jenisnya-tahun-2014.csv") %>%
  mutate(Tahun=2014, `Jenis Sampah`=tolower(`Jenis Sampah`)) %>%
  select(Tahun, Jenis_sampah=`Jenis Sampah`, Prod_sampah= `Produksi Sampah (m3/hari)`, Persentase) %>%
  mutate(Jenis_sampah = ifelse(Jenis_sampah=="sisa makanan/let", "sisa makanan",Jenis_sampah),
         Jenis_sampah = ifelse(Jenis_sampah=="kayu.ranting.daun","kayu, ranting, daun",Jenis_sampah),
         Jenis_sampah = ifelse(Jenis_sampah=="kertas/paper","kertas",Jenis_sampah),
         Jenis_sampah = ifelse(Jenis_sampah=="plastik/plastic/","plastik",Jenis_sampah),
         Jenis_sampah = ifelse(Jenis_sampah=="logam/ metal","logam",Jenis_sampah),
         Jenis_sampah = ifelse(Jenis_sampah=="kain / cloths","kain",Jenis_sampah),
         Jenis_sampah = ifelse(Jenis_sampah=="lainnya/ others","lainnya",Jenis_sampah))
sw2 <- read_csv("http://data.bandung.go.id/dataset/eb104f7f-fdf3-4505-b532-b3ba8654b8cc/resource/af610d2f-08bc-42c3-ac81-0a57384fef71/download/produksi-sampah-menurut-jenisnya-di-kota-bandung-2016.csv") %>%
  mutate(Tahun=2016, `Jenis Sampah`=tolower(`Jenis Sampah`)) %>%
  select(Tahun, Jenis_sampah=`Jenis Sampah`, Prod_sampah= `Produksi Sampah (m3/hari)`, Persentase) %>%
  mutate(Jenis_sampah = ifelse(Jenis_sampah=="sisa makanan / lees", "sisa makanan",Jenis_sampah),
         Jenis_sampah = ifelse(Jenis_sampah=="kayu.ranting.daun/twigs","kayu, ranting, daun",Jenis_sampah),
         Jenis_sampah = ifelse(Jenis_sampah=="kertas/paper","kertas",Jenis_sampah),
         Jenis_sampah = ifelse(Jenis_sampah=="plastik/plastic/","plastik",Jenis_sampah),
         Jenis_sampah = ifelse(Jenis_sampah=="logam/ metal","logam",Jenis_sampah),
         Jenis_sampah = ifelse(Jenis_sampah=="kain  cloths","kain",Jenis_sampah),
         Jenis_sampah = ifelse(Jenis_sampah=="lainnya/ others","lainnya",Jenis_sampah))
sw3 <- read_csv("http://data.bandung.go.id/dataset/eb104f7f-fdf3-4505-b532-b3ba8654b8cc/resource/43a464df-bd5a-4052-a37f-91156fcc3159/download/produksi-sampah-menurut-jenisnya-di-kota-bandung-2017---.csv") %>%
  mutate(Tahun=2017, `Jenis Sampah`=tolower(`Jenis Sampah`)) %>%
  select(Tahun, Jenis_sampah=`Jenis Sampah`, Prod_sampah= `Produksi Sampah (m3)`, Persentase) %>%
  drop_na()
sw_jenis <- bind_rows(sw1,sw2,sw3)

angin1 <- read_csv("http://data.bandung.go.id/dataset/03b7fc16-269d-48e3-aa78-e1b9c3ee2ab4/resource/7f2c146c-805c-487c-9659-05efbf4bdfa0/download/kecepatan-angin-kota-bandung-2013.csv") %>%
  mutate(tahun=2013, tanggal=1,
         bulan = case_when(bulan=="Januari"~1,
                           bulan=="Februari"~2,
                           bulan=="Maret"~3,
                           bulan=="April"~4,
                           bulan=="Mei"~5,
                           bulan=="Juni"~6,
                           bulan=="Juli"~7,
                           bulan=="Agustus"~8,
                           bulan=="September"~9,
                           bulan=="Oktober"~10,
                           bulan=="Nopember"~11,
                           bulan=="Desember"~12,
                           TRUE ~ 13)) %>%
  select(tanggal, bulan, tahun, kec_ratarata, kec_terbesar) %>%
  unite(tahun, bulan, tanggal, col="tanggal", sep="-") %>%
  mutate(tanggal=as.Date.character(tanggal))
angin2 <- read_csv("http://data.bandung.go.id/dataset/03b7fc16-269d-48e3-aa78-e1b9c3ee2ab4/resource/292ef032-d623-4ced-bf8f-be5e7b69ec34/download/kecepatan--angin--menurut--bulan--di--kota-bandung-2014.csv") %>%
  rename(bulan = Bulan, kec_ratarata=`Kecepatan angin rata-rata`,kec_terbesar=`Kecepatan angin terbesar`) %>%
  mutate(tahun=2014, tanggal=1,
         bulan = case_when(bulan=="Januari"~1,
                           bulan=="Februari"~2,
                           bulan=="Maret"~3,
                           bulan=="April"~4,
                           bulan=="Mei"~5,
                           bulan=="Juni"~6,
                           bulan=="Juli"~7,
                           bulan=="Agustus"~8,
                           bulan=="September"~9,
                           bulan=="Oktober"~10,
                           bulan=="November"~11,
                           bulan=="Desember"~12,
                           TRUE ~ 13)) %>%
  select(tanggal, bulan, tahun, kec_ratarata, kec_terbesar) %>%
  unite(tahun, bulan, tanggal, col="tanggal", sep="-") %>%
  mutate(tanggal=as.Date.character(tanggal))
angin3 <- read_csv("http://data.bandung.go.id/dataset/03b7fc16-269d-48e3-aa78-e1b9c3ee2ab4/resource/71cef9f9-fef1-42f6-bbef-01cd20ea3004/download/kecepatan-angin-menurut-bulan-di-kota-bandung-2015.csv") %>%
  rename(bulan = Bulan, kec_ratarata=`Kecepatan Rata-rata Angin (knot)`,kec_terbesar=`Kecepatan Terbesar Angin (knot)`) %>%
  mutate(tahun=2015, tanggal=1,
         bulan = case_when(bulan=="Januari/January"~1,
                           bulan=="Februari/February"~2,
                           bulan=="Maret/March"~3,
                           bulan=="April/April"~4,
                           bulan=="Mei/May"~5,
                           bulan=="Juni/June"~6,
                           bulan=="Juli/July"~7,
                           bulan=="Agustus/August"~8,
                           bulan=="September/September"~9,
                           bulan=="Oktober/October"~10,
                           bulan=="Nopember/November"~11,
                           bulan=="Desember/December"~12,
                           TRUE ~ 13)) %>%
  select(tanggal, bulan, tahun, kec_ratarata, kec_terbesar) %>%
  unite(tahun, bulan, tanggal, col="tanggal", sep="-") %>%
  mutate(tanggal=as.Date.character(tanggal))
angin4 <- read_csv("http://data.bandung.go.id/dataset/03b7fc16-269d-48e3-aa78-e1b9c3ee2ab4/resource/1e61ddab-5cb7-4e3b-a9cc-b2214fd093da/download/kecepatan-angin-menurut-bulan-di-kota-bandung-2016.csv") %>%
  rename(bulan = Bulan, kec_ratarata=`Kecepatan Rata-rata(knot)`,kec_terbesar=`Kecepatan Terbesar (knot)`) %>%
  mutate(tahun=2016, tanggal=1,
         bulan = case_when(bulan=="Januari / January"~1,
                           bulan=="Februari / February"~2,
                           bulan=="Maret/March"~3,
                           bulan=="April / April"~4,
                           bulan=="M e i / M a y"~5,
                           bulan=="Juni / June"~6,
                           bulan=="Juli / July"~7,
                           bulan=="Agustus / August"~8,
                           bulan=="September / September"~9,
                           bulan=="Oktober / October"~10,
                           bulan=="November / November"~11,
                           bulan=="Desember / December"~12,
                           TRUE ~ 13)) %>%
  select(tanggal, bulan, tahun, kec_ratarata, kec_terbesar) %>%
  unite(tahun, bulan, tanggal, col="tanggal", sep="-") %>%
  mutate(tanggal=as.Date.character(tanggal))
angin5 <- read_csv("http://data.bandung.go.id/dataset/03b7fc16-269d-48e3-aa78-e1b9c3ee2ab4/resource/2918a045-a4d1-4559-a0f4-f945373b5ce6/download/kecepatan-angin-menurut-bulan-di-kota-bandung-2017.csv") %>%
  mutate(tahun=2017, tanggal=1,
         Bulan = case_when(Bulan=="Januari"~1,
                           Bulan=="Februari"~2,
                           Bulan=="Maret"~3,
                           Bulan=="April"~4,
                           Bulan=="Mei"~5,
                           Bulan=="Juni"~6,
                           Bulan=="Juli"~7,
                           Bulan=="Agustus"~8,
                           Bulan=="September"~9,
                           Bulan=="Oktober"~10,
                           Bulan=="November"~11,
                           Bulan=="Desember"~12,
                           TRUE ~ 13)) %>%
  select(tanggal, bulan=Bulan, tahun, kec_ratarata=`Kecepatan Angin Rata-rata (knot)`,kec_terbesar=`Kecepatan Angin Terbesar (knot)`) %>%
  unite(tahun, bulan, tanggal, col="tanggal", sep="-") %>%
  mutate(tanggal=as.Date.character(tanggal))
angin<-bind_rows(angin1, angin2, angin3, angin4, angin5)

air1 <- read_csv("http://data.bandung.go.id/dataset/0ce8520e-5fef-404c-992c-bced50a719a4/resource/67ef3f2c-aed8-4a77-bacf-94ea2b4e4248/download/keadaan-udara-menurut-bulan-kota-bandung-2013.csv") %>%
  mutate(Tahun=2013) %>%
  select(Bulan, Tahun, Penguapan=`Penguapan (mm)`
         , Tekanan_udara=`Tekanan udara (mb)`, Kelembapan_nisbi=`Kelembapan Nisbi (%)`)
air2 <- read_csv("http://data.bandung.go.id/dataset/0ce8520e-5fef-404c-992c-bced50a719a4/resource/4d6661dd-364c-4e7f-99b1-2d91d3a94a13/download/keadaan-udara-menurut-bulan-kota-bandung-2014.csv") %>%
  mutate(Tahun=2014) %>%
  select(Bulan, Tahun, Penguapan=`Penguapan (mm)`
         , Tekanan_udara=`Tekanan udara (mb)`, Kelembapan_nisbi=`Kelembapan Nisbi (%)`)
air3 <- read_csv("http://data.bandung.go.id/dataset/0ce8520e-5fef-404c-992c-bced50a719a4/resource/a70ac0ba-57a4-4bde-b68b-6ed3c4abfe45/download/keadaan-udara-menurut-bulan-di-kota-bandung-2015.csv") %>%
  mutate(Tahun=2015) %>%
  select(Bulan, Tahun, Penguapan=`Penguapan (mm)`
         , Tekanan_udara=`Tekanan Udara (mb)`, Kelembapan_nisbi=`Kelembapan Nisbi`) %>%
  separate(Bulan, into=c("Bulan", "buang"), sep="/") %>%
  mutate(Bulan=ifelse(Bulan=="Nopember",buang, Bulan)) %>%
  select(-buang)
air4 <- read_csv("http://data.bandung.go.id/dataset/0ce8520e-5fef-404c-992c-bced50a719a4/resource/47c51325-340d-4b40-9b19-d661fb890480/download/keadaan-udara-menurut-bulan-di-kota-bandung-2016.csv") %>%
  mutate(Tahun=2016) %>%
  select(Bulan, Tahun, Penguapan=`Penguapan(mm)`
         , Tekanan_udara=`Tekanan Udara (mb)`, Kelembapan_nisbi=`Kelembapan Nisbi (%)`) %>%
  separate(Bulan, into=c("Bulan", "buang"), sep=" / ") %>%
  mutate(Bulan=ifelse(Bulan=="M e i","Mei", Bulan)) %>%
  select(-buang) %>%
  drop_na()
air5 <- read_csv("http://data.bandung.go.id/dataset/0ce8520e-5fef-404c-992c-bced50a719a4/resource/ed19dfa3-03d0-4210-a88e-ce8e977946a2/download/keadaan-udara-menurut-bulan-di-kota-bandung-2017.csv") %>%
  mutate(Tahun=2017) %>%
  select(Bulan=`B u l a n`, Tahun, Penguapan=`Penguapan (mm)`
         , Tekanan_udara=`Tekanan Udara (mb)`, Kelembapan_nisbi=`Kelembapan Nisbi (%)`) %>%
  drop_na()
udara <- bind_rows(air1,air2,air3,air4,air5)

sanitasi <- read_csv("http://data.bandung.go.id/dataset/4b071d2d-39a0-4ab1-a9a5-f3c2d2ff0fd1/resource/c9f5a1ff-fe25-4026-a01e-d3bb8403d632/download/data-rekapitulasi-jumlah-kepala-keluarga-yang--memenuhi-sanitasi-tahun-2017.csv") %>%
  rename(Jumlah_krt = `Jumlah Kepala Rumah Tangga`,Jumlah_kk = `Jumlah Kepala Keluarga`, Jumlah_akses_mck = `Jumlah Masyarakat memiliki akses MCK keluarga / MCK bersama (rumah tangga)`,
         Jumlah_mck_sesuai = `Jumlah MCK keluarga/MCK bersama sesuai persyaratan teknis (memiliki kloset leher angsa yang terhubung dengan septic-tank) (rumah tangga)`)

cakupan_am <- read_csv("http://data.bandung.go.id/dataset/afd36b21-4723-454d-ad34-251e876811c5/resource/5f0d9637-ff71-4781-8e3f-7718f5f8d523/download/data-rekapitulasi-jumlah-cakupan-air-minum-per-kelurahan-tahun-2017.csv") %>%
  rename(Jumlah_krt = `Jumlah Kepala Rumah Tangga`, Jumlah_kk =`Jumlah Kepala Keluarga`,
         Jumlah_masy_terlayani = `Jumlah Masyarakat terlayani Sarana Air Minum untuk minum, mandi, dan cuci (perpipaan atau non perpipaan terlindungi yang layak) (rumah tangga)`)

cakupan_am_rt <- read_csv("http://data.bandung.go.id/dataset/9c147ed0-6b08-4f46-97c2-2fd1fd0ff765/resource/3ed0732b-465a-438f-b063-9046e8d7597e/download/data-rekapitulasi-jumlah-cakupan-air-minum-per-rt-tahun-2017.csv") %>%
  rename(Jumlah_krt = `Jumlah Kepala Rumah Tangga`, Jumlah_kk = `Jumlah Kepala Keluarga`,
         Jumlah_masy_terlayani = `Jumlah Masyarakat terlayani Sarana Air Minum untuk minum, mandi, dan cuci (perpipaan atau non perpipaan terlindungi yang layak) (rumah tangga)`,
         Persen_terlayani = `Prosentase Masyarakat terlayani Sarana Air Minum untuk minum, mandi, dan cuci (perpipaan atau non perpipaan terlindungi yang layak)`)

air_min_lim1 <- read_csv("https://git.bandung.go.id/opendatabdg/databdg/raw/master/resources/6cd/319/jumlah-pelanggan-air-minum--limbah-pdam-tirtawening-tahun-2015.csv") %>%
  mutate(tahun = 2015) %>%
  clean_names() %>%
  select(bulan, tahun, everything())
air_min_lim2 <- read_csv("http://data.bandung.go.id/dataset/3839e74a-44a1-42c9-b7df-561090bd59f0/resource/f2a85545-b2b1-4826-847a-488879f5889d/download/jumlah-pelanggan-air-minum-dan-air-limbah-pdam-2016.csv") %>%
  mutate(tahun = 2016) %>%
  clean_names() %>%
  select(bulan, tahun, everything()) %>%
  drop_na()
air_minum_limbah <- bind_rows(air_min_lim1, air_min_lim2)

penggunaan_tanah <- read_csv("http://data.bandung.go.id/dataset/a79ec898-fef1-4f67-b352-2b21ef75c3f5/resource/04959ff9-aaed-4386-af09-6267af4de6d5/download/penggunaan-tanah-berdasarkan-jenis-penggunaan-di-kota-bandung-2016-.csv") %>%
  clean_names() %>%
  select(-x3)

armada1 <- read_csv("https://git.bandung.go.id/opendatabdg/databdg/raw/master/resources/b85/b21/data-jumlah-armada-pengangkut-sampah-2015---bandung-selatan.csv") %>%
  mutate(wilayah="Bandung Selatan") %>%
  select(wilayah, no_pol = `Nomor Polisi`, merk = `Merk Kendaraan`,
         jenis = `Jenis Kendaraan`, kapasitas = `Kapasitas (M3)`, tahun= Tahun, pengemudi = Pengemudi)
armada2 <- read_csv("https://git.bandung.go.id/opendatabdg/databdg/raw/master/resources/9df/f24/data-jumlah-armada-pengangkut-sampah-2015---bandung-timur.csv") %>%
  mutate(wilayah="Bandung Timur") %>%
  select(wilayah, no_pol = `Nomor Polisi`, merk = `Merk Kendaraan`,
         jenis = `Jenis Kendaraan`, kapasitas = Kapasitas, tahun= Tahun, pengemudi = Pengemudi) %>%
  separate(kapasitas, into=c("kapasitas", "buang"), sep=" ") %>%
  select(-buang) %>%
  mutate(kapasitas=as.numeric(kapasitas))
armada3 <- read_csv("https://git.bandung.go.id/opendatabdg/databdg/raw/master/resources/989/06f/data-jumlah-armada-pengangkut-sampah-2015---bandung-utara.csv") %>%
  mutate(wilayah="Bandung Utara") %>%
  select(wilayah, no_pol = `Nomor  Polisi`, merk = `Merk Kendaraan`,
         jenis = `Jenis Kendaraan`, kapasitas = `Kapasitas(M3)`, tahun= Tahun, pengemudi = Pengemudi)
armada_sampah <- bind_rows(armada1, armada2, armada3)

sapuan_jalan <- read_csv("https://git.bandung.go.id/opendatabdg/databdg/raw/master/resources/67d/9c8/data-hasil-sapuan-yang-dilaksanakan-oleh-pihak-ketiga.csv") %>%
  clean_names() %>%
  rename(jumlah_sampah_m3 = jumlah_sampah_m_u_00b3)

penc1 <- read_csv("https://git.bandung.go.id/opendatabdg/databdg/raw/master/resources/409/36d/vrataanhariandago.csv")
penc2 <- read_csv("https://git.bandung.go.id/opendatabdg/databdg/raw/master/resources/51d/b09/vrataanhariangedebage.csv")
penc3 <- read_csv("https://git.bandung.go.id/opendatabdg/databdg/raw/master/resources/f80/746/vrataanharianujungberung.csv")
penc4 <- read_csv("https://git.bandung.go.id/opendatabdg/databdg/raw/master/resources/b96/45d/vrataanharianpajajaran.csv")
penc_udara_suhu <- bind_rows(penc2, penc3, penc4) %>%
  rename(stasiun = statsiun) %>%
  bind_rows(penc1)

lokasi_tps <- read_csv("https://git.bandung.go.id/opendatabdg/databdg/raw/master/resources/8c9/707/data-sebaran-lokasi-tps-kota-bandung-tahun-2016.csv") %>%
  clean_names() %>%
  rename(sampah_masuk = sampah_yang_masuk_u_00b1_m_u_00b3_hari,
         sampah_diangkut = sampah_diangkut_ke_tpa_u_00b1_m_u_00b3_hari,
         lokasi_tps = lokasi_tps_jalan)

ambien <- read_csv("https://git.bandung.go.id/opendatabdg/databdg/raw/master/resources/186/c8e/hasil-pengukuran-kualitas-udara-ambien-roadside-berdasarkan-jenis-udara-tahun-2014.csv") %>%
  clean_names()

bak_sampah <- read_csv("https://git.bandung.go.id/opendatabdg/databdg/raw/master/resources/387/1bb/kapasitas-bak-pengangkutan-sampah.csv")

usethis::use_data(kual_sungai, KangPisMan, mitra_KangPisMan, bank_sampah,
                  taman, tps, bendungan, mata_air, anak_sungai, pelanggan_am,
                  izin_lingkungan, tanam_pohon1, tanam_pohon2, sw_prod_sumber,
                  sw_jenis, angin, udara, sanitasi, cakupan_am, cakupan_am_rt,
                  air_minum_limbah, penggunaan_tanah, armada_sampah, sapuan_jalan,
                  penc_udara_suhu, lokasi_tps, ambien, bak_sampah,
                  overwrite = TRUE)
