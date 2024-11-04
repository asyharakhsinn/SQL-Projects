-- Common Table Expressions (CTEs)
With Laporan as
(
Select A.Jenis_Kelamin, 
AVG(Gaji)as Rerata, 
Max(Gaji)as Gaji_MAKS, 
Min(Gaji)as Gaji_MIN, 
Count(Gaji)as Jumlah_Orang
From Informasi_Karyawan A
JOIN Gaji_Karyawan B
	ON A.No_Identitas_Karyawan = B.No_Identitas_Karyawan 
	Group By Jenis_Kelamin
	)
	Select *
	from Laporan

