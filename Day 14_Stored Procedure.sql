-- Simple Stored Procedure
Create Procedure TEST
AS
Select *
From Informasi_Karyawan

Exec TEST;

--Creating the table
Create Procedure Temp_Employee
As
Begin
Create table #Temp_Karyawan
(
Pekerjaan varchar(50),
Karyawan_Bagian int,
AVGUmur int,
AVGGaji int
)
END

Insert into #Temp_Karyawan
Select Pekerjaan, Count(Pekerjaan), AVG(Umur), AVG(Gaji)
From [Karyawan Swasta]..Informasi_Karyawan INF
JOIn [Karyawan Swasta]..Gaji_Karyawan Gaj
	On Inf.No_Identitas_Karyawan = Gaj.No_Identitas_Karyawan
	Group By Pekerjaan

	Select *
	From #Temp_Karyawan

	--Inti untuk execute Stored Procedure Sebelum Modify
	EXec Temp_Employee
	--Execute Stored Procedure setelah modify
	Exec Temp_Employee @Pekerjaan = 'Office Manager'

	-- Bentuk Lain dari Stored Procedure
Create Procedure Keuangan
As
Begin
Create table #Temp_Karyawan
(
Pekerjaan varchar(50),
Karyawan_Bagian int,
AVGUmur int,
AVGGaji int
)
END