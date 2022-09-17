#!/bin/bash

#deklarasi array
distroLinux=("Mint" "Ubuntu" "Fedora" "Novell" "Redhat")

# random distro
let pilih=$RANDOM%5

#eksekusi
echo "Saya Memilih Distro $pilih, ${distroLinux[$pilih]} !"
