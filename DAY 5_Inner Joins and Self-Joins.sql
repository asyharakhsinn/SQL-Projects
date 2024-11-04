Select *
From [Karyawan Swasta].dbo.Informasi_Karyawan
Inner Join [Karyawan Swasta].dbo.Gaji_Karyawan
	ON Informasi_Karyawan.No_Identitas_Karyawan = Gaji_Karyawan.No_Identitas_Karyawan

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

Select *
From Informasi_Karyawan AS Demografi
Right Join Gaji_Karyawan AS Gaji
	ON Demografi.No_Identitas_Karyawan = Gaji.No_Identitas_Karyawan

Select *
From Informasi_Karyawan AS Demografi
Left Join Gaji_Karyawan AS Gaji
	ON Demografi.No_Identitas_Karyawan = Gaji.No_Identitas_Karyawan

Select Kode1.No_Identitas_Karyawan AS ID,
Kode1.Nama_Depan AS Nama_Depan,
Kode1.Nama_Belakang AS Nama_Belakang,
Kode1.Tanggal_Lahir AS Tanggal_Lahir,
Kode2.No_Identitas_Karyawan AS ID,
Kode2.Nama_Depan AS Nama_Depan,
Kode2.Nama_Belakang AS Nama_Belakang,
Kode2.Gaji AS Gaji
From Informasi_Karyawan Kode1
Join Gaji_Karyawan Kode2
	ON Kode1.Nama_Depan = Kode2.Nama_Depan