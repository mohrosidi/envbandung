# envbandung

envbandung merupakan `R` *package* yang berisi kumpulan data lingkungan hidup yang di ambil dari Open Data Kota Bandung. Dataset pada *package* ini telah dilakukan transformasi sehingga memenuhi kaidah *tidy data*.

## Cara Pemasangan

``` r
remotes::install_github("mohrosidi/envbandung ")
```

## Cek Dataset

Untuk mengecek dataset apa saja yang tersedia dalam *package* ini, jalankan *code* berikut:

``` r
data(package = "envbandung")
```

untuk memperoleh informasi terkait dataset yang akan digunakan, jalankan *code* berikut:

``` r
?nama_dataset

# atau

help(nama_dataset)
```

## Ucapan Terimakasih

Proyek ini dapat terlaksana atas upaya data terbuka yang tersaji di [Open Data Kota Bandung](http://data.bandung.go.id/).

## Lisensi

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This
work is licensed under a
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative
Commons Attribution-ShareAlike 4.0 International License</a>.
