#!/bin/bash
echo "Masukkan a: "
read a
echo "Masukkan b: "
read b
echo "Pilih salah satu yang Anda inginkan!"
echo "Penjumlahan/Pengurangan/Perkalian/Pembagian"
echo "Masukkan pilihan Anda!"
read pilih

case "$pilih" in
	"Penjumlahan")
		let hasil=$a+$b
		echo "$a+$b = $hasil"
	;;
	"Pengurangan")
		let hasil=$a-$b
		echo "$a-$b = $hasil"
	;;
	"Perkalian")
		let hasil=$a*$b
		echo "$a*$b = $hasil"
	;;
	"Pembagian")
		let hasil=$a/$b
		echo "$a/$b = $hasil"
	;;
	*)
esac
