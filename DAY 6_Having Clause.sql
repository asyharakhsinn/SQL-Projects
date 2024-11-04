Select * From Informasi_Karyawan

Select Jenis_Kelamin
from Informasi_Karyawan
Group By Jenis_Kelamin
having Jenis_Kelamin like '%M%'

Select Jenis_kelamin, avg(umur)
from Informasi_Karyawan
Group By Jenis_Kelamin
having AVG(umur) > 20

Select AVG(umur) AS Rata2_Pria
from Informasi_Karyawan
Group By Jenis_Kelamin
having avg(umur) > 23

Select Jenis_Kelamin, AVG(umur) AS Rata2_Wanita
from Informasi_Karyawan
Where Jenis_Kelamin Like 'M%'
Group By Jenis_Kelamin
having avg(umur) > 23

Select Pekerjaan
from Gaji_Karyawan

Select Pekerjaan, AVG(Gaji) AS Gaji_Tertinggi
from Gaji_Karyawan
Group By Pekerjaan
hAVING AVG(Gaji) >= 50000

Select Nama_Depan, Nama_Belakang, Pekerjaan, AVG(Gaji) AS Gaji_Tertinggi
from Gaji_Karyawan
Where Nama_Depan Like '%A%'
Group By Nama_Depan, Nama_Belakang, Pekerjaan
hAVING AVG(Gaji) >= 50000