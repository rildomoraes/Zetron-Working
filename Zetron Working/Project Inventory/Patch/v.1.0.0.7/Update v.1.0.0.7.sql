Issue nota penjualan tidak sama dengan transactiondt 

1. Karena disebabkan harga HPP tinggi sedangkan harga jual rendah
   sehingga prosentasi keuntungan menjadi (minus) lebih besar dari 
   tipe data yang tersedia (numerik 5,2). 

2. solusi dibuat domain baru (percentBig) dengan tipe data sama dengan currency

3. Belum diketahui mengapa di schema lama, data tidak masuk di transaction dt
   akan tetapi pada sales invoice dt tersimpan, dan stock Qty berjalan normal !!!

Solusi:

1. Buat database baru dengan schema baru

2. Transfer data lama ke database baru dengan aplikasi Migration Tools 3.0.
   karena dengan transfer data trigger tetap berjalan, sedangkan jika mengggunakan 
   backup-restore database (data only) trigger tidak berjalan sehingga data tetap salah !!