import MySQLdb
import time
import random
import datetime
from datetime import datetime 


database = MySQLdb.connect("localhost", "root", "", "suhu")
cursor = database.cursor()

sql2 = cursor.execute("select count(*) from set_data")
data = cursor.fetchone()

jml = data[0]
w = 1

# Pilih Ruang penyimpanan
print("=====Pilih Ruang Penyimpanan======")
while w < jml+1:
    z = str(w)
    sql = cursor.execute(
        "select nama_p from set_data where id_p ='"+z+"'")
    penyimpanan = cursor.fetchone()
    t = str(penyimpanan[0])
    print(w, t)
    w += 1
penyimpanan = str(input("Masukkan Nama Penyimpanan : "))

# Pilih Sensor
print("=======Sensor======")
print("1.Kelembaban")
print("2.Suhu ")

sensor = int(input("Sensor Yang Dipilih :"))

lama_pengecekan = input("Jangka Waktu : ")
jumlah_pengecekan = input("Jumlah Pengecekan : ")

a = cursor.execute("select * from set_data where nama_p like '%"+penyimpanan+"%'")
b = cursor.fetchone()
id_p = str(b[0])


# sensor Kelembaban
if sensor == 1:
    pilih_tabel = 'humidity_p'
    nilai = 0
    # jps(jumlah pengecekan sensor)
    jps = int(jumlah_pengecekan)
    # wps(waktu pengecekan sensor)
    wps = int(lama_pengecekan)
    nilai_max = jps
    while nilai < nilai_max:
        humidity_p = str(random.randint(20, 60))
        t_end = time.time() + 60 * wps
        v = 0
        tbl_set_data = []

        while time.time() < t_end:
            print("-----")
            v += 1

        waktu = str(datetime.now())
        s_data = id_p,waktu,humidity_p
        tbl_set_data.append(s_data)
        sq = "insert into "+pilih_tabel +" (id_penyimpanan,Waktu,Humidity) values (%s,%s,%s)"
        inpt = cursor.executemany(sq, tbl_set_data)
        print("Data Pengecekan Berhasil", tbl_set_data)

        nilai += 1


# Sensor Suhu
if sensor == 2:
    pilih_tabel = 'temperature_p'
    nilai = 0
    jps = int(jumlah_pengecekan)
    wps = int(lama_pengecekan)
    nilai_max = jps
    while nilai < nilai_max:
        temperature_p = str(random.randint(10, 37))
        t_end = time.time() + 60 * wps
        v = 0
        tbl_set_data = []

        while time.time() < t_end:
            print("-----")
            v += 1

        waktu = str(datetime.now())
        set_data = id_p, waktu, temperature_p
        tbl_set_data.append(set_data)
        sq = "insert into "+pilih_tabel +" (id_Penyimpanan,Waktu,Temperature) values (%s,%s,%s)"
        inpt = cursor.executemany(sq, tbl_set_data)
        print("Data Pengecekan Berhasil", tbl_set_data)

        nilai += 1




database.commit()
database.close()
