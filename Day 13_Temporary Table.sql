-- Temporary Table

--Pembuatan Tabel Temporer
--Tujuan 'Drop Table' adalah memastikan tabel tersebut akan terus ada dan digunakan
Drop Table If Exists #Temp_Karyawan
Create table #Temp_Karyawan
(
Pekerjaan varchar(50),
Karyawan_Bagian int,
AVGUmur int,
AVGGaji int
)

--Input Data
Insert into #Temp_Karyawan
Select Pekerjaan, Count(Pekerjaan), AVG(Umur), AVG(Gaji)
From [Karyawan Swasta]..Informasi_Karyawan INF
JOIn [Karyawan Swasta]..Gaji_Karyawan Gaj
	On Inf.No_Identitas_Karyawan = Gaj.No_Identitas_Karyawan
	Group By Pekerjaan

	--Executing
	Select * 
	From #Temp_Karyawan