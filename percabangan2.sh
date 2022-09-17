#!/bin/bash
printf "Jajan apa yang kamu suka ?\n"
printf "es krim ?\n"
printf "batagor ?\n"
printf "cireng ?\n"
read jajan
case "$jajan" in
"es krim")
echo "Surabaya panas kak, enak dingin-dingin :)"
;;
"batagor")
echo "Sering banget beli batagor depan UPN, hehe"
;;
"cireng")
echo "Anak micin :v"
;;
*)
echo "Makanan yang kamu suka gaenak hehe"
;;
esac
