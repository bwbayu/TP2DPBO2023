# TP2DPBO2023
Saya Bayu Wicaksono NIM 2106836 mengerjakan TP 2 dalam mata kuliah Desain dan Pemrograman Berorientasi Objek untuk keberkahanNya maka saya tidak melakukan kecurangan seperti yang telah dispesifikasikan. Aamiin.

## Deskripsi Tugas
Buatlah program Java yang terkoneksi dengan database MySQL. Berikut spesifikasi program yang harus dibuat:
Program bebas, kecuali program Mahasiswa dan Book Author
- Terdapat proses Create, Read, Update, dan Delete data
- Terdapat proses Autentikasi (Login, Register) *
- Menggunakan minimal 2 tabel pada database
- Harus terdapat minimal 1 properti gambar pada class yang dibuat (gambar akan ditampilkan pada UI)
- Terdapat pergantian screen pada UI
- Terdapat button navigasi untuk beralih screen
- List data ditampilkan menggunakan card (JPanel)
- contoh card dengan JPanel
- Boleh login dan/atau register. Tidak perlu ada enkripsi password

## Design Program
Pada program ini terdapat 6 class dan yang menjadi ***Main Class*** adalah login, berikut detail tiap class :
- **dbConnection** -> Class ini digunakan untuk melakukan koneksi ke database. Class ini memiliki 2 atribut, yaitu stmt dan conn. Method-method yang ada di class ini digunakan untuk membantu proses query dari aplikasi ke database.

- **Login** -> Class ini mengimplementasikan sebuah frame login dengan method cekData() yang digunakan untuk memeriksa apakah data yang dimasukkan oleh user sudah benar atau belum. Class ini memiliki 1 atribut, yaitu db yang merupakan instansiasi dari class dbConnection untuk melakukan koneksi ke database.

- **Register** -> Class Register digunakan untuk mengimplementasikan antarmuka pengguna (GUI) untuk mengumpulkan data baru dari pengguna dan menyimpannya ke dalam database dengan method insertData() yang digunakan untuk memasukkan data baru ke dalam database, method resetForm() yang digunakan untuk mengosongkan form saat user ingin membatalkan pengisian data, dan Method copyImage() digunakan untuk menyalin file gambar group yang dipilih oleh pengguna ke dalam folder uploads/image pada aplikasi. Class ini memiliki 5 atribut, yaitu db untuk koneksi ke database, selectedFile untuk menyimpan file image yang dimasukkan user, path untuk menyimpan path dari file foto, sourceFile dan destFile: Digunakan untuk menyimpan path file asal dan tujuan untuk operasi penyalinan file gambar.

- **JPanelCard** ->  Class ini digunakan untuk menampilkan card-panel yang berisi informasi mengenai anggota-anggota idol group. Class ini memiliki method setPanel() yang digunakan untuk menampilkan daftar member dari suatu idol group dalam bentuk Card menggunakan GridLayout dan setGroup() untuk menampilkan informasi mengenai data group tersebut. Class ini memiliki 4 atribut, yaitu db untuk koneksi ke database dan kode_group, nama_group, foto_group untuk menyimpan data group dari query. 

- **Member** -> Class ini digunakan untuk membuat form untuk memasukkan data anggota (member) ke dalam database dan untuk melakukan update data anggota yang sudah ada di dalam database. Class ini memiliki beberapa atribut, yaitu db yang digunakan untuk koneksi ke database, selectedFile yang digunakan untuk menyimpan file gambar anggota yang dipilih oleh pengguna, path yang menyimpan path dari file gambar yang dipilih oleh pengguna, update yang digunakan untuk menentukan apakah data yang akan dimasukkan merupakan data baru atau data yang akan diupdate, kodeGroup yang menyimpan data kode grup dari anggota, idMember yang menyimpan id dari anggota yang akan diupdate, dan home yang merupakan objek dari JPanelCard dan home page dari aplikasi ini. class ini memiliki 4 method, yaitu Method resetForm() digunakan untuk mereset nilai dari semua field pada form menjadi kosong, Method insertData() digunakan untuk memasukkan data anggota baru ke dalam database, Method updateData() digunakan untuk melakukan update data anggota yang sudah ada di dalam database, dan Method copyImage() digunakan untuk menyalin file gambar anggota yang dipilih oleh pengguna ke dalam folder uploads/image pada aplikasi. 

- **Card** -> Class ini digunakan untuk menampilkan informasi seorang member dalam bentuk kartu (card) pada aplikasi. Kelas Card memiliki beberapa atribut yaitu idmember (id anggota), kodeGroup (kode grup), db (objek koneksi ke database), dan home (objek JPanelCard yang merupakan panel utama). Kelas Card juga memiliki dua method yaitu deleteData() dan updateData(). Method deleteData() digunakan untuk menghapus data seorang member dari database dengan menampilkan dialog konfirmasi terlebih dahulu. Jika pengguna menyetujui, maka data akan dihapus dan panel utama (home) akan di-refresh. Method updateData() digunakan untuk memperbarui data seorang member dengan menampilkan dialog untuk mengedit informasi member. Ketika dialog diedit dan disimpan, data akan di-update ke database dan panel utama (home) akan di-refresh.

## Design GUI
- Form Login

![image](https://user-images.githubusercontent.com/100755457/230007694-e85ca5fb-a70d-4545-b0a2-aad15942bc5d.png)


- Form Register

![image](https://user-images.githubusercontent.com/100755457/230007597-415bd0ab-f989-425f-955b-c0a131d8298f.png)


- Form Data Member

![image](https://user-images.githubusercontent.com/100755457/230007407-2b5f857a-a997-4cc2-a15e-d9804e357278.png)


- JPanel

![image](https://user-images.githubusercontent.com/100755457/230007282-b7c75bbb-a244-44e6-82f1-548d2d7b786f.png)


- Card

![image](https://user-images.githubusercontent.com/100755457/230007100-f0e939b4-276f-469b-88ca-7445bedf99cc.png)


## ERD

![image](https://user-images.githubusercontent.com/100755457/230006593-31b1e763-8f19-4278-a677-ec17bfe2d60d.png)


## Alur Progam
1. User bisa melakukan registrasi jika belum memiliki akun dengan menekan tombol register pada halaman login kemudian mengisi form pada halaman registrasi. (NOTE : ***setiap form harus diisi secara lengkap, jika tidak akan menampikan pesan error karena datanya belum lengkap***)
2. Setelah registrasi, program akan mengarahkan ke halaman login dan user dapat mengisi form pada halaman login.
3. Setelah login, program akan mengarahkan ke halaman home. Di halaman home ini, user dapat melakukan add, delete, dan update, serta log out.
4. Untuk menambahkan data member, user dapat menekan tombol Add Member dan program akan menampilkan form untuk data member.
5. Jika sudah selesai mengisi data member, user dapat menekan tombol submit untuk menambahkan data ke database.
6. Jika data yang dimasukkan salah, user dapat menekan tombol no ketika ***prompt konfirmasi***, maka data akan direset.
7. Untuk memperbaharui data member, user dapat menekan tombol edit pada data member yang ingin di update dan program akan menampilkan form data member tersebut.
8. Untuk menghapus data member, user dapat menekan tombol delete pada data member yang ingin di delete dan program akan otomatis mengupdate data member pada grup tersebut.

- Untuk mencoba login bisa gunakan akun berikut
1. Kode Group = nj
   password = nj
2. Kode group = rv
   password = rv

## Dokumentasi
https://youtu.be/xuaWH8GvIjE
