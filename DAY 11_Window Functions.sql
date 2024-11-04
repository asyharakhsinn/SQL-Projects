-- Window Function
--Database Indonesia 2024-2029

--Translate ke bahasa manusia
Select Nama_Menteri, Kode_Etik, Anggaran,
avg(Anggaran)Over(Partition By Kode_Etik)
from Kabinet_Merah_Putih_2024

Select Kode_Etik,
avg(Anggaran)
from Kabinet_Merah_Putih_2024
Group by Kode_Etik

Select Kode_Etik, 
SUM(Anggaran)
From Kabinet_Merah_Putih_2024
Group By Kode_Etik

Select Kode_Etik, Nama_Menteri, Anggaran,
SUM(Anggaran)over(Partition By Kode_Etik Order By Nama_Menteri) as Rolling_Total
From Kabinet_Merah_Putih_2024
--Where Nama_Menteri Like 'Abdul%'
	Select Kode_Etik, Nama_Menteri, Kementerian, Anggaran,
	SUM(Anggaran)over
	(Partition By Kode_Etik Order By Nama_Menteri asc) as Rolling_Total
	From Kabinet_Merah_Putih_2024
	Where Anggaran >= 200000000

--Database Karyawan Swasta
--Ubah ke bahasa manusia
Select inf.Nama_Depan, inf.Jenis_Kelamin, GAJ.Gaji,
AVG(GAJ.Gaji)over(Partition By Jenis_Kelamin)
From [Karyawan Swasta].dbo.Informasi_Karyawan INF
Join [Karyawan Swasta].dbo.Gaji_Karyawan GAJ
	ON INF.No_Identitas_Karyawan = GAJ.No_Identitas_Karyawan

Select INF.Nama_Depan, INF.Nama_Belakang, 
AVG(GAJ.Gaji)Over()
From [Karyawan Swasta].dbo.Informasi_Karyawan INF
Join [Karyawan Swasta].dbo.Gaji_Karyawan GAJ
	ON INF.No_Identitas_Karyawan = GAJ.No_Identitas_Karyawan

Select INF.Nama_Depan, INF.Nama_Belakang, INF.Jenis_Kelamin,
	AVG(GAJ.Gaji)Over(Partition By INF.Jenis_Kelamin Order By INF.Nama_Depan DESC)
	From [Karyawan Swasta].dbo.Informasi_Karyawan INF
	Join [Karyawan Swasta].dbo.Gaji_Karyawan GAJ
		ON INF.No_Identitas_Karyawan = GAJ.No_Identitas_Karyawan

	Select INF.Nama_Depan, INF.Jenis_Kelamin, GAJ.Gaji,
SUM(GAJ.Gaji)Over(Partition By INF.Jenis_Kelamin Order By INF.Nama_Depan) Rolling_Total
From [Karyawan Swasta].dbo.Informasi_Karyawan INF
Join [Karyawan Swasta].dbo.Gaji_Karyawan GAJ
	ON INF.No_Identitas_Karyawan = GAJ.No_Identitas_Karyawan


	--Ubah ke bahasa manusia
Select INF.Nama_Depan, INF.Jenis_Kelamin, GAJ.Gaji,

Row_Number()Over(Order By INF.No_Identitas_Karyawan)
From [Karyawan Swasta].dbo.Informasi_Karyawan INF

Join [Karyawan Swasta].dbo.Gaji_Karyawan GAJ
	ON INF.No_Identitas_Karyawan = GAJ.No_Identitas_Karyawan
		
		
		Select INF.Nama_Depan, INF.Jenis_Kelamin, GAJ.Gaji,

			Row_Number()Over(Partition By inf.Jenis_Kelamin
			Order By INF.No_Identitas_Karyawan)

			From [Karyawan Swasta].dbo.Informasi_Karyawan INF
			Join [Karyawan Swasta].dbo.Gaji_Karyawan GAJ
				ON INF.No_Identitas_Karyawan = GAJ.No_Identitas_Karyawan
				
	
	Select INF.Nama_Depan, INF.Jenis_Kelamin, GAJ.Gaji,
			
			--Tidak Berganda Berurutan
			Row_Number()Over(Partition By INF.Jenis_Kelamin 
			Order By INF.No_Identitas_Karyawan),
			--Berganda Lompat
			Rank()Over(Partition By INF.Jenis_Kelamin 
			Order By INF.No_Identitas_Karyawan),
			--Berganda Berurutan
			Dense_Rank()Over(Partition By INF.Jenis_Kelamin 
			Order By INF.No_Identitas_Karyawan)

			From [Karyawan Swasta].dbo.Informasi_Karyawan INF
			Join [Karyawan Swasta].dbo.Gaji_Karyawan GAJ
				ON INF.No_Identitas_Karyawan = GAJ.No_Identitas_Karyawan

				Select *
				From [Karyawan Swasta].dbo.Gaji_Karyawan