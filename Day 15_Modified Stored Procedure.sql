USE [Karyawan Swasta]
GO
/****** Object:  StoredProcedure [dbo].[Temp_Employee]    Script Date: 10/11/2024 05:14:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [dbo].[Temp_Employee]
@Pekerjaan Nvarchar (100)
As
Create table #Temp_Karyawan
(
Pekerjaan varchar(50),
Karyawan_Bagian int,
AVGUmur int,
AVGGaji int
)

Insert into #Temp_Karyawan
Select Pekerjaan, Count(Pekerjaan), AVG(Umur), AVG(Gaji)
From [Karyawan Swasta]..Informasi_Karyawan INF
JOIn [Karyawan Swasta]..Gaji_Karyawan Gaj
	On Inf.No_Identitas_Karyawan = Gaj.No_Identitas_Karyawan
	Where Pekerjaan = @Pekerjaan
	Group By Pekerjaan

	Select *
	From #Temp_Karyawan
