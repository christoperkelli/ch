#Melakukan import mysql connector
import mysql.connector

#Melakukan percobaan koneksi
conn = mysql.connector.connect(
   user='root', password='Virtual', host='127.0.0.1', database='KARYAWAN')

#Membuat objek kursor sebagai penanda
cursor = conn.cursor()


# Deklarasi SQL query untuk memasukkan record ke db (KARYAWAN).
sql = """INSERT INTO EMPLOYEE(
   FIRST_NAME, LAST_NAME, AGE, SEX, INCOME)
   VALUES ('Christoper', 'Kelli', 23, 'M', 90000)"""

try:
   # Eksekusi SQL command
   cursor.execute(sql)

   # Melakukan Perubahan ke DB
   conn.commit()

except:
   # Roll back apabila ada issue
   conn.rollback()

# menutup koneksi
conn.close()