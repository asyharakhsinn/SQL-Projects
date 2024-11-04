
Select nama_depan, Nama_Belakang, 'Tertua' AS Label
from Informasi_Karyawan
where umur > 50
	Union
	Select Nama_Depan, Nama_Belakang, 'Dibayar Maksimal' As Label
	from Gaji_Karyawan
	Where Gaji > 70000 
		Union
		Select Nama_Depan, Nama_Belakang, 'Dibayar Normal' As Label
		From Gaji_Karyawan
		Where Gaji < 70000 and Gaji > 50000
			Union
			Select Nama_Depan, Nama_Belakang, 'Dibayar Minimal' As Label
			From Gaji_Karyawan
			Where Gaji < 50000
		Order By Nama_Depan ASC

Select nama_depan, Nama_Belakang, 'Pria Tertua' AS Label
from Informasi_Karyawan
where umur > 50 and Jenis_Kelamin = 'Male'
Union
Select nama_depan, Nama_Belakang, 'Wanita Tertua' AS Label
from Informasi_Karyawan
where umur > 40 and Jenis_Kelamin = 'Female'
	Union
	Select Nama_Depan, Nama_Belakang, 'Dibayar Maksimal' As Label
	from Gaji_Karyawan
	Where Gaji > 70000 
		Union
		Select Nama_Depan, Nama_Belakang, 'Dibayar Normal' As Label
		From Gaji_Karyawan
		Where Gaji < 70000 and Gaji > 50000
			Union
			Select Nama_Depan, Nama_Belakang, 'Dibayar Minimal' As Label
			From Gaji_Karyawan
			Where Gaji < 50000
		Order By Nama_Depan 
Select *
from Informasi_Karyawan
Inner join Gaji_Karyawan
	On Informasi_Karyawan.Nama_Depan = Gaji_Karyawan.Nama_Depan


Select Inf1.No_Identitas_Karyawan AS ID,
Inf1.Nama_Depan AS NamaDepan,
Inf1.Nama_Belakang AS NamaBelakang,
Inf2.Pekerjaan As Pekerjaan,
Inf2.Gaji AS Gaji
from Informasi_Karyawan inf1
join Gaji_Karyawan Inf2
	On Inf1.Nama_Depan = Inf2.Nama_Depan

	Select Pekerjaan, avg(Gaji)
	from Gaji_Karyawan
	where Pekerjaan Like 'Office%'
	Group By Pekerjaan
	Having AVG(Gaji) > 40000