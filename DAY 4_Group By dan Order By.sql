--SELECT TOP (1000) [No_Identitas_Karyawan]
--      ,[Nama_Depan]
--      ,[Nama_Belakang]
--      ,[umur]
--      ,[Jenis_Kelamin]
--      ,[Tanggal_Lahir]
--  FROM [Karyawan Swasta].[dbo].[Informasi_Karyawan]

--sELECT Jenis_Kelamin, umur, count(Jenis_Kelamin)
--from Informasi_Karyawan
--Group By Jenis_Kelamin, umur

--sELECT Jenis_Kelamin, umur, count(Jenis_Kelamin) As Jumlah
--from Informasi_Karyawan
--Where umur = 40
--Group By Jenis_Kelamin, umur

--# GROUP BY
--Di SQL buat misahin data yang ada apa aja bisa pake DISTINCT, 
--Tapi DISTINCT ga bisa pake syntax 'Count' buat ngitung jumlah
--Select DIstinct (Nama_Depan), (umur)
--	From Informasi_Karyawan

--Tapi kalo mau bikin pake klausa GROUP BY juga bisa
Select Nama_Depan, umur
	From Informasi_Karyawan
	Group By Nama_Depan, umur

Select Nama_Depan, umur, count(Tanggal_Lahir) AS a
	From Informasi_Karyawan
	Group By Nama_Depan, umur
--Select Nama_Depan, umur, count(Jenis_Kelamin) AS a
--	From Informasi_Karyawan
--	Where umur > 30
--	Group By Nama_Depan, umur

--# ORDER BY
--Kalo order by digunain kalo mau ngurutin;
--Code default kek dibawah ini otomatis ngurut dari yang Rendah -> Tinggi 
Select Nama_Depan, umur, Jenis_Kelamin
	From Informasi_Karyawan
	Order By Umur, Jenis_Kelamin 

----Makanya harus di tambahin ASC (Dari rendah ke atas) ATAU DESC (Dari Atas ke Rendah)
Select Nama_Depan, umur, Jenis_Kelamin
	From Informasi_Karyawan
	Order By Umur DESC, Jenis_Kelamin ASC

Select MAX (umur) AS Umur_Tertua
	From Informasi_Karyawan

Select top (5) [Nama_Depan]
	,[Nama_Belakang]
From Informasi_Karyawan

Select (umur)
From Informasi_Karyawan
Where umur <> 44

Select *
From Informasi_Karyawan
Where umur LIKE '%3'
	select Nama_Depan
	From Informasi_Karyawan
	Where umur = 23 OR Jenis_Kelamin = 'Male'


Select Nama_Depan
From Informasi_Karyawan
Where umur = 23 AND Jenis_Kelamin = 'Male'

Select *
From [Karyawan Swasta].dbo.Informasi_Karyawan
Inner Join [Karyawan Swasta].dbo.Gaji_Karyawan
	ON Informasi_Karyawan.No_Identitas_Karyawan = Gaji_Karyawan.No_Identitas_Karyawan
	Select Demografi.Nama_Depan, Gaji 
		From [Karyawan Swasta].dbo.Informasi_Karyawan AS Demografi
		Inner Join [Karyawan Swasta].dbo.Gaji_Karyawan AS Gaji
		ON Demografi.No_Identitas_Karyawan = Gaji.No_Identitas_Karyawan
		
		Select Demografi.Nama_Depan, Demografi.Nama_Belakang 
From [Karyawan Swasta].dbo.Informasi_Karyawan AS Demografi
Inner Join [Karyawan Swasta].dbo.Gaji_Karyawan AS Gaji
	ON Demografi.No_Identitas_Karyawan = Gaji.No_Identitas_Karyawan