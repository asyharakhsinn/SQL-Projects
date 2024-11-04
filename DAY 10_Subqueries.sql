Select *
From [Parks and Recreations].dbo.Informasi_Karyawan

--SUBQUERY ANTAR DBO.
Select Nama_Depan, Nama_Belakang
From Informasi_Karyawan
Where No_Identitas_Karyawan In
	(Select No_Identitas_Karyawan
	From Gaji_Karyawan
	Where Identitas_Departemen = 1)



--SUBQUERY ANTAR DATABASE
Select Concat(Nama_Depan,' ',Nama_Belakang) AS Nama_Lengkap
From Informasi_Karyawan
Where No_Identitas_Karyawan In
	(Select employee_id
	From [Parks and Recreations].dbo.Informasi_Karyawan
	Where age > 40 AND MONTH(birth_date) > 07)

Select Nama_Depan, Gaji, 
(Select AVG(Gaji)
From Gaji_Karyawan) As Rerata_Gaji
From Gaji_Karyawan

Select Gaji, 
(Select MAX(Gaji)
From Gaji_Karyawan) As Gaji_Maks
From Gaji_Karyawan

Select Jenis_Kelamin, AVG(umur), MIN(umur), COUNT(umur)
From Informasi_Karyawan
Group By Jenis_Kelamin

Select Jenis_Kelamin
from 
(Select Jenis_Kelamin,
AVG(Umur) AS Rerata_Umur,
Min(Umur) As Muda,
Max(Umur) AS Lansia,
Count(Umur) As Jumlah_Jiwa
from Informasi_Karyawan
Group By Jenis_Kelamin) As Tabel

Select Jumlah_orang, Umur_Maks
From
(Select Jenis_Kelamin, 
AVG(umur)As Rerata_Umur,
Max(umur)As Umur_Maks,
MIN(umur)As Umur_Min, 
COUNT(umur) As Jumlah_orang
From Informasi_Karyawan
Group By Jenis_Kelamin) as Tabel

	Select Identitas_Departemen, Rerata_Gaji
	From
	(Select Identitas_Departemen, 
	AVG(Gaji)As Rerata_Gaji,
	Max(Gaji)As Gaji_Maks,
	MIN(Gaji)As Gaji_Min, 
	COUNT(Gaji) As Jumlah_orang
	From Gaji_Karyawan
	Group By Identitas_Departemen) as Tabel
	Order By Rerata_Gaji Desc
