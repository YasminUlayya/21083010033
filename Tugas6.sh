#!/bin/bash

declare -a tulis;
echo

echo -n "masukkan semester: ";read semester;

jumlah=0;
ipk_mhs=0;

for ((i=1; i<=semester; i++))
do
    echo -n "masukkan nilai IPS semester $i: ";read tulis[$i];
    let jumlah=$jumlah+${tulis[i]};
    let ipk_mhs=$jumlah/$semester;
done
echo "IPS mhs:$jumlah/$semester"
echo "IPK mhs:$ipk_mhs"

