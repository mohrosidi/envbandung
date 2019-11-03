
# envbandung

`envbandung` merupakan `R` *package* yang berisi kumpulan data
lingkungan hidup yang di ambil dari Open Data Kota Bandung. Dataset pada
*package* ini telah dilakukan transformasi sehingga memenuhi kaidah
*tidy data*.

## Cara Pemasangan

``` r
remotes::install_github("mohrosidi/envbandung ")
```

## Cek Dataset

Untuk mengecek dataset apa saja yang tersedia dalam *package* ini,
jalankan *code* berikut:

``` r
data(package = "envbandung")
```

untuk memperoleh informasi terkait dataset yang akan digunakan, jalankan
*code* berikut:

``` r
?nama_dataset # ketik nama dataset

# atau

help(nama_dataset)
```

## Dataset yang Tersedia

| Nama Dataset       | Keterangan                                                                                         |
| :----------------- | :------------------------------------------------------------------------------------------------- |
| KangPisMan         | Kegiatan Sosialisasi KangPisMan Kota Bandung                                                       |
| air\_minum\_limbah | Jumlah Pelanggan Air Minum dan Air Limbah PDAM Tirtawening                                         |
| ambien             | Hasil Pengukuran Kualitas Udara Ambien Roadside Berdasarkan Jenis Udara di Kota Bandung Tahun 2014 |
| anak\_sungai       | Panjang Anak Sungai Citarum di Kota Bandung                                                        |
| angin              | Kecepatan Angin Menurut Bulan Di Kota Bandung                                                      |
| armada\_sampah     | Data Jumlah Armada Pengangkut Sampah Wilayah Bandung Tahun 2015                                    |
| bak\_sampah        | Kapasitas Bak Penampungan Sampah Untuk Wilayah Kota Bandung                                        |
| bank\_sampah       | Unit Bank Sampah Binaan Bank Sampah Resik - Tahun 2018                                             |
| bendungan          | Bendungan di Kota Bandung                                                                          |
| cakupan\_am        | Rekapitulasi Jumlah Cakupan Air Minum Di Tingkat Kelurahan                                         |
| cakupan\_am\_rt    | Rekapitulasi Jumlah Cakupan Air Minum Di Tingkat RT (Rukun Tetangga)                               |
| cuaca              | Cuaca dan Curah Hujan Kota Bandung                                                                 |
| izin\_lingkungan   | Izin Lingkungan di Kota Bandung                                                                    |
| kual\_sungai       | Kualitas Air Sungai Kota Bandung Tahun 2018                                                        |
| lokasi\_tps        | Data Sebaran Lokasi TPS PD Kebersihan Kota Bandung Tahun 2016                                      |
| mata\_air          | Sumber Mata Air di Kota Bandung                                                                    |
| mitra\_KangPisMan  | Data Mitra Komersial KangPisman - Tahun 2019                                                       |
| pelanggan\_am      | Jumlah Pelanggan Air Minum Menurut Golongan Tarif di Kota Bandung                                  |
| penc\_udara\_suhu  | Data Rekapitulasi Pengukuran Pencemaran Udara dan Suhu Kota Bandung                                |
| penggunaan\_tanah  | Penggunaan Tanah Berdasarkan Jenis Penggunaan di Kota Bandung                                      |
| sanitasi           | Rekapitulasi Jumlah Kepala Keluarga Yang Memenuhi Sanitasi Di Tingkat RT                           |
| sapuan\_jalan      | Data Hasil Sapuan Bulan Februari 2015 sampai Februari 2016                                         |
| sw\_jenis          | Produksi Jenis Sampah Menurut Jenisnya di Kota Bandung                                             |
| sw\_prod\_sumber   | Rata-rata Produksi Sampah Berdasarkan Sumber Sampah di Kota Bandung                                |
| taman              | Luas Taman Kota Di Sub Wilayah Kota (SWK) Bandung Tahun 2018                                       |
| tanam\_pohon1      | Penanaman Pohon Di Kota Bandung 1                                                                  |
| tanam\_pohon2      | Penanaman Pohon Di Kota Bandung 2                                                                  |
| tps                | Lokasi Tempat Pembuangan Sampah Kota Bandung                                                       |
| udara              | Keadaan Udara Menurut Bulan di Kota Bandung                                                        |

## Ucapan Terimakasih

Proyek ini dapat terlaksana atas upaya data terbuka yang tersaji di
[Open Data Kota
Bandung](http://data.bandung.go.id/).

## Lisensi

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This
work is licensed under a
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative
Commons Attribution-ShareAlike 4.0 International License</a>.
