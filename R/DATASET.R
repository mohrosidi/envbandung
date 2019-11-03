#' @title Kualitas Air Sungai Kota Bandung Tahun 2018
#' @description Dataset ini berisi data kualitas air sungai di Kota Bandung.
#' @format Tibble dengan 56 baris dan 5 variabel:
#' \describe{
#'   \item{\code{No}}{ }
#'   \item{\code{Sungai}}{nama sungai}
#'   \item{\code{Storet_Score}}{nilai indeks STORET}
#'   \item{\code{Golongan}}{golongan kelas sungai berdasarkan nilai indeks STORET}
#'   \item{\code{Kategori}}{kategori sungai berdasarkan golongan kelas sungai}
#'}
#' @source \url{http://data.bandung.go.id/dataset/kualitas-air-sungai-kota-bandung}
"kual_sungai"

#' @title Kegiatan Sosialisasi KangPisMan Kota Bandung
#' @description Dataset ini berisi data kegiatan sosialisasi KangPisMan Kota Bandung dari tahun 2018 sampai 2019.
#' @format Tibble dengan 27 baris dan 5 variabel:
#' \describe{
#'   \item{\code{No}}{ }
#'   \item{\code{Tanggal}}{tanggal pelaksanaan sosialisasi}
#'   \item{\code{Kegiatan}}{nama kegiatan}
#'   \item{\code{Narasumber}}{narasumber kegiatan sosialisasi}
#'   \item{\code{Tempat}}{lokasi sosialisasi}
#'}
#' @source \url{http://data.bandung.go.id/dataset/kegiatan-sosialisasi-kangpisman-kota-bandung}
"KangPisMan"

#' @title Data Mitra Komersial KangPisman - Tahun 2019
#' @description Dataset ini berisi data mitra komersial KangPisMan.
#' @format Tibble dengan 27 baris dan 2 variabel:
#' \describe{
#'   \item{\code{Kategori}}{kategori kegiatan komersial}
#'   \item{\code{Mitra}}{nama mitra}
#'}
#' @source \url{http://data.bandung.go.id/dataset/mitra-komersial-kangpisman}
"mitra_KangPisMan"

#' @title Unit Bank Sampah Binaan Bank Sampah Resik - Tahun 2018
#' @description Dataset ini data unit bank sampah binaan bank sampah resik PD Kebersihan Kota Bandung.
#' @format Tibble dengan 110 baris dan 5 variabel:
#' \describe{
#'   \item{\code{Kategori}}{kategori instansi}
#'   \item{\code{Instansi}}{nama instansi}
#'   \item{\code{Alamat}}{alamat instansi}
#'   \item{\code{Kelurahan}}{lokasi kelurahan instansi}
#'   \item{\code{Kecamatan}}{lokasi kecamatan instansi}
#'}
#' @source \url{http://data.bandung.go.id/dataset/unit-bank-sampah-binaan-bank-sampah-resik}
"bank_sampah"

#' @title Luas Taman Kota Di Sub Wilayah Kota (SWK) Bandung Tahun 2018
#' @description Dataset ini berisi data luas taman kota di Sub Wilayah (SWK) Kota Bandung.
#' @format Tibble dengan 6 baris dan 3 variabel:
#' \describe{
#'   \item{\code{Wilayah}}{nama wilayah}
#'   \item{\code{Luas}}{luas taman (m2)}
#'   \item{\code{Jumlah}}{jumlah taman}
#'}
#' @source \url{http://data.bandung.go.id/dataset/luas-taman-kota-di-wilayah-kota-bandung}
"taman"

#' @title Lokasi Tempat Pembuangan Sampah Kota Bandung
#' @description Dataset ini berisi data tempat pembuangan sampah kota Bandung.
#' @format Tibble dengan 159 baris dan 11 variabel:
#' \describe{
#'   \item{\code{No}}{ }
#'   \item{\code{Wilayah}}{nama wilayah layanan}
#'   \item{\code{Kecamatan}}{nama kecamatan}
#'   \item{\code{TPS}}{nama tps}
#'   \item{\code{Lokasi}}{lokasi tps}
#'   \item{\code{Sampah_masuk}}{volume sampah masuk (m3/hari)}
#'   \item{\code{Sampah_diangkut}}{volume sampah diangkut ke tpa (m3/hari)}
#'   \item{\code{Ritasi}}{jumlah ritasi}
#'   \item{\code{Peruntukkan}}{peruntukan tps}
#'   \item{\code{Jadwal_pengangkutan}}{jadwal pengangkutan}
#'   \item{\code{Sumber_sampah}}{sumber sampah yang masuk ke tps}
#'}
#' @source \url{http://data.bandung.go.id/dataset/lokasi-tempat-pembuangan-sampah-kota-bandung}
"tps"

#' @title Bendungan di Kota Bandung
#' @description Dataset ini berisi data bendungan di Kota Bandung
#' @format Tibble dengan 42 baris dan 6 variabel:
#' \describe{
#'   \item{\code{No}}{ }
#'   \item{\code{Bendungan}}{nama bendungan}
#'   \item{\code{Sumber_air}}{sumber air bendungan}
#'   \item{\code{Kelurahan}}{lokasi kelurahan bendungan}
#'   \item{\code{Kecamatan}}{lokasi kecamatan bendungan}
#'   \item{\code{Keterangan}}{keterangan terkait pemanfaatan bendungan}
#'}
#' @source \url{http://data.bandung.go.id/dataset/bendungan-di-kota-bandung}
"bendungan"

#' @title Sumber Mata Air di Kota Bandung
#' @description Dataset ini berisi data sumber mata air di Kota Bandung.
#' @format Tibble dengan 82 baris 9 variabel:
#' \describe{
#'   \item{\code{No}}{ }
#'   \item{\code{Wilayah}}{nama wilayah}
#'   \item{\code{Mata_air}}{nama mata air}
#'   \item{\code{Saluran}}{saluran/sungai lokasi air mata air mengalir}
#'   \item{\code{Kampung}}{nama kampung mata air}
#'   \item{\code{Kelurahan}}{nama kelurahan}
#'   \item{\code{Kecamatan}}{nama kecamatan}
#'   \item{\code{Debit}}{debit rata-rata (l/detik)}
#'   \item{\code{Penggunaan}}{pemanfaatan mata air}
#'   \item{\code{Keterangan}}{keterangan kepemilikan lahan mata air}
#'}
#' @source \url{http://data.bandung.go.id/dataset/sumber-mata-air-di-kota-bandung}
"mata_air"

#' @title Panjang Anak Sungai Citarum di Kota Bandung
#' @description Dataset ini berisi data panjang anak sungai citarum yang terdiri dari 15 anak sungai.
#' @format Tibble dengan 15 baris dan 2 variabel:
#' \describe{
#'   \item{\code{anak_sungai}}{nama anak sungai}
#'   \item{\code{Panjang}}{panjang anak sungai (km)}
#'}
#' @source \url{http://data.bandung.go.id/dataset/panjang-anak-sungai-citarum-di-kota-bandung}
"anak_sungai"

#' @title Jumlah Pelanggan Air Minum Menurut Golongan Tarif di Kota Bandung
#' @description Dataset ini berisi mengenai data jumlah pelanggan air minum menurut golongan tarif di Kota Bandung.
#' @format Tibble dengan 396 baris dan 4 variabel:
#' \describe{
#'   \item{\code{Golongan_tarif}}{golongan tarif}
#'   \item{\code{Bulan}}{bulan pencatatan}
#'   \item{\code{Jumlah_pelanggan}}{jumlah pelanggan}
#'   \item{\code{Tahun}}{tahun pencatatan}
#'}
#' @note Golongan tarif : 1A (Sosial Umum), 1B (Sosial Khusus), 2A1 (Rumah Tangga), 2A2 (Rumah Tangga), 2A3 (Rumah Tangga), 2A4 (Rumah Tangga), 2B (Instansi), 3A (Niaga Kecil), 3B (Niaga Menengah/Besar), 4A (Industri Kecil), 4B (Industri Menengah/Besar)
#' @source \url{http://data.bandung.go.id/dataset/jumlah-pelanggan-air-minum-menurut-golongan-tarif-di-kota-bandung}
"pelanggan_am"

#' @title Izin Lingkungan di Kota Bandung
#' @description Dataset ini berisi data izin lingkungan di Kota Bandung.
#' @format Tibble dengan 321 baris dan 7 variabel:
#' \describe{
#'   \item{\code{no}}{}
#'   \item{\code{nomor_izin}}{}
#'   \item{\code{tahun}}{}
#'   \item{\code{jenis_lingkungan}}{}
#'   \item{\code{nama_pemohon}}{}
#'   \item{\code{nama_perusahaan}}{}
#'   \item{\code{bentuk_perusahaan}}{}
#'}
#' @source \url{http://data.bandung.go.id/dataset/izin-lingkungan-di-kota-bandung}
"izin_lingkungan"

#' @title Penanaman Pohon Di Kota Bandung 1
#' @description Dataset mengenai Rekapitulasi Penanaman Pohon Di Kota Bandung berdasarkan kecamatan pada tahun 2012.
#' @format Tibble dengan 30 baris dan 3 variabel:
#' \describe{
#'   \item{\code{nama_kecamtan}}{nama kecamatan}
#'   \item{\code{pohon_pelindung}}{jumlah pohon pelindung yang ditanam}
#'   \item{\code{pohon_produktif}}{jumlah pohon produktif yang ditanam}
#'}
#' @source \url{http://data.bandung.go.id/dataset/penanaman-pohon-di-kota-bandung/resource/76483bff-c81e-4381-a964-ced603e61d3e}
"tanam_pohon1"

#' @title Penanaman Pohon Di Kota Bandung 2
#' @description Dataset mengenai Rekapitulasi Penanaman Pohon Di Kota Bandung berdasarkan SKPD pada tahun 2013.
#' @format A data frame with 4 rows and 3 variables:
#' \describe{
#'   \item{\code{skpd}}{satuan kerja perangkat daerah}
#'   \item{\code{pohon_pelindung}}{jumlah pohon pelindung yang ditanam}
#'   \item{\code{pohon_produktif}}{jumlah pohon produktif yang ditanam}
#'}
#' @source \url{http://data.bandung.go.id/dataset/penanaman-pohon-di-kota-bandung/resource/ae7da370-de47-4d9a-8d7f-1c6922fdaecb}
"tanam_pohon2"

#' @title Rata-rata Produksi Sampah Berdasarkan Sumber Sampah di Kota Bandung
#' @description Dataset ini berisi data rata-rata produksi sampah berdasarkan sumber sampah di Kota Bandung.
#' @format Tibble dengan 6 baris dan 2 variabel:
#' \describe{
#'   \item{\code{Sumber}}{sumber sampah}
#'   \item{\code{Prod_sampah}}{produksi sampah (ton)}
#'}
#' @source \url{http://data.bandung.go.id/dataset/rata-rata-produksi-sampah-berdasarkan-sumber-sampah-di-kota-bandung}
"sw_prod_sumber"

#' @title Produksi Jenis Sampah Menurut Jenisnya di Kota Bandung
#' @description Dataset ini berisi produksi jenis sampah menurut jenisnya di Kota Bandung
#' @format Tibble dengan 27 baris dan 4 variabel:
#' \describe{
#'   \item{\code{Tahun}}{  }
#'   \item{\code{Jenis_sampah}}{jenis sampah}
#'   \item{\code{Prod_sampah}}{produksi sampah (m3/hari)}
#'   \item{\code{Persentase}}{persentase tiap jenis sampah}
#'}
#' @source \url{http://data.bandung.go.id/dataset/produksi-jenis-sampah-menurut-jenisnya-tahun-2014}
"sw_jenis"

#' @title Kecepatan Angin Menurut Bulan Di Kota Bandung
#' @description Dataset ini berisi Kecepatan Angin Menurut Bulan Di Kota Bandung.
#' @format Tibble dengan 60 baris dan 3 variabel:
#' \describe{
#'   \item{\code{tanggal}}{tanggal pengukuran}
#'   \item{\code{kec_ratarata}}{kecepatan angin rata-rata (knot)}
#'   \item{\code{kec_terbesar}}{kecepatan angin terbesar (knot)}
#'}
#' @source \url{http://data.bandung.go.id/dataset/kecepatan-angin-menurut-bulan-di-kota-bandung-2015}
"angin"

#' @title Keadaan Udara Menurut Bulan di Kota Bandung
#' @description Dataset ini berisi data Keadaan Udara Menurut Bulan di Kota Bandung.
#' @format Tibble dengan 60 baris dan 5 variabel:
#' \describe{
#'   \item{\code{Bulan}}{bulan pengamatan}
#'   \item{\code{Tahun}}{tahun pengamatan}
#'   \item{\code{Penguapan}}{nilai penguapan dalam mm}
#'   \item{\code{Tekanan_udara}}{nilai tekanan udara dalam mb}
#'   \item{\code{Kelembapan_nisbi}}{nilai kelembapan nisbi dalam "%"}
#'}
#' @source \url{http://data.bandung.go.id/dataset/keadaan-udara-menurut-bulan-di-kota-bandung-2015/resource/67ef3f2c-aed8-4a77-bacf-94ea2b4e4248}
"udara"

#' @title Rekapitulasi Jumlah Kepala Keluarga Yang Memenuhi Sanitasi Di Tingkat RT
#' @description Dataset ini berisi data rekapitulasi jumlah kepala keluarga yang memenuhi sanitasi di tingkat RT (Rukun Tetangga).
#' @format Tibble dengan 2400 baris dan 10 variabel:
#' \describe{
#'   \item{\code{No.}}{ }
#'   \item{\code{Kecamatan}}{nama kecamatan}
#'   \item{\code{Kelurahan}}{nama kelurahan}
#'   \item{\code{RW}}{rukun warga}
#'   \item{\code{RT}}{rukun tetangga}
#'   \item{\code{Bkm_Status_Berdaya}}{status bkm}
#'   \item{\code{Jumlah_krt}}{jumlah kepala rumah tangga}
#'   \item{\code{Jumlah_kk}}{jumlah kepala keluarga}
#'   \item{\code{Jumlah_akses_mck}}{jumlah masyarakat memiliki akses MCK keluarga / MCK bersama (rumah tangga)}
#'   \item{\code{Jumlah_mck_sesuai}}{jumlah MCK keluarga/MCK bersama sesuai persyaratan teknis (memiliki kloset leher angsa yang terhubung dengan septic-tank) (rumah tangga)}
#'}
#' @source \url{http://data.bandung.go.id/dataset/rekapitulasi-jumlah-kepala-keluarga-yang-memenuhi-sanitasi-di-tingkat-rt/resource/c9f5a1ff-fe25-4026-a01e-d3bb8403d632}
"sanitasi"

#' @title Rekapitulasi Jumlah Cakupan Air Minum Di Tingkat Kelurahan
#' @description Dataset ini berisi data rekapitulasi jumlah cakupan air minum di tingkat Kelurahan.
#' @format Tibble dengan 120 baris dan 6 variabel:
#' \describe{
#'   \item{\code{No.}}{ }
#'   \item{\code{Kecamatan}}{nama kecamatan}
#'   \item{\code{Kelurahan}}{nama kelurahan}
#'   \item{\code{Jumlah_krt}}{jumlah kepala rumah tangga}
#'   \item{\code{Jumlah_kk}}{jumlah kepala keluarga}
#'   \item{\code{Jumlah_masy_terlayani}}{jumlah masyarakat terlayani Sarana Air Minum untuk minum, mandi, dan cuci (perpipaan atau non perpipaan terlindungi yang layak) (rumah tangga)}
#'}
#' @source \url{http://somewhere.important.com/}
"cakupan_am"

#' @title Rekapitulasi Jumlah Cakupan Air Minum Di Tingkat RT (Rukun Tetangga)
#' @description Dataset ini berisi data rekapitulasi jumlah cakupan air minum di tingkat RT (Rukun Tetangga).
#' @format Tibble dengan 2681 baris dan 9 variabel:
#' \describe{
#'   \item{\code{No.}}{ }
#'   \item{\code{Kecamatan}}{nama kecamatan}
#'   \item{\code{Kelurahan}}{nama kelurahan}
#'   \item{\code{RW}}{rukun warga}
#'   \item{\code{RT}}{rukun tetangga}
#'   \item{\code{Jumlah_krt}}{jumlah kepala rumah tangga}
#'   \item{\code{Jumlah_kk}}{jumlah kepala keluarga}
#'   \item{\code{Jumlah_masy_terlayani}}{jumlah masyarakat terlayani Sarana Air Minum untuk minum, mandi, dan cuci (perpipaan atau non perpipaan terlindungi yang layak) (rumah tangga)}
#'   \item{\code{Persen_terlayani}}{prosentase masyarakat terlayani Sarana Air Minum untuk minum, mandi, dan cuci (perpipaan atau non perpipaan terlindungi yang layak)}
#'}
#' @source \url{http://data.bandung.go.id/dataset/rekapitulasi-jumlah-cakupan-air-minum-di-tingkat-rt-rukun-tetangga}
"cakupan_am_rt"

#' @title Jumlah Pelanggan Air Minum dan Air Limbah PDAM Tirtawening
#' @description Dataset ini berisi mengenai jumlah pelanggan air minum dan air limbah PDAM Tirtawening Kota Bandung.
#' @format Tibble dengan 24 baris dan 4 variabel:
#' \describe{
#'   \item{\code{bulan}}{ }
#'   \item{\code{tahun}}{ }
#'   \item{\code{jumlah_pelanggan_air_minum}}{jumlah pelanggan air minum}
#'   \item{\code{jumlah_pelanggan_air_limbah}}{jumlah pelanggan air limbah}
#'}
#' @source \url{http://data.bandung.go.id/dataset/jumlah-pelanggan-air-minum-dan-air-limbah-pdam-tirtawening}
"air_minum_limbah"

#' @title Penggunaan Tanah Berdasarkan Jenis Penggunaan di Kota Bandung
#' @description Dataset ini berisi data penggunaan tanah berdasarkan jenis penggunaan di Kota Bandung.
#' @format Tibble dengan 32 baris dan 2 variabel:
#' \describe{
#'   \item{\code{jenis_penggunaan_tanah}}{jenis penggunaan tanah}
#'   \item{\code{luas_ha}}{luas tanah (Ha)}
#'}
#' @source \url{http://data.bandung.go.id/dataset/penggunaan-tanah-berdasarkan-jenis-penggunaan-di-kota-bandung}
"penggunaan_tanah"

#' @title Data Jumlah Armada Pengangkut Sampah Wilayah Bandung Tahun 2015
#' @description Data Jumlah Armada Pengangkut Sampah Wilayah Bandung Tahun 2015.
#' @format Tibble dengan 90 baris dan 7 variabel:
#' \describe{
#'   \item{\code{wilayah}}{wilayah layanan}
#'   \item{\code{no_pol}}{nomor polisi}
#'   \item{\code{merk}}{merk kendaraan}
#'   \item{\code{jenis}}{jenis kendaraan}
#'   \item{\code{kapasitas}}{kapasitas angkut (m3)}
#'   \item{\code{tahun}}{tahun pengadaan}
#'   \item{\code{pengemudi}}{nama pengemudi}
#'}
#' @source \url{http://data.bandung.go.id/dataset/data-jumlah-armada-pengangkut-sampah-wilayah-bandung-tahun-2015}
"armada_sampah"

#' @title Data Hasil Sapuan Bulan Februari 2015 sampai Februari 2016
#' @description Dataset ini berisi mengenai data hasil sapuan yang dilaksanakan oleh pihak ketiga mulai dari bulan Februari 2015 sampai dengan bulan Februari 2016.
#' @format Tibble dengan 12 baris dan 8 variabel:
#' \describe{
#'   \item{\code{no}}{ }
#'   \item{\code{laporan}}{}
#'   \item{\code{jumlah_penyapu}}{}
#'   \item{\code{jumlah_hari_kerja_hari}}{}
#'   \item{\code{jumlah_kantong_trashbag}}{}
#'   \item{\code{jumlah_sampah_liter}}{}
#'   \item{\code{jumlah_sampah_m3}}{}
#'   \item{\code{jumlah_sampah_ton}}{}
#'}
#' @source \url{http://data.bandung.go.id/dataset/data-hasil-sapuan-bulan-februari-2015-sampai-februari-2016}
"sapuan_jalan"

#' @title Data Rekapitulasi Pengukuran Pencemaran Udara dan Suhu Kota Bandung
#' @description Sesuai dengan PP no. 41 tahun 1999 tentang Pengendalian Pencemaran Udara, data rekapitulasi pengukuran pencemaran udara dan suhu kota Bandung pertriwulan berdasarkan 4 stasiun pemantau pencemaran kota Bandung. Keempat stasiun tersebut terletak di daerah Dago, Pajajaran, Ujungberung dan Gedebage. Data ini disajikan dalam rataan perhari.
#' @format Tibble dengan 331 baris dan 16 variabel:
#' \describe{
#'   \item{\code{stasiun}}{lokasi stasiun : Dago, Ujungberung, Pajajaran, Gedebage}
#'   \item{\code{waktu}}{waktu pengamatan}
#'   \item{\code{co}}{konsentrasi CO}
#'   \item{\code{so2}}{konsentrasi SO2}
#'   \item{\code{no}}{konsentrasi NO}
#'   \item{\code{no2}}{konsentrasi NO2}
#'   \item{\code{pm10}}{konsentrasi PM10}
#'   \item{\code{pm25}}{konsentrasi PM2.5}
#'   \item{\code{o3}}{konsentrasi O3}
#'   \item{\code{wspd}}{kecepatan angin}
#'   \item{\code{wdir}}{arah angin}
#'   \item{\code{temperature}}{suhu udara}
#'   \item{\code{press}}{tekanan}
#'   \item{\code{rh}}{kelembaban relatif}
#'   \item{\code{uv}}{radiasi uv}
#'}
#' @source \url{http://data.bandung.go.id/dataset/data-rekapitulasi-pengukuran-pencemaran-udara-dan-suhu-kota-bandung}
"penc_udara_suhu"

#' @title Data Sebaran Lokasi TPS PD Kebersihan Kota Bandung Tahun 2016
#' @description Data berisi sebaran lokasi TPS PD Kebersihan Kota Bandung Tahun 2016.
#' @format Tibble dengan 154 baris dan 10 variabel:
#' \describe{
#'   \item{\code{no}}{ }
#'   \item{\code{id_tps}}{ }
#'   \item{\code{wilayah}}{wilayah layanan}
#'   \item{\code{kecamatan}}{nama kecamatan}
#'   \item{\code{nama_tps}}{nama tps}
#'   \item{\code{lokasi_tps}}{nama jalan lokasi tps}
#'   \item{\code{latitude}}{koordinat garis lintang}
#'   \item{\code{longitude}}{koordinat garis bujur}
#'   \item{\code{sampah_masuk}}{sampah masuk ke tps (m3/hari)}
#'   \item{\code{sampah_diangkut}}{sampah diangkut ke tpa (m3/hari)}
#'}
#' @source \url{http://data.bandung.go.id/dataset/data-sebaran-lokasi-tps-pd-kebersihan-kota-bandung-tahun-2016}
"lokasi_tps"

#' @title Hasil Pengukuran Kualitas Udara Ambien Roadside Berdasarkan Jenis Udara di Kota Bandung Tahun 2014
#' @description Dataset ini berisi Hasil Pengukuran Kualitas Udara Ambien Roadside Berdasarkan Jenis Udara di Kota Bandung Tahun 2014
#' @format Tibble dengan 27 baris dan 12 variabel:
#' \describe{
#'   \item{\code{lokasi}}{lokasi pengukuran}
#'   \item{\code{no2}}{konsentrasi NO2 (ppm)}
#'   \item{\code{so2}}{konsentrasi SO2 (ppm)}
#'   \item{\code{co}}{konsentrasi CO (ppm)}
#'   \item{\code{o3}}{konsentrasi O3 (ppm)}
#'   \item{\code{hc}}{konsentrasi hidrokarbon (ppm)}
#'   \item{\code{pb}}{konsentrasi Pb (ppm)}
#'   \item{\code{pm_2_5}}{konsentrasi PM2.5 (ppm)}
#'   \item{\code{tsp}}{konsentrasi total suspended particulate (ppm)}
#'   \item{\code{h2s}}{konsentrasi H2S (ppm)}
#'   \item{\code{nh3}}{konsentrasi amonia (ppm)}
#'   \item{\code{kebisingan}}{tingkat kebisingan (db)}
#'}
#' @source \url{http://data.bandung.go.id/dataset/hasil-pengukuran-kualitas-udara-ambien-roadside-berdasarkan-jenis-udara-di-kota-bandung-tahun-2014}
"ambien"

#' @title Kapasitas Bak Penampungan Sampah Untuk Wilayah Kota Bandung
#' @description Dataset kapasitas bak penampungan sampah untuk wilayah kota Bandung
#' @format Tibble dengan 20 baris dan 2 variabel:
#' \describe{
#'   \item{\code{nama_bak}}{nama bak sampah}
#'   \item{\code{kapasitas}}{kapasitas (m3)}
#'}
#' @source \url{http://data.bandung.go.id/dataset/kapasitas-bak-penampungan-sampah-untuk-wilayah-kota-bandung}
"bak_sampah"

#' @title Cuaca dan Curah Hujan Kota Bandung
#' @description Dataset mengenai cuaca dan curah hujan di kota Bandung
#' @format Tibble dengan 26 baris dan 9 variabel:
#' \describe{
#'   \item{\code{bulan}}{ }
#'   \item{\code{temperatur_ratarata}}{temperatur rata-rata (oC)}
#'   \item{\code{temperatur_max}}{temperatur maksimum (oC)}
#'   \item{\code{temperatur_min}}{temperatur minimum (oC)}
#'   \item{\code{curah_hujan}}{curah hujan (mm)}
#'   \item{\code{hari_hujan}}{hari hujan (hari)}
#'   \item{\code{lpm}}{lpm persen}
#'}
#' @source \url{http://data.bandung.go.id/dataset/cuaca-dan-curah-hujan-kota-bandung-tahun-2013}
"cuaca"

#' @title Data Pengangkutan TPS Tahun 2005-2015
#' @description Dataset ini berisi mengenai jumlah moda pengangkut sampah dan jumlah Tempat Pembuangan Sampah (TPS) Tahun 2005-2015.
#' @format Tibble dengan 11 baris dan 9 variabel:
#' \describe{
#'   \item{\code{tahun}}{tahun pencatatan}
#'   \item{\code{gerobak}}{jumlah gerobak sampah}
#'   \item{\code{truk}}{jumlah truk sampah}
#'   \item{\code{kendaraan_kecil_pick_up}}{jumlah kendaraan kecil pick up}
#'   \item{\code{motor_sampah}}{jumlah motor sampah}
#'   \item{\code{container}}{jumlah kontainer sampah}
#'   \item{\code{tps}}{jumlah tps}
#'   \item{\code{tps_3r}}{jumlah tps3r}
#'   \item{\code{alat_berat}}{jumlah alat berat}
#'}
#' @source \url{http://data.bandung.go.id/dataset/data-pengangkutan-tps-tahun-2005-2015/resource/7c755a73-30a7-4543-8f9d-ad21c30c349a}
"pengangkutan_tps"

#' @title Data Pengomposan dan Pencacahan di Bidang Pengelolaan TPA
#' @description Data Pengomposan dan Pencacahan di Bidang Pengelolaan TPA
#' @format Tibble dengan 14 baris dan 8 variabel:
#' \describe{
#'   \item{\code{no}}{}
#'   \item{\code{tps}}{nama tps}
#'   \item{\code{tahun}}{tahun pendataan}
#'   \item{\code{sampah_organik}}{volume sampah organik (m3)}
#'   \item{\code{sampah_anorganik}}{volume sampah anorganik (m3)}
#'   \item{\code{sampah_cacahan}}{volume sampah cacahan (m3)}
#'   \item{\code{pengomposan}}{volume pengomposan (m3)}
#'   \item{\code{produksi_kompos}}{volume produksi kompos (m3)}
#'}
#' @source \url{http://data.bandung.go.id/dataset/data-pengomposan-dan-pencacahan-di-bidang-pengelolaan-tpa}
"pengomposan"

#' @title Data Keterangan TPA PD Kebersihan Tahun 2005 - 2015
#' @description Dataset ini berisi mengenai data keterangan Tempat Pembuangan Akhir (TPA) Perusahaan Daerah Kebersihan Kota Bandung Tahun 2005-2015.
#' @format Tibble dengan 6 baris dan 3 variabel:
#' \describe{
#'   \item{\code{no}}{}
#'   \item{\code{nama_tpa}}{}
#'   \item{\code{keterangan}}{}
#'}
#' @source \url{http://data.bandung.go.id/dataset/data-keterangan-tpa-pd-kebersihan-tahun-2005-2015}
"keterangan_tpa"

#' @title Pembuatan Sumur Resapan Dan Lubang Biopori di Kota Bandung
#' @description Dataset ini berisi Rekapitulasi Pembuatan Sumur Resapan Dan Lubang Biopori di Kota Bandung.
#' @format Tibble dengan 30 baris dan 3 variabel:
#' \describe{
#'   \item{\code{nama_kecamatan}}{nama kecamatan}
#'   \item{\code{sumur_resapan}}{jumlah sumur resapan}
#'   \item{\code{lubang_biopori}}{jumlah lubang biopori}
#'}
#' @source \url{http://data.bandung.go.id/dataset/pembuatan-sumur-resapan-dan-lubang-biopori-di-kota-bandung}
"sumur_resapan"
