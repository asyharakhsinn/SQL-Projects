-- STRING FUNCTION

--LENGTH
Select Nama_Depan, Len(Nama_Depan) AS Jumlah_Huruf
From Informasi_Karyawan
Select Nama_Depan, Len(Nama_Depan)
From Informasi_Karyawan
Where Len(Nama_Depan) > 4
	Select Concat(Nama_Depan,' ', Nama_Belakang) as Nama_Lengkap, 
	Len(Concat(Nama_Depan, Nama_Belakang)) AS Jumlah_Huruf
	From Gaji_Karyawan

-- Upper
Select Upper(Nama_Depan) AS Nama_Panggilan, Lower(Nama_Belakang) as Nama_Belakang
from Informasi_Karyawan

Select Upper(KOD1.Nama_Depan),
Upper(Kod1.Nama_Belakang),
KOD2.Gaji,
KOD2.Pekerjaan
from Informasi_Karyawan KOD1
join Gaji_Karyawan KOD2
	On KOD1.Nama_Depan = KOD2.Nama_Depan

--TRIM
Select RTRIM('            Asyhar          ') As A
Select LTRIM('            Asyhar          ') AS A 
Select TRIM('            Asyhar          ') AS A

--SUBSTRING
Select Nama_Depan, LEFT(Nama_Depan, 2),Nama_Belakang, 
Right(Nama_Belakang, 4),
SUBSTRING(Nama_Belakang, 1,2), Tanggal_Lahir
From Informasi_Karyawan

Select Nama_Depan, LEFT(Nama_Depan, 2),Nama_Belakang, 
Right(Nama_Belakang, 4),MONTH(Tanggal_Lahir) AS Bulan_Kelahiran
From Informasi_Karyawan

--Catatan
--Substring tidak bisa digunakan pada tipe data DATETIME, YEAR, MONTH, DAY
--tapi bisa pake statement:
Select Year(Tanggal_Lahir)  AS Tahun_Lahir, 
MONTH(Tanggal_Lahir)AS Bulan_Lahir, 
DAY(Tanggal_Lahir)as Tanggal_Lahir
From Informasi_Karyawan

--REPLACE
Select Nama_Depan, REPLACE(Nama_Depan,'a','z')
From Informasi_Karyawan

--LOCATE (Cuma Bisa di MySQL Workbench)
Select Locate('s','Asyhar');
Select Nama_Depan, LOCATE('An', Nama_Depan)
From Informasi_Karyawan

--CONCAT (Concatenation)
Select Nama_Depan, Nama_Belakang, 
CONCAT(Nama_Depan,' ', Nama_Belakang) AS Nama_Lengkap
From Informasi_Karyawan
Select Nama_Depan, UPPER(Nama_Depan) AS Panggilan, LOWER(Nama_Belakang) AS Lengkap,
Concat(Upper(Nama_Depan),' ', Lower(Nama_Belakang)) AS Nama_Lengkap
from Informasi_Karyawan

	Select Concat(KOD1.Nama_Depan,' ',KOD1.Nama_Belakang) AS Nama_Lengkap,
	KOD2.Pekerjaan,
	KOD2.Gaji
	From Informasi_Karyawan KOD1
	Join Gaji_Karyawan KOD2
		On KOD1.Nama_Depan = KOD2.Nama_Depan