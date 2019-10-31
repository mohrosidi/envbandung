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
