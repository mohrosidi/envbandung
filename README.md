
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

    ##                Judul
    ##  1:       KangPisMan
    ##  2: air_minum_limbah
    ##  3:      anak_sungai
    ##  4:            angin
    ##  5:    armada_sampah
    ##  6:      bank_sampah
    ##  7:        bendungan
    ##  8:       cakupan_am
    ##  9:    cakupan_am_rt
    ## 10:  izin_lingkungan
    ## 11:      kual_sungai
    ## 12:       lokasi_tps
    ## 13:         mata_air
    ## 14: mitra_KangPisMan
    ## 15:     pelanggan_am
    ## 16:  penc_udara_suhu
    ## 17: penggunaan_tanah
    ## 18:         sanitasi
    ## 19:     sapuan_jalan
    ## 20:         sw_jenis
    ## 21:   sw_prod_sumber
    ## 22:            taman
    ## 23:     tanam_pohon1
    ## 24:     tanam_pohon2
    ## 25:              tps
    ## 26:            udara
    ##                Judul
    ##                                                                   Keterangan
    ##  1:                             Kegiatan Sosialisasi KangPisMan Kota Bandung
    ##  2:               Jumlah Pelanggan Air Minum dan Air Limbah PDAM Tirtawening
    ##  3:                              Panjang Anak Sungai Citarum di Kota Bandung
    ##  4:                            Kecepatan Angin Menurut Bulan Di Kota Bandung
    ##  5:          Data Jumlah Armada Pengangkut Sampah Wilayah Bandung Tahun 2015
    ##  6:                   Unit Bank Sampah Binaan Bank Sampah Resik - Tahun 2018
    ##  7:                                                Bendungan di Kota Bandung
    ##  8:               Rekapitulasi Jumlah Cakupan Air Minum Di Tingkat Kelurahan
    ##  9:     Rekapitulasi Jumlah Cakupan Air Minum Di Tingkat RT (Rukun Tetangga)
    ## 10:                                          Izin Lingkungan di Kota Bandung
    ## 11:                              Kualitas Air Sungai Kota Bandung Tahun 2018
    ## 12:            Data Sebaran Lokasi TPS PD Kebersihan Kota Bandung Tahun 2016
    ## 13:                                          Sumber Mata Air di Kota Bandung
    ## 14:                             Data Mitra Komersial KangPisman - Tahun 2019
    ## 15:        Jumlah Pelanggan Air Minum Menurut Golongan Tarif di Kota Bandung
    ## 16:      Data Rekapitulasi Pengukuran Pencemaran Udara dan Suhu Kota Bandung
    ## 17:            Penggunaan Tanah Berdasarkan Jenis Penggunaan di Kota Bandung
    ## 18: Rekapitulasi Jumlah Kepala Keluarga Yang Memenuhi Sanitasi Di Tingkat RT
    ## 19:               Data Hasil Sapuan Bulan Februari 2015 sampai Februari 2016
    ## 20:                   Produksi Jenis Sampah Menurut Jenisnya di Kota Bandung
    ## 21:      Rata-rata Produksi Sampah Berdasarkan Sumber Sampah di Kota Bandung
    ## 22:             Luas Taman Kota Di Sub Wilayah Kota (SWK) Bandung Tahun 2018
    ## 23:                                        Penanaman Pohon Di Kota Bandung 1
    ## 24:                                        Penanaman Pohon Di Kota Bandung 2
    ## 25:                             Lokasi Tempat Pembuangan Sampah Kota Bandung
    ## 26:                              Keadaan Udara Menurut Bulan di Kota Bandung
    ##                                                                   Keterangan

## Ucapan Terimakasih

Proyek ini dapat terlaksana atas upaya data terbuka yang tersaji di
[Open Data Kota
Bandung](http://data.bandung.go.id/).

## Lisensi

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This
work is licensed under a
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative
Commons Attribution-ShareAlike 4.0 International License</a>.
