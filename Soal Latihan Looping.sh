#!/bin/bash
echo "mencetak bilangan positif kelipatan ganjil"
echo -n  " Masukkan angka : "
read angka;

while [ $angka -lt 20 ]
do
 echo $angka
 angka=$((angka + 2))
done
