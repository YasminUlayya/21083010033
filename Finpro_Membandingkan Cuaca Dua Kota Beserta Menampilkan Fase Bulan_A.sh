#!/bin/bash
echo "-----MEMBANDINGKAN CUACA DI DUA KOTA BESERTA MENAMPILKAN FASE BULAN-----"
echo -n "Masukkan Kota  Pertama: ";
read kota1;
echo " "
echo -n "Masukkan Kota Kedua: ";
read kota2;
echo " "
echo "Cuaca Kota $kota1 dan Kota $kota2"
diff -Naur <(curl -s http://wttr.in/$kota1 ) <(curl -s http://wttr.in/$kota2)
echo -e "\nFASE BULAN SAAT INI"
curl wttr.in/Moon
echo -n "Apakah Ingin Melihat Fase Bulan di Waktu Lainnya?(y/n)"
read pilih

case "$pilih" in
        "y")
                echo "Masukkan Tanggal dengan Format Tahun-Bulan-Tanggal, contoh 2022-12-21"
                echo -n "Masukkan Tanggal: ";
                read tanggal
                curl wttr.in/Moon@$tanggal
        ;;
        "n")
                echo "Okeii :)"
        ;;
        *)
esac
