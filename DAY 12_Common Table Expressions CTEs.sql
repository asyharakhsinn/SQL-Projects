-- Common Table Expressions (CTEs)
With Laporan as
(
Select A.Nama_Depan, 
AVG(Gaji)as Rerata, 
Max(Gaji)as Gaji_MAKS, 
Min(Gaji)as Gaji_MIN, 
Count(Gaji)as Jumlah_Orang
From Informasi_Karyawan A
JOIN Gaji_Karyawan B
	ON A.No_Identitas_Karyawan = B.No_Identitas_Karyawan 
	Group By A.Nama_Depan
	)
	Select *
	from Laporan

With DRIP as
(
Select A.Nama_Depan,
sum(Gaji) as Jumlah_Gaji,
AVG(Gaji)as Rerata, 
Max(Gaji)as Gaji_MAKS, 
Min(Gaji)as Gaji_MIN, 
Count(Gaji)as Jumlah_Orang
From Informasi_Karyawan A
JOIN Gaji_Karyawan B
	ON A.No_Identitas_Karyawan = B.No_Identitas_Karyawan 
	Group By A.Nama_Depan
	)
	Select *
	from DRIP

--Join Multiple CTEs

WITH Tabel as (
Select inf.Nama_Depan, inf.Nama_Belakang, inf.Jenis_Kelamin, gaj.Gaji,
sum(GAJ.Gaji)Over
(Partition By INF.Jenis_Kelamin) as Rerata_Gaji,
cOUNT(inf.Jenis_Kelamin)over(Partition By Inf.Jenis_Kelamin) as JumlahGender

From [Karyawan Swasta].dbo.Informasi_Karyawan INF
Join [Karyawan Swasta].dbo.Gaji_Karyawan GAJ
	on inf.No_Identitas_Karyawan = gaj.No_Identitas_Karyawan
)
Select Rerata_gAJI
From Tabel

Select sum(Gaji)
From Gaji_Karyawan

Select
inf.Jenis_Kelamin,
avg(GAJ.Gaji)
From Informasi_Karyawan as INF
Join Gaji_Karyawan AS gaj
	on inf.Nama_Depan = gaj.Nama_Depan
	Group By Jenis_Kelamin

	Select inf.Nama_Depan, inf.No_Identitas_Karyawan, INF.Tanggal_Lahir,
	GAJ.Gaji
	FROM Informasi_Karyawan AS INF
	Join Gaji_Karyawan AS GAJ
		ON INF.Nama_Depan = GAJ.Nama_Depan
		Where Tanggal_Lahir > '1985-01-01' 
		Group By INF.Nama_Depan, INF.No_Identitas_Karyawan, inf.Tanggal_Lahir, gaj.Gaji

		Select inf.Nama_Depan, inf.No_Identitas_Karyawan, INF.Tanggal_Lahir,
	GAJ.Gaji
	FROM Informasi_Karyawan AS INF
	Join Gaji_Karyawan AS GAJ
		ON INF.Nama_Depan = GAJ.Nama_Depan
		Where Tanggal_Lahir > '1985-01-01' and Gaji > 50000
		Group By INF.Nama_Depan, INF.No_Identitas_Karyawan, inf.Tanggal_Lahir, gaj.Gaji

		Select TUH.Nama_Depan, tuh.Jenis_Kelamin, APA.Gaji,
		SUM(APA.Gaji)OVER(Partition By TUH.Jenis_Kelamin Order By TUH.Nama_Depan) RollingTotal
		From Gaji_Karyawan APA
		Join Informasi_Karyawan TUH
			ON APA.Nama_Depan = tuh.Nama_Depan
			Where TUH.Jenis_Kelamin LIKE '%male'
			Group By TUH.Nama_Depan, TUH.Jenis_Kelamin, APA.Gaji
			