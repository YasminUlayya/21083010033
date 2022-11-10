from os import getpid
from time import time, sleep
from multiprocessing import cpu_count, Pool, Process

# Inisialisasi fungsi yang akan digunakan
angka = int(input("Masukkan angka:"))

def cetak(i):
    if i  % 2 == 0:
       print(i+1, "Ganjil", "- punya ID proses", getpid())
    else:
       print(i+1, "Genap", "- punya ID proses", getpid())
    sleep(i)

# Sekuensial
print("Sekuensial")
sekuensial_awal = time()

for i in range(angka):
    cetak(i)

sekuensial_akhir = time()

# Multiprocessing process
print("Multiprocessing.process")
kumpulan_proses = []
process_awal = time()

for i in range(angka):
    p = Process(target=cetak, args=(i, ))
    kumpulan_proses.append(p)
    p.start()

for i in kumpulan_proses:
    p.join()

process_akhir = time()

# Multiprocessing pool
print("Multiprocessing.pool")
pool_awal = time()

pool = Pool()
pool.map(cetak, range(0,angka))
pool.close()

pool_akhir = time()

print("Waktu eksekusi Sekuansial :", sekuensial_akhir - sekuensial_awal, "detik")
print("Waktu eksekusi Multiprocessing.process :", process_akhir - process_awal, "detik")
print("Waktu eksekusi Multiprocessing.pool :", pool_akhir - pool_awal, "detik")
