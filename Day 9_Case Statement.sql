-- Case Statement

Select *
From Informasi_Karyawan

Select Nama_Depan, Nama_Belakang, umur,
Case
	WHEN umur <= 30 THEN 'Muda'
	When umur Between 31 and 50 THEN 'Tua'
	When umur >= 51 Then 'Lansia'
	End AS Klasifikasi_Umur
From Informasi_Karyawan

Select *
From Gaji_Karyawan

Select Nama_Depan, Pekerjaan, Gaji,
Case
	When Gaji <= 30000 Then 'Gaji Rendah'
	When Gaji Between 31000 and 50000 then 'Gaji Normal'
	When Gaji >= 51000 then 'Gaji tinggi'
End AS Klasifikasi_Gaji
From Gaji_Karyawan

--Penghasilan Tambahan dan Bonus
--<50000 = 5%
-->50000 = 7%
--Pajak Penghasilan 5%
--City = 10% Bonus

-- Insentif
Select Nama_Depan, Pekerjaan, Gaji,
Case
	When Gaji <= 30000 Then 'Gaji Rendah'
	When Gaji Between 31000 and 50000 then 'Gaji Normal'
	When Gaji >= 51000 then 'Gaji tinggi'
End AS Klasifikasi_Gaji
From Gaji_Karyawan
Select Nama_Depan, Gaji,
Case
	When Gaji <= 50000 Then Gaji + (Gaji * .05)
	When Gaji > 50000 Then Gaji + (Gaji * .07)
End AS Gaji_Kotor,
Case
	When Identitas_Departemen = 3 Then (Gaji * .1)
	END as Bonus_Gaji,
		Case
		When Gaji > 0 Then Gaji * .05
		End AS Potongan_PPH
From Gaji_Karyawan

--Potongan Gaji
Select Nama_Depan, Gaji,
Case
	When Gaji < 50000 Then Gaji - (Gaji * .05)
	When Gaji > 50000 Then Gaji - (Gaji * .07)
END as Gaji_Bersih,
Case
	When Identitas_Departemen = 3 Then (Gaji * .1)
	END as Bonus
From Gaji_Karyawan

Select Nama_Depan, Identitas_Departemen, Gaji,
Case
	When Gaji <= 50000 Then Gaji - (Gaji * .05)
	When Gaji > 50000 Then Gaji - (Gaji * .07)
End AS Gaji_Bersih,
Case 
	When Identitas_Departemen = 3 then (Gaji * .1)
	END AS Bonus,
Case
	When Gaji > 0 Then (Gaji * 0.12)
	END AS Potongan_PPH
From Gaji_Karyawan